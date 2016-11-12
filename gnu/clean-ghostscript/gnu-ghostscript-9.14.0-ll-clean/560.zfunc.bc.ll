; ModuleID = './zfunc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.build_function_type_s = type { i32, i32 (%struct.gs_context_state_s*, %struct.ref_s*, %struct.gs_function_params_s*, i32, %struct.gs_function_s**, %struct.gs_memory_s*)* }
%struct.gs_context_state_s = type { %struct.gs_state_s*, %struct.gs_dual_memory_s, i32, %struct.ref_s, %struct.ref_s, i64, i64, i64, i32, i32, %struct.ref_s, %struct.ref_s, i32, i32, i32, i32, %struct.gs_file_path_s*, [3 x %struct.ref_s], %struct.stream_s*, %struct.op_array_table_s, %struct.op_array_table_s, i32 (%struct.gs_context_state_s**)*, i32, i32 (%struct.gs_context_state_s**)*, %struct.dict_stack_s, %struct.exec_stack_s, %struct.op_stack_s, %struct.i_plugin_holder_s* }
%struct.gs_state_s = type opaque
%struct.gs_dual_memory_s = type { %struct.gs_ref_memory_s*, %struct.vm_spaces_s, i32, i32 (%struct.gs_dual_memory_s*, i32)*, i32, i32 }
%struct.gs_ref_memory_s = type opaque
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
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.op_array_table_s = type { %struct.ref_s, i16*, i32, i32, i32 }
%struct.dict_stack_s = type { %struct.ref_stack_s, i32, i32, i32, i16*, i32, %struct.ref_s*, %struct.ref_s }
%struct.ref_stack_s = type { %struct.ref_s*, %struct.ref_s*, %struct.ref_s*, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, %struct.ref_stack_params_s*, %struct.gs_ref_memory_s* }
%struct.ref_stack_params_s = type opaque
%struct.exec_stack_s = type { %struct.ref_stack_s, %struct.ref_s* }
%struct.op_stack_s = type { %struct.ref_stack_s }
%struct.i_plugin_holder_s = type opaque
%struct.gs_function_params_s = type { i32, float*, i32, float* }
%struct.gs_function_s = type { %struct.gs_function_head_s, %struct.gs_function_params_s }
%struct.gs_function_head_s = type { i32, %struct.gs_function_procs_s }
%struct.gs_function_procs_s = type { i32 (%struct.gs_function_s*, float*, float*)*, i32 (%struct.gs_function_s*, float*, float*, i32*)*, void (%struct.gs_function_s*, %struct.gs_function_info_s*)*, i32 (%struct.gs_function_s*, %struct.gs_param_list_s*)*, i32 (%struct.gs_function_s*, %struct.gs_function_s**, %struct.gs_range_s*, %struct.gs_memory_s*)*, void (%struct.gs_function_params_s*, %struct.gs_memory_s*)*, void (%struct.gs_function_s*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_function_s*, %struct.stream_s*)* }
%struct.gs_function_info_s = type { %struct.gs_data_source_s*, i64, %struct.gs_function_s**, i32 }
%struct.gs_data_source_s = type opaque
%struct.gs_param_list_s = type opaque
%struct.gs_range_s = type { float, float }
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gs_gc_root_s = type { %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i32 }
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type { i8*, i8*, %struct.gx_io_device_procs_s, i8* }
%struct.gx_io_device_procs_s = type { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.file_enum_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.op_def = type { i8*, i32 (%struct.gs_context_state_s*)* }
%struct.obj_header_s = type opaque

@.str = private unnamed_addr constant [22 x i8] c"%execfunction(in/out)\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"%execfunction(in)\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"FunctionType\00", align 1
@build_function_type_table_count = external constant i32, align 4
@build_function_type_table = external constant [0 x %struct.build_function_type_s], align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"Domain\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Range\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"1.buildfunction\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"1%execfunction\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"1.isencapfunction\00", align 1
@zfunc_op_defs = constant [4 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zbuildfunction }, %struct.op_def { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zexecfunction }, %struct.op_def { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zisencapfunction }, %struct.op_def zeroinitializer], align 16
@.str.8 = private unnamed_addr constant [15 x i8] c".buildfunction\00", align 1

