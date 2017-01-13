; ModuleID = './MultiSource.Benchmarks.ASCI_Purple/13.SMG2000.struct_matvec.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hypre_StructMatvecData = type { %struct.hypre_StructMatrix_struct*, %struct.hypre_StructVector_struct*, %struct.hypre_ComputePkg_struct* }
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

; Function Attrs: nounwind uwtable
define i8* @hypre_StructMatvecCreate() #0 {
entry:
  %matvec_data = alloca %struct.hypre_StructMatvecData*, align 8
  %call = call i8* @hypre_CAlloc(i32 1, i32 24)
  %0 = bitcast i8* %call to %struct.hypre_StructMatvecData*
  store %struct.hypre_StructMatvecData* %0, %struct.hypre_StructMatvecData** %matvec_data, align 8
  %1 = load %struct.hypre_StructMatvecData*, %struct.hypre_StructMatvecData** %matvec_data, align 8
  %2 = bitcast %struct.hypre_StructMatvecData* %1 to i8*
  ret i8* %2
}

declare i8* @hypre_CAlloc(i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_StructMatvecSetup(i8* %matvec_vdata, %struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructVector_struct* %x) #0 {
entry:
  %matvec_vdata.addr = alloca i8*, align 8
  %A.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %x.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %ierr = alloca i32, align 4
  %matvec_data = alloca %struct.hypre_StructMatvecData*, align 8
  %grid = alloca %struct.hypre_StructGrid_struct*, align 8
  %stencil = alloca %struct.hypre_StructStencil_struct*, align 8
  %send_boxes = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %recv_boxes = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %send_processes = alloca i32**, align 8
  %recv_processes = alloca i32**, align 8
  %indt_boxes = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %dept_boxes = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %unit_stride = alloca [3 x i32], align 4
  %compute_pkg = alloca %struct.hypre_ComputePkg_struct*, align 8
  store i8* %matvec_vdata, i8** %matvec_vdata.addr, align 8
  store %struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  store %struct.hypre_StructVector_struct* %x, %struct.hypre_StructVector_struct** %x.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load i8*, i8** %matvec_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_StructMatvecData*
  store %struct.hypre_StructMatvecData* %1, %struct.hypre_StructMatvecData** %matvec_data, align 8
  %2 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %grid1 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %2, i32 0, i32 1
  %3 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid1, align 8
  store %struct.hypre_StructGrid_struct* %3, %struct.hypre_StructGrid_struct** %grid, align 8
  %4 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %stencil2 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %4, i32 0, i32 3
  %5 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil2, align 8
  store %struct.hypre_StructStencil_struct* %5, %struct.hypre_StructStencil_struct** %stencil, align 8
  %6 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %7 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil, align 8
  %call = call i32 @hypre_CreateComputeInfo(%struct.hypre_StructGrid_struct* %6, %struct.hypre_StructStencil_struct* %7, %struct.hypre_BoxArrayArray_struct** %send_boxes, %struct.hypre_BoxArrayArray_struct** %recv_boxes, i32*** %send_processes, i32*** %recv_processes, %struct.hypre_BoxArrayArray_struct** %indt_boxes, %struct.hypre_BoxArrayArray_struct** %dept_boxes)
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %unit_stride, i32 0, i64 0
  store i32 1, i32* %arrayidx, align 4
  %arrayidx3 = getelementptr inbounds [3 x i32], [3 x i32]* %unit_stride, i32 0, i64 1
  store i32 1, i32* %arrayidx3, align 4
  %arrayidx4 = getelementptr inbounds [3 x i32], [3 x i32]* %unit_stride, i32 0, i64 2
  store i32 1, i32* %arrayidx4, align 4
  %8 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %send_boxes, align 8
  %9 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %recv_boxes, align 8
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %unit_stride, i32 0, i32 0
  %arraydecay5 = getelementptr inbounds [3 x i32], [3 x i32]* %unit_stride, i32 0, i32 0
  %10 = load i32**, i32*** %send_processes, align 8
  %11 = load i32**, i32*** %recv_processes, align 8
  %12 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %indt_boxes, align 8
  %13 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %dept_boxes, align 8
  %arraydecay6 = getelementptr inbounds [3 x i32], [3 x i32]* %unit_stride, i32 0, i32 0
  %14 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %15 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %data_space = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %15, i32 0, i32 2
  %16 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space, align 8
  %call7 = call i32 @hypre_ComputePkgCreate(%struct.hypre_BoxArrayArray_struct* %8, %struct.hypre_BoxArrayArray_struct* %9, i32* %arraydecay, i32* %arraydecay5, i32** %10, i32** %11, %struct.hypre_BoxArrayArray_struct* %12, %struct.hypre_BoxArrayArray_struct* %13, i32* %arraydecay6, %struct.hypre_StructGrid_struct* %14, %struct.hypre_BoxArray_struct* %16, i32 1, %struct.hypre_ComputePkg_struct** %compute_pkg)
  %17 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %call8 = call %struct.hypre_StructMatrix_struct* @hypre_StructMatrixRef(%struct.hypre_StructMatrix_struct* %17)
  %18 = load %struct.hypre_StructMatvecData*, %struct.hypre_StructMatvecData** %matvec_data, align 8
  %A9 = getelementptr inbounds %struct.hypre_StructMatvecData, %struct.hypre_StructMatvecData* %18, i32 0, i32 0
  store %struct.hypre_StructMatrix_struct* %call8, %struct.hypre_StructMatrix_struct** %A9, align 8
  %19 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %call10 = call %struct.hypre_StructVector_struct* @hypre_StructVectorRef(%struct.hypre_StructVector_struct* %19)
  %20 = load %struct.hypre_StructMatvecData*, %struct.hypre_StructMatvecData** %matvec_data, align 8
  %x11 = getelementptr inbounds %struct.hypre_StructMatvecData, %struct.hypre_StructMatvecData* %20, i32 0, i32 1
  store %struct.hypre_StructVector_struct* %call10, %struct.hypre_StructVector_struct** %x11, align 8
  %21 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %compute_pkg, align 8
  %22 = load %struct.hypre_StructMatvecData*, %struct.hypre_StructMatvecData** %matvec_data, align 8
  %compute_pkg12 = getelementptr inbounds %struct.hypre_StructMatvecData, %struct.hypre_StructMatvecData* %22, i32 0, i32 2
  store %struct.hypre_ComputePkg_struct* %21, %struct.hypre_ComputePkg_struct** %compute_pkg12, align 8
  %23 = load i32, i32* %ierr, align 4
  ret i32 %23
}

declare i32 @hypre_CreateComputeInfo(%struct.hypre_StructGrid_struct*, %struct.hypre_StructStencil_struct*, %struct.hypre_BoxArrayArray_struct**, %struct.hypre_BoxArrayArray_struct**, i32***, i32***, %struct.hypre_BoxArrayArray_struct**, %struct.hypre_BoxArrayArray_struct**) #1

declare i32 @hypre_ComputePkgCreate(%struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct*, i32*, i32*, i32**, i32**, %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct*, i32*, %struct.hypre_StructGrid_struct*, %struct.hypre_BoxArray_struct*, i32, %struct.hypre_ComputePkg_struct**) #1

declare %struct.hypre_StructMatrix_struct* @hypre_StructMatrixRef(%struct.hypre_StructMatrix_struct*) #1

declare %struct.hypre_StructVector_struct* @hypre_StructVectorRef(%struct.hypre_StructVector_struct*) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_StructMatvecCompute(i8* %matvec_vdata, double %alpha, %struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructVector_struct* %x, double %beta, %struct.hypre_StructVector_struct* %y) #0 {
entry:
  %retval = alloca i32, align 4
  %matvec_vdata.addr = alloca i8*, align 8
  %alpha.addr = alloca double, align 8
  %A.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %x.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %beta.addr = alloca double, align 8
  %y.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %ierr = alloca i32, align 4
  %matvec_data = alloca %struct.hypre_StructMatvecData*, align 8
  %compute_pkg = alloca %struct.hypre_ComputePkg_struct*, align 8
  %comm_handle = alloca %struct.hypre_CommHandle_struct*, align 8
  %compute_box_aa = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %compute_box_a = alloca %struct.hypre_BoxArray_struct*, align 8
  %compute_box = alloca %struct.hypre_Box_struct*, align 8
  %A_data_box = alloca %struct.hypre_Box_struct*, align 8
  %x_data_box = alloca %struct.hypre_Box_struct*, align 8
  %y_data_box = alloca %struct.hypre_Box_struct*, align 8
  %Ai = alloca i32, align 4
  %xi = alloca i32, align 4
  %xoff0 = alloca i32, align 4
  %xoff1 = alloca i32, align 4
  %xoff2 = alloca i32, align 4
  %xoff3 = alloca i32, align 4
  %xoff4 = alloca i32, align 4
  %xoff5 = alloca i32, align 4
  %xoff6 = alloca i32, align 4
  %yi = alloca i32, align 4
  %Ap0 = alloca double*, align 8
  %Ap1 = alloca double*, align 8
  %Ap2 = alloca double*, align 8
  %Ap3 = alloca double*, align 8
  %Ap4 = alloca double*, align 8
  %Ap5 = alloca double*, align 8
  %Ap6 = alloca double*, align 8
  %xp = alloca double*, align 8
  %yp = alloca double*, align 8
  %boxes = alloca %struct.hypre_BoxArray_struct*, align 8
  %box = alloca %struct.hypre_Box_struct*, align 8
  %loop_size = alloca [3 x i32], align 4
  %start = alloca i32*, align 8
  %stride = alloca i32*, align 8
  %stencil = alloca %struct.hypre_StructStencil_struct*, align 8
  %stencil_shape = alloca [3 x i32]*, align 8
  %stencil_size = alloca i32, align 4
  %depth = alloca i32, align 4
  %temp = alloca double, align 8
  %compute_i = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %si = alloca i32, align 4
  %loopi = alloca i32, align 4
  %loopj = alloca i32, align 4
  %loopk = alloca i32, align 4
  %hypre__i1start = alloca i32, align 4
  %hypre__sx1 = alloca i32, align 4
  %hypre__sy1 = alloca i32, align 4
  %hypre__sz1 = alloca i32, align 4
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
  %hypre__i1start245 = alloca i32, align 4
  %hypre__sx1296 = alloca i32, align 4
  %hypre__sy1298 = alloca i32, align 4
  %hypre__sz1318 = alloca i32, align 4
  %hypre__nx356 = alloca i32, align 4
  %hypre__ny358 = alloca i32, align 4
  %hypre__nz360 = alloca i32, align 4
  %hypre__mx362 = alloca i32, align 4
  %hypre__my363 = alloca i32, align 4
  %hypre__mz364 = alloca i32, align 4
  %hypre__dir365 = alloca i32, align 4
  %hypre__max366 = alloca i32, align 4
  %hypre__div367 = alloca i32, align 4
  %hypre__mod368 = alloca i32, align 4
  %hypre__block369 = alloca i32, align 4
  %hypre__num_blocks370 = alloca i32, align 4
  %hypre__i1start471 = alloca i32, align 4
  %hypre__sx1522 = alloca i32, align 4
  %hypre__sy1524 = alloca i32, align 4
  %hypre__sz1544 = alloca i32, align 4
  %hypre__nx582 = alloca i32, align 4
  %hypre__ny584 = alloca i32, align 4
  %hypre__nz586 = alloca i32, align 4
  %hypre__mx588 = alloca i32, align 4
  %hypre__my589 = alloca i32, align 4
  %hypre__mz590 = alloca i32, align 4
  %hypre__dir591 = alloca i32, align 4
  %hypre__max592 = alloca i32, align 4
  %hypre__div593 = alloca i32, align 4
  %hypre__mod594 = alloca i32, align 4
  %hypre__block595 = alloca i32, align 4
  %hypre__num_blocks596 = alloca i32, align 4
  %hypre__i1start1167 = alloca i32, align 4
  %hypre__i2start = alloca i32, align 4
  %hypre__i3start = alloca i32, align 4
  %hypre__sx11318 = alloca i32, align 4
  %hypre__sy11320 = alloca i32, align 4
  %hypre__sz11340 = alloca i32, align 4
  %hypre__sx2 = alloca i32, align 4
  %hypre__sy2 = alloca i32, align 4
  %hypre__sz2 = alloca i32, align 4
  %hypre__sx3 = alloca i32, align 4
  %hypre__sy3 = alloca i32, align 4
  %hypre__sz3 = alloca i32, align 4
  %hypre__nx1492 = alloca i32, align 4
  %hypre__ny1494 = alloca i32, align 4
  %hypre__nz1496 = alloca i32, align 4
  %hypre__mx1498 = alloca i32, align 4
  %hypre__my1499 = alloca i32, align 4
  %hypre__mz1500 = alloca i32, align 4
  %hypre__dir1501 = alloca i32, align 4
  %hypre__max1502 = alloca i32, align 4
  %hypre__div1503 = alloca i32, align 4
  %hypre__mod1504 = alloca i32, align 4
  %hypre__block1505 = alloca i32, align 4
  %hypre__num_blocks1506 = alloca i32, align 4
  %hypre__i1start2034 = alloca i32, align 4
  %hypre__i2start2085 = alloca i32, align 4
  %hypre__i3start2136 = alloca i32, align 4
  %hypre__sx12187 = alloca i32, align 4
  %hypre__sy12189 = alloca i32, align 4
  %hypre__sz12209 = alloca i32, align 4
  %hypre__sx22247 = alloca i32, align 4
  %hypre__sy22249 = alloca i32, align 4
  %hypre__sz22269 = alloca i32, align 4
  %hypre__sx32307 = alloca i32, align 4
  %hypre__sy32309 = alloca i32, align 4
  %hypre__sz32329 = alloca i32, align 4
  %hypre__nx2367 = alloca i32, align 4
  %hypre__ny2369 = alloca i32, align 4
  %hypre__nz2371 = alloca i32, align 4
  %hypre__mx2373 = alloca i32, align 4
  %hypre__my2374 = alloca i32, align 4
  %hypre__mz2375 = alloca i32, align 4
  %hypre__dir2376 = alloca i32, align 4
  %hypre__max2377 = alloca i32, align 4
  %hypre__div2378 = alloca i32, align 4
  %hypre__mod2379 = alloca i32, align 4
  %hypre__block2380 = alloca i32, align 4
  %hypre__num_blocks2381 = alloca i32, align 4
  %hypre__i1start2843 = alloca i32, align 4
  %hypre__i2start2894 = alloca i32, align 4
  %hypre__i3start2945 = alloca i32, align 4
  %hypre__sx12996 = alloca i32, align 4
  %hypre__sy12998 = alloca i32, align 4
  %hypre__sz13018 = alloca i32, align 4
  %hypre__sx23056 = alloca i32, align 4
  %hypre__sy23058 = alloca i32, align 4
  %hypre__sz23078 = alloca i32, align 4
  %hypre__sx33116 = alloca i32, align 4
  %hypre__sy33118 = alloca i32, align 4
  %hypre__sz33138 = alloca i32, align 4
  %hypre__nx3176 = alloca i32, align 4
  %hypre__ny3178 = alloca i32, align 4
  %hypre__nz3180 = alloca i32, align 4
  %hypre__mx3182 = alloca i32, align 4
  %hypre__my3183 = alloca i32, align 4
  %hypre__mz3184 = alloca i32, align 4
  %hypre__dir3185 = alloca i32, align 4
  %hypre__max3186 = alloca i32, align 4
  %hypre__div3187 = alloca i32, align 4
  %hypre__mod3188 = alloca i32, align 4
  %hypre__block3189 = alloca i32, align 4
  %hypre__num_blocks3190 = alloca i32, align 4
  %hypre__i1start3586 = alloca i32, align 4
  %hypre__i2start3637 = alloca i32, align 4
  %hypre__i3start3688 = alloca i32, align 4
  %hypre__sx13739 = alloca i32, align 4
  %hypre__sy13741 = alloca i32, align 4
  %hypre__sz13761 = alloca i32, align 4
  %hypre__sx23799 = alloca i32, align 4
  %hypre__sy23801 = alloca i32, align 4
  %hypre__sz23821 = alloca i32, align 4
  %hypre__sx33859 = alloca i32, align 4
  %hypre__sy33861 = alloca i32, align 4
  %hypre__sz33881 = alloca i32, align 4
  %hypre__nx3919 = alloca i32, align 4
  %hypre__ny3921 = alloca i32, align 4
  %hypre__nz3923 = alloca i32, align 4
  %hypre__mx3925 = alloca i32, align 4
  %hypre__my3926 = alloca i32, align 4
  %hypre__mz3927 = alloca i32, align 4
  %hypre__dir3928 = alloca i32, align 4
  %hypre__max3929 = alloca i32, align 4
  %hypre__div3930 = alloca i32, align 4
  %hypre__mod3931 = alloca i32, align 4
  %hypre__block3932 = alloca i32, align 4
  %hypre__num_blocks3933 = alloca i32, align 4
  %hypre__i1start4263 = alloca i32, align 4
  %hypre__i2start4314 = alloca i32, align 4
  %hypre__i3start4365 = alloca i32, align 4
  %hypre__sx14416 = alloca i32, align 4
  %hypre__sy14418 = alloca i32, align 4
  %hypre__sz14438 = alloca i32, align 4
  %hypre__sx24476 = alloca i32, align 4
  %hypre__sy24478 = alloca i32, align 4
  %hypre__sz24498 = alloca i32, align 4
  %hypre__sx34536 = alloca i32, align 4
  %hypre__sy34538 = alloca i32, align 4
  %hypre__sz34558 = alloca i32, align 4
  %hypre__nx4596 = alloca i32, align 4
  %hypre__ny4598 = alloca i32, align 4
  %hypre__nz4600 = alloca i32, align 4
  %hypre__mx4602 = alloca i32, align 4
  %hypre__my4603 = alloca i32, align 4
  %hypre__mz4604 = alloca i32, align 4
  %hypre__dir4605 = alloca i32, align 4
  %hypre__max4606 = alloca i32, align 4
  %hypre__div4607 = alloca i32, align 4
  %hypre__mod4608 = alloca i32, align 4
  %hypre__block4609 = alloca i32, align 4
  %hypre__num_blocks4610 = alloca i32, align 4
  %hypre__i1start4874 = alloca i32, align 4
  %hypre__i2start4925 = alloca i32, align 4
  %hypre__i3start4976 = alloca i32, align 4
  %hypre__sx15027 = alloca i32, align 4
  %hypre__sy15029 = alloca i32, align 4
  %hypre__sz15049 = alloca i32, align 4
  %hypre__sx25087 = alloca i32, align 4
  %hypre__sy25089 = alloca i32, align 4
  %hypre__sz25109 = alloca i32, align 4
  %hypre__sx35147 = alloca i32, align 4
  %hypre__sy35149 = alloca i32, align 4
  %hypre__sz35169 = alloca i32, align 4
  %hypre__nx5207 = alloca i32, align 4
  %hypre__ny5209 = alloca i32, align 4
  %hypre__nz5211 = alloca i32, align 4
  %hypre__mx5213 = alloca i32, align 4
  %hypre__my5214 = alloca i32, align 4
  %hypre__mz5215 = alloca i32, align 4
  %hypre__dir5216 = alloca i32, align 4
  %hypre__max5217 = alloca i32, align 4
  %hypre__div5218 = alloca i32, align 4
  %hypre__mod5219 = alloca i32, align 4
  %hypre__block5220 = alloca i32, align 4
  %hypre__num_blocks5221 = alloca i32, align 4
  %hypre__i1start5419 = alloca i32, align 4
  %hypre__i2start5470 = alloca i32, align 4
  %hypre__i3start5521 = alloca i32, align 4
  %hypre__sx15572 = alloca i32, align 4
  %hypre__sy15574 = alloca i32, align 4
  %hypre__sz15594 = alloca i32, align 4
  %hypre__sx25632 = alloca i32, align 4
  %hypre__sy25634 = alloca i32, align 4
  %hypre__sz25654 = alloca i32, align 4
  %hypre__sx35692 = alloca i32, align 4
  %hypre__sy35694 = alloca i32, align 4
  %hypre__sz35714 = alloca i32, align 4
  %hypre__nx5752 = alloca i32, align 4
  %hypre__ny5754 = alloca i32, align 4
  %hypre__nz5756 = alloca i32, align 4
  %hypre__mx5758 = alloca i32, align 4
  %hypre__my5759 = alloca i32, align 4
  %hypre__mz5760 = alloca i32, align 4
  %hypre__dir5761 = alloca i32, align 4
  %hypre__max5762 = alloca i32, align 4
  %hypre__div5763 = alloca i32, align 4
  %hypre__mod5764 = alloca i32, align 4
  %hypre__block5765 = alloca i32, align 4
  %hypre__num_blocks5766 = alloca i32, align 4
  %hypre__i1start5903 = alloca i32, align 4
  %hypre__sx15954 = alloca i32, align 4
  %hypre__sy15956 = alloca i32, align 4
  %hypre__sz15976 = alloca i32, align 4
  %hypre__nx6014 = alloca i32, align 4
  %hypre__ny6016 = alloca i32, align 4
  %hypre__nz6018 = alloca i32, align 4
  %hypre__mx6020 = alloca i32, align 4
  %hypre__my6021 = alloca i32, align 4
  %hypre__mz6022 = alloca i32, align 4
  %hypre__dir6023 = alloca i32, align 4
  %hypre__max6024 = alloca i32, align 4
  %hypre__div6025 = alloca i32, align 4
  %hypre__mod6026 = alloca i32, align 4
  %hypre__block6027 = alloca i32, align 4
  %hypre__num_blocks6028 = alloca i32, align 4
  store i8* %matvec_vdata, i8** %matvec_vdata.addr, align 8
  store double %alpha, double* %alpha.addr, align 8
  store %struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  store %struct.hypre_StructVector_struct* %x, %struct.hypre_StructVector_struct** %x.addr, align 8
  store double %beta, double* %beta.addr, align 8
  store %struct.hypre_StructVector_struct* %y, %struct.hypre_StructVector_struct** %y.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load i8*, i8** %matvec_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_StructMatvecData*
  store %struct.hypre_StructMatvecData* %1, %struct.hypre_StructMatvecData** %matvec_data, align 8
  %2 = load %struct.hypre_StructMatvecData*, %struct.hypre_StructMatvecData** %matvec_data, align 8
  %compute_pkg1 = getelementptr inbounds %struct.hypre_StructMatvecData, %struct.hypre_StructMatvecData* %2, i32 0, i32 2
  %3 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %compute_pkg1, align 8
  store %struct.hypre_ComputePkg_struct* %3, %struct.hypre_ComputePkg_struct** %compute_pkg, align 8
  %4 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %compute_pkg, align 8
  %stride2 = getelementptr inbounds %struct.hypre_ComputePkg_struct, %struct.hypre_ComputePkg_struct* %4, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %stride2, i32 0, i32 0
  store i32* %arraydecay, i32** %stride, align 8
  %5 = load double, double* %alpha.addr, align 8
  %cmp = fcmp oeq double %5, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end.209

if.then:                                          ; preds = %entry
  %6 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %grid = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %6, i32 0, i32 1
  %7 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %boxes3 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %7, i32 0, i32 2
  %8 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes3, align 8
  store %struct.hypre_BoxArray_struct* %8, %struct.hypre_BoxArray_struct** %boxes, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.206, %if.then
  %9 = load i32, i32* %i, align 4
  %10 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %size = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %10, i32 0, i32 1
  %11 = load i32, i32* %size, align 4
  %cmp4 = icmp slt i32 %9, %11
  br i1 %cmp4, label %for.body, label %for.end.208

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %boxes5 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %13, i32 0, i32 0
  %14 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes5, align 8
  %arrayidx = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %14, i64 %idxprom
  store %struct.hypre_Box_struct* %arrayidx, %struct.hypre_Box_struct** %box, align 8
  %15 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %15, i32 0, i32 0
  %arraydecay6 = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i32 0
  store i32* %arraydecay6, i32** %start, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %16 to i64
  %17 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %y.addr, align 8
  %data_space = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %17, i32 0, i32 2
  %18 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space, align 8
  %boxes8 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %18, i32 0, i32 0
  %19 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes8, align 8
  %arrayidx9 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %19, i64 %idxprom7
  store %struct.hypre_Box_struct* %arrayidx9, %struct.hypre_Box_struct** %y_data_box, align 8
  %20 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %y.addr, align 8
  %data = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %20, i32 0, i32 3
  %21 = load double*, double** %data, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %22 to i64
  %23 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %y.addr, align 8
  %data_indices = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %23, i32 0, i32 6
  %24 = load i32*, i32** %data_indices, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %24, i64 %idxprom10
  %25 = load i32, i32* %arrayidx11, align 4
  %idx.ext = sext i32 %25 to i64
  %add.ptr = getelementptr inbounds double, double* %21, i64 %idx.ext
  store double* %add.ptr, double** %yp, align 8
  %26 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %arraydecay12 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i32 0
  %call = call i32 @hypre_BoxGetSize(%struct.hypre_Box_struct* %26, i32* %arraydecay12)
  %27 = load i32*, i32** %start, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %27, i64 0
  %28 = load i32, i32* %arrayidx13, align 4
  %29 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin14 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %29, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [3 x i32], [3 x i32]* %imin14, i32 0, i64 0
  %30 = load i32, i32* %arrayidx15, align 4
  %sub = sub nsw i32 %28, %30
  %31 = load i32*, i32** %start, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %31, i64 1
  %32 = load i32, i32* %arrayidx16, align 4
  %33 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin17 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %33, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [3 x i32], [3 x i32]* %imin17, i32 0, i64 1
  %34 = load i32, i32* %arrayidx18, align 4
  %sub19 = sub nsw i32 %32, %34
  %35 = load i32*, i32** %start, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %35, i64 2
  %36 = load i32, i32* %arrayidx20, align 4
  %37 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin21 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %37, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [3 x i32], [3 x i32]* %imin21, i32 0, i64 2
  %38 = load i32, i32* %arrayidx22, align 4
  %sub23 = sub nsw i32 %36, %38
  %39 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %39, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 1
  %40 = load i32, i32* %arrayidx24, align 4
  %41 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin25 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %41, i32 0, i32 0
  %arrayidx26 = getelementptr inbounds [3 x i32], [3 x i32]* %imin25, i32 0, i64 1
  %42 = load i32, i32* %arrayidx26, align 4
  %sub27 = sub nsw i32 %40, %42
  %add = add nsw i32 %sub27, 1
  %cmp28 = icmp slt i32 0, %add
  br i1 %cmp28, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %43 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax29 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %43, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [3 x i32], [3 x i32]* %imax29, i32 0, i64 1
  %44 = load i32, i32* %arrayidx30, align 4
  %45 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin31 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %45, i32 0, i32 0
  %arrayidx32 = getelementptr inbounds [3 x i32], [3 x i32]* %imin31, i32 0, i64 1
  %46 = load i32, i32* %arrayidx32, align 4
  %sub33 = sub nsw i32 %44, %46
  %add34 = add nsw i32 %sub33, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add34, %cond.true ], [ 0, %cond.false ]
  %mul = mul nsw i32 %sub23, %cond
  %add35 = add nsw i32 %sub19, %mul
  %47 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax36 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %47, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [3 x i32], [3 x i32]* %imax36, i32 0, i64 0
  %48 = load i32, i32* %arrayidx37, align 4
  %49 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin38 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %49, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [3 x i32], [3 x i32]* %imin38, i32 0, i64 0
  %50 = load i32, i32* %arrayidx39, align 4
  %sub40 = sub nsw i32 %48, %50
  %add41 = add nsw i32 %sub40, 1
  %cmp42 = icmp slt i32 0, %add41
  br i1 %cmp42, label %cond.true.43, label %cond.false.50

cond.true.43:                                     ; preds = %cond.end
  %51 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax44 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %51, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [3 x i32], [3 x i32]* %imax44, i32 0, i64 0
  %52 = load i32, i32* %arrayidx45, align 4
  %53 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin46 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %53, i32 0, i32 0
  %arrayidx47 = getelementptr inbounds [3 x i32], [3 x i32]* %imin46, i32 0, i64 0
  %54 = load i32, i32* %arrayidx47, align 4
  %sub48 = sub nsw i32 %52, %54
  %add49 = add nsw i32 %sub48, 1
  br label %cond.end.51

cond.false.50:                                    ; preds = %cond.end
  br label %cond.end.51

cond.end.51:                                      ; preds = %cond.false.50, %cond.true.43
  %cond52 = phi i32 [ %add49, %cond.true.43 ], [ 0, %cond.false.50 ]
  %mul53 = mul nsw i32 %add35, %cond52
  %add54 = add nsw i32 %sub, %mul53
  store i32 %add54, i32* %hypre__i1start, align 4
  %55 = load i32*, i32** %stride, align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %55, i64 0
  %56 = load i32, i32* %arrayidx55, align 4
  store i32 %56, i32* %hypre__sx1, align 4
  %57 = load i32*, i32** %stride, align 8
  %arrayidx56 = getelementptr inbounds i32, i32* %57, i64 1
  %58 = load i32, i32* %arrayidx56, align 4
  %59 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax57 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %59, i32 0, i32 1
  %arrayidx58 = getelementptr inbounds [3 x i32], [3 x i32]* %imax57, i32 0, i64 0
  %60 = load i32, i32* %arrayidx58, align 4
  %61 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin59 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %61, i32 0, i32 0
  %arrayidx60 = getelementptr inbounds [3 x i32], [3 x i32]* %imin59, i32 0, i64 0
  %62 = load i32, i32* %arrayidx60, align 4
  %sub61 = sub nsw i32 %60, %62
  %add62 = add nsw i32 %sub61, 1
  %cmp63 = icmp slt i32 0, %add62
  br i1 %cmp63, label %cond.true.64, label %cond.false.71

cond.true.64:                                     ; preds = %cond.end.51
  %63 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax65 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %63, i32 0, i32 1
  %arrayidx66 = getelementptr inbounds [3 x i32], [3 x i32]* %imax65, i32 0, i64 0
  %64 = load i32, i32* %arrayidx66, align 4
  %65 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin67 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %65, i32 0, i32 0
  %arrayidx68 = getelementptr inbounds [3 x i32], [3 x i32]* %imin67, i32 0, i64 0
  %66 = load i32, i32* %arrayidx68, align 4
  %sub69 = sub nsw i32 %64, %66
  %add70 = add nsw i32 %sub69, 1
  br label %cond.end.72

cond.false.71:                                    ; preds = %cond.end.51
  br label %cond.end.72

cond.end.72:                                      ; preds = %cond.false.71, %cond.true.64
  %cond73 = phi i32 [ %add70, %cond.true.64 ], [ 0, %cond.false.71 ]
  %mul74 = mul nsw i32 %58, %cond73
  store i32 %mul74, i32* %hypre__sy1, align 4
  %67 = load i32*, i32** %stride, align 8
  %arrayidx75 = getelementptr inbounds i32, i32* %67, i64 2
  %68 = load i32, i32* %arrayidx75, align 4
  %69 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax76 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %69, i32 0, i32 1
  %arrayidx77 = getelementptr inbounds [3 x i32], [3 x i32]* %imax76, i32 0, i64 0
  %70 = load i32, i32* %arrayidx77, align 4
  %71 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin78 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %71, i32 0, i32 0
  %arrayidx79 = getelementptr inbounds [3 x i32], [3 x i32]* %imin78, i32 0, i64 0
  %72 = load i32, i32* %arrayidx79, align 4
  %sub80 = sub nsw i32 %70, %72
  %add81 = add nsw i32 %sub80, 1
  %cmp82 = icmp slt i32 0, %add81
  br i1 %cmp82, label %cond.true.83, label %cond.false.90

cond.true.83:                                     ; preds = %cond.end.72
  %73 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax84 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %73, i32 0, i32 1
  %arrayidx85 = getelementptr inbounds [3 x i32], [3 x i32]* %imax84, i32 0, i64 0
  %74 = load i32, i32* %arrayidx85, align 4
  %75 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin86 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %75, i32 0, i32 0
  %arrayidx87 = getelementptr inbounds [3 x i32], [3 x i32]* %imin86, i32 0, i64 0
  %76 = load i32, i32* %arrayidx87, align 4
  %sub88 = sub nsw i32 %74, %76
  %add89 = add nsw i32 %sub88, 1
  br label %cond.end.91

cond.false.90:                                    ; preds = %cond.end.72
  br label %cond.end.91

cond.end.91:                                      ; preds = %cond.false.90, %cond.true.83
  %cond92 = phi i32 [ %add89, %cond.true.83 ], [ 0, %cond.false.90 ]
  %mul93 = mul nsw i32 %68, %cond92
  %77 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax94 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %77, i32 0, i32 1
  %arrayidx95 = getelementptr inbounds [3 x i32], [3 x i32]* %imax94, i32 0, i64 1
  %78 = load i32, i32* %arrayidx95, align 4
  %79 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin96 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %79, i32 0, i32 0
  %arrayidx97 = getelementptr inbounds [3 x i32], [3 x i32]* %imin96, i32 0, i64 1
  %80 = load i32, i32* %arrayidx97, align 4
  %sub98 = sub nsw i32 %78, %80
  %add99 = add nsw i32 %sub98, 1
  %cmp100 = icmp slt i32 0, %add99
  br i1 %cmp100, label %cond.true.101, label %cond.false.108

cond.true.101:                                    ; preds = %cond.end.91
  %81 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax102 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %81, i32 0, i32 1
  %arrayidx103 = getelementptr inbounds [3 x i32], [3 x i32]* %imax102, i32 0, i64 1
  %82 = load i32, i32* %arrayidx103, align 4
  %83 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin104 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %83, i32 0, i32 0
  %arrayidx105 = getelementptr inbounds [3 x i32], [3 x i32]* %imin104, i32 0, i64 1
  %84 = load i32, i32* %arrayidx105, align 4
  %sub106 = sub nsw i32 %82, %84
  %add107 = add nsw i32 %sub106, 1
  br label %cond.end.109

cond.false.108:                                   ; preds = %cond.end.91
  br label %cond.end.109

cond.end.109:                                     ; preds = %cond.false.108, %cond.true.101
  %cond110 = phi i32 [ %add107, %cond.true.101 ], [ 0, %cond.false.108 ]
  %mul111 = mul nsw i32 %mul93, %cond110
  store i32 %mul111, i32* %hypre__sz1, align 4
  %arrayidx112 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 0
  %85 = load i32, i32* %arrayidx112, align 4
  store i32 %85, i32* %hypre__nx, align 4
  %arrayidx113 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 1
  %86 = load i32, i32* %arrayidx113, align 4
  store i32 %86, i32* %hypre__ny, align 4
  %arrayidx114 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 2
  %87 = load i32, i32* %arrayidx114, align 4
  store i32 %87, i32* %hypre__nz, align 4
  %88 = load i32, i32* %hypre__nx, align 4
  store i32 %88, i32* %hypre__mx, align 4
  %89 = load i32, i32* %hypre__ny, align 4
  store i32 %89, i32* %hypre__my, align 4
  %90 = load i32, i32* %hypre__nz, align 4
  store i32 %90, i32* %hypre__mz, align 4
  store i32 0, i32* %hypre__dir, align 4
  %91 = load i32, i32* %hypre__nx, align 4
  store i32 %91, i32* %hypre__max, align 4
  %92 = load i32, i32* %hypre__ny, align 4
  %93 = load i32, i32* %hypre__max, align 4
  %cmp115 = icmp sgt i32 %92, %93
  br i1 %cmp115, label %if.then.116, label %if.end

if.then.116:                                      ; preds = %cond.end.109
  store i32 1, i32* %hypre__dir, align 4
  %94 = load i32, i32* %hypre__ny, align 4
  store i32 %94, i32* %hypre__max, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.116, %cond.end.109
  %95 = load i32, i32* %hypre__nz, align 4
  %96 = load i32, i32* %hypre__max, align 4
  %cmp117 = icmp sgt i32 %95, %96
  br i1 %cmp117, label %if.then.118, label %if.end.119

if.then.118:                                      ; preds = %if.end
  store i32 2, i32* %hypre__dir, align 4
  %97 = load i32, i32* %hypre__nz, align 4
  store i32 %97, i32* %hypre__max, align 4
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.118, %if.end
  store i32 1, i32* %hypre__num_blocks, align 4
  %98 = load i32, i32* %hypre__max, align 4
  %99 = load i32, i32* %hypre__num_blocks, align 4
  %cmp120 = icmp slt i32 %98, %99
  br i1 %cmp120, label %if.then.121, label %if.end.122

if.then.121:                                      ; preds = %if.end.119
  %100 = load i32, i32* %hypre__max, align 4
  store i32 %100, i32* %hypre__num_blocks, align 4
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.121, %if.end.119
  %101 = load i32, i32* %hypre__num_blocks, align 4
  %cmp123 = icmp sgt i32 %101, 0
  br i1 %cmp123, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %if.end.122
  %102 = load i32, i32* %hypre__max, align 4
  %103 = load i32, i32* %hypre__num_blocks, align 4
  %div = sdiv i32 %102, %103
  store i32 %div, i32* %hypre__div, align 4
  %104 = load i32, i32* %hypre__max, align 4
  %105 = load i32, i32* %hypre__num_blocks, align 4
  %rem = srem i32 %104, %105
  store i32 %rem, i32* %hypre__mod, align 4
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.124, %if.end.122
  store i32 0, i32* %hypre__block, align 4
  br label %for.cond.126

for.cond.126:                                     ; preds = %for.inc.203, %if.end.125
  %106 = load i32, i32* %hypre__block, align 4
  %107 = load i32, i32* %hypre__num_blocks, align 4
  %cmp127 = icmp slt i32 %106, %107
  br i1 %cmp127, label %for.body.128, label %for.end.205

for.body.128:                                     ; preds = %for.cond.126
  store i32 0, i32* %loopi, align 4
  store i32 0, i32* %loopj, align 4
  store i32 0, i32* %loopk, align 4
  %108 = load i32, i32* %hypre__mx, align 4
  store i32 %108, i32* %hypre__nx, align 4
  %109 = load i32, i32* %hypre__my, align 4
  store i32 %109, i32* %hypre__ny, align 4
  %110 = load i32, i32* %hypre__mz, align 4
  store i32 %110, i32* %hypre__nz, align 4
  %111 = load i32, i32* %hypre__num_blocks, align 4
  %cmp129 = icmp sgt i32 %111, 1
  br i1 %cmp129, label %if.then.130, label %if.end.171

if.then.130:                                      ; preds = %for.body.128
  %112 = load i32, i32* %hypre__dir, align 4
  %cmp131 = icmp eq i32 %112, 0
  br i1 %cmp131, label %if.then.132, label %if.else

if.then.132:                                      ; preds = %if.then.130
  %113 = load i32, i32* %hypre__block, align 4
  %114 = load i32, i32* %hypre__div, align 4
  %mul133 = mul nsw i32 %113, %114
  %115 = load i32, i32* %hypre__mod, align 4
  %116 = load i32, i32* %hypre__block, align 4
  %cmp134 = icmp slt i32 %115, %116
  br i1 %cmp134, label %cond.true.135, label %cond.false.136

cond.true.135:                                    ; preds = %if.then.132
  %117 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.137

cond.false.136:                                   ; preds = %if.then.132
  %118 = load i32, i32* %hypre__block, align 4
  br label %cond.end.137

cond.end.137:                                     ; preds = %cond.false.136, %cond.true.135
  %cond138 = phi i32 [ %117, %cond.true.135 ], [ %118, %cond.false.136 ]
  %add139 = add nsw i32 %mul133, %cond138
  store i32 %add139, i32* %loopi, align 4
  %119 = load i32, i32* %hypre__div, align 4
  %120 = load i32, i32* %hypre__mod, align 4
  %121 = load i32, i32* %hypre__block, align 4
  %cmp140 = icmp sgt i32 %120, %121
  %cond141 = select i1 %cmp140, i32 1, i32 0
  %add142 = add nsw i32 %119, %cond141
  store i32 %add142, i32* %hypre__nx, align 4
  br label %if.end.170

if.else:                                          ; preds = %if.then.130
  %122 = load i32, i32* %hypre__dir, align 4
  %cmp143 = icmp eq i32 %122, 1
  br i1 %cmp143, label %if.then.144, label %if.else.155

if.then.144:                                      ; preds = %if.else
  %123 = load i32, i32* %hypre__block, align 4
  %124 = load i32, i32* %hypre__div, align 4
  %mul145 = mul nsw i32 %123, %124
  %125 = load i32, i32* %hypre__mod, align 4
  %126 = load i32, i32* %hypre__block, align 4
  %cmp146 = icmp slt i32 %125, %126
  br i1 %cmp146, label %cond.true.147, label %cond.false.148

cond.true.147:                                    ; preds = %if.then.144
  %127 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.149

cond.false.148:                                   ; preds = %if.then.144
  %128 = load i32, i32* %hypre__block, align 4
  br label %cond.end.149

cond.end.149:                                     ; preds = %cond.false.148, %cond.true.147
  %cond150 = phi i32 [ %127, %cond.true.147 ], [ %128, %cond.false.148 ]
  %add151 = add nsw i32 %mul145, %cond150
  store i32 %add151, i32* %loopj, align 4
  %129 = load i32, i32* %hypre__div, align 4
  %130 = load i32, i32* %hypre__mod, align 4
  %131 = load i32, i32* %hypre__block, align 4
  %cmp152 = icmp sgt i32 %130, %131
  %cond153 = select i1 %cmp152, i32 1, i32 0
  %add154 = add nsw i32 %129, %cond153
  store i32 %add154, i32* %hypre__ny, align 4
  br label %if.end.169

if.else.155:                                      ; preds = %if.else
  %132 = load i32, i32* %hypre__dir, align 4
  %cmp156 = icmp eq i32 %132, 2
  br i1 %cmp156, label %if.then.157, label %if.end.168

if.then.157:                                      ; preds = %if.else.155
  %133 = load i32, i32* %hypre__block, align 4
  %134 = load i32, i32* %hypre__div, align 4
  %mul158 = mul nsw i32 %133, %134
  %135 = load i32, i32* %hypre__mod, align 4
  %136 = load i32, i32* %hypre__block, align 4
  %cmp159 = icmp slt i32 %135, %136
  br i1 %cmp159, label %cond.true.160, label %cond.false.161

cond.true.160:                                    ; preds = %if.then.157
  %137 = load i32, i32* %hypre__mod, align 4
  br label %cond.end.162

cond.false.161:                                   ; preds = %if.then.157
  %138 = load i32, i32* %hypre__block, align 4
  br label %cond.end.162

cond.end.162:                                     ; preds = %cond.false.161, %cond.true.160
  %cond163 = phi i32 [ %137, %cond.true.160 ], [ %138, %cond.false.161 ]
  %add164 = add nsw i32 %mul158, %cond163
  store i32 %add164, i32* %loopk, align 4
  %139 = load i32, i32* %hypre__div, align 4
  %140 = load i32, i32* %hypre__mod, align 4
  %141 = load i32, i32* %hypre__block, align 4
  %cmp165 = icmp sgt i32 %140, %141
  %cond166 = select i1 %cmp165, i32 1, i32 0
  %add167 = add nsw i32 %139, %cond166
  store i32 %add167, i32* %hypre__nz, align 4
  br label %if.end.168

if.end.168:                                       ; preds = %cond.end.162, %if.else.155
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.168, %cond.end.149
  br label %if.end.170

if.end.170:                                       ; preds = %if.end.169, %cond.end.137
  br label %if.end.171

if.end.171:                                       ; preds = %if.end.170, %for.body.128
  %142 = load i32, i32* %hypre__i1start, align 4
  %143 = load i32, i32* %loopi, align 4
  %144 = load i32, i32* %hypre__sx1, align 4
  %mul172 = mul nsw i32 %143, %144
  %add173 = add nsw i32 %142, %mul172
  %145 = load i32, i32* %loopj, align 4
  %146 = load i32, i32* %hypre__sy1, align 4
  %mul174 = mul nsw i32 %145, %146
  %add175 = add nsw i32 %add173, %mul174
  %147 = load i32, i32* %loopk, align 4
  %148 = load i32, i32* %hypre__sz1, align 4
  %mul176 = mul nsw i32 %147, %148
  %add177 = add nsw i32 %add175, %mul176
  store i32 %add177, i32* %yi, align 4
  store i32 0, i32* %loopk, align 4
  br label %for.cond.178

for.cond.178:                                     ; preds = %for.inc.200, %if.end.171
  %149 = load i32, i32* %loopk, align 4
  %150 = load i32, i32* %hypre__nz, align 4
  %cmp179 = icmp slt i32 %149, %150
  br i1 %cmp179, label %for.body.180, label %for.end.202

for.body.180:                                     ; preds = %for.cond.178
  store i32 0, i32* %loopj, align 4
  br label %for.cond.181

for.cond.181:                                     ; preds = %for.inc.194, %for.body.180
  %151 = load i32, i32* %loopj, align 4
  %152 = load i32, i32* %hypre__ny, align 4
  %cmp182 = icmp slt i32 %151, %152
  br i1 %cmp182, label %for.body.183, label %for.end.196

for.body.183:                                     ; preds = %for.cond.181
  store i32 0, i32* %loopi, align 4
  br label %for.cond.184

for.cond.184:                                     ; preds = %for.inc, %for.body.183
  %153 = load i32, i32* %loopi, align 4
  %154 = load i32, i32* %hypre__nx, align 4
  %cmp185 = icmp slt i32 %153, %154
  br i1 %cmp185, label %for.body.186, label %for.end

for.body.186:                                     ; preds = %for.cond.184
  %155 = load double, double* %beta.addr, align 8
  %156 = load i32, i32* %yi, align 4
  %idxprom187 = sext i32 %156 to i64
  %157 = load double*, double** %yp, align 8
  %arrayidx188 = getelementptr inbounds double, double* %157, i64 %idxprom187
  %158 = load double, double* %arrayidx188, align 8
  %mul189 = fmul double %158, %155
  store double %mul189, double* %arrayidx188, align 8
  %159 = load i32, i32* %hypre__sx1, align 4
  %160 = load i32, i32* %yi, align 4
  %add190 = add nsw i32 %160, %159
  store i32 %add190, i32* %yi, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.186
  %161 = load i32, i32* %loopi, align 4
  %inc = add nsw i32 %161, 1
  store i32 %inc, i32* %loopi, align 4
  br label %for.cond.184

for.end:                                          ; preds = %for.cond.184
  %162 = load i32, i32* %hypre__sy1, align 4
  %163 = load i32, i32* %hypre__nx, align 4
  %164 = load i32, i32* %hypre__sx1, align 4
  %mul191 = mul nsw i32 %163, %164
  %sub192 = sub nsw i32 %162, %mul191
  %165 = load i32, i32* %yi, align 4
  %add193 = add nsw i32 %165, %sub192
  store i32 %add193, i32* %yi, align 4
  br label %for.inc.194

for.inc.194:                                      ; preds = %for.end
  %166 = load i32, i32* %loopj, align 4
  %inc195 = add nsw i32 %166, 1
  store i32 %inc195, i32* %loopj, align 4
  br label %for.cond.181

for.end.196:                                      ; preds = %for.cond.181
  %167 = load i32, i32* %hypre__sz1, align 4
  %168 = load i32, i32* %hypre__ny, align 4
  %169 = load i32, i32* %hypre__sy1, align 4
  %mul197 = mul nsw i32 %168, %169
  %sub198 = sub nsw i32 %167, %mul197
  %170 = load i32, i32* %yi, align 4
  %add199 = add nsw i32 %170, %sub198
  store i32 %add199, i32* %yi, align 4
  br label %for.inc.200

for.inc.200:                                      ; preds = %for.end.196
  %171 = load i32, i32* %loopk, align 4
  %inc201 = add nsw i32 %171, 1
  store i32 %inc201, i32* %loopk, align 4
  br label %for.cond.178

for.end.202:                                      ; preds = %for.cond.178
  br label %for.inc.203

for.inc.203:                                      ; preds = %for.end.202
  %172 = load i32, i32* %hypre__block, align 4
  %inc204 = add nsw i32 %172, 1
  store i32 %inc204, i32* %hypre__block, align 4
  br label %for.cond.126

for.end.205:                                      ; preds = %for.cond.126
  br label %for.inc.206

for.inc.206:                                      ; preds = %for.end.205
  %173 = load i32, i32* %i, align 4
  %inc207 = add nsw i32 %173, 1
  store i32 %inc207, i32* %i, align 4
  br label %for.cond

for.end.208:                                      ; preds = %for.cond
  %174 = load i32, i32* %ierr, align 4
  store i32 %174, i32* %retval
  br label %return

if.end.209:                                       ; preds = %entry
  %175 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %stencil210 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %175, i32 0, i32 3
  %176 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil210, align 8
  store %struct.hypre_StructStencil_struct* %176, %struct.hypre_StructStencil_struct** %stencil, align 8
  %177 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil, align 8
  %shape = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %177, i32 0, i32 0
  %178 = load [3 x i32]*, [3 x i32]** %shape, align 8
  store [3 x i32]* %178, [3 x i32]** %stencil_shape, align 8
  %179 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil, align 8
  %size211 = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %179, i32 0, i32 1
  %180 = load i32, i32* %size211, align 4
  store i32 %180, i32* %stencil_size, align 4
  store i32 0, i32* %compute_i, align 4
  br label %for.cond.212

for.cond.212:                                     ; preds = %for.inc.6134, %if.end.209
  %181 = load i32, i32* %compute_i, align 4
  %cmp213 = icmp slt i32 %181, 2
  br i1 %cmp213, label %for.body.214, label %for.end.6136

for.body.214:                                     ; preds = %for.cond.212
  %182 = load i32, i32* %compute_i, align 4
  switch i32 %182, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.700
  ]

sw.bb:                                            ; preds = %for.body.214
  %183 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %data215 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %183, i32 0, i32 3
  %184 = load double*, double** %data215, align 8
  store double* %184, double** %xp, align 8
  %185 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %compute_pkg, align 8
  %186 = load double*, double** %xp, align 8
  %call216 = call i32 @hypre_InitializeIndtComputations(%struct.hypre_ComputePkg_struct* %185, double* %186, %struct.hypre_CommHandle_struct** %comm_handle)
  %187 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %compute_pkg, align 8
  %indt_boxes = getelementptr inbounds %struct.hypre_ComputePkg_struct, %struct.hypre_ComputePkg_struct* %187, i32 0, i32 1
  %188 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %indt_boxes, align 8
  store %struct.hypre_BoxArrayArray_struct* %188, %struct.hypre_BoxArrayArray_struct** %compute_box_aa, align 8
  %189 = load double, double* %beta.addr, align 8
  %190 = load double, double* %alpha.addr, align 8
  %div217 = fdiv double %189, %190
  store double %div217, double* %temp, align 8
  %191 = load double, double* %temp, align 8
  %cmp218 = fcmp une double %191, 1.000000e+00
  br i1 %cmp218, label %if.then.219, label %if.end.699

if.then.219:                                      ; preds = %sw.bb
  %192 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %grid220 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %192, i32 0, i32 1
  %193 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid220, align 8
  %boxes221 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %193, i32 0, i32 2
  %194 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes221, align 8
  store %struct.hypre_BoxArray_struct* %194, %struct.hypre_BoxArray_struct** %boxes, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.222

for.cond.222:                                     ; preds = %for.inc.696, %if.then.219
  %195 = load i32, i32* %i, align 4
  %196 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %size223 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %196, i32 0, i32 1
  %197 = load i32, i32* %size223, align 4
  %cmp224 = icmp slt i32 %195, %197
  br i1 %cmp224, label %for.body.225, label %for.end.698

for.body.225:                                     ; preds = %for.cond.222
  %198 = load i32, i32* %i, align 4
  %idxprom226 = sext i32 %198 to i64
  %199 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %boxes227 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %199, i32 0, i32 0
  %200 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes227, align 8
  %arrayidx228 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %200, i64 %idxprom226
  store %struct.hypre_Box_struct* %arrayidx228, %struct.hypre_Box_struct** %box, align 8
  %201 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin229 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %201, i32 0, i32 0
  %arraydecay230 = getelementptr inbounds [3 x i32], [3 x i32]* %imin229, i32 0, i32 0
  store i32* %arraydecay230, i32** %start, align 8
  %202 = load i32, i32* %i, align 4
  %idxprom231 = sext i32 %202 to i64
  %203 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %y.addr, align 8
  %data_space232 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %203, i32 0, i32 2
  %204 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space232, align 8
  %boxes233 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %204, i32 0, i32 0
  %205 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes233, align 8
  %arrayidx234 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %205, i64 %idxprom231
  store %struct.hypre_Box_struct* %arrayidx234, %struct.hypre_Box_struct** %y_data_box, align 8
  %206 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %y.addr, align 8
  %data235 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %206, i32 0, i32 3
  %207 = load double*, double** %data235, align 8
  %208 = load i32, i32* %i, align 4
  %idxprom236 = sext i32 %208 to i64
  %209 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %y.addr, align 8
  %data_indices237 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %209, i32 0, i32 6
  %210 = load i32*, i32** %data_indices237, align 8
  %arrayidx238 = getelementptr inbounds i32, i32* %210, i64 %idxprom236
  %211 = load i32, i32* %arrayidx238, align 4
  %idx.ext239 = sext i32 %211 to i64
  %add.ptr240 = getelementptr inbounds double, double* %207, i64 %idx.ext239
  store double* %add.ptr240, double** %yp, align 8
  %212 = load double, double* %temp, align 8
  %cmp241 = fcmp oeq double %212, 0.000000e+00
  br i1 %cmp241, label %if.then.242, label %if.else.468

if.then.242:                                      ; preds = %for.body.225
  %213 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %arraydecay243 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i32 0
  %call244 = call i32 @hypre_BoxGetSize(%struct.hypre_Box_struct* %213, i32* %arraydecay243)
  %214 = load i32*, i32** %start, align 8
  %arrayidx246 = getelementptr inbounds i32, i32* %214, i64 0
  %215 = load i32, i32* %arrayidx246, align 4
  %216 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin247 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %216, i32 0, i32 0
  %arrayidx248 = getelementptr inbounds [3 x i32], [3 x i32]* %imin247, i32 0, i64 0
  %217 = load i32, i32* %arrayidx248, align 4
  %sub249 = sub nsw i32 %215, %217
  %218 = load i32*, i32** %start, align 8
  %arrayidx250 = getelementptr inbounds i32, i32* %218, i64 1
  %219 = load i32, i32* %arrayidx250, align 4
  %220 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin251 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %220, i32 0, i32 0
  %arrayidx252 = getelementptr inbounds [3 x i32], [3 x i32]* %imin251, i32 0, i64 1
  %221 = load i32, i32* %arrayidx252, align 4
  %sub253 = sub nsw i32 %219, %221
  %222 = load i32*, i32** %start, align 8
  %arrayidx254 = getelementptr inbounds i32, i32* %222, i64 2
  %223 = load i32, i32* %arrayidx254, align 4
  %224 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin255 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %224, i32 0, i32 0
  %arrayidx256 = getelementptr inbounds [3 x i32], [3 x i32]* %imin255, i32 0, i64 2
  %225 = load i32, i32* %arrayidx256, align 4
  %sub257 = sub nsw i32 %223, %225
  %226 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax258 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %226, i32 0, i32 1
  %arrayidx259 = getelementptr inbounds [3 x i32], [3 x i32]* %imax258, i32 0, i64 1
  %227 = load i32, i32* %arrayidx259, align 4
  %228 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin260 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %228, i32 0, i32 0
  %arrayidx261 = getelementptr inbounds [3 x i32], [3 x i32]* %imin260, i32 0, i64 1
  %229 = load i32, i32* %arrayidx261, align 4
  %sub262 = sub nsw i32 %227, %229
  %add263 = add nsw i32 %sub262, 1
  %cmp264 = icmp slt i32 0, %add263
  br i1 %cmp264, label %cond.true.265, label %cond.false.272

cond.true.265:                                    ; preds = %if.then.242
  %230 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax266 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %230, i32 0, i32 1
  %arrayidx267 = getelementptr inbounds [3 x i32], [3 x i32]* %imax266, i32 0, i64 1
  %231 = load i32, i32* %arrayidx267, align 4
  %232 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin268 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %232, i32 0, i32 0
  %arrayidx269 = getelementptr inbounds [3 x i32], [3 x i32]* %imin268, i32 0, i64 1
  %233 = load i32, i32* %arrayidx269, align 4
  %sub270 = sub nsw i32 %231, %233
  %add271 = add nsw i32 %sub270, 1
  br label %cond.end.273

cond.false.272:                                   ; preds = %if.then.242
  br label %cond.end.273

cond.end.273:                                     ; preds = %cond.false.272, %cond.true.265
  %cond274 = phi i32 [ %add271, %cond.true.265 ], [ 0, %cond.false.272 ]
  %mul275 = mul nsw i32 %sub257, %cond274
  %add276 = add nsw i32 %sub253, %mul275
  %234 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax277 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %234, i32 0, i32 1
  %arrayidx278 = getelementptr inbounds [3 x i32], [3 x i32]* %imax277, i32 0, i64 0
  %235 = load i32, i32* %arrayidx278, align 4
  %236 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin279 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %236, i32 0, i32 0
  %arrayidx280 = getelementptr inbounds [3 x i32], [3 x i32]* %imin279, i32 0, i64 0
  %237 = load i32, i32* %arrayidx280, align 4
  %sub281 = sub nsw i32 %235, %237
  %add282 = add nsw i32 %sub281, 1
  %cmp283 = icmp slt i32 0, %add282
  br i1 %cmp283, label %cond.true.284, label %cond.false.291

cond.true.284:                                    ; preds = %cond.end.273
  %238 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax285 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %238, i32 0, i32 1
  %arrayidx286 = getelementptr inbounds [3 x i32], [3 x i32]* %imax285, i32 0, i64 0
  %239 = load i32, i32* %arrayidx286, align 4
  %240 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin287 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %240, i32 0, i32 0
  %arrayidx288 = getelementptr inbounds [3 x i32], [3 x i32]* %imin287, i32 0, i64 0
  %241 = load i32, i32* %arrayidx288, align 4
  %sub289 = sub nsw i32 %239, %241
  %add290 = add nsw i32 %sub289, 1
  br label %cond.end.292

cond.false.291:                                   ; preds = %cond.end.273
  br label %cond.end.292

cond.end.292:                                     ; preds = %cond.false.291, %cond.true.284
  %cond293 = phi i32 [ %add290, %cond.true.284 ], [ 0, %cond.false.291 ]
  %mul294 = mul nsw i32 %add276, %cond293
  %add295 = add nsw i32 %sub249, %mul294
  store i32 %add295, i32* %hypre__i1start245, align 4
  %242 = load i32*, i32** %stride, align 8
  %arrayidx297 = getelementptr inbounds i32, i32* %242, i64 0
  %243 = load i32, i32* %arrayidx297, align 4
  store i32 %243, i32* %hypre__sx1296, align 4
  %244 = load i32*, i32** %stride, align 8
  %arrayidx299 = getelementptr inbounds i32, i32* %244, i64 1
  %245 = load i32, i32* %arrayidx299, align 4
  %246 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax300 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %246, i32 0, i32 1
  %arrayidx301 = getelementptr inbounds [3 x i32], [3 x i32]* %imax300, i32 0, i64 0
  %247 = load i32, i32* %arrayidx301, align 4
  %248 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin302 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %248, i32 0, i32 0
  %arrayidx303 = getelementptr inbounds [3 x i32], [3 x i32]* %imin302, i32 0, i64 0
  %249 = load i32, i32* %arrayidx303, align 4
  %sub304 = sub nsw i32 %247, %249
  %add305 = add nsw i32 %sub304, 1
  %cmp306 = icmp slt i32 0, %add305
  br i1 %cmp306, label %cond.true.307, label %cond.false.314

cond.true.307:                                    ; preds = %cond.end.292
  %250 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax308 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %250, i32 0, i32 1
  %arrayidx309 = getelementptr inbounds [3 x i32], [3 x i32]* %imax308, i32 0, i64 0
  %251 = load i32, i32* %arrayidx309, align 4
  %252 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin310 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %252, i32 0, i32 0
  %arrayidx311 = getelementptr inbounds [3 x i32], [3 x i32]* %imin310, i32 0, i64 0
  %253 = load i32, i32* %arrayidx311, align 4
  %sub312 = sub nsw i32 %251, %253
  %add313 = add nsw i32 %sub312, 1
  br label %cond.end.315

cond.false.314:                                   ; preds = %cond.end.292
  br label %cond.end.315

cond.end.315:                                     ; preds = %cond.false.314, %cond.true.307
  %cond316 = phi i32 [ %add313, %cond.true.307 ], [ 0, %cond.false.314 ]
  %mul317 = mul nsw i32 %245, %cond316
  store i32 %mul317, i32* %hypre__sy1298, align 4
  %254 = load i32*, i32** %stride, align 8
  %arrayidx319 = getelementptr inbounds i32, i32* %254, i64 2
  %255 = load i32, i32* %arrayidx319, align 4
  %256 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax320 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %256, i32 0, i32 1
  %arrayidx321 = getelementptr inbounds [3 x i32], [3 x i32]* %imax320, i32 0, i64 0
  %257 = load i32, i32* %arrayidx321, align 4
  %258 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin322 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %258, i32 0, i32 0
  %arrayidx323 = getelementptr inbounds [3 x i32], [3 x i32]* %imin322, i32 0, i64 0
  %259 = load i32, i32* %arrayidx323, align 4
  %sub324 = sub nsw i32 %257, %259
  %add325 = add nsw i32 %sub324, 1
  %cmp326 = icmp slt i32 0, %add325
  br i1 %cmp326, label %cond.true.327, label %cond.false.334

cond.true.327:                                    ; preds = %cond.end.315
  %260 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax328 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %260, i32 0, i32 1
  %arrayidx329 = getelementptr inbounds [3 x i32], [3 x i32]* %imax328, i32 0, i64 0
  %261 = load i32, i32* %arrayidx329, align 4
  %262 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin330 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %262, i32 0, i32 0
  %arrayidx331 = getelementptr inbounds [3 x i32], [3 x i32]* %imin330, i32 0, i64 0
  %263 = load i32, i32* %arrayidx331, align 4
  %sub332 = sub nsw i32 %261, %263
  %add333 = add nsw i32 %sub332, 1
  br label %cond.end.335

cond.false.334:                                   ; preds = %cond.end.315
  br label %cond.end.335

cond.end.335:                                     ; preds = %cond.false.334, %cond.true.327
  %cond336 = phi i32 [ %add333, %cond.true.327 ], [ 0, %cond.false.334 ]
  %mul337 = mul nsw i32 %255, %cond336
  %264 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax338 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %264, i32 0, i32 1
  %arrayidx339 = getelementptr inbounds [3 x i32], [3 x i32]* %imax338, i32 0, i64 1
  %265 = load i32, i32* %arrayidx339, align 4
  %266 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin340 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %266, i32 0, i32 0
  %arrayidx341 = getelementptr inbounds [3 x i32], [3 x i32]* %imin340, i32 0, i64 1
  %267 = load i32, i32* %arrayidx341, align 4
  %sub342 = sub nsw i32 %265, %267
  %add343 = add nsw i32 %sub342, 1
  %cmp344 = icmp slt i32 0, %add343
  br i1 %cmp344, label %cond.true.345, label %cond.false.352

cond.true.345:                                    ; preds = %cond.end.335
  %268 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax346 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %268, i32 0, i32 1
  %arrayidx347 = getelementptr inbounds [3 x i32], [3 x i32]* %imax346, i32 0, i64 1
  %269 = load i32, i32* %arrayidx347, align 4
  %270 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin348 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %270, i32 0, i32 0
  %arrayidx349 = getelementptr inbounds [3 x i32], [3 x i32]* %imin348, i32 0, i64 1
  %271 = load i32, i32* %arrayidx349, align 4
  %sub350 = sub nsw i32 %269, %271
  %add351 = add nsw i32 %sub350, 1
  br label %cond.end.353

cond.false.352:                                   ; preds = %cond.end.335
  br label %cond.end.353

cond.end.353:                                     ; preds = %cond.false.352, %cond.true.345
  %cond354 = phi i32 [ %add351, %cond.true.345 ], [ 0, %cond.false.352 ]
  %mul355 = mul nsw i32 %mul337, %cond354
  store i32 %mul355, i32* %hypre__sz1318, align 4
  %arrayidx357 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 0
  %272 = load i32, i32* %arrayidx357, align 4
  store i32 %272, i32* %hypre__nx356, align 4
  %arrayidx359 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 1
  %273 = load i32, i32* %arrayidx359, align 4
  store i32 %273, i32* %hypre__ny358, align 4
  %arrayidx361 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 2
  %274 = load i32, i32* %arrayidx361, align 4
  store i32 %274, i32* %hypre__nz360, align 4
  %275 = load i32, i32* %hypre__nx356, align 4
  store i32 %275, i32* %hypre__mx362, align 4
  %276 = load i32, i32* %hypre__ny358, align 4
  store i32 %276, i32* %hypre__my363, align 4
  %277 = load i32, i32* %hypre__nz360, align 4
  store i32 %277, i32* %hypre__mz364, align 4
  store i32 0, i32* %hypre__dir365, align 4
  %278 = load i32, i32* %hypre__nx356, align 4
  store i32 %278, i32* %hypre__max366, align 4
  %279 = load i32, i32* %hypre__ny358, align 4
  %280 = load i32, i32* %hypre__max366, align 4
  %cmp371 = icmp sgt i32 %279, %280
  br i1 %cmp371, label %if.then.372, label %if.end.373

if.then.372:                                      ; preds = %cond.end.353
  store i32 1, i32* %hypre__dir365, align 4
  %281 = load i32, i32* %hypre__ny358, align 4
  store i32 %281, i32* %hypre__max366, align 4
  br label %if.end.373

if.end.373:                                       ; preds = %if.then.372, %cond.end.353
  %282 = load i32, i32* %hypre__nz360, align 4
  %283 = load i32, i32* %hypre__max366, align 4
  %cmp374 = icmp sgt i32 %282, %283
  br i1 %cmp374, label %if.then.375, label %if.end.376

if.then.375:                                      ; preds = %if.end.373
  store i32 2, i32* %hypre__dir365, align 4
  %284 = load i32, i32* %hypre__nz360, align 4
  store i32 %284, i32* %hypre__max366, align 4
  br label %if.end.376

if.end.376:                                       ; preds = %if.then.375, %if.end.373
  store i32 1, i32* %hypre__num_blocks370, align 4
  %285 = load i32, i32* %hypre__max366, align 4
  %286 = load i32, i32* %hypre__num_blocks370, align 4
  %cmp377 = icmp slt i32 %285, %286
  br i1 %cmp377, label %if.then.378, label %if.end.379

if.then.378:                                      ; preds = %if.end.376
  %287 = load i32, i32* %hypre__max366, align 4
  store i32 %287, i32* %hypre__num_blocks370, align 4
  br label %if.end.379

if.end.379:                                       ; preds = %if.then.378, %if.end.376
  %288 = load i32, i32* %hypre__num_blocks370, align 4
  %cmp380 = icmp sgt i32 %288, 0
  br i1 %cmp380, label %if.then.381, label %if.end.384

if.then.381:                                      ; preds = %if.end.379
  %289 = load i32, i32* %hypre__max366, align 4
  %290 = load i32, i32* %hypre__num_blocks370, align 4
  %div382 = sdiv i32 %289, %290
  store i32 %div382, i32* %hypre__div367, align 4
  %291 = load i32, i32* %hypre__max366, align 4
  %292 = load i32, i32* %hypre__num_blocks370, align 4
  %rem383 = srem i32 %291, %292
  store i32 %rem383, i32* %hypre__mod368, align 4
  br label %if.end.384

if.end.384:                                       ; preds = %if.then.381, %if.end.379
  store i32 0, i32* %hypre__block369, align 4
  br label %for.cond.385

for.cond.385:                                     ; preds = %for.inc.465, %if.end.384
  %293 = load i32, i32* %hypre__block369, align 4
  %294 = load i32, i32* %hypre__num_blocks370, align 4
  %cmp386 = icmp slt i32 %293, %294
  br i1 %cmp386, label %for.body.387, label %for.end.467

for.body.387:                                     ; preds = %for.cond.385
  store i32 0, i32* %loopi, align 4
  store i32 0, i32* %loopj, align 4
  store i32 0, i32* %loopk, align 4
  %295 = load i32, i32* %hypre__mx362, align 4
  store i32 %295, i32* %hypre__nx356, align 4
  %296 = load i32, i32* %hypre__my363, align 4
  store i32 %296, i32* %hypre__ny358, align 4
  %297 = load i32, i32* %hypre__mz364, align 4
  store i32 %297, i32* %hypre__nz360, align 4
  %298 = load i32, i32* %hypre__num_blocks370, align 4
  %cmp388 = icmp sgt i32 %298, 1
  br i1 %cmp388, label %if.then.389, label %if.end.431

if.then.389:                                      ; preds = %for.body.387
  %299 = load i32, i32* %hypre__dir365, align 4
  %cmp390 = icmp eq i32 %299, 0
  br i1 %cmp390, label %if.then.391, label %if.else.402

if.then.391:                                      ; preds = %if.then.389
  %300 = load i32, i32* %hypre__block369, align 4
  %301 = load i32, i32* %hypre__div367, align 4
  %mul392 = mul nsw i32 %300, %301
  %302 = load i32, i32* %hypre__mod368, align 4
  %303 = load i32, i32* %hypre__block369, align 4
  %cmp393 = icmp slt i32 %302, %303
  br i1 %cmp393, label %cond.true.394, label %cond.false.395

cond.true.394:                                    ; preds = %if.then.391
  %304 = load i32, i32* %hypre__mod368, align 4
  br label %cond.end.396

cond.false.395:                                   ; preds = %if.then.391
  %305 = load i32, i32* %hypre__block369, align 4
  br label %cond.end.396

cond.end.396:                                     ; preds = %cond.false.395, %cond.true.394
  %cond397 = phi i32 [ %304, %cond.true.394 ], [ %305, %cond.false.395 ]
  %add398 = add nsw i32 %mul392, %cond397
  store i32 %add398, i32* %loopi, align 4
  %306 = load i32, i32* %hypre__div367, align 4
  %307 = load i32, i32* %hypre__mod368, align 4
  %308 = load i32, i32* %hypre__block369, align 4
  %cmp399 = icmp sgt i32 %307, %308
  %cond400 = select i1 %cmp399, i32 1, i32 0
  %add401 = add nsw i32 %306, %cond400
  store i32 %add401, i32* %hypre__nx356, align 4
  br label %if.end.430

if.else.402:                                      ; preds = %if.then.389
  %309 = load i32, i32* %hypre__dir365, align 4
  %cmp403 = icmp eq i32 %309, 1
  br i1 %cmp403, label %if.then.404, label %if.else.415

if.then.404:                                      ; preds = %if.else.402
  %310 = load i32, i32* %hypre__block369, align 4
  %311 = load i32, i32* %hypre__div367, align 4
  %mul405 = mul nsw i32 %310, %311
  %312 = load i32, i32* %hypre__mod368, align 4
  %313 = load i32, i32* %hypre__block369, align 4
  %cmp406 = icmp slt i32 %312, %313
  br i1 %cmp406, label %cond.true.407, label %cond.false.408

cond.true.407:                                    ; preds = %if.then.404
  %314 = load i32, i32* %hypre__mod368, align 4
  br label %cond.end.409

cond.false.408:                                   ; preds = %if.then.404
  %315 = load i32, i32* %hypre__block369, align 4
  br label %cond.end.409

cond.end.409:                                     ; preds = %cond.false.408, %cond.true.407
  %cond410 = phi i32 [ %314, %cond.true.407 ], [ %315, %cond.false.408 ]
  %add411 = add nsw i32 %mul405, %cond410
  store i32 %add411, i32* %loopj, align 4
  %316 = load i32, i32* %hypre__div367, align 4
  %317 = load i32, i32* %hypre__mod368, align 4
  %318 = load i32, i32* %hypre__block369, align 4
  %cmp412 = icmp sgt i32 %317, %318
  %cond413 = select i1 %cmp412, i32 1, i32 0
  %add414 = add nsw i32 %316, %cond413
  store i32 %add414, i32* %hypre__ny358, align 4
  br label %if.end.429

if.else.415:                                      ; preds = %if.else.402
  %319 = load i32, i32* %hypre__dir365, align 4
  %cmp416 = icmp eq i32 %319, 2
  br i1 %cmp416, label %if.then.417, label %if.end.428

if.then.417:                                      ; preds = %if.else.415
  %320 = load i32, i32* %hypre__block369, align 4
  %321 = load i32, i32* %hypre__div367, align 4
  %mul418 = mul nsw i32 %320, %321
  %322 = load i32, i32* %hypre__mod368, align 4
  %323 = load i32, i32* %hypre__block369, align 4
  %cmp419 = icmp slt i32 %322, %323
  br i1 %cmp419, label %cond.true.420, label %cond.false.421

cond.true.420:                                    ; preds = %if.then.417
  %324 = load i32, i32* %hypre__mod368, align 4
  br label %cond.end.422

cond.false.421:                                   ; preds = %if.then.417
  %325 = load i32, i32* %hypre__block369, align 4
  br label %cond.end.422

cond.end.422:                                     ; preds = %cond.false.421, %cond.true.420
  %cond423 = phi i32 [ %324, %cond.true.420 ], [ %325, %cond.false.421 ]
  %add424 = add nsw i32 %mul418, %cond423
  store i32 %add424, i32* %loopk, align 4
  %326 = load i32, i32* %hypre__div367, align 4
  %327 = load i32, i32* %hypre__mod368, align 4
  %328 = load i32, i32* %hypre__block369, align 4
  %cmp425 = icmp sgt i32 %327, %328
  %cond426 = select i1 %cmp425, i32 1, i32 0
  %add427 = add nsw i32 %326, %cond426
  store i32 %add427, i32* %hypre__nz360, align 4
  br label %if.end.428

if.end.428:                                       ; preds = %cond.end.422, %if.else.415
  br label %if.end.429

if.end.429:                                       ; preds = %if.end.428, %cond.end.409
  br label %if.end.430

if.end.430:                                       ; preds = %if.end.429, %cond.end.396
  br label %if.end.431

if.end.431:                                       ; preds = %if.end.430, %for.body.387
  %329 = load i32, i32* %hypre__i1start245, align 4
  %330 = load i32, i32* %loopi, align 4
  %331 = load i32, i32* %hypre__sx1296, align 4
  %mul432 = mul nsw i32 %330, %331
  %add433 = add nsw i32 %329, %mul432
  %332 = load i32, i32* %loopj, align 4
  %333 = load i32, i32* %hypre__sy1298, align 4
  %mul434 = mul nsw i32 %332, %333
  %add435 = add nsw i32 %add433, %mul434
  %334 = load i32, i32* %loopk, align 4
  %335 = load i32, i32* %hypre__sz1318, align 4
  %mul436 = mul nsw i32 %334, %335
  %add437 = add nsw i32 %add435, %mul436
  store i32 %add437, i32* %yi, align 4
  store i32 0, i32* %loopk, align 4
  br label %for.cond.438

for.cond.438:                                     ; preds = %for.inc.462, %if.end.431
  %336 = load i32, i32* %loopk, align 4
  %337 = load i32, i32* %hypre__nz360, align 4
  %cmp439 = icmp slt i32 %336, %337
  br i1 %cmp439, label %for.body.440, label %for.end.464

for.body.440:                                     ; preds = %for.cond.438
  store i32 0, i32* %loopj, align 4
  br label %for.cond.441

for.cond.441:                                     ; preds = %for.inc.456, %for.body.440
  %338 = load i32, i32* %loopj, align 4
  %339 = load i32, i32* %hypre__ny358, align 4
  %cmp442 = icmp slt i32 %338, %339
  br i1 %cmp442, label %for.body.443, label %for.end.458

for.body.443:                                     ; preds = %for.cond.441
  store i32 0, i32* %loopi, align 4
  br label %for.cond.444

for.cond.444:                                     ; preds = %for.inc.450, %for.body.443
  %340 = load i32, i32* %loopi, align 4
  %341 = load i32, i32* %hypre__nx356, align 4
  %cmp445 = icmp slt i32 %340, %341
  br i1 %cmp445, label %for.body.446, label %for.end.452

for.body.446:                                     ; preds = %for.cond.444
  %342 = load i32, i32* %yi, align 4
  %idxprom447 = sext i32 %342 to i64
  %343 = load double*, double** %yp, align 8
  %arrayidx448 = getelementptr inbounds double, double* %343, i64 %idxprom447
  store double 0.000000e+00, double* %arrayidx448, align 8
  %344 = load i32, i32* %hypre__sx1296, align 4
  %345 = load i32, i32* %yi, align 4
  %add449 = add nsw i32 %345, %344
  store i32 %add449, i32* %yi, align 4
  br label %for.inc.450

for.inc.450:                                      ; preds = %for.body.446
  %346 = load i32, i32* %loopi, align 4
  %inc451 = add nsw i32 %346, 1
  store i32 %inc451, i32* %loopi, align 4
  br label %for.cond.444

for.end.452:                                      ; preds = %for.cond.444
  %347 = load i32, i32* %hypre__sy1298, align 4
  %348 = load i32, i32* %hypre__nx356, align 4
  %349 = load i32, i32* %hypre__sx1296, align 4
  %mul453 = mul nsw i32 %348, %349
  %sub454 = sub nsw i32 %347, %mul453
  %350 = load i32, i32* %yi, align 4
  %add455 = add nsw i32 %350, %sub454
  store i32 %add455, i32* %yi, align 4
  br label %for.inc.456

for.inc.456:                                      ; preds = %for.end.452
  %351 = load i32, i32* %loopj, align 4
  %inc457 = add nsw i32 %351, 1
  store i32 %inc457, i32* %loopj, align 4
  br label %for.cond.441

for.end.458:                                      ; preds = %for.cond.441
  %352 = load i32, i32* %hypre__sz1318, align 4
  %353 = load i32, i32* %hypre__ny358, align 4
  %354 = load i32, i32* %hypre__sy1298, align 4
  %mul459 = mul nsw i32 %353, %354
  %sub460 = sub nsw i32 %352, %mul459
  %355 = load i32, i32* %yi, align 4
  %add461 = add nsw i32 %355, %sub460
  store i32 %add461, i32* %yi, align 4
  br label %for.inc.462

for.inc.462:                                      ; preds = %for.end.458
  %356 = load i32, i32* %loopk, align 4
  %inc463 = add nsw i32 %356, 1
  store i32 %inc463, i32* %loopk, align 4
  br label %for.cond.438

for.end.464:                                      ; preds = %for.cond.438
  br label %for.inc.465

for.inc.465:                                      ; preds = %for.end.464
  %357 = load i32, i32* %hypre__block369, align 4
  %inc466 = add nsw i32 %357, 1
  store i32 %inc466, i32* %hypre__block369, align 4
  br label %for.cond.385

for.end.467:                                      ; preds = %for.cond.385
  br label %if.end.695

if.else.468:                                      ; preds = %for.body.225
  %358 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %arraydecay469 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i32 0
  %call470 = call i32 @hypre_BoxGetSize(%struct.hypre_Box_struct* %358, i32* %arraydecay469)
  %359 = load i32*, i32** %start, align 8
  %arrayidx472 = getelementptr inbounds i32, i32* %359, i64 0
  %360 = load i32, i32* %arrayidx472, align 4
  %361 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin473 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %361, i32 0, i32 0
  %arrayidx474 = getelementptr inbounds [3 x i32], [3 x i32]* %imin473, i32 0, i64 0
  %362 = load i32, i32* %arrayidx474, align 4
  %sub475 = sub nsw i32 %360, %362
  %363 = load i32*, i32** %start, align 8
  %arrayidx476 = getelementptr inbounds i32, i32* %363, i64 1
  %364 = load i32, i32* %arrayidx476, align 4
  %365 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin477 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %365, i32 0, i32 0
  %arrayidx478 = getelementptr inbounds [3 x i32], [3 x i32]* %imin477, i32 0, i64 1
  %366 = load i32, i32* %arrayidx478, align 4
  %sub479 = sub nsw i32 %364, %366
  %367 = load i32*, i32** %start, align 8
  %arrayidx480 = getelementptr inbounds i32, i32* %367, i64 2
  %368 = load i32, i32* %arrayidx480, align 4
  %369 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin481 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %369, i32 0, i32 0
  %arrayidx482 = getelementptr inbounds [3 x i32], [3 x i32]* %imin481, i32 0, i64 2
  %370 = load i32, i32* %arrayidx482, align 4
  %sub483 = sub nsw i32 %368, %370
  %371 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax484 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %371, i32 0, i32 1
  %arrayidx485 = getelementptr inbounds [3 x i32], [3 x i32]* %imax484, i32 0, i64 1
  %372 = load i32, i32* %arrayidx485, align 4
  %373 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin486 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %373, i32 0, i32 0
  %arrayidx487 = getelementptr inbounds [3 x i32], [3 x i32]* %imin486, i32 0, i64 1
  %374 = load i32, i32* %arrayidx487, align 4
  %sub488 = sub nsw i32 %372, %374
  %add489 = add nsw i32 %sub488, 1
  %cmp490 = icmp slt i32 0, %add489
  br i1 %cmp490, label %cond.true.491, label %cond.false.498

cond.true.491:                                    ; preds = %if.else.468
  %375 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax492 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %375, i32 0, i32 1
  %arrayidx493 = getelementptr inbounds [3 x i32], [3 x i32]* %imax492, i32 0, i64 1
  %376 = load i32, i32* %arrayidx493, align 4
  %377 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin494 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %377, i32 0, i32 0
  %arrayidx495 = getelementptr inbounds [3 x i32], [3 x i32]* %imin494, i32 0, i64 1
  %378 = load i32, i32* %arrayidx495, align 4
  %sub496 = sub nsw i32 %376, %378
  %add497 = add nsw i32 %sub496, 1
  br label %cond.end.499

cond.false.498:                                   ; preds = %if.else.468
  br label %cond.end.499

cond.end.499:                                     ; preds = %cond.false.498, %cond.true.491
  %cond500 = phi i32 [ %add497, %cond.true.491 ], [ 0, %cond.false.498 ]
  %mul501 = mul nsw i32 %sub483, %cond500
  %add502 = add nsw i32 %sub479, %mul501
  %379 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax503 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %379, i32 0, i32 1
  %arrayidx504 = getelementptr inbounds [3 x i32], [3 x i32]* %imax503, i32 0, i64 0
  %380 = load i32, i32* %arrayidx504, align 4
  %381 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin505 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %381, i32 0, i32 0
  %arrayidx506 = getelementptr inbounds [3 x i32], [3 x i32]* %imin505, i32 0, i64 0
  %382 = load i32, i32* %arrayidx506, align 4
  %sub507 = sub nsw i32 %380, %382
  %add508 = add nsw i32 %sub507, 1
  %cmp509 = icmp slt i32 0, %add508
  br i1 %cmp509, label %cond.true.510, label %cond.false.517

cond.true.510:                                    ; preds = %cond.end.499
  %383 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax511 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %383, i32 0, i32 1
  %arrayidx512 = getelementptr inbounds [3 x i32], [3 x i32]* %imax511, i32 0, i64 0
  %384 = load i32, i32* %arrayidx512, align 4
  %385 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin513 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %385, i32 0, i32 0
  %arrayidx514 = getelementptr inbounds [3 x i32], [3 x i32]* %imin513, i32 0, i64 0
  %386 = load i32, i32* %arrayidx514, align 4
  %sub515 = sub nsw i32 %384, %386
  %add516 = add nsw i32 %sub515, 1
  br label %cond.end.518

cond.false.517:                                   ; preds = %cond.end.499
  br label %cond.end.518

cond.end.518:                                     ; preds = %cond.false.517, %cond.true.510
  %cond519 = phi i32 [ %add516, %cond.true.510 ], [ 0, %cond.false.517 ]
  %mul520 = mul nsw i32 %add502, %cond519
  %add521 = add nsw i32 %sub475, %mul520
  store i32 %add521, i32* %hypre__i1start471, align 4
  %387 = load i32*, i32** %stride, align 8
  %arrayidx523 = getelementptr inbounds i32, i32* %387, i64 0
  %388 = load i32, i32* %arrayidx523, align 4
  store i32 %388, i32* %hypre__sx1522, align 4
  %389 = load i32*, i32** %stride, align 8
  %arrayidx525 = getelementptr inbounds i32, i32* %389, i64 1
  %390 = load i32, i32* %arrayidx525, align 4
  %391 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax526 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %391, i32 0, i32 1
  %arrayidx527 = getelementptr inbounds [3 x i32], [3 x i32]* %imax526, i32 0, i64 0
  %392 = load i32, i32* %arrayidx527, align 4
  %393 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin528 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %393, i32 0, i32 0
  %arrayidx529 = getelementptr inbounds [3 x i32], [3 x i32]* %imin528, i32 0, i64 0
  %394 = load i32, i32* %arrayidx529, align 4
  %sub530 = sub nsw i32 %392, %394
  %add531 = add nsw i32 %sub530, 1
  %cmp532 = icmp slt i32 0, %add531
  br i1 %cmp532, label %cond.true.533, label %cond.false.540

cond.true.533:                                    ; preds = %cond.end.518
  %395 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax534 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %395, i32 0, i32 1
  %arrayidx535 = getelementptr inbounds [3 x i32], [3 x i32]* %imax534, i32 0, i64 0
  %396 = load i32, i32* %arrayidx535, align 4
  %397 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin536 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %397, i32 0, i32 0
  %arrayidx537 = getelementptr inbounds [3 x i32], [3 x i32]* %imin536, i32 0, i64 0
  %398 = load i32, i32* %arrayidx537, align 4
  %sub538 = sub nsw i32 %396, %398
  %add539 = add nsw i32 %sub538, 1
  br label %cond.end.541

cond.false.540:                                   ; preds = %cond.end.518
  br label %cond.end.541

cond.end.541:                                     ; preds = %cond.false.540, %cond.true.533
  %cond542 = phi i32 [ %add539, %cond.true.533 ], [ 0, %cond.false.540 ]
  %mul543 = mul nsw i32 %390, %cond542
  store i32 %mul543, i32* %hypre__sy1524, align 4
  %399 = load i32*, i32** %stride, align 8
  %arrayidx545 = getelementptr inbounds i32, i32* %399, i64 2
  %400 = load i32, i32* %arrayidx545, align 4
  %401 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax546 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %401, i32 0, i32 1
  %arrayidx547 = getelementptr inbounds [3 x i32], [3 x i32]* %imax546, i32 0, i64 0
  %402 = load i32, i32* %arrayidx547, align 4
  %403 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin548 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %403, i32 0, i32 0
  %arrayidx549 = getelementptr inbounds [3 x i32], [3 x i32]* %imin548, i32 0, i64 0
  %404 = load i32, i32* %arrayidx549, align 4
  %sub550 = sub nsw i32 %402, %404
  %add551 = add nsw i32 %sub550, 1
  %cmp552 = icmp slt i32 0, %add551
  br i1 %cmp552, label %cond.true.553, label %cond.false.560

cond.true.553:                                    ; preds = %cond.end.541
  %405 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax554 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %405, i32 0, i32 1
  %arrayidx555 = getelementptr inbounds [3 x i32], [3 x i32]* %imax554, i32 0, i64 0
  %406 = load i32, i32* %arrayidx555, align 4
  %407 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin556 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %407, i32 0, i32 0
  %arrayidx557 = getelementptr inbounds [3 x i32], [3 x i32]* %imin556, i32 0, i64 0
  %408 = load i32, i32* %arrayidx557, align 4
  %sub558 = sub nsw i32 %406, %408
  %add559 = add nsw i32 %sub558, 1
  br label %cond.end.561

cond.false.560:                                   ; preds = %cond.end.541
  br label %cond.end.561

cond.end.561:                                     ; preds = %cond.false.560, %cond.true.553
  %cond562 = phi i32 [ %add559, %cond.true.553 ], [ 0, %cond.false.560 ]
  %mul563 = mul nsw i32 %400, %cond562
  %409 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax564 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %409, i32 0, i32 1
  %arrayidx565 = getelementptr inbounds [3 x i32], [3 x i32]* %imax564, i32 0, i64 1
  %410 = load i32, i32* %arrayidx565, align 4
  %411 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin566 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %411, i32 0, i32 0
  %arrayidx567 = getelementptr inbounds [3 x i32], [3 x i32]* %imin566, i32 0, i64 1
  %412 = load i32, i32* %arrayidx567, align 4
  %sub568 = sub nsw i32 %410, %412
  %add569 = add nsw i32 %sub568, 1
  %cmp570 = icmp slt i32 0, %add569
  br i1 %cmp570, label %cond.true.571, label %cond.false.578

cond.true.571:                                    ; preds = %cond.end.561
  %413 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax572 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %413, i32 0, i32 1
  %arrayidx573 = getelementptr inbounds [3 x i32], [3 x i32]* %imax572, i32 0, i64 1
  %414 = load i32, i32* %arrayidx573, align 4
  %415 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin574 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %415, i32 0, i32 0
  %arrayidx575 = getelementptr inbounds [3 x i32], [3 x i32]* %imin574, i32 0, i64 1
  %416 = load i32, i32* %arrayidx575, align 4
  %sub576 = sub nsw i32 %414, %416
  %add577 = add nsw i32 %sub576, 1
  br label %cond.end.579

cond.false.578:                                   ; preds = %cond.end.561
  br label %cond.end.579

cond.end.579:                                     ; preds = %cond.false.578, %cond.true.571
  %cond580 = phi i32 [ %add577, %cond.true.571 ], [ 0, %cond.false.578 ]
  %mul581 = mul nsw i32 %mul563, %cond580
  store i32 %mul581, i32* %hypre__sz1544, align 4
  %arrayidx583 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 0
  %417 = load i32, i32* %arrayidx583, align 4
  store i32 %417, i32* %hypre__nx582, align 4
  %arrayidx585 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 1
  %418 = load i32, i32* %arrayidx585, align 4
  store i32 %418, i32* %hypre__ny584, align 4
  %arrayidx587 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 2
  %419 = load i32, i32* %arrayidx587, align 4
  store i32 %419, i32* %hypre__nz586, align 4
  %420 = load i32, i32* %hypre__nx582, align 4
  store i32 %420, i32* %hypre__mx588, align 4
  %421 = load i32, i32* %hypre__ny584, align 4
  store i32 %421, i32* %hypre__my589, align 4
  %422 = load i32, i32* %hypre__nz586, align 4
  store i32 %422, i32* %hypre__mz590, align 4
  store i32 0, i32* %hypre__dir591, align 4
  %423 = load i32, i32* %hypre__nx582, align 4
  store i32 %423, i32* %hypre__max592, align 4
  %424 = load i32, i32* %hypre__ny584, align 4
  %425 = load i32, i32* %hypre__max592, align 4
  %cmp597 = icmp sgt i32 %424, %425
  br i1 %cmp597, label %if.then.598, label %if.end.599

if.then.598:                                      ; preds = %cond.end.579
  store i32 1, i32* %hypre__dir591, align 4
  %426 = load i32, i32* %hypre__ny584, align 4
  store i32 %426, i32* %hypre__max592, align 4
  br label %if.end.599

if.end.599:                                       ; preds = %if.then.598, %cond.end.579
  %427 = load i32, i32* %hypre__nz586, align 4
  %428 = load i32, i32* %hypre__max592, align 4
  %cmp600 = icmp sgt i32 %427, %428
  br i1 %cmp600, label %if.then.601, label %if.end.602

if.then.601:                                      ; preds = %if.end.599
  store i32 2, i32* %hypre__dir591, align 4
  %429 = load i32, i32* %hypre__nz586, align 4
  store i32 %429, i32* %hypre__max592, align 4
  br label %if.end.602

if.end.602:                                       ; preds = %if.then.601, %if.end.599
  store i32 1, i32* %hypre__num_blocks596, align 4
  %430 = load i32, i32* %hypre__max592, align 4
  %431 = load i32, i32* %hypre__num_blocks596, align 4
  %cmp603 = icmp slt i32 %430, %431
  br i1 %cmp603, label %if.then.604, label %if.end.605

if.then.604:                                      ; preds = %if.end.602
  %432 = load i32, i32* %hypre__max592, align 4
  store i32 %432, i32* %hypre__num_blocks596, align 4
  br label %if.end.605

if.end.605:                                       ; preds = %if.then.604, %if.end.602
  %433 = load i32, i32* %hypre__num_blocks596, align 4
  %cmp606 = icmp sgt i32 %433, 0
  br i1 %cmp606, label %if.then.607, label %if.end.610

if.then.607:                                      ; preds = %if.end.605
  %434 = load i32, i32* %hypre__max592, align 4
  %435 = load i32, i32* %hypre__num_blocks596, align 4
  %div608 = sdiv i32 %434, %435
  store i32 %div608, i32* %hypre__div593, align 4
  %436 = load i32, i32* %hypre__max592, align 4
  %437 = load i32, i32* %hypre__num_blocks596, align 4
  %rem609 = srem i32 %436, %437
  store i32 %rem609, i32* %hypre__mod594, align 4
  br label %if.end.610

if.end.610:                                       ; preds = %if.then.607, %if.end.605
  store i32 0, i32* %hypre__block595, align 4
  br label %for.cond.611

for.cond.611:                                     ; preds = %for.inc.692, %if.end.610
  %438 = load i32, i32* %hypre__block595, align 4
  %439 = load i32, i32* %hypre__num_blocks596, align 4
  %cmp612 = icmp slt i32 %438, %439
  br i1 %cmp612, label %for.body.613, label %for.end.694

for.body.613:                                     ; preds = %for.cond.611
  store i32 0, i32* %loopi, align 4
  store i32 0, i32* %loopj, align 4
  store i32 0, i32* %loopk, align 4
  %440 = load i32, i32* %hypre__mx588, align 4
  store i32 %440, i32* %hypre__nx582, align 4
  %441 = load i32, i32* %hypre__my589, align 4
  store i32 %441, i32* %hypre__ny584, align 4
  %442 = load i32, i32* %hypre__mz590, align 4
  store i32 %442, i32* %hypre__nz586, align 4
  %443 = load i32, i32* %hypre__num_blocks596, align 4
  %cmp614 = icmp sgt i32 %443, 1
  br i1 %cmp614, label %if.then.615, label %if.end.657

if.then.615:                                      ; preds = %for.body.613
  %444 = load i32, i32* %hypre__dir591, align 4
  %cmp616 = icmp eq i32 %444, 0
  br i1 %cmp616, label %if.then.617, label %if.else.628

if.then.617:                                      ; preds = %if.then.615
  %445 = load i32, i32* %hypre__block595, align 4
  %446 = load i32, i32* %hypre__div593, align 4
  %mul618 = mul nsw i32 %445, %446
  %447 = load i32, i32* %hypre__mod594, align 4
  %448 = load i32, i32* %hypre__block595, align 4
  %cmp619 = icmp slt i32 %447, %448
  br i1 %cmp619, label %cond.true.620, label %cond.false.621

cond.true.620:                                    ; preds = %if.then.617
  %449 = load i32, i32* %hypre__mod594, align 4
  br label %cond.end.622

cond.false.621:                                   ; preds = %if.then.617
  %450 = load i32, i32* %hypre__block595, align 4
  br label %cond.end.622

cond.end.622:                                     ; preds = %cond.false.621, %cond.true.620
  %cond623 = phi i32 [ %449, %cond.true.620 ], [ %450, %cond.false.621 ]
  %add624 = add nsw i32 %mul618, %cond623
  store i32 %add624, i32* %loopi, align 4
  %451 = load i32, i32* %hypre__div593, align 4
  %452 = load i32, i32* %hypre__mod594, align 4
  %453 = load i32, i32* %hypre__block595, align 4
  %cmp625 = icmp sgt i32 %452, %453
  %cond626 = select i1 %cmp625, i32 1, i32 0
  %add627 = add nsw i32 %451, %cond626
  store i32 %add627, i32* %hypre__nx582, align 4
  br label %if.end.656

if.else.628:                                      ; preds = %if.then.615
  %454 = load i32, i32* %hypre__dir591, align 4
  %cmp629 = icmp eq i32 %454, 1
  br i1 %cmp629, label %if.then.630, label %if.else.641

if.then.630:                                      ; preds = %if.else.628
  %455 = load i32, i32* %hypre__block595, align 4
  %456 = load i32, i32* %hypre__div593, align 4
  %mul631 = mul nsw i32 %455, %456
  %457 = load i32, i32* %hypre__mod594, align 4
  %458 = load i32, i32* %hypre__block595, align 4
  %cmp632 = icmp slt i32 %457, %458
  br i1 %cmp632, label %cond.true.633, label %cond.false.634

cond.true.633:                                    ; preds = %if.then.630
  %459 = load i32, i32* %hypre__mod594, align 4
  br label %cond.end.635

cond.false.634:                                   ; preds = %if.then.630
  %460 = load i32, i32* %hypre__block595, align 4
  br label %cond.end.635

cond.end.635:                                     ; preds = %cond.false.634, %cond.true.633
  %cond636 = phi i32 [ %459, %cond.true.633 ], [ %460, %cond.false.634 ]
  %add637 = add nsw i32 %mul631, %cond636
  store i32 %add637, i32* %loopj, align 4
  %461 = load i32, i32* %hypre__div593, align 4
  %462 = load i32, i32* %hypre__mod594, align 4
  %463 = load i32, i32* %hypre__block595, align 4
  %cmp638 = icmp sgt i32 %462, %463
  %cond639 = select i1 %cmp638, i32 1, i32 0
  %add640 = add nsw i32 %461, %cond639
  store i32 %add640, i32* %hypre__ny584, align 4
  br label %if.end.655

if.else.641:                                      ; preds = %if.else.628
  %464 = load i32, i32* %hypre__dir591, align 4
  %cmp642 = icmp eq i32 %464, 2
  br i1 %cmp642, label %if.then.643, label %if.end.654

if.then.643:                                      ; preds = %if.else.641
  %465 = load i32, i32* %hypre__block595, align 4
  %466 = load i32, i32* %hypre__div593, align 4
  %mul644 = mul nsw i32 %465, %466
  %467 = load i32, i32* %hypre__mod594, align 4
  %468 = load i32, i32* %hypre__block595, align 4
  %cmp645 = icmp slt i32 %467, %468
  br i1 %cmp645, label %cond.true.646, label %cond.false.647

cond.true.646:                                    ; preds = %if.then.643
  %469 = load i32, i32* %hypre__mod594, align 4
  br label %cond.end.648

cond.false.647:                                   ; preds = %if.then.643
  %470 = load i32, i32* %hypre__block595, align 4
  br label %cond.end.648

cond.end.648:                                     ; preds = %cond.false.647, %cond.true.646
  %cond649 = phi i32 [ %469, %cond.true.646 ], [ %470, %cond.false.647 ]
  %add650 = add nsw i32 %mul644, %cond649
  store i32 %add650, i32* %loopk, align 4
  %471 = load i32, i32* %hypre__div593, align 4
  %472 = load i32, i32* %hypre__mod594, align 4
  %473 = load i32, i32* %hypre__block595, align 4
  %cmp651 = icmp sgt i32 %472, %473
  %cond652 = select i1 %cmp651, i32 1, i32 0
  %add653 = add nsw i32 %471, %cond652
  store i32 %add653, i32* %hypre__nz586, align 4
  br label %if.end.654

if.end.654:                                       ; preds = %cond.end.648, %if.else.641
  br label %if.end.655

if.end.655:                                       ; preds = %if.end.654, %cond.end.635
  br label %if.end.656

if.end.656:                                       ; preds = %if.end.655, %cond.end.622
  br label %if.end.657

if.end.657:                                       ; preds = %if.end.656, %for.body.613
  %474 = load i32, i32* %hypre__i1start471, align 4
  %475 = load i32, i32* %loopi, align 4
  %476 = load i32, i32* %hypre__sx1522, align 4
  %mul658 = mul nsw i32 %475, %476
  %add659 = add nsw i32 %474, %mul658
  %477 = load i32, i32* %loopj, align 4
  %478 = load i32, i32* %hypre__sy1524, align 4
  %mul660 = mul nsw i32 %477, %478
  %add661 = add nsw i32 %add659, %mul660
  %479 = load i32, i32* %loopk, align 4
  %480 = load i32, i32* %hypre__sz1544, align 4
  %mul662 = mul nsw i32 %479, %480
  %add663 = add nsw i32 %add661, %mul662
  store i32 %add663, i32* %yi, align 4
  store i32 0, i32* %loopk, align 4
  br label %for.cond.664

for.cond.664:                                     ; preds = %for.inc.689, %if.end.657
  %481 = load i32, i32* %loopk, align 4
  %482 = load i32, i32* %hypre__nz586, align 4
  %cmp665 = icmp slt i32 %481, %482
  br i1 %cmp665, label %for.body.666, label %for.end.691

for.body.666:                                     ; preds = %for.cond.664
  store i32 0, i32* %loopj, align 4
  br label %for.cond.667

for.cond.667:                                     ; preds = %for.inc.683, %for.body.666
  %483 = load i32, i32* %loopj, align 4
  %484 = load i32, i32* %hypre__ny584, align 4
  %cmp668 = icmp slt i32 %483, %484
  br i1 %cmp668, label %for.body.669, label %for.end.685

for.body.669:                                     ; preds = %for.cond.667
  store i32 0, i32* %loopi, align 4
  br label %for.cond.670

for.cond.670:                                     ; preds = %for.inc.677, %for.body.669
  %485 = load i32, i32* %loopi, align 4
  %486 = load i32, i32* %hypre__nx582, align 4
  %cmp671 = icmp slt i32 %485, %486
  br i1 %cmp671, label %for.body.672, label %for.end.679

for.body.672:                                     ; preds = %for.cond.670
  %487 = load double, double* %temp, align 8
  %488 = load i32, i32* %yi, align 4
  %idxprom673 = sext i32 %488 to i64
  %489 = load double*, double** %yp, align 8
  %arrayidx674 = getelementptr inbounds double, double* %489, i64 %idxprom673
  %490 = load double, double* %arrayidx674, align 8
  %mul675 = fmul double %490, %487
  store double %mul675, double* %arrayidx674, align 8
  %491 = load i32, i32* %hypre__sx1522, align 4
  %492 = load i32, i32* %yi, align 4
  %add676 = add nsw i32 %492, %491
  store i32 %add676, i32* %yi, align 4
  br label %for.inc.677

for.inc.677:                                      ; preds = %for.body.672
  %493 = load i32, i32* %loopi, align 4
  %inc678 = add nsw i32 %493, 1
  store i32 %inc678, i32* %loopi, align 4
  br label %for.cond.670

for.end.679:                                      ; preds = %for.cond.670
  %494 = load i32, i32* %hypre__sy1524, align 4
  %495 = load i32, i32* %hypre__nx582, align 4
  %496 = load i32, i32* %hypre__sx1522, align 4
  %mul680 = mul nsw i32 %495, %496
  %sub681 = sub nsw i32 %494, %mul680
  %497 = load i32, i32* %yi, align 4
  %add682 = add nsw i32 %497, %sub681
  store i32 %add682, i32* %yi, align 4
  br label %for.inc.683

for.inc.683:                                      ; preds = %for.end.679
  %498 = load i32, i32* %loopj, align 4
  %inc684 = add nsw i32 %498, 1
  store i32 %inc684, i32* %loopj, align 4
  br label %for.cond.667

for.end.685:                                      ; preds = %for.cond.667
  %499 = load i32, i32* %hypre__sz1544, align 4
  %500 = load i32, i32* %hypre__ny584, align 4
  %501 = load i32, i32* %hypre__sy1524, align 4
  %mul686 = mul nsw i32 %500, %501
  %sub687 = sub nsw i32 %499, %mul686
  %502 = load i32, i32* %yi, align 4
  %add688 = add nsw i32 %502, %sub687
  store i32 %add688, i32* %yi, align 4
  br label %for.inc.689

for.inc.689:                                      ; preds = %for.end.685
  %503 = load i32, i32* %loopk, align 4
  %inc690 = add nsw i32 %503, 1
  store i32 %inc690, i32* %loopk, align 4
  br label %for.cond.664

for.end.691:                                      ; preds = %for.cond.664
  br label %for.inc.692

for.inc.692:                                      ; preds = %for.end.691
  %504 = load i32, i32* %hypre__block595, align 4
  %inc693 = add nsw i32 %504, 1
  store i32 %inc693, i32* %hypre__block595, align 4
  br label %for.cond.611

for.end.694:                                      ; preds = %for.cond.611
  br label %if.end.695

if.end.695:                                       ; preds = %for.end.694, %for.end.467
  br label %for.inc.696

for.inc.696:                                      ; preds = %if.end.695
  %505 = load i32, i32* %i, align 4
  %inc697 = add nsw i32 %505, 1
  store i32 %inc697, i32* %i, align 4
  br label %for.cond.222

for.end.698:                                      ; preds = %for.cond.222
  br label %if.end.699

if.end.699:                                       ; preds = %for.end.698, %sw.bb
  br label %sw.epilog

sw.bb.700:                                        ; preds = %for.body.214
  %506 = load %struct.hypre_CommHandle_struct*, %struct.hypre_CommHandle_struct** %comm_handle, align 8
  %call701 = call i32 @hypre_FinalizeIndtComputations(%struct.hypre_CommHandle_struct* %506)
  %507 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %compute_pkg, align 8
  %dept_boxes = getelementptr inbounds %struct.hypre_ComputePkg_struct, %struct.hypre_ComputePkg_struct* %507, i32 0, i32 2
  %508 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %dept_boxes, align 8
  store %struct.hypre_BoxArrayArray_struct* %508, %struct.hypre_BoxArrayArray_struct** %compute_box_aa, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body.214, %sw.bb.700, %if.end.699
  store i32 0, i32* %i, align 4
  br label %for.cond.702

for.cond.702:                                     ; preds = %for.inc.6131, %sw.epilog
  %509 = load i32, i32* %i, align 4
  %510 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %compute_box_aa, align 8
  %size703 = getelementptr inbounds %struct.hypre_BoxArrayArray_struct, %struct.hypre_BoxArrayArray_struct* %510, i32 0, i32 1
  %511 = load i32, i32* %size703, align 4
  %cmp704 = icmp slt i32 %509, %511
  br i1 %cmp704, label %for.body.705, label %for.end.6133

for.body.705:                                     ; preds = %for.cond.702
  %512 = load i32, i32* %i, align 4
  %idxprom706 = sext i32 %512 to i64
  %513 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %compute_box_aa, align 8
  %box_arrays = getelementptr inbounds %struct.hypre_BoxArrayArray_struct, %struct.hypre_BoxArrayArray_struct* %513, i32 0, i32 0
  %514 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %box_arrays, align 8
  %arrayidx707 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %514, i64 %idxprom706
  %515 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx707, align 8
  store %struct.hypre_BoxArray_struct* %515, %struct.hypre_BoxArray_struct** %compute_box_a, align 8
  %516 = load i32, i32* %i, align 4
  %idxprom708 = sext i32 %516 to i64
  %517 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data_space709 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %517, i32 0, i32 5
  %518 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space709, align 8
  %boxes710 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %518, i32 0, i32 0
  %519 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes710, align 8
  %arrayidx711 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %519, i64 %idxprom708
  store %struct.hypre_Box_struct* %arrayidx711, %struct.hypre_Box_struct** %A_data_box, align 8
  %520 = load i32, i32* %i, align 4
  %idxprom712 = sext i32 %520 to i64
  %521 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %data_space713 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %521, i32 0, i32 2
  %522 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space713, align 8
  %boxes714 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %522, i32 0, i32 0
  %523 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes714, align 8
  %arrayidx715 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %523, i64 %idxprom712
  store %struct.hypre_Box_struct* %arrayidx715, %struct.hypre_Box_struct** %x_data_box, align 8
  %524 = load i32, i32* %i, align 4
  %idxprom716 = sext i32 %524 to i64
  %525 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %y.addr, align 8
  %data_space717 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %525, i32 0, i32 2
  %526 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space717, align 8
  %boxes718 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %526, i32 0, i32 0
  %527 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes718, align 8
  %arrayidx719 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %527, i64 %idxprom716
  store %struct.hypre_Box_struct* %arrayidx719, %struct.hypre_Box_struct** %y_data_box, align 8
  %528 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %data720 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %528, i32 0, i32 3
  %529 = load double*, double** %data720, align 8
  %530 = load i32, i32* %i, align 4
  %idxprom721 = sext i32 %530 to i64
  %531 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %data_indices722 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %531, i32 0, i32 6
  %532 = load i32*, i32** %data_indices722, align 8
  %arrayidx723 = getelementptr inbounds i32, i32* %532, i64 %idxprom721
  %533 = load i32, i32* %arrayidx723, align 4
  %idx.ext724 = sext i32 %533 to i64
  %add.ptr725 = getelementptr inbounds double, double* %529, i64 %idx.ext724
  store double* %add.ptr725, double** %xp, align 8
  %534 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %y.addr, align 8
  %data726 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %534, i32 0, i32 3
  %535 = load double*, double** %data726, align 8
  %536 = load i32, i32* %i, align 4
  %idxprom727 = sext i32 %536 to i64
  %537 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %y.addr, align 8
  %data_indices728 = getelementptr inbounds %struct.hypre_StructVector_struct, %struct.hypre_StructVector_struct* %537, i32 0, i32 6
  %538 = load i32*, i32** %data_indices728, align 8
  %arrayidx729 = getelementptr inbounds i32, i32* %538, i64 %idxprom727
  %539 = load i32, i32* %arrayidx729, align 4
  %idx.ext730 = sext i32 %539 to i64
  %add.ptr731 = getelementptr inbounds double, double* %535, i64 %idx.ext730
  store double* %add.ptr731, double** %yp, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.732

for.cond.732:                                     ; preds = %for.inc.6128, %for.body.705
  %540 = load i32, i32* %j, align 4
  %541 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %compute_box_a, align 8
  %size733 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %541, i32 0, i32 1
  %542 = load i32, i32* %size733, align 4
  %cmp734 = icmp slt i32 %540, %542
  br i1 %cmp734, label %for.body.735, label %for.end.6130

for.body.735:                                     ; preds = %for.cond.732
  %543 = load i32, i32* %j, align 4
  %idxprom736 = sext i32 %543 to i64
  %544 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %compute_box_a, align 8
  %boxes737 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %544, i32 0, i32 0
  %545 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes737, align 8
  %arrayidx738 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %545, i64 %idxprom736
  store %struct.hypre_Box_struct* %arrayidx738, %struct.hypre_Box_struct** %compute_box, align 8
  %546 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %compute_box, align 8
  %arraydecay739 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i32 0
  %call740 = call i32 @hypre_BoxGetSize(%struct.hypre_Box_struct* %546, i32* %arraydecay739)
  %547 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %compute_box, align 8
  %imin741 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %547, i32 0, i32 0
  %arraydecay742 = getelementptr inbounds [3 x i32], [3 x i32]* %imin741, i32 0, i32 0
  store i32* %arraydecay742, i32** %start, align 8
  store i32 0, i32* %si, align 4
  br label %for.cond.743

for.cond.743:                                     ; preds = %for.inc.5898, %for.body.735
  %548 = load i32, i32* %si, align 4
  %549 = load i32, i32* %stencil_size, align 4
  %cmp744 = icmp slt i32 %548, %549
  br i1 %cmp744, label %for.body.745, label %for.end.5900

for.body.745:                                     ; preds = %for.cond.743
  %550 = load i32, i32* %stencil_size, align 4
  %551 = load i32, i32* %si, align 4
  %sub746 = sub nsw i32 %550, %551
  %cmp747 = icmp slt i32 7, %sub746
  br i1 %cmp747, label %cond.true.748, label %cond.false.749

cond.true.748:                                    ; preds = %for.body.745
  br label %cond.end.751

cond.false.749:                                   ; preds = %for.body.745
  %552 = load i32, i32* %stencil_size, align 4
  %553 = load i32, i32* %si, align 4
  %sub750 = sub nsw i32 %552, %553
  br label %cond.end.751

cond.end.751:                                     ; preds = %cond.false.749, %cond.true.748
  %cond752 = phi i32 [ 7, %cond.true.748 ], [ %sub750, %cond.false.749 ]
  store i32 %cond752, i32* %depth, align 4
  %554 = load i32, i32* %depth, align 4
  switch i32 %554, label %sw.epilog.5897 [
    i32 7, label %sw.bb.753
    i32 6, label %sw.bb.1679
    i32 5, label %sw.bb.2547
    i32 4, label %sw.bb.3349
    i32 3, label %sw.bb.4085
    i32 2, label %sw.bb.4755
    i32 1, label %sw.bb.5359
  ]

sw.bb.753:                                        ; preds = %cond.end.751
  %555 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data754 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %555, i32 0, i32 6
  %556 = load double*, double** %data754, align 8
  %557 = load i32, i32* %si, align 4
  %add755 = add nsw i32 %557, 0
  %idxprom756 = sext i32 %add755 to i64
  %558 = load i32, i32* %i, align 4
  %idxprom757 = sext i32 %558 to i64
  %559 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data_indices758 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %559, i32 0, i32 9
  %560 = load i32**, i32*** %data_indices758, align 8
  %arrayidx759 = getelementptr inbounds i32*, i32** %560, i64 %idxprom757
  %561 = load i32*, i32** %arrayidx759, align 8
  %arrayidx760 = getelementptr inbounds i32, i32* %561, i64 %idxprom756
  %562 = load i32, i32* %arrayidx760, align 4
  %idx.ext761 = sext i32 %562 to i64
  %add.ptr762 = getelementptr inbounds double, double* %556, i64 %idx.ext761
  store double* %add.ptr762, double** %Ap0, align 8
  %563 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data763 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %563, i32 0, i32 6
  %564 = load double*, double** %data763, align 8
  %565 = load i32, i32* %si, align 4
  %add764 = add nsw i32 %565, 1
  %idxprom765 = sext i32 %add764 to i64
  %566 = load i32, i32* %i, align 4
  %idxprom766 = sext i32 %566 to i64
  %567 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data_indices767 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %567, i32 0, i32 9
  %568 = load i32**, i32*** %data_indices767, align 8
  %arrayidx768 = getelementptr inbounds i32*, i32** %568, i64 %idxprom766
  %569 = load i32*, i32** %arrayidx768, align 8
  %arrayidx769 = getelementptr inbounds i32, i32* %569, i64 %idxprom765
  %570 = load i32, i32* %arrayidx769, align 4
  %idx.ext770 = sext i32 %570 to i64
  %add.ptr771 = getelementptr inbounds double, double* %564, i64 %idx.ext770
  store double* %add.ptr771, double** %Ap1, align 8
  %571 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data772 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %571, i32 0, i32 6
  %572 = load double*, double** %data772, align 8
  %573 = load i32, i32* %si, align 4
  %add773 = add nsw i32 %573, 2
  %idxprom774 = sext i32 %add773 to i64
  %574 = load i32, i32* %i, align 4
  %idxprom775 = sext i32 %574 to i64
  %575 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data_indices776 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %575, i32 0, i32 9
  %576 = load i32**, i32*** %data_indices776, align 8
  %arrayidx777 = getelementptr inbounds i32*, i32** %576, i64 %idxprom775
  %577 = load i32*, i32** %arrayidx777, align 8
  %arrayidx778 = getelementptr inbounds i32, i32* %577, i64 %idxprom774
  %578 = load i32, i32* %arrayidx778, align 4
  %idx.ext779 = sext i32 %578 to i64
  %add.ptr780 = getelementptr inbounds double, double* %572, i64 %idx.ext779
  store double* %add.ptr780, double** %Ap2, align 8
  %579 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data781 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %579, i32 0, i32 6
  %580 = load double*, double** %data781, align 8
  %581 = load i32, i32* %si, align 4
  %add782 = add nsw i32 %581, 3
  %idxprom783 = sext i32 %add782 to i64
  %582 = load i32, i32* %i, align 4
  %idxprom784 = sext i32 %582 to i64
  %583 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data_indices785 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %583, i32 0, i32 9
  %584 = load i32**, i32*** %data_indices785, align 8
  %arrayidx786 = getelementptr inbounds i32*, i32** %584, i64 %idxprom784
  %585 = load i32*, i32** %arrayidx786, align 8
  %arrayidx787 = getelementptr inbounds i32, i32* %585, i64 %idxprom783
  %586 = load i32, i32* %arrayidx787, align 4
  %idx.ext788 = sext i32 %586 to i64
  %add.ptr789 = getelementptr inbounds double, double* %580, i64 %idx.ext788
  store double* %add.ptr789, double** %Ap3, align 8
  %587 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data790 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %587, i32 0, i32 6
  %588 = load double*, double** %data790, align 8
  %589 = load i32, i32* %si, align 4
  %add791 = add nsw i32 %589, 4
  %idxprom792 = sext i32 %add791 to i64
  %590 = load i32, i32* %i, align 4
  %idxprom793 = sext i32 %590 to i64
  %591 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data_indices794 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %591, i32 0, i32 9
  %592 = load i32**, i32*** %data_indices794, align 8
  %arrayidx795 = getelementptr inbounds i32*, i32** %592, i64 %idxprom793
  %593 = load i32*, i32** %arrayidx795, align 8
  %arrayidx796 = getelementptr inbounds i32, i32* %593, i64 %idxprom792
  %594 = load i32, i32* %arrayidx796, align 4
  %idx.ext797 = sext i32 %594 to i64
  %add.ptr798 = getelementptr inbounds double, double* %588, i64 %idx.ext797
  store double* %add.ptr798, double** %Ap4, align 8
  %595 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data799 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %595, i32 0, i32 6
  %596 = load double*, double** %data799, align 8
  %597 = load i32, i32* %si, align 4
  %add800 = add nsw i32 %597, 5
  %idxprom801 = sext i32 %add800 to i64
  %598 = load i32, i32* %i, align 4
  %idxprom802 = sext i32 %598 to i64
  %599 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data_indices803 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %599, i32 0, i32 9
  %600 = load i32**, i32*** %data_indices803, align 8
  %arrayidx804 = getelementptr inbounds i32*, i32** %600, i64 %idxprom802
  %601 = load i32*, i32** %arrayidx804, align 8
  %arrayidx805 = getelementptr inbounds i32, i32* %601, i64 %idxprom801
  %602 = load i32, i32* %arrayidx805, align 4
  %idx.ext806 = sext i32 %602 to i64
  %add.ptr807 = getelementptr inbounds double, double* %596, i64 %idx.ext806
  store double* %add.ptr807, double** %Ap5, align 8
  %603 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data808 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %603, i32 0, i32 6
  %604 = load double*, double** %data808, align 8
  %605 = load i32, i32* %si, align 4
  %add809 = add nsw i32 %605, 6
  %idxprom810 = sext i32 %add809 to i64
  %606 = load i32, i32* %i, align 4
  %idxprom811 = sext i32 %606 to i64
  %607 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data_indices812 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %607, i32 0, i32 9
  %608 = load i32**, i32*** %data_indices812, align 8
  %arrayidx813 = getelementptr inbounds i32*, i32** %608, i64 %idxprom811
  %609 = load i32*, i32** %arrayidx813, align 8
  %arrayidx814 = getelementptr inbounds i32, i32* %609, i64 %idxprom810
  %610 = load i32, i32* %arrayidx814, align 4
  %idx.ext815 = sext i32 %610 to i64
  %add.ptr816 = getelementptr inbounds double, double* %604, i64 %idx.ext815
  store double* %add.ptr816, double** %Ap6, align 8
  %611 = load i32, i32* %si, align 4
  %add817 = add nsw i32 %611, 0
  %idxprom818 = sext i32 %add817 to i64
  %612 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx819 = getelementptr inbounds [3 x i32], [3 x i32]* %612, i64 %idxprom818
  %arrayidx820 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx819, i32 0, i64 0
  %613 = load i32, i32* %arrayidx820, align 4
  %614 = load i32, i32* %si, align 4
  %add821 = add nsw i32 %614, 0
  %idxprom822 = sext i32 %add821 to i64
  %615 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx823 = getelementptr inbounds [3 x i32], [3 x i32]* %615, i64 %idxprom822
  %arrayidx824 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx823, i32 0, i64 1
  %616 = load i32, i32* %arrayidx824, align 4
  %617 = load i32, i32* %si, align 4
  %add825 = add nsw i32 %617, 0
  %idxprom826 = sext i32 %add825 to i64
  %618 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx827 = getelementptr inbounds [3 x i32], [3 x i32]* %618, i64 %idxprom826
  %arrayidx828 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx827, i32 0, i64 2
  %619 = load i32, i32* %arrayidx828, align 4
  %620 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax829 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %620, i32 0, i32 1
  %arrayidx830 = getelementptr inbounds [3 x i32], [3 x i32]* %imax829, i32 0, i64 1
  %621 = load i32, i32* %arrayidx830, align 4
  %622 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin831 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %622, i32 0, i32 0
  %arrayidx832 = getelementptr inbounds [3 x i32], [3 x i32]* %imin831, i32 0, i64 1
  %623 = load i32, i32* %arrayidx832, align 4
  %sub833 = sub nsw i32 %621, %623
  %add834 = add nsw i32 %sub833, 1
  %cmp835 = icmp slt i32 0, %add834
  br i1 %cmp835, label %cond.true.836, label %cond.false.843

cond.true.836:                                    ; preds = %sw.bb.753
  %624 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax837 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %624, i32 0, i32 1
  %arrayidx838 = getelementptr inbounds [3 x i32], [3 x i32]* %imax837, i32 0, i64 1
  %625 = load i32, i32* %arrayidx838, align 4
  %626 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin839 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %626, i32 0, i32 0
  %arrayidx840 = getelementptr inbounds [3 x i32], [3 x i32]* %imin839, i32 0, i64 1
  %627 = load i32, i32* %arrayidx840, align 4
  %sub841 = sub nsw i32 %625, %627
  %add842 = add nsw i32 %sub841, 1
  br label %cond.end.844

cond.false.843:                                   ; preds = %sw.bb.753
  br label %cond.end.844

cond.end.844:                                     ; preds = %cond.false.843, %cond.true.836
  %cond845 = phi i32 [ %add842, %cond.true.836 ], [ 0, %cond.false.843 ]
  %mul846 = mul nsw i32 %619, %cond845
  %add847 = add nsw i32 %616, %mul846
  %628 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax848 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %628, i32 0, i32 1
  %arrayidx849 = getelementptr inbounds [3 x i32], [3 x i32]* %imax848, i32 0, i64 0
  %629 = load i32, i32* %arrayidx849, align 4
  %630 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin850 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %630, i32 0, i32 0
  %arrayidx851 = getelementptr inbounds [3 x i32], [3 x i32]* %imin850, i32 0, i64 0
  %631 = load i32, i32* %arrayidx851, align 4
  %sub852 = sub nsw i32 %629, %631
  %add853 = add nsw i32 %sub852, 1
  %cmp854 = icmp slt i32 0, %add853
  br i1 %cmp854, label %cond.true.855, label %cond.false.862

cond.true.855:                                    ; preds = %cond.end.844
  %632 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax856 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %632, i32 0, i32 1
  %arrayidx857 = getelementptr inbounds [3 x i32], [3 x i32]* %imax856, i32 0, i64 0
  %633 = load i32, i32* %arrayidx857, align 4
  %634 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin858 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %634, i32 0, i32 0
  %arrayidx859 = getelementptr inbounds [3 x i32], [3 x i32]* %imin858, i32 0, i64 0
  %635 = load i32, i32* %arrayidx859, align 4
  %sub860 = sub nsw i32 %633, %635
  %add861 = add nsw i32 %sub860, 1
  br label %cond.end.863

cond.false.862:                                   ; preds = %cond.end.844
  br label %cond.end.863

cond.end.863:                                     ; preds = %cond.false.862, %cond.true.855
  %cond864 = phi i32 [ %add861, %cond.true.855 ], [ 0, %cond.false.862 ]
  %mul865 = mul nsw i32 %add847, %cond864
  %add866 = add nsw i32 %613, %mul865
  store i32 %add866, i32* %xoff0, align 4
  %636 = load i32, i32* %si, align 4
  %add867 = add nsw i32 %636, 1
  %idxprom868 = sext i32 %add867 to i64
  %637 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx869 = getelementptr inbounds [3 x i32], [3 x i32]* %637, i64 %idxprom868
  %arrayidx870 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx869, i32 0, i64 0
  %638 = load i32, i32* %arrayidx870, align 4
  %639 = load i32, i32* %si, align 4
  %add871 = add nsw i32 %639, 1
  %idxprom872 = sext i32 %add871 to i64
  %640 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx873 = getelementptr inbounds [3 x i32], [3 x i32]* %640, i64 %idxprom872
  %arrayidx874 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx873, i32 0, i64 1
  %641 = load i32, i32* %arrayidx874, align 4
  %642 = load i32, i32* %si, align 4
  %add875 = add nsw i32 %642, 1
  %idxprom876 = sext i32 %add875 to i64
  %643 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx877 = getelementptr inbounds [3 x i32], [3 x i32]* %643, i64 %idxprom876
  %arrayidx878 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx877, i32 0, i64 2
  %644 = load i32, i32* %arrayidx878, align 4
  %645 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax879 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %645, i32 0, i32 1
  %arrayidx880 = getelementptr inbounds [3 x i32], [3 x i32]* %imax879, i32 0, i64 1
  %646 = load i32, i32* %arrayidx880, align 4
  %647 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin881 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %647, i32 0, i32 0
  %arrayidx882 = getelementptr inbounds [3 x i32], [3 x i32]* %imin881, i32 0, i64 1
  %648 = load i32, i32* %arrayidx882, align 4
  %sub883 = sub nsw i32 %646, %648
  %add884 = add nsw i32 %sub883, 1
  %cmp885 = icmp slt i32 0, %add884
  br i1 %cmp885, label %cond.true.886, label %cond.false.893

cond.true.886:                                    ; preds = %cond.end.863
  %649 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax887 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %649, i32 0, i32 1
  %arrayidx888 = getelementptr inbounds [3 x i32], [3 x i32]* %imax887, i32 0, i64 1
  %650 = load i32, i32* %arrayidx888, align 4
  %651 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin889 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %651, i32 0, i32 0
  %arrayidx890 = getelementptr inbounds [3 x i32], [3 x i32]* %imin889, i32 0, i64 1
  %652 = load i32, i32* %arrayidx890, align 4
  %sub891 = sub nsw i32 %650, %652
  %add892 = add nsw i32 %sub891, 1
  br label %cond.end.894

cond.false.893:                                   ; preds = %cond.end.863
  br label %cond.end.894

cond.end.894:                                     ; preds = %cond.false.893, %cond.true.886
  %cond895 = phi i32 [ %add892, %cond.true.886 ], [ 0, %cond.false.893 ]
  %mul896 = mul nsw i32 %644, %cond895
  %add897 = add nsw i32 %641, %mul896
  %653 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax898 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %653, i32 0, i32 1
  %arrayidx899 = getelementptr inbounds [3 x i32], [3 x i32]* %imax898, i32 0, i64 0
  %654 = load i32, i32* %arrayidx899, align 4
  %655 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin900 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %655, i32 0, i32 0
  %arrayidx901 = getelementptr inbounds [3 x i32], [3 x i32]* %imin900, i32 0, i64 0
  %656 = load i32, i32* %arrayidx901, align 4
  %sub902 = sub nsw i32 %654, %656
  %add903 = add nsw i32 %sub902, 1
  %cmp904 = icmp slt i32 0, %add903
  br i1 %cmp904, label %cond.true.905, label %cond.false.912

cond.true.905:                                    ; preds = %cond.end.894
  %657 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax906 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %657, i32 0, i32 1
  %arrayidx907 = getelementptr inbounds [3 x i32], [3 x i32]* %imax906, i32 0, i64 0
  %658 = load i32, i32* %arrayidx907, align 4
  %659 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin908 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %659, i32 0, i32 0
  %arrayidx909 = getelementptr inbounds [3 x i32], [3 x i32]* %imin908, i32 0, i64 0
  %660 = load i32, i32* %arrayidx909, align 4
  %sub910 = sub nsw i32 %658, %660
  %add911 = add nsw i32 %sub910, 1
  br label %cond.end.913

cond.false.912:                                   ; preds = %cond.end.894
  br label %cond.end.913

cond.end.913:                                     ; preds = %cond.false.912, %cond.true.905
  %cond914 = phi i32 [ %add911, %cond.true.905 ], [ 0, %cond.false.912 ]
  %mul915 = mul nsw i32 %add897, %cond914
  %add916 = add nsw i32 %638, %mul915
  store i32 %add916, i32* %xoff1, align 4
  %661 = load i32, i32* %si, align 4
  %add917 = add nsw i32 %661, 2
  %idxprom918 = sext i32 %add917 to i64
  %662 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx919 = getelementptr inbounds [3 x i32], [3 x i32]* %662, i64 %idxprom918
  %arrayidx920 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx919, i32 0, i64 0
  %663 = load i32, i32* %arrayidx920, align 4
  %664 = load i32, i32* %si, align 4
  %add921 = add nsw i32 %664, 2
  %idxprom922 = sext i32 %add921 to i64
  %665 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx923 = getelementptr inbounds [3 x i32], [3 x i32]* %665, i64 %idxprom922
  %arrayidx924 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx923, i32 0, i64 1
  %666 = load i32, i32* %arrayidx924, align 4
  %667 = load i32, i32* %si, align 4
  %add925 = add nsw i32 %667, 2
  %idxprom926 = sext i32 %add925 to i64
  %668 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx927 = getelementptr inbounds [3 x i32], [3 x i32]* %668, i64 %idxprom926
  %arrayidx928 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx927, i32 0, i64 2
  %669 = load i32, i32* %arrayidx928, align 4
  %670 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax929 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %670, i32 0, i32 1
  %arrayidx930 = getelementptr inbounds [3 x i32], [3 x i32]* %imax929, i32 0, i64 1
  %671 = load i32, i32* %arrayidx930, align 4
  %672 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin931 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %672, i32 0, i32 0
  %arrayidx932 = getelementptr inbounds [3 x i32], [3 x i32]* %imin931, i32 0, i64 1
  %673 = load i32, i32* %arrayidx932, align 4
  %sub933 = sub nsw i32 %671, %673
  %add934 = add nsw i32 %sub933, 1
  %cmp935 = icmp slt i32 0, %add934
  br i1 %cmp935, label %cond.true.936, label %cond.false.943

cond.true.936:                                    ; preds = %cond.end.913
  %674 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax937 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %674, i32 0, i32 1
  %arrayidx938 = getelementptr inbounds [3 x i32], [3 x i32]* %imax937, i32 0, i64 1
  %675 = load i32, i32* %arrayidx938, align 4
  %676 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin939 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %676, i32 0, i32 0
  %arrayidx940 = getelementptr inbounds [3 x i32], [3 x i32]* %imin939, i32 0, i64 1
  %677 = load i32, i32* %arrayidx940, align 4
  %sub941 = sub nsw i32 %675, %677
  %add942 = add nsw i32 %sub941, 1
  br label %cond.end.944

cond.false.943:                                   ; preds = %cond.end.913
  br label %cond.end.944

cond.end.944:                                     ; preds = %cond.false.943, %cond.true.936
  %cond945 = phi i32 [ %add942, %cond.true.936 ], [ 0, %cond.false.943 ]
  %mul946 = mul nsw i32 %669, %cond945
  %add947 = add nsw i32 %666, %mul946
  %678 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax948 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %678, i32 0, i32 1
  %arrayidx949 = getelementptr inbounds [3 x i32], [3 x i32]* %imax948, i32 0, i64 0
  %679 = load i32, i32* %arrayidx949, align 4
  %680 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin950 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %680, i32 0, i32 0
  %arrayidx951 = getelementptr inbounds [3 x i32], [3 x i32]* %imin950, i32 0, i64 0
  %681 = load i32, i32* %arrayidx951, align 4
  %sub952 = sub nsw i32 %679, %681
  %add953 = add nsw i32 %sub952, 1
  %cmp954 = icmp slt i32 0, %add953
  br i1 %cmp954, label %cond.true.955, label %cond.false.962

cond.true.955:                                    ; preds = %cond.end.944
  %682 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax956 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %682, i32 0, i32 1
  %arrayidx957 = getelementptr inbounds [3 x i32], [3 x i32]* %imax956, i32 0, i64 0
  %683 = load i32, i32* %arrayidx957, align 4
  %684 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin958 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %684, i32 0, i32 0
  %arrayidx959 = getelementptr inbounds [3 x i32], [3 x i32]* %imin958, i32 0, i64 0
  %685 = load i32, i32* %arrayidx959, align 4
  %sub960 = sub nsw i32 %683, %685
  %add961 = add nsw i32 %sub960, 1
  br label %cond.end.963

cond.false.962:                                   ; preds = %cond.end.944
  br label %cond.end.963

cond.end.963:                                     ; preds = %cond.false.962, %cond.true.955
  %cond964 = phi i32 [ %add961, %cond.true.955 ], [ 0, %cond.false.962 ]
  %mul965 = mul nsw i32 %add947, %cond964
  %add966 = add nsw i32 %663, %mul965
  store i32 %add966, i32* %xoff2, align 4
  %686 = load i32, i32* %si, align 4
  %add967 = add nsw i32 %686, 3
  %idxprom968 = sext i32 %add967 to i64
  %687 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx969 = getelementptr inbounds [3 x i32], [3 x i32]* %687, i64 %idxprom968
  %arrayidx970 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx969, i32 0, i64 0
  %688 = load i32, i32* %arrayidx970, align 4
  %689 = load i32, i32* %si, align 4
  %add971 = add nsw i32 %689, 3
  %idxprom972 = sext i32 %add971 to i64
  %690 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx973 = getelementptr inbounds [3 x i32], [3 x i32]* %690, i64 %idxprom972
  %arrayidx974 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx973, i32 0, i64 1
  %691 = load i32, i32* %arrayidx974, align 4
  %692 = load i32, i32* %si, align 4
  %add975 = add nsw i32 %692, 3
  %idxprom976 = sext i32 %add975 to i64
  %693 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx977 = getelementptr inbounds [3 x i32], [3 x i32]* %693, i64 %idxprom976
  %arrayidx978 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx977, i32 0, i64 2
  %694 = load i32, i32* %arrayidx978, align 4
  %695 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax979 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %695, i32 0, i32 1
  %arrayidx980 = getelementptr inbounds [3 x i32], [3 x i32]* %imax979, i32 0, i64 1
  %696 = load i32, i32* %arrayidx980, align 4
  %697 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin981 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %697, i32 0, i32 0
  %arrayidx982 = getelementptr inbounds [3 x i32], [3 x i32]* %imin981, i32 0, i64 1
  %698 = load i32, i32* %arrayidx982, align 4
  %sub983 = sub nsw i32 %696, %698
  %add984 = add nsw i32 %sub983, 1
  %cmp985 = icmp slt i32 0, %add984
  br i1 %cmp985, label %cond.true.986, label %cond.false.993

cond.true.986:                                    ; preds = %cond.end.963
  %699 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax987 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %699, i32 0, i32 1
  %arrayidx988 = getelementptr inbounds [3 x i32], [3 x i32]* %imax987, i32 0, i64 1
  %700 = load i32, i32* %arrayidx988, align 4
  %701 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin989 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %701, i32 0, i32 0
  %arrayidx990 = getelementptr inbounds [3 x i32], [3 x i32]* %imin989, i32 0, i64 1
  %702 = load i32, i32* %arrayidx990, align 4
  %sub991 = sub nsw i32 %700, %702
  %add992 = add nsw i32 %sub991, 1
  br label %cond.end.994

cond.false.993:                                   ; preds = %cond.end.963
  br label %cond.end.994

cond.end.994:                                     ; preds = %cond.false.993, %cond.true.986
  %cond995 = phi i32 [ %add992, %cond.true.986 ], [ 0, %cond.false.993 ]
  %mul996 = mul nsw i32 %694, %cond995
  %add997 = add nsw i32 %691, %mul996
  %703 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax998 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %703, i32 0, i32 1
  %arrayidx999 = getelementptr inbounds [3 x i32], [3 x i32]* %imax998, i32 0, i64 0
  %704 = load i32, i32* %arrayidx999, align 4
  %705 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1000 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %705, i32 0, i32 0
  %arrayidx1001 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1000, i32 0, i64 0
  %706 = load i32, i32* %arrayidx1001, align 4
  %sub1002 = sub nsw i32 %704, %706
  %add1003 = add nsw i32 %sub1002, 1
  %cmp1004 = icmp slt i32 0, %add1003
  br i1 %cmp1004, label %cond.true.1005, label %cond.false.1012

cond.true.1005:                                   ; preds = %cond.end.994
  %707 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax1006 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %707, i32 0, i32 1
  %arrayidx1007 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1006, i32 0, i64 0
  %708 = load i32, i32* %arrayidx1007, align 4
  %709 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1008 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %709, i32 0, i32 0
  %arrayidx1009 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1008, i32 0, i64 0
  %710 = load i32, i32* %arrayidx1009, align 4
  %sub1010 = sub nsw i32 %708, %710
  %add1011 = add nsw i32 %sub1010, 1
  br label %cond.end.1013

cond.false.1012:                                  ; preds = %cond.end.994
  br label %cond.end.1013

cond.end.1013:                                    ; preds = %cond.false.1012, %cond.true.1005
  %cond1014 = phi i32 [ %add1011, %cond.true.1005 ], [ 0, %cond.false.1012 ]
  %mul1015 = mul nsw i32 %add997, %cond1014
  %add1016 = add nsw i32 %688, %mul1015
  store i32 %add1016, i32* %xoff3, align 4
  %711 = load i32, i32* %si, align 4
  %add1017 = add nsw i32 %711, 4
  %idxprom1018 = sext i32 %add1017 to i64
  %712 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx1019 = getelementptr inbounds [3 x i32], [3 x i32]* %712, i64 %idxprom1018
  %arrayidx1020 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx1019, i32 0, i64 0
  %713 = load i32, i32* %arrayidx1020, align 4
  %714 = load i32, i32* %si, align 4
  %add1021 = add nsw i32 %714, 4
  %idxprom1022 = sext i32 %add1021 to i64
  %715 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx1023 = getelementptr inbounds [3 x i32], [3 x i32]* %715, i64 %idxprom1022
  %arrayidx1024 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx1023, i32 0, i64 1
  %716 = load i32, i32* %arrayidx1024, align 4
  %717 = load i32, i32* %si, align 4
  %add1025 = add nsw i32 %717, 4
  %idxprom1026 = sext i32 %add1025 to i64
  %718 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx1027 = getelementptr inbounds [3 x i32], [3 x i32]* %718, i64 %idxprom1026
  %arrayidx1028 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx1027, i32 0, i64 2
  %719 = load i32, i32* %arrayidx1028, align 4
  %720 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax1029 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %720, i32 0, i32 1
  %arrayidx1030 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1029, i32 0, i64 1
  %721 = load i32, i32* %arrayidx1030, align 4
  %722 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1031 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %722, i32 0, i32 0
  %arrayidx1032 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1031, i32 0, i64 1
  %723 = load i32, i32* %arrayidx1032, align 4
  %sub1033 = sub nsw i32 %721, %723
  %add1034 = add nsw i32 %sub1033, 1
  %cmp1035 = icmp slt i32 0, %add1034
  br i1 %cmp1035, label %cond.true.1036, label %cond.false.1043

cond.true.1036:                                   ; preds = %cond.end.1013
  %724 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax1037 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %724, i32 0, i32 1
  %arrayidx1038 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1037, i32 0, i64 1
  %725 = load i32, i32* %arrayidx1038, align 4
  %726 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1039 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %726, i32 0, i32 0
  %arrayidx1040 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1039, i32 0, i64 1
  %727 = load i32, i32* %arrayidx1040, align 4
  %sub1041 = sub nsw i32 %725, %727
  %add1042 = add nsw i32 %sub1041, 1
  br label %cond.end.1044

cond.false.1043:                                  ; preds = %cond.end.1013
  br label %cond.end.1044

cond.end.1044:                                    ; preds = %cond.false.1043, %cond.true.1036
  %cond1045 = phi i32 [ %add1042, %cond.true.1036 ], [ 0, %cond.false.1043 ]
  %mul1046 = mul nsw i32 %719, %cond1045
  %add1047 = add nsw i32 %716, %mul1046
  %728 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax1048 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %728, i32 0, i32 1
  %arrayidx1049 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1048, i32 0, i64 0
  %729 = load i32, i32* %arrayidx1049, align 4
  %730 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1050 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %730, i32 0, i32 0
  %arrayidx1051 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1050, i32 0, i64 0
  %731 = load i32, i32* %arrayidx1051, align 4
  %sub1052 = sub nsw i32 %729, %731
  %add1053 = add nsw i32 %sub1052, 1
  %cmp1054 = icmp slt i32 0, %add1053
  br i1 %cmp1054, label %cond.true.1055, label %cond.false.1062

cond.true.1055:                                   ; preds = %cond.end.1044
  %732 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax1056 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %732, i32 0, i32 1
  %arrayidx1057 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1056, i32 0, i64 0
  %733 = load i32, i32* %arrayidx1057, align 4
  %734 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1058 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %734, i32 0, i32 0
  %arrayidx1059 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1058, i32 0, i64 0
  %735 = load i32, i32* %arrayidx1059, align 4
  %sub1060 = sub nsw i32 %733, %735
  %add1061 = add nsw i32 %sub1060, 1
  br label %cond.end.1063

cond.false.1062:                                  ; preds = %cond.end.1044
  br label %cond.end.1063

cond.end.1063:                                    ; preds = %cond.false.1062, %cond.true.1055
  %cond1064 = phi i32 [ %add1061, %cond.true.1055 ], [ 0, %cond.false.1062 ]
  %mul1065 = mul nsw i32 %add1047, %cond1064
  %add1066 = add nsw i32 %713, %mul1065
  store i32 %add1066, i32* %xoff4, align 4
  %736 = load i32, i32* %si, align 4
  %add1067 = add nsw i32 %736, 5
  %idxprom1068 = sext i32 %add1067 to i64
  %737 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx1069 = getelementptr inbounds [3 x i32], [3 x i32]* %737, i64 %idxprom1068
  %arrayidx1070 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx1069, i32 0, i64 0
  %738 = load i32, i32* %arrayidx1070, align 4
  %739 = load i32, i32* %si, align 4
  %add1071 = add nsw i32 %739, 5
  %idxprom1072 = sext i32 %add1071 to i64
  %740 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx1073 = getelementptr inbounds [3 x i32], [3 x i32]* %740, i64 %idxprom1072
  %arrayidx1074 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx1073, i32 0, i64 1
  %741 = load i32, i32* %arrayidx1074, align 4
  %742 = load i32, i32* %si, align 4
  %add1075 = add nsw i32 %742, 5
  %idxprom1076 = sext i32 %add1075 to i64
  %743 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx1077 = getelementptr inbounds [3 x i32], [3 x i32]* %743, i64 %idxprom1076
  %arrayidx1078 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx1077, i32 0, i64 2
  %744 = load i32, i32* %arrayidx1078, align 4
  %745 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax1079 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %745, i32 0, i32 1
  %arrayidx1080 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1079, i32 0, i64 1
  %746 = load i32, i32* %arrayidx1080, align 4
  %747 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1081 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %747, i32 0, i32 0
  %arrayidx1082 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1081, i32 0, i64 1
  %748 = load i32, i32* %arrayidx1082, align 4
  %sub1083 = sub nsw i32 %746, %748
  %add1084 = add nsw i32 %sub1083, 1
  %cmp1085 = icmp slt i32 0, %add1084
  br i1 %cmp1085, label %cond.true.1086, label %cond.false.1093

cond.true.1086:                                   ; preds = %cond.end.1063
  %749 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax1087 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %749, i32 0, i32 1
  %arrayidx1088 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1087, i32 0, i64 1
  %750 = load i32, i32* %arrayidx1088, align 4
  %751 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1089 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %751, i32 0, i32 0
  %arrayidx1090 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1089, i32 0, i64 1
  %752 = load i32, i32* %arrayidx1090, align 4
  %sub1091 = sub nsw i32 %750, %752
  %add1092 = add nsw i32 %sub1091, 1
  br label %cond.end.1094

cond.false.1093:                                  ; preds = %cond.end.1063
  br label %cond.end.1094

cond.end.1094:                                    ; preds = %cond.false.1093, %cond.true.1086
  %cond1095 = phi i32 [ %add1092, %cond.true.1086 ], [ 0, %cond.false.1093 ]
  %mul1096 = mul nsw i32 %744, %cond1095
  %add1097 = add nsw i32 %741, %mul1096
  %753 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax1098 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %753, i32 0, i32 1
  %arrayidx1099 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1098, i32 0, i64 0
  %754 = load i32, i32* %arrayidx1099, align 4
  %755 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1100 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %755, i32 0, i32 0
  %arrayidx1101 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1100, i32 0, i64 0
  %756 = load i32, i32* %arrayidx1101, align 4
  %sub1102 = sub nsw i32 %754, %756
  %add1103 = add nsw i32 %sub1102, 1
  %cmp1104 = icmp slt i32 0, %add1103
  br i1 %cmp1104, label %cond.true.1105, label %cond.false.1112

cond.true.1105:                                   ; preds = %cond.end.1094
  %757 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax1106 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %757, i32 0, i32 1
  %arrayidx1107 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1106, i32 0, i64 0
  %758 = load i32, i32* %arrayidx1107, align 4
  %759 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1108 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %759, i32 0, i32 0
  %arrayidx1109 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1108, i32 0, i64 0
  %760 = load i32, i32* %arrayidx1109, align 4
  %sub1110 = sub nsw i32 %758, %760
  %add1111 = add nsw i32 %sub1110, 1
  br label %cond.end.1113

cond.false.1112:                                  ; preds = %cond.end.1094
  br label %cond.end.1113

cond.end.1113:                                    ; preds = %cond.false.1112, %cond.true.1105
  %cond1114 = phi i32 [ %add1111, %cond.true.1105 ], [ 0, %cond.false.1112 ]
  %mul1115 = mul nsw i32 %add1097, %cond1114
  %add1116 = add nsw i32 %738, %mul1115
  store i32 %add1116, i32* %xoff5, align 4
  %761 = load i32, i32* %si, align 4
  %add1117 = add nsw i32 %761, 6
  %idxprom1118 = sext i32 %add1117 to i64
  %762 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx1119 = getelementptr inbounds [3 x i32], [3 x i32]* %762, i64 %idxprom1118
  %arrayidx1120 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx1119, i32 0, i64 0
  %763 = load i32, i32* %arrayidx1120, align 4
  %764 = load i32, i32* %si, align 4
  %add1121 = add nsw i32 %764, 6
  %idxprom1122 = sext i32 %add1121 to i64
  %765 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx1123 = getelementptr inbounds [3 x i32], [3 x i32]* %765, i64 %idxprom1122
  %arrayidx1124 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx1123, i32 0, i64 1
  %766 = load i32, i32* %arrayidx1124, align 4
  %767 = load i32, i32* %si, align 4
  %add1125 = add nsw i32 %767, 6
  %idxprom1126 = sext i32 %add1125 to i64
  %768 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx1127 = getelementptr inbounds [3 x i32], [3 x i32]* %768, i64 %idxprom1126
  %arrayidx1128 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx1127, i32 0, i64 2
  %769 = load i32, i32* %arrayidx1128, align 4
  %770 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax1129 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %770, i32 0, i32 1
  %arrayidx1130 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1129, i32 0, i64 1
  %771 = load i32, i32* %arrayidx1130, align 4
  %772 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1131 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %772, i32 0, i32 0
  %arrayidx1132 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1131, i32 0, i64 1
  %773 = load i32, i32* %arrayidx1132, align 4
  %sub1133 = sub nsw i32 %771, %773
  %add1134 = add nsw i32 %sub1133, 1
  %cmp1135 = icmp slt i32 0, %add1134
  br i1 %cmp1135, label %cond.true.1136, label %cond.false.1143

cond.true.1136:                                   ; preds = %cond.end.1113
  %774 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax1137 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %774, i32 0, i32 1
  %arrayidx1138 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1137, i32 0, i64 1
  %775 = load i32, i32* %arrayidx1138, align 4
  %776 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1139 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %776, i32 0, i32 0
  %arrayidx1140 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1139, i32 0, i64 1
  %777 = load i32, i32* %arrayidx1140, align 4
  %sub1141 = sub nsw i32 %775, %777
  %add1142 = add nsw i32 %sub1141, 1
  br label %cond.end.1144

cond.false.1143:                                  ; preds = %cond.end.1113
  br label %cond.end.1144

cond.end.1144:                                    ; preds = %cond.false.1143, %cond.true.1136
  %cond1145 = phi i32 [ %add1142, %cond.true.1136 ], [ 0, %cond.false.1143 ]
  %mul1146 = mul nsw i32 %769, %cond1145
  %add1147 = add nsw i32 %766, %mul1146
  %778 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax1148 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %778, i32 0, i32 1
  %arrayidx1149 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1148, i32 0, i64 0
  %779 = load i32, i32* %arrayidx1149, align 4
  %780 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1150 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %780, i32 0, i32 0
  %arrayidx1151 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1150, i32 0, i64 0
  %781 = load i32, i32* %arrayidx1151, align 4
  %sub1152 = sub nsw i32 %779, %781
  %add1153 = add nsw i32 %sub1152, 1
  %cmp1154 = icmp slt i32 0, %add1153
  br i1 %cmp1154, label %cond.true.1155, label %cond.false.1162

cond.true.1155:                                   ; preds = %cond.end.1144
  %782 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax1156 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %782, i32 0, i32 1
  %arrayidx1157 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1156, i32 0, i64 0
  %783 = load i32, i32* %arrayidx1157, align 4
  %784 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1158 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %784, i32 0, i32 0
  %arrayidx1159 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1158, i32 0, i64 0
  %785 = load i32, i32* %arrayidx1159, align 4
  %sub1160 = sub nsw i32 %783, %785
  %add1161 = add nsw i32 %sub1160, 1
  br label %cond.end.1163

cond.false.1162:                                  ; preds = %cond.end.1144
  br label %cond.end.1163

cond.end.1163:                                    ; preds = %cond.false.1162, %cond.true.1155
  %cond1164 = phi i32 [ %add1161, %cond.true.1155 ], [ 0, %cond.false.1162 ]
  %mul1165 = mul nsw i32 %add1147, %cond1164
  %add1166 = add nsw i32 %763, %mul1165
  store i32 %add1166, i32* %xoff6, align 4
  %786 = load i32*, i32** %start, align 8
  %arrayidx1168 = getelementptr inbounds i32, i32* %786, i64 0
  %787 = load i32, i32* %arrayidx1168, align 4
  %788 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin1169 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %788, i32 0, i32 0
  %arrayidx1170 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1169, i32 0, i64 0
  %789 = load i32, i32* %arrayidx1170, align 4
  %sub1171 = sub nsw i32 %787, %789
  %790 = load i32*, i32** %start, align 8
  %arrayidx1172 = getelementptr inbounds i32, i32* %790, i64 1
  %791 = load i32, i32* %arrayidx1172, align 4
  %792 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin1173 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %792, i32 0, i32 0
  %arrayidx1174 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1173, i32 0, i64 1
  %793 = load i32, i32* %arrayidx1174, align 4
  %sub1175 = sub nsw i32 %791, %793
  %794 = load i32*, i32** %start, align 8
  %arrayidx1176 = getelementptr inbounds i32, i32* %794, i64 2
  %795 = load i32, i32* %arrayidx1176, align 4
  %796 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin1177 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %796, i32 0, i32 0
  %arrayidx1178 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1177, i32 0, i64 2
  %797 = load i32, i32* %arrayidx1178, align 4
  %sub1179 = sub nsw i32 %795, %797
  %798 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax1180 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %798, i32 0, i32 1
  %arrayidx1181 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1180, i32 0, i64 1
  %799 = load i32, i32* %arrayidx1181, align 4
  %800 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin1182 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %800, i32 0, i32 0
  %arrayidx1183 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1182, i32 0, i64 1
  %801 = load i32, i32* %arrayidx1183, align 4
  %sub1184 = sub nsw i32 %799, %801
  %add1185 = add nsw i32 %sub1184, 1
  %cmp1186 = icmp slt i32 0, %add1185
  br i1 %cmp1186, label %cond.true.1187, label %cond.false.1194

cond.true.1187:                                   ; preds = %cond.end.1163
  %802 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax1188 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %802, i32 0, i32 1
  %arrayidx1189 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1188, i32 0, i64 1
  %803 = load i32, i32* %arrayidx1189, align 4
  %804 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin1190 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %804, i32 0, i32 0
  %arrayidx1191 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1190, i32 0, i64 1
  %805 = load i32, i32* %arrayidx1191, align 4
  %sub1192 = sub nsw i32 %803, %805
  %add1193 = add nsw i32 %sub1192, 1
  br label %cond.end.1195

cond.false.1194:                                  ; preds = %cond.end.1163
  br label %cond.end.1195

cond.end.1195:                                    ; preds = %cond.false.1194, %cond.true.1187
  %cond1196 = phi i32 [ %add1193, %cond.true.1187 ], [ 0, %cond.false.1194 ]
  %mul1197 = mul nsw i32 %sub1179, %cond1196
  %add1198 = add nsw i32 %sub1175, %mul1197
  %806 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax1199 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %806, i32 0, i32 1
  %arrayidx1200 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1199, i32 0, i64 0
  %807 = load i32, i32* %arrayidx1200, align 4
  %808 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin1201 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %808, i32 0, i32 0
  %arrayidx1202 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1201, i32 0, i64 0
  %809 = load i32, i32* %arrayidx1202, align 4
  %sub1203 = sub nsw i32 %807, %809
  %add1204 = add nsw i32 %sub1203, 1
  %cmp1205 = icmp slt i32 0, %add1204
  br i1 %cmp1205, label %cond.true.1206, label %cond.false.1213

cond.true.1206:                                   ; preds = %cond.end.1195
  %810 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax1207 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %810, i32 0, i32 1
  %arrayidx1208 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1207, i32 0, i64 0
  %811 = load i32, i32* %arrayidx1208, align 4
  %812 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin1209 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %812, i32 0, i32 0
  %arrayidx1210 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1209, i32 0, i64 0
  %813 = load i32, i32* %arrayidx1210, align 4
  %sub1211 = sub nsw i32 %811, %813
  %add1212 = add nsw i32 %sub1211, 1
  br label %cond.end.1214

cond.false.1213:                                  ; preds = %cond.end.1195
  br label %cond.end.1214

cond.end.1214:                                    ; preds = %cond.false.1213, %cond.true.1206
  %cond1215 = phi i32 [ %add1212, %cond.true.1206 ], [ 0, %cond.false.1213 ]
  %mul1216 = mul nsw i32 %add1198, %cond1215
  %add1217 = add nsw i32 %sub1171, %mul1216
  store i32 %add1217, i32* %hypre__i1start1167, align 4
  %814 = load i32*, i32** %start, align 8
  %arrayidx1218 = getelementptr inbounds i32, i32* %814, i64 0
  %815 = load i32, i32* %arrayidx1218, align 4
  %816 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1219 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %816, i32 0, i32 0
  %arrayidx1220 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1219, i32 0, i64 0
  %817 = load i32, i32* %arrayidx1220, align 4
  %sub1221 = sub nsw i32 %815, %817
  %818 = load i32*, i32** %start, align 8
  %arrayidx1222 = getelementptr inbounds i32, i32* %818, i64 1
  %819 = load i32, i32* %arrayidx1222, align 4
  %820 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1223 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %820, i32 0, i32 0
  %arrayidx1224 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1223, i32 0, i64 1
  %821 = load i32, i32* %arrayidx1224, align 4
  %sub1225 = sub nsw i32 %819, %821
  %822 = load i32*, i32** %start, align 8
  %arrayidx1226 = getelementptr inbounds i32, i32* %822, i64 2
  %823 = load i32, i32* %arrayidx1226, align 4
  %824 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1227 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %824, i32 0, i32 0
  %arrayidx1228 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1227, i32 0, i64 2
  %825 = load i32, i32* %arrayidx1228, align 4
  %sub1229 = sub nsw i32 %823, %825
  %826 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax1230 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %826, i32 0, i32 1
  %arrayidx1231 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1230, i32 0, i64 1
  %827 = load i32, i32* %arrayidx1231, align 4
  %828 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1232 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %828, i32 0, i32 0
  %arrayidx1233 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1232, i32 0, i64 1
  %829 = load i32, i32* %arrayidx1233, align 4
  %sub1234 = sub nsw i32 %827, %829
  %add1235 = add nsw i32 %sub1234, 1
  %cmp1236 = icmp slt i32 0, %add1235
  br i1 %cmp1236, label %cond.true.1237, label %cond.false.1244

cond.true.1237:                                   ; preds = %cond.end.1214
  %830 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax1238 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %830, i32 0, i32 1
  %arrayidx1239 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1238, i32 0, i64 1
  %831 = load i32, i32* %arrayidx1239, align 4
  %832 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1240 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %832, i32 0, i32 0
  %arrayidx1241 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1240, i32 0, i64 1
  %833 = load i32, i32* %arrayidx1241, align 4
  %sub1242 = sub nsw i32 %831, %833
  %add1243 = add nsw i32 %sub1242, 1
  br label %cond.end.1245

cond.false.1244:                                  ; preds = %cond.end.1214
  br label %cond.end.1245

cond.end.1245:                                    ; preds = %cond.false.1244, %cond.true.1237
  %cond1246 = phi i32 [ %add1243, %cond.true.1237 ], [ 0, %cond.false.1244 ]
  %mul1247 = mul nsw i32 %sub1229, %cond1246
  %add1248 = add nsw i32 %sub1225, %mul1247
  %834 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax1249 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %834, i32 0, i32 1
  %arrayidx1250 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1249, i32 0, i64 0
  %835 = load i32, i32* %arrayidx1250, align 4
  %836 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1251 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %836, i32 0, i32 0
  %arrayidx1252 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1251, i32 0, i64 0
  %837 = load i32, i32* %arrayidx1252, align 4
  %sub1253 = sub nsw i32 %835, %837
  %add1254 = add nsw i32 %sub1253, 1
  %cmp1255 = icmp slt i32 0, %add1254
  br i1 %cmp1255, label %cond.true.1256, label %cond.false.1263

cond.true.1256:                                   ; preds = %cond.end.1245
  %838 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax1257 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %838, i32 0, i32 1
  %arrayidx1258 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1257, i32 0, i64 0
  %839 = load i32, i32* %arrayidx1258, align 4
  %840 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1259 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %840, i32 0, i32 0
  %arrayidx1260 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1259, i32 0, i64 0
  %841 = load i32, i32* %arrayidx1260, align 4
  %sub1261 = sub nsw i32 %839, %841
  %add1262 = add nsw i32 %sub1261, 1
  br label %cond.end.1264

cond.false.1263:                                  ; preds = %cond.end.1245
  br label %cond.end.1264

cond.end.1264:                                    ; preds = %cond.false.1263, %cond.true.1256
  %cond1265 = phi i32 [ %add1262, %cond.true.1256 ], [ 0, %cond.false.1263 ]
  %mul1266 = mul nsw i32 %add1248, %cond1265
  %add1267 = add nsw i32 %sub1221, %mul1266
  store i32 %add1267, i32* %hypre__i2start, align 4
  %842 = load i32*, i32** %start, align 8
  %arrayidx1268 = getelementptr inbounds i32, i32* %842, i64 0
  %843 = load i32, i32* %arrayidx1268, align 4
  %844 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin1269 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %844, i32 0, i32 0
  %arrayidx1270 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1269, i32 0, i64 0
  %845 = load i32, i32* %arrayidx1270, align 4
  %sub1271 = sub nsw i32 %843, %845
  %846 = load i32*, i32** %start, align 8
  %arrayidx1272 = getelementptr inbounds i32, i32* %846, i64 1
  %847 = load i32, i32* %arrayidx1272, align 4
  %848 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin1273 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %848, i32 0, i32 0
  %arrayidx1274 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1273, i32 0, i64 1
  %849 = load i32, i32* %arrayidx1274, align 4
  %sub1275 = sub nsw i32 %847, %849
  %850 = load i32*, i32** %start, align 8
  %arrayidx1276 = getelementptr inbounds i32, i32* %850, i64 2
  %851 = load i32, i32* %arrayidx1276, align 4
  %852 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin1277 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %852, i32 0, i32 0
  %arrayidx1278 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1277, i32 0, i64 2
  %853 = load i32, i32* %arrayidx1278, align 4
  %sub1279 = sub nsw i32 %851, %853
  %854 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax1280 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %854, i32 0, i32 1
  %arrayidx1281 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1280, i32 0, i64 1
  %855 = load i32, i32* %arrayidx1281, align 4
  %856 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin1282 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %856, i32 0, i32 0
  %arrayidx1283 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1282, i32 0, i64 1
  %857 = load i32, i32* %arrayidx1283, align 4
  %sub1284 = sub nsw i32 %855, %857
  %add1285 = add nsw i32 %sub1284, 1
  %cmp1286 = icmp slt i32 0, %add1285
  br i1 %cmp1286, label %cond.true.1287, label %cond.false.1294

cond.true.1287:                                   ; preds = %cond.end.1264
  %858 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax1288 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %858, i32 0, i32 1
  %arrayidx1289 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1288, i32 0, i64 1
  %859 = load i32, i32* %arrayidx1289, align 4
  %860 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin1290 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %860, i32 0, i32 0
  %arrayidx1291 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1290, i32 0, i64 1
  %861 = load i32, i32* %arrayidx1291, align 4
  %sub1292 = sub nsw i32 %859, %861
  %add1293 = add nsw i32 %sub1292, 1
  br label %cond.end.1295

cond.false.1294:                                  ; preds = %cond.end.1264
  br label %cond.end.1295

cond.end.1295:                                    ; preds = %cond.false.1294, %cond.true.1287
  %cond1296 = phi i32 [ %add1293, %cond.true.1287 ], [ 0, %cond.false.1294 ]
  %mul1297 = mul nsw i32 %sub1279, %cond1296
  %add1298 = add nsw i32 %sub1275, %mul1297
  %862 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax1299 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %862, i32 0, i32 1
  %arrayidx1300 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1299, i32 0, i64 0
  %863 = load i32, i32* %arrayidx1300, align 4
  %864 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin1301 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %864, i32 0, i32 0
  %arrayidx1302 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1301, i32 0, i64 0
  %865 = load i32, i32* %arrayidx1302, align 4
  %sub1303 = sub nsw i32 %863, %865
  %add1304 = add nsw i32 %sub1303, 1
  %cmp1305 = icmp slt i32 0, %add1304
  br i1 %cmp1305, label %cond.true.1306, label %cond.false.1313

cond.true.1306:                                   ; preds = %cond.end.1295
  %866 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax1307 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %866, i32 0, i32 1
  %arrayidx1308 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1307, i32 0, i64 0
  %867 = load i32, i32* %arrayidx1308, align 4
  %868 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin1309 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %868, i32 0, i32 0
  %arrayidx1310 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1309, i32 0, i64 0
  %869 = load i32, i32* %arrayidx1310, align 4
  %sub1311 = sub nsw i32 %867, %869
  %add1312 = add nsw i32 %sub1311, 1
  br label %cond.end.1314

cond.false.1313:                                  ; preds = %cond.end.1295
  br label %cond.end.1314

cond.end.1314:                                    ; preds = %cond.false.1313, %cond.true.1306
  %cond1315 = phi i32 [ %add1312, %cond.true.1306 ], [ 0, %cond.false.1313 ]
  %mul1316 = mul nsw i32 %add1298, %cond1315
  %add1317 = add nsw i32 %sub1271, %mul1316
  store i32 %add1317, i32* %hypre__i3start, align 4
  %870 = load i32*, i32** %stride, align 8
  %arrayidx1319 = getelementptr inbounds i32, i32* %870, i64 0
  %871 = load i32, i32* %arrayidx1319, align 4
  store i32 %871, i32* %hypre__sx11318, align 4
  %872 = load i32*, i32** %stride, align 8
  %arrayidx1321 = getelementptr inbounds i32, i32* %872, i64 1
  %873 = load i32, i32* %arrayidx1321, align 4
  %874 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax1322 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %874, i32 0, i32 1
  %arrayidx1323 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1322, i32 0, i64 0
  %875 = load i32, i32* %arrayidx1323, align 4
  %876 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin1324 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %876, i32 0, i32 0
  %arrayidx1325 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1324, i32 0, i64 0
  %877 = load i32, i32* %arrayidx1325, align 4
  %sub1326 = sub nsw i32 %875, %877
  %add1327 = add nsw i32 %sub1326, 1
  %cmp1328 = icmp slt i32 0, %add1327
  br i1 %cmp1328, label %cond.true.1329, label %cond.false.1336

cond.true.1329:                                   ; preds = %cond.end.1314
  %878 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax1330 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %878, i32 0, i32 1
  %arrayidx1331 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1330, i32 0, i64 0
  %879 = load i32, i32* %arrayidx1331, align 4
  %880 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin1332 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %880, i32 0, i32 0
  %arrayidx1333 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1332, i32 0, i64 0
  %881 = load i32, i32* %arrayidx1333, align 4
  %sub1334 = sub nsw i32 %879, %881
  %add1335 = add nsw i32 %sub1334, 1
  br label %cond.end.1337

cond.false.1336:                                  ; preds = %cond.end.1314
  br label %cond.end.1337

cond.end.1337:                                    ; preds = %cond.false.1336, %cond.true.1329
  %cond1338 = phi i32 [ %add1335, %cond.true.1329 ], [ 0, %cond.false.1336 ]
  %mul1339 = mul nsw i32 %873, %cond1338
  store i32 %mul1339, i32* %hypre__sy11320, align 4
  %882 = load i32*, i32** %stride, align 8
  %arrayidx1341 = getelementptr inbounds i32, i32* %882, i64 2
  %883 = load i32, i32* %arrayidx1341, align 4
  %884 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax1342 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %884, i32 0, i32 1
  %arrayidx1343 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1342, i32 0, i64 0
  %885 = load i32, i32* %arrayidx1343, align 4
  %886 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin1344 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %886, i32 0, i32 0
  %arrayidx1345 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1344, i32 0, i64 0
  %887 = load i32, i32* %arrayidx1345, align 4
  %sub1346 = sub nsw i32 %885, %887
  %add1347 = add nsw i32 %sub1346, 1
  %cmp1348 = icmp slt i32 0, %add1347
  br i1 %cmp1348, label %cond.true.1349, label %cond.false.1356

cond.true.1349:                                   ; preds = %cond.end.1337
  %888 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax1350 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %888, i32 0, i32 1
  %arrayidx1351 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1350, i32 0, i64 0
  %889 = load i32, i32* %arrayidx1351, align 4
  %890 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin1352 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %890, i32 0, i32 0
  %arrayidx1353 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1352, i32 0, i64 0
  %891 = load i32, i32* %arrayidx1353, align 4
  %sub1354 = sub nsw i32 %889, %891
  %add1355 = add nsw i32 %sub1354, 1
  br label %cond.end.1357

cond.false.1356:                                  ; preds = %cond.end.1337
  br label %cond.end.1357

cond.end.1357:                                    ; preds = %cond.false.1356, %cond.true.1349
  %cond1358 = phi i32 [ %add1355, %cond.true.1349 ], [ 0, %cond.false.1356 ]
  %mul1359 = mul nsw i32 %883, %cond1358
  %892 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax1360 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %892, i32 0, i32 1
  %arrayidx1361 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1360, i32 0, i64 1
  %893 = load i32, i32* %arrayidx1361, align 4
  %894 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin1362 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %894, i32 0, i32 0
  %arrayidx1363 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1362, i32 0, i64 1
  %895 = load i32, i32* %arrayidx1363, align 4
  %sub1364 = sub nsw i32 %893, %895
  %add1365 = add nsw i32 %sub1364, 1
  %cmp1366 = icmp slt i32 0, %add1365
  br i1 %cmp1366, label %cond.true.1367, label %cond.false.1374

cond.true.1367:                                   ; preds = %cond.end.1357
  %896 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax1368 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %896, i32 0, i32 1
  %arrayidx1369 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1368, i32 0, i64 1
  %897 = load i32, i32* %arrayidx1369, align 4
  %898 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin1370 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %898, i32 0, i32 0
  %arrayidx1371 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1370, i32 0, i64 1
  %899 = load i32, i32* %arrayidx1371, align 4
  %sub1372 = sub nsw i32 %897, %899
  %add1373 = add nsw i32 %sub1372, 1
  br label %cond.end.1375

cond.false.1374:                                  ; preds = %cond.end.1357
  br label %cond.end.1375

cond.end.1375:                                    ; preds = %cond.false.1374, %cond.true.1367
  %cond1376 = phi i32 [ %add1373, %cond.true.1367 ], [ 0, %cond.false.1374 ]
  %mul1377 = mul nsw i32 %mul1359, %cond1376
  store i32 %mul1377, i32* %hypre__sz11340, align 4
  %900 = load i32*, i32** %stride, align 8
  %arrayidx1378 = getelementptr inbounds i32, i32* %900, i64 0
  %901 = load i32, i32* %arrayidx1378, align 4
  store i32 %901, i32* %hypre__sx2, align 4
  %902 = load i32*, i32** %stride, align 8
  %arrayidx1379 = getelementptr inbounds i32, i32* %902, i64 1
  %903 = load i32, i32* %arrayidx1379, align 4
  %904 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax1380 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %904, i32 0, i32 1
  %arrayidx1381 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1380, i32 0, i64 0
  %905 = load i32, i32* %arrayidx1381, align 4
  %906 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1382 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %906, i32 0, i32 0
  %arrayidx1383 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1382, i32 0, i64 0
  %907 = load i32, i32* %arrayidx1383, align 4
  %sub1384 = sub nsw i32 %905, %907
  %add1385 = add nsw i32 %sub1384, 1
  %cmp1386 = icmp slt i32 0, %add1385
  br i1 %cmp1386, label %cond.true.1387, label %cond.false.1394

cond.true.1387:                                   ; preds = %cond.end.1375
  %908 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax1388 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %908, i32 0, i32 1
  %arrayidx1389 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1388, i32 0, i64 0
  %909 = load i32, i32* %arrayidx1389, align 4
  %910 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1390 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %910, i32 0, i32 0
  %arrayidx1391 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1390, i32 0, i64 0
  %911 = load i32, i32* %arrayidx1391, align 4
  %sub1392 = sub nsw i32 %909, %911
  %add1393 = add nsw i32 %sub1392, 1
  br label %cond.end.1395

cond.false.1394:                                  ; preds = %cond.end.1375
  br label %cond.end.1395

cond.end.1395:                                    ; preds = %cond.false.1394, %cond.true.1387
  %cond1396 = phi i32 [ %add1393, %cond.true.1387 ], [ 0, %cond.false.1394 ]
  %mul1397 = mul nsw i32 %903, %cond1396
  store i32 %mul1397, i32* %hypre__sy2, align 4
  %912 = load i32*, i32** %stride, align 8
  %arrayidx1398 = getelementptr inbounds i32, i32* %912, i64 2
  %913 = load i32, i32* %arrayidx1398, align 4
  %914 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax1399 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %914, i32 0, i32 1
  %arrayidx1400 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1399, i32 0, i64 0
  %915 = load i32, i32* %arrayidx1400, align 4
  %916 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1401 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %916, i32 0, i32 0
  %arrayidx1402 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1401, i32 0, i64 0
  %917 = load i32, i32* %arrayidx1402, align 4
  %sub1403 = sub nsw i32 %915, %917
  %add1404 = add nsw i32 %sub1403, 1
  %cmp1405 = icmp slt i32 0, %add1404
  br i1 %cmp1405, label %cond.true.1406, label %cond.false.1413

cond.true.1406:                                   ; preds = %cond.end.1395
  %918 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax1407 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %918, i32 0, i32 1
  %arrayidx1408 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1407, i32 0, i64 0
  %919 = load i32, i32* %arrayidx1408, align 4
  %920 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1409 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %920, i32 0, i32 0
  %arrayidx1410 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1409, i32 0, i64 0
  %921 = load i32, i32* %arrayidx1410, align 4
  %sub1411 = sub nsw i32 %919, %921
  %add1412 = add nsw i32 %sub1411, 1
  br label %cond.end.1414

cond.false.1413:                                  ; preds = %cond.end.1395
  br label %cond.end.1414

cond.end.1414:                                    ; preds = %cond.false.1413, %cond.true.1406
  %cond1415 = phi i32 [ %add1412, %cond.true.1406 ], [ 0, %cond.false.1413 ]
  %mul1416 = mul nsw i32 %913, %cond1415
  %922 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax1417 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %922, i32 0, i32 1
  %arrayidx1418 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1417, i32 0, i64 1
  %923 = load i32, i32* %arrayidx1418, align 4
  %924 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1419 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %924, i32 0, i32 0
  %arrayidx1420 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1419, i32 0, i64 1
  %925 = load i32, i32* %arrayidx1420, align 4
  %sub1421 = sub nsw i32 %923, %925
  %add1422 = add nsw i32 %sub1421, 1
  %cmp1423 = icmp slt i32 0, %add1422
  br i1 %cmp1423, label %cond.true.1424, label %cond.false.1431

cond.true.1424:                                   ; preds = %cond.end.1414
  %926 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax1425 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %926, i32 0, i32 1
  %arrayidx1426 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1425, i32 0, i64 1
  %927 = load i32, i32* %arrayidx1426, align 4
  %928 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1427 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %928, i32 0, i32 0
  %arrayidx1428 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1427, i32 0, i64 1
  %929 = load i32, i32* %arrayidx1428, align 4
  %sub1429 = sub nsw i32 %927, %929
  %add1430 = add nsw i32 %sub1429, 1
  br label %cond.end.1432

cond.false.1431:                                  ; preds = %cond.end.1414
  br label %cond.end.1432

cond.end.1432:                                    ; preds = %cond.false.1431, %cond.true.1424
  %cond1433 = phi i32 [ %add1430, %cond.true.1424 ], [ 0, %cond.false.1431 ]
  %mul1434 = mul nsw i32 %mul1416, %cond1433
  store i32 %mul1434, i32* %hypre__sz2, align 4
  %930 = load i32*, i32** %stride, align 8
  %arrayidx1435 = getelementptr inbounds i32, i32* %930, i64 0
  %931 = load i32, i32* %arrayidx1435, align 4
  store i32 %931, i32* %hypre__sx3, align 4
  %932 = load i32*, i32** %stride, align 8
  %arrayidx1436 = getelementptr inbounds i32, i32* %932, i64 1
  %933 = load i32, i32* %arrayidx1436, align 4
  %934 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax1437 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %934, i32 0, i32 1
  %arrayidx1438 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1437, i32 0, i64 0
  %935 = load i32, i32* %arrayidx1438, align 4
  %936 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin1439 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %936, i32 0, i32 0
  %arrayidx1440 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1439, i32 0, i64 0
  %937 = load i32, i32* %arrayidx1440, align 4
  %sub1441 = sub nsw i32 %935, %937
  %add1442 = add nsw i32 %sub1441, 1
  %cmp1443 = icmp slt i32 0, %add1442
  br i1 %cmp1443, label %cond.true.1444, label %cond.false.1451

cond.true.1444:                                   ; preds = %cond.end.1432
  %938 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax1445 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %938, i32 0, i32 1
  %arrayidx1446 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1445, i32 0, i64 0
  %939 = load i32, i32* %arrayidx1446, align 4
  %940 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin1447 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %940, i32 0, i32 0
  %arrayidx1448 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1447, i32 0, i64 0
  %941 = load i32, i32* %arrayidx1448, align 4
  %sub1449 = sub nsw i32 %939, %941
  %add1450 = add nsw i32 %sub1449, 1
  br label %cond.end.1452

cond.false.1451:                                  ; preds = %cond.end.1432
  br label %cond.end.1452

cond.end.1452:                                    ; preds = %cond.false.1451, %cond.true.1444
  %cond1453 = phi i32 [ %add1450, %cond.true.1444 ], [ 0, %cond.false.1451 ]
  %mul1454 = mul nsw i32 %933, %cond1453
  store i32 %mul1454, i32* %hypre__sy3, align 4
  %942 = load i32*, i32** %stride, align 8
  %arrayidx1455 = getelementptr inbounds i32, i32* %942, i64 2
  %943 = load i32, i32* %arrayidx1455, align 4
  %944 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax1456 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %944, i32 0, i32 1
  %arrayidx1457 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1456, i32 0, i64 0
  %945 = load i32, i32* %arrayidx1457, align 4
  %946 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin1458 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %946, i32 0, i32 0
  %arrayidx1459 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1458, i32 0, i64 0
  %947 = load i32, i32* %arrayidx1459, align 4
  %sub1460 = sub nsw i32 %945, %947
  %add1461 = add nsw i32 %sub1460, 1
  %cmp1462 = icmp slt i32 0, %add1461
  br i1 %cmp1462, label %cond.true.1463, label %cond.false.1470

cond.true.1463:                                   ; preds = %cond.end.1452
  %948 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax1464 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %948, i32 0, i32 1
  %arrayidx1465 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1464, i32 0, i64 0
  %949 = load i32, i32* %arrayidx1465, align 4
  %950 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin1466 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %950, i32 0, i32 0
  %arrayidx1467 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1466, i32 0, i64 0
  %951 = load i32, i32* %arrayidx1467, align 4
  %sub1468 = sub nsw i32 %949, %951
  %add1469 = add nsw i32 %sub1468, 1
  br label %cond.end.1471

cond.false.1470:                                  ; preds = %cond.end.1452
  br label %cond.end.1471

cond.end.1471:                                    ; preds = %cond.false.1470, %cond.true.1463
  %cond1472 = phi i32 [ %add1469, %cond.true.1463 ], [ 0, %cond.false.1470 ]
  %mul1473 = mul nsw i32 %943, %cond1472
  %952 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax1474 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %952, i32 0, i32 1
  %arrayidx1475 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1474, i32 0, i64 1
  %953 = load i32, i32* %arrayidx1475, align 4
  %954 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin1476 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %954, i32 0, i32 0
  %arrayidx1477 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1476, i32 0, i64 1
  %955 = load i32, i32* %arrayidx1477, align 4
  %sub1478 = sub nsw i32 %953, %955
  %add1479 = add nsw i32 %sub1478, 1
  %cmp1480 = icmp slt i32 0, %add1479
  br i1 %cmp1480, label %cond.true.1481, label %cond.false.1488

cond.true.1481:                                   ; preds = %cond.end.1471
  %956 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax1482 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %956, i32 0, i32 1
  %arrayidx1483 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1482, i32 0, i64 1
  %957 = load i32, i32* %arrayidx1483, align 4
  %958 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin1484 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %958, i32 0, i32 0
  %arrayidx1485 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1484, i32 0, i64 1
  %959 = load i32, i32* %arrayidx1485, align 4
  %sub1486 = sub nsw i32 %957, %959
  %add1487 = add nsw i32 %sub1486, 1
  br label %cond.end.1489

cond.false.1488:                                  ; preds = %cond.end.1471
  br label %cond.end.1489

cond.end.1489:                                    ; preds = %cond.false.1488, %cond.true.1481
  %cond1490 = phi i32 [ %add1487, %cond.true.1481 ], [ 0, %cond.false.1488 ]
  %mul1491 = mul nsw i32 %mul1473, %cond1490
  store i32 %mul1491, i32* %hypre__sz3, align 4
  %arrayidx1493 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 0
  %960 = load i32, i32* %arrayidx1493, align 4
  store i32 %960, i32* %hypre__nx1492, align 4
  %arrayidx1495 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 1
  %961 = load i32, i32* %arrayidx1495, align 4
  store i32 %961, i32* %hypre__ny1494, align 4
  %arrayidx1497 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 2
  %962 = load i32, i32* %arrayidx1497, align 4
  store i32 %962, i32* %hypre__nz1496, align 4
  %963 = load i32, i32* %hypre__nx1492, align 4
  store i32 %963, i32* %hypre__mx1498, align 4
  %964 = load i32, i32* %hypre__ny1494, align 4
  store i32 %964, i32* %hypre__my1499, align 4
  %965 = load i32, i32* %hypre__nz1496, align 4
  store i32 %965, i32* %hypre__mz1500, align 4
  store i32 0, i32* %hypre__dir1501, align 4
  %966 = load i32, i32* %hypre__nx1492, align 4
  store i32 %966, i32* %hypre__max1502, align 4
  %967 = load i32, i32* %hypre__ny1494, align 4
  %968 = load i32, i32* %hypre__max1502, align 4
  %cmp1507 = icmp sgt i32 %967, %968
  br i1 %cmp1507, label %if.then.1508, label %if.end.1509

if.then.1508:                                     ; preds = %cond.end.1489
  store i32 1, i32* %hypre__dir1501, align 4
  %969 = load i32, i32* %hypre__ny1494, align 4
  store i32 %969, i32* %hypre__max1502, align 4
  br label %if.end.1509

if.end.1509:                                      ; preds = %if.then.1508, %cond.end.1489
  %970 = load i32, i32* %hypre__nz1496, align 4
  %971 = load i32, i32* %hypre__max1502, align 4
  %cmp1510 = icmp sgt i32 %970, %971
  br i1 %cmp1510, label %if.then.1511, label %if.end.1512

if.then.1511:                                     ; preds = %if.end.1509
  store i32 2, i32* %hypre__dir1501, align 4
  %972 = load i32, i32* %hypre__nz1496, align 4
  store i32 %972, i32* %hypre__max1502, align 4
  br label %if.end.1512

if.end.1512:                                      ; preds = %if.then.1511, %if.end.1509
  store i32 1, i32* %hypre__num_blocks1506, align 4
  %973 = load i32, i32* %hypre__max1502, align 4
  %974 = load i32, i32* %hypre__num_blocks1506, align 4
  %cmp1513 = icmp slt i32 %973, %974
  br i1 %cmp1513, label %if.then.1514, label %if.end.1515

if.then.1514:                                     ; preds = %if.end.1512
  %975 = load i32, i32* %hypre__max1502, align 4
  store i32 %975, i32* %hypre__num_blocks1506, align 4
  br label %if.end.1515

if.end.1515:                                      ; preds = %if.then.1514, %if.end.1512
  %976 = load i32, i32* %hypre__num_blocks1506, align 4
  %cmp1516 = icmp sgt i32 %976, 0
  br i1 %cmp1516, label %if.then.1517, label %if.end.1520

if.then.1517:                                     ; preds = %if.end.1515
  %977 = load i32, i32* %hypre__max1502, align 4
  %978 = load i32, i32* %hypre__num_blocks1506, align 4
  %div1518 = sdiv i32 %977, %978
  store i32 %div1518, i32* %hypre__div1503, align 4
  %979 = load i32, i32* %hypre__max1502, align 4
  %980 = load i32, i32* %hypre__num_blocks1506, align 4
  %rem1519 = srem i32 %979, %980
  store i32 %rem1519, i32* %hypre__mod1504, align 4
  br label %if.end.1520

if.end.1520:                                      ; preds = %if.then.1517, %if.end.1515
  store i32 0, i32* %hypre__block1505, align 4
  br label %for.cond.1521

for.cond.1521:                                    ; preds = %for.inc.1676, %if.end.1520
  %981 = load i32, i32* %hypre__block1505, align 4
  %982 = load i32, i32* %hypre__num_blocks1506, align 4
  %cmp1522 = icmp slt i32 %981, %982
  br i1 %cmp1522, label %for.body.1523, label %for.end.1678

for.body.1523:                                    ; preds = %for.cond.1521
  store i32 0, i32* %loopi, align 4
  store i32 0, i32* %loopj, align 4
  store i32 0, i32* %loopk, align 4
  %983 = load i32, i32* %hypre__mx1498, align 4
  store i32 %983, i32* %hypre__nx1492, align 4
  %984 = load i32, i32* %hypre__my1499, align 4
  store i32 %984, i32* %hypre__ny1494, align 4
  %985 = load i32, i32* %hypre__mz1500, align 4
  store i32 %985, i32* %hypre__nz1496, align 4
  %986 = load i32, i32* %hypre__num_blocks1506, align 4
  %cmp1524 = icmp sgt i32 %986, 1
  br i1 %cmp1524, label %if.then.1525, label %if.end.1567

if.then.1525:                                     ; preds = %for.body.1523
  %987 = load i32, i32* %hypre__dir1501, align 4
  %cmp1526 = icmp eq i32 %987, 0
  br i1 %cmp1526, label %if.then.1527, label %if.else.1538

if.then.1527:                                     ; preds = %if.then.1525
  %988 = load i32, i32* %hypre__block1505, align 4
  %989 = load i32, i32* %hypre__div1503, align 4
  %mul1528 = mul nsw i32 %988, %989
  %990 = load i32, i32* %hypre__mod1504, align 4
  %991 = load i32, i32* %hypre__block1505, align 4
  %cmp1529 = icmp slt i32 %990, %991
  br i1 %cmp1529, label %cond.true.1530, label %cond.false.1531

cond.true.1530:                                   ; preds = %if.then.1527
  %992 = load i32, i32* %hypre__mod1504, align 4
  br label %cond.end.1532

cond.false.1531:                                  ; preds = %if.then.1527
  %993 = load i32, i32* %hypre__block1505, align 4
  br label %cond.end.1532

cond.end.1532:                                    ; preds = %cond.false.1531, %cond.true.1530
  %cond1533 = phi i32 [ %992, %cond.true.1530 ], [ %993, %cond.false.1531 ]
  %add1534 = add nsw i32 %mul1528, %cond1533
  store i32 %add1534, i32* %loopi, align 4
  %994 = load i32, i32* %hypre__div1503, align 4
  %995 = load i32, i32* %hypre__mod1504, align 4
  %996 = load i32, i32* %hypre__block1505, align 4
  %cmp1535 = icmp sgt i32 %995, %996
  %cond1536 = select i1 %cmp1535, i32 1, i32 0
  %add1537 = add nsw i32 %994, %cond1536
  store i32 %add1537, i32* %hypre__nx1492, align 4
  br label %if.end.1566

if.else.1538:                                     ; preds = %if.then.1525
  %997 = load i32, i32* %hypre__dir1501, align 4
  %cmp1539 = icmp eq i32 %997, 1
  br i1 %cmp1539, label %if.then.1540, label %if.else.1551

if.then.1540:                                     ; preds = %if.else.1538
  %998 = load i32, i32* %hypre__block1505, align 4
  %999 = load i32, i32* %hypre__div1503, align 4
  %mul1541 = mul nsw i32 %998, %999
  %1000 = load i32, i32* %hypre__mod1504, align 4
  %1001 = load i32, i32* %hypre__block1505, align 4
  %cmp1542 = icmp slt i32 %1000, %1001
  br i1 %cmp1542, label %cond.true.1543, label %cond.false.1544

cond.true.1543:                                   ; preds = %if.then.1540
  %1002 = load i32, i32* %hypre__mod1504, align 4
  br label %cond.end.1545

cond.false.1544:                                  ; preds = %if.then.1540
  %1003 = load i32, i32* %hypre__block1505, align 4
  br label %cond.end.1545

cond.end.1545:                                    ; preds = %cond.false.1544, %cond.true.1543
  %cond1546 = phi i32 [ %1002, %cond.true.1543 ], [ %1003, %cond.false.1544 ]
  %add1547 = add nsw i32 %mul1541, %cond1546
  store i32 %add1547, i32* %loopj, align 4
  %1004 = load i32, i32* %hypre__div1503, align 4
  %1005 = load i32, i32* %hypre__mod1504, align 4
  %1006 = load i32, i32* %hypre__block1505, align 4
  %cmp1548 = icmp sgt i32 %1005, %1006
  %cond1549 = select i1 %cmp1548, i32 1, i32 0
  %add1550 = add nsw i32 %1004, %cond1549
  store i32 %add1550, i32* %hypre__ny1494, align 4
  br label %if.end.1565

if.else.1551:                                     ; preds = %if.else.1538
  %1007 = load i32, i32* %hypre__dir1501, align 4
  %cmp1552 = icmp eq i32 %1007, 2
  br i1 %cmp1552, label %if.then.1553, label %if.end.1564

if.then.1553:                                     ; preds = %if.else.1551
  %1008 = load i32, i32* %hypre__block1505, align 4
  %1009 = load i32, i32* %hypre__div1503, align 4
  %mul1554 = mul nsw i32 %1008, %1009
  %1010 = load i32, i32* %hypre__mod1504, align 4
  %1011 = load i32, i32* %hypre__block1505, align 4
  %cmp1555 = icmp slt i32 %1010, %1011
  br i1 %cmp1555, label %cond.true.1556, label %cond.false.1557

cond.true.1556:                                   ; preds = %if.then.1553
  %1012 = load i32, i32* %hypre__mod1504, align 4
  br label %cond.end.1558

cond.false.1557:                                  ; preds = %if.then.1553
  %1013 = load i32, i32* %hypre__block1505, align 4
  br label %cond.end.1558

cond.end.1558:                                    ; preds = %cond.false.1557, %cond.true.1556
  %cond1559 = phi i32 [ %1012, %cond.true.1556 ], [ %1013, %cond.false.1557 ]
  %add1560 = add nsw i32 %mul1554, %cond1559
  store i32 %add1560, i32* %loopk, align 4
  %1014 = load i32, i32* %hypre__div1503, align 4
  %1015 = load i32, i32* %hypre__mod1504, align 4
  %1016 = load i32, i32* %hypre__block1505, align 4
  %cmp1561 = icmp sgt i32 %1015, %1016
  %cond1562 = select i1 %cmp1561, i32 1, i32 0
  %add1563 = add nsw i32 %1014, %cond1562
  store i32 %add1563, i32* %hypre__nz1496, align 4
  br label %if.end.1564

if.end.1564:                                      ; preds = %cond.end.1558, %if.else.1551
  br label %if.end.1565

if.end.1565:                                      ; preds = %if.end.1564, %cond.end.1545
  br label %if.end.1566

if.end.1566:                                      ; preds = %if.end.1565, %cond.end.1532
  br label %if.end.1567

if.end.1567:                                      ; preds = %if.end.1566, %for.body.1523
  %1017 = load i32, i32* %hypre__i1start1167, align 4
  %1018 = load i32, i32* %loopi, align 4
  %1019 = load i32, i32* %hypre__sx11318, align 4
  %mul1568 = mul nsw i32 %1018, %1019
  %add1569 = add nsw i32 %1017, %mul1568
  %1020 = load i32, i32* %loopj, align 4
  %1021 = load i32, i32* %hypre__sy11320, align 4
  %mul1570 = mul nsw i32 %1020, %1021
  %add1571 = add nsw i32 %add1569, %mul1570
  %1022 = load i32, i32* %loopk, align 4
  %1023 = load i32, i32* %hypre__sz11340, align 4
  %mul1572 = mul nsw i32 %1022, %1023
  %add1573 = add nsw i32 %add1571, %mul1572
  store i32 %add1573, i32* %Ai, align 4
  %1024 = load i32, i32* %hypre__i2start, align 4
  %1025 = load i32, i32* %loopi, align 4
  %1026 = load i32, i32* %hypre__sx2, align 4
  %mul1574 = mul nsw i32 %1025, %1026
  %add1575 = add nsw i32 %1024, %mul1574
  %1027 = load i32, i32* %loopj, align 4
  %1028 = load i32, i32* %hypre__sy2, align 4
  %mul1576 = mul nsw i32 %1027, %1028
  %add1577 = add nsw i32 %add1575, %mul1576
  %1029 = load i32, i32* %loopk, align 4
  %1030 = load i32, i32* %hypre__sz2, align 4
  %mul1578 = mul nsw i32 %1029, %1030
  %add1579 = add nsw i32 %add1577, %mul1578
  store i32 %add1579, i32* %xi, align 4
  %1031 = load i32, i32* %hypre__i3start, align 4
  %1032 = load i32, i32* %loopi, align 4
  %1033 = load i32, i32* %hypre__sx3, align 4
  %mul1580 = mul nsw i32 %1032, %1033
  %add1581 = add nsw i32 %1031, %mul1580
  %1034 = load i32, i32* %loopj, align 4
  %1035 = load i32, i32* %hypre__sy3, align 4
  %mul1582 = mul nsw i32 %1034, %1035
  %add1583 = add nsw i32 %add1581, %mul1582
  %1036 = load i32, i32* %loopk, align 4
  %1037 = load i32, i32* %hypre__sz3, align 4
  %mul1584 = mul nsw i32 %1036, %1037
  %add1585 = add nsw i32 %add1583, %mul1584
  store i32 %add1585, i32* %yi, align 4
  store i32 0, i32* %loopk, align 4
  br label %for.cond.1586

for.cond.1586:                                    ; preds = %for.inc.1673, %if.end.1567
  %1038 = load i32, i32* %loopk, align 4
  %1039 = load i32, i32* %hypre__nz1496, align 4
  %cmp1587 = icmp slt i32 %1038, %1039
  br i1 %cmp1587, label %for.body.1588, label %for.end.1675

for.body.1588:                                    ; preds = %for.cond.1586
  store i32 0, i32* %loopj, align 4
  br label %for.cond.1589

for.cond.1589:                                    ; preds = %for.inc.1661, %for.body.1588
  %1040 = load i32, i32* %loopj, align 4
  %1041 = load i32, i32* %hypre__ny1494, align 4
  %cmp1590 = icmp slt i32 %1040, %1041
  br i1 %cmp1590, label %for.body.1591, label %for.end.1663

for.body.1591:                                    ; preds = %for.cond.1589
  store i32 0, i32* %loopi, align 4
  br label %for.cond.1592

for.cond.1592:                                    ; preds = %for.inc.1649, %for.body.1591
  %1042 = load i32, i32* %loopi, align 4
  %1043 = load i32, i32* %hypre__nx1492, align 4
  %cmp1593 = icmp slt i32 %1042, %1043
  br i1 %cmp1593, label %for.body.1594, label %for.end.1651

for.body.1594:                                    ; preds = %for.cond.1592
  %1044 = load i32, i32* %Ai, align 4
  %idxprom1595 = sext i32 %1044 to i64
  %1045 = load double*, double** %Ap0, align 8
  %arrayidx1596 = getelementptr inbounds double, double* %1045, i64 %idxprom1595
  %1046 = load double, double* %arrayidx1596, align 8
  %1047 = load i32, i32* %xi, align 4
  %1048 = load i32, i32* %xoff0, align 4
  %add1597 = add nsw i32 %1047, %1048
  %idxprom1598 = sext i32 %add1597 to i64
  %1049 = load double*, double** %xp, align 8
  %arrayidx1599 = getelementptr inbounds double, double* %1049, i64 %idxprom1598
  %1050 = load double, double* %arrayidx1599, align 8
  %mul1600 = fmul double %1046, %1050
  %1051 = load i32, i32* %Ai, align 4
  %idxprom1601 = sext i32 %1051 to i64
  %1052 = load double*, double** %Ap1, align 8
  %arrayidx1602 = getelementptr inbounds double, double* %1052, i64 %idxprom1601
  %1053 = load double, double* %arrayidx1602, align 8
  %1054 = load i32, i32* %xi, align 4
  %1055 = load i32, i32* %xoff1, align 4
  %add1603 = add nsw i32 %1054, %1055
  %idxprom1604 = sext i32 %add1603 to i64
  %1056 = load double*, double** %xp, align 8
  %arrayidx1605 = getelementptr inbounds double, double* %1056, i64 %idxprom1604
  %1057 = load double, double* %arrayidx1605, align 8
  %mul1606 = fmul double %1053, %1057
  %add1607 = fadd double %mul1600, %mul1606
  %1058 = load i32, i32* %Ai, align 4
  %idxprom1608 = sext i32 %1058 to i64
  %1059 = load double*, double** %Ap2, align 8
  %arrayidx1609 = getelementptr inbounds double, double* %1059, i64 %idxprom1608
  %1060 = load double, double* %arrayidx1609, align 8
  %1061 = load i32, i32* %xi, align 4
  %1062 = load i32, i32* %xoff2, align 4
  %add1610 = add nsw i32 %1061, %1062
  %idxprom1611 = sext i32 %add1610 to i64
  %1063 = load double*, double** %xp, align 8
  %arrayidx1612 = getelementptr inbounds double, double* %1063, i64 %idxprom1611
  %1064 = load double, double* %arrayidx1612, align 8
  %mul1613 = fmul double %1060, %1064
  %add1614 = fadd double %add1607, %mul1613
  %1065 = load i32, i32* %Ai, align 4
  %idxprom1615 = sext i32 %1065 to i64
  %1066 = load double*, double** %Ap3, align 8
  %arrayidx1616 = getelementptr inbounds double, double* %1066, i64 %idxprom1615
  %1067 = load double, double* %arrayidx1616, align 8
  %1068 = load i32, i32* %xi, align 4
  %1069 = load i32, i32* %xoff3, align 4
  %add1617 = add nsw i32 %1068, %1069
  %idxprom1618 = sext i32 %add1617 to i64
  %1070 = load double*, double** %xp, align 8
  %arrayidx1619 = getelementptr inbounds double, double* %1070, i64 %idxprom1618
  %1071 = load double, double* %arrayidx1619, align 8
  %mul1620 = fmul double %1067, %1071
  %add1621 = fadd double %add1614, %mul1620
  %1072 = load i32, i32* %Ai, align 4
  %idxprom1622 = sext i32 %1072 to i64
  %1073 = load double*, double** %Ap4, align 8
  %arrayidx1623 = getelementptr inbounds double, double* %1073, i64 %idxprom1622
  %1074 = load double, double* %arrayidx1623, align 8
  %1075 = load i32, i32* %xi, align 4
  %1076 = load i32, i32* %xoff4, align 4
  %add1624 = add nsw i32 %1075, %1076
  %idxprom1625 = sext i32 %add1624 to i64
  %1077 = load double*, double** %xp, align 8
  %arrayidx1626 = getelementptr inbounds double, double* %1077, i64 %idxprom1625
  %1078 = load double, double* %arrayidx1626, align 8
  %mul1627 = fmul double %1074, %1078
  %add1628 = fadd double %add1621, %mul1627
  %1079 = load i32, i32* %Ai, align 4
  %idxprom1629 = sext i32 %1079 to i64
  %1080 = load double*, double** %Ap5, align 8
  %arrayidx1630 = getelementptr inbounds double, double* %1080, i64 %idxprom1629
  %1081 = load double, double* %arrayidx1630, align 8
  %1082 = load i32, i32* %xi, align 4
  %1083 = load i32, i32* %xoff5, align 4
  %add1631 = add nsw i32 %1082, %1083
  %idxprom1632 = sext i32 %add1631 to i64
  %1084 = load double*, double** %xp, align 8
  %arrayidx1633 = getelementptr inbounds double, double* %1084, i64 %idxprom1632
  %1085 = load double, double* %arrayidx1633, align 8
  %mul1634 = fmul double %1081, %1085
  %add1635 = fadd double %add1628, %mul1634
  %1086 = load i32, i32* %Ai, align 4
  %idxprom1636 = sext i32 %1086 to i64
  %1087 = load double*, double** %Ap6, align 8
  %arrayidx1637 = getelementptr inbounds double, double* %1087, i64 %idxprom1636
  %1088 = load double, double* %arrayidx1637, align 8
  %1089 = load i32, i32* %xi, align 4
  %1090 = load i32, i32* %xoff6, align 4
  %add1638 = add nsw i32 %1089, %1090
  %idxprom1639 = sext i32 %add1638 to i64
  %1091 = load double*, double** %xp, align 8
  %arrayidx1640 = getelementptr inbounds double, double* %1091, i64 %idxprom1639
  %1092 = load double, double* %arrayidx1640, align 8
  %mul1641 = fmul double %1088, %1092
  %add1642 = fadd double %add1635, %mul1641
  %1093 = load i32, i32* %yi, align 4
  %idxprom1643 = sext i32 %1093 to i64
  %1094 = load double*, double** %yp, align 8
  %arrayidx1644 = getelementptr inbounds double, double* %1094, i64 %idxprom1643
  %1095 = load double, double* %arrayidx1644, align 8
  %add1645 = fadd double %1095, %add1642
  store double %add1645, double* %arrayidx1644, align 8
  %1096 = load i32, i32* %hypre__sx11318, align 4
  %1097 = load i32, i32* %Ai, align 4
  %add1646 = add nsw i32 %1097, %1096
  store i32 %add1646, i32* %Ai, align 4
  %1098 = load i32, i32* %hypre__sx2, align 4
  %1099 = load i32, i32* %xi, align 4
  %add1647 = add nsw i32 %1099, %1098
  store i32 %add1647, i32* %xi, align 4
  %1100 = load i32, i32* %hypre__sx3, align 4
  %1101 = load i32, i32* %yi, align 4
  %add1648 = add nsw i32 %1101, %1100
  store i32 %add1648, i32* %yi, align 4
  br label %for.inc.1649

for.inc.1649:                                     ; preds = %for.body.1594
  %1102 = load i32, i32* %loopi, align 4
  %inc1650 = add nsw i32 %1102, 1
  store i32 %inc1650, i32* %loopi, align 4
  br label %for.cond.1592

for.end.1651:                                     ; preds = %for.cond.1592
  %1103 = load i32, i32* %hypre__sy11320, align 4
  %1104 = load i32, i32* %hypre__nx1492, align 4
  %1105 = load i32, i32* %hypre__sx11318, align 4
  %mul1652 = mul nsw i32 %1104, %1105
  %sub1653 = sub nsw i32 %1103, %mul1652
  %1106 = load i32, i32* %Ai, align 4
  %add1654 = add nsw i32 %1106, %sub1653
  store i32 %add1654, i32* %Ai, align 4
  %1107 = load i32, i32* %hypre__sy2, align 4
  %1108 = load i32, i32* %hypre__nx1492, align 4
  %1109 = load i32, i32* %hypre__sx2, align 4
  %mul1655 = mul nsw i32 %1108, %1109
  %sub1656 = sub nsw i32 %1107, %mul1655
  %1110 = load i32, i32* %xi, align 4
  %add1657 = add nsw i32 %1110, %sub1656
  store i32 %add1657, i32* %xi, align 4
  %1111 = load i32, i32* %hypre__sy3, align 4
  %1112 = load i32, i32* %hypre__nx1492, align 4
  %1113 = load i32, i32* %hypre__sx3, align 4
  %mul1658 = mul nsw i32 %1112, %1113
  %sub1659 = sub nsw i32 %1111, %mul1658
  %1114 = load i32, i32* %yi, align 4
  %add1660 = add nsw i32 %1114, %sub1659
  store i32 %add1660, i32* %yi, align 4
  br label %for.inc.1661

for.inc.1661:                                     ; preds = %for.end.1651
  %1115 = load i32, i32* %loopj, align 4
  %inc1662 = add nsw i32 %1115, 1
  store i32 %inc1662, i32* %loopj, align 4
  br label %for.cond.1589

for.end.1663:                                     ; preds = %for.cond.1589
  %1116 = load i32, i32* %hypre__sz11340, align 4
  %1117 = load i32, i32* %hypre__ny1494, align 4
  %1118 = load i32, i32* %hypre__sy11320, align 4
  %mul1664 = mul nsw i32 %1117, %1118
  %sub1665 = sub nsw i32 %1116, %mul1664
  %1119 = load i32, i32* %Ai, align 4
  %add1666 = add nsw i32 %1119, %sub1665
  store i32 %add1666, i32* %Ai, align 4
  %1120 = load i32, i32* %hypre__sz2, align 4
  %1121 = load i32, i32* %hypre__ny1494, align 4
  %1122 = load i32, i32* %hypre__sy2, align 4
  %mul1667 = mul nsw i32 %1121, %1122
  %sub1668 = sub nsw i32 %1120, %mul1667
  %1123 = load i32, i32* %xi, align 4
  %add1669 = add nsw i32 %1123, %sub1668
  store i32 %add1669, i32* %xi, align 4
  %1124 = load i32, i32* %hypre__sz3, align 4
  %1125 = load i32, i32* %hypre__ny1494, align 4
  %1126 = load i32, i32* %hypre__sy3, align 4
  %mul1670 = mul nsw i32 %1125, %1126
  %sub1671 = sub nsw i32 %1124, %mul1670
  %1127 = load i32, i32* %yi, align 4
  %add1672 = add nsw i32 %1127, %sub1671
  store i32 %add1672, i32* %yi, align 4
  br label %for.inc.1673

for.inc.1673:                                     ; preds = %for.end.1663
  %1128 = load i32, i32* %loopk, align 4
  %inc1674 = add nsw i32 %1128, 1
  store i32 %inc1674, i32* %loopk, align 4
  br label %for.cond.1586

for.end.1675:                                     ; preds = %for.cond.1586
  br label %for.inc.1676

for.inc.1676:                                     ; preds = %for.end.1675
  %1129 = load i32, i32* %hypre__block1505, align 4
  %inc1677 = add nsw i32 %1129, 1
  store i32 %inc1677, i32* %hypre__block1505, align 4
  br label %for.cond.1521

for.end.1678:                                     ; preds = %for.cond.1521
  br label %sw.epilog.5897

sw.bb.1679:                                       ; preds = %cond.end.751
  %1130 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data1680 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %1130, i32 0, i32 6
  %1131 = load double*, double** %data1680, align 8
  %1132 = load i32, i32* %si, align 4
  %add1681 = add nsw i32 %1132, 0
  %idxprom1682 = sext i32 %add1681 to i64
  %1133 = load i32, i32* %i, align 4
  %idxprom1683 = sext i32 %1133 to i64
  %1134 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data_indices1684 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %1134, i32 0, i32 9
  %1135 = load i32**, i32*** %data_indices1684, align 8
  %arrayidx1685 = getelementptr inbounds i32*, i32** %1135, i64 %idxprom1683
  %1136 = load i32*, i32** %arrayidx1685, align 8
  %arrayidx1686 = getelementptr inbounds i32, i32* %1136, i64 %idxprom1682
  %1137 = load i32, i32* %arrayidx1686, align 4
  %idx.ext1687 = sext i32 %1137 to i64
  %add.ptr1688 = getelementptr inbounds double, double* %1131, i64 %idx.ext1687
  store double* %add.ptr1688, double** %Ap0, align 8
  %1138 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data1689 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %1138, i32 0, i32 6
  %1139 = load double*, double** %data1689, align 8
  %1140 = load i32, i32* %si, align 4
  %add1690 = add nsw i32 %1140, 1
  %idxprom1691 = sext i32 %add1690 to i64
  %1141 = load i32, i32* %i, align 4
  %idxprom1692 = sext i32 %1141 to i64
  %1142 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data_indices1693 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %1142, i32 0, i32 9
  %1143 = load i32**, i32*** %data_indices1693, align 8
  %arrayidx1694 = getelementptr inbounds i32*, i32** %1143, i64 %idxprom1692
  %1144 = load i32*, i32** %arrayidx1694, align 8
  %arrayidx1695 = getelementptr inbounds i32, i32* %1144, i64 %idxprom1691
  %1145 = load i32, i32* %arrayidx1695, align 4
  %idx.ext1696 = sext i32 %1145 to i64
  %add.ptr1697 = getelementptr inbounds double, double* %1139, i64 %idx.ext1696
  store double* %add.ptr1697, double** %Ap1, align 8
  %1146 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data1698 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %1146, i32 0, i32 6
  %1147 = load double*, double** %data1698, align 8
  %1148 = load i32, i32* %si, align 4
  %add1699 = add nsw i32 %1148, 2
  %idxprom1700 = sext i32 %add1699 to i64
  %1149 = load i32, i32* %i, align 4
  %idxprom1701 = sext i32 %1149 to i64
  %1150 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data_indices1702 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %1150, i32 0, i32 9
  %1151 = load i32**, i32*** %data_indices1702, align 8
  %arrayidx1703 = getelementptr inbounds i32*, i32** %1151, i64 %idxprom1701
  %1152 = load i32*, i32** %arrayidx1703, align 8
  %arrayidx1704 = getelementptr inbounds i32, i32* %1152, i64 %idxprom1700
  %1153 = load i32, i32* %arrayidx1704, align 4
  %idx.ext1705 = sext i32 %1153 to i64
  %add.ptr1706 = getelementptr inbounds double, double* %1147, i64 %idx.ext1705
  store double* %add.ptr1706, double** %Ap2, align 8
  %1154 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data1707 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %1154, i32 0, i32 6
  %1155 = load double*, double** %data1707, align 8
  %1156 = load i32, i32* %si, align 4
  %add1708 = add nsw i32 %1156, 3
  %idxprom1709 = sext i32 %add1708 to i64
  %1157 = load i32, i32* %i, align 4
  %idxprom1710 = sext i32 %1157 to i64
  %1158 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data_indices1711 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %1158, i32 0, i32 9
  %1159 = load i32**, i32*** %data_indices1711, align 8
  %arrayidx1712 = getelementptr inbounds i32*, i32** %1159, i64 %idxprom1710
  %1160 = load i32*, i32** %arrayidx1712, align 8
  %arrayidx1713 = getelementptr inbounds i32, i32* %1160, i64 %idxprom1709
  %1161 = load i32, i32* %arrayidx1713, align 4
  %idx.ext1714 = sext i32 %1161 to i64
  %add.ptr1715 = getelementptr inbounds double, double* %1155, i64 %idx.ext1714
  store double* %add.ptr1715, double** %Ap3, align 8
  %1162 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data1716 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %1162, i32 0, i32 6
  %1163 = load double*, double** %data1716, align 8
  %1164 = load i32, i32* %si, align 4
  %add1717 = add nsw i32 %1164, 4
  %idxprom1718 = sext i32 %add1717 to i64
  %1165 = load i32, i32* %i, align 4
  %idxprom1719 = sext i32 %1165 to i64
  %1166 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data_indices1720 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %1166, i32 0, i32 9
  %1167 = load i32**, i32*** %data_indices1720, align 8
  %arrayidx1721 = getelementptr inbounds i32*, i32** %1167, i64 %idxprom1719
  %1168 = load i32*, i32** %arrayidx1721, align 8
  %arrayidx1722 = getelementptr inbounds i32, i32* %1168, i64 %idxprom1718
  %1169 = load i32, i32* %arrayidx1722, align 4
  %idx.ext1723 = sext i32 %1169 to i64
  %add.ptr1724 = getelementptr inbounds double, double* %1163, i64 %idx.ext1723
  store double* %add.ptr1724, double** %Ap4, align 8
  %1170 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data1725 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %1170, i32 0, i32 6
  %1171 = load double*, double** %data1725, align 8
  %1172 = load i32, i32* %si, align 4
  %add1726 = add nsw i32 %1172, 5
  %idxprom1727 = sext i32 %add1726 to i64
  %1173 = load i32, i32* %i, align 4
  %idxprom1728 = sext i32 %1173 to i64
  %1174 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data_indices1729 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %1174, i32 0, i32 9
  %1175 = load i32**, i32*** %data_indices1729, align 8
  %arrayidx1730 = getelementptr inbounds i32*, i32** %1175, i64 %idxprom1728
  %1176 = load i32*, i32** %arrayidx1730, align 8
  %arrayidx1731 = getelementptr inbounds i32, i32* %1176, i64 %idxprom1727
  %1177 = load i32, i32* %arrayidx1731, align 4
  %idx.ext1732 = sext i32 %1177 to i64
  %add.ptr1733 = getelementptr inbounds double, double* %1171, i64 %idx.ext1732
  store double* %add.ptr1733, double** %Ap5, align 8
  %1178 = load i32, i32* %si, align 4
  %add1734 = add nsw i32 %1178, 0
  %idxprom1735 = sext i32 %add1734 to i64
  %1179 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx1736 = getelementptr inbounds [3 x i32], [3 x i32]* %1179, i64 %idxprom1735
  %arrayidx1737 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx1736, i32 0, i64 0
  %1180 = load i32, i32* %arrayidx1737, align 4
  %1181 = load i32, i32* %si, align 4
  %add1738 = add nsw i32 %1181, 0
  %idxprom1739 = sext i32 %add1738 to i64
  %1182 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx1740 = getelementptr inbounds [3 x i32], [3 x i32]* %1182, i64 %idxprom1739
  %arrayidx1741 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx1740, i32 0, i64 1
  %1183 = load i32, i32* %arrayidx1741, align 4
  %1184 = load i32, i32* %si, align 4
  %add1742 = add nsw i32 %1184, 0
  %idxprom1743 = sext i32 %add1742 to i64
  %1185 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx1744 = getelementptr inbounds [3 x i32], [3 x i32]* %1185, i64 %idxprom1743
  %arrayidx1745 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx1744, i32 0, i64 2
  %1186 = load i32, i32* %arrayidx1745, align 4
  %1187 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax1746 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1187, i32 0, i32 1
  %arrayidx1747 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1746, i32 0, i64 1
  %1188 = load i32, i32* %arrayidx1747, align 4
  %1189 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1748 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1189, i32 0, i32 0
  %arrayidx1749 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1748, i32 0, i64 1
  %1190 = load i32, i32* %arrayidx1749, align 4
  %sub1750 = sub nsw i32 %1188, %1190
  %add1751 = add nsw i32 %sub1750, 1
  %cmp1752 = icmp slt i32 0, %add1751
  br i1 %cmp1752, label %cond.true.1753, label %cond.false.1760

cond.true.1753:                                   ; preds = %sw.bb.1679
  %1191 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax1754 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1191, i32 0, i32 1
  %arrayidx1755 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1754, i32 0, i64 1
  %1192 = load i32, i32* %arrayidx1755, align 4
  %1193 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1756 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1193, i32 0, i32 0
  %arrayidx1757 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1756, i32 0, i64 1
  %1194 = load i32, i32* %arrayidx1757, align 4
  %sub1758 = sub nsw i32 %1192, %1194
  %add1759 = add nsw i32 %sub1758, 1
  br label %cond.end.1761

cond.false.1760:                                  ; preds = %sw.bb.1679
  br label %cond.end.1761

cond.end.1761:                                    ; preds = %cond.false.1760, %cond.true.1753
  %cond1762 = phi i32 [ %add1759, %cond.true.1753 ], [ 0, %cond.false.1760 ]
  %mul1763 = mul nsw i32 %1186, %cond1762
  %add1764 = add nsw i32 %1183, %mul1763
  %1195 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax1765 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1195, i32 0, i32 1
  %arrayidx1766 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1765, i32 0, i64 0
  %1196 = load i32, i32* %arrayidx1766, align 4
  %1197 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1767 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1197, i32 0, i32 0
  %arrayidx1768 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1767, i32 0, i64 0
  %1198 = load i32, i32* %arrayidx1768, align 4
  %sub1769 = sub nsw i32 %1196, %1198
  %add1770 = add nsw i32 %sub1769, 1
  %cmp1771 = icmp slt i32 0, %add1770
  br i1 %cmp1771, label %cond.true.1772, label %cond.false.1779

cond.true.1772:                                   ; preds = %cond.end.1761
  %1199 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax1773 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1199, i32 0, i32 1
  %arrayidx1774 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1773, i32 0, i64 0
  %1200 = load i32, i32* %arrayidx1774, align 4
  %1201 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1775 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1201, i32 0, i32 0
  %arrayidx1776 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1775, i32 0, i64 0
  %1202 = load i32, i32* %arrayidx1776, align 4
  %sub1777 = sub nsw i32 %1200, %1202
  %add1778 = add nsw i32 %sub1777, 1
  br label %cond.end.1780

cond.false.1779:                                  ; preds = %cond.end.1761
  br label %cond.end.1780

cond.end.1780:                                    ; preds = %cond.false.1779, %cond.true.1772
  %cond1781 = phi i32 [ %add1778, %cond.true.1772 ], [ 0, %cond.false.1779 ]
  %mul1782 = mul nsw i32 %add1764, %cond1781
  %add1783 = add nsw i32 %1180, %mul1782
  store i32 %add1783, i32* %xoff0, align 4
  %1203 = load i32, i32* %si, align 4
  %add1784 = add nsw i32 %1203, 1
  %idxprom1785 = sext i32 %add1784 to i64
  %1204 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx1786 = getelementptr inbounds [3 x i32], [3 x i32]* %1204, i64 %idxprom1785
  %arrayidx1787 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx1786, i32 0, i64 0
  %1205 = load i32, i32* %arrayidx1787, align 4
  %1206 = load i32, i32* %si, align 4
  %add1788 = add nsw i32 %1206, 1
  %idxprom1789 = sext i32 %add1788 to i64
  %1207 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx1790 = getelementptr inbounds [3 x i32], [3 x i32]* %1207, i64 %idxprom1789
  %arrayidx1791 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx1790, i32 0, i64 1
  %1208 = load i32, i32* %arrayidx1791, align 4
  %1209 = load i32, i32* %si, align 4
  %add1792 = add nsw i32 %1209, 1
  %idxprom1793 = sext i32 %add1792 to i64
  %1210 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx1794 = getelementptr inbounds [3 x i32], [3 x i32]* %1210, i64 %idxprom1793
  %arrayidx1795 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx1794, i32 0, i64 2
  %1211 = load i32, i32* %arrayidx1795, align 4
  %1212 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax1796 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1212, i32 0, i32 1
  %arrayidx1797 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1796, i32 0, i64 1
  %1213 = load i32, i32* %arrayidx1797, align 4
  %1214 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1798 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1214, i32 0, i32 0
  %arrayidx1799 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1798, i32 0, i64 1
  %1215 = load i32, i32* %arrayidx1799, align 4
  %sub1800 = sub nsw i32 %1213, %1215
  %add1801 = add nsw i32 %sub1800, 1
  %cmp1802 = icmp slt i32 0, %add1801
  br i1 %cmp1802, label %cond.true.1803, label %cond.false.1810

cond.true.1803:                                   ; preds = %cond.end.1780
  %1216 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax1804 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1216, i32 0, i32 1
  %arrayidx1805 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1804, i32 0, i64 1
  %1217 = load i32, i32* %arrayidx1805, align 4
  %1218 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1806 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1218, i32 0, i32 0
  %arrayidx1807 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1806, i32 0, i64 1
  %1219 = load i32, i32* %arrayidx1807, align 4
  %sub1808 = sub nsw i32 %1217, %1219
  %add1809 = add nsw i32 %sub1808, 1
  br label %cond.end.1811

cond.false.1810:                                  ; preds = %cond.end.1780
  br label %cond.end.1811

cond.end.1811:                                    ; preds = %cond.false.1810, %cond.true.1803
  %cond1812 = phi i32 [ %add1809, %cond.true.1803 ], [ 0, %cond.false.1810 ]
  %mul1813 = mul nsw i32 %1211, %cond1812
  %add1814 = add nsw i32 %1208, %mul1813
  %1220 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax1815 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1220, i32 0, i32 1
  %arrayidx1816 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1815, i32 0, i64 0
  %1221 = load i32, i32* %arrayidx1816, align 4
  %1222 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1817 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1222, i32 0, i32 0
  %arrayidx1818 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1817, i32 0, i64 0
  %1223 = load i32, i32* %arrayidx1818, align 4
  %sub1819 = sub nsw i32 %1221, %1223
  %add1820 = add nsw i32 %sub1819, 1
  %cmp1821 = icmp slt i32 0, %add1820
  br i1 %cmp1821, label %cond.true.1822, label %cond.false.1829

cond.true.1822:                                   ; preds = %cond.end.1811
  %1224 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax1823 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1224, i32 0, i32 1
  %arrayidx1824 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1823, i32 0, i64 0
  %1225 = load i32, i32* %arrayidx1824, align 4
  %1226 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1825 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1226, i32 0, i32 0
  %arrayidx1826 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1825, i32 0, i64 0
  %1227 = load i32, i32* %arrayidx1826, align 4
  %sub1827 = sub nsw i32 %1225, %1227
  %add1828 = add nsw i32 %sub1827, 1
  br label %cond.end.1830

cond.false.1829:                                  ; preds = %cond.end.1811
  br label %cond.end.1830

cond.end.1830:                                    ; preds = %cond.false.1829, %cond.true.1822
  %cond1831 = phi i32 [ %add1828, %cond.true.1822 ], [ 0, %cond.false.1829 ]
  %mul1832 = mul nsw i32 %add1814, %cond1831
  %add1833 = add nsw i32 %1205, %mul1832
  store i32 %add1833, i32* %xoff1, align 4
  %1228 = load i32, i32* %si, align 4
  %add1834 = add nsw i32 %1228, 2
  %idxprom1835 = sext i32 %add1834 to i64
  %1229 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx1836 = getelementptr inbounds [3 x i32], [3 x i32]* %1229, i64 %idxprom1835
  %arrayidx1837 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx1836, i32 0, i64 0
  %1230 = load i32, i32* %arrayidx1837, align 4
  %1231 = load i32, i32* %si, align 4
  %add1838 = add nsw i32 %1231, 2
  %idxprom1839 = sext i32 %add1838 to i64
  %1232 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx1840 = getelementptr inbounds [3 x i32], [3 x i32]* %1232, i64 %idxprom1839
  %arrayidx1841 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx1840, i32 0, i64 1
  %1233 = load i32, i32* %arrayidx1841, align 4
  %1234 = load i32, i32* %si, align 4
  %add1842 = add nsw i32 %1234, 2
  %idxprom1843 = sext i32 %add1842 to i64
  %1235 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx1844 = getelementptr inbounds [3 x i32], [3 x i32]* %1235, i64 %idxprom1843
  %arrayidx1845 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx1844, i32 0, i64 2
  %1236 = load i32, i32* %arrayidx1845, align 4
  %1237 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax1846 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1237, i32 0, i32 1
  %arrayidx1847 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1846, i32 0, i64 1
  %1238 = load i32, i32* %arrayidx1847, align 4
  %1239 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1848 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1239, i32 0, i32 0
  %arrayidx1849 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1848, i32 0, i64 1
  %1240 = load i32, i32* %arrayidx1849, align 4
  %sub1850 = sub nsw i32 %1238, %1240
  %add1851 = add nsw i32 %sub1850, 1
  %cmp1852 = icmp slt i32 0, %add1851
  br i1 %cmp1852, label %cond.true.1853, label %cond.false.1860

cond.true.1853:                                   ; preds = %cond.end.1830
  %1241 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax1854 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1241, i32 0, i32 1
  %arrayidx1855 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1854, i32 0, i64 1
  %1242 = load i32, i32* %arrayidx1855, align 4
  %1243 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1856 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1243, i32 0, i32 0
  %arrayidx1857 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1856, i32 0, i64 1
  %1244 = load i32, i32* %arrayidx1857, align 4
  %sub1858 = sub nsw i32 %1242, %1244
  %add1859 = add nsw i32 %sub1858, 1
  br label %cond.end.1861

cond.false.1860:                                  ; preds = %cond.end.1830
  br label %cond.end.1861

cond.end.1861:                                    ; preds = %cond.false.1860, %cond.true.1853
  %cond1862 = phi i32 [ %add1859, %cond.true.1853 ], [ 0, %cond.false.1860 ]
  %mul1863 = mul nsw i32 %1236, %cond1862
  %add1864 = add nsw i32 %1233, %mul1863
  %1245 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax1865 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1245, i32 0, i32 1
  %arrayidx1866 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1865, i32 0, i64 0
  %1246 = load i32, i32* %arrayidx1866, align 4
  %1247 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1867 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1247, i32 0, i32 0
  %arrayidx1868 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1867, i32 0, i64 0
  %1248 = load i32, i32* %arrayidx1868, align 4
  %sub1869 = sub nsw i32 %1246, %1248
  %add1870 = add nsw i32 %sub1869, 1
  %cmp1871 = icmp slt i32 0, %add1870
  br i1 %cmp1871, label %cond.true.1872, label %cond.false.1879

cond.true.1872:                                   ; preds = %cond.end.1861
  %1249 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax1873 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1249, i32 0, i32 1
  %arrayidx1874 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1873, i32 0, i64 0
  %1250 = load i32, i32* %arrayidx1874, align 4
  %1251 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1875 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1251, i32 0, i32 0
  %arrayidx1876 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1875, i32 0, i64 0
  %1252 = load i32, i32* %arrayidx1876, align 4
  %sub1877 = sub nsw i32 %1250, %1252
  %add1878 = add nsw i32 %sub1877, 1
  br label %cond.end.1880

cond.false.1879:                                  ; preds = %cond.end.1861
  br label %cond.end.1880

cond.end.1880:                                    ; preds = %cond.false.1879, %cond.true.1872
  %cond1881 = phi i32 [ %add1878, %cond.true.1872 ], [ 0, %cond.false.1879 ]
  %mul1882 = mul nsw i32 %add1864, %cond1881
  %add1883 = add nsw i32 %1230, %mul1882
  store i32 %add1883, i32* %xoff2, align 4
  %1253 = load i32, i32* %si, align 4
  %add1884 = add nsw i32 %1253, 3
  %idxprom1885 = sext i32 %add1884 to i64
  %1254 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx1886 = getelementptr inbounds [3 x i32], [3 x i32]* %1254, i64 %idxprom1885
  %arrayidx1887 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx1886, i32 0, i64 0
  %1255 = load i32, i32* %arrayidx1887, align 4
  %1256 = load i32, i32* %si, align 4
  %add1888 = add nsw i32 %1256, 3
  %idxprom1889 = sext i32 %add1888 to i64
  %1257 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx1890 = getelementptr inbounds [3 x i32], [3 x i32]* %1257, i64 %idxprom1889
  %arrayidx1891 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx1890, i32 0, i64 1
  %1258 = load i32, i32* %arrayidx1891, align 4
  %1259 = load i32, i32* %si, align 4
  %add1892 = add nsw i32 %1259, 3
  %idxprom1893 = sext i32 %add1892 to i64
  %1260 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx1894 = getelementptr inbounds [3 x i32], [3 x i32]* %1260, i64 %idxprom1893
  %arrayidx1895 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx1894, i32 0, i64 2
  %1261 = load i32, i32* %arrayidx1895, align 4
  %1262 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax1896 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1262, i32 0, i32 1
  %arrayidx1897 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1896, i32 0, i64 1
  %1263 = load i32, i32* %arrayidx1897, align 4
  %1264 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1898 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1264, i32 0, i32 0
  %arrayidx1899 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1898, i32 0, i64 1
  %1265 = load i32, i32* %arrayidx1899, align 4
  %sub1900 = sub nsw i32 %1263, %1265
  %add1901 = add nsw i32 %sub1900, 1
  %cmp1902 = icmp slt i32 0, %add1901
  br i1 %cmp1902, label %cond.true.1903, label %cond.false.1910

cond.true.1903:                                   ; preds = %cond.end.1880
  %1266 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax1904 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1266, i32 0, i32 1
  %arrayidx1905 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1904, i32 0, i64 1
  %1267 = load i32, i32* %arrayidx1905, align 4
  %1268 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1906 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1268, i32 0, i32 0
  %arrayidx1907 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1906, i32 0, i64 1
  %1269 = load i32, i32* %arrayidx1907, align 4
  %sub1908 = sub nsw i32 %1267, %1269
  %add1909 = add nsw i32 %sub1908, 1
  br label %cond.end.1911

cond.false.1910:                                  ; preds = %cond.end.1880
  br label %cond.end.1911

cond.end.1911:                                    ; preds = %cond.false.1910, %cond.true.1903
  %cond1912 = phi i32 [ %add1909, %cond.true.1903 ], [ 0, %cond.false.1910 ]
  %mul1913 = mul nsw i32 %1261, %cond1912
  %add1914 = add nsw i32 %1258, %mul1913
  %1270 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax1915 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1270, i32 0, i32 1
  %arrayidx1916 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1915, i32 0, i64 0
  %1271 = load i32, i32* %arrayidx1916, align 4
  %1272 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1917 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1272, i32 0, i32 0
  %arrayidx1918 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1917, i32 0, i64 0
  %1273 = load i32, i32* %arrayidx1918, align 4
  %sub1919 = sub nsw i32 %1271, %1273
  %add1920 = add nsw i32 %sub1919, 1
  %cmp1921 = icmp slt i32 0, %add1920
  br i1 %cmp1921, label %cond.true.1922, label %cond.false.1929

cond.true.1922:                                   ; preds = %cond.end.1911
  %1274 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax1923 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1274, i32 0, i32 1
  %arrayidx1924 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1923, i32 0, i64 0
  %1275 = load i32, i32* %arrayidx1924, align 4
  %1276 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1925 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1276, i32 0, i32 0
  %arrayidx1926 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1925, i32 0, i64 0
  %1277 = load i32, i32* %arrayidx1926, align 4
  %sub1927 = sub nsw i32 %1275, %1277
  %add1928 = add nsw i32 %sub1927, 1
  br label %cond.end.1930

cond.false.1929:                                  ; preds = %cond.end.1911
  br label %cond.end.1930

cond.end.1930:                                    ; preds = %cond.false.1929, %cond.true.1922
  %cond1931 = phi i32 [ %add1928, %cond.true.1922 ], [ 0, %cond.false.1929 ]
  %mul1932 = mul nsw i32 %add1914, %cond1931
  %add1933 = add nsw i32 %1255, %mul1932
  store i32 %add1933, i32* %xoff3, align 4
  %1278 = load i32, i32* %si, align 4
  %add1934 = add nsw i32 %1278, 4
  %idxprom1935 = sext i32 %add1934 to i64
  %1279 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx1936 = getelementptr inbounds [3 x i32], [3 x i32]* %1279, i64 %idxprom1935
  %arrayidx1937 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx1936, i32 0, i64 0
  %1280 = load i32, i32* %arrayidx1937, align 4
  %1281 = load i32, i32* %si, align 4
  %add1938 = add nsw i32 %1281, 4
  %idxprom1939 = sext i32 %add1938 to i64
  %1282 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx1940 = getelementptr inbounds [3 x i32], [3 x i32]* %1282, i64 %idxprom1939
  %arrayidx1941 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx1940, i32 0, i64 1
  %1283 = load i32, i32* %arrayidx1941, align 4
  %1284 = load i32, i32* %si, align 4
  %add1942 = add nsw i32 %1284, 4
  %idxprom1943 = sext i32 %add1942 to i64
  %1285 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx1944 = getelementptr inbounds [3 x i32], [3 x i32]* %1285, i64 %idxprom1943
  %arrayidx1945 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx1944, i32 0, i64 2
  %1286 = load i32, i32* %arrayidx1945, align 4
  %1287 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax1946 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1287, i32 0, i32 1
  %arrayidx1947 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1946, i32 0, i64 1
  %1288 = load i32, i32* %arrayidx1947, align 4
  %1289 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1948 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1289, i32 0, i32 0
  %arrayidx1949 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1948, i32 0, i64 1
  %1290 = load i32, i32* %arrayidx1949, align 4
  %sub1950 = sub nsw i32 %1288, %1290
  %add1951 = add nsw i32 %sub1950, 1
  %cmp1952 = icmp slt i32 0, %add1951
  br i1 %cmp1952, label %cond.true.1953, label %cond.false.1960

cond.true.1953:                                   ; preds = %cond.end.1930
  %1291 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax1954 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1291, i32 0, i32 1
  %arrayidx1955 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1954, i32 0, i64 1
  %1292 = load i32, i32* %arrayidx1955, align 4
  %1293 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1956 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1293, i32 0, i32 0
  %arrayidx1957 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1956, i32 0, i64 1
  %1294 = load i32, i32* %arrayidx1957, align 4
  %sub1958 = sub nsw i32 %1292, %1294
  %add1959 = add nsw i32 %sub1958, 1
  br label %cond.end.1961

cond.false.1960:                                  ; preds = %cond.end.1930
  br label %cond.end.1961

cond.end.1961:                                    ; preds = %cond.false.1960, %cond.true.1953
  %cond1962 = phi i32 [ %add1959, %cond.true.1953 ], [ 0, %cond.false.1960 ]
  %mul1963 = mul nsw i32 %1286, %cond1962
  %add1964 = add nsw i32 %1283, %mul1963
  %1295 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax1965 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1295, i32 0, i32 1
  %arrayidx1966 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1965, i32 0, i64 0
  %1296 = load i32, i32* %arrayidx1966, align 4
  %1297 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1967 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1297, i32 0, i32 0
  %arrayidx1968 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1967, i32 0, i64 0
  %1298 = load i32, i32* %arrayidx1968, align 4
  %sub1969 = sub nsw i32 %1296, %1298
  %add1970 = add nsw i32 %sub1969, 1
  %cmp1971 = icmp slt i32 0, %add1970
  br i1 %cmp1971, label %cond.true.1972, label %cond.false.1979

cond.true.1972:                                   ; preds = %cond.end.1961
  %1299 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax1973 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1299, i32 0, i32 1
  %arrayidx1974 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1973, i32 0, i64 0
  %1300 = load i32, i32* %arrayidx1974, align 4
  %1301 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1975 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1301, i32 0, i32 0
  %arrayidx1976 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1975, i32 0, i64 0
  %1302 = load i32, i32* %arrayidx1976, align 4
  %sub1977 = sub nsw i32 %1300, %1302
  %add1978 = add nsw i32 %sub1977, 1
  br label %cond.end.1980

cond.false.1979:                                  ; preds = %cond.end.1961
  br label %cond.end.1980

cond.end.1980:                                    ; preds = %cond.false.1979, %cond.true.1972
  %cond1981 = phi i32 [ %add1978, %cond.true.1972 ], [ 0, %cond.false.1979 ]
  %mul1982 = mul nsw i32 %add1964, %cond1981
  %add1983 = add nsw i32 %1280, %mul1982
  store i32 %add1983, i32* %xoff4, align 4
  %1303 = load i32, i32* %si, align 4
  %add1984 = add nsw i32 %1303, 5
  %idxprom1985 = sext i32 %add1984 to i64
  %1304 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx1986 = getelementptr inbounds [3 x i32], [3 x i32]* %1304, i64 %idxprom1985
  %arrayidx1987 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx1986, i32 0, i64 0
  %1305 = load i32, i32* %arrayidx1987, align 4
  %1306 = load i32, i32* %si, align 4
  %add1988 = add nsw i32 %1306, 5
  %idxprom1989 = sext i32 %add1988 to i64
  %1307 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx1990 = getelementptr inbounds [3 x i32], [3 x i32]* %1307, i64 %idxprom1989
  %arrayidx1991 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx1990, i32 0, i64 1
  %1308 = load i32, i32* %arrayidx1991, align 4
  %1309 = load i32, i32* %si, align 4
  %add1992 = add nsw i32 %1309, 5
  %idxprom1993 = sext i32 %add1992 to i64
  %1310 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx1994 = getelementptr inbounds [3 x i32], [3 x i32]* %1310, i64 %idxprom1993
  %arrayidx1995 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx1994, i32 0, i64 2
  %1311 = load i32, i32* %arrayidx1995, align 4
  %1312 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax1996 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1312, i32 0, i32 1
  %arrayidx1997 = getelementptr inbounds [3 x i32], [3 x i32]* %imax1996, i32 0, i64 1
  %1313 = load i32, i32* %arrayidx1997, align 4
  %1314 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin1998 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1314, i32 0, i32 0
  %arrayidx1999 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1998, i32 0, i64 1
  %1315 = load i32, i32* %arrayidx1999, align 4
  %sub2000 = sub nsw i32 %1313, %1315
  %add2001 = add nsw i32 %sub2000, 1
  %cmp2002 = icmp slt i32 0, %add2001
  br i1 %cmp2002, label %cond.true.2003, label %cond.false.2010

cond.true.2003:                                   ; preds = %cond.end.1980
  %1316 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax2004 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1316, i32 0, i32 1
  %arrayidx2005 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2004, i32 0, i64 1
  %1317 = load i32, i32* %arrayidx2005, align 4
  %1318 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin2006 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1318, i32 0, i32 0
  %arrayidx2007 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2006, i32 0, i64 1
  %1319 = load i32, i32* %arrayidx2007, align 4
  %sub2008 = sub nsw i32 %1317, %1319
  %add2009 = add nsw i32 %sub2008, 1
  br label %cond.end.2011

cond.false.2010:                                  ; preds = %cond.end.1980
  br label %cond.end.2011

cond.end.2011:                                    ; preds = %cond.false.2010, %cond.true.2003
  %cond2012 = phi i32 [ %add2009, %cond.true.2003 ], [ 0, %cond.false.2010 ]
  %mul2013 = mul nsw i32 %1311, %cond2012
  %add2014 = add nsw i32 %1308, %mul2013
  %1320 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax2015 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1320, i32 0, i32 1
  %arrayidx2016 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2015, i32 0, i64 0
  %1321 = load i32, i32* %arrayidx2016, align 4
  %1322 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin2017 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1322, i32 0, i32 0
  %arrayidx2018 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2017, i32 0, i64 0
  %1323 = load i32, i32* %arrayidx2018, align 4
  %sub2019 = sub nsw i32 %1321, %1323
  %add2020 = add nsw i32 %sub2019, 1
  %cmp2021 = icmp slt i32 0, %add2020
  br i1 %cmp2021, label %cond.true.2022, label %cond.false.2029

cond.true.2022:                                   ; preds = %cond.end.2011
  %1324 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax2023 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1324, i32 0, i32 1
  %arrayidx2024 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2023, i32 0, i64 0
  %1325 = load i32, i32* %arrayidx2024, align 4
  %1326 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin2025 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1326, i32 0, i32 0
  %arrayidx2026 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2025, i32 0, i64 0
  %1327 = load i32, i32* %arrayidx2026, align 4
  %sub2027 = sub nsw i32 %1325, %1327
  %add2028 = add nsw i32 %sub2027, 1
  br label %cond.end.2030

cond.false.2029:                                  ; preds = %cond.end.2011
  br label %cond.end.2030

cond.end.2030:                                    ; preds = %cond.false.2029, %cond.true.2022
  %cond2031 = phi i32 [ %add2028, %cond.true.2022 ], [ 0, %cond.false.2029 ]
  %mul2032 = mul nsw i32 %add2014, %cond2031
  %add2033 = add nsw i32 %1305, %mul2032
  store i32 %add2033, i32* %xoff5, align 4
  %1328 = load i32*, i32** %start, align 8
  %arrayidx2035 = getelementptr inbounds i32, i32* %1328, i64 0
  %1329 = load i32, i32* %arrayidx2035, align 4
  %1330 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin2036 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1330, i32 0, i32 0
  %arrayidx2037 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2036, i32 0, i64 0
  %1331 = load i32, i32* %arrayidx2037, align 4
  %sub2038 = sub nsw i32 %1329, %1331
  %1332 = load i32*, i32** %start, align 8
  %arrayidx2039 = getelementptr inbounds i32, i32* %1332, i64 1
  %1333 = load i32, i32* %arrayidx2039, align 4
  %1334 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin2040 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1334, i32 0, i32 0
  %arrayidx2041 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2040, i32 0, i64 1
  %1335 = load i32, i32* %arrayidx2041, align 4
  %sub2042 = sub nsw i32 %1333, %1335
  %1336 = load i32*, i32** %start, align 8
  %arrayidx2043 = getelementptr inbounds i32, i32* %1336, i64 2
  %1337 = load i32, i32* %arrayidx2043, align 4
  %1338 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin2044 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1338, i32 0, i32 0
  %arrayidx2045 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2044, i32 0, i64 2
  %1339 = load i32, i32* %arrayidx2045, align 4
  %sub2046 = sub nsw i32 %1337, %1339
  %1340 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax2047 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1340, i32 0, i32 1
  %arrayidx2048 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2047, i32 0, i64 1
  %1341 = load i32, i32* %arrayidx2048, align 4
  %1342 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin2049 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1342, i32 0, i32 0
  %arrayidx2050 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2049, i32 0, i64 1
  %1343 = load i32, i32* %arrayidx2050, align 4
  %sub2051 = sub nsw i32 %1341, %1343
  %add2052 = add nsw i32 %sub2051, 1
  %cmp2053 = icmp slt i32 0, %add2052
  br i1 %cmp2053, label %cond.true.2054, label %cond.false.2061

cond.true.2054:                                   ; preds = %cond.end.2030
  %1344 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax2055 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1344, i32 0, i32 1
  %arrayidx2056 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2055, i32 0, i64 1
  %1345 = load i32, i32* %arrayidx2056, align 4
  %1346 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin2057 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1346, i32 0, i32 0
  %arrayidx2058 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2057, i32 0, i64 1
  %1347 = load i32, i32* %arrayidx2058, align 4
  %sub2059 = sub nsw i32 %1345, %1347
  %add2060 = add nsw i32 %sub2059, 1
  br label %cond.end.2062

cond.false.2061:                                  ; preds = %cond.end.2030
  br label %cond.end.2062

cond.end.2062:                                    ; preds = %cond.false.2061, %cond.true.2054
  %cond2063 = phi i32 [ %add2060, %cond.true.2054 ], [ 0, %cond.false.2061 ]
  %mul2064 = mul nsw i32 %sub2046, %cond2063
  %add2065 = add nsw i32 %sub2042, %mul2064
  %1348 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax2066 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1348, i32 0, i32 1
  %arrayidx2067 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2066, i32 0, i64 0
  %1349 = load i32, i32* %arrayidx2067, align 4
  %1350 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin2068 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1350, i32 0, i32 0
  %arrayidx2069 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2068, i32 0, i64 0
  %1351 = load i32, i32* %arrayidx2069, align 4
  %sub2070 = sub nsw i32 %1349, %1351
  %add2071 = add nsw i32 %sub2070, 1
  %cmp2072 = icmp slt i32 0, %add2071
  br i1 %cmp2072, label %cond.true.2073, label %cond.false.2080

cond.true.2073:                                   ; preds = %cond.end.2062
  %1352 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax2074 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1352, i32 0, i32 1
  %arrayidx2075 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2074, i32 0, i64 0
  %1353 = load i32, i32* %arrayidx2075, align 4
  %1354 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin2076 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1354, i32 0, i32 0
  %arrayidx2077 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2076, i32 0, i64 0
  %1355 = load i32, i32* %arrayidx2077, align 4
  %sub2078 = sub nsw i32 %1353, %1355
  %add2079 = add nsw i32 %sub2078, 1
  br label %cond.end.2081

cond.false.2080:                                  ; preds = %cond.end.2062
  br label %cond.end.2081

cond.end.2081:                                    ; preds = %cond.false.2080, %cond.true.2073
  %cond2082 = phi i32 [ %add2079, %cond.true.2073 ], [ 0, %cond.false.2080 ]
  %mul2083 = mul nsw i32 %add2065, %cond2082
  %add2084 = add nsw i32 %sub2038, %mul2083
  store i32 %add2084, i32* %hypre__i1start2034, align 4
  %1356 = load i32*, i32** %start, align 8
  %arrayidx2086 = getelementptr inbounds i32, i32* %1356, i64 0
  %1357 = load i32, i32* %arrayidx2086, align 4
  %1358 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin2087 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1358, i32 0, i32 0
  %arrayidx2088 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2087, i32 0, i64 0
  %1359 = load i32, i32* %arrayidx2088, align 4
  %sub2089 = sub nsw i32 %1357, %1359
  %1360 = load i32*, i32** %start, align 8
  %arrayidx2090 = getelementptr inbounds i32, i32* %1360, i64 1
  %1361 = load i32, i32* %arrayidx2090, align 4
  %1362 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin2091 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1362, i32 0, i32 0
  %arrayidx2092 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2091, i32 0, i64 1
  %1363 = load i32, i32* %arrayidx2092, align 4
  %sub2093 = sub nsw i32 %1361, %1363
  %1364 = load i32*, i32** %start, align 8
  %arrayidx2094 = getelementptr inbounds i32, i32* %1364, i64 2
  %1365 = load i32, i32* %arrayidx2094, align 4
  %1366 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin2095 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1366, i32 0, i32 0
  %arrayidx2096 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2095, i32 0, i64 2
  %1367 = load i32, i32* %arrayidx2096, align 4
  %sub2097 = sub nsw i32 %1365, %1367
  %1368 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax2098 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1368, i32 0, i32 1
  %arrayidx2099 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2098, i32 0, i64 1
  %1369 = load i32, i32* %arrayidx2099, align 4
  %1370 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin2100 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1370, i32 0, i32 0
  %arrayidx2101 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2100, i32 0, i64 1
  %1371 = load i32, i32* %arrayidx2101, align 4
  %sub2102 = sub nsw i32 %1369, %1371
  %add2103 = add nsw i32 %sub2102, 1
  %cmp2104 = icmp slt i32 0, %add2103
  br i1 %cmp2104, label %cond.true.2105, label %cond.false.2112

cond.true.2105:                                   ; preds = %cond.end.2081
  %1372 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax2106 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1372, i32 0, i32 1
  %arrayidx2107 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2106, i32 0, i64 1
  %1373 = load i32, i32* %arrayidx2107, align 4
  %1374 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin2108 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1374, i32 0, i32 0
  %arrayidx2109 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2108, i32 0, i64 1
  %1375 = load i32, i32* %arrayidx2109, align 4
  %sub2110 = sub nsw i32 %1373, %1375
  %add2111 = add nsw i32 %sub2110, 1
  br label %cond.end.2113

cond.false.2112:                                  ; preds = %cond.end.2081
  br label %cond.end.2113

cond.end.2113:                                    ; preds = %cond.false.2112, %cond.true.2105
  %cond2114 = phi i32 [ %add2111, %cond.true.2105 ], [ 0, %cond.false.2112 ]
  %mul2115 = mul nsw i32 %sub2097, %cond2114
  %add2116 = add nsw i32 %sub2093, %mul2115
  %1376 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax2117 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1376, i32 0, i32 1
  %arrayidx2118 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2117, i32 0, i64 0
  %1377 = load i32, i32* %arrayidx2118, align 4
  %1378 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin2119 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1378, i32 0, i32 0
  %arrayidx2120 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2119, i32 0, i64 0
  %1379 = load i32, i32* %arrayidx2120, align 4
  %sub2121 = sub nsw i32 %1377, %1379
  %add2122 = add nsw i32 %sub2121, 1
  %cmp2123 = icmp slt i32 0, %add2122
  br i1 %cmp2123, label %cond.true.2124, label %cond.false.2131

cond.true.2124:                                   ; preds = %cond.end.2113
  %1380 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax2125 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1380, i32 0, i32 1
  %arrayidx2126 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2125, i32 0, i64 0
  %1381 = load i32, i32* %arrayidx2126, align 4
  %1382 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin2127 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1382, i32 0, i32 0
  %arrayidx2128 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2127, i32 0, i64 0
  %1383 = load i32, i32* %arrayidx2128, align 4
  %sub2129 = sub nsw i32 %1381, %1383
  %add2130 = add nsw i32 %sub2129, 1
  br label %cond.end.2132

cond.false.2131:                                  ; preds = %cond.end.2113
  br label %cond.end.2132

cond.end.2132:                                    ; preds = %cond.false.2131, %cond.true.2124
  %cond2133 = phi i32 [ %add2130, %cond.true.2124 ], [ 0, %cond.false.2131 ]
  %mul2134 = mul nsw i32 %add2116, %cond2133
  %add2135 = add nsw i32 %sub2089, %mul2134
  store i32 %add2135, i32* %hypre__i2start2085, align 4
  %1384 = load i32*, i32** %start, align 8
  %arrayidx2137 = getelementptr inbounds i32, i32* %1384, i64 0
  %1385 = load i32, i32* %arrayidx2137, align 4
  %1386 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin2138 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1386, i32 0, i32 0
  %arrayidx2139 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2138, i32 0, i64 0
  %1387 = load i32, i32* %arrayidx2139, align 4
  %sub2140 = sub nsw i32 %1385, %1387
  %1388 = load i32*, i32** %start, align 8
  %arrayidx2141 = getelementptr inbounds i32, i32* %1388, i64 1
  %1389 = load i32, i32* %arrayidx2141, align 4
  %1390 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin2142 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1390, i32 0, i32 0
  %arrayidx2143 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2142, i32 0, i64 1
  %1391 = load i32, i32* %arrayidx2143, align 4
  %sub2144 = sub nsw i32 %1389, %1391
  %1392 = load i32*, i32** %start, align 8
  %arrayidx2145 = getelementptr inbounds i32, i32* %1392, i64 2
  %1393 = load i32, i32* %arrayidx2145, align 4
  %1394 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin2146 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1394, i32 0, i32 0
  %arrayidx2147 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2146, i32 0, i64 2
  %1395 = load i32, i32* %arrayidx2147, align 4
  %sub2148 = sub nsw i32 %1393, %1395
  %1396 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax2149 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1396, i32 0, i32 1
  %arrayidx2150 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2149, i32 0, i64 1
  %1397 = load i32, i32* %arrayidx2150, align 4
  %1398 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin2151 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1398, i32 0, i32 0
  %arrayidx2152 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2151, i32 0, i64 1
  %1399 = load i32, i32* %arrayidx2152, align 4
  %sub2153 = sub nsw i32 %1397, %1399
  %add2154 = add nsw i32 %sub2153, 1
  %cmp2155 = icmp slt i32 0, %add2154
  br i1 %cmp2155, label %cond.true.2156, label %cond.false.2163

cond.true.2156:                                   ; preds = %cond.end.2132
  %1400 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax2157 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1400, i32 0, i32 1
  %arrayidx2158 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2157, i32 0, i64 1
  %1401 = load i32, i32* %arrayidx2158, align 4
  %1402 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin2159 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1402, i32 0, i32 0
  %arrayidx2160 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2159, i32 0, i64 1
  %1403 = load i32, i32* %arrayidx2160, align 4
  %sub2161 = sub nsw i32 %1401, %1403
  %add2162 = add nsw i32 %sub2161, 1
  br label %cond.end.2164

cond.false.2163:                                  ; preds = %cond.end.2132
  br label %cond.end.2164

cond.end.2164:                                    ; preds = %cond.false.2163, %cond.true.2156
  %cond2165 = phi i32 [ %add2162, %cond.true.2156 ], [ 0, %cond.false.2163 ]
  %mul2166 = mul nsw i32 %sub2148, %cond2165
  %add2167 = add nsw i32 %sub2144, %mul2166
  %1404 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax2168 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1404, i32 0, i32 1
  %arrayidx2169 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2168, i32 0, i64 0
  %1405 = load i32, i32* %arrayidx2169, align 4
  %1406 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin2170 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1406, i32 0, i32 0
  %arrayidx2171 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2170, i32 0, i64 0
  %1407 = load i32, i32* %arrayidx2171, align 4
  %sub2172 = sub nsw i32 %1405, %1407
  %add2173 = add nsw i32 %sub2172, 1
  %cmp2174 = icmp slt i32 0, %add2173
  br i1 %cmp2174, label %cond.true.2175, label %cond.false.2182

cond.true.2175:                                   ; preds = %cond.end.2164
  %1408 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax2176 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1408, i32 0, i32 1
  %arrayidx2177 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2176, i32 0, i64 0
  %1409 = load i32, i32* %arrayidx2177, align 4
  %1410 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin2178 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1410, i32 0, i32 0
  %arrayidx2179 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2178, i32 0, i64 0
  %1411 = load i32, i32* %arrayidx2179, align 4
  %sub2180 = sub nsw i32 %1409, %1411
  %add2181 = add nsw i32 %sub2180, 1
  br label %cond.end.2183

cond.false.2182:                                  ; preds = %cond.end.2164
  br label %cond.end.2183

cond.end.2183:                                    ; preds = %cond.false.2182, %cond.true.2175
  %cond2184 = phi i32 [ %add2181, %cond.true.2175 ], [ 0, %cond.false.2182 ]
  %mul2185 = mul nsw i32 %add2167, %cond2184
  %add2186 = add nsw i32 %sub2140, %mul2185
  store i32 %add2186, i32* %hypre__i3start2136, align 4
  %1412 = load i32*, i32** %stride, align 8
  %arrayidx2188 = getelementptr inbounds i32, i32* %1412, i64 0
  %1413 = load i32, i32* %arrayidx2188, align 4
  store i32 %1413, i32* %hypre__sx12187, align 4
  %1414 = load i32*, i32** %stride, align 8
  %arrayidx2190 = getelementptr inbounds i32, i32* %1414, i64 1
  %1415 = load i32, i32* %arrayidx2190, align 4
  %1416 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax2191 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1416, i32 0, i32 1
  %arrayidx2192 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2191, i32 0, i64 0
  %1417 = load i32, i32* %arrayidx2192, align 4
  %1418 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin2193 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1418, i32 0, i32 0
  %arrayidx2194 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2193, i32 0, i64 0
  %1419 = load i32, i32* %arrayidx2194, align 4
  %sub2195 = sub nsw i32 %1417, %1419
  %add2196 = add nsw i32 %sub2195, 1
  %cmp2197 = icmp slt i32 0, %add2196
  br i1 %cmp2197, label %cond.true.2198, label %cond.false.2205

cond.true.2198:                                   ; preds = %cond.end.2183
  %1420 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax2199 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1420, i32 0, i32 1
  %arrayidx2200 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2199, i32 0, i64 0
  %1421 = load i32, i32* %arrayidx2200, align 4
  %1422 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin2201 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1422, i32 0, i32 0
  %arrayidx2202 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2201, i32 0, i64 0
  %1423 = load i32, i32* %arrayidx2202, align 4
  %sub2203 = sub nsw i32 %1421, %1423
  %add2204 = add nsw i32 %sub2203, 1
  br label %cond.end.2206

cond.false.2205:                                  ; preds = %cond.end.2183
  br label %cond.end.2206

cond.end.2206:                                    ; preds = %cond.false.2205, %cond.true.2198
  %cond2207 = phi i32 [ %add2204, %cond.true.2198 ], [ 0, %cond.false.2205 ]
  %mul2208 = mul nsw i32 %1415, %cond2207
  store i32 %mul2208, i32* %hypre__sy12189, align 4
  %1424 = load i32*, i32** %stride, align 8
  %arrayidx2210 = getelementptr inbounds i32, i32* %1424, i64 2
  %1425 = load i32, i32* %arrayidx2210, align 4
  %1426 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax2211 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1426, i32 0, i32 1
  %arrayidx2212 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2211, i32 0, i64 0
  %1427 = load i32, i32* %arrayidx2212, align 4
  %1428 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin2213 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1428, i32 0, i32 0
  %arrayidx2214 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2213, i32 0, i64 0
  %1429 = load i32, i32* %arrayidx2214, align 4
  %sub2215 = sub nsw i32 %1427, %1429
  %add2216 = add nsw i32 %sub2215, 1
  %cmp2217 = icmp slt i32 0, %add2216
  br i1 %cmp2217, label %cond.true.2218, label %cond.false.2225

cond.true.2218:                                   ; preds = %cond.end.2206
  %1430 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax2219 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1430, i32 0, i32 1
  %arrayidx2220 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2219, i32 0, i64 0
  %1431 = load i32, i32* %arrayidx2220, align 4
  %1432 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin2221 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1432, i32 0, i32 0
  %arrayidx2222 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2221, i32 0, i64 0
  %1433 = load i32, i32* %arrayidx2222, align 4
  %sub2223 = sub nsw i32 %1431, %1433
  %add2224 = add nsw i32 %sub2223, 1
  br label %cond.end.2226

cond.false.2225:                                  ; preds = %cond.end.2206
  br label %cond.end.2226

cond.end.2226:                                    ; preds = %cond.false.2225, %cond.true.2218
  %cond2227 = phi i32 [ %add2224, %cond.true.2218 ], [ 0, %cond.false.2225 ]
  %mul2228 = mul nsw i32 %1425, %cond2227
  %1434 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax2229 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1434, i32 0, i32 1
  %arrayidx2230 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2229, i32 0, i64 1
  %1435 = load i32, i32* %arrayidx2230, align 4
  %1436 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin2231 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1436, i32 0, i32 0
  %arrayidx2232 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2231, i32 0, i64 1
  %1437 = load i32, i32* %arrayidx2232, align 4
  %sub2233 = sub nsw i32 %1435, %1437
  %add2234 = add nsw i32 %sub2233, 1
  %cmp2235 = icmp slt i32 0, %add2234
  br i1 %cmp2235, label %cond.true.2236, label %cond.false.2243

cond.true.2236:                                   ; preds = %cond.end.2226
  %1438 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax2237 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1438, i32 0, i32 1
  %arrayidx2238 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2237, i32 0, i64 1
  %1439 = load i32, i32* %arrayidx2238, align 4
  %1440 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin2239 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1440, i32 0, i32 0
  %arrayidx2240 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2239, i32 0, i64 1
  %1441 = load i32, i32* %arrayidx2240, align 4
  %sub2241 = sub nsw i32 %1439, %1441
  %add2242 = add nsw i32 %sub2241, 1
  br label %cond.end.2244

cond.false.2243:                                  ; preds = %cond.end.2226
  br label %cond.end.2244

cond.end.2244:                                    ; preds = %cond.false.2243, %cond.true.2236
  %cond2245 = phi i32 [ %add2242, %cond.true.2236 ], [ 0, %cond.false.2243 ]
  %mul2246 = mul nsw i32 %mul2228, %cond2245
  store i32 %mul2246, i32* %hypre__sz12209, align 4
  %1442 = load i32*, i32** %stride, align 8
  %arrayidx2248 = getelementptr inbounds i32, i32* %1442, i64 0
  %1443 = load i32, i32* %arrayidx2248, align 4
  store i32 %1443, i32* %hypre__sx22247, align 4
  %1444 = load i32*, i32** %stride, align 8
  %arrayidx2250 = getelementptr inbounds i32, i32* %1444, i64 1
  %1445 = load i32, i32* %arrayidx2250, align 4
  %1446 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax2251 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1446, i32 0, i32 1
  %arrayidx2252 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2251, i32 0, i64 0
  %1447 = load i32, i32* %arrayidx2252, align 4
  %1448 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin2253 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1448, i32 0, i32 0
  %arrayidx2254 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2253, i32 0, i64 0
  %1449 = load i32, i32* %arrayidx2254, align 4
  %sub2255 = sub nsw i32 %1447, %1449
  %add2256 = add nsw i32 %sub2255, 1
  %cmp2257 = icmp slt i32 0, %add2256
  br i1 %cmp2257, label %cond.true.2258, label %cond.false.2265

cond.true.2258:                                   ; preds = %cond.end.2244
  %1450 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax2259 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1450, i32 0, i32 1
  %arrayidx2260 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2259, i32 0, i64 0
  %1451 = load i32, i32* %arrayidx2260, align 4
  %1452 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin2261 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1452, i32 0, i32 0
  %arrayidx2262 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2261, i32 0, i64 0
  %1453 = load i32, i32* %arrayidx2262, align 4
  %sub2263 = sub nsw i32 %1451, %1453
  %add2264 = add nsw i32 %sub2263, 1
  br label %cond.end.2266

cond.false.2265:                                  ; preds = %cond.end.2244
  br label %cond.end.2266

cond.end.2266:                                    ; preds = %cond.false.2265, %cond.true.2258
  %cond2267 = phi i32 [ %add2264, %cond.true.2258 ], [ 0, %cond.false.2265 ]
  %mul2268 = mul nsw i32 %1445, %cond2267
  store i32 %mul2268, i32* %hypre__sy22249, align 4
  %1454 = load i32*, i32** %stride, align 8
  %arrayidx2270 = getelementptr inbounds i32, i32* %1454, i64 2
  %1455 = load i32, i32* %arrayidx2270, align 4
  %1456 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax2271 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1456, i32 0, i32 1
  %arrayidx2272 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2271, i32 0, i64 0
  %1457 = load i32, i32* %arrayidx2272, align 4
  %1458 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin2273 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1458, i32 0, i32 0
  %arrayidx2274 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2273, i32 0, i64 0
  %1459 = load i32, i32* %arrayidx2274, align 4
  %sub2275 = sub nsw i32 %1457, %1459
  %add2276 = add nsw i32 %sub2275, 1
  %cmp2277 = icmp slt i32 0, %add2276
  br i1 %cmp2277, label %cond.true.2278, label %cond.false.2285

cond.true.2278:                                   ; preds = %cond.end.2266
  %1460 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax2279 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1460, i32 0, i32 1
  %arrayidx2280 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2279, i32 0, i64 0
  %1461 = load i32, i32* %arrayidx2280, align 4
  %1462 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin2281 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1462, i32 0, i32 0
  %arrayidx2282 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2281, i32 0, i64 0
  %1463 = load i32, i32* %arrayidx2282, align 4
  %sub2283 = sub nsw i32 %1461, %1463
  %add2284 = add nsw i32 %sub2283, 1
  br label %cond.end.2286

cond.false.2285:                                  ; preds = %cond.end.2266
  br label %cond.end.2286

cond.end.2286:                                    ; preds = %cond.false.2285, %cond.true.2278
  %cond2287 = phi i32 [ %add2284, %cond.true.2278 ], [ 0, %cond.false.2285 ]
  %mul2288 = mul nsw i32 %1455, %cond2287
  %1464 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax2289 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1464, i32 0, i32 1
  %arrayidx2290 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2289, i32 0, i64 1
  %1465 = load i32, i32* %arrayidx2290, align 4
  %1466 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin2291 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1466, i32 0, i32 0
  %arrayidx2292 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2291, i32 0, i64 1
  %1467 = load i32, i32* %arrayidx2292, align 4
  %sub2293 = sub nsw i32 %1465, %1467
  %add2294 = add nsw i32 %sub2293, 1
  %cmp2295 = icmp slt i32 0, %add2294
  br i1 %cmp2295, label %cond.true.2296, label %cond.false.2303

cond.true.2296:                                   ; preds = %cond.end.2286
  %1468 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax2297 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1468, i32 0, i32 1
  %arrayidx2298 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2297, i32 0, i64 1
  %1469 = load i32, i32* %arrayidx2298, align 4
  %1470 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin2299 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1470, i32 0, i32 0
  %arrayidx2300 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2299, i32 0, i64 1
  %1471 = load i32, i32* %arrayidx2300, align 4
  %sub2301 = sub nsw i32 %1469, %1471
  %add2302 = add nsw i32 %sub2301, 1
  br label %cond.end.2304

cond.false.2303:                                  ; preds = %cond.end.2286
  br label %cond.end.2304

cond.end.2304:                                    ; preds = %cond.false.2303, %cond.true.2296
  %cond2305 = phi i32 [ %add2302, %cond.true.2296 ], [ 0, %cond.false.2303 ]
  %mul2306 = mul nsw i32 %mul2288, %cond2305
  store i32 %mul2306, i32* %hypre__sz22269, align 4
  %1472 = load i32*, i32** %stride, align 8
  %arrayidx2308 = getelementptr inbounds i32, i32* %1472, i64 0
  %1473 = load i32, i32* %arrayidx2308, align 4
  store i32 %1473, i32* %hypre__sx32307, align 4
  %1474 = load i32*, i32** %stride, align 8
  %arrayidx2310 = getelementptr inbounds i32, i32* %1474, i64 1
  %1475 = load i32, i32* %arrayidx2310, align 4
  %1476 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax2311 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1476, i32 0, i32 1
  %arrayidx2312 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2311, i32 0, i64 0
  %1477 = load i32, i32* %arrayidx2312, align 4
  %1478 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin2313 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1478, i32 0, i32 0
  %arrayidx2314 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2313, i32 0, i64 0
  %1479 = load i32, i32* %arrayidx2314, align 4
  %sub2315 = sub nsw i32 %1477, %1479
  %add2316 = add nsw i32 %sub2315, 1
  %cmp2317 = icmp slt i32 0, %add2316
  br i1 %cmp2317, label %cond.true.2318, label %cond.false.2325

cond.true.2318:                                   ; preds = %cond.end.2304
  %1480 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax2319 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1480, i32 0, i32 1
  %arrayidx2320 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2319, i32 0, i64 0
  %1481 = load i32, i32* %arrayidx2320, align 4
  %1482 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin2321 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1482, i32 0, i32 0
  %arrayidx2322 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2321, i32 0, i64 0
  %1483 = load i32, i32* %arrayidx2322, align 4
  %sub2323 = sub nsw i32 %1481, %1483
  %add2324 = add nsw i32 %sub2323, 1
  br label %cond.end.2326

cond.false.2325:                                  ; preds = %cond.end.2304
  br label %cond.end.2326

cond.end.2326:                                    ; preds = %cond.false.2325, %cond.true.2318
  %cond2327 = phi i32 [ %add2324, %cond.true.2318 ], [ 0, %cond.false.2325 ]
  %mul2328 = mul nsw i32 %1475, %cond2327
  store i32 %mul2328, i32* %hypre__sy32309, align 4
  %1484 = load i32*, i32** %stride, align 8
  %arrayidx2330 = getelementptr inbounds i32, i32* %1484, i64 2
  %1485 = load i32, i32* %arrayidx2330, align 4
  %1486 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax2331 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1486, i32 0, i32 1
  %arrayidx2332 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2331, i32 0, i64 0
  %1487 = load i32, i32* %arrayidx2332, align 4
  %1488 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin2333 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1488, i32 0, i32 0
  %arrayidx2334 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2333, i32 0, i64 0
  %1489 = load i32, i32* %arrayidx2334, align 4
  %sub2335 = sub nsw i32 %1487, %1489
  %add2336 = add nsw i32 %sub2335, 1
  %cmp2337 = icmp slt i32 0, %add2336
  br i1 %cmp2337, label %cond.true.2338, label %cond.false.2345

cond.true.2338:                                   ; preds = %cond.end.2326
  %1490 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax2339 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1490, i32 0, i32 1
  %arrayidx2340 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2339, i32 0, i64 0
  %1491 = load i32, i32* %arrayidx2340, align 4
  %1492 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin2341 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1492, i32 0, i32 0
  %arrayidx2342 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2341, i32 0, i64 0
  %1493 = load i32, i32* %arrayidx2342, align 4
  %sub2343 = sub nsw i32 %1491, %1493
  %add2344 = add nsw i32 %sub2343, 1
  br label %cond.end.2346

cond.false.2345:                                  ; preds = %cond.end.2326
  br label %cond.end.2346

cond.end.2346:                                    ; preds = %cond.false.2345, %cond.true.2338
  %cond2347 = phi i32 [ %add2344, %cond.true.2338 ], [ 0, %cond.false.2345 ]
  %mul2348 = mul nsw i32 %1485, %cond2347
  %1494 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax2349 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1494, i32 0, i32 1
  %arrayidx2350 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2349, i32 0, i64 1
  %1495 = load i32, i32* %arrayidx2350, align 4
  %1496 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin2351 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1496, i32 0, i32 0
  %arrayidx2352 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2351, i32 0, i64 1
  %1497 = load i32, i32* %arrayidx2352, align 4
  %sub2353 = sub nsw i32 %1495, %1497
  %add2354 = add nsw i32 %sub2353, 1
  %cmp2355 = icmp slt i32 0, %add2354
  br i1 %cmp2355, label %cond.true.2356, label %cond.false.2363

cond.true.2356:                                   ; preds = %cond.end.2346
  %1498 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax2357 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1498, i32 0, i32 1
  %arrayidx2358 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2357, i32 0, i64 1
  %1499 = load i32, i32* %arrayidx2358, align 4
  %1500 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin2359 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1500, i32 0, i32 0
  %arrayidx2360 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2359, i32 0, i64 1
  %1501 = load i32, i32* %arrayidx2360, align 4
  %sub2361 = sub nsw i32 %1499, %1501
  %add2362 = add nsw i32 %sub2361, 1
  br label %cond.end.2364

cond.false.2363:                                  ; preds = %cond.end.2346
  br label %cond.end.2364

cond.end.2364:                                    ; preds = %cond.false.2363, %cond.true.2356
  %cond2365 = phi i32 [ %add2362, %cond.true.2356 ], [ 0, %cond.false.2363 ]
  %mul2366 = mul nsw i32 %mul2348, %cond2365
  store i32 %mul2366, i32* %hypre__sz32329, align 4
  %arrayidx2368 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 0
  %1502 = load i32, i32* %arrayidx2368, align 4
  store i32 %1502, i32* %hypre__nx2367, align 4
  %arrayidx2370 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 1
  %1503 = load i32, i32* %arrayidx2370, align 4
  store i32 %1503, i32* %hypre__ny2369, align 4
  %arrayidx2372 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 2
  %1504 = load i32, i32* %arrayidx2372, align 4
  store i32 %1504, i32* %hypre__nz2371, align 4
  %1505 = load i32, i32* %hypre__nx2367, align 4
  store i32 %1505, i32* %hypre__mx2373, align 4
  %1506 = load i32, i32* %hypre__ny2369, align 4
  store i32 %1506, i32* %hypre__my2374, align 4
  %1507 = load i32, i32* %hypre__nz2371, align 4
  store i32 %1507, i32* %hypre__mz2375, align 4
  store i32 0, i32* %hypre__dir2376, align 4
  %1508 = load i32, i32* %hypre__nx2367, align 4
  store i32 %1508, i32* %hypre__max2377, align 4
  %1509 = load i32, i32* %hypre__ny2369, align 4
  %1510 = load i32, i32* %hypre__max2377, align 4
  %cmp2382 = icmp sgt i32 %1509, %1510
  br i1 %cmp2382, label %if.then.2383, label %if.end.2384

if.then.2383:                                     ; preds = %cond.end.2364
  store i32 1, i32* %hypre__dir2376, align 4
  %1511 = load i32, i32* %hypre__ny2369, align 4
  store i32 %1511, i32* %hypre__max2377, align 4
  br label %if.end.2384

if.end.2384:                                      ; preds = %if.then.2383, %cond.end.2364
  %1512 = load i32, i32* %hypre__nz2371, align 4
  %1513 = load i32, i32* %hypre__max2377, align 4
  %cmp2385 = icmp sgt i32 %1512, %1513
  br i1 %cmp2385, label %if.then.2386, label %if.end.2387

if.then.2386:                                     ; preds = %if.end.2384
  store i32 2, i32* %hypre__dir2376, align 4
  %1514 = load i32, i32* %hypre__nz2371, align 4
  store i32 %1514, i32* %hypre__max2377, align 4
  br label %if.end.2387

if.end.2387:                                      ; preds = %if.then.2386, %if.end.2384
  store i32 1, i32* %hypre__num_blocks2381, align 4
  %1515 = load i32, i32* %hypre__max2377, align 4
  %1516 = load i32, i32* %hypre__num_blocks2381, align 4
  %cmp2388 = icmp slt i32 %1515, %1516
  br i1 %cmp2388, label %if.then.2389, label %if.end.2390

if.then.2389:                                     ; preds = %if.end.2387
  %1517 = load i32, i32* %hypre__max2377, align 4
  store i32 %1517, i32* %hypre__num_blocks2381, align 4
  br label %if.end.2390

if.end.2390:                                      ; preds = %if.then.2389, %if.end.2387
  %1518 = load i32, i32* %hypre__num_blocks2381, align 4
  %cmp2391 = icmp sgt i32 %1518, 0
  br i1 %cmp2391, label %if.then.2392, label %if.end.2395

if.then.2392:                                     ; preds = %if.end.2390
  %1519 = load i32, i32* %hypre__max2377, align 4
  %1520 = load i32, i32* %hypre__num_blocks2381, align 4
  %div2393 = sdiv i32 %1519, %1520
  store i32 %div2393, i32* %hypre__div2378, align 4
  %1521 = load i32, i32* %hypre__max2377, align 4
  %1522 = load i32, i32* %hypre__num_blocks2381, align 4
  %rem2394 = srem i32 %1521, %1522
  store i32 %rem2394, i32* %hypre__mod2379, align 4
  br label %if.end.2395

if.end.2395:                                      ; preds = %if.then.2392, %if.end.2390
  store i32 0, i32* %hypre__block2380, align 4
  br label %for.cond.2396

for.cond.2396:                                    ; preds = %for.inc.2544, %if.end.2395
  %1523 = load i32, i32* %hypre__block2380, align 4
  %1524 = load i32, i32* %hypre__num_blocks2381, align 4
  %cmp2397 = icmp slt i32 %1523, %1524
  br i1 %cmp2397, label %for.body.2398, label %for.end.2546

for.body.2398:                                    ; preds = %for.cond.2396
  store i32 0, i32* %loopi, align 4
  store i32 0, i32* %loopj, align 4
  store i32 0, i32* %loopk, align 4
  %1525 = load i32, i32* %hypre__mx2373, align 4
  store i32 %1525, i32* %hypre__nx2367, align 4
  %1526 = load i32, i32* %hypre__my2374, align 4
  store i32 %1526, i32* %hypre__ny2369, align 4
  %1527 = load i32, i32* %hypre__mz2375, align 4
  store i32 %1527, i32* %hypre__nz2371, align 4
  %1528 = load i32, i32* %hypre__num_blocks2381, align 4
  %cmp2399 = icmp sgt i32 %1528, 1
  br i1 %cmp2399, label %if.then.2400, label %if.end.2442

if.then.2400:                                     ; preds = %for.body.2398
  %1529 = load i32, i32* %hypre__dir2376, align 4
  %cmp2401 = icmp eq i32 %1529, 0
  br i1 %cmp2401, label %if.then.2402, label %if.else.2413

if.then.2402:                                     ; preds = %if.then.2400
  %1530 = load i32, i32* %hypre__block2380, align 4
  %1531 = load i32, i32* %hypre__div2378, align 4
  %mul2403 = mul nsw i32 %1530, %1531
  %1532 = load i32, i32* %hypre__mod2379, align 4
  %1533 = load i32, i32* %hypre__block2380, align 4
  %cmp2404 = icmp slt i32 %1532, %1533
  br i1 %cmp2404, label %cond.true.2405, label %cond.false.2406

cond.true.2405:                                   ; preds = %if.then.2402
  %1534 = load i32, i32* %hypre__mod2379, align 4
  br label %cond.end.2407

cond.false.2406:                                  ; preds = %if.then.2402
  %1535 = load i32, i32* %hypre__block2380, align 4
  br label %cond.end.2407

cond.end.2407:                                    ; preds = %cond.false.2406, %cond.true.2405
  %cond2408 = phi i32 [ %1534, %cond.true.2405 ], [ %1535, %cond.false.2406 ]
  %add2409 = add nsw i32 %mul2403, %cond2408
  store i32 %add2409, i32* %loopi, align 4
  %1536 = load i32, i32* %hypre__div2378, align 4
  %1537 = load i32, i32* %hypre__mod2379, align 4
  %1538 = load i32, i32* %hypre__block2380, align 4
  %cmp2410 = icmp sgt i32 %1537, %1538
  %cond2411 = select i1 %cmp2410, i32 1, i32 0
  %add2412 = add nsw i32 %1536, %cond2411
  store i32 %add2412, i32* %hypre__nx2367, align 4
  br label %if.end.2441

if.else.2413:                                     ; preds = %if.then.2400
  %1539 = load i32, i32* %hypre__dir2376, align 4
  %cmp2414 = icmp eq i32 %1539, 1
  br i1 %cmp2414, label %if.then.2415, label %if.else.2426

if.then.2415:                                     ; preds = %if.else.2413
  %1540 = load i32, i32* %hypre__block2380, align 4
  %1541 = load i32, i32* %hypre__div2378, align 4
  %mul2416 = mul nsw i32 %1540, %1541
  %1542 = load i32, i32* %hypre__mod2379, align 4
  %1543 = load i32, i32* %hypre__block2380, align 4
  %cmp2417 = icmp slt i32 %1542, %1543
  br i1 %cmp2417, label %cond.true.2418, label %cond.false.2419

cond.true.2418:                                   ; preds = %if.then.2415
  %1544 = load i32, i32* %hypre__mod2379, align 4
  br label %cond.end.2420

cond.false.2419:                                  ; preds = %if.then.2415
  %1545 = load i32, i32* %hypre__block2380, align 4
  br label %cond.end.2420

cond.end.2420:                                    ; preds = %cond.false.2419, %cond.true.2418
  %cond2421 = phi i32 [ %1544, %cond.true.2418 ], [ %1545, %cond.false.2419 ]
  %add2422 = add nsw i32 %mul2416, %cond2421
  store i32 %add2422, i32* %loopj, align 4
  %1546 = load i32, i32* %hypre__div2378, align 4
  %1547 = load i32, i32* %hypre__mod2379, align 4
  %1548 = load i32, i32* %hypre__block2380, align 4
  %cmp2423 = icmp sgt i32 %1547, %1548
  %cond2424 = select i1 %cmp2423, i32 1, i32 0
  %add2425 = add nsw i32 %1546, %cond2424
  store i32 %add2425, i32* %hypre__ny2369, align 4
  br label %if.end.2440

if.else.2426:                                     ; preds = %if.else.2413
  %1549 = load i32, i32* %hypre__dir2376, align 4
  %cmp2427 = icmp eq i32 %1549, 2
  br i1 %cmp2427, label %if.then.2428, label %if.end.2439

if.then.2428:                                     ; preds = %if.else.2426
  %1550 = load i32, i32* %hypre__block2380, align 4
  %1551 = load i32, i32* %hypre__div2378, align 4
  %mul2429 = mul nsw i32 %1550, %1551
  %1552 = load i32, i32* %hypre__mod2379, align 4
  %1553 = load i32, i32* %hypre__block2380, align 4
  %cmp2430 = icmp slt i32 %1552, %1553
  br i1 %cmp2430, label %cond.true.2431, label %cond.false.2432

cond.true.2431:                                   ; preds = %if.then.2428
  %1554 = load i32, i32* %hypre__mod2379, align 4
  br label %cond.end.2433

cond.false.2432:                                  ; preds = %if.then.2428
  %1555 = load i32, i32* %hypre__block2380, align 4
  br label %cond.end.2433

cond.end.2433:                                    ; preds = %cond.false.2432, %cond.true.2431
  %cond2434 = phi i32 [ %1554, %cond.true.2431 ], [ %1555, %cond.false.2432 ]
  %add2435 = add nsw i32 %mul2429, %cond2434
  store i32 %add2435, i32* %loopk, align 4
  %1556 = load i32, i32* %hypre__div2378, align 4
  %1557 = load i32, i32* %hypre__mod2379, align 4
  %1558 = load i32, i32* %hypre__block2380, align 4
  %cmp2436 = icmp sgt i32 %1557, %1558
  %cond2437 = select i1 %cmp2436, i32 1, i32 0
  %add2438 = add nsw i32 %1556, %cond2437
  store i32 %add2438, i32* %hypre__nz2371, align 4
  br label %if.end.2439

if.end.2439:                                      ; preds = %cond.end.2433, %if.else.2426
  br label %if.end.2440

if.end.2440:                                      ; preds = %if.end.2439, %cond.end.2420
  br label %if.end.2441

if.end.2441:                                      ; preds = %if.end.2440, %cond.end.2407
  br label %if.end.2442

if.end.2442:                                      ; preds = %if.end.2441, %for.body.2398
  %1559 = load i32, i32* %hypre__i1start2034, align 4
  %1560 = load i32, i32* %loopi, align 4
  %1561 = load i32, i32* %hypre__sx12187, align 4
  %mul2443 = mul nsw i32 %1560, %1561
  %add2444 = add nsw i32 %1559, %mul2443
  %1562 = load i32, i32* %loopj, align 4
  %1563 = load i32, i32* %hypre__sy12189, align 4
  %mul2445 = mul nsw i32 %1562, %1563
  %add2446 = add nsw i32 %add2444, %mul2445
  %1564 = load i32, i32* %loopk, align 4
  %1565 = load i32, i32* %hypre__sz12209, align 4
  %mul2447 = mul nsw i32 %1564, %1565
  %add2448 = add nsw i32 %add2446, %mul2447
  store i32 %add2448, i32* %Ai, align 4
  %1566 = load i32, i32* %hypre__i2start2085, align 4
  %1567 = load i32, i32* %loopi, align 4
  %1568 = load i32, i32* %hypre__sx22247, align 4
  %mul2449 = mul nsw i32 %1567, %1568
  %add2450 = add nsw i32 %1566, %mul2449
  %1569 = load i32, i32* %loopj, align 4
  %1570 = load i32, i32* %hypre__sy22249, align 4
  %mul2451 = mul nsw i32 %1569, %1570
  %add2452 = add nsw i32 %add2450, %mul2451
  %1571 = load i32, i32* %loopk, align 4
  %1572 = load i32, i32* %hypre__sz22269, align 4
  %mul2453 = mul nsw i32 %1571, %1572
  %add2454 = add nsw i32 %add2452, %mul2453
  store i32 %add2454, i32* %xi, align 4
  %1573 = load i32, i32* %hypre__i3start2136, align 4
  %1574 = load i32, i32* %loopi, align 4
  %1575 = load i32, i32* %hypre__sx32307, align 4
  %mul2455 = mul nsw i32 %1574, %1575
  %add2456 = add nsw i32 %1573, %mul2455
  %1576 = load i32, i32* %loopj, align 4
  %1577 = load i32, i32* %hypre__sy32309, align 4
  %mul2457 = mul nsw i32 %1576, %1577
  %add2458 = add nsw i32 %add2456, %mul2457
  %1578 = load i32, i32* %loopk, align 4
  %1579 = load i32, i32* %hypre__sz32329, align 4
  %mul2459 = mul nsw i32 %1578, %1579
  %add2460 = add nsw i32 %add2458, %mul2459
  store i32 %add2460, i32* %yi, align 4
  store i32 0, i32* %loopk, align 4
  br label %for.cond.2461

for.cond.2461:                                    ; preds = %for.inc.2541, %if.end.2442
  %1580 = load i32, i32* %loopk, align 4
  %1581 = load i32, i32* %hypre__nz2371, align 4
  %cmp2462 = icmp slt i32 %1580, %1581
  br i1 %cmp2462, label %for.body.2463, label %for.end.2543

for.body.2463:                                    ; preds = %for.cond.2461
  store i32 0, i32* %loopj, align 4
  br label %for.cond.2464

for.cond.2464:                                    ; preds = %for.inc.2529, %for.body.2463
  %1582 = load i32, i32* %loopj, align 4
  %1583 = load i32, i32* %hypre__ny2369, align 4
  %cmp2465 = icmp slt i32 %1582, %1583
  br i1 %cmp2465, label %for.body.2466, label %for.end.2531

for.body.2466:                                    ; preds = %for.cond.2464
  store i32 0, i32* %loopi, align 4
  br label %for.cond.2467

for.cond.2467:                                    ; preds = %for.inc.2517, %for.body.2466
  %1584 = load i32, i32* %loopi, align 4
  %1585 = load i32, i32* %hypre__nx2367, align 4
  %cmp2468 = icmp slt i32 %1584, %1585
  br i1 %cmp2468, label %for.body.2469, label %for.end.2519

for.body.2469:                                    ; preds = %for.cond.2467
  %1586 = load i32, i32* %Ai, align 4
  %idxprom2470 = sext i32 %1586 to i64
  %1587 = load double*, double** %Ap0, align 8
  %arrayidx2471 = getelementptr inbounds double, double* %1587, i64 %idxprom2470
  %1588 = load double, double* %arrayidx2471, align 8
  %1589 = load i32, i32* %xi, align 4
  %1590 = load i32, i32* %xoff0, align 4
  %add2472 = add nsw i32 %1589, %1590
  %idxprom2473 = sext i32 %add2472 to i64
  %1591 = load double*, double** %xp, align 8
  %arrayidx2474 = getelementptr inbounds double, double* %1591, i64 %idxprom2473
  %1592 = load double, double* %arrayidx2474, align 8
  %mul2475 = fmul double %1588, %1592
  %1593 = load i32, i32* %Ai, align 4
  %idxprom2476 = sext i32 %1593 to i64
  %1594 = load double*, double** %Ap1, align 8
  %arrayidx2477 = getelementptr inbounds double, double* %1594, i64 %idxprom2476
  %1595 = load double, double* %arrayidx2477, align 8
  %1596 = load i32, i32* %xi, align 4
  %1597 = load i32, i32* %xoff1, align 4
  %add2478 = add nsw i32 %1596, %1597
  %idxprom2479 = sext i32 %add2478 to i64
  %1598 = load double*, double** %xp, align 8
  %arrayidx2480 = getelementptr inbounds double, double* %1598, i64 %idxprom2479
  %1599 = load double, double* %arrayidx2480, align 8
  %mul2481 = fmul double %1595, %1599
  %add2482 = fadd double %mul2475, %mul2481
  %1600 = load i32, i32* %Ai, align 4
  %idxprom2483 = sext i32 %1600 to i64
  %1601 = load double*, double** %Ap2, align 8
  %arrayidx2484 = getelementptr inbounds double, double* %1601, i64 %idxprom2483
  %1602 = load double, double* %arrayidx2484, align 8
  %1603 = load i32, i32* %xi, align 4
  %1604 = load i32, i32* %xoff2, align 4
  %add2485 = add nsw i32 %1603, %1604
  %idxprom2486 = sext i32 %add2485 to i64
  %1605 = load double*, double** %xp, align 8
  %arrayidx2487 = getelementptr inbounds double, double* %1605, i64 %idxprom2486
  %1606 = load double, double* %arrayidx2487, align 8
  %mul2488 = fmul double %1602, %1606
  %add2489 = fadd double %add2482, %mul2488
  %1607 = load i32, i32* %Ai, align 4
  %idxprom2490 = sext i32 %1607 to i64
  %1608 = load double*, double** %Ap3, align 8
  %arrayidx2491 = getelementptr inbounds double, double* %1608, i64 %idxprom2490
  %1609 = load double, double* %arrayidx2491, align 8
  %1610 = load i32, i32* %xi, align 4
  %1611 = load i32, i32* %xoff3, align 4
  %add2492 = add nsw i32 %1610, %1611
  %idxprom2493 = sext i32 %add2492 to i64
  %1612 = load double*, double** %xp, align 8
  %arrayidx2494 = getelementptr inbounds double, double* %1612, i64 %idxprom2493
  %1613 = load double, double* %arrayidx2494, align 8
  %mul2495 = fmul double %1609, %1613
  %add2496 = fadd double %add2489, %mul2495
  %1614 = load i32, i32* %Ai, align 4
  %idxprom2497 = sext i32 %1614 to i64
  %1615 = load double*, double** %Ap4, align 8
  %arrayidx2498 = getelementptr inbounds double, double* %1615, i64 %idxprom2497
  %1616 = load double, double* %arrayidx2498, align 8
  %1617 = load i32, i32* %xi, align 4
  %1618 = load i32, i32* %xoff4, align 4
  %add2499 = add nsw i32 %1617, %1618
  %idxprom2500 = sext i32 %add2499 to i64
  %1619 = load double*, double** %xp, align 8
  %arrayidx2501 = getelementptr inbounds double, double* %1619, i64 %idxprom2500
  %1620 = load double, double* %arrayidx2501, align 8
  %mul2502 = fmul double %1616, %1620
  %add2503 = fadd double %add2496, %mul2502
  %1621 = load i32, i32* %Ai, align 4
  %idxprom2504 = sext i32 %1621 to i64
  %1622 = load double*, double** %Ap5, align 8
  %arrayidx2505 = getelementptr inbounds double, double* %1622, i64 %idxprom2504
  %1623 = load double, double* %arrayidx2505, align 8
  %1624 = load i32, i32* %xi, align 4
  %1625 = load i32, i32* %xoff5, align 4
  %add2506 = add nsw i32 %1624, %1625
  %idxprom2507 = sext i32 %add2506 to i64
  %1626 = load double*, double** %xp, align 8
  %arrayidx2508 = getelementptr inbounds double, double* %1626, i64 %idxprom2507
  %1627 = load double, double* %arrayidx2508, align 8
  %mul2509 = fmul double %1623, %1627
  %add2510 = fadd double %add2503, %mul2509
  %1628 = load i32, i32* %yi, align 4
  %idxprom2511 = sext i32 %1628 to i64
  %1629 = load double*, double** %yp, align 8
  %arrayidx2512 = getelementptr inbounds double, double* %1629, i64 %idxprom2511
  %1630 = load double, double* %arrayidx2512, align 8
  %add2513 = fadd double %1630, %add2510
  store double %add2513, double* %arrayidx2512, align 8
  %1631 = load i32, i32* %hypre__sx12187, align 4
  %1632 = load i32, i32* %Ai, align 4
  %add2514 = add nsw i32 %1632, %1631
  store i32 %add2514, i32* %Ai, align 4
  %1633 = load i32, i32* %hypre__sx22247, align 4
  %1634 = load i32, i32* %xi, align 4
  %add2515 = add nsw i32 %1634, %1633
  store i32 %add2515, i32* %xi, align 4
  %1635 = load i32, i32* %hypre__sx32307, align 4
  %1636 = load i32, i32* %yi, align 4
  %add2516 = add nsw i32 %1636, %1635
  store i32 %add2516, i32* %yi, align 4
  br label %for.inc.2517

for.inc.2517:                                     ; preds = %for.body.2469
  %1637 = load i32, i32* %loopi, align 4
  %inc2518 = add nsw i32 %1637, 1
  store i32 %inc2518, i32* %loopi, align 4
  br label %for.cond.2467

for.end.2519:                                     ; preds = %for.cond.2467
  %1638 = load i32, i32* %hypre__sy12189, align 4
  %1639 = load i32, i32* %hypre__nx2367, align 4
  %1640 = load i32, i32* %hypre__sx12187, align 4
  %mul2520 = mul nsw i32 %1639, %1640
  %sub2521 = sub nsw i32 %1638, %mul2520
  %1641 = load i32, i32* %Ai, align 4
  %add2522 = add nsw i32 %1641, %sub2521
  store i32 %add2522, i32* %Ai, align 4
  %1642 = load i32, i32* %hypre__sy22249, align 4
  %1643 = load i32, i32* %hypre__nx2367, align 4
  %1644 = load i32, i32* %hypre__sx22247, align 4
  %mul2523 = mul nsw i32 %1643, %1644
  %sub2524 = sub nsw i32 %1642, %mul2523
  %1645 = load i32, i32* %xi, align 4
  %add2525 = add nsw i32 %1645, %sub2524
  store i32 %add2525, i32* %xi, align 4
  %1646 = load i32, i32* %hypre__sy32309, align 4
  %1647 = load i32, i32* %hypre__nx2367, align 4
  %1648 = load i32, i32* %hypre__sx32307, align 4
  %mul2526 = mul nsw i32 %1647, %1648
  %sub2527 = sub nsw i32 %1646, %mul2526
  %1649 = load i32, i32* %yi, align 4
  %add2528 = add nsw i32 %1649, %sub2527
  store i32 %add2528, i32* %yi, align 4
  br label %for.inc.2529

for.inc.2529:                                     ; preds = %for.end.2519
  %1650 = load i32, i32* %loopj, align 4
  %inc2530 = add nsw i32 %1650, 1
  store i32 %inc2530, i32* %loopj, align 4
  br label %for.cond.2464

for.end.2531:                                     ; preds = %for.cond.2464
  %1651 = load i32, i32* %hypre__sz12209, align 4
  %1652 = load i32, i32* %hypre__ny2369, align 4
  %1653 = load i32, i32* %hypre__sy12189, align 4
  %mul2532 = mul nsw i32 %1652, %1653
  %sub2533 = sub nsw i32 %1651, %mul2532
  %1654 = load i32, i32* %Ai, align 4
  %add2534 = add nsw i32 %1654, %sub2533
  store i32 %add2534, i32* %Ai, align 4
  %1655 = load i32, i32* %hypre__sz22269, align 4
  %1656 = load i32, i32* %hypre__ny2369, align 4
  %1657 = load i32, i32* %hypre__sy22249, align 4
  %mul2535 = mul nsw i32 %1656, %1657
  %sub2536 = sub nsw i32 %1655, %mul2535
  %1658 = load i32, i32* %xi, align 4
  %add2537 = add nsw i32 %1658, %sub2536
  store i32 %add2537, i32* %xi, align 4
  %1659 = load i32, i32* %hypre__sz32329, align 4
  %1660 = load i32, i32* %hypre__ny2369, align 4
  %1661 = load i32, i32* %hypre__sy32309, align 4
  %mul2538 = mul nsw i32 %1660, %1661
  %sub2539 = sub nsw i32 %1659, %mul2538
  %1662 = load i32, i32* %yi, align 4
  %add2540 = add nsw i32 %1662, %sub2539
  store i32 %add2540, i32* %yi, align 4
  br label %for.inc.2541

for.inc.2541:                                     ; preds = %for.end.2531
  %1663 = load i32, i32* %loopk, align 4
  %inc2542 = add nsw i32 %1663, 1
  store i32 %inc2542, i32* %loopk, align 4
  br label %for.cond.2461

for.end.2543:                                     ; preds = %for.cond.2461
  br label %for.inc.2544

for.inc.2544:                                     ; preds = %for.end.2543
  %1664 = load i32, i32* %hypre__block2380, align 4
  %inc2545 = add nsw i32 %1664, 1
  store i32 %inc2545, i32* %hypre__block2380, align 4
  br label %for.cond.2396

for.end.2546:                                     ; preds = %for.cond.2396
  br label %sw.epilog.5897

sw.bb.2547:                                       ; preds = %cond.end.751
  %1665 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data2548 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %1665, i32 0, i32 6
  %1666 = load double*, double** %data2548, align 8
  %1667 = load i32, i32* %si, align 4
  %add2549 = add nsw i32 %1667, 0
  %idxprom2550 = sext i32 %add2549 to i64
  %1668 = load i32, i32* %i, align 4
  %idxprom2551 = sext i32 %1668 to i64
  %1669 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data_indices2552 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %1669, i32 0, i32 9
  %1670 = load i32**, i32*** %data_indices2552, align 8
  %arrayidx2553 = getelementptr inbounds i32*, i32** %1670, i64 %idxprom2551
  %1671 = load i32*, i32** %arrayidx2553, align 8
  %arrayidx2554 = getelementptr inbounds i32, i32* %1671, i64 %idxprom2550
  %1672 = load i32, i32* %arrayidx2554, align 4
  %idx.ext2555 = sext i32 %1672 to i64
  %add.ptr2556 = getelementptr inbounds double, double* %1666, i64 %idx.ext2555
  store double* %add.ptr2556, double** %Ap0, align 8
  %1673 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data2557 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %1673, i32 0, i32 6
  %1674 = load double*, double** %data2557, align 8
  %1675 = load i32, i32* %si, align 4
  %add2558 = add nsw i32 %1675, 1
  %idxprom2559 = sext i32 %add2558 to i64
  %1676 = load i32, i32* %i, align 4
  %idxprom2560 = sext i32 %1676 to i64
  %1677 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data_indices2561 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %1677, i32 0, i32 9
  %1678 = load i32**, i32*** %data_indices2561, align 8
  %arrayidx2562 = getelementptr inbounds i32*, i32** %1678, i64 %idxprom2560
  %1679 = load i32*, i32** %arrayidx2562, align 8
  %arrayidx2563 = getelementptr inbounds i32, i32* %1679, i64 %idxprom2559
  %1680 = load i32, i32* %arrayidx2563, align 4
  %idx.ext2564 = sext i32 %1680 to i64
  %add.ptr2565 = getelementptr inbounds double, double* %1674, i64 %idx.ext2564
  store double* %add.ptr2565, double** %Ap1, align 8
  %1681 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data2566 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %1681, i32 0, i32 6
  %1682 = load double*, double** %data2566, align 8
  %1683 = load i32, i32* %si, align 4
  %add2567 = add nsw i32 %1683, 2
  %idxprom2568 = sext i32 %add2567 to i64
  %1684 = load i32, i32* %i, align 4
  %idxprom2569 = sext i32 %1684 to i64
  %1685 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data_indices2570 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %1685, i32 0, i32 9
  %1686 = load i32**, i32*** %data_indices2570, align 8
  %arrayidx2571 = getelementptr inbounds i32*, i32** %1686, i64 %idxprom2569
  %1687 = load i32*, i32** %arrayidx2571, align 8
  %arrayidx2572 = getelementptr inbounds i32, i32* %1687, i64 %idxprom2568
  %1688 = load i32, i32* %arrayidx2572, align 4
  %idx.ext2573 = sext i32 %1688 to i64
  %add.ptr2574 = getelementptr inbounds double, double* %1682, i64 %idx.ext2573
  store double* %add.ptr2574, double** %Ap2, align 8
  %1689 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data2575 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %1689, i32 0, i32 6
  %1690 = load double*, double** %data2575, align 8
  %1691 = load i32, i32* %si, align 4
  %add2576 = add nsw i32 %1691, 3
  %idxprom2577 = sext i32 %add2576 to i64
  %1692 = load i32, i32* %i, align 4
  %idxprom2578 = sext i32 %1692 to i64
  %1693 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data_indices2579 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %1693, i32 0, i32 9
  %1694 = load i32**, i32*** %data_indices2579, align 8
  %arrayidx2580 = getelementptr inbounds i32*, i32** %1694, i64 %idxprom2578
  %1695 = load i32*, i32** %arrayidx2580, align 8
  %arrayidx2581 = getelementptr inbounds i32, i32* %1695, i64 %idxprom2577
  %1696 = load i32, i32* %arrayidx2581, align 4
  %idx.ext2582 = sext i32 %1696 to i64
  %add.ptr2583 = getelementptr inbounds double, double* %1690, i64 %idx.ext2582
  store double* %add.ptr2583, double** %Ap3, align 8
  %1697 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data2584 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %1697, i32 0, i32 6
  %1698 = load double*, double** %data2584, align 8
  %1699 = load i32, i32* %si, align 4
  %add2585 = add nsw i32 %1699, 4
  %idxprom2586 = sext i32 %add2585 to i64
  %1700 = load i32, i32* %i, align 4
  %idxprom2587 = sext i32 %1700 to i64
  %1701 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data_indices2588 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %1701, i32 0, i32 9
  %1702 = load i32**, i32*** %data_indices2588, align 8
  %arrayidx2589 = getelementptr inbounds i32*, i32** %1702, i64 %idxprom2587
  %1703 = load i32*, i32** %arrayidx2589, align 8
  %arrayidx2590 = getelementptr inbounds i32, i32* %1703, i64 %idxprom2586
  %1704 = load i32, i32* %arrayidx2590, align 4
  %idx.ext2591 = sext i32 %1704 to i64
  %add.ptr2592 = getelementptr inbounds double, double* %1698, i64 %idx.ext2591
  store double* %add.ptr2592, double** %Ap4, align 8
  %1705 = load i32, i32* %si, align 4
  %add2593 = add nsw i32 %1705, 0
  %idxprom2594 = sext i32 %add2593 to i64
  %1706 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx2595 = getelementptr inbounds [3 x i32], [3 x i32]* %1706, i64 %idxprom2594
  %arrayidx2596 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx2595, i32 0, i64 0
  %1707 = load i32, i32* %arrayidx2596, align 4
  %1708 = load i32, i32* %si, align 4
  %add2597 = add nsw i32 %1708, 0
  %idxprom2598 = sext i32 %add2597 to i64
  %1709 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx2599 = getelementptr inbounds [3 x i32], [3 x i32]* %1709, i64 %idxprom2598
  %arrayidx2600 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx2599, i32 0, i64 1
  %1710 = load i32, i32* %arrayidx2600, align 4
  %1711 = load i32, i32* %si, align 4
  %add2601 = add nsw i32 %1711, 0
  %idxprom2602 = sext i32 %add2601 to i64
  %1712 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx2603 = getelementptr inbounds [3 x i32], [3 x i32]* %1712, i64 %idxprom2602
  %arrayidx2604 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx2603, i32 0, i64 2
  %1713 = load i32, i32* %arrayidx2604, align 4
  %1714 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax2605 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1714, i32 0, i32 1
  %arrayidx2606 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2605, i32 0, i64 1
  %1715 = load i32, i32* %arrayidx2606, align 4
  %1716 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin2607 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1716, i32 0, i32 0
  %arrayidx2608 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2607, i32 0, i64 1
  %1717 = load i32, i32* %arrayidx2608, align 4
  %sub2609 = sub nsw i32 %1715, %1717
  %add2610 = add nsw i32 %sub2609, 1
  %cmp2611 = icmp slt i32 0, %add2610
  br i1 %cmp2611, label %cond.true.2612, label %cond.false.2619

cond.true.2612:                                   ; preds = %sw.bb.2547
  %1718 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax2613 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1718, i32 0, i32 1
  %arrayidx2614 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2613, i32 0, i64 1
  %1719 = load i32, i32* %arrayidx2614, align 4
  %1720 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin2615 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1720, i32 0, i32 0
  %arrayidx2616 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2615, i32 0, i64 1
  %1721 = load i32, i32* %arrayidx2616, align 4
  %sub2617 = sub nsw i32 %1719, %1721
  %add2618 = add nsw i32 %sub2617, 1
  br label %cond.end.2620

cond.false.2619:                                  ; preds = %sw.bb.2547
  br label %cond.end.2620

cond.end.2620:                                    ; preds = %cond.false.2619, %cond.true.2612
  %cond2621 = phi i32 [ %add2618, %cond.true.2612 ], [ 0, %cond.false.2619 ]
  %mul2622 = mul nsw i32 %1713, %cond2621
  %add2623 = add nsw i32 %1710, %mul2622
  %1722 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax2624 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1722, i32 0, i32 1
  %arrayidx2625 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2624, i32 0, i64 0
  %1723 = load i32, i32* %arrayidx2625, align 4
  %1724 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin2626 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1724, i32 0, i32 0
  %arrayidx2627 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2626, i32 0, i64 0
  %1725 = load i32, i32* %arrayidx2627, align 4
  %sub2628 = sub nsw i32 %1723, %1725
  %add2629 = add nsw i32 %sub2628, 1
  %cmp2630 = icmp slt i32 0, %add2629
  br i1 %cmp2630, label %cond.true.2631, label %cond.false.2638

cond.true.2631:                                   ; preds = %cond.end.2620
  %1726 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax2632 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1726, i32 0, i32 1
  %arrayidx2633 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2632, i32 0, i64 0
  %1727 = load i32, i32* %arrayidx2633, align 4
  %1728 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin2634 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1728, i32 0, i32 0
  %arrayidx2635 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2634, i32 0, i64 0
  %1729 = load i32, i32* %arrayidx2635, align 4
  %sub2636 = sub nsw i32 %1727, %1729
  %add2637 = add nsw i32 %sub2636, 1
  br label %cond.end.2639

cond.false.2638:                                  ; preds = %cond.end.2620
  br label %cond.end.2639

cond.end.2639:                                    ; preds = %cond.false.2638, %cond.true.2631
  %cond2640 = phi i32 [ %add2637, %cond.true.2631 ], [ 0, %cond.false.2638 ]
  %mul2641 = mul nsw i32 %add2623, %cond2640
  %add2642 = add nsw i32 %1707, %mul2641
  store i32 %add2642, i32* %xoff0, align 4
  %1730 = load i32, i32* %si, align 4
  %add2643 = add nsw i32 %1730, 1
  %idxprom2644 = sext i32 %add2643 to i64
  %1731 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx2645 = getelementptr inbounds [3 x i32], [3 x i32]* %1731, i64 %idxprom2644
  %arrayidx2646 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx2645, i32 0, i64 0
  %1732 = load i32, i32* %arrayidx2646, align 4
  %1733 = load i32, i32* %si, align 4
  %add2647 = add nsw i32 %1733, 1
  %idxprom2648 = sext i32 %add2647 to i64
  %1734 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx2649 = getelementptr inbounds [3 x i32], [3 x i32]* %1734, i64 %idxprom2648
  %arrayidx2650 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx2649, i32 0, i64 1
  %1735 = load i32, i32* %arrayidx2650, align 4
  %1736 = load i32, i32* %si, align 4
  %add2651 = add nsw i32 %1736, 1
  %idxprom2652 = sext i32 %add2651 to i64
  %1737 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx2653 = getelementptr inbounds [3 x i32], [3 x i32]* %1737, i64 %idxprom2652
  %arrayidx2654 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx2653, i32 0, i64 2
  %1738 = load i32, i32* %arrayidx2654, align 4
  %1739 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax2655 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1739, i32 0, i32 1
  %arrayidx2656 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2655, i32 0, i64 1
  %1740 = load i32, i32* %arrayidx2656, align 4
  %1741 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin2657 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1741, i32 0, i32 0
  %arrayidx2658 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2657, i32 0, i64 1
  %1742 = load i32, i32* %arrayidx2658, align 4
  %sub2659 = sub nsw i32 %1740, %1742
  %add2660 = add nsw i32 %sub2659, 1
  %cmp2661 = icmp slt i32 0, %add2660
  br i1 %cmp2661, label %cond.true.2662, label %cond.false.2669

cond.true.2662:                                   ; preds = %cond.end.2639
  %1743 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax2663 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1743, i32 0, i32 1
  %arrayidx2664 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2663, i32 0, i64 1
  %1744 = load i32, i32* %arrayidx2664, align 4
  %1745 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin2665 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1745, i32 0, i32 0
  %arrayidx2666 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2665, i32 0, i64 1
  %1746 = load i32, i32* %arrayidx2666, align 4
  %sub2667 = sub nsw i32 %1744, %1746
  %add2668 = add nsw i32 %sub2667, 1
  br label %cond.end.2670

cond.false.2669:                                  ; preds = %cond.end.2639
  br label %cond.end.2670

cond.end.2670:                                    ; preds = %cond.false.2669, %cond.true.2662
  %cond2671 = phi i32 [ %add2668, %cond.true.2662 ], [ 0, %cond.false.2669 ]
  %mul2672 = mul nsw i32 %1738, %cond2671
  %add2673 = add nsw i32 %1735, %mul2672
  %1747 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax2674 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1747, i32 0, i32 1
  %arrayidx2675 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2674, i32 0, i64 0
  %1748 = load i32, i32* %arrayidx2675, align 4
  %1749 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin2676 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1749, i32 0, i32 0
  %arrayidx2677 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2676, i32 0, i64 0
  %1750 = load i32, i32* %arrayidx2677, align 4
  %sub2678 = sub nsw i32 %1748, %1750
  %add2679 = add nsw i32 %sub2678, 1
  %cmp2680 = icmp slt i32 0, %add2679
  br i1 %cmp2680, label %cond.true.2681, label %cond.false.2688

cond.true.2681:                                   ; preds = %cond.end.2670
  %1751 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax2682 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1751, i32 0, i32 1
  %arrayidx2683 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2682, i32 0, i64 0
  %1752 = load i32, i32* %arrayidx2683, align 4
  %1753 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin2684 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1753, i32 0, i32 0
  %arrayidx2685 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2684, i32 0, i64 0
  %1754 = load i32, i32* %arrayidx2685, align 4
  %sub2686 = sub nsw i32 %1752, %1754
  %add2687 = add nsw i32 %sub2686, 1
  br label %cond.end.2689

cond.false.2688:                                  ; preds = %cond.end.2670
  br label %cond.end.2689

cond.end.2689:                                    ; preds = %cond.false.2688, %cond.true.2681
  %cond2690 = phi i32 [ %add2687, %cond.true.2681 ], [ 0, %cond.false.2688 ]
  %mul2691 = mul nsw i32 %add2673, %cond2690
  %add2692 = add nsw i32 %1732, %mul2691
  store i32 %add2692, i32* %xoff1, align 4
  %1755 = load i32, i32* %si, align 4
  %add2693 = add nsw i32 %1755, 2
  %idxprom2694 = sext i32 %add2693 to i64
  %1756 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx2695 = getelementptr inbounds [3 x i32], [3 x i32]* %1756, i64 %idxprom2694
  %arrayidx2696 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx2695, i32 0, i64 0
  %1757 = load i32, i32* %arrayidx2696, align 4
  %1758 = load i32, i32* %si, align 4
  %add2697 = add nsw i32 %1758, 2
  %idxprom2698 = sext i32 %add2697 to i64
  %1759 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx2699 = getelementptr inbounds [3 x i32], [3 x i32]* %1759, i64 %idxprom2698
  %arrayidx2700 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx2699, i32 0, i64 1
  %1760 = load i32, i32* %arrayidx2700, align 4
  %1761 = load i32, i32* %si, align 4
  %add2701 = add nsw i32 %1761, 2
  %idxprom2702 = sext i32 %add2701 to i64
  %1762 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx2703 = getelementptr inbounds [3 x i32], [3 x i32]* %1762, i64 %idxprom2702
  %arrayidx2704 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx2703, i32 0, i64 2
  %1763 = load i32, i32* %arrayidx2704, align 4
  %1764 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax2705 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1764, i32 0, i32 1
  %arrayidx2706 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2705, i32 0, i64 1
  %1765 = load i32, i32* %arrayidx2706, align 4
  %1766 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin2707 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1766, i32 0, i32 0
  %arrayidx2708 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2707, i32 0, i64 1
  %1767 = load i32, i32* %arrayidx2708, align 4
  %sub2709 = sub nsw i32 %1765, %1767
  %add2710 = add nsw i32 %sub2709, 1
  %cmp2711 = icmp slt i32 0, %add2710
  br i1 %cmp2711, label %cond.true.2712, label %cond.false.2719

cond.true.2712:                                   ; preds = %cond.end.2689
  %1768 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax2713 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1768, i32 0, i32 1
  %arrayidx2714 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2713, i32 0, i64 1
  %1769 = load i32, i32* %arrayidx2714, align 4
  %1770 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin2715 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1770, i32 0, i32 0
  %arrayidx2716 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2715, i32 0, i64 1
  %1771 = load i32, i32* %arrayidx2716, align 4
  %sub2717 = sub nsw i32 %1769, %1771
  %add2718 = add nsw i32 %sub2717, 1
  br label %cond.end.2720

cond.false.2719:                                  ; preds = %cond.end.2689
  br label %cond.end.2720

cond.end.2720:                                    ; preds = %cond.false.2719, %cond.true.2712
  %cond2721 = phi i32 [ %add2718, %cond.true.2712 ], [ 0, %cond.false.2719 ]
  %mul2722 = mul nsw i32 %1763, %cond2721
  %add2723 = add nsw i32 %1760, %mul2722
  %1772 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax2724 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1772, i32 0, i32 1
  %arrayidx2725 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2724, i32 0, i64 0
  %1773 = load i32, i32* %arrayidx2725, align 4
  %1774 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin2726 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1774, i32 0, i32 0
  %arrayidx2727 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2726, i32 0, i64 0
  %1775 = load i32, i32* %arrayidx2727, align 4
  %sub2728 = sub nsw i32 %1773, %1775
  %add2729 = add nsw i32 %sub2728, 1
  %cmp2730 = icmp slt i32 0, %add2729
  br i1 %cmp2730, label %cond.true.2731, label %cond.false.2738

cond.true.2731:                                   ; preds = %cond.end.2720
  %1776 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax2732 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1776, i32 0, i32 1
  %arrayidx2733 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2732, i32 0, i64 0
  %1777 = load i32, i32* %arrayidx2733, align 4
  %1778 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin2734 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1778, i32 0, i32 0
  %arrayidx2735 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2734, i32 0, i64 0
  %1779 = load i32, i32* %arrayidx2735, align 4
  %sub2736 = sub nsw i32 %1777, %1779
  %add2737 = add nsw i32 %sub2736, 1
  br label %cond.end.2739

cond.false.2738:                                  ; preds = %cond.end.2720
  br label %cond.end.2739

cond.end.2739:                                    ; preds = %cond.false.2738, %cond.true.2731
  %cond2740 = phi i32 [ %add2737, %cond.true.2731 ], [ 0, %cond.false.2738 ]
  %mul2741 = mul nsw i32 %add2723, %cond2740
  %add2742 = add nsw i32 %1757, %mul2741
  store i32 %add2742, i32* %xoff2, align 4
  %1780 = load i32, i32* %si, align 4
  %add2743 = add nsw i32 %1780, 3
  %idxprom2744 = sext i32 %add2743 to i64
  %1781 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx2745 = getelementptr inbounds [3 x i32], [3 x i32]* %1781, i64 %idxprom2744
  %arrayidx2746 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx2745, i32 0, i64 0
  %1782 = load i32, i32* %arrayidx2746, align 4
  %1783 = load i32, i32* %si, align 4
  %add2747 = add nsw i32 %1783, 3
  %idxprom2748 = sext i32 %add2747 to i64
  %1784 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx2749 = getelementptr inbounds [3 x i32], [3 x i32]* %1784, i64 %idxprom2748
  %arrayidx2750 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx2749, i32 0, i64 1
  %1785 = load i32, i32* %arrayidx2750, align 4
  %1786 = load i32, i32* %si, align 4
  %add2751 = add nsw i32 %1786, 3
  %idxprom2752 = sext i32 %add2751 to i64
  %1787 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx2753 = getelementptr inbounds [3 x i32], [3 x i32]* %1787, i64 %idxprom2752
  %arrayidx2754 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx2753, i32 0, i64 2
  %1788 = load i32, i32* %arrayidx2754, align 4
  %1789 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax2755 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1789, i32 0, i32 1
  %arrayidx2756 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2755, i32 0, i64 1
  %1790 = load i32, i32* %arrayidx2756, align 4
  %1791 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin2757 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1791, i32 0, i32 0
  %arrayidx2758 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2757, i32 0, i64 1
  %1792 = load i32, i32* %arrayidx2758, align 4
  %sub2759 = sub nsw i32 %1790, %1792
  %add2760 = add nsw i32 %sub2759, 1
  %cmp2761 = icmp slt i32 0, %add2760
  br i1 %cmp2761, label %cond.true.2762, label %cond.false.2769

cond.true.2762:                                   ; preds = %cond.end.2739
  %1793 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax2763 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1793, i32 0, i32 1
  %arrayidx2764 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2763, i32 0, i64 1
  %1794 = load i32, i32* %arrayidx2764, align 4
  %1795 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin2765 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1795, i32 0, i32 0
  %arrayidx2766 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2765, i32 0, i64 1
  %1796 = load i32, i32* %arrayidx2766, align 4
  %sub2767 = sub nsw i32 %1794, %1796
  %add2768 = add nsw i32 %sub2767, 1
  br label %cond.end.2770

cond.false.2769:                                  ; preds = %cond.end.2739
  br label %cond.end.2770

cond.end.2770:                                    ; preds = %cond.false.2769, %cond.true.2762
  %cond2771 = phi i32 [ %add2768, %cond.true.2762 ], [ 0, %cond.false.2769 ]
  %mul2772 = mul nsw i32 %1788, %cond2771
  %add2773 = add nsw i32 %1785, %mul2772
  %1797 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax2774 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1797, i32 0, i32 1
  %arrayidx2775 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2774, i32 0, i64 0
  %1798 = load i32, i32* %arrayidx2775, align 4
  %1799 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin2776 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1799, i32 0, i32 0
  %arrayidx2777 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2776, i32 0, i64 0
  %1800 = load i32, i32* %arrayidx2777, align 4
  %sub2778 = sub nsw i32 %1798, %1800
  %add2779 = add nsw i32 %sub2778, 1
  %cmp2780 = icmp slt i32 0, %add2779
  br i1 %cmp2780, label %cond.true.2781, label %cond.false.2788

cond.true.2781:                                   ; preds = %cond.end.2770
  %1801 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax2782 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1801, i32 0, i32 1
  %arrayidx2783 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2782, i32 0, i64 0
  %1802 = load i32, i32* %arrayidx2783, align 4
  %1803 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin2784 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1803, i32 0, i32 0
  %arrayidx2785 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2784, i32 0, i64 0
  %1804 = load i32, i32* %arrayidx2785, align 4
  %sub2786 = sub nsw i32 %1802, %1804
  %add2787 = add nsw i32 %sub2786, 1
  br label %cond.end.2789

cond.false.2788:                                  ; preds = %cond.end.2770
  br label %cond.end.2789

cond.end.2789:                                    ; preds = %cond.false.2788, %cond.true.2781
  %cond2790 = phi i32 [ %add2787, %cond.true.2781 ], [ 0, %cond.false.2788 ]
  %mul2791 = mul nsw i32 %add2773, %cond2790
  %add2792 = add nsw i32 %1782, %mul2791
  store i32 %add2792, i32* %xoff3, align 4
  %1805 = load i32, i32* %si, align 4
  %add2793 = add nsw i32 %1805, 4
  %idxprom2794 = sext i32 %add2793 to i64
  %1806 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx2795 = getelementptr inbounds [3 x i32], [3 x i32]* %1806, i64 %idxprom2794
  %arrayidx2796 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx2795, i32 0, i64 0
  %1807 = load i32, i32* %arrayidx2796, align 4
  %1808 = load i32, i32* %si, align 4
  %add2797 = add nsw i32 %1808, 4
  %idxprom2798 = sext i32 %add2797 to i64
  %1809 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx2799 = getelementptr inbounds [3 x i32], [3 x i32]* %1809, i64 %idxprom2798
  %arrayidx2800 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx2799, i32 0, i64 1
  %1810 = load i32, i32* %arrayidx2800, align 4
  %1811 = load i32, i32* %si, align 4
  %add2801 = add nsw i32 %1811, 4
  %idxprom2802 = sext i32 %add2801 to i64
  %1812 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx2803 = getelementptr inbounds [3 x i32], [3 x i32]* %1812, i64 %idxprom2802
  %arrayidx2804 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx2803, i32 0, i64 2
  %1813 = load i32, i32* %arrayidx2804, align 4
  %1814 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax2805 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1814, i32 0, i32 1
  %arrayidx2806 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2805, i32 0, i64 1
  %1815 = load i32, i32* %arrayidx2806, align 4
  %1816 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin2807 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1816, i32 0, i32 0
  %arrayidx2808 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2807, i32 0, i64 1
  %1817 = load i32, i32* %arrayidx2808, align 4
  %sub2809 = sub nsw i32 %1815, %1817
  %add2810 = add nsw i32 %sub2809, 1
  %cmp2811 = icmp slt i32 0, %add2810
  br i1 %cmp2811, label %cond.true.2812, label %cond.false.2819

cond.true.2812:                                   ; preds = %cond.end.2789
  %1818 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax2813 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1818, i32 0, i32 1
  %arrayidx2814 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2813, i32 0, i64 1
  %1819 = load i32, i32* %arrayidx2814, align 4
  %1820 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin2815 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1820, i32 0, i32 0
  %arrayidx2816 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2815, i32 0, i64 1
  %1821 = load i32, i32* %arrayidx2816, align 4
  %sub2817 = sub nsw i32 %1819, %1821
  %add2818 = add nsw i32 %sub2817, 1
  br label %cond.end.2820

cond.false.2819:                                  ; preds = %cond.end.2789
  br label %cond.end.2820

cond.end.2820:                                    ; preds = %cond.false.2819, %cond.true.2812
  %cond2821 = phi i32 [ %add2818, %cond.true.2812 ], [ 0, %cond.false.2819 ]
  %mul2822 = mul nsw i32 %1813, %cond2821
  %add2823 = add nsw i32 %1810, %mul2822
  %1822 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax2824 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1822, i32 0, i32 1
  %arrayidx2825 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2824, i32 0, i64 0
  %1823 = load i32, i32* %arrayidx2825, align 4
  %1824 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin2826 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1824, i32 0, i32 0
  %arrayidx2827 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2826, i32 0, i64 0
  %1825 = load i32, i32* %arrayidx2827, align 4
  %sub2828 = sub nsw i32 %1823, %1825
  %add2829 = add nsw i32 %sub2828, 1
  %cmp2830 = icmp slt i32 0, %add2829
  br i1 %cmp2830, label %cond.true.2831, label %cond.false.2838

cond.true.2831:                                   ; preds = %cond.end.2820
  %1826 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax2832 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1826, i32 0, i32 1
  %arrayidx2833 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2832, i32 0, i64 0
  %1827 = load i32, i32* %arrayidx2833, align 4
  %1828 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin2834 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1828, i32 0, i32 0
  %arrayidx2835 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2834, i32 0, i64 0
  %1829 = load i32, i32* %arrayidx2835, align 4
  %sub2836 = sub nsw i32 %1827, %1829
  %add2837 = add nsw i32 %sub2836, 1
  br label %cond.end.2839

cond.false.2838:                                  ; preds = %cond.end.2820
  br label %cond.end.2839

cond.end.2839:                                    ; preds = %cond.false.2838, %cond.true.2831
  %cond2840 = phi i32 [ %add2837, %cond.true.2831 ], [ 0, %cond.false.2838 ]
  %mul2841 = mul nsw i32 %add2823, %cond2840
  %add2842 = add nsw i32 %1807, %mul2841
  store i32 %add2842, i32* %xoff4, align 4
  %1830 = load i32*, i32** %start, align 8
  %arrayidx2844 = getelementptr inbounds i32, i32* %1830, i64 0
  %1831 = load i32, i32* %arrayidx2844, align 4
  %1832 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin2845 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1832, i32 0, i32 0
  %arrayidx2846 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2845, i32 0, i64 0
  %1833 = load i32, i32* %arrayidx2846, align 4
  %sub2847 = sub nsw i32 %1831, %1833
  %1834 = load i32*, i32** %start, align 8
  %arrayidx2848 = getelementptr inbounds i32, i32* %1834, i64 1
  %1835 = load i32, i32* %arrayidx2848, align 4
  %1836 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin2849 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1836, i32 0, i32 0
  %arrayidx2850 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2849, i32 0, i64 1
  %1837 = load i32, i32* %arrayidx2850, align 4
  %sub2851 = sub nsw i32 %1835, %1837
  %1838 = load i32*, i32** %start, align 8
  %arrayidx2852 = getelementptr inbounds i32, i32* %1838, i64 2
  %1839 = load i32, i32* %arrayidx2852, align 4
  %1840 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin2853 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1840, i32 0, i32 0
  %arrayidx2854 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2853, i32 0, i64 2
  %1841 = load i32, i32* %arrayidx2854, align 4
  %sub2855 = sub nsw i32 %1839, %1841
  %1842 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax2856 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1842, i32 0, i32 1
  %arrayidx2857 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2856, i32 0, i64 1
  %1843 = load i32, i32* %arrayidx2857, align 4
  %1844 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin2858 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1844, i32 0, i32 0
  %arrayidx2859 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2858, i32 0, i64 1
  %1845 = load i32, i32* %arrayidx2859, align 4
  %sub2860 = sub nsw i32 %1843, %1845
  %add2861 = add nsw i32 %sub2860, 1
  %cmp2862 = icmp slt i32 0, %add2861
  br i1 %cmp2862, label %cond.true.2863, label %cond.false.2870

cond.true.2863:                                   ; preds = %cond.end.2839
  %1846 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax2864 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1846, i32 0, i32 1
  %arrayidx2865 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2864, i32 0, i64 1
  %1847 = load i32, i32* %arrayidx2865, align 4
  %1848 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin2866 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1848, i32 0, i32 0
  %arrayidx2867 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2866, i32 0, i64 1
  %1849 = load i32, i32* %arrayidx2867, align 4
  %sub2868 = sub nsw i32 %1847, %1849
  %add2869 = add nsw i32 %sub2868, 1
  br label %cond.end.2871

cond.false.2870:                                  ; preds = %cond.end.2839
  br label %cond.end.2871

cond.end.2871:                                    ; preds = %cond.false.2870, %cond.true.2863
  %cond2872 = phi i32 [ %add2869, %cond.true.2863 ], [ 0, %cond.false.2870 ]
  %mul2873 = mul nsw i32 %sub2855, %cond2872
  %add2874 = add nsw i32 %sub2851, %mul2873
  %1850 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax2875 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1850, i32 0, i32 1
  %arrayidx2876 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2875, i32 0, i64 0
  %1851 = load i32, i32* %arrayidx2876, align 4
  %1852 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin2877 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1852, i32 0, i32 0
  %arrayidx2878 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2877, i32 0, i64 0
  %1853 = load i32, i32* %arrayidx2878, align 4
  %sub2879 = sub nsw i32 %1851, %1853
  %add2880 = add nsw i32 %sub2879, 1
  %cmp2881 = icmp slt i32 0, %add2880
  br i1 %cmp2881, label %cond.true.2882, label %cond.false.2889

cond.true.2882:                                   ; preds = %cond.end.2871
  %1854 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax2883 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1854, i32 0, i32 1
  %arrayidx2884 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2883, i32 0, i64 0
  %1855 = load i32, i32* %arrayidx2884, align 4
  %1856 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin2885 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1856, i32 0, i32 0
  %arrayidx2886 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2885, i32 0, i64 0
  %1857 = load i32, i32* %arrayidx2886, align 4
  %sub2887 = sub nsw i32 %1855, %1857
  %add2888 = add nsw i32 %sub2887, 1
  br label %cond.end.2890

cond.false.2889:                                  ; preds = %cond.end.2871
  br label %cond.end.2890

cond.end.2890:                                    ; preds = %cond.false.2889, %cond.true.2882
  %cond2891 = phi i32 [ %add2888, %cond.true.2882 ], [ 0, %cond.false.2889 ]
  %mul2892 = mul nsw i32 %add2874, %cond2891
  %add2893 = add nsw i32 %sub2847, %mul2892
  store i32 %add2893, i32* %hypre__i1start2843, align 4
  %1858 = load i32*, i32** %start, align 8
  %arrayidx2895 = getelementptr inbounds i32, i32* %1858, i64 0
  %1859 = load i32, i32* %arrayidx2895, align 4
  %1860 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin2896 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1860, i32 0, i32 0
  %arrayidx2897 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2896, i32 0, i64 0
  %1861 = load i32, i32* %arrayidx2897, align 4
  %sub2898 = sub nsw i32 %1859, %1861
  %1862 = load i32*, i32** %start, align 8
  %arrayidx2899 = getelementptr inbounds i32, i32* %1862, i64 1
  %1863 = load i32, i32* %arrayidx2899, align 4
  %1864 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin2900 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1864, i32 0, i32 0
  %arrayidx2901 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2900, i32 0, i64 1
  %1865 = load i32, i32* %arrayidx2901, align 4
  %sub2902 = sub nsw i32 %1863, %1865
  %1866 = load i32*, i32** %start, align 8
  %arrayidx2903 = getelementptr inbounds i32, i32* %1866, i64 2
  %1867 = load i32, i32* %arrayidx2903, align 4
  %1868 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin2904 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1868, i32 0, i32 0
  %arrayidx2905 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2904, i32 0, i64 2
  %1869 = load i32, i32* %arrayidx2905, align 4
  %sub2906 = sub nsw i32 %1867, %1869
  %1870 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax2907 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1870, i32 0, i32 1
  %arrayidx2908 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2907, i32 0, i64 1
  %1871 = load i32, i32* %arrayidx2908, align 4
  %1872 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin2909 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1872, i32 0, i32 0
  %arrayidx2910 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2909, i32 0, i64 1
  %1873 = load i32, i32* %arrayidx2910, align 4
  %sub2911 = sub nsw i32 %1871, %1873
  %add2912 = add nsw i32 %sub2911, 1
  %cmp2913 = icmp slt i32 0, %add2912
  br i1 %cmp2913, label %cond.true.2914, label %cond.false.2921

cond.true.2914:                                   ; preds = %cond.end.2890
  %1874 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax2915 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1874, i32 0, i32 1
  %arrayidx2916 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2915, i32 0, i64 1
  %1875 = load i32, i32* %arrayidx2916, align 4
  %1876 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin2917 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1876, i32 0, i32 0
  %arrayidx2918 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2917, i32 0, i64 1
  %1877 = load i32, i32* %arrayidx2918, align 4
  %sub2919 = sub nsw i32 %1875, %1877
  %add2920 = add nsw i32 %sub2919, 1
  br label %cond.end.2922

cond.false.2921:                                  ; preds = %cond.end.2890
  br label %cond.end.2922

cond.end.2922:                                    ; preds = %cond.false.2921, %cond.true.2914
  %cond2923 = phi i32 [ %add2920, %cond.true.2914 ], [ 0, %cond.false.2921 ]
  %mul2924 = mul nsw i32 %sub2906, %cond2923
  %add2925 = add nsw i32 %sub2902, %mul2924
  %1878 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax2926 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1878, i32 0, i32 1
  %arrayidx2927 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2926, i32 0, i64 0
  %1879 = load i32, i32* %arrayidx2927, align 4
  %1880 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin2928 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1880, i32 0, i32 0
  %arrayidx2929 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2928, i32 0, i64 0
  %1881 = load i32, i32* %arrayidx2929, align 4
  %sub2930 = sub nsw i32 %1879, %1881
  %add2931 = add nsw i32 %sub2930, 1
  %cmp2932 = icmp slt i32 0, %add2931
  br i1 %cmp2932, label %cond.true.2933, label %cond.false.2940

cond.true.2933:                                   ; preds = %cond.end.2922
  %1882 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax2934 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1882, i32 0, i32 1
  %arrayidx2935 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2934, i32 0, i64 0
  %1883 = load i32, i32* %arrayidx2935, align 4
  %1884 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin2936 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1884, i32 0, i32 0
  %arrayidx2937 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2936, i32 0, i64 0
  %1885 = load i32, i32* %arrayidx2937, align 4
  %sub2938 = sub nsw i32 %1883, %1885
  %add2939 = add nsw i32 %sub2938, 1
  br label %cond.end.2941

cond.false.2940:                                  ; preds = %cond.end.2922
  br label %cond.end.2941

cond.end.2941:                                    ; preds = %cond.false.2940, %cond.true.2933
  %cond2942 = phi i32 [ %add2939, %cond.true.2933 ], [ 0, %cond.false.2940 ]
  %mul2943 = mul nsw i32 %add2925, %cond2942
  %add2944 = add nsw i32 %sub2898, %mul2943
  store i32 %add2944, i32* %hypre__i2start2894, align 4
  %1886 = load i32*, i32** %start, align 8
  %arrayidx2946 = getelementptr inbounds i32, i32* %1886, i64 0
  %1887 = load i32, i32* %arrayidx2946, align 4
  %1888 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin2947 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1888, i32 0, i32 0
  %arrayidx2948 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2947, i32 0, i64 0
  %1889 = load i32, i32* %arrayidx2948, align 4
  %sub2949 = sub nsw i32 %1887, %1889
  %1890 = load i32*, i32** %start, align 8
  %arrayidx2950 = getelementptr inbounds i32, i32* %1890, i64 1
  %1891 = load i32, i32* %arrayidx2950, align 4
  %1892 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin2951 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1892, i32 0, i32 0
  %arrayidx2952 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2951, i32 0, i64 1
  %1893 = load i32, i32* %arrayidx2952, align 4
  %sub2953 = sub nsw i32 %1891, %1893
  %1894 = load i32*, i32** %start, align 8
  %arrayidx2954 = getelementptr inbounds i32, i32* %1894, i64 2
  %1895 = load i32, i32* %arrayidx2954, align 4
  %1896 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin2955 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1896, i32 0, i32 0
  %arrayidx2956 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2955, i32 0, i64 2
  %1897 = load i32, i32* %arrayidx2956, align 4
  %sub2957 = sub nsw i32 %1895, %1897
  %1898 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax2958 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1898, i32 0, i32 1
  %arrayidx2959 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2958, i32 0, i64 1
  %1899 = load i32, i32* %arrayidx2959, align 4
  %1900 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin2960 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1900, i32 0, i32 0
  %arrayidx2961 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2960, i32 0, i64 1
  %1901 = load i32, i32* %arrayidx2961, align 4
  %sub2962 = sub nsw i32 %1899, %1901
  %add2963 = add nsw i32 %sub2962, 1
  %cmp2964 = icmp slt i32 0, %add2963
  br i1 %cmp2964, label %cond.true.2965, label %cond.false.2972

cond.true.2965:                                   ; preds = %cond.end.2941
  %1902 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax2966 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1902, i32 0, i32 1
  %arrayidx2967 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2966, i32 0, i64 1
  %1903 = load i32, i32* %arrayidx2967, align 4
  %1904 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin2968 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1904, i32 0, i32 0
  %arrayidx2969 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2968, i32 0, i64 1
  %1905 = load i32, i32* %arrayidx2969, align 4
  %sub2970 = sub nsw i32 %1903, %1905
  %add2971 = add nsw i32 %sub2970, 1
  br label %cond.end.2973

cond.false.2972:                                  ; preds = %cond.end.2941
  br label %cond.end.2973

cond.end.2973:                                    ; preds = %cond.false.2972, %cond.true.2965
  %cond2974 = phi i32 [ %add2971, %cond.true.2965 ], [ 0, %cond.false.2972 ]
  %mul2975 = mul nsw i32 %sub2957, %cond2974
  %add2976 = add nsw i32 %sub2953, %mul2975
  %1906 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax2977 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1906, i32 0, i32 1
  %arrayidx2978 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2977, i32 0, i64 0
  %1907 = load i32, i32* %arrayidx2978, align 4
  %1908 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin2979 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1908, i32 0, i32 0
  %arrayidx2980 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2979, i32 0, i64 0
  %1909 = load i32, i32* %arrayidx2980, align 4
  %sub2981 = sub nsw i32 %1907, %1909
  %add2982 = add nsw i32 %sub2981, 1
  %cmp2983 = icmp slt i32 0, %add2982
  br i1 %cmp2983, label %cond.true.2984, label %cond.false.2991

cond.true.2984:                                   ; preds = %cond.end.2973
  %1910 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax2985 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1910, i32 0, i32 1
  %arrayidx2986 = getelementptr inbounds [3 x i32], [3 x i32]* %imax2985, i32 0, i64 0
  %1911 = load i32, i32* %arrayidx2986, align 4
  %1912 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin2987 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1912, i32 0, i32 0
  %arrayidx2988 = getelementptr inbounds [3 x i32], [3 x i32]* %imin2987, i32 0, i64 0
  %1913 = load i32, i32* %arrayidx2988, align 4
  %sub2989 = sub nsw i32 %1911, %1913
  %add2990 = add nsw i32 %sub2989, 1
  br label %cond.end.2992

cond.false.2991:                                  ; preds = %cond.end.2973
  br label %cond.end.2992

cond.end.2992:                                    ; preds = %cond.false.2991, %cond.true.2984
  %cond2993 = phi i32 [ %add2990, %cond.true.2984 ], [ 0, %cond.false.2991 ]
  %mul2994 = mul nsw i32 %add2976, %cond2993
  %add2995 = add nsw i32 %sub2949, %mul2994
  store i32 %add2995, i32* %hypre__i3start2945, align 4
  %1914 = load i32*, i32** %stride, align 8
  %arrayidx2997 = getelementptr inbounds i32, i32* %1914, i64 0
  %1915 = load i32, i32* %arrayidx2997, align 4
  store i32 %1915, i32* %hypre__sx12996, align 4
  %1916 = load i32*, i32** %stride, align 8
  %arrayidx2999 = getelementptr inbounds i32, i32* %1916, i64 1
  %1917 = load i32, i32* %arrayidx2999, align 4
  %1918 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax3000 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1918, i32 0, i32 1
  %arrayidx3001 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3000, i32 0, i64 0
  %1919 = load i32, i32* %arrayidx3001, align 4
  %1920 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin3002 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1920, i32 0, i32 0
  %arrayidx3003 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3002, i32 0, i64 0
  %1921 = load i32, i32* %arrayidx3003, align 4
  %sub3004 = sub nsw i32 %1919, %1921
  %add3005 = add nsw i32 %sub3004, 1
  %cmp3006 = icmp slt i32 0, %add3005
  br i1 %cmp3006, label %cond.true.3007, label %cond.false.3014

cond.true.3007:                                   ; preds = %cond.end.2992
  %1922 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax3008 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1922, i32 0, i32 1
  %arrayidx3009 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3008, i32 0, i64 0
  %1923 = load i32, i32* %arrayidx3009, align 4
  %1924 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin3010 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1924, i32 0, i32 0
  %arrayidx3011 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3010, i32 0, i64 0
  %1925 = load i32, i32* %arrayidx3011, align 4
  %sub3012 = sub nsw i32 %1923, %1925
  %add3013 = add nsw i32 %sub3012, 1
  br label %cond.end.3015

cond.false.3014:                                  ; preds = %cond.end.2992
  br label %cond.end.3015

cond.end.3015:                                    ; preds = %cond.false.3014, %cond.true.3007
  %cond3016 = phi i32 [ %add3013, %cond.true.3007 ], [ 0, %cond.false.3014 ]
  %mul3017 = mul nsw i32 %1917, %cond3016
  store i32 %mul3017, i32* %hypre__sy12998, align 4
  %1926 = load i32*, i32** %stride, align 8
  %arrayidx3019 = getelementptr inbounds i32, i32* %1926, i64 2
  %1927 = load i32, i32* %arrayidx3019, align 4
  %1928 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax3020 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1928, i32 0, i32 1
  %arrayidx3021 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3020, i32 0, i64 0
  %1929 = load i32, i32* %arrayidx3021, align 4
  %1930 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin3022 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1930, i32 0, i32 0
  %arrayidx3023 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3022, i32 0, i64 0
  %1931 = load i32, i32* %arrayidx3023, align 4
  %sub3024 = sub nsw i32 %1929, %1931
  %add3025 = add nsw i32 %sub3024, 1
  %cmp3026 = icmp slt i32 0, %add3025
  br i1 %cmp3026, label %cond.true.3027, label %cond.false.3034

cond.true.3027:                                   ; preds = %cond.end.3015
  %1932 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax3028 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1932, i32 0, i32 1
  %arrayidx3029 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3028, i32 0, i64 0
  %1933 = load i32, i32* %arrayidx3029, align 4
  %1934 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin3030 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1934, i32 0, i32 0
  %arrayidx3031 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3030, i32 0, i64 0
  %1935 = load i32, i32* %arrayidx3031, align 4
  %sub3032 = sub nsw i32 %1933, %1935
  %add3033 = add nsw i32 %sub3032, 1
  br label %cond.end.3035

cond.false.3034:                                  ; preds = %cond.end.3015
  br label %cond.end.3035

cond.end.3035:                                    ; preds = %cond.false.3034, %cond.true.3027
  %cond3036 = phi i32 [ %add3033, %cond.true.3027 ], [ 0, %cond.false.3034 ]
  %mul3037 = mul nsw i32 %1927, %cond3036
  %1936 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax3038 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1936, i32 0, i32 1
  %arrayidx3039 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3038, i32 0, i64 1
  %1937 = load i32, i32* %arrayidx3039, align 4
  %1938 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin3040 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1938, i32 0, i32 0
  %arrayidx3041 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3040, i32 0, i64 1
  %1939 = load i32, i32* %arrayidx3041, align 4
  %sub3042 = sub nsw i32 %1937, %1939
  %add3043 = add nsw i32 %sub3042, 1
  %cmp3044 = icmp slt i32 0, %add3043
  br i1 %cmp3044, label %cond.true.3045, label %cond.false.3052

cond.true.3045:                                   ; preds = %cond.end.3035
  %1940 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax3046 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1940, i32 0, i32 1
  %arrayidx3047 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3046, i32 0, i64 1
  %1941 = load i32, i32* %arrayidx3047, align 4
  %1942 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin3048 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1942, i32 0, i32 0
  %arrayidx3049 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3048, i32 0, i64 1
  %1943 = load i32, i32* %arrayidx3049, align 4
  %sub3050 = sub nsw i32 %1941, %1943
  %add3051 = add nsw i32 %sub3050, 1
  br label %cond.end.3053

cond.false.3052:                                  ; preds = %cond.end.3035
  br label %cond.end.3053

cond.end.3053:                                    ; preds = %cond.false.3052, %cond.true.3045
  %cond3054 = phi i32 [ %add3051, %cond.true.3045 ], [ 0, %cond.false.3052 ]
  %mul3055 = mul nsw i32 %mul3037, %cond3054
  store i32 %mul3055, i32* %hypre__sz13018, align 4
  %1944 = load i32*, i32** %stride, align 8
  %arrayidx3057 = getelementptr inbounds i32, i32* %1944, i64 0
  %1945 = load i32, i32* %arrayidx3057, align 4
  store i32 %1945, i32* %hypre__sx23056, align 4
  %1946 = load i32*, i32** %stride, align 8
  %arrayidx3059 = getelementptr inbounds i32, i32* %1946, i64 1
  %1947 = load i32, i32* %arrayidx3059, align 4
  %1948 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax3060 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1948, i32 0, i32 1
  %arrayidx3061 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3060, i32 0, i64 0
  %1949 = load i32, i32* %arrayidx3061, align 4
  %1950 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin3062 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1950, i32 0, i32 0
  %arrayidx3063 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3062, i32 0, i64 0
  %1951 = load i32, i32* %arrayidx3063, align 4
  %sub3064 = sub nsw i32 %1949, %1951
  %add3065 = add nsw i32 %sub3064, 1
  %cmp3066 = icmp slt i32 0, %add3065
  br i1 %cmp3066, label %cond.true.3067, label %cond.false.3074

cond.true.3067:                                   ; preds = %cond.end.3053
  %1952 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax3068 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1952, i32 0, i32 1
  %arrayidx3069 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3068, i32 0, i64 0
  %1953 = load i32, i32* %arrayidx3069, align 4
  %1954 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin3070 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1954, i32 0, i32 0
  %arrayidx3071 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3070, i32 0, i64 0
  %1955 = load i32, i32* %arrayidx3071, align 4
  %sub3072 = sub nsw i32 %1953, %1955
  %add3073 = add nsw i32 %sub3072, 1
  br label %cond.end.3075

cond.false.3074:                                  ; preds = %cond.end.3053
  br label %cond.end.3075

cond.end.3075:                                    ; preds = %cond.false.3074, %cond.true.3067
  %cond3076 = phi i32 [ %add3073, %cond.true.3067 ], [ 0, %cond.false.3074 ]
  %mul3077 = mul nsw i32 %1947, %cond3076
  store i32 %mul3077, i32* %hypre__sy23058, align 4
  %1956 = load i32*, i32** %stride, align 8
  %arrayidx3079 = getelementptr inbounds i32, i32* %1956, i64 2
  %1957 = load i32, i32* %arrayidx3079, align 4
  %1958 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax3080 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1958, i32 0, i32 1
  %arrayidx3081 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3080, i32 0, i64 0
  %1959 = load i32, i32* %arrayidx3081, align 4
  %1960 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin3082 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1960, i32 0, i32 0
  %arrayidx3083 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3082, i32 0, i64 0
  %1961 = load i32, i32* %arrayidx3083, align 4
  %sub3084 = sub nsw i32 %1959, %1961
  %add3085 = add nsw i32 %sub3084, 1
  %cmp3086 = icmp slt i32 0, %add3085
  br i1 %cmp3086, label %cond.true.3087, label %cond.false.3094

cond.true.3087:                                   ; preds = %cond.end.3075
  %1962 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax3088 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1962, i32 0, i32 1
  %arrayidx3089 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3088, i32 0, i64 0
  %1963 = load i32, i32* %arrayidx3089, align 4
  %1964 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin3090 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1964, i32 0, i32 0
  %arrayidx3091 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3090, i32 0, i64 0
  %1965 = load i32, i32* %arrayidx3091, align 4
  %sub3092 = sub nsw i32 %1963, %1965
  %add3093 = add nsw i32 %sub3092, 1
  br label %cond.end.3095

cond.false.3094:                                  ; preds = %cond.end.3075
  br label %cond.end.3095

cond.end.3095:                                    ; preds = %cond.false.3094, %cond.true.3087
  %cond3096 = phi i32 [ %add3093, %cond.true.3087 ], [ 0, %cond.false.3094 ]
  %mul3097 = mul nsw i32 %1957, %cond3096
  %1966 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax3098 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1966, i32 0, i32 1
  %arrayidx3099 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3098, i32 0, i64 1
  %1967 = load i32, i32* %arrayidx3099, align 4
  %1968 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin3100 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1968, i32 0, i32 0
  %arrayidx3101 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3100, i32 0, i64 1
  %1969 = load i32, i32* %arrayidx3101, align 4
  %sub3102 = sub nsw i32 %1967, %1969
  %add3103 = add nsw i32 %sub3102, 1
  %cmp3104 = icmp slt i32 0, %add3103
  br i1 %cmp3104, label %cond.true.3105, label %cond.false.3112

cond.true.3105:                                   ; preds = %cond.end.3095
  %1970 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax3106 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1970, i32 0, i32 1
  %arrayidx3107 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3106, i32 0, i64 1
  %1971 = load i32, i32* %arrayidx3107, align 4
  %1972 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin3108 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1972, i32 0, i32 0
  %arrayidx3109 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3108, i32 0, i64 1
  %1973 = load i32, i32* %arrayidx3109, align 4
  %sub3110 = sub nsw i32 %1971, %1973
  %add3111 = add nsw i32 %sub3110, 1
  br label %cond.end.3113

cond.false.3112:                                  ; preds = %cond.end.3095
  br label %cond.end.3113

cond.end.3113:                                    ; preds = %cond.false.3112, %cond.true.3105
  %cond3114 = phi i32 [ %add3111, %cond.true.3105 ], [ 0, %cond.false.3112 ]
  %mul3115 = mul nsw i32 %mul3097, %cond3114
  store i32 %mul3115, i32* %hypre__sz23078, align 4
  %1974 = load i32*, i32** %stride, align 8
  %arrayidx3117 = getelementptr inbounds i32, i32* %1974, i64 0
  %1975 = load i32, i32* %arrayidx3117, align 4
  store i32 %1975, i32* %hypre__sx33116, align 4
  %1976 = load i32*, i32** %stride, align 8
  %arrayidx3119 = getelementptr inbounds i32, i32* %1976, i64 1
  %1977 = load i32, i32* %arrayidx3119, align 4
  %1978 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax3120 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1978, i32 0, i32 1
  %arrayidx3121 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3120, i32 0, i64 0
  %1979 = load i32, i32* %arrayidx3121, align 4
  %1980 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin3122 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1980, i32 0, i32 0
  %arrayidx3123 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3122, i32 0, i64 0
  %1981 = load i32, i32* %arrayidx3123, align 4
  %sub3124 = sub nsw i32 %1979, %1981
  %add3125 = add nsw i32 %sub3124, 1
  %cmp3126 = icmp slt i32 0, %add3125
  br i1 %cmp3126, label %cond.true.3127, label %cond.false.3134

cond.true.3127:                                   ; preds = %cond.end.3113
  %1982 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax3128 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1982, i32 0, i32 1
  %arrayidx3129 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3128, i32 0, i64 0
  %1983 = load i32, i32* %arrayidx3129, align 4
  %1984 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin3130 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1984, i32 0, i32 0
  %arrayidx3131 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3130, i32 0, i64 0
  %1985 = load i32, i32* %arrayidx3131, align 4
  %sub3132 = sub nsw i32 %1983, %1985
  %add3133 = add nsw i32 %sub3132, 1
  br label %cond.end.3135

cond.false.3134:                                  ; preds = %cond.end.3113
  br label %cond.end.3135

cond.end.3135:                                    ; preds = %cond.false.3134, %cond.true.3127
  %cond3136 = phi i32 [ %add3133, %cond.true.3127 ], [ 0, %cond.false.3134 ]
  %mul3137 = mul nsw i32 %1977, %cond3136
  store i32 %mul3137, i32* %hypre__sy33118, align 4
  %1986 = load i32*, i32** %stride, align 8
  %arrayidx3139 = getelementptr inbounds i32, i32* %1986, i64 2
  %1987 = load i32, i32* %arrayidx3139, align 4
  %1988 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax3140 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1988, i32 0, i32 1
  %arrayidx3141 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3140, i32 0, i64 0
  %1989 = load i32, i32* %arrayidx3141, align 4
  %1990 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin3142 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1990, i32 0, i32 0
  %arrayidx3143 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3142, i32 0, i64 0
  %1991 = load i32, i32* %arrayidx3143, align 4
  %sub3144 = sub nsw i32 %1989, %1991
  %add3145 = add nsw i32 %sub3144, 1
  %cmp3146 = icmp slt i32 0, %add3145
  br i1 %cmp3146, label %cond.true.3147, label %cond.false.3154

cond.true.3147:                                   ; preds = %cond.end.3135
  %1992 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax3148 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1992, i32 0, i32 1
  %arrayidx3149 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3148, i32 0, i64 0
  %1993 = load i32, i32* %arrayidx3149, align 4
  %1994 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin3150 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1994, i32 0, i32 0
  %arrayidx3151 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3150, i32 0, i64 0
  %1995 = load i32, i32* %arrayidx3151, align 4
  %sub3152 = sub nsw i32 %1993, %1995
  %add3153 = add nsw i32 %sub3152, 1
  br label %cond.end.3155

cond.false.3154:                                  ; preds = %cond.end.3135
  br label %cond.end.3155

cond.end.3155:                                    ; preds = %cond.false.3154, %cond.true.3147
  %cond3156 = phi i32 [ %add3153, %cond.true.3147 ], [ 0, %cond.false.3154 ]
  %mul3157 = mul nsw i32 %1987, %cond3156
  %1996 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax3158 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1996, i32 0, i32 1
  %arrayidx3159 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3158, i32 0, i64 1
  %1997 = load i32, i32* %arrayidx3159, align 4
  %1998 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin3160 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1998, i32 0, i32 0
  %arrayidx3161 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3160, i32 0, i64 1
  %1999 = load i32, i32* %arrayidx3161, align 4
  %sub3162 = sub nsw i32 %1997, %1999
  %add3163 = add nsw i32 %sub3162, 1
  %cmp3164 = icmp slt i32 0, %add3163
  br i1 %cmp3164, label %cond.true.3165, label %cond.false.3172

cond.true.3165:                                   ; preds = %cond.end.3155
  %2000 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax3166 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2000, i32 0, i32 1
  %arrayidx3167 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3166, i32 0, i64 1
  %2001 = load i32, i32* %arrayidx3167, align 4
  %2002 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin3168 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2002, i32 0, i32 0
  %arrayidx3169 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3168, i32 0, i64 1
  %2003 = load i32, i32* %arrayidx3169, align 4
  %sub3170 = sub nsw i32 %2001, %2003
  %add3171 = add nsw i32 %sub3170, 1
  br label %cond.end.3173

cond.false.3172:                                  ; preds = %cond.end.3155
  br label %cond.end.3173

cond.end.3173:                                    ; preds = %cond.false.3172, %cond.true.3165
  %cond3174 = phi i32 [ %add3171, %cond.true.3165 ], [ 0, %cond.false.3172 ]
  %mul3175 = mul nsw i32 %mul3157, %cond3174
  store i32 %mul3175, i32* %hypre__sz33138, align 4
  %arrayidx3177 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 0
  %2004 = load i32, i32* %arrayidx3177, align 4
  store i32 %2004, i32* %hypre__nx3176, align 4
  %arrayidx3179 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 1
  %2005 = load i32, i32* %arrayidx3179, align 4
  store i32 %2005, i32* %hypre__ny3178, align 4
  %arrayidx3181 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 2
  %2006 = load i32, i32* %arrayidx3181, align 4
  store i32 %2006, i32* %hypre__nz3180, align 4
  %2007 = load i32, i32* %hypre__nx3176, align 4
  store i32 %2007, i32* %hypre__mx3182, align 4
  %2008 = load i32, i32* %hypre__ny3178, align 4
  store i32 %2008, i32* %hypre__my3183, align 4
  %2009 = load i32, i32* %hypre__nz3180, align 4
  store i32 %2009, i32* %hypre__mz3184, align 4
  store i32 0, i32* %hypre__dir3185, align 4
  %2010 = load i32, i32* %hypre__nx3176, align 4
  store i32 %2010, i32* %hypre__max3186, align 4
  %2011 = load i32, i32* %hypre__ny3178, align 4
  %2012 = load i32, i32* %hypre__max3186, align 4
  %cmp3191 = icmp sgt i32 %2011, %2012
  br i1 %cmp3191, label %if.then.3192, label %if.end.3193

if.then.3192:                                     ; preds = %cond.end.3173
  store i32 1, i32* %hypre__dir3185, align 4
  %2013 = load i32, i32* %hypre__ny3178, align 4
  store i32 %2013, i32* %hypre__max3186, align 4
  br label %if.end.3193

if.end.3193:                                      ; preds = %if.then.3192, %cond.end.3173
  %2014 = load i32, i32* %hypre__nz3180, align 4
  %2015 = load i32, i32* %hypre__max3186, align 4
  %cmp3194 = icmp sgt i32 %2014, %2015
  br i1 %cmp3194, label %if.then.3195, label %if.end.3196

if.then.3195:                                     ; preds = %if.end.3193
  store i32 2, i32* %hypre__dir3185, align 4
  %2016 = load i32, i32* %hypre__nz3180, align 4
  store i32 %2016, i32* %hypre__max3186, align 4
  br label %if.end.3196

if.end.3196:                                      ; preds = %if.then.3195, %if.end.3193
  store i32 1, i32* %hypre__num_blocks3190, align 4
  %2017 = load i32, i32* %hypre__max3186, align 4
  %2018 = load i32, i32* %hypre__num_blocks3190, align 4
  %cmp3197 = icmp slt i32 %2017, %2018
  br i1 %cmp3197, label %if.then.3198, label %if.end.3199

if.then.3198:                                     ; preds = %if.end.3196
  %2019 = load i32, i32* %hypre__max3186, align 4
  store i32 %2019, i32* %hypre__num_blocks3190, align 4
  br label %if.end.3199

if.end.3199:                                      ; preds = %if.then.3198, %if.end.3196
  %2020 = load i32, i32* %hypre__num_blocks3190, align 4
  %cmp3200 = icmp sgt i32 %2020, 0
  br i1 %cmp3200, label %if.then.3201, label %if.end.3204

if.then.3201:                                     ; preds = %if.end.3199
  %2021 = load i32, i32* %hypre__max3186, align 4
  %2022 = load i32, i32* %hypre__num_blocks3190, align 4
  %div3202 = sdiv i32 %2021, %2022
  store i32 %div3202, i32* %hypre__div3187, align 4
  %2023 = load i32, i32* %hypre__max3186, align 4
  %2024 = load i32, i32* %hypre__num_blocks3190, align 4
  %rem3203 = srem i32 %2023, %2024
  store i32 %rem3203, i32* %hypre__mod3188, align 4
  br label %if.end.3204

if.end.3204:                                      ; preds = %if.then.3201, %if.end.3199
  store i32 0, i32* %hypre__block3189, align 4
  br label %for.cond.3205

for.cond.3205:                                    ; preds = %for.inc.3346, %if.end.3204
  %2025 = load i32, i32* %hypre__block3189, align 4
  %2026 = load i32, i32* %hypre__num_blocks3190, align 4
  %cmp3206 = icmp slt i32 %2025, %2026
  br i1 %cmp3206, label %for.body.3207, label %for.end.3348

for.body.3207:                                    ; preds = %for.cond.3205
  store i32 0, i32* %loopi, align 4
  store i32 0, i32* %loopj, align 4
  store i32 0, i32* %loopk, align 4
  %2027 = load i32, i32* %hypre__mx3182, align 4
  store i32 %2027, i32* %hypre__nx3176, align 4
  %2028 = load i32, i32* %hypre__my3183, align 4
  store i32 %2028, i32* %hypre__ny3178, align 4
  %2029 = load i32, i32* %hypre__mz3184, align 4
  store i32 %2029, i32* %hypre__nz3180, align 4
  %2030 = load i32, i32* %hypre__num_blocks3190, align 4
  %cmp3208 = icmp sgt i32 %2030, 1
  br i1 %cmp3208, label %if.then.3209, label %if.end.3251

if.then.3209:                                     ; preds = %for.body.3207
  %2031 = load i32, i32* %hypre__dir3185, align 4
  %cmp3210 = icmp eq i32 %2031, 0
  br i1 %cmp3210, label %if.then.3211, label %if.else.3222

if.then.3211:                                     ; preds = %if.then.3209
  %2032 = load i32, i32* %hypre__block3189, align 4
  %2033 = load i32, i32* %hypre__div3187, align 4
  %mul3212 = mul nsw i32 %2032, %2033
  %2034 = load i32, i32* %hypre__mod3188, align 4
  %2035 = load i32, i32* %hypre__block3189, align 4
  %cmp3213 = icmp slt i32 %2034, %2035
  br i1 %cmp3213, label %cond.true.3214, label %cond.false.3215

cond.true.3214:                                   ; preds = %if.then.3211
  %2036 = load i32, i32* %hypre__mod3188, align 4
  br label %cond.end.3216

cond.false.3215:                                  ; preds = %if.then.3211
  %2037 = load i32, i32* %hypre__block3189, align 4
  br label %cond.end.3216

cond.end.3216:                                    ; preds = %cond.false.3215, %cond.true.3214
  %cond3217 = phi i32 [ %2036, %cond.true.3214 ], [ %2037, %cond.false.3215 ]
  %add3218 = add nsw i32 %mul3212, %cond3217
  store i32 %add3218, i32* %loopi, align 4
  %2038 = load i32, i32* %hypre__div3187, align 4
  %2039 = load i32, i32* %hypre__mod3188, align 4
  %2040 = load i32, i32* %hypre__block3189, align 4
  %cmp3219 = icmp sgt i32 %2039, %2040
  %cond3220 = select i1 %cmp3219, i32 1, i32 0
  %add3221 = add nsw i32 %2038, %cond3220
  store i32 %add3221, i32* %hypre__nx3176, align 4
  br label %if.end.3250

if.else.3222:                                     ; preds = %if.then.3209
  %2041 = load i32, i32* %hypre__dir3185, align 4
  %cmp3223 = icmp eq i32 %2041, 1
  br i1 %cmp3223, label %if.then.3224, label %if.else.3235

if.then.3224:                                     ; preds = %if.else.3222
  %2042 = load i32, i32* %hypre__block3189, align 4
  %2043 = load i32, i32* %hypre__div3187, align 4
  %mul3225 = mul nsw i32 %2042, %2043
  %2044 = load i32, i32* %hypre__mod3188, align 4
  %2045 = load i32, i32* %hypre__block3189, align 4
  %cmp3226 = icmp slt i32 %2044, %2045
  br i1 %cmp3226, label %cond.true.3227, label %cond.false.3228

cond.true.3227:                                   ; preds = %if.then.3224
  %2046 = load i32, i32* %hypre__mod3188, align 4
  br label %cond.end.3229

cond.false.3228:                                  ; preds = %if.then.3224
  %2047 = load i32, i32* %hypre__block3189, align 4
  br label %cond.end.3229

cond.end.3229:                                    ; preds = %cond.false.3228, %cond.true.3227
  %cond3230 = phi i32 [ %2046, %cond.true.3227 ], [ %2047, %cond.false.3228 ]
  %add3231 = add nsw i32 %mul3225, %cond3230
  store i32 %add3231, i32* %loopj, align 4
  %2048 = load i32, i32* %hypre__div3187, align 4
  %2049 = load i32, i32* %hypre__mod3188, align 4
  %2050 = load i32, i32* %hypre__block3189, align 4
  %cmp3232 = icmp sgt i32 %2049, %2050
  %cond3233 = select i1 %cmp3232, i32 1, i32 0
  %add3234 = add nsw i32 %2048, %cond3233
  store i32 %add3234, i32* %hypre__ny3178, align 4
  br label %if.end.3249

if.else.3235:                                     ; preds = %if.else.3222
  %2051 = load i32, i32* %hypre__dir3185, align 4
  %cmp3236 = icmp eq i32 %2051, 2
  br i1 %cmp3236, label %if.then.3237, label %if.end.3248

if.then.3237:                                     ; preds = %if.else.3235
  %2052 = load i32, i32* %hypre__block3189, align 4
  %2053 = load i32, i32* %hypre__div3187, align 4
  %mul3238 = mul nsw i32 %2052, %2053
  %2054 = load i32, i32* %hypre__mod3188, align 4
  %2055 = load i32, i32* %hypre__block3189, align 4
  %cmp3239 = icmp slt i32 %2054, %2055
  br i1 %cmp3239, label %cond.true.3240, label %cond.false.3241

cond.true.3240:                                   ; preds = %if.then.3237
  %2056 = load i32, i32* %hypre__mod3188, align 4
  br label %cond.end.3242

cond.false.3241:                                  ; preds = %if.then.3237
  %2057 = load i32, i32* %hypre__block3189, align 4
  br label %cond.end.3242

cond.end.3242:                                    ; preds = %cond.false.3241, %cond.true.3240
  %cond3243 = phi i32 [ %2056, %cond.true.3240 ], [ %2057, %cond.false.3241 ]
  %add3244 = add nsw i32 %mul3238, %cond3243
  store i32 %add3244, i32* %loopk, align 4
  %2058 = load i32, i32* %hypre__div3187, align 4
  %2059 = load i32, i32* %hypre__mod3188, align 4
  %2060 = load i32, i32* %hypre__block3189, align 4
  %cmp3245 = icmp sgt i32 %2059, %2060
  %cond3246 = select i1 %cmp3245, i32 1, i32 0
  %add3247 = add nsw i32 %2058, %cond3246
  store i32 %add3247, i32* %hypre__nz3180, align 4
  br label %if.end.3248

if.end.3248:                                      ; preds = %cond.end.3242, %if.else.3235
  br label %if.end.3249

if.end.3249:                                      ; preds = %if.end.3248, %cond.end.3229
  br label %if.end.3250

if.end.3250:                                      ; preds = %if.end.3249, %cond.end.3216
  br label %if.end.3251

if.end.3251:                                      ; preds = %if.end.3250, %for.body.3207
  %2061 = load i32, i32* %hypre__i1start2843, align 4
  %2062 = load i32, i32* %loopi, align 4
  %2063 = load i32, i32* %hypre__sx12996, align 4
  %mul3252 = mul nsw i32 %2062, %2063
  %add3253 = add nsw i32 %2061, %mul3252
  %2064 = load i32, i32* %loopj, align 4
  %2065 = load i32, i32* %hypre__sy12998, align 4
  %mul3254 = mul nsw i32 %2064, %2065
  %add3255 = add nsw i32 %add3253, %mul3254
  %2066 = load i32, i32* %loopk, align 4
  %2067 = load i32, i32* %hypre__sz13018, align 4
  %mul3256 = mul nsw i32 %2066, %2067
  %add3257 = add nsw i32 %add3255, %mul3256
  store i32 %add3257, i32* %Ai, align 4
  %2068 = load i32, i32* %hypre__i2start2894, align 4
  %2069 = load i32, i32* %loopi, align 4
  %2070 = load i32, i32* %hypre__sx23056, align 4
  %mul3258 = mul nsw i32 %2069, %2070
  %add3259 = add nsw i32 %2068, %mul3258
  %2071 = load i32, i32* %loopj, align 4
  %2072 = load i32, i32* %hypre__sy23058, align 4
  %mul3260 = mul nsw i32 %2071, %2072
  %add3261 = add nsw i32 %add3259, %mul3260
  %2073 = load i32, i32* %loopk, align 4
  %2074 = load i32, i32* %hypre__sz23078, align 4
  %mul3262 = mul nsw i32 %2073, %2074
  %add3263 = add nsw i32 %add3261, %mul3262
  store i32 %add3263, i32* %xi, align 4
  %2075 = load i32, i32* %hypre__i3start2945, align 4
  %2076 = load i32, i32* %loopi, align 4
  %2077 = load i32, i32* %hypre__sx33116, align 4
  %mul3264 = mul nsw i32 %2076, %2077
  %add3265 = add nsw i32 %2075, %mul3264
  %2078 = load i32, i32* %loopj, align 4
  %2079 = load i32, i32* %hypre__sy33118, align 4
  %mul3266 = mul nsw i32 %2078, %2079
  %add3267 = add nsw i32 %add3265, %mul3266
  %2080 = load i32, i32* %loopk, align 4
  %2081 = load i32, i32* %hypre__sz33138, align 4
  %mul3268 = mul nsw i32 %2080, %2081
  %add3269 = add nsw i32 %add3267, %mul3268
  store i32 %add3269, i32* %yi, align 4
  store i32 0, i32* %loopk, align 4
  br label %for.cond.3270

for.cond.3270:                                    ; preds = %for.inc.3343, %if.end.3251
  %2082 = load i32, i32* %loopk, align 4
  %2083 = load i32, i32* %hypre__nz3180, align 4
  %cmp3271 = icmp slt i32 %2082, %2083
  br i1 %cmp3271, label %for.body.3272, label %for.end.3345

for.body.3272:                                    ; preds = %for.cond.3270
  store i32 0, i32* %loopj, align 4
  br label %for.cond.3273

for.cond.3273:                                    ; preds = %for.inc.3331, %for.body.3272
  %2084 = load i32, i32* %loopj, align 4
  %2085 = load i32, i32* %hypre__ny3178, align 4
  %cmp3274 = icmp slt i32 %2084, %2085
  br i1 %cmp3274, label %for.body.3275, label %for.end.3333

for.body.3275:                                    ; preds = %for.cond.3273
  store i32 0, i32* %loopi, align 4
  br label %for.cond.3276

for.cond.3276:                                    ; preds = %for.inc.3319, %for.body.3275
  %2086 = load i32, i32* %loopi, align 4
  %2087 = load i32, i32* %hypre__nx3176, align 4
  %cmp3277 = icmp slt i32 %2086, %2087
  br i1 %cmp3277, label %for.body.3278, label %for.end.3321

for.body.3278:                                    ; preds = %for.cond.3276
  %2088 = load i32, i32* %Ai, align 4
  %idxprom3279 = sext i32 %2088 to i64
  %2089 = load double*, double** %Ap0, align 8
  %arrayidx3280 = getelementptr inbounds double, double* %2089, i64 %idxprom3279
  %2090 = load double, double* %arrayidx3280, align 8
  %2091 = load i32, i32* %xi, align 4
  %2092 = load i32, i32* %xoff0, align 4
  %add3281 = add nsw i32 %2091, %2092
  %idxprom3282 = sext i32 %add3281 to i64
  %2093 = load double*, double** %xp, align 8
  %arrayidx3283 = getelementptr inbounds double, double* %2093, i64 %idxprom3282
  %2094 = load double, double* %arrayidx3283, align 8
  %mul3284 = fmul double %2090, %2094
  %2095 = load i32, i32* %Ai, align 4
  %idxprom3285 = sext i32 %2095 to i64
  %2096 = load double*, double** %Ap1, align 8
  %arrayidx3286 = getelementptr inbounds double, double* %2096, i64 %idxprom3285
  %2097 = load double, double* %arrayidx3286, align 8
  %2098 = load i32, i32* %xi, align 4
  %2099 = load i32, i32* %xoff1, align 4
  %add3287 = add nsw i32 %2098, %2099
  %idxprom3288 = sext i32 %add3287 to i64
  %2100 = load double*, double** %xp, align 8
  %arrayidx3289 = getelementptr inbounds double, double* %2100, i64 %idxprom3288
  %2101 = load double, double* %arrayidx3289, align 8
  %mul3290 = fmul double %2097, %2101
  %add3291 = fadd double %mul3284, %mul3290
  %2102 = load i32, i32* %Ai, align 4
  %idxprom3292 = sext i32 %2102 to i64
  %2103 = load double*, double** %Ap2, align 8
  %arrayidx3293 = getelementptr inbounds double, double* %2103, i64 %idxprom3292
  %2104 = load double, double* %arrayidx3293, align 8
  %2105 = load i32, i32* %xi, align 4
  %2106 = load i32, i32* %xoff2, align 4
  %add3294 = add nsw i32 %2105, %2106
  %idxprom3295 = sext i32 %add3294 to i64
  %2107 = load double*, double** %xp, align 8
  %arrayidx3296 = getelementptr inbounds double, double* %2107, i64 %idxprom3295
  %2108 = load double, double* %arrayidx3296, align 8
  %mul3297 = fmul double %2104, %2108
  %add3298 = fadd double %add3291, %mul3297
  %2109 = load i32, i32* %Ai, align 4
  %idxprom3299 = sext i32 %2109 to i64
  %2110 = load double*, double** %Ap3, align 8
  %arrayidx3300 = getelementptr inbounds double, double* %2110, i64 %idxprom3299
  %2111 = load double, double* %arrayidx3300, align 8
  %2112 = load i32, i32* %xi, align 4
  %2113 = load i32, i32* %xoff3, align 4
  %add3301 = add nsw i32 %2112, %2113
  %idxprom3302 = sext i32 %add3301 to i64
  %2114 = load double*, double** %xp, align 8
  %arrayidx3303 = getelementptr inbounds double, double* %2114, i64 %idxprom3302
  %2115 = load double, double* %arrayidx3303, align 8
  %mul3304 = fmul double %2111, %2115
  %add3305 = fadd double %add3298, %mul3304
  %2116 = load i32, i32* %Ai, align 4
  %idxprom3306 = sext i32 %2116 to i64
  %2117 = load double*, double** %Ap4, align 8
  %arrayidx3307 = getelementptr inbounds double, double* %2117, i64 %idxprom3306
  %2118 = load double, double* %arrayidx3307, align 8
  %2119 = load i32, i32* %xi, align 4
  %2120 = load i32, i32* %xoff4, align 4
  %add3308 = add nsw i32 %2119, %2120
  %idxprom3309 = sext i32 %add3308 to i64
  %2121 = load double*, double** %xp, align 8
  %arrayidx3310 = getelementptr inbounds double, double* %2121, i64 %idxprom3309
  %2122 = load double, double* %arrayidx3310, align 8
  %mul3311 = fmul double %2118, %2122
  %add3312 = fadd double %add3305, %mul3311
  %2123 = load i32, i32* %yi, align 4
  %idxprom3313 = sext i32 %2123 to i64
  %2124 = load double*, double** %yp, align 8
  %arrayidx3314 = getelementptr inbounds double, double* %2124, i64 %idxprom3313
  %2125 = load double, double* %arrayidx3314, align 8
  %add3315 = fadd double %2125, %add3312
  store double %add3315, double* %arrayidx3314, align 8
  %2126 = load i32, i32* %hypre__sx12996, align 4
  %2127 = load i32, i32* %Ai, align 4
  %add3316 = add nsw i32 %2127, %2126
  store i32 %add3316, i32* %Ai, align 4
  %2128 = load i32, i32* %hypre__sx23056, align 4
  %2129 = load i32, i32* %xi, align 4
  %add3317 = add nsw i32 %2129, %2128
  store i32 %add3317, i32* %xi, align 4
  %2130 = load i32, i32* %hypre__sx33116, align 4
  %2131 = load i32, i32* %yi, align 4
  %add3318 = add nsw i32 %2131, %2130
  store i32 %add3318, i32* %yi, align 4
  br label %for.inc.3319

for.inc.3319:                                     ; preds = %for.body.3278
  %2132 = load i32, i32* %loopi, align 4
  %inc3320 = add nsw i32 %2132, 1
  store i32 %inc3320, i32* %loopi, align 4
  br label %for.cond.3276

for.end.3321:                                     ; preds = %for.cond.3276
  %2133 = load i32, i32* %hypre__sy12998, align 4
  %2134 = load i32, i32* %hypre__nx3176, align 4
  %2135 = load i32, i32* %hypre__sx12996, align 4
  %mul3322 = mul nsw i32 %2134, %2135
  %sub3323 = sub nsw i32 %2133, %mul3322
  %2136 = load i32, i32* %Ai, align 4
  %add3324 = add nsw i32 %2136, %sub3323
  store i32 %add3324, i32* %Ai, align 4
  %2137 = load i32, i32* %hypre__sy23058, align 4
  %2138 = load i32, i32* %hypre__nx3176, align 4
  %2139 = load i32, i32* %hypre__sx23056, align 4
  %mul3325 = mul nsw i32 %2138, %2139
  %sub3326 = sub nsw i32 %2137, %mul3325
  %2140 = load i32, i32* %xi, align 4
  %add3327 = add nsw i32 %2140, %sub3326
  store i32 %add3327, i32* %xi, align 4
  %2141 = load i32, i32* %hypre__sy33118, align 4
  %2142 = load i32, i32* %hypre__nx3176, align 4
  %2143 = load i32, i32* %hypre__sx33116, align 4
  %mul3328 = mul nsw i32 %2142, %2143
  %sub3329 = sub nsw i32 %2141, %mul3328
  %2144 = load i32, i32* %yi, align 4
  %add3330 = add nsw i32 %2144, %sub3329
  store i32 %add3330, i32* %yi, align 4
  br label %for.inc.3331

for.inc.3331:                                     ; preds = %for.end.3321
  %2145 = load i32, i32* %loopj, align 4
  %inc3332 = add nsw i32 %2145, 1
  store i32 %inc3332, i32* %loopj, align 4
  br label %for.cond.3273

for.end.3333:                                     ; preds = %for.cond.3273
  %2146 = load i32, i32* %hypre__sz13018, align 4
  %2147 = load i32, i32* %hypre__ny3178, align 4
  %2148 = load i32, i32* %hypre__sy12998, align 4
  %mul3334 = mul nsw i32 %2147, %2148
  %sub3335 = sub nsw i32 %2146, %mul3334
  %2149 = load i32, i32* %Ai, align 4
  %add3336 = add nsw i32 %2149, %sub3335
  store i32 %add3336, i32* %Ai, align 4
  %2150 = load i32, i32* %hypre__sz23078, align 4
  %2151 = load i32, i32* %hypre__ny3178, align 4
  %2152 = load i32, i32* %hypre__sy23058, align 4
  %mul3337 = mul nsw i32 %2151, %2152
  %sub3338 = sub nsw i32 %2150, %mul3337
  %2153 = load i32, i32* %xi, align 4
  %add3339 = add nsw i32 %2153, %sub3338
  store i32 %add3339, i32* %xi, align 4
  %2154 = load i32, i32* %hypre__sz33138, align 4
  %2155 = load i32, i32* %hypre__ny3178, align 4
  %2156 = load i32, i32* %hypre__sy33118, align 4
  %mul3340 = mul nsw i32 %2155, %2156
  %sub3341 = sub nsw i32 %2154, %mul3340
  %2157 = load i32, i32* %yi, align 4
  %add3342 = add nsw i32 %2157, %sub3341
  store i32 %add3342, i32* %yi, align 4
  br label %for.inc.3343

for.inc.3343:                                     ; preds = %for.end.3333
  %2158 = load i32, i32* %loopk, align 4
  %inc3344 = add nsw i32 %2158, 1
  store i32 %inc3344, i32* %loopk, align 4
  br label %for.cond.3270

for.end.3345:                                     ; preds = %for.cond.3270
  br label %for.inc.3346

for.inc.3346:                                     ; preds = %for.end.3345
  %2159 = load i32, i32* %hypre__block3189, align 4
  %inc3347 = add nsw i32 %2159, 1
  store i32 %inc3347, i32* %hypre__block3189, align 4
  br label %for.cond.3205

for.end.3348:                                     ; preds = %for.cond.3205
  br label %sw.epilog.5897

sw.bb.3349:                                       ; preds = %cond.end.751
  %2160 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data3350 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %2160, i32 0, i32 6
  %2161 = load double*, double** %data3350, align 8
  %2162 = load i32, i32* %si, align 4
  %add3351 = add nsw i32 %2162, 0
  %idxprom3352 = sext i32 %add3351 to i64
  %2163 = load i32, i32* %i, align 4
  %idxprom3353 = sext i32 %2163 to i64
  %2164 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data_indices3354 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %2164, i32 0, i32 9
  %2165 = load i32**, i32*** %data_indices3354, align 8
  %arrayidx3355 = getelementptr inbounds i32*, i32** %2165, i64 %idxprom3353
  %2166 = load i32*, i32** %arrayidx3355, align 8
  %arrayidx3356 = getelementptr inbounds i32, i32* %2166, i64 %idxprom3352
  %2167 = load i32, i32* %arrayidx3356, align 4
  %idx.ext3357 = sext i32 %2167 to i64
  %add.ptr3358 = getelementptr inbounds double, double* %2161, i64 %idx.ext3357
  store double* %add.ptr3358, double** %Ap0, align 8
  %2168 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data3359 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %2168, i32 0, i32 6
  %2169 = load double*, double** %data3359, align 8
  %2170 = load i32, i32* %si, align 4
  %add3360 = add nsw i32 %2170, 1
  %idxprom3361 = sext i32 %add3360 to i64
  %2171 = load i32, i32* %i, align 4
  %idxprom3362 = sext i32 %2171 to i64
  %2172 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data_indices3363 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %2172, i32 0, i32 9
  %2173 = load i32**, i32*** %data_indices3363, align 8
  %arrayidx3364 = getelementptr inbounds i32*, i32** %2173, i64 %idxprom3362
  %2174 = load i32*, i32** %arrayidx3364, align 8
  %arrayidx3365 = getelementptr inbounds i32, i32* %2174, i64 %idxprom3361
  %2175 = load i32, i32* %arrayidx3365, align 4
  %idx.ext3366 = sext i32 %2175 to i64
  %add.ptr3367 = getelementptr inbounds double, double* %2169, i64 %idx.ext3366
  store double* %add.ptr3367, double** %Ap1, align 8
  %2176 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data3368 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %2176, i32 0, i32 6
  %2177 = load double*, double** %data3368, align 8
  %2178 = load i32, i32* %si, align 4
  %add3369 = add nsw i32 %2178, 2
  %idxprom3370 = sext i32 %add3369 to i64
  %2179 = load i32, i32* %i, align 4
  %idxprom3371 = sext i32 %2179 to i64
  %2180 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data_indices3372 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %2180, i32 0, i32 9
  %2181 = load i32**, i32*** %data_indices3372, align 8
  %arrayidx3373 = getelementptr inbounds i32*, i32** %2181, i64 %idxprom3371
  %2182 = load i32*, i32** %arrayidx3373, align 8
  %arrayidx3374 = getelementptr inbounds i32, i32* %2182, i64 %idxprom3370
  %2183 = load i32, i32* %arrayidx3374, align 4
  %idx.ext3375 = sext i32 %2183 to i64
  %add.ptr3376 = getelementptr inbounds double, double* %2177, i64 %idx.ext3375
  store double* %add.ptr3376, double** %Ap2, align 8
  %2184 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data3377 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %2184, i32 0, i32 6
  %2185 = load double*, double** %data3377, align 8
  %2186 = load i32, i32* %si, align 4
  %add3378 = add nsw i32 %2186, 3
  %idxprom3379 = sext i32 %add3378 to i64
  %2187 = load i32, i32* %i, align 4
  %idxprom3380 = sext i32 %2187 to i64
  %2188 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data_indices3381 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %2188, i32 0, i32 9
  %2189 = load i32**, i32*** %data_indices3381, align 8
  %arrayidx3382 = getelementptr inbounds i32*, i32** %2189, i64 %idxprom3380
  %2190 = load i32*, i32** %arrayidx3382, align 8
  %arrayidx3383 = getelementptr inbounds i32, i32* %2190, i64 %idxprom3379
  %2191 = load i32, i32* %arrayidx3383, align 4
  %idx.ext3384 = sext i32 %2191 to i64
  %add.ptr3385 = getelementptr inbounds double, double* %2185, i64 %idx.ext3384
  store double* %add.ptr3385, double** %Ap3, align 8
  %2192 = load i32, i32* %si, align 4
  %add3386 = add nsw i32 %2192, 0
  %idxprom3387 = sext i32 %add3386 to i64
  %2193 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx3388 = getelementptr inbounds [3 x i32], [3 x i32]* %2193, i64 %idxprom3387
  %arrayidx3389 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx3388, i32 0, i64 0
  %2194 = load i32, i32* %arrayidx3389, align 4
  %2195 = load i32, i32* %si, align 4
  %add3390 = add nsw i32 %2195, 0
  %idxprom3391 = sext i32 %add3390 to i64
  %2196 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx3392 = getelementptr inbounds [3 x i32], [3 x i32]* %2196, i64 %idxprom3391
  %arrayidx3393 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx3392, i32 0, i64 1
  %2197 = load i32, i32* %arrayidx3393, align 4
  %2198 = load i32, i32* %si, align 4
  %add3394 = add nsw i32 %2198, 0
  %idxprom3395 = sext i32 %add3394 to i64
  %2199 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx3396 = getelementptr inbounds [3 x i32], [3 x i32]* %2199, i64 %idxprom3395
  %arrayidx3397 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx3396, i32 0, i64 2
  %2200 = load i32, i32* %arrayidx3397, align 4
  %2201 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax3398 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2201, i32 0, i32 1
  %arrayidx3399 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3398, i32 0, i64 1
  %2202 = load i32, i32* %arrayidx3399, align 4
  %2203 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin3400 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2203, i32 0, i32 0
  %arrayidx3401 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3400, i32 0, i64 1
  %2204 = load i32, i32* %arrayidx3401, align 4
  %sub3402 = sub nsw i32 %2202, %2204
  %add3403 = add nsw i32 %sub3402, 1
  %cmp3404 = icmp slt i32 0, %add3403
  br i1 %cmp3404, label %cond.true.3405, label %cond.false.3412

cond.true.3405:                                   ; preds = %sw.bb.3349
  %2205 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax3406 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2205, i32 0, i32 1
  %arrayidx3407 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3406, i32 0, i64 1
  %2206 = load i32, i32* %arrayidx3407, align 4
  %2207 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin3408 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2207, i32 0, i32 0
  %arrayidx3409 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3408, i32 0, i64 1
  %2208 = load i32, i32* %arrayidx3409, align 4
  %sub3410 = sub nsw i32 %2206, %2208
  %add3411 = add nsw i32 %sub3410, 1
  br label %cond.end.3413

cond.false.3412:                                  ; preds = %sw.bb.3349
  br label %cond.end.3413

cond.end.3413:                                    ; preds = %cond.false.3412, %cond.true.3405
  %cond3414 = phi i32 [ %add3411, %cond.true.3405 ], [ 0, %cond.false.3412 ]
  %mul3415 = mul nsw i32 %2200, %cond3414
  %add3416 = add nsw i32 %2197, %mul3415
  %2209 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax3417 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2209, i32 0, i32 1
  %arrayidx3418 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3417, i32 0, i64 0
  %2210 = load i32, i32* %arrayidx3418, align 4
  %2211 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin3419 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2211, i32 0, i32 0
  %arrayidx3420 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3419, i32 0, i64 0
  %2212 = load i32, i32* %arrayidx3420, align 4
  %sub3421 = sub nsw i32 %2210, %2212
  %add3422 = add nsw i32 %sub3421, 1
  %cmp3423 = icmp slt i32 0, %add3422
  br i1 %cmp3423, label %cond.true.3424, label %cond.false.3431

cond.true.3424:                                   ; preds = %cond.end.3413
  %2213 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax3425 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2213, i32 0, i32 1
  %arrayidx3426 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3425, i32 0, i64 0
  %2214 = load i32, i32* %arrayidx3426, align 4
  %2215 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin3427 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2215, i32 0, i32 0
  %arrayidx3428 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3427, i32 0, i64 0
  %2216 = load i32, i32* %arrayidx3428, align 4
  %sub3429 = sub nsw i32 %2214, %2216
  %add3430 = add nsw i32 %sub3429, 1
  br label %cond.end.3432

cond.false.3431:                                  ; preds = %cond.end.3413
  br label %cond.end.3432

cond.end.3432:                                    ; preds = %cond.false.3431, %cond.true.3424
  %cond3433 = phi i32 [ %add3430, %cond.true.3424 ], [ 0, %cond.false.3431 ]
  %mul3434 = mul nsw i32 %add3416, %cond3433
  %add3435 = add nsw i32 %2194, %mul3434
  store i32 %add3435, i32* %xoff0, align 4
  %2217 = load i32, i32* %si, align 4
  %add3436 = add nsw i32 %2217, 1
  %idxprom3437 = sext i32 %add3436 to i64
  %2218 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx3438 = getelementptr inbounds [3 x i32], [3 x i32]* %2218, i64 %idxprom3437
  %arrayidx3439 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx3438, i32 0, i64 0
  %2219 = load i32, i32* %arrayidx3439, align 4
  %2220 = load i32, i32* %si, align 4
  %add3440 = add nsw i32 %2220, 1
  %idxprom3441 = sext i32 %add3440 to i64
  %2221 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx3442 = getelementptr inbounds [3 x i32], [3 x i32]* %2221, i64 %idxprom3441
  %arrayidx3443 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx3442, i32 0, i64 1
  %2222 = load i32, i32* %arrayidx3443, align 4
  %2223 = load i32, i32* %si, align 4
  %add3444 = add nsw i32 %2223, 1
  %idxprom3445 = sext i32 %add3444 to i64
  %2224 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx3446 = getelementptr inbounds [3 x i32], [3 x i32]* %2224, i64 %idxprom3445
  %arrayidx3447 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx3446, i32 0, i64 2
  %2225 = load i32, i32* %arrayidx3447, align 4
  %2226 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax3448 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2226, i32 0, i32 1
  %arrayidx3449 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3448, i32 0, i64 1
  %2227 = load i32, i32* %arrayidx3449, align 4
  %2228 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin3450 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2228, i32 0, i32 0
  %arrayidx3451 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3450, i32 0, i64 1
  %2229 = load i32, i32* %arrayidx3451, align 4
  %sub3452 = sub nsw i32 %2227, %2229
  %add3453 = add nsw i32 %sub3452, 1
  %cmp3454 = icmp slt i32 0, %add3453
  br i1 %cmp3454, label %cond.true.3455, label %cond.false.3462

cond.true.3455:                                   ; preds = %cond.end.3432
  %2230 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax3456 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2230, i32 0, i32 1
  %arrayidx3457 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3456, i32 0, i64 1
  %2231 = load i32, i32* %arrayidx3457, align 4
  %2232 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin3458 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2232, i32 0, i32 0
  %arrayidx3459 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3458, i32 0, i64 1
  %2233 = load i32, i32* %arrayidx3459, align 4
  %sub3460 = sub nsw i32 %2231, %2233
  %add3461 = add nsw i32 %sub3460, 1
  br label %cond.end.3463

cond.false.3462:                                  ; preds = %cond.end.3432
  br label %cond.end.3463

cond.end.3463:                                    ; preds = %cond.false.3462, %cond.true.3455
  %cond3464 = phi i32 [ %add3461, %cond.true.3455 ], [ 0, %cond.false.3462 ]
  %mul3465 = mul nsw i32 %2225, %cond3464
  %add3466 = add nsw i32 %2222, %mul3465
  %2234 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax3467 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2234, i32 0, i32 1
  %arrayidx3468 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3467, i32 0, i64 0
  %2235 = load i32, i32* %arrayidx3468, align 4
  %2236 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin3469 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2236, i32 0, i32 0
  %arrayidx3470 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3469, i32 0, i64 0
  %2237 = load i32, i32* %arrayidx3470, align 4
  %sub3471 = sub nsw i32 %2235, %2237
  %add3472 = add nsw i32 %sub3471, 1
  %cmp3473 = icmp slt i32 0, %add3472
  br i1 %cmp3473, label %cond.true.3474, label %cond.false.3481

cond.true.3474:                                   ; preds = %cond.end.3463
  %2238 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax3475 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2238, i32 0, i32 1
  %arrayidx3476 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3475, i32 0, i64 0
  %2239 = load i32, i32* %arrayidx3476, align 4
  %2240 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin3477 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2240, i32 0, i32 0
  %arrayidx3478 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3477, i32 0, i64 0
  %2241 = load i32, i32* %arrayidx3478, align 4
  %sub3479 = sub nsw i32 %2239, %2241
  %add3480 = add nsw i32 %sub3479, 1
  br label %cond.end.3482

cond.false.3481:                                  ; preds = %cond.end.3463
  br label %cond.end.3482

cond.end.3482:                                    ; preds = %cond.false.3481, %cond.true.3474
  %cond3483 = phi i32 [ %add3480, %cond.true.3474 ], [ 0, %cond.false.3481 ]
  %mul3484 = mul nsw i32 %add3466, %cond3483
  %add3485 = add nsw i32 %2219, %mul3484
  store i32 %add3485, i32* %xoff1, align 4
  %2242 = load i32, i32* %si, align 4
  %add3486 = add nsw i32 %2242, 2
  %idxprom3487 = sext i32 %add3486 to i64
  %2243 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx3488 = getelementptr inbounds [3 x i32], [3 x i32]* %2243, i64 %idxprom3487
  %arrayidx3489 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx3488, i32 0, i64 0
  %2244 = load i32, i32* %arrayidx3489, align 4
  %2245 = load i32, i32* %si, align 4
  %add3490 = add nsw i32 %2245, 2
  %idxprom3491 = sext i32 %add3490 to i64
  %2246 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx3492 = getelementptr inbounds [3 x i32], [3 x i32]* %2246, i64 %idxprom3491
  %arrayidx3493 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx3492, i32 0, i64 1
  %2247 = load i32, i32* %arrayidx3493, align 4
  %2248 = load i32, i32* %si, align 4
  %add3494 = add nsw i32 %2248, 2
  %idxprom3495 = sext i32 %add3494 to i64
  %2249 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx3496 = getelementptr inbounds [3 x i32], [3 x i32]* %2249, i64 %idxprom3495
  %arrayidx3497 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx3496, i32 0, i64 2
  %2250 = load i32, i32* %arrayidx3497, align 4
  %2251 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax3498 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2251, i32 0, i32 1
  %arrayidx3499 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3498, i32 0, i64 1
  %2252 = load i32, i32* %arrayidx3499, align 4
  %2253 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin3500 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2253, i32 0, i32 0
  %arrayidx3501 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3500, i32 0, i64 1
  %2254 = load i32, i32* %arrayidx3501, align 4
  %sub3502 = sub nsw i32 %2252, %2254
  %add3503 = add nsw i32 %sub3502, 1
  %cmp3504 = icmp slt i32 0, %add3503
  br i1 %cmp3504, label %cond.true.3505, label %cond.false.3512

cond.true.3505:                                   ; preds = %cond.end.3482
  %2255 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax3506 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2255, i32 0, i32 1
  %arrayidx3507 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3506, i32 0, i64 1
  %2256 = load i32, i32* %arrayidx3507, align 4
  %2257 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin3508 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2257, i32 0, i32 0
  %arrayidx3509 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3508, i32 0, i64 1
  %2258 = load i32, i32* %arrayidx3509, align 4
  %sub3510 = sub nsw i32 %2256, %2258
  %add3511 = add nsw i32 %sub3510, 1
  br label %cond.end.3513

cond.false.3512:                                  ; preds = %cond.end.3482
  br label %cond.end.3513

cond.end.3513:                                    ; preds = %cond.false.3512, %cond.true.3505
  %cond3514 = phi i32 [ %add3511, %cond.true.3505 ], [ 0, %cond.false.3512 ]
  %mul3515 = mul nsw i32 %2250, %cond3514
  %add3516 = add nsw i32 %2247, %mul3515
  %2259 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax3517 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2259, i32 0, i32 1
  %arrayidx3518 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3517, i32 0, i64 0
  %2260 = load i32, i32* %arrayidx3518, align 4
  %2261 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin3519 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2261, i32 0, i32 0
  %arrayidx3520 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3519, i32 0, i64 0
  %2262 = load i32, i32* %arrayidx3520, align 4
  %sub3521 = sub nsw i32 %2260, %2262
  %add3522 = add nsw i32 %sub3521, 1
  %cmp3523 = icmp slt i32 0, %add3522
  br i1 %cmp3523, label %cond.true.3524, label %cond.false.3531

cond.true.3524:                                   ; preds = %cond.end.3513
  %2263 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax3525 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2263, i32 0, i32 1
  %arrayidx3526 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3525, i32 0, i64 0
  %2264 = load i32, i32* %arrayidx3526, align 4
  %2265 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin3527 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2265, i32 0, i32 0
  %arrayidx3528 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3527, i32 0, i64 0
  %2266 = load i32, i32* %arrayidx3528, align 4
  %sub3529 = sub nsw i32 %2264, %2266
  %add3530 = add nsw i32 %sub3529, 1
  br label %cond.end.3532

cond.false.3531:                                  ; preds = %cond.end.3513
  br label %cond.end.3532

cond.end.3532:                                    ; preds = %cond.false.3531, %cond.true.3524
  %cond3533 = phi i32 [ %add3530, %cond.true.3524 ], [ 0, %cond.false.3531 ]
  %mul3534 = mul nsw i32 %add3516, %cond3533
  %add3535 = add nsw i32 %2244, %mul3534
  store i32 %add3535, i32* %xoff2, align 4
  %2267 = load i32, i32* %si, align 4
  %add3536 = add nsw i32 %2267, 3
  %idxprom3537 = sext i32 %add3536 to i64
  %2268 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx3538 = getelementptr inbounds [3 x i32], [3 x i32]* %2268, i64 %idxprom3537
  %arrayidx3539 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx3538, i32 0, i64 0
  %2269 = load i32, i32* %arrayidx3539, align 4
  %2270 = load i32, i32* %si, align 4
  %add3540 = add nsw i32 %2270, 3
  %idxprom3541 = sext i32 %add3540 to i64
  %2271 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx3542 = getelementptr inbounds [3 x i32], [3 x i32]* %2271, i64 %idxprom3541
  %arrayidx3543 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx3542, i32 0, i64 1
  %2272 = load i32, i32* %arrayidx3543, align 4
  %2273 = load i32, i32* %si, align 4
  %add3544 = add nsw i32 %2273, 3
  %idxprom3545 = sext i32 %add3544 to i64
  %2274 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx3546 = getelementptr inbounds [3 x i32], [3 x i32]* %2274, i64 %idxprom3545
  %arrayidx3547 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx3546, i32 0, i64 2
  %2275 = load i32, i32* %arrayidx3547, align 4
  %2276 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax3548 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2276, i32 0, i32 1
  %arrayidx3549 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3548, i32 0, i64 1
  %2277 = load i32, i32* %arrayidx3549, align 4
  %2278 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin3550 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2278, i32 0, i32 0
  %arrayidx3551 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3550, i32 0, i64 1
  %2279 = load i32, i32* %arrayidx3551, align 4
  %sub3552 = sub nsw i32 %2277, %2279
  %add3553 = add nsw i32 %sub3552, 1
  %cmp3554 = icmp slt i32 0, %add3553
  br i1 %cmp3554, label %cond.true.3555, label %cond.false.3562

cond.true.3555:                                   ; preds = %cond.end.3532
  %2280 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax3556 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2280, i32 0, i32 1
  %arrayidx3557 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3556, i32 0, i64 1
  %2281 = load i32, i32* %arrayidx3557, align 4
  %2282 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin3558 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2282, i32 0, i32 0
  %arrayidx3559 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3558, i32 0, i64 1
  %2283 = load i32, i32* %arrayidx3559, align 4
  %sub3560 = sub nsw i32 %2281, %2283
  %add3561 = add nsw i32 %sub3560, 1
  br label %cond.end.3563

cond.false.3562:                                  ; preds = %cond.end.3532
  br label %cond.end.3563

cond.end.3563:                                    ; preds = %cond.false.3562, %cond.true.3555
  %cond3564 = phi i32 [ %add3561, %cond.true.3555 ], [ 0, %cond.false.3562 ]
  %mul3565 = mul nsw i32 %2275, %cond3564
  %add3566 = add nsw i32 %2272, %mul3565
  %2284 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax3567 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2284, i32 0, i32 1
  %arrayidx3568 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3567, i32 0, i64 0
  %2285 = load i32, i32* %arrayidx3568, align 4
  %2286 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin3569 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2286, i32 0, i32 0
  %arrayidx3570 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3569, i32 0, i64 0
  %2287 = load i32, i32* %arrayidx3570, align 4
  %sub3571 = sub nsw i32 %2285, %2287
  %add3572 = add nsw i32 %sub3571, 1
  %cmp3573 = icmp slt i32 0, %add3572
  br i1 %cmp3573, label %cond.true.3574, label %cond.false.3581

cond.true.3574:                                   ; preds = %cond.end.3563
  %2288 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax3575 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2288, i32 0, i32 1
  %arrayidx3576 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3575, i32 0, i64 0
  %2289 = load i32, i32* %arrayidx3576, align 4
  %2290 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin3577 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2290, i32 0, i32 0
  %arrayidx3578 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3577, i32 0, i64 0
  %2291 = load i32, i32* %arrayidx3578, align 4
  %sub3579 = sub nsw i32 %2289, %2291
  %add3580 = add nsw i32 %sub3579, 1
  br label %cond.end.3582

cond.false.3581:                                  ; preds = %cond.end.3563
  br label %cond.end.3582

cond.end.3582:                                    ; preds = %cond.false.3581, %cond.true.3574
  %cond3583 = phi i32 [ %add3580, %cond.true.3574 ], [ 0, %cond.false.3581 ]
  %mul3584 = mul nsw i32 %add3566, %cond3583
  %add3585 = add nsw i32 %2269, %mul3584
  store i32 %add3585, i32* %xoff3, align 4
  %2292 = load i32*, i32** %start, align 8
  %arrayidx3587 = getelementptr inbounds i32, i32* %2292, i64 0
  %2293 = load i32, i32* %arrayidx3587, align 4
  %2294 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin3588 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2294, i32 0, i32 0
  %arrayidx3589 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3588, i32 0, i64 0
  %2295 = load i32, i32* %arrayidx3589, align 4
  %sub3590 = sub nsw i32 %2293, %2295
  %2296 = load i32*, i32** %start, align 8
  %arrayidx3591 = getelementptr inbounds i32, i32* %2296, i64 1
  %2297 = load i32, i32* %arrayidx3591, align 4
  %2298 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin3592 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2298, i32 0, i32 0
  %arrayidx3593 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3592, i32 0, i64 1
  %2299 = load i32, i32* %arrayidx3593, align 4
  %sub3594 = sub nsw i32 %2297, %2299
  %2300 = load i32*, i32** %start, align 8
  %arrayidx3595 = getelementptr inbounds i32, i32* %2300, i64 2
  %2301 = load i32, i32* %arrayidx3595, align 4
  %2302 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin3596 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2302, i32 0, i32 0
  %arrayidx3597 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3596, i32 0, i64 2
  %2303 = load i32, i32* %arrayidx3597, align 4
  %sub3598 = sub nsw i32 %2301, %2303
  %2304 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax3599 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2304, i32 0, i32 1
  %arrayidx3600 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3599, i32 0, i64 1
  %2305 = load i32, i32* %arrayidx3600, align 4
  %2306 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin3601 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2306, i32 0, i32 0
  %arrayidx3602 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3601, i32 0, i64 1
  %2307 = load i32, i32* %arrayidx3602, align 4
  %sub3603 = sub nsw i32 %2305, %2307
  %add3604 = add nsw i32 %sub3603, 1
  %cmp3605 = icmp slt i32 0, %add3604
  br i1 %cmp3605, label %cond.true.3606, label %cond.false.3613

cond.true.3606:                                   ; preds = %cond.end.3582
  %2308 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax3607 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2308, i32 0, i32 1
  %arrayidx3608 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3607, i32 0, i64 1
  %2309 = load i32, i32* %arrayidx3608, align 4
  %2310 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin3609 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2310, i32 0, i32 0
  %arrayidx3610 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3609, i32 0, i64 1
  %2311 = load i32, i32* %arrayidx3610, align 4
  %sub3611 = sub nsw i32 %2309, %2311
  %add3612 = add nsw i32 %sub3611, 1
  br label %cond.end.3614

cond.false.3613:                                  ; preds = %cond.end.3582
  br label %cond.end.3614

cond.end.3614:                                    ; preds = %cond.false.3613, %cond.true.3606
  %cond3615 = phi i32 [ %add3612, %cond.true.3606 ], [ 0, %cond.false.3613 ]
  %mul3616 = mul nsw i32 %sub3598, %cond3615
  %add3617 = add nsw i32 %sub3594, %mul3616
  %2312 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax3618 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2312, i32 0, i32 1
  %arrayidx3619 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3618, i32 0, i64 0
  %2313 = load i32, i32* %arrayidx3619, align 4
  %2314 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin3620 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2314, i32 0, i32 0
  %arrayidx3621 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3620, i32 0, i64 0
  %2315 = load i32, i32* %arrayidx3621, align 4
  %sub3622 = sub nsw i32 %2313, %2315
  %add3623 = add nsw i32 %sub3622, 1
  %cmp3624 = icmp slt i32 0, %add3623
  br i1 %cmp3624, label %cond.true.3625, label %cond.false.3632

cond.true.3625:                                   ; preds = %cond.end.3614
  %2316 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax3626 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2316, i32 0, i32 1
  %arrayidx3627 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3626, i32 0, i64 0
  %2317 = load i32, i32* %arrayidx3627, align 4
  %2318 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin3628 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2318, i32 0, i32 0
  %arrayidx3629 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3628, i32 0, i64 0
  %2319 = load i32, i32* %arrayidx3629, align 4
  %sub3630 = sub nsw i32 %2317, %2319
  %add3631 = add nsw i32 %sub3630, 1
  br label %cond.end.3633

cond.false.3632:                                  ; preds = %cond.end.3614
  br label %cond.end.3633

cond.end.3633:                                    ; preds = %cond.false.3632, %cond.true.3625
  %cond3634 = phi i32 [ %add3631, %cond.true.3625 ], [ 0, %cond.false.3632 ]
  %mul3635 = mul nsw i32 %add3617, %cond3634
  %add3636 = add nsw i32 %sub3590, %mul3635
  store i32 %add3636, i32* %hypre__i1start3586, align 4
  %2320 = load i32*, i32** %start, align 8
  %arrayidx3638 = getelementptr inbounds i32, i32* %2320, i64 0
  %2321 = load i32, i32* %arrayidx3638, align 4
  %2322 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin3639 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2322, i32 0, i32 0
  %arrayidx3640 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3639, i32 0, i64 0
  %2323 = load i32, i32* %arrayidx3640, align 4
  %sub3641 = sub nsw i32 %2321, %2323
  %2324 = load i32*, i32** %start, align 8
  %arrayidx3642 = getelementptr inbounds i32, i32* %2324, i64 1
  %2325 = load i32, i32* %arrayidx3642, align 4
  %2326 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin3643 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2326, i32 0, i32 0
  %arrayidx3644 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3643, i32 0, i64 1
  %2327 = load i32, i32* %arrayidx3644, align 4
  %sub3645 = sub nsw i32 %2325, %2327
  %2328 = load i32*, i32** %start, align 8
  %arrayidx3646 = getelementptr inbounds i32, i32* %2328, i64 2
  %2329 = load i32, i32* %arrayidx3646, align 4
  %2330 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin3647 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2330, i32 0, i32 0
  %arrayidx3648 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3647, i32 0, i64 2
  %2331 = load i32, i32* %arrayidx3648, align 4
  %sub3649 = sub nsw i32 %2329, %2331
  %2332 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax3650 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2332, i32 0, i32 1
  %arrayidx3651 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3650, i32 0, i64 1
  %2333 = load i32, i32* %arrayidx3651, align 4
  %2334 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin3652 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2334, i32 0, i32 0
  %arrayidx3653 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3652, i32 0, i64 1
  %2335 = load i32, i32* %arrayidx3653, align 4
  %sub3654 = sub nsw i32 %2333, %2335
  %add3655 = add nsw i32 %sub3654, 1
  %cmp3656 = icmp slt i32 0, %add3655
  br i1 %cmp3656, label %cond.true.3657, label %cond.false.3664

cond.true.3657:                                   ; preds = %cond.end.3633
  %2336 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax3658 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2336, i32 0, i32 1
  %arrayidx3659 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3658, i32 0, i64 1
  %2337 = load i32, i32* %arrayidx3659, align 4
  %2338 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin3660 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2338, i32 0, i32 0
  %arrayidx3661 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3660, i32 0, i64 1
  %2339 = load i32, i32* %arrayidx3661, align 4
  %sub3662 = sub nsw i32 %2337, %2339
  %add3663 = add nsw i32 %sub3662, 1
  br label %cond.end.3665

cond.false.3664:                                  ; preds = %cond.end.3633
  br label %cond.end.3665

cond.end.3665:                                    ; preds = %cond.false.3664, %cond.true.3657
  %cond3666 = phi i32 [ %add3663, %cond.true.3657 ], [ 0, %cond.false.3664 ]
  %mul3667 = mul nsw i32 %sub3649, %cond3666
  %add3668 = add nsw i32 %sub3645, %mul3667
  %2340 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax3669 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2340, i32 0, i32 1
  %arrayidx3670 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3669, i32 0, i64 0
  %2341 = load i32, i32* %arrayidx3670, align 4
  %2342 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin3671 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2342, i32 0, i32 0
  %arrayidx3672 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3671, i32 0, i64 0
  %2343 = load i32, i32* %arrayidx3672, align 4
  %sub3673 = sub nsw i32 %2341, %2343
  %add3674 = add nsw i32 %sub3673, 1
  %cmp3675 = icmp slt i32 0, %add3674
  br i1 %cmp3675, label %cond.true.3676, label %cond.false.3683

cond.true.3676:                                   ; preds = %cond.end.3665
  %2344 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax3677 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2344, i32 0, i32 1
  %arrayidx3678 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3677, i32 0, i64 0
  %2345 = load i32, i32* %arrayidx3678, align 4
  %2346 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin3679 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2346, i32 0, i32 0
  %arrayidx3680 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3679, i32 0, i64 0
  %2347 = load i32, i32* %arrayidx3680, align 4
  %sub3681 = sub nsw i32 %2345, %2347
  %add3682 = add nsw i32 %sub3681, 1
  br label %cond.end.3684

cond.false.3683:                                  ; preds = %cond.end.3665
  br label %cond.end.3684

cond.end.3684:                                    ; preds = %cond.false.3683, %cond.true.3676
  %cond3685 = phi i32 [ %add3682, %cond.true.3676 ], [ 0, %cond.false.3683 ]
  %mul3686 = mul nsw i32 %add3668, %cond3685
  %add3687 = add nsw i32 %sub3641, %mul3686
  store i32 %add3687, i32* %hypre__i2start3637, align 4
  %2348 = load i32*, i32** %start, align 8
  %arrayidx3689 = getelementptr inbounds i32, i32* %2348, i64 0
  %2349 = load i32, i32* %arrayidx3689, align 4
  %2350 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin3690 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2350, i32 0, i32 0
  %arrayidx3691 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3690, i32 0, i64 0
  %2351 = load i32, i32* %arrayidx3691, align 4
  %sub3692 = sub nsw i32 %2349, %2351
  %2352 = load i32*, i32** %start, align 8
  %arrayidx3693 = getelementptr inbounds i32, i32* %2352, i64 1
  %2353 = load i32, i32* %arrayidx3693, align 4
  %2354 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin3694 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2354, i32 0, i32 0
  %arrayidx3695 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3694, i32 0, i64 1
  %2355 = load i32, i32* %arrayidx3695, align 4
  %sub3696 = sub nsw i32 %2353, %2355
  %2356 = load i32*, i32** %start, align 8
  %arrayidx3697 = getelementptr inbounds i32, i32* %2356, i64 2
  %2357 = load i32, i32* %arrayidx3697, align 4
  %2358 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin3698 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2358, i32 0, i32 0
  %arrayidx3699 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3698, i32 0, i64 2
  %2359 = load i32, i32* %arrayidx3699, align 4
  %sub3700 = sub nsw i32 %2357, %2359
  %2360 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax3701 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2360, i32 0, i32 1
  %arrayidx3702 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3701, i32 0, i64 1
  %2361 = load i32, i32* %arrayidx3702, align 4
  %2362 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin3703 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2362, i32 0, i32 0
  %arrayidx3704 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3703, i32 0, i64 1
  %2363 = load i32, i32* %arrayidx3704, align 4
  %sub3705 = sub nsw i32 %2361, %2363
  %add3706 = add nsw i32 %sub3705, 1
  %cmp3707 = icmp slt i32 0, %add3706
  br i1 %cmp3707, label %cond.true.3708, label %cond.false.3715

cond.true.3708:                                   ; preds = %cond.end.3684
  %2364 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax3709 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2364, i32 0, i32 1
  %arrayidx3710 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3709, i32 0, i64 1
  %2365 = load i32, i32* %arrayidx3710, align 4
  %2366 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin3711 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2366, i32 0, i32 0
  %arrayidx3712 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3711, i32 0, i64 1
  %2367 = load i32, i32* %arrayidx3712, align 4
  %sub3713 = sub nsw i32 %2365, %2367
  %add3714 = add nsw i32 %sub3713, 1
  br label %cond.end.3716

cond.false.3715:                                  ; preds = %cond.end.3684
  br label %cond.end.3716

cond.end.3716:                                    ; preds = %cond.false.3715, %cond.true.3708
  %cond3717 = phi i32 [ %add3714, %cond.true.3708 ], [ 0, %cond.false.3715 ]
  %mul3718 = mul nsw i32 %sub3700, %cond3717
  %add3719 = add nsw i32 %sub3696, %mul3718
  %2368 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax3720 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2368, i32 0, i32 1
  %arrayidx3721 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3720, i32 0, i64 0
  %2369 = load i32, i32* %arrayidx3721, align 4
  %2370 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin3722 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2370, i32 0, i32 0
  %arrayidx3723 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3722, i32 0, i64 0
  %2371 = load i32, i32* %arrayidx3723, align 4
  %sub3724 = sub nsw i32 %2369, %2371
  %add3725 = add nsw i32 %sub3724, 1
  %cmp3726 = icmp slt i32 0, %add3725
  br i1 %cmp3726, label %cond.true.3727, label %cond.false.3734

cond.true.3727:                                   ; preds = %cond.end.3716
  %2372 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax3728 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2372, i32 0, i32 1
  %arrayidx3729 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3728, i32 0, i64 0
  %2373 = load i32, i32* %arrayidx3729, align 4
  %2374 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin3730 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2374, i32 0, i32 0
  %arrayidx3731 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3730, i32 0, i64 0
  %2375 = load i32, i32* %arrayidx3731, align 4
  %sub3732 = sub nsw i32 %2373, %2375
  %add3733 = add nsw i32 %sub3732, 1
  br label %cond.end.3735

cond.false.3734:                                  ; preds = %cond.end.3716
  br label %cond.end.3735

cond.end.3735:                                    ; preds = %cond.false.3734, %cond.true.3727
  %cond3736 = phi i32 [ %add3733, %cond.true.3727 ], [ 0, %cond.false.3734 ]
  %mul3737 = mul nsw i32 %add3719, %cond3736
  %add3738 = add nsw i32 %sub3692, %mul3737
  store i32 %add3738, i32* %hypre__i3start3688, align 4
  %2376 = load i32*, i32** %stride, align 8
  %arrayidx3740 = getelementptr inbounds i32, i32* %2376, i64 0
  %2377 = load i32, i32* %arrayidx3740, align 4
  store i32 %2377, i32* %hypre__sx13739, align 4
  %2378 = load i32*, i32** %stride, align 8
  %arrayidx3742 = getelementptr inbounds i32, i32* %2378, i64 1
  %2379 = load i32, i32* %arrayidx3742, align 4
  %2380 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax3743 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2380, i32 0, i32 1
  %arrayidx3744 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3743, i32 0, i64 0
  %2381 = load i32, i32* %arrayidx3744, align 4
  %2382 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin3745 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2382, i32 0, i32 0
  %arrayidx3746 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3745, i32 0, i64 0
  %2383 = load i32, i32* %arrayidx3746, align 4
  %sub3747 = sub nsw i32 %2381, %2383
  %add3748 = add nsw i32 %sub3747, 1
  %cmp3749 = icmp slt i32 0, %add3748
  br i1 %cmp3749, label %cond.true.3750, label %cond.false.3757

cond.true.3750:                                   ; preds = %cond.end.3735
  %2384 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax3751 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2384, i32 0, i32 1
  %arrayidx3752 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3751, i32 0, i64 0
  %2385 = load i32, i32* %arrayidx3752, align 4
  %2386 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin3753 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2386, i32 0, i32 0
  %arrayidx3754 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3753, i32 0, i64 0
  %2387 = load i32, i32* %arrayidx3754, align 4
  %sub3755 = sub nsw i32 %2385, %2387
  %add3756 = add nsw i32 %sub3755, 1
  br label %cond.end.3758

cond.false.3757:                                  ; preds = %cond.end.3735
  br label %cond.end.3758

cond.end.3758:                                    ; preds = %cond.false.3757, %cond.true.3750
  %cond3759 = phi i32 [ %add3756, %cond.true.3750 ], [ 0, %cond.false.3757 ]
  %mul3760 = mul nsw i32 %2379, %cond3759
  store i32 %mul3760, i32* %hypre__sy13741, align 4
  %2388 = load i32*, i32** %stride, align 8
  %arrayidx3762 = getelementptr inbounds i32, i32* %2388, i64 2
  %2389 = load i32, i32* %arrayidx3762, align 4
  %2390 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax3763 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2390, i32 0, i32 1
  %arrayidx3764 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3763, i32 0, i64 0
  %2391 = load i32, i32* %arrayidx3764, align 4
  %2392 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin3765 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2392, i32 0, i32 0
  %arrayidx3766 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3765, i32 0, i64 0
  %2393 = load i32, i32* %arrayidx3766, align 4
  %sub3767 = sub nsw i32 %2391, %2393
  %add3768 = add nsw i32 %sub3767, 1
  %cmp3769 = icmp slt i32 0, %add3768
  br i1 %cmp3769, label %cond.true.3770, label %cond.false.3777

cond.true.3770:                                   ; preds = %cond.end.3758
  %2394 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax3771 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2394, i32 0, i32 1
  %arrayidx3772 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3771, i32 0, i64 0
  %2395 = load i32, i32* %arrayidx3772, align 4
  %2396 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin3773 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2396, i32 0, i32 0
  %arrayidx3774 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3773, i32 0, i64 0
  %2397 = load i32, i32* %arrayidx3774, align 4
  %sub3775 = sub nsw i32 %2395, %2397
  %add3776 = add nsw i32 %sub3775, 1
  br label %cond.end.3778

cond.false.3777:                                  ; preds = %cond.end.3758
  br label %cond.end.3778

cond.end.3778:                                    ; preds = %cond.false.3777, %cond.true.3770
  %cond3779 = phi i32 [ %add3776, %cond.true.3770 ], [ 0, %cond.false.3777 ]
  %mul3780 = mul nsw i32 %2389, %cond3779
  %2398 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax3781 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2398, i32 0, i32 1
  %arrayidx3782 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3781, i32 0, i64 1
  %2399 = load i32, i32* %arrayidx3782, align 4
  %2400 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin3783 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2400, i32 0, i32 0
  %arrayidx3784 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3783, i32 0, i64 1
  %2401 = load i32, i32* %arrayidx3784, align 4
  %sub3785 = sub nsw i32 %2399, %2401
  %add3786 = add nsw i32 %sub3785, 1
  %cmp3787 = icmp slt i32 0, %add3786
  br i1 %cmp3787, label %cond.true.3788, label %cond.false.3795

cond.true.3788:                                   ; preds = %cond.end.3778
  %2402 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax3789 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2402, i32 0, i32 1
  %arrayidx3790 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3789, i32 0, i64 1
  %2403 = load i32, i32* %arrayidx3790, align 4
  %2404 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin3791 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2404, i32 0, i32 0
  %arrayidx3792 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3791, i32 0, i64 1
  %2405 = load i32, i32* %arrayidx3792, align 4
  %sub3793 = sub nsw i32 %2403, %2405
  %add3794 = add nsw i32 %sub3793, 1
  br label %cond.end.3796

cond.false.3795:                                  ; preds = %cond.end.3778
  br label %cond.end.3796

cond.end.3796:                                    ; preds = %cond.false.3795, %cond.true.3788
  %cond3797 = phi i32 [ %add3794, %cond.true.3788 ], [ 0, %cond.false.3795 ]
  %mul3798 = mul nsw i32 %mul3780, %cond3797
  store i32 %mul3798, i32* %hypre__sz13761, align 4
  %2406 = load i32*, i32** %stride, align 8
  %arrayidx3800 = getelementptr inbounds i32, i32* %2406, i64 0
  %2407 = load i32, i32* %arrayidx3800, align 4
  store i32 %2407, i32* %hypre__sx23799, align 4
  %2408 = load i32*, i32** %stride, align 8
  %arrayidx3802 = getelementptr inbounds i32, i32* %2408, i64 1
  %2409 = load i32, i32* %arrayidx3802, align 4
  %2410 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax3803 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2410, i32 0, i32 1
  %arrayidx3804 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3803, i32 0, i64 0
  %2411 = load i32, i32* %arrayidx3804, align 4
  %2412 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin3805 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2412, i32 0, i32 0
  %arrayidx3806 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3805, i32 0, i64 0
  %2413 = load i32, i32* %arrayidx3806, align 4
  %sub3807 = sub nsw i32 %2411, %2413
  %add3808 = add nsw i32 %sub3807, 1
  %cmp3809 = icmp slt i32 0, %add3808
  br i1 %cmp3809, label %cond.true.3810, label %cond.false.3817

cond.true.3810:                                   ; preds = %cond.end.3796
  %2414 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax3811 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2414, i32 0, i32 1
  %arrayidx3812 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3811, i32 0, i64 0
  %2415 = load i32, i32* %arrayidx3812, align 4
  %2416 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin3813 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2416, i32 0, i32 0
  %arrayidx3814 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3813, i32 0, i64 0
  %2417 = load i32, i32* %arrayidx3814, align 4
  %sub3815 = sub nsw i32 %2415, %2417
  %add3816 = add nsw i32 %sub3815, 1
  br label %cond.end.3818

cond.false.3817:                                  ; preds = %cond.end.3796
  br label %cond.end.3818

cond.end.3818:                                    ; preds = %cond.false.3817, %cond.true.3810
  %cond3819 = phi i32 [ %add3816, %cond.true.3810 ], [ 0, %cond.false.3817 ]
  %mul3820 = mul nsw i32 %2409, %cond3819
  store i32 %mul3820, i32* %hypre__sy23801, align 4
  %2418 = load i32*, i32** %stride, align 8
  %arrayidx3822 = getelementptr inbounds i32, i32* %2418, i64 2
  %2419 = load i32, i32* %arrayidx3822, align 4
  %2420 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax3823 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2420, i32 0, i32 1
  %arrayidx3824 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3823, i32 0, i64 0
  %2421 = load i32, i32* %arrayidx3824, align 4
  %2422 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin3825 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2422, i32 0, i32 0
  %arrayidx3826 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3825, i32 0, i64 0
  %2423 = load i32, i32* %arrayidx3826, align 4
  %sub3827 = sub nsw i32 %2421, %2423
  %add3828 = add nsw i32 %sub3827, 1
  %cmp3829 = icmp slt i32 0, %add3828
  br i1 %cmp3829, label %cond.true.3830, label %cond.false.3837

cond.true.3830:                                   ; preds = %cond.end.3818
  %2424 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax3831 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2424, i32 0, i32 1
  %arrayidx3832 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3831, i32 0, i64 0
  %2425 = load i32, i32* %arrayidx3832, align 4
  %2426 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin3833 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2426, i32 0, i32 0
  %arrayidx3834 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3833, i32 0, i64 0
  %2427 = load i32, i32* %arrayidx3834, align 4
  %sub3835 = sub nsw i32 %2425, %2427
  %add3836 = add nsw i32 %sub3835, 1
  br label %cond.end.3838

cond.false.3837:                                  ; preds = %cond.end.3818
  br label %cond.end.3838

cond.end.3838:                                    ; preds = %cond.false.3837, %cond.true.3830
  %cond3839 = phi i32 [ %add3836, %cond.true.3830 ], [ 0, %cond.false.3837 ]
  %mul3840 = mul nsw i32 %2419, %cond3839
  %2428 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax3841 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2428, i32 0, i32 1
  %arrayidx3842 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3841, i32 0, i64 1
  %2429 = load i32, i32* %arrayidx3842, align 4
  %2430 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin3843 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2430, i32 0, i32 0
  %arrayidx3844 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3843, i32 0, i64 1
  %2431 = load i32, i32* %arrayidx3844, align 4
  %sub3845 = sub nsw i32 %2429, %2431
  %add3846 = add nsw i32 %sub3845, 1
  %cmp3847 = icmp slt i32 0, %add3846
  br i1 %cmp3847, label %cond.true.3848, label %cond.false.3855

cond.true.3848:                                   ; preds = %cond.end.3838
  %2432 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax3849 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2432, i32 0, i32 1
  %arrayidx3850 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3849, i32 0, i64 1
  %2433 = load i32, i32* %arrayidx3850, align 4
  %2434 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin3851 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2434, i32 0, i32 0
  %arrayidx3852 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3851, i32 0, i64 1
  %2435 = load i32, i32* %arrayidx3852, align 4
  %sub3853 = sub nsw i32 %2433, %2435
  %add3854 = add nsw i32 %sub3853, 1
  br label %cond.end.3856

cond.false.3855:                                  ; preds = %cond.end.3838
  br label %cond.end.3856

cond.end.3856:                                    ; preds = %cond.false.3855, %cond.true.3848
  %cond3857 = phi i32 [ %add3854, %cond.true.3848 ], [ 0, %cond.false.3855 ]
  %mul3858 = mul nsw i32 %mul3840, %cond3857
  store i32 %mul3858, i32* %hypre__sz23821, align 4
  %2436 = load i32*, i32** %stride, align 8
  %arrayidx3860 = getelementptr inbounds i32, i32* %2436, i64 0
  %2437 = load i32, i32* %arrayidx3860, align 4
  store i32 %2437, i32* %hypre__sx33859, align 4
  %2438 = load i32*, i32** %stride, align 8
  %arrayidx3862 = getelementptr inbounds i32, i32* %2438, i64 1
  %2439 = load i32, i32* %arrayidx3862, align 4
  %2440 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax3863 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2440, i32 0, i32 1
  %arrayidx3864 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3863, i32 0, i64 0
  %2441 = load i32, i32* %arrayidx3864, align 4
  %2442 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin3865 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2442, i32 0, i32 0
  %arrayidx3866 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3865, i32 0, i64 0
  %2443 = load i32, i32* %arrayidx3866, align 4
  %sub3867 = sub nsw i32 %2441, %2443
  %add3868 = add nsw i32 %sub3867, 1
  %cmp3869 = icmp slt i32 0, %add3868
  br i1 %cmp3869, label %cond.true.3870, label %cond.false.3877

cond.true.3870:                                   ; preds = %cond.end.3856
  %2444 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax3871 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2444, i32 0, i32 1
  %arrayidx3872 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3871, i32 0, i64 0
  %2445 = load i32, i32* %arrayidx3872, align 4
  %2446 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin3873 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2446, i32 0, i32 0
  %arrayidx3874 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3873, i32 0, i64 0
  %2447 = load i32, i32* %arrayidx3874, align 4
  %sub3875 = sub nsw i32 %2445, %2447
  %add3876 = add nsw i32 %sub3875, 1
  br label %cond.end.3878

cond.false.3877:                                  ; preds = %cond.end.3856
  br label %cond.end.3878

cond.end.3878:                                    ; preds = %cond.false.3877, %cond.true.3870
  %cond3879 = phi i32 [ %add3876, %cond.true.3870 ], [ 0, %cond.false.3877 ]
  %mul3880 = mul nsw i32 %2439, %cond3879
  store i32 %mul3880, i32* %hypre__sy33861, align 4
  %2448 = load i32*, i32** %stride, align 8
  %arrayidx3882 = getelementptr inbounds i32, i32* %2448, i64 2
  %2449 = load i32, i32* %arrayidx3882, align 4
  %2450 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax3883 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2450, i32 0, i32 1
  %arrayidx3884 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3883, i32 0, i64 0
  %2451 = load i32, i32* %arrayidx3884, align 4
  %2452 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin3885 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2452, i32 0, i32 0
  %arrayidx3886 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3885, i32 0, i64 0
  %2453 = load i32, i32* %arrayidx3886, align 4
  %sub3887 = sub nsw i32 %2451, %2453
  %add3888 = add nsw i32 %sub3887, 1
  %cmp3889 = icmp slt i32 0, %add3888
  br i1 %cmp3889, label %cond.true.3890, label %cond.false.3897

cond.true.3890:                                   ; preds = %cond.end.3878
  %2454 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax3891 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2454, i32 0, i32 1
  %arrayidx3892 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3891, i32 0, i64 0
  %2455 = load i32, i32* %arrayidx3892, align 4
  %2456 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin3893 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2456, i32 0, i32 0
  %arrayidx3894 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3893, i32 0, i64 0
  %2457 = load i32, i32* %arrayidx3894, align 4
  %sub3895 = sub nsw i32 %2455, %2457
  %add3896 = add nsw i32 %sub3895, 1
  br label %cond.end.3898

cond.false.3897:                                  ; preds = %cond.end.3878
  br label %cond.end.3898

cond.end.3898:                                    ; preds = %cond.false.3897, %cond.true.3890
  %cond3899 = phi i32 [ %add3896, %cond.true.3890 ], [ 0, %cond.false.3897 ]
  %mul3900 = mul nsw i32 %2449, %cond3899
  %2458 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax3901 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2458, i32 0, i32 1
  %arrayidx3902 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3901, i32 0, i64 1
  %2459 = load i32, i32* %arrayidx3902, align 4
  %2460 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin3903 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2460, i32 0, i32 0
  %arrayidx3904 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3903, i32 0, i64 1
  %2461 = load i32, i32* %arrayidx3904, align 4
  %sub3905 = sub nsw i32 %2459, %2461
  %add3906 = add nsw i32 %sub3905, 1
  %cmp3907 = icmp slt i32 0, %add3906
  br i1 %cmp3907, label %cond.true.3908, label %cond.false.3915

cond.true.3908:                                   ; preds = %cond.end.3898
  %2462 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax3909 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2462, i32 0, i32 1
  %arrayidx3910 = getelementptr inbounds [3 x i32], [3 x i32]* %imax3909, i32 0, i64 1
  %2463 = load i32, i32* %arrayidx3910, align 4
  %2464 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin3911 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2464, i32 0, i32 0
  %arrayidx3912 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3911, i32 0, i64 1
  %2465 = load i32, i32* %arrayidx3912, align 4
  %sub3913 = sub nsw i32 %2463, %2465
  %add3914 = add nsw i32 %sub3913, 1
  br label %cond.end.3916

cond.false.3915:                                  ; preds = %cond.end.3898
  br label %cond.end.3916

cond.end.3916:                                    ; preds = %cond.false.3915, %cond.true.3908
  %cond3917 = phi i32 [ %add3914, %cond.true.3908 ], [ 0, %cond.false.3915 ]
  %mul3918 = mul nsw i32 %mul3900, %cond3917
  store i32 %mul3918, i32* %hypre__sz33881, align 4
  %arrayidx3920 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 0
  %2466 = load i32, i32* %arrayidx3920, align 4
  store i32 %2466, i32* %hypre__nx3919, align 4
  %arrayidx3922 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 1
  %2467 = load i32, i32* %arrayidx3922, align 4
  store i32 %2467, i32* %hypre__ny3921, align 4
  %arrayidx3924 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 2
  %2468 = load i32, i32* %arrayidx3924, align 4
  store i32 %2468, i32* %hypre__nz3923, align 4
  %2469 = load i32, i32* %hypre__nx3919, align 4
  store i32 %2469, i32* %hypre__mx3925, align 4
  %2470 = load i32, i32* %hypre__ny3921, align 4
  store i32 %2470, i32* %hypre__my3926, align 4
  %2471 = load i32, i32* %hypre__nz3923, align 4
  store i32 %2471, i32* %hypre__mz3927, align 4
  store i32 0, i32* %hypre__dir3928, align 4
  %2472 = load i32, i32* %hypre__nx3919, align 4
  store i32 %2472, i32* %hypre__max3929, align 4
  %2473 = load i32, i32* %hypre__ny3921, align 4
  %2474 = load i32, i32* %hypre__max3929, align 4
  %cmp3934 = icmp sgt i32 %2473, %2474
  br i1 %cmp3934, label %if.then.3935, label %if.end.3936

if.then.3935:                                     ; preds = %cond.end.3916
  store i32 1, i32* %hypre__dir3928, align 4
  %2475 = load i32, i32* %hypre__ny3921, align 4
  store i32 %2475, i32* %hypre__max3929, align 4
  br label %if.end.3936

if.end.3936:                                      ; preds = %if.then.3935, %cond.end.3916
  %2476 = load i32, i32* %hypre__nz3923, align 4
  %2477 = load i32, i32* %hypre__max3929, align 4
  %cmp3937 = icmp sgt i32 %2476, %2477
  br i1 %cmp3937, label %if.then.3938, label %if.end.3939

if.then.3938:                                     ; preds = %if.end.3936
  store i32 2, i32* %hypre__dir3928, align 4
  %2478 = load i32, i32* %hypre__nz3923, align 4
  store i32 %2478, i32* %hypre__max3929, align 4
  br label %if.end.3939

if.end.3939:                                      ; preds = %if.then.3938, %if.end.3936
  store i32 1, i32* %hypre__num_blocks3933, align 4
  %2479 = load i32, i32* %hypre__max3929, align 4
  %2480 = load i32, i32* %hypre__num_blocks3933, align 4
  %cmp3940 = icmp slt i32 %2479, %2480
  br i1 %cmp3940, label %if.then.3941, label %if.end.3942

if.then.3941:                                     ; preds = %if.end.3939
  %2481 = load i32, i32* %hypre__max3929, align 4
  store i32 %2481, i32* %hypre__num_blocks3933, align 4
  br label %if.end.3942

if.end.3942:                                      ; preds = %if.then.3941, %if.end.3939
  %2482 = load i32, i32* %hypre__num_blocks3933, align 4
  %cmp3943 = icmp sgt i32 %2482, 0
  br i1 %cmp3943, label %if.then.3944, label %if.end.3947

if.then.3944:                                     ; preds = %if.end.3942
  %2483 = load i32, i32* %hypre__max3929, align 4
  %2484 = load i32, i32* %hypre__num_blocks3933, align 4
  %div3945 = sdiv i32 %2483, %2484
  store i32 %div3945, i32* %hypre__div3930, align 4
  %2485 = load i32, i32* %hypre__max3929, align 4
  %2486 = load i32, i32* %hypre__num_blocks3933, align 4
  %rem3946 = srem i32 %2485, %2486
  store i32 %rem3946, i32* %hypre__mod3931, align 4
  br label %if.end.3947

if.end.3947:                                      ; preds = %if.then.3944, %if.end.3942
  store i32 0, i32* %hypre__block3932, align 4
  br label %for.cond.3948

for.cond.3948:                                    ; preds = %for.inc.4082, %if.end.3947
  %2487 = load i32, i32* %hypre__block3932, align 4
  %2488 = load i32, i32* %hypre__num_blocks3933, align 4
  %cmp3949 = icmp slt i32 %2487, %2488
  br i1 %cmp3949, label %for.body.3950, label %for.end.4084

for.body.3950:                                    ; preds = %for.cond.3948
  store i32 0, i32* %loopi, align 4
  store i32 0, i32* %loopj, align 4
  store i32 0, i32* %loopk, align 4
  %2489 = load i32, i32* %hypre__mx3925, align 4
  store i32 %2489, i32* %hypre__nx3919, align 4
  %2490 = load i32, i32* %hypre__my3926, align 4
  store i32 %2490, i32* %hypre__ny3921, align 4
  %2491 = load i32, i32* %hypre__mz3927, align 4
  store i32 %2491, i32* %hypre__nz3923, align 4
  %2492 = load i32, i32* %hypre__num_blocks3933, align 4
  %cmp3951 = icmp sgt i32 %2492, 1
  br i1 %cmp3951, label %if.then.3952, label %if.end.3994

if.then.3952:                                     ; preds = %for.body.3950
  %2493 = load i32, i32* %hypre__dir3928, align 4
  %cmp3953 = icmp eq i32 %2493, 0
  br i1 %cmp3953, label %if.then.3954, label %if.else.3965

if.then.3954:                                     ; preds = %if.then.3952
  %2494 = load i32, i32* %hypre__block3932, align 4
  %2495 = load i32, i32* %hypre__div3930, align 4
  %mul3955 = mul nsw i32 %2494, %2495
  %2496 = load i32, i32* %hypre__mod3931, align 4
  %2497 = load i32, i32* %hypre__block3932, align 4
  %cmp3956 = icmp slt i32 %2496, %2497
  br i1 %cmp3956, label %cond.true.3957, label %cond.false.3958

cond.true.3957:                                   ; preds = %if.then.3954
  %2498 = load i32, i32* %hypre__mod3931, align 4
  br label %cond.end.3959

cond.false.3958:                                  ; preds = %if.then.3954
  %2499 = load i32, i32* %hypre__block3932, align 4
  br label %cond.end.3959

cond.end.3959:                                    ; preds = %cond.false.3958, %cond.true.3957
  %cond3960 = phi i32 [ %2498, %cond.true.3957 ], [ %2499, %cond.false.3958 ]
  %add3961 = add nsw i32 %mul3955, %cond3960
  store i32 %add3961, i32* %loopi, align 4
  %2500 = load i32, i32* %hypre__div3930, align 4
  %2501 = load i32, i32* %hypre__mod3931, align 4
  %2502 = load i32, i32* %hypre__block3932, align 4
  %cmp3962 = icmp sgt i32 %2501, %2502
  %cond3963 = select i1 %cmp3962, i32 1, i32 0
  %add3964 = add nsw i32 %2500, %cond3963
  store i32 %add3964, i32* %hypre__nx3919, align 4
  br label %if.end.3993

if.else.3965:                                     ; preds = %if.then.3952
  %2503 = load i32, i32* %hypre__dir3928, align 4
  %cmp3966 = icmp eq i32 %2503, 1
  br i1 %cmp3966, label %if.then.3967, label %if.else.3978

if.then.3967:                                     ; preds = %if.else.3965
  %2504 = load i32, i32* %hypre__block3932, align 4
  %2505 = load i32, i32* %hypre__div3930, align 4
  %mul3968 = mul nsw i32 %2504, %2505
  %2506 = load i32, i32* %hypre__mod3931, align 4
  %2507 = load i32, i32* %hypre__block3932, align 4
  %cmp3969 = icmp slt i32 %2506, %2507
  br i1 %cmp3969, label %cond.true.3970, label %cond.false.3971

cond.true.3970:                                   ; preds = %if.then.3967
  %2508 = load i32, i32* %hypre__mod3931, align 4
  br label %cond.end.3972

cond.false.3971:                                  ; preds = %if.then.3967
  %2509 = load i32, i32* %hypre__block3932, align 4
  br label %cond.end.3972

cond.end.3972:                                    ; preds = %cond.false.3971, %cond.true.3970
  %cond3973 = phi i32 [ %2508, %cond.true.3970 ], [ %2509, %cond.false.3971 ]
  %add3974 = add nsw i32 %mul3968, %cond3973
  store i32 %add3974, i32* %loopj, align 4
  %2510 = load i32, i32* %hypre__div3930, align 4
  %2511 = load i32, i32* %hypre__mod3931, align 4
  %2512 = load i32, i32* %hypre__block3932, align 4
  %cmp3975 = icmp sgt i32 %2511, %2512
  %cond3976 = select i1 %cmp3975, i32 1, i32 0
  %add3977 = add nsw i32 %2510, %cond3976
  store i32 %add3977, i32* %hypre__ny3921, align 4
  br label %if.end.3992

if.else.3978:                                     ; preds = %if.else.3965
  %2513 = load i32, i32* %hypre__dir3928, align 4
  %cmp3979 = icmp eq i32 %2513, 2
  br i1 %cmp3979, label %if.then.3980, label %if.end.3991

if.then.3980:                                     ; preds = %if.else.3978
  %2514 = load i32, i32* %hypre__block3932, align 4
  %2515 = load i32, i32* %hypre__div3930, align 4
  %mul3981 = mul nsw i32 %2514, %2515
  %2516 = load i32, i32* %hypre__mod3931, align 4
  %2517 = load i32, i32* %hypre__block3932, align 4
  %cmp3982 = icmp slt i32 %2516, %2517
  br i1 %cmp3982, label %cond.true.3983, label %cond.false.3984

cond.true.3983:                                   ; preds = %if.then.3980
  %2518 = load i32, i32* %hypre__mod3931, align 4
  br label %cond.end.3985

cond.false.3984:                                  ; preds = %if.then.3980
  %2519 = load i32, i32* %hypre__block3932, align 4
  br label %cond.end.3985

cond.end.3985:                                    ; preds = %cond.false.3984, %cond.true.3983
  %cond3986 = phi i32 [ %2518, %cond.true.3983 ], [ %2519, %cond.false.3984 ]
  %add3987 = add nsw i32 %mul3981, %cond3986
  store i32 %add3987, i32* %loopk, align 4
  %2520 = load i32, i32* %hypre__div3930, align 4
  %2521 = load i32, i32* %hypre__mod3931, align 4
  %2522 = load i32, i32* %hypre__block3932, align 4
  %cmp3988 = icmp sgt i32 %2521, %2522
  %cond3989 = select i1 %cmp3988, i32 1, i32 0
  %add3990 = add nsw i32 %2520, %cond3989
  store i32 %add3990, i32* %hypre__nz3923, align 4
  br label %if.end.3991

if.end.3991:                                      ; preds = %cond.end.3985, %if.else.3978
  br label %if.end.3992

if.end.3992:                                      ; preds = %if.end.3991, %cond.end.3972
  br label %if.end.3993

if.end.3993:                                      ; preds = %if.end.3992, %cond.end.3959
  br label %if.end.3994

if.end.3994:                                      ; preds = %if.end.3993, %for.body.3950
  %2523 = load i32, i32* %hypre__i1start3586, align 4
  %2524 = load i32, i32* %loopi, align 4
  %2525 = load i32, i32* %hypre__sx13739, align 4
  %mul3995 = mul nsw i32 %2524, %2525
  %add3996 = add nsw i32 %2523, %mul3995
  %2526 = load i32, i32* %loopj, align 4
  %2527 = load i32, i32* %hypre__sy13741, align 4
  %mul3997 = mul nsw i32 %2526, %2527
  %add3998 = add nsw i32 %add3996, %mul3997
  %2528 = load i32, i32* %loopk, align 4
  %2529 = load i32, i32* %hypre__sz13761, align 4
  %mul3999 = mul nsw i32 %2528, %2529
  %add4000 = add nsw i32 %add3998, %mul3999
  store i32 %add4000, i32* %Ai, align 4
  %2530 = load i32, i32* %hypre__i2start3637, align 4
  %2531 = load i32, i32* %loopi, align 4
  %2532 = load i32, i32* %hypre__sx23799, align 4
  %mul4001 = mul nsw i32 %2531, %2532
  %add4002 = add nsw i32 %2530, %mul4001
  %2533 = load i32, i32* %loopj, align 4
  %2534 = load i32, i32* %hypre__sy23801, align 4
  %mul4003 = mul nsw i32 %2533, %2534
  %add4004 = add nsw i32 %add4002, %mul4003
  %2535 = load i32, i32* %loopk, align 4
  %2536 = load i32, i32* %hypre__sz23821, align 4
  %mul4005 = mul nsw i32 %2535, %2536
  %add4006 = add nsw i32 %add4004, %mul4005
  store i32 %add4006, i32* %xi, align 4
  %2537 = load i32, i32* %hypre__i3start3688, align 4
  %2538 = load i32, i32* %loopi, align 4
  %2539 = load i32, i32* %hypre__sx33859, align 4
  %mul4007 = mul nsw i32 %2538, %2539
  %add4008 = add nsw i32 %2537, %mul4007
  %2540 = load i32, i32* %loopj, align 4
  %2541 = load i32, i32* %hypre__sy33861, align 4
  %mul4009 = mul nsw i32 %2540, %2541
  %add4010 = add nsw i32 %add4008, %mul4009
  %2542 = load i32, i32* %loopk, align 4
  %2543 = load i32, i32* %hypre__sz33881, align 4
  %mul4011 = mul nsw i32 %2542, %2543
  %add4012 = add nsw i32 %add4010, %mul4011
  store i32 %add4012, i32* %yi, align 4
  store i32 0, i32* %loopk, align 4
  br label %for.cond.4013

for.cond.4013:                                    ; preds = %for.inc.4079, %if.end.3994
  %2544 = load i32, i32* %loopk, align 4
  %2545 = load i32, i32* %hypre__nz3923, align 4
  %cmp4014 = icmp slt i32 %2544, %2545
  br i1 %cmp4014, label %for.body.4015, label %for.end.4081

for.body.4015:                                    ; preds = %for.cond.4013
  store i32 0, i32* %loopj, align 4
  br label %for.cond.4016

for.cond.4016:                                    ; preds = %for.inc.4067, %for.body.4015
  %2546 = load i32, i32* %loopj, align 4
  %2547 = load i32, i32* %hypre__ny3921, align 4
  %cmp4017 = icmp slt i32 %2546, %2547
  br i1 %cmp4017, label %for.body.4018, label %for.end.4069

for.body.4018:                                    ; preds = %for.cond.4016
  store i32 0, i32* %loopi, align 4
  br label %for.cond.4019

for.cond.4019:                                    ; preds = %for.inc.4055, %for.body.4018
  %2548 = load i32, i32* %loopi, align 4
  %2549 = load i32, i32* %hypre__nx3919, align 4
  %cmp4020 = icmp slt i32 %2548, %2549
  br i1 %cmp4020, label %for.body.4021, label %for.end.4057

for.body.4021:                                    ; preds = %for.cond.4019
  %2550 = load i32, i32* %Ai, align 4
  %idxprom4022 = sext i32 %2550 to i64
  %2551 = load double*, double** %Ap0, align 8
  %arrayidx4023 = getelementptr inbounds double, double* %2551, i64 %idxprom4022
  %2552 = load double, double* %arrayidx4023, align 8
  %2553 = load i32, i32* %xi, align 4
  %2554 = load i32, i32* %xoff0, align 4
  %add4024 = add nsw i32 %2553, %2554
  %idxprom4025 = sext i32 %add4024 to i64
  %2555 = load double*, double** %xp, align 8
  %arrayidx4026 = getelementptr inbounds double, double* %2555, i64 %idxprom4025
  %2556 = load double, double* %arrayidx4026, align 8
  %mul4027 = fmul double %2552, %2556
  %2557 = load i32, i32* %Ai, align 4
  %idxprom4028 = sext i32 %2557 to i64
  %2558 = load double*, double** %Ap1, align 8
  %arrayidx4029 = getelementptr inbounds double, double* %2558, i64 %idxprom4028
  %2559 = load double, double* %arrayidx4029, align 8
  %2560 = load i32, i32* %xi, align 4
  %2561 = load i32, i32* %xoff1, align 4
  %add4030 = add nsw i32 %2560, %2561
  %idxprom4031 = sext i32 %add4030 to i64
  %2562 = load double*, double** %xp, align 8
  %arrayidx4032 = getelementptr inbounds double, double* %2562, i64 %idxprom4031
  %2563 = load double, double* %arrayidx4032, align 8
  %mul4033 = fmul double %2559, %2563
  %add4034 = fadd double %mul4027, %mul4033
  %2564 = load i32, i32* %Ai, align 4
  %idxprom4035 = sext i32 %2564 to i64
  %2565 = load double*, double** %Ap2, align 8
  %arrayidx4036 = getelementptr inbounds double, double* %2565, i64 %idxprom4035
  %2566 = load double, double* %arrayidx4036, align 8
  %2567 = load i32, i32* %xi, align 4
  %2568 = load i32, i32* %xoff2, align 4
  %add4037 = add nsw i32 %2567, %2568
  %idxprom4038 = sext i32 %add4037 to i64
  %2569 = load double*, double** %xp, align 8
  %arrayidx4039 = getelementptr inbounds double, double* %2569, i64 %idxprom4038
  %2570 = load double, double* %arrayidx4039, align 8
  %mul4040 = fmul double %2566, %2570
  %add4041 = fadd double %add4034, %mul4040
  %2571 = load i32, i32* %Ai, align 4
  %idxprom4042 = sext i32 %2571 to i64
  %2572 = load double*, double** %Ap3, align 8
  %arrayidx4043 = getelementptr inbounds double, double* %2572, i64 %idxprom4042
  %2573 = load double, double* %arrayidx4043, align 8
  %2574 = load i32, i32* %xi, align 4
  %2575 = load i32, i32* %xoff3, align 4
  %add4044 = add nsw i32 %2574, %2575
  %idxprom4045 = sext i32 %add4044 to i64
  %2576 = load double*, double** %xp, align 8
  %arrayidx4046 = getelementptr inbounds double, double* %2576, i64 %idxprom4045
  %2577 = load double, double* %arrayidx4046, align 8
  %mul4047 = fmul double %2573, %2577
  %add4048 = fadd double %add4041, %mul4047
  %2578 = load i32, i32* %yi, align 4
  %idxprom4049 = sext i32 %2578 to i64
  %2579 = load double*, double** %yp, align 8
  %arrayidx4050 = getelementptr inbounds double, double* %2579, i64 %idxprom4049
  %2580 = load double, double* %arrayidx4050, align 8
  %add4051 = fadd double %2580, %add4048
  store double %add4051, double* %arrayidx4050, align 8
  %2581 = load i32, i32* %hypre__sx13739, align 4
  %2582 = load i32, i32* %Ai, align 4
  %add4052 = add nsw i32 %2582, %2581
  store i32 %add4052, i32* %Ai, align 4
  %2583 = load i32, i32* %hypre__sx23799, align 4
  %2584 = load i32, i32* %xi, align 4
  %add4053 = add nsw i32 %2584, %2583
  store i32 %add4053, i32* %xi, align 4
  %2585 = load i32, i32* %hypre__sx33859, align 4
  %2586 = load i32, i32* %yi, align 4
  %add4054 = add nsw i32 %2586, %2585
  store i32 %add4054, i32* %yi, align 4
  br label %for.inc.4055

for.inc.4055:                                     ; preds = %for.body.4021
  %2587 = load i32, i32* %loopi, align 4
  %inc4056 = add nsw i32 %2587, 1
  store i32 %inc4056, i32* %loopi, align 4
  br label %for.cond.4019

for.end.4057:                                     ; preds = %for.cond.4019
  %2588 = load i32, i32* %hypre__sy13741, align 4
  %2589 = load i32, i32* %hypre__nx3919, align 4
  %2590 = load i32, i32* %hypre__sx13739, align 4
  %mul4058 = mul nsw i32 %2589, %2590
  %sub4059 = sub nsw i32 %2588, %mul4058
  %2591 = load i32, i32* %Ai, align 4
  %add4060 = add nsw i32 %2591, %sub4059
  store i32 %add4060, i32* %Ai, align 4
  %2592 = load i32, i32* %hypre__sy23801, align 4
  %2593 = load i32, i32* %hypre__nx3919, align 4
  %2594 = load i32, i32* %hypre__sx23799, align 4
  %mul4061 = mul nsw i32 %2593, %2594
  %sub4062 = sub nsw i32 %2592, %mul4061
  %2595 = load i32, i32* %xi, align 4
  %add4063 = add nsw i32 %2595, %sub4062
  store i32 %add4063, i32* %xi, align 4
  %2596 = load i32, i32* %hypre__sy33861, align 4
  %2597 = load i32, i32* %hypre__nx3919, align 4
  %2598 = load i32, i32* %hypre__sx33859, align 4
  %mul4064 = mul nsw i32 %2597, %2598
  %sub4065 = sub nsw i32 %2596, %mul4064
  %2599 = load i32, i32* %yi, align 4
  %add4066 = add nsw i32 %2599, %sub4065
  store i32 %add4066, i32* %yi, align 4
  br label %for.inc.4067

for.inc.4067:                                     ; preds = %for.end.4057
  %2600 = load i32, i32* %loopj, align 4
  %inc4068 = add nsw i32 %2600, 1
  store i32 %inc4068, i32* %loopj, align 4
  br label %for.cond.4016

for.end.4069:                                     ; preds = %for.cond.4016
  %2601 = load i32, i32* %hypre__sz13761, align 4
  %2602 = load i32, i32* %hypre__ny3921, align 4
  %2603 = load i32, i32* %hypre__sy13741, align 4
  %mul4070 = mul nsw i32 %2602, %2603
  %sub4071 = sub nsw i32 %2601, %mul4070
  %2604 = load i32, i32* %Ai, align 4
  %add4072 = add nsw i32 %2604, %sub4071
  store i32 %add4072, i32* %Ai, align 4
  %2605 = load i32, i32* %hypre__sz23821, align 4
  %2606 = load i32, i32* %hypre__ny3921, align 4
  %2607 = load i32, i32* %hypre__sy23801, align 4
  %mul4073 = mul nsw i32 %2606, %2607
  %sub4074 = sub nsw i32 %2605, %mul4073
  %2608 = load i32, i32* %xi, align 4
  %add4075 = add nsw i32 %2608, %sub4074
  store i32 %add4075, i32* %xi, align 4
  %2609 = load i32, i32* %hypre__sz33881, align 4
  %2610 = load i32, i32* %hypre__ny3921, align 4
  %2611 = load i32, i32* %hypre__sy33861, align 4
  %mul4076 = mul nsw i32 %2610, %2611
  %sub4077 = sub nsw i32 %2609, %mul4076
  %2612 = load i32, i32* %yi, align 4
  %add4078 = add nsw i32 %2612, %sub4077
  store i32 %add4078, i32* %yi, align 4
  br label %for.inc.4079

for.inc.4079:                                     ; preds = %for.end.4069
  %2613 = load i32, i32* %loopk, align 4
  %inc4080 = add nsw i32 %2613, 1
  store i32 %inc4080, i32* %loopk, align 4
  br label %for.cond.4013

for.end.4081:                                     ; preds = %for.cond.4013
  br label %for.inc.4082

for.inc.4082:                                     ; preds = %for.end.4081
  %2614 = load i32, i32* %hypre__block3932, align 4
  %inc4083 = add nsw i32 %2614, 1
  store i32 %inc4083, i32* %hypre__block3932, align 4
  br label %for.cond.3948

for.end.4084:                                     ; preds = %for.cond.3948
  br label %sw.epilog.5897

sw.bb.4085:                                       ; preds = %cond.end.751
  %2615 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data4086 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %2615, i32 0, i32 6
  %2616 = load double*, double** %data4086, align 8
  %2617 = load i32, i32* %si, align 4
  %add4087 = add nsw i32 %2617, 0
  %idxprom4088 = sext i32 %add4087 to i64
  %2618 = load i32, i32* %i, align 4
  %idxprom4089 = sext i32 %2618 to i64
  %2619 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data_indices4090 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %2619, i32 0, i32 9
  %2620 = load i32**, i32*** %data_indices4090, align 8
  %arrayidx4091 = getelementptr inbounds i32*, i32** %2620, i64 %idxprom4089
  %2621 = load i32*, i32** %arrayidx4091, align 8
  %arrayidx4092 = getelementptr inbounds i32, i32* %2621, i64 %idxprom4088
  %2622 = load i32, i32* %arrayidx4092, align 4
  %idx.ext4093 = sext i32 %2622 to i64
  %add.ptr4094 = getelementptr inbounds double, double* %2616, i64 %idx.ext4093
  store double* %add.ptr4094, double** %Ap0, align 8
  %2623 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data4095 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %2623, i32 0, i32 6
  %2624 = load double*, double** %data4095, align 8
  %2625 = load i32, i32* %si, align 4
  %add4096 = add nsw i32 %2625, 1
  %idxprom4097 = sext i32 %add4096 to i64
  %2626 = load i32, i32* %i, align 4
  %idxprom4098 = sext i32 %2626 to i64
  %2627 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data_indices4099 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %2627, i32 0, i32 9
  %2628 = load i32**, i32*** %data_indices4099, align 8
  %arrayidx4100 = getelementptr inbounds i32*, i32** %2628, i64 %idxprom4098
  %2629 = load i32*, i32** %arrayidx4100, align 8
  %arrayidx4101 = getelementptr inbounds i32, i32* %2629, i64 %idxprom4097
  %2630 = load i32, i32* %arrayidx4101, align 4
  %idx.ext4102 = sext i32 %2630 to i64
  %add.ptr4103 = getelementptr inbounds double, double* %2624, i64 %idx.ext4102
  store double* %add.ptr4103, double** %Ap1, align 8
  %2631 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data4104 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %2631, i32 0, i32 6
  %2632 = load double*, double** %data4104, align 8
  %2633 = load i32, i32* %si, align 4
  %add4105 = add nsw i32 %2633, 2
  %idxprom4106 = sext i32 %add4105 to i64
  %2634 = load i32, i32* %i, align 4
  %idxprom4107 = sext i32 %2634 to i64
  %2635 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data_indices4108 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %2635, i32 0, i32 9
  %2636 = load i32**, i32*** %data_indices4108, align 8
  %arrayidx4109 = getelementptr inbounds i32*, i32** %2636, i64 %idxprom4107
  %2637 = load i32*, i32** %arrayidx4109, align 8
  %arrayidx4110 = getelementptr inbounds i32, i32* %2637, i64 %idxprom4106
  %2638 = load i32, i32* %arrayidx4110, align 4
  %idx.ext4111 = sext i32 %2638 to i64
  %add.ptr4112 = getelementptr inbounds double, double* %2632, i64 %idx.ext4111
  store double* %add.ptr4112, double** %Ap2, align 8
  %2639 = load i32, i32* %si, align 4
  %add4113 = add nsw i32 %2639, 0
  %idxprom4114 = sext i32 %add4113 to i64
  %2640 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx4115 = getelementptr inbounds [3 x i32], [3 x i32]* %2640, i64 %idxprom4114
  %arrayidx4116 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx4115, i32 0, i64 0
  %2641 = load i32, i32* %arrayidx4116, align 4
  %2642 = load i32, i32* %si, align 4
  %add4117 = add nsw i32 %2642, 0
  %idxprom4118 = sext i32 %add4117 to i64
  %2643 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx4119 = getelementptr inbounds [3 x i32], [3 x i32]* %2643, i64 %idxprom4118
  %arrayidx4120 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx4119, i32 0, i64 1
  %2644 = load i32, i32* %arrayidx4120, align 4
  %2645 = load i32, i32* %si, align 4
  %add4121 = add nsw i32 %2645, 0
  %idxprom4122 = sext i32 %add4121 to i64
  %2646 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx4123 = getelementptr inbounds [3 x i32], [3 x i32]* %2646, i64 %idxprom4122
  %arrayidx4124 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx4123, i32 0, i64 2
  %2647 = load i32, i32* %arrayidx4124, align 4
  %2648 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax4125 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2648, i32 0, i32 1
  %arrayidx4126 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4125, i32 0, i64 1
  %2649 = load i32, i32* %arrayidx4126, align 4
  %2650 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin4127 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2650, i32 0, i32 0
  %arrayidx4128 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4127, i32 0, i64 1
  %2651 = load i32, i32* %arrayidx4128, align 4
  %sub4129 = sub nsw i32 %2649, %2651
  %add4130 = add nsw i32 %sub4129, 1
  %cmp4131 = icmp slt i32 0, %add4130
  br i1 %cmp4131, label %cond.true.4132, label %cond.false.4139

cond.true.4132:                                   ; preds = %sw.bb.4085
  %2652 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax4133 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2652, i32 0, i32 1
  %arrayidx4134 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4133, i32 0, i64 1
  %2653 = load i32, i32* %arrayidx4134, align 4
  %2654 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin4135 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2654, i32 0, i32 0
  %arrayidx4136 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4135, i32 0, i64 1
  %2655 = load i32, i32* %arrayidx4136, align 4
  %sub4137 = sub nsw i32 %2653, %2655
  %add4138 = add nsw i32 %sub4137, 1
  br label %cond.end.4140

cond.false.4139:                                  ; preds = %sw.bb.4085
  br label %cond.end.4140

cond.end.4140:                                    ; preds = %cond.false.4139, %cond.true.4132
  %cond4141 = phi i32 [ %add4138, %cond.true.4132 ], [ 0, %cond.false.4139 ]
  %mul4142 = mul nsw i32 %2647, %cond4141
  %add4143 = add nsw i32 %2644, %mul4142
  %2656 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax4144 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2656, i32 0, i32 1
  %arrayidx4145 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4144, i32 0, i64 0
  %2657 = load i32, i32* %arrayidx4145, align 4
  %2658 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin4146 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2658, i32 0, i32 0
  %arrayidx4147 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4146, i32 0, i64 0
  %2659 = load i32, i32* %arrayidx4147, align 4
  %sub4148 = sub nsw i32 %2657, %2659
  %add4149 = add nsw i32 %sub4148, 1
  %cmp4150 = icmp slt i32 0, %add4149
  br i1 %cmp4150, label %cond.true.4151, label %cond.false.4158

cond.true.4151:                                   ; preds = %cond.end.4140
  %2660 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax4152 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2660, i32 0, i32 1
  %arrayidx4153 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4152, i32 0, i64 0
  %2661 = load i32, i32* %arrayidx4153, align 4
  %2662 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin4154 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2662, i32 0, i32 0
  %arrayidx4155 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4154, i32 0, i64 0
  %2663 = load i32, i32* %arrayidx4155, align 4
  %sub4156 = sub nsw i32 %2661, %2663
  %add4157 = add nsw i32 %sub4156, 1
  br label %cond.end.4159

cond.false.4158:                                  ; preds = %cond.end.4140
  br label %cond.end.4159

cond.end.4159:                                    ; preds = %cond.false.4158, %cond.true.4151
  %cond4160 = phi i32 [ %add4157, %cond.true.4151 ], [ 0, %cond.false.4158 ]
  %mul4161 = mul nsw i32 %add4143, %cond4160
  %add4162 = add nsw i32 %2641, %mul4161
  store i32 %add4162, i32* %xoff0, align 4
  %2664 = load i32, i32* %si, align 4
  %add4163 = add nsw i32 %2664, 1
  %idxprom4164 = sext i32 %add4163 to i64
  %2665 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx4165 = getelementptr inbounds [3 x i32], [3 x i32]* %2665, i64 %idxprom4164
  %arrayidx4166 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx4165, i32 0, i64 0
  %2666 = load i32, i32* %arrayidx4166, align 4
  %2667 = load i32, i32* %si, align 4
  %add4167 = add nsw i32 %2667, 1
  %idxprom4168 = sext i32 %add4167 to i64
  %2668 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx4169 = getelementptr inbounds [3 x i32], [3 x i32]* %2668, i64 %idxprom4168
  %arrayidx4170 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx4169, i32 0, i64 1
  %2669 = load i32, i32* %arrayidx4170, align 4
  %2670 = load i32, i32* %si, align 4
  %add4171 = add nsw i32 %2670, 1
  %idxprom4172 = sext i32 %add4171 to i64
  %2671 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx4173 = getelementptr inbounds [3 x i32], [3 x i32]* %2671, i64 %idxprom4172
  %arrayidx4174 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx4173, i32 0, i64 2
  %2672 = load i32, i32* %arrayidx4174, align 4
  %2673 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax4175 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2673, i32 0, i32 1
  %arrayidx4176 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4175, i32 0, i64 1
  %2674 = load i32, i32* %arrayidx4176, align 4
  %2675 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin4177 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2675, i32 0, i32 0
  %arrayidx4178 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4177, i32 0, i64 1
  %2676 = load i32, i32* %arrayidx4178, align 4
  %sub4179 = sub nsw i32 %2674, %2676
  %add4180 = add nsw i32 %sub4179, 1
  %cmp4181 = icmp slt i32 0, %add4180
  br i1 %cmp4181, label %cond.true.4182, label %cond.false.4189

cond.true.4182:                                   ; preds = %cond.end.4159
  %2677 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax4183 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2677, i32 0, i32 1
  %arrayidx4184 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4183, i32 0, i64 1
  %2678 = load i32, i32* %arrayidx4184, align 4
  %2679 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin4185 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2679, i32 0, i32 0
  %arrayidx4186 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4185, i32 0, i64 1
  %2680 = load i32, i32* %arrayidx4186, align 4
  %sub4187 = sub nsw i32 %2678, %2680
  %add4188 = add nsw i32 %sub4187, 1
  br label %cond.end.4190

cond.false.4189:                                  ; preds = %cond.end.4159
  br label %cond.end.4190

cond.end.4190:                                    ; preds = %cond.false.4189, %cond.true.4182
  %cond4191 = phi i32 [ %add4188, %cond.true.4182 ], [ 0, %cond.false.4189 ]
  %mul4192 = mul nsw i32 %2672, %cond4191
  %add4193 = add nsw i32 %2669, %mul4192
  %2681 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax4194 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2681, i32 0, i32 1
  %arrayidx4195 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4194, i32 0, i64 0
  %2682 = load i32, i32* %arrayidx4195, align 4
  %2683 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin4196 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2683, i32 0, i32 0
  %arrayidx4197 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4196, i32 0, i64 0
  %2684 = load i32, i32* %arrayidx4197, align 4
  %sub4198 = sub nsw i32 %2682, %2684
  %add4199 = add nsw i32 %sub4198, 1
  %cmp4200 = icmp slt i32 0, %add4199
  br i1 %cmp4200, label %cond.true.4201, label %cond.false.4208

cond.true.4201:                                   ; preds = %cond.end.4190
  %2685 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax4202 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2685, i32 0, i32 1
  %arrayidx4203 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4202, i32 0, i64 0
  %2686 = load i32, i32* %arrayidx4203, align 4
  %2687 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin4204 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2687, i32 0, i32 0
  %arrayidx4205 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4204, i32 0, i64 0
  %2688 = load i32, i32* %arrayidx4205, align 4
  %sub4206 = sub nsw i32 %2686, %2688
  %add4207 = add nsw i32 %sub4206, 1
  br label %cond.end.4209

cond.false.4208:                                  ; preds = %cond.end.4190
  br label %cond.end.4209

cond.end.4209:                                    ; preds = %cond.false.4208, %cond.true.4201
  %cond4210 = phi i32 [ %add4207, %cond.true.4201 ], [ 0, %cond.false.4208 ]
  %mul4211 = mul nsw i32 %add4193, %cond4210
  %add4212 = add nsw i32 %2666, %mul4211
  store i32 %add4212, i32* %xoff1, align 4
  %2689 = load i32, i32* %si, align 4
  %add4213 = add nsw i32 %2689, 2
  %idxprom4214 = sext i32 %add4213 to i64
  %2690 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx4215 = getelementptr inbounds [3 x i32], [3 x i32]* %2690, i64 %idxprom4214
  %arrayidx4216 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx4215, i32 0, i64 0
  %2691 = load i32, i32* %arrayidx4216, align 4
  %2692 = load i32, i32* %si, align 4
  %add4217 = add nsw i32 %2692, 2
  %idxprom4218 = sext i32 %add4217 to i64
  %2693 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx4219 = getelementptr inbounds [3 x i32], [3 x i32]* %2693, i64 %idxprom4218
  %arrayidx4220 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx4219, i32 0, i64 1
  %2694 = load i32, i32* %arrayidx4220, align 4
  %2695 = load i32, i32* %si, align 4
  %add4221 = add nsw i32 %2695, 2
  %idxprom4222 = sext i32 %add4221 to i64
  %2696 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx4223 = getelementptr inbounds [3 x i32], [3 x i32]* %2696, i64 %idxprom4222
  %arrayidx4224 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx4223, i32 0, i64 2
  %2697 = load i32, i32* %arrayidx4224, align 4
  %2698 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax4225 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2698, i32 0, i32 1
  %arrayidx4226 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4225, i32 0, i64 1
  %2699 = load i32, i32* %arrayidx4226, align 4
  %2700 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin4227 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2700, i32 0, i32 0
  %arrayidx4228 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4227, i32 0, i64 1
  %2701 = load i32, i32* %arrayidx4228, align 4
  %sub4229 = sub nsw i32 %2699, %2701
  %add4230 = add nsw i32 %sub4229, 1
  %cmp4231 = icmp slt i32 0, %add4230
  br i1 %cmp4231, label %cond.true.4232, label %cond.false.4239

cond.true.4232:                                   ; preds = %cond.end.4209
  %2702 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax4233 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2702, i32 0, i32 1
  %arrayidx4234 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4233, i32 0, i64 1
  %2703 = load i32, i32* %arrayidx4234, align 4
  %2704 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin4235 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2704, i32 0, i32 0
  %arrayidx4236 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4235, i32 0, i64 1
  %2705 = load i32, i32* %arrayidx4236, align 4
  %sub4237 = sub nsw i32 %2703, %2705
  %add4238 = add nsw i32 %sub4237, 1
  br label %cond.end.4240

cond.false.4239:                                  ; preds = %cond.end.4209
  br label %cond.end.4240

cond.end.4240:                                    ; preds = %cond.false.4239, %cond.true.4232
  %cond4241 = phi i32 [ %add4238, %cond.true.4232 ], [ 0, %cond.false.4239 ]
  %mul4242 = mul nsw i32 %2697, %cond4241
  %add4243 = add nsw i32 %2694, %mul4242
  %2706 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax4244 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2706, i32 0, i32 1
  %arrayidx4245 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4244, i32 0, i64 0
  %2707 = load i32, i32* %arrayidx4245, align 4
  %2708 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin4246 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2708, i32 0, i32 0
  %arrayidx4247 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4246, i32 0, i64 0
  %2709 = load i32, i32* %arrayidx4247, align 4
  %sub4248 = sub nsw i32 %2707, %2709
  %add4249 = add nsw i32 %sub4248, 1
  %cmp4250 = icmp slt i32 0, %add4249
  br i1 %cmp4250, label %cond.true.4251, label %cond.false.4258

cond.true.4251:                                   ; preds = %cond.end.4240
  %2710 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax4252 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2710, i32 0, i32 1
  %arrayidx4253 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4252, i32 0, i64 0
  %2711 = load i32, i32* %arrayidx4253, align 4
  %2712 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin4254 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2712, i32 0, i32 0
  %arrayidx4255 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4254, i32 0, i64 0
  %2713 = load i32, i32* %arrayidx4255, align 4
  %sub4256 = sub nsw i32 %2711, %2713
  %add4257 = add nsw i32 %sub4256, 1
  br label %cond.end.4259

cond.false.4258:                                  ; preds = %cond.end.4240
  br label %cond.end.4259

cond.end.4259:                                    ; preds = %cond.false.4258, %cond.true.4251
  %cond4260 = phi i32 [ %add4257, %cond.true.4251 ], [ 0, %cond.false.4258 ]
  %mul4261 = mul nsw i32 %add4243, %cond4260
  %add4262 = add nsw i32 %2691, %mul4261
  store i32 %add4262, i32* %xoff2, align 4
  %2714 = load i32*, i32** %start, align 8
  %arrayidx4264 = getelementptr inbounds i32, i32* %2714, i64 0
  %2715 = load i32, i32* %arrayidx4264, align 4
  %2716 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin4265 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2716, i32 0, i32 0
  %arrayidx4266 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4265, i32 0, i64 0
  %2717 = load i32, i32* %arrayidx4266, align 4
  %sub4267 = sub nsw i32 %2715, %2717
  %2718 = load i32*, i32** %start, align 8
  %arrayidx4268 = getelementptr inbounds i32, i32* %2718, i64 1
  %2719 = load i32, i32* %arrayidx4268, align 4
  %2720 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin4269 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2720, i32 0, i32 0
  %arrayidx4270 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4269, i32 0, i64 1
  %2721 = load i32, i32* %arrayidx4270, align 4
  %sub4271 = sub nsw i32 %2719, %2721
  %2722 = load i32*, i32** %start, align 8
  %arrayidx4272 = getelementptr inbounds i32, i32* %2722, i64 2
  %2723 = load i32, i32* %arrayidx4272, align 4
  %2724 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin4273 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2724, i32 0, i32 0
  %arrayidx4274 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4273, i32 0, i64 2
  %2725 = load i32, i32* %arrayidx4274, align 4
  %sub4275 = sub nsw i32 %2723, %2725
  %2726 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax4276 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2726, i32 0, i32 1
  %arrayidx4277 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4276, i32 0, i64 1
  %2727 = load i32, i32* %arrayidx4277, align 4
  %2728 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin4278 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2728, i32 0, i32 0
  %arrayidx4279 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4278, i32 0, i64 1
  %2729 = load i32, i32* %arrayidx4279, align 4
  %sub4280 = sub nsw i32 %2727, %2729
  %add4281 = add nsw i32 %sub4280, 1
  %cmp4282 = icmp slt i32 0, %add4281
  br i1 %cmp4282, label %cond.true.4283, label %cond.false.4290

cond.true.4283:                                   ; preds = %cond.end.4259
  %2730 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax4284 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2730, i32 0, i32 1
  %arrayidx4285 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4284, i32 0, i64 1
  %2731 = load i32, i32* %arrayidx4285, align 4
  %2732 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin4286 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2732, i32 0, i32 0
  %arrayidx4287 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4286, i32 0, i64 1
  %2733 = load i32, i32* %arrayidx4287, align 4
  %sub4288 = sub nsw i32 %2731, %2733
  %add4289 = add nsw i32 %sub4288, 1
  br label %cond.end.4291

cond.false.4290:                                  ; preds = %cond.end.4259
  br label %cond.end.4291

cond.end.4291:                                    ; preds = %cond.false.4290, %cond.true.4283
  %cond4292 = phi i32 [ %add4289, %cond.true.4283 ], [ 0, %cond.false.4290 ]
  %mul4293 = mul nsw i32 %sub4275, %cond4292
  %add4294 = add nsw i32 %sub4271, %mul4293
  %2734 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax4295 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2734, i32 0, i32 1
  %arrayidx4296 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4295, i32 0, i64 0
  %2735 = load i32, i32* %arrayidx4296, align 4
  %2736 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin4297 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2736, i32 0, i32 0
  %arrayidx4298 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4297, i32 0, i64 0
  %2737 = load i32, i32* %arrayidx4298, align 4
  %sub4299 = sub nsw i32 %2735, %2737
  %add4300 = add nsw i32 %sub4299, 1
  %cmp4301 = icmp slt i32 0, %add4300
  br i1 %cmp4301, label %cond.true.4302, label %cond.false.4309

cond.true.4302:                                   ; preds = %cond.end.4291
  %2738 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax4303 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2738, i32 0, i32 1
  %arrayidx4304 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4303, i32 0, i64 0
  %2739 = load i32, i32* %arrayidx4304, align 4
  %2740 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin4305 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2740, i32 0, i32 0
  %arrayidx4306 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4305, i32 0, i64 0
  %2741 = load i32, i32* %arrayidx4306, align 4
  %sub4307 = sub nsw i32 %2739, %2741
  %add4308 = add nsw i32 %sub4307, 1
  br label %cond.end.4310

cond.false.4309:                                  ; preds = %cond.end.4291
  br label %cond.end.4310

cond.end.4310:                                    ; preds = %cond.false.4309, %cond.true.4302
  %cond4311 = phi i32 [ %add4308, %cond.true.4302 ], [ 0, %cond.false.4309 ]
  %mul4312 = mul nsw i32 %add4294, %cond4311
  %add4313 = add nsw i32 %sub4267, %mul4312
  store i32 %add4313, i32* %hypre__i1start4263, align 4
  %2742 = load i32*, i32** %start, align 8
  %arrayidx4315 = getelementptr inbounds i32, i32* %2742, i64 0
  %2743 = load i32, i32* %arrayidx4315, align 4
  %2744 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin4316 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2744, i32 0, i32 0
  %arrayidx4317 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4316, i32 0, i64 0
  %2745 = load i32, i32* %arrayidx4317, align 4
  %sub4318 = sub nsw i32 %2743, %2745
  %2746 = load i32*, i32** %start, align 8
  %arrayidx4319 = getelementptr inbounds i32, i32* %2746, i64 1
  %2747 = load i32, i32* %arrayidx4319, align 4
  %2748 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin4320 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2748, i32 0, i32 0
  %arrayidx4321 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4320, i32 0, i64 1
  %2749 = load i32, i32* %arrayidx4321, align 4
  %sub4322 = sub nsw i32 %2747, %2749
  %2750 = load i32*, i32** %start, align 8
  %arrayidx4323 = getelementptr inbounds i32, i32* %2750, i64 2
  %2751 = load i32, i32* %arrayidx4323, align 4
  %2752 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin4324 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2752, i32 0, i32 0
  %arrayidx4325 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4324, i32 0, i64 2
  %2753 = load i32, i32* %arrayidx4325, align 4
  %sub4326 = sub nsw i32 %2751, %2753
  %2754 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax4327 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2754, i32 0, i32 1
  %arrayidx4328 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4327, i32 0, i64 1
  %2755 = load i32, i32* %arrayidx4328, align 4
  %2756 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin4329 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2756, i32 0, i32 0
  %arrayidx4330 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4329, i32 0, i64 1
  %2757 = load i32, i32* %arrayidx4330, align 4
  %sub4331 = sub nsw i32 %2755, %2757
  %add4332 = add nsw i32 %sub4331, 1
  %cmp4333 = icmp slt i32 0, %add4332
  br i1 %cmp4333, label %cond.true.4334, label %cond.false.4341

cond.true.4334:                                   ; preds = %cond.end.4310
  %2758 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax4335 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2758, i32 0, i32 1
  %arrayidx4336 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4335, i32 0, i64 1
  %2759 = load i32, i32* %arrayidx4336, align 4
  %2760 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin4337 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2760, i32 0, i32 0
  %arrayidx4338 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4337, i32 0, i64 1
  %2761 = load i32, i32* %arrayidx4338, align 4
  %sub4339 = sub nsw i32 %2759, %2761
  %add4340 = add nsw i32 %sub4339, 1
  br label %cond.end.4342

cond.false.4341:                                  ; preds = %cond.end.4310
  br label %cond.end.4342

cond.end.4342:                                    ; preds = %cond.false.4341, %cond.true.4334
  %cond4343 = phi i32 [ %add4340, %cond.true.4334 ], [ 0, %cond.false.4341 ]
  %mul4344 = mul nsw i32 %sub4326, %cond4343
  %add4345 = add nsw i32 %sub4322, %mul4344
  %2762 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax4346 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2762, i32 0, i32 1
  %arrayidx4347 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4346, i32 0, i64 0
  %2763 = load i32, i32* %arrayidx4347, align 4
  %2764 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin4348 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2764, i32 0, i32 0
  %arrayidx4349 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4348, i32 0, i64 0
  %2765 = load i32, i32* %arrayidx4349, align 4
  %sub4350 = sub nsw i32 %2763, %2765
  %add4351 = add nsw i32 %sub4350, 1
  %cmp4352 = icmp slt i32 0, %add4351
  br i1 %cmp4352, label %cond.true.4353, label %cond.false.4360

cond.true.4353:                                   ; preds = %cond.end.4342
  %2766 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax4354 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2766, i32 0, i32 1
  %arrayidx4355 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4354, i32 0, i64 0
  %2767 = load i32, i32* %arrayidx4355, align 4
  %2768 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin4356 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2768, i32 0, i32 0
  %arrayidx4357 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4356, i32 0, i64 0
  %2769 = load i32, i32* %arrayidx4357, align 4
  %sub4358 = sub nsw i32 %2767, %2769
  %add4359 = add nsw i32 %sub4358, 1
  br label %cond.end.4361

cond.false.4360:                                  ; preds = %cond.end.4342
  br label %cond.end.4361

cond.end.4361:                                    ; preds = %cond.false.4360, %cond.true.4353
  %cond4362 = phi i32 [ %add4359, %cond.true.4353 ], [ 0, %cond.false.4360 ]
  %mul4363 = mul nsw i32 %add4345, %cond4362
  %add4364 = add nsw i32 %sub4318, %mul4363
  store i32 %add4364, i32* %hypre__i2start4314, align 4
  %2770 = load i32*, i32** %start, align 8
  %arrayidx4366 = getelementptr inbounds i32, i32* %2770, i64 0
  %2771 = load i32, i32* %arrayidx4366, align 4
  %2772 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin4367 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2772, i32 0, i32 0
  %arrayidx4368 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4367, i32 0, i64 0
  %2773 = load i32, i32* %arrayidx4368, align 4
  %sub4369 = sub nsw i32 %2771, %2773
  %2774 = load i32*, i32** %start, align 8
  %arrayidx4370 = getelementptr inbounds i32, i32* %2774, i64 1
  %2775 = load i32, i32* %arrayidx4370, align 4
  %2776 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin4371 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2776, i32 0, i32 0
  %arrayidx4372 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4371, i32 0, i64 1
  %2777 = load i32, i32* %arrayidx4372, align 4
  %sub4373 = sub nsw i32 %2775, %2777
  %2778 = load i32*, i32** %start, align 8
  %arrayidx4374 = getelementptr inbounds i32, i32* %2778, i64 2
  %2779 = load i32, i32* %arrayidx4374, align 4
  %2780 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin4375 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2780, i32 0, i32 0
  %arrayidx4376 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4375, i32 0, i64 2
  %2781 = load i32, i32* %arrayidx4376, align 4
  %sub4377 = sub nsw i32 %2779, %2781
  %2782 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax4378 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2782, i32 0, i32 1
  %arrayidx4379 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4378, i32 0, i64 1
  %2783 = load i32, i32* %arrayidx4379, align 4
  %2784 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin4380 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2784, i32 0, i32 0
  %arrayidx4381 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4380, i32 0, i64 1
  %2785 = load i32, i32* %arrayidx4381, align 4
  %sub4382 = sub nsw i32 %2783, %2785
  %add4383 = add nsw i32 %sub4382, 1
  %cmp4384 = icmp slt i32 0, %add4383
  br i1 %cmp4384, label %cond.true.4385, label %cond.false.4392

cond.true.4385:                                   ; preds = %cond.end.4361
  %2786 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax4386 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2786, i32 0, i32 1
  %arrayidx4387 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4386, i32 0, i64 1
  %2787 = load i32, i32* %arrayidx4387, align 4
  %2788 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin4388 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2788, i32 0, i32 0
  %arrayidx4389 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4388, i32 0, i64 1
  %2789 = load i32, i32* %arrayidx4389, align 4
  %sub4390 = sub nsw i32 %2787, %2789
  %add4391 = add nsw i32 %sub4390, 1
  br label %cond.end.4393

cond.false.4392:                                  ; preds = %cond.end.4361
  br label %cond.end.4393

cond.end.4393:                                    ; preds = %cond.false.4392, %cond.true.4385
  %cond4394 = phi i32 [ %add4391, %cond.true.4385 ], [ 0, %cond.false.4392 ]
  %mul4395 = mul nsw i32 %sub4377, %cond4394
  %add4396 = add nsw i32 %sub4373, %mul4395
  %2790 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax4397 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2790, i32 0, i32 1
  %arrayidx4398 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4397, i32 0, i64 0
  %2791 = load i32, i32* %arrayidx4398, align 4
  %2792 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin4399 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2792, i32 0, i32 0
  %arrayidx4400 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4399, i32 0, i64 0
  %2793 = load i32, i32* %arrayidx4400, align 4
  %sub4401 = sub nsw i32 %2791, %2793
  %add4402 = add nsw i32 %sub4401, 1
  %cmp4403 = icmp slt i32 0, %add4402
  br i1 %cmp4403, label %cond.true.4404, label %cond.false.4411

cond.true.4404:                                   ; preds = %cond.end.4393
  %2794 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax4405 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2794, i32 0, i32 1
  %arrayidx4406 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4405, i32 0, i64 0
  %2795 = load i32, i32* %arrayidx4406, align 4
  %2796 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin4407 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2796, i32 0, i32 0
  %arrayidx4408 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4407, i32 0, i64 0
  %2797 = load i32, i32* %arrayidx4408, align 4
  %sub4409 = sub nsw i32 %2795, %2797
  %add4410 = add nsw i32 %sub4409, 1
  br label %cond.end.4412

cond.false.4411:                                  ; preds = %cond.end.4393
  br label %cond.end.4412

cond.end.4412:                                    ; preds = %cond.false.4411, %cond.true.4404
  %cond4413 = phi i32 [ %add4410, %cond.true.4404 ], [ 0, %cond.false.4411 ]
  %mul4414 = mul nsw i32 %add4396, %cond4413
  %add4415 = add nsw i32 %sub4369, %mul4414
  store i32 %add4415, i32* %hypre__i3start4365, align 4
  %2798 = load i32*, i32** %stride, align 8
  %arrayidx4417 = getelementptr inbounds i32, i32* %2798, i64 0
  %2799 = load i32, i32* %arrayidx4417, align 4
  store i32 %2799, i32* %hypre__sx14416, align 4
  %2800 = load i32*, i32** %stride, align 8
  %arrayidx4419 = getelementptr inbounds i32, i32* %2800, i64 1
  %2801 = load i32, i32* %arrayidx4419, align 4
  %2802 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax4420 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2802, i32 0, i32 1
  %arrayidx4421 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4420, i32 0, i64 0
  %2803 = load i32, i32* %arrayidx4421, align 4
  %2804 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin4422 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2804, i32 0, i32 0
  %arrayidx4423 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4422, i32 0, i64 0
  %2805 = load i32, i32* %arrayidx4423, align 4
  %sub4424 = sub nsw i32 %2803, %2805
  %add4425 = add nsw i32 %sub4424, 1
  %cmp4426 = icmp slt i32 0, %add4425
  br i1 %cmp4426, label %cond.true.4427, label %cond.false.4434

cond.true.4427:                                   ; preds = %cond.end.4412
  %2806 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax4428 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2806, i32 0, i32 1
  %arrayidx4429 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4428, i32 0, i64 0
  %2807 = load i32, i32* %arrayidx4429, align 4
  %2808 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin4430 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2808, i32 0, i32 0
  %arrayidx4431 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4430, i32 0, i64 0
  %2809 = load i32, i32* %arrayidx4431, align 4
  %sub4432 = sub nsw i32 %2807, %2809
  %add4433 = add nsw i32 %sub4432, 1
  br label %cond.end.4435

cond.false.4434:                                  ; preds = %cond.end.4412
  br label %cond.end.4435

cond.end.4435:                                    ; preds = %cond.false.4434, %cond.true.4427
  %cond4436 = phi i32 [ %add4433, %cond.true.4427 ], [ 0, %cond.false.4434 ]
  %mul4437 = mul nsw i32 %2801, %cond4436
  store i32 %mul4437, i32* %hypre__sy14418, align 4
  %2810 = load i32*, i32** %stride, align 8
  %arrayidx4439 = getelementptr inbounds i32, i32* %2810, i64 2
  %2811 = load i32, i32* %arrayidx4439, align 4
  %2812 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax4440 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2812, i32 0, i32 1
  %arrayidx4441 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4440, i32 0, i64 0
  %2813 = load i32, i32* %arrayidx4441, align 4
  %2814 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin4442 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2814, i32 0, i32 0
  %arrayidx4443 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4442, i32 0, i64 0
  %2815 = load i32, i32* %arrayidx4443, align 4
  %sub4444 = sub nsw i32 %2813, %2815
  %add4445 = add nsw i32 %sub4444, 1
  %cmp4446 = icmp slt i32 0, %add4445
  br i1 %cmp4446, label %cond.true.4447, label %cond.false.4454

cond.true.4447:                                   ; preds = %cond.end.4435
  %2816 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax4448 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2816, i32 0, i32 1
  %arrayidx4449 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4448, i32 0, i64 0
  %2817 = load i32, i32* %arrayidx4449, align 4
  %2818 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin4450 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2818, i32 0, i32 0
  %arrayidx4451 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4450, i32 0, i64 0
  %2819 = load i32, i32* %arrayidx4451, align 4
  %sub4452 = sub nsw i32 %2817, %2819
  %add4453 = add nsw i32 %sub4452, 1
  br label %cond.end.4455

cond.false.4454:                                  ; preds = %cond.end.4435
  br label %cond.end.4455

cond.end.4455:                                    ; preds = %cond.false.4454, %cond.true.4447
  %cond4456 = phi i32 [ %add4453, %cond.true.4447 ], [ 0, %cond.false.4454 ]
  %mul4457 = mul nsw i32 %2811, %cond4456
  %2820 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax4458 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2820, i32 0, i32 1
  %arrayidx4459 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4458, i32 0, i64 1
  %2821 = load i32, i32* %arrayidx4459, align 4
  %2822 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin4460 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2822, i32 0, i32 0
  %arrayidx4461 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4460, i32 0, i64 1
  %2823 = load i32, i32* %arrayidx4461, align 4
  %sub4462 = sub nsw i32 %2821, %2823
  %add4463 = add nsw i32 %sub4462, 1
  %cmp4464 = icmp slt i32 0, %add4463
  br i1 %cmp4464, label %cond.true.4465, label %cond.false.4472

cond.true.4465:                                   ; preds = %cond.end.4455
  %2824 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax4466 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2824, i32 0, i32 1
  %arrayidx4467 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4466, i32 0, i64 1
  %2825 = load i32, i32* %arrayidx4467, align 4
  %2826 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin4468 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2826, i32 0, i32 0
  %arrayidx4469 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4468, i32 0, i64 1
  %2827 = load i32, i32* %arrayidx4469, align 4
  %sub4470 = sub nsw i32 %2825, %2827
  %add4471 = add nsw i32 %sub4470, 1
  br label %cond.end.4473

cond.false.4472:                                  ; preds = %cond.end.4455
  br label %cond.end.4473

cond.end.4473:                                    ; preds = %cond.false.4472, %cond.true.4465
  %cond4474 = phi i32 [ %add4471, %cond.true.4465 ], [ 0, %cond.false.4472 ]
  %mul4475 = mul nsw i32 %mul4457, %cond4474
  store i32 %mul4475, i32* %hypre__sz14438, align 4
  %2828 = load i32*, i32** %stride, align 8
  %arrayidx4477 = getelementptr inbounds i32, i32* %2828, i64 0
  %2829 = load i32, i32* %arrayidx4477, align 4
  store i32 %2829, i32* %hypre__sx24476, align 4
  %2830 = load i32*, i32** %stride, align 8
  %arrayidx4479 = getelementptr inbounds i32, i32* %2830, i64 1
  %2831 = load i32, i32* %arrayidx4479, align 4
  %2832 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax4480 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2832, i32 0, i32 1
  %arrayidx4481 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4480, i32 0, i64 0
  %2833 = load i32, i32* %arrayidx4481, align 4
  %2834 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin4482 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2834, i32 0, i32 0
  %arrayidx4483 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4482, i32 0, i64 0
  %2835 = load i32, i32* %arrayidx4483, align 4
  %sub4484 = sub nsw i32 %2833, %2835
  %add4485 = add nsw i32 %sub4484, 1
  %cmp4486 = icmp slt i32 0, %add4485
  br i1 %cmp4486, label %cond.true.4487, label %cond.false.4494

cond.true.4487:                                   ; preds = %cond.end.4473
  %2836 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax4488 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2836, i32 0, i32 1
  %arrayidx4489 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4488, i32 0, i64 0
  %2837 = load i32, i32* %arrayidx4489, align 4
  %2838 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin4490 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2838, i32 0, i32 0
  %arrayidx4491 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4490, i32 0, i64 0
  %2839 = load i32, i32* %arrayidx4491, align 4
  %sub4492 = sub nsw i32 %2837, %2839
  %add4493 = add nsw i32 %sub4492, 1
  br label %cond.end.4495

cond.false.4494:                                  ; preds = %cond.end.4473
  br label %cond.end.4495

cond.end.4495:                                    ; preds = %cond.false.4494, %cond.true.4487
  %cond4496 = phi i32 [ %add4493, %cond.true.4487 ], [ 0, %cond.false.4494 ]
  %mul4497 = mul nsw i32 %2831, %cond4496
  store i32 %mul4497, i32* %hypre__sy24478, align 4
  %2840 = load i32*, i32** %stride, align 8
  %arrayidx4499 = getelementptr inbounds i32, i32* %2840, i64 2
  %2841 = load i32, i32* %arrayidx4499, align 4
  %2842 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax4500 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2842, i32 0, i32 1
  %arrayidx4501 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4500, i32 0, i64 0
  %2843 = load i32, i32* %arrayidx4501, align 4
  %2844 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin4502 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2844, i32 0, i32 0
  %arrayidx4503 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4502, i32 0, i64 0
  %2845 = load i32, i32* %arrayidx4503, align 4
  %sub4504 = sub nsw i32 %2843, %2845
  %add4505 = add nsw i32 %sub4504, 1
  %cmp4506 = icmp slt i32 0, %add4505
  br i1 %cmp4506, label %cond.true.4507, label %cond.false.4514

cond.true.4507:                                   ; preds = %cond.end.4495
  %2846 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax4508 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2846, i32 0, i32 1
  %arrayidx4509 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4508, i32 0, i64 0
  %2847 = load i32, i32* %arrayidx4509, align 4
  %2848 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin4510 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2848, i32 0, i32 0
  %arrayidx4511 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4510, i32 0, i64 0
  %2849 = load i32, i32* %arrayidx4511, align 4
  %sub4512 = sub nsw i32 %2847, %2849
  %add4513 = add nsw i32 %sub4512, 1
  br label %cond.end.4515

cond.false.4514:                                  ; preds = %cond.end.4495
  br label %cond.end.4515

cond.end.4515:                                    ; preds = %cond.false.4514, %cond.true.4507
  %cond4516 = phi i32 [ %add4513, %cond.true.4507 ], [ 0, %cond.false.4514 ]
  %mul4517 = mul nsw i32 %2841, %cond4516
  %2850 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax4518 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2850, i32 0, i32 1
  %arrayidx4519 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4518, i32 0, i64 1
  %2851 = load i32, i32* %arrayidx4519, align 4
  %2852 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin4520 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2852, i32 0, i32 0
  %arrayidx4521 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4520, i32 0, i64 1
  %2853 = load i32, i32* %arrayidx4521, align 4
  %sub4522 = sub nsw i32 %2851, %2853
  %add4523 = add nsw i32 %sub4522, 1
  %cmp4524 = icmp slt i32 0, %add4523
  br i1 %cmp4524, label %cond.true.4525, label %cond.false.4532

cond.true.4525:                                   ; preds = %cond.end.4515
  %2854 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax4526 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2854, i32 0, i32 1
  %arrayidx4527 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4526, i32 0, i64 1
  %2855 = load i32, i32* %arrayidx4527, align 4
  %2856 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin4528 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2856, i32 0, i32 0
  %arrayidx4529 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4528, i32 0, i64 1
  %2857 = load i32, i32* %arrayidx4529, align 4
  %sub4530 = sub nsw i32 %2855, %2857
  %add4531 = add nsw i32 %sub4530, 1
  br label %cond.end.4533

cond.false.4532:                                  ; preds = %cond.end.4515
  br label %cond.end.4533

cond.end.4533:                                    ; preds = %cond.false.4532, %cond.true.4525
  %cond4534 = phi i32 [ %add4531, %cond.true.4525 ], [ 0, %cond.false.4532 ]
  %mul4535 = mul nsw i32 %mul4517, %cond4534
  store i32 %mul4535, i32* %hypre__sz24498, align 4
  %2858 = load i32*, i32** %stride, align 8
  %arrayidx4537 = getelementptr inbounds i32, i32* %2858, i64 0
  %2859 = load i32, i32* %arrayidx4537, align 4
  store i32 %2859, i32* %hypre__sx34536, align 4
  %2860 = load i32*, i32** %stride, align 8
  %arrayidx4539 = getelementptr inbounds i32, i32* %2860, i64 1
  %2861 = load i32, i32* %arrayidx4539, align 4
  %2862 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax4540 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2862, i32 0, i32 1
  %arrayidx4541 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4540, i32 0, i64 0
  %2863 = load i32, i32* %arrayidx4541, align 4
  %2864 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin4542 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2864, i32 0, i32 0
  %arrayidx4543 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4542, i32 0, i64 0
  %2865 = load i32, i32* %arrayidx4543, align 4
  %sub4544 = sub nsw i32 %2863, %2865
  %add4545 = add nsw i32 %sub4544, 1
  %cmp4546 = icmp slt i32 0, %add4545
  br i1 %cmp4546, label %cond.true.4547, label %cond.false.4554

cond.true.4547:                                   ; preds = %cond.end.4533
  %2866 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax4548 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2866, i32 0, i32 1
  %arrayidx4549 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4548, i32 0, i64 0
  %2867 = load i32, i32* %arrayidx4549, align 4
  %2868 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin4550 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2868, i32 0, i32 0
  %arrayidx4551 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4550, i32 0, i64 0
  %2869 = load i32, i32* %arrayidx4551, align 4
  %sub4552 = sub nsw i32 %2867, %2869
  %add4553 = add nsw i32 %sub4552, 1
  br label %cond.end.4555

cond.false.4554:                                  ; preds = %cond.end.4533
  br label %cond.end.4555

cond.end.4555:                                    ; preds = %cond.false.4554, %cond.true.4547
  %cond4556 = phi i32 [ %add4553, %cond.true.4547 ], [ 0, %cond.false.4554 ]
  %mul4557 = mul nsw i32 %2861, %cond4556
  store i32 %mul4557, i32* %hypre__sy34538, align 4
  %2870 = load i32*, i32** %stride, align 8
  %arrayidx4559 = getelementptr inbounds i32, i32* %2870, i64 2
  %2871 = load i32, i32* %arrayidx4559, align 4
  %2872 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax4560 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2872, i32 0, i32 1
  %arrayidx4561 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4560, i32 0, i64 0
  %2873 = load i32, i32* %arrayidx4561, align 4
  %2874 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin4562 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2874, i32 0, i32 0
  %arrayidx4563 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4562, i32 0, i64 0
  %2875 = load i32, i32* %arrayidx4563, align 4
  %sub4564 = sub nsw i32 %2873, %2875
  %add4565 = add nsw i32 %sub4564, 1
  %cmp4566 = icmp slt i32 0, %add4565
  br i1 %cmp4566, label %cond.true.4567, label %cond.false.4574

cond.true.4567:                                   ; preds = %cond.end.4555
  %2876 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax4568 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2876, i32 0, i32 1
  %arrayidx4569 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4568, i32 0, i64 0
  %2877 = load i32, i32* %arrayidx4569, align 4
  %2878 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin4570 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2878, i32 0, i32 0
  %arrayidx4571 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4570, i32 0, i64 0
  %2879 = load i32, i32* %arrayidx4571, align 4
  %sub4572 = sub nsw i32 %2877, %2879
  %add4573 = add nsw i32 %sub4572, 1
  br label %cond.end.4575

cond.false.4574:                                  ; preds = %cond.end.4555
  br label %cond.end.4575

cond.end.4575:                                    ; preds = %cond.false.4574, %cond.true.4567
  %cond4576 = phi i32 [ %add4573, %cond.true.4567 ], [ 0, %cond.false.4574 ]
  %mul4577 = mul nsw i32 %2871, %cond4576
  %2880 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax4578 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2880, i32 0, i32 1
  %arrayidx4579 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4578, i32 0, i64 1
  %2881 = load i32, i32* %arrayidx4579, align 4
  %2882 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin4580 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2882, i32 0, i32 0
  %arrayidx4581 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4580, i32 0, i64 1
  %2883 = load i32, i32* %arrayidx4581, align 4
  %sub4582 = sub nsw i32 %2881, %2883
  %add4583 = add nsw i32 %sub4582, 1
  %cmp4584 = icmp slt i32 0, %add4583
  br i1 %cmp4584, label %cond.true.4585, label %cond.false.4592

cond.true.4585:                                   ; preds = %cond.end.4575
  %2884 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax4586 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2884, i32 0, i32 1
  %arrayidx4587 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4586, i32 0, i64 1
  %2885 = load i32, i32* %arrayidx4587, align 4
  %2886 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin4588 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %2886, i32 0, i32 0
  %arrayidx4589 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4588, i32 0, i64 1
  %2887 = load i32, i32* %arrayidx4589, align 4
  %sub4590 = sub nsw i32 %2885, %2887
  %add4591 = add nsw i32 %sub4590, 1
  br label %cond.end.4593

cond.false.4592:                                  ; preds = %cond.end.4575
  br label %cond.end.4593

cond.end.4593:                                    ; preds = %cond.false.4592, %cond.true.4585
  %cond4594 = phi i32 [ %add4591, %cond.true.4585 ], [ 0, %cond.false.4592 ]
  %mul4595 = mul nsw i32 %mul4577, %cond4594
  store i32 %mul4595, i32* %hypre__sz34558, align 4
  %arrayidx4597 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 0
  %2888 = load i32, i32* %arrayidx4597, align 4
  store i32 %2888, i32* %hypre__nx4596, align 4
  %arrayidx4599 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 1
  %2889 = load i32, i32* %arrayidx4599, align 4
  store i32 %2889, i32* %hypre__ny4598, align 4
  %arrayidx4601 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 2
  %2890 = load i32, i32* %arrayidx4601, align 4
  store i32 %2890, i32* %hypre__nz4600, align 4
  %2891 = load i32, i32* %hypre__nx4596, align 4
  store i32 %2891, i32* %hypre__mx4602, align 4
  %2892 = load i32, i32* %hypre__ny4598, align 4
  store i32 %2892, i32* %hypre__my4603, align 4
  %2893 = load i32, i32* %hypre__nz4600, align 4
  store i32 %2893, i32* %hypre__mz4604, align 4
  store i32 0, i32* %hypre__dir4605, align 4
  %2894 = load i32, i32* %hypre__nx4596, align 4
  store i32 %2894, i32* %hypre__max4606, align 4
  %2895 = load i32, i32* %hypre__ny4598, align 4
  %2896 = load i32, i32* %hypre__max4606, align 4
  %cmp4611 = icmp sgt i32 %2895, %2896
  br i1 %cmp4611, label %if.then.4612, label %if.end.4613

if.then.4612:                                     ; preds = %cond.end.4593
  store i32 1, i32* %hypre__dir4605, align 4
  %2897 = load i32, i32* %hypre__ny4598, align 4
  store i32 %2897, i32* %hypre__max4606, align 4
  br label %if.end.4613

if.end.4613:                                      ; preds = %if.then.4612, %cond.end.4593
  %2898 = load i32, i32* %hypre__nz4600, align 4
  %2899 = load i32, i32* %hypre__max4606, align 4
  %cmp4614 = icmp sgt i32 %2898, %2899
  br i1 %cmp4614, label %if.then.4615, label %if.end.4616

if.then.4615:                                     ; preds = %if.end.4613
  store i32 2, i32* %hypre__dir4605, align 4
  %2900 = load i32, i32* %hypre__nz4600, align 4
  store i32 %2900, i32* %hypre__max4606, align 4
  br label %if.end.4616

if.end.4616:                                      ; preds = %if.then.4615, %if.end.4613
  store i32 1, i32* %hypre__num_blocks4610, align 4
  %2901 = load i32, i32* %hypre__max4606, align 4
  %2902 = load i32, i32* %hypre__num_blocks4610, align 4
  %cmp4617 = icmp slt i32 %2901, %2902
  br i1 %cmp4617, label %if.then.4618, label %if.end.4619

if.then.4618:                                     ; preds = %if.end.4616
  %2903 = load i32, i32* %hypre__max4606, align 4
  store i32 %2903, i32* %hypre__num_blocks4610, align 4
  br label %if.end.4619

if.end.4619:                                      ; preds = %if.then.4618, %if.end.4616
  %2904 = load i32, i32* %hypre__num_blocks4610, align 4
  %cmp4620 = icmp sgt i32 %2904, 0
  br i1 %cmp4620, label %if.then.4621, label %if.end.4624

if.then.4621:                                     ; preds = %if.end.4619
  %2905 = load i32, i32* %hypre__max4606, align 4
  %2906 = load i32, i32* %hypre__num_blocks4610, align 4
  %div4622 = sdiv i32 %2905, %2906
  store i32 %div4622, i32* %hypre__div4607, align 4
  %2907 = load i32, i32* %hypre__max4606, align 4
  %2908 = load i32, i32* %hypre__num_blocks4610, align 4
  %rem4623 = srem i32 %2907, %2908
  store i32 %rem4623, i32* %hypre__mod4608, align 4
  br label %if.end.4624

if.end.4624:                                      ; preds = %if.then.4621, %if.end.4619
  store i32 0, i32* %hypre__block4609, align 4
  br label %for.cond.4625

for.cond.4625:                                    ; preds = %for.inc.4752, %if.end.4624
  %2909 = load i32, i32* %hypre__block4609, align 4
  %2910 = load i32, i32* %hypre__num_blocks4610, align 4
  %cmp4626 = icmp slt i32 %2909, %2910
  br i1 %cmp4626, label %for.body.4627, label %for.end.4754

for.body.4627:                                    ; preds = %for.cond.4625
  store i32 0, i32* %loopi, align 4
  store i32 0, i32* %loopj, align 4
  store i32 0, i32* %loopk, align 4
  %2911 = load i32, i32* %hypre__mx4602, align 4
  store i32 %2911, i32* %hypre__nx4596, align 4
  %2912 = load i32, i32* %hypre__my4603, align 4
  store i32 %2912, i32* %hypre__ny4598, align 4
  %2913 = load i32, i32* %hypre__mz4604, align 4
  store i32 %2913, i32* %hypre__nz4600, align 4
  %2914 = load i32, i32* %hypre__num_blocks4610, align 4
  %cmp4628 = icmp sgt i32 %2914, 1
  br i1 %cmp4628, label %if.then.4629, label %if.end.4671

if.then.4629:                                     ; preds = %for.body.4627
  %2915 = load i32, i32* %hypre__dir4605, align 4
  %cmp4630 = icmp eq i32 %2915, 0
  br i1 %cmp4630, label %if.then.4631, label %if.else.4642

if.then.4631:                                     ; preds = %if.then.4629
  %2916 = load i32, i32* %hypre__block4609, align 4
  %2917 = load i32, i32* %hypre__div4607, align 4
  %mul4632 = mul nsw i32 %2916, %2917
  %2918 = load i32, i32* %hypre__mod4608, align 4
  %2919 = load i32, i32* %hypre__block4609, align 4
  %cmp4633 = icmp slt i32 %2918, %2919
  br i1 %cmp4633, label %cond.true.4634, label %cond.false.4635

cond.true.4634:                                   ; preds = %if.then.4631
  %2920 = load i32, i32* %hypre__mod4608, align 4
  br label %cond.end.4636

cond.false.4635:                                  ; preds = %if.then.4631
  %2921 = load i32, i32* %hypre__block4609, align 4
  br label %cond.end.4636

cond.end.4636:                                    ; preds = %cond.false.4635, %cond.true.4634
  %cond4637 = phi i32 [ %2920, %cond.true.4634 ], [ %2921, %cond.false.4635 ]
  %add4638 = add nsw i32 %mul4632, %cond4637
  store i32 %add4638, i32* %loopi, align 4
  %2922 = load i32, i32* %hypre__div4607, align 4
  %2923 = load i32, i32* %hypre__mod4608, align 4
  %2924 = load i32, i32* %hypre__block4609, align 4
  %cmp4639 = icmp sgt i32 %2923, %2924
  %cond4640 = select i1 %cmp4639, i32 1, i32 0
  %add4641 = add nsw i32 %2922, %cond4640
  store i32 %add4641, i32* %hypre__nx4596, align 4
  br label %if.end.4670

if.else.4642:                                     ; preds = %if.then.4629
  %2925 = load i32, i32* %hypre__dir4605, align 4
  %cmp4643 = icmp eq i32 %2925, 1
  br i1 %cmp4643, label %if.then.4644, label %if.else.4655

if.then.4644:                                     ; preds = %if.else.4642
  %2926 = load i32, i32* %hypre__block4609, align 4
  %2927 = load i32, i32* %hypre__div4607, align 4
  %mul4645 = mul nsw i32 %2926, %2927
  %2928 = load i32, i32* %hypre__mod4608, align 4
  %2929 = load i32, i32* %hypre__block4609, align 4
  %cmp4646 = icmp slt i32 %2928, %2929
  br i1 %cmp4646, label %cond.true.4647, label %cond.false.4648

cond.true.4647:                                   ; preds = %if.then.4644
  %2930 = load i32, i32* %hypre__mod4608, align 4
  br label %cond.end.4649

cond.false.4648:                                  ; preds = %if.then.4644
  %2931 = load i32, i32* %hypre__block4609, align 4
  br label %cond.end.4649

cond.end.4649:                                    ; preds = %cond.false.4648, %cond.true.4647
  %cond4650 = phi i32 [ %2930, %cond.true.4647 ], [ %2931, %cond.false.4648 ]
  %add4651 = add nsw i32 %mul4645, %cond4650
  store i32 %add4651, i32* %loopj, align 4
  %2932 = load i32, i32* %hypre__div4607, align 4
  %2933 = load i32, i32* %hypre__mod4608, align 4
  %2934 = load i32, i32* %hypre__block4609, align 4
  %cmp4652 = icmp sgt i32 %2933, %2934
  %cond4653 = select i1 %cmp4652, i32 1, i32 0
  %add4654 = add nsw i32 %2932, %cond4653
  store i32 %add4654, i32* %hypre__ny4598, align 4
  br label %if.end.4669

if.else.4655:                                     ; preds = %if.else.4642
  %2935 = load i32, i32* %hypre__dir4605, align 4
  %cmp4656 = icmp eq i32 %2935, 2
  br i1 %cmp4656, label %if.then.4657, label %if.end.4668

if.then.4657:                                     ; preds = %if.else.4655
  %2936 = load i32, i32* %hypre__block4609, align 4
  %2937 = load i32, i32* %hypre__div4607, align 4
  %mul4658 = mul nsw i32 %2936, %2937
  %2938 = load i32, i32* %hypre__mod4608, align 4
  %2939 = load i32, i32* %hypre__block4609, align 4
  %cmp4659 = icmp slt i32 %2938, %2939
  br i1 %cmp4659, label %cond.true.4660, label %cond.false.4661

cond.true.4660:                                   ; preds = %if.then.4657
  %2940 = load i32, i32* %hypre__mod4608, align 4
  br label %cond.end.4662

cond.false.4661:                                  ; preds = %if.then.4657
  %2941 = load i32, i32* %hypre__block4609, align 4
  br label %cond.end.4662

cond.end.4662:                                    ; preds = %cond.false.4661, %cond.true.4660
  %cond4663 = phi i32 [ %2940, %cond.true.4660 ], [ %2941, %cond.false.4661 ]
  %add4664 = add nsw i32 %mul4658, %cond4663
  store i32 %add4664, i32* %loopk, align 4
  %2942 = load i32, i32* %hypre__div4607, align 4
  %2943 = load i32, i32* %hypre__mod4608, align 4
  %2944 = load i32, i32* %hypre__block4609, align 4
  %cmp4665 = icmp sgt i32 %2943, %2944
  %cond4666 = select i1 %cmp4665, i32 1, i32 0
  %add4667 = add nsw i32 %2942, %cond4666
  store i32 %add4667, i32* %hypre__nz4600, align 4
  br label %if.end.4668

if.end.4668:                                      ; preds = %cond.end.4662, %if.else.4655
  br label %if.end.4669

if.end.4669:                                      ; preds = %if.end.4668, %cond.end.4649
  br label %if.end.4670

if.end.4670:                                      ; preds = %if.end.4669, %cond.end.4636
  br label %if.end.4671

if.end.4671:                                      ; preds = %if.end.4670, %for.body.4627
  %2945 = load i32, i32* %hypre__i1start4263, align 4
  %2946 = load i32, i32* %loopi, align 4
  %2947 = load i32, i32* %hypre__sx14416, align 4
  %mul4672 = mul nsw i32 %2946, %2947
  %add4673 = add nsw i32 %2945, %mul4672
  %2948 = load i32, i32* %loopj, align 4
  %2949 = load i32, i32* %hypre__sy14418, align 4
  %mul4674 = mul nsw i32 %2948, %2949
  %add4675 = add nsw i32 %add4673, %mul4674
  %2950 = load i32, i32* %loopk, align 4
  %2951 = load i32, i32* %hypre__sz14438, align 4
  %mul4676 = mul nsw i32 %2950, %2951
  %add4677 = add nsw i32 %add4675, %mul4676
  store i32 %add4677, i32* %Ai, align 4
  %2952 = load i32, i32* %hypre__i2start4314, align 4
  %2953 = load i32, i32* %loopi, align 4
  %2954 = load i32, i32* %hypre__sx24476, align 4
  %mul4678 = mul nsw i32 %2953, %2954
  %add4679 = add nsw i32 %2952, %mul4678
  %2955 = load i32, i32* %loopj, align 4
  %2956 = load i32, i32* %hypre__sy24478, align 4
  %mul4680 = mul nsw i32 %2955, %2956
  %add4681 = add nsw i32 %add4679, %mul4680
  %2957 = load i32, i32* %loopk, align 4
  %2958 = load i32, i32* %hypre__sz24498, align 4
  %mul4682 = mul nsw i32 %2957, %2958
  %add4683 = add nsw i32 %add4681, %mul4682
  store i32 %add4683, i32* %xi, align 4
  %2959 = load i32, i32* %hypre__i3start4365, align 4
  %2960 = load i32, i32* %loopi, align 4
  %2961 = load i32, i32* %hypre__sx34536, align 4
  %mul4684 = mul nsw i32 %2960, %2961
  %add4685 = add nsw i32 %2959, %mul4684
  %2962 = load i32, i32* %loopj, align 4
  %2963 = load i32, i32* %hypre__sy34538, align 4
  %mul4686 = mul nsw i32 %2962, %2963
  %add4687 = add nsw i32 %add4685, %mul4686
  %2964 = load i32, i32* %loopk, align 4
  %2965 = load i32, i32* %hypre__sz34558, align 4
  %mul4688 = mul nsw i32 %2964, %2965
  %add4689 = add nsw i32 %add4687, %mul4688
  store i32 %add4689, i32* %yi, align 4
  store i32 0, i32* %loopk, align 4
  br label %for.cond.4690

for.cond.4690:                                    ; preds = %for.inc.4749, %if.end.4671
  %2966 = load i32, i32* %loopk, align 4
  %2967 = load i32, i32* %hypre__nz4600, align 4
  %cmp4691 = icmp slt i32 %2966, %2967
  br i1 %cmp4691, label %for.body.4692, label %for.end.4751

for.body.4692:                                    ; preds = %for.cond.4690
  store i32 0, i32* %loopj, align 4
  br label %for.cond.4693

for.cond.4693:                                    ; preds = %for.inc.4737, %for.body.4692
  %2968 = load i32, i32* %loopj, align 4
  %2969 = load i32, i32* %hypre__ny4598, align 4
  %cmp4694 = icmp slt i32 %2968, %2969
  br i1 %cmp4694, label %for.body.4695, label %for.end.4739

for.body.4695:                                    ; preds = %for.cond.4693
  store i32 0, i32* %loopi, align 4
  br label %for.cond.4696

for.cond.4696:                                    ; preds = %for.inc.4725, %for.body.4695
  %2970 = load i32, i32* %loopi, align 4
  %2971 = load i32, i32* %hypre__nx4596, align 4
  %cmp4697 = icmp slt i32 %2970, %2971
  br i1 %cmp4697, label %for.body.4698, label %for.end.4727

for.body.4698:                                    ; preds = %for.cond.4696
  %2972 = load i32, i32* %Ai, align 4
  %idxprom4699 = sext i32 %2972 to i64
  %2973 = load double*, double** %Ap0, align 8
  %arrayidx4700 = getelementptr inbounds double, double* %2973, i64 %idxprom4699
  %2974 = load double, double* %arrayidx4700, align 8
  %2975 = load i32, i32* %xi, align 4
  %2976 = load i32, i32* %xoff0, align 4
  %add4701 = add nsw i32 %2975, %2976
  %idxprom4702 = sext i32 %add4701 to i64
  %2977 = load double*, double** %xp, align 8
  %arrayidx4703 = getelementptr inbounds double, double* %2977, i64 %idxprom4702
  %2978 = load double, double* %arrayidx4703, align 8
  %mul4704 = fmul double %2974, %2978
  %2979 = load i32, i32* %Ai, align 4
  %idxprom4705 = sext i32 %2979 to i64
  %2980 = load double*, double** %Ap1, align 8
  %arrayidx4706 = getelementptr inbounds double, double* %2980, i64 %idxprom4705
  %2981 = load double, double* %arrayidx4706, align 8
  %2982 = load i32, i32* %xi, align 4
  %2983 = load i32, i32* %xoff1, align 4
  %add4707 = add nsw i32 %2982, %2983
  %idxprom4708 = sext i32 %add4707 to i64
  %2984 = load double*, double** %xp, align 8
  %arrayidx4709 = getelementptr inbounds double, double* %2984, i64 %idxprom4708
  %2985 = load double, double* %arrayidx4709, align 8
  %mul4710 = fmul double %2981, %2985
  %add4711 = fadd double %mul4704, %mul4710
  %2986 = load i32, i32* %Ai, align 4
  %idxprom4712 = sext i32 %2986 to i64
  %2987 = load double*, double** %Ap2, align 8
  %arrayidx4713 = getelementptr inbounds double, double* %2987, i64 %idxprom4712
  %2988 = load double, double* %arrayidx4713, align 8
  %2989 = load i32, i32* %xi, align 4
  %2990 = load i32, i32* %xoff2, align 4
  %add4714 = add nsw i32 %2989, %2990
  %idxprom4715 = sext i32 %add4714 to i64
  %2991 = load double*, double** %xp, align 8
  %arrayidx4716 = getelementptr inbounds double, double* %2991, i64 %idxprom4715
  %2992 = load double, double* %arrayidx4716, align 8
  %mul4717 = fmul double %2988, %2992
  %add4718 = fadd double %add4711, %mul4717
  %2993 = load i32, i32* %yi, align 4
  %idxprom4719 = sext i32 %2993 to i64
  %2994 = load double*, double** %yp, align 8
  %arrayidx4720 = getelementptr inbounds double, double* %2994, i64 %idxprom4719
  %2995 = load double, double* %arrayidx4720, align 8
  %add4721 = fadd double %2995, %add4718
  store double %add4721, double* %arrayidx4720, align 8
  %2996 = load i32, i32* %hypre__sx14416, align 4
  %2997 = load i32, i32* %Ai, align 4
  %add4722 = add nsw i32 %2997, %2996
  store i32 %add4722, i32* %Ai, align 4
  %2998 = load i32, i32* %hypre__sx24476, align 4
  %2999 = load i32, i32* %xi, align 4
  %add4723 = add nsw i32 %2999, %2998
  store i32 %add4723, i32* %xi, align 4
  %3000 = load i32, i32* %hypre__sx34536, align 4
  %3001 = load i32, i32* %yi, align 4
  %add4724 = add nsw i32 %3001, %3000
  store i32 %add4724, i32* %yi, align 4
  br label %for.inc.4725

for.inc.4725:                                     ; preds = %for.body.4698
  %3002 = load i32, i32* %loopi, align 4
  %inc4726 = add nsw i32 %3002, 1
  store i32 %inc4726, i32* %loopi, align 4
  br label %for.cond.4696

for.end.4727:                                     ; preds = %for.cond.4696
  %3003 = load i32, i32* %hypre__sy14418, align 4
  %3004 = load i32, i32* %hypre__nx4596, align 4
  %3005 = load i32, i32* %hypre__sx14416, align 4
  %mul4728 = mul nsw i32 %3004, %3005
  %sub4729 = sub nsw i32 %3003, %mul4728
  %3006 = load i32, i32* %Ai, align 4
  %add4730 = add nsw i32 %3006, %sub4729
  store i32 %add4730, i32* %Ai, align 4
  %3007 = load i32, i32* %hypre__sy24478, align 4
  %3008 = load i32, i32* %hypre__nx4596, align 4
  %3009 = load i32, i32* %hypre__sx24476, align 4
  %mul4731 = mul nsw i32 %3008, %3009
  %sub4732 = sub nsw i32 %3007, %mul4731
  %3010 = load i32, i32* %xi, align 4
  %add4733 = add nsw i32 %3010, %sub4732
  store i32 %add4733, i32* %xi, align 4
  %3011 = load i32, i32* %hypre__sy34538, align 4
  %3012 = load i32, i32* %hypre__nx4596, align 4
  %3013 = load i32, i32* %hypre__sx34536, align 4
  %mul4734 = mul nsw i32 %3012, %3013
  %sub4735 = sub nsw i32 %3011, %mul4734
  %3014 = load i32, i32* %yi, align 4
  %add4736 = add nsw i32 %3014, %sub4735
  store i32 %add4736, i32* %yi, align 4
  br label %for.inc.4737

for.inc.4737:                                     ; preds = %for.end.4727
  %3015 = load i32, i32* %loopj, align 4
  %inc4738 = add nsw i32 %3015, 1
  store i32 %inc4738, i32* %loopj, align 4
  br label %for.cond.4693

for.end.4739:                                     ; preds = %for.cond.4693
  %3016 = load i32, i32* %hypre__sz14438, align 4
  %3017 = load i32, i32* %hypre__ny4598, align 4
  %3018 = load i32, i32* %hypre__sy14418, align 4
  %mul4740 = mul nsw i32 %3017, %3018
  %sub4741 = sub nsw i32 %3016, %mul4740
  %3019 = load i32, i32* %Ai, align 4
  %add4742 = add nsw i32 %3019, %sub4741
  store i32 %add4742, i32* %Ai, align 4
  %3020 = load i32, i32* %hypre__sz24498, align 4
  %3021 = load i32, i32* %hypre__ny4598, align 4
  %3022 = load i32, i32* %hypre__sy24478, align 4
  %mul4743 = mul nsw i32 %3021, %3022
  %sub4744 = sub nsw i32 %3020, %mul4743
  %3023 = load i32, i32* %xi, align 4
  %add4745 = add nsw i32 %3023, %sub4744
  store i32 %add4745, i32* %xi, align 4
  %3024 = load i32, i32* %hypre__sz34558, align 4
  %3025 = load i32, i32* %hypre__ny4598, align 4
  %3026 = load i32, i32* %hypre__sy34538, align 4
  %mul4746 = mul nsw i32 %3025, %3026
  %sub4747 = sub nsw i32 %3024, %mul4746
  %3027 = load i32, i32* %yi, align 4
  %add4748 = add nsw i32 %3027, %sub4747
  store i32 %add4748, i32* %yi, align 4
  br label %for.inc.4749

for.inc.4749:                                     ; preds = %for.end.4739
  %3028 = load i32, i32* %loopk, align 4
  %inc4750 = add nsw i32 %3028, 1
  store i32 %inc4750, i32* %loopk, align 4
  br label %for.cond.4690

for.end.4751:                                     ; preds = %for.cond.4690
  br label %for.inc.4752

for.inc.4752:                                     ; preds = %for.end.4751
  %3029 = load i32, i32* %hypre__block4609, align 4
  %inc4753 = add nsw i32 %3029, 1
  store i32 %inc4753, i32* %hypre__block4609, align 4
  br label %for.cond.4625

for.end.4754:                                     ; preds = %for.cond.4625
  br label %sw.epilog.5897

sw.bb.4755:                                       ; preds = %cond.end.751
  %3030 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data4756 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %3030, i32 0, i32 6
  %3031 = load double*, double** %data4756, align 8
  %3032 = load i32, i32* %si, align 4
  %add4757 = add nsw i32 %3032, 0
  %idxprom4758 = sext i32 %add4757 to i64
  %3033 = load i32, i32* %i, align 4
  %idxprom4759 = sext i32 %3033 to i64
  %3034 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data_indices4760 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %3034, i32 0, i32 9
  %3035 = load i32**, i32*** %data_indices4760, align 8
  %arrayidx4761 = getelementptr inbounds i32*, i32** %3035, i64 %idxprom4759
  %3036 = load i32*, i32** %arrayidx4761, align 8
  %arrayidx4762 = getelementptr inbounds i32, i32* %3036, i64 %idxprom4758
  %3037 = load i32, i32* %arrayidx4762, align 4
  %idx.ext4763 = sext i32 %3037 to i64
  %add.ptr4764 = getelementptr inbounds double, double* %3031, i64 %idx.ext4763
  store double* %add.ptr4764, double** %Ap0, align 8
  %3038 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data4765 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %3038, i32 0, i32 6
  %3039 = load double*, double** %data4765, align 8
  %3040 = load i32, i32* %si, align 4
  %add4766 = add nsw i32 %3040, 1
  %idxprom4767 = sext i32 %add4766 to i64
  %3041 = load i32, i32* %i, align 4
  %idxprom4768 = sext i32 %3041 to i64
  %3042 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data_indices4769 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %3042, i32 0, i32 9
  %3043 = load i32**, i32*** %data_indices4769, align 8
  %arrayidx4770 = getelementptr inbounds i32*, i32** %3043, i64 %idxprom4768
  %3044 = load i32*, i32** %arrayidx4770, align 8
  %arrayidx4771 = getelementptr inbounds i32, i32* %3044, i64 %idxprom4767
  %3045 = load i32, i32* %arrayidx4771, align 4
  %idx.ext4772 = sext i32 %3045 to i64
  %add.ptr4773 = getelementptr inbounds double, double* %3039, i64 %idx.ext4772
  store double* %add.ptr4773, double** %Ap1, align 8
  %3046 = load i32, i32* %si, align 4
  %add4774 = add nsw i32 %3046, 0
  %idxprom4775 = sext i32 %add4774 to i64
  %3047 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx4776 = getelementptr inbounds [3 x i32], [3 x i32]* %3047, i64 %idxprom4775
  %arrayidx4777 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx4776, i32 0, i64 0
  %3048 = load i32, i32* %arrayidx4777, align 4
  %3049 = load i32, i32* %si, align 4
  %add4778 = add nsw i32 %3049, 0
  %idxprom4779 = sext i32 %add4778 to i64
  %3050 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx4780 = getelementptr inbounds [3 x i32], [3 x i32]* %3050, i64 %idxprom4779
  %arrayidx4781 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx4780, i32 0, i64 1
  %3051 = load i32, i32* %arrayidx4781, align 4
  %3052 = load i32, i32* %si, align 4
  %add4782 = add nsw i32 %3052, 0
  %idxprom4783 = sext i32 %add4782 to i64
  %3053 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx4784 = getelementptr inbounds [3 x i32], [3 x i32]* %3053, i64 %idxprom4783
  %arrayidx4785 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx4784, i32 0, i64 2
  %3054 = load i32, i32* %arrayidx4785, align 4
  %3055 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax4786 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3055, i32 0, i32 1
  %arrayidx4787 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4786, i32 0, i64 1
  %3056 = load i32, i32* %arrayidx4787, align 4
  %3057 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin4788 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3057, i32 0, i32 0
  %arrayidx4789 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4788, i32 0, i64 1
  %3058 = load i32, i32* %arrayidx4789, align 4
  %sub4790 = sub nsw i32 %3056, %3058
  %add4791 = add nsw i32 %sub4790, 1
  %cmp4792 = icmp slt i32 0, %add4791
  br i1 %cmp4792, label %cond.true.4793, label %cond.false.4800

cond.true.4793:                                   ; preds = %sw.bb.4755
  %3059 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax4794 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3059, i32 0, i32 1
  %arrayidx4795 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4794, i32 0, i64 1
  %3060 = load i32, i32* %arrayidx4795, align 4
  %3061 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin4796 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3061, i32 0, i32 0
  %arrayidx4797 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4796, i32 0, i64 1
  %3062 = load i32, i32* %arrayidx4797, align 4
  %sub4798 = sub nsw i32 %3060, %3062
  %add4799 = add nsw i32 %sub4798, 1
  br label %cond.end.4801

cond.false.4800:                                  ; preds = %sw.bb.4755
  br label %cond.end.4801

cond.end.4801:                                    ; preds = %cond.false.4800, %cond.true.4793
  %cond4802 = phi i32 [ %add4799, %cond.true.4793 ], [ 0, %cond.false.4800 ]
  %mul4803 = mul nsw i32 %3054, %cond4802
  %add4804 = add nsw i32 %3051, %mul4803
  %3063 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax4805 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3063, i32 0, i32 1
  %arrayidx4806 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4805, i32 0, i64 0
  %3064 = load i32, i32* %arrayidx4806, align 4
  %3065 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin4807 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3065, i32 0, i32 0
  %arrayidx4808 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4807, i32 0, i64 0
  %3066 = load i32, i32* %arrayidx4808, align 4
  %sub4809 = sub nsw i32 %3064, %3066
  %add4810 = add nsw i32 %sub4809, 1
  %cmp4811 = icmp slt i32 0, %add4810
  br i1 %cmp4811, label %cond.true.4812, label %cond.false.4819

cond.true.4812:                                   ; preds = %cond.end.4801
  %3067 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax4813 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3067, i32 0, i32 1
  %arrayidx4814 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4813, i32 0, i64 0
  %3068 = load i32, i32* %arrayidx4814, align 4
  %3069 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin4815 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3069, i32 0, i32 0
  %arrayidx4816 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4815, i32 0, i64 0
  %3070 = load i32, i32* %arrayidx4816, align 4
  %sub4817 = sub nsw i32 %3068, %3070
  %add4818 = add nsw i32 %sub4817, 1
  br label %cond.end.4820

cond.false.4819:                                  ; preds = %cond.end.4801
  br label %cond.end.4820

cond.end.4820:                                    ; preds = %cond.false.4819, %cond.true.4812
  %cond4821 = phi i32 [ %add4818, %cond.true.4812 ], [ 0, %cond.false.4819 ]
  %mul4822 = mul nsw i32 %add4804, %cond4821
  %add4823 = add nsw i32 %3048, %mul4822
  store i32 %add4823, i32* %xoff0, align 4
  %3071 = load i32, i32* %si, align 4
  %add4824 = add nsw i32 %3071, 1
  %idxprom4825 = sext i32 %add4824 to i64
  %3072 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx4826 = getelementptr inbounds [3 x i32], [3 x i32]* %3072, i64 %idxprom4825
  %arrayidx4827 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx4826, i32 0, i64 0
  %3073 = load i32, i32* %arrayidx4827, align 4
  %3074 = load i32, i32* %si, align 4
  %add4828 = add nsw i32 %3074, 1
  %idxprom4829 = sext i32 %add4828 to i64
  %3075 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx4830 = getelementptr inbounds [3 x i32], [3 x i32]* %3075, i64 %idxprom4829
  %arrayidx4831 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx4830, i32 0, i64 1
  %3076 = load i32, i32* %arrayidx4831, align 4
  %3077 = load i32, i32* %si, align 4
  %add4832 = add nsw i32 %3077, 1
  %idxprom4833 = sext i32 %add4832 to i64
  %3078 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx4834 = getelementptr inbounds [3 x i32], [3 x i32]* %3078, i64 %idxprom4833
  %arrayidx4835 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx4834, i32 0, i64 2
  %3079 = load i32, i32* %arrayidx4835, align 4
  %3080 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax4836 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3080, i32 0, i32 1
  %arrayidx4837 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4836, i32 0, i64 1
  %3081 = load i32, i32* %arrayidx4837, align 4
  %3082 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin4838 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3082, i32 0, i32 0
  %arrayidx4839 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4838, i32 0, i64 1
  %3083 = load i32, i32* %arrayidx4839, align 4
  %sub4840 = sub nsw i32 %3081, %3083
  %add4841 = add nsw i32 %sub4840, 1
  %cmp4842 = icmp slt i32 0, %add4841
  br i1 %cmp4842, label %cond.true.4843, label %cond.false.4850

cond.true.4843:                                   ; preds = %cond.end.4820
  %3084 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax4844 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3084, i32 0, i32 1
  %arrayidx4845 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4844, i32 0, i64 1
  %3085 = load i32, i32* %arrayidx4845, align 4
  %3086 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin4846 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3086, i32 0, i32 0
  %arrayidx4847 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4846, i32 0, i64 1
  %3087 = load i32, i32* %arrayidx4847, align 4
  %sub4848 = sub nsw i32 %3085, %3087
  %add4849 = add nsw i32 %sub4848, 1
  br label %cond.end.4851

cond.false.4850:                                  ; preds = %cond.end.4820
  br label %cond.end.4851

cond.end.4851:                                    ; preds = %cond.false.4850, %cond.true.4843
  %cond4852 = phi i32 [ %add4849, %cond.true.4843 ], [ 0, %cond.false.4850 ]
  %mul4853 = mul nsw i32 %3079, %cond4852
  %add4854 = add nsw i32 %3076, %mul4853
  %3088 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax4855 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3088, i32 0, i32 1
  %arrayidx4856 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4855, i32 0, i64 0
  %3089 = load i32, i32* %arrayidx4856, align 4
  %3090 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin4857 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3090, i32 0, i32 0
  %arrayidx4858 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4857, i32 0, i64 0
  %3091 = load i32, i32* %arrayidx4858, align 4
  %sub4859 = sub nsw i32 %3089, %3091
  %add4860 = add nsw i32 %sub4859, 1
  %cmp4861 = icmp slt i32 0, %add4860
  br i1 %cmp4861, label %cond.true.4862, label %cond.false.4869

cond.true.4862:                                   ; preds = %cond.end.4851
  %3092 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax4863 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3092, i32 0, i32 1
  %arrayidx4864 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4863, i32 0, i64 0
  %3093 = load i32, i32* %arrayidx4864, align 4
  %3094 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin4865 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3094, i32 0, i32 0
  %arrayidx4866 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4865, i32 0, i64 0
  %3095 = load i32, i32* %arrayidx4866, align 4
  %sub4867 = sub nsw i32 %3093, %3095
  %add4868 = add nsw i32 %sub4867, 1
  br label %cond.end.4870

cond.false.4869:                                  ; preds = %cond.end.4851
  br label %cond.end.4870

cond.end.4870:                                    ; preds = %cond.false.4869, %cond.true.4862
  %cond4871 = phi i32 [ %add4868, %cond.true.4862 ], [ 0, %cond.false.4869 ]
  %mul4872 = mul nsw i32 %add4854, %cond4871
  %add4873 = add nsw i32 %3073, %mul4872
  store i32 %add4873, i32* %xoff1, align 4
  %3096 = load i32*, i32** %start, align 8
  %arrayidx4875 = getelementptr inbounds i32, i32* %3096, i64 0
  %3097 = load i32, i32* %arrayidx4875, align 4
  %3098 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin4876 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3098, i32 0, i32 0
  %arrayidx4877 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4876, i32 0, i64 0
  %3099 = load i32, i32* %arrayidx4877, align 4
  %sub4878 = sub nsw i32 %3097, %3099
  %3100 = load i32*, i32** %start, align 8
  %arrayidx4879 = getelementptr inbounds i32, i32* %3100, i64 1
  %3101 = load i32, i32* %arrayidx4879, align 4
  %3102 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin4880 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3102, i32 0, i32 0
  %arrayidx4881 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4880, i32 0, i64 1
  %3103 = load i32, i32* %arrayidx4881, align 4
  %sub4882 = sub nsw i32 %3101, %3103
  %3104 = load i32*, i32** %start, align 8
  %arrayidx4883 = getelementptr inbounds i32, i32* %3104, i64 2
  %3105 = load i32, i32* %arrayidx4883, align 4
  %3106 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin4884 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3106, i32 0, i32 0
  %arrayidx4885 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4884, i32 0, i64 2
  %3107 = load i32, i32* %arrayidx4885, align 4
  %sub4886 = sub nsw i32 %3105, %3107
  %3108 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax4887 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3108, i32 0, i32 1
  %arrayidx4888 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4887, i32 0, i64 1
  %3109 = load i32, i32* %arrayidx4888, align 4
  %3110 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin4889 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3110, i32 0, i32 0
  %arrayidx4890 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4889, i32 0, i64 1
  %3111 = load i32, i32* %arrayidx4890, align 4
  %sub4891 = sub nsw i32 %3109, %3111
  %add4892 = add nsw i32 %sub4891, 1
  %cmp4893 = icmp slt i32 0, %add4892
  br i1 %cmp4893, label %cond.true.4894, label %cond.false.4901

cond.true.4894:                                   ; preds = %cond.end.4870
  %3112 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax4895 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3112, i32 0, i32 1
  %arrayidx4896 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4895, i32 0, i64 1
  %3113 = load i32, i32* %arrayidx4896, align 4
  %3114 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin4897 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3114, i32 0, i32 0
  %arrayidx4898 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4897, i32 0, i64 1
  %3115 = load i32, i32* %arrayidx4898, align 4
  %sub4899 = sub nsw i32 %3113, %3115
  %add4900 = add nsw i32 %sub4899, 1
  br label %cond.end.4902

cond.false.4901:                                  ; preds = %cond.end.4870
  br label %cond.end.4902

cond.end.4902:                                    ; preds = %cond.false.4901, %cond.true.4894
  %cond4903 = phi i32 [ %add4900, %cond.true.4894 ], [ 0, %cond.false.4901 ]
  %mul4904 = mul nsw i32 %sub4886, %cond4903
  %add4905 = add nsw i32 %sub4882, %mul4904
  %3116 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax4906 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3116, i32 0, i32 1
  %arrayidx4907 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4906, i32 0, i64 0
  %3117 = load i32, i32* %arrayidx4907, align 4
  %3118 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin4908 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3118, i32 0, i32 0
  %arrayidx4909 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4908, i32 0, i64 0
  %3119 = load i32, i32* %arrayidx4909, align 4
  %sub4910 = sub nsw i32 %3117, %3119
  %add4911 = add nsw i32 %sub4910, 1
  %cmp4912 = icmp slt i32 0, %add4911
  br i1 %cmp4912, label %cond.true.4913, label %cond.false.4920

cond.true.4913:                                   ; preds = %cond.end.4902
  %3120 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax4914 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3120, i32 0, i32 1
  %arrayidx4915 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4914, i32 0, i64 0
  %3121 = load i32, i32* %arrayidx4915, align 4
  %3122 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin4916 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3122, i32 0, i32 0
  %arrayidx4917 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4916, i32 0, i64 0
  %3123 = load i32, i32* %arrayidx4917, align 4
  %sub4918 = sub nsw i32 %3121, %3123
  %add4919 = add nsw i32 %sub4918, 1
  br label %cond.end.4921

cond.false.4920:                                  ; preds = %cond.end.4902
  br label %cond.end.4921

cond.end.4921:                                    ; preds = %cond.false.4920, %cond.true.4913
  %cond4922 = phi i32 [ %add4919, %cond.true.4913 ], [ 0, %cond.false.4920 ]
  %mul4923 = mul nsw i32 %add4905, %cond4922
  %add4924 = add nsw i32 %sub4878, %mul4923
  store i32 %add4924, i32* %hypre__i1start4874, align 4
  %3124 = load i32*, i32** %start, align 8
  %arrayidx4926 = getelementptr inbounds i32, i32* %3124, i64 0
  %3125 = load i32, i32* %arrayidx4926, align 4
  %3126 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin4927 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3126, i32 0, i32 0
  %arrayidx4928 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4927, i32 0, i64 0
  %3127 = load i32, i32* %arrayidx4928, align 4
  %sub4929 = sub nsw i32 %3125, %3127
  %3128 = load i32*, i32** %start, align 8
  %arrayidx4930 = getelementptr inbounds i32, i32* %3128, i64 1
  %3129 = load i32, i32* %arrayidx4930, align 4
  %3130 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin4931 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3130, i32 0, i32 0
  %arrayidx4932 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4931, i32 0, i64 1
  %3131 = load i32, i32* %arrayidx4932, align 4
  %sub4933 = sub nsw i32 %3129, %3131
  %3132 = load i32*, i32** %start, align 8
  %arrayidx4934 = getelementptr inbounds i32, i32* %3132, i64 2
  %3133 = load i32, i32* %arrayidx4934, align 4
  %3134 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin4935 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3134, i32 0, i32 0
  %arrayidx4936 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4935, i32 0, i64 2
  %3135 = load i32, i32* %arrayidx4936, align 4
  %sub4937 = sub nsw i32 %3133, %3135
  %3136 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax4938 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3136, i32 0, i32 1
  %arrayidx4939 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4938, i32 0, i64 1
  %3137 = load i32, i32* %arrayidx4939, align 4
  %3138 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin4940 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3138, i32 0, i32 0
  %arrayidx4941 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4940, i32 0, i64 1
  %3139 = load i32, i32* %arrayidx4941, align 4
  %sub4942 = sub nsw i32 %3137, %3139
  %add4943 = add nsw i32 %sub4942, 1
  %cmp4944 = icmp slt i32 0, %add4943
  br i1 %cmp4944, label %cond.true.4945, label %cond.false.4952

cond.true.4945:                                   ; preds = %cond.end.4921
  %3140 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax4946 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3140, i32 0, i32 1
  %arrayidx4947 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4946, i32 0, i64 1
  %3141 = load i32, i32* %arrayidx4947, align 4
  %3142 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin4948 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3142, i32 0, i32 0
  %arrayidx4949 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4948, i32 0, i64 1
  %3143 = load i32, i32* %arrayidx4949, align 4
  %sub4950 = sub nsw i32 %3141, %3143
  %add4951 = add nsw i32 %sub4950, 1
  br label %cond.end.4953

cond.false.4952:                                  ; preds = %cond.end.4921
  br label %cond.end.4953

cond.end.4953:                                    ; preds = %cond.false.4952, %cond.true.4945
  %cond4954 = phi i32 [ %add4951, %cond.true.4945 ], [ 0, %cond.false.4952 ]
  %mul4955 = mul nsw i32 %sub4937, %cond4954
  %add4956 = add nsw i32 %sub4933, %mul4955
  %3144 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax4957 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3144, i32 0, i32 1
  %arrayidx4958 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4957, i32 0, i64 0
  %3145 = load i32, i32* %arrayidx4958, align 4
  %3146 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin4959 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3146, i32 0, i32 0
  %arrayidx4960 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4959, i32 0, i64 0
  %3147 = load i32, i32* %arrayidx4960, align 4
  %sub4961 = sub nsw i32 %3145, %3147
  %add4962 = add nsw i32 %sub4961, 1
  %cmp4963 = icmp slt i32 0, %add4962
  br i1 %cmp4963, label %cond.true.4964, label %cond.false.4971

cond.true.4964:                                   ; preds = %cond.end.4953
  %3148 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax4965 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3148, i32 0, i32 1
  %arrayidx4966 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4965, i32 0, i64 0
  %3149 = load i32, i32* %arrayidx4966, align 4
  %3150 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin4967 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3150, i32 0, i32 0
  %arrayidx4968 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4967, i32 0, i64 0
  %3151 = load i32, i32* %arrayidx4968, align 4
  %sub4969 = sub nsw i32 %3149, %3151
  %add4970 = add nsw i32 %sub4969, 1
  br label %cond.end.4972

cond.false.4971:                                  ; preds = %cond.end.4953
  br label %cond.end.4972

cond.end.4972:                                    ; preds = %cond.false.4971, %cond.true.4964
  %cond4973 = phi i32 [ %add4970, %cond.true.4964 ], [ 0, %cond.false.4971 ]
  %mul4974 = mul nsw i32 %add4956, %cond4973
  %add4975 = add nsw i32 %sub4929, %mul4974
  store i32 %add4975, i32* %hypre__i2start4925, align 4
  %3152 = load i32*, i32** %start, align 8
  %arrayidx4977 = getelementptr inbounds i32, i32* %3152, i64 0
  %3153 = load i32, i32* %arrayidx4977, align 4
  %3154 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin4978 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3154, i32 0, i32 0
  %arrayidx4979 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4978, i32 0, i64 0
  %3155 = load i32, i32* %arrayidx4979, align 4
  %sub4980 = sub nsw i32 %3153, %3155
  %3156 = load i32*, i32** %start, align 8
  %arrayidx4981 = getelementptr inbounds i32, i32* %3156, i64 1
  %3157 = load i32, i32* %arrayidx4981, align 4
  %3158 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin4982 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3158, i32 0, i32 0
  %arrayidx4983 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4982, i32 0, i64 1
  %3159 = load i32, i32* %arrayidx4983, align 4
  %sub4984 = sub nsw i32 %3157, %3159
  %3160 = load i32*, i32** %start, align 8
  %arrayidx4985 = getelementptr inbounds i32, i32* %3160, i64 2
  %3161 = load i32, i32* %arrayidx4985, align 4
  %3162 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin4986 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3162, i32 0, i32 0
  %arrayidx4987 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4986, i32 0, i64 2
  %3163 = load i32, i32* %arrayidx4987, align 4
  %sub4988 = sub nsw i32 %3161, %3163
  %3164 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax4989 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3164, i32 0, i32 1
  %arrayidx4990 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4989, i32 0, i64 1
  %3165 = load i32, i32* %arrayidx4990, align 4
  %3166 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin4991 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3166, i32 0, i32 0
  %arrayidx4992 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4991, i32 0, i64 1
  %3167 = load i32, i32* %arrayidx4992, align 4
  %sub4993 = sub nsw i32 %3165, %3167
  %add4994 = add nsw i32 %sub4993, 1
  %cmp4995 = icmp slt i32 0, %add4994
  br i1 %cmp4995, label %cond.true.4996, label %cond.false.5003

cond.true.4996:                                   ; preds = %cond.end.4972
  %3168 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax4997 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3168, i32 0, i32 1
  %arrayidx4998 = getelementptr inbounds [3 x i32], [3 x i32]* %imax4997, i32 0, i64 1
  %3169 = load i32, i32* %arrayidx4998, align 4
  %3170 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin4999 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3170, i32 0, i32 0
  %arrayidx5000 = getelementptr inbounds [3 x i32], [3 x i32]* %imin4999, i32 0, i64 1
  %3171 = load i32, i32* %arrayidx5000, align 4
  %sub5001 = sub nsw i32 %3169, %3171
  %add5002 = add nsw i32 %sub5001, 1
  br label %cond.end.5004

cond.false.5003:                                  ; preds = %cond.end.4972
  br label %cond.end.5004

cond.end.5004:                                    ; preds = %cond.false.5003, %cond.true.4996
  %cond5005 = phi i32 [ %add5002, %cond.true.4996 ], [ 0, %cond.false.5003 ]
  %mul5006 = mul nsw i32 %sub4988, %cond5005
  %add5007 = add nsw i32 %sub4984, %mul5006
  %3172 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax5008 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3172, i32 0, i32 1
  %arrayidx5009 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5008, i32 0, i64 0
  %3173 = load i32, i32* %arrayidx5009, align 4
  %3174 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin5010 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3174, i32 0, i32 0
  %arrayidx5011 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5010, i32 0, i64 0
  %3175 = load i32, i32* %arrayidx5011, align 4
  %sub5012 = sub nsw i32 %3173, %3175
  %add5013 = add nsw i32 %sub5012, 1
  %cmp5014 = icmp slt i32 0, %add5013
  br i1 %cmp5014, label %cond.true.5015, label %cond.false.5022

cond.true.5015:                                   ; preds = %cond.end.5004
  %3176 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax5016 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3176, i32 0, i32 1
  %arrayidx5017 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5016, i32 0, i64 0
  %3177 = load i32, i32* %arrayidx5017, align 4
  %3178 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin5018 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3178, i32 0, i32 0
  %arrayidx5019 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5018, i32 0, i64 0
  %3179 = load i32, i32* %arrayidx5019, align 4
  %sub5020 = sub nsw i32 %3177, %3179
  %add5021 = add nsw i32 %sub5020, 1
  br label %cond.end.5023

cond.false.5022:                                  ; preds = %cond.end.5004
  br label %cond.end.5023

cond.end.5023:                                    ; preds = %cond.false.5022, %cond.true.5015
  %cond5024 = phi i32 [ %add5021, %cond.true.5015 ], [ 0, %cond.false.5022 ]
  %mul5025 = mul nsw i32 %add5007, %cond5024
  %add5026 = add nsw i32 %sub4980, %mul5025
  store i32 %add5026, i32* %hypre__i3start4976, align 4
  %3180 = load i32*, i32** %stride, align 8
  %arrayidx5028 = getelementptr inbounds i32, i32* %3180, i64 0
  %3181 = load i32, i32* %arrayidx5028, align 4
  store i32 %3181, i32* %hypre__sx15027, align 4
  %3182 = load i32*, i32** %stride, align 8
  %arrayidx5030 = getelementptr inbounds i32, i32* %3182, i64 1
  %3183 = load i32, i32* %arrayidx5030, align 4
  %3184 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax5031 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3184, i32 0, i32 1
  %arrayidx5032 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5031, i32 0, i64 0
  %3185 = load i32, i32* %arrayidx5032, align 4
  %3186 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin5033 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3186, i32 0, i32 0
  %arrayidx5034 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5033, i32 0, i64 0
  %3187 = load i32, i32* %arrayidx5034, align 4
  %sub5035 = sub nsw i32 %3185, %3187
  %add5036 = add nsw i32 %sub5035, 1
  %cmp5037 = icmp slt i32 0, %add5036
  br i1 %cmp5037, label %cond.true.5038, label %cond.false.5045

cond.true.5038:                                   ; preds = %cond.end.5023
  %3188 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax5039 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3188, i32 0, i32 1
  %arrayidx5040 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5039, i32 0, i64 0
  %3189 = load i32, i32* %arrayidx5040, align 4
  %3190 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin5041 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3190, i32 0, i32 0
  %arrayidx5042 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5041, i32 0, i64 0
  %3191 = load i32, i32* %arrayidx5042, align 4
  %sub5043 = sub nsw i32 %3189, %3191
  %add5044 = add nsw i32 %sub5043, 1
  br label %cond.end.5046

cond.false.5045:                                  ; preds = %cond.end.5023
  br label %cond.end.5046

cond.end.5046:                                    ; preds = %cond.false.5045, %cond.true.5038
  %cond5047 = phi i32 [ %add5044, %cond.true.5038 ], [ 0, %cond.false.5045 ]
  %mul5048 = mul nsw i32 %3183, %cond5047
  store i32 %mul5048, i32* %hypre__sy15029, align 4
  %3192 = load i32*, i32** %stride, align 8
  %arrayidx5050 = getelementptr inbounds i32, i32* %3192, i64 2
  %3193 = load i32, i32* %arrayidx5050, align 4
  %3194 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax5051 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3194, i32 0, i32 1
  %arrayidx5052 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5051, i32 0, i64 0
  %3195 = load i32, i32* %arrayidx5052, align 4
  %3196 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin5053 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3196, i32 0, i32 0
  %arrayidx5054 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5053, i32 0, i64 0
  %3197 = load i32, i32* %arrayidx5054, align 4
  %sub5055 = sub nsw i32 %3195, %3197
  %add5056 = add nsw i32 %sub5055, 1
  %cmp5057 = icmp slt i32 0, %add5056
  br i1 %cmp5057, label %cond.true.5058, label %cond.false.5065

cond.true.5058:                                   ; preds = %cond.end.5046
  %3198 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax5059 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3198, i32 0, i32 1
  %arrayidx5060 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5059, i32 0, i64 0
  %3199 = load i32, i32* %arrayidx5060, align 4
  %3200 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin5061 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3200, i32 0, i32 0
  %arrayidx5062 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5061, i32 0, i64 0
  %3201 = load i32, i32* %arrayidx5062, align 4
  %sub5063 = sub nsw i32 %3199, %3201
  %add5064 = add nsw i32 %sub5063, 1
  br label %cond.end.5066

cond.false.5065:                                  ; preds = %cond.end.5046
  br label %cond.end.5066

cond.end.5066:                                    ; preds = %cond.false.5065, %cond.true.5058
  %cond5067 = phi i32 [ %add5064, %cond.true.5058 ], [ 0, %cond.false.5065 ]
  %mul5068 = mul nsw i32 %3193, %cond5067
  %3202 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax5069 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3202, i32 0, i32 1
  %arrayidx5070 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5069, i32 0, i64 1
  %3203 = load i32, i32* %arrayidx5070, align 4
  %3204 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin5071 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3204, i32 0, i32 0
  %arrayidx5072 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5071, i32 0, i64 1
  %3205 = load i32, i32* %arrayidx5072, align 4
  %sub5073 = sub nsw i32 %3203, %3205
  %add5074 = add nsw i32 %sub5073, 1
  %cmp5075 = icmp slt i32 0, %add5074
  br i1 %cmp5075, label %cond.true.5076, label %cond.false.5083

cond.true.5076:                                   ; preds = %cond.end.5066
  %3206 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax5077 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3206, i32 0, i32 1
  %arrayidx5078 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5077, i32 0, i64 1
  %3207 = load i32, i32* %arrayidx5078, align 4
  %3208 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin5079 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3208, i32 0, i32 0
  %arrayidx5080 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5079, i32 0, i64 1
  %3209 = load i32, i32* %arrayidx5080, align 4
  %sub5081 = sub nsw i32 %3207, %3209
  %add5082 = add nsw i32 %sub5081, 1
  br label %cond.end.5084

cond.false.5083:                                  ; preds = %cond.end.5066
  br label %cond.end.5084

cond.end.5084:                                    ; preds = %cond.false.5083, %cond.true.5076
  %cond5085 = phi i32 [ %add5082, %cond.true.5076 ], [ 0, %cond.false.5083 ]
  %mul5086 = mul nsw i32 %mul5068, %cond5085
  store i32 %mul5086, i32* %hypre__sz15049, align 4
  %3210 = load i32*, i32** %stride, align 8
  %arrayidx5088 = getelementptr inbounds i32, i32* %3210, i64 0
  %3211 = load i32, i32* %arrayidx5088, align 4
  store i32 %3211, i32* %hypre__sx25087, align 4
  %3212 = load i32*, i32** %stride, align 8
  %arrayidx5090 = getelementptr inbounds i32, i32* %3212, i64 1
  %3213 = load i32, i32* %arrayidx5090, align 4
  %3214 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax5091 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3214, i32 0, i32 1
  %arrayidx5092 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5091, i32 0, i64 0
  %3215 = load i32, i32* %arrayidx5092, align 4
  %3216 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin5093 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3216, i32 0, i32 0
  %arrayidx5094 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5093, i32 0, i64 0
  %3217 = load i32, i32* %arrayidx5094, align 4
  %sub5095 = sub nsw i32 %3215, %3217
  %add5096 = add nsw i32 %sub5095, 1
  %cmp5097 = icmp slt i32 0, %add5096
  br i1 %cmp5097, label %cond.true.5098, label %cond.false.5105

cond.true.5098:                                   ; preds = %cond.end.5084
  %3218 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax5099 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3218, i32 0, i32 1
  %arrayidx5100 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5099, i32 0, i64 0
  %3219 = load i32, i32* %arrayidx5100, align 4
  %3220 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin5101 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3220, i32 0, i32 0
  %arrayidx5102 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5101, i32 0, i64 0
  %3221 = load i32, i32* %arrayidx5102, align 4
  %sub5103 = sub nsw i32 %3219, %3221
  %add5104 = add nsw i32 %sub5103, 1
  br label %cond.end.5106

cond.false.5105:                                  ; preds = %cond.end.5084
  br label %cond.end.5106

cond.end.5106:                                    ; preds = %cond.false.5105, %cond.true.5098
  %cond5107 = phi i32 [ %add5104, %cond.true.5098 ], [ 0, %cond.false.5105 ]
  %mul5108 = mul nsw i32 %3213, %cond5107
  store i32 %mul5108, i32* %hypre__sy25089, align 4
  %3222 = load i32*, i32** %stride, align 8
  %arrayidx5110 = getelementptr inbounds i32, i32* %3222, i64 2
  %3223 = load i32, i32* %arrayidx5110, align 4
  %3224 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax5111 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3224, i32 0, i32 1
  %arrayidx5112 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5111, i32 0, i64 0
  %3225 = load i32, i32* %arrayidx5112, align 4
  %3226 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin5113 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3226, i32 0, i32 0
  %arrayidx5114 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5113, i32 0, i64 0
  %3227 = load i32, i32* %arrayidx5114, align 4
  %sub5115 = sub nsw i32 %3225, %3227
  %add5116 = add nsw i32 %sub5115, 1
  %cmp5117 = icmp slt i32 0, %add5116
  br i1 %cmp5117, label %cond.true.5118, label %cond.false.5125

cond.true.5118:                                   ; preds = %cond.end.5106
  %3228 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax5119 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3228, i32 0, i32 1
  %arrayidx5120 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5119, i32 0, i64 0
  %3229 = load i32, i32* %arrayidx5120, align 4
  %3230 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin5121 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3230, i32 0, i32 0
  %arrayidx5122 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5121, i32 0, i64 0
  %3231 = load i32, i32* %arrayidx5122, align 4
  %sub5123 = sub nsw i32 %3229, %3231
  %add5124 = add nsw i32 %sub5123, 1
  br label %cond.end.5126

cond.false.5125:                                  ; preds = %cond.end.5106
  br label %cond.end.5126

cond.end.5126:                                    ; preds = %cond.false.5125, %cond.true.5118
  %cond5127 = phi i32 [ %add5124, %cond.true.5118 ], [ 0, %cond.false.5125 ]
  %mul5128 = mul nsw i32 %3223, %cond5127
  %3232 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax5129 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3232, i32 0, i32 1
  %arrayidx5130 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5129, i32 0, i64 1
  %3233 = load i32, i32* %arrayidx5130, align 4
  %3234 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin5131 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3234, i32 0, i32 0
  %arrayidx5132 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5131, i32 0, i64 1
  %3235 = load i32, i32* %arrayidx5132, align 4
  %sub5133 = sub nsw i32 %3233, %3235
  %add5134 = add nsw i32 %sub5133, 1
  %cmp5135 = icmp slt i32 0, %add5134
  br i1 %cmp5135, label %cond.true.5136, label %cond.false.5143

cond.true.5136:                                   ; preds = %cond.end.5126
  %3236 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax5137 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3236, i32 0, i32 1
  %arrayidx5138 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5137, i32 0, i64 1
  %3237 = load i32, i32* %arrayidx5138, align 4
  %3238 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin5139 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3238, i32 0, i32 0
  %arrayidx5140 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5139, i32 0, i64 1
  %3239 = load i32, i32* %arrayidx5140, align 4
  %sub5141 = sub nsw i32 %3237, %3239
  %add5142 = add nsw i32 %sub5141, 1
  br label %cond.end.5144

cond.false.5143:                                  ; preds = %cond.end.5126
  br label %cond.end.5144

cond.end.5144:                                    ; preds = %cond.false.5143, %cond.true.5136
  %cond5145 = phi i32 [ %add5142, %cond.true.5136 ], [ 0, %cond.false.5143 ]
  %mul5146 = mul nsw i32 %mul5128, %cond5145
  store i32 %mul5146, i32* %hypre__sz25109, align 4
  %3240 = load i32*, i32** %stride, align 8
  %arrayidx5148 = getelementptr inbounds i32, i32* %3240, i64 0
  %3241 = load i32, i32* %arrayidx5148, align 4
  store i32 %3241, i32* %hypre__sx35147, align 4
  %3242 = load i32*, i32** %stride, align 8
  %arrayidx5150 = getelementptr inbounds i32, i32* %3242, i64 1
  %3243 = load i32, i32* %arrayidx5150, align 4
  %3244 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax5151 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3244, i32 0, i32 1
  %arrayidx5152 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5151, i32 0, i64 0
  %3245 = load i32, i32* %arrayidx5152, align 4
  %3246 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin5153 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3246, i32 0, i32 0
  %arrayidx5154 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5153, i32 0, i64 0
  %3247 = load i32, i32* %arrayidx5154, align 4
  %sub5155 = sub nsw i32 %3245, %3247
  %add5156 = add nsw i32 %sub5155, 1
  %cmp5157 = icmp slt i32 0, %add5156
  br i1 %cmp5157, label %cond.true.5158, label %cond.false.5165

cond.true.5158:                                   ; preds = %cond.end.5144
  %3248 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax5159 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3248, i32 0, i32 1
  %arrayidx5160 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5159, i32 0, i64 0
  %3249 = load i32, i32* %arrayidx5160, align 4
  %3250 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin5161 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3250, i32 0, i32 0
  %arrayidx5162 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5161, i32 0, i64 0
  %3251 = load i32, i32* %arrayidx5162, align 4
  %sub5163 = sub nsw i32 %3249, %3251
  %add5164 = add nsw i32 %sub5163, 1
  br label %cond.end.5166

cond.false.5165:                                  ; preds = %cond.end.5144
  br label %cond.end.5166

cond.end.5166:                                    ; preds = %cond.false.5165, %cond.true.5158
  %cond5167 = phi i32 [ %add5164, %cond.true.5158 ], [ 0, %cond.false.5165 ]
  %mul5168 = mul nsw i32 %3243, %cond5167
  store i32 %mul5168, i32* %hypre__sy35149, align 4
  %3252 = load i32*, i32** %stride, align 8
  %arrayidx5170 = getelementptr inbounds i32, i32* %3252, i64 2
  %3253 = load i32, i32* %arrayidx5170, align 4
  %3254 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax5171 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3254, i32 0, i32 1
  %arrayidx5172 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5171, i32 0, i64 0
  %3255 = load i32, i32* %arrayidx5172, align 4
  %3256 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin5173 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3256, i32 0, i32 0
  %arrayidx5174 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5173, i32 0, i64 0
  %3257 = load i32, i32* %arrayidx5174, align 4
  %sub5175 = sub nsw i32 %3255, %3257
  %add5176 = add nsw i32 %sub5175, 1
  %cmp5177 = icmp slt i32 0, %add5176
  br i1 %cmp5177, label %cond.true.5178, label %cond.false.5185

cond.true.5178:                                   ; preds = %cond.end.5166
  %3258 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax5179 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3258, i32 0, i32 1
  %arrayidx5180 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5179, i32 0, i64 0
  %3259 = load i32, i32* %arrayidx5180, align 4
  %3260 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin5181 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3260, i32 0, i32 0
  %arrayidx5182 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5181, i32 0, i64 0
  %3261 = load i32, i32* %arrayidx5182, align 4
  %sub5183 = sub nsw i32 %3259, %3261
  %add5184 = add nsw i32 %sub5183, 1
  br label %cond.end.5186

cond.false.5185:                                  ; preds = %cond.end.5166
  br label %cond.end.5186

cond.end.5186:                                    ; preds = %cond.false.5185, %cond.true.5178
  %cond5187 = phi i32 [ %add5184, %cond.true.5178 ], [ 0, %cond.false.5185 ]
  %mul5188 = mul nsw i32 %3253, %cond5187
  %3262 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax5189 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3262, i32 0, i32 1
  %arrayidx5190 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5189, i32 0, i64 1
  %3263 = load i32, i32* %arrayidx5190, align 4
  %3264 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin5191 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3264, i32 0, i32 0
  %arrayidx5192 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5191, i32 0, i64 1
  %3265 = load i32, i32* %arrayidx5192, align 4
  %sub5193 = sub nsw i32 %3263, %3265
  %add5194 = add nsw i32 %sub5193, 1
  %cmp5195 = icmp slt i32 0, %add5194
  br i1 %cmp5195, label %cond.true.5196, label %cond.false.5203

cond.true.5196:                                   ; preds = %cond.end.5186
  %3266 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax5197 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3266, i32 0, i32 1
  %arrayidx5198 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5197, i32 0, i64 1
  %3267 = load i32, i32* %arrayidx5198, align 4
  %3268 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin5199 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3268, i32 0, i32 0
  %arrayidx5200 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5199, i32 0, i64 1
  %3269 = load i32, i32* %arrayidx5200, align 4
  %sub5201 = sub nsw i32 %3267, %3269
  %add5202 = add nsw i32 %sub5201, 1
  br label %cond.end.5204

cond.false.5203:                                  ; preds = %cond.end.5186
  br label %cond.end.5204

cond.end.5204:                                    ; preds = %cond.false.5203, %cond.true.5196
  %cond5205 = phi i32 [ %add5202, %cond.true.5196 ], [ 0, %cond.false.5203 ]
  %mul5206 = mul nsw i32 %mul5188, %cond5205
  store i32 %mul5206, i32* %hypre__sz35169, align 4
  %arrayidx5208 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 0
  %3270 = load i32, i32* %arrayidx5208, align 4
  store i32 %3270, i32* %hypre__nx5207, align 4
  %arrayidx5210 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 1
  %3271 = load i32, i32* %arrayidx5210, align 4
  store i32 %3271, i32* %hypre__ny5209, align 4
  %arrayidx5212 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 2
  %3272 = load i32, i32* %arrayidx5212, align 4
  store i32 %3272, i32* %hypre__nz5211, align 4
  %3273 = load i32, i32* %hypre__nx5207, align 4
  store i32 %3273, i32* %hypre__mx5213, align 4
  %3274 = load i32, i32* %hypre__ny5209, align 4
  store i32 %3274, i32* %hypre__my5214, align 4
  %3275 = load i32, i32* %hypre__nz5211, align 4
  store i32 %3275, i32* %hypre__mz5215, align 4
  store i32 0, i32* %hypre__dir5216, align 4
  %3276 = load i32, i32* %hypre__nx5207, align 4
  store i32 %3276, i32* %hypre__max5217, align 4
  %3277 = load i32, i32* %hypre__ny5209, align 4
  %3278 = load i32, i32* %hypre__max5217, align 4
  %cmp5222 = icmp sgt i32 %3277, %3278
  br i1 %cmp5222, label %if.then.5223, label %if.end.5224

if.then.5223:                                     ; preds = %cond.end.5204
  store i32 1, i32* %hypre__dir5216, align 4
  %3279 = load i32, i32* %hypre__ny5209, align 4
  store i32 %3279, i32* %hypre__max5217, align 4
  br label %if.end.5224

if.end.5224:                                      ; preds = %if.then.5223, %cond.end.5204
  %3280 = load i32, i32* %hypre__nz5211, align 4
  %3281 = load i32, i32* %hypre__max5217, align 4
  %cmp5225 = icmp sgt i32 %3280, %3281
  br i1 %cmp5225, label %if.then.5226, label %if.end.5227

if.then.5226:                                     ; preds = %if.end.5224
  store i32 2, i32* %hypre__dir5216, align 4
  %3282 = load i32, i32* %hypre__nz5211, align 4
  store i32 %3282, i32* %hypre__max5217, align 4
  br label %if.end.5227

if.end.5227:                                      ; preds = %if.then.5226, %if.end.5224
  store i32 1, i32* %hypre__num_blocks5221, align 4
  %3283 = load i32, i32* %hypre__max5217, align 4
  %3284 = load i32, i32* %hypre__num_blocks5221, align 4
  %cmp5228 = icmp slt i32 %3283, %3284
  br i1 %cmp5228, label %if.then.5229, label %if.end.5230

if.then.5229:                                     ; preds = %if.end.5227
  %3285 = load i32, i32* %hypre__max5217, align 4
  store i32 %3285, i32* %hypre__num_blocks5221, align 4
  br label %if.end.5230

if.end.5230:                                      ; preds = %if.then.5229, %if.end.5227
  %3286 = load i32, i32* %hypre__num_blocks5221, align 4
  %cmp5231 = icmp sgt i32 %3286, 0
  br i1 %cmp5231, label %if.then.5232, label %if.end.5235

if.then.5232:                                     ; preds = %if.end.5230
  %3287 = load i32, i32* %hypre__max5217, align 4
  %3288 = load i32, i32* %hypre__num_blocks5221, align 4
  %div5233 = sdiv i32 %3287, %3288
  store i32 %div5233, i32* %hypre__div5218, align 4
  %3289 = load i32, i32* %hypre__max5217, align 4
  %3290 = load i32, i32* %hypre__num_blocks5221, align 4
  %rem5234 = srem i32 %3289, %3290
  store i32 %rem5234, i32* %hypre__mod5219, align 4
  br label %if.end.5235

if.end.5235:                                      ; preds = %if.then.5232, %if.end.5230
  store i32 0, i32* %hypre__block5220, align 4
  br label %for.cond.5236

for.cond.5236:                                    ; preds = %for.inc.5356, %if.end.5235
  %3291 = load i32, i32* %hypre__block5220, align 4
  %3292 = load i32, i32* %hypre__num_blocks5221, align 4
  %cmp5237 = icmp slt i32 %3291, %3292
  br i1 %cmp5237, label %for.body.5238, label %for.end.5358

for.body.5238:                                    ; preds = %for.cond.5236
  store i32 0, i32* %loopi, align 4
  store i32 0, i32* %loopj, align 4
  store i32 0, i32* %loopk, align 4
  %3293 = load i32, i32* %hypre__mx5213, align 4
  store i32 %3293, i32* %hypre__nx5207, align 4
  %3294 = load i32, i32* %hypre__my5214, align 4
  store i32 %3294, i32* %hypre__ny5209, align 4
  %3295 = load i32, i32* %hypre__mz5215, align 4
  store i32 %3295, i32* %hypre__nz5211, align 4
  %3296 = load i32, i32* %hypre__num_blocks5221, align 4
  %cmp5239 = icmp sgt i32 %3296, 1
  br i1 %cmp5239, label %if.then.5240, label %if.end.5282

if.then.5240:                                     ; preds = %for.body.5238
  %3297 = load i32, i32* %hypre__dir5216, align 4
  %cmp5241 = icmp eq i32 %3297, 0
  br i1 %cmp5241, label %if.then.5242, label %if.else.5253

if.then.5242:                                     ; preds = %if.then.5240
  %3298 = load i32, i32* %hypre__block5220, align 4
  %3299 = load i32, i32* %hypre__div5218, align 4
  %mul5243 = mul nsw i32 %3298, %3299
  %3300 = load i32, i32* %hypre__mod5219, align 4
  %3301 = load i32, i32* %hypre__block5220, align 4
  %cmp5244 = icmp slt i32 %3300, %3301
  br i1 %cmp5244, label %cond.true.5245, label %cond.false.5246

cond.true.5245:                                   ; preds = %if.then.5242
  %3302 = load i32, i32* %hypre__mod5219, align 4
  br label %cond.end.5247

cond.false.5246:                                  ; preds = %if.then.5242
  %3303 = load i32, i32* %hypre__block5220, align 4
  br label %cond.end.5247

cond.end.5247:                                    ; preds = %cond.false.5246, %cond.true.5245
  %cond5248 = phi i32 [ %3302, %cond.true.5245 ], [ %3303, %cond.false.5246 ]
  %add5249 = add nsw i32 %mul5243, %cond5248
  store i32 %add5249, i32* %loopi, align 4
  %3304 = load i32, i32* %hypre__div5218, align 4
  %3305 = load i32, i32* %hypre__mod5219, align 4
  %3306 = load i32, i32* %hypre__block5220, align 4
  %cmp5250 = icmp sgt i32 %3305, %3306
  %cond5251 = select i1 %cmp5250, i32 1, i32 0
  %add5252 = add nsw i32 %3304, %cond5251
  store i32 %add5252, i32* %hypre__nx5207, align 4
  br label %if.end.5281

if.else.5253:                                     ; preds = %if.then.5240
  %3307 = load i32, i32* %hypre__dir5216, align 4
  %cmp5254 = icmp eq i32 %3307, 1
  br i1 %cmp5254, label %if.then.5255, label %if.else.5266

if.then.5255:                                     ; preds = %if.else.5253
  %3308 = load i32, i32* %hypre__block5220, align 4
  %3309 = load i32, i32* %hypre__div5218, align 4
  %mul5256 = mul nsw i32 %3308, %3309
  %3310 = load i32, i32* %hypre__mod5219, align 4
  %3311 = load i32, i32* %hypre__block5220, align 4
  %cmp5257 = icmp slt i32 %3310, %3311
  br i1 %cmp5257, label %cond.true.5258, label %cond.false.5259

cond.true.5258:                                   ; preds = %if.then.5255
  %3312 = load i32, i32* %hypre__mod5219, align 4
  br label %cond.end.5260

cond.false.5259:                                  ; preds = %if.then.5255
  %3313 = load i32, i32* %hypre__block5220, align 4
  br label %cond.end.5260

cond.end.5260:                                    ; preds = %cond.false.5259, %cond.true.5258
  %cond5261 = phi i32 [ %3312, %cond.true.5258 ], [ %3313, %cond.false.5259 ]
  %add5262 = add nsw i32 %mul5256, %cond5261
  store i32 %add5262, i32* %loopj, align 4
  %3314 = load i32, i32* %hypre__div5218, align 4
  %3315 = load i32, i32* %hypre__mod5219, align 4
  %3316 = load i32, i32* %hypre__block5220, align 4
  %cmp5263 = icmp sgt i32 %3315, %3316
  %cond5264 = select i1 %cmp5263, i32 1, i32 0
  %add5265 = add nsw i32 %3314, %cond5264
  store i32 %add5265, i32* %hypre__ny5209, align 4
  br label %if.end.5280

if.else.5266:                                     ; preds = %if.else.5253
  %3317 = load i32, i32* %hypre__dir5216, align 4
  %cmp5267 = icmp eq i32 %3317, 2
  br i1 %cmp5267, label %if.then.5268, label %if.end.5279

if.then.5268:                                     ; preds = %if.else.5266
  %3318 = load i32, i32* %hypre__block5220, align 4
  %3319 = load i32, i32* %hypre__div5218, align 4
  %mul5269 = mul nsw i32 %3318, %3319
  %3320 = load i32, i32* %hypre__mod5219, align 4
  %3321 = load i32, i32* %hypre__block5220, align 4
  %cmp5270 = icmp slt i32 %3320, %3321
  br i1 %cmp5270, label %cond.true.5271, label %cond.false.5272

cond.true.5271:                                   ; preds = %if.then.5268
  %3322 = load i32, i32* %hypre__mod5219, align 4
  br label %cond.end.5273

cond.false.5272:                                  ; preds = %if.then.5268
  %3323 = load i32, i32* %hypre__block5220, align 4
  br label %cond.end.5273

cond.end.5273:                                    ; preds = %cond.false.5272, %cond.true.5271
  %cond5274 = phi i32 [ %3322, %cond.true.5271 ], [ %3323, %cond.false.5272 ]
  %add5275 = add nsw i32 %mul5269, %cond5274
  store i32 %add5275, i32* %loopk, align 4
  %3324 = load i32, i32* %hypre__div5218, align 4
  %3325 = load i32, i32* %hypre__mod5219, align 4
  %3326 = load i32, i32* %hypre__block5220, align 4
  %cmp5276 = icmp sgt i32 %3325, %3326
  %cond5277 = select i1 %cmp5276, i32 1, i32 0
  %add5278 = add nsw i32 %3324, %cond5277
  store i32 %add5278, i32* %hypre__nz5211, align 4
  br label %if.end.5279

if.end.5279:                                      ; preds = %cond.end.5273, %if.else.5266
  br label %if.end.5280

if.end.5280:                                      ; preds = %if.end.5279, %cond.end.5260
  br label %if.end.5281

if.end.5281:                                      ; preds = %if.end.5280, %cond.end.5247
  br label %if.end.5282

if.end.5282:                                      ; preds = %if.end.5281, %for.body.5238
  %3327 = load i32, i32* %hypre__i1start4874, align 4
  %3328 = load i32, i32* %loopi, align 4
  %3329 = load i32, i32* %hypre__sx15027, align 4
  %mul5283 = mul nsw i32 %3328, %3329
  %add5284 = add nsw i32 %3327, %mul5283
  %3330 = load i32, i32* %loopj, align 4
  %3331 = load i32, i32* %hypre__sy15029, align 4
  %mul5285 = mul nsw i32 %3330, %3331
  %add5286 = add nsw i32 %add5284, %mul5285
  %3332 = load i32, i32* %loopk, align 4
  %3333 = load i32, i32* %hypre__sz15049, align 4
  %mul5287 = mul nsw i32 %3332, %3333
  %add5288 = add nsw i32 %add5286, %mul5287
  store i32 %add5288, i32* %Ai, align 4
  %3334 = load i32, i32* %hypre__i2start4925, align 4
  %3335 = load i32, i32* %loopi, align 4
  %3336 = load i32, i32* %hypre__sx25087, align 4
  %mul5289 = mul nsw i32 %3335, %3336
  %add5290 = add nsw i32 %3334, %mul5289
  %3337 = load i32, i32* %loopj, align 4
  %3338 = load i32, i32* %hypre__sy25089, align 4
  %mul5291 = mul nsw i32 %3337, %3338
  %add5292 = add nsw i32 %add5290, %mul5291
  %3339 = load i32, i32* %loopk, align 4
  %3340 = load i32, i32* %hypre__sz25109, align 4
  %mul5293 = mul nsw i32 %3339, %3340
  %add5294 = add nsw i32 %add5292, %mul5293
  store i32 %add5294, i32* %xi, align 4
  %3341 = load i32, i32* %hypre__i3start4976, align 4
  %3342 = load i32, i32* %loopi, align 4
  %3343 = load i32, i32* %hypre__sx35147, align 4
  %mul5295 = mul nsw i32 %3342, %3343
  %add5296 = add nsw i32 %3341, %mul5295
  %3344 = load i32, i32* %loopj, align 4
  %3345 = load i32, i32* %hypre__sy35149, align 4
  %mul5297 = mul nsw i32 %3344, %3345
  %add5298 = add nsw i32 %add5296, %mul5297
  %3346 = load i32, i32* %loopk, align 4
  %3347 = load i32, i32* %hypre__sz35169, align 4
  %mul5299 = mul nsw i32 %3346, %3347
  %add5300 = add nsw i32 %add5298, %mul5299
  store i32 %add5300, i32* %yi, align 4
  store i32 0, i32* %loopk, align 4
  br label %for.cond.5301

for.cond.5301:                                    ; preds = %for.inc.5353, %if.end.5282
  %3348 = load i32, i32* %loopk, align 4
  %3349 = load i32, i32* %hypre__nz5211, align 4
  %cmp5302 = icmp slt i32 %3348, %3349
  br i1 %cmp5302, label %for.body.5303, label %for.end.5355

for.body.5303:                                    ; preds = %for.cond.5301
  store i32 0, i32* %loopj, align 4
  br label %for.cond.5304

for.cond.5304:                                    ; preds = %for.inc.5341, %for.body.5303
  %3350 = load i32, i32* %loopj, align 4
  %3351 = load i32, i32* %hypre__ny5209, align 4
  %cmp5305 = icmp slt i32 %3350, %3351
  br i1 %cmp5305, label %for.body.5306, label %for.end.5343

for.body.5306:                                    ; preds = %for.cond.5304
  store i32 0, i32* %loopi, align 4
  br label %for.cond.5307

for.cond.5307:                                    ; preds = %for.inc.5329, %for.body.5306
  %3352 = load i32, i32* %loopi, align 4
  %3353 = load i32, i32* %hypre__nx5207, align 4
  %cmp5308 = icmp slt i32 %3352, %3353
  br i1 %cmp5308, label %for.body.5309, label %for.end.5331

for.body.5309:                                    ; preds = %for.cond.5307
  %3354 = load i32, i32* %Ai, align 4
  %idxprom5310 = sext i32 %3354 to i64
  %3355 = load double*, double** %Ap0, align 8
  %arrayidx5311 = getelementptr inbounds double, double* %3355, i64 %idxprom5310
  %3356 = load double, double* %arrayidx5311, align 8
  %3357 = load i32, i32* %xi, align 4
  %3358 = load i32, i32* %xoff0, align 4
  %add5312 = add nsw i32 %3357, %3358
  %idxprom5313 = sext i32 %add5312 to i64
  %3359 = load double*, double** %xp, align 8
  %arrayidx5314 = getelementptr inbounds double, double* %3359, i64 %idxprom5313
  %3360 = load double, double* %arrayidx5314, align 8
  %mul5315 = fmul double %3356, %3360
  %3361 = load i32, i32* %Ai, align 4
  %idxprom5316 = sext i32 %3361 to i64
  %3362 = load double*, double** %Ap1, align 8
  %arrayidx5317 = getelementptr inbounds double, double* %3362, i64 %idxprom5316
  %3363 = load double, double* %arrayidx5317, align 8
  %3364 = load i32, i32* %xi, align 4
  %3365 = load i32, i32* %xoff1, align 4
  %add5318 = add nsw i32 %3364, %3365
  %idxprom5319 = sext i32 %add5318 to i64
  %3366 = load double*, double** %xp, align 8
  %arrayidx5320 = getelementptr inbounds double, double* %3366, i64 %idxprom5319
  %3367 = load double, double* %arrayidx5320, align 8
  %mul5321 = fmul double %3363, %3367
  %add5322 = fadd double %mul5315, %mul5321
  %3368 = load i32, i32* %yi, align 4
  %idxprom5323 = sext i32 %3368 to i64
  %3369 = load double*, double** %yp, align 8
  %arrayidx5324 = getelementptr inbounds double, double* %3369, i64 %idxprom5323
  %3370 = load double, double* %arrayidx5324, align 8
  %add5325 = fadd double %3370, %add5322
  store double %add5325, double* %arrayidx5324, align 8
  %3371 = load i32, i32* %hypre__sx15027, align 4
  %3372 = load i32, i32* %Ai, align 4
  %add5326 = add nsw i32 %3372, %3371
  store i32 %add5326, i32* %Ai, align 4
  %3373 = load i32, i32* %hypre__sx25087, align 4
  %3374 = load i32, i32* %xi, align 4
  %add5327 = add nsw i32 %3374, %3373
  store i32 %add5327, i32* %xi, align 4
  %3375 = load i32, i32* %hypre__sx35147, align 4
  %3376 = load i32, i32* %yi, align 4
  %add5328 = add nsw i32 %3376, %3375
  store i32 %add5328, i32* %yi, align 4
  br label %for.inc.5329

for.inc.5329:                                     ; preds = %for.body.5309
  %3377 = load i32, i32* %loopi, align 4
  %inc5330 = add nsw i32 %3377, 1
  store i32 %inc5330, i32* %loopi, align 4
  br label %for.cond.5307

for.end.5331:                                     ; preds = %for.cond.5307
  %3378 = load i32, i32* %hypre__sy15029, align 4
  %3379 = load i32, i32* %hypre__nx5207, align 4
  %3380 = load i32, i32* %hypre__sx15027, align 4
  %mul5332 = mul nsw i32 %3379, %3380
  %sub5333 = sub nsw i32 %3378, %mul5332
  %3381 = load i32, i32* %Ai, align 4
  %add5334 = add nsw i32 %3381, %sub5333
  store i32 %add5334, i32* %Ai, align 4
  %3382 = load i32, i32* %hypre__sy25089, align 4
  %3383 = load i32, i32* %hypre__nx5207, align 4
  %3384 = load i32, i32* %hypre__sx25087, align 4
  %mul5335 = mul nsw i32 %3383, %3384
  %sub5336 = sub nsw i32 %3382, %mul5335
  %3385 = load i32, i32* %xi, align 4
  %add5337 = add nsw i32 %3385, %sub5336
  store i32 %add5337, i32* %xi, align 4
  %3386 = load i32, i32* %hypre__sy35149, align 4
  %3387 = load i32, i32* %hypre__nx5207, align 4
  %3388 = load i32, i32* %hypre__sx35147, align 4
  %mul5338 = mul nsw i32 %3387, %3388
  %sub5339 = sub nsw i32 %3386, %mul5338
  %3389 = load i32, i32* %yi, align 4
  %add5340 = add nsw i32 %3389, %sub5339
  store i32 %add5340, i32* %yi, align 4
  br label %for.inc.5341

for.inc.5341:                                     ; preds = %for.end.5331
  %3390 = load i32, i32* %loopj, align 4
  %inc5342 = add nsw i32 %3390, 1
  store i32 %inc5342, i32* %loopj, align 4
  br label %for.cond.5304

for.end.5343:                                     ; preds = %for.cond.5304
  %3391 = load i32, i32* %hypre__sz15049, align 4
  %3392 = load i32, i32* %hypre__ny5209, align 4
  %3393 = load i32, i32* %hypre__sy15029, align 4
  %mul5344 = mul nsw i32 %3392, %3393
  %sub5345 = sub nsw i32 %3391, %mul5344
  %3394 = load i32, i32* %Ai, align 4
  %add5346 = add nsw i32 %3394, %sub5345
  store i32 %add5346, i32* %Ai, align 4
  %3395 = load i32, i32* %hypre__sz25109, align 4
  %3396 = load i32, i32* %hypre__ny5209, align 4
  %3397 = load i32, i32* %hypre__sy25089, align 4
  %mul5347 = mul nsw i32 %3396, %3397
  %sub5348 = sub nsw i32 %3395, %mul5347
  %3398 = load i32, i32* %xi, align 4
  %add5349 = add nsw i32 %3398, %sub5348
  store i32 %add5349, i32* %xi, align 4
  %3399 = load i32, i32* %hypre__sz35169, align 4
  %3400 = load i32, i32* %hypre__ny5209, align 4
  %3401 = load i32, i32* %hypre__sy35149, align 4
  %mul5350 = mul nsw i32 %3400, %3401
  %sub5351 = sub nsw i32 %3399, %mul5350
  %3402 = load i32, i32* %yi, align 4
  %add5352 = add nsw i32 %3402, %sub5351
  store i32 %add5352, i32* %yi, align 4
  br label %for.inc.5353

for.inc.5353:                                     ; preds = %for.end.5343
  %3403 = load i32, i32* %loopk, align 4
  %inc5354 = add nsw i32 %3403, 1
  store i32 %inc5354, i32* %loopk, align 4
  br label %for.cond.5301

for.end.5355:                                     ; preds = %for.cond.5301
  br label %for.inc.5356

for.inc.5356:                                     ; preds = %for.end.5355
  %3404 = load i32, i32* %hypre__block5220, align 4
  %inc5357 = add nsw i32 %3404, 1
  store i32 %inc5357, i32* %hypre__block5220, align 4
  br label %for.cond.5236

for.end.5358:                                     ; preds = %for.cond.5236
  br label %sw.epilog.5897

sw.bb.5359:                                       ; preds = %cond.end.751
  %3405 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data5360 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %3405, i32 0, i32 6
  %3406 = load double*, double** %data5360, align 8
  %3407 = load i32, i32* %si, align 4
  %add5361 = add nsw i32 %3407, 0
  %idxprom5362 = sext i32 %add5361 to i64
  %3408 = load i32, i32* %i, align 4
  %idxprom5363 = sext i32 %3408 to i64
  %3409 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %data_indices5364 = getelementptr inbounds %struct.hypre_StructMatrix_struct, %struct.hypre_StructMatrix_struct* %3409, i32 0, i32 9
  %3410 = load i32**, i32*** %data_indices5364, align 8
  %arrayidx5365 = getelementptr inbounds i32*, i32** %3410, i64 %idxprom5363
  %3411 = load i32*, i32** %arrayidx5365, align 8
  %arrayidx5366 = getelementptr inbounds i32, i32* %3411, i64 %idxprom5362
  %3412 = load i32, i32* %arrayidx5366, align 4
  %idx.ext5367 = sext i32 %3412 to i64
  %add.ptr5368 = getelementptr inbounds double, double* %3406, i64 %idx.ext5367
  store double* %add.ptr5368, double** %Ap0, align 8
  %3413 = load i32, i32* %si, align 4
  %add5369 = add nsw i32 %3413, 0
  %idxprom5370 = sext i32 %add5369 to i64
  %3414 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx5371 = getelementptr inbounds [3 x i32], [3 x i32]* %3414, i64 %idxprom5370
  %arrayidx5372 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx5371, i32 0, i64 0
  %3415 = load i32, i32* %arrayidx5372, align 4
  %3416 = load i32, i32* %si, align 4
  %add5373 = add nsw i32 %3416, 0
  %idxprom5374 = sext i32 %add5373 to i64
  %3417 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx5375 = getelementptr inbounds [3 x i32], [3 x i32]* %3417, i64 %idxprom5374
  %arrayidx5376 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx5375, i32 0, i64 1
  %3418 = load i32, i32* %arrayidx5376, align 4
  %3419 = load i32, i32* %si, align 4
  %add5377 = add nsw i32 %3419, 0
  %idxprom5378 = sext i32 %add5377 to i64
  %3420 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx5379 = getelementptr inbounds [3 x i32], [3 x i32]* %3420, i64 %idxprom5378
  %arrayidx5380 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx5379, i32 0, i64 2
  %3421 = load i32, i32* %arrayidx5380, align 4
  %3422 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax5381 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3422, i32 0, i32 1
  %arrayidx5382 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5381, i32 0, i64 1
  %3423 = load i32, i32* %arrayidx5382, align 4
  %3424 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin5383 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3424, i32 0, i32 0
  %arrayidx5384 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5383, i32 0, i64 1
  %3425 = load i32, i32* %arrayidx5384, align 4
  %sub5385 = sub nsw i32 %3423, %3425
  %add5386 = add nsw i32 %sub5385, 1
  %cmp5387 = icmp slt i32 0, %add5386
  br i1 %cmp5387, label %cond.true.5388, label %cond.false.5395

cond.true.5388:                                   ; preds = %sw.bb.5359
  %3426 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax5389 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3426, i32 0, i32 1
  %arrayidx5390 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5389, i32 0, i64 1
  %3427 = load i32, i32* %arrayidx5390, align 4
  %3428 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin5391 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3428, i32 0, i32 0
  %arrayidx5392 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5391, i32 0, i64 1
  %3429 = load i32, i32* %arrayidx5392, align 4
  %sub5393 = sub nsw i32 %3427, %3429
  %add5394 = add nsw i32 %sub5393, 1
  br label %cond.end.5396

cond.false.5395:                                  ; preds = %sw.bb.5359
  br label %cond.end.5396

cond.end.5396:                                    ; preds = %cond.false.5395, %cond.true.5388
  %cond5397 = phi i32 [ %add5394, %cond.true.5388 ], [ 0, %cond.false.5395 ]
  %mul5398 = mul nsw i32 %3421, %cond5397
  %add5399 = add nsw i32 %3418, %mul5398
  %3430 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax5400 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3430, i32 0, i32 1
  %arrayidx5401 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5400, i32 0, i64 0
  %3431 = load i32, i32* %arrayidx5401, align 4
  %3432 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin5402 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3432, i32 0, i32 0
  %arrayidx5403 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5402, i32 0, i64 0
  %3433 = load i32, i32* %arrayidx5403, align 4
  %sub5404 = sub nsw i32 %3431, %3433
  %add5405 = add nsw i32 %sub5404, 1
  %cmp5406 = icmp slt i32 0, %add5405
  br i1 %cmp5406, label %cond.true.5407, label %cond.false.5414

cond.true.5407:                                   ; preds = %cond.end.5396
  %3434 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax5408 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3434, i32 0, i32 1
  %arrayidx5409 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5408, i32 0, i64 0
  %3435 = load i32, i32* %arrayidx5409, align 4
  %3436 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin5410 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3436, i32 0, i32 0
  %arrayidx5411 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5410, i32 0, i64 0
  %3437 = load i32, i32* %arrayidx5411, align 4
  %sub5412 = sub nsw i32 %3435, %3437
  %add5413 = add nsw i32 %sub5412, 1
  br label %cond.end.5415

cond.false.5414:                                  ; preds = %cond.end.5396
  br label %cond.end.5415

cond.end.5415:                                    ; preds = %cond.false.5414, %cond.true.5407
  %cond5416 = phi i32 [ %add5413, %cond.true.5407 ], [ 0, %cond.false.5414 ]
  %mul5417 = mul nsw i32 %add5399, %cond5416
  %add5418 = add nsw i32 %3415, %mul5417
  store i32 %add5418, i32* %xoff0, align 4
  %3438 = load i32*, i32** %start, align 8
  %arrayidx5420 = getelementptr inbounds i32, i32* %3438, i64 0
  %3439 = load i32, i32* %arrayidx5420, align 4
  %3440 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin5421 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3440, i32 0, i32 0
  %arrayidx5422 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5421, i32 0, i64 0
  %3441 = load i32, i32* %arrayidx5422, align 4
  %sub5423 = sub nsw i32 %3439, %3441
  %3442 = load i32*, i32** %start, align 8
  %arrayidx5424 = getelementptr inbounds i32, i32* %3442, i64 1
  %3443 = load i32, i32* %arrayidx5424, align 4
  %3444 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin5425 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3444, i32 0, i32 0
  %arrayidx5426 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5425, i32 0, i64 1
  %3445 = load i32, i32* %arrayidx5426, align 4
  %sub5427 = sub nsw i32 %3443, %3445
  %3446 = load i32*, i32** %start, align 8
  %arrayidx5428 = getelementptr inbounds i32, i32* %3446, i64 2
  %3447 = load i32, i32* %arrayidx5428, align 4
  %3448 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin5429 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3448, i32 0, i32 0
  %arrayidx5430 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5429, i32 0, i64 2
  %3449 = load i32, i32* %arrayidx5430, align 4
  %sub5431 = sub nsw i32 %3447, %3449
  %3450 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax5432 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3450, i32 0, i32 1
  %arrayidx5433 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5432, i32 0, i64 1
  %3451 = load i32, i32* %arrayidx5433, align 4
  %3452 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin5434 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3452, i32 0, i32 0
  %arrayidx5435 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5434, i32 0, i64 1
  %3453 = load i32, i32* %arrayidx5435, align 4
  %sub5436 = sub nsw i32 %3451, %3453
  %add5437 = add nsw i32 %sub5436, 1
  %cmp5438 = icmp slt i32 0, %add5437
  br i1 %cmp5438, label %cond.true.5439, label %cond.false.5446

cond.true.5439:                                   ; preds = %cond.end.5415
  %3454 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax5440 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3454, i32 0, i32 1
  %arrayidx5441 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5440, i32 0, i64 1
  %3455 = load i32, i32* %arrayidx5441, align 4
  %3456 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin5442 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3456, i32 0, i32 0
  %arrayidx5443 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5442, i32 0, i64 1
  %3457 = load i32, i32* %arrayidx5443, align 4
  %sub5444 = sub nsw i32 %3455, %3457
  %add5445 = add nsw i32 %sub5444, 1
  br label %cond.end.5447

cond.false.5446:                                  ; preds = %cond.end.5415
  br label %cond.end.5447

cond.end.5447:                                    ; preds = %cond.false.5446, %cond.true.5439
  %cond5448 = phi i32 [ %add5445, %cond.true.5439 ], [ 0, %cond.false.5446 ]
  %mul5449 = mul nsw i32 %sub5431, %cond5448
  %add5450 = add nsw i32 %sub5427, %mul5449
  %3458 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax5451 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3458, i32 0, i32 1
  %arrayidx5452 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5451, i32 0, i64 0
  %3459 = load i32, i32* %arrayidx5452, align 4
  %3460 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin5453 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3460, i32 0, i32 0
  %arrayidx5454 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5453, i32 0, i64 0
  %3461 = load i32, i32* %arrayidx5454, align 4
  %sub5455 = sub nsw i32 %3459, %3461
  %add5456 = add nsw i32 %sub5455, 1
  %cmp5457 = icmp slt i32 0, %add5456
  br i1 %cmp5457, label %cond.true.5458, label %cond.false.5465

cond.true.5458:                                   ; preds = %cond.end.5447
  %3462 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax5459 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3462, i32 0, i32 1
  %arrayidx5460 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5459, i32 0, i64 0
  %3463 = load i32, i32* %arrayidx5460, align 4
  %3464 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin5461 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3464, i32 0, i32 0
  %arrayidx5462 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5461, i32 0, i64 0
  %3465 = load i32, i32* %arrayidx5462, align 4
  %sub5463 = sub nsw i32 %3463, %3465
  %add5464 = add nsw i32 %sub5463, 1
  br label %cond.end.5466

cond.false.5465:                                  ; preds = %cond.end.5447
  br label %cond.end.5466

cond.end.5466:                                    ; preds = %cond.false.5465, %cond.true.5458
  %cond5467 = phi i32 [ %add5464, %cond.true.5458 ], [ 0, %cond.false.5465 ]
  %mul5468 = mul nsw i32 %add5450, %cond5467
  %add5469 = add nsw i32 %sub5423, %mul5468
  store i32 %add5469, i32* %hypre__i1start5419, align 4
  %3466 = load i32*, i32** %start, align 8
  %arrayidx5471 = getelementptr inbounds i32, i32* %3466, i64 0
  %3467 = load i32, i32* %arrayidx5471, align 4
  %3468 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin5472 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3468, i32 0, i32 0
  %arrayidx5473 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5472, i32 0, i64 0
  %3469 = load i32, i32* %arrayidx5473, align 4
  %sub5474 = sub nsw i32 %3467, %3469
  %3470 = load i32*, i32** %start, align 8
  %arrayidx5475 = getelementptr inbounds i32, i32* %3470, i64 1
  %3471 = load i32, i32* %arrayidx5475, align 4
  %3472 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin5476 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3472, i32 0, i32 0
  %arrayidx5477 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5476, i32 0, i64 1
  %3473 = load i32, i32* %arrayidx5477, align 4
  %sub5478 = sub nsw i32 %3471, %3473
  %3474 = load i32*, i32** %start, align 8
  %arrayidx5479 = getelementptr inbounds i32, i32* %3474, i64 2
  %3475 = load i32, i32* %arrayidx5479, align 4
  %3476 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin5480 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3476, i32 0, i32 0
  %arrayidx5481 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5480, i32 0, i64 2
  %3477 = load i32, i32* %arrayidx5481, align 4
  %sub5482 = sub nsw i32 %3475, %3477
  %3478 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax5483 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3478, i32 0, i32 1
  %arrayidx5484 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5483, i32 0, i64 1
  %3479 = load i32, i32* %arrayidx5484, align 4
  %3480 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin5485 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3480, i32 0, i32 0
  %arrayidx5486 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5485, i32 0, i64 1
  %3481 = load i32, i32* %arrayidx5486, align 4
  %sub5487 = sub nsw i32 %3479, %3481
  %add5488 = add nsw i32 %sub5487, 1
  %cmp5489 = icmp slt i32 0, %add5488
  br i1 %cmp5489, label %cond.true.5490, label %cond.false.5497

cond.true.5490:                                   ; preds = %cond.end.5466
  %3482 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax5491 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3482, i32 0, i32 1
  %arrayidx5492 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5491, i32 0, i64 1
  %3483 = load i32, i32* %arrayidx5492, align 4
  %3484 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin5493 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3484, i32 0, i32 0
  %arrayidx5494 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5493, i32 0, i64 1
  %3485 = load i32, i32* %arrayidx5494, align 4
  %sub5495 = sub nsw i32 %3483, %3485
  %add5496 = add nsw i32 %sub5495, 1
  br label %cond.end.5498

cond.false.5497:                                  ; preds = %cond.end.5466
  br label %cond.end.5498

cond.end.5498:                                    ; preds = %cond.false.5497, %cond.true.5490
  %cond5499 = phi i32 [ %add5496, %cond.true.5490 ], [ 0, %cond.false.5497 ]
  %mul5500 = mul nsw i32 %sub5482, %cond5499
  %add5501 = add nsw i32 %sub5478, %mul5500
  %3486 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax5502 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3486, i32 0, i32 1
  %arrayidx5503 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5502, i32 0, i64 0
  %3487 = load i32, i32* %arrayidx5503, align 4
  %3488 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin5504 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3488, i32 0, i32 0
  %arrayidx5505 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5504, i32 0, i64 0
  %3489 = load i32, i32* %arrayidx5505, align 4
  %sub5506 = sub nsw i32 %3487, %3489
  %add5507 = add nsw i32 %sub5506, 1
  %cmp5508 = icmp slt i32 0, %add5507
  br i1 %cmp5508, label %cond.true.5509, label %cond.false.5516

cond.true.5509:                                   ; preds = %cond.end.5498
  %3490 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax5510 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3490, i32 0, i32 1
  %arrayidx5511 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5510, i32 0, i64 0
  %3491 = load i32, i32* %arrayidx5511, align 4
  %3492 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin5512 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3492, i32 0, i32 0
  %arrayidx5513 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5512, i32 0, i64 0
  %3493 = load i32, i32* %arrayidx5513, align 4
  %sub5514 = sub nsw i32 %3491, %3493
  %add5515 = add nsw i32 %sub5514, 1
  br label %cond.end.5517

cond.false.5516:                                  ; preds = %cond.end.5498
  br label %cond.end.5517

cond.end.5517:                                    ; preds = %cond.false.5516, %cond.true.5509
  %cond5518 = phi i32 [ %add5515, %cond.true.5509 ], [ 0, %cond.false.5516 ]
  %mul5519 = mul nsw i32 %add5501, %cond5518
  %add5520 = add nsw i32 %sub5474, %mul5519
  store i32 %add5520, i32* %hypre__i2start5470, align 4
  %3494 = load i32*, i32** %start, align 8
  %arrayidx5522 = getelementptr inbounds i32, i32* %3494, i64 0
  %3495 = load i32, i32* %arrayidx5522, align 4
  %3496 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin5523 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3496, i32 0, i32 0
  %arrayidx5524 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5523, i32 0, i64 0
  %3497 = load i32, i32* %arrayidx5524, align 4
  %sub5525 = sub nsw i32 %3495, %3497
  %3498 = load i32*, i32** %start, align 8
  %arrayidx5526 = getelementptr inbounds i32, i32* %3498, i64 1
  %3499 = load i32, i32* %arrayidx5526, align 4
  %3500 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin5527 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3500, i32 0, i32 0
  %arrayidx5528 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5527, i32 0, i64 1
  %3501 = load i32, i32* %arrayidx5528, align 4
  %sub5529 = sub nsw i32 %3499, %3501
  %3502 = load i32*, i32** %start, align 8
  %arrayidx5530 = getelementptr inbounds i32, i32* %3502, i64 2
  %3503 = load i32, i32* %arrayidx5530, align 4
  %3504 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin5531 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3504, i32 0, i32 0
  %arrayidx5532 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5531, i32 0, i64 2
  %3505 = load i32, i32* %arrayidx5532, align 4
  %sub5533 = sub nsw i32 %3503, %3505
  %3506 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax5534 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3506, i32 0, i32 1
  %arrayidx5535 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5534, i32 0, i64 1
  %3507 = load i32, i32* %arrayidx5535, align 4
  %3508 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin5536 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3508, i32 0, i32 0
  %arrayidx5537 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5536, i32 0, i64 1
  %3509 = load i32, i32* %arrayidx5537, align 4
  %sub5538 = sub nsw i32 %3507, %3509
  %add5539 = add nsw i32 %sub5538, 1
  %cmp5540 = icmp slt i32 0, %add5539
  br i1 %cmp5540, label %cond.true.5541, label %cond.false.5548

cond.true.5541:                                   ; preds = %cond.end.5517
  %3510 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax5542 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3510, i32 0, i32 1
  %arrayidx5543 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5542, i32 0, i64 1
  %3511 = load i32, i32* %arrayidx5543, align 4
  %3512 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin5544 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3512, i32 0, i32 0
  %arrayidx5545 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5544, i32 0, i64 1
  %3513 = load i32, i32* %arrayidx5545, align 4
  %sub5546 = sub nsw i32 %3511, %3513
  %add5547 = add nsw i32 %sub5546, 1
  br label %cond.end.5549

cond.false.5548:                                  ; preds = %cond.end.5517
  br label %cond.end.5549

cond.end.5549:                                    ; preds = %cond.false.5548, %cond.true.5541
  %cond5550 = phi i32 [ %add5547, %cond.true.5541 ], [ 0, %cond.false.5548 ]
  %mul5551 = mul nsw i32 %sub5533, %cond5550
  %add5552 = add nsw i32 %sub5529, %mul5551
  %3514 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax5553 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3514, i32 0, i32 1
  %arrayidx5554 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5553, i32 0, i64 0
  %3515 = load i32, i32* %arrayidx5554, align 4
  %3516 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin5555 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3516, i32 0, i32 0
  %arrayidx5556 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5555, i32 0, i64 0
  %3517 = load i32, i32* %arrayidx5556, align 4
  %sub5557 = sub nsw i32 %3515, %3517
  %add5558 = add nsw i32 %sub5557, 1
  %cmp5559 = icmp slt i32 0, %add5558
  br i1 %cmp5559, label %cond.true.5560, label %cond.false.5567

cond.true.5560:                                   ; preds = %cond.end.5549
  %3518 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax5561 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3518, i32 0, i32 1
  %arrayidx5562 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5561, i32 0, i64 0
  %3519 = load i32, i32* %arrayidx5562, align 4
  %3520 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin5563 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3520, i32 0, i32 0
  %arrayidx5564 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5563, i32 0, i64 0
  %3521 = load i32, i32* %arrayidx5564, align 4
  %sub5565 = sub nsw i32 %3519, %3521
  %add5566 = add nsw i32 %sub5565, 1
  br label %cond.end.5568

cond.false.5567:                                  ; preds = %cond.end.5549
  br label %cond.end.5568

cond.end.5568:                                    ; preds = %cond.false.5567, %cond.true.5560
  %cond5569 = phi i32 [ %add5566, %cond.true.5560 ], [ 0, %cond.false.5567 ]
  %mul5570 = mul nsw i32 %add5552, %cond5569
  %add5571 = add nsw i32 %sub5525, %mul5570
  store i32 %add5571, i32* %hypre__i3start5521, align 4
  %3522 = load i32*, i32** %stride, align 8
  %arrayidx5573 = getelementptr inbounds i32, i32* %3522, i64 0
  %3523 = load i32, i32* %arrayidx5573, align 4
  store i32 %3523, i32* %hypre__sx15572, align 4
  %3524 = load i32*, i32** %stride, align 8
  %arrayidx5575 = getelementptr inbounds i32, i32* %3524, i64 1
  %3525 = load i32, i32* %arrayidx5575, align 4
  %3526 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax5576 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3526, i32 0, i32 1
  %arrayidx5577 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5576, i32 0, i64 0
  %3527 = load i32, i32* %arrayidx5577, align 4
  %3528 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin5578 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3528, i32 0, i32 0
  %arrayidx5579 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5578, i32 0, i64 0
  %3529 = load i32, i32* %arrayidx5579, align 4
  %sub5580 = sub nsw i32 %3527, %3529
  %add5581 = add nsw i32 %sub5580, 1
  %cmp5582 = icmp slt i32 0, %add5581
  br i1 %cmp5582, label %cond.true.5583, label %cond.false.5590

cond.true.5583:                                   ; preds = %cond.end.5568
  %3530 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax5584 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3530, i32 0, i32 1
  %arrayidx5585 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5584, i32 0, i64 0
  %3531 = load i32, i32* %arrayidx5585, align 4
  %3532 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin5586 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3532, i32 0, i32 0
  %arrayidx5587 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5586, i32 0, i64 0
  %3533 = load i32, i32* %arrayidx5587, align 4
  %sub5588 = sub nsw i32 %3531, %3533
  %add5589 = add nsw i32 %sub5588, 1
  br label %cond.end.5591

cond.false.5590:                                  ; preds = %cond.end.5568
  br label %cond.end.5591

cond.end.5591:                                    ; preds = %cond.false.5590, %cond.true.5583
  %cond5592 = phi i32 [ %add5589, %cond.true.5583 ], [ 0, %cond.false.5590 ]
  %mul5593 = mul nsw i32 %3525, %cond5592
  store i32 %mul5593, i32* %hypre__sy15574, align 4
  %3534 = load i32*, i32** %stride, align 8
  %arrayidx5595 = getelementptr inbounds i32, i32* %3534, i64 2
  %3535 = load i32, i32* %arrayidx5595, align 4
  %3536 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax5596 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3536, i32 0, i32 1
  %arrayidx5597 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5596, i32 0, i64 0
  %3537 = load i32, i32* %arrayidx5597, align 4
  %3538 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin5598 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3538, i32 0, i32 0
  %arrayidx5599 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5598, i32 0, i64 0
  %3539 = load i32, i32* %arrayidx5599, align 4
  %sub5600 = sub nsw i32 %3537, %3539
  %add5601 = add nsw i32 %sub5600, 1
  %cmp5602 = icmp slt i32 0, %add5601
  br i1 %cmp5602, label %cond.true.5603, label %cond.false.5610

cond.true.5603:                                   ; preds = %cond.end.5591
  %3540 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax5604 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3540, i32 0, i32 1
  %arrayidx5605 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5604, i32 0, i64 0
  %3541 = load i32, i32* %arrayidx5605, align 4
  %3542 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin5606 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3542, i32 0, i32 0
  %arrayidx5607 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5606, i32 0, i64 0
  %3543 = load i32, i32* %arrayidx5607, align 4
  %sub5608 = sub nsw i32 %3541, %3543
  %add5609 = add nsw i32 %sub5608, 1
  br label %cond.end.5611

cond.false.5610:                                  ; preds = %cond.end.5591
  br label %cond.end.5611

cond.end.5611:                                    ; preds = %cond.false.5610, %cond.true.5603
  %cond5612 = phi i32 [ %add5609, %cond.true.5603 ], [ 0, %cond.false.5610 ]
  %mul5613 = mul nsw i32 %3535, %cond5612
  %3544 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax5614 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3544, i32 0, i32 1
  %arrayidx5615 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5614, i32 0, i64 1
  %3545 = load i32, i32* %arrayidx5615, align 4
  %3546 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin5616 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3546, i32 0, i32 0
  %arrayidx5617 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5616, i32 0, i64 1
  %3547 = load i32, i32* %arrayidx5617, align 4
  %sub5618 = sub nsw i32 %3545, %3547
  %add5619 = add nsw i32 %sub5618, 1
  %cmp5620 = icmp slt i32 0, %add5619
  br i1 %cmp5620, label %cond.true.5621, label %cond.false.5628

cond.true.5621:                                   ; preds = %cond.end.5611
  %3548 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imax5622 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3548, i32 0, i32 1
  %arrayidx5623 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5622, i32 0, i64 1
  %3549 = load i32, i32* %arrayidx5623, align 4
  %3550 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %A_data_box, align 8
  %imin5624 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3550, i32 0, i32 0
  %arrayidx5625 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5624, i32 0, i64 1
  %3551 = load i32, i32* %arrayidx5625, align 4
  %sub5626 = sub nsw i32 %3549, %3551
  %add5627 = add nsw i32 %sub5626, 1
  br label %cond.end.5629

cond.false.5628:                                  ; preds = %cond.end.5611
  br label %cond.end.5629

cond.end.5629:                                    ; preds = %cond.false.5628, %cond.true.5621
  %cond5630 = phi i32 [ %add5627, %cond.true.5621 ], [ 0, %cond.false.5628 ]
  %mul5631 = mul nsw i32 %mul5613, %cond5630
  store i32 %mul5631, i32* %hypre__sz15594, align 4
  %3552 = load i32*, i32** %stride, align 8
  %arrayidx5633 = getelementptr inbounds i32, i32* %3552, i64 0
  %3553 = load i32, i32* %arrayidx5633, align 4
  store i32 %3553, i32* %hypre__sx25632, align 4
  %3554 = load i32*, i32** %stride, align 8
  %arrayidx5635 = getelementptr inbounds i32, i32* %3554, i64 1
  %3555 = load i32, i32* %arrayidx5635, align 4
  %3556 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax5636 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3556, i32 0, i32 1
  %arrayidx5637 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5636, i32 0, i64 0
  %3557 = load i32, i32* %arrayidx5637, align 4
  %3558 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin5638 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3558, i32 0, i32 0
  %arrayidx5639 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5638, i32 0, i64 0
  %3559 = load i32, i32* %arrayidx5639, align 4
  %sub5640 = sub nsw i32 %3557, %3559
  %add5641 = add nsw i32 %sub5640, 1
  %cmp5642 = icmp slt i32 0, %add5641
  br i1 %cmp5642, label %cond.true.5643, label %cond.false.5650

cond.true.5643:                                   ; preds = %cond.end.5629
  %3560 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax5644 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3560, i32 0, i32 1
  %arrayidx5645 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5644, i32 0, i64 0
  %3561 = load i32, i32* %arrayidx5645, align 4
  %3562 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin5646 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3562, i32 0, i32 0
  %arrayidx5647 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5646, i32 0, i64 0
  %3563 = load i32, i32* %arrayidx5647, align 4
  %sub5648 = sub nsw i32 %3561, %3563
  %add5649 = add nsw i32 %sub5648, 1
  br label %cond.end.5651

cond.false.5650:                                  ; preds = %cond.end.5629
  br label %cond.end.5651

cond.end.5651:                                    ; preds = %cond.false.5650, %cond.true.5643
  %cond5652 = phi i32 [ %add5649, %cond.true.5643 ], [ 0, %cond.false.5650 ]
  %mul5653 = mul nsw i32 %3555, %cond5652
  store i32 %mul5653, i32* %hypre__sy25634, align 4
  %3564 = load i32*, i32** %stride, align 8
  %arrayidx5655 = getelementptr inbounds i32, i32* %3564, i64 2
  %3565 = load i32, i32* %arrayidx5655, align 4
  %3566 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax5656 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3566, i32 0, i32 1
  %arrayidx5657 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5656, i32 0, i64 0
  %3567 = load i32, i32* %arrayidx5657, align 4
  %3568 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin5658 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3568, i32 0, i32 0
  %arrayidx5659 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5658, i32 0, i64 0
  %3569 = load i32, i32* %arrayidx5659, align 4
  %sub5660 = sub nsw i32 %3567, %3569
  %add5661 = add nsw i32 %sub5660, 1
  %cmp5662 = icmp slt i32 0, %add5661
  br i1 %cmp5662, label %cond.true.5663, label %cond.false.5670

cond.true.5663:                                   ; preds = %cond.end.5651
  %3570 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax5664 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3570, i32 0, i32 1
  %arrayidx5665 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5664, i32 0, i64 0
  %3571 = load i32, i32* %arrayidx5665, align 4
  %3572 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin5666 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3572, i32 0, i32 0
  %arrayidx5667 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5666, i32 0, i64 0
  %3573 = load i32, i32* %arrayidx5667, align 4
  %sub5668 = sub nsw i32 %3571, %3573
  %add5669 = add nsw i32 %sub5668, 1
  br label %cond.end.5671

cond.false.5670:                                  ; preds = %cond.end.5651
  br label %cond.end.5671

cond.end.5671:                                    ; preds = %cond.false.5670, %cond.true.5663
  %cond5672 = phi i32 [ %add5669, %cond.true.5663 ], [ 0, %cond.false.5670 ]
  %mul5673 = mul nsw i32 %3565, %cond5672
  %3574 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax5674 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3574, i32 0, i32 1
  %arrayidx5675 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5674, i32 0, i64 1
  %3575 = load i32, i32* %arrayidx5675, align 4
  %3576 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin5676 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3576, i32 0, i32 0
  %arrayidx5677 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5676, i32 0, i64 1
  %3577 = load i32, i32* %arrayidx5677, align 4
  %sub5678 = sub nsw i32 %3575, %3577
  %add5679 = add nsw i32 %sub5678, 1
  %cmp5680 = icmp slt i32 0, %add5679
  br i1 %cmp5680, label %cond.true.5681, label %cond.false.5688

cond.true.5681:                                   ; preds = %cond.end.5671
  %3578 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imax5682 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3578, i32 0, i32 1
  %arrayidx5683 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5682, i32 0, i64 1
  %3579 = load i32, i32* %arrayidx5683, align 4
  %3580 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %x_data_box, align 8
  %imin5684 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3580, i32 0, i32 0
  %arrayidx5685 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5684, i32 0, i64 1
  %3581 = load i32, i32* %arrayidx5685, align 4
  %sub5686 = sub nsw i32 %3579, %3581
  %add5687 = add nsw i32 %sub5686, 1
  br label %cond.end.5689

cond.false.5688:                                  ; preds = %cond.end.5671
  br label %cond.end.5689

cond.end.5689:                                    ; preds = %cond.false.5688, %cond.true.5681
  %cond5690 = phi i32 [ %add5687, %cond.true.5681 ], [ 0, %cond.false.5688 ]
  %mul5691 = mul nsw i32 %mul5673, %cond5690
  store i32 %mul5691, i32* %hypre__sz25654, align 4
  %3582 = load i32*, i32** %stride, align 8
  %arrayidx5693 = getelementptr inbounds i32, i32* %3582, i64 0
  %3583 = load i32, i32* %arrayidx5693, align 4
  store i32 %3583, i32* %hypre__sx35692, align 4
  %3584 = load i32*, i32** %stride, align 8
  %arrayidx5695 = getelementptr inbounds i32, i32* %3584, i64 1
  %3585 = load i32, i32* %arrayidx5695, align 4
  %3586 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax5696 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3586, i32 0, i32 1
  %arrayidx5697 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5696, i32 0, i64 0
  %3587 = load i32, i32* %arrayidx5697, align 4
  %3588 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin5698 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3588, i32 0, i32 0
  %arrayidx5699 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5698, i32 0, i64 0
  %3589 = load i32, i32* %arrayidx5699, align 4
  %sub5700 = sub nsw i32 %3587, %3589
  %add5701 = add nsw i32 %sub5700, 1
  %cmp5702 = icmp slt i32 0, %add5701
  br i1 %cmp5702, label %cond.true.5703, label %cond.false.5710

cond.true.5703:                                   ; preds = %cond.end.5689
  %3590 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax5704 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3590, i32 0, i32 1
  %arrayidx5705 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5704, i32 0, i64 0
  %3591 = load i32, i32* %arrayidx5705, align 4
  %3592 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin5706 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3592, i32 0, i32 0
  %arrayidx5707 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5706, i32 0, i64 0
  %3593 = load i32, i32* %arrayidx5707, align 4
  %sub5708 = sub nsw i32 %3591, %3593
  %add5709 = add nsw i32 %sub5708, 1
  br label %cond.end.5711

cond.false.5710:                                  ; preds = %cond.end.5689
  br label %cond.end.5711

cond.end.5711:                                    ; preds = %cond.false.5710, %cond.true.5703
  %cond5712 = phi i32 [ %add5709, %cond.true.5703 ], [ 0, %cond.false.5710 ]
  %mul5713 = mul nsw i32 %3585, %cond5712
  store i32 %mul5713, i32* %hypre__sy35694, align 4
  %3594 = load i32*, i32** %stride, align 8
  %arrayidx5715 = getelementptr inbounds i32, i32* %3594, i64 2
  %3595 = load i32, i32* %arrayidx5715, align 4
  %3596 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax5716 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3596, i32 0, i32 1
  %arrayidx5717 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5716, i32 0, i64 0
  %3597 = load i32, i32* %arrayidx5717, align 4
  %3598 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin5718 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3598, i32 0, i32 0
  %arrayidx5719 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5718, i32 0, i64 0
  %3599 = load i32, i32* %arrayidx5719, align 4
  %sub5720 = sub nsw i32 %3597, %3599
  %add5721 = add nsw i32 %sub5720, 1
  %cmp5722 = icmp slt i32 0, %add5721
  br i1 %cmp5722, label %cond.true.5723, label %cond.false.5730

cond.true.5723:                                   ; preds = %cond.end.5711
  %3600 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax5724 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3600, i32 0, i32 1
  %arrayidx5725 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5724, i32 0, i64 0
  %3601 = load i32, i32* %arrayidx5725, align 4
  %3602 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin5726 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3602, i32 0, i32 0
  %arrayidx5727 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5726, i32 0, i64 0
  %3603 = load i32, i32* %arrayidx5727, align 4
  %sub5728 = sub nsw i32 %3601, %3603
  %add5729 = add nsw i32 %sub5728, 1
  br label %cond.end.5731

cond.false.5730:                                  ; preds = %cond.end.5711
  br label %cond.end.5731

cond.end.5731:                                    ; preds = %cond.false.5730, %cond.true.5723
  %cond5732 = phi i32 [ %add5729, %cond.true.5723 ], [ 0, %cond.false.5730 ]
  %mul5733 = mul nsw i32 %3595, %cond5732
  %3604 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax5734 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3604, i32 0, i32 1
  %arrayidx5735 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5734, i32 0, i64 1
  %3605 = load i32, i32* %arrayidx5735, align 4
  %3606 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin5736 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3606, i32 0, i32 0
  %arrayidx5737 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5736, i32 0, i64 1
  %3607 = load i32, i32* %arrayidx5737, align 4
  %sub5738 = sub nsw i32 %3605, %3607
  %add5739 = add nsw i32 %sub5738, 1
  %cmp5740 = icmp slt i32 0, %add5739
  br i1 %cmp5740, label %cond.true.5741, label %cond.false.5748

cond.true.5741:                                   ; preds = %cond.end.5731
  %3608 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax5742 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3608, i32 0, i32 1
  %arrayidx5743 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5742, i32 0, i64 1
  %3609 = load i32, i32* %arrayidx5743, align 4
  %3610 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin5744 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3610, i32 0, i32 0
  %arrayidx5745 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5744, i32 0, i64 1
  %3611 = load i32, i32* %arrayidx5745, align 4
  %sub5746 = sub nsw i32 %3609, %3611
  %add5747 = add nsw i32 %sub5746, 1
  br label %cond.end.5749

cond.false.5748:                                  ; preds = %cond.end.5731
  br label %cond.end.5749

cond.end.5749:                                    ; preds = %cond.false.5748, %cond.true.5741
  %cond5750 = phi i32 [ %add5747, %cond.true.5741 ], [ 0, %cond.false.5748 ]
  %mul5751 = mul nsw i32 %mul5733, %cond5750
  store i32 %mul5751, i32* %hypre__sz35714, align 4
  %arrayidx5753 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 0
  %3612 = load i32, i32* %arrayidx5753, align 4
  store i32 %3612, i32* %hypre__nx5752, align 4
  %arrayidx5755 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 1
  %3613 = load i32, i32* %arrayidx5755, align 4
  store i32 %3613, i32* %hypre__ny5754, align 4
  %arrayidx5757 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 2
  %3614 = load i32, i32* %arrayidx5757, align 4
  store i32 %3614, i32* %hypre__nz5756, align 4
  %3615 = load i32, i32* %hypre__nx5752, align 4
  store i32 %3615, i32* %hypre__mx5758, align 4
  %3616 = load i32, i32* %hypre__ny5754, align 4
  store i32 %3616, i32* %hypre__my5759, align 4
  %3617 = load i32, i32* %hypre__nz5756, align 4
  store i32 %3617, i32* %hypre__mz5760, align 4
  store i32 0, i32* %hypre__dir5761, align 4
  %3618 = load i32, i32* %hypre__nx5752, align 4
  store i32 %3618, i32* %hypre__max5762, align 4
  %3619 = load i32, i32* %hypre__ny5754, align 4
  %3620 = load i32, i32* %hypre__max5762, align 4
  %cmp5767 = icmp sgt i32 %3619, %3620
  br i1 %cmp5767, label %if.then.5768, label %if.end.5769

if.then.5768:                                     ; preds = %cond.end.5749
  store i32 1, i32* %hypre__dir5761, align 4
  %3621 = load i32, i32* %hypre__ny5754, align 4
  store i32 %3621, i32* %hypre__max5762, align 4
  br label %if.end.5769

if.end.5769:                                      ; preds = %if.then.5768, %cond.end.5749
  %3622 = load i32, i32* %hypre__nz5756, align 4
  %3623 = load i32, i32* %hypre__max5762, align 4
  %cmp5770 = icmp sgt i32 %3622, %3623
  br i1 %cmp5770, label %if.then.5771, label %if.end.5772

if.then.5771:                                     ; preds = %if.end.5769
  store i32 2, i32* %hypre__dir5761, align 4
  %3624 = load i32, i32* %hypre__nz5756, align 4
  store i32 %3624, i32* %hypre__max5762, align 4
  br label %if.end.5772

if.end.5772:                                      ; preds = %if.then.5771, %if.end.5769
  store i32 1, i32* %hypre__num_blocks5766, align 4
  %3625 = load i32, i32* %hypre__max5762, align 4
  %3626 = load i32, i32* %hypre__num_blocks5766, align 4
  %cmp5773 = icmp slt i32 %3625, %3626
  br i1 %cmp5773, label %if.then.5774, label %if.end.5775

if.then.5774:                                     ; preds = %if.end.5772
  %3627 = load i32, i32* %hypre__max5762, align 4
  store i32 %3627, i32* %hypre__num_blocks5766, align 4
  br label %if.end.5775

if.end.5775:                                      ; preds = %if.then.5774, %if.end.5772
  %3628 = load i32, i32* %hypre__num_blocks5766, align 4
  %cmp5776 = icmp sgt i32 %3628, 0
  br i1 %cmp5776, label %if.then.5777, label %if.end.5780

if.then.5777:                                     ; preds = %if.end.5775
  %3629 = load i32, i32* %hypre__max5762, align 4
  %3630 = load i32, i32* %hypre__num_blocks5766, align 4
  %div5778 = sdiv i32 %3629, %3630
  store i32 %div5778, i32* %hypre__div5763, align 4
  %3631 = load i32, i32* %hypre__max5762, align 4
  %3632 = load i32, i32* %hypre__num_blocks5766, align 4
  %rem5779 = srem i32 %3631, %3632
  store i32 %rem5779, i32* %hypre__mod5764, align 4
  br label %if.end.5780

if.end.5780:                                      ; preds = %if.then.5777, %if.end.5775
  store i32 0, i32* %hypre__block5765, align 4
  br label %for.cond.5781

for.cond.5781:                                    ; preds = %for.inc.5894, %if.end.5780
  %3633 = load i32, i32* %hypre__block5765, align 4
  %3634 = load i32, i32* %hypre__num_blocks5766, align 4
  %cmp5782 = icmp slt i32 %3633, %3634
  br i1 %cmp5782, label %for.body.5783, label %for.end.5896

for.body.5783:                                    ; preds = %for.cond.5781
  store i32 0, i32* %loopi, align 4
  store i32 0, i32* %loopj, align 4
  store i32 0, i32* %loopk, align 4
  %3635 = load i32, i32* %hypre__mx5758, align 4
  store i32 %3635, i32* %hypre__nx5752, align 4
  %3636 = load i32, i32* %hypre__my5759, align 4
  store i32 %3636, i32* %hypre__ny5754, align 4
  %3637 = load i32, i32* %hypre__mz5760, align 4
  store i32 %3637, i32* %hypre__nz5756, align 4
  %3638 = load i32, i32* %hypre__num_blocks5766, align 4
  %cmp5784 = icmp sgt i32 %3638, 1
  br i1 %cmp5784, label %if.then.5785, label %if.end.5827

if.then.5785:                                     ; preds = %for.body.5783
  %3639 = load i32, i32* %hypre__dir5761, align 4
  %cmp5786 = icmp eq i32 %3639, 0
  br i1 %cmp5786, label %if.then.5787, label %if.else.5798

if.then.5787:                                     ; preds = %if.then.5785
  %3640 = load i32, i32* %hypre__block5765, align 4
  %3641 = load i32, i32* %hypre__div5763, align 4
  %mul5788 = mul nsw i32 %3640, %3641
  %3642 = load i32, i32* %hypre__mod5764, align 4
  %3643 = load i32, i32* %hypre__block5765, align 4
  %cmp5789 = icmp slt i32 %3642, %3643
  br i1 %cmp5789, label %cond.true.5790, label %cond.false.5791

cond.true.5790:                                   ; preds = %if.then.5787
  %3644 = load i32, i32* %hypre__mod5764, align 4
  br label %cond.end.5792

cond.false.5791:                                  ; preds = %if.then.5787
  %3645 = load i32, i32* %hypre__block5765, align 4
  br label %cond.end.5792

cond.end.5792:                                    ; preds = %cond.false.5791, %cond.true.5790
  %cond5793 = phi i32 [ %3644, %cond.true.5790 ], [ %3645, %cond.false.5791 ]
  %add5794 = add nsw i32 %mul5788, %cond5793
  store i32 %add5794, i32* %loopi, align 4
  %3646 = load i32, i32* %hypre__div5763, align 4
  %3647 = load i32, i32* %hypre__mod5764, align 4
  %3648 = load i32, i32* %hypre__block5765, align 4
  %cmp5795 = icmp sgt i32 %3647, %3648
  %cond5796 = select i1 %cmp5795, i32 1, i32 0
  %add5797 = add nsw i32 %3646, %cond5796
  store i32 %add5797, i32* %hypre__nx5752, align 4
  br label %if.end.5826

if.else.5798:                                     ; preds = %if.then.5785
  %3649 = load i32, i32* %hypre__dir5761, align 4
  %cmp5799 = icmp eq i32 %3649, 1
  br i1 %cmp5799, label %if.then.5800, label %if.else.5811

if.then.5800:                                     ; preds = %if.else.5798
  %3650 = load i32, i32* %hypre__block5765, align 4
  %3651 = load i32, i32* %hypre__div5763, align 4
  %mul5801 = mul nsw i32 %3650, %3651
  %3652 = load i32, i32* %hypre__mod5764, align 4
  %3653 = load i32, i32* %hypre__block5765, align 4
  %cmp5802 = icmp slt i32 %3652, %3653
  br i1 %cmp5802, label %cond.true.5803, label %cond.false.5804

cond.true.5803:                                   ; preds = %if.then.5800
  %3654 = load i32, i32* %hypre__mod5764, align 4
  br label %cond.end.5805

cond.false.5804:                                  ; preds = %if.then.5800
  %3655 = load i32, i32* %hypre__block5765, align 4
  br label %cond.end.5805

cond.end.5805:                                    ; preds = %cond.false.5804, %cond.true.5803
  %cond5806 = phi i32 [ %3654, %cond.true.5803 ], [ %3655, %cond.false.5804 ]
  %add5807 = add nsw i32 %mul5801, %cond5806
  store i32 %add5807, i32* %loopj, align 4
  %3656 = load i32, i32* %hypre__div5763, align 4
  %3657 = load i32, i32* %hypre__mod5764, align 4
  %3658 = load i32, i32* %hypre__block5765, align 4
  %cmp5808 = icmp sgt i32 %3657, %3658
  %cond5809 = select i1 %cmp5808, i32 1, i32 0
  %add5810 = add nsw i32 %3656, %cond5809
  store i32 %add5810, i32* %hypre__ny5754, align 4
  br label %if.end.5825

if.else.5811:                                     ; preds = %if.else.5798
  %3659 = load i32, i32* %hypre__dir5761, align 4
  %cmp5812 = icmp eq i32 %3659, 2
  br i1 %cmp5812, label %if.then.5813, label %if.end.5824

if.then.5813:                                     ; preds = %if.else.5811
  %3660 = load i32, i32* %hypre__block5765, align 4
  %3661 = load i32, i32* %hypre__div5763, align 4
  %mul5814 = mul nsw i32 %3660, %3661
  %3662 = load i32, i32* %hypre__mod5764, align 4
  %3663 = load i32, i32* %hypre__block5765, align 4
  %cmp5815 = icmp slt i32 %3662, %3663
  br i1 %cmp5815, label %cond.true.5816, label %cond.false.5817

cond.true.5816:                                   ; preds = %if.then.5813
  %3664 = load i32, i32* %hypre__mod5764, align 4
  br label %cond.end.5818

cond.false.5817:                                  ; preds = %if.then.5813
  %3665 = load i32, i32* %hypre__block5765, align 4
  br label %cond.end.5818

cond.end.5818:                                    ; preds = %cond.false.5817, %cond.true.5816
  %cond5819 = phi i32 [ %3664, %cond.true.5816 ], [ %3665, %cond.false.5817 ]
  %add5820 = add nsw i32 %mul5814, %cond5819
  store i32 %add5820, i32* %loopk, align 4
  %3666 = load i32, i32* %hypre__div5763, align 4
  %3667 = load i32, i32* %hypre__mod5764, align 4
  %3668 = load i32, i32* %hypre__block5765, align 4
  %cmp5821 = icmp sgt i32 %3667, %3668
  %cond5822 = select i1 %cmp5821, i32 1, i32 0
  %add5823 = add nsw i32 %3666, %cond5822
  store i32 %add5823, i32* %hypre__nz5756, align 4
  br label %if.end.5824

if.end.5824:                                      ; preds = %cond.end.5818, %if.else.5811
  br label %if.end.5825

if.end.5825:                                      ; preds = %if.end.5824, %cond.end.5805
  br label %if.end.5826

if.end.5826:                                      ; preds = %if.end.5825, %cond.end.5792
  br label %if.end.5827

if.end.5827:                                      ; preds = %if.end.5826, %for.body.5783
  %3669 = load i32, i32* %hypre__i1start5419, align 4
  %3670 = load i32, i32* %loopi, align 4
  %3671 = load i32, i32* %hypre__sx15572, align 4
  %mul5828 = mul nsw i32 %3670, %3671
  %add5829 = add nsw i32 %3669, %mul5828
  %3672 = load i32, i32* %loopj, align 4
  %3673 = load i32, i32* %hypre__sy15574, align 4
  %mul5830 = mul nsw i32 %3672, %3673
  %add5831 = add nsw i32 %add5829, %mul5830
  %3674 = load i32, i32* %loopk, align 4
  %3675 = load i32, i32* %hypre__sz15594, align 4
  %mul5832 = mul nsw i32 %3674, %3675
  %add5833 = add nsw i32 %add5831, %mul5832
  store i32 %add5833, i32* %Ai, align 4
  %3676 = load i32, i32* %hypre__i2start5470, align 4
  %3677 = load i32, i32* %loopi, align 4
  %3678 = load i32, i32* %hypre__sx25632, align 4
  %mul5834 = mul nsw i32 %3677, %3678
  %add5835 = add nsw i32 %3676, %mul5834
  %3679 = load i32, i32* %loopj, align 4
  %3680 = load i32, i32* %hypre__sy25634, align 4
  %mul5836 = mul nsw i32 %3679, %3680
  %add5837 = add nsw i32 %add5835, %mul5836
  %3681 = load i32, i32* %loopk, align 4
  %3682 = load i32, i32* %hypre__sz25654, align 4
  %mul5838 = mul nsw i32 %3681, %3682
  %add5839 = add nsw i32 %add5837, %mul5838
  store i32 %add5839, i32* %xi, align 4
  %3683 = load i32, i32* %hypre__i3start5521, align 4
  %3684 = load i32, i32* %loopi, align 4
  %3685 = load i32, i32* %hypre__sx35692, align 4
  %mul5840 = mul nsw i32 %3684, %3685
  %add5841 = add nsw i32 %3683, %mul5840
  %3686 = load i32, i32* %loopj, align 4
  %3687 = load i32, i32* %hypre__sy35694, align 4
  %mul5842 = mul nsw i32 %3686, %3687
  %add5843 = add nsw i32 %add5841, %mul5842
  %3688 = load i32, i32* %loopk, align 4
  %3689 = load i32, i32* %hypre__sz35714, align 4
  %mul5844 = mul nsw i32 %3688, %3689
  %add5845 = add nsw i32 %add5843, %mul5844
  store i32 %add5845, i32* %yi, align 4
  store i32 0, i32* %loopk, align 4
  br label %for.cond.5846

for.cond.5846:                                    ; preds = %for.inc.5891, %if.end.5827
  %3690 = load i32, i32* %loopk, align 4
  %3691 = load i32, i32* %hypre__nz5756, align 4
  %cmp5847 = icmp slt i32 %3690, %3691
  br i1 %cmp5847, label %for.body.5848, label %for.end.5893

for.body.5848:                                    ; preds = %for.cond.5846
  store i32 0, i32* %loopj, align 4
  br label %for.cond.5849

for.cond.5849:                                    ; preds = %for.inc.5879, %for.body.5848
  %3692 = load i32, i32* %loopj, align 4
  %3693 = load i32, i32* %hypre__ny5754, align 4
  %cmp5850 = icmp slt i32 %3692, %3693
  br i1 %cmp5850, label %for.body.5851, label %for.end.5881

for.body.5851:                                    ; preds = %for.cond.5849
  store i32 0, i32* %loopi, align 4
  br label %for.cond.5852

for.cond.5852:                                    ; preds = %for.inc.5867, %for.body.5851
  %3694 = load i32, i32* %loopi, align 4
  %3695 = load i32, i32* %hypre__nx5752, align 4
  %cmp5853 = icmp slt i32 %3694, %3695
  br i1 %cmp5853, label %for.body.5854, label %for.end.5869

for.body.5854:                                    ; preds = %for.cond.5852
  %3696 = load i32, i32* %Ai, align 4
  %idxprom5855 = sext i32 %3696 to i64
  %3697 = load double*, double** %Ap0, align 8
  %arrayidx5856 = getelementptr inbounds double, double* %3697, i64 %idxprom5855
  %3698 = load double, double* %arrayidx5856, align 8
  %3699 = load i32, i32* %xi, align 4
  %3700 = load i32, i32* %xoff0, align 4
  %add5857 = add nsw i32 %3699, %3700
  %idxprom5858 = sext i32 %add5857 to i64
  %3701 = load double*, double** %xp, align 8
  %arrayidx5859 = getelementptr inbounds double, double* %3701, i64 %idxprom5858
  %3702 = load double, double* %arrayidx5859, align 8
  %mul5860 = fmul double %3698, %3702
  %3703 = load i32, i32* %yi, align 4
  %idxprom5861 = sext i32 %3703 to i64
  %3704 = load double*, double** %yp, align 8
  %arrayidx5862 = getelementptr inbounds double, double* %3704, i64 %idxprom5861
  %3705 = load double, double* %arrayidx5862, align 8
  %add5863 = fadd double %3705, %mul5860
  store double %add5863, double* %arrayidx5862, align 8
  %3706 = load i32, i32* %hypre__sx15572, align 4
  %3707 = load i32, i32* %Ai, align 4
  %add5864 = add nsw i32 %3707, %3706
  store i32 %add5864, i32* %Ai, align 4
  %3708 = load i32, i32* %hypre__sx25632, align 4
  %3709 = load i32, i32* %xi, align 4
  %add5865 = add nsw i32 %3709, %3708
  store i32 %add5865, i32* %xi, align 4
  %3710 = load i32, i32* %hypre__sx35692, align 4
  %3711 = load i32, i32* %yi, align 4
  %add5866 = add nsw i32 %3711, %3710
  store i32 %add5866, i32* %yi, align 4
  br label %for.inc.5867

for.inc.5867:                                     ; preds = %for.body.5854
  %3712 = load i32, i32* %loopi, align 4
  %inc5868 = add nsw i32 %3712, 1
  store i32 %inc5868, i32* %loopi, align 4
  br label %for.cond.5852

for.end.5869:                                     ; preds = %for.cond.5852
  %3713 = load i32, i32* %hypre__sy15574, align 4
  %3714 = load i32, i32* %hypre__nx5752, align 4
  %3715 = load i32, i32* %hypre__sx15572, align 4
  %mul5870 = mul nsw i32 %3714, %3715
  %sub5871 = sub nsw i32 %3713, %mul5870
  %3716 = load i32, i32* %Ai, align 4
  %add5872 = add nsw i32 %3716, %sub5871
  store i32 %add5872, i32* %Ai, align 4
  %3717 = load i32, i32* %hypre__sy25634, align 4
  %3718 = load i32, i32* %hypre__nx5752, align 4
  %3719 = load i32, i32* %hypre__sx25632, align 4
  %mul5873 = mul nsw i32 %3718, %3719
  %sub5874 = sub nsw i32 %3717, %mul5873
  %3720 = load i32, i32* %xi, align 4
  %add5875 = add nsw i32 %3720, %sub5874
  store i32 %add5875, i32* %xi, align 4
  %3721 = load i32, i32* %hypre__sy35694, align 4
  %3722 = load i32, i32* %hypre__nx5752, align 4
  %3723 = load i32, i32* %hypre__sx35692, align 4
  %mul5876 = mul nsw i32 %3722, %3723
  %sub5877 = sub nsw i32 %3721, %mul5876
  %3724 = load i32, i32* %yi, align 4
  %add5878 = add nsw i32 %3724, %sub5877
  store i32 %add5878, i32* %yi, align 4
  br label %for.inc.5879

for.inc.5879:                                     ; preds = %for.end.5869
  %3725 = load i32, i32* %loopj, align 4
  %inc5880 = add nsw i32 %3725, 1
  store i32 %inc5880, i32* %loopj, align 4
  br label %for.cond.5849

for.end.5881:                                     ; preds = %for.cond.5849
  %3726 = load i32, i32* %hypre__sz15594, align 4
  %3727 = load i32, i32* %hypre__ny5754, align 4
  %3728 = load i32, i32* %hypre__sy15574, align 4
  %mul5882 = mul nsw i32 %3727, %3728
  %sub5883 = sub nsw i32 %3726, %mul5882
  %3729 = load i32, i32* %Ai, align 4
  %add5884 = add nsw i32 %3729, %sub5883
  store i32 %add5884, i32* %Ai, align 4
  %3730 = load i32, i32* %hypre__sz25654, align 4
  %3731 = load i32, i32* %hypre__ny5754, align 4
  %3732 = load i32, i32* %hypre__sy25634, align 4
  %mul5885 = mul nsw i32 %3731, %3732
  %sub5886 = sub nsw i32 %3730, %mul5885
  %3733 = load i32, i32* %xi, align 4
  %add5887 = add nsw i32 %3733, %sub5886
  store i32 %add5887, i32* %xi, align 4
  %3734 = load i32, i32* %hypre__sz35714, align 4
  %3735 = load i32, i32* %hypre__ny5754, align 4
  %3736 = load i32, i32* %hypre__sy35694, align 4
  %mul5888 = mul nsw i32 %3735, %3736
  %sub5889 = sub nsw i32 %3734, %mul5888
  %3737 = load i32, i32* %yi, align 4
  %add5890 = add nsw i32 %3737, %sub5889
  store i32 %add5890, i32* %yi, align 4
  br label %for.inc.5891

for.inc.5891:                                     ; preds = %for.end.5881
  %3738 = load i32, i32* %loopk, align 4
  %inc5892 = add nsw i32 %3738, 1
  store i32 %inc5892, i32* %loopk, align 4
  br label %for.cond.5846

for.end.5893:                                     ; preds = %for.cond.5846
  br label %for.inc.5894

for.inc.5894:                                     ; preds = %for.end.5893
  %3739 = load i32, i32* %hypre__block5765, align 4
  %inc5895 = add nsw i32 %3739, 1
  store i32 %inc5895, i32* %hypre__block5765, align 4
  br label %for.cond.5781

for.end.5896:                                     ; preds = %for.cond.5781
  br label %sw.epilog.5897

sw.epilog.5897:                                   ; preds = %cond.end.751, %for.end.5896, %for.end.5358, %for.end.4754, %for.end.4084, %for.end.3348, %for.end.2546, %for.end.1678
  br label %for.inc.5898

for.inc.5898:                                     ; preds = %sw.epilog.5897
  %3740 = load i32, i32* %si, align 4
  %add5899 = add nsw i32 %3740, 7
  store i32 %add5899, i32* %si, align 4
  br label %for.cond.743

for.end.5900:                                     ; preds = %for.cond.743
  %3741 = load double, double* %alpha.addr, align 8
  %cmp5901 = fcmp une double %3741, 1.000000e+00
  br i1 %cmp5901, label %if.then.5902, label %if.end.6127

if.then.5902:                                     ; preds = %for.end.5900
  %3742 = load i32*, i32** %start, align 8
  %arrayidx5904 = getelementptr inbounds i32, i32* %3742, i64 0
  %3743 = load i32, i32* %arrayidx5904, align 4
  %3744 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin5905 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3744, i32 0, i32 0
  %arrayidx5906 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5905, i32 0, i64 0
  %3745 = load i32, i32* %arrayidx5906, align 4
  %sub5907 = sub nsw i32 %3743, %3745
  %3746 = load i32*, i32** %start, align 8
  %arrayidx5908 = getelementptr inbounds i32, i32* %3746, i64 1
  %3747 = load i32, i32* %arrayidx5908, align 4
  %3748 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin5909 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3748, i32 0, i32 0
  %arrayidx5910 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5909, i32 0, i64 1
  %3749 = load i32, i32* %arrayidx5910, align 4
  %sub5911 = sub nsw i32 %3747, %3749
  %3750 = load i32*, i32** %start, align 8
  %arrayidx5912 = getelementptr inbounds i32, i32* %3750, i64 2
  %3751 = load i32, i32* %arrayidx5912, align 4
  %3752 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin5913 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3752, i32 0, i32 0
  %arrayidx5914 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5913, i32 0, i64 2
  %3753 = load i32, i32* %arrayidx5914, align 4
  %sub5915 = sub nsw i32 %3751, %3753
  %3754 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax5916 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3754, i32 0, i32 1
  %arrayidx5917 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5916, i32 0, i64 1
  %3755 = load i32, i32* %arrayidx5917, align 4
  %3756 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin5918 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3756, i32 0, i32 0
  %arrayidx5919 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5918, i32 0, i64 1
  %3757 = load i32, i32* %arrayidx5919, align 4
  %sub5920 = sub nsw i32 %3755, %3757
  %add5921 = add nsw i32 %sub5920, 1
  %cmp5922 = icmp slt i32 0, %add5921
  br i1 %cmp5922, label %cond.true.5923, label %cond.false.5930

cond.true.5923:                                   ; preds = %if.then.5902
  %3758 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax5924 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3758, i32 0, i32 1
  %arrayidx5925 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5924, i32 0, i64 1
  %3759 = load i32, i32* %arrayidx5925, align 4
  %3760 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin5926 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3760, i32 0, i32 0
  %arrayidx5927 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5926, i32 0, i64 1
  %3761 = load i32, i32* %arrayidx5927, align 4
  %sub5928 = sub nsw i32 %3759, %3761
  %add5929 = add nsw i32 %sub5928, 1
  br label %cond.end.5931

cond.false.5930:                                  ; preds = %if.then.5902
  br label %cond.end.5931

cond.end.5931:                                    ; preds = %cond.false.5930, %cond.true.5923
  %cond5932 = phi i32 [ %add5929, %cond.true.5923 ], [ 0, %cond.false.5930 ]
  %mul5933 = mul nsw i32 %sub5915, %cond5932
  %add5934 = add nsw i32 %sub5911, %mul5933
  %3762 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax5935 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3762, i32 0, i32 1
  %arrayidx5936 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5935, i32 0, i64 0
  %3763 = load i32, i32* %arrayidx5936, align 4
  %3764 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin5937 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3764, i32 0, i32 0
  %arrayidx5938 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5937, i32 0, i64 0
  %3765 = load i32, i32* %arrayidx5938, align 4
  %sub5939 = sub nsw i32 %3763, %3765
  %add5940 = add nsw i32 %sub5939, 1
  %cmp5941 = icmp slt i32 0, %add5940
  br i1 %cmp5941, label %cond.true.5942, label %cond.false.5949

cond.true.5942:                                   ; preds = %cond.end.5931
  %3766 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax5943 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3766, i32 0, i32 1
  %arrayidx5944 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5943, i32 0, i64 0
  %3767 = load i32, i32* %arrayidx5944, align 4
  %3768 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin5945 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3768, i32 0, i32 0
  %arrayidx5946 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5945, i32 0, i64 0
  %3769 = load i32, i32* %arrayidx5946, align 4
  %sub5947 = sub nsw i32 %3767, %3769
  %add5948 = add nsw i32 %sub5947, 1
  br label %cond.end.5950

cond.false.5949:                                  ; preds = %cond.end.5931
  br label %cond.end.5950

cond.end.5950:                                    ; preds = %cond.false.5949, %cond.true.5942
  %cond5951 = phi i32 [ %add5948, %cond.true.5942 ], [ 0, %cond.false.5949 ]
  %mul5952 = mul nsw i32 %add5934, %cond5951
  %add5953 = add nsw i32 %sub5907, %mul5952
  store i32 %add5953, i32* %hypre__i1start5903, align 4
  %3770 = load i32*, i32** %stride, align 8
  %arrayidx5955 = getelementptr inbounds i32, i32* %3770, i64 0
  %3771 = load i32, i32* %arrayidx5955, align 4
  store i32 %3771, i32* %hypre__sx15954, align 4
  %3772 = load i32*, i32** %stride, align 8
  %arrayidx5957 = getelementptr inbounds i32, i32* %3772, i64 1
  %3773 = load i32, i32* %arrayidx5957, align 4
  %3774 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax5958 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3774, i32 0, i32 1
  %arrayidx5959 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5958, i32 0, i64 0
  %3775 = load i32, i32* %arrayidx5959, align 4
  %3776 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin5960 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3776, i32 0, i32 0
  %arrayidx5961 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5960, i32 0, i64 0
  %3777 = load i32, i32* %arrayidx5961, align 4
  %sub5962 = sub nsw i32 %3775, %3777
  %add5963 = add nsw i32 %sub5962, 1
  %cmp5964 = icmp slt i32 0, %add5963
  br i1 %cmp5964, label %cond.true.5965, label %cond.false.5972

cond.true.5965:                                   ; preds = %cond.end.5950
  %3778 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax5966 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3778, i32 0, i32 1
  %arrayidx5967 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5966, i32 0, i64 0
  %3779 = load i32, i32* %arrayidx5967, align 4
  %3780 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin5968 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3780, i32 0, i32 0
  %arrayidx5969 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5968, i32 0, i64 0
  %3781 = load i32, i32* %arrayidx5969, align 4
  %sub5970 = sub nsw i32 %3779, %3781
  %add5971 = add nsw i32 %sub5970, 1
  br label %cond.end.5973

cond.false.5972:                                  ; preds = %cond.end.5950
  br label %cond.end.5973

cond.end.5973:                                    ; preds = %cond.false.5972, %cond.true.5965
  %cond5974 = phi i32 [ %add5971, %cond.true.5965 ], [ 0, %cond.false.5972 ]
  %mul5975 = mul nsw i32 %3773, %cond5974
  store i32 %mul5975, i32* %hypre__sy15956, align 4
  %3782 = load i32*, i32** %stride, align 8
  %arrayidx5977 = getelementptr inbounds i32, i32* %3782, i64 2
  %3783 = load i32, i32* %arrayidx5977, align 4
  %3784 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax5978 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3784, i32 0, i32 1
  %arrayidx5979 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5978, i32 0, i64 0
  %3785 = load i32, i32* %arrayidx5979, align 4
  %3786 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin5980 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3786, i32 0, i32 0
  %arrayidx5981 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5980, i32 0, i64 0
  %3787 = load i32, i32* %arrayidx5981, align 4
  %sub5982 = sub nsw i32 %3785, %3787
  %add5983 = add nsw i32 %sub5982, 1
  %cmp5984 = icmp slt i32 0, %add5983
  br i1 %cmp5984, label %cond.true.5985, label %cond.false.5992

cond.true.5985:                                   ; preds = %cond.end.5973
  %3788 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax5986 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3788, i32 0, i32 1
  %arrayidx5987 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5986, i32 0, i64 0
  %3789 = load i32, i32* %arrayidx5987, align 4
  %3790 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin5988 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3790, i32 0, i32 0
  %arrayidx5989 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5988, i32 0, i64 0
  %3791 = load i32, i32* %arrayidx5989, align 4
  %sub5990 = sub nsw i32 %3789, %3791
  %add5991 = add nsw i32 %sub5990, 1
  br label %cond.end.5993

cond.false.5992:                                  ; preds = %cond.end.5973
  br label %cond.end.5993

cond.end.5993:                                    ; preds = %cond.false.5992, %cond.true.5985
  %cond5994 = phi i32 [ %add5991, %cond.true.5985 ], [ 0, %cond.false.5992 ]
  %mul5995 = mul nsw i32 %3783, %cond5994
  %3792 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax5996 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3792, i32 0, i32 1
  %arrayidx5997 = getelementptr inbounds [3 x i32], [3 x i32]* %imax5996, i32 0, i64 1
  %3793 = load i32, i32* %arrayidx5997, align 4
  %3794 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin5998 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3794, i32 0, i32 0
  %arrayidx5999 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5998, i32 0, i64 1
  %3795 = load i32, i32* %arrayidx5999, align 4
  %sub6000 = sub nsw i32 %3793, %3795
  %add6001 = add nsw i32 %sub6000, 1
  %cmp6002 = icmp slt i32 0, %add6001
  br i1 %cmp6002, label %cond.true.6003, label %cond.false.6010

cond.true.6003:                                   ; preds = %cond.end.5993
  %3796 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imax6004 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3796, i32 0, i32 1
  %arrayidx6005 = getelementptr inbounds [3 x i32], [3 x i32]* %imax6004, i32 0, i64 1
  %3797 = load i32, i32* %arrayidx6005, align 4
  %3798 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %y_data_box, align 8
  %imin6006 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %3798, i32 0, i32 0
  %arrayidx6007 = getelementptr inbounds [3 x i32], [3 x i32]* %imin6006, i32 0, i64 1
  %3799 = load i32, i32* %arrayidx6007, align 4
  %sub6008 = sub nsw i32 %3797, %3799
  %add6009 = add nsw i32 %sub6008, 1
  br label %cond.end.6011

cond.false.6010:                                  ; preds = %cond.end.5993
  br label %cond.end.6011

cond.end.6011:                                    ; preds = %cond.false.6010, %cond.true.6003
  %cond6012 = phi i32 [ %add6009, %cond.true.6003 ], [ 0, %cond.false.6010 ]
  %mul6013 = mul nsw i32 %mul5995, %cond6012
  store i32 %mul6013, i32* %hypre__sz15976, align 4
  %arrayidx6015 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 0
  %3800 = load i32, i32* %arrayidx6015, align 4
  store i32 %3800, i32* %hypre__nx6014, align 4
  %arrayidx6017 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 1
  %3801 = load i32, i32* %arrayidx6017, align 4
  store i32 %3801, i32* %hypre__ny6016, align 4
  %arrayidx6019 = getelementptr inbounds [3 x i32], [3 x i32]* %loop_size, i32 0, i64 2
  %3802 = load i32, i32* %arrayidx6019, align 4
  store i32 %3802, i32* %hypre__nz6018, align 4
  %3803 = load i32, i32* %hypre__nx6014, align 4
  store i32 %3803, i32* %hypre__mx6020, align 4
  %3804 = load i32, i32* %hypre__ny6016, align 4
  store i32 %3804, i32* %hypre__my6021, align 4
  %3805 = load i32, i32* %hypre__nz6018, align 4
  store i32 %3805, i32* %hypre__mz6022, align 4
  store i32 0, i32* %hypre__dir6023, align 4
  %3806 = load i32, i32* %hypre__nx6014, align 4
  store i32 %3806, i32* %hypre__max6024, align 4
  %3807 = load i32, i32* %hypre__ny6016, align 4
  %3808 = load i32, i32* %hypre__max6024, align 4
  %cmp6029 = icmp sgt i32 %3807, %3808
  br i1 %cmp6029, label %if.then.6030, label %if.end.6031

if.then.6030:                                     ; preds = %cond.end.6011
  store i32 1, i32* %hypre__dir6023, align 4
  %3809 = load i32, i32* %hypre__ny6016, align 4
  store i32 %3809, i32* %hypre__max6024, align 4
  br label %if.end.6031

if.end.6031:                                      ; preds = %if.then.6030, %cond.end.6011
  %3810 = load i32, i32* %hypre__nz6018, align 4
  %3811 = load i32, i32* %hypre__max6024, align 4
  %cmp6032 = icmp sgt i32 %3810, %3811
  br i1 %cmp6032, label %if.then.6033, label %if.end.6034

if.then.6033:                                     ; preds = %if.end.6031
  store i32 2, i32* %hypre__dir6023, align 4
  %3812 = load i32, i32* %hypre__nz6018, align 4
  store i32 %3812, i32* %hypre__max6024, align 4
  br label %if.end.6034

if.end.6034:                                      ; preds = %if.then.6033, %if.end.6031
  store i32 1, i32* %hypre__num_blocks6028, align 4
  %3813 = load i32, i32* %hypre__max6024, align 4
  %3814 = load i32, i32* %hypre__num_blocks6028, align 4
  %cmp6035 = icmp slt i32 %3813, %3814
  br i1 %cmp6035, label %if.then.6036, label %if.end.6037

if.then.6036:                                     ; preds = %if.end.6034
  %3815 = load i32, i32* %hypre__max6024, align 4
  store i32 %3815, i32* %hypre__num_blocks6028, align 4
  br label %if.end.6037

if.end.6037:                                      ; preds = %if.then.6036, %if.end.6034
  %3816 = load i32, i32* %hypre__num_blocks6028, align 4
  %cmp6038 = icmp sgt i32 %3816, 0
  br i1 %cmp6038, label %if.then.6039, label %if.end.6042

if.then.6039:                                     ; preds = %if.end.6037
  %3817 = load i32, i32* %hypre__max6024, align 4
  %3818 = load i32, i32* %hypre__num_blocks6028, align 4
  %div6040 = sdiv i32 %3817, %3818
  store i32 %div6040, i32* %hypre__div6025, align 4
  %3819 = load i32, i32* %hypre__max6024, align 4
  %3820 = load i32, i32* %hypre__num_blocks6028, align 4
  %rem6041 = srem i32 %3819, %3820
  store i32 %rem6041, i32* %hypre__mod6026, align 4
  br label %if.end.6042

if.end.6042:                                      ; preds = %if.then.6039, %if.end.6037
  store i32 0, i32* %hypre__block6027, align 4
  br label %for.cond.6043

for.cond.6043:                                    ; preds = %for.inc.6124, %if.end.6042
  %3821 = load i32, i32* %hypre__block6027, align 4
  %3822 = load i32, i32* %hypre__num_blocks6028, align 4
  %cmp6044 = icmp slt i32 %3821, %3822
  br i1 %cmp6044, label %for.body.6045, label %for.end.6126

for.body.6045:                                    ; preds = %for.cond.6043
  store i32 0, i32* %loopi, align 4
  store i32 0, i32* %loopj, align 4
  store i32 0, i32* %loopk, align 4
  %3823 = load i32, i32* %hypre__mx6020, align 4
  store i32 %3823, i32* %hypre__nx6014, align 4
  %3824 = load i32, i32* %hypre__my6021, align 4
  store i32 %3824, i32* %hypre__ny6016, align 4
  %3825 = load i32, i32* %hypre__mz6022, align 4
  store i32 %3825, i32* %hypre__nz6018, align 4
  %3826 = load i32, i32* %hypre__num_blocks6028, align 4
  %cmp6046 = icmp sgt i32 %3826, 1
  br i1 %cmp6046, label %if.then.6047, label %if.end.6089

if.then.6047:                                     ; preds = %for.body.6045
  %3827 = load i32, i32* %hypre__dir6023, align 4
  %cmp6048 = icmp eq i32 %3827, 0
  br i1 %cmp6048, label %if.then.6049, label %if.else.6060

if.then.6049:                                     ; preds = %if.then.6047
  %3828 = load i32, i32* %hypre__block6027, align 4
  %3829 = load i32, i32* %hypre__div6025, align 4
  %mul6050 = mul nsw i32 %3828, %3829
  %3830 = load i32, i32* %hypre__mod6026, align 4
  %3831 = load i32, i32* %hypre__block6027, align 4
  %cmp6051 = icmp slt i32 %3830, %3831
  br i1 %cmp6051, label %cond.true.6052, label %cond.false.6053

cond.true.6052:                                   ; preds = %if.then.6049
  %3832 = load i32, i32* %hypre__mod6026, align 4
  br label %cond.end.6054

cond.false.6053:                                  ; preds = %if.then.6049
  %3833 = load i32, i32* %hypre__block6027, align 4
  br label %cond.end.6054

cond.end.6054:                                    ; preds = %cond.false.6053, %cond.true.6052
  %cond6055 = phi i32 [ %3832, %cond.true.6052 ], [ %3833, %cond.false.6053 ]
  %add6056 = add nsw i32 %mul6050, %cond6055
  store i32 %add6056, i32* %loopi, align 4
  %3834 = load i32, i32* %hypre__div6025, align 4
  %3835 = load i32, i32* %hypre__mod6026, align 4
  %3836 = load i32, i32* %hypre__block6027, align 4
  %cmp6057 = icmp sgt i32 %3835, %3836
  %cond6058 = select i1 %cmp6057, i32 1, i32 0
  %add6059 = add nsw i32 %3834, %cond6058
  store i32 %add6059, i32* %hypre__nx6014, align 4
  br label %if.end.6088

if.else.6060:                                     ; preds = %if.then.6047
  %3837 = load i32, i32* %hypre__dir6023, align 4
  %cmp6061 = icmp eq i32 %3837, 1
  br i1 %cmp6061, label %if.then.6062, label %if.else.6073

if.then.6062:                                     ; preds = %if.else.6060
  %3838 = load i32, i32* %hypre__block6027, align 4
  %3839 = load i32, i32* %hypre__div6025, align 4
  %mul6063 = mul nsw i32 %3838, %3839
  %3840 = load i32, i32* %hypre__mod6026, align 4
  %3841 = load i32, i32* %hypre__block6027, align 4
  %cmp6064 = icmp slt i32 %3840, %3841
  br i1 %cmp6064, label %cond.true.6065, label %cond.false.6066

cond.true.6065:                                   ; preds = %if.then.6062
  %3842 = load i32, i32* %hypre__mod6026, align 4
  br label %cond.end.6067

cond.false.6066:                                  ; preds = %if.then.6062
  %3843 = load i32, i32* %hypre__block6027, align 4
  br label %cond.end.6067

cond.end.6067:                                    ; preds = %cond.false.6066, %cond.true.6065
  %cond6068 = phi i32 [ %3842, %cond.true.6065 ], [ %3843, %cond.false.6066 ]
  %add6069 = add nsw i32 %mul6063, %cond6068
  store i32 %add6069, i32* %loopj, align 4
  %3844 = load i32, i32* %hypre__div6025, align 4
  %3845 = load i32, i32* %hypre__mod6026, align 4
  %3846 = load i32, i32* %hypre__block6027, align 4
  %cmp6070 = icmp sgt i32 %3845, %3846
  %cond6071 = select i1 %cmp6070, i32 1, i32 0
  %add6072 = add nsw i32 %3844, %cond6071
  store i32 %add6072, i32* %hypre__ny6016, align 4
  br label %if.end.6087

if.else.6073:                                     ; preds = %if.else.6060
  %3847 = load i32, i32* %hypre__dir6023, align 4
  %cmp6074 = icmp eq i32 %3847, 2
  br i1 %cmp6074, label %if.then.6075, label %if.end.6086

if.then.6075:                                     ; preds = %if.else.6073
  %3848 = load i32, i32* %hypre__block6027, align 4
  %3849 = load i32, i32* %hypre__div6025, align 4
  %mul6076 = mul nsw i32 %3848, %3849
  %3850 = load i32, i32* %hypre__mod6026, align 4
  %3851 = load i32, i32* %hypre__block6027, align 4
  %cmp6077 = icmp slt i32 %3850, %3851
  br i1 %cmp6077, label %cond.true.6078, label %cond.false.6079

cond.true.6078:                                   ; preds = %if.then.6075
  %3852 = load i32, i32* %hypre__mod6026, align 4
  br label %cond.end.6080

cond.false.6079:                                  ; preds = %if.then.6075
  %3853 = load i32, i32* %hypre__block6027, align 4
  br label %cond.end.6080

cond.end.6080:                                    ; preds = %cond.false.6079, %cond.true.6078
  %cond6081 = phi i32 [ %3852, %cond.true.6078 ], [ %3853, %cond.false.6079 ]
  %add6082 = add nsw i32 %mul6076, %cond6081
  store i32 %add6082, i32* %loopk, align 4
  %3854 = load i32, i32* %hypre__div6025, align 4
  %3855 = load i32, i32* %hypre__mod6026, align 4
  %3856 = load i32, i32* %hypre__block6027, align 4
  %cmp6083 = icmp sgt i32 %3855, %3856
  %cond6084 = select i1 %cmp6083, i32 1, i32 0
  %add6085 = add nsw i32 %3854, %cond6084
  store i32 %add6085, i32* %hypre__nz6018, align 4
  br label %if.end.6086

if.end.6086:                                      ; preds = %cond.end.6080, %if.else.6073
  br label %if.end.6087

if.end.6087:                                      ; preds = %if.end.6086, %cond.end.6067
  br label %if.end.6088

if.end.6088:                                      ; preds = %if.end.6087, %cond.end.6054
  br label %if.end.6089

if.end.6089:                                      ; preds = %if.end.6088, %for.body.6045
  %3857 = load i32, i32* %hypre__i1start5903, align 4
  %3858 = load i32, i32* %loopi, align 4
  %3859 = load i32, i32* %hypre__sx15954, align 4
  %mul6090 = mul nsw i32 %3858, %3859
  %add6091 = add nsw i32 %3857, %mul6090
  %3860 = load i32, i32* %loopj, align 4
  %3861 = load i32, i32* %hypre__sy15956, align 4
  %mul6092 = mul nsw i32 %3860, %3861
  %add6093 = add nsw i32 %add6091, %mul6092
  %3862 = load i32, i32* %loopk, align 4
  %3863 = load i32, i32* %hypre__sz15976, align 4
  %mul6094 = mul nsw i32 %3862, %3863
  %add6095 = add nsw i32 %add6093, %mul6094
  store i32 %add6095, i32* %yi, align 4
  store i32 0, i32* %loopk, align 4
  br label %for.cond.6096

for.cond.6096:                                    ; preds = %for.inc.6121, %if.end.6089
  %3864 = load i32, i32* %loopk, align 4
  %3865 = load i32, i32* %hypre__nz6018, align 4
  %cmp6097 = icmp slt i32 %3864, %3865
  br i1 %cmp6097, label %for.body.6098, label %for.end.6123

for.body.6098:                                    ; preds = %for.cond.6096
  store i32 0, i32* %loopj, align 4
  br label %for.cond.6099

for.cond.6099:                                    ; preds = %for.inc.6115, %for.body.6098
  %3866 = load i32, i32* %loopj, align 4
  %3867 = load i32, i32* %hypre__ny6016, align 4
  %cmp6100 = icmp slt i32 %3866, %3867
  br i1 %cmp6100, label %for.body.6101, label %for.end.6117

for.body.6101:                                    ; preds = %for.cond.6099
  store i32 0, i32* %loopi, align 4
  br label %for.cond.6102

for.cond.6102:                                    ; preds = %for.inc.6109, %for.body.6101
  %3868 = load i32, i32* %loopi, align 4
  %3869 = load i32, i32* %hypre__nx6014, align 4
  %cmp6103 = icmp slt i32 %3868, %3869
  br i1 %cmp6103, label %for.body.6104, label %for.end.6111

for.body.6104:                                    ; preds = %for.cond.6102
  %3870 = load double, double* %alpha.addr, align 8
  %3871 = load i32, i32* %yi, align 4
  %idxprom6105 = sext i32 %3871 to i64
  %3872 = load double*, double** %yp, align 8
  %arrayidx6106 = getelementptr inbounds double, double* %3872, i64 %idxprom6105
  %3873 = load double, double* %arrayidx6106, align 8
  %mul6107 = fmul double %3873, %3870
  store double %mul6107, double* %arrayidx6106, align 8
  %3874 = load i32, i32* %hypre__sx15954, align 4
  %3875 = load i32, i32* %yi, align 4
  %add6108 = add nsw i32 %3875, %3874
  store i32 %add6108, i32* %yi, align 4
  br label %for.inc.6109

for.inc.6109:                                     ; preds = %for.body.6104
  %3876 = load i32, i32* %loopi, align 4
  %inc6110 = add nsw i32 %3876, 1
  store i32 %inc6110, i32* %loopi, align 4
  br label %for.cond.6102

for.end.6111:                                     ; preds = %for.cond.6102
  %3877 = load i32, i32* %hypre__sy15956, align 4
  %3878 = load i32, i32* %hypre__nx6014, align 4
  %3879 = load i32, i32* %hypre__sx15954, align 4
  %mul6112 = mul nsw i32 %3878, %3879
  %sub6113 = sub nsw i32 %3877, %mul6112
  %3880 = load i32, i32* %yi, align 4
  %add6114 = add nsw i32 %3880, %sub6113
  store i32 %add6114, i32* %yi, align 4
  br label %for.inc.6115

for.inc.6115:                                     ; preds = %for.end.6111
  %3881 = load i32, i32* %loopj, align 4
  %inc6116 = add nsw i32 %3881, 1
  store i32 %inc6116, i32* %loopj, align 4
  br label %for.cond.6099

for.end.6117:                                     ; preds = %for.cond.6099
  %3882 = load i32, i32* %hypre__sz15976, align 4
  %3883 = load i32, i32* %hypre__ny6016, align 4
  %3884 = load i32, i32* %hypre__sy15956, align 4
  %mul6118 = mul nsw i32 %3883, %3884
  %sub6119 = sub nsw i32 %3882, %mul6118
  %3885 = load i32, i32* %yi, align 4
  %add6120 = add nsw i32 %3885, %sub6119
  store i32 %add6120, i32* %yi, align 4
  br label %for.inc.6121

for.inc.6121:                                     ; preds = %for.end.6117
  %3886 = load i32, i32* %loopk, align 4
  %inc6122 = add nsw i32 %3886, 1
  store i32 %inc6122, i32* %loopk, align 4
  br label %for.cond.6096

for.end.6123:                                     ; preds = %for.cond.6096
  br label %for.inc.6124

for.inc.6124:                                     ; preds = %for.end.6123
  %3887 = load i32, i32* %hypre__block6027, align 4
  %inc6125 = add nsw i32 %3887, 1
  store i32 %inc6125, i32* %hypre__block6027, align 4
  br label %for.cond.6043

for.end.6126:                                     ; preds = %for.cond.6043
  br label %if.end.6127

if.end.6127:                                      ; preds = %for.end.6126, %for.end.5900
  br label %for.inc.6128

for.inc.6128:                                     ; preds = %if.end.6127
  %3888 = load i32, i32* %j, align 4
  %inc6129 = add nsw i32 %3888, 1
  store i32 %inc6129, i32* %j, align 4
  br label %for.cond.732

for.end.6130:                                     ; preds = %for.cond.732
  br label %for.inc.6131

for.inc.6131:                                     ; preds = %for.end.6130
  %3889 = load i32, i32* %i, align 4
  %inc6132 = add nsw i32 %3889, 1
  store i32 %inc6132, i32* %i, align 4
  br label %for.cond.702

for.end.6133:                                     ; preds = %for.cond.702
  br label %for.inc.6134

for.inc.6134:                                     ; preds = %for.end.6133
  %3890 = load i32, i32* %compute_i, align 4
  %inc6135 = add nsw i32 %3890, 1
  store i32 %inc6135, i32* %compute_i, align 4
  br label %for.cond.212

for.end.6136:                                     ; preds = %for.cond.212
  %3891 = load i32, i32* %ierr, align 4
  store i32 %3891, i32* %retval
  br label %return

return:                                           ; preds = %for.end.6136, %for.end.208
  %3892 = load i32, i32* %retval
  ret i32 %3892
}

declare i32 @hypre_BoxGetSize(%struct.hypre_Box_struct*, i32*) #1

declare i32 @hypre_InitializeIndtComputations(%struct.hypre_ComputePkg_struct*, double*, %struct.hypre_CommHandle_struct**) #1

declare i32 @hypre_FinalizeIndtComputations(%struct.hypre_CommHandle_struct*) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_StructMatvecDestroy(i8* %matvec_vdata) #0 {
entry:
  %matvec_vdata.addr = alloca i8*, align 8
  %ierr = alloca i32, align 4
  %matvec_data = alloca %struct.hypre_StructMatvecData*, align 8
  store i8* %matvec_vdata, i8** %matvec_vdata.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load i8*, i8** %matvec_vdata.addr, align 8
  %1 = bitcast i8* %0 to %struct.hypre_StructMatvecData*
  store %struct.hypre_StructMatvecData* %1, %struct.hypre_StructMatvecData** %matvec_data, align 8
  %2 = load %struct.hypre_StructMatvecData*, %struct.hypre_StructMatvecData** %matvec_data, align 8
  %tobool = icmp ne %struct.hypre_StructMatvecData* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.hypre_StructMatvecData*, %struct.hypre_StructMatvecData** %matvec_data, align 8
  %A = getelementptr inbounds %struct.hypre_StructMatvecData, %struct.hypre_StructMatvecData* %3, i32 0, i32 0
  %4 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A, align 8
  %call = call i32 @hypre_StructMatrixDestroy(%struct.hypre_StructMatrix_struct* %4)
  %5 = load %struct.hypre_StructMatvecData*, %struct.hypre_StructMatvecData** %matvec_data, align 8
  %x = getelementptr inbounds %struct.hypre_StructMatvecData, %struct.hypre_StructMatvecData* %5, i32 0, i32 1
  %6 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x, align 8
  %call1 = call i32 @hypre_StructVectorDestroy(%struct.hypre_StructVector_struct* %6)
  %7 = load %struct.hypre_StructMatvecData*, %struct.hypre_StructMatvecData** %matvec_data, align 8
  %compute_pkg = getelementptr inbounds %struct.hypre_StructMatvecData, %struct.hypre_StructMatvecData* %7, i32 0, i32 2
  %8 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %compute_pkg, align 8
  %call2 = call i32 @hypre_ComputePkgDestroy(%struct.hypre_ComputePkg_struct* %8)
  %9 = load %struct.hypre_StructMatvecData*, %struct.hypre_StructMatvecData** %matvec_data, align 8
  %10 = bitcast %struct.hypre_StructMatvecData* %9 to i8*
  call void @hypre_Free(i8* %10)
  store %struct.hypre_StructMatvecData* null, %struct.hypre_StructMatvecData** %matvec_data, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i32, i32* %ierr, align 4
  ret i32 %11
}

declare i32 @hypre_StructMatrixDestroy(%struct.hypre_StructMatrix_struct*) #1

declare i32 @hypre_StructVectorDestroy(%struct.hypre_StructVector_struct*) #1

declare i32 @hypre_ComputePkgDestroy(%struct.hypre_ComputePkg_struct*) #1

declare void @hypre_Free(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_StructMatvec(double %alpha, %struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructVector_struct* %x, double %beta, %struct.hypre_StructVector_struct* %y) #0 {
entry:
  %alpha.addr = alloca double, align 8
  %A.addr = alloca %struct.hypre_StructMatrix_struct*, align 8
  %x.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %beta.addr = alloca double, align 8
  %y.addr = alloca %struct.hypre_StructVector_struct*, align 8
  %ierr = alloca i32, align 4
  %matvec_data = alloca i8*, align 8
  store double %alpha, double* %alpha.addr, align 8
  store %struct.hypre_StructMatrix_struct* %A, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  store %struct.hypre_StructVector_struct* %x, %struct.hypre_StructVector_struct** %x.addr, align 8
  store double %beta, double* %beta.addr, align 8
  store %struct.hypre_StructVector_struct* %y, %struct.hypre_StructVector_struct** %y.addr, align 8
  store i32 0, i32* %ierr, align 4
  %call = call i8* @hypre_StructMatvecCreate()
  store i8* %call, i8** %matvec_data, align 8
  %0 = load i8*, i8** %matvec_data, align 8
  %1 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %2 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %call1 = call i32 @hypre_StructMatvecSetup(i8* %0, %struct.hypre_StructMatrix_struct* %1, %struct.hypre_StructVector_struct* %2)
  store i32 %call1, i32* %ierr, align 4
  %3 = load i8*, i8** %matvec_data, align 8
  %4 = load double, double* %alpha.addr, align 8
  %5 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A.addr, align 8
  %6 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x.addr, align 8
  %7 = load double, double* %beta.addr, align 8
  %8 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %y.addr, align 8
  %call2 = call i32 @hypre_StructMatvecCompute(i8* %3, double %4, %struct.hypre_StructMatrix_struct* %5, %struct.hypre_StructVector_struct* %6, double %7, %struct.hypre_StructVector_struct* %8)
  store i32 %call2, i32* %ierr, align 4
  %9 = load i8*, i8** %matvec_data, align 8
  %call3 = call i32 @hypre_StructMatvecDestroy(i8* %9)
  store i32 %call3, i32* %ierr, align 4
  %10 = load i32, i32* %ierr, align 4
  ret i32 %10
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
