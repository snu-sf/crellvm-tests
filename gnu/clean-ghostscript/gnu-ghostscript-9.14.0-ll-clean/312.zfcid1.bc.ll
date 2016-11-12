; ModuleID = './zfcid1.bc'
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
%struct.gs_font_dir_s = type { %struct.gs_font_s*, %struct.gs_font_s*, i32, i32, %struct.fm_pair_cache_s, %struct.char_cache_s, i32, i32, i32, i32, i8*, %struct.gs_memory_s*, %struct.ttfInterpreter_s*, %struct.gx_ttfMemory_s*, i32, %struct.gx_device_spot_analyzer_s*, i32 (%struct.gs_memory_s*, %struct.gs_const_string_s*, i64*)*, i64 }
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
%struct.fm_pair_cache_s = type { i32, i32, %struct.cached_fm_pair_s*, i32, i32, i32 }
%struct.cached_fm_pair_s = type { %struct.gs_font_s*, %struct.gs_uid_s, i32, i32, float, float, float, float, i32, i32, %struct.gx_xfont_s*, %struct.gs_memory_s*, i32, %struct.ttfFont_s*, %struct.gx_ttfReader_s*, i32, i32, i32 }
%struct.gs_uid_s = type { i64, i64* }
%struct.gx_xfont_s = type opaque
%struct.ttfFont_s = type opaque
%struct.gx_ttfReader_s = type opaque
%struct.char_cache_s = type { %struct.gx_bits_cache_chunk_s*, i32, i32, i32, %struct.gs_memory_s*, %struct.gs_memory_s*, %struct.cached_char_s**, i32, i32, i32, i32, i32, i32, i32 (%struct.gs_memory_s*, i64, i8*)*, i8* }
%struct.gx_bits_cache_chunk_s = type { %struct.gx_bits_cache_chunk_s*, i8*, i32, i32 }
%struct.cached_char_s = type { %struct.gx_cached_bits_head_s, i16, i16, i16, i16, i64, %struct.cached_fm_pair_s*, i32, i64, i8, %struct.gx_bits_cache_chunk_s*, i32, i32, %struct.gs_fixed_point_s, i64, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gx_cached_bits_head_s = type { i32, i32 }
%struct.gs_fixed_point_s = type { i32, i32 }
%struct.ttfInterpreter_s = type opaque
%struct.gx_ttfMemory_s = type opaque
%struct.gx_device_spot_analyzer_s = type opaque
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
%struct.build_proc_refs_s = type { %struct.ref_s, %struct.ref_s }
%struct.gs_cid_system_info_s = type { %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }
%struct.gs_font_base_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32 }
%struct.gs_font_cid1_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32, %struct.gs_font_cid1_data_s }
%struct.gs_font_cid1_data_s = type { %struct.gs_cid_system_info_s }
%struct.gs_font_cid_data_s = type { %struct.gs_cid_system_info_s, i32, i32, i32 }
%struct.gs_font_type42_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32, %struct.gs_type42_data_s }
%struct.gs_type42_data_s = type { i32 (%struct.gs_font_type42_s*, i64, i32, i8**)*, i8*, i32 (%struct.gs_font_type42_s*, i64)*, i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type42_s*, i32, i32, float*)*, i32 (%struct.gs_font_type42_s*, i32, i32, i64)*, i64, i64, i32, i32, [2 x %struct.gs_type42_mtx_s], i64, i64, i64, i32, i32, i32, i32, i32, i32, i32*, %struct.gs_glyph_cache_s*, i32, i32, i8*, i64 }
%struct.gs_glyph_data_s = type { %struct.gs_const_bytestring_s, %struct.gs_glyph_data_procs_s*, i8*, %struct.gs_memory_s* }
%struct.gs_const_bytestring_s = type { i8*, i32, i8* }
%struct.gs_glyph_data_procs_s = type { void (%struct.gs_glyph_data_s*, i8*)*, i32 (%struct.gs_glyph_data_s*, i32, i32)* }
%struct.gs_type42_mtx_s = type { i32, i64, i32 }
%struct.gs_glyph_cache_s = type opaque
%struct.gs_font_cid2_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32, %struct.gs_type42_data_s, %struct.gs_font_cid2_data_s, %struct.gs_subst_CID_on_WMode_s* }
%struct.gs_font_cid2_data_s = type { %struct.gs_font_cid_data_s, i32, i32 (%struct.gs_font_cid2_s*, i64)*, %struct.o_ }
%struct.o_ = type { i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type42_s*, i32, i32, float*)* }
%struct.gs_subst_CID_on_WMode_s = type { %struct.rc_header_s, [2 x i32*], [2 x i32] }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.font_data_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %union._fs }
%union._fs = type { %struct._f42 }
%struct._f42 = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, i32, i64 }

@.str = private unnamed_addr constant [14 x i8] c"2.buildfont10\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"2.buildfont11\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"2.type11mapcid\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"2.fillCIDMap\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"2.fillIdentityCIDMap\00", align 1
@zfcid1_op_defs = constant [6 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zbuildfont10 }, %struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zbuildfont11 }, %struct.op_def { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @ztype11mapcid }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zfillCIDMap }, %struct.op_def { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zfillIdentityCIDMap }, %struct.op_def zeroinitializer], align 16
@st_gs_font_cid1 = external constant %struct.gs_memory_struct_type_s, align 8
@.str.5 = private unnamed_addr constant [12 x i8] c"CIDFontName\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"MetricsCount\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"File\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"loca\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"glyf\00", align 1
@zbuildfont11.name = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0)], align 16
@.str.10 = private unnamed_addr constant [15 x i8] c"file_table_pos\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"CIDMap\00", align 1
@st_gs_font_cid2 = external constant %struct.gs_memory_struct_type_s, align 8
@.str.12 = private unnamed_addr constant [18 x i8] c"%Type11BuildGlyph\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"subst_CID_on_WMode\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"Ordering\00", align 1
@st_subst_CID_on_WMode = external constant %struct.gs_memory_struct_type_s, align 8
@.str.15 = private unnamed_addr constant [13 x i8] c"zbuildfont11\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"release_subst_CID_on_WMode\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"z11_get_outline\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"z11_get_metrics\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @zbuildfont10(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %build = alloca %struct.build_proc_refs_s, align 8
  %code = alloca i32, align 4
  %cidsi = alloca %struct.gs_cid_system_info_s, align 8
  %pfont = alloca %struct.gs_font_base_s*, align 8
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
  %3 = bitcast %struct.build_proc_refs_s* %build to i8*
  call void @llvm.lifetime.start(i64 32, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @build_gs_font_procs(%struct.ref_s* %5, %struct.build_proc_refs_s* %build) #3
  store i32 %call, i32* %code, align 4, !tbaa !19
  %6 = bitcast %struct.gs_cid_system_info_s* %cidsi to i8*
  call void @llvm.lifetime.start(i64 40, i8* %6) #1
  %7 = bitcast %struct.gs_font_base_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load i32, i32* %code, align 4, !tbaa !19
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call1 = call i32 @cid_font_system_info_param(%struct.gs_cid_system_info_s* %cidsi, %struct.ref_s* %10) #3
  store i32 %call1, i32* %code, align 4, !tbaa !19
  %11 = load i32, i32* %code, align 4, !tbaa !19
  %cmp2 = icmp slt i32 %11, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %12 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %BuildChar = getelementptr inbounds %struct.build_proc_refs_s, %struct.build_proc_refs_s* %build, i32 0, i32 0
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %BuildChar, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 3584, i16* %type_attrs, align 2, !tbaa !20
  %13 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %14 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call5 = call i32 @build_gs_simple_font(%struct.gs_context_state_s* %13, %struct.ref_s* %14, %struct.gs_font_base_s** %pfont, i32 10, %struct.gs_memory_struct_type_s* @st_gs_font_cid1, %struct.build_proc_refs_s* %build, i32 5) #3
  store i32 %call5, i32* %code, align 4, !tbaa !19
  %15 = load i32, i32* %code, align 4, !tbaa !19
  %cmp6 = icmp slt i32 %15, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  %16 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end.4
  %17 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %18 = bitcast %struct.gs_font_base_s* %17 to %struct.gs_font_cid1_s*
  %cidata = getelementptr inbounds %struct.gs_font_cid1_s, %struct.gs_font_cid1_s* %18, i32 0, i32 29
  %CIDSystemInfo = getelementptr inbounds %struct.gs_font_cid1_data_s, %struct.gs_font_cid1_data_s* %cidata, i32 0, i32 0
  %19 = bitcast %struct.gs_cid_system_info_s* %CIDSystemInfo to i8*
  %20 = bitcast %struct.gs_cid_system_info_s* %cidsi to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 40, i32 8, i1 false), !tbaa.struct !21
  %21 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %22 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfont, align 8, !tbaa !1
  %23 = bitcast %struct.gs_font_base_s* %22 to %struct.gs_font_s*
  %call9 = call i32 @define_gs_font(%struct.gs_context_state_s* %21, %struct.gs_font_s* %23) #3
  store i32 %call9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.8, %if.then.7, %if.then.3, %if.then
  %24 = bitcast %struct.gs_font_base_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast %struct.gs_cid_system_info_s* %cidsi to i8*
  call void @llvm.lifetime.end(i64 40, i8* %25) #1
  %26 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast %struct.build_proc_refs_s* %build to i8*
  call void @llvm.lifetime.end(i64 32, i8* %27) #1
  %28 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal i32 @zbuildfont11(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %common = alloca %struct.gs_font_cid_data_s, align 8
  %pfont = alloca %struct.gs_font_type42_s*, align 8
  %pfcid = alloca %struct.gs_font_cid2_s*, align 8
  %MetricsCount = alloca i32, align 4
  %rcidmap = alloca %struct.ref_s, align 8
  %ignore_gdir = alloca %struct.ref_s, align 8
  %file = alloca %struct.ref_s, align 8
  %pfile = alloca %struct.ref_s*, align 8
  %cfnstr = alloca %struct.ref_s, align 8
  %pCIDFontName = alloca %struct.ref_s*, align 8
  %CIDFontName = alloca %struct.ref_s, align 8
  %t = alloca %struct.ref_s*, align 8
  %loca_glyph_pos = alloca [2 x [2 x i64]], align 16
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %file_table_pos = alloca %struct.ref_s*, align 8
  %a = alloca %struct.ref_s*, align 8
  %v = alloca %struct.ref_s, align 8
  %name = alloca [2 x i8*], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %subst = alloca %struct.gs_subst_CID_on_WMode_s*, align 8
  %o = alloca %struct.ref_s*, align 8
  %font = alloca %struct.gs_font_s*, align 8
  %pfcid1 = alloca %struct.gs_font_cid2_s*, align 8
  %s = alloca %struct.stream_s*, align 8
  %fcode = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !5
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.gs_font_cid_data_s* %common to i8*
  call void @llvm.lifetime.start(i64 56, i8* %3) #1
  %4 = bitcast %struct.gs_font_type42_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast %struct.gs_font_cid2_s** %pfcid to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %MetricsCount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast %struct.ref_s* %rcidmap to i8*
  call void @llvm.lifetime.start(i64 16, i8* %7) #1
  %8 = bitcast %struct.ref_s* %ignore_gdir to i8*
  call void @llvm.lifetime.start(i64 16, i8* %8) #1
  %9 = bitcast %struct.ref_s* %file to i8*
  call void @llvm.lifetime.start(i64 16, i8* %9) #1
  %10 = bitcast %struct.ref_s** %pfile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast %struct.ref_s* %cfnstr to i8*
  call void @llvm.lifetime.start(i64 16, i8* %11) #1
  %12 = bitcast %struct.ref_s** %pCIDFontName to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast %struct.ref_s* %CIDFontName to i8*
  call void @llvm.lifetime.start(i64 16, i8* %13) #1
  %14 = bitcast %struct.ref_s** %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast [2 x [2 x i64]]* %loca_glyph_pos to i8*
  call void @llvm.lifetime.start(i64 32, i8* %15) #1
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call = call i32 @cid_font_data_param(%struct.ref_s* %17, %struct.gs_font_cid_data_s* %common, %struct.ref_s* %ignore_gdir) #3
  store i32 %call, i32* %code, align 4, !tbaa !19
  %18 = load i32, i32* %code, align 4, !tbaa !19
  %cmp = icmp slt i32 %18, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call1 = call i32 @dict_find_string(%struct.ref_s* %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), %struct.ref_s** %pCIDFontName) #3
  store i32 %call1, i32* %code, align 4, !tbaa !19
  %cmp2 = icmp sle i32 %call1, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %20 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call4 = call i32 @dict_int_param(%struct.ref_s* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i32 0, i32 4, i32 0, i32* %MetricsCount) #3
  store i32 %call4, i32* %code, align 4, !tbaa !19
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %entry
  %21 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.347

if.end:                                           ; preds = %lor.lhs.false.3
  %22 = load %struct.ref_s*, %struct.ref_s** %pCIDFontName, align 8, !tbaa !1
  %23 = bitcast %struct.ref_s* %CIDFontName to i8*
  %24 = bitcast %struct.ref_s* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 16, i32 8, i1 false), !tbaa.struct !22
  %25 = load i32, i32* %MetricsCount, align 4, !tbaa !19
  %and = and i32 %25, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.347

if.end.7:                                         ; preds = %if.end
  %26 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call8 = call i32 @dict_find_string(%struct.ref_s* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), %struct.ref_s** %pfile) #3
  store i32 %call8, i32* %code, align 4, !tbaa !19
  %27 = load i32, i32* %code, align 4, !tbaa !19
  %cmp9 = icmp slt i32 %27, 0
  br i1 %cmp9, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %if.end.7
  %28 = load i32, i32* %code, align 4, !tbaa !19
  %cmp10 = icmp ne i32 %28, -21
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %land.lhs.true
  %29 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.347

if.end.12:                                        ; preds = %land.lhs.true, %if.end.7
  %30 = load i32, i32* %code, align 4, !tbaa !19
  %cmp13 = icmp sgt i32 %30, 0
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.end.12
  %31 = bitcast %struct.ref_s** %file_table_pos to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  %32 = bitcast %struct.ref_s** %a to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #1
  %33 = bitcast %struct.ref_s* %v to i8*
  call void @llvm.lifetime.start(i64 16, i8* %33) #1
  %34 = bitcast [2 x i8*]* %name to i8*
  call void @llvm.lifetime.start(i64 16, i8* %34) #1
  %35 = bitcast [2 x i8*]* %name to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* bitcast ([2 x i8*]* @zbuildfont11.name to i8*), i64 16, i32 16, i1 false)
  %36 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #1
  %37 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %38 = load %struct.ref_s*, %struct.ref_s** %pfile, align 8, !tbaa !1
  %39 = bitcast %struct.ref_s* %file to i8*
  %40 = bitcast %struct.ref_s* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 16, i32 8, i1 false), !tbaa.struct !22
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %file, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %41 = load i16, i16* %type_attrs, align 2, !tbaa !20
  %conv = zext i16 %41 to i32
  %and15 = and i32 %conv, 16160
  %cmp16 = icmp eq i32 %and15, 800
  br i1 %cmp16, label %if.end.25, label %if.then.18

if.then.18:                                       ; preds = %if.then.14
  %tas19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %file, i32 0, i32 0
  %type_attrs20 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas19, i32 0, i32 0
  %42 = bitcast i16* %type_attrs20 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %42, i64 1
  %43 = load i8, i8* %arrayidx, align 1, !tbaa !27
  %conv21 = zext i8 %43 to i32
  %cmp22 = icmp eq i32 %conv21, 3
  br i1 %cmp22, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.18
  %call24 = call i32 @check_type_failed(%struct.ref_s* %file) #3
  br label %cond.end

cond.false:                                       ; preds = %if.then.18
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call24, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %if.then.14
  %44 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call26 = call i32 @dict_find_string(%struct.ref_s* %44, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), %struct.ref_s** %file_table_pos) #3
  store i32 %call26, i32* %code, align 4, !tbaa !19
  %45 = load i32, i32* %code, align 4, !tbaa !19
  %cmp27 = icmp sle i32 %45, 0
  br i1 %cmp27, label %if.then.36, label %lor.lhs.false.29

lor.lhs.false.29:                                 ; preds = %if.end.25
  %46 = load %struct.ref_s*, %struct.ref_s** %file_table_pos, align 8, !tbaa !1
  %tas30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i32 0, i32 0
  %type_attrs31 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas30, i32 0, i32 0
  %47 = bitcast i16* %type_attrs31 to i8*
  %arrayidx32 = getelementptr inbounds i8, i8* %47, i64 1
  %48 = load i8, i8* %arrayidx32, align 1, !tbaa !27
  %conv33 = zext i8 %48 to i32
  %cmp34 = icmp ne i32 %conv33, 2
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %lor.lhs.false.29, %if.end.25
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.37:                                        ; preds = %lor.lhs.false.29
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc.74, %if.end.37
  %49 = load i32, i32* %i, align 4, !tbaa !19
  %cmp38 = icmp slt i32 %49, 2
  br i1 %cmp38, label %for.body, label %for.end.76

