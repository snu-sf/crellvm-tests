; ModuleID = './gsmemlok.bc'
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
%struct.gs_memory_struct_type_s = type opaque
%struct.gs_gc_root_s = type opaque
%struct.gs_ptr_procs_s = type opaque
%struct.gs_memory_locked_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s*, %struct.gs_memory_s*, %struct.gx_monitor_s* }
%struct.gx_monitor_s = type { %struct.gs_memory_s*, %union.gp_monitor }
%union.gp_monitor = type { i8* }

@locked_procs = internal constant %struct.gs_memory_procs_s { i8* (%struct.gs_memory_s*, i32, i8*)* @gs_locked_alloc_bytes_immovable, i8* (%struct.gs_memory_s*, i8*, i32, i8*)* @gs_locked_resize_object, void (%struct.gs_memory_s*, i8*, i8*)* @gs_locked_free_object, %struct.gs_memory_s* (%struct.gs_memory_s*)* @gs_locked_stable, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)* @gs_locked_status, void (%struct.gs_memory_s*, i32, i8*)* @gs_locked_free_all, void (%struct.gs_memory_s*)* @gs_locked_consolidate_free, i8* (%struct.gs_memory_s*, i32, i8*)* @gs_locked_alloc_bytes, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)* @gs_locked_alloc_struct, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)* @gs_locked_alloc_struct_immovable, i8* (%struct.gs_memory_s*, i32, i32, i8*)* @gs_locked_alloc_byte_array, i8* (%struct.gs_memory_s*, i32, i32, i8*)* @gs_locked_alloc_byte_array_immovable, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)* @gs_locked_alloc_struct_array, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)* @gs_locked_alloc_struct_array_immovable, i32 (%struct.gs_memory_s*, i8*)* @gs_locked_object_size, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)* @gs_locked_object_type, i8* (%struct.gs_memory_s*, i32, i8*)* @gs_locked_alloc_string, i8* (%struct.gs_memory_s*, i32, i8*)* @gs_locked_alloc_string_immovable, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)* @gs_locked_resize_string, void (%struct.gs_memory_s*, i8*, i32, i8*)* @gs_locked_free_string, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)* @gs_locked_register_root, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)* @gs_locked_unregister_root, void (%struct.gs_memory_s*, i32)* @gs_locked_enable_free }, align 8
@.str = private unnamed_addr constant [25 x i8] c"gs_memory_locked_release\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"gs_locked_stable\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gs_memory_locked_init(%struct.gs_memory_locked_s* %lmem, %struct.gs_memory_s* %target) #0 {
entry:
  %lmem.addr = alloca %struct.gs_memory_locked_s*, align 8
  %target.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_memory_locked_s* %lmem, %struct.gs_memory_locked_s** %lmem.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %target, %struct.gs_memory_s** %target.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem.addr, align 8, !tbaa !1
  %stable_memory = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %0, i32 0, i32 0
  store %struct.gs_memory_s* null, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !5
  %1 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %1, i32 0, i32 1
  %2 = bitcast %struct.gs_memory_procs_s* %procs to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast (%struct.gs_memory_procs_s* @locked_procs to i8*), i64 184, i32 8, i1 false), !tbaa.struct !8
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target.addr, align 8, !tbaa !1
  %4 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem.addr, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %4, i32 0, i32 5
  store %struct.gs_memory_s* %3, %struct.gs_memory_s** %target1, align 8, !tbaa !9
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target.addr, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %5, i32 0, i32 2
  %6 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !10
  %7 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem.addr, align 8, !tbaa !1
  %gs_lib_ctx2 = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %7, i32 0, i32 2
  store %struct.gs_lib_ctx_s* %6, %struct.gs_lib_ctx_s** %gs_lib_ctx2, align 8, !tbaa !12
  %8 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem.addr, align 8, !tbaa !1
  %9 = bitcast %struct.gs_memory_locked_s* %8 to %struct.gs_memory_s*
  %10 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem.addr, align 8, !tbaa !1
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %10, i32 0, i32 3
  store %struct.gs_memory_s* %9, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !13
  %11 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem.addr, align 8, !tbaa !1
  %12 = bitcast %struct.gs_memory_locked_s* %11 to %struct.gs_memory_s*
  %13 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem.addr, align 8, !tbaa !1
  %thread_safe_memory = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %13, i32 0, i32 4
  store %struct.gs_memory_s* %12, %struct.gs_memory_s** %thread_safe_memory, align 8, !tbaa !14
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target.addr, align 8, !tbaa !1
  %call = call %struct.gx_monitor_s* @gx_monitor_alloc(%struct.gs_memory_s* %14) #3
  %15 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem.addr, align 8, !tbaa !1
  %monitor = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %15, i32 0, i32 6
  store %struct.gx_monitor_s* %call, %struct.gx_monitor_s** %monitor, align 8, !tbaa !15
  %16 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem.addr, align 8, !tbaa !1
  %monitor3 = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %16, i32 0, i32 6
  %17 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor3, align 8, !tbaa !15
  %tobool = icmp ne %struct.gx_monitor_s* %17, null
  %cond = select i1 %tobool, i32 0, i32 -25
  ret i32 %cond
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare %struct.gx_monitor_s* @gx_monitor_alloc(%struct.gs_memory_s*) #2

; Function Attrs: nounwind uwtable
define void @gs_memory_locked_release(%struct.gs_memory_locked_s* %lmem) #0 {
entry:
  %lmem.addr = alloca %struct.gs_memory_locked_s*, align 8
  store %struct.gs_memory_locked_s* %lmem, %struct.gs_memory_locked_s** %lmem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gs_memory_locked_s* %0 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 1
  %free_all = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 5
  %2 = load void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*, i32, i8*)** %free_all, align 8, !tbaa !16
  %3 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gs_memory_locked_s* %3 to %struct.gs_memory_s*
  call void %2(%struct.gs_memory_s* %4, i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0)) #3
  %5 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem.addr, align 8, !tbaa !1
  %monitor = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %5, i32 0, i32 6
  %6 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor, align 8, !tbaa !15
  call void @gx_monitor_free(%struct.gx_monitor_s* %6) #3
  ret void
}

declare void @gx_monitor_free(%struct.gx_monitor_s*) #2

; Function Attrs: nounwind uwtable
define %struct.gs_memory_s* @gs_memory_locked_target(%struct.gs_memory_locked_s* %lmem) #0 {
entry:
  %lmem.addr = alloca %struct.gs_memory_locked_s*, align 8
  store %struct.gs_memory_locked_s* %lmem, %struct.gs_memory_locked_s** %lmem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem.addr, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %0, i32 0, i32 5
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !9
  ret %struct.gs_memory_s* %1
}

