; ModuleID = './ztoken.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_gc_root_s = type { %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i32 }
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type { i8*, i8*, %struct.gx_io_device_procs_s, i8* }
%struct.gx_io_device_procs_s = type { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }
%struct.stream_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %union.stream_cursor_s, i8*, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, %struct.stream_s*, i32, i32, %struct.stream_state_s*, i16, i16, %struct.stream_s*, %struct.stream_s*, i32, i32, i32 (%struct.stream_s*)*, %struct._IO_FILE*, %struct.gs_const_string_s, i32, i64, i64 }
%struct.stream_template_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.gs_string_s = type { i8*, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, void (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_s*, i32)* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8] }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.file_enum_s = type opaque
%struct.gs_param_list_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.named_scanner_option_s = type { i8*, i32 }
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
%struct.op_array_table_s = type { %struct.ref_s, i16*, i32, i32, i32 }
%struct.dict_stack_s = type { %struct.ref_stack_s, i32, i32, i32, i16*, i32, %struct.ref_s*, %struct.ref_s }
%struct.ref_stack_s = type { %struct.ref_s*, %struct.ref_s*, %struct.ref_s*, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, %struct.ref_stack_params_s*, %struct.gs_ref_memory_s* }
%struct.ref_stack_params_s = type opaque
%struct.exec_stack_s = type { %struct.ref_stack_s, %struct.ref_s* }
%struct.op_stack_s = type { %struct.ref_stack_s }
%struct.i_plugin_holder_s = type opaque
%struct.scanner_state_s = type { %struct.ref_s, i32, i32, i32, i32, %struct.dynamic_area_s, %union.sss_, %struct.se_ }
%struct.dynamic_area_s = type { i8*, i8*, i8*, i32, [1023 x i8], %struct.gs_memory_s* }
%union.sss_ = type { %struct.stream_A85D_state_s }
%struct.stream_A85D_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i64, i32, i32 }
%struct.se_ = type { %struct.ref_s, i32, [121 x i8] }
%struct.scanner_state_dynamic_s = type { %struct.scanner_state_s, %struct.gs_memory_s* }
%struct.obj_header_s = type opaque

@st_scanner_state_dynamic = external constant %struct.gs_memory_struct_type_s, align 8
@.str = private unnamed_addr constant [16 x i8] c"%ProcessComment\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%ProcessDSCComment\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"ztoken_handle_comment\00", align 1
@named_options = internal constant [5 x %struct.named_scanner_option_s] [%struct.named_scanner_option_s { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 16 }, %struct.named_scanner_option_s { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), i32 4 }, %struct.named_scanner_option_s { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i32 8 }, %struct.named_scanner_option_s { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i32 32 }, %struct.named_scanner_option_s { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0), i32 64 }], align 16
@.str.3 = private unnamed_addr constant [7 x i8] c"1token\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"1.tokenexec\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"2%ztoken_continue\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"2%ztokenexec_continue\00", align 1
@ztoken_op_defs = constant [5 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @ztoken }, %struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @ztokenexec }, %struct.op_def { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @ztoken_continue }, %struct.op_def { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @ztokenexec_continue }, %struct.op_def zeroinitializer], align 16
@.str.7 = private unnamed_addr constant [15 x i8] c"token_continue\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"PDFScanRules\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"ProcessComment\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"ProcessDSCComment\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"PDFScanInvNum\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"PDFScanUnsigned\00", align 1

; Function Attrs: nounwind uwtable
define i32 @ztoken(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  %s = alloca %struct.stream_s*, align 8
  %state = alloca %struct.scanner_state_s, align 8
  %fcode = alloca i32, align 4
  %token = alloca %struct.ref_s, align 8
  %orig_ostack_depth = alloca i32, align 4
  %code = alloca i32, align 4
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
    i32 3, label %sw.bb
    i32 18, label %sw.bb.51
  ]

sw.default:                                       ; preds = %entry
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %6) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.111

sw.bb:                                            ; preds = %entry
  %7 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast %struct.scanner_state_s* %state to i8*
  call void @llvm.lifetime.start(i64 1368, i8* %8) #1
  br label %do.body

do.body:                                          ; preds = %sw.bb
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %type_attrs2 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1, i32 0, i32 0
  %10 = load i16, i16* %type_attrs2, align 2, !tbaa !20
  %conv3 = zext i16 %10 to i32
  %and = and i32 %conv3, 16160
  %cmp = icmp eq i32 %and, 800
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %type_attrs6 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas5, i32 0, i32 0
  %12 = bitcast i16* %type_attrs6 to i8*
  %arrayidx7 = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx7, align 1, !tbaa !19
  %conv8 = zext i8 %13 to i32
  %cmp9 = icmp eq i32 %conv8, 3
  br i1 %cmp9, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call11 = call i32 @check_type_failed(%struct.ref_s* %14) #4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call11, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.49

if.end:                                           ; preds = %do.body
  br label %do.body.12

do.body.12:                                       ; preds = %if.end
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 1
  %pfile = bitcast %union.v* %value to %struct.stream_s**
  %16 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %16, %struct.stream_s** %s, align 8, !tbaa !1
  %17 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %17, i32 0, i32 19
  %18 = load i16, i16* %read_id, align 2, !tbaa !21
  %conv13 = zext i16 %18 to i32
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas14, i32 0, i32 2
  %20 = load i32, i32* %rsize, align 4, !tbaa !26
  %cmp15 = icmp ne i32 %conv13, %20
  br i1 %cmp15, label %if.then.17, label %if.end.34

if.then.17:                                       ; preds = %do.body.12
  %21 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id18 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %21, i32 0, i32 19
  %22 = load i16, i16* %read_id18, align 2, !tbaa !21
  %conv19 = zext i16 %22 to i32
  %cmp20 = icmp eq i32 %conv19, 0
  br i1 %cmp20, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.17
  %23 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %write_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %23, i32 0, i32 20
  %24 = load i16, i16* %write_id, align 2, !tbaa !27
  %conv22 = zext i16 %24 to i32
  %25 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 0
  %rsize24 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas23, i32 0, i32 2
  %26 = load i32, i32* %rsize24, align 4, !tbaa !26
  %cmp25 = icmp eq i32 %conv22, %26
  br i1 %cmp25, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %land.lhs.true
  %27 = bitcast i32* %fcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call28 = call i32 @file_switch_to_read(%struct.ref_s* %28) #4
  store i32 %call28, i32* %fcode, align 4, !tbaa !28
  %29 = load i32, i32* %fcode, align 4, !tbaa !28
  %cmp29 = icmp slt i32 %29, 0
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.then.27
  %30 = load i32, i32* %fcode, align 4, !tbaa !28
  store i32 %30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.32:                                        ; preds = %if.then.27
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.32, %if.then.31
  %31 = bitcast i32* %fcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.49 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.33

if.else:                                          ; preds = %land.lhs.true, %if.then.17
  %32 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %invalid_file_stream = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %32, i32 0, i32 18
  %33 = load %struct.stream_s*, %struct.stream_s** %invalid_file_stream, align 8, !tbaa !29
  store %struct.stream_s* %33, %struct.stream_s** %s, align 8, !tbaa !1
  br label %if.end.33

if.end.33:                                        ; preds = %if.else, %cleanup.cont
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %do.body.12
  br label %do.cond

do.cond:                                          ; preds = %if.end.34
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.35

do.cond.35:                                       ; preds = %do.end
  br label %do.end.36

do.end.36:                                        ; preds = %do.cond.35
  %34 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack37 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %34, i32 0, i32 26
  %stack38 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack37, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack38, i32 0, i32 2
  %35 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !30
  %36 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack39 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %36, i32 0, i32 26
  %stack40 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack39, i32 0, i32 0
  %p41 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack40, i32 0, i32 0
  %37 = load %struct.ref_s*, %struct.ref_s** %p41, align 8, !tbaa !5
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %35 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %37 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %cmp42 = icmp slt i64 %sub.ptr.div, 1
  br i1 %cmp42, label %if.then.44, label %if.end.47

if.then.44:                                       ; preds = %do.end.36
  %38 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack45 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %38, i32 0, i32 26
  %stack46 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack45, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack46, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !31
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.49

if.end.47:                                        ; preds = %do.end.36
  %39 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  call void @gs_scanner_init_options(%struct.scanner_state_s* %state, %struct.ref_s* %39, i32 0) #4
  %40 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call48 = call i32 @token_continue(%struct.gs_context_state_s* %40, %struct.scanner_state_s* %state, i32 1) #4
  store i32 %call48, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.49

cleanup.49:                                       ; preds = %if.end.47, %if.then.44, %cleanup, %cond.end
  %41 = bitcast %struct.scanner_state_s* %state to i8*
  call void @llvm.lifetime.end(i64 1368, i8* %41) #1
  %42 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  br label %cleanup.111

sw.bb.51:                                         ; preds = %entry
  %43 = bitcast %struct.ref_s* %token to i8*
  call void @llvm.lifetime.start(i64 16, i8* %43) #1
  %44 = bitcast i32* %orig_ostack_depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #1
  %45 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack52 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %45, i32 0, i32 26
  %stack53 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack52, i32 0, i32 0
  %call54 = call i32 @ref_stack_count(%struct.ref_stack_s* %stack53) #4
  %sub = sub i32 %call54, 1
  store i32 %sub, i32* %orig_ostack_depth, align 4, !tbaa !28
  %46 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #1
  %47 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i32 0, i32 0
  %type_attrs56 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas55, i32 0, i32 0
  %48 = load i16, i16* %type_attrs56, align 2, !tbaa !20
  %conv57 = zext i16 %48 to i32
  %and58 = and i32 %conv57, 32
  %tobool = icmp ne i32 %and58, 0
  br i1 %tobool, label %if.end.60, label %if.then.59