for.body:                                         ; preds = %for.cond
  %50 = load %struct.ref_s*, %struct.ref_s** %file_table_pos, align 8, !tbaa !1
  %51 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom = sext i32 %51 to i64
  %arrayidx40 = getelementptr inbounds [2 x i8*], [2 x i8*]* %name, i32 0, i64 %idxprom
  %52 = load i8*, i8** %arrayidx40, align 8, !tbaa !1
  %call41 = call i32 @dict_find_string(%struct.ref_s* %50, i8* %52, %struct.ref_s** %a) #3
  store i32 %call41, i32* %code, align 4, !tbaa !19
  %53 = load i32, i32* %code, align 4, !tbaa !19
  %cmp42 = icmp sle i32 %53, 0
  br i1 %cmp42, label %if.then.51, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %for.body
  %54 = load %struct.ref_s*, %struct.ref_s** %a, align 8, !tbaa !1
  %tas45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %54, i32 0, i32 0
  %type_attrs46 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas45, i32 0, i32 0
  %55 = bitcast i16* %type_attrs46 to i8*
  %arrayidx47 = getelementptr inbounds i8, i8* %55, i64 1
  %56 = load i8, i8* %arrayidx47, align 1, !tbaa !27
  %conv48 = zext i8 %56 to i32
  %cmp49 = icmp ne i32 %conv48, 4
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %lor.lhs.false.44, %for.body
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.52:                                        ; preds = %lor.lhs.false.44
  store i32 0, i32* %j, align 4, !tbaa !19
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc, %if.end.52
  %57 = load i32, i32* %j, align 4, !tbaa !19
  %cmp54 = icmp slt i32 %57, 2
  br i1 %cmp54, label %for.body.56, label %for.end

for.body.56:                                      ; preds = %for.cond.53
  %58 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %58, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %59 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !28
  %60 = bitcast %struct.gs_ref_memory_s* %59 to %struct.gs_memory_s*
  %61 = load %struct.ref_s*, %struct.ref_s** %a, align 8, !tbaa !1
  %62 = load i32, i32* %j, align 4, !tbaa !19
  %conv57 = sext i32 %62 to i64
  %call58 = call i32 @array_get(%struct.gs_memory_s* %60, %struct.ref_s* %61, i64 %conv57, %struct.ref_s* %v) #3
  store i32 %call58, i32* %code, align 4, !tbaa !19
  %63 = load i32, i32* %code, align 4, !tbaa !19
  %cmp59 = icmp slt i32 %63, 0
  br i1 %cmp59, label %if.then.68, label %lor.lhs.false.61

lor.lhs.false.61:                                 ; preds = %for.body.56
  %tas62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %v, i32 0, i32 0
  %type_attrs63 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas62, i32 0, i32 0
  %64 = bitcast i16* %type_attrs63 to i8*
  %arrayidx64 = getelementptr inbounds i8, i8* %64, i64 1
  %65 = load i8, i8* %arrayidx64, align 1, !tbaa !27
  %conv65 = zext i8 %65 to i32
  %cmp66 = icmp ne i32 %conv65, 11
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %lor.lhs.false.61, %for.body.56
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.69:                                        ; preds = %lor.lhs.false.61
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %v, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %66 = load i64, i64* %intval, align 8, !tbaa !24
  %67 = load i32, i32* %j, align 4, !tbaa !19
  %idxprom70 = sext i32 %67 to i64
  %68 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom71 = sext i32 %68 to i64
  %arrayidx72 = getelementptr inbounds [2 x [2 x i64]], [2 x [2 x i64]]* %loca_glyph_pos, i32 0, i64 %idxprom71
  %arrayidx73 = getelementptr inbounds [2 x i64], [2 x i64]* %arrayidx72, i32 0, i64 %idxprom70
  store i64 %66, i64* %arrayidx73, align 8, !tbaa !24
  br label %for.inc

for.inc:                                          ; preds = %if.end.69
  %69 = load i32, i32* %j, align 4, !tbaa !19
  %inc = add nsw i32 %69, 1
  store i32 %inc, i32* %j, align 4, !tbaa !19
  br label %for.cond.53

for.end:                                          ; preds = %for.cond.53
  br label %for.inc.74

for.inc.74:                                       ; preds = %for.end
  %70 = load i32, i32* %i, align 4, !tbaa !19
  %inc75 = add nsw i32 %70, 1
  store i32 %inc75, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.end.76:                                       ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.76, %if.then.68, %if.then.51, %if.then.36, %cond.end
  %71 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %72 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = bitcast [2 x i8*]* %name to i8*
  call void @llvm.lifetime.end(i64 16, i8* %73) #1
  %74 = bitcast %struct.ref_s* %v to i8*
  call void @llvm.lifetime.end(i64 16, i8* %74) #1
  %75 = bitcast %struct.ref_s** %a to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = bitcast %struct.ref_s** %file_table_pos to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.347 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.82

if.else:                                          ; preds = %if.end.12
  store %struct.ref_s* null, %struct.ref_s** %pfile, align 8, !tbaa !1
  br label %if.end.82

if.end.82:                                        ; preds = %if.else, %cleanup.cont
  %77 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory83 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %77, i32 0, i32 1
  %current84 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory83, i32 0, i32 0
  %78 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current84, align 8, !tbaa !28
  %79 = bitcast %struct.gs_ref_memory_s* %78 to %struct.gs_memory_s*
  %80 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call85 = call i32 @font_string_array_param(%struct.gs_memory_s* %79, %struct.ref_s* %80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), %struct.ref_s* %rcidmap) #3
  store i32 %call85, i32* %code, align 4, !tbaa !19
  %81 = load i32, i32* %code, align 4, !tbaa !19
  switch i32 %81, label %sw.default [
    i32 0, label %sw.bb
    i32 -20, label %sw.bb.90
  ]

sw.bb:                                            ; preds = %if.end.82
  br label %gdb

gdb:                                              ; preds = %sw.bb.95, %sw.bb
  %GDBytes = getelementptr inbounds %struct.gs_font_cid_data_s, %struct.gs_font_cid_data_s* %common, i32 0, i32 3
  %82 = load i32, i32* %GDBytes, align 4, !tbaa !29
  %cmp86 = icmp eq i32 %82, 0
  br i1 %cmp86, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %gdb
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.347

if.end.89:                                        ; preds = %gdb
  br label %sw.epilog.98

sw.default:                                       ; preds = %if.end.82
  %83 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %83, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.347

sw.bb.90:                                         ; preds = %if.end.82
  %tas91 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rcidmap, i32 0, i32 0
  %type_attrs92 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas91, i32 0, i32 0
  %84 = bitcast i16* %type_attrs92 to i8*
  %arrayidx93 = getelementptr inbounds i8, i8* %84, i64 1
  %85 = load i8, i8* %arrayidx93, align 1, !tbaa !27
  %conv94 = zext i8 %85 to i32
  switch i32 %conv94, label %sw.default.97 [
    i32 18, label %sw.bb.95
    i32 2, label %sw.bb.96
    i32 11, label %sw.bb.96
  ]

sw.bb.95:                                         ; preds = %sw.bb.90
  br label %gdb

sw.bb.96:                                         ; preds = %sw.bb.90, %sw.bb.90
  br label %sw.epilog

sw.default.97:                                    ; preds = %sw.bb.90
  %86 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %86, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.347

sw.epilog:                                        ; preds = %sw.bb.96
  br label %sw.epilog.98

sw.epilog.98:                                     ; preds = %sw.epilog, %if.end.89
  %87 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %88 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %89 = load %struct.ref_s*, %struct.ref_s** %pfile, align 8, !tbaa !1
  %cmp99 = icmp ne %struct.ref_s* %89, null
  %cond101 = select i1 %cmp99, i32 32, i32 0
  %or = or i32 13, %cond101
  %call102 = call i32 @build_gs_TrueType_font(%struct.gs_context_state_s* %87, %struct.ref_s* %88, %struct.gs_font_type42_s** %pfont, i32 11, %struct.gs_memory_struct_type_s* @st_gs_font_cid2, i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0), i32 %or) #3
  store i32 %call102, i32* %code, align 4, !tbaa !19
  %90 = load i32, i32* %code, align 4, !tbaa !19
  %cmp103 = icmp slt i32 %90, 0
  br i1 %cmp103, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %sw.epilog.98
  %91 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %91, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.347

if.end.106:                                       ; preds = %sw.epilog.98
  %92 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %93 = bitcast %struct.gs_font_type42_s* %92 to %struct.gs_font_cid2_s*
  store %struct.gs_font_cid2_s* %93, %struct.gs_font_cid2_s** %pfcid, align 8, !tbaa !1
  %94 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call107 = call i32 @dict_find_string(%struct.ref_s* %94, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0), %struct.ref_s** %t) #3
  %cmp108 = icmp sgt i32 %call107, 0
  br i1 %cmp108, label %land.lhs.true.110, label %if.end.240

land.lhs.true.110:                                ; preds = %if.end.106
  %95 = load %struct.ref_s*, %struct.ref_s** %t, align 8, !tbaa !1
  %tas111 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %95, i32 0, i32 0
  %type_attrs112 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas111, i32 0, i32 0
  %96 = bitcast i16* %type_attrs112 to i8*
  %arrayidx113 = getelementptr inbounds i8, i8* %96, i64 1
  %97 = load i8, i8* %arrayidx113, align 1, !tbaa !27
  %conv114 = zext i8 %97 to i32
  %cmp115 = icmp eq i32 %conv114, 2
  br i1 %cmp115, label %if.then.117, label %if.end.240

if.then.117:                                      ; preds = %land.lhs.true.110
  %98 = bitcast %struct.gs_subst_CID_on_WMode_s** %subst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %98) #1
  store %struct.gs_subst_CID_on_WMode_s* null, %struct.gs_subst_CID_on_WMode_s** %subst, align 8, !tbaa !1
  %99 = bitcast %struct.ref_s** %o to i8*
  call void @llvm.lifetime.start(i64 8, i8* %99) #1
  %100 = bitcast %struct.gs_font_s** %font to i8*
  call void @llvm.lifetime.start(i64 8, i8* %100) #1
  %101 = load %struct.ref_s*, %struct.ref_s** %t, align 8, !tbaa !1
  %call118 = call i32 @dict_find_string(%struct.ref_s* %101, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), %struct.ref_s** %o) #3
  %cmp119 = icmp sle i32 %call118, 0
  br i1 %cmp119, label %if.then.128, label %lor.lhs.false.121

lor.lhs.false.121:                                ; preds = %if.then.117
  %102 = load %struct.ref_s*, %struct.ref_s** %o, align 8, !tbaa !1
  %tas122 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %102, i32 0, i32 0
  %type_attrs123 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas122, i32 0, i32 0
  %103 = bitcast i16* %type_attrs123 to i8*
  %arrayidx124 = getelementptr inbounds i8, i8* %103, i64 1
  %104 = load i8, i8* %arrayidx124, align 1, !tbaa !27
  %conv125 = zext i8 %104 to i32
  %cmp126 = icmp ne i32 %conv125, 18
  br i1 %cmp126, label %if.then.128, label %if.end.129

if.then.128:                                      ; preds = %lor.lhs.false.121, %if.then.117
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.235

if.end.129:                                       ; preds = %lor.lhs.false.121
  %105 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory130 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %105, i32 0, i32 1
  %current131 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory130, i32 0, i32 0
  %106 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current131, align 8, !tbaa !28
  %107 = bitcast %struct.gs_ref_memory_s* %106 to %struct.gs_memory_s*
  %call132 = call %struct.gs_lib_ctx_s* @gs_lib_ctx_get_interp_instance(%struct.gs_memory_s* %107) #3
  %font_dir = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %call132, i32 0, i32 22
  %108 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %font_dir, align 8, !tbaa !33
  %orig_fonts = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %108, i32 0, i32 0
  %109 = load %struct.gs_font_s*, %struct.gs_font_s** %orig_fonts, align 8, !tbaa !35
  store %struct.gs_font_s* %109, %struct.gs_font_s** %font, align 8, !tbaa !1
  br label %for.cond.133

for.cond.133:                                     ; preds = %for.inc.159, %if.end.129
  %110 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !1
  %cmp134 = icmp ne %struct.gs_font_s* %110, null
  br i1 %cmp134, label %for.body.136, label %for.end.160

for.body.136:                                     ; preds = %for.cond.133
  %111 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %111, i32 0, i32 11
  %112 = load i32, i32* %FontType, align 4, !tbaa !39
  %cmp137 = icmp eq i32 %112, 11
  br i1 %cmp137, label %if.then.139, label %if.end.158

if.then.139:                                      ; preds = %for.body.136
  %113 = bitcast %struct.gs_font_cid2_s** %pfcid1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %113) #1
  %114 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !1
  %115 = bitcast %struct.gs_font_s* %114 to %struct.gs_font_cid2_s*
  store %struct.gs_font_cid2_s* %115, %struct.gs_font_cid2_s** %pfcid1, align 8, !tbaa !1
  %116 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfcid1, align 8, !tbaa !1
  %subst_CID_on_WMode = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %116, i32 0, i32 31
  %117 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %subst_CID_on_WMode, align 8, !tbaa !45
  %cmp140 = icmp ne %struct.gs_subst_CID_on_WMode_s* %117, null
  br i1 %cmp140, label %land.lhs.true.142, label %if.end.154

land.lhs.true.142:                                ; preds = %if.then.139
  %118 = load %struct.ref_s*, %struct.ref_s** %o, align 8, !tbaa !1
  %value143 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %118, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value143 to i8**
  %119 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  %120 = load %struct.ref_s*, %struct.ref_s** %o, align 8, !tbaa !1
  %tas144 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %120, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas144, i32 0, i32 2
  %121 = load i32, i32* %rsize, align 4, !tbaa !54
  %122 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfcid1, align 8, !tbaa !1
  %cidata = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %122, i32 0, i32 30
  %common145 = getelementptr inbounds %struct.gs_font_cid2_data_s, %struct.gs_font_cid2_data_s* %cidata, i32 0, i32 0
  %CIDSystemInfo = getelementptr inbounds %struct.gs_font_cid_data_s, %struct.gs_font_cid_data_s* %common145, i32 0, i32 0
  %Ordering = getelementptr inbounds %struct.gs_cid_system_info_s, %struct.gs_cid_system_info_s* %CIDSystemInfo, i32 0, i32 1
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Ordering, i32 0, i32 0
  %123 = load i8*, i8** %data, align 8, !tbaa !55
  %124 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfcid1, align 8, !tbaa !1
  %cidata146 = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %124, i32 0, i32 30
  %common147 = getelementptr inbounds %struct.gs_font_cid2_data_s, %struct.gs_font_cid2_data_s* %cidata146, i32 0, i32 0
  %CIDSystemInfo148 = getelementptr inbounds %struct.gs_font_cid_data_s, %struct.gs_font_cid_data_s* %common147, i32 0, i32 0
  %Ordering149 = getelementptr inbounds %struct.gs_cid_system_info_s, %struct.gs_cid_system_info_s* %CIDSystemInfo148, i32 0, i32 1
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %Ordering149, i32 0, i32 1
  %125 = load i32, i32* %size, align 4, !tbaa !56
  %call150 = call i32 @bytes_compare(i8* %119, i32 %121, i8* %123, i32 %125) #3
  %tobool151 = icmp ne i32 %call150, 0
  br i1 %tobool151, label %if.then.152, label %if.end.154

if.then.152:                                      ; preds = %land.lhs.true.142
  %126 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfcid1, align 8, !tbaa !1
  %subst_CID_on_WMode153 = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %126, i32 0, i32 31
  %127 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %subst_CID_on_WMode153, align 8, !tbaa !45
  store %struct.gs_subst_CID_on_WMode_s* %127, %struct.gs_subst_CID_on_WMode_s** %subst, align 8, !tbaa !1
  store i32 11, i32* %cleanup.dest.slot
  br label %cleanup.155

if.end.154:                                       ; preds = %land.lhs.true.142, %if.then.139
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.155

cleanup.155:                                      ; preds = %if.end.154, %if.then.152
  %128 = bitcast %struct.gs_font_cid2_s** %pfcid1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %128) #1
  %cleanup.dest.156 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.156, label %unreachable [
    i32 0, label %cleanup.cont.157
    i32 11, label %for.end.160
  ]

cleanup.cont.157:                                 ; preds = %cleanup.155
  br label %if.end.158

if.end.158:                                       ; preds = %cleanup.cont.157, %for.body.136
  br label %for.inc.159

for.inc.159:                                      ; preds = %if.end.158
  %129 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %129, i32 0, i32 0
  %130 = load %struct.gs_font_s*, %struct.gs_font_s** %next, align 8, !tbaa !57
  store %struct.gs_font_s* %130, %struct.gs_font_s** %font, align 8, !tbaa !1
  br label %for.cond.133

for.end.160:                                      ; preds = %cleanup.155, %for.cond.133
  %131 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %subst, align 8, !tbaa !1
  %cmp161 = icmp eq %struct.gs_subst_CID_on_WMode_s* %131, null
  br i1 %cmp161, label %if.then.163, label %if.else.197

if.then.163:                                      ; preds = %for.end.160
  br label %do.body

do.body:                                          ; preds = %if.then.163
  %132 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfcid, align 8, !tbaa !1
  %memory164 = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %132, i32 0, i32 2
  %133 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory164, align 8, !tbaa !58
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %133, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %134 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !59
  %135 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfcid, align 8, !tbaa !1
  %memory165 = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %135, i32 0, i32 2
  %136 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory165, align 8, !tbaa !58
  %call166 = call i8* %134(%struct.gs_memory_s* %136, %struct.gs_memory_struct_type_s* @st_subst_CID_on_WMode, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0)) #3
  %137 = bitcast i8* %call166 to %struct.gs_subst_CID_on_WMode_s*
  store %struct.gs_subst_CID_on_WMode_s* %137, %struct.gs_subst_CID_on_WMode_s** %subst, align 8, !tbaa !1
  %cmp167 = icmp eq %struct.gs_subst_CID_on_WMode_s* %137, null
  br i1 %cmp167, label %if.then.169, label %if.else.170

if.then.169:                                      ; preds = %do.body
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.235

