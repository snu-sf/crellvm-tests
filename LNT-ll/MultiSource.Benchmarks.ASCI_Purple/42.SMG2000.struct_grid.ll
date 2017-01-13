; ModuleID = './MultiSource.Benchmarks.ASCI_Purple/42.SMG2000.struct_grid.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hypre_StructGrid_struct = type { i32, i32, %struct.hypre_BoxArray_struct*, i32*, %struct.hypre_BoxNeighbors_struct*, i32, %struct.hypre_Box_struct*, i32, i32, [3 x i32], i32 }
%struct.hypre_BoxArray_struct = type { %struct.hypre_Box_struct*, i32, i32 }
%struct.hypre_BoxNeighbors_struct = type { %struct.hypre_BoxArray_struct*, i32*, i32*, i32, i32, i32, [3 x [3 x [3 x %struct.hypre_RankLink_struct*]]]* }
%struct.hypre_RankLink_struct = type { i32, %struct.hypre_RankLink_struct* }
%struct.hypre_Box_struct = type { [3 x i32], [3 x i32] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"%d:  (%d, %d, %d)  x  (%d, %d, %d)\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @hypre_StructGridCreate(i32 %comm, i32 %dim, %struct.hypre_StructGrid_struct** %grid_ptr) #0 {
entry:
  %comm.addr = alloca i32, align 4
  %dim.addr = alloca i32, align 4
  %grid_ptr.addr = alloca %struct.hypre_StructGrid_struct**, align 8
  %grid = alloca %struct.hypre_StructGrid_struct*, align 8
  store i32 %comm, i32* %comm.addr, align 4
  store i32 %dim, i32* %dim.addr, align 4
  store %struct.hypre_StructGrid_struct** %grid_ptr, %struct.hypre_StructGrid_struct*** %grid_ptr.addr, align 8
  %call = call i8* @hypre_MAlloc(i32 72)
  %0 = bitcast i8* %call to %struct.hypre_StructGrid_struct*
  store %struct.hypre_StructGrid_struct* %0, %struct.hypre_StructGrid_struct** %grid, align 8
  %1 = load i32, i32* %comm.addr, align 4
  %2 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %comm1 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %2, i32 0, i32 0
  store i32 %1, i32* %comm1, align 4
  %3 = load i32, i32* %dim.addr, align 4
  %4 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %dim2 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %4, i32 0, i32 1
  store i32 %3, i32* %dim2, align 4
  %call3 = call %struct.hypre_BoxArray_struct* @hypre_BoxArrayCreate(i32 0)
  %5 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %boxes = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %5, i32 0, i32 2
  store %struct.hypre_BoxArray_struct* %call3, %struct.hypre_BoxArray_struct** %boxes, align 8
  %6 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %ids = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %6, i32 0, i32 3
  store i32* null, i32** %ids, align 8
  %7 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %neighbors = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %7, i32 0, i32 4
  store %struct.hypre_BoxNeighbors_struct* null, %struct.hypre_BoxNeighbors_struct** %neighbors, align 8
  %8 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %max_distance = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %8, i32 0, i32 5
  store i32 2, i32* %max_distance, align 4
  %9 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %bounding_box = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %9, i32 0, i32 6
  store %struct.hypre_Box_struct* null, %struct.hypre_Box_struct** %bounding_box, align 8
  %10 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %local_size = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %10, i32 0, i32 7
  store i32 0, i32* %local_size, align 4
  %11 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %global_size = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %11, i32 0, i32 8
  store i32 0, i32* %global_size, align 4
  %12 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %periodic = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %12, i32 0, i32 9
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %periodic, i32 0, i64 0
  store i32 0, i32* %arrayidx, align 4
  %13 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %periodic4 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %13, i32 0, i32 9
  %arrayidx5 = getelementptr inbounds [3 x i32], [3 x i32]* %periodic4, i32 0, i64 1
  store i32 0, i32* %arrayidx5, align 4
  %14 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %periodic6 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %14, i32 0, i32 9
  %arrayidx7 = getelementptr inbounds [3 x i32], [3 x i32]* %periodic6, i32 0, i64 2
  store i32 0, i32* %arrayidx7, align 4
  %15 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %ref_count = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %15, i32 0, i32 10
  store i32 1, i32* %ref_count, align 4
  %16 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %17 = load %struct.hypre_StructGrid_struct**, %struct.hypre_StructGrid_struct*** %grid_ptr.addr, align 8
  store %struct.hypre_StructGrid_struct* %16, %struct.hypre_StructGrid_struct** %17, align 8
  ret i32 0
}

declare i8* @hypre_MAlloc(i32) #1

declare %struct.hypre_BoxArray_struct* @hypre_BoxArrayCreate(i32) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_StructGridRef(%struct.hypre_StructGrid_struct* %grid, %struct.hypre_StructGrid_struct** %grid_ref) #0 {
entry:
  %grid.addr = alloca %struct.hypre_StructGrid_struct*, align 8
  %grid_ref.addr = alloca %struct.hypre_StructGrid_struct**, align 8
  store %struct.hypre_StructGrid_struct* %grid, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  store %struct.hypre_StructGrid_struct** %grid_ref, %struct.hypre_StructGrid_struct*** %grid_ref.addr, align 8
  %0 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %ref_count = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %0, i32 0, i32 10
  %1 = load i32, i32* %ref_count, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %ref_count, align 4
  %2 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %3 = load %struct.hypre_StructGrid_struct**, %struct.hypre_StructGrid_struct*** %grid_ref.addr, align 8
  store %struct.hypre_StructGrid_struct* %2, %struct.hypre_StructGrid_struct** %3, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @hypre_StructGridDestroy(%struct.hypre_StructGrid_struct* %grid) #0 {
entry:
  %grid.addr = alloca %struct.hypre_StructGrid_struct*, align 8
  %ierr = alloca i32, align 4
  store %struct.hypre_StructGrid_struct* %grid, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %tobool = icmp ne %struct.hypre_StructGrid_struct* %0, null
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %1 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %ref_count = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %1, i32 0, i32 10
  %2 = load i32, i32* %ref_count, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %ref_count, align 4
  %3 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %ref_count1 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %3, i32 0, i32 10
  %4 = load i32, i32* %ref_count1, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %5 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %bounding_box = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %5, i32 0, i32 6
  %6 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %bounding_box, align 8
  %call = call i32 @hypre_BoxDestroy(%struct.hypre_Box_struct* %6)
  %7 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %neighbors = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %7, i32 0, i32 4
  %8 = load %struct.hypre_BoxNeighbors_struct*, %struct.hypre_BoxNeighbors_struct** %neighbors, align 8
  %call3 = call i32 @hypre_BoxNeighborsDestroy(%struct.hypre_BoxNeighbors_struct* %8)
  %9 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %ids = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %9, i32 0, i32 3
  %10 = load i32*, i32** %ids, align 8
  %11 = bitcast i32* %10 to i8*
  call void @hypre_Free(i8* %11)
  %12 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %ids4 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %12, i32 0, i32 3
  store i32* null, i32** %ids4, align 8
  %13 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %boxes = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %13, i32 0, i32 2
  %14 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %call5 = call i32 @hypre_BoxArrayDestroy(%struct.hypre_BoxArray_struct* %14)
  %15 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %16 = bitcast %struct.hypre_StructGrid_struct* %15 to i8*
  call void @hypre_Free(i8* %16)
  store %struct.hypre_StructGrid_struct* null, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %17 = load i32, i32* %ierr, align 4
  ret i32 %17
}

declare i32 @hypre_BoxDestroy(%struct.hypre_Box_struct*) #1

declare i32 @hypre_BoxNeighborsDestroy(%struct.hypre_BoxNeighbors_struct*) #1

declare void @hypre_Free(i8*) #1

declare i32 @hypre_BoxArrayDestroy(%struct.hypre_BoxArray_struct*) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_StructGridSetHoodInfo(%struct.hypre_StructGrid_struct* %grid, i32 %max_distance) #0 {
entry:
  %grid.addr = alloca %struct.hypre_StructGrid_struct*, align 8
  %max_distance.addr = alloca i32, align 4
  %ierr = alloca i32, align 4
  store %struct.hypre_StructGrid_struct* %grid, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  store i32 %max_distance, i32* %max_distance.addr, align 4
  store i32 0, i32* %ierr, align 4
  %0 = load i32, i32* %max_distance.addr, align 4
  %1 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %max_distance1 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %1, i32 0, i32 5
  store i32 %0, i32* %max_distance1, align 4
  %2 = load i32, i32* %ierr, align 4
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define i32 @hypre_StructGridSetPeriodic(%struct.hypre_StructGrid_struct* %grid, i32* %periodic) #0 {
entry:
  %grid.addr = alloca %struct.hypre_StructGrid_struct*, align 8
  %periodic.addr = alloca i32*, align 8
  %ierr = alloca i32, align 4
  store %struct.hypre_StructGrid_struct* %grid, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  store i32* %periodic, i32** %periodic.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load i32*, i32** %periodic.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %2 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %periodic1 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %2, i32 0, i32 9
  %arrayidx2 = getelementptr inbounds [3 x i32], [3 x i32]* %periodic1, i32 0, i64 0
  store i32 %1, i32* %arrayidx2, align 4
  %3 = load i32*, i32** %periodic.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %3, i64 1
  %4 = load i32, i32* %arrayidx3, align 4
  %5 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %periodic4 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %5, i32 0, i32 9
  %arrayidx5 = getelementptr inbounds [3 x i32], [3 x i32]* %periodic4, i32 0, i64 1
  store i32 %4, i32* %arrayidx5, align 4
  %6 = load i32*, i32** %periodic.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %6, i64 2
  %7 = load i32, i32* %arrayidx6, align 4
  %8 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %periodic7 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %8, i32 0, i32 9
  %arrayidx8 = getelementptr inbounds [3 x i32], [3 x i32]* %periodic7, i32 0, i64 2
  store i32 %7, i32* %arrayidx8, align 4
  %9 = load i32, i32* %ierr, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @hypre_StructGridSetExtents(%struct.hypre_StructGrid_struct* %grid, i32* %ilower, i32* %iupper) #0 {
entry:
  %grid.addr = alloca %struct.hypre_StructGrid_struct*, align 8
  %ilower.addr = alloca i32*, align 8
  %iupper.addr = alloca i32*, align 8
  %ierr = alloca i32, align 4
  %box = alloca %struct.hypre_Box_struct*, align 8
  store %struct.hypre_StructGrid_struct* %grid, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  store i32* %ilower, i32** %ilower.addr, align 8
  store i32* %iupper, i32** %iupper.addr, align 8
  store i32 0, i32* %ierr, align 4
  %call = call %struct.hypre_Box_struct* @hypre_BoxCreate()
  store %struct.hypre_Box_struct* %call, %struct.hypre_Box_struct** %box, align 8
  %0 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %1 = load i32*, i32** %ilower.addr, align 8
  %2 = load i32*, i32** %iupper.addr, align 8
  %call1 = call i32 @hypre_BoxSetExtents(%struct.hypre_Box_struct* %0, i32* %1, i32* %2)
  %3 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %4 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %boxes = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %4, i32 0, i32 2
  %5 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %call2 = call i32 @hypre_AppendBox(%struct.hypre_Box_struct* %3, %struct.hypre_BoxArray_struct* %5)
  %6 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %call3 = call i32 @hypre_BoxDestroy(%struct.hypre_Box_struct* %6)
  %7 = load i32, i32* %ierr, align 4
  ret i32 %7
}

declare %struct.hypre_Box_struct* @hypre_BoxCreate() #1

declare i32 @hypre_BoxSetExtents(%struct.hypre_Box_struct*, i32*, i32*) #1

declare i32 @hypre_AppendBox(%struct.hypre_Box_struct*, %struct.hypre_BoxArray_struct*) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_StructGridSetBoxes(%struct.hypre_StructGrid_struct* %grid, %struct.hypre_BoxArray_struct* %boxes) #0 {
entry:
  %grid.addr = alloca %struct.hypre_StructGrid_struct*, align 8
  %boxes.addr = alloca %struct.hypre_BoxArray_struct*, align 8
  %ierr = alloca i32, align 4
  store %struct.hypre_StructGrid_struct* %grid, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  store %struct.hypre_BoxArray_struct* %boxes, %struct.hypre_BoxArray_struct** %boxes.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %boxes1 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %0, i32 0, i32 2
  %1 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes1, align 8
  %2 = bitcast %struct.hypre_BoxArray_struct* %1 to i8*
  call void @hypre_Free(i8* %2)
  %3 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %boxes2 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %3, i32 0, i32 2
  store %struct.hypre_BoxArray_struct* null, %struct.hypre_BoxArray_struct** %boxes2, align 8
  %4 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes.addr, align 8
  %5 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %boxes3 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %5, i32 0, i32 2
  store %struct.hypre_BoxArray_struct* %4, %struct.hypre_BoxArray_struct** %boxes3, align 8
  %6 = load i32, i32* %ierr, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @hypre_StructGridSetHood(%struct.hypre_StructGrid_struct* %grid, %struct.hypre_BoxArray_struct* %hood_boxes, i32* %hood_procs, i32* %hood_ids, i32 %first_local, i32 %num_local, i32 %num_periodic, %struct.hypre_Box_struct* %bounding_box) #0 {
