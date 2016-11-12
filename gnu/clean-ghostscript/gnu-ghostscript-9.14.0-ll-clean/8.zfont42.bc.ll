; ModuleID = './zfont42.bc'
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
%struct.gs_font_type42_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32, %struct.gs_type42_data_s }
%struct.gs_notify_list_s = type { %struct.gs_memory_s*, %struct.gs_notify_registration_s* }
%struct.gs_notify_registration_s = type { i32 (i8*, i8*)*, i8*, %struct.gs_notify_registration_s* }
%struct.gs_font_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_font_procs_s = type { i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*)*, i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*, %struct.gs_matrix_s*, %struct.gs_font_s**)*, i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)*, i32 (%struct.gs_font_s*, %struct.gs_font_s*, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i32 (%struct.gs_font_s*, i32*, i32, i64*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_font_s*)*, i32 (%struct.gs_text_enum_s*, i64*, i64*)*, i32 (%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i64, i64)* }
%struct.gs_point_s = type { double, double }
%struct.gs_font_info_s = type { i32, i32, i32, %struct.gs_int_rect_s, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gs_glyph_info_s = type { i32, [2 x %struct.gs_point_s], %struct.gs_point_s, %struct.gs_rect_s, i32, i64* }
%struct.gx_path_s = type opaque
%struct.gs_text_enum_s = type opaque
%struct.gs_show_enum_s = type opaque
%struct.gs_font_name_s = type { [48 x i8], i32 }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_uid_s = type { i64, i64* }
%struct.gs_type42_data_s = type { i32 (%struct.gs_font_type42_s*, i64, i32, i8**)*, i8*, i32 (%struct.gs_font_type42_s*, i64)*, i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type42_s*, i32, i32, float*)*, i32 (%struct.gs_font_type42_s*, i32, i32, i64)*, i64, i64, i32, i32, [2 x %struct.gs_type42_mtx_s], i64, i64, i64, i32, i32, i32, i32, i32, i32, i32*, %struct.gs_glyph_cache_s*, i32, i32, i8*, i64 }
%struct.gs_glyph_data_s = type { %struct.gs_const_bytestring_s, %struct.gs_glyph_data_procs_s*, i8*, %struct.gs_memory_s* }
%struct.gs_const_bytestring_s = type { i8*, i32, i8* }
%struct.gs_glyph_data_procs_s = type { void (%struct.gs_glyph_data_s*, i8*)*, i32 (%struct.gs_glyph_data_s*, i32, i32)* }
%struct.gs_type42_mtx_s = type { i32, i64, i32 }
%struct.gs_glyph_cache_s = type opaque
%struct.build_proc_refs_s = type { %struct.ref_s, %struct.ref_s }
%struct.font_data_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %union._fs }
%union._fs = type { %struct._f42 }
%struct._f42 = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, i32, i64 }
%struct.gs_font_base_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"sfnts\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"GlyphDirectory\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"2.buildfont42\00", align 1
@zfont42_op_defs = constant [2 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zbuildfont42 }, %struct.op_def zeroinitializer], align 16
@st_gs_font_type42 = external constant %struct.gs_memory_struct_type_s, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"%Type42BuildChar\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"%Type42BuildGlyph\00", align 1

; Function Attrs: nounwind uwtable
define i32 @build_gs_TrueType_font(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %op, %struct.gs_font_type42_s** %ppfont, i32 %ftype, %struct.gs_memory_struct_type_s* %pstype, i8* %bcstr, i8* %bgstr, i32 %options) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  %ppfont.addr = alloca %struct.gs_font_type42_s**, align 8
  %ftype.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %bcstr.addr = alloca i8*, align 8
  %bgstr.addr = alloca i8*, align 8
  %options.addr = alloca i32, align 4
  %build = alloca %struct.build_proc_refs_s, align 8
  %sfnts = alloca %struct.ref_s, align 8
  %GlyphDirectory = alloca %struct.ref_s, align 8
  %pfont = alloca %struct.gs_font_type42_s*, align 8
  %pdata = alloca %struct.font_data_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.gs_font_type42_s** %ppfont, %struct.gs_font_type42_s*** %ppfont.addr, align 8, !tbaa !1
  store i32 %ftype, i32* %ftype.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store i8* %bcstr, i8** %bcstr.addr, align 8, !tbaa !1
  store i8* %bgstr, i8** %bgstr.addr, align 8, !tbaa !1
  store i32 %options, i32* %options.addr, align 4, !tbaa !5
  %0 = bitcast %struct.build_proc_refs_s* %build to i8*
  call void @llvm.lifetime.start(i64 32, i8* %0) #1
  %1 = bitcast %struct.ref_s* %sfnts to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #1
  %2 = bitcast %struct.ref_s* %GlyphDirectory to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #1
  %3 = bitcast %struct.gs_font_type42_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.font_data_s** %pdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %7 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !6
  %8 = bitcast %struct.gs_ref_memory_s* %7 to %struct.gs_memory_s*
  %9 = load i8*, i8** %bcstr.addr, align 8, !tbaa !1
  %10 = load i8*, i8** %bgstr.addr, align 8, !tbaa !1
  %call = call i32 @build_proc_name_refs(%struct.gs_memory_s* %8, %struct.build_proc_refs_s* %build, i8* %9, i8* %10) #3
  store i32 %call, i32* %code, align 4, !tbaa !20
  %11 = load i32, i32* %code, align 4, !tbaa !20
  %cmp = icmp slt i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %14 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 1
  %15 = load i8, i8* %arrayidx, align 1, !tbaa !5
  %conv = zext i8 %15 to i32
  %cmp1 = icmp eq i32 %conv, 2
  br i1 %cmp1, label %if.end.5, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %16 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call4 = call i32 @check_type_failed(%struct.ref_s* %16) #3
  store i32 %call4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory6 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %17, i32 0, i32 1
  %current7 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory6, i32 0, i32 0
  %18 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current7, align 8, !tbaa !6
  %19 = bitcast %struct.gs_ref_memory_s* %18 to %struct.gs_memory_s*
  %20 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call8 = call i32 @font_string_array_param(%struct.gs_memory_s* %19, %struct.ref_s* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), %struct.ref_s* %sfnts) #3
  store i32 %call8, i32* %code, align 4, !tbaa !20
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.5
  %21 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call11 = call i32 @font_GlyphDirectory_param(%struct.ref_s* %21, %struct.ref_s* %GlyphDirectory) #3
  store i32 %call11, i32* %code, align 4, !tbaa !20
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %lor.lhs.false, %if.end.5
  %22 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %lor.lhs.false
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %24 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %25 = load %struct.gs_font_type42_s**, %struct.gs_font_type42_s*** %ppfont.addr, align 8, !tbaa !1
  %26 = bitcast %struct.gs_font_type42_s** %25 to %struct.gs_font_base_s**
  %27 = load i32, i32* %ftype.addr, align 4, !tbaa !5
  %28 = load %struct.gs_memory_struct_type_s*, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  %29 = load i32, i32* %options.addr, align 4, !tbaa !5
  %call16 = call i32 @build_gs_primitive_font(%struct.gs_context_state_s* %23, %struct.ref_s* %24, %struct.gs_font_base_s** %26, i32 %27, %struct.gs_memory_struct_type_s* %28, %struct.build_proc_refs_s* %build, i32 %29) #3
  store i32 %call16, i32* %code, align 4, !tbaa !20
  %30 = load i32, i32* %code, align 4, !tbaa !20
  %cmp17 = icmp ne i32 %30, 0
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.15
  %31 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.end.15
  %32 = load %struct.gs_font_type42_s**, %struct.gs_font_type42_s*** %ppfont.addr, align 8, !tbaa !1
  %33 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %32, align 8, !tbaa !1
  store %struct.gs_font_type42_s* %33, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %34 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %34, i32 0, i32 8
  %35 = load i8*, i8** %client_data, align 8, !tbaa !21
  %36 = bitcast i8* %35 to %struct.font_data_s*
  store %struct.font_data_s* %36, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %37 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %37, i32 0, i32 6
  %type42 = bitcast %union._fs* %u to %struct._f42*
  %sfnts21 = getelementptr inbounds %struct._f42, %struct._f42* %type42, i32 0, i32 0
  %38 = bitcast %struct.ref_s* %sfnts21 to i8*
  %39 = bitcast %struct.ref_s* %sfnts to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 16, i32 8, i1 false), !tbaa.struct !33
  %40 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %u22 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %40, i32 0, i32 6
  %type4223 = bitcast %union._fs* %u22 to %struct._f42*
  %mru_sfnts_index = getelementptr inbounds %struct._f42, %struct._f42* %type4223, i32 0, i32 3
  store i32 0, i32* %mru_sfnts_index, align 4, !tbaa !37
  %41 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %u24 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %41, i32 0, i32 6
  %type4225 = bitcast %union._fs* %u24 to %struct._f42*
  %mru_sfnts_pos = getelementptr inbounds %struct._f42, %struct._f42* %type4225, i32 0, i32 4
  store i64 0, i64* %mru_sfnts_pos, align 8, !tbaa !39
  %42 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory26 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %42, i32 0, i32 1
  %new_mask = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory26, i32 0, i32 5
  %43 = load i32, i32* %new_mask, align 4, !tbaa !40
  %add = add i32 3584, %43
  %conv27 = trunc i32 %add to i16
  %44 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %u28 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %44, i32 0, i32 6
  %type4229 = bitcast %union._fs* %u28 to %struct._f42*
  %CIDMap = getelementptr inbounds %struct._f42, %struct._f42* %type4229, i32 0, i32 1
  %tas30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %CIDMap, i32 0, i32 0
  %type_attrs31 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas30, i32 0, i32 0
  store i16 %conv27, i16* %type_attrs31, align 2, !tbaa !41
  %45 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %u32 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %45, i32 0, i32 6
  %type4233 = bitcast %union._fs* %u32 to %struct._f42*
  %GlyphDirectory34 = getelementptr inbounds %struct._f42, %struct._f42* %type4233, i32 0, i32 2
  %46 = bitcast %struct.ref_s* %GlyphDirectory34 to i8*
  %47 = bitcast %struct.ref_s* %GlyphDirectory to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 16, i32 8, i1 false), !tbaa.struct !33
  %48 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %48, i32 0, i32 29
  %string_proc = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data, i32 0, i32 0
  store i32 (%struct.gs_font_type42_s*, i64, i32, i8**)* @z42_string_proc, i32 (%struct.gs_font_type42_s*, i64, i32, i8**)** %string_proc, align 8, !tbaa !42
  %49 = load %struct.font_data_s*, %struct.font_data_s** %pdata, align 8, !tbaa !1
  %50 = bitcast %struct.font_data_s* %49 to i8*
  %51 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %data35 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %51, i32 0, i32 29
  %proc_data = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data35, i32 0, i32 1
  store i8* %50, i8** %proc_data, align 8, !tbaa !43
  %52 = load i32, i32* %options.addr, align 4, !tbaa !5
  %and = and i32 %52, 32
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 1, i32 0
  %53 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %is_resource = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %53, i32 0, i32 4
  store i32 %cond, i32* %is_resource, align 4, !tbaa !44
  %54 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %call36 = call i32 @gs_type42_font_init(%struct.gs_font_type42_s* %54, i32 0) #3
  store i32 %call36, i32* %code, align 4, !tbaa !20
  %55 = load i32, i32* %code, align 4, !tbaa !20
  %cmp37 = icmp slt i32 %55, 0
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.20
  %56 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %56, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.40:                                        ; preds = %if.end.20
  %57 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %57, i32 0, i32 20
  %font_info = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs, i32 0, i32 2
  store i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)* @z42_font_info, i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)** %font_info, align 8, !tbaa !45
  %tas41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %GlyphDirectory, i32 0, i32 0
  %type_attrs42 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas41, i32 0, i32 0
  %58 = bitcast i16* %type_attrs42 to i8*
  %arrayidx43 = getelementptr inbounds i8, i8* %58, i64 1
  %59 = load i8, i8* %arrayidx43, align 1, !tbaa !5
  %conv44 = zext i8 %59 to i32
  %cmp45 = icmp eq i32 %conv44, 14
  br i1 %cmp45, label %if.else, label %if.then.47

