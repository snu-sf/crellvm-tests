; ModuleID = './gsmalloc.bc'
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
%struct.gs_malloc_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s*, %struct.gs_malloc_block_s*, i64, i64, i64, %struct.gx_monitor_s* }
%struct.gs_malloc_block_s = type { %struct.gs_malloc_block_s*, %struct.gs_malloc_block_s*, i32, %struct.gs_memory_struct_type_s*, i8*, [8 x i8] }
%struct.gx_monitor_s = type { %struct.gs_memory_s*, %union.gp_monitor }
%union.gp_monitor = type { i8* }

@gs_malloc_memory_procs = internal constant %struct.gs_memory_procs_s { i8* (%struct.gs_memory_s*, i32, i8*)* @gs_heap_alloc_bytes, i8* (%struct.gs_memory_s*, i8*, i32, i8*)* @gs_heap_resize_object, void (%struct.gs_memory_s*, i8*, i8*)* @gs_heap_free_object, %struct.gs_memory_s* (%struct.gs_memory_s*)* @gs_heap_stable, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)* @gs_heap_status, void (%struct.gs_memory_s*, i32, i8*)* @gs_heap_free_all, void (%struct.gs_memory_s*)* @gs_ignore_consolidate_free, i8* (%struct.gs_memory_s*, i32, i8*)* @gs_heap_alloc_bytes, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)* @gs_heap_alloc_struct, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)* @gs_heap_alloc_struct, i8* (%struct.gs_memory_s*, i32, i32, i8*)* @gs_heap_alloc_byte_array, i8* (%struct.gs_memory_s*, i32, i32, i8*)* @gs_heap_alloc_byte_array, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)* @gs_heap_alloc_struct_array, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)* @gs_heap_alloc_struct_array, i32 (%struct.gs_memory_s*, i8*)* @gs_heap_object_size, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)* @gs_heap_object_type, i8* (%struct.gs_memory_s*, i32, i8*)* @gs_heap_alloc_string, i8* (%struct.gs_memory_s*, i32, i8*)* @gs_heap_alloc_string, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)* @gs_heap_resize_string, void (%struct.gs_memory_s*, i8*, i32, i8*)* @gs_heap_free_string, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)* @gs_heap_register_root, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)* @gs_heap_unregister_root, void (%struct.gs_memory_s*, i32)* @gs_heap_enable_free }, align 8
@gs_debug = external global [128 x i8], align 16
@.str = private unnamed_addr constant [18 x i8] c"gs_malloc_release\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"gs_malloc_memory_release\00", align 1
@st_bytes = external constant %struct.gs_memory_struct_type_s, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"./base/gsmalloc.c\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"%s: resizing non-string 0x%lx!\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.gs_malloc_memory_s* @gs_malloc_memory_init() #0 {
entry:
  %retval = alloca %struct.gs_malloc_memory_s*, align 8
  %mem = alloca %struct.gs_malloc_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  %0 = bitcast %struct.gs_malloc_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %call = call noalias i8* @malloc(i64 256) #4
  %1 = bitcast i8* %call to %struct.gs_malloc_memory_s*
  store %struct.gs_malloc_memory_s* %1, %struct.gs_malloc_memory_s** %mem, align 8, !tbaa !1
  %2 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %mem, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_malloc_memory_s* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.gs_malloc_memory_s* null, %struct.gs_malloc_memory_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %mem, align 8, !tbaa !1
  %stable_memory = getelementptr inbounds %struct.gs_malloc_memory_s, %struct.gs_malloc_memory_s* %3, i32 0, i32 0
  store %struct.gs_memory_s* null, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !5
  %4 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_malloc_memory_s, %struct.gs_malloc_memory_s* %4, i32 0, i32 1
  %5 = bitcast %struct.gs_memory_procs_s* %procs to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* bitcast (%struct.gs_memory_procs_s* @gs_malloc_memory_procs to i8*), i64 184, i32 8, i1 false), !tbaa.struct !9
  %6 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %mem, align 8, !tbaa !1
  %allocated = getelementptr inbounds %struct.gs_malloc_memory_s, %struct.gs_malloc_memory_s* %6, i32 0, i32 5
  store %struct.gs_malloc_block_s* null, %struct.gs_malloc_block_s** %allocated, align 8, !tbaa !10
  %7 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %mem, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.gs_malloc_memory_s, %struct.gs_malloc_memory_s* %7, i32 0, i32 6
  store i64 9223372036854775807, i64* %limit, align 8, !tbaa !11
  %8 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %mem, align 8, !tbaa !1
  %used = getelementptr inbounds %struct.gs_malloc_memory_s, %struct.gs_malloc_memory_s* %8, i32 0, i32 7
  store i64 0, i64* %used, align 8, !tbaa !12
  %9 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %mem, align 8, !tbaa !1
  %max_used = getelementptr inbounds %struct.gs_malloc_memory_s, %struct.gs_malloc_memory_s* %9, i32 0, i32 8
  store i64 0, i64* %max_used, align 8, !tbaa !13
  %10 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %mem, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_malloc_memory_s, %struct.gs_malloc_memory_s* %10, i32 0, i32 2
  store %struct.gs_lib_ctx_s* null, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !14
  %11 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %mem, align 8, !tbaa !1
  %12 = bitcast %struct.gs_malloc_memory_s* %11 to %struct.gs_memory_s*
  %13 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %mem, align 8, !tbaa !1
  %non_gc_memory = getelementptr inbounds %struct.gs_malloc_memory_s, %struct.gs_malloc_memory_s* %13, i32 0, i32 3
  store %struct.gs_memory_s* %12, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !15
  %14 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %mem, align 8, !tbaa !1
  %15 = bitcast %struct.gs_malloc_memory_s* %14 to %struct.gs_memory_s*
  %16 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %mem, align 8, !tbaa !1
  %thread_safe_memory = getelementptr inbounds %struct.gs_malloc_memory_s, %struct.gs_malloc_memory_s* %16, i32 0, i32 4
  store %struct.gs_memory_s* %15, %struct.gs_memory_s** %thread_safe_memory, align 8, !tbaa !16
  %17 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %mem, align 8, !tbaa !1
  %monitor = getelementptr inbounds %struct.gs_malloc_memory_s, %struct.gs_malloc_memory_s* %17, i32 0, i32 9
  store %struct.gx_monitor_s* null, %struct.gx_monitor_s** %monitor, align 8, !tbaa !17
  %18 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %mem, align 8, !tbaa !1
  %19 = bitcast %struct.gs_malloc_memory_s* %18 to %struct.gs_memory_s*
  %call1 = call %struct.gx_monitor_s* @gx_monitor_alloc(%struct.gs_memory_s* %19) #5
  %20 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %mem, align 8, !tbaa !1
  %monitor2 = getelementptr inbounds %struct.gs_malloc_memory_s, %struct.gs_malloc_memory_s* %20, i32 0, i32 9
  store %struct.gx_monitor_s* %call1, %struct.gx_monitor_s** %monitor2, align 8, !tbaa !17
  %21 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %mem, align 8, !tbaa !1
  store %struct.gs_malloc_memory_s* %21, %struct.gs_malloc_memory_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %22 = bitcast %struct.gs_malloc_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %retval
  ret %struct.gs_malloc_memory_s* %23
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare %struct.gx_monitor_s* @gx_monitor_alloc(%struct.gs_memory_s*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @gs_malloc_wrap(%struct.gs_memory_s** %wrapped, %struct.gs_malloc_memory_s* %contents) #0 {
entry:
  %wrapped.addr = alloca %struct.gs_memory_s**, align 8
  %contents.addr = alloca %struct.gs_malloc_memory_s*, align 8
  store %struct.gs_memory_s** %wrapped, %struct.gs_memory_s*** %wrapped.addr, align 8, !tbaa !1
  store %struct.gs_malloc_memory_s* %contents, %struct.gs_malloc_memory_s** %contents.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define %struct.gs_malloc_memory_s* @gs_malloc_wrapped_contents(%struct.gs_memory_s* %wrapped) #0 {
entry:
  %wrapped.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_memory_s* %wrapped, %struct.gs_memory_s** %wrapped.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %wrapped.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gs_memory_s* %0 to %struct.gs_malloc_memory_s*
  ret %struct.gs_malloc_memory_s* %1
}

; Function Attrs: nounwind uwtable
define %struct.gs_malloc_memory_s* @gs_malloc_unwrap(%struct.gs_memory_s* %wrapped) #0 {
entry:
  %wrapped.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_memory_s* %wrapped, %struct.gs_memory_s** %wrapped.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %wrapped.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gs_memory_s* %0 to %struct.gs_malloc_memory_s*
  ret %struct.gs_malloc_memory_s* %1
}

