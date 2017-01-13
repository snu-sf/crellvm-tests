; ModuleID = './MultiSource.Benchmarks.ASCI_Purple/16.SMG2000.coarsen.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hypre_StructGrid_struct = type { i32, i32, %struct.hypre_BoxArray_struct*, i32*, %struct.hypre_BoxNeighbors_struct*, i32, %struct.hypre_Box_struct*, i32, i32, [3 x i32], i32 }
%struct.hypre_BoxArray_struct = type { %struct.hypre_Box_struct*, i32, i32 }
%struct.hypre_BoxNeighbors_struct = type { %struct.hypre_BoxArray_struct*, i32*, i32*, i32, i32, i32, [3 x [3 x [3 x %struct.hypre_RankLink_struct*]]]* }
%struct.hypre_RankLink_struct = type { i32, %struct.hypre_RankLink_struct* }
%struct.hypre_Box_struct = type { [3 x i32], [3 x i32] }
%struct.hypre_MPI_Status = type { i32 }

; Function Attrs: nounwind uwtable
define i32 @hypre_StructMapFineToCoarse(i32* %findex, i32* %index, i32* %stride, i32* %cindex) #0 {
entry:
  %findex.addr = alloca i32*, align 8
  %index.addr = alloca i32*, align 8
  %stride.addr = alloca i32*, align 8
  %cindex.addr = alloca i32*, align 8
  store i32* %findex, i32** %findex.addr, align 8
  store i32* %index, i32** %index.addr, align 8
  store i32* %stride, i32** %stride.addr, align 8
  store i32* %cindex, i32** %cindex.addr, align 8
  %0 = load i32*, i32** %findex.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %2 = load i32*, i32** %index.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %2, i64 0
  %3 = load i32, i32* %arrayidx1, align 4
  %sub = sub nsw i32 %1, %3
  %4 = load i32*, i32** %stride.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %4, i64 0
  %5 = load i32, i32* %arrayidx2, align 4
  %div = sdiv i32 %sub, %5
  %6 = load i32*, i32** %cindex.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %6, i64 0
  store i32 %div, i32* %arrayidx3, align 4
  %7 = load i32*, i32** %findex.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %7, i64 1
  %8 = load i32, i32* %arrayidx4, align 4
  %9 = load i32*, i32** %index.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %9, i64 1
  %10 = load i32, i32* %arrayidx5, align 4
  %sub6 = sub nsw i32 %8, %10
  %11 = load i32*, i32** %stride.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %11, i64 1
  %12 = load i32, i32* %arrayidx7, align 4
  %div8 = sdiv i32 %sub6, %12
  %13 = load i32*, i32** %cindex.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %13, i64 1
  store i32 %div8, i32* %arrayidx9, align 4
  %14 = load i32*, i32** %findex.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %14, i64 2
  %15 = load i32, i32* %arrayidx10, align 4
  %16 = load i32*, i32** %index.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %16, i64 2
  %17 = load i32, i32* %arrayidx11, align 4
  %sub12 = sub nsw i32 %15, %17
  %18 = load i32*, i32** %stride.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %18, i64 2
  %19 = load i32, i32* %arrayidx13, align 4
  %div14 = sdiv i32 %sub12, %19
  %20 = load i32*, i32** %cindex.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %20, i64 2
  store i32 %div14, i32* %arrayidx15, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @hypre_StructMapCoarseToFine(i32* %cindex, i32* %index, i32* %stride, i32* %findex) #0 {
entry:
  %cindex.addr = alloca i32*, align 8
  %index.addr = alloca i32*, align 8
  %stride.addr = alloca i32*, align 8
  %findex.addr = alloca i32*, align 8
  store i32* %cindex, i32** %cindex.addr, align 8
  store i32* %index, i32** %index.addr, align 8
  store i32* %stride, i32** %stride.addr, align 8
  store i32* %findex, i32** %findex.addr, align 8
  %0 = load i32*, i32** %cindex.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %2 = load i32*, i32** %stride.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %2, i64 0
  %3 = load i32, i32* %arrayidx1, align 4
  %mul = mul nsw i32 %1, %3
  %4 = load i32*, i32** %index.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %4, i64 0
  %5 = load i32, i32* %arrayidx2, align 4
  %add = add nsw i32 %mul, %5
  %6 = load i32*, i32** %findex.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %6, i64 0
  store i32 %add, i32* %arrayidx3, align 4
  %7 = load i32*, i32** %cindex.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %7, i64 1
  %8 = load i32, i32* %arrayidx4, align 4
  %9 = load i32*, i32** %stride.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %9, i64 1
  %10 = load i32, i32* %arrayidx5, align 4
  %mul6 = mul nsw i32 %8, %10
  %11 = load i32*, i32** %index.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %11, i64 1
  %12 = load i32, i32* %arrayidx7, align 4
  %add8 = add nsw i32 %mul6, %12
  %13 = load i32*, i32** %findex.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %13, i64 1
  store i32 %add8, i32* %arrayidx9, align 4
  %14 = load i32*, i32** %cindex.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %14, i64 2
  %15 = load i32, i32* %arrayidx10, align 4
  %16 = load i32*, i32** %stride.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %16, i64 2
  %17 = load i32, i32* %arrayidx11, align 4
  %mul12 = mul nsw i32 %15, %17
  %18 = load i32*, i32** %index.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %18, i64 2
  %19 = load i32, i32* %arrayidx13, align 4
  %add14 = add nsw i32 %mul12, %19
  %20 = load i32*, i32** %findex.addr, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %20, i64 2
  store i32 %add14, i32* %arrayidx15, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @hypre_StructCoarsen(%struct.hypre_StructGrid_struct* %fgrid, i32* %index, i32* %stride, i32 %prune, %struct.hypre_StructGrid_struct** %cgrid_ptr) #0 {
entry:
  %fgrid.addr = alloca %struct.hypre_StructGrid_struct*, align 8
  %index.addr = alloca i32*, align 8
  %stride.addr = alloca i32*, align 8
  %prune.addr = alloca i32, align 4
  %cgrid_ptr.addr = alloca %struct.hypre_StructGrid_struct**, align 8
  %ierr = alloca i32, align 4
  %cgrid = alloca %struct.hypre_StructGrid_struct*, align 8
  %comm = alloca i32, align 4
  %dim = alloca i32, align 4
  %neighbors = alloca %struct.hypre_BoxNeighbors_struct*, align 8
  %hood_boxes = alloca %struct.hypre_BoxArray_struct*, align 8
  %num_hood = alloca i32, align 4
  %hood_procs = alloca i32*, align 8
  %hood_ids = alloca i32*, align 8
  %first_local = alloca i32, align 4
  %num_local = alloca i32, align 4
  %num_periodic = alloca i32, align 4
  %max_distance = alloca i32, align 4
  %bounding_box = alloca %struct.hypre_Box_struct*, align 8
  %periodic = alloca [3 x i32], align 4
  %send_requests = alloca i32*, align 8
  %send_status = alloca %struct.hypre_MPI_Status*, align 8
  %send_buffer = alloca i32*, align 8
  %send_size = alloca i32, align 4
  %recv_requests = alloca i32*, align 8
  %recv_status = alloca %struct.hypre_MPI_Status*, align 8
  %recv_buffers = alloca i32**, align 8
  %recv_sizes = alloca i32*, align 8
  %my_rank = alloca i32, align 4
  %send_procs = alloca i32*, align 8
  %recv_procs = alloca i32*, align 8
  %num_sends = alloca i32, align 4
  %num_recvs = alloca i32, align 4
  %new_hood_boxes = alloca %struct.hypre_BoxArray_struct*, align 8
  %new_num_hood = alloca i32, align 4
  %new_hood_procs = alloca i32*, align 8
  %new_hood_ids = alloca i32*, align 8
  %new_first_local = alloca i32, align 4
  %new_num_local = alloca i32, align 4
  %new_num_periodic = alloca i32, align 4
  %box = alloca %struct.hypre_Box_struct*, align 8
  %local_box = alloca %struct.hypre_Box_struct*, align 8
  %neighbor_box = alloca %struct.hypre_Box_struct*, align 8
  %local_cbox = alloca %struct.hypre_Box_struct*, align 8
  %neighbor_cbox = alloca %struct.hypre_Box_struct*, align 8
  %imin = alloca [3 x i32], align 4
  %imax = alloca [3 x i32], align 4
  %alloc_size = alloca i32, align 4
  %perimeter_count = alloca double, align 8
  %cperimeter_count = alloca double, align 8
  %iarray = alloca i32*, align 8
  %jrecv = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %d = alloca i32, align 4
  %ilocal = alloca i32, align 4
  %data_id = alloca i32, align 4
  %min_id = alloca i32, align 4
  %jj = alloca i32, align 4
  store %struct.hypre_StructGrid_struct* %fgrid, %struct.hypre_StructGrid_struct** %fgrid.addr, align 8
  store i32* %index, i32** %index.addr, align 8
  store i32* %stride, i32** %stride.addr, align 8
  store i32 %prune, i32* %prune.addr, align 4
  store %struct.hypre_StructGrid_struct** %cgrid_ptr, %struct.hypre_StructGrid_struct*** %cgrid_ptr.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %fgrid.addr, align 8
  %comm1 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %0, i32 0, i32 0
  %1 = load i32, i32* %comm1, align 4
  store i32 %1, i32* %comm, align 4
  %2 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %fgrid.addr, align 8
  %dim2 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %2, i32 0, i32 1
  %3 = load i32, i32* %dim2, align 4
  store i32 %3, i32* %dim, align 4
  %4 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %fgrid.addr, align 8
  %neighbors3 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %4, i32 0, i32 4
  %5 = load %struct.hypre_BoxNeighbors_struct*, %struct.hypre_BoxNeighbors_struct** %neighbors3, align 8
  store %struct.hypre_BoxNeighbors_struct* %5, %struct.hypre_BoxNeighbors_struct** %neighbors, align 8
  %6 = load %struct.hypre_BoxNeighbors_struct*, %struct.hypre_BoxNeighbors_struct** %neighbors, align 8
  %boxes = getelementptr inbounds %struct.hypre_BoxNeighbors_struct, %struct.hypre_BoxNeighbors_struct* %6, i32 0, i32 0
  %7 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %call = call %struct.hypre_BoxArray_struct* @hypre_BoxArrayDuplicate(%struct.hypre_BoxArray_struct* %7)
  store %struct.hypre_BoxArray_struct* %call, %struct.hypre_BoxArray_struct** %hood_boxes, align 8
  %8 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %hood_boxes, align 8
  %size = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %8, i32 0, i32 1
  %9 = load i32, i32* %size, align 4
  store i32 %9, i32* %num_hood, align 4
  %10 = load %struct.hypre_BoxNeighbors_struct*, %struct.hypre_BoxNeighbors_struct** %neighbors, align 8
  %procs = getelementptr inbounds %struct.hypre_BoxNeighbors_struct, %struct.hypre_BoxNeighbors_struct* %10, i32 0, i32 1
  %11 = load i32*, i32** %procs, align 8
  store i32* %11, i32** %iarray, align 8
  %12 = load i32, i32* %num_hood, align 4
  %conv = sext i32 %12 to i64
  %mul = mul i64 4, %conv
  %conv4 = trunc i64 %mul to i32
  %call5 = call i8* @hypre_MAlloc(i32 %conv4)
  %13 = bitcast i8* %call5 to i32*
  store i32* %13, i32** %hood_procs, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %num_hood, align 4
  %cmp = icmp slt i32 %14, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load i32*, i32** %iarray, align 8
  %arrayidx = getelementptr inbounds i32, i32* %17, i64 %idxprom
  %18 = load i32, i32* %arrayidx, align 4
  %19 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %19 to i64
  %20 = load i32*, i32** %hood_procs, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %20, i64 %idxprom7
  store i32 %18, i32* %arrayidx8, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct.hypre_BoxNeighbors_struct*, %struct.hypre_BoxNeighbors_struct** %neighbors, align 8
  %ids = getelementptr inbounds %struct.hypre_BoxNeighbors_struct, %struct.hypre_BoxNeighbors_struct* %22, i32 0, i32 2
  %23 = load i32*, i32** %ids, align 8
  store i32* %23, i32** %iarray, align 8
  %24 = load i32, i32* %num_hood, align 4
  %conv9 = sext i32 %24 to i64
  %mul10 = mul i64 4, %conv9
  %conv11 = trunc i64 %mul10 to i32
  %call12 = call i8* @hypre_MAlloc(i32 %conv11)
  %25 = bitcast i8* %call12 to i32*
  store i32* %25, i32** %hood_ids, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.21, %for.end
  %26 = load i32, i32* %i, align 4
  %27 = load i32, i32* %num_hood, align 4
  %cmp14 = icmp slt i32 %26, %27
  br i1 %cmp14, label %for.body.16, label %for.end.23

for.body.16:                                      ; preds = %for.cond.13
  %28 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %28 to i64
  %29 = load i32*, i32** %iarray, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %29, i64 %idxprom17
  %30 = load i32, i32* %arrayidx18, align 4
  %31 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %31 to i64
  %32 = load i32*, i32** %hood_ids, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %32, i64 %idxprom19
  store i32 %30, i32* %arrayidx20, align 4
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.body.16
  %33 = load i32, i32* %i, align 4
  %inc22 = add nsw i32 %33, 1
  store i32 %inc22, i32* %i, align 4
  br label %for.cond.13

