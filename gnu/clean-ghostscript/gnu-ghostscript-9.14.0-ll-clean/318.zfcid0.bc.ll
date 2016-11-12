; ModuleID = './zfcid0.bc'
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
%struct.alloc_save_s = type opaque
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.vm_spaces_s = type { void (%struct.vm_spaces_s*, i32)*, %union.anon }
%union.anon = type { [4 x %struct.gs_ref_memory_s*] }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16, i32 }
%union.v = type { i64 }
%struct.gs_file_path_s = type { %struct.ref_s, %struct.ref_s, i8*, i8*, i32 }
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
%struct.gs_font_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s }
%struct.gs_notify_list_s = type { %struct.gs_memory_s*, %struct.gs_notify_registration_s* }
%struct.gs_notify_registration_s = type { i32 (i8*, i8*)*, i8*, %struct.gs_notify_registration_s* }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_font_procs_s = type { i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*)*, i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*, %struct.gs_matrix_s*, %struct.gs_font_s**)*, i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)*, i32 (%struct.gs_font_s*, %struct.gs_font_s*, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i32 (%struct.gs_font_s*, i32*, i32, i64*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_font_s*)*, i32 (%struct.gs_text_enum_s*, i64*, i64*)*, i32 (%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i64, i64)* }
%struct.gs_point_s = type { double, double }
%struct.gs_font_info_s = type { i32, i32, i32, %struct.gs_int_rect_s, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gs_glyph_info_s = type { i32, [2 x %struct.gs_point_s], %struct.gs_point_s, %struct.gs_rect_s, i32, i64* }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gx_path_s = type opaque
%struct.gs_text_enum_s = type opaque
%struct.gs_show_enum_s = type opaque
%struct.gs_font_name_s = type { [48 x i8], i32 }
%struct.gs_font_cid0_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32, %struct.gs_font_cid0_data_s }
%struct.gs_uid_s = type { i64, i64* }
%struct.gs_font_cid0_data_s = type { %struct.gs_font_cid_data_s, i64, %struct.gs_font_type1_s**, i32, i32, i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, i32*)*, i8* }
%struct.gs_font_cid_data_s = type { %struct.gs_cid_system_info_s, i32, i32, i32 }
%struct.gs_cid_system_info_s = type { %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }
%struct.gs_font_type1_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32, %struct.gs_type1_data_s }
%struct.gs_type1_data_s = type { %struct.gs_type1_data_procs_s, i32 (%struct.gs_type1_state_s*, %struct.gs_glyph_data_s*, i32*)*, i8*, %struct.gs_font_base_s*, i32, i32, i32, i64, i32, i32, i32, float, float, %struct.anon, float, i32, %struct.anon.0, %struct.anon.1, i32, %struct.anon.2, i32, %struct.anon.3, %struct.anon.4, %struct.anon.5, %struct.anon.6, %struct.anon.7, [16 x i8], i32 }
%struct.gs_type1_data_procs_s = type { i32 (%struct.gs_font_type1_s*, i64, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type1_s*, i32, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type1_s*, i32, i64*, %struct.gs_const_string_s*, %struct.gs_glyph_data_s*)*, i32 (i8*, i32*, i32)*, i32 (i8*, i32*)* }
%struct.gs_glyph_data_s = type { %struct.gs_const_bytestring_s, %struct.gs_glyph_data_procs_s*, i8*, %struct.gs_memory_s* }
%struct.gs_const_bytestring_s = type { i8*, i32, i8* }
%struct.gs_glyph_data_procs_s = type { void (%struct.gs_glyph_data_s*, i8*)*, i32 (%struct.gs_glyph_data_s*, i32, i32)* }
%struct.gs_type1_state_s = type opaque
%struct.gs_font_base_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32 }
%struct.anon = type { i32, [14 x float] }
%struct.anon.0 = type { i32, [14 x float] }
%struct.anon.1 = type { i32, [10 x float] }
%struct.anon.2 = type { i32, [10 x float] }
%struct.anon.3 = type { i32, [1 x float] }
%struct.anon.4 = type { i32, [1 x float] }
%struct.anon.5 = type { i32, [12 x float] }
%struct.anon.6 = type { i32, [12 x float] }
%struct.anon.7 = type { i32, [16 x float] }
%struct.build_proc_refs_s = type { %struct.ref_s, %struct.ref_s }
%struct.font_data_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %union._fs }
%union._fs = type { %struct._f42 }
%struct._f42 = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, i32, i64 }
%struct._fc0 = type { %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.charstring_font_refs_s = type { %struct.ref_s*, %struct.ref_s, %struct.ref_s*, %struct.ref_s*, %struct.ref_s* }
%struct.gs_main_instance_s = type { %struct.gs_memory_s*, i32, i64, i32, i32, i32, i32, i32, %struct.gs_file_path_s, [2 x i64], i8*, %struct.ref_s, i32 (%struct._IO_FILE*, i8**)*, %struct.display_callback_s*, %struct.gs_context_state_s*, i8*, i32 }
%struct.display_callback_s = type opaque

@.str = private unnamed_addr constant [13 x i8] c"2.buildfont9\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"2.type9mapcid\00", align 1
@zfcid0_op_defs = constant [3 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zbuildfont9 }, %struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @ztype9mapcid }, %struct.op_def zeroinitializer], align 16
@.str.2 = private unnamed_addr constant [17 x i8] c"%Type9BuildGlyph\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"FDArray\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"CIDFontName\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"FDBytes\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"GlyphData\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"CIDMapOffset\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"DataSource\00", align 1
@st_gs_font_type1_ptr_element = external constant %struct.gs_memory_struct_type_s, align 8
@.str.9 = private unnamed_addr constant [20 x i8] c"buildfont9(FDarray)\00", align 1
@st_gs_font_cid0 = external constant %struct.gs_memory_struct_type_s, align 8
@.str.10 = private unnamed_addr constant [9 x i8] c"FontType\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"%Type1BuildChar\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"%Type1BuildGlyph\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"%Type2BuildChar\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"%Type2BuildGlyph\00", align 1
@st_gs_font_type1 = external constant %struct.gs_memory_struct_type_s, align 8
@.str.15 = private unnamed_addr constant [17 x i8] c"z9_glyph_outline\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"z9_glyph_data\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"cid0_read_bytes\00", align 1

; Function Attrs: nounwind uwtable
define i32 @ztype9mapcid(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %pfont = alloca %struct.gs_font_s*, align 8
  %pfcid = alloca %struct.gs_font_cid0_s*, align 8
  %code = alloca i32, align 4
  %gdata = alloca %struct.gs_glyph_data_s, align 8
  %fidx = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %default_fallback_CID = alloca i64, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.gs_font_cid0_s** %pfcid to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  %call = call i32 @font_param(%struct.ref_s* %add.ptr, %struct.gs_font_s** %pfont) #4
  store i32 %call, i32* %code, align 4, !tbaa !19
  %7 = bitcast %struct.gs_glyph_data_s* %gdata to i8*
  call void @llvm.lifetime.start(i64 48, i8* %7) #1
  %8 = bitcast i32* %fidx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i32, i32* %code, align 4, !tbaa !19
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.45

if.end:                                           ; preds = %entry
  %11 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %11, i32 0, i32 11
  %12 = load i32, i32* %FontType, align 4, !tbaa !20
  %cmp1 = icmp ne i32 %12, 9
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.45

if.end.3:                                         ; preds = %if.end
  %13 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %14 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 1
  %15 = load i8, i8* %arrayidx, align 1, !tbaa !27
  %conv = zext i8 %15 to i32
  %cmp4 = icmp eq i32 %conv, 11
  br i1 %cmp4, label %if.end.8, label %if.then.6

if.then.6:                                        ; preds = %if.end.3
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call7 = call i32 @check_type_failed(%struct.ref_s* %16) #4
  store i32 %call7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.45

if.end.8:                                         ; preds = %if.end.3
  %17 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %18 = bitcast %struct.gs_font_s* %17 to %struct.gs_font_cid0_s*
  store %struct.gs_font_cid0_s* %18, %struct.gs_font_cid0_s** %pfcid, align 8, !tbaa !1
  %19 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %19, i32 0, i32 2
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !28
  %memory9 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata, i32 0, i32 3
  store %struct.gs_memory_s* %20, %struct.gs_memory_s** %memory9, align 8, !tbaa !29
  %21 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfcid, align 8, !tbaa !1
  %cidata = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %21, i32 0, i32 29
  %glyph_data = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata, i32 0, i32 5
  %22 = load i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, i32*)*, i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, i32*)** %glyph_data, align 8, !tbaa !32
  %23 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfcid, align 8, !tbaa !1
  %24 = bitcast %struct.gs_font_cid0_s* %23 to %struct.gs_font_base_s*
  %25 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %26 = load i64, i64* %intval, align 8, !tbaa !42
  %add = add i64 2147483648, %26
  %call10 = call i32 %22(%struct.gs_font_base_s* %24, i64 %add, %struct.gs_glyph_data_s* %gdata, i32* %fidx) #4
  store i32 %call10, i32* %code, align 4, !tbaa !19
  %27 = load i32, i32* %code, align 4, !tbaa !19
  %cmp11 = icmp slt i32 %27, 0
  br i1 %cmp11, label %if.then.13, label %if.end.27

if.then.13:                                       ; preds = %if.end.8
  %28 = bitcast i64* %default_fallback_CID to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  store i64 0, i64* %default_fallback_CID, align 8, !tbaa !42
  br label %do.body

do.body:                                          ; preds = %if.then.13
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %29 = load i64, i64* %default_fallback_CID, align 8, !tbaa !42
  %30 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i32 0, i32 1
  %intval15 = bitcast %union.v* %value14 to i64*
  store i64 %29, i64* %intval15, align 8, !tbaa !42
  %31 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfcid, align 8, !tbaa !1
  %cidata16 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %31, i32 0, i32 29
  %glyph_data17 = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata16, i32 0, i32 5
  %32 = load i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, i32*)*, i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, i32*)** %glyph_data17, align 8, !tbaa !32
  %33 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfcid, align 8, !tbaa !1
  %34 = bitcast %struct.gs_font_cid0_s* %33 to %struct.gs_font_base_s*
  %35 = load i64, i64* %default_fallback_CID, align 8, !tbaa !42
  %add18 = add i64 2147483648, %35
  %call19 = call i32 %32(%struct.gs_font_base_s* %34, i64 %add18, %struct.gs_glyph_data_s* %gdata, i32* %fidx) #4
  store i32 %call19, i32* %code, align 4, !tbaa !19
  %36 = load i32, i32* %code, align 4, !tbaa !19
  %cmp20 = icmp slt i32 %36, 0
  br i1 %cmp20, label %if.then.22, label %if.end.26

if.then.22:                                       ; preds = %do.end
  br label %do.body.23

do.body.23:                                       ; preds = %if.then.22
  br label %do.cond.24

do.cond.24:                                       ; preds = %do.body.23
  br label %do.end.25

do.end.25:                                        ; preds = %do.cond.24
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %do.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.26, %do.end.25
  %37 = bitcast i64* %default_fallback_CID to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.45 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.27

if.end.27:                                        ; preds = %cleanup.cont, %if.end.8
  %bits = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata, i32 0, i32 0
  %data = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits, i32 0, i32 0
  %38 = load i8*, i8** %data, align 8, !tbaa !43
  %39 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i64 -1
  %value29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr28, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value29 to i8**
  store i8* %38, i8** %const_bytes, align 8, !tbaa !1
  %40 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %memory30 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %40, i32 0, i32 2
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory30, align 8, !tbaa !28
  %42 = bitcast %struct.gs_memory_s* %41 to %struct.gs_ref_memory_s*
  %call31 = call i32 @imemory_space(%struct.gs_ref_memory_s* %42) #4
  %or = or i32 96, %call31
  %add32 = add i32 4608, %or
  %conv33 = trunc i32 %add32 to i16
  %43 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i64 -1
  %tas35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr34, i32 0, i32 0
  %type_attrs36 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas35, i32 0, i32 0
  store i16 %conv33, i16* %type_attrs36, align 2, !tbaa !44
  %bits37 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata, i32 0, i32 0
  %size = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits37, i32 0, i32 1
  %44 = load i32, i32* %size, align 4, !tbaa !45
  %45 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i64 -1
  %tas39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr38, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas39, i32 0, i32 2
  store i32 %44, i32* %rsize, align 4, !tbaa !46
  %46 = load i32, i32* %fidx, align 4, !tbaa !19
  %conv40 = sext i32 %46 to i64
  %47 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i32 0, i32 1
  %intval42 = bitcast %union.v* %value41 to i64*
  store i64 %conv40, i64* %intval42, align 8, !tbaa !42
  %48 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i32 0, i32 0
  %type_attrs44 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas43, i32 0, i32 0
  store i16 2816, i16* %type_attrs44, align 2, !tbaa !44
  %49 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %49, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.45

cleanup.45:                                       ; preds = %if.end.27, %cleanup, %if.then.6, %if.then.2, %if.then
  %50 = bitcast i32* %fidx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = bitcast %struct.gs_glyph_data_s* %gdata to i8*
  call void @llvm.lifetime.end(i64 48, i8* %51) #1
  %52 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast %struct.gs_font_cid0_s** %pfcid to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %56 = load i32, i32* %retval
  ret i32 %56
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @font_param(%struct.ref_s*, %struct.gs_font_s**) #2

declare i32 @check_type_failed(%struct.ref_s*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i32 @imemory_space(%struct.gs_ref_memory_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @zbuildfont9(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %build = alloca %struct.build_proc_refs_s, align 8
  %code = alloca i32, align 4
  %common = alloca %struct.gs_font_cid_data_s, align 8
  %GlyphDirectory = alloca %struct.ref_s, align 8
  %GlyphData = alloca %struct.ref_s, align 8
  %DataSource = alloca %struct.ref_s, align 8
  %prfda = alloca %struct.ref_s*, align 8
  %cfnstr = alloca %struct.ref_s, align 8
  %pCIDFontName = alloca %struct.ref_s*, align 8
  %CIDFontName = alloca %struct.ref_s, align 8
  %FDArray = alloca %struct.gs_font_type1_s**, align 8
  %FDArray_size = alloca i32, align 4
  %FDBytes = alloca i32, align 4
  %CIDMapOffset = alloca i32, align 4
  %pfont = alloca %struct.gs_font_base_s*, align 8
  %pfcid = alloca %struct.gs_font_cid0_s*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pGlyphData = alloca %struct.ref_s*, align 8
  %pds = alloca %struct.ref_s*, align 8
  %ignore_s = alloca %struct.stream_s*, align 8
  %fcode = alloca i32, align 4
  %rfd = alloca %struct.ref_s, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.build_proc_refs_s* %build to i8*
  call void @llvm.lifetime.start(i64 32, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %5, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %6 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !47
  %7 = bitcast %struct.gs_ref_memory_s* %6 to %struct.gs_memory_s*
  %call = call i32 @build_proc_name_refs(%struct.gs_memory_s* %7, %struct.build_proc_refs_s* %build, i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0)) #4
  store i32 %call, i32* %code, align 4, !tbaa !19
  %8 = bitcast %struct.gs_font_cid_data_s* %common to i8*
  call void @llvm.lifetime.start(i64 56, i8* %8) #1
  %9 = bitcast %struct.ref_s* %GlyphDirectory to i8*
  call void @llvm.lifetime.start(i64 16, i8* %9) #1
  %10 = bitcast %struct.ref_s* %GlyphData to i8*
  call void @llvm.lifetime.start(i64 16, i8* %10) #1
  %11 = bitcast %struct.ref_s* %DataSource to i8*
  call void @llvm.lifetime.start(i64 16, i8* %11) #1
  %12 = bitcast %struct.ref_s** %prfda to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast %struct.ref_s* %cfnstr to i8*
  call void @llvm.lifetime.start(i64 16, i8* %13) #1
  %14 = bitcast %struct.ref_s** %pCIDFontName to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast %struct.ref_s* %CIDFontName to i8*
  call void @llvm.lifetime.start(i64 16, i8* %15) #1
  %16 = bitcast %struct.gs_font_type1_s*** %FDArray to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = bitcast i32* %FDArray_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i32* %FDBytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast i32* %CIDMapOffset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = bitcast %struct.gs_font_base_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = bitcast %struct.gs_font_cid0_s** %pfcid to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = load i32, i32* %code, align 4, !tbaa !19
  %cmp = icmp slt i32 %23, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %24 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call1 = call i32 @cid_font_data_param(%struct.ref_s* %24, %struct.gs_font_cid_data_s* %common, %struct.ref_s* %GlyphDirectory) #4
  store i32 %call1, i32* %code, align 4, !tbaa !19
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %25 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call4 = call i32 @dict_find_string(%struct.ref_s* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), %struct.ref_s** %prfda) #4
  store i32 %call4, i32* %code, align 4, !tbaa !19
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.3
  %26 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call7 = call i32 @dict_find_string(%struct.ref_s* %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), %struct.ref_s** %pCIDFontName) #4
  store i32 %call7, i32* %code, align 4, !tbaa !19
  %cmp8 = icmp sle i32 %call7, 0
  br i1 %cmp8, label %if.then, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false.6
  %27 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call10 = call i32 @dict_int_param(%struct.ref_s* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 0, i32 4, i32 -1, i32* %FDBytes) #4
  store i32 %call10, i32* %code, align 4, !tbaa !19
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.9, %lor.lhs.false.6, %lor.lhs.false.3, %lor.lhs.false, %entry
  %28 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.220

if.end:                                           ; preds = %lor.lhs.false.9
  %29 = load %struct.ref_s*, %struct.ref_s** %pCIDFontName, align 8, !tbaa !1
  %30 = bitcast %struct.ref_s* %CIDFontName to i8*
  %31 = bitcast %struct.ref_s* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 16, i32 8, i1 false), !tbaa.struct !48
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %GlyphDirectory, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %32 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %32, i64 1
  %33 = load i8, i8* %arrayidx, align 1, !tbaa !27
  %conv = zext i8 %33 to i32
  %cmp12 = icmp eq i32 %conv, 14
  br i1 %cmp12, label %if.then.14, label %if.else.101

