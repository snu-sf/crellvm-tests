; ModuleID = './ireclaim.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.op_def = type { i8*, i32 (%struct.gs_context_state_s*)* }
%struct.gs_context_state_s = type { %struct.gs_state_s*, %struct.gs_dual_memory_s, i32, %struct.ref_s, %struct.ref_s, i64, i64, i64, i32, i32, %struct.ref_s, %struct.ref_s, i32, i32, i32, i32, %struct.gs_file_path_s*, [3 x %struct.ref_s], %struct.stream_s*, %struct.op_array_table_s, %struct.op_array_table_s, i32 (%struct.gs_context_state_s**)*, i32, i32 (%struct.gs_context_state_s**)*, %struct.dict_stack_s, %struct.exec_stack_s, %struct.op_stack_s, %struct.i_plugin_holder_s* }
%struct.gs_state_s = type opaque
%struct.gs_dual_memory_s = type { %struct.gs_ref_memory_s*, %struct.vm_spaces_s, i32, i32 (%struct.gs_dual_memory_s*, i32)*, i32, i32 }
%struct.gs_ref_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32, i32, i32, %struct.gs_memory_gc_status_s, i32, i64, %struct.chunk_s*, %struct.chunk_s*, %struct.chunk_s, %struct.chunk_s*, %struct.chunk_locator_s, i64, i64, %struct.lost_, i32, i32, i32, %struct.stream_s*, %struct.ref_s*, %struct.gs_gc_root_s*, i32, %struct.alloc_change_s*, %struct.alloc_change_s*, %struct.alloc_save_s*, i64, i64, %struct.alloc_save_s*, %struct.gs_memory_status_s, i32, [102 x %struct.obj_header_s*] }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type { i8*, i8*, %struct.gx_io_device_procs_s, i8* }
%struct.gx_io_device_procs_s = type { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.file_enum_s = type opaque
%struct.gs_param_list_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_gc_status_s = type { i64, i64, i32*, i32, i32, i64 }
%struct.chunk_s = type { %struct.chunk_head_s*, i8*, i8*, i8*, %struct.obj_header_s*, i8*, i8*, i8*, i8*, %struct.chunk_s*, %struct.chunk_s*, %struct.chunk_s*, i32, i32, i32*, i32, i8*, i8*, i32, i8*, i32*, i8*, i8*, i8* }
%struct.chunk_head_s = type { i8*, %struct.obj_header_s }
%struct.obj_header_s = type { %union._d }
%union._d = type { %struct.obj_header_data_s }
%struct.obj_header_data_s = type { %union._f, i32, %union._t, i64 }
%union._f = type { %struct._h }
%struct._h = type { i32 }
%union._t = type { %struct.gs_memory_struct_type_s* }
%struct.chunk_locator_s = type { %struct.gs_ref_memory_s*, %struct.chunk_s* }
%struct.lost_ = type { i64, i64, i64 }
%struct.gs_gc_root_s = type { %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i32 }
%struct.alloc_change_s = type { %struct.alloc_change_s*, i16*, %struct.ref_s, i16 }
%struct.alloc_save_s = type { %struct.gs_ref_memory_s, %struct.vm_spaces_s, i32, i32, i64, i8* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.vm_spaces_s = type { void (%struct.vm_spaces_s*, i32)*, %union.anon }
%union.anon = type { [4 x %struct.gs_ref_memory_s*] }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16, i32 }
%union.v = type { i64 }
%struct.gs_file_path_s = type opaque
%struct.stream_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %union.stream_cursor_s, i8*, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, %struct.stream_s*, i32, i32, %struct.stream_state_s*, i16, i16, %struct.stream_s*, %struct.stream_s*, i32, i32, i32 (%struct.stream_s*)*, %struct._IO_FILE*, %struct.gs_const_string_s, i32, i64, i64 }
%struct.stream_template_s = type opaque
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.gs_string_s = type { i8*, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, void (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_s*, i32)* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, {}*, i32, [80 x i8] }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.op_array_table_s = type { %struct.ref_s, i16*, i32, i32, i32 }
%struct.dict_stack_s = type { %struct.ref_stack_s, i32, i32, i32, i16*, i32, %struct.ref_s*, %struct.ref_s }
%struct.ref_stack_s = type { %struct.ref_s*, %struct.ref_s*, %struct.ref_s*, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, %struct.ref_stack_params_s*, %struct.gs_ref_memory_s* }
%struct.ref_stack_params_s = type opaque
%struct.exec_stack_s = type { %struct.ref_stack_s, %struct.ref_s* }
%struct.op_stack_s = type { %struct.ref_stack_s }
%struct.i_plugin_holder_s = type opaque
%struct._ssn = type { %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s* }