; Function Attrs: nounwind uwtable
define i32 @buildfunction(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %arr, %struct.ref_s* %pproc, i32 %type) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %arr.addr = alloca %struct.ref_s*, align 8
  %pproc.addr = alloca %struct.ref_s*, align 8
  %type.addr = alloca i32, align 4
  %op = alloca %struct.ref_s*, align 8
  %pfn = alloca %struct.gs_function_s*, align 8
  %code = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %arr, %struct.ref_s** %arr.addr, align 8, !tbaa !1
  store %struct.ref_s* %pproc, %struct.ref_s** %pproc.addr, align 8, !tbaa !1
  store i32 %type, i32* %type.addr, align 4, !tbaa !5
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !7
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gs_function_s** %pfn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store %struct.gs_function_s* null, %struct.gs_function_s** %pfn, align 8, !tbaa !1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %5 = load i32, i32* %type.addr, align 4, !tbaa !5
  switch i32 %5, label %sw.epilog [
    i32 0, label %sw.bb
    i32 4, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %7 = load %struct.ref_s*, %struct.ref_s** %arr.addr, align 8, !tbaa !1
  %8 = load %struct.ref_s*, %struct.ref_s** %pproc.addr, align 8, !tbaa !1
  %call = call i32 @make_sampled_function(%struct.gs_context_state_s* %6, %struct.ref_s* %7, %struct.ref_s* %8, %struct.gs_function_s** %pfn) #3
  store i32 %call, i32* %code, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %10 = load %struct.ref_s*, %struct.ref_s** %arr.addr, align 8, !tbaa !1
  %11 = load %struct.ref_s*, %struct.ref_s** %pproc.addr, align 8, !tbaa !1
  %call2 = call i32 @make_type4_function(%struct.gs_context_state_s* %9, %struct.ref_s* %10, %struct.ref_s* %11, %struct.gs_function_s** %pfn) #3
  store i32 %call2, i32* %code, align 4, !tbaa !5
  %12 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %sw.bb.1
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %15 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn, align 8, !tbaa !1
  %call3 = call i32 @make_function_proc(%struct.gs_context_state_s* %13, %struct.ref_s* %14, %struct.gs_function_s* %15) #3
  store i32 %call3, i32* %code, align 4, !tbaa !5
  %16 = load i32, i32* %code, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %16, 0
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %17 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %17, i32 0, i32 0
  %procs = getelementptr inbounds %struct.gs_function_head_s, %struct.gs_function_head_s* %head, i32 0, i32 1
  %free = getelementptr inbounds %struct.gs_function_procs_s, %struct.gs_function_procs_s* %procs, i32 0, i32 6
  %18 = load void (%struct.gs_function_s*, i32, %struct.gs_memory_s*)*, void (%struct.gs_function_s*, i32, %struct.gs_memory_s*)** %free, align 8, !tbaa !20
  %19 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn, align 8, !tbaa !1
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %20, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %21 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !25
  %22 = bitcast %struct.gs_ref_memory_s* %21 to %struct.gs_memory_s*
  call void %18(%struct.gs_function_s* %19, i32 1, %struct.gs_memory_s* %22) #3
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %sw.bb.1
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end.6, %sw.bb
  %23 = load i32, i32* %code, align 4, !tbaa !5
  %24 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast %struct.gs_function_s** %pfn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  ret i32 %23
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @make_sampled_function(%struct.gs_context_state_s*, %struct.ref_s*, %struct.ref_s*, %struct.gs_function_s**) #2

declare i32 @make_type4_function(%struct.gs_context_state_s*, %struct.ref_s*, %struct.ref_s*, %struct.gs_function_s**) #2

; Function Attrs: nounwind uwtable
define internal i32 @make_function_proc(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %op, %struct.gs_function_s* %pfn) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  %pfn.addr = alloca %struct.gs_function_s*, align 8
  %cref = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.gs_function_s* %pfn, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s* %cref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %2, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %3 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !25
  %call = call i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s* %3, %struct.ref_s* %cref, i32 192, i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0)) #3
  store i32 %call, i32* %code, align 4, !tbaa !5
  %4 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn.addr, align 8, !tbaa !1
  %7 = bitcast %struct.gs_function_s* %6 to %struct.obj_header_s*
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %cref, i32 0, i32 1
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %8 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %value1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 1
  %pstruct = bitcast %union.v* %value1 to %struct.obj_header_s**
  store %struct.obj_header_s* %7, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 1
  %current_space = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory2, i32 0, i32 2
  %10 = load i32, i32* %current_space, align 4, !tbaa !26
  %or = or i32 192, %10
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 1
  %new_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory3, i32 0, i32 5
  %12 = load i32, i32* %new_mask, align 4, !tbaa !27
  %or4 = or i32 %or, %12
  %add = add i32 2048, %or4
  %conv = trunc i32 %add to i16
  %value5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %cref, i32 0, i32 1
  %refs6 = bitcast %union.v* %value5 to %struct.ref_s**
  %13 = load %struct.ref_s*, %struct.ref_s** %refs6, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 %conv, i16* %type_attrs, align 2, !tbaa !28
  %value7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %cref, i32 0, i32 1
  %refs8 = bitcast %union.v* %value7 to %struct.ref_s**
  %14 = load %struct.ref_s*, %struct.ref_s** %refs8, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 1
  %value9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 1
  %opproc = bitcast %union.v* %value9 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @zexecfunction, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory10 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 1
  %new_mask11 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory10, i32 0, i32 5
  %16 = load i32, i32* %new_mask11, align 4, !tbaa !27
  %or12 = or i32 128, %16
  %add13 = add i32 3840, %or12
  %conv14 = trunc i32 %add13 to i16
  %value15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %cref, i32 0, i32 1
  %refs16 = bitcast %union.v* %value15 to %struct.ref_s**
  %17 = load %struct.ref_s*, %struct.ref_s** %refs16, align 8, !tbaa !1
  %add.ptr17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 1
  %tas18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr17, i32 0, i32 0
  %type_attrs19 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas18, i32 0, i32 0
  store i16 %conv14, i16* %type_attrs19, align 2, !tbaa !28
  %value20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %cref, i32 0, i32 1
  %refs21 = bitcast %union.v* %value20 to %struct.ref_s**
  %18 = load %struct.ref_s*, %struct.ref_s** %refs21, align 8, !tbaa !1
  %add.ptr22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 1
  %tas23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr22, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas23, i32 0, i32 2
  store i32 0, i32* %rsize, align 4, !tbaa !29
  %19 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %20 = bitcast %struct.ref_s* %19 to i8*
  %21 = bitcast %struct.ref_s* %cref to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 16, i32 8, i1 false), !tbaa.struct !30
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %22 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast %struct.ref_s* %cref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %23) #1
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @zexecfunction(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  %pfn = alloca %struct.gs_function_s*, align 8
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %diff = alloca i32, align 4
  %params27 = alloca [20 x float], align 16
  %in = alloca float*, align 8
  %out = alloca float*, align 8
  %code = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !7
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %4 = load i16, i16* %type_attrs, align 2, !tbaa !28
  %conv = zext i16 %4 to i32
  %and = and i32 %conv, 15872
  %cmp = icmp eq i32 %and, 2048
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %6 = load i16, i16* %type_attrs3, align 2, !tbaa !28
  %conv4 = zext i16 %6 to i32
  %and5 = and i32 %conv4, 240
  %cmp6 = icmp eq i32 %and5, 192
  br i1 %cmp6, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.115

if.end:                                           ; preds = %lor.lhs.false
  %7 = bitcast %struct.gs_function_s** %pfn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %9 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %10 = bitcast %struct.obj_header_s* %9 to %struct.gs_function_s*
  store %struct.gs_function_s* %10, %struct.gs_function_s** %pfn, align 8, !tbaa !1
  %11 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %12, i32 0, i32 1
  %m8 = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %params, i32 0, i32 0
  %13 = load i32, i32* %m8, align 4, !tbaa !35
  store i32 %13, i32* %m, align 4, !tbaa !5
  %14 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn, align 8, !tbaa !1
  %params9 = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %15, i32 0, i32 1
  %n10 = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %params9, i32 0, i32 2
  %16 = load i32, i32* %n10, align 4, !tbaa !36
  store i32 %16, i32* %n, align 4, !tbaa !5
  %17 = bitcast i32* %diff to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load i32, i32* %n, align 4, !tbaa !5
  %19 = load i32, i32* %m, align 4, !tbaa !5
  %add = add nsw i32 %19, 1
  %sub = sub nsw i32 %18, %add
  store i32 %sub, i32* %diff, align 4, !tbaa !5
  %20 = load i32, i32* %diff, align 4, !tbaa !5
  %cmp11 = icmp sgt i32 %20, 0
  br i1 %cmp11, label %if.then.13, label %if.end.26

if.then.13:                                       ; preds = %if.end
  %21 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack14 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %21, i32 0, i32 26
  %stack15 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack14, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack15, i32 0, i32 2
  %22 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !37
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack16 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 26
  %stack17 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack16, i32 0, i32 0
  %p18 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack17, i32 0, i32 0
  %24 = load %struct.ref_s*, %struct.ref_s** %p18, align 8, !tbaa !7
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %22 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %24 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %25 = load i32, i32* %diff, align 4, !tbaa !5
  %conv19 = sext i32 %25 to i64
  %cmp20 = icmp slt i64 %sub.ptr.div, %conv19
  br i1 %cmp20, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %if.then.13
  %26 = load i32, i32* %diff, align 4, !tbaa !5
  %27 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack23 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %27, i32 0, i32 26
  %stack24 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack23, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack24, i32 0, i32 7
  store i32 %26, i32* %requested, align 4, !tbaa !38
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.111

if.end.25:                                        ; preds = %if.then.13
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.end
  %28 = bitcast [20 x float]* %params27 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %28) #1
  %29 = bitcast float** %in to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #1
  %30 = bitcast float** %out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #1
  %31 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %32 = load i32, i32* %m, align 4, !tbaa !5
  %33 = load i32, i32* %n, align 4, !tbaa !5
  %add28 = add nsw i32 %32, %33
  %conv29 = sext i32 %add28 to i64
  %cmp30 = icmp ule i64 %conv29, 20
  br i1 %cmp30, label %if.then.32, label %if.else

if.then.32:                                       ; preds = %if.end.26
  %arraydecay = getelementptr inbounds [20 x float], [20 x float]* %params27, i32 0, i32 0
  store float* %arraydecay, float** %in, align 8, !tbaa !1
  br label %if.end.40

