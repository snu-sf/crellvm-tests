; ModuleID = './gsmemret.bc'
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
%struct.gs_memory_retrying_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gs_memory_retrying_s*, i8*)*, i8* }

@retrying_procs = internal constant %struct.gs_memory_procs_s { i8* (%struct.gs_memory_s*, i32, i8*)* @gs_retrying_alloc_bytes_immovable, i8* (%struct.gs_memory_s*, i8*, i32, i8*)* @gs_retrying_resize_object, void (%struct.gs_memory_s*, i8*, i8*)* @gs_forward_free_object, %struct.gs_memory_s* (%struct.gs_memory_s*)* @gs_retrying_stable, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)* @gs_forward_status, void (%struct.gs_memory_s*, i32, i8*)* @gs_forward_free_all, void (%struct.gs_memory_s*)* @gs_forward_consolidate_free, i8* (%struct.gs_memory_s*, i32, i8*)* @gs_retrying_alloc_bytes, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)* @gs_retrying_alloc_struct, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)* @gs_retrying_alloc_struct_immovable, i8* (%struct.gs_memory_s*, i32, i32, i8*)* @gs_retrying_alloc_byte_array, i8* (%struct.gs_memory_s*, i32, i32, i8*)* @gs_retrying_alloc_byte_array_immovable, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)* @gs_retrying_alloc_struct_array, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)* @gs_retrying_alloc_struct_array_immovable, i32 (%struct.gs_memory_s*, i8*)* @gs_forward_object_size, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)* @gs_forward_object_type, i8* (%struct.gs_memory_s*, i32, i8*)* @gs_retrying_alloc_string, i8* (%struct.gs_memory_s*, i32, i8*)* @gs_retrying_alloc_string_immovable, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)* @gs_retrying_resize_string, void (%struct.gs_memory_s*, i8*, i32, i8*)* @gs_forward_free_string, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)* @gs_retrying_register_root, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)* @gs_forward_unregister_root, void (%struct.gs_memory_s*, i32)* @gs_forward_enable_free }, align 8
@.str = private unnamed_addr constant [27 x i8] c"gs_memory_retrying_release\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"gs_retrying_stable\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gs_memory_retrying_init(%struct.gs_memory_retrying_s* %rmem, %struct.gs_memory_s* %target) #0 {
entry:
  %rmem.addr = alloca %struct.gs_memory_retrying_s*, align 8
  %target.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_memory_retrying_s* %rmem, %struct.gs_memory_retrying_s** %rmem.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %target, %struct.gs_memory_s** %target.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem.addr, align 8, !tbaa !1
  %stable_memory = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %0, i32 0, i32 0
  store %struct.gs_memory_s* null, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !5
  %1 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %1, i32 0, i32 1
  %2 = bitcast %struct.gs_memory_procs_s* %procs to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast (%struct.gs_memory_procs_s* @retrying_procs to i8*), i64 184, i32 8, i1 false), !tbaa.struct !8
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target.addr, align 8, !tbaa !1
  %4 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem.addr, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %4, i32 0, i32 5
  store %struct.gs_memory_s* %3, %struct.gs_memory_s** %target1, align 8, !tbaa !9
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target.addr, align 8, !tbaa !1
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %5, i32 0, i32 2
  %6 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !10
  %7 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem.addr, align 8, !tbaa !1
  %gs_lib_ctx2 = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %7, i32 0, i32 2
  store %struct.gs_lib_ctx_s* %6, %struct.gs_lib_ctx_s** %gs_lib_ctx2, align 8, !tbaa !12
  %8 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem.addr, align 8, !tbaa !1
  %9 = bitcast %struct.gs_memory_retrying_s* %8 to %struct.gs_memory_s*
  %10 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem.addr, align 8, !tbaa !1
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %10, i32 0, i32 3
  store %struct.gs_memory_s* %9, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !13
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target.addr, align 8, !tbaa !1
  %thread_safe_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %11, i32 0, i32 4
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %thread_safe_memory, align 8, !tbaa !14
  %13 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem.addr, align 8, !tbaa !1
  %thread_safe_memory3 = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %13, i32 0, i32 4
  store %struct.gs_memory_s* %12, %struct.gs_memory_s** %thread_safe_memory3, align 8, !tbaa !15
  %14 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem.addr, align 8, !tbaa !1
  call void @gs_memory_retrying_set_recover(%struct.gs_memory_retrying_s* %14, i32 (%struct.gs_memory_retrying_s*, i8*)* @no_recover_proc, i8* null) #2
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define void @gs_memory_retrying_set_recover(%struct.gs_memory_retrying_s* %rmem, i32 (%struct.gs_memory_retrying_s*, i8*)* %recover_proc, i8* %recover_proc_data) #0 {
entry:
  %rmem.addr = alloca %struct.gs_memory_retrying_s*, align 8
  %recover_proc.addr = alloca i32 (%struct.gs_memory_retrying_s*, i8*)*, align 8
  %recover_proc_data.addr = alloca i8*, align 8
  store %struct.gs_memory_retrying_s* %rmem, %struct.gs_memory_retrying_s** %rmem.addr, align 8, !tbaa !1
  store i32 (%struct.gs_memory_retrying_s*, i8*)* %recover_proc, i32 (%struct.gs_memory_retrying_s*, i8*)** %recover_proc.addr, align 8, !tbaa !1
  store i8* %recover_proc_data, i8** %recover_proc_data.addr, align 8, !tbaa !1
  %0 = load i32 (%struct.gs_memory_retrying_s*, i8*)*, i32 (%struct.gs_memory_retrying_s*, i8*)** %recover_proc.addr, align 8, !tbaa !1
  %1 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem.addr, align 8, !tbaa !1
  %recover_proc1 = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %1, i32 0, i32 6
  store i32 (%struct.gs_memory_retrying_s*, i8*)* %0, i32 (%struct.gs_memory_retrying_s*, i8*)** %recover_proc1, align 8, !tbaa !16
  %2 = load i8*, i8** %recover_proc_data.addr, align 8, !tbaa !1
  %3 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem.addr, align 8, !tbaa !1
  %recover_proc_data2 = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %3, i32 0, i32 7
  store i8* %2, i8** %recover_proc_data2, align 8, !tbaa !17
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @no_recover_proc(%struct.gs_memory_retrying_s* %rmem, i8* %proc_data) #0 {
entry:
  %rmem.addr = alloca %struct.gs_memory_retrying_s*, align 8
  %proc_data.addr = alloca i8*, align 8
  store %struct.gs_memory_retrying_s* %rmem, %struct.gs_memory_retrying_s** %rmem.addr, align 8, !tbaa !1
  store i8* %proc_data, i8** %proc_data.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @gs_memory_retrying_release(%struct.gs_memory_retrying_s* %rmem) #0 {
