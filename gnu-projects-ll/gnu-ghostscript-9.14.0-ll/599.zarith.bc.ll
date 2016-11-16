; ModuleID = './zarith.bc'
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
%struct.stream_template_s = type opaque
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type opaque
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gs_gc_root_s = type opaque
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

@.str = private unnamed_addr constant [5 x i8] c"1abs\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"2add\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"2.bitadd\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"1ceiling\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"2div\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"2idiv\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"1floor\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"2mod\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"2mul\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"1neg\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"1round\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"2sub\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"1truncate\00", align 1
@zarith_op_defs = constant [14 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zabs }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zadd }, %struct.op_def { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zbitadd }, %struct.op_def { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zceiling }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zdiv }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zidiv }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zfloor }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zmod }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zmul }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zneg }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zround }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zsub }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @ztruncate }, %struct.op_def zeroinitializer], align 16

; Function Attrs: nounwind uwtable
define i32 @zop_add(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  %int1 = alloca i32, align 4
  %int2 = alloca i32, align 4
  %int277 = alloca i64, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %4 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %5 to i32
  switch i32 %conv, label %sw.default [
    i32 16, label %sw.bb
    i32 11, label %sw.bb.27
  ]

sw.default:                                       ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %6) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -1
  %tas1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 0
  %type_attrs2 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1, i32 0, i32 0
  %8 = bitcast i16* %type_attrs2 to i8*
  %arrayidx3 = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx3, align 1, !tbaa !19
  %conv4 = zext i8 %9 to i32
  switch i32 %conv4, label %sw.default.5 [
    i32 16, label %sw.bb.8
    i32 11, label %sw.bb.12
  ]

sw.default.5:                                     ; preds = %sw.bb
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -1
  %call7 = call i32 @check_type_failed(%struct.ref_s* %add.ptr6) #4
  store i32 %call7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.8:                                          ; preds = %sw.bb
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %realval = bitcast %union.v* %value to float*
  %12 = load float, float* %realval, align 4, !tbaa !20
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -1
  %value10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx9, i32 0, i32 1
  %realval11 = bitcast %union.v* %value10 to float*
  %14 = load float, float* %realval11, align 4, !tbaa !20
  %add = fadd float %14, %12
  store float %add, float* %realval11, align 4, !tbaa !20
  br label %sw.epilog

sw.bb.12:                                         ; preds = %sw.bb
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -1
  %value14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx13, i32 0, i32 1
  %intval = bitcast %union.v* %value14 to i64*
  %16 = load i64, i64* %intval, align 8, !tbaa !22
  %conv15 = sitofp i64 %16 to double
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 1
  %realval17 = bitcast %union.v* %value16 to float*
  %18 = load float, float* %realval17, align 4, !tbaa !20
  %conv18 = fpext float %18 to double
  %add19 = fadd double %conv15, %conv18
  %conv20 = fptrunc double %add19 to float
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 -1
  %value22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr21, i32 0, i32 1
  %realval23 = bitcast %union.v* %value22 to float*
  store float %conv20, float* %realval23, align 4, !tbaa !20
  %20 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -1
  %tas25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr24, i32 0, i32 0
  %type_attrs26 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas25, i32 0, i32 0
  store i16 4096, i16* %type_attrs26, align 2, !tbaa !23
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.12, %sw.bb.8
  br label %sw.epilog.113

sw.bb.27:                                         ; preds = %entry
  %21 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -1
  %tas29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr28, i32 0, i32 0
  %type_attrs30 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas29, i32 0, i32 0
  %22 = bitcast i16* %type_attrs30 to i8*
  %arrayidx31 = getelementptr inbounds i8, i8* %22, i64 1
  %23 = load i8, i8* %arrayidx31, align 1, !tbaa !19
  %conv32 = zext i8 %23 to i32
  switch i32 %conv32, label %sw.default.33 [
    i32 16, label %sw.bb.36
    i32 11, label %sw.bb.46
  ]

sw.default.33:                                    ; preds = %sw.bb.27
  %24 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 -1
  %call35 = call i32 @check_type_failed(%struct.ref_s* %add.ptr34) #4
  store i32 %call35, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.36:                                         ; preds = %sw.bb.27
  %25 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 1
  %intval38 = bitcast %union.v* %value37 to i64*
  %26 = load i64, i64* %intval38, align 8, !tbaa !22
  %conv39 = sitofp i64 %26 to double
  %27 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i64 -1
  %value41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx40, i32 0, i32 1
  %realval42 = bitcast %union.v* %value41 to float*
  %28 = load float, float* %realval42, align 4, !tbaa !20
  %conv43 = fpext float %28 to double
  %add44 = fadd double %conv43, %conv39
  %conv45 = fptrunc double %add44 to float
  store float %conv45, float* %realval42, align 4, !tbaa !20
  br label %sw.epilog.112

sw.bb.46:                                         ; preds = %sw.bb.27
  %29 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %29, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %30 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !24
  %31 = bitcast %struct.gs_ref_memory_s* %30 to %struct.gs_memory_s*
  %call47 = call i32 @gs_currentcpsimode(%struct.gs_memory_s* %31) #4
  %tobool = icmp ne i32 %call47, 0
  br i1 %tobool, label %if.then, label %if.else.76

if.then:                                          ; preds = %sw.bb.46
  %32 = bitcast i32* %int1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  %33 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 -1
  %value49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx48, i32 0, i32 1
  %intval50 = bitcast %union.v* %value49 to i64*
  %34 = load i64, i64* %intval50, align 8, !tbaa !22
  %conv51 = trunc i64 %34 to i32
  store i32 %conv51, i32* %int1, align 4, !tbaa !25
  %35 = bitcast i32* %int2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  %36 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i32 0, i32 1
  %intval53 = bitcast %union.v* %value52 to i64*
  %37 = load i64, i64* %intval53, align 8, !tbaa !22
  %conv54 = trunc i64 %37 to i32
  store i32 %conv54, i32* %int2, align 4, !tbaa !25
  %38 = load i32, i32* %int2, align 4, !tbaa !25
  %39 = load i32, i32* %int1, align 4, !tbaa !25
  %add55 = add nsw i32 %39, %38
  store i32 %add55, i32* %int1, align 4, !tbaa !25
  %40 = load i32, i32* %int2, align 4, !tbaa !25
  %xor = xor i32 %add55, %40
  %cmp = icmp slt i32 %xor, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %41 = load i32, i32* %int1, align 4, !tbaa !25
  %42 = load i32, i32* %int2, align 4, !tbaa !25
  %sub = sub nsw i32 %41, %42
  %43 = load i32, i32* %int2, align 4, !tbaa !25
  %xor57 = xor i32 %sub, %43
  %cmp58 = icmp sge i32 %xor57, 0
  br i1 %cmp58, label %if.then.60, label %if.else