if.then.47:                                       ; preds = %if.end.40
  %60 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %data48 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %60, i32 0, i32 29
  %get_outline = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data48, i32 0, i32 3
  store i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)* @z42_gdir_get_outline, i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)** %get_outline, align 8, !tbaa !46
  %61 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %procs49 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %61, i32 0, i32 20
  %enumerate_glyph = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs49, i32 0, i32 6
  store i32 (%struct.gs_font_s*, i32*, i32, i64*)* @z42_gdir_enumerate_glyph, i32 (%struct.gs_font_s*, i32*, i32, i64*)** %enumerate_glyph, align 8, !tbaa !47
  br label %if.end.52

if.else:                                          ; preds = %if.end.40
  %62 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %procs50 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %62, i32 0, i32 20
  %enumerate_glyph51 = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs50, i32 0, i32 6
  store i32 (%struct.gs_font_s*, i32*, i32, i64*)* @z42_enumerate_glyph, i32 (%struct.gs_font_s*, i32*, i32, i64*)** %enumerate_glyph51, align 8, !tbaa !47
  br label %if.end.52

if.end.52:                                        ; preds = %if.else, %if.then.47
  %63 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %data53 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %63, i32 0, i32 29
  %get_glyph_index = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data53, i32 0, i32 2
  store i32 (%struct.gs_font_type42_s*, i64)* @z42_get_glyph_index, i32 (%struct.gs_font_type42_s*, i64)** %get_glyph_index, align 8, !tbaa !48
  %64 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %data54 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %64, i32 0, i32 29
  %substitute_glyph_index_vertical = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data54, i32 0, i32 5
  store i32 (%struct.gs_font_type42_s*, i32, i32, i64)* @gs_type42_substitute_glyph_index_vertical, i32 (%struct.gs_font_type42_s*, i32, i32, i64)** %substitute_glyph_index_vertical, align 8, !tbaa !49
  %65 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %procs55 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %65, i32 0, i32 20
  %encode_char = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs55, i32 0, i32 4
  store i64 (%struct.gs_font_s*, i64, i32)* @z42_encode_char, i64 (%struct.gs_font_s*, i64, i32)** %encode_char, align 8, !tbaa !50
  %66 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %procs56 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %66, i32 0, i32 20
  %glyph_info = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs56, i32 0, i32 7
  store i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)* @z42_glyph_info, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)** %glyph_info, align 8, !tbaa !51
  %67 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %procs57 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %67, i32 0, i32 20
  %glyph_outline = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs57, i32 0, i32 8
  store i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)* @z42_glyph_outline, i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)** %glyph_outline, align 8, !tbaa !52
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.52, %if.then.39, %if.then.19, %if.then.14, %if.then.3, %if.then
  %68 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = bitcast %struct.font_data_s** %pdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  %70 = bitcast %struct.gs_font_type42_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = bitcast %struct.ref_s* %GlyphDirectory to i8*
  call void @llvm.lifetime.end(i64 16, i8* %71) #1
  %72 = bitcast %struct.ref_s* %sfnts to i8*
  call void @llvm.lifetime.end(i64 16, i8* %72) #1
  %73 = bitcast %struct.build_proc_refs_s* %build to i8*
  call void @llvm.lifetime.end(i64 32, i8* %73) #1
  %74 = load i32, i32* %retval
  ret i32 %74
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @build_proc_name_refs(%struct.gs_memory_s*, %struct.build_proc_refs_s*, i8*, i8*) #2

declare i32 @check_type_failed(%struct.ref_s*) #2