if.then.59:                                       ; preds = %sw.bb.51
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.108

if.end.60:                                        ; preds = %sw.bb.51
  %49 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %50 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call61 = call i32 @gs_scan_string_token_options(%struct.gs_context_state_s* %49, %struct.ref_s* %50, %struct.ref_s* %token, i32 0) #4
  store i32 %call61, i32* %code, align 4, !tbaa !28
  %51 = load i32, i32* %code, align 4, !tbaa !28
  switch i32 %51, label %sw.default.66 [
    i32 2, label %sw.bb.62
  ]

sw.bb.62:                                         ; preds = %if.end.60
  %52 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value63 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %52, i32 0, i32 1
  %boolval = bitcast %union.v* %value63 to i16*
  store i16 0, i16* %boolval, align 2, !tbaa !32
  %53 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas64 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i32 0, i32 0
  %type_attrs65 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas64, i32 0, i32 0
  store i16 256, i16* %type_attrs65, align 2, !tbaa !20
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.108

sw.default.66:                                    ; preds = %if.end.60
  %54 = load i32, i32* %code, align 4, !tbaa !28
  %cmp67 = icmp slt i32 %54, 0
  br i1 %cmp67, label %if.then.69, label %if.end.84

if.then.69:                                       ; preds = %sw.default.66
  %55 = load i32, i32* %orig_ostack_depth, align 4, !tbaa !28
  %56 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack70 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %56, i32 0, i32 26
  %stack71 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack70, i32 0, i32 0
  %call72 = call i32 @ref_stack_count(%struct.ref_stack_s* %stack71) #4
  %cmp73 = icmp ult i32 %55, %call72
  br i1 %cmp73, label %if.then.75, label %if.end.83

if.then.75:                                       ; preds = %if.then.69
  %57 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack76 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %57, i32 0, i32 26
  %stack77 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack76, i32 0, i32 0
  %call78 = call i32 @ref_stack_count(%struct.ref_stack_s* %stack77) #4
  %58 = load i32, i32* %orig_ostack_depth, align 4, !tbaa !28
  %sub79 = sub i32 %call78, %58
  %59 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack80 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %59, i32 0, i32 26
  %stack81 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack80, i32 0, i32 0
  %p82 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack81, i32 0, i32 0
  %60 = load %struct.ref_s*, %struct.ref_s** %p82, align 8, !tbaa !5
  %idx.ext = zext i32 %sub79 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %60, i64 %idx.neg
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p82, align 8, !tbaa !5
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.75, %if.then.69
  %61 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %61, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.108

if.end.84:                                        ; preds = %sw.default.66
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.84
  br label %do.body.85

do.body.85:                                       ; preds = %sw.epilog
  %62 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr86 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i64 2
  store %struct.ref_s* %add.ptr86, %struct.ref_s** %op, align 8, !tbaa !1
  %63 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack87 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %63, i32 0, i32 26
  %stack88 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack87, i32 0, i32 0
  %top89 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack88, i32 0, i32 2
  %64 = load %struct.ref_s*, %struct.ref_s** %top89, align 8, !tbaa !30
  %cmp90 = icmp ugt %struct.ref_s* %add.ptr86, %64
  br i1 %cmp90, label %if.then.92, label %if.else.96

if.then.92:                                       ; preds = %do.body.85
  %65 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack93 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %65, i32 0, i32 26
  %stack94 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack93, i32 0, i32 0
  %requested95 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack94, i32 0, i32 7
  store i32 2, i32* %requested95, align 4, !tbaa !31
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.108

if.else.96:                                       ; preds = %do.body.85
  %66 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %67 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack97 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %67, i32 0, i32 26
  %stack98 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack97, i32 0, i32 0
  %p99 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack98, i32 0, i32 0
  store %struct.ref_s* %66, %struct.ref_s** %p99, align 8, !tbaa !5
  br label %if.end.100

if.end.100:                                       ; preds = %if.else.96
  br label %do.cond.101

do.cond.101:                                      ; preds = %if.end.100
  br label %do.end.102

do.end.102:                                       ; preds = %do.cond.101
  %68 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx103 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %68, i64 -1
  %69 = bitcast %struct.ref_s* %arrayidx103 to i8*
  %70 = bitcast %struct.ref_s* %token to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %69, i8* %70, i64 16, i32 8, i1 false), !tbaa.struct !33
  %71 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value104 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %71, i32 0, i32 1
  %boolval105 = bitcast %union.v* %value104 to i16*
  store i16 1, i16* %boolval105, align 2, !tbaa !32
  %72 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas106 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %72, i32 0, i32 0
  %type_attrs107 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas106, i32 0, i32 0
  store i16 256, i16* %type_attrs107, align 2, !tbaa !20
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.108

cleanup.108:                                      ; preds = %do.end.102, %if.then.92, %if.end.83, %sw.bb.62, %if.then.59
  %73 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = bitcast i32* %orig_ostack_depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast %struct.ref_s* %token to i8*
  call void @llvm.lifetime.end(i64 16, i8* %75) #1
  br label %cleanup.111

cleanup.111:                                      ; preds = %cleanup.108, %cleanup.49, %sw.default
  %76 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %77 = load i32, i32* %retval
  ret i32 %77
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @check_type_failed(%struct.ref_s*) #2

declare i32 @file_switch_to_read(%struct.ref_s*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare void @gs_scanner_init_options(%struct.scanner_state_s*, %struct.ref_s*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @token_continue(%struct.gs_context_state_s* %i_ctx_p, %struct.scanner_state_s* %pstate, i32 %save) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pstate.addr = alloca %struct.scanner_state_s*, align 8
  %save.addr = alloca i32, align 4
  %op = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %token = alloca %struct.ref_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.scanner_state_s* %pstate, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  store i32 %save, i32* %save.addr, align 4, !tbaa !28
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %struct.ref_s* %token to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #1
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %p3 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 0
  %6 = load %struct.ref_s*, %struct.ref_s** %p3, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p3, align 8, !tbaa !5
  br label %again

again:                                            ; preds = %sw.bb.45, %entry
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %8 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %call = call i32 @gs_scan_token(%struct.gs_context_state_s* %7, %struct.ref_s* %token, %struct.scanner_state_s* %8) #4
  store i32 %call, i32* %code, align 4, !tbaa !28
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack4 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 26
  %stack5 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack4, i32 0, i32 0
  %p6 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack5, i32 0, i32 0
  %10 = load %struct.ref_s*, %struct.ref_s** %p6, align 8, !tbaa !5
  store %struct.ref_s* %10, %struct.ref_s** %op, align 8, !tbaa !1
  %11 = load i32, i32* %code, align 4, !tbaa !28
  switch i32 %11, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.8
    i32 2, label %sw.bb.21
    i32 3, label %sw.bb.43
  ]

sw.default:                                       ; preds = %again
  %12 = load i32, i32* %code, align 4, !tbaa !28
  %cmp = icmp sgt i32 %12, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.default
  store i32 -18, i32* %code, align 4, !tbaa !28
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.default
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %14 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %error_object = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 10
  %call7 = call i32 @gs_scanner_error_object(%struct.gs_context_state_s* %13, %struct.scanner_state_s* %14, %struct.ref_s* %error_object) #4
  br label %sw.epilog.47

sw.bb:                                            ; preds = %again
  store i32 0, i32* %code, align 4, !tbaa !28
  br label %sw.bb.8

sw.bb.8:                                          ; preds = %again, %sw.bb
  br label %do.body

do.body:                                          ; preds = %sw.bb.8
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 2
  store %struct.ref_s* %add.ptr9, %struct.ref_s** %op, align 8, !tbaa !1
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack10 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %17, i32 0, i32 26
  %stack11 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack10, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack11, i32 0, i32 2
  %18 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !30
  %cmp12 = icmp ugt %struct.ref_s* %add.ptr9, %18
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %do.body
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack14 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 26
  %stack15 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack14, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack15, i32 0, i32 7
  store i32 2, i32* %requested, align 4, !tbaa !31
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %20 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %21 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack16 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %21, i32 0, i32 26
  %stack17 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack16, i32 0, i32 0
  %p18 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack17, i32 0, i32 0
  store %struct.ref_s* %20, %struct.ref_s** %p18, align 8, !tbaa !5
  br label %if.end.19

if.end.19:                                        ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end.19
  br label %do.end

do.end:                                           ; preds = %do.cond
  %22 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 -1
  %23 = bitcast %struct.ref_s* %add.ptr20 to i8*
  %24 = bitcast %struct.ref_s* %token to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 16, i32 8, i1 false), !tbaa.struct !33
  %25 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 1
  %boolval = bitcast %union.v* %value to i16*
  store i16 1, i16* %boolval, align 2, !tbaa !32
  %26 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 256, i16* %type_attrs, align 2, !tbaa !20
  br label %sw.epilog.47

sw.bb.21:                                         ; preds = %again
  br label %do.body.22

