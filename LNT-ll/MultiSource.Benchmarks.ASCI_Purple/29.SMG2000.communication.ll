; ModuleID = './MultiSource.Benchmarks.ASCI_Purple/29.SMG2000.communication.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hypre_CommPkg_struct = type { i32, i32, i32, i32, i32*, i32*, %struct.hypre_CommType_struct**, %struct.hypre_CommType_struct**, i32*, i32*, %struct.hypre_CommType_struct*, %struct.hypre_CommType_struct* }
%struct.hypre_CommType_struct = type { %struct.hypre_CommTypeEntry_struct**, i32 }
%struct.hypre_CommTypeEntry_struct = type { [3 x i32], [3 x i32], i32, i32, [4 x i32], [4 x i32] }
%struct.hypre_BoxArrayArray_struct = type { %struct.hypre_BoxArray_struct**, i32 }
%struct.hypre_BoxArray_struct = type { %struct.hypre_Box_struct*, i32, i32 }
%struct.hypre_Box_struct = type { [3 x i32], [3 x i32] }
%struct.hypre_CommHandle_struct = type { %struct.hypre_CommPkg_struct*, double*, double*, i32, i32*, %struct.hypre_MPI_Status* }
%struct.hypre_MPI_Status = type { i32 }

; Function Attrs: nounwind uwtable
define %struct.hypre_CommPkg_struct* @hypre_CommPkgCreate(%struct.hypre_BoxArrayArray_struct* %send_boxes, %struct.hypre_BoxArrayArray_struct* %recv_boxes, i32* %send_stride, i32* %recv_stride, %struct.hypre_BoxArray_struct* %send_data_space, %struct.hypre_BoxArray_struct* %recv_data_space, i32** %send_processes, i32** %recv_processes, i32 %num_values, i32 %comm, i32* %periodic) #0 {
entry:
  %send_boxes.addr = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %recv_boxes.addr = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %send_stride.addr = alloca i32*, align 8
  %recv_stride.addr = alloca i32*, align 8
  %send_data_space.addr = alloca %struct.hypre_BoxArray_struct*, align 8
  %recv_data_space.addr = alloca %struct.hypre_BoxArray_struct*, align 8
  %send_processes.addr = alloca i32**, align 8
  %recv_processes.addr = alloca i32**, align 8
  %num_values.addr = alloca i32, align 4
  %comm.addr = alloca i32, align 4
  %periodic.addr = alloca i32*, align 8
  %comm_pkg = alloca %struct.hypre_CommPkg_struct*, align 8
  %num_sends = alloca i32, align 4
  %send_procs = alloca i32*, align 8
  %send_types = alloca %struct.hypre_CommType_struct**, align 8
  %num_recvs = alloca i32, align 4
  %recv_procs = alloca i32*, align 8
  %recv_types = alloca %struct.hypre_CommType_struct**, align 8
  %copy_from_type = alloca %struct.hypre_CommType_struct*, align 8
  %copy_to_type = alloca %struct.hypre_CommType_struct*, align 8
  %i = alloca i32, align 4
  store %struct.hypre_BoxArrayArray_struct* %send_boxes, %struct.hypre_BoxArrayArray_struct** %send_boxes.addr, align 8
  store %struct.hypre_BoxArrayArray_struct* %recv_boxes, %struct.hypre_BoxArrayArray_struct** %recv_boxes.addr, align 8
  store i32* %send_stride, i32** %send_stride.addr, align 8
  store i32* %recv_stride, i32** %recv_stride.addr, align 8
  store %struct.hypre_BoxArray_struct* %send_data_space, %struct.hypre_BoxArray_struct** %send_data_space.addr, align 8
  store %struct.hypre_BoxArray_struct* %recv_data_space, %struct.hypre_BoxArray_struct** %recv_data_space.addr, align 8
  store i32** %send_processes, i32*** %send_processes.addr, align 8
  store i32** %recv_processes, i32*** %recv_processes.addr, align 8
  store i32 %num_values, i32* %num_values.addr, align 4
  store i32 %comm, i32* %comm.addr, align 4
  store i32* %periodic, i32** %periodic.addr, align 8
  %call = call i8* @hypre_CAlloc(i32 1, i32 80)
  %0 = bitcast i8* %call to %struct.hypre_CommPkg_struct*
  store %struct.hypre_CommPkg_struct* %0, %struct.hypre_CommPkg_struct** %comm_pkg, align 8
  %1 = load i32, i32* %num_values.addr, align 4
  %2 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg, align 8
  %num_values1 = getelementptr inbounds %struct.hypre_CommPkg_struct, %struct.hypre_CommPkg_struct* %2, i32 0, i32 0
  store i32 %1, i32* %num_values1, align 4
  %3 = load i32, i32* %comm.addr, align 4
  %4 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg, align 8
  %comm2 = getelementptr inbounds %struct.hypre_CommPkg_struct, %struct.hypre_CommPkg_struct* %4, i32 0, i32 1
  store i32 %3, i32* %comm2, align 4
  %5 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %send_boxes.addr, align 8
  %6 = load i32*, i32** %send_stride.addr, align 8
  %7 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %send_data_space.addr, align 8
  %8 = load i32**, i32*** %send_processes.addr, align 8
  %9 = load i32, i32* %num_values.addr, align 4
  %10 = load i32, i32* %comm.addr, align 4
  %11 = load i32*, i32** %periodic.addr, align 8
  %call3 = call i32 @hypre_CommPkgCreateInfo(%struct.hypre_BoxArrayArray_struct* %5, i32* %6, %struct.hypre_BoxArray_struct* %7, i32** %8, i32 %9, i32 %10, i32* %11, i32* %num_sends, i32** %send_procs, %struct.hypre_CommType_struct*** %send_types, %struct.hypre_CommType_struct** %copy_from_type)
  %12 = load i32, i32* %num_sends, align 4
  %13 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg, align 8
  %num_sends4 = getelementptr inbounds %struct.hypre_CommPkg_struct, %struct.hypre_CommPkg_struct* %13, i32 0, i32 2
  store i32 %12, i32* %num_sends4, align 4
  %14 = load i32*, i32** %send_procs, align 8
  %15 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg, align 8
  %send_procs5 = getelementptr inbounds %struct.hypre_CommPkg_struct, %struct.hypre_CommPkg_struct* %15, i32 0, i32 4
  store i32* %14, i32** %send_procs5, align 8
  %16 = load %struct.hypre_CommType_struct**, %struct.hypre_CommType_struct*** %send_types, align 8
  %17 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg, align 8
  %send_types6 = getelementptr inbounds %struct.hypre_CommPkg_struct, %struct.hypre_CommPkg_struct* %17, i32 0, i32 6
  store %struct.hypre_CommType_struct** %16, %struct.hypre_CommType_struct*** %send_types6, align 8
  %18 = load %struct.hypre_CommType_struct*, %struct.hypre_CommType_struct** %copy_from_type, align 8
  %19 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg, align 8
  %copy_from_type7 = getelementptr inbounds %struct.hypre_CommPkg_struct, %struct.hypre_CommPkg_struct* %19, i32 0, i32 10
  store %struct.hypre_CommType_struct* %18, %struct.hypre_CommType_struct** %copy_from_type7, align 8
  %20 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %recv_boxes.addr, align 8
  %21 = load i32*, i32** %recv_stride.addr, align 8
  %22 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %recv_data_space.addr, align 8
  %23 = load i32**, i32*** %recv_processes.addr, align 8
  %24 = load i32, i32* %num_values.addr, align 4
  %25 = load i32, i32* %comm.addr, align 4
  %26 = load i32*, i32** %periodic.addr, align 8
  %call8 = call i32 @hypre_CommPkgCreateInfo(%struct.hypre_BoxArrayArray_struct* %20, i32* %21, %struct.hypre_BoxArray_struct* %22, i32** %23, i32 %24, i32 %25, i32* %26, i32* %num_recvs, i32** %recv_procs, %struct.hypre_CommType_struct*** %recv_types, %struct.hypre_CommType_struct** %copy_to_type)
  %27 = load i32, i32* %num_recvs, align 4
  %28 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg, align 8
  %num_recvs9 = getelementptr inbounds %struct.hypre_CommPkg_struct, %struct.hypre_CommPkg_struct* %28, i32 0, i32 3
  store i32 %27, i32* %num_recvs9, align 4
  %29 = load i32*, i32** %recv_procs, align 8
  %30 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg, align 8
  %recv_procs10 = getelementptr inbounds %struct.hypre_CommPkg_struct, %struct.hypre_CommPkg_struct* %30, i32 0, i32 5
  store i32* %29, i32** %recv_procs10, align 8
  %31 = load %struct.hypre_CommType_struct**, %struct.hypre_CommType_struct*** %recv_types, align 8
  %32 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg, align 8
  %recv_types11 = getelementptr inbounds %struct.hypre_CommPkg_struct, %struct.hypre_CommPkg_struct* %32, i32 0, i32 7
  store %struct.hypre_CommType_struct** %31, %struct.hypre_CommType_struct*** %recv_types11, align 8
  %33 = load %struct.hypre_CommType_struct*, %struct.hypre_CommType_struct** %copy_to_type, align 8
  %34 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg, align 8
  %copy_to_type12 = getelementptr inbounds %struct.hypre_CommPkg_struct, %struct.hypre_CommPkg_struct* %34, i32 0, i32 11
  store %struct.hypre_CommType_struct* %33, %struct.hypre_CommType_struct** %copy_to_type12, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %35 = load i32, i32* %i, align 4
  %36 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %send_boxes.addr, align 8
  %size = getelementptr inbounds %struct.hypre_BoxArrayArray_struct, %struct.hypre_BoxArrayArray_struct* %36, i32 0, i32 1
  %37 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %35, %37
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load i32, i32* %i, align 4
  %idxprom = sext i32 %38 to i64
  %39 = load i32**, i32*** %send_processes.addr, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %39, i64 %idxprom
  %40 = load i32*, i32** %arrayidx, align 8
  %41 = bitcast i32* %40 to i8*
  call void @hypre_Free(i8* %41)
  %42 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %42 to i64
  %43 = load i32**, i32*** %send_processes.addr, align 8
  %arrayidx14 = getelementptr inbounds i32*, i32** %43, i64 %idxprom13
  store i32* null, i32** %arrayidx14, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %44 = load i32, i32* %i, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %45 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %send_boxes.addr, align 8
  %call15 = call i32 @hypre_BoxArrayArrayDestroy(%struct.hypre_BoxArrayArray_struct* %45)
  %46 = load i32**, i32*** %send_processes.addr, align 8
  %47 = bitcast i32** %46 to i8*
  call void @hypre_Free(i8* %47)
  store i32** null, i32*** %send_processes.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.24, %for.end
  %48 = load i32, i32* %i, align 4
  %49 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %recv_boxes.addr, align 8
  %size17 = getelementptr inbounds %struct.hypre_BoxArrayArray_struct, %struct.hypre_BoxArrayArray_struct* %49, i32 0, i32 1
  %50 = load i32, i32* %size17, align 4
  %cmp18 = icmp slt i32 %48, %50
  br i1 %cmp18, label %for.body.19, label %for.end.26

for.body.19:                                      ; preds = %for.cond.16
  %51 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %51 to i64
  %52 = load i32**, i32*** %recv_processes.addr, align 8
  %arrayidx21 = getelementptr inbounds i32*, i32** %52, i64 %idxprom20
  %53 = load i32*, i32** %arrayidx21, align 8
  %54 = bitcast i32* %53 to i8*
  call void @hypre_Free(i8* %54)
  %55 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %55 to i64
  %56 = load i32**, i32*** %recv_processes.addr, align 8
  %arrayidx23 = getelementptr inbounds i32*, i32** %56, i64 %idxprom22
  store i32* null, i32** %arrayidx23, align 8
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.body.19
  %57 = load i32, i32* %i, align 4
  %inc25 = add nsw i32 %57, 1
  store i32 %inc25, i32* %i, align 4
  br label %for.cond.16

for.end.26:                                       ; preds = %for.cond.16
  %58 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %recv_boxes.addr, align 8
  %call27 = call i32 @hypre_BoxArrayArrayDestroy(%struct.hypre_BoxArrayArray_struct* %58)
  %59 = load i32**, i32*** %recv_processes.addr, align 8
  %60 = bitcast i32** %59 to i8*
  call void @hypre_Free(i8* %60)
  store i32** null, i32*** %recv_processes.addr, align 8
  %61 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg, align 8
  %call28 = call i32 @hypre_CommPkgCommit(%struct.hypre_CommPkg_struct* %61)
  store i32 0, i32* %i, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.37, %for.end.26
  %62 = load i32, i32* %i, align 4
  %63 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg, align 8
  %num_sends30 = getelementptr inbounds %struct.hypre_CommPkg_struct, %struct.hypre_CommPkg_struct* %63, i32 0, i32 2
  %64 = load i32, i32* %num_sends30, align 4
  %cmp31 = icmp slt i32 %62, %64
  br i1 %cmp31, label %for.body.32, label %for.end.39

for.body.32:                                      ; preds = %for.cond.29
  %65 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %65 to i64
  %66 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg, align 8
  %send_types34 = getelementptr inbounds %struct.hypre_CommPkg_struct, %struct.hypre_CommPkg_struct* %66, i32 0, i32 6
  %67 = load %struct.hypre_CommType_struct**, %struct.hypre_CommType_struct*** %send_types34, align 8
  %arrayidx35 = getelementptr inbounds %struct.hypre_CommType_struct*, %struct.hypre_CommType_struct** %67, i64 %idxprom33
  %68 = load %struct.hypre_CommType_struct*, %struct.hypre_CommType_struct** %arrayidx35, align 8
  %call36 = call i32 @hypre_CommTypeDestroy(%struct.hypre_CommType_struct* %68)
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.body.32
  %69 = load i32, i32* %i, align 4
  %inc38 = add nsw i32 %69, 1
  store i32 %inc38, i32* %i, align 4
  br label %for.cond.29

for.end.39:                                       ; preds = %for.cond.29
  %70 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg, align 8
  %send_types40 = getelementptr inbounds %struct.hypre_CommPkg_struct, %struct.hypre_CommPkg_struct* %70, i32 0, i32 6
  %71 = load %struct.hypre_CommType_struct**, %struct.hypre_CommType_struct*** %send_types40, align 8
  %72 = bitcast %struct.hypre_CommType_struct** %71 to i8*
  call void @hypre_Free(i8* %72)
  %73 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg, align 8
  %send_types41 = getelementptr inbounds %struct.hypre_CommPkg_struct, %struct.hypre_CommPkg_struct* %73, i32 0, i32 6
  store %struct.hypre_CommType_struct** null, %struct.hypre_CommType_struct*** %send_types41, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.50, %for.end.39
  %74 = load i32, i32* %i, align 4
  %75 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg, align 8
  %num_recvs43 = getelementptr inbounds %struct.hypre_CommPkg_struct, %struct.hypre_CommPkg_struct* %75, i32 0, i32 3
  %76 = load i32, i32* %num_recvs43, align 4
  %cmp44 = icmp slt i32 %74, %76
  br i1 %cmp44, label %for.body.45, label %for.end.52

for.body.45:                                      ; preds = %for.cond.42
  %77 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %77 to i64
  %78 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg, align 8
  %recv_types47 = getelementptr inbounds %struct.hypre_CommPkg_struct, %struct.hypre_CommPkg_struct* %78, i32 0, i32 7
  %79 = load %struct.hypre_CommType_struct**, %struct.hypre_CommType_struct*** %recv_types47, align 8
  %arrayidx48 = getelementptr inbounds %struct.hypre_CommType_struct*, %struct.hypre_CommType_struct** %79, i64 %idxprom46
  %80 = load %struct.hypre_CommType_struct*, %struct.hypre_CommType_struct** %arrayidx48, align 8
  %call49 = call i32 @hypre_CommTypeDestroy(%struct.hypre_CommType_struct* %80)
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.body.45
  %81 = load i32, i32* %i, align 4
  %inc51 = add nsw i32 %81, 1
  store i32 %inc51, i32* %i, align 4
  br label %for.cond.42

for.end.52:                                       ; preds = %for.cond.42
  %82 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg, align 8
  %recv_types53 = getelementptr inbounds %struct.hypre_CommPkg_struct, %struct.hypre_CommPkg_struct* %82, i32 0, i32 7
  %83 = load %struct.hypre_CommType_struct**, %struct.hypre_CommType_struct*** %recv_types53, align 8
  %84 = bitcast %struct.hypre_CommType_struct** %83 to i8*
  call void @hypre_Free(i8* %84)
  %85 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg, align 8
  %recv_types54 = getelementptr inbounds %struct.hypre_CommPkg_struct, %struct.hypre_CommPkg_struct* %85, i32 0, i32 7
  store %struct.hypre_CommType_struct** null, %struct.hypre_CommType_struct*** %recv_types54, align 8
  %86 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg, align 8
  ret %struct.hypre_CommPkg_struct* %86
}

declare i8* @hypre_CAlloc(i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_CommPkgCreateInfo(%struct.hypre_BoxArrayArray_struct* %boxes, i32* %stride, %struct.hypre_BoxArray_struct* %data_space, i32** %processes, i32 %num_values, i32 %comm, i32* %periodic, i32* %num_comms_ptr, i32** %comm_processes_ptr, %struct.hypre_CommType_struct*** %comm_types_ptr, %struct.hypre_CommType_struct** %copy_type_ptr) #0 {
entry:
  %boxes.addr = alloca %struct.hypre_BoxArrayArray_struct*, align 8
  %stride.addr = alloca i32*, align 8
  %data_space.addr = alloca %struct.hypre_BoxArray_struct*, align 8
  %processes.addr = alloca i32**, align 8
  %num_values.addr = alloca i32, align 4
  %comm.addr = alloca i32, align 4
  %periodic.addr = alloca i32*, align 8
  %num_comms_ptr.addr = alloca i32*, align 8
  %comm_processes_ptr.addr = alloca i32**, align 8
  %comm_types_ptr.addr = alloca %struct.hypre_CommType_struct***, align 8
  %copy_type_ptr.addr = alloca %struct.hypre_CommType_struct**, align 8
  %num_comms = alloca i32, align 4
  %comm_processes = alloca i32*, align 8
  %comm_types = alloca %struct.hypre_CommType_struct**, align 8
  %copy_type = alloca %struct.hypre_CommType_struct*, align 8
  %comm_entries = alloca %struct.hypre_CommTypeEntry_struct***, align 8
  %num_entries = alloca i32*, align 8
  %box_array = alloca %struct.hypre_BoxArray_struct*, align 8
  %box = alloca %struct.hypre_Box_struct*, align 8
  %data_box = alloca %struct.hypre_Box_struct*, align 8
  %data_box_offset = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %p = alloca i32, align 4
  %m = alloca i32, align 4
  %num_procs = alloca i32, align 4
  %my_proc = alloca i32, align 4
  %ierr = alloca i32, align 4
  store %struct.hypre_BoxArrayArray_struct* %boxes, %struct.hypre_BoxArrayArray_struct** %boxes.addr, align 8
  store i32* %stride, i32** %stride.addr, align 8
  store %struct.hypre_BoxArray_struct* %data_space, %struct.hypre_BoxArray_struct** %data_space.addr, align 8
  store i32** %processes, i32*** %processes.addr, align 8
  store i32 %num_values, i32* %num_values.addr, align 4
  store i32 %comm, i32* %comm.addr, align 4
  store i32* %periodic, i32** %periodic.addr, align 8
  store i32* %num_comms_ptr, i32** %num_comms_ptr.addr, align 8
  store i32** %comm_processes_ptr, i32*** %comm_processes_ptr.addr, align 8
  store %struct.hypre_CommType_struct*** %comm_types_ptr, %struct.hypre_CommType_struct**** %comm_types_ptr.addr, align 8
  store %struct.hypre_CommType_struct** %copy_type_ptr, %struct.hypre_CommType_struct*** %copy_type_ptr.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load i32, i32* %comm.addr, align 4
  %call = call i32 @hypre_MPI_Comm_size(i32 %0, i32* %num_procs)
  %1 = load i32, i32* %comm.addr, align 4
  %call1 = call i32 @hypre_MPI_Comm_rank(i32 %1, i32* %my_proc)
  %2 = load i32, i32* %num_procs, align 4
  %call2 = call i8* @hypre_CAlloc(i32 %2, i32 4)
  %3 = bitcast i8* %call2 to i32*
  store i32* %3, i32** %num_entries, align 8
  store i32 0, i32* %num_comms, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.69, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %boxes.addr, align 8
  %size = getelementptr inbounds %struct.hypre_BoxArrayArray_struct, %struct.hypre_BoxArrayArray_struct* %5, i32 0, i32 1
  %6 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end.71

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %boxes.addr, align 8
  %box_arrays = getelementptr inbounds %struct.hypre_BoxArrayArray_struct, %struct.hypre_BoxArrayArray_struct* %8, i32 0, i32 0
  %9 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %box_arrays, align 8
  %arrayidx = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %9, i64 %idxprom
  %10 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx, align 8
  store %struct.hypre_BoxArray_struct* %10, %struct.hypre_BoxArray_struct** %box_array, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %11 = load i32, i32* %j, align 4
  %12 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array, align 8
  %size4 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %12, i32 0, i32 1
  %13 = load i32, i32* %size4, align 4
  %cmp5 = icmp slt i32 %11, %13
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.3
  %14 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %14 to i64
  %15 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array, align 8
  %boxes8 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %15, i32 0, i32 0
  %16 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes8, align 8
  %arrayidx9 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %16, i64 %idxprom7
  store %struct.hypre_Box_struct* %arrayidx9, %struct.hypre_Box_struct** %box, align 8
  %17 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %17 to i64
  %18 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %18 to i64
  %19 = load i32**, i32*** %processes.addr, align 8
  %arrayidx12 = getelementptr inbounds i32*, i32** %19, i64 %idxprom11
  %20 = load i32*, i32** %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %20, i64 %idxprom10
  %21 = load i32, i32* %arrayidx13, align 4
  store i32 %21, i32* %p, align 4
  %22 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %22, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 0
  %23 = load i32, i32* %arrayidx14, align 4
  %24 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %24, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i64 0
  %25 = load i32, i32* %arrayidx15, align 4
  %sub = sub nsw i32 %23, %25
  %add = add nsw i32 %sub, 1
  %cmp16 = icmp slt i32 0, %add
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.6
  %26 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax17 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %26, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [3 x i32], [3 x i32]* %imax17, i32 0, i64 0
  %27 = load i32, i32* %arrayidx18, align 4
  %28 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin19 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %28, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [3 x i32], [3 x i32]* %imin19, i32 0, i64 0
  %29 = load i32, i32* %arrayidx20, align 4
  %sub21 = sub nsw i32 %27, %29
  %add22 = add nsw i32 %sub21, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body.6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add22, %cond.true ], [ 0, %cond.false ]
  %30 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax23 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %30, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [3 x i32], [3 x i32]* %imax23, i32 0, i64 1
  %31 = load i32, i32* %arrayidx24, align 4
  %32 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin25 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %32, i32 0, i32 0
  %arrayidx26 = getelementptr inbounds [3 x i32], [3 x i32]* %imin25, i32 0, i64 1
  %33 = load i32, i32* %arrayidx26, align 4
  %sub27 = sub nsw i32 %31, %33
  %add28 = add nsw i32 %sub27, 1
  %cmp29 = icmp slt i32 0, %add28
  br i1 %cmp29, label %cond.true.30, label %cond.false.37

