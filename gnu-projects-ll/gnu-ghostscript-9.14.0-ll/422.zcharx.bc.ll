; ModuleID = './zcharx.bc'
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
%struct._ssn = type { %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s* }

@.str = private unnamed_addr constant [11 x i8] c"level2dict\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"1glyphshow\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"1.glyphwidth\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"2xshow\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"2xyshow\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"2yshow\00", align 1
@zcharx_op_defs = constant [7 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* null }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zglyphshow }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zglyphwidth }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zxshow }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zxyshow }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zyshow }, %struct.op_def zeroinitializer], align 16
@.str.6 = private unnamed_addr constant [11 x i8] c"zglyphshow\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"zglyphwidth\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"moveshow\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @zglyphshow(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %glyph = alloca i64, align 8
  %penum = alloca %struct.gs_text_enum_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.gs_text_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @glyph_show_setup(%struct.gs_context_state_s* %3, i64* %glyph) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 0
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !7
  %6 = load i64, i64* %glyph, align 8, !tbaa !20
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon* %memories to %struct._ssn*
  %local = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 3
  %8 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local, align 8, !tbaa !21
  %9 = bitcast %struct.gs_ref_memory_s* %8 to %struct.gs_memory_s*
  %call1 = call i32 @gs_glyphshow_begin(%struct.gs_state_s* %5, i64 %6, %struct.gs_memory_s* %9, %struct.gs_text_enum_s** %penum) #4
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %10 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %11 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %enum_client_data = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %11, i32 0, i32 11
  %12 = bitcast i8** %enum_client_data to i32 (%struct.gs_context_state_s*)**
  store i32 (%struct.gs_context_state_s*)* @zglyphshow, i32 (%struct.gs_context_state_s*)** %12, align 8, !tbaa !1
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %14 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %call3 = call i32 @op_show_finish_setup(%struct.gs_context_state_s* %13, %struct.gs_text_enum_s* %14, i32 1, i32 (%struct.gs_context_state_s*)* null) #4
  store i32 %call3, i32* %code, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %if.end
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory6 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %15, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory6, i32 0, i32 0
  %16 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !23
  %17 = bitcast %struct.gs_ref_memory_s* %16 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %17, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %18 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !24
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory7 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 1
  %current8 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory7, i32 0, i32 0
  %20 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current8, align 8, !tbaa !23
  %21 = bitcast %struct.gs_ref_memory_s* %20 to %struct.gs_memory_s*
  %22 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %23 = bitcast %struct.gs_text_enum_s* %22 to i8*
  call void %18(%struct.gs_memory_s* %21, i8* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0)) #4
  %24 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end
  %25 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call10 = call i32 @op_show_continue_pop(%struct.gs_context_state_s* %25, i32 1) #4
  store i32 %call10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.then.5, %if.then
  %26 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast %struct.gs_text_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal i32 @zglyphwidth(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %glyph = alloca i64, align 8
  %penum = alloca %struct.gs_text_enum_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.gs_text_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @glyph_show_setup(%struct.gs_context_state_s* %3, i64* %glyph) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %4, i32 0, i32 0
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !7
  %6 = load i64, i64* %glyph, align 8, !tbaa !20
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %8 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !23
  %9 = bitcast %struct.gs_ref_memory_s* %8 to %struct.gs_memory_s*
  %call1 = call i32 @gs_glyphwidth_begin(%struct.gs_state_s* %5, i64 %6, %struct.gs_memory_s* %9, %struct.gs_text_enum_s** %penum) #4
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %10 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %12 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %call3 = call i32 @op_show_finish_setup(%struct.gs_context_state_s* %11, %struct.gs_text_enum_s* %12, i32 1, i32 (%struct.gs_context_state_s*)* @finish_stringwidth) #4
  store i32 %call3, i32* %code, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.end.10

if.then.5:                                        ; preds = %if.end
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory6 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 1
  %current7 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory6, i32 0, i32 0
  %14 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current7, align 8, !tbaa !23
  %15 = bitcast %struct.gs_ref_memory_s* %14 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %15, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %16 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !24
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory8 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %17, i32 0, i32 1
  %current9 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory8, i32 0, i32 0
  %18 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current9, align 8, !tbaa !23
  %19 = bitcast %struct.gs_ref_memory_s* %18 to %struct.gs_memory_s*
  %20 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %21 = bitcast %struct.gs_text_enum_s* %20 to i8*
  call void %16(%struct.gs_memory_s* %19, i8* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0)) #4
  %22 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call11 = call i32 @op_show_continue_pop(%struct.gs_context_state_s* %23, i32 1) #4
  store i32 %call11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.10, %if.then.5, %if.then
  %24 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast %struct.gs_text_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal i32 @zxshow(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @moveshow(%struct.gs_context_state_s* %0, i32 1, i32 0) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zxyshow(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @moveshow(%struct.gs_context_state_s* %0, i32 1, i32 1) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @zyshow(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call = call i32 @moveshow(%struct.gs_context_state_s* %0, i32 0, i32 1) #4
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @glyph_show_setup(%struct.gs_context_state_s* %i_ctx_p, i64* %pglyph) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %pglyph.addr = alloca i64*, align 8
  %op = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i64* %pglyph, i64** %pglyph.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !27
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %3, i32 0, i32 0
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !7
  %call = call %struct.gs_font_s* @gs_currentfont(%struct.gs_state_s* %4) #4
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %call, i32 0, i32 11
  %5 = load i32, i32* %FontType, align 4, !tbaa !28
  switch i32 %5, label %sw.default [
    i32 9, label %sw.bb
    i32 10, label %sw.bb
    i32 11, label %sw.bb
    i32 32, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry
  br label %do.body

do.body:                                          ; preds = %sw.bb
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %7 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !35
  %conv = zext i8 %8 to i32
  %cmp = icmp eq i32 %conv, 11
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %9 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call2 = call i32 @check_type_failed(%struct.ref_s* %9) #4
  store i32 %call2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.body
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %11 = load i64, i64* %intval, align 8, !tbaa !20
  %cmp3 = icmp ugt i64 %11, -2147483649
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.6
  br label %do.end

do.end:                                           ; preds = %do.cond
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 1
  %intval8 = bitcast %union.v* %value7 to i64*
  %13 = load i64, i64* %intval8, align 8, !tbaa !20
  %add = add i64 %13, 2147483648
  %14 = load i64*, i64** %pglyph.addr, align 8, !tbaa !1
  store i64 %add, i64* %14, align 8, !tbaa !20
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %type_attrs10 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas9, i32 0, i32 0
  %16 = bitcast i16* %type_attrs10 to i8*
  %arrayidx11 = getelementptr inbounds i8, i8* %16, i64 1
  %17 = load i8, i8* %arrayidx11, align 1, !tbaa !35
  %conv12 = zext i8 %17 to i32
  %cmp13 = icmp eq i32 %conv12, 13
  br i1 %cmp13, label %if.end.17, label %if.then.15

if.then.15:                                       ; preds = %sw.default
  %18 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call16 = call i32 @check_type_failed(%struct.ref_s* %18) #4
  store i32 %call16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %sw.default
  %19 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %19, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %20 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !23
  %21 = bitcast %struct.gs_ref_memory_s* %20 to %struct.gs_memory_s*
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %21, i32 0, i32 2
  %22 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !36
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %22, i32 0, i32 16
  %23 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !37
  %24 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call18 = call i32 @names_index(%struct.name_table_s* %23, %struct.ref_s* %24) #4
  %conv19 = zext i32 %call18 to i64
  %25 = load i64*, i64** %pglyph.addr, align 8, !tbaa !1
  store i64 %conv19, i64* %25, align 8, !tbaa !20
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.17, %do.end
  %26 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call20 = call i32 @op_show_enum_setup(%struct.gs_context_state_s* %26) #4
  store i32 %call20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then.15, %if.then.5, %if.then
  %27 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = load i32, i32* %retval
  ret i32 %28
}

declare i32 @gs_glyphshow_begin(%struct.gs_state_s*, i64, %struct.gs_memory_s*, %struct.gs_text_enum_s**) #2

declare i32 @op_show_finish_setup(%struct.gs_context_state_s*, %struct.gs_text_enum_s*, i32, i32 (%struct.gs_context_state_s*)*) #2

declare i32 @op_show_continue_pop(%struct.gs_context_state_s*, i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare %struct.gs_font_s* @gs_currentfont(%struct.gs_state_s*) #2

declare i32 @check_type_failed(%struct.ref_s*) #2

declare i32 @names_index(%struct.name_table_s*, %struct.ref_s*) #2

declare i32 @op_show_enum_setup(%struct.gs_context_state_s*) #2

declare i32 @gs_glyphwidth_begin(%struct.gs_state_s*, i64, %struct.gs_memory_s*, %struct.gs_text_enum_s**) #2

declare i32 @finish_stringwidth(%struct.gs_context_state_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @moveshow(%struct.gs_context_state_s* %i_ctx_p, i32 %have_x, i32 %have_y) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %have_x.addr = alloca i32, align 4
  %have_y.addr = alloca i32, align 4
  %op = alloca %struct.ref_s*, align 8
  %penum = alloca %struct.gs_text_enum_s*, align 8
  %code = alloca i32, align 4
  %format = alloca i32, align 4
  %i = alloca i32, align 4
  %size = alloca i32, align 4
  %widths_needed = alloca i32, align 4
  %values = alloca float*, align 8
  %CPSI_mode = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %value58 = alloca %struct.ref_s, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store i32 %have_x, i32* %have_x.addr, align 4, !tbaa !5
  store i32 %have_y, i32* %have_y.addr, align 4, !tbaa !5
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !27
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gs_text_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store %struct.gs_text_enum_s* null, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  %call = call i32 @op_show_setup(%struct.gs_context_state_s* %5, %struct.ref_s* %add.ptr) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %7 = bitcast i32* %format to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %widths_needed to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast float** %values to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i32* %CPSI_mode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %13, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %14 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !23
  %15 = bitcast %struct.gs_ref_memory_s* %14 to %struct.gs_memory_s*
  %call1 = call i32 @gs_currentcpsimode(%struct.gs_memory_s* %15) #4
  store i32 %call1, i32* %CPSI_mode, align 4, !tbaa !5
  %16 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp ne i32 %16, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.100

if.end:                                           ; preds = %entry
  %18 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call2 = call i32 @num_array_format(%struct.ref_s* %18) #4
  store i32 %call2, i32* %format, align 4, !tbaa !5
  %19 = load i32, i32* %format, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %19, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %20 = load i32, i32* %format, align 4, !tbaa !5
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.100

if.end.5:                                         ; preds = %if.end
  %21 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %22 = load i32, i32* %format, align 4, !tbaa !5
  %call6 = call i32 @num_array_size(%struct.ref_s* %21, i32 %22) #4
  store i32 %call6, i32* %size, align 4, !tbaa !5
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory7 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 1
  %current8 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory7, i32 0, i32 0
  %24 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current8, align 8, !tbaa !23
  %25 = bitcast %struct.gs_ref_memory_s* %24 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %25, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %26 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !39
  %27 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory9 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %27, i32 0, i32 1
  %current10 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory9, i32 0, i32 0
  %28 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current10, align 8, !tbaa !23
  %29 = bitcast %struct.gs_ref_memory_s* %28 to %struct.gs_memory_s*
  %30 = load i32, i32* %size, align 4, !tbaa !5
  %call11 = call i8* %26(%struct.gs_memory_s* %29, i32 %30, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0)) #4
  %31 = bitcast i8* %call11 to float*
  store float* %31, float** %values, align 8, !tbaa !1
  %32 = load float*, float** %values, align 8, !tbaa !1
  %cmp12 = icmp eq float* %32, null
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.5
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.100

if.end.14:                                        ; preds = %if.end.5
  %33 = load i32, i32* %CPSI_mode, align 4, !tbaa !5
  %tobool = icmp ne i32 %33, 0
  br i1 %tobool, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.14
  %34 = load float*, float** %values, align 8, !tbaa !1
  %35 = bitcast float* %34 to i8*
  %36 = load i32, i32* %size, align 4, !tbaa !5
  %conv = zext i32 %36 to i64
  %mul = mul i64 %conv, 4
  %call16 = call i8* @memset(i8* %35, i32 0, i64 %mul) #5
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.end.14
  %37 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %37, i32 0, i32 0
  %38 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !7
  %39 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i64 -1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 1
  %bytes = bitcast %union.v* %value to i8**
  %40 = load i8*, i8** %bytes, align 8, !tbaa !1
  %41 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i64 -1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr18, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %42 = load i32, i32* %rsize, align 4, !tbaa !40
  %43 = load i32, i32* %have_x.addr, align 4, !tbaa !5
  %tobool19 = icmp ne i32 %43, 0
  br i1 %tobool19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.17
  %44 = load float*, float** %values, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %if.end.17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float* [ %44, %cond.true ], [ null, %cond.false ]
  %45 = load i32, i32* %have_y.addr, align 4, !tbaa !5
  %tobool20 = icmp ne i32 %45, 0
  br i1 %tobool20, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %cond.end
  %46 = load float*, float** %values, align 8, !tbaa !1
  br label %cond.end.23

cond.false.22:                                    ; preds = %cond.end
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.21
  %cond24 = phi float* [ %46, %cond.true.21 ], [ null, %cond.false.22 ]
  %47 = load i32, i32* %size, align 4, !tbaa !5
  %48 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory25 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %48, i32 0, i32 1
  %spaces = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory25, i32 0, i32 1
  %memories = getelementptr inbounds %struct.vm_spaces_s, %struct.vm_spaces_s* %spaces, i32 0, i32 1
  %named = bitcast %union.anon* %memories to %struct._ssn*
  %local = getelementptr inbounds %struct._ssn, %struct._ssn* %named, i32 0, i32 3
  %49 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %local, align 8, !tbaa !21
  %50 = bitcast %struct.gs_ref_memory_s* %49 to %struct.gs_memory_s*
  %call26 = call i32 @gs_xyshow_begin(%struct.gs_state_s* %38, i8* %40, i32 %42, float* %cond, float* %cond24, i32 %47, %struct.gs_memory_s* %50, %struct.gs_text_enum_s** %penum) #4
  store i32 %call26, i32* %code, align 4, !tbaa !5
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then.29, label %if.end.39

if.then.29:                                       ; preds = %cond.end.23
  %51 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory30 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %51, i32 0, i32 1
  %current31 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory30, i32 0, i32 0
  %52 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current31, align 8, !tbaa !23
  %53 = bitcast %struct.gs_ref_memory_s* %52 to %struct.gs_memory_s*
  %procs32 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %53, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs32, i32 0, i32 2
  %54 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !24
  %55 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory33 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %55, i32 0, i32 1
  %current34 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory33, i32 0, i32 0
  %56 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current34, align 8, !tbaa !23
  %57 = bitcast %struct.gs_ref_memory_s* %56 to %struct.gs_memory_s*
  %58 = load float*, float** %values, align 8, !tbaa !1
  %59 = bitcast float* %58 to i8*
  call void %54(%struct.gs_memory_s* %57, i8* %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0)) #4
  %60 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %tobool35 = icmp ne %struct.gs_text_enum_s* %60, null
  br i1 %tobool35, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %if.then.29
  %61 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %61, i32 0, i32 0
  %y_widths = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 7
  store float* null, float** %y_widths, align 8, !tbaa !41
  %62 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %text37 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %62, i32 0, i32 0
  %x_widths = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text37, i32 0, i32 6
  store float* null, float** %x_widths, align 8, !tbaa !50
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %if.then.29
  %63 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %63, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.100

if.end.39:                                        ; preds = %cond.end.23
  %64 = load i32, i32* %CPSI_mode, align 4, !tbaa !5
  %tobool40 = icmp ne i32 %64, 0
  br i1 %tobool40, label %if.then.41, label %if.else

if.then.41:                                       ; preds = %if.end.39
  %65 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %pgs42 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %65, i32 0, i32 0
  %66 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs42, align 8, !tbaa !7
  %67 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %call43 = call %struct.gs_text_params_s* @gs_get_text_params(%struct.gs_text_enum_s* %67) #4
  %68 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory44 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %68, i32 0, i32 1
  %current45 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory44, i32 0, i32 0
  %69 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current45, align 8, !tbaa !23
  %70 = bitcast %struct.gs_ref_memory_s* %69 to %struct.gs_memory_s*
  %call46 = call i32 @gs_text_count_chars(%struct.gs_state_s* %66, %struct.gs_text_params_s* %call43, %struct.gs_memory_s* %70) #4
  store i32 %call46, i32* %code, align 4, !tbaa !5
  %71 = load i32, i32* %code, align 4, !tbaa !5
  %cmp47 = icmp slt i32 %71, 0
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.then.41
  %72 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %72, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.100

if.end.50:                                        ; preds = %if.then.41
  %73 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %73, i32* %widths_needed, align 4, !tbaa !5
  %74 = load i32, i32* %have_x.addr, align 4, !tbaa !5
  %tobool51 = icmp ne i32 %74, 0
  br i1 %tobool51, label %land.lhs.true, label %if.end.54

land.lhs.true:                                    ; preds = %if.end.50
  %75 = load i32, i32* %have_y.addr, align 4, !tbaa !5
  %tobool52 = icmp ne i32 %75, 0
  br i1 %tobool52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %land.lhs.true
  %76 = load i32, i32* %widths_needed, align 4, !tbaa !5
  %shl = shl i32 %76, 1
  store i32 %shl, i32* %widths_needed, align 4, !tbaa !5
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %land.lhs.true, %if.end.50
  br label %if.end.55

if.else:                                          ; preds = %if.end.39
  %77 = load i32, i32* %size, align 4, !tbaa !5
  store i32 %77, i32* %widths_needed, align 4, !tbaa !5
  br label %if.end.55

if.end.55:                                        ; preds = %if.else, %if.end.54
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.55
  %78 = load i32, i32* %i, align 4, !tbaa !5
  %79 = load i32, i32* %widths_needed, align 4, !tbaa !5
  %cmp56 = icmp ult i32 %78, %79
  br i1 %cmp56, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %80 = bitcast %struct.ref_s* %value58 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %80) #1
  %81 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory59 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %81, i32 0, i32 1
  %current60 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory59, i32 0, i32 0
  %82 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current60, align 8, !tbaa !23
  %83 = bitcast %struct.gs_ref_memory_s* %82 to %struct.gs_memory_s*
  %84 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %85 = load i32, i32* %format, align 4, !tbaa !5
  %86 = load i32, i32* %i, align 4, !tbaa !5
  %call61 = call i32 @num_array_get(%struct.gs_memory_s* %83, %struct.ref_s* %84, i32 %85, i32 %86, %struct.ref_s* %value58) #4
  store i32 %call61, i32* %code, align 4, !tbaa !5
  switch i32 %call61, label %sw.default [
    i32 11, label %sw.bb
    i32 16, label %sw.bb.65
    i32 14, label %sw.bb.69
  ]

sw.bb:                                            ; preds = %for.body
  %value62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value58, i32 0, i32 1
  %intval = bitcast %union.v* %value62 to i64*
  %87 = load i64, i64* %intval, align 8, !tbaa !20
  %conv63 = sitofp i64 %87 to float
  %88 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = zext i32 %88 to i64
  %89 = load float*, float** %values, align 8, !tbaa !1
  %arrayidx64 = getelementptr inbounds float, float* %89, i64 %idxprom
  store float %conv63, float* %arrayidx64, align 4, !tbaa !51
  br label %sw.epilog

sw.bb.65:                                         ; preds = %for.body
  %value66 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value58, i32 0, i32 1
  %realval = bitcast %union.v* %value66 to float*
  %90 = load float, float* %realval, align 4, !tbaa !51
  %91 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom67 = zext i32 %91 to i64
  %92 = load float*, float** %values, align 8, !tbaa !1
  %arrayidx68 = getelementptr inbounds float, float* %92, i64 %idxprom67
  store float %90, float* %arrayidx68, align 4, !tbaa !51
  br label %sw.epilog

sw.bb.69:                                         ; preds = %for.body
  store i32 -15, i32* %code, align 4, !tbaa !5
  br label %sw.default

sw.default:                                       ; preds = %for.body, %sw.bb.69
  %93 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory70 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %93, i32 0, i32 1
  %current71 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory70, i32 0, i32 0
  %94 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current71, align 8, !tbaa !23
  %95 = bitcast %struct.gs_ref_memory_s* %94 to %struct.gs_memory_s*
  %procs72 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %95, i32 0, i32 1
  %free_object73 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs72, i32 0, i32 2
  %96 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object73, align 8, !tbaa !24
  %97 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory74 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %97, i32 0, i32 1
  %current75 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory74, i32 0, i32 0
  %98 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current75, align 8, !tbaa !23
  %99 = bitcast %struct.gs_ref_memory_s* %98 to %struct.gs_memory_s*
  %100 = load float*, float** %values, align 8, !tbaa !1
  %101 = bitcast float* %100 to i8*
  call void %96(%struct.gs_memory_s* %99, i8* %101, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0)) #4
  %102 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %text76 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %102, i32 0, i32 0
  %y_widths77 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text76, i32 0, i32 7
  store float* null, float** %y_widths77, align 8, !tbaa !41
  %103 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %text78 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %103, i32 0, i32 0
  %x_widths79 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text78, i32 0, i32 6
  store float* null, float** %x_widths79, align 8, !tbaa !50
  %104 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %104, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.65, %sw.bb
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default
  %105 = bitcast %struct.ref_s* %value58 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %105) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.100 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %106 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %106, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %107 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %108 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %call80 = call i32 @op_show_finish_setup(%struct.gs_context_state_s* %107, %struct.gs_text_enum_s* %108, i32 2, i32 (%struct.gs_context_state_s*)* null) #4
  store i32 %call80, i32* %code, align 4, !tbaa !5
  %cmp81 = icmp slt i32 %call80, 0
  br i1 %cmp81, label %if.then.83, label %if.end.94

