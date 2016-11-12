; ModuleID = './zfjpx.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.op_def = type { i8*, i32 (%struct.gs_context_state_s*)* }
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
%struct.stream_template_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_gc_root_s = type { %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i32 }
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type { i8*, i8*, %struct.gx_io_device_procs_s, i8* }
%struct.gx_io_device_procs_s = type { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.file_enum_s = type opaque
%struct.gs_param_list_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.gs_string_s = type { i8*, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, void (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_s*, i32)* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8] }
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
%struct.stream_jpxd_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i8**, i8**, %struct.opj_image*, i32, i32, i32, i32, i32, i32, %struct.stream_block_s, i64, i64, i64, i32**, i32, i32, i32* }
%struct.opj_image = type { i32, i32, i32, i32, i32, i32, %struct.opj_image_comp*, i8*, i32 }
%struct.opj_image_comp = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i16 }
%struct.stream_block_s = type { i8*, i64, i64, i64 }
%struct.dict_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }

@.str = private unnamed_addr constant [11 x i8] c"filterdict\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"2JPXDecode\00", align 1
@zfjpx_op_defs = constant [3 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* null }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @z_jpx_decode }, %struct.op_def zeroinitializer], align 16
@s_jpxd_template = external constant %struct.stream_template_s, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"Alpha\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"ColorSpace\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"warning: JPX ColorSpace value is an unhandled type!\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Indexed\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"DeviceRGB\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"DeviceCMYK\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"ICCBased\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"Alternate\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"N\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @z_jpx_decode(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %sop = alloca %struct.ref_s*, align 8
  %csname = alloca %struct.ref_s*, align 8
  %state = alloca %struct.stream_jpxd_state_s, align 8
  %cleanup.dest.slot = alloca i32
  %sref = alloca %struct.ref_s, align 8
  %csdict = alloca %struct.ref_s*, align 8
  %nref = alloca %struct.ref_s*, align 8
  %altname = alloca %struct.ref_s, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s** %sop to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store %struct.ref_s* null, %struct.ref_s** %sop, align 8, !tbaa !1
  %4 = bitcast %struct.ref_s** %csname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store %struct.ref_s* null, %struct.ref_s** %csname, align 8, !tbaa !1
  %5 = bitcast %struct.stream_jpxd_state_s* %state to i8*
  call void @llvm.lifetime.start(i64 240, i8* %5) #1
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %7 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !19
  %8 = bitcast %struct.gs_ref_memory_s* %7 to %struct.gs_memory_s*
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 3
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !20
  %memory1 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %state, i32 0, i32 1
  store %struct.gs_memory_s* %9, %struct.gs_memory_s** %memory1, align 8, !tbaa !23
  %10 = load void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)** getelementptr inbounds (%struct.stream_template_s, %struct.stream_template_s* @s_jpxd_template, i32 0, i32 6), align 8, !tbaa !26
  %tobool = icmp ne void (%struct.stream_state_s*)* %10, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)** getelementptr inbounds (%struct.stream_template_s, %struct.stream_template_s* @s_jpxd_template, i32 0, i32 6), align 8, !tbaa !26
  %12 = bitcast %struct.stream_jpxd_state_s* %state to %struct.stream_state_s*
  call void %11(%struct.stream_state_s* %12) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %14 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 1
  %15 = load i8, i8* %arrayidx, align 1, !tbaa !28
  %conv = zext i8 %15 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.then.3, label %if.end.295

if.then.3:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.3
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 1
  %pdict = bitcast %union.v* %value to %struct.dict_s**
  %17 = load %struct.dict_s*, %struct.dict_s** %pdict, align 8, !tbaa !1
  %values = getelementptr inbounds %struct.dict_s, %struct.dict_s* %17, i32 0, i32 0
  %tas4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values, i32 0, i32 0
  %type_attrs5 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas4, i32 0, i32 0
  %18 = load i16, i16* %type_attrs5, align 2, !tbaa !29
  %conv6 = zext i16 %18 to i32
  %and = and i32 %conv6, 32
  %tobool7 = icmp ne i32 %and, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %do.body
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.297

if.end.9:                                         ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.9
  br label %do.end