for.end.23:                                       ; preds = %for.cond.13
  %34 = load %struct.hypre_BoxNeighbors_struct*, %struct.hypre_BoxNeighbors_struct** %neighbors, align 8
  %first_local24 = getelementptr inbounds %struct.hypre_BoxNeighbors_struct, %struct.hypre_BoxNeighbors_struct* %34, i32 0, i32 3
  %35 = load i32, i32* %first_local24, align 4
  store i32 %35, i32* %first_local, align 4
  %36 = load %struct.hypre_BoxNeighbors_struct*, %struct.hypre_BoxNeighbors_struct** %neighbors, align 8
  %num_local25 = getelementptr inbounds %struct.hypre_BoxNeighbors_struct, %struct.hypre_BoxNeighbors_struct* %36, i32 0, i32 4
  %37 = load i32, i32* %num_local25, align 4
  store i32 %37, i32* %num_local, align 4
  %38 = load %struct.hypre_BoxNeighbors_struct*, %struct.hypre_BoxNeighbors_struct** %neighbors, align 8
  %num_periodic26 = getelementptr inbounds %struct.hypre_BoxNeighbors_struct, %struct.hypre_BoxNeighbors_struct* %38, i32 0, i32 5
  %39 = load i32, i32* %num_periodic26, align 4
  store i32 %39, i32* %num_periodic, align 4
  %40 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %fgrid.addr, align 8
  %max_distance27 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %40, i32 0, i32 5
  %41 = load i32, i32* %max_distance27, align 4
  store i32 %41, i32* %max_distance, align 4
  %42 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %fgrid.addr, align 8
  %bounding_box28 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %42, i32 0, i32 6
  %43 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %bounding_box28, align 8
  %call29 = call %struct.hypre_Box_struct* @hypre_BoxDuplicate(%struct.hypre_Box_struct* %43)
  store %struct.hypre_Box_struct* %call29, %struct.hypre_Box_struct** %bounding_box, align 8
  %44 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %fgrid.addr, align 8
  %periodic30 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %44, i32 0, i32 9
  %arrayidx31 = getelementptr inbounds [3 x i32], [3 x i32]* %periodic30, i32 0, i64 0
  %45 = load i32, i32* %arrayidx31, align 4
  %arrayidx32 = getelementptr inbounds [3 x i32], [3 x i32]* %periodic, i32 0, i64 0
  store i32 %45, i32* %arrayidx32, align 4
  %46 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %fgrid.addr, align 8
  %periodic33 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %46, i32 0, i32 9
  %arrayidx34 = getelementptr inbounds [3 x i32], [3 x i32]* %periodic33, i32 0, i64 1
  %47 = load i32, i32* %arrayidx34, align 4
  %arrayidx35 = getelementptr inbounds [3 x i32], [3 x i32]* %periodic, i32 0, i64 1
  store i32 %47, i32* %arrayidx35, align 4
  %48 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %fgrid.addr, align 8
  %periodic36 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %48, i32 0, i32 9
  %arrayidx37 = getelementptr inbounds [3 x i32], [3 x i32]* %periodic36, i32 0, i64 2
  %49 = load i32, i32* %arrayidx37, align 4
  %arrayidx38 = getelementptr inbounds [3 x i32], [3 x i32]* %periodic, i32 0, i64 2
  store i32 %49, i32* %arrayidx38, align 4
  %50 = load i32, i32* %comm, align 4
  %call39 = call i32 @hypre_MPI_Comm_rank(i32 %50, i32* %my_rank)
  %51 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %bounding_box, align 8
  %52 = load i32*, i32** %index.addr, align 8
  %53 = load i32*, i32** %stride.addr, align 8
  %call40 = call i32 @hypre_ProjectBox(%struct.hypre_Box_struct* %51, i32* %52, i32* %53)
  %54 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %bounding_box, align 8
  %imin41 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %54, i32 0, i32 0
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %imin41, i32 0, i32 0
  %55 = load i32*, i32** %index.addr, align 8
  %56 = load i32*, i32** %stride.addr, align 8
  %57 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %bounding_box, align 8
  %imin42 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %57, i32 0, i32 0
  %arraydecay43 = getelementptr inbounds [3 x i32], [3 x i32]* %imin42, i32 0, i32 0
  %call44 = call i32 @hypre_StructMapFineToCoarse(i32* %arraydecay, i32* %55, i32* %56, i32* %arraydecay43)
  %58 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %bounding_box, align 8
  %imax45 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %58, i32 0, i32 1
  %arraydecay46 = getelementptr inbounds [3 x i32], [3 x i32]* %imax45, i32 0, i32 0
  %59 = load i32*, i32** %index.addr, align 8
  %60 = load i32*, i32** %stride.addr, align 8
  %61 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %bounding_box, align 8
  %imax47 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %61, i32 0, i32 1
  %arraydecay48 = getelementptr inbounds [3 x i32], [3 x i32]* %imax47, i32 0, i32 0
  %call49 = call i32 @hypre_StructMapFineToCoarse(i32* %arraydecay46, i32* %59, i32* %60, i32* %arraydecay48)
  %call50 = call %struct.hypre_Box_struct* @hypre_BoxCreate()
  store %struct.hypre_Box_struct* %call50, %struct.hypre_Box_struct** %local_cbox, align 8
  %call51 = call %struct.hypre_Box_struct* @hypre_BoxCreate()
  store %struct.hypre_Box_struct* %call51, %struct.hypre_Box_struct** %neighbor_cbox, align 8
  store i32 0, i32* %num_recvs, align 4
  store i32 0, i32* %num_sends, align 4
  store i32* null, i32** %recv_procs, align 8
  store i32* null, i32** %send_procs, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.205, %for.end.23
  %62 = load i32, i32* %i, align 4
  %63 = load i32, i32* %num_hood, align 4
  %cmp53 = icmp slt i32 %62, %63
  br i1 %cmp53, label %for.body.55, label %for.end.207

for.body.55:                                      ; preds = %for.cond.52
  %64 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %64 to i64
  %65 = load i32*, i32** %hood_procs, align 8
  %arrayidx57 = getelementptr inbounds i32, i32* %65, i64 %idxprom56
  %66 = load i32, i32* %arrayidx57, align 4
  %67 = load i32, i32* %my_rank, align 4
  %cmp58 = icmp ne i32 %66, %67
  br i1 %cmp58, label %if.then, label %if.end.204

if.then:                                          ; preds = %for.body.55
  store i32 0, i32* %j, align 4
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc.201, %if.then
  %68 = load i32, i32* %j, align 4
  %69 = load i32, i32* %num_local, align 4
  %cmp61 = icmp slt i32 %68, %69
  br i1 %cmp61, label %for.body.63, label %for.end.203

for.body.63:                                      ; preds = %for.cond.60
  %70 = load i32, i32* %first_local, align 4
  %71 = load i32, i32* %j, align 4
  %add = add nsw i32 %70, %71
  store i32 %add, i32* %ilocal, align 4
  %72 = load i32, i32* %ilocal, align 4
  %idxprom64 = sext i32 %72 to i64
  %73 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %hood_boxes, align 8
  %boxes65 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %73, i32 0, i32 0
  %74 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes65, align 8
  %arrayidx66 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %74, i64 %idxprom64
  store %struct.hypre_Box_struct* %arrayidx66, %struct.hypre_Box_struct** %local_box, align 8
  %75 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %75 to i64
  %76 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %hood_boxes, align 8
  %boxes68 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %76, i32 0, i32 0
  %77 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes68, align 8
  %arrayidx69 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %77, i64 %idxprom67
  store %struct.hypre_Box_struct* %arrayidx69, %struct.hypre_Box_struct** %neighbor_box, align 8
  %78 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %local_box, align 8
  %imin70 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %78, i32 0, i32 0
  %arrayidx71 = getelementptr inbounds [3 x i32], [3 x i32]* %imin70, i32 0, i64 0
  %79 = load i32, i32* %arrayidx71, align 4
  %80 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %local_cbox, align 8
  %imin72 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %80, i32 0, i32 0
  %arrayidx73 = getelementptr inbounds [3 x i32], [3 x i32]* %imin72, i32 0, i64 0
  store i32 %79, i32* %arrayidx73, align 4
  %81 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %local_box, align 8
  %imin74 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %81, i32 0, i32 0
  %arrayidx75 = getelementptr inbounds [3 x i32], [3 x i32]* %imin74, i32 0, i64 1
  %82 = load i32, i32* %arrayidx75, align 4
  %83 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %local_cbox, align 8
  %imin76 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %83, i32 0, i32 0
  %arrayidx77 = getelementptr inbounds [3 x i32], [3 x i32]* %imin76, i32 0, i64 1
  store i32 %82, i32* %arrayidx77, align 4
  %84 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %local_box, align 8
  %imin78 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %84, i32 0, i32 0
  %arrayidx79 = getelementptr inbounds [3 x i32], [3 x i32]* %imin78, i32 0, i64 2
  %85 = load i32, i32* %arrayidx79, align 4
  %86 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %local_cbox, align 8
  %imin80 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %86, i32 0, i32 0
  %arrayidx81 = getelementptr inbounds [3 x i32], [3 x i32]* %imin80, i32 0, i64 2
  store i32 %85, i32* %arrayidx81, align 4
  %87 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %local_box, align 8
  %imax82 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %87, i32 0, i32 1
  %arrayidx83 = getelementptr inbounds [3 x i32], [3 x i32]* %imax82, i32 0, i64 0
  %88 = load i32, i32* %arrayidx83, align 4
  %89 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %local_cbox, align 8
  %imax84 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %89, i32 0, i32 1
  %arrayidx85 = getelementptr inbounds [3 x i32], [3 x i32]* %imax84, i32 0, i64 0
  store i32 %88, i32* %arrayidx85, align 4
  %90 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %local_box, align 8
  %imax86 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %90, i32 0, i32 1
  %arrayidx87 = getelementptr inbounds [3 x i32], [3 x i32]* %imax86, i32 0, i64 1
  %91 = load i32, i32* %arrayidx87, align 4
  %92 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %local_cbox, align 8
  %imax88 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %92, i32 0, i32 1
  %arrayidx89 = getelementptr inbounds [3 x i32], [3 x i32]* %imax88, i32 0, i64 1
  store i32 %91, i32* %arrayidx89, align 4
  %93 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %local_box, align 8
  %imax90 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %93, i32 0, i32 1
  %arrayidx91 = getelementptr inbounds [3 x i32], [3 x i32]* %imax90, i32 0, i64 2
  %94 = load i32, i32* %arrayidx91, align 4
  %95 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %local_cbox, align 8
  %imax92 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %95, i32 0, i32 1
  %arrayidx93 = getelementptr inbounds [3 x i32], [3 x i32]* %imax92, i32 0, i64 2
  store i32 %94, i32* %arrayidx93, align 4
  %96 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %local_cbox, align 8
  %97 = load i32*, i32** %index.addr, align 8
  %98 = load i32*, i32** %stride.addr, align 8
  %call94 = call i32 @hypre_ProjectBox(%struct.hypre_Box_struct* %96, i32* %97, i32* %98)
  %99 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %local_cbox, align 8
  %imin95 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %99, i32 0, i32 0
  %arraydecay96 = getelementptr inbounds [3 x i32], [3 x i32]* %imin95, i32 0, i32 0
  %100 = load i32*, i32** %index.addr, align 8
  %101 = load i32*, i32** %stride.addr, align 8
  %102 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %local_cbox, align 8
  %imin97 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %102, i32 0, i32 0
  %arraydecay98 = getelementptr inbounds [3 x i32], [3 x i32]* %imin97, i32 0, i32 0
  %call99 = call i32 @hypre_StructMapFineToCoarse(i32* %arraydecay96, i32* %100, i32* %101, i32* %arraydecay98)
  %103 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %local_cbox, align 8
  %imax100 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %103, i32 0, i32 1
  %arraydecay101 = getelementptr inbounds [3 x i32], [3 x i32]* %imax100, i32 0, i32 0
  %104 = load i32*, i32** %index.addr, align 8
  %105 = load i32*, i32** %stride.addr, align 8
  %106 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %local_cbox, align 8
  %imax102 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %106, i32 0, i32 1
  %arraydecay103 = getelementptr inbounds [3 x i32], [3 x i32]* %imax102, i32 0, i32 0
  %call104 = call i32 @hypre_StructMapFineToCoarse(i32* %arraydecay101, i32* %104, i32* %105, i32* %arraydecay103)
  %107 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %neighbor_box, align 8
  %imin105 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %107, i32 0, i32 0
  %arrayidx106 = getelementptr inbounds [3 x i32], [3 x i32]* %imin105, i32 0, i64 0
  %108 = load i32, i32* %arrayidx106, align 4
  %109 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %neighbor_cbox, align 8
  %imin107 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %109, i32 0, i32 0
  %arrayidx108 = getelementptr inbounds [3 x i32], [3 x i32]* %imin107, i32 0, i64 0
  store i32 %108, i32* %arrayidx108, align 4
  %110 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %neighbor_box, align 8
  %imin109 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %110, i32 0, i32 0
  %arrayidx110 = getelementptr inbounds [3 x i32], [3 x i32]* %imin109, i32 0, i64 1
  %111 = load i32, i32* %arrayidx110, align 4
  %112 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %neighbor_cbox, align 8
  %imin111 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %112, i32 0, i32 0
  %arrayidx112 = getelementptr inbounds [3 x i32], [3 x i32]* %imin111, i32 0, i64 1
  store i32 %111, i32* %arrayidx112, align 4
  %113 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %neighbor_box, align 8
  %imin113 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %113, i32 0, i32 0
  %arrayidx114 = getelementptr inbounds [3 x i32], [3 x i32]* %imin113, i32 0, i64 2
  %114 = load i32, i32* %arrayidx114, align 4
  %115 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %neighbor_cbox, align 8
  %imin115 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %115, i32 0, i32 0
  %arrayidx116 = getelementptr inbounds [3 x i32], [3 x i32]* %imin115, i32 0, i64 2
  store i32 %114, i32* %arrayidx116, align 4
  %116 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %neighbor_box, align 8
  %imax117 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %116, i32 0, i32 1
  %arrayidx118 = getelementptr inbounds [3 x i32], [3 x i32]* %imax117, i32 0, i64 0
  %117 = load i32, i32* %arrayidx118, align 4
  %118 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %neighbor_cbox, align 8
  %imax119 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %118, i32 0, i32 1
  %arrayidx120 = getelementptr inbounds [3 x i32], [3 x i32]* %imax119, i32 0, i64 0
  store i32 %117, i32* %arrayidx120, align 4
  %119 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %neighbor_box, align 8
  %imax121 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %119, i32 0, i32 1
  %arrayidx122 = getelementptr inbounds [3 x i32], [3 x i32]* %imax121, i32 0, i64 1
  %120 = load i32, i32* %arrayidx122, align 4
  %121 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %neighbor_cbox, align 8
  %imax123 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %121, i32 0, i32 1
  %arrayidx124 = getelementptr inbounds [3 x i32], [3 x i32]* %imax123, i32 0, i64 1
  store i32 %120, i32* %arrayidx124, align 4
  %122 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %neighbor_box, align 8
  %imax125 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %122, i32 0, i32 1
  %arrayidx126 = getelementptr inbounds [3 x i32], [3 x i32]* %imax125, i32 0, i64 2
  %123 = load i32, i32* %arrayidx126, align 4
  %124 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %neighbor_cbox, align 8
  %imax127 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %124, i32 0, i32 1
  %arrayidx128 = getelementptr inbounds [3 x i32], [3 x i32]* %imax127, i32 0, i64 2
  store i32 %123, i32* %arrayidx128, align 4
  %125 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %neighbor_cbox, align 8
  %126 = load i32*, i32** %index.addr, align 8
  %127 = load i32*, i32** %stride.addr, align 8
  %call129 = call i32 @hypre_ProjectBox(%struct.hypre_Box_struct* %125, i32* %126, i32* %127)
  %128 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %neighbor_cbox, align 8
  %imin130 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %128, i32 0, i32 0
  %arraydecay131 = getelementptr inbounds [3 x i32], [3 x i32]* %imin130, i32 0, i32 0
  %129 = load i32*, i32** %index.addr, align 8
  %130 = load i32*, i32** %stride.addr, align 8
  %131 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %neighbor_cbox, align 8
  %imin132 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %131, i32 0, i32 0
  %arraydecay133 = getelementptr inbounds [3 x i32], [3 x i32]* %imin132, i32 0, i32 0
  %call134 = call i32 @hypre_StructMapFineToCoarse(i32* %arraydecay131, i32* %129, i32* %130, i32* %arraydecay133)
  %132 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %neighbor_cbox, align 8
  %imax135 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %132, i32 0, i32 1
  %arraydecay136 = getelementptr inbounds [3 x i32], [3 x i32]* %imax135, i32 0, i32 0
  %133 = load i32*, i32** %index.addr, align 8
  %134 = load i32*, i32** %stride.addr, align 8
  %135 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %neighbor_cbox, align 8
  %imax137 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %135, i32 0, i32 1
  %arraydecay138 = getelementptr inbounds [3 x i32], [3 x i32]* %imax137, i32 0, i32 0
  %call139 = call i32 @hypre_StructMapFineToCoarse(i32* %arraydecay136, i32* %133, i32* %134, i32* %arraydecay138)
  store double 0.000000e+00, double* %perimeter_count, align 8
  store double 1.000000e+00, double* %cperimeter_count, align 8
  %136 = load double, double* %cperimeter_count, align 8
  %137 = load double, double* %perimeter_count, align 8
  %cmp140 = fcmp ogt double %136, %137
  br i1 %cmp140, label %if.then.142, label %if.end.168