if.else.170:                                      ; preds = %do.body
  br label %do.body.171

do.body.171:                                      ; preds = %if.else.170
  %138 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %subst, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gs_subst_CID_on_WMode_s, %struct.gs_subst_CID_on_WMode_s* %138, i32 0, i32 0
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  store i64 1, i64* %ref_count, align 8, !tbaa !62
  %139 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfcid, align 8, !tbaa !1
  %memory172 = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %139, i32 0, i32 2
  %140 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory172, align 8, !tbaa !58
  %141 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %subst, align 8, !tbaa !1
  %rc173 = getelementptr inbounds %struct.gs_subst_CID_on_WMode_s, %struct.gs_subst_CID_on_WMode_s* %141, i32 0, i32 0
  %memory174 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc173, i32 0, i32 1
  store %struct.gs_memory_s* %140, %struct.gs_memory_s** %memory174, align 8, !tbaa !65
  %142 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %subst, align 8, !tbaa !1
  %rc175 = getelementptr inbounds %struct.gs_subst_CID_on_WMode_s, %struct.gs_subst_CID_on_WMode_s* %142, i32 0, i32 0
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc175, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @rc_free_struct_only, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !66
  br label %do.body.176

do.body.176:                                      ; preds = %do.body.171
  br label %do.cond

do.cond:                                          ; preds = %do.body.176
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.177

do.cond.177:                                      ; preds = %do.end
  br label %do.end.178

do.end.178:                                       ; preds = %do.cond.177
  br label %if.end.179

if.end.179:                                       ; preds = %do.end.178
  br label %do.cond.180

do.cond.180:                                      ; preds = %if.end.179
  br label %do.end.181

do.end.181:                                       ; preds = %do.cond.180
  %143 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %subst, align 8, !tbaa !1
  %data182 = getelementptr inbounds %struct.gs_subst_CID_on_WMode_s, %struct.gs_subst_CID_on_WMode_s* %143, i32 0, i32 1
  %arrayidx183 = getelementptr inbounds [2 x i32*], [2 x i32*]* %data182, i32 0, i64 1
  store i32* null, i32** %arrayidx183, align 8, !tbaa !1
  %144 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %subst, align 8, !tbaa !1
  %data184 = getelementptr inbounds %struct.gs_subst_CID_on_WMode_s, %struct.gs_subst_CID_on_WMode_s* %144, i32 0, i32 1
  %arrayidx185 = getelementptr inbounds [2 x i32*], [2 x i32*]* %data184, i32 0, i64 0
  store i32* null, i32** %arrayidx185, align 8, !tbaa !1
  %145 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %subst, align 8, !tbaa !1
  %146 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfcid, align 8, !tbaa !1
  %subst_CID_on_WMode186 = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %146, i32 0, i32 31
  store %struct.gs_subst_CID_on_WMode_s* %145, %struct.gs_subst_CID_on_WMode_s** %subst_CID_on_WMode186, align 8, !tbaa !45
  %147 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %subst, align 8, !tbaa !1
  %148 = load %struct.ref_s*, %struct.ref_s** %t, align 8, !tbaa !1
  %call187 = call i32 @get_subst_CID_on_WMode(%struct.gs_subst_CID_on_WMode_s* %147, %struct.ref_s* %148, i32 0) #3
  store i32 %call187, i32* %code, align 4, !tbaa !19
  %149 = load i32, i32* %code, align 4, !tbaa !19
  %cmp188 = icmp slt i32 %149, 0
  br i1 %cmp188, label %if.then.190, label %if.end.191

if.then.190:                                      ; preds = %do.end.181
  %150 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %150, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.235

if.end.191:                                       ; preds = %do.end.181
  %151 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %subst, align 8, !tbaa !1
  %152 = load %struct.ref_s*, %struct.ref_s** %t, align 8, !tbaa !1
  %call192 = call i32 @get_subst_CID_on_WMode(%struct.gs_subst_CID_on_WMode_s* %151, %struct.ref_s* %152, i32 1) #3
  store i32 %call192, i32* %code, align 4, !tbaa !19
  %153 = load i32, i32* %code, align 4, !tbaa !19
  %cmp193 = icmp slt i32 %153, 0
  br i1 %cmp193, label %if.then.195, label %if.end.196

if.then.195:                                      ; preds = %if.end.191
  %154 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %154, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.235

if.end.196:                                       ; preds = %if.end.191
  br label %if.end.214

if.else.197:                                      ; preds = %for.end.160
  %155 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %subst, align 8, !tbaa !1
  %156 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfcid, align 8, !tbaa !1
  %subst_CID_on_WMode198 = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %156, i32 0, i32 31
  store %struct.gs_subst_CID_on_WMode_s* %155, %struct.gs_subst_CID_on_WMode_s** %subst_CID_on_WMode198, align 8, !tbaa !45
  br label %do.body.199

do.body.199:                                      ; preds = %if.else.197
  %157 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %subst, align 8, !tbaa !1
  %tobool200 = icmp ne %struct.gs_subst_CID_on_WMode_s* %157, null
  br i1 %tobool200, label %if.then.201, label %if.end.211

if.then.201:                                      ; preds = %do.body.199
  br label %do.body.202

do.body.202:                                      ; preds = %if.then.201
  %158 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %subst, align 8, !tbaa !1
  %rc203 = getelementptr inbounds %struct.gs_subst_CID_on_WMode_s, %struct.gs_subst_CID_on_WMode_s* %158, i32 0, i32 0
  %ref_count204 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc203, i32 0, i32 0
  %159 = load i64, i64* %ref_count204, align 8, !tbaa !62
  %inc205 = add nsw i64 %159, 1
  store i64 %inc205, i64* %ref_count204, align 8, !tbaa !62
  br label %do.body.206

do.body.206:                                      ; preds = %do.body.202
  br label %do.cond.207

do.cond.207:                                      ; preds = %do.body.206
  br label %do.end.208

do.end.208:                                       ; preds = %do.cond.207
  br label %do.cond.209

do.cond.209:                                      ; preds = %do.end.208
  br label %do.end.210

do.end.210:                                       ; preds = %do.cond.209
  br label %if.end.211

if.end.211:                                       ; preds = %do.end.210, %do.body.199
  br label %do.cond.212

do.cond.212:                                      ; preds = %if.end.211
  br label %do.end.213

do.end.213:                                       ; preds = %do.cond.212
  br label %if.end.214

if.end.214:                                       ; preds = %do.end.213, %if.end.196
  %160 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfcid, align 8, !tbaa !1
  %161 = bitcast %struct.gs_font_cid2_s* %160 to %struct.gs_font_s*
  %162 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfcid, align 8, !tbaa !1
  %163 = bitcast %struct.gs_font_cid2_s* %162 to i8*
  %call215 = call i32 @gs_font_notify_register(%struct.gs_font_s* %161, i32 (i8*, i8*)* @release_subst_CID_on_WMode, i8* %163) #3
  store i32 %call215, i32* %code, align 4, !tbaa !19
  %164 = load i32, i32* %code, align 4, !tbaa !19
  %cmp216 = icmp slt i32 %164, 0
  br i1 %cmp216, label %if.then.218, label %if.end.219

if.then.218:                                      ; preds = %if.end.214
  %165 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %165, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.235

if.end.219:                                       ; preds = %if.end.214
  br label %do.body.220

do.body.220:                                      ; preds = %if.end.219
  %166 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %subst, align 8, !tbaa !1
  %tobool221 = icmp ne %struct.gs_subst_CID_on_WMode_s* %166, null
  br i1 %tobool221, label %if.then.222, label %if.end.232

if.then.222:                                      ; preds = %do.body.220
  br label %do.body.223

do.body.223:                                      ; preds = %if.then.222
  %167 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %subst, align 8, !tbaa !1
  %rc224 = getelementptr inbounds %struct.gs_subst_CID_on_WMode_s, %struct.gs_subst_CID_on_WMode_s* %167, i32 0, i32 0
  %ref_count225 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc224, i32 0, i32 0
  %168 = load i64, i64* %ref_count225, align 8, !tbaa !62
  %inc226 = add nsw i64 %168, 1
  store i64 %inc226, i64* %ref_count225, align 8, !tbaa !62
  br label %do.body.227

do.body.227:                                      ; preds = %do.body.223
  br label %do.cond.228

do.cond.228:                                      ; preds = %do.body.227
  br label %do.end.229

do.end.229:                                       ; preds = %do.cond.228
  br label %do.cond.230

do.cond.230:                                      ; preds = %do.end.229
  br label %do.end.231

do.end.231:                                       ; preds = %do.cond.230
  br label %if.end.232

if.end.232:                                       ; preds = %do.end.231, %do.body.220
  br label %do.cond.233

do.cond.233:                                      ; preds = %if.end.232
  br label %do.end.234

do.end.234:                                       ; preds = %do.cond.233
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.235

cleanup.235:                                      ; preds = %do.end.234, %if.then.218, %if.then.195, %if.then.190, %if.then.169, %if.then.128
  %169 = bitcast %struct.gs_font_s** %font to i8*
  call void @llvm.lifetime.end(i64 8, i8* %169) #1
  %170 = bitcast %struct.ref_s** %o to i8*
  call void @llvm.lifetime.end(i64 8, i8* %170) #1
  %171 = bitcast %struct.gs_subst_CID_on_WMode_s** %subst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %171) #1
  %cleanup.dest.238 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.238, label %cleanup.347 [
    i32 0, label %cleanup.cont.239
  ]

cleanup.cont.239:                                 ; preds = %cleanup.235
  br label %if.end.240

if.end.240:                                       ; preds = %cleanup.cont.239, %land.lhs.true.110, %if.end.106
  %172 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfcid, align 8, !tbaa !1
  %cidata241 = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %172, i32 0, i32 30
  %common242 = getelementptr inbounds %struct.gs_font_cid2_data_s, %struct.gs_font_cid2_data_s* %cidata241, i32 0, i32 0
  %173 = bitcast %struct.gs_font_cid_data_s* %common242 to i8*
  %174 = bitcast %struct.gs_font_cid_data_s* %common to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %173, i8* %174, i64 56, i32 8, i1 false), !tbaa.struct !67
  %175 = load i32, i32* %MetricsCount, align 4, !tbaa !19
  %176 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfcid, align 8, !tbaa !1
  %cidata243 = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %176, i32 0, i32 30
  %MetricsCount244 = getelementptr inbounds %struct.gs_font_cid2_data_s, %struct.gs_font_cid2_data_s* %cidata243, i32 0, i32 1
  store i32 %175, i32* %MetricsCount244, align 4, !tbaa !68
  %177 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %177, i32 0, i32 8
  %178 = load i8*, i8** %client_data, align 8, !tbaa !69
  %179 = bitcast i8* %178 to %struct.font_data_s*
  %u = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %179, i32 0, i32 6
  %type42 = bitcast %union._fs* %u to %struct._f42*
  %CIDMap = getelementptr inbounds %struct._f42, %struct._f42* %type42, i32 0, i32 1
  %180 = bitcast %struct.ref_s* %CIDMap to i8*
  %181 = bitcast %struct.ref_s* %rcidmap to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %180, i8* %181, i64 16, i32 8, i1 false), !tbaa.struct !22
  %182 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfcid, align 8, !tbaa !1
  %cidata245 = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %182, i32 0, i32 30
  %CIDMap_proc = getelementptr inbounds %struct.gs_font_cid2_data_s, %struct.gs_font_cid2_data_s* %cidata245, i32 0, i32 2
  store i32 (%struct.gs_font_cid2_s*, i64)* @z11_CIDMap_proc, i32 (%struct.gs_font_cid2_s*, i64)** %CIDMap_proc, align 8, !tbaa !71
  %183 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfcid, align 8, !tbaa !1
  %data246 = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %183, i32 0, i32 29
  %substitute_glyph_index_vertical = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data246, i32 0, i32 5
  store i32 (%struct.gs_font_type42_s*, i32, i32, i64)* @font11_substitute_glyph_index_vertical, i32 (%struct.gs_font_type42_s*, i32, i32, i64)** %substitute_glyph_index_vertical, align 8, !tbaa !72
  %184 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %procs247 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %184, i32 0, i32 20
  %enumerate_glyph = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs247, i32 0, i32 6
  store i32 (%struct.gs_font_s*, i32*, i32, i64*)* @z11_enumerate_glyph, i32 (%struct.gs_font_s*, i32*, i32, i64*)** %enumerate_glyph, align 8, !tbaa !73
  %185 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %procs248 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %185, i32 0, i32 20
  %glyph_info = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs248, i32 0, i32 7
  store i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)* @z11_glyph_info, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)** %glyph_info, align 8, !tbaa !74
  %186 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %procs249 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %186, i32 0, i32 20
  %glyph_outline = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs249, i32 0, i32 8
  store i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)* @z11_glyph_outline, i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)** %glyph_outline, align 8, !tbaa !75
  %187 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %data250 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %187, i32 0, i32 29
  %get_glyph_index = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data250, i32 0, i32 2
  store i32 (%struct.gs_font_type42_s*, i64)* @z11_get_glyph_index, i32 (%struct.gs_font_type42_s*, i64)** %get_glyph_index, align 8, !tbaa !76
  %188 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfcid, align 8, !tbaa !1
  %font_name = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %188, i32 0, i32 22
  %size251 = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %font_name, i32 0, i32 1
  %189 = load i32, i32* %size251, align 4, !tbaa !77
  %cmp252 = icmp eq i32 %189, 0
  br i1 %cmp252, label %if.then.254, label %if.end.258

if.then.254:                                      ; preds = %if.end.240
  %190 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory255 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %190, i32 0, i32 1
  %current256 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory255, i32 0, i32 0
  %191 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current256, align 8, !tbaa !28
  %192 = bitcast %struct.gs_ref_memory_s* %191 to %struct.gs_memory_s*
  call void @get_font_name(%struct.gs_memory_s* %192, %struct.ref_s* %cfnstr, %struct.ref_s* %CIDFontName) #3
  %193 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfcid, align 8, !tbaa !1
  %font_name257 = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %193, i32 0, i32 22
  call void @copy_font_name(%struct.gs_font_name_s* %font_name257, %struct.ref_s* %cfnstr) #3
  br label %if.end.258

if.end.258:                                       ; preds = %if.then.254, %if.end.240
  %194 = load i32, i32* %MetricsCount, align 4, !tbaa !19
  %tobool259 = icmp ne i32 %194, 0
  br i1 %tobool259, label %if.then.260, label %if.else.272

if.then.260:                                      ; preds = %if.end.258
  %195 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %data261 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %195, i32 0, i32 29
  %get_outline = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data261, i32 0, i32 3
  %196 = load i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)** %get_outline, align 8, !tbaa !78
  %197 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfcid, align 8, !tbaa !1
  %cidata262 = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %197, i32 0, i32 30
  %orig_procs = getelementptr inbounds %struct.gs_font_cid2_data_s, %struct.gs_font_cid2_data_s* %cidata262, i32 0, i32 3
  %get_outline263 = getelementptr inbounds %struct.o_, %struct.o_* %orig_procs, i32 0, i32 0
  store i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)* %196, i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)** %get_outline263, align 8, !tbaa !79
  %198 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %data264 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %198, i32 0, i32 29
  %get_outline265 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data264, i32 0, i32 3
  store i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)* @z11_get_outline, i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)** %get_outline265, align 8, !tbaa !78
  %199 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %data266 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %199, i32 0, i32 29
  %get_metrics = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data266, i32 0, i32 4
  %200 = load i32 (%struct.gs_font_type42_s*, i32, i32, float*)*, i32 (%struct.gs_font_type42_s*, i32, i32, float*)** %get_metrics, align 8, !tbaa !80
  %201 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfcid, align 8, !tbaa !1
  %cidata267 = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %201, i32 0, i32 30
  %orig_procs268 = getelementptr inbounds %struct.gs_font_cid2_data_s, %struct.gs_font_cid2_data_s* %cidata267, i32 0, i32 3
  %get_metrics269 = getelementptr inbounds %struct.o_, %struct.o_* %orig_procs268, i32 0, i32 1
  store i32 (%struct.gs_font_type42_s*, i32, i32, float*)* %200, i32 (%struct.gs_font_type42_s*, i32, i32, float*)** %get_metrics269, align 8, !tbaa !81
  %202 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %data270 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %202, i32 0, i32 29
  %get_metrics271 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data270, i32 0, i32 4
  store i32 (%struct.gs_font_type42_s*, i32, i32, float*)* @z11_get_metrics, i32 (%struct.gs_font_type42_s*, i32, i32, float*)** %get_metrics271, align 8, !tbaa !80
  br label %if.end.345

if.else.272:                                      ; preds = %if.end.258
  %203 = load %struct.ref_s*, %struct.ref_s** %pfile, align 8, !tbaa !1
  %cmp273 = icmp ne %struct.ref_s* %203, null
  br i1 %cmp273, label %if.then.275, label %if.end.344

if.then.275:                                      ; preds = %if.else.272
  %204 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %204) #1
  br label %do.body.276

do.body.276:                                      ; preds = %if.then.275
  %tas277 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %file, i32 0, i32 0
  %type_attrs278 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas277, i32 0, i32 0
  %205 = load i16, i16* %type_attrs278, align 2, !tbaa !20
  %conv279 = zext i16 %205 to i32
  %and280 = and i32 %conv279, 16160
  %cmp281 = icmp eq i32 %and280, 800
  br i1 %cmp281, label %if.end.295, label %if.then.283

