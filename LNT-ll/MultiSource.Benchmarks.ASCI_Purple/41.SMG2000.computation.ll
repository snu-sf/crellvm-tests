; ModuleID = './MultiSource.Benchmarks.ASCI_Purple/41.SMG2000.computation.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hypre_StructGrid_struct = type { i32, i32, %struct.hypre_BoxArray_struct*, i32*, %struct.hypre_BoxNeighbors_struct*, i32, %struct.hypre_Box_struct*, i32, i32, [3 x i32], i32 }
%struct.hypre_BoxArray_struct = type { %struct.hypre_Box_struct*, i32, i32 }
%struct.hypre_BoxNeighbors_struct = type { %struct.hypre_BoxArray_struct*, i32*, i32*, i32, i32, i32, [3 x [3 x [3 x %struct.hypre_RankLink_struct*]]]* }
%struct.hypre_RankLink_struct = type { i32, %struct.hypre_RankLink_struct* }
%struct.hypre_Box_struct = type { [3 x i32], [3 x i32] }
%struct.hypre_StructStencil_struct = type { [3 x i32]*, i32, i32, i32, i32 }
%struct.hypre_BoxArrayArray_struct = type { %struct.hypre_BoxArray_struct**, i32 }
%struct.hypre_ComputePkg_struct = type { %struct.hypre_CommPkg_struct*, %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct*, [3 x i32], %struct.hypre_StructGrid_struct*, %struct.hypre_BoxArray_struct*, i32 }
%struct.hypre_CommPkg_struct = type { i32, i32, i32, i32, i32*, i32*, %struct.hypre_CommType_struct**, %struct.hypre_CommType_struct**, i32*, i32*, %struct.hypre_CommType_struct*, %struct.hypre_CommType_struct* }
%struct.hypre_CommType_struct = type { %struct.hypre_CommTypeEntry_struct**, i32 }
%struct.hypre_CommTypeEntry_struct = type { [3 x i32], [3 x i32], i32, i32, [4 x i32], [4 x i32] }
%struct.hypre_CommHandle_struct = type { %struct.hypre_CommPkg_struct*, double*, double*, i32, i32*, %struct.hypre_MPI_Status* }
%struct.hypre_MPI_Status = type { i32 }