do.end:                                           ; preds = %do.cond
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @dict_find_string(%struct.ref_s* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), %struct.ref_s** %sop) #4
  %cmp10 = icmp sgt i32 %call, 0
  br i1 %cmp10, label %if.then.12, label %if.end.26

if.then.12:                                       ; preds = %do.end
  %20 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %tas13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 0
  %type_attrs14 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas13, i32 0, i32 0
  %21 = bitcast i16* %type_attrs14 to i8*
  %arrayidx15 = getelementptr inbounds i8, i8* %21, i64 1
  %22 = load i8, i8* %arrayidx15, align 1, !tbaa !28
  %conv16 = zext i8 %22 to i32
  %cmp17 = icmp eq i32 %conv16, 1
  br i1 %cmp17, label %if.end.21, label %if.then.19

if.then.19:                                       ; preds = %if.then.12
  %23 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %call20 = call i32 @check_type_failed(%struct.ref_s* %23) #4
  store i32 %call20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.297

if.end.21:                                        ; preds = %if.then.12
  %24 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %value22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 1
  %boolval = bitcast %union.v* %value22 to i16*
  %25 = load i16, i16* %boolval, align 2, !tbaa !30
  %tobool23 = icmp ne i16 %25, 0
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.21
  %alpha = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %state, i32 0, i32 13
  store i32 1, i32* %alpha, align 4, !tbaa !31
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.end.21
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %do.end
  %26 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call27 = call i32 @dict_find_string(%struct.ref_s* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), %struct.ref_s** %sop) #4
  %cmp28 = icmp sgt i32 %call27, 0
  br i1 %cmp28, label %if.then.30, label %if.end.294

if.then.30:                                       ; preds = %if.end.26
  %27 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %tas31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 0
  %type_attrs32 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas31, i32 0, i32 0
  %28 = load i16, i16* %type_attrs32, align 2, !tbaa !29
  %conv33 = zext i16 %28 to i32
  %and34 = and i32 %conv33, 15360
  %cmp35 = icmp eq i32 %and34, 1024
  br i1 %cmp35, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %if.then.30
  %29 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %value38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 0, i32 1
  %refs = bitcast %union.v* %value38 to %struct.ref_s**
  %30 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  store %struct.ref_s* %30, %struct.ref_s** %csname, align 8, !tbaa !1
  br label %if.end.51

if.else:                                          ; preds = %if.then.30
  %31 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %tas39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 0
  %type_attrs40 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas39, i32 0, i32 0
  %32 = bitcast i16* %type_attrs40 to i8*
  %arrayidx41 = getelementptr inbounds i8, i8* %32, i64 1
  %33 = load i8, i8* %arrayidx41, align 1, !tbaa !28
  %conv42 = zext i8 %33 to i32
  %cmp43 = icmp eq i32 %conv42, 13
  br i1 %cmp43, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %if.else
  %34 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  store %struct.ref_s* %34, %struct.ref_s** %csname, align 8, !tbaa !1
  br label %if.end.50

if.else.46:                                       ; preds = %if.else
  %35 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory47 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %35, i32 0, i32 1
  %current48 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory47, i32 0, i32 0
  %36 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current48, align 8, !tbaa !19
  %37 = bitcast %struct.gs_ref_memory_s* %36 to %struct.gs_memory_s*
  %call49 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %37, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i32 0, i32 0)) #4
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.46, %if.then.45
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.then.37
  %38 = load %struct.ref_s*, %struct.ref_s** %csname, align 8, !tbaa !1
  %cmp52 = icmp ne %struct.ref_s* %38, null
  br i1 %cmp52, label %if.then.54, label %if.else.289