do.body.22:                                       ; preds = %sw.bb.21
  %27 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i64 1
  store %struct.ref_s* %add.ptr23, %struct.ref_s** %op, align 8, !tbaa !1
  %28 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack24 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %28, i32 0, i32 26
  %stack25 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack24, i32 0, i32 0
  %top26 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack25, i32 0, i32 2
  %29 = load %struct.ref_s*, %struct.ref_s** %top26, align 8, !tbaa !30
  %cmp27 = icmp ugt %struct.ref_s* %add.ptr23, %29
  br i1 %cmp27, label %if.then.28, label %if.else.32

if.then.28:                                       ; preds = %do.body.22
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack29 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %30, i32 0, i32 26
  %stack30 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack29, i32 0, i32 0
  %requested31 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack30, i32 0, i32 7
  store i32 1, i32* %requested31, align 4, !tbaa !31
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.32:                                       ; preds = %do.body.22
  %31 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %32 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack33 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %32, i32 0, i32 26
  %stack34 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack33, i32 0, i32 0
  %p35 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack34, i32 0, i32 0
  store %struct.ref_s* %31, %struct.ref_s** %p35, align 8, !tbaa !5
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.32
  br label %do.cond.37

do.cond.37:                                       ; preds = %if.end.36
  br label %do.end.38

do.end.38:                                        ; preds = %do.cond.37
  %33 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i32 0, i32 1
  %boolval40 = bitcast %union.v* %value39 to i16*
  store i16 0, i16* %boolval40, align 2, !tbaa !32
  %34 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 0, i32 0
  %type_attrs42 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas41, i32 0, i32 0
  store i16 256, i16* %type_attrs42, align 2, !tbaa !20
  store i32 0, i32* %code, align 4, !tbaa !28
  br label %sw.epilog.47

sw.bb.43:                                         ; preds = %again
  %35 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %36 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %37 = load i32, i32* %save.addr, align 4, !tbaa !28
  %call44 = call i32 @gs_scan_handle_refill(%struct.gs_context_state_s* %35, %struct.scanner_state_s* %36, i32 %37, i32 (%struct.gs_context_state_s*)* @ztoken_continue) #4
  store i32 %call44, i32* %code, align 4, !tbaa !28
  %38 = load i32, i32* %code, align 4, !tbaa !28
  switch i32 %38, label %sw.epilog [
    i32 0, label %sw.bb.45
    i32 5, label %sw.bb.46
  ]

sw.bb.45:                                         ; preds = %sw.bb.43
  br label %again

sw.bb.46:                                         ; preds = %sw.bb.43
  %39 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %39, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.43
  br label %sw.epilog.47

sw.epilog.47:                                     ; preds = %sw.epilog, %do.end.38, %do.end, %if.end
  %40 = load i32, i32* %code, align 4, !tbaa !28
  %cmp48 = icmp sle i32 %40, 0
  br i1 %cmp48, label %land.lhs.true, label %if.end.52

land.lhs.true:                                    ; preds = %sw.epilog.47
  %41 = load i32, i32* %save.addr, align 4, !tbaa !28
  %tobool = icmp ne i32 %41, 0
  br i1 %tobool, label %if.end.52, label %if.then.49

if.then.49:                                       ; preds = %land.lhs.true
  %42 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %42, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %43 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !37
  %44 = bitcast %struct.gs_ref_memory_s* %43 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %44, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %45 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !38
  %46 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory50 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %46, i32 0, i32 1
  %current51 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory50, i32 0, i32 0
  %47 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current51, align 8, !tbaa !37
  %48 = bitcast %struct.gs_ref_memory_s* %47 to %struct.gs_memory_s*
  %49 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %50 = bitcast %struct.scanner_state_s* %49 to i8*
  call void %45(%struct.gs_memory_s* %48, i8* %50, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0)) #4
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.49, %land.lhs.true, %sw.epilog.47
  %51 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %51, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.52, %sw.bb.46, %if.then.28, %if.then.13
  %52 = bitcast %struct.ref_s* %token to i8*
  call void @llvm.lifetime.end(i64 16, i8* %52) #1
  %53 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = load i32, i32* %retval
  ret i32 %55
}

declare i32 @ref_stack_count(%struct.ref_stack_s*) #2

declare i32 @gs_scan_string_token_options(%struct.gs_context_state_s*, %struct.ref_s*, %struct.ref_s*, i32) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define i32 @ztokenexec(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %state = alloca %struct.scanner_state_s, align 8
  %cleanup.dest.slot = alloca i32
  %fcode = alloca i32, align 4
  %es_code_ = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.scanner_state_s* %state to i8*
  call void @llvm.lifetime.start(i64 1368, i8* %4) #1
  br label %do.body

do.body:                                          ; preds = %entry
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %6 = load i16, i16* %type_attrs, align 2, !tbaa !20
  %conv = zext i16 %6 to i32
  %and = and i32 %conv, 16160
  %cmp = icmp eq i32 %and, 800
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %8 = bitcast i16* %type_attrs3 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %conv4 = zext i8 %9 to i32
  %cmp5 = icmp eq i32 %conv4, 3
  br i1 %cmp5, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %10) #4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.51

if.end:                                           ; preds = %do.body
  br label %do.body.7

do.body.7:                                        ; preds = %if.end
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %pfile = bitcast %union.v* %value to %struct.stream_s**
  %12 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %12, %struct.stream_s** %s, align 8, !tbaa !1
  %13 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %13, i32 0, i32 19
  %14 = load i16, i16* %read_id, align 2, !tbaa !21
  %conv8 = zext i16 %14 to i32
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas9, i32 0, i32 2
  %16 = load i32, i32* %rsize, align 4, !tbaa !26
  %cmp10 = icmp ne i32 %conv8, %16
  br i1 %cmp10, label %if.then.12, label %if.end.29

if.then.12:                                       ; preds = %do.body.7
  %17 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id13 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %17, i32 0, i32 19
  %18 = load i16, i16* %read_id13, align 2, !tbaa !21
  %conv14 = zext i16 %18 to i32
  %cmp15 = icmp eq i32 %conv14, 0
  br i1 %cmp15, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.12
  %19 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %write_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %19, i32 0, i32 20
  %20 = load i16, i16* %write_id, align 2, !tbaa !27
  %conv17 = zext i16 %20 to i32
  %21 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 0
  %rsize19 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas18, i32 0, i32 2
  %22 = load i32, i32* %rsize19, align 4, !tbaa !26
  %cmp20 = icmp eq i32 %conv17, %22
  br i1 %cmp20, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %land.lhs.true
  %23 = bitcast i32* %fcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call23 = call i32 @file_switch_to_read(%struct.ref_s* %24) #4
  store i32 %call23, i32* %fcode, align 4, !tbaa !28
  %25 = load i32, i32* %fcode, align 4, !tbaa !28
  %cmp24 = icmp slt i32 %25, 0
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.then.22
  %26 = load i32, i32* %fcode, align 4, !tbaa !28
  store i32 %26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %if.then.22
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.27, %if.then.26
  %27 = bitcast i32* %fcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.51 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.28

if.else:                                          ; preds = %land.lhs.true, %if.then.12
  %28 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %invalid_file_stream = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %28, i32 0, i32 18
  %29 = load %struct.stream_s*, %struct.stream_s** %invalid_file_stream, align 8, !tbaa !29
  store %struct.stream_s* %29, %struct.stream_s** %s, align 8, !tbaa !1
  br label %if.end.28

if.end.28:                                        ; preds = %if.else, %cleanup.cont
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %do.body.7
  br label %do.cond

do.cond:                                          ; preds = %if.end.29
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.30

do.cond.30:                                       ; preds = %do.end
  br label %do.end.31

do.end.31:                                        ; preds = %do.cond.30
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %30, i32 0, i32 25
  %stack32 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p33 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack32, i32 0, i32 0
  %31 = load %struct.ref_s*, %struct.ref_s** %p33, align 8, !tbaa !41
  %32 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack34 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %32, i32 0, i32 25
  %stack35 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack34, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack35, i32 0, i32 2
  %33 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !42
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 -1
  %cmp36 = icmp ugt %struct.ref_s* %31, %add.ptr
  br i1 %cmp36, label %if.then.38, label %if.end.49

if.then.38:                                       ; preds = %do.end.31
  %34 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  %35 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack39 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %35, i32 0, i32 25
  %stack40 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack39, i32 0, i32 0
  %call41 = call i32 @ref_stack_extend(%struct.ref_stack_s* %stack40, i32 1) #4
  store i32 %call41, i32* %es_code_, align 4, !tbaa !28
  %36 = load i32, i32* %es_code_, align 4, !tbaa !28
  %cmp42 = icmp slt i32 %36, 0
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.then.38
  %37 = load i32, i32* %es_code_, align 4, !tbaa !28
  store i32 %37, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.46

if.end.45:                                        ; preds = %if.then.38
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.46

cleanup.46:                                       ; preds = %if.end.45, %if.then.44
  %38 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %cleanup.dest.47 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.47, label %cleanup.51 [
    i32 0, label %cleanup.cont.48
  ]

cleanup.cont.48:                                  ; preds = %cleanup.46
  br label %if.end.49

if.end.49:                                        ; preds = %cleanup.cont.48, %do.end.31
  %39 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  call void @gs_scanner_init_options(%struct.scanner_state_s* %state, %struct.ref_s* %39, i32 0) #4
  %40 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call50 = call i32 @tokenexec_continue(%struct.gs_context_state_s* %40, %struct.scanner_state_s* %state, i32 1) #4
  store i32 %call50, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.51

