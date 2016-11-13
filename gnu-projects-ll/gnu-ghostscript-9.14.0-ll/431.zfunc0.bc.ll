; ModuleID = './zfunc0.bc'
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
%struct.gs_function_Sd_params_s = type { i32, float*, i32, float*, i32, %struct.gs_data_source_s, i32, float*, float*, i32*, double*, i32*, i32*, i32 }

@.str = private unnamed_addr constant [11 x i8] c"DataSource\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Order\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"BitsPerSample\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Encode\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Decode\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Size\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gs_build_function_0(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %op, %struct.gs_function_params_s* %mnDR, i32 %depth, %struct.gs_function_s** %ppfn, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  %mnDR.addr = alloca %struct.gs_function_params_s*, align 8
  %depth.addr = alloca i32, align 4
  %ppfn.addr = alloca %struct.gs_function_s**, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %params = alloca %struct.gs_function_Sd_params_s, align 8
  %pDataSource = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %s = alloca %struct.stream_s*, align 8
  %fcode = alloca i32, align 4
  %ptr = alloca i32*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.gs_function_params_s* %mnDR, %struct.gs_function_params_s** %mnDR.addr, align 8, !tbaa !1
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !5
  store %struct.gs_function_s** %ppfn, %struct.gs_function_s*** %ppfn.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_function_Sd_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 136, i8* %0) #1
  %1 = bitcast %struct.ref_s** %pDataSource to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast %struct.gs_function_Sd_params_s* %params to %struct.gs_function_params_s*
  %4 = load %struct.gs_function_params_s*, %struct.gs_function_params_s** %mnDR.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gs_function_params_s* %3 to i8*
  %6 = bitcast %struct.gs_function_params_s* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 32, i32 8, i1 false), !tbaa.struct !7
  %Decode = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 8
  store float* null, float** %Decode, align 8, !tbaa !8
  %Encode = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 7
  store float* null, float** %Encode, align 8, !tbaa !11
  %pole = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 10
  store double* null, double** %pole, align 8, !tbaa !12
  %stream_step = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 12
  store i32* null, i32** %stream_step, align 8, !tbaa !13
  %array_step = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 11
  store i32* null, i32** %array_step, align 8, !tbaa !14
  %Size = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 9
  store i32* null, i32** %Size, align 8, !tbaa !15
  %7 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call = call i32 @dict_find_string(%struct.ref_s* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), %struct.ref_s** %pDataSource) #3
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %code, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %8, 0
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %9 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %9, %cond.true ], [ -15, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.106

if.end:                                           ; preds = %entry
  %10 = load %struct.ref_s*, %struct.ref_s** %pDataSource, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %11 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load i8, i8* %arrayidx, align 1, !tbaa !16
  %conv = zext i8 %12 to i32
  switch i32 %conv, label %sw.default [
    i32 18, label %sw.bb
    i32 3, label %sw.bb.9
  ]

sw.bb:                                            ; preds = %if.end
  %DataSource = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 5
  %type = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %DataSource, i32 0, i32 1
  store i32 0, i32* %type, align 4, !tbaa !17
  %13 = load %struct.ref_s*, %struct.ref_s** %pDataSource, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value to i8**
  %14 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  %DataSource2 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 5
  %data = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %DataSource2, i32 0, i32 2
  %str = bitcast %union.d_* %data to %struct.gs_const_string_s*
  %data3 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str, i32 0, i32 0
  store i8* %14, i8** %data3, align 8, !tbaa !18
  %15 = load %struct.ref_s*, %struct.ref_s** %pDataSource, align 8, !tbaa !1
  %tas4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas4, i32 0, i32 2
  %16 = load i32, i32* %rsize, align 4, !tbaa !20
  %DataSource5 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 5
  %data6 = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %DataSource5, i32 0, i32 2
  %str7 = bitcast %union.d_* %data6 to %struct.gs_const_string_s*
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %str7, i32 0, i32 1
  store i32 %16, i32* %size, align 4, !tbaa !24
  %DataSource8 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 5
  %access = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %DataSource8, i32 0, i32 0
  store i32 (%struct.gs_data_source_s*, i64, i32, i8*, i8**)* @data_source_access_string, i32 (%struct.gs_data_source_s*, i64, i32, i8*, i8**)** %access, align 8, !tbaa !25
  br label %sw.epilog

sw.bb.9:                                          ; preds = %if.end
  %17 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  br label %do.body

do.body:                                          ; preds = %sw.bb.9
  %18 = load %struct.ref_s*, %struct.ref_s** %pDataSource, align 8, !tbaa !1
  %value10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 1
  %pfile = bitcast %union.v* %value10 to %struct.stream_s**
  %19 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %19, %struct.stream_s** %s, align 8, !tbaa !1
  %20 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %20, i32 0, i32 19
  %21 = load i16, i16* %read_id, align 2, !tbaa !26
  %conv11 = zext i16 %21 to i32
  %22 = load %struct.ref_s*, %struct.ref_s** %pDataSource, align 8, !tbaa !1
  %tas12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 0
  %rsize13 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas12, i32 0, i32 2
  %23 = load i32, i32* %rsize13, align 4, !tbaa !20
  %cmp14 = icmp ne i32 %conv11, %23
  br i1 %cmp14, label %if.then.16, label %if.end.33

if.then.16:                                       ; preds = %do.body
  %24 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id17 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %24, i32 0, i32 19
  %25 = load i16, i16* %read_id17, align 2, !tbaa !26
  %conv18 = zext i16 %25 to i32
  %cmp19 = icmp eq i32 %conv18, 0
  br i1 %cmp19, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.16
  %26 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %write_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %26, i32 0, i32 20
  %27 = load i16, i16* %write_id, align 2, !tbaa !31
  %conv21 = zext i16 %27 to i32
  %28 = load %struct.ref_s*, %struct.ref_s** %pDataSource, align 8, !tbaa !1
  %tas22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 0
  %rsize23 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas22, i32 0, i32 2
  %29 = load i32, i32* %rsize23, align 4, !tbaa !20
  %cmp24 = icmp eq i32 %conv21, %29
  br i1 %cmp24, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %land.lhs.true
  %30 = bitcast i32* %fcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  %31 = load %struct.ref_s*, %struct.ref_s** %pDataSource, align 8, !tbaa !1
  %call27 = call i32 @file_switch_to_read(%struct.ref_s* %31) #3
  store i32 %call27, i32* %fcode, align 4, !tbaa !5
  %32 = load i32, i32* %fcode, align 4, !tbaa !5
  %cmp28 = icmp slt i32 %32, 0
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.then.26
  %33 = load i32, i32* %fcode, align 4, !tbaa !5
  store i32 %33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.31:                                        ; preds = %if.then.26
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.31, %if.then.30
  %34 = bitcast i32* %fcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.43 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.32

if.else:                                          ; preds = %land.lhs.true, %if.then.16
  store i32 -9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.43

if.end.32:                                        ; preds = %cleanup.cont
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.33
  br label %do.end

do.end:                                           ; preds = %do.cond
  %35 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %modes = getelementptr inbounds %struct.stream_s, %struct.stream_s* %35, i32 0, i32 11
  %36 = load i8, i8* %modes, align 1, !tbaa !32
  %conv34 = zext i8 %36 to i32
  %and = and i32 %conv34, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.36, label %if.then.35

if.then.35:                                       ; preds = %do.end
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.43

if.end.36:                                        ; preds = %do.end
  %DataSource37 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 5
  %type38 = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %DataSource37, i32 0, i32 1
  store i32 3, i32* %type38, align 4, !tbaa !17
  %37 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %DataSource39 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 5
  %data40 = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %DataSource39, i32 0, i32 2
  %strm = bitcast %union.d_* %data40 to %struct.stream_s**
  store %struct.stream_s* %37, %struct.stream_s** %strm, align 8, !tbaa !1
  %DataSource41 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 5
  %access42 = getelementptr inbounds %struct.gs_data_source_s, %struct.gs_data_source_s* %DataSource41, i32 0, i32 0
  store i32 (%struct.gs_data_source_s*, i64, i32, i8*, i8**)* @data_source_access_stream, i32 (%struct.gs_data_source_s*, i64, i32, i8*, i8**)** %access42, align 8, !tbaa !25
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.43

cleanup.43:                                       ; preds = %if.end.36, %if.then.35, %if.else, %cleanup
  %38 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %cleanup.dest.44 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.44, label %cleanup.106 [
    i32 2, label %sw.epilog
  ]

sw.default:                                       ; preds = %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.106

sw.epilog:                                        ; preds = %cleanup.43, %sw.bb
  %39 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %Order = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 4
  %call45 = call i32 @dict_int_param(%struct.ref_s* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 1, i32 3, i32 1, i32* %Order) #3
  store i32 %call45, i32* %code, align 4, !tbaa !5
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.then.76, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.epilog
  %40 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %BitsPerSample = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 6
  %call48 = call i32 @dict_int_param(%struct.ref_s* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 1, i32 32, i32 0, i32* %BitsPerSample) #3
  store i32 %call48, i32* %code, align 4, !tbaa !5
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.then.76, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %lor.lhs.false
  %41 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %Encode52 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 7
  %42 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call53 = call i32 @fn_build_float_array(%struct.ref_s* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 0, i32 1, float** %Encode52, %struct.gs_memory_s* %42) #3
  store i32 %call53, i32* %code, align 4, !tbaa !5
  %m = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 0
  %43 = load i32, i32* %m, align 4, !tbaa !33
  %mul = mul nsw i32 2, %43
  %cmp54 = icmp ne i32 %call53, %mul
  br i1 %cmp54, label %land.lhs.true.56, label %lor.lhs.false.63

land.lhs.true.56:                                 ; preds = %lor.lhs.false.51
  %44 = load i32, i32* %code, align 4, !tbaa !5
  %cmp57 = icmp ne i32 %44, 0
  br i1 %cmp57, label %if.then.76, label %lor.lhs.false.59

lor.lhs.false.59:                                 ; preds = %land.lhs.true.56
  %Encode60 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 7
  %45 = load float*, float** %Encode60, align 8, !tbaa !11
  %cmp61 = icmp ne float* %45, null
  br i1 %cmp61, label %if.then.76, label %lor.lhs.false.63

lor.lhs.false.63:                                 ; preds = %lor.lhs.false.59, %lor.lhs.false.51
  %46 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %Decode64 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 8
  %47 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call65 = call i32 @fn_build_float_array(%struct.ref_s* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 0, i32 1, float** %Decode64, %struct.gs_memory_s* %47) #3
  store i32 %call65, i32* %code, align 4, !tbaa !5
  %n = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 2
  %48 = load i32, i32* %n, align 4, !tbaa !34
  %mul66 = mul nsw i32 2, %48
  %cmp67 = icmp ne i32 %call65, %mul66
  br i1 %cmp67, label %land.lhs.true.69, label %if.end.77

land.lhs.true.69:                                 ; preds = %lor.lhs.false.63
  %49 = load i32, i32* %code, align 4, !tbaa !5
  %cmp70 = icmp ne i32 %49, 0
  br i1 %cmp70, label %if.then.76, label %lor.lhs.false.72

lor.lhs.false.72:                                 ; preds = %land.lhs.true.69
  %Decode73 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 8
  %50 = load float*, float** %Decode73, align 8, !tbaa !8
  %cmp74 = icmp ne float* %50, null
  br i1 %cmp74, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %lor.lhs.false.72, %land.lhs.true.69, %lor.lhs.false.59, %land.lhs.true.56, %lor.lhs.false, %sw.epilog
  br label %fail

if.end.77:                                        ; preds = %lor.lhs.false.72, %lor.lhs.false.63
  %51 = bitcast i32** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %51) #1
  %52 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %52, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %53 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !35
  %54 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %m78 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 0
  %55 = load i32, i32* %m78, align 4, !tbaa !33
  %call79 = call i8* %53(%struct.gs_memory_s* %54, i32 %55, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0)) #3
  %56 = bitcast i8* %call79 to i32*
  store i32* %56, i32** %ptr, align 8, !tbaa !1
  %57 = load i32*, i32** %ptr, align 8, !tbaa !1
  %cmp80 = icmp eq i32* %57, null
  br i1 %cmp80, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %if.end.77
  store i32 -25, i32* %code, align 4, !tbaa !5
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup.92