if.else:                                          ; preds = %if.end.26
  %34 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %34, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %35 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !25
  %36 = bitcast %struct.gs_ref_memory_s* %35 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %36, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %37 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !39
  %38 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory33 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %38, i32 0, i32 1
  %current34 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory33, i32 0, i32 0
  %39 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current34, align 8, !tbaa !25
  %40 = bitcast %struct.gs_ref_memory_s* %39 to %struct.gs_memory_s*
  %41 = load i32, i32* %m, align 4, !tbaa !5
  %42 = load i32, i32* %n, align 4, !tbaa !5
  %add35 = add nsw i32 %41, %42
  %call = call i8* %37(%struct.gs_memory_s* %40, i32 %add35, i32 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0)) #3
  %43 = bitcast i8* %call to float*
  store float* %43, float** %in, align 8, !tbaa !1
  %44 = load float*, float** %in, align 8, !tbaa !1
  %cmp36 = icmp eq float* %44, null
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.else
  store i32 -25, i32* %code, align 4, !tbaa !5
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %if.else
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.32
  %45 = load float*, float** %in, align 8, !tbaa !1
  %46 = load i32, i32* %m, align 4, !tbaa !5
  %idx.ext = sext i32 %46 to i64
  %add.ptr = getelementptr inbounds float, float* %45, i64 %idx.ext
  store float* %add.ptr, float** %out, align 8, !tbaa !1
  %47 = load i32, i32* %code, align 4, !tbaa !5
  %cmp41 = icmp slt i32 %47, 0
  br i1 %cmp41, label %if.then.53, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %if.end.40
  %48 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i64 -1
  %49 = load i32, i32* %m, align 4, !tbaa !5
  %50 = load float*, float** %in, align 8, !tbaa !1
  %call45 = call i32 @float_params(%struct.ref_s* %add.ptr44, i32 %49, float* %50) #3
  store i32 %call45, i32* %code, align 4, !tbaa !5
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.then.53, label %lor.lhs.false.48

lor.lhs.false.48:                                 ; preds = %lor.lhs.false.43
  %51 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %51, i32 0, i32 0
  %procs49 = getelementptr inbounds %struct.gs_function_head_s, %struct.gs_function_head_s* %head, i32 0, i32 1
  %evaluate = getelementptr inbounds %struct.gs_function_procs_s, %struct.gs_function_procs_s* %procs49, i32 0, i32 0
  %52 = load i32 (%struct.gs_function_s*, float*, float*)*, i32 (%struct.gs_function_s*, float*, float*)** %evaluate, align 8, !tbaa !42
  %53 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn, align 8, !tbaa !1
  %54 = load float*, float** %in, align 8, !tbaa !1
  %55 = load float*, float** %out, align 8, !tbaa !1
  %call50 = call i32 %52(%struct.gs_function_s* %53, float* %54, float* %55) #3
  store i32 %call50, i32* %code, align 4, !tbaa !5
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %lor.lhs.false.48, %lor.lhs.false.43, %if.end.40
  br label %do.body

do.body:                                          ; preds = %if.then.53
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.97

if.else.54:                                       ; preds = %lor.lhs.false.48
  %56 = load i32, i32* %diff, align 4, !tbaa !5
  %cmp55 = icmp sgt i32 %56, 0
  br i1 %cmp55, label %if.then.57, label %if.else.77

if.then.57:                                       ; preds = %if.else.54
  br label %do.body.58

do.body.58:                                       ; preds = %if.then.57
  %57 = load i32, i32* %diff, align 4, !tbaa !5
  %58 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %idx.ext59 = sext i32 %57 to i64
  %add.ptr60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %58, i64 %idx.ext59
  store %struct.ref_s* %add.ptr60, %struct.ref_s** %op, align 8, !tbaa !1
  %59 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack61 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %59, i32 0, i32 26
  %stack62 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack61, i32 0, i32 0
  %top63 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack62, i32 0, i32 2
  %60 = load %struct.ref_s*, %struct.ref_s** %top63, align 8, !tbaa !37
  %cmp64 = icmp ugt %struct.ref_s* %add.ptr60, %60
  br i1 %cmp64, label %if.then.66, label %if.else.70

if.then.66:                                       ; preds = %do.body.58
  %61 = load i32, i32* %diff, align 4, !tbaa !5
  %62 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack67 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %62, i32 0, i32 26
  %stack68 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack67, i32 0, i32 0
  %requested69 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack68, i32 0, i32 7
  store i32 %61, i32* %requested69, align 4, !tbaa !38
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.70:                                       ; preds = %do.body.58
  %63 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %64 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack71 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %64, i32 0, i32 26
  %stack72 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack71, i32 0, i32 0
  %p73 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack72, i32 0, i32 0
  store %struct.ref_s* %63, %struct.ref_s** %p73, align 8, !tbaa !7
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.70
  br label %do.cond.75

do.cond.75:                                       ; preds = %if.end.74
  br label %do.end.76

do.end.76:                                        ; preds = %do.cond.75
  br label %if.end.91

if.else.77:                                       ; preds = %if.else.54
  %65 = load i32, i32* %diff, align 4, !tbaa !5
  %cmp78 = icmp slt i32 %65, 0
  br i1 %cmp78, label %if.then.80, label %if.end.90

if.then.80:                                       ; preds = %if.else.77
  %66 = load i32, i32* %diff, align 4, !tbaa !5
  %sub81 = sub nsw i32 0, %66
  %67 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack82 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %67, i32 0, i32 26
  %stack83 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack82, i32 0, i32 0
  %p84 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack83, i32 0, i32 0
  %68 = load %struct.ref_s*, %struct.ref_s** %p84, align 8, !tbaa !7
  %idx.ext85 = sext i32 %sub81 to i64
  %idx.neg = sub i64 0, %idx.ext85
  %add.ptr86 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %68, i64 %idx.neg
  store %struct.ref_s* %add.ptr86, %struct.ref_s** %p84, align 8, !tbaa !7
  %69 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack87 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %69, i32 0, i32 26
  %stack88 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack87, i32 0, i32 0
  %p89 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack88, i32 0, i32 0
  %70 = load %struct.ref_s*, %struct.ref_s** %p89, align 8, !tbaa !7
  store %struct.ref_s* %70, %struct.ref_s** %op, align 8, !tbaa !1
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.80, %if.else.77
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %do.end.76
  %71 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr92 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %71, i64 1
  %72 = load i32, i32* %n, align 4, !tbaa !5
  %idx.ext93 = sext i32 %72 to i64
  %idx.neg94 = sub i64 0, %idx.ext93
  %add.ptr95 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr92, i64 %idx.neg94
  %73 = load float*, float** %out, align 8, !tbaa !1
  %74 = load i32, i32* %n, align 4, !tbaa !5
  %call96 = call i32 @make_floats(%struct.ref_s* %add.ptr95, float* %73, i32 %74) #3
  store i32 %call96, i32* %code, align 4, !tbaa !5
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.91, %do.end
  %75 = load float*, float** %in, align 8, !tbaa !1
  %arraydecay98 = getelementptr inbounds [20 x float], [20 x float]* %params27, i32 0, i32 0
  %cmp99 = icmp ne float* %75, %arraydecay98
  br i1 %cmp99, label %if.then.101, label %if.end.107