if.then.283:                                      ; preds = %do.body.276
  %tas284 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %file, i32 0, i32 0
  %type_attrs285 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas284, i32 0, i32 0
  %206 = bitcast i16* %type_attrs285 to i8*
  %arrayidx286 = getelementptr inbounds i8, i8* %206, i64 1
  %207 = load i8, i8* %arrayidx286, align 1, !tbaa !27
  %conv287 = zext i8 %207 to i32
  %cmp288 = icmp eq i32 %conv287, 3
  br i1 %cmp288, label %cond.false.292, label %cond.true.290

cond.true.290:                                    ; preds = %if.then.283
  %call291 = call i32 @check_type_failed(%struct.ref_s* %file) #3
  br label %cond.end.293

cond.false.292:                                   ; preds = %if.then.283
  br label %cond.end.293

cond.end.293:                                     ; preds = %cond.false.292, %cond.true.290
  %cond294 = phi i32 [ %call291, %cond.true.290 ], [ -7, %cond.false.292 ]
  store i32 %cond294, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.341

if.end.295:                                       ; preds = %do.body.276
  br label %do.body.296

do.body.296:                                      ; preds = %if.end.295
  %value297 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %file, i32 0, i32 1
  %pfile298 = bitcast %union.v* %value297 to %struct.stream_s**
  %208 = load %struct.stream_s*, %struct.stream_s** %pfile298, align 8, !tbaa !1
  store %struct.stream_s* %208, %struct.stream_s** %s, align 8, !tbaa !1
  %209 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %209, i32 0, i32 19
  %210 = load i16, i16* %read_id, align 2, !tbaa !82
  %conv299 = zext i16 %210 to i32
  %tas300 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %file, i32 0, i32 0
  %rsize301 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas300, i32 0, i32 2
  %211 = load i32, i32* %rsize301, align 4, !tbaa !54
  %cmp302 = icmp ne i32 %conv299, %211
  br i1 %cmp302, label %if.then.304, label %if.end.326

if.then.304:                                      ; preds = %do.body.296
  %212 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %read_id305 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %212, i32 0, i32 19
  %213 = load i16, i16* %read_id305, align 2, !tbaa !82
  %conv306 = zext i16 %213 to i32
  %cmp307 = icmp eq i32 %conv306, 0
  br i1 %cmp307, label %land.lhs.true.309, label %if.else.324

land.lhs.true.309:                                ; preds = %if.then.304
  %214 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %write_id = getelementptr inbounds %struct.stream_s, %struct.stream_s* %214, i32 0, i32 20
  %215 = load i16, i16* %write_id, align 2, !tbaa !86
  %conv310 = zext i16 %215 to i32
  %tas311 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %file, i32 0, i32 0
  %rsize312 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas311, i32 0, i32 2
  %216 = load i32, i32* %rsize312, align 4, !tbaa !54
  %cmp313 = icmp eq i32 %conv310, %216
  br i1 %cmp313, label %if.then.315, label %if.else.324

if.then.315:                                      ; preds = %land.lhs.true.309
  %217 = bitcast i32* %fcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %217) #1
  %call316 = call i32 @file_switch_to_read(%struct.ref_s* %file) #3
  store i32 %call316, i32* %fcode, align 4, !tbaa !19
  %218 = load i32, i32* %fcode, align 4, !tbaa !19
  %cmp317 = icmp slt i32 %218, 0
  br i1 %cmp317, label %if.then.319, label %if.end.320

if.then.319:                                      ; preds = %if.then.315
  %219 = load i32, i32* %fcode, align 4, !tbaa !19
  store i32 %219, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.321

if.end.320:                                       ; preds = %if.then.315
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.321

cleanup.321:                                      ; preds = %if.end.320, %if.then.319
  %220 = bitcast i32* %fcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %220) #1
  %cleanup.dest.322 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.322, label %cleanup.341 [
    i32 0, label %cleanup.cont.323
  ]

cleanup.cont.323:                                 ; preds = %cleanup.321
  br label %if.end.325

if.else.324:                                      ; preds = %land.lhs.true.309, %if.then.304
  %221 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %invalid_file_stream = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %221, i32 0, i32 18
  %222 = load %struct.stream_s*, %struct.stream_s** %invalid_file_stream, align 8, !tbaa !87
  store %struct.stream_s* %222, %struct.stream_s** %s, align 8, !tbaa !1
  br label %if.end.325

if.end.325:                                       ; preds = %if.else.324, %cleanup.cont.323
  br label %if.end.326

if.end.326:                                       ; preds = %if.end.325, %do.body.296
  br label %do.cond.327

do.cond.327:                                      ; preds = %if.end.326
  br label %do.end.328

do.end.328:                                       ; preds = %do.cond.327
  br label %do.cond.329

do.cond.329:                                      ; preds = %do.end.328
  br label %do.end.330

do.end.330:                                       ; preds = %do.cond.329
  %arrayidx331 = getelementptr inbounds [2 x [2 x i64]], [2 x [2 x i64]]* %loca_glyph_pos, i32 0, i64 0
  %arrayidx332 = getelementptr inbounds [2 x i64], [2 x i64]* %arrayidx331, i32 0, i64 0
  %223 = load i64, i64* %arrayidx332, align 8, !tbaa !24
  %224 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %data333 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %224, i32 0, i32 29
  %loca = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data333, i32 0, i32 11
  store i64 %223, i64* %loca, align 8, !tbaa !88
  %arrayidx334 = getelementptr inbounds [2 x [2 x i64]], [2 x [2 x i64]]* %loca_glyph_pos, i32 0, i64 1
  %arrayidx335 = getelementptr inbounds [2 x i64], [2 x i64]* %arrayidx334, i32 0, i64 0
  %225 = load i64, i64* %arrayidx335, align 8, !tbaa !24
  %226 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %data336 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %226, i32 0, i32 29
  %glyf = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data336, i32 0, i32 7
  store i64 %225, i64* %glyf, align 8, !tbaa !89
  %227 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %data337 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %227, i32 0, i32 29
  %get_outline338 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data337, i32 0, i32 3
  store i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)* @gs_get_glyph_data_cached, i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)** %get_outline338, align 8, !tbaa !78
  %228 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %229 = load %struct.stream_s*, %struct.stream_s** %s, align 8, !tbaa !1
  %call339 = call %struct.gs_glyph_cache_s* @gs_glyph_cache__alloc(%struct.gs_font_type42_s* %228, %struct.stream_s* %229, i32 (%struct.gs_font_type42_s*, %struct.stream_s*, i32, %struct.gs_glyph_data_s*)* @gs_type42_get_outline_from_TT_file) #3
  %230 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %data340 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %230, i32 0, i32 29
  %gdcache = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data340, i32 0, i32 21
  store %struct.gs_glyph_cache_s* %call339, %struct.gs_glyph_cache_s** %gdcache, align 8, !tbaa !90
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.341

cleanup.341:                                      ; preds = %do.end.330, %cleanup.321, %cond.end.293
  %231 = bitcast %struct.stream_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %231) #1
  %cleanup.dest.342 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.342, label %cleanup.347 [
    i32 0, label %cleanup.cont.343
  ]

cleanup.cont.343:                                 ; preds = %cleanup.341
  br label %if.end.344

if.end.344:                                       ; preds = %cleanup.cont.343, %if.else.272
  br label %if.end.345

if.end.345:                                       ; preds = %if.end.344, %if.then.260
  %232 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %233 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %234 = bitcast %struct.gs_font_type42_s* %233 to %struct.gs_font_s*
  %call346 = call i32 @define_gs_font(%struct.gs_context_state_s* %232, %struct.gs_font_s* %234) #3
  store i32 %call346, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.347

cleanup.347:                                      ; preds = %if.end.345, %cleanup.341, %cleanup.235, %if.then.105, %sw.default.97, %sw.default, %if.then.88, %cleanup, %if.then.11, %if.then.6, %if.then
  %235 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %235) #1
  %236 = bitcast [2 x [2 x i64]]* %loca_glyph_pos to i8*
  call void @llvm.lifetime.end(i64 32, i8* %236) #1
  %237 = bitcast %struct.ref_s** %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %237) #1
  %238 = bitcast %struct.ref_s* %CIDFontName to i8*
  call void @llvm.lifetime.end(i64 16, i8* %238) #1
  %239 = bitcast %struct.ref_s** %pCIDFontName to i8*
  call void @llvm.lifetime.end(i64 8, i8* %239) #1
  %240 = bitcast %struct.ref_s* %cfnstr to i8*
  call void @llvm.lifetime.end(i64 16, i8* %240) #1
  %241 = bitcast %struct.ref_s** %pfile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %241) #1
  %242 = bitcast %struct.ref_s* %file to i8*
  call void @llvm.lifetime.end(i64 16, i8* %242) #1
  %243 = bitcast %struct.ref_s* %ignore_gdir to i8*
  call void @llvm.lifetime.end(i64 16, i8* %243) #1
  %244 = bitcast %struct.ref_s* %rcidmap to i8*
  call void @llvm.lifetime.end(i64 16, i8* %244) #1
  %245 = bitcast i32* %MetricsCount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %245) #1
  %246 = bitcast %struct.gs_font_cid2_s** %pfcid to i8*
  call void @llvm.lifetime.end(i64 8, i8* %246) #1
  %247 = bitcast %struct.gs_font_type42_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %247) #1
  %248 = bitcast %struct.gs_font_cid_data_s* %common to i8*
  call void @llvm.lifetime.end(i64 56, i8* %248) #1
  %249 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %249) #1
  %250 = load i32, i32* %retval
  ret i32 %250

