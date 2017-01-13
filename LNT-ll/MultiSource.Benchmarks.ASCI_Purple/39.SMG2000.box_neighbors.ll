; ModuleID = './MultiSource.Benchmarks.ASCI_Purple/39.SMG2000.box_neighbors.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hypre_RankLink_struct = type { i32, %struct.hypre_RankLink_struct* }
%struct.hypre_BoxArray_struct = type { %struct.hypre_Box_struct*, i32, i32 }
%struct.hypre_Box_struct = type { [3 x i32], [3 x i32] }
%struct.hypre_BoxNeighbors_struct = type { %struct.hypre_BoxArray_struct*, i32*, i32*, i32, i32, i32, [3 x [3 x [3 x %struct.hypre_RankLink_struct*]]]* }

; Function Attrs: nounwind uwtable
define i32 @hypre_RankLinkCreate(i32 %rank, %struct.hypre_RankLink_struct** %rank_link_ptr) #0 {
entry:
  %rank.addr = alloca i32, align 4
  %rank_link_ptr.addr = alloca %struct.hypre_RankLink_struct**, align 8
  %rank_link = alloca %struct.hypre_RankLink_struct*, align 8
  store i32 %rank, i32* %rank.addr, align 4
  store %struct.hypre_RankLink_struct** %rank_link_ptr, %struct.hypre_RankLink_struct*** %rank_link_ptr.addr, align 8
  %call = call i8* @hypre_MAlloc(i32 16)
  %0 = bitcast i8* %call to %struct.hypre_RankLink_struct*
  store %struct.hypre_RankLink_struct* %0, %struct.hypre_RankLink_struct** %rank_link, align 8
  %1 = load i32, i32* %rank.addr, align 4
  %2 = load %struct.hypre_RankLink_struct*, %struct.hypre_RankLink_struct** %rank_link, align 8
  %rank1 = getelementptr inbounds %struct.hypre_RankLink_struct, %struct.hypre_RankLink_struct* %2, i32 0, i32 0
  store i32 %1, i32* %rank1, align 4
  %3 = load %struct.hypre_RankLink_struct*, %struct.hypre_RankLink_struct** %rank_link, align 8
  %next = getelementptr inbounds %struct.hypre_RankLink_struct, %struct.hypre_RankLink_struct* %3, i32 0, i32 1
  store %struct.hypre_RankLink_struct* null, %struct.hypre_RankLink_struct** %next, align 8
  %4 = load %struct.hypre_RankLink_struct*, %struct.hypre_RankLink_struct** %rank_link, align 8
  %5 = load %struct.hypre_RankLink_struct**, %struct.hypre_RankLink_struct*** %rank_link_ptr.addr, align 8
  store %struct.hypre_RankLink_struct* %4, %struct.hypre_RankLink_struct** %5, align 8
  ret i32 0
}

declare i8* @hypre_MAlloc(i32) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_RankLinkDestroy(%struct.hypre_RankLink_struct* %rank_link) #0 {
entry:
  %rank_link.addr = alloca %struct.hypre_RankLink_struct*, align 8
  %ierr = alloca i32, align 4
  store %struct.hypre_RankLink_struct* %rank_link, %struct.hypre_RankLink_struct** %rank_link.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_RankLink_struct*, %struct.hypre_RankLink_struct** %rank_link.addr, align 8
  %tobool = icmp ne %struct.hypre_RankLink_struct* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.hypre_RankLink_struct*, %struct.hypre_RankLink_struct** %rank_link.addr, align 8
  %2 = bitcast %struct.hypre_RankLink_struct* %1 to i8*
  call void @hypre_Free(i8* %2)
  store %struct.hypre_RankLink_struct* null, %struct.hypre_RankLink_struct** %rank_link.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %ierr, align 4
  ret i32 %3
}

