; ModuleID = './gsmchunk.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gs_gc_root_s = type { %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i32 }
%struct.gs_memory_chunk_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s*, %struct.gs_memory_s*, %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s*, i64 }
%struct.chunk_mem_node_s = type { i32, i32, i32, %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s*, %struct.chunk_obj_node_s*, %struct.chunk_freelist_node_s* }
%struct.chunk_obj_node_s = type { %struct.chunk_obj_node_s*, %struct.chunk_obj_node_s*, %struct.chunk_mem_node_s*, %struct.gs_memory_struct_type_s*, i32 }
%struct.chunk_freelist_node_s = type { %struct.chunk_freelist_node_s*, i32 }

@.str = private unnamed_addr constant [22 x i8] c"gs_malloc_wrap(chunk)\00", align 1
@chunk_procs = internal constant %struct.gs_memory_procs_s { i8* (%struct.gs_memory_s*, i32, i8*)* @chunk_alloc_bytes_immovable, i8* (%struct.gs_memory_s*, i8*, i32, i8*)* @chunk_resize_object, void (%struct.gs_memory_s*, i8*, i8*)* @chunk_free_object, %struct.gs_memory_s* (%struct.gs_memory_s*)* @chunk_stable, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)* @chunk_status, void (%struct.gs_memory_s*, i32, i8*)* @chunk_free_all, void (%struct.gs_memory_s*)* @chunk_consolidate_free, i8* (%struct.gs_memory_s*, i32, i8*)* @chunk_alloc_bytes, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)* @chunk_alloc_struct, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)* @chunk_alloc_struct_immovable, i8* (%struct.gs_memory_s*, i32, i32, i8*)* @chunk_alloc_byte_array, i8* (%struct.gs_memory_s*, i32, i32, i8*)* @chunk_alloc_byte_array_immovable, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)* @chunk_alloc_struct_array, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)* @chunk_alloc_struct_array_immovable, i32 (%struct.gs_memory_s*, i8*)* @chunk_object_size, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)* @chunk_object_type, i8* (%struct.gs_memory_s*, i32, i8*)* @chunk_alloc_string, i8* (%struct.gs_memory_s*, i32, i8*)* @chunk_alloc_string_immovable, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)* @chunk_resize_string, void (%struct.gs_memory_s*, i8*, i32, i8*)* @chunk_free_string, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)* @chunk_register_root, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)* @chunk_unregister_root, void (%struct.gs_memory_s*, i32)* @chunk_enable_free }, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"gs_memory_chunk_release\00", align 1
@st_bytes = external constant %struct.gs_memory_struct_type_s, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"chunk_mem_node_add\00", align 1
@.str.3 = private unnamed_addr constant [70 x i8] c"largest_free value = %d is too large, cannot find room for size = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"FAIL - no nodes to be removed\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"chunk_mem_node_remove\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gs_memory_chunk_wrap(%struct.gs_memory_s** %wrapped, %struct.gs_memory_s* %target) #0 {
entry:
  %retval = alloca i32, align 4
  %wrapped.addr = alloca %struct.gs_memory_s**, align 8
  %target.addr = alloca %struct.gs_memory_s*, align 8
  %non_gc_target = alloca %struct.gs_memory_s*, align 8
  %cmem = alloca %struct.gs_memory_chunk_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s** %wrapped, %struct.gs_memory_s*** %wrapped.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %target, %struct.gs_memory_s** %target.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %non_gc_target to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target.addr, align 8, !tbaa !1
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 3
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !5
  store %struct.gs_memory_s* %2, %struct.gs_memory_s** %non_gc_target, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_chunk_s** %cmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store %struct.gs_memory_chunk_s* null, %struct.gs_memory_chunk_s** %cmem, align 8, !tbaa !1
  %4 = load %struct.gs_memory_s**, %struct.gs_memory_s*** %wrapped.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* null, %struct.gs_memory_s** %4, align 8, !tbaa !1
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_target, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_memory_s* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_target, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 1
  %alloc_bytes_immovable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 0
  %7 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes_immovable, align 8, !tbaa !8
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_target, align 8, !tbaa !1
  %call = call i8* %7(%struct.gs_memory_s* %8, i32 248, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0)) #5
  %9 = bitcast i8* %call to %struct.gs_memory_chunk_s*
  store %struct.gs_memory_chunk_s* %9, %struct.gs_memory_chunk_s** %cmem, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.gs_memory_chunk_s*, %struct.gs_memory_chunk_s** %cmem, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_memory_chunk_s* %10, null
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.2:                                         ; preds = %if.end
  %11 = load %struct.gs_memory_chunk_s*, %struct.gs_memory_chunk_s** %cmem, align 8, !tbaa !1
  %12 = bitcast %struct.gs_memory_chunk_s* %11 to %struct.gs_memory_s*
  %13 = load %struct.gs_memory_chunk_s*, %struct.gs_memory_chunk_s** %cmem, align 8, !tbaa !1
  %stable_memory = getelementptr inbounds %struct.gs_memory_chunk_s, %struct.gs_memory_chunk_s* %13, i32 0, i32 0
  store %struct.gs_memory_s* %12, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !9
  %14 = load %struct.gs_memory_chunk_s*, %struct.gs_memory_chunk_s** %cmem, align 8, !tbaa !1
  %procs3 = getelementptr inbounds %struct.gs_memory_chunk_s, %struct.gs_memory_chunk_s* %14, i32 0, i32 1
  %15 = bitcast %struct.gs_memory_procs_s* %procs3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* bitcast (%struct.gs_memory_procs_s* @chunk_procs to i8*), i64 184, i32 8, i1 false), !tbaa.struct !12
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_target, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %16, i32 0, i32 2
  %17 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !13
  %18 = load %struct.gs_memory_chunk_s*, %struct.gs_memory_chunk_s** %cmem, align 8, !tbaa !1
  %gs_lib_ctx4 = getelementptr inbounds %struct.gs_memory_chunk_s, %struct.gs_memory_chunk_s* %18, i32 0, i32 2
  store %struct.gs_lib_ctx_s* %17, %struct.gs_lib_ctx_s** %gs_lib_ctx4, align 8, !tbaa !14
  %19 = load %struct.gs_memory_chunk_s*, %struct.gs_memory_chunk_s** %cmem, align 8, !tbaa !1
  %20 = bitcast %struct.gs_memory_chunk_s* %19 to %struct.gs_memory_s*
  %21 = load %struct.gs_memory_chunk_s*, %struct.gs_memory_chunk_s** %cmem, align 8, !tbaa !1
  %non_gc_memory5 = getelementptr inbounds %struct.gs_memory_chunk_s, %struct.gs_memory_chunk_s* %21, i32 0, i32 3
  store %struct.gs_memory_s* %20, %struct.gs_memory_s** %non_gc_memory5, align 8, !tbaa !15
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_target, align 8, !tbaa !1
  %thread_safe_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %22, i32 0, i32 4
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %thread_safe_memory, align 8, !tbaa !16
  %24 = load %struct.gs_memory_chunk_s*, %struct.gs_memory_chunk_s** %cmem, align 8, !tbaa !1
  %thread_safe_memory6 = getelementptr inbounds %struct.gs_memory_chunk_s, %struct.gs_memory_chunk_s* %24, i32 0, i32 4
  store %struct.gs_memory_s* %23, %struct.gs_memory_s** %thread_safe_memory6, align 8, !tbaa !17
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_target, align 8, !tbaa !1
  %26 = load %struct.gs_memory_chunk_s*, %struct.gs_memory_chunk_s** %cmem, align 8, !tbaa !1
  %target7 = getelementptr inbounds %struct.gs_memory_chunk_s, %struct.gs_memory_chunk_s* %26, i32 0, i32 5
  store %struct.gs_memory_s* %25, %struct.gs_memory_s** %target7, align 8, !tbaa !18
  %27 = load %struct.gs_memory_chunk_s*, %struct.gs_memory_chunk_s** %cmem, align 8, !tbaa !1
  %head_mo_chunk = getelementptr inbounds %struct.gs_memory_chunk_s, %struct.gs_memory_chunk_s* %27, i32 0, i32 6
  store %struct.chunk_mem_node_s* null, %struct.chunk_mem_node_s** %head_mo_chunk, align 8, !tbaa !19
  %28 = load %struct.gs_memory_chunk_s*, %struct.gs_memory_chunk_s** %cmem, align 8, !tbaa !1
  %head_so_chunk = getelementptr inbounds %struct.gs_memory_chunk_s, %struct.gs_memory_chunk_s* %28, i32 0, i32 7
  store %struct.chunk_mem_node_s* null, %struct.chunk_mem_node_s** %head_so_chunk, align 8, !tbaa !20
  %29 = load %struct.gs_memory_chunk_s*, %struct.gs_memory_chunk_s** %cmem, align 8, !tbaa !1
  %used = getelementptr inbounds %struct.gs_memory_chunk_s, %struct.gs_memory_chunk_s* %29, i32 0, i32 8
  store i64 0, i64* %used, align 8, !tbaa !21
  %30 = load %struct.gs_memory_chunk_s*, %struct.gs_memory_chunk_s** %cmem, align 8, !tbaa !1
  %31 = bitcast %struct.gs_memory_chunk_s* %30 to %struct.gs_memory_s*
  %32 = load %struct.gs_memory_s**, %struct.gs_memory_s*** %wrapped.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %31, %struct.gs_memory_s** %32, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.2, %if.then.1
  %33 = bitcast %struct.gs_memory_chunk_s** %cmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = bitcast %struct.gs_memory_s** %non_gc_target to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @gs_memory_chunk_release(%struct.gs_memory_s* %mem) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %0, i32 0, i32 1
  %free_all = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 5
  %1 = load void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*, i32, i8*)** %free_all, align 8, !tbaa !22
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void %1(%struct.gs_memory_s* %2, i32 7, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0)) #5
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.gs_memory_s* @gs_memory_chunk_target(%struct.gs_memory_s* %mem) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %cmem = alloca %struct.gs_memory_chunk_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_chunk_s** %cmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_memory_chunk_s*
  store %struct.gs_memory_chunk_s* %2, %struct.gs_memory_chunk_s** %cmem, align 8, !tbaa !1
  %3 = load %struct.gs_memory_chunk_s*, %struct.gs_memory_chunk_s** %cmem, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gs_memory_chunk_s, %struct.gs_memory_chunk_s* %3, i32 0, i32 5
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !18
  %5 = bitcast %struct.gs_memory_chunk_s** %cmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret %struct.gs_memory_s* %4
}

; Function Attrs: nounwind uwtable
define internal i8* @chunk_alloc_bytes_immovable(%struct.gs_memory_s* %mem, i32 %size, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %size.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !23
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %1 = load i32, i32* %size.addr, align 4, !tbaa !23
  %2 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* @chunk_obj_alloc(%struct.gs_memory_s* %0, i32 %1, %struct.gs_memory_struct_type_s* @st_bytes, i8* %2) #5
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal i8* @chunk_resize_object(%struct.gs_memory_s* %mem, i8* %ptr, i32 %new_num_elements, i8* %cname) #0 {
entry:
  %retval = alloca i8*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %ptr.addr = alloca i8*, align 8
  %new_num_elements.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  %obj = alloca %struct.chunk_obj_node_s*, align 8
  %new_size = alloca i64, align 8
  %old_size = alloca i64, align 8
  %type2 = alloca %struct.gs_memory_struct_type_s*, align 8
  %new_ptr = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1
  store i32 %new_num_elements, i32* %new_num_elements.addr, align 4, !tbaa !23
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.chunk_obj_node_s** %obj to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 -40
  %2 = bitcast i8* %add.ptr to %struct.chunk_obj_node_s*
  store %struct.chunk_obj_node_s* %2, %struct.chunk_obj_node_s** %obj, align 8, !tbaa !1
  %3 = bitcast i64* %new_size to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.chunk_obj_node_s*, %struct.chunk_obj_node_s** %obj, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.chunk_obj_node_s, %struct.chunk_obj_node_s* %4, i32 0, i32 3
  %5 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %type, align 8, !tbaa !25
  %ssize = getelementptr inbounds %struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* %5, i32 0, i32 0
  %6 = load i32, i32* %ssize, align 4, !tbaa !27
  %7 = load i32, i32* %new_num_elements.addr, align 4, !tbaa !23
  %mul = mul i32 %6, %7
  %conv = zext i32 %mul to i64
  store i64 %conv, i64* %new_size, align 8, !tbaa !29
  %8 = bitcast i64* %old_size to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.chunk_obj_node_s*, %struct.chunk_obj_node_s** %obj, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.chunk_obj_node_s, %struct.chunk_obj_node_s* %9, i32 0, i32 4
  %10 = load i32, i32* %size, align 4, !tbaa !30
  %conv1 = zext i32 %10 to i64
  store i64 %conv1, i64* %old_size, align 8, !tbaa !29
  %11 = bitcast %struct.gs_memory_struct_type_s** %type2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct.chunk_obj_node_s*, %struct.chunk_obj_node_s** %obj, align 8, !tbaa !1
  %type3 = getelementptr inbounds %struct.chunk_obj_node_s, %struct.chunk_obj_node_s* %12, i32 0, i32 3
  %13 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %type3, align 8, !tbaa !25
  store %struct.gs_memory_struct_type_s* %13, %struct.gs_memory_struct_type_s** %type2, align 8, !tbaa !1
  %14 = bitcast i8** %new_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = load i64, i64* %new_size, align 8, !tbaa !29
  %16 = load i64, i64* %old_size, align 8, !tbaa !29
  %cmp = icmp eq i64 %15, %16
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %17 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  store i8* %17, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %19 = load i64, i64* %new_size, align 8, !tbaa !29
  %conv5 = trunc i64 %19 to i32
  %20 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %type2, align 8, !tbaa !1
  %21 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* @chunk_obj_alloc(%struct.gs_memory_s* %18, i32 %conv5, %struct.gs_memory_struct_type_s* %20, i8* %21) #5
  store i8* %call, i8** %new_ptr, align 8, !tbaa !1
  %cmp6 = icmp eq i8* %call, null
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end
  %22 = load i8*, i8** %new_ptr, align 8, !tbaa !1
  %23 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %24 = load i64, i64* %old_size, align 8, !tbaa !29
  %25 = load i64, i64* %new_size, align 8, !tbaa !29
  %cmp10 = icmp ult i64 %24, %25
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.9
  %26 = load i64, i64* %old_size, align 8, !tbaa !29
  br label %cond.end

cond.false:                                       ; preds = %if.end.9
  %27 = load i64, i64* %new_size, align 8, !tbaa !29
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %26, %cond.true ], [ %27, %cond.false ]
  %call12 = call i8* @memcpy(i8* %22, i8* %23, i64 %cond) #6
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %29 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %30 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void @chunk_free_object(%struct.gs_memory_s* %28, i8* %29, i8* %30) #5
  %31 = load i8*, i8** %new_ptr, align 8, !tbaa !1
  store i8* %31, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then.8, %if.then
  %32 = bitcast i8** %new_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast %struct.gs_memory_struct_type_s** %type2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = bitcast i64* %old_size to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = bitcast i64* %new_size to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = bitcast %struct.chunk_obj_node_s** %obj to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = load i8*, i8** %retval
  ret i8* %37
}