if.then.60:                                       ; preds = %land.lhs.true
  %44 = load i32, i32* %int1, align 4, !tbaa !25
  %45 = load i32, i32* %int2, align 4, !tbaa !25
  %sub61 = sub nsw i32 %44, %45
  %conv62 = sitofp i32 %sub61 to double
  %46 = load i32, i32* %int2, align 4, !tbaa !25
  %conv63 = sitofp i32 %46 to double
  %add64 = fadd double %conv62, %conv63
  %conv65 = fptrunc double %add64 to float
  %47 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr66 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i64 -1
  %value67 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr66, i32 0, i32 1
  %realval68 = bitcast %union.v* %value67 to float*
  store float %conv65, float* %realval68, align 4, !tbaa !20
  %48 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr69 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i64 -1
  %tas70 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr69, i32 0, i32 0
  %type_attrs71 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas70, i32 0, i32 0
  store i16 4096, i16* %type_attrs71, align 2, !tbaa !23
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  %49 = load i32, i32* %int1, align 4, !tbaa !25
  %conv72 = sext i32 %49 to i64
  %50 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx73 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %50, i64 -1
  %value74 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx73, i32 0, i32 1
  %intval75 = bitcast %union.v* %value74 to i64*
  store i64 %conv72, i64* %intval75, align 8, !tbaa !22
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.60
  %51 = bitcast i32* %int2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast i32* %int1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  br label %if.end.111

if.else.76:                                       ; preds = %sw.bb.46
  %53 = bitcast i64* %int277 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %53) #1
  %54 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value78 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %54, i32 0, i32 1
  %intval79 = bitcast %union.v* %value78 to i64*
  %55 = load i64, i64* %intval79, align 8, !tbaa !22
  store i64 %55, i64* %int277, align 8, !tbaa !22
  %56 = load i64, i64* %int277, align 8, !tbaa !22
  %57 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx80 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %57, i64 -1
  %value81 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx80, i32 0, i32 1
  %intval82 = bitcast %union.v* %value81 to i64*
  %58 = load i64, i64* %intval82, align 8, !tbaa !22
  %add83 = add nsw i64 %58, %56
  store i64 %add83, i64* %intval82, align 8, !tbaa !22
  %59 = load i64, i64* %int277, align 8, !tbaa !22
  %xor84 = xor i64 %add83, %59
  %cmp85 = icmp slt i64 %xor84, 0
  br i1 %cmp85, label %land.lhs.true.87, label %if.end.110

land.lhs.true.87:                                 ; preds = %if.else.76
  %60 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx88 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %60, i64 -1
  %value89 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx88, i32 0, i32 1
  %intval90 = bitcast %union.v* %value89 to i64*
  %61 = load i64, i64* %intval90, align 8, !tbaa !22
  %62 = load i64, i64* %int277, align 8, !tbaa !22
  %sub91 = sub nsw i64 %61, %62
  %63 = load i64, i64* %int277, align 8, !tbaa !22
  %xor92 = xor i64 %sub91, %63
  %cmp93 = icmp sge i64 %xor92, 0
  br i1 %cmp93, label %if.then.95, label %if.end.110

if.then.95:                                       ; preds = %land.lhs.true.87
  %64 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx96 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %64, i64 -1
  %value97 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx96, i32 0, i32 1
  %intval98 = bitcast %union.v* %value97 to i64*
  %65 = load i64, i64* %intval98, align 8, !tbaa !22
  %66 = load i64, i64* %int277, align 8, !tbaa !22
  %sub99 = sub nsw i64 %65, %66
  %conv100 = sitofp i64 %sub99 to double
  %67 = load i64, i64* %int277, align 8, !tbaa !22
  %conv101 = sitofp i64 %67 to double
  %add102 = fadd double %conv100, %conv101
  %conv103 = fptrunc double %add102 to float
  %68 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr104 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %68, i64 -1
  %value105 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr104, i32 0, i32 1
  %realval106 = bitcast %union.v* %value105 to float*
  store float %conv103, float* %realval106, align 4, !tbaa !20
  %69 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr107 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %69, i64 -1
  %tas108 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr107, i32 0, i32 0
  %type_attrs109 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas108, i32 0, i32 0
  store i16 4096, i16* %type_attrs109, align 2, !tbaa !23
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.95, %land.lhs.true.87, %if.else.76
  %70 = bitcast i64* %int277 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110, %if.end
  br label %sw.epilog.112

sw.epilog.112:                                    ; preds = %if.end.111, %sw.bb.36
  br label %sw.epilog.113

sw.epilog.113:                                    ; preds = %sw.epilog.112, %sw.epilog
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.113, %sw.default.33, %sw.default.5, %sw.default
  %71 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = load i32, i32* %retval
  ret i32 %72
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @check_type_failed(%struct.ref_s*) #2