declare void @hypre_Free(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_BoxNeighborsCreate(%struct.hypre_BoxArray_struct* %boxes, i32* %procs, i32* %ids, i32 %first_local, i32 %num_local, i32 %num_periodic, %struct.hypre_BoxNeighbors_struct** %neighbors_ptr) #0 {
entry:
  %boxes.addr = alloca %struct.hypre_BoxArray_struct*, align 8
  %procs.addr = alloca i32*, align 8
  %ids.addr = alloca i32*, align 8
  %first_local.addr = alloca i32, align 4
  %num_local.addr = alloca i32, align 4
  %num_periodic.addr = alloca i32, align 4
  %neighbors_ptr.addr = alloca %struct.hypre_BoxNeighbors_struct**, align 8
  %neighbors = alloca %struct.hypre_BoxNeighbors_struct*, align 8
  store %struct.hypre_BoxArray_struct* %boxes, %struct.hypre_BoxArray_struct** %boxes.addr, align 8
  store i32* %procs, i32** %procs.addr, align 8
  store i32* %ids, i32** %ids.addr, align 8
  store i32 %first_local, i32* %first_local.addr, align 4
  store i32 %num_local, i32* %num_local.addr, align 4
  store i32 %num_periodic, i32* %num_periodic.addr, align 4
  store %struct.hypre_BoxNeighbors_struct** %neighbors_ptr, %struct.hypre_BoxNeighbors_struct*** %neighbors_ptr.addr, align 8
  %call = call i8* @hypre_CAlloc(i32 1, i32 48)
  %0 = bitcast i8* %call to %struct.hypre_BoxNeighbors_struct*
  store %struct.hypre_BoxNeighbors_struct* %0, %struct.hypre_BoxNeighbors_struct** %neighbors, align 8
  %1 = load i32, i32* %num_local.addr, align 4
  %call1 = call i8* @hypre_CAlloc(i32 %1, i32 216)
  %2 = bitcast i8* %call1 to [3 x [3 x [3 x %struct.hypre_RankLink_struct*]]]*
  %3 = load %struct.hypre_BoxNeighbors_struct*, %struct.hypre_BoxNeighbors_struct** %neighbors, align 8
  %rank_links = getelementptr inbounds %struct.hypre_BoxNeighbors_struct, %struct.hypre_BoxNeighbors_struct* %3, i32 0, i32 6
  store [3 x [3 x [3 x %struct.hypre_RankLink_struct*]]]* %2, [3 x [3 x [3 x %struct.hypre_RankLink_struct*]]]** %rank_links, align 8
  %4 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes.addr, align 8
  %5 = load %struct.hypre_BoxNeighbors_struct*, %struct.hypre_BoxNeighbors_struct** %neighbors, align 8
  %boxes2 = getelementptr inbounds %struct.hypre_BoxNeighbors_struct, %struct.hypre_BoxNeighbors_struct* %5, i32 0, i32 0
  store %struct.hypre_BoxArray_struct* %4, %struct.hypre_BoxArray_struct** %boxes2, align 8
  %6 = load i32*, i32** %procs.addr, align 8
  %7 = load %struct.hypre_BoxNeighbors_struct*, %struct.hypre_BoxNeighbors_struct** %neighbors, align 8
  %procs3 = getelementptr inbounds %struct.hypre_BoxNeighbors_struct, %struct.hypre_BoxNeighbors_struct* %7, i32 0, i32 1
  store i32* %6, i32** %procs3, align 8
  %8 = load i32*, i32** %ids.addr, align 8
  %9 = load %struct.hypre_BoxNeighbors_struct*, %struct.hypre_BoxNeighbors_struct** %neighbors, align 8
  %ids4 = getelementptr inbounds %struct.hypre_BoxNeighbors_struct, %struct.hypre_BoxNeighbors_struct* %9, i32 0, i32 2
  store i32* %8, i32** %ids4, align 8
  %10 = load i32, i32* %first_local.addr, align 4
  %11 = load %struct.hypre_BoxNeighbors_struct*, %struct.hypre_BoxNeighbors_struct** %neighbors, align 8
  %first_local5 = getelementptr inbounds %struct.hypre_BoxNeighbors_struct, %struct.hypre_BoxNeighbors_struct* %11, i32 0, i32 3
  store i32 %10, i32* %first_local5, align 4
  %12 = load i32, i32* %num_local.addr, align 4
  %13 = load %struct.hypre_BoxNeighbors_struct*, %struct.hypre_BoxNeighbors_struct** %neighbors, align 8
  %num_local6 = getelementptr inbounds %struct.hypre_BoxNeighbors_struct, %struct.hypre_BoxNeighbors_struct* %13, i32 0, i32 4
  store i32 %12, i32* %num_local6, align 4
  %14 = load i32, i32* %num_periodic.addr, align 4
  %15 = load %struct.hypre_BoxNeighbors_struct*, %struct.hypre_BoxNeighbors_struct** %neighbors, align 8
  %num_periodic7 = getelementptr inbounds %struct.hypre_BoxNeighbors_struct, %struct.hypre_BoxNeighbors_struct* %15, i32 0, i32 5
  store i32 %14, i32* %num_periodic7, align 4
  %16 = load %struct.hypre_BoxNeighbors_struct*, %struct.hypre_BoxNeighbors_struct** %neighbors, align 8
  %17 = load %struct.hypre_BoxNeighbors_struct**, %struct.hypre_BoxNeighbors_struct*** %neighbors_ptr.addr, align 8
  store %struct.hypre_BoxNeighbors_struct* %16, %struct.hypre_BoxNeighbors_struct** %17, align 8
  ret i32 0
}