; Function Attrs: nounwind uwtable
define internal void @chunk_free_object(%struct.gs_memory_s* %mem, i8* %ptr, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %ptr.addr = alloca i8*, align 8
  %cname.addr = alloca i8*, align 8
  %cmem = alloca %struct.gs_memory_chunk_s*, align 8
  %cleanup.dest.slot = alloca i32
  %obj_node_size = alloca i32, align 4
  %obj = alloca %struct.chunk_obj_node_s*, align 8
  %finalize = alloca void (%struct.gs_memory_s*, i8*)*, align 8
  %current = alloca %struct.chunk_mem_node_s*, align 8
  %free_obj = alloca %struct.chunk_freelist_node_s*, align 8
  %prev_free = alloca %struct.chunk_freelist_node_s*, align 8
  %new_free = alloca %struct.chunk_freelist_node_s*, align 8
  %prev_obj = alloca %struct.chunk_obj_node_s*, align 8
  %freed_size = alloca i32, align 4
  %after_obj = alloca i8*, align 8
  %after_free = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_chunk_s** %cmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_memory_chunk_s*
  store %struct.gs_memory_chunk_s* %2, %struct.gs_memory_chunk_s** %cmem, align 8, !tbaa !1
  %3 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.93

if.end:                                           ; preds = %entry
  %4 = bitcast i32* %obj_node_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 40, i32* %obj_node_size, align 4, !tbaa !23
  %5 = bitcast %struct.chunk_obj_node_s** %obj to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %7 = load i32, i32* %obj_node_size, align 4, !tbaa !23
  %idx.ext = sext i32 %7 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %idx.neg
  %8 = bitcast i8* %add.ptr to %struct.chunk_obj_node_s*
  store %struct.chunk_obj_node_s* %8, %struct.chunk_obj_node_s** %obj, align 8, !tbaa !1
  %9 = bitcast void (%struct.gs_memory_s*, i8*)** %finalize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.chunk_obj_node_s*, %struct.chunk_obj_node_s** %obj, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.chunk_obj_node_s, %struct.chunk_obj_node_s* %10, i32 0, i32 3
  %11 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %type, align 8, !tbaa !25
  %finalize1 = getelementptr inbounds %struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* %11, i32 0, i32 6
  %12 = load void (%struct.gs_memory_s*, i8*)*, void (%struct.gs_memory_s*, i8*)** %finalize1, align 8, !tbaa !31
  store void (%struct.gs_memory_s*, i8*)* %12, void (%struct.gs_memory_s*, i8*)** %finalize, align 8, !tbaa !1
  %13 = bitcast %struct.chunk_mem_node_s** %current to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast %struct.chunk_freelist_node_s** %free_obj to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast %struct.chunk_freelist_node_s** %prev_free to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = bitcast %struct.chunk_freelist_node_s** %new_free to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = bitcast %struct.chunk_obj_node_s** %prev_obj to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = bitcast i32* %freed_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load %struct.chunk_obj_node_s*, %struct.chunk_obj_node_s** %obj, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.chunk_obj_node_s, %struct.chunk_obj_node_s* %19, i32 0, i32 4
  %20 = load i32, i32* %size, align 4, !tbaa !30
  %21 = load i32, i32* %obj_node_size, align 4, !tbaa !23
  %add = add i32 %20, %21
  %call = call i32 @round_up_to_align(i32 %add) #5
  store i32 %call, i32* %freed_size, align 4, !tbaa !23
  %22 = load void (%struct.gs_memory_s*, i8*)*, void (%struct.gs_memory_s*, i8*)** %finalize, align 8, !tbaa !1
  %cmp2 = icmp ne void (%struct.gs_memory_s*, i8*)* %22, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %23 = load void (%struct.gs_memory_s*, i8*)*, void (%struct.gs_memory_s*, i8*)** %finalize, align 8, !tbaa !1
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %25 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  call void %23(%struct.gs_memory_s* %24, i8* %25) #5
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %26 = load %struct.chunk_obj_node_s*, %struct.chunk_obj_node_s** %obj, align 8, !tbaa !1
  %chunk = getelementptr inbounds %struct.chunk_obj_node_s, %struct.chunk_obj_node_s* %26, i32 0, i32 2
  %27 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %chunk, align 8, !tbaa !32
  store %struct.chunk_mem_node_s* %27, %struct.chunk_mem_node_s** %current, align 8, !tbaa !1
  %28 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %current, align 8, !tbaa !1
  %is_multiple_object_chunk = getelementptr inbounds %struct.chunk_mem_node_s, %struct.chunk_mem_node_s* %28, i32 0, i32 2
  %29 = load i32, i32* %is_multiple_object_chunk, align 4, !tbaa !33
  %cmp5 = icmp eq i32 %29, 0
  br i1 %cmp5, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.4
  %30 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %current, align 8, !tbaa !1
  %objlist = getelementptr inbounds %struct.chunk_mem_node_s, %struct.chunk_mem_node_s* %30, i32 0, i32 5
  %31 = load %struct.chunk_obj_node_s*, %struct.chunk_obj_node_s** %objlist, align 8, !tbaa !35
  %next = getelementptr inbounds %struct.chunk_obj_node_s, %struct.chunk_obj_node_s* %31, i32 0, i32 0
  %32 = load %struct.chunk_obj_node_s*, %struct.chunk_obj_node_s** %next, align 8, !tbaa !36
  %cmp6 = icmp eq %struct.chunk_obj_node_s* %32, null
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %lor.lhs.false, %if.end.4
  %33 = load %struct.gs_memory_chunk_s*, %struct.gs_memory_chunk_s** %cmem, align 8, !tbaa !1
  %34 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %current, align 8, !tbaa !1
  %call8 = call i32 @chunk_mem_node_remove(%struct.gs_memory_chunk_s* %33, %struct.chunk_mem_node_s* %34) #5
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %lor.lhs.false
  %35 = load %struct.chunk_obj_node_s*, %struct.chunk_obj_node_s** %obj, align 8, !tbaa !1
  %prev = getelementptr inbounds %struct.chunk_obj_node_s, %struct.chunk_obj_node_s* %35, i32 0, i32 1
  %36 = load %struct.chunk_obj_node_s*, %struct.chunk_obj_node_s** %prev, align 8, !tbaa !37
  store %struct.chunk_obj_node_s* %36, %struct.chunk_obj_node_s** %prev_obj, align 8, !tbaa !1
  %37 = load %struct.chunk_obj_node_s*, %struct.chunk_obj_node_s** %prev_obj, align 8, !tbaa !1
  %cmp10 = icmp eq %struct.chunk_obj_node_s* %37, null
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end.9
  %38 = load %struct.chunk_obj_node_s*, %struct.chunk_obj_node_s** %obj, align 8, !tbaa !1
  %next12 = getelementptr inbounds %struct.chunk_obj_node_s, %struct.chunk_obj_node_s* %38, i32 0, i32 0
  %39 = load %struct.chunk_obj_node_s*, %struct.chunk_obj_node_s** %next12, align 8, !tbaa !36
  %40 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %current, align 8, !tbaa !1
  %objlist13 = getelementptr inbounds %struct.chunk_mem_node_s, %struct.chunk_mem_node_s* %40, i32 0, i32 5
  store %struct.chunk_obj_node_s* %39, %struct.chunk_obj_node_s** %objlist13, align 8, !tbaa !35
  %41 = load %struct.chunk_obj_node_s*, %struct.chunk_obj_node_s** %obj, align 8, !tbaa !1
  %next14 = getelementptr inbounds %struct.chunk_obj_node_s, %struct.chunk_obj_node_s* %41, i32 0, i32 0
  %42 = load %struct.chunk_obj_node_s*, %struct.chunk_obj_node_s** %next14, align 8, !tbaa !36
  %tobool = icmp ne %struct.chunk_obj_node_s* %42, null
  br i1 %tobool, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.then.11
  %43 = load %struct.chunk_obj_node_s*, %struct.chunk_obj_node_s** %obj, align 8, !tbaa !1
  %next16 = getelementptr inbounds %struct.chunk_obj_node_s, %struct.chunk_obj_node_s* %43, i32 0, i32 0
  %44 = load %struct.chunk_obj_node_s*, %struct.chunk_obj_node_s** %next16, align 8, !tbaa !36
  %prev17 = getelementptr inbounds %struct.chunk_obj_node_s, %struct.chunk_obj_node_s* %44, i32 0, i32 1
  store %struct.chunk_obj_node_s* null, %struct.chunk_obj_node_s** %prev17, align 8, !tbaa !37
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %if.then.11
  br label %if.end.27

if.else:                                          ; preds = %if.end.9
  %45 = load %struct.chunk_obj_node_s*, %struct.chunk_obj_node_s** %obj, align 8, !tbaa !1
  %next19 = getelementptr inbounds %struct.chunk_obj_node_s, %struct.chunk_obj_node_s* %45, i32 0, i32 0
  %46 = load %struct.chunk_obj_node_s*, %struct.chunk_obj_node_s** %next19, align 8, !tbaa !36
  %47 = load %struct.chunk_obj_node_s*, %struct.chunk_obj_node_s** %prev_obj, align 8, !tbaa !1
  %next20 = getelementptr inbounds %struct.chunk_obj_node_s, %struct.chunk_obj_node_s* %47, i32 0, i32 0
  store %struct.chunk_obj_node_s* %46, %struct.chunk_obj_node_s** %next20, align 8, !tbaa !36
  %48 = load %struct.chunk_obj_node_s*, %struct.chunk_obj_node_s** %obj, align 8, !tbaa !1
  %next21 = getelementptr inbounds %struct.chunk_obj_node_s, %struct.chunk_obj_node_s* %48, i32 0, i32 0
  %49 = load %struct.chunk_obj_node_s*, %struct.chunk_obj_node_s** %next21, align 8, !tbaa !36
  %tobool22 = icmp ne %struct.chunk_obj_node_s* %49, null
  br i1 %tobool22, label %if.then.23, label %if.end.26

if.then.23:                                       ; preds = %if.else
  %50 = load %struct.chunk_obj_node_s*, %struct.chunk_obj_node_s** %prev_obj, align 8, !tbaa !1
  %51 = load %struct.chunk_obj_node_s*, %struct.chunk_obj_node_s** %obj, align 8, !tbaa !1
  %next24 = getelementptr inbounds %struct.chunk_obj_node_s, %struct.chunk_obj_node_s* %51, i32 0, i32 0
  %52 = load %struct.chunk_obj_node_s*, %struct.chunk_obj_node_s** %next24, align 8, !tbaa !36
  %prev25 = getelementptr inbounds %struct.chunk_obj_node_s, %struct.chunk_obj_node_s* %52, i32 0, i32 1
  store %struct.chunk_obj_node_s* %50, %struct.chunk_obj_node_s** %prev25, align 8, !tbaa !37
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.23, %if.else
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.end.18
  br label %do.body

do.body:                                          ; preds = %if.end.27
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  store %struct.chunk_freelist_node_s* null, %struct.chunk_freelist_node_s** %prev_free, align 8, !tbaa !1
  %53 = load %struct.chunk_obj_node_s*, %struct.chunk_obj_node_s** %obj, align 8, !tbaa !1
  %54 = bitcast %struct.chunk_obj_node_s* %53 to %struct.chunk_freelist_node_s*
  store %struct.chunk_freelist_node_s* %54, %struct.chunk_freelist_node_s** %new_free, align 8, !tbaa !1
  %55 = load i32, i32* %freed_size, align 4, !tbaa !23
  %56 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %new_free, align 8, !tbaa !1
  %size28 = getelementptr inbounds %struct.chunk_freelist_node_s, %struct.chunk_freelist_node_s* %56, i32 0, i32 1
  store i32 %55, i32* %size28, align 4, !tbaa !38
  %57 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %current, align 8, !tbaa !1
  %freelist = getelementptr inbounds %struct.chunk_mem_node_s, %struct.chunk_mem_node_s* %57, i32 0, i32 6
  %58 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %freelist, align 8, !tbaa !40
  store %struct.chunk_freelist_node_s* %58, %struct.chunk_freelist_node_s** %free_obj, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %59 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %free_obj, align 8, !tbaa !1
  %cmp29 = icmp ne %struct.chunk_freelist_node_s* %59, null
  br i1 %cmp29, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %60 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %new_free, align 8, !tbaa !1
  %61 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %free_obj, align 8, !tbaa !1
  %cmp30 = icmp ult %struct.chunk_freelist_node_s* %60, %61
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %for.body
  br label %for.end

if.end.32:                                        ; preds = %for.body
  %62 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %free_obj, align 8, !tbaa !1
  store %struct.chunk_freelist_node_s* %62, %struct.chunk_freelist_node_s** %prev_free, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %if.end.32
  %63 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %free_obj, align 8, !tbaa !1
  %next33 = getelementptr inbounds %struct.chunk_freelist_node_s, %struct.chunk_freelist_node_s* %63, i32 0, i32 0
  %64 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %next33, align 8, !tbaa !41
  store %struct.chunk_freelist_node_s* %64, %struct.chunk_freelist_node_s** %free_obj, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %if.then.31, %for.cond
  %65 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %prev_free, align 8, !tbaa !1
  %cmp34 = icmp eq %struct.chunk_freelist_node_s* %65, null
  br i1 %cmp34, label %if.then.35, label %if.else.39

if.then.35:                                       ; preds = %for.end
  %66 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %current, align 8, !tbaa !1
  %freelist36 = getelementptr inbounds %struct.chunk_mem_node_s, %struct.chunk_mem_node_s* %66, i32 0, i32 6
  %67 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %freelist36, align 8, !tbaa !40
  %68 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %new_free, align 8, !tbaa !1
  %next37 = getelementptr inbounds %struct.chunk_freelist_node_s, %struct.chunk_freelist_node_s* %68, i32 0, i32 0
  store %struct.chunk_freelist_node_s* %67, %struct.chunk_freelist_node_s** %next37, align 8, !tbaa !41
  %69 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %new_free, align 8, !tbaa !1
  %70 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %current, align 8, !tbaa !1
  %freelist38 = getelementptr inbounds %struct.chunk_mem_node_s, %struct.chunk_mem_node_s* %70, i32 0, i32 6
  store %struct.chunk_freelist_node_s* %69, %struct.chunk_freelist_node_s** %freelist38, align 8, !tbaa !40
  br label %if.end.42

if.else.39:                                       ; preds = %for.end
  %71 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %free_obj, align 8, !tbaa !1
  %72 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %new_free, align 8, !tbaa !1
  %next40 = getelementptr inbounds %struct.chunk_freelist_node_s, %struct.chunk_freelist_node_s* %72, i32 0, i32 0
  store %struct.chunk_freelist_node_s* %71, %struct.chunk_freelist_node_s** %next40, align 8, !tbaa !41
  %73 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %new_free, align 8, !tbaa !1
  %74 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %prev_free, align 8, !tbaa !1
  %next41 = getelementptr inbounds %struct.chunk_freelist_node_s, %struct.chunk_freelist_node_s* %74, i32 0, i32 0
  store %struct.chunk_freelist_node_s* %73, %struct.chunk_freelist_node_s** %next41, align 8, !tbaa !41
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.39, %if.then.35
  %75 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %free_obj, align 8, !tbaa !1
  %cmp43 = icmp ne %struct.chunk_freelist_node_s* %75, null
  br i1 %cmp43, label %if.then.44, label %if.end.56

if.then.44:                                       ; preds = %if.end.42
  %76 = bitcast i8** %after_obj to i8*
  call void @llvm.lifetime.start(i64 8, i8* %76) #1
  %77 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %new_free, align 8, !tbaa !1
  %78 = bitcast %struct.chunk_freelist_node_s* %77 to i8*
  %79 = load i32, i32* %freed_size, align 4, !tbaa !23
  %idx.ext45 = zext i32 %79 to i64
  %add.ptr46 = getelementptr inbounds i8, i8* %78, i64 %idx.ext45
  store i8* %add.ptr46, i8** %after_obj, align 8, !tbaa !1
  %80 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %free_obj, align 8, !tbaa !1
  %81 = load i8*, i8** %after_obj, align 8, !tbaa !1
  %82 = bitcast i8* %81 to %struct.chunk_freelist_node_s*
  %cmp47 = icmp ule %struct.chunk_freelist_node_s* %80, %82
  br i1 %cmp47, label %if.then.48, label %if.end.55

if.then.48:                                       ; preds = %if.then.44
  %83 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %free_obj, align 8, !tbaa !1
  %next49 = getelementptr inbounds %struct.chunk_freelist_node_s, %struct.chunk_freelist_node_s* %83, i32 0, i32 0
  %84 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %next49, align 8, !tbaa !41
  %85 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %new_free, align 8, !tbaa !1
  %next50 = getelementptr inbounds %struct.chunk_freelist_node_s, %struct.chunk_freelist_node_s* %85, i32 0, i32 0
  store %struct.chunk_freelist_node_s* %84, %struct.chunk_freelist_node_s** %next50, align 8, !tbaa !41
  %86 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %free_obj, align 8, !tbaa !1
  %87 = bitcast %struct.chunk_freelist_node_s* %86 to i8*
  %88 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %new_free, align 8, !tbaa !1
  %89 = bitcast %struct.chunk_freelist_node_s* %88 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %87 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %89 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %90 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %free_obj, align 8, !tbaa !1
  %size51 = getelementptr inbounds %struct.chunk_freelist_node_s, %struct.chunk_freelist_node_s* %90, i32 0, i32 1
  %91 = load i32, i32* %size51, align 4, !tbaa !38
  %conv = zext i32 %91 to i64
  %add52 = add nsw i64 %sub.ptr.sub, %conv
  %conv53 = trunc i64 %add52 to i32
  %92 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %new_free, align 8, !tbaa !1
  %size54 = getelementptr inbounds %struct.chunk_freelist_node_s, %struct.chunk_freelist_node_s* %92, i32 0, i32 1
  store i32 %conv53, i32* %size54, align 4, !tbaa !38
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.48, %if.then.44
  %93 = bitcast i8** %after_obj to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #1
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.end.42
  %94 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %prev_free, align 8, !tbaa !1
  %cmp57 = icmp ne %struct.chunk_freelist_node_s* %94, null
  br i1 %cmp57, label %if.then.59, label %if.end.77

if.then.59:                                       ; preds = %if.end.56
  %95 = bitcast i8** %after_free to i8*
  call void @llvm.lifetime.start(i64 8, i8* %95) #1
  %96 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %prev_free, align 8, !tbaa !1
  %97 = bitcast %struct.chunk_freelist_node_s* %96 to i8*
  %98 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %prev_free, align 8, !tbaa !1
  %size60 = getelementptr inbounds %struct.chunk_freelist_node_s, %struct.chunk_freelist_node_s* %98, i32 0, i32 1
  %99 = load i32, i32* %size60, align 4, !tbaa !38
  %idx.ext61 = zext i32 %99 to i64
  %add.ptr62 = getelementptr inbounds i8, i8* %97, i64 %idx.ext61
  store i8* %add.ptr62, i8** %after_free, align 8, !tbaa !1
  %100 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %new_free, align 8, !tbaa !1
  %101 = load i8*, i8** %after_free, align 8, !tbaa !1
  %102 = bitcast i8* %101 to %struct.chunk_freelist_node_s*
  %cmp63 = icmp ule %struct.chunk_freelist_node_s* %100, %102
  br i1 %cmp63, label %if.then.65, label %if.end.76

if.then.65:                                       ; preds = %if.then.59
  %103 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %new_free, align 8, !tbaa !1
  %104 = bitcast %struct.chunk_freelist_node_s* %103 to i8*
  %105 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %prev_free, align 8, !tbaa !1
  %106 = bitcast %struct.chunk_freelist_node_s* %105 to i8*
  %sub.ptr.lhs.cast66 = ptrtoint i8* %104 to i64
  %sub.ptr.rhs.cast67 = ptrtoint i8* %106 to i64
  %sub.ptr.sub68 = sub i64 %sub.ptr.lhs.cast66, %sub.ptr.rhs.cast67
  %107 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %new_free, align 8, !tbaa !1
  %size69 = getelementptr inbounds %struct.chunk_freelist_node_s, %struct.chunk_freelist_node_s* %107, i32 0, i32 1
  %108 = load i32, i32* %size69, align 4, !tbaa !38
  %conv70 = zext i32 %108 to i64
  %add71 = add nsw i64 %sub.ptr.sub68, %conv70
  %conv72 = trunc i64 %add71 to i32
  %109 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %prev_free, align 8, !tbaa !1
  %size73 = getelementptr inbounds %struct.chunk_freelist_node_s, %struct.chunk_freelist_node_s* %109, i32 0, i32 1
  store i32 %conv72, i32* %size73, align 4, !tbaa !38
  %110 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %new_free, align 8, !tbaa !1
  %next74 = getelementptr inbounds %struct.chunk_freelist_node_s, %struct.chunk_freelist_node_s* %110, i32 0, i32 0
  %111 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %next74, align 8, !tbaa !41
  %112 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %prev_free, align 8, !tbaa !1
  %next75 = getelementptr inbounds %struct.chunk_freelist_node_s, %struct.chunk_freelist_node_s* %112, i32 0, i32 0
  store %struct.chunk_freelist_node_s* %111, %struct.chunk_freelist_node_s** %next75, align 8, !tbaa !41
  %113 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %prev_free, align 8, !tbaa !1
  store %struct.chunk_freelist_node_s* %113, %struct.chunk_freelist_node_s** %new_free, align 8, !tbaa !1
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.65, %if.then.59
  %114 = bitcast i8** %after_free to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #1
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.end.56
  %115 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %current, align 8, !tbaa !1
  %largest_free = getelementptr inbounds %struct.chunk_mem_node_s, %struct.chunk_mem_node_s* %115, i32 0, i32 1
  %116 = load i32, i32* %largest_free, align 4, !tbaa !42
  %117 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %new_free, align 8, !tbaa !1
  %size78 = getelementptr inbounds %struct.chunk_freelist_node_s, %struct.chunk_freelist_node_s* %117, i32 0, i32 1
  %118 = load i32, i32* %size78, align 4, !tbaa !38
  %cmp79 = icmp ult i32 %116, %118
  br i1 %cmp79, label %if.then.81, label %if.end.84

if.then.81:                                       ; preds = %if.end.77
  %119 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %new_free, align 8, !tbaa !1
  %size82 = getelementptr inbounds %struct.chunk_freelist_node_s, %struct.chunk_freelist_node_s* %119, i32 0, i32 1
  %120 = load i32, i32* %size82, align 4, !tbaa !38
  %121 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %current, align 8, !tbaa !1
  %largest_free83 = getelementptr inbounds %struct.chunk_mem_node_s, %struct.chunk_mem_node_s* %121, i32 0, i32 1
  store i32 %120, i32* %largest_free83, align 4, !tbaa !42
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.81, %if.end.77
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.84, %if.then.7
  %122 = bitcast i32* %freed_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %122) #1
  %123 = bitcast %struct.chunk_obj_node_s** %prev_obj to i8*
  call void @llvm.lifetime.end(i64 8, i8* %123) #1
  %124 = bitcast %struct.chunk_freelist_node_s** %new_free to i8*
  call void @llvm.lifetime.end(i64 8, i8* %124) #1
  %125 = bitcast %struct.chunk_freelist_node_s** %prev_free to i8*
  call void @llvm.lifetime.end(i64 8, i8* %125) #1
  %126 = bitcast %struct.chunk_freelist_node_s** %free_obj to i8*
  call void @llvm.lifetime.end(i64 8, i8* %126) #1
  %127 = bitcast %struct.chunk_mem_node_s** %current to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #1
  %128 = bitcast void (%struct.gs_memory_s*, i8*)** %finalize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %128) #1
  %129 = bitcast %struct.chunk_obj_node_s** %obj to i8*
  call void @llvm.lifetime.end(i64 8, i8* %129) #1
  %130 = bitcast i32* %obj_node_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %130) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.93 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.93