cond.true.30:                                     ; preds = %cond.end
  %34 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax31 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %34, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [3 x i32], [3 x i32]* %imax31, i32 0, i64 1
  %35 = load i32, i32* %arrayidx32, align 4
  %36 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin33 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %36, i32 0, i32 0
  %arrayidx34 = getelementptr inbounds [3 x i32], [3 x i32]* %imin33, i32 0, i64 1
  %37 = load i32, i32* %arrayidx34, align 4
  %sub35 = sub nsw i32 %35, %37
  %add36 = add nsw i32 %sub35, 1
  br label %cond.end.38

cond.false.37:                                    ; preds = %cond.end
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.false.37, %cond.true.30
  %cond39 = phi i32 [ %add36, %cond.true.30 ], [ 0, %cond.false.37 ]
  %mul = mul nsw i32 %cond, %cond39
  %38 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax40 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %38, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [3 x i32], [3 x i32]* %imax40, i32 0, i64 2
  %39 = load i32, i32* %arrayidx41, align 4
  %40 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin42 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %40, i32 0, i32 0
  %arrayidx43 = getelementptr inbounds [3 x i32], [3 x i32]* %imin42, i32 0, i64 2
  %41 = load i32, i32* %arrayidx43, align 4
  %sub44 = sub nsw i32 %39, %41
  %add45 = add nsw i32 %sub44, 1
  %cmp46 = icmp slt i32 0, %add45
  br i1 %cmp46, label %cond.true.47, label %cond.false.54

cond.true.47:                                     ; preds = %cond.end.38
  %42 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax48 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %42, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [3 x i32], [3 x i32]* %imax48, i32 0, i64 2
  %43 = load i32, i32* %arrayidx49, align 4
  %44 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin50 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %44, i32 0, i32 0
  %arrayidx51 = getelementptr inbounds [3 x i32], [3 x i32]* %imin50, i32 0, i64 2
  %45 = load i32, i32* %arrayidx51, align 4
  %sub52 = sub nsw i32 %43, %45
  %add53 = add nsw i32 %sub52, 1
  br label %cond.end.55

cond.false.54:                                    ; preds = %cond.end.38
  br label %cond.end.55

cond.end.55:                                      ; preds = %cond.false.54, %cond.true.47
  %cond56 = phi i32 [ %add53, %cond.true.47 ], [ 0, %cond.false.54 ]
  %mul57 = mul nsw i32 %mul, %cond56
  %cmp58 = icmp ne i32 %mul57, 0
  br i1 %cmp58, label %if.then, label %if.end.67

if.then:                                          ; preds = %cond.end.55
  %46 = load i32, i32* %p, align 4
  %idxprom59 = sext i32 %46 to i64
  %47 = load i32*, i32** %num_entries, align 8
  %arrayidx60 = getelementptr inbounds i32, i32* %47, i64 %idxprom59
  %48 = load i32, i32* %arrayidx60, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %arrayidx60, align 4
  %49 = load i32, i32* %p, align 4
  %idxprom61 = sext i32 %49 to i64
  %50 = load i32*, i32** %num_entries, align 8
  %arrayidx62 = getelementptr inbounds i32, i32* %50, i64 %idxprom61
  %51 = load i32, i32* %arrayidx62, align 4
  %cmp63 = icmp eq i32 %51, 1
  br i1 %cmp63, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %52 = load i32, i32* %p, align 4
  %53 = load i32, i32* %my_proc, align 4
  %cmp64 = icmp ne i32 %52, %53
  br i1 %cmp64, label %if.then.65, label %if.end

if.then.65:                                       ; preds = %land.lhs.true
  %54 = load i32, i32* %num_comms, align 4
  %inc66 = add nsw i32 %54, 1
  store i32 %inc66, i32* %num_comms, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.65, %land.lhs.true, %if.then
  br label %if.end.67

if.end.67:                                        ; preds = %if.end, %cond.end.55
  br label %for.inc

for.inc:                                          ; preds = %if.end.67
  %55 = load i32, i32* %j, align 4
  %inc68 = add nsw i32 %55, 1
  store i32 %inc68, i32* %j, align 4
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  br label %for.inc.69

for.inc.69:                                       ; preds = %for.end
  %56 = load i32, i32* %i, align 4
  %inc70 = add nsw i32 %56, 1
  store i32 %inc70, i32* %i, align 4
  br label %for.cond

for.end.71:                                       ; preds = %for.cond
  %57 = load i32, i32* %num_procs, align 4
  %call72 = call i8* @hypre_CAlloc(i32 %57, i32 8)
  %58 = bitcast i8* %call72 to %struct.hypre_CommTypeEntry_struct***
  store %struct.hypre_CommTypeEntry_struct*** %58, %struct.hypre_CommTypeEntry_struct**** %comm_entries, align 8
  %59 = load i32, i32* %num_comms, align 4
  %conv = sext i32 %59 to i64
  %mul73 = mul i64 4, %conv
  %conv74 = trunc i64 %mul73 to i32
  %call75 = call i8* @hypre_MAlloc(i32 %conv74)
  %60 = bitcast i8* %call75 to i32*
  store i32* %60, i32** %comm_processes, align 8
  store i32 0, i32* %m, align 4
  store i32 0, i32* %data_box_offset, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.250, %for.end.71
  %61 = load i32, i32* %i, align 4
  %62 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %boxes.addr, align 8
  %size77 = getelementptr inbounds %struct.hypre_BoxArrayArray_struct, %struct.hypre_BoxArrayArray_struct* %62, i32 0, i32 1
  %63 = load i32, i32* %size77, align 4
  %cmp78 = icmp slt i32 %61, %63
  br i1 %cmp78, label %for.body.80, label %for.end.252

for.body.80:                                      ; preds = %for.cond.76
  %64 = load i32, i32* %i, align 4
  %idxprom81 = sext i32 %64 to i64
  %65 = load %struct.hypre_BoxArrayArray_struct*, %struct.hypre_BoxArrayArray_struct** %boxes.addr, align 8
  %box_arrays82 = getelementptr inbounds %struct.hypre_BoxArrayArray_struct, %struct.hypre_BoxArrayArray_struct* %65, i32 0, i32 0
  %66 = load %struct.hypre_BoxArray_struct**, %struct.hypre_BoxArray_struct*** %box_arrays82, align 8
  %arrayidx83 = getelementptr inbounds %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %66, i64 %idxprom81
  %67 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %arrayidx83, align 8
  store %struct.hypre_BoxArray_struct* %67, %struct.hypre_BoxArray_struct** %box_array, align 8
  %68 = load i32, i32* %i, align 4
  %idxprom84 = sext i32 %68 to i64
  %69 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %data_space.addr, align 8
  %boxes85 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %69, i32 0, i32 0
  %70 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes85, align 8
  %arrayidx86 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %70, i64 %idxprom84
  store %struct.hypre_Box_struct* %arrayidx86, %struct.hypre_Box_struct** %data_box, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc.189, %for.body.80
  %71 = load i32, i32* %j, align 4
  %72 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array, align 8
  %size88 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %72, i32 0, i32 1
  %73 = load i32, i32* %size88, align 4
  %cmp89 = icmp slt i32 %71, %73
  br i1 %cmp89, label %for.body.91, label %for.end.191

for.body.91:                                      ; preds = %for.cond.87
  %74 = load i32, i32* %j, align 4
  %idxprom92 = sext i32 %74 to i64
  %75 = load %struct.hypre_BoxArray_struct*, %struct.hypre_BoxArray_struct** %box_array, align 8
  %boxes93 = getelementptr inbounds %struct.hypre_BoxArray_struct, %struct.hypre_BoxArray_struct* %75, i32 0, i32 0
  %76 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %boxes93, align 8
  %arrayidx94 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %76, i64 %idxprom92
  store %struct.hypre_Box_struct* %arrayidx94, %struct.hypre_Box_struct** %box, align 8
  %77 = load i32, i32* %j, align 4
  %idxprom95 = sext i32 %77 to i64
  %78 = load i32, i32* %i, align 4
  %idxprom96 = sext i32 %78 to i64
  %79 = load i32**, i32*** %processes.addr, align 8
  %arrayidx97 = getelementptr inbounds i32*, i32** %79, i64 %idxprom96
  %80 = load i32*, i32** %arrayidx97, align 8
  %arrayidx98 = getelementptr inbounds i32, i32* %80, i64 %idxprom95
  %81 = load i32, i32* %arrayidx98, align 4
  store i32 %81, i32* %p, align 4
  %82 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax99 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %82, i32 0, i32 1
  %arrayidx100 = getelementptr inbounds [3 x i32], [3 x i32]* %imax99, i32 0, i64 0
  %83 = load i32, i32* %arrayidx100, align 4
  %84 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin101 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %84, i32 0, i32 0
  %arrayidx102 = getelementptr inbounds [3 x i32], [3 x i32]* %imin101, i32 0, i64 0
  %85 = load i32, i32* %arrayidx102, align 4
  %sub103 = sub nsw i32 %83, %85
  %add104 = add nsw i32 %sub103, 1
  %cmp105 = icmp slt i32 0, %add104
  br i1 %cmp105, label %cond.true.107, label %cond.false.114

cond.true.107:                                    ; preds = %for.body.91
  %86 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax108 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %86, i32 0, i32 1
  %arrayidx109 = getelementptr inbounds [3 x i32], [3 x i32]* %imax108, i32 0, i64 0
  %87 = load i32, i32* %arrayidx109, align 4
  %88 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin110 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %88, i32 0, i32 0
  %arrayidx111 = getelementptr inbounds [3 x i32], [3 x i32]* %imin110, i32 0, i64 0
  %89 = load i32, i32* %arrayidx111, align 4
  %sub112 = sub nsw i32 %87, %89
  %add113 = add nsw i32 %sub112, 1
  br label %cond.end.115

cond.false.114:                                   ; preds = %for.body.91
  br label %cond.end.115

cond.end.115:                                     ; preds = %cond.false.114, %cond.true.107
  %cond116 = phi i32 [ %add113, %cond.true.107 ], [ 0, %cond.false.114 ]
  %90 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax117 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %90, i32 0, i32 1
  %arrayidx118 = getelementptr inbounds [3 x i32], [3 x i32]* %imax117, i32 0, i64 1
  %91 = load i32, i32* %arrayidx118, align 4
  %92 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin119 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %92, i32 0, i32 0
  %arrayidx120 = getelementptr inbounds [3 x i32], [3 x i32]* %imin119, i32 0, i64 1
  %93 = load i32, i32* %arrayidx120, align 4
  %sub121 = sub nsw i32 %91, %93
  %add122 = add nsw i32 %sub121, 1
  %cmp123 = icmp slt i32 0, %add122
  br i1 %cmp123, label %cond.true.125, label %cond.false.132

cond.true.125:                                    ; preds = %cond.end.115
  %94 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax126 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %94, i32 0, i32 1
  %arrayidx127 = getelementptr inbounds [3 x i32], [3 x i32]* %imax126, i32 0, i64 1
  %95 = load i32, i32* %arrayidx127, align 4
  %96 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin128 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %96, i32 0, i32 0
  %arrayidx129 = getelementptr inbounds [3 x i32], [3 x i32]* %imin128, i32 0, i64 1
  %97 = load i32, i32* %arrayidx129, align 4
  %sub130 = sub nsw i32 %95, %97
  %add131 = add nsw i32 %sub130, 1
  br label %cond.end.133

cond.false.132:                                   ; preds = %cond.end.115
  br label %cond.end.133

cond.end.133:                                     ; preds = %cond.false.132, %cond.true.125
  %cond134 = phi i32 [ %add131, %cond.true.125 ], [ 0, %cond.false.132 ]
  %mul135 = mul nsw i32 %cond116, %cond134
  %98 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax136 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %98, i32 0, i32 1
  %arrayidx137 = getelementptr inbounds [3 x i32], [3 x i32]* %imax136, i32 0, i64 2
  %99 = load i32, i32* %arrayidx137, align 4
  %100 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin138 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %100, i32 0, i32 0
  %arrayidx139 = getelementptr inbounds [3 x i32], [3 x i32]* %imin138, i32 0, i64 2
  %101 = load i32, i32* %arrayidx139, align 4
  %sub140 = sub nsw i32 %99, %101
  %add141 = add nsw i32 %sub140, 1
  %cmp142 = icmp slt i32 0, %add141
  br i1 %cmp142, label %cond.true.144, label %cond.false.151

cond.true.144:                                    ; preds = %cond.end.133
  %102 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imax145 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %102, i32 0, i32 1
  %arrayidx146 = getelementptr inbounds [3 x i32], [3 x i32]* %imax145, i32 0, i64 2
  %103 = load i32, i32* %arrayidx146, align 4
  %104 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %imin147 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %104, i32 0, i32 0
  %arrayidx148 = getelementptr inbounds [3 x i32], [3 x i32]* %imin147, i32 0, i64 2
  %105 = load i32, i32* %arrayidx148, align 4
  %sub149 = sub nsw i32 %103, %105
  %add150 = add nsw i32 %sub149, 1
  br label %cond.end.152

cond.false.151:                                   ; preds = %cond.end.133
  br label %cond.end.152

cond.end.152:                                     ; preds = %cond.false.151, %cond.true.144
  %cond153 = phi i32 [ %add150, %cond.true.144 ], [ 0, %cond.false.151 ]
  %mul154 = mul nsw i32 %mul135, %cond153
  %cmp155 = icmp ne i32 %mul154, 0
  br i1 %cmp155, label %if.then.157, label %if.end.188

if.then.157:                                      ; preds = %cond.end.152
  %106 = load i32, i32* %p, align 4
  %idxprom158 = sext i32 %106 to i64
  %107 = load %struct.hypre_CommTypeEntry_struct***, %struct.hypre_CommTypeEntry_struct**** %comm_entries, align 8
  %arrayidx159 = getelementptr inbounds %struct.hypre_CommTypeEntry_struct**, %struct.hypre_CommTypeEntry_struct*** %107, i64 %idxprom158
  %108 = load %struct.hypre_CommTypeEntry_struct**, %struct.hypre_CommTypeEntry_struct*** %arrayidx159, align 8
  %cmp160 = icmp eq %struct.hypre_CommTypeEntry_struct** %108, null
  br i1 %cmp160, label %if.then.162, label %if.end.177

if.then.162:                                      ; preds = %if.then.157
  %109 = load i32, i32* %p, align 4
  %idxprom163 = sext i32 %109 to i64
  %110 = load i32*, i32** %num_entries, align 8
  %arrayidx164 = getelementptr inbounds i32, i32* %110, i64 %idxprom163
  %111 = load i32, i32* %arrayidx164, align 4
  %call165 = call i8* @hypre_CAlloc(i32 %111, i32 8)
  %112 = bitcast i8* %call165 to %struct.hypre_CommTypeEntry_struct**
  %113 = load i32, i32* %p, align 4
  %idxprom166 = sext i32 %113 to i64
  %114 = load %struct.hypre_CommTypeEntry_struct***, %struct.hypre_CommTypeEntry_struct**** %comm_entries, align 8
  %arrayidx167 = getelementptr inbounds %struct.hypre_CommTypeEntry_struct**, %struct.hypre_CommTypeEntry_struct*** %114, i64 %idxprom166
  store %struct.hypre_CommTypeEntry_struct** %112, %struct.hypre_CommTypeEntry_struct*** %arrayidx167, align 8
  %115 = load i32, i32* %p, align 4
  %idxprom168 = sext i32 %115 to i64
  %116 = load i32*, i32** %num_entries, align 8
  %arrayidx169 = getelementptr inbounds i32, i32* %116, i64 %idxprom168
  store i32 0, i32* %arrayidx169, align 4
  %117 = load i32, i32* %p, align 4
  %118 = load i32, i32* %my_proc, align 4
  %cmp170 = icmp ne i32 %117, %118
  br i1 %cmp170, label %if.then.172, label %if.end.176

if.then.172:                                      ; preds = %if.then.162
  %119 = load i32, i32* %p, align 4
  %120 = load i32, i32* %m, align 4
  %idxprom173 = sext i32 %120 to i64
  %121 = load i32*, i32** %comm_processes, align 8
  %arrayidx174 = getelementptr inbounds i32, i32* %121, i64 %idxprom173
  store i32 %119, i32* %arrayidx174, align 4
  %122 = load i32, i32* %m, align 4
  %inc175 = add nsw i32 %122, 1
  store i32 %inc175, i32* %m, align 4
  br label %if.end.176

if.end.176:                                       ; preds = %if.then.172, %if.then.162
  br label %if.end.177

if.end.177:                                       ; preds = %if.end.176, %if.then.157
  %123 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box, align 8
  %124 = load i32*, i32** %stride.addr, align 8
  %125 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %126 = load i32, i32* %num_values.addr, align 4
  %127 = load i32, i32* %data_box_offset, align 4
  %call178 = call %struct.hypre_CommTypeEntry_struct* @hypre_CommTypeEntryCreate(%struct.hypre_Box_struct* %123, i32* %124, %struct.hypre_Box_struct* %125, i32 %126, i32 %127)
  %128 = load i32, i32* %p, align 4
  %idxprom179 = sext i32 %128 to i64
  %129 = load i32*, i32** %num_entries, align 8
  %arrayidx180 = getelementptr inbounds i32, i32* %129, i64 %idxprom179
  %130 = load i32, i32* %arrayidx180, align 4
  %idxprom181 = sext i32 %130 to i64
  %131 = load i32, i32* %p, align 4
  %idxprom182 = sext i32 %131 to i64
  %132 = load %struct.hypre_CommTypeEntry_struct***, %struct.hypre_CommTypeEntry_struct**** %comm_entries, align 8
  %arrayidx183 = getelementptr inbounds %struct.hypre_CommTypeEntry_struct**, %struct.hypre_CommTypeEntry_struct*** %132, i64 %idxprom182
  %133 = load %struct.hypre_CommTypeEntry_struct**, %struct.hypre_CommTypeEntry_struct*** %arrayidx183, align 8
  %arrayidx184 = getelementptr inbounds %struct.hypre_CommTypeEntry_struct*, %struct.hypre_CommTypeEntry_struct** %133, i64 %idxprom181
  store %struct.hypre_CommTypeEntry_struct* %call178, %struct.hypre_CommTypeEntry_struct** %arrayidx184, align 8
  %134 = load i32, i32* %p, align 4
  %idxprom185 = sext i32 %134 to i64
  %135 = load i32*, i32** %num_entries, align 8
  %arrayidx186 = getelementptr inbounds i32, i32* %135, i64 %idxprom185
  %136 = load i32, i32* %arrayidx186, align 4
  %inc187 = add nsw i32 %136, 1
  store i32 %inc187, i32* %arrayidx186, align 4
  br label %if.end.188

if.end.188:                                       ; preds = %if.end.177, %cond.end.152
  br label %for.inc.189

