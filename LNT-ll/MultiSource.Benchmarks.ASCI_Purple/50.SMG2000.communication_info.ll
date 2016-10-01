; ModuleID = './MultiSource.Benchmarks.ASCI_Purple/50.SMG2000.communication_info.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hypre_StructGrid_struct = type { i32, i32, %struct.hypre_BoxArray_struct*, i32*, %struct.hypre_BoxNeighbors_struct*, i32, %struct.hypre_Box_struct*, i32, i32, [3 x i32], i32 }
%struct.hypre_BoxArray_struct = type { %struct.hypre_Box_struct*, i32, i32 }
%struct.hypre_BoxNeighbors_struct = type { %struct.hypre_BoxArray_struct*, i32*, i32*, i32, i32, i32, [3 x [3 x [3 x %struct.hypre_RankLink_struct*]]]* }
%struct.hypre_RankLink_struct = type { i32, %struct.hypre_RankLink_struct* }
%struct.hypre_Box_struct = type { [3 x i32], [3 x i32] }
%struct.hypre_StructStencil_struct = type { [3 x i32]*, i32, i32, i32, i32 }
%struct.hypre_BoxArrayArray_struct = type { %struct.hypre_BoxArray_struct**, i32 }

; Function Attrs: nounwind uwtable
define i32 @hypre_CreateCommInfoFromStencil(%struct.hypre_StructGrid_struct* %grid, %struct.hypre_StructStencil_struct* %stencil, %struct.hypre_BoxArrayArray_struct** %send_boxes_ptr, %struct.hypre_BoxArrayArray_struct** %recv_boxes_ptr, i32*** %send_procs_ptr, i32*** %recv_procs_ptr) #0 {
entry:
  %grid.addr = alloca %struct.hypre_StructGrid_struct*, align 8
  %stencil.addr = alloca %struct.hypre_StructStencil_struct*, align 8
  %send_boxes_ptr.addr = alloca %struct.hypre_BoxArrayArray_struct**, align 8
  %recv_boxes_ptr.addr = alloca %struct.hypre_BoxArrayArray_struct**, align 8
  %send_procs_ptr.addr = alloca i32***, align 8
  %recv_procs_ptr.addr = alloca i32***, align 8
  %ierr = alloca i32, align 4
  %send_boxes = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %recv_boxes = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %send_procs = alloca i32**, align 8
  %recv_procs = alloca i32**, align 8
  %boxes = alloca %struct.hypre_BoxArray_struct*, align 8
  %neighbors = alloca %struct.hypre_BoxNeighbors_struct*, align 8
  %neighbor_boxes = alloca %struct.hypre_BoxArray_struct*, align 8
  %neighbor_procs = alloca i32*, align 8
  %neighbor_box = alloca %struct.hypre_Box_struct*, align 8
  %stencil_shape = alloca [3 x i32]*, align 8
  %stencil_offset = alloca i32*, align 8
  %box = alloca %struct.hypre_Box_struct*, align 8
  %shift_box = alloca %struct.hypre_Box_struct*, align 8
  %send_box_array = alloca %struct.hypre_BoxArray_struct*, align 8
  %recv_box_array = alloca %struct.hypre_BoxArray_struct*, align 8
  %send_box_array_size = alloca i32, align 4
  %recv_box_array_size = alloca i32, align 4
  %cbox_arrays = alloca %struct.hypre_BoxArray_struct**, align 8
  %cbox_arrays_i = alloca i32*, align 8
  %num_cbox_arrays = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %s = alloca i32, align 4
  %d = alloca i32, align 4
  %box0 = alloca %struct.hypre_Box_struct*, align 8
  %hypre__istart = alloca i32, align 4
  %hypre__jstart = alloca i32, align 4
  %hypre__kstart = alloca i32, align 4
  %hypre__istop = alloca i32, align 4
  %hypre__jstop = alloca i32, align 4
  %hypre__kstop = alloca i32, align 4
  %hypre__rank_link = alloca %struct.hypre_RankLink_struct*, align 8
  %hypre__i = alloca i32, align 4
  %hypre__j = alloca i32, align 4
  %hypre__k = alloca i32, align 4
  %hypre__istart351 = alloca i32, align 4
  %hypre__jstart352 = alloca i32, align 4
  %hypre__kstart353 = alloca i32, align 4
  %hypre__istop354 = alloca i32, align 4
  %hypre__jstop355 = alloca i32, align 4
  %hypre__kstop356 = alloca i32, align 4
  %hypre__rank_link357 = alloca %struct.hypre_RankLink_struct*, align 8
  %hypre__i358 = alloca i32, align 4
  %hypre__j359 = alloca i32, align 4
  %hypre__k360 = alloca i32, align 4
  store %struct.hypre_StructGrid_struct* %grid, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  store %struct.hypre_StructStencil_struct* %stencil, %struct.hypre_StructStencil_struct** %stencil.addr, align 8
  store %struct.hypre_BoxArrayArray_struct** %send_boxes_ptr, %struct.hypre_BoxArrayArray_struct*** %send_boxes_ptr.addr, align 8
  store %struct.hypre_BoxArrayArray_struct** %recv_boxes_ptr, %struct.hypre_BoxArrayArray_struct*** %recv_boxes_ptr.addr, align 8
  store i32*** %send_procs_ptr, i32**** %send_procs_ptr.addr, align 8
  store i32*** %recv_procs_ptr, i32**** %recv_procs_ptr.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %boxes1 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %0, i32 0, i32 2
  %1 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes1, align 8
  store %struct.hypre_BoxArray_struct* %1, %struct.hypre_BoxArray_struct** %boxes, align 8
  %2 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %neighbors2 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %2, i32 0, i32 4
  %3 = load %struct.hypre_BoxNeighbors_struct*, %struct.hypre_BoxNeighbors_struct** %neighbors2, align 8
  store %struct.hypre_BoxNeighbors_struct* %3, %struct.hypre_BoxNeighbors_struct** %neighbors, align 8
  %4 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %size = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %4, i32 0, i32 1
  %5 = load i32, i32* %size, align 4
  %call = call %struct.hypre_BoxArrayArray_struct* @hypre_BoxArrayArrayCreate(i32 %5)
  store %struct.hypre_BoxArrayArray_struct* %call, %struct.hypre_BoxArrayArray_struct** %send_boxes, align 8
  %6 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %size3 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %6, i32 0, i32 1
  %7 = load i32, i32* %size3, align 4
  %call4 = call %struct.hypre_BoxArrayArray_struct* @hypre_BoxArrayArrayCreate(i32 %7)
  store %struct.hypre_BoxArrayArray_struct* %call4, %struct.hypre_BoxArrayArray_struct** %recv_boxes, align 8
  %8 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %size5 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %8, i32 0, i32 1
  %9 = load i32, i32* %size5, align 4
  %call6 = call i8* @hypre_CAlloc(i32 %9, i32 8)
  %10 = bitcast i8* %call6 to i32**
  store i32** %10, i32*** %send_procs, align 8
  %11 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %size7 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %11, i32 0, i32 1
  %12 = load i32, i32* %size7, align 4
  %call8 = call i8* @hypre_CAlloc(i32 %12, i32 8)
  %13 = bitcast i8* %call8 to i32**
  store i32** %13, i32*** %recv_procs, align 8
  %14 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil.addr, align 8
  %shape = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %14, i32 0, i32 0
  %15 = load [3 x i32]*, [3 x i32]** %shape, align 8
  store [3 x i32]* %15, [3 x i32]** %stencil_shape, align 8
  %16 = load %struct.hypre_BoxNeighbors_struct*, %struct.hypre_BoxNeighbors_struct** %neighbors, align 8
  %boxes9 = getelementptr inbounds %struct.hypre_BoxNeighbors_struct, %struct.hypre_BoxNeighbors_struct* %16, i32 0, i32 0
  %17 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes9, align 8
  store %struct.hypre_BoxArray_struct* %17, %struct.hypre_BoxArray_struct** %neighbor_boxes, align 8
  %18 = load %struct.hypre_BoxNeighbors_struct*, %struct.hypre_BoxNeighbors_struct** %neighbors, align 8
  %procs = getelementptr inbounds %struct.hypre_BoxNeighbors_struct, %struct.hypre_BoxNeighbors_struct* %18, i32 0, i32 1
  %19 = load i32*, i32** %procs, align 8
  store i32* %19, i32** %neighbor_procs, align 8
  %call10 = call %struct.hypre_Box_struct* @hypre_BoxCreate()
  store %struct.hypre_Box_struct* %call10, %struct.hypre_Box_struct** %box0, align 8
  %call11 = call %struct.hypre_Box_struct* @hypre_BoxCreate()
  store %struct.hypre_Box_struct* %call11, %struct.hypre_Box_struct** %shift_box, align 8
  %20 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %neighbor_boxes, align 8
  %size12 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %20, i32 0, i32 1
  %21 = load i32, i32* %size12, align 4
  %call13 = call i8* @hypre_CAlloc(i32 %21, i32 8)
  %22 = bitcast i8* %call13 to %struct.hypre_BoxArray_struct**
  store %struct.hypre_BoxArray_struct** %22, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %23 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %neighbor_boxes, align 8
  %size14 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %23, i32 0, i32 1
  %24 = load i32, i32* %size14, align 4
  %call15 = call i8* @hypre_CAlloc(i32 %24, i32 4)
  %25 = bitcast i8* %call15 to i32*
  store i32* %25, i32** %cbox_arrays_i, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.650, %entry
  %26 = load i32, i32* %i, align 4
  %27 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %size16 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %27, i32 0, i32 1
  %28 = load i32, i32* %size16, align 4
  %cmp = icmp slt i32 %26, %28
  br i1 %cmp, label %for.body, label %for.end.652

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %i, align 4
  %idxprom = sext i32 %29 to i64
  %30 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %boxes17 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %30, i32 0, i32 0
  %31 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes17, align 8
  %arrayidx = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %31, i64 %idxprom
  store %struct.hypre_Box_struct* %arrayidx, %struct.hypre_Box_struct** %box, align 8
  %32 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %32, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i64 0
  %33 = load i32, i32* %arrayidx18, align 4
  %34 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %shift_box, align 8
  %imin19 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %34, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [3 x i32], [3 x i32]* %imin19, i32 0, i64 0
  store i32 %33, i32* %arrayidx20, align 4
  %35 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin21 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %35, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [3 x i32], [3 x i32]* %imin21, i32 0, i64 1
  %36 = load i32, i32* %arrayidx22, align 4
  %37 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %shift_box, align 8
  %imin23 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %37, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [3 x i32], [3 x i32]* %imin23, i32 0, i64 1
  store i32 %36, i32* %arrayidx24, align 4
  %38 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin25 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %38, i32 0, i32 0
  %arrayidx26 = getelementptr inbounds [3 x i32], [3 x i32]* %imin25, i32 0, i64 2
  %39 = load i32, i32* %arrayidx26, align 4
  %40 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %shift_box, align 8
  %imin27 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %40, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [3 x i32], [3 x i32]* %imin27, i32 0, i64 2
  store i32 %39, i32* %arrayidx28, align 4
  %41 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %41, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 0
  %42 = load i32, i32* %arrayidx29, align 4
  %43 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %shift_box, align 8
  %imax30 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %43, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [3 x i32], [3 x i32]* %imax30, i32 0, i64 0
  store i32 %42, i32* %arrayidx31, align 4
  %44 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax32 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %44, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [3 x i32], [3 x i32]* %imax32, i32 0, i64 1
  %45 = load i32, i32* %arrayidx33, align 4
  %46 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %shift_box, align 8
  %imax34 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %46, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [3 x i32], [3 x i32]* %imax34, i32 0, i64 1
  store i32 %45, i32* %arrayidx35, align 4
  %47 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax36 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %47, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [3 x i32], [3 x i32]* %imax36, i32 0, i64 2
  %48 = load i32, i32* %arrayidx37, align 4
  %49 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %shift_box, align 8
  %imax38 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %49, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [3 x i32], [3 x i32]* %imax38, i32 0, i64 2
  store i32 %48, i32* %arrayidx39, align 4
  store i32 0, i32* %num_cbox_arrays, align 4
  store i32 0, i32* %s, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.184, %for.body
  %50 = load i32, i32* %s, align 4
  %51 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil.addr, align 8
  %size41 = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %51, i32 0, i32 1
  %52 = load i32, i32* %size41, align 4
  %cmp42 = icmp slt i32 %50, %52
  br i1 %cmp42, label %for.body.43, label %for.end.186

for.body.43:                                      ; preds = %for.cond.40
  %53 = load i32, i32* %s, align 4
  %idxprom44 = sext i32 %53 to i64
  %54 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx45 = getelementptr inbounds [3 x i32], [3 x i32]* %54, i64 %idxprom44
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx45, i32 0, i32 0
  store i32* %arraydecay, i32** %stencil_offset, align 8
  store i32 0, i32* %d, align 4
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc, %for.body.43
  %55 = load i32, i32* %d, align 4
  %cmp47 = icmp slt i32 %55, 3
  br i1 %cmp47, label %for.body.48, label %for.end

for.body.48:                                      ; preds = %for.cond.46
  %56 = load i32, i32* %d, align 4
  %idxprom49 = sext i32 %56 to i64
  %57 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin50 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %57, i32 0, i32 0
  %arrayidx51 = getelementptr inbounds [3 x i32], [3 x i32]* %imin50, i32 0, i64 %idxprom49
  %58 = load i32, i32* %arrayidx51, align 4
  %59 = load i32, i32* %d, align 4
  %idxprom52 = sext i32 %59 to i64
  %60 = load i32*, i32** %stencil_offset, align 8
  %arrayidx53 = getelementptr inbounds i32, i32* %60, i64 %idxprom52
  %61 = load i32, i32* %arrayidx53, align 4
  %add = add nsw i32 %58, %61
  %62 = load i32, i32* %d, align 4
  %idxprom54 = sext i32 %62 to i64
  %63 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %shift_box, align 8
  %imin55 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %63, i32 0, i32 0
  %arrayidx56 = getelementptr inbounds [3 x i32], [3 x i32]* %imin55, i32 0, i64 %idxprom54
  store i32 %add, i32* %arrayidx56, align 4
  %64 = load i32, i32* %d, align 4
  %idxprom57 = sext i32 %64 to i64
  %65 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax58 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %65, i32 0, i32 1
  %arrayidx59 = getelementptr inbounds [3 x i32], [3 x i32]* %imax58, i32 0, i64 %idxprom57
  %66 = load i32, i32* %arrayidx59, align 4
  %67 = load i32, i32* %d, align 4
  %idxprom60 = sext i32 %67 to i64
  %68 = load i32*, i32** %stencil_offset, align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %68, i64 %idxprom60
  %69 = load i32, i32* %arrayidx61, align 4
  %add62 = add nsw i32 %66, %69
  %70 = load i32, i32* %d, align 4
  %idxprom63 = sext i32 %70 to i64
  %71 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %shift_box, align 8
  %imax64 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %71, i32 0, i32 1
  %arrayidx65 = getelementptr inbounds [3 x i32], [3 x i32]* %imax64, i32 0, i64 %idxprom63
  store i32 %add62, i32* %arrayidx65, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.48
  %72 = load i32, i32* %d, align 4
  %inc = add nsw i32 %72, 1
  store i32 %inc, i32* %d, align 4
  br label %for.cond.46

for.end:                                          ; preds = %for.cond.46
  store i32 0, i32* %hypre__istart, align 4
  store i32 0, i32* %hypre__jstart, align 4
  store i32 0, i32* %hypre__kstart, align 4
  store i32 0, i32* %hypre__istop, align 4
  store i32 0, i32* %hypre__jstop, align 4
  store i32 0, i32* %hypre__kstop, align 4
  %73 = load i32*, i32** %stencil_offset, align 8
  %arrayidx66 = getelementptr inbounds i32, i32* %73, i64 0
  %74 = load i32, i32* %arrayidx66, align 4
  store i32 %74, i32* %hypre__i, align 4
  %75 = load i32, i32* %hypre__i, align 4
  %cmp67 = icmp slt i32 %75, 0
  br i1 %cmp67, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  store i32 -1, i32* %hypre__istart, align 4
  br label %if.end.70

if.else:                                          ; preds = %for.end
  %76 = load i32, i32* %hypre__i, align 4
  %cmp68 = icmp sgt i32 %76, 0
  br i1 %cmp68, label %if.then.69, label %if.end

if.then.69:                                       ; preds = %if.else
  store i32 1, i32* %hypre__istop, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.69, %if.else
  br label %if.end.70

if.end.70:                                        ; preds = %if.end, %if.then
  %77 = load i32*, i32** %stencil_offset, align 8
  %arrayidx71 = getelementptr inbounds i32, i32* %77, i64 1
  %78 = load i32, i32* %arrayidx71, align 4
  store i32 %78, i32* %hypre__j, align 4
  %79 = load i32, i32* %hypre__j, align 4
  %cmp72 = icmp slt i32 %79, 0
  br i1 %cmp72, label %if.then.73, label %if.else.74

if.then.73:                                       ; preds = %if.end.70
  store i32 -1, i32* %hypre__jstart, align 4
  br label %if.end.78

if.else.74:                                       ; preds = %if.end.70
  %80 = load i32, i32* %hypre__j, align 4
  %cmp75 = icmp sgt i32 %80, 0
  br i1 %cmp75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.else.74
  store i32 1, i32* %hypre__jstop, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.76, %if.else.74
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.then.73
  %81 = load i32*, i32** %stencil_offset, align 8
  %arrayidx79 = getelementptr inbounds i32, i32* %81, i64 2
  %82 = load i32, i32* %arrayidx79, align 4
  store i32 %82, i32* %hypre__k, align 4
  %83 = load i32, i32* %hypre__k, align 4
  %cmp80 = icmp slt i32 %83, 0
  br i1 %cmp80, label %if.then.81, label %if.else.82

if.then.81:                                       ; preds = %if.end.78
  store i32 -1, i32* %hypre__kstart, align 4
  br label %if.end.86

if.else.82:                                       ; preds = %if.end.78
  %84 = load i32, i32* %hypre__k, align 4
  %cmp83 = icmp sgt i32 %84, 0
  br i1 %cmp83, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.else.82
  store i32 1, i32* %hypre__kstop, align 4
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.84, %if.else.82
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.then.81
  %85 = load i32, i32* %hypre__kstart, align 4
  store i32 %85, i32* %hypre__k, align 4
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc.181, %if.end.86
  %86 = load i32, i32* %hypre__k, align 4
  %87 = load i32, i32* %hypre__kstop, align 4
  %cmp88 = icmp sle i32 %86, %87
  br i1 %cmp88, label %for.body.89, label %for.end.183

for.body.89:                                      ; preds = %for.cond.87
  %88 = load i32, i32* %hypre__jstart, align 4
  store i32 %88, i32* %hypre__j, align 4
  br label %for.cond.90

for.cond.90:                                      ; preds = %for.inc.178, %for.body.89
  %89 = load i32, i32* %hypre__j, align 4
  %90 = load i32, i32* %hypre__jstop, align 4
  %cmp91 = icmp sle i32 %89, %90
  br i1 %cmp91, label %for.body.92, label %for.end.180

for.body.92:                                      ; preds = %for.cond.90
  %91 = load i32, i32* %hypre__istart, align 4
  store i32 %91, i32* %hypre__i, align 4
  br label %for.cond.93

for.cond.93:                                      ; preds = %for.inc.175, %for.body.92
  %92 = load i32, i32* %hypre__i, align 4
  %93 = load i32, i32* %hypre__istop, align 4
  %cmp94 = icmp sle i32 %92, %93
  br i1 %cmp94, label %for.body.95, label %for.end.177