cleanup.51:                                       ; preds = %if.end.49, %cleanup.46, %cleanup, %cond.end
  %41 = bitcast %struct.scanner_state_s* %state to i8*
  call void @llvm.lifetime.end(i64 1368, i8* %41) #1
  %42 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = load i32, i32* %retval
  ret i32 %44
}

declare i32 @ref_stack_extend(%struct.ref_stack_s*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @tokenexec_continue(%struct.gs_context_state_s* %i_ctx_p, %struct.scanner_state_s* %pstate, i32 %save) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pstate.addr = alloca %struct.scanner_state_s*, align 8
  %save.addr = alloca i32, align 4
  %op = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %es_code_ = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.scanner_state_s* %pstate, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  store i32 %save, i32* %save.addr, align 4, !tbaa !28
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %2, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %3 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p, align 8, !tbaa !5
  br label %again

again:                                            ; preds = %sw.bb.51, %entry
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 25
  %stack1 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p2 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1, i32 0, i32 0
  %5 = load %struct.ref_s*, %struct.ref_s** %p2, align 8, !tbaa !41
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 25
  %stack4 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack3, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 2
  %7 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !42
  %add.ptr5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -1
  %cmp = icmp ugt %struct.ref_s* %5, %add.ptr5
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %again
  %8 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack6 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 25
  %stack7 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack6, i32 0, i32 0
  %call = call i32 @ref_stack_extend(%struct.ref_stack_s* %stack7, i32 1) #4
  store i32 %call, i32* %es_code_, align 4, !tbaa !28
  %10 = load i32, i32* %es_code_, align 4, !tbaa !28
  %cmp8 = icmp slt i32 %10, 0
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  %11 = load i32, i32* %es_code_, align 4, !tbaa !28
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.9
  %12 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.64 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.10

if.end.10:                                        ; preds = %cleanup.cont, %again
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack11 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 25
  %stack12 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack11, i32 0, i32 0
  %p13 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack12, i32 0, i32 0
  %15 = load %struct.ref_s*, %struct.ref_s** %p13, align 8, !tbaa !41
  %add.ptr14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 1
  %16 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %call15 = call i32 @gs_scan_token(%struct.gs_context_state_s* %13, %struct.ref_s* %add.ptr14, %struct.scanner_state_s* %16) #4
  store i32 %call15, i32* %code, align 4, !tbaa !28
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack16 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %17, i32 0, i32 26
  %stack17 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack16, i32 0, i32 0
  %p18 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack17, i32 0, i32 0
  %18 = load %struct.ref_s*, %struct.ref_s** %p18, align 8, !tbaa !5
  store %struct.ref_s* %18, %struct.ref_s** %op, align 8, !tbaa !1
  %19 = load i32, i32* %code, align 4, !tbaa !28
  switch i32 %19, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.44
    i32 2, label %sw.bb.48
    i32 3, label %sw.bb.49
    i32 4, label %sw.bb.53
    i32 5, label %sw.bb.53
  ]

sw.bb:                                            ; preds = %if.end.10
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack19 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %20, i32 0, i32 25
  %stack20 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack19, i32 0, i32 0
  %p21 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack20, i32 0, i32 0
  %21 = load %struct.ref_s*, %struct.ref_s** %p21, align 8, !tbaa !41
  %add.ptr22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr22, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %22 = load i16, i16* %type_attrs, align 2, !tbaa !20
  %conv = zext i16 %22 to i32
  %and = and i32 %conv, 15552
  %cmp23 = icmp eq i32 %and, 1216
  br i1 %cmp23, label %if.then.25, label %if.end.43

if.then.25:                                       ; preds = %sw.bb
  br label %do.body

do.body:                                          ; preds = %if.then.25
  %23 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i64 1
  store %struct.ref_s* %add.ptr26, %struct.ref_s** %op, align 8, !tbaa !1
  %24 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack27 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %24, i32 0, i32 26
  %stack28 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack27, i32 0, i32 0
  %top29 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack28, i32 0, i32 2
  %25 = load %struct.ref_s*, %struct.ref_s** %top29, align 8, !tbaa !30
  %cmp30 = icmp ugt %struct.ref_s* %add.ptr26, %25
  br i1 %cmp30, label %if.then.32, label %if.else

if.then.32:                                       ; preds = %do.body
  %26 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack33 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %26, i32 0, i32 26
  %stack34 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack33, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack34, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !31
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.64

if.else:                                          ; preds = %do.body
  %27 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %28 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack35 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %28, i32 0, i32 26
  %stack36 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack35, i32 0, i32 0
  %p37 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack36, i32 0, i32 0
  store %struct.ref_s* %27, %struct.ref_s** %p37, align 8, !tbaa !5
  br label %if.end.38

if.end.38:                                        ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end.38
  br label %do.end

do.end:                                           ; preds = %do.cond
  %29 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack39 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %30, i32 0, i32 25
  %stack40 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack39, i32 0, i32 0
  %p41 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack40, i32 0, i32 0
  %31 = load %struct.ref_s*, %struct.ref_s** %p41, align 8, !tbaa !41
  %add.ptr42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 1
  %32 = bitcast %struct.ref_s* %29 to i8*
  %33 = bitcast %struct.ref_s* %add.ptr42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 16, i32 8, i1 false), !tbaa.struct !33
  store i32 0, i32* %code, align 4, !tbaa !28
  br label %sw.epilog.60

if.end.43:                                        ; preds = %sw.bb
  br label %sw.bb.44

sw.bb.44:                                         ; preds = %if.end.10, %if.end.43
  %34 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack45 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %34, i32 0, i32 25
  %stack46 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack45, i32 0, i32 0
  %p47 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack46, i32 0, i32 0
  %35 = load %struct.ref_s*, %struct.ref_s** %p47, align 8, !tbaa !41
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p47, align 8, !tbaa !41
  store i32 5, i32* %code, align 4, !tbaa !28
  br label %sw.epilog.60

sw.bb.48:                                         ; preds = %if.end.10
  store i32 0, i32* %code, align 4, !tbaa !28
  br label %sw.epilog.60

sw.bb.49:                                         ; preds = %if.end.10
  %36 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %37 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %38 = load i32, i32* %save.addr, align 4, !tbaa !28
  %call50 = call i32 @gs_scan_handle_refill(%struct.gs_context_state_s* %36, %struct.scanner_state_s* %37, i32 %38, i32 (%struct.gs_context_state_s*)* @ztokenexec_continue) #4
  store i32 %call50, i32* %code, align 4, !tbaa !28
  %39 = load i32, i32* %code, align 4, !tbaa !28
  switch i32 %39, label %sw.epilog [
    i32 0, label %sw.bb.51
    i32 5, label %sw.bb.52
  ]

sw.bb.51:                                         ; preds = %sw.bb.49
  br label %again

sw.bb.52:                                         ; preds = %sw.bb.49
  %40 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %40, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.64

sw.epilog:                                        ; preds = %sw.bb.49
  br label %sw.epilog.60

sw.bb.53:                                         ; preds = %if.end.10, %if.end.10
  %41 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %42 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %43 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack54 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %43, i32 0, i32 25
  %stack55 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack54, i32 0, i32 0
  %p56 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack55, i32 0, i32 0
  %44 = load %struct.ref_s*, %struct.ref_s** %p56, align 8, !tbaa !41
  %add.ptr57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i64 1
  %45 = load i32, i32* %code, align 4, !tbaa !28
  %46 = load i32, i32* %save.addr, align 4, !tbaa !28
  %call58 = call i32 @ztoken_handle_comment(%struct.gs_context_state_s* %41, %struct.scanner_state_s* %42, %struct.ref_s* %add.ptr57, i32 %45, i32 %46, i32 1, i32 (%struct.gs_context_state_s*)* @ztokenexec_continue) #4
  store i32 %call58, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.64

sw.default:                                       ; preds = %if.end.10
  %47 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %48 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %49 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %error_object = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %49, i32 0, i32 10
  %call59 = call i32 @gs_scanner_error_object(%struct.gs_context_state_s* %47, %struct.scanner_state_s* %48, %struct.ref_s* %error_object) #4
  br label %sw.epilog.60

sw.epilog.60:                                     ; preds = %sw.default, %sw.epilog, %sw.bb.48, %sw.bb.44, %do.end
  %50 = load i32, i32* %save.addr, align 4, !tbaa !28
  %tobool = icmp ne i32 %50, 0
  br i1 %tobool, label %if.end.63, label %if.then.61

if.then.61:                                       ; preds = %sw.epilog.60
  %51 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %52 = bitcast %struct.scanner_state_s* %51 to %struct.scanner_state_dynamic_s*
  %mem = getelementptr inbounds %struct.scanner_state_dynamic_s, %struct.scanner_state_dynamic_s* %52, i32 0, i32 1
  %53 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !43
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %53, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %54 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !38
  %55 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %56 = bitcast %struct.scanner_state_s* %55 to %struct.scanner_state_dynamic_s*
  %mem62 = getelementptr inbounds %struct.scanner_state_dynamic_s, %struct.scanner_state_dynamic_s* %56, i32 0, i32 1
  %57 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem62, align 8, !tbaa !43
  %58 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate.addr, align 8, !tbaa !1
  %59 = bitcast %struct.scanner_state_s* %58 to i8*
  call void %54(%struct.gs_memory_s* %57, i8* %59, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0)) #4
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.61, %sw.epilog.60
  %60 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %60, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.64

