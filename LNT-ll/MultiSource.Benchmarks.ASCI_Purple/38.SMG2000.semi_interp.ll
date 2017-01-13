; ModuleID = './MultiSource.Benchmarks.ASCI_Purple/38.SMG2000.semi_interp.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hypre_SemiInterpData = type { %struct.hypre_StructMatrix_struct*, i32, %struct.hypre_ComputePkg_struct*, [3 x i32], [3 x i32], [3 x i32], i32 }
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

@.str = private unnamed_addr constant [11 x i8] c"SemiInterp\00", align 1

; Function Attrs: nounwind uwtable
define i8* @hypre_SemiInterpCreate() #0 {
entry:
  %interp_data = alloca %struct.hypre_SemiInterpData*, align 8
  %call = call i8* @hypre_CAlloc(i32 1, i32 64)
  %0 = bitcast i8* %call to %struct.hypre_SemiInterpData*
  store %struct.hypre_SemiInterpData* %0, %struct.hypre_SemiInterpData** %interp_data, align 8
  %call1 = call i32 @hypre_InitializeTiming(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0))
  %1 = load %struct.hypre_SemiInterpData*, %struct.hypre_SemiInterpData** %interp_data, align 8
  %time_index = getelementptr inbounds %struct.hypre_SemiInterpData, %struct.hypre_SemiInterpData* %1, i32 0, i32 6
  store i32 %call1, i32* %time_index, align 4
  %2 = load %struct.hypre_SemiInterpData*, %struct.hypre_SemiInterpData** %interp_data, align 8
  %3 = bitcast %struct.hypre_SemiInterpData* %2 to i8*
  ret i8* %3
}

declare i8* @hypre_CAlloc(i32, i32) #1

declare i32 @hypre_InitializeTiming(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_SemiInterpSetup(i8* %interp_vdata, %struct.hypre_StructMatrix_struct* %P, i32 %P_stored_as_transpose, %struct.hypre_StructVector_struct* %xc, %struct.hypre_StructVector_struct* %e, i32* %cindex, i32* %findex, i32* %stride) #0 {
entry:
  %interp_vdata.addr = alloca i8*, align 8
  %P.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %P_stored_as_transpose.addr = alloca i32, align 4
  %xc.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %e.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %cindex.addr = alloca i32*, align 8
  %findex.addr = alloca i32*, align 8
  %stride.addr = alloca i32*, align 8
  %interp_data = alloca %struct.hypre_SemiInterpData*, align 8
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
  store i8* %interp_vdata, i8** %interp_vdata.addr, align 8
  store %struct.hypre_StructMatrix_struct* %P, %struct.hypre_StructMatrix_struct** %P.addr, align 8
  store i32 %P_stored_as_transpose, i32* %P_stored_as_transpose.addr, align 4
  store %struct.hypre_StructVector_struct* %xc, %struct.hypre_StructVector_struct** %xc.addr, align 8
  store %struct.hypre_StructVector_struct* %e, %struct.hypre_StructVector_struct** %e.addr, align 8
  store i32* %cindex, i32** %cindex.addr, align 8
  store i32* %findex, i32** %findex.addr, align 8
  store i32* %stride, i32** %stride.addr, align 8
  %0 = load i8*, i8** %interp_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_SemiInterpData*
  store %struct.hypre_SemiInterpData* %1, %struct.hypre_SemiInterpData** %interp_data, align 8
  store i32 0, i32* %ierr, align 4
  %2 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %e.addr, align 8
  %grid1 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %2, i32 0, i32 1
  %3 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid1, align 8
  store %struct.hypre_StructGrid_struct* %3, %struct.hypre_StructGrid_struct** %grid, align 8
  %4 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %P.addr, align 8
  %stencil2 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %4, i32 0, i32 3
  %5 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil2, align 8
  store %struct.hypre_StructStencil_struct* %5, %struct.hypre_StructStencil_struct** %stencil, align 8
  %6 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %7 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil, align 8
  %call = call i32 @hypre_CreateComputeInfo(%struct.hypre_StructGrid_struct* %6, %struct.hypre_StructStencil_struct* %7, %struct.hypre_BoxArrayArray_struct** %send_boxes, %struct.hypre_BoxArrayArray_struct** %recv_boxes, i32*** %send_processes, i32*** %recv_processes, %struct.hypre_BoxArrayArray_struct** %indt_boxes, %struct.hypre_BoxArrayArray_struct** %dept_boxes)
  %8 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %send_boxes, align 8
  %9 = load i32*, i32** %cindex.addr, align 8
  %10 = load i32*, i32** %stride.addr, align 8
  %call3 = call i32 @hypre_ProjectBoxArrayArray(%struct.hypre_BoxArrayArray_struct* %8, i32* %9, i32* %10)
  %11 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %recv_boxes, align 8
  %12 = load i32*, i32** %cindex.addr, align 8
  %13 = load i32*, i32** %stride.addr, align 8
  %call4 = call i32 @hypre_ProjectBoxArrayArray(%struct.hypre_BoxArrayArray_struct* %11, i32* %12, i32* %13)
  %14 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %indt_boxes, align 8
  %15 = load i32*, i32** %findex.addr, align 8
  %16 = load i32*, i32** %stride.addr, align 8
  %call5 = call i32 @hypre_ProjectBoxArrayArray(%struct.hypre_BoxArrayArray_struct* %14, i32* %15, i32* %16)
  %17 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %dept_boxes, align 8
  %18 = load i32*, i32** %findex.addr, align 8
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
  %30 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %e.addr, align 8
  %data_space = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %30, i32 0, i32 2
  %31 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space, align 8
  %call7 = call i32 @hypre_ComputePkgCreate(%struct.hypre_BoxArrayArray_struct* %20, %struct.hypre_BoxArrayArray_struct* %21, i32* %22, i32* %23, i32** %24, i32** %25, %struct.hypre_BoxArrayArray_struct* %26, %struct.hypre_BoxArrayArray_struct* %27, i32* %28, %struct.hypre_StructGrid_struct* %29, %struct.hypre_BoxArray_struct* %31, i32 1, %struct.hypre_ComputePkg_struct** %compute_pkg)
  %32 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %P.addr, align 8
  %call8 = call %struct.hypre_StructMatrix_struct* @hypre_StructMatrixRef(%struct.hypre_StructMatrix_struct* %32)
  %33 = load %struct.hypre_SemiInterpData*, %struct.hypre_SemiInterpData** %interp_data, align 8
  %P9 = getelementptr inbounds %struct.hypre_SemiInterpData, %struct.hypre_SemiInterpData* %33, i32 0, i32 0
  store %struct.hypre_StructMatrix_struct* %call8, %struct.hypre_StructMatrix_struct** %P9, align 8
  %34 = load i32, i32* %P_stored_as_transpose.addr, align 4
  %35 = load %struct.hypre_SemiInterpData*, %struct.hypre_SemiInterpData** %interp_data, align 8
  %P_stored_as_transpose10 = getelementptr inbounds %struct.hypre_SemiInterpData, %struct.hypre_SemiInterpData* %35, i32 0, i32 1
  store i32 %34, i32* %P_stored_as_transpose10, align 4
  %36 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %compute_pkg, align 8
  %37 = load %struct.hypre_SemiInterpData*, %struct.hypre_SemiInterpData** %interp_data, align 8
  %compute_pkg11 = getelementptr inbounds %struct.hypre_SemiInterpData, %struct.hypre_SemiInterpData* %37, i32 0, i32 2
  store %struct.hypre_ComputePkg_struct* %36, %struct.hypre_ComputePkg_struct** %compute_pkg11, align 8
  %38 = load i32*, i32** %cindex.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %38, i64 0
  %39 = load i32, i32* %arrayidx, align 4
  %40 = load %struct.hypre_SemiInterpData*, %struct.hypre_SemiInterpData** %interp_data, align 8
  %cindex12 = getelementptr inbounds %struct.hypre_SemiInterpData, %struct.hypre_SemiInterpData* %40, i32 0, i32 3
  %arrayidx13 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex12, i32 0, i64 0
  store i32 %39, i32* %arrayidx13, align 4
  %41 = load i32*, i32** %cindex.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %41, i64 1
  %42 = load i32, i32* %arrayidx14, align 4
  %43 = load %struct.hypre_SemiInterpData*, %struct.hypre_SemiInterpData** %interp_data, align 8
  %cindex15 = getelementptr inbounds %struct.hypre_SemiInterpData, %struct.hypre_SemiInterpData* %43, i32 0, i32 3
  %arrayidx16 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex15, i32 0, i64 1
  store i32 %42, i32* %arrayidx16, align 4
  %44 = load i32*, i32** %cindex.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %44, i64 2
  %45 = load i32, i32* %arrayidx17, align 4
  %46 = load %struct.hypre_SemiInterpData*, %struct.hypre_SemiInterpData** %interp_data, align 8
  %cindex18 = getelementptr inbounds %struct.hypre_SemiInterpData, %struct.hypre_SemiInterpData* %46, i32 0, i32 3
  %arrayidx19 = getelementptr inbounds [3 x i32], [3 x i32]* %cindex18, i32 0, i64 2
  store i32 %45, i32* %arrayidx19, align 4
  %47 = load i32*, i32** %findex.addr, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %47, i64 0
  %48 = load i32, i32* %arrayidx20, align 4
  %49 = load %struct.hypre_SemiInterpData*, %struct.hypre_SemiInterpData** %interp_data, align 8
  %findex21 = getelementptr inbounds %struct.hypre_SemiInterpData, %struct.hypre_SemiInterpData* %49, i32 0, i32 4
  %arrayidx22 = getelementptr inbounds [3 x i32], [3 x i32]* %findex21, i32 0, i64 0
  store i32 %48, i32* %arrayidx22, align 4
  %50 = load i32*, i32** %findex.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %50, i64 1
  %51 = load i32, i32* %arrayidx23, align 4
  %52 = load %struct.hypre_SemiInterpData*, %struct.hypre_SemiInterpData** %interp_data, align 8
  %findex24 = getelementptr inbounds %struct.hypre_SemiInterpData, %struct.hypre_SemiInterpData* %52, i32 0, i32 4
  %arrayidx25 = getelementptr inbounds [3 x i32], [3 x i32]* %findex24, i32 0, i64 1
  store i32 %51, i32* %arrayidx25, align 4
  %53 = load i32*, i32** %findex.addr, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %53, i64 2
  %54 = load i32, i32* %arrayidx26, align 4
  %55 = load %struct.hypre_SemiInterpData*, %struct.hypre_SemiInterpData** %interp_data, align 8
  %findex27 = getelementptr inbounds %struct.hypre_SemiInterpData, %struct.hypre_SemiInterpData* %55, i32 0, i32 4
  %arrayidx28 = getelementptr inbounds [3 x i32], [3 x i32]* %findex27, i32 0, i64 2
  store i32 %54, i32* %arrayidx28, align 4
  %56 = load i32*, i32** %stride.addr, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %56, i64 0
  %57 = load i32, i32* %arrayidx29, align 4
  %58 = load %struct.hypre_SemiInterpData*, %struct.hypre_SemiInterpData** %interp_data, align 8
  %stride30 = getelementptr inbounds %struct.hypre_SemiInterpData, %struct.hypre_SemiInterpData* %58, i32 0, i32 5
  %arrayidx31 = getelementptr inbounds [3 x i32], [3 x i32]* %stride30, i32 0, i64 0
  store i32 %57, i32* %arrayidx31, align 4
  %59 = load i32*, i32** %stride.addr, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %59, i64 1
  %60 = load i32, i32* %arrayidx32, align 4
  %61 = load %struct.hypre_SemiInterpData*, %struct.hypre_SemiInterpData** %interp_data, align 8
  %stride33 = getelementptr inbounds %struct.hypre_SemiInterpData, %struct.hypre_SemiInterpData* %61, i32 0, i32 5
  %arrayidx34 = getelementptr inbounds [3 x i32], [3 x i32]* %stride33, i32 0, i64 1
  store i32 %60, i32* %arrayidx34, align 4
  %62 = load i32*, i32** %stride.addr, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %62, i64 2
  %63 = load i32, i32* %arrayidx35, align 4
  %64 = load %struct.hypre_SemiInterpData*, %struct.hypre_SemiInterpData** %interp_data, align 8
  %stride36 = getelementptr inbounds %struct.hypre_SemiInterpData, %struct.hypre_SemiInterpData* %64, i32 0, i32 5
  %arrayidx37 = getelementptr inbounds [3 x i32], [3 x i32]* %stride36, i32 0, i64 2
  store i32 %63, i32* %arrayidx37, align 4
  %65 = load i32, i32* %ierr, align 4
  ret i32 %65
}

declare i32 @hypre_CreateComputeInfo(%struct.hypre_StructGrid_struct*, %struct.hypre_StructStencil_struct*, %struct.hypre_BoxArrayArray_struct**, %struct.hypre_BoxArrayArray_struct**, i32***, i32***, %struct.hypre_BoxArrayArray_struct**, %struct.hypre_BoxArrayArray_struct**) #1

declare i32 @hypre_ProjectBoxArrayArray(%struct.hypre_BoxArrayArray_struct*, i32*, i32*) #1

declare i32 @hypre_ComputePkgCreate(%struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct*, i32*, i32*, i32**, i32**, %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct*, i32*, %struct.hypre_StructGrid_struct*, %struct.hypre_BoxArray_struct*, i32, %struct.hypre_ComputePkg_struct**) #1