for.body.95:                                      ; preds = %for.cond.93
  %94 = load i32, i32* %hypre__k, align 4
  %add96 = add nsw i32 %94, 1
  %idxprom97 = sext i32 %add96 to i64
  %95 = load i32, i32* %hypre__j, align 4
  %add98 = add nsw i32 %95, 1
  %idxprom99 = sext i32 %add98 to i64
  %96 = load i32, i32* %hypre__i, align 4
  %add100 = add nsw i32 %96, 1
  %idxprom101 = sext i32 %add100 to i64
  %97 = load i32, i32* %i, align 4
  %idxprom102 = sext i32 %97 to i64
  %98 = load %struct.hypre_BoxNeighbors_struct*, %struct.hypre_BoxNeighbors_struct** %neighbors, align 8
  %rank_links = getelementptr inbounds %struct.hypre_BoxNeighbors_struct, %struct.hypre_BoxNeighbors_struct* %98, i32 0, i32 6
  %99 = load [3 x [3 x [3 x %struct.hypre_RankLink_struct*]]]*, [3 x [3 x [3 x %struct.hypre_RankLink_struct*]]]** %rank_links, align 8
  %arrayidx103 = getelementptr inbounds [3 x [3 x [3 x %struct.hypre_RankLink_struct*]]], [3 x [3 x [3 x %struct.hypre_RankLink_struct*]]]* %99, i64 %idxprom102
  %arrayidx104 = getelementptr inbounds [3 x [3 x [3 x %struct.hypre_RankLink_struct*]]], [3 x [3 x [3 x %struct.hypre_RankLink_struct*]]]* %arrayidx103, i32 0, i64 %idxprom101
  %arrayidx105 = getelementptr inbounds [3 x [3 x %struct.hypre_RankLink_struct*]], [3 x [3 x %struct.hypre_RankLink_struct*]]* %arrayidx104, i32 0, i64 %idxprom99
  %arrayidx106 = getelementptr inbounds [3 x %struct.hypre_RankLink_struct*], [3 x %struct.hypre_RankLink_struct*]* %arrayidx105, i32 0, i64 %idxprom97
  %100 = load %struct.hypre_RankLink_struct*, %struct.hypre_RankLink_struct** %arrayidx106, align 8
  store %struct.hypre_RankLink_struct* %100, %struct.hypre_RankLink_struct** %hypre__rank_link, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.174, %for.body.95
  %101 = load %struct.hypre_RankLink_struct*, %struct.hypre_RankLink_struct** %hypre__rank_link, align 8
  %tobool = icmp ne %struct.hypre_RankLink_struct* %101, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %102 = load %struct.hypre_RankLink_struct*, %struct.hypre_RankLink_struct** %hypre__rank_link, align 8
  %rank = getelementptr inbounds %struct.hypre_RankLink_struct, %struct.hypre_RankLink_struct* %102, i32 0, i32 0
  %103 = load i32, i32* %rank, align 4
  store i32 %103, i32* %j, align 4
  %104 = load i32, i32* %j, align 4
  %idxprom107 = sext i32 %104 to i64
  %105 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %neighbor_boxes, align 8
  %boxes108 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %105, i32 0, i32 0
  %106 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes108, align 8
  %arrayidx109 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %106, i64 %idxprom107
  store %struct.hypre_Box_struct* %arrayidx109, %struct.hypre_Box_struct** %neighbor_box, align 8
  %107 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %shift_box, align 8
  %108 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %neighbor_box, align 8
  %109 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %call110 = call i32 @hypre_IntersectBoxes(%struct.hypre_Box_struct* %107, %struct.hypre_Box_struct* %108, %struct.hypre_Box_struct* %109)
  %110 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %imax111 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %110, i32 0, i32 1
  %arrayidx112 = getelementptr inbounds [3 x i32], [3 x i32]* %imax111, i32 0, i64 0
  %111 = load i32, i32* %arrayidx112, align 4
  %112 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %imin113 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %112, i32 0, i32 0
  %arrayidx114 = getelementptr inbounds [3 x i32], [3 x i32]* %imin113, i32 0, i64 0
  %113 = load i32, i32* %arrayidx114, align 4
  %sub = sub nsw i32 %111, %113
  %add115 = add nsw i32 %sub, 1
  %cmp116 = icmp slt i32 0, %add115
  br i1 %cmp116, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %114 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %imax117 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %114, i32 0, i32 1
  %arrayidx118 = getelementptr inbounds [3 x i32], [3 x i32]* %imax117, i32 0, i64 0
  %115 = load i32, i32* %arrayidx118, align 4
  %116 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %imin119 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %116, i32 0, i32 0
  %arrayidx120 = getelementptr inbounds [3 x i32], [3 x i32]* %imin119, i32 0, i64 0
  %117 = load i32, i32* %arrayidx120, align 4
  %sub121 = sub nsw i32 %115, %117
  %add122 = add nsw i32 %sub121, 1
  br label %cond.end

cond.false:                                       ; preds = %while.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add122, %cond.true ], [ 0, %cond.false ]
  %118 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %imax123 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %118, i32 0, i32 1
  %arrayidx124 = getelementptr inbounds [3 x i32], [3 x i32]* %imax123, i32 0, i64 1
  %119 = load i32, i32* %arrayidx124, align 4
  %120 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %imin125 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %120, i32 0, i32 0
  %arrayidx126 = getelementptr inbounds [3 x i32], [3 x i32]* %imin125, i32 0, i64 1
  %121 = load i32, i32* %arrayidx126, align 4
  %sub127 = sub nsw i32 %119, %121
  %add128 = add nsw i32 %sub127, 1
  %cmp129 = icmp slt i32 0, %add128
  br i1 %cmp129, label %cond.true.130, label %cond.false.137

cond.true.130:                                    ; preds = %cond.end
  %122 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %imax131 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %122, i32 0, i32 1
  %arrayidx132 = getelementptr inbounds [3 x i32], [3 x i32]* %imax131, i32 0, i64 1
  %123 = load i32, i32* %arrayidx132, align 4
  %124 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %imin133 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %124, i32 0, i32 0
  %arrayidx134 = getelementptr inbounds [3 x i32], [3 x i32]* %imin133, i32 0, i64 1
  %125 = load i32, i32* %arrayidx134, align 4
  %sub135 = sub nsw i32 %123, %125
  %add136 = add nsw i32 %sub135, 1
  br label %cond.end.138

cond.false.137:                                   ; preds = %cond.end
  br label %cond.end.138

cond.end.138:                                     ; preds = %cond.false.137, %cond.true.130
  %cond139 = phi i32 [ %add136, %cond.true.130 ], [ 0, %cond.false.137 ]
  %mul = mul nsw i32 %cond, %cond139
  %126 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %imax140 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %126, i32 0, i32 1
  %arrayidx141 = getelementptr inbounds [3 x i32], [3 x i32]* %imax140, i32 0, i64 2
  %127 = load i32, i32* %arrayidx141, align 4
  %128 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %imin142 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %128, i32 0, i32 0
  %arrayidx143 = getelementptr inbounds [3 x i32], [3 x i32]* %imin142, i32 0, i64 2
  %129 = load i32, i32* %arrayidx143, align 4
  %sub144 = sub nsw i32 %127, %129
  %add145 = add nsw i32 %sub144, 1
  %cmp146 = icmp slt i32 0, %add145
  br i1 %cmp146, label %cond.true.147, label %cond.false.154

cond.true.147:                                    ; preds = %cond.end.138
  %130 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %imax148 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %130, i32 0, i32 1
  %arrayidx149 = getelementptr inbounds [3 x i32], [3 x i32]* %imax148, i32 0, i64 2
  %131 = load i32, i32* %arrayidx149, align 4
  %132 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %imin150 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %132, i32 0, i32 0
  %arrayidx151 = getelementptr inbounds [3 x i32], [3 x i32]* %imin150, i32 0, i64 2
  %133 = load i32, i32* %arrayidx151, align 4
  %sub152 = sub nsw i32 %131, %133
  %add153 = add nsw i32 %sub152, 1
  br label %cond.end.155

cond.false.154:                                   ; preds = %cond.end.138
  br label %cond.end.155

cond.end.155:                                     ; preds = %cond.false.154, %cond.true.147
  %cond156 = phi i32 [ %add153, %cond.true.147 ], [ 0, %cond.false.154 ]
  %mul157 = mul nsw i32 %mul, %cond156
  %tobool158 = icmp ne i32 %mul157, 0
  br i1 %tobool158, label %if.then.159, label %if.end.174

if.then.159:                                      ; preds = %cond.end.155
  %134 = load i32, i32* %j, align 4
  %idxprom160 = sext i32 %134 to i64
  %135 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %arrayidx161 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %135, i64 %idxprom160
  %136 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx161, align 8
  %cmp162 = icmp eq %struct.hypre_BoxArray_struct* %136, null
  br i1 %cmp162, label %if.then.163, label %if.end.170

if.then.163:                                      ; preds = %if.then.159
  %call164 = call %struct.hypre_BoxArray_struct* @hypre_BoxArrayCreate(i32 0)
  %137 = load i32, i32* %j, align 4
  %idxprom165 = sext i32 %137 to i64
  %138 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %arrayidx166 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %138, i64 %idxprom165
  store %struct.hypre_BoxArray_struct* %call164, %struct.hypre_BoxArray_struct** %arrayidx166, align 8
  %139 = load i32, i32* %j, align 4
  %140 = load i32, i32* %num_cbox_arrays, align 4
  %idxprom167 = sext i32 %140 to i64
  %141 = load i32*, i32** %cbox_arrays_i, align 8
  %arrayidx168 = getelementptr inbounds i32, i32* %141, i64 %idxprom167
  store i32 %139, i32* %arrayidx168, align 4
  %142 = load i32, i32* %num_cbox_arrays, align 4
  %inc169 = add nsw i32 %142, 1
  store i32 %inc169, i32* %num_cbox_arrays, align 4
  br label %if.end.170

if.end.170:                                       ; preds = %if.then.163, %if.then.159
  %143 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %144 = load i32, i32* %j, align 4
  %idxprom171 = sext i32 %144 to i64
  %145 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %arrayidx172 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %145, i64 %idxprom171
  %146 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx172, align 8
  %call173 = call i32 @hypre_AppendBox(%struct.hypre_Box_struct* %143, %struct.hypre_BoxArray_struct* %146)
  br label %if.end.174

if.end.174:                                       ; preds = %if.end.170, %cond.end.155
  %147 = load %struct.hypre_RankLink_struct*, %struct.hypre_RankLink_struct** %hypre__rank_link, align 8
  %next = getelementptr inbounds %struct.hypre_RankLink_struct, %struct.hypre_RankLink_struct* %147, i32 0, i32 1
  %148 = load %struct.hypre_RankLink_struct*, %struct.hypre_RankLink_struct** %next, align 8
  store %struct.hypre_RankLink_struct* %148, %struct.hypre_RankLink_struct** %hypre__rank_link, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc.175

for.inc.175:                                      ; preds = %while.end
  %149 = load i32, i32* %hypre__i, align 4
  %inc176 = add nsw i32 %149, 1
  store i32 %inc176, i32* %hypre__i, align 4
  br label %for.cond.93

for.end.177:                                      ; preds = %for.cond.93
  br label %for.inc.178

for.inc.178:                                      ; preds = %for.end.177
  %150 = load i32, i32* %hypre__j, align 4
  %inc179 = add nsw i32 %150, 1
  store i32 %inc179, i32* %hypre__j, align 4
  br label %for.cond.90

for.end.180:                                      ; preds = %for.cond.90
  br label %for.inc.181

for.inc.181:                                      ; preds = %for.end.180
  %151 = load i32, i32* %hypre__k, align 4
  %inc182 = add nsw i32 %151, 1
  store i32 %inc182, i32* %hypre__k, align 4
  br label %for.cond.87

for.end.183:                                      ; preds = %for.cond.87
  br label %for.inc.184

for.inc.184:                                      ; preds = %for.end.183
  %152 = load i32, i32* %s, align 4
  %inc185 = add nsw i32 %152, 1
  store i32 %inc185, i32* %s, align 4
  br label %for.cond.40

for.end.186:                                      ; preds = %for.cond.40
  store i32 0, i32* %recv_box_array_size, align 4
  store i32 0, i32* %m, align 4
  br label %for.cond.187

for.cond.187:                                     ; preds = %for.inc.199, %for.end.186
  %153 = load i32, i32* %m, align 4
  %154 = load i32, i32* %num_cbox_arrays, align 4
  %cmp188 = icmp slt i32 %153, %154
  br i1 %cmp188, label %for.body.189, label %for.end.201

for.body.189:                                     ; preds = %for.cond.187
  %155 = load i32, i32* %m, align 4
  %idxprom190 = sext i32 %155 to i64
  %156 = load i32*, i32** %cbox_arrays_i, align 8
  %arrayidx191 = getelementptr inbounds i32, i32* %156, i64 %idxprom190
  %157 = load i32, i32* %arrayidx191, align 4
  store i32 %157, i32* %j, align 4
  %158 = load i32, i32* %j, align 4
  %idxprom192 = sext i32 %158 to i64
  %159 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %arrayidx193 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %159, i64 %idxprom192
  %160 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx193, align 8
  %call194 = call i32 @hypre_UnionBoxes(%struct.hypre_BoxArray_struct* %160)
  %161 = load i32, i32* %j, align 4
  %idxprom195 = sext i32 %161 to i64
  %162 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %arrayidx196 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %162, i64 %idxprom195
  %163 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx196, align 8
  %size197 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %163, i32 0, i32 1
  %164 = load i32, i32* %size197, align 4
  %165 = load i32, i32* %recv_box_array_size, align 4
  %add198 = add nsw i32 %165, %164
  store i32 %add198, i32* %recv_box_array_size, align 4
  br label %for.inc.199

for.inc.199:                                      ; preds = %for.body.189
  %166 = load i32, i32* %m, align 4
  %inc200 = add nsw i32 %166, 1
  store i32 %inc200, i32* %m, align 4
  br label %for.cond.187

for.end.201:                                      ; preds = %for.cond.187
  %167 = load i32, i32* %i, align 4
  %idxprom202 = sext i32 %167 to i64
  %168 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %recv_boxes, align 8
  %box_arrays = getelementptr inbounds %struct.hypre_BoxArrayArray_struct, %struct.hypre_BoxArrayArray_struct* %168, i32 0, i32 0
  %169 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %box_arrays, align 8
  %arrayidx203 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %169, i64 %idxprom202
  %170 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx203, align 8
  store %struct.hypre_BoxArray_struct* %170, %struct.hypre_BoxArray_struct** %recv_box_array, align 8
  %171 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %recv_box_array, align 8
  %172 = load i32, i32* %recv_box_array_size, align 4
  %call204 = call i32 @hypre_BoxArraySetSize(%struct.hypre_BoxArray_struct* %171, i32 %172)
  %173 = load i32, i32* %recv_box_array_size, align 4
  %call205 = call i8* @hypre_CAlloc(i32 %173, i32 4)
  %174 = bitcast i8* %call205 to i32*
  %175 = load i32, i32* %i, align 4
  %idxprom206 = sext i32 %175 to i64
  %176 = load i32**, i32*** %recv_procs, align 8
  %arrayidx207 = getelementptr inbounds i32*, i32** %176, i64 %idxprom206
  store i32* %174, i32** %arrayidx207, align 8
  store i32 0, i32* %n, align 4
  store i32 0, i32* %m, align 4
  br label %for.cond.208

for.cond.208:                                     ; preds = %for.inc.306, %for.end.201
  %177 = load i32, i32* %m, align 4
  %178 = load i32, i32* %num_cbox_arrays, align 4
  %cmp209 = icmp slt i32 %177, %178
  br i1 %cmp209, label %for.body.210, label %for.end.308

for.body.210:                                     ; preds = %for.cond.208
  %179 = load i32, i32* %m, align 4
  %idxprom211 = sext i32 %179 to i64
  %180 = load i32*, i32** %cbox_arrays_i, align 8
  %arrayidx212 = getelementptr inbounds i32, i32* %180, i64 %idxprom211
  %181 = load i32, i32* %arrayidx212, align 4
  store i32 %181, i32* %j, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.213

for.cond.213:                                     ; preds = %for.inc.298, %for.body.210
  %182 = load i32, i32* %k, align 4
  %183 = load i32, i32* %j, align 4
  %idxprom214 = sext i32 %183 to i64
  %184 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %arrayidx215 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %184, i64 %idxprom214
  %185 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx215, align 8
  %size216 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %185, i32 0, i32 1
  %186 = load i32, i32* %size216, align 4
  %cmp217 = icmp slt i32 %182, %186
  br i1 %cmp217, label %for.body.218, label %for.end.300

for.body.218:                                     ; preds = %for.cond.213
  %187 = load i32, i32* %j, align 4
  %idxprom219 = sext i32 %187 to i64
  %188 = load i32*, i32** %neighbor_procs, align 8
  %arrayidx220 = getelementptr inbounds i32, i32* %188, i64 %idxprom219
  %189 = load i32, i32* %arrayidx220, align 4
  %190 = load i32, i32* %n, align 4
  %idxprom221 = sext i32 %190 to i64
  %191 = load i32, i32* %i, align 4
  %idxprom222 = sext i32 %191 to i64
  %192 = load i32**, i32*** %recv_procs, align 8
  %arrayidx223 = getelementptr inbounds i32*, i32** %192, i64 %idxprom222
  %193 = load i32*, i32** %arrayidx223, align 8
  %arrayidx224 = getelementptr inbounds i32, i32* %193, i64 %idxprom221
  store i32 %189, i32* %arrayidx224, align 4
  %194 = load i32, i32* %k, align 4
  %idxprom225 = sext i32 %194 to i64
  %195 = load i32, i32* %j, align 4
  %idxprom226 = sext i32 %195 to i64
  %196 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %arrayidx227 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %196, i64 %idxprom226
  %197 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx227, align 8
  %boxes228 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %197, i32 0, i32 0
  %198 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes228, align 8
  %arrayidx229 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %198, i64 %idxprom225
  %imin230 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx229, i32 0, i32 0
  %arrayidx231 = getelementptr inbounds [3 x i32], [3 x i32]* %imin230, i32 0, i64 0
  %199 = load i32, i32* %arrayidx231, align 4
  %200 = load i32, i32* %n, align 4
  %idxprom232 = sext i32 %200 to i64
  %201 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %recv_box_array, align 8
  %boxes233 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %201, i32 0, i32 0
  %202 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes233, align 8
  %arrayidx234 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %202, i64 %idxprom232
  %imin235 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx234, i32 0, i32 0
  %arrayidx236 = getelementptr inbounds [3 x i32], [3 x i32]* %imin235, i32 0, i64 0
  store i32 %199, i32* %arrayidx236, align 4
  %203 = load i32, i32* %k, align 4
  %idxprom237 = sext i32 %203 to i64
  %204 = load i32, i32* %j, align 4
  %idxprom238 = sext i32 %204 to i64
  %205 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %arrayidx239 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %205, i64 %idxprom238
  %206 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx239, align 8
  %boxes240 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %206, i32 0, i32 0
  %207 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes240, align 8
  %arrayidx241 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %207, i64 %idxprom237
  %imin242 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx241, i32 0, i32 0
  %arrayidx243 = getelementptr inbounds [3 x i32], [3 x i32]* %imin242, i32 0, i64 1
  %208 = load i32, i32* %arrayidx243, align 4
  %209 = load i32, i32* %n, align 4
  %idxprom244 = sext i32 %209 to i64
  %210 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %recv_box_array, align 8
  %boxes245 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %210, i32 0, i32 0
  %211 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes245, align 8
  %arrayidx246 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %211, i64 %idxprom244
  %imin247 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx246, i32 0, i32 0
  %arrayidx248 = getelementptr inbounds [3 x i32], [3 x i32]* %imin247, i32 0, i64 1
  store i32 %208, i32* %arrayidx248, align 4
  %212 = load i32, i32* %k, align 4
  %idxprom249 = sext i32 %212 to i64
  %213 = load i32, i32* %j, align 4
  %idxprom250 = sext i32 %213 to i64
  %214 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %arrayidx251 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %214, i64 %idxprom250
  %215 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx251, align 8
  %boxes252 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %215, i32 0, i32 0
  %216 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes252, align 8
  %arrayidx253 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %216, i64 %idxprom249
  %imin254 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx253, i32 0, i32 0
  %arrayidx255 = getelementptr inbounds [3 x i32], [3 x i32]* %imin254, i32 0, i64 2
  %217 = load i32, i32* %arrayidx255, align 4
  %218 = load i32, i32* %n, align 4
  %idxprom256 = sext i32 %218 to i64
  %219 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %recv_box_array, align 8
  %boxes257 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %219, i32 0, i32 0
  %220 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes257, align 8
  %arrayidx258 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %220, i64 %idxprom256
  %imin259 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx258, i32 0, i32 0
  %arrayidx260 = getelementptr inbounds [3 x i32], [3 x i32]* %imin259, i32 0, i64 2
  store i32 %217, i32* %arrayidx260, align 4
  %221 = load i32, i32* %k, align 4
  %idxprom261 = sext i32 %221 to i64
  %222 = load i32, i32* %j, align 4
  %idxprom262 = sext i32 %222 to i64
  %223 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %arrayidx263 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %223, i64 %idxprom262
  %224 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx263, align 8
  %boxes264 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %224, i32 0, i32 0
  %225 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes264, align 8
  %arrayidx265 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %225, i64 %idxprom261
  %imax266 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx265, i32 0, i32 1
  %arrayidx267 = getelementptr inbounds [3 x i32], [3 x i32]* %imax266, i32 0, i64 0
  %226 = load i32, i32* %arrayidx267, align 4
  %227 = load i32, i32* %n, align 4
  %idxprom268 = sext i32 %227 to i64
  %228 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %recv_box_array, align 8
  %boxes269 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %228, i32 0, i32 0
  %229 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes269, align 8
  %arrayidx270 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %229, i64 %idxprom268
  %imax271 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx270, i32 0, i32 1
  %arrayidx272 = getelementptr inbounds [3 x i32], [3 x i32]* %imax271, i32 0, i64 0
  store i32 %226, i32* %arrayidx272, align 4
  %230 = load i32, i32* %k, align 4
  %idxprom273 = sext i32 %230 to i64
  %231 = load i32, i32* %j, align 4
  %idxprom274 = sext i32 %231 to i64
  %232 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %arrayidx275 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %232, i64 %idxprom274
  %233 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx275, align 8
  %boxes276 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %233, i32 0, i32 0
  %234 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes276, align 8
  %arrayidx277 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %234, i64 %idxprom273
  %imax278 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx277, i32 0, i32 1
  %arrayidx279 = getelementptr inbounds [3 x i32], [3 x i32]* %imax278, i32 0, i64 1
  %235 = load i32, i32* %arrayidx279, align 4
  %236 = load i32, i32* %n, align 4
  %idxprom280 = sext i32 %236 to i64
  %237 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %recv_box_array, align 8
  %boxes281 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %237, i32 0, i32 0
  %238 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes281, align 8
  %arrayidx282 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %238, i64 %idxprom280
  %imax283 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx282, i32 0, i32 1
  %arrayidx284 = getelementptr inbounds [3 x i32], [3 x i32]* %imax283, i32 0, i64 1
  store i32 %235, i32* %arrayidx284, align 4
  %239 = load i32, i32* %k, align 4
  %idxprom285 = sext i32 %239 to i64
  %240 = load i32, i32* %j, align 4
  %idxprom286 = sext i32 %240 to i64
  %241 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %arrayidx287 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %241, i64 %idxprom286
  %242 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx287, align 8
  %boxes288 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %242, i32 0, i32 0
  %243 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes288, align 8
  %arrayidx289 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %243, i64 %idxprom285
  %imax290 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx289, i32 0, i32 1
  %arrayidx291 = getelementptr inbounds [3 x i32], [3 x i32]* %imax290, i32 0, i64 2
  %244 = load i32, i32* %arrayidx291, align 4
  %245 = load i32, i32* %n, align 4
  %idxprom292 = sext i32 %245 to i64
  %246 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %recv_box_array, align 8
  %boxes293 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %246, i32 0, i32 0
  %247 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes293, align 8
  %arrayidx294 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %247, i64 %idxprom292
  %imax295 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx294, i32 0, i32 1
  %arrayidx296 = getelementptr inbounds [3 x i32], [3 x i32]* %imax295, i32 0, i64 2
  store i32 %244, i32* %arrayidx296, align 4
  %248 = load i32, i32* %n, align 4
  %inc297 = add nsw i32 %248, 1
  store i32 %inc297, i32* %n, align 4
  br label %for.inc.298