; Function Attrs: nounwind uwtable
define internal i8* @gs_locked_alloc_bytes_immovable(%struct.gs_memory_s* %mem, i32 %size, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %size.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  %lmem = alloca %struct.gs_memory_locked_s*, align 8
  %temp = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !17
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_locked_s** %lmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_memory_locked_s*
  store %struct.gs_memory_locked_s* %2, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %3 = bitcast i8** %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %monitor = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %4, i32 0, i32 6
  %5 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor, align 8, !tbaa !15
  %native = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %5, i32 0, i32 1
  %call = call i32 @gp_monitor_enter(%union.gp_monitor* %native) #3
  %6 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %6, i32 0, i32 5
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !9
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 1
  %alloc_bytes_immovable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 0
  %8 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes_immovable, align 8, !tbaa !19
  %9 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %9, i32 0, i32 5
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target1, align 8, !tbaa !9
  %11 = load i32, i32* %size.addr, align 4, !tbaa !17
  %12 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call2 = call i8* %8(%struct.gs_memory_s* %10, i32 %11, i8* %12) #3
  store i8* %call2, i8** %temp, align 8, !tbaa !1
  %13 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %monitor3 = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %13, i32 0, i32 6
  %14 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor3, align 8, !tbaa !15
  %native4 = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %14, i32 0, i32 1
  %call5 = call i32 @gp_monitor_leave(%union.gp_monitor* %native4) #3
  %15 = load i8*, i8** %temp, align 8, !tbaa !1
  %16 = bitcast i8** %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = bitcast %struct.gs_memory_locked_s** %lmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  ret i8* %15
}

; Function Attrs: nounwind uwtable
define internal i8* @gs_locked_resize_object(%struct.gs_memory_s* %mem, i8* %obj, i32 %new_num_elements, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %obj.addr = alloca i8*, align 8
  %new_num_elements.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  %lmem = alloca %struct.gs_memory_locked_s*, align 8
  %temp = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %obj, i8** %obj.addr, align 8, !tbaa !1
  store i32 %new_num_elements, i32* %new_num_elements.addr, align 4, !tbaa !17
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_locked_s** %lmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_memory_locked_s*
  store %struct.gs_memory_locked_s* %2, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %3 = bitcast i8** %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %monitor = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %4, i32 0, i32 6
  %5 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor, align 8, !tbaa !15
  %native = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %5, i32 0, i32 1
  %call = call i32 @gp_monitor_enter(%union.gp_monitor* %native) #3
  %6 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %6, i32 0, i32 5
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !9
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 1
  %resize_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 1
  %8 = load i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)** %resize_object, align 8, !tbaa !20
  %9 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %9, i32 0, i32 5
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target1, align 8, !tbaa !9
  %11 = load i8*, i8** %obj.addr, align 8, !tbaa !1
  %12 = load i32, i32* %new_num_elements.addr, align 4, !tbaa !17
  %13 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call2 = call i8* %8(%struct.gs_memory_s* %10, i8* %11, i32 %12, i8* %13) #3
  store i8* %call2, i8** %temp, align 8, !tbaa !1
  %14 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %monitor3 = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %14, i32 0, i32 6
  %15 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor3, align 8, !tbaa !15
  %native4 = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %15, i32 0, i32 1
  %call5 = call i32 @gp_monitor_leave(%union.gp_monitor* %native4) #3
  %16 = load i8*, i8** %temp, align 8, !tbaa !1
  %17 = bitcast i8** %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  %18 = bitcast %struct.gs_memory_locked_s** %lmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  ret i8* %16
}

; Function Attrs: nounwind uwtable
define internal void @gs_locked_free_object(%struct.gs_memory_s* %mem, i8* %ptr, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %ptr.addr = alloca i8*, align 8
  %cname.addr = alloca i8*, align 8
  %lmem = alloca %struct.gs_memory_locked_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_locked_s** %lmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_memory_locked_s*
  store %struct.gs_memory_locked_s* %2, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %3 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %monitor = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %3, i32 0, i32 6
  %4 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor, align 8, !tbaa !15
  %native = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %4, i32 0, i32 1
  %call = call i32 @gp_monitor_enter(%union.gp_monitor* %native) #3
  %5 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %5, i32 0, i32 5
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !9
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %7 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !21
  %8 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %8, i32 0, i32 5
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target1, align 8, !tbaa !9
  %10 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %11 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %7(%struct.gs_memory_s* %9, i8* %10, i8* %11) #3
  %12 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %monitor2 = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %12, i32 0, i32 6
  %13 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor2, align 8, !tbaa !15
  %native3 = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %13, i32 0, i32 1
  %call4 = call i32 @gp_monitor_leave(%union.gp_monitor* %native3) #3
  %14 = bitcast %struct.gs_memory_locked_s** %lmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_memory_s* @gs_locked_stable(%struct.gs_memory_s* %mem) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %lmem = alloca %struct.gs_memory_locked_s*, align 8
  %stable = alloca %struct.gs_memory_s*, align 8
  %locked_stable = alloca %struct.gs_memory_locked_s*, align 8
  %code = alloca i32, align 4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %0, i32 0, i32 0
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !22
  %tobool = icmp ne %struct.gs_memory_s* %1, null
  br i1 %tobool, label %if.end.22, label %if.then

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.gs_memory_locked_s** %lmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gs_memory_s* %3 to %struct.gs_memory_locked_s*
  store %struct.gs_memory_locked_s* %4, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %5 = bitcast %struct.gs_memory_s** %stable to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %monitor = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %6, i32 0, i32 6
  %7 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor, align 8, !tbaa !15
  %native = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %7, i32 0, i32 1
  %call = call i32 @gp_monitor_enter(%union.gp_monitor* %native) #3
  %8 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %8, i32 0, i32 5
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !9
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %9, i32 0, i32 1
  %stable1 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 3
  %10 = load %struct.gs_memory_s* (%struct.gs_memory_s*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)** %stable1, align 8, !tbaa !23
  %11 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %target2 = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %11, i32 0, i32 5
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target2, align 8, !tbaa !9
  %call3 = call %struct.gs_memory_s* %10(%struct.gs_memory_s* %12) #3
  store %struct.gs_memory_s* %call3, %struct.gs_memory_s** %stable, align 8, !tbaa !1
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable, align 8, !tbaa !1
  %14 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %target4 = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %14, i32 0, i32 5
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target4, align 8, !tbaa !9
  %cmp = icmp eq %struct.gs_memory_s* %13, %15
  br i1 %cmp, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %stable_memory6 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %17, i32 0, i32 0
  store %struct.gs_memory_s* %16, %struct.gs_memory_s** %stable_memory6, align 8, !tbaa !22
  br label %if.end.18

if.else:                                          ; preds = %if.then
  %18 = bitcast %struct.gs_memory_locked_s** %locked_stable to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable, align 8, !tbaa !1
  %procs7 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %19, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs7, i32 0, i32 7
  %20 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !24
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable, align 8, !tbaa !1
  %call8 = call i8* %20(%struct.gs_memory_s* %21, i32 232, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0)) #3
  %22 = bitcast i8* %call8 to %struct.gs_memory_locked_s*
  store %struct.gs_memory_locked_s* %22, %struct.gs_memory_locked_s** %locked_stable, align 8, !tbaa !1
  %23 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %locked_stable, align 8, !tbaa !1
  %tobool9 = icmp ne %struct.gs_memory_locked_s* %23, null
  br i1 %tobool9, label %if.then.10, label %if.end.17