declare i32 @gs_currentcpsimode(%struct.gs_memory_s*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @zadd(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %code = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @zop_add(%struct.gs_context_state_s* %1) #4
  store i32 %call, i32* %code, align 4, !tbaa !25
  %2 = load i32, i32* %code, align 4, !tbaa !25
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %3, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %4 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %code, align 4, !tbaa !25
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %6) #1
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @zdiv(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %op1 = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s** %op1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op1, align 8, !tbaa !1
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %6 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %7 to i32
  switch i32 %conv, label %sw.default [
    i32 16, label %sw.bb
    i32 11, label %sw.bb.25
  ]

sw.default:                                       ; preds = %entry
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %8) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %realval = bitcast %union.v* %value to float*
  %10 = load float, float* %realval, align 4, !tbaa !20
  %cmp = fcmp oeq float %10, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store i32 -23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %11 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %12 = bitcast i16* %type_attrs3 to i8*
  %arrayidx4 = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx4, align 1, !tbaa !19
  %conv5 = zext i8 %13 to i32
  switch i32 %conv5, label %sw.default.6 [
    i32 16, label %sw.bb.8
    i32 11, label %sw.bb.13
  ]

sw.default.6:                                     ; preds = %if.end
  %14 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %call7 = call i32 @check_type_failed(%struct.ref_s* %14) #4
  store i32 %call7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.8:                                          ; preds = %if.end
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 1
  %realval10 = bitcast %union.v* %value9 to float*
  %16 = load float, float* %realval10, align 4, !tbaa !20
  %17 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %value11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 1
  %realval12 = bitcast %union.v* %value11 to float*
  %18 = load float, float* %realval12, align 4, !tbaa !20
  %div = fdiv float %18, %16
  store float %div, float* %realval12, align 4, !tbaa !20
  br label %sw.epilog

sw.bb.13:                                         ; preds = %if.end
  %19 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %value14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 1
  %intval = bitcast %union.v* %value14 to i64*
  %20 = load i64, i64* %intval, align 8, !tbaa !22
  %conv15 = sitofp i64 %20 to double
  %21 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 1
  %realval17 = bitcast %union.v* %value16 to float*
  %22 = load float, float* %realval17, align 4, !tbaa !20
  %conv18 = fpext float %22 to double
  %div19 = fdiv double %conv15, %conv18
  %conv20 = fptrunc double %div19 to float
  %23 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %value21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 1
  %realval22 = bitcast %union.v* %value21 to float*
  store float %conv20, float* %realval22, align 4, !tbaa !20
  %24 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %tas23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 0
  %type_attrs24 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas23, i32 0, i32 0
  store i16 4096, i16* %type_attrs24, align 2, !tbaa !23
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.13, %sw.bb.8
  br label %sw.epilog.61

sw.bb.25:                                         ; preds = %entry
  %25 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 1
  %intval27 = bitcast %union.v* %value26 to i64*
  %26 = load i64, i64* %intval27, align 8, !tbaa !22
  %cmp28 = icmp eq i64 %26, 0
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %sw.bb.25
  store i32 -23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.31:                                        ; preds = %sw.bb.25
  %27 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %tas32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 0
  %type_attrs33 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas32, i32 0, i32 0
  %28 = bitcast i16* %type_attrs33 to i8*
  %arrayidx34 = getelementptr inbounds i8, i8* %28, i64 1
  %29 = load i8, i8* %arrayidx34, align 1, !tbaa !19
  %conv35 = zext i8 %29 to i32
  switch i32 %conv35, label %sw.default.36 [
    i32 16, label %sw.bb.38
    i32 11, label %sw.bb.47
  ]

sw.default.36:                                    ; preds = %if.end.31
  %30 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %call37 = call i32 @check_type_failed(%struct.ref_s* %30) #4
  store i32 %call37, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.38:                                         ; preds = %if.end.31
  %31 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 1
  %intval40 = bitcast %union.v* %value39 to i64*
  %32 = load i64, i64* %intval40, align 8, !tbaa !22
  %conv41 = sitofp i64 %32 to double
  %33 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %value42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i32 0, i32 1
  %realval43 = bitcast %union.v* %value42 to float*
  %34 = load float, float* %realval43, align 4, !tbaa !20
  %conv44 = fpext float %34 to double
  %div45 = fdiv double %conv44, %conv41
  %conv46 = fptrunc double %div45 to float
  store float %conv46, float* %realval43, align 4, !tbaa !20
  br label %sw.epilog.60

sw.bb.47:                                         ; preds = %if.end.31
  %35 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %value48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i32 0, i32 1
  %intval49 = bitcast %union.v* %value48 to i64*
  %36 = load i64, i64* %intval49, align 8, !tbaa !22
  %conv50 = sitofp i64 %36 to double
  %37 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i32 0, i32 1
  %intval52 = bitcast %union.v* %value51 to i64*
  %38 = load i64, i64* %intval52, align 8, !tbaa !22
  %conv53 = sitofp i64 %38 to double
  %div54 = fdiv double %conv50, %conv53
  %conv55 = fptrunc double %div54 to float
  %39 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %value56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i32 0, i32 1
  %realval57 = bitcast %union.v* %value56 to float*
  store float %conv55, float* %realval57, align 4, !tbaa !20
  %40 = load %struct.ref_s*, %struct.ref_s** %op1, align 8, !tbaa !1
  %tas58 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i32 0, i32 0
  %type_attrs59 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas58, i32 0, i32 0
  store i16 4096, i16* %type_attrs59, align 2, !tbaa !23
  br label %sw.epilog.60

sw.epilog.60:                                     ; preds = %sw.bb.47, %sw.bb.38
  br label %sw.epilog.61

sw.epilog.61:                                     ; preds = %sw.epilog.60, %sw.epilog
  %41 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack62 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %41, i32 0, i32 26
  %stack63 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack62, i32 0, i32 0
  %p64 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack63, i32 0, i32 0
  %42 = load %struct.ref_s*, %struct.ref_s** %p64, align 8, !tbaa !5
  %add.ptr65 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i64 -1
  store %struct.ref_s* %add.ptr65, %struct.ref_s** %p64, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.61, %sw.default.36, %if.then.30, %sw.default.6, %if.then, %sw.default
  %43 = bitcast %struct.ref_s** %op1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = load i32, i32* %retval
  ret i32 %45
}

; Function Attrs: nounwind uwtable
define i32 @zmul(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  %ab = alloca double, align 8
  %ab82 = alloca double, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %4 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %5 to i32
  switch i32 %conv, label %sw.default [
    i32 16, label %sw.bb
    i32 11, label %sw.bb.27
  ]

sw.default:                                       ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %6) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -1
  %tas1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 0
  %type_attrs2 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1, i32 0, i32 0
  %8 = bitcast i16* %type_attrs2 to i8*
  %arrayidx3 = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx3, align 1, !tbaa !19
  %conv4 = zext i8 %9 to i32
  switch i32 %conv4, label %sw.default.5 [
    i32 16, label %sw.bb.8
    i32 11, label %sw.bb.12
  ]

sw.default.5:                                     ; preds = %sw.bb
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -1
  %call7 = call i32 @check_type_failed(%struct.ref_s* %add.ptr6) #4
  store i32 %call7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.8:                                          ; preds = %sw.bb
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %realval = bitcast %union.v* %value to float*
  %12 = load float, float* %realval, align 4, !tbaa !20
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -1
  %value10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx9, i32 0, i32 1
  %realval11 = bitcast %union.v* %value10 to float*
  %14 = load float, float* %realval11, align 4, !tbaa !20
  %mul = fmul float %14, %12
  store float %mul, float* %realval11, align 4, !tbaa !20
  br label %sw.epilog

sw.bb.12:                                         ; preds = %sw.bb
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -1
  %value14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx13, i32 0, i32 1
  %intval = bitcast %union.v* %value14 to i64*
  %16 = load i64, i64* %intval, align 8, !tbaa !22
  %conv15 = sitofp i64 %16 to double
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 1
  %realval17 = bitcast %union.v* %value16 to float*
  %18 = load float, float* %realval17, align 4, !tbaa !20
  %conv18 = fpext float %18 to double
  %mul19 = fmul double %conv15, %conv18
  %conv20 = fptrunc double %mul19 to float
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 -1
  %value22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr21, i32 0, i32 1
  %realval23 = bitcast %union.v* %value22 to float*
  store float %conv20, float* %realval23, align 4, !tbaa !20
  %20 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -1
  %tas25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr24, i32 0, i32 0
  %type_attrs26 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas25, i32 0, i32 0
  store i16 4096, i16* %type_attrs26, align 2, !tbaa !23
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.12, %sw.bb.8
  br label %sw.epilog.121

sw.bb.27:                                         ; preds = %entry
  %21 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -1
  %tas29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr28, i32 0, i32 0
  %type_attrs30 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas29, i32 0, i32 0
  %22 = bitcast i16* %type_attrs30 to i8*
  %arrayidx31 = getelementptr inbounds i8, i8* %22, i64 1
  %23 = load i8, i8* %arrayidx31, align 1, !tbaa !19
  %conv32 = zext i8 %23 to i32
  switch i32 %conv32, label %sw.default.33 [
    i32 16, label %sw.bb.36
    i32 11, label %sw.bb.46
  ]