entry:
  %rmem.addr = alloca %struct.gs_memory_retrying_s*, align 8
  store %struct.gs_memory_retrying_s* %rmem, %struct.gs_memory_retrying_s** %rmem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gs_memory_retrying_s* %0 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 1
  %free_all = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 5
  %2 = load void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*, i32, i8*)** %free_all, align 8, !tbaa !18
  %3 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gs_memory_retrying_s* %3 to %struct.gs_memory_s*
  call void %2(%struct.gs_memory_s* %4, i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0)) #2
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.gs_memory_s* @gs_memory_retrying_target(%struct.gs_memory_retrying_s* %rmem) #0 {
entry:
  %rmem.addr = alloca %struct.gs_memory_retrying_s*, align 8
  store %struct.gs_memory_retrying_s* %rmem, %struct.gs_memory_retrying_s** %rmem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem.addr, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %0, i32 0, i32 5
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !9
  ret %struct.gs_memory_s* %1
}

; Function Attrs: nounwind uwtable
define internal i8* @gs_retrying_alloc_bytes_immovable(%struct.gs_memory_s* %mem, i32 %size, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %size.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  %rmem = alloca %struct.gs_memory_retrying_s*, align 8
  %target = alloca %struct.gs_memory_s*, align 8
  %temp = alloca i8*, align 8
  %retry = alloca i32, align 4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !19
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_retrying_s** %rmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_memory_retrying_s*
  store %struct.gs_memory_retrying_s* %2, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_s** %target to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %4, i32 0, i32 5
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target1, align 8, !tbaa !9
  store %struct.gs_memory_s* %5, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %6 = bitcast i8** %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %retry to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 1, i32* %retry, align 4, !tbaa !21
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 1
  %alloc_bytes_immovable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 0
  %9 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes_immovable, align 8, !tbaa !22
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %11 = load i32, i32* %size.addr, align 4, !tbaa !19
  %12 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* %9(%struct.gs_memory_s* %10, i32 %11, i8* %12) #2
  store i8* %call, i8** %temp, align 8, !tbaa !1
  %13 = load i8*, i8** %temp, align 8, !tbaa !1
  %cmp = icmp ne i8* %13, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.cond
  %14 = load i32, i32* %retry, align 4, !tbaa !21
  %cmp2 = icmp ne i32 %14, 1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.cond
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false
  %15 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %recover_proc = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %15, i32 0, i32 6
  %16 = load i32 (%struct.gs_memory_retrying_s*, i8*)*, i32 (%struct.gs_memory_retrying_s*, i8*)** %recover_proc, align 8, !tbaa !16
  %17 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %18 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %recover_proc_data = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %18, i32 0, i32 7
  %19 = load i8*, i8** %recover_proc_data, align 8, !tbaa !17
  %call3 = call i32 %16(%struct.gs_memory_retrying_s* %17, i8* %19) #2
  store i32 %call3, i32* %retry, align 4, !tbaa !21
  br label %for.cond

for.end:                                          ; preds = %if.then
  %20 = load i8*, i8** %temp, align 8, !tbaa !1
  %21 = bitcast i32* %retry to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast i8** %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = bitcast %struct.gs_memory_s** %target to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast %struct.gs_memory_retrying_s** %rmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  ret i8* %20
}

; Function Attrs: nounwind uwtable
define internal i8* @gs_retrying_resize_object(%struct.gs_memory_s* %mem, i8* %obj, i32 %new_num_elements, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %obj.addr = alloca i8*, align 8
  %new_num_elements.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  %rmem = alloca %struct.gs_memory_retrying_s*, align 8
  %target = alloca %struct.gs_memory_s*, align 8
  %temp = alloca i8*, align 8
  %retry = alloca i32, align 4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %obj, i8** %obj.addr, align 8, !tbaa !1
  store i32 %new_num_elements, i32* %new_num_elements.addr, align 4, !tbaa !19
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_retrying_s** %rmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_memory_retrying_s*
  store %struct.gs_memory_retrying_s* %2, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_s** %target to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %4, i32 0, i32 5
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target1, align 8, !tbaa !9
  store %struct.gs_memory_s* %5, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %6 = bitcast i8** %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %retry to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 1, i32* %retry, align 4, !tbaa !21
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 1
  %resize_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 1
  %9 = load i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)** %resize_object, align 8, !tbaa !23
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %11 = load i8*, i8** %obj.addr, align 8, !tbaa !1
  %12 = load i32, i32* %new_num_elements.addr, align 4, !tbaa !19
  %13 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* %9(%struct.gs_memory_s* %10, i8* %11, i32 %12, i8* %13) #2
  store i8* %call, i8** %temp, align 8, !tbaa !1
  %14 = load i8*, i8** %temp, align 8, !tbaa !1
  %cmp = icmp ne i8* %14, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.cond
  %15 = load i32, i32* %retry, align 4, !tbaa !21
  %cmp2 = icmp ne i32 %15, 1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.cond
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false
  %16 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %recover_proc = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %16, i32 0, i32 6
  %17 = load i32 (%struct.gs_memory_retrying_s*, i8*)*, i32 (%struct.gs_memory_retrying_s*, i8*)** %recover_proc, align 8, !tbaa !16
  %18 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %19 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %recover_proc_data = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %19, i32 0, i32 7
  %20 = load i8*, i8** %recover_proc_data, align 8, !tbaa !17
  %call3 = call i32 %17(%struct.gs_memory_retrying_s* %18, i8* %20) #2
  store i32 %call3, i32* %retry, align 4, !tbaa !21
  br label %for.cond

for.end:                                          ; preds = %if.then
  %21 = load i8*, i8** %temp, align 8, !tbaa !1
  %22 = bitcast i32* %retry to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast i8** %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast %struct.gs_memory_s** %target to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast %struct.gs_memory_retrying_s** %rmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  ret i8* %21
}