unreachable:                                      ; preds = %cleanup.155
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @ztype11mapcid(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %pfont = alloca %struct.gs_font_s*, align 8
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
  %3 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -1
  %call = call i32 @font_param(%struct.ref_s* %add.ptr, %struct.gs_font_s** %pfont) #3
  store i32 %call, i32* %code, align 4, !tbaa !19
  %6 = load i32, i32* %code, align 4, !tbaa !19
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %9 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx, align 1, !tbaa !27
  %conv = zext i8 %10 to i32
  %cmp1 = icmp eq i32 %conv, 11
  br i1 %cmp1, label %if.end.5, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %11 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call4 = call i32 @check_type_failed(%struct.ref_s* %11) #3
  store i32 %call4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %12 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %12, i32 0, i32 11
  %13 = load i32, i32* %FontType, align 4, !tbaa !39
  %cmp6 = icmp ne i32 %13, 11
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end.5
  %14 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %15 = bitcast %struct.gs_font_s* %14 to %struct.gs_font_cid2_s*
  %16 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %17 = load i64, i64* %intval, align 8, !tbaa !24
  %add = add i64 2147483648, %17
  %call10 = call i32 @z11_CIDMap_proc(%struct.gs_font_cid2_s* %15, i64 %add) #3
  store i32 %call10, i32* %code, align 4, !tbaa !19
  %18 = load i32, i32* %code, align 4, !tbaa !19
  %cmp11 = icmp slt i32 %18, 0
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.9
  %19 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.end.9
  %20 = load i32, i32* %code, align 4, !tbaa !19
  %conv15 = sext i32 %20 to i64
  %21 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -1
  %value17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr16, i32 0, i32 1
  %intval18 = bitcast %union.v* %value17 to i64*
  store i64 %conv15, i64* %intval18, align 8, !tbaa !24
  %22 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 -1
  %tas20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr19, i32 0, i32 0
  %type_attrs21 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas20, i32 0, i32 0
  store i16 2816, i16* %type_attrs21, align 2, !tbaa !20
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack22 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 26
  %stack23 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack22, i32 0, i32 0
  %p24 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack23, i32 0, i32 0
  %24 = load %struct.ref_s*, %struct.ref_s** %p24, align 8, !tbaa !5
  %add.ptr25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 -1
  store %struct.ref_s* %add.ptr25, %struct.ref_s** %p24, align 8, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.14, %if.then.13, %if.then.8, %if.then.3, %if.then
  %25 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal i32 @zfillCIDMap(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %Decoding = alloca %struct.ref_s*, align 8
  %TT_cmap = alloca %struct.ref_s*, align 8
  %SubstNWP = alloca %struct.ref_s*, align 8
  %GDBytes = alloca %struct.ref_s*, align 8
  %CIDMap = alloca %struct.ref_s*, align 8
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
  %3 = bitcast %struct.ref_s** %Decoding to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -4
  store %struct.ref_s* %add.ptr, %struct.ref_s** %Decoding, align 8, !tbaa !1
  %5 = bitcast %struct.ref_s** %TT_cmap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -3
  store %struct.ref_s* %add.ptr1, %struct.ref_s** %TT_cmap, align 8, !tbaa !1
  %7 = bitcast %struct.ref_s** %SubstNWP to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -2
  store %struct.ref_s* %add.ptr2, %struct.ref_s** %SubstNWP, align 8, !tbaa !1
  %9 = bitcast %struct.ref_s** %GDBytes to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -1
  store %struct.ref_s* %add.ptr3, %struct.ref_s** %GDBytes, align 8, !tbaa !1
  %11 = bitcast %struct.ref_s** %CIDMap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  store %struct.ref_s* %12, %struct.ref_s** %CIDMap, align 8, !tbaa !1
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load %struct.ref_s*, %struct.ref_s** %Decoding, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %15 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 1
  %16 = load i8, i8* %arrayidx, align 1, !tbaa !27
  %conv = zext i8 %16 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %17 = load %struct.ref_s*, %struct.ref_s** %Decoding, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %17) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %18 = load %struct.ref_s*, %struct.ref_s** %TT_cmap, align 8, !tbaa !1
  %tas5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 0
  %type_attrs6 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas5, i32 0, i32 0
  %19 = bitcast i16* %type_attrs6 to i8*
  %arrayidx7 = getelementptr inbounds i8, i8* %19, i64 1
  %20 = load i8, i8* %arrayidx7, align 1, !tbaa !27
  %conv8 = zext i8 %20 to i32
  %cmp9 = icmp eq i32 %conv8, 2
  br i1 %cmp9, label %if.end.13, label %if.then.11

if.then.11:                                       ; preds = %if.end
  %21 = load %struct.ref_s*, %struct.ref_s** %TT_cmap, align 8, !tbaa !1
  %call12 = call i32 @check_type_failed(%struct.ref_s* %21) #3
  store i32 %call12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %if.end
  %22 = load %struct.ref_s*, %struct.ref_s** %SubstNWP, align 8, !tbaa !1
  %tas14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 0
  %type_attrs15 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas14, i32 0, i32 0
  %23 = bitcast i16* %type_attrs15 to i8*
  %arrayidx16 = getelementptr inbounds i8, i8* %23, i64 1
  %24 = load i8, i8* %arrayidx16, align 1, !tbaa !27
  %conv17 = zext i8 %24 to i32
  %cmp18 = icmp eq i32 %conv17, 4
  br i1 %cmp18, label %if.end.22, label %if.then.20

if.then.20:                                       ; preds = %if.end.13
  %25 = load %struct.ref_s*, %struct.ref_s** %SubstNWP, align 8, !tbaa !1
  %call21 = call i32 @check_type_failed(%struct.ref_s* %25) #3
  store i32 %call21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %if.end.13
  %26 = load %struct.ref_s*, %struct.ref_s** %GDBytes, align 8, !tbaa !1
  %tas23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 0
  %type_attrs24 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas23, i32 0, i32 0
  %27 = bitcast i16* %type_attrs24 to i8*
  %arrayidx25 = getelementptr inbounds i8, i8* %27, i64 1
  %28 = load i8, i8* %arrayidx25, align 1, !tbaa !27
  %conv26 = zext i8 %28 to i32
  %cmp27 = icmp eq i32 %conv26, 11
  br i1 %cmp27, label %if.end.31, label %if.then.29

if.then.29:                                       ; preds = %if.end.22
  %29 = load %struct.ref_s*, %struct.ref_s** %GDBytes, align 8, !tbaa !1
  %call30 = call i32 @check_type_failed(%struct.ref_s* %29) #3
  store i32 %call30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.31:                                        ; preds = %if.end.22
  %30 = load %struct.ref_s*, %struct.ref_s** %CIDMap, align 8, !tbaa !1
  %tas32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i32 0, i32 0
  %type_attrs33 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas32, i32 0, i32 0
  %31 = bitcast i16* %type_attrs33 to i8*
  %arrayidx34 = getelementptr inbounds i8, i8* %31, i64 1
  %32 = load i8, i8* %arrayidx34, align 1, !tbaa !27
  %conv35 = zext i8 %32 to i32
  %cmp36 = icmp eq i32 %conv35, 4
  br i1 %cmp36, label %if.end.40, label %if.then.38

if.then.38:                                       ; preds = %if.end.31
  %33 = load %struct.ref_s*, %struct.ref_s** %CIDMap, align 8, !tbaa !1
  %call39 = call i32 @check_type_failed(%struct.ref_s* %33) #3
  store i32 %call39, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.40:                                        ; preds = %if.end.31
  %34 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %34, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %35 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !28
  %36 = bitcast %struct.gs_ref_memory_s* %35 to %struct.gs_memory_s*
  %37 = load %struct.ref_s*, %struct.ref_s** %Decoding, align 8, !tbaa !1
  %38 = load %struct.ref_s*, %struct.ref_s** %TT_cmap, align 8, !tbaa !1
  %39 = load %struct.ref_s*, %struct.ref_s** %SubstNWP, align 8, !tbaa !1
  %40 = load %struct.ref_s*, %struct.ref_s** %GDBytes, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %41 = load i64, i64* %intval, align 8, !tbaa !24
  %conv41 = trunc i64 %41 to i32
  %42 = load %struct.ref_s*, %struct.ref_s** %CIDMap, align 8, !tbaa !1
  %call42 = call i32 @cid_fill_CIDMap(%struct.gs_memory_s* %36, %struct.ref_s* %37, %struct.ref_s* %38, %struct.ref_s* %39, i32 %conv41, %struct.ref_s* %42) #3
  store i32 %call42, i32* %code, align 4, !tbaa !19
  %43 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack43 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %43, i32 0, i32 26
  %stack44 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack43, i32 0, i32 0
  %p45 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack44, i32 0, i32 0
  %44 = load %struct.ref_s*, %struct.ref_s** %p45, align 8, !tbaa !5
  %add.ptr46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i64 -5
  store %struct.ref_s* %add.ptr46, %struct.ref_s** %p45, align 8, !tbaa !5
  %45 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %45, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.40, %if.then.38, %if.then.29, %if.then.20, %if.then.11, %if.then
  %46 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = bitcast %struct.ref_s** %CIDMap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast %struct.ref_s** %GDBytes to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = bitcast %struct.ref_s** %SubstNWP to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = bitcast %struct.ref_s** %TT_cmap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = bitcast %struct.ref_s** %Decoding to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %53 = load i32, i32* %retval
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define internal i32 @zfillIdentityCIDMap(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %CIDMap = alloca %struct.ref_s*, align 8
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
  %3 = bitcast %struct.ref_s** %CIDMap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  store %struct.ref_s* %4, %struct.ref_s** %CIDMap, align 8, !tbaa !1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.ref_s*, %struct.ref_s** %CIDMap, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %7 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !27
  %conv = zext i8 %8 to i32
  %cmp = icmp eq i32 %conv, 4
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %9 = load %struct.ref_s*, %struct.ref_s** %CIDMap, align 8, !tbaa !1
  %call = call i32 @check_type_failed(%struct.ref_s* %9) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %10, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %11 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !28
  %12 = bitcast %struct.gs_ref_memory_s* %11 to %struct.gs_memory_s*
  %13 = load %struct.ref_s*, %struct.ref_s** %CIDMap, align 8, !tbaa !1
  %call2 = call i32 @cid_fill_Identity_CIDMap(%struct.gs_memory_s* %12, %struct.ref_s* %13) #3
  store i32 %call2, i32* %code, align 4, !tbaa !19
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack3 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 26
  %stack4 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack3, i32 0, i32 0
  %p5 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack4, i32 0, i32 0
  %15 = load %struct.ref_s*, %struct.ref_s** %p5, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -1
  store %struct.ref_s* %add.ptr, %struct.ref_s** %p5, align 8, !tbaa !5
  %16 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %17 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  %18 = bitcast %struct.ref_s** %CIDMap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @build_gs_font_procs(%struct.ref_s*, %struct.build_proc_refs_s*) #2

declare i32 @cid_font_system_info_param(%struct.gs_cid_system_info_s*, %struct.ref_s*) #2

declare i32 @build_gs_simple_font(%struct.gs_context_state_s*, %struct.ref_s*, %struct.gs_font_base_s**, i32, %struct.gs_memory_struct_type_s*, %struct.build_proc_refs_s*, i32) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @define_gs_font(%struct.gs_context_state_s*, %struct.gs_font_s*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i32 @cid_font_data_param(%struct.ref_s*, %struct.gs_font_cid_data_s*, %struct.ref_s*) #2

declare i32 @dict_find_string(%struct.ref_s*, i8*, %struct.ref_s**) #2

declare i32 @dict_int_param(%struct.ref_s*, i8*, i32, i32, i32, i32*) #2

declare i32 @check_type_failed(%struct.ref_s*) #2

declare i32 @array_get(%struct.gs_memory_s*, %struct.ref_s*, i64, %struct.ref_s*) #2

declare i32 @font_string_array_param(%struct.gs_memory_s*, %struct.ref_s*, i8*, %struct.ref_s*) #2

declare i32 @build_gs_TrueType_font(%struct.gs_context_state_s*, %struct.ref_s*, %struct.gs_font_type42_s**, i32, %struct.gs_memory_struct_type_s*, i8*, i8*, i32) #2

declare %struct.gs_lib_ctx_s* @gs_lib_ctx_get_interp_instance(%struct.gs_memory_s*) #2

declare i32 @bytes_compare(i8*, i32, i8*, i32) #2

declare void @rc_free_struct_only(%struct.gs_memory_s*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @get_subst_CID_on_WMode(%struct.gs_subst_CID_on_WMode_s* %subst, %struct.ref_s* %t, i32 %WMode) #0 {
entry:
  %retval = alloca i32, align 4
  %subst.addr = alloca %struct.gs_subst_CID_on_WMode_s*, align 8
  %t.addr = alloca %struct.ref_s*, align 8
  %WMode.addr = alloca i32, align 4
  %r = alloca %struct.ref_s, align 8
  %a = alloca %struct.ref_s*, align 8
  %e = alloca %struct.ref_s, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %s = alloca i32*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_subst_CID_on_WMode_s* %subst, %struct.gs_subst_CID_on_WMode_s** %subst.addr, align 8, !tbaa !1
  store %struct.ref_s* %t, %struct.ref_s** %t.addr, align 8, !tbaa !1
  store i32 %WMode, i32* %WMode.addr, align 4, !tbaa !19
  %0 = bitcast %struct.ref_s* %r to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = bitcast %struct.ref_s** %a to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.ref_s* %e to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #1
  %3 = load i32, i32* %WMode.addr, align 4, !tbaa !19
  %conv = sext i32 %3 to i64
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %r, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  store i64 %conv, i64* %intval, align 8, !tbaa !24
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %r, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 2816, i16* %type_attrs, align 2, !tbaa !20
  %4 = load %struct.ref_s*, %struct.ref_s** %t.addr, align 8, !tbaa !1
  %call = call i32 @dict_find(%struct.ref_s* %4, %struct.ref_s* %r, %struct.ref_s** %a) #3
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.38

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.ref_s*, %struct.ref_s** %a, align 8, !tbaa !1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %6 = bitcast i16* %type_attrs3 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !27
  %conv4 = zext i8 %7 to i32
  %cmp5 = icmp eq i32 %conv4, 4
  br i1 %cmp5, label %if.then, label %if.end.38

if.then:                                          ; preds = %land.lhs.true
  %8 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.ref_s*, %struct.ref_s** %a, align 8, !tbaa !1
  %tas7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas7, i32 0, i32 2
  %10 = load i32, i32* %rsize, align 4, !tbaa !54
  store i32 %10, i32* %n, align 4, !tbaa !19
  %11 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %subst.addr, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gs_subst_CID_on_WMode_s, %struct.gs_subst_CID_on_WMode_s* %13, i32 0, i32 0
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 1
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !65
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %14, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %15 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !91
  %16 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %subst.addr, align 8, !tbaa !1
  %rc8 = getelementptr inbounds %struct.gs_subst_CID_on_WMode_s, %struct.gs_subst_CID_on_WMode_s* %16, i32 0, i32 0
  %memory9 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc8, i32 0, i32 1
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory9, align 8, !tbaa !65
  %18 = load i32, i32* %n, align 4, !tbaa !19
  %call10 = call i8* %15(%struct.gs_memory_s* %17, i32 %18, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0)) #3
  %19 = bitcast i8* %call10 to i32*
  store i32* %19, i32** %s, align 8, !tbaa !1
  %20 = load i32*, i32** %s, align 8, !tbaa !1
  %cmp11 = icmp eq i32* %20, null
  br i1 %cmp11, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.then
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %21 = load i32, i32* %i, align 4, !tbaa !19
  %22 = load i32, i32* %n, align 4, !tbaa !19
  %cmp14 = icmp slt i32 %21, %22
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %subst.addr, align 8, !tbaa !1
  %rc16 = getelementptr inbounds %struct.gs_subst_CID_on_WMode_s, %struct.gs_subst_CID_on_WMode_s* %23, i32 0, i32 0
  %memory17 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc16, i32 0, i32 1
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory17, align 8, !tbaa !65
  %25 = load %struct.ref_s*, %struct.ref_s** %a, align 8, !tbaa !1
  %26 = load i32, i32* %i, align 4, !tbaa !19
  %conv18 = sext i32 %26 to i64
  %call19 = call i32 @array_get(%struct.gs_memory_s* %24, %struct.ref_s* %25, i64 %conv18, %struct.ref_s* %e) #3
  %tas20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %e, i32 0, i32 0
  %type_attrs21 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas20, i32 0, i32 0
  %27 = bitcast i16* %type_attrs21 to i8*
  %arrayidx22 = getelementptr inbounds i8, i8* %27, i64 1
  %28 = load i8, i8* %arrayidx22, align 1, !tbaa !27
  %conv23 = zext i8 %28 to i32
  %cmp24 = icmp ne i32 %conv23, 11
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %for.body
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %for.body
  %value28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %e, i32 0, i32 1
  %intval29 = bitcast %union.v* %value28 to i64*
  %29 = load i64, i64* %intval29, align 8, !tbaa !24
  %conv30 = trunc i64 %29 to i32
  %30 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom = sext i32 %30 to i64
  %31 = load i32*, i32** %s, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i32, i32* %31, i64 %idxprom
  store i32 %conv30, i32* %arrayidx31, align 4, !tbaa !19
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %32 = load i32, i32* %i, align 4, !tbaa !19
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load i32*, i32** %s, align 8, !tbaa !1
  %34 = load i32, i32* %WMode.addr, align 4, !tbaa !19
  %idxprom32 = sext i32 %34 to i64
  %35 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %subst.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_subst_CID_on_WMode_s, %struct.gs_subst_CID_on_WMode_s* %35, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [2 x i32*], [2 x i32*]* %data, i32 0, i64 %idxprom32
  store i32* %33, i32** %arrayidx33, align 8, !tbaa !1
  %36 = load i32, i32* %n, align 4, !tbaa !19
  %37 = load i32, i32* %WMode.addr, align 4, !tbaa !19
  %idxprom34 = sext i32 %37 to i64
  %38 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %subst.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_subst_CID_on_WMode_s, %struct.gs_subst_CID_on_WMode_s* %38, i32 0, i32 2
  %arrayidx35 = getelementptr inbounds [2 x i32], [2 x i32]* %size, i32 0, i64 %idxprom34
  store i32 %36, i32* %arrayidx35, align 4, !tbaa !19
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.26, %if.then.13
  %39 = bitcast i32** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.39 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.38

if.end.38:                                        ; preds = %cleanup.cont, %land.lhs.true, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.39

cleanup.39:                                       ; preds = %if.end.38, %cleanup
  %42 = bitcast %struct.ref_s* %e to i8*
  call void @llvm.lifetime.end(i64 16, i8* %42) #1
  %43 = bitcast %struct.ref_s** %a to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = bitcast %struct.ref_s* %r to i8*
  call void @llvm.lifetime.end(i64 16, i8* %44) #1
  %45 = load i32, i32* %retval
  ret i32 %45
}

declare i32 @gs_font_notify_register(%struct.gs_font_s*, i32 (i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @release_subst_CID_on_WMode(i8* %data, i8* %event) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %event.addr = alloca i8*, align 8
  %pfcid = alloca %struct.gs_font_cid2_s*, align 8
  %subst = alloca %struct.gs_subst_CID_on_WMode_s*, align 8
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i8* %event, i8** %event.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_cid2_s** %pfcid to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_font_cid2_s*
  store %struct.gs_font_cid2_s* %2, %struct.gs_font_cid2_s** %pfcid, align 8, !tbaa !1
  %3 = bitcast %struct.gs_subst_CID_on_WMode_s** %subst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfcid, align 8, !tbaa !1
  %subst_CID_on_WMode = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %4, i32 0, i32 31
  %5 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %subst_CID_on_WMode, align 8, !tbaa !45
  store %struct.gs_subst_CID_on_WMode_s* %5, %struct.gs_subst_CID_on_WMode_s** %subst, align 8, !tbaa !1
  %6 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfcid, align 8, !tbaa !1
  %7 = bitcast %struct.gs_font_cid2_s* %6 to %struct.gs_font_s*
  %8 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %call = call i32 @gs_font_notify_unregister(%struct.gs_font_s* %7, i32 (i8*, i8*)* @release_subst_CID_on_WMode, i8* %8) #3
  %9 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfcid, align 8, !tbaa !1
  %subst_CID_on_WMode1 = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %9, i32 0, i32 31
  store %struct.gs_subst_CID_on_WMode_s* null, %struct.gs_subst_CID_on_WMode_s** %subst_CID_on_WMode1, align 8, !tbaa !45
  br label %do.body

do.body:                                          ; preds = %entry
  %10 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %subst, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_subst_CID_on_WMode_s* %10, null
  br i1 %tobool, label %if.then, label %if.end.21

if.then:                                          ; preds = %do.body
  br label %do.body.2

do.body.2:                                        ; preds = %if.then
  br label %do.body.3

do.body.3:                                        ; preds = %do.body.2
  br label %do.cond

do.cond:                                          ; preds = %do.body.3
  br label %do.end

do.end:                                           ; preds = %do.cond
  %11 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %subst, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gs_subst_CID_on_WMode_s, %struct.gs_subst_CID_on_WMode_s* %11, i32 0, i32 0
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %12 = load i64, i64* %ref_count, align 8, !tbaa !62
  %add = add nsw i64 %12, -2
  store i64 %add, i64* %ref_count, align 8, !tbaa !62
  br label %do.cond.4

do.cond.4:                                        ; preds = %do.end
  br label %do.end.5

do.end.5:                                         ; preds = %do.cond.4
  %13 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %subst, align 8, !tbaa !1
  %rc6 = getelementptr inbounds %struct.gs_subst_CID_on_WMode_s, %struct.gs_subst_CID_on_WMode_s* %13, i32 0, i32 0
  %ref_count7 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc6, i32 0, i32 0
  %14 = load i64, i64* %ref_count7, align 8, !tbaa !62
  %tobool8 = icmp ne i64 %14, 0
  br i1 %tobool8, label %if.else, label %if.then.9

if.then.9:                                        ; preds = %do.end.5
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.9
  br label %do.body.11

do.body.11:                                       ; preds = %do.body.10
  br label %do.cond.12

do.cond.12:                                       ; preds = %do.body.11
  br label %do.end.13

do.end.13:                                        ; preds = %do.cond.12
  %15 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %subst, align 8, !tbaa !1
  %rc14 = getelementptr inbounds %struct.gs_subst_CID_on_WMode_s, %struct.gs_subst_CID_on_WMode_s* %15, i32 0, i32 0
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc14, i32 0, i32 2
  %16 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !66
  %17 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %subst, align 8, !tbaa !1
  %rc15 = getelementptr inbounds %struct.gs_subst_CID_on_WMode_s, %struct.gs_subst_CID_on_WMode_s* %17, i32 0, i32 0
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc15, i32 0, i32 1
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !65
  %19 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %subst, align 8, !tbaa !1
  %20 = bitcast %struct.gs_subst_CID_on_WMode_s* %19 to i8*
  call void %16(%struct.gs_memory_s* %18, i8* %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0)) #3
  br label %do.cond.16

do.cond.16:                                       ; preds = %do.end.13
  br label %do.end.17

do.end.17:                                        ; preds = %do.cond.16
  store %struct.gs_subst_CID_on_WMode_s* null, %struct.gs_subst_CID_on_WMode_s** %subst, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %do.end.5
  br label %do.body.18

do.body.18:                                       ; preds = %if.else
  br label %do.cond.19

do.cond.19:                                       ; preds = %do.body.18
  br label %do.end.20

do.end.20:                                        ; preds = %do.cond.19
  br label %if.end

if.end:                                           ; preds = %do.end.20, %do.end.17
  br label %if.end.21

if.end.21:                                        ; preds = %if.end, %do.body
  br label %do.cond.22

do.cond.22:                                       ; preds = %if.end.21
  br label %do.end.23

do.end.23:                                        ; preds = %do.cond.22
  %21 = bitcast %struct.gs_subst_CID_on_WMode_s** %subst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = bitcast %struct.gs_font_cid2_s** %pfcid to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @z11_CIDMap_proc(%struct.gs_font_cid2_s* %pfont, i64 %glyph) #0 {
entry:
  %retval = alloca i32, align 4
  %pfont.addr = alloca %struct.gs_font_cid2_s*, align 8
  %glyph.addr = alloca i64, align 8
  %pcidmap = alloca %struct.ref_s*, align 8
  %cid = alloca i64, align 8
  %gdbytes = alloca i32, align 4
  %gnum = alloca i32, align 4
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %rcid = alloca %struct.ref_s, align 8
  %prgnum = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_cid2_s* %pfont, %struct.gs_font_cid2_s** %pfont.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !24
  %0 = bitcast %struct.ref_s** %pcidmap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfont.addr, align 8, !tbaa !1
  %client_data = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %1, i32 0, i32 8
  %2 = load i8*, i8** %client_data, align 8, !tbaa !92
  %3 = bitcast i8* %2 to %struct.font_data_s*
  %u = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %3, i32 0, i32 6
  %type42 = bitcast %union._fs* %u to %struct._f42*
  %CIDMap = getelementptr inbounds %struct._f42, %struct._f42* %type42, i32 0, i32 1
  store %struct.ref_s* %CIDMap, %struct.ref_s** %pcidmap, align 8, !tbaa !1
  %4 = bitcast i64* %cid to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i64, i64* %glyph.addr, align 8, !tbaa !24
  %sub = sub i64 %5, 2147483648
  store i64 %sub, i64* %cid, align 8, !tbaa !24
  %6 = bitcast i32* %gdbytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfont.addr, align 8, !tbaa !1
  %cidata = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %7, i32 0, i32 30
  %common = getelementptr inbounds %struct.gs_font_cid2_data_s, %struct.gs_font_cid2_data_s* %cidata, i32 0, i32 0
  %GDBytes = getelementptr inbounds %struct.gs_font_cid_data_s, %struct.gs_font_cid_data_s* %common, i32 0, i32 3
  %8 = load i32, i32* %GDBytes, align 4, !tbaa !93
  store i32 %8, i32* %gdbytes, align 4, !tbaa !19
  %9 = bitcast i32* %gnum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 0, i32* %gnum, align 4, !tbaa !19
  %10 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast %struct.ref_s* %rcid to i8*
  call void @llvm.lifetime.start(i64 16, i8* %13) #1
  %14 = bitcast %struct.ref_s** %prgnum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = load %struct.ref_s*, %struct.ref_s** %pcidmap, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %16 = bitcast i16* %type_attrs to i8*
  %arrayidx = getelementptr inbounds i8, i8* %16, i64 1
  %17 = load i8, i8* %arrayidx, align 1, !tbaa !27
  %conv = zext i8 %17 to i32
  switch i32 %conv, label %sw.default [
    i32 18, label %sw.bb
    i32 11, label %sw.bb.5
    i32 2, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %entry
  %18 = load i64, i64* %cid, align 8, !tbaa !24
  %19 = load %struct.ref_s*, %struct.ref_s** %pcidmap, align 8, !tbaa !1
  %tas1 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas1, i32 0, i32 2
  %20 = load i32, i32* %rsize, align 4, !tbaa !54
  %21 = load i32, i32* %gdbytes, align 4, !tbaa !19
  %div = udiv i32 %20, %21
  %conv2 = zext i32 %div to i64
  %cmp = icmp uge i64 %18, %conv2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %22 = load %struct.ref_s*, %struct.ref_s** %pcidmap, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 1
  %const_bytes = bitcast %union.v* %value to i8**
  %23 = load i8*, i8** %const_bytes, align 8, !tbaa !1
  %24 = load i64, i64* %cid, align 8, !tbaa !24
  %25 = load i32, i32* %gdbytes, align 4, !tbaa !19
  %conv4 = sext i32 %25 to i64
  %mul = mul i64 %24, %conv4
  %add.ptr = getelementptr inbounds i8, i8* %23, i64 %mul
  store i8* %add.ptr, i8** %data, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %26 = load i64, i64* %cid, align 8, !tbaa !24
  %27 = load %struct.ref_s*, %struct.ref_s** %pcidmap, align 8, !tbaa !1
  %value6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 1
  %intval = bitcast %union.v* %value6 to i64*
  %28 = load i64, i64* %intval, align 8, !tbaa !24
  %add = add i64 %26, %28
  %conv7 = trunc i64 %add to i32
  store i32 %conv7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.8:                                          ; preds = %entry
  %29 = load i64, i64* %cid, align 8, !tbaa !24
  %value9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rcid, i32 0, i32 1
  %intval10 = bitcast %union.v* %value9 to i64*
  store i64 %29, i64* %intval10, align 8, !tbaa !24
  %tas11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %rcid, i32 0, i32 0
  %type_attrs12 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas11, i32 0, i32 0
  store i16 2816, i16* %type_attrs12, align 2, !tbaa !20
  %30 = load %struct.ref_s*, %struct.ref_s** %pcidmap, align 8, !tbaa !1
  %call = call i32 @dict_find(%struct.ref_s* %30, %struct.ref_s* %rcid, %struct.ref_s** %prgnum) #3
  store i32 %call, i32* %code, align 4, !tbaa !19
  %31 = load i32, i32* %code, align 4, !tbaa !19
  %cmp13 = icmp sle i32 %31, 0
  br i1 %cmp13, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %sw.bb.8
  %32 = load i32, i32* %code, align 4, !tbaa !19
  %cmp16 = icmp slt i32 %32, 0
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.15
  %33 = load i32, i32* %code, align 4, !tbaa !19
  br label %cond.end

cond.false:                                       ; preds = %if.then.15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %33, %cond.true ], [ -21, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %sw.bb.8
  %34 = load %struct.ref_s*, %struct.ref_s** %prgnum, align 8, !tbaa !1
  %tas19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 0, i32 0
  %type_attrs20 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas19, i32 0, i32 0
  %35 = bitcast i16* %type_attrs20 to i8*
  %arrayidx21 = getelementptr inbounds i8, i8* %35, i64 1
  %36 = load i8, i8* %arrayidx21, align 1, !tbaa !27
  %conv22 = zext i8 %36 to i32
  %cmp23 = icmp eq i32 %conv22, 11
  br i1 %cmp23, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %if.end.18
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %if.end.18
  %37 = load %struct.ref_s*, %struct.ref_s** %prgnum, align 8, !tbaa !1
  %value27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i32 0, i32 1
  %intval28 = bitcast %union.v* %value27 to i64*
  %38 = load i64, i64* %intval28, align 8, !tbaa !24
  %conv29 = trunc i64 %38 to i32
  store i32 %conv29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %entry
  %39 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfont.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %39, i32 0, i32 2
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !58
  %41 = load %struct.ref_s*, %struct.ref_s** %pcidmap, align 8, !tbaa !1
  %42 = load i64, i64* %cid, align 8, !tbaa !24
  %43 = load i32, i32* %gdbytes, align 4, !tbaa !19
  %conv30 = sext i32 %43 to i64
  %mul31 = mul i64 %42, %conv30
  %44 = load i32, i32* %gdbytes, align 4, !tbaa !19
  %call32 = call i32 @string_array_access_proc(%struct.gs_memory_s* %40, %struct.ref_s* %41, i32 1, i64 %mul31, i32 %44, i32* null, i64* null, i8** %data) #3
  store i32 %call32, i32* %code, align 4, !tbaa !19
  %45 = load i32, i32* %code, align 4, !tbaa !19
  %cmp33 = icmp slt i32 %45, 0
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %sw.default
  %46 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %46, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.36:                                        ; preds = %sw.default
  %47 = load i32, i32* %code, align 4, !tbaa !19
  %cmp37 = icmp sgt i32 %47, 0
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.36
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.40:                                        ; preds = %if.end.36
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.40, %if.end
  store i32 0, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %48 = load i32, i32* %i, align 4, !tbaa !19
  %49 = load i32, i32* %gdbytes, align 4, !tbaa !19
  %cmp41 = icmp slt i32 %48, %49
  br i1 %cmp41, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %50 = load i32, i32* %gnum, align 4, !tbaa !19
  %shl = shl i32 %50, 8
  %51 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom = sext i32 %51 to i64
  %52 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx43 = getelementptr inbounds i8, i8* %52, i64 %idxprom
  %53 = load i8, i8* %arrayidx43, align 1, !tbaa !27
  %conv44 = zext i8 %53 to i32
  %add45 = add nsw i32 %shl, %conv44
  store i32 %add45, i32* %gnum, align 4, !tbaa !19
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %54 = load i32, i32* %i, align 4, !tbaa !19
  %inc = add nsw i32 %54, 1
  store i32 %inc, i32* %i, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %55 = load i32, i32* %gnum, align 4, !tbaa !19
  %56 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfont.addr, align 8, !tbaa !1
  %data46 = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %56, i32 0, i32 29
  %trueNumGlyphs = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data46, i32 0, i32 15
  %57 = load i32, i32* %trueNumGlyphs, align 4, !tbaa !94
  %cmp47 = icmp uge i32 %55, %57
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %for.end
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.50:                                        ; preds = %for.end
  %58 = load i32, i32* %gnum, align 4, !tbaa !19
  store i32 %58, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.50, %if.then.49, %if.then.39, %if.then.35, %if.end.26, %if.then.25, %cond.end, %sw.bb.5, %if.then
  %59 = bitcast %struct.ref_s** %prgnum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = bitcast %struct.ref_s* %rcid to i8*
  call void @llvm.lifetime.end(i64 16, i8* %60) #1
  %61 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %64 = bitcast i32* %gnum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast i32* %gdbytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast i64* %cid to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = bitcast %struct.ref_s** %pcidmap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = load i32, i32* %retval
  ret i32 %68
}

; Function Attrs: nounwind uwtable
define internal i32 @font11_substitute_glyph_index_vertical(%struct.gs_font_type42_s* %pfont, i32 %glyph_index, i32 %WMode, i64 %glyph) #0 {
entry:
  %pfont.addr = alloca %struct.gs_font_type42_s*, align 8
  %glyph_index.addr = alloca i32, align 4
  %WMode.addr = alloca i32, align 4
  %glyph.addr = alloca i64, align 8
  %pfcid = alloca %struct.gs_font_cid2_s*, align 8
  %cid = alloca i32, align 4
  %WMode1 = alloca i32, align 4
  %s = alloca %struct.gs_subst_CID_on_WMode_s*, align 8
  %subst = alloca i32*, align 8
  %bi = alloca i32, align 4
  %ei = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.gs_font_type42_s* %pfont, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  store i32 %glyph_index, i32* %glyph_index.addr, align 4, !tbaa !19
  store i32 %WMode, i32* %WMode.addr, align 4, !tbaa !19
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !24
  %0 = bitcast %struct.gs_font_cid2_s** %pfcid to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_font_type42_s* %1 to %struct.gs_font_cid2_s*
  store %struct.gs_font_cid2_s* %2, %struct.gs_font_cid2_s** %pfcid, align 8, !tbaa !1
  %3 = bitcast i32* %cid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i64, i64* %glyph.addr, align 8, !tbaa !24
  %cmp = icmp uge i64 %4, 2147483648
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load i64, i64* %glyph.addr, align 8, !tbaa !24
  %sub = sub i64 %5, 2147483648
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load i64, i64* %glyph.addr, align 8, !tbaa !24
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ %6, %cond.false ]
  %conv = trunc i64 %cond to i32
  store i32 %conv, i32* %cid, align 4, !tbaa !19
  %7 = bitcast i32* %WMode1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i32, i32* %WMode.addr, align 4, !tbaa !19
  %tobool = icmp ne i32 %8, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %WMode1, align 4, !tbaa !19
  %9 = bitcast %struct.gs_subst_CID_on_WMode_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfcid, align 8, !tbaa !1
  %subst_CID_on_WMode = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %10, i32 0, i32 31
  %11 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %subst_CID_on_WMode, align 8, !tbaa !45
  store %struct.gs_subst_CID_on_WMode_s* %11, %struct.gs_subst_CID_on_WMode_s** %s, align 8, !tbaa !1
  %12 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %s, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.gs_subst_CID_on_WMode_s* %12, null
  br i1 %cmp1, label %if.then, label %if.end.26

if.then:                                          ; preds = %cond.end
  %13 = bitcast i32** %subst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load i32, i32* %WMode1, align 4, !tbaa !19
  %idxprom = sext i32 %14 to i64
  %15 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %s, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_subst_CID_on_WMode_s, %struct.gs_subst_CID_on_WMode_s* %15, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x i32*], [2 x i32*]* %data, i32 0, i64 %idxprom
  %16 = load i32*, i32** %arrayidx, align 8, !tbaa !1
  store i32* %16, i32** %subst, align 8, !tbaa !1
  %17 = bitcast i32* %bi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i32* %ei to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  store i32 0, i32* %bi, align 4, !tbaa !19
  %20 = load i32, i32* %WMode1, align 4, !tbaa !19
  %idxprom3 = sext i32 %20 to i64
  %21 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfcid, align 8, !tbaa !1
  %subst_CID_on_WMode4 = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %21, i32 0, i32 31
  %22 = load %struct.gs_subst_CID_on_WMode_s*, %struct.gs_subst_CID_on_WMode_s** %subst_CID_on_WMode4, align 8, !tbaa !45
  %size = getelementptr inbounds %struct.gs_subst_CID_on_WMode_s, %struct.gs_subst_CID_on_WMode_s* %22, i32 0, i32 2
  %arrayidx5 = getelementptr inbounds [2 x i32], [2 x i32]* %size, i32 0, i64 %idxprom3
  %23 = load i32, i32* %arrayidx5, align 4, !tbaa !19
  store i32 %23, i32* %ei, align 4, !tbaa !19
  %24 = load i32, i32* %ei, align 4, !tbaa !19
  %cmp6 = icmp sgt i32 %24, 0
  br i1 %cmp6, label %if.then.8, label %if.end.25

if.then.8:                                        ; preds = %if.then
  br label %for.cond

for.cond:                                         ; preds = %if.end.24, %if.then.8
  %25 = load i32, i32* %bi, align 4, !tbaa !19
  %26 = load i32, i32* %ei, align 4, !tbaa !19
  %add = add nsw i32 %25, %26
  %div = sdiv i32 %add, 2
  %and = and i32 %div, -2
  store i32 %and, i32* %i, align 4, !tbaa !19
  %27 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom9 = sext i32 %27 to i64
  %28 = load i32*, i32** %subst, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i32, i32* %28, i64 %idxprom9
  %29 = load i32, i32* %arrayidx10, align 4, !tbaa !19
  %30 = load i32, i32* %cid, align 4, !tbaa !19
  %cmp11 = icmp eq i32 %29, %30
  br i1 %cmp11, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %for.cond
  %31 = load i32, i32* %WMode1, align 4, !tbaa !19
  store i32 %31, i32* %WMode.addr, align 4, !tbaa !19
  br label %for.end

if.end:                                           ; preds = %for.cond
  %32 = load i32, i32* %bi, align 4, !tbaa !19
  %add14 = add nsw i32 %32, 2
  %33 = load i32, i32* %ei, align 4, !tbaa !19
  %cmp15 = icmp sge i32 %add14, %33
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end
  br label %for.end

if.end.18:                                        ; preds = %if.end
  %34 = load i32, i32* %i, align 4, !tbaa !19
  %idxprom19 = sext i32 %34 to i64
  %35 = load i32*, i32** %subst, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds i32, i32* %35, i64 %idxprom19
  %36 = load i32, i32* %arrayidx20, align 4, !tbaa !19
  %37 = load i32, i32* %cid, align 4, !tbaa !19
  %cmp21 = icmp ugt i32 %36, %37
  br i1 %cmp21, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.end.18
  %38 = load i32, i32* %i, align 4, !tbaa !19
  store i32 %38, i32* %ei, align 4, !tbaa !19
  br label %if.end.24

if.else:                                          ; preds = %if.end.18
  %39 = load i32, i32* %i, align 4, !tbaa !19
  store i32 %39, i32* %bi, align 4, !tbaa !19
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %if.then.23
  br label %for.cond

for.end:                                          ; preds = %if.then.17, %if.then.13
  br label %if.end.25

if.end.25:                                        ; preds = %for.end, %if.then
  %40 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast i32* %ei to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = bitcast i32* %bi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast i32** %subst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %cond.end
  %44 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %45 = load i32, i32* %glyph_index.addr, align 4, !tbaa !19
  %46 = load i32, i32* %WMode.addr, align 4, !tbaa !19
  %47 = load i64, i64* %glyph.addr, align 8, !tbaa !24
  %call = call i32 @gs_type42_substitute_glyph_index_vertical(%struct.gs_font_type42_s* %44, i32 %45, i32 %46, i64 %47) #3
  %48 = bitcast %struct.gs_subst_CID_on_WMode_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = bitcast i32* %WMode1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast i32* %cid to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = bitcast %struct.gs_font_cid2_s** %pfcid to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @z11_enumerate_glyph(%struct.gs_font_s* %font, i32* %pindex, i32 %glyph_space, i64* %pglyph) #0 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_s*, align 8
  %pindex.addr = alloca i32*, align 8
  %glyph_space.addr = alloca i32, align 4
  %pglyph.addr = alloca i64*, align 8
  %pfont = alloca %struct.gs_font_cid2_s*, align 8
  %code0 = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i32* %pindex, i32** %pindex.addr, align 8, !tbaa !1
  store i32 %glyph_space, i32* %glyph_space.addr, align 4, !tbaa !27
  store i64* %pglyph, i64** %pglyph.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_cid2_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_font_s* %1 to %struct.gs_font_cid2_s*
  store %struct.gs_font_cid2_s* %2, %struct.gs_font_cid2_s** %pfont, align 8, !tbaa !1
  %3 = bitcast i32* %code0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfont, align 8, !tbaa !1
  %call = call i32 @z11_CIDMap_proc(%struct.gs_font_cid2_s* %4, i64 2147483648) #3
  store i32 %call, i32* %code0, align 4, !tbaa !19
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  %7 = load i32, i32* %6, align 4, !tbaa !19
  %8 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfont, align 8, !tbaa !1
  %cidata = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %8, i32 0, i32 30
  %common = getelementptr inbounds %struct.gs_font_cid2_data_s, %struct.gs_font_cid2_data_s* %cidata, i32 0, i32 0
  %CIDCount = getelementptr inbounds %struct.gs_font_cid_data_s, %struct.gs_font_cid_data_s* %common, i32 0, i32 1
  %9 = load i32, i32* %CIDCount, align 4, !tbaa !95
  %cmp = icmp sgt i32 %7, %9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %if.end.11, %if.end
  %10 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfont, align 8, !tbaa !1
  %11 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  %12 = load i32, i32* %11, align 4, !tbaa !19
  %conv = sext i32 %12 to i64
  %add = add i64 2147483648, %conv
  %call1 = call i32 @z11_CIDMap_proc(%struct.gs_font_cid2_s* %10, i64 %add) #3
  store i32 %call1, i32* %code, align 4, !tbaa !19
  %13 = load i32, i32* %code, align 4, !tbaa !19
  %cmp2 = icmp slt i32 %13, 0
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %for.cond
  %14 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  store i32 0, i32* %14, align 4, !tbaa !19
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %for.cond
  %15 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  %16 = load i32, i32* %15, align 4, !tbaa !19
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %15, align 4, !tbaa !19
  %17 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  %18 = load i32, i32* %17, align 4, !tbaa !19
  %cmp6 = icmp eq i32 %18, 1
  br i1 %cmp6, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.5
  %19 = load i32, i32* %code, align 4, !tbaa !19
  %20 = load i32, i32* %code0, align 4, !tbaa !19
  %cmp8 = icmp ne i32 %19, %20
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %lor.lhs.false, %if.end.5
  br label %for.end

if.end.11:                                        ; preds = %lor.lhs.false
  br label %for.cond

for.end:                                          ; preds = %if.then.10
  %21 = load i32, i32* %glyph_space.addr, align 4, !tbaa !27
  %cmp12 = icmp eq i32 %21, 1
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %for.end
  %22 = load i32, i32* %code, align 4, !tbaa !19
  %conv15 = zext i32 %22 to i64
  %add16 = add i64 3221225472, %conv15
  %23 = load i64*, i64** %pglyph.addr, align 8, !tbaa !1
  store i64 %add16, i64* %23, align 8, !tbaa !24
  br label %if.end.19

if.else:                                          ; preds = %for.end
  %24 = load i32*, i32** %pindex.addr, align 8, !tbaa !1
  %25 = load i32, i32* %24, align 4, !tbaa !19
  %sub = sub nsw i32 %25, 1
  %conv17 = zext i32 %sub to i64
  %add18 = add i64 2147483648, %conv17
  %26 = load i64*, i64** %pglyph.addr, align 8, !tbaa !1
  store i64 %add18, i64* %26, align 8, !tbaa !24
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.14
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.19, %if.then.4, %if.then
  %27 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = bitcast i32* %code0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast %struct.gs_font_cid2_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal i32 @z11_glyph_info(%struct.gs_font_s* %font, i64 %glyph, %struct.gs_matrix_s* %pmat, i32 %members, %struct.gs_glyph_info_s* %info) #0 {
entry:
  %font.addr = alloca %struct.gs_font_s*, align 8
  %glyph.addr = alloca i64, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %members.addr = alloca i32, align 4
  %info.addr = alloca %struct.gs_glyph_info_s*, align 8
  %wmode = alloca i32, align 4
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !24
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
  %3 = load i64, i64* %glyph.addr, align 8, !tbaa !24
  %4 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %5 = load i32, i32* %members.addr, align 4, !tbaa !19
  %6 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %7 = load i32, i32* %wmode, align 4, !tbaa !19
  %call = call i32 @z1_glyph_info_generic(%struct.gs_font_s* %2, i64 %3, %struct.gs_matrix_s* %4, i32 %5, %struct.gs_glyph_info_s* %6, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)* @z11_glyph_info_aux, i32 %7) #3
  %8 = bitcast i32* %wmode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @z11_glyph_outline(%struct.gs_font_s* %font, i32 %WMode, i64 %glyph, %struct.gs_matrix_s* %pmat, %struct.gx_path_s* %ppath, double* %sbw) #0 {