sw.default.33:                                    ; preds = %sw.bb.27
  %24 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 -1
  %call35 = call i32 @check_type_failed(%struct.ref_s* %add.ptr34) #4
  store i32 %call35, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.36:                                         ; preds = %sw.bb.27
  %25 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 1
  %intval38 = bitcast %union.v* %value37 to i64*
  %26 = load i64, i64* %intval38, align 8, !tbaa !22
  %conv39 = sitofp i64 %26 to double
  %27 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i64 -1
  %value41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx40, i32 0, i32 1
  %realval42 = bitcast %union.v* %value41 to float*
  %28 = load float, float* %realval42, align 4, !tbaa !20
  %conv43 = fpext float %28 to double
  %mul44 = fmul double %conv43, %conv39
  %conv45 = fptrunc double %mul44 to float
  store float %conv45, float* %realval42, align 4, !tbaa !20
  br label %sw.epilog.120

sw.bb.46:                                         ; preds = %sw.bb.27
  %29 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %29, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %30 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !24
  %31 = bitcast %struct.gs_ref_memory_s* %30 to %struct.gs_memory_s*
  %call47 = call i32 @gs_currentcpsimode(%struct.gs_memory_s* %31) #4
  %tobool = icmp ne i32 %call47, 0
  br i1 %tobool, label %if.then, label %if.else.81

if.then:                                          ; preds = %sw.bb.46
  %32 = bitcast double* %ab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #1
  %33 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 -1
  %value49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx48, i32 0, i32 1
  %intval50 = bitcast %union.v* %value49 to i64*
  %34 = load i64, i64* %intval50, align 8, !tbaa !22
  %conv51 = sitofp i64 %34 to double
  %35 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i32 0, i32 1
  %intval53 = bitcast %union.v* %value52 to i64*
  %36 = load i64, i64* %intval53, align 8, !tbaa !22
  %conv54 = sitofp i64 %36 to double
  %mul55 = fmul double %conv51, %conv54
  store double %mul55, double* %ab, align 8, !tbaa !26
  %37 = load double, double* %ab, align 8, !tbaa !26
  %cmp = fcmp ogt double %37, 0x41DFFFFFFFC00000
  br i1 %cmp, label %if.then.57, label %if.else

if.then.57:                                       ; preds = %if.then
  %38 = load double, double* %ab, align 8, !tbaa !26
  %conv58 = fptrunc double %38 to float
  %39 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i64 -1
  %value60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr59, i32 0, i32 1
  %realval61 = bitcast %union.v* %value60 to float*
  store float %conv58, float* %realval61, align 4, !tbaa !20
  %40 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i64 -1
  %tas63 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr62, i32 0, i32 0
  %type_attrs64 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas63, i32 0, i32 0
  store i16 4096, i16* %type_attrs64, align 2, !tbaa !23
  br label %if.end.80

if.else:                                          ; preds = %if.then
  %41 = load double, double* %ab, align 8, !tbaa !26
  %cmp65 = fcmp olt double %41, 0xC1E0000000000000
  br i1 %cmp65, label %if.then.67, label %if.else.75

if.then.67:                                       ; preds = %if.else
  %42 = load double, double* %ab, align 8, !tbaa !26
  %conv68 = fptrunc double %42 to float
  %43 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr69 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i64 -1
  %value70 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr69, i32 0, i32 1
  %realval71 = bitcast %union.v* %value70 to float*
  store float %conv68, float* %realval71, align 4, !tbaa !20
  %44 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr72 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i64 -1
  %tas73 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr72, i32 0, i32 0
  %type_attrs74 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas73, i32 0, i32 0
  store i16 4096, i16* %type_attrs74, align 2, !tbaa !23
  br label %if.end

if.else.75:                                       ; preds = %if.else
  %45 = load double, double* %ab, align 8, !tbaa !26
  %conv76 = fptosi double %45 to i64
  %46 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx77 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i64 -1
  %value78 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx77, i32 0, i32 1
  %intval79 = bitcast %union.v* %value78 to i64*
  store i64 %conv76, i64* %intval79, align 8, !tbaa !22
  br label %if.end

if.end:                                           ; preds = %if.else.75, %if.then.67
  br label %if.end.80

if.end.80:                                        ; preds = %if.end, %if.then.57
  %47 = bitcast double* %ab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  br label %if.end.119

if.else.81:                                       ; preds = %sw.bb.46
  %48 = bitcast double* %ab82 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %48) #1
  %49 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx83 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i64 -1
  %value84 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx83, i32 0, i32 1
  %intval85 = bitcast %union.v* %value84 to i64*
  %50 = load i64, i64* %intval85, align 8, !tbaa !22
  %conv86 = sitofp i64 %50 to double
  %51 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value87 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %51, i32 0, i32 1
  %intval88 = bitcast %union.v* %value87 to i64*
  %52 = load i64, i64* %intval88, align 8, !tbaa !22
  %conv89 = sitofp i64 %52 to double
  %mul90 = fmul double %conv86, %conv89
  store double %mul90, double* %ab82, align 8, !tbaa !26
  %53 = load double, double* %ab82, align 8, !tbaa !26
  %cmp91 = fcmp ogt double %53, 0x43E0000000000000
  br i1 %cmp91, label %if.then.93, label %if.else.101

if.then.93:                                       ; preds = %if.else.81
  %54 = load double, double* %ab82, align 8, !tbaa !26
  %conv94 = fptrunc double %54 to float
  %55 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr95 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %55, i64 -1
  %value96 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr95, i32 0, i32 1
  %realval97 = bitcast %union.v* %value96 to float*
  store float %conv94, float* %realval97, align 4, !tbaa !20
  %56 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr98 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %56, i64 -1
  %tas99 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr98, i32 0, i32 0
  %type_attrs100 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas99, i32 0, i32 0
  store i16 4096, i16* %type_attrs100, align 2, !tbaa !23
  br label %if.end.118

if.else.101:                                      ; preds = %if.else.81
  %57 = load double, double* %ab82, align 8, !tbaa !26
  %cmp102 = fcmp olt double %57, 0xC3E0000000000000
  br i1 %cmp102, label %if.then.104, label %if.else.112

if.then.104:                                      ; preds = %if.else.101
  %58 = load double, double* %ab82, align 8, !tbaa !26
  %conv105 = fptrunc double %58 to float
  %59 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr106 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %59, i64 -1
  %value107 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr106, i32 0, i32 1
  %realval108 = bitcast %union.v* %value107 to float*
  store float %conv105, float* %realval108, align 4, !tbaa !20
  %60 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr109 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %60, i64 -1
  %tas110 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr109, i32 0, i32 0
  %type_attrs111 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas110, i32 0, i32 0
  store i16 4096, i16* %type_attrs111, align 2, !tbaa !23
  br label %if.end.117