; Function Attrs: nounwind uwtable
define i32 @font_string_array_param(%struct.gs_memory_s* %mem, %struct.ref_s* %op, i8* %kstr, %struct.ref_s* %psa) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %op.addr = alloca %struct.ref_s*, align 8
  %kstr.addr = alloca i8*, align 8
  %psa.addr = alloca %struct.ref_s*, align 8
  %pvsa = alloca %struct.ref_s*, align 8
  %rstr0 = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store i8* %kstr, i8** %kstr.addr, align 8, !tbaa !1
  store %struct.ref_s* %psa, %struct.ref_s** %psa.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %pvsa to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.ref_s* %rstr0 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %kstr.addr, align 8, !tbaa !1
  %call = call i32 @dict_find_string(%struct.ref_s* %3, i8* %4, %struct.ref_s** %pvsa) #3
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.ref_s*, %struct.ref_s** %psa.addr, align 8, !tbaa !1
  %6 = load %struct.ref_s*, %struct.ref_s** %pvsa, align 8, !tbaa !1
  %7 = bitcast %struct.ref_s* %5 to i8*
  %8 = bitcast %struct.ref_s* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 16, i32 8, i1 false), !tbaa.struct !33
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %10 = load %struct.ref_s*, %struct.ref_s** %pvsa, align 8, !tbaa !1
  %call1 = call i32 @array_get(%struct.gs_memory_s* %9, %struct.ref_s* %10, i64 0, %struct.ref_s* %rstr0) #3
  store i32 %call1, i32* %code, align 4, !tbaa !20
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %11 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rstr0, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %12 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 1
  %13 = load i8, i8* %arrayidx, align 1, !tbaa !5
  %conv = zext i8 %13 to i32
  %cmp5 = icmp eq i32 %conv, 18
  br i1 %cmp5, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.4
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end.4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.8, %if.then.7, %if.then.3, %if.then
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  %15 = bitcast %struct.ref_s* %rstr0 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %15) #1
  %16 = bitcast %struct.ref_s** %pvsa to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define i32 @font_GlyphDirectory_param(%struct.ref_s* %op, %struct.ref_s* %pGlyphDirectory) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %pGlyphDirectory.addr = alloca %struct.ref_s*, align 8
  %pgdir = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.ref_s* %pGlyphDirectory, %struct.ref_s** %pGlyphDirectory.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %pgdir to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ref_s*, %struct.ref_s** %op.addr, align 8, !tbaa !1
  %call = call i32 @dict_find_string(%struct.ref_s* %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), %struct.ref_s** %pgdir) #3
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.ref_s*, %struct.ref_s** %pGlyphDirectory.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 3584, i16* %type_attrs, align 2, !tbaa !41
  br label %if.end.12

if.else:                                          ; preds = %entry
  %3 = load %struct.ref_s*, %struct.ref_s** %pgdir, align 8, !tbaa !1
  %tas1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 0
  %type_attrs2 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1, i32 0, i32 0
  %4 = bitcast i16* %type_attrs2 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !5
  %conv = zext i8 %5 to i32
  %cmp3 = icmp eq i32 %conv, 2
  br i1 %cmp3, label %if.else.11, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %6 = load %struct.ref_s*, %struct.ref_s** %pgdir, align 8, !tbaa !1
  %tas5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %type_attrs6 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas5, i32 0, i32 0
  %7 = load i16, i16* %type_attrs6, align 2, !tbaa !41
  %conv7 = zext i16 %7 to i32
  %and = and i32 %conv7, 15360
  %cmp8 = icmp eq i32 %and, 1024
  br i1 %cmp8, label %if.else.11, label %if.then.10

if.then.10:                                       ; preds = %land.lhs.true
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.11:                                       ; preds = %land.lhs.true, %if.else
  %8 = load %struct.ref_s*, %struct.ref_s** %pGlyphDirectory.addr, align 8, !tbaa !1
  %9 = load %struct.ref_s*, %struct.ref_s** %pgdir, align 8, !tbaa !1
  %10 = bitcast %struct.ref_s* %8 to i8*
  %11 = bitcast %struct.ref_s* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 16, i32 8, i1 false), !tbaa.struct !33
  br label %if.end

if.end:                                           ; preds = %if.else.11
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.12, %if.then.10
  %12 = bitcast %struct.ref_s** %pgdir to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  %13 = load i32, i32* %retval
  ret i32 %13
}

declare i32 @build_gs_primitive_font(%struct.gs_context_state_s*, %struct.ref_s*, %struct.gs_font_base_s**, i32, %struct.gs_memory_struct_type_s*, %struct.build_proc_refs_s*, i32) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal i32 @z42_string_proc(%struct.gs_font_type42_s* %pfont, i64 %offset, i32 %length, i8** %pdata) #0 {
entry:
  %pfont.addr = alloca %struct.gs_font_type42_s*, align 8
  %offset.addr = alloca i64, align 8
  %length.addr = alloca i32, align 4
  %pdata.addr = alloca i8**, align 8
  store %struct.gs_font_type42_s* %pfont, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  store i64 %offset, i64* %offset.addr, align 8, !tbaa !35
  store i32 %length, i32* %length.addr, align 4, !tbaa !20
  store i8** %pdata, i8*** %pdata.addr, align 8, !tbaa !1
  %0 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %0, i32 0, i32 2
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !53
  %2 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %2, i32 0, i32 8
  %3 = load i8*, i8** %client_data, align 8, !tbaa !21
  %4 = bitcast i8* %3 to %struct.font_data_s*
  %u = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %4, i32 0, i32 6
  %type42 = bitcast %union._fs* %u to %struct._f42*
  %sfnts = getelementptr inbounds %struct._f42, %struct._f42* %type42, i32 0, i32 0
  %5 = load i64, i64* %offset.addr, align 8, !tbaa !35
  %6 = load i32, i32* %length.addr, align 4, !tbaa !20
  %7 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %client_data1 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %7, i32 0, i32 8
  %8 = load i8*, i8** %client_data1, align 8, !tbaa !21
  %9 = bitcast i8* %8 to %struct.font_data_s*
  %u2 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %9, i32 0, i32 6
  %type423 = bitcast %union._fs* %u2 to %struct._f42*
  %mru_sfnts_index = getelementptr inbounds %struct._f42, %struct._f42* %type423, i32 0, i32 3
  %10 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %client_data4 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %10, i32 0, i32 8
  %11 = load i8*, i8** %client_data4, align 8, !tbaa !21
  %12 = bitcast i8* %11 to %struct.font_data_s*
  %u5 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %12, i32 0, i32 6
  %type426 = bitcast %union._fs* %u5 to %struct._f42*
  %mru_sfnts_pos = getelementptr inbounds %struct._f42, %struct._f42* %type426, i32 0, i32 4
  %13 = load i8**, i8*** %pdata.addr, align 8, !tbaa !1
  %call = call i32 @string_array_access_proc(%struct.gs_memory_s* %1, %struct.ref_s* %sfnts, i32 2, i64 %5, i32 %6, i32* %mru_sfnts_index, i64* %mru_sfnts_pos, i8** %13) #3
  ret i32 %call
}