declare %struct.hypre_StructMatrix_struct* @hypre_StructMatrixRef(%struct.hypre_StructMatrix_struct*) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_SemiInterp(i8* %interp_vdata, %struct.hypre_StructMatrix_struct* %P, %struct.hypre_StructVector_struct* %xc, %struct.hypre_StructVector_struct* %e) #0 {
entry:
  %interp_vdata.addr = alloca i8*, align 8
  %P.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %xc.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %e.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %ierr = alloca i32, align 4
  %interp_data = alloca %struct.hypre_SemiInterpData*, align 8
  %P_stored_as_transpose = alloca i32, align 4
  %compute_pkg = alloca %struct.hypre_ComputePkg_struct*, align 8
  %cindex = alloca i32*, align 8
  %findex = alloca i32*, align 8
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
  %P_dbox = alloca %struct.hypre_Box_struct*, align 8
  %xc_dbox = alloca %struct.hypre_Box_struct*, align 8
  %e_dbox = alloca %struct.hypre_Box_struct*, align 8
  %Pi = alloca i32, align 4
  %xci = alloca i32, align 4
  %ei = alloca i32, align 4
  %Pp0 = alloca double*, align 8
  %Pp1 = alloca double*, align 8
  %xcp = alloca double*, align 8
  %ep = alloca double*, align 8
  %ep0 = alloca double*, align 8
  %ep1 = alloca double*, align 8
  %loop_size = alloca [3 x i32], align 4
  %start = alloca [3 x i32], align 4
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
  %hypre__i1start582 = alloca i32, align 4
  %hypre__i2start633 = alloca i32, align 4
  %hypre__sx1684 = alloca i32, align 4
  %hypre__sy1686 = alloca i32, align 4
  %hypre__sz1706 = alloca i32, align 4
  %hypre__sx2744 = alloca i32, align 4
  %hypre__sy2746 = alloca i32, align 4
  %hypre__sz2766 = alloca i32, align 4
  %hypre__nx804 = alloca i32, align 4
  %hypre__ny806 = alloca i32, align 4
  %hypre__nz808 = alloca i32, align 4
  %hypre__mx810 = alloca i32, align 4
  %hypre__my811 = alloca i32, align 4
  %hypre__mz812 = alloca i32, align 4
  %hypre__dir813 = alloca i32, align 4
  %hypre__max814 = alloca i32, align 4
  %hypre__div815 = alloca i32, align 4
  %hypre__mod816 = alloca i32, align 4
  %hypre__block817 = alloca i32, align 4
  %hypre__num_blocks818 = alloca i32, align 4
  store i8* %interp_vdata, i8** %interp_vdata.addr, align 8
  store %struct.hypre_StructMatrix_struct* %P, %struct.hypre_StructMatrix_struct** %P.addr, align 8
  store %struct.hypre_StructVector_struct* %xc, %struct.hypre_StructVector_struct** %xc.addr, align 8
  store %struct.hypre_StructVector_struct* %e, %struct.hypre_StructVector_struct** %e.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load i8*, i8** %interp_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_SemiInterpData*
  store %struct.hypre_SemiInterpData* %1, %struct.hypre_SemiInterpData** %interp_data, align 8
  %2 = load %struct.hypre_SemiInterpData*, %struct.hypre_SemiInterpData** %interp_data, align 8
  %time_index = getelementptr inbounds %struct.hypre_SemiInterpData, %struct.hypre_SemiInterpData* %2, i32 0, i32 6
  %3 = load i32, i32* %time_index, align 4
  %call = call i32 @hypre_BeginTiming(i32 %3)
  %4 = load %struct.hypre_SemiInterpData*, %struct.hypre_SemiInterpData** %interp_data, align 8
  %P_stored_as_transpose1 = getelementptr inbounds %struct.hypre_SemiInterpData, %struct.hypre_SemiInterpData* %4, i32 0, i32 1
  %5 = load i32, i32* %P_stored_as_transpose1, align 4
  store i32 %5, i32* %P_stored_as_transpose, align 4
  %6 = load %struct.hypre_SemiInterpData*, %struct.hypre_SemiInterpData** %interp_data, align 8
  %compute_pkg2 = getelementptr inbounds %struct.hypre_SemiInterpData, %struct.hypre_SemiInterpData* %6, i32 0, i32 2
  %7 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %compute_pkg2, align 8
  store %struct.hypre_ComputePkg_struct* %7, %struct.hypre_ComputePkg_struct** %compute_pkg, align 8
  %8 = load %struct.hypre_SemiInterpData*, %struct.hypre_SemiInterpData** %interp_data, align 8
  %cindex3 = getelementptr inbounds %struct.hypre_SemiInterpData, %struct.hypre_SemiInterpData* %8, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %cindex3, i32 0, i32 0
  store i32* %arraydecay, i32** %cindex, align 8
  %9 = load %struct.hypre_SemiInterpData*, %struct.hypre_SemiInterpData** %interp_data, align 8
  %findex4 = getelementptr inbounds %struct.hypre_SemiInterpData, %struct.hypre_SemiInterpData* %9, i32 0, i32 4
  %arraydecay5 = getelementptr inbounds [3 x i32], [3 x i32]* %findex4, i32 0, i32 0
  store i32* %arraydecay5, i32** %findex, align 8
  %10 = load %struct.hypre_SemiInterpData*, %struct.hypre_SemiInterpData** %interp_data, align 8
  %stride6 = getelementptr inbounds %struct.hypre_SemiInterpData, %struct.hypre_SemiInterpData* %10, i32 0, i32 5
  %arraydecay7 = getelementptr inbounds [3 x i32], [3 x i32]* %stride6, i32 0, i32 0
  store i32* %arraydecay7, i32** %stride, align 8
  %11 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %P.addr, align 8
  %stencil8 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %11, i32 0, i32 3
  %12 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil8, align 8
  store %struct.hypre_StructStencil_struct* %12, %struct.hypre_StructStencil_struct** %stencil, align 8
  %13 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil, align 8
  %shape = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %13, i32 0, i32 0
  %14 = load [3 x i32]*, [3 x i32]** %shape, align 8
  store [3 x i32]* %14, [3 x i32]** %stencil_shape, align 8
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 0
  store i32 1, i32* %arrayidx, align 4
  %arrayidx9 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 1
  store i32 1, i32* %arrayidx9, align 4
  %arrayidx10 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 2
  store i32 1, i32* %arrayidx10, align 4
  %15 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %e.addr, align 8
  %grid = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %15, i32 0, i32 1
  %16 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  store %struct.hypre_StructGrid_struct* %16, %struct.hypre_StructGrid_struct** %fgrid, align 8
  %17 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %fgrid, align 8
  %ids = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %17, i32 0, i32 3
  %18 = load i32*, i32** %ids, align 8
  store i32* %18, i32** %fgrid_ids, align 8
  %19 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %xc.addr, align 8
  %grid11 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %19, i32 0, i32 1
  %20 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid11, align 8
  store %struct.hypre_StructGrid_struct* %20, %struct.hypre_StructGrid_struct** %cgrid, align 8
  %21 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %cgrid, align 8
  %boxes = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %21, i32 0, i32 2
  %22 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  store %struct.hypre_BoxArray_struct* %22, %struct.hypre_BoxArray_struct** %cgrid_boxes, align 8
  %23 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %cgrid, align 8
  %ids12 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %23, i32 0, i32 3
  %24 = load i32*, i32** %ids12, align 8
  store i32* %24, i32** %cgrid_ids, align 8
  store i32 0, i32* %fi, align 4
  store i32 0, i32* %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.362, %entry
  %25 = load i32, i32* %ci, align 4
  %26 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %cgrid_boxes, align 8
  %size = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %26, i32 0, i32 1
  %27 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %25, %27
  br i1 %cmp, label %for.body, label %for.end.364

for.body:                                         ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %28 = load i32, i32* %fi, align 4
  %idxprom = sext i32 %28 to i64
  %29 = load i32*, i32** %fgrid_ids, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %29, i64 %idxprom
  %30 = load i32, i32* %arrayidx13, align 4
  %31 = load i32, i32* %ci, align 4
  %idxprom14 = sext i32 %31 to i64
  %32 = load i32*, i32** %cgrid_ids, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %32, i64 %idxprom14
  %33 = load i32, i32* %arrayidx15, align 4
  %cmp16 = icmp ne i32 %30, %33
  br i1 %cmp16, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %34 = load i32, i32* %fi, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %fi, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %35 = load i32, i32* %ci, align 4
  %idxprom17 = sext i32 %35 to i64
  %36 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %cgrid_boxes, align 8
  %boxes18 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %36, i32 0, i32 0
  %37 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes18, align 8
  %arrayidx19 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %37, i64 %idxprom17
  store %struct.hypre_Box_struct* %arrayidx19, %struct.hypre_Box_struct** %compute_box, align 8
  %38 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %compute_box, align 8
  %imin = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %38, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i64 0
  %39 = load i32, i32* %arrayidx20, align 4
  %arrayidx21 = getelementptr inbounds [3 x i32], [3 x i32]* %startc, i32 0, i64 0
  store i32 %39, i32* %arrayidx21, align 4
  %40 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %compute_box, align 8
  %imin22 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %40, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [3 x i32], [3 x i32]* %imin22, i32 0, i64 1
  %41 = load i32, i32* %arrayidx23, align 4
  %arrayidx24 = getelementptr inbounds [3 x i32], [3 x i32]* %startc, i32 0, i64 1
  store i32 %41, i32* %arrayidx24, align 4
  %42 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %compute_box, align 8
  %imin25 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %42, i32 0, i32 0
  %arrayidx26 = getelementptr inbounds [3 x i32], [3 x i32]* %imin25, i32 0, i64 2
  %43 = load i32, i32* %arrayidx26, align 4
  %arrayidx27 = getelementptr inbounds [3 x i32], [3 x i32]* %startc, i32 0, i64 2
  store i32 %43, i32* %arrayidx27, align 4
  %arraydecay28 = getelementptr inbounds [3 x i32], [3 x i32]* %startc, i32 0, i32 0
  %44 = load i32*, i32** %cindex, align 8
  %45 = load i32*, i32** %stride, align 8
  %arraydecay29 = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i32 0
  %call30 = call i32 @hypre_StructMapCoarseToFine(i32* %arraydecay28, i32* %44, i32* %45, i32* %arraydecay29)
  %46 = load i32, i32* %fi, align 4
  %idxprom31 = sext i32 %46 to i64
  %47 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %e.addr, align 8
  %data_space = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %47, i32 0, i32 2
  %48 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space, align 8
  %boxes32 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %48, i32 0, i32 0
  %49 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes32, align 8
  %arrayidx33 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %49, i64 %idxprom31
  store %struct.hypre_Box_struct* %arrayidx33, %struct.hypre_Box_struct** %e_dbox, align 8
  %50 = load i32, i32* %ci, align 4
  %idxprom34 = sext i32 %50 to i64
  %51 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %xc.addr, align 8
  %data_space35 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %51, i32 0, i32 2
  %52 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space35, align 8
  %boxes36 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %52, i32 0, i32 0
  %53 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes36, align 8
  %arrayidx37 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %53, i64 %idxprom34
  store %struct.hypre_Box_struct* %arrayidx37, %struct.hypre_Box_struct** %xc_dbox, align 8
  %54 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %e.addr, align 8
  %data = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %54, i32 0, i32 3
  %55 = load double*, double** %data, align 8
  %56 = load i32, i32* %fi, align 4
  %idxprom38 = sext i32 %56 to i64
  %57 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %e.addr, align 8
  %data_indices = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %57, i32 0, i32 6
  %58 = load i32*, i32** %data_indices, align 8
  %arrayidx39 = getelementptr inbounds i32, i32* %58, i64 %idxprom38
  %59 = load i32, i32* %arrayidx39, align 4
  %idx.ext = sext i32 %59 to i64
  %add.ptr = getelementptr inbounds double, double* %55, i64 %idx.ext
  store double* %add.ptr, double** %ep, align 8
  %60 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %xc.addr, align 8
  %data40 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %60, i32 0, i32 3
  %61 = load double*, double** %data40, align 8
  %62 = load i32, i32* %ci, align 4
  %idxprom41 = sext i32 %62 to i64
  %63 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %xc.addr, align 8
  %data_indices42 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %63, i32 0, i32 6
  %64 = load i32*, i32** %data_indices42, align 8
  %arrayidx43 = getelementptr inbounds i32, i32* %64, i64 %idxprom41
  %65 = load i32, i32* %arrayidx43, align 4
  %idx.ext44 = sext i32 %65 to i64
  %add.ptr45 = getelementptr inbounds double, double* %61, i64 %idx.ext44
  store double* %add.ptr45, double** %xcp, align 8
  %66 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %compute_box, align 8
  %arraydecay46 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i32 0
  %call47 = call i32 @hypre_BoxGetSize(%struct.hypre_Box_struct* %66, i32* %arraydecay46)
  %arrayidx48 = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i64 0
  %67 = load i32, i32* %arrayidx48, align 4
  %68 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imin49 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %68, i32 0, i32 0
  %arrayidx50 = getelementptr inbounds [3 x i32], [3 x i32]* %imin49, i32 0, i64 0
  %69 = load i32, i32* %arrayidx50, align 4
  %sub = sub nsw i32 %67, %69
  %arrayidx51 = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i64 1
  %70 = load i32, i32* %arrayidx51, align 4
  %71 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imin52 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %71, i32 0, i32 0
  %arrayidx53 = getelementptr inbounds [3 x i32], [3 x i32]* %imin52, i32 0, i64 1
  %72 = load i32, i32* %arrayidx53, align 4
  %sub54 = sub nsw i32 %70, %72
  %arrayidx55 = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i64 2
  %73 = load i32, i32* %arrayidx55, align 4
  %74 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imin56 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %74, i32 0, i32 0
  %arrayidx57 = getelementptr inbounds [3 x i32], [3 x i32]* %imin56, i32 0, i64 2
  %75 = load i32, i32* %arrayidx57, align 4
  %sub58 = sub nsw i32 %73, %75
  %76 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imax = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %76, i32 0, i32 1
  %arrayidx59 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 1
  %77 = load i32, i32* %arrayidx59, align 4
  %78 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imin60 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %78, i32 0, i32 0
  %arrayidx61 = getelementptr inbounds [3 x i32], [3 x i32]* %imin60, i32 0, i64 1
  %79 = load i32, i32* %arrayidx61, align 4
  %sub62 = sub nsw i32 %77, %79
  %add = add nsw i32 %sub62, 1
  %cmp63 = icmp slt i32 0, %add
  br i1 %cmp63, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end
  %80 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imax64 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %80, i32 0, i32 1
  %arrayidx65 = getelementptr inbounds [3 x i32], [3 x i32]* %imax64, i32 0, i64 1
  %81 = load i32, i32* %arrayidx65, align 4
  %82 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imin66 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %82, i32 0, i32 0
  %arrayidx67 = getelementptr inbounds [3 x i32], [3 x i32]* %imin66, i32 0, i64 1
  %83 = load i32, i32* %arrayidx67, align 4
  %sub68 = sub nsw i32 %81, %83
  %add69 = add nsw i32 %sub68, 1
  br label %cond.end

cond.false:                                       ; preds = %while.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add69, %cond.true ], [ 0, %cond.false ]
  %mul = mul nsw i32 %sub58, %cond
  %add70 = add nsw i32 %sub54, %mul
  %84 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imax71 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %84, i32 0, i32 1
  %arrayidx72 = getelementptr inbounds [3 x i32], [3 x i32]* %imax71, i32 0, i64 0
  %85 = load i32, i32* %arrayidx72, align 4
  %86 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imin73 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %86, i32 0, i32 0
  %arrayidx74 = getelementptr inbounds [3 x i32], [3 x i32]* %imin73, i32 0, i64 0
  %87 = load i32, i32* %arrayidx74, align 4
  %sub75 = sub nsw i32 %85, %87
  %add76 = add nsw i32 %sub75, 1
  %cmp77 = icmp slt i32 0, %add76
  br i1 %cmp77, label %cond.true.78, label %cond.false.85

cond.true.78:                                     ; preds = %cond.end
  %88 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imax79 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %88, i32 0, i32 1
  %arrayidx80 = getelementptr inbounds [3 x i32], [3 x i32]* %imax79, i32 0, i64 0
  %89 = load i32, i32* %arrayidx80, align 4
  %90 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imin81 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %90, i32 0, i32 0
  %arrayidx82 = getelementptr inbounds [3 x i32], [3 x i32]* %imin81, i32 0, i64 0
  %91 = load i32, i32* %arrayidx82, align 4
  %sub83 = sub nsw i32 %89, %91
  %add84 = add nsw i32 %sub83, 1
  br label %cond.end.86

cond.false.85:                                    ; preds = %cond.end
  br label %cond.end.86

cond.end.86:                                      ; preds = %cond.false.85, %cond.true.78
  %cond87 = phi i32 [ %add84, %cond.true.78 ], [ 0, %cond.false.85 ]
  %mul88 = mul nsw i32 %add70, %cond87
  %add89 = add nsw i32 %sub, %mul88
  store i32 %add89, i32* %hypre__i1start, align 4
  %arrayidx90 = getelementptr inbounds [3 x i32], [3 x i32]* %startc, i32 0, i64 0
  %92 = load i32, i32* %arrayidx90, align 4
  %93 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imin91 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %93, i32 0, i32 0
  %arrayidx92 = getelementptr inbounds [3 x i32], [3 x i32]* %imin91, i32 0, i64 0
  %94 = load i32, i32* %arrayidx92, align 4
  %sub93 = sub nsw i32 %92, %94
  %arrayidx94 = getelementptr inbounds [3 x i32], [3 x i32]* %startc, i32 0, i64 1
  %95 = load i32, i32* %arrayidx94, align 4
  %96 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imin95 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %96, i32 0, i32 0
  %arrayidx96 = getelementptr inbounds [3 x i32], [3 x i32]* %imin95, i32 0, i64 1
  %97 = load i32, i32* %arrayidx96, align 4
  %sub97 = sub nsw i32 %95, %97
  %arrayidx98 = getelementptr inbounds [3 x i32], [3 x i32]* %startc, i32 0, i64 2
  %98 = load i32, i32* %arrayidx98, align 4
  %99 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imin99 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %99, i32 0, i32 0
  %arrayidx100 = getelementptr inbounds [3 x i32], [3 x i32]* %imin99, i32 0, i64 2
  %100 = load i32, i32* %arrayidx100, align 4
  %sub101 = sub nsw i32 %98, %100
  %101 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imax102 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %101, i32 0, i32 1
  %arrayidx103 = getelementptr inbounds [3 x i32], [3 x i32]* %imax102, i32 0, i64 1
  %102 = load i32, i32* %arrayidx103, align 4
  %103 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imin104 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %103, i32 0, i32 0
  %arrayidx105 = getelementptr inbounds [3 x i32], [3 x i32]* %imin104, i32 0, i64 1
  %104 = load i32, i32* %arrayidx105, align 4
  %sub106 = sub nsw i32 %102, %104
  %add107 = add nsw i32 %sub106, 1
  %cmp108 = icmp slt i32 0, %add107
  br i1 %cmp108, label %cond.true.109, label %cond.false.116

cond.true.109:                                    ; preds = %cond.end.86
  %105 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imax110 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %105, i32 0, i32 1
  %arrayidx111 = getelementptr inbounds [3 x i32], [3 x i32]* %imax110, i32 0, i64 1
  %106 = load i32, i32* %arrayidx111, align 4
  %107 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imin112 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %107, i32 0, i32 0
  %arrayidx113 = getelementptr inbounds [3 x i32], [3 x i32]* %imin112, i32 0, i64 1
  %108 = load i32, i32* %arrayidx113, align 4
  %sub114 = sub nsw i32 %106, %108
  %add115 = add nsw i32 %sub114, 1
  br label %cond.end.117