if.then.10:                                       ; preds = %if.else
  %24 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %locked_stable, align 8, !tbaa !1
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable, align 8, !tbaa !1
  %call11 = call i32 @gs_memory_locked_init(%struct.gs_memory_locked_s* %25, %struct.gs_memory_s* %26) #3
  store i32 %call11, i32* %code, align 4, !tbaa !17
  %27 = load i32, i32* %code, align 4, !tbaa !17
  %cmp12 = icmp slt i32 %27, 0
  br i1 %cmp12, label %if.then.13, label %if.else.15

if.then.13:                                       ; preds = %if.then.10
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable, align 8, !tbaa !1
  %procs14 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %28, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs14, i32 0, i32 2
  %29 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !21
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable, align 8, !tbaa !1
  %31 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %locked_stable, align 8, !tbaa !1
  %32 = bitcast %struct.gs_memory_locked_s* %31 to i8*
  call void %29(%struct.gs_memory_s* %30, i8* %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0)) #3
  br label %if.end

if.else.15:                                       ; preds = %if.then.10
  %33 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %locked_stable, align 8, !tbaa !1
  %34 = bitcast %struct.gs_memory_locked_s* %33 to %struct.gs_memory_s*
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %stable_memory16 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %35, i32 0, i32 0
  store %struct.gs_memory_s* %34, %struct.gs_memory_s** %stable_memory16, align 8, !tbaa !22
  br label %if.end

if.end:                                           ; preds = %if.else.15, %if.then.13
  %36 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %if.else
  %37 = bitcast %struct.gs_memory_locked_s** %locked_stable to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.5
  %38 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %monitor19 = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %38, i32 0, i32 6
  %39 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor19, align 8, !tbaa !15
  %native20 = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %39, i32 0, i32 1
  %call21 = call i32 @gp_monitor_leave(%union.gp_monitor* %native20) #3
  %40 = bitcast %struct.gs_memory_s** %stable to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = bitcast %struct.gs_memory_locked_s** %lmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.18, %entry
  %42 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %stable_memory23 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %42, i32 0, i32 0
  %43 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory23, align 8, !tbaa !22
  ret %struct.gs_memory_s* %43
}

; Function Attrs: nounwind uwtable
define internal void @gs_locked_status(%struct.gs_memory_s* %mem, %struct.gs_memory_status_s* %pstat) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pstat.addr = alloca %struct.gs_memory_status_s*, align 8
  %lmem = alloca %struct.gs_memory_locked_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_memory_status_s* %pstat, %struct.gs_memory_status_s** %pstat.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_locked_s** %lmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_memory_locked_s*
  store %struct.gs_memory_locked_s* %2, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %3 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %monitor = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %3, i32 0, i32 6
  %4 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor, align 8, !tbaa !15
  %native = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %4, i32 0, i32 1
  %call = call i32 @gp_monitor_enter(%union.gp_monitor* %native) #3
  %5 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %5, i32 0, i32 5
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !9
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 1
  %status = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 4
  %7 = load void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)** %status, align 8, !tbaa !25
  %8 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %8, i32 0, i32 5
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target1, align 8, !tbaa !9
  %10 = load %struct.gs_memory_status_s*, %struct.gs_memory_status_s** %pstat.addr, align 8, !tbaa !1
  call void %7(%struct.gs_memory_s* %9, %struct.gs_memory_status_s* %10) #3
  %11 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %monitor2 = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %11, i32 0, i32 6
  %12 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor2, align 8, !tbaa !15
  %native3 = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %12, i32 0, i32 1
  %call4 = call i32 @gp_monitor_leave(%union.gp_monitor* %native3) #3
  %13 = load %struct.gs_memory_status_s*, %struct.gs_memory_status_s** %pstat.addr, align 8, !tbaa !1
  %is_thread_safe = getelementptr inbounds %struct.gs_memory_status_s, %struct.gs_memory_status_s* %13, i32 0, i32 2
  store i32 1, i32* %is_thread_safe, align 4, !tbaa !26
  %14 = bitcast %struct.gs_memory_locked_s** %lmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gs_locked_free_all(%struct.gs_memory_s* %mem, i32 %free_mask, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %free_mask.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  %lmem = alloca %struct.gs_memory_locked_s*, align 8
  %target = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %free_mask, i32* %free_mask.addr, align 4, !tbaa !17
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_locked_s** %lmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_memory_locked_s*
  store %struct.gs_memory_locked_s* %2, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_s** %target to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %4, i32 0, i32 5
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target1, align 8, !tbaa !9
  store %struct.gs_memory_s* %5, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 0
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !22
  %tobool = icmp ne %struct.gs_memory_s* %7, null
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %stable_memory2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 0
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory2, align 8, !tbaa !22
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.gs_memory_s* %9, %10
  br i1 %cmp, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %stable_memory4 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %11, i32 0, i32 0
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory4, align 8, !tbaa !22
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %12, i32 0, i32 1
  %free_all = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 5
  %13 = load void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*, i32, i8*)** %free_all, align 8, !tbaa !16
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %stable_memory5 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %14, i32 0, i32 0
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory5, align 8, !tbaa !22
  %16 = load i32, i32* %free_mask.addr, align 4, !tbaa !17
  %17 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %13(%struct.gs_memory_s* %15, i32 %16, i8* %17) #3
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %18 = load i32, i32* %free_mask.addr, align 4, !tbaa !17
  %and = and i32 %18, 4
  %tobool6 = icmp ne i32 %and, 0
  br i1 %tobool6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %stable_memory8 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %19, i32 0, i32 0
  store %struct.gs_memory_s* null, %struct.gs_memory_s** %stable_memory8, align 8, !tbaa !22
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %entry
  %20 = load i32, i32* %free_mask.addr, align 4, !tbaa !17
  %and11 = and i32 %20, 2
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.20