entry:
  %grid.addr = alloca %struct.hypre_StructGrid_struct*, align 8
  %hood_boxes.addr = alloca %struct.hypre_BoxArray_struct*, align 8
  %hood_procs.addr = alloca i32*, align 8
  %hood_ids.addr = alloca i32*, align 8
  %first_local.addr = alloca i32, align 4
  %num_local.addr = alloca i32, align 4
  %num_periodic.addr = alloca i32, align 4
  %bounding_box.addr = alloca %struct.hypre_Box_struct*, align 8
  %ierr = alloca i32, align 4
  %boxes = alloca %struct.hypre_BoxArray_struct*, align 8
  %ids = alloca i32*, align 8
  %neighbors = alloca %struct.hypre_BoxNeighbors_struct*, align 8
  %i = alloca i32, align 4
  %ilocal = alloca i32, align 4
  store %struct.hypre_StructGrid_struct* %grid, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  store %struct.hypre_BoxArray_struct* %hood_boxes, %struct.hypre_BoxArray_struct** %hood_boxes.addr, align 8
  store i32* %hood_procs, i32** %hood_procs.addr, align 8
  store i32* %hood_ids, i32** %hood_ids.addr, align 8
  store i32 %first_local, i32* %first_local.addr, align 4
  store i32 %num_local, i32* %num_local.addr, align 4
  store i32 %num_periodic, i32* %num_periodic.addr, align 4
  store %struct.hypre_Box_struct* %bounding_box, %struct.hypre_Box_struct** %bounding_box.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load i32, i32* %num_local.addr, align 4
  %call = call %struct.hypre_BoxArray_struct* @hypre_BoxArrayCreate(i32 %0)
  store %struct.hypre_BoxArray_struct* %call, %struct.hypre_BoxArray_struct** %boxes, align 8
  %1 = load i32, i32* %num_local.addr, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 4, %conv
  %conv1 = trunc i64 %mul to i32
  %call2 = call i8* @hypre_MAlloc(i32 %conv1)
  %2 = bitcast i8* %call2 to i32*
  store i32* %2, i32** %ids, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %num_local.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %first_local.addr, align 4
  %6 = load i32, i32* %i, align 4
  %add = add nsw i32 %5, %6
  store i32 %add, i32* %ilocal, align 4
  %7 = load i32, i32* %ilocal, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %hood_boxes.addr, align 8
  %boxes4 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %8, i32 0, i32 0
  %9 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes4, align 8
  %arrayidx = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %9, i64 %idxprom
  %imin = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i64 0
  %10 = load i32, i32* %arrayidx5, align 4
  %11 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %boxes7 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %12, i32 0, i32 0
  %13 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes7, align 8
  %arrayidx8 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %13, i64 %idxprom6
  %imin9 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx8, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [3 x i32], [3 x i32]* %imin9, i32 0, i64 0
  store i32 %10, i32* %arrayidx10, align 4
  %14 = load i32, i32* %ilocal, align 4
  %idxprom11 = sext i32 %14 to i64
  %15 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %hood_boxes.addr, align 8
  %boxes12 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %15, i32 0, i32 0
  %16 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes12, align 8
  %arrayidx13 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %16, i64 %idxprom11
  %imin14 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx13, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [3 x i32], [3 x i32]* %imin14, i32 0, i64 1
  %17 = load i32, i32* %arrayidx15, align 4
  %18 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %18 to i64
  %19 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %boxes17 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %19, i32 0, i32 0
  %20 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes17, align 8
  %arrayidx18 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %20, i64 %idxprom16
  %imin19 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx18, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [3 x i32], [3 x i32]* %imin19, i32 0, i64 1
  store i32 %17, i32* %arrayidx20, align 4
  %21 = load i32, i32* %ilocal, align 4
  %idxprom21 = sext i32 %21 to i64
  %22 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %hood_boxes.addr, align 8
  %boxes22 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %22, i32 0, i32 0
  %23 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes22, align 8
  %arrayidx23 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %23, i64 %idxprom21
  %imin24 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx23, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [3 x i32], [3 x i32]* %imin24, i32 0, i64 2
  %24 = load i32, i32* %arrayidx25, align 4
  %25 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %25 to i64
  %26 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %boxes27 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %26, i32 0, i32 0
  %27 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes27, align 8
  %arrayidx28 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %27, i64 %idxprom26
  %imin29 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx28, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [3 x i32], [3 x i32]* %imin29, i32 0, i64 2
  store i32 %24, i32* %arrayidx30, align 4
  %28 = load i32, i32* %ilocal, align 4
  %idxprom31 = sext i32 %28 to i64
  %29 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %hood_boxes.addr, align 8
  %boxes32 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %29, i32 0, i32 0
  %30 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes32, align 8
  %arrayidx33 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %30, i64 %idxprom31
  %imax = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx33, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 0
  %31 = load i32, i32* %arrayidx34, align 4
  %32 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %32 to i64
  %33 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %boxes36 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %33, i32 0, i32 0
  %34 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes36, align 8
  %arrayidx37 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %34, i64 %idxprom35
  %imax38 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx37, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [3 x i32], [3 x i32]* %imax38, i32 0, i64 0
  store i32 %31, i32* %arrayidx39, align 4
  %35 = load i32, i32* %ilocal, align 4
  %idxprom40 = sext i32 %35 to i64
  %36 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %hood_boxes.addr, align 8
  %boxes41 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %36, i32 0, i32 0
  %37 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes41, align 8
  %arrayidx42 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %37, i64 %idxprom40
  %imax43 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx42, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [3 x i32], [3 x i32]* %imax43, i32 0, i64 1
  %38 = load i32, i32* %arrayidx44, align 4
  %39 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %39 to i64
  %40 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %boxes46 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %40, i32 0, i32 0
  %41 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes46, align 8
  %arrayidx47 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %41, i64 %idxprom45
  %imax48 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx47, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [3 x i32], [3 x i32]* %imax48, i32 0, i64 1
  store i32 %38, i32* %arrayidx49, align 4
  %42 = load i32, i32* %ilocal, align 4
  %idxprom50 = sext i32 %42 to i64
  %43 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %hood_boxes.addr, align 8
  %boxes51 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %43, i32 0, i32 0
  %44 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes51, align 8
  %arrayidx52 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %44, i64 %idxprom50
  %imax53 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx52, i32 0, i32 1
  %arrayidx54 = getelementptr inbounds [3 x i32], [3 x i32]* %imax53, i32 0, i64 2
  %45 = load i32, i32* %arrayidx54, align 4
  %46 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %46 to i64
  %47 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %boxes56 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %47, i32 0, i32 0
  %48 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes56, align 8
  %arrayidx57 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %48, i64 %idxprom55
  %imax58 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx57, i32 0, i32 1
  %arrayidx59 = getelementptr inbounds [3 x i32], [3 x i32]* %imax58, i32 0, i64 2
  store i32 %45, i32* %arrayidx59, align 4
  %49 = load i32, i32* %ilocal, align 4
  %idxprom60 = sext i32 %49 to i64
  %50 = load i32*, i32** %hood_ids.addr, align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %50, i64 %idxprom60
  %51 = load i32, i32* %arrayidx61, align 4
  %52 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %52 to i64
  %53 = load i32*, i32** %ids, align 8
  %arrayidx63 = getelementptr inbounds i32, i32* %53, i64 %idxprom62
  store i32 %51, i32* %arrayidx63, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %54 = load i32, i32* %i, align 4
  %inc = add nsw i32 %54, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %55 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %boxes64 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %55, i32 0, i32 2
  %56 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes64, align 8
  %57 = bitcast %struct.hypre_BoxArray_struct* %56 to i8*
  call void @hypre_Free(i8* %57)
  %58 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %boxes65 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %58, i32 0, i32 2
  store %struct.hypre_BoxArray_struct* null, %struct.hypre_BoxArray_struct** %boxes65, align 8
  %59 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %ids66 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %59, i32 0, i32 3
  %60 = load i32*, i32** %ids66, align 8
  %61 = bitcast i32* %60 to i8*
  call void @hypre_Free(i8* %61)
  %62 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %ids67 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %62, i32 0, i32 3
  store i32* null, i32** %ids67, align 8
  %63 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %64 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %boxes68 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %64, i32 0, i32 2
  store %struct.hypre_BoxArray_struct* %63, %struct.hypre_BoxArray_struct** %boxes68, align 8
  %65 = load i32*, i32** %ids, align 8
  %66 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %ids69 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %66, i32 0, i32 3
  store i32* %65, i32** %ids69, align 8
  %67 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %hood_boxes.addr, align 8
  %68 = load i32*, i32** %hood_procs.addr, align 8
  %69 = load i32*, i32** %hood_ids.addr, align 8
  %70 = load i32, i32* %first_local.addr, align 4
  %71 = load i32, i32* %num_local.addr, align 4
  %72 = load i32, i32* %num_periodic.addr, align 4
  %call70 = call i32 @hypre_BoxNeighborsCreate(%struct.hypre_BoxArray_struct* %67, i32* %68, i32* %69, i32 %70, i32 %71, i32 %72, %struct.hypre_BoxNeighbors_struct** %neighbors)
  %73 = load %struct.hypre_BoxNeighbors_struct*, %struct.hypre_BoxNeighbors_struct** %neighbors, align 8
  %74 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %neighbors71 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %74, i32 0, i32 4
  store %struct.hypre_BoxNeighbors_struct* %73, %struct.hypre_BoxNeighbors_struct** %neighbors71, align 8
  %75 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %bounding_box72 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %75, i32 0, i32 6
  %76 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %bounding_box72, align 8
  %call73 = call i32 @hypre_BoxDestroy(%struct.hypre_Box_struct* %76)
  %77 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %bounding_box.addr, align 8
  %78 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %bounding_box74 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %78, i32 0, i32 6
  store %struct.hypre_Box_struct* %77, %struct.hypre_Box_struct** %bounding_box74, align 8
  %79 = load i32, i32* %ierr, align 4
  ret i32 %79
}

declare i32 @hypre_BoxNeighborsCreate(%struct.hypre_BoxArray_struct*, i32*, i32*, i32, i32, i32, %struct.hypre_BoxNeighbors_struct**) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_StructGridAssemble(%struct.hypre_StructGrid_struct* %grid) #0 {
entry:
  %grid.addr = alloca %struct.hypre_StructGrid_struct*, align 8
  %ierr = alloca i32, align 4
  %boxes = alloca %struct.hypre_BoxArray_struct*, align 8
  %box = alloca %struct.hypre_Box_struct*, align 8
  %size = alloca i32, align 4
  %prune = alloca i32, align 4
  %i = alloca i32, align 4
  %comm = alloca i32, align 4
  %dim = alloca i32, align 4
  %ids = alloca i32*, align 8
  %neighbors4 = alloca %struct.hypre_BoxNeighbors_struct*, align 8
  %bounding_box = alloca %struct.hypre_Box_struct*, align 8
  %all_boxes = alloca %struct.hypre_BoxArray_struct*, align 8
  %all_procs = alloca i32*, align 8
  %all_ids = alloca i32*, align 8
  %first_local = alloca i32, align 4
  %num_local = alloca i32, align 4
  %num_periodic = alloca i32, align 4
  %d = alloca i32, align 4
  %idmin = alloca i32, align 4
  %idmax = alloca i32, align 4
  store %struct.hypre_StructGrid_struct* %grid, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %boxes1 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %0, i32 0, i32 2
  %1 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes1, align 8
  store %struct.hypre_BoxArray_struct* %1, %struct.hypre_BoxArray_struct** %boxes, align 8
  store i32 1, i32* %prune, align 4
  %2 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %neighbors = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %2, i32 0, i32 4
  %3 = load %struct.hypre_BoxNeighbors_struct*, %struct.hypre_BoxNeighbors_struct** %neighbors, align 8
  %cmp = icmp eq %struct.hypre_BoxNeighbors_struct* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %comm2 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %4, i32 0, i32 0
  %5 = load i32, i32* %comm2, align 4
  store i32 %5, i32* %comm, align 4
  %6 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %dim3 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %6, i32 0, i32 1
  %7 = load i32, i32* %dim3, align 4
  store i32 %7, i32* %dim, align 4
  %8 = load i32, i32* %comm, align 4
  %9 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %call = call i32 @hypre_GatherAllBoxes(i32 %8, %struct.hypre_BoxArray_struct* %9, %struct.hypre_BoxArray_struct** %all_boxes, i32** %all_procs, i32* %first_local)
  %10 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %size5 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %10, i32 0, i32 1
  %11 = load i32, i32* %size5, align 4
  store i32 %11, i32* %num_local, align 4
  %call6 = call %struct.hypre_Box_struct* @hypre_BoxCreate()
  store %struct.hypre_Box_struct* %call6, %struct.hypre_Box_struct** %bounding_box, align 8
  store i32 0, i32* %d, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.45, %if.then
  %12 = load i32, i32* %d, align 4
  %13 = load i32, i32* %dim, align 4
  %cmp7 = icmp slt i32 %12, %13
  br i1 %cmp7, label %for.body, label %for.end.47

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %d, align 4
  %idxprom = sext i32 %14 to i64
  %15 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %all_boxes, align 8
  %boxes8 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %15, i32 0, i32 0
  %16 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes8, align 8
  %arrayidx = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %16, i64 0
  %imin = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i64 %idxprom
  %17 = load i32, i32* %arrayidx9, align 4
  store i32 %17, i32* %idmin, align 4
  %18 = load i32, i32* %d, align 4
  %idxprom10 = sext i32 %18 to i64
  %19 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %all_boxes, align 8
  %boxes11 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %19, i32 0, i32 0
  %20 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes11, align 8
  %arrayidx12 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %20, i64 0
  %imax = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx12, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 %idxprom10
  %21 = load i32, i32* %arrayidx13, align 4
  store i32 %21, i32* %idmax, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc, %for.body
  %22 = load i32, i32* %i, align 4
  %23 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %all_boxes, align 8
  %size15 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %23, i32 0, i32 1
  %24 = load i32, i32* %size15, align 4
  %cmp16 = icmp slt i32 %22, %24
  br i1 %cmp16, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %for.cond.14
  %25 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %25 to i64
  %26 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %all_boxes, align 8
  %boxes19 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %26, i32 0, i32 0
  %27 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes19, align 8
  %arrayidx20 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %27, i64 %idxprom18
  store %struct.hypre_Box_struct* %arrayidx20, %struct.hypre_Box_struct** %box, align 8
  %28 = load i32, i32* %idmin, align 4
  %29 = load i32, i32* %d, align 4
  %idxprom21 = sext i32 %29 to i64
  %30 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin22 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %30, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [3 x i32], [3 x i32]* %imin22, i32 0, i64 %idxprom21
  %31 = load i32, i32* %arrayidx23, align 4
  %cmp24 = icmp slt i32 %28, %31
  br i1 %cmp24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.17
  %32 = load i32, i32* %idmin, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body.17
  %33 = load i32, i32* %d, align 4
  %idxprom25 = sext i32 %33 to i64
  %34 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin26 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %34, i32 0, i32 0
  %arrayidx27 = getelementptr inbounds [3 x i32], [3 x i32]* %imin26, i32 0, i64 %idxprom25
  %35 = load i32, i32* %arrayidx27, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %32, %cond.true ], [ %35, %cond.false ]
  store i32 %cond, i32* %idmin, align 4
  %36 = load i32, i32* %idmax, align 4
  %37 = load i32, i32* %d, align 4
  %idxprom28 = sext i32 %37 to i64
  %38 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax29 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %38, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [3 x i32], [3 x i32]* %imax29, i32 0, i64 %idxprom28
  %39 = load i32, i32* %arrayidx30, align 4
  %cmp31 = icmp slt i32 %36, %39
  br i1 %cmp31, label %cond.true.32, label %cond.false.36