cond.false.116:                                   ; preds = %cond.end.86
  br label %cond.end.117

cond.end.117:                                     ; preds = %cond.false.116, %cond.true.109
  %cond118 = phi i32 [ %add115, %cond.true.109 ], [ 0, %cond.false.116 ]
  %mul119 = mul nsw i32 %sub101, %cond118
  %add120 = add nsw i32 %sub97, %mul119
  %109 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imax121 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %109, i32 0, i32 1
  %arrayidx122 = getelementptr inbounds [3 x i32], [3 x i32]* %imax121, i32 0, i64 0
  %110 = load i32, i32* %arrayidx122, align 4
  %111 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imin123 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %111, i32 0, i32 0
  %arrayidx124 = getelementptr inbounds [3 x i32], [3 x i32]* %imin123, i32 0, i64 0
  %112 = load i32, i32* %arrayidx124, align 4
  %sub125 = sub nsw i32 %110, %112
  %add126 = add nsw i32 %sub125, 1
  %cmp127 = icmp slt i32 0, %add126
  br i1 %cmp127, label %cond.true.128, label %cond.false.135

cond.true.128:                                    ; preds = %cond.end.117
  %113 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imax129 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %113, i32 0, i32 1
  %arrayidx130 = getelementptr inbounds [3 x i32], [3 x i32]* %imax129, i32 0, i64 0
  %114 = load i32, i32* %arrayidx130, align 4
  %115 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imin131 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %115, i32 0, i32 0
  %arrayidx132 = getelementptr inbounds [3 x i32], [3 x i32]* %imin131, i32 0, i64 0
  %116 = load i32, i32* %arrayidx132, align 4
  %sub133 = sub nsw i32 %114, %116
  %add134 = add nsw i32 %sub133, 1
  br label %cond.end.136

cond.false.135:                                   ; preds = %cond.end.117
  br label %cond.end.136

cond.end.136:                                     ; preds = %cond.false.135, %cond.true.128
  %cond137 = phi i32 [ %add134, %cond.true.128 ], [ 0, %cond.false.135 ]
  %mul138 = mul nsw i32 %add120, %cond137
  %add139 = add nsw i32 %sub93, %mul138
  store i32 %add139, i32* %hypre__i2start, align 4
  %117 = load i32*, i32** %stride, align 8
  %arrayidx140 = getelementptr inbounds i32, i32* %117, i64 0
  %118 = load i32, i32* %arrayidx140, align 4
  store i32 %118, i32* %hypre__sx1, align 4
  %119 = load i32*, i32** %stride, align 8
  %arrayidx141 = getelementptr inbounds i32, i32* %119, i64 1
  %120 = load i32, i32* %arrayidx141, align 4
  %121 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imax142 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %121, i32 0, i32 1
  %arrayidx143 = getelementptr inbounds [3 x i32], [3 x i32]* %imax142, i32 0, i64 0
  %122 = load i32, i32* %arrayidx143, align 4
  %123 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imin144 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %123, i32 0, i32 0
  %arrayidx145 = getelementptr inbounds [3 x i32], [3 x i32]* %imin144, i32 0, i64 0
  %124 = load i32, i32* %arrayidx145, align 4
  %sub146 = sub nsw i32 %122, %124
  %add147 = add nsw i32 %sub146, 1
  %cmp148 = icmp slt i32 0, %add147
  br i1 %cmp148, label %cond.true.149, label %cond.false.156

cond.true.149:                                    ; preds = %cond.end.136
  %125 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imax150 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %125, i32 0, i32 1
  %arrayidx151 = getelementptr inbounds [3 x i32], [3 x i32]* %imax150, i32 0, i64 0
  %126 = load i32, i32* %arrayidx151, align 4
  %127 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imin152 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %127, i32 0, i32 0
  %arrayidx153 = getelementptr inbounds [3 x i32], [3 x i32]* %imin152, i32 0, i64 0
  %128 = load i32, i32* %arrayidx153, align 4
  %sub154 = sub nsw i32 %126, %128
  %add155 = add nsw i32 %sub154, 1
  br label %cond.end.157

cond.false.156:                                   ; preds = %cond.end.136
  br label %cond.end.157

cond.end.157:                                     ; preds = %cond.false.156, %cond.true.149
  %cond158 = phi i32 [ %add155, %cond.true.149 ], [ 0, %cond.false.156 ]
  %mul159 = mul nsw i32 %120, %cond158
  store i32 %mul159, i32* %hypre__sy1, align 4
  %129 = load i32*, i32** %stride, align 8
  %arrayidx160 = getelementptr inbounds i32, i32* %129, i64 2
  %130 = load i32, i32* %arrayidx160, align 4
  %131 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imax161 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %131, i32 0, i32 1
  %arrayidx162 = getelementptr inbounds [3 x i32], [3 x i32]* %imax161, i32 0, i64 0
  %132 = load i32, i32* %arrayidx162, align 4
  %133 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imin163 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %133, i32 0, i32 0
  %arrayidx164 = getelementptr inbounds [3 x i32], [3 x i32]* %imin163, i32 0, i64 0
  %134 = load i32, i32* %arrayidx164, align 4
  %sub165 = sub nsw i32 %132, %134
  %add166 = add nsw i32 %sub165, 1
  %cmp167 = icmp slt i32 0, %add166
  br i1 %cmp167, label %cond.true.168, label %cond.false.175

cond.true.168:                                    ; preds = %cond.end.157
  %135 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imax169 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %135, i32 0, i32 1
  %arrayidx170 = getelementptr inbounds [3 x i32], [3 x i32]* %imax169, i32 0, i64 0
  %136 = load i32, i32* %arrayidx170, align 4
  %137 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imin171 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %137, i32 0, i32 0
  %arrayidx172 = getelementptr inbounds [3 x i32], [3 x i32]* %imin171, i32 0, i64 0
  %138 = load i32, i32* %arrayidx172, align 4
  %sub173 = sub nsw i32 %136, %138
  %add174 = add nsw i32 %sub173, 1
  br label %cond.end.176

cond.false.175:                                   ; preds = %cond.end.157
  br label %cond.end.176

cond.end.176:                                     ; preds = %cond.false.175, %cond.true.168
  %cond177 = phi i32 [ %add174, %cond.true.168 ], [ 0, %cond.false.175 ]
  %mul178 = mul nsw i32 %130, %cond177
  %139 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imax179 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %139, i32 0, i32 1
  %arrayidx180 = getelementptr inbounds [3 x i32], [3 x i32]* %imax179, i32 0, i64 1
  %140 = load i32, i32* %arrayidx180, align 4
  %141 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imin181 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %141, i32 0, i32 0
  %arrayidx182 = getelementptr inbounds [3 x i32], [3 x i32]* %imin181, i32 0, i64 1
  %142 = load i32, i32* %arrayidx182, align 4
  %sub183 = sub nsw i32 %140, %142
  %add184 = add nsw i32 %sub183, 1
  %cmp185 = icmp slt i32 0, %add184
  br i1 %cmp185, label %cond.true.186, label %cond.false.193

cond.true.186:                                    ; preds = %cond.end.176
  %143 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imax187 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %143, i32 0, i32 1
  %arrayidx188 = getelementptr inbounds [3 x i32], [3 x i32]* %imax187, i32 0, i64 1
  %144 = load i32, i32* %arrayidx188, align 4
  %145 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imin189 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %145, i32 0, i32 0
  %arrayidx190 = getelementptr inbounds [3 x i32], [3 x i32]* %imin189, i32 0, i64 1
  %146 = load i32, i32* %arrayidx190, align 4
  %sub191 = sub nsw i32 %144, %146
  %add192 = add nsw i32 %sub191, 1
  br label %cond.end.194

cond.false.193:                                   ; preds = %cond.end.176
  br label %cond.end.194

cond.end.194:                                     ; preds = %cond.false.193, %cond.true.186
  %cond195 = phi i32 [ %add192, %cond.true.186 ], [ 0, %cond.false.193 ]
  %mul196 = mul nsw i32 %mul178, %cond195
  store i32 %mul196, i32* %hypre__sz1, align 4
  %arrayidx197 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 0
  %147 = load i32, i32* %arrayidx197, align 4
  store i32 %147, i32* %hypre__sx2, align 4
  %arrayidx198 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 1
  %148 = load i32, i32* %arrayidx198, align 4
  %149 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imax199 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %149, i32 0, i32 1
  %arrayidx200 = getelementptr inbounds [3 x i32], [3 x i32]* %imax199, i32 0, i64 0
  %150 = load i32, i32* %arrayidx200, align 4
  %151 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imin201 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %151, i32 0, i32 0
  %arrayidx202 = getelementptr inbounds [3 x i32], [3 x i32]* %imin201, i32 0, i64 0
  %152 = load i32, i32* %arrayidx202, align 4
  %sub203 = sub nsw i32 %150, %152
  %add204 = add nsw i32 %sub203, 1
  %cmp205 = icmp slt i32 0, %add204
  br i1 %cmp205, label %cond.true.206, label %cond.false.213

cond.true.206:                                    ; preds = %cond.end.194
  %153 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imax207 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %153, i32 0, i32 1
  %arrayidx208 = getelementptr inbounds [3 x i32], [3 x i32]* %imax207, i32 0, i64 0
  %154 = load i32, i32* %arrayidx208, align 4
  %155 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imin209 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %155, i32 0, i32 0
  %arrayidx210 = getelementptr inbounds [3 x i32], [3 x i32]* %imin209, i32 0, i64 0
  %156 = load i32, i32* %arrayidx210, align 4
  %sub211 = sub nsw i32 %154, %156
  %add212 = add nsw i32 %sub211, 1
  br label %cond.end.214

cond.false.213:                                   ; preds = %cond.end.194
  br label %cond.end.214

cond.end.214:                                     ; preds = %cond.false.213, %cond.true.206
  %cond215 = phi i32 [ %add212, %cond.true.206 ], [ 0, %cond.false.213 ]
  %mul216 = mul nsw i32 %148, %cond215
  store i32 %mul216, i32* %hypre__sy2, align 4
  %arrayidx217 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 2
  %157 = load i32, i32* %arrayidx217, align 4
  %158 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imax218 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %158, i32 0, i32 1
  %arrayidx219 = getelementptr inbounds [3 x i32], [3 x i32]* %imax218, i32 0, i64 0
  %159 = load i32, i32* %arrayidx219, align 4
  %160 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imin220 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %160, i32 0, i32 0
  %arrayidx221 = getelementptr inbounds [3 x i32], [3 x i32]* %imin220, i32 0, i64 0
  %161 = load i32, i32* %arrayidx221, align 4
  %sub222 = sub nsw i32 %159, %161
  %add223 = add nsw i32 %sub222, 1
  %cmp224 = icmp slt i32 0, %add223
  br i1 %cmp224, label %cond.true.225, label %cond.false.232

cond.true.225:                                    ; preds = %cond.end.214
  %162 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imax226 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %162, i32 0, i32 1
  %arrayidx227 = getelementptr inbounds [3 x i32], [3 x i32]* %imax226, i32 0, i64 0
  %163 = load i32, i32* %arrayidx227, align 4
  %164 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imin228 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %164, i32 0, i32 0
  %arrayidx229 = getelementptr inbounds [3 x i32], [3 x i32]* %imin228, i32 0, i64 0
  %165 = load i32, i32* %arrayidx229, align 4
  %sub230 = sub nsw i32 %163, %165
  %add231 = add nsw i32 %sub230, 1
  br label %cond.end.233

cond.false.232:                                   ; preds = %cond.end.214
  br label %cond.end.233

cond.end.233:                                     ; preds = %cond.false.232, %cond.true.225
  %cond234 = phi i32 [ %add231, %cond.true.225 ], [ 0, %cond.false.232 ]
  %mul235 = mul nsw i32 %157, %cond234
  %166 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imax236 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %166, i32 0, i32 1
  %arrayidx237 = getelementptr inbounds [3 x i32], [3 x i32]* %imax236, i32 0, i64 1
  %167 = load i32, i32* %arrayidx237, align 4
  %168 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imin238 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %168, i32 0, i32 0
  %arrayidx239 = getelementptr inbounds [3 x i32], [3 x i32]* %imin238, i32 0, i64 1
  %169 = load i32, i32* %arrayidx239, align 4
  %sub240 = sub nsw i32 %167, %169
  %add241 = add nsw i32 %sub240, 1
  %cmp242 = icmp slt i32 0, %add241
  br i1 %cmp242, label %cond.true.243, label %cond.false.250

cond.true.243:                                    ; preds = %cond.end.233
  %170 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imax244 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %170, i32 0, i32 1
  %arrayidx245 = getelementptr inbounds [3 x i32], [3 x i32]* %imax244, i32 0, i64 1
  %171 = load i32, i32* %arrayidx245, align 4
  %172 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %xc_dbox, align 8
  %imin246 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %172, i32 0, i32 0
  %arrayidx247 = getelementptr inbounds [3 x i32], [3 x i32]* %imin246, i32 0, i64 1
  %173 = load i32, i32* %arrayidx247, align 4
  %sub248 = sub nsw i32 %171, %173
  %add249 = add nsw i32 %sub248, 1
  br label %cond.end.251

cond.false.250:                                   ; preds = %cond.end.233
  br label %cond.end.251

cond.end.251:                                     ; preds = %cond.false.250, %cond.true.243
  %cond252 = phi i32 [ %add249, %cond.true.243 ], [ 0, %cond.false.250 ]
  %mul253 = mul nsw i32 %mul235, %cond252
  store i32 %mul253, i32* %hypre__sz2, align 4
  %arrayidx254 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 0
  %174 = load i32, i32* %arrayidx254, align 4
  store i32 %174, i32* %hypre__nx, align 4
  %arrayidx255 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 1
  %175 = load i32, i32* %arrayidx255, align 4
  store i32 %175, i32* %hypre__ny, align 4
  %arrayidx256 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 2
  %176 = load i32, i32* %arrayidx256, align 4
  store i32 %176, i32* %hypre__nz, align 4
  %177 = load i32, i32* %hypre__nx, align 4
  store i32 %177, i32* %hypre__mx, align 4
  %178 = load i32, i32* %hypre__ny, align 4
  store i32 %178, i32* %hypre__my, align 4
  %179 = load i32, i32* %hypre__nz, align 4
  store i32 %179, i32* %hypre__mz, align 4
  store i32 0, i32* %hypre__dir, align 4
  %180 = load i32, i32* %hypre__nx, align 4
  store i32 %180, i32* %hypre__max, align 4
  %181 = load i32, i32* %hypre__ny, align 4
  %182 = load i32, i32* %hypre__max, align 4
  %cmp257 = icmp sgt i32 %181, %182
  br i1 %cmp257, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.251
  store i32 1, i32* %hypre__dir, align 4
  %183 = load i32, i32* %hypre__ny, align 4
  store i32 %183, i32* %hypre__max, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.251
  %184 = load i32, i32* %hypre__nz, align 4
  %185 = load i32, i32* %hypre__max, align 4
  %cmp258 = icmp sgt i32 %184, %185
  br i1 %cmp258, label %if.then.259, label %if.end.260

if.then.259:                                      ; preds = %if.end
  store i32 2, i32* %hypre__dir, align 4
  %186 = load i32, i32* %hypre__nz, align 4
  store i32 %186, i32* %hypre__max, align 4
  br label %if.end.260

if.end.260:                                       ; preds = %if.then.259, %if.end
  store i32 1, i32* %hypre__num_blocks, align 4
  %187 = load i32, i32* %hypre__max, align 4
  %188 = load i32, i32* %hypre__num_blocks, align 4
  %cmp261 = icmp slt i32 %187, %188
  br i1 %cmp261, label %if.then.262, label %if.end.263

if.then.262:                                      ; preds = %if.end.260
  %189 = load i32, i32* %hypre__max, align 4
  store i32 %189, i32* %hypre__num_blocks, align 4
  br label %if.end.263

if.end.263:                                       ; preds = %if.then.262, %if.end.260
  %190 = load i32, i32* %hypre__num_blocks, align 4
  %cmp264 = icmp sgt i32 %190, 0
  br i1 %cmp264, label %if.then.265, label %if.end.266

if.then.265:                                      ; preds = %if.end.263
  %191 = load i32, i32* %hypre__max, align 4
  %192 = load i32, i32* %hypre__num_blocks, align 4
  %div = sdiv i32 %191, %192
  store i32 %div, i32* %hypre__div, align 4
  %193 = load i32, i32* %hypre__max, align 4
  %194 = load i32, i32* %hypre__num_blocks, align 4
  %rem = srem i32 %193, %194
  store i32 %rem, i32* %hypre__mod, align 4
  br label %if.end.266