for.inc.189:                                      ; preds = %if.end.188
  %137 = load i32, i32* %j, align 4
  %inc190 = add nsw i32 %137, 1
  store i32 %inc190, i32* %j, align 4
  br label %for.cond.87

for.end.191:                                      ; preds = %for.cond.87
  %138 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax192 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %138, i32 0, i32 1
  %arrayidx193 = getelementptr inbounds [3 x i32], [3 x i32]* %imax192, i32 0, i64 0
  %139 = load i32, i32* %arrayidx193, align 4
  %140 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin194 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %140, i32 0, i32 0
  %arrayidx195 = getelementptr inbounds [3 x i32], [3 x i32]* %imin194, i32 0, i64 0
  %141 = load i32, i32* %arrayidx195, align 4
  %sub196 = sub nsw i32 %139, %141
  %add197 = add nsw i32 %sub196, 1
  %cmp198 = icmp slt i32 0, %add197
  br i1 %cmp198, label %cond.true.200, label %cond.false.207

cond.true.200:                                    ; preds = %for.end.191
  %142 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax201 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %142, i32 0, i32 1
  %arrayidx202 = getelementptr inbounds [3 x i32], [3 x i32]* %imax201, i32 0, i64 0
  %143 = load i32, i32* %arrayidx202, align 4
  %144 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin203 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %144, i32 0, i32 0
  %arrayidx204 = getelementptr inbounds [3 x i32], [3 x i32]* %imin203, i32 0, i64 0
  %145 = load i32, i32* %arrayidx204, align 4
  %sub205 = sub nsw i32 %143, %145
  %add206 = add nsw i32 %sub205, 1
  br label %cond.end.208

cond.false.207:                                   ; preds = %for.end.191
  br label %cond.end.208

cond.end.208:                                     ; preds = %cond.false.207, %cond.true.200
  %cond209 = phi i32 [ %add206, %cond.true.200 ], [ 0, %cond.false.207 ]
  %146 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax210 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %146, i32 0, i32 1
  %arrayidx211 = getelementptr inbounds [3 x i32], [3 x i32]* %imax210, i32 0, i64 1
  %147 = load i32, i32* %arrayidx211, align 4
  %148 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin212 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %148, i32 0, i32 0
  %arrayidx213 = getelementptr inbounds [3 x i32], [3 x i32]* %imin212, i32 0, i64 1
  %149 = load i32, i32* %arrayidx213, align 4
  %sub214 = sub nsw i32 %147, %149
  %add215 = add nsw i32 %sub214, 1
  %cmp216 = icmp slt i32 0, %add215
  br i1 %cmp216, label %cond.true.218, label %cond.false.225

cond.true.218:                                    ; preds = %cond.end.208
  %150 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax219 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %150, i32 0, i32 1
  %arrayidx220 = getelementptr inbounds [3 x i32], [3 x i32]* %imax219, i32 0, i64 1
  %151 = load i32, i32* %arrayidx220, align 4
  %152 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin221 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %152, i32 0, i32 0
  %arrayidx222 = getelementptr inbounds [3 x i32], [3 x i32]* %imin221, i32 0, i64 1
  %153 = load i32, i32* %arrayidx222, align 4
  %sub223 = sub nsw i32 %151, %153
  %add224 = add nsw i32 %sub223, 1
  br label %cond.end.226

cond.false.225:                                   ; preds = %cond.end.208
  br label %cond.end.226

cond.end.226:                                     ; preds = %cond.false.225, %cond.true.218
  %cond227 = phi i32 [ %add224, %cond.true.218 ], [ 0, %cond.false.225 ]
  %mul228 = mul nsw i32 %cond209, %cond227
  %154 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax229 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %154, i32 0, i32 1
  %arrayidx230 = getelementptr inbounds [3 x i32], [3 x i32]* %imax229, i32 0, i64 2
  %155 = load i32, i32* %arrayidx230, align 4
  %156 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin231 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %156, i32 0, i32 0
  %arrayidx232 = getelementptr inbounds [3 x i32], [3 x i32]* %imin231, i32 0, i64 2
  %157 = load i32, i32* %arrayidx232, align 4
  %sub233 = sub nsw i32 %155, %157
  %add234 = add nsw i32 %sub233, 1
  %cmp235 = icmp slt i32 0, %add234
  br i1 %cmp235, label %cond.true.237, label %cond.false.244

cond.true.237:                                    ; preds = %cond.end.226
  %158 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imax238 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %158, i32 0, i32 1
  %arrayidx239 = getelementptr inbounds [3 x i32], [3 x i32]* %imax238, i32 0, i64 2
  %159 = load i32, i32* %arrayidx239, align 4
  %160 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box, align 8
  %imin240 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %160, i32 0, i32 0
  %arrayidx241 = getelementptr inbounds [3 x i32], [3 x i32]* %imin240, i32 0, i64 2
  %161 = load i32, i32* %arrayidx241, align 4
  %sub242 = sub nsw i32 %159, %161
  %add243 = add nsw i32 %sub242, 1
  br label %cond.end.245

cond.false.244:                                   ; preds = %cond.end.226
  br label %cond.end.245

cond.end.245:                                     ; preds = %cond.false.244, %cond.true.237
  %cond246 = phi i32 [ %add243, %cond.true.237 ], [ 0, %cond.false.244 ]
  %mul247 = mul nsw i32 %mul228, %cond246
  %162 = load i32, i32* %num_values.addr, align 4
  %mul248 = mul nsw i32 %mul247, %162
  %163 = load i32, i32* %data_box_offset, align 4
  %add249 = add nsw i32 %163, %mul248
  store i32 %add249, i32* %data_box_offset, align 4
  br label %for.inc.250

for.inc.250:                                      ; preds = %cond.end.245
  %164 = load i32, i32* %i, align 4
  %inc251 = add nsw i32 %164, 1
  store i32 %inc251, i32* %i, align 4
  br label %for.cond.76

for.end.252:                                      ; preds = %for.cond.76
  %165 = load i32, i32* %num_comms, align 4
  %conv253 = sext i32 %165 to i64
  %mul254 = mul i64 8, %conv253
  %conv255 = trunc i64 %mul254 to i32
  %call256 = call i8* @hypre_MAlloc(i32 %conv255)
  %166 = bitcast i8* %call256 to %struct.hypre_CommType_struct**
  store %struct.hypre_CommType_struct** %166, %struct.hypre_CommType_struct*** %comm_types, align 8
  store i32 0, i32* %m, align 4
  br label %for.cond.257

for.cond.257:                                     ; preds = %for.inc.273, %for.end.252
  %167 = load i32, i32* %m, align 4
  %168 = load i32, i32* %num_comms, align 4
  %cmp258 = icmp slt i32 %167, %168
  br i1 %cmp258, label %for.body.260, label %for.end.275

for.body.260:                                     ; preds = %for.cond.257
  %169 = load i32, i32* %m, align 4
  %idxprom261 = sext i32 %169 to i64
  %170 = load i32*, i32** %comm_processes, align 8
  %arrayidx262 = getelementptr inbounds i32, i32* %170, i64 %idxprom261
  %171 = load i32, i32* %arrayidx262, align 4
  store i32 %171, i32* %p, align 4
  %172 = load i32, i32* %p, align 4
  %idxprom263 = sext i32 %172 to i64
  %173 = load %struct.hypre_CommTypeEntry_struct***, %struct.hypre_CommTypeEntry_struct**** %comm_entries, align 8
  %arrayidx264 = getelementptr inbounds %struct.hypre_CommTypeEntry_struct**, %struct.hypre_CommTypeEntry_struct*** %173, i64 %idxprom263
  %174 = load %struct.hypre_CommTypeEntry_struct**, %struct.hypre_CommTypeEntry_struct*** %arrayidx264, align 8
  %175 = load i32, i32* %p, align 4
  %idxprom265 = sext i32 %175 to i64
  %176 = load i32*, i32** %num_entries, align 8
  %arrayidx266 = getelementptr inbounds i32, i32* %176, i64 %idxprom265
  %177 = load i32, i32* %arrayidx266, align 4
  %call267 = call %struct.hypre_CommType_struct* @hypre_CommTypeCreate(%struct.hypre_CommTypeEntry_struct** %174, i32 %177)
  %178 = load i32, i32* %m, align 4
  %idxprom268 = sext i32 %178 to i64
  %179 = load %struct.hypre_CommType_struct**, %struct.hypre_CommType_struct*** %comm_types, align 8
  %arrayidx269 = getelementptr inbounds %struct.hypre_CommType_struct*, %struct.hypre_CommType_struct** %179, i64 %idxprom268
  store %struct.hypre_CommType_struct* %call267, %struct.hypre_CommType_struct** %arrayidx269, align 8
  %180 = load i32, i32* %m, align 4
  %idxprom270 = sext i32 %180 to i64
  %181 = load %struct.hypre_CommType_struct**, %struct.hypre_CommType_struct*** %comm_types, align 8
  %arrayidx271 = getelementptr inbounds %struct.hypre_CommType_struct*, %struct.hypre_CommType_struct** %181, i64 %idxprom270
  %182 = load %struct.hypre_CommType_struct*, %struct.hypre_CommType_struct** %arrayidx271, align 8
  %183 = load i32*, i32** %periodic.addr, align 8
  %call272 = call i32 @hypre_CommTypeSort(%struct.hypre_CommType_struct* %182, i32* %183)
  br label %for.inc.273

for.inc.273:                                      ; preds = %for.body.260
  %184 = load i32, i32* %m, align 4
  %inc274 = add nsw i32 %184, 1
  store i32 %inc274, i32* %m, align 4
  br label %for.cond.257

for.end.275:                                      ; preds = %for.cond.257
  %185 = load i32, i32* %my_proc, align 4
  %idxprom276 = sext i32 %185 to i64
  %186 = load %struct.hypre_CommTypeEntry_struct***, %struct.hypre_CommTypeEntry_struct**** %comm_entries, align 8
  %arrayidx277 = getelementptr inbounds %struct.hypre_CommTypeEntry_struct**, %struct.hypre_CommTypeEntry_struct*** %186, i64 %idxprom276
  %187 = load %struct.hypre_CommTypeEntry_struct**, %struct.hypre_CommTypeEntry_struct*** %arrayidx277, align 8
  %cmp278 = icmp ne %struct.hypre_CommTypeEntry_struct** %187, null
  br i1 %cmp278, label %if.then.280, label %if.else

if.then.280:                                      ; preds = %for.end.275
  %188 = load i32, i32* %my_proc, align 4
  store i32 %188, i32* %p, align 4
  %189 = load i32, i32* %p, align 4
  %idxprom281 = sext i32 %189 to i64
  %190 = load %struct.hypre_CommTypeEntry_struct***, %struct.hypre_CommTypeEntry_struct**** %comm_entries, align 8
  %arrayidx282 = getelementptr inbounds %struct.hypre_CommTypeEntry_struct**, %struct.hypre_CommTypeEntry_struct*** %190, i64 %idxprom281
  %191 = load %struct.hypre_CommTypeEntry_struct**, %struct.hypre_CommTypeEntry_struct*** %arrayidx282, align 8
  %192 = load i32, i32* %p, align 4
  %idxprom283 = sext i32 %192 to i64
  %193 = load i32*, i32** %num_entries, align 8
  %arrayidx284 = getelementptr inbounds i32, i32* %193, i64 %idxprom283
  %194 = load i32, i32* %arrayidx284, align 4
  %call285 = call %struct.hypre_CommType_struct* @hypre_CommTypeCreate(%struct.hypre_CommTypeEntry_struct** %191, i32 %194)
  store %struct.hypre_CommType_struct* %call285, %struct.hypre_CommType_struct** %copy_type, align 8
  %195 = load %struct.hypre_CommType_struct*, %struct.hypre_CommType_struct** %copy_type, align 8
  %196 = load i32*, i32** %periodic.addr, align 8
  %call286 = call i32 @hypre_CommTypeSort(%struct.hypre_CommType_struct* %195, i32* %196)
  br label %if.end.288

if.else:                                          ; preds = %for.end.275
  %call287 = call %struct.hypre_CommType_struct* @hypre_CommTypeCreate(%struct.hypre_CommTypeEntry_struct** null, i32 0)
  store %struct.hypre_CommType_struct* %call287, %struct.hypre_CommType_struct** %copy_type, align 8
  br label %if.end.288

if.end.288:                                       ; preds = %if.else, %if.then.280
  %197 = load %struct.hypre_CommTypeEntry_struct***, %struct.hypre_CommTypeEntry_struct**** %comm_entries, align 8
  %198 = bitcast %struct.hypre_CommTypeEntry_struct*** %197 to i8*
  call void @hypre_Free(i8* %198)
  store %struct.hypre_CommTypeEntry_struct*** null, %struct.hypre_CommTypeEntry_struct**** %comm_entries, align 8
  %199 = load i32*, i32** %num_entries, align 8
  %200 = bitcast i32* %199 to i8*
  call void @hypre_Free(i8* %200)
  store i32* null, i32** %num_entries, align 8
  %201 = load i32, i32* %num_comms, align 4
  %202 = load i32*, i32** %num_comms_ptr.addr, align 8
  store i32 %201, i32* %202, align 4
  %203 = load i32*, i32** %comm_processes, align 8
  %204 = load i32**, i32*** %comm_processes_ptr.addr, align 8
  store i32* %203, i32** %204, align 8
  %205 = load %struct.hypre_CommType_struct**, %struct.hypre_CommType_struct*** %comm_types, align 8
  %206 = load %struct.hypre_CommType_struct***, %struct.hypre_CommType_struct**** %comm_types_ptr.addr, align 8
  store %struct.hypre_CommType_struct** %205, %struct.hypre_CommType_struct*** %206, align 8
  %207 = load %struct.hypre_CommType_struct*, %struct.hypre_CommType_struct** %copy_type, align 8
  %208 = load %struct.hypre_CommType_struct**, %struct.hypre_CommType_struct*** %copy_type_ptr.addr, align 8
  store %struct.hypre_CommType_struct* %207, %struct.hypre_CommType_struct** %208, align 8
  %209 = load i32, i32* %ierr, align 4
  ret i32 %209
}

declare void @hypre_Free(i8*) #1