if.then.101:                                      ; preds = %if.end.97
  %76 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory102 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %76, i32 0, i32 1
  %current103 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory102, i32 0, i32 0
  %77 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current103, align 8, !tbaa !25
  %78 = bitcast %struct.gs_ref_memory_s* %77 to %struct.gs_memory_s*
  %procs104 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %78, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs104, i32 0, i32 2
  %79 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !43
  %80 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory105 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %80, i32 0, i32 1
  %current106 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory105, i32 0, i32 0
  %81 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current106, align 8, !tbaa !25
  %82 = bitcast %struct.gs_ref_memory_s* %81 to %struct.gs_memory_s*
  %83 = load float*, float** %in, align 8, !tbaa !1
  %84 = bitcast float* %83 to i8*
  call void %79(%struct.gs_memory_s* %82, i8* %84, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0)) #3
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.101, %if.end.97
  %85 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %85, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.107, %if.then.66
  %86 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #1
  %87 = bitcast float** %out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #1
  %88 = bitcast float** %in to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #1
  %89 = bitcast [20 x float]* %params27 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %89) #1
  br label %cleanup.111

cleanup.111:                                      ; preds = %cleanup, %if.then.22
  %90 = bitcast i32* %diff to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #1
  %91 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #1
  %92 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #1
  %93 = bitcast %struct.gs_function_s** %pfn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #1
  br label %cleanup.115

cleanup.115:                                      ; preds = %cleanup.111, %if.then
  %94 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  %95 = load i32, i32* %retval
  ret i32 %95
}

declare i32 @float_params(%struct.ref_s*, i32, float*) #2

declare i32 @make_floats(%struct.ref_s*, float*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @fn_build_function(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %op, %struct.gs_function_s** %ppfn, %struct.gs_memory_s* %mem, float* %shading_domain, i32 %num_inputs) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  %ppfn.addr = alloca %struct.gs_function_s**, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %shading_domain.addr = alloca float*, align 8
  %num_inputs.addr = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.gs_function_s** %ppfn, %struct.gs_function_s*** %ppfn.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store float* %shading_domain, float** %shading_domain.addr, align 8, !tbaa !1
  store i32 %num_inputs, i32* %num_inputs.addr, align 4, !tbaa !5
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %1 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %2 = load %struct.gs_function_s**, %struct.gs_function_s*** %ppfn.addr, align 8, !tbaa !1
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %4 = load float*, float** %shading_domain.addr, align 8, !tbaa !1
  %5 = load i32, i32* %num_inputs.addr, align 4, !tbaa !5
  %call = call i32 @fn_build_sub_function(%struct.gs_context_state_s* %0, %struct.ref_s* %1, %struct.gs_function_s** %2, i32 0, %struct.gs_memory_s* %3, float* %4, i32 %5) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @fn_build_sub_function(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %op, %struct.gs_function_s** %ppfn, i32 %depth, %struct.gs_memory_s* %mem, float* %shading_domain, i32 %num_inputs) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  %ppfn.addr = alloca %struct.gs_function_s**, align 8
  %depth.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %shading_domain.addr = alloca float*, align 8
  %num_inputs.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %code = alloca i32, align 4
  %type = alloca i32, align 4
  %i = alloca i32, align 4
  %params = alloca %struct.gs_function_params_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.gs_function_s** %ppfn, %struct.gs_function_s*** %ppfn.addr, align 8, !tbaa !1
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !5
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store float* %shading_domain, float** %shading_domain.addr, align 8, !tbaa !1
  store i32 %num_inputs, i32* %num_inputs.addr, align 4, !tbaa !5
  %0 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %type to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %struct.gs_function_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 32, i8* %4) #1
  %5 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %5, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %7 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !44
  %conv = zext i8 %8 to i32
  %cmp1 = icmp eq i32 %conv, 2
  br i1 %cmp1, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %9 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %9) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %10 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call5 = call i32 @dict_int_param(%struct.ref_s* %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 0, i32 2147483647, i32 -1, i32* %type) #3
  store i32 %call5, i32* %code, align 4, !tbaa !5
  %11 = load i32, i32* %code, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %11, 0
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.4
  %12 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end.4
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.9
  %13 = load i32, i32* %i, align 4, !tbaa !5
  %14 = load i32, i32* @build_function_type_table_count, align 4, !tbaa !5
  %cmp10 = icmp ult i32 %13, %14
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = zext i32 %15 to i64
  %arrayidx12 = getelementptr inbounds [0 x %struct.build_function_type_s], [0 x %struct.build_function_type_s]* @build_function_type_table, i32 0, i64 %idxprom
  %type13 = getelementptr inbounds %struct.build_function_type_s, %struct.build_function_type_s* %arrayidx12, i32 0, i32 0
  %16 = load i32, i32* %type13, align 4, !tbaa !45
  %17 = load i32, i32* %type, align 4, !tbaa !5
  %cmp14 = icmp eq i32 %16, %17
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %for.body
  br label %for.end

if.end.17:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.17
  %18 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %18, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %if.then.16, %for.cond
  %19 = load i32, i32* %i, align 4, !tbaa !5
  %20 = load i32, i32* @build_function_type_table_count, align 4, !tbaa !5
  %cmp18 = icmp eq i32 %19, %20
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %for.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %for.end
  %Domain = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %params, i32 0, i32 1
  store float* null, float** %Domain, align 8, !tbaa !47
  %Range = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %params, i32 0, i32 3
  store float* null, float** %Range, align 8, !tbaa !48
  %21 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %Domain22 = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %params, i32 0, i32 1
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call23 = call i32 @fn_build_float_array(%struct.ref_s* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 1, i32 1, float** %Domain22, %struct.gs_memory_s* %22) #3
  store i32 %call23, i32* %code, align 4, !tbaa !5
  %23 = load i32, i32* %code, align 4, !tbaa !5
  %cmp24 = icmp slt i32 %23, 0
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.21
  %24 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %25 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  call void @gs_errorinfo_put_pair_from_dict(%struct.gs_context_state_s* %24, %struct.ref_s* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0)) #3
  br label %fail

if.end.27:                                        ; preds = %if.end.21
  %26 = load i32, i32* %code, align 4, !tbaa !5
  %shr = ashr i32 %26, 1
  %m = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %params, i32 0, i32 0
  store i32 %shr, i32* %m, align 4, !tbaa !49
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.43, %if.end.27
  %27 = load i32, i32* %j, align 4, !tbaa !5
  %m29 = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %params, i32 0, i32 0
  %28 = load i32, i32* %m29, align 4, !tbaa !49
  %shl = shl i32 %28, 1
  %cmp30 = icmp slt i32 %27, %shl
  br i1 %cmp30, label %for.body.32, label %for.end.45

for.body.32:                                      ; preds = %for.cond.28
  %29 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom33 = sext i32 %29 to i64
  %Domain34 = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %params, i32 0, i32 1
  %30 = load float*, float** %Domain34, align 8, !tbaa !47
  %arrayidx35 = getelementptr inbounds float, float* %30, i64 %idxprom33
  %31 = load float, float* %arrayidx35, align 4, !tbaa !33
  %32 = load i32, i32* %j, align 4, !tbaa !5
  %add = add nsw i32 %32, 1
  %idxprom36 = sext i32 %add to i64
  %Domain37 = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %params, i32 0, i32 1
  %33 = load float*, float** %Domain37, align 8, !tbaa !47
  %arrayidx38 = getelementptr inbounds float, float* %33, i64 %idxprom36
  %34 = load float, float* %arrayidx38, align 4, !tbaa !33
  %cmp39 = fcmp oge float %31, %34
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %for.body.32
  store i32 -15, i32* %code, align 4, !tbaa !5
  %35 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %36 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  call void @gs_errorinfo_put_pair_from_dict(%struct.gs_context_state_s* %35, %struct.ref_s* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0)) #3
  br label %fail