declare i8* @hypre_CAlloc(i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_BoxNeighborsAssemble(%struct.hypre_BoxNeighbors_struct* %neighbors, i32 %max_distance, i32 %prune) #0 {
entry:
  %neighbors.addr = alloca %struct.hypre_BoxNeighbors_struct*, align 8
  %max_distance.addr = alloca i32, align 4
  %prune.addr = alloca i32, align 4
  %boxes = alloca %struct.hypre_BoxArray_struct*, align 8
  %procs = alloca i32*, align 8
  %ids = alloca i32*, align 8
  %first_local = alloca i32, align 4
  %num_local = alloca i32, align 4
  %num_periodic = alloca i32, align 4
  %keep_box = alloca i32, align 4
  %num_boxes = alloca i32, align 4
  %rank_link = alloca %struct.hypre_RankLink_struct*, align 8
  %local_box = alloca %struct.hypre_Box_struct*, align 8
  %neighbor_box = alloca %struct.hypre_Box_struct*, align 8
  %distance = alloca i32, align 4
  %distance_index = alloca [3 x i32], align 4
  %diff = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %d = alloca i32, align 4
  %ilocal = alloca i32, align 4
  %inew = alloca i32, align 4
  %ierr = alloca i32, align 4
  store %struct.hypre_BoxNeighbors_struct* %neighbors, %struct.hypre_BoxNeighbors_struct** %neighbors.addr, align 8
  store i32 %max_distance, i32* %max_distance.addr, align 4
  store i32 %prune, i32* %prune.addr, align 4
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_BoxNeighbors_struct*, %struct.hypre_BoxNeighbors_struct** %neighbors.addr, align 8
  %boxes1 = getelementptr inbounds %struct.hypre_BoxNeighbors_struct, %struct.hypre_BoxNeighbors_struct* %0, i32 0, i32 0
  %1 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes1, align 8
  store %struct.hypre_BoxArray_struct* %1, %struct.hypre_BoxArray_struct** %boxes, align 8
  %2 = load %struct.hypre_BoxNeighbors_struct*, %struct.hypre_BoxNeighbors_struct** %neighbors.addr, align 8
  %procs2 = getelementptr inbounds %struct.hypre_BoxNeighbors_struct, %struct.hypre_BoxNeighbors_struct* %2, i32 0, i32 1
  %3 = load i32*, i32** %procs2, align 8
  store i32* %3, i32** %procs, align 8
  %4 = load %struct.hypre_BoxNeighbors_struct*, %struct.hypre_BoxNeighbors_struct** %neighbors.addr, align 8
  %ids3 = getelementptr inbounds %struct.hypre_BoxNeighbors_struct, %struct.hypre_BoxNeighbors_struct* %4, i32 0, i32 2
  %5 = load i32*, i32** %ids3, align 8
  store i32* %5, i32** %ids, align 8
  %6 = load %struct.hypre_BoxNeighbors_struct*, %struct.hypre_BoxNeighbors_struct** %neighbors.addr, align 8
  %first_local4 = getelementptr inbounds %struct.hypre_BoxNeighbors_struct, %struct.hypre_BoxNeighbors_struct* %6, i32 0, i32 3
  %7 = load i32, i32* %first_local4, align 4
  store i32 %7, i32* %first_local, align 4
  %8 = load %struct.hypre_BoxNeighbors_struct*, %struct.hypre_BoxNeighbors_struct** %neighbors.addr, align 8
  %num_local5 = getelementptr inbounds %struct.hypre_BoxNeighbors_struct, %struct.hypre_BoxNeighbors_struct* %8, i32 0, i32 4
  %9 = load i32, i32* %num_local5, align 4
  store i32 %9, i32* %num_local, align 4
  %10 = load %struct.hypre_BoxNeighbors_struct*, %struct.hypre_BoxNeighbors_struct** %neighbors.addr, align 8
  %num_periodic6 = getelementptr inbounds %struct.hypre_BoxNeighbors_struct, %struct.hypre_BoxNeighbors_struct* %10, i32 0, i32 5
  %11 = load i32, i32* %num_periodic6, align 4
  store i32 %11, i32* %num_periodic, align 4
  store i32 0, i32* %inew, align 4
  store i32 0, i32* %num_boxes, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.105, %entry
  %12 = load i32, i32* %i, align 4
  %13 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %size = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %13, i32 0, i32 1
  %14 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %12, %14
  br i1 %cmp, label %for.body, label %for.end.107

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %keep_box, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.83, %for.body
  %15 = load i32, i32* %j, align 4
  %16 = load i32, i32* %num_local, align 4
  %17 = load i32, i32* %num_periodic, align 4
  %add = add nsw i32 %16, %17
  %cmp8 = icmp slt i32 %15, %add
  br i1 %cmp8, label %for.body.9, label %for.end.85

for.body.9:                                       ; preds = %for.cond.7
  %18 = load i32, i32* %first_local, align 4
  %19 = load i32, i32* %j, align 4
  %add10 = add nsw i32 %18, %19
  store i32 %add10, i32* %ilocal, align 4
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %ilocal, align 4
  %cmp11 = icmp ne i32 %20, %21
  br i1 %cmp11, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.9
  %22 = load i32, i32* %ilocal, align 4
  %idxprom = sext i32 %22 to i64
  %23 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %boxes12 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %23, i32 0, i32 0
  %24 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes12, align 8
  %arrayidx = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %24, i64 %idxprom
  store %struct.hypre_Box_struct* %arrayidx, %struct.hypre_Box_struct** %local_box, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %25 to i64
  %26 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %boxes14 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %26, i32 0, i32 0
  %27 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes14, align 8
  %arrayidx15 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %27, i64 %idxprom13
  store %struct.hypre_Box_struct* %arrayidx15, %struct.hypre_Box_struct** %neighbor_box, align 8
  store i32 0, i32* %distance, align 4
  store i32 0, i32* %d, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc, %if.then
  %28 = load i32, i32* %d, align 4
  %cmp17 = icmp slt i32 %28, 3
  br i1 %cmp17, label %for.body.18, label %for.end

for.body.18:                                      ; preds = %for.cond.16
  %29 = load i32, i32* %d, align 4
  %idxprom19 = sext i32 %29 to i64
  %arrayidx20 = getelementptr inbounds [3 x i32], [3 x i32]* %distance_index, i32 0, i64 %idxprom19
  store i32 0, i32* %arrayidx20, align 4
  %30 = load i32, i32* %d, align 4
  %idxprom21 = sext i32 %30 to i64
  %31 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %neighbor_box, align 8
  %imin = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %31, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i64 %idxprom21
  %32 = load i32, i32* %arrayidx22, align 4
  %33 = load i32, i32* %d, align 4
  %idxprom23 = sext i32 %33 to i64
  %34 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %local_box, align 8
  %imax = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %34, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 %idxprom23
  %35 = load i32, i32* %arrayidx24, align 4
  %sub = sub nsw i32 %32, %35
  store i32 %sub, i32* %diff, align 4
  %36 = load i32, i32* %diff, align 4
  %cmp25 = icmp sgt i32 %36, 0
  br i1 %cmp25, label %if.then.26, label %if.end

if.then.26:                                       ; preds = %for.body.18
  %37 = load i32, i32* %d, align 4
  %idxprom27 = sext i32 %37 to i64
  %arrayidx28 = getelementptr inbounds [3 x i32], [3 x i32]* %distance_index, i32 0, i64 %idxprom27
  store i32 1, i32* %arrayidx28, align 4
  %38 = load i32, i32* %distance, align 4
  %39 = load i32, i32* %diff, align 4
  %cmp29 = icmp slt i32 %38, %39
  br i1 %cmp29, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.26
  %40 = load i32, i32* %diff, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.26
  %41 = load i32, i32* %distance, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %40, %cond.true ], [ %41, %cond.false ]
  store i32 %cond, i32* %distance, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end, %for.body.18
  %42 = load i32, i32* %d, align 4
  %idxprom30 = sext i32 %42 to i64
  %43 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %local_box, align 8
  %imin31 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %43, i32 0, i32 0
  %arrayidx32 = getelementptr inbounds [3 x i32], [3 x i32]* %imin31, i32 0, i64 %idxprom30
  %44 = load i32, i32* %arrayidx32, align 4
  %45 = load i32, i32* %d, align 4
  %idxprom33 = sext i32 %45 to i64
  %46 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %neighbor_box, align 8
  %imax34 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %46, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [3 x i32], [3 x i32]* %imax34, i32 0, i64 %idxprom33
  %47 = load i32, i32* %arrayidx35, align 4
  %sub36 = sub nsw i32 %44, %47
  store i32 %sub36, i32* %diff, align 4
  %48 = load i32, i32* %diff, align 4
  %cmp37 = icmp sgt i32 %48, 0
  br i1 %cmp37, label %if.then.38, label %if.end.46

if.then.38:                                       ; preds = %if.end
  %49 = load i32, i32* %d, align 4
  %idxprom39 = sext i32 %49 to i64
  %arrayidx40 = getelementptr inbounds [3 x i32], [3 x i32]* %distance_index, i32 0, i64 %idxprom39
  store i32 -1, i32* %arrayidx40, align 4
  %50 = load i32, i32* %distance, align 4
  %51 = load i32, i32* %diff, align 4
  %cmp41 = icmp slt i32 %50, %51
  br i1 %cmp41, label %cond.true.42, label %cond.false.43