if.then.83:                                       ; preds = %for.end
  %109 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory84 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %109, i32 0, i32 1
  %current85 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory84, i32 0, i32 0
  %110 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current85, align 8, !tbaa !23
  %111 = bitcast %struct.gs_ref_memory_s* %110 to %struct.gs_memory_s*
  %procs86 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %111, i32 0, i32 1
  %free_object87 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs86, i32 0, i32 2
  %112 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object87, align 8, !tbaa !24
  %113 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory88 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %113, i32 0, i32 1
  %current89 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory88, i32 0, i32 0
  %114 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current89, align 8, !tbaa !23
  %115 = bitcast %struct.gs_ref_memory_s* %114 to %struct.gs_memory_s*
  %116 = load float*, float** %values, align 8, !tbaa !1
  %117 = bitcast float* %116 to i8*
  call void %112(%struct.gs_memory_s* %115, i8* %117, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0)) #4
  %118 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %text90 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %118, i32 0, i32 0
  %y_widths91 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text90, i32 0, i32 7
  store float* null, float** %y_widths91, align 8, !tbaa !41
  %119 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %penum, align 8, !tbaa !1
  %text92 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %119, i32 0, i32 0
  %x_widths93 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text92, i32 0, i32 6
  store float* null, float** %x_widths93, align 8, !tbaa !50
  %120 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %120, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.100