if.then.142:                                      ; preds = %for.body.63
  %138 = load i32, i32* %num_recvs, align 4
  %cmp143 = icmp eq i32 %138, 0
  br i1 %cmp143, label %if.then.145, label %if.else

if.then.145:                                      ; preds = %if.then.142
  %139 = load i32, i32* %num_hood, align 4
  %conv146 = sext i32 %139 to i64
  %mul147 = mul i64 4, %conv146
  %conv148 = trunc i64 %mul147 to i32
  %call149 = call i8* @hypre_MAlloc(i32 %conv148)
  %140 = bitcast i8* %call149 to i32*
  store i32* %140, i32** %recv_procs, align 8
  %141 = load i32, i32* %i, align 4
  %idxprom150 = sext i32 %141 to i64
  %142 = load i32*, i32** %hood_procs, align 8
  %arrayidx151 = getelementptr inbounds i32, i32* %142, i64 %idxprom150
  %143 = load i32, i32* %arrayidx151, align 4
  %144 = load i32, i32* %num_recvs, align 4
  %idxprom152 = sext i32 %144 to i64
  %145 = load i32*, i32** %recv_procs, align 8
  %arrayidx153 = getelementptr inbounds i32, i32* %145, i64 %idxprom152
  store i32 %143, i32* %arrayidx153, align 4
  %146 = load i32, i32* %num_recvs, align 4
  %inc154 = add nsw i32 %146, 1
  store i32 %inc154, i32* %num_recvs, align 4
  br label %if.end.167

if.else:                                          ; preds = %if.then.142
  %147 = load i32, i32* %i, align 4
  %idxprom155 = sext i32 %147 to i64
  %148 = load i32*, i32** %hood_procs, align 8
  %arrayidx156 = getelementptr inbounds i32, i32* %148, i64 %idxprom155
  %149 = load i32, i32* %arrayidx156, align 4
  %150 = load i32, i32* %num_recvs, align 4
  %sub = sub nsw i32 %150, 1
  %idxprom157 = sext i32 %sub to i64
  %151 = load i32*, i32** %recv_procs, align 8
  %arrayidx158 = getelementptr inbounds i32, i32* %151, i64 %idxprom157
  %152 = load i32, i32* %arrayidx158, align 4
  %cmp159 = icmp ne i32 %149, %152
  br i1 %cmp159, label %if.then.161, label %if.end

if.then.161:                                      ; preds = %if.else
  %153 = load i32, i32* %i, align 4
  %idxprom162 = sext i32 %153 to i64
  %154 = load i32*, i32** %hood_procs, align 8
  %arrayidx163 = getelementptr inbounds i32, i32* %154, i64 %idxprom162
  %155 = load i32, i32* %arrayidx163, align 4
  %156 = load i32, i32* %num_recvs, align 4
  %idxprom164 = sext i32 %156 to i64
  %157 = load i32*, i32** %recv_procs, align 8
  %arrayidx165 = getelementptr inbounds i32, i32* %157, i64 %idxprom164
  store i32 %155, i32* %arrayidx165, align 4
  %158 = load i32, i32* %num_recvs, align 4
  %inc166 = add nsw i32 %158, 1
  store i32 %inc166, i32* %num_recvs, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.161, %if.else
  br label %if.end.167

if.end.167:                                       ; preds = %if.end, %if.then.145
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167, %for.body.63
  store double 0.000000e+00, double* %perimeter_count, align 8
  store double 1.000000e+00, double* %cperimeter_count, align 8
  %159 = load double, double* %cperimeter_count, align 8
  %160 = load double, double* %perimeter_count, align 8
  %cmp169 = fcmp ogt double %159, %160
  br i1 %cmp169, label %if.then.171, label %if.end.200

if.then.171:                                      ; preds = %if.end.168
  %161 = load i32, i32* %num_sends, align 4
  %cmp172 = icmp eq i32 %161, 0
  br i1 %cmp172, label %if.then.174, label %if.else.184

if.then.174:                                      ; preds = %if.then.171
  %162 = load i32, i32* %num_hood, align 4
  %conv175 = sext i32 %162 to i64
  %mul176 = mul i64 4, %conv175
  %conv177 = trunc i64 %mul176 to i32
  %call178 = call i8* @hypre_MAlloc(i32 %conv177)
  %163 = bitcast i8* %call178 to i32*
  store i32* %163, i32** %send_procs, align 8
  %164 = load i32, i32* %i, align 4
  %idxprom179 = sext i32 %164 to i64
  %165 = load i32*, i32** %hood_procs, align 8
  %arrayidx180 = getelementptr inbounds i32, i32* %165, i64 %idxprom179
  %166 = load i32, i32* %arrayidx180, align 4
  %167 = load i32, i32* %num_sends, align 4
  %idxprom181 = sext i32 %167 to i64
  %168 = load i32*, i32** %send_procs, align 8
  %arrayidx182 = getelementptr inbounds i32, i32* %168, i64 %idxprom181
  store i32 %166, i32* %arrayidx182, align 4
  %169 = load i32, i32* %num_sends, align 4
  %inc183 = add nsw i32 %169, 1
  store i32 %inc183, i32* %num_sends, align 4
  br label %if.end.199

if.else.184:                                      ; preds = %if.then.171
  %170 = load i32, i32* %i, align 4
  %idxprom185 = sext i32 %170 to i64
  %171 = load i32*, i32** %hood_procs, align 8
  %arrayidx186 = getelementptr inbounds i32, i32* %171, i64 %idxprom185
  %172 = load i32, i32* %arrayidx186, align 4
  %173 = load i32, i32* %num_sends, align 4
  %sub187 = sub nsw i32 %173, 1
  %idxprom188 = sext i32 %sub187 to i64
  %174 = load i32*, i32** %send_procs, align 8
  %arrayidx189 = getelementptr inbounds i32, i32* %174, i64 %idxprom188
  %175 = load i32, i32* %arrayidx189, align 4
  %cmp190 = icmp ne i32 %172, %175
  br i1 %cmp190, label %if.then.192, label %if.end.198

if.then.192:                                      ; preds = %if.else.184
  %176 = load i32, i32* %i, align 4
  %idxprom193 = sext i32 %176 to i64
  %177 = load i32*, i32** %hood_procs, align 8
  %arrayidx194 = getelementptr inbounds i32, i32* %177, i64 %idxprom193
  %178 = load i32, i32* %arrayidx194, align 4
  %179 = load i32, i32* %num_sends, align 4
  %idxprom195 = sext i32 %179 to i64
  %180 = load i32*, i32** %send_procs, align 8
  %arrayidx196 = getelementptr inbounds i32, i32* %180, i64 %idxprom195
  store i32 %178, i32* %arrayidx196, align 4
  %181 = load i32, i32* %num_sends, align 4
  %inc197 = add nsw i32 %181, 1
  store i32 %inc197, i32* %num_sends, align 4
  br label %if.end.198

if.end.198:                                       ; preds = %if.then.192, %if.else.184
  br label %if.end.199

if.end.199:                                       ; preds = %if.end.198, %if.then.174
  br label %if.end.200

if.end.200:                                       ; preds = %if.end.199, %if.end.168
  br label %for.inc.201

for.inc.201:                                      ; preds = %if.end.200
  %182 = load i32, i32* %j, align 4
  %inc202 = add nsw i32 %182, 1
  store i32 %inc202, i32* %j, align 4
  br label %for.cond.60

for.end.203:                                      ; preds = %for.cond.60
  br label %if.end.204

if.end.204:                                       ; preds = %for.end.203, %for.body.55
  br label %for.inc.205

for.inc.205:                                      ; preds = %if.end.204
  %183 = load i32, i32* %i, align 4
  %inc206 = add nsw i32 %183, 1
  store i32 %inc206, i32* %i, align 4
  br label %for.cond.52

for.end.207:                                      ; preds = %for.cond.52
  %184 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %local_cbox, align 8
  %call208 = call i32 @hypre_BoxDestroy(%struct.hypre_Box_struct* %184)
  %185 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %neighbor_cbox, align 8
  %call209 = call i32 @hypre_BoxDestroy(%struct.hypre_Box_struct* %185)
  store i32 0, i32* %i, align 4
  br label %for.cond.210

for.cond.210:                                     ; preds = %for.inc.228, %for.end.207
  %186 = load i32, i32* %i, align 4
  %187 = load i32, i32* %num_hood, align 4
  %cmp211 = icmp slt i32 %186, %187
  br i1 %cmp211, label %for.body.213, label %for.end.230

for.body.213:                                     ; preds = %for.cond.210
  %188 = load i32, i32* %i, align 4
  %idxprom214 = sext i32 %188 to i64
  %189 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %hood_boxes, align 8
  %boxes215 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %189, i32 0, i32 0
  %190 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes215, align 8
  %arrayidx216 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %190, i64 %idxprom214
  store %struct.hypre_Box_struct* %arrayidx216, %struct.hypre_Box_struct** %box, align 8
  %191 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %192 = load i32*, i32** %index.addr, align 8
  %193 = load i32*, i32** %stride.addr, align 8
  %call217 = call i32 @hypre_ProjectBox(%struct.hypre_Box_struct* %191, i32* %192, i32* %193)
  %194 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin218 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %194, i32 0, i32 0
  %arraydecay219 = getelementptr inbounds [3 x i32], [3 x i32]* %imin218, i32 0, i32 0
  %195 = load i32*, i32** %index.addr, align 8
  %196 = load i32*, i32** %stride.addr, align 8
  %197 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin220 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %197, i32 0, i32 0
  %arraydecay221 = getelementptr inbounds [3 x i32], [3 x i32]* %imin220, i32 0, i32 0
  %call222 = call i32 @hypre_StructMapFineToCoarse(i32* %arraydecay219, i32* %195, i32* %196, i32* %arraydecay221)
  %198 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax223 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %198, i32 0, i32 1
  %arraydecay224 = getelementptr inbounds [3 x i32], [3 x i32]* %imax223, i32 0, i32 0
  %199 = load i32*, i32** %index.addr, align 8
  %200 = load i32*, i32** %stride.addr, align 8
  %201 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax225 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %201, i32 0, i32 1
  %arraydecay226 = getelementptr inbounds [3 x i32], [3 x i32]* %imax225, i32 0, i32 0
  %call227 = call i32 @hypre_StructMapFineToCoarse(i32* %arraydecay224, i32* %199, i32* %200, i32* %arraydecay226)
  br label %for.inc.228