@ireclaim_l2_op_defs = constant [1 x %struct.op_def] [%struct.op_def { i8* null, i32 (%struct.gs_context_state_s*)* @ireclaim_init }], align 16
@.str = private unnamed_addr constant [13 x i8] c"i_ctx_p root\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @ireclaim_init(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 1
  %reclaim = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 3
  store i32 (%struct.gs_dual_memory_s*, i32)* @ireclaim, i32 (%struct.gs_dual_memory_s*, i32)** %reclaim, align 8, !tbaa !5
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @ireclaim(%struct.gs_dual_memory_s* %dmem, i32 %space) #0 {
entry:
  %retval = alloca i32, align 4
  %dmem.addr = alloca %struct.gs_dual_memory_s*, align 8
  %space.addr = alloca i32, align 4
  %global = alloca i32, align 4
  %mem = alloca %struct.gs_ref_memory_s*, align 8
  %i = alloca i32, align 4
  %stats = alloca %struct.gs_memory_status_s, align 8
  %allocated = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_dual_memory_s* %dmem, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  store i32 %space, i32* %space.addr, align 4, !tbaa !19
  %0 = bitcast i32* %global to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.gs_ref_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i32, i32* %space.addr, align 4, !tbaa !19
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %4, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon* %memories to %struct._ssn*
  %global1 = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 2
  %5 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %global1, align 8, !tbaa !20
  store %struct.gs_ref_memory_s* %5, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load i32, i32* %i, align 4, !tbaa !19
  %conv = sext i32 %6 to i64
  %cmp2 = icmp ult i64 %conv, 4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %spaces4 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %8, i32 0, i32 1
  %memories5 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces4, i32 0, i32 1
  %indexed = bitcast %union.anon* %memories5 to [4 x %struct.gs_ref_memory_s*]*
  %arrayidx = getelementptr inbounds [4 x %struct.gs_ref_memory_s*], [4 x %struct.gs_ref_memory_s*]* %indexed, i32 0, i64 %idxprom
  %9 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %arrayidx, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %9, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %10 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %cmp6 = icmp eq %struct.gs_ref_memory_s* %10, null
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %11 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %gc_status = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %11, i32 0, i32 8
  %requested = getelementptr inbounds %struct.gs_memory_gc_status_s, %struct.gs_memory_gc_status_s* %gc_status, i32 0, i32 5
  %12 = load i64, i64* %requested, align 8, !tbaa !22
  %cmp9 = icmp sgt i64 %12, 0
  br i1 %cmp9, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %13 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %stable_memory = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %13, i32 0, i32 0
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !30
  %15 = bitcast %struct.gs_memory_s* %14 to %struct.gs_ref_memory_s*
  %gc_status11 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %15, i32 0, i32 8
  %requested12 = getelementptr inbounds %struct.gs_memory_gc_status_s, %struct.gs_memory_gc_status_s* %gc_status11, i32 0, i32 5
  %16 = load i64, i64* %requested12, align 8, !tbaa !22
  %cmp13 = icmp sgt i64 %16, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %lor.lhs.false, %if.end
  br label %for.end

if.end.16:                                        ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.16, %if.then.8
  %17 = load i32, i32* %i, align 4, !tbaa !19
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %if.then.15, %for.cond
  %18 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  br label %if.end.22

if.else:                                          ; preds = %entry
  %19 = load i32, i32* %space.addr, align 4, !tbaa !19
  %shr = ashr i32 %19, 2
  %idxprom17 = sext i32 %shr to i64
  %20 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %spaces18 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %20, i32 0, i32 1
  %memories19 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces18, i32 0, i32 1
  %indexed20 = bitcast %union.anon* %memories19 to [4 x %struct.gs_ref_memory_s*]*
  %arrayidx21 = getelementptr inbounds [4 x %struct.gs_ref_memory_s*], [4 x %struct.gs_ref_memory_s*]* %indexed20, i32 0, i64 %idxprom17
  %21 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %arrayidx21, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %21, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %for.end
  br label %do.body