; Function Attrs: nounwind uwtable
define %struct.gs_memory_s* @gs_malloc_init() #0 {
entry:
  %retval = alloca %struct.gs_memory_s*, align 8
  %malloc_memory_default = alloca %struct.gs_malloc_memory_s*, align 8
  %memory_t_default = alloca %struct.gs_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  %0 = bitcast %struct.gs_malloc_memory_s** %malloc_memory_default to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %call = call %struct.gs_malloc_memory_s* @gs_malloc_memory_init() #5
  store %struct.gs_malloc_memory_s* %call, %struct.gs_malloc_memory_s** %malloc_memory_default, align 8, !tbaa !1
  %1 = bitcast %struct.gs_memory_s** %memory_t_default to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %malloc_memory_default, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_malloc_memory_s* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.gs_memory_s* null, %struct.gs_memory_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %malloc_memory_default, align 8, !tbaa !1
  %4 = bitcast %struct.gs_malloc_memory_s* %3 to %struct.gs_memory_s*
  %call1 = call i32 @gs_lib_ctx_init(%struct.gs_memory_s* %4) #5
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct.gs_memory_s* null, %struct.gs_memory_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %5 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %malloc_memory_default, align 8, !tbaa !1
  %6 = bitcast %struct.gs_malloc_memory_s* %5 to %struct.gs_memory_s*
  store %struct.gs_memory_s* %6, %struct.gs_memory_s** %memory_t_default, align 8, !tbaa !1
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory_t_default, align 8, !tbaa !1
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory_t_default, align 8, !tbaa !1
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 0
  store %struct.gs_memory_s* %7, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !18
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory_t_default, align 8, !tbaa !1
  store %struct.gs_memory_s* %9, %struct.gs_memory_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.4, %if.then.3, %if.then
  %10 = bitcast %struct.gs_memory_s** %memory_t_default to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  %11 = bitcast %struct.gs_malloc_memory_s** %malloc_memory_default to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %retval
  ret %struct.gs_memory_s* %12
}

declare i32 @gs_lib_ctx_init(%struct.gs_memory_s*) #3

; Function Attrs: nounwind uwtable
define void @gs_malloc_release(%struct.gs_memory_s* %mem) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %malloc_memory_default = alloca %struct.gs_malloc_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  %temp = alloca i8*, align 8
  %save_debug_a = alloca i8, align 1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_malloc_memory_s** %malloc_memory_default to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_memory_s* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i8, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @gs_debug, i32 0, i64 58), align 1, !tbaa !20
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %if.end
  %3 = bitcast i8** %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  call void @llvm.lifetime.start(i64 1, i8* %save_debug_a) #1
  %4 = load i8, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @gs_debug, i32 0, i64 97), align 1, !tbaa !20
  store i8 %4, i8* %save_debug_a, align 1, !tbaa !20
  store i8 1, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @gs_debug, i32 0, i64 97), align 1, !tbaa !20
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %5, i32 0, i32 1
  %alloc_bytes_immovable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 0
  %6 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes_immovable, align 8, !tbaa !21
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i8* %6(%struct.gs_memory_s* %7, i32 8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0)) #5
  store i8* %call, i8** %temp, align 8, !tbaa !1
  %8 = load i8, i8* %save_debug_a, align 1, !tbaa !20
  store i8 %8, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @gs_debug, i32 0, i64 97), align 1, !tbaa !20
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %9, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs2, i32 0, i32 2
  %10 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !22
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %12 = load i8*, i8** %temp, align 8, !tbaa !1
  call void %10(%struct.gs_memory_s* %11, i8* %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0)) #5
  call void @llvm.lifetime.end(i64 1, i8* %save_debug_a) #1
  %13 = bitcast i8** %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.1, %if.end
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %15 = bitcast %struct.gs_memory_s* %14 to %struct.gs_malloc_memory_s*
  store %struct.gs_malloc_memory_s* %15, %struct.gs_malloc_memory_s** %malloc_memory_default, align 8, !tbaa !1
  %16 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %malloc_memory_default, align 8, !tbaa !1
  %17 = bitcast %struct.gs_malloc_memory_s* %16 to %struct.gs_memory_s*
  call void @gs_lib_ctx_fin(%struct.gs_memory_s* %17) #5
  %18 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %malloc_memory_default, align 8, !tbaa !1
  %19 = bitcast %struct.gs_malloc_memory_s* %18 to %struct.gs_memory_s*
  %procs4 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %19, i32 0, i32 1
  %free_all = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs4, i32 0, i32 5
  %20 = load void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*, i32, i8*)** %free_all, align 8, !tbaa !23
  %21 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %malloc_memory_default, align 8, !tbaa !1
  %22 = bitcast %struct.gs_malloc_memory_s* %21 to %struct.gs_memory_s*
  call void %20(%struct.gs_memory_s* %22, i32 7, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0)) #5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.3, %if.then
  %23 = bitcast %struct.gs_malloc_memory_s** %malloc_memory_default to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare void @gs_lib_ctx_fin(%struct.gs_memory_s*) #3