if.then.54:                                       ; preds = %if.end.51
  %39 = bitcast %struct.ref_s* %sref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %39) #1
  %40 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory55 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %40, i32 0, i32 1
  %current56 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory55, i32 0, i32 0
  %41 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current56, align 8, !tbaa !19
  %42 = bitcast %struct.gs_ref_memory_s* %41 to %struct.gs_memory_s*
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %42, i32 0, i32 2
  %43 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !32
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %43, i32 0, i32 16
  %44 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !33
  %45 = load %struct.ref_s*, %struct.ref_s** %csname, align 8, !tbaa !1
  call void @names_string_ref(%struct.name_table_s* %44, %struct.ref_s* %45, %struct.ref_s* %sref) #4
  %value57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %sref, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value57 to i8**
  %46 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  %call58 = call i64 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0)) #5
  %tas59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %sref, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas59, i32 0, i32 2
  %47 = load i32, i32* %rsize, align 4, !tbaa !35
  %conv60 = zext i32 %47 to i64
  %cmp61 = icmp ult i64 %call58, %conv60
  br i1 %cmp61, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.54
  %call63 = call i64 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0)) #5
  br label %cond.end

cond.false:                                       ; preds = %if.then.54
  %tas64 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %sref, i32 0, i32 0
  %rsize65 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas64, i32 0, i32 2
  %48 = load i32, i32* %rsize65, align 4, !tbaa !35
  %conv66 = zext i32 %48 to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call63, %cond.true ], [ %conv66, %cond.false ]
  %call67 = call i32 @memcmp(i8* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i64 %cond) #5
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %if.else.70, label %if.then.69

if.then.69:                                       ; preds = %cond.end
  %colorspace = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %state, i32 0, i32 12
  store i32 4, i32* %colorspace, align 4, !tbaa !36
  br label %if.end.285

if.else.70:                                       ; preds = %cond.end
  %value71 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %sref, i32 0, i32 1
  %const_bytes72 = bitcast %union.v* %value71 to i8**
  %49 = load i8*, i8** %const_bytes72, align 8, !tbaa !1
  %call73 = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0)) #5
  %tas74 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %sref, i32 0, i32 0
  %rsize75 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas74, i32 0, i32 2
  %50 = load i32, i32* %rsize75, align 4, !tbaa !35
  %conv76 = zext i32 %50 to i64
  %cmp77 = icmp ult i64 %call73, %conv76
  br i1 %cmp77, label %cond.true.79, label %cond.false.81

cond.true.79:                                     ; preds = %if.else.70
  %call80 = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0)) #5
  br label %cond.end.85

cond.false.81:                                    ; preds = %if.else.70
  %tas82 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %sref, i32 0, i32 0
  %rsize83 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas82, i32 0, i32 2
  %51 = load i32, i32* %rsize83, align 4, !tbaa !35
  %conv84 = zext i32 %51 to i64
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.false.81, %cond.true.79
  %cond86 = phi i64 [ %call80, %cond.true.79 ], [ %conv84, %cond.false.81 ]
  %call87 = call i32 @memcmp(i8* %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i64 %cond86) #5
  %tobool88 = icmp ne i32 %call87, 0
  br i1 %tobool88, label %if.else.91, label %if.then.89

if.then.89:                                       ; preds = %cond.end.85
  %colorspace90 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %state, i32 0, i32 12
  store i32 1, i32* %colorspace90, align 4, !tbaa !36
  br label %if.end.284

if.else.91:                                       ; preds = %cond.end.85
  %value92 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %sref, i32 0, i32 1
  %const_bytes93 = bitcast %union.v* %value92 to i8**
  %52 = load i8*, i8** %const_bytes93, align 8, !tbaa !1
  %call94 = call i64 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0)) #5
  %tas95 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %sref, i32 0, i32 0
  %rsize96 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas95, i32 0, i32 2
  %53 = load i32, i32* %rsize96, align 4, !tbaa !35
  %conv97 = zext i32 %53 to i64
  %cmp98 = icmp ult i64 %call94, %conv97
  br i1 %cmp98, label %cond.true.100, label %cond.false.102

cond.true.100:                                    ; preds = %if.else.91
  %call101 = call i64 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0)) #5
  br label %cond.end.106

cond.false.102:                                   ; preds = %if.else.91
  %tas103 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %sref, i32 0, i32 0
  %rsize104 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas103, i32 0, i32 2
  %54 = load i32, i32* %rsize104, align 4, !tbaa !35
  %conv105 = zext i32 %54 to i64
  br label %cond.end.106