cond.true.32:                                     ; preds = %cond.end
  %40 = load i32, i32* %d, align 4
  %idxprom33 = sext i32 %40 to i64
  %41 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax34 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %41, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [3 x i32], [3 x i32]* %imax34, i32 0, i64 %idxprom33
  %42 = load i32, i32* %arrayidx35, align 4
  br label %cond.end.37

cond.false.36:                                    ; preds = %cond.end
  %43 = load i32, i32* %idmax, align 4
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.36, %cond.true.32
  %cond38 = phi i32 [ %42, %cond.true.32 ], [ %43, %cond.false.36 ]
  store i32 %cond38, i32* %idmax, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end.37
  %44 = load i32, i32* %i, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.14

for.end:                                          ; preds = %for.cond.14
  %45 = load i32, i32* %idmin, align 4
  %46 = load i32, i32* %d, align 4
  %idxprom39 = sext i32 %46 to i64
  %47 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %bounding_box, align 8
  %imin40 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %47, i32 0, i32 0
  %arrayidx41 = getelementptr inbounds [3 x i32], [3 x i32]* %imin40, i32 0, i64 %idxprom39
  store i32 %45, i32* %arrayidx41, align 4
  %48 = load i32, i32* %idmax, align 4
  %49 = load i32, i32* %d, align 4
  %idxprom42 = sext i32 %49 to i64
  %50 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %bounding_box, align 8
  %imax43 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %50, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [3 x i32], [3 x i32]* %imax43, i32 0, i64 %idxprom42
  store i32 %48, i32* %arrayidx44, align 4
  br label %for.inc.45

for.inc.45:                                       ; preds = %for.end
  %51 = load i32, i32* %d, align 4
  %inc46 = add nsw i32 %51, 1
  store i32 %inc46, i32* %d, align 4
  br label %for.cond

for.end.47:                                       ; preds = %for.cond
  %52 = load i32, i32* %dim, align 4
  store i32 %52, i32* %d, align 4
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.57, %for.end.47
  %53 = load i32, i32* %d, align 4
  %cmp49 = icmp slt i32 %53, 3
  br i1 %cmp49, label %for.body.50, label %for.end.59

for.body.50:                                      ; preds = %for.cond.48
  %54 = load i32, i32* %d, align 4
  %idxprom51 = sext i32 %54 to i64
  %55 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %bounding_box, align 8
  %imin52 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %55, i32 0, i32 0
  %arrayidx53 = getelementptr inbounds [3 x i32], [3 x i32]* %imin52, i32 0, i64 %idxprom51
  store i32 0, i32* %arrayidx53, align 4
  %56 = load i32, i32* %d, align 4
  %idxprom54 = sext i32 %56 to i64
  %57 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %bounding_box, align 8
  %imax55 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %57, i32 0, i32 1
  %arrayidx56 = getelementptr inbounds [3 x i32], [3 x i32]* %imax55, i32 0, i64 %idxprom54
  store i32 0, i32* %arrayidx56, align 4
  br label %for.inc.57

for.inc.57:                                       ; preds = %for.body.50
  %58 = load i32, i32* %d, align 4
  %inc58 = add nsw i32 %58, 1
  store i32 %inc58, i32* %d, align 4
  br label %for.cond.48

for.end.59:                                       ; preds = %for.cond.48
  %59 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %bounding_box, align 8
  %60 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %bounding_box60 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %60, i32 0, i32 6
  store %struct.hypre_Box_struct* %59, %struct.hypre_Box_struct** %bounding_box60, align 8
  store i32 0, i32* %size, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.119, %for.end.59
  %61 = load i32, i32* %i, align 4
  %62 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %all_boxes, align 8
  %size62 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %62, i32 0, i32 1
  %63 = load i32, i32* %size62, align 4
  %cmp63 = icmp slt i32 %61, %63
  br i1 %cmp63, label %for.body.64, label %for.end.121

for.body.64:                                      ; preds = %for.cond.61
  %64 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %64 to i64
  %65 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %all_boxes, align 8
  %boxes66 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %65, i32 0, i32 0
  %66 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes66, align 8
  %arrayidx67 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %66, i64 %idxprom65
  store %struct.hypre_Box_struct* %arrayidx67, %struct.hypre_Box_struct** %box, align 8
  %67 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax68 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %67, i32 0, i32 1
  %arrayidx69 = getelementptr inbounds [3 x i32], [3 x i32]* %imax68, i32 0, i64 0
  %68 = load i32, i32* %arrayidx69, align 4
  %69 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin70 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %69, i32 0, i32 0
  %arrayidx71 = getelementptr inbounds [3 x i32], [3 x i32]* %imin70, i32 0, i64 0
  %70 = load i32, i32* %arrayidx71, align 4
  %sub = sub nsw i32 %68, %70
  %add = add nsw i32 %sub, 1
  %cmp72 = icmp slt i32 0, %add
  br i1 %cmp72, label %cond.true.73, label %cond.false.80

cond.true.73:                                     ; preds = %for.body.64
  %71 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax74 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %71, i32 0, i32 1
  %arrayidx75 = getelementptr inbounds [3 x i32], [3 x i32]* %imax74, i32 0, i64 0
  %72 = load i32, i32* %arrayidx75, align 4
  %73 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin76 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %73, i32 0, i32 0
  %arrayidx77 = getelementptr inbounds [3 x i32], [3 x i32]* %imin76, i32 0, i64 0
  %74 = load i32, i32* %arrayidx77, align 4
  %sub78 = sub nsw i32 %72, %74
  %add79 = add nsw i32 %sub78, 1
  br label %cond.end.81

cond.false.80:                                    ; preds = %for.body.64
  br label %cond.end.81

cond.end.81:                                      ; preds = %cond.false.80, %cond.true.73
  %cond82 = phi i32 [ %add79, %cond.true.73 ], [ 0, %cond.false.80 ]
  %75 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax83 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %75, i32 0, i32 1
  %arrayidx84 = getelementptr inbounds [3 x i32], [3 x i32]* %imax83, i32 0, i64 1
  %76 = load i32, i32* %arrayidx84, align 4
  %77 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin85 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %77, i32 0, i32 0
  %arrayidx86 = getelementptr inbounds [3 x i32], [3 x i32]* %imin85, i32 0, i64 1
  %78 = load i32, i32* %arrayidx86, align 4
  %sub87 = sub nsw i32 %76, %78
  %add88 = add nsw i32 %sub87, 1
  %cmp89 = icmp slt i32 0, %add88
  br i1 %cmp89, label %cond.true.90, label %cond.false.97

cond.true.90:                                     ; preds = %cond.end.81
  %79 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax91 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %79, i32 0, i32 1
  %arrayidx92 = getelementptr inbounds [3 x i32], [3 x i32]* %imax91, i32 0, i64 1
  %80 = load i32, i32* %arrayidx92, align 4
  %81 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin93 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %81, i32 0, i32 0
  %arrayidx94 = getelementptr inbounds [3 x i32], [3 x i32]* %imin93, i32 0, i64 1
  %82 = load i32, i32* %arrayidx94, align 4
  %sub95 = sub nsw i32 %80, %82
  %add96 = add nsw i32 %sub95, 1
  br label %cond.end.98

cond.false.97:                                    ; preds = %cond.end.81
  br label %cond.end.98

cond.end.98:                                      ; preds = %cond.false.97, %cond.true.90
  %cond99 = phi i32 [ %add96, %cond.true.90 ], [ 0, %cond.false.97 ]
  %mul = mul nsw i32 %cond82, %cond99
  %83 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax100 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %83, i32 0, i32 1
  %arrayidx101 = getelementptr inbounds [3 x i32], [3 x i32]* %imax100, i32 0, i64 2
  %84 = load i32, i32* %arrayidx101, align 4
  %85 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin102 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %85, i32 0, i32 0
  %arrayidx103 = getelementptr inbounds [3 x i32], [3 x i32]* %imin102, i32 0, i64 2
  %86 = load i32, i32* %arrayidx103, align 4
  %sub104 = sub nsw i32 %84, %86
  %add105 = add nsw i32 %sub104, 1
  %cmp106 = icmp slt i32 0, %add105
  br i1 %cmp106, label %cond.true.107, label %cond.false.114

cond.true.107:                                    ; preds = %cond.end.98
  %87 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax108 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %87, i32 0, i32 1
  %arrayidx109 = getelementptr inbounds [3 x i32], [3 x i32]* %imax108, i32 0, i64 2
  %88 = load i32, i32* %arrayidx109, align 4
  %89 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin110 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %89, i32 0, i32 0
  %arrayidx111 = getelementptr inbounds [3 x i32], [3 x i32]* %imin110, i32 0, i64 2
  %90 = load i32, i32* %arrayidx111, align 4
  %sub112 = sub nsw i32 %88, %90
  %add113 = add nsw i32 %sub112, 1
  br label %cond.end.115

cond.false.114:                                   ; preds = %cond.end.98
  br label %cond.end.115

cond.end.115:                                     ; preds = %cond.false.114, %cond.true.107
  %cond116 = phi i32 [ %add113, %cond.true.107 ], [ 0, %cond.false.114 ]
  %mul117 = mul nsw i32 %mul, %cond116
  %91 = load i32, i32* %size, align 4
  %add118 = add nsw i32 %91, %mul117
  store i32 %add118, i32* %size, align 4
  br label %for.inc.119

for.inc.119:                                      ; preds = %cond.end.115
  %92 = load i32, i32* %i, align 4
  %inc120 = add nsw i32 %92, 1
  store i32 %inc120, i32* %i, align 4
  br label %for.cond.61

for.end.121:                                      ; preds = %for.cond.61
  %93 = load i32, i32* %size, align 4
  %94 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %global_size = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %94, i32 0, i32 8
  store i32 %93, i32* %global_size, align 4
  %95 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %call122 = call i32 @hypre_StructGridPeriodicAllBoxes(%struct.hypre_StructGrid_struct* %95, %struct.hypre_BoxArray_struct** %all_boxes, i32** %all_procs, i32* %first_local, i32* %num_periodic)
  %96 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %all_boxes, align 8
  %size123 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %96, i32 0, i32 1
  %97 = load i32, i32* %size123, align 4
  %conv = sext i32 %97 to i64
  %mul124 = mul i64 4, %conv
  %conv125 = trunc i64 %mul124 to i32
  %call126 = call i8* @hypre_MAlloc(i32 %conv125)
  %98 = bitcast i8* %call126 to i32*
  store i32* %98, i32** %all_ids, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.127

for.cond.127:                                     ; preds = %for.inc.134, %for.end.121
  %99 = load i32, i32* %i, align 4
  %100 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %all_boxes, align 8
  %size128 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %100, i32 0, i32 1
  %101 = load i32, i32* %size128, align 4
  %cmp129 = icmp slt i32 %99, %101
  br i1 %cmp129, label %for.body.131, label %for.end.136

for.body.131:                                     ; preds = %for.cond.127
  %102 = load i32, i32* %i, align 4
  %103 = load i32, i32* %i, align 4
  %idxprom132 = sext i32 %103 to i64
  %104 = load i32*, i32** %all_ids, align 8
  %arrayidx133 = getelementptr inbounds i32, i32* %104, i64 %idxprom132
  store i32 %102, i32* %arrayidx133, align 4
  br label %for.inc.134

for.inc.134:                                      ; preds = %for.body.131
  %105 = load i32, i32* %i, align 4
  %inc135 = add nsw i32 %105, 1
  store i32 %inc135, i32* %i, align 4
  br label %for.cond.127