declare i32 @gs_type42_font_init(%struct.gs_font_type42_s*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @z42_font_info(%struct.gs_font_s* %font, %struct.gs_point_s* %pscale, i32 %members, %struct.gs_font_info_s* %info) #0 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_s*, align 8
  %pscale.addr = alloca %struct.gs_point_s*, align 8
  %members.addr = alloca i32, align 4
  %info.addr = alloca %struct.gs_font_info_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store %struct.gs_point_s* %pscale, %struct.gs_point_s** %pscale.addr, align 8, !tbaa !1
  store i32 %members, i32* %members.addr, align 4, !tbaa !20
  store %struct.gs_font_info_s* %info, %struct.gs_font_info_s** %info.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %2 = load %struct.gs_point_s*, %struct.gs_point_s** %pscale.addr, align 8, !tbaa !1
  %3 = load i32, i32* %members.addr, align 4, !tbaa !20
  %4 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %info.addr, align 8, !tbaa !1
  %call = call i32 @zfont_info(%struct.gs_font_s* %1, %struct.gs_point_s* %2, i32 %3, %struct.gs_font_info_s* %4) #3
  store i32 %call, i32* %code, align 4, !tbaa !20
  %5 = load i32, i32* %code, align 4, !tbaa !20
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %8 = load %struct.gs_point_s*, %struct.gs_point_s** %pscale.addr, align 8, !tbaa !1
  %9 = load i32, i32* %members.addr, align 4, !tbaa !20
  %10 = load %struct.gs_font_info_s*, %struct.gs_font_info_s** %info.addr, align 8, !tbaa !1
  %call1 = call i32 @gs_truetype_font_info(%struct.gs_font_s* %7, %struct.gs_point_s* %8, i32 %9, %struct.gs_font_info_s* %10) #3
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #1
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @z42_gdir_get_outline(%struct.gs_font_type42_s* %pfont, i32 %glyph_index, %struct.gs_glyph_data_s* %pgd) #0 {
entry:
  %pfont.addr = alloca %struct.gs_font_type42_s*, align 8
  %glyph_index.addr = alloca i32, align 4
  %pgd.addr = alloca %struct.gs_glyph_data_s*, align 8
  %pfdata = alloca %struct.font_data_s*, align 8
  %pgdir = alloca %struct.ref_s*, align 8
  store %struct.gs_font_type42_s* %pfont, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  store i32 %glyph_index, i32* %glyph_index.addr, align 4, !tbaa !20
  store %struct.gs_glyph_data_s* %pgd, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %0 = bitcast %struct.font_data_s** %pfdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %1, i32 0, i32 8
  %2 = load i8*, i8** %client_data, align 8, !tbaa !21
  %3 = bitcast i8* %2 to %struct.font_data_s*
  store %struct.font_data_s* %3, %struct.font_data_s** %pfdata, align 8, !tbaa !1
  %4 = bitcast %struct.ref_s** %pgdir to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.font_data_s*, %struct.font_data_s** %pfdata, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %5, i32 0, i32 6
  %type42 = bitcast %union._fs* %u to %struct._f42*
  %GlyphDirectory = getelementptr inbounds %struct._f42, %struct._f42* %type42, i32 0, i32 2
  store %struct.ref_s* %GlyphDirectory, %struct.ref_s** %pgdir, align 8, !tbaa !1
  %6 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %6, i32 0, i32 2
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !53
  %8 = load %struct.ref_s*, %struct.ref_s** %pgdir, align 8, !tbaa !1
  %9 = load i32, i32* %glyph_index.addr, align 4, !tbaa !20
  %conv = zext i32 %9 to i64
  %10 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %call = call i32 @font_gdir_get_outline(%struct.gs_memory_s* %7, %struct.ref_s* %8, i64 %conv, %struct.gs_glyph_data_s* %10) #3
  %11 = bitcast %struct.ref_s** %pgdir to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  %12 = bitcast %struct.font_data_s** %pfdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @z42_gdir_enumerate_glyph(%struct.gs_font_s* %font, i32* %pindex, i32 %glyph_space, i64* %pglyph) #0 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_s*, align 8
  %pindex.addr = alloca i32*, align 8
  %glyph_space.addr = alloca i32, align 4
  %pglyph.addr = alloca i64*, align 8
  %pgdict = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %gdef = alloca %struct.ref_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i32* %pindex, i32** %pindex.addr, align 8, !tbaa !1
  store i32 %glyph_space, i32* %glyph_space.addr, align 4, !tbaa !5
  store i64* %pglyph, i64** %pglyph.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %pgdict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i32, i32* %glyph_space.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %3, i32 0, i32 8
  %4 = load i8*, i8** %client_data, align 8, !tbaa !54
  %5 = bitcast i8* %4 to %struct.font_data_s*
  %u = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %5, i32 0, i32 6
  %type42 = bitcast %union._fs* %u to %struct._f42*
  %GlyphDirectory = getelementptr inbounds %struct._f42, %struct._f42* %type42, i32 0, i32 2
  store %struct.ref_s* %GlyphDirectory, %struct.ref_s** %pgdict, align 8, !tbaa !1
  %6 = load %struct.ref_s*, %struct.ref_s** %pgdict, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %7 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !5
  %conv = zext i8 %8 to i32
  %cmp1 = icmp eq i32 %conv, 2
  br i1 %cmp1, label %if.end.18, label %if.then.3

if.then.3:                                        ; preds = %if.then
  %9 = bitcast %struct.ref_s* %gdef to i8*
  call void @llvm.lifetime.start(i64 16, i8* %9) #1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.3
  %10 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %10, i32 0, i32 2
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !56
  %12 = load %struct.ref_s*, %struct.ref_s** %pgdict, align 8, !tbaa !1
  %13 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  %14 = load i32, i32* %13, align 4, !tbaa !20
  %conv4 = sext i32 %14 to i64
  %call = call i32 @array_get(%struct.gs_memory_s* %11, %struct.ref_s* %12, i64 %conv4, %struct.ref_s* %gdef) #3
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %for.cond
  %15 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  store i32 0, i32* %15, align 4, !tbaa !20
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.cond
  %tas8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %gdef, i32 0, i32 0
  %type_attrs9 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas8, i32 0, i32 0
  %16 = bitcast i16* %type_attrs9 to i8*
  %arrayidx10 = getelementptr inbounds i8, i8* %16, i64 1
  %17 = load i8, i8* %arrayidx10, align 1, !tbaa !5
  %conv11 = zext i8 %17 to i32
  %cmp12 = icmp eq i32 %conv11, 14
  br i1 %cmp12, label %if.end.16, label %if.then.14

if.then.14:                                       ; preds = %if.end
  %18 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  %19 = load i32, i32* %18, align 4, !tbaa !20
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %18, align 4, !tbaa !20
  %conv15 = sext i32 %19 to i64
  %add = add i64 3221225472, %conv15
  %20 = load i64*, i64** %pglyph.addr, align 8, !tbaa !1
  store i64 %add, i64* %20, align 8, !tbaa !35
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %21 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  %22 = load i32, i32* %21, align 4, !tbaa !20
  %inc17 = add nsw i32 %22, 1
  store i32 %inc17, i32* %21, align 4, !tbaa !20
  br label %for.cond

cleanup:                                          ; preds = %if.then.14, %if.then.7
  %23 = bitcast %struct.ref_s* %gdef to i8*
  call void @llvm.lifetime.end(i64 16, i8* %23) #1
  br label %cleanup.30

if.end.18:                                        ; preds = %if.then
  br label %if.end.20

if.else:                                          ; preds = %entry
  %24 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %client_data19 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %24, i32 0, i32 8
  %25 = load i8*, i8** %client_data19, align 8, !tbaa !54
  %26 = bitcast i8* %25 to %struct.font_data_s*
  %CharStrings = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %26, i32 0, i32 4
  store %struct.ref_s* %CharStrings, %struct.ref_s** %pgdict, align 8, !tbaa !1
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.end.18
  %27 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %memory21 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %27, i32 0, i32 2
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory21, align 8, !tbaa !56
  %29 = load %struct.ref_s*, %struct.ref_s** %pgdict, align 8, !tbaa !1
  %30 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  %31 = load i64*, i64** %pglyph.addr, align 8, !tbaa !1
  %call22 = call i32 @zchar_enumerate_glyph(%struct.gs_memory_s* %28, %struct.ref_s* %29, i32* %30, i64* %31) #3
  store i32 %call22, i32* %code, align 4, !tbaa !20
  %32 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  %33 = load i32, i32* %32, align 4, !tbaa !20
  %cmp23 = icmp ne i32 %33, 0
  br i1 %cmp23, label %land.lhs.true, label %if.end.29

land.lhs.true:                                    ; preds = %if.end.20
  %34 = load i64*, i64** %pglyph.addr, align 8, !tbaa !1
  %35 = load i64, i64* %34, align 8, !tbaa !35
  %cmp25 = icmp uge i64 %35, 2147483648
  br i1 %cmp25, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %land.lhs.true
  %36 = load i64*, i64** %pglyph.addr, align 8, !tbaa !1
  %37 = load i64, i64* %36, align 8, !tbaa !35
  %sub = sub i64 %37, 2147483648
  %add28 = add i64 %sub, 3221225472
  %38 = load i64*, i64** %pglyph.addr, align 8, !tbaa !1
  store i64 %add28, i64* %38, align 8, !tbaa !35
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %land.lhs.true, %if.end.20
  %39 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %39, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.30

cleanup.30:                                       ; preds = %if.end.29, %cleanup
  %40 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast %struct.ref_s** %pgdict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = load i32, i32* %retval
  ret i32 %42
}