if.end.83:                                        ; preds = %if.end.77
  %58 = load i32*, i32** %ptr, align 8, !tbaa !1
  %Size84 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 9
  store i32* %58, i32** %Size84, align 8, !tbaa !15
  %59 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %60 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %m85 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 0
  %61 = load i32, i32* %m85, align 4, !tbaa !33
  %62 = load i32*, i32** %ptr, align 8, !tbaa !1
  %call86 = call i32 @dict_ints_param(%struct.gs_memory_s* %59, %struct.ref_s* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %61, i32* %62) #3
  store i32 %call86, i32* %code, align 4, !tbaa !5
  %63 = load i32, i32* %code, align 4, !tbaa !5
  %m87 = getelementptr inbounds %struct.gs_function_Sd_params_s, %struct.gs_function_Sd_params_s* %params, i32 0, i32 0
  %64 = load i32, i32* %m87, align 4, !tbaa !33
  %cmp88 = icmp ne i32 %63, %64
  br i1 %cmp88, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %if.end.83
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup.92

if.end.91:                                        ; preds = %if.end.83
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.92

cleanup.92:                                       ; preds = %if.then.90, %if.then.82, %if.end.91
  %65 = bitcast i32** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %cleanup.dest.93 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.93, label %cleanup.106 [
    i32 0, label %cleanup.cont.94
    i32 5, label %fail
  ]