if.end.266:                                       ; preds = %if.then.265, %if.end.263
  store i32 0, i32* %hypre__block, align 4
  br label %for.cond.267

for.cond.267:                                     ; preds = %for.inc.359, %if.end.266
  %195 = load i32, i32* %hypre__block, align 4
  %196 = load i32, i32* %hypre__num_blocks, align 4
  %cmp268 = icmp slt i32 %195, %196
  br i1 %cmp268, label %for.body.269, label %for.end.361

for.body.269:                                     ; preds = %for.cond.267
  store i32 0, i32* %loopi, align 4
  store i32 0, i32* %loopj, align 4
  store i32 0, i32* %loopk, align 4
  %197 = load i32, i32* %hypre__mx, align 4
  store i32 %197, i32* %hypre__nx, align 4
  %198 = load i32, i32* %hypre__my, align 4
  store i32 %198, i32* %hypre__ny, align 4
  %199 = load i32, i32* %hypre__mz, align 4
  store i32 %199, i32* %hypre__nz, align 4
  %200 = load i32, i32* %hypre__num_blocks, align 4
  %cmp270 = icmp sgt i32 %200, 1
  br i1 %cmp270, label %if.then.271, label %if.end.312

if.then.271:                                      ; preds = %for.body.269
  %201 = load i32, i32* %hypre__dir, align 4
  %cmp272 = icmp eq i32 %201, 0
  br i1 %cmp272, label %if.then.273, label %if.else

if.then.273:                                      ; preds = %if.then.271
  %202 = load i32, i32* %hypre__block, align 4
  %203 = load i32, i32* %hypre__div, align 4
  %mul274 = mul nsw i32 %202, %203
  %204 = load i32, i32* %hypre__mod, align 4
  %205 = load i32, i32* %hypre__block, align 4
  %cmp275 = icmp slt i32 %204, %205
  br i1 %cmp275, label %cond.true.276, label %cond.false.277

cond.true.276:                                    ; preds = %if.then.273
  %206 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.278

cond.false.277:                                   ; preds = %if.then.273
  %207 = load i32, i32* %hypre__block, align 4
  br label %cond.end.278

cond.end.278:                                     ; preds = %cond.false.277, %cond.true.276
  %cond279 = phi i32 [ %206, %cond.true.276 ], [ %207, %cond.false.277 ]
  %add280 = add nsw i32 %mul274, %cond279
  store i32 %add280, i32* %loopi, align 4
  %208 = load i32, i32* %hypre__div, align 4
  %209 = load i32, i32* %hypre__mod, align 4
  %210 = load i32, i32* %hypre__block, align 4
  %cmp281 = icmp sgt i32 %209, %210
  %cond282 = select i1 %cmp281, i32 1, i32 0
  %add283 = add nsw i32 %208, %cond282
  store i32 %add283, i32* %hypre__nx, align 4
  br label %if.end.311

if.else:                                          ; preds = %if.then.271
  %211 = load i32, i32* %hypre__dir, align 4
  %cmp284 = icmp eq i32 %211, 1
  br i1 %cmp284, label %if.then.285, label %if.else.296

if.then.285:                                      ; preds = %if.else
  %212 = load i32, i32* %hypre__block, align 4
  %213 = load i32, i32* %hypre__div, align 4
  %mul286 = mul nsw i32 %212, %213
  %214 = load i32, i32* %hypre__mod, align 4
  %215 = load i32, i32* %hypre__block, align 4
  %cmp287 = icmp slt i32 %214, %215
  br i1 %cmp287, label %cond.true.288, label %cond.false.289

cond.true.288:                                    ; preds = %if.then.285
  %216 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.290

cond.false.289:                                   ; preds = %if.then.285
  %217 = load i32, i32* %hypre__block, align 4
  br label %cond.end.290

cond.end.290:                                     ; preds = %cond.false.289, %cond.true.288
  %cond291 = phi i32 [ %216, %cond.true.288 ], [ %217, %cond.false.289 ]
  %add292 = add nsw i32 %mul286, %cond291
  store i32 %add292, i32* %loopj, align 4
  %218 = load i32, i32* %hypre__div, align 4
  %219 = load i32, i32* %hypre__mod, align 4
  %220 = load i32, i32* %hypre__block, align 4
  %cmp293 = icmp sgt i32 %219, %220
  %cond294 = select i1 %cmp293, i32 1, i32 0
  %add295 = add nsw i32 %218, %cond294
  store i32 %add295, i32* %hypre__ny, align 4
  br label %if.end.310

if.else.296:                                      ; preds = %if.else
  %221 = load i32, i32* %hypre__dir, align 4
  %cmp297 = icmp eq i32 %221, 2
  br i1 %cmp297, label %if.then.298, label %if.end.309

if.then.298:                                      ; preds = %if.else.296
  %222 = load i32, i32* %hypre__block, align 4
  %223 = load i32, i32* %hypre__div, align 4
  %mul299 = mul nsw i32 %222, %223
  %224 = load i32, i32* %hypre__mod, align 4
  %225 = load i32, i32* %hypre__block, align 4
  %cmp300 = icmp slt i32 %224, %225
  br i1 %cmp300, label %cond.true.301, label %cond.false.302

cond.true.301:                                    ; preds = %if.then.298
  %226 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.303

cond.false.302:                                   ; preds = %if.then.298
  %227 = load i32, i32* %hypre__block, align 4
  br label %cond.end.303

cond.end.303:                                     ; preds = %cond.false.302, %cond.true.301
  %cond304 = phi i32 [ %226, %cond.true.301 ], [ %227, %cond.false.302 ]
  %add305 = add nsw i32 %mul299, %cond304
  store i32 %add305, i32* %loopk, align 4
  %228 = load i32, i32* %hypre__div, align 4
  %229 = load i32, i32* %hypre__mod, align 4
  %230 = load i32, i32* %hypre__block, align 4
  %cmp306 = icmp sgt i32 %229, %230
  %cond307 = select i1 %cmp306, i32 1, i32 0
  %add308 = add nsw i32 %228, %cond307
  store i32 %add308, i32* %hypre__nz, align 4
  br label %if.end.309

if.end.309:                                       ; preds = %cond.end.303, %if.else.296
  br label %if.end.310

if.end.310:                                       ; preds = %if.end.309, %cond.end.290
  br label %if.end.311

if.end.311:                                       ; preds = %if.end.310, %cond.end.278
  br label %if.end.312

if.end.312:                                       ; preds = %if.end.311, %for.body.269
  %231 = load i32, i32* %hypre__i1start, align 4
  %232 = load i32, i32* %loopi, align 4
  %233 = load i32, i32* %hypre__sx1, align 4
  %mul313 = mul nsw i32 %232, %233
  %add314 = add nsw i32 %231, %mul313
  %234 = load i32, i32* %loopj, align 4
  %235 = load i32, i32* %hypre__sy1, align 4
  %mul315 = mul nsw i32 %234, %235
  %add316 = add nsw i32 %add314, %mul315
  %236 = load i32, i32* %loopk, align 4
  %237 = load i32, i32* %hypre__sz1, align 4
  %mul317 = mul nsw i32 %236, %237
  %add318 = add nsw i32 %add316, %mul317
  store i32 %add318, i32* %ei, align 4
  %238 = load i32, i32* %hypre__i2start, align 4
  %239 = load i32, i32* %loopi, align 4
  %240 = load i32, i32* %hypre__sx2, align 4
  %mul319 = mul nsw i32 %239, %240
  %add320 = add nsw i32 %238, %mul319
  %241 = load i32, i32* %loopj, align 4
  %242 = load i32, i32* %hypre__sy2, align 4
  %mul321 = mul nsw i32 %241, %242
  %add322 = add nsw i32 %add320, %mul321
  %243 = load i32, i32* %loopk, align 4
  %244 = load i32, i32* %hypre__sz2, align 4
  %mul323 = mul nsw i32 %243, %244
  %add324 = add nsw i32 %add322, %mul323
  store i32 %add324, i32* %xci, align 4
  store i32 0, i32* %loopk, align 4
  br label %for.cond.325

for.cond.325:                                     ; preds = %for.inc.356, %if.end.312
  %245 = load i32, i32* %loopk, align 4
  %246 = load i32, i32* %hypre__nz, align 4
  %cmp326 = icmp slt i32 %245, %246
  br i1 %cmp326, label %for.body.327, label %for.end.358

for.body.327:                                     ; preds = %for.cond.325
  store i32 0, i32* %loopj, align 4
  br label %for.cond.328

for.cond.328:                                     ; preds = %for.inc.347, %for.body.327
  %247 = load i32, i32* %loopj, align 4
  %248 = load i32, i32* %hypre__ny, align 4
  %cmp329 = icmp slt i32 %247, %248
  br i1 %cmp329, label %for.body.330, label %for.end.349

for.body.330:                                     ; preds = %for.cond.328
  store i32 0, i32* %loopi, align 4
  br label %for.cond.331

for.cond.331:                                     ; preds = %for.inc, %for.body.330
  %249 = load i32, i32* %loopi, align 4
  %250 = load i32, i32* %hypre__nx, align 4
  %cmp332 = icmp slt i32 %249, %250
  br i1 %cmp332, label %for.body.333, label %for.end

for.body.333:                                     ; preds = %for.cond.331
  %251 = load i32, i32* %xci, align 4
  %idxprom334 = sext i32 %251 to i64
  %252 = load double*, double** %xcp, align 8
  %arrayidx335 = getelementptr inbounds double, double* %252, i64 %idxprom334
  %253 = load double, double* %arrayidx335, align 8
  %254 = load i32, i32* %ei, align 4
  %idxprom336 = sext i32 %254 to i64
  %255 = load double*, double** %ep, align 8
  %arrayidx337 = getelementptr inbounds double, double* %255, i64 %idxprom336
  store double %253, double* %arrayidx337, align 8
  %256 = load i32, i32* %hypre__sx1, align 4
  %257 = load i32, i32* %ei, align 4
  %add338 = add nsw i32 %257, %256
  store i32 %add338, i32* %ei, align 4
  %258 = load i32, i32* %hypre__sx2, align 4
  %259 = load i32, i32* %xci, align 4
  %add339 = add nsw i32 %259, %258
  store i32 %add339, i32* %xci, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.333
  %260 = load i32, i32* %loopi, align 4
  %inc340 = add nsw i32 %260, 1
  store i32 %inc340, i32* %loopi, align 4
  br label %for.cond.331

for.end:                                          ; preds = %for.cond.331
  %261 = load i32, i32* %hypre__sy1, align 4
  %262 = load i32, i32* %hypre__nx, align 4
  %263 = load i32, i32* %hypre__sx1, align 4
  %mul341 = mul nsw i32 %262, %263
  %sub342 = sub nsw i32 %261, %mul341
  %264 = load i32, i32* %ei, align 4
  %add343 = add nsw i32 %264, %sub342
  store i32 %add343, i32* %ei, align 4
  %265 = load i32, i32* %hypre__sy2, align 4
  %266 = load i32, i32* %hypre__nx, align 4
  %267 = load i32, i32* %hypre__sx2, align 4
  %mul344 = mul nsw i32 %266, %267
  %sub345 = sub nsw i32 %265, %mul344
  %268 = load i32, i32* %xci, align 4
  %add346 = add nsw i32 %268, %sub345
  store i32 %add346, i32* %xci, align 4
  br label %for.inc.347

for.inc.347:                                      ; preds = %for.end
  %269 = load i32, i32* %loopj, align 4
  %inc348 = add nsw i32 %269, 1
  store i32 %inc348, i32* %loopj, align 4
  br label %for.cond.328

for.end.349:                                      ; preds = %for.cond.328
  %270 = load i32, i32* %hypre__sz1, align 4
  %271 = load i32, i32* %hypre__ny, align 4
  %272 = load i32, i32* %hypre__sy1, align 4
  %mul350 = mul nsw i32 %271, %272
  %sub351 = sub nsw i32 %270, %mul350
  %273 = load i32, i32* %ei, align 4
  %add352 = add nsw i32 %273, %sub351
  store i32 %add352, i32* %ei, align 4
  %274 = load i32, i32* %hypre__sz2, align 4
  %275 = load i32, i32* %hypre__ny, align 4
  %276 = load i32, i32* %hypre__sy2, align 4
  %mul353 = mul nsw i32 %275, %276
  %sub354 = sub nsw i32 %274, %mul353
  %277 = load i32, i32* %xci, align 4
  %add355 = add nsw i32 %277, %sub354
  store i32 %add355, i32* %xci, align 4
  br label %for.inc.356

for.inc.356:                                      ; preds = %for.end.349
  %278 = load i32, i32* %loopk, align 4
  %inc357 = add nsw i32 %278, 1
  store i32 %inc357, i32* %loopk, align 4
  br label %for.cond.325

for.end.358:                                      ; preds = %for.cond.325
  br label %for.inc.359

for.inc.359:                                      ; preds = %for.end.358
  %279 = load i32, i32* %hypre__block, align 4
  %inc360 = add nsw i32 %279, 1
  store i32 %inc360, i32* %hypre__block, align 4
  br label %for.cond.267

for.end.361:                                      ; preds = %for.cond.267
  br label %for.inc.362

for.inc.362:                                      ; preds = %for.end.361
  %280 = load i32, i32* %ci, align 4
  %inc363 = add nsw i32 %280, 1
  store i32 %inc363, i32* %ci, align 4
  br label %for.cond

for.end.364:                                      ; preds = %for.cond
  store i32 0, i32* %compute_i, align 4
  br label %for.cond.365

for.cond.365:                                     ; preds = %for.inc.946, %for.end.364
  %281 = load i32, i32* %compute_i, align 4
  %cmp366 = icmp slt i32 %281, 2
  br i1 %cmp366, label %for.body.367, label %for.end.948

for.body.367:                                     ; preds = %for.cond.365
  %282 = load i32, i32* %compute_i, align 4
  switch i32 %282, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.370
  ]

sw.bb:                                            ; preds = %for.body.367
  %283 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %e.addr, align 8
  %data368 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %283, i32 0, i32 3
  %284 = load double*, double** %data368, align 8
  store double* %284, double** %ep, align 8
  %285 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %compute_pkg, align 8
  %286 = load double*, double** %ep, align 8
  %call369 = call i32 @hypre_InitializeIndtComputations(%struct.hypre_ComputePkg_struct* %285, double* %286, %struct.hypre_CommHandle_struct** %comm_handle)
  %287 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %compute_pkg, align 8
  %indt_boxes = getelementptr inbounds %struct.hypre_ComputePkg_struct, %struct.hypre_ComputePkg_struct* %287, i32 0, i32 1
  %288 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %indt_boxes, align 8
  store %struct.hypre_BoxArrayArray_struct* %288, %struct.hypre_BoxArrayArray_struct** %compute_box_aa, align 8
  br label %sw.epilog

sw.bb.370:                                        ; preds = %for.body.367
  %289 = load %struct.hypre_CommHandle_struct*, %struct.hypre_CommHandle_struct** %comm_handle, align 8
  %call371 = call i32 @hypre_FinalizeIndtComputations(%struct.hypre_CommHandle_struct* %289)
  %290 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %compute_pkg, align 8
  %dept_boxes = getelementptr inbounds %struct.hypre_ComputePkg_struct, %struct.hypre_ComputePkg_struct* %290, i32 0, i32 2
  %291 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %dept_boxes, align 8
  store %struct.hypre_BoxArrayArray_struct* %291, %struct.hypre_BoxArrayArray_struct** %compute_box_aa, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body.367, %sw.bb.370, %sw.bb
  store i32 0, i32* %fi, align 4
  br label %for.cond.372

for.cond.372:                                     ; preds = %for.inc.943, %sw.epilog
  %292 = load i32, i32* %fi, align 4
  %293 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %compute_box_aa, align 8
  %size373 = getelementptr inbounds %struct.hypre_BoxArrayArray_struct, %struct.hypre_BoxArrayArray_struct* %293, i32 0, i32 1
  %294 = load i32, i32* %size373, align 4
  %cmp374 = icmp slt i32 %292, %294
  br i1 %cmp374, label %for.body.375, label %for.end.945

