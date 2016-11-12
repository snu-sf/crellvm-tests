; ModuleID = './zcfont.bc'
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
%struct.gs_text_enum_s = type { %struct.gs_text_params_s, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_procs_s*, %struct.rc_header_s, i8*, %struct.gs_font_s*, i64, i32, %struct.gs_log2_scale_point_s, %struct.cached_fm_pair_s*, i32, i32, %struct.gx_font_stack_s, i32, i32, i32, %struct.gs_point_s, i64, i32, %struct.gs_log2_scale_point_s, %struct.gs_point_s, %struct.gs_text_returned_s }
%struct.gs_text_params_s = type { i32, %union.sd_, i32, %struct.gs_point_s, %struct.gs_point_s, %union.s_, float*, float*, i32 }
%union.sd_ = type { i8* }
%union.s_ = type { i64 }
%struct.gx_device_s = type opaque
%struct.gs_imager_state_s = type opaque
%struct.gx_path_s = type opaque
%struct.gx_device_color_s = type opaque
%struct.gx_clip_path_s = type opaque
%struct.gs_text_enum_procs_s = type { i32 (%struct.gs_text_enum_s*, %struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_point_s*)*, i32 (%struct.gs_text_enum_s*, double*, i32)*, i32 (%struct.gs_text_enum_s*)*, void (%struct.gs_text_enum_s*, i8*)* }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.gs_font_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s }
%struct.gs_notify_list_s = type { %struct.gs_memory_s*, %struct.gs_notify_registration_s* }
%struct.gs_notify_registration_s = type { i32 (i8*, i8*)*, i8*, %struct.gs_notify_registration_s* }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_font_procs_s = type { i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*)*, i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*, %struct.gs_matrix_s*, %struct.gs_font_s**)*, i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)*, i32 (%struct.gs_font_s*, %struct.gs_font_s*, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i32 (%struct.gs_font_s*, i32*, i32, i64*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_font_s*)*, i32 (%struct.gs_text_enum_s*, i64*, i64*)*, i32 (%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i64, i64)* }
%struct.gs_font_info_s = type { i32, i32, i32, %struct.gs_int_rect_s, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gs_glyph_info_s = type { i32, [2 x %struct.gs_point_s], %struct.gs_point_s, %struct.gs_rect_s, i32, i64* }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_show_enum_s = type opaque
%struct.gs_font_name_s = type { [48 x i8], i32 }
%struct.cached_fm_pair_s = type opaque
%struct.gx_font_stack_s = type { i32, [6 x %struct.gx_font_stack_item_s] }
%struct.gx_font_stack_item_s = type { %struct.gs_font_s*, i32 }
%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.gs_point_s = type { double, double }
%struct.gs_text_returned_s = type { i64, i64, %struct.gs_point_s }
%struct.font_data_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %union._fs }
%union._fs = type { %struct._f42 }
%struct._f42 = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, i32, i64 }
%struct.obj_header_s = type opaque

@.str = private unnamed_addr constant [7 x i8] c"2cshow\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"0rootfont\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"0%cshow_continue\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"0%cshow_restore_font\00", align 1
@zcfont_op_defs = constant [5 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zcshow }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zrootfont }, %struct.op_def { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @cshow_continue }, %struct.op_def { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @cshow_restore_font }, %struct.op_def zeroinitializer], align 16
@.str.4 = private unnamed_addr constant [19 x i8] c"op_show_enum_setup\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @zcshow(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %proc_op = alloca %struct.ref_s*, align 8
  %str_op = alloca %struct.ref_s*, align 8
  %penum = alloca %struct.gs_text_enum_s*, align 8
  %code = alloca i32, align 4
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
  %3 = bitcast %struct.ref_s** %proc_op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %proc_op, align 8, !tbaa !1
  %5 = bitcast %struct.ref_s** %str_op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  store %struct.ref_s* %6, %struct.ref_s** %str_op, align 8, !tbaa !1
  %7 = bitcast %struct.gs_text_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.ref_s*, %struct.ref_s** %proc_op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %10 = load i16, i16* %type_attrs, align 2, !tbaa !19
  %conv = zext i16 %10 to i32
  %and = and i32 %conv, 15552
  %cmp = icmp eq i32 %and, 1216
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end.18

if.else:                                          ; preds = %entry
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %12 = load i16, i16* %type_attrs3, align 2, !tbaa !19
  %conv4 = zext i16 %12 to i32
  %and5 = and i32 %conv4, 15552
  %cmp6 = icmp eq i32 %and5, 1216
  br i1 %cmp6, label %if.then.8, label %if.else.10

if.then.8:                                        ; preds = %if.else
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  store %struct.ref_s* %13, %struct.ref_s** %proc_op, align 8, !tbaa !1
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 -1
  store %struct.ref_s* %add.ptr9, %struct.ref_s** %str_op, align 8, !tbaa !1
  br label %if.end.17