cleanup.93:                                       ; preds = %cleanup.cont, %cleanup, %if.then
  %131 = bitcast %struct.gs_memory_chunk_s** %cmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %131) #1
  %cleanup.dest.94 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.94, label %unreachable [
    i32 0, label %cleanup.cont.95
    i32 1, label %cleanup.cont.95
  ]

cleanup.cont.95:                                  ; preds = %cleanup.93, %cleanup.93
  ret void

unreachable:                                      ; preds = %cleanup.93
  unreachable
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_memory_s* @chunk_stable(%struct.gs_memory_s* %mem) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  ret %struct.gs_memory_s* %0
}

; Function Attrs: nounwind uwtable
define internal void @chunk_status(%struct.gs_memory_s* %mem, %struct.gs_memory_status_s* %pstat) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pstat.addr = alloca %struct.gs_memory_status_s*, align 8
  %cmem = alloca %struct.gs_memory_chunk_s*, align 8
  %current = alloca %struct.chunk_mem_node_s*, align 8
  %free_obj = alloca %struct.chunk_freelist_node_s*, align 8
  %tot_free = alloca i32, align 4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_memory_status_s* %pstat, %struct.gs_memory_status_s** %pstat.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_chunk_s** %cmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_memory_chunk_s*
  store %struct.gs_memory_chunk_s* %2, %struct.gs_memory_chunk_s** %cmem, align 8, !tbaa !1
  %3 = bitcast %struct.chunk_mem_node_s** %current to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_memory_chunk_s*, %struct.gs_memory_chunk_s** %cmem, align 8, !tbaa !1
  %head_mo_chunk = getelementptr inbounds %struct.gs_memory_chunk_s, %struct.gs_memory_chunk_s* %4, i32 0, i32 6
  %5 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %head_mo_chunk, align 8, !tbaa !19
  store %struct.chunk_mem_node_s* %5, %struct.chunk_mem_node_s** %current, align 8, !tbaa !1
  %6 = bitcast %struct.chunk_freelist_node_s** %free_obj to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %tot_free to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 0, i32* %tot_free, align 4, !tbaa !23
  %8 = load %struct.gs_memory_chunk_s*, %struct.gs_memory_chunk_s** %cmem, align 8, !tbaa !1
  %used = getelementptr inbounds %struct.gs_memory_chunk_s, %struct.gs_memory_chunk_s* %8, i32 0, i32 8
  %9 = load i64, i64* %used, align 8, !tbaa !21
  %10 = load %struct.gs_memory_status_s*, %struct.gs_memory_status_s** %pstat.addr, align 8, !tbaa !1
  %allocated = getelementptr inbounds %struct.gs_memory_status_s, %struct.gs_memory_status_s* %10, i32 0, i32 0
  store i64 %9, i64* %allocated, align 8, !tbaa !43
  br label %for.cond

for.cond:                                         ; preds = %for.inc.4, %entry
  %11 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %current, align 8, !tbaa !1
  %cmp = icmp ne %struct.chunk_mem_node_s* %11, null
  br i1 %cmp, label %for.body, label %for.end.6

for.body:                                         ; preds = %for.cond
  %12 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %current, align 8, !tbaa !1
  %freelist = getelementptr inbounds %struct.chunk_mem_node_s, %struct.chunk_mem_node_s* %12, i32 0, i32 6
  %13 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %freelist, align 8, !tbaa !40
  store %struct.chunk_freelist_node_s* %13, %struct.chunk_freelist_node_s** %free_obj, align 8, !tbaa !1
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %14 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %free_obj, align 8, !tbaa !1
  %cmp2 = icmp ne %struct.chunk_freelist_node_s* %14, null
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %15 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %free_obj, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.chunk_freelist_node_s, %struct.chunk_freelist_node_s* %15, i32 0, i32 1
  %16 = load i32, i32* %size, align 4, !tbaa !38
  %17 = load i32, i32* %tot_free, align 4, !tbaa !23
  %add = add i32 %17, %16
  store i32 %add, i32* %tot_free, align 4, !tbaa !23
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %18 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %free_obj, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.chunk_freelist_node_s, %struct.chunk_freelist_node_s* %18, i32 0, i32 0
  %19 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %next, align 8, !tbaa !41
  store %struct.chunk_freelist_node_s* %19, %struct.chunk_freelist_node_s** %free_obj, align 8, !tbaa !1
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.4