; Function Attrs: nounwind uwtable
define internal i8* @gs_heap_alloc_bytes(%struct.gs_memory_s* %mem, i32 %size, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %size.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  %mmem = alloca %struct.gs_malloc_memory_s*, align 8
  %ptr = alloca i8*, align 8
  %added = alloca i32, align 4
  %bp = alloca %struct.gs_malloc_block_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !24
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_malloc_memory_s** %mmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_malloc_memory_s*
  store %struct.gs_malloc_memory_s* %2, %struct.gs_malloc_memory_s** %mmem, align 8, !tbaa !1
  %3 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store i8* null, i8** %ptr, align 8, !tbaa !1
  %4 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %mmem, align 8, !tbaa !1
  %monitor = getelementptr inbounds %struct.gs_malloc_memory_s, %struct.gs_malloc_memory_s* %4, i32 0, i32 9
  %5 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor, align 8, !tbaa !17
  %tobool = icmp ne %struct.gx_monitor_s* %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %mmem, align 8, !tbaa !1
  %monitor1 = getelementptr inbounds %struct.gs_malloc_memory_s, %struct.gs_malloc_memory_s* %6, i32 0, i32 9
  %7 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor1, align 8, !tbaa !17
  %native = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %7, i32 0, i32 1
  %call = call i32 @gp_monitor_enter(%union.gp_monitor* %native) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, i32* %size.addr, align 4, !tbaa !24
  %conv = zext i32 %8 to i64
  %9 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %mmem, align 8, !tbaa !1
  %limit = getelementptr inbounds %struct.gs_malloc_memory_s, %struct.gs_malloc_memory_s* %9, i32 0, i32 6
  %10 = load i64, i64* %limit, align 8, !tbaa !11
  %sub = sub i64 %10, 48
  %cmp = icmp ugt i64 %conv, %sub
  br i1 %cmp, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.3
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.50

if.else:                                          ; preds = %if.end
  %11 = bitcast i32* %added to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load i32, i32* %size.addr, align 4, !tbaa !24
  %conv4 = zext i32 %12 to i64
  %add = add i64 %conv4, 48
  %conv5 = trunc i64 %add to i32
  store i32 %conv5, i32* %added, align 4, !tbaa !24
  %13 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %mmem, align 8, !tbaa !1
  %limit6 = getelementptr inbounds %struct.gs_malloc_memory_s, %struct.gs_malloc_memory_s* %13, i32 0, i32 6
  %14 = load i64, i64* %limit6, align 8, !tbaa !11
  %15 = load i32, i32* %added, align 4, !tbaa !24
  %conv7 = zext i32 %15 to i64
  %sub8 = sub nsw i64 %14, %conv7
  %16 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %mmem, align 8, !tbaa !1
  %used = getelementptr inbounds %struct.gs_malloc_memory_s, %struct.gs_malloc_memory_s* %16, i32 0, i32 7
  %17 = load i64, i64* %used, align 8, !tbaa !12
  %cmp9 = icmp slt i64 %sub8, %17
  br i1 %cmp9, label %if.then.11, label %if.else.15

if.then.11:                                       ; preds = %if.else
  br label %do.body.12

do.body.12:                                       ; preds = %if.then.11
  br label %do.cond.13

do.cond.13:                                       ; preds = %do.body.12
  br label %do.end.14

do.end.14:                                        ; preds = %do.cond.13
  br label %if.end.49

if.else.15:                                       ; preds = %if.else
  %18 = load i32, i32* %added, align 4, !tbaa !24
  %conv16 = zext i32 %18 to i64
  %call17 = call noalias i8* @malloc(i64 %conv16) #4
  store i8* %call17, i8** %ptr, align 8, !tbaa !1
  %cmp18 = icmp eq i8* %call17, null
  br i1 %cmp18, label %if.then.20, label %if.else.24

if.then.20:                                       ; preds = %if.else.15
  br label %do.body.21

do.body.21:                                       ; preds = %if.then.20
  br label %do.cond.22

do.cond.22:                                       ; preds = %do.body.21
  br label %do.end.23

do.end.23:                                        ; preds = %do.cond.22
  br label %if.end.48

if.else.24:                                       ; preds = %if.else.15
  %19 = bitcast %struct.gs_malloc_block_s** %bp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = load i8*, i8** %ptr, align 8, !tbaa !1
  %21 = bitcast i8* %20 to %struct.gs_malloc_block_s*
  store %struct.gs_malloc_block_s* %21, %struct.gs_malloc_block_s** %bp, align 8, !tbaa !1
  br label %do.body.25

do.body.25:                                       ; preds = %if.else.24
  br label %do.cond.26

do.cond.26:                                       ; preds = %do.body.25
  br label %do.end.27

do.end.27:                                        ; preds = %do.cond.26
  %22 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %mmem, align 8, !tbaa !1
  %allocated = getelementptr inbounds %struct.gs_malloc_memory_s, %struct.gs_malloc_memory_s* %22, i32 0, i32 5
  %23 = load %struct.gs_malloc_block_s*, %struct.gs_malloc_block_s** %allocated, align 8, !tbaa !10
  %tobool28 = icmp ne %struct.gs_malloc_block_s* %23, null
  br i1 %tobool28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %do.end.27
  %24 = load %struct.gs_malloc_block_s*, %struct.gs_malloc_block_s** %bp, align 8, !tbaa !1
  %25 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %mmem, align 8, !tbaa !1
  %allocated30 = getelementptr inbounds %struct.gs_malloc_memory_s, %struct.gs_malloc_memory_s* %25, i32 0, i32 5
  %26 = load %struct.gs_malloc_block_s*, %struct.gs_malloc_block_s** %allocated30, align 8, !tbaa !10
  %prev = getelementptr inbounds %struct.gs_malloc_block_s, %struct.gs_malloc_block_s* %26, i32 0, i32 1
  store %struct.gs_malloc_block_s* %24, %struct.gs_malloc_block_s** %prev, align 8, !tbaa !26
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %do.end.27
  %27 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %mmem, align 8, !tbaa !1
  %allocated32 = getelementptr inbounds %struct.gs_malloc_memory_s, %struct.gs_malloc_memory_s* %27, i32 0, i32 5
  %28 = load %struct.gs_malloc_block_s*, %struct.gs_malloc_block_s** %allocated32, align 8, !tbaa !10
  %29 = load %struct.gs_malloc_block_s*, %struct.gs_malloc_block_s** %bp, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gs_malloc_block_s, %struct.gs_malloc_block_s* %29, i32 0, i32 0
  store %struct.gs_malloc_block_s* %28, %struct.gs_malloc_block_s** %next, align 8, !tbaa !28
  %30 = load %struct.gs_malloc_block_s*, %struct.gs_malloc_block_s** %bp, align 8, !tbaa !1
  %prev33 = getelementptr inbounds %struct.gs_malloc_block_s, %struct.gs_malloc_block_s* %30, i32 0, i32 1
  store %struct.gs_malloc_block_s* null, %struct.gs_malloc_block_s** %prev33, align 8, !tbaa !26
  %31 = load i32, i32* %size.addr, align 4, !tbaa !24
  %32 = load %struct.gs_malloc_block_s*, %struct.gs_malloc_block_s** %bp, align 8, !tbaa !1
  %size34 = getelementptr inbounds %struct.gs_malloc_block_s, %struct.gs_malloc_block_s* %32, i32 0, i32 2
  store i32 %31, i32* %size34, align 4, !tbaa !29
  %33 = load %struct.gs_malloc_block_s*, %struct.gs_malloc_block_s** %bp, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_malloc_block_s, %struct.gs_malloc_block_s* %33, i32 0, i32 3
  store %struct.gs_memory_struct_type_s* @st_bytes, %struct.gs_memory_struct_type_s** %type, align 8, !tbaa !30
  %34 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %35 = load %struct.gs_malloc_block_s*, %struct.gs_malloc_block_s** %bp, align 8, !tbaa !1
  %cname35 = getelementptr inbounds %struct.gs_malloc_block_s, %struct.gs_malloc_block_s* %35, i32 0, i32 4
  store i8* %34, i8** %cname35, align 8, !tbaa !31
  %36 = load %struct.gs_malloc_block_s*, %struct.gs_malloc_block_s** %bp, align 8, !tbaa !1
  %37 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %mmem, align 8, !tbaa !1
  %allocated36 = getelementptr inbounds %struct.gs_malloc_memory_s, %struct.gs_malloc_memory_s* %37, i32 0, i32 5
  store %struct.gs_malloc_block_s* %36, %struct.gs_malloc_block_s** %allocated36, align 8, !tbaa !10
  %38 = load %struct.gs_malloc_block_s*, %struct.gs_malloc_block_s** %bp, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.gs_malloc_block_s, %struct.gs_malloc_block_s* %38, i64 1
  %39 = bitcast %struct.gs_malloc_block_s* %add.ptr to i8*
  store i8* %39, i8** %ptr, align 8, !tbaa !1
  %40 = load i32, i32* %size.addr, align 4, !tbaa !24
  %conv37 = zext i32 %40 to i64
  %add38 = add i64 %conv37, 48
  %41 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %mmem, align 8, !tbaa !1
  %used39 = getelementptr inbounds %struct.gs_malloc_memory_s, %struct.gs_malloc_memory_s* %41, i32 0, i32 7
  %42 = load i64, i64* %used39, align 8, !tbaa !12
  %add40 = add i64 %42, %add38
  store i64 %add40, i64* %used39, align 8, !tbaa !12
  %43 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %mmem, align 8, !tbaa !1
  %used41 = getelementptr inbounds %struct.gs_malloc_memory_s, %struct.gs_malloc_memory_s* %43, i32 0, i32 7
  %44 = load i64, i64* %used41, align 8, !tbaa !12
  %45 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %mmem, align 8, !tbaa !1
  %max_used = getelementptr inbounds %struct.gs_malloc_memory_s, %struct.gs_malloc_memory_s* %45, i32 0, i32 8
  %46 = load i64, i64* %max_used, align 8, !tbaa !13
  %cmp42 = icmp sgt i64 %44, %46
  br i1 %cmp42, label %if.then.44, label %if.end.47

if.then.44:                                       ; preds = %if.end.31
  %47 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %mmem, align 8, !tbaa !1
  %used45 = getelementptr inbounds %struct.gs_malloc_memory_s, %struct.gs_malloc_memory_s* %47, i32 0, i32 7
  %48 = load i64, i64* %used45, align 8, !tbaa !12
  %49 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %mmem, align 8, !tbaa !1
  %max_used46 = getelementptr inbounds %struct.gs_malloc_memory_s, %struct.gs_malloc_memory_s* %49, i32 0, i32 8
  store i64 %48, i64* %max_used46, align 8, !tbaa !13
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.44, %if.end.31
  %50 = bitcast %struct.gs_malloc_block_s** %bp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %do.end.23
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %do.end.14
  %51 = bitcast i32* %added to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %do.end
  %52 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %mmem, align 8, !tbaa !1
  %monitor51 = getelementptr inbounds %struct.gs_malloc_memory_s, %struct.gs_malloc_memory_s* %52, i32 0, i32 9
  %53 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor51, align 8, !tbaa !17
  %tobool52 = icmp ne %struct.gx_monitor_s* %53, null
  br i1 %tobool52, label %if.then.53, label %if.end.57

if.then.53:                                       ; preds = %if.end.50
  %54 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %mmem, align 8, !tbaa !1
  %monitor54 = getelementptr inbounds %struct.gs_malloc_memory_s, %struct.gs_malloc_memory_s* %54, i32 0, i32 9
  %55 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor54, align 8, !tbaa !17
  %native55 = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %55, i32 0, i32 1
  %call56 = call i32 @gp_monitor_leave(%union.gp_monitor* %native55) #5
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.53, %if.end.50
  %56 = load i8*, i8** %ptr, align 8, !tbaa !1
  %tobool58 = icmp ne i8* %56, null
  br i1 %tobool58, label %if.then.59, label %if.end.66

if.then.59:                                       ; preds = %if.end.57
  br label %do.body.60

do.body.60:                                       ; preds = %if.then.59
  br label %do.body.61

do.body.61:                                       ; preds = %do.body.60
  br label %do.cond.62

do.cond.62:                                       ; preds = %do.body.61
  br label %do.end.63

do.end.63:                                        ; preds = %do.cond.62
  br label %do.cond.64

do.cond.64:                                       ; preds = %do.end.63
  br label %do.end.65

do.end.65:                                        ; preds = %do.cond.64
  br label %if.end.66

if.end.66:                                        ; preds = %do.end.65, %if.end.57
  %57 = load i8*, i8** %ptr, align 8, !tbaa !1
  %58 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  %59 = bitcast %struct.gs_malloc_memory_s** %mmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  ret i8* %57
}