if.else.10:                                       ; preds = %if.else
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack11 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 26
  %stack12 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack11, i32 0, i32 0
  %bot = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack12, i32 0, i32 1
  %17 = load %struct.ref_s*, %struct.ref_s** %bot, align 8, !tbaa !20
  %add.ptr13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 1
  %cmp14 = icmp ult %struct.ref_s* %15, %add.ptr13
  br i1 %cmp14, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %if.else.10
  store i32 -17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.else.10
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.then.8
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %19 = load %struct.ref_s*, %struct.ref_s** %str_op, align 8, !tbaa !1
  %call = call i32 @op_show_setup(%struct.gs_context_state_s* %18, %struct.ref_s* %19) #3
  store i32 %call, i32* %code, align 4, !tbaa !21
  %cmp19 = icmp ne i32 %call, 0
  br i1 %cmp19, label %if.then.25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.18
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %20, i32 0, i32 0
  %21 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !22
  %22 = load %struct.ref_s*, %struct.ref_s** %str_op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 1
  %bytes = bitcast %union.v* %value to i8**
  %23 = load i8*, i8** %bytes, align 8, !tbaa !1
  %24 = load %struct.ref_s*, %struct.ref_s** %str_op, align 8, !tbaa !1
  %tas21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas21, i32 0, i32 2
  %25 = load i32, i32* %rsize, align 4, !tbaa !23
  %26 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %26, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %27 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !24
  %28 = bitcast %struct.gs_ref_memory_s* %27 to %struct.gs_memory_s*
  %call22 = call i32 @gs_cshow_begin(%struct.gs_state_s* %21, i8* %23, i32 %25, %struct.gs_memory_s* %28, %struct.gs_text_enum_s** %penum) #3
  store i32 %call22, i32* %code, align 4, !tbaa !21
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %lor.lhs.false, %if.end.18
  %29 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %lor.lhs.false
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %31 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %call27 = call i32 @op_show_finish_setup(%struct.gs_context_state_s* %30, %struct.gs_text_enum_s* %31, i32 2, i32 (%struct.gs_context_state_s*)* null) #3
  store i32 %call27, i32* %code, align 4, !tbaa !21
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.then.30, label %if.end.35

if.then.30:                                       ; preds = %if.end.26
  %32 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory31 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %32, i32 0, i32 1
  %current32 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory31, i32 0, i32 0
  %33 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current32, align 8, !tbaa !24
  %34 = bitcast %struct.gs_ref_memory_s* %33 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %34, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %35 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !25
  %36 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory33 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %36, i32 0, i32 1
  %current34 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory33, i32 0, i32 0
  %37 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current34, align 8, !tbaa !24
  %38 = bitcast %struct.gs_ref_memory_s* %37 to %struct.gs_memory_s*
  %39 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %40 = bitcast %struct.gs_text_enum_s* %39 to i8*
  call void %35(%struct.gs_memory_s* %38, i8* %40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0)) #3
  %41 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %41, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.35:                                        ; preds = %if.end.26
  %42 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %42, i32 0, i32 25
  %stack36 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p37 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack36, i32 0, i32 0
  %43 = load %struct.ref_s*, %struct.ref_s** %p37, align 8, !tbaa !28
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i64 -1
  %44 = load %struct.ref_s*, %struct.ref_s** %proc_op, align 8, !tbaa !1
  %45 = bitcast %struct.ref_s* %arrayidx to i8*
  %46 = bitcast %struct.ref_s* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 16, i32 8, i1 false), !tbaa.struct !29
  %47 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack38 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %47, i32 0, i32 26
  %stack39 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack38, i32 0, i32 0
  %p40 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack39, i32 0, i32 0
  %48 = load %struct.ref_s*, %struct.ref_s** %p40, align 8, !tbaa !5
  %add.ptr41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i64 -2
  store %struct.ref_s* %add.ptr41, %struct.ref_s** %p40, align 8, !tbaa !5
  %49 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call42 = call i32 @cshow_continue(%struct.gs_context_state_s* %49) #3
  store i32 %call42, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.35, %if.then.30, %if.then.25, %if.end, %if.then.16
  %50 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = bitcast %struct.gs_text_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = bitcast %struct.ref_s** %str_op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %53 = bitcast %struct.ref_s** %proc_op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = load i32, i32* %retval
  ret i32 %55
}