cond.end.106:                                     ; preds = %cond.false.102, %cond.true.100
  %cond107 = phi i64 [ %call101, %cond.true.100 ], [ %conv105, %cond.false.102 ]
  %call108 = call i32 @memcmp(i8* %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i64 %cond107) #5
  %tobool109 = icmp ne i32 %call108, 0
  br i1 %tobool109, label %if.else.112, label %if.then.110

if.then.110:                                      ; preds = %cond.end.106
  %colorspace111 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %state, i32 0, i32 12
  store i32 2, i32* %colorspace111, align 4, !tbaa !36
  br label %if.end.283

if.else.112:                                      ; preds = %cond.end.106
  %value113 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %sref, i32 0, i32 1
  %const_bytes114 = bitcast %union.v* %value113 to i8**
  %55 = load i8*, i8** %const_bytes114, align 8, !tbaa !1
  %call115 = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0)) #5
  %tas116 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %sref, i32 0, i32 0
  %rsize117 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas116, i32 0, i32 2
  %56 = load i32, i32* %rsize117, align 4, !tbaa !35
  %conv118 = zext i32 %56 to i64
  %cmp119 = icmp ult i64 %call115, %conv118
  br i1 %cmp119, label %cond.true.121, label %cond.false.123

cond.true.121:                                    ; preds = %if.else.112
  %call122 = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0)) #5
  br label %cond.end.127

cond.false.123:                                   ; preds = %if.else.112
  %tas124 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %sref, i32 0, i32 0
  %rsize125 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas124, i32 0, i32 2
  %57 = load i32, i32* %rsize125, align 4, !tbaa !35
  %conv126 = zext i32 %57 to i64
  br label %cond.end.127

cond.end.127:                                     ; preds = %cond.false.123, %cond.true.121
  %cond128 = phi i64 [ %call122, %cond.true.121 ], [ %conv126, %cond.false.123 ]
  %call129 = call i32 @memcmp(i8* %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i64 %cond128) #5
  %tobool130 = icmp ne i32 %call129, 0
  br i1 %tobool130, label %if.else.133, label %if.then.131

if.then.131:                                      ; preds = %cond.end.127
  %colorspace132 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %state, i32 0, i32 12
  store i32 3, i32* %colorspace132, align 4, !tbaa !36
  br label %if.end.282

if.else.133:                                      ; preds = %cond.end.127
  %value134 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %sref, i32 0, i32 1
  %const_bytes135 = bitcast %union.v* %value134 to i8**
  %58 = load i8*, i8** %const_bytes135, align 8, !tbaa !1
  %call136 = call i64 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0)) #5
  %tas137 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %sref, i32 0, i32 0
  %rsize138 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas137, i32 0, i32 2
  %59 = load i32, i32* %rsize138, align 4, !tbaa !35
  %conv139 = zext i32 %59 to i64
  %cmp140 = icmp ult i64 %call136, %conv139
  br i1 %cmp140, label %cond.true.142, label %cond.false.144

cond.true.142:                                    ; preds = %if.else.133
  %call143 = call i64 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0)) #5
  br label %cond.end.148

cond.false.144:                                   ; preds = %if.else.133
  %tas145 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %sref, i32 0, i32 0
  %rsize146 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas145, i32 0, i32 2
  %60 = load i32, i32* %rsize146, align 4, !tbaa !35
  %conv147 = zext i32 %60 to i64
  br label %cond.end.148

cond.end.148:                                     ; preds = %cond.false.144, %cond.true.142
  %cond149 = phi i64 [ %call143, %cond.true.142 ], [ %conv147, %cond.false.144 ]
  %call150 = call i32 @memcmp(i8* %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i64 %cond149) #5
  %tobool151 = icmp ne i32 %call150, 0
  br i1 %tobool151, label %if.end.281, label %if.then.152