do.body:                                          ; preds = %if.end.22
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %22 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %space23 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %22, i32 0, i32 7
  %23 = load i32, i32* %space23, align 4, !tbaa !31
  %cmp24 = icmp ne i32 %23, 12
  %conv25 = zext i1 %cmp24 to i32
  store i32 %conv25, i32* %global, align 4, !tbaa !19
  %24 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  call void @ialloc_reset_requested(%struct.gs_dual_memory_s* %24) #3
  %25 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %26 = load i32, i32* %global, align 4, !tbaa !19
  call void @gs_vmreclaim(%struct.gs_dual_memory_s* %25, i32 %26) #3
  %27 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  call void @ialloc_set_limit(%struct.gs_ref_memory_s* %27) #3
  %28 = load i32, i32* %space.addr, align 4, !tbaa !19
  %cmp26 = icmp slt i32 %28, 0
  br i1 %cmp26, label %if.then.28, label %if.end.46

if.then.28:                                       ; preds = %do.end
  %29 = bitcast %struct.gs_memory_status_s* %stats to i8*
  call void @llvm.lifetime.start(i64 24, i8* %29) #1
  %30 = bitcast i64* %allocated to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #1
  %31 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %32 = bitcast %struct.gs_ref_memory_s* %31 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %32, i32 0, i32 1
  %status = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 4
  %33 = load void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)** %status, align 8, !tbaa !32
  %34 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %35 = bitcast %struct.gs_ref_memory_s* %34 to %struct.gs_memory_s*
  call void %33(%struct.gs_memory_s* %35, %struct.gs_memory_status_s* %stats) #3
  %allocated29 = getelementptr inbounds %struct.gs_memory_status_s, %struct.gs_memory_status_s* %stats, i32 0, i32 0
  %36 = load i64, i64* %allocated29, align 8, !tbaa !34
  store i64 %36, i64* %allocated, align 8, !tbaa !35
  %37 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %stable_memory30 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %37, i32 0, i32 0
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory30, align 8, !tbaa !30
  %39 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %40 = bitcast %struct.gs_ref_memory_s* %39 to %struct.gs_memory_s*
  %cmp31 = icmp ne %struct.gs_memory_s* %38, %40
  br i1 %cmp31, label %if.then.33, label %if.end.39

if.then.33:                                       ; preds = %if.then.28
  %41 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %stable_memory34 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %41, i32 0, i32 0
  %42 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory34, align 8, !tbaa !30
  %procs35 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %42, i32 0, i32 1
  %status36 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs35, i32 0, i32 4
  %43 = load void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)** %status36, align 8, !tbaa !32
  %44 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %stable_memory37 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %44, i32 0, i32 0
  %45 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory37, align 8, !tbaa !30
  call void %43(%struct.gs_memory_s* %45, %struct.gs_memory_status_s* %stats) #3
  %allocated38 = getelementptr inbounds %struct.gs_memory_status_s, %struct.gs_memory_status_s* %stats, i32 0, i32 0
  %46 = load i64, i64* %allocated38, align 8, !tbaa !34
  %47 = load i64, i64* %allocated, align 8, !tbaa !35
  %add = add i64 %47, %46
  store i64 %add, i64* %allocated, align 8, !tbaa !35
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.33, %if.then.28
  %48 = load i64, i64* %allocated, align 8, !tbaa !35
  %49 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %gc_status40 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %49, i32 0, i32 8
  %max_vm = getelementptr inbounds %struct.gs_memory_gc_status_s, %struct.gs_memory_gc_status_s* %gc_status40, i32 0, i32 1
  %50 = load i64, i64* %max_vm, align 8, !tbaa !36
  %cmp41 = icmp uge i64 %48, %50
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.39
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.44:                                        ; preds = %if.end.39
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.44, %if.then.43
  %51 = bitcast i64* %allocated to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = bitcast %struct.gs_memory_status_s* %stats to i8*
  call void @llvm.lifetime.end(i64 24, i8* %52) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.47 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.46

if.end.46:                                        ; preds = %cleanup.cont, %do.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.47

cleanup.47:                                       ; preds = %if.end.46, %cleanup
  %53 = bitcast %struct.gs_ref_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = bitcast i32* %global to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  %55 = load i32, i32* %retval
  ret i32 %55
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare void @ialloc_reset_requested(%struct.gs_dual_memory_s*) #2