for.inc.298:                                      ; preds = %for.body.218
  %249 = load i32, i32* %k, align 4
  %inc299 = add nsw i32 %249, 1
  store i32 %inc299, i32* %k, align 4
  br label %for.cond.213

for.end.300:                                      ; preds = %for.cond.213
  %250 = load i32, i32* %j, align 4
  %idxprom301 = sext i32 %250 to i64
  %251 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %arrayidx302 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %251, i64 %idxprom301
  %252 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx302, align 8
  %call303 = call i32 @hypre_BoxArrayDestroy(%struct.hypre_BoxArray_struct* %252)
  %253 = load i32, i32* %j, align 4
  %idxprom304 = sext i32 %253 to i64
  %254 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %arrayidx305 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %254, i64 %idxprom304
  store %struct.hypre_BoxArray_struct* null, %struct.hypre_BoxArray_struct** %arrayidx305, align 8
  br label %for.inc.306

for.inc.306:                                      ; preds = %for.end.300
  %255 = load i32, i32* %m, align 4
  %inc307 = add nsw i32 %255, 1
  store i32 %inc307, i32* %m, align 4
  br label %for.cond.208

for.end.308:                                      ; preds = %for.cond.208
  store i32 0, i32* %num_cbox_arrays, align 4
  store i32 0, i32* %s, align 4
  br label %for.cond.309

for.cond.309:                                     ; preds = %for.inc.524, %for.end.308
  %256 = load i32, i32* %s, align 4
  %257 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil.addr, align 8
  %size310 = getelementptr inbounds %struct.hypre_StructStencil_struct, %struct.hypre_StructStencil_struct* %257, i32 0, i32 1
  %258 = load i32, i32* %size310, align 4
  %cmp311 = icmp slt i32 %256, %258
  br i1 %cmp311, label %for.body.312, label %for.end.526

for.body.312:                                     ; preds = %for.cond.309
  %259 = load i32, i32* %s, align 4
  %idxprom313 = sext i32 %259 to i64
  %260 = load [3 x i32]*, [3 x i32]** %stencil_shape, align 8
  %arrayidx314 = getelementptr inbounds [3 x i32], [3 x i32]* %260, i64 %idxprom313
  %arraydecay315 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx314, i32 0, i32 0
  store i32* %arraydecay315, i32** %stencil_offset, align 8
  store i32 0, i32* %d, align 4
  br label %for.cond.316

for.cond.316:                                     ; preds = %for.inc.324, %for.body.312
  %261 = load i32, i32* %d, align 4
  %cmp317 = icmp slt i32 %261, 3
  br i1 %cmp317, label %for.body.318, label %for.end.326

for.body.318:                                     ; preds = %for.cond.316
  %262 = load i32, i32* %d, align 4
  %idxprom319 = sext i32 %262 to i64
  %263 = load i32*, i32** %stencil_offset, align 8
  %arrayidx320 = getelementptr inbounds i32, i32* %263, i64 %idxprom319
  %264 = load i32, i32* %arrayidx320, align 4
  %sub321 = sub nsw i32 0, %264
  %265 = load i32, i32* %d, align 4
  %idxprom322 = sext i32 %265 to i64
  %266 = load i32*, i32** %stencil_offset, align 8
  %arrayidx323 = getelementptr inbounds i32, i32* %266, i64 %idxprom322
  store i32 %sub321, i32* %arrayidx323, align 4
  br label %for.inc.324

for.inc.324:                                      ; preds = %for.body.318
  %267 = load i32, i32* %d, align 4
  %inc325 = add nsw i32 %267, 1
  store i32 %inc325, i32* %d, align 4
  br label %for.cond.316

for.end.326:                                      ; preds = %for.cond.316
  store i32 0, i32* %d, align 4
  br label %for.cond.327

for.cond.327:                                     ; preds = %for.inc.348, %for.end.326
  %268 = load i32, i32* %d, align 4
  %cmp328 = icmp slt i32 %268, 3
  br i1 %cmp328, label %for.body.329, label %for.end.350

for.body.329:                                     ; preds = %for.cond.327
  %269 = load i32, i32* %d, align 4
  %idxprom330 = sext i32 %269 to i64
  %270 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin331 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %270, i32 0, i32 0
  %arrayidx332 = getelementptr inbounds [3 x i32], [3 x i32]* %imin331, i32 0, i64 %idxprom330
  %271 = load i32, i32* %arrayidx332, align 4
  %272 = load i32, i32* %d, align 4
  %idxprom333 = sext i32 %272 to i64
  %273 = load i32*, i32** %stencil_offset, align 8
  %arrayidx334 = getelementptr inbounds i32, i32* %273, i64 %idxprom333
  %274 = load i32, i32* %arrayidx334, align 4
  %add335 = add nsw i32 %271, %274
  %275 = load i32, i32* %d, align 4
  %idxprom336 = sext i32 %275 to i64
  %276 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %shift_box, align 8
  %imin337 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %276, i32 0, i32 0
  %arrayidx338 = getelementptr inbounds [3 x i32], [3 x i32]* %imin337, i32 0, i64 %idxprom336
  store i32 %add335, i32* %arrayidx338, align 4
  %277 = load i32, i32* %d, align 4
  %idxprom339 = sext i32 %277 to i64
  %278 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax340 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %278, i32 0, i32 1
  %arrayidx341 = getelementptr inbounds [3 x i32], [3 x i32]* %imax340, i32 0, i64 %idxprom339
  %279 = load i32, i32* %arrayidx341, align 4
  %280 = load i32, i32* %d, align 4
  %idxprom342 = sext i32 %280 to i64
  %281 = load i32*, i32** %stencil_offset, align 8
  %arrayidx343 = getelementptr inbounds i32, i32* %281, i64 %idxprom342
  %282 = load i32, i32* %arrayidx343, align 4
  %add344 = add nsw i32 %279, %282
  %283 = load i32, i32* %d, align 4
  %idxprom345 = sext i32 %283 to i64
  %284 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %shift_box, align 8
  %imax346 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %284, i32 0, i32 1
  %arrayidx347 = getelementptr inbounds [3 x i32], [3 x i32]* %imax346, i32 0, i64 %idxprom345
  store i32 %add344, i32* %arrayidx347, align 4
  br label %for.inc.348

for.inc.348:                                      ; preds = %for.body.329
  %285 = load i32, i32* %d, align 4
  %inc349 = add nsw i32 %285, 1
  store i32 %inc349, i32* %d, align 4
  br label %for.cond.327

for.end.350:                                      ; preds = %for.cond.327
  store i32 0, i32* %hypre__istart351, align 4
  store i32 0, i32* %hypre__jstart352, align 4
  store i32 0, i32* %hypre__kstart353, align 4
  store i32 0, i32* %hypre__istop354, align 4
  store i32 0, i32* %hypre__jstop355, align 4
  store i32 0, i32* %hypre__kstop356, align 4
  %286 = load i32*, i32** %stencil_offset, align 8
  %arrayidx361 = getelementptr inbounds i32, i32* %286, i64 0
  %287 = load i32, i32* %arrayidx361, align 4
  store i32 %287, i32* %hypre__i358, align 4
  %288 = load i32, i32* %hypre__i358, align 4
  %cmp362 = icmp slt i32 %288, 0
  br i1 %cmp362, label %if.then.363, label %if.else.364

if.then.363:                                      ; preds = %for.end.350
  store i32 -1, i32* %hypre__istart351, align 4
  br label %if.end.368

if.else.364:                                      ; preds = %for.end.350
  %289 = load i32, i32* %hypre__i358, align 4
  %cmp365 = icmp sgt i32 %289, 0
  br i1 %cmp365, label %if.then.366, label %if.end.367

if.then.366:                                      ; preds = %if.else.364
  store i32 1, i32* %hypre__istop354, align 4
  br label %if.end.367

if.end.367:                                       ; preds = %if.then.366, %if.else.364
  br label %if.end.368

if.end.368:                                       ; preds = %if.end.367, %if.then.363
  %290 = load i32*, i32** %stencil_offset, align 8
  %arrayidx369 = getelementptr inbounds i32, i32* %290, i64 1
  %291 = load i32, i32* %arrayidx369, align 4
  store i32 %291, i32* %hypre__j359, align 4
  %292 = load i32, i32* %hypre__j359, align 4
  %cmp370 = icmp slt i32 %292, 0
  br i1 %cmp370, label %if.then.371, label %if.else.372

if.then.371:                                      ; preds = %if.end.368
  store i32 -1, i32* %hypre__jstart352, align 4
  br label %if.end.376

if.else.372:                                      ; preds = %if.end.368
  %293 = load i32, i32* %hypre__j359, align 4
  %cmp373 = icmp sgt i32 %293, 0
  br i1 %cmp373, label %if.then.374, label %if.end.375

if.then.374:                                      ; preds = %if.else.372
  store i32 1, i32* %hypre__jstop355, align 4
  br label %if.end.375

if.end.375:                                       ; preds = %if.then.374, %if.else.372
  br label %if.end.376

if.end.376:                                       ; preds = %if.end.375, %if.then.371
  %294 = load i32*, i32** %stencil_offset, align 8
  %arrayidx377 = getelementptr inbounds i32, i32* %294, i64 2
  %295 = load i32, i32* %arrayidx377, align 4
  store i32 %295, i32* %hypre__k360, align 4
  %296 = load i32, i32* %hypre__k360, align 4
  %cmp378 = icmp slt i32 %296, 0
  br i1 %cmp378, label %if.then.379, label %if.else.380

if.then.379:                                      ; preds = %if.end.376
  store i32 -1, i32* %hypre__kstart353, align 4
  br label %if.end.384

if.else.380:                                      ; preds = %if.end.376
  %297 = load i32, i32* %hypre__k360, align 4
  %cmp381 = icmp sgt i32 %297, 0
  br i1 %cmp381, label %if.then.382, label %if.end.383

if.then.382:                                      ; preds = %if.else.380
  store i32 1, i32* %hypre__kstop356, align 4
  br label %if.end.383

if.end.383:                                       ; preds = %if.then.382, %if.else.380
  br label %if.end.384

if.end.384:                                       ; preds = %if.end.383, %if.then.379
  %298 = load i32, i32* %hypre__kstart353, align 4
  store i32 %298, i32* %hypre__k360, align 4
  br label %for.cond.385

for.cond.385:                                     ; preds = %for.inc.510, %if.end.384
  %299 = load i32, i32* %hypre__k360, align 4
  %300 = load i32, i32* %hypre__kstop356, align 4
  %cmp386 = icmp sle i32 %299, %300
  br i1 %cmp386, label %for.body.387, label %for.end.512

for.body.387:                                     ; preds = %for.cond.385
  %301 = load i32, i32* %hypre__jstart352, align 4
  store i32 %301, i32* %hypre__j359, align 4
  br label %for.cond.388

for.cond.388:                                     ; preds = %for.inc.507, %for.body.387
  %302 = load i32, i32* %hypre__j359, align 4
  %303 = load i32, i32* %hypre__jstop355, align 4
  %cmp389 = icmp sle i32 %302, %303
  br i1 %cmp389, label %for.body.390, label %for.end.509

for.body.390:                                     ; preds = %for.cond.388
  %304 = load i32, i32* %hypre__istart351, align 4
  store i32 %304, i32* %hypre__i358, align 4
  br label %for.cond.391

for.cond.391:                                     ; preds = %for.inc.504, %for.body.390
  %305 = load i32, i32* %hypre__i358, align 4
  %306 = load i32, i32* %hypre__istop354, align 4
  %cmp392 = icmp sle i32 %305, %306
  br i1 %cmp392, label %for.body.393, label %for.end.506

for.body.393:                                     ; preds = %for.cond.391
  %307 = load i32, i32* %hypre__k360, align 4
  %add394 = add nsw i32 %307, 1
  %idxprom395 = sext i32 %add394 to i64
  %308 = load i32, i32* %hypre__j359, align 4
  %add396 = add nsw i32 %308, 1
  %idxprom397 = sext i32 %add396 to i64
  %309 = load i32, i32* %hypre__i358, align 4
  %add398 = add nsw i32 %309, 1
  %idxprom399 = sext i32 %add398 to i64
  %310 = load i32, i32* %i, align 4
  %idxprom400 = sext i32 %310 to i64
  %311 = load %struct.hypre_BoxNeighbors_struct*, %struct.hypre_BoxNeighbors_struct** %neighbors, align 8
  %rank_links401 = getelementptr inbounds %struct.hypre_BoxNeighbors_struct, %struct.hypre_BoxNeighbors_struct* %311, i32 0, i32 6
  %312 = load [3 x [3 x [3 x %struct.hypre_RankLink_struct*]]]*, [3 x [3 x [3 x %struct.hypre_RankLink_struct*]]]** %rank_links401, align 8
  %arrayidx402 = getelementptr inbounds [3 x [3 x [3 x %struct.hypre_RankLink_struct*]]], [3 x [3 x [3 x %struct.hypre_RankLink_struct*]]]* %312, i64 %idxprom400
  %arrayidx403 = getelementptr inbounds [3 x [3 x [3 x %struct.hypre_RankLink_struct*]]], [3 x [3 x [3 x %struct.hypre_RankLink_struct*]]]* %arrayidx402, i32 0, i64 %idxprom399
  %arrayidx404 = getelementptr inbounds [3 x [3 x %struct.hypre_RankLink_struct*]], [3 x [3 x %struct.hypre_RankLink_struct*]]* %arrayidx403, i32 0, i64 %idxprom397
  %arrayidx405 = getelementptr inbounds [3 x %struct.hypre_RankLink_struct*], [3 x %struct.hypre_RankLink_struct*]* %arrayidx404, i32 0, i64 %idxprom395
  %313 = load %struct.hypre_RankLink_struct*, %struct.hypre_RankLink_struct** %arrayidx405, align 8
  store %struct.hypre_RankLink_struct* %313, %struct.hypre_RankLink_struct** %hypre__rank_link357, align 8
  br label %while.cond.406

while.cond.406:                                   ; preds = %if.end.501, %for.body.393
  %314 = load %struct.hypre_RankLink_struct*, %struct.hypre_RankLink_struct** %hypre__rank_link357, align 8
  %tobool407 = icmp ne %struct.hypre_RankLink_struct* %314, null
  br i1 %tobool407, label %while.body.408, label %while.end.503

while.body.408:                                   ; preds = %while.cond.406
  %315 = load %struct.hypre_RankLink_struct*, %struct.hypre_RankLink_struct** %hypre__rank_link357, align 8
  %rank409 = getelementptr inbounds %struct.hypre_RankLink_struct, %struct.hypre_RankLink_struct* %315, i32 0, i32 0
  %316 = load i32, i32* %rank409, align 4
  store i32 %316, i32* %j, align 4
  %317 = load i32, i32* %j, align 4
  %idxprom410 = sext i32 %317 to i64
  %318 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %neighbor_boxes, align 8
  %boxes411 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %318, i32 0, i32 0
  %319 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes411, align 8
  %arrayidx412 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %319, i64 %idxprom410
  store %struct.hypre_Box_struct* %arrayidx412, %struct.hypre_Box_struct** %neighbor_box, align 8
  %320 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %shift_box, align 8
  %321 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %neighbor_box, align 8
  %322 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %call413 = call i32 @hypre_IntersectBoxes(%struct.hypre_Box_struct* %320, %struct.hypre_Box_struct* %321, %struct.hypre_Box_struct* %322)
  %323 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %imax414 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %323, i32 0, i32 1
  %arrayidx415 = getelementptr inbounds [3 x i32], [3 x i32]* %imax414, i32 0, i64 0
  %324 = load i32, i32* %arrayidx415, align 4
  %325 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %imin416 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %325, i32 0, i32 0
  %arrayidx417 = getelementptr inbounds [3 x i32], [3 x i32]* %imin416, i32 0, i64 0
  %326 = load i32, i32* %arrayidx417, align 4
  %sub418 = sub nsw i32 %324, %326
  %add419 = add nsw i32 %sub418, 1
  %cmp420 = icmp slt i32 0, %add419
  br i1 %cmp420, label %cond.true.421, label %cond.false.428

cond.true.421:                                    ; preds = %while.body.408
  %327 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %imax422 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %327, i32 0, i32 1
  %arrayidx423 = getelementptr inbounds [3 x i32], [3 x i32]* %imax422, i32 0, i64 0
  %328 = load i32, i32* %arrayidx423, align 4
  %329 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %imin424 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %329, i32 0, i32 0
  %arrayidx425 = getelementptr inbounds [3 x i32], [3 x i32]* %imin424, i32 0, i64 0
  %330 = load i32, i32* %arrayidx425, align 4
  %sub426 = sub nsw i32 %328, %330
  %add427 = add nsw i32 %sub426, 1
  br label %cond.end.429

cond.false.428:                                   ; preds = %while.body.408
  br label %cond.end.429

cond.end.429:                                     ; preds = %cond.false.428, %cond.true.421
  %cond430 = phi i32 [ %add427, %cond.true.421 ], [ 0, %cond.false.428 ]
  %331 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %imax431 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %331, i32 0, i32 1
  %arrayidx432 = getelementptr inbounds [3 x i32], [3 x i32]* %imax431, i32 0, i64 1
  %332 = load i32, i32* %arrayidx432, align 4
  %333 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %imin433 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %333, i32 0, i32 0
  %arrayidx434 = getelementptr inbounds [3 x i32], [3 x i32]* %imin433, i32 0, i64 1
  %334 = load i32, i32* %arrayidx434, align 4
  %sub435 = sub nsw i32 %332, %334
  %add436 = add nsw i32 %sub435, 1
  %cmp437 = icmp slt i32 0, %add436
  br i1 %cmp437, label %cond.true.438, label %cond.false.445

cond.true.438:                                    ; preds = %cond.end.429
  %335 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %imax439 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %335, i32 0, i32 1
  %arrayidx440 = getelementptr inbounds [3 x i32], [3 x i32]* %imax439, i32 0, i64 1
  %336 = load i32, i32* %arrayidx440, align 4
  %337 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %imin441 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %337, i32 0, i32 0
  %arrayidx442 = getelementptr inbounds [3 x i32], [3 x i32]* %imin441, i32 0, i64 1
  %338 = load i32, i32* %arrayidx442, align 4
  %sub443 = sub nsw i32 %336, %338
  %add444 = add nsw i32 %sub443, 1
  br label %cond.end.446

cond.false.445:                                   ; preds = %cond.end.429
  br label %cond.end.446

cond.end.446:                                     ; preds = %cond.false.445, %cond.true.438
  %cond447 = phi i32 [ %add444, %cond.true.438 ], [ 0, %cond.false.445 ]
  %mul448 = mul nsw i32 %cond430, %cond447
  %339 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %imax449 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %339, i32 0, i32 1
  %arrayidx450 = getelementptr inbounds [3 x i32], [3 x i32]* %imax449, i32 0, i64 2
  %340 = load i32, i32* %arrayidx450, align 4
  %341 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %imin451 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %341, i32 0, i32 0
  %arrayidx452 = getelementptr inbounds [3 x i32], [3 x i32]* %imin451, i32 0, i64 2
  %342 = load i32, i32* %arrayidx452, align 4
  %sub453 = sub nsw i32 %340, %342
  %add454 = add nsw i32 %sub453, 1
  %cmp455 = icmp slt i32 0, %add454
  br i1 %cmp455, label %cond.true.456, label %cond.false.463

cond.true.456:                                    ; preds = %cond.end.446
  %343 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %imax457 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %343, i32 0, i32 1
  %arrayidx458 = getelementptr inbounds [3 x i32], [3 x i32]* %imax457, i32 0, i64 2
  %344 = load i32, i32* %arrayidx458, align 4
  %345 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %imin459 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %345, i32 0, i32 0
  %arrayidx460 = getelementptr inbounds [3 x i32], [3 x i32]* %imin459, i32 0, i64 2
  %346 = load i32, i32* %arrayidx460, align 4
  %sub461 = sub nsw i32 %344, %346
  %add462 = add nsw i32 %sub461, 1
  br label %cond.end.464