declare i32 @hypre_BoxArrayArrayDestroy(%struct.hypre_BoxArrayArray_struct*) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_CommPkgCommit(%struct.hypre_CommPkg_struct* %comm_pkg) #0 {
entry:
  %comm_pkg.addr = alloca %struct.hypre_CommPkg_struct*, align 8
  %ierr = alloca i32, align 4
  store %struct.hypre_CommPkg_struct* %comm_pkg, %struct.hypre_CommPkg_struct** %comm_pkg.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg.addr, align 8
  %num_sends = getelementptr inbounds %struct.hypre_CommPkg_struct, %struct.hypre_CommPkg_struct* %0, i32 0, i32 2
  %1 = load i32, i32* %num_sends, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 4, %conv
  %conv1 = trunc i64 %mul to i32
  %call = call i8* @hypre_MAlloc(i32 %conv1)
  %2 = bitcast i8* %call to i32*
  %3 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg.addr, align 8
  %send_mpi_types = getelementptr inbounds %struct.hypre_CommPkg_struct, %struct.hypre_CommPkg_struct* %3, i32 0, i32 8
  store i32* %2, i32** %send_mpi_types, align 8
  %4 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg.addr, align 8
  %num_sends2 = getelementptr inbounds %struct.hypre_CommPkg_struct, %struct.hypre_CommPkg_struct* %4, i32 0, i32 2
  %5 = load i32, i32* %num_sends2, align 4
  %6 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg.addr, align 8
  %send_procs = getelementptr inbounds %struct.hypre_CommPkg_struct, %struct.hypre_CommPkg_struct* %6, i32 0, i32 4
  %7 = load i32*, i32** %send_procs, align 8
  %8 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg.addr, align 8
  %send_types = getelementptr inbounds %struct.hypre_CommPkg_struct, %struct.hypre_CommPkg_struct* %8, i32 0, i32 6
  %9 = load %struct.hypre_CommType_struct**, %struct.hypre_CommType_struct*** %send_types, align 8
  %10 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg.addr, align 8
  %send_mpi_types3 = getelementptr inbounds %struct.hypre_CommPkg_struct, %struct.hypre_CommPkg_struct* %10, i32 0, i32 8
  %11 = load i32*, i32** %send_mpi_types3, align 8
  %call4 = call i32 @hypre_CommTypeBuildMPI(i32 %5, i32* %7, %struct.hypre_CommType_struct** %9, i32* %11)
  %12 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg.addr, align 8
  %num_recvs = getelementptr inbounds %struct.hypre_CommPkg_struct, %struct.hypre_CommPkg_struct* %12, i32 0, i32 3
  %13 = load i32, i32* %num_recvs, align 4
  %conv5 = sext i32 %13 to i64
  %mul6 = mul i64 4, %conv5
  %conv7 = trunc i64 %mul6 to i32
  %call8 = call i8* @hypre_MAlloc(i32 %conv7)
  %14 = bitcast i8* %call8 to i32*
  %15 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg.addr, align 8
  %recv_mpi_types = getelementptr inbounds %struct.hypre_CommPkg_struct, %struct.hypre_CommPkg_struct* %15, i32 0, i32 9
  store i32* %14, i32** %recv_mpi_types, align 8
  %16 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg.addr, align 8
  %num_recvs9 = getelementptr inbounds %struct.hypre_CommPkg_struct, %struct.hypre_CommPkg_struct* %16, i32 0, i32 3
  %17 = load i32, i32* %num_recvs9, align 4
  %18 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg.addr, align 8
  %recv_procs = getelementptr inbounds %struct.hypre_CommPkg_struct, %struct.hypre_CommPkg_struct* %18, i32 0, i32 5
  %19 = load i32*, i32** %recv_procs, align 8
  %20 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg.addr, align 8
  %recv_types = getelementptr inbounds %struct.hypre_CommPkg_struct, %struct.hypre_CommPkg_struct* %20, i32 0, i32 7
  %21 = load %struct.hypre_CommType_struct**, %struct.hypre_CommType_struct*** %recv_types, align 8
  %22 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg.addr, align 8
  %recv_mpi_types10 = getelementptr inbounds %struct.hypre_CommPkg_struct, %struct.hypre_CommPkg_struct* %22, i32 0, i32 9
  %23 = load i32*, i32** %recv_mpi_types10, align 8
  %call11 = call i32 @hypre_CommTypeBuildMPI(i32 %17, i32* %19, %struct.hypre_CommType_struct** %21, i32* %23)
  %24 = load i32, i32* %ierr, align 4
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define i32 @hypre_CommTypeDestroy(%struct.hypre_CommType_struct* %comm_type) #0 {
entry:
  %comm_type.addr = alloca %struct.hypre_CommType_struct*, align 8
  %ierr = alloca i32, align 4
  %comm_entry = alloca %struct.hypre_CommTypeEntry_struct*, align 8
  %i = alloca i32, align 4
  store %struct.hypre_CommType_struct* %comm_type, %struct.hypre_CommType_struct** %comm_type.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_CommType_struct*, %struct.hypre_CommType_struct** %comm_type.addr, align 8
  %tobool = icmp ne %struct.hypre_CommType_struct* %0, null
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %1 = load %struct.hypre_CommType_struct*, %struct.hypre_CommType_struct** %comm_type.addr, align 8
  %comm_entries = getelementptr inbounds %struct.hypre_CommType_struct, %struct.hypre_CommType_struct* %1, i32 0, i32 0
  %2 = load %struct.hypre_CommTypeEntry_struct**, %struct.hypre_CommTypeEntry_struct*** %comm_entries, align 8
  %cmp = icmp ne %struct.hypre_CommTypeEntry_struct** %2, null
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.1
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.hypre_CommType_struct*, %struct.hypre_CommType_struct** %comm_type.addr, align 8
  %num_entries = getelementptr inbounds %struct.hypre_CommType_struct, %struct.hypre_CommType_struct* %4, i32 0, i32 1
  %5 = load i32, i32* %num_entries, align 4
  %cmp2 = icmp slt i32 %3, %5
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.hypre_CommType_struct*, %struct.hypre_CommType_struct** %comm_type.addr, align 8
  %comm_entries3 = getelementptr inbounds %struct.hypre_CommType_struct, %struct.hypre_CommType_struct* %7, i32 0, i32 0
  %8 = load %struct.hypre_CommTypeEntry_struct**, %struct.hypre_CommTypeEntry_struct*** %comm_entries3, align 8
  %arrayidx = getelementptr inbounds %struct.hypre_CommTypeEntry_struct*, %struct.hypre_CommTypeEntry_struct** %8, i64 %idxprom
  %9 = load %struct.hypre_CommTypeEntry_struct*, %struct.hypre_CommTypeEntry_struct** %arrayidx, align 8
  store %struct.hypre_CommTypeEntry_struct* %9, %struct.hypre_CommTypeEntry_struct** %comm_entry, align 8
  %10 = load %struct.hypre_CommTypeEntry_struct*, %struct.hypre_CommTypeEntry_struct** %comm_entry, align 8
  %call = call i32 @hypre_CommTypeEntryDestroy(%struct.hypre_CommTypeEntry_struct* %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %12 = load %struct.hypre_CommType_struct*, %struct.hypre_CommType_struct** %comm_type.addr, align 8
  %comm_entries4 = getelementptr inbounds %struct.hypre_CommType_struct, %struct.hypre_CommType_struct* %12, i32 0, i32 0
  %13 = load %struct.hypre_CommTypeEntry_struct**, %struct.hypre_CommTypeEntry_struct*** %comm_entries4, align 8
  %14 = bitcast %struct.hypre_CommTypeEntry_struct** %13 to i8*
  call void @hypre_Free(i8* %14)
  %15 = load %struct.hypre_CommType_struct*, %struct.hypre_CommType_struct** %comm_type.addr, align 8
  %comm_entries5 = getelementptr inbounds %struct.hypre_CommType_struct, %struct.hypre_CommType_struct* %15, i32 0, i32 0
  store %struct.hypre_CommTypeEntry_struct** null, %struct.hypre_CommTypeEntry_struct*** %comm_entries5, align 8
  %16 = load %struct.hypre_CommType_struct*, %struct.hypre_CommType_struct** %comm_type.addr, align 8
  %17 = bitcast %struct.hypre_CommType_struct* %16 to i8*
  call void @hypre_Free(i8* %17)
  store %struct.hypre_CommType_struct* null, %struct.hypre_CommType_struct** %comm_type.addr, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %18 = load i32, i32* %ierr, align 4
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define i32 @hypre_CommPkgDestroy(%struct.hypre_CommPkg_struct* %comm_pkg) #0 {
entry:
  %comm_pkg.addr = alloca %struct.hypre_CommPkg_struct*, align 8
  %ierr = alloca i32, align 4
  store %struct.hypre_CommPkg_struct* %comm_pkg, %struct.hypre_CommPkg_struct** %comm_pkg.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg.addr, align 8
  %tobool = icmp ne %struct.hypre_CommPkg_struct* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg.addr, align 8
  %call = call i32 @hypre_CommPkgUnCommit(%struct.hypre_CommPkg_struct* %1)
  %2 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg.addr, align 8
  %send_procs = getelementptr inbounds %struct.hypre_CommPkg_struct, %struct.hypre_CommPkg_struct* %2, i32 0, i32 4
  %3 = load i32*, i32** %send_procs, align 8
  %4 = bitcast i32* %3 to i8*
  call void @hypre_Free(i8* %4)
  %5 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg.addr, align 8
  %send_procs1 = getelementptr inbounds %struct.hypre_CommPkg_struct, %struct.hypre_CommPkg_struct* %5, i32 0, i32 4
  store i32* null, i32** %send_procs1, align 8
  %6 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg.addr, align 8
  %recv_procs = getelementptr inbounds %struct.hypre_CommPkg_struct, %struct.hypre_CommPkg_struct* %6, i32 0, i32 5
  %7 = load i32*, i32** %recv_procs, align 8
  %8 = bitcast i32* %7 to i8*
  call void @hypre_Free(i8* %8)
  %9 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg.addr, align 8
  %recv_procs2 = getelementptr inbounds %struct.hypre_CommPkg_struct, %struct.hypre_CommPkg_struct* %9, i32 0, i32 5
  store i32* null, i32** %recv_procs2, align 8
  %10 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg.addr, align 8
  %copy_from_type = getelementptr inbounds %struct.hypre_CommPkg_struct, %struct.hypre_CommPkg_struct* %10, i32 0, i32 10
  %11 = load %struct.hypre_CommType_struct*, %struct.hypre_CommType_struct** %copy_from_type, align 8
  %call3 = call i32 @hypre_CommTypeDestroy(%struct.hypre_CommType_struct* %11)
  %12 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg.addr, align 8
  %copy_to_type = getelementptr inbounds %struct.hypre_CommPkg_struct, %struct.hypre_CommPkg_struct* %12, i32 0, i32 11
  %13 = load %struct.hypre_CommType_struct*, %struct.hypre_CommType_struct** %copy_to_type, align 8
  %call4 = call i32 @hypre_CommTypeDestroy(%struct.hypre_CommType_struct* %13)
  %14 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg.addr, align 8
  %15 = bitcast %struct.hypre_CommPkg_struct* %14 to i8*
  call void @hypre_Free(i8* %15)
  store %struct.hypre_CommPkg_struct* null, %struct.hypre_CommPkg_struct** %comm_pkg.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load i32, i32* %ierr, align 4
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define i32 @hypre_CommPkgUnCommit(%struct.hypre_CommPkg_struct* %comm_pkg) #0 {
entry:
  %comm_pkg.addr = alloca %struct.hypre_CommPkg_struct*, align 8
  %types = alloca i32*, align 8
  %i = alloca i32, align 4
  %ierr = alloca i32, align 4
  store %struct.hypre_CommPkg_struct* %comm_pkg, %struct.hypre_CommPkg_struct** %comm_pkg.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg.addr, align 8
  %tobool = icmp ne %struct.hypre_CommPkg_struct* %0, null
  br i1 %tobool, label %if.then, label %if.end.15

if.then:                                          ; preds = %entry
  %1 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg.addr, align 8
  %send_mpi_types = getelementptr inbounds %struct.hypre_CommPkg_struct, %struct.hypre_CommPkg_struct* %1, i32 0, i32 8
  %2 = load i32*, i32** %send_mpi_types, align 8
  store i32* %2, i32** %types, align 8
  %3 = load i32*, i32** %types, align 8
  %tobool1 = icmp ne i32* %3, null
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg.addr, align 8
  %num_sends = getelementptr inbounds %struct.hypre_CommPkg_struct, %struct.hypre_CommPkg_struct* %5, i32 0, i32 2
  %6 = load i32, i32* %num_sends, align 4
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i32*, i32** %types, align 8
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %idxprom
  %call = call i32 @hypre_MPI_Type_free(i32* %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32*, i32** %types, align 8
  %11 = bitcast i32* %10 to i8*
  call void @hypre_Free(i8* %11)
  store i32* null, i32** %types, align 8
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %12 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg.addr, align 8
  %recv_mpi_types = getelementptr inbounds %struct.hypre_CommPkg_struct, %struct.hypre_CommPkg_struct* %12, i32 0, i32 9
  %13 = load i32*, i32** %recv_mpi_types, align 8
  store i32* %13, i32** %types, align 8
  %14 = load i32*, i32** %types, align 8
  %tobool3 = icmp ne i32* %14, null
  br i1 %tobool3, label %if.then.4, label %if.end.14

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.11, %if.then.4
  %15 = load i32, i32* %i, align 4
  %16 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg.addr, align 8
  %num_recvs = getelementptr inbounds %struct.hypre_CommPkg_struct, %struct.hypre_CommPkg_struct* %16, i32 0, i32 3
  %17 = load i32, i32* %num_recvs, align 4
  %cmp6 = icmp slt i32 %15, %17
  br i1 %cmp6, label %for.body.7, label %for.end.13

for.body.7:                                       ; preds = %for.cond.5
  %18 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %18 to i64
  %19 = load i32*, i32** %types, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %19, i64 %idxprom8
  %call10 = call i32 @hypre_MPI_Type_free(i32* %arrayidx9)
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.body.7
  %20 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %20, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond.5

for.end.13:                                       ; preds = %for.cond.5
  %21 = load i32*, i32** %types, align 8
  %22 = bitcast i32* %21 to i8*
  call void @hypre_Free(i8* %22)
  store i32* null, i32** %types, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %for.end.13, %if.end
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %entry
  %23 = load i32, i32* %ierr, align 4
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define i32 @hypre_InitializeCommunication(%struct.hypre_CommPkg_struct* %comm_pkg, double* %send_data, double* %recv_data, %struct.hypre_CommHandle_struct** %comm_handle_ptr) #0 {
entry:
  %comm_pkg.addr = alloca %struct.hypre_CommPkg_struct*, align 8
  %send_data.addr = alloca double*, align 8
  %recv_data.addr = alloca double*, align 8
  %comm_handle_ptr.addr = alloca %struct.hypre_CommHandle_struct**, align 8
  %ierr = alloca i32, align 4
  %comm_handle = alloca %struct.hypre_CommHandle_struct*, align 8
  %num_sends = alloca i32, align 4
  %num_recvs = alloca i32, align 4
  %comm = alloca i32, align 4
  %num_requests = alloca i32, align 4
  %requests = alloca i32*, align 8
  %status = alloca %struct.hypre_MPI_Status*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.hypre_CommPkg_struct* %comm_pkg, %struct.hypre_CommPkg_struct** %comm_pkg.addr, align 8
  store double* %send_data, double** %send_data.addr, align 8
  store double* %recv_data, double** %recv_data.addr, align 8
  store %struct.hypre_CommHandle_struct** %comm_handle_ptr, %struct.hypre_CommHandle_struct*** %comm_handle_ptr.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg.addr, align 8
  %num_sends1 = getelementptr inbounds %struct.hypre_CommPkg_struct, %struct.hypre_CommPkg_struct* %0, i32 0, i32 2
  %1 = load i32, i32* %num_sends1, align 4
  store i32 %1, i32* %num_sends, align 4
  %2 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg.addr, align 8
  %num_recvs2 = getelementptr inbounds %struct.hypre_CommPkg_struct, %struct.hypre_CommPkg_struct* %2, i32 0, i32 3
  %3 = load i32, i32* %num_recvs2, align 4
  store i32 %3, i32* %num_recvs, align 4
  %4 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg.addr, align 8
  %comm3 = getelementptr inbounds %struct.hypre_CommPkg_struct, %struct.hypre_CommPkg_struct* %4, i32 0, i32 1
  %5 = load i32, i32* %comm3, align 4
  store i32 %5, i32* %comm, align 4
  %6 = load i32, i32* %num_sends, align 4
  %7 = load i32, i32* %num_recvs, align 4
  %add = add nsw i32 %6, %7
  store i32 %add, i32* %num_requests, align 4
  %8 = load i32, i32* %num_requests, align 4
  %call = call i8* @hypre_CAlloc(i32 %8, i32 4)
  %9 = bitcast i8* %call to i32*
  store i32* %9, i32** %requests, align 8
  %10 = load i32, i32* %num_requests, align 4
  %call4 = call i8* @hypre_CAlloc(i32 %10, i32 4)
  %11 = bitcast i8* %call4 to %struct.hypre_MPI_Status*
  store %struct.hypre_MPI_Status* %11, %struct.hypre_MPI_Status** %status, align 8
  store i32 0, i32* %j, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %num_recvs, align 4
  %cmp = icmp slt i32 %12, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load double*, double** %recv_data.addr, align 8
  %15 = bitcast double* %14 to i8*
  %16 = load i32, i32* %i, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg.addr, align 8
  %recv_mpi_types = getelementptr inbounds %struct.hypre_CommPkg_struct, %struct.hypre_CommPkg_struct* %17, i32 0, i32 9
  %18 = load i32*, i32** %recv_mpi_types, align 8
  %arrayidx = getelementptr inbounds i32, i32* %18, i64 %idxprom
  %19 = load i32, i32* %arrayidx, align 4
  %20 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %20 to i64
  %21 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg.addr, align 8
  %recv_procs = getelementptr inbounds %struct.hypre_CommPkg_struct, %struct.hypre_CommPkg_struct* %21, i32 0, i32 5
  %22 = load i32*, i32** %recv_procs, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %22, i64 %idxprom5
  %23 = load i32, i32* %arrayidx6, align 4
  %24 = load i32, i32* %comm, align 4
  %25 = load i32, i32* %j, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %j, align 4
  %idxprom7 = sext i32 %25 to i64
  %26 = load i32*, i32** %requests, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %26, i64 %idxprom7
  %call9 = call i32 @hypre_MPI_Irecv(i8* %15, i32 1, i32 %19, i32 %23, i32 0, i32 %24, i32* %arrayidx8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4
  %inc10 = add nsw i32 %27, 1
  store i32 %inc10, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.22, %for.end
  %28 = load i32, i32* %i, align 4
  %29 = load i32, i32* %num_sends, align 4
  %cmp12 = icmp slt i32 %28, %29
  br i1 %cmp12, label %for.body.13, label %for.end.24

for.body.13:                                      ; preds = %for.cond.11
  %30 = load double*, double** %send_data.addr, align 8
  %31 = bitcast double* %30 to i8*
  %32 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %32 to i64
  %33 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg.addr, align 8
  %send_mpi_types = getelementptr inbounds %struct.hypre_CommPkg_struct, %struct.hypre_CommPkg_struct* %33, i32 0, i32 8
  %34 = load i32*, i32** %send_mpi_types, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %34, i64 %idxprom14
  %35 = load i32, i32* %arrayidx15, align 4
  %36 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %36 to i64
  %37 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg.addr, align 8
  %send_procs = getelementptr inbounds %struct.hypre_CommPkg_struct, %struct.hypre_CommPkg_struct* %37, i32 0, i32 4
  %38 = load i32*, i32** %send_procs, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %38, i64 %idxprom16
  %39 = load i32, i32* %arrayidx17, align 4
  %40 = load i32, i32* %comm, align 4
  %41 = load i32, i32* %j, align 4
  %inc18 = add nsw i32 %41, 1
  store i32 %inc18, i32* %j, align 4
  %idxprom19 = sext i32 %41 to i64
  %42 = load i32*, i32** %requests, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %42, i64 %idxprom19
  %call21 = call i32 @hypre_MPI_Isend(i8* %31, i32 1, i32 %35, i32 %39, i32 0, i32 %40, i32* %arrayidx20)
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.body.13
  %43 = load i32, i32* %i, align 4
  %inc23 = add nsw i32 %43, 1
  store i32 %inc23, i32* %i, align 4
  br label %for.cond.11

for.end.24:                                       ; preds = %for.cond.11
  %44 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg.addr, align 8
  %45 = load double*, double** %send_data.addr, align 8
  %46 = load double*, double** %recv_data.addr, align 8
  %call25 = call i32 @hypre_ExchangeLocalData(%struct.hypre_CommPkg_struct* %44, double* %45, double* %46)
  %call26 = call i8* @hypre_MAlloc(i32 48)
  %47 = bitcast i8* %call26 to %struct.hypre_CommHandle_struct*
  store %struct.hypre_CommHandle_struct* %47, %struct.hypre_CommHandle_struct** %comm_handle, align 8
  %48 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg.addr, align 8
  %49 = load %struct.hypre_CommHandle_struct*, %struct.hypre_CommHandle_struct** %comm_handle, align 8
  %comm_pkg27 = getelementptr inbounds %struct.hypre_CommHandle_struct, %struct.hypre_CommHandle_struct* %49, i32 0, i32 0
  store %struct.hypre_CommPkg_struct* %48, %struct.hypre_CommPkg_struct** %comm_pkg27, align 8
  %50 = load double*, double** %send_data.addr, align 8
  %51 = load %struct.hypre_CommHandle_struct*, %struct.hypre_CommHandle_struct** %comm_handle, align 8
  %send_data28 = getelementptr inbounds %struct.hypre_CommHandle_struct, %struct.hypre_CommHandle_struct* %51, i32 0, i32 1
  store double* %50, double** %send_data28, align 8
  %52 = load double*, double** %recv_data.addr, align 8
  %53 = load %struct.hypre_CommHandle_struct*, %struct.hypre_CommHandle_struct** %comm_handle, align 8
  %recv_data29 = getelementptr inbounds %struct.hypre_CommHandle_struct, %struct.hypre_CommHandle_struct* %53, i32 0, i32 2
  store double* %52, double** %recv_data29, align 8
  %54 = load i32, i32* %num_requests, align 4
  %55 = load %struct.hypre_CommHandle_struct*, %struct.hypre_CommHandle_struct** %comm_handle, align 8
  %num_requests30 = getelementptr inbounds %struct.hypre_CommHandle_struct, %struct.hypre_CommHandle_struct* %55, i32 0, i32 3
  store i32 %54, i32* %num_requests30, align 4
  %56 = load i32*, i32** %requests, align 8
  %57 = load %struct.hypre_CommHandle_struct*, %struct.hypre_CommHandle_struct** %comm_handle, align 8
  %requests31 = getelementptr inbounds %struct.hypre_CommHandle_struct, %struct.hypre_CommHandle_struct* %57, i32 0, i32 4
  store i32* %56, i32** %requests31, align 8
  %58 = load %struct.hypre_MPI_Status*, %struct.hypre_MPI_Status** %status, align 8
  %59 = load %struct.hypre_CommHandle_struct*, %struct.hypre_CommHandle_struct** %comm_handle, align 8
  %status32 = getelementptr inbounds %struct.hypre_CommHandle_struct, %struct.hypre_CommHandle_struct* %59, i32 0, i32 5
  store %struct.hypre_MPI_Status* %58, %struct.hypre_MPI_Status** %status32, align 8
  %60 = load %struct.hypre_CommHandle_struct*, %struct.hypre_CommHandle_struct** %comm_handle, align 8
  %61 = load %struct.hypre_CommHandle_struct**, %struct.hypre_CommHandle_struct*** %comm_handle_ptr.addr, align 8
  store %struct.hypre_CommHandle_struct* %60, %struct.hypre_CommHandle_struct** %61, align 8
  %62 = load i32, i32* %ierr, align 4
  ret i32 %62
}

declare i32 @hypre_MPI_Irecv(i8*, i32, i32, i32, i32, i32, i32*) #1

declare i32 @hypre_MPI_Isend(i8*, i32, i32, i32, i32, i32, i32*) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_ExchangeLocalData(%struct.hypre_CommPkg_struct* %comm_pkg, double* %send_data, double* %recv_data) #0 {
entry:
  %comm_pkg.addr = alloca %struct.hypre_CommPkg_struct*, align 8
  %send_data.addr = alloca double*, align 8
  %recv_data.addr = alloca double*, align 8
  %copy_from_type = alloca %struct.hypre_CommType_struct*, align 8
  %copy_to_type = alloca %struct.hypre_CommType_struct*, align 8
  %copy_from_entry = alloca %struct.hypre_CommTypeEntry_struct*, align 8
  %copy_to_entry = alloca %struct.hypre_CommTypeEntry_struct*, align 8
  %from_dp = alloca double*, align 8
  %from_stride_array = alloca i32*, align 8
  %from_i = alloca i32, align 4
  %to_dp = alloca double*, align 8
  %to_stride_array = alloca i32*, align 8
  %to_i = alloca i32, align 4
  %length_array = alloca i32*, align 8
  %i0 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %i3 = alloca i32, align 4
  %i = alloca i32, align 4
  %ierr = alloca i32, align 4
  store %struct.hypre_CommPkg_struct* %comm_pkg, %struct.hypre_CommPkg_struct** %comm_pkg.addr, align 8
  store double* %send_data, double** %send_data.addr, align 8
  store double* %recv_data, double** %recv_data.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg.addr, align 8
  %copy_from_type1 = getelementptr inbounds %struct.hypre_CommPkg_struct, %struct.hypre_CommPkg_struct* %0, i32 0, i32 10
  %1 = load %struct.hypre_CommType_struct*, %struct.hypre_CommType_struct** %copy_from_type1, align 8
  store %struct.hypre_CommType_struct* %1, %struct.hypre_CommType_struct** %copy_from_type, align 8
  %2 = load %struct.hypre_CommPkg_struct*, %struct.hypre_CommPkg_struct** %comm_pkg.addr, align 8
  %copy_to_type2 = getelementptr inbounds %struct.hypre_CommPkg_struct, %struct.hypre_CommPkg_struct* %2, i32 0, i32 11
  %3 = load %struct.hypre_CommType_struct*, %struct.hypre_CommType_struct** %copy_to_type2, align 8
  store %struct.hypre_CommType_struct* %3, %struct.hypre_CommType_struct** %copy_to_type, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.61, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.hypre_CommType_struct*, %struct.hypre_CommType_struct** %copy_from_type, align 8
  %num_entries = getelementptr inbounds %struct.hypre_CommType_struct, %struct.hypre_CommType_struct* %5, i32 0, i32 1
  %6 = load i32, i32* %num_entries, align 4
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end.63

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.hypre_CommType_struct*, %struct.hypre_CommType_struct** %copy_from_type, align 8
  %comm_entries = getelementptr inbounds %struct.hypre_CommType_struct, %struct.hypre_CommType_struct* %8, i32 0, i32 0
  %9 = load %struct.hypre_CommTypeEntry_struct**, %struct.hypre_CommTypeEntry_struct*** %comm_entries, align 8
  %arrayidx = getelementptr inbounds %struct.hypre_CommTypeEntry_struct*, %struct.hypre_CommTypeEntry_struct** %9, i64 %idxprom
  %10 = load %struct.hypre_CommTypeEntry_struct*, %struct.hypre_CommTypeEntry_struct** %arrayidx, align 8
  store %struct.hypre_CommTypeEntry_struct* %10, %struct.hypre_CommTypeEntry_struct** %copy_from_entry, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %11 to i64
  %12 = load %struct.hypre_CommType_struct*, %struct.hypre_CommType_struct** %copy_to_type, align 8
  %comm_entries4 = getelementptr inbounds %struct.hypre_CommType_struct, %struct.hypre_CommType_struct* %12, i32 0, i32 0
  %13 = load %struct.hypre_CommTypeEntry_struct**, %struct.hypre_CommTypeEntry_struct*** %comm_entries4, align 8
  %arrayidx5 = getelementptr inbounds %struct.hypre_CommTypeEntry_struct*, %struct.hypre_CommTypeEntry_struct** %13, i64 %idxprom3
  %14 = load %struct.hypre_CommTypeEntry_struct*, %struct.hypre_CommTypeEntry_struct** %arrayidx5, align 8
  store %struct.hypre_CommTypeEntry_struct* %14, %struct.hypre_CommTypeEntry_struct** %copy_to_entry, align 8
  %15 = load double*, double** %send_data.addr, align 8
  %16 = load %struct.hypre_CommTypeEntry_struct*, %struct.hypre_CommTypeEntry_struct** %copy_from_entry, align 8
  %offset = getelementptr inbounds %struct.hypre_CommTypeEntry_struct, %struct.hypre_CommTypeEntry_struct* %16, i32 0, i32 2
  %17 = load i32, i32* %offset, align 4
  %idx.ext = sext i32 %17 to i64
  %add.ptr = getelementptr inbounds double, double* %15, i64 %idx.ext
  store double* %add.ptr, double** %from_dp, align 8
  %18 = load double*, double** %recv_data.addr, align 8
  %19 = load %struct.hypre_CommTypeEntry_struct*, %struct.hypre_CommTypeEntry_struct** %copy_to_entry, align 8
  %offset6 = getelementptr inbounds %struct.hypre_CommTypeEntry_struct, %struct.hypre_CommTypeEntry_struct* %19, i32 0, i32 2
  %20 = load i32, i32* %offset6, align 4
  %idx.ext7 = sext i32 %20 to i64
  %add.ptr8 = getelementptr inbounds double, double* %18, i64 %idx.ext7
  store double* %add.ptr8, double** %to_dp, align 8
  %21 = load double*, double** %to_dp, align 8
  %22 = load double*, double** %from_dp, align 8
  %cmp9 = icmp ne double* %21, %22
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %23 = load %struct.hypre_CommTypeEntry_struct*, %struct.hypre_CommTypeEntry_struct** %copy_from_entry, align 8
  %length_array10 = getelementptr inbounds %struct.hypre_CommTypeEntry_struct, %struct.hypre_CommTypeEntry_struct* %23, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %length_array10, i32 0, i32 0
  store i32* %arraydecay, i32** %length_array, align 8
  %24 = load %struct.hypre_CommTypeEntry_struct*, %struct.hypre_CommTypeEntry_struct** %copy_from_entry, align 8
  %stride_array = getelementptr inbounds %struct.hypre_CommTypeEntry_struct, %struct.hypre_CommTypeEntry_struct* %24, i32 0, i32 5
  %arraydecay11 = getelementptr inbounds [4 x i32], [4 x i32]* %stride_array, i32 0, i32 0
  store i32* %arraydecay11, i32** %from_stride_array, align 8
  %25 = load %struct.hypre_CommTypeEntry_struct*, %struct.hypre_CommTypeEntry_struct** %copy_to_entry, align 8
  %stride_array12 = getelementptr inbounds %struct.hypre_CommTypeEntry_struct, %struct.hypre_CommTypeEntry_struct* %25, i32 0, i32 5
  %arraydecay13 = getelementptr inbounds [4 x i32], [4 x i32]* %stride_array12, i32 0, i32 0
  store i32* %arraydecay13, i32** %to_stride_array, align 8
  store i32 0, i32* %i3, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.58, %if.then
  %26 = load i32, i32* %i3, align 4
  %27 = load i32*, i32** %length_array, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %27, i64 3
  %28 = load i32, i32* %arrayidx15, align 4
  %cmp16 = icmp slt i32 %26, %28
  br i1 %cmp16, label %for.body.17, label %for.end.60

for.body.17:                                      ; preds = %for.cond.14
  store i32 0, i32* %i2, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.55, %for.body.17
  %29 = load i32, i32* %i2, align 4
  %30 = load i32*, i32** %length_array, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %30, i64 2
  %31 = load i32, i32* %arrayidx19, align 4
  %cmp20 = icmp slt i32 %29, %31
  br i1 %cmp20, label %for.body.21, label %for.end.57

for.body.21:                                      ; preds = %for.cond.18
  store i32 0, i32* %i1, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.52, %for.body.21
  %32 = load i32, i32* %i1, align 4
  %33 = load i32*, i32** %length_array, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %33, i64 1
  %34 = load i32, i32* %arrayidx23, align 4
  %cmp24 = icmp slt i32 %32, %34
  br i1 %cmp24, label %for.body.25, label %for.end.54

for.body.25:                                      ; preds = %for.cond.22
  %35 = load i32, i32* %i3, align 4
  %36 = load i32*, i32** %from_stride_array, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %36, i64 3
  %37 = load i32, i32* %arrayidx26, align 4
  %mul = mul nsw i32 %35, %37
  %38 = load i32, i32* %i2, align 4
  %39 = load i32*, i32** %from_stride_array, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %39, i64 2
  %40 = load i32, i32* %arrayidx27, align 4
  %mul28 = mul nsw i32 %38, %40
  %add = add nsw i32 %mul, %mul28
  %41 = load i32, i32* %i1, align 4
  %42 = load i32*, i32** %from_stride_array, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %42, i64 1
  %43 = load i32, i32* %arrayidx29, align 4
  %mul30 = mul nsw i32 %41, %43
  %add31 = add nsw i32 %add, %mul30
  store i32 %add31, i32* %from_i, align 4
  %44 = load i32, i32* %i3, align 4
  %45 = load i32*, i32** %to_stride_array, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %45, i64 3
  %46 = load i32, i32* %arrayidx32, align 4
  %mul33 = mul nsw i32 %44, %46
  %47 = load i32, i32* %i2, align 4
  %48 = load i32*, i32** %to_stride_array, align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %48, i64 2
  %49 = load i32, i32* %arrayidx34, align 4
  %mul35 = mul nsw i32 %47, %49
  %add36 = add nsw i32 %mul33, %mul35
  %50 = load i32, i32* %i1, align 4
  %51 = load i32*, i32** %to_stride_array, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %51, i64 1
  %52 = load i32, i32* %arrayidx37, align 4
  %mul38 = mul nsw i32 %50, %52
  %add39 = add nsw i32 %add36, %mul38
  store i32 %add39, i32* %to_i, align 4
  store i32 0, i32* %i0, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc, %for.body.25
  %53 = load i32, i32* %i0, align 4
  %54 = load i32*, i32** %length_array, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %54, i64 0
  %55 = load i32, i32* %arrayidx41, align 4
  %cmp42 = icmp slt i32 %53, %55
  br i1 %cmp42, label %for.body.43, label %for.end

for.body.43:                                      ; preds = %for.cond.40
  %56 = load i32, i32* %from_i, align 4
  %idxprom44 = sext i32 %56 to i64
  %57 = load double*, double** %from_dp, align 8
  %arrayidx45 = getelementptr inbounds double, double* %57, i64 %idxprom44
  %58 = load double, double* %arrayidx45, align 8
  %59 = load i32, i32* %to_i, align 4
  %idxprom46 = sext i32 %59 to i64
  %60 = load double*, double** %to_dp, align 8
  %arrayidx47 = getelementptr inbounds double, double* %60, i64 %idxprom46
  store double %58, double* %arrayidx47, align 8
  %61 = load i32*, i32** %from_stride_array, align 8
  %arrayidx48 = getelementptr inbounds i32, i32* %61, i64 0
  %62 = load i32, i32* %arrayidx48, align 4
  %63 = load i32, i32* %from_i, align 4
  %add49 = add nsw i32 %63, %62
  store i32 %add49, i32* %from_i, align 4
  %64 = load i32*, i32** %to_stride_array, align 8
  %arrayidx50 = getelementptr inbounds i32, i32* %64, i64 0
  %65 = load i32, i32* %arrayidx50, align 4
  %66 = load i32, i32* %to_i, align 4
  %add51 = add nsw i32 %66, %65
  store i32 %add51, i32* %to_i, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.43
  %67 = load i32, i32* %i0, align 4
  %inc = add nsw i32 %67, 1
  store i32 %inc, i32* %i0, align 4
  br label %for.cond.40

for.end:                                          ; preds = %for.cond.40
  br label %for.inc.52

for.inc.52:                                       ; preds = %for.end
  %68 = load i32, i32* %i1, align 4
  %inc53 = add nsw i32 %68, 1
  store i32 %inc53, i32* %i1, align 4
  br label %for.cond.22

for.end.54:                                       ; preds = %for.cond.22
  br label %for.inc.55

for.inc.55:                                       ; preds = %for.end.54
  %69 = load i32, i32* %i2, align 4
  %inc56 = add nsw i32 %69, 1
  store i32 %inc56, i32* %i2, align 4
  br label %for.cond.18

for.end.57:                                       ; preds = %for.cond.18
  br label %for.inc.58

for.inc.58:                                       ; preds = %for.end.57
  %70 = load i32, i32* %i3, align 4
  %inc59 = add nsw i32 %70, 1
  store i32 %inc59, i32* %i3, align 4
  br label %for.cond.14

for.end.60:                                       ; preds = %for.cond.14
  br label %if.end

if.end:                                           ; preds = %for.end.60, %for.body
  br label %for.inc.61

for.inc.61:                                       ; preds = %if.end
  %71 = load i32, i32* %i, align 4
  %inc62 = add nsw i32 %71, 1
  store i32 %inc62, i32* %i, align 4
  br label %for.cond

for.end.63:                                       ; preds = %for.cond
  %72 = load i32, i32* %ierr, align 4
  ret i32 %72
}

declare i8* @hypre_MAlloc(i32) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_FinalizeCommunication(%struct.hypre_CommHandle_struct* %comm_handle) #0 {
entry:
  %comm_handle.addr = alloca %struct.hypre_CommHandle_struct*, align 8
  %ierr = alloca i32, align 4
  store %struct.hypre_CommHandle_struct* %comm_handle, %struct.hypre_CommHandle_struct** %comm_handle.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_CommHandle_struct*, %struct.hypre_CommHandle_struct** %comm_handle.addr, align 8
  %num_requests = getelementptr inbounds %struct.hypre_CommHandle_struct, %struct.hypre_CommHandle_struct* %0, i32 0, i32 3
  %1 = load i32, i32* %num_requests, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.hypre_CommHandle_struct*, %struct.hypre_CommHandle_struct** %comm_handle.addr, align 8
  %num_requests1 = getelementptr inbounds %struct.hypre_CommHandle_struct, %struct.hypre_CommHandle_struct* %2, i32 0, i32 3
  %3 = load i32, i32* %num_requests1, align 4
  %4 = load %struct.hypre_CommHandle_struct*, %struct.hypre_CommHandle_struct** %comm_handle.addr, align 8
  %requests = getelementptr inbounds %struct.hypre_CommHandle_struct, %struct.hypre_CommHandle_struct* %4, i32 0, i32 4
  %5 = load i32*, i32** %requests, align 8
  %6 = load %struct.hypre_CommHandle_struct*, %struct.hypre_CommHandle_struct** %comm_handle.addr, align 8
  %status = getelementptr inbounds %struct.hypre_CommHandle_struct, %struct.hypre_CommHandle_struct* %6, i32 0, i32 5
  %7 = load %struct.hypre_MPI_Status*, %struct.hypre_MPI_Status** %status, align 8
  %call = call i32 @hypre_MPI_Waitall(i32 %3, i32* %5, %struct.hypre_MPI_Status* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.hypre_CommHandle_struct*, %struct.hypre_CommHandle_struct** %comm_handle.addr, align 8
  %requests2 = getelementptr inbounds %struct.hypre_CommHandle_struct, %struct.hypre_CommHandle_struct* %8, i32 0, i32 4
  %9 = load i32*, i32** %requests2, align 8
  %10 = bitcast i32* %9 to i8*
  call void @hypre_Free(i8* %10)
  %11 = load %struct.hypre_CommHandle_struct*, %struct.hypre_CommHandle_struct** %comm_handle.addr, align 8
  %requests3 = getelementptr inbounds %struct.hypre_CommHandle_struct, %struct.hypre_CommHandle_struct* %11, i32 0, i32 4
  store i32* null, i32** %requests3, align 8
  %12 = load %struct.hypre_CommHandle_struct*, %struct.hypre_CommHandle_struct** %comm_handle.addr, align 8
  %status4 = getelementptr inbounds %struct.hypre_CommHandle_struct, %struct.hypre_CommHandle_struct* %12, i32 0, i32 5
  %13 = load %struct.hypre_MPI_Status*, %struct.hypre_MPI_Status** %status4, align 8
  %14 = bitcast %struct.hypre_MPI_Status* %13 to i8*
  call void @hypre_Free(i8* %14)
  %15 = load %struct.hypre_CommHandle_struct*, %struct.hypre_CommHandle_struct** %comm_handle.addr, align 8
  %status5 = getelementptr inbounds %struct.hypre_CommHandle_struct, %struct.hypre_CommHandle_struct* %15, i32 0, i32 5
  store %struct.hypre_MPI_Status* null, %struct.hypre_MPI_Status** %status5, align 8
  %16 = load %struct.hypre_CommHandle_struct*, %struct.hypre_CommHandle_struct** %comm_handle.addr, align 8
  %17 = bitcast %struct.hypre_CommHandle_struct* %16 to i8*
  call void @hypre_Free(i8* %17)
  store %struct.hypre_CommHandle_struct* null, %struct.hypre_CommHandle_struct** %comm_handle.addr, align 8
  %18 = load i32, i32* %ierr, align 4
  ret i32 %18
}

declare i32 @hypre_MPI_Waitall(i32, i32*, %struct.hypre_MPI_Status*) #1

; Function Attrs: nounwind uwtable
define %struct.hypre_CommType_struct* @hypre_CommTypeCreate(%struct.hypre_CommTypeEntry_struct** %comm_entries, i32 %num_entries) #0 {
entry:
  %comm_entries.addr = alloca %struct.hypre_CommTypeEntry_struct**, align 8
  %num_entries.addr = alloca i32, align 4
  %comm_type = alloca %struct.hypre_CommType_struct*, align 8
  store %struct.hypre_CommTypeEntry_struct** %comm_entries, %struct.hypre_CommTypeEntry_struct*** %comm_entries.addr, align 8
  store i32 %num_entries, i32* %num_entries.addr, align 4
  %call = call i8* @hypre_MAlloc(i32 16)
  %0 = bitcast i8* %call to %struct.hypre_CommType_struct*
  store %struct.hypre_CommType_struct* %0, %struct.hypre_CommType_struct** %comm_type, align 8
  %1 = load %struct.hypre_CommTypeEntry_struct**, %struct.hypre_CommTypeEntry_struct*** %comm_entries.addr, align 8
  %2 = load %struct.hypre_CommType_struct*, %struct.hypre_CommType_struct** %comm_type, align 8
  %comm_entries1 = getelementptr inbounds %struct.hypre_CommType_struct, %struct.hypre_CommType_struct* %2, i32 0, i32 0
  store %struct.hypre_CommTypeEntry_struct** %1, %struct.hypre_CommTypeEntry_struct*** %comm_entries1, align 8
  %3 = load i32, i32* %num_entries.addr, align 4
  %4 = load %struct.hypre_CommType_struct*, %struct.hypre_CommType_struct** %comm_type, align 8
  %num_entries2 = getelementptr inbounds %struct.hypre_CommType_struct, %struct.hypre_CommType_struct* %4, i32 0, i32 1
  store i32 %3, i32* %num_entries2, align 4
  %5 = load %struct.hypre_CommType_struct*, %struct.hypre_CommType_struct** %comm_type, align 8
  ret %struct.hypre_CommType_struct* %5
}