; Function Attrs: nounwind uwtable
define internal i32 @zrootfont(%struct.gs_context_state_s* %i_ctx_p) #0 {
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
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %op, align 8, !tbaa !1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 26
  %stack2 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack1, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack2, i32 0, i32 2
  %5 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !34
  %cmp = icmp ugt %struct.ref_s* %add.ptr, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 7
  store i32 1, i32* %requested, align 4, !tbaa !35
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %do.body
  %7 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack5 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 26
  %stack6 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack5, i32 0, i32 0
  %p7 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack6, i32 0, i32 0
  store %struct.ref_s* %7, %struct.ref_s** %p7, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 0
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !22
  %call = call %struct.gs_font_s* @gs_rootfont(%struct.gs_state_s* %11) #3
  %client_data = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %call, i32 0, i32 8
  %12 = load i8*, i8** %client_data, align 8, !tbaa !36
  %13 = bitcast i8* %12 to %struct.font_data_s*
  %dict = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %13, i32 0, i32 0
  %14 = bitcast %struct.ref_s* %9 to i8*
  %15 = bitcast %struct.ref_s* %dict to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 16, i32 8, i1 false), !tbaa.struct !29
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %16 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @cshow_continue(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %penum = alloca %struct.gs_text_enum_s*, align 8
  %code = alloca i32, align 4
  %es_code_ = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pslot = alloca %struct.ref_s*, align 8
  %wpt = alloca %struct.gs_point_s, align 8
  %font = alloca %struct.gs_font_s*, align 8
  %root_font = alloca %struct.gs_font_s*, align 8
  %scaled_font = alloca %struct.gs_font_s*, align 8
  %font_space = alloca i32, align 4
  %root_font_space = alloca i32, align 4
  %fdepth = alloca i32, align 4
  %save_space = alloca i32, align 4
  %immediate_parent = alloca %struct.gs_font_s*, align 8
  %save_space70 = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gs_text_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 25
  %stack1 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p2 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack1, i32 0, i32 0
  %5 = load %struct.ref_s*, %struct.ref_s** %p2, align 8, !tbaa !28
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %6 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %7 = bitcast %struct.obj_header_s* %6 to %struct.gs_text_enum_s*
  store %struct.gs_text_enum_s* %7, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %9, i32 0, i32 25
  %stack4 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack3, i32 0, i32 0
  %p5 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 0
  %10 = load %struct.ref_s*, %struct.ref_s** %p5, align 8, !tbaa !28
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack6 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 25
  %stack7 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack6, i32 0, i32 0
  %top = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack7, i32 0, i32 2
  %12 = load %struct.ref_s*, %struct.ref_s** %top, align 8, !tbaa !42
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -4
  %cmp = icmp ugt %struct.ref_s* %10, %add.ptr
  br i1 %cmp, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  %13 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack8 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 25
  %stack9 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack8, i32 0, i32 0
  %call = call i32 @ref_stack_extend(%struct.ref_stack_s* %stack9, i32 4) #3
  store i32 %call, i32* %es_code_, align 4, !tbaa !21
  %15 = load i32, i32* %es_code_, align 4, !tbaa !21
  %cmp10 = icmp slt i32 %15, 0
  br i1 %cmp10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then
  %16 = load i32, i32* %es_code_, align 4, !tbaa !21
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.11
  %17 = bitcast i32* %es_code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.179 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.12

if.end.12:                                        ; preds = %cleanup.cont, %entry
  %18 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %call13 = call i32 @gs_text_process(%struct.gs_text_enum_s* %18) #3
  store i32 %call13, i32* %code, align 4, !tbaa !21
  %19 = load i32, i32* %code, align 4, !tbaa !21
  %cmp14 = icmp ne i32 %19, 2
  br i1 %cmp14, label %if.then.15, label %if.end.34

if.then.15:                                       ; preds = %if.end.12
  %20 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %21 = load i32, i32* %code, align 4, !tbaa !21
  %call16 = call i32 @op_show_continue_dispatch(%struct.gs_context_state_s* %20, i32 0, i32 %21) #3
  store i32 %call16, i32* %code, align 4, !tbaa !21
  %22 = load i32, i32* %code, align 4, !tbaa !21
  %cmp17 = icmp eq i32 %22, 5
  br i1 %cmp17, label %if.then.18, label %if.end.33

if.then.18:                                       ; preds = %if.then.15
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack19 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 25
  %stack20 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack19, i32 0, i32 0
  %p21 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack20, i32 0, i32 0
  %24 = load %struct.ref_s*, %struct.ref_s** %p21, align 8, !tbaa !28
  %add.ptr22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 -1
  %value23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr22, i32 0, i32 1
  %opproc = bitcast %union.v* %value23 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @cshow_continue, i32 (%struct.gs_context_state_s*)** %opproc, align 8, !tbaa !1
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack24 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %25, i32 0, i32 25
  %stack25 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack24, i32 0, i32 0
  %p26 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack25, i32 0, i32 0
  %26 = load %struct.ref_s*, %struct.ref_s** %p26, align 8, !tbaa !28
  %add.ptr27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 -1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr27, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 3968, i16* %type_attrs, align 2, !tbaa !19
  %27 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack28 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %27, i32 0, i32 25
  %stack29 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack28, i32 0, i32 0
  %p30 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack29, i32 0, i32 0
  %28 = load %struct.ref_s*, %struct.ref_s** %p30, align 8, !tbaa !28
  %add.ptr31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i64 -1
  %tas32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr31, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas32, i32 0, i32 2
  store i32 0, i32* %rsize, align 4, !tbaa !23
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.18, %if.then.15
  %29 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.179

if.end.34:                                        ; preds = %if.end.12
  %30 = bitcast %struct.ref_s** %pslot to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #1
  %31 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack35 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %31, i32 0, i32 25
  %stack36 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack35, i32 0, i32 0
  %p37 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack36, i32 0, i32 0
  %32 = load %struct.ref_s*, %struct.ref_s** %p37, align 8, !tbaa !28
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i64 -1
  store %struct.ref_s* %arrayidx, %struct.ref_s** %pslot, align 8, !tbaa !1
  %33 = bitcast %struct.gs_point_s* %wpt to i8*
  call void @llvm.lifetime.start(i64 16, i8* %33) #1
  %34 = bitcast %struct.gs_font_s** %font to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #1
  %35 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %call38 = call %struct.gs_font_s* @gs_text_current_font(%struct.gs_text_enum_s* %35) #3
  store %struct.gs_font_s* %call38, %struct.gs_font_s** %font, align 8, !tbaa !1
  %36 = bitcast %struct.gs_font_s** %root_font to i8*
  call void @llvm.lifetime.start(i64 8, i8* %36) #1
  %37 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %37, i32 0, i32 0
  %38 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !22
  %call39 = call %struct.gs_font_s* @gs_rootfont(%struct.gs_state_s* %38) #3
  store %struct.gs_font_s* %call39, %struct.gs_font_s** %root_font, align 8, !tbaa !1
  %39 = bitcast %struct.gs_font_s** %scaled_font to i8*
  call void @llvm.lifetime.start(i64 8, i8* %39) #1
  %40 = bitcast i32* %font_space to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #1
  %41 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %41, i32 0, i32 8
  %42 = load i8*, i8** %client_data, align 8, !tbaa !36
  %43 = bitcast i8* %42 to %struct.font_data_s*
  %dict = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %43, i32 0, i32 0
  %tas40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %dict, i32 0, i32 0
  %type_attrs41 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas40, i32 0, i32 0
  %44 = load i16, i16* %type_attrs41, align 2, !tbaa !19
  %conv = zext i16 %44 to i32
  %and = and i32 %conv, 12
  store i32 %and, i32* %font_space, align 4, !tbaa !21
  %45 = bitcast i32* %root_font_space to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #1
  %46 = load %struct.gs_font_s*, %struct.gs_font_s** %root_font, align 8, !tbaa !1
  %client_data42 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %46, i32 0, i32 8
  %47 = load i8*, i8** %client_data42, align 8, !tbaa !36
  %48 = bitcast i8* %47 to %struct.font_data_s*
  %dict43 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %48, i32 0, i32 0
  %tas44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %dict43, i32 0, i32 0
  %type_attrs45 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas44, i32 0, i32 0
  %49 = load i16, i16* %type_attrs45, align 2, !tbaa !19
  %conv46 = zext i16 %49 to i32
  %and47 = and i32 %conv46, 12
  store i32 %and47, i32* %root_font_space, align 4, !tbaa !21
  %50 = bitcast i32* %fdepth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %50) #1
  %51 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %fstack = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %51, i32 0, i32 19
  %depth = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack, i32 0, i32 0
  %52 = load i32, i32* %depth, align 4, !tbaa !43
  store i32 %52, i32* %fdepth, align 4, !tbaa !21
  %53 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %call48 = call i32 @gs_text_current_width(%struct.gs_text_enum_s* %53, %struct.gs_point_s* %wpt) #3
  %54 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !1
  %55 = load %struct.gs_font_s*, %struct.gs_font_s** %root_font, align 8, !tbaa !1
  %cmp49 = icmp eq %struct.gs_font_s* %54, %55
  br i1 %cmp49, label %if.then.51, label %if.else