cleanup.64:                                       ; preds = %if.end.63, %sw.bb.53, %sw.bb.52, %if.then.32, %cleanup
  %61 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  %63 = load i32, i32* %retval
  ret i32 %63
}

; Function Attrs: nounwind uwtable
define i32 @ztokenexec_continue(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %pstate = alloca %struct.scanner_state_s*, align 8
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
  %3 = bitcast %struct.scanner_state_s** %pstate to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %5 = load i16, i16* %type_attrs, align 2, !tbaa !20
  %conv = zext i16 %5 to i32
  %and = and i32 %conv, 15872
  %cmp = icmp eq i32 %and, 2048
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %7 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !37
  %8 = bitcast %struct.gs_ref_memory_s* %7 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 1
  %object_type = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 15
  %9 = load %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)** %object_type, align 8, !tbaa !48
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 1
  %current3 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory2, i32 0, i32 0
  %11 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current3, align 8, !tbaa !37
  %12 = bitcast %struct.gs_ref_memory_s* %11 to %struct.gs_memory_s*
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %14 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %15 = bitcast %struct.obj_header_s* %14 to i8*
  %call = call %struct.gs_memory_struct_type_s* %9(%struct.gs_memory_s* %12, i8* %15) #4
  %cmp4 = icmp eq %struct.gs_memory_struct_type_s* %call, @st_scanner_state_dynamic
  br i1 %cmp4, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call6 = call i32 @check_type_failed(%struct.ref_s* %16) #4
  store i32 %call6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 1
  %pstruct8 = bitcast %union.v* %value7 to %struct.obj_header_s**
  %18 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct8, align 8, !tbaa !1
  %19 = bitcast %struct.obj_header_s* %18 to %struct.scanner_state_s*
  store %struct.scanner_state_s* %19, %struct.scanner_state_s** %pstate, align 8, !tbaa !1
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %21 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate, align 8, !tbaa !1
  %call9 = call i32 @tokenexec_continue(%struct.gs_context_state_s* %20, %struct.scanner_state_s* %21, i32 0) #4
  store i32 %call9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %22 = bitcast %struct.scanner_state_s** %pstate to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define i32 @ztoken_handle_comment(%struct.gs_context_state_s* %i_ctx_p, %struct.scanner_state_s* %sstate, %struct.ref_s* %ptoken, i32 %scan_code, i32 %save, i32 %push_file, i32 (%struct.gs_context_state_s*)* %cont) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %sstate.addr = alloca %struct.scanner_state_s*, align 8
  %ptoken.addr = alloca %struct.ref_s*, align 8
  %scan_code.addr = alloca i32, align 4
  %save.addr = alloca i32, align 4
  %push_file.addr = alloca i32, align 4
  %cont.addr = alloca i32 (%struct.gs_context_state_s*)*, align 8
  %proc_name = alloca i8*, align 8
  %pstate = alloca %struct.scanner_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %ppcproc = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %es_code_ = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.scanner_state_s* %sstate, %struct.scanner_state_s** %sstate.addr, align 8, !tbaa !1
  store %struct.ref_s* %ptoken, %struct.ref_s** %ptoken.addr, align 8, !tbaa !1
  store i32 %scan_code, i32* %scan_code.addr, align 4, !tbaa !28
  store i32 %save, i32* %save.addr, align 4, !tbaa !28
  store i32 %push_file, i32* %push_file.addr, align 4, !tbaa !28
  store i32 (%struct.gs_context_state_s*)* %cont, i32 (%struct.gs_context_state_s*)** %cont.addr, align 8, !tbaa !1
  %0 = bitcast i8** %proc_name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.scanner_state_s** %pstate to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %struct.ref_s** %ppcproc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i32, i32* %scan_code.addr, align 4, !tbaa !28
  switch i32 %5, label %sw.default [
    i32 4, label %sw.bb
    i32 5, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8** %proc_name, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i8** %proc_name, align 8, !tbaa !1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.123

sw.epilog:                                        ; preds = %sw.bb.1, %sw.bb
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 2
  %7 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !30
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 26
  %stack3 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack2, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack3, i32 0, i32 0
  %9 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  %sub.ptr.lhs.cast = ptrtoint %struct.ref_s* %7 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.ref_s* %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  %cmp = icmp slt i64 %sub.ptr.div, 2
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %sw.epilog
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack4 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 26
  %stack5 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack4, i32 0, i32 0
  %call = call i32 @ref_stack_extend(%struct.ref_stack_s* %stack5, i32 2) #4
  store i32 %call, i32* %code, align 4, !tbaa !28
  %11 = load i32, i32* %code, align 4, !tbaa !28
  %cmp6 = icmp slt i32 %11, 0
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %12 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.123

if.end:                                           ; preds = %if.then
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %sw.epilog
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 25
  %stack9 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p10 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack9, i32 0, i32 0
  %14 = load %struct.ref_s*, %struct.ref_s** %p10, align 8, !tbaa !41
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack11 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 25
  %stack12 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack11, i32 0, i32 0
  %top13 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack12, i32 0, i32 2
  %16 = load %struct.ref_s*, %struct.ref_s** %top13, align 8, !tbaa !42
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -3
  %cmp14 = icmp ugt %struct.ref_s* %14, %add.ptr
  br i1 %cmp14, label %if.then.15, label %if.end.22

if.then.15:                                       ; preds = %if.end.8
  %17 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack16 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %18, i32 0, i32 25
  %stack17 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack16, i32 0, i32 0
  %call18 = call i32 @ref_stack_extend(%struct.ref_stack_s* %stack17, i32 3) #4
  store i32 %call18, i32* %es_code_, align 4, !tbaa !28
  %19 = load i32, i32* %es_code_, align 4, !tbaa !28
  %cmp19 = icmp slt i32 %19, 0
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.then.15
  %20 = load i32, i32* %es_code_, align 4, !tbaa !28
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.then.15
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.21, %if.then.20
  %21 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.123 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.22

if.end.22:                                        ; preds = %cleanup.cont, %if.end.8
  %22 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %22, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %23 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !37
  %24 = bitcast %struct.gs_ref_memory_s* %23 to %struct.gs_memory_s*
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %24, i32 0, i32 2
  %25 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !49
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %25, i32 0, i32 16
  %26 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !50
  %27 = load i8*, i8** %proc_name, align 8, !tbaa !1
  %28 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack23 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %28, i32 0, i32 25
  %stack24 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack23, i32 0, i32 0
  %p25 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack24, i32 0, i32 0
  %29 = load %struct.ref_s*, %struct.ref_s** %p25, align 8, !tbaa !41
  %add.ptr26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i64 3
  %call27 = call i32 @names_enter_string(%struct.name_table_s* %26, i8* %27, %struct.ref_s* %add.ptr26) #4
  store i32 %call27, i32* %code, align 4, !tbaa !28
  %30 = load i32, i32* %code, align 4, !tbaa !28
  %cmp28 = icmp slt i32 %30, 0
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.22
  %31 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.123

if.end.30:                                        ; preds = %if.end.22
  %32 = load i32, i32* %save.addr, align 4, !tbaa !28
  %tobool = icmp ne i32 %32, 0
  br i1 %tobool, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %if.end.30
  %33 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory32 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %33, i32 0, i32 1
  %current33 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory32, i32 0, i32 0
  %34 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current33, align 8, !tbaa !37
  %35 = bitcast %struct.gs_ref_memory_s* %34 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %35, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %36 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !52
  %37 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory34 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %37, i32 0, i32 1
  %current35 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory34, i32 0, i32 0
  %38 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current35, align 8, !tbaa !37
  %39 = bitcast %struct.gs_ref_memory_s* %38 to %struct.gs_memory_s*
  %call36 = call i8* %36(%struct.gs_memory_s* %39, %struct.gs_memory_struct_type_s* @st_scanner_state_dynamic, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0)) #4
  %40 = bitcast i8* %call36 to %struct.scanner_state_dynamic_s*
  %41 = bitcast %struct.scanner_state_dynamic_s* %40 to %struct.scanner_state_s*
  store %struct.scanner_state_s* %41, %struct.scanner_state_s** %pstate, align 8, !tbaa !1
  %42 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate, align 8, !tbaa !1
  %cmp37 = icmp eq %struct.scanner_state_s* %42, null
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.then.31
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.123

if.end.39:                                        ; preds = %if.then.31
  %43 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory40 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %43, i32 0, i32 1
  %current41 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory40, i32 0, i32 0
  %44 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current41, align 8, !tbaa !37
  %45 = bitcast %struct.gs_ref_memory_s* %44 to %struct.gs_memory_s*
  %46 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate, align 8, !tbaa !1
  %47 = bitcast %struct.scanner_state_s* %46 to %struct.scanner_state_dynamic_s*
  %mem = getelementptr inbounds %struct.scanner_state_dynamic_s, %struct.scanner_state_dynamic_s* %47, i32 0, i32 1
  store %struct.gs_memory_s* %45, %struct.gs_memory_s** %mem, align 8, !tbaa !43
  %48 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate, align 8, !tbaa !1
  %49 = load %struct.scanner_state_s*, %struct.scanner_state_s** %sstate.addr, align 8, !tbaa !1
  %50 = bitcast %struct.scanner_state_s* %48 to i8*
  %51 = bitcast %struct.scanner_state_s* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %50, i8* %51, i64 1368, i32 8, i1 false), !tbaa.struct !53
  br label %if.end.42