; Function Attrs: nounwind uwtable
define i32 @hypre_CreateComputeInfo(%struct.hypre_StructGrid_struct* %grid, %struct.hypre_StructStencil_struct* %stencil, %struct.hypre_BoxArrayArray_struct** %send_boxes_ptr, %struct.hypre_BoxArrayArray_struct** %recv_boxes_ptr, i32*** %send_processes_ptr, i32*** %recv_processes_ptr, %struct.hypre_BoxArrayArray_struct** %indt_boxes_ptr, %struct.hypre_BoxArrayArray_struct** %dept_boxes_ptr) #0 {
entry:
  %grid.addr = alloca %struct.hypre_StructGrid_struct*, align 8
  %stencil.addr = alloca %struct.hypre_StructStencil_struct*, align 8
  %send_boxes_ptr.addr = alloca %struct.hypre_BoxArrayArray_struct**, align 8
  %recv_boxes_ptr.addr = alloca %struct.hypre_BoxArrayArray_struct**, align 8
  %send_processes_ptr.addr = alloca i32***, align 8
  %recv_processes_ptr.addr = alloca i32***, align 8
  %indt_boxes_ptr.addr = alloca %struct.hypre_BoxArrayArray_struct**, align 8
  %dept_boxes_ptr.addr = alloca %struct.hypre_BoxArrayArray_struct**, align 8
  %ierr = alloca i32, align 4
  %send_boxes = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %recv_boxes = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %send_processes = alloca i32**, align 8
  %recv_processes = alloca i32**, align 8
  %indt_boxes = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %dept_boxes = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %boxes = alloca %struct.hypre_BoxArray_struct*, align 8
  %cbox_array = alloca %struct.hypre_BoxArray_struct*, align 8
  %cbox = alloca %struct.hypre_Box_struct*, align 8
  %i = alloca i32, align 4
  store %struct.hypre_StructGrid_struct* %grid, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  store %struct.hypre_StructStencil_struct* %stencil, %struct.hypre_StructStencil_struct** %stencil.addr, align 8
  store %struct.hypre_BoxArrayArray_struct** %send_boxes_ptr, %struct.hypre_BoxArrayArray_struct*** %send_boxes_ptr.addr, align 8
  store %struct.hypre_BoxArrayArray_struct** %recv_boxes_ptr, %struct.hypre_BoxArrayArray_struct*** %recv_boxes_ptr.addr, align 8
  store i32*** %send_processes_ptr, i32**** %send_processes_ptr.addr, align 8
  store i32*** %recv_processes_ptr, i32**** %recv_processes_ptr.addr, align 8
  store %struct.hypre_BoxArrayArray_struct** %indt_boxes_ptr, %struct.hypre_BoxArrayArray_struct*** %indt_boxes_ptr.addr, align 8
  store %struct.hypre_BoxArrayArray_struct** %dept_boxes_ptr, %struct.hypre_BoxArrayArray_struct*** %dept_boxes_ptr.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %boxes1 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %0, i32 0, i32 2
  %1 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes1, align 8
  store %struct.hypre_BoxArray_struct* %1, %struct.hypre_BoxArray_struct** %boxes, align 8
  %2 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %3 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil.addr, align 8
  %call = call i32 @hypre_CreateCommInfoFromStencil(%struct.hypre_StructGrid_struct* %2, %struct.hypre_StructStencil_struct* %3, %struct.hypre_BoxArrayArray_struct** %send_boxes, %struct.hypre_BoxArrayArray_struct** %recv_boxes, i32*** %send_processes, i32*** %recv_processes)
  %4 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %size = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %4, i32 0, i32 1
  %5 = load i32, i32* %size, align 4
  %call2 = call %struct.hypre_BoxArrayArray_struct* @hypre_BoxArrayArrayCreate(i32 %5)
  store %struct.hypre_BoxArrayArray_struct* %call2, %struct.hypre_BoxArrayArray_struct** %indt_boxes, align 8
  %6 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %size3 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %6, i32 0, i32 1
  %7 = load i32, i32* %size3, align 4
  %call4 = call %struct.hypre_BoxArrayArray_struct* @hypre_BoxArrayArrayCreate(i32 %7)
  store %struct.hypre_BoxArrayArray_struct* %call4, %struct.hypre_BoxArrayArray_struct** %dept_boxes, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4
  %9 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %size5 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %9, i32 0, i32 1
  %10 = load i32, i32* %size5, align 4
  %cmp = icmp slt i32 %8, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %dept_boxes, align 8
  %box_arrays = getelementptr inbounds %struct.hypre_BoxArrayArray_struct, %struct.hypre_BoxArrayArray_struct* %12, i32 0, i32 0
  %13 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %box_arrays, align 8
  %arrayidx = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %13, i64 %idxprom
  %14 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx, align 8
  store %struct.hypre_BoxArray_struct* %14, %struct.hypre_BoxArray_struct** %cbox_array, align 8
  %15 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %cbox_array, align 8
  %call6 = call i32 @hypre_BoxArraySetSize(%struct.hypre_BoxArray_struct* %15, i32 1)
  %16 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %cbox_array, align 8
  %boxes7 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %16, i32 0, i32 0
  %17 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes7, align 8
  %arrayidx8 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %17, i64 0
  store %struct.hypre_Box_struct* %arrayidx8, %struct.hypre_Box_struct** %cbox, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %18 to i64
  %19 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %boxes10 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %19, i32 0, i32 0
  %20 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes10, align 8
  %arrayidx11 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %20, i64 %idxprom9
  %imin = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx11, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i64 0
  %21 = load i32, i32* %arrayidx12, align 4
  %22 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %cbox, align 8
  %imin13 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %22, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [3 x i32], [3 x i32]* %imin13, i32 0, i64 0
  store i32 %21, i32* %arrayidx14, align 4
  %23 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %23 to i64
  %24 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %boxes16 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %24, i32 0, i32 0
  %25 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes16, align 8
  %arrayidx17 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %25, i64 %idxprom15
  %imin18 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx17, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [3 x i32], [3 x i32]* %imin18, i32 0, i64 1
  %26 = load i32, i32* %arrayidx19, align 4
  %27 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %cbox, align 8
  %imin20 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %27, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [3 x i32], [3 x i32]* %imin20, i32 0, i64 1
  store i32 %26, i32* %arrayidx21, align 4
  %28 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %28 to i64
  %29 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %boxes23 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %29, i32 0, i32 0
  %30 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes23, align 8
  %arrayidx24 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %30, i64 %idxprom22
  %imin25 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx24, i32 0, i32 0
  %arrayidx26 = getelementptr inbounds [3 x i32], [3 x i32]* %imin25, i32 0, i64 2
  %31 = load i32, i32* %arrayidx26, align 4
  %32 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %cbox, align 8
  %imin27 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %32, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [3 x i32], [3 x i32]* %imin27, i32 0, i64 2
  store i32 %31, i32* %arrayidx28, align 4
  %33 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %33 to i64
  %34 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %boxes30 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %34, i32 0, i32 0
  %35 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes30, align 8
  %arrayidx31 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %35, i64 %idxprom29
  %imax = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx31, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 0
  %36 = load i32, i32* %arrayidx32, align 4
  %37 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %cbox, align 8
  %imax33 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %37, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [3 x i32], [3 x i32]* %imax33, i32 0, i64 0
  store i32 %36, i32* %arrayidx34, align 4
  %38 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %38 to i64
  %39 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %boxes36 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %39, i32 0, i32 0
  %40 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes36, align 8
  %arrayidx37 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %40, i64 %idxprom35
  %imax38 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx37, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [3 x i32], [3 x i32]* %imax38, i32 0, i64 1
  %41 = load i32, i32* %arrayidx39, align 4
  %42 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %cbox, align 8
  %imax40 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %42, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [3 x i32], [3 x i32]* %imax40, i32 0, i64 1
  store i32 %41, i32* %arrayidx41, align 4
  %43 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %43 to i64
  %44 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %boxes43 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %44, i32 0, i32 0
  %45 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes43, align 8
  %arrayidx44 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %45, i64 %idxprom42
  %imax45 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx44, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [3 x i32], [3 x i32]* %imax45, i32 0, i64 2
  %46 = load i32, i32* %arrayidx46, align 4
  %47 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %cbox, align 8
  %imax47 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %47, i32 0, i32 1
  %arrayidx48 = getelementptr inbounds [3 x i32], [3 x i32]* %imax47, i32 0, i64 2
  store i32 %46, i32* %arrayidx48, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %48 = load i32, i32* %i, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %49 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %send_boxes, align 8
  %50 = load %struct.hypre_BoxArrayArray_struct**, %struct.hypre_BoxArrayArray_struct*** %send_boxes_ptr.addr, align 8
  store %struct.hypre_BoxArrayArray_struct* %49, %struct.hypre_BoxArrayArray_struct** %50, align 8
  %51 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %recv_boxes, align 8
  %52 = load %struct.hypre_BoxArrayArray_struct**, %struct.hypre_BoxArrayArray_struct*** %recv_boxes_ptr.addr, align 8
  store %struct.hypre_BoxArrayArray_struct* %51, %struct.hypre_BoxArrayArray_struct** %52, align 8
  %53 = load i32**, i32*** %send_processes, align 8
  %54 = load i32***, i32**** %send_processes_ptr.addr, align 8
  store i32** %53, i32*** %54, align 8
  %55 = load i32**, i32*** %recv_processes, align 8
  %56 = load i32***, i32**** %recv_processes_ptr.addr, align 8
  store i32** %55, i32*** %56, align 8
  %57 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %indt_boxes, align 8
  %58 = load %struct.hypre_BoxArrayArray_struct**, %struct.hypre_BoxArrayArray_struct*** %indt_boxes_ptr.addr, align 8
  store %struct.hypre_BoxArrayArray_struct* %57, %struct.hypre_BoxArrayArray_struct** %58, align 8
  %59 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %dept_boxes, align 8
  %60 = load %struct.hypre_BoxArrayArray_struct**, %struct.hypre_BoxArrayArray_struct*** %dept_boxes_ptr.addr, align 8
  store %struct.hypre_BoxArrayArray_struct* %59, %struct.hypre_BoxArrayArray_struct** %60, align 8
  %61 = load i32, i32* %ierr, align 4
  ret i32 %61
}