cond.false.463:                                   ; preds = %cond.end.446
  br label %cond.end.464

cond.end.464:                                     ; preds = %cond.false.463, %cond.true.456
  %cond465 = phi i32 [ %add462, %cond.true.456 ], [ 0, %cond.false.463 ]
  %mul466 = mul nsw i32 %mul448, %cond465
  %tobool467 = icmp ne i32 %mul466, 0
  br i1 %tobool467, label %if.then.468, label %if.end.501

if.then.468:                                      ; preds = %cond.end.464
  store i32 0, i32* %d, align 4
  br label %for.cond.469

for.cond.469:                                     ; preds = %for.inc.484, %if.then.468
  %347 = load i32, i32* %d, align 4
  %cmp470 = icmp slt i32 %347, 3
  br i1 %cmp470, label %for.body.471, label %for.end.486

for.body.471:                                     ; preds = %for.cond.469
  %348 = load i32, i32* %d, align 4
  %idxprom472 = sext i32 %348 to i64
  %349 = load i32*, i32** %stencil_offset, align 8
  %arrayidx473 = getelementptr inbounds i32, i32* %349, i64 %idxprom472
  %350 = load i32, i32* %arrayidx473, align 4
  %351 = load i32, i32* %d, align 4
  %idxprom474 = sext i32 %351 to i64
  %352 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %imin475 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %352, i32 0, i32 0
  %arrayidx476 = getelementptr inbounds [3 x i32], [3 x i32]* %imin475, i32 0, i64 %idxprom474
  %353 = load i32, i32* %arrayidx476, align 4
  %sub477 = sub nsw i32 %353, %350
  store i32 %sub477, i32* %arrayidx476, align 4
  %354 = load i32, i32* %d, align 4
  %idxprom478 = sext i32 %354 to i64
  %355 = load i32*, i32** %stencil_offset, align 8
  %arrayidx479 = getelementptr inbounds i32, i32* %355, i64 %idxprom478
  %356 = load i32, i32* %arrayidx479, align 4
  %357 = load i32, i32* %d, align 4
  %idxprom480 = sext i32 %357 to i64
  %358 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %imax481 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %358, i32 0, i32 1
  %arrayidx482 = getelementptr inbounds [3 x i32], [3 x i32]* %imax481, i32 0, i64 %idxprom480
  %359 = load i32, i32* %arrayidx482, align 4
  %sub483 = sub nsw i32 %359, %356
  store i32 %sub483, i32* %arrayidx482, align 4
  br label %for.inc.484

for.inc.484:                                      ; preds = %for.body.471
  %360 = load i32, i32* %d, align 4
  %inc485 = add nsw i32 %360, 1
  store i32 %inc485, i32* %d, align 4
  br label %for.cond.469

for.end.486:                                      ; preds = %for.cond.469
  %361 = load i32, i32* %j, align 4
  %idxprom487 = sext i32 %361 to i64
  %362 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %arrayidx488 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %362, i64 %idxprom487
  %363 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx488, align 8
  %cmp489 = icmp eq %struct.hypre_BoxArray_struct* %363, null
  br i1 %cmp489, label %if.then.490, label %if.end.497

if.then.490:                                      ; preds = %for.end.486
  %call491 = call %struct.hypre_BoxArray_struct* @hypre_BoxArrayCreate(i32 0)
  %364 = load i32, i32* %j, align 4
  %idxprom492 = sext i32 %364 to i64
  %365 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %arrayidx493 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %365, i64 %idxprom492
  store %struct.hypre_BoxArray_struct* %call491, %struct.hypre_BoxArray_struct** %arrayidx493, align 8
  %366 = load i32, i32* %j, align 4
  %367 = load i32, i32* %num_cbox_arrays, align 4
  %idxprom494 = sext i32 %367 to i64
  %368 = load i32*, i32** %cbox_arrays_i, align 8
  %arrayidx495 = getelementptr inbounds i32, i32* %368, i64 %idxprom494
  store i32 %366, i32* %arrayidx495, align 4
  %369 = load i32, i32* %num_cbox_arrays, align 4
  %inc496 = add nsw i32 %369, 1
  store i32 %inc496, i32* %num_cbox_arrays, align 4
  br label %if.end.497

if.end.497:                                       ; preds = %if.then.490, %for.end.486
  %370 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %371 = load i32, i32* %j, align 4
  %idxprom498 = sext i32 %371 to i64
  %372 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %arrayidx499 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %372, i64 %idxprom498
  %373 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx499, align 8
  %call500 = call i32 @hypre_AppendBox(%struct.hypre_Box_struct* %370, %struct.hypre_BoxArray_struct* %373)
  br label %if.end.501

if.end.501:                                       ; preds = %if.end.497, %cond.end.464
  %374 = load %struct.hypre_RankLink_struct*, %struct.hypre_RankLink_struct** %hypre__rank_link357, align 8
  %next502 = getelementptr inbounds %struct.hypre_RankLink_struct, %struct.hypre_RankLink_struct* %374, i32 0, i32 1
  %375 = load %struct.hypre_RankLink_struct*, %struct.hypre_RankLink_struct** %next502, align 8
  store %struct.hypre_RankLink_struct* %375, %struct.hypre_RankLink_struct** %hypre__rank_link357, align 8
  br label %while.cond.406

while.end.503:                                    ; preds = %while.cond.406
  br label %for.inc.504

for.inc.504:                                      ; preds = %while.end.503
  %376 = load i32, i32* %hypre__i358, align 4
  %inc505 = add nsw i32 %376, 1
  store i32 %inc505, i32* %hypre__i358, align 4
  br label %for.cond.391

for.end.506:                                      ; preds = %for.cond.391
  br label %for.inc.507

for.inc.507:                                      ; preds = %for.end.506
  %377 = load i32, i32* %hypre__j359, align 4
  %inc508 = add nsw i32 %377, 1
  store i32 %inc508, i32* %hypre__j359, align 4
  br label %for.cond.388

for.end.509:                                      ; preds = %for.cond.388
  br label %for.inc.510

for.inc.510:                                      ; preds = %for.end.509
  %378 = load i32, i32* %hypre__k360, align 4
  %inc511 = add nsw i32 %378, 1
  store i32 %inc511, i32* %hypre__k360, align 4
  br label %for.cond.385

for.end.512:                                      ; preds = %for.cond.385
  store i32 0, i32* %d, align 4
  br label %for.cond.513

for.cond.513:                                     ; preds = %for.inc.521, %for.end.512
  %379 = load i32, i32* %d, align 4
  %cmp514 = icmp slt i32 %379, 3
  br i1 %cmp514, label %for.body.515, label %for.end.523

for.body.515:                                     ; preds = %for.cond.513
  %380 = load i32, i32* %d, align 4
  %idxprom516 = sext i32 %380 to i64
  %381 = load i32*, i32** %stencil_offset, align 8
  %arrayidx517 = getelementptr inbounds i32, i32* %381, i64 %idxprom516
  %382 = load i32, i32* %arrayidx517, align 4
  %sub518 = sub nsw i32 0, %382
  %383 = load i32, i32* %d, align 4
  %idxprom519 = sext i32 %383 to i64
  %384 = load i32*, i32** %stencil_offset, align 8
  %arrayidx520 = getelementptr inbounds i32, i32* %384, i64 %idxprom519
  store i32 %sub518, i32* %arrayidx520, align 4
  br label %for.inc.521

for.inc.521:                                      ; preds = %for.body.515
  %385 = load i32, i32* %d, align 4
  %inc522 = add nsw i32 %385, 1
  store i32 %inc522, i32* %d, align 4
  br label %for.cond.513

for.end.523:                                      ; preds = %for.cond.513
  br label %for.inc.524

for.inc.524:                                      ; preds = %for.end.523
  %386 = load i32, i32* %s, align 4
  %inc525 = add nsw i32 %386, 1
  store i32 %inc525, i32* %s, align 4
  br label %for.cond.309

for.end.526:                                      ; preds = %for.cond.309
  store i32 0, i32* %send_box_array_size, align 4
  store i32 0, i32* %m, align 4
  br label %for.cond.527

for.cond.527:                                     ; preds = %for.inc.539, %for.end.526
  %387 = load i32, i32* %m, align 4
  %388 = load i32, i32* %num_cbox_arrays, align 4
  %cmp528 = icmp slt i32 %387, %388
  br i1 %cmp528, label %for.body.529, label %for.end.541

for.body.529:                                     ; preds = %for.cond.527
  %389 = load i32, i32* %m, align 4
  %idxprom530 = sext i32 %389 to i64
  %390 = load i32*, i32** %cbox_arrays_i, align 8
  %arrayidx531 = getelementptr inbounds i32, i32* %390, i64 %idxprom530
  %391 = load i32, i32* %arrayidx531, align 4
  store i32 %391, i32* %j, align 4
  %392 = load i32, i32* %j, align 4
  %idxprom532 = sext i32 %392 to i64
  %393 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %arrayidx533 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %393, i64 %idxprom532
  %394 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx533, align 8
  %call534 = call i32 @hypre_UnionBoxes(%struct.hypre_BoxArray_struct* %394)
  %395 = load i32, i32* %j, align 4
  %idxprom535 = sext i32 %395 to i64
  %396 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %arrayidx536 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %396, i64 %idxprom535
  %397 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx536, align 8
  %size537 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %397, i32 0, i32 1
  %398 = load i32, i32* %size537, align 4
  %399 = load i32, i32* %send_box_array_size, align 4
  %add538 = add nsw i32 %399, %398
  store i32 %add538, i32* %send_box_array_size, align 4
  br label %for.inc.539

for.inc.539:                                      ; preds = %for.body.529
  %400 = load i32, i32* %m, align 4
  %inc540 = add nsw i32 %400, 1
  store i32 %inc540, i32* %m, align 4
  br label %for.cond.527

for.end.541:                                      ; preds = %for.cond.527
  %401 = load i32, i32* %i, align 4
  %idxprom542 = sext i32 %401 to i64
  %402 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %send_boxes, align 8
  %box_arrays543 = getelementptr inbounds %struct.hypre_BoxArrayArray_struct, %struct.hypre_BoxArrayArray_struct* %402, i32 0, i32 0
  %403 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %box_arrays543, align 8
  %arrayidx544 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %403, i64 %idxprom542
  %404 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx544, align 8
  store %struct.hypre_BoxArray_struct* %404, %struct.hypre_BoxArray_struct** %send_box_array, align 8
  %405 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %send_box_array, align 8
  %406 = load i32, i32* %send_box_array_size, align 4
  %call545 = call i32 @hypre_BoxArraySetSize(%struct.hypre_BoxArray_struct* %405, i32 %406)
  %407 = load i32, i32* %send_box_array_size, align 4
  %call546 = call i8* @hypre_CAlloc(i32 %407, i32 4)
  %408 = bitcast i8* %call546 to i32*
  %409 = load i32, i32* %i, align 4
  %idxprom547 = sext i32 %409 to i64
  %410 = load i32**, i32*** %send_procs, align 8
  %arrayidx548 = getelementptr inbounds i32*, i32** %410, i64 %idxprom547
  store i32* %408, i32** %arrayidx548, align 8
  store i32 0, i32* %n, align 4
  store i32 0, i32* %m, align 4
  br label %for.cond.549

for.cond.549:                                     ; preds = %for.inc.647, %for.end.541
  %411 = load i32, i32* %m, align 4
  %412 = load i32, i32* %num_cbox_arrays, align 4
  %cmp550 = icmp slt i32 %411, %412
  br i1 %cmp550, label %for.body.551, label %for.end.649

for.body.551:                                     ; preds = %for.cond.549
  %413 = load i32, i32* %m, align 4
  %idxprom552 = sext i32 %413 to i64
  %414 = load i32*, i32** %cbox_arrays_i, align 8
  %arrayidx553 = getelementptr inbounds i32, i32* %414, i64 %idxprom552
  %415 = load i32, i32* %arrayidx553, align 4
  store i32 %415, i32* %j, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.554

for.cond.554:                                     ; preds = %for.inc.639, %for.body.551
  %416 = load i32, i32* %k, align 4
  %417 = load i32, i32* %j, align 4
  %idxprom555 = sext i32 %417 to i64
  %418 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %arrayidx556 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %418, i64 %idxprom555
  %419 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx556, align 8
  %size557 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %419, i32 0, i32 1
  %420 = load i32, i32* %size557, align 4
  %cmp558 = icmp slt i32 %416, %420
  br i1 %cmp558, label %for.body.559, label %for.end.641

for.body.559:                                     ; preds = %for.cond.554
  %421 = load i32, i32* %j, align 4
  %idxprom560 = sext i32 %421 to i64
  %422 = load i32*, i32** %neighbor_procs, align 8
  %arrayidx561 = getelementptr inbounds i32, i32* %422, i64 %idxprom560
  %423 = load i32, i32* %arrayidx561, align 4
  %424 = load i32, i32* %n, align 4
  %idxprom562 = sext i32 %424 to i64
  %425 = load i32, i32* %i, align 4
  %idxprom563 = sext i32 %425 to i64
  %426 = load i32**, i32*** %send_procs, align 8
  %arrayidx564 = getelementptr inbounds i32*, i32** %426, i64 %idxprom563
  %427 = load i32*, i32** %arrayidx564, align 8
  %arrayidx565 = getelementptr inbounds i32, i32* %427, i64 %idxprom562
  store i32 %423, i32* %arrayidx565, align 4
  %428 = load i32, i32* %k, align 4
  %idxprom566 = sext i32 %428 to i64
  %429 = load i32, i32* %j, align 4
  %idxprom567 = sext i32 %429 to i64
  %430 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %arrayidx568 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %430, i64 %idxprom567
  %431 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx568, align 8
  %boxes569 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %431, i32 0, i32 0
  %432 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes569, align 8
  %arrayidx570 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %432, i64 %idxprom566
  %imin571 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx570, i32 0, i32 0
  %arrayidx572 = getelementptr inbounds [3 x i32], [3 x i32]* %imin571, i32 0, i64 0
  %433 = load i32, i32* %arrayidx572, align 4
  %434 = load i32, i32* %n, align 4
  %idxprom573 = sext i32 %434 to i64
  %435 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %send_box_array, align 8
  %boxes574 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %435, i32 0, i32 0
  %436 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes574, align 8
  %arrayidx575 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %436, i64 %idxprom573
  %imin576 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx575, i32 0, i32 0
  %arrayidx577 = getelementptr inbounds [3 x i32], [3 x i32]* %imin576, i32 0, i64 0
  store i32 %433, i32* %arrayidx577, align 4
  %437 = load i32, i32* %k, align 4
  %idxprom578 = sext i32 %437 to i64
  %438 = load i32, i32* %j, align 4
  %idxprom579 = sext i32 %438 to i64
  %439 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %arrayidx580 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %439, i64 %idxprom579
  %440 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx580, align 8
  %boxes581 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %440, i32 0, i32 0
  %441 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes581, align 8
  %arrayidx582 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %441, i64 %idxprom578
  %imin583 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx582, i32 0, i32 0
  %arrayidx584 = getelementptr inbounds [3 x i32], [3 x i32]* %imin583, i32 0, i64 1
  %442 = load i32, i32* %arrayidx584, align 4
  %443 = load i32, i32* %n, align 4
  %idxprom585 = sext i32 %443 to i64
  %444 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %send_box_array, align 8
  %boxes586 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %444, i32 0, i32 0
  %445 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes586, align 8
  %arrayidx587 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %445, i64 %idxprom585
  %imin588 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx587, i32 0, i32 0
  %arrayidx589 = getelementptr inbounds [3 x i32], [3 x i32]* %imin588, i32 0, i64 1
  store i32 %442, i32* %arrayidx589, align 4
  %446 = load i32, i32* %k, align 4
  %idxprom590 = sext i32 %446 to i64
  %447 = load i32, i32* %j, align 4
  %idxprom591 = sext i32 %447 to i64
  %448 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %arrayidx592 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %448, i64 %idxprom591
  %449 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx592, align 8
  %boxes593 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %449, i32 0, i32 0
  %450 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes593, align 8
  %arrayidx594 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %450, i64 %idxprom590
  %imin595 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx594, i32 0, i32 0
  %arrayidx596 = getelementptr inbounds [3 x i32], [3 x i32]* %imin595, i32 0, i64 2
  %451 = load i32, i32* %arrayidx596, align 4
  %452 = load i32, i32* %n, align 4
  %idxprom597 = sext i32 %452 to i64
  %453 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %send_box_array, align 8
  %boxes598 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %453, i32 0, i32 0
  %454 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes598, align 8
  %arrayidx599 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %454, i64 %idxprom597
  %imin600 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx599, i32 0, i32 0
  %arrayidx601 = getelementptr inbounds [3 x i32], [3 x i32]* %imin600, i32 0, i64 2
  store i32 %451, i32* %arrayidx601, align 4
  %455 = load i32, i32* %k, align 4
  %idxprom602 = sext i32 %455 to i64
  %456 = load i32, i32* %j, align 4
  %idxprom603 = sext i32 %456 to i64
  %457 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %arrayidx604 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %457, i64 %idxprom603
  %458 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx604, align 8
  %boxes605 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %458, i32 0, i32 0
  %459 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes605, align 8
  %arrayidx606 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %459, i64 %idxprom602
  %imax607 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx606, i32 0, i32 1
  %arrayidx608 = getelementptr inbounds [3 x i32], [3 x i32]* %imax607, i32 0, i64 0
  %460 = load i32, i32* %arrayidx608, align 4
  %461 = load i32, i32* %n, align 4
  %idxprom609 = sext i32 %461 to i64
  %462 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %send_box_array, align 8
  %boxes610 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %462, i32 0, i32 0
  %463 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes610, align 8
  %arrayidx611 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %463, i64 %idxprom609
  %imax612 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx611, i32 0, i32 1
  %arrayidx613 = getelementptr inbounds [3 x i32], [3 x i32]* %imax612, i32 0, i64 0
  store i32 %460, i32* %arrayidx613, align 4
  %464 = load i32, i32* %k, align 4
  %idxprom614 = sext i32 %464 to i64
  %465 = load i32, i32* %j, align 4
  %idxprom615 = sext i32 %465 to i64
  %466 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %arrayidx616 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %466, i64 %idxprom615
  %467 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx616, align 8
  %boxes617 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %467, i32 0, i32 0
  %468 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes617, align 8
  %arrayidx618 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %468, i64 %idxprom614
  %imax619 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx618, i32 0, i32 1
  %arrayidx620 = getelementptr inbounds [3 x i32], [3 x i32]* %imax619, i32 0, i64 1
  %469 = load i32, i32* %arrayidx620, align 4
  %470 = load i32, i32* %n, align 4
  %idxprom621 = sext i32 %470 to i64
  %471 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %send_box_array, align 8
  %boxes622 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %471, i32 0, i32 0
  %472 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes622, align 8
  %arrayidx623 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %472, i64 %idxprom621
  %imax624 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx623, i32 0, i32 1
  %arrayidx625 = getelementptr inbounds [3 x i32], [3 x i32]* %imax624, i32 0, i64 1
  store i32 %469, i32* %arrayidx625, align 4
  %473 = load i32, i32* %k, align 4
  %idxprom626 = sext i32 %473 to i64
  %474 = load i32, i32* %j, align 4
  %idxprom627 = sext i32 %474 to i64
  %475 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %arrayidx628 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %475, i64 %idxprom627
  %476 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx628, align 8
  %boxes629 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %476, i32 0, i32 0
  %477 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes629, align 8
  %arrayidx630 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %477, i64 %idxprom626
  %imax631 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx630, i32 0, i32 1
  %arrayidx632 = getelementptr inbounds [3 x i32], [3 x i32]* %imax631, i32 0, i64 2
  %478 = load i32, i32* %arrayidx632, align 4
  %479 = load i32, i32* %n, align 4
  %idxprom633 = sext i32 %479 to i64
  %480 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %send_box_array, align 8
  %boxes634 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %480, i32 0, i32 0
  %481 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes634, align 8
  %arrayidx635 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %481, i64 %idxprom633
  %imax636 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx635, i32 0, i32 1
  %arrayidx637 = getelementptr inbounds [3 x i32], [3 x i32]* %imax636, i32 0, i64 2
  store i32 %478, i32* %arrayidx637, align 4
  %482 = load i32, i32* %n, align 4
  %inc638 = add nsw i32 %482, 1
  store i32 %inc638, i32* %n, align 4
  br label %for.inc.639

for.inc.639:                                      ; preds = %for.body.559
  %483 = load i32, i32* %k, align 4
  %inc640 = add nsw i32 %483, 1
  store i32 %inc640, i32* %k, align 4
  br label %for.cond.554

for.end.641:                                      ; preds = %for.cond.554
  %484 = load i32, i32* %j, align 4
  %idxprom642 = sext i32 %484 to i64
  %485 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %arrayidx643 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %485, i64 %idxprom642
  %486 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx643, align 8
  %call644 = call i32 @hypre_BoxArrayDestroy(%struct.hypre_BoxArray_struct* %486)
  %487 = load i32, i32* %j, align 4
  %idxprom645 = sext i32 %487 to i64
  %488 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %arrayidx646 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %488, i64 %idxprom645
  store %struct.hypre_BoxArray_struct* null, %struct.hypre_BoxArray_struct** %arrayidx646, align 8
  br label %for.inc.647

for.inc.647:                                      ; preds = %for.end.641
  %489 = load i32, i32* %m, align 4
  %inc648 = add nsw i32 %489, 1
  store i32 %inc648, i32* %m, align 4
  br label %for.cond.549

