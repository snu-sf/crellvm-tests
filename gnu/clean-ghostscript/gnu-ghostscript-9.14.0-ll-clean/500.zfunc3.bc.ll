; ModuleID = './zfunc3.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.gs_data_source_s = type { i32 (%struct.gs_data_source_s*, i64, i32, i8*, i8**)*, i32, %union.d_ }
%union.d_ = type { %struct.gs_const_string_s }
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
%struct.gs_function_ElIn_params_s = type { i32, float*, i32, float*, float*, float*, float }
%struct.gs_function_1ItSg_params_s = type { i32, float*, i32, float*, i32, %struct.gs_function_s**, float*, float* }

@.str = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"C0\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"C1\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Functions\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Bounds\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Encode\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gs_build_function_2(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %op, %struct.gs_function_params_s* %mnDR, i32 %depth, %struct.gs_function_s** %ppfn, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  %mnDR.addr = alloca %struct.gs_function_params_s*, align 8
  %depth.addr = alloca i32, align 4
  %ppfn.addr = alloca %struct.gs_function_s**, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %params = alloca %struct.gs_function_ElIn_params_s, align 8
  %code = alloca i32, align 4
  %n0 = alloca i32, align 4
  %n1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.gs_function_params_s* %mnDR, %struct.gs_function_params_s** %mnDR.addr, align 8, !tbaa !1
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !5
  store %struct.gs_function_s** %ppfn, %struct.gs_function_s*** %ppfn.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_function_ElIn_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 56, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %n0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %n1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %struct.gs_function_ElIn_params_s* %params to %struct.gs_function_params_s*
  %5 = load %struct.gs_function_params_s*, %struct.gs_function_params_s** %mnDR.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gs_function_params_s* %4 to i8*
  %7 = bitcast %struct.gs_function_params_s* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 32, i32 8, i1 false), !tbaa.struct !7
  %C0 = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %params, i32 0, i32 4
  store float* null, float** %C0, align 8, !tbaa !8
  %C1 = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %params, i32 0, i32 5
  store float* null, float** %C1, align 8, !tbaa !11
  %8 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %N = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %params, i32 0, i32 6
  %call = call i32 @dict_float_param(%struct.ref_s* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), double 0.000000e+00, float* %N) #3
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %C01 = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %params, i32 0, i32 4
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call2 = call i32 @fn_build_float_array_forced(%struct.ref_s* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 0, float** %C01, %struct.gs_memory_s* %10) #3
  store i32 %call2, i32* %n0, align 4, !tbaa !5
  store i32 %call2, i32* %code, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %11 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %C15 = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %params, i32 0, i32 5
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call6 = call i32 @fn_build_float_array_forced(%struct.ref_s* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32 0, float** %C15, %struct.gs_memory_s* %12) #3
  store i32 %call6, i32* %n1, align 4, !tbaa !5
  store i32 %call6, i32* %code, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.4, %lor.lhs.false, %entry
  br label %fail

if.end:                                           ; preds = %lor.lhs.false.4
  %C08 = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %params, i32 0, i32 4
  %13 = load float*, float** %C08, align 8, !tbaa !8
  %cmp9 = icmp eq float* %13, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  store i32 1, i32* %n0, align 4, !tbaa !5
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end
  %C112 = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %params, i32 0, i32 5
  %14 = load float*, float** %C112, align 8, !tbaa !11
  %cmp13 = icmp eq float* %14, null
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.11
  store i32 1, i32* %n1, align 4, !tbaa !5
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.11
  %Range = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %params, i32 0, i32 3
  %15 = load float*, float** %Range, align 8, !tbaa !12
  %cmp16 = icmp eq float* %15, null
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.15
  %16 = load i32, i32* %n0, align 4, !tbaa !5
  %n = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %params, i32 0, i32 2
  store i32 %16, i32* %n, align 4, !tbaa !13
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end.15
  %17 = load i32, i32* %n0, align 4, !tbaa !5
  %18 = load i32, i32* %n1, align 4, !tbaa !5
  %cmp19 = icmp ne i32 %17, %18
  br i1 %cmp19, label %if.then.23, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %if.end.18
  %19 = load i32, i32* %n0, align 4, !tbaa !5
  %n21 = getelementptr inbounds %struct.gs_function_ElIn_params_s, %struct.gs_function_ElIn_params_s* %params, i32 0, i32 2
  %20 = load i32, i32* %n21, align 4, !tbaa !13
  %cmp22 = icmp ne i32 %19, %20
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %lor.lhs.false.20, %if.end.18
  br label %fail