; Function Attrs: nounwind uwtable
define internal void @gs_vmreclaim(%struct.gs_dual_memory_s* %dmem, i32 %global) #0 {
entry:
  %dmem.addr = alloca %struct.gs_dual_memory_s*, align 8
  %global.addr = alloca i32, align 4
  %i_ctx_p = alloca %struct.gs_context_state_s*, align 8
  %lmem = alloca %struct.gs_ref_memory_s*, align 8
  %code = alloca i32, align 4
  %memories1 = alloca [5 x %struct.gs_ref_memory_s*], align 16
  %mem = alloca %struct.gs_ref_memory_s*, align 8
  %nmem = alloca i32, align 4
  %i = alloca i32, align 4
  %mem36 = alloca %struct.gs_ref_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  %ctxp = alloca i8*, align 8
  %context_root = alloca %struct.gs_gc_root_s, align 8
  store %struct.gs_dual_memory_s* %dmem, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  store i32 %global, i32* %global.addr, align 4, !tbaa !19
  %0 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_dual_memory_s* %1 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 sub (i64 0, i64 sext (i32 ptrtoint (%struct.gs_dual_memory_s* getelementptr inbounds (%struct.gs_context_state_s, %struct.gs_context_state_s* null, i32 0, i32 1) to i32) to i64))
  %3 = bitcast i8* %add.ptr to %struct.gs_context_state_s*
  store %struct.gs_context_state_s* %3, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %4 = bitcast %struct.gs_ref_memory_s** %lmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %5, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon* %memories to %struct._ssn*
  %local = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 3
  %6 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local, align 8, !tbaa !37
  store %struct.gs_ref_memory_s* %6, %struct.gs_ref_memory_s** %lmem, align 8, !tbaa !1
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %call = call i32 @context_state_store(%struct.gs_context_state_s* %8) #3
  store i32 %call, i32* %code, align 4, !tbaa !19
  %9 = bitcast [5 x %struct.gs_ref_memory_s*]* %memories1 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %9) #1
  %10 = bitcast %struct.gs_ref_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i32* %nmem to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %spaces2 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %13, i32 0, i32 1
  %memories3 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces2, i32 0, i32 1
  %named4 = bitcast %union.anon* %memories3 to %struct._ssn*
  %system = getelementptr inbounds %struct._ssn, %struct._ssn* %named4, i32 0, i32 1
  %14 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %system, align 8, !tbaa !38
  %arrayidx = getelementptr inbounds [5 x %struct.gs_ref_memory_s*], [5 x %struct.gs_ref_memory_s*]* %memories1, i32 0, i64 0
  store %struct.gs_ref_memory_s* %14, %struct.gs_ref_memory_s** %arrayidx, align 8, !tbaa !1
  %15 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %spaces5 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %15, i32 0, i32 1
  %memories6 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces5, i32 0, i32 1
  %named7 = bitcast %union.anon* %memories6 to %struct._ssn*
  %global8 = getelementptr inbounds %struct._ssn, %struct._ssn* %named7, i32 0, i32 2
  %16 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %global8, align 8, !tbaa !20
  store %struct.gs_ref_memory_s* %16, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds [5 x %struct.gs_ref_memory_s*], [5 x %struct.gs_ref_memory_s*]* %memories1, i32 0, i64 1
  store %struct.gs_ref_memory_s* %16, %struct.gs_ref_memory_s** %arrayidx9, align 8, !tbaa !1
  store i32 2, i32* %nmem, align 4, !tbaa !19
  %17 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %lmem, align 8, !tbaa !1
  %18 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %spaces10 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %18, i32 0, i32 1
  %memories11 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces10, i32 0, i32 1
  %named12 = bitcast %union.anon* %memories11 to %struct._ssn*
  %global13 = getelementptr inbounds %struct._ssn, %struct._ssn* %named12, i32 0, i32 2
  %19 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %global13, align 8, !tbaa !20
  %cmp = icmp ne %struct.gs_ref_memory_s* %17, %19
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %20 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %lmem, align 8, !tbaa !1
  %21 = load i32, i32* %nmem, align 4, !tbaa !19
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %nmem, align 4, !tbaa !19
  %idxprom = sext i32 %21 to i64
  %arrayidx14 = getelementptr inbounds [5 x %struct.gs_ref_memory_s*], [5 x %struct.gs_ref_memory_s*]* %memories1, i32 0, i64 %idxprom
  store %struct.gs_ref_memory_s* %20, %struct.gs_ref_memory_s** %arrayidx14, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %22 = load i32, i32* %nmem, align 4, !tbaa !19
  store i32 %22, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %if.end.24, %if.end
  %23 = load i32, i32* %i, align 4, !tbaa !19
  %dec = add nsw i32 %23, -1
  store i32 %dec, i32* %i, align 4, !tbaa !19
  %cmp15 = icmp sge i32 %dec, 0
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom16 = sext i32 %24 to i64
  %arrayidx17 = getelementptr inbounds [5 x %struct.gs_ref_memory_s*], [5 x %struct.gs_ref_memory_s*]* %memories1, i32 0, i64 %idxprom16
  %25 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %arrayidx17, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %25, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %26 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %stable_memory = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %26, i32 0, i32 0
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !30
  %28 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %29 = bitcast %struct.gs_ref_memory_s* %28 to %struct.gs_memory_s*
  %cmp18 = icmp ne %struct.gs_memory_s* %27, %29
  br i1 %cmp18, label %if.then.19, label %if.end.24