for.end.136:                                      ; preds = %for.cond.127
  %106 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %all_boxes, align 8
  %107 = load i32*, i32** %all_procs, align 8
  %108 = load i32*, i32** %all_ids, align 8
  %109 = load i32, i32* %first_local, align 4
  %110 = load i32, i32* %num_local, align 4
  %111 = load i32, i32* %num_periodic, align 4
  %call137 = call i32 @hypre_BoxNeighborsCreate(%struct.hypre_BoxArray_struct* %106, i32* %107, i32* %108, i32 %109, i32 %110, i32 %111, %struct.hypre_BoxNeighbors_struct** %neighbors4)
  %112 = load %struct.hypre_BoxNeighbors_struct*, %struct.hypre_BoxNeighbors_struct** %neighbors4, align 8
  %113 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %neighbors138 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %113, i32 0, i32 4
  store %struct.hypre_BoxNeighbors_struct* %112, %struct.hypre_BoxNeighbors_struct** %neighbors138, align 8
  %114 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %size139 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %114, i32 0, i32 1
  %115 = load i32, i32* %size139, align 4
  %conv140 = sext i32 %115 to i64
  %mul141 = mul i64 4, %conv140
  %conv142 = trunc i64 %mul141 to i32
  %call143 = call i8* @hypre_MAlloc(i32 %conv142)
  %116 = bitcast i8* %call143 to i32*
  store i32* %116, i32** %ids, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.144

for.cond.144:                                     ; preds = %for.inc.154, %for.end.136
  %117 = load i32, i32* %i, align 4
  %118 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %size145 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %118, i32 0, i32 1
  %119 = load i32, i32* %size145, align 4
  %cmp146 = icmp slt i32 %117, %119
  br i1 %cmp146, label %for.body.148, label %for.end.156

for.body.148:                                     ; preds = %for.cond.144
  %120 = load i32, i32* %first_local, align 4
  %121 = load i32, i32* %i, align 4
  %add149 = add nsw i32 %120, %121
  %idxprom150 = sext i32 %add149 to i64
  %122 = load i32*, i32** %all_ids, align 8
  %arrayidx151 = getelementptr inbounds i32, i32* %122, i64 %idxprom150
  %123 = load i32, i32* %arrayidx151, align 4
  %124 = load i32, i32* %i, align 4
  %idxprom152 = sext i32 %124 to i64
  %125 = load i32*, i32** %ids, align 8
  %arrayidx153 = getelementptr inbounds i32, i32* %125, i64 %idxprom152
  store i32 %123, i32* %arrayidx153, align 4
  br label %for.inc.154

for.inc.154:                                      ; preds = %for.body.148
  %126 = load i32, i32* %i, align 4
  %inc155 = add nsw i32 %126, 1
  store i32 %inc155, i32* %i, align 4
  br label %for.cond.144

for.end.156:                                      ; preds = %for.cond.144
  %127 = load i32*, i32** %ids, align 8
  %128 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %ids157 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %128, i32 0, i32 3
  store i32* %127, i32** %ids157, align 8
  store i32 1, i32* %prune, align 4
  br label %if.end

if.end:                                           ; preds = %for.end.156, %entry
  %129 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %neighbors158 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %129, i32 0, i32 4
  %130 = load %struct.hypre_BoxNeighbors_struct*, %struct.hypre_BoxNeighbors_struct** %neighbors158, align 8
  %131 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %max_distance = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %131, i32 0, i32 5
  %132 = load i32, i32* %max_distance, align 4
  %133 = load i32, i32* %prune, align 4
  %call159 = call i32 @hypre_BoxNeighborsAssemble(%struct.hypre_BoxNeighbors_struct* %130, i32 %132, i32 %133)
  store i32 0, i32* %size, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.160

for.cond.160:                                     ; preds = %for.inc.225, %if.end
  %134 = load i32, i32* %i, align 4
  %135 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %size161 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %135, i32 0, i32 1
  %136 = load i32, i32* %size161, align 4
  %cmp162 = icmp slt i32 %134, %136
  br i1 %cmp162, label %for.body.164, label %for.end.227

for.body.164:                                     ; preds = %for.cond.160
  %137 = load i32, i32* %i, align 4
  %idxprom165 = sext i32 %137 to i64
  %138 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %boxes166 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %138, i32 0, i32 0
  %139 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes166, align 8
  %arrayidx167 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %139, i64 %idxprom165
  store %struct.hypre_Box_struct* %arrayidx167, %struct.hypre_Box_struct** %box, align 8
  %140 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax168 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %140, i32 0, i32 1
  %arrayidx169 = getelementptr inbounds [3 x i32], [3 x i32]* %imax168, i32 0, i64 0
  %141 = load i32, i32* %arrayidx169, align 4
  %142 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin170 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %142, i32 0, i32 0
  %arrayidx171 = getelementptr inbounds [3 x i32], [3 x i32]* %imin170, i32 0, i64 0
  %143 = load i32, i32* %arrayidx171, align 4
  %sub172 = sub nsw i32 %141, %143
  %add173 = add nsw i32 %sub172, 1
  %cmp174 = icmp slt i32 0, %add173
  br i1 %cmp174, label %cond.true.176, label %cond.false.183

cond.true.176:                                    ; preds = %for.body.164
  %144 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax177 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %144, i32 0, i32 1
  %arrayidx178 = getelementptr inbounds [3 x i32], [3 x i32]* %imax177, i32 0, i64 0
  %145 = load i32, i32* %arrayidx178, align 4
  %146 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin179 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %146, i32 0, i32 0
  %arrayidx180 = getelementptr inbounds [3 x i32], [3 x i32]* %imin179, i32 0, i64 0
  %147 = load i32, i32* %arrayidx180, align 4
  %sub181 = sub nsw i32 %145, %147
  %add182 = add nsw i32 %sub181, 1
  br label %cond.end.184

cond.false.183:                                   ; preds = %for.body.164
  br label %cond.end.184

cond.end.184:                                     ; preds = %cond.false.183, %cond.true.176
  %cond185 = phi i32 [ %add182, %cond.true.176 ], [ 0, %cond.false.183 ]
  %148 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax186 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %148, i32 0, i32 1
  %arrayidx187 = getelementptr inbounds [3 x i32], [3 x i32]* %imax186, i32 0, i64 1
  %149 = load i32, i32* %arrayidx187, align 4
  %150 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin188 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %150, i32 0, i32 0
  %arrayidx189 = getelementptr inbounds [3 x i32], [3 x i32]* %imin188, i32 0, i64 1
  %151 = load i32, i32* %arrayidx189, align 4
  %sub190 = sub nsw i32 %149, %151
  %add191 = add nsw i32 %sub190, 1
  %cmp192 = icmp slt i32 0, %add191
  br i1 %cmp192, label %cond.true.194, label %cond.false.201

cond.true.194:                                    ; preds = %cond.end.184
  %152 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax195 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %152, i32 0, i32 1
  %arrayidx196 = getelementptr inbounds [3 x i32], [3 x i32]* %imax195, i32 0, i64 1
  %153 = load i32, i32* %arrayidx196, align 4
  %154 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin197 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %154, i32 0, i32 0
  %arrayidx198 = getelementptr inbounds [3 x i32], [3 x i32]* %imin197, i32 0, i64 1
  %155 = load i32, i32* %arrayidx198, align 4
  %sub199 = sub nsw i32 %153, %155
  %add200 = add nsw i32 %sub199, 1
  br label %cond.end.202

cond.false.201:                                   ; preds = %cond.end.184
  br label %cond.end.202

cond.end.202:                                     ; preds = %cond.false.201, %cond.true.194
  %cond203 = phi i32 [ %add200, %cond.true.194 ], [ 0, %cond.false.201 ]
  %mul204 = mul nsw i32 %cond185, %cond203
  %156 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax205 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %156, i32 0, i32 1
  %arrayidx206 = getelementptr inbounds [3 x i32], [3 x i32]* %imax205, i32 0, i64 2
  %157 = load i32, i32* %arrayidx206, align 4
  %158 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin207 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %158, i32 0, i32 0
  %arrayidx208 = getelementptr inbounds [3 x i32], [3 x i32]* %imin207, i32 0, i64 2
  %159 = load i32, i32* %arrayidx208, align 4
  %sub209 = sub nsw i32 %157, %159
  %add210 = add nsw i32 %sub209, 1
  %cmp211 = icmp slt i32 0, %add210
  br i1 %cmp211, label %cond.true.213, label %cond.false.220

cond.true.213:                                    ; preds = %cond.end.202
  %160 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax214 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %160, i32 0, i32 1
  %arrayidx215 = getelementptr inbounds [3 x i32], [3 x i32]* %imax214, i32 0, i64 2
  %161 = load i32, i32* %arrayidx215, align 4
  %162 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin216 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %162, i32 0, i32 0
  %arrayidx217 = getelementptr inbounds [3 x i32], [3 x i32]* %imin216, i32 0, i64 2
  %163 = load i32, i32* %arrayidx217, align 4
  %sub218 = sub nsw i32 %161, %163
  %add219 = add nsw i32 %sub218, 1
  br label %cond.end.221

cond.false.220:                                   ; preds = %cond.end.202
  br label %cond.end.221

cond.end.221:                                     ; preds = %cond.false.220, %cond.true.213
  %cond222 = phi i32 [ %add219, %cond.true.213 ], [ 0, %cond.false.220 ]
  %mul223 = mul nsw i32 %mul204, %cond222
  %164 = load i32, i32* %size, align 4
  %add224 = add nsw i32 %164, %mul223
  store i32 %add224, i32* %size, align 4
  br label %for.inc.225

for.inc.225:                                      ; preds = %cond.end.221
  %165 = load i32, i32* %i, align 4
  %inc226 = add nsw i32 %165, 1
  store i32 %inc226, i32* %i, align 4
  br label %for.cond.160

for.end.227:                                      ; preds = %for.cond.160
  %166 = load i32, i32* %size, align 4
  %167 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %local_size = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %167, i32 0, i32 7
  store i32 %166, i32* %local_size, align 4
  %168 = load i32, i32* %ierr, align 4
  ret i32 %168
}

; Function Attrs: nounwind uwtable
define i32 @hypre_GatherAllBoxes(i32 %comm, %struct.hypre_BoxArray_struct* %boxes, %struct.hypre_BoxArray_struct** %all_boxes_ptr, i32** %all_procs_ptr, i32* %first_local_ptr) #0 {
entry:
  %comm.addr = alloca i32, align 4
  %boxes.addr = alloca %struct.hypre_BoxArray_struct*, align 8
  %all_boxes_ptr.addr = alloca %struct.hypre_BoxArray_struct**, align 8
  %all_procs_ptr.addr = alloca i32**, align 8
  %first_local_ptr.addr = alloca i32*, align 8
  %all_boxes = alloca %struct.hypre_BoxArray_struct*, align 8
  %all_procs = alloca i32*, align 8
  %first_local = alloca i32, align 4
  %all_boxes_size = alloca i32, align 4
  %box = alloca %struct.hypre_Box_struct*, align 8
  %imin = alloca [3 x i32], align 4
  %imax = alloca [3 x i32], align 4
  %num_all_procs = alloca i32, align 4
  %my_rank = alloca i32, align 4
  %sendbuf = alloca i32*, align 8
  %sendcount = alloca i32, align 4
  %recvbuf = alloca i32*, align 8
  %recvcounts = alloca i32*, align 8
  %displs = alloca i32*, align 8
  %recvbuf_size = alloca i32, align 4
  %i = alloca i32, align 4
  %p = alloca i32, align 4
  %b = alloca i32, align 4
  %ab = alloca i32, align 4
  %d = alloca i32, align 4
  %ierr = alloca i32, align 4
  store i32 %comm, i32* %comm.addr, align 4
  store %struct.hypre_BoxArray_struct* %boxes, %struct.hypre_BoxArray_struct** %boxes.addr, align 8
  store %struct.hypre_BoxArray_struct** %all_boxes_ptr, %struct.hypre_BoxArray_struct*** %all_boxes_ptr.addr, align 8
  store i32** %all_procs_ptr, i32*** %all_procs_ptr.addr, align 8
  store i32* %first_local_ptr, i32** %first_local_ptr.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load i32, i32* %comm.addr, align 4
  %call = call i32 @hypre_MPI_Comm_size(i32 %0, i32* %num_all_procs)
  %1 = load i32, i32* %comm.addr, align 4
  %call1 = call i32 @hypre_MPI_Comm_rank(i32 %1, i32* %my_rank)
  %2 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes.addr, align 8
  %size = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %2, i32 0, i32 1
  %3 = load i32, i32* %size, align 4
  %mul = mul nsw i32 7, %3
  store i32 %mul, i32* %sendcount, align 4
  %4 = load i32, i32* %num_all_procs, align 4
  %conv = sext i32 %4 to i64
  %mul2 = mul i64 4, %conv
  %conv3 = trunc i64 %mul2 to i32
  %call4 = call i8* @hypre_MAlloc(i32 %conv3)
  %5 = bitcast i8* %call4 to i32*
  store i32* %5, i32** %recvcounts, align 8
  %6 = load i32, i32* %num_all_procs, align 4
  %conv5 = sext i32 %6 to i64
  %mul6 = mul i64 4, %conv5
  %conv7 = trunc i64 %mul6 to i32
  %call8 = call i8* @hypre_MAlloc(i32 %conv7)
  %7 = bitcast i8* %call8 to i32*
  store i32* %7, i32** %displs, align 8
  %8 = bitcast i32* %sendcount to i8*
  %9 = load i32*, i32** %recvcounts, align 8
  %10 = bitcast i32* %9 to i8*
  %11 = load i32, i32* %comm.addr, align 4
  %call9 = call i32 @hypre_MPI_Allgather(i8* %8, i32 1, i32 1, i8* %10, i32 1, i32 1, i32 %11)
  %12 = load i32*, i32** %displs, align 8
  %arrayidx = getelementptr inbounds i32, i32* %12, i64 0
  store i32 0, i32* %arrayidx, align 4
  %13 = load i32*, i32** %recvcounts, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %13, i64 0
  %14 = load i32, i32* %arrayidx10, align 4
  store i32 %14, i32* %recvbuf_size, align 4
  store i32 1, i32* %p, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %15 = load i32, i32* %p, align 4
  %16 = load i32, i32* %num_all_procs, align 4
  %cmp = icmp slt i32 %15, %16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %p, align 4
  %sub = sub nsw i32 %17, 1
  %idxprom = sext i32 %sub to i64
  %18 = load i32*, i32** %displs, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %18, i64 %idxprom
  %19 = load i32, i32* %arrayidx12, align 4
  %20 = load i32, i32* %p, align 4
  %sub13 = sub nsw i32 %20, 1
  %idxprom14 = sext i32 %sub13 to i64
  %21 = load i32*, i32** %recvcounts, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %21, i64 %idxprom14
  %22 = load i32, i32* %arrayidx15, align 4
  %add = add nsw i32 %19, %22
  %23 = load i32, i32* %p, align 4
  %idxprom16 = sext i32 %23 to i64
  %24 = load i32*, i32** %displs, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %24, i64 %idxprom16
  store i32 %add, i32* %arrayidx17, align 4
  %25 = load i32, i32* %p, align 4
  %idxprom18 = sext i32 %25 to i64
  %26 = load i32*, i32** %recvcounts, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %26, i64 %idxprom18
  %27 = load i32, i32* %arrayidx19, align 4
  %28 = load i32, i32* %recvbuf_size, align 4
  %add20 = add nsw i32 %28, %27
  store i32 %add20, i32* %recvbuf_size, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load i32, i32* %p, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %p, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = load i32, i32* %sendcount, align 4
  %conv21 = sext i32 %30 to i64
  %mul22 = mul i64 4, %conv21
  %conv23 = trunc i64 %mul22 to i32
  %call24 = call i8* @hypre_MAlloc(i32 %conv23)
  %31 = bitcast i8* %call24 to i32*
  store i32* %31, i32** %sendbuf, align 8
  %32 = load i32, i32* %recvbuf_size, align 4
  %conv25 = sext i32 %32 to i64
  %mul26 = mul i64 4, %conv25
  %conv27 = trunc i64 %mul26 to i32
  %call28 = call i8* @hypre_MAlloc(i32 %conv27)
  %33 = bitcast i8* %call28 to i32*
  store i32* %33, i32** %recvbuf, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %b, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.59, %for.end
  %34 = load i32, i32* %b, align 4
  %35 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes.addr, align 8
  %size30 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %35, i32 0, i32 1
  %36 = load i32, i32* %size30, align 4
  %cmp31 = icmp slt i32 %34, %36
  br i1 %cmp31, label %for.body.33, label %for.end.61