; Function Attrs: nounwind uwtable
define internal i32 @z42_enumerate_glyph(%struct.gs_font_s* %font, i32* %pindex, i32 %glyph_space, i64* %pglyph) #0 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_s*, align 8
  %pindex.addr = alloca i32*, align 8
  %glyph_space.addr = alloca i32, align 4
  %pglyph.addr = alloca i64*, align 8
  %pcsdict = alloca %struct.ref_s*, align 8
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i32* %pindex, i32** %pindex.addr, align 8, !tbaa !1
  store i32 %glyph_space, i32* %glyph_space.addr, align 4, !tbaa !5
  store i64* %pglyph, i64** %pglyph.addr, align 8, !tbaa !1
  %0 = load i32, i32* %glyph_space.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %2 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  %3 = load i32, i32* %glyph_space.addr, align 4, !tbaa !5
  %4 = load i64*, i64** %pglyph.addr, align 8, !tbaa !1
  %call = call i32 @gs_type42_enumerate_glyph(%struct.gs_font_s* %1, i32* %2, i32 %3, i64* %4) #3
  store i32 %call, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %5 = bitcast %struct.ref_s** %pcsdict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %6, i32 0, i32 8
  %7 = load i8*, i8** %client_data, align 8, !tbaa !54
  %8 = bitcast i8* %7 to %struct.font_data_s*
  %CharStrings = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %8, i32 0, i32 4
  store %struct.ref_s* %CharStrings, %struct.ref_s** %pcsdict, align 8, !tbaa !1
  %9 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %9, i32 0, i32 2
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !56
  %11 = load %struct.ref_s*, %struct.ref_s** %pcsdict, align 8, !tbaa !1
  %12 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  %13 = load i64*, i64** %pglyph.addr, align 8, !tbaa !1
  %call1 = call i32 @zchar_enumerate_glyph(%struct.gs_memory_s* %10, %struct.ref_s* %11, i32* %12, i64* %13) #3
  store i32 %call1, i32* %retval
  %14 = bitcast %struct.ref_s** %pcsdict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  br label %return

return:                                           ; preds = %if.else, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @z42_get_glyph_index(%struct.gs_font_type42_s* %pfont, i64 %glyph) #0 {
entry:
  %pfont.addr = alloca %struct.gs_font_type42_s*, align 8
  %glyph.addr = alloca i64, align 8
  %gid = alloca i64, align 8
  store %struct.gs_font_type42_s* %pfont, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !35
  %0 = bitcast i64* %gid to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_font_type42_s* %1 to %struct.gs_font_s*
  %3 = load i64, i64* %glyph.addr, align 8, !tbaa !35
  %call = call i64 @glyph_to_index(%struct.gs_font_s* %2, i64 %3) #3
  store i64 %call, i64* %gid, align 8, !tbaa !35
  %4 = load i64, i64* %gid, align 8, !tbaa !35
  %sub = sub i64 %4, 3221225472
  %conv = trunc i64 %sub to i32
  %5 = bitcast i64* %gid to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret i32 %conv
}

declare i32 @gs_type42_substitute_glyph_index_vertical(%struct.gs_font_type42_s*, i32, i32, i64) #2

; Function Attrs: nounwind uwtable
define internal i64 @z42_encode_char(%struct.gs_font_s* %font, i64 %chr, i32 %glyph_space) #0 {
entry:
  %font.addr = alloca %struct.gs_font_s*, align 8
  %chr.addr = alloca i64, align 8
  %glyph_space.addr = alloca i32, align 4
  %glyph = alloca i64, align 8
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i64 %chr, i64* %chr.addr, align 8, !tbaa !35
  store i32 %glyph_space, i32* %glyph_space.addr, align 4, !tbaa !5
  %0 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %2 = load i64, i64* %chr.addr, align 8, !tbaa !35
  %3 = load i32, i32* %glyph_space.addr, align 4, !tbaa !5
  %call = call i64 @zfont_encode_char(%struct.gs_font_s* %1, i64 %2, i32 %3) #3
  store i64 %call, i64* %glyph, align 8, !tbaa !35
  %4 = load i32, i32* %glyph_space.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %5 = load i64, i64* %glyph, align 8, !tbaa !35
  %cmp1 = icmp ne i64 %5, 2147483647
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %6 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %7 = load i64, i64* %glyph, align 8, !tbaa !35
  %call2 = call i64 @glyph_to_index(%struct.gs_font_s* %6, i64 %7) #3
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  %8 = load i64, i64* %glyph, align 8, !tbaa !35
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call2, %cond.true ], [ %8, %cond.false ]
  %9 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  ret i64 %cond
}

; Function Attrs: nounwind uwtable
define internal i32 @z42_glyph_info(%struct.gs_font_s* %font, i64 %glyph, %struct.gs_matrix_s* %pmat, i32 %members, %struct.gs_glyph_info_s* %info) #0 {
entry:
  %font.addr = alloca %struct.gs_font_s*, align 8
  %glyph.addr = alloca i64, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %members.addr = alloca i32, align 4
  %info.addr = alloca %struct.gs_glyph_info_s*, align 8
  %wmode = alloca i32, align 4
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !35
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store i32 %members, i32* %members.addr, align 4, !tbaa !20
  store %struct.gs_glyph_info_s* %info, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %0 = bitcast i32* %wmode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %WMode = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %1, i32 0, i32 16
  %2 = load i32, i32* %WMode, align 4, !tbaa !57
  store i32 %2, i32* %wmode, align 4, !tbaa !20
  %3 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %4 = load i64, i64* %glyph.addr, align 8, !tbaa !35
  %5 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %6 = load i32, i32* %members.addr, align 4, !tbaa !20
  %7 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %8 = load i32, i32* %wmode, align 4, !tbaa !20
  %call = call i32 @z1_glyph_info_generic(%struct.gs_font_s* %3, i64 %4, %struct.gs_matrix_s* %5, i32 %6, %struct.gs_glyph_info_s* %7, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)* @gs_type42_glyph_info, i32 %8) #3
  %9 = bitcast i32* %wmode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @z42_glyph_outline(%struct.gs_font_s* %font, i32 %WMode, i64 %glyph, %struct.gs_matrix_s* %pmat, %struct.gx_path_s* %ppath, double* %sbw) #0 {
entry:
  %font.addr = alloca %struct.gs_font_s*, align 8
  %WMode.addr = alloca i32, align 4
  %glyph.addr = alloca i64, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %sbw.addr = alloca double*, align 8
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i32 %WMode, i32* %WMode.addr, align 4, !tbaa !20
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !35
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store double* %sbw, double** %sbw.addr, align 8, !tbaa !1
  %0 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %1 = load i32, i32* %WMode.addr, align 4, !tbaa !20
  %2 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %3 = load i64, i64* %glyph.addr, align 8, !tbaa !35
  %call = call i64 @glyph_to_index(%struct.gs_font_s* %2, i64 %3) #3
  %4 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %5 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %6 = load double*, double** %sbw.addr, align 8, !tbaa !1
  %call1 = call i32 @gs_type42_glyph_outline(%struct.gs_font_s* %0, i32 %1, i64 %call, %struct.gs_matrix_s* %4, %struct.gx_path_s* %5, double* %6) #3
  ret i32 %call1
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i32 @dict_find_string(%struct.ref_s*, i8*, %struct.ref_s**) #2

declare i32 @array_get(%struct.gs_memory_s*, %struct.ref_s*, i64, %struct.ref_s*) #2

; Function Attrs: nounwind uwtable
define i32 @string_array_access_proc(%struct.gs_memory_s* %mem, %struct.ref_s* %psa, i32 %modulus, i64 %offset, i32 %length, i32* %mru_index, i64* %mru_pos, i8** %pdata) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %psa.addr = alloca %struct.ref_s*, align 8
  %modulus.addr = alloca i32, align 4
  %offset.addr = alloca i64, align 8
  %length.addr = alloca i32, align 4
  %mru_index.addr = alloca i32*, align 8
  %mru_pos.addr = alloca i64*, align 8
  %pdata.addr = alloca i8**, align 8
  %left = alloca i64, align 8
  %index = alloca i32, align 4
  %backwards = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %rstr = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  %size = alloca i32, align 4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %psa, %struct.ref_s** %psa.addr, align 8, !tbaa !1
  store i32 %modulus, i32* %modulus.addr, align 4, !tbaa !20
  store i64 %offset, i64* %offset.addr, align 8, !tbaa !35
  store i32 %length, i32* %length.addr, align 4, !tbaa !20
  store i32* %mru_index, i32** %mru_index.addr, align 8, !tbaa !1
  store i64* %mru_pos, i64** %mru_pos.addr, align 8, !tbaa !1
  store i8** %pdata, i8*** %pdata.addr, align 8, !tbaa !1
  %0 = bitcast i64* %left to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %backwards to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i32, i32* %length.addr, align 4, !tbaa !20
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.63

if.end:                                           ; preds = %entry
  %4 = load i32*, i32** %mru_index.addr, align 8, !tbaa !1
  %tobool = icmp ne i32* %4, null
  br i1 %tobool, label %land.lhs.true, label %if.else.11