if.then.13:                                       ; preds = %if.end.10
  %21 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %monitor = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %21, i32 0, i32 6
  %22 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor, align 8, !tbaa !15
  %tobool14 = icmp ne %struct.gx_monitor_s* %22, null
  br i1 %tobool14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.then.13
  %23 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %monitor16 = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %23, i32 0, i32 6
  %24 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor16, align 8, !tbaa !15
  call void @gx_monitor_free(%struct.gx_monitor_s* %24) #3
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.then.13
  %25 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %monitor18 = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %25, i32 0, i32 6
  store %struct.gx_monitor_s* null, %struct.gx_monitor_s** %monitor18, align 8, !tbaa !15
  %26 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %target19 = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %26, i32 0, i32 5
  store %struct.gs_memory_s* null, %struct.gs_memory_s** %target19, align 8, !tbaa !9
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.17, %if.end.10
  %27 = load i32, i32* %free_mask.addr, align 4, !tbaa !17
  %and21 = and i32 %27, 4
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.end.20
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %procs24 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %28, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs24, i32 0, i32 2
  %29 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !21
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %31 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %32 = bitcast %struct.gs_memory_locked_s* %31 to i8*
  %33 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %29(%struct.gs_memory_s* %30, i8* %32, i8* %33) #3
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %if.end.20
  %34 = bitcast %struct.gs_memory_s** %target to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = bitcast %struct.gs_memory_locked_s** %lmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gs_locked_consolidate_free(%struct.gs_memory_s* %mem) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %lmem = alloca %struct.gs_memory_locked_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_locked_s** %lmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_memory_locked_s*
  store %struct.gs_memory_locked_s* %2, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %3 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %monitor = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %3, i32 0, i32 6
  %4 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor, align 8, !tbaa !15
  %native = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %4, i32 0, i32 1
  %call = call i32 @gp_monitor_enter(%union.gp_monitor* %native) #3
  %5 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %5, i32 0, i32 5
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !9
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 1
  %consolidate_free = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 6
  %7 = load void (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*)** %consolidate_free, align 8, !tbaa !29
  %8 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %8, i32 0, i32 5
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target1, align 8, !tbaa !9
  call void %7(%struct.gs_memory_s* %9) #3
  %10 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %monitor2 = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %10, i32 0, i32 6
  %11 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor2, align 8, !tbaa !15
  %native3 = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %11, i32 0, i32 1
  %call4 = call i32 @gp_monitor_leave(%union.gp_monitor* %native3) #3
  %12 = bitcast %struct.gs_memory_locked_s** %lmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @gs_locked_alloc_bytes(%struct.gs_memory_s* %mem, i32 %size, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %size.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  %lmem = alloca %struct.gs_memory_locked_s*, align 8
  %temp = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !17
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_locked_s** %lmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_memory_locked_s*
  store %struct.gs_memory_locked_s* %2, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %3 = bitcast i8** %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %monitor = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %4, i32 0, i32 6
  %5 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor, align 8, !tbaa !15
  %native = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %5, i32 0, i32 1
  %call = call i32 @gp_monitor_enter(%union.gp_monitor* %native) #3
  %6 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %6, i32 0, i32 5
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !9
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %8 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !24
  %9 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %9, i32 0, i32 5
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target1, align 8, !tbaa !9
  %11 = load i32, i32* %size.addr, align 4, !tbaa !17
  %12 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call2 = call i8* %8(%struct.gs_memory_s* %10, i32 %11, i8* %12) #3
  store i8* %call2, i8** %temp, align 8, !tbaa !1
  %13 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %monitor3 = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %13, i32 0, i32 6
  %14 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor3, align 8, !tbaa !15
  %native4 = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %14, i32 0, i32 1
  %call5 = call i32 @gp_monitor_leave(%union.gp_monitor* %native4) #3
  %15 = load i8*, i8** %temp, align 8, !tbaa !1
  %16 = bitcast i8** %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = bitcast %struct.gs_memory_locked_s** %lmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  ret i8* %15
}

; Function Attrs: nounwind uwtable
define internal i8* @gs_locked_alloc_struct(%struct.gs_memory_s* %mem, %struct.gs_memory_struct_type_s* %pstype, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %cname.addr = alloca i8*, align 8
  %lmem = alloca %struct.gs_memory_locked_s*, align 8
  %temp = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_locked_s** %lmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_memory_locked_s*
  store %struct.gs_memory_locked_s* %2, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %3 = bitcast i8** %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %monitor = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %4, i32 0, i32 6
  %5 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor, align 8, !tbaa !15
  %native = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %5, i32 0, i32 1
  %call = call i32 @gp_monitor_enter(%union.gp_monitor* %native) #3
  %6 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %6, i32 0, i32 5
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !9
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %8 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !30
  %9 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %9, i32 0, i32 5
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target1, align 8, !tbaa !9
  %11 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %12 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call2 = call i8* %8(%struct.gs_memory_s* %10, %struct.gs_memory_struct_type_s* %11, i8* %12) #3
  store i8* %call2, i8** %temp, align 8, !tbaa !1
  %13 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %monitor3 = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %13, i32 0, i32 6
  %14 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor3, align 8, !tbaa !15
  %native4 = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %14, i32 0, i32 1
  %call5 = call i32 @gp_monitor_leave(%union.gp_monitor* %native4) #3
  %15 = load i8*, i8** %temp, align 8, !tbaa !1
  %16 = bitcast i8** %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = bitcast %struct.gs_memory_locked_s** %lmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  ret i8* %15
}

; Function Attrs: nounwind uwtable
define internal i8* @gs_locked_alloc_struct_immovable(%struct.gs_memory_s* %mem, %struct.gs_memory_struct_type_s* %pstype, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %cname.addr = alloca i8*, align 8
  %lmem = alloca %struct.gs_memory_locked_s*, align 8
  %temp = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_locked_s** %lmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_memory_locked_s*
  store %struct.gs_memory_locked_s* %2, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %3 = bitcast i8** %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %monitor = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %4, i32 0, i32 6
  %5 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor, align 8, !tbaa !15
  %native = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %5, i32 0, i32 1
  %call = call i32 @gp_monitor_enter(%union.gp_monitor* %native) #3
  %6 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %6, i32 0, i32 5
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !9
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 1
  %alloc_struct_immovable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 9
  %8 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct_immovable, align 8, !tbaa !31
  %9 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %9, i32 0, i32 5
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target1, align 8, !tbaa !9
  %11 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %12 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call2 = call i8* %8(%struct.gs_memory_s* %10, %struct.gs_memory_struct_type_s* %11, i8* %12) #3
  store i8* %call2, i8** %temp, align 8, !tbaa !1
  %13 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %monitor3 = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %13, i32 0, i32 6
  %14 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor3, align 8, !tbaa !15
  %native4 = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %14, i32 0, i32 1
  %call5 = call i32 @gp_monitor_leave(%union.gp_monitor* %native4) #3
  %15 = load i8*, i8** %temp, align 8, !tbaa !1
  %16 = bitcast i8** %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = bitcast %struct.gs_memory_locked_s** %lmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  ret i8* %15
}