if.then.19:                                       ; preds = %for.body
  %30 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem, align 8, !tbaa !1
  %stable_memory20 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %30, i32 0, i32 0
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory20, align 8, !tbaa !30
  %32 = bitcast %struct.gs_memory_s* %31 to %struct.gs_ref_memory_s*
  %33 = load i32, i32* %nmem, align 4, !tbaa !19
  %inc21 = add nsw i32 %33, 1
  store i32 %inc21, i32* %nmem, align 4, !tbaa !19
  %idxprom22 = sext i32 %33 to i64
  %arrayidx23 = getelementptr inbounds [5 x %struct.gs_ref_memory_s*], [5 x %struct.gs_ref_memory_s*]* %memories1, i32 0, i64 %idxprom22
  store %struct.gs_ref_memory_s* %32, %struct.gs_ref_memory_s** %arrayidx23, align 8, !tbaa !1
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.19, %for.body
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load i32, i32* %nmem, align 4, !tbaa !19
  store i32 %34, i32* %i, align 4, !tbaa !19
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.body.28, %for.end
  %35 = load i32, i32* %i, align 4, !tbaa !19
  %dec26 = add nsw i32 %35, -1
  store i32 %dec26, i32* %i, align 4, !tbaa !19
  %cmp27 = icmp sge i32 %dec26, 0
  br i1 %cmp27, label %for.body.28, label %for.end.31

for.body.28:                                      ; preds = %for.cond.25
  %36 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom29 = sext i32 %36 to i64
  %arrayidx30 = getelementptr inbounds [5 x %struct.gs_ref_memory_s*], [5 x %struct.gs_ref_memory_s*]* %memories1, i32 0, i64 %idxprom29
  %37 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %arrayidx30, align 8, !tbaa !1
  call void @alloc_close_chunk(%struct.gs_ref_memory_s* %37) #3
  br label %for.cond.25

for.end.31:                                       ; preds = %for.cond.25
  %38 = load i32, i32* %global.addr, align 4, !tbaa !19
  %tobool = icmp ne i32 %38, 0
  %cond = select i1 %tobool, i32 1, i32 3
  store i32 %cond, i32* %i, align 4, !tbaa !19
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.67, %for.end.31
  %39 = load i32, i32* %i, align 4, !tbaa !19
  %conv = sext i32 %39 to i64
  %cmp33 = icmp ult i64 %conv, 4
  br i1 %cmp33, label %for.body.35, label %for.end.69

for.body.35:                                      ; preds = %for.cond.32
  %40 = bitcast %struct.gs_ref_memory_s** %mem36 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #1
  %41 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom37 = sext i32 %41 to i64
  %42 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %spaces38 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %42, i32 0, i32 1
  %memories39 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces38, i32 0, i32 1
  %indexed = bitcast %union.anon* %memories39 to [4 x %struct.gs_ref_memory_s*]*
  %arrayidx40 = getelementptr inbounds [4 x %struct.gs_ref_memory_s*], [4 x %struct.gs_ref_memory_s*]* %indexed, i32 0, i64 %idxprom37
  %43 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %arrayidx40, align 8, !tbaa !1
  store %struct.gs_ref_memory_s* %43, %struct.gs_ref_memory_s** %mem36, align 8, !tbaa !1
  %44 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem36, align 8, !tbaa !1
  %cmp41 = icmp eq %struct.gs_ref_memory_s* %44, null
  br i1 %cmp41, label %if.then.52, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.35
  %45 = load i32, i32* %i, align 4, !tbaa !19
  %cmp43 = icmp sgt i32 %45, 0
  br i1 %cmp43, label %land.lhs.true, label %if.end.53

land.lhs.true:                                    ; preds = %lor.lhs.false
  %46 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem36, align 8, !tbaa !1
  %47 = load i32, i32* %i, align 4, !tbaa !19
  %sub = sub nsw i32 %47, 1
  %idxprom45 = sext i32 %sub to i64
  %48 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %spaces46 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %48, i32 0, i32 1
  %memories47 = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces46, i32 0, i32 1
  %indexed48 = bitcast %union.anon* %memories47 to [4 x %struct.gs_ref_memory_s*]*
  %arrayidx49 = getelementptr inbounds [4 x %struct.gs_ref_memory_s*], [4 x %struct.gs_ref_memory_s*]* %indexed48, i32 0, i64 %idxprom45
  %49 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %arrayidx49, align 8, !tbaa !1
  %cmp50 = icmp eq %struct.gs_ref_memory_s* %46, %49
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %land.lhs.true, %for.body.35
  store i32 8, i32* %cleanup.dest.slot
  br label %cleanup