for.body.33:                                      ; preds = %for.cond.29
  %37 = load i32, i32* %my_rank, align 4
  %38 = load i32, i32* %i, align 4
  %inc34 = add nsw i32 %38, 1
  store i32 %inc34, i32* %i, align 4
  %idxprom35 = sext i32 %38 to i64
  %39 = load i32*, i32** %sendbuf, align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %39, i64 %idxprom35
  store i32 %37, i32* %arrayidx36, align 4
  %40 = load i32, i32* %b, align 4
  %idxprom37 = sext i32 %40 to i64
  %41 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes.addr, align 8
  %boxes38 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %41, i32 0, i32 0
  %42 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes38, align 8
  %arrayidx39 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %42, i64 %idxprom37
  store %struct.hypre_Box_struct* %arrayidx39, %struct.hypre_Box_struct** %box, align 8
  store i32 0, i32* %d, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.56, %for.body.33
  %43 = load i32, i32* %d, align 4
  %cmp41 = icmp slt i32 %43, 3
  br i1 %cmp41, label %for.body.43, label %for.end.58

for.body.43:                                      ; preds = %for.cond.40
  %44 = load i32, i32* %d, align 4
  %idxprom44 = sext i32 %44 to i64
  %45 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin45 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %45, i32 0, i32 0
  %arrayidx46 = getelementptr inbounds [3 x i32], [3 x i32]* %imin45, i32 0, i64 %idxprom44
  %46 = load i32, i32* %arrayidx46, align 4
  %47 = load i32, i32* %i, align 4
  %inc47 = add nsw i32 %47, 1
  store i32 %inc47, i32* %i, align 4
  %idxprom48 = sext i32 %47 to i64
  %48 = load i32*, i32** %sendbuf, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %48, i64 %idxprom48
  store i32 %46, i32* %arrayidx49, align 4
  %49 = load i32, i32* %d, align 4
  %idxprom50 = sext i32 %49 to i64
  %50 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax51 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %50, i32 0, i32 1
  %arrayidx52 = getelementptr inbounds [3 x i32], [3 x i32]* %imax51, i32 0, i64 %idxprom50
  %51 = load i32, i32* %arrayidx52, align 4
  %52 = load i32, i32* %i, align 4
  %inc53 = add nsw i32 %52, 1
  store i32 %inc53, i32* %i, align 4
  %idxprom54 = sext i32 %52 to i64
  %53 = load i32*, i32** %sendbuf, align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %53, i64 %idxprom54
  store i32 %51, i32* %arrayidx55, align 4
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.body.43
  %54 = load i32, i32* %d, align 4
  %inc57 = add nsw i32 %54, 1
  store i32 %inc57, i32* %d, align 4
  br label %for.cond.40

for.end.58:                                       ; preds = %for.cond.40
  br label %for.inc.59

for.inc.59:                                       ; preds = %for.end.58
  %55 = load i32, i32* %b, align 4
  %inc60 = add nsw i32 %55, 1
  store i32 %inc60, i32* %b, align 4
  br label %for.cond.29

for.end.61:                                       ; preds = %for.cond.29
  %56 = load i32*, i32** %sendbuf, align 8
  %57 = bitcast i32* %56 to i8*
  %58 = load i32, i32* %sendcount, align 4
  %59 = load i32*, i32** %recvbuf, align 8
  %60 = bitcast i32* %59 to i8*
  %61 = load i32*, i32** %recvcounts, align 8
  %62 = load i32*, i32** %displs, align 8
  %63 = load i32, i32* %comm.addr, align 4
  %call62 = call i32 @hypre_MPI_Allgatherv(i8* %57, i32 %58, i32 1, i8* %60, i32* %61, i32* %62, i32 1, i32 %63)
  %64 = load i32, i32* %recvbuf_size, align 4
  %div = sdiv i32 %64, 7
  store i32 %div, i32* %all_boxes_size, align 4
  %65 = load i32, i32* %all_boxes_size, align 4
  %call63 = call %struct.hypre_BoxArray_struct* @hypre_BoxArrayCreate(i32 %65)
  store %struct.hypre_BoxArray_struct* %call63, %struct.hypre_BoxArray_struct** %all_boxes, align 8
  %66 = load i32, i32* %all_boxes_size, align 4
  %conv64 = sext i32 %66 to i64
  %mul65 = mul i64 4, %conv64
  %conv66 = trunc i64 %mul65 to i32
  %call67 = call i8* @hypre_MAlloc(i32 %conv66)
  %67 = bitcast i8* %call67 to i32*
  store i32* %67, i32** %all_procs, align 8
  store i32 -1, i32* %first_local, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %p, align 4
  store i32 0, i32* %ab, align 4
  %call68 = call %struct.hypre_Box_struct* @hypre_BoxCreate()
  store %struct.hypre_Box_struct* %call68, %struct.hypre_Box_struct** %box, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %for.end.61
  %68 = load i32, i32* %i, align 4
  %69 = load i32, i32* %recvbuf_size, align 4
  %cmp69 = icmp slt i32 %68, %69
  br i1 %cmp69, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %70 = load i32, i32* %i, align 4
  %inc71 = add nsw i32 %70, 1
  store i32 %inc71, i32* %i, align 4
  %idxprom72 = sext i32 %70 to i64
  %71 = load i32*, i32** %recvbuf, align 8
  %arrayidx73 = getelementptr inbounds i32, i32* %71, i64 %idxprom72
  %72 = load i32, i32* %arrayidx73, align 4
  %73 = load i32, i32* %p, align 4
  %idxprom74 = sext i32 %73 to i64
  %74 = load i32*, i32** %all_procs, align 8
  %arrayidx75 = getelementptr inbounds i32, i32* %74, i64 %idxprom74
  store i32 %72, i32* %arrayidx75, align 4
  store i32 0, i32* %d, align 4
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.90, %while.body
  %75 = load i32, i32* %d, align 4
  %cmp77 = icmp slt i32 %75, 3
  br i1 %cmp77, label %for.body.79, label %for.end.92

for.body.79:                                      ; preds = %for.cond.76
  %76 = load i32, i32* %i, align 4
  %inc80 = add nsw i32 %76, 1
  store i32 %inc80, i32* %i, align 4
  %idxprom81 = sext i32 %76 to i64
  %77 = load i32*, i32** %recvbuf, align 8
  %arrayidx82 = getelementptr inbounds i32, i32* %77, i64 %idxprom81
  %78 = load i32, i32* %arrayidx82, align 4
  %79 = load i32, i32* %d, align 4
  %idxprom83 = sext i32 %79 to i64
  %arrayidx84 = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i64 %idxprom83
  store i32 %78, i32* %arrayidx84, align 4
  %80 = load i32, i32* %i, align 4
  %inc85 = add nsw i32 %80, 1
  store i32 %inc85, i32* %i, align 4
  %idxprom86 = sext i32 %80 to i64
  %81 = load i32*, i32** %recvbuf, align 8
  %arrayidx87 = getelementptr inbounds i32, i32* %81, i64 %idxprom86
  %82 = load i32, i32* %arrayidx87, align 4
  %83 = load i32, i32* %d, align 4
  %idxprom88 = sext i32 %83 to i64
  %arrayidx89 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 %idxprom88
  store i32 %82, i32* %arrayidx89, align 4
  br label %for.inc.90

for.inc.90:                                       ; preds = %for.body.79
  %84 = load i32, i32* %d, align 4
  %inc91 = add nsw i32 %84, 1
  store i32 %inc91, i32* %d, align 4
  br label %for.cond.76