; Function Attrs: nounwind uwtable
define internal i8* @gs_locked_alloc_byte_array(%struct.gs_memory_s* %mem, i32 %num_elements, i32 %elt_size, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %num_elements.addr = alloca i32, align 4
  %elt_size.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  %lmem = alloca %struct.gs_memory_locked_s*, align 8
  %temp = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %num_elements, i32* %num_elements.addr, align 4, !tbaa !17
  store i32 %elt_size, i32* %elt_size.addr, align 4, !tbaa !17
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_locked_s** %lmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_memory_locked_s*
  store %struct.gs_memory_locked_s* %2, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %3 = bitcast i8** %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %monitor = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %4, i32 0, i32 6
  %5 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor, align 8, !tbaa !15
  %native = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %5, i32 0, i32 1
  %call = call i32 @gp_monitor_enter(%union.gp_monitor* %native) #3
  %6 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %6, i32 0, i32 5
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !9
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %8 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !32
  %9 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %9, i32 0, i32 5
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target1, align 8, !tbaa !9
  %11 = load i32, i32* %num_elements.addr, align 4, !tbaa !17
  %12 = load i32, i32* %elt_size.addr, align 4, !tbaa !17
  %13 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call2 = call i8* %8(%struct.gs_memory_s* %10, i32 %11, i32 %12, i8* %13) #3
  store i8* %call2, i8** %temp, align 8, !tbaa !1
  %14 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %monitor3 = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %14, i32 0, i32 6
  %15 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor3, align 8, !tbaa !15
  %native4 = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %15, i32 0, i32 1
  %call5 = call i32 @gp_monitor_leave(%union.gp_monitor* %native4) #3
  %16 = load i8*, i8** %temp, align 8, !tbaa !1
  %17 = bitcast i8** %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  %18 = bitcast %struct.gs_memory_locked_s** %lmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  ret i8* %16
}

; Function Attrs: nounwind uwtable
define internal i8* @gs_locked_alloc_byte_array_immovable(%struct.gs_memory_s* %mem, i32 %num_elements, i32 %elt_size, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %num_elements.addr = alloca i32, align 4
  %elt_size.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  %lmem = alloca %struct.gs_memory_locked_s*, align 8
  %temp = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %num_elements, i32* %num_elements.addr, align 4, !tbaa !17
  store i32 %elt_size, i32* %elt_size.addr, align 4, !tbaa !17
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_locked_s** %lmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_memory_locked_s*
  store %struct.gs_memory_locked_s* %2, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %3 = bitcast i8** %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %monitor = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %4, i32 0, i32 6
  %5 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor, align 8, !tbaa !15
  %native = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %5, i32 0, i32 1
  %call = call i32 @gp_monitor_enter(%union.gp_monitor* %native) #3
  %6 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %6, i32 0, i32 5
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !9
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 1
  %alloc_byte_array_immovable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 11
  %8 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array_immovable, align 8, !tbaa !33
  %9 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %9, i32 0, i32 5
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target1, align 8, !tbaa !9
  %11 = load i32, i32* %num_elements.addr, align 4, !tbaa !17
  %12 = load i32, i32* %elt_size.addr, align 4, !tbaa !17
  %13 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call2 = call i8* %8(%struct.gs_memory_s* %10, i32 %11, i32 %12, i8* %13) #3
  store i8* %call2, i8** %temp, align 8, !tbaa !1
  %14 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %monitor3 = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %14, i32 0, i32 6
  %15 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor3, align 8, !tbaa !15
  %native4 = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %15, i32 0, i32 1
  %call5 = call i32 @gp_monitor_leave(%union.gp_monitor* %native4) #3
  %16 = load i8*, i8** %temp, align 8, !tbaa !1
  %17 = bitcast i8** %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  %18 = bitcast %struct.gs_memory_locked_s** %lmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  ret i8* %16
}

; Function Attrs: nounwind uwtable
define internal i8* @gs_locked_alloc_struct_array(%struct.gs_memory_s* %mem, i32 %num_elements, %struct.gs_memory_struct_type_s* %pstype, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %num_elements.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %cname.addr = alloca i8*, align 8
  %lmem = alloca %struct.gs_memory_locked_s*, align 8
  %temp = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %num_elements, i32* %num_elements.addr, align 4, !tbaa !17
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_locked_s** %lmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_memory_locked_s*
  store %struct.gs_memory_locked_s* %2, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %3 = bitcast i8** %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %monitor = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %4, i32 0, i32 6
  %5 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor, align 8, !tbaa !15
  %native = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %5, i32 0, i32 1
  %call = call i32 @gp_monitor_enter(%union.gp_monitor* %native) #3
  %6 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %6, i32 0, i32 5
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !9
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 1
  %alloc_struct_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 12
  %8 = load i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct_array, align 8, !tbaa !34
  %9 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %9, i32 0, i32 5
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target1, align 8, !tbaa !9
  %11 = load i32, i32* %num_elements.addr, align 4, !tbaa !17
  %12 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %13 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call2 = call i8* %8(%struct.gs_memory_s* %10, i32 %11, %struct.gs_memory_struct_type_s* %12, i8* %13) #3
  store i8* %call2, i8** %temp, align 8, !tbaa !1
  %14 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %monitor3 = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %14, i32 0, i32 6
  %15 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor3, align 8, !tbaa !15
  %native4 = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %15, i32 0, i32 1
  %call5 = call i32 @gp_monitor_leave(%union.gp_monitor* %native4) #3
  %16 = load i8*, i8** %temp, align 8, !tbaa !1
  %17 = bitcast i8** %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  %18 = bitcast %struct.gs_memory_locked_s** %lmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  ret i8* %16
}