if.then.14:                                       ; preds = %if.end
  %34 = bitcast %struct.ref_s** %pGlyphData to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #1
  %35 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call15 = call i32 @dict_find_string(%struct.ref_s* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), %struct.ref_s** %pGlyphData) #4
  store i32 %call15, i32* %code, align 4, !tbaa !19
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then.22, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %if.then.14
  %36 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call19 = call i32 @dict_uint_param(%struct.ref_s* %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i32 0, i32 -2, i32 -1, i32* %CIDMapOffset) #4
  store i32 %call19, i32* %code, align 4, !tbaa !19
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %lor.lhs.false.18, %if.then.14
  %37 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %37, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.98

if.end.23:                                        ; preds = %lor.lhs.false.18
  %38 = load %struct.ref_s*, %struct.ref_s** %pGlyphData, align 8, !tbaa !1
  %39 = bitcast %struct.ref_s* %GlyphData to i8*
  %40 = bitcast %struct.ref_s* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 16, i32 8, i1 false), !tbaa.struct !48
  %tas24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %GlyphData, i32 0, i32 0
  %type_attrs25 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas24, i32 0, i32 0
  %41 = bitcast i16* %type_attrs25 to i8*
  %arrayidx26 = getelementptr inbounds i8, i8* %41, i64 1
  %42 = load i8, i8* %arrayidx26, align 1, !tbaa !27
  %conv27 = zext i8 %42 to i32
  %cmp28 = icmp eq i32 %conv27, 11
  br i1 %cmp28, label %if.then.30, label %if.else.79

if.then.30:                                       ; preds = %if.end.23
  %43 = bitcast %struct.ref_s** %pds to i8*
  call void @llvm.lifetime.start(i64 8, i8* %43) #1
  %44 = bitcast %struct.stream_s** %ignore_s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %44) #1
  %45 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call31 = call i32 @dict_find_string(%struct.ref_s* %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), %struct.ref_s** %pds) #4
  store i32 %call31, i32* %code, align 4, !tbaa !19
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.then.30
  %46 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %46, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.75

if.end.35:                                        ; preds = %if.then.30
  br label %do.body

do.body:                                          ; preds = %if.end.35
  %47 = load %struct.ref_s*, %struct.ref_s** %pds, align 8, !tbaa !1
  %tas36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i32 0, i32 0
  %type_attrs37 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas36, i32 0, i32 0
  %48 = load i16, i16* %type_attrs37, align 2, !tbaa !44
  %conv38 = zext i16 %48 to i32
  %and = and i32 %conv38, 16160
  %cmp39 = icmp eq i32 %and, 800
  br i1 %cmp39, label %if.end.49, label %if.then.41

if.then.41:                                       ; preds = %do.body
  %49 = load %struct.ref_s*, %struct.ref_s** %pds, align 8, !tbaa !1
  %tas42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i32 0, i32 0
  %type_attrs43 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas42, i32 0, i32 0
  %50 = bitcast i16* %type_attrs43 to i8*
  %arrayidx44 = getelementptr inbounds i8, i8* %50, i64 1
  %51 = load i8, i8* %arrayidx44, align 1, !tbaa !27
  %conv45 = zext i8 %51 to i32
  %cmp46 = icmp eq i32 %conv45, 3
  br i1 %cmp46, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.41
  %52 = load %struct.ref_s*, %struct.ref_s** %pds, align 8, !tbaa !1
  %call48 = call i32 @check_type_failed(%struct.ref_s* %52) #4
  br label %cond.end

cond.false:                                       ; preds = %if.then.41
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call48, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.75

if.end.49:                                        ; preds = %do.body
  br label %do.body.50

do.body.50:                                       ; preds = %if.end.49
  %53 = load %struct.ref_s*, %struct.ref_s** %pds, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i32 0, i32 1
  %pfile = bitcast %union.v* %value to %struct.stream_s**
  %54 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %54, %struct.stream_s** %ignore_s, align 8, !tbaa !1
  %55 = load %struct.stream_s*, %struct.stream_s** %ignore_s, align 8, !tbaa !1
  %read_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %55, i32 0, i32 19
  %56 = load i16, i16* %read_id, align 2, !tbaa !51
  %conv51 = zext i16 %56 to i32
  %57 = load %struct.ref_s*, %struct.ref_s** %pds, align 8, !tbaa !1
  %tas52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %57, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas52, i32 0, i32 2
  %58 = load i32, i32* %rsize, align 4, !tbaa !46
  %cmp53 = icmp ne i32 %conv51, %58
  br i1 %cmp53, label %if.then.55, label %if.end.72

if.then.55:                                       ; preds = %do.body.50
  %59 = load %struct.stream_s*, %struct.stream_s** %ignore_s, align 8, !tbaa !1
  %read_id56 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %59, i32 0, i32 19
  %60 = load i16, i16* %read_id56, align 2, !tbaa !51
  %conv57 = zext i16 %60 to i32
  %cmp58 = icmp eq i32 %conv57, 0
  br i1 %cmp58, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.55
  %61 = load %struct.stream_s*, %struct.stream_s** %ignore_s, align 8, !tbaa !1
  %write_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %61, i32 0, i32 20
  %62 = load i16, i16* %write_id, align 2, !tbaa !55
  %conv60 = zext i16 %62 to i32
  %63 = load %struct.ref_s*, %struct.ref_s** %pds, align 8, !tbaa !1
  %tas61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %63, i32 0, i32 0
  %rsize62 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas61, i32 0, i32 2
  %64 = load i32, i32* %rsize62, align 4, !tbaa !46
  %cmp63 = icmp eq i32 %conv60, %64
  br i1 %cmp63, label %if.then.65, label %if.else

if.then.65:                                       ; preds = %land.lhs.true
  %65 = bitcast i32* %fcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %65) #1
  %66 = load %struct.ref_s*, %struct.ref_s** %pds, align 8, !tbaa !1
  %call66 = call i32 @file_switch_to_read(%struct.ref_s* %66) #4
  store i32 %call66, i32* %fcode, align 4, !tbaa !19
  %67 = load i32, i32* %fcode, align 4, !tbaa !19
  %cmp67 = icmp slt i32 %67, 0
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.then.65
  %68 = load i32, i32* %fcode, align 4, !tbaa !19
  store i32 %68, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.70:                                        ; preds = %if.then.65
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.70, %if.then.69
  %69 = bitcast i32* %fcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.75 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.71

if.else:                                          ; preds = %land.lhs.true, %if.then.55
  %70 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %invalid_file_stream = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %70, i32 0, i32 18
  %71 = load %struct.stream_s*, %struct.stream_s** %invalid_file_stream, align 8, !tbaa !56
  store %struct.stream_s* %71, %struct.stream_s** %ignore_s, align 8, !tbaa !1
  br label %if.end.71

if.end.71:                                        ; preds = %if.else, %cleanup.cont
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %do.body.50
  br label %do.cond

do.cond:                                          ; preds = %if.end.72
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.73

do.cond.73:                                       ; preds = %do.end
  br label %do.end.74

do.end.74:                                        ; preds = %do.cond.73
  %72 = load %struct.ref_s*, %struct.ref_s** %pds, align 8, !tbaa !1
  %73 = bitcast %struct.ref_s* %DataSource to i8*
  %74 = bitcast %struct.ref_s* %72 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %73, i8* %74, i64 16, i32 8, i1 false), !tbaa.struct !48
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.75

cleanup.75:                                       ; preds = %do.end.74, %cleanup, %cond.end, %if.then.34
  %75 = bitcast %struct.stream_s** %ignore_s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = bitcast %struct.ref_s** %pds to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %cleanup.dest.77 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.77, label %cleanup.98 [
    i32 0, label %cleanup.cont.78
  ]

cleanup.cont.78:                                  ; preds = %cleanup.75
  br label %if.end.97

if.else.79:                                       ; preds = %if.end.23
  %tas80 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %GlyphData, i32 0, i32 0
  %type_attrs81 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas80, i32 0, i32 0
  %77 = bitcast i16* %type_attrs81 to i8*
  %arrayidx82 = getelementptr inbounds i8, i8* %77, i64 1
  %78 = load i8, i8* %arrayidx82, align 1, !tbaa !27
  %conv83 = zext i8 %78 to i32
  %cmp84 = icmp eq i32 %conv83, 18
  br i1 %cmp84, label %if.end.94, label %land.lhs.true.86

land.lhs.true.86:                                 ; preds = %if.else.79
  %tas87 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %GlyphData, i32 0, i32 0
  %type_attrs88 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas87, i32 0, i32 0
  %79 = load i16, i16* %type_attrs88, align 2, !tbaa !44
  %conv89 = zext i16 %79 to i32
  %and90 = and i32 %conv89, 15360
  %cmp91 = icmp eq i32 %and90, 1024
  br i1 %cmp91, label %if.end.94, label %if.then.93

if.then.93:                                       ; preds = %land.lhs.true.86
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.98

if.end.94:                                        ; preds = %land.lhs.true.86, %if.else.79
  %tas95 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %DataSource, i32 0, i32 0
  %type_attrs96 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas95, i32 0, i32 0
  store i16 3584, i16* %type_attrs96, align 2, !tbaa !44
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.94, %cleanup.cont.78
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.98

cleanup.98:                                       ; preds = %if.end.97, %if.then.93, %cleanup.75, %if.then.22
  %80 = bitcast %struct.ref_s** %pGlyphData to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #1
  %cleanup.dest.99 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.99, label %cleanup.220 [
    i32 0, label %cleanup.cont.100
  ]

cleanup.cont.100:                                 ; preds = %cleanup.98
  br label %if.end.106

if.else.101:                                      ; preds = %if.end
  %tas102 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %GlyphData, i32 0, i32 0
  %type_attrs103 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas102, i32 0, i32 0
  store i16 3584, i16* %type_attrs103, align 2, !tbaa !44
  %tas104 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %DataSource, i32 0, i32 0
  %type_attrs105 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas104, i32 0, i32 0
  store i16 3584, i16* %type_attrs105, align 2, !tbaa !44
  store i32 0, i32* %CIDMapOffset, align 4, !tbaa !19
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.101, %cleanup.cont.100
  %81 = load %struct.ref_s*, %struct.ref_s** %prfda, align 8, !tbaa !1
  %tas107 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %81, i32 0, i32 0
  %type_attrs108 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas107, i32 0, i32 0
  %82 = load i16, i16* %type_attrs108, align 2, !tbaa !44
  %conv109 = zext i16 %82 to i32
  %and110 = and i32 %conv109, 15360
  %cmp111 = icmp eq i32 %and110, 1024
  br i1 %cmp111, label %if.end.114, label %if.then.113

if.then.113:                                      ; preds = %if.end.106
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.220

if.end.114:                                       ; preds = %if.end.106
  %83 = load %struct.ref_s*, %struct.ref_s** %prfda, align 8, !tbaa !1
  %tas115 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %83, i32 0, i32 0
  %rsize116 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas115, i32 0, i32 2
  %84 = load i32, i32* %rsize116, align 4, !tbaa !46
  store i32 %84, i32* %FDArray_size, align 4, !tbaa !19
  %85 = load i32, i32* %FDArray_size, align 4, !tbaa !19
  %cmp117 = icmp eq i32 %85, 0
  br i1 %cmp117, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %if.end.114
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.220

if.end.120:                                       ; preds = %if.end.114
  %86 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory121 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %86, i32 0, i32 1
  %current122 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory121, i32 0, i32 0
  %87 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current122, align 8, !tbaa !47
  %88 = bitcast %struct.gs_ref_memory_s* %87 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %88, i32 0, i32 1
  %alloc_struct_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 12
  %89 = load i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct_array, align 8, !tbaa !57
  %90 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory123 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %90, i32 0, i32 1
  %current124 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory123, i32 0, i32 0
  %91 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current124, align 8, !tbaa !47
  %92 = bitcast %struct.gs_ref_memory_s* %91 to %struct.gs_memory_s*
  %93 = load i32, i32* %FDArray_size, align 4, !tbaa !19
  %call125 = call i8* %89(%struct.gs_memory_s* %92, i32 %93, %struct.gs_memory_struct_type_s* @st_gs_font_type1_ptr_element, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0)) #4
  %94 = bitcast i8* %call125 to %struct.gs_font_type1_s**
  store %struct.gs_font_type1_s** %94, %struct.gs_font_type1_s*** %FDArray, align 8, !tbaa !1
  %95 = load %struct.gs_font_type1_s**, %struct.gs_font_type1_s*** %FDArray, align 8, !tbaa !1
  %cmp126 = icmp eq %struct.gs_font_type1_s** %95, null
  br i1 %cmp126, label %if.then.128, label %if.end.129

if.then.128:                                      ; preds = %if.end.120
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.220

if.end.129:                                       ; preds = %if.end.120
  %96 = load %struct.gs_font_type1_s**, %struct.gs_font_type1_s*** %FDArray, align 8, !tbaa !1
  %97 = bitcast %struct.gs_font_type1_s** %96 to i8*
  %98 = load i32, i32* %FDArray_size, align 4, !tbaa !19
  %conv130 = zext i32 %98 to i64
  %mul = mul i64 8, %conv130
  %call131 = call i8* @memset(i8* %97, i32 0, i64 %mul) #5
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.129
  %99 = load i32, i32* %i, align 4, !tbaa !19
  %100 = load i32, i32* %FDArray_size, align 4, !tbaa !19
  %cmp132 = icmp ult i32 %99, %100
  br i1 %cmp132, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %101 = bitcast %struct.ref_s* %rfd to i8*
  call void @llvm.lifetime.start(i64 16, i8* %101) #1
  %102 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory134 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %102, i32 0, i32 1
  %current135 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory134, i32 0, i32 0
  %103 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current135, align 8, !tbaa !47
  %104 = bitcast %struct.gs_ref_memory_s* %103 to %struct.gs_memory_s*
  %105 = load %struct.ref_s*, %struct.ref_s** %prfda, align 8, !tbaa !1
  %106 = load i32, i32* %i, align 4, !tbaa !19
  %conv136 = zext i32 %106 to i64
  %call137 = call i32 @array_get(%struct.gs_memory_s* %104, %struct.ref_s* %105, i64 %conv136, %struct.ref_s* %rfd) #4
  %107 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %108 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom = zext i32 %108 to i64
  %109 = load %struct.gs_font_type1_s**, %struct.gs_font_type1_s*** %FDArray, align 8, !tbaa !1
  %arrayidx138 = getelementptr inbounds %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %109, i64 %idxprom
  %call139 = call i32 @fd_array_element(%struct.gs_context_state_s* %107, %struct.gs_font_type1_s** %arrayidx138, %struct.ref_s* %rfd) #4
  store i32 %call139, i32* %code, align 4, !tbaa !19
  %110 = load i32, i32* %code, align 4, !tbaa !19
  %cmp140 = icmp slt i32 %110, 0
  br i1 %cmp140, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %for.body
  store i32 9, i32* %cleanup.dest.slot
  br label %cleanup.144