; Function Attrs: nounwind uwtable
define internal i8* @gs_heap_resize_object(%struct.gs_memory_s* %mem, i8* %obj, i32 %new_num_elements, i8* %cname) #0 {
entry:
  %retval = alloca i8*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %obj.addr = alloca i8*, align 8
  %new_num_elements.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  %mmem = alloca %struct.gs_malloc_memory_s*, align 8
  %ptr = alloca %struct.gs_malloc_block_s*, align 8
  %pstype = alloca %struct.gs_memory_struct_type_s*, align 8
  %old_size = alloca i32, align 4
  %new_size = alloca i32, align 4
  %new_ptr = alloca %struct.gs_malloc_block_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %obj, i8** %obj.addr, align 8, !tbaa !1
  store i32 %new_num_elements, i32* %new_num_elements.addr, align 4, !tbaa !24
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_malloc_memory_s** %mmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_malloc_memory_s*
  store %struct.gs_malloc_memory_s* %2, %struct.gs_malloc_memory_s** %mmem, align 8, !tbaa !1
  %3 = bitcast %struct.gs_malloc_block_s** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i8*, i8** %obj.addr, align 8, !tbaa !1
  %5 = bitcast i8* %4 to %struct.gs_malloc_block_s*
  %add.ptr = getelementptr inbounds %struct.gs_malloc_block_s, %struct.gs_malloc_block_s* %5, i64 -1
  store %struct.gs_malloc_block_s* %add.ptr, %struct.gs_malloc_block_s** %ptr, align 8, !tbaa !1
  %6 = bitcast %struct.gs_memory_struct_type_s** %pstype to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gs_malloc_block_s*, %struct.gs_malloc_block_s** %ptr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_malloc_block_s, %struct.gs_malloc_block_s* %7, i32 0, i32 3
  %8 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %type, align 8, !tbaa !30
  store %struct.gs_memory_struct_type_s* %8, %struct.gs_memory_struct_type_s** %pstype, align 8, !tbaa !1
  %9 = bitcast i32* %old_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %10, i32 0, i32 1
  %object_size = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 14
  %11 = load i32 (%struct.gs_memory_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)** %object_size, align 8, !tbaa !32
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %13 = load i8*, i8** %obj.addr, align 8, !tbaa !1
  %call = call i32 %11(%struct.gs_memory_s* %12, i8* %13) #5
  %conv = zext i32 %call to i64
  %add = add i64 %conv, 48
  %conv1 = trunc i64 %add to i32
  store i32 %conv1, i32* %old_size, align 4, !tbaa !24
  %14 = bitcast i32* %new_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype, align 8, !tbaa !1
  %call2 = call i32 @gs_struct_type_size(%struct.gs_memory_struct_type_s* %15) #5
  %16 = load i32, i32* %new_num_elements.addr, align 4, !tbaa !24
  %mul = mul i32 %call2, %16
  %conv3 = zext i32 %mul to i64
  %add4 = add i64 %conv3, 48
  %conv5 = trunc i64 %add4 to i32
  store i32 %conv5, i32* %new_size, align 4, !tbaa !24
  %17 = bitcast %struct.gs_malloc_block_s** %new_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = load i32, i32* %new_size, align 4, !tbaa !24
  %19 = load i32, i32* %old_size, align 4, !tbaa !24
  %cmp = icmp eq i32 %18, %19
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %20 = load i8*, i8** %obj.addr, align 8, !tbaa !1
  store i8* %20, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %21 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %mmem, align 8, !tbaa !1
  %monitor = getelementptr inbounds %struct.gs_malloc_memory_s, %struct.gs_malloc_memory_s* %21, i32 0, i32 9
  %22 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor, align 8, !tbaa !17
  %tobool = icmp ne %struct.gx_monitor_s* %22, null
  br i1 %tobool, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.end
  %23 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %mmem, align 8, !tbaa !1
  %monitor8 = getelementptr inbounds %struct.gs_malloc_memory_s, %struct.gs_malloc_memory_s* %23, i32 0, i32 9
  %24 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor8, align 8, !tbaa !17
  %native = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %24, i32 0, i32 1
  %call9 = call i32 @gp_monitor_enter(%union.gp_monitor* %native) #5
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %if.end
  %25 = load %struct.gs_malloc_block_s*, %struct.gs_malloc_block_s** %ptr, align 8, !tbaa !1
  %26 = bitcast %struct.gs_malloc_block_s* %25 to i8*
  %27 = load i32, i32* %old_size, align 4, !tbaa !24
  %conv11 = zext i32 %27 to i64
  %28 = load i32, i32* %new_size, align 4, !tbaa !24
  %conv12 = zext i32 %28 to i64
  %call13 = call i8* @gs_realloc(i8* %26, i64 %conv11, i64 %conv12) #5
  %29 = bitcast i8* %call13 to %struct.gs_malloc_block_s*
  store %struct.gs_malloc_block_s* %29, %struct.gs_malloc_block_s** %new_ptr, align 8, !tbaa !1
  %30 = load %struct.gs_malloc_block_s*, %struct.gs_malloc_block_s** %new_ptr, align 8, !tbaa !1
  %cmp14 = icmp eq %struct.gs_malloc_block_s* %30, null
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.10
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.end.10
  %31 = load %struct.gs_malloc_block_s*, %struct.gs_malloc_block_s** %new_ptr, align 8, !tbaa !1
  %prev = getelementptr inbounds %struct.gs_malloc_block_s, %struct.gs_malloc_block_s* %31, i32 0, i32 1
  %32 = load %struct.gs_malloc_block_s*, %struct.gs_malloc_block_s** %prev, align 8, !tbaa !26
  %tobool18 = icmp ne %struct.gs_malloc_block_s* %32, null
  br i1 %tobool18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.end.17
  %33 = load %struct.gs_malloc_block_s*, %struct.gs_malloc_block_s** %new_ptr, align 8, !tbaa !1
  %34 = load %struct.gs_malloc_block_s*, %struct.gs_malloc_block_s** %new_ptr, align 8, !tbaa !1
  %prev20 = getelementptr inbounds %struct.gs_malloc_block_s, %struct.gs_malloc_block_s* %34, i32 0, i32 1
  %35 = load %struct.gs_malloc_block_s*, %struct.gs_malloc_block_s** %prev20, align 8, !tbaa !26
  %next = getelementptr inbounds %struct.gs_malloc_block_s, %struct.gs_malloc_block_s* %35, i32 0, i32 0
  store %struct.gs_malloc_block_s* %33, %struct.gs_malloc_block_s** %next, align 8, !tbaa !28
  br label %if.end.21

if.else:                                          ; preds = %if.end.17
  %36 = load %struct.gs_malloc_block_s*, %struct.gs_malloc_block_s** %new_ptr, align 8, !tbaa !1
  %37 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %mmem, align 8, !tbaa !1
  %allocated = getelementptr inbounds %struct.gs_malloc_memory_s, %struct.gs_malloc_memory_s* %37, i32 0, i32 5
  store %struct.gs_malloc_block_s* %36, %struct.gs_malloc_block_s** %allocated, align 8, !tbaa !10
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.then.19
  %38 = load %struct.gs_malloc_block_s*, %struct.gs_malloc_block_s** %new_ptr, align 8, !tbaa !1
  %next22 = getelementptr inbounds %struct.gs_malloc_block_s, %struct.gs_malloc_block_s* %38, i32 0, i32 0
  %39 = load %struct.gs_malloc_block_s*, %struct.gs_malloc_block_s** %next22, align 8, !tbaa !28
  %tobool23 = icmp ne %struct.gs_malloc_block_s* %39, null
  br i1 %tobool23, label %if.then.24, label %if.end.27

if.then.24:                                       ; preds = %if.end.21
  %40 = load %struct.gs_malloc_block_s*, %struct.gs_malloc_block_s** %new_ptr, align 8, !tbaa !1
  %41 = load %struct.gs_malloc_block_s*, %struct.gs_malloc_block_s** %new_ptr, align 8, !tbaa !1
  %next25 = getelementptr inbounds %struct.gs_malloc_block_s, %struct.gs_malloc_block_s* %41, i32 0, i32 0
  %42 = load %struct.gs_malloc_block_s*, %struct.gs_malloc_block_s** %next25, align 8, !tbaa !28
  %prev26 = getelementptr inbounds %struct.gs_malloc_block_s, %struct.gs_malloc_block_s* %42, i32 0, i32 1
  store %struct.gs_malloc_block_s* %40, %struct.gs_malloc_block_s** %prev26, align 8, !tbaa !26
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.24, %if.end.21
  %43 = load i32, i32* %new_size, align 4, !tbaa !24
  %conv28 = zext i32 %43 to i64
  %sub = sub i64 %conv28, 48
  %conv29 = trunc i64 %sub to i32
  %44 = load %struct.gs_malloc_block_s*, %struct.gs_malloc_block_s** %new_ptr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_malloc_block_s, %struct.gs_malloc_block_s* %44, i32 0, i32 2
  store i32 %conv29, i32* %size, align 4, !tbaa !29
  %45 = load i32, i32* %old_size, align 4, !tbaa !24
  %conv30 = zext i32 %45 to i64
  %46 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %mmem, align 8, !tbaa !1
  %used = getelementptr inbounds %struct.gs_malloc_memory_s, %struct.gs_malloc_memory_s* %46, i32 0, i32 7
  %47 = load i64, i64* %used, align 8, !tbaa !12
  %sub31 = sub nsw i64 %47, %conv30
  store i64 %sub31, i64* %used, align 8, !tbaa !12
  %48 = load i32, i32* %new_size, align 4, !tbaa !24
  %conv32 = zext i32 %48 to i64
  %49 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %mmem, align 8, !tbaa !1
  %used33 = getelementptr inbounds %struct.gs_malloc_memory_s, %struct.gs_malloc_memory_s* %49, i32 0, i32 7
  %50 = load i64, i64* %used33, align 8, !tbaa !12
  %add34 = add nsw i64 %50, %conv32
  store i64 %add34, i64* %used33, align 8, !tbaa !12
  %51 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %mmem, align 8, !tbaa !1
  %monitor35 = getelementptr inbounds %struct.gs_malloc_memory_s, %struct.gs_malloc_memory_s* %51, i32 0, i32 9
  %52 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor35, align 8, !tbaa !17
  %tobool36 = icmp ne %struct.gx_monitor_s* %52, null
  br i1 %tobool36, label %if.then.37, label %if.end.41