if.end.53:                                        ; preds = %land.lhs.true, %lor.lhs.false
  %50 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem36, align 8, !tbaa !1
  %stable_memory54 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %50, i32 0, i32 0
  %51 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory54, align 8, !tbaa !30
  %52 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem36, align 8, !tbaa !1
  %53 = bitcast %struct.gs_ref_memory_s* %52 to %struct.gs_memory_s*
  %cmp55 = icmp ne %struct.gs_memory_s* %51, %53
  br i1 %cmp55, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %if.end.53
  %54 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem36, align 8, !tbaa !1
  %stable_memory58 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %54, i32 0, i32 0
  %55 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory58, align 8, !tbaa !30
  %56 = bitcast %struct.gs_memory_s* %55 to %struct.gs_ref_memory_s*
  call void @ialloc_gc_prepare(%struct.gs_ref_memory_s* %56) #3
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.57, %if.end.53
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc, %if.end.59
  %57 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem36, align 8, !tbaa !1
  call void @ialloc_gc_prepare(%struct.gs_ref_memory_s* %57) #3
  %58 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem36, align 8, !tbaa !1
  %saved = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %58, i32 0, i32 28
  %59 = load %struct.alloc_save_s*, %struct.alloc_save_s** %saved, align 8, !tbaa !39
  %cmp61 = icmp eq %struct.alloc_save_s* %59, null
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %for.cond.60
  br label %for.end.66

if.end.64:                                        ; preds = %for.cond.60
  br label %for.inc

for.inc:                                          ; preds = %if.end.64
  %60 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %mem36, align 8, !tbaa !1
  %saved65 = getelementptr inbounds %struct.gs_ref_memory_s, %struct.gs_ref_memory_s* %60, i32 0, i32 28
  %61 = load %struct.alloc_save_s*, %struct.alloc_save_s** %saved65, align 8, !tbaa !39
  %state = getelementptr inbounds %struct.alloc_save_s, %struct.alloc_save_s* %61, i32 0, i32 0
  store %struct.gs_ref_memory_s* %state, %struct.gs_ref_memory_s** %mem36, align 8, !tbaa !1
  br label %for.cond.60

for.end.66:                                       ; preds = %if.then.63
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.66, %if.then.52
  %62 = bitcast %struct.gs_ref_memory_s** %mem36 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 8, label %for.inc.67
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.67

for.inc.67:                                       ; preds = %cleanup.cont, %cleanup
  %63 = load i32, i32* %i, align 4, !tbaa !19
  %inc68 = add nsw i32 %63, 1
  store i32 %inc68, i32* %i, align 4, !tbaa !19
  br label %for.cond.32