if.end.42:                                        ; preds = %for.body.32
  br label %for.inc.43

for.inc.43:                                       ; preds = %if.end.42
  %37 = load i32, i32* %j, align 4, !tbaa !5
  %add44 = add nsw i32 %37, 2
  store i32 %add44, i32* %j, align 4, !tbaa !5
  br label %for.cond.28

for.end.45:                                       ; preds = %for.cond.28
  %38 = load float*, float** %shading_domain.addr, align 8, !tbaa !1
  %tobool = icmp ne float* %38, null
  br i1 %tobool, label %if.then.46, label %if.end.83

if.then.46:                                       ; preds = %for.end.45
  %39 = load i32, i32* %num_inputs.addr, align 4, !tbaa !5
  %m47 = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %params, i32 0, i32 0
  %40 = load i32, i32* %m47, align 4, !tbaa !49
  %cmp48 = icmp ne i32 %39, %40
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.then.46
  store i32 -15, i32* %code, align 4, !tbaa !5
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %if.then.46
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.76, %if.end.51
  %41 = load i32, i32* %j, align 4, !tbaa !5
  %42 = load i32, i32* %num_inputs.addr, align 4, !tbaa !5
  %mul = mul nsw i32 2, %42
  %cmp53 = icmp slt i32 %41, %mul
  br i1 %cmp53, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.52
  %43 = load i32, i32* %code, align 4, !tbaa !5
  %cmp55 = icmp sge i32 %43, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.52
  %44 = phi i1 [ false, %for.cond.52 ], [ %cmp55, %land.rhs ]
  br i1 %44, label %for.body.57, label %for.end.78

for.body.57:                                      ; preds = %land.end
  %45 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom58 = sext i32 %45 to i64
  %Domain59 = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %params, i32 0, i32 1
  %46 = load float*, float** %Domain59, align 8, !tbaa !47
  %arrayidx60 = getelementptr inbounds float, float* %46, i64 %idxprom58
  %47 = load float, float* %arrayidx60, align 4, !tbaa !33
  %48 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom61 = sext i32 %48 to i64
  %49 = load float*, float** %shading_domain.addr, align 8, !tbaa !1
  %arrayidx62 = getelementptr inbounds float, float* %49, i64 %idxprom61
  %50 = load float, float* %arrayidx62, align 4, !tbaa !33
  %cmp63 = fcmp ogt float %47, %50
  br i1 %cmp63, label %if.then.74, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.57
  %51 = load i32, i32* %j, align 4, !tbaa !5
  %add65 = add nsw i32 %51, 1
  %idxprom66 = sext i32 %add65 to i64
  %Domain67 = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %params, i32 0, i32 1
  %52 = load float*, float** %Domain67, align 8, !tbaa !47
  %arrayidx68 = getelementptr inbounds float, float* %52, i64 %idxprom66
  %53 = load float, float* %arrayidx68, align 4, !tbaa !33
  %54 = load i32, i32* %j, align 4, !tbaa !5
  %add69 = add nsw i32 %54, 1
  %idxprom70 = sext i32 %add69 to i64
  %55 = load float*, float** %shading_domain.addr, align 8, !tbaa !1
  %arrayidx71 = getelementptr inbounds float, float* %55, i64 %idxprom70
  %56 = load float, float* %arrayidx71, align 4, !tbaa !33
  %cmp72 = fcmp olt float %53, %56
  br i1 %cmp72, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %lor.lhs.false, %for.body.57
  store i32 -15, i32* %code, align 4, !tbaa !5
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.74, %lor.lhs.false
  br label %for.inc.76

for.inc.76:                                       ; preds = %if.end.75
  %57 = load i32, i32* %j, align 4, !tbaa !5
  %add77 = add nsw i32 %57, 2
  store i32 %add77, i32* %j, align 4, !tbaa !5
  br label %for.cond.52

for.end.78:                                       ; preds = %land.end
  %58 = load i32, i32* %code, align 4, !tbaa !5
  %cmp79 = icmp slt i32 %58, 0
  br i1 %cmp79, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %for.end.78
  %59 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %60 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  call void @gs_errorinfo_put_pair_from_dict(%struct.gs_context_state_s* %59, %struct.ref_s* %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0)) #3
  br label %fail

if.end.82:                                        ; preds = %for.end.78
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %for.end.45
  %61 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %Range84 = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %params, i32 0, i32 3
  %62 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call85 = call i32 @fn_build_float_array(%struct.ref_s* %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i32 0, i32 1, float** %Range84, %struct.gs_memory_s* %62) #3
  store i32 %call85, i32* %code, align 4, !tbaa !5
  %63 = load i32, i32* %code, align 4, !tbaa !5
  %cmp86 = icmp slt i32 %63, 0
  br i1 %cmp86, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %if.end.83
  br label %fail

if.end.89:                                        ; preds = %if.end.83
  %64 = load i32, i32* %code, align 4, !tbaa !5
  %shr90 = ashr i32 %64, 1
  %n = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %params, i32 0, i32 2
  store i32 %shr90, i32* %n, align 4, !tbaa !50
  %65 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom91 = zext i32 %65 to i64
  %arrayidx92 = getelementptr inbounds [0 x %struct.build_function_type_s], [0 x %struct.build_function_type_s]* @build_function_type_table, i32 0, i64 %idxprom91
  %proc = getelementptr inbounds %struct.build_function_type_s, %struct.build_function_type_s* %arrayidx92, i32 0, i32 1
  %66 = load i32 (%struct.gs_context_state_s*, %struct.ref_s*, %struct.gs_function_params_s*, i32, %struct.gs_function_s**, %struct.gs_memory_s*)*, i32 (%struct.gs_context_state_s*, %struct.ref_s*, %struct.gs_function_params_s*, i32, %struct.gs_function_s**, %struct.gs_memory_s*)** %proc, align 8, !tbaa !51
  %67 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %68 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %69 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %add93 = add nsw i32 %69, 1
  %70 = load %struct.gs_function_s**, %struct.gs_function_s*** %ppfn.addr, align 8, !tbaa !1
  %71 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call94 = call i32 %66(%struct.gs_context_state_s* %67, %struct.ref_s* %68, %struct.gs_function_params_s* %params, i32 %add93, %struct.gs_function_s** %70, %struct.gs_memory_s* %71) #3
  store i32 %call94, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

fail:                                             ; preds = %if.then.88, %if.then.81, %if.then.41, %if.then.26
  %72 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %Range95 = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %params, i32 0, i32 3
  %73 = load float*, float** %Range95, align 8, !tbaa !48
  %74 = bitcast float* %73 to i8*
  call void @gs_free_const_object(%struct.gs_memory_s* %72, i8* %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0)) #3
  %75 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %Domain96 = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %params, i32 0, i32 1
  %76 = load float*, float** %Domain96, align 8, !tbaa !47
  %77 = bitcast float* %76 to i8*
  call void @gs_free_const_object(%struct.gs_memory_s* %75, i8* %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0)) #3
  %78 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %78, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end.89, %if.then.20, %if.then.8, %if.then.3, %if.then
  %79 = bitcast %struct.gs_function_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 32, i8* %79) #1
  %80 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #1
  %81 = bitcast i32* %type to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #1
  %82 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  %83 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  %84 = load i32, i32* %retval
  ret i32 %84
}