for.end.649:                                      ; preds = %for.cond.549
  br label %for.inc.650

for.inc.650:                                      ; preds = %for.end.649
  %490 = load i32, i32* %i, align 4
  %inc651 = add nsw i32 %490, 1
  store i32 %inc651, i32* %i, align 4
  br label %for.cond

for.end.652:                                      ; preds = %for.cond
  %491 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %492 = bitcast %struct.hypre_BoxArray_struct** %491 to i8*
  call void @hypre_Free(i8* %492)
  store %struct.hypre_BoxArray_struct** null, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %493 = load i32*, i32** %cbox_arrays_i, align 8
  %494 = bitcast i32* %493 to i8*
  call void @hypre_Free(i8* %494)
  store i32* null, i32** %cbox_arrays_i, align 8
  %495 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %shift_box, align 8
  %call653 = call i32 @hypre_BoxDestroy(%struct.hypre_Box_struct* %495)
  %496 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %call654 = call i32 @hypre_BoxDestroy(%struct.hypre_Box_struct* %496)
  %497 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %send_boxes, align 8
  %498 = load %struct.hypre_BoxArrayArray_struct**, %struct.hypre_BoxArrayArray_struct*** %send_boxes_ptr.addr, align 8
  store %struct.hypre_BoxArrayArray_struct* %497, %struct.hypre_BoxArrayArray_struct** %498, align 8
  %499 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %recv_boxes, align 8
  %500 = load %struct.hypre_BoxArrayArray_struct**, %struct.hypre_BoxArrayArray_struct*** %recv_boxes_ptr.addr, align 8
  store %struct.hypre_BoxArrayArray_struct* %499, %struct.hypre_BoxArrayArray_struct** %500, align 8
  %501 = load i32**, i32*** %send_procs, align 8
  %502 = load i32***, i32**** %send_procs_ptr.addr, align 8
  store i32** %501, i32*** %502, align 8
  %503 = load i32**, i32*** %recv_procs, align 8
  %504 = load i32***, i32**** %recv_procs_ptr.addr, align 8
  store i32** %503, i32*** %504, align 8
  %505 = load i32, i32* %ierr, align 4
  ret i32 %505
}

declare %struct.hypre_BoxArrayArray_struct* @hypre_BoxArrayArrayCreate(i32) #1

declare i8* @hypre_CAlloc(i32, i32) #1

declare %struct.hypre_Box_struct* @hypre_BoxCreate() #1

declare i32 @hypre_IntersectBoxes(%struct.hypre_Box_struct*, %struct.hypre_Box_struct*, %struct.hypre_Box_struct*) #1

declare %struct.hypre_BoxArray_struct* @hypre_BoxArrayCreate(i32) #1

declare i32 @hypre_AppendBox(%struct.hypre_Box_struct*, %struct.hypre_BoxArray_struct*) #1

declare i32 @hypre_UnionBoxes(%struct.hypre_BoxArray_struct*) #1

declare i32 @hypre_BoxArraySetSize(%struct.hypre_BoxArray_struct*, i32) #1

declare i32 @hypre_BoxArrayDestroy(%struct.hypre_BoxArray_struct*) #1

declare void @hypre_Free(i8*) #1

declare i32 @hypre_BoxDestroy(%struct.hypre_Box_struct*) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_CreateCommInfoFromNumGhost(%struct.hypre_StructGrid_struct* %grid, i32* %num_ghost, %struct.hypre_BoxArrayArray_struct** %send_boxes_ptr, %struct.hypre_BoxArrayArray_struct** %recv_boxes_ptr, i32*** %send_procs_ptr, i32*** %recv_procs_ptr) #0 {
entry:
  %grid.addr = alloca %struct.hypre_StructGrid_struct*, align 8
  %num_ghost.addr = alloca i32*, align 8
  %send_boxes_ptr.addr = alloca %struct.hypre_BoxArrayArray_struct**, align 8
  %recv_boxes_ptr.addr = alloca %struct.hypre_BoxArrayArray_struct**, align 8
  %send_procs_ptr.addr = alloca i32***, align 8
  %recv_procs_ptr.addr = alloca i32***, align 8
  %ierr = alloca i32, align 4
  %send_boxes = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %recv_boxes = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %send_procs = alloca i32**, align 8
  %recv_procs = alloca i32**, align 8
  %boxes = alloca %struct.hypre_BoxArray_struct*, align 8
  %ids = alloca i32*, align 8
  %neighbors = alloca %struct.hypre_BoxNeighbors_struct*, align 8
  %neighbor_boxes = alloca %struct.hypre_BoxArray_struct*, align 8
  %neighbor_procs = alloca i32*, align 8
  %neighbor_ids = alloca i32*, align 8
  %neighbor_box = alloca %struct.hypre_Box_struct*, align 8
  %box = alloca %struct.hypre_Box_struct*, align 8
  %grow_box = alloca %struct.hypre_Box_struct*, align 8
  %send_box_array = alloca %struct.hypre_BoxArray_struct*, align 8
  %recv_box_array = alloca %struct.hypre_BoxArray_struct*, align 8
  %send_box_array_size = alloca i32, align 4
  %recv_box_array_size = alloca i32, align 4
  %cbox_arrays = alloca %struct.hypre_BoxArray_struct**, align 8
  %cbox_arrays_i = alloca i32*, align 8
  %num_cbox_arrays = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %d = alloca i32, align 4
  %box0 = alloca %struct.hypre_Box_struct*, align 8
  store %struct.hypre_StructGrid_struct* %grid, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  store i32* %num_ghost, i32** %num_ghost.addr, align 8
  store %struct.hypre_BoxArrayArray_struct** %send_boxes_ptr, %struct.hypre_BoxArrayArray_struct*** %send_boxes_ptr.addr, align 8
  store %struct.hypre_BoxArrayArray_struct** %recv_boxes_ptr, %struct.hypre_BoxArrayArray_struct*** %recv_boxes_ptr.addr, align 8
  store i32*** %send_procs_ptr, i32**** %send_procs_ptr.addr, align 8
  store i32*** %recv_procs_ptr, i32**** %recv_procs_ptr.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %boxes1 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %0, i32 0, i32 2
  %1 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes1, align 8
  store %struct.hypre_BoxArray_struct* %1, %struct.hypre_BoxArray_struct** %boxes, align 8
  %2 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %ids2 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %2, i32 0, i32 3
  %3 = load i32*, i32** %ids2, align 8
  store i32* %3, i32** %ids, align 8
  %4 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid.addr, align 8
  %neighbors3 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %4, i32 0, i32 4
  %5 = load %struct.hypre_BoxNeighbors_struct*, %struct.hypre_BoxNeighbors_struct** %neighbors3, align 8
  store %struct.hypre_BoxNeighbors_struct* %5, %struct.hypre_BoxNeighbors_struct** %neighbors, align 8
  %6 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %size = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %6, i32 0, i32 1
  %7 = load i32, i32* %size, align 4
  %call = call %struct.hypre_BoxArrayArray_struct* @hypre_BoxArrayArrayCreate(i32 %7)
  store %struct.hypre_BoxArrayArray_struct* %call, %struct.hypre_BoxArrayArray_struct** %send_boxes, align 8
  %8 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %size4 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %8, i32 0, i32 1
  %9 = load i32, i32* %size4, align 4
  %call5 = call %struct.hypre_BoxArrayArray_struct* @hypre_BoxArrayArrayCreate(i32 %9)
  store %struct.hypre_BoxArrayArray_struct* %call5, %struct.hypre_BoxArrayArray_struct** %recv_boxes, align 8
  %10 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %size6 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %10, i32 0, i32 1
  %11 = load i32, i32* %size6, align 4
  %call7 = call i8* @hypre_CAlloc(i32 %11, i32 8)
  %12 = bitcast i8* %call7 to i32**
  store i32** %12, i32*** %send_procs, align 8
  %13 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %size8 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %13, i32 0, i32 1
  %14 = load i32, i32* %size8, align 4
  %call9 = call i8* @hypre_CAlloc(i32 %14, i32 8)
  %15 = bitcast i8* %call9 to i32**
  store i32** %15, i32*** %recv_procs, align 8
  %16 = load %struct.hypre_BoxNeighbors_struct*, %struct.hypre_BoxNeighbors_struct** %neighbors, align 8
  %boxes10 = getelementptr inbounds %struct.hypre_BoxNeighbors_struct, %struct.hypre_BoxNeighbors_struct* %16, i32 0, i32 0
  %17 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes10, align 8
  store %struct.hypre_BoxArray_struct* %17, %struct.hypre_BoxArray_struct** %neighbor_boxes, align 8
  %18 = load %struct.hypre_BoxNeighbors_struct*, %struct.hypre_BoxNeighbors_struct** %neighbors, align 8
  %procs = getelementptr inbounds %struct.hypre_BoxNeighbors_struct, %struct.hypre_BoxNeighbors_struct* %18, i32 0, i32 1
  %19 = load i32*, i32** %procs, align 8
  store i32* %19, i32** %neighbor_procs, align 8
  %20 = load %struct.hypre_BoxNeighbors_struct*, %struct.hypre_BoxNeighbors_struct** %neighbors, align 8
  %ids11 = getelementptr inbounds %struct.hypre_BoxNeighbors_struct, %struct.hypre_BoxNeighbors_struct* %20, i32 0, i32 2
  %21 = load i32*, i32** %ids11, align 8
  store i32* %21, i32** %neighbor_ids, align 8
  %call12 = call %struct.hypre_Box_struct* @hypre_BoxCreate()
  store %struct.hypre_Box_struct* %call12, %struct.hypre_Box_struct** %box0, align 8
  %call13 = call %struct.hypre_Box_struct* @hypre_BoxCreate()
  store %struct.hypre_Box_struct* %call13, %struct.hypre_Box_struct** %grow_box, align 8
  %22 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %neighbor_boxes, align 8
  %size14 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %22, i32 0, i32 1
  %23 = load i32, i32* %size14, align 4
  %call15 = call i8* @hypre_CAlloc(i32 %23, i32 8)
  %24 = bitcast i8* %call15 to %struct.hypre_BoxArray_struct**
  store %struct.hypre_BoxArray_struct** %24, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %25 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %neighbor_boxes, align 8
  %size16 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %25, i32 0, i32 1
  %26 = load i32, i32* %size16, align 4
  %call17 = call i8* @hypre_CAlloc(i32 %26, i32 4)
  %27 = bitcast i8* %call17 to i32*
  store i32* %27, i32** %cbox_arrays_i, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.504, %entry
  %28 = load i32, i32* %i, align 4
  %29 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %size18 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %29, i32 0, i32 1
  %30 = load i32, i32* %size18, align 4
  %cmp = icmp slt i32 %28, %30
  br i1 %cmp, label %for.body, label %for.end.506

for.body:                                         ; preds = %for.cond
  %31 = load i32, i32* %i, align 4
  %idxprom = sext i32 %31 to i64
  %32 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %boxes19 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %32, i32 0, i32 0
  %33 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes19, align 8
  %arrayidx = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %33, i64 %idxprom
  store %struct.hypre_Box_struct* %arrayidx, %struct.hypre_Box_struct** %box, align 8
  %34 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %34, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i64 0
  %35 = load i32, i32* %arrayidx20, align 4
  %36 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %grow_box, align 8
  %imin21 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %36, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [3 x i32], [3 x i32]* %imin21, i32 0, i64 0
  store i32 %35, i32* %arrayidx22, align 4
  %37 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin23 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %37, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [3 x i32], [3 x i32]* %imin23, i32 0, i64 1
  %38 = load i32, i32* %arrayidx24, align 4
  %39 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %grow_box, align 8
  %imin25 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %39, i32 0, i32 0
  %arrayidx26 = getelementptr inbounds [3 x i32], [3 x i32]* %imin25, i32 0, i64 1
  store i32 %38, i32* %arrayidx26, align 4
  %40 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin27 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %40, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [3 x i32], [3 x i32]* %imin27, i32 0, i64 2
  %41 = load i32, i32* %arrayidx28, align 4
  %42 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %grow_box, align 8
  %imin29 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %42, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [3 x i32], [3 x i32]* %imin29, i32 0, i64 2
  store i32 %41, i32* %arrayidx30, align 4
  %43 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %43, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 0
  %44 = load i32, i32* %arrayidx31, align 4
  %45 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %grow_box, align 8
  %imax32 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %45, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [3 x i32], [3 x i32]* %imax32, i32 0, i64 0
  store i32 %44, i32* %arrayidx33, align 4
  %46 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax34 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %46, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [3 x i32], [3 x i32]* %imax34, i32 0, i64 1
  %47 = load i32, i32* %arrayidx35, align 4
  %48 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %grow_box, align 8
  %imax36 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %48, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [3 x i32], [3 x i32]* %imax36, i32 0, i64 1
  store i32 %47, i32* %arrayidx37, align 4
  %49 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax38 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %49, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [3 x i32], [3 x i32]* %imax38, i32 0, i64 2
  %50 = load i32, i32* %arrayidx39, align 4
  %51 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %grow_box, align 8
  %imax40 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %51, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [3 x i32], [3 x i32]* %imax40, i32 0, i64 2
  store i32 %50, i32* %arrayidx41, align 4
  store i32 0, i32* %num_cbox_arrays, align 4
  store i32 0, i32* %d, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc, %for.body
  %52 = load i32, i32* %d, align 4
  %cmp43 = icmp slt i32 %52, 3
  br i1 %cmp43, label %for.body.44, label %for.end

for.body.44:                                      ; preds = %for.cond.42
  %53 = load i32, i32* %d, align 4
  %idxprom45 = sext i32 %53 to i64
  %54 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin46 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %54, i32 0, i32 0
  %arrayidx47 = getelementptr inbounds [3 x i32], [3 x i32]* %imin46, i32 0, i64 %idxprom45
  %55 = load i32, i32* %arrayidx47, align 4
  %56 = load i32, i32* %d, align 4
  %mul = mul nsw i32 2, %56
  %idxprom48 = sext i32 %mul to i64
  %57 = load i32*, i32** %num_ghost.addr, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %57, i64 %idxprom48
  %58 = load i32, i32* %arrayidx49, align 4
  %sub = sub nsw i32 %55, %58
  %59 = load i32, i32* %d, align 4
  %idxprom50 = sext i32 %59 to i64
  %60 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %grow_box, align 8
  %imin51 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %60, i32 0, i32 0
  %arrayidx52 = getelementptr inbounds [3 x i32], [3 x i32]* %imin51, i32 0, i64 %idxprom50
  store i32 %sub, i32* %arrayidx52, align 4
  %61 = load i32, i32* %d, align 4
  %idxprom53 = sext i32 %61 to i64
  %62 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax54 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %62, i32 0, i32 1
  %arrayidx55 = getelementptr inbounds [3 x i32], [3 x i32]* %imax54, i32 0, i64 %idxprom53
  %63 = load i32, i32* %arrayidx55, align 4
  %64 = load i32, i32* %d, align 4
  %mul56 = mul nsw i32 2, %64
  %add = add nsw i32 %mul56, 1
  %idxprom57 = sext i32 %add to i64
  %65 = load i32*, i32** %num_ghost.addr, align 8
  %arrayidx58 = getelementptr inbounds i32, i32* %65, i64 %idxprom57
  %66 = load i32, i32* %arrayidx58, align 4
  %add59 = add nsw i32 %63, %66
  %67 = load i32, i32* %d, align 4
  %idxprom60 = sext i32 %67 to i64
  %68 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %grow_box, align 8
  %imax61 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %68, i32 0, i32 1
  %arrayidx62 = getelementptr inbounds [3 x i32], [3 x i32]* %imax61, i32 0, i64 %idxprom60
  store i32 %add59, i32* %arrayidx62, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.44
  %69 = load i32, i32* %d, align 4
  %inc = add nsw i32 %69, 1
  store i32 %inc, i32* %d, align 4
  br label %for.cond.42

for.end:                                          ; preds = %for.cond.42
  store i32 0, i32* %j, align 4
  br label %for.cond.63

for.cond.63:                                      ; preds = %for.inc.141, %for.end
  %70 = load i32, i32* %j, align 4
  %71 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %neighbor_boxes, align 8
  %size64 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %71, i32 0, i32 1
  %72 = load i32, i32* %size64, align 4
  %cmp65 = icmp slt i32 %70, %72
  br i1 %cmp65, label %for.body.66, label %for.end.143

for.body.66:                                      ; preds = %for.cond.63
  %73 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %73 to i64
  %74 = load i32*, i32** %ids, align 8
  %arrayidx68 = getelementptr inbounds i32, i32* %74, i64 %idxprom67
  %75 = load i32, i32* %arrayidx68, align 4
  %76 = load i32, i32* %j, align 4
  %idxprom69 = sext i32 %76 to i64
  %77 = load i32*, i32** %neighbor_ids, align 8
  %arrayidx70 = getelementptr inbounds i32, i32* %77, i64 %idxprom69
  %78 = load i32, i32* %arrayidx70, align 4
  %cmp71 = icmp ne i32 %75, %78
  br i1 %cmp71, label %if.then, label %if.end.140

if.then:                                          ; preds = %for.body.66
  %79 = load i32, i32* %j, align 4
  %idxprom72 = sext i32 %79 to i64
  %80 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %neighbor_boxes, align 8
  %boxes73 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %80, i32 0, i32 0
  %81 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes73, align 8
  %arrayidx74 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %81, i64 %idxprom72
  store %struct.hypre_Box_struct* %arrayidx74, %struct.hypre_Box_struct** %neighbor_box, align 8
  %82 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %grow_box, align 8
  %83 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %neighbor_box, align 8
  %84 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %call75 = call i32 @hypre_IntersectBoxes(%struct.hypre_Box_struct* %82, %struct.hypre_Box_struct* %83, %struct.hypre_Box_struct* %84)
  %85 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %imax76 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %85, i32 0, i32 1
  %arrayidx77 = getelementptr inbounds [3 x i32], [3 x i32]* %imax76, i32 0, i64 0
  %86 = load i32, i32* %arrayidx77, align 4
  %87 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %imin78 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %87, i32 0, i32 0
  %arrayidx79 = getelementptr inbounds [3 x i32], [3 x i32]* %imin78, i32 0, i64 0
  %88 = load i32, i32* %arrayidx79, align 4
  %sub80 = sub nsw i32 %86, %88
  %add81 = add nsw i32 %sub80, 1
  %cmp82 = icmp slt i32 0, %add81
  br i1 %cmp82, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %89 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %imax83 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %89, i32 0, i32 1
  %arrayidx84 = getelementptr inbounds [3 x i32], [3 x i32]* %imax83, i32 0, i64 0
  %90 = load i32, i32* %arrayidx84, align 4
  %91 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %imin85 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %91, i32 0, i32 0
  %arrayidx86 = getelementptr inbounds [3 x i32], [3 x i32]* %imin85, i32 0, i64 0
  %92 = load i32, i32* %arrayidx86, align 4
  %sub87 = sub nsw i32 %90, %92
  %add88 = add nsw i32 %sub87, 1
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add88, %cond.true ], [ 0, %cond.false ]
  %93 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %imax89 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %93, i32 0, i32 1
  %arrayidx90 = getelementptr inbounds [3 x i32], [3 x i32]* %imax89, i32 0, i64 1
  %94 = load i32, i32* %arrayidx90, align 4
  %95 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %imin91 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %95, i32 0, i32 0
  %arrayidx92 = getelementptr inbounds [3 x i32], [3 x i32]* %imin91, i32 0, i64 1
  %96 = load i32, i32* %arrayidx92, align 4
  %sub93 = sub nsw i32 %94, %96
  %add94 = add nsw i32 %sub93, 1
  %cmp95 = icmp slt i32 0, %add94
  br i1 %cmp95, label %cond.true.96, label %cond.false.103

cond.true.96:                                     ; preds = %cond.end
  %97 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %imax97 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %97, i32 0, i32 1
  %arrayidx98 = getelementptr inbounds [3 x i32], [3 x i32]* %imax97, i32 0, i64 1
  %98 = load i32, i32* %arrayidx98, align 4
  %99 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %imin99 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %99, i32 0, i32 0
  %arrayidx100 = getelementptr inbounds [3 x i32], [3 x i32]* %imin99, i32 0, i64 1
  %100 = load i32, i32* %arrayidx100, align 4
  %sub101 = sub nsw i32 %98, %100
  %add102 = add nsw i32 %sub101, 1
  br label %cond.end.104

cond.false.103:                                   ; preds = %cond.end
  br label %cond.end.104

cond.end.104:                                     ; preds = %cond.false.103, %cond.true.96
  %cond105 = phi i32 [ %add102, %cond.true.96 ], [ 0, %cond.false.103 ]
  %mul106 = mul nsw i32 %cond, %cond105
  %101 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %imax107 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %101, i32 0, i32 1
  %arrayidx108 = getelementptr inbounds [3 x i32], [3 x i32]* %imax107, i32 0, i64 2
  %102 = load i32, i32* %arrayidx108, align 4
  %103 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %imin109 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %103, i32 0, i32 0
  %arrayidx110 = getelementptr inbounds [3 x i32], [3 x i32]* %imin109, i32 0, i64 2
  %104 = load i32, i32* %arrayidx110, align 4
  %sub111 = sub nsw i32 %102, %104
  %add112 = add nsw i32 %sub111, 1
  %cmp113 = icmp slt i32 0, %add112
  br i1 %cmp113, label %cond.true.114, label %cond.false.121