entry:
  %font.addr = alloca %struct.gs_font_s*, align 8
  %WMode.addr = alloca i32, align 4
  %glyph.addr = alloca i64, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %sbw.addr = alloca double*, align 8
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i32 %WMode, i32* %WMode.addr, align 4, !tbaa !19
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !24
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store double* %sbw, double** %sbw.addr, align 8, !tbaa !1
  %0 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %1 = load i32, i32* %WMode.addr, align 4, !tbaa !19
  %2 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gs_font_s* %2 to %struct.gs_font_type42_s*
  %4 = load i64, i64* %glyph.addr, align 8, !tbaa !24
  %call = call i32 @z11_get_glyph_index(%struct.gs_font_type42_s* %3, i64 %4) #3
  %conv = zext i32 %call to i64
  %add = add i64 %conv, 3221225472
  %5 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %6 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %7 = load double*, double** %sbw.addr, align 8, !tbaa !1
  %call1 = call i32 @gs_type42_glyph_outline(%struct.gs_font_s* %0, i32 %1, i64 %add, %struct.gs_matrix_s* %5, %struct.gx_path_s* %6, double* %7) #3
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define internal i32 @z11_get_glyph_index(%struct.gs_font_type42_s* %pfont, i64 %glyph) #0 {
entry:
  %pfont.addr = alloca %struct.gs_font_type42_s*, align 8
  %glyph.addr = alloca i64, align 8
  %code = alloca i32, align 4
  store %struct.gs_font_type42_s* %pfont, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !24
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_font_type42_s* %1 to %struct.gs_font_cid2_s*
  %3 = load i64, i64* %glyph.addr, align 8, !tbaa !24
  %call = call i32 @z11_CIDMap_proc(%struct.gs_font_cid2_s* %2, i64 %3) #3
  store i32 %call, i32* %code, align 4, !tbaa !19
  %4 = load i32, i32* %code, align 4, !tbaa !19
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load i32, i32* %code, align 4, !tbaa !19
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %5, %cond.false ]
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %6) #1
  ret i32 %cond
}