if.end.24:                                        ; preds = %lor.lhs.false.20
  %21 = load %struct.gs_function_s**, %struct.gs_function_s*** %ppfn.addr, align 8, !tbaa !1
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call25 = call i32 @gs_function_ElIn_init(%struct.gs_function_s** %21, %struct.gs_function_ElIn_params_s* %params, %struct.gs_memory_s* %22) #3
  store i32 %call25, i32* %code, align 4, !tbaa !5
  %23 = load i32, i32* %code, align 4, !tbaa !5
  %cmp26 = icmp sge i32 %23, 0
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.24
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %if.end.24
  br label %fail

fail:                                             ; preds = %if.end.28, %if.then.23, %if.then
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @gs_function_ElIn_free_params(%struct.gs_function_ElIn_params_s* %params, %struct.gs_memory_s* %24) #3
  %25 = load i32, i32* %code, align 4, !tbaa !5
  %cmp29 = icmp slt i32 %25, 0
  br i1 %cmp29, label %cond.true, label %cond.false

cond.true:                                        ; preds = %fail
  %26 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %fail
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %26, %cond.true ], [ -15, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then.27
  %27 = bitcast i32* %n1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = bitcast i32* %n0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = bitcast %struct.gs_function_ElIn_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 56, i8* %30) #1
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @dict_float_param(%struct.ref_s*, i8*, double, float*) #2

declare i32 @fn_build_float_array_forced(%struct.ref_s*, i8*, i32, float**, %struct.gs_memory_s*) #2

declare i32 @gs_function_ElIn_init(%struct.gs_function_s**, %struct.gs_function_ElIn_params_s*, %struct.gs_memory_s*) #2