if.then.152:                                      ; preds = %cond.end.148
  %61 = bitcast %struct.ref_s** %csdict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %61) #1
  %62 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %value153 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i32 0, i32 1
  %refs154 = bitcast %union.v* %value153 to %struct.ref_s**
  %63 = load %struct.ref_s*, %struct.ref_s** %refs154, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %63, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %csdict, align 8, !tbaa !1
  %64 = bitcast %struct.ref_s** %nref to i8*
  call void @llvm.lifetime.start(i64 8, i8* %64) #1
  %65 = bitcast %struct.ref_s* %altname to i8*
  call void @llvm.lifetime.start(i64 16, i8* %65) #1
  %66 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %tas155 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %66, i32 0, i32 0
  %type_attrs156 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas155, i32 0, i32 0
  %67 = load i16, i16* %type_attrs156, align 2, !tbaa !29
  %conv157 = zext i16 %67 to i32
  %and158 = and i32 %conv157, 15360
  %cmp159 = icmp eq i32 %and158, 1024
  br i1 %cmp159, label %land.lhs.true, label %if.end.278

land.lhs.true:                                    ; preds = %if.then.152
  %68 = load %struct.ref_s*, %struct.ref_s** %sop, align 8, !tbaa !1
  %tas161 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %68, i32 0, i32 0
  %rsize162 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas161, i32 0, i32 2
  %69 = load i32, i32* %rsize162, align 4, !tbaa !35
  %cmp163 = icmp ugt i32 %69, 1
  br i1 %cmp163, label %land.lhs.true.165, label %if.end.278

land.lhs.true.165:                                ; preds = %land.lhs.true
  %70 = load %struct.ref_s*, %struct.ref_s** %csdict, align 8, !tbaa !1
  %tas166 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %70, i32 0, i32 0
  %type_attrs167 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas166, i32 0, i32 0
  %71 = bitcast i16* %type_attrs167 to i8*
  %arrayidx168 = getelementptr inbounds i8, i8* %71, i64 1
  %72 = load i8, i8* %arrayidx168, align 1, !tbaa !28
  %conv169 = zext i8 %72 to i32
  %cmp170 = icmp eq i32 %conv169, 2
  br i1 %cmp170, label %if.then.172, label %if.end.278

if.then.172:                                      ; preds = %land.lhs.true.165
  br label %do.body.173

do.body.173:                                      ; preds = %if.then.172
  %73 = load %struct.ref_s*, %struct.ref_s** %csdict, align 8, !tbaa !1
  %value174 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %73, i32 0, i32 1
  %pdict175 = bitcast %union.v* %value174 to %struct.dict_s**
  %74 = load %struct.dict_s*, %struct.dict_s** %pdict175, align 8, !tbaa !1
  %values176 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %74, i32 0, i32 0
  %tas177 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %values176, i32 0, i32 0
  %type_attrs178 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas177, i32 0, i32 0
  %75 = load i16, i16* %type_attrs178, align 2, !tbaa !29
  %conv179 = zext i16 %75 to i32
  %and180 = and i32 %conv179, 32
  %tobool181 = icmp ne i32 %and180, 0
  br i1 %tobool181, label %if.end.183, label %if.then.182

if.then.182:                                      ; preds = %do.body.173
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.183:                                       ; preds = %do.body.173
  br label %do.cond.184

do.cond.184:                                      ; preds = %if.end.183
  br label %do.end.185

do.end.185:                                       ; preds = %do.cond.184
  %76 = load %struct.ref_s*, %struct.ref_s** %csdict, align 8, !tbaa !1
  %call186 = call i32 @dict_find_string(%struct.ref_s* %76, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), %struct.ref_s** %nref) #4
  %cmp187 = icmp sgt i32 %call186, 0
  br i1 %cmp187, label %if.then.189, label %if.end.259

if.then.189:                                      ; preds = %do.end.185
  %77 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory190 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %77, i32 0, i32 1
  %current191 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory190, i32 0, i32 0
  %78 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current191, align 8, !tbaa !19
  %79 = bitcast %struct.gs_ref_memory_s* %78 to %struct.gs_memory_s*
  %gs_lib_ctx192 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %79, i32 0, i32 2
  %80 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx192, align 8, !tbaa !32
  %gs_name_table193 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %80, i32 0, i32 16
  %81 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table193, align 8, !tbaa !33
  %82 = load %struct.ref_s*, %struct.ref_s** %csname, align 8, !tbaa !1
  call void @names_string_ref(%struct.name_table_s* %81, %struct.ref_s* %82, %struct.ref_s* %altname) #4
  %value194 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %altname, i32 0, i32 1
  %const_bytes195 = bitcast %union.v* %value194 to i8**
  %83 = load i8*, i8** %const_bytes195, align 8, !tbaa !1
  %call196 = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0)) #5
  %tas197 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %altname, i32 0, i32 0
  %rsize198 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas197, i32 0, i32 2
  %84 = load i32, i32* %rsize198, align 4, !tbaa !35
  %conv199 = zext i32 %84 to i64
  %cmp200 = icmp ult i64 %call196, %conv199
  br i1 %cmp200, label %cond.true.202, label %cond.false.204