declare i32 @hypre_CreateCommInfoFromStencil(%struct.hypre_StructGrid_struct*, %struct.hypre_StructStencil_struct*, %struct.hypre_BoxArrayArray_struct**, %struct.hypre_BoxArrayArray_struct**, i32***, i32***) #1

declare %struct.hypre_BoxArrayArray_struct* @hypre_BoxArrayArrayCreate(i32) #1

declare i32 @hypre_BoxArraySetSize(%struct.hypre_BoxArray_struct*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_ComputePkgCreate(%struct.hypre_BoxArrayArray_struct* %send_boxes, %struct.hypre_BoxArrayArray_struct* %recv_boxes, i32* %send_stride, i32* %recv_stride, i32** %send_processes, i32** %recv_processes, %struct.hypre_BoxArrayArray_struct* %indt_boxes, %struct.hypre_BoxArrayArray_struct* %dept_boxes, i32* %stride, %struct.hypre_StructGrid_struct* %grid, %struct.hypre_BoxArray_struct* %data_space, i32 %num_values, %struct.hypre_ComputePkg_struct** %compute_pkg_ptr) #0 {
entry:
  %send_boxes.addr = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %recv_boxes.addr = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %send_stride.addr = alloca i32*, align 8
  %recv_stride.addr = alloca i32*, align 8
  %send_processes.addr = alloca i32**, align 8
  %recv_processes.addr = alloca i32**, align 8
  %indt_boxes.addr = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %dept_boxes.addr = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %stride.addr = alloca i32*, align 8
  %grid.addr = alloca %struct.hypre_StructGrid_struct*, align 8
  %data_space.addr = alloca %struct.hypre_BoxArray_struct*, align 8
  %num_values.addr = alloca i32, align 4
  %compute_pkg_ptr.addr = alloca %struct.hypre_ComputePkg_struct**, align 8
  %ierr = alloca i32, align 4
  %compute_pkg = alloca %struct.hypre_ComputePkg_struct*, align 8
  store %struct.hypre_BoxArrayArray_struct* %send_boxes, %struct.hypre_BoxArrayArray_struct** %send_boxes.addr, align 8
  store %struct.hypre_BoxArrayArray_struct* %recv_boxes, %struct.hypre_BoxArrayArray_struct** %recv_boxes.addr, align 8
  store i32* %send_stride, i32** %send_stride.addr, align 8
  store i32* %recv_stride, i32** %recv_stride.addr, align 8
  store i32** %send_processes, i32*** %send_processes.addr, align 8
  store i32** %recv_processes, i32*** %recv_processes.addr, align 8
  store %struct.hypre_BoxArrayArray_struct* %indt_boxes, %struct.hypre_BoxArrayArray_struct** %indt_boxes.addr, align 8
  store %struct.hypre_BoxArrayArray_struct* %dept_boxes, %struct.hypre_BoxArrayArray_struct** %dept_boxes.addr, align 8
  store i32* %stride, i32** %stride.addr, align 8
  store %struct.hypre_StructGrid_struct* %grid, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  store %struct.hypre_BoxArray_struct* %data_space, %struct.hypre_BoxArray_struct** %data_space.addr, align 8
  store i32 %num_values, i32* %num_values.addr, align 4
  store %struct.hypre_ComputePkg_struct** %compute_pkg_ptr, %struct.hypre_ComputePkg_struct*** %compute_pkg_ptr.addr, align 8
  store i32 0, i32* %ierr, align 4
  %call = call i8* @hypre_CAlloc(i32 1, i32 64)
  %0 = bitcast i8* %call to %struct.hypre_ComputePkg_struct*
  store %struct.hypre_ComputePkg_struct* %0, %struct.hypre_ComputePkg_struct** %compute_pkg, align 8
  %1 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %send_boxes.addr, align 8
  %2 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %recv_boxes.addr, align 8
  %3 = load i32*, i32** %send_stride.addr, align 8
  %4 = load i32*, i32** %recv_stride.addr, align 8
  %5 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space.addr, align 8
  %6 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space.addr, align 8
  %7 = load i32**, i32*** %send_processes.addr, align 8
  %8 = load i32**, i32*** %recv_processes.addr, align 8
  %9 = load i32, i32* %num_values.addr, align 4
  %10 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %comm = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %10, i32 0, i32 0
  %11 = load i32, i32* %comm, align 4
  %12 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %periodic = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %12, i32 0, i32 9
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %periodic, i32 0, i32 0
  %call1 = call %struct.hypre_CommPkg_struct* @hypre_CommPkgCreate(%struct.hypre_BoxArrayArray_struct* %1, %struct.hypre_BoxArrayArray_struct* %2, i32* %3, i32* %4, %struct.hypre_BoxArray_struct* %5, %struct.hypre_BoxArray_struct* %6, i32** %7, i32** %8, i32 %9, i32 %11, i32* %arraydecay)
  %13 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %compute_pkg, align 8
  %comm_pkg = getelementptr inbounds %struct.hypre_ComputePkg_struct, %struct.hypre_ComputePkg_struct* %13, i32 0, i32 0
  store %struct.hypre_CommPkg_struct* %call1, %struct.hypre_CommPkg_struct** %comm_pkg, align 8
  %14 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %indt_boxes.addr, align 8
  %15 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %compute_pkg, align 8
  %indt_boxes2 = getelementptr inbounds %struct.hypre_ComputePkg_struct, %struct.hypre_ComputePkg_struct* %15, i32 0, i32 1
  store %struct.hypre_BoxArrayArray_struct* %14, %struct.hypre_BoxArrayArray_struct** %indt_boxes2, align 8
  %16 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %dept_boxes.addr, align 8
  %17 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %compute_pkg, align 8
  %dept_boxes3 = getelementptr inbounds %struct.hypre_ComputePkg_struct, %struct.hypre_ComputePkg_struct* %17, i32 0, i32 2
  store %struct.hypre_BoxArrayArray_struct* %16, %struct.hypre_BoxArrayArray_struct** %dept_boxes3, align 8
  %18 = load i32*, i32** %stride.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %18, i64 0
  %19 = load i32, i32* %arrayidx, align 4
  %20 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %compute_pkg, align 8
  %stride4 = getelementptr inbounds %struct.hypre_ComputePkg_struct, %struct.hypre_ComputePkg_struct* %20, i32 0, i32 3
  %arrayidx5 = getelementptr inbounds [3 x i32], [3 x i32]* %stride4, i32 0, i64 0
  store i32 %19, i32* %arrayidx5, align 4
  %21 = load i32*, i32** %stride.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %21, i64 1
  %22 = load i32, i32* %arrayidx6, align 4
  %23 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %compute_pkg, align 8
  %stride7 = getelementptr inbounds %struct.hypre_ComputePkg_struct, %struct.hypre_ComputePkg_struct* %23, i32 0, i32 3
  %arrayidx8 = getelementptr inbounds [3 x i32], [3 x i32]* %stride7, i32 0, i64 1
  store i32 %22, i32* %arrayidx8, align 4
  %24 = load i32*, i32** %stride.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %24, i64 2
  %25 = load i32, i32* %arrayidx9, align 4
  %26 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %compute_pkg, align 8
  %stride10 = getelementptr inbounds %struct.hypre_ComputePkg_struct, %struct.hypre_ComputePkg_struct* %26, i32 0, i32 3
  %arrayidx11 = getelementptr inbounds [3 x i32], [3 x i32]* %stride10, i32 0, i64 2
  store i32 %25, i32* %arrayidx11, align 4
  %27 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %28 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %compute_pkg, align 8
  %grid12 = getelementptr inbounds %struct.hypre_ComputePkg_struct, %struct.hypre_ComputePkg_struct* %28, i32 0, i32 4
  %call13 = call i32 @hypre_StructGridRef(%struct.hypre_StructGrid_struct* %27, %struct.hypre_StructGrid_struct** %grid12)
  %29 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space.addr, align 8
  %30 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %compute_pkg, align 8
  %data_space14 = getelementptr inbounds %struct.hypre_ComputePkg_struct, %struct.hypre_ComputePkg_struct* %30, i32 0, i32 5
  store %struct.hypre_BoxArray_struct* %29, %struct.hypre_BoxArray_struct** %data_space14, align 8
  %31 = load i32, i32* %num_values.addr, align 4
  %32 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %compute_pkg, align 8
  %num_values15 = getelementptr inbounds %struct.hypre_ComputePkg_struct, %struct.hypre_ComputePkg_struct* %32, i32 0, i32 6
  store i32 %31, i32* %num_values15, align 4
  %33 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %compute_pkg, align 8
  %34 = load %struct.hypre_ComputePkg_struct**, %struct.hypre_ComputePkg_struct*** %compute_pkg_ptr.addr, align 8
  store %struct.hypre_ComputePkg_struct* %33, %struct.hypre_ComputePkg_struct** %34, align 8
  %35 = load i32, i32* %ierr, align 4
  ret i32 %35
}