if.end.94:                                        ; preds = %for.end
  %121 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack95 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %121, i32 0, i32 26
  %stack96 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack95, i32 0, i32 0
  %p97 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack96, i32 0, i32 0
  %122 = load %struct.ref_s*, %struct.ref_s** %p97, align 8, !tbaa !27
  %add.ptr98 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %122, i64 -2
  store %struct.ref_s* %add.ptr98, %struct.ref_s** %p97, align 8, !tbaa !27
  %123 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call99 = call i32 @op_show_continue(%struct.gs_context_state_s* %123) #4
  store i32 %call99, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.100

cleanup.100:                                      ; preds = %if.end.94, %if.then.83, %cleanup, %if.then.49, %if.end.38, %if.then.13, %if.then.4, %if.then
  %124 = bitcast i32* %CPSI_mode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #1
  %125 = bitcast float** %values to i8*
  call void @llvm.lifetime.end(i64 8, i8* %125) #1
  %126 = bitcast i32* %widths_needed to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #1
  %127 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #1
  %128 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %128) #1
  %129 = bitcast i32* %format to i8*
  call void @llvm.lifetime.end(i64 4, i8* %129) #1
  %130 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %130) #1
  %131 = bitcast %struct.gs_text_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %131) #1
  %132 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %132) #1
  %133 = load i32, i32* %retval
  ret i32 %133
}