; Function Attrs: nounwind uwtable
define i32 @hypre_CommTypeEntryDestroy(%struct.hypre_CommTypeEntry_struct* %comm_entry) #0 {
entry:
  %comm_entry.addr = alloca %struct.hypre_CommTypeEntry_struct*, align 8
  %ierr = alloca i32, align 4
  store %struct.hypre_CommTypeEntry_struct* %comm_entry, %struct.hypre_CommTypeEntry_struct** %comm_entry.addr, align 8
  store i32 0, i32* %ierr, align 4
  %0 = load %struct.hypre_CommTypeEntry_struct*, %struct.hypre_CommTypeEntry_struct** %comm_entry.addr, align 8
  %tobool = icmp ne %struct.hypre_CommTypeEntry_struct* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.hypre_CommTypeEntry_struct*, %struct.hypre_CommTypeEntry_struct** %comm_entry.addr, align 8
  %2 = bitcast %struct.hypre_CommTypeEntry_struct* %1 to i8*
  call void @hypre_Free(i8* %2)
  store %struct.hypre_CommTypeEntry_struct* null, %struct.hypre_CommTypeEntry_struct** %comm_entry.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %ierr, align 4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define %struct.hypre_CommTypeEntry_struct* @hypre_CommTypeEntryCreate(%struct.hypre_Box_struct* %box, i32* %stride, %struct.hypre_Box_struct* %data_box, i32 %num_values, i32 %data_box_offset) #0 {
entry:
  %box.addr = alloca %struct.hypre_Box_struct*, align 8
  %stride.addr = alloca i32*, align 8
  %data_box.addr = alloca %struct.hypre_Box_struct*, align 8
  %num_values.addr = alloca i32, align 4
  %data_box_offset.addr = alloca i32, align 4
  %comm_entry = alloca %struct.hypre_CommTypeEntry_struct*, align 8
  %length_array = alloca i32*, align 8
  %stride_array = alloca i32*, align 8
  %size = alloca [3 x i32], align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %dim = alloca i32, align 4
  store %struct.hypre_Box_struct* %box, %struct.hypre_Box_struct** %box.addr, align 8
  store i32* %stride, i32** %stride.addr, align 8
  store %struct.hypre_Box_struct* %data_box, %struct.hypre_Box_struct** %data_box.addr, align 8
  store i32 %num_values, i32* %num_values.addr, align 4
  store i32 %data_box_offset, i32* %data_box_offset.addr, align 4
  %call = call i8* @hypre_MAlloc(i32 64)
  %0 = bitcast i8* %call to %struct.hypre_CommTypeEntry_struct*
  store %struct.hypre_CommTypeEntry_struct* %0, %struct.hypre_CommTypeEntry_struct** %comm_entry, align 8
  %1 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box.addr, align 8
  %imin = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i64 0
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load %struct.hypre_CommTypeEntry_struct*, %struct.hypre_CommTypeEntry_struct** %comm_entry, align 8
  %imin1 = getelementptr inbounds %struct.hypre_CommTypeEntry_struct, %struct.hypre_CommTypeEntry_struct* %3, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [3 x i32], [3 x i32]* %imin1, i32 0, i64 0
  store i32 %2, i32* %arrayidx2, align 4
  %4 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box.addr, align 8
  %imin3 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %4, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [3 x i32], [3 x i32]* %imin3, i32 0, i64 1
  %5 = load i32, i32* %arrayidx4, align 4
  %6 = load %struct.hypre_CommTypeEntry_struct*, %struct.hypre_CommTypeEntry_struct** %comm_entry, align 8
  %imin5 = getelementptr inbounds %struct.hypre_CommTypeEntry_struct, %struct.hypre_CommTypeEntry_struct* %6, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [3 x i32], [3 x i32]* %imin5, i32 0, i64 1
  store i32 %5, i32* %arrayidx6, align 4
  %7 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box.addr, align 8
  %imin7 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %7, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [3 x i32], [3 x i32]* %imin7, i32 0, i64 2
  %8 = load i32, i32* %arrayidx8, align 4
  %9 = load %struct.hypre_CommTypeEntry_struct*, %struct.hypre_CommTypeEntry_struct** %comm_entry, align 8
  %imin9 = getelementptr inbounds %struct.hypre_CommTypeEntry_struct, %struct.hypre_CommTypeEntry_struct* %9, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [3 x i32], [3 x i32]* %imin9, i32 0, i64 2
  store i32 %8, i32* %arrayidx10, align 4
  %10 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box.addr, align 8
  %imax = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %10, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i64 0
  %11 = load i32, i32* %arrayidx11, align 4
  %12 = load %struct.hypre_CommTypeEntry_struct*, %struct.hypre_CommTypeEntry_struct** %comm_entry, align 8
  %imax12 = getelementptr inbounds %struct.hypre_CommTypeEntry_struct, %struct.hypre_CommTypeEntry_struct* %12, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [3 x i32], [3 x i32]* %imax12, i32 0, i64 0
  store i32 %11, i32* %arrayidx13, align 4
  %13 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box.addr, align 8
  %imax14 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %13, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [3 x i32], [3 x i32]* %imax14, i32 0, i64 1
  %14 = load i32, i32* %arrayidx15, align 4
  %15 = load %struct.hypre_CommTypeEntry_struct*, %struct.hypre_CommTypeEntry_struct** %comm_entry, align 8
  %imax16 = getelementptr inbounds %struct.hypre_CommTypeEntry_struct, %struct.hypre_CommTypeEntry_struct* %15, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [3 x i32], [3 x i32]* %imax16, i32 0, i64 1
  store i32 %14, i32* %arrayidx17, align 4
  %16 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box.addr, align 8
  %imax18 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %16, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [3 x i32], [3 x i32]* %imax18, i32 0, i64 2
  %17 = load i32, i32* %arrayidx19, align 4
  %18 = load %struct.hypre_CommTypeEntry_struct*, %struct.hypre_CommTypeEntry_struct** %comm_entry, align 8
  %imax20 = getelementptr inbounds %struct.hypre_CommTypeEntry_struct, %struct.hypre_CommTypeEntry_struct* %18, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [3 x i32], [3 x i32]* %imax20, i32 0, i64 2
  store i32 %17, i32* %arrayidx21, align 4
  %19 = load i32, i32* %data_box_offset.addr, align 4
  %20 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box.addr, align 8
  %imin22 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %20, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [3 x i32], [3 x i32]* %imin22, i32 0, i64 0
  %21 = load i32, i32* %arrayidx23, align 4
  %22 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box.addr, align 8
  %imin24 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %22, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [3 x i32], [3 x i32]* %imin24, i32 0, i64 0
  %23 = load i32, i32* %arrayidx25, align 4
  %sub = sub nsw i32 %21, %23
  %24 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box.addr, align 8
  %imin26 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %24, i32 0, i32 0
  %arrayidx27 = getelementptr inbounds [3 x i32], [3 x i32]* %imin26, i32 0, i64 1
  %25 = load i32, i32* %arrayidx27, align 4
  %26 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box.addr, align 8
  %imin28 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %26, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [3 x i32], [3 x i32]* %imin28, i32 0, i64 1
  %27 = load i32, i32* %arrayidx29, align 4
  %sub30 = sub nsw i32 %25, %27
  %28 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box.addr, align 8
  %imin31 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %28, i32 0, i32 0
  %arrayidx32 = getelementptr inbounds [3 x i32], [3 x i32]* %imin31, i32 0, i64 2
  %29 = load i32, i32* %arrayidx32, align 4
  %30 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box.addr, align 8
  %imin33 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %30, i32 0, i32 0
  %arrayidx34 = getelementptr inbounds [3 x i32], [3 x i32]* %imin33, i32 0, i64 2
  %31 = load i32, i32* %arrayidx34, align 4
  %sub35 = sub nsw i32 %29, %31
  %32 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box.addr, align 8
  %imax36 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %32, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [3 x i32], [3 x i32]* %imax36, i32 0, i64 1
  %33 = load i32, i32* %arrayidx37, align 4
  %34 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box.addr, align 8
  %imin38 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %34, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [3 x i32], [3 x i32]* %imin38, i32 0, i64 1
  %35 = load i32, i32* %arrayidx39, align 4
  %sub40 = sub nsw i32 %33, %35
  %add = add nsw i32 %sub40, 1
  %cmp = icmp slt i32 0, %add
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %36 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box.addr, align 8
  %imax41 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %36, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [3 x i32], [3 x i32]* %imax41, i32 0, i64 1
  %37 = load i32, i32* %arrayidx42, align 4
  %38 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box.addr, align 8
  %imin43 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %38, i32 0, i32 0
  %arrayidx44 = getelementptr inbounds [3 x i32], [3 x i32]* %imin43, i32 0, i64 1
  %39 = load i32, i32* %arrayidx44, align 4
  %sub45 = sub nsw i32 %37, %39
  %add46 = add nsw i32 %sub45, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add46, %cond.true ], [ 0, %cond.false ]
  %mul = mul nsw i32 %sub35, %cond
  %add47 = add nsw i32 %sub30, %mul
  %40 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box.addr, align 8
  %imax48 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %40, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [3 x i32], [3 x i32]* %imax48, i32 0, i64 0
  %41 = load i32, i32* %arrayidx49, align 4
  %42 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box.addr, align 8
  %imin50 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %42, i32 0, i32 0
  %arrayidx51 = getelementptr inbounds [3 x i32], [3 x i32]* %imin50, i32 0, i64 0
  %43 = load i32, i32* %arrayidx51, align 4
  %sub52 = sub nsw i32 %41, %43
  %add53 = add nsw i32 %sub52, 1
  %cmp54 = icmp slt i32 0, %add53
  br i1 %cmp54, label %cond.true.55, label %cond.false.62