cond.true.114:                                    ; preds = %cond.end.104
  %105 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %imax115 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %105, i32 0, i32 1
  %arrayidx116 = getelementptr inbounds [3 x i32], [3 x i32]* %imax115, i32 0, i64 2
  %106 = load i32, i32* %arrayidx116, align 4
  %107 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %imin117 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %107, i32 0, i32 0
  %arrayidx118 = getelementptr inbounds [3 x i32], [3 x i32]* %imin117, i32 0, i64 2
  %108 = load i32, i32* %arrayidx118, align 4
  %sub119 = sub nsw i32 %106, %108
  %add120 = add nsw i32 %sub119, 1
  br label %cond.end.122

cond.false.121:                                   ; preds = %cond.end.104
  br label %cond.end.122

cond.end.122:                                     ; preds = %cond.false.121, %cond.true.114
  %cond123 = phi i32 [ %add120, %cond.true.114 ], [ 0, %cond.false.121 ]
  %mul124 = mul nsw i32 %mul106, %cond123
  %tobool = icmp ne i32 %mul124, 0
  br i1 %tobool, label %if.then.125, label %if.end.139

if.then.125:                                      ; preds = %cond.end.122
  %109 = load i32, i32* %j, align 4
  %idxprom126 = sext i32 %109 to i64
  %110 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %arrayidx127 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %110, i64 %idxprom126
  %111 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx127, align 8
  %cmp128 = icmp eq %struct.hypre_BoxArray_struct* %111, null
  br i1 %cmp128, label %if.then.129, label %if.end

if.then.129:                                      ; preds = %if.then.125
  %call130 = call %struct.hypre_BoxArray_struct* @hypre_BoxArrayCreate(i32 0)
  %112 = load i32, i32* %j, align 4
  %idxprom131 = sext i32 %112 to i64
  %113 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %arrayidx132 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %113, i64 %idxprom131
  store %struct.hypre_BoxArray_struct* %call130, %struct.hypre_BoxArray_struct** %arrayidx132, align 8
  %114 = load i32, i32* %j, align 4
  %115 = load i32, i32* %num_cbox_arrays, align 4
  %idxprom133 = sext i32 %115 to i64
  %116 = load i32*, i32** %cbox_arrays_i, align 8
  %arrayidx134 = getelementptr inbounds i32, i32* %116, i64 %idxprom133
  store i32 %114, i32* %arrayidx134, align 4
  %117 = load i32, i32* %num_cbox_arrays, align 4
  %inc135 = add nsw i32 %117, 1
  store i32 %inc135, i32* %num_cbox_arrays, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.129, %if.then.125
  %118 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %119 = load i32, i32* %j, align 4
  %idxprom136 = sext i32 %119 to i64
  %120 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %arrayidx137 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %120, i64 %idxprom136
  %121 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx137, align 8
  %call138 = call i32 @hypre_AppendBox(%struct.hypre_Box_struct* %118, %struct.hypre_BoxArray_struct* %121)
  br label %if.end.139

if.end.139:                                       ; preds = %if.end, %cond.end.122
  br label %if.end.140

if.end.140:                                       ; preds = %if.end.139, %for.body.66
  br label %for.inc.141

for.inc.141:                                      ; preds = %if.end.140
  %122 = load i32, i32* %j, align 4
  %inc142 = add nsw i32 %122, 1
  store i32 %inc142, i32* %j, align 4
  br label %for.cond.63

for.end.143:                                      ; preds = %for.cond.63
  store i32 0, i32* %recv_box_array_size, align 4
  store i32 0, i32* %m, align 4
  br label %for.cond.144

for.cond.144:                                     ; preds = %for.inc.156, %for.end.143
  %123 = load i32, i32* %m, align 4
  %124 = load i32, i32* %num_cbox_arrays, align 4
  %cmp145 = icmp slt i32 %123, %124
  br i1 %cmp145, label %for.body.146, label %for.end.158

for.body.146:                                     ; preds = %for.cond.144
  %125 = load i32, i32* %m, align 4
  %idxprom147 = sext i32 %125 to i64
  %126 = load i32*, i32** %cbox_arrays_i, align 8
  %arrayidx148 = getelementptr inbounds i32, i32* %126, i64 %idxprom147
  %127 = load i32, i32* %arrayidx148, align 4
  store i32 %127, i32* %j, align 4
  %128 = load i32, i32* %j, align 4
  %idxprom149 = sext i32 %128 to i64
  %129 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %arrayidx150 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %129, i64 %idxprom149
  %130 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx150, align 8
  %call151 = call i32 @hypre_UnionBoxes(%struct.hypre_BoxArray_struct* %130)
  %131 = load i32, i32* %j, align 4
  %idxprom152 = sext i32 %131 to i64
  %132 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %arrayidx153 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %132, i64 %idxprom152
  %133 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx153, align 8
  %size154 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %133, i32 0, i32 1
  %134 = load i32, i32* %size154, align 4
  %135 = load i32, i32* %recv_box_array_size, align 4
  %add155 = add nsw i32 %135, %134
  store i32 %add155, i32* %recv_box_array_size, align 4
  br label %for.inc.156

for.inc.156:                                      ; preds = %for.body.146
  %136 = load i32, i32* %m, align 4
  %inc157 = add nsw i32 %136, 1
  store i32 %inc157, i32* %m, align 4
  br label %for.cond.144

for.end.158:                                      ; preds = %for.cond.144
  %137 = load i32, i32* %i, align 4
  %idxprom159 = sext i32 %137 to i64
  %138 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %recv_boxes, align 8
  %box_arrays = getelementptr inbounds %struct.hypre_BoxArrayArray_struct, %struct.hypre_BoxArrayArray_struct* %138, i32 0, i32 0
  %139 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %box_arrays, align 8
  %arrayidx160 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %139, i64 %idxprom159
  %140 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx160, align 8
  store %struct.hypre_BoxArray_struct* %140, %struct.hypre_BoxArray_struct** %recv_box_array, align 8
  %141 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %recv_box_array, align 8
  %142 = load i32, i32* %recv_box_array_size, align 4
  %call161 = call i32 @hypre_BoxArraySetSize(%struct.hypre_BoxArray_struct* %141, i32 %142)
  %143 = load i32, i32* %recv_box_array_size, align 4
  %call162 = call i8* @hypre_CAlloc(i32 %143, i32 4)
  %144 = bitcast i8* %call162 to i32*
  %145 = load i32, i32* %i, align 4
  %idxprom163 = sext i32 %145 to i64
  %146 = load i32**, i32*** %recv_procs, align 8
  %arrayidx164 = getelementptr inbounds i32*, i32** %146, i64 %idxprom163
  store i32* %144, i32** %arrayidx164, align 8
  store i32 0, i32* %n, align 4
  store i32 0, i32* %m, align 4
  br label %for.cond.165

for.cond.165:                                     ; preds = %for.inc.263, %for.end.158
  %147 = load i32, i32* %m, align 4
  %148 = load i32, i32* %num_cbox_arrays, align 4
  %cmp166 = icmp slt i32 %147, %148
  br i1 %cmp166, label %for.body.167, label %for.end.265

for.body.167:                                     ; preds = %for.cond.165
  %149 = load i32, i32* %m, align 4
  %idxprom168 = sext i32 %149 to i64
  %150 = load i32*, i32** %cbox_arrays_i, align 8
  %arrayidx169 = getelementptr inbounds i32, i32* %150, i64 %idxprom168
  %151 = load i32, i32* %arrayidx169, align 4
  store i32 %151, i32* %j, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.170

for.cond.170:                                     ; preds = %for.inc.255, %for.body.167
  %152 = load i32, i32* %k, align 4
  %153 = load i32, i32* %j, align 4
  %idxprom171 = sext i32 %153 to i64
  %154 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %arrayidx172 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %154, i64 %idxprom171
  %155 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx172, align 8
  %size173 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %155, i32 0, i32 1
  %156 = load i32, i32* %size173, align 4
  %cmp174 = icmp slt i32 %152, %156
  br i1 %cmp174, label %for.body.175, label %for.end.257

for.body.175:                                     ; preds = %for.cond.170
  %157 = load i32, i32* %j, align 4
  %idxprom176 = sext i32 %157 to i64
  %158 = load i32*, i32** %neighbor_procs, align 8
  %arrayidx177 = getelementptr inbounds i32, i32* %158, i64 %idxprom176
  %159 = load i32, i32* %arrayidx177, align 4
  %160 = load i32, i32* %n, align 4
  %idxprom178 = sext i32 %160 to i64
  %161 = load i32, i32* %i, align 4
  %idxprom179 = sext i32 %161 to i64
  %162 = load i32**, i32*** %recv_procs, align 8
  %arrayidx180 = getelementptr inbounds i32*, i32** %162, i64 %idxprom179
  %163 = load i32*, i32** %arrayidx180, align 8
  %arrayidx181 = getelementptr inbounds i32, i32* %163, i64 %idxprom178
  store i32 %159, i32* %arrayidx181, align 4
  %164 = load i32, i32* %k, align 4
  %idxprom182 = sext i32 %164 to i64
  %165 = load i32, i32* %j, align 4
  %idxprom183 = sext i32 %165 to i64
  %166 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %arrayidx184 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %166, i64 %idxprom183
  %167 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx184, align 8
  %boxes185 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %167, i32 0, i32 0
  %168 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes185, align 8
  %arrayidx186 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %168, i64 %idxprom182
  %imin187 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx186, i32 0, i32 0
  %arrayidx188 = getelementptr inbounds [3 x i32], [3 x i32]* %imin187, i32 0, i64 0
  %169 = load i32, i32* %arrayidx188, align 4
  %170 = load i32, i32* %n, align 4
  %idxprom189 = sext i32 %170 to i64
  %171 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %recv_box_array, align 8
  %boxes190 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %171, i32 0, i32 0
  %172 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes190, align 8
  %arrayidx191 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %172, i64 %idxprom189
  %imin192 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx191, i32 0, i32 0
  %arrayidx193 = getelementptr inbounds [3 x i32], [3 x i32]* %imin192, i32 0, i64 0
  store i32 %169, i32* %arrayidx193, align 4
  %173 = load i32, i32* %k, align 4
  %idxprom194 = sext i32 %173 to i64
  %174 = load i32, i32* %j, align 4
  %idxprom195 = sext i32 %174 to i64
  %175 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %arrayidx196 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %175, i64 %idxprom195
  %176 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx196, align 8
  %boxes197 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %176, i32 0, i32 0
  %177 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes197, align 8
  %arrayidx198 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %177, i64 %idxprom194
  %imin199 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx198, i32 0, i32 0
  %arrayidx200 = getelementptr inbounds [3 x i32], [3 x i32]* %imin199, i32 0, i64 1
  %178 = load i32, i32* %arrayidx200, align 4
  %179 = load i32, i32* %n, align 4
  %idxprom201 = sext i32 %179 to i64
  %180 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %recv_box_array, align 8
  %boxes202 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %180, i32 0, i32 0
  %181 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes202, align 8
  %arrayidx203 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %181, i64 %idxprom201
  %imin204 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx203, i32 0, i32 0
  %arrayidx205 = getelementptr inbounds [3 x i32], [3 x i32]* %imin204, i32 0, i64 1
  store i32 %178, i32* %arrayidx205, align 4
  %182 = load i32, i32* %k, align 4
  %idxprom206 = sext i32 %182 to i64
  %183 = load i32, i32* %j, align 4
  %idxprom207 = sext i32 %183 to i64
  %184 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %arrayidx208 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %184, i64 %idxprom207
  %185 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx208, align 8
  %boxes209 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %185, i32 0, i32 0
  %186 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes209, align 8
  %arrayidx210 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %186, i64 %idxprom206
  %imin211 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx210, i32 0, i32 0
  %arrayidx212 = getelementptr inbounds [3 x i32], [3 x i32]* %imin211, i32 0, i64 2
  %187 = load i32, i32* %arrayidx212, align 4
  %188 = load i32, i32* %n, align 4
  %idxprom213 = sext i32 %188 to i64
  %189 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %recv_box_array, align 8
  %boxes214 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %189, i32 0, i32 0
  %190 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes214, align 8
  %arrayidx215 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %190, i64 %idxprom213
  %imin216 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx215, i32 0, i32 0
  %arrayidx217 = getelementptr inbounds [3 x i32], [3 x i32]* %imin216, i32 0, i64 2
  store i32 %187, i32* %arrayidx217, align 4
  %191 = load i32, i32* %k, align 4
  %idxprom218 = sext i32 %191 to i64
  %192 = load i32, i32* %j, align 4
  %idxprom219 = sext i32 %192 to i64
  %193 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %arrayidx220 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %193, i64 %idxprom219
  %194 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx220, align 8
  %boxes221 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %194, i32 0, i32 0
  %195 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes221, align 8
  %arrayidx222 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %195, i64 %idxprom218
  %imax223 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx222, i32 0, i32 1
  %arrayidx224 = getelementptr inbounds [3 x i32], [3 x i32]* %imax223, i32 0, i64 0
  %196 = load i32, i32* %arrayidx224, align 4
  %197 = load i32, i32* %n, align 4
  %idxprom225 = sext i32 %197 to i64
  %198 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %recv_box_array, align 8
  %boxes226 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %198, i32 0, i32 0
  %199 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes226, align 8
  %arrayidx227 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %199, i64 %idxprom225
  %imax228 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx227, i32 0, i32 1
  %arrayidx229 = getelementptr inbounds [3 x i32], [3 x i32]* %imax228, i32 0, i64 0
  store i32 %196, i32* %arrayidx229, align 4
  %200 = load i32, i32* %k, align 4
  %idxprom230 = sext i32 %200 to i64
  %201 = load i32, i32* %j, align 4
  %idxprom231 = sext i32 %201 to i64
  %202 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %arrayidx232 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %202, i64 %idxprom231
  %203 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx232, align 8
  %boxes233 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %203, i32 0, i32 0
  %204 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes233, align 8
  %arrayidx234 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %204, i64 %idxprom230
  %imax235 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx234, i32 0, i32 1
  %arrayidx236 = getelementptr inbounds [3 x i32], [3 x i32]* %imax235, i32 0, i64 1
  %205 = load i32, i32* %arrayidx236, align 4
  %206 = load i32, i32* %n, align 4
  %idxprom237 = sext i32 %206 to i64
  %207 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %recv_box_array, align 8
  %boxes238 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %207, i32 0, i32 0
  %208 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes238, align 8
  %arrayidx239 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %208, i64 %idxprom237
  %imax240 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx239, i32 0, i32 1
  %arrayidx241 = getelementptr inbounds [3 x i32], [3 x i32]* %imax240, i32 0, i64 1
  store i32 %205, i32* %arrayidx241, align 4
  %209 = load i32, i32* %k, align 4
  %idxprom242 = sext i32 %209 to i64
  %210 = load i32, i32* %j, align 4
  %idxprom243 = sext i32 %210 to i64
  %211 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %arrayidx244 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %211, i64 %idxprom243
  %212 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx244, align 8
  %boxes245 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %212, i32 0, i32 0
  %213 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes245, align 8
  %arrayidx246 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %213, i64 %idxprom242
  %imax247 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx246, i32 0, i32 1
  %arrayidx248 = getelementptr inbounds [3 x i32], [3 x i32]* %imax247, i32 0, i64 2
  %214 = load i32, i32* %arrayidx248, align 4
  %215 = load i32, i32* %n, align 4
  %idxprom249 = sext i32 %215 to i64
  %216 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %recv_box_array, align 8
  %boxes250 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %216, i32 0, i32 0
  %217 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes250, align 8
  %arrayidx251 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %217, i64 %idxprom249
  %imax252 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx251, i32 0, i32 1
  %arrayidx253 = getelementptr inbounds [3 x i32], [3 x i32]* %imax252, i32 0, i64 2
  store i32 %214, i32* %arrayidx253, align 4
  %218 = load i32, i32* %n, align 4
  %inc254 = add nsw i32 %218, 1
  store i32 %inc254, i32* %n, align 4
  br label %for.inc.255

for.inc.255:                                      ; preds = %for.body.175
  %219 = load i32, i32* %k, align 4
  %inc256 = add nsw i32 %219, 1
  store i32 %inc256, i32* %k, align 4
  br label %for.cond.170

for.end.257:                                      ; preds = %for.cond.170
  %220 = load i32, i32* %j, align 4
  %idxprom258 = sext i32 %220 to i64
  %221 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %arrayidx259 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %221, i64 %idxprom258
  %222 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx259, align 8
  %call260 = call i32 @hypre_BoxArrayDestroy(%struct.hypre_BoxArray_struct* %222)
  %223 = load i32, i32* %j, align 4
  %idxprom261 = sext i32 %223 to i64
  %224 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %arrayidx262 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %224, i64 %idxprom261
  store %struct.hypre_BoxArray_struct* null, %struct.hypre_BoxArray_struct** %arrayidx262, align 8
  br label %for.inc.263

for.inc.263:                                      ; preds = %for.end.257
  %225 = load i32, i32* %m, align 4
  %inc264 = add nsw i32 %225, 1
  store i32 %inc264, i32* %m, align 4
  br label %for.cond.165

for.end.265:                                      ; preds = %for.cond.165
  store i32 0, i32* %num_cbox_arrays, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.266

for.cond.266:                                     ; preds = %for.inc.378, %for.end.265
  %226 = load i32, i32* %j, align 4
  %227 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %neighbor_boxes, align 8
  %size267 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %227, i32 0, i32 1
  %228 = load i32, i32* %size267, align 4
  %cmp268 = icmp slt i32 %226, %228
  br i1 %cmp268, label %for.body.269, label %for.end.380

for.body.269:                                     ; preds = %for.cond.266
  %229 = load i32, i32* %i, align 4
  %idxprom270 = sext i32 %229 to i64
  %230 = load i32*, i32** %ids, align 8
  %arrayidx271 = getelementptr inbounds i32, i32* %230, i64 %idxprom270
  %231 = load i32, i32* %arrayidx271, align 4
  %232 = load i32, i32* %j, align 4
  %idxprom272 = sext i32 %232 to i64
  %233 = load i32*, i32** %neighbor_ids, align 8
  %arrayidx273 = getelementptr inbounds i32, i32* %233, i64 %idxprom272
  %234 = load i32, i32* %arrayidx273, align 4
  %cmp274 = icmp ne i32 %231, %234
  br i1 %cmp274, label %if.then.275, label %if.end.377

if.then.275:                                      ; preds = %for.body.269
  %235 = load i32, i32* %j, align 4
  %idxprom276 = sext i32 %235 to i64
  %236 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %neighbor_boxes, align 8
  %boxes277 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %236, i32 0, i32 0
  %237 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes277, align 8
  %arrayidx278 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %237, i64 %idxprom276
  store %struct.hypre_Box_struct* %arrayidx278, %struct.hypre_Box_struct** %neighbor_box, align 8
  store i32 0, i32* %d, align 4
  br label %for.cond.279

for.cond.279:                                     ; preds = %for.inc.303, %if.then.275
  %238 = load i32, i32* %d, align 4
  %cmp280 = icmp slt i32 %238, 3
  br i1 %cmp280, label %for.body.281, label %for.end.305

for.body.281:                                     ; preds = %for.cond.279
  %239 = load i32, i32* %d, align 4
  %idxprom282 = sext i32 %239 to i64
  %240 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %neighbor_box, align 8
  %imin283 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %240, i32 0, i32 0
  %arrayidx284 = getelementptr inbounds [3 x i32], [3 x i32]* %imin283, i32 0, i64 %idxprom282
  %241 = load i32, i32* %arrayidx284, align 4
  %242 = load i32, i32* %d, align 4
  %mul285 = mul nsw i32 2, %242
  %idxprom286 = sext i32 %mul285 to i64
  %243 = load i32*, i32** %num_ghost.addr, align 8
  %arrayidx287 = getelementptr inbounds i32, i32* %243, i64 %idxprom286
  %244 = load i32, i32* %arrayidx287, align 4
  %sub288 = sub nsw i32 %241, %244
  %245 = load i32, i32* %d, align 4
  %idxprom289 = sext i32 %245 to i64
  %246 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %grow_box, align 8
  %imin290 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %246, i32 0, i32 0
  %arrayidx291 = getelementptr inbounds [3 x i32], [3 x i32]* %imin290, i32 0, i64 %idxprom289
  store i32 %sub288, i32* %arrayidx291, align 4
  %247 = load i32, i32* %d, align 4
  %idxprom292 = sext i32 %247 to i64
  %248 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %neighbor_box, align 8
  %imax293 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %248, i32 0, i32 1
  %arrayidx294 = getelementptr inbounds [3 x i32], [3 x i32]* %imax293, i32 0, i64 %idxprom292
  %249 = load i32, i32* %arrayidx294, align 4
  %250 = load i32, i32* %d, align 4
  %mul295 = mul nsw i32 2, %250
  %add296 = add nsw i32 %mul295, 1
  %idxprom297 = sext i32 %add296 to i64
  %251 = load i32*, i32** %num_ghost.addr, align 8
  %arrayidx298 = getelementptr inbounds i32, i32* %251, i64 %idxprom297
  %252 = load i32, i32* %arrayidx298, align 4
  %add299 = add nsw i32 %249, %252
  %253 = load i32, i32* %d, align 4
  %idxprom300 = sext i32 %253 to i64
  %254 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %grow_box, align 8
  %imax301 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %254, i32 0, i32 1
  %arrayidx302 = getelementptr inbounds [3 x i32], [3 x i32]* %imax301, i32 0, i64 %idxprom300
  store i32 %add299, i32* %arrayidx302, align 4
  br label %for.inc.303