; Function Attrs: nounwind uwtable
define internal void @gs_forward_free_object(%struct.gs_memory_s* %mem, i8* %ptr, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %ptr.addr = alloca i8*, align 8
  %cname.addr = alloca i8*, align 8
  %rmem = alloca %struct.gs_memory_retrying_s*, align 8
  %target = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_retrying_s** %rmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_memory_retrying_s*
  store %struct.gs_memory_retrying_s* %2, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_s** %target to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %4, i32 0, i32 5
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target1, align 8, !tbaa !9
  store %struct.gs_memory_s* %5, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %7 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !24
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %9 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %10 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %7(%struct.gs_memory_s* %8, i8* %9, i8* %10) #2
  %11 = bitcast %struct.gs_memory_s** %target to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  %12 = bitcast %struct.gs_memory_retrying_s** %rmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_memory_s* @gs_retrying_stable(%struct.gs_memory_s* %mem) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %rmem = alloca %struct.gs_memory_retrying_s*, align 8
  %stable = alloca %struct.gs_memory_s*, align 8
  %retrying_stable = alloca %struct.gs_memory_retrying_s*, align 8
  %code = alloca i32, align 4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %0, i32 0, i32 0
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !25
  %tobool = icmp ne %struct.gs_memory_s* %1, null
  br i1 %tobool, label %if.end.18, label %if.then

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.gs_memory_retrying_s** %rmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gs_memory_s* %3 to %struct.gs_memory_retrying_s*
  store %struct.gs_memory_retrying_s* %4, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %5 = bitcast %struct.gs_memory_s** %stable to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %6, i32 0, i32 5
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !9
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 1
  %stable1 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 3
  %8 = load %struct.gs_memory_s* (%struct.gs_memory_s*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)** %stable1, align 8, !tbaa !26
  %9 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %target2 = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %9, i32 0, i32 5
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target2, align 8, !tbaa !9
  %call = call %struct.gs_memory_s* %8(%struct.gs_memory_s* %10) #2
  store %struct.gs_memory_s* %call, %struct.gs_memory_s** %stable, align 8, !tbaa !1
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable, align 8, !tbaa !1
  %12 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %target3 = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %12, i32 0, i32 5
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target3, align 8, !tbaa !9
  %cmp = icmp eq %struct.gs_memory_s* %11, %13
  br i1 %cmp, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %stable_memory5 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %15, i32 0, i32 0
  store %struct.gs_memory_s* %14, %struct.gs_memory_s** %stable_memory5, align 8, !tbaa !25
  br label %if.end.17

if.else:                                          ; preds = %if.then
  %16 = bitcast %struct.gs_memory_retrying_s** %retrying_stable to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable, align 8, !tbaa !1
  %procs6 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %17, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs6, i32 0, i32 7
  %18 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !27
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable, align 8, !tbaa !1
  %call7 = call i8* %18(%struct.gs_memory_s* %19, i32 240, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0)) #2
  %20 = bitcast i8* %call7 to %struct.gs_memory_retrying_s*
  store %struct.gs_memory_retrying_s* %20, %struct.gs_memory_retrying_s** %retrying_stable, align 8, !tbaa !1
  %21 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %retrying_stable, align 8, !tbaa !1
  %tobool8 = icmp ne %struct.gs_memory_retrying_s* %21, null
  br i1 %tobool8, label %if.then.9, label %if.end.16

if.then.9:                                        ; preds = %if.else
  %22 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %retrying_stable, align 8, !tbaa !1
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable, align 8, !tbaa !1
  %call10 = call i32 @gs_memory_retrying_init(%struct.gs_memory_retrying_s* %23, %struct.gs_memory_s* %24) #2
  store i32 %call10, i32* %code, align 4, !tbaa !19
  %25 = load i32, i32* %code, align 4, !tbaa !19
  %cmp11 = icmp slt i32 %25, 0
  br i1 %cmp11, label %if.then.12, label %if.else.14

if.then.12:                                       ; preds = %if.then.9
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable, align 8, !tbaa !1
  %procs13 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %26, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs13, i32 0, i32 2
  %27 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !24
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable, align 8, !tbaa !1
  %29 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %retrying_stable, align 8, !tbaa !1
  %30 = bitcast %struct.gs_memory_retrying_s* %29 to i8*
  call void %27(%struct.gs_memory_s* %28, i8* %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0)) #2
  br label %if.end

if.else.14:                                       ; preds = %if.then.9
  %31 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %retrying_stable, align 8, !tbaa !1
  %32 = bitcast %struct.gs_memory_retrying_s* %31 to %struct.gs_memory_s*
  %33 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %stable_memory15 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %33, i32 0, i32 0
  store %struct.gs_memory_s* %32, %struct.gs_memory_s** %stable_memory15, align 8, !tbaa !25
  br label %if.end

if.end:                                           ; preds = %if.else.14, %if.then.12
  %34 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %if.else
  %35 = bitcast %struct.gs_memory_retrying_s** %retrying_stable to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then.4
  %36 = bitcast %struct.gs_memory_s** %stable to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = bitcast %struct.gs_memory_retrying_s** %rmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %entry
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %stable_memory19 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %38, i32 0, i32 0
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory19, align 8, !tbaa !25
  ret %struct.gs_memory_s* %39
}