declare i8* @hypre_CAlloc(i32, i32) #1

declare %struct.hypre_CommPkg_struct* @hypre_CommPkgCreate(%struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct*, i32*, i32*, %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct*, i32**, i32**, i32, i32, i32*) #1

declare i32 @hypre_StructGridRef(%struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct**) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_ComputePkgDestroy(%struct.hypre_ComputePkg_struct* %compute_pkg) #0 {
entry:
  %compute_pkg.addr = alloca %struct.hypre_ComputePkg_struct*, align 8
  %ierr = alloca i32, align 4
  store %struct.hypre_ComputePkg_struct* %compute_pkg, %struct.hypre_ComputePkg_struct** %compute_pkg.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %compute_pkg.addr, align 8
  %tobool = icmp ne %struct.hypre_ComputePkg_struct* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %compute_pkg.addr, align 8
  %comm_pkg = getelementptr inbounds %struct.hypre_ComputePkg_struct, %struct.hypre_ComputePkg_struct* %1, i32 0, i32 0
  %2 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg, align 8
  %call = call i32 @hypre_CommPkgDestroy(%struct.hypre_CommPkg_struct* %2)
  %3 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %compute_pkg.addr, align 8
  %indt_boxes = getelementptr inbounds %struct.hypre_ComputePkg_struct, %struct.hypre_ComputePkg_struct* %3, i32 0, i32 1
  %4 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %indt_boxes, align 8
  %call1 = call i32 @hypre_BoxArrayArrayDestroy(%struct.hypre_BoxArrayArray_struct* %4)
  %5 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %compute_pkg.addr, align 8
  %dept_boxes = getelementptr inbounds %struct.hypre_ComputePkg_struct, %struct.hypre_ComputePkg_struct* %5, i32 0, i32 2
  %6 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %dept_boxes, align 8
  %call2 = call i32 @hypre_BoxArrayArrayDestroy(%struct.hypre_BoxArrayArray_struct* %6)
  %7 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %compute_pkg.addr, align 8
  %grid = getelementptr inbounds %struct.hypre_ComputePkg_struct, %struct.hypre_ComputePkg_struct* %7, i32 0, i32 4
  %8 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %call3 = call i32 @hypre_StructGridDestroy(%struct.hypre_StructGrid_struct* %8)
  %9 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %compute_pkg.addr, align 8
  %10 = bitcast %struct.hypre_ComputePkg_struct* %9 to i8*
  call void @hypre_Free(i8* %10)
  store %struct.hypre_ComputePkg_struct* null, %struct.hypre_ComputePkg_struct** %compute_pkg.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i32, i32* %ierr, align 4
  ret i32 %11
}