if.end.143:                                       ; preds = %for.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.144

cleanup.144:                                      ; preds = %if.then.142, %if.end.143
  %111 = bitcast %struct.ref_s* %rfd to i8*
  call void @llvm.lifetime.end(i64 16, i8* %111) #1
  %cleanup.dest.145 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.145, label %cleanup.220 [
    i32 0, label %cleanup.cont.146
    i32 9, label %fail
  ]

cleanup.cont.146:                                 ; preds = %cleanup.144
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont.146
  %112 = load i32, i32* %i, align 4, !tbaa !19
  %inc = add i32 %112, 1
  store i32 %inc, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %113 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %114 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call147 = call i32 @build_gs_outline_font(%struct.gs_context_state_s* %113, %struct.ref_s* %114, %struct.gs_font_base_s** %pfont, i32 9, %struct.gs_memory_struct_type_s* @st_gs_font_cid0, %struct.build_proc_refs_s* %build, i32 5, i32 (%struct.gs_context_state_s*, %struct.ref_s*, %struct.gs_font_base_s**, i32, %struct.gs_memory_struct_type_s*, %struct.build_proc_refs_s*, i32)* @build_gs_simple_font) #4
  store i32 %call147, i32* %code, align 4, !tbaa !19
  %115 = load i32, i32* %code, align 4, !tbaa !19
  %cmp148 = icmp slt i32 %115, 0
  br i1 %cmp148, label %if.then.150, label %if.end.151

if.then.150:                                      ; preds = %for.end
  br label %fail

if.end.151:                                       ; preds = %for.end
  %116 = load i32, i32* %code, align 4, !tbaa !19
  %cmp152 = icmp eq i32 %116, 1
  br i1 %cmp152, label %if.then.154, label %if.end.160

if.then.154:                                      ; preds = %if.end.151
  %117 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory155 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %117, i32 0, i32 1
  %current156 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory155, i32 0, i32 0
  %118 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current156, align 8, !tbaa !47
  %119 = bitcast %struct.gs_ref_memory_s* %118 to %struct.gs_memory_s*
  %procs157 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %119, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs157, i32 0, i32 2
  %120 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !60
  %121 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory158 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %121, i32 0, i32 1
  %current159 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory158, i32 0, i32 0
  %122 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current159, align 8, !tbaa !47
  %123 = bitcast %struct.gs_ref_memory_s* %122 to %struct.gs_memory_s*
  %124 = load %struct.gs_font_type1_s**, %struct.gs_font_type1_s*** %FDArray, align 8, !tbaa !1
  %125 = bitcast %struct.gs_font_type1_s** %124 to i8*
  call void %120(%struct.gs_memory_s* %123, i8* %125, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0)) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.220

if.end.160:                                       ; preds = %if.end.151
  %126 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %procs161 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %126, i32 0, i32 20
  %enumerate_glyph = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs161, i32 0, i32 6
  store i32 (%struct.gs_font_s*, i32*, i32, i64*)* @gs_font_cid0_enumerate_glyph, i32 (%struct.gs_font_s*, i32*, i32, i64*)** %enumerate_glyph, align 8, !tbaa !61
  %127 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %procs162 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %127, i32 0, i32 20
  %glyph_outline = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs162, i32 0, i32 8
  store i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)* @z9_glyph_outline, i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)** %glyph_outline, align 8, !tbaa !63
  %128 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %procs163 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %128, i32 0, i32 20
  %glyph_info = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs163, i32 0, i32 7
  store i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)* @z9_glyph_info, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)** %glyph_info, align 8, !tbaa !64
  %129 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %130 = bitcast %struct.gs_font_base_s* %129 to %struct.gs_font_cid0_s*
  store %struct.gs_font_cid0_s* %130, %struct.gs_font_cid0_s** %pfcid, align 8, !tbaa !1
  %131 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfcid, align 8, !tbaa !1
  %cidata = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %131, i32 0, i32 29
  %common164 = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata, i32 0, i32 0
  %132 = bitcast %struct.gs_font_cid_data_s* %common164 to i8*
  %133 = bitcast %struct.gs_font_cid_data_s* %common to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %132, i8* %133, i64 56, i32 8, i1 false), !tbaa.struct !65
  %134 = load i32, i32* %CIDMapOffset, align 4, !tbaa !19
  %conv165 = zext i32 %134 to i64
  %135 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfcid, align 8, !tbaa !1
  %cidata166 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %135, i32 0, i32 29
  %CIDMapOffset167 = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata166, i32 0, i32 1
  store i64 %conv165, i64* %CIDMapOffset167, align 8, !tbaa !66
  %136 = load %struct.gs_font_type1_s**, %struct.gs_font_type1_s*** %FDArray, align 8, !tbaa !1
  %137 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfcid, align 8, !tbaa !1
  %cidata168 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %137, i32 0, i32 29
  %FDArray169 = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata168, i32 0, i32 2
  store %struct.gs_font_type1_s** %136, %struct.gs_font_type1_s*** %FDArray169, align 8, !tbaa !67
  %138 = load i32, i32* %FDArray_size, align 4, !tbaa !19
  %139 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfcid, align 8, !tbaa !1
  %cidata170 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %139, i32 0, i32 29
  %FDArray_size171 = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata170, i32 0, i32 3
  store i32 %138, i32* %FDArray_size171, align 4, !tbaa !68
  %140 = load i32, i32* %FDBytes, align 4, !tbaa !19
  %141 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfcid, align 8, !tbaa !1
  %cidata172 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %141, i32 0, i32 29
  %FDBytes173 = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata172, i32 0, i32 4
  store i32 %140, i32* %FDBytes173, align 4, !tbaa !69
  %142 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfcid, align 8, !tbaa !1
  %cidata174 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %142, i32 0, i32 29
  %glyph_data = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata174, i32 0, i32 5
  store i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, i32*)* @z9_glyph_data, i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, i32*)** %glyph_data, align 8, !tbaa !32
  %143 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfcid, align 8, !tbaa !1
  %cidata175 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %143, i32 0, i32 29
  %proc_data = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata175, i32 0, i32 6
  store i8* null, i8** %proc_data, align 8, !tbaa !70
  %144 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfcid, align 8, !tbaa !1
  %font_name = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %144, i32 0, i32 22
  %size = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %font_name, i32 0, i32 1
  %145 = load i32, i32* %size, align 4, !tbaa !71
  %cmp176 = icmp eq i32 %145, 0
  br i1 %cmp176, label %if.then.178, label %if.end.182

if.then.178:                                      ; preds = %if.end.160
  %146 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory179 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %146, i32 0, i32 1
  %current180 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory179, i32 0, i32 0
  %147 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current180, align 8, !tbaa !47
  %148 = bitcast %struct.gs_ref_memory_s* %147 to %struct.gs_memory_s*
  call void @get_font_name(%struct.gs_memory_s* %148, %struct.ref_s* %cfnstr, %struct.ref_s* %CIDFontName) #4
  %149 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfcid, align 8, !tbaa !1
  %font_name181 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %149, i32 0, i32 22
  call void @copy_font_name(%struct.gs_font_name_s* %font_name181, %struct.ref_s* %cfnstr) #4
  br label %if.end.182

if.end.182:                                       ; preds = %if.then.178, %if.end.160
  %150 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %150, i32 0, i32 8
  %151 = load i8*, i8** %client_data, align 8, !tbaa !72
  %152 = bitcast i8* %151 to %struct.font_data_s*
  %u = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %152, i32 0, i32 6
  %cid0 = bitcast %union._fs* %u to %struct._fc0*
  %GlyphDirectory183 = getelementptr inbounds %struct._fc0, %struct._fc0* %cid0, i32 0, i32 0
  %153 = bitcast %struct.ref_s* %GlyphDirectory183 to i8*
  %154 = bitcast %struct.ref_s* %GlyphDirectory to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %153, i8* %154, i64 16, i32 8, i1 false), !tbaa.struct !48
  %155 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %client_data184 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %155, i32 0, i32 8
  %156 = load i8*, i8** %client_data184, align 8, !tbaa !72
  %157 = bitcast i8* %156 to %struct.font_data_s*
  %u185 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %157, i32 0, i32 6
  %cid0186 = bitcast %union._fs* %u185 to %struct._fc0*
  %GlyphData187 = getelementptr inbounds %struct._fc0, %struct._fc0* %cid0186, i32 0, i32 1
  %158 = bitcast %struct.ref_s* %GlyphData187 to i8*
  %159 = bitcast %struct.ref_s* %GlyphData to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %158, i8* %159, i64 16, i32 8, i1 false), !tbaa.struct !48
  %160 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %client_data188 = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %160, i32 0, i32 8
  %161 = load i8*, i8** %client_data188, align 8, !tbaa !72
  %162 = bitcast i8* %161 to %struct.font_data_s*
  %u189 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %162, i32 0, i32 6
  %cid0190 = bitcast %union._fs* %u189 to %struct._fc0*
  %DataSource191 = getelementptr inbounds %struct._fc0, %struct._fc0* %cid0190, i32 0, i32 2
  %163 = bitcast %struct.ref_s* %DataSource191 to i8*
  %164 = bitcast %struct.ref_s* %DataSource to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %163, i8* %164, i64 16, i32 8, i1 false), !tbaa.struct !48
  %165 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %166 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %167 = bitcast %struct.gs_font_base_s* %166 to %struct.gs_font_s*
  %call192 = call i32 @define_gs_font(%struct.gs_context_state_s* %165, %struct.gs_font_s* %167) #4
  store i32 %call192, i32* %code, align 4, !tbaa !19
  %168 = load i32, i32* %code, align 4, !tbaa !19
  %cmp193 = icmp sge i32 %168, 0
  br i1 %cmp193, label %if.then.195, label %if.end.197

if.then.195:                                      ; preds = %if.end.182
  %169 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %notify_list = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %169, i32 0, i32 5
  %170 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %171 = bitcast %struct.gs_font_base_s* %170 to i8*
  %call196 = call i32 @gs_notify_register(%struct.gs_notify_list_s* %notify_list, i32 (i8*, i8*)* @notify_remove_font_type9, i8* %171) #4
  store i32 %call196, i32* %code, align 4, !tbaa !19
  br label %if.end.197

if.end.197:                                       ; preds = %if.then.195, %if.end.182
  %172 = load i32, i32* %code, align 4, !tbaa !19
  %cmp198 = icmp sge i32 %172, 0
  br i1 %cmp198, label %if.then.200, label %if.end.213

if.then.200:                                      ; preds = %if.end.197
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond.201

for.cond.201:                                     ; preds = %for.inc.210, %if.then.200
  %173 = load i32, i32* %i, align 4, !tbaa !19
  %174 = load i32, i32* %FDArray_size, align 4, !tbaa !19
  %cmp202 = icmp ult i32 %173, %174
  br i1 %cmp202, label %for.body.204, label %for.end.212

for.body.204:                                     ; preds = %for.cond.201
  %175 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %dir = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %175, i32 0, i32 3
  %176 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8, !tbaa !73
  %177 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom205 = zext i32 %177 to i64
  %178 = load %struct.gs_font_type1_s**, %struct.gs_font_type1_s*** %FDArray, align 8, !tbaa !1
  %arrayidx206 = getelementptr inbounds %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %178, i64 %idxprom205
  %179 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %arrayidx206, align 8, !tbaa !1
  %dir207 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %179, i32 0, i32 3
  store %struct.gs_font_dir_s* %176, %struct.gs_font_dir_s** %dir207, align 8, !tbaa !74
  %180 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %181 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom208 = zext i32 %181 to i64
  %182 = load %struct.gs_font_type1_s**, %struct.gs_font_type1_s*** %FDArray, align 8, !tbaa !1
  %arrayidx209 = getelementptr inbounds %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %182, i64 %idxprom208
  %183 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %arrayidx209, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %183, i32 0, i32 29
  %parent = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data, i32 0, i32 3
  store %struct.gs_font_base_s* %180, %struct.gs_font_base_s** %parent, align 8, !tbaa !79
  br label %for.inc.210

for.inc.210:                                      ; preds = %for.body.204
  %184 = load i32, i32* %i, align 4, !tbaa !19
  %inc211 = add i32 %184, 1
  store i32 %inc211, i32* %i, align 4, !tbaa !19
  br label %for.cond.201

for.end.212:                                      ; preds = %for.cond.201
  %185 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %185, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.220

if.end.213:                                       ; preds = %if.end.197
  br label %fail

fail:                                             ; preds = %if.end.213, %cleanup.144, %if.then.150
  %186 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory214 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %186, i32 0, i32 1
  %current215 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory214, i32 0, i32 0
  %187 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current215, align 8, !tbaa !47
  %188 = bitcast %struct.gs_ref_memory_s* %187 to %struct.gs_memory_s*
  %procs216 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %188, i32 0, i32 1
  %free_object217 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs216, i32 0, i32 2
  %189 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object217, align 8, !tbaa !60
  %190 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory218 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %190, i32 0, i32 1
  %current219 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory218, i32 0, i32 0
  %191 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current219, align 8, !tbaa !47
  %192 = bitcast %struct.gs_ref_memory_s* %191 to %struct.gs_memory_s*
  %193 = load %struct.gs_font_type1_s**, %struct.gs_font_type1_s*** %FDArray, align 8, !tbaa !1
  %194 = bitcast %struct.gs_font_type1_s** %193 to i8*
  call void %189(%struct.gs_memory_s* %192, i8* %194, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0)) #4
  %195 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %195, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.220

cleanup.220:                                      ; preds = %fail, %for.end.212, %if.then.154, %cleanup.144, %if.then.128, %if.then.119, %if.then.113, %cleanup.98, %if.then
  %196 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %196) #1
  %197 = bitcast %struct.gs_font_cid0_s** %pfcid to i8*
  call void @llvm.lifetime.end(i64 8, i8* %197) #1
  %198 = bitcast %struct.gs_font_base_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %198) #1
  %199 = bitcast i32* %CIDMapOffset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %199) #1
  %200 = bitcast i32* %FDBytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %200) #1
  %201 = bitcast i32* %FDArray_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %201) #1
  %202 = bitcast %struct.gs_font_type1_s*** %FDArray to i8*
  call void @llvm.lifetime.end(i64 8, i8* %202) #1
  %203 = bitcast %struct.ref_s* %CIDFontName to i8*
  call void @llvm.lifetime.end(i64 16, i8* %203) #1
  %204 = bitcast %struct.ref_s** %pCIDFontName to i8*
  call void @llvm.lifetime.end(i64 8, i8* %204) #1
  %205 = bitcast %struct.ref_s* %cfnstr to i8*
  call void @llvm.lifetime.end(i64 16, i8* %205) #1
  %206 = bitcast %struct.ref_s** %prfda to i8*
  call void @llvm.lifetime.end(i64 8, i8* %206) #1
  %207 = bitcast %struct.ref_s* %DataSource to i8*
  call void @llvm.lifetime.end(i64 16, i8* %207) #1
  %208 = bitcast %struct.ref_s* %GlyphData to i8*
  call void @llvm.lifetime.end(i64 16, i8* %208) #1
  %209 = bitcast %struct.ref_s* %GlyphDirectory to i8*
  call void @llvm.lifetime.end(i64 16, i8* %209) #1
  %210 = bitcast %struct.gs_font_cid_data_s* %common to i8*
  call void @llvm.lifetime.end(i64 56, i8* %210) #1
  %211 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %211) #1
  %212 = bitcast %struct.build_proc_refs_s* %build to i8*
  call void @llvm.lifetime.end(i64 32, i8* %212) #1
  %213 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %213) #1
  %214 = load i32, i32* %retval
  ret i32 %214
}