declare i32 @check_type_failed(%struct.ref_s*) #2

declare i32 @dict_int_param(%struct.ref_s*, i8*, i32, i32, i32, i32*) #2

; Function Attrs: nounwind uwtable
define i32 @fn_build_float_array(%struct.ref_s* %op, i8* %kstr, i32 %required, i32 %even, float** %pparray, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %kstr.addr = alloca i8*, align 8
  %required.addr = alloca i32, align 4
  %even.addr = alloca i32, align 4
  %pparray.addr = alloca float**, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %par = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %size = alloca i32, align 4
  %ptr = alloca float*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store i8* %kstr, i8** %kstr.addr, align 8, !tbaa !1
  store i32 %required, i32* %required.addr, align 4, !tbaa !5
  store i32 %even, i32* %even.addr, align 4, !tbaa !5
  store float** %pparray, float*** %pparray.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %par to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load float**, float*** %pparray.addr, align 8, !tbaa !1
  store float* null, float** %2, align 8, !tbaa !1
  %3 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %kstr.addr, align 8, !tbaa !1
  %call = call i32 @dict_find_string(%struct.ref_s* %3, i8* %4, %struct.ref_s** %par) #3
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %required.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %5, 0
  %cond = select i1 %tobool, i32 -15, i32 0
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.25

if.end:                                           ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %par, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %7 = load i16, i16* %type_attrs, align 2, !tbaa !28
  %conv = zext i16 %7 to i32
  %and = and i32 %conv, 15360
  %cmp1 = icmp eq i32 %and, 1024
  br i1 %cmp1, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.25

if.end.4:                                         ; preds = %if.end
  %8 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.ref_s*, %struct.ref_s** %par, align 8, !tbaa !1
  %tas5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas5, i32 0, i32 2
  %10 = load i32, i32* %rsize, align 4, !tbaa !29
  store i32 %10, i32* %size, align 4, !tbaa !5
  %11 = bitcast float** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %12, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %13 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !39
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %15 = load i32, i32* %size, align 4, !tbaa !5
  %16 = load i8*, i8** %kstr.addr, align 8, !tbaa !1
  %call6 = call i8* %13(%struct.gs_memory_s* %14, i32 %15, i32 4, i8* %16) #3
  %17 = bitcast i8* %call6 to float*
  store float* %17, float** %ptr, align 8, !tbaa !1
  %18 = load float*, float** %ptr, align 8, !tbaa !1
  %cmp7 = icmp eq float* %18, null
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.4
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end.4
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %20 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %21 = load i8*, i8** %kstr.addr, align 8, !tbaa !1
  %22 = load i32, i32* %size, align 4, !tbaa !5
  %23 = load float*, float** %ptr, align 8, !tbaa !1
  %call11 = call i32 @dict_float_array_check_param(%struct.gs_memory_s* %19, %struct.ref_s* %20, i8* %21, i32 %22, float* %23, float* null, i32 0, i32 -15) #3
  store i32 %call11, i32* %code, align 4, !tbaa !5
  %24 = load i32, i32* %code, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %24, 0
  br i1 %cmp12, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.10
  %25 = load i32, i32* %even.addr, align 4, !tbaa !5
  %tobool14 = icmp ne i32 %25, 0
  br i1 %tobool14, label %land.lhs.true, label %if.end.23

land.lhs.true:                                    ; preds = %lor.lhs.false
  %26 = load i32, i32* %code, align 4, !tbaa !5
  %and15 = and i32 %26, 1
  %cmp16 = icmp ne i32 %and15, 0
  br i1 %cmp16, label %if.then.18, label %if.end.23

if.then.18:                                       ; preds = %land.lhs.true, %if.end.10
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs19 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %27, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs19, i32 0, i32 2
  %28 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !43
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %30 = load float*, float** %ptr, align 8, !tbaa !1
  %31 = bitcast float* %30 to i8*
  %32 = load i8*, i8** %kstr.addr, align 8, !tbaa !1
  call void %28(%struct.gs_memory_s* %29, i8* %31, i8* %32) #3
  %33 = load i32, i32* %code, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %33, 0
  br i1 %cmp20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.18
  %34 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.then.18
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond22 = phi i32 [ %34, %cond.true ], [ -15, %cond.false ]
  store i32 %cond22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %land.lhs.true, %lor.lhs.false
  %35 = load float*, float** %ptr, align 8, !tbaa !1
  %36 = load float**, float*** %pparray.addr, align 8, !tbaa !1
  store float* %35, float** %36, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.23, %cond.end, %if.then.9
  %37 = bitcast float** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.25 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %39 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %39, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.25

cleanup.25:                                       ; preds = %cleanup.cont, %cleanup, %if.then.3, %if.then
  %40 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast %struct.ref_s** %par to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = load i32, i32* %retval
  ret i32 %42
}

declare void @gs_errorinfo_put_pair_from_dict(%struct.gs_context_state_s*, %struct.ref_s*, i8*) #2

declare void @gs_free_const_object(%struct.gs_memory_s*, i8*, i8*) #2

declare i32 @dict_find_string(%struct.ref_s*, i8*, %struct.ref_s**) #2

declare i32 @dict_float_array_check_param(%struct.gs_memory_s*, %struct.ref_s*, i8*, i32, float*, float*, i32, i32) #2