; Function Attrs: nounwind uwtable
define internal void @gs_forward_status(%struct.gs_memory_s* %mem, %struct.gs_memory_status_s* %pstat) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pstat.addr = alloca %struct.gs_memory_status_s*, align 8
  %rmem = alloca %struct.gs_memory_retrying_s*, align 8
  %target = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_memory_status_s* %pstat, %struct.gs_memory_status_s** %pstat.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_retrying_s** %rmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_memory_retrying_s*
  store %struct.gs_memory_retrying_s* %2, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_s** %target to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %4, i32 0, i32 5
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target1, align 8, !tbaa !9
  store %struct.gs_memory_s* %5, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 1
  %status = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 4
  %7 = load void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)** %status, align 8, !tbaa !28
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %9 = load %struct.gs_memory_status_s*, %struct.gs_memory_status_s** %pstat.addr, align 8, !tbaa !1
  call void %7(%struct.gs_memory_s* %8, %struct.gs_memory_status_s* %9) #2
  %10 = load %struct.gs_memory_status_s*, %struct.gs_memory_status_s** %pstat.addr, align 8, !tbaa !1
  %is_thread_safe = getelementptr inbounds %struct.gs_memory_status_s, %struct.gs_memory_status_s* %10, i32 0, i32 2
  store i32 0, i32* %is_thread_safe, align 4, !tbaa !29
  %11 = bitcast %struct.gs_memory_s** %target to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  %12 = bitcast %struct.gs_memory_retrying_s** %rmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gs_forward_free_all(%struct.gs_memory_s* %mem, i32 %free_mask, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %free_mask.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  %rmem = alloca %struct.gs_memory_retrying_s*, align 8
  %target = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %free_mask, i32* %free_mask.addr, align 4, !tbaa !19
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_retrying_s** %rmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_memory_retrying_s*
  store %struct.gs_memory_retrying_s* %2, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_s** %target to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %4, i32 0, i32 5
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target1, align 8, !tbaa !9
  store %struct.gs_memory_s* %5, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %6 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %target2 = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %6, i32 0, i32 5
  store %struct.gs_memory_s* null, %struct.gs_memory_s** %target2, align 8, !tbaa !9
  %7 = load i32, i32* %free_mask.addr, align 4, !tbaa !19
  %and = and i32 %7, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %9 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !24
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %11 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %12 = bitcast %struct.gs_memory_retrying_s* %11 to i8*
  %13 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %9(%struct.gs_memory_s* %10, i8* %12, i8* %13) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = bitcast %struct.gs_memory_s** %target to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = bitcast %struct.gs_memory_retrying_s** %rmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gs_forward_consolidate_free(%struct.gs_memory_s* %mem) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %rmem = alloca %struct.gs_memory_retrying_s*, align 8
  %target = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_retrying_s** %rmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_memory_retrying_s*
  store %struct.gs_memory_retrying_s* %2, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_s** %target to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %4, i32 0, i32 5
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target1, align 8, !tbaa !9
  store %struct.gs_memory_s* %5, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 1
  %consolidate_free = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 6
  %7 = load void (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*)** %consolidate_free, align 8, !tbaa !32
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !1
  call void %7(%struct.gs_memory_s* %8) #2
  %9 = bitcast %struct.gs_memory_s** %target to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  %10 = bitcast %struct.gs_memory_retrying_s** %rmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @gs_retrying_alloc_bytes(%struct.gs_memory_s* %mem, i32 %size, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %size.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  %rmem = alloca %struct.gs_memory_retrying_s*, align 8
  %target = alloca %struct.gs_memory_s*, align 8
  %temp = alloca i8*, align 8
  %retry = alloca i32, align 4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !19
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_retrying_s** %rmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_memory_retrying_s*
  store %struct.gs_memory_retrying_s* %2, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_s** %target to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %4, i32 0, i32 5
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target1, align 8, !tbaa !9
  store %struct.gs_memory_s* %5, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %6 = bitcast i8** %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %retry to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 1, i32* %retry, align 4, !tbaa !21
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %9 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !27
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %11 = load i32, i32* %size.addr, align 4, !tbaa !19
  %12 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* %9(%struct.gs_memory_s* %10, i32 %11, i8* %12) #2
  store i8* %call, i8** %temp, align 8, !tbaa !1
  %13 = load i8*, i8** %temp, align 8, !tbaa !1
  %cmp = icmp ne i8* %13, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.cond
  %14 = load i32, i32* %retry, align 4, !tbaa !21
  %cmp2 = icmp ne i32 %14, 1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.cond
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false
  %15 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %recover_proc = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %15, i32 0, i32 6
  %16 = load i32 (%struct.gs_memory_retrying_s*, i8*)*, i32 (%struct.gs_memory_retrying_s*, i8*)** %recover_proc, align 8, !tbaa !16
  %17 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %18 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %recover_proc_data = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %18, i32 0, i32 7
  %19 = load i8*, i8** %recover_proc_data, align 8, !tbaa !17
  %call3 = call i32 %16(%struct.gs_memory_retrying_s* %17, i8* %19) #2
  store i32 %call3, i32* %retry, align 4, !tbaa !21
  br label %for.cond

for.end:                                          ; preds = %if.then
  %20 = load i8*, i8** %temp, align 8, !tbaa !1
  %21 = bitcast i32* %retry to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast i8** %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = bitcast %struct.gs_memory_s** %target to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast %struct.gs_memory_retrying_s** %rmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  ret i8* %20
}

; Function Attrs: nounwind uwtable
define internal i8* @gs_retrying_alloc_struct(%struct.gs_memory_s* %mem, %struct.gs_memory_struct_type_s* %pstype, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %cname.addr = alloca i8*, align 8
  %rmem = alloca %struct.gs_memory_retrying_s*, align 8
  %target = alloca %struct.gs_memory_s*, align 8
  %temp = alloca i8*, align 8
  %retry = alloca i32, align 4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_retrying_s** %rmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_memory_retrying_s*
  store %struct.gs_memory_retrying_s* %2, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_s** %target to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %4, i32 0, i32 5
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target1, align 8, !tbaa !9
  store %struct.gs_memory_s* %5, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %6 = bitcast i8** %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %retry to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 1, i32* %retry, align 4, !tbaa !21
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %9 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !33
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %11 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %12 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* %9(%struct.gs_memory_s* %10, %struct.gs_memory_struct_type_s* %11, i8* %12) #2
  store i8* %call, i8** %temp, align 8, !tbaa !1
  %13 = load i8*, i8** %temp, align 8, !tbaa !1
  %cmp = icmp ne i8* %13, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.cond
  %14 = load i32, i32* %retry, align 4, !tbaa !21
  %cmp2 = icmp ne i32 %14, 1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.cond
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false
  %15 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %recover_proc = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %15, i32 0, i32 6
  %16 = load i32 (%struct.gs_memory_retrying_s*, i8*)*, i32 (%struct.gs_memory_retrying_s*, i8*)** %recover_proc, align 8, !tbaa !16
  %17 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %18 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %recover_proc_data = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %18, i32 0, i32 7
  %19 = load i8*, i8** %recover_proc_data, align 8, !tbaa !17
  %call3 = call i32 %16(%struct.gs_memory_retrying_s* %17, i8* %19) #2
  store i32 %call3, i32* %retry, align 4, !tbaa !21
  br label %for.cond

for.end:                                          ; preds = %if.then
  %20 = load i8*, i8** %temp, align 8, !tbaa !1
  %21 = bitcast i32* %retry to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast i8** %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = bitcast %struct.gs_memory_s** %target to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast %struct.gs_memory_retrying_s** %rmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  ret i8* %20
}

; Function Attrs: nounwind uwtable
define internal i8* @gs_retrying_alloc_struct_immovable(%struct.gs_memory_s* %mem, %struct.gs_memory_struct_type_s* %pstype, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %cname.addr = alloca i8*, align 8
  %rmem = alloca %struct.gs_memory_retrying_s*, align 8
  %target = alloca %struct.gs_memory_s*, align 8
  %temp = alloca i8*, align 8
  %retry = alloca i32, align 4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_retrying_s** %rmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_memory_retrying_s*
  store %struct.gs_memory_retrying_s* %2, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_s** %target to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %4, i32 0, i32 5
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target1, align 8, !tbaa !9
  store %struct.gs_memory_s* %5, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %6 = bitcast i8** %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %retry to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 1, i32* %retry, align 4, !tbaa !21
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 1
  %alloc_struct_immovable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 9
  %9 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct_immovable, align 8, !tbaa !34
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %11 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %12 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* %9(%struct.gs_memory_s* %10, %struct.gs_memory_struct_type_s* %11, i8* %12) #2
  store i8* %call, i8** %temp, align 8, !tbaa !1
  %13 = load i8*, i8** %temp, align 8, !tbaa !1
  %cmp = icmp ne i8* %13, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.cond
  %14 = load i32, i32* %retry, align 4, !tbaa !21
  %cmp2 = icmp ne i32 %14, 1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.cond
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false
  %15 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %recover_proc = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %15, i32 0, i32 6
  %16 = load i32 (%struct.gs_memory_retrying_s*, i8*)*, i32 (%struct.gs_memory_retrying_s*, i8*)** %recover_proc, align 8, !tbaa !16
  %17 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %18 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %recover_proc_data = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %18, i32 0, i32 7
  %19 = load i8*, i8** %recover_proc_data, align 8, !tbaa !17
  %call3 = call i32 %16(%struct.gs_memory_retrying_s* %17, i8* %19) #2
  store i32 %call3, i32* %retry, align 4, !tbaa !21
  br label %for.cond

for.end:                                          ; preds = %if.then
  %20 = load i8*, i8** %temp, align 8, !tbaa !1
  %21 = bitcast i32* %retry to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast i8** %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = bitcast %struct.gs_memory_s** %target to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast %struct.gs_memory_retrying_s** %rmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  ret i8* %20
}

; Function Attrs: nounwind uwtable
define internal i8* @gs_retrying_alloc_byte_array(%struct.gs_memory_s* %mem, i32 %num_elements, i32 %elt_size, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %num_elements.addr = alloca i32, align 4
  %elt_size.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  %rmem = alloca %struct.gs_memory_retrying_s*, align 8
  %target = alloca %struct.gs_memory_s*, align 8
  %temp = alloca i8*, align 8
  %retry = alloca i32, align 4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %num_elements, i32* %num_elements.addr, align 4, !tbaa !19
  store i32 %elt_size, i32* %elt_size.addr, align 4, !tbaa !19
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_retrying_s** %rmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_memory_retrying_s*
  store %struct.gs_memory_retrying_s* %2, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_s** %target to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %4, i32 0, i32 5
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target1, align 8, !tbaa !9
  store %struct.gs_memory_s* %5, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %6 = bitcast i8** %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %retry to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 1, i32* %retry, align 4, !tbaa !21
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %9 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !35
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %11 = load i32, i32* %num_elements.addr, align 4, !tbaa !19
  %12 = load i32, i32* %elt_size.addr, align 4, !tbaa !19
  %13 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* %9(%struct.gs_memory_s* %10, i32 %11, i32 %12, i8* %13) #2
  store i8* %call, i8** %temp, align 8, !tbaa !1
  %14 = load i8*, i8** %temp, align 8, !tbaa !1
  %cmp = icmp ne i8* %14, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.cond
  %15 = load i32, i32* %retry, align 4, !tbaa !21
  %cmp2 = icmp ne i32 %15, 1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.cond
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false
  %16 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %recover_proc = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %16, i32 0, i32 6
  %17 = load i32 (%struct.gs_memory_retrying_s*, i8*)*, i32 (%struct.gs_memory_retrying_s*, i8*)** %recover_proc, align 8, !tbaa !16
  %18 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %19 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %recover_proc_data = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %19, i32 0, i32 7
  %20 = load i8*, i8** %recover_proc_data, align 8, !tbaa !17
  %call3 = call i32 %17(%struct.gs_memory_retrying_s* %18, i8* %20) #2
  store i32 %call3, i32* %retry, align 4, !tbaa !21
  br label %for.cond

for.end:                                          ; preds = %if.then
  %21 = load i8*, i8** %temp, align 8, !tbaa !1
  %22 = bitcast i32* %retry to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast i8** %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast %struct.gs_memory_s** %target to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast %struct.gs_memory_retrying_s** %rmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  ret i8* %21
}

; Function Attrs: nounwind uwtable
define internal i8* @gs_retrying_alloc_byte_array_immovable(%struct.gs_memory_s* %mem, i32 %num_elements, i32 %elt_size, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %num_elements.addr = alloca i32, align 4
  %elt_size.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  %rmem = alloca %struct.gs_memory_retrying_s*, align 8
  %target = alloca %struct.gs_memory_s*, align 8
  %temp = alloca i8*, align 8
  %retry = alloca i32, align 4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %num_elements, i32* %num_elements.addr, align 4, !tbaa !19
  store i32 %elt_size, i32* %elt_size.addr, align 4, !tbaa !19
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_retrying_s** %rmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_memory_retrying_s*
  store %struct.gs_memory_retrying_s* %2, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_s** %target to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %4, i32 0, i32 5
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target1, align 8, !tbaa !9
  store %struct.gs_memory_s* %5, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %6 = bitcast i8** %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %retry to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 1, i32* %retry, align 4, !tbaa !21
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 1
  %alloc_byte_array_immovable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 11
  %9 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array_immovable, align 8, !tbaa !36
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %11 = load i32, i32* %num_elements.addr, align 4, !tbaa !19
  %12 = load i32, i32* %elt_size.addr, align 4, !tbaa !19
  %13 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* %9(%struct.gs_memory_s* %10, i32 %11, i32 %12, i8* %13) #2
  store i8* %call, i8** %temp, align 8, !tbaa !1
  %14 = load i8*, i8** %temp, align 8, !tbaa !1
  %cmp = icmp ne i8* %14, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.cond
  %15 = load i32, i32* %retry, align 4, !tbaa !21
  %cmp2 = icmp ne i32 %15, 1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.cond
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false
  %16 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %recover_proc = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %16, i32 0, i32 6
  %17 = load i32 (%struct.gs_memory_retrying_s*, i8*)*, i32 (%struct.gs_memory_retrying_s*, i8*)** %recover_proc, align 8, !tbaa !16
  %18 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %19 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %recover_proc_data = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %19, i32 0, i32 7
  %20 = load i8*, i8** %recover_proc_data, align 8, !tbaa !17
  %call3 = call i32 %17(%struct.gs_memory_retrying_s* %18, i8* %20) #2
  store i32 %call3, i32* %retry, align 4, !tbaa !21
  br label %for.cond

for.end:                                          ; preds = %if.then
  %21 = load i8*, i8** %temp, align 8, !tbaa !1
  %22 = bitcast i32* %retry to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast i8** %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast %struct.gs_memory_s** %target to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast %struct.gs_memory_retrying_s** %rmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  ret i8* %21
}

; Function Attrs: nounwind uwtable
define internal i8* @gs_retrying_alloc_struct_array(%struct.gs_memory_s* %mem, i32 %num_elements, %struct.gs_memory_struct_type_s* %pstype, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %num_elements.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %cname.addr = alloca i8*, align 8
  %rmem = alloca %struct.gs_memory_retrying_s*, align 8
  %target = alloca %struct.gs_memory_s*, align 8
  %temp = alloca i8*, align 8
  %retry = alloca i32, align 4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %num_elements, i32* %num_elements.addr, align 4, !tbaa !19
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_retrying_s** %rmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_memory_retrying_s*
  store %struct.gs_memory_retrying_s* %2, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_s** %target to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %4, i32 0, i32 5
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target1, align 8, !tbaa !9
  store %struct.gs_memory_s* %5, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %6 = bitcast i8** %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %retry to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 1, i32* %retry, align 4, !tbaa !21
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 1
  %alloc_struct_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 12
  %9 = load i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct_array, align 8, !tbaa !37
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %11 = load i32, i32* %num_elements.addr, align 4, !tbaa !19
  %12 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %13 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* %9(%struct.gs_memory_s* %10, i32 %11, %struct.gs_memory_struct_type_s* %12, i8* %13) #2
  store i8* %call, i8** %temp, align 8, !tbaa !1
  %14 = load i8*, i8** %temp, align 8, !tbaa !1
  %cmp = icmp ne i8* %14, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.cond
  %15 = load i32, i32* %retry, align 4, !tbaa !21
  %cmp2 = icmp ne i32 %15, 1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.cond
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false
  %16 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %recover_proc = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %16, i32 0, i32 6
  %17 = load i32 (%struct.gs_memory_retrying_s*, i8*)*, i32 (%struct.gs_memory_retrying_s*, i8*)** %recover_proc, align 8, !tbaa !16
  %18 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %19 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %recover_proc_data = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %19, i32 0, i32 7
  %20 = load i8*, i8** %recover_proc_data, align 8, !tbaa !17
  %call3 = call i32 %17(%struct.gs_memory_retrying_s* %18, i8* %20) #2
  store i32 %call3, i32* %retry, align 4, !tbaa !21
  br label %for.cond

for.end:                                          ; preds = %if.then
  %21 = load i8*, i8** %temp, align 8, !tbaa !1
  %22 = bitcast i32* %retry to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast i8** %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast %struct.gs_memory_s** %target to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast %struct.gs_memory_retrying_s** %rmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  ret i8* %21
}

; Function Attrs: nounwind uwtable
define internal i8* @gs_retrying_alloc_struct_array_immovable(%struct.gs_memory_s* %mem, i32 %num_elements, %struct.gs_memory_struct_type_s* %pstype, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %num_elements.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %cname.addr = alloca i8*, align 8
  %rmem = alloca %struct.gs_memory_retrying_s*, align 8
  %target = alloca %struct.gs_memory_s*, align 8
  %temp = alloca i8*, align 8
  %retry = alloca i32, align 4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %num_elements, i32* %num_elements.addr, align 4, !tbaa !19
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_retrying_s** %rmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_memory_retrying_s*
  store %struct.gs_memory_retrying_s* %2, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_s** %target to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %4, i32 0, i32 5
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target1, align 8, !tbaa !9
  store %struct.gs_memory_s* %5, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %6 = bitcast i8** %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %retry to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 1, i32* %retry, align 4, !tbaa !21
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 1
  %alloc_struct_array_immovable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 13
  %9 = load i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct_array_immovable, align 8, !tbaa !38
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %11 = load i32, i32* %num_elements.addr, align 4, !tbaa !19
  %12 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %13 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* %9(%struct.gs_memory_s* %10, i32 %11, %struct.gs_memory_struct_type_s* %12, i8* %13) #2
  store i8* %call, i8** %temp, align 8, !tbaa !1
  %14 = load i8*, i8** %temp, align 8, !tbaa !1
  %cmp = icmp ne i8* %14, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.cond
  %15 = load i32, i32* %retry, align 4, !tbaa !21
  %cmp2 = icmp ne i32 %15, 1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.cond
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false
  %16 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %recover_proc = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %16, i32 0, i32 6
  %17 = load i32 (%struct.gs_memory_retrying_s*, i8*)*, i32 (%struct.gs_memory_retrying_s*, i8*)** %recover_proc, align 8, !tbaa !16
  %18 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %19 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %recover_proc_data = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %19, i32 0, i32 7
  %20 = load i8*, i8** %recover_proc_data, align 8, !tbaa !17
  %call3 = call i32 %17(%struct.gs_memory_retrying_s* %18, i8* %20) #2
  store i32 %call3, i32* %retry, align 4, !tbaa !21
  br label %for.cond

for.end:                                          ; preds = %if.then
  %21 = load i8*, i8** %temp, align 8, !tbaa !1
  %22 = bitcast i32* %retry to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast i8** %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast %struct.gs_memory_s** %target to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast %struct.gs_memory_retrying_s** %rmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  ret i8* %21
}

; Function Attrs: nounwind uwtable
define internal i32 @gs_forward_object_size(%struct.gs_memory_s* %mem, i8* %ptr) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %ptr.addr = alloca i8*, align 8
  %rmem = alloca %struct.gs_memory_retrying_s*, align 8
  %target = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_retrying_s** %rmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_memory_retrying_s*
  store %struct.gs_memory_retrying_s* %2, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_s** %target to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %4, i32 0, i32 5
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target1, align 8, !tbaa !9
  store %struct.gs_memory_s* %5, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 1
  %object_size = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 14
  %7 = load i32 (%struct.gs_memory_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)** %object_size, align 8, !tbaa !39
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %9 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %call = call i32 %7(%struct.gs_memory_s* %8, i8* %9) #2
  %10 = bitcast %struct.gs_memory_s** %target to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  %11 = bitcast %struct.gs_memory_retrying_s** %rmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_memory_struct_type_s* @gs_forward_object_type(%struct.gs_memory_s* %mem, i8* %ptr) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %ptr.addr = alloca i8*, align 8
  %rmem = alloca %struct.gs_memory_retrying_s*, align 8
  %target = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_retrying_s** %rmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_memory_retrying_s*
  store %struct.gs_memory_retrying_s* %2, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_s** %target to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %4, i32 0, i32 5
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target1, align 8, !tbaa !9
  store %struct.gs_memory_s* %5, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 1
  %object_type = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 15
  %7 = load %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)** %object_type, align 8, !tbaa !40
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %9 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %call = call %struct.gs_memory_struct_type_s* %7(%struct.gs_memory_s* %8, i8* %9) #2
  %10 = bitcast %struct.gs_memory_s** %target to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  %11 = bitcast %struct.gs_memory_retrying_s** %rmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  ret %struct.gs_memory_struct_type_s* %call
}