; Function Attrs: nounwind uwtable
define internal i8* @gs_locked_alloc_struct_array_immovable(%struct.gs_memory_s* %mem, i32 %num_elements, %struct.gs_memory_struct_type_s* %pstype, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %num_elements.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %cname.addr = alloca i8*, align 8
  %lmem = alloca %struct.gs_memory_locked_s*, align 8
  %temp = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %num_elements, i32* %num_elements.addr, align 4, !tbaa !17
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_locked_s** %lmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_memory_locked_s*
  store %struct.gs_memory_locked_s* %2, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %3 = bitcast i8** %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %monitor = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %4, i32 0, i32 6
  %5 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor, align 8, !tbaa !15
  %native = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %5, i32 0, i32 1
  %call = call i32 @gp_monitor_enter(%union.gp_monitor* %native) #3
  %6 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %6, i32 0, i32 5
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !9
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 1
  %alloc_struct_array_immovable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 13
  %8 = load i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct_array_immovable, align 8, !tbaa !35
  %9 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %9, i32 0, i32 5
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target1, align 8, !tbaa !9
  %11 = load i32, i32* %num_elements.addr, align 4, !tbaa !17
  %12 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %13 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call2 = call i8* %8(%struct.gs_memory_s* %10, i32 %11, %struct.gs_memory_struct_type_s* %12, i8* %13) #3
  store i8* %call2, i8** %temp, align 8, !tbaa !1
  %14 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %monitor3 = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %14, i32 0, i32 6
  %15 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor3, align 8, !tbaa !15
  %native4 = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %15, i32 0, i32 1
  %call5 = call i32 @gp_monitor_leave(%union.gp_monitor* %native4) #3
  %16 = load i8*, i8** %temp, align 8, !tbaa !1
  %17 = bitcast i8** %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  %18 = bitcast %struct.gs_memory_locked_s** %lmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  ret i8* %16
}

; Function Attrs: nounwind uwtable
define internal i32 @gs_locked_object_size(%struct.gs_memory_s* %mem, i8* %ptr) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %ptr.addr = alloca i8*, align 8
  %lmem = alloca %struct.gs_memory_locked_s*, align 8
  %temp = alloca i32, align 4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_locked_s** %lmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_memory_locked_s*
  store %struct.gs_memory_locked_s* %2, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %3 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %monitor = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %4, i32 0, i32 6
  %5 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor, align 8, !tbaa !15
  %native = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %5, i32 0, i32 1
  %call = call i32 @gp_monitor_enter(%union.gp_monitor* %native) #3
  %6 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %6, i32 0, i32 5
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !9
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 1
  %object_size = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 14
  %8 = load i32 (%struct.gs_memory_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)** %object_size, align 8, !tbaa !36
  %9 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %9, i32 0, i32 5
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target1, align 8, !tbaa !9
  %11 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %call2 = call i32 %8(%struct.gs_memory_s* %10, i8* %11) #3
  store i32 %call2, i32* %temp, align 4, !tbaa !17
  %12 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %monitor3 = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %12, i32 0, i32 6
  %13 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor3, align 8, !tbaa !15
  %native4 = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %13, i32 0, i32 1
  %call5 = call i32 @gp_monitor_leave(%union.gp_monitor* %native4) #3
  %14 = load i32, i32* %temp, align 4, !tbaa !17
  %15 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = bitcast %struct.gs_memory_locked_s** %lmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_memory_struct_type_s* @gs_locked_object_type(%struct.gs_memory_s* %mem, i8* %ptr) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %ptr.addr = alloca i8*, align 8
  %lmem = alloca %struct.gs_memory_locked_s*, align 8
  %temp = alloca %struct.gs_memory_struct_type_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_locked_s** %lmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_memory_locked_s*
  store %struct.gs_memory_locked_s* %2, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_struct_type_s** %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %monitor = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %4, i32 0, i32 6
  %5 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor, align 8, !tbaa !15
  %native = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %5, i32 0, i32 1
  %call = call i32 @gp_monitor_enter(%union.gp_monitor* %native) #3
  %6 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %6, i32 0, i32 5
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !9
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 1
  %object_type = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 15
  %8 = load %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)** %object_type, align 8, !tbaa !37
  %9 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %9, i32 0, i32 5
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target1, align 8, !tbaa !9
  %11 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %call2 = call %struct.gs_memory_struct_type_s* %8(%struct.gs_memory_s* %10, i8* %11) #3
  store %struct.gs_memory_struct_type_s* %call2, %struct.gs_memory_struct_type_s** %temp, align 8, !tbaa !1
  %12 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %monitor3 = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %12, i32 0, i32 6
  %13 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor3, align 8, !tbaa !15
  %native4 = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %13, i32 0, i32 1
  %call5 = call i32 @gp_monitor_leave(%union.gp_monitor* %native4) #3
  %14 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %temp, align 8, !tbaa !1
  %15 = bitcast %struct.gs_memory_struct_type_s** %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = bitcast %struct.gs_memory_locked_s** %lmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  ret %struct.gs_memory_struct_type_s* %14
}

; Function Attrs: nounwind uwtable
define internal i8* @gs_locked_alloc_string(%struct.gs_memory_s* %mem, i32 %nbytes, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %nbytes.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  %lmem = alloca %struct.gs_memory_locked_s*, align 8
  %temp = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %nbytes, i32* %nbytes.addr, align 4, !tbaa !17
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_locked_s** %lmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_memory_locked_s*
  store %struct.gs_memory_locked_s* %2, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %3 = bitcast i8** %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %monitor = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %4, i32 0, i32 6
  %5 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor, align 8, !tbaa !15
  %native = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %5, i32 0, i32 1
  %call = call i32 @gp_monitor_enter(%union.gp_monitor* %native) #3
  %6 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %6, i32 0, i32 5
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !9
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 1
  %alloc_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 16
  %8 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string, align 8, !tbaa !38
  %9 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %9, i32 0, i32 5
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target1, align 8, !tbaa !9
  %11 = load i32, i32* %nbytes.addr, align 4, !tbaa !17
  %12 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call2 = call i8* %8(%struct.gs_memory_s* %10, i32 %11, i8* %12) #3
  store i8* %call2, i8** %temp, align 8, !tbaa !1
  %13 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %monitor3 = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %13, i32 0, i32 6
  %14 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor3, align 8, !tbaa !15
  %native4 = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %14, i32 0, i32 1
  %call5 = call i32 @gp_monitor_leave(%union.gp_monitor* %native4) #3
  %15 = load i8*, i8** %temp, align 8, !tbaa !1
  %16 = bitcast i8** %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = bitcast %struct.gs_memory_locked_s** %lmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  ret i8* %15
}