cond.true.42:                                     ; preds = %if.then.38
  %52 = load i32, i32* %diff, align 4
  br label %cond.end.44

cond.false.43:                                    ; preds = %if.then.38
  %53 = load i32, i32* %distance, align 4
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.false.43, %cond.true.42
  %cond45 = phi i32 [ %52, %cond.true.42 ], [ %53, %cond.false.43 ]
  store i32 %cond45, i32* %distance, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %cond.end.44, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.46
  %54 = load i32, i32* %d, align 4
  %inc = add nsw i32 %54, 1
  store i32 %inc, i32* %d, align 4
  br label %for.cond.16

for.end:                                          ; preds = %for.cond.16
  %55 = load i32, i32* %distance, align 4
  %56 = load i32, i32* %max_distance.addr, align 4
  %cmp47 = icmp sle i32 %55, %56
  br i1 %cmp47, label %if.then.48, label %if.end.81

if.then.48:                                       ; preds = %for.end
  store i32 1, i32* %keep_box, align 4
  %57 = load i32, i32* %j, align 4
  %58 = load i32, i32* %num_local, align 4
  %cmp49 = icmp slt i32 %57, %58
  br i1 %cmp49, label %if.then.50, label %if.end.80

if.then.50:                                       ; preds = %if.then.48
  %59 = load i32, i32* %num_boxes, align 4
  %call = call i32 @hypre_RankLinkCreate(i32 %59, %struct.hypre_RankLink_struct** %rank_link)
  %arrayidx51 = getelementptr inbounds [3 x i32], [3 x i32]* %distance_index, i32 0, i64 2
  %60 = load i32, i32* %arrayidx51, align 4
  %add52 = add nsw i32 %60, 1
  %idxprom53 = sext i32 %add52 to i64
  %arrayidx54 = getelementptr inbounds [3 x i32], [3 x i32]* %distance_index, i32 0, i64 1
  %61 = load i32, i32* %arrayidx54, align 4
  %add55 = add nsw i32 %61, 1
  %idxprom56 = sext i32 %add55 to i64
  %arrayidx57 = getelementptr inbounds [3 x i32], [3 x i32]* %distance_index, i32 0, i64 0
  %62 = load i32, i32* %arrayidx57, align 4
  %add58 = add nsw i32 %62, 1
  %idxprom59 = sext i32 %add58 to i64
  %63 = load i32, i32* %j, align 4
  %idxprom60 = sext i32 %63 to i64
  %64 = load %struct.hypre_BoxNeighbors_struct*, %struct.hypre_BoxNeighbors_struct** %neighbors.addr, align 8
  %rank_links = getelementptr inbounds %struct.hypre_BoxNeighbors_struct, %struct.hypre_BoxNeighbors_struct* %64, i32 0, i32 6
  %65 = load [3 x [3 x [3 x %struct.hypre_RankLink_struct*]]]*, [3 x [3 x [3 x %struct.hypre_RankLink_struct*]]]** %rank_links, align 8
  %arrayidx61 = getelementptr inbounds [3 x [3 x [3 x %struct.hypre_RankLink_struct*]]], [3 x [3 x [3 x %struct.hypre_RankLink_struct*]]]* %65, i64 %idxprom60
  %arrayidx62 = getelementptr inbounds [3 x [3 x [3 x %struct.hypre_RankLink_struct*]]], [3 x [3 x [3 x %struct.hypre_RankLink_struct*]]]* %arrayidx61, i32 0, i64 %idxprom59
  %arrayidx63 = getelementptr inbounds [3 x [3 x %struct.hypre_RankLink_struct*]], [3 x [3 x %struct.hypre_RankLink_struct*]]* %arrayidx62, i32 0, i64 %idxprom56
  %arrayidx64 = getelementptr inbounds [3 x %struct.hypre_RankLink_struct*], [3 x %struct.hypre_RankLink_struct*]* %arrayidx63, i32 0, i64 %idxprom53
  %66 = load %struct.hypre_RankLink_struct*, %struct.hypre_RankLink_struct** %arrayidx64, align 8
  %67 = load %struct.hypre_RankLink_struct*, %struct.hypre_RankLink_struct** %rank_link, align 8
  %next = getelementptr inbounds %struct.hypre_RankLink_struct, %struct.hypre_RankLink_struct* %67, i32 0, i32 1
  store %struct.hypre_RankLink_struct* %66, %struct.hypre_RankLink_struct** %next, align 8
  %68 = load %struct.hypre_RankLink_struct*, %struct.hypre_RankLink_struct** %rank_link, align 8
  %arrayidx65 = getelementptr inbounds [3 x i32], [3 x i32]* %distance_index, i32 0, i64 2
  %69 = load i32, i32* %arrayidx65, align 4
  %add66 = add nsw i32 %69, 1
  %idxprom67 = sext i32 %add66 to i64
  %arrayidx68 = getelementptr inbounds [3 x i32], [3 x i32]* %distance_index, i32 0, i64 1
  %70 = load i32, i32* %arrayidx68, align 4
  %add69 = add nsw i32 %70, 1
  %idxprom70 = sext i32 %add69 to i64
  %arrayidx71 = getelementptr inbounds [3 x i32], [3 x i32]* %distance_index, i32 0, i64 0
  %71 = load i32, i32* %arrayidx71, align 4
  %add72 = add nsw i32 %71, 1
  %idxprom73 = sext i32 %add72 to i64
  %72 = load i32, i32* %j, align 4
  %idxprom74 = sext i32 %72 to i64
  %73 = load %struct.hypre_BoxNeighbors_struct*, %struct.hypre_BoxNeighbors_struct** %neighbors.addr, align 8
  %rank_links75 = getelementptr inbounds %struct.hypre_BoxNeighbors_struct, %struct.hypre_BoxNeighbors_struct* %73, i32 0, i32 6
  %74 = load [3 x [3 x [3 x %struct.hypre_RankLink_struct*]]]*, [3 x [3 x [3 x %struct.hypre_RankLink_struct*]]]** %rank_links75, align 8
  %arrayidx76 = getelementptr inbounds [3 x [3 x [3 x %struct.hypre_RankLink_struct*]]], [3 x [3 x [3 x %struct.hypre_RankLink_struct*]]]* %74, i64 %idxprom74
  %arrayidx77 = getelementptr inbounds [3 x [3 x [3 x %struct.hypre_RankLink_struct*]]], [3 x [3 x [3 x %struct.hypre_RankLink_struct*]]]* %arrayidx76, i32 0, i64 %idxprom73
  %arrayidx78 = getelementptr inbounds [3 x [3 x %struct.hypre_RankLink_struct*]], [3 x [3 x %struct.hypre_RankLink_struct*]]* %arrayidx77, i32 0, i64 %idxprom70
  %arrayidx79 = getelementptr inbounds [3 x %struct.hypre_RankLink_struct*], [3 x %struct.hypre_RankLink_struct*]* %arrayidx78, i32 0, i64 %idxprom67
  store %struct.hypre_RankLink_struct* %68, %struct.hypre_RankLink_struct** %arrayidx79, align 8
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.50, %if.then.48
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %for.end
  br label %if.end.82