cleanup.cont.94:                                  ; preds = %cleanup.92
  %66 = load %struct.gs_function_s**, %struct.gs_function_s*** %ppfn.addr, align 8, !tbaa !1
  %67 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call95 = call i32 @gs_function_Sd_init(%struct.gs_function_s** %66, %struct.gs_function_Sd_params_s* %params, %struct.gs_memory_s* %67) #3
  store i32 %call95, i32* %code, align 4, !tbaa !5
  %68 = load i32, i32* %code, align 4, !tbaa !5
  %cmp96 = icmp sge i32 %68, 0
  br i1 %cmp96, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %cleanup.cont.94
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.106

if.end.99:                                        ; preds = %cleanup.cont.94
  br label %fail

fail:                                             ; preds = %if.end.99, %cleanup.92, %if.then.76
  %69 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @gs_function_Sd_free_params(%struct.gs_function_Sd_params_s* %params, %struct.gs_memory_s* %69) #3
  %70 = load i32, i32* %code, align 4, !tbaa !5
  %cmp100 = icmp slt i32 %70, 0
  br i1 %cmp100, label %cond.true.102, label %cond.false.103

cond.true.102:                                    ; preds = %fail
  %71 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end.104

cond.false.103:                                   ; preds = %fail
  br label %cond.end.104