; Function Attrs: nounwind uwtable
define i32 @fn_build_float_array_forced(%struct.ref_s* %op, i8* %kstr, i32 %required, float** %pparray, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %kstr.addr = alloca i8*, align 8
  %required.addr = alloca i32, align 4
  %pparray.addr = alloca float**, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %par = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %size = alloca i32, align 4
  %ptr = alloca float*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store i8* %kstr, i8** %kstr.addr, align 8, !tbaa !1
  store i32 %required, i32* %required.addr, align 4, !tbaa !5
  store float** %pparray, float*** %pparray.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %par to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast float** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load float**, float*** %pparray.addr, align 8, !tbaa !1
  store float* null, float** %4, align 8, !tbaa !1
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %kstr.addr, align 8, !tbaa !1
  %call = call i32 @dict_find_string(%struct.ref_s* %5, i8* %6, %struct.ref_s** %par) #3
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %required.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %7, 0
  %cond = select i1 %tobool, i32 -15, i32 0
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.ref_s*, %struct.ref_s** %par, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %9 = load i16, i16* %type_attrs, align 2, !tbaa !28
  %conv = zext i16 %9 to i32
  %and = and i32 %conv, 15360
  %cmp1 = icmp eq i32 %and, 1024
  br i1 %cmp1, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %10 = load %struct.ref_s*, %struct.ref_s** %par, align 8, !tbaa !1
  %tas4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas4, i32 0, i32 2
  %11 = load i32, i32* %rsize, align 4, !tbaa !29
  store i32 %11, i32* %size, align 4, !tbaa !5
  br label %if.end.19

if.else:                                          ; preds = %if.end
  %12 = load %struct.ref_s*, %struct.ref_s** %par, align 8, !tbaa !1
  %tas5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %type_attrs6 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas5, i32 0, i32 0
  %13 = bitcast i16* %type_attrs6 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 1
  %14 = load i8, i8* %arrayidx, align 1, !tbaa !44
  %conv7 = zext i8 %14 to i32
  %cmp8 = icmp eq i32 %conv7, 11
  br i1 %cmp8, label %if.then.16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %15 = load %struct.ref_s*, %struct.ref_s** %par, align 8, !tbaa !1
  %tas10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %type_attrs11 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas10, i32 0, i32 0
  %16 = bitcast i16* %type_attrs11 to i8*
  %arrayidx12 = getelementptr inbounds i8, i8* %16, i64 1
  %17 = load i8, i8* %arrayidx12, align 1, !tbaa !44
  %conv13 = zext i8 %17 to i32
  %cmp14 = icmp eq i32 %conv13, 16
  br i1 %cmp14, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %lor.lhs.false, %if.else
  store i32 1, i32* %size, align 4, !tbaa !5
  br label %if.end.18

if.else.17:                                       ; preds = %lor.lhs.false
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.then.16
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.3
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %18, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %19 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !39
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %21 = load i32, i32* %size, align 4, !tbaa !5
  %22 = load i8*, i8** %kstr.addr, align 8, !tbaa !1
  %call20 = call i8* %19(%struct.gs_memory_s* %20, i32 %21, i32 4, i8* %22) #3
  %23 = bitcast i8* %call20 to float*
  store float* %23, float** %ptr, align 8, !tbaa !1
  %24 = load float*, float** %ptr, align 8, !tbaa !1
  %cmp21 = icmp eq float* %24, null
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.19
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %if.end.19
  %25 = load %struct.ref_s*, %struct.ref_s** %par, align 8, !tbaa !1
  %tas25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 0
  %type_attrs26 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas25, i32 0, i32 0
  %26 = load i16, i16* %type_attrs26, align 2, !tbaa !28
  %conv27 = zext i16 %26 to i32
  %and28 = and i32 %conv27, 15360
  %cmp29 = icmp eq i32 %and28, 1024
  br i1 %cmp29, label %if.then.31, label %if.else.33

if.then.31:                                       ; preds = %if.end.24
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %28 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %29 = load i8*, i8** %kstr.addr, align 8, !tbaa !1
  %30 = load i32, i32* %size, align 4, !tbaa !5
  %31 = load float*, float** %ptr, align 8, !tbaa !1
  %call32 = call i32 @dict_float_array_check_param(%struct.gs_memory_s* %27, %struct.ref_s* %28, i8* %29, i32 %30, float* %31, float* null, i32 0, i32 -15) #3
  store i32 %call32, i32* %code, align 4, !tbaa !5
  br label %if.end.39

if.else.33:                                       ; preds = %if.end.24
  %32 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %33 = load i8*, i8** %kstr.addr, align 8, !tbaa !1
  %34 = load float*, float** %ptr, align 8, !tbaa !1
  %call34 = call i32 @dict_float_param(%struct.ref_s* %32, i8* %33, double 0.000000e+00, float* %34) #3
  store i32 %call34, i32* %code, align 4, !tbaa !5
  %35 = load i32, i32* %code, align 4, !tbaa !5
  %cmp35 = icmp eq i32 %35, 0
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.else.33
  store i32 1, i32* %code, align 4, !tbaa !5
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.else.33
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.31
  %36 = load i32, i32* %code, align 4, !tbaa !5
  %cmp40 = icmp slt i32 %36, 0
  br i1 %cmp40, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %if.end.39
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs43 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %37, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs43, i32 0, i32 2
  %38 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !43
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %40 = load float*, float** %ptr, align 8, !tbaa !1
  %41 = bitcast float* %40 to i8*
  %42 = load i8*, i8** %kstr.addr, align 8, !tbaa !1
  call void %38(%struct.gs_memory_s* %39, i8* %41, i8* %42) #3
  %43 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %43, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.44:                                        ; preds = %if.end.39
  %44 = load float*, float** %ptr, align 8, !tbaa !1
  %45 = load float**, float*** %pparray.addr, align 8, !tbaa !1
  store float* %44, float** %45, align 8, !tbaa !1
  %46 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %46, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.44, %if.then.42, %if.then.23, %if.else.17, %if.then
  %47 = bitcast float** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast %struct.ref_s** %par to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = load i32, i32* %retval
  ret i32 %51
}

declare i32 @dict_float_param(%struct.ref_s*, i8*, double, float*) #2

; Function Attrs: nounwind uwtable
define %struct.gs_function_s* @ref_function(%struct.ref_s* %op) #0 {
entry:
  %retval = alloca %struct.gs_function_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %0 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %1 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 1
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !44
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 4
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %4 = load i16, i16* %type_attrs3, align 2, !tbaa !28
  %conv4 = zext i16 %4 to i32
  %and = and i32 %conv4, 240
  %cmp5 = icmp eq i32 %and, 192
  br i1 %cmp5, label %land.lhs.true.7, label %if.end

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %5 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas8, i32 0, i32 2
  %6 = load i32, i32* %rsize, align 4, !tbaa !29
  %cmp9 = icmp eq i32 %6, 2
  br i1 %cmp9, label %land.lhs.true.11, label %if.end

land.lhs.true.11:                                 ; preds = %land.lhs.true.7
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 1
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %8 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 1
  %tas12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 0
  %type_attrs13 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas12, i32 0, i32 0
  %9 = load i16, i16* %type_attrs13, align 2, !tbaa !28
  %conv14 = zext i16 %9 to i32
  %and15 = and i32 %conv14, 16256
  %cmp16 = icmp eq i32 %and15, 3968
  br i1 %cmp16, label %land.lhs.true.18, label %if.end

land.lhs.true.18:                                 ; preds = %land.lhs.true.11
  %10 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  %refs20 = bitcast %union.v* %value19 to %struct.ref_s**
  %11 = load %struct.ref_s*, %struct.ref_s** %refs20, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 1
  %value22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx21, i32 0, i32 1
  %opproc = bitcast %union.v* %value22 to i32 (%struct.gs_context_state_s*)**
  %12 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %cmp23 = icmp eq i32 (%struct.gs_context_state_s*)* %12, @zexecfunction
  br i1 %cmp23, label %land.lhs.true.25, label %if.end

land.lhs.true.25:                                 ; preds = %land.lhs.true.18
  %13 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 1
  %refs27 = bitcast %union.v* %value26 to %struct.ref_s**
  %14 = load %struct.ref_s*, %struct.ref_s** %refs27, align 8, !tbaa !1
  %tas28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %type_attrs29 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas28, i32 0, i32 0
  %15 = load i16, i16* %type_attrs29, align 2, !tbaa !28
  %conv30 = zext i16 %15 to i32
  %and31 = and i32 %conv30, 15872
  %cmp32 = icmp eq i32 %and31, 2048
  br i1 %cmp32, label %land.lhs.true.34, label %if.end

land.lhs.true.34:                                 ; preds = %land.lhs.true.25
  %16 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 1
  %refs36 = bitcast %union.v* %value35 to %struct.ref_s**
  %17 = load %struct.ref_s*, %struct.ref_s** %refs36, align 8, !tbaa !1
  %tas37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 0
  %type_attrs38 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas37, i32 0, i32 0
  %18 = load i16, i16* %type_attrs38, align 2, !tbaa !28
  %conv39 = zext i16 %18 to i32
  %and40 = and i32 %conv39, 240
  %cmp41 = icmp eq i32 %and40, 192
  br i1 %cmp41, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.34
  %19 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %value43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 1
  %refs44 = bitcast %union.v* %value43 to %struct.ref_s**
  %20 = load %struct.ref_s*, %struct.ref_s** %refs44, align 8, !tbaa !1
  %value45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 1
  %pstruct = bitcast %union.v* %value45 to %struct.obj_header_s**
  %21 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %22 = bitcast %struct.obj_header_s* %21 to %struct.gs_function_s*
  store %struct.gs_function_s* %22, %struct.gs_function_s** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.34, %land.lhs.true.25, %land.lhs.true.18, %land.lhs.true.11, %land.lhs.true.7, %land.lhs.true, %entry
  store %struct.gs_function_s* null, %struct.gs_function_s** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %23 = load %struct.gs_function_s*, %struct.gs_function_s** %retval
  ret %struct.gs_function_s* %23
}