; Function Attrs: nounwind uwtable
define internal i8* @gs_locked_alloc_string_immovable(%struct.gs_memory_s* %mem, i32 %nbytes, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %nbytes.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  %lmem = alloca %struct.gs_memory_locked_s*, align 8
  %temp = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %nbytes, i32* %nbytes.addr, align 4, !tbaa !17
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_locked_s** %lmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_memory_locked_s*
  store %struct.gs_memory_locked_s* %2, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %3 = bitcast i8** %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %monitor = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %4, i32 0, i32 6
  %5 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor, align 8, !tbaa !15
  %native = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %5, i32 0, i32 1
  %call = call i32 @gp_monitor_enter(%union.gp_monitor* %native) #3
  %6 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %6, i32 0, i32 5
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !9
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 1
  %alloc_string_immovable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 17
  %8 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string_immovable, align 8, !tbaa !39
  %9 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %9, i32 0, i32 5
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target1, align 8, !tbaa !9
  %11 = load i32, i32* %nbytes.addr, align 4, !tbaa !17
  %12 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call2 = call i8* %8(%struct.gs_memory_s* %10, i32 %11, i8* %12) #3
  store i8* %call2, i8** %temp, align 8, !tbaa !1
  %13 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %monitor3 = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %13, i32 0, i32 6
  %14 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor3, align 8, !tbaa !15
  %native4 = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %14, i32 0, i32 1
  %call5 = call i32 @gp_monitor_leave(%union.gp_monitor* %native4) #3
  %15 = load i8*, i8** %temp, align 8, !tbaa !1
  %16 = bitcast i8** %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = bitcast %struct.gs_memory_locked_s** %lmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  ret i8* %15
}

; Function Attrs: nounwind uwtable
define internal i8* @gs_locked_resize_string(%struct.gs_memory_s* %mem, i8* %data, i32 %old_num, i32 %new_num, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %data.addr = alloca i8*, align 8
  %old_num.addr = alloca i32, align 4
  %new_num.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  %lmem = alloca %struct.gs_memory_locked_s*, align 8
  %temp = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %old_num, i32* %old_num.addr, align 4, !tbaa !17
  store i32 %new_num, i32* %new_num.addr, align 4, !tbaa !17
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_locked_s** %lmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_memory_locked_s*
  store %struct.gs_memory_locked_s* %2, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %3 = bitcast i8** %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %monitor = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %4, i32 0, i32 6
  %5 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor, align 8, !tbaa !15
  %native = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %5, i32 0, i32 1
  %call = call i32 @gp_monitor_enter(%union.gp_monitor* %native) #3
  %6 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %6, i32 0, i32 5
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !9
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 1
  %resize_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 18
  %8 = load i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)** %resize_string, align 8, !tbaa !40
  %9 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %9, i32 0, i32 5
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target1, align 8, !tbaa !9
  %11 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %12 = load i32, i32* %old_num.addr, align 4, !tbaa !17
  %13 = load i32, i32* %new_num.addr, align 4, !tbaa !17
  %14 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call2 = call i8* %8(%struct.gs_memory_s* %10, i8* %11, i32 %12, i32 %13, i8* %14) #3
  store i8* %call2, i8** %temp, align 8, !tbaa !1
  %15 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %monitor3 = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %15, i32 0, i32 6
  %16 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor3, align 8, !tbaa !15
  %native4 = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %16, i32 0, i32 1
  %call5 = call i32 @gp_monitor_leave(%union.gp_monitor* %native4) #3
  %17 = load i8*, i8** %temp, align 8, !tbaa !1
  %18 = bitcast i8** %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = bitcast %struct.gs_memory_locked_s** %lmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  ret i8* %17
}