declare i32 @build_proc_name_refs(%struct.gs_memory_s*, %struct.build_proc_refs_s*, i8*, i8*) #2

declare i32 @cid_font_data_param(%struct.ref_s*, %struct.gs_font_cid_data_s*, %struct.ref_s*) #2

declare i32 @dict_find_string(%struct.ref_s*, i8*, %struct.ref_s**) #2

declare i32 @dict_int_param(%struct.ref_s*, i8*, i32, i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @dict_uint_param(%struct.ref_s*, i8*, i32, i32, i32, i32*) #2

declare i32 @file_switch_to_read(%struct.ref_s*) #2

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

declare i32 @array_get(%struct.gs_memory_s*, %struct.ref_s*, i64, %struct.ref_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @fd_array_element(%struct.gs_context_state_s* %i_ctx_p, %struct.gs_font_type1_s** %ppfont, %struct.ref_s* %prfd) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %ppfont.addr = alloca %struct.gs_font_type1_s**, align 8
  %prfd.addr = alloca %struct.ref_s*, align 8
  %refs = alloca %struct.charstring_font_refs_s, align 8
  %data1 = alloca %struct.gs_type1_data_s, align 8
  %build = alloca %struct.build_proc_refs_s, align 8
  %pbfont = alloca %struct.gs_font_base_s*, align 8
  %pfont = alloca %struct.gs_font_type1_s*, align 8
  %fonttype = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.gs_font_type1_s** %ppfont, %struct.gs_font_type1_s*** %ppfont.addr, align 8, !tbaa !1
  store %struct.ref_s* %prfd, %struct.ref_s** %prfd.addr, align 8, !tbaa !1
  %0 = bitcast %struct.charstring_font_refs_s* %refs to i8*
  call void @llvm.lifetime.start(i64 48, i8* %0) #1
  %1 = bitcast %struct.gs_type1_data_s* %data1 to i8*
  call void @llvm.lifetime.start(i64 544, i8* %1) #1
  %2 = bitcast %struct.build_proc_refs_s* %build to i8*
  call void @llvm.lifetime.start(i64 32, i8* %2) #1
  %3 = bitcast %struct.gs_font_base_s** %pbfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.gs_font_type1_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %fonttype to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 1, i32* %fonttype, align 4, !tbaa !19
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.ref_s*, %struct.ref_s** %prfd.addr, align 8, !tbaa !1
  %call = call i32 @charstring_font_get_refs(%struct.ref_s* %7, %struct.charstring_font_refs_s* %refs) #4
  store i32 %call, i32* %code, align 4, !tbaa !19
  %8 = load i32, i32* %code, align 4, !tbaa !19
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = load %struct.ref_s*, %struct.ref_s** %prfd.addr, align 8, !tbaa !1
  %call1 = call i32 @dict_int_param(%struct.ref_s* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 1, i32 2, i32 1, i32* %fonttype) #4
  store i32 %call1, i32* %code, align 4, !tbaa !19
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %10 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %11 = load i32, i32* %fonttype, align 4, !tbaa !19
  switch i32 %11, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.10
  ]

sw.bb:                                            ; preds = %if.end
  %interpret = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data1, i32 0, i32 1
  store i32 (%struct.gs_type1_state_s*, %struct.gs_glyph_data_s*, i32*)* @gs_type1_interpret, i32 (%struct.gs_type1_state_s*, %struct.gs_glyph_data_s*, i32*)** %interpret, align 8, !tbaa !80
  %subroutineNumberBias = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data1, i32 0, i32 5
  store i32 0, i32* %subroutineNumberBias, align 4, !tbaa !81
  %lenIV = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data1, i32 0, i32 4
  store i32 4, i32* %lenIV, align 4, !tbaa !82
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %13 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !47
  %14 = bitcast %struct.gs_ref_memory_s* %13 to %struct.gs_memory_s*
  %15 = load %struct.ref_s*, %struct.ref_s** %prfd.addr, align 8, !tbaa !1
  %call3 = call i32 @charstring_font_params(%struct.gs_memory_s* %14, %struct.ref_s* %15, %struct.charstring_font_refs_s* %refs, %struct.gs_type1_data_s* %data1) #4
  store i32 %call3, i32* %code, align 4, !tbaa !19
  %16 = load i32, i32* %code, align 4, !tbaa !19
  %cmp4 = icmp slt i32 %16, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %sw.bb
  %17 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %sw.bb
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory7 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %18, i32 0, i32 1
  %current8 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory7, i32 0, i32 0
  %19 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current8, align 8, !tbaa !47
  %20 = bitcast %struct.gs_ref_memory_s* %19 to %struct.gs_memory_s*
  %call9 = call i32 @build_proc_name_refs(%struct.gs_memory_s* %20, %struct.build_proc_refs_s* %build, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0)) #4
  store i32 %call9, i32* %code, align 4, !tbaa !19
  br label %sw.epilog

sw.bb.10:                                         ; preds = %if.end
  %21 = load %struct.ref_s*, %struct.ref_s** %prfd.addr, align 8, !tbaa !1
  %call11 = call i32 @type2_font_params(%struct.ref_s* %21, %struct.charstring_font_refs_s* %refs, %struct.gs_type1_data_s* %data1) #4
  store i32 %call11, i32* %code, align 4, !tbaa !19
  %22 = load i32, i32* %code, align 4, !tbaa !19
  %cmp12 = icmp slt i32 %22, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %sw.bb.10
  %23 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %sw.bb.10
  %24 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory15 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %24, i32 0, i32 1
  %current16 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory15, i32 0, i32 0
  %25 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current16, align 8, !tbaa !47
  %26 = bitcast %struct.gs_ref_memory_s* %25 to %struct.gs_memory_s*
  %27 = load %struct.ref_s*, %struct.ref_s** %prfd.addr, align 8, !tbaa !1
  %call17 = call i32 @charstring_font_params(%struct.gs_memory_s* %26, %struct.ref_s* %27, %struct.charstring_font_refs_s* %refs, %struct.gs_type1_data_s* %data1) #4
  store i32 %call17, i32* %code, align 4, !tbaa !19
  %28 = load i32, i32* %code, align 4, !tbaa !19
  %cmp18 = icmp slt i32 %28, 0
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.14
  %29 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.end.14
  %30 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory21 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %30, i32 0, i32 1
  %current22 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory21, i32 0, i32 0
  %31 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current22, align 8, !tbaa !47
  %32 = bitcast %struct.gs_ref_memory_s* %31 to %struct.gs_memory_s*
  %call23 = call i32 @build_proc_name_refs(%struct.gs_memory_s* %32, %struct.build_proc_refs_s* %build, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0)) #4
  store i32 %call23, i32* %code, align 4, !tbaa !19
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.20, %if.end.6
  %33 = load i32, i32* %code, align 4, !tbaa !19
  %cmp24 = icmp slt i32 %33, 0
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %sw.epilog
  %34 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %34, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %sw.epilog
  %35 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %36 = load %struct.ref_s*, %struct.ref_s** %prfd.addr, align 8, !tbaa !1
  %37 = load i32, i32* %fonttype, align 4, !tbaa !19
  %call27 = call i32 @build_gs_FDArray_font(%struct.gs_context_state_s* %35, %struct.ref_s* %36, %struct.gs_font_base_s** %pbfont, i32 %37, %struct.gs_memory_struct_type_s* @st_gs_font_type1, %struct.build_proc_refs_s* %build) #4
  store i32 %call27, i32* %code, align 4, !tbaa !19
  %38 = load i32, i32* %code, align 4, !tbaa !19
  %cmp28 = icmp slt i32 %38, 0
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.26
  %39 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %39, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %if.end.26
  %40 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %41 = bitcast %struct.gs_font_base_s* %40 to %struct.gs_font_type1_s*
  store %struct.gs_font_type1_s* %41, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %42 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FAPI = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %42, i32 0, i32 25
  store %struct.gs_fapi_server_s* null, %struct.gs_fapi_server_s** %FAPI, align 8, !tbaa !83
  %43 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont, align 8, !tbaa !1
  %FAPI_font_data = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %43, i32 0, i32 26
  store i8* null, i8** %FAPI_font_data, align 8, !tbaa !84
  %44 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %call31 = call i32 @charstring_font_init(%struct.gs_font_type1_s* %44, %struct.charstring_font_refs_s* %refs, %struct.gs_type1_data_s* %data1) #4
  %45 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %45, i32 0, i32 29
  %procs = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data, i32 0, i32 0
  %glyph_data = getelementptr inbounds %struct.gs_type1_data_procs_s, %struct.gs_type1_data_procs_s* %procs, i32 0, i32 0
  store i32 (%struct.gs_font_type1_s*, i64, %struct.gs_glyph_data_s*)* @z9_FDArray_glyph_data, i32 (%struct.gs_font_type1_s*, i64, %struct.gs_glyph_data_s*)** %glyph_data, align 8, !tbaa !85
  %46 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %data32 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %46, i32 0, i32 29
  %procs33 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data32, i32 0, i32 0
  %seac_data = getelementptr inbounds %struct.gs_type1_data_procs_s, %struct.gs_type1_data_procs_s* %procs33, i32 0, i32 2
  store i32 (%struct.gs_font_type1_s*, i32, i64*, %struct.gs_const_string_s*, %struct.gs_glyph_data_s*)* @z9_FDArray_seac_data, i32 (%struct.gs_font_type1_s*, i32, i64*, %struct.gs_const_string_s*, %struct.gs_glyph_data_s*)** %seac_data, align 8, !tbaa !86
  %47 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %48 = load %struct.gs_font_type1_s**, %struct.gs_font_type1_s*** %ppfont.addr, align 8, !tbaa !1
  store %struct.gs_font_type1_s* %47, %struct.gs_font_type1_s** %48, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.30, %if.then.29, %if.then.25, %sw.default, %if.then.19, %if.then.13, %if.then.5, %if.then
  %49 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast i32* %fonttype to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = bitcast %struct.gs_font_type1_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = bitcast %struct.gs_font_base_s** %pbfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %53 = bitcast %struct.build_proc_refs_s* %build to i8*
  call void @llvm.lifetime.end(i64 32, i8* %53) #1
  %54 = bitcast %struct.gs_type1_data_s* %data1 to i8*
  call void @llvm.lifetime.end(i64 544, i8* %54) #1
  %55 = bitcast %struct.charstring_font_refs_s* %refs to i8*
  call void @llvm.lifetime.end(i64 48, i8* %55) #1
  %56 = load i32, i32* %retval
  ret i32 %56
}

declare i32 @build_gs_outline_font(%struct.gs_context_state_s*, %struct.ref_s*, %struct.gs_font_base_s**, i32, %struct.gs_memory_struct_type_s*, %struct.build_proc_refs_s*, i32, i32 (%struct.gs_context_state_s*, %struct.ref_s*, %struct.gs_font_base_s**, i32, %struct.gs_memory_struct_type_s*, %struct.build_proc_refs_s*, i32)*) #2

declare i32 @build_gs_simple_font(%struct.gs_context_state_s*, %struct.ref_s*, %struct.gs_font_base_s**, i32, %struct.gs_memory_struct_type_s*, %struct.build_proc_refs_s*, i32) #2

declare i32 @gs_font_cid0_enumerate_glyph(%struct.gs_font_s*, i32*, i32, i64*) #2

; Function Attrs: nounwind uwtable
define internal i32 @z9_glyph_outline(%struct.gs_font_s* %font, i32 %WMode, i64 %glyph, %struct.gs_matrix_s* %pmat, %struct.gx_path_s* %ppath, double* %sbw) #0 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_s*, align 8
  %WMode.addr = alloca i32, align 4
  %glyph.addr = alloca i64, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %sbw.addr = alloca double*, align 8
  %pfcid = alloca %struct.gs_font_cid0_s*, align 8
  %gref = alloca %struct.ref_s, align 8
  %gdata = alloca %struct.gs_glyph_data_s, align 8
  %code = alloca i32, align 4
  %fidx = alloca i32, align 4
  %ocode = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i32 %WMode, i32* %WMode.addr, align 4, !tbaa !19
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !42
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store double* %sbw, double** %sbw.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_cid0_s** %pfcid to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_font_s* %1 to %struct.gs_font_cid0_s*
  store %struct.gs_font_cid0_s* %2, %struct.gs_font_cid0_s** %pfcid, align 8, !tbaa !1
  %3 = bitcast %struct.ref_s* %gref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = bitcast %struct.gs_glyph_data_s* %gdata to i8*
  call void @llvm.lifetime.start(i64 48, i8* %4) #1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %fidx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %ocode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %8, i32 0, i32 2
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !28
  %memory1 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata, i32 0, i32 3
  store %struct.gs_memory_s* %9, %struct.gs_memory_s** %memory1, align 8, !tbaa !29
  %10 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfcid, align 8, !tbaa !1
  %cidata = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %10, i32 0, i32 29
  %glyph_data = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata, i32 0, i32 5
  %11 = load i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, i32*)*, i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, i32*)** %glyph_data, align 8, !tbaa !32
  %12 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfcid, align 8, !tbaa !1
  %13 = bitcast %struct.gs_font_cid0_s* %12 to %struct.gs_font_base_s*
  %14 = load i64, i64* %glyph.addr, align 8, !tbaa !42
  %call = call i32 %11(%struct.gs_font_base_s* %13, i64 %14, %struct.gs_glyph_data_s* %gdata, i32* %fidx) #4
  store i32 %call, i32* %code, align 4, !tbaa !19
  %15 = load i32, i32* %code, align 4, !tbaa !19
  %cmp = icmp slt i32 %15, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %16 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %17 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %17, i32 0, i32 2
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory2, align 8, !tbaa !28
  %19 = load i64, i64* %glyph.addr, align 8, !tbaa !42
  call void @glyph_ref(%struct.gs_memory_s* %18, i64 %19, %struct.ref_s* %gref) #4
  %20 = load i32, i32* %fidx, align 4, !tbaa !19
  %idxprom = sext i32 %20 to i64
  %21 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfcid, align 8, !tbaa !1
  %cidata3 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %21, i32 0, i32 29
  %FDArray = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata3, i32 0, i32 2
  %22 = load %struct.gs_font_type1_s**, %struct.gs_font_type1_s*** %FDArray, align 8, !tbaa !67
  %arrayidx = getelementptr inbounds %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %22, i64 %idxprom
  %23 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %arrayidx, align 8, !tbaa !1
  %24 = load i32, i32* %WMode.addr, align 4, !tbaa !19
  %25 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %26 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %27 = load double*, double** %sbw.addr, align 8, !tbaa !1
  %call4 = call i32 @zcharstring_outline(%struct.gs_font_type1_s* %23, i32 %24, %struct.ref_s* %gref, %struct.gs_glyph_data_s* %gdata, %struct.gs_matrix_s* %25, %struct.gx_path_s* %26, double* %27) #4
  store i32 %call4, i32* %ocode, align 4, !tbaa !19
  call void @gs_glyph_data_free(%struct.gs_glyph_data_s* %gdata, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0)) #4
  %28 = load i32, i32* %ocode, align 4, !tbaa !19
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %29 = bitcast i32* %ocode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = bitcast i32* %fidx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %31 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast %struct.gs_glyph_data_s* %gdata to i8*
  call void @llvm.lifetime.end(i64 48, i8* %32) #1
  %33 = bitcast %struct.ref_s* %gref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %33) #1
  %34 = bitcast %struct.gs_font_cid0_s** %pfcid to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define internal i32 @z9_glyph_info(%struct.gs_font_s* %font, i64 %glyph, %struct.gs_matrix_s* %pmat, i32 %members, %struct.gs_glyph_info_s* %info) #0 {