cond.true.202:                                    ; preds = %if.then.189
  %call203 = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0)) #5
  br label %cond.end.208

cond.false.204:                                   ; preds = %if.then.189
  %tas205 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %altname, i32 0, i32 0
  %rsize206 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas205, i32 0, i32 2
  %85 = load i32, i32* %rsize206, align 4, !tbaa !35
  %conv207 = zext i32 %85 to i64
  br label %cond.end.208

cond.end.208:                                     ; preds = %cond.false.204, %cond.true.202
  %cond209 = phi i64 [ %call203, %cond.true.202 ], [ %conv207, %cond.false.204 ]
  %call210 = call i32 @memcmp(i8* %83, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i64 %cond209) #5
  %tobool211 = icmp ne i32 %call210, 0
  br i1 %tobool211, label %if.else.214, label %if.then.212

if.then.212:                                      ; preds = %cond.end.208
  %colorspace213 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %state, i32 0, i32 12
  store i32 1, i32* %colorspace213, align 4, !tbaa !36
  br label %if.end.258

if.else.214:                                      ; preds = %cond.end.208
  %value215 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %altname, i32 0, i32 1
  %const_bytes216 = bitcast %union.v* %value215 to i8**
  %86 = load i8*, i8** %const_bytes216, align 8, !tbaa !1
  %call217 = call i64 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0)) #5
  %tas218 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %altname, i32 0, i32 0
  %rsize219 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas218, i32 0, i32 2
  %87 = load i32, i32* %rsize219, align 4, !tbaa !35
  %conv220 = zext i32 %87 to i64
  %cmp221 = icmp ult i64 %call217, %conv220
  br i1 %cmp221, label %cond.true.223, label %cond.false.225

cond.true.223:                                    ; preds = %if.else.214
  %call224 = call i64 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0)) #5
  br label %cond.end.229

cond.false.225:                                   ; preds = %if.else.214
  %tas226 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %altname, i32 0, i32 0
  %rsize227 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas226, i32 0, i32 2
  %88 = load i32, i32* %rsize227, align 4, !tbaa !35
  %conv228 = zext i32 %88 to i64
  br label %cond.end.229

cond.end.229:                                     ; preds = %cond.false.225, %cond.true.223
  %cond230 = phi i64 [ %call224, %cond.true.223 ], [ %conv228, %cond.false.225 ]
  %call231 = call i32 @memcmp(i8* %86, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i64 %cond230) #5
  %tobool232 = icmp ne i32 %call231, 0
  br i1 %tobool232, label %if.else.235, label %if.then.233

if.then.233:                                      ; preds = %cond.end.229
  %colorspace234 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %state, i32 0, i32 12
  store i32 2, i32* %colorspace234, align 4, !tbaa !36
  br label %if.end.257

if.else.235:                                      ; preds = %cond.end.229
  %value236 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %altname, i32 0, i32 1
  %const_bytes237 = bitcast %union.v* %value236 to i8**
  %89 = load i8*, i8** %const_bytes237, align 8, !tbaa !1
  %call238 = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0)) #5
  %tas239 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %altname, i32 0, i32 0
  %rsize240 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas239, i32 0, i32 2
  %90 = load i32, i32* %rsize240, align 4, !tbaa !35
  %conv241 = zext i32 %90 to i64
  %cmp242 = icmp ult i64 %call238, %conv241
  br i1 %cmp242, label %cond.true.244, label %cond.false.246

cond.true.244:                                    ; preds = %if.else.235
  %call245 = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0)) #5
  br label %cond.end.250