for.body.375:                                     ; preds = %for.cond.372
  %295 = load i32, i32* %fi, align 4
  %idxprom376 = sext i32 %295 to i64
  %296 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %compute_box_aa, align 8
  %box_arrays = getelementptr inbounds %struct.hypre_BoxArrayArray_struct, %struct.hypre_BoxArrayArray_struct* %296, i32 0, i32 0
  %297 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %box_arrays, align 8
  %arrayidx377 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %297, i64 %idxprom376
  %298 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx377, align 8
  store %struct.hypre_BoxArray_struct* %298, %struct.hypre_BoxArray_struct** %compute_box_a, align 8
  %299 = load i32, i32* %fi, align 4
  %idxprom378 = sext i32 %299 to i64
  %300 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %P.addr, align 8
  %data_space379 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %300, i32 0, i32 5
  %301 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space379, align 8
  %boxes380 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %301, i32 0, i32 0
  %302 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes380, align 8
  %arrayidx381 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %302, i64 %idxprom378
  store %struct.hypre_Box_struct* %arrayidx381, %struct.hypre_Box_struct** %P_dbox, align 8
  %303 = load i32, i32* %fi, align 4
  %idxprom382 = sext i32 %303 to i64
  %304 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %e.addr, align 8
  %data_space383 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %304, i32 0, i32 2
  %305 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space383, align 8
  %boxes384 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %305, i32 0, i32 0
  %306 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes384, align 8
  %arrayidx385 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %306, i64 %idxprom382
  store %struct.hypre_Box_struct* %arrayidx385, %struct.hypre_Box_struct** %e_dbox, align 8
  %307 = load i32, i32* %P_stored_as_transpose, align 4
  %tobool = icmp ne i32 %307, 0
  br i1 %tobool, label %if.then.386, label %if.else.447

if.then.386:                                      ; preds = %for.body.375
  %308 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %P.addr, align 8
  %data387 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %308, i32 0, i32 6
  %309 = load double*, double** %data387, align 8
  %310 = load i32, i32* %fi, align 4
  %idxprom388 = sext i32 %310 to i64
  %311 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %P.addr, align 8
  %data_indices389 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %311, i32 0, i32 9
  %312 = load i32**, i32*** %data_indices389, align 8
  %arrayidx390 = getelementptr inbounds i32*, i32** %312, i64 %idxprom388
  %313 = load i32*, i32** %arrayidx390, align 8
  %arrayidx391 = getelementptr inbounds i32, i32* %313, i64 1
  %314 = load i32, i32* %arrayidx391, align 4
  %idx.ext392 = sext i32 %314 to i64
  %add.ptr393 = getelementptr inbounds double, double* %309, i64 %idx.ext392
  store double* %add.ptr393, double** %Pp0, align 8
  %315 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %P.addr, align 8
  %data394 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %315, i32 0, i32 6
  %316 = load double*, double** %data394, align 8
  %317 = load i32, i32* %fi, align 4
  %idxprom395 = sext i32 %317 to i64
  %318 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %P.addr, align 8
  %data_indices396 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %318, i32 0, i32 9
  %319 = load i32**, i32*** %data_indices396, align 8
  %arrayidx397 = getelementptr inbounds i32*, i32** %319, i64 %idxprom395
  %320 = load i32*, i32** %arrayidx397, align 8
  %arrayidx398 = getelementptr inbounds i32, i32* %320, i64 0
  %321 = load i32, i32* %arrayidx398, align 4
  %idx.ext399 = sext i32 %321 to i64
  %add.ptr400 = getelementptr inbounds double, double* %316, i64 %idx.ext399
  %322 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx401 = getelementptr inbounds [3 x i32], [3 x i32]* %322, i64 0
  %arrayidx402 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx401, i32 0, i64 0
  %323 = load i32, i32* %arrayidx402, align 4
  %324 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx403 = getelementptr inbounds [3 x i32], [3 x i32]* %324, i64 0
  %arrayidx404 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx403, i32 0, i64 1
  %325 = load i32, i32* %arrayidx404, align 4
  %326 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx405 = getelementptr inbounds [3 x i32], [3 x i32]* %326, i64 0
  %arrayidx406 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx405, i32 0, i64 2
  %327 = load i32, i32* %arrayidx406, align 4
  %328 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %P_dbox, align 8
  %imax407 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %328, i32 0, i32 1
  %arrayidx408 = getelementptr inbounds [3 x i32], [3 x i32]* %imax407, i32 0, i64 1
  %329 = load i32, i32* %arrayidx408, align 4
  %330 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %P_dbox, align 8
  %imin409 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %330, i32 0, i32 0
  %arrayidx410 = getelementptr inbounds [3 x i32], [3 x i32]* %imin409, i32 0, i64 1
  %331 = load i32, i32* %arrayidx410, align 4
  %sub411 = sub nsw i32 %329, %331
  %add412 = add nsw i32 %sub411, 1
  %cmp413 = icmp slt i32 0, %add412
  br i1 %cmp413, label %cond.true.414, label %cond.false.421

cond.true.414:                                    ; preds = %if.then.386
  %332 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %P_dbox, align 8
  %imax415 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %332, i32 0, i32 1
  %arrayidx416 = getelementptr inbounds [3 x i32], [3 x i32]* %imax415, i32 0, i64 1
  %333 = load i32, i32* %arrayidx416, align 4
  %334 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %P_dbox, align 8
  %imin417 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %334, i32 0, i32 0
  %arrayidx418 = getelementptr inbounds [3 x i32], [3 x i32]* %imin417, i32 0, i64 1
  %335 = load i32, i32* %arrayidx418, align 4
  %sub419 = sub nsw i32 %333, %335
  %add420 = add nsw i32 %sub419, 1
  br label %cond.end.422

cond.false.421:                                   ; preds = %if.then.386
  br label %cond.end.422

cond.end.422:                                     ; preds = %cond.false.421, %cond.true.414
  %cond423 = phi i32 [ %add420, %cond.true.414 ], [ 0, %cond.false.421 ]
  %mul424 = mul nsw i32 %327, %cond423
  %add425 = add nsw i32 %325, %mul424
  %336 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %P_dbox, align 8
  %imax426 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %336, i32 0, i32 1
  %arrayidx427 = getelementptr inbounds [3 x i32], [3 x i32]* %imax426, i32 0, i64 0
  %337 = load i32, i32* %arrayidx427, align 4
  %338 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %P_dbox, align 8
  %imin428 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %338, i32 0, i32 0
  %arrayidx429 = getelementptr inbounds [3 x i32], [3 x i32]* %imin428, i32 0, i64 0
  %339 = load i32, i32* %arrayidx429, align 4
  %sub430 = sub nsw i32 %337, %339
  %add431 = add nsw i32 %sub430, 1
  %cmp432 = icmp slt i32 0, %add431
  br i1 %cmp432, label %cond.true.433, label %cond.false.440

cond.true.433:                                    ; preds = %cond.end.422
  %340 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %P_dbox, align 8
  %imax434 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %340, i32 0, i32 1
  %arrayidx435 = getelementptr inbounds [3 x i32], [3 x i32]* %imax434, i32 0, i64 0
  %341 = load i32, i32* %arrayidx435, align 4
  %342 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %P_dbox, align 8
  %imin436 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %342, i32 0, i32 0
  %arrayidx437 = getelementptr inbounds [3 x i32], [3 x i32]* %imin436, i32 0, i64 0
  %343 = load i32, i32* %arrayidx437, align 4
  %sub438 = sub nsw i32 %341, %343
  %add439 = add nsw i32 %sub438, 1
  br label %cond.end.441

cond.false.440:                                   ; preds = %cond.end.422
  br label %cond.end.441

cond.end.441:                                     ; preds = %cond.false.440, %cond.true.433
  %cond442 = phi i32 [ %add439, %cond.true.433 ], [ 0, %cond.false.440 ]
  %mul443 = mul nsw i32 %add425, %cond442
  %add444 = add nsw i32 %323, %mul443
  %idx.ext445 = sext i32 %add444 to i64
  %idx.neg = sub i64 0, %idx.ext445
  %add.ptr446 = getelementptr inbounds double, double* %add.ptr400, i64 %idx.neg
  store double* %add.ptr446, double** %Pp1, align 8
  br label %if.end.462

if.else.447:                                      ; preds = %for.body.375
  %344 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %P.addr, align 8
  %data448 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %344, i32 0, i32 6
  %345 = load double*, double** %data448, align 8
  %346 = load i32, i32* %fi, align 4
  %idxprom449 = sext i32 %346 to i64
  %347 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %P.addr, align 8
  %data_indices450 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %347, i32 0, i32 9
  %348 = load i32**, i32*** %data_indices450, align 8
  %arrayidx451 = getelementptr inbounds i32*, i32** %348, i64 %idxprom449
  %349 = load i32*, i32** %arrayidx451, align 8
  %arrayidx452 = getelementptr inbounds i32, i32* %349, i64 0
  %350 = load i32, i32* %arrayidx452, align 4
  %idx.ext453 = sext i32 %350 to i64
  %add.ptr454 = getelementptr inbounds double, double* %345, i64 %idx.ext453
  store double* %add.ptr454, double** %Pp0, align 8
  %351 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %P.addr, align 8
  %data455 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %351, i32 0, i32 6
  %352 = load double*, double** %data455, align 8
  %353 = load i32, i32* %fi, align 4
  %idxprom456 = sext i32 %353 to i64
  %354 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %P.addr, align 8
  %data_indices457 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %354, i32 0, i32 9
  %355 = load i32**, i32*** %data_indices457, align 8
  %arrayidx458 = getelementptr inbounds i32*, i32** %355, i64 %idxprom456
  %356 = load i32*, i32** %arrayidx458, align 8
  %arrayidx459 = getelementptr inbounds i32, i32* %356, i64 1
  %357 = load i32, i32* %arrayidx459, align 4
  %idx.ext460 = sext i32 %357 to i64
  %add.ptr461 = getelementptr inbounds double, double* %352, i64 %idx.ext460
  store double* %add.ptr461, double** %Pp1, align 8
  br label %if.end.462

if.end.462:                                       ; preds = %if.else.447, %cond.end.441
  %358 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %e.addr, align 8
  %data463 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %358, i32 0, i32 3
  %359 = load double*, double** %data463, align 8
  %360 = load i32, i32* %fi, align 4
  %idxprom464 = sext i32 %360 to i64
  %361 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %e.addr, align 8
  %data_indices465 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %361, i32 0, i32 6
  %362 = load i32*, i32** %data_indices465, align 8
  %arrayidx466 = getelementptr inbounds i32, i32* %362, i64 %idxprom464
  %363 = load i32, i32* %arrayidx466, align 4
  %idx.ext467 = sext i32 %363 to i64
  %add.ptr468 = getelementptr inbounds double, double* %359, i64 %idx.ext467
  store double* %add.ptr468, double** %ep, align 8
  %364 = load double*, double** %ep, align 8
  %365 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx469 = getelementptr inbounds [3 x i32], [3 x i32]* %365, i64 0
  %arrayidx470 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx469, i32 0, i64 0
  %366 = load i32, i32* %arrayidx470, align 4
  %367 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx471 = getelementptr inbounds [3 x i32], [3 x i32]* %367, i64 0
  %arrayidx472 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx471, i32 0, i64 1
  %368 = load i32, i32* %arrayidx472, align 4
  %369 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx473 = getelementptr inbounds [3 x i32], [3 x i32]* %369, i64 0
  %arrayidx474 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx473, i32 0, i64 2
  %370 = load i32, i32* %arrayidx474, align 4
  %371 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imax475 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %371, i32 0, i32 1
  %arrayidx476 = getelementptr inbounds [3 x i32], [3 x i32]* %imax475, i32 0, i64 1
  %372 = load i32, i32* %arrayidx476, align 4
  %373 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imin477 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %373, i32 0, i32 0
  %arrayidx478 = getelementptr inbounds [3 x i32], [3 x i32]* %imin477, i32 0, i64 1
  %374 = load i32, i32* %arrayidx478, align 4
  %sub479 = sub nsw i32 %372, %374
  %add480 = add nsw i32 %sub479, 1
  %cmp481 = icmp slt i32 0, %add480
  br i1 %cmp481, label %cond.true.482, label %cond.false.489

cond.true.482:                                    ; preds = %if.end.462
  %375 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imax483 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %375, i32 0, i32 1
  %arrayidx484 = getelementptr inbounds [3 x i32], [3 x i32]* %imax483, i32 0, i64 1
  %376 = load i32, i32* %arrayidx484, align 4
  %377 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imin485 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %377, i32 0, i32 0
  %arrayidx486 = getelementptr inbounds [3 x i32], [3 x i32]* %imin485, i32 0, i64 1
  %378 = load i32, i32* %arrayidx486, align 4
  %sub487 = sub nsw i32 %376, %378
  %add488 = add nsw i32 %sub487, 1
  br label %cond.end.490

cond.false.489:                                   ; preds = %if.end.462
  br label %cond.end.490

cond.end.490:                                     ; preds = %cond.false.489, %cond.true.482
  %cond491 = phi i32 [ %add488, %cond.true.482 ], [ 0, %cond.false.489 ]
  %mul492 = mul nsw i32 %370, %cond491
  %add493 = add nsw i32 %368, %mul492
  %379 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imax494 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %379, i32 0, i32 1
  %arrayidx495 = getelementptr inbounds [3 x i32], [3 x i32]* %imax494, i32 0, i64 0
  %380 = load i32, i32* %arrayidx495, align 4
  %381 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imin496 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %381, i32 0, i32 0
  %arrayidx497 = getelementptr inbounds [3 x i32], [3 x i32]* %imin496, i32 0, i64 0
  %382 = load i32, i32* %arrayidx497, align 4
  %sub498 = sub nsw i32 %380, %382
  %add499 = add nsw i32 %sub498, 1
  %cmp500 = icmp slt i32 0, %add499
  br i1 %cmp500, label %cond.true.501, label %cond.false.508

cond.true.501:                                    ; preds = %cond.end.490
  %383 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imax502 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %383, i32 0, i32 1
  %arrayidx503 = getelementptr inbounds [3 x i32], [3 x i32]* %imax502, i32 0, i64 0
  %384 = load i32, i32* %arrayidx503, align 4
  %385 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imin504 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %385, i32 0, i32 0
  %arrayidx505 = getelementptr inbounds [3 x i32], [3 x i32]* %imin504, i32 0, i64 0
  %386 = load i32, i32* %arrayidx505, align 4
  %sub506 = sub nsw i32 %384, %386
  %add507 = add nsw i32 %sub506, 1
  br label %cond.end.509

cond.false.508:                                   ; preds = %cond.end.490
  br label %cond.end.509

cond.end.509:                                     ; preds = %cond.false.508, %cond.true.501
  %cond510 = phi i32 [ %add507, %cond.true.501 ], [ 0, %cond.false.508 ]
  %mul511 = mul nsw i32 %add493, %cond510
  %add512 = add nsw i32 %366, %mul511
  %idx.ext513 = sext i32 %add512 to i64
  %add.ptr514 = getelementptr inbounds double, double* %364, i64 %idx.ext513
  store double* %add.ptr514, double** %ep0, align 8
  %387 = load double*, double** %ep, align 8
  %388 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx515 = getelementptr inbounds [3 x i32], [3 x i32]* %388, i64 1
  %arrayidx516 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx515, i32 0, i64 0
  %389 = load i32, i32* %arrayidx516, align 4
  %390 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx517 = getelementptr inbounds [3 x i32], [3 x i32]* %390, i64 1
  %arrayidx518 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx517, i32 0, i64 1
  %391 = load i32, i32* %arrayidx518, align 4
  %392 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx519 = getelementptr inbounds [3 x i32], [3 x i32]* %392, i64 1
  %arrayidx520 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx519, i32 0, i64 2
  %393 = load i32, i32* %arrayidx520, align 4
  %394 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imax521 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %394, i32 0, i32 1
  %arrayidx522 = getelementptr inbounds [3 x i32], [3 x i32]* %imax521, i32 0, i64 1
  %395 = load i32, i32* %arrayidx522, align 4
  %396 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imin523 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %396, i32 0, i32 0
  %arrayidx524 = getelementptr inbounds [3 x i32], [3 x i32]* %imin523, i32 0, i64 1
  %397 = load i32, i32* %arrayidx524, align 4
  %sub525 = sub nsw i32 %395, %397
  %add526 = add nsw i32 %sub525, 1
  %cmp527 = icmp slt i32 0, %add526
  br i1 %cmp527, label %cond.true.528, label %cond.false.535

cond.true.528:                                    ; preds = %cond.end.509
  %398 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imax529 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %398, i32 0, i32 1
  %arrayidx530 = getelementptr inbounds [3 x i32], [3 x i32]* %imax529, i32 0, i64 1
  %399 = load i32, i32* %arrayidx530, align 4
  %400 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imin531 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %400, i32 0, i32 0
  %arrayidx532 = getelementptr inbounds [3 x i32], [3 x i32]* %imin531, i32 0, i64 1
  %401 = load i32, i32* %arrayidx532, align 4
  %sub533 = sub nsw i32 %399, %401
  %add534 = add nsw i32 %sub533, 1
  br label %cond.end.536