; Function Attrs: nounwind uwtable
define internal i32 @zbuildfunction(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %pfn = alloca %struct.gs_function_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !7
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gs_function_s** %pfn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %8 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !25
  %9 = bitcast %struct.gs_ref_memory_s* %8 to %struct.gs_memory_s*
  %call = call i32 @fn_build_function(%struct.gs_context_state_s* %5, %struct.ref_s* %6, %struct.gs_function_s** %pfn, %struct.gs_memory_s* %9, float* null, i32 0) #3
  store i32 %call, i32* %code, align 4, !tbaa !5
  %10 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %14 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn, align 8, !tbaa !1
  %call1 = call i32 @make_function_proc(%struct.gs_context_state_s* %12, %struct.ref_s* %13, %struct.gs_function_s* %14) #3
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %15 = load i32, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %15, 0
  br i1 %cmp2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %if.end
  %16 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn, align 8, !tbaa !1
  %head = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %16, i32 0, i32 0
  %procs = getelementptr inbounds %struct.gs_function_head_s, %struct.gs_function_head_s* %head, i32 0, i32 1
  %free = getelementptr inbounds %struct.gs_function_procs_s, %struct.gs_function_procs_s* %procs, i32 0, i32 6
  %17 = load void (%struct.gs_function_s*, i32, %struct.gs_memory_s*)*, void (%struct.gs_function_s*, i32, %struct.gs_memory_s*)** %free, align 8, !tbaa !20
  %18 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn, align 8, !tbaa !1
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory4 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 1
  %current5 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory4, i32 0, i32 0
  %20 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current5, align 8, !tbaa !25
  %21 = bitcast %struct.gs_ref_memory_s* %20 to %struct.gs_memory_s*
  call void %17(%struct.gs_function_s* %18, i32 1, %struct.gs_memory_s* %21) #3
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.3, %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.6, %if.then
  %22 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast %struct.gs_function_s** %pfn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal i32 @zisencapfunction(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %pfn = alloca %struct.gs_function_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !7
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gs_function_s** %pfn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %5 = load i16, i16* %type_attrs, align 2, !tbaa !28
  %conv = zext i16 %5 to i32
  %and = and i32 %conv, 15552
  %cmp = icmp eq i32 %and, 1216
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_proc_failed(%struct.ref_s* %6) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call2 = call %struct.gs_function_s* @ref_function(%struct.ref_s* %7) #3
  store %struct.gs_function_s* %call2, %struct.gs_function_s** %pfn, align 8, !tbaa !1
  %8 = load %struct.gs_function_s*, %struct.gs_function_s** %pfn, align 8, !tbaa !1
  %cmp3 = icmp ne %struct.gs_function_s* %8, null
  %conv4 = zext i1 %cmp3 to i32
  %conv5 = trunc i32 %conv4 to i16
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %boolval = bitcast %union.v* %value to i16*
  store i16 %conv5, i16* %boolval, align 2, !tbaa !31
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %type_attrs7 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas6, i32 0, i32 0
  store i16 256, i16* %type_attrs7, align 2, !tbaa !28
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %11 = bitcast %struct.gs_function_s** %pfn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  %12 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  %13 = load i32, i32* %retval
  ret i32 %13
}

declare i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s*, %struct.ref_s*, i32, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @check_proc_failed(%struct.ref_s*) #2

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
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 624}
!8 = !{!"gs_context_state_s", !2, i64 0, !9, i64 8, !6, i64 80, !11, i64 88, !11, i64 104, !14, i64 120, !14, i64 128, !14, i64 136, !6, i64 144, !6, i64 148, !11, i64 152, !11, i64 168, !6, i64 184, !6, i64 188, !6, i64 192, !6, i64 196, !2, i64 200, !3, i64 208, !2, i64 256, !15, i64 264, !15, i64 304, !2, i64 344, !6, i64 352, !2, i64 360, !16, i64 368, !18, i64 520, !19, i64 624, !2, i64 720}
!9 = !{!"gs_dual_memory_s", !2, i64 0, !10, i64 8, !6, i64 48, !2, i64 56, !6, i64 64, !6, i64 68}
!10 = !{!"vm_spaces_s", !2, i64 0, !3, i64 8}
!11 = !{!"ref_s", !12, i64 0, !3, i64 8}
!12 = !{!"tas_s", !13, i64 0, !13, i64 2, !6, i64 4}
!13 = !{!"short", !3, i64 0}
!14 = !{!"long", !3, i64 0}
!15 = !{!"op_array_table_s", !11, i64 0, !2, i64 16, !6, i64 24, !6, i64 28, !6, i64 32}
!16 = !{!"dict_stack_s", !17, i64 0, !6, i64 96, !6, i64 100, !6, i64 104, !2, i64 112, !6, i64 120, !2, i64 128, !11, i64 136}
!17 = !{!"ref_stack_s", !2, i64 0, !2, i64 8, !2, i64 16, !11, i64 24, !6, i64 40, !6, i64 44, !11, i64 48, !6, i64 64, !6, i64 68, !6, i64 72, !2, i64 80, !2, i64 88}
!18 = !{!"exec_stack_s", !17, i64 0, !2, i64 96}
!19 = !{!"op_stack_s", !17, i64 0}
!20 = !{!21, !2, i64 56}
!21 = !{!"gs_function_s", !22, i64 0, !24, i64 72}
!22 = !{!"gs_function_head_s", !6, i64 0, !23, i64 8}
!23 = !{!"gs_function_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!24 = !{!"gs_function_params_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24}
!25 = !{!8, !2, i64 8}
!26 = !{!9, !6, i64 48}
!27 = !{!9, !6, i64 68}
!28 = !{!11, !13, i64 0}
!29 = !{!11, !6, i64 4}
!30 = !{i64 0, i64 2, !31, i64 2, i64 2, !31, i64 4, i64 4, !5, i64 8, i64 8, !32, i64 8, i64 2, !31, i64 8, i64 4, !33, i64 8, i64 8, !32, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !32}
!31 = !{!13, !13, i64 0}
!32 = !{!14, !14, i64 0}
!33 = !{!34, !34, i64 0}
!34 = !{!"float", !3, i64 0}
!35 = !{!21, !6, i64 72}
!36 = !{!21, !6, i64 88}
!37 = !{!8, !2, i64 640}
!38 = !{!8, !6, i64 688}
!39 = !{!40, !2, i64 88}
!40 = !{!"gs_memory_s", !2, i64 0, !41, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!41 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!42 = !{!21, !2, i64 8}
!43 = !{!40, !2, i64 24}
!44 = !{!3, !3, i64 0}
!45 = !{!46, !6, i64 0}
!46 = !{!"build_function_type_s", !6, i64 0, !2, i64 8}
!47 = !{!24, !2, i64 8}
!48 = !{!24, !2, i64 24}
!49 = !{!24, !6, i64 0}
!50 = !{!24, !6, i64 16}
!51 = !{!46, !2, i64 8}