; Function Attrs: nounwind uwtable
define internal i8* @gs_retrying_alloc_string(%struct.gs_memory_s* %mem, i32 %nbytes, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %nbytes.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  %rmem = alloca %struct.gs_memory_retrying_s*, align 8
  %target = alloca %struct.gs_memory_s*, align 8
  %temp = alloca i8*, align 8
  %retry = alloca i32, align 4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %nbytes, i32* %nbytes.addr, align 4, !tbaa !19
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_retrying_s** %rmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_memory_retrying_s*
  store %struct.gs_memory_retrying_s* %2, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_s** %target to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %4, i32 0, i32 5
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target1, align 8, !tbaa !9
  store %struct.gs_memory_s* %5, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %6 = bitcast i8** %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %retry to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 1, i32* %retry, align 4, !tbaa !21
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 1
  %alloc_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 16
  %9 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string, align 8, !tbaa !41
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %11 = load i32, i32* %nbytes.addr, align 4, !tbaa !19
  %12 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* %9(%struct.gs_memory_s* %10, i32 %11, i8* %12) #2
  store i8* %call, i8** %temp, align 8, !tbaa !1
  %13 = load i8*, i8** %temp, align 8, !tbaa !1
  %cmp = icmp ne i8* %13, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.cond
  %14 = load i32, i32* %retry, align 4, !tbaa !21
  %cmp2 = icmp ne i32 %14, 1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.cond
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false
  %15 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %recover_proc = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %15, i32 0, i32 6
  %16 = load i32 (%struct.gs_memory_retrying_s*, i8*)*, i32 (%struct.gs_memory_retrying_s*, i8*)** %recover_proc, align 8, !tbaa !16
  %17 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %18 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %recover_proc_data = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %18, i32 0, i32 7
  %19 = load i8*, i8** %recover_proc_data, align 8, !tbaa !17
  %call3 = call i32 %16(%struct.gs_memory_retrying_s* %17, i8* %19) #2
  store i32 %call3, i32* %retry, align 4, !tbaa !21
  br label %for.cond

for.end:                                          ; preds = %if.then
  %20 = load i8*, i8** %temp, align 8, !tbaa !1
  %21 = bitcast i32* %retry to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast i8** %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = bitcast %struct.gs_memory_s** %target to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast %struct.gs_memory_retrying_s** %rmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  ret i8* %20
}