for.inc.228:                                      ; preds = %for.body.213
  %202 = load i32, i32* %i, align 4
  %inc229 = add nsw i32 %202, 1
  store i32 %inc229, i32* %i, align 4
  br label %for.cond.210

for.end.230:                                      ; preds = %for.cond.210
  %203 = load i32, i32* %num_recvs, align 4
  %tobool = icmp ne i32 %203, 0
  br i1 %tobool, label %if.then.231, label %if.end.258

if.then.231:                                      ; preds = %for.end.230
  %204 = load i32, i32* %num_recvs, align 4
  %conv232 = sext i32 %204 to i64
  %mul233 = mul i64 4, %conv232
  %conv234 = trunc i64 %mul233 to i32
  %call235 = call i8* @hypre_MAlloc(i32 %conv234)
  %205 = bitcast i8* %call235 to i32*
  store i32* %205, i32** %recv_requests, align 8
  %206 = load i32, i32* %num_recvs, align 4
  %conv236 = sext i32 %206 to i64
  %mul237 = mul i64 4, %conv236
  %conv238 = trunc i64 %mul237 to i32
  %call239 = call i8* @hypre_MAlloc(i32 %conv238)
  %207 = bitcast i8* %call239 to %struct.hypre_MPI_Status*
  store %struct.hypre_MPI_Status* %207, %struct.hypre_MPI_Status** %recv_status, align 8
  %208 = load i32, i32* %num_recvs, align 4
  %conv240 = sext i32 %208 to i64
  %mul241 = mul i64 4, %conv240
  %conv242 = trunc i64 %mul241 to i32
  %call243 = call i8* @hypre_MAlloc(i32 %conv242)
  %209 = bitcast i8* %call243 to i32*
  store i32* %209, i32** %recv_sizes, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.244

for.cond.244:                                     ; preds = %for.inc.255, %if.then.231
  %210 = load i32, i32* %i, align 4
  %211 = load i32, i32* %num_recvs, align 4
  %cmp245 = icmp slt i32 %210, %211
  br i1 %cmp245, label %for.body.247, label %for.end.257

for.body.247:                                     ; preds = %for.cond.244
  %212 = load i32, i32* %i, align 4
  %idxprom248 = sext i32 %212 to i64
  %213 = load i32*, i32** %recv_sizes, align 8
  %arrayidx249 = getelementptr inbounds i32, i32* %213, i64 %idxprom248
  %214 = bitcast i32* %arrayidx249 to i8*
  %215 = load i32, i32* %i, align 4
  %idxprom250 = sext i32 %215 to i64
  %216 = load i32*, i32** %recv_procs, align 8
  %arrayidx251 = getelementptr inbounds i32, i32* %216, i64 %idxprom250
  %217 = load i32, i32* %arrayidx251, align 4
  %218 = load i32, i32* %comm, align 4
  %219 = load i32, i32* %i, align 4
  %idxprom252 = sext i32 %219 to i64
  %220 = load i32*, i32** %recv_requests, align 8
  %arrayidx253 = getelementptr inbounds i32, i32* %220, i64 %idxprom252
  %call254 = call i32 @hypre_MPI_Irecv(i8* %214, i32 1, i32 1, i32 %217, i32 0, i32 %218, i32* %arrayidx253)
  br label %for.inc.255

for.inc.255:                                      ; preds = %for.body.247
  %221 = load i32, i32* %i, align 4
  %inc256 = add nsw i32 %221, 1
  store i32 %inc256, i32* %i, align 4
  br label %for.cond.244

for.end.257:                                      ; preds = %for.cond.244
  br label %if.end.258

if.end.258:                                       ; preds = %for.end.257, %for.end.230
  %222 = load i32, i32* %num_sends, align 4
  %tobool259 = icmp ne i32 %222, 0
  br i1 %tobool259, label %if.then.260, label %if.end.283

if.then.260:                                      ; preds = %if.end.258
  %223 = load i32, i32* %num_sends, align 4
  %conv261 = sext i32 %223 to i64
  %mul262 = mul i64 4, %conv261
  %conv263 = trunc i64 %mul262 to i32
  %call264 = call i8* @hypre_MAlloc(i32 %conv263)
  %224 = bitcast i8* %call264 to i32*
  store i32* %224, i32** %send_requests, align 8
  %225 = load i32, i32* %num_sends, align 4
  %conv265 = sext i32 %225 to i64
  %mul266 = mul i64 4, %conv265
  %conv267 = trunc i64 %mul266 to i32
  %call268 = call i8* @hypre_MAlloc(i32 %conv267)
  %226 = bitcast i8* %call268 to %struct.hypre_MPI_Status*
  store %struct.hypre_MPI_Status* %226, %struct.hypre_MPI_Status** %send_status, align 8
  %227 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %hood_boxes, align 8
  %size269 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %227, i32 0, i32 1
  %228 = load i32, i32* %size269, align 4
  %mul270 = mul nsw i32 8, %228
  store i32 %mul270, i32* %send_size, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.271

for.cond.271:                                     ; preds = %for.inc.280, %if.then.260
  %229 = load i32, i32* %i, align 4
  %230 = load i32, i32* %num_sends, align 4
  %cmp272 = icmp slt i32 %229, %230
  br i1 %cmp272, label %for.body.274, label %for.end.282

for.body.274:                                     ; preds = %for.cond.271
  %231 = bitcast i32* %send_size to i8*
  %232 = load i32, i32* %i, align 4
  %idxprom275 = sext i32 %232 to i64
  %233 = load i32*, i32** %send_procs, align 8
  %arrayidx276 = getelementptr inbounds i32, i32* %233, i64 %idxprom275
  %234 = load i32, i32* %arrayidx276, align 4
  %235 = load i32, i32* %comm, align 4
  %236 = load i32, i32* %i, align 4
  %idxprom277 = sext i32 %236 to i64
  %237 = load i32*, i32** %send_requests, align 8
  %arrayidx278 = getelementptr inbounds i32, i32* %237, i64 %idxprom277
  %call279 = call i32 @hypre_MPI_Isend(i8* %231, i32 1, i32 1, i32 %234, i32 0, i32 %235, i32* %arrayidx278)
  br label %for.inc.280

for.inc.280:                                      ; preds = %for.body.274
  %238 = load i32, i32* %i, align 4
  %inc281 = add nsw i32 %238, 1
  store i32 %inc281, i32* %i, align 4
  br label %for.cond.271

for.end.282:                                      ; preds = %for.cond.271
  br label %if.end.283

if.end.283:                                       ; preds = %for.end.282, %if.end.258
  %239 = load i32, i32* %num_recvs, align 4
  %tobool284 = icmp ne i32 %239, 0
  br i1 %tobool284, label %if.then.285, label %if.end.287

if.then.285:                                      ; preds = %if.end.283
  %240 = load i32, i32* %num_recvs, align 4
  %241 = load i32*, i32** %recv_requests, align 8
  %242 = load %struct.hypre_MPI_Status*, %struct.hypre_MPI_Status** %recv_status, align 8
  %call286 = call i32 @hypre_MPI_Waitall(i32 %240, i32* %241, %struct.hypre_MPI_Status* %242)
  br label %if.end.287

if.end.287:                                       ; preds = %if.then.285, %if.end.283
  %243 = load i32, i32* %num_sends, align 4
  %tobool288 = icmp ne i32 %243, 0
  br i1 %tobool288, label %if.then.289, label %if.end.291

if.then.289:                                      ; preds = %if.end.287
  %244 = load i32, i32* %num_sends, align 4
  %245 = load i32*, i32** %send_requests, align 8
  %246 = load %struct.hypre_MPI_Status*, %struct.hypre_MPI_Status** %send_status, align 8
  %call290 = call i32 @hypre_MPI_Waitall(i32 %244, i32* %245, %struct.hypre_MPI_Status* %246)
  br label %if.end.291

if.end.291:                                       ; preds = %if.then.289, %if.end.287
  %247 = load i32, i32* %num_recvs, align 4
  %tobool292 = icmp ne i32 %247, 0
  br i1 %tobool292, label %if.then.293, label %if.end.322

if.then.293:                                      ; preds = %if.end.291
  %248 = load i32, i32* %num_recvs, align 4
  %conv294 = sext i32 %248 to i64
  %mul295 = mul i64 8, %conv294
  %conv296 = trunc i64 %mul295 to i32
  %call297 = call i8* @hypre_MAlloc(i32 %conv296)
  %249 = bitcast i8* %call297 to i32**
  store i32** %249, i32*** %recv_buffers, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.298

for.cond.298:                                     ; preds = %for.inc.319, %if.then.293
  %250 = load i32, i32* %i, align 4
  %251 = load i32, i32* %num_recvs, align 4
  %cmp299 = icmp slt i32 %250, %251
  br i1 %cmp299, label %for.body.301, label %for.end.321

for.body.301:                                     ; preds = %for.cond.298
  %252 = load i32, i32* %i, align 4
  %idxprom302 = sext i32 %252 to i64
  %253 = load i32*, i32** %recv_sizes, align 8
  %arrayidx303 = getelementptr inbounds i32, i32* %253, i64 %idxprom302
  %254 = load i32, i32* %arrayidx303, align 4
  %conv304 = sext i32 %254 to i64
  %mul305 = mul i64 4, %conv304
  %conv306 = trunc i64 %mul305 to i32
  %call307 = call i8* @hypre_MAlloc(i32 %conv306)
  %255 = bitcast i8* %call307 to i32*
  %256 = load i32, i32* %i, align 4
  %idxprom308 = sext i32 %256 to i64
  %257 = load i32**, i32*** %recv_buffers, align 8
  %arrayidx309 = getelementptr inbounds i32*, i32** %257, i64 %idxprom308
  store i32* %255, i32** %arrayidx309, align 8
  %258 = load i32, i32* %i, align 4
  %idxprom310 = sext i32 %258 to i64
  %259 = load i32**, i32*** %recv_buffers, align 8
  %arrayidx311 = getelementptr inbounds i32*, i32** %259, i64 %idxprom310
  %260 = load i32*, i32** %arrayidx311, align 8
  %261 = bitcast i32* %260 to i8*
  %262 = load i32, i32* %i, align 4
  %idxprom312 = sext i32 %262 to i64
  %263 = load i32*, i32** %recv_sizes, align 8
  %arrayidx313 = getelementptr inbounds i32, i32* %263, i64 %idxprom312
  %264 = load i32, i32* %arrayidx313, align 4
  %265 = load i32, i32* %i, align 4
  %idxprom314 = sext i32 %265 to i64
  %266 = load i32*, i32** %recv_procs, align 8
  %arrayidx315 = getelementptr inbounds i32, i32* %266, i64 %idxprom314
  %267 = load i32, i32* %arrayidx315, align 4
  %268 = load i32, i32* %comm, align 4
  %269 = load i32, i32* %i, align 4
  %idxprom316 = sext i32 %269 to i64
  %270 = load i32*, i32** %recv_requests, align 8
  %arrayidx317 = getelementptr inbounds i32, i32* %270, i64 %idxprom316
  %call318 = call i32 @hypre_MPI_Irecv(i8* %261, i32 %264, i32 1, i32 %267, i32 0, i32 %268, i32* %arrayidx317)
  br label %for.inc.319

for.inc.319:                                      ; preds = %for.body.301
  %271 = load i32, i32* %i, align 4
  %inc320 = add nsw i32 %271, 1
  store i32 %inc320, i32* %i, align 4
  br label %for.cond.298

for.end.321:                                      ; preds = %for.cond.298
  br label %if.end.322

if.end.322:                                       ; preds = %for.end.321, %if.end.291
  %272 = load i32, i32* %num_sends, align 4
  %tobool323 = icmp ne i32 %272, 0
  br i1 %tobool323, label %if.then.324, label %if.end.380

if.then.324:                                      ; preds = %if.end.322
  %273 = load i32, i32* %send_size, align 4
  %conv325 = sext i32 %273 to i64
  %mul326 = mul i64 4, %conv325
  %conv327 = trunc i64 %mul326 to i32
  %call328 = call i8* @hypre_MAlloc(i32 %conv327)
  %274 = bitcast i8* %call328 to i32*
  store i32* %274, i32** %send_buffer, align 8
  store i32 0, i32* %j, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.329

for.cond.329:                                     ; preds = %for.inc.365, %if.then.324
  %275 = load i32, i32* %i, align 4
  %276 = load i32, i32* %num_hood, align 4
  %cmp330 = icmp slt i32 %275, %276
  br i1 %cmp330, label %for.body.332, label %for.end.367

for.body.332:                                     ; preds = %for.cond.329
  %277 = load i32, i32* %i, align 4
  %idxprom333 = sext i32 %277 to i64
  %278 = load i32*, i32** %hood_ids, align 8
  %arrayidx334 = getelementptr inbounds i32, i32* %278, i64 %idxprom333
  %279 = load i32, i32* %arrayidx334, align 4
  %280 = load i32, i32* %j, align 4
  %inc335 = add nsw i32 %280, 1
  store i32 %inc335, i32* %j, align 4
  %idxprom336 = sext i32 %280 to i64
  %281 = load i32*, i32** %send_buffer, align 8
  %arrayidx337 = getelementptr inbounds i32, i32* %281, i64 %idxprom336
  store i32 %279, i32* %arrayidx337, align 4
  %282 = load i32, i32* %i, align 4
  %idxprom338 = sext i32 %282 to i64
  %283 = load i32*, i32** %hood_procs, align 8
  %arrayidx339 = getelementptr inbounds i32, i32* %283, i64 %idxprom338
  %284 = load i32, i32* %arrayidx339, align 4
  %285 = load i32, i32* %j, align 4
  %inc340 = add nsw i32 %285, 1
  store i32 %inc340, i32* %j, align 4
  %idxprom341 = sext i32 %285 to i64
  %286 = load i32*, i32** %send_buffer, align 8
  %arrayidx342 = getelementptr inbounds i32, i32* %286, i64 %idxprom341
  store i32 %284, i32* %arrayidx342, align 4
  %287 = load i32, i32* %i, align 4
  %idxprom343 = sext i32 %287 to i64
  %288 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %hood_boxes, align 8
  %boxes344 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %288, i32 0, i32 0
  %289 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes344, align 8
  %arrayidx345 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %289, i64 %idxprom343
  store %struct.hypre_Box_struct* %arrayidx345, %struct.hypre_Box_struct** %box, align 8
  store i32 0, i32* %d, align 4
  br label %for.cond.346