declare void @get_font_name(%struct.gs_memory_s*, %struct.ref_s*, %struct.ref_s*) #2

declare void @copy_font_name(%struct.gs_font_name_s*, %struct.ref_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @z11_get_outline(%struct.gs_font_type42_s* %pfont, i32 %glyph_index, %struct.gs_glyph_data_s* %pgd) #0 {
entry:
  %pfont.addr = alloca %struct.gs_font_type42_s*, align 8
  %glyph_index.addr = alloca i32, align 4
  %pgd.addr = alloca %struct.gs_glyph_data_s*, align 8
  %pfcid = alloca %struct.gs_font_cid2_s*, align 8
  %skip = alloca i32, align 4
  %code = alloca i32, align 4
  %size = alloca i32, align 4
  store %struct.gs_font_type42_s* %pfont, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  store i32 %glyph_index, i32* %glyph_index.addr, align 4, !tbaa !19
  store %struct.gs_glyph_data_s* %pgd, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_cid2_s** %pfcid to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_font_type42_s* %1 to %struct.gs_font_cid2_s*
  store %struct.gs_font_cid2_s* %2, %struct.gs_font_cid2_s** %pfcid, align 8, !tbaa !1
  %3 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfcid, align 8, !tbaa !1
  %cidata = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %4, i32 0, i32 30
  %MetricsCount = getelementptr inbounds %struct.gs_font_cid2_data_s, %struct.gs_font_cid2_data_s* %cidata, i32 0, i32 1
  %5 = load i32, i32* %MetricsCount, align 4, !tbaa !68
  %shl = shl i32 %5, 1
  store i32 %shl, i32* %skip, align 4, !tbaa !19
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfcid, align 8, !tbaa !1
  %cidata1 = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %7, i32 0, i32 30
  %orig_procs = getelementptr inbounds %struct.gs_font_cid2_data_s, %struct.gs_font_cid2_data_s* %cidata1, i32 0, i32 3
  %get_outline = getelementptr inbounds %struct.o_, %struct.o_* %orig_procs, i32 0, i32 0
  %8 = load i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)** %get_outline, align 8, !tbaa !79
  %9 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %10 = load i32, i32* %glyph_index.addr, align 4, !tbaa !19
  %11 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %call = call i32 %8(%struct.gs_font_type42_s* %9, i32 %10, %struct.gs_glyph_data_s* %11) #3
  store i32 %call, i32* %code, align 4, !tbaa !19
  %12 = load i32, i32* %code, align 4, !tbaa !19
  %cmp = icmp sge i32 %12, 0
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %13 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %bits = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %14, i32 0, i32 0
  %size2 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits, i32 0, i32 1
  %15 = load i32, i32* %size2, align 4, !tbaa !96
  store i32 %15, i32* %size, align 4, !tbaa !19
  %16 = load i32, i32* %size, align 4, !tbaa !19
  %17 = load i32, i32* %skip, align 4, !tbaa !19
  %cmp3 = icmp ule i32 %16, %17
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  %18 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  call void @gs_glyph_data_free(%struct.gs_glyph_data_s* %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0)) #3
  %19 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  call void @gs_glyph_data_from_null(%struct.gs_glyph_data_s* %19) #3
  br label %if.end

if.else:                                          ; preds = %if.then
  %20 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %21 = load i32, i32* %skip, align 4, !tbaa !19
  %22 = load i32, i32* %size, align 4, !tbaa !19
  %23 = load i32, i32* %skip, align 4, !tbaa !19
  %sub = sub i32 %22, %23
  %call5 = call i32 @gs_glyph_data_substring(%struct.gs_glyph_data_s* %20, i32 %21, i32 %sub) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  %24 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %25 = load i32, i32* %code, align 4, !tbaa !19
  %26 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = bitcast %struct.gs_font_cid2_s** %pfcid to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal i32 @z11_get_metrics(%struct.gs_font_type42_s* %pfont, i32 %glyph_index, i32 %options, float* %sbw) #0 {
entry:
  %retval = alloca i32, align 4
  %pfont.addr = alloca %struct.gs_font_type42_s*, align 8
  %glyph_index.addr = alloca i32, align 4
  %options.addr = alloca i32, align 4
  %sbw.addr = alloca float*, align 8
  %pfcid = alloca %struct.gs_font_cid2_s*, align 8
  %skip = alloca i32, align 4
  %gdata = alloca %struct.gs_glyph_data_s, align 8
  %pmetrics = alloca i8*, align 8
  %lsb = alloca i32, align 4
  %width = alloca i32, align 4
  %code = alloca i32, align 4
  %wmode = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %factor = alloca double, align 8
  store %struct.gs_font_type42_s* %pfont, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  store i32 %glyph_index, i32* %glyph_index.addr, align 4, !tbaa !19
  store i32 %options, i32* %options.addr, align 4, !tbaa !27
  store float* %sbw, float** %sbw.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_cid2_s** %pfcid to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_font_type42_s* %1 to %struct.gs_font_cid2_s*
  store %struct.gs_font_cid2_s* %2, %struct.gs_font_cid2_s** %pfcid, align 8, !tbaa !1
  %3 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfcid, align 8, !tbaa !1
  %cidata = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %4, i32 0, i32 30
  %MetricsCount = getelementptr inbounds %struct.gs_font_cid2_data_s, %struct.gs_font_cid2_data_s* %cidata, i32 0, i32 1
  %5 = load i32, i32* %MetricsCount, align 4, !tbaa !68
  %shl = shl i32 %5, 1
  store i32 %shl, i32* %skip, align 4, !tbaa !19
  %6 = bitcast %struct.gs_glyph_data_s* %gdata to i8*
  call void @llvm.lifetime.start(i64 48, i8* %6) #1
  %7 = bitcast i8** %pmetrics to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i32* %lsb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 0, i32* %code, align 4, !tbaa !19
  %11 = bitcast i32* %wmode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load i32, i32* %options.addr, align 4, !tbaa !27
  %and = and i32 %12, 1
  store i32 %and, i32* %wmode, align 4, !tbaa !19
  %13 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %13, i32 0, i32 2
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !99
  %memory1 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata, i32 0, i32 3
  store %struct.gs_memory_s* %14, %struct.gs_memory_s** %memory1, align 8, !tbaa !100
  %15 = load i32, i32* %wmode, align 4, !tbaa !19
  %16 = load i32, i32* %skip, align 4, !tbaa !19
  %shr = ashr i32 %16, 2
  %cmp = icmp sge i32 %15, %shr
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %17 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfcid, align 8, !tbaa !1
  %cidata2 = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %17, i32 0, i32 30
  %orig_procs = getelementptr inbounds %struct.gs_font_cid2_data_s, %struct.gs_font_cid2_data_s* %cidata2, i32 0, i32 3
  %get_outline = getelementptr inbounds %struct.o_, %struct.o_* %orig_procs, i32 0, i32 0
  %18 = load i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)** %get_outline, align 8, !tbaa !79
  %19 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %20 = load i32, i32* %glyph_index.addr, align 4, !tbaa !19
  %call = call i32 %18(%struct.gs_font_type42_s* %19, i32 %20, %struct.gs_glyph_data_s* %gdata) #3
  store i32 %call, i32* %code, align 4, !tbaa !19
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %bits = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata, i32 0, i32 0
  %size = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits, i32 0, i32 1
  %21 = load i32, i32* %size, align 4, !tbaa !96
  %22 = load i32, i32* %skip, align 4, !tbaa !19
  %cmp5 = icmp ult i32 %21, %22
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.4, %lor.lhs.false, %entry
  %23 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfcid, align 8, !tbaa !1
  %cidata6 = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %23, i32 0, i32 30
  %orig_procs7 = getelementptr inbounds %struct.gs_font_cid2_data_s, %struct.gs_font_cid2_data_s* %cidata6, i32 0, i32 3
  %get_metrics = getelementptr inbounds %struct.o_, %struct.o_* %orig_procs7, i32 0, i32 1
  %24 = load i32 (%struct.gs_font_type42_s*, i32, i32, float*)*, i32 (%struct.gs_font_type42_s*, i32, i32, float*)** %get_metrics, align 8, !tbaa !81
  %25 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %26 = load i32, i32* %glyph_index.addr, align 4, !tbaa !19
  %27 = load i32, i32* %options.addr, align 4, !tbaa !27
  %28 = load float*, float** %sbw.addr, align 8, !tbaa !1
  %call8 = call i32 %24(%struct.gs_font_type42_s* %25, i32 %26, i32 %27, float* %28) #3
  store i32 %call8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.4
  %29 = load i32, i32* %options.addr, align 4, !tbaa !27
  %and9 = and i32 %29, 6
  %tobool = icmp ne i32 %and9, 0
  br i1 %tobool, label %if.then.10, label %if.end.18

if.then.10:                                       ; preds = %if.end
  %30 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %pfcid, align 8, !tbaa !1
  %cidata11 = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %30, i32 0, i32 30
  %orig_procs12 = getelementptr inbounds %struct.gs_font_cid2_data_s, %struct.gs_font_cid2_data_s* %cidata11, i32 0, i32 3
  %get_metrics13 = getelementptr inbounds %struct.o_, %struct.o_* %orig_procs12, i32 0, i32 1
  %31 = load i32 (%struct.gs_font_type42_s*, i32, i32, float*)*, i32 (%struct.gs_font_type42_s*, i32, i32, float*)** %get_metrics13, align 8, !tbaa !81
  %32 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %33 = load i32, i32* %glyph_index.addr, align 4, !tbaa !19
  %34 = load float*, float** %sbw.addr, align 8, !tbaa !1
  %call14 = call i32 %31(%struct.gs_font_type42_s* %32, i32 %33, i32 2, float* %34) #3
  store i32 %call14, i32* %code, align 4, !tbaa !19
  %35 = load i32, i32* %code, align 4, !tbaa !19
  %cmp15 = icmp slt i32 %35, 0
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.then.10
  %36 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %36, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.then.10
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end
  %37 = load i32, i32* %options.addr, align 4, !tbaa !27
  %neg = xor i32 %37, -1
  %and19 = and i32 %neg, 2
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.66

if.then.21:                                       ; preds = %if.end.18
  %bits22 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata, i32 0, i32 0
  %data = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits22, i32 0, i32 0
  %38 = load i8*, i8** %data, align 8, !tbaa !101
  %39 = load i32, i32* %skip, align 4, !tbaa !19
  %idx.ext = sext i32 %39 to i64
  %add.ptr = getelementptr inbounds i8, i8* %38, i64 %idx.ext
  %add.ptr23 = getelementptr inbounds i8, i8* %add.ptr, i64 -4
  %40 = load i32, i32* %wmode, align 4, !tbaa !19
  %shl24 = shl i32 %40, 2
  %idx.ext25 = sext i32 %shl24 to i64
  %idx.neg = sub i64 0, %idx.ext25
  %add.ptr26 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg
  store i8* %add.ptr26, i8** %pmetrics, align 8, !tbaa !1
  %41 = load i8*, i8** %pmetrics, align 8, !tbaa !1
  %add.ptr27 = getelementptr inbounds i8, i8* %41, i64 2
  %arrayidx = getelementptr inbounds i8, i8* %add.ptr27, i64 0
  %42 = load i8, i8* %arrayidx, align 1, !tbaa !27
  %conv = zext i8 %42 to i32
  %shl28 = shl i32 %conv, 8
  %43 = load i8*, i8** %pmetrics, align 8, !tbaa !1
  %add.ptr29 = getelementptr inbounds i8, i8* %43, i64 2
  %arrayidx30 = getelementptr inbounds i8, i8* %add.ptr29, i64 1
  %44 = load i8, i8* %arrayidx30, align 1, !tbaa !27
  %conv31 = zext i8 %44 to i32
  %add = add i32 %shl28, %conv31
  %xor = xor i32 %add, 32768
  %sub = sub i32 %xor, 32768
  store i32 %sub, i32* %lsb, align 4, !tbaa !19
  %45 = load i8*, i8** %pmetrics, align 8, !tbaa !1
  %add.ptr32 = getelementptr inbounds i8, i8* %45, i64 0
  %arrayidx33 = getelementptr inbounds i8, i8* %add.ptr32, i64 0
  %46 = load i8, i8* %arrayidx33, align 1, !tbaa !27
  %conv34 = zext i8 %46 to i32
  %shl35 = shl i32 %conv34, 8
  %47 = load i8*, i8** %pmetrics, align 8, !tbaa !1
  %add.ptr36 = getelementptr inbounds i8, i8* %47, i64 0
  %arrayidx37 = getelementptr inbounds i8, i8* %add.ptr36, i64 1
  %48 = load i8, i8* %arrayidx37, align 1, !tbaa !27
  %conv38 = zext i8 %48 to i32
  %add39 = add i32 %shl35, %conv38
  store i32 %add39, i32* %width, align 4, !tbaa !19
  %49 = bitcast double* %factor to i8*
  call void @llvm.lifetime.start(i64 8, i8* %49) #1
  %50 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data40 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %50, i32 0, i32 29
  %unitsPerEm = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data40, i32 0, i32 8
  %51 = load i32, i32* %unitsPerEm, align 4, !tbaa !102
  %conv41 = uitofp i32 %51 to double
  %div = fdiv double 1.000000e+00, %conv41
  store double %div, double* %factor, align 8, !tbaa !103
  %52 = load i32, i32* %wmode, align 4, !tbaa !19
  %tobool42 = icmp ne i32 %52, 0
  br i1 %tobool42, label %if.then.43, label %if.else