if.else.112:                                      ; preds = %if.else.101
  %61 = load double, double* %ab82, align 8, !tbaa !26
  %conv113 = fptosi double %61 to i64
  %62 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx114 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i64 -1
  %value115 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx114, i32 0, i32 1
  %intval116 = bitcast %union.v* %value115 to i64*
  store i64 %conv113, i64* %intval116, align 8, !tbaa !22
  br label %if.end.117

if.end.117:                                       ; preds = %if.else.112, %if.then.104
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.117, %if.then.93
  %63 = bitcast double* %ab82 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %if.end.80
  br label %sw.epilog.120

sw.epilog.120:                                    ; preds = %if.end.119, %sw.bb.36
  br label %sw.epilog.121

sw.epilog.121:                                    ; preds = %sw.epilog.120, %sw.epilog
  %64 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack122 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %64, i32 0, i32 26
  %stack123 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack122, i32 0, i32 0
  %p124 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack123, i32 0, i32 0
  %65 = load %struct.ref_s*, %struct.ref_s** %p124, align 8, !tbaa !5
  %add.ptr125 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %65, i64 -1
  store %struct.ref_s* %add.ptr125, %struct.ref_s** %p124, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.121, %sw.default.33, %sw.default.5, %sw.default
  %66 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = load i32, i32* %retval
  ret i32 %67
}

; Function Attrs: nounwind uwtable
define i32 @zop_sub(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  %int1 = alloca i32, align 4
  %int2 = alloca i32, align 4
  %int3 = alloca i32, align 4
  %int177 = alloca i64, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %4 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %5 to i32
  switch i32 %conv, label %sw.default [
    i32 16, label %sw.bb
    i32 11, label %sw.bb.27
  ]

sw.default:                                       ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %6) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -1
  %tas1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i32 0, i32 0
  %type_attrs2 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1, i32 0, i32 0
  %8 = bitcast i16* %type_attrs2 to i8*
  %arrayidx3 = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx3, align 1, !tbaa !19
  %conv4 = zext i8 %9 to i32
  switch i32 %conv4, label %sw.default.5 [
    i32 16, label %sw.bb.8
    i32 11, label %sw.bb.12
  ]

sw.default.5:                                     ; preds = %sw.bb
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -1
  %call7 = call i32 @check_type_failed(%struct.ref_s* %add.ptr6) #4
  store i32 %call7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.8:                                          ; preds = %sw.bb
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %realval = bitcast %union.v* %value to float*
  %12 = load float, float* %realval, align 4, !tbaa !20
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -1
  %value10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx9, i32 0, i32 1
  %realval11 = bitcast %union.v* %value10 to float*
  %14 = load float, float* %realval11, align 4, !tbaa !20
  %sub = fsub float %14, %12
  store float %sub, float* %realval11, align 4, !tbaa !20
  br label %sw.epilog

sw.bb.12:                                         ; preds = %sw.bb
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -1
  %value14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx13, i32 0, i32 1
  %intval = bitcast %union.v* %value14 to i64*
  %16 = load i64, i64* %intval, align 8, !tbaa !22
  %conv15 = sitofp i64 %16 to double
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 1
  %realval17 = bitcast %union.v* %value16 to float*
  %18 = load float, float* %realval17, align 4, !tbaa !20
  %conv18 = fpext float %18 to double
  %sub19 = fsub double %conv15, %conv18
  %conv20 = fptrunc double %sub19 to float
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 -1
  %value22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr21, i32 0, i32 1
  %realval23 = bitcast %union.v* %value22 to float*
  store float %conv20, float* %realval23, align 4, !tbaa !20
  %20 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -1
  %tas25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr24, i32 0, i32 0
  %type_attrs26 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas25, i32 0, i32 0
  store i16 4096, i16* %type_attrs26, align 2, !tbaa !23
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.12, %sw.bb.8
  br label %sw.epilog.111

sw.bb.27:                                         ; preds = %entry
  %21 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -1
  %tas29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr28, i32 0, i32 0
  %type_attrs30 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas29, i32 0, i32 0
  %22 = bitcast i16* %type_attrs30 to i8*
  %arrayidx31 = getelementptr inbounds i8, i8* %22, i64 1
  %23 = load i8, i8* %arrayidx31, align 1, !tbaa !19
  %conv32 = zext i8 %23 to i32
  switch i32 %conv32, label %sw.default.33 [
    i32 16, label %sw.bb.36
    i32 11, label %sw.bb.46
  ]

sw.default.33:                                    ; preds = %sw.bb.27
  %24 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 -1
  %call35 = call i32 @check_type_failed(%struct.ref_s* %add.ptr34) #4
  store i32 %call35, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.36:                                         ; preds = %sw.bb.27
  %25 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 1
  %intval38 = bitcast %union.v* %value37 to i64*
  %26 = load i64, i64* %intval38, align 8, !tbaa !22
  %conv39 = sitofp i64 %26 to double
  %27 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i64 -1
  %value41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx40, i32 0, i32 1
  %realval42 = bitcast %union.v* %value41 to float*
  %28 = load float, float* %realval42, align 4, !tbaa !20
  %conv43 = fpext float %28 to double
  %sub44 = fsub double %conv43, %conv39
  %conv45 = fptrunc double %sub44 to float
  store float %conv45, float* %realval42, align 4, !tbaa !20
  br label %sw.epilog.110

sw.bb.46:                                         ; preds = %sw.bb.27
  %29 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %29, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %30 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !24
  %31 = bitcast %struct.gs_ref_memory_s* %30 to %struct.gs_memory_s*
  %call47 = call i32 @gs_currentcpsimode(%struct.gs_memory_s* %31) #4
  %tobool = icmp ne i32 %call47, 0
  br i1 %tobool, label %if.then, label %if.else.76

if.then:                                          ; preds = %sw.bb.46
  %32 = bitcast i32* %int1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  %33 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 -1
  %value49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx48, i32 0, i32 1
  %intval50 = bitcast %union.v* %value49 to i64*
  %34 = load i64, i64* %intval50, align 8, !tbaa !22
  %conv51 = trunc i64 %34 to i32
  store i32 %conv51, i32* %int1, align 4, !tbaa !25
  %35 = bitcast i32* %int2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  %36 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i32 0, i32 1
  %intval53 = bitcast %union.v* %value52 to i64*
  %37 = load i64, i64* %intval53, align 8, !tbaa !22
  %conv54 = trunc i64 %37 to i32
  store i32 %conv54, i32* %int2, align 4, !tbaa !25
  %38 = bitcast i32* %int3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #1
  %39 = load i32, i32* %int1, align 4, !tbaa !25
  %40 = load i32, i32* %int1, align 4, !tbaa !25
  %41 = load i32, i32* %int2, align 4, !tbaa !25
  %sub55 = sub nsw i32 %40, %41
  store i32 %sub55, i32* %int3, align 4, !tbaa !25
  %xor = xor i32 %39, %sub55
  %cmp = icmp slt i32 %xor, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %42 = load i32, i32* %int1, align 4, !tbaa !25
  %43 = load i32, i32* %int2, align 4, !tbaa !25
  %xor57 = xor i32 %42, %43
  %cmp58 = icmp slt i32 %xor57, 0
  br i1 %cmp58, label %if.then.60, label %if.else