if.then.51:                                       ; preds = %if.end.34
  %56 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !1
  store %struct.gs_font_s* %56, %struct.gs_font_s** %scaled_font, align 8, !tbaa !1
  br label %if.end.86

if.else:                                          ; preds = %if.end.34
  %57 = load i32, i32* %fdepth, align 4, !tbaa !21
  %cmp52 = icmp sgt i32 %57, 0
  br i1 %cmp52, label %if.then.54, label %if.else.69

if.then.54:                                       ; preds = %if.else
  %58 = bitcast i32* %save_space to i8*
  call void @llvm.lifetime.start(i64 4, i8* %58) #1
  %59 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %59, i32 0, i32 1
  %current_space = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 2
  %60 = load i32, i32* %current_space, align 4, !tbaa !52
  store i32 %60, i32* %save_space, align 4, !tbaa !21
  %61 = bitcast %struct.gs_font_s** %immediate_parent to i8*
  call void @llvm.lifetime.start(i64 8, i8* %61) #1
  %62 = load i32, i32* %fdepth, align 4, !tbaa !21
  %sub = sub nsw i32 %62, 1
  %idxprom = sext i32 %sub to i64
  %63 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %fstack55 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %63, i32 0, i32 19
  %items = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack55, i32 0, i32 1
  %arrayidx56 = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items, i32 0, i64 %idxprom
  %font57 = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %arrayidx56, i32 0, i32 0
  %64 = load %struct.gs_font_s*, %struct.gs_font_s** %font57, align 8, !tbaa !53
  store %struct.gs_font_s* %64, %struct.gs_font_s** %immediate_parent, align 8, !tbaa !1
  %65 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory58 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %65, i32 0, i32 1
  %66 = load i32, i32* %font_space, align 4, !tbaa !21
  call void @ialloc_set_space(%struct.gs_dual_memory_s* %memory58, i32 %66) #3
  %67 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !1
  %dir = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %67, i32 0, i32 3
  %68 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8, !tbaa !55
  %69 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !1
  %70 = load %struct.gs_font_s*, %struct.gs_font_s** %immediate_parent, align 8, !tbaa !1
  %FontMatrix = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %70, i32 0, i32 9
  %call59 = call i32 @gs_makefont(%struct.gs_font_dir_s* %68, %struct.gs_font_s* %69, %struct.gs_matrix_s* %FontMatrix, %struct.gs_font_s** %scaled_font) #3
  store i32 %call59, i32* %code, align 4, !tbaa !21
  %71 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory60 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %71, i32 0, i32 1
  %72 = load i32, i32* %save_space, align 4, !tbaa !21
  call void @ialloc_set_space(%struct.gs_dual_memory_s* %memory60, i32 %72) #3
  %73 = load i32, i32* %code, align 4, !tbaa !21
  %cmp61 = icmp slt i32 %73, 0
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.then.54
  %74 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %74, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.65