entry:
  %font.addr = alloca %struct.gs_font_s*, align 8
  %glyph.addr = alloca i64, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %members.addr = alloca i32, align 4
  %info.addr = alloca %struct.gs_glyph_info_s*, align 8
  %wmode = alloca i32, align 4
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !42
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store i32 %members, i32* %members.addr, align 4, !tbaa !19
  store %struct.gs_glyph_info_s* %info, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %0 = bitcast i32* %wmode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %members.addr, align 4, !tbaa !19
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 0, i32 1
  store i32 %cond, i32* %wmode, align 4, !tbaa !19
  %2 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %3 = load i64, i64* %glyph.addr, align 8, !tbaa !42
  %4 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %5 = load i32, i32* %members.addr, align 4, !tbaa !19
  %6 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %7 = load i32, i32* %wmode, align 4, !tbaa !19
  %call = call i32 @z1_glyph_info_generic(%struct.gs_font_s* %2, i64 %3, %struct.gs_matrix_s* %4, i32 %5, %struct.gs_glyph_info_s* %6, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)* @gs_default_glyph_info, i32 %7) #4
  %8 = bitcast i32* %wmode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @z9_glyph_data(%struct.gs_font_base_s* %pbfont, i64 %glyph, %struct.gs_glyph_data_s* %pgd, i32* %pfidx) #0 {
entry:
  %retval = alloca i32, align 4
  %pbfont.addr = alloca %struct.gs_font_base_s*, align 8
  %glyph.addr = alloca i64, align 8
  %pgd.addr = alloca %struct.gs_glyph_data_s*, align 8
  %pfidx.addr = alloca i32*, align 8
  %pfont = alloca %struct.gs_font_cid0_s*, align 8
  %pfdata = alloca %struct.font_data_s*, align 8
  %glyph_index = alloca i64, align 8
  %gdata = alloca %struct.gs_glyph_data_s, align 8
  %fidx = alloca i64, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %fd_gd = alloca [16 x i8], align 16
  %num_bytes = alloca i32, align 4
  %base = alloca i64, align 8
  %gidx = alloca i64, align 8
  %fidx_next = alloca i64, align 8
  %gidx_next = alloca i64, align 8
  %rcode = alloca i32, align 4
  %orig_data = alloca %struct.gs_glyph_data_s, align 8
  store %struct.gs_font_base_s* %pbfont, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !42
  store %struct.gs_glyph_data_s* %pgd, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  store i32* %pfidx, i32** %pfidx.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_cid0_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_font_base_s* %1 to %struct.gs_font_cid0_s*
  store %struct.gs_font_cid0_s* %2, %struct.gs_font_cid0_s** %pfont, align 8, !tbaa !1
  %3 = bitcast %struct.font_data_s** %pfdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %4, i32 0, i32 8
  %5 = load i8*, i8** %client_data, align 8, !tbaa !87
  %6 = bitcast i8* %5 to %struct.font_data_s*
  store %struct.font_data_s* %6, %struct.font_data_s** %pfdata, align 8, !tbaa !1
  %7 = bitcast i64* %glyph_index to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load i64, i64* %glyph.addr, align 8, !tbaa !42
  %sub = sub i64 %8, 2147483648
  store i64 %sub, i64* %glyph_index, align 8, !tbaa !42
  %9 = bitcast %struct.gs_glyph_data_s* %gdata to i8*
  call void @llvm.lifetime.start(i64 48, i8* %9) #1
  %10 = bitcast i64* %fidx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %12, i32 0, i32 2
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !88
  %memory1 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata, i32 0, i32 3
  store %struct.gs_memory_s* %13, %struct.gs_memory_s** %memory1, align 8, !tbaa !29
  %14 = load %struct.font_data_s*, %struct.font_data_s** %pfdata, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %14, i32 0, i32 6
  %cid0 = bitcast %union._fs* %u to %struct._fc0*
  %GlyphDirectory = getelementptr inbounds %struct._fc0, %struct._fc0* %cid0, i32 0, i32 0
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %GlyphDirectory, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %15 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 1
  %16 = load i8, i8* %arrayidx, align 1, !tbaa !27
  %conv = zext i8 %16 to i32
  %cmp = icmp eq i32 %conv, 14
  br i1 %cmp, label %if.end.27, label %if.then

if.then:                                          ; preds = %entry
  %17 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont, align 8, !tbaa !1
  %memory3 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %17, i32 0, i32 2
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory3, align 8, !tbaa !88
  %19 = load %struct.font_data_s*, %struct.font_data_s** %pfdata, align 8, !tbaa !1
  %u4 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %19, i32 0, i32 6
  %cid05 = bitcast %union._fs* %u4 to %struct._fc0*
  %GlyphDirectory6 = getelementptr inbounds %struct._fc0, %struct._fc0* %cid05, i32 0, i32 0
  %20 = load i64, i64* %glyph_index, align 8, !tbaa !42
  %call = call i32 @font_gdir_get_outline(%struct.gs_memory_s* %18, %struct.ref_s* %GlyphDirectory6, i64 %20, %struct.gs_glyph_data_s* %gdata) #4
  store i32 %call, i32* %code, align 4, !tbaa !19
  %21 = load i32, i32* %code, align 4, !tbaa !19
  %cmp7 = icmp slt i32 %21, 0
  br i1 %cmp7, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  %22 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.114

if.end:                                           ; preds = %if.then
  %bits = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata, i32 0, i32 0
  %data = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits, i32 0, i32 0
  %23 = load i8*, i8** %data, align 8, !tbaa !43
  %tobool = icmp ne i8* %23, null
  br i1 %tobool, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.114

if.end.11:                                        ; preds = %if.end
  %24 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont, align 8, !tbaa !1
  %cidata = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %24, i32 0, i32 29
  %FDBytes = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata, i32 0, i32 4
  %25 = load i32, i32* %FDBytes, align 4, !tbaa !69
  %call12 = call i32 @get_index(%struct.gs_glyph_data_s* %gdata, i32 %25, i64* %fidx) #4
  store i32 %call12, i32* %code, align 4, !tbaa !19
  %26 = load i32, i32* %code, align 4, !tbaa !19
  %cmp13 = icmp slt i32 %26, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.11
  %27 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.114

if.end.16:                                        ; preds = %if.end.11
  %28 = load i64, i64* %fidx, align 8, !tbaa !42
  %29 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont, align 8, !tbaa !1
  %cidata17 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %29, i32 0, i32 29
  %FDArray_size = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata17, i32 0, i32 3
  %30 = load i32, i32* %FDArray_size, align 4, !tbaa !68
  %conv18 = zext i32 %30 to i64
  %cmp19 = icmp uge i64 %28, %conv18
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.16
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.114

if.end.22:                                        ; preds = %if.end.16
  %31 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %tobool23 = icmp ne %struct.gs_glyph_data_s* %31, null
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.22
  %32 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %33 = bitcast %struct.gs_glyph_data_s* %32 to i8*
  %34 = bitcast %struct.gs_glyph_data_s* %gdata to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 48, i32 8, i1 false), !tbaa.struct !89
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.end.22
  %35 = load i64, i64* %fidx, align 8, !tbaa !42
  %conv26 = trunc i64 %35 to i32
  %36 = load i32*, i32** %pfidx.addr, align 8, !tbaa !1
  store i32 %conv26, i32* %36, align 4, !tbaa !19
  %37 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %37, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.114

if.end.27:                                        ; preds = %entry
  %38 = load i64, i64* %glyph_index, align 8, !tbaa !42
  %cmp28 = icmp slt i64 %38, 0
  br i1 %cmp28, label %if.then.34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.27
  %39 = load i64, i64* %glyph_index, align 8, !tbaa !42
  %40 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont, align 8, !tbaa !1
  %cidata30 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %40, i32 0, i32 29
  %common = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata30, i32 0, i32 0
  %CIDCount = getelementptr inbounds %struct.gs_font_cid_data_s, %struct.gs_font_cid_data_s* %common, i32 0, i32 1
  %41 = load i32, i32* %CIDCount, align 4, !tbaa !90
  %conv31 = sext i32 %41 to i64
  %cmp32 = icmp sge i64 %39, %conv31
  br i1 %cmp32, label %if.then.34, label %if.end.38

if.then.34:                                       ; preds = %lor.lhs.false, %if.end.27
  %42 = load i32*, i32** %pfidx.addr, align 8, !tbaa !1
  store i32 0, i32* %42, align 4, !tbaa !19
  %43 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %tobool35 = icmp ne %struct.gs_glyph_data_s* %43, null
  br i1 %tobool35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.then.34
  %44 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  call void @gs_glyph_data_from_null(%struct.gs_glyph_data_s* %44) #4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.then.34
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.114

if.end.38:                                        ; preds = %lor.lhs.false
  %45 = bitcast [16 x i8]* %fd_gd to i8*
  call void @llvm.lifetime.start(i64 16, i8* %45) #1
  %46 = bitcast i32* %num_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #1
  %47 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont, align 8, !tbaa !1
  %cidata39 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %47, i32 0, i32 29
  %FDBytes40 = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata39, i32 0, i32 4
  %48 = load i32, i32* %FDBytes40, align 4, !tbaa !69
  %49 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont, align 8, !tbaa !1
  %cidata41 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %49, i32 0, i32 29
  %common42 = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata41, i32 0, i32 0
  %GDBytes = getelementptr inbounds %struct.gs_font_cid_data_s, %struct.gs_font_cid_data_s* %common42, i32 0, i32 3
  %50 = load i32, i32* %GDBytes, align 4, !tbaa !91
  %add = add nsw i32 %48, %50
  store i32 %add, i32* %num_bytes, align 4, !tbaa !19
  %51 = bitcast i64* %base to i8*
  call void @llvm.lifetime.start(i64 8, i8* %51) #1
  %52 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont, align 8, !tbaa !1
  %cidata43 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %52, i32 0, i32 29
  %CIDMapOffset = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata43, i32 0, i32 1
  %53 = load i64, i64* %CIDMapOffset, align 8, !tbaa !66
  %54 = load i64, i64* %glyph_index, align 8, !tbaa !42
  %55 = load i32, i32* %num_bytes, align 4, !tbaa !19
  %conv44 = zext i32 %55 to i64
  %mul = mul nsw i64 %54, %conv44
  %add45 = add i64 %53, %mul
  store i64 %add45, i64* %base, align 8, !tbaa !42
  %56 = bitcast i64* %gidx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %56) #1
  %57 = bitcast i64* %fidx_next to i8*
  call void @llvm.lifetime.start(i64 8, i8* %57) #1
  %58 = bitcast i64* %gidx_next to i8*
  call void @llvm.lifetime.start(i64 8, i8* %58) #1
  %59 = bitcast i32* %rcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %59) #1
  %60 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont, align 8, !tbaa !1
  %61 = load i64, i64* %base, align 8, !tbaa !42
  %62 = load i32, i32* %num_bytes, align 4, !tbaa !19
  %mul46 = mul i32 %62, 2
  %conv47 = zext i32 %mul46 to i64
  %conv48 = trunc i64 %conv47 to i32
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %fd_gd, i32 0, i32 0
  %call49 = call i32 @cid0_read_bytes(%struct.gs_font_cid0_s* %60, i64 %61, i32 %conv48, i8* %arraydecay, %struct.gs_glyph_data_s* %gdata) #4
  store i32 %call49, i32* %rcode, align 4, !tbaa !19
  %63 = bitcast %struct.gs_glyph_data_s* %orig_data to i8*
  call void @llvm.lifetime.start(i64 48, i8* %63) #1
  %64 = load i32, i32* %rcode, align 4, !tbaa !19
  %cmp50 = icmp slt i32 %64, 0
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.38
  %65 = load i32, i32* %rcode, align 4, !tbaa !19
  store i32 %65, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.53:                                        ; preds = %if.end.38
  %66 = bitcast %struct.gs_glyph_data_s* %orig_data to i8*
  %67 = bitcast %struct.gs_glyph_data_s* %gdata to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* %67, i64 48, i32 8, i1 false), !tbaa.struct !89
  %68 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont, align 8, !tbaa !1
  %cidata54 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %68, i32 0, i32 29
  %FDBytes55 = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata54, i32 0, i32 4
  %69 = load i32, i32* %FDBytes55, align 4, !tbaa !69
  %call56 = call i32 @get_index(%struct.gs_glyph_data_s* %gdata, i32 %69, i64* %fidx) #4
  store i32 %call56, i32* %code, align 4, !tbaa !19
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %if.then.79, label %lor.lhs.false.59

lor.lhs.false.59:                                 ; preds = %if.end.53
  %70 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont, align 8, !tbaa !1
  %cidata60 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %70, i32 0, i32 29
  %common61 = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata60, i32 0, i32 0
  %GDBytes62 = getelementptr inbounds %struct.gs_font_cid_data_s, %struct.gs_font_cid_data_s* %common61, i32 0, i32 3
  %71 = load i32, i32* %GDBytes62, align 4, !tbaa !91
  %call63 = call i32 @get_index(%struct.gs_glyph_data_s* %gdata, i32 %71, i64* %gidx) #4
  store i32 %call63, i32* %code, align 4, !tbaa !19
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %if.then.79, label %lor.lhs.false.66

lor.lhs.false.66:                                 ; preds = %lor.lhs.false.59
  %72 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont, align 8, !tbaa !1
  %cidata67 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %72, i32 0, i32 29
  %FDBytes68 = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata67, i32 0, i32 4
  %73 = load i32, i32* %FDBytes68, align 4, !tbaa !69
  %call69 = call i32 @get_index(%struct.gs_glyph_data_s* %gdata, i32 %73, i64* %fidx_next) #4
  store i32 %call69, i32* %code, align 4, !tbaa !19
  %cmp70 = icmp slt i32 %call69, 0
  br i1 %cmp70, label %if.then.79, label %lor.lhs.false.72

lor.lhs.false.72:                                 ; preds = %lor.lhs.false.66
  %74 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont, align 8, !tbaa !1
  %cidata73 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %74, i32 0, i32 29
  %common74 = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata73, i32 0, i32 0
  %GDBytes75 = getelementptr inbounds %struct.gs_font_cid_data_s, %struct.gs_font_cid_data_s* %common74, i32 0, i32 3
  %75 = load i32, i32* %GDBytes75, align 4, !tbaa !91
  %call76 = call i32 @get_index(%struct.gs_glyph_data_s* %gdata, i32 %75, i64* %gidx_next) #4
  store i32 %call76, i32* %code, align 4, !tbaa !19
  %cmp77 = icmp slt i32 %call76, 0
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %lor.lhs.false.72, %lor.lhs.false.66, %lor.lhs.false.59, %if.end.53
  br label %do.body

do.body:                                          ; preds = %if.then.79
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.80

if.end.80:                                        ; preds = %do.end, %lor.lhs.false.72
  call void @gs_glyph_data_free(%struct.gs_glyph_data_s* %orig_data, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0)) #4
  %76 = load i32, i32* %code, align 4, !tbaa !19
  %cmp81 = icmp slt i32 %76, 0
  br i1 %cmp81, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %if.end.80
  %77 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %77, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.84:                                        ; preds = %if.end.80
  %78 = load i64, i64* %gidx_next, align 8, !tbaa !42
  %79 = load i64, i64* %gidx, align 8, !tbaa !42
  %cmp85 = icmp ule i64 %78, %79
  br i1 %cmp85, label %if.then.87, label %if.end.91