cond.false.535:                                   ; preds = %cond.end.509
  br label %cond.end.536

cond.end.536:                                     ; preds = %cond.false.535, %cond.true.528
  %cond537 = phi i32 [ %add534, %cond.true.528 ], [ 0, %cond.false.535 ]
  %mul538 = mul nsw i32 %393, %cond537
  %add539 = add nsw i32 %391, %mul538
  %402 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imax540 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %402, i32 0, i32 1
  %arrayidx541 = getelementptr inbounds [3 x i32], [3 x i32]* %imax540, i32 0, i64 0
  %403 = load i32, i32* %arrayidx541, align 4
  %404 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imin542 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %404, i32 0, i32 0
  %arrayidx543 = getelementptr inbounds [3 x i32], [3 x i32]* %imin542, i32 0, i64 0
  %405 = load i32, i32* %arrayidx543, align 4
  %sub544 = sub nsw i32 %403, %405
  %add545 = add nsw i32 %sub544, 1
  %cmp546 = icmp slt i32 0, %add545
  br i1 %cmp546, label %cond.true.547, label %cond.false.554

cond.true.547:                                    ; preds = %cond.end.536
  %406 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imax548 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %406, i32 0, i32 1
  %arrayidx549 = getelementptr inbounds [3 x i32], [3 x i32]* %imax548, i32 0, i64 0
  %407 = load i32, i32* %arrayidx549, align 4
  %408 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imin550 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %408, i32 0, i32 0
  %arrayidx551 = getelementptr inbounds [3 x i32], [3 x i32]* %imin550, i32 0, i64 0
  %409 = load i32, i32* %arrayidx551, align 4
  %sub552 = sub nsw i32 %407, %409
  %add553 = add nsw i32 %sub552, 1
  br label %cond.end.555

cond.false.554:                                   ; preds = %cond.end.536
  br label %cond.end.555

cond.end.555:                                     ; preds = %cond.false.554, %cond.true.547
  %cond556 = phi i32 [ %add553, %cond.true.547 ], [ 0, %cond.false.554 ]
  %mul557 = mul nsw i32 %add539, %cond556
  %add558 = add nsw i32 %389, %mul557
  %idx.ext559 = sext i32 %add558 to i64
  %add.ptr560 = getelementptr inbounds double, double* %387, i64 %idx.ext559
  store double* %add.ptr560, double** %ep1, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.561

for.cond.561:                                     ; preds = %for.inc.940, %cond.end.555
  %410 = load i32, i32* %j, align 4
  %411 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %compute_box_a, align 8
  %size562 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %411, i32 0, i32 1
  %412 = load i32, i32* %size562, align 4
  %cmp563 = icmp slt i32 %410, %412
  br i1 %cmp563, label %for.body.564, label %for.end.942

for.body.564:                                     ; preds = %for.cond.561
  %413 = load i32, i32* %j, align 4
  %idxprom565 = sext i32 %413 to i64
  %414 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %compute_box_a, align 8
  %boxes566 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %414, i32 0, i32 0
  %415 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes566, align 8
  %arrayidx567 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %415, i64 %idxprom565
  store %struct.hypre_Box_struct* %arrayidx567, %struct.hypre_Box_struct** %compute_box, align 8
  %416 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %compute_box, align 8
  %imin568 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %416, i32 0, i32 0
  %arrayidx569 = getelementptr inbounds [3 x i32], [3 x i32]* %imin568, i32 0, i64 0
  %417 = load i32, i32* %arrayidx569, align 4
  %arrayidx570 = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i64 0
  store i32 %417, i32* %arrayidx570, align 4
  %418 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %compute_box, align 8
  %imin571 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %418, i32 0, i32 0
  %arrayidx572 = getelementptr inbounds [3 x i32], [3 x i32]* %imin571, i32 0, i64 1
  %419 = load i32, i32* %arrayidx572, align 4
  %arrayidx573 = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i64 1
  store i32 %419, i32* %arrayidx573, align 4
  %420 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %compute_box, align 8
  %imin574 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %420, i32 0, i32 0
  %arrayidx575 = getelementptr inbounds [3 x i32], [3 x i32]* %imin574, i32 0, i64 2
  %421 = load i32, i32* %arrayidx575, align 4
  %arrayidx576 = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i64 2
  store i32 %421, i32* %arrayidx576, align 4
  %arraydecay577 = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i32 0
  %422 = load i32*, i32** %findex, align 8
  %423 = load i32*, i32** %stride, align 8
  %arraydecay578 = getelementptr inbounds [3 x i32], [3 x i32]* %startc, i32 0, i32 0
  %call579 = call i32 @hypre_StructMapFineToCoarse(i32* %arraydecay577, i32* %422, i32* %423, i32* %arraydecay578)
  %424 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %compute_box, align 8
  %425 = load i32*, i32** %stride, align 8
  %arraydecay580 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i32 0
  %call581 = call i32 @hypre_BoxGetStrideSize(%struct.hypre_Box_struct* %424, i32* %425, i32* %arraydecay580)
  %arrayidx583 = getelementptr inbounds [3 x i32], [3 x i32]* %startc, i32 0, i64 0
  %426 = load i32, i32* %arrayidx583, align 4
  %427 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %P_dbox, align 8
  %imin584 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %427, i32 0, i32 0
  %arrayidx585 = getelementptr inbounds [3 x i32], [3 x i32]* %imin584, i32 0, i64 0
  %428 = load i32, i32* %arrayidx585, align 4
  %sub586 = sub nsw i32 %426, %428
  %arrayidx587 = getelementptr inbounds [3 x i32], [3 x i32]* %startc, i32 0, i64 1
  %429 = load i32, i32* %arrayidx587, align 4
  %430 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %P_dbox, align 8
  %imin588 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %430, i32 0, i32 0
  %arrayidx589 = getelementptr inbounds [3 x i32], [3 x i32]* %imin588, i32 0, i64 1
  %431 = load i32, i32* %arrayidx589, align 4
  %sub590 = sub nsw i32 %429, %431
  %arrayidx591 = getelementptr inbounds [3 x i32], [3 x i32]* %startc, i32 0, i64 2
  %432 = load i32, i32* %arrayidx591, align 4
  %433 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %P_dbox, align 8
  %imin592 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %433, i32 0, i32 0
  %arrayidx593 = getelementptr inbounds [3 x i32], [3 x i32]* %imin592, i32 0, i64 2
  %434 = load i32, i32* %arrayidx593, align 4
  %sub594 = sub nsw i32 %432, %434
  %435 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %P_dbox, align 8
  %imax595 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %435, i32 0, i32 1
  %arrayidx596 = getelementptr inbounds [3 x i32], [3 x i32]* %imax595, i32 0, i64 1
  %436 = load i32, i32* %arrayidx596, align 4
  %437 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %P_dbox, align 8
  %imin597 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %437, i32 0, i32 0
  %arrayidx598 = getelementptr inbounds [3 x i32], [3 x i32]* %imin597, i32 0, i64 1
  %438 = load i32, i32* %arrayidx598, align 4
  %sub599 = sub nsw i32 %436, %438
  %add600 = add nsw i32 %sub599, 1
  %cmp601 = icmp slt i32 0, %add600
  br i1 %cmp601, label %cond.true.602, label %cond.false.609

cond.true.602:                                    ; preds = %for.body.564
  %439 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %P_dbox, align 8
  %imax603 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %439, i32 0, i32 1
  %arrayidx604 = getelementptr inbounds [3 x i32], [3 x i32]* %imax603, i32 0, i64 1
  %440 = load i32, i32* %arrayidx604, align 4
  %441 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %P_dbox, align 8
  %imin605 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %441, i32 0, i32 0
  %arrayidx606 = getelementptr inbounds [3 x i32], [3 x i32]* %imin605, i32 0, i64 1
  %442 = load i32, i32* %arrayidx606, align 4
  %sub607 = sub nsw i32 %440, %442
  %add608 = add nsw i32 %sub607, 1
  br label %cond.end.610

cond.false.609:                                   ; preds = %for.body.564
  br label %cond.end.610

cond.end.610:                                     ; preds = %cond.false.609, %cond.true.602
  %cond611 = phi i32 [ %add608, %cond.true.602 ], [ 0, %cond.false.609 ]
  %mul612 = mul nsw i32 %sub594, %cond611
  %add613 = add nsw i32 %sub590, %mul612
  %443 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %P_dbox, align 8
  %imax614 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %443, i32 0, i32 1
  %arrayidx615 = getelementptr inbounds [3 x i32], [3 x i32]* %imax614, i32 0, i64 0
  %444 = load i32, i32* %arrayidx615, align 4
  %445 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %P_dbox, align 8
  %imin616 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %445, i32 0, i32 0
  %arrayidx617 = getelementptr inbounds [3 x i32], [3 x i32]* %imin616, i32 0, i64 0
  %446 = load i32, i32* %arrayidx617, align 4
  %sub618 = sub nsw i32 %444, %446
  %add619 = add nsw i32 %sub618, 1
  %cmp620 = icmp slt i32 0, %add619
  br i1 %cmp620, label %cond.true.621, label %cond.false.628

cond.true.621:                                    ; preds = %cond.end.610
  %447 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %P_dbox, align 8
  %imax622 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %447, i32 0, i32 1
  %arrayidx623 = getelementptr inbounds [3 x i32], [3 x i32]* %imax622, i32 0, i64 0
  %448 = load i32, i32* %arrayidx623, align 4
  %449 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %P_dbox, align 8
  %imin624 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %449, i32 0, i32 0
  %arrayidx625 = getelementptr inbounds [3 x i32], [3 x i32]* %imin624, i32 0, i64 0
  %450 = load i32, i32* %arrayidx625, align 4
  %sub626 = sub nsw i32 %448, %450
  %add627 = add nsw i32 %sub626, 1
  br label %cond.end.629

cond.false.628:                                   ; preds = %cond.end.610
  br label %cond.end.629

cond.end.629:                                     ; preds = %cond.false.628, %cond.true.621
  %cond630 = phi i32 [ %add627, %cond.true.621 ], [ 0, %cond.false.628 ]
  %mul631 = mul nsw i32 %add613, %cond630
  %add632 = add nsw i32 %sub586, %mul631
  store i32 %add632, i32* %hypre__i1start582, align 4
  %arrayidx634 = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i64 0
  %451 = load i32, i32* %arrayidx634, align 4
  %452 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imin635 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %452, i32 0, i32 0
  %arrayidx636 = getelementptr inbounds [3 x i32], [3 x i32]* %imin635, i32 0, i64 0
  %453 = load i32, i32* %arrayidx636, align 4
  %sub637 = sub nsw i32 %451, %453
  %arrayidx638 = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i64 1
  %454 = load i32, i32* %arrayidx638, align 4
  %455 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imin639 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %455, i32 0, i32 0
  %arrayidx640 = getelementptr inbounds [3 x i32], [3 x i32]* %imin639, i32 0, i64 1
  %456 = load i32, i32* %arrayidx640, align 4
  %sub641 = sub nsw i32 %454, %456
  %arrayidx642 = getelementptr inbounds [3 x i32], [3 x i32]* %start, i32 0, i64 2
  %457 = load i32, i32* %arrayidx642, align 4
  %458 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imin643 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %458, i32 0, i32 0
  %arrayidx644 = getelementptr inbounds [3 x i32], [3 x i32]* %imin643, i32 0, i64 2
  %459 = load i32, i32* %arrayidx644, align 4
  %sub645 = sub nsw i32 %457, %459
  %460 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imax646 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %460, i32 0, i32 1
  %arrayidx647 = getelementptr inbounds [3 x i32], [3 x i32]* %imax646, i32 0, i64 1
  %461 = load i32, i32* %arrayidx647, align 4
  %462 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imin648 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %462, i32 0, i32 0
  %arrayidx649 = getelementptr inbounds [3 x i32], [3 x i32]* %imin648, i32 0, i64 1
  %463 = load i32, i32* %arrayidx649, align 4
  %sub650 = sub nsw i32 %461, %463
  %add651 = add nsw i32 %sub650, 1
  %cmp652 = icmp slt i32 0, %add651
  br i1 %cmp652, label %cond.true.653, label %cond.false.660

cond.true.653:                                    ; preds = %cond.end.629
  %464 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imax654 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %464, i32 0, i32 1
  %arrayidx655 = getelementptr inbounds [3 x i32], [3 x i32]* %imax654, i32 0, i64 1
  %465 = load i32, i32* %arrayidx655, align 4
  %466 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imin656 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %466, i32 0, i32 0
  %arrayidx657 = getelementptr inbounds [3 x i32], [3 x i32]* %imin656, i32 0, i64 1
  %467 = load i32, i32* %arrayidx657, align 4
  %sub658 = sub nsw i32 %465, %467
  %add659 = add nsw i32 %sub658, 1
  br label %cond.end.661

cond.false.660:                                   ; preds = %cond.end.629
  br label %cond.end.661

cond.end.661:                                     ; preds = %cond.false.660, %cond.true.653
  %cond662 = phi i32 [ %add659, %cond.true.653 ], [ 0, %cond.false.660 ]
  %mul663 = mul nsw i32 %sub645, %cond662
  %add664 = add nsw i32 %sub641, %mul663
  %468 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imax665 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %468, i32 0, i32 1
  %arrayidx666 = getelementptr inbounds [3 x i32], [3 x i32]* %imax665, i32 0, i64 0
  %469 = load i32, i32* %arrayidx666, align 4
  %470 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imin667 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %470, i32 0, i32 0
  %arrayidx668 = getelementptr inbounds [3 x i32], [3 x i32]* %imin667, i32 0, i64 0
  %471 = load i32, i32* %arrayidx668, align 4
  %sub669 = sub nsw i32 %469, %471
  %add670 = add nsw i32 %sub669, 1
  %cmp671 = icmp slt i32 0, %add670
  br i1 %cmp671, label %cond.true.672, label %cond.false.679

cond.true.672:                                    ; preds = %cond.end.661
  %472 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imax673 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %472, i32 0, i32 1
  %arrayidx674 = getelementptr inbounds [3 x i32], [3 x i32]* %imax673, i32 0, i64 0
  %473 = load i32, i32* %arrayidx674, align 4
  %474 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imin675 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %474, i32 0, i32 0
  %arrayidx676 = getelementptr inbounds [3 x i32], [3 x i32]* %imin675, i32 0, i64 0
  %475 = load i32, i32* %arrayidx676, align 4
  %sub677 = sub nsw i32 %473, %475
  %add678 = add nsw i32 %sub677, 1
  br label %cond.end.680

cond.false.679:                                   ; preds = %cond.end.661
  br label %cond.end.680

cond.end.680:                                     ; preds = %cond.false.679, %cond.true.672
  %cond681 = phi i32 [ %add678, %cond.true.672 ], [ 0, %cond.false.679 ]
  %mul682 = mul nsw i32 %add664, %cond681
  %add683 = add nsw i32 %sub637, %mul682
  store i32 %add683, i32* %hypre__i2start633, align 4
  %arrayidx685 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 0
  %476 = load i32, i32* %arrayidx685, align 4
  store i32 %476, i32* %hypre__sx1684, align 4
  %arrayidx687 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 1
  %477 = load i32, i32* %arrayidx687, align 4
  %478 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %P_dbox, align 8
  %imax688 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %478, i32 0, i32 1
  %arrayidx689 = getelementptr inbounds [3 x i32], [3 x i32]* %imax688, i32 0, i64 0
  %479 = load i32, i32* %arrayidx689, align 4
  %480 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %P_dbox, align 8
  %imin690 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %480, i32 0, i32 0
  %arrayidx691 = getelementptr inbounds [3 x i32], [3 x i32]* %imin690, i32 0, i64 0
  %481 = load i32, i32* %arrayidx691, align 4
  %sub692 = sub nsw i32 %479, %481
  %add693 = add nsw i32 %sub692, 1
  %cmp694 = icmp slt i32 0, %add693
  br i1 %cmp694, label %cond.true.695, label %cond.false.702

cond.true.695:                                    ; preds = %cond.end.680
  %482 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %P_dbox, align 8
  %imax696 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %482, i32 0, i32 1
  %arrayidx697 = getelementptr inbounds [3 x i32], [3 x i32]* %imax696, i32 0, i64 0
  %483 = load i32, i32* %arrayidx697, align 4
  %484 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %P_dbox, align 8
  %imin698 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %484, i32 0, i32 0
  %arrayidx699 = getelementptr inbounds [3 x i32], [3 x i32]* %imin698, i32 0, i64 0
  %485 = load i32, i32* %arrayidx699, align 4
  %sub700 = sub nsw i32 %483, %485
  %add701 = add nsw i32 %sub700, 1
  br label %cond.end.703