land.lhs.true:                                    ; preds = %if.end
  %5 = load i64*, i64** %mru_pos.addr, align 8, !tbaa !1
  %tobool1 = icmp ne i64* %5, null
  br i1 %tobool1, label %land.lhs.true.2, label %if.else.11

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %6 = load i64, i64* %offset.addr, align 8, !tbaa !35
  %7 = load i64*, i64** %mru_pos.addr, align 8, !tbaa !1
  %8 = load i64, i64* %7, align 8, !tbaa !35
  %shr = lshr i64 %8, 1
  %cmp3 = icmp uge i64 %6, %shr
  br i1 %cmp3, label %if.then.4, label %if.else.11

if.then.4:                                        ; preds = %land.lhs.true.2
  %9 = load i64*, i64** %mru_pos.addr, align 8, !tbaa !1
  %10 = load i64, i64* %9, align 8, !tbaa !35
  %11 = load i64, i64* %offset.addr, align 8, !tbaa !35
  %cmp5 = icmp ugt i64 %10, %11
  %conv = zext i1 %cmp5 to i32
  store i32 %conv, i32* %backwards, align 4, !tbaa !20
  %12 = load i32, i32* %backwards, align 4, !tbaa !20
  %tobool6 = icmp ne i32 %12, 0
  br i1 %tobool6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then.4
  %13 = load i32*, i32** %mru_index.addr, align 8, !tbaa !1
  %14 = load i32, i32* %13, align 4, !tbaa !20
  %sub = sub i32 %14, 1
  store i32 %sub, i32* %index, align 4, !tbaa !20
  %15 = load i64*, i64** %mru_pos.addr, align 8, !tbaa !1
  %16 = load i64, i64* %15, align 8, !tbaa !35
  %17 = load i64, i64* %offset.addr, align 8, !tbaa !35
  %sub8 = sub i64 %16, %17
  store i64 %sub8, i64* %left, align 8, !tbaa !35
  br label %if.end.10

if.else:                                          ; preds = %if.then.4
  %18 = load i32*, i32** %mru_index.addr, align 8, !tbaa !1
  %19 = load i32, i32* %18, align 4, !tbaa !20
  store i32 %19, i32* %index, align 4, !tbaa !20
  %20 = load i64, i64* %offset.addr, align 8, !tbaa !35
  %21 = load i64*, i64** %mru_pos.addr, align 8, !tbaa !1
  %22 = load i64, i64* %21, align 8, !tbaa !35
  %sub9 = sub i64 %20, %22
  store i64 %sub9, i64* %left, align 8, !tbaa !35
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.7
  br label %if.end.12

if.else.11:                                       ; preds = %land.lhs.true.2, %land.lhs.true, %if.end
  store i32 0, i32* %backwards, align 4, !tbaa !20
  store i32 0, i32* %index, align 4, !tbaa !20
  %23 = load i64, i64* %offset.addr, align 8, !tbaa !35
  store i64 %23, i64* %left, align 8, !tbaa !35
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.11, %if.end.10
  br label %for.cond

for.cond:                                         ; preds = %cleanup.cont, %cleanup, %if.end.12
  %24 = bitcast %struct.ref_s* %rstr to i8*
  call void @llvm.lifetime.start(i64 16, i8* %24) #1
  %25 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %27 = load %struct.ref_s*, %struct.ref_s** %psa.addr, align 8, !tbaa !1
  %28 = load i32, i32* %index, align 4, !tbaa !20
  %conv13 = zext i32 %28 to i64
  %call = call i32 @array_get(%struct.gs_memory_s* %26, %struct.ref_s* %27, i64 %conv13, %struct.ref_s* %rstr) #3
  store i32 %call, i32* %code, align 4, !tbaa !20
  %29 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  %30 = load i32, i32* %code, align 4, !tbaa !20
  %cmp14 = icmp slt i32 %30, 0
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %for.cond
  %31 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %for.cond
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rstr, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %32 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %32, i64 1
  %33 = load i8, i8* %arrayidx, align 1, !tbaa !5
  %conv18 = zext i8 %33 to i32
  %cmp19 = icmp eq i32 %conv18, 18
  br i1 %cmp19, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %if.end.17
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %if.end.17
  %tas23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rstr, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas23, i32 0, i32 2
  %34 = load i32, i32* %rsize, align 4, !tbaa !58
  %35 = load i32, i32* %modulus.addr, align 4, !tbaa !20
  %sub24 = sub nsw i32 0, %35
  %and = and i32 %34, %sub24
  store i32 %and, i32* %size, align 4, !tbaa !20
  %36 = load i32, i32* %backwards, align 4, !tbaa !20
  %tobool25 = icmp ne i32 %36, 0
  br i1 %tobool25, label %if.then.26, label %if.end.37

if.then.26:                                       ; preds = %if.end.22
  %37 = load i64, i64* %left, align 8, !tbaa !35
  %38 = load i32, i32* %size, align 4, !tbaa !20
  %conv27 = zext i32 %38 to i64
  %cmp28 = icmp ule i64 %37, %conv27
  br i1 %cmp28, label %if.then.30, label %if.else.33

if.then.30:                                       ; preds = %if.then.26
  %39 = load i32, i32* %size, align 4, !tbaa !20
  %conv31 = zext i32 %39 to i64
  %40 = load i64, i64* %left, align 8, !tbaa !35
  %sub32 = sub i64 %conv31, %40
  store i64 %sub32, i64* %left, align 8, !tbaa !35
  store i32 0, i32* %backwards, align 4, !tbaa !20
  br label %if.end.36

if.else.33:                                       ; preds = %if.then.26
  %41 = load i32, i32* %size, align 4, !tbaa !20
  %conv34 = zext i32 %41 to i64
  %42 = load i64, i64* %left, align 8, !tbaa !35
  %sub35 = sub i64 %42, %conv34
  store i64 %sub35, i64* %left, align 8, !tbaa !35
  %43 = load i32, i32* %index, align 4, !tbaa !20
  %dec = add i32 %43, -1
  store i32 %dec, i32* %index, align 4, !tbaa !20
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end.36:                                        ; preds = %if.then.30
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.end.22
  %44 = load i64, i64* %left, align 8, !tbaa !35
  %45 = load i32, i32* %size, align 4, !tbaa !20
  %conv38 = zext i32 %45 to i64
  %cmp39 = icmp ult i64 %44, %conv38
  br i1 %cmp39, label %if.then.41, label %if.end.58

if.then.41:                                       ; preds = %if.end.37
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rstr, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value to i8**
  %46 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  %47 = load i64, i64* %left, align 8, !tbaa !35
  %add.ptr = getelementptr inbounds i8, i8* %46, i64 %47
  %48 = load i8**, i8*** %pdata.addr, align 8, !tbaa !1
  store i8* %add.ptr, i8** %48, align 8, !tbaa !1
  %49 = load i32*, i32** %mru_index.addr, align 8, !tbaa !1
  %tobool42 = icmp ne i32* %49, null
  br i1 %tobool42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.then.41
  %50 = load i32, i32* %index, align 4, !tbaa !20
  %51 = load i32*, i32** %mru_index.addr, align 8, !tbaa !1
  store i32 %50, i32* %51, align 4, !tbaa !20
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %if.then.41
  %52 = load i64*, i64** %mru_pos.addr, align 8, !tbaa !1
  %tobool45 = icmp ne i64* %52, null
  br i1 %tobool45, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %if.end.44
  %53 = load i64, i64* %offset.addr, align 8, !tbaa !35
  %54 = load i64, i64* %left, align 8, !tbaa !35
  %sub47 = sub i64 %53, %54
  %55 = load i64*, i64** %mru_pos.addr, align 8, !tbaa !1
  store i64 %sub47, i64* %55, align 8, !tbaa !35
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.46, %if.end.44
  %56 = load i64, i64* %left, align 8, !tbaa !35
  %57 = load i32, i32* %length.addr, align 4, !tbaa !20
  %conv49 = zext i32 %57 to i64
  %add = add i64 %56, %conv49
  %58 = load i32, i32* %size, align 4, !tbaa !20
  %conv50 = zext i32 %58 to i64
  %cmp51 = icmp ugt i64 %add, %conv50
  br i1 %cmp51, label %if.then.53, label %if.end.57