cond.true.55:                                     ; preds = %cond.end
  %44 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box.addr, align 8
  %imax56 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %44, i32 0, i32 1
  %arrayidx57 = getelementptr inbounds [3 x i32], [3 x i32]* %imax56, i32 0, i64 0
  %45 = load i32, i32* %arrayidx57, align 4
  %46 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box.addr, align 8
  %imin58 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %46, i32 0, i32 0
  %arrayidx59 = getelementptr inbounds [3 x i32], [3 x i32]* %imin58, i32 0, i64 0
  %47 = load i32, i32* %arrayidx59, align 4
  %sub60 = sub nsw i32 %45, %47
  %add61 = add nsw i32 %sub60, 1
  br label %cond.end.63

cond.false.62:                                    ; preds = %cond.end
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.false.62, %cond.true.55
  %cond64 = phi i32 [ %add61, %cond.true.55 ], [ 0, %cond.false.62 ]
  %mul65 = mul nsw i32 %add47, %cond64
  %add66 = add nsw i32 %sub, %mul65
  %add67 = add nsw i32 %19, %add66
  %48 = load %struct.hypre_CommTypeEntry_struct*, %struct.hypre_CommTypeEntry_struct** %comm_entry, align 8
  %offset = getelementptr inbounds %struct.hypre_CommTypeEntry_struct, %struct.hypre_CommTypeEntry_struct* %48, i32 0, i32 2
  store i32 %add67, i32* %offset, align 4
  %49 = load %struct.hypre_CommTypeEntry_struct*, %struct.hypre_CommTypeEntry_struct** %comm_entry, align 8
  %length_array68 = getelementptr inbounds %struct.hypre_CommTypeEntry_struct, %struct.hypre_CommTypeEntry_struct* %49, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %length_array68, i32 0, i32 0
  store i32* %arraydecay, i32** %length_array, align 8
  %50 = load %struct.hypre_CommTypeEntry_struct*, %struct.hypre_CommTypeEntry_struct** %comm_entry, align 8
  %stride_array69 = getelementptr inbounds %struct.hypre_CommTypeEntry_struct, %struct.hypre_CommTypeEntry_struct* %50, i32 0, i32 5
  %arraydecay70 = getelementptr inbounds [4 x i32], [4 x i32]* %stride_array69, i32 0, i32 0
  store i32* %arraydecay70, i32** %stride_array, align 8
  %51 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %box.addr, align 8
  %52 = load i32*, i32** %stride.addr, align 8
  %arraydecay71 = getelementptr inbounds [3 x i32], [3 x i32]* %size, i32 0, i32 0
  %call72 = call i32 @hypre_BoxGetStrideSize(%struct.hypre_Box_struct* %51, i32* %52, i32* %arraydecay71)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.63
  %53 = load i32, i32* %i, align 4
  %cmp73 = icmp slt i32 %53, 3
  br i1 %cmp73, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %54 = load i32, i32* %i, align 4
  %idxprom = sext i32 %54 to i64
  %arrayidx74 = getelementptr inbounds [3 x i32], [3 x i32]* %size, i32 0, i64 %idxprom
  %55 = load i32, i32* %arrayidx74, align 4
  %56 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %56 to i64
  %57 = load i32*, i32** %length_array, align 8
  %arrayidx76 = getelementptr inbounds i32, i32* %57, i64 %idxprom75
  store i32 %55, i32* %arrayidx76, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %58 = load i32, i32* %i, align 4
  %inc = add nsw i32 %58, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %59 = load i32, i32* %num_values.addr, align 4
  %60 = load i32*, i32** %length_array, align 8
  %arrayidx77 = getelementptr inbounds i32, i32* %60, i64 3
  store i32 %59, i32* %arrayidx77, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.78

for.cond.78:                                      ; preds = %for.inc.115, %for.end
  %61 = load i32, i32* %i, align 4
  %cmp79 = icmp slt i32 %61, 3
  br i1 %cmp79, label %for.body.80, label %for.end.117

for.body.80:                                      ; preds = %for.cond.78
  %62 = load i32, i32* %i, align 4
  %idxprom81 = sext i32 %62 to i64
  %63 = load i32*, i32** %stride.addr, align 8
  %arrayidx82 = getelementptr inbounds i32, i32* %63, i64 %idxprom81
  %64 = load i32, i32* %arrayidx82, align 4
  %65 = load i32, i32* %i, align 4
  %idxprom83 = sext i32 %65 to i64
  %66 = load i32*, i32** %stride_array, align 8
  %arrayidx84 = getelementptr inbounds i32, i32* %66, i64 %idxprom83
  store i32 %64, i32* %arrayidx84, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.85

for.cond.85:                                      ; preds = %for.inc.112, %for.body.80
  %67 = load i32, i32* %j, align 4
  %68 = load i32, i32* %i, align 4
  %cmp86 = icmp slt i32 %67, %68
  br i1 %cmp86, label %for.body.87, label %for.end.114

for.body.87:                                      ; preds = %for.cond.85
  %69 = load i32, i32* %j, align 4
  %idxprom88 = sext i32 %69 to i64
  %70 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box.addr, align 8
  %imax89 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %70, i32 0, i32 1
  %arrayidx90 = getelementptr inbounds [3 x i32], [3 x i32]* %imax89, i32 0, i64 %idxprom88
  %71 = load i32, i32* %arrayidx90, align 4
  %72 = load i32, i32* %j, align 4
  %idxprom91 = sext i32 %72 to i64
  %73 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box.addr, align 8
  %imin92 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %73, i32 0, i32 0
  %arrayidx93 = getelementptr inbounds [3 x i32], [3 x i32]* %imin92, i32 0, i64 %idxprom91
  %74 = load i32, i32* %arrayidx93, align 4
  %sub94 = sub nsw i32 %71, %74
  %add95 = add nsw i32 %sub94, 1
  %cmp96 = icmp slt i32 0, %add95
  br i1 %cmp96, label %cond.true.97, label %cond.false.106

cond.true.97:                                     ; preds = %for.body.87
  %75 = load i32, i32* %j, align 4
  %idxprom98 = sext i32 %75 to i64
  %76 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box.addr, align 8
  %imax99 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %76, i32 0, i32 1
  %arrayidx100 = getelementptr inbounds [3 x i32], [3 x i32]* %imax99, i32 0, i64 %idxprom98
  %77 = load i32, i32* %arrayidx100, align 4
  %78 = load i32, i32* %j, align 4
  %idxprom101 = sext i32 %78 to i64
  %79 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box.addr, align 8
  %imin102 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %79, i32 0, i32 0
  %arrayidx103 = getelementptr inbounds [3 x i32], [3 x i32]* %imin102, i32 0, i64 %idxprom101
  %80 = load i32, i32* %arrayidx103, align 4
  %sub104 = sub nsw i32 %77, %80
  %add105 = add nsw i32 %sub104, 1
  br label %cond.end.107

cond.false.106:                                   ; preds = %for.body.87
  br label %cond.end.107

cond.end.107:                                     ; preds = %cond.false.106, %cond.true.97
  %cond108 = phi i32 [ %add105, %cond.true.97 ], [ 0, %cond.false.106 ]
  %81 = load i32, i32* %i, align 4
  %idxprom109 = sext i32 %81 to i64
  %82 = load i32*, i32** %stride_array, align 8
  %arrayidx110 = getelementptr inbounds i32, i32* %82, i64 %idxprom109
  %83 = load i32, i32* %arrayidx110, align 4
  %mul111 = mul nsw i32 %83, %cond108
  store i32 %mul111, i32* %arrayidx110, align 4
  br label %for.inc.112

for.inc.112:                                      ; preds = %cond.end.107
  %84 = load i32, i32* %j, align 4
  %inc113 = add nsw i32 %84, 1
  store i32 %inc113, i32* %j, align 4
  br label %for.cond.85

for.end.114:                                      ; preds = %for.cond.85
  br label %for.inc.115

for.inc.115:                                      ; preds = %for.end.114
  %85 = load i32, i32* %i, align 4
  %inc116 = add nsw i32 %85, 1
  store i32 %inc116, i32* %i, align 4
  br label %for.cond.78

for.end.117:                                      ; preds = %for.cond.78
  %86 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box.addr, align 8
  %imax118 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %86, i32 0, i32 1
  %arrayidx119 = getelementptr inbounds [3 x i32], [3 x i32]* %imax118, i32 0, i64 0
  %87 = load i32, i32* %arrayidx119, align 4
  %88 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box.addr, align 8
  %imin120 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %88, i32 0, i32 0
  %arrayidx121 = getelementptr inbounds [3 x i32], [3 x i32]* %imin120, i32 0, i64 0
  %89 = load i32, i32* %arrayidx121, align 4
  %sub122 = sub nsw i32 %87, %89
  %add123 = add nsw i32 %sub122, 1
  %cmp124 = icmp slt i32 0, %add123
  br i1 %cmp124, label %cond.true.125, label %cond.false.132

cond.true.125:                                    ; preds = %for.end.117
  %90 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box.addr, align 8
  %imax126 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %90, i32 0, i32 1
  %arrayidx127 = getelementptr inbounds [3 x i32], [3 x i32]* %imax126, i32 0, i64 0
  %91 = load i32, i32* %arrayidx127, align 4
  %92 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box.addr, align 8
  %imin128 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %92, i32 0, i32 0
  %arrayidx129 = getelementptr inbounds [3 x i32], [3 x i32]* %imin128, i32 0, i64 0
  %93 = load i32, i32* %arrayidx129, align 4
  %sub130 = sub nsw i32 %91, %93
  %add131 = add nsw i32 %sub130, 1
  br label %cond.end.133

cond.false.132:                                   ; preds = %for.end.117
  br label %cond.end.133

cond.end.133:                                     ; preds = %cond.false.132, %cond.true.125
  %cond134 = phi i32 [ %add131, %cond.true.125 ], [ 0, %cond.false.132 ]
  %94 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box.addr, align 8
  %imax135 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %94, i32 0, i32 1
  %arrayidx136 = getelementptr inbounds [3 x i32], [3 x i32]* %imax135, i32 0, i64 1
  %95 = load i32, i32* %arrayidx136, align 4
  %96 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box.addr, align 8
  %imin137 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %96, i32 0, i32 0
  %arrayidx138 = getelementptr inbounds [3 x i32], [3 x i32]* %imin137, i32 0, i64 1
  %97 = load i32, i32* %arrayidx138, align 4
  %sub139 = sub nsw i32 %95, %97
  %add140 = add nsw i32 %sub139, 1
  %cmp141 = icmp slt i32 0, %add140
  br i1 %cmp141, label %cond.true.142, label %cond.false.149

cond.true.142:                                    ; preds = %cond.end.133
  %98 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box.addr, align 8
  %imax143 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %98, i32 0, i32 1
  %arrayidx144 = getelementptr inbounds [3 x i32], [3 x i32]* %imax143, i32 0, i64 1
  %99 = load i32, i32* %arrayidx144, align 4
  %100 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box.addr, align 8
  %imin145 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %100, i32 0, i32 0
  %arrayidx146 = getelementptr inbounds [3 x i32], [3 x i32]* %imin145, i32 0, i64 1
  %101 = load i32, i32* %arrayidx146, align 4
  %sub147 = sub nsw i32 %99, %101
  %add148 = add nsw i32 %sub147, 1
  br label %cond.end.150

cond.false.149:                                   ; preds = %cond.end.133
  br label %cond.end.150

cond.end.150:                                     ; preds = %cond.false.149, %cond.true.142
  %cond151 = phi i32 [ %add148, %cond.true.142 ], [ 0, %cond.false.149 ]
  %mul152 = mul nsw i32 %cond134, %cond151
  %102 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box.addr, align 8
  %imax153 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %102, i32 0, i32 1
  %arrayidx154 = getelementptr inbounds [3 x i32], [3 x i32]* %imax153, i32 0, i64 2
  %103 = load i32, i32* %arrayidx154, align 4
  %104 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box.addr, align 8
  %imin155 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %104, i32 0, i32 0
  %arrayidx156 = getelementptr inbounds [3 x i32], [3 x i32]* %imin155, i32 0, i64 2
  %105 = load i32, i32* %arrayidx156, align 4
  %sub157 = sub nsw i32 %103, %105
  %add158 = add nsw i32 %sub157, 1
  %cmp159 = icmp slt i32 0, %add158
  br i1 %cmp159, label %cond.true.160, label %cond.false.167

cond.true.160:                                    ; preds = %cond.end.150
  %106 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box.addr, align 8
  %imax161 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %106, i32 0, i32 1
  %arrayidx162 = getelementptr inbounds [3 x i32], [3 x i32]* %imax161, i32 0, i64 2
  %107 = load i32, i32* %arrayidx162, align 4
  %108 = load %struct.hypre_Box_struct*, %struct.hypre_Box_struct** %data_box.addr, align 8
  %imin163 = getelementptr inbounds %struct.hypre_Box_struct, %struct.hypre_Box_struct* %108, i32 0, i32 0
  %arrayidx164 = getelementptr inbounds [3 x i32], [3 x i32]* %imin163, i32 0, i64 2
  %109 = load i32, i32* %arrayidx164, align 4
  %sub165 = sub nsw i32 %107, %109
  %add166 = add nsw i32 %sub165, 1
  br label %cond.end.168

cond.false.167:                                   ; preds = %cond.end.150
  br label %cond.end.168

cond.end.168:                                     ; preds = %cond.false.167, %cond.true.160
  %cond169 = phi i32 [ %add166, %cond.true.160 ], [ 0, %cond.false.167 ]
  %mul170 = mul nsw i32 %mul152, %cond169
  %110 = load i32*, i32** %stride_array, align 8
  %arrayidx171 = getelementptr inbounds i32, i32* %110, i64 3
  store i32 %mul170, i32* %arrayidx171, align 4
  store i32 4, i32* %dim, align 4
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %cond.end.168
  %111 = load i32, i32* %i, align 4
  %112 = load i32, i32* %dim, align 4
  %cmp172 = icmp slt i32 %111, %112
  br i1 %cmp172, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %113 = load i32, i32* %i, align 4
  %idxprom173 = sext i32 %113 to i64
  %114 = load i32*, i32** %length_array, align 8
  %arrayidx174 = getelementptr inbounds i32, i32* %114, i64 %idxprom173
  %115 = load i32, i32* %arrayidx174, align 4
  %cmp175 = icmp eq i32 %115, 1
  br i1 %cmp175, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %116 = load i32, i32* %i, align 4
  store i32 %116, i32* %j, align 4
  br label %for.cond.176

for.cond.176:                                     ; preds = %for.inc.190, %if.then
  %117 = load i32, i32* %j, align 4
  %118 = load i32, i32* %dim, align 4
  %sub177 = sub nsw i32 %118, 1
  %cmp178 = icmp slt i32 %117, %sub177
  br i1 %cmp178, label %for.body.179, label %for.end.192

for.body.179:                                     ; preds = %for.cond.176
  %119 = load i32, i32* %j, align 4
  %add180 = add nsw i32 %119, 1
  %idxprom181 = sext i32 %add180 to i64
  %120 = load i32*, i32** %length_array, align 8
  %arrayidx182 = getelementptr inbounds i32, i32* %120, i64 %idxprom181
  %121 = load i32, i32* %arrayidx182, align 4
  %122 = load i32, i32* %j, align 4
  %idxprom183 = sext i32 %122 to i64
  %123 = load i32*, i32** %length_array, align 8
  %arrayidx184 = getelementptr inbounds i32, i32* %123, i64 %idxprom183
  store i32 %121, i32* %arrayidx184, align 4
  %124 = load i32, i32* %j, align 4
  %add185 = add nsw i32 %124, 1
  %idxprom186 = sext i32 %add185 to i64
  %125 = load i32*, i32** %stride_array, align 8
  %arrayidx187 = getelementptr inbounds i32, i32* %125, i64 %idxprom186
  %126 = load i32, i32* %arrayidx187, align 4
  %127 = load i32, i32* %j, align 4
  %idxprom188 = sext i32 %127 to i64
  %128 = load i32*, i32** %stride_array, align 8
  %arrayidx189 = getelementptr inbounds i32, i32* %128, i64 %idxprom188
  store i32 %126, i32* %arrayidx189, align 4
  br label %for.inc.190

for.inc.190:                                      ; preds = %for.body.179
  %129 = load i32, i32* %j, align 4
  %inc191 = add nsw i32 %129, 1
  store i32 %inc191, i32* %j, align 4
  br label %for.cond.176

for.end.192:                                      ; preds = %for.cond.176
  %130 = load i32, i32* %dim, align 4
  %sub193 = sub nsw i32 %130, 1
  %idxprom194 = sext i32 %sub193 to i64
  %131 = load i32*, i32** %length_array, align 8
  %arrayidx195 = getelementptr inbounds i32, i32* %131, i64 %idxprom194
  store i32 1, i32* %arrayidx195, align 4
  %132 = load i32, i32* %dim, align 4
  %sub196 = sub nsw i32 %132, 1
  %idxprom197 = sext i32 %sub196 to i64
  %133 = load i32*, i32** %stride_array, align 8
  %arrayidx198 = getelementptr inbounds i32, i32* %133, i64 %idxprom197
  store i32 1, i32* %arrayidx198, align 4
  %134 = load i32, i32* %dim, align 4
  %dec = add nsw i32 %134, -1
  store i32 %dec, i32* %dim, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  %135 = load i32, i32* %i, align 4
  %inc199 = add nsw i32 %135, 1
  store i32 %inc199, i32* %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end.192
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %136 = load i32, i32* %dim, align 4
  %tobool = icmp ne i32 %136, 0
  br i1 %tobool, label %if.end.201, label %if.then.200