; Function Attrs: nounwind uwtable
define internal i8* @gs_retrying_alloc_string_immovable(%struct.gs_memory_s* %mem, i32 %nbytes, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %nbytes.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  %rmem = alloca %struct.gs_memory_retrying_s*, align 8
  %target = alloca %struct.gs_memory_s*, align 8
  %temp = alloca i8*, align 8
  %retry = alloca i32, align 4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %nbytes, i32* %nbytes.addr, align 4, !tbaa !19
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_retrying_s** %rmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_memory_retrying_s*
  store %struct.gs_memory_retrying_s* %2, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_s** %target to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %4, i32 0, i32 5
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target1, align 8, !tbaa !9
  store %struct.gs_memory_s* %5, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %6 = bitcast i8** %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %retry to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 1, i32* %retry, align 4, !tbaa !21
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 1
  %alloc_string_immovable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 17
  %9 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string_immovable, align 8, !tbaa !42
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %11 = load i32, i32* %nbytes.addr, align 4, !tbaa !19
  %12 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* %9(%struct.gs_memory_s* %10, i32 %11, i8* %12) #2
  store i8* %call, i8** %temp, align 8, !tbaa !1
  %13 = load i8*, i8** %temp, align 8, !tbaa !1
  %cmp = icmp ne i8* %13, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.cond
  %14 = load i32, i32* %retry, align 4, !tbaa !21
  %cmp2 = icmp ne i32 %14, 1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.cond
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false
  %15 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %recover_proc = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %15, i32 0, i32 6
  %16 = load i32 (%struct.gs_memory_retrying_s*, i8*)*, i32 (%struct.gs_memory_retrying_s*, i8*)** %recover_proc, align 8, !tbaa !16
  %17 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %18 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %recover_proc_data = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %18, i32 0, i32 7
  %19 = load i8*, i8** %recover_proc_data, align 8, !tbaa !17
  %call3 = call i32 %16(%struct.gs_memory_retrying_s* %17, i8* %19) #2
  store i32 %call3, i32* %retry, align 4, !tbaa !21
  br label %for.cond

for.end:                                          ; preds = %if.then
  %20 = load i8*, i8** %temp, align 8, !tbaa !1
  %21 = bitcast i32* %retry to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast i8** %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = bitcast %struct.gs_memory_s** %target to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast %struct.gs_memory_retrying_s** %rmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  ret i8* %20
}