if.then.60:                                       ; preds = %land.lhs.true
  %44 = load i32, i32* %int1, align 4, !tbaa !25
  %conv61 = sitofp i32 %44 to float
  %45 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i32 0, i32 1
  %intval63 = bitcast %union.v* %value62 to i64*
  %46 = load i64, i64* %intval63, align 8, !tbaa !22
  %conv64 = sitofp i64 %46 to float
  %sub65 = fsub float %conv61, %conv64
  %47 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr66 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i64 -1
  %value67 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr66, i32 0, i32 1
  %realval68 = bitcast %union.v* %value67 to float*
  store float %sub65, float* %realval68, align 4, !tbaa !20
  %48 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr69 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i64 -1
  %tas70 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr69, i32 0, i32 0
  %type_attrs71 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas70, i32 0, i32 0
  store i16 4096, i16* %type_attrs71, align 2, !tbaa !23
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  %49 = load i32, i32* %int3, align 4, !tbaa !25
  %conv72 = sext i32 %49 to i64
  %50 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx73 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %50, i64 -1
  %value74 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx73, i32 0, i32 1
  %intval75 = bitcast %union.v* %value74 to i64*
  store i64 %conv72, i64* %intval75, align 8, !tbaa !22
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.60
  %51 = bitcast i32* %int3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast i32* %int2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast i32* %int1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  br label %if.end.109

if.else.76:                                       ; preds = %sw.bb.46
  %54 = bitcast i64* %int177 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %54) #1
  %55 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx78 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %55, i64 -1
  %value79 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx78, i32 0, i32 1
  %intval80 = bitcast %union.v* %value79 to i64*
  %56 = load i64, i64* %intval80, align 8, !tbaa !22
  store i64 %56, i64* %int177, align 8, !tbaa !22
  %57 = load i64, i64* %int177, align 8, !tbaa !22
  %58 = load i64, i64* %int177, align 8, !tbaa !22
  %59 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value81 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %59, i32 0, i32 1
  %intval82 = bitcast %union.v* %value81 to i64*
  %60 = load i64, i64* %intval82, align 8, !tbaa !22
  %sub83 = sub nsw i64 %58, %60
  %61 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx84 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %61, i64 -1
  %value85 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx84, i32 0, i32 1
  %intval86 = bitcast %union.v* %value85 to i64*
  store i64 %sub83, i64* %intval86, align 8, !tbaa !22
  %xor87 = xor i64 %57, %sub83
  %cmp88 = icmp slt i64 %xor87, 0
  br i1 %cmp88, label %land.lhs.true.90, label %if.end.108

land.lhs.true.90:                                 ; preds = %if.else.76
  %62 = load i64, i64* %int177, align 8, !tbaa !22
  %63 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value91 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %63, i32 0, i32 1
  %intval92 = bitcast %union.v* %value91 to i64*
  %64 = load i64, i64* %intval92, align 8, !tbaa !22
  %xor93 = xor i64 %62, %64
  %cmp94 = icmp slt i64 %xor93, 0
  br i1 %cmp94, label %if.then.96, label %if.end.108

if.then.96:                                       ; preds = %land.lhs.true.90
  %65 = load i64, i64* %int177, align 8, !tbaa !22
  %conv97 = sitofp i64 %65 to float
  %66 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value98 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %66, i32 0, i32 1
  %intval99 = bitcast %union.v* %value98 to i64*
  %67 = load i64, i64* %intval99, align 8, !tbaa !22
  %conv100 = sitofp i64 %67 to float
  %sub101 = fsub float %conv97, %conv100
  %68 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr102 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %68, i64 -1
  %value103 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr102, i32 0, i32 1
  %realval104 = bitcast %union.v* %value103 to float*
  store float %sub101, float* %realval104, align 4, !tbaa !20
  %69 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr105 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %69, i64 -1
  %tas106 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr105, i32 0, i32 0
  %type_attrs107 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas106, i32 0, i32 0
  store i16 4096, i16* %type_attrs107, align 2, !tbaa !23
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.96, %land.lhs.true.90, %if.else.76
  %70 = bitcast i64* %int177 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.end
  br label %sw.epilog.110

sw.epilog.110:                                    ; preds = %if.end.109, %sw.bb.36
  br label %sw.epilog.111

sw.epilog.111:                                    ; preds = %sw.epilog.110, %sw.epilog
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.111, %sw.default.33, %sw.default.5, %sw.default
  %71 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = load i32, i32* %retval
  ret i32 %72
}

; Function Attrs: nounwind uwtable
define i32 @zsub(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %code = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @zop_sub(%struct.gs_context_state_s* %1) #4
  store i32 %call, i32* %code, align 4, !tbaa !25
  %2 = load i32, i32* %code, align 4, !tbaa !25
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %3, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %4 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %code, align 4, !tbaa !25
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %6) #1
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @zidiv(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  %tmpval = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %4 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %6) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.67

if.end:                                           ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -1
  %tas3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx2, i32 0, i32 0
  %type_attrs4 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas3, i32 0, i32 0
  %8 = bitcast i16* %type_attrs4 to i8*
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx5, align 1, !tbaa !19
  %conv6 = zext i8 %9 to i32
  %cmp7 = icmp eq i32 %conv6, 11
  br i1 %cmp7, label %if.end.12, label %if.then.9

if.then.9:                                        ; preds = %if.end
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -1
  %call11 = call i32 @check_type_failed(%struct.ref_s* %arrayidx10) #4
  store i32 %call11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.67

if.end.12:                                        ; preds = %if.end
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %12 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !24
  %13 = bitcast %struct.gs_ref_memory_s* %12 to %struct.gs_memory_s*
  %call13 = call i32 @gs_currentcpsimode(%struct.gs_memory_s* %13) #4
  %tobool = icmp ne i32 %call13, 0
  br i1 %tobool, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.end.12
  %14 = bitcast i32* %tmpval to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %16 = load i64, i64* %intval, align 8, !tbaa !22
  %cmp15 = icmp eq i64 %16, 0
  br i1 %cmp15, label %if.then.26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.14
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 -1
  %value18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx17, i32 0, i32 1
  %intval19 = bitcast %union.v* %value18 to i64*
  %18 = load i64, i64* %intval19, align 8, !tbaa !22
  %cmp20 = icmp eq i64 %18, -2147483648
  br i1 %cmp20, label %land.lhs.true, label %if.end.27