if.end.64:                                        ; preds = %if.then.54
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.65

cleanup.65:                                       ; preds = %if.end.64, %if.then.63
  %75 = bitcast %struct.gs_font_s** %immediate_parent to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = bitcast i32* %save_space to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %cleanup.dest.67 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.67, label %cleanup.169 [
    i32 0, label %cleanup.cont.68
  ]

cleanup.cont.68:                                  ; preds = %cleanup.65
  br label %if.end.85

if.else.69:                                       ; preds = %if.else
  %77 = bitcast i32* %save_space70 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %77) #1
  %78 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory71 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %78, i32 0, i32 1
  %current_space72 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory71, i32 0, i32 2
  %79 = load i32, i32* %current_space72, align 4, !tbaa !52
  store i32 %79, i32* %save_space70, align 4, !tbaa !21
  %80 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory73 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %80, i32 0, i32 1
  %81 = load i32, i32* %font_space, align 4, !tbaa !21
  call void @ialloc_set_space(%struct.gs_dual_memory_s* %memory73, i32 %81) #3
  %82 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !1
  %dir74 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %82, i32 0, i32 3
  %83 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir74, align 8, !tbaa !55
  %84 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !1
  %85 = load %struct.gs_font_s*, %struct.gs_font_s** %root_font, align 8, !tbaa !1
  %FontMatrix75 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %85, i32 0, i32 9
  %call76 = call i32 @gs_makefont(%struct.gs_font_dir_s* %83, %struct.gs_font_s* %84, %struct.gs_matrix_s* %FontMatrix75, %struct.gs_font_s** %scaled_font) #3
  store i32 %call76, i32* %code, align 4, !tbaa !21
  %86 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory77 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %86, i32 0, i32 1
  %87 = load i32, i32* %save_space70, align 4, !tbaa !21
  call void @ialloc_set_space(%struct.gs_dual_memory_s* %memory77, i32 %87) #3
  %88 = load i32, i32* %code, align 4, !tbaa !21
  %cmp78 = icmp slt i32 %88, 0
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %if.else.69
  %89 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %89, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.82

if.end.81:                                        ; preds = %if.else.69
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.82

cleanup.82:                                       ; preds = %if.end.81, %if.then.80
  %90 = bitcast i32* %save_space70 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #1
  %cleanup.dest.83 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.83, label %cleanup.169 [
    i32 0, label %cleanup.cont.84
  ]

cleanup.cont.84:                                  ; preds = %cleanup.82
  br label %if.end.85

if.end.85:                                        ; preds = %cleanup.cont.84, %cleanup.cont.68
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.then.51
  br label %do.body

do.body:                                          ; preds = %if.end.86
  %91 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr87 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %91, i64 3
  store %struct.ref_s* %add.ptr87, %struct.ref_s** %op, align 8, !tbaa !1
  %92 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack88 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %92, i32 0, i32 26
  %stack89 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack88, i32 0, i32 0
  %top90 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack89, i32 0, i32 2
  %93 = load %struct.ref_s*, %struct.ref_s** %top90, align 8, !tbaa !34
  %cmp91 = icmp ugt %struct.ref_s* %add.ptr87, %93
  br i1 %cmp91, label %if.then.93, label %if.else.96

if.then.93:                                       ; preds = %do.body
  %94 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack94 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %94, i32 0, i32 26
  %stack95 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack94, i32 0, i32 0
  %requested = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack95, i32 0, i32 7
  store i32 3, i32* %requested, align 4, !tbaa !35
  store i32 -16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.169

if.else.96:                                       ; preds = %do.body
  %95 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %96 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack97 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %96, i32 0, i32 26
  %stack98 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack97, i32 0, i32 0
  %p99 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack98, i32 0, i32 0
  store %struct.ref_s* %95, %struct.ref_s** %p99, align 8, !tbaa !5
  br label %if.end.100

if.end.100:                                       ; preds = %if.else.96
  br label %do.cond

do.cond:                                          ; preds = %if.end.100
  br label %do.end