cond.false.246:                                   ; preds = %if.else.235
  %tas247 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %altname, i32 0, i32 0
  %rsize248 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas247, i32 0, i32 2
  %91 = load i32, i32* %rsize248, align 4, !tbaa !35
  %conv249 = zext i32 %91 to i64
  br label %cond.end.250

cond.end.250:                                     ; preds = %cond.false.246, %cond.true.244
  %cond251 = phi i64 [ %call245, %cond.true.244 ], [ %conv249, %cond.false.246 ]
  %call252 = call i32 @memcmp(i8* %89, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i64 %cond251) #5
  %tobool253 = icmp ne i32 %call252, 0
  br i1 %tobool253, label %if.end.256, label %if.then.254

if.then.254:                                      ; preds = %cond.end.250
  %colorspace255 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %state, i32 0, i32 12
  store i32 3, i32* %colorspace255, align 4, !tbaa !36
  br label %if.end.256

if.end.256:                                       ; preds = %if.then.254, %cond.end.250
  br label %if.end.257

if.end.257:                                       ; preds = %if.end.256, %if.then.233
  br label %if.end.258

if.end.258:                                       ; preds = %if.end.257, %if.then.212
  br label %if.end.259

if.end.259:                                       ; preds = %if.end.258, %do.end.185
  %colorspace260 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %state, i32 0, i32 12
  %92 = load i32, i32* %colorspace260, align 4, !tbaa !36
  %cmp261 = icmp eq i32 %92, 0
  br i1 %cmp261, label %land.lhs.true.263, label %if.end.277

land.lhs.true.263:                                ; preds = %if.end.259
  %93 = load %struct.ref_s*, %struct.ref_s** %csdict, align 8, !tbaa !1
  %call264 = call i32 @dict_find_string(%struct.ref_s* %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), %struct.ref_s** %nref) #4
  %cmp265 = icmp sgt i32 %call264, 0
  br i1 %cmp265, label %if.then.267, label %if.end.277

if.then.267:                                      ; preds = %land.lhs.true.263
  br label %do.body.268

do.body.268:                                      ; preds = %if.then.267
  br label %do.cond.269

do.cond.269:                                      ; preds = %do.body.268
  br label %do.end.270

do.end.270:                                       ; preds = %do.cond.269
  %94 = load %struct.ref_s*, %struct.ref_s** %nref, align 8, !tbaa !1
  %value271 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %94, i32 0, i32 1
  %intval = bitcast %union.v* %value271 to i64*
  %95 = load i64, i64* %intval, align 8, !tbaa !37
  switch i64 %95, label %sw.epilog [
    i64 1, label %sw.bb
    i64 3, label %sw.bb.273
    i64 4, label %sw.bb.275
  ]

sw.bb:                                            ; preds = %do.end.270
  %colorspace272 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %state, i32 0, i32 12
  store i32 1, i32* %colorspace272, align 4, !tbaa !36
  br label %sw.epilog

sw.bb.273:                                        ; preds = %do.end.270
  %colorspace274 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %state, i32 0, i32 12
  store i32 2, i32* %colorspace274, align 4, !tbaa !36
  br label %sw.epilog

sw.bb.275:                                        ; preds = %do.end.270
  %colorspace276 = getelementptr inbounds %struct.stream_jpxd_state_s, %struct.stream_jpxd_state_s* %state, i32 0, i32 12
  store i32 3, i32* %colorspace276, align 4, !tbaa !36
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.270, %sw.bb.275, %sw.bb.273, %sw.bb
  br label %if.end.277

if.end.277:                                       ; preds = %sw.epilog, %land.lhs.true.263, %if.end.259
  br label %if.end.278

if.end.278:                                       ; preds = %if.end.277, %land.lhs.true.165, %land.lhs.true, %if.then.152
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.278, %if.then.182
  %96 = bitcast %struct.ref_s* %altname to i8*
  call void @llvm.lifetime.end(i64 16, i8* %96) #1
  %97 = bitcast %struct.ref_s** %nref to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  %98 = bitcast %struct.ref_s** %csdict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.286 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.281

if.end.281:                                       ; preds = %cleanup.cont, %cond.end.148
  br label %if.end.282

if.end.282:                                       ; preds = %if.end.281, %if.then.131
  br label %if.end.283