cond.false.702:                                   ; preds = %cond.end.680
  br label %cond.end.703

cond.end.703:                                     ; preds = %cond.false.702, %cond.true.695
  %cond704 = phi i32 [ %add701, %cond.true.695 ], [ 0, %cond.false.702 ]
  %mul705 = mul nsw i32 %477, %cond704
  store i32 %mul705, i32* %hypre__sy1686, align 4
  %arrayidx707 = getelementptr inbounds [3 x i32], [3 x i32]* %stridec, i32 0, i64 2
  %486 = load i32, i32* %arrayidx707, align 4
  %487 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %P_dbox, align 8
  %imax708 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %487, i32 0, i32 1
  %arrayidx709 = getelementptr inbounds [3 x i32], [3 x i32]* %imax708, i32 0, i64 0
  %488 = load i32, i32* %arrayidx709, align 4
  %489 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %P_dbox, align 8
  %imin710 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %489, i32 0, i32 0
  %arrayidx711 = getelementptr inbounds [3 x i32], [3 x i32]* %imin710, i32 0, i64 0
  %490 = load i32, i32* %arrayidx711, align 4
  %sub712 = sub nsw i32 %488, %490
  %add713 = add nsw i32 %sub712, 1
  %cmp714 = icmp slt i32 0, %add713
  br i1 %cmp714, label %cond.true.715, label %cond.false.722

cond.true.715:                                    ; preds = %cond.end.703
  %491 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %P_dbox, align 8
  %imax716 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %491, i32 0, i32 1
  %arrayidx717 = getelementptr inbounds [3 x i32], [3 x i32]* %imax716, i32 0, i64 0
  %492 = load i32, i32* %arrayidx717, align 4
  %493 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %P_dbox, align 8
  %imin718 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %493, i32 0, i32 0
  %arrayidx719 = getelementptr inbounds [3 x i32], [3 x i32]* %imin718, i32 0, i64 0
  %494 = load i32, i32* %arrayidx719, align 4
  %sub720 = sub nsw i32 %492, %494
  %add721 = add nsw i32 %sub720, 1
  br label %cond.end.723

cond.false.722:                                   ; preds = %cond.end.703
  br label %cond.end.723

cond.end.723:                                     ; preds = %cond.false.722, %cond.true.715
  %cond724 = phi i32 [ %add721, %cond.true.715 ], [ 0, %cond.false.722 ]
  %mul725 = mul nsw i32 %486, %cond724
  %495 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %P_dbox, align 8
  %imax726 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %495, i32 0, i32 1
  %arrayidx727 = getelementptr inbounds [3 x i32], [3 x i32]* %imax726, i32 0, i64 1
  %496 = load i32, i32* %arrayidx727, align 4
  %497 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %P_dbox, align 8
  %imin728 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %497, i32 0, i32 0
  %arrayidx729 = getelementptr inbounds [3 x i32], [3 x i32]* %imin728, i32 0, i64 1
  %498 = load i32, i32* %arrayidx729, align 4
  %sub730 = sub nsw i32 %496, %498
  %add731 = add nsw i32 %sub730, 1
  %cmp732 = icmp slt i32 0, %add731
  br i1 %cmp732, label %cond.true.733, label %cond.false.740

cond.true.733:                                    ; preds = %cond.end.723
  %499 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %P_dbox, align 8
  %imax734 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %499, i32 0, i32 1
  %arrayidx735 = getelementptr inbounds [3 x i32], [3 x i32]* %imax734, i32 0, i64 1
  %500 = load i32, i32* %arrayidx735, align 4
  %501 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %P_dbox, align 8
  %imin736 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %501, i32 0, i32 0
  %arrayidx737 = getelementptr inbounds [3 x i32], [3 x i32]* %imin736, i32 0, i64 1
  %502 = load i32, i32* %arrayidx737, align 4
  %sub738 = sub nsw i32 %500, %502
  %add739 = add nsw i32 %sub738, 1
  br label %cond.end.741

cond.false.740:                                   ; preds = %cond.end.723
  br label %cond.end.741

cond.end.741:                                     ; preds = %cond.false.740, %cond.true.733
  %cond742 = phi i32 [ %add739, %cond.true.733 ], [ 0, %cond.false.740 ]
  %mul743 = mul nsw i32 %mul725, %cond742
  store i32 %mul743, i32* %hypre__sz1706, align 4
  %503 = load i32*, i32** %stride, align 8
  %arrayidx745 = getelementptr inbounds i32, i32* %503, i64 0
  %504 = load i32, i32* %arrayidx745, align 4
  store i32 %504, i32* %hypre__sx2744, align 4
  %505 = load i32*, i32** %stride, align 8
  %arrayidx747 = getelementptr inbounds i32, i32* %505, i64 1
  %506 = load i32, i32* %arrayidx747, align 4
  %507 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imax748 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %507, i32 0, i32 1
  %arrayidx749 = getelementptr inbounds [3 x i32], [3 x i32]* %imax748, i32 0, i64 0
  %508 = load i32, i32* %arrayidx749, align 4
  %509 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imin750 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %509, i32 0, i32 0
  %arrayidx751 = getelementptr inbounds [3 x i32], [3 x i32]* %imin750, i32 0, i64 0
  %510 = load i32, i32* %arrayidx751, align 4
  %sub752 = sub nsw i32 %508, %510
  %add753 = add nsw i32 %sub752, 1
  %cmp754 = icmp slt i32 0, %add753
  br i1 %cmp754, label %cond.true.755, label %cond.false.762

cond.true.755:                                    ; preds = %cond.end.741
  %511 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imax756 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %511, i32 0, i32 1
  %arrayidx757 = getelementptr inbounds [3 x i32], [3 x i32]* %imax756, i32 0, i64 0
  %512 = load i32, i32* %arrayidx757, align 4
  %513 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imin758 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %513, i32 0, i32 0
  %arrayidx759 = getelementptr inbounds [3 x i32], [3 x i32]* %imin758, i32 0, i64 0
  %514 = load i32, i32* %arrayidx759, align 4
  %sub760 = sub nsw i32 %512, %514
  %add761 = add nsw i32 %sub760, 1
  br label %cond.end.763

cond.false.762:                                   ; preds = %cond.end.741
  br label %cond.end.763

cond.end.763:                                     ; preds = %cond.false.762, %cond.true.755
  %cond764 = phi i32 [ %add761, %cond.true.755 ], [ 0, %cond.false.762 ]
  %mul765 = mul nsw i32 %506, %cond764
  store i32 %mul765, i32* %hypre__sy2746, align 4
  %515 = load i32*, i32** %stride, align 8
  %arrayidx767 = getelementptr inbounds i32, i32* %515, i64 2
  %516 = load i32, i32* %arrayidx767, align 4
  %517 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imax768 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %517, i32 0, i32 1
  %arrayidx769 = getelementptr inbounds [3 x i32], [3 x i32]* %imax768, i32 0, i64 0
  %518 = load i32, i32* %arrayidx769, align 4
  %519 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imin770 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %519, i32 0, i32 0
  %arrayidx771 = getelementptr inbounds [3 x i32], [3 x i32]* %imin770, i32 0, i64 0
  %520 = load i32, i32* %arrayidx771, align 4
  %sub772 = sub nsw i32 %518, %520
  %add773 = add nsw i32 %sub772, 1
  %cmp774 = icmp slt i32 0, %add773
  br i1 %cmp774, label %cond.true.775, label %cond.false.782

cond.true.775:                                    ; preds = %cond.end.763
  %521 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imax776 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %521, i32 0, i32 1
  %arrayidx777 = getelementptr inbounds [3 x i32], [3 x i32]* %imax776, i32 0, i64 0
  %522 = load i32, i32* %arrayidx777, align 4
  %523 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imin778 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %523, i32 0, i32 0
  %arrayidx779 = getelementptr inbounds [3 x i32], [3 x i32]* %imin778, i32 0, i64 0
  %524 = load i32, i32* %arrayidx779, align 4
  %sub780 = sub nsw i32 %522, %524
  %add781 = add nsw i32 %sub780, 1
  br label %cond.end.783

cond.false.782:                                   ; preds = %cond.end.763
  br label %cond.end.783

cond.end.783:                                     ; preds = %cond.false.782, %cond.true.775
  %cond784 = phi i32 [ %add781, %cond.true.775 ], [ 0, %cond.false.782 ]
  %mul785 = mul nsw i32 %516, %cond784
  %525 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imax786 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %525, i32 0, i32 1
  %arrayidx787 = getelementptr inbounds [3 x i32], [3 x i32]* %imax786, i32 0, i64 1
  %526 = load i32, i32* %arrayidx787, align 4
  %527 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imin788 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %527, i32 0, i32 0
  %arrayidx789 = getelementptr inbounds [3 x i32], [3 x i32]* %imin788, i32 0, i64 1
  %528 = load i32, i32* %arrayidx789, align 4
  %sub790 = sub nsw i32 %526, %528
  %add791 = add nsw i32 %sub790, 1
  %cmp792 = icmp slt i32 0, %add791
  br i1 %cmp792, label %cond.true.793, label %cond.false.800

cond.true.793:                                    ; preds = %cond.end.783
  %529 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imax794 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %529, i32 0, i32 1
  %arrayidx795 = getelementptr inbounds [3 x i32], [3 x i32]* %imax794, i32 0, i64 1
  %530 = load i32, i32* %arrayidx795, align 4
  %531 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %e_dbox, align 8
  %imin796 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %531, i32 0, i32 0
  %arrayidx797 = getelementptr inbounds [3 x i32], [3 x i32]* %imin796, i32 0, i64 1
  %532 = load i32, i32* %arrayidx797, align 4
  %sub798 = sub nsw i32 %530, %532
  %add799 = add nsw i32 %sub798, 1
  br label %cond.end.801

cond.false.800:                                   ; preds = %cond.end.783
  br label %cond.end.801

cond.end.801:                                     ; preds = %cond.false.800, %cond.true.793
  %cond802 = phi i32 [ %add799, %cond.true.793 ], [ 0, %cond.false.800 ]
  %mul803 = mul nsw i32 %mul785, %cond802
  store i32 %mul803, i32* %hypre__sz2766, align 4
  %arrayidx805 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 0
  %533 = load i32, i32* %arrayidx805, align 4
  store i32 %533, i32* %hypre__nx804, align 4
  %arrayidx807 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 1
  %534 = load i32, i32* %arrayidx807, align 4
  store i32 %534, i32* %hypre__ny806, align 4
  %arrayidx809 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 2
  %535 = load i32, i32* %arrayidx809, align 4
  store i32 %535, i32* %hypre__nz808, align 4
  %536 = load i32, i32* %hypre__nx804, align 4
  store i32 %536, i32* %hypre__mx810, align 4
  %537 = load i32, i32* %hypre__ny806, align 4
  store i32 %537, i32* %hypre__my811, align 4
  %538 = load i32, i32* %hypre__nz808, align 4
  store i32 %538, i32* %hypre__mz812, align 4
  store i32 0, i32* %hypre__dir813, align 4
  %539 = load i32, i32* %hypre__nx804, align 4
  store i32 %539, i32* %hypre__max814, align 4
  %540 = load i32, i32* %hypre__ny806, align 4
  %541 = load i32, i32* %hypre__max814, align 4
  %cmp819 = icmp sgt i32 %540, %541
  br i1 %cmp819, label %if.then.820, label %if.end.821

if.then.820:                                      ; preds = %cond.end.801
  store i32 1, i32* %hypre__dir813, align 4
  %542 = load i32, i32* %hypre__ny806, align 4
  store i32 %542, i32* %hypre__max814, align 4
  br label %if.end.821

if.end.821:                                       ; preds = %if.then.820, %cond.end.801
  %543 = load i32, i32* %hypre__nz808, align 4
  %544 = load i32, i32* %hypre__max814, align 4
  %cmp822 = icmp sgt i32 %543, %544
  br i1 %cmp822, label %if.then.823, label %if.end.824

if.then.823:                                      ; preds = %if.end.821
  store i32 2, i32* %hypre__dir813, align 4
  %545 = load i32, i32* %hypre__nz808, align 4
  store i32 %545, i32* %hypre__max814, align 4
  br label %if.end.824

if.end.824:                                       ; preds = %if.then.823, %if.end.821
  store i32 1, i32* %hypre__num_blocks818, align 4
  %546 = load i32, i32* %hypre__max814, align 4
  %547 = load i32, i32* %hypre__num_blocks818, align 4
  %cmp825 = icmp slt i32 %546, %547
  br i1 %cmp825, label %if.then.826, label %if.end.827

if.then.826:                                      ; preds = %if.end.824
  %548 = load i32, i32* %hypre__max814, align 4
  store i32 %548, i32* %hypre__num_blocks818, align 4
  br label %if.end.827

if.end.827:                                       ; preds = %if.then.826, %if.end.824
  %549 = load i32, i32* %hypre__num_blocks818, align 4
  %cmp828 = icmp sgt i32 %549, 0
  br i1 %cmp828, label %if.then.829, label %if.end.832

if.then.829:                                      ; preds = %if.end.827
  %550 = load i32, i32* %hypre__max814, align 4
  %551 = load i32, i32* %hypre__num_blocks818, align 4
  %div830 = sdiv i32 %550, %551
  store i32 %div830, i32* %hypre__div815, align 4
  %552 = load i32, i32* %hypre__max814, align 4
  %553 = load i32, i32* %hypre__num_blocks818, align 4
  %rem831 = srem i32 %552, %553
  store i32 %rem831, i32* %hypre__mod816, align 4
  br label %if.end.832

if.end.832:                                       ; preds = %if.then.829, %if.end.827
  store i32 0, i32* %hypre__block817, align 4
  br label %for.cond.833

for.cond.833:                                     ; preds = %for.inc.937, %if.end.832
  %554 = load i32, i32* %hypre__block817, align 4
  %555 = load i32, i32* %hypre__num_blocks818, align 4
  %cmp834 = icmp slt i32 %554, %555
  br i1 %cmp834, label %for.body.835, label %for.end.939

for.body.835:                                     ; preds = %for.cond.833
  store i32 0, i32* %loopi, align 4
  store i32 0, i32* %loopj, align 4
  store i32 0, i32* %loopk, align 4
  %556 = load i32, i32* %hypre__mx810, align 4
  store i32 %556, i32* %hypre__nx804, align 4
  %557 = load i32, i32* %hypre__my811, align 4
  store i32 %557, i32* %hypre__ny806, align 4
  %558 = load i32, i32* %hypre__mz812, align 4
  store i32 %558, i32* %hypre__nz808, align 4
  %559 = load i32, i32* %hypre__num_blocks818, align 4
  %cmp836 = icmp sgt i32 %559, 1
  br i1 %cmp836, label %if.then.837, label %if.end.879

if.then.837:                                      ; preds = %for.body.835
  %560 = load i32, i32* %hypre__dir813, align 4
  %cmp838 = icmp eq i32 %560, 0
  br i1 %cmp838, label %if.then.839, label %if.else.850

if.then.839:                                      ; preds = %if.then.837
  %561 = load i32, i32* %hypre__block817, align 4
  %562 = load i32, i32* %hypre__div815, align 4
  %mul840 = mul nsw i32 %561, %562
  %563 = load i32, i32* %hypre__mod816, align 4
  %564 = load i32, i32* %hypre__block817, align 4
  %cmp841 = icmp slt i32 %563, %564
  br i1 %cmp841, label %cond.true.842, label %cond.false.843

cond.true.842:                                    ; preds = %if.then.839
  %565 = load i32, i32* %hypre__mod816, align 4
  br label %cond.end.844

cond.false.843:                                   ; preds = %if.then.839
  %566 = load i32, i32* %hypre__block817, align 4
  br label %cond.end.844

cond.end.844:                                     ; preds = %cond.false.843, %cond.true.842
  %cond845 = phi i32 [ %565, %cond.true.842 ], [ %566, %cond.false.843 ]
  %add846 = add nsw i32 %mul840, %cond845
  store i32 %add846, i32* %loopi, align 4
  %567 = load i32, i32* %hypre__div815, align 4
  %568 = load i32, i32* %hypre__mod816, align 4
  %569 = load i32, i32* %hypre__block817, align 4
  %cmp847 = icmp sgt i32 %568, %569
  %cond848 = select i1 %cmp847, i32 1, i32 0
  %add849 = add nsw i32 %567, %cond848
  store i32 %add849, i32* %hypre__nx804, align 4
  br label %if.end.878