do.end:                                           ; preds = %do.cond
  %97 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %call101 = call i64 @gs_text_current_char(%struct.gs_text_enum_s* %97) #3
  %and102 = and i64 %call101, 255
  %98 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr103 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %98, i64 -2
  %value104 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr103, i32 0, i32 1
  %intval = bitcast %union.v* %value104 to i64*
  store i64 %and102, i64* %intval, align 8, !tbaa !31
  %99 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr105 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %99, i64 -2
  %tas106 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr105, i32 0, i32 0
  %type_attrs107 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas106, i32 0, i32 0
  store i16 2816, i16* %type_attrs107, align 2, !tbaa !19
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %wpt, i32 0, i32 0
  %100 = load double, double* %x, align 8, !tbaa !56
  %conv108 = fptrunc double %100 to float
  %101 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr109 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %101, i64 -1
  %value110 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr109, i32 0, i32 1
  %realval = bitcast %union.v* %value110 to float*
  store float %conv108, float* %realval, align 4, !tbaa !32
  %102 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr111 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %102, i64 -1
  %tas112 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr111, i32 0, i32 0
  %type_attrs113 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas112, i32 0, i32 0
  store i16 4096, i16* %type_attrs113, align 2, !tbaa !19
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %wpt, i32 0, i32 1
  %103 = load double, double* %y, align 8, !tbaa !57
  %conv114 = fptrunc double %103 to float
  %104 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value115 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %104, i32 0, i32 1
  %realval116 = bitcast %union.v* %value115 to float*
  store float %conv114, float* %realval116, align 4, !tbaa !32
  %105 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas117 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %105, i32 0, i32 0
  %type_attrs118 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas117, i32 0, i32 0
  store i16 4096, i16* %type_attrs118, align 2, !tbaa !19
  %106 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !1
  %107 = bitcast %struct.gs_font_s* %106 to %struct.obj_header_s*
  %108 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack119 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %108, i32 0, i32 25
  %stack120 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack119, i32 0, i32 0
  %p121 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack120, i32 0, i32 0
  %109 = load %struct.ref_s*, %struct.ref_s** %p121, align 8, !tbaa !28
  %arrayidx122 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %109, i64 -5
  %value123 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx122, i32 0, i32 1
  %pstruct124 = bitcast %union.v* %value123 to %struct.obj_header_s**
  store %struct.obj_header_s* %107, %struct.obj_header_s** %pstruct124, align 8, !tbaa !1
  %110 = load i32, i32* %font_space, align 4, !tbaa !21
  %add = add i32 2048, %110
  %conv125 = trunc i32 %add to i16
  %111 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack126 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %111, i32 0, i32 25
  %stack127 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack126, i32 0, i32 0
  %p128 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack127, i32 0, i32 0
  %112 = load %struct.ref_s*, %struct.ref_s** %p128, align 8, !tbaa !28
  %arrayidx129 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %112, i64 -5
  %tas130 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx129, i32 0, i32 0
  %type_attrs131 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas130, i32 0, i32 0
  store i16 %conv125, i16* %type_attrs131, align 2, !tbaa !19
  %113 = load %struct.gs_font_s*, %struct.gs_font_s** %root_font, align 8, !tbaa !1
  %114 = bitcast %struct.gs_font_s* %113 to %struct.obj_header_s*
  %115 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack132 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %115, i32 0, i32 25
  %stack133 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack132, i32 0, i32 0
  %p134 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack133, i32 0, i32 0
  %116 = load %struct.ref_s*, %struct.ref_s** %p134, align 8, !tbaa !28
  %arrayidx135 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %116, i64 -6
  %value136 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx135, i32 0, i32 1
  %pstruct137 = bitcast %union.v* %value136 to %struct.obj_header_s**
  store %struct.obj_header_s* %114, %struct.obj_header_s** %pstruct137, align 8, !tbaa !1
  %117 = load i32, i32* %root_font_space, align 4, !tbaa !21
  %add138 = add i32 2048, %117
  %conv139 = trunc i32 %add138 to i16
  %118 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack140 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %118, i32 0, i32 25
  %stack141 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack140, i32 0, i32 0
  %p142 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack141, i32 0, i32 0
  %119 = load %struct.ref_s*, %struct.ref_s** %p142, align 8, !tbaa !28
  %arrayidx143 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %119, i64 -6
  %tas144 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx143, i32 0, i32 0
  %type_attrs145 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas144, i32 0, i32 0
  store i16 %conv139, i16* %type_attrs145, align 2, !tbaa !19
  %120 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack146 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %120, i32 0, i32 25
  %stack147 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack146, i32 0, i32 0
  %p148 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack147, i32 0, i32 0
  %121 = load %struct.ref_s*, %struct.ref_s** %p148, align 8, !tbaa !28
  %incdec.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %121, i32 1
  store %struct.ref_s* %incdec.ptr, %struct.ref_s** %p148, align 8, !tbaa !28
  %122 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack149 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %122, i32 0, i32 25
  %stack150 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack149, i32 0, i32 0
  %p151 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack150, i32 0, i32 0
  %123 = load %struct.ref_s*, %struct.ref_s** %p151, align 8, !tbaa !28
  %value152 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %123, i32 0, i32 1
  %opproc153 = bitcast %union.v* %value152 to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @cshow_restore_font, i32 (%struct.gs_context_state_s*)** %opproc153, align 8, !tbaa !1
  %124 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack154 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %124, i32 0, i32 25
  %stack155 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack154, i32 0, i32 0
  %p156 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack155, i32 0, i32 0
  %125 = load %struct.ref_s*, %struct.ref_s** %p156, align 8, !tbaa !28
  %tas157 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %125, i32 0, i32 0
  %type_attrs158 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas157, i32 0, i32 0
  store i16 3968, i16* %type_attrs158, align 2, !tbaa !19
  %126 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack159 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %126, i32 0, i32 25
  %stack160 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack159, i32 0, i32 0
  %p161 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack160, i32 0, i32 0
  %127 = load %struct.ref_s*, %struct.ref_s** %p161, align 8, !tbaa !28
  %tas162 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %127, i32 0, i32 0
  %rsize163 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas162, i32 0, i32 2
  store i32 0, i32* %rsize163, align 4, !tbaa !23
  %128 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs164 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %128, i32 0, i32 0
  %129 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs164, align 8, !tbaa !22
  %130 = load %struct.gs_font_s*, %struct.gs_font_s** %scaled_font, align 8, !tbaa !1
  call void @gs_set_currentfont(%struct.gs_state_s* %129, %struct.gs_font_s* %130) #3
  %131 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack165 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %131, i32 0, i32 25
  %stack166 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack165, i32 0, i32 0
  %p167 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack166, i32 0, i32 0
  %132 = load %struct.ref_s*, %struct.ref_s** %p167, align 8, !tbaa !28
  %incdec.ptr168 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %132, i32 1
  store %struct.ref_s* %incdec.ptr168, %struct.ref_s** %p167, align 8, !tbaa !28
  %133 = load %struct.ref_s*, %struct.ref_s** %pslot, align 8, !tbaa !1
  %134 = bitcast %struct.ref_s* %incdec.ptr168 to i8*
  %135 = bitcast %struct.ref_s* %133 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %134, i8* %135, i64 16, i32 8, i1 false), !tbaa.struct !29
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.169