if.then.37:                                       ; preds = %if.end.27
  %53 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %mmem, align 8, !tbaa !1
  %monitor38 = getelementptr inbounds %struct.gs_malloc_memory_s, %struct.gs_malloc_memory_s* %53, i32 0, i32 9
  %54 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor38, align 8, !tbaa !17
  %native39 = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %54, i32 0, i32 1
  %call40 = call i32 @gp_monitor_leave(%union.gp_monitor* %native39) #5
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.37, %if.end.27
  %55 = load i32, i32* %new_size, align 4, !tbaa !24
  %56 = load i32, i32* %old_size, align 4, !tbaa !24
  %cmp42 = icmp ugt i32 %55, %56
  br i1 %cmp42, label %if.then.44, label %if.end.48

if.then.44:                                       ; preds = %if.end.41
  br label %do.body

do.body:                                          ; preds = %if.then.44
  br label %do.body.45

do.body.45:                                       ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %do.body.45
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.46

do.cond.46:                                       ; preds = %do.end
  br label %do.end.47

do.end.47:                                        ; preds = %do.cond.46
  br label %if.end.48

if.end.48:                                        ; preds = %do.end.47, %if.end.41
  %57 = load %struct.gs_malloc_block_s*, %struct.gs_malloc_block_s** %new_ptr, align 8, !tbaa !1
  %add.ptr49 = getelementptr inbounds %struct.gs_malloc_block_s, %struct.gs_malloc_block_s* %57, i64 1
  %58 = bitcast %struct.gs_malloc_block_s* %add.ptr49 to i8*
  store i8* %58, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.48, %if.then.16, %if.then
  %59 = bitcast %struct.gs_malloc_block_s** %new_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = bitcast i32* %new_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = bitcast i32* %old_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = bitcast %struct.gs_memory_struct_type_s** %pstype to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  %63 = bitcast %struct.gs_malloc_block_s** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %64 = bitcast %struct.gs_malloc_memory_s** %mmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = load i8*, i8** %retval
  ret i8* %65
}

; Function Attrs: nounwind uwtable
define internal void @gs_heap_free_object(%struct.gs_memory_s* %mem, i8* %ptr, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %ptr.addr = alloca i8*, align 8
  %cname.addr = alloca i8*, align 8
  %mmem = alloca %struct.gs_malloc_memory_s*, align 8
  %bp = alloca %struct.gs_malloc_block_s*, align 8
  %pstype = alloca %struct.gs_memory_struct_type_s*, align 8
  %finalize = alloca void (%struct.gs_memory_s*, i8*)*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_malloc_memory_s** %mmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_malloc_memory_s*
  store %struct.gs_malloc_memory_s* %2, %struct.gs_malloc_memory_s** %mmem, align 8, !tbaa !1
  %3 = bitcast %struct.gs_malloc_block_s** %bp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.gs_memory_struct_type_s** %pstype to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast void (%struct.gs_memory_s*, i8*)** %finalize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %6 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.end
  %7 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %8 = bitcast i8* %7 to %struct.gs_malloc_block_s*
  %arrayidx = getelementptr inbounds %struct.gs_malloc_block_s, %struct.gs_malloc_block_s* %8, i64 -1
  %type = getelementptr inbounds %struct.gs_malloc_block_s, %struct.gs_malloc_block_s* %arrayidx, i32 0, i32 3
  %9 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %type, align 8, !tbaa !30
  store %struct.gs_memory_struct_type_s* %9, %struct.gs_memory_struct_type_s** %pstype, align 8, !tbaa !1
  %10 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype, align 8, !tbaa !1
  %finalize1 = getelementptr inbounds %struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* %10, i32 0, i32 6
  %11 = load void (%struct.gs_memory_s*, i8*)*, void (%struct.gs_memory_s*, i8*)** %finalize1, align 8, !tbaa !33
  store void (%struct.gs_memory_s*, i8*)* %11, void (%struct.gs_memory_s*, i8*)** %finalize, align 8, !tbaa !1
  %12 = load void (%struct.gs_memory_s*, i8*)*, void (%struct.gs_memory_s*, i8*)** %finalize, align 8, !tbaa !1
  %cmp2 = icmp ne void (%struct.gs_memory_s*, i8*)* %12, null
  br i1 %cmp2, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %if.end
  br label %do.body.4

do.body.4:                                        ; preds = %if.then.3
  br label %do.cond.5

do.cond.5:                                        ; preds = %do.body.4
  br label %do.end.6

do.end.6:                                         ; preds = %do.cond.5
  %13 = load void (%struct.gs_memory_s*, i8*)*, void (%struct.gs_memory_s*, i8*)** %finalize, align 8, !tbaa !1
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %15 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  call void %13(%struct.gs_memory_s* %14, i8* %15) #5
  br label %if.end.7

if.end.7:                                         ; preds = %do.end.6, %if.end
  %16 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %mmem, align 8, !tbaa !1
  %monitor = getelementptr inbounds %struct.gs_malloc_memory_s, %struct.gs_malloc_memory_s* %16, i32 0, i32 9
  %17 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor, align 8, !tbaa !17
  %tobool = icmp ne %struct.gx_monitor_s* %17, null
  br i1 %tobool, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.7
  %18 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %mmem, align 8, !tbaa !1
  %monitor9 = getelementptr inbounds %struct.gs_malloc_memory_s, %struct.gs_malloc_memory_s* %18, i32 0, i32 9
  %19 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor9, align 8, !tbaa !17
  %native = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %19, i32 0, i32 1
  %call = call i32 @gp_monitor_enter(%union.gp_monitor* %native) #5
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end.7
  %20 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %21 = bitcast i8* %20 to %struct.gs_malloc_block_s*
  %arrayidx11 = getelementptr inbounds %struct.gs_malloc_block_s, %struct.gs_malloc_block_s* %21, i64 -1
  store %struct.gs_malloc_block_s* %arrayidx11, %struct.gs_malloc_block_s** %bp, align 8, !tbaa !1
  %22 = load %struct.gs_malloc_block_s*, %struct.gs_malloc_block_s** %bp, align 8, !tbaa !1
  %prev = getelementptr inbounds %struct.gs_malloc_block_s, %struct.gs_malloc_block_s* %22, i32 0, i32 1
  %23 = load %struct.gs_malloc_block_s*, %struct.gs_malloc_block_s** %prev, align 8, !tbaa !26
  %tobool12 = icmp ne %struct.gs_malloc_block_s* %23, null
  br i1 %tobool12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.end.10
  %24 = load %struct.gs_malloc_block_s*, %struct.gs_malloc_block_s** %bp, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gs_malloc_block_s, %struct.gs_malloc_block_s* %24, i32 0, i32 0
  %25 = load %struct.gs_malloc_block_s*, %struct.gs_malloc_block_s** %next, align 8, !tbaa !28
  %26 = load %struct.gs_malloc_block_s*, %struct.gs_malloc_block_s** %bp, align 8, !tbaa !1
  %prev14 = getelementptr inbounds %struct.gs_malloc_block_s, %struct.gs_malloc_block_s* %26, i32 0, i32 1
  %27 = load %struct.gs_malloc_block_s*, %struct.gs_malloc_block_s** %prev14, align 8, !tbaa !26
  %next15 = getelementptr inbounds %struct.gs_malloc_block_s, %struct.gs_malloc_block_s* %27, i32 0, i32 0
  store %struct.gs_malloc_block_s* %25, %struct.gs_malloc_block_s** %next15, align 8, !tbaa !28
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %if.end.10
  %28 = load %struct.gs_malloc_block_s*, %struct.gs_malloc_block_s** %bp, align 8, !tbaa !1
  %next17 = getelementptr inbounds %struct.gs_malloc_block_s, %struct.gs_malloc_block_s* %28, i32 0, i32 0
  %29 = load %struct.gs_malloc_block_s*, %struct.gs_malloc_block_s** %next17, align 8, !tbaa !28
  %tobool18 = icmp ne %struct.gs_malloc_block_s* %29, null
  br i1 %tobool18, label %if.then.19, label %if.end.23

if.then.19:                                       ; preds = %if.end.16
  %30 = load %struct.gs_malloc_block_s*, %struct.gs_malloc_block_s** %bp, align 8, !tbaa !1
  %prev20 = getelementptr inbounds %struct.gs_malloc_block_s, %struct.gs_malloc_block_s* %30, i32 0, i32 1
  %31 = load %struct.gs_malloc_block_s*, %struct.gs_malloc_block_s** %prev20, align 8, !tbaa !26
  %32 = load %struct.gs_malloc_block_s*, %struct.gs_malloc_block_s** %bp, align 8, !tbaa !1
  %next21 = getelementptr inbounds %struct.gs_malloc_block_s, %struct.gs_malloc_block_s* %32, i32 0, i32 0
  %33 = load %struct.gs_malloc_block_s*, %struct.gs_malloc_block_s** %next21, align 8, !tbaa !28
  %prev22 = getelementptr inbounds %struct.gs_malloc_block_s, %struct.gs_malloc_block_s* %33, i32 0, i32 1
  store %struct.gs_malloc_block_s* %31, %struct.gs_malloc_block_s** %prev22, align 8, !tbaa !26
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.19, %if.end.16
  %34 = load %struct.gs_malloc_block_s*, %struct.gs_malloc_block_s** %bp, align 8, !tbaa !1
  %35 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %mmem, align 8, !tbaa !1
  %allocated = getelementptr inbounds %struct.gs_malloc_memory_s, %struct.gs_malloc_memory_s* %35, i32 0, i32 5
  %36 = load %struct.gs_malloc_block_s*, %struct.gs_malloc_block_s** %allocated, align 8, !tbaa !10
  %cmp24 = icmp eq %struct.gs_malloc_block_s* %34, %36
  br i1 %cmp24, label %if.then.25, label %if.end.30

if.then.25:                                       ; preds = %if.end.23
  %37 = load %struct.gs_malloc_block_s*, %struct.gs_malloc_block_s** %bp, align 8, !tbaa !1
  %next26 = getelementptr inbounds %struct.gs_malloc_block_s, %struct.gs_malloc_block_s* %37, i32 0, i32 0
  %38 = load %struct.gs_malloc_block_s*, %struct.gs_malloc_block_s** %next26, align 8, !tbaa !28
  %39 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %mmem, align 8, !tbaa !1
  %allocated27 = getelementptr inbounds %struct.gs_malloc_memory_s, %struct.gs_malloc_memory_s* %39, i32 0, i32 5
  store %struct.gs_malloc_block_s* %38, %struct.gs_malloc_block_s** %allocated27, align 8, !tbaa !10
  %40 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %mmem, align 8, !tbaa !1
  %allocated28 = getelementptr inbounds %struct.gs_malloc_memory_s, %struct.gs_malloc_memory_s* %40, i32 0, i32 5
  %41 = load %struct.gs_malloc_block_s*, %struct.gs_malloc_block_s** %allocated28, align 8, !tbaa !10
  %prev29 = getelementptr inbounds %struct.gs_malloc_block_s, %struct.gs_malloc_block_s* %41, i32 0, i32 1
  store %struct.gs_malloc_block_s* null, %struct.gs_malloc_block_s** %prev29, align 8, !tbaa !26
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.25, %if.end.23
  %42 = load %struct.gs_malloc_block_s*, %struct.gs_malloc_block_s** %bp, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_malloc_block_s, %struct.gs_malloc_block_s* %42, i32 0, i32 2
  %43 = load i32, i32* %size, align 4, !tbaa !29
  %conv = zext i32 %43 to i64
  %add = add i64 %conv, 48
  %44 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %mmem, align 8, !tbaa !1
  %used = getelementptr inbounds %struct.gs_malloc_memory_s, %struct.gs_malloc_memory_s* %44, i32 0, i32 7
  %45 = load i64, i64* %used, align 8, !tbaa !12
  %sub = sub i64 %45, %add
  store i64 %sub, i64* %used, align 8, !tbaa !12
  %46 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %mmem, align 8, !tbaa !1
  %monitor31 = getelementptr inbounds %struct.gs_malloc_memory_s, %struct.gs_malloc_memory_s* %46, i32 0, i32 9
  %47 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor31, align 8, !tbaa !17
  %tobool32 = icmp ne %struct.gx_monitor_s* %47, null
  br i1 %tobool32, label %if.then.33, label %if.end.37

if.then.33:                                       ; preds = %if.end.30
  %48 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %mmem, align 8, !tbaa !1
  %monitor34 = getelementptr inbounds %struct.gs_malloc_memory_s, %struct.gs_malloc_memory_s* %48, i32 0, i32 9
  %49 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor34, align 8, !tbaa !17
  %native35 = getelementptr inbounds %struct.gx_monitor_s, %struct.gx_monitor_s* %49, i32 0, i32 1
  %call36 = call i32 @gp_monitor_leave(%union.gp_monitor* %native35) #5
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.33, %if.end.30
  br label %do.body.38

do.body.38:                                       ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.body.38
  br label %do.cond.40

do.cond.40:                                       ; preds = %do.body.39
  br label %do.end.41

do.end.41:                                        ; preds = %do.cond.40
  br label %do.cond.42

do.cond.42:                                       ; preds = %do.end.41
  br label %do.end.43

do.end.43:                                        ; preds = %do.cond.42
  %50 = load %struct.gs_malloc_block_s*, %struct.gs_malloc_block_s** %bp, align 8, !tbaa !1
  %51 = bitcast %struct.gs_malloc_block_s* %50 to i8*
  call void @free(i8* %51) #4
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.43, %if.then
  %52 = bitcast void (%struct.gs_memory_s*, i8*)** %finalize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %53 = bitcast %struct.gs_memory_struct_type_s** %pstype to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = bitcast %struct.gs_malloc_block_s** %bp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = bitcast %struct.gs_malloc_memory_s** %mmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_memory_s* @gs_heap_stable(%struct.gs_memory_s* %mem) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  ret %struct.gs_memory_s* %0
}