declare void @gs_function_ElIn_free_params(%struct.gs_function_ElIn_params_s*, %struct.gs_memory_s*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @gs_build_function_3(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %op, %struct.gs_function_params_s* %mnDR, i32 %depth, %struct.gs_function_s** %ppfn, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  %mnDR.addr = alloca %struct.gs_function_params_s*, align 8
  %depth.addr = alloca i32, align 4
  %ppfn.addr = alloca %struct.gs_function_s**, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %params = alloca %struct.gs_function_1ItSg_params_s, align 8
  %code = alloca i32, align 4
  %pFunctions = alloca %struct.ref_s*, align 8
  %ptr = alloca %struct.gs_function_s**, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %subfn = alloca %struct.ref_s, align 8
  %sz = alloca i32, align 4
  %k2 = alloca i32, align 4
  %encode = alloca %struct.ref_s*, align 8
  %p = alloca float*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.gs_function_params_s* %mnDR, %struct.gs_function_params_s** %mnDR.addr, align 8, !tbaa !1
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !5
  store %struct.gs_function_s** %ppfn, %struct.gs_function_s*** %ppfn.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_function_1ItSg_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 64, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.gs_function_1ItSg_params_s* %params to %struct.gs_function_params_s*
  %3 = load %struct.gs_function_params_s*, %struct.gs_function_params_s** %mnDR.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gs_function_params_s* %2 to i8*
  %5 = bitcast %struct.gs_function_params_s* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 32, i32 8, i1 false), !tbaa.struct !7
  %Functions = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params, i32 0, i32 5
  store %struct.gs_function_s** null, %struct.gs_function_s*** %Functions, align 8, !tbaa !14
  %Bounds = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params, i32 0, i32 6
  store float* null, float** %Bounds, align 8, !tbaa !16
  %Encode = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params, i32 0, i32 7
  store float* null, float** %Encode, align 8, !tbaa !17
  %6 = bitcast %struct.ref_s** %pFunctions to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast %struct.gs_function_s*** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call = call i32 @dict_find_string(%struct.ref_s* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), %struct.ref_s** %pFunctions) #3
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %code, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %10, 0
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %11 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %11, %cond.true ], [ -15, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.25

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %12 = load %struct.ref_s*, %struct.ref_s** %pFunctions, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %13 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 1
  %14 = load i8, i8* %arrayidx, align 1, !tbaa !18
  %conv = zext i8 %14 to i32
  %cmp2 = icmp eq i32 %conv, 4
  br i1 %cmp2, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %do.body
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.25

if.end.5:                                         ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.5
  br label %do.end

do.end:                                           ; preds = %do.cond
  %15 = load %struct.ref_s*, %struct.ref_s** %pFunctions, align 8, !tbaa !1
  %tas6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas6, i32 0, i32 2
  %16 = load i32, i32* %rsize, align 4, !tbaa !19
  %k = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params, i32 0, i32 4
  store i32 %16, i32* %k, align 4, !tbaa !23
  %k7 = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params, i32 0, i32 4
  %17 = load i32, i32* %k7, align 4, !tbaa !23
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call8 = call i32 @alloc_function_array(i32 %17, %struct.gs_function_s*** %ptr, %struct.gs_memory_s* %18) #3
  store i32 %call8, i32* %code, align 4, !tbaa !5
  %19 = load i32, i32* %code, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %19, 0
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %do.end
  %20 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.25

if.end.12:                                        ; preds = %do.end
  %21 = load %struct.gs_function_s**, %struct.gs_function_s*** %ptr, align 8, !tbaa !1
  %Functions13 = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params, i32 0, i32 5
  store %struct.gs_function_s** %21, %struct.gs_function_s*** %Functions13, align 8, !tbaa !14
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.12
  %22 = load i32, i32* %i, align 4, !tbaa !5
  %k14 = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params, i32 0, i32 4
  %23 = load i32, i32* %k14, align 4, !tbaa !23
  %cmp15 = icmp slt i32 %22, %23
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = bitcast %struct.ref_s* %subfn to i8*
  call void @llvm.lifetime.start(i64 16, i8* %24) #1
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %26 = load %struct.ref_s*, %struct.ref_s** %pFunctions, align 8, !tbaa !1
  %27 = load i32, i32* %i, align 4, !tbaa !5
  %conv17 = sext i32 %27 to i64
  %call18 = call i32 @array_get(%struct.gs_memory_s* %25, %struct.ref_s* %26, i64 %conv17, %struct.ref_s* %subfn) #3
  %28 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %29 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %29 to i64
  %30 = load %struct.gs_function_s**, %struct.gs_function_s*** %ptr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds %struct.gs_function_s*, %struct.gs_function_s** %30, i64 %idxprom
  %31 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call20 = call i32 @fn_build_sub_function(%struct.gs_context_state_s* %28, %struct.ref_s* %subfn, %struct.gs_function_s** %arrayidx19, i32 %31, %struct.gs_memory_s* %32, float* null, i32 0) #3
  store i32 %call20, i32* %code, align 4, !tbaa !5
  %33 = load i32, i32* %code, align 4, !tbaa !5
  %cmp21 = icmp slt i32 %33, 0
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %for.body
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %for.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.23, %if.end.24
  %34 = bitcast %struct.ref_s* %subfn to i8*
  call void @llvm.lifetime.end(i64 16, i8* %34) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.25 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %35 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.25

cleanup.25:                                       ; preds = %for.end, %cleanup, %if.then.11, %if.then.4, %cond.end
  %36 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast %struct.gs_function_s*** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = bitcast %struct.ref_s** %pFunctions to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %cleanup.dest.28 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.28, label %cleanup.112 [
    i32 0, label %cleanup.cont.29
    i32 7, label %fail
  ]

cleanup.cont.29:                                  ; preds = %cleanup.25
  %39 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %Bounds30 = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params, i32 0, i32 6
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call31 = call i32 @fn_build_float_array(%struct.ref_s* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 1, i32 0, float** %Bounds30, %struct.gs_memory_s* %40) #3
  store i32 %call31, i32* %code, align 4, !tbaa !5
  %k32 = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params, i32 0, i32 4
  %41 = load i32, i32* %k32, align 4, !tbaa !23
  %sub = sub nsw i32 %41, 1
  %cmp33 = icmp ne i32 %call31, %sub
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %cleanup.cont.29
  br label %fail

if.end.36:                                        ; preds = %cleanup.cont.29
  %42 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %42, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %43 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !24
  %44 = bitcast %struct.gs_ref_memory_s* %43 to %struct.gs_memory_s*
  %call37 = call i32 @gs_currentcpsimode(%struct.gs_memory_s* %44) #3
  %tobool = icmp ne i32 %call37, 0
  br i1 %tobool, label %if.then.38, label %if.else

if.then.38:                                       ; preds = %if.end.36
  %45 = bitcast i32* %sz to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #1
  %46 = bitcast i32* %k2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #1
  %k39 = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params, i32 0, i32 4
  %47 = load i32, i32* %k39, align 4, !tbaa !23
  %mul = mul nsw i32 2, %47
  store i32 %mul, i32* %k2, align 4, !tbaa !5
  %48 = bitcast %struct.ref_s** %encode to i8*
  call void @llvm.lifetime.start(i64 8, i8* %48) #1
  %49 = bitcast float** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %49) #1
  %50 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %50, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %51 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !34
  %52 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %53 = load i32, i32* %k2, align 4, !tbaa !5
  %call40 = call i8* %51(%struct.gs_memory_s* %52, i32 %53, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0)) #3
  %54 = bitcast i8* %call40 to float*
  store float* %54, float** %p, align 8, !tbaa !1
  %55 = load float*, float** %p, align 8, !tbaa !1
  %Encode41 = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params, i32 0, i32 7
  store float* %55, float** %Encode41, align 8, !tbaa !17
  %56 = load float*, float** %p, align 8, !tbaa !1
  %cmp42 = icmp eq float* %56, null
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.then.38
  store i32 -25, i32* %code, align 4, !tbaa !5
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup.78