if.then.87:                                       ; preds = %if.end.84
  %80 = load i32*, i32** %pfidx.addr, align 8, !tbaa !1
  store i32 0, i32* %80, align 4, !tbaa !19
  %81 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %tobool88 = icmp ne %struct.gs_glyph_data_s* %81, null
  br i1 %tobool88, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %if.then.87
  %82 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  call void @gs_glyph_data_from_null(%struct.gs_glyph_data_s* %82) #4
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.89, %if.then.87
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.91:                                        ; preds = %if.end.84
  %83 = load i64, i64* %fidx, align 8, !tbaa !42
  %84 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont, align 8, !tbaa !1
  %cidata92 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %84, i32 0, i32 29
  %FDArray_size93 = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata92, i32 0, i32 3
  %85 = load i32, i32* %FDArray_size93, align 4, !tbaa !68
  %conv94 = zext i32 %85 to i64
  %cmp95 = icmp uge i64 %83, %conv94
  br i1 %cmp95, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %if.end.91
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.98:                                        ; preds = %if.end.91
  %86 = load i64, i64* %fidx, align 8, !tbaa !42
  %conv99 = trunc i64 %86 to i32
  %87 = load i32*, i32** %pfidx.addr, align 8, !tbaa !1
  store i32 %conv99, i32* %87, align 4, !tbaa !19
  %88 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %cmp100 = icmp eq %struct.gs_glyph_data_s* %88, null
  br i1 %cmp100, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %if.end.98
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.103:                                       ; preds = %if.end.98
  %89 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont, align 8, !tbaa !1
  %90 = load i64, i64* %gidx, align 8, !tbaa !42
  %91 = load i64, i64* %gidx_next, align 8, !tbaa !42
  %92 = load i64, i64* %gidx, align 8, !tbaa !42
  %sub104 = sub i64 %91, %92
  %conv105 = trunc i64 %sub104 to i32
  %93 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %call106 = call i32 @cid0_read_bytes(%struct.gs_font_cid0_s* %89, i64 %90, i32 %conv105, i8* null, %struct.gs_glyph_data_s* %93) #4
  store i32 %call106, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.103, %if.then.102, %if.then.97, %if.end.90, %if.then.83, %if.then.52
  %94 = bitcast %struct.gs_glyph_data_s* %orig_data to i8*
  call void @llvm.lifetime.end(i64 48, i8* %94) #1
  %95 = bitcast i32* %rcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #1
  %96 = bitcast i64* %gidx_next to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #1
  %97 = bitcast i64* %fidx_next to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  %98 = bitcast i64* %gidx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #1
  %99 = bitcast i64* %base to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #1
  %100 = bitcast i32* %num_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #1
  %101 = bitcast [16 x i8]* %fd_gd to i8*
  call void @llvm.lifetime.end(i64 16, i8* %101) #1
  br label %cleanup.114

cleanup.114:                                      ; preds = %cleanup, %if.end.37, %if.end.25, %if.then.21, %if.then.15, %if.then.10, %if.then.9
  %102 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #1
  %103 = bitcast i64* %fidx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #1
  %104 = bitcast %struct.gs_glyph_data_s* %gdata to i8*
  call void @llvm.lifetime.end(i64 48, i8* %104) #1
  %105 = bitcast i64* %glyph_index to i8*
  call void @llvm.lifetime.end(i64 8, i8* %105) #1
  %106 = bitcast %struct.font_data_s** %pfdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #1
  %107 = bitcast %struct.gs_font_cid0_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #1
  %108 = load i32, i32* %retval
  ret i32 %108
}

declare void @get_font_name(%struct.gs_memory_s*, %struct.ref_s*, %struct.ref_s*) #2

declare void @copy_font_name(%struct.gs_font_name_s*, %struct.ref_s*) #2

declare i32 @define_gs_font(%struct.gs_context_state_s*, %struct.gs_font_s*) #2

declare i32 @gs_notify_register(%struct.gs_notify_list_s*, i32 (i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @notify_remove_font_type9(i8* %proc_data, i8* %event_data) #0 {
entry:
  %proc_data.addr = alloca i8*, align 8
  %event_data.addr = alloca i8*, align 8
  %pfcid = alloca %struct.gs_font_cid0_s*, align 8
  %i = alloca i32, align 4
  store i8* %proc_data, i8** %proc_data.addr, align 8, !tbaa !1
  store i8* %event_data, i8** %event_data.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %event_data.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.gs_font_cid0_s** %pfcid to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i8*, i8** %proc_data.addr, align 8, !tbaa !1
  %3 = bitcast i8* %2 to %struct.gs_font_cid0_s*
  store %struct.gs_font_cid0_s* %3, %struct.gs_font_cid0_s** %pfcid, align 8, !tbaa !1
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !tbaa !19
  %6 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfcid, align 8, !tbaa !1
  %cidata = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %6, i32 0, i32 29
  %FDArray_size = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata, i32 0, i32 3
  %7 = load i32, i32* %FDArray_size, align 4, !tbaa !68
  %cmp1 = icmp ult i32 %5, %7
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfcid, align 8, !tbaa !1
  %cidata2 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %9, i32 0, i32 29
  %FDArray = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata2, i32 0, i32 2
  %10 = load %struct.gs_font_type1_s**, %struct.gs_font_type1_s*** %FDArray, align 8, !tbaa !67
  %arrayidx = getelementptr inbounds %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %10, i64 %idxprom
  %11 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %arrayidx, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %11, i32 0, i32 29
  %parent = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data, i32 0, i32 3
  %12 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %parent, align 8, !tbaa !79
  %13 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfcid, align 8, !tbaa !1
  %14 = bitcast %struct.gs_font_cid0_s* %13 to %struct.gs_font_base_s*
  %cmp3 = icmp eq %struct.gs_font_base_s* %12, %14
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %for.body
  %15 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom5 = sext i32 %15 to i64
  %16 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfcid, align 8, !tbaa !1
  %cidata6 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %16, i32 0, i32 29
  %FDArray7 = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata6, i32 0, i32 2
  %17 = load %struct.gs_font_type1_s**, %struct.gs_font_type1_s*** %FDArray7, align 8, !tbaa !67
  %arrayidx8 = getelementptr inbounds %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %17, i64 %idxprom5
  %18 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %arrayidx8, align 8, !tbaa !1
  %data9 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %18, i32 0, i32 29
  %parent10 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data9, i32 0, i32 3
  store %struct.gs_font_base_s* null, %struct.gs_font_base_s** %parent10, align 8, !tbaa !79
  br label %if.end

if.end:                                           ; preds = %if.then.4, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load i32, i32* %i, align 4, !tbaa !19
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = bitcast %struct.gs_font_cid0_s** %pfcid to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  br label %if.end.11

if.end.11:                                        ; preds = %for.end, %entry
  ret i32 0
}

declare i32 @charstring_font_get_refs(%struct.ref_s*, %struct.charstring_font_refs_s*) #2

declare i32 @gs_type1_interpret(%struct.gs_type1_state_s*, %struct.gs_glyph_data_s*, i32*) #2

declare i32 @charstring_font_params(%struct.gs_memory_s*, %struct.ref_s*, %struct.charstring_font_refs_s*, %struct.gs_type1_data_s*) #2

declare i32 @type2_font_params(%struct.ref_s*, %struct.charstring_font_refs_s*, %struct.gs_type1_data_s*) #2

declare i32 @build_gs_FDArray_font(%struct.gs_context_state_s*, %struct.ref_s*, %struct.gs_font_base_s**, i32, %struct.gs_memory_struct_type_s*, %struct.build_proc_refs_s*) #2

declare i32 @charstring_font_init(%struct.gs_font_type1_s*, %struct.charstring_font_refs_s*, %struct.gs_type1_data_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @z9_FDArray_glyph_data(%struct.gs_font_type1_s* %pfont, i64 %glyph, %struct.gs_glyph_data_s* %pgd) #0 {
entry:
  %pfont.addr = alloca %struct.gs_font_type1_s*, align 8
  %glyph.addr = alloca i64, align 8
  %pgd.addr = alloca %struct.gs_glyph_data_s*, align 8
  store %struct.gs_font_type1_s* %pfont, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !42
  store %struct.gs_glyph_data_s* %pgd, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  ret i32 -10
}

; Function Attrs: nounwind uwtable
define internal i32 @z9_FDArray_seac_data(%struct.gs_font_type1_s* %pfont, i32 %ccode, i64* %pglyph, %struct.gs_const_string_s* %gstr, %struct.gs_glyph_data_s* %pgd) #0 {
entry:
  %pfont.addr = alloca %struct.gs_font_type1_s*, align 8
  %ccode.addr = alloca i32, align 4
  %pglyph.addr = alloca i64*, align 8
  %gstr.addr = alloca %struct.gs_const_string_s*, align 8
  %pgd.addr = alloca %struct.gs_glyph_data_s*, align 8
  store %struct.gs_font_type1_s* %pfont, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  store i32 %ccode, i32* %ccode.addr, align 4, !tbaa !19
  store i64* %pglyph, i64** %pglyph.addr, align 8, !tbaa !1
  store %struct.gs_const_string_s* %gstr, %struct.gs_const_string_s** %gstr.addr, align 8, !tbaa !1
  store %struct.gs_glyph_data_s* %pgd, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  ret i32 -10
}

declare void @glyph_ref(%struct.gs_memory_s*, i64, %struct.ref_s*) #2

declare i32 @zcharstring_outline(%struct.gs_font_type1_s*, i32, %struct.ref_s*, %struct.gs_glyph_data_s*, %struct.gs_matrix_s*, %struct.gx_path_s*, double*) #2

declare void @gs_glyph_data_free(%struct.gs_glyph_data_s*, i8*) #2

declare i32 @z1_glyph_info_generic(%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32) #2

declare i32 @gs_default_glyph_info(%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*) #2

declare i32 @font_gdir_get_outline(%struct.gs_memory_s*, %struct.ref_s*, i64, %struct.gs_glyph_data_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @get_index(%struct.gs_glyph_data_s* %pgd, i32 %count, i64* %pval) #0 {
entry:
  %retval = alloca i32, align 4
  %pgd.addr = alloca %struct.gs_glyph_data_s*, align 8
  %count.addr = alloca i32, align 4
  %pval.addr = alloca i64*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_glyph_data_s* %pgd, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !19
  store i64* %pval, i64** %pval.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %bits = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %1, i32 0, i32 0
  %size = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits, i32 0, i32 1
  %2 = load i32, i32* %size, align 4, !tbaa !45
  %3 = load i32, i32* %count.addr, align 4, !tbaa !19
  %cmp = icmp ult i32 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i64*, i64** %pval.addr, align 8, !tbaa !1
  store i64 0, i64* %4, align 8, !tbaa !42
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4, !tbaa !19
  %6 = load i32, i32* %count.addr, align 4, !tbaa !19
  %cmp1 = icmp slt i32 %5, %6
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i64*, i64** %pval.addr, align 8, !tbaa !1
  %8 = load i64, i64* %7, align 8, !tbaa !42
  %shl = shl i64 %8, 8
  %9 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %bits2 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %10, i32 0, i32 0
  %data = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits2, i32 0, i32 0
  %11 = load i8*, i8** %data, align 8, !tbaa !43
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %idxprom
  %12 = load i8, i8* %arrayidx, align 1, !tbaa !27
  %conv = zext i8 %12 to i64
  %add = add i64 %shl, %conv
  %13 = load i64*, i64** %pval.addr, align 8, !tbaa !1
  store i64 %add, i64* %13, align 8, !tbaa !42
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !tbaa !19
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %count.addr, align 4, !tbaa !19
  %16 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %bits3 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %16, i32 0, i32 0
  %data4 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits3, i32 0, i32 0
  %17 = load i8*, i8** %data4, align 8, !tbaa !43
  %idx.ext = sext i32 %15 to i64
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 %idx.ext
  store i8* %add.ptr, i8** %data4, align 8, !tbaa !43
  %18 = load i32, i32* %count.addr, align 4, !tbaa !19
  %19 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %bits5 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %19, i32 0, i32 0
  %size6 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits5, i32 0, i32 1
  %20 = load i32, i32* %size6, align 4, !tbaa !45
  %sub = sub i32 %20, %18
  store i32 %sub, i32* %size6, align 4, !tbaa !45
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %21 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = load i32, i32* %retval
  ret i32 %22
}