for.end.69:                                       ; preds = %for.cond.32
  %64 = bitcast i8** %ctxp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %64) #1
  %65 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %66 = bitcast %struct.gs_context_state_s* %65 to i8*
  store i8* %66, i8** %ctxp, align 8, !tbaa !1
  %67 = bitcast %struct.gs_gc_root_s* %context_root to i8*
  call void @llvm.lifetime.start(i64 32, i8* %67) #1
  %68 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %lmem, align 8, !tbaa !1
  %69 = bitcast %struct.gs_ref_memory_s* %68 to %struct.gs_memory_s*
  %call70 = call i32 @gs_register_struct_root(%struct.gs_memory_s* %69, %struct.gs_gc_root_s* %context_root, i8** %ctxp, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)) #3
  %70 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %spaces71 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %70, i32 0, i32 1
  %vm_reclaim = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces71, i32 0, i32 0
  %71 = load void (%struct.vm_spaces_s*, i32)*, void (%struct.vm_spaces_s*, i32)** %vm_reclaim, align 8, !tbaa !40
  %72 = load %struct.gs_dual_memory_s*, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %spaces72 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %72, i32 0, i32 1
  %73 = load i32, i32* %global.addr, align 4, !tbaa !19
  call void %71(%struct.vm_spaces_s* %spaces72, i32 %73) #3
  %74 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %lmem, align 8, !tbaa !1
  %75 = bitcast %struct.gs_ref_memory_s* %74 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %75, i32 0, i32 1
  %unregister_root = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 21
  %76 = load void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)** %unregister_root, align 8, !tbaa !41
  %77 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %lmem, align 8, !tbaa !1
  %78 = bitcast %struct.gs_ref_memory_s* %77 to %struct.gs_memory_s*
  call void %76(%struct.gs_memory_s* %78, %struct.gs_gc_root_s* %context_root, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)) #3
  %79 = load i8*, i8** %ctxp, align 8, !tbaa !1
  %80 = bitcast i8* %79 to %struct.gs_context_state_s*
  store %struct.gs_context_state_s* %80, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %81 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %81, i32 0, i32 1
  store %struct.gs_dual_memory_s* %memory, %struct.gs_dual_memory_s** %dmem.addr, align 8, !tbaa !1
  %82 = bitcast %struct.gs_gc_root_s* %context_root to i8*
  call void @llvm.lifetime.end(i64 32, i8* %82) #1
  %83 = bitcast i8** %ctxp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #1
  %84 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %84, i32 0, i32 24
  %system_dict = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack, i32 0, i32 7
  %85 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %dict_stack73 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %85, i32 0, i32 24
  %stack = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack73, i32 0, i32 0
  %86 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %dict_stack74 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %86, i32 0, i32 24
  %stack75 = getelementptr inbounds %struct.dict_stack_s, %struct.dict_stack_s* %dict_stack74, i32 0, i32 0
  %call76 = call i32 @ref_stack_count(%struct.ref_stack_s* %stack75) #3
  %sub77 = sub i32 %call76, 1
  %conv78 = zext i32 %sub77 to i64
  %call79 = call %struct.ref_s* @ref_stack_index(%struct.ref_stack_s* %stack, i64 %conv78) #3
  %87 = bitcast %struct.ref_s* %system_dict to i8*
  %88 = bitcast %struct.ref_s* %call79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %87, i8* %88, i64 16, i32 8, i1 false), !tbaa.struct !42
  %89 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %dict_stack80 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %89, i32 0, i32 24
  call void @dstack_gc_cleanup(%struct.dict_stack_s* %dict_stack80) #3
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond.81

for.cond.81:                                      ; preds = %for.inc.87, %for.end.69
  %90 = load i32, i32* %i, align 4, !tbaa !19
  %91 = load i32, i32* %nmem, align 4, !tbaa !19
  %cmp82 = icmp slt i32 %90, %91
  br i1 %cmp82, label %for.body.84, label %for.end.89

for.body.84:                                      ; preds = %for.cond.81
  %92 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom85 = sext i32 %92 to i64
  %arrayidx86 = getelementptr inbounds [5 x %struct.gs_ref_memory_s*], [5 x %struct.gs_ref_memory_s*]* %memories1, i32 0, i64 %idxprom85
  %93 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %arrayidx86, align 8, !tbaa !1
  call void @alloc_open_chunk(%struct.gs_ref_memory_s* %93) #3
  br label %for.inc.87

for.inc.87:                                       ; preds = %for.body.84
  %94 = load i32, i32* %i, align 4, !tbaa !19
  %inc88 = add nsw i32 %94, 1
  store i32 %inc88, i32* %i, align 4, !tbaa !19
  br label %for.cond.81

for.end.89:                                       ; preds = %for.cond.81
  %95 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %call90 = call i32 @context_state_load(%struct.gs_context_state_s* %95) #3
  store i32 %call90, i32* %code, align 4, !tbaa !19
  %96 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #1
  %97 = bitcast i32* %nmem to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #1
  %98 = bitcast %struct.gs_ref_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #1
  %99 = bitcast [5 x %struct.gs_ref_memory_s*]* %memories1 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %99) #1
  %100 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #1
  %101 = bitcast %struct.gs_ref_memory_s** %lmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #1
  %102 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %102) #1
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare void @ialloc_set_limit(%struct.gs_ref_memory_s*) #2

declare i32 @context_state_store(%struct.gs_context_state_s*) #2

declare void @alloc_close_chunk(%struct.gs_ref_memory_s*) #2

declare void @ialloc_gc_prepare(%struct.gs_ref_memory_s*) #2

declare i32 @gs_register_struct_root(%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8**, i8*) #2

declare %struct.ref_s* @ref_stack_index(%struct.ref_stack_s*, i64) #2