if.end.45:                                        ; preds = %if.then.38
  %57 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call46 = call i32 @dict_find_string(%struct.ref_s* %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), %struct.ref_s** %encode) #3
  %cmp47 = icmp sle i32 %call46, 0
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.45
  store i32 -21, i32* %code, align 4, !tbaa !5
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup.78

if.end.50:                                        ; preds = %if.end.45
  %58 = load %struct.ref_s*, %struct.ref_s** %encode, align 8, !tbaa !1
  %tas51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %58, i32 0, i32 0
  %type_attrs52 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas51, i32 0, i32 0
  %59 = load i16, i16* %type_attrs52, align 2, !tbaa !37
  %conv53 = zext i16 %59 to i32
  %and = and i32 %conv53, 15360
  %cmp54 = icmp eq i32 %and, 1024
  br i1 %cmp54, label %if.end.57, label %if.then.56

if.then.56:                                       ; preds = %if.end.50
  store i32 -20, i32* %code, align 4, !tbaa !5
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup.78

if.end.57:                                        ; preds = %if.end.50
  %60 = load i32, i32* %k2, align 4, !tbaa !5
  %61 = load %struct.ref_s*, %struct.ref_s** %encode, align 8, !tbaa !1
  %tas58 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %61, i32 0, i32 0
  %rsize59 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas58, i32 0, i32 2
  %62 = load i32, i32* %rsize59, align 4, !tbaa !19
  %cmp60 = icmp ult i32 %60, %62
  br i1 %cmp60, label %cond.true.62, label %cond.false.63

cond.true.62:                                     ; preds = %if.end.57
  %63 = load i32, i32* %k2, align 4, !tbaa !5
  br label %cond.end.66

cond.false.63:                                    ; preds = %if.end.57
  %64 = load %struct.ref_s*, %struct.ref_s** %encode, align 8, !tbaa !1
  %tas64 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %64, i32 0, i32 0
  %rsize65 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas64, i32 0, i32 2
  %65 = load i32, i32* %rsize65, align 4, !tbaa !19
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.false.63, %cond.true.62
  %cond67 = phi i32 [ %63, %cond.true.62 ], [ %65, %cond.false.63 ]
  store i32 %cond67, i32* %sz, align 4, !tbaa !5
  %66 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %67 = load %struct.ref_s*, %struct.ref_s** %encode, align 8, !tbaa !1
  %68 = load i32, i32* %sz, align 4, !tbaa !5
  %69 = load float*, float** %p, align 8, !tbaa !1
  %call68 = call i32 @process_float_array(%struct.gs_memory_s* %66, %struct.ref_s* %67, i32 %68, float* %69) #3
  store i32 %call68, i32* %code, align 4, !tbaa !5
  %70 = load i32, i32* %code, align 4, !tbaa !5
  %cmp69 = icmp slt i32 %70, 0
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %cond.end.66
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup.78

if.end.72:                                        ; preds = %cond.end.66
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.72
  %71 = load i32, i32* %sz, align 4, !tbaa !5
  %72 = load i32, i32* %k2, align 4, !tbaa !5
  %cmp73 = icmp ult i32 %71, %72
  br i1 %cmp73, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %73 = load i32, i32* %sz, align 4, !tbaa !5
  %inc75 = add i32 %73, 1
  store i32 %inc75, i32* %sz, align 4, !tbaa !5
  %idxprom76 = zext i32 %73 to i64
  %74 = load float*, float** %p, align 8, !tbaa !1
  %arrayidx77 = getelementptr inbounds float, float* %74, i64 %idxprom76
  store float 0.000000e+00, float* %arrayidx77, align 4, !tbaa !38
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.78