for.cond.346:                                     ; preds = %for.inc.362, %for.body.332
  %290 = load i32, i32* %d, align 4
  %cmp347 = icmp slt i32 %290, 3
  br i1 %cmp347, label %for.body.349, label %for.end.364

for.body.349:                                     ; preds = %for.cond.346
  %291 = load i32, i32* %d, align 4
  %idxprom350 = sext i32 %291 to i64
  %292 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin351 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %292, i32 0, i32 0
  %arrayidx352 = getelementptr inbounds [3 x i32], [3 x i32]* %imin351, i32 0, i64 %idxprom350
  %293 = load i32, i32* %arrayidx352, align 4
  %294 = load i32, i32* %j, align 4
  %inc353 = add nsw i32 %294, 1
  store i32 %inc353, i32* %j, align 4
  %idxprom354 = sext i32 %294 to i64
  %295 = load i32*, i32** %send_buffer, align 8
  %arrayidx355 = getelementptr inbounds i32, i32* %295, i64 %idxprom354
  store i32 %293, i32* %arrayidx355, align 4
  %296 = load i32, i32* %d, align 4
  %idxprom356 = sext i32 %296 to i64
  %297 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax357 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %297, i32 0, i32 1
  %arrayidx358 = getelementptr inbounds [3 x i32], [3 x i32]* %imax357, i32 0, i64 %idxprom356
  %298 = load i32, i32* %arrayidx358, align 4
  %299 = load i32, i32* %j, align 4
  %inc359 = add nsw i32 %299, 1
  store i32 %inc359, i32* %j, align 4
  %idxprom360 = sext i32 %299 to i64
  %300 = load i32*, i32** %send_buffer, align 8
  %arrayidx361 = getelementptr inbounds i32, i32* %300, i64 %idxprom360
  store i32 %298, i32* %arrayidx361, align 4
  br label %for.inc.362

for.inc.362:                                      ; preds = %for.body.349
  %301 = load i32, i32* %d, align 4
  %inc363 = add nsw i32 %301, 1
  store i32 %inc363, i32* %d, align 4
  br label %for.cond.346

for.end.364:                                      ; preds = %for.cond.346
  br label %for.inc.365

for.inc.365:                                      ; preds = %for.end.364
  %302 = load i32, i32* %i, align 4
  %inc366 = add nsw i32 %302, 1
  store i32 %inc366, i32* %i, align 4
  br label %for.cond.329

for.end.367:                                      ; preds = %for.cond.329
  store i32 0, i32* %i, align 4
  br label %for.cond.368

for.cond.368:                                     ; preds = %for.inc.377, %for.end.367
  %303 = load i32, i32* %i, align 4
  %304 = load i32, i32* %num_sends, align 4
  %cmp369 = icmp slt i32 %303, %304
  br i1 %cmp369, label %for.body.371, label %for.end.379

for.body.371:                                     ; preds = %for.cond.368
  %305 = load i32*, i32** %send_buffer, align 8
  %306 = bitcast i32* %305 to i8*
  %307 = load i32, i32* %send_size, align 4
  %308 = load i32, i32* %i, align 4
  %idxprom372 = sext i32 %308 to i64
  %309 = load i32*, i32** %send_procs, align 8
  %arrayidx373 = getelementptr inbounds i32, i32* %309, i64 %idxprom372
  %310 = load i32, i32* %arrayidx373, align 4
  %311 = load i32, i32* %comm, align 4
  %312 = load i32, i32* %i, align 4
  %idxprom374 = sext i32 %312 to i64
  %313 = load i32*, i32** %send_requests, align 8
  %arrayidx375 = getelementptr inbounds i32, i32* %313, i64 %idxprom374
  %call376 = call i32 @hypre_MPI_Isend(i8* %306, i32 %307, i32 1, i32 %310, i32 0, i32 %311, i32* %arrayidx375)
  br label %for.inc.377

for.inc.377:                                      ; preds = %for.body.371
  %314 = load i32, i32* %i, align 4
  %inc378 = add nsw i32 %314, 1
  store i32 %inc378, i32* %i, align 4
  br label %for.cond.368

for.end.379:                                      ; preds = %for.cond.368
  br label %if.end.380

if.end.380:                                       ; preds = %for.end.379, %if.end.322
  %315 = load i32, i32* %num_recvs, align 4
  %tobool381 = icmp ne i32 %315, 0
  br i1 %tobool381, label %if.then.382, label %if.end.384

if.then.382:                                      ; preds = %if.end.380
  %316 = load i32, i32* %num_recvs, align 4
  %317 = load i32*, i32** %recv_requests, align 8
  %318 = load %struct.hypre_MPI_Status*, %struct.hypre_MPI_Status** %recv_status, align 8
  %call383 = call i32 @hypre_MPI_Waitall(i32 %316, i32* %317, %struct.hypre_MPI_Status* %318)
  %319 = load i32*, i32** %recv_requests, align 8
  %320 = bitcast i32* %319 to i8*
  call void @hypre_Free(i8* %320)
  store i32* null, i32** %recv_requests, align 8
  %321 = load %struct.hypre_MPI_Status*, %struct.hypre_MPI_Status** %recv_status, align 8
  %322 = bitcast %struct.hypre_MPI_Status* %321 to i8*
  call void @hypre_Free(i8* %322)
  store %struct.hypre_MPI_Status* null, %struct.hypre_MPI_Status** %recv_status, align 8
  br label %if.end.384

if.end.384:                                       ; preds = %if.then.382, %if.end.380
  %323 = load i32, i32* %num_sends, align 4
  %tobool385 = icmp ne i32 %323, 0
  br i1 %tobool385, label %if.then.386, label %if.end.388

if.then.386:                                      ; preds = %if.end.384
  %324 = load i32, i32* %num_sends, align 4
  %325 = load i32*, i32** %send_requests, align 8
  %326 = load %struct.hypre_MPI_Status*, %struct.hypre_MPI_Status** %send_status, align 8
  %call387 = call i32 @hypre_MPI_Waitall(i32 %324, i32* %325, %struct.hypre_MPI_Status* %326)
  %327 = load i32*, i32** %send_requests, align 8
  %328 = bitcast i32* %327 to i8*
  call void @hypre_Free(i8* %328)
  store i32* null, i32** %send_requests, align 8
  %329 = load %struct.hypre_MPI_Status*, %struct.hypre_MPI_Status** %send_status, align 8
  %330 = bitcast %struct.hypre_MPI_Status* %329 to i8*
  call void @hypre_Free(i8* %330)
  store %struct.hypre_MPI_Status* null, %struct.hypre_MPI_Status** %send_status, align 8
  %331 = load i32*, i32** %send_buffer, align 8
  %332 = bitcast i32* %331 to i8*
  call void @hypre_Free(i8* %332)
  store i32* null, i32** %send_buffer, align 8
  br label %if.end.388

if.end.388:                                       ; preds = %if.then.386, %if.end.384
  %333 = load i32, i32* %num_recvs, align 4
  %tobool389 = icmp ne i32 %333, 0
  br i1 %tobool389, label %if.then.390, label %if.end.575

if.then.390:                                      ; preds = %if.end.388
  %334 = load i32, i32* %num_hood, align 4
  store i32 %334, i32* %alloc_size, align 4
  %335 = load i32, i32* %alloc_size, align 4
  %call391 = call %struct.hypre_BoxArray_struct* @hypre_BoxArrayCreate(i32 %335)
  store %struct.hypre_BoxArray_struct* %call391, %struct.hypre_BoxArray_struct** %new_hood_boxes, align 8
  %336 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %new_hood_boxes, align 8
  %call392 = call i32 @hypre_BoxArraySetSize(%struct.hypre_BoxArray_struct* %336, i32 0)
  %337 = load i32, i32* %alloc_size, align 4
  %conv393 = sext i32 %337 to i64
  %mul394 = mul i64 4, %conv393
  %conv395 = trunc i64 %mul394 to i32
  %call396 = call i8* @hypre_MAlloc(i32 %conv395)
  %338 = bitcast i8* %call396 to i32*
  store i32* %338, i32** %new_hood_procs, align 8
  %339 = load i32, i32* %alloc_size, align 4
  %conv397 = sext i32 %339 to i64
  %mul398 = mul i64 4, %conv397
  %conv399 = trunc i64 %mul398 to i32
  %call400 = call i8* @hypre_MAlloc(i32 %conv399)
  %340 = bitcast i8* %call400 to i32*
  store i32* %340, i32** %new_hood_ids, align 8
  %call401 = call %struct.hypre_Box_struct* @hypre_BoxCreate()
  store %struct.hypre_Box_struct* %call401, %struct.hypre_Box_struct** %box, align 8
  store i32 0, i32* %j, align 4
  %341 = load i32, i32* %num_recvs, align 4
  %call402 = call i8* @hypre_CAlloc(i32 %341, i32 4)
  %342 = bitcast i8* %call402 to i32*
  store i32* %342, i32** %jrecv, align 8
  store i32 0, i32* %new_num_hood, align 4
  br label %while.body

while.body:                                       ; preds = %if.then.390, %if.end.561
  store i32 -2, i32* %data_id, align 4
  %343 = load i32, i32* %j, align 4
  %344 = load i32, i32* %num_hood, align 4
  %cmp403 = icmp slt i32 %343, %344
  br i1 %cmp403, label %if.then.405, label %if.end.429

if.then.405:                                      ; preds = %while.body
  %345 = load i32, i32* %data_id, align 4
  %cmp406 = icmp eq i32 %345, -2
  br i1 %cmp406, label %if.then.408, label %if.else.411

if.then.408:                                      ; preds = %if.then.405
  %346 = load i32, i32* %j, align 4
  %idxprom409 = sext i32 %346 to i64
  %347 = load i32*, i32** %hood_ids, align 8
  %arrayidx410 = getelementptr inbounds i32, i32* %347, i64 %idxprom409
  %348 = load i32, i32* %arrayidx410, align 4
  store i32 %348, i32* %min_id, align 4
  store i32 -1, i32* %data_id, align 4
  br label %if.end.428

if.else.411:                                      ; preds = %if.then.405
  %349 = load i32, i32* %j, align 4
  %idxprom412 = sext i32 %349 to i64
  %350 = load i32*, i32** %hood_ids, align 8
  %arrayidx413 = getelementptr inbounds i32, i32* %350, i64 %idxprom412
  %351 = load i32, i32* %arrayidx413, align 4
  %352 = load i32, i32* %min_id, align 4
  %cmp414 = icmp slt i32 %351, %352
  br i1 %cmp414, label %if.then.416, label %if.else.419

if.then.416:                                      ; preds = %if.else.411
  %353 = load i32, i32* %j, align 4
  %idxprom417 = sext i32 %353 to i64
  %354 = load i32*, i32** %hood_ids, align 8
  %arrayidx418 = getelementptr inbounds i32, i32* %354, i64 %idxprom417
  %355 = load i32, i32* %arrayidx418, align 4
  store i32 %355, i32* %min_id, align 4
  store i32 -1, i32* %data_id, align 4
  br label %if.end.427

if.else.419:                                      ; preds = %if.else.411
  %356 = load i32, i32* %j, align 4
  %idxprom420 = sext i32 %356 to i64
  %357 = load i32*, i32** %hood_ids, align 8
  %arrayidx421 = getelementptr inbounds i32, i32* %357, i64 %idxprom420
  %358 = load i32, i32* %arrayidx421, align 4
  %359 = load i32, i32* %min_id, align 4
  %cmp422 = icmp eq i32 %358, %359
  br i1 %cmp422, label %if.then.424, label %if.end.426

if.then.424:                                      ; preds = %if.else.419
  %360 = load i32, i32* %j, align 4
  %inc425 = add nsw i32 %360, 1
  store i32 %inc425, i32* %j, align 4
  br label %if.end.426

if.end.426:                                       ; preds = %if.then.424, %if.else.419
  br label %if.end.427

if.end.427:                                       ; preds = %if.end.426, %if.then.416
  br label %if.end.428

if.end.428:                                       ; preds = %if.end.427, %if.then.408
  br label %if.end.429

if.end.429:                                       ; preds = %if.end.428, %while.body
  store i32 0, i32* %i, align 4
  br label %for.cond.430

for.cond.430:                                     ; preds = %for.inc.475, %if.end.429
  %361 = load i32, i32* %i, align 4
  %362 = load i32, i32* %num_recvs, align 4
  %cmp431 = icmp slt i32 %361, %362
  br i1 %cmp431, label %for.body.433, label %for.end.477

for.body.433:                                     ; preds = %for.cond.430
  %363 = load i32, i32* %i, align 4
  %idxprom434 = sext i32 %363 to i64
  %364 = load i32*, i32** %jrecv, align 8
  %arrayidx435 = getelementptr inbounds i32, i32* %364, i64 %idxprom434
  %365 = load i32, i32* %arrayidx435, align 4
  store i32 %365, i32* %jj, align 4
  %366 = load i32, i32* %jj, align 4
  %367 = load i32, i32* %i, align 4
  %idxprom436 = sext i32 %367 to i64
  %368 = load i32*, i32** %recv_sizes, align 8
  %arrayidx437 = getelementptr inbounds i32, i32* %368, i64 %idxprom436
  %369 = load i32, i32* %arrayidx437, align 4
  %cmp438 = icmp slt i32 %366, %369
  br i1 %cmp438, label %if.then.440, label %if.end.474