if.else:                                          ; preds = %if.end.30
  %52 = load %struct.scanner_state_s*, %struct.scanner_state_s** %sstate.addr, align 8, !tbaa !1
  store %struct.scanner_state_s* %52, %struct.scanner_state_s** %pstate, align 8, !tbaa !1
  br label %if.end.42

if.end.42:                                        ; preds = %if.else, %if.end.39
  %53 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate, align 8, !tbaa !1
  %s_pstack = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %53, i32 0, i32 1
  %54 = load i32, i32* %s_pstack, align 4, !tbaa !54
  %tobool43 = icmp ne i32 %54, 0
  br i1 %tobool43, label %if.end.48, label %if.then.44

if.then.44:                                       ; preds = %if.end.42
  %55 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack45 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %55, i32 0, i32 26
  %stack46 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack45, i32 0, i32 0
  %p47 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack46, i32 0, i32 0
  %56 = load %struct.ref_s*, %struct.ref_s** %p47, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %56, i64 2
  %57 = load %struct.ref_s*, %struct.ref_s** %ptoken.addr, align 8, !tbaa !1
  %58 = bitcast %struct.ref_s* %arrayidx to i8*
  %59 = bitcast %struct.ref_s* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* %59, i64 16, i32 8, i1 false), !tbaa.struct !33
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.44, %if.end.42
  %60 = load i32 (%struct.gs_context_state_s*)*, i32 (%struct.gs_context_state_s*)** %cont.addr, align 8, !tbaa !1
  %61 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack49 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %61, i32 0, i32 25
  %stack50 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack49, i32 0, i32 0
  %p51 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack50, i32 0, i32 0
  %62 = load %struct.ref_s*, %struct.ref_s** %p51, align 8, !tbaa !41
  %add.ptr52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i64 1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr52, i32 0, i32 1
  %opproc = bitcast %union.v* %value to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* %60, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %63 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack53 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %63, i32 0, i32 25
  %stack54 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack53, i32 0, i32 0
  %p55 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack54, i32 0, i32 0
  %64 = load %struct.ref_s*, %struct.ref_s** %p55, align 8, !tbaa !41
  %add.ptr56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %64, i64 1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr56, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 3968, i16* %type_attrs, align 2, !tbaa !20
  %65 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack57 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %65, i32 0, i32 25
  %stack58 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack57, i32 0, i32 0
  %p59 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack58, i32 0, i32 0
  %66 = load %struct.ref_s*, %struct.ref_s** %p59, align 8, !tbaa !41
  %add.ptr60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %66, i64 1
  %tas61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr60, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas61, i32 0, i32 2
  store i32 0, i32* %rsize, align 4, !tbaa !26
  %67 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate, align 8, !tbaa !1
  %68 = bitcast %struct.scanner_state_s* %67 to %struct.obj_header_s*
  %69 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack62 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %69, i32 0, i32 25
  %stack63 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack62, i32 0, i32 0
  %p64 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack63, i32 0, i32 0
  %70 = load %struct.ref_s*, %struct.ref_s** %p64, align 8, !tbaa !41
  %add.ptr65 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %70, i64 2
  %value66 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr65, i32 0, i32 1
  %pstruct = bitcast %union.v* %value66 to %struct.obj_header_s**
  store %struct.obj_header_s* %68, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %71 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory67 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %71, i32 0, i32 1
  %current_space = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory67, i32 0, i32 2
  %72 = load i32, i32* %current_space, align 4, !tbaa !55
  %or = or i32 0, %72
  %add = add i32 2048, %or
  %conv = trunc i32 %add to i16
  %73 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack68 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %73, i32 0, i32 25
  %stack69 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack68, i32 0, i32 0
  %p70 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack69, i32 0, i32 0
  %74 = load %struct.ref_s*, %struct.ref_s** %p70, align 8, !tbaa !41
  %add.ptr71 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %74, i64 2
  %tas72 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr71, i32 0, i32 0
  %type_attrs73 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas72, i32 0, i32 0
  store i16 %conv, i16* %type_attrs73, align 2, !tbaa !20
  %75 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %75, i32 0, i32 24
  %76 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory74 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %76, i32 0, i32 1
  %current75 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory74, i32 0, i32 0
  %77 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current75, align 8, !tbaa !37
  %78 = bitcast %struct.gs_ref_memory_s* %77 to %struct.gs_memory_s*
  %gs_lib_ctx76 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %78, i32 0, i32 2
  %79 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx76, align 8, !tbaa !49
  %gs_name_table77 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %79, i32 0, i32 16
  %80 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table77, align 8, !tbaa !50
  %81 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack78 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %81, i32 0, i32 25
  %stack79 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack78, i32 0, i32 0
  %p80 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack79, i32 0, i32 0
  %82 = load %struct.ref_s*, %struct.ref_s** %p80, align 8, !tbaa !41
  %add.ptr81 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %82, i64 3
  %call82 = call i32 @names_index(%struct.name_table_s* %80, %struct.ref_s* %add.ptr81) #4
  %call83 = call %struct.ref_s* @dstack_find_name_by_index(%struct.dict_stack_s* %dict_stack, i32 %call82) #4
  store %struct.ref_s* %call83, %struct.ref_s** %ppcproc, align 8, !tbaa !1
  %83 = load %struct.ref_s*, %struct.ref_s** %ppcproc, align 8, !tbaa !1
  %cmp84 = icmp eq %struct.ref_s* %83, null
  br i1 %cmp84, label %if.then.86, label %if.else.98

if.then.86:                                       ; preds = %if.end.48
  %84 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate, align 8, !tbaa !1
  %s_pstack87 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %84, i32 0, i32 1
  %85 = load i32, i32* %s_pstack87, align 4, !tbaa !54
  %tobool88 = icmp ne i32 %85, 0
  br i1 %tobool88, label %if.then.89, label %if.end.93

if.then.89:                                       ; preds = %if.then.86
  %86 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack90 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %86, i32 0, i32 26
  %stack91 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack90, i32 0, i32 0
  %p92 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack91, i32 0, i32 0
  %87 = load %struct.ref_s*, %struct.ref_s** %p92, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %87, i32 -1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p92, align 8, !tbaa !5
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.89, %if.then.86
  %88 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack94 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %88, i32 0, i32 25
  %stack95 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack94, i32 0, i32 0
  %p96 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack95, i32 0, i32 0
  %89 = load %struct.ref_s*, %struct.ref_s** %p96, align 8, !tbaa !41
  %add.ptr97 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %89, i64 2
  store %struct.ref_s* %add.ptr97, %struct.ref_s** %p96, align 8, !tbaa !41
  br label %if.end.122

if.else.98:                                       ; preds = %if.end.48
  %90 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate, align 8, !tbaa !1
  %s_pstack99 = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %90, i32 0, i32 1
  %91 = load i32, i32* %s_pstack99, align 4, !tbaa !54
  %tobool100 = icmp ne i32 %91, 0
  br i1 %tobool100, label %if.then.101, label %if.else.107

if.then.101:                                      ; preds = %if.else.98
  %92 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack102 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %92, i32 0, i32 26
  %stack103 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack102, i32 0, i32 0
  %p104 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack103, i32 0, i32 0
  %93 = load %struct.ref_s*, %struct.ref_s** %p104, align 8, !tbaa !5
  %incdec.ptr105 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %93, i32 1
  store %struct.ref_s* %incdec.ptr105, %struct.ref_s** %p104, align 8, !tbaa !5
  store %struct.ref_s* %incdec.ptr105, %struct.ref_s** %op, align 8, !tbaa !1
  %94 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %95 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx106 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %95, i64 -1
  %96 = bitcast %struct.ref_s* %94 to i8*
  %97 = bitcast %struct.ref_s* %arrayidx106 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %96, i8* %97, i64 16, i32 8, i1 false), !tbaa.struct !33
  br label %if.end.112

if.else.107:                                      ; preds = %if.else.98
  %98 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack108 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %98, i32 0, i32 26
  %stack109 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack108, i32 0, i32 0
  %p110 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack109, i32 0, i32 0
  %99 = load %struct.ref_s*, %struct.ref_s** %p110, align 8, !tbaa !5
  %add.ptr111 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %99, i64 2
  store %struct.ref_s* %add.ptr111, %struct.ref_s** %p110, align 8, !tbaa !5
  store %struct.ref_s* %add.ptr111, %struct.ref_s** %op, align 8, !tbaa !1
  br label %if.end.112