declare void @gs_glyph_data_from_null(%struct.gs_glyph_data_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @cid0_read_bytes(%struct.gs_font_cid0_s* %pfont, i64 %base, i32 %count, i8* %buf, %struct.gs_glyph_data_s* %pgd) #0 {
entry:
  %retval = alloca i32, align 4
  %pfont.addr = alloca %struct.gs_font_cid0_s*, align 8
  %base.addr = alloca i64, align 8
  %count.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %pgd.addr = alloca %struct.gs_glyph_data_s*, align 8
  %pfdata = alloca %struct.font_data_s*, align 8
  %data = alloca i8*, align 8
  %gdfont = alloca %struct.gs_font_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pgdata = alloca %struct.ref_s*, align 8
  %size = alloca i32, align 4
  %skip = alloca i64, align 8
  %copied = alloca i32, align 4
  %index = alloca i32, align 4
  %rstr = alloca %struct.ref_s, align 8
  %size27 = alloca i32, align 4
  %code28 = alloca i32, align 4
  %code82 = alloca i32, align 4
  %s = alloca %struct.stream_s*, align 8
  %nread = alloca i32, align 4
  %i_ctx_p = alloca %struct.gs_context_state_s*, align 8
  %fcode = alloca i32, align 4
  store %struct.gs_font_cid0_s* %pfont, %struct.gs_font_cid0_s** %pfont.addr, align 8, !tbaa !1
  store i64 %base, i64* %base.addr, align 8, !tbaa !42
  store i32 %count, i32* %count.addr, align 4, !tbaa !19
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store %struct.gs_glyph_data_s* %pgd, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %0 = bitcast %struct.font_data_s** %pfdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont.addr, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %1, i32 0, i32 8
  %2 = load i8*, i8** %client_data, align 8, !tbaa !87
  %3 = bitcast i8* %2 to %struct.font_data_s*
  store %struct.font_data_s* %3, %struct.font_data_s** %pfdata, align 8, !tbaa !1
  %4 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  store i8* %5, i8** %data, align 8, !tbaa !1
  %6 = bitcast %struct.gs_font_s** %gdfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store %struct.gs_font_s* null, %struct.gs_font_s** %gdfont, align 8, !tbaa !1
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 0, i32* %code, align 4, !tbaa !19
  %8 = load i64, i64* %base.addr, align 8, !tbaa !42
  %9 = load i64, i64* %base.addr, align 8, !tbaa !42
  %cmp = icmp ne i64 %8, %9
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %10 = load i64, i64* %base.addr, align 8, !tbaa !42
  %11 = load i64, i64* %base.addr, align 8, !tbaa !42
  %12 = load i32, i32* %count.addr, align 4, !tbaa !19
  %conv = zext i32 %12 to i64
  %add = add i64 %11, %conv
  %cmp1 = icmp ugt i64 %10, %add
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.211

if.end:                                           ; preds = %lor.lhs.false
  %13 = load %struct.font_data_s*, %struct.font_data_s** %pfdata, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %13, i32 0, i32 6
  %cid0 = bitcast %union._fs* %u to %struct._fc0*
  %DataSource = getelementptr inbounds %struct._fc0, %struct._fc0* %cid0, i32 0, i32 2
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %DataSource, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %14 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 1
  %15 = load i8, i8* %arrayidx, align 1, !tbaa !27
  %conv3 = zext i8 %15 to i32
  %cmp4 = icmp eq i32 %conv3, 14
  br i1 %cmp4, label %if.then.6, label %if.else.128

if.then.6:                                        ; preds = %if.end
  %16 = bitcast %struct.ref_s** %pgdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = load %struct.font_data_s*, %struct.font_data_s** %pfdata, align 8, !tbaa !1
  %u7 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %17, i32 0, i32 6
  %cid08 = bitcast %union._fs* %u7 to %struct._fc0*
  %GlyphData = getelementptr inbounds %struct._fc0, %struct._fc0* %cid08, i32 0, i32 1
  store %struct.ref_s* %GlyphData, %struct.ref_s** %pgdata, align 8, !tbaa !1
  %18 = load %struct.ref_s*, %struct.ref_s** %pgdata, align 8, !tbaa !1
  %tas9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 0
  %type_attrs10 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas9, i32 0, i32 0
  %19 = bitcast i16* %type_attrs10 to i8*
  %arrayidx11 = getelementptr inbounds i8, i8* %19, i64 1
  %20 = load i8, i8* %arrayidx11, align 1, !tbaa !27
  %conv12 = zext i8 %20 to i32
  %cmp13 = icmp eq i32 %conv12, 18
  br i1 %cmp13, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.then.6
  %21 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load %struct.ref_s*, %struct.ref_s** %pgdata, align 8, !tbaa !1
  %tas16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas16, i32 0, i32 2
  %23 = load i32, i32* %rsize, align 4, !tbaa !46
  store i32 %23, i32* %size, align 4, !tbaa !19
  %24 = load i64, i64* %base.addr, align 8, !tbaa !42
  %25 = load i32, i32* %size, align 4, !tbaa !19
  %conv17 = zext i32 %25 to i64
  %cmp18 = icmp uge i64 %24, %conv17
  br i1 %cmp18, label %if.then.25, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %if.then.15
  %26 = load i32, i32* %count.addr, align 4, !tbaa !19
  %conv21 = zext i32 %26 to i64
  %27 = load i32, i32* %size, align 4, !tbaa !19
  %conv22 = zext i32 %27 to i64
  %28 = load i64, i64* %base.addr, align 8, !tbaa !42
  %sub = sub i64 %conv22, %28
  %cmp23 = icmp ugt i64 %conv21, %sub
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %lor.lhs.false.20, %if.then.15
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %lor.lhs.false.20
  %29 = load %struct.ref_s*, %struct.ref_s** %pgdata, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 0, i32 1
  %bytes = bitcast %union.v* %value to i8**
  %30 = load i8*, i8** %bytes, align 8, !tbaa !1
  %31 = load i64, i64* %base.addr, align 8, !tbaa !42
  %add.ptr = getelementptr inbounds i8, i8* %30, i64 %31
  store i8* %add.ptr, i8** %data, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.26, %if.then.25
  %32 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.125 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.124

if.else:                                          ; preds = %if.then.6
  %33 = bitcast i64* %skip to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #1
  %34 = load i64, i64* %base.addr, align 8, !tbaa !42
  store i64 %34, i64* %skip, align 8, !tbaa !42
  %35 = bitcast i32* %copied to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  store i32 0, i32* %copied, align 4, !tbaa !19
  %36 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #1
  store i32 0, i32* %index, align 4, !tbaa !19
  %37 = bitcast %struct.ref_s* %rstr to i8*
  call void @llvm.lifetime.start(i64 16, i8* %37) #1
  %38 = bitcast i32* %size27 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %39 = bitcast i32* %code28 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  %40 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %40, i32 0, i32 2
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !88
  %42 = load %struct.ref_s*, %struct.ref_s** %pgdata, align 8, !tbaa !1
  %43 = load i32, i32* %index, align 4, !tbaa !19
  %conv29 = zext i32 %43 to i64
  %call = call i32 @array_get(%struct.gs_memory_s* %41, %struct.ref_s* %42, i64 %conv29, %struct.ref_s* %rstr) #4
  store i32 %call, i32* %code28, align 4, !tbaa !19
  %44 = load i32, i32* %code28, align 4, !tbaa !19
  %cmp30 = icmp slt i32 %44, 0
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %for.cond
  %45 = load i32, i32* %code28, align 4, !tbaa !19
  store i32 %45, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.49

if.end.33:                                        ; preds = %for.cond
  %tas34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rstr, i32 0, i32 0
  %type_attrs35 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas34, i32 0, i32 0
  %46 = bitcast i16* %type_attrs35 to i8*
  %arrayidx36 = getelementptr inbounds i8, i8* %46, i64 1
  %47 = load i8, i8* %arrayidx36, align 1, !tbaa !27
  %conv37 = zext i8 %47 to i32
  %cmp38 = icmp eq i32 %conv37, 18
  br i1 %cmp38, label %if.end.41, label %if.then.40

if.then.40:                                       ; preds = %if.end.33
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.49

if.end.41:                                        ; preds = %if.end.33
  %tas42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rstr, i32 0, i32 0
  %rsize43 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas42, i32 0, i32 2
  %48 = load i32, i32* %rsize43, align 4, !tbaa !46
  store i32 %48, i32* %size27, align 4, !tbaa !19
  %49 = load i64, i64* %skip, align 8, !tbaa !42
  %50 = load i32, i32* %size27, align 4, !tbaa !19
  %conv44 = zext i32 %50 to i64
  %cmp45 = icmp ult i64 %49, %conv44
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.end.41
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.49

if.end.48:                                        ; preds = %if.end.41
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.49

cleanup.49:                                       ; preds = %if.end.48, %if.then.47, %if.then.40, %if.then.32
  %51 = bitcast i32* %code28 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %cleanup.dest.50 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.50, label %cleanup.117 [
    i32 0, label %cleanup.cont.51
    i32 2, label %for.end
  ]

cleanup.cont.51:                                  ; preds = %cleanup.49
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont.51
  %52 = load i32, i32* %size27, align 4, !tbaa !19
  %conv52 = zext i32 %52 to i64
  %53 = load i64, i64* %skip, align 8, !tbaa !42
  %sub53 = sub i64 %53, %conv52
  store i64 %sub53, i64* %skip, align 8, !tbaa !42
  %54 = load i32, i32* %index, align 4, !tbaa !19
  %inc = add i32 %54, 1
  store i32 %inc, i32* %index, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %cleanup.49
  %55 = load i64, i64* %skip, align 8, !tbaa !42
  %56 = load i32, i32* %size27, align 4, !tbaa !19
  %conv54 = zext i32 %56 to i64
  %sub55 = sub i64 %conv54, %55
  %conv56 = trunc i64 %sub55 to i32
  store i32 %conv56, i32* %size27, align 4, !tbaa !19
  %57 = load i32, i32* %count.addr, align 4, !tbaa !19
  %58 = load i32, i32* %size27, align 4, !tbaa !19
  %cmp57 = icmp ule i32 %57, %58
  br i1 %cmp57, label %if.then.59, label %if.else.63

if.then.59:                                       ; preds = %for.end
  %value60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rstr, i32 0, i32 1
  %bytes61 = bitcast %union.v* %value60 to i8**
  %59 = load i8*, i8** %bytes61, align 8, !tbaa !1
  %60 = load i64, i64* %skip, align 8, !tbaa !42
  %add.ptr62 = getelementptr inbounds i8, i8* %59, i64 %60
  store i8* %add.ptr62, i8** %data, align 8, !tbaa !1
  br label %if.end.116

if.else.63:                                       ; preds = %for.end
  %61 = load i8*, i8** %data, align 8, !tbaa !1
  %cmp64 = icmp eq i8* %61, null
  br i1 %cmp64, label %if.then.66, label %if.end.74

if.then.66:                                       ; preds = %if.else.63
  %62 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont.addr, align 8, !tbaa !1
  %memory67 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %62, i32 0, i32 2
  %63 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory67, align 8, !tbaa !88
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %63, i32 0, i32 1
  %alloc_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 16
  %64 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string, align 8, !tbaa !92
  %65 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont.addr, align 8, !tbaa !1
  %memory68 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %65, i32 0, i32 2
  %66 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory68, align 8, !tbaa !88
  %67 = load i32, i32* %count.addr, align 4, !tbaa !19
  %call69 = call i8* %64(%struct.gs_memory_s* %66, i32 %67, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0)) #4
  store i8* %call69, i8** %data, align 8, !tbaa !1
  %68 = load i8*, i8** %data, align 8, !tbaa !1
  %cmp70 = icmp eq i8* %68, null
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.then.66
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.117

if.end.73:                                        ; preds = %if.then.66
  %69 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont.addr, align 8, !tbaa !1
  %70 = bitcast %struct.gs_font_cid0_s* %69 to %struct.gs_font_s*
  store %struct.gs_font_s* %70, %struct.gs_font_s** %gdfont, align 8, !tbaa !1
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.else.63
  %71 = load i8*, i8** %data, align 8, !tbaa !1
  %value75 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rstr, i32 0, i32 1
  %bytes76 = bitcast %union.v* %value75 to i8**
  %72 = load i8*, i8** %bytes76, align 8, !tbaa !1
  %73 = load i64, i64* %skip, align 8, !tbaa !42
  %add.ptr77 = getelementptr inbounds i8, i8* %72, i64 %73
  %74 = load i32, i32* %size27, align 4, !tbaa !19
  %conv78 = zext i32 %74 to i64
  %call79 = call i8* @memcpy(i8* %71, i8* %add.ptr77, i64 %conv78) #5
  %75 = load i32, i32* %size27, align 4, !tbaa !19
  store i32 %75, i32* %copied, align 4, !tbaa !19
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont.115, %if.end.74
  %76 = load i32, i32* %copied, align 4, !tbaa !19
  %77 = load i32, i32* %count.addr, align 4, !tbaa !19
  %cmp80 = icmp ult i32 %76, %77
  br i1 %cmp80, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %78 = bitcast i32* %code82 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %78) #1
  %79 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont.addr, align 8, !tbaa !1
  %memory83 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %79, i32 0, i32 2
  %80 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory83, align 8, !tbaa !88
  %81 = load %struct.ref_s*, %struct.ref_s** %pgdata, align 8, !tbaa !1
  %82 = load i32, i32* %index, align 4, !tbaa !19
  %inc84 = add i32 %82, 1
  store i32 %inc84, i32* %index, align 4, !tbaa !19
  %conv85 = zext i32 %inc84 to i64
  %call86 = call i32 @array_get(%struct.gs_memory_s* %80, %struct.ref_s* %81, i64 %conv85, %struct.ref_s* %rstr) #4
  store i32 %call86, i32* %code82, align 4, !tbaa !19
  %83 = load i32, i32* %code82, align 4, !tbaa !19
  %cmp87 = icmp slt i32 %83, 0
  br i1 %cmp87, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %while.body
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup.113

if.end.90:                                        ; preds = %while.body
  %tas91 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rstr, i32 0, i32 0
  %type_attrs92 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas91, i32 0, i32 0
  %84 = bitcast i16* %type_attrs92 to i8*
  %arrayidx93 = getelementptr inbounds i8, i8* %84, i64 1
  %85 = load i8, i8* %arrayidx93, align 1, !tbaa !27
  %conv94 = zext i8 %85 to i32
  %cmp95 = icmp eq i32 %conv94, 18
  br i1 %cmp95, label %if.end.98, label %if.then.97

if.then.97:                                       ; preds = %if.end.90
  store i32 -20, i32* %code82, align 4, !tbaa !19
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup.113

if.end.98:                                        ; preds = %if.end.90
  %tas99 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rstr, i32 0, i32 0
  %rsize100 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas99, i32 0, i32 2
  %86 = load i32, i32* %rsize100, align 4, !tbaa !46
  store i32 %86, i32* %size27, align 4, !tbaa !19
  %87 = load i32, i32* %size27, align 4, !tbaa !19
  %88 = load i32, i32* %count.addr, align 4, !tbaa !19
  %89 = load i32, i32* %copied, align 4, !tbaa !19
  %sub101 = sub i32 %88, %89
  %cmp102 = icmp ugt i32 %87, %sub101
  br i1 %cmp102, label %if.then.104, label %if.end.106

if.then.104:                                      ; preds = %if.end.98
  %90 = load i32, i32* %count.addr, align 4, !tbaa !19
  %91 = load i32, i32* %copied, align 4, !tbaa !19
  %sub105 = sub i32 %90, %91
  store i32 %sub105, i32* %size27, align 4, !tbaa !19
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.104, %if.end.98
  %92 = load i8*, i8** %data, align 8, !tbaa !1
  %93 = load i32, i32* %copied, align 4, !tbaa !19
  %idx.ext = zext i32 %93 to i64
  %add.ptr107 = getelementptr inbounds i8, i8* %92, i64 %idx.ext
  %value108 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rstr, i32 0, i32 1
  %bytes109 = bitcast %union.v* %value108 to i8**
  %94 = load i8*, i8** %bytes109, align 8, !tbaa !1
  %95 = load i32, i32* %size27, align 4, !tbaa !19
  %conv110 = zext i32 %95 to i64
  %call111 = call i8* @memcpy(i8* %add.ptr107, i8* %94, i64 %conv110) #5
  %96 = load i32, i32* %size27, align 4, !tbaa !19
  %97 = load i32, i32* %copied, align 4, !tbaa !19
  %add112 = add i32 %97, %96
  store i32 %add112, i32* %copied, align 4, !tbaa !19
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.113

cleanup.113:                                      ; preds = %if.then.97, %if.then.89, %if.end.106
  %98 = bitcast i32* %code82 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #1
  %cleanup.dest.114 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.114, label %cleanup.117 [
    i32 0, label %cleanup.cont.115
  ]

cleanup.cont.115:                                 ; preds = %cleanup.113
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.116

if.end.116:                                       ; preds = %while.end, %if.then.59
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.117

cleanup.117:                                      ; preds = %if.end.116, %cleanup.113, %if.then.72, %cleanup.49
  %99 = bitcast i32* %size27 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #1
  %100 = bitcast %struct.ref_s* %rstr to i8*
  call void @llvm.lifetime.end(i64 16, i8* %100) #1
  %101 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #1
  %102 = bitcast i32* %copied to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #1
  %103 = bitcast i64* %skip to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #1
  %cleanup.dest.122 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.122, label %cleanup.125 [
    i32 0, label %cleanup.cont.123
  ]

cleanup.cont.123:                                 ; preds = %cleanup.117
  br label %if.end.124

if.end.124:                                       ; preds = %cleanup.cont.123, %cleanup.cont
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.125

cleanup.125:                                      ; preds = %if.end.124, %cleanup.117, %cleanup
  %104 = bitcast %struct.ref_s** %pgdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #1
  %cleanup.dest.126 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.126, label %cleanup.211 [
    i32 0, label %cleanup.cont.127
    i32 7, label %err
  ]

cleanup.cont.127:                                 ; preds = %cleanup.125
  br label %if.end.203

if.else.128:                                      ; preds = %if.end
  %105 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %105) #1
  %106 = bitcast i32* %nread to i8*
  call void @llvm.lifetime.start(i64 4, i8* %106) #1
  %107 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %107) #1
  %108 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont.addr, align 8, !tbaa !1
  %memory129 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %108, i32 0, i32 2
  %109 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory129, align 8, !tbaa !88
  %call130 = call %struct.gs_main_instance_s* @get_minst_from_memory(%struct.gs_memory_s* %109) #4
  %i_ctx_p131 = getelementptr inbounds %struct.gs_main_instance_s, %struct.gs_main_instance_s* %call130, i32 0, i32 14
  %110 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p131, align 8, !tbaa !93
  store %struct.gs_context_state_s* %110, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %if.else.128
  %111 = load %struct.font_data_s*, %struct.font_data_s** %pfdata, align 8, !tbaa !1
  %u132 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %111, i32 0, i32 6
  %cid0133 = bitcast %union._fs* %u132 to %struct._fc0*
  %DataSource134 = getelementptr inbounds %struct._fc0, %struct._fc0* %cid0133, i32 0, i32 2
  %value135 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %DataSource134, i32 0, i32 1
  %pfile = bitcast %union.v* %value135 to %struct.stream_s**
  %112 = load %struct.stream_s*, %struct.stream_s** %pfile, align 8, !tbaa !1
  store %struct.stream_s* %112, %struct.stream_s** %s, align 8, !tbaa !1
  %113 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %113, i32 0, i32 19
  %114 = load i16, i16* %read_id, align 2, !tbaa !51
  %conv136 = zext i16 %114 to i32
  %115 = load %struct.font_data_s*, %struct.font_data_s** %pfdata, align 8, !tbaa !1
  %u137 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %115, i32 0, i32 6
  %cid0138 = bitcast %union._fs* %u137 to %struct._fc0*
  %DataSource139 = getelementptr inbounds %struct._fc0, %struct._fc0* %cid0138, i32 0, i32 2
  %tas140 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %DataSource139, i32 0, i32 0
  %rsize141 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas140, i32 0, i32 2
  %116 = load i32, i32* %rsize141, align 4, !tbaa !46
  %cmp142 = icmp ne i32 %conv136, %116
  br i1 %cmp142, label %if.then.144, label %if.end.171

if.then.144:                                      ; preds = %do.body
  %117 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id145 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %117, i32 0, i32 19
  %118 = load i16, i16* %read_id145, align 2, !tbaa !51
  %conv146 = zext i16 %118 to i32
  %cmp147 = icmp eq i32 %conv146, 0
  br i1 %cmp147, label %land.lhs.true, label %if.else.169