; Function Attrs: nounwind uwtable
define internal void @gs_locked_free_string(%struct.gs_memory_s* %mem, i8* %data, i32 %nbytes, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %data.addr = alloca i8*, align 8
  %nbytes.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  %lmem = alloca %struct.gs_memory_locked_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %nbytes, i32* %nbytes.addr, align 4, !tbaa !17
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_locked_s** %lmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_memory_locked_s*
  store %struct.gs_memory_locked_s* %2, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %3 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %monitor = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %3, i32 0, i32 6
  %4 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor, align 8, !tbaa !15
  %native = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %4, i32 0, i32 1
  %call = call i32 @gp_monitor_enter(%union.gp_monitor* %native) #3
  %5 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %5, i32 0, i32 5
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !9
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 1
  %free_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 19
  %7 = load void (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)** %free_string, align 8, !tbaa !41
  %8 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %8, i32 0, i32 5
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target1, align 8, !tbaa !9
  %10 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %11 = load i32, i32* %nbytes.addr, align 4, !tbaa !17
  %12 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %7(%struct.gs_memory_s* %9, i8* %10, i32 %11, i8* %12) #3
  %13 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %monitor2 = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %13, i32 0, i32 6
  %14 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor2, align 8, !tbaa !15
  %native3 = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %14, i32 0, i32 1
  %call4 = call i32 @gp_monitor_leave(%union.gp_monitor* %native3) #3
  %15 = bitcast %struct.gs_memory_locked_s** %lmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gs_locked_register_root(%struct.gs_memory_s* %mem, %struct.gs_gc_root_s* %rp, %struct.gs_ptr_procs_s* %ptype, i8** %up, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %rp.addr = alloca %struct.gs_gc_root_s*, align 8
  %ptype.addr = alloca %struct.gs_ptr_procs_s*, align 8
  %up.addr = alloca i8**, align 8
  %cname.addr = alloca i8*, align 8
  %lmem = alloca %struct.gs_memory_locked_s*, align 8
  %temp = alloca i32, align 4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_gc_root_s* %rp, %struct.gs_gc_root_s** %rp.addr, align 8, !tbaa !1
  store %struct.gs_ptr_procs_s* %ptype, %struct.gs_ptr_procs_s** %ptype.addr, align 8, !tbaa !1
  store i8** %up, i8*** %up.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_locked_s** %lmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_memory_locked_s*
  store %struct.gs_memory_locked_s* %2, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %3 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %monitor = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %4, i32 0, i32 6
  %5 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor, align 8, !tbaa !15
  %native = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %5, i32 0, i32 1
  %call = call i32 @gp_monitor_enter(%union.gp_monitor* %native) #3
  %6 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %6, i32 0, i32 5
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !9
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 1
  %register_root = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 20
  %8 = load i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)** %register_root, align 8, !tbaa !42
  %9 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %9, i32 0, i32 5
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target1, align 8, !tbaa !9
  %11 = load %struct.gs_gc_root_s*, %struct.gs_gc_root_s** %rp.addr, align 8, !tbaa !1
  %12 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %ptype.addr, align 8, !tbaa !1
  %13 = load i8**, i8*** %up.addr, align 8, !tbaa !1
  %14 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call2 = call i32 %8(%struct.gs_memory_s* %10, %struct.gs_gc_root_s* %11, %struct.gs_ptr_procs_s* %12, i8** %13, i8* %14) #3
  store i32 %call2, i32* %temp, align 4, !tbaa !17
  %15 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %monitor3 = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %15, i32 0, i32 6
  %16 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor3, align 8, !tbaa !15
  %native4 = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %16, i32 0, i32 1
  %call5 = call i32 @gp_monitor_leave(%union.gp_monitor* %native4) #3
  %17 = load i32, i32* %temp, align 4, !tbaa !17
  %18 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %19 = bitcast %struct.gs_memory_locked_s** %lmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal void @gs_locked_unregister_root(%struct.gs_memory_s* %mem, %struct.gs_gc_root_s* %rp, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %rp.addr = alloca %struct.gs_gc_root_s*, align 8
  %cname.addr = alloca i8*, align 8
  %lmem = alloca %struct.gs_memory_locked_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_gc_root_s* %rp, %struct.gs_gc_root_s** %rp.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_locked_s** %lmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_memory_locked_s*
  store %struct.gs_memory_locked_s* %2, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %3 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %monitor = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %3, i32 0, i32 6
  %4 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor, align 8, !tbaa !15
  %native = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %4, i32 0, i32 1
  %call = call i32 @gp_monitor_enter(%union.gp_monitor* %native) #3
  %5 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %5, i32 0, i32 5
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !9
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 1
  %unregister_root = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 21
  %7 = load void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)** %unregister_root, align 8, !tbaa !43
  %8 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %8, i32 0, i32 5
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target1, align 8, !tbaa !9
  %10 = load %struct.gs_gc_root_s*, %struct.gs_gc_root_s** %rp.addr, align 8, !tbaa !1
  %11 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %7(%struct.gs_memory_s* %9, %struct.gs_gc_root_s* %10, i8* %11) #3
  %12 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %monitor2 = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %12, i32 0, i32 6
  %13 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor2, align 8, !tbaa !15
  %native3 = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %13, i32 0, i32 1
  %call4 = call i32 @gp_monitor_leave(%union.gp_monitor* %native3) #3
  %14 = bitcast %struct.gs_memory_locked_s** %lmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gs_locked_enable_free(%struct.gs_memory_s* %mem, i32 %enable) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %enable.addr = alloca i32, align 4
  %lmem = alloca %struct.gs_memory_locked_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %enable, i32* %enable.addr, align 4, !tbaa !17
  %0 = bitcast %struct.gs_memory_locked_s** %lmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_memory_locked_s*
  store %struct.gs_memory_locked_s* %2, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %3 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %monitor = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %3, i32 0, i32 6
  %4 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor, align 8, !tbaa !15
  %native = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %4, i32 0, i32 1
  %call = call i32 @gp_monitor_enter(%union.gp_monitor* %native) #3
  %5 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %5, i32 0, i32 5
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !9
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 1
  %enable_free = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 22
  %7 = load void (%struct.gs_memory_s*, i32)*, void (%struct.gs_memory_s*, i32)** %enable_free, align 8, !tbaa !44
  %8 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %8, i32 0, i32 5
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target1, align 8, !tbaa !9
  %10 = load i32, i32* %enable.addr, align 4, !tbaa !17
  call void %7(%struct.gs_memory_s* %9, i32 %10) #3
  %11 = load %struct.gs_memory_locked_s*, %struct.gs_memory_locked_s** %lmem, align 8, !tbaa !1
  %monitor2 = getelementptr inbounds %struct.gs_memory_locked_s, %struct.gs_memory_locked_s* %11, i32 0, i32 6
  %12 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor2, align 8, !tbaa !15
  %native3 = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %12, i32 0, i32 1
  %call4 = call i32 @gp_monitor_leave(%union.gp_monitor* %native3) #3
  %13 = bitcast %struct.gs_memory_locked_s** %lmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @gp_monitor_enter(%union.gp_monitor*) #2

declare i32 @gp_monitor_leave(%union.gp_monitor*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 0}
!6 = !{!"gs_memory_locked_s", !2, i64 0, !7, i64 8, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224}
!7 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!8 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 8, !1, i64 32, i64 8, !1, i64 40, i64 8, !1, i64 48, i64 8, !1, i64 56, i64 8, !1, i64 64, i64 8, !1, i64 72, i64 8, !1, i64 80, i64 8, !1, i64 88, i64 8, !1, i64 96, i64 8, !1, i64 104, i64 8, !1, i64 112, i64 8, !1, i64 120, i64 8, !1, i64 128, i64 8, !1, i64 136, i64 8, !1, i64 144, i64 8, !1, i64 152, i64 8, !1, i64 160, i64 8, !1, i64 168, i64 8, !1, i64 176, i64 8, !1}
!9 = !{!6, !2, i64 216}
!10 = !{!11, !2, i64 192}
!11 = !{!"gs_memory_s", !2, i64 0, !7, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!12 = !{!6, !2, i64 192}
!13 = !{!6, !2, i64 200}
!14 = !{!6, !2, i64 208}
!15 = !{!6, !2, i64 224}
!16 = !{!11, !2, i64 48}
!17 = !{!18, !18, i64 0}
!18 = !{!"int", !3, i64 0}
!19 = !{!11, !2, i64 8}
!20 = !{!11, !2, i64 16}
!21 = !{!11, !2, i64 24}
!22 = !{!11, !2, i64 0}
!23 = !{!11, !2, i64 32}
!24 = !{!11, !2, i64 64}
!25 = !{!11, !2, i64 40}
!26 = !{!27, !18, i64 16}
!27 = !{!"gs_memory_status_s", !28, i64 0, !28, i64 8, !18, i64 16}
!28 = !{!"long", !3, i64 0}
!29 = !{!11, !2, i64 56}
!30 = !{!11, !2, i64 72}
!31 = !{!11, !2, i64 80}
!32 = !{!11, !2, i64 88}
!33 = !{!11, !2, i64 96}
!34 = !{!11, !2, i64 104}
!35 = !{!11, !2, i64 112}
!36 = !{!11, !2, i64 120}
!37 = !{!11, !2, i64 128}
!38 = !{!11, !2, i64 136}
!39 = !{!11, !2, i64 144}
!40 = !{!11, !2, i64 152}
!41 = !{!11, !2, i64 160}
!42 = !{!11, !2, i64 168}
!43 = !{!11, !2, i64 176}
!44 = !{!11, !2, i64 184}