if.then.53:                                       ; preds = %if.end.48
  %59 = load i32, i32* %size, align 4, !tbaa !20
  %conv54 = zext i32 %59 to i64
  %60 = load i64, i64* %left, align 8, !tbaa !35
  %sub55 = sub i64 %conv54, %60
  %conv56 = trunc i64 %sub55 to i32
  store i32 %conv56, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.57:                                        ; preds = %if.end.48
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.58:                                        ; preds = %if.end.37
  %61 = load i32, i32* %size, align 4, !tbaa !20
  %conv59 = zext i32 %61 to i64
  %62 = load i64, i64* %left, align 8, !tbaa !35
  %sub60 = sub i64 %62, %conv59
  store i64 %sub60, i64* %left, align 8, !tbaa !35
  %63 = load i32, i32* %index, align 4, !tbaa !20
  %inc = add i32 %63, 1
  store i32 %inc, i32* %index, align 4, !tbaa !20
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.58, %if.end.57, %if.then.53, %if.else.33, %if.then.21, %if.then.16
  %64 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast %struct.ref_s* %rstr to i8*
  call void @llvm.lifetime.end(i64 16, i8* %66) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.63 [
    i32 0, label %cleanup.cont
    i32 3, label %for.cond
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond

cleanup.63:                                       ; preds = %cleanup, %if.then
  %67 = bitcast i32* %backwards to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = bitcast i64* %left to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  %70 = load i32, i32* %retval
  ret i32 %70
}

; Function Attrs: nounwind uwtable
define internal i32 @zbuildfont42(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %pfont = alloca %struct.gs_font_type42_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !59
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gs_font_type42_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @build_gs_TrueType_font(%struct.gs_context_state_s* %5, %struct.ref_s* %6, %struct.gs_font_type42_s** %pfont, i32 42, %struct.gs_memory_struct_type_s* @st_gs_font_type42, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i32 0) #3
  store i32 %call, i32* %code, align 4, !tbaa !20
  %7 = load i32, i32* %code, align 4, !tbaa !20
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %10 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %11 = bitcast %struct.gs_font_type42_s* %10 to %struct.gs_font_s*
  %call1 = call i32 @define_gs_font(%struct.gs_context_state_s* %9, %struct.gs_font_s* %11) #3
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  %13 = bitcast %struct.gs_font_type42_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  %14 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i32 @font_gdir_get_outline(%struct.gs_memory_s* %mem, %struct.ref_s* %pgdir, i64 %glyph_index, %struct.gs_glyph_data_s* %pgd) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pgdir.addr = alloca %struct.ref_s*, align 8
  %glyph_index.addr = alloca i64, align 8
  %pgd.addr = alloca %struct.gs_glyph_data_s*, align 8
  %iglyph = alloca %struct.ref_s, align 8
  %gdef = alloca %struct.ref_s, align 8
  %pgdef = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.ref_s* %pgdir, %struct.ref_s** %pgdir.addr, align 8, !tbaa !1
  store i64 %glyph_index, i64* %glyph_index.addr, align 8, !tbaa !35
  store %struct.gs_glyph_data_s* %pgd, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s* %iglyph to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = bitcast %struct.ref_s* %gdef to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #1
  %2 = bitcast %struct.ref_s** %pgdef to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %pgdir.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %5 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !5
  %conv = zext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load i64, i64* %glyph_index.addr, align 8, !tbaa !35
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %iglyph, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  store i64 %7, i64* %intval, align 8, !tbaa !35
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %iglyph, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  store i16 2816, i16* %type_attrs3, align 2, !tbaa !41
  %8 = load %struct.ref_s*, %struct.ref_s** %pgdir.addr, align 8, !tbaa !1
  %call = call i32 @dict_find(%struct.ref_s* %8, %struct.ref_s* %iglyph, %struct.ref_s** %pgdef) #3
  %sub = sub nsw i32 %call, 1
  store i32 %sub, i32* %code, align 4, !tbaa !20
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %10 = load %struct.ref_s*, %struct.ref_s** %pgdir.addr, align 8, !tbaa !1
  %11 = load i64, i64* %glyph_index.addr, align 8, !tbaa !35
  %call4 = call i32 @array_get(%struct.gs_memory_s* %9, %struct.ref_s* %10, i64 %11, %struct.ref_s* %gdef) #3
  store i32 %call4, i32* %code, align 4, !tbaa !20
  store %struct.ref_s* %gdef, %struct.ref_s** %pgdef, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load i32, i32* %code, align 4, !tbaa !20
  %cmp5 = icmp slt i32 %12, 0
  br i1 %cmp5, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %if.end
  %13 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  call void @gs_glyph_data_from_null(%struct.gs_glyph_data_s* %13) #3
  br label %if.end.20

if.else.8:                                        ; preds = %if.end
  %14 = load %struct.ref_s*, %struct.ref_s** %pgdef, align 8, !tbaa !1
  %tas9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %type_attrs10 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas9, i32 0, i32 0
  %15 = bitcast i16* %type_attrs10 to i8*
  %arrayidx11 = getelementptr inbounds i8, i8* %15, i64 1
  %16 = load i8, i8* %arrayidx11, align 1, !tbaa !5
  %conv12 = zext i8 %16 to i32
  %cmp13 = icmp eq i32 %conv12, 18
  br i1 %cmp13, label %if.else.16, label %if.then.15

if.then.15:                                       ; preds = %if.else.8
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.16:                                       ; preds = %if.else.8
  %17 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %18 = load %struct.ref_s*, %struct.ref_s** %pgdef, align 8, !tbaa !1
  %value17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value17 to i8**
  %19 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  %20 = load %struct.ref_s*, %struct.ref_s** %pgdef, align 8, !tbaa !1
  %tas18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas18, i32 0, i32 2
  %21 = load i32, i32* %rsize, align 4, !tbaa !58
  call void @gs_glyph_data_from_string(%struct.gs_glyph_data_s* %17, i8* %19, i32 %21, %struct.gs_font_s* null) #3
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.16
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.then.7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.20, %if.then.15
  %22 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast %struct.ref_s** %pgdef to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast %struct.ref_s* %gdef to i8*
  call void @llvm.lifetime.end(i64 16, i8* %24) #1
  %25 = bitcast %struct.ref_s* %iglyph to i8*
  call void @llvm.lifetime.end(i64 16, i8* %25) #1
  %26 = load i32, i32* %retval
  ret i32 %26
}

declare i32 @dict_find(%struct.ref_s*, %struct.ref_s*, %struct.ref_s**) #2

declare void @gs_glyph_data_from_null(%struct.gs_glyph_data_s*) #2

declare void @gs_glyph_data_from_string(%struct.gs_glyph_data_s*, i8*, i32, %struct.gs_font_s*) #2

declare i32 @define_gs_font(%struct.gs_context_state_s*, %struct.gs_font_s*) #2

; Function Attrs: nounwind uwtable
define internal i64 @glyph_to_index(%struct.gs_font_s* %font, i64 %glyph) #0 {
entry:
  %retval = alloca i64, align 8
  %font.addr = alloca %struct.gs_font_s*, align 8
  %glyph.addr = alloca i64, align 8
  %gref = alloca %struct.ref_s, align 8
  %pcstr = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  %index_glyph = alloca i64, align 8
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !35
  %0 = bitcast %struct.ref_s* %gref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = bitcast %struct.ref_s** %pcstr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i64, i64* %glyph.addr, align 8, !tbaa !35
  %cmp = icmp uge i64 %2, 3221225472
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %glyph.addr, align 8, !tbaa !35
  store i64 %3, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.15

if.end:                                           ; preds = %entry
  %4 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %4, i32 0, i32 2
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !56
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %5, i32 0, i32 2
  %6 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !60
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %6, i32 0, i32 16
  %7 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !63
  %8 = load i64, i64* %glyph.addr, align 8, !tbaa !35
  %conv = trunc i64 %8 to i32
  call void @names_index_ref(%struct.name_table_s* %7, i32 %conv, %struct.ref_s* %gref) #3
  %9 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %9, i32 0, i32 8
  %10 = load i8*, i8** %client_data, align 8, !tbaa !54
  %11 = bitcast i8* %10 to %struct.font_data_s*
  %CharStrings = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %11, i32 0, i32 4
  %call = call i32 @dict_find(%struct.ref_s* %CharStrings, %struct.ref_s* %gref, %struct.ref_s** %pcstr) #3
  %cmp1 = icmp sgt i32 %call, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %if.end
  %12 = load %struct.ref_s*, %struct.ref_s** %pcstr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %13 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 1
  %14 = load i8, i8* %arrayidx, align 1, !tbaa !5
  %conv3 = zext i8 %14 to i32
  %cmp4 = icmp eq i32 %conv3, 11
  br i1 %cmp4, label %if.then.6, label %if.end.14