for.end.92:                                       ; preds = %for.cond.76
  %85 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i32 0
  %arraydecay93 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i32 0
  %call94 = call i32 @hypre_BoxSetExtents(%struct.hypre_Box_struct* %85, i32* %arraydecay, i32* %arraydecay93)
  %86 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin95 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %86, i32 0, i32 0
  %arrayidx96 = getelementptr inbounds [3 x i32], [3 x i32]* %imin95, i32 0, i64 0
  %87 = load i32, i32* %arrayidx96, align 4
  %88 = load i32, i32* %ab, align 4
  %idxprom97 = sext i32 %88 to i64
  %89 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %all_boxes, align 8
  %boxes98 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %89, i32 0, i32 0
  %90 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes98, align 8
  %arrayidx99 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %90, i64 %idxprom97
  %imin100 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx99, i32 0, i32 0
  %arrayidx101 = getelementptr inbounds [3 x i32], [3 x i32]* %imin100, i32 0, i64 0
  store i32 %87, i32* %arrayidx101, align 4
  %91 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin102 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %91, i32 0, i32 0
  %arrayidx103 = getelementptr inbounds [3 x i32], [3 x i32]* %imin102, i32 0, i64 1
  %92 = load i32, i32* %arrayidx103, align 4
  %93 = load i32, i32* %ab, align 4
  %idxprom104 = sext i32 %93 to i64
  %94 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %all_boxes, align 8
  %boxes105 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %94, i32 0, i32 0
  %95 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes105, align 8
  %arrayidx106 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %95, i64 %idxprom104
  %imin107 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx106, i32 0, i32 0
  %arrayidx108 = getelementptr inbounds [3 x i32], [3 x i32]* %imin107, i32 0, i64 1
  store i32 %92, i32* %arrayidx108, align 4
  %96 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin109 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %96, i32 0, i32 0
  %arrayidx110 = getelementptr inbounds [3 x i32], [3 x i32]* %imin109, i32 0, i64 2
  %97 = load i32, i32* %arrayidx110, align 4
  %98 = load i32, i32* %ab, align 4
  %idxprom111 = sext i32 %98 to i64
  %99 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %all_boxes, align 8
  %boxes112 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %99, i32 0, i32 0
  %100 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes112, align 8
  %arrayidx113 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %100, i64 %idxprom111
  %imin114 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx113, i32 0, i32 0
  %arrayidx115 = getelementptr inbounds [3 x i32], [3 x i32]* %imin114, i32 0, i64 2
  store i32 %97, i32* %arrayidx115, align 4
  %101 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax116 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %101, i32 0, i32 1
  %arrayidx117 = getelementptr inbounds [3 x i32], [3 x i32]* %imax116, i32 0, i64 0
  %102 = load i32, i32* %arrayidx117, align 4
  %103 = load i32, i32* %ab, align 4
  %idxprom118 = sext i32 %103 to i64
  %104 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %all_boxes, align 8
  %boxes119 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %104, i32 0, i32 0
  %105 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes119, align 8
  %arrayidx120 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %105, i64 %idxprom118
  %imax121 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx120, i32 0, i32 1
  %arrayidx122 = getelementptr inbounds [3 x i32], [3 x i32]* %imax121, i32 0, i64 0
  store i32 %102, i32* %arrayidx122, align 4
  %106 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax123 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %106, i32 0, i32 1
  %arrayidx124 = getelementptr inbounds [3 x i32], [3 x i32]* %imax123, i32 0, i64 1
  %107 = load i32, i32* %arrayidx124, align 4
  %108 = load i32, i32* %ab, align 4
  %idxprom125 = sext i32 %108 to i64
  %109 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %all_boxes, align 8
  %boxes126 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %109, i32 0, i32 0
  %110 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes126, align 8
  %arrayidx127 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %110, i64 %idxprom125
  %imax128 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx127, i32 0, i32 1
  %arrayidx129 = getelementptr inbounds [3 x i32], [3 x i32]* %imax128, i32 0, i64 1
  store i32 %107, i32* %arrayidx129, align 4
  %111 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax130 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %111, i32 0, i32 1
  %arrayidx131 = getelementptr inbounds [3 x i32], [3 x i32]* %imax130, i32 0, i64 2
  %112 = load i32, i32* %arrayidx131, align 4
  %113 = load i32, i32* %ab, align 4
  %idxprom132 = sext i32 %113 to i64
  %114 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %all_boxes, align 8
  %boxes133 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %114, i32 0, i32 0
  %115 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes133, align 8
  %arrayidx134 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %115, i64 %idxprom132
  %imax135 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx134, i32 0, i32 1
  %arrayidx136 = getelementptr inbounds [3 x i32], [3 x i32]* %imax135, i32 0, i64 2
  store i32 %112, i32* %arrayidx136, align 4
  %116 = load i32, i32* %ab, align 4
  %inc137 = add nsw i32 %116, 1
  store i32 %inc137, i32* %ab, align 4
  %117 = load i32, i32* %first_local, align 4
  %cmp138 = icmp slt i32 %117, 0
  br i1 %cmp138, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.end.92
  %118 = load i32, i32* %p, align 4
  %idxprom140 = sext i32 %118 to i64
  %119 = load i32*, i32** %all_procs, align 8
  %arrayidx141 = getelementptr inbounds i32, i32* %119, i64 %idxprom140
  %120 = load i32, i32* %arrayidx141, align 4
  %121 = load i32, i32* %my_rank, align 4
  %cmp142 = icmp eq i32 %120, %121
  br i1 %cmp142, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %122 = load i32, i32* %p, align 4
  store i32 %122, i32* %first_local, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.end.92
  %123 = load i32, i32* %p, align 4
  %inc144 = add nsw i32 %123, 1
  store i32 %inc144, i32* %p, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %124 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %call145 = call i32 @hypre_BoxDestroy(%struct.hypre_Box_struct* %124)
  %125 = load i32*, i32** %sendbuf, align 8
  %126 = bitcast i32* %125 to i8*
  call void @hypre_Free(i8* %126)
  store i32* null, i32** %sendbuf, align 8
  %127 = load i32*, i32** %recvbuf, align 8
  %128 = bitcast i32* %127 to i8*
  call void @hypre_Free(i8* %128)
  store i32* null, i32** %recvbuf, align 8
  %129 = load i32*, i32** %recvcounts, align 8
  %130 = bitcast i32* %129 to i8*
  call void @hypre_Free(i8* %130)
  store i32* null, i32** %recvcounts, align 8
  %131 = load i32*, i32** %displs, align 8
  %132 = bitcast i32* %131 to i8*
  call void @hypre_Free(i8* %132)
  store i32* null, i32** %displs, align 8
  %133 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %all_boxes, align 8
  %134 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %all_boxes_ptr.addr, align 8
  store %struct.hypre_BoxArray_struct* %133, %struct.hypre_BoxArray_struct** %134, align 8
  %135 = load i32*, i32** %all_procs, align 8
  %136 = load i32**, i32*** %all_procs_ptr.addr, align 8
  store i32* %135, i32** %136, align 8
  %137 = load i32, i32* %first_local, align 4
  %138 = load i32*, i32** %first_local_ptr.addr, align 8
  store i32 %137, i32* %138, align 4
  %139 = load i32, i32* %ierr, align 4
  ret i32 %139
}

; Function Attrs: nounwind uwtable
define i32 @hypre_StructGridPeriodicAllBoxes(%struct.hypre_StructGrid_struct* %grid, %struct.hypre_BoxArray_struct** %all_boxes_ptr, i32** %all_procs_ptr, i32* %first_local_ptr, i32* %num_periodic_ptr) #0 {
entry:
  %grid.addr = alloca %struct.hypre_StructGrid_struct*, align 8
  %all_boxes_ptr.addr = alloca %struct.hypre_BoxArray_struct**, align 8
  %all_procs_ptr.addr = alloca i32**, align 8
  %first_local_ptr.addr = alloca i32*, align 8
  %num_periodic_ptr.addr = alloca i32*, align 8
  %ierr = alloca i32, align 4
  %new_num_periodic = alloca i32, align 4
  %px = alloca i32, align 4
  %py = alloca i32, align 4
  %pz = alloca i32, align 4
  %i_periodic = alloca i32, align 4
  %j_periodic = alloca i32, align 4
  %k_periodic = alloca i32, align 4
  %new_all_boxes = alloca %struct.hypre_BoxArray_struct*, align 8
  %new_all_procs = alloca i32*, align 8
  %new_first_local = alloca i32, align 4
  %all_boxes = alloca %struct.hypre_BoxArray_struct*, align 8
  %all_procs = alloca i32*, align 8
  %first_local = alloca i32, align 4
  %num_local = alloca i32, align 4
  %num_periodic = alloca i32, align 4
  %box = alloca %struct.hypre_Box_struct*, align 8
  %num_all = alloca i32, align 4
  %new_num_all = alloca i32, align 4
  %i = alloca i32, align 4
  %inew = alloca i32, align 4
  %ip = alloca i32, align 4
  %jp = alloca i32, align 4
  %kp = alloca i32, align 4
  %first_i = alloca i32, align 4
  %first_inew = alloca i32, align 4
  store %struct.hypre_StructGrid_struct* %grid, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  store %struct.hypre_BoxArray_struct** %all_boxes_ptr, %struct.hypre_BoxArray_struct*** %all_boxes_ptr.addr, align 8
  store i32** %all_procs_ptr, i32*** %all_procs_ptr.addr, align 8
  store i32* %first_local_ptr, i32** %first_local_ptr.addr, align 8
  store i32* %num_periodic_ptr, i32** %num_periodic_ptr.addr, align 8
  store i32 0, i32* %ierr, align 4
  store i32 0, i32* %new_num_periodic, align 4
  %0 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %periodic = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %0, i32 0, i32 9
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %periodic, i32 0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  store i32 %1, i32* %px, align 4
  %2 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %periodic1 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %2, i32 0, i32 9
  %arrayidx2 = getelementptr inbounds [3 x i32], [3 x i32]* %periodic1, i32 0, i64 1
  %3 = load i32, i32* %arrayidx2, align 4
  store i32 %3, i32* %py, align 4
  %4 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %periodic3 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %4, i32 0, i32 9
  %arrayidx4 = getelementptr inbounds [3 x i32], [3 x i32]* %periodic3, i32 0, i64 2
  %5 = load i32, i32* %arrayidx4, align 4
  store i32 %5, i32* %pz, align 4
  store i32 0, i32* %i_periodic, align 4
  store i32 0, i32* %j_periodic, align 4
  store i32 0, i32* %k_periodic, align 4
  %6 = load i32, i32* %px, align 4
  %cmp = icmp ne i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %i_periodic, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, i32* %py, align 4
  %cmp5 = icmp ne i32 %7, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i32 1, i32* %j_periodic, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  %8 = load i32, i32* %pz, align 4
  %cmp8 = icmp ne i32 %8, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.7
  store i32 1, i32* %k_periodic, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end.7
  %9 = load i32, i32* %i_periodic, align 4
  %cmp11 = icmp eq i32 %9, 0
  br i1 %cmp11, label %land.lhs.true, label %if.then.15

land.lhs.true:                                    ; preds = %if.end.10
  %10 = load i32, i32* %j_periodic, align 4
  %cmp12 = icmp eq i32 %10, 0
  br i1 %cmp12, label %land.lhs.true.13, label %if.then.15

land.lhs.true.13:                                 ; preds = %land.lhs.true
  %11 = load i32, i32* %k_periodic, align 4
  %cmp14 = icmp eq i32 %11, 0
  br i1 %cmp14, label %if.end.235, label %if.then.15

if.then.15:                                       ; preds = %land.lhs.true.13, %land.lhs.true, %if.end.10
  %12 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %all_boxes_ptr.addr, align 8
  %13 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %12, align 8
  store %struct.hypre_BoxArray_struct* %13, %struct.hypre_BoxArray_struct** %all_boxes, align 8
  %14 = load i32**, i32*** %all_procs_ptr.addr, align 8
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %all_procs, align 8
  %16 = load i32*, i32** %first_local_ptr.addr, align 8
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %first_local, align 4
  %18 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %all_boxes, align 8
  %size = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %18, i32 0, i32 1
  %19 = load i32, i32* %size, align 4
  store i32 %19, i32* %num_all, align 4
  %20 = load i32, i32* %num_all, align 4
  %21 = load i32, i32* %i_periodic, align 4
  %mul = mul nsw i32 2, %21
  %add = add nsw i32 1, %mul
  %22 = load i32, i32* %j_periodic, align 4
  %mul16 = mul nsw i32 2, %22
  %add17 = add nsw i32 1, %mul16
  %mul18 = mul nsw i32 %add, %add17
  %23 = load i32, i32* %k_periodic, align 4
  %mul19 = mul nsw i32 2, %23
  %add20 = add nsw i32 1, %mul19
  %mul21 = mul nsw i32 %mul18, %add20
  %mul22 = mul nsw i32 %20, %mul21
  store i32 %mul22, i32* %new_num_all, align 4
  %24 = load i32, i32* %new_num_all, align 4
  %call = call %struct.hypre_BoxArray_struct* @hypre_BoxArrayCreate(i32 %24)
  store %struct.hypre_BoxArray_struct* %call, %struct.hypre_BoxArray_struct** %new_all_boxes, align 8
  %25 = load i32, i32* %new_num_all, align 4
  %conv = sext i32 %25 to i64
  %mul23 = mul i64 4, %conv
  %conv24 = trunc i64 %mul23 to i32
  %call25 = call i8* @hypre_MAlloc(i32 %conv24)
  %26 = bitcast i8* %call25 to i32*
  store i32* %26, i32** %new_all_procs, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %inew, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.232, %if.then.15
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* %num_all, align 4
  %cmp26 = icmp slt i32 %27, %28
  br i1 %cmp26, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %29 = load i32, i32* %i, align 4
  store i32 %29, i32* %first_i, align 4
  %30 = load i32, i32* %inew, align 4
  store i32 %30, i32* %first_inew, align 4
  %31 = load i32, i32* %first_i, align 4
  store i32 %31, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %32 = load i32, i32* %i, align 4
  %33 = load i32, i32* %num_all, align 4
  %cmp28 = icmp slt i32 %32, %33
  br i1 %cmp28, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load i32, i32* %i, align 4
  %idxprom = sext i32 %34 to i64
  %35 = load i32*, i32** %all_procs, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %35, i64 %idxprom
  %36 = load i32, i32* %arrayidx30, align 4
  %37 = load i32, i32* %first_i, align 4
  %idxprom31 = sext i32 %37 to i64
  %38 = load i32*, i32** %all_procs, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %38, i64 %idxprom31
  %39 = load i32, i32* %arrayidx32, align 4
  %cmp33 = icmp ne i32 %36, %39
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %for.body
  br label %for.end