cleanup.78:                                       ; preds = %if.then.71, %if.then.56, %if.then.49, %if.then.44, %while.end
  %75 = bitcast float** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = bitcast %struct.ref_s** %encode to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %77 = bitcast i32* %k2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  %78 = bitcast i32* %sz to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  %cleanup.dest.82 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.82, label %cleanup.112 [
    i32 0, label %cleanup.cont.83
    i32 7, label %fail
  ]

cleanup.cont.83:                                  ; preds = %cleanup.78
  br label %if.end.92

if.else:                                          ; preds = %if.end.36
  %79 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %Encode84 = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params, i32 0, i32 7
  %80 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call85 = call i32 @fn_build_float_array(%struct.ref_s* %79, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 1, i32 1, float** %Encode84, %struct.gs_memory_s* %80) #3
  store i32 %call85, i32* %code, align 4, !tbaa !5
  %k86 = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params, i32 0, i32 4
  %81 = load i32, i32* %k86, align 4, !tbaa !23
  %mul87 = mul nsw i32 2, %81
  %cmp88 = icmp ne i32 %call85, %mul87
  br i1 %cmp88, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %if.else
  br label %fail

if.end.91:                                        ; preds = %if.else
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %cleanup.cont.83
  %Range = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params, i32 0, i32 3
  %82 = load float*, float** %Range, align 8, !tbaa !39
  %cmp93 = icmp eq float* %82, null
  br i1 %cmp93, label %if.then.95, label %if.end.100

if.then.95:                                       ; preds = %if.end.92
  %Functions96 = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params, i32 0, i32 5
  %83 = load %struct.gs_function_s**, %struct.gs_function_s*** %Functions96, align 8, !tbaa !14
  %arrayidx97 = getelementptr inbounds %struct.gs_function_s*, %struct.gs_function_s** %83, i64 0
  %84 = load %struct.gs_function_s*, %struct.gs_function_s** %arrayidx97, align 8, !tbaa !1
  %params98 = getelementptr inbounds %struct.gs_function_s, %struct.gs_function_s* %84, i32 0, i32 1
  %n = getelementptr inbounds %struct.gs_function_params_s, %struct.gs_function_params_s* %params98, i32 0, i32 2
  %85 = load i32, i32* %n, align 4, !tbaa !40
  %n99 = getelementptr inbounds %struct.gs_function_1ItSg_params_s, %struct.gs_function_1ItSg_params_s* %params, i32 0, i32 2
  store i32 %85, i32* %n99, align 4, !tbaa !45
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.95, %if.end.92
  %86 = load %struct.gs_function_s**, %struct.gs_function_s*** %ppfn.addr, align 8, !tbaa !1
  %87 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call101 = call i32 @gs_function_1ItSg_init(%struct.gs_function_s** %86, %struct.gs_function_1ItSg_params_s* %params, %struct.gs_memory_s* %87) #3
  store i32 %call101, i32* %code, align 4, !tbaa !5
  %88 = load i32, i32* %code, align 4, !tbaa !5
  %cmp102 = icmp sge i32 %88, 0
  br i1 %cmp102, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %if.end.100
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.112

if.end.105:                                       ; preds = %if.end.100
  br label %fail

fail:                                             ; preds = %if.end.105, %cleanup.78, %cleanup.25, %if.then.90, %if.then.35
  %89 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @gs_function_1ItSg_free_params(%struct.gs_function_1ItSg_params_s* %params, %struct.gs_memory_s* %89) #3
  %90 = load i32, i32* %code, align 4, !tbaa !5
  %cmp106 = icmp slt i32 %90, 0
  br i1 %cmp106, label %cond.true.108, label %cond.false.109

cond.true.108:                                    ; preds = %fail
  %91 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end.110

cond.false.109:                                   ; preds = %fail
  br label %cond.end.110

cond.end.110:                                     ; preds = %cond.false.109, %cond.true.108
  %cond111 = phi i32 [ %91, %cond.true.108 ], [ -15, %cond.false.109 ]
  store i32 %cond111, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.112

cleanup.112:                                      ; preds = %cond.end.110, %if.then.104, %cleanup.78, %cleanup.25
  %92 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #1
  %93 = bitcast %struct.gs_function_1ItSg_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 64, i8* %93) #1
  %94 = load i32, i32* %retval
  ret i32 %94
}