if.then.440:                                      ; preds = %for.body.433
  %370 = load i32, i32* %data_id, align 4
  %cmp441 = icmp eq i32 %370, -2
  br i1 %cmp441, label %if.then.443, label %if.else.448

if.then.443:                                      ; preds = %if.then.440
  %371 = load i32, i32* %jj, align 4
  %idxprom444 = sext i32 %371 to i64
  %372 = load i32, i32* %i, align 4
  %idxprom445 = sext i32 %372 to i64
  %373 = load i32**, i32*** %recv_buffers, align 8
  %arrayidx446 = getelementptr inbounds i32*, i32** %373, i64 %idxprom445
  %374 = load i32*, i32** %arrayidx446, align 8
  %arrayidx447 = getelementptr inbounds i32, i32* %374, i64 %idxprom444
  %375 = load i32, i32* %arrayidx447, align 4
  store i32 %375, i32* %min_id, align 4
  %376 = load i32, i32* %i, align 4
  store i32 %376, i32* %data_id, align 4
  br label %if.end.473

if.else.448:                                      ; preds = %if.then.440
  %377 = load i32, i32* %jj, align 4
  %idxprom449 = sext i32 %377 to i64
  %378 = load i32, i32* %i, align 4
  %idxprom450 = sext i32 %378 to i64
  %379 = load i32**, i32*** %recv_buffers, align 8
  %arrayidx451 = getelementptr inbounds i32*, i32** %379, i64 %idxprom450
  %380 = load i32*, i32** %arrayidx451, align 8
  %arrayidx452 = getelementptr inbounds i32, i32* %380, i64 %idxprom449
  %381 = load i32, i32* %arrayidx452, align 4
  %382 = load i32, i32* %min_id, align 4
  %cmp453 = icmp slt i32 %381, %382
  br i1 %cmp453, label %if.then.455, label %if.else.460

if.then.455:                                      ; preds = %if.else.448
  %383 = load i32, i32* %jj, align 4
  %idxprom456 = sext i32 %383 to i64
  %384 = load i32, i32* %i, align 4
  %idxprom457 = sext i32 %384 to i64
  %385 = load i32**, i32*** %recv_buffers, align 8
  %arrayidx458 = getelementptr inbounds i32*, i32** %385, i64 %idxprom457
  %386 = load i32*, i32** %arrayidx458, align 8
  %arrayidx459 = getelementptr inbounds i32, i32* %386, i64 %idxprom456
  %387 = load i32, i32* %arrayidx459, align 4
  store i32 %387, i32* %min_id, align 4
  %388 = load i32, i32* %i, align 4
  store i32 %388, i32* %data_id, align 4
  br label %if.end.472

if.else.460:                                      ; preds = %if.else.448
  %389 = load i32, i32* %jj, align 4
  %idxprom461 = sext i32 %389 to i64
  %390 = load i32, i32* %i, align 4
  %idxprom462 = sext i32 %390 to i64
  %391 = load i32**, i32*** %recv_buffers, align 8
  %arrayidx463 = getelementptr inbounds i32*, i32** %391, i64 %idxprom462
  %392 = load i32*, i32** %arrayidx463, align 8
  %arrayidx464 = getelementptr inbounds i32, i32* %392, i64 %idxprom461
  %393 = load i32, i32* %arrayidx464, align 4
  %394 = load i32, i32* %min_id, align 4
  %cmp465 = icmp eq i32 %393, %394
  br i1 %cmp465, label %if.then.467, label %if.end.471

if.then.467:                                      ; preds = %if.else.460
  %395 = load i32, i32* %i, align 4
  %idxprom468 = sext i32 %395 to i64
  %396 = load i32*, i32** %jrecv, align 8
  %arrayidx469 = getelementptr inbounds i32, i32* %396, i64 %idxprom468
  %397 = load i32, i32* %arrayidx469, align 4
  %add470 = add nsw i32 %397, 8
  store i32 %add470, i32* %arrayidx469, align 4
  br label %if.end.471

if.end.471:                                       ; preds = %if.then.467, %if.else.460
  br label %if.end.472

if.end.472:                                       ; preds = %if.end.471, %if.then.455
  br label %if.end.473

if.end.473:                                       ; preds = %if.end.472, %if.then.443
  br label %if.end.474

if.end.474:                                       ; preds = %if.end.473, %for.body.433
  br label %for.inc.475

for.inc.475:                                      ; preds = %if.end.474
  %398 = load i32, i32* %i, align 4
  %inc476 = add nsw i32 %398, 1
  store i32 %inc476, i32* %i, align 4
  br label %for.cond.430

for.end.477:                                      ; preds = %for.cond.430
  %399 = load i32, i32* %data_id, align 4
  %cmp478 = icmp sgt i32 %399, -2
  br i1 %cmp478, label %if.then.480, label %if.else.560

if.then.480:                                      ; preds = %for.end.477
  %400 = load i32, i32* %new_num_hood, align 4
  %401 = load i32, i32* %alloc_size, align 4
  %cmp481 = icmp eq i32 %400, %401
  br i1 %cmp481, label %if.then.483, label %if.end.493

if.then.483:                                      ; preds = %if.then.480
  %402 = load i32, i32* %num_hood, align 4
  %403 = load i32, i32* %alloc_size, align 4
  %add484 = add nsw i32 %403, %402
  store i32 %add484, i32* %alloc_size, align 4
  %404 = load i32*, i32** %new_hood_procs, align 8
  %405 = bitcast i32* %404 to i8*
  %406 = load i32, i32* %alloc_size, align 4
  %conv485 = sext i32 %406 to i64
  %mul486 = mul i64 4, %conv485
  %conv487 = trunc i64 %mul486 to i32
  %call488 = call i8* @hypre_ReAlloc(i8* %405, i32 %conv487)
  %407 = bitcast i8* %call488 to i32*
  store i32* %407, i32** %new_hood_procs, align 8
  %408 = load i32*, i32** %new_hood_ids, align 8
  %409 = bitcast i32* %408 to i8*
  %410 = load i32, i32* %alloc_size, align 4
  %conv489 = sext i32 %410 to i64
  %mul490 = mul i64 4, %conv489
  %conv491 = trunc i64 %mul490 to i32
  %call492 = call i8* @hypre_ReAlloc(i8* %409, i32 %conv491)
  %411 = bitcast i8* %call492 to i32*
  store i32* %411, i32** %new_hood_ids, align 8
  br label %if.end.493

if.end.493:                                       ; preds = %if.then.483, %if.then.480
  %412 = load i32, i32* %data_id, align 4
  %cmp494 = icmp eq i32 %412, -1
  br i1 %cmp494, label %if.then.496, label %if.else.514

if.then.496:                                      ; preds = %if.end.493
  %413 = load i32, i32* %j, align 4
  %idxprom497 = sext i32 %413 to i64
  %414 = load i32*, i32** %hood_procs, align 8
  %arrayidx498 = getelementptr inbounds i32, i32* %414, i64 %idxprom497
  %415 = load i32, i32* %arrayidx498, align 4
  %416 = load i32, i32* %new_num_hood, align 4
  %idxprom499 = sext i32 %416 to i64
  %417 = load i32*, i32** %new_hood_procs, align 8
  %arrayidx500 = getelementptr inbounds i32, i32* %417, i64 %idxprom499
  store i32 %415, i32* %arrayidx500, align 4
  %418 = load i32, i32* %j, align 4
  %idxprom501 = sext i32 %418 to i64
  %419 = load i32*, i32** %hood_ids, align 8
  %arrayidx502 = getelementptr inbounds i32, i32* %419, i64 %idxprom501
  %420 = load i32, i32* %arrayidx502, align 4
  %421 = load i32, i32* %new_num_hood, align 4
  %idxprom503 = sext i32 %421 to i64
  %422 = load i32*, i32** %new_hood_ids, align 8
  %arrayidx504 = getelementptr inbounds i32, i32* %422, i64 %idxprom503
  store i32 %420, i32* %arrayidx504, align 4
  %423 = load i32, i32* %j, align 4
  %idxprom505 = sext i32 %423 to i64
  %424 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %hood_boxes, align 8
  %boxes506 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %424, i32 0, i32 0
  %425 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes506, align 8
  %arrayidx507 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %425, i64 %idxprom505
  %426 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %new_hood_boxes, align 8
  %call508 = call i32 @hypre_AppendBox(%struct.hypre_Box_struct* %arrayidx507, %struct.hypre_BoxArray_struct* %426)
  %427 = load i32, i32* %j, align 4
  %428 = load i32, i32* %first_local, align 4
  %cmp509 = icmp eq i32 %427, %428
  br i1 %cmp509, label %if.then.511, label %if.end.512

if.then.511:                                      ; preds = %if.then.496
  %429 = load i32, i32* %new_num_hood, align 4
  store i32 %429, i32* %new_first_local, align 4
  br label %if.end.512

if.end.512:                                       ; preds = %if.then.511, %if.then.496
  %430 = load i32, i32* %j, align 4
  %inc513 = add nsw i32 %430, 1
  store i32 %inc513, i32* %j, align 4
  br label %if.end.558

if.else.514:                                      ; preds = %if.end.493
  %431 = load i32, i32* %data_id, align 4
  %idxprom515 = sext i32 %431 to i64
  %432 = load i32*, i32** %jrecv, align 8
  %arrayidx516 = getelementptr inbounds i32, i32* %432, i64 %idxprom515
  %433 = load i32, i32* %arrayidx516, align 4
  store i32 %433, i32* %jj, align 4
  %434 = load i32, i32* %jj, align 4
  %inc517 = add nsw i32 %434, 1
  store i32 %inc517, i32* %jj, align 4
  %idxprom518 = sext i32 %434 to i64
  %435 = load i32, i32* %data_id, align 4
  %idxprom519 = sext i32 %435 to i64
  %436 = load i32**, i32*** %recv_buffers, align 8
  %arrayidx520 = getelementptr inbounds i32*, i32** %436, i64 %idxprom519
  %437 = load i32*, i32** %arrayidx520, align 8
  %arrayidx521 = getelementptr inbounds i32, i32* %437, i64 %idxprom518
  %438 = load i32, i32* %arrayidx521, align 4
  %439 = load i32, i32* %new_num_hood, align 4
  %idxprom522 = sext i32 %439 to i64
  %440 = load i32*, i32** %new_hood_ids, align 8
  %arrayidx523 = getelementptr inbounds i32, i32* %440, i64 %idxprom522
  store i32 %438, i32* %arrayidx523, align 4
  %441 = load i32, i32* %jj, align 4
  %inc524 = add nsw i32 %441, 1
  store i32 %inc524, i32* %jj, align 4
  %idxprom525 = sext i32 %441 to i64
  %442 = load i32, i32* %data_id, align 4
  %idxprom526 = sext i32 %442 to i64
  %443 = load i32**, i32*** %recv_buffers, align 8
  %arrayidx527 = getelementptr inbounds i32*, i32** %443, i64 %idxprom526
  %444 = load i32*, i32** %arrayidx527, align 8
  %arrayidx528 = getelementptr inbounds i32, i32* %444, i64 %idxprom525
  %445 = load i32, i32* %arrayidx528, align 4
  %446 = load i32, i32* %new_num_hood, align 4
  %idxprom529 = sext i32 %446 to i64
  %447 = load i32*, i32** %new_hood_procs, align 8
  %arrayidx530 = getelementptr inbounds i32, i32* %447, i64 %idxprom529
  store i32 %445, i32* %arrayidx530, align 4
  store i32 0, i32* %d, align 4
  br label %for.cond.531

for.cond.531:                                     ; preds = %for.inc.549, %if.else.514
  %448 = load i32, i32* %d, align 4
  %cmp532 = icmp slt i32 %448, 3
  br i1 %cmp532, label %for.body.534, label %for.end.551

for.body.534:                                     ; preds = %for.cond.531
  %449 = load i32, i32* %jj, align 4
  %inc535 = add nsw i32 %449, 1
  store i32 %inc535, i32* %jj, align 4
  %idxprom536 = sext i32 %449 to i64
  %450 = load i32, i32* %data_id, align 4
  %idxprom537 = sext i32 %450 to i64
  %451 = load i32**, i32*** %recv_buffers, align 8
  %arrayidx538 = getelementptr inbounds i32*, i32** %451, i64 %idxprom537
  %452 = load i32*, i32** %arrayidx538, align 8
  %arrayidx539 = getelementptr inbounds i32, i32* %452, i64 %idxprom536
  %453 = load i32, i32* %arrayidx539, align 4
  %454 = load i32, i32* %d, align 4
  %idxprom540 = sext i32 %454 to i64
  %arrayidx541 = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i64 %idxprom540
  store i32 %453, i32* %arrayidx541, align 4
  %455 = load i32, i32* %jj, align 4
  %inc542 = add nsw i32 %455, 1
  store i32 %inc542, i32* %jj, align 4
  %idxprom543 = sext i32 %455 to i64
  %456 = load i32, i32* %data_id, align 4
  %idxprom544 = sext i32 %456 to i64
  %457 = load i32**, i32*** %recv_buffers, align 8
  %arrayidx545 = getelementptr inbounds i32*, i32** %457, i64 %idxprom544
  %458 = load i32*, i32** %arrayidx545, align 8
  %arrayidx546 = getelementptr inbounds i32, i32* %458, i64 %idxprom543
  %459 = load i32, i32* %arrayidx546, align 4
  %460 = load i32, i32* %d, align 4
  %idxprom547 = sext i32 %460 to i64
  %arrayidx548 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 %idxprom547
  store i32 %459, i32* %arrayidx548, align 4
  br label %for.inc.549