if.then.6:                                        ; preds = %land.lhs.true
  %15 = bitcast i64* %index_glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load %struct.ref_s*, %struct.ref_s** %pcstr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %17 = load i64, i64* %intval, align 8, !tbaa !35
  %add = add i64 %17, 3221225472
  store i64 %add, i64* %index_glyph, align 8, !tbaa !35
  %18 = load i64, i64* %index_glyph, align 8, !tbaa !35
  %cmp7 = icmp uge i64 %18, 3221225472
  br i1 %cmp7, label %land.lhs.true.9, label %if.end.13

land.lhs.true.9:                                  ; preds = %if.then.6
  %19 = load i64, i64* %index_glyph, align 8, !tbaa !35
  %cmp10 = icmp ule i64 %19, -1
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %land.lhs.true.9
  %20 = load i64, i64* %index_glyph, align 8, !tbaa !35
  store i64 %20, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %land.lhs.true.9, %if.then.6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.13, %if.then.12
  %21 = bitcast i64* %index_glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.15 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.14

if.end.14:                                        ; preds = %cleanup.cont, %land.lhs.true, %if.end
  store i64 3221225472, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.15

cleanup.15:                                       ; preds = %if.end.14, %cleanup, %if.then
  %22 = bitcast %struct.ref_s** %pcstr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = bitcast %struct.ref_s* %gref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %23) #1
  %24 = load i64, i64* %retval
  ret i64 %24
}

declare void @names_index_ref(%struct.name_table_s*, i32, %struct.ref_s*) #2

declare i32 @gs_type42_enumerate_glyph(%struct.gs_font_s*, i32*, i32, i64*) #2

declare i32 @zchar_enumerate_glyph(%struct.gs_memory_s*, %struct.ref_s*, i32*, i64*) #2

declare i64 @zfont_encode_char(%struct.gs_font_s*, i64, i32) #2

declare i32 @gs_type42_glyph_outline(%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*) #2

declare i32 @z1_glyph_info_generic(%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32) #2

declare i32 @gs_type42_glyph_info(%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*) #2

declare i32 @zfont_info(%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*) #2

declare i32 @gs_truetype_font_info(%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*) #2

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
!5 = !{!3, !3, i64 0}
!6 = !{!7, !2, i64 8}
!7 = !{!"gs_context_state_s", !2, i64 0, !8, i64 8, !10, i64 80, !11, i64 88, !11, i64 104, !14, i64 120, !14, i64 128, !14, i64 136, !10, i64 144, !10, i64 148, !11, i64 152, !11, i64 168, !10, i64 184, !10, i64 188, !10, i64 192, !10, i64 196, !2, i64 200, !3, i64 208, !2, i64 256, !15, i64 264, !15, i64 304, !2, i64 344, !10, i64 352, !2, i64 360, !16, i64 368, !18, i64 520, !19, i64 624, !2, i64 720}
!8 = !{!"gs_dual_memory_s", !2, i64 0, !9, i64 8, !10, i64 48, !2, i64 56, !10, i64 64, !10, i64 68}
!9 = !{!"vm_spaces_s", !2, i64 0, !3, i64 8}
!10 = !{!"int", !3, i64 0}
!11 = !{!"ref_s", !12, i64 0, !3, i64 8}
!12 = !{!"tas_s", !13, i64 0, !13, i64 2, !10, i64 4}
!13 = !{!"short", !3, i64 0}
!14 = !{!"long", !3, i64 0}
!15 = !{!"op_array_table_s", !11, i64 0, !2, i64 16, !10, i64 24, !10, i64 28, !10, i64 32}
!16 = !{!"dict_stack_s", !17, i64 0, !10, i64 96, !10, i64 100, !10, i64 104, !2, i64 112, !10, i64 120, !2, i64 128, !11, i64 136}
!17 = !{!"ref_stack_s", !2, i64 0, !2, i64 8, !2, i64 16, !11, i64 24, !10, i64 40, !10, i64 44, !11, i64 48, !10, i64 64, !10, i64 68, !10, i64 72, !2, i64 80, !2, i64 88}
!18 = !{!"exec_stack_s", !17, i64 0, !2, i64 96}
!19 = !{!"op_stack_s", !17, i64 0}
!20 = !{!10, !10, i64 0}
!21 = !{!22, !2, i64 72}
!22 = !{!"gs_font_type42_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !10, i64 32, !23, i64 40, !14, i64 56, !2, i64 64, !2, i64 72, !24, i64 80, !24, i64 104, !3, i64 128, !10, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !10, i64 148, !10, i64 152, !25, i64 156, !10, i64 160, !26, i64 168, !27, i64 272, !27, i64 324, !28, i64 376, !31, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444, !32, i64 448}
!23 = !{!"gs_notify_list_s", !2, i64 0, !2, i64 8}
!24 = !{!"gs_matrix_s", !25, i64 0, !25, i64 4, !25, i64 8, !25, i64 12, !25, i64 16, !25, i64 20}
!25 = !{!"float", !3, i64 0}
!26 = !{!"gs_font_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!27 = !{!"gs_font_name_s", !3, i64 0, !10, i64 48}
!28 = !{!"gs_rect_s", !29, i64 0, !29, i64 16}
!29 = !{!"gs_point_s", !30, i64 0, !30, i64 8}
!30 = !{!"double", !3, i64 0}
!31 = !{!"gs_uid_s", !14, i64 0, !2, i64 8}
!32 = !{!"gs_type42_data_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !14, i64 48, !14, i64 56, !10, i64 64, !10, i64 68, !3, i64 72, !14, i64 120, !14, i64 128, !14, i64 136, !10, i64 144, !10, i64 148, !10, i64 152, !10, i64 156, !10, i64 160, !10, i64 164, !2, i64 168, !2, i64 176, !10, i64 184, !10, i64 188, !2, i64 192, !14, i64 200}
!33 = !{i64 0, i64 2, !34, i64 2, i64 2, !34, i64 4, i64 4, !20, i64 8, i64 8, !35, i64 8, i64 2, !34, i64 8, i64 4, !36, i64 8, i64 8, !35, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !35}
!34 = !{!13, !13, i64 0}
!35 = !{!14, !14, i64 0}
!36 = !{!25, !25, i64 0}
!37 = !{!38, !10, i64 48}
!38 = !{!"_f42", !11, i64 0, !11, i64 16, !11, i64 32, !10, i64 48, !14, i64 56}
!39 = !{!38, !14, i64 56}
!40 = !{!8, !10, i64 68}
!41 = !{!11, !13, i64 0}
!42 = !{!22, !2, i64 448}
!43 = !{!22, !2, i64 456}
!44 = !{!22, !10, i64 32}
!45 = !{!22, !2, i64 184}
!46 = !{!22, !2, i64 472}
!47 = !{!22, !2, i64 216}
!48 = !{!22, !2, i64 464}
!49 = !{!22, !2, i64 488}
!50 = !{!22, !2, i64 200}
!51 = !{!22, !2, i64 224}
!52 = !{!22, !2, i64 232}
!53 = !{!22, !2, i64 16}
!54 = !{!55, !2, i64 72}
!55 = !{!"gs_font_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !10, i64 32, !23, i64 40, !14, i64 56, !2, i64 64, !2, i64 72, !24, i64 80, !24, i64 104, !3, i64 128, !10, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !10, i64 148, !10, i64 152, !25, i64 156, !10, i64 160, !26, i64 168, !27, i64 272, !27, i64 324}
!56 = !{!55, !2, i64 16}
!57 = !{!55, !10, i64 148}
!58 = !{!11, !10, i64 4}
!59 = !{!7, !2, i64 624}
!60 = !{!61, !2, i64 192}
!61 = !{!"gs_memory_s", !2, i64 0, !62, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!62 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!63 = !{!64, !2, i64 120}
!64 = !{!"gs_lib_ctx_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !14, i64 104, !2, i64 112, !2, i64 120, !10, i64 128, !2, i64 136, !10, i64 144, !10, i64 148, !3, i64 152, !2, i64 168, !10, i64 176, !2, i64 184, !10, i64 192, !2, i64 200, !2, i64 208}