if.else:                                          ; preds = %for.body.9
  store i32 1, i32* %keep_box, align 4
  br label %if.end.82

if.end.82:                                        ; preds = %if.else, %if.end.81
  br label %for.inc.83

for.inc.83:                                       ; preds = %if.end.82
  %75 = load i32, i32* %j, align 4
  %inc84 = add nsw i32 %75, 1
  store i32 %inc84, i32* %j, align 4
  br label %for.cond.7

for.end.85:                                       ; preds = %for.cond.7
  %76 = load i32, i32* %prune.addr, align 4
  %tobool = icmp ne i32 %76, 0
  br i1 %tobool, label %if.then.86, label %if.else.102

if.then.86:                                       ; preds = %for.end.85
  %77 = load i32, i32* %keep_box, align 4
  %tobool87 = icmp ne i32 %77, 0
  br i1 %tobool87, label %if.then.88, label %if.end.101

if.then.88:                                       ; preds = %if.then.86
  %78 = load i32, i32* %i, align 4
  %idxprom89 = sext i32 %78 to i64
  %79 = load i32*, i32** %procs, align 8
  %arrayidx90 = getelementptr inbounds i32, i32* %79, i64 %idxprom89
  %80 = load i32, i32* %arrayidx90, align 4
  %sub91 = sub nsw i32 0, %80
  %81 = load i32, i32* %i, align 4
  %idxprom92 = sext i32 %81 to i64
  %82 = load i32*, i32** %procs, align 8
  %arrayidx93 = getelementptr inbounds i32, i32* %82, i64 %idxprom92
  store i32 %sub91, i32* %arrayidx93, align 4
  %83 = load i32, i32* %inew, align 4
  %84 = load i32, i32* %i, align 4
  %cmp94 = icmp slt i32 %83, %84
  br i1 %cmp94, label %if.then.95, label %if.end.98

if.then.95:                                       ; preds = %if.then.88
  %85 = load i32, i32* %i, align 4
  %86 = load i32, i32* %inew, align 4
  %idxprom96 = sext i32 %86 to i64
  %87 = load i32*, i32** %procs, align 8
  %arrayidx97 = getelementptr inbounds i32, i32* %87, i64 %idxprom96
  store i32 %85, i32* %arrayidx97, align 4
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.95, %if.then.88
  %88 = load i32, i32* %i, align 4
  %add99 = add nsw i32 %88, 1
  store i32 %add99, i32* %inew, align 4
  %89 = load i32, i32* %num_boxes, align 4
  %inc100 = add nsw i32 %89, 1
  store i32 %inc100, i32* %num_boxes, align 4
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.98, %if.then.86
  br label %if.end.104

if.else.102:                                      ; preds = %for.end.85
  %90 = load i32, i32* %num_boxes, align 4
  %inc103 = add nsw i32 %90, 1
  store i32 %inc103, i32* %num_boxes, align 4
  br label %if.end.104

if.end.104:                                       ; preds = %if.else.102, %if.end.101
  br label %for.inc.105

for.inc.105:                                      ; preds = %if.end.104
  %91 = load i32, i32* %i, align 4
  %inc106 = add nsw i32 %91, 1
  store i32 %inc106, i32* %i, align 4
  br label %for.cond

for.end.107:                                      ; preds = %for.cond
  %92 = load i32, i32* %prune.addr, align 4
  %tobool108 = icmp ne i32 %92, 0
  br i1 %tobool108, label %if.then.109, label %if.end.196

if.then.109:                                      ; preds = %for.end.107
  store i32 0, i32* %i, align 4
  store i32 0, i32* %inew, align 4
  br label %for.cond.110

for.cond.110:                                     ; preds = %for.inc.193, %if.then.109
  %93 = load i32, i32* %inew, align 4
  %94 = load i32, i32* %num_boxes, align 4
  %cmp111 = icmp slt i32 %93, %94
  br i1 %cmp111, label %for.body.112, label %for.end.195

for.body.112:                                     ; preds = %for.cond.110
  %95 = load i32, i32* %i, align 4
  %idxprom113 = sext i32 %95 to i64
  %96 = load i32*, i32** %procs, align 8
  %arrayidx114 = getelementptr inbounds i32, i32* %96, i64 %idxprom113
  %97 = load i32, i32* %arrayidx114, align 4
  %cmp115 = icmp sgt i32 %97, 0
  br i1 %cmp115, label %if.then.116, label %if.end.119