if.then.43:                                       ; preds = %if.then.21
  %53 = load float*, float** %sbw.addr, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds float, float* %53, i64 0
  store float 0.000000e+00, float* %arrayidx44, align 4, !tbaa !25
  %54 = load i32, i32* %lsb, align 4, !tbaa !19
  %sub45 = sub nsw i32 0, %54
  %conv46 = sitofp i32 %sub45 to double
  %55 = load double, double* %factor, align 8, !tbaa !103
  %mul = fmul double %conv46, %55
  %conv47 = fptrunc double %mul to float
  %56 = load float*, float** %sbw.addr, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds float, float* %56, i64 1
  store float %conv47, float* %arrayidx48, align 4, !tbaa !25
  %57 = load float*, float** %sbw.addr, align 8, !tbaa !1
  %arrayidx49 = getelementptr inbounds float, float* %57, i64 2
  store float 0.000000e+00, float* %arrayidx49, align 4, !tbaa !25
  %58 = load i32, i32* %width, align 4, !tbaa !19
  %sub50 = sub nsw i32 0, %58
  %conv51 = sitofp i32 %sub50 to double
  %59 = load double, double* %factor, align 8, !tbaa !103
  %mul52 = fmul double %conv51, %59
  %conv53 = fptrunc double %mul52 to float
  %60 = load float*, float** %sbw.addr, align 8, !tbaa !1
  %arrayidx54 = getelementptr inbounds float, float* %60, i64 3
  store float %conv53, float* %arrayidx54, align 4, !tbaa !25
  br label %if.end.65

if.else:                                          ; preds = %if.then.21
  %61 = load i32, i32* %lsb, align 4, !tbaa !19
  %conv55 = sitofp i32 %61 to double
  %62 = load double, double* %factor, align 8, !tbaa !103
  %mul56 = fmul double %conv55, %62
  %conv57 = fptrunc double %mul56 to float
  %63 = load float*, float** %sbw.addr, align 8, !tbaa !1
  %arrayidx58 = getelementptr inbounds float, float* %63, i64 0
  store float %conv57, float* %arrayidx58, align 4, !tbaa !25
  %64 = load float*, float** %sbw.addr, align 8, !tbaa !1
  %arrayidx59 = getelementptr inbounds float, float* %64, i64 1
  store float 0.000000e+00, float* %arrayidx59, align 4, !tbaa !25
  %65 = load i32, i32* %width, align 4, !tbaa !19
  %conv60 = sitofp i32 %65 to double
  %66 = load double, double* %factor, align 8, !tbaa !103
  %mul61 = fmul double %conv60, %66
  %conv62 = fptrunc double %mul61 to float
  %67 = load float*, float** %sbw.addr, align 8, !tbaa !1
  %arrayidx63 = getelementptr inbounds float, float* %67, i64 2
  store float %conv62, float* %arrayidx63, align 4, !tbaa !25
  %68 = load float*, float** %sbw.addr, align 8, !tbaa !1
  %arrayidx64 = getelementptr inbounds float, float* %68, i64 3
  store float 0.000000e+00, float* %arrayidx64, align 4, !tbaa !25
  br label %if.end.65

if.end.65:                                        ; preds = %if.else, %if.then.43
  %69 = bitcast double* %factor to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.end.18
  call void @gs_glyph_data_free(%struct.gs_glyph_data_s* %gdata, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0)) #3
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.66, %if.then.16, %if.then
  %70 = bitcast i32* %wmode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  %71 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %72 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = bitcast i32* %lsb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = bitcast i8** %pmetrics to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  %75 = bitcast %struct.gs_glyph_data_s* %gdata to i8*
  call void @llvm.lifetime.end(i64 48, i8* %75) #1
  %76 = bitcast i32* %skip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %77 = bitcast %struct.gs_font_cid2_s** %pfcid to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %78 = load i32, i32* %retval
  ret i32 %78
}

declare i32 @file_switch_to_read(%struct.ref_s*) #2

declare i32 @gs_get_glyph_data_cached(%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*) #2

declare %struct.gs_glyph_cache_s* @gs_glyph_cache__alloc(%struct.gs_font_type42_s*, %struct.stream_s*, i32 (%struct.gs_font_type42_s*, %struct.stream_s*, i32, %struct.gs_glyph_data_s*)*) #2

declare i32 @gs_type42_get_outline_from_TT_file(%struct.gs_font_type42_s*, %struct.stream_s*, i32, %struct.gs_glyph_data_s*) #2

declare i32 @dict_find(%struct.ref_s*, %struct.ref_s*, %struct.ref_s**) #2

declare i32 @gs_font_notify_unregister(%struct.gs_font_s*, i32 (i8*, i8*)*, i8*) #2

declare i32 @string_array_access_proc(%struct.gs_memory_s*, %struct.ref_s*, i32, i64, i32, i32*, i64*, i8**) #2

declare i32 @gs_type42_substitute_glyph_index_vertical(%struct.gs_font_type42_s*, i32, i32, i64) #2

declare i32 @z1_glyph_info_generic(%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @z11_glyph_info_aux(%struct.gs_font_s* %font, i64 %glyph, %struct.gs_matrix_s* %pmat, i32 %members, %struct.gs_glyph_info_s* %info) #0 {
entry:
  %retval = alloca i32, align 4
  %font.addr = alloca %struct.gs_font_s*, align 8
  %glyph.addr = alloca i64, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %members.addr = alloca i32, align 4
  %info.addr = alloca %struct.gs_glyph_info_s*, align 8
  %fontCID2 = alloca %struct.gs_font_cid2_s*, align 8
  %glyph_index = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !24
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store i32 %members, i32* %members.addr, align 4, !tbaa !19
  store %struct.gs_glyph_info_s* %info, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_cid2_s** %fontCID2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_font_s* %1 to %struct.gs_font_cid2_s*
  store %struct.gs_font_cid2_s* %2, %struct.gs_font_cid2_s** %fontCID2, align 8, !tbaa !1
  %3 = bitcast i32* %glyph_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i64, i64* %glyph.addr, align 8, !tbaa !24
  %cmp = icmp ugt i64 %5, 3221225472
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load i64, i64* %glyph.addr, align 8, !tbaa !24
  %sub = sub i64 %6, 3221225472
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %fontCID2, align 8, !tbaa !1
  %cidata = getelementptr inbounds %struct.gs_font_cid2_s, %struct.gs_font_cid2_s* %7, i32 0, i32 30
  %CIDMap_proc = getelementptr inbounds %struct.gs_font_cid2_data_s, %struct.gs_font_cid2_data_s* %cidata, i32 0, i32 2
  %8 = load i32 (%struct.gs_font_cid2_s*, i64)*, i32 (%struct.gs_font_cid2_s*, i64)** %CIDMap_proc, align 8, !tbaa !71
  %9 = load %struct.gs_font_cid2_s*, %struct.gs_font_cid2_s** %fontCID2, align 8, !tbaa !1
  %10 = load i64, i64* %glyph.addr, align 8, !tbaa !24
  %call = call i32 %8(%struct.gs_font_cid2_s* %9, i64 %10) #3
  %conv = sext i32 %call to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ %conv, %cond.false ]
  %conv1 = trunc i64 %cond to i32
  store i32 %conv1, i32* %code, align 4, !tbaa !19
  %11 = load i32, i32* %code, align 4, !tbaa !19
  %cmp2 = icmp slt i32 %11, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %12 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %13 = load i32, i32* %code, align 4, !tbaa !19
  store i32 %13, i32* %glyph_index, align 4, !tbaa !19
  %14 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %15 = load i64, i64* %glyph.addr, align 8, !tbaa !24
  %16 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %17 = load i32, i32* %members.addr, align 4, !tbaa !19
  %18 = load %struct.gs_glyph_info_s*, %struct.gs_glyph_info_s** %info.addr, align 8, !tbaa !1
  %19 = load i32, i32* %glyph_index, align 4, !tbaa !19
  %call4 = call i32 @gs_type42_glyph_info_by_gid(%struct.gs_font_s* %14, i64 %15, %struct.gs_matrix_s* %16, i32 %17, %struct.gs_glyph_info_s* %18, i32 %19) #3
  store i32 %call4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %20 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = bitcast i32* %glyph_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast %struct.gs_font_cid2_s** %fontCID2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = load i32, i32* %retval
  ret i32 %23
}

declare i32 @gs_type42_glyph_info_by_gid(%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*, i32) #2

declare i32 @gs_type42_glyph_outline(%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*) #2

declare void @gs_glyph_data_free(%struct.gs_glyph_data_s*, i8*) #2

declare void @gs_glyph_data_from_null(%struct.gs_glyph_data_s*) #2

declare i32 @gs_glyph_data_substring(%struct.gs_glyph_data_s*, i32, i32) #2

declare i32 @font_param(%struct.ref_s*, %struct.gs_font_s**) #2

declare i32 @cid_fill_CIDMap(%struct.gs_memory_s*, %struct.ref_s*, %struct.ref_s*, %struct.ref_s*, i32, %struct.ref_s*) #2

declare i32 @cid_fill_Identity_CIDMap(%struct.gs_memory_s*, %struct.ref_s*) #2

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
!19 = !{!9, !9, i64 0}
!20 = !{!10, !12, i64 0}
!21 = !{i64 0, i64 8, !1, i64 8, i64 4, !19, i64 16, i64 8, !1, i64 24, i64 4, !19, i64 32, i64 4, !19}
!22 = !{i64 0, i64 2, !23, i64 2, i64 2, !23, i64 4, i64 4, !19, i64 8, i64 8, !24, i64 8, i64 2, !23, i64 8, i64 4, !25, i64 8, i64 8, !24, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !24}
!23 = !{!12, !12, i64 0}
!24 = !{!13, !13, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"float", !3, i64 0}
!27 = !{!3, !3, i64 0}
!28 = !{!6, !2, i64 8}
!29 = !{!30, !9, i64 48}
!30 = !{!"gs_font_cid_data_s", !31, i64 0, !9, i64 40, !9, i64 44, !9, i64 48}
!31 = !{!"gs_cid_system_info_s", !32, i64 0, !32, i64 16, !9, i64 32}
!32 = !{!"gs_const_string_s", !2, i64 0, !9, i64 8}
!33 = !{!34, !2, i64 168}
!34 = !{!"gs_lib_ctx_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !9, i64 40, !9, i64 44, !9, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !13, i64 104, !2, i64 112, !2, i64 120, !9, i64 128, !2, i64 136, !9, i64 144, !9, i64 148, !3, i64 152, !2, i64 168, !9, i64 176, !2, i64 184, !9, i64 192, !2, i64 200, !2, i64 208}
!35 = !{!36, !2, i64 0}
!36 = !{!"gs_font_dir_s", !2, i64 0, !2, i64 8, !9, i64 16, !9, i64 20, !37, i64 24, !38, i64 56, !9, i64 144, !9, i64 148, !9, i64 152, !9, i64 156, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !9, i64 192, !2, i64 200, !2, i64 208, !13, i64 216}
!37 = !{!"fm_pair_cache_s", !9, i64 0, !9, i64 4, !2, i64 8, !9, i64 16, !9, i64 20, !9, i64 24}
!38 = !{!"char_cache_s", !2, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !2, i64 72, !2, i64 80}
!39 = !{!40, !3, i64 128}
!40 = !{!"gs_font_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !9, i64 32, !41, i64 40, !13, i64 56, !2, i64 64, !2, i64 72, !42, i64 80, !42, i64 104, !3, i64 128, !9, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !9, i64 148, !9, i64 152, !26, i64 156, !9, i64 160, !43, i64 168, !44, i64 272, !44, i64 324}
!41 = !{!"gs_notify_list_s", !2, i64 0, !2, i64 8}
!42 = !{!"gs_matrix_s", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12, !26, i64 16, !26, i64 20}
!43 = !{!"gs_font_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!44 = !{!"gs_font_name_s", !3, i64 0, !9, i64 48}
!45 = !{!46, !2, i64 744}
!46 = !{!"gs_font_cid2_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !9, i64 32, !41, i64 40, !13, i64 56, !2, i64 64, !2, i64 72, !42, i64 80, !42, i64 104, !3, i64 128, !9, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !9, i64 148, !9, i64 152, !26, i64 156, !9, i64 160, !43, i64 168, !44, i64 272, !44, i64 324, !47, i64 376, !50, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444, !51, i64 448, !52, i64 656, !2, i64 744}
!47 = !{!"gs_rect_s", !48, i64 0, !48, i64 16}
!48 = !{!"gs_point_s", !49, i64 0, !49, i64 8}
!49 = !{!"double", !3, i64 0}
!50 = !{!"gs_uid_s", !13, i64 0, !2, i64 8}
!51 = !{!"gs_type42_data_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !13, i64 48, !13, i64 56, !9, i64 64, !9, i64 68, !3, i64 72, !13, i64 120, !13, i64 128, !13, i64 136, !9, i64 144, !9, i64 148, !9, i64 152, !9, i64 156, !9, i64 160, !9, i64 164, !2, i64 168, !2, i64 176, !9, i64 184, !9, i64 188, !2, i64 192, !13, i64 200}
!52 = !{!"gs_font_cid2_data_s", !30, i64 0, !9, i64 56, !2, i64 64, !53, i64 72}
!53 = !{!"o_", !2, i64 0, !2, i64 8}
!54 = !{!10, !9, i64 4}
!55 = !{!46, !2, i64 672}
!56 = !{!46, !9, i64 680}
!57 = !{!40, !2, i64 0}
!58 = !{!46, !2, i64 16}
!59 = !{!60, !2, i64 72}
!60 = !{!"gs_memory_s", !2, i64 0, !61, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!61 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!62 = !{!63, !13, i64 0}
!63 = !{!"gs_subst_CID_on_WMode_s", !64, i64 0, !3, i64 24, !3, i64 40}
!64 = !{!"rc_header_s", !13, i64 0, !2, i64 8, !2, i64 16}
!65 = !{!63, !2, i64 8}
!66 = !{!63, !2, i64 16}
!67 = !{i64 0, i64 8, !1, i64 8, i64 4, !19, i64 16, i64 8, !1, i64 24, i64 4, !19, i64 32, i64 4, !19, i64 40, i64 4, !19, i64 44, i64 4, !19, i64 48, i64 4, !19}
!68 = !{!46, !9, i64 712}
!69 = !{!70, !2, i64 72}
!70 = !{!"gs_font_type42_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !9, i64 32, !41, i64 40, !13, i64 56, !2, i64 64, !2, i64 72, !42, i64 80, !42, i64 104, !3, i64 128, !9, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !9, i64 148, !9, i64 152, !26, i64 156, !9, i64 160, !43, i64 168, !44, i64 272, !44, i64 324, !47, i64 376, !50, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444, !51, i64 448}
!71 = !{!46, !2, i64 720}
!72 = !{!46, !2, i64 488}
!73 = !{!70, !2, i64 216}
!74 = !{!70, !2, i64 224}
!75 = !{!70, !2, i64 232}
!76 = !{!70, !2, i64 464}
!77 = !{!46, !9, i64 372}
!78 = !{!70, !2, i64 472}
!79 = !{!46, !2, i64 728}
!80 = !{!70, !2, i64 480}
!81 = !{!46, !2, i64 736}
!82 = !{!83, !12, i64 264}
!83 = !{!"stream_s", !2, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !3, i64 28, !3, i64 112, !2, i64 136, !9, i64 144, !9, i64 148, !12, i64 152, !3, i64 154, !3, i64 155, !84, i64 160, !13, i64 176, !85, i64 184, !2, i64 240, !9, i64 248, !9, i64 252, !2, i64 256, !12, i64 264, !12, i64 266, !2, i64 272, !2, i64 280, !9, i64 288, !9, i64 292, !2, i64 296, !2, i64 304, !32, i64 312, !9, i64 328, !13, i64 336, !13, i64 344}
!84 = !{!"gs_string_s", !2, i64 0, !9, i64 8}
!85 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!86 = !{!83, !12, i64 266}
!87 = !{!6, !2, i64 256}
!88 = !{!70, !13, i64 568}
!89 = !{!70, !13, i64 504}
!90 = !{!70, !2, i64 624}
!91 = !{!60, !2, i64 88}
!92 = !{!46, !2, i64 72}
!93 = !{!46, !9, i64 704}
!94 = !{!46, !9, i64 596}
!95 = !{!46, !9, i64 696}
!96 = !{!97, !9, i64 8}
!97 = !{!"gs_glyph_data_s", !98, i64 0, !2, i64 24, !2, i64 32, !2, i64 40}
!98 = !{!"gs_const_bytestring_s", !2, i64 0, !9, i64 8, !2, i64 16}
!99 = !{!70, !2, i64 16}
!100 = !{!97, !2, i64 40}
!101 = !{!97, !2, i64 0}
!102 = !{!70, !9, i64 512}
!103 = !{!49, !49, i64 0}