if.then.200:                                      ; preds = %while.end
  store i32 1, i32* %dim, align 4
  br label %if.end.201

if.end.201:                                       ; preds = %if.then.200, %while.end
  %137 = load i32, i32* %dim, align 4
  %138 = load %struct.hypre_CommTypeEntry_struct*, %struct.hypre_CommTypeEntry_struct** %comm_entry, align 8
  %dim202 = getelementptr inbounds %struct.hypre_CommTypeEntry_struct, %struct.hypre_CommTypeEntry_struct* %138, i32 0, i32 3
  store i32 %137, i32* %dim202, align 4
  %139 = load %struct.hypre_CommTypeEntry_struct*, %struct.hypre_CommTypeEntry_struct** %comm_entry, align 8
  ret %struct.hypre_CommTypeEntry_struct* %139
}

declare i32 @hypre_BoxGetStrideSize(%struct.hypre_Box_struct*, i32*, i32*) #1

declare i32 @hypre_MPI_Comm_size(i32, i32*) #1

declare i32 @hypre_MPI_Comm_rank(i32, i32*) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_CommTypeSort(%struct.hypre_CommType_struct* %comm_type, i32* %periodic) #0 {
entry:
  %comm_type.addr = alloca %struct.hypre_CommType_struct*, align 8
  %periodic.addr = alloca i32*, align 8
  %comm_entries = alloca %struct.hypre_CommTypeEntry_struct**, align 8
  %num_entries = alloca i32, align 4
  %comm_entry = alloca %struct.hypre_CommTypeEntry_struct*, align 8
  %imin0 = alloca i32*, align 8
  %imin1 = alloca i32*, align 8
  %imax0 = alloca i32*, align 8
  %imax1 = alloca i32*, align 8
  %swap = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ii = alloca i32, align 4
  %jj = alloca i32, align 4
  %ierr = alloca i32, align 4
  store %struct.hypre_CommType_struct* %comm_type, %struct.hypre_CommType_struct** %comm_type.addr, align 8
  store i32* %periodic, i32** %periodic.addr, align 8
  %0 = load %struct.hypre_CommType_struct*, %struct.hypre_CommType_struct** %comm_type.addr, align 8
  %comm_entries1 = getelementptr inbounds %struct.hypre_CommType_struct, %struct.hypre_CommType_struct* %0, i32 0, i32 0
  %1 = load %struct.hypre_CommTypeEntry_struct**, %struct.hypre_CommTypeEntry_struct*** %comm_entries1, align 8
  store %struct.hypre_CommTypeEntry_struct** %1, %struct.hypre_CommTypeEntry_struct*** %comm_entries, align 8
  %2 = load %struct.hypre_CommType_struct*, %struct.hypre_CommType_struct** %comm_type.addr, align 8
  %num_entries2 = getelementptr inbounds %struct.hypre_CommType_struct, %struct.hypre_CommType_struct* %2, i32 0, i32 1
  %3 = load i32, i32* %num_entries2, align 4
  store i32 %3, i32* %num_entries, align 4
  store i32 0, i32* %ierr, align 4
  %4 = load i32, i32* %num_entries, align 4
  %sub = sub nsw i32 %4, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.45, %entry
  %5 = load i32, i32* %i, align 4
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %for.body, label %for.end.46

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* %i, align 4
  %cmp4 = icmp slt i32 %6, %7
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.3
  store i32 0, i32* %swap, align 4
  %8 = load i32, i32* %j, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.hypre_CommTypeEntry_struct**, %struct.hypre_CommTypeEntry_struct*** %comm_entries, align 8
  %arrayidx = getelementptr inbounds %struct.hypre_CommTypeEntry_struct*, %struct.hypre_CommTypeEntry_struct** %9, i64 %idxprom
  %10 = load %struct.hypre_CommTypeEntry_struct*, %struct.hypre_CommTypeEntry_struct** %arrayidx, align 8
  %imin = getelementptr inbounds %struct.hypre_CommTypeEntry_struct, %struct.hypre_CommTypeEntry_struct* %10, i32 0, i32 0
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %imin, i32 0, i32 0
  store i32* %arraydecay, i32** %imin0, align 8
  %11 = load i32, i32* %j, align 4
  %add = add nsw i32 %11, 1
  %idxprom6 = sext i32 %add to i64
  %12 = load %struct.hypre_CommTypeEntry_struct**, %struct.hypre_CommTypeEntry_struct*** %comm_entries, align 8
  %arrayidx7 = getelementptr inbounds %struct.hypre_CommTypeEntry_struct*, %struct.hypre_CommTypeEntry_struct** %12, i64 %idxprom6
  %13 = load %struct.hypre_CommTypeEntry_struct*, %struct.hypre_CommTypeEntry_struct** %arrayidx7, align 8
  %imin8 = getelementptr inbounds %struct.hypre_CommTypeEntry_struct, %struct.hypre_CommTypeEntry_struct* %13, i32 0, i32 0
  %arraydecay9 = getelementptr inbounds [3 x i32], [3 x i32]* %imin8, i32 0, i32 0
  store i32* %arraydecay9, i32** %imin1, align 8
  %14 = load i32*, i32** %imin0, align 8
  %15 = load i32*, i32** %periodic.addr, align 8
  %call = call i32 @hypre_IModPeriodZ(i32* %14, i32* %15)
  %16 = load i32*, i32** %imin1, align 8
  %17 = load i32*, i32** %periodic.addr, align 8
  %call10 = call i32 @hypre_IModPeriodZ(i32* %16, i32* %17)
  %cmp11 = icmp sgt i32 %call, %call10
  br i1 %cmp11, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.5
  store i32 1, i32* %swap, align 4
  br label %if.end.32

if.else:                                          ; preds = %for.body.5
  %18 = load i32*, i32** %imin0, align 8
  %19 = load i32*, i32** %periodic.addr, align 8
  %call12 = call i32 @hypre_IModPeriodZ(i32* %18, i32* %19)
  %20 = load i32*, i32** %imin1, align 8
  %21 = load i32*, i32** %periodic.addr, align 8
  %call13 = call i32 @hypre_IModPeriodZ(i32* %20, i32* %21)
  %cmp14 = icmp eq i32 %call12, %call13
  br i1 %cmp14, label %if.then.15, label %if.end.31

if.then.15:                                       ; preds = %if.else
  %22 = load i32*, i32** %imin0, align 8
  %23 = load i32*, i32** %periodic.addr, align 8
  %call16 = call i32 @hypre_IModPeriodY(i32* %22, i32* %23)
  %24 = load i32*, i32** %imin1, align 8
  %25 = load i32*, i32** %periodic.addr, align 8
  %call17 = call i32 @hypre_IModPeriodY(i32* %24, i32* %25)
  %cmp18 = icmp sgt i32 %call16, %call17
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %if.then.15
  store i32 1, i32* %swap, align 4
  br label %if.end.30

if.else.20:                                       ; preds = %if.then.15
  %26 = load i32*, i32** %imin0, align 8
  %27 = load i32*, i32** %periodic.addr, align 8
  %call21 = call i32 @hypre_IModPeriodY(i32* %26, i32* %27)
  %28 = load i32*, i32** %imin1, align 8
  %29 = load i32*, i32** %periodic.addr, align 8
  %call22 = call i32 @hypre_IModPeriodY(i32* %28, i32* %29)
  %cmp23 = icmp eq i32 %call21, %call22
  br i1 %cmp23, label %if.then.24, label %if.end.29

if.then.24:                                       ; preds = %if.else.20
  %30 = load i32*, i32** %imin0, align 8
  %31 = load i32*, i32** %periodic.addr, align 8
  %call25 = call i32 @hypre_IModPeriodX(i32* %30, i32* %31)
  %32 = load i32*, i32** %imin1, align 8
  %33 = load i32*, i32** %periodic.addr, align 8
  %call26 = call i32 @hypre_IModPeriodX(i32* %32, i32* %33)
  %cmp27 = icmp sgt i32 %call25, %call26
  br i1 %cmp27, label %if.then.28, label %if.end

if.then.28:                                       ; preds = %if.then.24
  store i32 1, i32* %swap, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.28, %if.then.24
  br label %if.end.29

if.end.29:                                        ; preds = %if.end, %if.else.20
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.then.19
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.else
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then
  %34 = load i32, i32* %swap, align 4
  %tobool = icmp ne i32 %34, 0
  br i1 %tobool, label %if.then.33, label %if.end.44

if.then.33:                                       ; preds = %if.end.32
  %35 = load i32, i32* %j, align 4
  %idxprom34 = sext i32 %35 to i64
  %36 = load %struct.hypre_CommTypeEntry_struct**, %struct.hypre_CommTypeEntry_struct*** %comm_entries, align 8
  %arrayidx35 = getelementptr inbounds %struct.hypre_CommTypeEntry_struct*, %struct.hypre_CommTypeEntry_struct** %36, i64 %idxprom34
  %37 = load %struct.hypre_CommTypeEntry_struct*, %struct.hypre_CommTypeEntry_struct** %arrayidx35, align 8
  store %struct.hypre_CommTypeEntry_struct* %37, %struct.hypre_CommTypeEntry_struct** %comm_entry, align 8
  %38 = load i32, i32* %j, align 4
  %add36 = add nsw i32 %38, 1
  %idxprom37 = sext i32 %add36 to i64
  %39 = load %struct.hypre_CommTypeEntry_struct**, %struct.hypre_CommTypeEntry_struct*** %comm_entries, align 8
  %arrayidx38 = getelementptr inbounds %struct.hypre_CommTypeEntry_struct*, %struct.hypre_CommTypeEntry_struct** %39, i64 %idxprom37
  %40 = load %struct.hypre_CommTypeEntry_struct*, %struct.hypre_CommTypeEntry_struct** %arrayidx38, align 8
  %41 = load i32, i32* %j, align 4
  %idxprom39 = sext i32 %41 to i64
  %42 = load %struct.hypre_CommTypeEntry_struct**, %struct.hypre_CommTypeEntry_struct*** %comm_entries, align 8
  %arrayidx40 = getelementptr inbounds %struct.hypre_CommTypeEntry_struct*, %struct.hypre_CommTypeEntry_struct** %42, i64 %idxprom39
  store %struct.hypre_CommTypeEntry_struct* %40, %struct.hypre_CommTypeEntry_struct** %arrayidx40, align 8
  %43 = load %struct.hypre_CommTypeEntry_struct*, %struct.hypre_CommTypeEntry_struct** %comm_entry, align 8
  %44 = load i32, i32* %j, align 4
  %add41 = add nsw i32 %44, 1
  %idxprom42 = sext i32 %add41 to i64
  %45 = load %struct.hypre_CommTypeEntry_struct**, %struct.hypre_CommTypeEntry_struct*** %comm_entries, align 8
  %arrayidx43 = getelementptr inbounds %struct.hypre_CommTypeEntry_struct*, %struct.hypre_CommTypeEntry_struct** %45, i64 %idxprom42
  store %struct.hypre_CommTypeEntry_struct* %43, %struct.hypre_CommTypeEntry_struct** %arrayidx43, align 8
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.33, %if.end.32
  br label %for.inc

for.inc:                                          ; preds = %if.end.44
  %46 = load i32, i32* %j, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  br label %for.inc.45

for.inc.45:                                       ; preds = %for.end
  %47 = load i32, i32* %i, align 4
  %dec = add nsw i32 %47, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end.46:                                       ; preds = %for.cond
  store i32 0, i32* %ii, align 4
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc.139, %for.end.46
  %48 = load i32, i32* %ii, align 4
  %49 = load i32, i32* %num_entries, align 4
  %sub48 = sub nsw i32 %49, 1
  %cmp49 = icmp slt i32 %48, %sub48
  br i1 %cmp49, label %for.body.50, label %for.end.140

for.body.50:                                      ; preds = %for.cond.47
  %50 = load i32, i32* %ii, align 4
  %idxprom51 = sext i32 %50 to i64
  %51 = load %struct.hypre_CommTypeEntry_struct**, %struct.hypre_CommTypeEntry_struct*** %comm_entries, align 8
  %arrayidx52 = getelementptr inbounds %struct.hypre_CommTypeEntry_struct*, %struct.hypre_CommTypeEntry_struct** %51, i64 %idxprom51
  %52 = load %struct.hypre_CommTypeEntry_struct*, %struct.hypre_CommTypeEntry_struct** %arrayidx52, align 8
  %imin53 = getelementptr inbounds %struct.hypre_CommTypeEntry_struct, %struct.hypre_CommTypeEntry_struct* %52, i32 0, i32 0
  %arraydecay54 = getelementptr inbounds [3 x i32], [3 x i32]* %imin53, i32 0, i32 0
  store i32* %arraydecay54, i32** %imin0, align 8
  %53 = load i32, i32* %ii, align 4
  %add55 = add nsw i32 %53, 1
  store i32 %add55, i32* %jj, align 4
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.75, %for.body.50
  %54 = load i32, i32* %jj, align 4
  %55 = load i32, i32* %num_entries, align 4
  %cmp57 = icmp slt i32 %54, %55
  br i1 %cmp57, label %for.body.58, label %for.end.77

for.body.58:                                      ; preds = %for.cond.56
  %56 = load i32, i32* %jj, align 4
  %idxprom59 = sext i32 %56 to i64
  %57 = load %struct.hypre_CommTypeEntry_struct**, %struct.hypre_CommTypeEntry_struct*** %comm_entries, align 8
  %arrayidx60 = getelementptr inbounds %struct.hypre_CommTypeEntry_struct*, %struct.hypre_CommTypeEntry_struct** %57, i64 %idxprom59
  %58 = load %struct.hypre_CommTypeEntry_struct*, %struct.hypre_CommTypeEntry_struct** %arrayidx60, align 8
  %imin61 = getelementptr inbounds %struct.hypre_CommTypeEntry_struct, %struct.hypre_CommTypeEntry_struct* %58, i32 0, i32 0
  %arraydecay62 = getelementptr inbounds [3 x i32], [3 x i32]* %imin61, i32 0, i32 0
  store i32* %arraydecay62, i32** %imin1, align 8
  %59 = load i32*, i32** %imin0, align 8
  %60 = load i32*, i32** %periodic.addr, align 8
  %call63 = call i32 @hypre_IModPeriodX(i32* %59, i32* %60)
  %61 = load i32*, i32** %imin1, align 8
  %62 = load i32*, i32** %periodic.addr, align 8
  %call64 = call i32 @hypre_IModPeriodX(i32* %61, i32* %62)
  %cmp65 = icmp ne i32 %call63, %call64
  br i1 %cmp65, label %if.then.73, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.58
  %63 = load i32*, i32** %imin0, align 8
  %64 = load i32*, i32** %periodic.addr, align 8
  %call66 = call i32 @hypre_IModPeriodY(i32* %63, i32* %64)
  %65 = load i32*, i32** %imin1, align 8
  %66 = load i32*, i32** %periodic.addr, align 8
  %call67 = call i32 @hypre_IModPeriodY(i32* %65, i32* %66)
  %cmp68 = icmp ne i32 %call66, %call67
  br i1 %cmp68, label %if.then.73, label %lor.lhs.false.69

lor.lhs.false.69:                                 ; preds = %lor.lhs.false
  %67 = load i32*, i32** %imin0, align 8
  %68 = load i32*, i32** %periodic.addr, align 8
  %call70 = call i32 @hypre_IModPeriodZ(i32* %67, i32* %68)
  %69 = load i32*, i32** %imin1, align 8
  %70 = load i32*, i32** %periodic.addr, align 8
  %call71 = call i32 @hypre_IModPeriodZ(i32* %69, i32* %70)
  %cmp72 = icmp ne i32 %call70, %call71
  br i1 %cmp72, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %lor.lhs.false.69, %lor.lhs.false, %for.body.58
  br label %for.end.77

if.end.74:                                        ; preds = %lor.lhs.false.69
  br label %for.inc.75

for.inc.75:                                       ; preds = %if.end.74
  %71 = load i32, i32* %jj, align 4
  %inc76 = add nsw i32 %71, 1
  store i32 %inc76, i32* %jj, align 4
  br label %for.cond.56

for.end.77:                                       ; preds = %if.then.73, %for.cond.56
  %72 = load i32, i32* %jj, align 4
  %sub78 = sub nsw i32 %72, 1
  store i32 %sub78, i32* %i, align 4
  br label %for.cond.79

for.cond.79:                                      ; preds = %for.inc.136, %for.end.77
  %73 = load i32, i32* %i, align 4
  %74 = load i32, i32* %ii, align 4
  %cmp80 = icmp sgt i32 %73, %74
  br i1 %cmp80, label %for.body.81, label %for.end.138

for.body.81:                                      ; preds = %for.cond.79
  %75 = load i32, i32* %ii, align 4
  store i32 %75, i32* %j, align 4
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc.133, %for.body.81
  %76 = load i32, i32* %j, align 4
  %77 = load i32, i32* %i, align 4
  %cmp83 = icmp slt i32 %76, %77
  br i1 %cmp83, label %for.body.84, label %for.end.135

for.body.84:                                      ; preds = %for.cond.82
  store i32 0, i32* %swap, align 4
  %78 = load i32, i32* %j, align 4
  %idxprom85 = sext i32 %78 to i64
  %79 = load %struct.hypre_CommTypeEntry_struct**, %struct.hypre_CommTypeEntry_struct*** %comm_entries, align 8
  %arrayidx86 = getelementptr inbounds %struct.hypre_CommTypeEntry_struct*, %struct.hypre_CommTypeEntry_struct** %79, i64 %idxprom85
  %80 = load %struct.hypre_CommTypeEntry_struct*, %struct.hypre_CommTypeEntry_struct** %arrayidx86, align 8
  %imax = getelementptr inbounds %struct.hypre_CommTypeEntry_struct, %struct.hypre_CommTypeEntry_struct* %80, i32 0, i32 1
  %arraydecay87 = getelementptr inbounds [3 x i32], [3 x i32]* %imax, i32 0, i32 0
  store i32* %arraydecay87, i32** %imax0, align 8
  %81 = load i32, i32* %j, align 4
  %add88 = add nsw i32 %81, 1
  %idxprom89 = sext i32 %add88 to i64
  %82 = load %struct.hypre_CommTypeEntry_struct**, %struct.hypre_CommTypeEntry_struct*** %comm_entries, align 8
  %arrayidx90 = getelementptr inbounds %struct.hypre_CommTypeEntry_struct*, %struct.hypre_CommTypeEntry_struct** %82, i64 %idxprom89
  %83 = load %struct.hypre_CommTypeEntry_struct*, %struct.hypre_CommTypeEntry_struct** %arrayidx90, align 8
  %imax91 = getelementptr inbounds %struct.hypre_CommTypeEntry_struct, %struct.hypre_CommTypeEntry_struct* %83, i32 0, i32 1
  %arraydecay92 = getelementptr inbounds [3 x i32], [3 x i32]* %imax91, i32 0, i32 0
  store i32* %arraydecay92, i32** %imax1, align 8
  %84 = load i32*, i32** %imax0, align 8
  %85 = load i32*, i32** %periodic.addr, align 8
  %call93 = call i32 @hypre_IModPeriodZ(i32* %84, i32* %85)
  %86 = load i32*, i32** %imax1, align 8
  %87 = load i32*, i32** %periodic.addr, align 8
  %call94 = call i32 @hypre_IModPeriodZ(i32* %86, i32* %87)
  %cmp95 = icmp sgt i32 %call93, %call94
  br i1 %cmp95, label %if.then.96, label %if.else.97

if.then.96:                                       ; preds = %for.body.84
  store i32 1, i32* %swap, align 4
  br label %if.end.119

if.else.97:                                       ; preds = %for.body.84
  %88 = load i32*, i32** %imax0, align 8
  %89 = load i32*, i32** %periodic.addr, align 8
  %call98 = call i32 @hypre_IModPeriodZ(i32* %88, i32* %89)
  %90 = load i32*, i32** %imax1, align 8
  %91 = load i32*, i32** %periodic.addr, align 8
  %call99 = call i32 @hypre_IModPeriodZ(i32* %90, i32* %91)
  %cmp100 = icmp eq i32 %call98, %call99
  br i1 %cmp100, label %if.then.101, label %if.end.118

if.then.101:                                      ; preds = %if.else.97
  %92 = load i32*, i32** %imax0, align 8
  %93 = load i32*, i32** %periodic.addr, align 8
  %call102 = call i32 @hypre_IModPeriodY(i32* %92, i32* %93)
  %94 = load i32*, i32** %imax1, align 8
  %95 = load i32*, i32** %periodic.addr, align 8
  %call103 = call i32 @hypre_IModPeriodY(i32* %94, i32* %95)
  %cmp104 = icmp sgt i32 %call102, %call103
  br i1 %cmp104, label %if.then.105, label %if.else.106