declare i32 @dict_find_string(%struct.ref_s*, i8*, %struct.ref_s**) #2

declare i32 @alloc_function_array(i32, %struct.gs_function_s***, %struct.gs_memory_s*) #2

declare i32 @array_get(%struct.gs_memory_s*, %struct.ref_s*, i64, %struct.ref_s*) #2

declare i32 @fn_build_sub_function(%struct.gs_context_state_s*, %struct.ref_s*, %struct.gs_function_s**, i32, %struct.gs_memory_s*, float*, i32) #2

declare i32 @fn_build_float_array(%struct.ref_s*, i8*, i32, i32, float**, %struct.gs_memory_s*) #2

declare i32 @gs_currentcpsimode(%struct.gs_memory_s*) #2

declare i32 @process_float_array(%struct.gs_memory_s*, %struct.ref_s*, i32, float*) #2

declare i32 @gs_function_1ItSg_init(%struct.gs_function_s**, %struct.gs_function_1ItSg_params_s*, %struct.gs_memory_s*) #2

declare void @gs_function_1ItSg_free_params(%struct.gs_function_1ItSg_params_s*, %struct.gs_memory_s*) #2

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
!7 = !{i64 0, i64 4, !5, i64 8, i64 8, !1, i64 16, i64 4, !5, i64 24, i64 8, !1}
!8 = !{!9, !2, i64 32}
!9 = !{!"gs_function_ElIn_params_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !10, i64 48}
!10 = !{!"float", !3, i64 0}
!11 = !{!9, !2, i64 40}
!12 = !{!9, !2, i64 24}
!13 = !{!9, !6, i64 16}
!14 = !{!15, !2, i64 40}
!15 = !{!"gs_function_1ItSg_params_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !6, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!16 = !{!15, !2, i64 48}
!17 = !{!15, !2, i64 56}
!18 = !{!3, !3, i64 0}
!19 = !{!20, !6, i64 4}
!20 = !{!"ref_s", !21, i64 0, !3, i64 8}
!21 = !{!"tas_s", !22, i64 0, !22, i64 2, !6, i64 4}
!22 = !{!"short", !3, i64 0}
!23 = !{!15, !6, i64 32}
!24 = !{!25, !2, i64 8}
!25 = !{!"gs_context_state_s", !2, i64 0, !26, i64 8, !6, i64 80, !20, i64 88, !20, i64 104, !28, i64 120, !28, i64 128, !28, i64 136, !6, i64 144, !6, i64 148, !20, i64 152, !20, i64 168, !6, i64 184, !6, i64 188, !6, i64 192, !6, i64 196, !2, i64 200, !3, i64 208, !2, i64 256, !29, i64 264, !29, i64 304, !2, i64 344, !6, i64 352, !2, i64 360, !30, i64 368, !32, i64 520, !33, i64 624, !2, i64 720}
!26 = !{!"gs_dual_memory_s", !2, i64 0, !27, i64 8, !6, i64 48, !2, i64 56, !6, i64 64, !6, i64 68}
!27 = !{!"vm_spaces_s", !2, i64 0, !3, i64 8}
!28 = !{!"long", !3, i64 0}
!29 = !{!"op_array_table_s", !20, i64 0, !2, i64 16, !6, i64 24, !6, i64 28, !6, i64 32}
!30 = !{!"dict_stack_s", !31, i64 0, !6, i64 96, !6, i64 100, !6, i64 104, !2, i64 112, !6, i64 120, !2, i64 128, !20, i64 136}
!31 = !{!"ref_stack_s", !2, i64 0, !2, i64 8, !2, i64 16, !20, i64 24, !6, i64 40, !6, i64 44, !20, i64 48, !6, i64 64, !6, i64 68, !6, i64 72, !2, i64 80, !2, i64 88}
!32 = !{!"exec_stack_s", !31, i64 0, !2, i64 96}
!33 = !{!"op_stack_s", !31, i64 0}
!34 = !{!35, !2, i64 88}
!35 = !{!"gs_memory_s", !2, i64 0, !36, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!36 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!37 = !{!20, !22, i64 0}
!38 = !{!10, !10, i64 0}
!39 = !{!15, !2, i64 24}
!40 = !{!41, !6, i64 88}
!41 = !{!"gs_function_s", !42, i64 0, !44, i64 72}
!42 = !{!"gs_function_head_s", !6, i64 0, !43, i64 8}
!43 = !{!"gs_function_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!44 = !{!"gs_function_params_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24}
!45 = !{!15, !6, i64 16}