declare i32 @ref_stack_count(%struct.ref_stack_s*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare void @dstack_gc_cleanup(%struct.dict_stack_s*) #2

declare void @alloc_open_chunk(%struct.gs_ref_memory_s*) #2

declare i32 @context_state_load(%struct.gs_context_state_s*) #2

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
!5 = !{!6, !2, i64 64}
!6 = !{!"gs_context_state_s", !2, i64 0, !7, i64 8, !9, i64 80, !10, i64 88, !10, i64 104, !13, i64 120, !13, i64 128, !13, i64 136, !9, i64 144, !9, i64 148, !10, i64 152, !10, i64 168, !9, i64 184, !9, i64 188, !9, i64 192, !9, i64 196, !2, i64 200, !3, i64 208, !2, i64 256, !14, i64 264, !14, i64 304, !2, i64 344, !9, i64 352, !2, i64 360, !15, i64 368, !17, i64 520, !18, i64 624, !2, i64 720}
!7 = !{!"gs_dual_memory_s", !2, i64 0, !8, i64 8, !9, i64 48, !2, i64 56, !9, i64 64, !9, i64 68}
!8 = !{!"vm_spaces_s", !2, i64 0, !3, i64 8}
!9 = !{!"int", !3, i64 0}
!10 = !{!"ref_s", !11, i64 0, !3, i64 8}
!11 = !{!"tas_s", !12, i64 0, !12, i64 2, !9, i64 4}
!12 = !{!"short", !3, i64 0}
!13 = !{!"long", !3, i64 0}
!14 = !{!"op_array_table_s", !10, i64 0, !2, i64 16, !9, i64 24, !9, i64 28, !9, i64 32}
!15 = !{!"dict_stack_s", !16, i64 0, !9, i64 96, !9, i64 100, !9, i64 104, !2, i64 112, !9, i64 120, !2, i64 128, !10, i64 136}
!16 = !{!"ref_stack_s", !2, i64 0, !2, i64 8, !2, i64 16, !10, i64 24, !9, i64 40, !9, i64 44, !10, i64 48, !9, i64 64, !9, i64 68, !9, i64 72, !2, i64 80, !2, i64 88}
!17 = !{!"exec_stack_s", !16, i64 0, !2, i64 96}
!18 = !{!"op_stack_s", !16, i64 0}
!19 = !{!9, !9, i64 0}
!20 = !{!21, !2, i64 16}
!21 = !{!"_ssn", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!22 = !{!23, !13, i64 264}
!23 = !{!"gs_ref_memory_s", !2, i64 0, !24, i64 8, !2, i64 192, !2, i64 200, !2, i64 208, !9, i64 216, !9, i64 220, !9, i64 224, !25, i64 232, !9, i64 272, !13, i64 280, !2, i64 288, !2, i64 296, !26, i64 304, !2, i64 488, !27, i64 496, !13, i64 512, !13, i64 520, !28, i64 528, !9, i64 552, !9, i64 556, !9, i64 560, !2, i64 568, !2, i64 576, !2, i64 584, !9, i64 592, !2, i64 600, !2, i64 608, !2, i64 616, !13, i64 624, !13, i64 632, !2, i64 640, !29, i64 648, !9, i64 672, !3, i64 680}
!24 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!25 = !{!"gs_memory_gc_status_s", !13, i64 0, !13, i64 8, !2, i64 16, !9, i64 24, !9, i64 28, !13, i64 32}
!26 = !{!"chunk_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !9, i64 96, !9, i64 100, !2, i64 104, !9, i64 112, !2, i64 120, !2, i64 128, !9, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!27 = !{!"chunk_locator_s", !2, i64 0, !2, i64 8}
!28 = !{!"lost_", !13, i64 0, !13, i64 8, !13, i64 16}
!29 = !{!"gs_memory_status_s", !13, i64 0, !13, i64 8, !9, i64 16}
!30 = !{!23, !2, i64 0}
!31 = !{!23, !9, i64 224}
!32 = !{!33, !2, i64 40}
!33 = !{!"gs_memory_s", !2, i64 0, !24, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!34 = !{!29, !13, i64 0}
!35 = !{!13, !13, i64 0}
!36 = !{!23, !13, i64 240}
!37 = !{!21, !2, i64 24}
!38 = !{!21, !2, i64 8}
!39 = !{!23, !2, i64 616}
!40 = !{!8, !2, i64 0}
!41 = !{!33, !2, i64 176}
!42 = !{i64 0, i64 2, !43, i64 2, i64 2, !43, i64 4, i64 4, !19, i64 8, i64 8, !35, i64 8, i64 2, !43, i64 8, i64 4, !44, i64 8, i64 8, !35, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !35}
!43 = !{!12, !12, i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"float", !3, i64 0}