cleanup.169:                                      ; preds = %do.end, %if.then.93, %cleanup.82, %cleanup.65
  %136 = bitcast i32* %fdepth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %136) #1
  %137 = bitcast i32* %root_font_space to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #1
  %138 = bitcast i32* %font_space to i8*
  call void @llvm.lifetime.end(i64 4, i8* %138) #1
  %139 = bitcast %struct.gs_font_s** %scaled_font to i8*
  call void @llvm.lifetime.end(i64 8, i8* %139) #1
  %140 = bitcast %struct.gs_font_s** %root_font to i8*
  call void @llvm.lifetime.end(i64 8, i8* %140) #1
  %141 = bitcast %struct.gs_font_s** %font to i8*
  call void @llvm.lifetime.end(i64 8, i8* %141) #1
  %142 = bitcast %struct.gs_point_s* %wpt to i8*
  call void @llvm.lifetime.end(i64 16, i8* %142) #1
  %143 = bitcast %struct.ref_s** %pslot to i8*
  call void @llvm.lifetime.end(i64 8, i8* %143) #1
  %cleanup.dest.177 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.177, label %cleanup.179 [
    i32 0, label %cleanup.cont.178
  ]

cleanup.cont.178:                                 ; preds = %cleanup.169
  store i32 5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.179

cleanup.179:                                      ; preds = %cleanup.cont.178, %cleanup.169, %if.end.33, %cleanup
  %144 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #1
  %145 = bitcast %struct.gs_text_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %145) #1
  %146 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %146) #1
  %147 = load i32, i32* %retval
  ret i32 %147
}