if.end.36:                                        ; preds = %for.body
  %40 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %40 to i64
  %41 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %all_boxes, align 8
  %boxes = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %41, i32 0, i32 0
  %42 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes, align 8
  %arrayidx38 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %42, i64 %idxprom37
  %imin = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx38, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i64 0
  %43 = load i32, i32* %arrayidx39, align 4
  %44 = load i32, i32* %inew, align 4
  %idxprom40 = sext i32 %44 to i64
  %45 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %new_all_boxes, align 8
  %boxes41 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %45, i32 0, i32 0
  %46 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes41, align 8
  %arrayidx42 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %46, i64 %idxprom40
  %imin43 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx42, i32 0, i32 0
  %arrayidx44 = getelementptr inbounds [3 x i32], [3 x i32]* %imin43, i32 0, i64 0
  store i32 %43, i32* %arrayidx44, align 4
  %47 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %47 to i64
  %48 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %all_boxes, align 8
  %boxes46 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %48, i32 0, i32 0
  %49 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes46, align 8
  %arrayidx47 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %49, i64 %idxprom45
  %imin48 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx47, i32 0, i32 0
  %arrayidx49 = getelementptr inbounds [3 x i32], [3 x i32]* %imin48, i32 0, i64 1
  %50 = load i32, i32* %arrayidx49, align 4
  %51 = load i32, i32* %inew, align 4
  %idxprom50 = sext i32 %51 to i64
  %52 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %new_all_boxes, align 8
  %boxes51 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %52, i32 0, i32 0
  %53 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes51, align 8
  %arrayidx52 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %53, i64 %idxprom50
  %imin53 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx52, i32 0, i32 0
  %arrayidx54 = getelementptr inbounds [3 x i32], [3 x i32]* %imin53, i32 0, i64 1
  store i32 %50, i32* %arrayidx54, align 4
  %54 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %54 to i64
  %55 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %all_boxes, align 8
  %boxes56 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %55, i32 0, i32 0
  %56 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes56, align 8
  %arrayidx57 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %56, i64 %idxprom55
  %imin58 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx57, i32 0, i32 0
  %arrayidx59 = getelementptr inbounds [3 x i32], [3 x i32]* %imin58, i32 0, i64 2
  %57 = load i32, i32* %arrayidx59, align 4
  %58 = load i32, i32* %inew, align 4
  %idxprom60 = sext i32 %58 to i64
  %59 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %new_all_boxes, align 8
  %boxes61 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %59, i32 0, i32 0
  %60 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes61, align 8
  %arrayidx62 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %60, i64 %idxprom60
  %imin63 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx62, i32 0, i32 0
  %arrayidx64 = getelementptr inbounds [3 x i32], [3 x i32]* %imin63, i32 0, i64 2
  store i32 %57, i32* %arrayidx64, align 4
  %61 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %61 to i64
  %62 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %all_boxes, align 8
  %boxes66 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %62, i32 0, i32 0
  %63 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes66, align 8
  %arrayidx67 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %63, i64 %idxprom65
  %imax = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx67, i32 0, i32 1
  %arrayidx68 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 0
  %64 = load i32, i32* %arrayidx68, align 4
  %65 = load i32, i32* %inew, align 4
  %idxprom69 = sext i32 %65 to i64
  %66 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %new_all_boxes, align 8
  %boxes70 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %66, i32 0, i32 0
  %67 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes70, align 8
  %arrayidx71 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %67, i64 %idxprom69
  %imax72 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx71, i32 0, i32 1
  %arrayidx73 = getelementptr inbounds [3 x i32], [3 x i32]* %imax72, i32 0, i64 0
  store i32 %64, i32* %arrayidx73, align 4
  %68 = load i32, i32* %i, align 4
  %idxprom74 = sext i32 %68 to i64
  %69 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %all_boxes, align 8
  %boxes75 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %69, i32 0, i32 0
  %70 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes75, align 8
  %arrayidx76 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %70, i64 %idxprom74
  %imax77 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx76, i32 0, i32 1
  %arrayidx78 = getelementptr inbounds [3 x i32], [3 x i32]* %imax77, i32 0, i64 1
  %71 = load i32, i32* %arrayidx78, align 4
  %72 = load i32, i32* %inew, align 4
  %idxprom79 = sext i32 %72 to i64
  %73 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %new_all_boxes, align 8
  %boxes80 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %73, i32 0, i32 0
  %74 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes80, align 8
  %arrayidx81 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %74, i64 %idxprom79
  %imax82 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx81, i32 0, i32 1
  %arrayidx83 = getelementptr inbounds [3 x i32], [3 x i32]* %imax82, i32 0, i64 1
  store i32 %71, i32* %arrayidx83, align 4
  %75 = load i32, i32* %i, align 4
  %idxprom84 = sext i32 %75 to i64
  %76 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %all_boxes, align 8
  %boxes85 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %76, i32 0, i32 0
  %77 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes85, align 8
  %arrayidx86 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %77, i64 %idxprom84
  %imax87 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx86, i32 0, i32 1
  %arrayidx88 = getelementptr inbounds [3 x i32], [3 x i32]* %imax87, i32 0, i64 2
  %78 = load i32, i32* %arrayidx88, align 4
  %79 = load i32, i32* %inew, align 4
  %idxprom89 = sext i32 %79 to i64
  %80 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %new_all_boxes, align 8
  %boxes90 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %80, i32 0, i32 0
  %81 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes90, align 8
  %arrayidx91 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %81, i64 %idxprom89
  %imax92 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx91, i32 0, i32 1
  %arrayidx93 = getelementptr inbounds [3 x i32], [3 x i32]* %imax92, i32 0, i64 2
  store i32 %78, i32* %arrayidx93, align 4
  %82 = load i32, i32* %i, align 4
  %idxprom94 = sext i32 %82 to i64
  %83 = load i32*, i32** %all_procs, align 8
  %arrayidx95 = getelementptr inbounds i32, i32* %83, i64 %idxprom94
  %84 = load i32, i32* %arrayidx95, align 4
  %85 = load i32, i32* %inew, align 4
  %idxprom96 = sext i32 %85 to i64
  %86 = load i32*, i32** %new_all_procs, align 8
  %arrayidx97 = getelementptr inbounds i32, i32* %86, i64 %idxprom96
  store i32 %84, i32* %arrayidx97, align 4
  %87 = load i32, i32* %inew, align 4
  %inc = add nsw i32 %87, 1
  store i32 %inc, i32* %inew, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.36
  %88 = load i32, i32* %i, align 4
  %inc98 = add nsw i32 %88, 1
  store i32 %inc98, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.35, %for.cond
  %89 = load i32, i32* %i, align 4
  %90 = load i32, i32* %first_i, align 4
  %sub = sub nsw i32 %89, %90
  store i32 %sub, i32* %num_local, align 4
  %91 = load i32, i32* %i_periodic, align 4
  %sub99 = sub nsw i32 0, %91
  store i32 %sub99, i32* %ip, align 4
  br label %for.cond.100

for.cond.100:                                     ; preds = %for.inc.224, %for.end
  %92 = load i32, i32* %ip, align 4
  %93 = load i32, i32* %i_periodic, align 4
  %cmp101 = icmp sle i32 %92, %93
  br i1 %cmp101, label %for.body.103, label %for.end.226

for.body.103:                                     ; preds = %for.cond.100
  %94 = load i32, i32* %j_periodic, align 4
  %sub104 = sub nsw i32 0, %94
  store i32 %sub104, i32* %jp, align 4
  br label %for.cond.105

for.cond.105:                                     ; preds = %for.inc.221, %for.body.103
  %95 = load i32, i32* %jp, align 4
  %96 = load i32, i32* %j_periodic, align 4
  %cmp106 = icmp sle i32 %95, %96
  br i1 %cmp106, label %for.body.108, label %for.end.223

for.body.108:                                     ; preds = %for.cond.105
  %97 = load i32, i32* %k_periodic, align 4
  %sub109 = sub nsw i32 0, %97
  store i32 %sub109, i32* %kp, align 4
  br label %for.cond.110

for.cond.110:                                     ; preds = %for.inc.218, %for.body.108
  %98 = load i32, i32* %kp, align 4
  %99 = load i32, i32* %k_periodic, align 4
  %cmp111 = icmp sle i32 %98, %99
  br i1 %cmp111, label %for.body.113, label %for.end.220

for.body.113:                                     ; preds = %for.cond.110
  %100 = load i32, i32* %ip, align 4
  %cmp114 = icmp eq i32 %100, 0
  br i1 %cmp114, label %land.lhs.true.116, label %if.then.122

land.lhs.true.116:                                ; preds = %for.body.113
  %101 = load i32, i32* %jp, align 4
  %cmp117 = icmp eq i32 %101, 0
  br i1 %cmp117, label %land.lhs.true.119, label %if.then.122

land.lhs.true.119:                                ; preds = %land.lhs.true.116
  %102 = load i32, i32* %kp, align 4
  %cmp120 = icmp eq i32 %102, 0
  br i1 %cmp120, label %if.end.217, label %if.then.122

if.then.122:                                      ; preds = %land.lhs.true.119, %land.lhs.true.116, %for.body.113
  %103 = load i32, i32* %first_i, align 4
  store i32 %103, i32* %i, align 4
  br label %for.cond.123

for.cond.123:                                     ; preds = %for.inc.214, %if.then.122
  %104 = load i32, i32* %i, align 4
  %105 = load i32, i32* %first_i, align 4
  %106 = load i32, i32* %num_local, align 4
  %add124 = add nsw i32 %105, %106
  %cmp125 = icmp slt i32 %104, %add124
  br i1 %cmp125, label %for.body.127, label %for.end.216

for.body.127:                                     ; preds = %for.cond.123
  %107 = load i32, i32* %inew, align 4
  %idxprom128 = sext i32 %107 to i64
  %108 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %new_all_boxes, align 8
  %boxes129 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %108, i32 0, i32 0
  %109 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes129, align 8
  %arrayidx130 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %109, i64 %idxprom128
  store %struct.hypre_Box_struct* %arrayidx130, %struct.hypre_Box_struct** %box, align 8
  %110 = load i32, i32* %i, align 4
  %idxprom131 = sext i32 %110 to i64
  %111 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %all_boxes, align 8
  %boxes132 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %111, i32 0, i32 0
  %112 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes132, align 8
  %arrayidx133 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %112, i64 %idxprom131
  %imin134 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx133, i32 0, i32 0
  %arrayidx135 = getelementptr inbounds [3 x i32], [3 x i32]* %imin134, i32 0, i64 0
  %113 = load i32, i32* %arrayidx135, align 4
  %114 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin136 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %114, i32 0, i32 0
  %arrayidx137 = getelementptr inbounds [3 x i32], [3 x i32]* %imin136, i32 0, i64 0
  store i32 %113, i32* %arrayidx137, align 4
  %115 = load i32, i32* %i, align 4
  %idxprom138 = sext i32 %115 to i64
  %116 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %all_boxes, align 8
  %boxes139 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %116, i32 0, i32 0
  %117 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes139, align 8
  %arrayidx140 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %117, i64 %idxprom138
  %imin141 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx140, i32 0, i32 0
  %arrayidx142 = getelementptr inbounds [3 x i32], [3 x i32]* %imin141, i32 0, i64 1
  %118 = load i32, i32* %arrayidx142, align 4
  %119 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin143 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %119, i32 0, i32 0
  %arrayidx144 = getelementptr inbounds [3 x i32], [3 x i32]* %imin143, i32 0, i64 1
  store i32 %118, i32* %arrayidx144, align 4
  %120 = load i32, i32* %i, align 4
  %idxprom145 = sext i32 %120 to i64
  %121 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %all_boxes, align 8
  %boxes146 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %121, i32 0, i32 0
  %122 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes146, align 8
  %arrayidx147 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %122, i64 %idxprom145
  %imin148 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx147, i32 0, i32 0
  %arrayidx149 = getelementptr inbounds [3 x i32], [3 x i32]* %imin148, i32 0, i64 2
  %123 = load i32, i32* %arrayidx149, align 4
  %124 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin150 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %124, i32 0, i32 0
  %arrayidx151 = getelementptr inbounds [3 x i32], [3 x i32]* %imin150, i32 0, i64 2
  store i32 %123, i32* %arrayidx151, align 4
  %125 = load i32, i32* %i, align 4
  %idxprom152 = sext i32 %125 to i64
  %126 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %all_boxes, align 8
  %boxes153 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %126, i32 0, i32 0
  %127 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes153, align 8
  %arrayidx154 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %127, i64 %idxprom152
  %imax155 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx154, i32 0, i32 1
  %arrayidx156 = getelementptr inbounds [3 x i32], [3 x i32]* %imax155, i32 0, i64 0
  %128 = load i32, i32* %arrayidx156, align 4
  %129 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax157 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %129, i32 0, i32 1
  %arrayidx158 = getelementptr inbounds [3 x i32], [3 x i32]* %imax157, i32 0, i64 0
  store i32 %128, i32* %arrayidx158, align 4
  %130 = load i32, i32* %i, align 4
  %idxprom159 = sext i32 %130 to i64
  %131 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %all_boxes, align 8
  %boxes160 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %131, i32 0, i32 0
  %132 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes160, align 8
  %arrayidx161 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %132, i64 %idxprom159
  %imax162 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx161, i32 0, i32 1
  %arrayidx163 = getelementptr inbounds [3 x i32], [3 x i32]* %imax162, i32 0, i64 1
  %133 = load i32, i32* %arrayidx163, align 4
  %134 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax164 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %134, i32 0, i32 1
  %arrayidx165 = getelementptr inbounds [3 x i32], [3 x i32]* %imax164, i32 0, i64 1
  store i32 %133, i32* %arrayidx165, align 4
  %135 = load i32, i32* %i, align 4
  %idxprom166 = sext i32 %135 to i64
  %136 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %all_boxes, align 8
  %boxes167 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %136, i32 0, i32 0
  %137 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes167, align 8
  %arrayidx168 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %137, i64 %idxprom166
  %imax169 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx168, i32 0, i32 1
  %arrayidx170 = getelementptr inbounds [3 x i32], [3 x i32]* %imax169, i32 0, i64 2
  %138 = load i32, i32* %arrayidx170, align 4
  %139 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax171 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %139, i32 0, i32 1
  %arrayidx172 = getelementptr inbounds [3 x i32], [3 x i32]* %imax171, i32 0, i64 2
  store i32 %138, i32* %arrayidx172, align 4
  %140 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin173 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %140, i32 0, i32 0
  %arrayidx174 = getelementptr inbounds [3 x i32], [3 x i32]* %imin173, i32 0, i64 0
  %141 = load i32, i32* %arrayidx174, align 4
  %142 = load i32, i32* %ip, align 4
  %143 = load i32, i32* %px, align 4
  %mul175 = mul nsw i32 %142, %143
  %add176 = add nsw i32 %141, %mul175
  %144 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin177 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %144, i32 0, i32 0
  %arrayidx178 = getelementptr inbounds [3 x i32], [3 x i32]* %imin177, i32 0, i64 0
  store i32 %add176, i32* %arrayidx178, align 4
  %145 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin179 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %145, i32 0, i32 0
  %arrayidx180 = getelementptr inbounds [3 x i32], [3 x i32]* %imin179, i32 0, i64 1
  %146 = load i32, i32* %arrayidx180, align 4
  %147 = load i32, i32* %jp, align 4
  %148 = load i32, i32* %py, align 4
  %mul181 = mul nsw i32 %147, %148
  %add182 = add nsw i32 %146, %mul181
  %149 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin183 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %149, i32 0, i32 0
  %arrayidx184 = getelementptr inbounds [3 x i32], [3 x i32]* %imin183, i32 0, i64 1
  store i32 %add182, i32* %arrayidx184, align 4
  %150 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin185 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %150, i32 0, i32 0
  %arrayidx186 = getelementptr inbounds [3 x i32], [3 x i32]* %imin185, i32 0, i64 2
  %151 = load i32, i32* %arrayidx186, align 4
  %152 = load i32, i32* %kp, align 4
  %153 = load i32, i32* %pz, align 4
  %mul187 = mul nsw i32 %152, %153
  %add188 = add nsw i32 %151, %mul187
  %154 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin189 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %154, i32 0, i32 0
  %arrayidx190 = getelementptr inbounds [3 x i32], [3 x i32]* %imin189, i32 0, i64 2
  store i32 %add188, i32* %arrayidx190, align 4
  %155 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax191 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %155, i32 0, i32 1
  %arrayidx192 = getelementptr inbounds [3 x i32], [3 x i32]* %imax191, i32 0, i64 0
  %156 = load i32, i32* %arrayidx192, align 4
  %157 = load i32, i32* %ip, align 4
  %158 = load i32, i32* %px, align 4
  %mul193 = mul nsw i32 %157, %158
  %add194 = add nsw i32 %156, %mul193
  %159 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax195 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %159, i32 0, i32 1
  %arrayidx196 = getelementptr inbounds [3 x i32], [3 x i32]* %imax195, i32 0, i64 0
  store i32 %add194, i32* %arrayidx196, align 4
  %160 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax197 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %160, i32 0, i32 1
  %arrayidx198 = getelementptr inbounds [3 x i32], [3 x i32]* %imax197, i32 0, i64 1
  %161 = load i32, i32* %arrayidx198, align 4
  %162 = load i32, i32* %jp, align 4
  %163 = load i32, i32* %py, align 4
  %mul199 = mul nsw i32 %162, %163
  %add200 = add nsw i32 %161, %mul199
  %164 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax201 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %164, i32 0, i32 1
  %arrayidx202 = getelementptr inbounds [3 x i32], [3 x i32]* %imax201, i32 0, i64 1
  store i32 %add200, i32* %arrayidx202, align 4
  %165 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax203 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %165, i32 0, i32 1
  %arrayidx204 = getelementptr inbounds [3 x i32], [3 x i32]* %imax203, i32 0, i64 2
  %166 = load i32, i32* %arrayidx204, align 4
  %167 = load i32, i32* %kp, align 4
  %168 = load i32, i32* %pz, align 4
  %mul205 = mul nsw i32 %167, %168
  %add206 = add nsw i32 %166, %mul205
  %169 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax207 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %169, i32 0, i32 1
  %arrayidx208 = getelementptr inbounds [3 x i32], [3 x i32]* %imax207, i32 0, i64 2
  store i32 %add206, i32* %arrayidx208, align 4
  %170 = load i32, i32* %i, align 4
  %idxprom209 = sext i32 %170 to i64
  %171 = load i32*, i32** %all_procs, align 8
  %arrayidx210 = getelementptr inbounds i32, i32* %171, i64 %idxprom209
  %172 = load i32, i32* %arrayidx210, align 4
  %173 = load i32, i32* %inew, align 4
  %idxprom211 = sext i32 %173 to i64
  %174 = load i32*, i32** %new_all_procs, align 8
  %arrayidx212 = getelementptr inbounds i32, i32* %174, i64 %idxprom211
  store i32 %172, i32* %arrayidx212, align 4
  %175 = load i32, i32* %inew, align 4
  %inc213 = add nsw i32 %175, 1
  store i32 %inc213, i32* %inew, align 4
  br label %for.inc.214