; Function Attrs: nounwind uwtable
define internal void @gs_heap_status(%struct.gs_memory_s* %mem, %struct.gs_memory_status_s* %pstat) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pstat.addr = alloca %struct.gs_memory_status_s*, align 8
  %mmem = alloca %struct.gs_malloc_memory_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_memory_status_s* %pstat, %struct.gs_memory_status_s** %pstat.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_malloc_memory_s** %mmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_malloc_memory_s*
  store %struct.gs_malloc_memory_s* %2, %struct.gs_malloc_memory_s** %mmem, align 8, !tbaa !1
  %3 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %mmem, align 8, !tbaa !1
  %used = getelementptr inbounds %struct.gs_malloc_memory_s, %struct.gs_malloc_memory_s* %3, i32 0, i32 7
  %4 = load i64, i64* %used, align 8, !tbaa !12
  %call = call i64 @heap_available() #5
  %add = add nsw i64 %4, %call
  %5 = load %struct.gs_memory_status_s*, %struct.gs_memory_status_s** %pstat.addr, align 8, !tbaa !1
  %allocated = getelementptr inbounds %struct.gs_memory_status_s, %struct.gs_memory_status_s* %5, i32 0, i32 0
  store i64 %add, i64* %allocated, align 8, !tbaa !35
  %6 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %mmem, align 8, !tbaa !1
  %used1 = getelementptr inbounds %struct.gs_malloc_memory_s, %struct.gs_malloc_memory_s* %6, i32 0, i32 7
  %7 = load i64, i64* %used1, align 8, !tbaa !12
  %8 = load %struct.gs_memory_status_s*, %struct.gs_memory_status_s** %pstat.addr, align 8, !tbaa !1
  %used2 = getelementptr inbounds %struct.gs_memory_status_s, %struct.gs_memory_status_s* %8, i32 0, i32 1
  store i64 %7, i64* %used2, align 8, !tbaa !37
  %9 = load %struct.gs_memory_status_s*, %struct.gs_memory_status_s** %pstat.addr, align 8, !tbaa !1
  %is_thread_safe = getelementptr inbounds %struct.gs_memory_status_s, %struct.gs_memory_status_s* %9, i32 0, i32 2
  store i32 1, i32* %is_thread_safe, align 4, !tbaa !38
  %10 = bitcast %struct.gs_malloc_memory_s** %mmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gs_heap_free_all(%struct.gs_memory_s* %mem, i32 %free_mask, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %free_mask.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  %mmem = alloca %struct.gs_malloc_memory_s*, align 8
  %mon = alloca %struct.gx_monitor_s*, align 8
  %bp = alloca %struct.gs_malloc_block_s*, align 8
  %np = alloca %struct.gs_malloc_block_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %free_mask, i32* %free_mask.addr, align 4, !tbaa !24
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_malloc_memory_s** %mmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_malloc_memory_s*
  store %struct.gs_malloc_memory_s* %2, %struct.gs_malloc_memory_s** %mmem, align 8, !tbaa !1
  %3 = bitcast %struct.gx_monitor_s** %mon to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %mmem, align 8, !tbaa !1
  %monitor = getelementptr inbounds %struct.gs_malloc_memory_s, %struct.gs_malloc_memory_s* %4, i32 0, i32 9
  %5 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %monitor, align 8, !tbaa !17
  store %struct.gx_monitor_s* %5, %struct.gx_monitor_s** %mon, align 8, !tbaa !1
  %6 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %mmem, align 8, !tbaa !1
  %monitor1 = getelementptr inbounds %struct.gs_malloc_memory_s, %struct.gs_malloc_memory_s* %6, i32 0, i32 9
  store %struct.gx_monitor_s* null, %struct.gx_monitor_s** %monitor1, align 8, !tbaa !17
  %7 = load %struct.gx_monitor_s*, %struct.gx_monitor_s** %mon, align 8, !tbaa !1
  call void @gx_monitor_free(%struct.gx_monitor_s* %7) #5
  %8 = load i32, i32* %free_mask.addr, align 4, !tbaa !24
  %and = and i32 %8, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = bitcast %struct.gs_malloc_block_s** %bp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.gs_malloc_memory_s*, %struct.gs_malloc_memory_s** %mmem, align 8, !tbaa !1
  %allocated = getelementptr inbounds %struct.gs_malloc_memory_s, %struct.gs_malloc_memory_s* %10, i32 0, i32 5
  %11 = load %struct.gs_malloc_block_s*, %struct.gs_malloc_block_s** %allocated, align 8, !tbaa !10
  store %struct.gs_malloc_block_s* %11, %struct.gs_malloc_block_s** %bp, align 8, !tbaa !1
  %12 = bitcast %struct.gs_malloc_block_s** %np to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %13 = load %struct.gs_malloc_block_s*, %struct.gs_malloc_block_s** %bp, align 8, !tbaa !1
  %cmp = icmp ne %struct.gs_malloc_block_s* %13, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct.gs_malloc_block_s*, %struct.gs_malloc_block_s** %bp, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gs_malloc_block_s, %struct.gs_malloc_block_s* %14, i32 0, i32 0
  %15 = load %struct.gs_malloc_block_s*, %struct.gs_malloc_block_s** %next, align 8, !tbaa !28
  store %struct.gs_malloc_block_s* %15, %struct.gs_malloc_block_s** %np, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %for.body
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  br label %do.body.3

do.body.3:                                        ; preds = %do.body.2
  br label %do.cond.4

do.cond.4:                                        ; preds = %do.body.3
  br label %do.end.5

do.end.5:                                         ; preds = %do.cond.4
  br label %do.cond.6

do.cond.6:                                        ; preds = %do.end.5
  br label %do.end.7

do.end.7:                                         ; preds = %do.cond.6
  %16 = load %struct.gs_malloc_block_s*, %struct.gs_malloc_block_s** %bp, align 8, !tbaa !1
  %17 = bitcast %struct.gs_malloc_block_s* %16 to i8*
  call void @free(i8* %17) #4
  br label %for.inc

for.inc:                                          ; preds = %do.end.7
  %18 = load %struct.gs_malloc_block_s*, %struct.gs_malloc_block_s** %np, align 8, !tbaa !1
  store %struct.gs_malloc_block_s* %18, %struct.gs_malloc_block_s** %bp, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = bitcast %struct.gs_malloc_block_s** %np to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %20 = bitcast %struct.gs_malloc_block_s** %bp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %21 = load i32, i32* %free_mask.addr, align 4, !tbaa !24
  %and8 = and i32 %21, 4
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %23 = bitcast %struct.gs_memory_s* %22 to i8*
  call void @free(i8* %23) #4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end
  %24 = bitcast %struct.gx_monitor_s** %mon to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast %struct.gs_malloc_memory_s** %mmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  ret void
}