; Function Attrs: nounwind uwtable
define internal i32 @cshow_restore_font(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %0, i32 0, i32 0
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !22
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %2, i32 0, i32 25
  %stack = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %3 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !28
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 -6
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 1
  %pstruct = bitcast %union.v* %value to %struct.obj_header_s**
  %4 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct, align 8, !tbaa !1
  %5 = bitcast %struct.obj_header_s* %4 to %struct.gs_font_s*
  %call = call i32 @gs_setfont(%struct.gs_state_s* %1, %struct.gs_font_s* %5) #3
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs1 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 0
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs1, align 8, !tbaa !22
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %exec_stack2 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 25
  %stack3 = getelementptr inbounds %struct.exec_stack_s, %struct.exec_stack_s* %exec_stack2, i32 0, i32 0
  %p4 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack3, i32 0, i32 0
  %9 = load %struct.ref_s*, %struct.ref_s** %p4, align 8, !tbaa !28
  %arrayidx5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -5
  %value6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx5, i32 0, i32 1
  %pstruct7 = bitcast %union.v* %value6 to %struct.obj_header_s**
  %10 = load %struct.obj_header_s*, %struct.obj_header_s** %pstruct7, align 8, !tbaa !1
  %11 = bitcast %struct.obj_header_s* %10 to %struct.gs_font_s*
  call void @gs_set_currentfont(%struct.gs_state_s* %7, %struct.gs_font_s* %11) #3
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call8 = call i32 @cshow_continue(%struct.gs_context_state_s* %12) #3
  ret i32 %call8
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @op_show_setup(%struct.gs_context_state_s*, %struct.ref_s*) #2

declare i32 @gs_cshow_begin(%struct.gs_state_s*, i8*, i32, %struct.gs_memory_s*, %struct.gs_text_enum_s**) #2

declare i32 @op_show_finish_setup(%struct.gs_context_state_s*, %struct.gs_text_enum_s*, i32, i32 (%struct.gs_context_state_s*)*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare %struct.gs_font_s* @gs_rootfont(%struct.gs_state_s*) #2

declare i32 @ref_stack_extend(%struct.ref_stack_s*, i32) #2

declare i32 @gs_text_process(%struct.gs_text_enum_s*) #2

declare i32 @op_show_continue_dispatch(%struct.gs_context_state_s*, i32, i32) #2

declare %struct.gs_font_s* @gs_text_current_font(%struct.gs_text_enum_s*) #2

declare i32 @gs_text_current_width(%struct.gs_text_enum_s*, %struct.gs_point_s*) #2

declare void @ialloc_set_space(%struct.gs_dual_memory_s*, i32) #2

declare i32 @gs_makefont(%struct.gs_font_dir_s*, %struct.gs_font_s*, %struct.gs_matrix_s*, %struct.gs_font_s**) #2

declare i64 @gs_text_current_char(%struct.gs_text_enum_s*) #2

declare void @gs_set_currentfont(%struct.gs_state_s*, %struct.gs_font_s*) #2

declare i32 @gs_setfont(%struct.gs_state_s*, %struct.gs_font_s*) #2

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
!19 = !{!10, !12, i64 0}
!20 = !{!6, !2, i64 632}
!21 = !{!9, !9, i64 0}
!22 = !{!6, !2, i64 0}
!23 = !{!10, !9, i64 4}
!24 = !{!6, !2, i64 8}
!25 = !{!26, !2, i64 24}
!26 = !{!"gs_memory_s", !2, i64 0, !27, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!27 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!28 = !{!6, !2, i64 520}
!29 = !{i64 0, i64 2, !30, i64 2, i64 2, !30, i64 4, i64 4, !21, i64 8, i64 8, !31, i64 8, i64 2, !30, i64 8, i64 4, !32, i64 8, i64 8, !31, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !31}
!30 = !{!12, !12, i64 0}
!31 = !{!13, !13, i64 0}
!32 = !{!33, !33, i64 0}
!33 = !{!"float", !3, i64 0}
!34 = !{!6, !2, i64 640}
!35 = !{!6, !9, i64 688}
!36 = !{!37, !2, i64 72}
!37 = !{!"gs_font_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !9, i64 32, !38, i64 40, !13, i64 56, !2, i64 64, !2, i64 72, !39, i64 80, !39, i64 104, !3, i64 128, !9, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !9, i64 148, !9, i64 152, !33, i64 156, !9, i64 160, !40, i64 168, !41, i64 272, !41, i64 324}
!38 = !{!"gs_notify_list_s", !2, i64 0, !2, i64 8}
!39 = !{!"gs_matrix_s", !33, i64 0, !33, i64 4, !33, i64 8, !33, i64 12, !33, i64 16, !33, i64 20}
!40 = !{!"gs_font_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!41 = !{!"gs_font_name_s", !3, i64 0, !9, i64 48}
!42 = !{!6, !2, i64 536}
!43 = !{!44, !9, i64 240}
!44 = !{!"gs_text_enum_s", !45, i64 0, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !48, i64 160, !2, i64 184, !2, i64 192, !13, i64 200, !9, i64 208, !49, i64 212, !2, i64 224, !9, i64 232, !9, i64 236, !50, i64 240, !9, i64 344, !9, i64 348, !9, i64 352, !46, i64 360, !13, i64 376, !9, i64 384, !49, i64 388, !46, i64 400, !51, i64 416}
!45 = !{!"gs_text_params_s", !9, i64 0, !3, i64 8, !9, i64 16, !46, i64 24, !46, i64 40, !3, i64 56, !2, i64 64, !2, i64 72, !9, i64 80}
!46 = !{!"gs_point_s", !47, i64 0, !47, i64 8}
!47 = !{!"double", !3, i64 0}
!48 = !{!"rc_header_s", !13, i64 0, !2, i64 8, !2, i64 16}
!49 = !{!"gs_log2_scale_point_s", !9, i64 0, !9, i64 4}
!50 = !{!"gx_font_stack_s", !9, i64 0, !3, i64 8}
!51 = !{!"gs_text_returned_s", !13, i64 0, !13, i64 8, !46, i64 16}
!52 = !{!7, !9, i64 48}
!53 = !{!54, !2, i64 0}
!54 = !{!"gx_font_stack_item_s", !2, i64 0, !9, i64 8}
!55 = !{!37, !2, i64 24}
!56 = !{!46, !47, i64 0}
!57 = !{!46, !47, i64 8}