for.inc.4:                                        ; preds = %for.end
  %20 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %current, align 8, !tbaa !1
  %next5 = getelementptr inbounds %struct.chunk_mem_node_s, %struct.chunk_mem_node_s* %20, i32 0, i32 3
  %21 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %next5, align 8, !tbaa !45
  store %struct.chunk_mem_node_s* %21, %struct.chunk_mem_node_s** %current, align 8, !tbaa !1
  br label %for.cond

for.end.6:                                        ; preds = %for.cond
  %22 = load %struct.gs_memory_chunk_s*, %struct.gs_memory_chunk_s** %cmem, align 8, !tbaa !1
  %used7 = getelementptr inbounds %struct.gs_memory_chunk_s, %struct.gs_memory_chunk_s* %22, i32 0, i32 8
  %23 = load i64, i64* %used7, align 8, !tbaa !21
  %24 = load i32, i32* %tot_free, align 4, !tbaa !23
  %conv = sext i32 %24 to i64
  %sub = sub i64 %23, %conv
  %25 = load %struct.gs_memory_status_s*, %struct.gs_memory_status_s** %pstat.addr, align 8, !tbaa !1
  %used8 = getelementptr inbounds %struct.gs_memory_status_s, %struct.gs_memory_status_s* %25, i32 0, i32 1
  store i64 %sub, i64* %used8, align 8, !tbaa !46
  %26 = load %struct.gs_memory_status_s*, %struct.gs_memory_status_s** %pstat.addr, align 8, !tbaa !1
  %is_thread_safe = getelementptr inbounds %struct.gs_memory_status_s, %struct.gs_memory_status_s* %26, i32 0, i32 2
  store i32 0, i32* %is_thread_safe, align 4, !tbaa !47
  %27 = bitcast i32* %tot_free to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = bitcast %struct.chunk_freelist_node_s** %free_obj to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = bitcast %struct.chunk_mem_node_s** %current to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = bitcast %struct.gs_memory_chunk_s** %cmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @chunk_free_all(%struct.gs_memory_s* %mem, i32 %free_mask, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %free_mask.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  %cmem = alloca %struct.gs_memory_chunk_s*, align 8
  %target = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %free_mask, i32* %free_mask.addr, align 4, !tbaa !23
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_chunk_s** %cmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_memory_chunk_s*
  store %struct.gs_memory_chunk_s* %2, %struct.gs_memory_chunk_s** %cmem, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_s** %target to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_memory_chunk_s*, %struct.gs_memory_chunk_s** %cmem, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gs_memory_chunk_s, %struct.gs_memory_chunk_s* %4, i32 0, i32 5
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target1, align 8, !tbaa !18
  store %struct.gs_memory_s* %5, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 0
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !48
  %tobool = icmp ne %struct.gs_memory_s* %7, null
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %stable_memory2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 0
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory2, align 8, !tbaa !48
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.gs_memory_s* %9, %10
  br i1 %cmp, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %stable_memory4 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %11, i32 0, i32 0
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory4, align 8, !tbaa !48
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %12, i32 0, i32 1
  %free_all = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 5
  %13 = load void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*, i32, i8*)** %free_all, align 8, !tbaa !22
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %stable_memory5 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %14, i32 0, i32 0
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory5, align 8, !tbaa !48
  %16 = load i32, i32* %free_mask.addr, align 4, !tbaa !23
  %17 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %13(%struct.gs_memory_s* %15, i32 %16, i8* %17) #5
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %18 = load i32, i32* %free_mask.addr, align 4, !tbaa !23
  %and = and i32 %18, 4
  %tobool6 = icmp ne i32 %and, 0
  br i1 %tobool6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %stable_memory8 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %19, i32 0, i32 0
  store %struct.gs_memory_s* null, %struct.gs_memory_s** %stable_memory8, align 8, !tbaa !48
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %entry
  %20 = load i32, i32* %free_mask.addr, align 4, !tbaa !23
  %and11 = and i32 %20, 1
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.10
  %21 = load %struct.gs_memory_chunk_s*, %struct.gs_memory_chunk_s** %cmem, align 8, !tbaa !1
  call void @chunk_mem_node_free_all_remaining(%struct.gs_memory_chunk_s* %21) #5
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end.10
  %22 = load i32, i32* %free_mask.addr, align 4, !tbaa !23
  %and15 = and i32 %22, 2
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.end.14
  %23 = load %struct.gs_memory_chunk_s*, %struct.gs_memory_chunk_s** %cmem, align 8, !tbaa !1
  %target18 = getelementptr inbounds %struct.gs_memory_chunk_s, %struct.gs_memory_chunk_s* %23, i32 0, i32 5
  store %struct.gs_memory_s* null, %struct.gs_memory_s** %target18, align 8, !tbaa !18
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %if.end.14
  %24 = load i32, i32* %free_mask.addr, align 4, !tbaa !23
  %and20 = and i32 %24, 4
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.19
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %procs23 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %25, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs23, i32 0, i32 2
  %26 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !49
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %28 = load %struct.gs_memory_chunk_s*, %struct.gs_memory_chunk_s** %cmem, align 8, !tbaa !1
  %29 = bitcast %struct.gs_memory_chunk_s* %28 to i8*
  %30 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %26(%struct.gs_memory_s* %27, i8* %29, i8* %30) #5
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.end.19
  %31 = bitcast %struct.gs_memory_s** %target to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = bitcast %struct.gs_memory_chunk_s** %cmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @chunk_consolidate_free(%struct.gs_memory_s* %mem) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @chunk_alloc_bytes(%struct.gs_memory_s* %mem, i32 %size, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %size.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !23
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %1 = load i32, i32* %size.addr, align 4, !tbaa !23
  %2 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* @chunk_obj_alloc(%struct.gs_memory_s* %0, i32 %1, %struct.gs_memory_struct_type_s* @st_bytes, i8* %2) #5
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal i8* @chunk_alloc_struct(%struct.gs_memory_s* %mem, %struct.gs_memory_struct_type_s* %pstype, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %cname.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %1 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %ssize = getelementptr inbounds %struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* %1, i32 0, i32 0
  %2 = load i32, i32* %ssize, align 4, !tbaa !27
  %3 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* @chunk_obj_alloc(%struct.gs_memory_s* %0, i32 %2, %struct.gs_memory_struct_type_s* %3, i8* %4) #5
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal i8* @chunk_alloc_struct_immovable(%struct.gs_memory_s* %mem, %struct.gs_memory_struct_type_s* %pstype, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %cname.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %1 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %ssize = getelementptr inbounds %struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* %1, i32 0, i32 0
  %2 = load i32, i32* %ssize, align 4, !tbaa !27
  %3 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* @chunk_obj_alloc(%struct.gs_memory_s* %0, i32 %2, %struct.gs_memory_struct_type_s* %3, i8* %4) #5
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal i8* @chunk_alloc_byte_array(%struct.gs_memory_s* %mem, i32 %num_elements, i32 %elt_size, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %num_elements.addr = alloca i32, align 4
  %elt_size.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %num_elements, i32* %num_elements.addr, align 4, !tbaa !23
  store i32 %elt_size, i32* %elt_size.addr, align 4, !tbaa !23
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %1 = load i32, i32* %num_elements.addr, align 4, !tbaa !23
  %2 = load i32, i32* %elt_size.addr, align 4, !tbaa !23
  %mul = mul i32 %1, %2
  %3 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* @chunk_alloc_bytes(%struct.gs_memory_s* %0, i32 %mul, i8* %3) #5
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal i8* @chunk_alloc_byte_array_immovable(%struct.gs_memory_s* %mem, i32 %num_elements, i32 %elt_size, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %num_elements.addr = alloca i32, align 4
  %elt_size.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %num_elements, i32* %num_elements.addr, align 4, !tbaa !23
  store i32 %elt_size, i32* %elt_size.addr, align 4, !tbaa !23
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %1 = load i32, i32* %num_elements.addr, align 4, !tbaa !23
  %2 = load i32, i32* %elt_size.addr, align 4, !tbaa !23
  %mul = mul i32 %1, %2
  %3 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* @chunk_alloc_bytes(%struct.gs_memory_s* %0, i32 %mul, i8* %3) #5
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal i8* @chunk_alloc_struct_array(%struct.gs_memory_s* %mem, i32 %num_elements, %struct.gs_memory_struct_type_s* %pstype, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %num_elements.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %cname.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %num_elements, i32* %num_elements.addr, align 4, !tbaa !23
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %1 = load i32, i32* %num_elements.addr, align 4, !tbaa !23
  %2 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %ssize = getelementptr inbounds %struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* %2, i32 0, i32 0
  %3 = load i32, i32* %ssize, align 4, !tbaa !27
  %mul = mul i32 %1, %3
  %4 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* @chunk_obj_alloc(%struct.gs_memory_s* %0, i32 %mul, %struct.gs_memory_struct_type_s* %4, i8* %5) #5
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal i8* @chunk_alloc_struct_array_immovable(%struct.gs_memory_s* %mem, i32 %num_elements, %struct.gs_memory_struct_type_s* %pstype, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %num_elements.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %cname.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %num_elements, i32* %num_elements.addr, align 4, !tbaa !23
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %1 = load i32, i32* %num_elements.addr, align 4, !tbaa !23
  %2 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %ssize = getelementptr inbounds %struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* %2, i32 0, i32 0
  %3 = load i32, i32* %ssize, align 4, !tbaa !27
  %mul = mul i32 %1, %3
  %4 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* @chunk_obj_alloc(%struct.gs_memory_s* %0, i32 %mul, %struct.gs_memory_struct_type_s* %4, i8* %5) #5
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal i32 @chunk_object_size(%struct.gs_memory_s* %mem, i8* %ptr) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %ptr.addr = alloca i8*, align 8
  %obj = alloca %struct.chunk_obj_node_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1
  %0 = bitcast %struct.chunk_obj_node_s** %obj to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 -40
  %2 = bitcast i8* %add.ptr to %struct.chunk_obj_node_s*
  store %struct.chunk_obj_node_s* %2, %struct.chunk_obj_node_s** %obj, align 8, !tbaa !1
  %3 = load %struct.chunk_obj_node_s*, %struct.chunk_obj_node_s** %obj, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.chunk_obj_node_s, %struct.chunk_obj_node_s* %3, i32 0, i32 4
  %4 = load i32, i32* %size, align 4, !tbaa !30
  %5 = bitcast %struct.chunk_obj_node_s** %obj to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_memory_struct_type_s* @chunk_object_type(%struct.gs_memory_s* %mem, i8* %ptr) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %ptr.addr = alloca i8*, align 8
  %obj = alloca %struct.chunk_obj_node_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1
  %0 = bitcast %struct.chunk_obj_node_s** %obj to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 -40
  %2 = bitcast i8* %add.ptr to %struct.chunk_obj_node_s*
  store %struct.chunk_obj_node_s* %2, %struct.chunk_obj_node_s** %obj, align 8, !tbaa !1
  %3 = load %struct.chunk_obj_node_s*, %struct.chunk_obj_node_s** %obj, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.chunk_obj_node_s, %struct.chunk_obj_node_s* %3, i32 0, i32 3
  %4 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %type, align 8, !tbaa !25
  %5 = bitcast %struct.chunk_obj_node_s** %obj to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret %struct.gs_memory_struct_type_s* %4
}

; Function Attrs: nounwind uwtable
define internal i8* @chunk_alloc_string(%struct.gs_memory_s* %mem, i32 %nbytes, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %nbytes.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %nbytes, i32* %nbytes.addr, align 4, !tbaa !23
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %1 = load i32, i32* %nbytes.addr, align 4, !tbaa !23
  %2 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* @chunk_alloc_bytes(%struct.gs_memory_s* %0, i32 %1, i8* %2) #5
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal i8* @chunk_alloc_string_immovable(%struct.gs_memory_s* %mem, i32 %nbytes, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %nbytes.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %nbytes, i32* %nbytes.addr, align 4, !tbaa !23
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %1 = load i32, i32* %nbytes.addr, align 4, !tbaa !23
  %2 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* @chunk_alloc_bytes(%struct.gs_memory_s* %0, i32 %1, i8* %2) #5
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal i8* @chunk_resize_string(%struct.gs_memory_s* %mem, i8* %data, i32 %old_num, i32 %new_num, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %data.addr = alloca i8*, align 8
  %old_num.addr = alloca i32, align 4
  %new_num.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %old_num, i32* %old_num.addr, align 4, !tbaa !23
  store i32 %new_num, i32* %new_num.addr, align 4, !tbaa !23
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %2 = load i32, i32* %new_num.addr, align 4, !tbaa !23
  %3 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* @chunk_resize_object(%struct.gs_memory_s* %0, i8* %1, i32 %2, i8* %3) #5
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal void @chunk_free_string(%struct.gs_memory_s* %mem, i8* %data, i32 %nbytes, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %data.addr = alloca i8*, align 8
  %nbytes.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %nbytes, i32* %nbytes.addr, align 4, !tbaa !23
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void @chunk_free_object(%struct.gs_memory_s* %0, i8* %1, i8* %2) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @chunk_register_root(%struct.gs_memory_s* %mem, %struct.gs_gc_root_s* %rp, %struct.gs_ptr_procs_s* %ptype, i8** %up, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %rp.addr = alloca %struct.gs_gc_root_s*, align 8
  %ptype.addr = alloca %struct.gs_ptr_procs_s*, align 8
  %up.addr = alloca i8**, align 8
  %cname.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_gc_root_s* %rp, %struct.gs_gc_root_s** %rp.addr, align 8, !tbaa !1
  store %struct.gs_ptr_procs_s* %ptype, %struct.gs_ptr_procs_s** %ptype.addr, align 8, !tbaa !1
  store i8** %up, i8*** %up.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @chunk_unregister_root(%struct.gs_memory_s* %mem, %struct.gs_gc_root_s* %rp, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %rp.addr = alloca %struct.gs_gc_root_s*, align 8
  %cname.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_gc_root_s* %rp, %struct.gs_gc_root_s** %rp.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @chunk_enable_free(%struct.gs_memory_s* %mem, i32 %enable) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %enable.addr = alloca i32, align 4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %enable, i32* %enable.addr, align 4, !tbaa !23
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @chunk_obj_alloc(%struct.gs_memory_s* %mem, i32 %size, %struct.gs_memory_struct_type_s* %type, i8* %cname) #0 {
entry:
  %retval = alloca i8*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %size.addr = alloca i32, align 4
  %type.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %cname.addr = alloca i8*, align 8
  %cmem = alloca %struct.gs_memory_chunk_s*, align 8
  %head = alloca %struct.chunk_mem_node_s*, align 8
  %newsize = alloca i32, align 4
  %free_size = alloca i32, align 4
  %newobj = alloca %struct.chunk_obj_node_s*, align 8
  %free_obj = alloca %struct.chunk_freelist_node_s*, align 8
  %prev_free = alloca %struct.chunk_freelist_node_s*, align 8
  %new_free = alloca %struct.chunk_freelist_node_s*, align 8
  %current = alloca %struct.chunk_mem_node_s*, align 8
  %rescan_free_list = alloca i32, align 4
  %is_multiple_object_size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !23
  store %struct.gs_memory_struct_type_s* %type, %struct.gs_memory_struct_type_s** %type.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_chunk_s** %cmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_memory_chunk_s*
  store %struct.gs_memory_chunk_s* %2, %struct.gs_memory_chunk_s** %cmem, align 8, !tbaa !1
  %3 = bitcast %struct.chunk_mem_node_s** %head to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_memory_chunk_s*, %struct.gs_memory_chunk_s** %cmem, align 8, !tbaa !1
  %head_mo_chunk = getelementptr inbounds %struct.gs_memory_chunk_s, %struct.gs_memory_chunk_s* %4, i32 0, i32 6
  %5 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %head_mo_chunk, align 8, !tbaa !19
  store %struct.chunk_mem_node_s* %5, %struct.chunk_mem_node_s** %head, align 8, !tbaa !1
  %6 = bitcast i32* %newsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %free_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast %struct.chunk_obj_node_s** %newobj to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store %struct.chunk_obj_node_s* null, %struct.chunk_obj_node_s** %newobj, align 8, !tbaa !1
  %9 = bitcast %struct.chunk_freelist_node_s** %free_obj to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast %struct.chunk_freelist_node_s** %prev_free to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast %struct.chunk_freelist_node_s** %new_free to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast %struct.chunk_mem_node_s** %current to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store %struct.chunk_mem_node_s* null, %struct.chunk_mem_node_s** %current, align 8, !tbaa !1
  %13 = bitcast i32* %rescan_free_list to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 0, i32* %rescan_free_list, align 4, !tbaa !23
  %14 = bitcast i32* %is_multiple_object_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load i32, i32* %size.addr, align 4, !tbaa !23
  %conv = zext i32 %15 to i64
  %add = add i64 %conv, 40
  %conv1 = trunc i64 %add to i32
  %call = call i32 @round_up_to_align(i32 %conv1) #5
  store i32 %call, i32* %newsize, align 4, !tbaa !23
  %16 = load i32, i32* %newsize, align 4, !tbaa !23
  %cmp = icmp ugt i32 %16, 32768
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %is_multiple_object_size, align 4, !tbaa !23
  %17 = load i32, i32* %is_multiple_object_size, align 4, !tbaa !23
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %18 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %head, align 8, !tbaa !1
  store %struct.chunk_mem_node_s* %18, %struct.chunk_mem_node_s** %current, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %19 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %current, align 8, !tbaa !1
  %cmp3 = icmp ne %struct.chunk_mem_node_s* %19, null
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %current, align 8, !tbaa !1
  %largest_free = getelementptr inbounds %struct.chunk_mem_node_s, %struct.chunk_mem_node_s* %20, i32 0, i32 1
  %21 = load i32, i32* %largest_free, align 4, !tbaa !42
  %22 = load i32, i32* %newsize, align 4, !tbaa !23
  %cmp5 = icmp uge i32 %21, %22
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %23 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %current, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.chunk_mem_node_s, %struct.chunk_mem_node_s* %23, i32 0, i32 3
  %24 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %next, align 8, !tbaa !45
  store %struct.chunk_mem_node_s* %24, %struct.chunk_mem_node_s** %current, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %if.then.7, %for.cond
  br label %if.end.8

if.end.8:                                         ; preds = %for.end, %entry
  %25 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %current, align 8, !tbaa !1
  %cmp9 = icmp eq %struct.chunk_mem_node_s* %25, null
  br i1 %cmp9, label %if.then.11, label %if.end.18

if.then.11:                                       ; preds = %if.end.8
  %26 = load %struct.gs_memory_chunk_s*, %struct.gs_memory_chunk_s** %cmem, align 8, !tbaa !1
  %27 = load i32, i32* %newsize, align 4, !tbaa !23
  %28 = load i32, i32* %is_multiple_object_size, align 4, !tbaa !23
  %29 = load i32, i32* %is_multiple_object_size, align 4, !tbaa !23
  %tobool12 = icmp ne i32 %29, 0
  br i1 %tobool12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.11
  br label %cond.end

cond.false:                                       ; preds = %if.then.11
  %30 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), %cond.true ], [ %30, %cond.false ]
  %call13 = call i32 @chunk_mem_node_add(%struct.gs_memory_chunk_s* %26, i32 %27, i32 %28, %struct.chunk_mem_node_s** %current, i8* %cond) #5
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %cond.end
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %cond.end
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end.8
  store %struct.chunk_freelist_node_s* null, %struct.chunk_freelist_node_s** %prev_free, align 8, !tbaa !1
  %31 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %current, align 8, !tbaa !1
  %freelist = getelementptr inbounds %struct.chunk_mem_node_s, %struct.chunk_mem_node_s* %31, i32 0, i32 6
  %32 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %freelist, align 8, !tbaa !40
  store %struct.chunk_freelist_node_s* %32, %struct.chunk_freelist_node_s** %free_obj, align 8, !tbaa !1
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.28, %if.end.18
  %33 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %free_obj, align 8, !tbaa !1
  %cmp20 = icmp ne %struct.chunk_freelist_node_s* %33, null
  br i1 %cmp20, label %for.body.22, label %for.end.30

for.body.22:                                      ; preds = %for.cond.19
  %34 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %free_obj, align 8, !tbaa !1
  %size23 = getelementptr inbounds %struct.chunk_freelist_node_s, %struct.chunk_freelist_node_s* %34, i32 0, i32 1
  %35 = load i32, i32* %size23, align 4, !tbaa !38
  %36 = load i32, i32* %newsize, align 4, !tbaa !23
  %cmp24 = icmp uge i32 %35, %36
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %for.body.22
  br label %for.end.30

if.end.27:                                        ; preds = %for.body.22
  %37 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %free_obj, align 8, !tbaa !1
  store %struct.chunk_freelist_node_s* %37, %struct.chunk_freelist_node_s** %prev_free, align 8, !tbaa !1
  br label %for.inc.28

for.inc.28:                                       ; preds = %if.end.27
  %38 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %free_obj, align 8, !tbaa !1
  %next29 = getelementptr inbounds %struct.chunk_freelist_node_s, %struct.chunk_freelist_node_s* %38, i32 0, i32 0
  %39 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %next29, align 8, !tbaa !41
  store %struct.chunk_freelist_node_s* %39, %struct.chunk_freelist_node_s** %free_obj, align 8, !tbaa !1
  br label %for.cond.19

for.end.30:                                       ; preds = %if.then.26, %for.cond.19
  %40 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %free_obj, align 8, !tbaa !1
  %cmp31 = icmp eq %struct.chunk_freelist_node_s* %40, null
  br i1 %cmp31, label %if.then.33, label %if.end.36

if.then.33:                                       ; preds = %for.end.30
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %42 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %current, align 8, !tbaa !1
  %largest_free34 = getelementptr inbounds %struct.chunk_mem_node_s, %struct.chunk_mem_node_s* %42, i32 0, i32 1
  %43 = load i32, i32* %largest_free34, align 4, !tbaa !42
  %44 = load i32, i32* %newsize, align 4, !tbaa !23
  %call35 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %41, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i32 0, i32 0), i32 %43, i32 %44) #5
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.36:                                        ; preds = %for.end.30
  %45 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %current, align 8, !tbaa !1
  %is_multiple_object_chunk = getelementptr inbounds %struct.chunk_mem_node_s, %struct.chunk_mem_node_s* %45, i32 0, i32 2
  %46 = load i32, i32* %is_multiple_object_chunk, align 4, !tbaa !33
  %tobool37 = icmp ne i32 %46, 0
  br i1 %tobool37, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.36
  %47 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %free_obj, align 8, !tbaa !1
  %size38 = getelementptr inbounds %struct.chunk_freelist_node_s, %struct.chunk_freelist_node_s* %47, i32 0, i32 1
  %48 = load i32, i32* %size38, align 4, !tbaa !38
  %49 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %current, align 8, !tbaa !1
  %largest_free39 = getelementptr inbounds %struct.chunk_mem_node_s, %struct.chunk_mem_node_s* %49, i32 0, i32 1
  %50 = load i32, i32* %largest_free39, align 4, !tbaa !42
  %cmp40 = icmp eq i32 %48, %50
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.36
  %51 = phi i1 [ false, %if.end.36 ], [ %cmp40, %land.rhs ]
  %land.ext = zext i1 %51 to i32
  store i32 %land.ext, i32* %rescan_free_list, align 4, !tbaa !23
  %52 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %free_obj, align 8, !tbaa !1
  %53 = bitcast %struct.chunk_freelist_node_s* %52 to %struct.chunk_obj_node_s*
  store %struct.chunk_obj_node_s* %53, %struct.chunk_obj_node_s** %newobj, align 8, !tbaa !1
  %54 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %free_obj, align 8, !tbaa !1
  %size42 = getelementptr inbounds %struct.chunk_freelist_node_s, %struct.chunk_freelist_node_s* %54, i32 0, i32 1
  %55 = load i32, i32* %size42, align 4, !tbaa !38
  %56 = load i32, i32* %newsize, align 4, !tbaa !23
  %sub = sub i32 %55, %56
  store i32 %sub, i32* %free_size, align 4, !tbaa !23
  %57 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %free_obj, align 8, !tbaa !1
  %58 = bitcast %struct.chunk_freelist_node_s* %57 to i8*
  %59 = load i32, i32* %newsize, align 4, !tbaa !23
  %idx.ext = zext i32 %59 to i64
  %add.ptr = getelementptr inbounds i8, i8* %58, i64 %idx.ext
  %60 = bitcast i8* %add.ptr to %struct.chunk_freelist_node_s*
  store %struct.chunk_freelist_node_s* %60, %struct.chunk_freelist_node_s** %new_free, align 8, !tbaa !1
  %61 = load i32, i32* %free_size, align 4, !tbaa !23
  %conv43 = zext i32 %61 to i64
  %cmp44 = icmp uge i64 %conv43, 40
  br i1 %cmp44, label %if.then.46, label %if.else.64

if.then.46:                                       ; preds = %land.end
  %62 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %prev_free, align 8, !tbaa !1
  %cmp47 = icmp ne %struct.chunk_freelist_node_s* %62, null
  br i1 %cmp47, label %if.then.49, label %if.else

if.then.49:                                       ; preds = %if.then.46
  %63 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %new_free, align 8, !tbaa !1
  %64 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %prev_free, align 8, !tbaa !1
  %next50 = getelementptr inbounds %struct.chunk_freelist_node_s, %struct.chunk_freelist_node_s* %64, i32 0, i32 0
  store %struct.chunk_freelist_node_s* %63, %struct.chunk_freelist_node_s** %next50, align 8, !tbaa !41
  br label %if.end.52

if.else:                                          ; preds = %if.then.46
  %65 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %new_free, align 8, !tbaa !1
  %66 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %current, align 8, !tbaa !1
  %freelist51 = getelementptr inbounds %struct.chunk_mem_node_s, %struct.chunk_mem_node_s* %66, i32 0, i32 6
  store %struct.chunk_freelist_node_s* %65, %struct.chunk_freelist_node_s** %freelist51, align 8, !tbaa !40
  br label %if.end.52

if.end.52:                                        ; preds = %if.else, %if.then.49
  %67 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %free_obj, align 8, !tbaa !1
  %next53 = getelementptr inbounds %struct.chunk_freelist_node_s, %struct.chunk_freelist_node_s* %67, i32 0, i32 0
  %68 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %next53, align 8, !tbaa !41
  %69 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %new_free, align 8, !tbaa !1
  %next54 = getelementptr inbounds %struct.chunk_freelist_node_s, %struct.chunk_freelist_node_s* %69, i32 0, i32 0
  store %struct.chunk_freelist_node_s* %68, %struct.chunk_freelist_node_s** %next54, align 8, !tbaa !41
  %70 = load i32, i32* %free_size, align 4, !tbaa !23
  %71 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %new_free, align 8, !tbaa !1
  %size55 = getelementptr inbounds %struct.chunk_freelist_node_s, %struct.chunk_freelist_node_s* %71, i32 0, i32 1
  store i32 %70, i32* %size55, align 4, !tbaa !38
  %72 = load i32, i32* %rescan_free_list, align 4, !tbaa !23
  %tobool56 = icmp ne i32 %72, 0
  br i1 %tobool56, label %land.lhs.true, label %if.end.63

land.lhs.true:                                    ; preds = %if.end.52
  %73 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %current, align 8, !tbaa !1
  %freelist57 = getelementptr inbounds %struct.chunk_mem_node_s, %struct.chunk_mem_node_s* %73, i32 0, i32 6
  %74 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %freelist57, align 8, !tbaa !40
  %next58 = getelementptr inbounds %struct.chunk_freelist_node_s, %struct.chunk_freelist_node_s* %74, i32 0, i32 0
  %75 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %next58, align 8, !tbaa !41
  %cmp59 = icmp eq %struct.chunk_freelist_node_s* %75, null
  br i1 %cmp59, label %if.then.61, label %if.end.63

if.then.61:                                       ; preds = %land.lhs.true
  %76 = load i32, i32* %free_size, align 4, !tbaa !23
  %77 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %current, align 8, !tbaa !1
  %largest_free62 = getelementptr inbounds %struct.chunk_mem_node_s, %struct.chunk_mem_node_s* %77, i32 0, i32 1
  store i32 %76, i32* %largest_free62, align 4, !tbaa !42
  store i32 0, i32* %rescan_free_list, align 4, !tbaa !23
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.61, %land.lhs.true, %if.end.52
  br label %if.end.74

if.else.64:                                       ; preds = %land.end
  %78 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %prev_free, align 8, !tbaa !1
  %cmp65 = icmp ne %struct.chunk_freelist_node_s* %78, null
  br i1 %cmp65, label %if.then.67, label %if.else.70

if.then.67:                                       ; preds = %if.else.64
  %79 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %free_obj, align 8, !tbaa !1
  %next68 = getelementptr inbounds %struct.chunk_freelist_node_s, %struct.chunk_freelist_node_s* %79, i32 0, i32 0
  %80 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %next68, align 8, !tbaa !41
  %81 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %prev_free, align 8, !tbaa !1
  %next69 = getelementptr inbounds %struct.chunk_freelist_node_s, %struct.chunk_freelist_node_s* %81, i32 0, i32 0
  store %struct.chunk_freelist_node_s* %80, %struct.chunk_freelist_node_s** %next69, align 8, !tbaa !41
  br label %if.end.73

if.else.70:                                       ; preds = %if.else.64
  %82 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %free_obj, align 8, !tbaa !1
  %next71 = getelementptr inbounds %struct.chunk_freelist_node_s, %struct.chunk_freelist_node_s* %82, i32 0, i32 0
  %83 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %next71, align 8, !tbaa !41
  %84 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %current, align 8, !tbaa !1
  %freelist72 = getelementptr inbounds %struct.chunk_mem_node_s, %struct.chunk_mem_node_s* %84, i32 0, i32 6
  store %struct.chunk_freelist_node_s* %83, %struct.chunk_freelist_node_s** %freelist72, align 8, !tbaa !40
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.70, %if.then.67
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.end.63
  %85 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %current, align 8, !tbaa !1
  %objlist = getelementptr inbounds %struct.chunk_mem_node_s, %struct.chunk_mem_node_s* %85, i32 0, i32 5
  %86 = load %struct.chunk_obj_node_s*, %struct.chunk_obj_node_s** %objlist, align 8, !tbaa !35
  %87 = load %struct.chunk_obj_node_s*, %struct.chunk_obj_node_s** %newobj, align 8, !tbaa !1
  %next75 = getelementptr inbounds %struct.chunk_obj_node_s, %struct.chunk_obj_node_s* %87, i32 0, i32 0
  store %struct.chunk_obj_node_s* %86, %struct.chunk_obj_node_s** %next75, align 8, !tbaa !36
  %88 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %current, align 8, !tbaa !1
  %89 = load %struct.chunk_obj_node_s*, %struct.chunk_obj_node_s** %newobj, align 8, !tbaa !1
  %chunk = getelementptr inbounds %struct.chunk_obj_node_s, %struct.chunk_obj_node_s* %89, i32 0, i32 2
  store %struct.chunk_mem_node_s* %88, %struct.chunk_mem_node_s** %chunk, align 8, !tbaa !32
  %90 = load %struct.chunk_obj_node_s*, %struct.chunk_obj_node_s** %newobj, align 8, !tbaa !1
  %prev = getelementptr inbounds %struct.chunk_obj_node_s, %struct.chunk_obj_node_s* %90, i32 0, i32 1
  store %struct.chunk_obj_node_s* null, %struct.chunk_obj_node_s** %prev, align 8, !tbaa !37
  %91 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %current, align 8, !tbaa !1
  %objlist76 = getelementptr inbounds %struct.chunk_mem_node_s, %struct.chunk_mem_node_s* %91, i32 0, i32 5
  %92 = load %struct.chunk_obj_node_s*, %struct.chunk_obj_node_s** %objlist76, align 8, !tbaa !35
  %tobool77 = icmp ne %struct.chunk_obj_node_s* %92, null
  br i1 %tobool77, label %if.then.78, label %if.end.81

if.then.78:                                       ; preds = %if.end.74
  %93 = load %struct.chunk_obj_node_s*, %struct.chunk_obj_node_s** %newobj, align 8, !tbaa !1
  %94 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %current, align 8, !tbaa !1
  %objlist79 = getelementptr inbounds %struct.chunk_mem_node_s, %struct.chunk_mem_node_s* %94, i32 0, i32 5
  %95 = load %struct.chunk_obj_node_s*, %struct.chunk_obj_node_s** %objlist79, align 8, !tbaa !35
  %prev80 = getelementptr inbounds %struct.chunk_obj_node_s, %struct.chunk_obj_node_s* %95, i32 0, i32 1
  store %struct.chunk_obj_node_s* %93, %struct.chunk_obj_node_s** %prev80, align 8, !tbaa !37
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.78, %if.end.74
  %96 = load %struct.chunk_obj_node_s*, %struct.chunk_obj_node_s** %newobj, align 8, !tbaa !1
  %97 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %current, align 8, !tbaa !1
  %objlist82 = getelementptr inbounds %struct.chunk_mem_node_s, %struct.chunk_mem_node_s* %97, i32 0, i32 5
  store %struct.chunk_obj_node_s* %96, %struct.chunk_obj_node_s** %objlist82, align 8, !tbaa !35
  %98 = load i32, i32* %size.addr, align 4, !tbaa !23
  %99 = load %struct.chunk_obj_node_s*, %struct.chunk_obj_node_s** %newobj, align 8, !tbaa !1
  %size83 = getelementptr inbounds %struct.chunk_obj_node_s, %struct.chunk_obj_node_s* %99, i32 0, i32 4
  store i32 %98, i32* %size83, align 4, !tbaa !30
  %100 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %type.addr, align 8, !tbaa !1
  %101 = load %struct.chunk_obj_node_s*, %struct.chunk_obj_node_s** %newobj, align 8, !tbaa !1
  %type84 = getelementptr inbounds %struct.chunk_obj_node_s, %struct.chunk_obj_node_s* %101, i32 0, i32 3
  store %struct.gs_memory_struct_type_s* %100, %struct.gs_memory_struct_type_s** %type84, align 8, !tbaa !25
  %102 = load i32, i32* %rescan_free_list, align 4, !tbaa !23
  %tobool85 = icmp ne i32 %102, 0
  br i1 %tobool85, label %if.then.86, label %if.end.104

if.then.86:                                       ; preds = %if.end.81
  %103 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %current, align 8, !tbaa !1
  %largest_free87 = getelementptr inbounds %struct.chunk_mem_node_s, %struct.chunk_mem_node_s* %103, i32 0, i32 1
  store i32 0, i32* %largest_free87, align 4, !tbaa !42
  %104 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %current, align 8, !tbaa !1
  %freelist88 = getelementptr inbounds %struct.chunk_mem_node_s, %struct.chunk_mem_node_s* %104, i32 0, i32 6
  %105 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %freelist88, align 8, !tbaa !40
  store %struct.chunk_freelist_node_s* %105, %struct.chunk_freelist_node_s** %free_obj, align 8, !tbaa !1
  br label %for.cond.89

for.cond.89:                                      ; preds = %for.inc.101, %if.then.86
  %106 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %free_obj, align 8, !tbaa !1
  %cmp90 = icmp ne %struct.chunk_freelist_node_s* %106, null
  br i1 %cmp90, label %for.body.92, label %for.end.103

for.body.92:                                      ; preds = %for.cond.89
  %107 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %free_obj, align 8, !tbaa !1
  %size93 = getelementptr inbounds %struct.chunk_freelist_node_s, %struct.chunk_freelist_node_s* %107, i32 0, i32 1
  %108 = load i32, i32* %size93, align 4, !tbaa !38
  %109 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %current, align 8, !tbaa !1
  %largest_free94 = getelementptr inbounds %struct.chunk_mem_node_s, %struct.chunk_mem_node_s* %109, i32 0, i32 1
  %110 = load i32, i32* %largest_free94, align 4, !tbaa !42
  %cmp95 = icmp ugt i32 %108, %110
  br i1 %cmp95, label %if.then.97, label %if.end.100

if.then.97:                                       ; preds = %for.body.92
  %111 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %free_obj, align 8, !tbaa !1
  %size98 = getelementptr inbounds %struct.chunk_freelist_node_s, %struct.chunk_freelist_node_s* %111, i32 0, i32 1
  %112 = load i32, i32* %size98, align 4, !tbaa !38
  %113 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %current, align 8, !tbaa !1
  %largest_free99 = getelementptr inbounds %struct.chunk_mem_node_s, %struct.chunk_mem_node_s* %113, i32 0, i32 1
  store i32 %112, i32* %largest_free99, align 4, !tbaa !42
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.97, %for.body.92
  br label %for.inc.101

for.inc.101:                                      ; preds = %if.end.100
  %114 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %free_obj, align 8, !tbaa !1
  %next102 = getelementptr inbounds %struct.chunk_freelist_node_s, %struct.chunk_freelist_node_s* %114, i32 0, i32 0
  %115 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %next102, align 8, !tbaa !41
  store %struct.chunk_freelist_node_s* %115, %struct.chunk_freelist_node_s** %free_obj, align 8, !tbaa !1
  br label %for.cond.89

for.end.103:                                      ; preds = %for.cond.89
  br label %if.end.104

if.end.104:                                       ; preds = %for.end.103, %if.end.81
  %116 = load %struct.chunk_obj_node_s*, %struct.chunk_obj_node_s** %newobj, align 8, !tbaa !1
  %117 = bitcast %struct.chunk_obj_node_s* %116 to i8*
  %add.ptr105 = getelementptr inbounds i8, i8* %117, i64 40
  store i8* %add.ptr105, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.104, %if.then.33, %if.then.16
  %118 = bitcast i32* %is_multiple_object_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #1
  %119 = bitcast i32* %rescan_free_list to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #1
  %120 = bitcast %struct.chunk_mem_node_s** %current to i8*
  call void @llvm.lifetime.end(i64 8, i8* %120) #1
  %121 = bitcast %struct.chunk_freelist_node_s** %new_free to i8*
  call void @llvm.lifetime.end(i64 8, i8* %121) #1
  %122 = bitcast %struct.chunk_freelist_node_s** %prev_free to i8*
  call void @llvm.lifetime.end(i64 8, i8* %122) #1
  %123 = bitcast %struct.chunk_freelist_node_s** %free_obj to i8*
  call void @llvm.lifetime.end(i64 8, i8* %123) #1
  %124 = bitcast %struct.chunk_obj_node_s** %newobj to i8*
  call void @llvm.lifetime.end(i64 8, i8* %124) #1
  %125 = bitcast i32* %free_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #1
  %126 = bitcast i32* %newsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #1
  %127 = bitcast %struct.chunk_mem_node_s** %head to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #1
  %128 = bitcast %struct.gs_memory_chunk_s** %cmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %128) #1
  %129 = load i8*, i8** %retval
  ret i8* %129
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @round_up_to_align(i32 %size) #2 {
entry:
  %size.addr = alloca i32, align 4
  %num_node_headers = alloca i32, align 4
  store i32 %size, i32* %size.addr, align 4, !tbaa !23
  %0 = bitcast i32* %num_node_headers to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %size.addr, align 4, !tbaa !23
  %conv = zext i32 %1 to i64
  %add = add i64 %conv, 40
  %sub = sub i64 %add, 1
  %div = udiv i64 %sub, 40
  %conv1 = trunc i64 %div to i32
  store i32 %conv1, i32* %num_node_headers, align 4, !tbaa !23
  %2 = load i32, i32* %num_node_headers, align 4, !tbaa !23
  %conv2 = zext i32 %2 to i64
  %mul = mul i64 %conv2, 40
  %conv3 = trunc i64 %mul to i32
  %3 = bitcast i32* %num_node_headers to i8*
  call void @llvm.lifetime.end(i64 4, i8* %3) #1
  ret i32 %conv3
}

; Function Attrs: nounwind uwtable
define internal i32 @chunk_mem_node_add(%struct.gs_memory_chunk_s* %cmem, i32 %size_needed, i32 %is_multiple_object_chunk, %struct.chunk_mem_node_s** %newchunk, i8* %cname) #0 {
entry:
  %retval = alloca i32, align 4
  %cmem.addr = alloca %struct.gs_memory_chunk_s*, align 8
  %size_needed.addr = alloca i32, align 4
  %is_multiple_object_chunk.addr = alloca i32, align 4
  %newchunk.addr = alloca %struct.chunk_mem_node_s**, align 8
  %cname.addr = alloca i8*, align 8
  %node = alloca %struct.chunk_mem_node_s*, align 8
  %target = alloca %struct.gs_memory_s*, align 8
  %chunk_size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_chunk_s* %cmem, %struct.gs_memory_chunk_s** %cmem.addr, align 8, !tbaa !1
  store i32 %size_needed, i32* %size_needed.addr, align 4, !tbaa !23
  store i32 %is_multiple_object_chunk, i32* %is_multiple_object_chunk.addr, align 4, !tbaa !23
  store %struct.chunk_mem_node_s** %newchunk, %struct.chunk_mem_node_s*** %newchunk.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.chunk_mem_node_s** %node to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.gs_memory_s** %target to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_memory_chunk_s*, %struct.gs_memory_chunk_s** %cmem.addr, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gs_memory_chunk_s, %struct.gs_memory_chunk_s* %2, i32 0, i32 5
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target1, align 8, !tbaa !18
  store %struct.gs_memory_s* %3, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %4 = bitcast i32* %chunk_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i32, i32* %size_needed.addr, align 4, !tbaa !23
  %conv = zext i32 %5 to i64
  %add = add i64 %conv, 48
  %conv2 = trunc i64 %add to i32
  store i32 %conv2, i32* %chunk_size, align 4, !tbaa !23
  %6 = load i32, i32* %is_multiple_object_chunk.addr, align 4, !tbaa !23
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %7 = load i32, i32* %chunk_size, align 4, !tbaa !23
  %conv3 = zext i32 %7 to i64
  %call = call i32 @round_up_to_align(i32 65536) #5
  %conv4 = zext i32 %call to i64
  %add5 = add i64 48, %conv4
  %cmp = icmp ult i64 %conv3, %add5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %call7 = call i32 @round_up_to_align(i32 65536) #5
  %conv8 = zext i32 %call7 to i64
  %add9 = add i64 48, %conv8
  %conv10 = trunc i64 %add9 to i32
  store i32 %conv10, i32* %chunk_size, align 4, !tbaa !23
  store i32 1, i32* %is_multiple_object_chunk.addr, align 4, !tbaa !23
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  store i32 0, i32* %is_multiple_object_chunk.addr, align 4, !tbaa !23
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load %struct.chunk_mem_node_s**, %struct.chunk_mem_node_s*** %newchunk.addr, align 8, !tbaa !1
  store %struct.chunk_mem_node_s* null, %struct.chunk_mem_node_s** %8, align 8, !tbaa !1
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %9, i32 0, i32 1
  %alloc_bytes_immovable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 0
  %10 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes_immovable, align 8, !tbaa !8
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %12 = load i32, i32* %chunk_size, align 4, !tbaa !23
  %13 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call11 = call i8* %10(%struct.gs_memory_s* %11, i32 %12, i8* %13) #5
  %14 = bitcast i8* %call11 to %struct.chunk_mem_node_s*
  store %struct.chunk_mem_node_s* %14, %struct.chunk_mem_node_s** %node, align 8, !tbaa !1
  %15 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %node, align 8, !tbaa !1
  %cmp12 = icmp eq %struct.chunk_mem_node_s* %15, null
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.end
  %16 = load i32, i32* %chunk_size, align 4, !tbaa !23
  %conv16 = zext i32 %16 to i64
  %17 = load %struct.gs_memory_chunk_s*, %struct.gs_memory_chunk_s** %cmem.addr, align 8, !tbaa !1
  %used = getelementptr inbounds %struct.gs_memory_chunk_s, %struct.gs_memory_chunk_s* %17, i32 0, i32 8
  %18 = load i64, i64* %used, align 8, !tbaa !21
  %add17 = add i64 %18, %conv16
  store i64 %add17, i64* %used, align 8, !tbaa !21
  %19 = load i32, i32* %chunk_size, align 4, !tbaa !23
  %20 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %node, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.chunk_mem_node_s, %struct.chunk_mem_node_s* %20, i32 0, i32 0
  store i32 %19, i32* %size, align 4, !tbaa !50
  %21 = load i32, i32* %chunk_size, align 4, !tbaa !23
  %conv18 = zext i32 %21 to i64
  %sub = sub i64 %conv18, 48
  %conv19 = trunc i64 %sub to i32
  %22 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %node, align 8, !tbaa !1
  %largest_free = getelementptr inbounds %struct.chunk_mem_node_s, %struct.chunk_mem_node_s* %22, i32 0, i32 1
  store i32 %conv19, i32* %largest_free, align 4, !tbaa !42
  %23 = load i32, i32* %is_multiple_object_chunk.addr, align 4, !tbaa !23
  %24 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %node, align 8, !tbaa !1
  %is_multiple_object_chunk20 = getelementptr inbounds %struct.chunk_mem_node_s, %struct.chunk_mem_node_s* %24, i32 0, i32 2
  store i32 %23, i32* %is_multiple_object_chunk20, align 4, !tbaa !33
  %25 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %node, align 8, !tbaa !1
  %objlist = getelementptr inbounds %struct.chunk_mem_node_s, %struct.chunk_mem_node_s* %25, i32 0, i32 5
  store %struct.chunk_obj_node_s* null, %struct.chunk_obj_node_s** %objlist, align 8, !tbaa !35
  %26 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %node, align 8, !tbaa !1
  %27 = bitcast %struct.chunk_mem_node_s* %26 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %27, i64 48
  %28 = bitcast i8* %add.ptr to %struct.chunk_freelist_node_s*
  %29 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %node, align 8, !tbaa !1
  %freelist = getelementptr inbounds %struct.chunk_mem_node_s, %struct.chunk_mem_node_s* %29, i32 0, i32 6
  store %struct.chunk_freelist_node_s* %28, %struct.chunk_freelist_node_s** %freelist, align 8, !tbaa !40
  %30 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %node, align 8, !tbaa !1
  %freelist21 = getelementptr inbounds %struct.chunk_mem_node_s, %struct.chunk_mem_node_s* %30, i32 0, i32 6
  %31 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %freelist21, align 8, !tbaa !40
  %next = getelementptr inbounds %struct.chunk_freelist_node_s, %struct.chunk_freelist_node_s* %31, i32 0, i32 0
  store %struct.chunk_freelist_node_s* null, %struct.chunk_freelist_node_s** %next, align 8, !tbaa !41
  %32 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %node, align 8, !tbaa !1
  %largest_free22 = getelementptr inbounds %struct.chunk_mem_node_s, %struct.chunk_mem_node_s* %32, i32 0, i32 1
  %33 = load i32, i32* %largest_free22, align 4, !tbaa !42
  %34 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %node, align 8, !tbaa !1
  %freelist23 = getelementptr inbounds %struct.chunk_mem_node_s, %struct.chunk_mem_node_s* %34, i32 0, i32 6
  %35 = load %struct.chunk_freelist_node_s*, %struct.chunk_freelist_node_s** %freelist23, align 8, !tbaa !40
  %size24 = getelementptr inbounds %struct.chunk_freelist_node_s, %struct.chunk_freelist_node_s* %35, i32 0, i32 1
  store i32 %33, i32* %size24, align 4, !tbaa !38
  %36 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %node, align 8, !tbaa !1
  %prev = getelementptr inbounds %struct.chunk_mem_node_s, %struct.chunk_mem_node_s* %36, i32 0, i32 4
  store %struct.chunk_mem_node_s* null, %struct.chunk_mem_node_s** %prev, align 8, !tbaa !51
  %37 = load i32, i32* %is_multiple_object_chunk.addr, align 4, !tbaa !23
  %tobool25 = icmp ne i32 %37, 0
  br i1 %tobool25, label %if.then.26, label %if.else.39

if.then.26:                                       ; preds = %if.end.15
  %38 = load %struct.gs_memory_chunk_s*, %struct.gs_memory_chunk_s** %cmem.addr, align 8, !tbaa !1
  %head_mo_chunk = getelementptr inbounds %struct.gs_memory_chunk_s, %struct.gs_memory_chunk_s* %38, i32 0, i32 6
  %39 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %head_mo_chunk, align 8, !tbaa !19
  %cmp27 = icmp eq %struct.chunk_mem_node_s* %39, null
  br i1 %cmp27, label %if.then.29, label %if.else.32

if.then.29:                                       ; preds = %if.then.26
  %40 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %node, align 8, !tbaa !1
  %41 = load %struct.gs_memory_chunk_s*, %struct.gs_memory_chunk_s** %cmem.addr, align 8, !tbaa !1
  %head_mo_chunk30 = getelementptr inbounds %struct.gs_memory_chunk_s, %struct.gs_memory_chunk_s* %41, i32 0, i32 6
  store %struct.chunk_mem_node_s* %40, %struct.chunk_mem_node_s** %head_mo_chunk30, align 8, !tbaa !19
  %42 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %node, align 8, !tbaa !1
  %next31 = getelementptr inbounds %struct.chunk_mem_node_s, %struct.chunk_mem_node_s* %42, i32 0, i32 3
  store %struct.chunk_mem_node_s* null, %struct.chunk_mem_node_s** %next31, align 8, !tbaa !45
  br label %if.end.38

if.else.32:                                       ; preds = %if.then.26
  %43 = load %struct.gs_memory_chunk_s*, %struct.gs_memory_chunk_s** %cmem.addr, align 8, !tbaa !1
  %head_mo_chunk33 = getelementptr inbounds %struct.gs_memory_chunk_s, %struct.gs_memory_chunk_s* %43, i32 0, i32 6
  %44 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %head_mo_chunk33, align 8, !tbaa !19
  %45 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %node, align 8, !tbaa !1
  %next34 = getelementptr inbounds %struct.chunk_mem_node_s, %struct.chunk_mem_node_s* %45, i32 0, i32 3
  store %struct.chunk_mem_node_s* %44, %struct.chunk_mem_node_s** %next34, align 8, !tbaa !45
  %46 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %node, align 8, !tbaa !1
  %47 = load %struct.gs_memory_chunk_s*, %struct.gs_memory_chunk_s** %cmem.addr, align 8, !tbaa !1
  %head_mo_chunk35 = getelementptr inbounds %struct.gs_memory_chunk_s, %struct.gs_memory_chunk_s* %47, i32 0, i32 6
  %48 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %head_mo_chunk35, align 8, !tbaa !19
  %prev36 = getelementptr inbounds %struct.chunk_mem_node_s, %struct.chunk_mem_node_s* %48, i32 0, i32 4
  store %struct.chunk_mem_node_s* %46, %struct.chunk_mem_node_s** %prev36, align 8, !tbaa !51
  %49 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %node, align 8, !tbaa !1
  %50 = load %struct.gs_memory_chunk_s*, %struct.gs_memory_chunk_s** %cmem.addr, align 8, !tbaa !1
  %head_mo_chunk37 = getelementptr inbounds %struct.gs_memory_chunk_s, %struct.gs_memory_chunk_s* %50, i32 0, i32 6
  store %struct.chunk_mem_node_s* %49, %struct.chunk_mem_node_s** %head_mo_chunk37, align 8, !tbaa !19
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.32, %if.then.29
  br label %if.end.52

if.else.39:                                       ; preds = %if.end.15
  %51 = load %struct.gs_memory_chunk_s*, %struct.gs_memory_chunk_s** %cmem.addr, align 8, !tbaa !1
  %head_so_chunk = getelementptr inbounds %struct.gs_memory_chunk_s, %struct.gs_memory_chunk_s* %51, i32 0, i32 7
  %52 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %head_so_chunk, align 8, !tbaa !20
  %cmp40 = icmp eq %struct.chunk_mem_node_s* %52, null
  br i1 %cmp40, label %if.then.42, label %if.else.45

if.then.42:                                       ; preds = %if.else.39
  %53 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %node, align 8, !tbaa !1
  %54 = load %struct.gs_memory_chunk_s*, %struct.gs_memory_chunk_s** %cmem.addr, align 8, !tbaa !1
  %head_so_chunk43 = getelementptr inbounds %struct.gs_memory_chunk_s, %struct.gs_memory_chunk_s* %54, i32 0, i32 7
  store %struct.chunk_mem_node_s* %53, %struct.chunk_mem_node_s** %head_so_chunk43, align 8, !tbaa !20
  %55 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %node, align 8, !tbaa !1
  %next44 = getelementptr inbounds %struct.chunk_mem_node_s, %struct.chunk_mem_node_s* %55, i32 0, i32 3
  store %struct.chunk_mem_node_s* null, %struct.chunk_mem_node_s** %next44, align 8, !tbaa !45
  br label %if.end.51

if.else.45:                                       ; preds = %if.else.39
  %56 = load %struct.gs_memory_chunk_s*, %struct.gs_memory_chunk_s** %cmem.addr, align 8, !tbaa !1
  %head_so_chunk46 = getelementptr inbounds %struct.gs_memory_chunk_s, %struct.gs_memory_chunk_s* %56, i32 0, i32 7
  %57 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %head_so_chunk46, align 8, !tbaa !20
  %58 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %node, align 8, !tbaa !1
  %next47 = getelementptr inbounds %struct.chunk_mem_node_s, %struct.chunk_mem_node_s* %58, i32 0, i32 3
  store %struct.chunk_mem_node_s* %57, %struct.chunk_mem_node_s** %next47, align 8, !tbaa !45
  %59 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %node, align 8, !tbaa !1
  %60 = load %struct.gs_memory_chunk_s*, %struct.gs_memory_chunk_s** %cmem.addr, align 8, !tbaa !1
  %head_so_chunk48 = getelementptr inbounds %struct.gs_memory_chunk_s, %struct.gs_memory_chunk_s* %60, i32 0, i32 7
  %61 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %head_so_chunk48, align 8, !tbaa !20
  %prev49 = getelementptr inbounds %struct.chunk_mem_node_s, %struct.chunk_mem_node_s* %61, i32 0, i32 4
  store %struct.chunk_mem_node_s* %59, %struct.chunk_mem_node_s** %prev49, align 8, !tbaa !51
  %62 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %node, align 8, !tbaa !1
  %63 = load %struct.gs_memory_chunk_s*, %struct.gs_memory_chunk_s** %cmem.addr, align 8, !tbaa !1
  %head_so_chunk50 = getelementptr inbounds %struct.gs_memory_chunk_s, %struct.gs_memory_chunk_s* %63, i32 0, i32 7
  store %struct.chunk_mem_node_s* %62, %struct.chunk_mem_node_s** %head_so_chunk50, align 8, !tbaa !20
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.45, %if.then.42
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.end.38
  %64 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %node, align 8, !tbaa !1
  %65 = load %struct.chunk_mem_node_s**, %struct.chunk_mem_node_s*** %newchunk.addr, align 8, !tbaa !1
  store %struct.chunk_mem_node_s* %64, %struct.chunk_mem_node_s** %65, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.52, %if.then.14
  %66 = bitcast i32* %chunk_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast %struct.gs_memory_s** %target to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = bitcast %struct.chunk_mem_node_s** %node to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  %69 = load i32, i32* %retval
  ret i32 %69
}

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #3

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define internal i32 @chunk_mem_node_remove(%struct.gs_memory_chunk_s* %cmem, %struct.chunk_mem_node_s* %addr) #0 {
entry:
  %retval = alloca i32, align 4
  %cmem.addr = alloca %struct.gs_memory_chunk_s*, align 8
  %addr.addr = alloca %struct.chunk_mem_node_s*, align 8
  %p_head = alloca %struct.chunk_mem_node_s**, align 8
  %head = alloca %struct.chunk_mem_node_s*, align 8
  %target = alloca %struct.gs_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  %current = alloca %struct.chunk_mem_node_s*, align 8
  store %struct.gs_memory_chunk_s* %cmem, %struct.gs_memory_chunk_s** %cmem.addr, align 8, !tbaa !1
  store %struct.chunk_mem_node_s* %addr, %struct.chunk_mem_node_s** %addr.addr, align 8, !tbaa !1
  %0 = bitcast %struct.chunk_mem_node_s*** %p_head to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %addr.addr, align 8, !tbaa !1
  %is_multiple_object_chunk = getelementptr inbounds %struct.chunk_mem_node_s, %struct.chunk_mem_node_s* %1, i32 0, i32 2
  %2 = load i32, i32* %is_multiple_object_chunk, align 4, !tbaa !33
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct.gs_memory_chunk_s*, %struct.gs_memory_chunk_s** %cmem.addr, align 8, !tbaa !1
  %head_mo_chunk = getelementptr inbounds %struct.gs_memory_chunk_s, %struct.gs_memory_chunk_s* %3, i32 0, i32 6
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load %struct.gs_memory_chunk_s*, %struct.gs_memory_chunk_s** %cmem.addr, align 8, !tbaa !1
  %head_so_chunk = getelementptr inbounds %struct.gs_memory_chunk_s, %struct.gs_memory_chunk_s* %4, i32 0, i32 7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.chunk_mem_node_s** [ %head_mo_chunk, %cond.true ], [ %head_so_chunk, %cond.false ]
  store %struct.chunk_mem_node_s** %cond, %struct.chunk_mem_node_s*** %p_head, align 8, !tbaa !1
  %5 = bitcast %struct.chunk_mem_node_s** %head to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.chunk_mem_node_s**, %struct.chunk_mem_node_s*** %p_head, align 8, !tbaa !1
  %7 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %6, align 8, !tbaa !1
  store %struct.chunk_mem_node_s* %7, %struct.chunk_mem_node_s** %head, align 8, !tbaa !1
  %8 = bitcast %struct.gs_memory_s** %target to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.gs_memory_chunk_s*, %struct.gs_memory_chunk_s** %cmem.addr, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gs_memory_chunk_s, %struct.gs_memory_chunk_s* %9, i32 0, i32 5
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target1, align 8, !tbaa !18
  store %struct.gs_memory_s* %10, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %11 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %addr.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.chunk_mem_node_s, %struct.chunk_mem_node_s* %11, i32 0, i32 0
  %12 = load i32, i32* %size, align 4, !tbaa !50
  %conv = zext i32 %12 to i64
  %13 = load %struct.gs_memory_chunk_s*, %struct.gs_memory_chunk_s** %cmem.addr, align 8, !tbaa !1
  %used = getelementptr inbounds %struct.gs_memory_chunk_s, %struct.gs_memory_chunk_s* %13, i32 0, i32 8
  %14 = load i64, i64* %used, align 8, !tbaa !21
  %sub = sub i64 %14, %conv
  store i64 %sub, i64* %used, align 8, !tbaa !21
  %15 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %head, align 8, !tbaa !1
  %cmp = icmp eq %struct.chunk_mem_node_s* %15, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %call = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0)) #5
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %17 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %head, align 8, !tbaa !1
  %18 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %addr.addr, align 8, !tbaa !1
  %cmp3 = icmp eq %struct.chunk_mem_node_s* %17, %18
  br i1 %cmp3, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %19 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %head, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.chunk_mem_node_s, %struct.chunk_mem_node_s* %19, i32 0, i32 3
  %20 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %next, align 8, !tbaa !45
  %21 = load %struct.chunk_mem_node_s**, %struct.chunk_mem_node_s*** %p_head, align 8, !tbaa !1
  store %struct.chunk_mem_node_s* %20, %struct.chunk_mem_node_s** %21, align 8, !tbaa !1
  %22 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %head, align 8, !tbaa !1
  %next6 = getelementptr inbounds %struct.chunk_mem_node_s, %struct.chunk_mem_node_s* %22, i32 0, i32 3
  %23 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %next6, align 8, !tbaa !45
  %cmp7 = icmp ne %struct.chunk_mem_node_s* %23, null
  br i1 %cmp7, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.then.5
  %24 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %head, align 8, !tbaa !1
  %next10 = getelementptr inbounds %struct.chunk_mem_node_s, %struct.chunk_mem_node_s* %24, i32 0, i32 3
  %25 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %next10, align 8, !tbaa !45
  %prev = getelementptr inbounds %struct.chunk_mem_node_s, %struct.chunk_mem_node_s* %25, i32 0, i32 4
  store %struct.chunk_mem_node_s* null, %struct.chunk_mem_node_s** %prev, align 8, !tbaa !51
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.then.5
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %26, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %27 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !49
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %29 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %head, align 8, !tbaa !1
  %30 = bitcast %struct.chunk_mem_node_s* %29 to i8*
  call void %27(%struct.gs_memory_s* %28, i8* %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0)) #5
  br label %if.end.24

if.else:                                          ; preds = %if.end
  %31 = bitcast %struct.chunk_mem_node_s** %current to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  %32 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %addr.addr, align 8, !tbaa !1
  %prev12 = getelementptr inbounds %struct.chunk_mem_node_s, %struct.chunk_mem_node_s* %32, i32 0, i32 4
  %33 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %prev12, align 8, !tbaa !51
  store %struct.chunk_mem_node_s* %33, %struct.chunk_mem_node_s** %current, align 8, !tbaa !1
  %34 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %addr.addr, align 8, !tbaa !1
  %next13 = getelementptr inbounds %struct.chunk_mem_node_s, %struct.chunk_mem_node_s* %34, i32 0, i32 3
  %35 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %next13, align 8, !tbaa !45
  %36 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %current, align 8, !tbaa !1
  %next14 = getelementptr inbounds %struct.chunk_mem_node_s, %struct.chunk_mem_node_s* %36, i32 0, i32 3
  store %struct.chunk_mem_node_s* %35, %struct.chunk_mem_node_s** %next14, align 8, !tbaa !45
  %37 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %addr.addr, align 8, !tbaa !1
  %next15 = getelementptr inbounds %struct.chunk_mem_node_s, %struct.chunk_mem_node_s* %37, i32 0, i32 3
  %38 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %next15, align 8, !tbaa !45
  %cmp16 = icmp ne %struct.chunk_mem_node_s* %38, null
  br i1 %cmp16, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %if.else
  %39 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %current, align 8, !tbaa !1
  %40 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %addr.addr, align 8, !tbaa !1
  %next19 = getelementptr inbounds %struct.chunk_mem_node_s, %struct.chunk_mem_node_s* %40, i32 0, i32 3
  %41 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %next19, align 8, !tbaa !45
  %prev20 = getelementptr inbounds %struct.chunk_mem_node_s, %struct.chunk_mem_node_s* %41, i32 0, i32 4
  store %struct.chunk_mem_node_s* %39, %struct.chunk_mem_node_s** %prev20, align 8, !tbaa !51
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %if.else
  %42 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %procs22 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %42, i32 0, i32 1
  %free_object23 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs22, i32 0, i32 2
  %43 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object23, align 8, !tbaa !49
  %44 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %45 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %addr.addr, align 8, !tbaa !1
  %46 = bitcast %struct.chunk_mem_node_s* %45 to i8*
  call void %43(%struct.gs_memory_s* %44, i8* %46, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0)) #5
  %47 = bitcast %struct.chunk_mem_node_s** %current to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.21, %if.end.11
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.24, %if.then
  %48 = bitcast %struct.gs_memory_s** %target to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = bitcast %struct.chunk_mem_node_s** %head to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = bitcast %struct.chunk_mem_node_s*** %p_head to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = load i32, i32* %retval
  ret i32 %51
}