if.else.850:                                      ; preds = %if.then.837
  %570 = load i32, i32* %hypre__dir813, align 4
  %cmp851 = icmp eq i32 %570, 1
  br i1 %cmp851, label %if.then.852, label %if.else.863

if.then.852:                                      ; preds = %if.else.850
  %571 = load i32, i32* %hypre__block817, align 4
  %572 = load i32, i32* %hypre__div815, align 4
  %mul853 = mul nsw i32 %571, %572
  %573 = load i32, i32* %hypre__mod816, align 4
  %574 = load i32, i32* %hypre__block817, align 4
  %cmp854 = icmp slt i32 %573, %574
  br i1 %cmp854, label %cond.true.855, label %cond.false.856

cond.true.855:                                    ; preds = %if.then.852
  %575 = load i32, i32* %hypre__mod816, align 4
  br label %cond.end.857

cond.false.856:                                   ; preds = %if.then.852
  %576 = load i32, i32* %hypre__block817, align 4
  br label %cond.end.857

cond.end.857:                                     ; preds = %cond.false.856, %cond.true.855
  %cond858 = phi i32 [ %575, %cond.true.855 ], [ %576, %cond.false.856 ]
  %add859 = add nsw i32 %mul853, %cond858
  store i32 %add859, i32* %loopj, align 4
  %577 = load i32, i32* %hypre__div815, align 4
  %578 = load i32, i32* %hypre__mod816, align 4
  %579 = load i32, i32* %hypre__block817, align 4
  %cmp860 = icmp sgt i32 %578, %579
  %cond861 = select i1 %cmp860, i32 1, i32 0
  %add862 = add nsw i32 %577, %cond861
  store i32 %add862, i32* %hypre__ny806, align 4
  br label %if.end.877

if.else.863:                                      ; preds = %if.else.850
  %580 = load i32, i32* %hypre__dir813, align 4
  %cmp864 = icmp eq i32 %580, 2
  br i1 %cmp864, label %if.then.865, label %if.end.876

if.then.865:                                      ; preds = %if.else.863
  %581 = load i32, i32* %hypre__block817, align 4
  %582 = load i32, i32* %hypre__div815, align 4
  %mul866 = mul nsw i32 %581, %582
  %583 = load i32, i32* %hypre__mod816, align 4
  %584 = load i32, i32* %hypre__block817, align 4
  %cmp867 = icmp slt i32 %583, %584
  br i1 %cmp867, label %cond.true.868, label %cond.false.869

cond.true.868:                                    ; preds = %if.then.865
  %585 = load i32, i32* %hypre__mod816, align 4
  br label %cond.end.870

cond.false.869:                                   ; preds = %if.then.865
  %586 = load i32, i32* %hypre__block817, align 4
  br label %cond.end.870

cond.end.870:                                     ; preds = %cond.false.869, %cond.true.868
  %cond871 = phi i32 [ %585, %cond.true.868 ], [ %586, %cond.false.869 ]
  %add872 = add nsw i32 %mul866, %cond871
  store i32 %add872, i32* %loopk, align 4
  %587 = load i32, i32* %hypre__div815, align 4
  %588 = load i32, i32* %hypre__mod816, align 4
  %589 = load i32, i32* %hypre__block817, align 4
  %cmp873 = icmp sgt i32 %588, %589
  %cond874 = select i1 %cmp873, i32 1, i32 0
  %add875 = add nsw i32 %587, %cond874
  store i32 %add875, i32* %hypre__nz808, align 4
  br label %if.end.876

if.end.876:                                       ; preds = %cond.end.870, %if.else.863
  br label %if.end.877

if.end.877:                                       ; preds = %if.end.876, %cond.end.857
  br label %if.end.878

if.end.878:                                       ; preds = %if.end.877, %cond.end.844
  br label %if.end.879

if.end.879:                                       ; preds = %if.end.878, %for.body.835
  %590 = load i32, i32* %hypre__i1start582, align 4
  %591 = load i32, i32* %loopi, align 4
  %592 = load i32, i32* %hypre__sx1684, align 4
  %mul880 = mul nsw i32 %591, %592
  %add881 = add nsw i32 %590, %mul880
  %593 = load i32, i32* %loopj, align 4
  %594 = load i32, i32* %hypre__sy1686, align 4
  %mul882 = mul nsw i32 %593, %594
  %add883 = add nsw i32 %add881, %mul882
  %595 = load i32, i32* %loopk, align 4
  %596 = load i32, i32* %hypre__sz1706, align 4
  %mul884 = mul nsw i32 %595, %596
  %add885 = add nsw i32 %add883, %mul884
  store i32 %add885, i32* %Pi, align 4
  %597 = load i32, i32* %hypre__i2start633, align 4
  %598 = load i32, i32* %loopi, align 4
  %599 = load i32, i32* %hypre__sx2744, align 4
  %mul886 = mul nsw i32 %598, %599
  %add887 = add nsw i32 %597, %mul886
  %600 = load i32, i32* %loopj, align 4
  %601 = load i32, i32* %hypre__sy2746, align 4
  %mul888 = mul nsw i32 %600, %601
  %add889 = add nsw i32 %add887, %mul888
  %602 = load i32, i32* %loopk, align 4
  %603 = load i32, i32* %hypre__sz2766, align 4
  %mul890 = mul nsw i32 %602, %603
  %add891 = add nsw i32 %add889, %mul890
  store i32 %add891, i32* %ei, align 4
  store i32 0, i32* %loopk, align 4
  br label %for.cond.892

for.cond.892:                                     ; preds = %for.inc.934, %if.end.879
  %604 = load i32, i32* %loopk, align 4
  %605 = load i32, i32* %hypre__nz808, align 4
  %cmp893 = icmp slt i32 %604, %605
  br i1 %cmp893, label %for.body.894, label %for.end.936

for.body.894:                                     ; preds = %for.cond.892
  store i32 0, i32* %loopj, align 4
  br label %for.cond.895

for.cond.895:                                     ; preds = %for.inc.925, %for.body.894
  %606 = load i32, i32* %loopj, align 4
  %607 = load i32, i32* %hypre__ny806, align 4
  %cmp896 = icmp slt i32 %606, %607
  br i1 %cmp896, label %for.body.897, label %for.end.927

for.body.897:                                     ; preds = %for.cond.895
  store i32 0, i32* %loopi, align 4
  br label %for.cond.898

for.cond.898:                                     ; preds = %for.inc.916, %for.body.897
  %608 = load i32, i32* %loopi, align 4
  %609 = load i32, i32* %hypre__nx804, align 4
  %cmp899 = icmp slt i32 %608, %609
  br i1 %cmp899, label %for.body.900, label %for.end.918

for.body.900:                                     ; preds = %for.cond.898
  %610 = load i32, i32* %Pi, align 4
  %idxprom901 = sext i32 %610 to i64
  %611 = load double*, double** %Pp0, align 8
  %arrayidx902 = getelementptr inbounds double, double* %611, i64 %idxprom901
  %612 = load double, double* %arrayidx902, align 8
  %613 = load i32, i32* %ei, align 4
  %idxprom903 = sext i32 %613 to i64
  %614 = load double*, double** %ep0, align 8
  %arrayidx904 = getelementptr inbounds double, double* %614, i64 %idxprom903
  %615 = load double, double* %arrayidx904, align 8
  %mul905 = fmul double %612, %615
  %616 = load i32, i32* %Pi, align 4
  %idxprom906 = sext i32 %616 to i64
  %617 = load double*, double** %Pp1, align 8
  %arrayidx907 = getelementptr inbounds double, double* %617, i64 %idxprom906
  %618 = load double, double* %arrayidx907, align 8
  %619 = load i32, i32* %ei, align 4
  %idxprom908 = sext i32 %619 to i64
  %620 = load double*, double** %ep1, align 8
  %arrayidx909 = getelementptr inbounds double, double* %620, i64 %idxprom908
  %621 = load double, double* %arrayidx909, align 8
  %mul910 = fmul double %618, %621
  %add911 = fadd double %mul905, %mul910
  %622 = load i32, i32* %ei, align 4
  %idxprom912 = sext i32 %622 to i64
  %623 = load double*, double** %ep, align 8
  %arrayidx913 = getelementptr inbounds double, double* %623, i64 %idxprom912
  store double %add911, double* %arrayidx913, align 8
  %624 = load i32, i32* %hypre__sx1684, align 4
  %625 = load i32, i32* %Pi, align 4
  %add914 = add nsw i32 %625, %624
  store i32 %add914, i32* %Pi, align 4
  %626 = load i32, i32* %hypre__sx2744, align 4
  %627 = load i32, i32* %ei, align 4
  %add915 = add nsw i32 %627, %626
  store i32 %add915, i32* %ei, align 4
  br label %for.inc.916

for.inc.916:                                      ; preds = %for.body.900
  %628 = load i32, i32* %loopi, align 4
  %inc917 = add nsw i32 %628, 1
  store i32 %inc917, i32* %loopi, align 4
  br label %for.cond.898

for.end.918:                                      ; preds = %for.cond.898
  %629 = load i32, i32* %hypre__sy1686, align 4
  %630 = load i32, i32* %hypre__nx804, align 4
  %631 = load i32, i32* %hypre__sx1684, align 4
  %mul919 = mul nsw i32 %630, %631
  %sub920 = sub nsw i32 %629, %mul919
  %632 = load i32, i32* %Pi, align 4
  %add921 = add nsw i32 %632, %sub920
  store i32 %add921, i32* %Pi, align 4
  %633 = load i32, i32* %hypre__sy2746, align 4
  %634 = load i32, i32* %hypre__nx804, align 4
  %635 = load i32, i32* %hypre__sx2744, align 4
  %mul922 = mul nsw i32 %634, %635
  %sub923 = sub nsw i32 %633, %mul922
  %636 = load i32, i32* %ei, align 4
  %add924 = add nsw i32 %636, %sub923
  store i32 %add924, i32* %ei, align 4
  br label %for.inc.925

for.inc.925:                                      ; preds = %for.end.918
  %637 = load i32, i32* %loopj, align 4
  %inc926 = add nsw i32 %637, 1
  store i32 %inc926, i32* %loopj, align 4
  br label %for.cond.895

for.end.927:                                      ; preds = %for.cond.895
  %638 = load i32, i32* %hypre__sz1706, align 4
  %639 = load i32, i32* %hypre__ny806, align 4
  %640 = load i32, i32* %hypre__sy1686, align 4
  %mul928 = mul nsw i32 %639, %640
  %sub929 = sub nsw i32 %638, %mul928
  %641 = load i32, i32* %Pi, align 4
  %add930 = add nsw i32 %641, %sub929
  store i32 %add930, i32* %Pi, align 4
  %642 = load i32, i32* %hypre__sz2766, align 4
  %643 = load i32, i32* %hypre__ny806, align 4
  %644 = load i32, i32* %hypre__sy2746, align 4
  %mul931 = mul nsw i32 %643, %644
  %sub932 = sub nsw i32 %642, %mul931
  %645 = load i32, i32* %ei, align 4
  %add933 = add nsw i32 %645, %sub932
  store i32 %add933, i32* %ei, align 4
  br label %for.inc.934

for.inc.934:                                      ; preds = %for.end.927
  %646 = load i32, i32* %loopk, align 4
  %inc935 = add nsw i32 %646, 1
  store i32 %inc935, i32* %loopk, align 4
  br label %for.cond.892

for.end.936:                                      ; preds = %for.cond.892
  br label %for.inc.937

for.inc.937:                                      ; preds = %for.end.936
  %647 = load i32, i32* %hypre__block817, align 4
  %inc938 = add nsw i32 %647, 1
  store i32 %inc938, i32* %hypre__block817, align 4
  br label %for.cond.833

for.end.939:                                      ; preds = %for.cond.833
  br label %for.inc.940

for.inc.940:                                      ; preds = %for.end.939
  %648 = load i32, i32* %j, align 4
  %inc941 = add nsw i32 %648, 1
  store i32 %inc941, i32* %j, align 4
  br label %for.cond.561

for.end.942:                                      ; preds = %for.cond.561
  br label %for.inc.943

for.inc.943:                                      ; preds = %for.end.942
  %649 = load i32, i32* %fi, align 4
  %inc944 = add nsw i32 %649, 1
  store i32 %inc944, i32* %fi, align 4
  br label %for.cond.372

for.end.945:                                      ; preds = %for.cond.372
  br label %for.inc.946

for.inc.946:                                      ; preds = %for.end.945
  %650 = load i32, i32* %compute_i, align 4
  %inc947 = add nsw i32 %650, 1
  store i32 %inc947, i32* %compute_i, align 4
  br label %for.cond.365

for.end.948:                                      ; preds = %for.cond.365
  %651 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %xc.addr, align 8
  %global_size = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %651, i32 0, i32 8
  %652 = load i32, i32* %global_size, align 4
  %mul949 = mul nsw i32 3, %652
  %call950 = call i32 @hypre_IncFLOPCount(i32 %mul949)
  %653 = load %struct.hypre_SemiInterpData*, %struct.hypre_SemiInterpData** %interp_data, align 8
  %time_index951 = getelementptr inbounds %struct.hypre_SemiInterpData, %struct.hypre_SemiInterpData* %653, i32 0, i32 6
  %654 = load i32, i32* %time_index951, align 4
  %call952 = call i32 @hypre_EndTiming(i32 %654)
  %655 = load i32, i32* %ierr, align 4
  ret i32 %655
}

declare i32 @hypre_BeginTiming(i32) #1

declare i32 @hypre_StructMapCoarseToFine(i32*, i32*, i32*, i32*) #1

declare i32 @hypre_BoxGetSize(%struct.hypre_Box_struct*, i32*) #1

declare i32 @hypre_InitializeIndtComputations(%struct.hypre_ComputePkg_struct*, double*, %struct.hypre_CommHandle_struct**) #1

declare i32 @hypre_FinalizeIndtComputations(%struct.hypre_CommHandle_struct*) #1

declare i32 @hypre_StructMapFineToCoarse(i32*, i32*, i32*, i32*) #1

declare i32 @hypre_BoxGetStrideSize(%struct.hypre_Box_struct*, i32*, i32*) #1

declare i32 @hypre_IncFLOPCount(i32) #1

declare i32 @hypre_EndTiming(i32) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_SemiInterpDestroy(i8* %interp_vdata) #0 {
entry:
  %interp_vdata.addr = alloca i8*, align 8
  %ierr = alloca i32, align 4
  %interp_data = alloca %struct.hypre_SemiInterpData*, align 8
  store i8* %interp_vdata, i8** %interp_vdata.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load i8*, i8** %interp_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_SemiInterpData*
  store %struct.hypre_SemiInterpData* %1, %struct.hypre_SemiInterpData** %interp_data, align 8
  %2 = load %struct.hypre_SemiInterpData*, %struct.hypre_SemiInterpData** %interp_data, align 8
  %tobool = icmp ne %struct.hypre_SemiInterpData* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.hypre_SemiInterpData*, %struct.hypre_SemiInterpData** %interp_data, align 8
  %P = getelementptr inbounds %struct.hypre_SemiInterpData, %struct.hypre_SemiInterpData* %3, i32 0, i32 0
  %4 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %P, align 8
  %call = call i32 @hypre_StructMatrixDestroy(%struct.hypre_StructMatrix_struct* %4)
  %5 = load %struct.hypre_SemiInterpData*, %struct.hypre_SemiInterpData** %interp_data, align 8
  %compute_pkg = getelementptr inbounds %struct.hypre_SemiInterpData, %struct.hypre_SemiInterpData* %5, i32 0, i32 2
  %6 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %compute_pkg, align 8
  %call1 = call i32 @hypre_ComputePkgDestroy(%struct.hypre_ComputePkg_struct* %6)
  %7 = load %struct.hypre_SemiInterpData*, %struct.hypre_SemiInterpData** %interp_data, align 8
  %time_index = getelementptr inbounds %struct.hypre_SemiInterpData, %struct.hypre_SemiInterpData* %7, i32 0, i32 6
  %8 = load i32, i32* %time_index, align 4
  %call2 = call i32 @hypre_FinalizeTiming(i32 %8)
  %9 = load %struct.hypre_SemiInterpData*, %struct.hypre_SemiInterpData** %interp_data, align 8
  %10 = bitcast %struct.hypre_SemiInterpData* %9 to i8*
  call void @hypre_Free(i8* %10)
  store %struct.hypre_SemiInterpData* null, %struct.hypre_SemiInterpData** %interp_data, align 8
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