for.inc.303:                                      ; preds = %for.body.281
  %255 = load i32, i32* %d, align 4
  %inc304 = add nsw i32 %255, 1
  store i32 %inc304, i32* %d, align 4
  br label %for.cond.279

for.end.305:                                      ; preds = %for.cond.279
  %256 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %257 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %grow_box, align 8
  %258 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %call306 = call i32 @hypre_IntersectBoxes(%struct.hypre_Box_struct* %256, %struct.hypre_Box_struct* %257, %struct.hypre_Box_struct* %258)
  %259 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %imax307 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %259, i32 0, i32 1
  %arrayidx308 = getelementptr inbounds [3 x i32], [3 x i32]* %imax307, i32 0, i64 0
  %260 = load i32, i32* %arrayidx308, align 4
  %261 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %imin309 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %261, i32 0, i32 0
  %arrayidx310 = getelementptr inbounds [3 x i32], [3 x i32]* %imin309, i32 0, i64 0
  %262 = load i32, i32* %arrayidx310, align 4
  %sub311 = sub nsw i32 %260, %262
  %add312 = add nsw i32 %sub311, 1
  %cmp313 = icmp slt i32 0, %add312
  br i1 %cmp313, label %cond.true.314, label %cond.false.321

cond.true.314:                                    ; preds = %for.end.305
  %263 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %imax315 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %263, i32 0, i32 1
  %arrayidx316 = getelementptr inbounds [3 x i32], [3 x i32]* %imax315, i32 0, i64 0
  %264 = load i32, i32* %arrayidx316, align 4
  %265 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %imin317 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %265, i32 0, i32 0
  %arrayidx318 = getelementptr inbounds [3 x i32], [3 x i32]* %imin317, i32 0, i64 0
  %266 = load i32, i32* %arrayidx318, align 4
  %sub319 = sub nsw i32 %264, %266
  %add320 = add nsw i32 %sub319, 1
  br label %cond.end.322

cond.false.321:                                   ; preds = %for.end.305
  br label %cond.end.322

cond.end.322:                                     ; preds = %cond.false.321, %cond.true.314
  %cond323 = phi i32 [ %add320, %cond.true.314 ], [ 0, %cond.false.321 ]
  %267 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %imax324 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %267, i32 0, i32 1
  %arrayidx325 = getelementptr inbounds [3 x i32], [3 x i32]* %imax324, i32 0, i64 1
  %268 = load i32, i32* %arrayidx325, align 4
  %269 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %imin326 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %269, i32 0, i32 0
  %arrayidx327 = getelementptr inbounds [3 x i32], [3 x i32]* %imin326, i32 0, i64 1
  %270 = load i32, i32* %arrayidx327, align 4
  %sub328 = sub nsw i32 %268, %270
  %add329 = add nsw i32 %sub328, 1
  %cmp330 = icmp slt i32 0, %add329
  br i1 %cmp330, label %cond.true.331, label %cond.false.338

cond.true.331:                                    ; preds = %cond.end.322
  %271 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %imax332 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %271, i32 0, i32 1
  %arrayidx333 = getelementptr inbounds [3 x i32], [3 x i32]* %imax332, i32 0, i64 1
  %272 = load i32, i32* %arrayidx333, align 4
  %273 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %imin334 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %273, i32 0, i32 0
  %arrayidx335 = getelementptr inbounds [3 x i32], [3 x i32]* %imin334, i32 0, i64 1
  %274 = load i32, i32* %arrayidx335, align 4
  %sub336 = sub nsw i32 %272, %274
  %add337 = add nsw i32 %sub336, 1
  br label %cond.end.339

cond.false.338:                                   ; preds = %cond.end.322
  br label %cond.end.339

cond.end.339:                                     ; preds = %cond.false.338, %cond.true.331
  %cond340 = phi i32 [ %add337, %cond.true.331 ], [ 0, %cond.false.338 ]
  %mul341 = mul nsw i32 %cond323, %cond340
  %275 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %imax342 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %275, i32 0, i32 1
  %arrayidx343 = getelementptr inbounds [3 x i32], [3 x i32]* %imax342, i32 0, i64 2
  %276 = load i32, i32* %arrayidx343, align 4
  %277 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %imin344 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %277, i32 0, i32 0
  %arrayidx345 = getelementptr inbounds [3 x i32], [3 x i32]* %imin344, i32 0, i64 2
  %278 = load i32, i32* %arrayidx345, align 4
  %sub346 = sub nsw i32 %276, %278
  %add347 = add nsw i32 %sub346, 1
  %cmp348 = icmp slt i32 0, %add347
  br i1 %cmp348, label %cond.true.349, label %cond.false.356

cond.true.349:                                    ; preds = %cond.end.339
  %279 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %imax350 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %279, i32 0, i32 1
  %arrayidx351 = getelementptr inbounds [3 x i32], [3 x i32]* %imax350, i32 0, i64 2
  %280 = load i32, i32* %arrayidx351, align 4
  %281 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %imin352 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %281, i32 0, i32 0
  %arrayidx353 = getelementptr inbounds [3 x i32], [3 x i32]* %imin352, i32 0, i64 2
  %282 = load i32, i32* %arrayidx353, align 4
  %sub354 = sub nsw i32 %280, %282
  %add355 = add nsw i32 %sub354, 1
  br label %cond.end.357

cond.false.356:                                   ; preds = %cond.end.339
  br label %cond.end.357

cond.end.357:                                     ; preds = %cond.false.356, %cond.true.349
  %cond358 = phi i32 [ %add355, %cond.true.349 ], [ 0, %cond.false.356 ]
  %mul359 = mul nsw i32 %mul341, %cond358
  %tobool360 = icmp ne i32 %mul359, 0
  br i1 %tobool360, label %if.then.361, label %if.end.376

if.then.361:                                      ; preds = %cond.end.357
  %283 = load i32, i32* %j, align 4
  %idxprom362 = sext i32 %283 to i64
  %284 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %arrayidx363 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %284, i64 %idxprom362
  %285 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx363, align 8
  %cmp364 = icmp eq %struct.hypre_BoxArray_struct* %285, null
  br i1 %cmp364, label %if.then.365, label %if.end.372

if.then.365:                                      ; preds = %if.then.361
  %call366 = call %struct.hypre_BoxArray_struct* @hypre_BoxArrayCreate(i32 0)
  %286 = load i32, i32* %j, align 4
  %idxprom367 = sext i32 %286 to i64
  %287 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %arrayidx368 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %287, i64 %idxprom367
  store %struct.hypre_BoxArray_struct* %call366, %struct.hypre_BoxArray_struct** %arrayidx368, align 8
  %288 = load i32, i32* %j, align 4
  %289 = load i32, i32* %num_cbox_arrays, align 4
  %idxprom369 = sext i32 %289 to i64
  %290 = load i32*, i32** %cbox_arrays_i, align 8
  %arrayidx370 = getelementptr inbounds i32, i32* %290, i64 %idxprom369
  store i32 %288, i32* %arrayidx370, align 4
  %291 = load i32, i32* %num_cbox_arrays, align 4
  %inc371 = add nsw i32 %291, 1
  store i32 %inc371, i32* %num_cbox_arrays, align 4
  br label %if.end.372

if.end.372:                                       ; preds = %if.then.365, %if.then.361
  %292 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %293 = load i32, i32* %j, align 4
  %idxprom373 = sext i32 %293 to i64
  %294 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %arrayidx374 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %294, i64 %idxprom373
  %295 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx374, align 8
  %call375 = call i32 @hypre_AppendBox(%struct.hypre_Box_struct* %292, %struct.hypre_BoxArray_struct* %295)
  br label %if.end.376

if.end.376:                                       ; preds = %if.end.372, %cond.end.357
  br label %if.end.377

if.end.377:                                       ; preds = %if.end.376, %for.body.269
  br label %for.inc.378

for.inc.378:                                      ; preds = %if.end.377
  %296 = load i32, i32* %j, align 4
  %inc379 = add nsw i32 %296, 1
  store i32 %inc379, i32* %j, align 4
  br label %for.cond.266

for.end.380:                                      ; preds = %for.cond.266
  store i32 0, i32* %send_box_array_size, align 4
  store i32 0, i32* %m, align 4
  br label %for.cond.381

for.cond.381:                                     ; preds = %for.inc.393, %for.end.380
  %297 = load i32, i32* %m, align 4
  %298 = load i32, i32* %num_cbox_arrays, align 4
  %cmp382 = icmp slt i32 %297, %298
  br i1 %cmp382, label %for.body.383, label %for.end.395

for.body.383:                                     ; preds = %for.cond.381
  %299 = load i32, i32* %m, align 4
  %idxprom384 = sext i32 %299 to i64
  %300 = load i32*, i32** %cbox_arrays_i, align 8
  %arrayidx385 = getelementptr inbounds i32, i32* %300, i64 %idxprom384
  %301 = load i32, i32* %arrayidx385, align 4
  store i32 %301, i32* %j, align 4
  %302 = load i32, i32* %j, align 4
  %idxprom386 = sext i32 %302 to i64
  %303 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %arrayidx387 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %303, i64 %idxprom386
  %304 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx387, align 8
  %call388 = call i32 @hypre_UnionBoxes(%struct.hypre_BoxArray_struct* %304)
  %305 = load i32, i32* %j, align 4
  %idxprom389 = sext i32 %305 to i64
  %306 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %arrayidx390 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %306, i64 %idxprom389
  %307 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx390, align 8
  %size391 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %307, i32 0, i32 1
  %308 = load i32, i32* %size391, align 4
  %309 = load i32, i32* %send_box_array_size, align 4
  %add392 = add nsw i32 %309, %308
  store i32 %add392, i32* %send_box_array_size, align 4
  br label %for.inc.393

for.inc.393:                                      ; preds = %for.body.383
  %310 = load i32, i32* %m, align 4
  %inc394 = add nsw i32 %310, 1
  store i32 %inc394, i32* %m, align 4
  br label %for.cond.381

for.end.395:                                      ; preds = %for.cond.381
  %311 = load i32, i32* %i, align 4
  %idxprom396 = sext i32 %311 to i64
  %312 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %send_boxes, align 8
  %box_arrays397 = getelementptr inbounds %struct.hypre_BoxArrayArray_struct, %struct.hypre_BoxArrayArray_struct* %312, i32 0, i32 0
  %313 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %box_arrays397, align 8
  %arrayidx398 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %313, i64 %idxprom396
  %314 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx398, align 8
  store %struct.hypre_BoxArray_struct* %314, %struct.hypre_BoxArray_struct** %send_box_array, align 8
  %315 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %send_box_array, align 8
  %316 = load i32, i32* %send_box_array_size, align 4
  %call399 = call i32 @hypre_BoxArraySetSize(%struct.hypre_BoxArray_struct* %315, i32 %316)
  %317 = load i32, i32* %send_box_array_size, align 4
  %call400 = call i8* @hypre_CAlloc(i32 %317, i32 4)
  %318 = bitcast i8* %call400 to i32*
  %319 = load i32, i32* %i, align 4
  %idxprom401 = sext i32 %319 to i64
  %320 = load i32**, i32*** %send_procs, align 8
  %arrayidx402 = getelementptr inbounds i32*, i32** %320, i64 %idxprom401
  store i32* %318, i32** %arrayidx402, align 8
  store i32 0, i32* %n, align 4
  store i32 0, i32* %m, align 4
  br label %for.cond.403

for.cond.403:                                     ; preds = %for.inc.501, %for.end.395
  %321 = load i32, i32* %m, align 4
  %322 = load i32, i32* %num_cbox_arrays, align 4
  %cmp404 = icmp slt i32 %321, %322
  br i1 %cmp404, label %for.body.405, label %for.end.503

for.body.405:                                     ; preds = %for.cond.403
  %323 = load i32, i32* %m, align 4
  %idxprom406 = sext i32 %323 to i64
  %324 = load i32*, i32** %cbox_arrays_i, align 8
  %arrayidx407 = getelementptr inbounds i32, i32* %324, i64 %idxprom406
  %325 = load i32, i32* %arrayidx407, align 4
  store i32 %325, i32* %j, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.408

for.cond.408:                                     ; preds = %for.inc.493, %for.body.405
  %326 = load i32, i32* %k, align 4
  %327 = load i32, i32* %j, align 4
  %idxprom409 = sext i32 %327 to i64
  %328 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %arrayidx410 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %328, i64 %idxprom409
  %329 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx410, align 8
  %size411 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %329, i32 0, i32 1
  %330 = load i32, i32* %size411, align 4
  %cmp412 = icmp slt i32 %326, %330
  br i1 %cmp412, label %for.body.413, label %for.end.495

for.body.413:                                     ; preds = %for.cond.408
  %331 = load i32, i32* %j, align 4
  %idxprom414 = sext i32 %331 to i64
  %332 = load i32*, i32** %neighbor_procs, align 8
  %arrayidx415 = getelementptr inbounds i32, i32* %332, i64 %idxprom414
  %333 = load i32, i32* %arrayidx415, align 4
  %334 = load i32, i32* %n, align 4
  %idxprom416 = sext i32 %334 to i64
  %335 = load i32, i32* %i, align 4
  %idxprom417 = sext i32 %335 to i64
  %336 = load i32**, i32*** %send_procs, align 8
  %arrayidx418 = getelementptr inbounds i32*, i32** %336, i64 %idxprom417
  %337 = load i32*, i32** %arrayidx418, align 8
  %arrayidx419 = getelementptr inbounds i32, i32* %337, i64 %idxprom416
  store i32 %333, i32* %arrayidx419, align 4
  %338 = load i32, i32* %k, align 4
  %idxprom420 = sext i32 %338 to i64
  %339 = load i32, i32* %j, align 4
  %idxprom421 = sext i32 %339 to i64
  %340 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %arrayidx422 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %340, i64 %idxprom421
  %341 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx422, align 8
  %boxes423 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %341, i32 0, i32 0
  %342 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes423, align 8
  %arrayidx424 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %342, i64 %idxprom420
  %imin425 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx424, i32 0, i32 0
  %arrayidx426 = getelementptr inbounds [3 x i32], [3 x i32]* %imin425, i32 0, i64 0
  %343 = load i32, i32* %arrayidx426, align 4
  %344 = load i32, i32* %n, align 4
  %idxprom427 = sext i32 %344 to i64
  %345 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %send_box_array, align 8
  %boxes428 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %345, i32 0, i32 0
  %346 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes428, align 8
  %arrayidx429 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %346, i64 %idxprom427
  %imin430 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx429, i32 0, i32 0
  %arrayidx431 = getelementptr inbounds [3 x i32], [3 x i32]* %imin430, i32 0, i64 0
  store i32 %343, i32* %arrayidx431, align 4
  %347 = load i32, i32* %k, align 4
  %idxprom432 = sext i32 %347 to i64
  %348 = load i32, i32* %j, align 4
  %idxprom433 = sext i32 %348 to i64
  %349 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %arrayidx434 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %349, i64 %idxprom433
  %350 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx434, align 8
  %boxes435 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %350, i32 0, i32 0
  %351 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes435, align 8
  %arrayidx436 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %351, i64 %idxprom432
  %imin437 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx436, i32 0, i32 0
  %arrayidx438 = getelementptr inbounds [3 x i32], [3 x i32]* %imin437, i32 0, i64 1
  %352 = load i32, i32* %arrayidx438, align 4
  %353 = load i32, i32* %n, align 4
  %idxprom439 = sext i32 %353 to i64
  %354 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %send_box_array, align 8
  %boxes440 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %354, i32 0, i32 0
  %355 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes440, align 8
  %arrayidx441 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %355, i64 %idxprom439
  %imin442 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx441, i32 0, i32 0
  %arrayidx443 = getelementptr inbounds [3 x i32], [3 x i32]* %imin442, i32 0, i64 1
  store i32 %352, i32* %arrayidx443, align 4
  %356 = load i32, i32* %k, align 4
  %idxprom444 = sext i32 %356 to i64
  %357 = load i32, i32* %j, align 4
  %idxprom445 = sext i32 %357 to i64
  %358 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %arrayidx446 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %358, i64 %idxprom445
  %359 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx446, align 8
  %boxes447 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %359, i32 0, i32 0
  %360 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes447, align 8
  %arrayidx448 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %360, i64 %idxprom444
  %imin449 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx448, i32 0, i32 0
  %arrayidx450 = getelementptr inbounds [3 x i32], [3 x i32]* %imin449, i32 0, i64 2
  %361 = load i32, i32* %arrayidx450, align 4
  %362 = load i32, i32* %n, align 4
  %idxprom451 = sext i32 %362 to i64
  %363 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %send_box_array, align 8
  %boxes452 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %363, i32 0, i32 0
  %364 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes452, align 8
  %arrayidx453 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %364, i64 %idxprom451
  %imin454 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx453, i32 0, i32 0
  %arrayidx455 = getelementptr inbounds [3 x i32], [3 x i32]* %imin454, i32 0, i64 2
  store i32 %361, i32* %arrayidx455, align 4
  %365 = load i32, i32* %k, align 4
  %idxprom456 = sext i32 %365 to i64
  %366 = load i32, i32* %j, align 4
  %idxprom457 = sext i32 %366 to i64
  %367 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %arrayidx458 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %367, i64 %idxprom457
  %368 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx458, align 8
  %boxes459 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %368, i32 0, i32 0
  %369 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes459, align 8
  %arrayidx460 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %369, i64 %idxprom456
  %imax461 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx460, i32 0, i32 1
  %arrayidx462 = getelementptr inbounds [3 x i32], [3 x i32]* %imax461, i32 0, i64 0
  %370 = load i32, i32* %arrayidx462, align 4
  %371 = load i32, i32* %n, align 4
  %idxprom463 = sext i32 %371 to i64
  %372 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %send_box_array, align 8
  %boxes464 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %372, i32 0, i32 0
  %373 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes464, align 8
  %arrayidx465 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %373, i64 %idxprom463
  %imax466 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx465, i32 0, i32 1
  %arrayidx467 = getelementptr inbounds [3 x i32], [3 x i32]* %imax466, i32 0, i64 0
  store i32 %370, i32* %arrayidx467, align 4
  %374 = load i32, i32* %k, align 4
  %idxprom468 = sext i32 %374 to i64
  %375 = load i32, i32* %j, align 4
  %idxprom469 = sext i32 %375 to i64
  %376 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %arrayidx470 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %376, i64 %idxprom469
  %377 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx470, align 8
  %boxes471 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %377, i32 0, i32 0
  %378 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes471, align 8
  %arrayidx472 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %378, i64 %idxprom468
  %imax473 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx472, i32 0, i32 1
  %arrayidx474 = getelementptr inbounds [3 x i32], [3 x i32]* %imax473, i32 0, i64 1
  %379 = load i32, i32* %arrayidx474, align 4
  %380 = load i32, i32* %n, align 4
  %idxprom475 = sext i32 %380 to i64
  %381 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %send_box_array, align 8
  %boxes476 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %381, i32 0, i32 0
  %382 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes476, align 8
  %arrayidx477 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %382, i64 %idxprom475
  %imax478 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx477, i32 0, i32 1
  %arrayidx479 = getelementptr inbounds [3 x i32], [3 x i32]* %imax478, i32 0, i64 1
  store i32 %379, i32* %arrayidx479, align 4
  %383 = load i32, i32* %k, align 4
  %idxprom480 = sext i32 %383 to i64
  %384 = load i32, i32* %j, align 4
  %idxprom481 = sext i32 %384 to i64
  %385 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %arrayidx482 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %385, i64 %idxprom481
  %386 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx482, align 8
  %boxes483 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %386, i32 0, i32 0
  %387 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes483, align 8
  %arrayidx484 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %387, i64 %idxprom480
  %imax485 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx484, i32 0, i32 1
  %arrayidx486 = getelementptr inbounds [3 x i32], [3 x i32]* %imax485, i32 0, i64 2
  %388 = load i32, i32* %arrayidx486, align 4
  %389 = load i32, i32* %n, align 4
  %idxprom487 = sext i32 %389 to i64
  %390 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %send_box_array, align 8
  %boxes488 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %390, i32 0, i32 0
  %391 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes488, align 8
  %arrayidx489 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %391, i64 %idxprom487
  %imax490 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx489, i32 0, i32 1
  %arrayidx491 = getelementptr inbounds [3 x i32], [3 x i32]* %imax490, i32 0, i64 2
  store i32 %388, i32* %arrayidx491, align 4
  %392 = load i32, i32* %n, align 4
  %inc492 = add nsw i32 %392, 1
  store i32 %inc492, i32* %n, align 4
  br label %for.inc.493

for.inc.493:                                      ; preds = %for.body.413
  %393 = load i32, i32* %k, align 4
  %inc494 = add nsw i32 %393, 1
  store i32 %inc494, i32* %k, align 4
  br label %for.cond.408

for.end.495:                                      ; preds = %for.cond.408
  %394 = load i32, i32* %j, align 4
  %idxprom496 = sext i32 %394 to i64
  %395 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %arrayidx497 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %395, i64 %idxprom496
  %396 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx497, align 8
  %call498 = call i32 @hypre_BoxArrayDestroy(%struct.hypre_BoxArray_struct* %396)
  %397 = load i32, i32* %j, align 4
  %idxprom499 = sext i32 %397 to i64
  %398 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %arrayidx500 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %398, i64 %idxprom499
  store %struct.hypre_BoxArray_struct* null, %struct.hypre_BoxArray_struct** %arrayidx500, align 8
  br label %for.inc.501