cond.end.104:                                     ; preds = %cond.false.103, %cond.true.102
  %cond105 = phi i32 [ %71, %cond.true.102 ], [ -15, %cond.false.103 ]
  store i32 %cond105, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.106

cleanup.106:                                      ; preds = %cond.end.104, %if.then.98, %cleanup.92, %sw.default, %cleanup.43, %cond.end
  %72 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = bitcast %struct.ref_s** %pDataSource to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  %74 = bitcast %struct.gs_function_Sd_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 136, i8* %74) #1
  %75 = load i32, i32* %retval
  ret i32 %75
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @dict_find_string(%struct.ref_s*, i8*, %struct.ref_s**) #2

declare i32 @data_source_access_string(%struct.gs_data_source_s*, i64, i32, i8*, i8**) #2

declare i32 @file_switch_to_read(%struct.ref_s*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i32 @data_source_access_stream(%struct.gs_data_source_s*, i64, i32, i8*, i8**) #2

declare i32 @dict_int_param(%struct.ref_s*, i8*, i32, i32, i32, i32*) #2

declare i32 @fn_build_float_array(%struct.ref_s*, i8*, i32, i32, float**, %struct.gs_memory_s*) #2

declare i32 @dict_ints_param(%struct.gs_memory_s*, %struct.ref_s*, i8*, i32, i32*) #2

declare i32 @gs_function_Sd_init(%struct.gs_function_s**, %struct.gs_function_Sd_params_s*, %struct.gs_memory_s*) #2

declare void @gs_function_Sd_free_params(%struct.gs_function_Sd_params_s*, %struct.gs_memory_s*) #2

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
!8 = !{!9, !2, i64 88}
!9 = !{!"gs_function_Sd_params_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !6, i64 32, !10, i64 40, !6, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !6, i64 128}
!10 = !{!"gs_data_source_s", !2, i64 0, !3, i64 8, !3, i64 16}
!11 = !{!9, !2, i64 80}
!12 = !{!9, !2, i64 104}
!13 = !{!9, !2, i64 120}
!14 = !{!9, !2, i64 112}
!15 = !{!9, !2, i64 96}
!16 = !{!3, !3, i64 0}
!17 = !{!10, !3, i64 8}
!18 = !{!19, !2, i64 0}
!19 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!20 = !{!21, !6, i64 4}
!21 = !{!"ref_s", !22, i64 0, !3, i64 8}
!22 = !{!"tas_s", !23, i64 0, !23, i64 2, !6, i64 4}
!23 = !{!"short", !3, i64 0}
!24 = !{!19, !6, i64 8}
!25 = !{!10, !2, i64 0}
!26 = !{!27, !23, i64 264}
!27 = !{!"stream_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !3, i64 112, !2, i64 136, !6, i64 144, !6, i64 148, !23, i64 152, !3, i64 154, !3, i64 155, !28, i64 160, !29, i64 176, !30, i64 184, !2, i64 240, !6, i64 248, !6, i64 252, !2, i64 256, !23, i64 264, !23, i64 266, !2, i64 272, !2, i64 280, !6, i64 288, !6, i64 292, !2, i64 296, !2, i64 304, !19, i64 312, !6, i64 328, !29, i64 336, !29, i64 344}
!28 = !{!"gs_string_s", !2, i64 0, !6, i64 8}
!29 = !{!"long", !3, i64 0}
!30 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!31 = !{!27, !23, i64 266}
!32 = !{!27, !3, i64 155}
!33 = !{!9, !6, i64 0}
!34 = !{!9, !6, i64 16}
!35 = !{!36, !2, i64 88}
!36 = !{!"gs_memory_s", !2, i64 0, !37, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!37 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