for.inc.549:                                      ; preds = %for.body.534
  %461 = load i32, i32* %d, align 4
  %inc550 = add nsw i32 %461, 1
  store i32 %inc550, i32* %d, align 4
  br label %for.cond.531

for.end.551:                                      ; preds = %for.cond.531
  %462 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %arraydecay552 = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i32 0
  %arraydecay553 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i32 0
  %call554 = call i32 @hypre_BoxSetExtents(%struct.hypre_Box_struct* %462, i32* %arraydecay552, i32* %arraydecay553)
  %463 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %464 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %new_hood_boxes, align 8
  %call555 = call i32 @hypre_AppendBox(%struct.hypre_Box_struct* %463, %struct.hypre_BoxArray_struct* %464)
  %465 = load i32, i32* %jj, align 4
  %466 = load i32, i32* %data_id, align 4
  %idxprom556 = sext i32 %466 to i64
  %467 = load i32*, i32** %jrecv, align 8
  %arrayidx557 = getelementptr inbounds i32, i32* %467, i64 %idxprom556
  store i32 %465, i32* %arrayidx557, align 4
  br label %if.end.558

if.end.558:                                       ; preds = %for.end.551, %if.end.512
  %468 = load i32, i32* %new_num_hood, align 4
  %inc559 = add nsw i32 %468, 1
  store i32 %inc559, i32* %new_num_hood, align 4
  br label %if.end.561

if.else.560:                                      ; preds = %for.end.477
  br label %while.end

if.end.561:                                       ; preds = %if.end.558
  br label %while.body

while.end:                                        ; preds = %if.else.560
  store i32 0, i32* %i, align 4
  br label %for.cond.562

for.cond.562:                                     ; preds = %for.inc.570, %while.end
  %469 = load i32, i32* %i, align 4
  %470 = load i32, i32* %num_recvs, align 4
  %cmp563 = icmp slt i32 %469, %470
  br i1 %cmp563, label %for.body.565, label %for.end.572

for.body.565:                                     ; preds = %for.cond.562
  %471 = load i32, i32* %i, align 4
  %idxprom566 = sext i32 %471 to i64
  %472 = load i32**, i32*** %recv_buffers, align 8
  %arrayidx567 = getelementptr inbounds i32*, i32** %472, i64 %idxprom566
  %473 = load i32*, i32** %arrayidx567, align 8
  %474 = bitcast i32* %473 to i8*
  call void @hypre_Free(i8* %474)
  %475 = load i32, i32* %i, align 4
  %idxprom568 = sext i32 %475 to i64
  %476 = load i32**, i32*** %recv_buffers, align 8
  %arrayidx569 = getelementptr inbounds i32*, i32** %476, i64 %idxprom568
  store i32* null, i32** %arrayidx569, align 8
  br label %for.inc.570

for.inc.570:                                      ; preds = %for.body.565
  %477 = load i32, i32* %i, align 4
  %inc571 = add nsw i32 %477, 1
  store i32 %inc571, i32* %i, align 4
  br label %for.cond.562

for.end.572:                                      ; preds = %for.cond.562
  %478 = load i32**, i32*** %recv_buffers, align 8
  %479 = bitcast i32** %478 to i8*
  call void @hypre_Free(i8* %479)
  store i32** null, i32*** %recv_buffers, align 8
  %480 = load i32*, i32** %recv_sizes, align 8
  %481 = bitcast i32* %480 to i8*
  call void @hypre_Free(i8* %481)
  store i32* null, i32** %recv_sizes, align 8
  %482 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %call573 = call i32 @hypre_BoxDestroy(%struct.hypre_Box_struct* %482)
  %483 = load i32*, i32** %jrecv, align 8
  %484 = bitcast i32* %483 to i8*
  call void @hypre_Free(i8* %484)
  store i32* null, i32** %jrecv, align 8
  %485 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %hood_boxes, align 8
  %call574 = call i32 @hypre_BoxArrayDestroy(%struct.hypre_BoxArray_struct* %485)
  %486 = load i32*, i32** %hood_procs, align 8
  %487 = bitcast i32* %486 to i8*
  call void @hypre_Free(i8* %487)
  store i32* null, i32** %hood_procs, align 8
  %488 = load i32*, i32** %hood_ids, align 8
  %489 = bitcast i32* %488 to i8*
  call void @hypre_Free(i8* %489)
  store i32* null, i32** %hood_ids, align 8
  %490 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %new_hood_boxes, align 8
  store %struct.hypre_BoxArray_struct* %490, %struct.hypre_BoxArray_struct** %hood_boxes, align 8
  %491 = load i32, i32* %new_num_hood, align 4
  store i32 %491, i32* %num_hood, align 4
  %492 = load i32*, i32** %new_hood_procs, align 8
  store i32* %492, i32** %hood_procs, align 8
  %493 = load i32*, i32** %new_hood_ids, align 8
  store i32* %493, i32** %hood_ids, align 8
  %494 = load i32, i32* %new_first_local, align 4
  store i32 %494, i32* %first_local, align 4
  br label %if.end.575

if.end.575:                                       ; preds = %for.end.572, %if.end.388
  %495 = load i32*, i32** %send_procs, align 8
  %496 = bitcast i32* %495 to i8*
  call void @hypre_Free(i8* %496)
  store i32* null, i32** %send_procs, align 8
  %497 = load i32*, i32** %recv_procs, align 8
  %498 = bitcast i32* %497 to i8*
  call void @hypre_Free(i8* %498)
  store i32* null, i32** %recv_procs, align 8
  %499 = load i32, i32* %prune.addr, align 4
  %tobool576 = icmp ne i32 %499, 0
  br i1 %tobool576, label %if.then.577, label %if.end.719

if.then.577:                                      ; preds = %if.end.575
  store i32 0, i32* %j, align 4
  store i32 -1, i32* %new_first_local, align 4
  store i32 0, i32* %new_num_local, align 4
  store i32 0, i32* %new_num_periodic, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.578

for.cond.578:                                     ; preds = %for.inc.715, %if.then.577
  %500 = load i32, i32* %i, align 4
  %501 = load i32, i32* %num_hood, align 4
  %cmp579 = icmp slt i32 %500, %501
  br i1 %cmp579, label %for.body.581, label %for.end.717

for.body.581:                                     ; preds = %for.cond.578
  %502 = load i32, i32* %i, align 4
  %idxprom582 = sext i32 %502 to i64
  %503 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %hood_boxes, align 8
  %boxes583 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %503, i32 0, i32 0
  %504 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes583, align 8
  %arrayidx584 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %504, i64 %idxprom582
  store %struct.hypre_Box_struct* %arrayidx584, %struct.hypre_Box_struct** %box, align 8
  %505 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax585 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %505, i32 0, i32 1
  %arrayidx586 = getelementptr inbounds [3 x i32], [3 x i32]* %imax585, i32 0, i64 0
  %506 = load i32, i32* %arrayidx586, align 4
  %507 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin587 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %507, i32 0, i32 0
  %arrayidx588 = getelementptr inbounds [3 x i32], [3 x i32]* %imin587, i32 0, i64 0
  %508 = load i32, i32* %arrayidx588, align 4
  %sub589 = sub nsw i32 %506, %508
  %add590 = add nsw i32 %sub589, 1
  %cmp591 = icmp slt i32 0, %add590
  br i1 %cmp591, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.581
  %509 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax593 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %509, i32 0, i32 1
  %arrayidx594 = getelementptr inbounds [3 x i32], [3 x i32]* %imax593, i32 0, i64 0
  %510 = load i32, i32* %arrayidx594, align 4
  %511 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin595 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %511, i32 0, i32 0
  %arrayidx596 = getelementptr inbounds [3 x i32], [3 x i32]* %imin595, i32 0, i64 0
  %512 = load i32, i32* %arrayidx596, align 4
  %sub597 = sub nsw i32 %510, %512
  %add598 = add nsw i32 %sub597, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body.581
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add598, %cond.true ], [ 0, %cond.false ]
  %513 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax599 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %513, i32 0, i32 1
  %arrayidx600 = getelementptr inbounds [3 x i32], [3 x i32]* %imax599, i32 0, i64 1
  %514 = load i32, i32* %arrayidx600, align 4
  %515 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin601 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %515, i32 0, i32 0
  %arrayidx602 = getelementptr inbounds [3 x i32], [3 x i32]* %imin601, i32 0, i64 1
  %516 = load i32, i32* %arrayidx602, align 4
  %sub603 = sub nsw i32 %514, %516
  %add604 = add nsw i32 %sub603, 1
  %cmp605 = icmp slt i32 0, %add604
  br i1 %cmp605, label %cond.true.607, label %cond.false.614

cond.true.607:                                    ; preds = %cond.end
  %517 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax608 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %517, i32 0, i32 1
  %arrayidx609 = getelementptr inbounds [3 x i32], [3 x i32]* %imax608, i32 0, i64 1
  %518 = load i32, i32* %arrayidx609, align 4
  %519 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin610 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %519, i32 0, i32 0
  %arrayidx611 = getelementptr inbounds [3 x i32], [3 x i32]* %imin610, i32 0, i64 1
  %520 = load i32, i32* %arrayidx611, align 4
  %sub612 = sub nsw i32 %518, %520
  %add613 = add nsw i32 %sub612, 1
  br label %cond.end.615

cond.false.614:                                   ; preds = %cond.end
  br label %cond.end.615

cond.end.615:                                     ; preds = %cond.false.614, %cond.true.607
  %cond616 = phi i32 [ %add613, %cond.true.607 ], [ 0, %cond.false.614 ]
  %mul617 = mul nsw i32 %cond, %cond616
  %521 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax618 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %521, i32 0, i32 1
  %arrayidx619 = getelementptr inbounds [3 x i32], [3 x i32]* %imax618, i32 0, i64 2
  %522 = load i32, i32* %arrayidx619, align 4
  %523 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin620 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %523, i32 0, i32 0
  %arrayidx621 = getelementptr inbounds [3 x i32], [3 x i32]* %imin620, i32 0, i64 2
  %524 = load i32, i32* %arrayidx621, align 4
  %sub622 = sub nsw i32 %522, %524
  %add623 = add nsw i32 %sub622, 1
  %cmp624 = icmp slt i32 0, %add623
  br i1 %cmp624, label %cond.true.626, label %cond.false.633

cond.true.626:                                    ; preds = %cond.end.615
  %525 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax627 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %525, i32 0, i32 1
  %arrayidx628 = getelementptr inbounds [3 x i32], [3 x i32]* %imax627, i32 0, i64 2
  %526 = load i32, i32* %arrayidx628, align 4
  %527 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin629 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %527, i32 0, i32 0
  %arrayidx630 = getelementptr inbounds [3 x i32], [3 x i32]* %imin629, i32 0, i64 2
  %528 = load i32, i32* %arrayidx630, align 4
  %sub631 = sub nsw i32 %526, %528
  %add632 = add nsw i32 %sub631, 1
  br label %cond.end.634

cond.false.633:                                   ; preds = %cond.end.615
  br label %cond.end.634

cond.end.634:                                     ; preds = %cond.false.633, %cond.true.626
  %cond635 = phi i32 [ %add632, %cond.true.626 ], [ 0, %cond.false.633 ]
  %mul636 = mul nsw i32 %mul617, %cond635
  %tobool637 = icmp ne i32 %mul636, 0
  br i1 %tobool637, label %if.then.638, label %if.end.714