for.inc.501:                                      ; preds = %for.end.495
  %399 = load i32, i32* %m, align 4
  %inc502 = add nsw i32 %399, 1
  store i32 %inc502, i32* %m, align 4
  br label %for.cond.403

for.end.503:                                      ; preds = %for.cond.403
  br label %for.inc.504

for.inc.504:                                      ; preds = %for.end.503
  %400 = load i32, i32* %i, align 4
  %inc505 = add nsw i32 %400, 1
  store i32 %inc505, i32* %i, align 4
  br label %for.cond

for.end.506:                                      ; preds = %for.cond
  %401 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %402 = bitcast %struct.hypre_BoxArray_struct** %401 to i8*
  call void @hypre_Free(i8* %402)
  store %struct.hypre_BoxArray_struct** null, %struct.hypre_BoxArray_struct*** %cbox_arrays, align 8
  %403 = load i32*, i32** %cbox_arrays_i, align 8
  %404 = bitcast i32* %403 to i8*
  call void @hypre_Free(i8* %404)
  store i32* null, i32** %cbox_arrays_i, align 8
  %405 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %grow_box, align 8
  %call507 = call i32 @hypre_BoxDestroy(%struct.hypre_Box_struct* %405)
  %406 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box0, align 8
  %call508 = call i32 @hypre_BoxDestroy(%struct.hypre_Box_struct* %406)
  %407 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %send_boxes, align 8
  %408 = load %struct.hypre_BoxArrayArray_struct**, %struct.hypre_BoxArrayArray_struct*** %send_boxes_ptr.addr, align 8
  store %struct.hypre_BoxArrayArray_struct* %407, %struct.hypre_BoxArrayArray_struct** %408, align 8
  %409 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %recv_boxes, align 8
  %410 = load %struct.hypre_BoxArrayArray_struct**, %struct.hypre_BoxArrayArray_struct*** %recv_boxes_ptr.addr, align 8
  store %struct.hypre_BoxArrayArray_struct* %409, %struct.hypre_BoxArrayArray_struct** %410, align 8
  %411 = load i32**, i32*** %send_procs, align 8
  %412 = load i32***, i32**** %send_procs_ptr.addr, align 8
  store i32** %411, i32*** %412, align 8
  %413 = load i32**, i32*** %recv_procs, align 8
  %414 = load i32***, i32**** %recv_procs_ptr.addr, align 8
  store i32** %413, i32*** %414, align 8
  %415 = load i32, i32* %ierr, align 4
  ret i32 %415
}

; Function Attrs: nounwind uwtable
define i32 @hypre_CreateCommInfoFromGrids(%struct.hypre_StructGrid_struct* %from_grid, %struct.hypre_StructGrid_struct* %to_grid, %struct.hypre_BoxArrayArray_struct** %send_boxes_ptr, %struct.hypre_BoxArrayArray_struct** %recv_boxes_ptr, i32*** %send_procs_ptr, i32*** %recv_procs_ptr) #0 {
entry:
  %from_grid.addr = alloca %struct.hypre_StructGrid_struct*, align 8
  %to_grid.addr = alloca %struct.hypre_StructGrid_struct*, align 8
  %send_boxes_ptr.addr = alloca %struct.hypre_BoxArrayArray_struct**, align 8
  %recv_boxes_ptr.addr = alloca %struct.hypre_BoxArrayArray_struct**, align 8
  %send_procs_ptr.addr = alloca i32***, align 8
  %recv_procs_ptr.addr = alloca i32***, align 8
  %ierr = alloca i32, align 4
  %send_boxes = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %recv_boxes = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %send_procs = alloca i32**, align 8
  %recv_procs = alloca i32**, align 8
  %comm_boxes = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %comm_procs = alloca i32**, align 8
  %comm_box_array = alloca %struct.hypre_BoxArray_struct*, align 8
  %comm_box = alloca %struct.hypre_Box_struct*, align 8
  %local_grid = alloca %struct.hypre_StructGrid_struct*, align 8
  %remote_grid = alloca %struct.hypre_StructGrid_struct*, align 8
  %local_boxes = alloca %struct.hypre_BoxArray_struct*, align 8
  %remote_boxes = alloca %struct.hypre_BoxArray_struct*, align 8
  %remote_all_boxes = alloca %struct.hypre_BoxArray_struct*, align 8
  %remote_all_procs = alloca i32*, align 8
  %remote_first_local = alloca i32, align 4
  %local_box = alloca %struct.hypre_Box_struct*, align 8
  %remote_box = alloca %struct.hypre_Box_struct*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %r = alloca i32, align 4
  store %struct.hypre_StructGrid_struct* %from_grid, %struct.hypre_StructGrid_struct** %from_grid.addr, align 8
  store %struct.hypre_StructGrid_struct* %to_grid, %struct.hypre_StructGrid_struct** %to_grid.addr, align 8
  store %struct.hypre_BoxArrayArray_struct** %send_boxes_ptr, %struct.hypre_BoxArrayArray_struct*** %send_boxes_ptr.addr, align 8
  store %struct.hypre_BoxArrayArray_struct** %recv_boxes_ptr, %struct.hypre_BoxArrayArray_struct*** %recv_boxes_ptr.addr, align 8
  store i32*** %send_procs_ptr, i32**** %send_procs_ptr.addr, align 8
  store i32*** %recv_procs_ptr, i32**** %recv_procs_ptr.addr, align 8
  store i32 0, i32* %ierr, align 4
  store i32 0, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.94, %entry
  %0 = load i32, i32* %r, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %for.body, label %for.end.96

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %r, align 4
  switch i32 %1, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %for.body
  %2 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %from_grid.addr, align 8
  store %struct.hypre_StructGrid_struct* %2, %struct.hypre_StructGrid_struct** %local_grid, align 8
  %3 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %to_grid.addr, align 8
  store %struct.hypre_StructGrid_struct* %3, %struct.hypre_StructGrid_struct** %remote_grid, align 8
  br label %sw.epilog

sw.bb.1:                                          ; preds = %for.body
  %4 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %to_grid.addr, align 8
  store %struct.hypre_StructGrid_struct* %4, %struct.hypre_StructGrid_struct** %local_grid, align 8
  %5 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %from_grid.addr, align 8
  store %struct.hypre_StructGrid_struct* %5, %struct.hypre_StructGrid_struct** %remote_grid, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %sw.bb.1, %sw.bb
  %6 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %local_grid, align 8
  %boxes = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %6, i32 0, i32 2
  %7 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  store %struct.hypre_BoxArray_struct* %7, %struct.hypre_BoxArray_struct** %local_boxes, align 8
  %8 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %remote_grid, align 8
  %boxes2 = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %8, i32 0, i32 2
  %9 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes2, align 8
  store %struct.hypre_BoxArray_struct* %9, %struct.hypre_BoxArray_struct** %remote_boxes, align 8
  %10 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %remote_grid, align 8
  %comm = getelementptr inbounds %struct.hypre_StructGrid_struct, %struct.hypre_StructGrid_struct* %10, i32 0, i32 0
  %11 = load i32, i32* %comm, align 4
  %12 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %remote_boxes, align 8
  %call = call i32 @hypre_GatherAllBoxes(i32 %11, %struct.hypre_BoxArray_struct* %12, %struct.hypre_BoxArray_struct** %remote_all_boxes, i32** %remote_all_procs, i32* %remote_first_local)
  %13 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %local_boxes, align 8
  %size = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %13, i32 0, i32 1
  %14 = load i32, i32* %size, align 4
  %call3 = call %struct.hypre_BoxArrayArray_struct* @hypre_BoxArrayArrayCreate(i32 %14)
  store %struct.hypre_BoxArrayArray_struct* %call3, %struct.hypre_BoxArrayArray_struct** %comm_boxes, align 8
  %15 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %local_boxes, align 8
  %size4 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %15, i32 0, i32 1
  %16 = load i32, i32* %size4, align 4
  %call5 = call i8* @hypre_CAlloc(i32 %16, i32 8)
  %17 = bitcast i8* %call5 to i32**
  store i32** %17, i32*** %comm_procs, align 8
  %call6 = call %struct.hypre_Box_struct* @hypre_BoxCreate()
  store %struct.hypre_Box_struct* %call6, %struct.hypre_Box_struct** %comm_box, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.86, %sw.epilog
  %18 = load i32, i32* %i, align 4
  %19 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %local_boxes, align 8
  %size8 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %19, i32 0, i32 1
  %20 = load i32, i32* %size8, align 4
  %cmp9 = icmp slt i32 %18, %20
  br i1 %cmp9, label %for.body.10, label %for.end.88

for.body.10:                                      ; preds = %for.cond.7
  %21 = load i32, i32* %i, align 4
  %idxprom = sext i32 %21 to i64
  %22 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %local_boxes, align 8
  %boxes11 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %22, i32 0, i32 0
  %23 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes11, align 8
  %arrayidx = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %23, i64 %idxprom
  store %struct.hypre_Box_struct* %arrayidx, %struct.hypre_Box_struct** %local_box, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %24 to i64
  %25 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %comm_boxes, align 8
  %box_arrays = getelementptr inbounds %struct.hypre_BoxArrayArray_struct, %struct.hypre_BoxArrayArray_struct* %25, i32 0, i32 0
  %26 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %box_arrays, align 8
  %arrayidx13 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %26, i64 %idxprom12
  %27 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx13, align 8
  store %struct.hypre_BoxArray_struct* %27, %struct.hypre_BoxArray_struct** %comm_box_array, align 8
  %28 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %remote_all_boxes, align 8
  %size14 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %28, i32 0, i32 1
  %29 = load i32, i32* %size14, align 4
  %call15 = call i8* @hypre_CAlloc(i32 %29, i32 4)
  %30 = bitcast i8* %call15 to i32*
  %31 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %31 to i64
  %32 = load i32**, i32*** %comm_procs, align 8
  %arrayidx17 = getelementptr inbounds i32*, i32** %32, i64 %idxprom16
  store i32* %30, i32** %arrayidx17, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc, %for.body.10
  %33 = load i32, i32* %j, align 4
  %34 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %remote_all_boxes, align 8
  %size19 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %34, i32 0, i32 1
  %35 = load i32, i32* %size19, align 4
  %cmp20 = icmp slt i32 %33, %35
  br i1 %cmp20, label %for.body.21, label %for.end

for.body.21:                                      ; preds = %for.cond.18
  %36 = load i32, i32* %j, align 4
  %idxprom22 = sext i32 %36 to i64
  %37 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %remote_all_boxes, align 8
  %boxes23 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %37, i32 0, i32 0
  %38 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes23, align 8
  %arrayidx24 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %38, i64 %idxprom22
  store %struct.hypre_Box_struct* %arrayidx24, %struct.hypre_Box_struct** %remote_box, align 8
  %39 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %local_box, align 8
  %40 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %remote_box, align 8
  %41 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %comm_box, align 8
  %call25 = call i32 @hypre_IntersectBoxes(%struct.hypre_Box_struct* %39, %struct.hypre_Box_struct* %40, %struct.hypre_Box_struct* %41)
  %42 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %comm_box, align 8
  %imax = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %42, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 0
  %43 = load i32, i32* %arrayidx26, align 4
  %44 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %comm_box, align 8
  %imin = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %44, i32 0, i32 0
  %arrayidx27 = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i64 0
  %45 = load i32, i32* %arrayidx27, align 4
  %sub = sub nsw i32 %43, %45
  %add = add nsw i32 %sub, 1
  %cmp28 = icmp slt i32 0, %add
  br i1 %cmp28, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.21
  %46 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %comm_box, align 8
  %imax29 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %46, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [3 x i32], [3 x i32]* %imax29, i32 0, i64 0
  %47 = load i32, i32* %arrayidx30, align 4
  %48 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %comm_box, align 8
  %imin31 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %48, i32 0, i32 0
  %arrayidx32 = getelementptr inbounds [3 x i32], [3 x i32]* %imin31, i32 0, i64 0
  %49 = load i32, i32* %arrayidx32, align 4
  %sub33 = sub nsw i32 %47, %49
  %add34 = add nsw i32 %sub33, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body.21
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add34, %cond.true ], [ 0, %cond.false ]
  %50 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %comm_box, align 8
  %imax35 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %50, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [3 x i32], [3 x i32]* %imax35, i32 0, i64 1
  %51 = load i32, i32* %arrayidx36, align 4
  %52 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %comm_box, align 8
  %imin37 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %52, i32 0, i32 0
  %arrayidx38 = getelementptr inbounds [3 x i32], [3 x i32]* %imin37, i32 0, i64 1
  %53 = load i32, i32* %arrayidx38, align 4
  %sub39 = sub nsw i32 %51, %53
  %add40 = add nsw i32 %sub39, 1
  %cmp41 = icmp slt i32 0, %add40
  br i1 %cmp41, label %cond.true.42, label %cond.false.49

cond.true.42:                                     ; preds = %cond.end
  %54 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %comm_box, align 8
  %imax43 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %54, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [3 x i32], [3 x i32]* %imax43, i32 0, i64 1
  %55 = load i32, i32* %arrayidx44, align 4
  %56 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %comm_box, align 8
  %imin45 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %56, i32 0, i32 0
  %arrayidx46 = getelementptr inbounds [3 x i32], [3 x i32]* %imin45, i32 0, i64 1
  %57 = load i32, i32* %arrayidx46, align 4
  %sub47 = sub nsw i32 %55, %57
  %add48 = add nsw i32 %sub47, 1
  br label %cond.end.50

cond.false.49:                                    ; preds = %cond.end
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.false.49, %cond.true.42
  %cond51 = phi i32 [ %add48, %cond.true.42 ], [ 0, %cond.false.49 ]
  %mul = mul nsw i32 %cond, %cond51
  %58 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %comm_box, align 8
  %imax52 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %58, i32 0, i32 1
  %arrayidx53 = getelementptr inbounds [3 x i32], [3 x i32]* %imax52, i32 0, i64 2
  %59 = load i32, i32* %arrayidx53, align 4
  %60 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %comm_box, align 8
  %imin54 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %60, i32 0, i32 0
  %arrayidx55 = getelementptr inbounds [3 x i32], [3 x i32]* %imin54, i32 0, i64 2
  %61 = load i32, i32* %arrayidx55, align 4
  %sub56 = sub nsw i32 %59, %61
  %add57 = add nsw i32 %sub56, 1
  %cmp58 = icmp slt i32 0, %add57
  br i1 %cmp58, label %cond.true.59, label %cond.false.66

cond.true.59:                                     ; preds = %cond.end.50
  %62 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %comm_box, align 8
  %imax60 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %62, i32 0, i32 1
  %arrayidx61 = getelementptr inbounds [3 x i32], [3 x i32]* %imax60, i32 0, i64 2
  %63 = load i32, i32* %arrayidx61, align 4
  %64 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %comm_box, align 8
  %imin62 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %64, i32 0, i32 0
  %arrayidx63 = getelementptr inbounds [3 x i32], [3 x i32]* %imin62, i32 0, i64 2
  %65 = load i32, i32* %arrayidx63, align 4
  %sub64 = sub nsw i32 %63, %65
  %add65 = add nsw i32 %sub64, 1
  br label %cond.end.67

cond.false.66:                                    ; preds = %cond.end.50
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.false.66, %cond.true.59
  %cond68 = phi i32 [ %add65, %cond.true.59 ], [ 0, %cond.false.66 ]
  %mul69 = mul nsw i32 %mul, %cond68
  %tobool = icmp ne i32 %mul69, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.67
  %66 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %comm_box_array, align 8
  %size70 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %66, i32 0, i32 1
  %67 = load i32, i32* %size70, align 4
  store i32 %67, i32* %k, align 4
  %68 = load i32, i32* %j, align 4
  %idxprom71 = sext i32 %68 to i64
  %69 = load i32*, i32** %remote_all_procs, align 8
  %arrayidx72 = getelementptr inbounds i32, i32* %69, i64 %idxprom71
  %70 = load i32, i32* %arrayidx72, align 4
  %71 = load i32, i32* %k, align 4
  %idxprom73 = sext i32 %71 to i64
  %72 = load i32, i32* %i, align 4
  %idxprom74 = sext i32 %72 to i64
  %73 = load i32**, i32*** %comm_procs, align 8
  %arrayidx75 = getelementptr inbounds i32*, i32** %73, i64 %idxprom74
  %74 = load i32*, i32** %arrayidx75, align 8
  %arrayidx76 = getelementptr inbounds i32, i32* %74, i64 %idxprom73
  store i32 %70, i32* %arrayidx76, align 4
  %75 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %comm_box, align 8
  %76 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %comm_box_array, align 8
  %call77 = call i32 @hypre_AppendBox(%struct.hypre_Box_struct* %75, %struct.hypre_BoxArray_struct* %76)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.67
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %77 = load i32, i32* %j, align 4
  %inc = add nsw i32 %77, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.18

for.end:                                          ; preds = %for.cond.18
  %78 = load i32, i32* %i, align 4
  %idxprom78 = sext i32 %78 to i64
  %79 = load i32**, i32*** %comm_procs, align 8
  %arrayidx79 = getelementptr inbounds i32*, i32** %79, i64 %idxprom78
  %80 = load i32*, i32** %arrayidx79, align 8
  %81 = bitcast i32* %80 to i8*
  %82 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %comm_box_array, align 8
  %size80 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %82, i32 0, i32 1
  %83 = load i32, i32* %size80, align 4
  %conv = sext i32 %83 to i64
  %mul81 = mul i64 4, %conv
  %conv82 = trunc i64 %mul81 to i32
  %call83 = call i8* @hypre_ReAlloc(i8* %81, i32 %conv82)
  %84 = bitcast i8* %call83 to i32*
  %85 = load i32, i32* %i, align 4
  %idxprom84 = sext i32 %85 to i64
  %86 = load i32**, i32*** %comm_procs, align 8
  %arrayidx85 = getelementptr inbounds i32*, i32** %86, i64 %idxprom84
  store i32* %84, i32** %arrayidx85, align 8
  br label %for.inc.86

for.inc.86:                                       ; preds = %for.end
  %87 = load i32, i32* %i, align 4
  %inc87 = add nsw i32 %87, 1
  store i32 %inc87, i32* %i, align 4
  br label %for.cond.7

for.end.88:                                       ; preds = %for.cond.7
  %88 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %comm_box, align 8
  %call89 = call i32 @hypre_BoxDestroy(%struct.hypre_Box_struct* %88)
  %89 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %remote_all_boxes, align 8
  %call90 = call i32 @hypre_BoxArrayDestroy(%struct.hypre_BoxArray_struct* %89)
  %90 = load i32*, i32** %remote_all_procs, align 8
  %91 = bitcast i32* %90 to i8*
  call void @hypre_Free(i8* %91)
  store i32* null, i32** %remote_all_procs, align 8
  %92 = load i32, i32* %r, align 4
  switch i32 %92, label %sw.epilog.93 [
    i32 0, label %sw.bb.91
    i32 1, label %sw.bb.92
  ]

sw.bb.91:                                         ; preds = %for.end.88
  %93 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %comm_boxes, align 8
  store %struct.hypre_BoxArrayArray_struct* %93, %struct.hypre_BoxArrayArray_struct** %send_boxes, align 8
  %94 = load i32**, i32*** %comm_procs, align 8
  store i32** %94, i32*** %send_procs, align 8
  br label %sw.epilog.93

sw.bb.92:                                         ; preds = %for.end.88
  %95 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %comm_boxes, align 8
  store %struct.hypre_BoxArrayArray_struct* %95, %struct.hypre_BoxArrayArray_struct** %recv_boxes, align 8
  %96 = load i32**, i32*** %comm_procs, align 8
  store i32** %96, i32*** %recv_procs, align 8
  br label %sw.epilog.93

sw.epilog.93:                                     ; preds = %for.end.88, %sw.bb.92, %sw.bb.91
  br label %for.inc.94

for.inc.94:                                       ; preds = %sw.epilog.93
  %97 = load i32, i32* %r, align 4
  %inc95 = add nsw i32 %97, 1
  store i32 %inc95, i32* %r, align 4
  br label %for.cond

for.end.96:                                       ; preds = %for.cond
  %98 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %send_boxes, align 8
  %99 = load %struct.hypre_BoxArrayArray_struct**, %struct.hypre_BoxArrayArray_struct*** %send_boxes_ptr.addr, align 8
  store %struct.hypre_BoxArrayArray_struct* %98, %struct.hypre_BoxArrayArray_struct** %99, align 8
  %100 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %recv_boxes, align 8
  %101 = load %struct.hypre_BoxArrayArray_struct**, %struct.hypre_BoxArrayArray_struct*** %recv_boxes_ptr.addr, align 8
  store %struct.hypre_BoxArrayArray_struct* %100, %struct.hypre_BoxArrayArray_struct** %101, align 8
  %102 = load i32**, i32*** %send_procs, align 8
  %103 = load i32***, i32**** %send_procs_ptr.addr, align 8
  store i32** %102, i32*** %103, align 8
  %104 = load i32**, i32*** %recv_procs, align 8
  %105 = load i32***, i32**** %recv_procs_ptr.addr, align 8
  store i32** %104, i32*** %105, align 8
  %106 = load i32, i32* %ierr, align 4
  ret i32 %106
}

declare i32 @hypre_GatherAllBoxes(i32, %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct**, i32**, i32*) #1

declare i8* @hypre_ReAlloc(i8*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