if.then.116:                                      ; preds = %for.body.112
  %98 = load i32, i32* %i, align 4
  %idxprom117 = sext i32 %98 to i64
  %99 = load i32*, i32** %procs, align 8
  %arrayidx118 = getelementptr inbounds i32, i32* %99, i64 %idxprom117
  %100 = load i32, i32* %arrayidx118, align 4
  store i32 %100, i32* %i, align 4
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.116, %for.body.112
  %101 = load i32, i32* %i, align 4
  %idxprom120 = sext i32 %101 to i64
  %102 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %boxes121 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %102, i32 0, i32 0
  %103 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes121, align 8
  %arrayidx122 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %103, i64 %idxprom120
  %imin123 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx122, i32 0, i32 0
  %arrayidx124 = getelementptr inbounds [3 x i32], [3 x i32]* %imin123, i32 0, i64 0
  %104 = load i32, i32* %arrayidx124, align 4
  %105 = load i32, i32* %inew, align 4
  %idxprom125 = sext i32 %105 to i64
  %106 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %boxes126 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %106, i32 0, i32 0
  %107 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes126, align 8
  %arrayidx127 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %107, i64 %idxprom125
  %imin128 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx127, i32 0, i32 0
  %arrayidx129 = getelementptr inbounds [3 x i32], [3 x i32]* %imin128, i32 0, i64 0
  store i32 %104, i32* %arrayidx129, align 4
  %108 = load i32, i32* %i, align 4
  %idxprom130 = sext i32 %108 to i64
  %109 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %boxes131 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %109, i32 0, i32 0
  %110 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes131, align 8
  %arrayidx132 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %110, i64 %idxprom130
  %imin133 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx132, i32 0, i32 0
  %arrayidx134 = getelementptr inbounds [3 x i32], [3 x i32]* %imin133, i32 0, i64 1
  %111 = load i32, i32* %arrayidx134, align 4
  %112 = load i32, i32* %inew, align 4
  %idxprom135 = sext i32 %112 to i64
  %113 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %boxes136 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %113, i32 0, i32 0
  %114 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes136, align 8
  %arrayidx137 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %114, i64 %idxprom135
  %imin138 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx137, i32 0, i32 0
  %arrayidx139 = getelementptr inbounds [3 x i32], [3 x i32]* %imin138, i32 0, i64 1
  store i32 %111, i32* %arrayidx139, align 4
  %115 = load i32, i32* %i, align 4
  %idxprom140 = sext i32 %115 to i64
  %116 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %boxes141 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %116, i32 0, i32 0
  %117 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes141, align 8
  %arrayidx142 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %117, i64 %idxprom140
  %imin143 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx142, i32 0, i32 0
  %arrayidx144 = getelementptr inbounds [3 x i32], [3 x i32]* %imin143, i32 0, i64 2
  %118 = load i32, i32* %arrayidx144, align 4
  %119 = load i32, i32* %inew, align 4
  %idxprom145 = sext i32 %119 to i64
  %120 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %boxes146 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %120, i32 0, i32 0
  %121 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes146, align 8
  %arrayidx147 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %121, i64 %idxprom145
  %imin148 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx147, i32 0, i32 0
  %arrayidx149 = getelementptr inbounds [3 x i32], [3 x i32]* %imin148, i32 0, i64 2
  store i32 %118, i32* %arrayidx149, align 4
  %122 = load i32, i32* %i, align 4
  %idxprom150 = sext i32 %122 to i64
  %123 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %boxes151 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %123, i32 0, i32 0
  %124 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes151, align 8
  %arrayidx152 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %124, i64 %idxprom150
  %imax153 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx152, i32 0, i32 1
  %arrayidx154 = getelementptr inbounds [3 x i32], [3 x i32]* %imax153, i32 0, i64 0
  %125 = load i32, i32* %arrayidx154, align 4
  %126 = load i32, i32* %inew, align 4
  %idxprom155 = sext i32 %126 to i64
  %127 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %boxes156 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %127, i32 0, i32 0
  %128 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes156, align 8
  %arrayidx157 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %128, i64 %idxprom155
  %imax158 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx157, i32 0, i32 1
  %arrayidx159 = getelementptr inbounds [3 x i32], [3 x i32]* %imax158, i32 0, i64 0
  store i32 %125, i32* %arrayidx159, align 4
  %129 = load i32, i32* %i, align 4
  %idxprom160 = sext i32 %129 to i64
  %130 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %boxes161 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %130, i32 0, i32 0
  %131 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes161, align 8
  %arrayidx162 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %131, i64 %idxprom160
  %imax163 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx162, i32 0, i32 1
  %arrayidx164 = getelementptr inbounds [3 x i32], [3 x i32]* %imax163, i32 0, i64 1
  %132 = load i32, i32* %arrayidx164, align 4
  %133 = load i32, i32* %inew, align 4
  %idxprom165 = sext i32 %133 to i64
  %134 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %boxes166 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %134, i32 0, i32 0
  %135 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes166, align 8
  %arrayidx167 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %135, i64 %idxprom165
  %imax168 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx167, i32 0, i32 1
  %arrayidx169 = getelementptr inbounds [3 x i32], [3 x i32]* %imax168, i32 0, i64 1
  store i32 %132, i32* %arrayidx169, align 4
  %136 = load i32, i32* %i, align 4
  %idxprom170 = sext i32 %136 to i64
  %137 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %boxes171 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %137, i32 0, i32 0
  %138 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes171, align 8
  %arrayidx172 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %138, i64 %idxprom170
  %imax173 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx172, i32 0, i32 1
  %arrayidx174 = getelementptr inbounds [3 x i32], [3 x i32]* %imax173, i32 0, i64 2
  %139 = load i32, i32* %arrayidx174, align 4
  %140 = load i32, i32* %inew, align 4
  %idxprom175 = sext i32 %140 to i64
  %141 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %boxes176 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %141, i32 0, i32 0
  %142 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes176, align 8
  %arrayidx177 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %142, i64 %idxprom175
  %imax178 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %arrayidx177, i32 0, i32 1
  %arrayidx179 = getelementptr inbounds [3 x i32], [3 x i32]* %imax178, i32 0, i64 2
  store i32 %139, i32* %arrayidx179, align 4
  %143 = load i32, i32* %i, align 4
  %idxprom180 = sext i32 %143 to i64
  %144 = load i32*, i32** %procs, align 8
  %arrayidx181 = getelementptr inbounds i32, i32* %144, i64 %idxprom180
  %145 = load i32, i32* %arrayidx181, align 4
  %sub182 = sub nsw i32 0, %145
  %146 = load i32, i32* %inew, align 4
  %idxprom183 = sext i32 %146 to i64
  %147 = load i32*, i32** %procs, align 8
  %arrayidx184 = getelementptr inbounds i32, i32* %147, i64 %idxprom183
  store i32 %sub182, i32* %arrayidx184, align 4
  %148 = load i32, i32* %i, align 4
  %idxprom185 = sext i32 %148 to i64
  %149 = load i32*, i32** %ids, align 8
  %arrayidx186 = getelementptr inbounds i32, i32* %149, i64 %idxprom185
  %150 = load i32, i32* %arrayidx186, align 4
  %151 = load i32, i32* %inew, align 4
  %idxprom187 = sext i32 %151 to i64
  %152 = load i32*, i32** %ids, align 8
  %arrayidx188 = getelementptr inbounds i32, i32* %152, i64 %idxprom187
  store i32 %150, i32* %arrayidx188, align 4
  %153 = load i32, i32* %i, align 4
  %154 = load i32, i32* %first_local, align 4
  %cmp189 = icmp eq i32 %153, %154
  br i1 %cmp189, label %if.then.190, label %if.end.191