declare i32 @op_show_setup(%struct.gs_context_state_s*, %struct.ref_s*) #2

declare i32 @gs_currentcpsimode(%struct.gs_memory_s*) #2

declare i32 @num_array_format(%struct.ref_s*) #2

declare i32 @num_array_size(%struct.ref_s*, i32) #2

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

declare i32 @gs_xyshow_begin(%struct.gs_state_s*, i8*, i32, float*, float*, i32, %struct.gs_memory_s*, %struct.gs_text_enum_s**) #2

declare i32 @gs_text_count_chars(%struct.gs_state_s*, %struct.gs_text_params_s*, %struct.gs_memory_s*) #2

declare %struct.gs_text_params_s* @gs_get_text_params(%struct.gs_text_enum_s*) #2

declare i32 @num_array_get(%struct.gs_memory_s*, %struct.ref_s*, i32, i32, %struct.ref_s*) #2

declare i32 @op_show_continue(%struct.gs_context_state_s*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }
attributes #5 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 0}
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
!20 = !{!14, !14, i64 0}
!21 = !{!22, !2, i64 24}
!22 = !{!"_ssn", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!23 = !{!8, !2, i64 8}
!24 = !{!25, !2, i64 24}
!25 = !{!"gs_memory_s", !2, i64 0, !26, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!26 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!27 = !{!8, !2, i64 624}
!28 = !{!29, !3, i64 128}
!29 = !{!"gs_font_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !30, i64 40, !14, i64 56, !2, i64 64, !2, i64 72, !31, i64 80, !31, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !32, i64 156, !6, i64 160, !33, i64 168, !34, i64 272, !34, i64 324}
!30 = !{!"gs_notify_list_s", !2, i64 0, !2, i64 8}
!31 = !{!"gs_matrix_s", !32, i64 0, !32, i64 4, !32, i64 8, !32, i64 12, !32, i64 16, !32, i64 20}
!32 = !{!"float", !3, i64 0}
!33 = !{!"gs_font_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!34 = !{!"gs_font_name_s", !3, i64 0, !6, i64 48}
!35 = !{!3, !3, i64 0}
!36 = !{!25, !2, i64 192}
!37 = !{!38, !2, i64 120}
!38 = !{!"gs_lib_ctx_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !14, i64 104, !2, i64 112, !2, i64 120, !6, i64 128, !2, i64 136, !6, i64 144, !6, i64 148, !3, i64 152, !2, i64 168, !6, i64 176, !2, i64 184, !6, i64 192, !2, i64 200, !2, i64 208}
!39 = !{!25, !2, i64 88}
!40 = !{!11, !6, i64 4}
!41 = !{!42, !2, i64 72}
!42 = !{!"gs_text_enum_s", !43, i64 0, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !46, i64 160, !2, i64 184, !2, i64 192, !14, i64 200, !6, i64 208, !47, i64 212, !2, i64 224, !6, i64 232, !6, i64 236, !48, i64 240, !6, i64 344, !6, i64 348, !6, i64 352, !44, i64 360, !14, i64 376, !6, i64 384, !47, i64 388, !44, i64 400, !49, i64 416}
!43 = !{!"gs_text_params_s", !6, i64 0, !3, i64 8, !6, i64 16, !44, i64 24, !44, i64 40, !3, i64 56, !2, i64 64, !2, i64 72, !6, i64 80}
!44 = !{!"gs_point_s", !45, i64 0, !45, i64 8}
!45 = !{!"double", !3, i64 0}
!46 = !{!"rc_header_s", !14, i64 0, !2, i64 8, !2, i64 16}
!47 = !{!"gs_log2_scale_point_s", !6, i64 0, !6, i64 4}
!48 = !{!"gx_font_stack_s", !6, i64 0, !3, i64 8}
!49 = !{!"gs_text_returned_s", !14, i64 0, !14, i64 8, !44, i64 16}
!50 = !{!42, !2, i64 64}
!51 = !{!32, !32, i64 0}