if.then.105:                                      ; preds = %if.then.101
  store i32 1, i32* %swap, align 4
  br label %if.end.117

if.else.106:                                      ; preds = %if.then.101
  %96 = load i32*, i32** %imax0, align 8
  %97 = load i32*, i32** %periodic.addr, align 8
  %call107 = call i32 @hypre_IModPeriodY(i32* %96, i32* %97)
  %98 = load i32*, i32** %imax1, align 8
  %99 = load i32*, i32** %periodic.addr, align 8
  %call108 = call i32 @hypre_IModPeriodY(i32* %98, i32* %99)
  %cmp109 = icmp eq i32 %call107, %call108
  br i1 %cmp109, label %if.then.110, label %if.end.116

if.then.110:                                      ; preds = %if.else.106
  %100 = load i32*, i32** %imax0, align 8
  %101 = load i32*, i32** %periodic.addr, align 8
  %call111 = call i32 @hypre_IModPeriodX(i32* %100, i32* %101)
  %102 = load i32*, i32** %imax1, align 8
  %103 = load i32*, i32** %periodic.addr, align 8
  %call112 = call i32 @hypre_IModPeriodX(i32* %102, i32* %103)
  %cmp113 = icmp sgt i32 %call111, %call112
  br i1 %cmp113, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %if.then.110
  store i32 1, i32* %swap, align 4
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.114, %if.then.110
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.115, %if.else.106
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.116, %if.then.105
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.117, %if.else.97
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %if.then.96
  %104 = load i32, i32* %swap, align 4
  %tobool120 = icmp ne i32 %104, 0
  br i1 %tobool120, label %if.then.121, label %if.end.132

if.then.121:                                      ; preds = %if.end.119
  %105 = load i32, i32* %j, align 4
  %idxprom122 = sext i32 %105 to i64
  %106 = load %struct.hypre_CommTypeEntry_struct**, %struct.hypre_CommTypeEntry_struct*** %comm_entries, align 8
  %arrayidx123 = getelementptr inbounds %struct.hypre_CommTypeEntry_struct*, %struct.hypre_CommTypeEntry_struct** %106, i64 %idxprom122
  %107 = load %struct.hypre_CommTypeEntry_struct*, %struct.hypre_CommTypeEntry_struct** %arrayidx123, align 8
  store %struct.hypre_CommTypeEntry_struct* %107, %struct.hypre_CommTypeEntry_struct** %comm_entry, align 8
  %108 = load i32, i32* %j, align 4
  %add124 = add nsw i32 %108, 1
  %idxprom125 = sext i32 %add124 to i64
  %109 = load %struct.hypre_CommTypeEntry_struct**, %struct.hypre_CommTypeEntry_struct*** %comm_entries, align 8
  %arrayidx126 = getelementptr inbounds %struct.hypre_CommTypeEntry_struct*, %struct.hypre_CommTypeEntry_struct** %109, i64 %idxprom125
  %110 = load %struct.hypre_CommTypeEntry_struct*, %struct.hypre_CommTypeEntry_struct** %arrayidx126, align 8
  %111 = load i32, i32* %j, align 4
  %idxprom127 = sext i32 %111 to i64
  %112 = load %struct.hypre_CommTypeEntry_struct**, %struct.hypre_CommTypeEntry_struct*** %comm_entries, align 8
  %arrayidx128 = getelementptr inbounds %struct.hypre_CommTypeEntry_struct*, %struct.hypre_CommTypeEntry_struct** %112, i64 %idxprom127
  store %struct.hypre_CommTypeEntry_struct* %110, %struct.hypre_CommTypeEntry_struct** %arrayidx128, align 8
  %113 = load %struct.hypre_CommTypeEntry_struct*, %struct.hypre_CommTypeEntry_struct** %comm_entry, align 8
  %114 = load i32, i32* %j, align 4
  %add129 = add nsw i32 %114, 1
  %idxprom130 = sext i32 %add129 to i64
  %115 = load %struct.hypre_CommTypeEntry_struct**, %struct.hypre_CommTypeEntry_struct*** %comm_entries, align 8
  %arrayidx131 = getelementptr inbounds %struct.hypre_CommTypeEntry_struct*, %struct.hypre_CommTypeEntry_struct** %115, i64 %idxprom130
  store %struct.hypre_CommTypeEntry_struct* %113, %struct.hypre_CommTypeEntry_struct** %arrayidx131, align 8
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.121, %if.end.119
  br label %for.inc.133

for.inc.133:                                      ; preds = %if.end.132
  %116 = load i32, i32* %j, align 4
  %inc134 = add nsw i32 %116, 1
  store i32 %inc134, i32* %j, align 4
  br label %for.cond.82

for.end.135:                                      ; preds = %for.cond.82
  br label %for.inc.136

for.inc.136:                                      ; preds = %for.end.135
  %117 = load i32, i32* %i, align 4
  %dec137 = add nsw i32 %117, -1
  store i32 %dec137, i32* %i, align 4
  br label %for.cond.79

for.end.138:                                      ; preds = %for.cond.79
  br label %for.inc.139

for.inc.139:                                      ; preds = %for.end.138
  %118 = load i32, i32* %jj, align 4
  store i32 %118, i32* %ii, align 4
  br label %for.cond.47

for.end.140:                                      ; preds = %for.cond.47
  %119 = load i32, i32* %ierr, align 4
  ret i32 %119
}

declare i32 @hypre_IModPeriodZ(i32*, i32*) #1

declare i32 @hypre_IModPeriodY(i32*, i32*) #1

declare i32 @hypre_IModPeriodX(i32*, i32*) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_CommTypeBuildMPI(i32 %num_comms, i32* %comm_procs, %struct.hypre_CommType_struct** %comm_types, i32* %comm_mpi_types) #0 {
entry:
  %num_comms.addr = alloca i32, align 4
  %comm_procs.addr = alloca i32*, align 8
  %comm_types.addr = alloca %struct.hypre_CommType_struct**, align 8
  %comm_mpi_types.addr = alloca i32*, align 8
  %comm_type = alloca %struct.hypre_CommType_struct*, align 8
  %comm_entry = alloca %struct.hypre_CommTypeEntry_struct*, align 8
  %num_entries = alloca i32, align 4
  %comm_entry_blocklengths = alloca i32*, align 8
  %comm_entry_displacements = alloca i32*, align 8
  %comm_entry_mpi_types = alloca i32*, align 8
  %m = alloca i32, align 4
  %i = alloca i32, align 4
  %ierr = alloca i32, align 4
  store i32 %num_comms, i32* %num_comms.addr, align 4
  store i32* %comm_procs, i32** %comm_procs.addr, align 8
  store %struct.hypre_CommType_struct** %comm_types, %struct.hypre_CommType_struct*** %comm_types.addr, align 8
  store i32* %comm_mpi_types, i32** %comm_mpi_types.addr, align 8
  store i32 0, i32* %ierr, align 4
  store i32 0, i32* %m, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.43, %entry
  %0 = load i32, i32* %m, align 4
  %1 = load i32, i32* %num_comms.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.45

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %m, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.hypre_CommType_struct**, %struct.hypre_CommType_struct*** %comm_types.addr, align 8
  %arrayidx = getelementptr inbounds %struct.hypre_CommType_struct*, %struct.hypre_CommType_struct** %3, i64 %idxprom
  %4 = load %struct.hypre_CommType_struct*, %struct.hypre_CommType_struct** %arrayidx, align 8
  store %struct.hypre_CommType_struct* %4, %struct.hypre_CommType_struct** %comm_type, align 8
  %5 = load %struct.hypre_CommType_struct*, %struct.hypre_CommType_struct** %comm_type, align 8
  %num_entries1 = getelementptr inbounds %struct.hypre_CommType_struct, %struct.hypre_CommType_struct* %5, i32 0, i32 1
  %6 = load i32, i32* %num_entries1, align 4
  store i32 %6, i32* %num_entries, align 4
  %7 = load i32, i32* %num_entries, align 4
  %conv = sext i32 %7 to i64
  %mul = mul i64 4, %conv
  %conv2 = trunc i64 %mul to i32
  %call = call i8* @hypre_MAlloc(i32 %conv2)
  %8 = bitcast i8* %call to i32*
  store i32* %8, i32** %comm_entry_blocklengths, align 8
  %9 = load i32, i32* %num_entries, align 4
  %conv3 = sext i32 %9 to i64
  %mul4 = mul i64 4, %conv3
  %conv5 = trunc i64 %mul4 to i32
  %call6 = call i8* @hypre_MAlloc(i32 %conv5)
  %10 = bitcast i8* %call6 to i32*
  store i32* %10, i32** %comm_entry_displacements, align 8
  %11 = load i32, i32* %num_entries, align 4
  %conv7 = sext i32 %11 to i64
  %mul8 = mul i64 4, %conv7
  %conv9 = trunc i64 %mul8 to i32
  %call10 = call i8* @hypre_MAlloc(i32 %conv9)
  %12 = bitcast i8* %call10 to i32*
  store i32* %12, i32** %comm_entry_mpi_types, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc, %for.body
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %num_entries, align 4
  %cmp12 = icmp slt i32 %13, %14
  br i1 %cmp12, label %for.body.14, label %for.end

for.body.14:                                      ; preds = %for.cond.11
  %15 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %15 to i64
  %16 = load %struct.hypre_CommType_struct*, %struct.hypre_CommType_struct** %comm_type, align 8
  %comm_entries = getelementptr inbounds %struct.hypre_CommType_struct, %struct.hypre_CommType_struct* %16, i32 0, i32 0
  %17 = load %struct.hypre_CommTypeEntry_struct**, %struct.hypre_CommTypeEntry_struct*** %comm_entries, align 8
  %arrayidx16 = getelementptr inbounds %struct.hypre_CommTypeEntry_struct*, %struct.hypre_CommTypeEntry_struct** %17, i64 %idxprom15
  %18 = load %struct.hypre_CommTypeEntry_struct*, %struct.hypre_CommTypeEntry_struct** %arrayidx16, align 8
  store %struct.hypre_CommTypeEntry_struct* %18, %struct.hypre_CommTypeEntry_struct** %comm_entry, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %19 to i64
  %20 = load i32*, i32** %comm_entry_blocklengths, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %20, i64 %idxprom17
  store i32 1, i32* %arrayidx18, align 4
  %21 = load %struct.hypre_CommTypeEntry_struct*, %struct.hypre_CommTypeEntry_struct** %comm_entry, align 8
  %offset = getelementptr inbounds %struct.hypre_CommTypeEntry_struct, %struct.hypre_CommTypeEntry_struct* %21, i32 0, i32 2
  %22 = load i32, i32* %offset, align 4
  %conv19 = sext i32 %22 to i64
  %mul20 = mul i64 %conv19, 8
  %conv21 = trunc i64 %mul20 to i32
  %23 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %23 to i64
  %24 = load i32*, i32** %comm_entry_displacements, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %24, i64 %idxprom22
  store i32 %conv21, i32* %arrayidx23, align 4
  %25 = load %struct.hypre_CommTypeEntry_struct*, %struct.hypre_CommTypeEntry_struct** %comm_entry, align 8
  %26 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %26 to i64
  %27 = load i32*, i32** %comm_entry_mpi_types, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %27, i64 %idxprom24
  %call26 = call i32 @hypre_CommTypeEntryBuildMPI(%struct.hypre_CommTypeEntry_struct* %25, i32* %arrayidx25)
  br label %for.inc

for.inc:                                          ; preds = %for.body.14
  %28 = load i32, i32* %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.11

for.end:                                          ; preds = %for.cond.11
  %29 = load i32, i32* %num_entries, align 4
  %30 = load i32*, i32** %comm_entry_blocklengths, align 8
  %31 = load i32*, i32** %comm_entry_displacements, align 8
  %32 = load i32*, i32** %comm_entry_mpi_types, align 8
  %33 = load i32, i32* %m, align 4
  %idxprom27 = sext i32 %33 to i64
  %34 = load i32*, i32** %comm_mpi_types.addr, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %34, i64 %idxprom27
  %call29 = call i32 @hypre_MPI_Type_struct(i32 %29, i32* %30, i32* %31, i32* %32, i32* %arrayidx28)
  %35 = load i32, i32* %m, align 4
  %idxprom30 = sext i32 %35 to i64
  %36 = load i32*, i32** %comm_mpi_types.addr, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %36, i64 %idxprom30
  %call32 = call i32 @hypre_MPI_Type_commit(i32* %arrayidx31)
  store i32 0, i32* %i, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.40, %for.end
  %37 = load i32, i32* %i, align 4
  %38 = load i32, i32* %num_entries, align 4
  %cmp34 = icmp slt i32 %37, %38
  br i1 %cmp34, label %for.body.36, label %for.end.42

for.body.36:                                      ; preds = %for.cond.33
  %39 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %39 to i64
  %40 = load i32*, i32** %comm_entry_mpi_types, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %40, i64 %idxprom37
  %call39 = call i32 @hypre_MPI_Type_free(i32* %arrayidx38)
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.body.36
  %41 = load i32, i32* %i, align 4
  %inc41 = add nsw i32 %41, 1
  store i32 %inc41, i32* %i, align 4
  br label %for.cond.33

for.end.42:                                       ; preds = %for.cond.33
  %42 = load i32*, i32** %comm_entry_blocklengths, align 8
  %43 = bitcast i32* %42 to i8*
  call void @hypre_Free(i8* %43)
  store i32* null, i32** %comm_entry_blocklengths, align 8
  %44 = load i32*, i32** %comm_entry_displacements, align 8
  %45 = bitcast i32* %44 to i8*
  call void @hypre_Free(i8* %45)
  store i32* null, i32** %comm_entry_displacements, align 8
  %46 = load i32*, i32** %comm_entry_mpi_types, align 8
  %47 = bitcast i32* %46 to i8*
  call void @hypre_Free(i8* %47)
  store i32* null, i32** %comm_entry_mpi_types, align 8
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.end.42
  %48 = load i32, i32* %m, align 4
  %inc44 = add nsw i32 %48, 1
  store i32 %inc44, i32* %m, align 4
  br label %for.cond

for.end.45:                                       ; preds = %for.cond
  %49 = load i32, i32* %ierr, align 4
  ret i32 %49
}

declare i32 @hypre_MPI_Type_free(i32*) #1

; Function Attrs: nounwind uwtable
define i32 @hypre_CommTypeEntryBuildMPI(%struct.hypre_CommTypeEntry_struct* %comm_entry, i32* %comm_entry_mpi_type) #0 {
entry:
  %comm_entry.addr = alloca %struct.hypre_CommTypeEntry_struct*, align 8
  %comm_entry_mpi_type.addr = alloca i32*, align 8
  %dim = alloca i32, align 4
  %length_array = alloca i32*, align 8
  %stride_array = alloca i32*, align 8
  %old_type = alloca i32*, align 8
  %new_type = alloca i32*, align 8
  %tmp_type = alloca i32*, align 8
  %i = alloca i32, align 4
  %ierr = alloca i32, align 4
  store %struct.hypre_CommTypeEntry_struct* %comm_entry, %struct.hypre_CommTypeEntry_struct** %comm_entry.addr, align 8
  store i32* %comm_entry_mpi_type, i32** %comm_entry_mpi_type.addr, align 8
  %0 = load %struct.hypre_CommTypeEntry_struct*, %struct.hypre_CommTypeEntry_struct** %comm_entry.addr, align 8
  %dim1 = getelementptr inbounds %struct.hypre_CommTypeEntry_struct, %struct.hypre_CommTypeEntry_struct* %0, i32 0, i32 3
  %1 = load i32, i32* %dim1, align 4
  store i32 %1, i32* %dim, align 4
  %2 = load %struct.hypre_CommTypeEntry_struct*, %struct.hypre_CommTypeEntry_struct** %comm_entry.addr, align 8
  %length_array2 = getelementptr inbounds %struct.hypre_CommTypeEntry_struct, %struct.hypre_CommTypeEntry_struct* %2, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %length_array2, i32 0, i32 0
  store i32* %arraydecay, i32** %length_array, align 8
  %3 = load %struct.hypre_CommTypeEntry_struct*, %struct.hypre_CommTypeEntry_struct** %comm_entry.addr, align 8
  %stride_array3 = getelementptr inbounds %struct.hypre_CommTypeEntry_struct, %struct.hypre_CommTypeEntry_struct* %3, i32 0, i32 5
  %arraydecay4 = getelementptr inbounds [4 x i32], [4 x i32]* %stride_array3, i32 0, i32 0
  store i32* %arraydecay4, i32** %stride_array, align 8
  store i32 0, i32* %ierr, align 4
  %4 = load i32, i32* %dim, align 4
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i32*, i32** %length_array, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 0
  %6 = load i32, i32* %arrayidx, align 4
  %7 = load i32*, i32** %stride_array, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %7, i64 0
  %8 = load i32, i32* %arrayidx5, align 4
  %conv = sext i32 %8 to i64
  %mul = mul i64 %conv, 8
  %conv6 = trunc i64 %mul to i32
  %9 = load i32*, i32** %comm_entry_mpi_type.addr, align 8
  %call = call i32 @hypre_MPI_Type_hvector(i32 %6, i32 1, i32 %conv6, i32 0, i32* %9)
  br label %if.end

if.else:                                          ; preds = %entry
  %call7 = call i8* @hypre_CAlloc(i32 1, i32 4)
  %10 = bitcast i8* %call7 to i32*
  store i32* %10, i32** %old_type, align 8
  %call8 = call i8* @hypre_CAlloc(i32 1, i32 4)
  %11 = bitcast i8* %call8 to i32*
  store i32* %11, i32** %new_type, align 8
  %12 = load i32*, i32** %length_array, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %12, i64 0
  %13 = load i32, i32* %arrayidx9, align 4
  %14 = load i32*, i32** %stride_array, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %14, i64 0
  %15 = load i32, i32* %arrayidx10, align 4
  %conv11 = sext i32 %15 to i64
  %mul12 = mul i64 %conv11, 8
  %conv13 = trunc i64 %mul12 to i32
  %16 = load i32*, i32** %old_type, align 8
  %call14 = call i32 @hypre_MPI_Type_hvector(i32 %13, i32 1, i32 %conv13, i32 0, i32* %16)
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %dim, align 4
  %sub = sub nsw i32 %18, 1
  %cmp15 = icmp slt i32 %17, %sub
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %i, align 4
  %idxprom = sext i32 %19 to i64
  %20 = load i32*, i32** %length_array, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %20, i64 %idxprom
  %21 = load i32, i32* %arrayidx17, align 4
  %22 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %22 to i64
  %23 = load i32*, i32** %stride_array, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %23, i64 %idxprom18
  %24 = load i32, i32* %arrayidx19, align 4
  %conv20 = sext i32 %24 to i64
  %mul21 = mul i64 %conv20, 8
  %conv22 = trunc i64 %mul21 to i32
  %25 = load i32*, i32** %old_type, align 8
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %new_type, align 8
  %call23 = call i32 @hypre_MPI_Type_hvector(i32 %21, i32 1, i32 %conv22, i32 %26, i32* %27)
  %28 = load i32*, i32** %old_type, align 8
  %call24 = call i32 @hypre_MPI_Type_free(i32* %28)
  %29 = load i32*, i32** %old_type, align 8
  store i32* %29, i32** %tmp_type, align 8
  %30 = load i32*, i32** %new_type, align 8
  store i32* %30, i32** %old_type, align 8
  %31 = load i32*, i32** %tmp_type, align 8
  store i32* %31, i32** %new_type, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, i32* %i, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %33 to i64
  %34 = load i32*, i32** %length_array, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %34, i64 %idxprom25
  %35 = load i32, i32* %arrayidx26, align 4
  %36 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %36 to i64
  %37 = load i32*, i32** %stride_array, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %37, i64 %idxprom27
  %38 = load i32, i32* %arrayidx28, align 4
  %conv29 = sext i32 %38 to i64
  %mul30 = mul i64 %conv29, 8
  %conv31 = trunc i64 %mul30 to i32
  %39 = load i32*, i32** %old_type, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %comm_entry_mpi_type.addr, align 8
  %call32 = call i32 @hypre_MPI_Type_hvector(i32 %35, i32 1, i32 %conv31, i32 %40, i32* %41)
  %42 = load i32*, i32** %old_type, align 8
  %call33 = call i32 @hypre_MPI_Type_free(i32* %42)
  %43 = load i32*, i32** %old_type, align 8
  %44 = bitcast i32* %43 to i8*
  call void @hypre_Free(i8* %44)
  store i32* null, i32** %old_type, align 8
  %45 = load i32*, i32** %new_type, align 8
  %46 = bitcast i32* %45 to i8*
  call void @hypre_Free(i8* %46)
  store i32* null, i32** %new_type, align 8
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %47 = load i32, i32* %ierr, align 4
  ret i32 %47
}

declare i32 @hypre_MPI_Type_struct(i32, i32*, i32*, i32*, i32*) #1

declare i32 @hypre_MPI_Type_commit(i32*) #1

declare i32 @hypre_MPI_Type_hvector(i32, i32, i32, i32, i32*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