if.end.283:                                       ; preds = %if.end.282, %if.then.110
  br label %if.end.284

if.end.284:                                       ; preds = %if.end.283, %if.then.89
  br label %if.end.285

if.end.285:                                       ; preds = %if.end.284, %if.then.69
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.286

cleanup.286:                                      ; preds = %if.end.285, %cleanup
  %99 = bitcast %struct.ref_s* %sref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %99) #1
  %cleanup.dest.287 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.287, label %cleanup.297 [
    i32 0, label %cleanup.cont.288
  ]

cleanup.cont.288:                                 ; preds = %cleanup.286
  br label %if.end.293

if.else.289:                                      ; preds = %if.end.51
  br label %do.body.290

do.body.290:                                      ; preds = %if.else.289
  br label %do.cond.291

do.cond.291:                                      ; preds = %do.body.290
  br label %do.end.292

do.end.292:                                       ; preds = %do.cond.291
  br label %if.end.293

if.end.293:                                       ; preds = %do.end.292, %cleanup.cont.288
  br label %if.end.294

if.end.294:                                       ; preds = %if.end.293, %if.end.26
  br label %if.end.295

if.end.295:                                       ; preds = %if.end.294, %if.end
  %100 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %101 = bitcast %struct.stream_jpxd_state_s* %state to %struct.stream_state_s*
  %call296 = call i32 @filter_read(%struct.gs_context_state_s* %100, i32 0, %struct.stream_template_s* @s_jpxd_template, %struct.stream_state_s* %101, i32 0) #4
  store i32 %call296, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.297

cleanup.297:                                      ; preds = %if.end.295, %cleanup.286, %if.then.19, %if.then.8
  %102 = bitcast %struct.stream_jpxd_state_s* %state to i8*
  call void @llvm.lifetime.end(i64 240, i8* %102) #1
  %103 = bitcast %struct.ref_s** %csname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #1
  %104 = bitcast %struct.ref_s** %sop to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #1
  %105 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %105) #1
  %106 = load i32, i32* %retval
  ret i32 %106
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @dict_find_string(%struct.ref_s*, i8*, %struct.ref_s**) #2

declare i32 @check_type_failed(%struct.ref_s*) #2

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #2

declare void @names_string_ref(%struct.name_table_s*, %struct.ref_s*, %struct.ref_s*) #2

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i32 @filter_read(%struct.gs_context_state_s*, i32, %struct.stream_template_s*, %struct.stream_state_s*, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }
attributes #5 = { nobuiltin nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 624}
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
!19 = !{!6, !2, i64 8}
!20 = !{!21, !2, i64 200}
!21 = !{!"gs_memory_s", !2, i64 0, !22, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!22 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!23 = !{!24, !2, i64 8}
!24 = !{!"stream_jpxd_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !3, i64 28, !2, i64 112, !2, i64 120, !2, i64 128, !9, i64 136, !9, i64 140, !9, i64 144, !9, i64 148, !3, i64 152, !9, i64 156, !25, i64 160, !13, i64 192, !13, i64 200, !13, i64 208, !2, i64 216, !9, i64 224, !9, i64 228, !2, i64 232}
!25 = !{!"stream_block_s", !2, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!26 = !{!27, !2, i64 40}
!27 = !{!"stream_template_s", !2, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !9, i64 28, !2, i64 32, !2, i64 40, !2, i64 48}
!28 = !{!3, !3, i64 0}
!29 = !{!10, !12, i64 0}
!30 = !{!12, !12, i64 0}
!31 = !{!24, !9, i64 156}
!32 = !{!21, !2, i64 192}
!33 = !{!34, !2, i64 120}
!34 = !{!"gs_lib_ctx_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !9, i64 40, !9, i64 44, !9, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !13, i64 104, !2, i64 112, !2, i64 120, !9, i64 128, !2, i64 136, !9, i64 144, !9, i64 148, !3, i64 152, !2, i64 168, !9, i64 176, !2, i64 184, !9, i64 192, !2, i64 200, !2, i64 208}
!35 = !{!10, !9, i64 4}
!36 = !{!24, !3, i64 152}
!37 = !{!13, !13, i64 0}