declare i32 @hypre_CommPkgDestroy(%struct.hypre_CommPkg_struct*) #1

declare i32 @hypre_BoxArrayArrayDestroy(%struct.hypre_BoxArrayArray_struct*) #1

declare i32 @hypre_StructGridDestroy(%struct.hypre_StructGrid_struct*) #1

declare void @hypre_Free(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_InitializeIndtComputations(%struct.hypre_ComputePkg_struct* %compute_pkg, double* %data, %struct.hypre_CommHandle_struct** %comm_handle_ptr) #0 {
entry:
  %compute_pkg.addr = alloca %struct.hypre_ComputePkg_struct*, align 8
  %data.addr = alloca double*, align 8
  %comm_handle_ptr.addr = alloca %struct.hypre_CommHandle_struct**, align 8
  %ierr = alloca i32, align 4
  %comm_pkg = alloca %struct.hypre_CommPkg_struct*, align 8
  store %struct.hypre_ComputePkg_struct* %compute_pkg, %struct.hypre_ComputePkg_struct** %compute_pkg.addr, align 8
  store double* %data, double** %data.addr, align 8
  store %struct.hypre_CommHandle_struct** %comm_handle_ptr, %struct.hypre_CommHandle_struct*** %comm_handle_ptr.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_ComputePkg_struct*, %struct.hypre_ComputePkg_struct** %compute_pkg.addr, align 8
  %comm_pkg1 = getelementptr inbounds %struct.hypre_ComputePkg_struct, %struct.hypre_ComputePkg_struct* %0, i32 0, i32 0
  %1 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg1, align 8
  store %struct.hypre_CommPkg_struct* %1, %struct.hypre_CommPkg_struct** %comm_pkg, align 8
  %2 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg, align 8
  %3 = load double*, double** %data.addr, align 8
  %4 = load double*, double** %data.addr, align 8
  %5 = load %struct.hypre_CommHandle_struct**, %struct.hypre_CommHandle_struct*** %comm_handle_ptr.addr, align 8
  %call = call i32 @hypre_InitializeCommunication(%struct.hypre_CommPkg_struct* %2, double* %3, double* %4, %struct.hypre_CommHandle_struct** %5)
  store i32 %call, i32* %ierr, align 4
  %6 = load i32, i32* %ierr, align 4
  ret i32 %6
}

declare i32 @hypre_InitializeCommunication(%struct.hypre_CommPkg_struct*, double*, double*, %struct.hypre_CommHandle_struct**) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_FinalizeIndtComputations(%struct.hypre_CommHandle_struct* %comm_handle) #0 {
entry:
  %comm_handle.addr = alloca %struct.hypre_CommHandle_struct*, align 8
  %ierr = alloca i32, align 4
  store %struct.hypre_CommHandle_struct* %comm_handle, %struct.hypre_CommHandle_struct** %comm_handle.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_CommHandle_struct*, %struct.hypre_CommHandle_struct** %comm_handle.addr, align 8
  %call = call i32 @hypre_FinalizeCommunication(%struct.hypre_CommHandle_struct* %0)
  store i32 %call, i32* %ierr, align 4
  %1 = load i32, i32* %ierr, align 4
  ret i32 %1
}

declare i32 @hypre_FinalizeCommunication(%struct.hypre_CommHandle_struct*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