for.inc.214:                                      ; preds = %for.body.127
  %176 = load i32, i32* %i, align 4
  %inc215 = add nsw i32 %176, 1
  store i32 %inc215, i32* %i, align 4
  br label %for.cond.123

for.end.216:                                      ; preds = %for.cond.123
  br label %if.end.217

if.end.217:                                       ; preds = %for.end.216, %land.lhs.true.119
  br label %for.inc.218

for.inc.218:                                      ; preds = %if.end.217
  %177 = load i32, i32* %kp, align 4
  %inc219 = add nsw i32 %177, 1
  store i32 %inc219, i32* %kp, align 4
  br label %for.cond.110

for.end.220:                                      ; preds = %for.cond.110
  br label %for.inc.221

for.inc.221:                                      ; preds = %for.end.220
  %178 = load i32, i32* %jp, align 4
  %inc222 = add nsw i32 %178, 1
  store i32 %inc222, i32* %jp, align 4
  br label %for.cond.105

for.end.223:                                      ; preds = %for.cond.105
  br label %for.inc.224

for.inc.224:                                      ; preds = %for.end.223
  %179 = load i32, i32* %ip, align 4
  %inc225 = add nsw i32 %179, 1
  store i32 %inc225, i32* %ip, align 4
  br label %for.cond.100

for.end.226:                                      ; preds = %for.cond.100
  %180 = load i32, i32* %inew, align 4
  %181 = load i32, i32* %first_inew, align 4
  %sub227 = sub nsw i32 %180, %181
  %182 = load i32, i32* %num_local, align 4
  %sub228 = sub nsw i32 %sub227, %182
  store i32 %sub228, i32* %num_periodic, align 4
  %183 = load i32, i32* %first_i, align 4
  %184 = load i32, i32* %first_local, align 4
  %cmp229 = icmp eq i32 %183, %184
  br i1 %cmp229, label %if.then.231, label %if.end.232

if.then.231:                                      ; preds = %for.end.226
  %185 = load i32, i32* %first_inew, align 4
  store i32 %185, i32* %new_first_local, align 4
  %186 = load i32, i32* %num_periodic, align 4
  store i32 %186, i32* %new_num_periodic, align 4
  br label %if.end.232

if.end.232:                                       ; preds = %if.then.231, %for.end.226
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %187 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %new_all_boxes, align 8
  %188 = load i32, i32* %inew, align 4
  %call233 = call i32 @hypre_BoxArraySetSize(%struct.hypre_BoxArray_struct* %187, i32 %188)
  %189 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %all_boxes, align 8
  %call234 = call i32 @hypre_BoxArrayDestroy(%struct.hypre_BoxArray_struct* %189)
  %190 = load i32*, i32** %all_procs, align 8
  %191 = bitcast i32* %190 to i8*
  call void @hypre_Free(i8* %191)
  store i32* null, i32** %all_procs, align 8
  %192 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %new_all_boxes, align 8
  %193 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %all_boxes_ptr.addr, align 8
  store %struct.hypre_BoxArray_struct* %192, %struct.hypre_BoxArray_struct** %193, align 8
  %194 = load i32*, i32** %new_all_procs, align 8
  %195 = load i32**, i32*** %all_procs_ptr.addr, align 8
  store i32* %194, i32** %195, align 8
  %196 = load i32, i32* %new_first_local, align 4
  %197 = load i32*, i32** %first_local_ptr.addr, align 8
  store i32 %196, i32* %197, align 4
  br label %if.end.235

if.end.235:                                       ; preds = %while.end, %land.lhs.true.13
  %198 = load i32, i32* %new_num_periodic, align 4
  %199 = load i32*, i32** %num_periodic_ptr.addr, align 8
  store i32 %198, i32* %199, align 4
  %200 = load i32, i32* %ierr, align 4
  ret i32 %200
}

declare i32 @hypre_BoxNeighborsAssemble(%struct.hypre_BoxNeighbors_struct*, i32, i32) #1

declare i32 @hypre_MPI_Comm_size(i32, i32*) #1

declare i32 @hypre_MPI_Comm_rank(i32, i32*) #1

declare i32 @hypre_MPI_Allgather(i8*, i32, i32, i8*, i32, i32, i32) #1

declare i32 @hypre_MPI_Allgatherv(i8*, i32, i32, i8*, i32*, i32*, i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_StructGridPrint(%struct._IO_FILE* %file, %struct.hypre_StructGrid_struct* %grid) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %grid.addr = alloca %struct.hypre_StructGrid_struct*, align 8
  %ierr = alloca i32, align 4
  %boxes = alloca %struct.hypre_BoxArray_struct*, align 8
  %box = alloca %struct.hypre_Box_struct*, align 8
  %i = alloca i32, align 4
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store %struct.hypre_StructGrid_struct* %grid, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %1 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %dim = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %1, i32 0, i32 1
  %2 = load i32, i32* %dim, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %2)
  %3 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %boxes1 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %3, i32 0, i32 2
  %4 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes1, align 8
  store %struct.hypre_BoxArray_struct* %4, %struct.hypre_BoxArray_struct** %boxes, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %6 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %size = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %6, i32 0, i32 1
  %7 = load i32, i32* %size, align 4
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %7)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4
  %9 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %size3 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %9, i32 0, i32 1
  %10 = load i32, i32* %size3, align 4
  %cmp = icmp slt i32 %8, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %boxes4 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %12, i32 0, i32 0
  %13 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes4, align 8
  %arrayidx = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %13, i64 %idxprom
  store %struct.hypre_Box_struct* %arrayidx, %struct.hypre_Box_struct** %box, align 8
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %15 = load i32, i32* %i, align 4
  %16 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %16, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i64 0
  %17 = load i32, i32* %arrayidx5, align 4
  %18 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin6 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %18, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [3 x i32], [3 x i32]* %imin6, i32 0, i64 1
  %19 = load i32, i32* %arrayidx7, align 4
  %20 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin8 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %20, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [3 x i32], [3 x i32]* %imin8, i32 0, i64 2
  %21 = load i32, i32* %arrayidx9, align 4
  %22 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %22, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 0
  %23 = load i32, i32* %arrayidx10, align 4
  %24 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax11 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %24, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [3 x i32], [3 x i32]* %imax11, i32 0, i64 1
  %25 = load i32, i32* %arrayidx12, align 4
  %26 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax13 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %26, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [3 x i32], [3 x i32]* %imax13, i32 0, i64 2
  %27 = load i32, i32* %arrayidx14, align 4
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0), i32 %15, i32 %17, i32 %19, i32 %21, i32 %23, i32 %25, i32 %27)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load i32, i32* %ierr, align 4
  ret i32 %29
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_StructGridRead(i32 %comm, %struct._IO_FILE* %file, %struct.hypre_StructGrid_struct** %grid_ptr) #0 {
entry:
  %comm.addr = alloca i32, align 4
  %file.addr = alloca %struct._IO_FILE*, align 8
  %grid_ptr.addr = alloca %struct.hypre_StructGrid_struct**, align 8
  %ierr = alloca i32, align 4
  %grid = alloca %struct.hypre_StructGrid_struct*, align 8
  %ilower = alloca [3 x i32], align 4
  %iupper = alloca [3 x i32], align 4
  %dim = alloca i32, align 4
  %num_boxes = alloca i32, align 4
  %i = alloca i32, align 4
  %idummy = alloca i32, align 4
  store i32 %comm, i32* %comm.addr, align 4
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store %struct.hypre_StructGrid_struct** %grid_ptr, %struct.hypre_StructGrid_struct*** %grid_ptr.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32* %dim)
  %1 = load i32, i32* %comm.addr, align 4
  %2 = load i32, i32* %dim, align 4
  %call1 = call i32 @hypre_StructGridCreate(i32 %1, i32 %2, %struct.hypre_StructGrid_struct** %grid)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32* %num_boxes)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %num_boxes, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %ilower, i32 0, i64 0
  %arrayidx3 = getelementptr inbounds [3 x i32], [3 x i32]* %ilower, i32 0, i64 1
  %arrayidx4 = getelementptr inbounds [3 x i32], [3 x i32]* %ilower, i32 0, i64 2
  %arrayidx5 = getelementptr inbounds [3 x i32], [3 x i32]* %iupper, i32 0, i64 0
  %arrayidx6 = getelementptr inbounds [3 x i32], [3 x i32]* %iupper, i32 0, i64 1
  %arrayidx7 = getelementptr inbounds [3 x i32], [3 x i32]* %iupper, i32 0, i64 2
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0), i32* %idummy, i32* %arrayidx, i32* %arrayidx3, i32* %arrayidx4, i32* %arrayidx5, i32* %arrayidx6, i32* %arrayidx7)
  %7 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %ilower, i32 0, i32 0
  %arraydecay9 = getelementptr inbounds [3 x i32], [3 x i32]* %iupper, i32 0, i32 0
  %call10 = call i32 @hypre_StructGridSetExtents(%struct.hypre_StructGrid_struct* %7, i32* %arraydecay, i32* %arraydecay9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %call11 = call i32 @hypre_StructGridAssemble(%struct.hypre_StructGrid_struct* %9)
  %10 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %11 = load %struct.hypre_StructGrid_struct**, %struct.hypre_StructGrid_struct*** %grid_ptr.addr, align 8
  store %struct.hypre_StructGrid_struct* %10, %struct.hypre_StructGrid_struct** %11, align 8
  %12 = load i32, i32* %ierr, align 4
  ret i32 %12
}

declare i32 @fscanf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @hypre_BoxArraySetSize(%struct.hypre_BoxArray_struct*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