declare void @gs_ignore_consolidate_free(%struct.gs_memory_s*) #3

; Function Attrs: nounwind uwtable
define internal i8* @gs_heap_alloc_struct(%struct.gs_memory_s* %mem, %struct.gs_memory_struct_type_s* %pstype, i8* %cname) #0 {
entry:
  %retval = alloca i8*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %cname.addr = alloca i8*, align 8
  %ptr = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %call = call i32 @gs_struct_type_size(%struct.gs_memory_struct_type_s* %2) #5
  %3 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call1 = call i8* @gs_heap_alloc_bytes(%struct.gs_memory_s* %1, i32 %call, i8* %3) #5
  store i8* %call1, i8** %ptr, align 8, !tbaa !1
  %4 = load i8*, i8** %ptr, align 8, !tbaa !1
  %cmp = icmp eq i8* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %ptr, align 8, !tbaa !1
  %7 = bitcast i8* %6 to %struct.gs_malloc_block_s*
  %arrayidx = getelementptr inbounds %struct.gs_malloc_block_s, %struct.gs_malloc_block_s* %7, i64 -1
  %type = getelementptr inbounds %struct.gs_malloc_block_s, %struct.gs_malloc_block_s* %arrayidx, i32 0, i32 3
  store %struct.gs_memory_struct_type_s* %5, %struct.gs_memory_struct_type_s** %type, align 8, !tbaa !30
  %8 = load i8*, i8** %ptr, align 8, !tbaa !1
  store i8* %8, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %9 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  %10 = load i8*, i8** %retval
  ret i8* %10
}

; Function Attrs: nounwind uwtable
define internal i8* @gs_heap_alloc_byte_array(%struct.gs_memory_s* %mem, i32 %num_elements, i32 %elt_size, i8* %cname) #0 {
entry:
  %retval = alloca i8*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %num_elements.addr = alloca i32, align 4
  %elt_size.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  %lsize = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %num_elements, i32* %num_elements.addr, align 4, !tbaa !24
  store i32 %elt_size, i32* %elt_size.addr, align 4, !tbaa !24
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast i64* %lsize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i32, i32* %num_elements.addr, align 4, !tbaa !24
  %conv = zext i32 %1 to i64
  %2 = load i32, i32* %elt_size.addr, align 4, !tbaa !24
  %conv1 = zext i32 %2 to i64
  %mul = mul i64 %conv, %conv1
  store i64 %mul, i64* %lsize, align 8, !tbaa !39
  %3 = load i64, i64* %lsize, align 8, !tbaa !39
  %4 = load i64, i64* %lsize, align 8, !tbaa !39
  %conv2 = trunc i64 %4 to i32
  %conv3 = zext i32 %conv2 to i64
  %cmp = icmp ne i64 %3, %conv3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %6 = load i64, i64* %lsize, align 8, !tbaa !39
  %conv5 = trunc i64 %6 to i32
  %7 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* @gs_heap_alloc_bytes(%struct.gs_memory_s* %5, i32 %conv5, i8* %7) #5
  store i8* %call, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %8 = bitcast i64* %lsize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  %9 = load i8*, i8** %retval
  ret i8* %9
}

; Function Attrs: nounwind uwtable
define internal i8* @gs_heap_alloc_struct_array(%struct.gs_memory_s* %mem, i32 %num_elements, %struct.gs_memory_struct_type_s* %pstype, i8* %cname) #0 {
entry:
  %retval = alloca i8*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %num_elements.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %cname.addr = alloca i8*, align 8
  %ptr = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %num_elements, i32* %num_elements.addr, align 4, !tbaa !24
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = load i32, i32* %num_elements.addr, align 4, !tbaa !24
  %3 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %call = call i32 @gs_struct_type_size(%struct.gs_memory_struct_type_s* %3) #5
  %4 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call1 = call i8* @gs_heap_alloc_byte_array(%struct.gs_memory_s* %1, i32 %2, i32 %call, i8* %4) #5
  store i8* %call1, i8** %ptr, align 8, !tbaa !1
  %5 = load i8*, i8** %ptr, align 8, !tbaa !1
  %cmp = icmp eq i8* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %ptr, align 8, !tbaa !1
  %8 = bitcast i8* %7 to %struct.gs_malloc_block_s*
  %arrayidx = getelementptr inbounds %struct.gs_malloc_block_s, %struct.gs_malloc_block_s* %8, i64 -1
  %type = getelementptr inbounds %struct.gs_malloc_block_s, %struct.gs_malloc_block_s* %arrayidx, i32 0, i32 3
  store %struct.gs_memory_struct_type_s* %6, %struct.gs_memory_struct_type_s** %type, align 8, !tbaa !30
  %9 = load i8*, i8** %ptr, align 8, !tbaa !1
  store i8* %9, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %10 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  %11 = load i8*, i8** %retval
  ret i8* %11
}

; Function Attrs: nounwind uwtable
define internal i32 @gs_heap_object_size(%struct.gs_memory_s* %mem, i8* %ptr) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %ptr.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %1 = bitcast i8* %0 to %struct.gs_malloc_block_s*
  %arrayidx = getelementptr inbounds %struct.gs_malloc_block_s, %struct.gs_malloc_block_s* %1, i64 -1
  %size = getelementptr inbounds %struct.gs_malloc_block_s, %struct.gs_malloc_block_s* %arrayidx, i32 0, i32 2
  %2 = load i32, i32* %size, align 4, !tbaa !29
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_memory_struct_type_s* @gs_heap_object_type(%struct.gs_memory_s* %mem, i8* %ptr) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %ptr.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %1 = bitcast i8* %0 to %struct.gs_malloc_block_s*
  %arrayidx = getelementptr inbounds %struct.gs_malloc_block_s, %struct.gs_malloc_block_s* %1, i64 -1
  %type = getelementptr inbounds %struct.gs_malloc_block_s, %struct.gs_malloc_block_s* %arrayidx, i32 0, i32 3
  %2 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %type, align 8, !tbaa !30
  ret %struct.gs_memory_struct_type_s* %2
}