; Function Attrs: nounwind uwtable
define internal i8* @gs_retrying_resize_string(%struct.gs_memory_s* %mem, i8* %data, i32 %old_num, i32 %new_num, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %data.addr = alloca i8*, align 8
  %old_num.addr = alloca i32, align 4
  %new_num.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  %rmem = alloca %struct.gs_memory_retrying_s*, align 8
  %target = alloca %struct.gs_memory_s*, align 8
  %temp = alloca i8*, align 8
  %retry = alloca i32, align 4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %old_num, i32* %old_num.addr, align 4, !tbaa !19
  store i32 %new_num, i32* %new_num.addr, align 4, !tbaa !19
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_retrying_s** %rmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_memory_retrying_s*
  store %struct.gs_memory_retrying_s* %2, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_s** %target to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %4, i32 0, i32 5
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target1, align 8, !tbaa !9
  store %struct.gs_memory_s* %5, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %6 = bitcast i8** %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %retry to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 1, i32* %retry, align 4, !tbaa !21
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 1
  %resize_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 18
  %9 = load i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)** %resize_string, align 8, !tbaa !43
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %11 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %12 = load i32, i32* %old_num.addr, align 4, !tbaa !19
  %13 = load i32, i32* %new_num.addr, align 4, !tbaa !19
  %14 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* %9(%struct.gs_memory_s* %10, i8* %11, i32 %12, i32 %13, i8* %14) #2
  store i8* %call, i8** %temp, align 8, !tbaa !1
  %15 = load i8*, i8** %temp, align 8, !tbaa !1
  %cmp = icmp ne i8* %15, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.cond
  %16 = load i32, i32* %retry, align 4, !tbaa !21
  %cmp2 = icmp ne i32 %16, 1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.cond
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false
  %17 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %recover_proc = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %17, i32 0, i32 6
  %18 = load i32 (%struct.gs_memory_retrying_s*, i8*)*, i32 (%struct.gs_memory_retrying_s*, i8*)** %recover_proc, align 8, !tbaa !16
  %19 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %20 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %recover_proc_data = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %20, i32 0, i32 7
  %21 = load i8*, i8** %recover_proc_data, align 8, !tbaa !17
  %call3 = call i32 %18(%struct.gs_memory_retrying_s* %19, i8* %21) #2
  store i32 %call3, i32* %retry, align 4, !tbaa !21
  br label %for.cond

for.end:                                          ; preds = %if.then
  %22 = load i8*, i8** %temp, align 8, !tbaa !1
  %23 = bitcast i32* %retry to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = bitcast i8** %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast %struct.gs_memory_s** %target to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = bitcast %struct.gs_memory_retrying_s** %rmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  ret i8* %22
}