land.lhs.true:                                    ; preds = %if.then.144
  %119 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %write_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %119, i32 0, i32 20
  %120 = load i16, i16* %write_id, align 2, !tbaa !55
  %conv149 = zext i16 %120 to i32
  %121 = load %struct.font_data_s*, %struct.font_data_s** %pfdata, align 8, !tbaa !1
  %u150 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %121, i32 0, i32 6
  %cid0151 = bitcast %union._fs* %u150 to %struct._fc0*
  %DataSource152 = getelementptr inbounds %struct._fc0, %struct._fc0* %cid0151, i32 0, i32 2
  %tas153 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %DataSource152, i32 0, i32 0
  %rsize154 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas153, i32 0, i32 2
  %122 = load i32, i32* %rsize154, align 4, !tbaa !46
  %cmp155 = icmp eq i32 %conv149, %122
  br i1 %cmp155, label %if.then.157, label %if.else.169

if.then.157:                                      ; preds = %land.lhs.true
  %123 = bitcast i32* %fcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %123) #1
  %124 = load %struct.font_data_s*, %struct.font_data_s** %pfdata, align 8, !tbaa !1
  %u158 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %124, i32 0, i32 6
  %cid0159 = bitcast %union._fs* %u158 to %struct._fc0*
  %DataSource160 = getelementptr inbounds %struct._fc0, %struct._fc0* %cid0159, i32 0, i32 2
  %call161 = call i32 @file_switch_to_read(%struct.ref_s* %DataSource160) #4
  store i32 %call161, i32* %fcode, align 4, !tbaa !19
  %125 = load i32, i32* %fcode, align 4, !tbaa !19
  %cmp162 = icmp slt i32 %125, 0
  br i1 %cmp162, label %if.then.164, label %if.end.165

if.then.164:                                      ; preds = %if.then.157
  %126 = load i32, i32* %fcode, align 4, !tbaa !19
  store i32 %126, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.166

if.end.165:                                       ; preds = %if.then.157
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.166

cleanup.166:                                      ; preds = %if.end.165, %if.then.164
  %127 = bitcast i32* %fcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #1
  %cleanup.dest.167 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.167, label %cleanup.198 [
    i32 0, label %cleanup.cont.168
  ]

cleanup.cont.168:                                 ; preds = %cleanup.166
  br label %if.end.170

if.else.169:                                      ; preds = %land.lhs.true, %if.then.144
  %128 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p, align 8, !tbaa !1
  %invalid_file_stream = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %128, i32 0, i32 18
  %129 = load %struct.stream_s*, %struct.stream_s** %invalid_file_stream, align 8, !tbaa !56
  store %struct.stream_s* %129, %struct.stream_s** %s, align 8, !tbaa !1
  br label %if.end.170

if.end.170:                                       ; preds = %if.else.169, %cleanup.cont.168
  br label %if.end.171

if.end.171:                                       ; preds = %if.end.170, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.171
  br label %do.end

do.end:                                           ; preds = %do.cond
  %130 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %131 = load i64, i64* %base.addr, align 8, !tbaa !42
  %call172 = call i32 @spseek(%struct.stream_s* %130, i64 %131) #4
  %cmp173 = icmp slt i32 %call172, 0
  br i1 %cmp173, label %if.then.175, label %if.end.176

if.then.175:                                      ; preds = %do.end
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.198

if.end.176:                                       ; preds = %do.end
  %132 = load i8*, i8** %data, align 8, !tbaa !1
  %cmp177 = icmp eq i8* %132, null
  br i1 %cmp177, label %if.then.179, label %if.end.189

if.then.179:                                      ; preds = %if.end.176
  %133 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont.addr, align 8, !tbaa !1
  %memory180 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %133, i32 0, i32 2
  %134 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory180, align 8, !tbaa !88
  %procs181 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %134, i32 0, i32 1
  %alloc_string182 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs181, i32 0, i32 16
  %135 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string182, align 8, !tbaa !92
  %136 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont.addr, align 8, !tbaa !1
  %memory183 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %136, i32 0, i32 2
  %137 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory183, align 8, !tbaa !88
  %138 = load i32, i32* %count.addr, align 4, !tbaa !19
  %call184 = call i8* %135(%struct.gs_memory_s* %137, i32 %138, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0)) #4
  store i8* %call184, i8** %data, align 8, !tbaa !1
  %139 = load i8*, i8** %data, align 8, !tbaa !1
  %cmp185 = icmp eq i8* %139, null
  br i1 %cmp185, label %if.then.187, label %if.end.188

if.then.187:                                      ; preds = %if.then.179
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.198

if.end.188:                                       ; preds = %if.then.179
  %140 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont.addr, align 8, !tbaa !1
  %141 = bitcast %struct.gs_font_cid0_s* %140 to %struct.gs_font_s*
  store %struct.gs_font_s* %141, %struct.gs_font_s** %gdfont, align 8, !tbaa !1
  br label %if.end.189

if.end.189:                                       ; preds = %if.end.188, %if.end.176
  %142 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %143 = load i8*, i8** %data, align 8, !tbaa !1
  %144 = load i32, i32* %count.addr, align 4, !tbaa !19
  %call190 = call i32 @sgets(%struct.stream_s* %142, i8* %143, i32 %144, i32* %nread) #4
  %cmp191 = icmp slt i32 %call190, 0
  br i1 %cmp191, label %if.then.196, label %lor.lhs.false.193

lor.lhs.false.193:                                ; preds = %if.end.189
  %145 = load i32, i32* %nread, align 4, !tbaa !19
  %146 = load i32, i32* %count.addr, align 4, !tbaa !19
  %cmp194 = icmp ne i32 %145, %146
  br i1 %cmp194, label %if.then.196, label %if.end.197

if.then.196:                                      ; preds = %lor.lhs.false.193, %if.end.189
  store i32 -12, i32* %code, align 4, !tbaa !19
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup.198

if.end.197:                                       ; preds = %lor.lhs.false.193
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.198

cleanup.198:                                      ; preds = %if.then.196, %if.end.197, %if.then.187, %if.then.175, %cleanup.166
  %147 = bitcast %struct.gs_context_state_s** %i_ctx_p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %147) #1
  %148 = bitcast i32* %nread to i8*
  call void @llvm.lifetime.end(i64 4, i8* %148) #1
  %149 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %149) #1
  %cleanup.dest.201 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.201, label %cleanup.211 [
    i32 0, label %cleanup.cont.202
    i32 7, label %err
  ]

cleanup.cont.202:                                 ; preds = %cleanup.198
  br label %if.end.203

if.end.203:                                       ; preds = %cleanup.cont.202, %cleanup.cont.127
  %150 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %151 = load i8*, i8** %data, align 8, !tbaa !1
  %152 = load i32, i32* %count.addr, align 4, !tbaa !19
  %153 = load %struct.gs_font_s*, %struct.gs_font_s** %gdfont, align 8, !tbaa !1
  call void @gs_glyph_data_from_string(%struct.gs_glyph_data_s* %150, i8* %151, i32 %152, %struct.gs_font_s* %153) #4
  %154 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %154, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.211

err:                                              ; preds = %cleanup.198, %cleanup.125
  %155 = load i8*, i8** %data, align 8, !tbaa !1
  %156 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %cmp204 = icmp ne i8* %155, %156
  br i1 %cmp204, label %if.then.206, label %if.end.210

if.then.206:                                      ; preds = %err
  %157 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont.addr, align 8, !tbaa !1
  %memory207 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %157, i32 0, i32 2
  %158 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory207, align 8, !tbaa !88
  %procs208 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %158, i32 0, i32 1
  %free_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs208, i32 0, i32 19
  %159 = load void (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)** %free_string, align 8, !tbaa !96
  %160 = load %struct.gs_font_cid0_s*, %struct.gs_font_cid0_s** %pfont.addr, align 8, !tbaa !1
  %memory209 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %160, i32 0, i32 2
  %161 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory209, align 8, !tbaa !88
  %162 = load i8*, i8** %data, align 8, !tbaa !1
  %163 = load i32, i32* %count.addr, align 4, !tbaa !19
  call void %159(%struct.gs_memory_s* %161, i8* %162, i32 %163, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0)) #4
  br label %if.end.210

if.end.210:                                       ; preds = %if.then.206, %err
  %164 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %164, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.211

cleanup.211:                                      ; preds = %if.end.210, %if.end.203, %cleanup.198, %cleanup.125, %if.then
  %165 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %165) #1
  %166 = bitcast %struct.gs_font_s** %gdfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %166) #1
  %167 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %167) #1
  %168 = bitcast %struct.font_data_s** %pfdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %168) #1
  %169 = load i32, i32* %retval
  ret i32 %169
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

declare %struct.gs_main_instance_s* @get_minst_from_memory(%struct.gs_memory_s*) #2

declare i32 @spseek(%struct.stream_s*, i64) #2

declare i32 @sgets(%struct.stream_s*, i8*, i32, i32*) #2

declare void @gs_glyph_data_from_string(%struct.gs_glyph_data_s*, i8*, i32, %struct.gs_font_s*) #2

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
!19 = !{!9, !9, i64 0}
!20 = !{!21, !3, i64 128}
!21 = !{!"gs_font_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !9, i64 32, !22, i64 40, !13, i64 56, !2, i64 64, !2, i64 72, !23, i64 80, !23, i64 104, !3, i64 128, !9, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !9, i64 148, !9, i64 152, !24, i64 156, !9, i64 160, !25, i64 168, !26, i64 272, !26, i64 324}
!22 = !{!"gs_notify_list_s", !2, i64 0, !2, i64 8}
!23 = !{!"gs_matrix_s", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !24, i64 16, !24, i64 20}
!24 = !{!"float", !3, i64 0}
!25 = !{!"gs_font_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!26 = !{!"gs_font_name_s", !3, i64 0, !9, i64 48}
!27 = !{!3, !3, i64 0}
!28 = !{!21, !2, i64 16}
!29 = !{!30, !2, i64 40}
!30 = !{!"gs_glyph_data_s", !31, i64 0, !2, i64 24, !2, i64 32, !2, i64 40}
!31 = !{!"gs_const_bytestring_s", !2, i64 0, !9, i64 8, !2, i64 16}
!32 = !{!33, !2, i64 528}
!33 = !{!"gs_font_cid0_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !9, i64 32, !22, i64 40, !13, i64 56, !2, i64 64, !2, i64 72, !23, i64 80, !23, i64 104, !3, i64 128, !9, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !9, i64 148, !9, i64 152, !24, i64 156, !9, i64 160, !25, i64 168, !26, i64 272, !26, i64 324, !34, i64 376, !37, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444, !38, i64 448}
!34 = !{!"gs_rect_s", !35, i64 0, !35, i64 16}
!35 = !{!"gs_point_s", !36, i64 0, !36, i64 8}
!36 = !{!"double", !3, i64 0}
!37 = !{!"gs_uid_s", !13, i64 0, !2, i64 8}
!38 = !{!"gs_font_cid0_data_s", !39, i64 0, !13, i64 56, !2, i64 64, !9, i64 72, !9, i64 76, !2, i64 80, !2, i64 88}
!39 = !{!"gs_font_cid_data_s", !40, i64 0, !9, i64 40, !9, i64 44, !9, i64 48}
!40 = !{!"gs_cid_system_info_s", !41, i64 0, !41, i64 16, !9, i64 32}
!41 = !{!"gs_const_string_s", !2, i64 0, !9, i64 8}
!42 = !{!13, !13, i64 0}
!43 = !{!30, !2, i64 0}
!44 = !{!10, !12, i64 0}
!45 = !{!30, !9, i64 8}
!46 = !{!10, !9, i64 4}
!47 = !{!6, !2, i64 8}
!48 = !{i64 0, i64 2, !49, i64 2, i64 2, !49, i64 4, i64 4, !19, i64 8, i64 8, !42, i64 8, i64 2, !49, i64 8, i64 4, !50, i64 8, i64 8, !42, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !42}
!49 = !{!12, !12, i64 0}
!50 = !{!24, !24, i64 0}
!51 = !{!52, !12, i64 264}
!52 = !{!"stream_s", !2, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !3, i64 28, !3, i64 112, !2, i64 136, !9, i64 144, !9, i64 148, !12, i64 152, !3, i64 154, !3, i64 155, !53, i64 160, !13, i64 176, !54, i64 184, !2, i64 240, !9, i64 248, !9, i64 252, !2, i64 256, !12, i64 264, !12, i64 266, !2, i64 272, !2, i64 280, !9, i64 288, !9, i64 292, !2, i64 296, !2, i64 304, !41, i64 312, !9, i64 328, !13, i64 336, !13, i64 344}
!53 = !{!"gs_string_s", !2, i64 0, !9, i64 8}
!54 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!55 = !{!52, !12, i64 266}
!56 = !{!6, !2, i64 256}
!57 = !{!58, !2, i64 104}
!58 = !{!"gs_memory_s", !2, i64 0, !59, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!59 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!60 = !{!58, !2, i64 24}
!61 = !{!62, !2, i64 216}
!62 = !{!"gs_font_base_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !9, i64 32, !22, i64 40, !13, i64 56, !2, i64 64, !2, i64 72, !23, i64 80, !23, i64 104, !3, i64 128, !9, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !9, i64 148, !9, i64 152, !24, i64 156, !9, i64 160, !25, i64 168, !26, i64 272, !26, i64 324, !34, i64 376, !37, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444}
!63 = !{!62, !2, i64 232}
!64 = !{!62, !2, i64 224}
!65 = !{i64 0, i64 8, !1, i64 8, i64 4, !19, i64 16, i64 8, !1, i64 24, i64 4, !19, i64 32, i64 4, !19, i64 40, i64 4, !19, i64 44, i64 4, !19, i64 48, i64 4, !19}
!66 = !{!33, !13, i64 504}
!67 = !{!33, !2, i64 512}
!68 = !{!33, !9, i64 520}
!69 = !{!33, !9, i64 524}
!70 = !{!33, !2, i64 536}
!71 = !{!33, !9, i64 372}
!72 = !{!62, !2, i64 72}
!73 = !{!62, !2, i64 24}
!74 = !{!75, !2, i64 24}
!75 = !{!"gs_font_type1_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !9, i64 32, !22, i64 40, !13, i64 56, !2, i64 64, !2, i64 72, !23, i64 80, !23, i64 104, !3, i64 128, !9, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !9, i64 148, !9, i64 152, !24, i64 156, !9, i64 160, !25, i64 168, !26, i64 272, !26, i64 324, !34, i64 376, !37, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444, !76, i64 448}
!76 = !{!"gs_type1_data_s", !77, i64 0, !2, i64 40, !2, i64 48, !2, i64 56, !9, i64 64, !9, i64 68, !9, i64 72, !13, i64 80, !9, i64 88, !9, i64 92, !9, i64 96, !24, i64 100, !24, i64 104, !78, i64 108, !24, i64 168, !9, i64 172, !78, i64 176, !78, i64 236, !9, i64 280, !78, i64 284, !9, i64 328, !78, i64 332, !78, i64 340, !78, i64 348, !78, i64 400, !78, i64 452, !3, i64 520, !9, i64 536}
!77 = !{!"gs_type1_data_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32}
!78 = !{!"", !9, i64 0, !3, i64 4}
!79 = !{!75, !2, i64 504}
!80 = !{!76, !2, i64 40}
!81 = !{!76, !9, i64 68}
!82 = !{!76, !9, i64 64}
!83 = !{!62, !2, i64 424}
!84 = !{!62, !2, i64 432}
!85 = !{!75, !2, i64 448}
!86 = !{!75, !2, i64 464}
!87 = !{!33, !2, i64 72}
!88 = !{!33, !2, i64 16}
!89 = !{i64 0, i64 8, !1, i64 8, i64 4, !19, i64 16, i64 8, !1, i64 24, i64 8, !1, i64 32, i64 8, !1, i64 40, i64 8, !1}
!90 = !{!33, !9, i64 488}
!91 = !{!33, !9, i64 496}
!92 = !{!58, !2, i64 136}
!93 = !{!94, !2, i64 160}
!94 = !{!"gs_main_instance_s", !2, i64 0, !9, i64 8, !13, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !95, i64 48, !3, i64 104, !2, i64 120, !10, i64 128, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !9, i64 176}
!95 = !{!"gs_file_path_s", !10, i64 0, !10, i64 16, !2, i64 32, !2, i64 40, !9, i64 48}
!96 = !{!58, !2, i64 160}