if.then.190:                                      ; preds = %if.end.119
  %155 = load i32, i32* %inew, align 4
  store i32 %155, i32* %first_local, align 4
  br label %if.end.191

if.end.191:                                       ; preds = %if.then.190, %if.end.119
  %156 = load i32, i32* %i, align 4
  %inc192 = add nsw i32 %156, 1
  store i32 %inc192, i32* %i, align 4
  br label %for.inc.193

for.inc.193:                                      ; preds = %if.end.191
  %157 = load i32, i32* %inew, align 4
  %inc194 = add nsw i32 %157, 1
  store i32 %inc194, i32* %inew, align 4
  br label %for.cond.110

for.end.195:                                      ; preds = %for.cond.110
  br label %if.end.196

if.end.196:                                       ; preds = %for.end.195, %for.end.107
  %158 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %159 = load i32, i32* %num_boxes, align 4
  %call197 = call i32 @hypre_BoxArraySetSize(%struct.hypre_BoxArray_struct* %158, i32 %159)
  %160 = load i32, i32* %first_local, align 4
  %161 = load %struct.hypre_BoxNeighbors_struct*, %struct.hypre_BoxNeighbors_struct** %neighbors.addr, align 8
  %first_local198 = getelementptr inbounds %struct.hypre_BoxNeighbors_struct, %struct.hypre_BoxNeighbors_struct* %161, i32 0, i32 3
  store i32 %160, i32* %first_local198, align 4
  %162 = load i32, i32* %ierr, align 4
  ret i32 %162
}