if.then.638:                                      ; preds = %cond.end.634
  %529 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin639 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %529, i32 0, i32 0
  %arrayidx640 = getelementptr inbounds [3 x i32], [3 x i32]* %imin639, i32 0, i64 0
  %530 = load i32, i32* %arrayidx640, align 4
  %531 = load i32, i32* %j, align 4
  %idxprom641 = sext i32 %531 to i64
  %532 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %hood_boxes, align 8
  %boxes642 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %532, i32 0, i32 0
  %533 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes642, align 8
  %arrayidx643 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %533, i64 %idxprom641
  %imin644 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx643, i32 0, i32 0
  %arrayidx645 = getelementptr inbounds [3 x i32], [3 x i32]* %imin644, i32 0, i64 0
  store i32 %530, i32* %arrayidx645, align 4
  %534 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin646 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %534, i32 0, i32 0
  %arrayidx647 = getelementptr inbounds [3 x i32], [3 x i32]* %imin646, i32 0, i64 1
  %535 = load i32, i32* %arrayidx647, align 4
  %536 = load i32, i32* %j, align 4
  %idxprom648 = sext i32 %536 to i64
  %537 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %hood_boxes, align 8
  %boxes649 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %537, i32 0, i32 0
  %538 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes649, align 8
  %arrayidx650 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %538, i64 %idxprom648
  %imin651 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx650, i32 0, i32 0
  %arrayidx652 = getelementptr inbounds [3 x i32], [3 x i32]* %imin651, i32 0, i64 1
  store i32 %535, i32* %arrayidx652, align 4
  %539 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin653 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %539, i32 0, i32 0
  %arrayidx654 = getelementptr inbounds [3 x i32], [3 x i32]* %imin653, i32 0, i64 2
  %540 = load i32, i32* %arrayidx654, align 4
  %541 = load i32, i32* %j, align 4
  %idxprom655 = sext i32 %541 to i64
  %542 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %hood_boxes, align 8
  %boxes656 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %542, i32 0, i32 0
  %543 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes656, align 8
  %arrayidx657 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %543, i64 %idxprom655
  %imin658 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx657, i32 0, i32 0
  %arrayidx659 = getelementptr inbounds [3 x i32], [3 x i32]* %imin658, i32 0, i64 2
  store i32 %540, i32* %arrayidx659, align 4
  %544 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax660 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %544, i32 0, i32 1
  %arrayidx661 = getelementptr inbounds [3 x i32], [3 x i32]* %imax660, i32 0, i64 0
  %545 = load i32, i32* %arrayidx661, align 4
  %546 = load i32, i32* %j, align 4
  %idxprom662 = sext i32 %546 to i64
  %547 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %hood_boxes, align 8
  %boxes663 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %547, i32 0, i32 0
  %548 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes663, align 8
  %arrayidx664 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %548, i64 %idxprom662
  %imax665 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx664, i32 0, i32 1
  %arrayidx666 = getelementptr inbounds [3 x i32], [3 x i32]* %imax665, i32 0, i64 0
  store i32 %545, i32* %arrayidx666, align 4
  %549 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax667 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %549, i32 0, i32 1
  %arrayidx668 = getelementptr inbounds [3 x i32], [3 x i32]* %imax667, i32 0, i64 1
  %550 = load i32, i32* %arrayidx668, align 4
  %551 = load i32, i32* %j, align 4
  %idxprom669 = sext i32 %551 to i64
  %552 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %hood_boxes, align 8
  %boxes670 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %552, i32 0, i32 0
  %553 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes670, align 8
  %arrayidx671 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %553, i64 %idxprom669
  %imax672 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx671, i32 0, i32 1
  %arrayidx673 = getelementptr inbounds [3 x i32], [3 x i32]* %imax672, i32 0, i64 1
  store i32 %550, i32* %arrayidx673, align 4
  %554 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax674 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %554, i32 0, i32 1
  %arrayidx675 = getelementptr inbounds [3 x i32], [3 x i32]* %imax674, i32 0, i64 2
  %555 = load i32, i32* %arrayidx675, align 4
  %556 = load i32, i32* %j, align 4
  %idxprom676 = sext i32 %556 to i64
  %557 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %hood_boxes, align 8
  %boxes677 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %557, i32 0, i32 0
  %558 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes677, align 8
  %arrayidx678 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %558, i64 %idxprom676
  %imax679 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx678, i32 0, i32 1
  %arrayidx680 = getelementptr inbounds [3 x i32], [3 x i32]* %imax679, i32 0, i64 2
  store i32 %555, i32* %arrayidx680, align 4
  %559 = load i32, i32* %i, align 4
  %idxprom681 = sext i32 %559 to i64
  %560 = load i32*, i32** %hood_procs, align 8
  %arrayidx682 = getelementptr inbounds i32, i32* %560, i64 %idxprom681
  %561 = load i32, i32* %arrayidx682, align 4
  %562 = load i32, i32* %j, align 4
  %idxprom683 = sext i32 %562 to i64
  %563 = load i32*, i32** %hood_procs, align 8
  %arrayidx684 = getelementptr inbounds i32, i32* %563, i64 %idxprom683
  store i32 %561, i32* %arrayidx684, align 4
  %564 = load i32, i32* %i, align 4
  %idxprom685 = sext i32 %564 to i64
  %565 = load i32*, i32** %hood_ids, align 8
  %arrayidx686 = getelementptr inbounds i32, i32* %565, i64 %idxprom685
  %566 = load i32, i32* %arrayidx686, align 4
  %567 = load i32, i32* %j, align 4
  %idxprom687 = sext i32 %567 to i64
  %568 = load i32*, i32** %hood_ids, align 8
  %arrayidx688 = getelementptr inbounds i32, i32* %568, i64 %idxprom687
  store i32 %566, i32* %arrayidx688, align 4
  %569 = load i32, i32* %i, align 4
  %570 = load i32, i32* %first_local, align 4
  %cmp689 = icmp sge i32 %569, %570
  br i1 %cmp689, label %land.lhs.true, label %if.else.700

land.lhs.true:                                    ; preds = %if.then.638
  %571 = load i32, i32* %i, align 4
  %572 = load i32, i32* %first_local, align 4
  %573 = load i32, i32* %num_local, align 4
  %add691 = add nsw i32 %572, %573
  %cmp692 = icmp slt i32 %571, %add691
  br i1 %cmp692, label %if.then.694, label %if.else.700

if.then.694:                                      ; preds = %land.lhs.true
  %574 = load i32, i32* %new_first_local, align 4
  %cmp695 = icmp eq i32 %574, -1
  br i1 %cmp695, label %if.then.697, label %if.end.698

if.then.697:                                      ; preds = %if.then.694
  %575 = load i32, i32* %j, align 4
  store i32 %575, i32* %new_first_local, align 4
  br label %if.end.698

if.end.698:                                       ; preds = %if.then.697, %if.then.694
  %576 = load i32, i32* %new_num_local, align 4
  %inc699 = add nsw i32 %576, 1
  store i32 %inc699, i32* %new_num_local, align 4
  br label %if.end.712

if.else.700:                                      ; preds = %land.lhs.true, %if.then.638
  %577 = load i32, i32* %i, align 4
  %578 = load i32, i32* %first_local, align 4
  %579 = load i32, i32* %num_local, align 4
  %add701 = add nsw i32 %578, %579
  %cmp702 = icmp sge i32 %577, %add701
  br i1 %cmp702, label %land.lhs.true.704, label %if.end.711

land.lhs.true.704:                                ; preds = %if.else.700
  %580 = load i32, i32* %i, align 4
  %581 = load i32, i32* %first_local, align 4
  %582 = load i32, i32* %num_local, align 4
  %add705 = add nsw i32 %581, %582
  %583 = load i32, i32* %num_periodic, align 4
  %add706 = add nsw i32 %add705, %583
  %cmp707 = icmp slt i32 %580, %add706
  br i1 %cmp707, label %if.then.709, label %if.end.711

if.then.709:                                      ; preds = %land.lhs.true.704
  %584 = load i32, i32* %new_num_periodic, align 4
  %inc710 = add nsw i32 %584, 1
  store i32 %inc710, i32* %new_num_periodic, align 4
  br label %if.end.711

if.end.711:                                       ; preds = %if.then.709, %land.lhs.true.704, %if.else.700
  br label %if.end.712

if.end.712:                                       ; preds = %if.end.711, %if.end.698
  %585 = load i32, i32* %j, align 4
  %inc713 = add nsw i32 %585, 1
  store i32 %inc713, i32* %j, align 4
  br label %if.end.714

if.end.714:                                       ; preds = %if.end.712, %cond.end.634
  br label %for.inc.715

for.inc.715:                                      ; preds = %if.end.714
  %586 = load i32, i32* %i, align 4
  %inc716 = add nsw i32 %586, 1
  store i32 %inc716, i32* %i, align 4
  br label %for.cond.578

for.end.717:                                      ; preds = %for.cond.578
  %587 = load i32, i32* %j, align 4
  store i32 %587, i32* %num_hood, align 4
  %588 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %hood_boxes, align 8
  %589 = load i32, i32* %num_hood, align 4
  %call718 = call i32 @hypre_BoxArraySetSize(%struct.hypre_BoxArray_struct* %588, i32 %589)
  %590 = load i32, i32* %new_first_local, align 4
  store i32 %590, i32* %first_local, align 4
  %591 = load i32, i32* %new_num_local, align 4
  store i32 %591, i32* %num_local, align 4
  %592 = load i32, i32* %new_num_periodic, align 4
  store i32 %592, i32* %num_periodic, align 4
  br label %if.end.719

if.end.719:                                       ; preds = %for.end.717, %if.end.575
  %593 = load i32, i32* %comm, align 4
  %594 = load i32, i32* %dim, align 4
  %call720 = call i32 @hypre_StructGridCreate(i32 %593, i32 %594, %struct.hypre_StructGrid_struct** %cgrid)
  %595 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %cgrid, align 8
  %596 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %hood_boxes, align 8
  %597 = load i32*, i32** %hood_procs, align 8
  %598 = load i32*, i32** %hood_ids, align 8
  %599 = load i32, i32* %first_local, align 4
  %600 = load i32, i32* %num_local, align 4
  %601 = load i32, i32* %num_periodic, align 4
  %602 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %bounding_box, align 8
  %call721 = call i32 @hypre_StructGridSetHood(%struct.hypre_StructGrid_struct* %595, %struct.hypre_BoxArray_struct* %596, i32* %597, i32* %598, i32 %599, i32 %600, i32 %601, %struct.hypre_Box_struct* %602)
  %603 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %cgrid, align 8
  %604 = load i32, i32* %max_distance, align 4
  %call722 = call i32 @hypre_StructGridSetHoodInfo(%struct.hypre_StructGrid_struct* %603, i32 %604)
  store i32 0, i32* %d, align 4
  br label %for.cond.723

for.cond.723:                                     ; preds = %for.inc.739, %if.end.719
  %605 = load i32, i32* %d, align 4
  %606 = load i32, i32* %dim, align 4
  %cmp724 = icmp slt i32 %605, %606
  br i1 %cmp724, label %for.body.726, label %for.end.741

for.body.726:                                     ; preds = %for.cond.723
  %607 = load i32, i32* %d, align 4
  %idxprom727 = sext i32 %607 to i64
  %arrayidx728 = getelementptr inbounds [3 x i32], [3 x i32]* %periodic, i32 0, i64 %idxprom727
  %608 = load i32, i32* %arrayidx728, align 4
  %cmp729 = icmp sgt i32 %608, 0
  br i1 %cmp729, label %if.then.731, label %if.end.738

if.then.731:                                      ; preds = %for.body.726
  %609 = load i32, i32* %d, align 4
  %idxprom732 = sext i32 %609 to i64
  %arrayidx733 = getelementptr inbounds [3 x i32], [3 x i32]* %periodic, i32 0, i64 %idxprom732
  %610 = load i32, i32* %arrayidx733, align 4
  %611 = load i32, i32* %d, align 4
  %idxprom734 = sext i32 %611 to i64
  %612 = load i32*, i32** %stride.addr, align 8
  %arrayidx735 = getelementptr inbounds i32, i32* %612, i64 %idxprom734
  %613 = load i32, i32* %arrayidx735, align 4
  %div = sdiv i32 %610, %613
  %614 = load i32, i32* %d, align 4
  %idxprom736 = sext i32 %614 to i64
  %arrayidx737 = getelementptr inbounds [3 x i32], [3 x i32]* %periodic, i32 0, i64 %idxprom736
  store i32 %div, i32* %arrayidx737, align 4
  br label %if.end.738

if.end.738:                                       ; preds = %if.then.731, %for.body.726
  br label %for.inc.739

for.inc.739:                                      ; preds = %if.end.738
  %615 = load i32, i32* %d, align 4
  %inc740 = add nsw i32 %615, 1
  store i32 %inc740, i32* %d, align 4
  br label %for.cond.723

for.end.741:                                      ; preds = %for.cond.723
  %616 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %cgrid, align 8
  %arraydecay742 = getelementptr inbounds [3 x i32], [3 x i32]* %periodic, i32 0, i32 0
  %call743 = call i32 @hypre_StructGridSetPeriodic(%struct.hypre_StructGrid_struct* %616, i32* %arraydecay742)
  %617 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %cgrid, align 8
  %call744 = call i32 @hypre_StructGridAssemble(%struct.hypre_StructGrid_struct* %617)
  %618 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %cgrid, align 8
  %619 = load %struct.hypre_StructGrid_struct**, %struct.hypre_StructGrid_struct*** %cgrid_ptr.addr, align 8
  store %struct.hypre_StructGrid_struct* %618, %struct.hypre_StructGrid_struct** %619, align 8
  %620 = load i32, i32* %ierr, align 4
  ret i32 %620
}

declare %struct.hypre_BoxArray_struct* @hypre_BoxArrayDuplicate(%struct.hypre_BoxArray_struct*) #1

declare i8* @hypre_MAlloc(i32) #1

declare %struct.hypre_Box_struct* @hypre_BoxDuplicate(%struct.hypre_Box_struct*) #1

declare i32 @hypre_MPI_Comm_rank(i32, i32*) #1

declare i32 @hypre_ProjectBox(%struct.hypre_Box_struct*, i32*, i32*) #1

declare %struct.hypre_Box_struct* @hypre_BoxCreate() #1

declare i32 @hypre_BoxDestroy(%struct.hypre_Box_struct*) #1

declare i32 @hypre_MPI_Irecv(i8*, i32, i32, i32, i32, i32, i32*) #1

declare i32 @hypre_MPI_Isend(i8*, i32, i32, i32, i32, i32, i32*) #1

declare i32 @hypre_MPI_Waitall(i32, i32*, %struct.hypre_MPI_Status*) #1

declare void @hypre_Free(i8*) #1

declare %struct.hypre_BoxArray_struct* @hypre_BoxArrayCreate(i32) #1

declare i32 @hypre_BoxArraySetSize(%struct.hypre_BoxArray_struct*, i32) #1

declare i8* @hypre_CAlloc(i32, i32) #1

declare i8* @hypre_ReAlloc(i8*, i32) #1

declare i32 @hypre_AppendBox(%struct.hypre_Box_struct*, %struct.hypre_BoxArray_struct*) #1

declare i32 @hypre_BoxSetExtents(%struct.hypre_Box_struct*, i32*, i32*) #1

declare i32 @hypre_BoxArrayDestroy(%struct.hypre_BoxArray_struct*) #1

declare i32 @hypre_StructGridCreate(i32, i32, %struct.hypre_StructGrid_struct**) #1

declare i32 @hypre_StructGridSetHood(%struct.hypre_StructGrid_struct*, %struct.hypre_BoxArray_struct*, i32*, i32*, i32, i32, i32, %struct.hypre_Box_struct*) #1

declare i32 @hypre_StructGridSetHoodInfo(%struct.hypre_StructGrid_struct*, i32) #1

declare i32 @hypre_StructGridSetPeriodic(%struct.hypre_StructGrid_struct*, i32*) #1

declare i32 @hypre_StructGridAssemble(%struct.hypre_StructGrid_struct*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