; Function Attrs: nounwind uwtable
define internal void @chunk_mem_node_free_all_remaining(%struct.gs_memory_chunk_s* %cmem) #0 {
entry:
  %cmem.addr = alloca %struct.gs_memory_chunk_s*, align 8
  %head = alloca %struct.chunk_mem_node_s*, align 8
  %target = alloca %struct.gs_memory_s*, align 8
  %current = alloca %struct.chunk_mem_node_s*, align 8
  %next = alloca %struct.chunk_mem_node_s*, align 8
  %i = alloca i32, align 4
  store %struct.gs_memory_chunk_s* %cmem, %struct.gs_memory_chunk_s** %cmem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.chunk_mem_node_s** %head to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_chunk_s*, %struct.gs_memory_chunk_s** %cmem.addr, align 8, !tbaa !1
  %head_mo_chunk = getelementptr inbounds %struct.gs_memory_chunk_s, %struct.gs_memory_chunk_s* %1, i32 0, i32 6
  %2 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %head_mo_chunk, align 8, !tbaa !19
  store %struct.chunk_mem_node_s* %2, %struct.chunk_mem_node_s** %head, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_s** %target to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_memory_chunk_s*, %struct.gs_memory_chunk_s** %cmem.addr, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gs_memory_chunk_s, %struct.gs_memory_chunk_s* %4, i32 0, i32 5
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target1, align 8, !tbaa !18
  store %struct.gs_memory_s* %5, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %6 = bitcast %struct.chunk_mem_node_s** %current to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast %struct.chunk_mem_node_s** %next to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 0, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %i, align 4, !tbaa !23
  %cmp = icmp slt i32 %9, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %head, align 8, !tbaa !1
  store %struct.chunk_mem_node_s* %10, %struct.chunk_mem_node_s** %current, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %11 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %current, align 8, !tbaa !1
  %cmp2 = icmp ne %struct.chunk_mem_node_s* %11, null
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %current, align 8, !tbaa !1
  %next3 = getelementptr inbounds %struct.chunk_mem_node_s, %struct.chunk_mem_node_s* %12, i32 0, i32 3
  %13 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %next3, align 8, !tbaa !45
  store %struct.chunk_mem_node_s* %13, %struct.chunk_mem_node_s** %next, align 8, !tbaa !1
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %14, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %15 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !49
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %17 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %current, align 8, !tbaa !1
  %18 = bitcast %struct.chunk_mem_node_s* %17 to i8*
  call void %15(%struct.gs_memory_s* %16, i8* %18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0)) #5
  %19 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %next, align 8, !tbaa !1
  store %struct.chunk_mem_node_s* %19, %struct.chunk_mem_node_s** %current, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %20 = load %struct.gs_memory_chunk_s*, %struct.gs_memory_chunk_s** %cmem.addr, align 8, !tbaa !1
  %head_mo_chunk4 = getelementptr inbounds %struct.gs_memory_chunk_s, %struct.gs_memory_chunk_s* %20, i32 0, i32 6
  store %struct.chunk_mem_node_s* null, %struct.chunk_mem_node_s** %head_mo_chunk4, align 8, !tbaa !19
  %21 = load %struct.gs_memory_chunk_s*, %struct.gs_memory_chunk_s** %cmem.addr, align 8, !tbaa !1
  %head_so_chunk = getelementptr inbounds %struct.gs_memory_chunk_s, %struct.gs_memory_chunk_s* %21, i32 0, i32 7
  %22 = load %struct.chunk_mem_node_s*, %struct.chunk_mem_node_s** %head_so_chunk, align 8, !tbaa !20
  store %struct.chunk_mem_node_s* %22, %struct.chunk_mem_node_s** %head, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %23 = load i32, i32* %i, align 4, !tbaa !23
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load %struct.gs_memory_chunk_s*, %struct.gs_memory_chunk_s** %cmem.addr, align 8, !tbaa !1
  %head_so_chunk5 = getelementptr inbounds %struct.gs_memory_chunk_s, %struct.gs_memory_chunk_s* %24, i32 0, i32 7
  store %struct.chunk_mem_node_s* null, %struct.chunk_mem_node_s** %head_so_chunk5, align 8, !tbaa !20
  %25 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast %struct.chunk_mem_node_s** %next to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = bitcast %struct.chunk_mem_node_s** %current to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = bitcast %struct.gs_memory_s** %target to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = bitcast %struct.chunk_mem_node_s** %head to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 200}