; Function Attrs: nounwind uwtable
define internal i8* @gs_heap_alloc_string(%struct.gs_memory_s* %mem, i32 %nbytes, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %nbytes.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %nbytes, i32* %nbytes.addr, align 4, !tbaa !24
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %1 = load i32, i32* %nbytes.addr, align 4, !tbaa !24
  %2 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* @gs_heap_alloc_bytes(%struct.gs_memory_s* %0, i32 %1, i8* %2) #5
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal i8* @gs_heap_resize_string(%struct.gs_memory_s* %mem, i8* %data, i32 %old_num, i32 %new_num, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %data.addr = alloca i8*, align 8
  %old_num.addr = alloca i32, align 4
  %new_num.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %old_num, i32* %old_num.addr, align 4, !tbaa !24
  store i32 %new_num, i32* %new_num.addr, align 4, !tbaa !24
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %call = call %struct.gs_memory_struct_type_s* @gs_heap_object_type(%struct.gs_memory_s* %0, i8* %1) #5
  %cmp = icmp ne %struct.gs_memory_struct_type_s* %call, @st_bytes
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i8* @gs_program_name() #5
  %call2 = call i64 @gs_revision_number() #5
  call void @eprintf_program_ident(i8* %call1, i64 %call2) #5
  call void @lprintf_file_and_line(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i32 405) #5
  %2 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %4 = ptrtoint i8* %3 to i64
  %call3 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0), i8* %2, i64 %4) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %7 = load i32, i32* %new_num.addr, align 4, !tbaa !24
  %8 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call4 = call i8* @gs_heap_resize_object(%struct.gs_memory_s* %5, i8* %6, i32 %7, i8* %8) #5
  ret i8* %call4
}

; Function Attrs: nounwind uwtable
define internal void @gs_heap_free_string(%struct.gs_memory_s* %mem, i8* %data, i32 %nbytes, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %data.addr = alloca i8*, align 8
  %nbytes.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %nbytes, i32* %nbytes.addr, align 4, !tbaa !24
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void @gs_heap_free_object(%struct.gs_memory_s* %0, i8* %1, i8* %2) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gs_heap_register_root(%struct.gs_memory_s* %mem, %struct.gs_gc_root_s* %rp, %struct.gs_ptr_procs_s* %ptype, i8** %up, i8* %cname) #0 {
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
define internal void @gs_heap_unregister_root(%struct.gs_memory_s* %mem, %struct.gs_gc_root_s* %rp, i8* %cname) #0 {
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
define internal void @gs_heap_enable_free(%struct.gs_memory_s* %mem, i32 %enable) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %enable.addr = alloca i32, align 4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %enable, i32* %enable.addr, align 4, !tbaa !24
  %0 = load i32, i32* %enable.addr, align 4, !tbaa !24
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @gs_heap_free_object, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !22
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %2, i32 0, i32 1
  %free_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs1, i32 0, i32 19
  store void (%struct.gs_memory_s*, i8*, i32, i8*)* @gs_heap_free_string, void (%struct.gs_memory_s*, i8*, i32, i8*)** %free_string, align 8, !tbaa !40
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %3, i32 0, i32 1
  %free_object3 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs2, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @gs_ignore_free_object, void (%struct.gs_memory_s*, i8*, i8*)** %free_object3, align 8, !tbaa !22
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs4 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 1
  %free_string5 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs4, i32 0, i32 19
  store void (%struct.gs_memory_s*, i8*, i32, i8*)* @gs_ignore_free_string, void (%struct.gs_memory_s*, i8*, i32, i8*)** %free_string5, align 8, !tbaa !40
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare i32 @gp_monitor_enter(%union.gp_monitor*) #3

declare i32 @gp_monitor_leave(%union.gp_monitor*) #3

declare i32 @gs_struct_type_size(%struct.gs_memory_struct_type_s*) #3

declare i8* @gs_realloc(i8*, i64, i64) #3

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define internal i64 @heap_available() #0 {
entry:
  %avail = alloca i64, align 8
  %probes = alloca [20 x i8*], align 16
  %n = alloca i32, align 4
  %0 = bitcast i64* %avail to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i64 0, i64* %avail, align 8, !tbaa !39
  %1 = bitcast [20 x i8*]* %probes to i8*
  call void @llvm.lifetime.start(i64 160, i8* %1) #1
  %2 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %n, align 4, !tbaa !24
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %n, align 4, !tbaa !24
  %cmp = icmp ult i32 %3, 20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call noalias i8* @malloc(i64 64000) #4
  %4 = load i32, i32* %n, align 4, !tbaa !24
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds [20 x i8*], [20 x i8*]* %probes, i32 0, i64 %idxprom
  store i8* %call, i8** %arrayidx, align 8, !tbaa !1
  %cmp1 = icmp eq i8* %call, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %5 = load i64, i64* %avail, align 8, !tbaa !39
  %add = add nsw i64 %5, 64000
  store i64 %add, i64* %avail, align 8, !tbaa !39
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %6 = load i32, i32* %n, align 4, !tbaa !24
  %inc = add i32 %6, 1
  store i32 %inc, i32* %n, align 4, !tbaa !24
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %7 = load i32, i32* %n, align 4, !tbaa !24
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i32, i32* %n, align 4, !tbaa !24
  %dec = add i32 %8, -1
  store i32 %dec, i32* %n, align 4, !tbaa !24
  %idxprom2 = zext i32 %dec to i64
  %arrayidx3 = getelementptr inbounds [20 x i8*], [20 x i8*]* %probes, i32 0, i64 %idxprom2
  %9 = load i8*, i8** %arrayidx3, align 8, !tbaa !1
  call void @free(i8* %9) #4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %10 = load i64, i64* %avail, align 8, !tbaa !39
  %11 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #1
  %12 = bitcast [20 x i8*]* %probes to i8*
  call void @llvm.lifetime.end(i64 160, i8* %12) #1
  %13 = bitcast i64* %avail to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  ret i64 %10
}

declare void @gx_monitor_free(%struct.gx_monitor_s*) #3

declare void @eprintf_program_ident(i8*, i64) #3

declare i8* @gs_program_name() #3

declare i64 @gs_revision_number() #3

declare void @lprintf_file_and_line(i8*, i32) #3

declare i32 @errprintf_nomem(i8*, ...) #3

declare void @gs_ignore_free_object(%struct.gs_memory_s*, i8*, i8*) #3

declare void @gs_ignore_free_string(%struct.gs_memory_s*, i8*, i32, i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin nounwind }
attributes #5 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 0}
!6 = !{!"gs_malloc_memory_s", !2, i64 0, !7, i64 8, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !8, i64 224, !8, i64 232, !8, i64 240, !2, i64 248}
!7 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!8 = !{!"long", !3, i64 0}
!9 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 8, !1, i64 32, i64 8, !1, i64 40, i64 8, !1, i64 48, i64 8, !1, i64 56, i64 8, !1, i64 64, i64 8, !1, i64 72, i64 8, !1, i64 80, i64 8, !1, i64 88, i64 8, !1, i64 96, i64 8, !1, i64 104, i64 8, !1, i64 112, i64 8, !1, i64 120, i64 8, !1, i64 128, i64 8, !1, i64 136, i64 8, !1, i64 144, i64 8, !1, i64 152, i64 8, !1, i64 160, i64 8, !1, i64 168, i64 8, !1, i64 176, i64 8, !1}
!10 = !{!6, !2, i64 216}
!11 = !{!6, !8, i64 224}
!12 = !{!6, !8, i64 232}
!13 = !{!6, !8, i64 240}
!14 = !{!6, !2, i64 192}
!15 = !{!6, !2, i64 200}
!16 = !{!6, !2, i64 208}
!17 = !{!6, !2, i64 248}
!18 = !{!19, !2, i64 0}
!19 = !{!"gs_memory_s", !2, i64 0, !7, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!20 = !{!3, !3, i64 0}
!21 = !{!19, !2, i64 8}
!22 = !{!19, !2, i64 24}
!23 = !{!19, !2, i64 48}
!24 = !{!25, !25, i64 0}
!25 = !{!"int", !3, i64 0}
!26 = !{!27, !2, i64 8}
!27 = !{!"gs_malloc_block_s", !2, i64 0, !2, i64 8, !25, i64 16, !2, i64 24, !2, i64 32, !3, i64 40}
!28 = !{!27, !2, i64 0}
!29 = !{!27, !25, i64 16}
!30 = !{!27, !2, i64 24}
!31 = !{!27, !2, i64 32}
!32 = !{!19, !2, i64 120}
!33 = !{!34, !2, i64 48}
!34 = !{!"gs_memory_struct_type_s", !25, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!35 = !{!36, !8, i64 0}
!36 = !{!"gs_memory_status_s", !8, i64 0, !8, i64 8, !25, i64 16}
!37 = !{!36, !8, i64 8}
!38 = !{!36, !25, i64 16}
!39 = !{!8, !8, i64 0}
!40 = !{!19, !2, i64 160}