land.lhs.true:                                    ; preds = %lor.lhs.false
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 1
  %intval23 = bitcast %union.v* %value22 to i64*
  %20 = load i64, i64* %intval23, align 8, !tbaa !22
  %cmp24 = icmp eq i64 %20, -1
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %land.lhs.true, %if.then.14
  store i32 -23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %land.lhs.true, %lor.lhs.false
  %21 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -1
  %value29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx28, i32 0, i32 1
  %intval30 = bitcast %union.v* %value29 to i64*
  %22 = load i64, i64* %intval30, align 8, !tbaa !22
  %conv31 = trunc i64 %22 to i32
  %conv32 = sext i32 %conv31 to i64
  %23 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 1
  %intval34 = bitcast %union.v* %value33 to i64*
  %24 = load i64, i64* %intval34, align 8, !tbaa !22
  %div = sdiv i64 %conv32, %24
  %conv35 = trunc i64 %div to i32
  store i32 %conv35, i32* %tmpval, align 4, !tbaa !25
  %25 = load i32, i32* %tmpval, align 4, !tbaa !25
  %conv36 = sext i32 %25 to i64
  %26 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 -1
  %value38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx37, i32 0, i32 1
  %intval39 = bitcast %union.v* %value38 to i64*
  store i64 %conv36, i64* %intval39, align 8, !tbaa !22
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.27, %if.then.26
  %27 = bitcast i32* %tmpval to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.67 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.63

if.else:                                          ; preds = %if.end.12
  %28 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 1
  %intval41 = bitcast %union.v* %value40 to i64*
  %29 = load i64, i64* %intval41, align 8, !tbaa !22
  %cmp42 = icmp eq i64 %29, 0
  br i1 %cmp42, label %if.then.55, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %if.else
  %30 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i64 -1
  %value46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx45, i32 0, i32 1
  %intval47 = bitcast %union.v* %value46 to i64*
  %31 = load i64, i64* %intval47, align 8, !tbaa !22
  %cmp48 = icmp eq i64 %31, -9223372036854775808
  br i1 %cmp48, label %land.lhs.true.50, label %if.end.56

land.lhs.true.50:                                 ; preds = %lor.lhs.false.44
  %32 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 0, i32 1
  %intval52 = bitcast %union.v* %value51 to i64*
  %33 = load i64, i64* %intval52, align 8, !tbaa !22
  %cmp53 = icmp eq i64 %33, -1
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %land.lhs.true.50, %if.else
  store i32 -23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.67

if.end.56:                                        ; preds = %land.lhs.true.50, %lor.lhs.false.44
  %34 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 0, i32 1
  %intval58 = bitcast %union.v* %value57 to i64*
  %35 = load i64, i64* %intval58, align 8, !tbaa !22
  %36 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i64 -1
  %value60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx59, i32 0, i32 1
  %intval61 = bitcast %union.v* %value60 to i64*
  %37 = load i64, i64* %intval61, align 8, !tbaa !22
  %div62 = sdiv i64 %37, %35
  store i64 %div62, i64* %intval61, align 8, !tbaa !22
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.56, %cleanup.cont
  %38 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack64 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %38, i32 0, i32 26
  %stack65 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack64, i32 0, i32 0
  %p66 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack65, i32 0, i32 0
  %39 = load %struct.ref_s*, %struct.ref_s** %p66, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p66, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.67

cleanup.67:                                       ; preds = %if.end.63, %if.then.55, %cleanup, %if.then.9, %if.then
  %40 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = load i32, i32* %retval
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define i32 @zmod(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %4 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %6) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -1
  %tas3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx2, i32 0, i32 0
  %type_attrs4 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas3, i32 0, i32 0
  %8 = bitcast i16* %type_attrs4 to i8*
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx5, align 1, !tbaa !19
  %conv6 = zext i8 %9 to i32
  %cmp7 = icmp eq i32 %conv6, 11
  br i1 %cmp7, label %if.end.12, label %if.then.9

if.then.9:                                        ; preds = %if.end
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -1
  %call11 = call i32 @check_type_failed(%struct.ref_s* %arrayidx10) #4
  store i32 %call11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %12 = load i64, i64* %intval, align 8, !tbaa !22
  %cmp13 = icmp eq i64 %12, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  store i32 -23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.end.12
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 1
  %intval18 = bitcast %union.v* %value17 to i64*
  %14 = load i64, i64* %intval18, align 8, !tbaa !22
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -1
  %value20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx19, i32 0, i32 1
  %intval21 = bitcast %union.v* %value20 to i64*
  %16 = load i64, i64* %intval21, align 8, !tbaa !22
  %rem = srem i64 %16, %14
  store i64 %rem, i64* %intval21, align 8, !tbaa !22
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack22 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %17, i32 0, i32 26
  %stack23 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack22, i32 0, i32 0
  %p24 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack23, i32 0, i32 0
  %18 = load %struct.ref_s*, %struct.ref_s** %p24, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p24, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.16, %if.then.15, %if.then.9, %if.then
  %19 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define i32 @zneg(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %4 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %5 to i32
  switch i32 %conv, label %sw.default [
    i32 16, label %sw.bb
    i32 11, label %sw.bb.3
  ]

sw.default:                                       ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %6) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 1
  %realval = bitcast %union.v* %value to float*
  %8 = load float, float* %realval, align 4, !tbaa !20
  %sub = fsub float -0.000000e+00, %8
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %realval2 = bitcast %union.v* %value1 to float*
  store float %sub, float* %realval2, align 4, !tbaa !20
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %11 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !24
  %12 = bitcast %struct.gs_ref_memory_s* %11 to %struct.gs_memory_s*
  %call4 = call i32 @gs_currentcpsimode(%struct.gs_memory_s* %12) #4
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.else.18

if.then:                                          ; preds = %sw.bb.3
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 1
  %intval = bitcast %union.v* %value5 to i64*
  %14 = load i64, i64* %intval, align 8, !tbaa !22
  %conv6 = trunc i64 %14 to i32
  %cmp = icmp eq i32 %conv6, -2147483648
  br i1 %cmp, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 1
  %realval10 = bitcast %union.v* %value9 to float*
  store float 0xC1E0000000000000, float* %realval10, align 4, !tbaa !20
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 0
  %type_attrs12 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas11, i32 0, i32 0
  store i16 4096, i16* %type_attrs12, align 2, !tbaa !23
  br label %if.end

if.else:                                          ; preds = %if.then
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 1
  %intval14 = bitcast %union.v* %value13 to i64*
  %18 = load i64, i64* %intval14, align 8, !tbaa !22
  %sub15 = sub nsw i64 0, %18
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 1
  %intval17 = bitcast %union.v* %value16 to i64*
  store i64 %sub15, i64* %intval17, align 8, !tbaa !22
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.8
  br label %if.end.35

if.else.18:                                       ; preds = %sw.bb.3
  %20 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 1
  %intval20 = bitcast %union.v* %value19 to i64*
  %21 = load i64, i64* %intval20, align 8, !tbaa !22
  %cmp21 = icmp eq i64 %21, -9223372036854775808
  br i1 %cmp21, label %if.then.23, label %if.else.28