declare i32 @hypre_BoxArraySetSize(%struct.hypre_BoxArray_struct*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_BoxNeighborsDestroy(%struct.hypre_BoxNeighbors_struct* %neighbors) #0 {
entry:
  %neighbors.addr = alloca %struct.hypre_BoxNeighbors_struct*, align 8
  %rank_link = alloca %struct.hypre_RankLink_struct*, align 8
  %next_rank_link = alloca %struct.hypre_RankLink_struct*, align 8
  %b = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %ierr = alloca i32, align 4
  store %struct.hypre_BoxNeighbors_struct* %neighbors, %struct.hypre_BoxNeighbors_struct** %neighbors.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_BoxNeighbors_struct*, %struct.hypre_BoxNeighbors_struct** %neighbors.addr, align 8
  %tobool = icmp ne %struct.hypre_BoxNeighbors_struct* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.25, %if.then
  %1 = load i32, i32* %b, align 4
  %2 = load %struct.hypre_BoxNeighbors_struct*, %struct.hypre_BoxNeighbors_struct** %neighbors.addr, align 8
  %num_local = getelementptr inbounds %struct.hypre_BoxNeighbors_struct, %struct.hypre_BoxNeighbors_struct* %2, i32 0, i32 4
  %3 = load i32, i32* %num_local, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end.27

for.body:                                         ; preds = %for.cond
  store i32 -1, i32* %k, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.22, %for.body
  %4 = load i32, i32* %k, align 4
  %cmp2 = icmp sle i32 %4, 1
  br i1 %cmp2, label %for.body.3, label %for.end.24

for.body.3:                                       ; preds = %for.cond.1
  store i32 -1, i32* %j, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.19, %for.body.3
  %5 = load i32, i32* %j, align 4
  %cmp5 = icmp sle i32 %5, 1
  br i1 %cmp5, label %for.body.6, label %for.end.21

for.body.6:                                       ; preds = %for.cond.4
  store i32 -1, i32* %i, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %for.body.6
  %6 = load i32, i32* %i, align 4
  %cmp8 = icmp sle i32 %6, 1
  br i1 %cmp8, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.7
  %7 = load i32, i32* %k, align 4
  %add = add nsw i32 %7, 1
  %idxprom = sext i32 %add to i64
  %8 = load i32, i32* %j, align 4
  %add10 = add nsw i32 %8, 1
  %idxprom11 = sext i32 %add10 to i64
  %9 = load i32, i32* %i, align 4
  %add12 = add nsw i32 %9, 1
  %idxprom13 = sext i32 %add12 to i64
  %10 = load i32, i32* %b, align 4
  %idxprom14 = sext i32 %10 to i64
  %11 = load %struct.hypre_BoxNeighbors_struct*, %struct.hypre_BoxNeighbors_struct** %neighbors.addr, align 8
  %rank_links = getelementptr inbounds %struct.hypre_BoxNeighbors_struct, %struct.hypre_BoxNeighbors_struct* %11, i32 0, i32 6
  %12 = load [3 x [3 x [3 x %struct.hypre_RankLink_struct*]]]*, [3 x [3 x [3 x %struct.hypre_RankLink_struct*]]]** %rank_links, align 8
  %arrayidx = getelementptr inbounds [3 x [3 x [3 x %struct.hypre_RankLink_struct*]]], [3 x [3 x [3 x %struct.hypre_RankLink_struct*]]]* %12, i64 %idxprom14
  %arrayidx15 = getelementptr inbounds [3 x [3 x [3 x %struct.hypre_RankLink_struct*]]], [3 x [3 x [3 x %struct.hypre_RankLink_struct*]]]* %arrayidx, i32 0, i64 %idxprom13
  %arrayidx16 = getelementptr inbounds [3 x [3 x %struct.hypre_RankLink_struct*]], [3 x [3 x %struct.hypre_RankLink_struct*]]* %arrayidx15, i32 0, i64 %idxprom11
  %arrayidx17 = getelementptr inbounds [3 x %struct.hypre_RankLink_struct*], [3 x %struct.hypre_RankLink_struct*]* %arrayidx16, i32 0, i64 %idxprom
  %13 = load %struct.hypre_RankLink_struct*, %struct.hypre_RankLink_struct** %arrayidx17, align 8
  store %struct.hypre_RankLink_struct* %13, %struct.hypre_RankLink_struct** %rank_link, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body.9
  %14 = load %struct.hypre_RankLink_struct*, %struct.hypre_RankLink_struct** %rank_link, align 8
  %tobool18 = icmp ne %struct.hypre_RankLink_struct* %14, null
  br i1 %tobool18, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load %struct.hypre_RankLink_struct*, %struct.hypre_RankLink_struct** %rank_link, align 8
  %next = getelementptr inbounds %struct.hypre_RankLink_struct, %struct.hypre_RankLink_struct* %15, i32 0, i32 1
  %16 = load %struct.hypre_RankLink_struct*, %struct.hypre_RankLink_struct** %next, align 8
  store %struct.hypre_RankLink_struct* %16, %struct.hypre_RankLink_struct** %next_rank_link, align 8
  %17 = load %struct.hypre_RankLink_struct*, %struct.hypre_RankLink_struct** %rank_link, align 8
  %call = call i32 @hypre_RankLinkDestroy(%struct.hypre_RankLink_struct* %17)
  %18 = load %struct.hypre_RankLink_struct*, %struct.hypre_RankLink_struct** %next_rank_link, align 8
  store %struct.hypre_RankLink_struct* %18, %struct.hypre_RankLink_struct** %rank_link, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.7

for.end:                                          ; preds = %for.cond.7
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.end
  %20 = load i32, i32* %j, align 4
  %inc20 = add nsw i32 %20, 1
  store i32 %inc20, i32* %j, align 4
  br label %for.cond.4

for.end.21:                                       ; preds = %for.cond.4
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.end.21
  %21 = load i32, i32* %k, align 4
  %inc23 = add nsw i32 %21, 1
  store i32 %inc23, i32* %k, align 4
  br label %for.cond.1

for.end.24:                                       ; preds = %for.cond.1
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.end.24
  %22 = load i32, i32* %b, align 4
  %inc26 = add nsw i32 %22, 1
  store i32 %inc26, i32* %b, align 4
  br label %for.cond

for.end.27:                                       ; preds = %for.cond
  %23 = load %struct.hypre_BoxNeighbors_struct*, %struct.hypre_BoxNeighbors_struct** %neighbors.addr, align 8
  %boxes = getelementptr inbounds %struct.hypre_BoxNeighbors_struct, %struct.hypre_BoxNeighbors_struct* %23, i32 0, i32 0
  %24 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %boxes, align 8
  %call28 = call i32 @hypre_BoxArrayDestroy(%struct.hypre_BoxArray_struct* %24)
  %25 = load %struct.hypre_BoxNeighbors_struct*, %struct.hypre_BoxNeighbors_struct** %neighbors.addr, align 8
  %procs = getelementptr inbounds %struct.hypre_BoxNeighbors_struct, %struct.hypre_BoxNeighbors_struct* %25, i32 0, i32 1
  %26 = load i32*, i32** %procs, align 8
  %27 = bitcast i32* %26 to i8*
  call void @hypre_Free(i8* %27)
  %28 = load %struct.hypre_BoxNeighbors_struct*, %struct.hypre_BoxNeighbors_struct** %neighbors.addr, align 8
  %procs29 = getelementptr inbounds %struct.hypre_BoxNeighbors_struct, %struct.hypre_BoxNeighbors_struct* %28, i32 0, i32 1
  store i32* null, i32** %procs29, align 8
  %29 = load %struct.hypre_BoxNeighbors_struct*, %struct.hypre_BoxNeighbors_struct** %neighbors.addr, align 8
  %ids = getelementptr inbounds %struct.hypre_BoxNeighbors_struct, %struct.hypre_BoxNeighbors_struct* %29, i32 0, i32 2
  %30 = load i32*, i32** %ids, align 8
  %31 = bitcast i32* %30 to i8*
  call void @hypre_Free(i8* %31)
  %32 = load %struct.hypre_BoxNeighbors_struct*, %struct.hypre_BoxNeighbors_struct** %neighbors.addr, align 8
  %ids30 = getelementptr inbounds %struct.hypre_BoxNeighbors_struct, %struct.hypre_BoxNeighbors_struct* %32, i32 0, i32 2
  store i32* null, i32** %ids30, align 8
  %33 = load %struct.hypre_BoxNeighbors_struct*, %struct.hypre_BoxNeighbors_struct** %neighbors.addr, align 8
  %rank_links31 = getelementptr inbounds %struct.hypre_BoxNeighbors_struct, %struct.hypre_BoxNeighbors_struct* %33, i32 0, i32 6
  %34 = load [3 x [3 x [3 x %struct.hypre_RankLink_struct*]]]*, [3 x [3 x [3 x %struct.hypre_RankLink_struct*]]]** %rank_links31, align 8
  %35 = bitcast [3 x [3 x [3 x %struct.hypre_RankLink_struct*]]]* %34 to i8*
  call void @hypre_Free(i8* %35)
  %36 = load %struct.hypre_BoxNeighbors_struct*, %struct.hypre_BoxNeighbors_struct** %neighbors.addr, align 8
  %rank_links32 = getelementptr inbounds %struct.hypre_BoxNeighbors_struct, %struct.hypre_BoxNeighbors_struct* %36, i32 0, i32 6
  store [3 x [3 x [3 x %struct.hypre_RankLink_struct*]]]* null, [3 x [3 x [3 x %struct.hypre_RankLink_struct*]]]** %rank_links32, align 8
  %37 = load %struct.hypre_BoxNeighbors_struct*, %struct.hypre_BoxNeighbors_struct** %neighbors.addr, align 8
  %38 = bitcast %struct.hypre_BoxNeighbors_struct* %37 to i8*
  call void @hypre_Free(i8* %38)
  store %struct.hypre_BoxNeighbors_struct* null, %struct.hypre_BoxNeighbors_struct** %neighbors.addr, align 8
  br label %if.end

if.end:                                           ; preds = %for.end.27, %entry
  %39 = load i32, i32* %ierr, align 4
  ret i32 %39
}

declare i32 @hypre_BoxArrayDestroy(%struct.hypre_BoxArray_struct*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