; Function Attrs: nounwind uwtable
define internal void @gs_forward_free_string(%struct.gs_memory_s* %mem, i8* %data, i32 %nbytes, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %data.addr = alloca i8*, align 8
  %nbytes.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  %rmem = alloca %struct.gs_memory_retrying_s*, align 8
  %target = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %nbytes, i32* %nbytes.addr, align 4, !tbaa !19
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_retrying_s** %rmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_memory_retrying_s*
  store %struct.gs_memory_retrying_s* %2, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_s** %target to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %4, i32 0, i32 5
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target1, align 8, !tbaa !9
  store %struct.gs_memory_s* %5, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 1
  %free_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 19
  %7 = load void (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)** %free_string, align 8, !tbaa !44
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %9 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %10 = load i32, i32* %nbytes.addr, align 4, !tbaa !19
  %11 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %7(%struct.gs_memory_s* %8, i8* %9, i32 %10, i8* %11) #2
  %12 = bitcast %struct.gs_memory_s** %target to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  %13 = bitcast %struct.gs_memory_retrying_s** %rmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gs_retrying_register_root(%struct.gs_memory_s* %mem, %struct.gs_gc_root_s* %rp, %struct.gs_ptr_procs_s* %ptype, i8** %up, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %rp.addr = alloca %struct.gs_gc_root_s*, align 8
  %ptype.addr = alloca %struct.gs_ptr_procs_s*, align 8
  %up.addr = alloca i8**, align 8
  %cname.addr = alloca i8*, align 8
  %rmem = alloca %struct.gs_memory_retrying_s*, align 8
  %target = alloca %struct.gs_memory_s*, align 8
  %temp = alloca i32, align 4
  %retry = alloca i32, align 4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_gc_root_s* %rp, %struct.gs_gc_root_s** %rp.addr, align 8, !tbaa !1
  store %struct.gs_ptr_procs_s* %ptype, %struct.gs_ptr_procs_s** %ptype.addr, align 8, !tbaa !1
  store i8** %up, i8*** %up.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_retrying_s** %rmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_memory_retrying_s*
  store %struct.gs_memory_retrying_s* %2, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_s** %target to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %4, i32 0, i32 5
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target1, align 8, !tbaa !9
  store %struct.gs_memory_s* %5, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %6 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %retry to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 1, i32* %retry, align 4, !tbaa !21
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 1
  %register_root = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 20
  %9 = load i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)** %register_root, align 8, !tbaa !45
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %11 = load %struct.gs_gc_root_s*, %struct.gs_gc_root_s** %rp.addr, align 8, !tbaa !1
  %12 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %ptype.addr, align 8, !tbaa !1
  %13 = load i8**, i8*** %up.addr, align 8, !tbaa !1
  %14 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i32 %9(%struct.gs_memory_s* %10, %struct.gs_gc_root_s* %11, %struct.gs_ptr_procs_s* %12, i8** %13, i8* %14) #2
  store i32 %call, i32* %temp, align 4, !tbaa !19
  %15 = load i32, i32* %temp, align 4, !tbaa !19
  %cmp = icmp ne i32 %15, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.cond
  %16 = load i32, i32* %retry, align 4, !tbaa !21
  %cmp2 = icmp ne i32 %16, 1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.cond
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false
  %17 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %recover_proc = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %17, i32 0, i32 6
  %18 = load i32 (%struct.gs_memory_retrying_s*, i8*)*, i32 (%struct.gs_memory_retrying_s*, i8*)** %recover_proc, align 8, !tbaa !16
  %19 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %20 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %recover_proc_data = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %20, i32 0, i32 7
  %21 = load i8*, i8** %recover_proc_data, align 8, !tbaa !17
  %call3 = call i32 %18(%struct.gs_memory_retrying_s* %19, i8* %21) #2
  store i32 %call3, i32* %retry, align 4, !tbaa !21
  br label %for.cond

for.end:                                          ; preds = %if.then
  %22 = load i32, i32* %temp, align 4, !tbaa !19
  %23 = bitcast i32* %retry to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast %struct.gs_memory_s** %target to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = bitcast %struct.gs_memory_retrying_s** %rmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal void @gs_forward_unregister_root(%struct.gs_memory_s* %mem, %struct.gs_gc_root_s* %rp, i8* %cname) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %rp.addr = alloca %struct.gs_gc_root_s*, align 8
  %cname.addr = alloca i8*, align 8
  %rmem = alloca %struct.gs_memory_retrying_s*, align 8
  %target = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_gc_root_s* %rp, %struct.gs_gc_root_s** %rp.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_retrying_s** %rmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_memory_retrying_s*
  store %struct.gs_memory_retrying_s* %2, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_s** %target to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %4, i32 0, i32 5
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target1, align 8, !tbaa !9
  store %struct.gs_memory_s* %5, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 1
  %unregister_root = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 21
  %7 = load void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)** %unregister_root, align 8, !tbaa !46
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %9 = load %struct.gs_gc_root_s*, %struct.gs_gc_root_s** %rp.addr, align 8, !tbaa !1
  %10 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %7(%struct.gs_memory_s* %8, %struct.gs_gc_root_s* %9, i8* %10) #2
  %11 = bitcast %struct.gs_memory_s** %target to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  %12 = bitcast %struct.gs_memory_retrying_s** %rmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gs_forward_enable_free(%struct.gs_memory_s* %mem, i32 %enable) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %enable.addr = alloca i32, align 4
  %rmem = alloca %struct.gs_memory_retrying_s*, align 8
  %target = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %enable, i32* %enable.addr, align 4, !tbaa !19
  %0 = bitcast %struct.gs_memory_retrying_s** %rmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_memory_s* %1 to %struct.gs_memory_retrying_s*
  store %struct.gs_memory_retrying_s* %2, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_s** %target to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_memory_retrying_s*, %struct.gs_memory_retrying_s** %rmem, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gs_memory_retrying_s, %struct.gs_memory_retrying_s* %4, i32 0, i32 5
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target1, align 8, !tbaa !9
  store %struct.gs_memory_s* %5, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 1
  %enable_free = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 22
  %7 = load void (%struct.gs_memory_s*, i32)*, void (%struct.gs_memory_s*, i32)** %enable_free, align 8, !tbaa !47
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %target, align 8, !tbaa !1
  %9 = load i32, i32* %enable.addr, align 4, !tbaa !19
  call void %7(%struct.gs_memory_s* %8, i32 %9) #2
  %10 = bitcast %struct.gs_memory_s** %target to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  %11 = bitcast %struct.gs_memory_retrying_s** %rmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 0}
!6 = !{!"gs_memory_retrying_s", !2, i64 0, !7, i64 8, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232}
!7 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!8 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 8, !1, i64 32, i64 8, !1, i64 40, i64 8, !1, i64 48, i64 8, !1, i64 56, i64 8, !1, i64 64, i64 8, !1, i64 72, i64 8, !1, i64 80, i64 8, !1, i64 88, i64 8, !1, i64 96, i64 8, !1, i64 104, i64 8, !1, i64 112, i64 8, !1, i64 120, i64 8, !1, i64 128, i64 8, !1, i64 136, i64 8, !1, i64 144, i64 8, !1, i64 152, i64 8, !1, i64 160, i64 8, !1, i64 168, i64 8, !1, i64 176, i64 8, !1}
!9 = !{!6, !2, i64 216}
!10 = !{!11, !2, i64 192}
!11 = !{!"gs_memory_s", !2, i64 0, !7, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!12 = !{!6, !2, i64 192}
!13 = !{!6, !2, i64 200}
!14 = !{!11, !2, i64 208}
!15 = !{!6, !2, i64 208}
!16 = !{!6, !2, i64 224}
!17 = !{!6, !2, i64 232}
!18 = !{!11, !2, i64 48}
!19 = !{!20, !20, i64 0}
!20 = !{!"int", !3, i64 0}
!21 = !{!3, !3, i64 0}
!22 = !{!11, !2, i64 8}
!23 = !{!11, !2, i64 16}
!24 = !{!11, !2, i64 24}
!25 = !{!11, !2, i64 0}
!26 = !{!11, !2, i64 32}
!27 = !{!11, !2, i64 64}
!28 = !{!11, !2, i64 40}
!29 = !{!30, !20, i64 16}
!30 = !{!"gs_memory_status_s", !31, i64 0, !31, i64 8, !20, i64 16}
!31 = !{!"long", !3, i64 0}
!32 = !{!11, !2, i64 56}
!33 = !{!11, !2, i64 72}
!34 = !{!11, !2, i64 80}
!35 = !{!11, !2, i64 88}
!36 = !{!11, !2, i64 96}
!37 = !{!11, !2, i64 104}
!38 = !{!11, !2, i64 112}
!39 = !{!11, !2, i64 120}
!40 = !{!11, !2, i64 128}
!41 = !{!11, !2, i64 136}
!42 = !{!11, !2, i64 144}
!43 = !{!11, !2, i64 152}
!44 = !{!11, !2, i64 160}
!45 = !{!11, !2, i64 168}
!46 = !{!11, !2, i64 176}
!47 = !{!11, !2, i64 184}