if.end.112:                                       ; preds = %if.else.107, %if.then.101
  %100 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx113 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %100, i64 -1
  %101 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate, align 8, !tbaa !1
  %s_file = getelementptr inbounds %struct.scanner_state_s, %struct.scanner_state_s* %101, i32 0, i32 0
  %102 = bitcast %struct.ref_s* %arrayidx113 to i8*
  %103 = bitcast %struct.ref_s* %s_file to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %102, i8* %103, i64 16, i32 8, i1 false), !tbaa.struct !33
  %104 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack114 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %104, i32 0, i32 25
  %stack115 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack114, i32 0, i32 0
  %p116 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack115, i32 0, i32 0
  %105 = load %struct.ref_s*, %struct.ref_s** %p116, align 8, !tbaa !41
  %arrayidx117 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %105, i64 3
  %106 = load %struct.ref_s*, %struct.ref_s** %ppcproc, align 8, !tbaa !1
  %107 = bitcast %struct.ref_s* %arrayidx117 to i8*
  %108 = bitcast %struct.ref_s* %106 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %107, i8* %108, i64 16, i32 8, i1 false), !tbaa.struct !33
  %109 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack118 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %109, i32 0, i32 25
  %stack119 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack118, i32 0, i32 0
  %p120 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack119, i32 0, i32 0
  %110 = load %struct.ref_s*, %struct.ref_s** %p120, align 8, !tbaa !41
  %add.ptr121 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %110, i64 3
  store %struct.ref_s* %add.ptr121, %struct.ref_s** %p120, align 8, !tbaa !41
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.112, %if.end.93
  store i32 5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.123

cleanup.123:                                      ; preds = %if.end.122, %if.then.38, %if.then.29, %cleanup, %if.then.7, %sw.default
  %111 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #1
  %112 = bitcast %struct.ref_s** %ppcproc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %112) #1
  %113 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #1
  %114 = bitcast %struct.scanner_state_s** %pstate to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #1
  %115 = bitcast i8** %proc_name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #1
  %116 = load i32, i32* %retval
  ret i32 %116
}

declare i32 @names_enter_string(%struct.name_table_s*, i8*, %struct.ref_s*) #2

declare %struct.ref_s* @dstack_find_name_by_index(%struct.dict_stack_s*, i32) #2

declare i32 @names_index(%struct.name_table_s*, %struct.ref_s*) #2

; Function Attrs: nounwind uwtable
define i32 @ztoken_scanner_options(%struct.ref_s* %upref, i32 %old_options) #0 {
entry:
  %upref.addr = alloca %struct.ref_s*, align 8
  %old_options.addr = alloca i32, align 4
  %options = alloca i32, align 4
  %i = alloca i32, align 4
  %pnso = alloca %struct.named_scanner_option_s*, align 8
  %ppcproc = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  store %struct.ref_s* %upref, %struct.ref_s** %upref.addr, align 8, !tbaa !1
  store i32 %old_options, i32* %old_options.addr, align 4, !tbaa !28
  %0 = bitcast i32* %options to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %old_options.addr, align 4, !tbaa !28
  store i32 %1, i32* %options, align 4, !tbaa !28
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %i, align 4, !tbaa !28
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !tbaa !28
  %conv = sext i32 %3 to i64
  %cmp = icmp ult i64 %conv, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = bitcast %struct.named_scanner_option_s** %pnso to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [5 x %struct.named_scanner_option_s], [5 x %struct.named_scanner_option_s]* @named_options, i32 0, i64 %idxprom
  store %struct.named_scanner_option_s* %arrayidx, %struct.named_scanner_option_s** %pnso, align 8, !tbaa !1
  %6 = bitcast %struct.ref_s** %ppcproc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.ref_s*, %struct.ref_s** %upref.addr, align 8, !tbaa !1
  %9 = load %struct.named_scanner_option_s*, %struct.named_scanner_option_s** %pnso, align 8, !tbaa !1
  %pname = getelementptr inbounds %struct.named_scanner_option_s, %struct.named_scanner_option_s* %9, i32 0, i32 0
  %10 = load i8*, i8** %pname, align 8, !tbaa !56
  %call = call i32 @dict_find_string(%struct.ref_s* %8, i8* %10, %struct.ref_s** %ppcproc) #4
  store i32 %call, i32* %code, align 4, !tbaa !28
  %11 = load i32, i32* %code, align 4, !tbaa !28
  %cmp2 = icmp sge i32 %11, 0
  br i1 %cmp2, label %if.then, label %if.end.10

if.then:                                          ; preds = %for.body
  %12 = load %struct.ref_s*, %struct.ref_s** %ppcproc, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %13 = bitcast i16* %type_attrs to i8*
  %arrayidx4 = getelementptr inbounds i8, i8* %13, i64 1
  %14 = load i8, i8* %arrayidx4, align 1, !tbaa !19
  %conv5 = zext i8 %14 to i32
  %cmp6 = icmp eq i32 %conv5, 14
  br i1 %cmp6, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then
  %15 = load %struct.named_scanner_option_s*, %struct.named_scanner_option_s** %pnso, align 8, !tbaa !1
  %option = getelementptr inbounds %struct.named_scanner_option_s, %struct.named_scanner_option_s* %15, i32 0, i32 1
  %16 = load i32, i32* %option, align 4, !tbaa !58
  %neg = xor i32 %16, -1
  %17 = load i32, i32* %options, align 4, !tbaa !28
  %and = and i32 %17, %neg
  store i32 %and, i32* %options, align 4, !tbaa !28
  br label %if.end

if.else:                                          ; preds = %if.then
  %18 = load %struct.named_scanner_option_s*, %struct.named_scanner_option_s** %pnso, align 8, !tbaa !1
  %option9 = getelementptr inbounds %struct.named_scanner_option_s, %struct.named_scanner_option_s* %18, i32 0, i32 1
  %19 = load i32, i32* %option9, align 4, !tbaa !58
  %20 = load i32, i32* %options, align 4, !tbaa !28
  %or = or i32 %20, %19
  store i32 %or, i32* %options, align 4, !tbaa !28
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.8
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %for.body
  %21 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast %struct.ref_s** %ppcproc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = bitcast %struct.named_scanner_option_s** %pnso to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end.10
  %24 = load i32, i32* %i, align 4, !tbaa !28
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4, !tbaa !28
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load i32, i32* %options, align 4, !tbaa !28
  %26 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast i32* %options to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  ret i32 %25
}

declare i32 @dict_find_string(%struct.ref_s*, i8*, %struct.ref_s**) #2

; Function Attrs: nounwind uwtable
define i32 @ztoken_get_scanner_option(%struct.ref_s* %psref, i32 %options, i8** %pname) #0 {
entry:
  %retval = alloca i32, align 4
  %psref.addr = alloca %struct.ref_s*, align 8
  %options.addr = alloca i32, align 4
  %pname.addr = alloca i8**, align 8
  %pnso = alloca %struct.named_scanner_option_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.ref_s* %psref, %struct.ref_s** %psref.addr, align 8, !tbaa !1
  store i32 %options, i32* %options.addr, align 4, !tbaa !28
  store i8** %pname, i8*** %pname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.named_scanner_option_s** %pnso to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store %struct.named_scanner_option_s* getelementptr inbounds (%struct.named_scanner_option_s, %struct.named_scanner_option_s* getelementptr inbounds ([5 x %struct.named_scanner_option_s], [5 x %struct.named_scanner_option_s]* @named_options, i32 0, i32 0), i64 5), %struct.named_scanner_option_s** %pnso, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %1 = load %struct.named_scanner_option_s*, %struct.named_scanner_option_s** %pnso, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.named_scanner_option_s, %struct.named_scanner_option_s* %1, i32 -1
  store %struct.named_scanner_option_s* %incdec.ptr, %struct.named_scanner_option_s** %pnso, align 8, !tbaa !1
  %cmp = icmp ne %struct.named_scanner_option_s* %1, getelementptr inbounds ([5 x %struct.named_scanner_option_s], [5 x %struct.named_scanner_option_s]* @named_options, i32 0, i32 0)
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.named_scanner_option_s*, %struct.named_scanner_option_s** %pnso, align 8, !tbaa !1
  %pname1 = getelementptr inbounds %struct.named_scanner_option_s, %struct.named_scanner_option_s* %2, i32 0, i32 0
  %3 = load i8*, i8** %pname1, align 8, !tbaa !56
  %4 = load %struct.named_scanner_option_s*, %struct.named_scanner_option_s** %pnso, align 8, !tbaa !1
  %pname2 = getelementptr inbounds %struct.named_scanner_option_s, %struct.named_scanner_option_s* %4, i32 0, i32 0
  %5 = load i8*, i8** %pname2, align 8, !tbaa !56
  %call = call i64 @strlen(i8* %5) #5
  %conv = trunc i64 %call to i32
  %6 = load %struct.ref_s*, %struct.ref_s** %psref.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value to i8**
  %7 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  %8 = load %struct.ref_s*, %struct.ref_s** %psref.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %9 = load i32, i32* %rsize, align 4, !tbaa !26
  %call3 = call i32 @bytes_compare(i8* %3, i32 %conv, i8* %7, i32 %9) #4
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %10 = load %struct.named_scanner_option_s*, %struct.named_scanner_option_s** %pnso, align 8, !tbaa !1
  %pname4 = getelementptr inbounds %struct.named_scanner_option_s, %struct.named_scanner_option_s* %10, i32 0, i32 0
  %11 = load i8*, i8** %pname4, align 8, !tbaa !56
  %12 = load i8**, i8*** %pname.addr, align 8, !tbaa !1
  store i8* %11, i8** %12, align 8, !tbaa !1
  %13 = load i32, i32* %options.addr, align 4, !tbaa !28
  %14 = load %struct.named_scanner_option_s*, %struct.named_scanner_option_s** %pnso, align 8, !tbaa !1
  %option = getelementptr inbounds %struct.named_scanner_option_s, %struct.named_scanner_option_s* %14, i32 0, i32 1
  %15 = load i32, i32* %option, align 4, !tbaa !58
  %and = and i32 %13, %15
  %tobool5 = icmp ne i32 %and, 0
  %cond = select i1 %tobool5, i32 1, i32 0
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %16 = bitcast %struct.named_scanner_option_s** %pnso to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare i32 @bytes_compare(i8*, i32, i8*, i32) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @ztoken_continue(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %pstate = alloca %struct.scanner_state_s*, align 8
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
  %3 = bitcast %struct.scanner_state_s** %pstate to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %5 = load i16, i16* %type_attrs, align 2, !tbaa !20
  %conv = zext i16 %5 to i32
  %and = and i32 %conv, 15872
  %cmp = icmp eq i32 %and, 2048
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %7 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !37
  %8 = bitcast %struct.gs_ref_memory_s* %7 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 1
  %object_type = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 15
  %9 = load %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)** %object_type, align 8, !tbaa !48
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 1
  %current3 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory2, i32 0, i32 0
  %11 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current3, align 8, !tbaa !37
  %12 = bitcast %struct.gs_ref_memory_s* %11 to %struct.gs_memory_s*
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %14 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %15 = bitcast %struct.obj_header_s* %14 to i8*
  %call = call %struct.gs_memory_struct_type_s* %9(%struct.gs_memory_s* %12, i8* %15) #4
  %cmp4 = icmp eq %struct.gs_memory_struct_type_s* %call, @st_scanner_state_dynamic
  br i1 %cmp4, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call6 = call i32 @check_type_failed(%struct.ref_s* %16) #4
  store i32 %call6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 1
  %pstruct8 = bitcast %union.v* %value7 to %struct.obj_header_s**
  %18 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct8, align 8, !tbaa !1
  %19 = bitcast %struct.obj_header_s* %18 to %struct.scanner_state_s*
  store %struct.scanner_state_s* %19, %struct.scanner_state_s** %pstate, align 8, !tbaa !1
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %21 = load %struct.scanner_state_s*, %struct.scanner_state_s** %pstate, align 8, !tbaa !1
  %call9 = call i32 @token_continue(%struct.gs_context_state_s* %20, %struct.scanner_state_s* %21, i32 0) #4
  store i32 %call9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %22 = bitcast %struct.scanner_state_s** %pstate to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = load i32, i32* %retval
  ret i32 %24
}