!6 = !{!"gs_memory_s", !2, i64 0, !7, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!7 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!8 = !{!6, !2, i64 8}
!9 = !{!10, !2, i64 0}
!10 = !{!"gs_memory_chunk_s", !2, i64 0, !7, i64 8, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !11, i64 240}
!11 = !{!"long", !3, i64 0}
!12 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 8, !1, i64 32, i64 8, !1, i64 40, i64 8, !1, i64 48, i64 8, !1, i64 56, i64 8, !1, i64 64, i64 8, !1, i64 72, i64 8, !1, i64 80, i64 8, !1, i64 88, i64 8, !1, i64 96, i64 8, !1, i64 104, i64 8, !1, i64 112, i64 8, !1, i64 120, i64 8, !1, i64 128, i64 8, !1, i64 136, i64 8, !1, i64 144, i64 8, !1, i64 152, i64 8, !1, i64 160, i64 8, !1, i64 168, i64 8, !1, i64 176, i64 8, !1}
!13 = !{!6, !2, i64 192}
!14 = !{!10, !2, i64 192}
!15 = !{!10, !2, i64 200}
!16 = !{!6, !2, i64 208}
!17 = !{!10, !2, i64 208}
!18 = !{!10, !2, i64 216}
!19 = !{!10, !2, i64 224}
!20 = !{!10, !2, i64 232}
!21 = !{!10, !11, i64 240}
!22 = !{!6, !2, i64 48}
!23 = !{!24, !24, i64 0}
!24 = !{!"int", !3, i64 0}
!25 = !{!26, !2, i64 24}
!26 = !{!"chunk_obj_node_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !24, i64 32}
!27 = !{!28, !24, i64 0}
!28 = !{!"gs_memory_struct_type_s", !24, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!29 = !{!11, !11, i64 0}
!30 = !{!26, !24, i64 32}
!31 = !{!28, !2, i64 48}
!32 = !{!26, !2, i64 16}
!33 = !{!34, !24, i64 8}
!34 = !{!"chunk_mem_node_s", !24, i64 0, !24, i64 4, !24, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40}
!35 = !{!34, !2, i64 32}
!36 = !{!26, !2, i64 0}
!37 = !{!26, !2, i64 8}
!38 = !{!39, !24, i64 8}
!39 = !{!"chunk_freelist_node_s", !2, i64 0, !24, i64 8}
!40 = !{!34, !2, i64 40}
!41 = !{!39, !2, i64 0}
!42 = !{!34, !24, i64 4}
!43 = !{!44, !11, i64 0}
!44 = !{!"gs_memory_status_s", !11, i64 0, !11, i64 8, !24, i64 16}
!45 = !{!34, !2, i64 16}
!46 = !{!44, !11, i64 8}
!47 = !{!44, !24, i64 16}
!48 = !{!6, !2, i64 0}
!49 = !{!6, !2, i64 24}
!50 = !{!34, !24, i64 0}
!51 = !{!34, !2, i64 24}