if.then.23:                                       ; preds = %if.else.18
  %22 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 1
  %realval25 = bitcast %union.v* %value24 to float*
  store float 0x43E0000000000000, float* %realval25, align 4, !tbaa !20
  %23 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 0
  %type_attrs27 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas26, i32 0, i32 0
  store i16 4096, i16* %type_attrs27, align 2, !tbaa !23
  br label %if.end.34

if.else.28:                                       ; preds = %if.else.18
  %24 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 1
  %intval30 = bitcast %union.v* %value29 to i64*
  %25 = load i64, i64* %intval30, align 8, !tbaa !22
  %sub31 = sub nsw i64 0, %25
  %26 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 1
  %intval33 = bitcast %union.v* %value32 to i64*
  store i64 %sub31, i64* %intval33, align 8, !tbaa !22
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.28, %if.then.23
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.35, %sw.bb
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default
  %27 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define i32 @zabs(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %4 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %5 to i32
  switch i32 %conv, label %sw.default [
    i32 16, label %sw.bb
    i32 11, label %sw.bb.2
  ]

sw.default:                                       ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %6) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 1
  %realval = bitcast %union.v* %value to float*
  %8 = load float, float* %realval, align 4, !tbaa !20
  %cmp = fcmp oge float %8, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %intval = bitcast %union.v* %value3 to i64*
  %10 = load i64, i64* %intval, align 8, !tbaa !22
  %cmp4 = icmp sge i64 %10, 0
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %sw.bb.2
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %sw.bb.2
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.7, %if.end
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call8 = call i32 @zneg(%struct.gs_context_state_s* %11) #4
  store i32 %call8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then.6, %if.then, %sw.default
  %12 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @zceiling(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %4 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %5 to i32
  switch i32 %conv, label %sw.default [
    i32 16, label %sw.bb
    i32 11, label %sw.bb.6
  ]

sw.default:                                       ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %6) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 1
  %realval = bitcast %union.v* %value to float*
  %8 = load float, float* %realval, align 4, !tbaa !20
  %conv1 = fpext float %8 to double
  %call2 = call double @ceil(double %conv1) #5
  %conv3 = fptrunc double %call2 to float
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %realval5 = bitcast %union.v* %value4 to float*
  store float %conv3, float* %realval5, align 4, !tbaa !20
  br label %sw.bb.6

sw.bb.6:                                          ; preds = %entry, %sw.bb
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default
  %10 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind readnone
declare double @ceil(double) #3

; Function Attrs: nounwind uwtable
define i32 @zfloor(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %4 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %5 to i32
  switch i32 %conv, label %sw.default [
    i32 16, label %sw.bb
    i32 11, label %sw.bb.6
  ]

sw.default:                                       ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %6) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 1
  %realval = bitcast %union.v* %value to float*
  %8 = load float, float* %realval, align 4, !tbaa !20
  %conv1 = fpext float %8 to double
  %call2 = call double @floor(double %conv1) #5
  %conv3 = fptrunc double %call2 to float
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %realval5 = bitcast %union.v* %value4 to float*
  store float %conv3, float* %realval5, align 4, !tbaa !20
  br label %sw.bb.6

sw.bb.6:                                          ; preds = %entry, %sw.bb
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default
  %10 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind readnone
declare double @floor(double) #3

; Function Attrs: nounwind uwtable
define i32 @zround(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %4 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %5 to i32
  switch i32 %conv, label %sw.default [
    i32 16, label %sw.bb
    i32 11, label %sw.bb.6
  ]

sw.default:                                       ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %6) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 1
  %realval = bitcast %union.v* %value to float*
  %8 = load float, float* %realval, align 4, !tbaa !20
  %conv1 = fpext float %8 to double
  %add = fadd double %conv1, 5.000000e-01
  %call2 = call double @floor(double %add) #5
  %conv3 = fptrunc double %call2 to float
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %realval5 = bitcast %union.v* %value4 to float*
  store float %conv3, float* %realval5, align 4, !tbaa !20
  br label %sw.bb.6

sw.bb.6:                                          ; preds = %entry, %sw.bb
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default
  %10 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @ztruncate(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %4 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %5 to i32
  switch i32 %conv, label %sw.default [
    i32 16, label %sw.bb
    i32 11, label %sw.bb.14
  ]

sw.default:                                       ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %6) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 1
  %realval = bitcast %union.v* %value to float*
  %8 = load float, float* %realval, align 4, !tbaa !20
  %conv1 = fpext float %8 to double
  %cmp = fcmp olt double %conv1, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %realval4 = bitcast %union.v* %value3 to float*
  %10 = load float, float* %realval4, align 4, !tbaa !20
  %conv5 = fpext float %10 to double
  %call6 = call double @ceil(double %conv5) #5
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %realval8 = bitcast %union.v* %value7 to float*
  %12 = load float, float* %realval8, align 4, !tbaa !20
  %conv9 = fpext float %12 to double
  %call10 = call double @floor(double %conv9) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %call6, %cond.true ], [ %call10, %cond.false ]
  %conv11 = fptrunc double %cond to float
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 1
  %realval13 = bitcast %union.v* %value12 to float*
  store float %conv11, float* %realval13, align 4, !tbaa !20
  br label %sw.bb.14

sw.bb.14:                                         ; preds = %entry, %cond.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.14
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default
  %14 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @zbitadd(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %4 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv = zext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %6) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -1
  %tas3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx2, i32 0, i32 0
  %type_attrs4 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas3, i32 0, i32 0
  %8 = bitcast i16* %type_attrs4 to i8*
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx5, align 1, !tbaa !19
  %conv6 = zext i8 %9 to i32
  %cmp7 = icmp eq i32 %conv6, 11
  br i1 %cmp7, label %if.end.12, label %if.then.9

if.then.9:                                        ; preds = %if.end
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -1
  %call11 = call i32 @check_type_failed(%struct.ref_s* %arrayidx10) #4
  store i32 %call11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %12 = load i64, i64* %intval, align 8, !tbaa !22
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -1
  %value14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx13, i32 0, i32 1
  %intval15 = bitcast %union.v* %value14 to i64*
  %14 = load i64, i64* %intval15, align 8, !tbaa !22
  %add = add nsw i64 %14, %12
  store i64 %add, i64* %intval15, align 8, !tbaa !22
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack16 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 26
  %stack17 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack16, i32 0, i32 0
  %p18 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack17, i32 0, i32 0
  %16 = load %struct.ref_s*, %struct.ref_s** %p18, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p18, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.12, %if.then.9, %if.then
  %17 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  %18 = load i32, i32* %retval
  ret i32 %18
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }
attributes #5 = { nobuiltin nounwind readnone }

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
!19 = !{!3, !3, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"float", !3, i64 0}
!22 = !{!13, !13, i64 0}
!23 = !{!10, !12, i64 0}
!24 = !{!6, !2, i64 8}
!25 = !{!9, !9, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"double", !3, i64 0}