declare i32 @gs_scan_token(%struct.gs_context_state_s*, %struct.ref_s*, %struct.scanner_state_s*) #2

declare i32 @gs_scanner_error_object(%struct.gs_context_state_s*, %struct.scanner_state_s*, %struct.ref_s*) #2

declare i32 @gs_scan_handle_refill(%struct.gs_context_state_s*, %struct.scanner_state_s*, i32, i32 (%struct.gs_context_state_s*)*) #2

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
!19 = !{!3, !3, i64 0}
!20 = !{!10, !12, i64 0}
!21 = !{!22, !12, i64 264}
!22 = !{!"stream_s", !2, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !3, i64 28, !3, i64 112, !2, i64 136, !9, i64 144, !9, i64 148, !12, i64 152, !3, i64 154, !3, i64 155, !23, i64 160, !13, i64 176, !24, i64 184, !2, i64 240, !9, i64 248, !9, i64 252, !2, i64 256, !12, i64 264, !12, i64 266, !2, i64 272, !2, i64 280, !9, i64 288, !9, i64 292, !2, i64 296, !2, i64 304, !25, i64 312, !9, i64 328, !13, i64 336, !13, i64 344}
!23 = !{!"gs_string_s", !2, i64 0, !9, i64 8}
!24 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!25 = !{!"gs_const_string_s", !2, i64 0, !9, i64 8}
!26 = !{!10, !9, i64 4}
!27 = !{!22, !12, i64 266}
!28 = !{!9, !9, i64 0}
!29 = !{!6, !2, i64 256}
!30 = !{!6, !2, i64 640}
!31 = !{!6, !9, i64 688}
!32 = !{!12, !12, i64 0}
!33 = !{i64 0, i64 2, !32, i64 2, i64 2, !32, i64 4, i64 4, !28, i64 8, i64 8, !34, i64 8, i64 2, !32, i64 8, i64 4, !35, i64 8, i64 8, !34, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !34}
!34 = !{!13, !13, i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"float", !3, i64 0}
!37 = !{!6, !2, i64 8}
!38 = !{!39, !2, i64 24}
!39 = !{!"gs_memory_s", !2, i64 0, !40, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!40 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!41 = !{!6, !2, i64 520}
!42 = !{!6, !2, i64 536}
!43 = !{!44, !2, i64 1368}
!44 = !{!"scanner_state_dynamic_s", !45, i64 0, !2, i64 1368}
!45 = !{!"scanner_state_s", !10, i64 0, !9, i64 16, !9, i64 20, !9, i64 24, !3, i64 28, !46, i64 32, !3, i64 1096, !47, i64 1224}
!46 = !{!"dynamic_area_s", !2, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !3, i64 28, !2, i64 1056}
!47 = !{!"se_", !10, i64 0, !9, i64 16, !3, i64 20}
!48 = !{!39, !2, i64 128}
!49 = !{!39, !2, i64 192}
!50 = !{!51, !2, i64 120}
!51 = !{!"gs_lib_ctx_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !9, i64 40, !9, i64 44, !9, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !13, i64 104, !2, i64 112, !2, i64 120, !9, i64 128, !2, i64 136, !9, i64 144, !9, i64 148, !3, i64 152, !2, i64 168, !9, i64 176, !2, i64 184, !9, i64 192, !2, i64 200, !2, i64 208}
!52 = !{!39, !2, i64 72}
!53 = !{i64 0, i64 2, !32, i64 2, i64 2, !32, i64 4, i64 4, !28, i64 8, i64 8, !34, i64 8, i64 2, !32, i64 8, i64 4, !35, i64 8, i64 8, !34, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !34, i64 16, i64 4, !28, i64 20, i64 4, !28, i64 24, i64 4, !28, i64 28, i64 4, !19, i64 32, i64 8, !1, i64 40, i64 8, !1, i64 48, i64 8, !1, i64 56, i64 4, !28, i64 60, i64 1023, !19, i64 1088, i64 8, !1, i64 1096, i64 4, !28, i64 1104, i64 8, !1, i64 1112, i64 2, !32, i64 1114, i64 2, !32, i64 1116, i64 4, !28, i64 1120, i64 8, !34, i64 1120, i64 2, !32, i64 1120, i64 4, !35, i64 1120, i64 8, !34, i64 1120, i64 8, !1, i64 1120, i64 8, !1, i64 1120, i64 8, !1, i64 1120, i64 8, !1, i64 1120, i64 8, !1, i64 1120, i64 8, !1, i64 1120, i64 8, !1, i64 1120, i64 8, !1, i64 1120, i64 8, !1, i64 1120, i64 8, !1, i64 1120, i64 8, !1, i64 1120, i64 8, !1, i64 1120, i64 8, !1, i64 1120, i64 8, !1, i64 1120, i64 8, !34, i64 1128, i64 4, !28, i64 1132, i64 4, !28, i64 1136, i64 4, !28, i64 1140, i64 4, !28, i64 1144, i64 4, !28, i64 1148, i64 4, !28, i64 1152, i64 8, !34, i64 1096, i64 4, !28, i64 1100, i64 4, !28, i64 1096, i64 8, !1, i64 1104, i64 8, !1, i64 1112, i64 8, !1, i64 1120, i64 4, !28, i64 1124, i64 80, !19, i64 1096, i64 8, !1, i64 1104, i64 8, !1, i64 1112, i64 8, !1, i64 1120, i64 4, !28, i64 1124, i64 80, !19, i64 1204, i64 4, !28, i64 1208, i64 8, !34, i64 1216, i64 4, !28, i64 1220, i64 4, !28, i64 1096, i64 8, !1, i64 1104, i64 8, !1, i64 1112, i64 8, !1, i64 1120, i64 4, !28, i64 1124, i64 80, !19, i64 1204, i64 4, !28, i64 1096, i64 8, !1, i64 1104, i64 8, !1, i64 1112, i64 8, !1, i64 1120, i64 4, !28, i64 1124, i64 80, !19, i64 1204, i64 4, !28, i64 1208, i64 4, !28, i64 1224, i64 2, !32, i64 1226, i64 2, !32, i64 1228, i64 4, !28, i64 1232, i64 8, !34, i64 1232, i64 2, !32, i64 1232, i64 4, !35, i64 1232, i64 8, !34, i64 1232, i64 8, !1, i64 1232, i64 8, !1, i64 1232, i64 8, !1, i64 1232, i64 8, !1, i64 1232, i64 8, !1, i64 1232, i64 8, !1, i64 1232, i64 8, !1, i64 1232, i64 8, !1, i64 1232, i64 8, !1, i64 1232, i64 8, !1, i64 1232, i64 8, !1, i64 1232, i64 8, !1, i64 1232, i64 8, !1, i64 1232, i64 8, !1, i64 1232, i64 8, !34, i64 1240, i64 4, !28, i64 1244, i64 121, !19}
!54 = !{!45, !9, i64 16}
!55 = !{!7, !9, i64 48}
!56 = !{!57, !2, i64 0}
!57 = !{!"named_scanner_option_s", !2, i64 0, !9, i64 8}
!58 = !{!57, !9, i64 8}
