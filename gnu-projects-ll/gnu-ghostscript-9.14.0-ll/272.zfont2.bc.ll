; ModuleID = './zfont2.bc'
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
%struct.tag_cff_data_t = type { %struct.ref_s*, i32, i32, i32 }
%struct.tag_font_defaults = type { i16, i16 }
%struct.charstring_font_refs_s = type { %struct.ref_s*, %struct.ref_s, %struct.ref_s*, %struct.ref_s*, %struct.ref_s* }
%struct.gs_type1_data_s = type { %struct.gs_type1_data_procs_s, i32 (%struct.gs_type1_state_s*, %struct.gs_glyph_data_s*, i32*)*, i8*, %struct.gs_font_base_s*, i32, i32, i32, i64, i32, i32, i32, float, float, %struct.anon, float, i32, %struct.anon.0, %struct.anon.1, i32, %struct.anon.2, i32, %struct.anon.3, %struct.anon.4, %struct.anon.5, %struct.anon.6, %struct.anon.7, [16 x i8], i32 }
%struct.gs_type1_data_procs_s = type { i32 (%struct.gs_font_type1_s*, i64, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type1_s*, i32, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type1_s*, i32, i64*, %struct.gs_const_string_s*, %struct.gs_glyph_data_s*)*, i32 (i8*, i32*, i32)*, i32 (i8*, i32*)* }
%struct.gs_font_type1_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32, %struct.gs_type1_data_s }
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
%struct.tag_cff_index_t = type { i32, i32, i32, i32, i32 }
%struct.tag_font_offsets_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"GlobalSubrs\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"gsubrNumberBias\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"defaultWidthX\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"nominalWidthX\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"initialRandomSeed\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"2.buildfont2\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"2.parsecff\00", align 1
@zfont2_op_defs = constant [3 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zbuildfont2 }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.gs_context_state_s*)* @zparsecff }, %struct.op_def zeroinitializer], align 16
@.str.7 = private unnamed_addr constant [16 x i8] c"%Type2BuildChar\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"%Type2BuildGlyph\00", align 1
@zparsecff.mod2shift = internal constant [37 x i32] [i32 0, i32 0, i32 1, i32 26, i32 2, i32 23, i32 27, i32 0, i32 3, i32 16, i32 24, i32 30, i32 28, i32 11, i32 0, i32 13, i32 4, i32 7, i32 17, i32 0, i32 25, i32 22, i32 31, i32 15, i32 29, i32 10, i32 12, i32 6, i32 0, i32 21, i32 14, i32 9, i32 5, i32 20, i32 8, i32 19, i32 18], align 16
@offset_procs = internal constant [5 x i32 (i32*, %struct.tag_cff_data_t*, i32, i32)*] [i32 (i32*, %struct.tag_cff_data_t*, i32, i32)* null, i32 (i32*, %struct.tag_cff_data_t*, i32, i32)* @card8, i32 (i32*, %struct.tag_cff_data_t*, i32, i32)* @card16, i32 (i32*, %struct.tag_cff_data_t*, i32, i32)* @card24, i32 (i32*, %struct.tag_cff_data_t*, i32, i32)* @card32], align 16
@.str.9 = private unnamed_addr constant [28 x i8] c"make_stringarray_from_index\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"make_string_from_index\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"Private\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"FontInfo\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"Subrs\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"parsecff.fdarray\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"FDArray\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"GlyphDirectory\00", align 1
@font_keys = internal constant [48 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.427, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.428, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.429, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.430, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.431, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.432, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.433, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.434, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.435, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.436, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.437, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.438, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.439, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.440, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.441, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.442, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.443, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.444, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.445, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.446, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.447, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.448, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.449, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.450, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.451, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.452, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.453, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.454, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.455, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.456, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.457, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.458, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.459, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.460, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.461, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.462, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.463, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0)], align 16
@font_keys_sz = internal constant [48 x i16] [i16 7, i16 6, i16 8, i16 10, i16 6, i16 8, i16 10, i16 10, i16 11, i16 16, i16 5, i16 5, i16 9, i16 12, i16 11, i16 17, i16 18, i16 9, i16 14, i16 10, i16 11, i16 9, i16 9, i16 8, i16 9, i16 9, i16 9, i16 13, i16 15, i16 17, i16 13, i16 10, i16 12, i16 13, i16 14, i16 15, i16 11, i16 8, i16 7, i16 7, i16 8, i16 8, i16 8, i16 4, i16 13, i16 13, i16 8, i16 7], align 16
@set_unit_matrix = internal constant [1 x %struct.tag_font_defaults] [%struct.tag_font_defaults { i16 19, i16 12 }], align 2
@fd_font_defaults = internal constant [4 x %struct.tag_font_defaults] [%struct.tag_font_defaults { i16 19, i16 11 }, %struct.tag_font_defaults { i16 17, i16 0 }, %struct.tag_font_defaults { i16 46, i16 2 }, %struct.tag_font_defaults { i16 47, i16 13 }], align 16
@.str.17 = private unnamed_addr constant [8 x i8] c"FDBytes\00", align 1
@cid_font_defaults = internal constant [4 x %struct.tag_font_defaults] [%struct.tag_font_defaults { i16 34, i16 0 }, %struct.tag_font_defaults { i16 35, i16 0 }, %struct.tag_font_defaults { i16 36, i16 0 }, %struct.tag_font_defaults { i16 37, i16 6 }], align 16
@.str.18 = private unnamed_addr constant [9 x i8] c"UniqueID\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"XUID\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"force_cid.fdarray\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"FontMatrix\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"FontType\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"PaintType\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"Adobe\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"Registry\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"Identity\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"Ordering\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"Supplement\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"CIDSystemInfo\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"CIDCount\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c".notdef\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"CharStrings\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"cff_parser.encoding\00", align 1
@expert_encoding = internal constant [256 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1, i16 229, i16 230, i16 0, i16 231, i16 232, i16 233, i16 234, i16 235, i16 236, i16 237, i16 238, i16 13, i16 14, i16 15, i16 99, i16 239, i16 240, i16 241, i16 242, i16 243, i16 244, i16 245, i16 246, i16 247, i16 248, i16 27, i16 28, i16 249, i16 250, i16 251, i16 252, i16 0, i16 253, i16 254, i16 255, i16 256, i16 257, i16 0, i16 0, i16 0, i16 258, i16 0, i16 0, i16 259, i16 260, i16 261, i16 262, i16 0, i16 0, i16 263, i16 264, i16 265, i16 0, i16 266, i16 109, i16 110, i16 267, i16 268, i16 269, i16 0, i16 270, i16 271, i16 272, i16 273, i16 274, i16 275, i16 276, i16 277, i16 278, i16 279, i16 280, i16 281, i16 282, i16 283, i16 284, i16 285, i16 286, i16 287, i16 288, i16 289, i16 290, i16 291, i16 292, i16 293, i16 294, i16 295, i16 296, i16 297, i16 298, i16 299, i16 300, i16 301, i16 302, i16 303, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 304, i16 305, i16 306, i16 0, i16 0, i16 307, i16 308, i16 309, i16 310, i16 311, i16 0, i16 312, i16 0, i16 0, i16 313, i16 0, i16 0, i16 314, i16 315, i16 0, i16 0, i16 316, i16 317, i16 318, i16 0, i16 0, i16 0, i16 158, i16 155, i16 163, i16 319, i16 320, i16 321, i16 322, i16 323, i16 324, i16 325, i16 0, i16 0, i16 326, i16 150, i16 164, i16 169, i16 327, i16 328, i16 329, i16 330, i16 331, i16 332, i16 333, i16 334, i16 335, i16 336, i16 337, i16 338, i16 339, i16 340, i16 341, i16 342, i16 343, i16 344, i16 345, i16 346, i16 347, i16 348, i16 349, i16 350, i16 351, i16 352, i16 353, i16 354, i16 355, i16 356, i16 357, i16 358, i16 359, i16 360, i16 361, i16 362, i16 363, i16 364, i16 365, i16 366, i16 367, i16 368, i16 369, i16 370, i16 371, i16 372, i16 373, i16 374, i16 375, i16 376, i16 377, i16 378], align 16
@standard_encoding = internal constant [256 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31, i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63, i16 64, i16 65, i16 66, i16 67, i16 68, i16 69, i16 70, i16 71, i16 72, i16 73, i16 74, i16 75, i16 76, i16 77, i16 78, i16 79, i16 80, i16 81, i16 82, i16 83, i16 84, i16 85, i16 86, i16 87, i16 88, i16 89, i16 90, i16 91, i16 92, i16 93, i16 94, i16 95, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 96, i16 97, i16 98, i16 99, i16 100, i16 101, i16 102, i16 103, i16 104, i16 105, i16 106, i16 107, i16 108, i16 109, i16 110, i16 0, i16 111, i16 112, i16 113, i16 114, i16 0, i16 115, i16 116, i16 117, i16 118, i16 119, i16 120, i16 121, i16 122, i16 0, i16 123, i16 0, i16 124, i16 125, i16 126, i16 127, i16 128, i16 129, i16 130, i16 131, i16 0, i16 132, i16 133, i16 0, i16 134, i16 135, i16 136, i16 137, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 138, i16 0, i16 139, i16 0, i16 0, i16 0, i16 0, i16 140, i16 141, i16 142, i16 143, i16 0, i16 0, i16 0, i16 0, i16 0, i16 144, i16 0, i16 0, i16 0, i16 145, i16 0, i16 0, i16 146, i16 147, i16 148, i16 149, i16 0, i16 0, i16 0, i16 0], align 16
@.str.34 = private unnamed_addr constant [9 x i8] c"Encoding\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"sid-%d\00", align 1
@fontinfo_font_defaults = internal constant [4 x %struct.tag_font_defaults] [%struct.tag_font_defaults { i16 13, i16 9 }, %struct.tag_font_defaults { i16 14, i16 0 }, %struct.tag_font_defaults { i16 15, i16 5 }, %struct.tag_font_defaults { i16 16, i16 4 }], align 16
@private_font_defaults = internal constant [9 x %struct.tag_font_defaults] [%struct.tag_font_defaults { i16 21, i16 7 }, %struct.tag_font_defaults { i16 22, i16 3 }, %struct.tag_font_defaults { i16 23, i16 1 }, %struct.tag_font_defaults { i16 26, i16 9 }, %struct.tag_font_defaults { i16 27, i16 0 }, %struct.tag_font_defaults { i16 28, i16 8 }, %struct.tag_font_defaults { i16 29, i16 0 }, %struct.tag_font_defaults { i16 44, i16 0 }, %struct.tag_font_defaults { i16 45, i16 0 }], align 16
@simple_font_defaults = internal constant [5 x %struct.tag_font_defaults] [%struct.tag_font_defaults { i16 17, i16 0 }, %struct.tag_font_defaults { i16 18, i16 2 }, %struct.tag_font_defaults { i16 19, i16 11 }, %struct.tag_font_defaults { i16 5, i16 10 }, %struct.tag_font_defaults { i16 20, i16 0 }], align 16
@.str.36 = private unnamed_addr constant [15 x i8] c"parsecff.array\00", align 1
@standard_strings = internal constant [391 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.137, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.151, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.152, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.153, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.154, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.155, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.156, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.157, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.158, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.159, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.161, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.162, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.163, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.164, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.165, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.166, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.167, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.168, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.169, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.170, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.171, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.172, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.173, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.174, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.175, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.176, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.177, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.178, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.180, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.181, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.182, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.183, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.184, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.185, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.187, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.188, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.189, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.192, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.193, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.194, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.195, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.196, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.197, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.198, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.199, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.200, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.201, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.202, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.203, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.204, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.205, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.206, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.207, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.208, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.209, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.210, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.211, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.212, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.213, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.215, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.216, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.217, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.218, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.219, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.220, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.221, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.222, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.223, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.224, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.225, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.226, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.227, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.228, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.229, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.230, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.231, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.232, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.233, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.234, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.235, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.236, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.237, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.238, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.239, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.240, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.241, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.242, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.243, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.244, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.245, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.246, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.247, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.248, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.249, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.250, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.251, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.252, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.253, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.254, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.255, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.256, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.257, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.258, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.259, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.260, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.261, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.262, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.263, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.264, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.265, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.266, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.267, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.268, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.269, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.270, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.271, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.272, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.273, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.274, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.275, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.276, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.277, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.278, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.279, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.280, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.281, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.282, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.283, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.284, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.285, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.286, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.287, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.288, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.289, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.290, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.291, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.292, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.293, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.294, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.295, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.296, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.297, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.298, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.299, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.300, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.301, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.302, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.303, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.304, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.305, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.306, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.307, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.308, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.309, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.310, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.311, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.312, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.313, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.314, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.315, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.316, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.317, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.318, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.319, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.320, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.321, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.322, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.323, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.324, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.325, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.326, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.327, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.328, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.329, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.330, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.331, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.332, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.333, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.334, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.335, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.336, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.337, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.338, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.339, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.340, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.341, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.342, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.343, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.344, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.345, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.346, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.347, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.348, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.349, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.350, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.351, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.352, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.353, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.354, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.355, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.356, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.357, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.358, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.359, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.360, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.361, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.362, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.363, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.364, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.365, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.366, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.367, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.368, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.369, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.370, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.371, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.372, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.373, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.374, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.375, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.376, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.377, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.378, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.379, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.380, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.381, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.382, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.383, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.384, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.385, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.386, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.387, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.388, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.389, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.390, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.391, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.392, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.393, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.394, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.395, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.396, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.397, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.398, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.399, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.400, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.401, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.402, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.403, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.404, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.405, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.406, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.407, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.408, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.409, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.410, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.411, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.412, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.413, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.414, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.415, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.416, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.417, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.418, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.419, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.420, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.421, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.422, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.423, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.424, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.425, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.426, i32 0, i32 0)], align 16
@.str.37 = private unnamed_addr constant [6 x i8] c"space\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"exclam\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"quotedbl\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"numbersign\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"dollar\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"percent\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"ampersand\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"quoteright\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"parenleft\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"parenright\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"asterisk\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"plus\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"comma\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"hyphen\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"period\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"slash\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"one\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"two\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"three\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"four\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"five\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"six\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"seven\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"eight\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"nine\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"colon\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"semicolon\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"less\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"equal\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"greater\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"question\00", align 1
@.str.69 = private unnamed_addr constant [3 x i8] c"at\00", align 1
@.str.70 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.71 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.72 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.73 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.74 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.75 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.76 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.77 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.78 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.79 = private unnamed_addr constant [2 x i8] c"J\00", align 1
@.str.80 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.81 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.82 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.83 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.84 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.85 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.86 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str.87 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.88 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.89 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.90 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.91 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.92 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.93 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.94 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.95 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.96 = private unnamed_addr constant [12 x i8] c"bracketleft\00", align 1
@.str.97 = private unnamed_addr constant [10 x i8] c"backslash\00", align 1
@.str.98 = private unnamed_addr constant [13 x i8] c"bracketright\00", align 1
@.str.99 = private unnamed_addr constant [12 x i8] c"asciicircum\00", align 1
@.str.100 = private unnamed_addr constant [11 x i8] c"underscore\00", align 1
@.str.101 = private unnamed_addr constant [10 x i8] c"quoteleft\00", align 1
@.str.102 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.103 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.104 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.105 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.106 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.107 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.108 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.109 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.110 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.111 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@.str.112 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str.113 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.114 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.115 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.116 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.117 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.118 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.119 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.120 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.121 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.122 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.123 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.124 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.125 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.126 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.127 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.128 = private unnamed_addr constant [10 x i8] c"braceleft\00", align 1
@.str.129 = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@.str.130 = private unnamed_addr constant [11 x i8] c"braceright\00", align 1
@.str.131 = private unnamed_addr constant [11 x i8] c"asciitilde\00", align 1
@.str.132 = private unnamed_addr constant [11 x i8] c"exclamdown\00", align 1
@.str.133 = private unnamed_addr constant [5 x i8] c"cent\00", align 1
@.str.134 = private unnamed_addr constant [9 x i8] c"sterling\00", align 1
@.str.135 = private unnamed_addr constant [9 x i8] c"fraction\00", align 1
@.str.136 = private unnamed_addr constant [4 x i8] c"yen\00", align 1
@.str.137 = private unnamed_addr constant [7 x i8] c"florin\00", align 1
@.str.138 = private unnamed_addr constant [8 x i8] c"section\00", align 1
@.str.139 = private unnamed_addr constant [9 x i8] c"currency\00", align 1
@.str.140 = private unnamed_addr constant [12 x i8] c"quotesingle\00", align 1
@.str.141 = private unnamed_addr constant [13 x i8] c"quotedblleft\00", align 1
@.str.142 = private unnamed_addr constant [14 x i8] c"guillemotleft\00", align 1
@.str.143 = private unnamed_addr constant [14 x i8] c"guilsinglleft\00", align 1
@.str.144 = private unnamed_addr constant [15 x i8] c"guilsinglright\00", align 1
@.str.145 = private unnamed_addr constant [3 x i8] c"fi\00", align 1
@.str.146 = private unnamed_addr constant [3 x i8] c"fl\00", align 1
@.str.147 = private unnamed_addr constant [7 x i8] c"endash\00", align 1
@.str.148 = private unnamed_addr constant [7 x i8] c"dagger\00", align 1
@.str.149 = private unnamed_addr constant [10 x i8] c"daggerdbl\00", align 1
@.str.150 = private unnamed_addr constant [15 x i8] c"periodcentered\00", align 1
@.str.151 = private unnamed_addr constant [10 x i8] c"paragraph\00", align 1
@.str.152 = private unnamed_addr constant [7 x i8] c"bullet\00", align 1
@.str.153 = private unnamed_addr constant [15 x i8] c"quotesinglbase\00", align 1
@.str.154 = private unnamed_addr constant [13 x i8] c"quotedblbase\00", align 1
@.str.155 = private unnamed_addr constant [14 x i8] c"quotedblright\00", align 1
@.str.156 = private unnamed_addr constant [15 x i8] c"guillemotright\00", align 1
@.str.157 = private unnamed_addr constant [9 x i8] c"ellipsis\00", align 1
@.str.158 = private unnamed_addr constant [12 x i8] c"perthousand\00", align 1
@.str.159 = private unnamed_addr constant [13 x i8] c"questiondown\00", align 1
@.str.160 = private unnamed_addr constant [6 x i8] c"grave\00", align 1
@.str.161 = private unnamed_addr constant [6 x i8] c"acute\00", align 1
@.str.162 = private unnamed_addr constant [11 x i8] c"circumflex\00", align 1
@.str.163 = private unnamed_addr constant [6 x i8] c"tilde\00", align 1
@.str.164 = private unnamed_addr constant [7 x i8] c"macron\00", align 1
@.str.165 = private unnamed_addr constant [6 x i8] c"breve\00", align 1
@.str.166 = private unnamed_addr constant [10 x i8] c"dotaccent\00", align 1
@.str.167 = private unnamed_addr constant [9 x i8] c"dieresis\00", align 1
@.str.168 = private unnamed_addr constant [5 x i8] c"ring\00", align 1
@.str.169 = private unnamed_addr constant [8 x i8] c"cedilla\00", align 1
@.str.170 = private unnamed_addr constant [13 x i8] c"hungarumlaut\00", align 1
@.str.171 = private unnamed_addr constant [7 x i8] c"ogonek\00", align 1
@.str.172 = private unnamed_addr constant [6 x i8] c"caron\00", align 1
@.str.173 = private unnamed_addr constant [7 x i8] c"emdash\00", align 1
@.str.174 = private unnamed_addr constant [3 x i8] c"AE\00", align 1
@.str.175 = private unnamed_addr constant [12 x i8] c"ordfeminine\00", align 1
@.str.176 = private unnamed_addr constant [7 x i8] c"Lslash\00", align 1
@.str.177 = private unnamed_addr constant [7 x i8] c"Oslash\00", align 1
@.str.178 = private unnamed_addr constant [3 x i8] c"OE\00", align 1
@.str.179 = private unnamed_addr constant [13 x i8] c"ordmasculine\00", align 1
@.str.180 = private unnamed_addr constant [3 x i8] c"ae\00", align 1
@.str.181 = private unnamed_addr constant [9 x i8] c"dotlessi\00", align 1
@.str.182 = private unnamed_addr constant [7 x i8] c"lslash\00", align 1
@.str.183 = private unnamed_addr constant [7 x i8] c"oslash\00", align 1
@.str.184 = private unnamed_addr constant [3 x i8] c"oe\00", align 1
@.str.185 = private unnamed_addr constant [11 x i8] c"germandbls\00", align 1
@.str.186 = private unnamed_addr constant [12 x i8] c"onesuperior\00", align 1
@.str.187 = private unnamed_addr constant [11 x i8] c"logicalnot\00", align 1
@.str.188 = private unnamed_addr constant [3 x i8] c"mu\00", align 1
@.str.189 = private unnamed_addr constant [10 x i8] c"trademark\00", align 1
@.str.190 = private unnamed_addr constant [4 x i8] c"Eth\00", align 1
@.str.191 = private unnamed_addr constant [8 x i8] c"onehalf\00", align 1
@.str.192 = private unnamed_addr constant [10 x i8] c"plusminus\00", align 1
@.str.193 = private unnamed_addr constant [6 x i8] c"Thorn\00", align 1
@.str.194 = private unnamed_addr constant [11 x i8] c"onequarter\00", align 1
@.str.195 = private unnamed_addr constant [7 x i8] c"divide\00", align 1
@.str.196 = private unnamed_addr constant [10 x i8] c"brokenbar\00", align 1
@.str.197 = private unnamed_addr constant [7 x i8] c"degree\00", align 1
@.str.198 = private unnamed_addr constant [6 x i8] c"thorn\00", align 1
@.str.199 = private unnamed_addr constant [14 x i8] c"threequarters\00", align 1
@.str.200 = private unnamed_addr constant [12 x i8] c"twosuperior\00", align 1
@.str.201 = private unnamed_addr constant [11 x i8] c"registered\00", align 1
@.str.202 = private unnamed_addr constant [6 x i8] c"minus\00", align 1
@.str.203 = private unnamed_addr constant [4 x i8] c"eth\00", align 1
@.str.204 = private unnamed_addr constant [9 x i8] c"multiply\00", align 1
@.str.205 = private unnamed_addr constant [14 x i8] c"threesuperior\00", align 1
@.str.206 = private unnamed_addr constant [10 x i8] c"copyright\00", align 1
@.str.207 = private unnamed_addr constant [7 x i8] c"Aacute\00", align 1
@.str.208 = private unnamed_addr constant [12 x i8] c"Acircumflex\00", align 1
@.str.209 = private unnamed_addr constant [10 x i8] c"Adieresis\00", align 1
@.str.210 = private unnamed_addr constant [7 x i8] c"Agrave\00", align 1
@.str.211 = private unnamed_addr constant [6 x i8] c"Aring\00", align 1
@.str.212 = private unnamed_addr constant [7 x i8] c"Atilde\00", align 1
@.str.213 = private unnamed_addr constant [9 x i8] c"Ccedilla\00", align 1
@.str.214 = private unnamed_addr constant [7 x i8] c"Eacute\00", align 1
@.str.215 = private unnamed_addr constant [12 x i8] c"Ecircumflex\00", align 1
@.str.216 = private unnamed_addr constant [10 x i8] c"Edieresis\00", align 1
@.str.217 = private unnamed_addr constant [7 x i8] c"Egrave\00", align 1
@.str.218 = private unnamed_addr constant [7 x i8] c"Iacute\00", align 1
@.str.219 = private unnamed_addr constant [12 x i8] c"Icircumflex\00", align 1
@.str.220 = private unnamed_addr constant [10 x i8] c"Idieresis\00", align 1
@.str.221 = private unnamed_addr constant [7 x i8] c"Igrave\00", align 1
@.str.222 = private unnamed_addr constant [7 x i8] c"Ntilde\00", align 1
@.str.223 = private unnamed_addr constant [7 x i8] c"Oacute\00", align 1
@.str.224 = private unnamed_addr constant [12 x i8] c"Ocircumflex\00", align 1
@.str.225 = private unnamed_addr constant [10 x i8] c"Odieresis\00", align 1
@.str.226 = private unnamed_addr constant [7 x i8] c"Ograve\00", align 1
@.str.227 = private unnamed_addr constant [7 x i8] c"Otilde\00", align 1
@.str.228 = private unnamed_addr constant [7 x i8] c"Scaron\00", align 1
@.str.229 = private unnamed_addr constant [7 x i8] c"Uacute\00", align 1
@.str.230 = private unnamed_addr constant [12 x i8] c"Ucircumflex\00", align 1
@.str.231 = private unnamed_addr constant [10 x i8] c"Udieresis\00", align 1
@.str.232 = private unnamed_addr constant [7 x i8] c"Ugrave\00", align 1
@.str.233 = private unnamed_addr constant [7 x i8] c"Yacute\00", align 1
@.str.234 = private unnamed_addr constant [10 x i8] c"Ydieresis\00", align 1
@.str.235 = private unnamed_addr constant [7 x i8] c"Zcaron\00", align 1
@.str.236 = private unnamed_addr constant [7 x i8] c"aacute\00", align 1
@.str.237 = private unnamed_addr constant [12 x i8] c"acircumflex\00", align 1
@.str.238 = private unnamed_addr constant [10 x i8] c"adieresis\00", align 1
@.str.239 = private unnamed_addr constant [7 x i8] c"agrave\00", align 1
@.str.240 = private unnamed_addr constant [6 x i8] c"aring\00", align 1
@.str.241 = private unnamed_addr constant [7 x i8] c"atilde\00", align 1
@.str.242 = private unnamed_addr constant [9 x i8] c"ccedilla\00", align 1
@.str.243 = private unnamed_addr constant [7 x i8] c"eacute\00", align 1
@.str.244 = private unnamed_addr constant [12 x i8] c"ecircumflex\00", align 1
@.str.245 = private unnamed_addr constant [10 x i8] c"edieresis\00", align 1
@.str.246 = private unnamed_addr constant [7 x i8] c"egrave\00", align 1
@.str.247 = private unnamed_addr constant [7 x i8] c"iacute\00", align 1
@.str.248 = private unnamed_addr constant [12 x i8] c"icircumflex\00", align 1
@.str.249 = private unnamed_addr constant [10 x i8] c"idieresis\00", align 1
@.str.250 = private unnamed_addr constant [7 x i8] c"igrave\00", align 1
@.str.251 = private unnamed_addr constant [7 x i8] c"ntilde\00", align 1
@.str.252 = private unnamed_addr constant [7 x i8] c"oacute\00", align 1
@.str.253 = private unnamed_addr constant [12 x i8] c"ocircumflex\00", align 1
@.str.254 = private unnamed_addr constant [10 x i8] c"odieresis\00", align 1
@.str.255 = private unnamed_addr constant [7 x i8] c"ograve\00", align 1
@.str.256 = private unnamed_addr constant [7 x i8] c"otilde\00", align 1
@.str.257 = private unnamed_addr constant [7 x i8] c"scaron\00", align 1
@.str.258 = private unnamed_addr constant [7 x i8] c"uacute\00", align 1
@.str.259 = private unnamed_addr constant [12 x i8] c"ucircumflex\00", align 1
@.str.260 = private unnamed_addr constant [10 x i8] c"udieresis\00", align 1
@.str.261 = private unnamed_addr constant [7 x i8] c"ugrave\00", align 1
@.str.262 = private unnamed_addr constant [7 x i8] c"yacute\00", align 1
@.str.263 = private unnamed_addr constant [10 x i8] c"ydieresis\00", align 1
@.str.264 = private unnamed_addr constant [7 x i8] c"zcaron\00", align 1
@.str.265 = private unnamed_addr constant [12 x i8] c"exclamsmall\00", align 1
@.str.266 = private unnamed_addr constant [18 x i8] c"Hungarumlautsmall\00", align 1
@.str.267 = private unnamed_addr constant [15 x i8] c"dollaroldstyle\00", align 1
@.str.268 = private unnamed_addr constant [15 x i8] c"dollarsuperior\00", align 1
@.str.269 = private unnamed_addr constant [15 x i8] c"ampersandsmall\00", align 1
@.str.270 = private unnamed_addr constant [11 x i8] c"Acutesmall\00", align 1
@.str.271 = private unnamed_addr constant [18 x i8] c"parenleftsuperior\00", align 1
@.str.272 = private unnamed_addr constant [19 x i8] c"parenrightsuperior\00", align 1
@.str.273 = private unnamed_addr constant [15 x i8] c"twodotenleader\00", align 1
@.str.274 = private unnamed_addr constant [15 x i8] c"onedotenleader\00", align 1
@.str.275 = private unnamed_addr constant [13 x i8] c"zerooldstyle\00", align 1
@.str.276 = private unnamed_addr constant [12 x i8] c"oneoldstyle\00", align 1
@.str.277 = private unnamed_addr constant [12 x i8] c"twooldstyle\00", align 1
@.str.278 = private unnamed_addr constant [14 x i8] c"threeoldstyle\00", align 1
@.str.279 = private unnamed_addr constant [13 x i8] c"fouroldstyle\00", align 1
@.str.280 = private unnamed_addr constant [13 x i8] c"fiveoldstyle\00", align 1
@.str.281 = private unnamed_addr constant [12 x i8] c"sixoldstyle\00", align 1
@.str.282 = private unnamed_addr constant [14 x i8] c"sevenoldstyle\00", align 1
@.str.283 = private unnamed_addr constant [14 x i8] c"eightoldstyle\00", align 1
@.str.284 = private unnamed_addr constant [13 x i8] c"nineoldstyle\00", align 1
@.str.285 = private unnamed_addr constant [14 x i8] c"commasuperior\00", align 1
@.str.286 = private unnamed_addr constant [20 x i8] c"threequartersemdash\00", align 1
@.str.287 = private unnamed_addr constant [15 x i8] c"periodsuperior\00", align 1
@.str.288 = private unnamed_addr constant [14 x i8] c"questionsmall\00", align 1
@.str.289 = private unnamed_addr constant [10 x i8] c"asuperior\00", align 1
@.str.290 = private unnamed_addr constant [10 x i8] c"bsuperior\00", align 1
@.str.291 = private unnamed_addr constant [13 x i8] c"centsuperior\00", align 1
@.str.292 = private unnamed_addr constant [10 x i8] c"dsuperior\00", align 1
@.str.293 = private unnamed_addr constant [10 x i8] c"esuperior\00", align 1
@.str.294 = private unnamed_addr constant [10 x i8] c"isuperior\00", align 1
@.str.295 = private unnamed_addr constant [10 x i8] c"lsuperior\00", align 1
@.str.296 = private unnamed_addr constant [10 x i8] c"msuperior\00", align 1
@.str.297 = private unnamed_addr constant [10 x i8] c"nsuperior\00", align 1
@.str.298 = private unnamed_addr constant [10 x i8] c"osuperior\00", align 1
@.str.299 = private unnamed_addr constant [10 x i8] c"rsuperior\00", align 1
@.str.300 = private unnamed_addr constant [10 x i8] c"ssuperior\00", align 1
@.str.301 = private unnamed_addr constant [10 x i8] c"tsuperior\00", align 1
@.str.302 = private unnamed_addr constant [3 x i8] c"ff\00", align 1
@.str.303 = private unnamed_addr constant [4 x i8] c"ffi\00", align 1
@.str.304 = private unnamed_addr constant [4 x i8] c"ffl\00", align 1
@.str.305 = private unnamed_addr constant [18 x i8] c"parenleftinferior\00", align 1
@.str.306 = private unnamed_addr constant [19 x i8] c"parenrightinferior\00", align 1
@.str.307 = private unnamed_addr constant [16 x i8] c"Circumflexsmall\00", align 1
@.str.308 = private unnamed_addr constant [15 x i8] c"hyphensuperior\00", align 1
@.str.309 = private unnamed_addr constant [11 x i8] c"Gravesmall\00", align 1
@.str.310 = private unnamed_addr constant [7 x i8] c"Asmall\00", align 1
@.str.311 = private unnamed_addr constant [7 x i8] c"Bsmall\00", align 1
@.str.312 = private unnamed_addr constant [7 x i8] c"Csmall\00", align 1
@.str.313 = private unnamed_addr constant [7 x i8] c"Dsmall\00", align 1
@.str.314 = private unnamed_addr constant [7 x i8] c"Esmall\00", align 1
@.str.315 = private unnamed_addr constant [7 x i8] c"Fsmall\00", align 1
@.str.316 = private unnamed_addr constant [7 x i8] c"Gsmall\00", align 1
@.str.317 = private unnamed_addr constant [7 x i8] c"Hsmall\00", align 1
@.str.318 = private unnamed_addr constant [7 x i8] c"Ismall\00", align 1
@.str.319 = private unnamed_addr constant [7 x i8] c"Jsmall\00", align 1
@.str.320 = private unnamed_addr constant [7 x i8] c"Ksmall\00", align 1
@.str.321 = private unnamed_addr constant [7 x i8] c"Lsmall\00", align 1
@.str.322 = private unnamed_addr constant [7 x i8] c"Msmall\00", align 1
@.str.323 = private unnamed_addr constant [7 x i8] c"Nsmall\00", align 1
@.str.324 = private unnamed_addr constant [7 x i8] c"Osmall\00", align 1
@.str.325 = private unnamed_addr constant [7 x i8] c"Psmall\00", align 1
@.str.326 = private unnamed_addr constant [7 x i8] c"Qsmall\00", align 1
@.str.327 = private unnamed_addr constant [7 x i8] c"Rsmall\00", align 1
@.str.328 = private unnamed_addr constant [7 x i8] c"Ssmall\00", align 1
@.str.329 = private unnamed_addr constant [7 x i8] c"Tsmall\00", align 1
@.str.330 = private unnamed_addr constant [7 x i8] c"Usmall\00", align 1
@.str.331 = private unnamed_addr constant [7 x i8] c"Vsmall\00", align 1
@.str.332 = private unnamed_addr constant [7 x i8] c"Wsmall\00", align 1
@.str.333 = private unnamed_addr constant [7 x i8] c"Xsmall\00", align 1
@.str.334 = private unnamed_addr constant [7 x i8] c"Ysmall\00", align 1
@.str.335 = private unnamed_addr constant [7 x i8] c"Zsmall\00", align 1
@.str.336 = private unnamed_addr constant [14 x i8] c"colonmonetary\00", align 1
@.str.337 = private unnamed_addr constant [10 x i8] c"onefitted\00", align 1
@.str.338 = private unnamed_addr constant [7 x i8] c"rupiah\00", align 1
@.str.339 = private unnamed_addr constant [11 x i8] c"Tildesmall\00", align 1
@.str.340 = private unnamed_addr constant [16 x i8] c"exclamdownsmall\00", align 1
@.str.341 = private unnamed_addr constant [13 x i8] c"centoldstyle\00", align 1
@.str.342 = private unnamed_addr constant [12 x i8] c"Lslashsmall\00", align 1
@.str.343 = private unnamed_addr constant [12 x i8] c"Scaronsmall\00", align 1
@.str.344 = private unnamed_addr constant [12 x i8] c"Zcaronsmall\00", align 1
@.str.345 = private unnamed_addr constant [14 x i8] c"Dieresissmall\00", align 1
@.str.346 = private unnamed_addr constant [11 x i8] c"Brevesmall\00", align 1
@.str.347 = private unnamed_addr constant [11 x i8] c"Caronsmall\00", align 1
@.str.348 = private unnamed_addr constant [15 x i8] c"Dotaccentsmall\00", align 1
@.str.349 = private unnamed_addr constant [12 x i8] c"Macronsmall\00", align 1
@.str.350 = private unnamed_addr constant [11 x i8] c"figuredash\00", align 1
@.str.351 = private unnamed_addr constant [15 x i8] c"hypheninferior\00", align 1
@.str.352 = private unnamed_addr constant [12 x i8] c"Ogoneksmall\00", align 1
@.str.353 = private unnamed_addr constant [10 x i8] c"Ringsmall\00", align 1
@.str.354 = private unnamed_addr constant [13 x i8] c"Cedillasmall\00", align 1
@.str.355 = private unnamed_addr constant [18 x i8] c"questiondownsmall\00", align 1
@.str.356 = private unnamed_addr constant [10 x i8] c"oneeighth\00", align 1
@.str.357 = private unnamed_addr constant [13 x i8] c"threeeighths\00", align 1
@.str.358 = private unnamed_addr constant [12 x i8] c"fiveeighths\00", align 1
@.str.359 = private unnamed_addr constant [13 x i8] c"seveneighths\00", align 1
@.str.360 = private unnamed_addr constant [9 x i8] c"onethird\00", align 1
@.str.361 = private unnamed_addr constant [10 x i8] c"twothirds\00", align 1
@.str.362 = private unnamed_addr constant [13 x i8] c"zerosuperior\00", align 1
@.str.363 = private unnamed_addr constant [13 x i8] c"foursuperior\00", align 1
@.str.364 = private unnamed_addr constant [13 x i8] c"fivesuperior\00", align 1
@.str.365 = private unnamed_addr constant [12 x i8] c"sixsuperior\00", align 1
@.str.366 = private unnamed_addr constant [14 x i8] c"sevensuperior\00", align 1
@.str.367 = private unnamed_addr constant [14 x i8] c"eightsuperior\00", align 1
@.str.368 = private unnamed_addr constant [13 x i8] c"ninesuperior\00", align 1
@.str.369 = private unnamed_addr constant [13 x i8] c"zeroinferior\00", align 1
@.str.370 = private unnamed_addr constant [12 x i8] c"oneinferior\00", align 1
@.str.371 = private unnamed_addr constant [12 x i8] c"twoinferior\00", align 1
@.str.372 = private unnamed_addr constant [14 x i8] c"threeinferior\00", align 1
@.str.373 = private unnamed_addr constant [13 x i8] c"fourinferior\00", align 1
@.str.374 = private unnamed_addr constant [13 x i8] c"fiveinferior\00", align 1
@.str.375 = private unnamed_addr constant [12 x i8] c"sixinferior\00", align 1
@.str.376 = private unnamed_addr constant [14 x i8] c"seveninferior\00", align 1
@.str.377 = private unnamed_addr constant [14 x i8] c"eightinferior\00", align 1
@.str.378 = private unnamed_addr constant [13 x i8] c"nineinferior\00", align 1
@.str.379 = private unnamed_addr constant [13 x i8] c"centinferior\00", align 1
@.str.380 = private unnamed_addr constant [15 x i8] c"dollarinferior\00", align 1
@.str.381 = private unnamed_addr constant [15 x i8] c"periodinferior\00", align 1
@.str.382 = private unnamed_addr constant [14 x i8] c"commainferior\00", align 1
@.str.383 = private unnamed_addr constant [12 x i8] c"Agravesmall\00", align 1
@.str.384 = private unnamed_addr constant [12 x i8] c"Aacutesmall\00", align 1
@.str.385 = private unnamed_addr constant [17 x i8] c"Acircumflexsmall\00", align 1
@.str.386 = private unnamed_addr constant [12 x i8] c"Atildesmall\00", align 1
@.str.387 = private unnamed_addr constant [15 x i8] c"Adieresissmall\00", align 1
@.str.388 = private unnamed_addr constant [11 x i8] c"Aringsmall\00", align 1
@.str.389 = private unnamed_addr constant [8 x i8] c"AEsmall\00", align 1
@.str.390 = private unnamed_addr constant [14 x i8] c"Ccedillasmall\00", align 1
@.str.391 = private unnamed_addr constant [12 x i8] c"Egravesmall\00", align 1
@.str.392 = private unnamed_addr constant [12 x i8] c"Eacutesmall\00", align 1
@.str.393 = private unnamed_addr constant [17 x i8] c"Ecircumflexsmall\00", align 1
@.str.394 = private unnamed_addr constant [15 x i8] c"Edieresissmall\00", align 1
@.str.395 = private unnamed_addr constant [12 x i8] c"Igravesmall\00", align 1
@.str.396 = private unnamed_addr constant [12 x i8] c"Iacutesmall\00", align 1
@.str.397 = private unnamed_addr constant [17 x i8] c"Icircumflexsmall\00", align 1
@.str.398 = private unnamed_addr constant [15 x i8] c"Idieresissmall\00", align 1
@.str.399 = private unnamed_addr constant [9 x i8] c"Ethsmall\00", align 1
@.str.400 = private unnamed_addr constant [12 x i8] c"Ntildesmall\00", align 1
@.str.401 = private unnamed_addr constant [12 x i8] c"Ogravesmall\00", align 1
@.str.402 = private unnamed_addr constant [12 x i8] c"Oacutesmall\00", align 1
@.str.403 = private unnamed_addr constant [17 x i8] c"Ocircumflexsmall\00", align 1
@.str.404 = private unnamed_addr constant [12 x i8] c"Otildesmall\00", align 1
@.str.405 = private unnamed_addr constant [15 x i8] c"Odieresissmall\00", align 1
@.str.406 = private unnamed_addr constant [8 x i8] c"OEsmall\00", align 1
@.str.407 = private unnamed_addr constant [12 x i8] c"Oslashsmall\00", align 1
@.str.408 = private unnamed_addr constant [12 x i8] c"Ugravesmall\00", align 1
@.str.409 = private unnamed_addr constant [12 x i8] c"Uacutesmall\00", align 1
@.str.410 = private unnamed_addr constant [17 x i8] c"Ucircumflexsmall\00", align 1
@.str.411 = private unnamed_addr constant [15 x i8] c"Udieresissmall\00", align 1
@.str.412 = private unnamed_addr constant [12 x i8] c"Yacutesmall\00", align 1
@.str.413 = private unnamed_addr constant [11 x i8] c"Thornsmall\00", align 1
@.str.414 = private unnamed_addr constant [15 x i8] c"Ydieresissmall\00", align 1
@.str.415 = private unnamed_addr constant [8 x i8] c"001.000\00", align 1
@.str.416 = private unnamed_addr constant [8 x i8] c"001.001\00", align 1
@.str.417 = private unnamed_addr constant [8 x i8] c"001.002\00", align 1
@.str.418 = private unnamed_addr constant [8 x i8] c"001.003\00", align 1
@.str.419 = private unnamed_addr constant [6 x i8] c"Black\00", align 1
@.str.420 = private unnamed_addr constant [5 x i8] c"Bold\00", align 1
@.str.421 = private unnamed_addr constant [5 x i8] c"Book\00", align 1
@.str.422 = private unnamed_addr constant [6 x i8] c"Light\00", align 1
@.str.423 = private unnamed_addr constant [7 x i8] c"Medium\00", align 1
@.str.424 = private unnamed_addr constant [8 x i8] c"Regular\00", align 1
@.str.425 = private unnamed_addr constant [6 x i8] c"Roman\00", align 1
@.str.426 = private unnamed_addr constant [9 x i8] c"Semibold\00", align 1
@expert_charset = internal constant [165 x i16] [i16 1, i16 229, i16 230, i16 231, i16 232, i16 233, i16 234, i16 235, i16 236, i16 237, i16 238, i16 13, i16 14, i16 15, i16 99, i16 239, i16 240, i16 241, i16 242, i16 243, i16 244, i16 245, i16 246, i16 247, i16 248, i16 27, i16 28, i16 249, i16 250, i16 251, i16 252, i16 253, i16 254, i16 255, i16 256, i16 257, i16 258, i16 259, i16 260, i16 261, i16 262, i16 263, i16 264, i16 265, i16 266, i16 109, i16 110, i16 267, i16 268, i16 269, i16 270, i16 271, i16 272, i16 273, i16 274, i16 275, i16 276, i16 277, i16 278, i16 279, i16 280, i16 281, i16 282, i16 283, i16 284, i16 285, i16 286, i16 287, i16 288, i16 289, i16 290, i16 291, i16 292, i16 293, i16 294, i16 295, i16 296, i16 297, i16 298, i16 299, i16 300, i16 301, i16 302, i16 303, i16 304, i16 305, i16 306, i16 307, i16 308, i16 309, i16 310, i16 311, i16 312, i16 313, i16 314, i16 315, i16 316, i16 317, i16 318, i16 158, i16 155, i16 163, i16 319, i16 320, i16 321, i16 322, i16 323, i16 324, i16 325, i16 326, i16 150, i16 164, i16 169, i16 327, i16 328, i16 329, i16 330, i16 331, i16 332, i16 333, i16 334, i16 335, i16 336, i16 337, i16 338, i16 339, i16 340, i16 341, i16 342, i16 343, i16 344, i16 345, i16 346, i16 347, i16 348, i16 349, i16 350, i16 351, i16 352, i16 353, i16 354, i16 355, i16 356, i16 357, i16 358, i16 359, i16 360, i16 361, i16 362, i16 363, i16 364, i16 365, i16 366, i16 367, i16 368, i16 369, i16 370, i16 371, i16 372, i16 373, i16 374, i16 375, i16 376, i16 377, i16 378], align 16
@expert_subset_charset = internal constant [86 x i16] [i16 1, i16 231, i16 232, i16 235, i16 236, i16 237, i16 238, i16 13, i16 14, i16 15, i16 99, i16 239, i16 240, i16 241, i16 242, i16 243, i16 244, i16 245, i16 246, i16 247, i16 248, i16 27, i16 28, i16 249, i16 250, i16 251, i16 253, i16 254, i16 255, i16 256, i16 257, i16 258, i16 259, i16 260, i16 261, i16 262, i16 263, i16 264, i16 265, i16 266, i16 109, i16 110, i16 267, i16 268, i16 269, i16 270, i16 272, i16 300, i16 301, i16 302, i16 305, i16 314, i16 315, i16 158, i16 155, i16 163, i16 320, i16 321, i16 322, i16 323, i16 324, i16 325, i16 326, i16 150, i16 164, i16 169, i16 327, i16 328, i16 329, i16 330, i16 331, i16 332, i16 333, i16 334, i16 335, i16 336, i16 337, i16 338, i16 339, i16 340, i16 341, i16 342, i16 343, i16 344, i16 345, i16 346], align 16
@.str.427 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.428 = private unnamed_addr constant [7 x i8] c"Notice\00", align 1
@.str.429 = private unnamed_addr constant [9 x i8] c"FullName\00", align 1
@.str.430 = private unnamed_addr constant [11 x i8] c"FamilyName\00", align 1
@.str.431 = private unnamed_addr constant [7 x i8] c"Weight\00", align 1
@.str.432 = private unnamed_addr constant [9 x i8] c"FontBBox\00", align 1
@.str.433 = private unnamed_addr constant [11 x i8] c"BlueValues\00", align 1
@.str.434 = private unnamed_addr constant [11 x i8] c"OtherBlues\00", align 1
@.str.435 = private unnamed_addr constant [12 x i8] c"FamilyBlues\00", align 1
@.str.436 = private unnamed_addr constant [17 x i8] c"FamilyOtherBlues\00", align 1
@.str.437 = private unnamed_addr constant [6 x i8] c"StdHW\00", align 1
@.str.438 = private unnamed_addr constant [6 x i8] c"StdVW\00", align 1
@.str.439 = private unnamed_addr constant [10 x i8] c"Copyright\00", align 1
@.str.440 = private unnamed_addr constant [13 x i8] c"isFixedPitch\00", align 1
@.str.441 = private unnamed_addr constant [12 x i8] c"ItalicAngle\00", align 1
@.str.442 = private unnamed_addr constant [18 x i8] c"UnderlinePosition\00", align 1
@.str.443 = private unnamed_addr constant [19 x i8] c"UnderlineThickness\00", align 1
@.str.444 = private unnamed_addr constant [15 x i8] c"CharstringType\00", align 1
@.str.445 = private unnamed_addr constant [12 x i8] c"StrokeWidth\00", align 1
@.str.446 = private unnamed_addr constant [10 x i8] c"BlueScale\00", align 1
@.str.447 = private unnamed_addr constant [10 x i8] c"BlueShift\00", align 1
@.str.448 = private unnamed_addr constant [9 x i8] c"BlueFuzz\00", align 1
@.str.449 = private unnamed_addr constant [10 x i8] c"StemSnapH\00", align 1
@.str.450 = private unnamed_addr constant [10 x i8] c"StemSnapV\00", align 1
@.str.451 = private unnamed_addr constant [10 x i8] c"ForceBold\00", align 1
@.str.452 = private unnamed_addr constant [14 x i8] c"LanguageGroup\00", align 1
@.str.453 = private unnamed_addr constant [16 x i8] c"ExpansionFactor\00", align 1
@.str.454 = private unnamed_addr constant [14 x i8] c"SyntheticBase\00", align 1
@.str.455 = private unnamed_addr constant [11 x i8] c"PostScript\00", align 1
@.str.456 = private unnamed_addr constant [13 x i8] c"BaseFontName\00", align 1
@.str.457 = private unnamed_addr constant [14 x i8] c"BaseFontBlend\00", align 1
@.str.458 = private unnamed_addr constant [15 x i8] c"CIDFontVersion\00", align 1
@.str.459 = private unnamed_addr constant [16 x i8] c"CIDFontRevision\00", align 1
@.str.460 = private unnamed_addr constant [12 x i8] c"CIDFontType\00", align 1
@.str.461 = private unnamed_addr constant [8 x i8] c"UIDBase\00", align 1
@.str.462 = private unnamed_addr constant [9 x i8] c"FDSelect\00", align 1
@.str.463 = private unnamed_addr constant [9 x i8] c"FontName\00", align 1
@.str.464 = private unnamed_addr constant [22 x i8] c"parsecff.default_bbox\00", align 1

; Function Attrs: nounwind uwtable
define i32 @type2_font_params(%struct.ref_s* %op, %struct.charstring_font_refs_s* %pfr, %struct.gs_type1_data_s* %pdata1) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ref_s*, align 8
  %pfr.addr = alloca %struct.charstring_font_refs_s*, align 8
  %pdata1.addr = alloca %struct.gs_type1_data_s*, align 8
  %code = alloca i32, align 4
  %dwx = alloca float, align 4
  %nwx = alloca float, align 4
  %temp = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  %pirs = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %op, %struct.ref_s** %op.addr, align 8, !tbaa !1
  store %struct.charstring_font_refs_s* %pfr, %struct.charstring_font_refs_s** %pfr.addr, align 8, !tbaa !1
  store %struct.gs_type1_data_s* %pdata1, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast float* %dwx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast float* %nwx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast %struct.ref_s** %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  %interpret = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %4, i32 0, i32 1
  store i32 (%struct.gs_type1_state_s*, %struct.gs_glyph_data_s*, i32*)* @gs_type2_interpret, i32 (%struct.gs_type1_state_s*, %struct.gs_glyph_data_s*, i32*)** %interpret, align 8, !tbaa !5
  %5 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  %lenIV = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %5, i32 0, i32 4
  store i32 -1, i32* %lenIV, align 4, !tbaa !12
  %6 = load %struct.charstring_font_refs_s*, %struct.charstring_font_refs_s** %pfr.addr, align 8, !tbaa !1
  %Subrs = getelementptr inbounds %struct.charstring_font_refs_s, %struct.charstring_font_refs_s* %6, i32 0, i32 3
  %7 = load %struct.ref_s*, %struct.ref_s** %Subrs, align 8, !tbaa !13
  %call = call i32 @subr_bias(%struct.ref_s* %7) #5
  %8 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  %subroutineNumberBias = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %8, i32 0, i32 5
  store i32 %call, i32* %subroutineNumberBias, align 4, !tbaa !18
  %9 = load %struct.charstring_font_refs_s*, %struct.charstring_font_refs_s** %pfr.addr, align 8, !tbaa !1
  %Private = getelementptr inbounds %struct.charstring_font_refs_s, %struct.charstring_font_refs_s* %9, i32 0, i32 0
  %10 = load %struct.ref_s*, %struct.ref_s** %Private, align 8, !tbaa !19
  %call1 = call i32 @dict_find_string(%struct.ref_s* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), %struct.ref_s** %temp) #5
  %cmp = icmp sgt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %11 = load %struct.ref_s*, %struct.ref_s** %temp, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %12 = load i16, i16* %type_attrs, align 2, !tbaa !20
  %conv = zext i16 %12 to i32
  %and = and i32 %conv, 15360
  %cmp2 = icmp eq i32 %and, 1024
  br i1 %cmp2, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.then
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.43

if.end:                                           ; preds = %if.then
  %13 = load %struct.ref_s*, %struct.ref_s** %temp, align 8, !tbaa !1
  %14 = load %struct.charstring_font_refs_s*, %struct.charstring_font_refs_s** %pfr.addr, align 8, !tbaa !1
  %GlobalSubrs = getelementptr inbounds %struct.charstring_font_refs_s, %struct.charstring_font_refs_s* %14, i32 0, i32 4
  store %struct.ref_s* %13, %struct.ref_s** %GlobalSubrs, align 8, !tbaa !21
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %15 = load %struct.charstring_font_refs_s*, %struct.charstring_font_refs_s** %pfr.addr, align 8, !tbaa !1
  %GlobalSubrs6 = getelementptr inbounds %struct.charstring_font_refs_s, %struct.charstring_font_refs_s* %15, i32 0, i32 4
  %16 = load %struct.ref_s*, %struct.ref_s** %GlobalSubrs6, align 8, !tbaa !21
  %call7 = call i32 @subr_bias(%struct.ref_s* %16) #5
  %17 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  %gsubrNumberBias = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %17, i32 0, i32 6
  store i32 %call7, i32* %gsubrNumberBias, align 4, !tbaa !22
  %18 = load %struct.charstring_font_refs_s*, %struct.charstring_font_refs_s** %pfr.addr, align 8, !tbaa !1
  %Private8 = getelementptr inbounds %struct.charstring_font_refs_s, %struct.charstring_font_refs_s* %18, i32 0, i32 0
  %19 = load %struct.ref_s*, %struct.ref_s** %Private8, align 8, !tbaa !19
  %20 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  %gsubrNumberBias9 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %20, i32 0, i32 6
  %21 = load i32, i32* %gsubrNumberBias9, align 4, !tbaa !22
  %22 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  %gsubrNumberBias10 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %22, i32 0, i32 6
  %call11 = call i32 @dict_uint_param(%struct.ref_s* %19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 0, i32 -1, i32 %21, i32* %gsubrNumberBias10) #5
  store i32 %call11, i32* %code, align 4, !tbaa !23
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.5
  %23 = load %struct.charstring_font_refs_s*, %struct.charstring_font_refs_s** %pfr.addr, align 8, !tbaa !1
  %Private14 = getelementptr inbounds %struct.charstring_font_refs_s, %struct.charstring_font_refs_s* %23, i32 0, i32 0
  %24 = load %struct.ref_s*, %struct.ref_s** %Private14, align 8, !tbaa !19
  %call15 = call i32 @dict_float_param(%struct.ref_s* %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), double 0.000000e+00, float* %dwx) #5
  store i32 %call15, i32* %code, align 4, !tbaa !23
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then.23, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %lor.lhs.false
  %25 = load %struct.charstring_font_refs_s*, %struct.charstring_font_refs_s** %pfr.addr, align 8, !tbaa !1
  %Private19 = getelementptr inbounds %struct.charstring_font_refs_s, %struct.charstring_font_refs_s* %25, i32 0, i32 0
  %26 = load %struct.ref_s*, %struct.ref_s** %Private19, align 8, !tbaa !19
  %call20 = call i32 @dict_float_param(%struct.ref_s* %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), double 0.000000e+00, float* %nwx) #5
  store i32 %call20, i32* %code, align 4, !tbaa !23
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %lor.lhs.false.18, %lor.lhs.false, %if.end.5
  %27 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.43

if.end.24:                                        ; preds = %lor.lhs.false.18
  %28 = load float, float* %dwx, align 4, !tbaa !24
  %mul = fmul float %28, 2.560000e+02
  %conv25 = fptosi float %mul to i32
  %29 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  %defaultWidthX = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %29, i32 0, i32 8
  store i32 %conv25, i32* %defaultWidthX, align 4, !tbaa !25
  %30 = load float, float* %nwx, align 4, !tbaa !24
  %mul26 = fmul float %30, 2.560000e+02
  %conv27 = fptosi float %mul26 to i32
  %31 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  %nominalWidthX = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %31, i32 0, i32 9
  store i32 %conv27, i32* %nominalWidthX, align 4, !tbaa !26
  %32 = bitcast %struct.ref_s** %pirs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #1
  %33 = load %struct.charstring_font_refs_s*, %struct.charstring_font_refs_s** %pfr.addr, align 8, !tbaa !1
  %Private28 = getelementptr inbounds %struct.charstring_font_refs_s, %struct.charstring_font_refs_s* %33, i32 0, i32 0
  %34 = load %struct.ref_s*, %struct.ref_s** %Private28, align 8, !tbaa !19
  %call29 = call i32 @dict_find_string(%struct.ref_s* %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), %struct.ref_s** %pirs) #5
  %cmp30 = icmp sle i32 %call29, 0
  br i1 %cmp30, label %if.then.32, label %if.else

if.then.32:                                       ; preds = %if.end.24
  %35 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  %initialRandomSeed = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %35, i32 0, i32 7
  store i64 0, i64* %initialRandomSeed, align 8, !tbaa !27
  br label %if.end.42

if.else:                                          ; preds = %if.end.24
  %36 = load %struct.ref_s*, %struct.ref_s** %pirs, align 8, !tbaa !1
  %tas33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i32 0, i32 0
  %type_attrs34 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas33, i32 0, i32 0
  %37 = bitcast i16* %type_attrs34 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %37, i64 1
  %38 = load i8, i8* %arrayidx, align 1, !tbaa !28
  %conv35 = zext i8 %38 to i32
  %cmp36 = icmp eq i32 %conv35, 11
  br i1 %cmp36, label %if.else.39, label %if.then.38

if.then.38:                                       ; preds = %if.else
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.39:                                       ; preds = %if.else
  %39 = load %struct.ref_s*, %struct.ref_s** %pirs, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %40 = load i64, i64* %intval, align 8, !tbaa !29
  %41 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata1.addr, align 8, !tbaa !1
  %initialRandomSeed40 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %41, i32 0, i32 7
  store i64 %40, i64* %initialRandomSeed40, align 8, !tbaa !27
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.39
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then.32
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.42, %if.then.38
  %42 = bitcast %struct.ref_s** %pirs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.43 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.43

cleanup.43:                                       ; preds = %cleanup.cont, %cleanup, %if.then.23, %if.then.4
  %43 = bitcast %struct.ref_s** %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = bitcast float* %nwx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast float* %dwx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = load i32, i32* %retval
  ret i32 %47
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @gs_type2_interpret(%struct.gs_type1_state_s*, %struct.gs_glyph_data_s*, i32*) #2

; Function Attrs: nounwind uwtable
define internal i32 @subr_bias(%struct.ref_s* %psubrs) #0 {
entry:
  %psubrs.addr = alloca %struct.ref_s*, align 8
  %size = alloca i32, align 4
  store %struct.ref_s* %psubrs, %struct.ref_s** %psubrs.addr, align 8, !tbaa !1
  %0 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.ref_s*, %struct.ref_s** %psubrs.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 2
  %2 = load i32, i32* %rsize, align 4, !tbaa !30
  store i32 %2, i32* %size, align 4, !tbaa !23
  %3 = load i32, i32* %size, align 4, !tbaa !23
  %cmp = icmp ult i32 %3, 1240
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i32, i32* %size, align 4, !tbaa !23
  %cmp1 = icmp ult i32 %4, 33900
  %cond = select i1 %cmp1, i32 1131, i32 32768
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond2 = phi i32 [ 107, %cond.true ], [ %cond, %cond.false ]
  %5 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %5) #1
  ret i32 %cond2
}

declare i32 @dict_find_string(%struct.ref_s*, i8*, %struct.ref_s**) #2

declare i32 @dict_uint_param(%struct.ref_s*, i8*, i32, i32, i32, i32*) #2

declare i32 @dict_float_param(%struct.ref_s*, i8*, double, float*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @zbuildfont2(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %refs = alloca %struct.charstring_font_refs_s, align 8
  %build = alloca %struct.build_proc_refs_s, align 8
  %code = alloca i32, align 4
  %data1 = alloca %struct.gs_type1_data_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !31
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast %struct.charstring_font_refs_s* %refs to i8*
  call void @llvm.lifetime.start(i64 48, i8* %3) #1
  %4 = bitcast %struct.build_proc_refs_s* %build to i8*
  call void @llvm.lifetime.start(i64 32, i8* %4) #1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %6, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %7 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !40
  %8 = bitcast %struct.gs_ref_memory_s* %7 to %struct.gs_memory_s*
  %call = call i32 @build_proc_name_refs(%struct.gs_memory_s* %8, %struct.build_proc_refs_s* %build, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0)) #5
  store i32 %call, i32* %code, align 4, !tbaa !23
  %9 = bitcast %struct.gs_type1_data_s* %data1 to i8*
  call void @llvm.lifetime.start(i64 544, i8* %9) #1
  %10 = load i32, i32* %code, align 4, !tbaa !23
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call1 = call i32 @charstring_font_get_refs(%struct.ref_s* %12, %struct.charstring_font_refs_s* %refs) #5
  store i32 %call1, i32* %code, align 4, !tbaa !23
  %13 = load i32, i32* %code, align 4, !tbaa !23
  %cmp2 = icmp slt i32 %13, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %14 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %15 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call5 = call i32 @type2_font_params(%struct.ref_s* %15, %struct.charstring_font_refs_s* %refs, %struct.gs_type1_data_s* %data1) #5
  store i32 %call5, i32* %code, align 4, !tbaa !23
  %16 = load i32, i32* %code, align 4, !tbaa !23
  %cmp6 = icmp slt i32 %16, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  %17 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end.4
  %18 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %call9 = call i32 @build_charstring_font(%struct.gs_context_state_s* %18, %struct.ref_s* %19, %struct.build_proc_refs_s* %build, i32 2, %struct.charstring_font_refs_s* %refs, %struct.gs_type1_data_s* %data1, i32 16) #5
  store i32 %call9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.8, %if.then.7, %if.then.3, %if.then
  %20 = bitcast %struct.gs_type1_data_s* %data1 to i8*
  call void @llvm.lifetime.end(i64 544, i8* %20) #1
  %21 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast %struct.build_proc_refs_s* %build to i8*
  call void @llvm.lifetime.end(i64 32, i8* %22) #1
  %23 = bitcast %struct.charstring_font_refs_s* %refs to i8*
  call void @llvm.lifetime.end(i64 48, i8* %23) #1
  %24 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal i32 @zparsecff(%struct.gs_context_state_s* %i_ctx_p) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %op = alloca %struct.ref_s*, align 8
  %p1 = alloca i32, align 4
  %pe = alloca i32, align 4
  %hdr_ver = alloca i32, align 4
  %hdr_size = alloca i32, align 4
  %off_size = alloca i32, align 4
  %names = alloca %struct.tag_cff_index_t, align 4
  %topdicts = alloca %struct.tag_cff_index_t, align 4
  %strings = alloca %struct.tag_cff_index_t, align 4
  %gsubrs = alloca %struct.tag_cff_index_t, align 4
  %code = alloca i32, align 4
  %i_font = alloca i32, align 4
  %gsubrs_array = alloca %struct.ref_s, align 8
  %fontset = alloca %struct.ref_s, align 8
  %force_cidfont = alloca i32, align 4
  %data = alloca %struct.tag_cff_data_t, align 8
  %blk_wrap = alloca [1 x %struct.ref_s], align 16
  %cleanup.dest.slot = alloca i32
  %i = alloca i32, align 4
  %blk_sz = alloca i32, align 4
  %blk_cnt = alloca i32, align 4
  %len = alloca i32, align 4
  %name_data = alloca i32, align 4
  %name_len = alloca i32, align 4
  %name = alloca %struct.ref_s, align 8
  %topdict_data = alloca i32, align 4
  %topdict_len = alloca i32, align 4
  %topdict = alloca %struct.ref_s, align 8
  %buf = alloca [200 x i8], align 16
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 26
  %stack = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack, i32 0, i32 0
  %p = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack, i32 0, i32 0
  %2 = load %struct.ref_s*, %struct.ref_s** %p, align 8, !tbaa !31
  store %struct.ref_s* %2, %struct.ref_s** %op, align 8, !tbaa !1
  %3 = bitcast i32* %p1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %pe to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %hdr_ver to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %hdr_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %off_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast %struct.tag_cff_index_t* %names to i8*
  call void @llvm.lifetime.start(i64 20, i8* %8) #1
  %9 = bitcast %struct.tag_cff_index_t* %topdicts to i8*
  call void @llvm.lifetime.start(i64 20, i8* %9) #1
  %10 = bitcast %struct.tag_cff_index_t* %strings to i8*
  call void @llvm.lifetime.start(i64 20, i8* %10) #1
  %11 = bitcast %struct.tag_cff_index_t* %gsubrs to i8*
  call void @llvm.lifetime.start(i64 20, i8* %11) #1
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %i_font to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast %struct.ref_s* %gsubrs_array to i8*
  call void @llvm.lifetime.start(i64 16, i8* %14) #1
  %15 = bitcast %struct.ref_s* %fontset to i8*
  call void @llvm.lifetime.start(i64 16, i8* %15) #1
  %16 = bitcast i32* %force_cidfont to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast %struct.tag_cff_data_t* %data to i8*
  call void @llvm.lifetime.start(i64 24, i8* %17) #1
  %18 = bitcast [1 x %struct.ref_s]* %blk_wrap to i8*
  call void @llvm.lifetime.start(i64 16, i8* %18) #1
  br label %do.body

do.body:                                          ; preds = %entry
  %19 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %20 = load i16, i16* %type_attrs, align 2, !tbaa !20
  %conv = zext i16 %20 to i32
  %and = and i32 %conv, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  store i32 -7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.258

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %21 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 0
  %type_attrs3 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas2, i32 0, i32 0
  %22 = bitcast i16* %type_attrs3 to i8*
  %arrayidx = getelementptr inbounds i8, i8* %22, i64 1
  %23 = load i8, i8* %arrayidx, align 1, !tbaa !28
  %conv4 = zext i8 %23 to i32
  %cmp = icmp eq i32 %conv4, 4
  br i1 %cmp, label %if.then.6, label %if.else.73

if.then.6:                                        ; preds = %do.end
  %24 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = bitcast i32* %blk_sz to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  %26 = bitcast i32* %blk_cnt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %27 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 1
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %28 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %blk_ref = getelementptr inbounds %struct.tag_cff_data_t, %struct.tag_cff_data_t* %data, i32 0, i32 0
  store %struct.ref_s* %28, %struct.ref_s** %blk_ref, align 8, !tbaa !41
  %29 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas7, i32 0, i32 2
  %30 = load i32, i32* %rsize, align 4, !tbaa !30
  store i32 %30, i32* %blk_cnt, align 4, !tbaa !23
  %blk_ref8 = getelementptr inbounds %struct.tag_cff_data_t, %struct.tag_cff_data_t* %data, i32 0, i32 0
  %31 = load %struct.ref_s*, %struct.ref_s** %blk_ref8, align 8, !tbaa !41
  %tas9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 0
  %rsize10 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas9, i32 0, i32 2
  %32 = load i32, i32* %rsize10, align 4, !tbaa !30
  store i32 %32, i32* %blk_sz, align 4, !tbaa !23
  %length = getelementptr inbounds %struct.tag_cff_data_t, %struct.tag_cff_data_t* %data, i32 0, i32 1
  store i32 0, i32* %length, align 4, !tbaa !43
  store i32 0, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.6
  %33 = load i32, i32* %i, align 4, !tbaa !23
  %34 = load i32, i32* %blk_cnt, align 4, !tbaa !23
  %cmp11 = icmp slt i32 %33, %34
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  %36 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom = sext i32 %36 to i64
  %blk_ref13 = getelementptr inbounds %struct.tag_cff_data_t, %struct.tag_cff_data_t* %data, i32 0, i32 0
  %37 = load %struct.ref_s*, %struct.ref_s** %blk_ref13, align 8, !tbaa !41
  %arrayidx14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i64 %idxprom
  %tas15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx14, i32 0, i32 0
  %type_attrs16 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas15, i32 0, i32 0
  %38 = load i16, i16* %type_attrs16, align 2, !tbaa !20
  %conv17 = zext i16 %38 to i32
  %and18 = and i32 %conv17, 16160
  %cmp19 = icmp eq i32 %and18, 4640
  br i1 %cmp19, label %if.end.34, label %if.then.21

if.then.21:                                       ; preds = %for.body
  %39 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom22 = sext i32 %39 to i64
  %blk_ref23 = getelementptr inbounds %struct.tag_cff_data_t, %struct.tag_cff_data_t* %data, i32 0, i32 0
  %40 = load %struct.ref_s*, %struct.ref_s** %blk_ref23, align 8, !tbaa !41
  %arrayidx24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i64 %idxprom22
  %tas25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx24, i32 0, i32 0
  %type_attrs26 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas25, i32 0, i32 0
  %41 = bitcast i16* %type_attrs26 to i8*
  %arrayidx27 = getelementptr inbounds i8, i8* %41, i64 1
  %42 = load i8, i8* %arrayidx27, align 1, !tbaa !28
  %conv28 = zext i8 %42 to i32
  %cmp29 = icmp eq i32 %conv28, 18
  br i1 %cmp29, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then.21
  %43 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom31 = sext i32 %43 to i64
  %blk_ref32 = getelementptr inbounds %struct.tag_cff_data_t, %struct.tag_cff_data_t* %data, i32 0, i32 0
  %44 = load %struct.ref_s*, %struct.ref_s** %blk_ref32, align 8, !tbaa !41
  %arrayidx33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i64 %idxprom31
  %call = call i32 @check_type_failed(%struct.ref_s* %arrayidx33) #5
  br label %cond.end

cond.false:                                       ; preds = %if.then.21
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ -7, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %for.body
  %45 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom35 = sext i32 %45 to i64
  %blk_ref36 = getelementptr inbounds %struct.tag_cff_data_t, %struct.tag_cff_data_t* %data, i32 0, i32 0
  %46 = load %struct.ref_s*, %struct.ref_s** %blk_ref36, align 8, !tbaa !41
  %arrayidx37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i64 %idxprom35
  %tas38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx37, i32 0, i32 0
  %rsize39 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas38, i32 0, i32 2
  %47 = load i32, i32* %rsize39, align 4, !tbaa !30
  store i32 %47, i32* %len, align 4, !tbaa !23
  %48 = load i32, i32* %len, align 4, !tbaa !23
  %49 = load i32, i32* %blk_sz, align 4, !tbaa !23
  %cmp40 = icmp sgt i32 %48, %49
  br i1 %cmp40, label %if.then.46, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.34
  %50 = load i32, i32* %len, align 4, !tbaa !23
  %51 = load i32, i32* %blk_sz, align 4, !tbaa !23
  %cmp42 = icmp slt i32 %50, %51
  br i1 %cmp42, label %land.lhs.true, label %if.end.47

land.lhs.true:                                    ; preds = %lor.lhs.false
  %52 = load i32, i32* %i, align 4, !tbaa !23
  %53 = load i32, i32* %blk_cnt, align 4, !tbaa !23
  %sub = sub nsw i32 %53, 1
  %cmp44 = icmp slt i32 %52, %sub
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %land.lhs.true, %if.end.34
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.47:                                        ; preds = %land.lhs.true, %lor.lhs.false
  %54 = load i32, i32* %len, align 4, !tbaa !23
  %length48 = getelementptr inbounds %struct.tag_cff_data_t, %struct.tag_cff_data_t* %data, i32 0, i32 1
  %55 = load i32, i32* %length48, align 4, !tbaa !43
  %add = add i32 %55, %54
  store i32 %add, i32* %length48, align 4, !tbaa !43
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.47, %if.then.46, %cond.end
  %56 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.68 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %57 = load i32, i32* %i, align 4, !tbaa !23
  %inc = add nsw i32 %57, 1
  store i32 %inc, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %length49 = getelementptr inbounds %struct.tag_cff_data_t, %struct.tag_cff_data_t* %data, i32 0, i32 1
  %58 = load i32, i32* %length49, align 4, !tbaa !43
  %cmp50 = icmp eq i32 %58, 0
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %for.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.68

if.end.53:                                        ; preds = %for.end
  %59 = load i32, i32* %blk_cnt, align 4, !tbaa !23
  %cmp54 = icmp eq i32 %59, 1
  br i1 %cmp54, label %if.then.56, label %if.else

if.then.56:                                       ; preds = %if.end.53
  %mask = getelementptr inbounds %struct.tag_cff_data_t, %struct.tag_cff_data_t* %data, i32 0, i32 3
  store i32 65535, i32* %mask, align 4, !tbaa !44
  %shift = getelementptr inbounds %struct.tag_cff_data_t, %struct.tag_cff_data_t* %data, i32 0, i32 2
  store i32 16, i32* %shift, align 4, !tbaa !45
  br label %if.end.67

if.else:                                          ; preds = %if.end.53
  %60 = load i32, i32* %blk_sz, align 4, !tbaa !23
  %sub57 = sub nsw i32 %60, 1
  %mask58 = getelementptr inbounds %struct.tag_cff_data_t, %struct.tag_cff_data_t* %data, i32 0, i32 3
  store i32 %sub57, i32* %mask58, align 4, !tbaa !44
  %mask59 = getelementptr inbounds %struct.tag_cff_data_t, %struct.tag_cff_data_t* %data, i32 0, i32 3
  %61 = load i32, i32* %mask59, align 4, !tbaa !44
  %62 = load i32, i32* %blk_sz, align 4, !tbaa !23
  %and60 = and i32 %61, %62
  %tobool61 = icmp ne i32 %and60, 0
  br i1 %tobool61, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %if.else
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.68

if.end.63:                                        ; preds = %if.else
  %63 = load i32, i32* %blk_sz, align 4, !tbaa !23
  %rem = srem i32 %63, 37
  %idxprom64 = sext i32 %rem to i64
  %arrayidx65 = getelementptr inbounds [37 x i32], [37 x i32]* @zparsecff.mod2shift, i32 0, i64 %idxprom64
  %64 = load i32, i32* %arrayidx65, align 4, !tbaa !23
  %shift66 = getelementptr inbounds %struct.tag_cff_data_t, %struct.tag_cff_data_t* %data, i32 0, i32 2
  store i32 %64, i32* %shift66, align 4, !tbaa !45
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.63, %if.then.56
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.68

cleanup.68:                                       ; preds = %if.end.67, %if.then.62, %if.then.52, %cleanup
  %65 = bitcast i32* %blk_cnt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast i32* %blk_sz to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %cleanup.dest.71 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.71, label %cleanup.258 [
    i32 0, label %cleanup.cont.72
  ]

cleanup.cont.72:                                  ; preds = %cleanup.68
  br label %if.end.90

if.else.73:                                       ; preds = %do.end
  %68 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas74 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %68, i32 0, i32 0
  %type_attrs75 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas74, i32 0, i32 0
  %69 = bitcast i16* %type_attrs75 to i8*
  %arrayidx76 = getelementptr inbounds i8, i8* %69, i64 1
  %70 = load i8, i8* %arrayidx76, align 1, !tbaa !28
  %conv77 = zext i8 %70 to i32
  %cmp78 = icmp eq i32 %conv77, 18
  br i1 %cmp78, label %if.then.80, label %if.else.88

if.then.80:                                       ; preds = %if.else.73
  %arraydecay = getelementptr inbounds [1 x %struct.ref_s], [1 x %struct.ref_s]* %blk_wrap, i32 0, i32 0
  %blk_ref81 = getelementptr inbounds %struct.tag_cff_data_t, %struct.tag_cff_data_t* %data, i32 0, i32 0
  store %struct.ref_s* %arraydecay, %struct.ref_s** %blk_ref81, align 8, !tbaa !41
  %arrayidx82 = getelementptr inbounds [1 x %struct.ref_s], [1 x %struct.ref_s]* %blk_wrap, i32 0, i64 0
  %71 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %72 = bitcast %struct.ref_s* %arrayidx82 to i8*
  %73 = bitcast %struct.ref_s* %71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %72, i8* %73, i64 16, i32 8, i1 false), !tbaa.struct !46
  %74 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %tas83 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %74, i32 0, i32 0
  %rsize84 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas83, i32 0, i32 2
  %75 = load i32, i32* %rsize84, align 4, !tbaa !30
  %length85 = getelementptr inbounds %struct.tag_cff_data_t, %struct.tag_cff_data_t* %data, i32 0, i32 1
  store i32 %75, i32* %length85, align 4, !tbaa !43
  %mask86 = getelementptr inbounds %struct.tag_cff_data_t, %struct.tag_cff_data_t* %data, i32 0, i32 3
  store i32 65535, i32* %mask86, align 4, !tbaa !44
  %shift87 = getelementptr inbounds %struct.tag_cff_data_t, %struct.tag_cff_data_t* %data, i32 0, i32 2
  store i32 16, i32* %shift87, align 4, !tbaa !45
  br label %if.end.89

if.else.88:                                       ; preds = %if.else.73
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.258

if.end.89:                                        ; preds = %if.then.80
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %cleanup.cont.72
  %76 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx91 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %76, i64 -1
  %tas92 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx91, i32 0, i32 0
  %type_attrs93 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas92, i32 0, i32 0
  %77 = bitcast i16* %type_attrs93 to i8*
  %arrayidx94 = getelementptr inbounds i8, i8* %77, i64 1
  %78 = load i8, i8* %arrayidx94, align 1, !tbaa !28
  %conv95 = zext i8 %78 to i32
  %cmp96 = icmp eq i32 %conv95, 1
  br i1 %cmp96, label %if.end.101, label %if.then.98

if.then.98:                                       ; preds = %if.end.90
  %79 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx99 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %79, i64 -1
  %call100 = call i32 @check_type_failed(%struct.ref_s* %arrayidx99) #5
  store i32 %call100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.258

if.end.101:                                       ; preds = %if.end.90
  %80 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %arrayidx102 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %80, i64 -1
  %value103 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx102, i32 0, i32 1
  %boolval = bitcast %union.v* %value103 to i16*
  %81 = load i16, i16* %boolval, align 2, !tbaa !47
  %conv104 = zext i16 %81 to i32
  store i32 %conv104, i32* %force_cidfont, align 4, !tbaa !23
  store i32 0, i32* %p1, align 4, !tbaa !23
  %82 = load i32, i32* %p1, align 4, !tbaa !23
  %length105 = getelementptr inbounds %struct.tag_cff_data_t, %struct.tag_cff_data_t* %data, i32 0, i32 1
  %83 = load i32, i32* %length105, align 4, !tbaa !43
  %add106 = add i32 %82, %83
  store i32 %add106, i32* %pe, align 4, !tbaa !23
  %84 = load i32, i32* %pe, align 4, !tbaa !23
  %cmp107 = icmp ult i32 %84, 8
  br i1 %cmp107, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %if.end.101
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.258

if.end.110:                                       ; preds = %if.end.101
  %85 = load i32, i32* %p1, align 4, !tbaa !23
  %86 = load i32, i32* %pe, align 4, !tbaa !23
  %call111 = call i32 @card8(i32* %hdr_ver, %struct.tag_cff_data_t* %data, i32 %85, i32 %86) #5
  store i32 %call111, i32* %code, align 4, !tbaa !23
  %cmp112 = icmp slt i32 %call111, 0
  br i1 %cmp112, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %if.end.110
  %87 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %87, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.258

if.end.115:                                       ; preds = %if.end.110
  %88 = load i32, i32* %hdr_ver, align 4, !tbaa !23
  %cmp116 = icmp ne i32 %88, 1
  br i1 %cmp116, label %if.then.118, label %if.end.119

if.then.118:                                      ; preds = %if.end.115
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.258

if.end.119:                                       ; preds = %if.end.115
  %89 = load i32, i32* %p1, align 4, !tbaa !23
  %add120 = add i32 %89, 2
  %90 = load i32, i32* %pe, align 4, !tbaa !23
  %call121 = call i32 @card8(i32* %hdr_size, %struct.tag_cff_data_t* %data, i32 %add120, i32 %90) #5
  store i32 %call121, i32* %code, align 4, !tbaa !23
  %cmp122 = icmp slt i32 %call121, 0
  br i1 %cmp122, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %if.end.119
  %91 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %91, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.258

if.end.125:                                       ; preds = %if.end.119
  %92 = load i32, i32* %p1, align 4, !tbaa !23
  %add126 = add i32 %92, 3
  %93 = load i32, i32* %pe, align 4, !tbaa !23
  %call127 = call i32 @card8(i32* %off_size, %struct.tag_cff_data_t* %data, i32 %add126, i32 %93) #5
  store i32 %call127, i32* %code, align 4, !tbaa !23
  %cmp128 = icmp slt i32 %call127, 0
  br i1 %cmp128, label %if.then.130, label %if.end.131

if.then.130:                                      ; preds = %if.end.125
  %94 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %94, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.258

if.end.131:                                       ; preds = %if.end.125
  %95 = load i32, i32* %p1, align 4, !tbaa !23
  %96 = load i32, i32* %hdr_size, align 4, !tbaa !23
  %add132 = add i32 %95, %96
  %97 = load i32, i32* %pe, align 4, !tbaa !23
  %call133 = call i32 @parse_index(%struct.tag_cff_index_t* %names, %struct.tag_cff_data_t* %data, i32 %add132, i32 %97) #5
  store i32 %call133, i32* %code, align 4, !tbaa !23
  %cmp134 = icmp slt i32 %call133, 0
  br i1 %cmp134, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %if.end.131
  %98 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %98, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.258

if.end.137:                                       ; preds = %if.end.131
  %end = getelementptr inbounds %struct.tag_cff_index_t, %struct.tag_cff_index_t* %names, i32 0, i32 1
  %99 = load i32, i32* %end, align 4, !tbaa !48
  %100 = load i32, i32* %pe, align 4, !tbaa !23
  %call138 = call i32 @parse_index(%struct.tag_cff_index_t* %topdicts, %struct.tag_cff_data_t* %data, i32 %99, i32 %100) #5
  store i32 %call138, i32* %code, align 4, !tbaa !23
  %cmp139 = icmp slt i32 %call138, 0
  br i1 %cmp139, label %if.then.141, label %if.end.142

if.then.141:                                      ; preds = %if.end.137
  %101 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %101, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.258

if.end.142:                                       ; preds = %if.end.137
  %end143 = getelementptr inbounds %struct.tag_cff_index_t, %struct.tag_cff_index_t* %topdicts, i32 0, i32 1
  %102 = load i32, i32* %end143, align 4, !tbaa !48
  %103 = load i32, i32* %pe, align 4, !tbaa !23
  %call144 = call i32 @parse_index(%struct.tag_cff_index_t* %strings, %struct.tag_cff_data_t* %data, i32 %102, i32 %103) #5
  store i32 %call144, i32* %code, align 4, !tbaa !23
  %cmp145 = icmp slt i32 %call144, 0
  br i1 %cmp145, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %if.end.142
  %104 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %104, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.258

if.end.148:                                       ; preds = %if.end.142
  %end149 = getelementptr inbounds %struct.tag_cff_index_t, %struct.tag_cff_index_t* %strings, i32 0, i32 1
  %105 = load i32, i32* %end149, align 4, !tbaa !48
  %106 = load i32, i32* %pe, align 4, !tbaa !23
  %call150 = call i32 @parse_index(%struct.tag_cff_index_t* %gsubrs, %struct.tag_cff_data_t* %data, i32 %105, i32 %106) #5
  store i32 %call150, i32* %code, align 4, !tbaa !23
  %cmp151 = icmp slt i32 %call150, 0
  br i1 %cmp151, label %if.then.153, label %if.end.154

if.then.153:                                      ; preds = %if.end.148
  %107 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %107, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.258

if.end.154:                                       ; preds = %if.end.148
  %count = getelementptr inbounds %struct.tag_cff_index_t, %struct.tag_cff_index_t* %gsubrs, i32 0, i32 4
  %108 = load i32, i32* %count, align 4, !tbaa !50
  %tobool155 = icmp ne i32 %108, 0
  br i1 %tobool155, label %if.then.156, label %if.end.162

if.then.156:                                      ; preds = %if.end.154
  %109 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call157 = call i32 @make_stringarray_from_index(%struct.gs_context_state_s* %109, %struct.ref_s* %gsubrs_array, %struct.tag_cff_index_t* %gsubrs, %struct.tag_cff_data_t* %data) #5
  store i32 %call157, i32* %code, align 4, !tbaa !23
  %cmp158 = icmp slt i32 %call157, 0
  br i1 %cmp158, label %if.then.160, label %if.end.161

if.then.160:                                      ; preds = %if.then.156
  %110 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %110, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.258

if.end.161:                                       ; preds = %if.then.156
  br label %if.end.162

if.end.162:                                       ; preds = %if.end.161, %if.end.154
  %count163 = getelementptr inbounds %struct.tag_cff_index_t, %struct.tag_cff_index_t* %names, i32 0, i32 4
  %111 = load i32, i32* %count163, align 4, !tbaa !50
  %cmp164 = icmp uge i32 %111, 65535
  br i1 %cmp164, label %if.then.166, label %if.end.167

if.then.166:                                      ; preds = %if.end.162
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.258

if.end.167:                                       ; preds = %if.end.162
  %112 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %112, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %113 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !40
  %count168 = getelementptr inbounds %struct.tag_cff_index_t, %struct.tag_cff_index_t* %names, i32 0, i32 4
  %114 = load i32, i32* %count168, align 4, !tbaa !50
  %call169 = call i32 @dict_alloc(%struct.gs_ref_memory_s* %113, i32 %114, %struct.ref_s* %fontset) #5
  store i32 %call169, i32* %code, align 4, !tbaa !23
  %cmp170 = icmp slt i32 %call169, 0
  br i1 %cmp170, label %if.then.172, label %if.end.173

if.then.172:                                      ; preds = %if.end.167
  %115 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %115, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.258

if.end.173:                                       ; preds = %if.end.167
  store i32 0, i32* %i_font, align 4, !tbaa !23
  br label %for.cond.174

for.cond.174:                                     ; preds = %for.inc.251, %if.end.173
  %116 = load i32, i32* %i_font, align 4, !tbaa !23
  %count175 = getelementptr inbounds %struct.tag_cff_index_t, %struct.tag_cff_index_t* %names, i32 0, i32 4
  %117 = load i32, i32* %count175, align 4, !tbaa !50
  %cmp176 = icmp ult i32 %116, %117
  br i1 %cmp176, label %for.body.178, label %for.end.253

for.body.178:                                     ; preds = %for.cond.174
  %118 = bitcast i32* %name_data to i8*
  call void @llvm.lifetime.start(i64 4, i8* %118) #1
  %119 = bitcast i32* %name_len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %119) #1
  %120 = bitcast %struct.ref_s* %name to i8*
  call void @llvm.lifetime.start(i64 16, i8* %120) #1
  %121 = bitcast i32* %topdict_data to i8*
  call void @llvm.lifetime.start(i64 4, i8* %121) #1
  %122 = bitcast i32* %topdict_len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %122) #1
  %123 = bitcast %struct.ref_s* %topdict to i8*
  call void @llvm.lifetime.start(i64 16, i8* %123) #1
  %124 = bitcast [200 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 200, i8* %124) #1
  %125 = load i32, i32* %i_font, align 4, !tbaa !23
  %call179 = call i32 @peek_index(i32* %name_data, i32* %name_len, %struct.tag_cff_index_t* %names, %struct.tag_cff_data_t* %data, i32 %125) #5
  store i32 %call179, i32* %code, align 4, !tbaa !23
  %cmp180 = icmp slt i32 %call179, 0
  br i1 %cmp180, label %if.then.182, label %if.end.183

if.then.182:                                      ; preds = %for.body.178
  %126 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %126, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.242

if.end.183:                                       ; preds = %for.body.178
  %127 = load i32, i32* %name_len, align 4, !tbaa !23
  %cmp184 = icmp eq i32 %127, 0
  br i1 %cmp184, label %if.then.186, label %if.end.187

if.then.186:                                      ; preds = %if.end.183
  store i32 9, i32* %cleanup.dest.slot
  br label %cleanup.242

if.end.187:                                       ; preds = %if.end.183
  %128 = load i32, i32* %name_len, align 4, !tbaa !23
  %conv188 = zext i32 %128 to i64
  %cmp189 = icmp ugt i64 %conv188, 200
  br i1 %cmp189, label %if.then.191, label %if.end.192

if.then.191:                                      ; preds = %if.end.187
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.242

if.end.192:                                       ; preds = %if.end.187
  %arraydecay193 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 0
  %129 = load i32, i32* %name_data, align 4, !tbaa !23
  %130 = load i32, i32* %name_len, align 4, !tbaa !23
  %call194 = call i32 @get_cff_string(i8* %arraydecay193, %struct.tag_cff_data_t* %data, i32 %129, i32 %130) #5
  store i32 %call194, i32* %code, align 4, !tbaa !23
  %cmp195 = icmp slt i32 %call194, 0
  br i1 %cmp195, label %if.then.197, label %if.end.198

if.then.197:                                      ; preds = %if.end.192
  %131 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %131, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.242

if.end.198:                                       ; preds = %if.end.192
  %arrayidx199 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i64 0
  %132 = load i8, i8* %arrayidx199, align 1, !tbaa !28
  %conv200 = zext i8 %132 to i32
  %cmp201 = icmp eq i32 %conv200, 0
  br i1 %cmp201, label %if.then.203, label %if.end.204

if.then.203:                                      ; preds = %if.end.198
  store i32 9, i32* %cleanup.dest.slot
  br label %cleanup.242

if.end.204:                                       ; preds = %if.end.198
  %133 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory205 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %133, i32 0, i32 1
  %current206 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory205, i32 0, i32 0
  %134 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current206, align 8, !tbaa !40
  %135 = bitcast %struct.gs_ref_memory_s* %134 to %struct.gs_memory_s*
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %135, i32 0, i32 2
  %136 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !51
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %136, i32 0, i32 16
  %137 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !54
  %arraydecay207 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 0
  %138 = load i32, i32* %name_len, align 4, !tbaa !23
  %call208 = call i32 @names_ref(%struct.name_table_s* %137, i8* %arraydecay207, i32 %138, %struct.ref_s* %name, i32 1) #5
  store i32 %call208, i32* %code, align 4, !tbaa !23
  %cmp209 = icmp slt i32 %call208, 0
  br i1 %cmp209, label %if.then.211, label %if.end.212

if.then.211:                                      ; preds = %if.end.204
  %139 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %139, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.242

if.end.212:                                       ; preds = %if.end.204
  %140 = load i32, i32* %i_font, align 4, !tbaa !23
  %call213 = call i32 @peek_index(i32* %topdict_data, i32* %topdict_len, %struct.tag_cff_index_t* %topdicts, %struct.tag_cff_data_t* %data, i32 %140) #5
  store i32 %call213, i32* %code, align 4, !tbaa !23
  %cmp214 = icmp slt i32 %call213, 0
  br i1 %cmp214, label %if.then.216, label %if.end.217

if.then.216:                                      ; preds = %if.end.212
  %141 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %141, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.242

if.end.217:                                       ; preds = %if.end.212
  %142 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory218 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %142, i32 0, i32 1
  %current219 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory218, i32 0, i32 0
  %143 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current219, align 8, !tbaa !40
  %call220 = call i32 @dict_alloc(%struct.gs_ref_memory_s* %143, i32 20, %struct.ref_s* %topdict) #5
  store i32 %call220, i32* %code, align 4, !tbaa !23
  %cmp221 = icmp slt i32 %call220, 0
  br i1 %cmp221, label %if.then.223, label %if.end.224

if.then.223:                                      ; preds = %if.end.217
  %144 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %144, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.242

if.end.224:                                       ; preds = %if.end.217
  %145 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %145, i32 0, i32 24
  %call225 = call i32 @dict_put(%struct.ref_s* %fontset, %struct.ref_s* %name, %struct.ref_s* %topdict, %struct.dict_stack_s* %dict_stack) #5
  store i32 %call225, i32* %code, align 4, !tbaa !23
  %cmp226 = icmp slt i32 %call225, 0
  br i1 %cmp226, label %if.then.228, label %if.end.229

if.then.228:                                      ; preds = %if.end.224
  %146 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %146, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.242

if.end.229:                                       ; preds = %if.end.224
  %147 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %count230 = getelementptr inbounds %struct.tag_cff_index_t, %struct.tag_cff_index_t* %gsubrs, i32 0, i32 4
  %148 = load i32, i32* %count230, align 4, !tbaa !50
  %tobool231 = icmp ne i32 %148, 0
  br i1 %tobool231, label %cond.true.232, label %cond.false.233

cond.true.232:                                    ; preds = %if.end.229
  br label %cond.end.234

cond.false.233:                                   ; preds = %if.end.229
  br label %cond.end.234

cond.end.234:                                     ; preds = %cond.false.233, %cond.true.232
  %cond235 = phi %struct.ref_s* [ %gsubrs_array, %cond.true.232 ], [ null, %cond.false.233 ]
  %149 = load i32, i32* %topdict_data, align 4, !tbaa !23
  %150 = load i32, i32* %topdict_data, align 4, !tbaa !23
  %151 = load i32, i32* %topdict_len, align 4, !tbaa !23
  %add236 = add i32 %150, %151
  %152 = load i32, i32* %p1, align 4, !tbaa !23
  %153 = load i32, i32* %pe, align 4, !tbaa !23
  %154 = load i32, i32* %force_cidfont, align 4, !tbaa !23
  %call237 = call i32 @parse_font(%struct.gs_context_state_s* %147, %struct.ref_s* %topdict, %struct.tag_cff_index_t* %strings, %struct.ref_s* %cond235, %struct.tag_cff_data_t* %data, i32 %149, i32 %add236, i32 %152, i32 %153, i32 %154) #5
  store i32 %call237, i32* %code, align 4, !tbaa !23
  %cmp238 = icmp slt i32 %call237, 0
  br i1 %cmp238, label %if.then.240, label %if.end.241

if.then.240:                                      ; preds = %cond.end.234
  %155 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %155, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.242

if.end.241:                                       ; preds = %cond.end.234
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.242

cleanup.242:                                      ; preds = %if.end.241, %if.then.240, %if.then.228, %if.then.223, %if.then.216, %if.then.211, %if.then.203, %if.then.197, %if.then.191, %if.then.186, %if.then.182
  %156 = bitcast [200 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 200, i8* %156) #1
  %157 = bitcast %struct.ref_s* %topdict to i8*
  call void @llvm.lifetime.end(i64 16, i8* %157) #1
  %158 = bitcast i32* %topdict_len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %158) #1
  %159 = bitcast i32* %topdict_data to i8*
  call void @llvm.lifetime.end(i64 4, i8* %159) #1
  %160 = bitcast %struct.ref_s* %name to i8*
  call void @llvm.lifetime.end(i64 16, i8* %160) #1
  %161 = bitcast i32* %name_len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %161) #1
  %162 = bitcast i32* %name_data to i8*
  call void @llvm.lifetime.end(i64 4, i8* %162) #1
  %cleanup.dest.249 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.249, label %cleanup.258 [
    i32 0, label %cleanup.cont.250
    i32 9, label %for.inc.251
  ]

cleanup.cont.250:                                 ; preds = %cleanup.242
  br label %for.inc.251

for.inc.251:                                      ; preds = %cleanup.cont.250, %cleanup.242
  %163 = load i32, i32* %i_font, align 4, !tbaa !23
  %inc252 = add i32 %163, 1
  store i32 %inc252, i32* %i_font, align 4, !tbaa !23
  br label %for.cond.174

for.end.253:                                      ; preds = %for.cond.174
  %164 = load %struct.ref_s*, %struct.ref_s** %op, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %164, i64 -1
  %165 = bitcast %struct.ref_s* %add.ptr to i8*
  %166 = bitcast %struct.ref_s* %fontset to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %165, i8* %166, i64 16, i32 8, i1 false), !tbaa.struct !46
  %167 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %op_stack254 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %167, i32 0, i32 26
  %stack255 = getelementptr inbounds %struct.op_stack_s, %struct.op_stack_s* %op_stack254, i32 0, i32 0
  %p256 = getelementptr inbounds %struct.ref_stack_s, %struct.ref_stack_s* %stack255, i32 0, i32 0
  %168 = load %struct.ref_s*, %struct.ref_s** %p256, align 8, !tbaa !31
  %add.ptr257 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %168, i64 -1
  store %struct.ref_s* %add.ptr257, %struct.ref_s** %p256, align 8, !tbaa !31
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.258

cleanup.258:                                      ; preds = %for.end.253, %cleanup.242, %if.then.172, %if.then.166, %if.then.160, %if.then.153, %if.then.147, %if.then.141, %if.then.136, %if.then.130, %if.then.124, %if.then.118, %if.then.114, %if.then.109, %if.then.98, %if.else.88, %cleanup.68, %if.then
  %169 = bitcast [1 x %struct.ref_s]* %blk_wrap to i8*
  call void @llvm.lifetime.end(i64 16, i8* %169) #1
  %170 = bitcast %struct.tag_cff_data_t* %data to i8*
  call void @llvm.lifetime.end(i64 24, i8* %170) #1
  %171 = bitcast i32* %force_cidfont to i8*
  call void @llvm.lifetime.end(i64 4, i8* %171) #1
  %172 = bitcast %struct.ref_s* %fontset to i8*
  call void @llvm.lifetime.end(i64 16, i8* %172) #1
  %173 = bitcast %struct.ref_s* %gsubrs_array to i8*
  call void @llvm.lifetime.end(i64 16, i8* %173) #1
  %174 = bitcast i32* %i_font to i8*
  call void @llvm.lifetime.end(i64 4, i8* %174) #1
  %175 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %175) #1
  %176 = bitcast %struct.tag_cff_index_t* %gsubrs to i8*
  call void @llvm.lifetime.end(i64 20, i8* %176) #1
  %177 = bitcast %struct.tag_cff_index_t* %strings to i8*
  call void @llvm.lifetime.end(i64 20, i8* %177) #1
  %178 = bitcast %struct.tag_cff_index_t* %topdicts to i8*
  call void @llvm.lifetime.end(i64 20, i8* %178) #1
  %179 = bitcast %struct.tag_cff_index_t* %names to i8*
  call void @llvm.lifetime.end(i64 20, i8* %179) #1
  %180 = bitcast i32* %off_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %180) #1
  %181 = bitcast i32* %hdr_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %181) #1
  %182 = bitcast i32* %hdr_ver to i8*
  call void @llvm.lifetime.end(i64 4, i8* %182) #1
  %183 = bitcast i32* %pe to i8*
  call void @llvm.lifetime.end(i64 4, i8* %183) #1
  %184 = bitcast i32* %p1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %184) #1
  %185 = bitcast %struct.ref_s** %op to i8*
  call void @llvm.lifetime.end(i64 8, i8* %185) #1
  %186 = load i32, i32* %retval
  ret i32 %186
}

declare i32 @build_proc_name_refs(%struct.gs_memory_s*, %struct.build_proc_refs_s*, i8*, i8*) #2

declare i32 @charstring_font_get_refs(%struct.ref_s*, %struct.charstring_font_refs_s*) #2

declare i32 @build_charstring_font(%struct.gs_context_state_s*, %struct.ref_s*, %struct.build_proc_refs_s*, i32, %struct.charstring_font_refs_s*, %struct.gs_type1_data_s*, i32) #2

declare i32 @check_type_failed(%struct.ref_s*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal i32 @card8(i32* %u, %struct.tag_cff_data_t* %o, i32 %p, i32 %pe) #0 {
entry:
  %retval = alloca i32, align 4
  %u.addr = alloca i32*, align 8
  %o.addr = alloca %struct.tag_cff_data_t*, align 8
  %p.addr = alloca i32, align 4
  %pe.addr = alloca i32, align 4
  store i32* %u, i32** %u.addr, align 8, !tbaa !1
  store %struct.tag_cff_data_t* %o, %struct.tag_cff_data_t** %o.addr, align 8, !tbaa !1
  store i32 %p, i32* %p.addr, align 4, !tbaa !23
  store i32 %pe, i32* %pe.addr, align 4, !tbaa !23
  %0 = load i32, i32* %pe.addr, align 4, !tbaa !23
  %1 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %o.addr, align 8, !tbaa !1
  %length = getelementptr inbounds %struct.tag_cff_data_t, %struct.tag_cff_data_t* %1, i32 0, i32 1
  %2 = load i32, i32* %length, align 4, !tbaa !43
  %cmp = icmp ugt i32 %0, %2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %p.addr, align 4, !tbaa !23
  %4 = load i32, i32* %pe.addr, align 4, !tbaa !23
  %sub = sub i32 %4, 1
  %cmp1 = icmp ugt i32 %3, %sub
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -15, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i32, i32* %p.addr, align 4, !tbaa !23
  %6 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %o.addr, align 8, !tbaa !1
  %mask = getelementptr inbounds %struct.tag_cff_data_t, %struct.tag_cff_data_t* %6, i32 0, i32 3
  %7 = load i32, i32* %mask, align 4, !tbaa !44
  %and = and i32 %5, %7
  %idxprom = zext i32 %and to i64
  %8 = load i32, i32* %p.addr, align 4, !tbaa !23
  %9 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %o.addr, align 8, !tbaa !1
  %shift = getelementptr inbounds %struct.tag_cff_data_t, %struct.tag_cff_data_t* %9, i32 0, i32 2
  %10 = load i32, i32* %shift, align 4, !tbaa !45
  %shr = lshr i32 %8, %10
  %idxprom2 = zext i32 %shr to i64
  %11 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %o.addr, align 8, !tbaa !1
  %blk_ref = getelementptr inbounds %struct.tag_cff_data_t, %struct.tag_cff_data_t* %11, i32 0, i32 0
  %12 = load %struct.ref_s*, %struct.ref_s** %blk_ref, align 8, !tbaa !41
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 %idxprom2
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 1
  %bytes = bitcast %union.v* %value to i8**
  %13 = load i8*, i8** %bytes, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8, i8* %13, i64 %idxprom
  %14 = load i8, i8* %arrayidx3, align 1, !tbaa !28
  %conv = zext i8 %14 to i32
  %15 = load i32*, i32** %u.addr, align 8, !tbaa !1
  store i32 %conv, i32* %15, align 4, !tbaa !23
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @parse_index(%struct.tag_cff_index_t* %x, %struct.tag_cff_data_t* %data, i32 %p, i32 %pe) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.tag_cff_index_t*, align 8
  %data.addr = alloca %struct.tag_cff_data_t*, align 8
  %p.addr = alloca i32, align 4
  %pe.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %eod = alloca i32, align 4
  store %struct.tag_cff_index_t* %x, %struct.tag_cff_index_t** %x.addr, align 8, !tbaa !1
  store %struct.tag_cff_data_t* %data, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  store i32 %p, i32* %p.addr, align 4, !tbaa !23
  store i32 %pe, i32* %pe.addr, align 4, !tbaa !23
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %p.addr, align 4, !tbaa !23
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.tag_cff_index_t*, %struct.tag_cff_index_t** %x.addr, align 8, !tbaa !1
  %3 = bitcast %struct.tag_cff_index_t* %2 to i8*
  %call = call i8* @memset(i8* %3, i32 0, i64 20) #6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.48

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %p.addr, align 4, !tbaa !23
  %5 = load %struct.tag_cff_index_t*, %struct.tag_cff_index_t** %x.addr, align 8, !tbaa !1
  %start = getelementptr inbounds %struct.tag_cff_index_t, %struct.tag_cff_index_t* %5, i32 0, i32 0
  store i32 %4, i32* %start, align 4, !tbaa !56
  %6 = load %struct.tag_cff_index_t*, %struct.tag_cff_index_t** %x.addr, align 8, !tbaa !1
  %count = getelementptr inbounds %struct.tag_cff_index_t, %struct.tag_cff_index_t* %6, i32 0, i32 4
  %7 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %8 = load i32, i32* %p.addr, align 4, !tbaa !23
  %9 = load i32, i32* %pe.addr, align 4, !tbaa !23
  %call1 = call i32 @card16(i32* %count, %struct.tag_cff_data_t* %7, i32 %8, i32 %9) #5
  store i32 %call1, i32* %code, align 4, !tbaa !23
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %10 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.48

if.end.4:                                         ; preds = %if.end
  %11 = load %struct.tag_cff_index_t*, %struct.tag_cff_index_t** %x.addr, align 8, !tbaa !1
  %count5 = getelementptr inbounds %struct.tag_cff_index_t, %struct.tag_cff_index_t* %11, i32 0, i32 4
  %12 = load i32, i32* %count5, align 4, !tbaa !50
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then.6, label %if.else.42

if.then.6:                                        ; preds = %if.end.4
  %13 = bitcast i32* %eod to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load %struct.tag_cff_index_t*, %struct.tag_cff_index_t** %x.addr, align 8, !tbaa !1
  %offsize = getelementptr inbounds %struct.tag_cff_index_t, %struct.tag_cff_index_t* %14, i32 0, i32 3
  %15 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %16 = load i32, i32* %p.addr, align 4, !tbaa !23
  %add = add i32 %16, 2
  %17 = load i32, i32* %pe.addr, align 4, !tbaa !23
  %call7 = call i32 @card8(i32* %offsize, %struct.tag_cff_data_t* %15, i32 %add, i32 %17) #5
  store i32 %call7, i32* %code, align 4, !tbaa !23
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.then.6
  %18 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.then.6
  %19 = load %struct.tag_cff_index_t*, %struct.tag_cff_index_t** %x.addr, align 8, !tbaa !1
  %offsize11 = getelementptr inbounds %struct.tag_cff_index_t, %struct.tag_cff_index_t* %19, i32 0, i32 3
  %20 = load i32, i32* %offsize11, align 4, !tbaa !57
  %cmp12 = icmp eq i32 %20, 0
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end.10
  %21 = load %struct.tag_cff_index_t*, %struct.tag_cff_index_t** %x.addr, align 8, !tbaa !1
  %count14 = getelementptr inbounds %struct.tag_cff_index_t, %struct.tag_cff_index_t* %21, i32 0, i32 4
  store i32 0, i32* %count14, align 4, !tbaa !50
  %22 = load %struct.tag_cff_index_t*, %struct.tag_cff_index_t** %x.addr, align 8, !tbaa !1
  %data15 = getelementptr inbounds %struct.tag_cff_index_t, %struct.tag_cff_index_t* %22, i32 0, i32 2
  store i32 0, i32* %data15, align 4, !tbaa !58
  %23 = load i32, i32* %p.addr, align 4, !tbaa !23
  %add16 = add i32 %23, 3
  %24 = load %struct.tag_cff_index_t*, %struct.tag_cff_index_t** %x.addr, align 8, !tbaa !1
  %end = getelementptr inbounds %struct.tag_cff_index_t, %struct.tag_cff_index_t* %24, i32 0, i32 1
  store i32 %add16, i32* %end, align 4, !tbaa !48
  br label %if.end.41

if.else:                                          ; preds = %if.end.10
  %25 = load %struct.tag_cff_index_t*, %struct.tag_cff_index_t** %x.addr, align 8, !tbaa !1
  %offsize17 = getelementptr inbounds %struct.tag_cff_index_t, %struct.tag_cff_index_t* %25, i32 0, i32 3
  %26 = load i32, i32* %offsize17, align 4, !tbaa !57
  %cmp18 = icmp ugt i32 %26, 4
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %if.else
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.20:                                       ; preds = %if.else
  %27 = load i32, i32* %p.addr, align 4, !tbaa !23
  %add21 = add i32 %27, 2
  %28 = load %struct.tag_cff_index_t*, %struct.tag_cff_index_t** %x.addr, align 8, !tbaa !1
  %offsize22 = getelementptr inbounds %struct.tag_cff_index_t, %struct.tag_cff_index_t* %28, i32 0, i32 3
  %29 = load i32, i32* %offsize22, align 4, !tbaa !57
  %30 = load %struct.tag_cff_index_t*, %struct.tag_cff_index_t** %x.addr, align 8, !tbaa !1
  %count23 = getelementptr inbounds %struct.tag_cff_index_t, %struct.tag_cff_index_t* %30, i32 0, i32 4
  %31 = load i32, i32* %count23, align 4, !tbaa !50
  %add24 = add i32 %31, 1
  %mul = mul i32 %29, %add24
  %add25 = add i32 %add21, %mul
  %32 = load %struct.tag_cff_index_t*, %struct.tag_cff_index_t** %x.addr, align 8, !tbaa !1
  %data26 = getelementptr inbounds %struct.tag_cff_index_t, %struct.tag_cff_index_t* %32, i32 0, i32 2
  store i32 %add25, i32* %data26, align 4, !tbaa !58
  %33 = load %struct.tag_cff_index_t*, %struct.tag_cff_index_t** %x.addr, align 8, !tbaa !1
  %offsize27 = getelementptr inbounds %struct.tag_cff_index_t, %struct.tag_cff_index_t* %33, i32 0, i32 3
  %34 = load i32, i32* %offsize27, align 4, !tbaa !57
  %idxprom = zext i32 %34 to i64
  %arrayidx = getelementptr inbounds [5 x i32 (i32*, %struct.tag_cff_data_t*, i32, i32)*], [5 x i32 (i32*, %struct.tag_cff_data_t*, i32, i32)*]* @offset_procs, i32 0, i64 %idxprom
  %35 = load i32 (i32*, %struct.tag_cff_data_t*, i32, i32)*, i32 (i32*, %struct.tag_cff_data_t*, i32, i32)** %arrayidx, align 8, !tbaa !1
  %36 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %37 = load i32, i32* %p.addr, align 4, !tbaa !23
  %add28 = add i32 %37, 3
  %38 = load %struct.tag_cff_index_t*, %struct.tag_cff_index_t** %x.addr, align 8, !tbaa !1
  %offsize29 = getelementptr inbounds %struct.tag_cff_index_t, %struct.tag_cff_index_t* %38, i32 0, i32 3
  %39 = load i32, i32* %offsize29, align 4, !tbaa !57
  %40 = load %struct.tag_cff_index_t*, %struct.tag_cff_index_t** %x.addr, align 8, !tbaa !1
  %count30 = getelementptr inbounds %struct.tag_cff_index_t, %struct.tag_cff_index_t* %40, i32 0, i32 4
  %41 = load i32, i32* %count30, align 4, !tbaa !50
  %mul31 = mul i32 %39, %41
  %add32 = add i32 %add28, %mul31
  %42 = load i32, i32* %pe.addr, align 4, !tbaa !23
  %call33 = call i32 %35(i32* %eod, %struct.tag_cff_data_t* %36, i32 %add32, i32 %42) #5
  store i32 %call33, i32* %code, align 4, !tbaa !23
  %43 = load i32, i32* %code, align 4, !tbaa !23
  %cmp34 = icmp slt i32 %43, 0
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.else.20
  %44 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %44, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.36:                                        ; preds = %if.else.20
  %45 = load %struct.tag_cff_index_t*, %struct.tag_cff_index_t** %x.addr, align 8, !tbaa !1
  %data37 = getelementptr inbounds %struct.tag_cff_index_t, %struct.tag_cff_index_t* %45, i32 0, i32 2
  %46 = load i32, i32* %data37, align 4, !tbaa !58
  %47 = load i32, i32* %eod, align 4, !tbaa !23
  %add38 = add i32 %46, %47
  %48 = load %struct.tag_cff_index_t*, %struct.tag_cff_index_t** %x.addr, align 8, !tbaa !1
  %end39 = getelementptr inbounds %struct.tag_cff_index_t, %struct.tag_cff_index_t* %48, i32 0, i32 1
  store i32 %add38, i32* %end39, align 4, !tbaa !48
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.36
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.13
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.41, %if.then.35, %if.then.19, %if.then.9
  %49 = bitcast i32* %eod to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.48 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.47

if.else.42:                                       ; preds = %if.end.4
  %50 = load %struct.tag_cff_index_t*, %struct.tag_cff_index_t** %x.addr, align 8, !tbaa !1
  %offsize43 = getelementptr inbounds %struct.tag_cff_index_t, %struct.tag_cff_index_t* %50, i32 0, i32 3
  store i32 0, i32* %offsize43, align 4, !tbaa !57
  %51 = load %struct.tag_cff_index_t*, %struct.tag_cff_index_t** %x.addr, align 8, !tbaa !1
  %data44 = getelementptr inbounds %struct.tag_cff_index_t, %struct.tag_cff_index_t* %51, i32 0, i32 2
  store i32 0, i32* %data44, align 4, !tbaa !58
  %52 = load i32, i32* %p.addr, align 4, !tbaa !23
  %add45 = add i32 %52, 2
  %53 = load %struct.tag_cff_index_t*, %struct.tag_cff_index_t** %x.addr, align 8, !tbaa !1
  %end46 = getelementptr inbounds %struct.tag_cff_index_t, %struct.tag_cff_index_t* %53, i32 0, i32 1
  store i32 %add45, i32* %end46, align 4, !tbaa !48
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.42, %cleanup.cont
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.48

cleanup.48:                                       ; preds = %if.end.47, %cleanup, %if.then.3, %if.then
  %54 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  %55 = load i32, i32* %retval
  ret i32 %55
}

; Function Attrs: nounwind uwtable
define internal i32 @make_stringarray_from_index(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %dst, %struct.tag_cff_index_t* %index, %struct.tag_cff_data_t* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %dst.addr = alloca %struct.ref_s*, align 8
  %index.addr = alloca %struct.tag_cff_index_t*, align 8
  %data.addr = alloca %struct.tag_cff_data_t*, align 8
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %subr = alloca i32, align 4
  %len = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %dst, %struct.ref_s** %dst.addr, align 8, !tbaa !1
  store %struct.tag_cff_index_t* %index, %struct.tag_cff_index_t** %index.addr, align 8, !tbaa !1
  store %struct.tag_cff_data_t* %data, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %2, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %3 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !40
  %4 = load %struct.ref_s*, %struct.ref_s** %dst.addr, align 8, !tbaa !1
  %5 = load %struct.tag_cff_index_t*, %struct.tag_cff_index_t** %index.addr, align 8, !tbaa !1
  %count = getelementptr inbounds %struct.tag_cff_index_t, %struct.tag_cff_index_t* %5, i32 0, i32 4
  %6 = load i32, i32* %count, align 4, !tbaa !50
  %call = call i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s* %3, %struct.ref_s* %4, i32 96, i32 %6, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i32 0, i32 0)) #5
  store i32 %call, i32* %code, align 4, !tbaa !23
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.12

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %i, align 4, !tbaa !23
  %9 = load %struct.tag_cff_index_t*, %struct.tag_cff_index_t** %index.addr, align 8, !tbaa !1
  %count1 = getelementptr inbounds %struct.tag_cff_index_t, %struct.tag_cff_index_t* %9, i32 0, i32 4
  %10 = load i32, i32* %count1, align 4, !tbaa !50
  %cmp2 = icmp ult i32 %8, %10
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = bitcast i32* %subr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.tag_cff_index_t*, %struct.tag_cff_index_t** %index.addr, align 8, !tbaa !1
  %14 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %15 = load i32, i32* %i, align 4, !tbaa !23
  %call3 = call i32 @peek_index(i32* %subr, i32* %len, %struct.tag_cff_index_t* %13, %struct.tag_cff_data_t* %14, i32 %15) #5
  store i32 %call3, i32* %code, align 4, !tbaa !23
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %for.body
  %16 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %for.body
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %18 = load %struct.ref_s*, %struct.ref_s** %dst.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 1
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %19 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %20 = load i32, i32* %i, align 4, !tbaa !23
  %idx.ext = zext i32 %20 to i64
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 %idx.ext
  %21 = load %struct.tag_cff_index_t*, %struct.tag_cff_index_t** %index.addr, align 8, !tbaa !1
  %22 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %23 = load i32, i32* %i, align 4, !tbaa !23
  %call7 = call i32 @make_string_from_index(%struct.gs_context_state_s* %17, %struct.ref_s* %add.ptr, %struct.tag_cff_index_t* %21, %struct.tag_cff_data_t* %22, i32 %23, i32 -1) #5
  store i32 %call7, i32* %code, align 4, !tbaa !23
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  %24 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end.6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.10, %if.then.9, %if.then.5
  %25 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast i32* %subr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.12 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %27 = load i32, i32* %i, align 4, !tbaa !23
  %inc = add i32 %27, 1
  store i32 %inc, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.12

cleanup.12:                                       ; preds = %for.end, %cleanup, %if.then
  %28 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = load i32, i32* %retval
  ret i32 %30
}

declare i32 @dict_alloc(%struct.gs_ref_memory_s*, i32, %struct.ref_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @peek_index(i32* %pp, i32* %len, %struct.tag_cff_index_t* %x, %struct.tag_cff_data_t* %data, i32 %i) #0 {
entry:
  %retval = alloca i32, align 4
  %pp.addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %x.addr = alloca %struct.tag_cff_index_t*, align 8
  %data.addr = alloca %struct.tag_cff_data_t*, align 8
  %i.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %off1 = alloca i32, align 4
  %off2 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32* %pp, i32** %pp.addr, align 8, !tbaa !1
  store i32* %len, i32** %len.addr, align 8, !tbaa !1
  store %struct.tag_cff_index_t* %x, %struct.tag_cff_index_t** %x.addr, align 8, !tbaa !1
  store %struct.tag_cff_data_t* %data, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  store i32 %i, i32* %i.addr, align 4, !tbaa !23
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %off1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %off2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i32, i32* %i.addr, align 4, !tbaa !23
  %4 = load %struct.tag_cff_index_t*, %struct.tag_cff_index_t** %x.addr, align 8, !tbaa !1
  %count = getelementptr inbounds %struct.tag_cff_index_t, %struct.tag_cff_index_t* %4, i32 0, i32 4
  %5 = load i32, i32* %count, align 4, !tbaa !50
  %cmp = icmp uge i32 %3, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.tag_cff_index_t*, %struct.tag_cff_index_t** %x.addr, align 8, !tbaa !1
  %offsize = getelementptr inbounds %struct.tag_cff_index_t, %struct.tag_cff_index_t* %6, i32 0, i32 3
  %7 = load i32, i32* %offsize, align 4, !tbaa !57
  %idxprom = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds [5 x i32 (i32*, %struct.tag_cff_data_t*, i32, i32)*], [5 x i32 (i32*, %struct.tag_cff_data_t*, i32, i32)*]* @offset_procs, i32 0, i64 %idxprom
  %8 = load i32 (i32*, %struct.tag_cff_data_t*, i32, i32)*, i32 (i32*, %struct.tag_cff_data_t*, i32, i32)** %arrayidx, align 8, !tbaa !1
  %9 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %10 = load %struct.tag_cff_index_t*, %struct.tag_cff_index_t** %x.addr, align 8, !tbaa !1
  %start = getelementptr inbounds %struct.tag_cff_index_t, %struct.tag_cff_index_t* %10, i32 0, i32 0
  %11 = load i32, i32* %start, align 4, !tbaa !56
  %add = add i32 %11, 3
  %12 = load %struct.tag_cff_index_t*, %struct.tag_cff_index_t** %x.addr, align 8, !tbaa !1
  %offsize1 = getelementptr inbounds %struct.tag_cff_index_t, %struct.tag_cff_index_t* %12, i32 0, i32 3
  %13 = load i32, i32* %offsize1, align 4, !tbaa !57
  %14 = load i32, i32* %i.addr, align 4, !tbaa !23
  %mul = mul i32 %13, %14
  %add2 = add i32 %add, %mul
  %15 = load %struct.tag_cff_index_t*, %struct.tag_cff_index_t** %x.addr, align 8, !tbaa !1
  %end = getelementptr inbounds %struct.tag_cff_index_t, %struct.tag_cff_index_t* %15, i32 0, i32 1
  %16 = load i32, i32* %end, align 4, !tbaa !48
  %call = call i32 %8(i32* %off1, %struct.tag_cff_data_t* %9, i32 %add2, i32 %16) #5
  store i32 %call, i32* %code, align 4, !tbaa !23
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %17 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %18 = load %struct.tag_cff_index_t*, %struct.tag_cff_index_t** %x.addr, align 8, !tbaa !1
  %offsize6 = getelementptr inbounds %struct.tag_cff_index_t, %struct.tag_cff_index_t* %18, i32 0, i32 3
  %19 = load i32, i32* %offsize6, align 4, !tbaa !57
  %idxprom7 = zext i32 %19 to i64
  %arrayidx8 = getelementptr inbounds [5 x i32 (i32*, %struct.tag_cff_data_t*, i32, i32)*], [5 x i32 (i32*, %struct.tag_cff_data_t*, i32, i32)*]* @offset_procs, i32 0, i64 %idxprom7
  %20 = load i32 (i32*, %struct.tag_cff_data_t*, i32, i32)*, i32 (i32*, %struct.tag_cff_data_t*, i32, i32)** %arrayidx8, align 8, !tbaa !1
  %21 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %22 = load %struct.tag_cff_index_t*, %struct.tag_cff_index_t** %x.addr, align 8, !tbaa !1
  %start9 = getelementptr inbounds %struct.tag_cff_index_t, %struct.tag_cff_index_t* %22, i32 0, i32 0
  %23 = load i32, i32* %start9, align 4, !tbaa !56
  %add10 = add i32 %23, 3
  %24 = load %struct.tag_cff_index_t*, %struct.tag_cff_index_t** %x.addr, align 8, !tbaa !1
  %offsize11 = getelementptr inbounds %struct.tag_cff_index_t, %struct.tag_cff_index_t* %24, i32 0, i32 3
  %25 = load i32, i32* %offsize11, align 4, !tbaa !57
  %26 = load i32, i32* %i.addr, align 4, !tbaa !23
  %add12 = add i32 %26, 1
  %mul13 = mul i32 %25, %add12
  %add14 = add i32 %add10, %mul13
  %27 = load %struct.tag_cff_index_t*, %struct.tag_cff_index_t** %x.addr, align 8, !tbaa !1
  %end15 = getelementptr inbounds %struct.tag_cff_index_t, %struct.tag_cff_index_t* %27, i32 0, i32 1
  %28 = load i32, i32* %end15, align 4, !tbaa !48
  %call16 = call i32 %20(i32* %off2, %struct.tag_cff_data_t* %21, i32 %add14, i32 %28) #5
  store i32 %call16, i32* %code, align 4, !tbaa !23
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.5
  %29 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.end.5
  %30 = load i32, i32* %off2, align 4, !tbaa !23
  %31 = load i32, i32* %off1, align 4, !tbaa !23
  %cmp20 = icmp ult i32 %30, %31
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.19
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %if.end.19
  %32 = load %struct.tag_cff_index_t*, %struct.tag_cff_index_t** %x.addr, align 8, !tbaa !1
  %data23 = getelementptr inbounds %struct.tag_cff_index_t, %struct.tag_cff_index_t* %32, i32 0, i32 2
  %33 = load i32, i32* %data23, align 4, !tbaa !58
  %34 = load i32, i32* %off2, align 4, !tbaa !23
  %add24 = add i32 %33, %34
  %35 = load %struct.tag_cff_index_t*, %struct.tag_cff_index_t** %x.addr, align 8, !tbaa !1
  %end25 = getelementptr inbounds %struct.tag_cff_index_t, %struct.tag_cff_index_t* %35, i32 0, i32 1
  %36 = load i32, i32* %end25, align 4, !tbaa !48
  %cmp26 = icmp ugt i32 %add24, %36
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.22
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %if.end.22
  %37 = load i32, i32* %off2, align 4, !tbaa !23
  %38 = load i32, i32* %off1, align 4, !tbaa !23
  %sub = sub i32 %37, %38
  %39 = load i32*, i32** %len.addr, align 8, !tbaa !1
  store i32 %sub, i32* %39, align 4, !tbaa !23
  %40 = load %struct.tag_cff_index_t*, %struct.tag_cff_index_t** %x.addr, align 8, !tbaa !1
  %data29 = getelementptr inbounds %struct.tag_cff_index_t, %struct.tag_cff_index_t* %40, i32 0, i32 2
  %41 = load i32, i32* %data29, align 4, !tbaa !58
  %42 = load i32, i32* %off1, align 4, !tbaa !23
  %add30 = add i32 %41, %42
  %43 = load i32*, i32** %pp.addr, align 8, !tbaa !1
  store i32 %add30, i32* %43, align 4, !tbaa !23
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.28, %if.then.27, %if.then.21, %if.then.18, %if.then.4, %if.then
  %44 = bitcast i32* %off2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast i32* %off1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = load i32, i32* %retval
  ret i32 %47
}

; Function Attrs: nounwind uwtable
define internal i32 @get_cff_string(i8* %dst, %struct.tag_cff_data_t* %o, i32 %p, i32 %len) #0 {
entry:
  %retval = alloca i32, align 4
  %dst.addr = alloca i8*, align 8
  %o.addr = alloca %struct.tag_cff_data_t*, align 8
  %p.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %chunk_len = alloca i32, align 4
  %pos = alloca i8*, align 8
  store i8* %dst, i8** %dst.addr, align 8, !tbaa !1
  store %struct.tag_cff_data_t* %o, %struct.tag_cff_data_t** %o.addr, align 8, !tbaa !1
  store i32 %p, i32* %p.addr, align 4, !tbaa !23
  store i32 %len, i32* %len.addr, align 4, !tbaa !23
  %0 = load i32, i32* %p.addr, align 4, !tbaa !23
  %1 = load i32, i32* %len.addr, align 4, !tbaa !23
  %add = add i32 %0, %1
  %2 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %o.addr, align 8, !tbaa !1
  %length = getelementptr inbounds %struct.tag_cff_data_t, %struct.tag_cff_data_t* %2, i32 0, i32 1
  %3 = load i32, i32* %length, align 4, !tbaa !43
  %cmp = icmp ugt i32 %add, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.7, %if.end
  %4 = load i32, i32* %len.addr, align 4, !tbaa !23
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = bitcast i32* %chunk_len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %o.addr, align 8, !tbaa !1
  %mask = getelementptr inbounds %struct.tag_cff_data_t, %struct.tag_cff_data_t* %6, i32 0, i32 3
  %7 = load i32, i32* %mask, align 4, !tbaa !44
  %add1 = add i32 %7, 1
  %8 = load i32, i32* %p.addr, align 4, !tbaa !23
  %9 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %o.addr, align 8, !tbaa !1
  %mask2 = getelementptr inbounds %struct.tag_cff_data_t, %struct.tag_cff_data_t* %9, i32 0, i32 3
  %10 = load i32, i32* %mask2, align 4, !tbaa !44
  %and = and i32 %8, %10
  %sub = sub i32 %add1, %and
  store i32 %sub, i32* %chunk_len, align 4, !tbaa !23
  %11 = bitcast i8** %pos to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load i32, i32* %p.addr, align 4, !tbaa !23
  %13 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %o.addr, align 8, !tbaa !1
  %shift = getelementptr inbounds %struct.tag_cff_data_t, %struct.tag_cff_data_t* %13, i32 0, i32 2
  %14 = load i32, i32* %shift, align 4, !tbaa !45
  %shr = lshr i32 %12, %14
  %idxprom = zext i32 %shr to i64
  %15 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %o.addr, align 8, !tbaa !1
  %blk_ref = getelementptr inbounds %struct.tag_cff_data_t, %struct.tag_cff_data_t* %15, i32 0, i32 0
  %16 = load %struct.ref_s*, %struct.ref_s** %blk_ref, align 8, !tbaa !41
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 %idxprom
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 1
  %bytes = bitcast %union.v* %value to i8**
  %17 = load i8*, i8** %bytes, align 8, !tbaa !1
  %18 = load i32, i32* %p.addr, align 4, !tbaa !23
  %19 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %o.addr, align 8, !tbaa !1
  %mask3 = getelementptr inbounds %struct.tag_cff_data_t, %struct.tag_cff_data_t* %19, i32 0, i32 3
  %20 = load i32, i32* %mask3, align 4, !tbaa !44
  %and4 = and i32 %18, %20
  %idx.ext = zext i32 %and4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 %idx.ext
  store i8* %add.ptr, i8** %pos, align 8, !tbaa !1
  %21 = load i32, i32* %chunk_len, align 4, !tbaa !23
  %22 = load i32, i32* %len.addr, align 4, !tbaa !23
  %cmp5 = icmp ugt i32 %21, %22
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %while.body
  %23 = load i32, i32* %len.addr, align 4, !tbaa !23
  store i32 %23, i32* %chunk_len, align 4, !tbaa !23
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %while.body
  %24 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %25 = load i8*, i8** %pos, align 8, !tbaa !1
  %26 = load i32, i32* %chunk_len, align 4, !tbaa !23
  %conv = zext i32 %26 to i64
  %call = call i8* @memcpy(i8* %24, i8* %25, i64 %conv) #6
  %27 = load i32, i32* %chunk_len, align 4, !tbaa !23
  %28 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %idx.ext8 = zext i32 %27 to i64
  %add.ptr9 = getelementptr inbounds i8, i8* %28, i64 %idx.ext8
  store i8* %add.ptr9, i8** %dst.addr, align 8, !tbaa !1
  %29 = load i32, i32* %chunk_len, align 4, !tbaa !23
  %30 = load i32, i32* %len.addr, align 4, !tbaa !23
  %sub10 = sub i32 %30, %29
  store i32 %sub10, i32* %len.addr, align 4, !tbaa !23
  %31 = load i32, i32* %chunk_len, align 4, !tbaa !23
  %32 = load i32, i32* %p.addr, align 4, !tbaa !23
  %add11 = add i32 %32, %31
  store i32 %add11, i32* %p.addr, align 4, !tbaa !23
  %33 = bitcast i8** %pos to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = bitcast i32* %chunk_len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %35 = load i32, i32* %retval
  ret i32 %35
}

declare i32 @names_ref(%struct.name_table_s*, i8*, i32, %struct.ref_s*, i32) #2

declare i32 @dict_put(%struct.ref_s*, %struct.ref_s*, %struct.ref_s*, %struct.dict_stack_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @parse_font(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %topdict, %struct.tag_cff_index_t* %strings, %struct.ref_s* %global_subrs, %struct.tag_cff_data_t* %data, i32 %p_top, i32 %pe_top, i32 %p_all, i32 %pe_all, i32 %force_cidfont) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %topdict.addr = alloca %struct.ref_s*, align 8
  %strings.addr = alloca %struct.tag_cff_index_t*, align 8
  %global_subrs.addr = alloca %struct.ref_s*, align 8
  %data.addr = alloca %struct.tag_cff_data_t*, align 8
  %p_top.addr = alloca i32, align 4
  %pe_top.addr = alloca i32, align 4
  %p_all.addr = alloca i32, align 4
  %pe_all.addr = alloca i32, align 4
  %force_cidfont.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %privatedict = alloca %struct.ref_s*, align 8
  %fontinfodict = alloca %struct.ref_s*, align 8
  %local_subrs = alloca %struct.tag_cff_index_t, align 4
  %charstrings_index = alloca %struct.tag_cff_index_t, align 4
  %peek_charset_proc = alloca i32 (%struct.tag_cff_data_t*, i32, i32, i32)*, align 8
  %offsets = alloca %struct.tag_font_offsets_t, align 4
  %cleanup.dest.slot = alloca i32
  %r = alloca %struct.ref_s, align 8
  %u = alloca i32, align 4
  %i = alloca i32, align 4
  %fdarray = alloca %struct.tag_cff_index_t, align 4
  %int_ref = alloca %struct.ref_s, align 8
  %cstr_ref = alloca %struct.ref_s, align 8
  %fdarray_ref = alloca %struct.ref_s, align 8
  %glyph_directory_ref = alloca %struct.ref_s, align 8
  %fdselect_off = alloca i32, align 4
  %fdselect_code = alloca i32, align 4
  %fdselect_proc = alloca i32 (%struct.tag_cff_data_t*, i32, i32, i32)*, align 8
  %array_FontMatrix = alloca %struct.ref_s*, align 8
  %name_FontMatrix = alloca %struct.ref_s, align 8
  %top_has_FontMatrix = alloca i32, align 4
  %len = alloca i32, align 4
  %doff = alloca i32, align 4
  %fd_subrs = alloca %struct.tag_cff_index_t, align 4
  %fdprivate = alloca %struct.ref_s*, align 8
  %fdfont = alloca %struct.ref_s*, align 8
  %r186 = alloca %struct.ref_s, align 8
  %fd = alloca i32, align 4
  %int_ref338 = alloca %struct.ref_s, align 8
  %str_ref = alloca %struct.ref_s, align 8
  %glyph_directory_ref339 = alloca %struct.ref_s, align 8
  %fdarray_ref340 = alloca %struct.ref_s, align 8
  %cidsysteminfo_ref = alloca %struct.ref_s, align 8
  %cstr_ref485 = alloca %struct.ref_s, align 8
  %i532 = alloca i32, align 4
  %gid = alloca i32, align 4
  %enc_format = alloca i32, align 4
  %sid = alloca i32, align 4
  %name = alloca %struct.ref_s, align 8
  %cstr = alloca %struct.ref_s, align 8
  %charstrings_dict = alloca %struct.ref_s, align 8
  %encoding = alloca %struct.ref_s, align 8
  %notdef = alloca %struct.ref_s, align 8
  %gid2char = alloca [256 x i8], align 16
  %supp_enc_offset = alloca i32, align 4
  %n_codes = alloca i32, align 4
  %charcode = alloca i32, align 4
  %n_ranges = alloca i32, align 4
  %first = alloca i32, align 4
  %left = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %buf = alloca [40 x i8], align 16
  %len776 = alloca i32, align 4
  %n_supp = alloca i32, align 4
  %charcode824 = alloca i32, align 4
  %sid825 = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %topdict, %struct.ref_s** %topdict.addr, align 8, !tbaa !1
  store %struct.tag_cff_index_t* %strings, %struct.tag_cff_index_t** %strings.addr, align 8, !tbaa !1
  store %struct.ref_s* %global_subrs, %struct.ref_s** %global_subrs.addr, align 8, !tbaa !1
  store %struct.tag_cff_data_t* %data, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  store i32 %p_top, i32* %p_top.addr, align 4, !tbaa !23
  store i32 %pe_top, i32* %pe_top.addr, align 4, !tbaa !23
  store i32 %p_all, i32* %p_all.addr, align 4, !tbaa !23
  store i32 %pe_all, i32* %pe_all.addr, align 4, !tbaa !23
  store i32 %force_cidfont, i32* %force_cidfont.addr, align 4, !tbaa !23
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %code, align 4, !tbaa !23
  %1 = bitcast %struct.ref_s** %privatedict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store %struct.ref_s* null, %struct.ref_s** %privatedict, align 8, !tbaa !1
  %2 = bitcast %struct.ref_s** %fontinfodict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store %struct.ref_s* null, %struct.ref_s** %fontinfodict, align 8, !tbaa !1
  %3 = bitcast %struct.tag_cff_index_t* %local_subrs to i8*
  call void @llvm.lifetime.start(i64 20, i8* %3) #1
  %4 = bitcast %struct.tag_cff_index_t* %charstrings_index to i8*
  call void @llvm.lifetime.start(i64 20, i8* %4) #1
  %5 = bitcast i32 (%struct.tag_cff_data_t*, i32, i32, i32)** %peek_charset_proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast %struct.tag_font_offsets_t* %offsets to i8*
  call void @llvm.lifetime.start(i64 36, i8* %6) #1
  %7 = bitcast %struct.tag_font_offsets_t* %offsets to i8*
  %call = call i8* @memset(i8* %7, i32 0, i64 36) #6
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %9 = load %struct.ref_s*, %struct.ref_s** %topdict.addr, align 8, !tbaa !1
  %10 = load %struct.tag_cff_index_t*, %struct.tag_cff_index_t** %strings.addr, align 8, !tbaa !1
  %11 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %12 = load i32, i32* %p_top.addr, align 4, !tbaa !23
  %13 = load i32, i32* %pe_top.addr, align 4, !tbaa !23
  %call1 = call i32 @parse_dict(%struct.gs_context_state_s* %8, %struct.ref_s* %9, %struct.tag_font_offsets_t* %offsets, %struct.tag_cff_index_t* %10, %struct.tag_cff_data_t* %11, i32 %12, i32 %13) #5
  %cmp = icmp slt i32 %call1, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %code, align 4, !tbaa !23
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.899

if.end:                                           ; preds = %entry
  %15 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %16 = load %struct.ref_s*, %struct.ref_s** %topdict.addr, align 8, !tbaa !1
  %17 = load %struct.tag_cff_index_t*, %struct.tag_cff_index_t** %strings.addr, align 8, !tbaa !1
  %18 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %19 = load i32, i32* %p_all.addr, align 4, !tbaa !23
  %private_off = getelementptr inbounds %struct.tag_font_offsets_t, %struct.tag_font_offsets_t* %offsets, i32 0, i32 4
  %20 = load i32, i32* %private_off, align 4, !tbaa !59
  %add = add i32 %19, %20
  %21 = load i32, i32* %p_all.addr, align 4, !tbaa !23
  %private_off2 = getelementptr inbounds %struct.tag_font_offsets_t, %struct.tag_font_offsets_t* %offsets, i32 0, i32 4
  %22 = load i32, i32* %private_off2, align 4, !tbaa !59
  %add3 = add i32 %21, %22
  %private_size = getelementptr inbounds %struct.tag_font_offsets_t, %struct.tag_font_offsets_t* %offsets, i32 0, i32 7
  %23 = load i32, i32* %private_size, align 4, !tbaa !61
  %add4 = add i32 %add3, %23
  %call5 = call i32 @parse_dict(%struct.gs_context_state_s* %15, %struct.ref_s* %16, %struct.tag_font_offsets_t* %offsets, %struct.tag_cff_index_t* %17, %struct.tag_cff_data_t* %18, i32 %add, i32 %add4) #5
  %cmp6 = icmp slt i32 %call5, 0
  %conv7 = zext i1 %cmp6 to i32
  store i32 %conv7, i32* %code, align 4, !tbaa !23
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  %24 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.899

if.end.9:                                         ; preds = %if.end
  %25 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %local_subrs_off = getelementptr inbounds %struct.tag_font_offsets_t, %struct.tag_font_offsets_t* %offsets, i32 0, i32 6
  %26 = load i32, i32* %local_subrs_off, align 4, !tbaa !62
  %tobool = icmp ne i32 %26, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.9
  %27 = load i32, i32* %p_all.addr, align 4, !tbaa !23
  %private_off10 = getelementptr inbounds %struct.tag_font_offsets_t, %struct.tag_font_offsets_t* %offsets, i32 0, i32 4
  %28 = load i32, i32* %private_off10, align 4, !tbaa !59
  %add11 = add i32 %27, %28
  %local_subrs_off12 = getelementptr inbounds %struct.tag_font_offsets_t, %struct.tag_font_offsets_t* %offsets, i32 0, i32 6
  %29 = load i32, i32* %local_subrs_off12, align 4, !tbaa !62
  %add13 = add i32 %add11, %29
  br label %cond.end

cond.false:                                       ; preds = %if.end.9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add13, %cond.true ], [ 0, %cond.false ]
  %30 = load i32, i32* %pe_all.addr, align 4, !tbaa !23
  %call14 = call i32 @parse_index(%struct.tag_cff_index_t* %local_subrs, %struct.tag_cff_data_t* %25, i32 %cond, i32 %30) #5
  store i32 %call14, i32* %code, align 4, !tbaa !23
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %cond.end
  %31 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.899

if.end.18:                                        ; preds = %cond.end
  %32 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %33 = load %struct.ref_s*, %struct.ref_s** %topdict.addr, align 8, !tbaa !1
  %call19 = call i32 @find_font_dict(%struct.gs_context_state_s* %32, %struct.ref_s* %33, %struct.ref_s** %privatedict, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0)) #5
  store i32 %call19, i32* %code, align 4, !tbaa !23
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.18
  %34 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %34, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.899

if.end.23:                                        ; preds = %if.end.18
  %35 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %36 = load %struct.ref_s*, %struct.ref_s** %topdict.addr, align 8, !tbaa !1
  %call24 = call i32 @find_font_dict(%struct.gs_context_state_s* %35, %struct.ref_s* %36, %struct.ref_s** %fontinfodict, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0)) #5
  store i32 %call24, i32* %code, align 4, !tbaa !23
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.23
  %37 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %37, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.899

if.end.28:                                        ; preds = %if.end.23
  %count = getelementptr inbounds %struct.tag_cff_index_t, %struct.tag_cff_index_t* %local_subrs, i32 0, i32 4
  %38 = load i32, i32* %count, align 4, !tbaa !50
  %tobool29 = icmp ne i32 %38, 0
  br i1 %tobool29, label %if.then.30, label %if.end.41

if.then.30:                                       ; preds = %if.end.28
  %39 = bitcast %struct.ref_s* %r to i8*
  call void @llvm.lifetime.start(i64 16, i8* %39) #1
  %40 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %41 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %call31 = call i32 @make_stringarray_from_index(%struct.gs_context_state_s* %40, %struct.ref_s* %r, %struct.tag_cff_index_t* %local_subrs, %struct.tag_cff_data_t* %41) #5
  store i32 %call31, i32* %code, align 4, !tbaa !23
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.then.30
  %42 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %42, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.35:                                        ; preds = %if.then.30
  %43 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %44 = load %struct.ref_s*, %struct.ref_s** %privatedict, align 8, !tbaa !1
  %call36 = call i32 @idict_put_c_name(%struct.gs_context_state_s* %43, %struct.ref_s* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 5, %struct.ref_s* %r) #5
  store i32 %call36, i32* %code, align 4, !tbaa !23
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.35
  %45 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %45, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.40:                                        ; preds = %if.end.35
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.40, %if.then.39, %if.then.34
  %46 = bitcast %struct.ref_s* %r to i8*
  call void @llvm.lifetime.end(i64 16, i8* %46) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.899 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.41

if.end.41:                                        ; preds = %cleanup.cont, %if.end.28
  %47 = load %struct.ref_s*, %struct.ref_s** %global_subrs.addr, align 8, !tbaa !1
  %tobool42 = icmp ne %struct.ref_s* %47, null
  br i1 %tobool42, label %land.lhs.true, label %if.end.50

land.lhs.true:                                    ; preds = %if.end.41
  %have_ros = getelementptr inbounds %struct.tag_font_offsets_t, %struct.tag_font_offsets_t* %offsets, i32 0, i32 8
  %48 = load i32, i32* %have_ros, align 4, !tbaa !63
  %tobool43 = icmp ne i32 %48, 0
  br i1 %tobool43, label %if.end.50, label %if.then.44

if.then.44:                                       ; preds = %land.lhs.true
  %49 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %50 = load %struct.ref_s*, %struct.ref_s** %privatedict, align 8, !tbaa !1
  %51 = load %struct.ref_s*, %struct.ref_s** %global_subrs.addr, align 8, !tbaa !1
  %call45 = call i32 @idict_put_c_name(%struct.gs_context_state_s* %49, %struct.ref_s* %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 11, %struct.ref_s* %51) #5
  store i32 %call45, i32* %code, align 4, !tbaa !23
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.then.44
  %52 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %52, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.899

if.end.49:                                        ; preds = %if.then.44
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %land.lhs.true, %if.end.41
  %charstrings_off = getelementptr inbounds %struct.tag_font_offsets_t, %struct.tag_font_offsets_t* %offsets, i32 0, i32 5
  %53 = load i32, i32* %charstrings_off, align 4, !tbaa !64
  %cmp51 = icmp ule i32 %53, 0
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.end.50
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.899

if.end.54:                                        ; preds = %if.end.50
  %54 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %55 = load i32, i32* %p_all.addr, align 4, !tbaa !23
  %charstrings_off55 = getelementptr inbounds %struct.tag_font_offsets_t, %struct.tag_font_offsets_t* %offsets, i32 0, i32 5
  %56 = load i32, i32* %charstrings_off55, align 4, !tbaa !64
  %add56 = add i32 %55, %56
  %57 = load i32, i32* %pe_all.addr, align 4, !tbaa !23
  %call57 = call i32 @parse_index(%struct.tag_cff_index_t* %charstrings_index, %struct.tag_cff_data_t* %54, i32 %add56, i32 %57) #5
  store i32 %call57, i32* %code, align 4, !tbaa !23
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.end.54
  %58 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %58, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.899

if.end.61:                                        ; preds = %if.end.54
  %charset_off = getelementptr inbounds %struct.tag_font_offsets_t, %struct.tag_font_offsets_t* %offsets, i32 0, i32 2
  %59 = load i32, i32* %charset_off, align 4, !tbaa !65
  switch i32 %59, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.62
    i32 2, label %sw.bb.63
  ]

sw.bb:                                            ; preds = %if.end.61
  store i32 (%struct.tag_cff_data_t*, i32, i32, i32)* @iso_adobe_charset_proc, i32 (%struct.tag_cff_data_t*, i32, i32, i32)** %peek_charset_proc, align 8, !tbaa !1
  br label %sw.epilog.78

sw.bb.62:                                         ; preds = %if.end.61
  store i32 (%struct.tag_cff_data_t*, i32, i32, i32)* @expert_charset_proc, i32 (%struct.tag_cff_data_t*, i32, i32, i32)** %peek_charset_proc, align 8, !tbaa !1
  br label %sw.epilog.78

sw.bb.63:                                         ; preds = %if.end.61
  store i32 (%struct.tag_cff_data_t*, i32, i32, i32)* @expert_subset_charset_proc, i32 (%struct.tag_cff_data_t*, i32, i32, i32)** %peek_charset_proc, align 8, !tbaa !1
  br label %sw.epilog.78

sw.default:                                       ; preds = %if.end.61
  %60 = bitcast i32* %u to i8*
  call void @llvm.lifetime.start(i64 4, i8* %60) #1
  %61 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %62 = load i32, i32* %p_all.addr, align 4, !tbaa !23
  %charset_off64 = getelementptr inbounds %struct.tag_font_offsets_t, %struct.tag_font_offsets_t* %offsets, i32 0, i32 2
  %63 = load i32, i32* %charset_off64, align 4, !tbaa !65
  %add65 = add i32 %62, %63
  %64 = load i32, i32* %pe_all.addr, align 4, !tbaa !23
  %call66 = call i32 @card8(i32* %u, %struct.tag_cff_data_t* %61, i32 %add65, i32 %64) #5
  store i32 %call66, i32* %code, align 4, !tbaa !23
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %sw.default
  %65 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %65, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.75

if.end.70:                                        ; preds = %sw.default
  %66 = load i32, i32* %u, align 4, !tbaa !23
  switch i32 %66, label %sw.default.74 [
    i32 0, label %sw.bb.71
    i32 1, label %sw.bb.72
    i32 2, label %sw.bb.73
  ]

sw.bb.71:                                         ; preds = %if.end.70
  store i32 (%struct.tag_cff_data_t*, i32, i32, i32)* @format0_charset_proc, i32 (%struct.tag_cff_data_t*, i32, i32, i32)** %peek_charset_proc, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.72:                                         ; preds = %if.end.70
  store i32 (%struct.tag_cff_data_t*, i32, i32, i32)* @format1_charset_proc, i32 (%struct.tag_cff_data_t*, i32, i32, i32)** %peek_charset_proc, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.73:                                         ; preds = %if.end.70
  store i32 (%struct.tag_cff_data_t*, i32, i32, i32)* @format2_charset_proc, i32 (%struct.tag_cff_data_t*, i32, i32, i32)** %peek_charset_proc, align 8, !tbaa !1
  br label %sw.epilog

sw.default.74:                                    ; preds = %if.end.70
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.75

sw.epilog:                                        ; preds = %sw.bb.73, %sw.bb.72, %sw.bb.71
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.75

cleanup.75:                                       ; preds = %sw.epilog, %sw.default.74, %if.then.69
  %67 = bitcast i32* %u to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %cleanup.dest.76 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.76, label %cleanup.899 [
    i32 0, label %cleanup.cont.77
  ]

cleanup.cont.77:                                  ; preds = %cleanup.75
  br label %sw.epilog.78

sw.epilog.78:                                     ; preds = %cleanup.cont.77, %sw.bb.63, %sw.bb.62, %sw.bb
  %have_ros79 = getelementptr inbounds %struct.tag_font_offsets_t, %struct.tag_font_offsets_t* %offsets, i32 0, i32 8
  %68 = load i32, i32* %have_ros79, align 4, !tbaa !63
  %tobool80 = icmp ne i32 %68, 0
  br i1 %tobool80, label %if.then.81, label %if.else.335

if.then.81:                                       ; preds = %sw.epilog.78
  %69 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %69) #1
  %70 = bitcast %struct.tag_cff_index_t* %fdarray to i8*
  call void @llvm.lifetime.start(i64 20, i8* %70) #1
  %71 = bitcast %struct.ref_s* %int_ref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %71) #1
  %72 = bitcast %struct.ref_s* %cstr_ref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %72) #1
  %73 = bitcast %struct.ref_s* %fdarray_ref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %73) #1
  %74 = bitcast %struct.ref_s* %glyph_directory_ref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %74) #1
  %75 = bitcast i32* %fdselect_off to i8*
  call void @llvm.lifetime.start(i64 4, i8* %75) #1
  %fdselect_off82 = getelementptr inbounds %struct.tag_font_offsets_t, %struct.tag_font_offsets_t* %offsets, i32 0, i32 1
  %76 = load i32, i32* %fdselect_off82, align 4, !tbaa !66
  store i32 %76, i32* %fdselect_off, align 4, !tbaa !23
  %77 = bitcast i32* %fdselect_code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %77) #1
  %78 = bitcast i32 (%struct.tag_cff_data_t*, i32, i32, i32)** %fdselect_proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %78) #1
  %79 = bitcast %struct.ref_s** %array_FontMatrix to i8*
  call void @llvm.lifetime.start(i64 8, i8* %79) #1
  %80 = bitcast %struct.ref_s* %name_FontMatrix to i8*
  call void @llvm.lifetime.start(i64 16, i8* %80) #1
  %81 = bitcast i32* %top_has_FontMatrix to i8*
  call void @llvm.lifetime.start(i64 4, i8* %81) #1
  %fdarray_off = getelementptr inbounds %struct.tag_font_offsets_t, %struct.tag_font_offsets_t* %offsets, i32 0, i32 0
  %82 = load i32, i32* %fdarray_off, align 4, !tbaa !67
  %cmp83 = icmp eq i32 %82, 0
  br i1 %cmp83, label %if.then.87, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.81
  %83 = load i32, i32* %fdselect_off, align 4, !tbaa !23
  %cmp85 = icmp eq i32 %83, 0
  br i1 %cmp85, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %lor.lhs.false, %if.then.81
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.321

if.end.88:                                        ; preds = %lor.lhs.false
  %84 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %85 = load i32, i32* %p_all.addr, align 4, !tbaa !23
  %fdarray_off89 = getelementptr inbounds %struct.tag_font_offsets_t, %struct.tag_font_offsets_t* %offsets, i32 0, i32 0
  %86 = load i32, i32* %fdarray_off89, align 4, !tbaa !67
  %add90 = add i32 %85, %86
  %87 = load i32, i32* %pe_all.addr, align 4, !tbaa !23
  %call91 = call i32 @parse_index(%struct.tag_cff_index_t* %fdarray, %struct.tag_cff_data_t* %84, i32 %add90, i32 %87) #5
  store i32 %call91, i32* %code, align 4, !tbaa !23
  %cmp92 = icmp slt i32 %call91, 0
  br i1 %cmp92, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %if.end.88
  %88 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %88, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.321

if.end.95:                                        ; preds = %if.end.88
  %89 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %89, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %90 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !40
  %count96 = getelementptr inbounds %struct.tag_cff_index_t, %struct.tag_cff_index_t* %fdarray, i32 0, i32 4
  %91 = load i32, i32* %count96, align 4, !tbaa !50
  %call97 = call i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s* %90, %struct.ref_s* %fdarray_ref, i32 96, i32 %91, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0)) #5
  store i32 %call97, i32* %code, align 4, !tbaa !23
  %cmp98 = icmp slt i32 %call97, 0
  br i1 %cmp98, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %if.end.95
  %92 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %92, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.321

if.end.101:                                       ; preds = %if.end.95
  %93 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %94 = load %struct.ref_s*, %struct.ref_s** %topdict.addr, align 8, !tbaa !1
  %call102 = call i32 @idict_put_c_name(%struct.gs_context_state_s* %93, %struct.ref_s* %94, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i32 7, %struct.ref_s* %fdarray_ref) #5
  store i32 %call102, i32* %code, align 4, !tbaa !23
  %cmp103 = icmp slt i32 %call102, 0
  br i1 %cmp103, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %if.end.101
  %95 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %95, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.321

if.end.106:                                       ; preds = %if.end.101
  %96 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory107 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %96, i32 0, i32 1
  %current108 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory107, i32 0, i32 0
  %97 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current108, align 8, !tbaa !40
  %count109 = getelementptr inbounds %struct.tag_cff_index_t, %struct.tag_cff_index_t* %charstrings_index, i32 0, i32 4
  %98 = load i32, i32* %count109, align 4, !tbaa !50
  %add110 = add i32 %98, 1
  %call111 = call i32 @dict_alloc(%struct.gs_ref_memory_s* %97, i32 %add110, %struct.ref_s* %glyph_directory_ref) #5
  store i32 %call111, i32* %code, align 4, !tbaa !23
  %cmp112 = icmp slt i32 %call111, 0
  br i1 %cmp112, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %if.end.106
  %99 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %99, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.321

if.end.115:                                       ; preds = %if.end.106
  %100 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %101 = load %struct.ref_s*, %struct.ref_s** %topdict.addr, align 8, !tbaa !1
  %call116 = call i32 @idict_put_c_name(%struct.gs_context_state_s* %100, %struct.ref_s* %101, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i32 14, %struct.ref_s* %glyph_directory_ref) #5
  store i32 %call116, i32* %code, align 4, !tbaa !23
  %cmp117 = icmp slt i32 %call116, 0
  br i1 %cmp117, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %if.end.115
  %102 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %102, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.321

if.end.120:                                       ; preds = %if.end.115
  %103 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory121 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %103, i32 0, i32 1
  %current122 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory121, i32 0, i32 0
  %104 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current122, align 8, !tbaa !40
  %105 = bitcast %struct.gs_ref_memory_s* %104 to %struct.gs_memory_s*
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %105, i32 0, i32 2
  %106 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !51
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %106, i32 0, i32 16
  %107 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !54
  %108 = load i8*, i8** getelementptr inbounds ([48 x i8*], [48 x i8*]* @font_keys, i32 0, i64 19), align 8, !tbaa !1
  %109 = load i16, i16* getelementptr inbounds ([48 x i16], [48 x i16]* @font_keys_sz, i32 0, i64 19), align 2, !tbaa !47
  %conv123 = sext i16 %109 to i32
  %call124 = call i32 @names_ref(%struct.name_table_s* %107, i8* %108, i32 %conv123, %struct.ref_s* %name_FontMatrix, i32 0) #5
  store i32 %call124, i32* %code, align 4, !tbaa !23
  %cmp125 = icmp slt i32 %call124, 0
  br i1 %cmp125, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %if.end.120
  %110 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %110, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.321

if.end.128:                                       ; preds = %if.end.120
  %111 = load %struct.ref_s*, %struct.ref_s** %topdict.addr, align 8, !tbaa !1
  %call129 = call i32 @dict_find(%struct.ref_s* %111, %struct.ref_s* %name_FontMatrix, %struct.ref_s** %array_FontMatrix) #5
  %cmp130 = icmp sgt i32 %call129, 0
  %conv131 = zext i1 %cmp130 to i32
  store i32 %conv131, i32* %top_has_FontMatrix, align 4, !tbaa !23
  store i32 0, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.128
  %112 = load i32, i32* %i, align 4, !tbaa !23
  %count132 = getelementptr inbounds %struct.tag_cff_index_t, %struct.tag_cff_index_t* %fdarray, i32 0, i32 4
  %113 = load i32, i32* %count132, align 4, !tbaa !50
  %cmp133 = icmp ult i32 %112, %113
  br i1 %cmp133, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %114 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %114) #1
  %115 = bitcast i32* %doff to i8*
  call void @llvm.lifetime.start(i64 4, i8* %115) #1
  %116 = bitcast %struct.tag_cff_index_t* %fd_subrs to i8*
  call void @llvm.lifetime.start(i64 20, i8* %116) #1
  %117 = bitcast %struct.ref_s** %fdprivate to i8*
  call void @llvm.lifetime.start(i64 8, i8* %117) #1
  store %struct.ref_s* null, %struct.ref_s** %fdprivate, align 8, !tbaa !1
  %118 = bitcast %struct.ref_s** %fdfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %118) #1
  %119 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom = zext i32 %119 to i64
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %fdarray_ref, i32 0, i32 1
  %refs = bitcast %union.v* %value to %struct.ref_s**
  %120 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %120, i64 %idxprom
  store %struct.ref_s* %arrayidx, %struct.ref_s** %fdfont, align 8, !tbaa !1
  %private_off135 = getelementptr inbounds %struct.tag_font_offsets_t, %struct.tag_font_offsets_t* %offsets, i32 0, i32 4
  store i32 0, i32* %private_off135, align 4, !tbaa !59
  %local_subrs_off136 = getelementptr inbounds %struct.tag_font_offsets_t, %struct.tag_font_offsets_t* %offsets, i32 0, i32 6
  store i32 0, i32* %local_subrs_off136, align 4, !tbaa !62
  %121 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %122 = load i32, i32* %i, align 4, !tbaa !23
  %call137 = call i32 @peek_index(i32* %doff, i32* %len, %struct.tag_cff_index_t* %fdarray, %struct.tag_cff_data_t* %121, i32 %122) #5
  store i32 %call137, i32* %code, align 4, !tbaa !23
  %cmp138 = icmp slt i32 %call137, 0
  br i1 %cmp138, label %if.then.140, label %if.end.141

if.then.140:                                      ; preds = %for.body
  %123 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %123, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.228

if.end.141:                                       ; preds = %for.body
  %124 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory142 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %124, i32 0, i32 1
  %current143 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory142, i32 0, i32 0
  %125 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current143, align 8, !tbaa !40
  %126 = load %struct.ref_s*, %struct.ref_s** %fdfont, align 8, !tbaa !1
  %call144 = call i32 @dict_alloc(%struct.gs_ref_memory_s* %125, i32 5, %struct.ref_s* %126) #5
  store i32 %call144, i32* %code, align 4, !tbaa !23
  %cmp145 = icmp slt i32 %call144, 0
  br i1 %cmp145, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %if.end.141
  %127 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %127, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.228

if.end.148:                                       ; preds = %if.end.141
  %128 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %129 = load %struct.ref_s*, %struct.ref_s** %fdfont, align 8, !tbaa !1
  %130 = load %struct.tag_cff_index_t*, %struct.tag_cff_index_t** %strings.addr, align 8, !tbaa !1
  %131 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %132 = load i32, i32* %doff, align 4, !tbaa !23
  %133 = load i32, i32* %doff, align 4, !tbaa !23
  %134 = load i32, i32* %len, align 4, !tbaa !23
  %add149 = add i32 %133, %134
  %call150 = call i32 @parse_dict(%struct.gs_context_state_s* %128, %struct.ref_s* %129, %struct.tag_font_offsets_t* %offsets, %struct.tag_cff_index_t* %130, %struct.tag_cff_data_t* %131, i32 %132, i32 %add149) #5
  %cmp151 = icmp slt i32 %call150, 0
  %conv152 = zext i1 %cmp151 to i32
  store i32 %conv152, i32* %code, align 4, !tbaa !23
  br i1 %cmp151, label %if.then.153, label %if.end.154

if.then.153:                                      ; preds = %if.end.148
  %135 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %135, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.228

if.end.154:                                       ; preds = %if.end.148
  %136 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %137 = load %struct.ref_s*, %struct.ref_s** %fdfont, align 8, !tbaa !1
  %138 = load %struct.tag_cff_index_t*, %struct.tag_cff_index_t** %strings.addr, align 8, !tbaa !1
  %139 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %140 = load i32, i32* %p_all.addr, align 4, !tbaa !23
  %private_off155 = getelementptr inbounds %struct.tag_font_offsets_t, %struct.tag_font_offsets_t* %offsets, i32 0, i32 4
  %141 = load i32, i32* %private_off155, align 4, !tbaa !59
  %add156 = add i32 %140, %141
  %142 = load i32, i32* %p_all.addr, align 4, !tbaa !23
  %private_off157 = getelementptr inbounds %struct.tag_font_offsets_t, %struct.tag_font_offsets_t* %offsets, i32 0, i32 4
  %143 = load i32, i32* %private_off157, align 4, !tbaa !59
  %add158 = add i32 %142, %143
  %private_size159 = getelementptr inbounds %struct.tag_font_offsets_t, %struct.tag_font_offsets_t* %offsets, i32 0, i32 7
  %144 = load i32, i32* %private_size159, align 4, !tbaa !61
  %add160 = add i32 %add158, %144
  %call161 = call i32 @parse_dict(%struct.gs_context_state_s* %136, %struct.ref_s* %137, %struct.tag_font_offsets_t* %offsets, %struct.tag_cff_index_t* %138, %struct.tag_cff_data_t* %139, i32 %add156, i32 %add160) #5
  %cmp162 = icmp slt i32 %call161, 0
  %conv163 = zext i1 %cmp162 to i32
  store i32 %conv163, i32* %code, align 4, !tbaa !23
  br i1 %cmp162, label %if.then.164, label %if.end.165

if.then.164:                                      ; preds = %if.end.154
  %145 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %145, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.228

if.end.165:                                       ; preds = %if.end.154
  %146 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %147 = load %struct.ref_s*, %struct.ref_s** %fdfont, align 8, !tbaa !1
  %call166 = call i32 @find_font_dict(%struct.gs_context_state_s* %146, %struct.ref_s* %147, %struct.ref_s** %fdprivate, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0)) #5
  store i32 %call166, i32* %code, align 4, !tbaa !23
  %cmp167 = icmp slt i32 %call166, 0
  br i1 %cmp167, label %if.then.169, label %if.end.170

if.then.169:                                      ; preds = %if.end.165
  %148 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %148, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.228

if.end.170:                                       ; preds = %if.end.165
  %local_subrs_off171 = getelementptr inbounds %struct.tag_font_offsets_t, %struct.tag_font_offsets_t* %offsets, i32 0, i32 6
  %149 = load i32, i32* %local_subrs_off171, align 4, !tbaa !62
  %tobool172 = icmp ne i32 %149, 0
  br i1 %tobool172, label %if.then.173, label %if.end.201

if.then.173:                                      ; preds = %if.end.170
  %150 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %151 = load i32, i32* %p_all.addr, align 4, !tbaa !23
  %private_off174 = getelementptr inbounds %struct.tag_font_offsets_t, %struct.tag_font_offsets_t* %offsets, i32 0, i32 4
  %152 = load i32, i32* %private_off174, align 4, !tbaa !59
  %add175 = add i32 %151, %152
  %local_subrs_off176 = getelementptr inbounds %struct.tag_font_offsets_t, %struct.tag_font_offsets_t* %offsets, i32 0, i32 6
  %153 = load i32, i32* %local_subrs_off176, align 4, !tbaa !62
  %add177 = add i32 %add175, %153
  %154 = load i32, i32* %pe_all.addr, align 4, !tbaa !23
  %call178 = call i32 @parse_index(%struct.tag_cff_index_t* %fd_subrs, %struct.tag_cff_data_t* %150, i32 %add177, i32 %154) #5
  store i32 %call178, i32* %code, align 4, !tbaa !23
  %cmp179 = icmp slt i32 %call178, 0
  br i1 %cmp179, label %if.then.181, label %if.end.182

if.then.181:                                      ; preds = %if.then.173
  %155 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %155, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.228

if.end.182:                                       ; preds = %if.then.173
  %count183 = getelementptr inbounds %struct.tag_cff_index_t, %struct.tag_cff_index_t* %fd_subrs, i32 0, i32 4
  %156 = load i32, i32* %count183, align 4, !tbaa !50
  %tobool184 = icmp ne i32 %156, 0
  br i1 %tobool184, label %if.then.185, label %if.end.200

if.then.185:                                      ; preds = %if.end.182
  %157 = bitcast %struct.ref_s* %r186 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %157) #1
  %158 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %159 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %call187 = call i32 @make_stringarray_from_index(%struct.gs_context_state_s* %158, %struct.ref_s* %r186, %struct.tag_cff_index_t* %fd_subrs, %struct.tag_cff_data_t* %159) #5
  store i32 %call187, i32* %code, align 4, !tbaa !23
  %cmp188 = icmp slt i32 %call187, 0
  br i1 %cmp188, label %if.then.190, label %if.end.191

if.then.190:                                      ; preds = %if.then.185
  %160 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %160, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.197

if.end.191:                                       ; preds = %if.then.185
  %161 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %162 = load %struct.ref_s*, %struct.ref_s** %fdprivate, align 8, !tbaa !1
  %call192 = call i32 @idict_put_c_name(%struct.gs_context_state_s* %161, %struct.ref_s* %162, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 5, %struct.ref_s* %r186) #5
  store i32 %call192, i32* %code, align 4, !tbaa !23
  %cmp193 = icmp slt i32 %call192, 0
  br i1 %cmp193, label %if.then.195, label %if.end.196

if.then.195:                                      ; preds = %if.end.191
  %163 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %163, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.197

if.end.196:                                       ; preds = %if.end.191
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.197

cleanup.197:                                      ; preds = %if.end.196, %if.then.195, %if.then.190
  %164 = bitcast %struct.ref_s* %r186 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %164) #1
  %cleanup.dest.198 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.198, label %cleanup.228 [
    i32 0, label %cleanup.cont.199
  ]

cleanup.cont.199:                                 ; preds = %cleanup.197
  br label %if.end.200

if.end.200:                                       ; preds = %cleanup.cont.199, %if.end.182
  br label %if.end.201

if.end.201:                                       ; preds = %if.end.200, %if.end.170
  %165 = load %struct.ref_s*, %struct.ref_s** %global_subrs.addr, align 8, !tbaa !1
  %tobool202 = icmp ne %struct.ref_s* %165, null
  br i1 %tobool202, label %if.then.203, label %if.end.209

if.then.203:                                      ; preds = %if.end.201
  %166 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %167 = load %struct.ref_s*, %struct.ref_s** %fdprivate, align 8, !tbaa !1
  %168 = load %struct.ref_s*, %struct.ref_s** %global_subrs.addr, align 8, !tbaa !1
  %call204 = call i32 @idict_put_c_name(%struct.gs_context_state_s* %166, %struct.ref_s* %167, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 11, %struct.ref_s* %168) #5
  store i32 %call204, i32* %code, align 4, !tbaa !23
  %cmp205 = icmp slt i32 %call204, 0
  br i1 %cmp205, label %if.then.207, label %if.end.208

if.then.207:                                      ; preds = %if.then.203
  %169 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %169, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.228

if.end.208:                                       ; preds = %if.then.203
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.208, %if.end.201
  %170 = load i32, i32* %top_has_FontMatrix, align 4, !tbaa !23
  %tobool210 = icmp ne i32 %170, 0
  br i1 %tobool210, label %if.then.211, label %if.end.222

if.then.211:                                      ; preds = %if.end.209
  %171 = load %struct.ref_s*, %struct.ref_s** %fdfont, align 8, !tbaa !1
  %call212 = call i32 @dict_find(%struct.ref_s* %171, %struct.ref_s* %name_FontMatrix, %struct.ref_s** %array_FontMatrix) #5
  %cmp213 = icmp sle i32 %call212, 0
  br i1 %cmp213, label %if.then.215, label %if.end.221

if.then.215:                                      ; preds = %if.then.211
  %172 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %173 = load %struct.ref_s*, %struct.ref_s** %fdfont, align 8, !tbaa !1
  %call216 = call i32 @set_defaults(%struct.gs_context_state_s* %172, %struct.ref_s* %173, %struct.tag_font_defaults* getelementptr inbounds ([1 x %struct.tag_font_defaults], [1 x %struct.tag_font_defaults]* @set_unit_matrix, i32 0, i32 0), i32 1) #5
  store i32 %call216, i32* %code, align 4, !tbaa !23
  %cmp217 = icmp slt i32 %call216, 0
  br i1 %cmp217, label %if.then.219, label %if.end.220

if.then.219:                                      ; preds = %if.then.215
  %174 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %174, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.228

if.end.220:                                       ; preds = %if.then.215
  br label %if.end.221

if.end.221:                                       ; preds = %if.end.220, %if.then.211
  br label %if.end.222

if.end.222:                                       ; preds = %if.end.221, %if.end.209
  %175 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %176 = load %struct.ref_s*, %struct.ref_s** %fdfont, align 8, !tbaa !1
  %call223 = call i32 @set_defaults(%struct.gs_context_state_s* %175, %struct.ref_s* %176, %struct.tag_font_defaults* getelementptr inbounds ([4 x %struct.tag_font_defaults], [4 x %struct.tag_font_defaults]* @fd_font_defaults, i32 0, i32 0), i32 4) #5
  store i32 %call223, i32* %code, align 4, !tbaa !23
  %cmp224 = icmp slt i32 %call223, 0
  br i1 %cmp224, label %if.then.226, label %if.end.227

if.then.226:                                      ; preds = %if.end.222
  %177 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %177, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.228

if.end.227:                                       ; preds = %if.end.222
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.228

cleanup.228:                                      ; preds = %if.end.227, %if.then.226, %if.then.219, %if.then.207, %cleanup.197, %if.then.181, %if.then.169, %if.then.164, %if.then.153, %if.then.147, %if.then.140
  %178 = bitcast %struct.ref_s** %fdfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %178) #1
  %179 = bitcast %struct.ref_s** %fdprivate to i8*
  call void @llvm.lifetime.end(i64 8, i8* %179) #1
  %180 = bitcast %struct.tag_cff_index_t* %fd_subrs to i8*
  call void @llvm.lifetime.end(i64 20, i8* %180) #1
  %181 = bitcast i32* %doff to i8*
  call void @llvm.lifetime.end(i64 4, i8* %181) #1
  %182 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %182) #1
  %cleanup.dest.233 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.233, label %cleanup.321 [
    i32 0, label %cleanup.cont.234
  ]

cleanup.cont.234:                                 ; preds = %cleanup.228
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont.234
  %183 = load i32, i32* %i, align 4, !tbaa !23
  %inc = add i32 %183, 1
  store i32 %inc, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %184 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %185 = load i32, i32* %p_all.addr, align 4, !tbaa !23
  %186 = load i32, i32* %fdselect_off, align 4, !tbaa !23
  %add235 = add i32 %185, %186
  %187 = load i32, i32* %pe_all.addr, align 4, !tbaa !23
  %call236 = call i32 @card8(i32* %fdselect_code, %struct.tag_cff_data_t* %184, i32 %add235, i32 %187) #5
  store i32 %call236, i32* %code, align 4, !tbaa !23
  %cmp237 = icmp slt i32 %call236, 0
  br i1 %cmp237, label %if.then.239, label %if.end.240

if.then.239:                                      ; preds = %for.end
  %188 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %188, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.321

if.end.240:                                       ; preds = %for.end
  %189 = load i32, i32* %fdselect_code, align 4, !tbaa !23
  %cmp241 = icmp eq i32 %189, 0
  br i1 %cmp241, label %if.then.243, label %if.else

if.then.243:                                      ; preds = %if.end.240
  store i32 (%struct.tag_cff_data_t*, i32, i32, i32)* @format0_fdselect_proc, i32 (%struct.tag_cff_data_t*, i32, i32, i32)** %fdselect_proc, align 8, !tbaa !1
  br label %if.end.249

if.else:                                          ; preds = %if.end.240
  %190 = load i32, i32* %fdselect_code, align 4, !tbaa !23
  %cmp244 = icmp eq i32 %190, 3
  br i1 %cmp244, label %if.then.246, label %if.else.247

if.then.246:                                      ; preds = %if.else
  store i32 (%struct.tag_cff_data_t*, i32, i32, i32)* @format3_fdselect_proc, i32 (%struct.tag_cff_data_t*, i32, i32, i32)** %fdselect_proc, align 8, !tbaa !1
  br label %if.end.248

if.else.247:                                      ; preds = %if.else
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.321

if.end.248:                                       ; preds = %if.then.246
  br label %if.end.249

if.end.249:                                       ; preds = %if.end.248, %if.then.243
  %value250 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %int_ref, i32 0, i32 1
  %intval = bitcast %union.v* %value250 to i64*
  store i64 0, i64* %intval, align 8, !tbaa !29
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %int_ref, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 2816, i16* %type_attrs, align 2, !tbaa !20
  store i32 0, i32* %i, align 4, !tbaa !23
  br label %for.cond.251

for.cond.251:                                     ; preds = %for.inc.302, %if.end.249
  %191 = load i32, i32* %i, align 4, !tbaa !23
  %count252 = getelementptr inbounds %struct.tag_cff_index_t, %struct.tag_cff_index_t* %charstrings_index, i32 0, i32 4
  %192 = load i32, i32* %count252, align 4, !tbaa !50
  %cmp253 = icmp ult i32 %191, %192
  br i1 %cmp253, label %for.body.255, label %for.end.304

for.body.255:                                     ; preds = %for.cond.251
  %193 = bitcast i32* %fd to i8*
  call void @llvm.lifetime.start(i64 4, i8* %193) #1
  %count256 = getelementptr inbounds %struct.tag_cff_index_t, %struct.tag_cff_index_t* %fdarray, i32 0, i32 4
  %194 = load i32, i32* %count256, align 4, !tbaa !50
  %cmp257 = icmp ule i32 %194, 1
  br i1 %cmp257, label %if.then.259, label %if.else.260

if.then.259:                                      ; preds = %for.body.255
  store i32 -1, i32* %fd, align 4, !tbaa !23
  br label %if.end.268

if.else.260:                                      ; preds = %for.body.255
  %195 = load i32 (%struct.tag_cff_data_t*, i32, i32, i32)*, i32 (%struct.tag_cff_data_t*, i32, i32, i32)** %fdselect_proc, align 8, !tbaa !1
  %196 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %197 = load i32, i32* %p_all.addr, align 4, !tbaa !23
  %198 = load i32, i32* %fdselect_off, align 4, !tbaa !23
  %add261 = add i32 %197, %198
  %add262 = add i32 %add261, 1
  %199 = load i32, i32* %pe_all.addr, align 4, !tbaa !23
  %200 = load i32, i32* %i, align 4, !tbaa !23
  %call263 = call i32 %195(%struct.tag_cff_data_t* %196, i32 %add262, i32 %199, i32 %200) #5
  store i32 %call263, i32* %fd, align 4, !tbaa !23
  %201 = load i32, i32* %fd, align 4, !tbaa !23
  %cmp264 = icmp slt i32 %201, 0
  br i1 %cmp264, label %if.then.266, label %if.end.267

if.then.266:                                      ; preds = %if.else.260
  %202 = load i32, i32* %fd, align 4, !tbaa !23
  store i32 %202, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.299

if.end.267:                                       ; preds = %if.else.260
  br label %if.end.268

if.end.268:                                       ; preds = %if.end.267, %if.then.259
  %203 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %204 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %205 = load i32, i32* %i, align 4, !tbaa !23
  %206 = load i32, i32* %fd, align 4, !tbaa !23
  %call269 = call i32 @make_string_from_index(%struct.gs_context_state_s* %203, %struct.ref_s* %cstr_ref, %struct.tag_cff_index_t* %charstrings_index, %struct.tag_cff_data_t* %204, i32 %205, i32 %206) #5
  store i32 %call269, i32* %code, align 4, !tbaa !23
  %cmp270 = icmp slt i32 %call269, 0
  br i1 %cmp270, label %if.then.272, label %if.end.273

if.then.272:                                      ; preds = %if.end.268
  %207 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %207, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.299

if.end.273:                                       ; preds = %if.end.268
  %208 = load i32, i32* %i, align 4, !tbaa !23
  %cmp274 = icmp ugt i32 %208, 0
  br i1 %cmp274, label %if.then.276, label %if.end.284

if.then.276:                                      ; preds = %if.end.273
  %209 = load i32 (%struct.tag_cff_data_t*, i32, i32, i32)*, i32 (%struct.tag_cff_data_t*, i32, i32, i32)** %peek_charset_proc, align 8, !tbaa !1
  %210 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %211 = load i32, i32* %p_all.addr, align 4, !tbaa !23
  %charset_off277 = getelementptr inbounds %struct.tag_font_offsets_t, %struct.tag_font_offsets_t* %offsets, i32 0, i32 2
  %212 = load i32, i32* %charset_off277, align 4, !tbaa !65
  %add278 = add i32 %211, %212
  %add279 = add i32 %add278, 1
  %213 = load i32, i32* %pe_all.addr, align 4, !tbaa !23
  %214 = load i32, i32* %i, align 4, !tbaa !23
  %sub = sub i32 %214, 1
  %call280 = call i32 %209(%struct.tag_cff_data_t* %210, i32 %add279, i32 %213, i32 %sub) #5
  %conv281 = sext i32 %call280 to i64
  %value282 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %int_ref, i32 0, i32 1
  %intval283 = bitcast %union.v* %value282 to i64*
  store i64 %conv281, i64* %intval283, align 8, !tbaa !29
  br label %if.end.284

if.end.284:                                       ; preds = %if.then.276, %if.end.273
  %value285 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %int_ref, i32 0, i32 1
  %intval286 = bitcast %union.v* %value285 to i64*
  %215 = load i64, i64* %intval286, align 8, !tbaa !29
  %cmp287 = icmp slt i64 %215, 0
  br i1 %cmp287, label %if.then.289, label %if.end.293

if.then.289:                                      ; preds = %if.end.284
  %value290 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %int_ref, i32 0, i32 1
  %intval291 = bitcast %union.v* %value290 to i64*
  %216 = load i64, i64* %intval291, align 8, !tbaa !29
  %conv292 = trunc i64 %216 to i32
  store i32 %conv292, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.299

if.end.293:                                       ; preds = %if.end.284
  %217 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %217, i32 0, i32 24
  %call294 = call i32 @dict_put(%struct.ref_s* %glyph_directory_ref, %struct.ref_s* %int_ref, %struct.ref_s* %cstr_ref, %struct.dict_stack_s* %dict_stack) #5
  store i32 %call294, i32* %code, align 4, !tbaa !23
  %cmp295 = icmp slt i32 %call294, 0
  br i1 %cmp295, label %if.then.297, label %if.end.298

if.then.297:                                      ; preds = %if.end.293
  %218 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %218, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.299

if.end.298:                                       ; preds = %if.end.293
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.299

cleanup.299:                                      ; preds = %if.end.298, %if.then.297, %if.then.289, %if.then.272, %if.then.266
  %219 = bitcast i32* %fd to i8*
  call void @llvm.lifetime.end(i64 4, i8* %219) #1
  %cleanup.dest.300 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.300, label %cleanup.321 [
    i32 0, label %cleanup.cont.301
  ]

cleanup.cont.301:                                 ; preds = %cleanup.299
  br label %for.inc.302

for.inc.302:                                      ; preds = %cleanup.cont.301
  %220 = load i32, i32* %i, align 4, !tbaa !23
  %inc303 = add i32 %220, 1
  store i32 %inc303, i32* %i, align 4, !tbaa !23
  br label %for.cond.251

for.end.304:                                      ; preds = %for.cond.251
  %count305 = getelementptr inbounds %struct.tag_cff_index_t, %struct.tag_cff_index_t* %fdarray, i32 0, i32 4
  %221 = load i32, i32* %count305, align 4, !tbaa !50
  %cmp306 = icmp ugt i32 %221, 1
  %conv307 = zext i1 %cmp306 to i32
  %conv308 = sext i32 %conv307 to i64
  %value309 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %int_ref, i32 0, i32 1
  %intval310 = bitcast %union.v* %value309 to i64*
  store i64 %conv308, i64* %intval310, align 8, !tbaa !29
  %222 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %223 = load %struct.ref_s*, %struct.ref_s** %topdict.addr, align 8, !tbaa !1
  %call311 = call i32 @idict_put_c_name(%struct.gs_context_state_s* %222, %struct.ref_s* %223, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i32 7, %struct.ref_s* %int_ref) #5
  store i32 %call311, i32* %code, align 4, !tbaa !23
  %cmp312 = icmp slt i32 %call311, 0
  br i1 %cmp312, label %if.then.314, label %if.end.315

if.then.314:                                      ; preds = %for.end.304
  %224 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %224, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.321

if.end.315:                                       ; preds = %for.end.304
  %225 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %226 = load %struct.ref_s*, %struct.ref_s** %topdict.addr, align 8, !tbaa !1
  %call316 = call i32 @set_defaults(%struct.gs_context_state_s* %225, %struct.ref_s* %226, %struct.tag_font_defaults* getelementptr inbounds ([4 x %struct.tag_font_defaults], [4 x %struct.tag_font_defaults]* @cid_font_defaults, i32 0, i32 0), i32 4) #5
  store i32 %call316, i32* %code, align 4, !tbaa !23
  %cmp317 = icmp slt i32 %call316, 0
  br i1 %cmp317, label %if.then.319, label %if.end.320

if.then.319:                                      ; preds = %if.end.315
  %227 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %227, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.321

if.end.320:                                       ; preds = %if.end.315
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.321

cleanup.321:                                      ; preds = %if.end.320, %if.then.319, %if.then.314, %cleanup.299, %if.else.247, %if.then.239, %cleanup.228, %if.then.127, %if.then.119, %if.then.114, %if.then.105, %if.then.100, %if.then.94, %if.then.87
  %228 = bitcast i32* %top_has_FontMatrix to i8*
  call void @llvm.lifetime.end(i64 4, i8* %228) #1
  %229 = bitcast %struct.ref_s* %name_FontMatrix to i8*
  call void @llvm.lifetime.end(i64 16, i8* %229) #1
  %230 = bitcast %struct.ref_s** %array_FontMatrix to i8*
  call void @llvm.lifetime.end(i64 8, i8* %230) #1
  %231 = bitcast i32 (%struct.tag_cff_data_t*, i32, i32, i32)** %fdselect_proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %231) #1
  %232 = bitcast i32* %fdselect_code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %232) #1
  %233 = bitcast i32* %fdselect_off to i8*
  call void @llvm.lifetime.end(i64 4, i8* %233) #1
  %234 = bitcast %struct.ref_s* %glyph_directory_ref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %234) #1
  %235 = bitcast %struct.ref_s* %fdarray_ref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %235) #1
  %236 = bitcast %struct.ref_s* %cstr_ref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %236) #1
  %237 = bitcast %struct.ref_s* %int_ref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %237) #1
  %238 = bitcast %struct.tag_cff_index_t* %fdarray to i8*
  call void @llvm.lifetime.end(i64 20, i8* %238) #1
  %239 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %239) #1
  %cleanup.dest.333 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.333, label %cleanup.899 [
    i32 0, label %cleanup.cont.334
  ]

cleanup.cont.334:                                 ; preds = %cleanup.321
  br label %if.end.898

if.else.335:                                      ; preds = %sw.epilog.78
  %240 = load i32, i32* %force_cidfont.addr, align 4, !tbaa !23
  %tobool336 = icmp ne i32 %240, 0
  br i1 %tobool336, label %if.then.337, label %if.else.531

if.then.337:                                      ; preds = %if.else.335
  %241 = bitcast %struct.ref_s* %int_ref338 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %241) #1
  %242 = bitcast %struct.ref_s* %str_ref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %242) #1
  %243 = bitcast %struct.ref_s* %glyph_directory_ref339 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %243) #1
  %244 = bitcast %struct.ref_s* %fdarray_ref340 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %244) #1
  %245 = bitcast %struct.ref_s* %cidsysteminfo_ref to i8*
  call void @llvm.lifetime.start(i64 16, i8* %245) #1
  %246 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %247 = load %struct.ref_s*, %struct.ref_s** %topdict.addr, align 8, !tbaa !1
  %call341 = call i32 @idict_undef_c_name(%struct.gs_context_state_s* %246, %struct.ref_s* %247, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i32 8) #5
  store i32 %call341, i32* %code, align 4, !tbaa !23
  %cmp342 = icmp slt i32 %call341, 0
  br i1 %cmp342, label %if.then.344, label %if.end.345

if.then.344:                                      ; preds = %if.then.337
  %248 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %248, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.524

if.end.345:                                       ; preds = %if.then.337
  %249 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %250 = load %struct.ref_s*, %struct.ref_s** %topdict.addr, align 8, !tbaa !1
  %call346 = call i32 @idict_undef_c_name(%struct.gs_context_state_s* %249, %struct.ref_s* %250, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i32 4) #5
  store i32 %call346, i32* %code, align 4, !tbaa !23
  %cmp347 = icmp slt i32 %call346, 0
  br i1 %cmp347, label %if.then.349, label %if.end.350

if.then.349:                                      ; preds = %if.end.345
  %251 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %251, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.524

if.end.350:                                       ; preds = %if.end.345
  %252 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory351 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %252, i32 0, i32 1
  %current352 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory351, i32 0, i32 0
  %253 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current352, align 8, !tbaa !40
  %call353 = call i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s* %253, %struct.ref_s* %fdarray_ref340, i32 96, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0)) #5
  store i32 %call353, i32* %code, align 4, !tbaa !23
  %cmp354 = icmp slt i32 %call353, 0
  br i1 %cmp354, label %if.then.356, label %if.end.357

if.then.356:                                      ; preds = %if.end.350
  %254 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %254, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.524

if.end.357:                                       ; preds = %if.end.350
  %255 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %256 = load %struct.ref_s*, %struct.ref_s** %topdict.addr, align 8, !tbaa !1
  %call358 = call i32 @idict_put_c_name(%struct.gs_context_state_s* %255, %struct.ref_s* %256, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i32 7, %struct.ref_s* %fdarray_ref340) #5
  store i32 %call358, i32* %code, align 4, !tbaa !23
  %cmp359 = icmp slt i32 %call358, 0
  br i1 %cmp359, label %if.then.361, label %if.end.362

if.then.361:                                      ; preds = %if.end.357
  %257 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %257, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.524

if.end.362:                                       ; preds = %if.end.357
  %258 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory363 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %258, i32 0, i32 1
  %current364 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory363, i32 0, i32 0
  %259 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current364, align 8, !tbaa !40
  %value365 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %fdarray_ref340, i32 0, i32 1
  %refs366 = bitcast %union.v* %value365 to %struct.ref_s**
  %260 = load %struct.ref_s*, %struct.ref_s** %refs366, align 8, !tbaa !1
  %arrayidx367 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %260, i64 0
  %call368 = call i32 @dict_alloc(%struct.gs_ref_memory_s* %259, i32 4, %struct.ref_s* %arrayidx367) #5
  store i32 %call368, i32* %code, align 4, !tbaa !23
  %cmp369 = icmp slt i32 %call368, 0
  br i1 %cmp369, label %if.then.371, label %if.end.372

if.then.371:                                      ; preds = %if.end.362
  %261 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %261, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.524

if.end.372:                                       ; preds = %if.end.362
  %262 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %value373 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %fdarray_ref340, i32 0, i32 1
  %refs374 = bitcast %union.v* %value373 to %struct.ref_s**
  %263 = load %struct.ref_s*, %struct.ref_s** %refs374, align 8, !tbaa !1
  %arrayidx375 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %263, i64 0
  %264 = load %struct.ref_s*, %struct.ref_s** %topdict.addr, align 8, !tbaa !1
  %call376 = call i32 @idict_move_c_name(%struct.gs_context_state_s* %262, %struct.ref_s* %arrayidx375, %struct.ref_s* %264, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), i32 10) #5
  store i32 %call376, i32* %code, align 4, !tbaa !23
  %cmp377 = icmp slt i32 %call376, 0
  br i1 %cmp377, label %if.then.379, label %if.end.380

if.then.379:                                      ; preds = %if.end.372
  %265 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %265, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.524

if.end.380:                                       ; preds = %if.end.372
  %266 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %value381 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %fdarray_ref340, i32 0, i32 1
  %refs382 = bitcast %union.v* %value381 to %struct.ref_s**
  %267 = load %struct.ref_s*, %struct.ref_s** %refs382, align 8, !tbaa !1
  %arrayidx383 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %267, i64 0
  %268 = load %struct.ref_s*, %struct.ref_s** %topdict.addr, align 8, !tbaa !1
  %call384 = call i32 @idict_move_c_name(%struct.gs_context_state_s* %266, %struct.ref_s* %arrayidx383, %struct.ref_s* %268, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i32 7) #5
  store i32 %call384, i32* %code, align 4, !tbaa !23
  %cmp385 = icmp slt i32 %call384, 0
  br i1 %cmp385, label %if.then.387, label %if.end.388

if.then.387:                                      ; preds = %if.end.380
  %269 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %269, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.524

if.end.388:                                       ; preds = %if.end.380
  %270 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %value389 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %fdarray_ref340, i32 0, i32 1
  %refs390 = bitcast %union.v* %value389 to %struct.ref_s**
  %271 = load %struct.ref_s*, %struct.ref_s** %refs390, align 8, !tbaa !1
  %arrayidx391 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %271, i64 0
  %272 = load %struct.ref_s*, %struct.ref_s** %topdict.addr, align 8, !tbaa !1
  %call392 = call i32 @idict_move_c_name(%struct.gs_context_state_s* %270, %struct.ref_s* %arrayidx391, %struct.ref_s* %272, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i32 8) #5
  store i32 %call392, i32* %code, align 4, !tbaa !23
  %cmp393 = icmp slt i32 %call392, 0
  br i1 %cmp393, label %if.then.395, label %if.end.396

if.then.395:                                      ; preds = %if.end.388
  %273 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %273, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.524

if.end.396:                                       ; preds = %if.end.388
  %274 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %value397 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %fdarray_ref340, i32 0, i32 1
  %refs398 = bitcast %union.v* %value397 to %struct.ref_s**
  %275 = load %struct.ref_s*, %struct.ref_s** %refs398, align 8, !tbaa !1
  %arrayidx399 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %275, i64 0
  %276 = load %struct.ref_s*, %struct.ref_s** %topdict.addr, align 8, !tbaa !1
  %call400 = call i32 @idict_move_c_name(%struct.gs_context_state_s* %274, %struct.ref_s* %arrayidx399, %struct.ref_s* %276, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i32 9) #5
  store i32 %call400, i32* %code, align 4, !tbaa !23
  %cmp401 = icmp slt i32 %call400, 0
  br i1 %cmp401, label %if.then.403, label %if.end.404

if.then.403:                                      ; preds = %if.end.396
  %277 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %277, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.524

if.end.404:                                       ; preds = %if.end.396
  %278 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %value405 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %fdarray_ref340, i32 0, i32 1
  %refs406 = bitcast %union.v* %value405 to %struct.ref_s**
  %279 = load %struct.ref_s*, %struct.ref_s** %refs406, align 8, !tbaa !1
  %arrayidx407 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %279, i64 0
  %call408 = call i32 @set_defaults(%struct.gs_context_state_s* %278, %struct.ref_s* %arrayidx407, %struct.tag_font_defaults* getelementptr inbounds ([4 x %struct.tag_font_defaults], [4 x %struct.tag_font_defaults]* @fd_font_defaults, i32 0, i32 0), i32 4) #5
  store i32 %call408, i32* %code, align 4, !tbaa !23
  %cmp409 = icmp slt i32 %call408, 0
  br i1 %cmp409, label %if.then.411, label %if.end.412

if.then.411:                                      ; preds = %if.end.404
  %280 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %280, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.524

if.end.412:                                       ; preds = %if.end.404
  %281 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory413 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %281, i32 0, i32 1
  %current414 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory413, i32 0, i32 0
  %282 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current414, align 8, !tbaa !40
  %call415 = call i32 @dict_alloc(%struct.gs_ref_memory_s* %282, i32 3, %struct.ref_s* %cidsysteminfo_ref) #5
  store i32 %call415, i32* %code, align 4, !tbaa !23
  %cmp416 = icmp slt i32 %call415, 0
  br i1 %cmp416, label %if.then.418, label %if.end.419

if.then.418:                                      ; preds = %if.end.412
  %283 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %283, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.524

if.end.419:                                       ; preds = %if.end.412
  %value420 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %str_ref, i32 0, i32 1
  %bytes = bitcast %union.v* %value420 to i8**
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i8** %bytes, align 8, !tbaa !1
  %tas421 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %str_ref, i32 0, i32 0
  %type_attrs422 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas421, i32 0, i32 0
  store i16 4704, i16* %type_attrs422, align 2, !tbaa !20
  %tas423 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %str_ref, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas423, i32 0, i32 2
  store i32 5, i32* %rsize, align 4, !tbaa !30
  %284 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call424 = call i32 @idict_put_c_name(%struct.gs_context_state_s* %284, %struct.ref_s* %cidsysteminfo_ref, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i32 8, %struct.ref_s* %str_ref) #5
  store i32 %call424, i32* %code, align 4, !tbaa !23
  %cmp425 = icmp slt i32 %call424, 0
  br i1 %cmp425, label %if.then.427, label %if.end.428

if.then.427:                                      ; preds = %if.end.419
  %285 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %285, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.524

if.end.428:                                       ; preds = %if.end.419
  %value429 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %str_ref, i32 0, i32 1
  %bytes430 = bitcast %union.v* %value429 to i8**
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i8** %bytes430, align 8, !tbaa !1
  %tas431 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %str_ref, i32 0, i32 0
  %type_attrs432 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas431, i32 0, i32 0
  store i16 4704, i16* %type_attrs432, align 2, !tbaa !20
  %tas433 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %str_ref, i32 0, i32 0
  %rsize434 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas433, i32 0, i32 2
  store i32 8, i32* %rsize434, align 4, !tbaa !30
  %286 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call435 = call i32 @idict_put_c_name(%struct.gs_context_state_s* %286, %struct.ref_s* %cidsysteminfo_ref, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i32 8, %struct.ref_s* %str_ref) #5
  store i32 %call435, i32* %code, align 4, !tbaa !23
  %cmp436 = icmp slt i32 %call435, 0
  br i1 %cmp436, label %if.then.438, label %if.end.439

if.then.438:                                      ; preds = %if.end.428
  %287 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %287, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.524

if.end.439:                                       ; preds = %if.end.428
  %value440 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %int_ref338, i32 0, i32 1
  %intval441 = bitcast %union.v* %value440 to i64*
  store i64 0, i64* %intval441, align 8, !tbaa !29
  %tas442 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %int_ref338, i32 0, i32 0
  %type_attrs443 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas442, i32 0, i32 0
  store i16 2816, i16* %type_attrs443, align 2, !tbaa !20
  %288 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call444 = call i32 @idict_put_c_name(%struct.gs_context_state_s* %288, %struct.ref_s* %cidsysteminfo_ref, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), i32 10, %struct.ref_s* %int_ref338) #5
  store i32 %call444, i32* %code, align 4, !tbaa !23
  %cmp445 = icmp slt i32 %call444, 0
  br i1 %cmp445, label %if.then.447, label %if.end.448

if.then.447:                                      ; preds = %if.end.439
  %289 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %289, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.524

if.end.448:                                       ; preds = %if.end.439
  %290 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %291 = load %struct.ref_s*, %struct.ref_s** %topdict.addr, align 8, !tbaa !1
  %call449 = call i32 @idict_put_c_name(%struct.gs_context_state_s* %290, %struct.ref_s* %291, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), i32 13, %struct.ref_s* %cidsysteminfo_ref) #5
  store i32 %call449, i32* %code, align 4, !tbaa !23
  %cmp450 = icmp slt i32 %call449, 0
  br i1 %cmp450, label %if.then.452, label %if.end.453

if.then.452:                                      ; preds = %if.end.448
  %292 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %292, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.524

if.end.453:                                       ; preds = %if.end.448
  %293 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %294 = load %struct.ref_s*, %struct.ref_s** %topdict.addr, align 8, !tbaa !1
  %call454 = call i32 @idict_put_c_name(%struct.gs_context_state_s* %293, %struct.ref_s* %294, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i32 7, %struct.ref_s* %int_ref338) #5
  store i32 %call454, i32* %code, align 4, !tbaa !23
  %cmp455 = icmp slt i32 %call454, 0
  br i1 %cmp455, label %if.then.457, label %if.end.458

if.then.457:                                      ; preds = %if.end.453
  %295 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %295, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.524

if.end.458:                                       ; preds = %if.end.453
  %296 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory459 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %296, i32 0, i32 1
  %current460 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory459, i32 0, i32 0
  %297 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current460, align 8, !tbaa !40
  %count461 = getelementptr inbounds %struct.tag_cff_index_t, %struct.tag_cff_index_t* %charstrings_index, i32 0, i32 4
  %298 = load i32, i32* %count461, align 4, !tbaa !50
  %add462 = add i32 %298, 1
  %call463 = call i32 @dict_alloc(%struct.gs_ref_memory_s* %297, i32 %add462, %struct.ref_s* %glyph_directory_ref339) #5
  store i32 %call463, i32* %code, align 4, !tbaa !23
  %cmp464 = icmp slt i32 %call463, 0
  br i1 %cmp464, label %if.then.466, label %if.end.467

if.then.466:                                      ; preds = %if.end.458
  %299 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %299, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.524

if.end.467:                                       ; preds = %if.end.458
  %300 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %301 = load %struct.ref_s*, %struct.ref_s** %topdict.addr, align 8, !tbaa !1
  %call468 = call i32 @idict_put_c_name(%struct.gs_context_state_s* %300, %struct.ref_s* %301, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i32 14, %struct.ref_s* %glyph_directory_ref339) #5
  store i32 %call468, i32* %code, align 4, !tbaa !23
  %cmp469 = icmp slt i32 %call468, 0
  br i1 %cmp469, label %if.then.471, label %if.end.472

if.then.471:                                      ; preds = %if.end.467
  %302 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %302, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.524

if.end.472:                                       ; preds = %if.end.467
  %value473 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %int_ref338, i32 0, i32 1
  %intval474 = bitcast %union.v* %value473 to i64*
  store i64 0, i64* %intval474, align 8, !tbaa !29
  %tas475 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %int_ref338, i32 0, i32 0
  %type_attrs476 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas475, i32 0, i32 0
  store i16 2816, i16* %type_attrs476, align 2, !tbaa !20
  br label %for.cond.477

for.cond.477:                                     ; preds = %for.inc.503, %if.end.472
  %value478 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %int_ref338, i32 0, i32 1
  %intval479 = bitcast %union.v* %value478 to i64*
  %303 = load i64, i64* %intval479, align 8, !tbaa !29
  %count480 = getelementptr inbounds %struct.tag_cff_index_t, %struct.tag_cff_index_t* %charstrings_index, i32 0, i32 4
  %304 = load i32, i32* %count480, align 4, !tbaa !50
  %conv481 = sext i32 %304 to i64
  %cmp482 = icmp slt i64 %303, %conv481
  br i1 %cmp482, label %for.body.484, label %for.end.507

for.body.484:                                     ; preds = %for.cond.477
  %305 = bitcast %struct.ref_s* %cstr_ref485 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %305) #1
  %306 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %307 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %value486 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %int_ref338, i32 0, i32 1
  %intval487 = bitcast %union.v* %value486 to i64*
  %308 = load i64, i64* %intval487, align 8, !tbaa !29
  %conv488 = trunc i64 %308 to i32
  %call489 = call i32 @make_string_from_index(%struct.gs_context_state_s* %306, %struct.ref_s* %cstr_ref485, %struct.tag_cff_index_t* %charstrings_index, %struct.tag_cff_data_t* %307, i32 %conv488, i32 -1) #5
  store i32 %call489, i32* %code, align 4, !tbaa !23
  %cmp490 = icmp slt i32 %call489, 0
  br i1 %cmp490, label %if.then.492, label %if.end.493

if.then.492:                                      ; preds = %for.body.484
  %309 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %309, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.500

if.end.493:                                       ; preds = %for.body.484
  %310 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack494 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %310, i32 0, i32 24
  %call495 = call i32 @dict_put(%struct.ref_s* %glyph_directory_ref339, %struct.ref_s* %int_ref338, %struct.ref_s* %cstr_ref485, %struct.dict_stack_s* %dict_stack494) #5
  store i32 %call495, i32* %code, align 4, !tbaa !23
  %cmp496 = icmp slt i32 %call495, 0
  br i1 %cmp496, label %if.then.498, label %if.end.499

if.then.498:                                      ; preds = %if.end.493
  %311 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %311, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.500

if.end.499:                                       ; preds = %if.end.493
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.500

cleanup.500:                                      ; preds = %if.end.499, %if.then.498, %if.then.492
  %312 = bitcast %struct.ref_s* %cstr_ref485 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %312) #1
  %cleanup.dest.501 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.501, label %cleanup.524 [
    i32 0, label %cleanup.cont.502
  ]

cleanup.cont.502:                                 ; preds = %cleanup.500
  br label %for.inc.503

for.inc.503:                                      ; preds = %cleanup.cont.502
  %value504 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %int_ref338, i32 0, i32 1
  %intval505 = bitcast %union.v* %value504 to i64*
  %313 = load i64, i64* %intval505, align 8, !tbaa !29
  %inc506 = add nsw i64 %313, 1
  store i64 %inc506, i64* %intval505, align 8, !tbaa !29
  br label %for.cond.477

for.end.507:                                      ; preds = %for.cond.477
  %count508 = getelementptr inbounds %struct.tag_cff_index_t, %struct.tag_cff_index_t* %charstrings_index, i32 0, i32 4
  %314 = load i32, i32* %count508, align 4, !tbaa !50
  %conv509 = zext i32 %314 to i64
  %value510 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %int_ref338, i32 0, i32 1
  %intval511 = bitcast %union.v* %value510 to i64*
  store i64 %conv509, i64* %intval511, align 8, !tbaa !29
  %tas512 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %int_ref338, i32 0, i32 0
  %type_attrs513 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas512, i32 0, i32 0
  store i16 2816, i16* %type_attrs513, align 2, !tbaa !20
  %315 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %316 = load %struct.ref_s*, %struct.ref_s** %topdict.addr, align 8, !tbaa !1
  %call514 = call i32 @idict_put_c_name(%struct.gs_context_state_s* %315, %struct.ref_s* %316, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), i32 8, %struct.ref_s* %int_ref338) #5
  store i32 %call514, i32* %code, align 4, !tbaa !23
  %cmp515 = icmp slt i32 %call514, 0
  br i1 %cmp515, label %if.then.517, label %if.end.518

if.then.517:                                      ; preds = %for.end.507
  %317 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %317, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.524

if.end.518:                                       ; preds = %for.end.507
  %318 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %319 = load %struct.ref_s*, %struct.ref_s** %topdict.addr, align 8, !tbaa !1
  %call519 = call i32 @set_defaults(%struct.gs_context_state_s* %318, %struct.ref_s* %319, %struct.tag_font_defaults* getelementptr inbounds ([4 x %struct.tag_font_defaults], [4 x %struct.tag_font_defaults]* @cid_font_defaults, i32 0, i32 0), i32 4) #5
  store i32 %call519, i32* %code, align 4, !tbaa !23
  %cmp520 = icmp slt i32 %call519, 0
  br i1 %cmp520, label %if.then.522, label %if.end.523

if.then.522:                                      ; preds = %if.end.518
  %320 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %320, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.524

if.end.523:                                       ; preds = %if.end.518
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.524

cleanup.524:                                      ; preds = %if.end.523, %if.then.522, %if.then.517, %cleanup.500, %if.then.471, %if.then.466, %if.then.457, %if.then.452, %if.then.447, %if.then.438, %if.then.427, %if.then.418, %if.then.411, %if.then.403, %if.then.395, %if.then.387, %if.then.379, %if.then.371, %if.then.361, %if.then.356, %if.then.349, %if.then.344
  %321 = bitcast %struct.ref_s* %cidsysteminfo_ref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %321) #1
  %322 = bitcast %struct.ref_s* %fdarray_ref340 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %322) #1
  %323 = bitcast %struct.ref_s* %glyph_directory_ref339 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %323) #1
  %324 = bitcast %struct.ref_s* %str_ref to i8*
  call void @llvm.lifetime.end(i64 16, i8* %324) #1
  %325 = bitcast %struct.ref_s* %int_ref338 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %325) #1
  %cleanup.dest.529 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.529, label %cleanup.899 [
    i32 0, label %cleanup.cont.530
  ]

cleanup.cont.530:                                 ; preds = %cleanup.524
  br label %if.end.897

if.else.531:                                      ; preds = %if.else.335
  %326 = bitcast i32* %i532 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %326) #1
  %327 = bitcast i32* %gid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %327) #1
  %328 = bitcast i32* %enc_format to i8*
  call void @llvm.lifetime.start(i64 4, i8* %328) #1
  %329 = bitcast i32* %sid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %329) #1
  %330 = bitcast %struct.ref_s* %name to i8*
  call void @llvm.lifetime.start(i64 16, i8* %330) #1
  %331 = bitcast %struct.ref_s* %cstr to i8*
  call void @llvm.lifetime.start(i64 16, i8* %331) #1
  %332 = bitcast %struct.ref_s* %charstrings_dict to i8*
  call void @llvm.lifetime.start(i64 16, i8* %332) #1
  %333 = bitcast %struct.ref_s* %encoding to i8*
  call void @llvm.lifetime.start(i64 16, i8* %333) #1
  %334 = bitcast %struct.ref_s* %notdef to i8*
  call void @llvm.lifetime.start(i64 16, i8* %334) #1
  %335 = bitcast [256 x i8]* %gid2char to i8*
  call void @llvm.lifetime.start(i64 256, i8* %335) #1
  %336 = bitcast i32* %supp_enc_offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %336) #1
  %337 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory533 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %337, i32 0, i32 1
  %current534 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory533, i32 0, i32 0
  %338 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current534, align 8, !tbaa !40
  %339 = bitcast %struct.gs_ref_memory_s* %338 to %struct.gs_memory_s*
  %gs_lib_ctx535 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %339, i32 0, i32 2
  %340 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx535, align 8, !tbaa !51
  %gs_name_table536 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %340, i32 0, i32 16
  %341 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table536, align 8, !tbaa !54
  %call537 = call i32 @names_ref(%struct.name_table_s* %341, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), i32 7, %struct.ref_s* %notdef, i32 0) #5
  store i32 %call537, i32* %code, align 4, !tbaa !23
  %cmp538 = icmp slt i32 %call537, 0
  br i1 %cmp538, label %if.then.540, label %if.end.541

if.then.540:                                      ; preds = %if.else.531
  %342 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %342, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.884

if.end.541:                                       ; preds = %if.else.531
  %343 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %344 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %call542 = call i32 @make_string_from_index(%struct.gs_context_state_s* %343, %struct.ref_s* %cstr, %struct.tag_cff_index_t* %charstrings_index, %struct.tag_cff_data_t* %344, i32 0, i32 -1) #5
  store i32 %call542, i32* %code, align 4, !tbaa !23
  %cmp543 = icmp slt i32 %call542, 0
  br i1 %cmp543, label %if.then.545, label %if.end.546

if.then.545:                                      ; preds = %if.end.541
  %345 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %345, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.884

if.end.546:                                       ; preds = %if.end.541
  %346 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory547 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %346, i32 0, i32 1
  %current548 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory547, i32 0, i32 0
  %347 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current548, align 8, !tbaa !40
  %count549 = getelementptr inbounds %struct.tag_cff_index_t, %struct.tag_cff_index_t* %charstrings_index, i32 0, i32 4
  %348 = load i32, i32* %count549, align 4, !tbaa !50
  %add550 = add i32 %348, 1
  %call551 = call i32 @dict_alloc(%struct.gs_ref_memory_s* %347, i32 %add550, %struct.ref_s* %charstrings_dict) #5
  store i32 %call551, i32* %code, align 4, !tbaa !23
  %cmp552 = icmp slt i32 %call551, 0
  br i1 %cmp552, label %if.then.554, label %if.end.555

if.then.554:                                      ; preds = %if.end.546
  %349 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %349, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.884

if.end.555:                                       ; preds = %if.end.546
  %350 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %351 = load %struct.ref_s*, %struct.ref_s** %topdict.addr, align 8, !tbaa !1
  %call556 = call i32 @idict_put_c_name(%struct.gs_context_state_s* %350, %struct.ref_s* %351, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 11, %struct.ref_s* %charstrings_dict) #5
  store i32 %call556, i32* %code, align 4, !tbaa !23
  %cmp557 = icmp slt i32 %call556, 0
  br i1 %cmp557, label %if.then.559, label %if.end.560

if.then.559:                                      ; preds = %if.end.555
  %352 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %352, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.884

if.end.560:                                       ; preds = %if.end.555
  %353 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack561 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %353, i32 0, i32 24
  %call562 = call i32 @dict_put(%struct.ref_s* %charstrings_dict, %struct.ref_s* %notdef, %struct.ref_s* %cstr, %struct.dict_stack_s* %dict_stack561) #5
  store i32 %call562, i32* %code, align 4, !tbaa !23
  %cmp563 = icmp slt i32 %call562, 0
  br i1 %cmp563, label %if.then.565, label %if.end.566

if.then.565:                                      ; preds = %if.end.560
  %354 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %354, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.884

if.end.566:                                       ; preds = %if.end.560
  %encoding_off = getelementptr inbounds %struct.tag_font_offsets_t, %struct.tag_font_offsets_t* %offsets, i32 0, i32 3
  %355 = load i32, i32* %encoding_off, align 4, !tbaa !68
  %cmp567 = icmp ule i32 %355, 1
  br i1 %cmp567, label %if.then.569, label %if.else.599

if.then.569:                                      ; preds = %if.end.566
  %356 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory570 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %356, i32 0, i32 1
  %current571 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory570, i32 0, i32 0
  %357 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current571, align 8, !tbaa !40
  %call572 = call i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s* %357, %struct.ref_s* %encoding, i32 96, i32 256, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i32 0, i32 0)) #5
  store i32 %call572, i32* %code, align 4, !tbaa !23
  %cmp573 = icmp slt i32 %call572, 0
  br i1 %cmp573, label %if.then.575, label %if.end.576

if.then.575:                                      ; preds = %if.then.569
  %358 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %358, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.884

if.end.576:                                       ; preds = %if.then.569
  store i32 0, i32* %i532, align 4, !tbaa !23
  br label %for.cond.577

for.cond.577:                                     ; preds = %for.inc.596, %if.end.576
  %359 = load i32, i32* %i532, align 4, !tbaa !23
  %cmp578 = icmp ult i32 %359, 256
  br i1 %cmp578, label %for.body.580, label %for.end.598

for.body.580:                                     ; preds = %for.cond.577
  %360 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %361 = load i32, i32* %i532, align 4, !tbaa !23
  %idxprom581 = zext i32 %361 to i64
  %value582 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %encoding, i32 0, i32 1
  %refs583 = bitcast %union.v* %value582 to %struct.ref_s**
  %362 = load %struct.ref_s*, %struct.ref_s** %refs583, align 8, !tbaa !1
  %arrayidx584 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %362, i64 %idxprom581
  %363 = load %struct.tag_cff_index_t*, %struct.tag_cff_index_t** %strings.addr, align 8, !tbaa !1
  %364 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %365 = load i32, i32* %i532, align 4, !tbaa !23
  %idxprom585 = zext i32 %365 to i64
  %encoding_off586 = getelementptr inbounds %struct.tag_font_offsets_t, %struct.tag_font_offsets_t* %offsets, i32 0, i32 3
  %366 = load i32, i32* %encoding_off586, align 4, !tbaa !68
  %tobool587 = icmp ne i32 %366, 0
  %cond588 = select i1 %tobool587, i16* getelementptr inbounds ([256 x i16], [256 x i16]* @expert_encoding, i32 0, i32 0), i16* getelementptr inbounds ([256 x i16], [256 x i16]* @standard_encoding, i32 0, i32 0)
  %arrayidx589 = getelementptr inbounds i16, i16* %cond588, i64 %idxprom585
  %367 = load i16, i16* %arrayidx589, align 2, !tbaa !47
  %conv590 = zext i16 %367 to i32
  %call591 = call i32 @make_name_from_sid(%struct.gs_context_state_s* %360, %struct.ref_s* %arrayidx584, %struct.tag_cff_index_t* %363, %struct.tag_cff_data_t* %364, i32 %conv590) #5
  store i32 %call591, i32* %code, align 4, !tbaa !23
  %cmp592 = icmp slt i32 %call591, 0
  br i1 %cmp592, label %if.then.594, label %if.end.595

if.then.594:                                      ; preds = %for.body.580
  %368 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %368, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.884

if.end.595:                                       ; preds = %for.body.580
  br label %for.inc.596

for.inc.596:                                      ; preds = %if.end.595
  %369 = load i32, i32* %i532, align 4, !tbaa !23
  %inc597 = add i32 %369, 1
  store i32 %inc597, i32* %i532, align 4, !tbaa !23
  br label %for.cond.577

for.end.598:                                      ; preds = %for.cond.577
  br label %if.end.747

if.else.599:                                      ; preds = %if.end.566
  %370 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory600 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %370, i32 0, i32 1
  %current601 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory600, i32 0, i32 0
  %371 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current601, align 8, !tbaa !40
  %call602 = call i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s* %371, %struct.ref_s* %encoding, i32 96, i32 256, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i32 0, i32 0)) #5
  store i32 %call602, i32* %code, align 4, !tbaa !23
  %cmp603 = icmp slt i32 %call602, 0
  br i1 %cmp603, label %if.then.605, label %if.end.606

if.then.605:                                      ; preds = %if.else.599
  %372 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %372, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.884

if.end.606:                                       ; preds = %if.else.599
  store i32 0, i32* %i532, align 4, !tbaa !23
  br label %for.cond.607

for.cond.607:                                     ; preds = %for.inc.615, %if.end.606
  %373 = load i32, i32* %i532, align 4, !tbaa !23
  %cmp608 = icmp ult i32 %373, 256
  br i1 %cmp608, label %for.body.610, label %for.end.617

for.body.610:                                     ; preds = %for.cond.607
  %374 = load i32, i32* %i532, align 4, !tbaa !23
  %idxprom611 = zext i32 %374 to i64
  %value612 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %encoding, i32 0, i32 1
  %refs613 = bitcast %union.v* %value612 to %struct.ref_s**
  %375 = load %struct.ref_s*, %struct.ref_s** %refs613, align 8, !tbaa !1
  %arrayidx614 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %375, i64 %idxprom611
  %376 = bitcast %struct.ref_s* %arrayidx614 to i8*
  %377 = bitcast %struct.ref_s* %notdef to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %376, i8* %377, i64 16, i32 8, i1 false), !tbaa.struct !46
  br label %for.inc.615

for.inc.615:                                      ; preds = %for.body.610
  %378 = load i32, i32* %i532, align 4, !tbaa !23
  %inc616 = add i32 %378, 1
  store i32 %inc616, i32* %i532, align 4, !tbaa !23
  br label %for.cond.607

for.end.617:                                      ; preds = %for.cond.607
  %379 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %380 = load i32, i32* %p_all.addr, align 4, !tbaa !23
  %encoding_off618 = getelementptr inbounds %struct.tag_font_offsets_t, %struct.tag_font_offsets_t* %offsets, i32 0, i32 3
  %381 = load i32, i32* %encoding_off618, align 4, !tbaa !68
  %add619 = add i32 %380, %381
  %382 = load i32, i32* %pe_all.addr, align 4, !tbaa !23
  %call620 = call i32 @card8(i32* %enc_format, %struct.tag_cff_data_t* %379, i32 %add619, i32 %382) #5
  store i32 %call620, i32* %code, align 4, !tbaa !23
  %cmp621 = icmp slt i32 %call620, 0
  br i1 %cmp621, label %if.then.623, label %if.end.624

if.then.623:                                      ; preds = %for.end.617
  %383 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %383, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.884

if.end.624:                                       ; preds = %for.end.617
  %384 = load i32, i32* %enc_format, align 4, !tbaa !23
  %and = and i32 %384, 127
  %cmp625 = icmp eq i32 %and, 0
  br i1 %cmp625, label %if.then.627, label %if.else.672

if.then.627:                                      ; preds = %if.end.624
  %385 = bitcast i32* %n_codes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %385) #1
  %386 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %387 = load i32, i32* %p_all.addr, align 4, !tbaa !23
  %encoding_off628 = getelementptr inbounds %struct.tag_font_offsets_t, %struct.tag_font_offsets_t* %offsets, i32 0, i32 3
  %388 = load i32, i32* %encoding_off628, align 4, !tbaa !68
  %add629 = add i32 %387, %388
  %add630 = add i32 %add629, 1
  %389 = load i32, i32* %pe_all.addr, align 4, !tbaa !23
  %call631 = call i32 @card8(i32* %n_codes, %struct.tag_cff_data_t* %386, i32 %add630, i32 %389) #5
  store i32 %call631, i32* %code, align 4, !tbaa !23
  %cmp632 = icmp slt i32 %call631, 0
  br i1 %cmp632, label %if.then.634, label %if.end.635

if.then.634:                                      ; preds = %if.then.627
  %390 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %390, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.669

if.end.635:                                       ; preds = %if.then.627
  %arrayidx636 = getelementptr inbounds [256 x i8], [256 x i8]* %gid2char, i32 0, i64 0
  store i8 0, i8* %arrayidx636, align 1, !tbaa !28
  store i32 0, i32* %i532, align 4, !tbaa !23
  br label %for.cond.637

for.cond.637:                                     ; preds = %for.inc.657, %if.end.635
  %391 = load i32, i32* %i532, align 4, !tbaa !23
  %392 = load i32, i32* %n_codes, align 4, !tbaa !23
  %cmp638 = icmp ult i32 %391, %392
  br i1 %cmp638, label %for.body.640, label %for.end.659

for.body.640:                                     ; preds = %for.cond.637
  %393 = bitcast i32* %charcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %393) #1
  %394 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %395 = load i32, i32* %p_all.addr, align 4, !tbaa !23
  %encoding_off641 = getelementptr inbounds %struct.tag_font_offsets_t, %struct.tag_font_offsets_t* %offsets, i32 0, i32 3
  %396 = load i32, i32* %encoding_off641, align 4, !tbaa !68
  %add642 = add i32 %395, %396
  %add643 = add i32 %add642, 2
  %397 = load i32, i32* %i532, align 4, !tbaa !23
  %add644 = add i32 %add643, %397
  %398 = load i32, i32* %pe_all.addr, align 4, !tbaa !23
  %call645 = call i32 @card8(i32* %charcode, %struct.tag_cff_data_t* %394, i32 %add644, i32 %398) #5
  store i32 %call645, i32* %code, align 4, !tbaa !23
  %cmp646 = icmp slt i32 %call645, 0
  br i1 %cmp646, label %if.then.648, label %if.end.649

if.then.648:                                      ; preds = %for.body.640
  %399 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %399, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.654

if.end.649:                                       ; preds = %for.body.640
  %400 = load i32, i32* %charcode, align 4, !tbaa !23
  %conv650 = trunc i32 %400 to i8
  %401 = load i32, i32* %i532, align 4, !tbaa !23
  %add651 = add i32 %401, 1
  %idxprom652 = zext i32 %add651 to i64
  %arrayidx653 = getelementptr inbounds [256 x i8], [256 x i8]* %gid2char, i32 0, i64 %idxprom652
  store i8 %conv650, i8* %arrayidx653, align 1, !tbaa !28
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.654

cleanup.654:                                      ; preds = %if.end.649, %if.then.648
  %402 = bitcast i32* %charcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %402) #1
  %cleanup.dest.655 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.655, label %cleanup.669 [
    i32 0, label %cleanup.cont.656
  ]

cleanup.cont.656:                                 ; preds = %cleanup.654
  br label %for.inc.657

for.inc.657:                                      ; preds = %cleanup.cont.656
  %403 = load i32, i32* %i532, align 4, !tbaa !23
  %inc658 = add i32 %403, 1
  store i32 %inc658, i32* %i532, align 4, !tbaa !23
  br label %for.cond.637

for.end.659:                                      ; preds = %for.cond.637
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %gid2char, i32 0, i32 0
  %404 = load i32, i32* %n_codes, align 4, !tbaa !23
  %idx.ext = zext i32 %404 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext
  %add.ptr660 = getelementptr inbounds i8, i8* %add.ptr, i64 1
  %405 = load i32, i32* %n_codes, align 4, !tbaa !23
  %conv661 = zext i32 %405 to i64
  %sub662 = sub i64 256, %conv661
  %sub663 = sub i64 %sub662, 1
  %call664 = call i8* @memset(i8* %add.ptr660, i32 0, i64 %sub663) #6
  %406 = load i32, i32* %p_all.addr, align 4, !tbaa !23
  %encoding_off665 = getelementptr inbounds %struct.tag_font_offsets_t, %struct.tag_font_offsets_t* %offsets, i32 0, i32 3
  %407 = load i32, i32* %encoding_off665, align 4, !tbaa !68
  %add666 = add i32 %406, %407
  %add667 = add i32 %add666, 2
  %408 = load i32, i32* %n_codes, align 4, !tbaa !23
  %add668 = add i32 %add667, %408
  store i32 %add668, i32* %supp_enc_offset, align 4, !tbaa !23
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.669

cleanup.669:                                      ; preds = %for.end.659, %cleanup.654, %if.then.634
  %409 = bitcast i32* %n_codes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %409) #1
  %cleanup.dest.670 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.670, label %cleanup.884 [
    i32 0, label %cleanup.cont.671
  ]

cleanup.cont.671:                                 ; preds = %cleanup.669
  br label %if.end.746

if.else.672:                                      ; preds = %if.end.624
  %410 = load i32, i32* %enc_format, align 4, !tbaa !23
  %and673 = and i32 %410, 127
  %cmp674 = icmp eq i32 %and673, 1
  br i1 %cmp674, label %if.then.676, label %if.else.744

if.then.676:                                      ; preds = %if.else.672
  %411 = bitcast i32* %n_ranges to i8*
  call void @llvm.lifetime.start(i64 4, i8* %411) #1
  %412 = bitcast i32* %first to i8*
  call void @llvm.lifetime.start(i64 4, i8* %412) #1
  %413 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %413) #1
  %414 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %414) #1
  %415 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %415) #1
  store i32 1, i32* %k, align 4, !tbaa !23
  %416 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %417 = load i32, i32* %p_all.addr, align 4, !tbaa !23
  %encoding_off677 = getelementptr inbounds %struct.tag_font_offsets_t, %struct.tag_font_offsets_t* %offsets, i32 0, i32 3
  %418 = load i32, i32* %encoding_off677, align 4, !tbaa !68
  %add678 = add i32 %417, %418
  %add679 = add i32 %add678, 1
  %419 = load i32, i32* %pe_all.addr, align 4, !tbaa !23
  %call680 = call i32 @card8(i32* %n_ranges, %struct.tag_cff_data_t* %416, i32 %add679, i32 %419) #5
  store i32 %call680, i32* %code, align 4, !tbaa !23
  %cmp681 = icmp slt i32 %call680, 0
  br i1 %cmp681, label %if.then.683, label %if.end.684

if.then.683:                                      ; preds = %if.then.676
  %420 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %420, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.737

if.end.684:                                       ; preds = %if.then.676
  %arrayidx685 = getelementptr inbounds [256 x i8], [256 x i8]* %gid2char, i32 0, i64 0
  store i8 0, i8* %arrayidx685, align 1, !tbaa !28
  store i32 0, i32* %i532, align 4, !tbaa !23
  br label %for.cond.686

for.cond.686:                                     ; preds = %for.inc.723, %if.end.684
  %421 = load i32, i32* %i532, align 4, !tbaa !23
  %422 = load i32, i32* %n_ranges, align 4, !tbaa !23
  %cmp687 = icmp ult i32 %421, %422
  br i1 %cmp687, label %for.body.689, label %for.end.725

for.body.689:                                     ; preds = %for.cond.686
  %423 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %424 = load i32, i32* %p_all.addr, align 4, !tbaa !23
  %encoding_off690 = getelementptr inbounds %struct.tag_font_offsets_t, %struct.tag_font_offsets_t* %offsets, i32 0, i32 3
  %425 = load i32, i32* %encoding_off690, align 4, !tbaa !68
  %add691 = add i32 %424, %425
  %add692 = add i32 %add691, 2
  %426 = load i32, i32* %i532, align 4, !tbaa !23
  %mul = mul i32 2, %426
  %add693 = add i32 %add692, %mul
  %427 = load i32, i32* %pe_all.addr, align 4, !tbaa !23
  %call694 = call i32 @card8(i32* %first, %struct.tag_cff_data_t* %423, i32 %add693, i32 %427) #5
  store i32 %call694, i32* %code, align 4, !tbaa !23
  %cmp695 = icmp slt i32 %call694, 0
  br i1 %cmp695, label %if.then.697, label %if.end.698

if.then.697:                                      ; preds = %for.body.689
  %428 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %428, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.737

if.end.698:                                       ; preds = %for.body.689
  %429 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %430 = load i32, i32* %p_all.addr, align 4, !tbaa !23
  %encoding_off699 = getelementptr inbounds %struct.tag_font_offsets_t, %struct.tag_font_offsets_t* %offsets, i32 0, i32 3
  %431 = load i32, i32* %encoding_off699, align 4, !tbaa !68
  %add700 = add i32 %430, %431
  %add701 = add i32 %add700, 3
  %432 = load i32, i32* %i532, align 4, !tbaa !23
  %mul702 = mul i32 2, %432
  %add703 = add i32 %add701, %mul702
  %433 = load i32, i32* %pe_all.addr, align 4, !tbaa !23
  %call704 = call i32 @card8(i32* %left, %struct.tag_cff_data_t* %429, i32 %add703, i32 %433) #5
  store i32 %call704, i32* %code, align 4, !tbaa !23
  %cmp705 = icmp slt i32 %call704, 0
  br i1 %cmp705, label %if.then.707, label %if.end.708

if.then.707:                                      ; preds = %if.end.698
  %434 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %434, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.737

if.end.708:                                       ; preds = %if.end.698
  store i32 0, i32* %j, align 4, !tbaa !23
  br label %for.cond.709

for.cond.709:                                     ; preds = %for.inc.720, %if.end.708
  %435 = load i32, i32* %j, align 4, !tbaa !23
  %436 = load i32, i32* %left, align 4, !tbaa !23
  %cmp710 = icmp ule i32 %435, %436
  br i1 %cmp710, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.709
  %437 = load i32, i32* %k, align 4, !tbaa !23
  %cmp712 = icmp ult i32 %437, 256
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.709
  %438 = phi i1 [ false, %for.cond.709 ], [ %cmp712, %land.rhs ]
  br i1 %438, label %for.body.714, label %for.end.722

for.body.714:                                     ; preds = %land.end
  %439 = load i32, i32* %first, align 4, !tbaa !23
  %440 = load i32, i32* %j, align 4, !tbaa !23
  %add715 = add i32 %439, %440
  %conv716 = trunc i32 %add715 to i8
  %441 = load i32, i32* %k, align 4, !tbaa !23
  %inc717 = add i32 %441, 1
  store i32 %inc717, i32* %k, align 4, !tbaa !23
  %idxprom718 = zext i32 %441 to i64
  %arrayidx719 = getelementptr inbounds [256 x i8], [256 x i8]* %gid2char, i32 0, i64 %idxprom718
  store i8 %conv716, i8* %arrayidx719, align 1, !tbaa !28
  br label %for.inc.720

for.inc.720:                                      ; preds = %for.body.714
  %442 = load i32, i32* %j, align 4, !tbaa !23
  %inc721 = add i32 %442, 1
  store i32 %inc721, i32* %j, align 4, !tbaa !23
  br label %for.cond.709

for.end.722:                                      ; preds = %land.end
  br label %for.inc.723

for.inc.723:                                      ; preds = %for.end.722
  %443 = load i32, i32* %i532, align 4, !tbaa !23
  %inc724 = add i32 %443, 1
  store i32 %inc724, i32* %i532, align 4, !tbaa !23
  br label %for.cond.686

for.end.725:                                      ; preds = %for.cond.686
  %arraydecay726 = getelementptr inbounds [256 x i8], [256 x i8]* %gid2char, i32 0, i32 0
  %444 = load i32, i32* %k, align 4, !tbaa !23
  %idx.ext727 = zext i32 %444 to i64
  %add.ptr728 = getelementptr inbounds i8, i8* %arraydecay726, i64 %idx.ext727
  %445 = load i32, i32* %k, align 4, !tbaa !23
  %conv729 = zext i32 %445 to i64
  %sub730 = sub i64 256, %conv729
  %call731 = call i8* @memset(i8* %add.ptr728, i32 0, i64 %sub730) #6
  %446 = load i32, i32* %p_all.addr, align 4, !tbaa !23
  %encoding_off732 = getelementptr inbounds %struct.tag_font_offsets_t, %struct.tag_font_offsets_t* %offsets, i32 0, i32 3
  %447 = load i32, i32* %encoding_off732, align 4, !tbaa !68
  %add733 = add i32 %446, %447
  %448 = load i32, i32* %n_ranges, align 4, !tbaa !23
  %mul734 = mul i32 2, %448
  %add735 = add i32 %add733, %mul734
  %add736 = add i32 %add735, 2
  store i32 %add736, i32* %supp_enc_offset, align 4, !tbaa !23
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.737

cleanup.737:                                      ; preds = %for.end.725, %if.then.707, %if.then.697, %if.then.683
  %449 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %449) #1
  %450 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %450) #1
  %451 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %451) #1
  %452 = bitcast i32* %first to i8*
  call void @llvm.lifetime.end(i64 4, i8* %452) #1
  %453 = bitcast i32* %n_ranges to i8*
  call void @llvm.lifetime.end(i64 4, i8* %453) #1
  %cleanup.dest.742 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.742, label %cleanup.884 [
    i32 0, label %cleanup.cont.743
  ]

cleanup.cont.743:                                 ; preds = %cleanup.737
  br label %if.end.745

if.else.744:                                      ; preds = %if.else.672
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.884

if.end.745:                                       ; preds = %cleanup.cont.743
  br label %if.end.746

if.end.746:                                       ; preds = %if.end.745, %cleanup.cont.671
  br label %if.end.747

if.end.747:                                       ; preds = %if.end.746, %for.end.598
  %454 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %455 = load %struct.ref_s*, %struct.ref_s** %topdict.addr, align 8, !tbaa !1
  %call748 = call i32 @idict_put_c_name(%struct.gs_context_state_s* %454, %struct.ref_s* %455, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), i32 8, %struct.ref_s* %encoding) #5
  store i32 %call748, i32* %code, align 4, !tbaa !23
  %cmp749 = icmp slt i32 %call748, 0
  br i1 %cmp749, label %if.then.751, label %if.end.752

if.then.751:                                      ; preds = %if.end.747
  %456 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %456, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.884

if.end.752:                                       ; preds = %if.end.747
  store i32 1, i32* %gid, align 4, !tbaa !23
  br label %for.cond.753

for.cond.753:                                     ; preds = %for.inc.814, %if.end.752
  %457 = load i32, i32* %gid, align 4, !tbaa !23
  %count754 = getelementptr inbounds %struct.tag_cff_index_t, %struct.tag_cff_index_t* %charstrings_index, i32 0, i32 4
  %458 = load i32, i32* %count754, align 4, !tbaa !50
  %cmp755 = icmp ult i32 %457, %458
  br i1 %cmp755, label %for.body.757, label %for.end.816

for.body.757:                                     ; preds = %for.cond.753
  %459 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %460 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %461 = load i32, i32* %gid, align 4, !tbaa !23
  %call758 = call i32 @make_string_from_index(%struct.gs_context_state_s* %459, %struct.ref_s* %cstr, %struct.tag_cff_index_t* %charstrings_index, %struct.tag_cff_data_t* %460, i32 %461, i32 -1) #5
  store i32 %call758, i32* %code, align 4, !tbaa !23
  %cmp759 = icmp slt i32 %call758, 0
  br i1 %cmp759, label %if.then.761, label %if.end.762

if.then.761:                                      ; preds = %for.body.757
  %462 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %462, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.884

if.end.762:                                       ; preds = %for.body.757
  %463 = load i32 (%struct.tag_cff_data_t*, i32, i32, i32)*, i32 (%struct.tag_cff_data_t*, i32, i32, i32)** %peek_charset_proc, align 8, !tbaa !1
  %464 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %465 = load i32, i32* %p_all.addr, align 4, !tbaa !23
  %charset_off763 = getelementptr inbounds %struct.tag_font_offsets_t, %struct.tag_font_offsets_t* %offsets, i32 0, i32 2
  %466 = load i32, i32* %charset_off763, align 4, !tbaa !65
  %add764 = add i32 %465, %466
  %add765 = add i32 %add764, 1
  %467 = load i32, i32* %pe_all.addr, align 4, !tbaa !23
  %468 = load i32, i32* %gid, align 4, !tbaa !23
  %sub766 = sub i32 %468, 1
  %call767 = call i32 %463(%struct.tag_cff_data_t* %464, i32 %add765, i32 %467, i32 %sub766) #5
  store i32 %call767, i32* %sid, align 4, !tbaa !23
  %469 = load i32, i32* %sid, align 4, !tbaa !23
  %cmp768 = icmp slt i32 %469, 0
  br i1 %cmp768, label %if.then.770, label %if.end.771

if.then.770:                                      ; preds = %if.end.762
  %470 = load i32, i32* %sid, align 4, !tbaa !23
  store i32 %470, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.884

if.end.771:                                       ; preds = %if.end.762
  %471 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %472 = load %struct.tag_cff_index_t*, %struct.tag_cff_index_t** %strings.addr, align 8, !tbaa !1
  %473 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %474 = load i32, i32* %sid, align 4, !tbaa !23
  %call772 = call i32 @make_name_from_sid(%struct.gs_context_state_s* %471, %struct.ref_s* %name, %struct.tag_cff_index_t* %472, %struct.tag_cff_data_t* %473, i32 %474) #5
  store i32 %call772, i32* %code, align 4, !tbaa !23
  %cmp773 = icmp slt i32 %call772, 0
  br i1 %cmp773, label %if.then.775, label %if.end.793

if.then.775:                                      ; preds = %if.end.771
  %475 = bitcast [40 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 40, i8* %475) #1
  %476 = bitcast i32* %len776 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %476) #1
  %arraydecay777 = getelementptr inbounds [40 x i8], [40 x i8]* %buf, i32 0, i32 0
  %477 = load i32, i32* %sid, align 4, !tbaa !23
  %call778 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay777, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), i32 %477) #5
  store i32 %call778, i32* %len776, align 4, !tbaa !23
  %478 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory779 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %478, i32 0, i32 1
  %current780 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory779, i32 0, i32 0
  %479 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current780, align 8, !tbaa !40
  %480 = bitcast %struct.gs_ref_memory_s* %479 to %struct.gs_memory_s*
  %gs_lib_ctx781 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %480, i32 0, i32 2
  %481 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx781, align 8, !tbaa !51
  %gs_name_table782 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %481, i32 0, i32 16
  %482 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table782, align 8, !tbaa !54
  %arraydecay783 = getelementptr inbounds [40 x i8], [40 x i8]* %buf, i32 0, i32 0
  %483 = load i32, i32* %len776, align 4, !tbaa !23
  %call784 = call i32 @names_ref(%struct.name_table_s* %482, i8* %arraydecay783, i32 %483, %struct.ref_s* %name, i32 1) #5
  store i32 %call784, i32* %code, align 4, !tbaa !23
  %cmp785 = icmp slt i32 %call784, 0
  br i1 %cmp785, label %if.then.787, label %if.end.788

if.then.787:                                      ; preds = %if.then.775
  %484 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %484, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.789

if.end.788:                                       ; preds = %if.then.775
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.789

cleanup.789:                                      ; preds = %if.end.788, %if.then.787
  %485 = bitcast i32* %len776 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %485) #1
  %486 = bitcast [40 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 40, i8* %486) #1
  %cleanup.dest.791 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.791, label %cleanup.884 [
    i32 0, label %cleanup.cont.792
  ]

cleanup.cont.792:                                 ; preds = %cleanup.789
  br label %if.end.793

if.end.793:                                       ; preds = %cleanup.cont.792, %if.end.771
  %487 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack794 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %487, i32 0, i32 24
  %call795 = call i32 @dict_put(%struct.ref_s* %charstrings_dict, %struct.ref_s* %name, %struct.ref_s* %cstr, %struct.dict_stack_s* %dict_stack794) #5
  store i32 %call795, i32* %code, align 4, !tbaa !23
  %cmp796 = icmp slt i32 %call795, 0
  br i1 %cmp796, label %if.then.798, label %if.end.799

if.then.798:                                      ; preds = %if.end.793
  %488 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %488, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.884

if.end.799:                                       ; preds = %if.end.793
  %encoding_off800 = getelementptr inbounds %struct.tag_font_offsets_t, %struct.tag_font_offsets_t* %offsets, i32 0, i32 3
  %489 = load i32, i32* %encoding_off800, align 4, !tbaa !68
  %cmp801 = icmp ugt i32 %489, 1
  br i1 %cmp801, label %land.lhs.true.803, label %if.end.813

land.lhs.true.803:                                ; preds = %if.end.799
  %490 = load i32, i32* %gid, align 4, !tbaa !23
  %cmp804 = icmp ult i32 %490, 256
  br i1 %cmp804, label %if.then.806, label %if.end.813

if.then.806:                                      ; preds = %land.lhs.true.803
  %491 = load i32, i32* %gid, align 4, !tbaa !23
  %idxprom807 = zext i32 %491 to i64
  %arrayidx808 = getelementptr inbounds [256 x i8], [256 x i8]* %gid2char, i32 0, i64 %idxprom807
  %492 = load i8, i8* %arrayidx808, align 1, !tbaa !28
  %idxprom809 = zext i8 %492 to i64
  %value810 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %encoding, i32 0, i32 1
  %refs811 = bitcast %union.v* %value810 to %struct.ref_s**
  %493 = load %struct.ref_s*, %struct.ref_s** %refs811, align 8, !tbaa !1
  %arrayidx812 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %493, i64 %idxprom809
  %494 = bitcast %struct.ref_s* %arrayidx812 to i8*
  %495 = bitcast %struct.ref_s* %name to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %494, i8* %495, i64 16, i32 8, i1 false), !tbaa.struct !46
  br label %if.end.813

if.end.813:                                       ; preds = %if.then.806, %land.lhs.true.803, %if.end.799
  br label %for.inc.814

for.inc.814:                                      ; preds = %if.end.813
  %496 = load i32, i32* %gid, align 4, !tbaa !23
  %inc815 = add i32 %496, 1
  store i32 %inc815, i32* %gid, align 4, !tbaa !23
  br label %for.cond.753

for.end.816:                                      ; preds = %for.cond.753
  %encoding_off817 = getelementptr inbounds %struct.tag_font_offsets_t, %struct.tag_font_offsets_t* %offsets, i32 0, i32 3
  %497 = load i32, i32* %encoding_off817, align 4, !tbaa !68
  %cmp818 = icmp ugt i32 %497, 1
  br i1 %cmp818, label %land.lhs.true.820, label %if.end.868

land.lhs.true.820:                                ; preds = %for.end.816
  %498 = load i32, i32* %enc_format, align 4, !tbaa !23
  %and821 = and i32 %498, 128
  %tobool822 = icmp ne i32 %and821, 0
  br i1 %tobool822, label %if.then.823, label %if.end.868

if.then.823:                                      ; preds = %land.lhs.true.820
  %499 = bitcast i32* %n_supp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %499) #1
  %500 = bitcast i32* %charcode824 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %500) #1
  %501 = bitcast i32* %sid825 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %501) #1
  %502 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %503 = load i32, i32* %supp_enc_offset, align 4, !tbaa !23
  %504 = load i32, i32* %pe_all.addr, align 4, !tbaa !23
  %call826 = call i32 @card8(i32* %n_supp, %struct.tag_cff_data_t* %502, i32 %503, i32 %504) #5
  store i32 %call826, i32* %code, align 4, !tbaa !23
  %cmp827 = icmp slt i32 %call826, 0
  br i1 %cmp827, label %if.then.829, label %if.end.830

if.then.829:                                      ; preds = %if.then.823
  %505 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %505, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.863

if.end.830:                                       ; preds = %if.then.823
  store i32 0, i32* %i532, align 4, !tbaa !23
  br label %for.cond.831

for.cond.831:                                     ; preds = %for.inc.860, %if.end.830
  %506 = load i32, i32* %i532, align 4, !tbaa !23
  %507 = load i32, i32* %n_supp, align 4, !tbaa !23
  %cmp832 = icmp ult i32 %506, %507
  br i1 %cmp832, label %for.body.834, label %for.end.862

for.body.834:                                     ; preds = %for.cond.831
  %508 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %509 = load i32, i32* %supp_enc_offset, align 4, !tbaa !23
  %add835 = add i32 %509, 1
  %510 = load i32, i32* %i532, align 4, !tbaa !23
  %mul836 = mul i32 3, %510
  %add837 = add i32 %add835, %mul836
  %511 = load i32, i32* %pe_all.addr, align 4, !tbaa !23
  %call838 = call i32 @card8(i32* %charcode824, %struct.tag_cff_data_t* %508, i32 %add837, i32 %511) #5
  store i32 %call838, i32* %code, align 4, !tbaa !23
  %cmp839 = icmp slt i32 %call838, 0
  br i1 %cmp839, label %if.then.841, label %if.end.842

if.then.841:                                      ; preds = %for.body.834
  %512 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %512, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.863

if.end.842:                                       ; preds = %for.body.834
  %513 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %514 = load i32, i32* %supp_enc_offset, align 4, !tbaa !23
  %add843 = add i32 %514, 2
  %515 = load i32, i32* %i532, align 4, !tbaa !23
  %mul844 = mul i32 3, %515
  %add845 = add i32 %add843, %mul844
  %516 = load i32, i32* %pe_all.addr, align 4, !tbaa !23
  %call846 = call i32 @card16(i32* %sid825, %struct.tag_cff_data_t* %513, i32 %add845, i32 %516) #5
  store i32 %call846, i32* %code, align 4, !tbaa !23
  %cmp847 = icmp slt i32 %call846, 0
  br i1 %cmp847, label %if.then.849, label %if.end.850

if.then.849:                                      ; preds = %if.end.842
  %517 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %517, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.863

if.end.850:                                       ; preds = %if.end.842
  %518 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %519 = load i32, i32* %charcode824, align 4, !tbaa !23
  %idxprom851 = zext i32 %519 to i64
  %value852 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %encoding, i32 0, i32 1
  %refs853 = bitcast %union.v* %value852 to %struct.ref_s**
  %520 = load %struct.ref_s*, %struct.ref_s** %refs853, align 8, !tbaa !1
  %arrayidx854 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %520, i64 %idxprom851
  %521 = load %struct.tag_cff_index_t*, %struct.tag_cff_index_t** %strings.addr, align 8, !tbaa !1
  %522 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %523 = load i32, i32* %sid825, align 4, !tbaa !23
  %call855 = call i32 @make_name_from_sid(%struct.gs_context_state_s* %518, %struct.ref_s* %arrayidx854, %struct.tag_cff_index_t* %521, %struct.tag_cff_data_t* %522, i32 %523) #5
  store i32 %call855, i32* %code, align 4, !tbaa !23
  %cmp856 = icmp slt i32 %call855, 0
  br i1 %cmp856, label %if.then.858, label %if.end.859

if.then.858:                                      ; preds = %if.end.850
  %524 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %524, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.863

if.end.859:                                       ; preds = %if.end.850
  br label %for.inc.860

for.inc.860:                                      ; preds = %if.end.859
  %525 = load i32, i32* %i532, align 4, !tbaa !23
  %inc861 = add i32 %525, 1
  store i32 %inc861, i32* %i532, align 4, !tbaa !23
  br label %for.cond.831

for.end.862:                                      ; preds = %for.cond.831
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.863

cleanup.863:                                      ; preds = %for.end.862, %if.then.858, %if.then.849, %if.then.841, %if.then.829
  %526 = bitcast i32* %sid825 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %526) #1
  %527 = bitcast i32* %charcode824 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %527) #1
  %528 = bitcast i32* %n_supp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %528) #1
  %cleanup.dest.866 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.866, label %cleanup.884 [
    i32 0, label %cleanup.cont.867
  ]

cleanup.cont.867:                                 ; preds = %cleanup.863
  br label %if.end.868

if.end.868:                                       ; preds = %cleanup.cont.867, %land.lhs.true.820, %for.end.816
  %529 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %530 = load %struct.ref_s*, %struct.ref_s** %fontinfodict, align 8, !tbaa !1
  %call869 = call i32 @set_defaults(%struct.gs_context_state_s* %529, %struct.ref_s* %530, %struct.tag_font_defaults* getelementptr inbounds ([4 x %struct.tag_font_defaults], [4 x %struct.tag_font_defaults]* @fontinfo_font_defaults, i32 0, i32 0), i32 4) #5
  store i32 %call869, i32* %code, align 4, !tbaa !23
  %cmp870 = icmp slt i32 %call869, 0
  br i1 %cmp870, label %if.then.872, label %if.end.873

if.then.872:                                      ; preds = %if.end.868
  %531 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %531, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.884

if.end.873:                                       ; preds = %if.end.868
  %532 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %533 = load %struct.ref_s*, %struct.ref_s** %privatedict, align 8, !tbaa !1
  %call874 = call i32 @set_defaults(%struct.gs_context_state_s* %532, %struct.ref_s* %533, %struct.tag_font_defaults* getelementptr inbounds ([9 x %struct.tag_font_defaults], [9 x %struct.tag_font_defaults]* @private_font_defaults, i32 0, i32 0), i32 9) #5
  store i32 %call874, i32* %code, align 4, !tbaa !23
  %cmp875 = icmp slt i32 %call874, 0
  br i1 %cmp875, label %if.then.877, label %if.end.878

if.then.877:                                      ; preds = %if.end.873
  %534 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %534, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.884

if.end.878:                                       ; preds = %if.end.873
  %535 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %536 = load %struct.ref_s*, %struct.ref_s** %topdict.addr, align 8, !tbaa !1
  %call879 = call i32 @set_defaults(%struct.gs_context_state_s* %535, %struct.ref_s* %536, %struct.tag_font_defaults* getelementptr inbounds ([5 x %struct.tag_font_defaults], [5 x %struct.tag_font_defaults]* @simple_font_defaults, i32 0, i32 0), i32 5) #5
  store i32 %call879, i32* %code, align 4, !tbaa !23
  %cmp880 = icmp slt i32 %call879, 0
  br i1 %cmp880, label %if.then.882, label %if.end.883

if.then.882:                                      ; preds = %if.end.878
  %537 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %537, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.884

if.end.883:                                       ; preds = %if.end.878
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.884

cleanup.884:                                      ; preds = %if.end.883, %if.then.882, %if.then.877, %if.then.872, %cleanup.863, %if.then.798, %cleanup.789, %if.then.770, %if.then.761, %if.then.751, %if.else.744, %cleanup.737, %cleanup.669, %if.then.623, %if.then.605, %if.then.594, %if.then.575, %if.then.565, %if.then.559, %if.then.554, %if.then.545, %if.then.540
  %538 = bitcast i32* %supp_enc_offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %538) #1
  %539 = bitcast [256 x i8]* %gid2char to i8*
  call void @llvm.lifetime.end(i64 256, i8* %539) #1
  %540 = bitcast %struct.ref_s* %notdef to i8*
  call void @llvm.lifetime.end(i64 16, i8* %540) #1
  %541 = bitcast %struct.ref_s* %encoding to i8*
  call void @llvm.lifetime.end(i64 16, i8* %541) #1
  %542 = bitcast %struct.ref_s* %charstrings_dict to i8*
  call void @llvm.lifetime.end(i64 16, i8* %542) #1
  %543 = bitcast %struct.ref_s* %cstr to i8*
  call void @llvm.lifetime.end(i64 16, i8* %543) #1
  %544 = bitcast %struct.ref_s* %name to i8*
  call void @llvm.lifetime.end(i64 16, i8* %544) #1
  %545 = bitcast i32* %sid to i8*
  call void @llvm.lifetime.end(i64 4, i8* %545) #1
  %546 = bitcast i32* %enc_format to i8*
  call void @llvm.lifetime.end(i64 4, i8* %546) #1
  %547 = bitcast i32* %gid to i8*
  call void @llvm.lifetime.end(i64 4, i8* %547) #1
  %548 = bitcast i32* %i532 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %548) #1
  %cleanup.dest.895 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.895, label %cleanup.899 [
    i32 0, label %cleanup.cont.896
  ]

cleanup.cont.896:                                 ; preds = %cleanup.884
  br label %if.end.897

if.end.897:                                       ; preds = %cleanup.cont.896, %cleanup.cont.530
  br label %if.end.898

if.end.898:                                       ; preds = %if.end.897, %cleanup.cont.334
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.899

cleanup.899:                                      ; preds = %if.end.898, %cleanup.884, %cleanup.524, %cleanup.321, %cleanup.75, %if.then.60, %if.then.53, %if.then.48, %cleanup, %if.then.27, %if.then.22, %if.then.17, %if.then.8, %if.then
  %549 = bitcast %struct.tag_font_offsets_t* %offsets to i8*
  call void @llvm.lifetime.end(i64 36, i8* %549) #1
  %550 = bitcast i32 (%struct.tag_cff_data_t*, i32, i32, i32)** %peek_charset_proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %550) #1
  %551 = bitcast %struct.tag_cff_index_t* %charstrings_index to i8*
  call void @llvm.lifetime.end(i64 20, i8* %551) #1
  %552 = bitcast %struct.tag_cff_index_t* %local_subrs to i8*
  call void @llvm.lifetime.end(i64 20, i8* %552) #1
  %553 = bitcast %struct.ref_s** %fontinfodict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %553) #1
  %554 = bitcast %struct.ref_s** %privatedict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %554) #1
  %555 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %555) #1
  %556 = load i32, i32* %retval
  ret i32 %556
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @card16(i32* %u, %struct.tag_cff_data_t* %o, i32 %p, i32 %pe) #0 {
entry:
  %retval = alloca i32, align 4
  %u.addr = alloca i32*, align 8
  %o.addr = alloca %struct.tag_cff_data_t*, align 8
  %p.addr = alloca i32, align 4
  %pe.addr = alloca i32, align 4
  store i32* %u, i32** %u.addr, align 8, !tbaa !1
  store %struct.tag_cff_data_t* %o, %struct.tag_cff_data_t** %o.addr, align 8, !tbaa !1
  store i32 %p, i32* %p.addr, align 4, !tbaa !23
  store i32 %pe, i32* %pe.addr, align 4, !tbaa !23
  %0 = load i32, i32* %pe.addr, align 4, !tbaa !23
  %1 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %o.addr, align 8, !tbaa !1
  %length = getelementptr inbounds %struct.tag_cff_data_t, %struct.tag_cff_data_t* %1, i32 0, i32 1
  %2 = load i32, i32* %length, align 4, !tbaa !43
  %cmp = icmp ugt i32 %0, %2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %p.addr, align 4, !tbaa !23
  %4 = load i32, i32* %pe.addr, align 4, !tbaa !23
  %sub = sub i32 %4, 2
  %cmp1 = icmp ugt i32 %3, %sub
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -15, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i32, i32* %p.addr, align 4, !tbaa !23
  %6 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %o.addr, align 8, !tbaa !1
  %mask = getelementptr inbounds %struct.tag_cff_data_t, %struct.tag_cff_data_t* %6, i32 0, i32 3
  %7 = load i32, i32* %mask, align 4, !tbaa !44
  %and = and i32 %5, %7
  %idxprom = zext i32 %and to i64
  %8 = load i32, i32* %p.addr, align 4, !tbaa !23
  %9 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %o.addr, align 8, !tbaa !1
  %shift = getelementptr inbounds %struct.tag_cff_data_t, %struct.tag_cff_data_t* %9, i32 0, i32 2
  %10 = load i32, i32* %shift, align 4, !tbaa !45
  %shr = lshr i32 %8, %10
  %idxprom2 = zext i32 %shr to i64
  %11 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %o.addr, align 8, !tbaa !1
  %blk_ref = getelementptr inbounds %struct.tag_cff_data_t, %struct.tag_cff_data_t* %11, i32 0, i32 0
  %12 = load %struct.ref_s*, %struct.ref_s** %blk_ref, align 8, !tbaa !41
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 %idxprom2
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 1
  %bytes = bitcast %union.v* %value to i8**
  %13 = load i8*, i8** %bytes, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8, i8* %13, i64 %idxprom
  %14 = load i8, i8* %arrayidx3, align 1, !tbaa !28
  %conv = zext i8 %14 to i32
  %shl = shl i32 %conv, 8
  %15 = load i32, i32* %p.addr, align 4, !tbaa !23
  %add = add i32 %15, 1
  %16 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %o.addr, align 8, !tbaa !1
  %mask4 = getelementptr inbounds %struct.tag_cff_data_t, %struct.tag_cff_data_t* %16, i32 0, i32 3
  %17 = load i32, i32* %mask4, align 4, !tbaa !44
  %and5 = and i32 %add, %17
  %idxprom6 = zext i32 %and5 to i64
  %18 = load i32, i32* %p.addr, align 4, !tbaa !23
  %add7 = add i32 %18, 1
  %19 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %o.addr, align 8, !tbaa !1
  %shift8 = getelementptr inbounds %struct.tag_cff_data_t, %struct.tag_cff_data_t* %19, i32 0, i32 2
  %20 = load i32, i32* %shift8, align 4, !tbaa !45
  %shr9 = lshr i32 %add7, %20
  %idxprom10 = zext i32 %shr9 to i64
  %21 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %o.addr, align 8, !tbaa !1
  %blk_ref11 = getelementptr inbounds %struct.tag_cff_data_t, %struct.tag_cff_data_t* %21, i32 0, i32 0
  %22 = load %struct.ref_s*, %struct.ref_s** %blk_ref11, align 8, !tbaa !41
  %arrayidx12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 %idxprom10
  %value13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx12, i32 0, i32 1
  %bytes14 = bitcast %union.v* %value13 to i8**
  %23 = load i8*, i8** %bytes14, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i8, i8* %23, i64 %idxprom6
  %24 = load i8, i8* %arrayidx15, align 1, !tbaa !28
  %conv16 = zext i8 %24 to i32
  %or = or i32 %shl, %conv16
  %25 = load i32*, i32** %u.addr, align 8, !tbaa !1
  store i32 %or, i32* %25, align 4, !tbaa !23
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal i32 @card24(i32* %u, %struct.tag_cff_data_t* %o, i32 %p, i32 %pe) #0 {
entry:
  %retval = alloca i32, align 4
  %u.addr = alloca i32*, align 8
  %o.addr = alloca %struct.tag_cff_data_t*, align 8
  %p.addr = alloca i32, align 4
  %pe.addr = alloca i32, align 4
  store i32* %u, i32** %u.addr, align 8, !tbaa !1
  store %struct.tag_cff_data_t* %o, %struct.tag_cff_data_t** %o.addr, align 8, !tbaa !1
  store i32 %p, i32* %p.addr, align 4, !tbaa !23
  store i32 %pe, i32* %pe.addr, align 4, !tbaa !23
  %0 = load i32, i32* %pe.addr, align 4, !tbaa !23
  %1 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %o.addr, align 8, !tbaa !1
  %length = getelementptr inbounds %struct.tag_cff_data_t, %struct.tag_cff_data_t* %1, i32 0, i32 1
  %2 = load i32, i32* %length, align 4, !tbaa !43
  %cmp = icmp ugt i32 %0, %2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %p.addr, align 4, !tbaa !23
  %4 = load i32, i32* %pe.addr, align 4, !tbaa !23
  %sub = sub i32 %4, 3
  %cmp1 = icmp ugt i32 %3, %sub
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -15, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i32, i32* %p.addr, align 4, !tbaa !23
  %6 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %o.addr, align 8, !tbaa !1
  %mask = getelementptr inbounds %struct.tag_cff_data_t, %struct.tag_cff_data_t* %6, i32 0, i32 3
  %7 = load i32, i32* %mask, align 4, !tbaa !44
  %and = and i32 %5, %7
  %idxprom = zext i32 %and to i64
  %8 = load i32, i32* %p.addr, align 4, !tbaa !23
  %9 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %o.addr, align 8, !tbaa !1
  %shift = getelementptr inbounds %struct.tag_cff_data_t, %struct.tag_cff_data_t* %9, i32 0, i32 2
  %10 = load i32, i32* %shift, align 4, !tbaa !45
  %shr = lshr i32 %8, %10
  %idxprom2 = zext i32 %shr to i64
  %11 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %o.addr, align 8, !tbaa !1
  %blk_ref = getelementptr inbounds %struct.tag_cff_data_t, %struct.tag_cff_data_t* %11, i32 0, i32 0
  %12 = load %struct.ref_s*, %struct.ref_s** %blk_ref, align 8, !tbaa !41
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 %idxprom2
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 1
  %bytes = bitcast %union.v* %value to i8**
  %13 = load i8*, i8** %bytes, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8, i8* %13, i64 %idxprom
  %14 = load i8, i8* %arrayidx3, align 1, !tbaa !28
  %conv = zext i8 %14 to i32
  %shl = shl i32 %conv, 16
  %15 = load i32, i32* %p.addr, align 4, !tbaa !23
  %add = add i32 %15, 1
  %16 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %o.addr, align 8, !tbaa !1
  %mask4 = getelementptr inbounds %struct.tag_cff_data_t, %struct.tag_cff_data_t* %16, i32 0, i32 3
  %17 = load i32, i32* %mask4, align 4, !tbaa !44
  %and5 = and i32 %add, %17
  %idxprom6 = zext i32 %and5 to i64
  %18 = load i32, i32* %p.addr, align 4, !tbaa !23
  %add7 = add i32 %18, 1
  %19 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %o.addr, align 8, !tbaa !1
  %shift8 = getelementptr inbounds %struct.tag_cff_data_t, %struct.tag_cff_data_t* %19, i32 0, i32 2
  %20 = load i32, i32* %shift8, align 4, !tbaa !45
  %shr9 = lshr i32 %add7, %20
  %idxprom10 = zext i32 %shr9 to i64
  %21 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %o.addr, align 8, !tbaa !1
  %blk_ref11 = getelementptr inbounds %struct.tag_cff_data_t, %struct.tag_cff_data_t* %21, i32 0, i32 0
  %22 = load %struct.ref_s*, %struct.ref_s** %blk_ref11, align 8, !tbaa !41
  %arrayidx12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 %idxprom10
  %value13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx12, i32 0, i32 1
  %bytes14 = bitcast %union.v* %value13 to i8**
  %23 = load i8*, i8** %bytes14, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i8, i8* %23, i64 %idxprom6
  %24 = load i8, i8* %arrayidx15, align 1, !tbaa !28
  %conv16 = zext i8 %24 to i32
  %shl17 = shl i32 %conv16, 8
  %or = or i32 %shl, %shl17
  %25 = load i32, i32* %p.addr, align 4, !tbaa !23
  %add18 = add i32 %25, 2
  %26 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %o.addr, align 8, !tbaa !1
  %mask19 = getelementptr inbounds %struct.tag_cff_data_t, %struct.tag_cff_data_t* %26, i32 0, i32 3
  %27 = load i32, i32* %mask19, align 4, !tbaa !44
  %and20 = and i32 %add18, %27
  %idxprom21 = zext i32 %and20 to i64
  %28 = load i32, i32* %p.addr, align 4, !tbaa !23
  %add22 = add i32 %28, 2
  %29 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %o.addr, align 8, !tbaa !1
  %shift23 = getelementptr inbounds %struct.tag_cff_data_t, %struct.tag_cff_data_t* %29, i32 0, i32 2
  %30 = load i32, i32* %shift23, align 4, !tbaa !45
  %shr24 = lshr i32 %add22, %30
  %idxprom25 = zext i32 %shr24 to i64
  %31 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %o.addr, align 8, !tbaa !1
  %blk_ref26 = getelementptr inbounds %struct.tag_cff_data_t, %struct.tag_cff_data_t* %31, i32 0, i32 0
  %32 = load %struct.ref_s*, %struct.ref_s** %blk_ref26, align 8, !tbaa !41
  %arrayidx27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i64 %idxprom25
  %value28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx27, i32 0, i32 1
  %bytes29 = bitcast %union.v* %value28 to i8**
  %33 = load i8*, i8** %bytes29, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds i8, i8* %33, i64 %idxprom21
  %34 = load i8, i8* %arrayidx30, align 1, !tbaa !28
  %conv31 = zext i8 %34 to i32
  %or32 = or i32 %or, %conv31
  %35 = load i32*, i32** %u.addr, align 8, !tbaa !1
  store i32 %or32, i32* %35, align 4, !tbaa !23
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal i32 @card32(i32* %u, %struct.tag_cff_data_t* %o, i32 %p, i32 %pe) #0 {
entry:
  %retval = alloca i32, align 4
  %u.addr = alloca i32*, align 8
  %o.addr = alloca %struct.tag_cff_data_t*, align 8
  %p.addr = alloca i32, align 4
  %pe.addr = alloca i32, align 4
  store i32* %u, i32** %u.addr, align 8, !tbaa !1
  store %struct.tag_cff_data_t* %o, %struct.tag_cff_data_t** %o.addr, align 8, !tbaa !1
  store i32 %p, i32* %p.addr, align 4, !tbaa !23
  store i32 %pe, i32* %pe.addr, align 4, !tbaa !23
  %0 = load i32, i32* %pe.addr, align 4, !tbaa !23
  %1 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %o.addr, align 8, !tbaa !1
  %length = getelementptr inbounds %struct.tag_cff_data_t, %struct.tag_cff_data_t* %1, i32 0, i32 1
  %2 = load i32, i32* %length, align 4, !tbaa !43
  %cmp = icmp ugt i32 %0, %2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %p.addr, align 4, !tbaa !23
  %4 = load i32, i32* %pe.addr, align 4, !tbaa !23
  %sub = sub i32 %4, 4
  %cmp1 = icmp ugt i32 %3, %sub
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -15, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i32, i32* %p.addr, align 4, !tbaa !23
  %6 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %o.addr, align 8, !tbaa !1
  %mask = getelementptr inbounds %struct.tag_cff_data_t, %struct.tag_cff_data_t* %6, i32 0, i32 3
  %7 = load i32, i32* %mask, align 4, !tbaa !44
  %and = and i32 %5, %7
  %idxprom = zext i32 %and to i64
  %8 = load i32, i32* %p.addr, align 4, !tbaa !23
  %9 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %o.addr, align 8, !tbaa !1
  %shift = getelementptr inbounds %struct.tag_cff_data_t, %struct.tag_cff_data_t* %9, i32 0, i32 2
  %10 = load i32, i32* %shift, align 4, !tbaa !45
  %shr = lshr i32 %8, %10
  %idxprom2 = zext i32 %shr to i64
  %11 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %o.addr, align 8, !tbaa !1
  %blk_ref = getelementptr inbounds %struct.tag_cff_data_t, %struct.tag_cff_data_t* %11, i32 0, i32 0
  %12 = load %struct.ref_s*, %struct.ref_s** %blk_ref, align 8, !tbaa !41
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 %idxprom2
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 1
  %bytes = bitcast %union.v* %value to i8**
  %13 = load i8*, i8** %bytes, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8, i8* %13, i64 %idxprom
  %14 = load i8, i8* %arrayidx3, align 1, !tbaa !28
  %conv = zext i8 %14 to i32
  %shl = shl i32 %conv, 24
  %15 = load i32, i32* %p.addr, align 4, !tbaa !23
  %add = add i32 %15, 1
  %16 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %o.addr, align 8, !tbaa !1
  %mask4 = getelementptr inbounds %struct.tag_cff_data_t, %struct.tag_cff_data_t* %16, i32 0, i32 3
  %17 = load i32, i32* %mask4, align 4, !tbaa !44
  %and5 = and i32 %add, %17
  %idxprom6 = zext i32 %and5 to i64
  %18 = load i32, i32* %p.addr, align 4, !tbaa !23
  %add7 = add i32 %18, 1
  %19 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %o.addr, align 8, !tbaa !1
  %shift8 = getelementptr inbounds %struct.tag_cff_data_t, %struct.tag_cff_data_t* %19, i32 0, i32 2
  %20 = load i32, i32* %shift8, align 4, !tbaa !45
  %shr9 = lshr i32 %add7, %20
  %idxprom10 = zext i32 %shr9 to i64
  %21 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %o.addr, align 8, !tbaa !1
  %blk_ref11 = getelementptr inbounds %struct.tag_cff_data_t, %struct.tag_cff_data_t* %21, i32 0, i32 0
  %22 = load %struct.ref_s*, %struct.ref_s** %blk_ref11, align 8, !tbaa !41
  %arrayidx12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 %idxprom10
  %value13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx12, i32 0, i32 1
  %bytes14 = bitcast %union.v* %value13 to i8**
  %23 = load i8*, i8** %bytes14, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i8, i8* %23, i64 %idxprom6
  %24 = load i8, i8* %arrayidx15, align 1, !tbaa !28
  %conv16 = zext i8 %24 to i32
  %shl17 = shl i32 %conv16, 16
  %or = or i32 %shl, %shl17
  %25 = load i32, i32* %p.addr, align 4, !tbaa !23
  %add18 = add i32 %25, 2
  %26 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %o.addr, align 8, !tbaa !1
  %mask19 = getelementptr inbounds %struct.tag_cff_data_t, %struct.tag_cff_data_t* %26, i32 0, i32 3
  %27 = load i32, i32* %mask19, align 4, !tbaa !44
  %and20 = and i32 %add18, %27
  %idxprom21 = zext i32 %and20 to i64
  %28 = load i32, i32* %p.addr, align 4, !tbaa !23
  %add22 = add i32 %28, 2
  %29 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %o.addr, align 8, !tbaa !1
  %shift23 = getelementptr inbounds %struct.tag_cff_data_t, %struct.tag_cff_data_t* %29, i32 0, i32 2
  %30 = load i32, i32* %shift23, align 4, !tbaa !45
  %shr24 = lshr i32 %add22, %30
  %idxprom25 = zext i32 %shr24 to i64
  %31 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %o.addr, align 8, !tbaa !1
  %blk_ref26 = getelementptr inbounds %struct.tag_cff_data_t, %struct.tag_cff_data_t* %31, i32 0, i32 0
  %32 = load %struct.ref_s*, %struct.ref_s** %blk_ref26, align 8, !tbaa !41
  %arrayidx27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i64 %idxprom25
  %value28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx27, i32 0, i32 1
  %bytes29 = bitcast %union.v* %value28 to i8**
  %33 = load i8*, i8** %bytes29, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds i8, i8* %33, i64 %idxprom21
  %34 = load i8, i8* %arrayidx30, align 1, !tbaa !28
  %conv31 = zext i8 %34 to i32
  %shl32 = shl i32 %conv31, 8
  %or33 = or i32 %or, %shl32
  %35 = load i32, i32* %p.addr, align 4, !tbaa !23
  %add34 = add i32 %35, 3
  %36 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %o.addr, align 8, !tbaa !1
  %mask35 = getelementptr inbounds %struct.tag_cff_data_t, %struct.tag_cff_data_t* %36, i32 0, i32 3
  %37 = load i32, i32* %mask35, align 4, !tbaa !44
  %and36 = and i32 %add34, %37
  %idxprom37 = zext i32 %and36 to i64
  %38 = load i32, i32* %p.addr, align 4, !tbaa !23
  %add38 = add i32 %38, 3
  %39 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %o.addr, align 8, !tbaa !1
  %shift39 = getelementptr inbounds %struct.tag_cff_data_t, %struct.tag_cff_data_t* %39, i32 0, i32 2
  %40 = load i32, i32* %shift39, align 4, !tbaa !45
  %shr40 = lshr i32 %add38, %40
  %idxprom41 = zext i32 %shr40 to i64
  %41 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %o.addr, align 8, !tbaa !1
  %blk_ref42 = getelementptr inbounds %struct.tag_cff_data_t, %struct.tag_cff_data_t* %41, i32 0, i32 0
  %42 = load %struct.ref_s*, %struct.ref_s** %blk_ref42, align 8, !tbaa !41
  %arrayidx43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i64 %idxprom41
  %value44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx43, i32 0, i32 1
  %bytes45 = bitcast %union.v* %value44 to i8**
  %43 = load i8*, i8** %bytes45, align 8, !tbaa !1
  %arrayidx46 = getelementptr inbounds i8, i8* %43, i64 %idxprom37
  %44 = load i8, i8* %arrayidx46, align 1, !tbaa !28
  %conv47 = zext i8 %44 to i32
  %or48 = or i32 %or33, %conv47
  %45 = load i32*, i32** %u.addr, align 8, !tbaa !1
  store i32 %or48, i32* %45, align 4, !tbaa !23
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %46 = load i32, i32* %retval
  ret i32 %46
}

declare i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s*, %struct.ref_s*, i32, i32, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @make_string_from_index(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %dst, %struct.tag_cff_index_t* %index, %struct.tag_cff_data_t* %data, i32 %id, i32 %fd_num) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %dst.addr = alloca %struct.ref_s*, align 8
  %index.addr = alloca %struct.tag_cff_index_t*, align 8
  %data.addr = alloca %struct.tag_cff_data_t*, align 8
  %id.addr = alloca i32, align 4
  %fd_num.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %len = alloca i32, align 4
  %doff = alloca i32, align 4
  %sbody = alloca i8*, align 8
  %fdoff = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %dst, %struct.ref_s** %dst.addr, align 8, !tbaa !1
  store %struct.tag_cff_index_t* %index, %struct.tag_cff_index_t** %index.addr, align 8, !tbaa !1
  store %struct.tag_cff_data_t* %data, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  store i32 %id, i32* %id.addr, align 4, !tbaa !23
  store i32 %fd_num, i32* %fd_num.addr, align 4, !tbaa !23
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %doff to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i8** %sbody to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %fdoff to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i32, i32* %fd_num.addr, align 4, !tbaa !23
  %cmp = icmp sge i32 %5, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %fdoff, align 4, !tbaa !23
  %6 = load %struct.tag_cff_index_t*, %struct.tag_cff_index_t** %index.addr, align 8, !tbaa !1
  %7 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %8 = load i32, i32* %id.addr, align 4, !tbaa !23
  %call = call i32 @peek_index(i32* %doff, i32* %len, %struct.tag_cff_index_t* %6, %struct.tag_cff_data_t* %7, i32 %8) #5
  store i32 %call, i32* %code, align 4, !tbaa !23
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load i32, i32* %len, align 4, !tbaa !23
  %11 = load i32, i32* %fdoff, align 4, !tbaa !23
  %add = add i32 %10, %11
  %cmp3 = icmp ugt i32 %add, 65535
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %13 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !40
  %14 = bitcast %struct.gs_ref_memory_s* %13 to %struct.gs_memory_s*
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %14, i32 0, i32 1
  %alloc_string = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 16
  %15 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_string, align 8, !tbaa !69
  %16 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory7 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %16, i32 0, i32 1
  %current8 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory7, i32 0, i32 0
  %17 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current8, align 8, !tbaa !40
  %18 = bitcast %struct.gs_ref_memory_s* %17 to %struct.gs_memory_s*
  %19 = load i32, i32* %len, align 4, !tbaa !23
  %20 = load i32, i32* %fdoff, align 4, !tbaa !23
  %add9 = add i32 %19, %20
  %call10 = call i8* %15(%struct.gs_memory_s* %18, i32 %add9, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0)) #5
  store i8* %call10, i8** %sbody, align 8, !tbaa !1
  %cmp11 = icmp eq i8* %call10, null
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.6
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.end.6
  %21 = load i8*, i8** %sbody, align 8, !tbaa !1
  %22 = load %struct.ref_s*, %struct.ref_s** %dst.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 1
  %bytes = bitcast %union.v* %value to i8**
  store i8* %21, i8** %bytes, align 8, !tbaa !1
  %23 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory15 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %23, i32 0, i32 1
  %current_space = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory15, i32 0, i32 2
  %24 = load i32, i32* %current_space, align 4, !tbaa !70
  %or = or i32 %24, 96
  %add16 = add i32 4608, %or
  %conv17 = trunc i32 %add16 to i16
  %25 = load %struct.ref_s*, %struct.ref_s** %dst.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 %conv17, i16* %type_attrs, align 2, !tbaa !20
  %26 = load i32, i32* %len, align 4, !tbaa !23
  %27 = load i32, i32* %fdoff, align 4, !tbaa !23
  %add18 = add i32 %26, %27
  %28 = load %struct.ref_s*, %struct.ref_s** %dst.addr, align 8, !tbaa !1
  %tas19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas19, i32 0, i32 2
  store i32 %add18, i32* %rsize, align 4, !tbaa !30
  %29 = load i8*, i8** %sbody, align 8, !tbaa !1
  %30 = load i32, i32* %fdoff, align 4, !tbaa !23
  %idx.ext = sext i32 %30 to i64
  %add.ptr = getelementptr inbounds i8, i8* %29, i64 %idx.ext
  %31 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %32 = load i32, i32* %doff, align 4, !tbaa !23
  %33 = load i32, i32* %len, align 4, !tbaa !23
  %call20 = call i32 @get_cff_string(i8* %add.ptr, %struct.tag_cff_data_t* %31, i32 %32, i32 %33) #5
  store i32 %call20, i32* %code, align 4, !tbaa !23
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.14
  %34 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %34, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %if.end.14
  %35 = load i32, i32* %fdoff, align 4, !tbaa !23
  %tobool = icmp ne i32 %35, 0
  br i1 %tobool, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.end.24
  %36 = load i32, i32* %fd_num.addr, align 4, !tbaa !23
  %conv26 = trunc i32 %36 to i8
  %37 = load i8*, i8** %sbody, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %37, i64 0
  store i8 %conv26, i8* %arrayidx, align 1, !tbaa !28
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.end.24
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.27, %if.then.23, %if.then.13, %if.then.5, %if.then
  %38 = bitcast i32* %fdoff to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast i8** %sbody to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast i32* %doff to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = load i32, i32* %retval
  ret i32 %43
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @parse_dict(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %topdict, %struct.tag_font_offsets_t* %offsets, %struct.tag_cff_index_t* %strings, %struct.tag_cff_data_t* %data, i32 %p0, i32 %pe) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %topdict.addr = alloca %struct.ref_s*, align 8
  %offsets.addr = alloca %struct.tag_font_offsets_t*, align 8
  %strings.addr = alloca %struct.tag_cff_index_t*, align 8
  %data.addr = alloca %struct.tag_cff_data_t*, align 8
  %p0.addr = alloca i32, align 4
  %pe.addr = alloca i32, align 4
  %fontinfodict = alloca %struct.ref_s*, align 8
  %privatedict = alloca %struct.ref_s*, align 8
  %arg = alloca %struct.ref_s, align 8
  %ops = alloca [50 x %struct.ref_s], align 16
  %op_i = alloca i32, align 4
  %c = alloca i32, align 4
  %p = alloca i32, align 4
  %control = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %ros = alloca %struct.ref_s, align 8
  %n = alloca i32, align 4
  %n_op = alloca i32, align 4
  %string_id = alloca i32, align 4
  %arg343 = alloca %struct.ref_s, align 8
  %dict = alloca %struct.ref_s*, align 8
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %topdict, %struct.ref_s** %topdict.addr, align 8, !tbaa !1
  store %struct.tag_font_offsets_t* %offsets, %struct.tag_font_offsets_t** %offsets.addr, align 8, !tbaa !1
  store %struct.tag_cff_index_t* %strings, %struct.tag_cff_index_t** %strings.addr, align 8, !tbaa !1
  store %struct.tag_cff_data_t* %data, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  store i32 %p0, i32* %p0.addr, align 4, !tbaa !23
  store i32 %pe, i32* %pe.addr, align 4, !tbaa !23
  %0 = bitcast %struct.ref_s** %fontinfodict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store %struct.ref_s* null, %struct.ref_s** %fontinfodict, align 8, !tbaa !1
  %1 = bitcast %struct.ref_s** %privatedict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store %struct.ref_s* null, %struct.ref_s** %privatedict, align 8, !tbaa !1
  %2 = bitcast %struct.ref_s* %arg to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #1
  %3 = bitcast [50 x %struct.ref_s]* %ops to i8*
  call void @llvm.lifetime.start(i64 800, i8* %3) #1
  %4 = bitcast i32* %op_i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %op_i, align 4, !tbaa !23
  %5 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %p to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i32, i32* %p0.addr, align 4, !tbaa !23
  store i32 %7, i32* %p, align 4, !tbaa !23
  %8 = bitcast i32* %control to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont.457, %cleanup.cont.340, %sw.bb.314, %if.end.311, %sw.bb.299, %if.end.291, %if.end.261, %if.end.222, %if.end.198, %if.end.174, %sw.default, %if.end.147, %if.end.123, %cleanup.cont, %entry
  %10 = load i32, i32* %p, align 4, !tbaa !23
  %11 = load i32, i32* %pe.addr, align 4, !tbaa !23
  %cmp = icmp ult i32 %10, %11
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %13 = load i32, i32* %p, align 4, !tbaa !23
  %inc = add i32 %13, 1
  store i32 %inc, i32* %p, align 4, !tbaa !23
  %14 = load i32, i32* %pe.addr, align 4, !tbaa !23
  %call = call i32 @card8(i32* %c, %struct.tag_cff_data_t* %12, i32 %13, i32 %14) #5
  store i32 %call, i32* %code, align 4, !tbaa !23
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %15 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.458

if.end:                                           ; preds = %while.body
  %16 = load i32, i32* %c, align 4, !tbaa !23
  switch i32 %16, label %sw.default.315 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.2
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.4
    i32 4, label %sw.bb.5
    i32 5, label %sw.bb.6
    i32 6, label %sw.bb.7
    i32 7, label %sw.bb.8
    i32 8, label %sw.bb.9
    i32 9, label %sw.bb.10
    i32 10, label %sw.bb.11
    i32 11, label %sw.bb.12
    i32 12, label %sw.bb.13
    i32 13, label %sw.bb.154
    i32 14, label %sw.bb.155
    i32 15, label %sw.bb.156
    i32 16, label %sw.bb.180
    i32 17, label %sw.bb.204
    i32 18, label %sw.bb.228
    i32 19, label %sw.bb.273
    i32 20, label %sw.bb.297
    i32 21, label %sw.bb.298
    i32 22, label %sw.bb.299
    i32 23, label %sw.bb.299
    i32 24, label %sw.bb.299
    i32 25, label %sw.bb.299
    i32 26, label %sw.bb.299
    i32 27, label %sw.bb.299
    i32 30, label %sw.bb.300
    i32 31, label %sw.bb.314
    i32 255, label %sw.bb.314
  ]

sw.bb:                                            ; preds = %if.end
  store i32 327681, i32* %control, align 4, !tbaa !23
  br label %sw.epilog.341

sw.bb.2:                                          ; preds = %if.end
  store i32 327937, i32* %control, align 4, !tbaa !23
  br label %sw.epilog.341

sw.bb.3:                                          ; preds = %if.end
  store i32 328193, i32* %control, align 4, !tbaa !23
  br label %sw.epilog.341

sw.bb.4:                                          ; preds = %if.end
  store i32 328449, i32* %control, align 4, !tbaa !23
  br label %sw.epilog.341

sw.bb.5:                                          ; preds = %if.end
  store i32 328449, i32* %control, align 4, !tbaa !23
  br label %sw.epilog.341

sw.bb.6:                                          ; preds = %if.end
  store i32 525572, i32* %control, align 4, !tbaa !23
  br label %sw.epilog.341

sw.bb.7:                                          ; preds = %if.end
  store i32 1705472, i32* %control, align 4, !tbaa !23
  br label %sw.epilog.341

sw.bb.8:                                          ; preds = %if.end
  store i32 1705728, i32* %control, align 4, !tbaa !23
  br label %sw.epilog.341

sw.bb.9:                                          ; preds = %if.end
  store i32 1705984, i32* %control, align 4, !tbaa !23
  br label %sw.epilog.341

sw.bb.10:                                         ; preds = %if.end
  store i32 1706240, i32* %control, align 4, !tbaa !23
  br label %sw.epilog.341

sw.bb.11:                                         ; preds = %if.end
  store i32 657921, i32* %control, align 4, !tbaa !23
  br label %sw.epilog.341

sw.bb.12:                                         ; preds = %if.end
  store i32 658177, i32* %control, align 4, !tbaa !23
  br label %sw.epilog.341

sw.bb.13:                                         ; preds = %if.end
  %17 = load i32, i32* %p, align 4, !tbaa !23
  %18 = load i32, i32* %pe.addr, align 4, !tbaa !23
  %cmp14 = icmp uge i32 %17, %18
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %sw.bb.13
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.458

if.end.16:                                        ; preds = %sw.bb.13
  %19 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %20 = load i32, i32* %p, align 4, !tbaa !23
  %inc17 = add i32 %20, 1
  store i32 %inc17, i32* %p, align 4, !tbaa !23
  %21 = load i32, i32* %pe.addr, align 4, !tbaa !23
  %call18 = call i32 @card8(i32* %c, %struct.tag_cff_data_t* %19, i32 %20, i32 %21) #5
  store i32 %call18, i32* %code, align 4, !tbaa !23
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.16
  %22 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.458

if.end.21:                                        ; preds = %if.end.16
  %23 = load i32, i32* %c, align 4, !tbaa !23
  switch i32 %23, label %sw.default [
    i32 0, label %sw.bb.22
    i32 1, label %sw.bb.23
    i32 2, label %sw.bb.24
    i32 3, label %sw.bb.25
    i32 4, label %sw.bb.26
    i32 5, label %sw.bb.27
    i32 6, label %sw.bb.28
    i32 7, label %sw.bb.29
    i32 8, label %sw.bb.30
    i32 9, label %sw.bb.31
    i32 10, label %sw.bb.32
    i32 11, label %sw.bb.33
    i32 12, label %sw.bb.34
    i32 13, label %sw.bb.35
    i32 14, label %sw.bb.36
    i32 17, label %sw.bb.37
    i32 18, label %sw.bb.38
    i32 19, label %sw.bb.39
    i32 20, label %sw.bb.40
    i32 21, label %sw.bb.41
    i32 22, label %sw.bb.42
    i32 23, label %sw.bb.43
    i32 30, label %sw.bb.44
    i32 31, label %sw.bb.101
    i32 32, label %sw.bb.102
    i32 33, label %sw.bb.103
    i32 34, label %sw.bb.104
    i32 35, label %sw.bb.105
    i32 36, label %sw.bb.106
    i32 37, label %sw.bb.129
    i32 38, label %sw.bb.153
  ]

sw.bb.22:                                         ; preds = %if.end.21
  store i32 330753, i32* %control, align 4, !tbaa !23
  br label %sw.epilog

sw.bb.23:                                         ; preds = %if.end.21
  store i32 6360321, i32* %control, align 4, !tbaa !23
  br label %sw.epilog

sw.bb.24:                                         ; preds = %if.end.21
  store i32 69121, i32* %control, align 4, !tbaa !23
  br label %sw.epilog

sw.bb.25:                                         ; preds = %if.end.21
  store i32 69377, i32* %control, align 4, !tbaa !23
  br label %sw.epilog

sw.bb.26:                                         ; preds = %if.end.21
  store i32 69633, i32* %control, align 4, !tbaa !23
  br label %sw.epilog

sw.bb.27:                                         ; preds = %if.end.21
  store i32 69889, i32* %control, align 4, !tbaa !23
  br label %sw.epilog

sw.bb.28:                                         ; preds = %if.end.21
  store i32 2167297, i32* %control, align 4, !tbaa !23
  br label %sw.epilog

sw.bb.29:                                         ; preds = %if.end.21
  store i32 529158, i32* %control, align 4, !tbaa !23
  br label %sw.epilog

sw.bb.30:                                         ; preds = %if.end.21
  store i32 5121, i32* %control, align 4, !tbaa !23
  br label %sw.epilog

sw.bb.31:                                         ; preds = %if.end.21
  store i32 136449, i32* %control, align 4, !tbaa !23
  br label %sw.epilog

sw.bb.32:                                         ; preds = %if.end.21
  store i32 136705, i32* %control, align 4, !tbaa !23
  br label %sw.epilog

sw.bb.33:                                         ; preds = %if.end.21
  store i32 136961, i32* %control, align 4, !tbaa !23
  br label %sw.epilog

sw.bb.34:                                         ; preds = %if.end.21
  store i32 1710080, i32* %control, align 4, !tbaa !23
  br label %sw.epilog

sw.bb.35:                                         ; preds = %if.end.21
  store i32 1710336, i32* %control, align 4, !tbaa !23
  br label %sw.epilog

sw.bb.36:                                         ; preds = %if.end.21
  store i32 6429185, i32* %control, align 4, !tbaa !23
  br label %sw.epilog

sw.bb.37:                                         ; preds = %if.end.21
  store i32 2235137, i32* %control, align 4, !tbaa !23
  br label %sw.epilog

sw.bb.38:                                         ; preds = %if.end.21
  store i32 138241, i32* %control, align 4, !tbaa !23
  br label %sw.epilog

sw.bb.39:                                         ; preds = %if.end.21
  store i32 2235649, i32* %control, align 4, !tbaa !23
  br label %sw.epilog

sw.bb.40:                                         ; preds = %if.end.21
  store i32 2235905, i32* %control, align 4, !tbaa !23
  br label %sw.epilog

sw.bb.41:                                         ; preds = %if.end.21
  store i32 2367233, i32* %control, align 4, !tbaa !23
  br label %sw.epilog

sw.bb.42:                                         ; preds = %if.end.21
  store i32 2367489, i32* %control, align 4, !tbaa !23
  br label %sw.epilog

sw.bb.43:                                         ; preds = %if.end.21
  store i32 1581312, i32* %control, align 4, !tbaa !23
  br label %sw.epilog

sw.bb.44:                                         ; preds = %if.end.21
  %24 = bitcast %struct.ref_s* %ros to i8*
  call void @llvm.lifetime.start(i64 16, i8* %24) #1
  %25 = load i32, i32* %op_i, align 4, !tbaa !23
  %sub = sub nsw i32 %25, 3
  store i32 %sub, i32* %op_i, align 4, !tbaa !23
  %cmp45 = icmp slt i32 %sub, 0
  br i1 %cmp45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %sw.bb.44
  store i32 -17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.47:                                        ; preds = %sw.bb.44
  %26 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %26, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %27 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !40
  %call48 = call i32 @dict_alloc(%struct.gs_ref_memory_s* %27, i32 3, %struct.ref_s* %ros) #5
  store i32 %call48, i32* %code, align 4, !tbaa !23
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.end.47
  %28 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.51:                                        ; preds = %if.end.47
  %29 = load i32, i32* %op_i, align 4, !tbaa !23
  %idxprom = sext i32 %29 to i64
  %arrayidx = getelementptr inbounds [50 x %struct.ref_s], [50 x %struct.ref_s]* %ops, i32 0, i64 %idxprom
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %30 = bitcast i16* %type_attrs to i8*
  %arrayidx52 = getelementptr inbounds i8, i8* %30, i64 1
  %31 = load i8, i8* %arrayidx52, align 1, !tbaa !28
  %conv = zext i8 %31 to i32
  %cmp53 = icmp eq i32 %conv, 11
  br i1 %cmp53, label %if.end.59, label %if.then.55

if.then.55:                                       ; preds = %if.end.51
  %32 = load i32, i32* %op_i, align 4, !tbaa !23
  %idxprom56 = sext i32 %32 to i64
  %arrayidx57 = getelementptr inbounds [50 x %struct.ref_s], [50 x %struct.ref_s]* %ops, i32 0, i64 %idxprom56
  %call58 = call i32 @check_type_failed(%struct.ref_s* %arrayidx57) #5
  store i32 %call58, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.59:                                        ; preds = %if.end.51
  %33 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %34 = load %struct.tag_cff_index_t*, %struct.tag_cff_index_t** %strings.addr, align 8, !tbaa !1
  %35 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %36 = load i32, i32* %op_i, align 4, !tbaa !23
  %idxprom60 = sext i32 %36 to i64
  %arrayidx61 = getelementptr inbounds [50 x %struct.ref_s], [50 x %struct.ref_s]* %ops, i32 0, i64 %idxprom60
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx61, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %37 = load i64, i64* %intval, align 8, !tbaa !29
  %conv62 = trunc i64 %37 to i32
  %call63 = call i32 @make_string_from_sid(%struct.gs_context_state_s* %33, %struct.ref_s* %arg, %struct.tag_cff_index_t* %34, %struct.tag_cff_data_t* %35, i32 %conv62) #5
  store i32 %call63, i32* %code, align 4, !tbaa !23
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.end.59
  %38 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %38, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.67:                                        ; preds = %if.end.59
  %39 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call68 = call i32 @idict_put_c_name(%struct.gs_context_state_s* %39, %struct.ref_s* %ros, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i32 8, %struct.ref_s* %arg) #5
  store i32 %call68, i32* %code, align 4, !tbaa !23
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.end.67
  %40 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %40, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.72:                                        ; preds = %if.end.67
  %41 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %42 = load %struct.tag_cff_index_t*, %struct.tag_cff_index_t** %strings.addr, align 8, !tbaa !1
  %43 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %44 = load i32, i32* %op_i, align 4, !tbaa !23
  %add = add nsw i32 %44, 1
  %idxprom73 = sext i32 %add to i64
  %arrayidx74 = getelementptr inbounds [50 x %struct.ref_s], [50 x %struct.ref_s]* %ops, i32 0, i64 %idxprom73
  %value75 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx74, i32 0, i32 1
  %intval76 = bitcast %union.v* %value75 to i64*
  %45 = load i64, i64* %intval76, align 8, !tbaa !29
  %conv77 = trunc i64 %45 to i32
  %call78 = call i32 @make_string_from_sid(%struct.gs_context_state_s* %41, %struct.ref_s* %arg, %struct.tag_cff_index_t* %42, %struct.tag_cff_data_t* %43, i32 %conv77) #5
  store i32 %call78, i32* %code, align 4, !tbaa !23
  %cmp79 = icmp slt i32 %call78, 0
  br i1 %cmp79, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %if.end.72
  %46 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %46, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.82:                                        ; preds = %if.end.72
  %47 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %call83 = call i32 @idict_put_c_name(%struct.gs_context_state_s* %47, %struct.ref_s* %ros, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i32 8, %struct.ref_s* %arg) #5
  store i32 %call83, i32* %code, align 4, !tbaa !23
  %cmp84 = icmp slt i32 %call83, 0
  br i1 %cmp84, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %if.end.82
  %48 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %48, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.87:                                        ; preds = %if.end.82
  %49 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %50 = load i32, i32* %op_i, align 4, !tbaa !23
  %add88 = add nsw i32 %50, 2
  %idxprom89 = sext i32 %add88 to i64
  %arrayidx90 = getelementptr inbounds [50 x %struct.ref_s], [50 x %struct.ref_s]* %ops, i32 0, i64 %idxprom89
  %call91 = call i32 @idict_put_c_name(%struct.gs_context_state_s* %49, %struct.ref_s* %ros, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), i32 10, %struct.ref_s* %arrayidx90) #5
  store i32 %call91, i32* %code, align 4, !tbaa !23
  %cmp92 = icmp slt i32 %call91, 0
  br i1 %cmp92, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %if.end.87
  %51 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %51, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.95:                                        ; preds = %if.end.87
  %52 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %53 = load %struct.ref_s*, %struct.ref_s** %topdict.addr, align 8, !tbaa !1
  %call96 = call i32 @idict_put_c_name(%struct.gs_context_state_s* %52, %struct.ref_s* %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), i32 13, %struct.ref_s* %ros) #5
  store i32 %call96, i32* %code, align 4, !tbaa !23
  %cmp97 = icmp slt i32 %call96, 0
  br i1 %cmp97, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %if.end.95
  %54 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %54, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.100:                                       ; preds = %if.end.95
  %55 = load %struct.tag_font_offsets_t*, %struct.tag_font_offsets_t** %offsets.addr, align 8, !tbaa !1
  %have_ros = getelementptr inbounds %struct.tag_font_offsets_t, %struct.tag_font_offsets_t* %55, i32 0, i32 8
  store i32 1, i32* %have_ros, align 4, !tbaa !63
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.100, %if.then.99, %if.then.94, %if.then.86, %if.then.81, %if.then.71, %if.then.66, %if.then.55, %if.then.50, %if.then.46
  %56 = bitcast %struct.ref_s* %ros to i8*
  call void @llvm.lifetime.end(i64 16, i8* %56) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.458 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

sw.bb.101:                                        ; preds = %if.end.21
  store i32 8705, i32* %control, align 4, !tbaa !23
  br label %sw.epilog

sw.bb.102:                                        ; preds = %if.end.21
  store i32 8961, i32* %control, align 4, !tbaa !23
  br label %sw.epilog

sw.bb.103:                                        ; preds = %if.end.21
  store i32 2106369, i32* %control, align 4, !tbaa !23
  br label %sw.epilog

sw.bb.104:                                        ; preds = %if.end.21
  store i32 2106625, i32* %control, align 4, !tbaa !23
  br label %sw.epilog

sw.bb.105:                                        ; preds = %if.end.21
  store i32 2106881, i32* %control, align 4, !tbaa !23
  br label %sw.epilog

sw.bb.106:                                        ; preds = %if.end.21
  store i32 0, i32* %control, align 4, !tbaa !23
  %57 = load i32, i32* %op_i, align 4, !tbaa !23
  %dec = add nsw i32 %57, -1
  store i32 %dec, i32* %op_i, align 4, !tbaa !23
  %cmp107 = icmp slt i32 %dec, 0
  br i1 %cmp107, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %sw.bb.106
  store i32 -17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.458

if.end.110:                                       ; preds = %sw.bb.106
  %58 = load i32, i32* %op_i, align 4, !tbaa !23
  %idxprom111 = sext i32 %58 to i64
  %arrayidx112 = getelementptr inbounds [50 x %struct.ref_s], [50 x %struct.ref_s]* %ops, i32 0, i64 %idxprom111
  %tas113 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx112, i32 0, i32 0
  %type_attrs114 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas113, i32 0, i32 0
  %59 = bitcast i16* %type_attrs114 to i8*
  %arrayidx115 = getelementptr inbounds i8, i8* %59, i64 1
  %60 = load i8, i8* %arrayidx115, align 1, !tbaa !28
  %conv116 = zext i8 %60 to i32
  %cmp117 = icmp eq i32 %conv116, 11
  br i1 %cmp117, label %if.end.123, label %if.then.119

if.then.119:                                      ; preds = %if.end.110
  %61 = load i32, i32* %op_i, align 4, !tbaa !23
  %idxprom120 = sext i32 %61 to i64
  %arrayidx121 = getelementptr inbounds [50 x %struct.ref_s], [50 x %struct.ref_s]* %ops, i32 0, i64 %idxprom120
  %call122 = call i32 @check_type_failed(%struct.ref_s* %arrayidx121) #5
  store i32 %call122, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.458

if.end.123:                                       ; preds = %if.end.110
  %62 = load i32, i32* %op_i, align 4, !tbaa !23
  %idxprom124 = sext i32 %62 to i64
  %arrayidx125 = getelementptr inbounds [50 x %struct.ref_s], [50 x %struct.ref_s]* %ops, i32 0, i64 %idxprom124
  %value126 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx125, i32 0, i32 1
  %intval127 = bitcast %union.v* %value126 to i64*
  %63 = load i64, i64* %intval127, align 8, !tbaa !29
  %conv128 = trunc i64 %63 to i32
  %64 = load %struct.tag_font_offsets_t*, %struct.tag_font_offsets_t** %offsets.addr, align 8, !tbaa !1
  %fdarray_off = getelementptr inbounds %struct.tag_font_offsets_t, %struct.tag_font_offsets_t* %64, i32 0, i32 0
  store i32 %conv128, i32* %fdarray_off, align 4, !tbaa !67
  br label %while.cond

sw.bb.129:                                        ; preds = %if.end.21
  store i32 0, i32* %control, align 4, !tbaa !23
  %65 = load i32, i32* %op_i, align 4, !tbaa !23
  %dec130 = add nsw i32 %65, -1
  store i32 %dec130, i32* %op_i, align 4, !tbaa !23
  %cmp131 = icmp slt i32 %dec130, 0
  br i1 %cmp131, label %if.then.133, label %if.end.134

if.then.133:                                      ; preds = %sw.bb.129
  store i32 -17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.458

if.end.134:                                       ; preds = %sw.bb.129
  %66 = load i32, i32* %op_i, align 4, !tbaa !23
  %idxprom135 = sext i32 %66 to i64
  %arrayidx136 = getelementptr inbounds [50 x %struct.ref_s], [50 x %struct.ref_s]* %ops, i32 0, i64 %idxprom135
  %tas137 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx136, i32 0, i32 0
  %type_attrs138 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas137, i32 0, i32 0
  %67 = bitcast i16* %type_attrs138 to i8*
  %arrayidx139 = getelementptr inbounds i8, i8* %67, i64 1
  %68 = load i8, i8* %arrayidx139, align 1, !tbaa !28
  %conv140 = zext i8 %68 to i32
  %cmp141 = icmp eq i32 %conv140, 11
  br i1 %cmp141, label %if.end.147, label %if.then.143

if.then.143:                                      ; preds = %if.end.134
  %69 = load i32, i32* %op_i, align 4, !tbaa !23
  %idxprom144 = sext i32 %69 to i64
  %arrayidx145 = getelementptr inbounds [50 x %struct.ref_s], [50 x %struct.ref_s]* %ops, i32 0, i64 %idxprom144
  %call146 = call i32 @check_type_failed(%struct.ref_s* %arrayidx145) #5
  store i32 %call146, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.458

if.end.147:                                       ; preds = %if.end.134
  %70 = load i32, i32* %op_i, align 4, !tbaa !23
  %idxprom148 = sext i32 %70 to i64
  %arrayidx149 = getelementptr inbounds [50 x %struct.ref_s], [50 x %struct.ref_s]* %ops, i32 0, i64 %idxprom148
  %value150 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx149, i32 0, i32 1
  %intval151 = bitcast %union.v* %value150 to i64*
  %71 = load i64, i64* %intval151, align 8, !tbaa !29
  %conv152 = trunc i64 %71 to i32
  %72 = load %struct.tag_font_offsets_t*, %struct.tag_font_offsets_t** %offsets.addr, align 8, !tbaa !1
  %fdselect_off = getelementptr inbounds %struct.tag_font_offsets_t, %struct.tag_font_offsets_t* %72, i32 0, i32 1
  store i32 %conv152, i32* %fdselect_off, align 4, !tbaa !66
  br label %while.cond

sw.bb.153:                                        ; preds = %if.end.21
  store i32 2369793, i32* %control, align 4, !tbaa !23
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.21
  br label %while.cond

sw.epilog:                                        ; preds = %sw.bb.153, %sw.bb.105, %sw.bb.104, %sw.bb.103, %sw.bb.102, %sw.bb.101, %sw.bb.43, %sw.bb.42, %sw.bb.41, %sw.bb.40, %sw.bb.39, %sw.bb.38, %sw.bb.37, %sw.bb.36, %sw.bb.35, %sw.bb.34, %sw.bb.33, %sw.bb.32, %sw.bb.31, %sw.bb.30, %sw.bb.29, %sw.bb.28, %sw.bb.27, %sw.bb.26, %sw.bb.25, %sw.bb.24, %sw.bb.23, %sw.bb.22
  br label %sw.epilog.341

sw.bb.154:                                        ; preds = %if.end
  store i32 2107905, i32* %control, align 4, !tbaa !23
  br label %sw.epilog.341

sw.bb.155:                                        ; preds = %if.end
  store i32 535296, i32* %control, align 4, !tbaa !23
  br label %sw.epilog.341

sw.bb.156:                                        ; preds = %if.end
  %73 = load i32, i32* %op_i, align 4, !tbaa !23
  %dec157 = add nsw i32 %73, -1
  store i32 %dec157, i32* %op_i, align 4, !tbaa !23
  %cmp158 = icmp slt i32 %dec157, 0
  br i1 %cmp158, label %if.then.160, label %if.end.161

if.then.160:                                      ; preds = %sw.bb.156
  store i32 -17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.458

if.end.161:                                       ; preds = %sw.bb.156
  %74 = load i32, i32* %op_i, align 4, !tbaa !23
  %idxprom162 = sext i32 %74 to i64
  %arrayidx163 = getelementptr inbounds [50 x %struct.ref_s], [50 x %struct.ref_s]* %ops, i32 0, i64 %idxprom162
  %tas164 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx163, i32 0, i32 0
  %type_attrs165 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas164, i32 0, i32 0
  %75 = bitcast i16* %type_attrs165 to i8*
  %arrayidx166 = getelementptr inbounds i8, i8* %75, i64 1
  %76 = load i8, i8* %arrayidx166, align 1, !tbaa !28
  %conv167 = zext i8 %76 to i32
  %cmp168 = icmp eq i32 %conv167, 11
  br i1 %cmp168, label %if.end.174, label %if.then.170

if.then.170:                                      ; preds = %if.end.161
  %77 = load i32, i32* %op_i, align 4, !tbaa !23
  %idxprom171 = sext i32 %77 to i64
  %arrayidx172 = getelementptr inbounds [50 x %struct.ref_s], [50 x %struct.ref_s]* %ops, i32 0, i64 %idxprom171
  %call173 = call i32 @check_type_failed(%struct.ref_s* %arrayidx172) #5
  store i32 %call173, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.458

if.end.174:                                       ; preds = %if.end.161
  %78 = load i32, i32* %op_i, align 4, !tbaa !23
  %idxprom175 = sext i32 %78 to i64
  %arrayidx176 = getelementptr inbounds [50 x %struct.ref_s], [50 x %struct.ref_s]* %ops, i32 0, i64 %idxprom175
  %value177 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx176, i32 0, i32 1
  %intval178 = bitcast %union.v* %value177 to i64*
  %79 = load i64, i64* %intval178, align 8, !tbaa !29
  %conv179 = trunc i64 %79 to i32
  %80 = load %struct.tag_font_offsets_t*, %struct.tag_font_offsets_t** %offsets.addr, align 8, !tbaa !1
  %charset_off = getelementptr inbounds %struct.tag_font_offsets_t, %struct.tag_font_offsets_t* %80, i32 0, i32 2
  store i32 %conv179, i32* %charset_off, align 4, !tbaa !65
  br label %while.cond

sw.bb.180:                                        ; preds = %if.end
  %81 = load i32, i32* %op_i, align 4, !tbaa !23
  %dec181 = add nsw i32 %81, -1
  store i32 %dec181, i32* %op_i, align 4, !tbaa !23
  %cmp182 = icmp slt i32 %dec181, 0
  br i1 %cmp182, label %if.then.184, label %if.end.185

if.then.184:                                      ; preds = %sw.bb.180
  store i32 -17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.458

if.end.185:                                       ; preds = %sw.bb.180
  %82 = load i32, i32* %op_i, align 4, !tbaa !23
  %idxprom186 = sext i32 %82 to i64
  %arrayidx187 = getelementptr inbounds [50 x %struct.ref_s], [50 x %struct.ref_s]* %ops, i32 0, i64 %idxprom186
  %tas188 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx187, i32 0, i32 0
  %type_attrs189 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas188, i32 0, i32 0
  %83 = bitcast i16* %type_attrs189 to i8*
  %arrayidx190 = getelementptr inbounds i8, i8* %83, i64 1
  %84 = load i8, i8* %arrayidx190, align 1, !tbaa !28
  %conv191 = zext i8 %84 to i32
  %cmp192 = icmp eq i32 %conv191, 11
  br i1 %cmp192, label %if.end.198, label %if.then.194

if.then.194:                                      ; preds = %if.end.185
  %85 = load i32, i32* %op_i, align 4, !tbaa !23
  %idxprom195 = sext i32 %85 to i64
  %arrayidx196 = getelementptr inbounds [50 x %struct.ref_s], [50 x %struct.ref_s]* %ops, i32 0, i64 %idxprom195
  %call197 = call i32 @check_type_failed(%struct.ref_s* %arrayidx196) #5
  store i32 %call197, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.458

if.end.198:                                       ; preds = %if.end.185
  %86 = load i32, i32* %op_i, align 4, !tbaa !23
  %idxprom199 = sext i32 %86 to i64
  %arrayidx200 = getelementptr inbounds [50 x %struct.ref_s], [50 x %struct.ref_s]* %ops, i32 0, i64 %idxprom199
  %value201 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx200, i32 0, i32 1
  %intval202 = bitcast %union.v* %value201 to i64*
  %87 = load i64, i64* %intval202, align 8, !tbaa !29
  %conv203 = trunc i64 %87 to i32
  %88 = load %struct.tag_font_offsets_t*, %struct.tag_font_offsets_t** %offsets.addr, align 8, !tbaa !1
  %encoding_off = getelementptr inbounds %struct.tag_font_offsets_t, %struct.tag_font_offsets_t* %88, i32 0, i32 3
  store i32 %conv203, i32* %encoding_off, align 4, !tbaa !68
  br label %while.cond

sw.bb.204:                                        ; preds = %if.end
  %89 = load i32, i32* %op_i, align 4, !tbaa !23
  %dec205 = add nsw i32 %89, -1
  store i32 %dec205, i32* %op_i, align 4, !tbaa !23
  %cmp206 = icmp slt i32 %dec205, 0
  br i1 %cmp206, label %if.then.208, label %if.end.209

if.then.208:                                      ; preds = %sw.bb.204
  store i32 -17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.458

if.end.209:                                       ; preds = %sw.bb.204
  %90 = load i32, i32* %op_i, align 4, !tbaa !23
  %idxprom210 = sext i32 %90 to i64
  %arrayidx211 = getelementptr inbounds [50 x %struct.ref_s], [50 x %struct.ref_s]* %ops, i32 0, i64 %idxprom210
  %tas212 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx211, i32 0, i32 0
  %type_attrs213 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas212, i32 0, i32 0
  %91 = bitcast i16* %type_attrs213 to i8*
  %arrayidx214 = getelementptr inbounds i8, i8* %91, i64 1
  %92 = load i8, i8* %arrayidx214, align 1, !tbaa !28
  %conv215 = zext i8 %92 to i32
  %cmp216 = icmp eq i32 %conv215, 11
  br i1 %cmp216, label %if.end.222, label %if.then.218

if.then.218:                                      ; preds = %if.end.209
  %93 = load i32, i32* %op_i, align 4, !tbaa !23
  %idxprom219 = sext i32 %93 to i64
  %arrayidx220 = getelementptr inbounds [50 x %struct.ref_s], [50 x %struct.ref_s]* %ops, i32 0, i64 %idxprom219
  %call221 = call i32 @check_type_failed(%struct.ref_s* %arrayidx220) #5
  store i32 %call221, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.458

if.end.222:                                       ; preds = %if.end.209
  %94 = load i32, i32* %op_i, align 4, !tbaa !23
  %idxprom223 = sext i32 %94 to i64
  %arrayidx224 = getelementptr inbounds [50 x %struct.ref_s], [50 x %struct.ref_s]* %ops, i32 0, i64 %idxprom223
  %value225 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx224, i32 0, i32 1
  %intval226 = bitcast %union.v* %value225 to i64*
  %95 = load i64, i64* %intval226, align 8, !tbaa !29
  %conv227 = trunc i64 %95 to i32
  %96 = load %struct.tag_font_offsets_t*, %struct.tag_font_offsets_t** %offsets.addr, align 8, !tbaa !1
  %charstrings_off = getelementptr inbounds %struct.tag_font_offsets_t, %struct.tag_font_offsets_t* %96, i32 0, i32 5
  store i32 %conv227, i32* %charstrings_off, align 4, !tbaa !64
  br label %while.cond

sw.bb.228:                                        ; preds = %if.end
  %97 = load i32, i32* %op_i, align 4, !tbaa !23
  %sub229 = sub nsw i32 %97, 2
  store i32 %sub229, i32* %op_i, align 4, !tbaa !23
  %cmp230 = icmp slt i32 %sub229, 0
  br i1 %cmp230, label %if.then.232, label %if.end.233

if.then.232:                                      ; preds = %sw.bb.228
  store i32 -17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.458

if.end.233:                                       ; preds = %sw.bb.228
  %98 = load i32, i32* %op_i, align 4, !tbaa !23
  %idxprom234 = sext i32 %98 to i64
  %arrayidx235 = getelementptr inbounds [50 x %struct.ref_s], [50 x %struct.ref_s]* %ops, i32 0, i64 %idxprom234
  %tas236 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx235, i32 0, i32 0
  %type_attrs237 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas236, i32 0, i32 0
  %99 = bitcast i16* %type_attrs237 to i8*
  %arrayidx238 = getelementptr inbounds i8, i8* %99, i64 1
  %100 = load i8, i8* %arrayidx238, align 1, !tbaa !28
  %conv239 = zext i8 %100 to i32
  %cmp240 = icmp eq i32 %conv239, 11
  br i1 %cmp240, label %if.end.246, label %if.then.242

if.then.242:                                      ; preds = %if.end.233
  %101 = load i32, i32* %op_i, align 4, !tbaa !23
  %idxprom243 = sext i32 %101 to i64
  %arrayidx244 = getelementptr inbounds [50 x %struct.ref_s], [50 x %struct.ref_s]* %ops, i32 0, i64 %idxprom243
  %call245 = call i32 @check_type_failed(%struct.ref_s* %arrayidx244) #5
  store i32 %call245, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.458

if.end.246:                                       ; preds = %if.end.233
  %102 = load i32, i32* %op_i, align 4, !tbaa !23
  %add247 = add nsw i32 %102, 1
  %idxprom248 = sext i32 %add247 to i64
  %arrayidx249 = getelementptr inbounds [50 x %struct.ref_s], [50 x %struct.ref_s]* %ops, i32 0, i64 %idxprom248
  %tas250 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx249, i32 0, i32 0
  %type_attrs251 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas250, i32 0, i32 0
  %103 = bitcast i16* %type_attrs251 to i8*
  %arrayidx252 = getelementptr inbounds i8, i8* %103, i64 1
  %104 = load i8, i8* %arrayidx252, align 1, !tbaa !28
  %conv253 = zext i8 %104 to i32
  %cmp254 = icmp eq i32 %conv253, 11
  br i1 %cmp254, label %if.end.261, label %if.then.256

if.then.256:                                      ; preds = %if.end.246
  %105 = load i32, i32* %op_i, align 4, !tbaa !23
  %add257 = add nsw i32 %105, 1
  %idxprom258 = sext i32 %add257 to i64
  %arrayidx259 = getelementptr inbounds [50 x %struct.ref_s], [50 x %struct.ref_s]* %ops, i32 0, i64 %idxprom258
  %call260 = call i32 @check_type_failed(%struct.ref_s* %arrayidx259) #5
  store i32 %call260, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.458

if.end.261:                                       ; preds = %if.end.246
  %106 = load i32, i32* %op_i, align 4, !tbaa !23
  %idxprom262 = sext i32 %106 to i64
  %arrayidx263 = getelementptr inbounds [50 x %struct.ref_s], [50 x %struct.ref_s]* %ops, i32 0, i64 %idxprom262
  %value264 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx263, i32 0, i32 1
  %intval265 = bitcast %union.v* %value264 to i64*
  %107 = load i64, i64* %intval265, align 8, !tbaa !29
  %conv266 = trunc i64 %107 to i32
  %108 = load %struct.tag_font_offsets_t*, %struct.tag_font_offsets_t** %offsets.addr, align 8, !tbaa !1
  %private_size = getelementptr inbounds %struct.tag_font_offsets_t, %struct.tag_font_offsets_t* %108, i32 0, i32 7
  store i32 %conv266, i32* %private_size, align 4, !tbaa !61
  %109 = load i32, i32* %op_i, align 4, !tbaa !23
  %add267 = add nsw i32 %109, 1
  %idxprom268 = sext i32 %add267 to i64
  %arrayidx269 = getelementptr inbounds [50 x %struct.ref_s], [50 x %struct.ref_s]* %ops, i32 0, i64 %idxprom268
  %value270 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx269, i32 0, i32 1
  %intval271 = bitcast %union.v* %value270 to i64*
  %110 = load i64, i64* %intval271, align 8, !tbaa !29
  %conv272 = trunc i64 %110 to i32
  %111 = load %struct.tag_font_offsets_t*, %struct.tag_font_offsets_t** %offsets.addr, align 8, !tbaa !1
  %private_off = getelementptr inbounds %struct.tag_font_offsets_t, %struct.tag_font_offsets_t* %111, i32 0, i32 4
  store i32 %conv272, i32* %private_off, align 4, !tbaa !59
  br label %while.cond

sw.bb.273:                                        ; preds = %if.end
  %112 = load i32, i32* %op_i, align 4, !tbaa !23
  %dec274 = add nsw i32 %112, -1
  store i32 %dec274, i32* %op_i, align 4, !tbaa !23
  %cmp275 = icmp slt i32 %dec274, 0
  br i1 %cmp275, label %if.then.277, label %if.end.278

if.then.277:                                      ; preds = %sw.bb.273
  store i32 -17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.458

if.end.278:                                       ; preds = %sw.bb.273
  %113 = load i32, i32* %op_i, align 4, !tbaa !23
  %idxprom279 = sext i32 %113 to i64
  %arrayidx280 = getelementptr inbounds [50 x %struct.ref_s], [50 x %struct.ref_s]* %ops, i32 0, i64 %idxprom279
  %tas281 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx280, i32 0, i32 0
  %type_attrs282 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas281, i32 0, i32 0
  %114 = bitcast i16* %type_attrs282 to i8*
  %arrayidx283 = getelementptr inbounds i8, i8* %114, i64 1
  %115 = load i8, i8* %arrayidx283, align 1, !tbaa !28
  %conv284 = zext i8 %115 to i32
  %cmp285 = icmp eq i32 %conv284, 11
  br i1 %cmp285, label %if.end.291, label %if.then.287

if.then.287:                                      ; preds = %if.end.278
  %116 = load i32, i32* %op_i, align 4, !tbaa !23
  %idxprom288 = sext i32 %116 to i64
  %arrayidx289 = getelementptr inbounds [50 x %struct.ref_s], [50 x %struct.ref_s]* %ops, i32 0, i64 %idxprom288
  %call290 = call i32 @check_type_failed(%struct.ref_s* %arrayidx289) #5
  store i32 %call290, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.458

if.end.291:                                       ; preds = %if.end.278
  %117 = load i32, i32* %op_i, align 4, !tbaa !23
  %idxprom292 = sext i32 %117 to i64
  %arrayidx293 = getelementptr inbounds [50 x %struct.ref_s], [50 x %struct.ref_s]* %ops, i32 0, i64 %idxprom292
  %value294 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx293, i32 0, i32 1
  %intval295 = bitcast %union.v* %value294 to i64*
  %118 = load i64, i64* %intval295, align 8, !tbaa !29
  %conv296 = trunc i64 %118 to i32
  %119 = load %struct.tag_font_offsets_t*, %struct.tag_font_offsets_t** %offsets.addr, align 8, !tbaa !1
  %local_subrs_off = getelementptr inbounds %struct.tag_font_offsets_t, %struct.tag_font_offsets_t* %119, i32 0, i32 6
  store i32 %conv296, i32* %local_subrs_off, align 4, !tbaa !62
  br label %while.cond

sw.bb.297:                                        ; preds = %if.end
  store i32 142337, i32* %control, align 4, !tbaa !23
  br label %sw.epilog.341

sw.bb.298:                                        ; preds = %if.end
  store i32 142593, i32* %control, align 4, !tbaa !23
  br label %sw.epilog.341

sw.bb.299:                                        ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  br label %while.cond

sw.bb.300:                                        ; preds = %if.end
  %120 = load i32, i32* %op_i, align 4, !tbaa !23
  %cmp301 = icmp sge i32 %120, 50
  br i1 %cmp301, label %if.then.303, label %if.end.304

if.then.303:                                      ; preds = %sw.bb.300
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.458

if.end.304:                                       ; preds = %sw.bb.300
  %121 = load i32, i32* %op_i, align 4, !tbaa !23
  %idxprom305 = sext i32 %121 to i64
  %arrayidx306 = getelementptr inbounds [50 x %struct.ref_s], [50 x %struct.ref_s]* %ops, i32 0, i64 %idxprom305
  %122 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %123 = load i32, i32* %p, align 4, !tbaa !23
  %124 = load i32, i32* %pe.addr, align 4, !tbaa !23
  %call307 = call i32 @get_float(%struct.ref_s* %arrayidx306, %struct.tag_cff_data_t* %122, i32 %123, i32 %124) #5
  store i32 %call307, i32* %code, align 4, !tbaa !23
  %cmp308 = icmp slt i32 %call307, 0
  br i1 %cmp308, label %if.then.310, label %if.end.311

if.then.310:                                      ; preds = %if.end.304
  %125 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %125, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.458

if.end.311:                                       ; preds = %if.end.304
  %126 = load i32, i32* %op_i, align 4, !tbaa !23
  %inc312 = add nsw i32 %126, 1
  store i32 %inc312, i32* %op_i, align 4, !tbaa !23
  %127 = load i32, i32* %code, align 4, !tbaa !23
  %128 = load i32, i32* %p, align 4, !tbaa !23
  %add313 = add i32 %128, %127
  store i32 %add313, i32* %p, align 4, !tbaa !23
  br label %while.cond

sw.bb.314:                                        ; preds = %if.end, %if.end
  br label %while.cond

sw.default.315:                                   ; preds = %if.end
  %129 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %129) #1
  %130 = load i32, i32* %op_i, align 4, !tbaa !23
  %cmp316 = icmp sge i32 %130, 50
  br i1 %cmp316, label %if.then.318, label %if.end.319

if.then.318:                                      ; preds = %sw.default.315
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.338

if.end.319:                                       ; preds = %sw.default.315
  %131 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %132 = load i32, i32* %p, align 4, !tbaa !23
  %sub320 = sub i32 %132, 1
  %133 = load i32, i32* %pe.addr, align 4, !tbaa !23
  %call321 = call i32 @get_int(i32* %n, %struct.tag_cff_data_t* %131, i32 %sub320, i32 %133) #5
  store i32 %call321, i32* %code, align 4, !tbaa !23
  %cmp322 = icmp slt i32 %call321, 0
  br i1 %cmp322, label %if.then.324, label %if.end.325

if.then.324:                                      ; preds = %if.end.319
  %134 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %134, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.338

if.end.325:                                       ; preds = %if.end.319
  %135 = load i32, i32* %n, align 4, !tbaa !23
  %conv326 = sext i32 %135 to i64
  %136 = load i32, i32* %op_i, align 4, !tbaa !23
  %idxprom327 = sext i32 %136 to i64
  %arrayidx328 = getelementptr inbounds [50 x %struct.ref_s], [50 x %struct.ref_s]* %ops, i32 0, i64 %idxprom327
  %value329 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx328, i32 0, i32 1
  %intval330 = bitcast %union.v* %value329 to i64*
  store i64 %conv326, i64* %intval330, align 8, !tbaa !29
  %137 = load i32, i32* %op_i, align 4, !tbaa !23
  %idxprom331 = sext i32 %137 to i64
  %arrayidx332 = getelementptr inbounds [50 x %struct.ref_s], [50 x %struct.ref_s]* %ops, i32 0, i64 %idxprom331
  %tas333 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx332, i32 0, i32 0
  %type_attrs334 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas333, i32 0, i32 0
  store i16 2816, i16* %type_attrs334, align 2, !tbaa !20
  %138 = load i32, i32* %op_i, align 4, !tbaa !23
  %inc335 = add nsw i32 %138, 1
  store i32 %inc335, i32* %op_i, align 4, !tbaa !23
  %139 = load i32, i32* %code, align 4, !tbaa !23
  %sub336 = sub nsw i32 %139, 1
  %140 = load i32, i32* %p, align 4, !tbaa !23
  %add337 = add i32 %140, %sub336
  store i32 %add337, i32* %p, align 4, !tbaa !23
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.338

cleanup.338:                                      ; preds = %if.end.325, %if.then.324, %if.then.318
  %141 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #1
  %cleanup.dest.339 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.339, label %cleanup.458 [
    i32 0, label %cleanup.cont.340
  ]

cleanup.cont.340:                                 ; preds = %cleanup.338
  br label %while.cond

sw.epilog.341:                                    ; preds = %sw.bb.298, %sw.bb.297, %sw.bb.155, %sw.bb.154, %sw.epilog, %sw.bb.12, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb
  %142 = bitcast i32* %n_op to i8*
  call void @llvm.lifetime.start(i64 4, i8* %142) #1
  %143 = load i32, i32* %control, align 4, !tbaa !23
  %and = and i32 %143, 255
  store i32 %and, i32* %n_op, align 4, !tbaa !23
  %144 = bitcast i32* %string_id to i8*
  call void @llvm.lifetime.start(i64 4, i8* %144) #1
  %145 = load i32, i32* %control, align 4, !tbaa !23
  %shr = lshr i32 %145, 8
  %and342 = and i32 %shr, 255
  store i32 %and342, i32* %string_id, align 4, !tbaa !23
  %146 = bitcast %struct.ref_s* %arg343 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %146) #1
  %147 = bitcast %struct.ref_s** %dict to i8*
  call void @llvm.lifetime.start(i64 8, i8* %147) #1
  %148 = load i32, i32* %n_op, align 4, !tbaa !23
  %cmp344 = icmp eq i32 %148, 0
  br i1 %cmp344, label %if.then.346, label %if.else

if.then.346:                                      ; preds = %sw.epilog.341
  %149 = load i32, i32* %op_i, align 4, !tbaa !23
  store i32 %149, i32* %n_op, align 4, !tbaa !23
  br label %if.end.351

if.else:                                          ; preds = %sw.epilog.341
  %150 = load i32, i32* %op_i, align 4, !tbaa !23
  %151 = load i32, i32* %n_op, align 4, !tbaa !23
  %cmp347 = icmp ult i32 %150, %151
  br i1 %cmp347, label %if.then.349, label %if.end.350

if.then.349:                                      ; preds = %if.else
  store i32 -17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.452

if.end.350:                                       ; preds = %if.else
  br label %if.end.351

if.end.351:                                       ; preds = %if.end.350, %if.then.346
  %152 = load i32, i32* %control, align 4, !tbaa !23
  %and352 = and i32 %152, 1048576
  %tobool = icmp ne i32 %and352, 0
  br i1 %tobool, label %if.then.353, label %if.end.356

if.then.353:                                      ; preds = %if.end.351
  %arraydecay = getelementptr inbounds [50 x %struct.ref_s], [50 x %struct.ref_s]* %ops, i32 0, i32 0
  %153 = load i32, i32* %op_i, align 4, !tbaa !23
  %idx.ext = sext i32 %153 to i64
  %add.ptr = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arraydecay, i64 %idx.ext
  %154 = load i32, i32* %n_op, align 4, !tbaa !23
  %idx.ext354 = zext i32 %154 to i64
  %idx.neg = sub i64 0, %idx.ext354
  %add.ptr355 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %add.ptr, i64 %idx.neg
  %155 = load i32, i32* %n_op, align 4, !tbaa !23
  call void @undelta(%struct.ref_s* %add.ptr355, i32 %155) #5
  br label %if.end.356

if.end.356:                                       ; preds = %if.then.353, %if.end.351
  %156 = load i32, i32* %n_op, align 4, !tbaa !23
  %157 = load i32, i32* %op_i, align 4, !tbaa !23
  %sub357 = sub i32 %157, %156
  store i32 %sub357, i32* %op_i, align 4, !tbaa !23
  %158 = load i32, i32* %control, align 4, !tbaa !23
  %and358 = and i32 %158, 6553600
  %tobool359 = icmp ne i32 %and358, 0
  br i1 %tobool359, label %if.then.360, label %if.end.371

if.then.360:                                      ; preds = %if.end.356
  %159 = load i32, i32* %op_i, align 4, !tbaa !23
  %idxprom361 = sext i32 %159 to i64
  %arrayidx362 = getelementptr inbounds [50 x %struct.ref_s], [50 x %struct.ref_s]* %ops, i32 0, i64 %idxprom361
  %tas363 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx362, i32 0, i32 0
  %type_attrs364 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas363, i32 0, i32 0
  %160 = bitcast i16* %type_attrs364 to i8*
  %arrayidx365 = getelementptr inbounds i8, i8* %160, i64 1
  %161 = load i8, i8* %arrayidx365, align 1, !tbaa !28
  %conv366 = zext i8 %161 to i32
  %cmp367 = icmp eq i32 %conv366, 11
  br i1 %cmp367, label %if.end.370, label %if.then.369

if.then.369:                                      ; preds = %if.then.360
  store i32 -20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.452

if.end.370:                                       ; preds = %if.then.360
  br label %if.end.371

if.end.371:                                       ; preds = %if.end.370, %if.end.356
  %162 = load i32, i32* %control, align 4, !tbaa !23
  %and372 = and i32 %162, 4194304
  %tobool373 = icmp ne i32 %and372, 0
  br i1 %tobool373, label %if.then.374, label %if.end.385

if.then.374:                                      ; preds = %if.end.371
  %163 = load i32, i32* %op_i, align 4, !tbaa !23
  %idxprom375 = sext i32 %163 to i64
  %arrayidx376 = getelementptr inbounds [50 x %struct.ref_s], [50 x %struct.ref_s]* %ops, i32 0, i64 %idxprom375
  %value377 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx376, i32 0, i32 1
  %intval378 = bitcast %union.v* %value377 to i64*
  %164 = load i64, i64* %intval378, align 8, !tbaa !29
  %tobool379 = icmp ne i64 %164, 0
  %lnot = xor i1 %tobool379, true
  %lnot380 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot380 to i32
  %conv381 = trunc i32 %lnot.ext to i16
  %value382 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arg343, i32 0, i32 1
  %boolval = bitcast %union.v* %value382 to i16*
  store i16 %conv381, i16* %boolval, align 2, !tbaa !47
  %tas383 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arg343, i32 0, i32 0
  %type_attrs384 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas383, i32 0, i32 0
  store i16 256, i16* %type_attrs384, align 2, !tbaa !20
  br label %if.end.385

if.end.385:                                       ; preds = %if.then.374, %if.end.371
  %165 = load i32, i32* %control, align 4, !tbaa !23
  %and386 = and i32 %165, 262144
  %tobool387 = icmp ne i32 %and386, 0
  br i1 %tobool387, label %if.then.388, label %if.end.399

if.then.388:                                      ; preds = %if.end.385
  %166 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %167 = load %struct.tag_cff_index_t*, %struct.tag_cff_index_t** %strings.addr, align 8, !tbaa !1
  %168 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %169 = load i32, i32* %op_i, align 4, !tbaa !23
  %idxprom389 = sext i32 %169 to i64
  %arrayidx390 = getelementptr inbounds [50 x %struct.ref_s], [50 x %struct.ref_s]* %ops, i32 0, i64 %idxprom389
  %value391 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx390, i32 0, i32 1
  %intval392 = bitcast %union.v* %value391 to i64*
  %170 = load i64, i64* %intval392, align 8, !tbaa !29
  %conv393 = trunc i64 %170 to i32
  %call394 = call i32 @make_string_from_sid(%struct.gs_context_state_s* %166, %struct.ref_s* %arg343, %struct.tag_cff_index_t* %167, %struct.tag_cff_data_t* %168, i32 %conv393) #5
  store i32 %call394, i32* %code, align 4, !tbaa !23
  %cmp395 = icmp slt i32 %call394, 0
  br i1 %cmp395, label %if.then.397, label %if.end.398

if.then.397:                                      ; preds = %if.then.388
  %171 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %171, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.452

if.end.398:                                       ; preds = %if.then.388
  br label %if.end.399

if.end.399:                                       ; preds = %if.end.398, %if.end.385
  %172 = load i32, i32* %control, align 4, !tbaa !23
  %and400 = and i32 %172, 524288
  %tobool401 = icmp ne i32 %and400, 0
  br i1 %tobool401, label %if.then.402, label %if.end.416

if.then.402:                                      ; preds = %if.end.399
  %173 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory403 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %173, i32 0, i32 1
  %current404 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory403, i32 0, i32 0
  %174 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current404, align 8, !tbaa !40
  %175 = load i32, i32* %n_op, align 4, !tbaa !23
  %call405 = call i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s* %174, %struct.ref_s* %arg343, i32 96, i32 %175, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i32 0, i32 0)) #5
  store i32 %call405, i32* %code, align 4, !tbaa !23
  %cmp406 = icmp slt i32 %call405, 0
  br i1 %cmp406, label %if.then.408, label %if.end.409

if.then.408:                                      ; preds = %if.then.402
  %176 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %176, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.452

if.end.409:                                       ; preds = %if.then.402
  %value410 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arg343, i32 0, i32 1
  %refs = bitcast %union.v* %value410 to %struct.ref_s**
  %177 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %178 = bitcast %struct.ref_s* %177 to i8*
  %arraydecay411 = getelementptr inbounds [50 x %struct.ref_s], [50 x %struct.ref_s]* %ops, i32 0, i32 0
  %179 = load i32, i32* %op_i, align 4, !tbaa !23
  %idx.ext412 = sext i32 %179 to i64
  %add.ptr413 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arraydecay411, i64 %idx.ext412
  %180 = bitcast %struct.ref_s* %add.ptr413 to i8*
  %181 = load i32, i32* %n_op, align 4, !tbaa !23
  %conv414 = zext i32 %181 to i64
  %mul = mul i64 %conv414, 16
  %call415 = call i8* @memcpy(i8* %178, i8* %180, i64 %mul) #6
  br label %if.end.416

if.end.416:                                       ; preds = %if.end.409, %if.end.399
  %182 = load i32, i32* %control, align 4, !tbaa !23
  %and417 = and i32 %182, 131072
  %tobool418 = icmp ne i32 %and417, 0
  br i1 %tobool418, label %if.then.419, label %if.else.425

if.then.419:                                      ; preds = %if.end.416
  %183 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %184 = load %struct.ref_s*, %struct.ref_s** %topdict.addr, align 8, !tbaa !1
  %call420 = call i32 @find_font_dict(%struct.gs_context_state_s* %183, %struct.ref_s* %184, %struct.ref_s** %privatedict, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0)) #5
  store i32 %call420, i32* %code, align 4, !tbaa !23
  %cmp421 = icmp slt i32 %call420, 0
  br i1 %cmp421, label %if.then.423, label %if.end.424

if.then.423:                                      ; preds = %if.then.419
  %185 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %185, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.452

if.end.424:                                       ; preds = %if.then.419
  %186 = load %struct.ref_s*, %struct.ref_s** %privatedict, align 8, !tbaa !1
  store %struct.ref_s* %186, %struct.ref_s** %dict, align 8, !tbaa !1
  br label %if.end.436

if.else.425:                                      ; preds = %if.end.416
  %187 = load i32, i32* %control, align 4, !tbaa !23
  %and426 = and i32 %187, 65536
  %tobool427 = icmp ne i32 %and426, 0
  br i1 %tobool427, label %if.then.428, label %if.else.434

if.then.428:                                      ; preds = %if.else.425
  %188 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %189 = load %struct.ref_s*, %struct.ref_s** %topdict.addr, align 8, !tbaa !1
  %call429 = call i32 @find_font_dict(%struct.gs_context_state_s* %188, %struct.ref_s* %189, %struct.ref_s** %fontinfodict, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0)) #5
  store i32 %call429, i32* %code, align 4, !tbaa !23
  %cmp430 = icmp slt i32 %call429, 0
  br i1 %cmp430, label %if.then.432, label %if.end.433

if.then.432:                                      ; preds = %if.then.428
  %190 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %190, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.452

if.end.433:                                       ; preds = %if.then.428
  %191 = load %struct.ref_s*, %struct.ref_s** %fontinfodict, align 8, !tbaa !1
  store %struct.ref_s* %191, %struct.ref_s** %dict, align 8, !tbaa !1
  br label %if.end.435

if.else.434:                                      ; preds = %if.else.425
  %192 = load %struct.ref_s*, %struct.ref_s** %topdict.addr, align 8, !tbaa !1
  store %struct.ref_s* %192, %struct.ref_s** %dict, align 8, !tbaa !1
  br label %if.end.435

if.end.435:                                       ; preds = %if.else.434, %if.end.433
  br label %if.end.436

if.end.436:                                       ; preds = %if.end.435, %if.end.424
  %193 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %194 = load %struct.ref_s*, %struct.ref_s** %dict, align 8, !tbaa !1
  %195 = load i32, i32* %string_id, align 4, !tbaa !23
  %idxprom437 = zext i32 %195 to i64
  %arrayidx438 = getelementptr inbounds [48 x i8*], [48 x i8*]* @font_keys, i32 0, i64 %idxprom437
  %196 = load i8*, i8** %arrayidx438, align 8, !tbaa !1
  %197 = load i32, i32* %string_id, align 4, !tbaa !23
  %idxprom439 = zext i32 %197 to i64
  %arrayidx440 = getelementptr inbounds [48 x i16], [48 x i16]* @font_keys_sz, i32 0, i64 %idxprom439
  %198 = load i16, i16* %arrayidx440, align 2, !tbaa !47
  %conv441 = sext i16 %198 to i32
  %199 = load i32, i32* %control, align 4, !tbaa !23
  %and442 = and i32 %199, 4980736
  %cmp443 = icmp eq i32 %and442, 0
  br i1 %cmp443, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.436
  %200 = load i32, i32* %op_i, align 4, !tbaa !23
  %idxprom445 = sext i32 %200 to i64
  %arrayidx446 = getelementptr inbounds [50 x %struct.ref_s], [50 x %struct.ref_s]* %ops, i32 0, i64 %idxprom445
  br label %cond.end

cond.false:                                       ; preds = %if.end.436
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.ref_s* [ %arrayidx446, %cond.true ], [ %arg343, %cond.false ]
  %call447 = call i32 @idict_put_c_name(%struct.gs_context_state_s* %193, %struct.ref_s* %194, i8* %196, i32 %conv441, %struct.ref_s* %cond) #5
  store i32 %call447, i32* %code, align 4, !tbaa !23
  %201 = load i32, i32* %code, align 4, !tbaa !23
  %cmp448 = icmp slt i32 %201, 0
  br i1 %cmp448, label %if.then.450, label %if.end.451

if.then.450:                                      ; preds = %cond.end
  %202 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %202, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.452

if.end.451:                                       ; preds = %cond.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.452

cleanup.452:                                      ; preds = %if.end.451, %if.then.450, %if.then.432, %if.then.423, %if.then.408, %if.then.397, %if.then.369, %if.then.349
  %203 = bitcast %struct.ref_s** %dict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %203) #1
  %204 = bitcast %struct.ref_s* %arg343 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %204) #1
  %205 = bitcast i32* %string_id to i8*
  call void @llvm.lifetime.end(i64 4, i8* %205) #1
  %206 = bitcast i32* %n_op to i8*
  call void @llvm.lifetime.end(i64 4, i8* %206) #1
  %cleanup.dest.456 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.456, label %cleanup.458 [
    i32 0, label %cleanup.cont.457
  ]

cleanup.cont.457:                                 ; preds = %cleanup.452
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.458

cleanup.458:                                      ; preds = %while.end, %cleanup.452, %cleanup.338, %if.then.310, %if.then.303, %if.then.287, %if.then.277, %if.then.256, %if.then.242, %if.then.232, %if.then.218, %if.then.208, %if.then.194, %if.then.184, %if.then.170, %if.then.160, %if.then.143, %if.then.133, %if.then.119, %if.then.109, %cleanup, %if.then.20, %if.then.15, %if.then
  %207 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %207) #1
  %208 = bitcast i32* %control to i8*
  call void @llvm.lifetime.end(i64 4, i8* %208) #1
  %209 = bitcast i32* %p to i8*
  call void @llvm.lifetime.end(i64 4, i8* %209) #1
  %210 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %210) #1
  %211 = bitcast i32* %op_i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %211) #1
  %212 = bitcast [50 x %struct.ref_s]* %ops to i8*
  call void @llvm.lifetime.end(i64 800, i8* %212) #1
  %213 = bitcast %struct.ref_s* %arg to i8*
  call void @llvm.lifetime.end(i64 16, i8* %213) #1
  %214 = bitcast %struct.ref_s** %privatedict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %214) #1
  %215 = bitcast %struct.ref_s** %fontinfodict to i8*
  call void @llvm.lifetime.end(i64 8, i8* %215) #1
  %216 = load i32, i32* %retval
  ret i32 %216
}

; Function Attrs: nounwind uwtable
define internal i32 @find_font_dict(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %topdict, %struct.ref_s** %fontdict, i8* %key) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %topdict.addr = alloca %struct.ref_s*, align 8
  %fontdict.addr = alloca %struct.ref_s**, align 8
  %key.addr = alloca i8*, align 8
  %code = alloca i32, align 4
  %val = alloca %struct.ref_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %topdict, %struct.ref_s** %topdict.addr, align 8, !tbaa !1
  store %struct.ref_s** %fontdict, %struct.ref_s*** %fontdict.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.ref_s* %val to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #1
  %2 = load %struct.ref_s**, %struct.ref_s*** %fontdict.addr, align 8, !tbaa !1
  %3 = load %struct.ref_s*, %struct.ref_s** %2, align 8, !tbaa !1
  %tobool = icmp ne %struct.ref_s* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.ref_s*, %struct.ref_s** %topdict.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %6 = load %struct.ref_s**, %struct.ref_s*** %fontdict.addr, align 8, !tbaa !1
  %call = call i32 @dict_find_string(%struct.ref_s* %4, i8* %5, %struct.ref_s** %6) #5
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.2:                                         ; preds = %if.end
  %7 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %7, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %8 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !40
  %call3 = call i32 @dict_alloc(%struct.gs_ref_memory_s* %8, i32 8, %struct.ref_s* %val) #5
  store i32 %call3, i32* %code, align 4, !tbaa !23
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.2
  %9 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end.2
  %10 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %11 = load %struct.ref_s*, %struct.ref_s** %topdict.addr, align 8, !tbaa !1
  %12 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %13 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %call7 = call i64 @strlen(i8* %13) #7
  %conv = trunc i64 %call7 to i32
  %call8 = call i32 @idict_put_c_name(%struct.gs_context_state_s* %10, %struct.ref_s* %11, i8* %12, i32 %conv, %struct.ref_s* %val) #5
  store i32 %call8, i32* %code, align 4, !tbaa !23
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.6
  %14 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end.6
  %15 = load %struct.ref_s*, %struct.ref_s** %topdict.addr, align 8, !tbaa !1
  %16 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %17 = load %struct.ref_s**, %struct.ref_s*** %fontdict.addr, align 8, !tbaa !1
  %call13 = call i32 @dict_find_string(%struct.ref_s* %15, i8* %16, %struct.ref_s** %17) #5
  store i32 %call13, i32* %code, align 4, !tbaa !23
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.12
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.end.12
  %18 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.17, %if.then.16, %if.then.11, %if.then.5, %if.then.1, %if.then
  %19 = bitcast %struct.ref_s* %val to i8*
  call void @llvm.lifetime.end(i64 16, i8* %19) #1
  %20 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @idict_put_c_name(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %dst, i8* %c_name, i32 %len, %struct.ref_s* %src) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %dst.addr = alloca %struct.ref_s*, align 8
  %c_name.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %src.addr = alloca %struct.ref_s*, align 8
  %code = alloca i32, align 4
  %ps_name = alloca %struct.ref_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %dst, %struct.ref_s** %dst.addr, align 8, !tbaa !1
  store i8* %c_name, i8** %c_name.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !23
  store %struct.ref_s* %src, %struct.ref_s** %src.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.ref_s* %ps_name to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #1
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %2, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %3 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !40
  %4 = bitcast %struct.gs_ref_memory_s* %3 to %struct.gs_memory_s*
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 2
  %5 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !51
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %5, i32 0, i32 16
  %6 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !54
  %7 = load i8*, i8** %c_name.addr, align 8, !tbaa !1
  %8 = load i32, i32* %len.addr, align 4, !tbaa !23
  %call = call i32 @names_ref(%struct.name_table_s* %6, i8* %7, i32 %8, %struct.ref_s* %ps_name, i32 0) #5
  store i32 %call, i32* %code, align 4, !tbaa !23
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.ref_s*, %struct.ref_s** %dst.addr, align 8, !tbaa !1
  %11 = load %struct.ref_s*, %struct.ref_s** %src.addr, align 8, !tbaa !1
  %12 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %12, i32 0, i32 24
  %call1 = call i32 @dict_put(%struct.ref_s* %10, %struct.ref_s* %ps_name, %struct.ref_s* %11, %struct.dict_stack_s* %dict_stack) #5
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %13 = bitcast %struct.ref_s* %ps_name to i8*
  call void @llvm.lifetime.end(i64 16, i8* %13) #1
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @iso_adobe_charset_proc(%struct.tag_cff_data_t* %data, i32 %p, i32 %pe, i32 %i) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca %struct.tag_cff_data_t*, align 8
  %p.addr = alloca i32, align 4
  %pe.addr = alloca i32, align 4
  %i.addr = alloca i32, align 4
  store %struct.tag_cff_data_t* %data, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  store i32 %p, i32* %p.addr, align 4, !tbaa !23
  store i32 %pe, i32* %pe.addr, align 4, !tbaa !23
  store i32 %i, i32* %i.addr, align 4, !tbaa !23
  %0 = load i32, i32* %i.addr, align 4, !tbaa !23
  %cmp = icmp ult i32 %0, 228
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %i.addr, align 4, !tbaa !23
  %add = add i32 %1, 1
  store i32 %add, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  store i32 -15, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %retval
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal i32 @expert_charset_proc(%struct.tag_cff_data_t* %data, i32 %p, i32 %pe, i32 %i) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca %struct.tag_cff_data_t*, align 8
  %p.addr = alloca i32, align 4
  %pe.addr = alloca i32, align 4
  %i.addr = alloca i32, align 4
  store %struct.tag_cff_data_t* %data, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  store i32 %p, i32* %p.addr, align 4, !tbaa !23
  store i32 %pe, i32* %pe.addr, align 4, !tbaa !23
  store i32 %i, i32* %i.addr, align 4, !tbaa !23
  %0 = load i32, i32* %i.addr, align 4, !tbaa !23
  %conv = zext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 165
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %i.addr, align 4, !tbaa !23
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [165 x i16], [165 x i16]* @expert_charset, i32 0, i64 %idxprom
  %2 = load i16, i16* %arrayidx, align 2, !tbaa !47
  %conv2 = zext i16 %2 to i32
  store i32 %conv2, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  store i32 -15, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @expert_subset_charset_proc(%struct.tag_cff_data_t* %data, i32 %p, i32 %pe, i32 %i) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca %struct.tag_cff_data_t*, align 8
  %p.addr = alloca i32, align 4
  %pe.addr = alloca i32, align 4
  %i.addr = alloca i32, align 4
  store %struct.tag_cff_data_t* %data, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  store i32 %p, i32* %p.addr, align 4, !tbaa !23
  store i32 %pe, i32* %pe.addr, align 4, !tbaa !23
  store i32 %i, i32* %i.addr, align 4, !tbaa !23
  %0 = load i32, i32* %i.addr, align 4, !tbaa !23
  %conv = zext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 86
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %i.addr, align 4, !tbaa !23
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [86 x i16], [86 x i16]* @expert_subset_charset, i32 0, i64 %idxprom
  %2 = load i16, i16* %arrayidx, align 2, !tbaa !47
  %conv2 = zext i16 %2 to i32
  store i32 %conv2, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  store i32 -15, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @format0_charset_proc(%struct.tag_cff_data_t* %data, i32 %p, i32 %pe, i32 %i) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca %struct.tag_cff_data_t*, align 8
  %p.addr = alloca i32, align 4
  %pe.addr = alloca i32, align 4
  %i.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %u = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.tag_cff_data_t* %data, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  store i32 %p, i32* %p.addr, align 4, !tbaa !23
  store i32 %pe, i32* %pe.addr, align 4, !tbaa !23
  store i32 %i, i32* %i.addr, align 4, !tbaa !23
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %u to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %3 = load i32, i32* %p.addr, align 4, !tbaa !23
  %4 = load i32, i32* %i.addr, align 4, !tbaa !23
  %mul = mul i32 2, %4
  %add = add i32 %3, %mul
  %5 = load i32, i32* %pe.addr, align 4, !tbaa !23
  %call = call i32 @card16(i32* %u, %struct.tag_cff_data_t* %2, i32 %add, i32 %5) #5
  store i32 %call, i32* %code, align 4, !tbaa !23
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load i32, i32* %u, align 4, !tbaa !23
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %8 = bitcast i32* %u to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @format1_charset_proc(%struct.tag_cff_data_t* %data, i32 %p, i32 %pe, i32 %i) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca %struct.tag_cff_data_t*, align 8
  %p.addr = alloca i32, align 4
  %pe.addr = alloca i32, align 4
  %i.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %cid = alloca i32, align 4
  %first = alloca i32, align 4
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.tag_cff_data_t* %data, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  store i32 %p, i32* %p.addr, align 4, !tbaa !23
  store i32 %pe, i32* %pe.addr, align 4, !tbaa !23
  store i32 %i, i32* %i.addr, align 4, !tbaa !23
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %cid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %cid, align 4, !tbaa !23
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %entry
  %2 = load i32, i32* %p.addr, align 4, !tbaa !23
  %3 = load i32, i32* %pe.addr, align 4, !tbaa !23
  %sub = sub i32 %3, 3
  %cmp = icmp ult i32 %2, %sub
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = bitcast i32* %first to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %7 = load i32, i32* %p.addr, align 4, !tbaa !23
  %8 = load i32, i32* %pe.addr, align 4, !tbaa !23
  %call = call i32 @card16(i32* %first, %struct.tag_cff_data_t* %6, i32 %7, i32 %8) #5
  store i32 %call, i32* %code, align 4, !tbaa !23
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %9 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %while.body
  %10 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %11 = load i32, i32* %p.addr, align 4, !tbaa !23
  %add = add i32 %11, 2
  %12 = load i32, i32* %pe.addr, align 4, !tbaa !23
  %call2 = call i32 @card8(i32* %count, %struct.tag_cff_data_t* %10, i32 %add, i32 %12) #5
  store i32 %call2, i32* %code, align 4, !tbaa !23
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %13 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %14 = load i32, i32* %count, align 4, !tbaa !23
  %inc = add i32 %14, 1
  store i32 %inc, i32* %count, align 4, !tbaa !23
  %15 = load i32, i32* %i.addr, align 4, !tbaa !23
  %16 = load i32, i32* %cid, align 4, !tbaa !23
  %17 = load i32, i32* %count, align 4, !tbaa !23
  %add6 = add i32 %16, %17
  %cmp7 = icmp ult i32 %15, %add6
  br i1 %cmp7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.end.5
  %18 = load i32, i32* %first, align 4, !tbaa !23
  %19 = load i32, i32* %i.addr, align 4, !tbaa !23
  %add9 = add i32 %18, %19
  %20 = load i32, i32* %cid, align 4, !tbaa !23
  %sub10 = sub i32 %add9, %20
  store i32 %sub10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end.5
  %21 = load i32, i32* %p.addr, align 4, !tbaa !23
  %add12 = add i32 %21, 3
  store i32 %add12, i32* %p.addr, align 4, !tbaa !23
  %22 = load i32, i32* %count, align 4, !tbaa !23
  %23 = load i32, i32* %cid, align 4, !tbaa !23
  %add13 = add i32 %23, %22
  store i32 %add13, i32* %cid, align 4, !tbaa !23
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.then.8, %if.then.4, %if.then
  %24 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast i32* %first to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.15 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.15

cleanup.15:                                       ; preds = %while.end, %cleanup
  %26 = bitcast i32* %cid to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal i32 @format2_charset_proc(%struct.tag_cff_data_t* %data, i32 %p, i32 %pe, i32 %i) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca %struct.tag_cff_data_t*, align 8
  %p.addr = alloca i32, align 4
  %pe.addr = alloca i32, align 4
  %i.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %cid = alloca i32, align 4
  %first = alloca i32, align 4
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.tag_cff_data_t* %data, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  store i32 %p, i32* %p.addr, align 4, !tbaa !23
  store i32 %pe, i32* %pe.addr, align 4, !tbaa !23
  store i32 %i, i32* %i.addr, align 4, !tbaa !23
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %cid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %cid, align 4, !tbaa !23
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %entry
  %2 = load i32, i32* %p.addr, align 4, !tbaa !23
  %3 = load i32, i32* %pe.addr, align 4, !tbaa !23
  %sub = sub i32 %3, 4
  %cmp = icmp ult i32 %2, %sub
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = bitcast i32* %first to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %7 = load i32, i32* %p.addr, align 4, !tbaa !23
  %8 = load i32, i32* %pe.addr, align 4, !tbaa !23
  %call = call i32 @card16(i32* %first, %struct.tag_cff_data_t* %6, i32 %7, i32 %8) #5
  store i32 %call, i32* %code, align 4, !tbaa !23
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %9 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %while.body
  %10 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %11 = load i32, i32* %p.addr, align 4, !tbaa !23
  %add = add i32 %11, 2
  %12 = load i32, i32* %pe.addr, align 4, !tbaa !23
  %call2 = call i32 @card16(i32* %count, %struct.tag_cff_data_t* %10, i32 %add, i32 %12) #5
  store i32 %call2, i32* %code, align 4, !tbaa !23
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %13 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %14 = load i32, i32* %count, align 4, !tbaa !23
  %inc = add i32 %14, 1
  store i32 %inc, i32* %count, align 4, !tbaa !23
  %15 = load i32, i32* %i.addr, align 4, !tbaa !23
  %16 = load i32, i32* %cid, align 4, !tbaa !23
  %17 = load i32, i32* %count, align 4, !tbaa !23
  %add6 = add i32 %16, %17
  %cmp7 = icmp ult i32 %15, %add6
  br i1 %cmp7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.end.5
  %18 = load i32, i32* %first, align 4, !tbaa !23
  %19 = load i32, i32* %i.addr, align 4, !tbaa !23
  %add9 = add i32 %18, %19
  %20 = load i32, i32* %cid, align 4, !tbaa !23
  %sub10 = sub i32 %add9, %20
  store i32 %sub10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end.5
  %21 = load i32, i32* %p.addr, align 4, !tbaa !23
  %add12 = add i32 %21, 4
  store i32 %add12, i32* %p.addr, align 4, !tbaa !23
  %22 = load i32, i32* %count, align 4, !tbaa !23
  %23 = load i32, i32* %cid, align 4, !tbaa !23
  %add13 = add i32 %23, %22
  store i32 %add13, i32* %cid, align 4, !tbaa !23
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.11, %if.then.8, %if.then.4, %if.then
  %24 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast i32* %first to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.15 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.15

cleanup.15:                                       ; preds = %while.end, %cleanup
  %26 = bitcast i32* %cid to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = load i32, i32* %retval
  ret i32 %28
}

declare i32 @dict_find(%struct.ref_s*, %struct.ref_s*, %struct.ref_s**) #2

; Function Attrs: nounwind uwtable
define internal i32 @set_defaults(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %dest, %struct.tag_font_defaults* %def, i32 %count) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %dest.addr = alloca %struct.ref_s*, align 8
  %def.addr = alloca %struct.tag_font_defaults*, align 8
  %count.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %name = alloca %struct.ref_s, align 8
  %dummy = alloca %struct.ref_s*, align 8
  %value = alloca %struct.ref_s, align 8
  %code = alloca i32, align 4
  %xx = alloca float, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %dest, %struct.ref_s** %dest.addr, align 8, !tbaa !1
  store %struct.tag_font_defaults* %def, %struct.tag_font_defaults** %def.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !23
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !23
  %2 = load i32, i32* %count.addr, align 4, !tbaa !23
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = bitcast %struct.ref_s* %name to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = bitcast %struct.ref_s** %dummy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast %struct.ref_s* %value to i8*
  call void @llvm.lifetime.start(i64 16, i8* %5) #1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast float* %xx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %8, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %9 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !40
  %10 = bitcast %struct.gs_ref_memory_s* %9 to %struct.gs_memory_s*
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %10, i32 0, i32 2
  %11 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !51
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %11, i32 0, i32 16
  %12 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !54
  %13 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.tag_font_defaults*, %struct.tag_font_defaults** %def.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.tag_font_defaults, %struct.tag_font_defaults* %14, i64 %idxprom
  %key = getelementptr inbounds %struct.tag_font_defaults, %struct.tag_font_defaults* %arrayidx, i32 0, i32 0
  %15 = load i16, i16* %key, align 2, !tbaa !71
  %idxprom1 = zext i16 %15 to i64
  %arrayidx2 = getelementptr inbounds [48 x i8*], [48 x i8*]* @font_keys, i32 0, i64 %idxprom1
  %16 = load i8*, i8** %arrayidx2, align 8, !tbaa !1
  %17 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom3 = sext i32 %17 to i64
  %18 = load %struct.tag_font_defaults*, %struct.tag_font_defaults** %def.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds %struct.tag_font_defaults, %struct.tag_font_defaults* %18, i64 %idxprom3
  %key5 = getelementptr inbounds %struct.tag_font_defaults, %struct.tag_font_defaults* %arrayidx4, i32 0, i32 0
  %19 = load i16, i16* %key5, align 2, !tbaa !71
  %idxprom6 = zext i16 %19 to i64
  %arrayidx7 = getelementptr inbounds [48 x i16], [48 x i16]* @font_keys_sz, i32 0, i64 %idxprom6
  %20 = load i16, i16* %arrayidx7, align 2, !tbaa !47
  %conv = sext i16 %20 to i32
  %call = call i32 @names_ref(%struct.name_table_s* %12, i8* %16, i32 %conv, %struct.ref_s* %name, i32 0) #5
  store i32 %call, i32* %code, align 4, !tbaa !23
  %cmp8 = icmp slt i32 %call, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %21 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  %22 = load %struct.ref_s*, %struct.ref_s** %dest.addr, align 8, !tbaa !1
  %call10 = call i32 @dict_find(%struct.ref_s* %22, %struct.ref_s* %name, %struct.ref_s** %dummy) #5
  %cmp11 = icmp sle i32 %call10, 0
  br i1 %cmp11, label %if.then.13, label %if.end.151

if.then.13:                                       ; preds = %if.end
  %23 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom14 = sext i32 %23 to i64
  %24 = load %struct.tag_font_defaults*, %struct.tag_font_defaults** %def.addr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds %struct.tag_font_defaults, %struct.tag_font_defaults* %24, i64 %idxprom14
  %value16 = getelementptr inbounds %struct.tag_font_defaults, %struct.tag_font_defaults* %arrayidx15, i32 0, i32 1
  %25 = load i16, i16* %value16, align 2, !tbaa !73
  %conv17 = zext i16 %25 to i32
  switch i32 %conv17, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.19
    i32 2, label %sw.bb.24
    i32 3, label %sw.bb.29
    i32 4, label %sw.bb.34
    i32 5, label %sw.bb.39
    i32 6, label %sw.bb.44
    i32 7, label %sw.bb.49
    i32 8, label %sw.bb.53
    i32 9, label %sw.bb.58
    i32 10, label %sw.bb.62
    i32 11, label %sw.bb.91
    i32 12, label %sw.bb.92
    i32 13, label %sw.bb.138
  ]

sw.default:                                       ; preds = %if.then.13
  br label %sw.bb

sw.bb:                                            ; preds = %if.then.13, %sw.default
  %value18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value, i32 0, i32 1
  %intval = bitcast %union.v* %value18 to i64*
  store i64 0, i64* %intval, align 8, !tbaa !29
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 2816, i16* %type_attrs, align 2, !tbaa !20
  br label %sw.epilog

sw.bb.19:                                         ; preds = %if.then.13
  %value20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value, i32 0, i32 1
  %intval21 = bitcast %union.v* %value20 to i64*
  store i64 1, i64* %intval21, align 8, !tbaa !29
  %tas22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value, i32 0, i32 0
  %type_attrs23 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas22, i32 0, i32 0
  store i16 2816, i16* %type_attrs23, align 2, !tbaa !20
  br label %sw.epilog

sw.bb.24:                                         ; preds = %if.then.13
  %value25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value, i32 0, i32 1
  %intval26 = bitcast %union.v* %value25 to i64*
  store i64 2, i64* %intval26, align 8, !tbaa !29
  %tas27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value, i32 0, i32 0
  %type_attrs28 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas27, i32 0, i32 0
  store i16 2816, i16* %type_attrs28, align 2, !tbaa !20
  br label %sw.epilog

sw.bb.29:                                         ; preds = %if.then.13
  %value30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value, i32 0, i32 1
  %intval31 = bitcast %union.v* %value30 to i64*
  store i64 7, i64* %intval31, align 8, !tbaa !29
  %tas32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value, i32 0, i32 0
  %type_attrs33 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas32, i32 0, i32 0
  store i16 2816, i16* %type_attrs33, align 2, !tbaa !20
  br label %sw.epilog

sw.bb.34:                                         ; preds = %if.then.13
  %value35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value, i32 0, i32 1
  %intval36 = bitcast %union.v* %value35 to i64*
  store i64 50, i64* %intval36, align 8, !tbaa !29
  %tas37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value, i32 0, i32 0
  %type_attrs38 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas37, i32 0, i32 0
  store i16 2816, i16* %type_attrs38, align 2, !tbaa !20
  br label %sw.epilog

sw.bb.39:                                         ; preds = %if.then.13
  %value40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value, i32 0, i32 1
  %intval41 = bitcast %union.v* %value40 to i64*
  store i64 -100, i64* %intval41, align 8, !tbaa !29
  %tas42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value, i32 0, i32 0
  %type_attrs43 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas42, i32 0, i32 0
  store i16 2816, i16* %type_attrs43, align 2, !tbaa !20
  br label %sw.epilog

sw.bb.44:                                         ; preds = %if.then.13
  %value45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value, i32 0, i32 1
  %intval46 = bitcast %union.v* %value45 to i64*
  store i64 8720, i64* %intval46, align 8, !tbaa !29
  %tas47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value, i32 0, i32 0
  %type_attrs48 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas47, i32 0, i32 0
  store i16 2816, i16* %type_attrs48, align 2, !tbaa !20
  br label %sw.epilog

sw.bb.49:                                         ; preds = %if.then.13
  %value50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value, i32 0, i32 1
  %realval = bitcast %union.v* %value50 to float*
  store float 0x3FA449BA60000000, float* %realval, align 4, !tbaa !24
  %tas51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value, i32 0, i32 0
  %type_attrs52 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas51, i32 0, i32 0
  store i16 4096, i16* %type_attrs52, align 2, !tbaa !20
  br label %sw.epilog

sw.bb.53:                                         ; preds = %if.then.13
  %value54 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value, i32 0, i32 1
  %realval55 = bitcast %union.v* %value54 to float*
  store float 0x3FAEB851E0000000, float* %realval55, align 4, !tbaa !24
  %tas56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value, i32 0, i32 0
  %type_attrs57 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas56, i32 0, i32 0
  store i16 4096, i16* %type_attrs57, align 2, !tbaa !20
  br label %sw.epilog

sw.bb.58:                                         ; preds = %if.then.13
  %value59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value, i32 0, i32 1
  %boolval = bitcast %union.v* %value59 to i16*
  store i16 0, i16* %boolval, align 2, !tbaa !47
  %tas60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value, i32 0, i32 0
  %type_attrs61 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas60, i32 0, i32 0
  store i16 256, i16* %type_attrs61, align 2, !tbaa !20
  br label %sw.epilog

sw.bb.62:                                         ; preds = %if.then.13
  %26 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory63 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %26, i32 0, i32 1
  %current64 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory63, i32 0, i32 0
  %27 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current64, align 8, !tbaa !40
  %call65 = call i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s* %27, %struct.ref_s* %value, i32 96, i32 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.464, i32 0, i32 0)) #5
  store i32 %call65, i32* %code, align 4, !tbaa !23
  %cmp66 = icmp slt i32 %call65, 0
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %sw.bb.62
  %28 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.69:                                        ; preds = %sw.bb.62
  %value70 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value, i32 0, i32 1
  %refs = bitcast %union.v* %value70 to %struct.ref_s**
  %29 = load %struct.ref_s*, %struct.ref_s** %refs, align 8, !tbaa !1
  %arrayidx71 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i64 0
  %value72 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx71, i32 0, i32 1
  %intval73 = bitcast %union.v* %value72 to i64*
  store i64 0, i64* %intval73, align 8, !tbaa !29
  %value74 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value, i32 0, i32 1
  %refs75 = bitcast %union.v* %value74 to %struct.ref_s**
  %30 = load %struct.ref_s*, %struct.ref_s** %refs75, align 8, !tbaa !1
  %arrayidx76 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i64 0
  %tas77 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx76, i32 0, i32 0
  %type_attrs78 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas77, i32 0, i32 0
  store i16 2816, i16* %type_attrs78, align 2, !tbaa !20
  %value79 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value, i32 0, i32 1
  %refs80 = bitcast %union.v* %value79 to %struct.ref_s**
  %31 = load %struct.ref_s*, %struct.ref_s** %refs80, align 8, !tbaa !1
  %arrayidx81 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 1
  %value82 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value, i32 0, i32 1
  %refs83 = bitcast %union.v* %value82 to %struct.ref_s**
  %32 = load %struct.ref_s*, %struct.ref_s** %refs83, align 8, !tbaa !1
  %arrayidx84 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i64 2
  %value85 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value, i32 0, i32 1
  %refs86 = bitcast %union.v* %value85 to %struct.ref_s**
  %33 = load %struct.ref_s*, %struct.ref_s** %refs86, align 8, !tbaa !1
  %arrayidx87 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 3
  %value88 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value, i32 0, i32 1
  %refs89 = bitcast %union.v* %value88 to %struct.ref_s**
  %34 = load %struct.ref_s*, %struct.ref_s** %refs89, align 8, !tbaa !1
  %arrayidx90 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i64 0
  %35 = bitcast %struct.ref_s* %arrayidx87 to i8*
  %36 = bitcast %struct.ref_s* %arrayidx90 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 16, i32 8, i1 false), !tbaa.struct !46
  %37 = bitcast %struct.ref_s* %arrayidx84 to i8*
  %38 = bitcast %struct.ref_s* %arrayidx87 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 16, i32 8, i1 false), !tbaa.struct !46
  %39 = bitcast %struct.ref_s* %arrayidx81 to i8*
  %40 = bitcast %struct.ref_s* %arrayidx84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 16, i32 8, i1 false), !tbaa.struct !46
  br label %sw.epilog

sw.bb.91:                                         ; preds = %if.then.13
  store float 0x3F50624DE0000000, float* %xx, align 4, !tbaa !24
  br label %make_matrix

sw.bb.92:                                         ; preds = %if.then.13
  store float 1.000000e+00, float* %xx, align 4, !tbaa !24
  br label %make_matrix

make_matrix:                                      ; preds = %sw.bb.92, %sw.bb.91
  %41 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory93 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %41, i32 0, i32 1
  %current94 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory93, i32 0, i32 0
  %42 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current94, align 8, !tbaa !40
  %call95 = call i32 @gs_alloc_ref_array(%struct.gs_ref_memory_s* %42, %struct.ref_s* %value, i32 96, i32 6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.464, i32 0, i32 0)) #5
  store i32 %call95, i32* %code, align 4, !tbaa !23
  %cmp96 = icmp slt i32 %call95, 0
  br i1 %cmp96, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %make_matrix
  %43 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %43, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.99:                                        ; preds = %make_matrix
  %44 = load float, float* %xx, align 4, !tbaa !24
  %value100 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value, i32 0, i32 1
  %refs101 = bitcast %union.v* %value100 to %struct.ref_s**
  %45 = load %struct.ref_s*, %struct.ref_s** %refs101, align 8, !tbaa !1
  %arrayidx102 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i64 0
  %value103 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx102, i32 0, i32 1
  %realval104 = bitcast %union.v* %value103 to float*
  store float %44, float* %realval104, align 4, !tbaa !24
  %value105 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value, i32 0, i32 1
  %refs106 = bitcast %union.v* %value105 to %struct.ref_s**
  %46 = load %struct.ref_s*, %struct.ref_s** %refs106, align 8, !tbaa !1
  %arrayidx107 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i64 0
  %tas108 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx107, i32 0, i32 0
  %type_attrs109 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas108, i32 0, i32 0
  store i16 4096, i16* %type_attrs109, align 2, !tbaa !20
  %value110 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value, i32 0, i32 1
  %refs111 = bitcast %union.v* %value110 to %struct.ref_s**
  %47 = load %struct.ref_s*, %struct.ref_s** %refs111, align 8, !tbaa !1
  %arrayidx112 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i64 3
  %value113 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value, i32 0, i32 1
  %refs114 = bitcast %union.v* %value113 to %struct.ref_s**
  %48 = load %struct.ref_s*, %struct.ref_s** %refs114, align 8, !tbaa !1
  %arrayidx115 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i64 0
  %49 = bitcast %struct.ref_s* %arrayidx112 to i8*
  %50 = bitcast %struct.ref_s* %arrayidx115 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %50, i64 16, i32 8, i1 false), !tbaa.struct !46
  %value116 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value, i32 0, i32 1
  %refs117 = bitcast %union.v* %value116 to %struct.ref_s**
  %51 = load %struct.ref_s*, %struct.ref_s** %refs117, align 8, !tbaa !1
  %arrayidx118 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %51, i64 1
  %value119 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx118, i32 0, i32 1
  %realval120 = bitcast %union.v* %value119 to float*
  store float 0.000000e+00, float* %realval120, align 4, !tbaa !24
  %value121 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value, i32 0, i32 1
  %refs122 = bitcast %union.v* %value121 to %struct.ref_s**
  %52 = load %struct.ref_s*, %struct.ref_s** %refs122, align 8, !tbaa !1
  %arrayidx123 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %52, i64 1
  %tas124 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx123, i32 0, i32 0
  %type_attrs125 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas124, i32 0, i32 0
  store i16 4096, i16* %type_attrs125, align 2, !tbaa !20
  %value126 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value, i32 0, i32 1
  %refs127 = bitcast %union.v* %value126 to %struct.ref_s**
  %53 = load %struct.ref_s*, %struct.ref_s** %refs127, align 8, !tbaa !1
  %arrayidx128 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i64 2
  %value129 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value, i32 0, i32 1
  %refs130 = bitcast %union.v* %value129 to %struct.ref_s**
  %54 = load %struct.ref_s*, %struct.ref_s** %refs130, align 8, !tbaa !1
  %arrayidx131 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %54, i64 4
  %value132 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value, i32 0, i32 1
  %refs133 = bitcast %union.v* %value132 to %struct.ref_s**
  %55 = load %struct.ref_s*, %struct.ref_s** %refs133, align 8, !tbaa !1
  %arrayidx134 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %55, i64 5
  %value135 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %value, i32 0, i32 1
  %refs136 = bitcast %union.v* %value135 to %struct.ref_s**
  %56 = load %struct.ref_s*, %struct.ref_s** %refs136, align 8, !tbaa !1
  %arrayidx137 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %56, i64 1
  %57 = bitcast %struct.ref_s* %arrayidx134 to i8*
  %58 = bitcast %struct.ref_s* %arrayidx137 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %57, i8* %58, i64 16, i32 8, i1 false), !tbaa.struct !46
  %59 = bitcast %struct.ref_s* %arrayidx131 to i8*
  %60 = bitcast %struct.ref_s* %arrayidx134 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* %60, i64 16, i32 8, i1 false), !tbaa.struct !46
  %61 = bitcast %struct.ref_s* %arrayidx128 to i8*
  %62 = bitcast %struct.ref_s* %arrayidx131 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %61, i8* %62, i64 16, i32 8, i1 false), !tbaa.struct !46
  br label %sw.epilog

sw.bb.138:                                        ; preds = %if.then.13
  %63 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory139 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %63, i32 0, i32 1
  %current140 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory139, i32 0, i32 0
  %64 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current140, align 8, !tbaa !40
  %call141 = call i32 @dict_alloc(%struct.gs_ref_memory_s* %64, i32 0, %struct.ref_s* %value) #5
  store i32 %call141, i32* %code, align 4, !tbaa !23
  %cmp142 = icmp slt i32 %call141, 0
  br i1 %cmp142, label %if.then.144, label %if.end.145

if.then.144:                                      ; preds = %sw.bb.138
  %65 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %65, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.145:                                       ; preds = %sw.bb.138
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.145, %if.end.99, %if.end.69, %sw.bb.58, %sw.bb.53, %sw.bb.49, %sw.bb.44, %sw.bb.39, %sw.bb.34, %sw.bb.29, %sw.bb.24, %sw.bb.19, %sw.bb
  %66 = load %struct.ref_s*, %struct.ref_s** %dest.addr, align 8, !tbaa !1
  %67 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %67, i32 0, i32 24
  %call146 = call i32 @dict_put(%struct.ref_s* %66, %struct.ref_s* %name, %struct.ref_s* %value, %struct.dict_stack_s* %dict_stack) #5
  store i32 %call146, i32* %code, align 4, !tbaa !23
  %cmp147 = icmp slt i32 %call146, 0
  br i1 %cmp147, label %if.then.149, label %if.end.150

if.then.149:                                      ; preds = %sw.epilog
  %68 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %68, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.150:                                       ; preds = %sw.epilog
  br label %if.end.151

if.end.151:                                       ; preds = %if.end.150, %if.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.151, %if.then.149, %if.then.144, %if.then.98, %if.then.68, %if.then
  %69 = bitcast float* %xx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  %70 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  %71 = bitcast %struct.ref_s* %value to i8*
  call void @llvm.lifetime.end(i64 16, i8* %71) #1
  %72 = bitcast %struct.ref_s** %dummy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = bitcast %struct.ref_s* %name to i8*
  call void @llvm.lifetime.end(i64 16, i8* %73) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.156 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %74 = load i32, i32* %i, align 4, !tbaa !23
  %inc = add nsw i32 %74, 1
  store i32 %inc, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.156

cleanup.156:                                      ; preds = %for.end, %cleanup
  %75 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %76 = load i32, i32* %retval
  ret i32 %76
}

; Function Attrs: nounwind uwtable
define internal i32 @format0_fdselect_proc(%struct.tag_cff_data_t* %data, i32 %p, i32 %pe, i32 %i) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca %struct.tag_cff_data_t*, align 8
  %p.addr = alloca i32, align 4
  %pe.addr = alloca i32, align 4
  %i.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %u = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.tag_cff_data_t* %data, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  store i32 %p, i32* %p.addr, align 4, !tbaa !23
  store i32 %pe, i32* %pe.addr, align 4, !tbaa !23
  store i32 %i, i32* %i.addr, align 4, !tbaa !23
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %u to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %3 = load i32, i32* %p.addr, align 4, !tbaa !23
  %4 = load i32, i32* %i.addr, align 4, !tbaa !23
  %add = add i32 %3, %4
  %5 = load i32, i32* %pe.addr, align 4, !tbaa !23
  %call = call i32 @card8(i32* %u, %struct.tag_cff_data_t* %2, i32 %add, i32 %5) #5
  store i32 %call, i32* %code, align 4, !tbaa !23
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load i32, i32* %u, align 4, !tbaa !23
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %8 = bitcast i32* %u to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @format3_fdselect_proc(%struct.tag_cff_data_t* %data, i32 %p, i32 %pe, i32 %i) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca %struct.tag_cff_data_t*, align 8
  %p.addr = alloca i32, align 4
  %pe.addr = alloca i32, align 4
  %i.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %u = alloca i32, align 4
  %n_ranges = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %first = alloca i32, align 4
  %last = alloca i32, align 4
  store %struct.tag_cff_data_t* %data, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  store i32 %p, i32* %p.addr, align 4, !tbaa !23
  store i32 %pe, i32* %pe.addr, align 4, !tbaa !23
  store i32 %i, i32* %i.addr, align 4, !tbaa !23
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %u to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %n_ranges to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %4 = load i32, i32* %p.addr, align 4, !tbaa !23
  %5 = load i32, i32* %pe.addr, align 4, !tbaa !23
  %call = call i32 @card16(i32* %n_ranges, %struct.tag_cff_data_t* %3, i32 %4, i32 %5) #5
  store i32 %call, i32* %code, align 4, !tbaa !23
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.23

if.end:                                           ; preds = %entry
  %7 = load i32, i32* %p.addr, align 4, !tbaa !23
  %add = add i32 %7, 2
  store i32 %add, i32* %p.addr, align 4, !tbaa !23
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %if.end
  %8 = load i32, i32* %n_ranges, align 4, !tbaa !23
  %dec = add i32 %8, -1
  store i32 %dec, i32* %n_ranges, align 4, !tbaa !23
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %9 = load i32, i32* %p.addr, align 4, !tbaa !23
  %add1 = add i32 %9, 5
  %10 = load i32, i32* %pe.addr, align 4, !tbaa !23
  %cmp2 = icmp ule i32 %add1, %10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %11 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = bitcast i32* %first to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %last to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %15 = load i32, i32* %p.addr, align 4, !tbaa !23
  %16 = load i32, i32* %pe.addr, align 4, !tbaa !23
  %call3 = call i32 @card16(i32* %first, %struct.tag_cff_data_t* %14, i32 %15, i32 %16) #5
  store i32 %call3, i32* %code, align 4, !tbaa !23
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %while.body
  %17 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %while.body
  %18 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %19 = load i32, i32* %p.addr, align 4, !tbaa !23
  %add7 = add i32 %19, 3
  %20 = load i32, i32* %pe.addr, align 4, !tbaa !23
  %call8 = call i32 @card16(i32* %last, %struct.tag_cff_data_t* %18, i32 %add7, i32 %20) #5
  store i32 %call8, i32* %code, align 4, !tbaa !23
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.6
  %21 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end.6
  %22 = load i32, i32* %i.addr, align 4, !tbaa !23
  %23 = load i32, i32* %first, align 4, !tbaa !23
  %cmp12 = icmp uge i32 %22, %23
  br i1 %cmp12, label %land.lhs.true, label %if.end.20

land.lhs.true:                                    ; preds = %if.end.11
  %24 = load i32, i32* %i.addr, align 4, !tbaa !23
  %25 = load i32, i32* %last, align 4, !tbaa !23
  %cmp13 = icmp ult i32 %24, %25
  br i1 %cmp13, label %if.then.14, label %if.end.20

if.then.14:                                       ; preds = %land.lhs.true
  %26 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %27 = load i32, i32* %p.addr, align 4, !tbaa !23
  %add15 = add i32 %27, 2
  %28 = load i32, i32* %pe.addr, align 4, !tbaa !23
  %call16 = call i32 @card8(i32* %u, %struct.tag_cff_data_t* %26, i32 %add15, i32 %28) #5
  store i32 %call16, i32* %code, align 4, !tbaa !23
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.then.14
  %29 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.then.14
  %30 = load i32, i32* %u, align 4, !tbaa !23
  store i32 %30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %land.lhs.true, %if.end.11
  %31 = load i32, i32* %p.addr, align 4, !tbaa !23
  %add21 = add i32 %31, 3
  store i32 %add21, i32* %p.addr, align 4, !tbaa !23
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.20, %if.end.19, %if.then.18, %if.then.10, %if.then.5
  %32 = bitcast i32* %last to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = bitcast i32* %first to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.23 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %land.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.23

cleanup.23:                                       ; preds = %while.end, %cleanup, %if.then
  %34 = bitcast i32* %n_ranges to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast i32* %u to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = load i32, i32* %retval
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define internal i32 @idict_undef_c_name(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %dst, i8* %c_name, i32 %len) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %dst.addr = alloca %struct.ref_s*, align 8
  %c_name.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %ps_name = alloca %struct.ref_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %dst, %struct.ref_s** %dst.addr, align 8, !tbaa !1
  store i8* %c_name, i8** %c_name.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !23
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.ref_s* %ps_name to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #1
  %2 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %2, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %3 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !40
  %4 = bitcast %struct.gs_ref_memory_s* %3 to %struct.gs_memory_s*
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 2
  %5 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !51
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %5, i32 0, i32 16
  %6 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !54
  %7 = load i8*, i8** %c_name.addr, align 8, !tbaa !1
  %8 = load i32, i32* %len.addr, align 4, !tbaa !23
  %call = call i32 @names_ref(%struct.name_table_s* %6, i8* %7, i32 %8, %struct.ref_s* %ps_name, i32 0) #5
  store i32 %call, i32* %code, align 4, !tbaa !23
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.ref_s*, %struct.ref_s** %dst.addr, align 8, !tbaa !1
  %11 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %11, i32 0, i32 24
  %call1 = call i32 @dict_undef(%struct.ref_s* %10, %struct.ref_s* %ps_name, %struct.dict_stack_s* %dict_stack) #5
  store i32 %call1, i32* %code, align 4, !tbaa !23
  %12 = load i32, i32* %code, align 4, !tbaa !23
  %cmp2 = icmp slt i32 %12, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %if.end
  %13 = load i32, i32* %code, align 4, !tbaa !23
  %cmp3 = icmp ne i32 %13, -21
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %land.lhs.true
  %14 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %land.lhs.true, %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.then.4, %if.then
  %15 = bitcast %struct.ref_s* %ps_name to i8*
  call void @llvm.lifetime.end(i64 16, i8* %15) #1
  %16 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @idict_move_c_name(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %dst, %struct.ref_s* %src, i8* %c_name, i32 %len) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %dst.addr = alloca %struct.ref_s*, align 8
  %src.addr = alloca %struct.ref_s*, align 8
  %c_name.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %ps_name = alloca %struct.ref_s, align 8
  %pvalue = alloca %struct.ref_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %dst, %struct.ref_s** %dst.addr, align 8, !tbaa !1
  store %struct.ref_s* %src, %struct.ref_s** %src.addr, align 8, !tbaa !1
  store i8* %c_name, i8** %c_name.addr, align 8, !tbaa !1
  store i32 %len, i32* %len.addr, align 4, !tbaa !23
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.ref_s* %ps_name to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #1
  %2 = bitcast %struct.ref_s** %pvalue to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %3, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %4 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !40
  %5 = bitcast %struct.gs_ref_memory_s* %4 to %struct.gs_memory_s*
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %5, i32 0, i32 2
  %6 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !51
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %6, i32 0, i32 16
  %7 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !54
  %8 = load i8*, i8** %c_name.addr, align 8, !tbaa !1
  %9 = load i32, i32* %len.addr, align 4, !tbaa !23
  %call = call i32 @names_ref(%struct.name_table_s* %7, i8* %8, i32 %9, %struct.ref_s* %ps_name, i32 0) #5
  store i32 %call, i32* %code, align 4, !tbaa !23
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load %struct.ref_s*, %struct.ref_s** %src.addr, align 8, !tbaa !1
  %call1 = call i32 @dict_find(%struct.ref_s* %11, %struct.ref_s* %ps_name, %struct.ref_s** %pvalue) #5
  %cmp2 = icmp sgt i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.13

if.then.3:                                        ; preds = %if.end
  %12 = load %struct.ref_s*, %struct.ref_s** %dst.addr, align 8, !tbaa !1
  %13 = load %struct.ref_s*, %struct.ref_s** %pvalue, align 8, !tbaa !1
  %14 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %14, i32 0, i32 24
  %call4 = call i32 @dict_put(%struct.ref_s* %12, %struct.ref_s* %ps_name, %struct.ref_s* %13, %struct.dict_stack_s* %dict_stack) #5
  store i32 %call4, i32* %code, align 4, !tbaa !23
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.then.3
  %15 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.then.3
  %16 = load %struct.ref_s*, %struct.ref_s** %src.addr, align 8, !tbaa !1
  %17 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %dict_stack8 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %17, i32 0, i32 24
  %call9 = call i32 @dict_undef(%struct.ref_s* %16, %struct.ref_s* %ps_name, %struct.dict_stack_s* %dict_stack8) #5
  store i32 %call9, i32* %code, align 4, !tbaa !23
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.7
  %18 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end.7
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.13, %if.then.11, %if.then.6, %if.then
  %19 = bitcast %struct.ref_s** %pvalue to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %20 = bitcast %struct.ref_s* %ps_name to i8*
  call void @llvm.lifetime.end(i64 16, i8* %20) #1
  %21 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal i32 @make_name_from_sid(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %dst, %struct.tag_cff_index_t* %strings, %struct.tag_cff_data_t* %data, i32 %sid) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %dst.addr = alloca %struct.ref_s*, align 8
  %strings.addr = alloca %struct.tag_cff_index_t*, align 8
  %data.addr = alloca %struct.tag_cff_data_t*, align 8
  %sid.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %off = alloca i32, align 4
  %len = alloca i32, align 4
  %buf = alloca [200 x i8], align 16
  %cleanup.dest.slot = alloca i32
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %dst, %struct.ref_s** %dst.addr, align 8, !tbaa !1
  store %struct.tag_cff_index_t* %strings, %struct.tag_cff_index_t** %strings.addr, align 8, !tbaa !1
  store %struct.tag_cff_data_t* %data, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  store i32 %sid, i32* %sid.addr, align 4, !tbaa !23
  %0 = load i32, i32* %sid.addr, align 4, !tbaa !23
  %cmp = icmp ult i32 %0, 391
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %1, i32 0, i32 1
  %current = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory, i32 0, i32 0
  %2 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current, align 8, !tbaa !40
  %3 = bitcast %struct.gs_ref_memory_s* %2 to %struct.gs_memory_s*
  %gs_lib_ctx = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %3, i32 0, i32 2
  %4 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx, align 8, !tbaa !51
  %gs_name_table = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %4, i32 0, i32 16
  %5 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table, align 8, !tbaa !54
  %6 = load i32, i32* %sid.addr, align 4, !tbaa !23
  %idxprom = zext i32 %6 to i64
  %arrayidx = getelementptr inbounds [391 x i8*], [391 x i8*]* @standard_strings, i32 0, i64 %idxprom
  %7 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %8 = load i32, i32* %sid.addr, align 4, !tbaa !23
  %idxprom1 = zext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds [391 x i8*], [391 x i8*]* @standard_strings, i32 0, i64 %idxprom1
  %9 = load i8*, i8** %arrayidx2, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %9) #7
  %conv = trunc i64 %call to i32
  %10 = load %struct.ref_s*, %struct.ref_s** %dst.addr, align 8, !tbaa !1
  %call3 = call i32 @names_ref(%struct.name_table_s* %5, i8* %7, i32 %conv, %struct.ref_s* %10, i32 0) #5
  store i32 %call3, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %off to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast [200 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 200, i8* %14) #1
  %15 = load %struct.tag_cff_index_t*, %struct.tag_cff_index_t** %strings.addr, align 8, !tbaa !1
  %16 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %17 = load i32, i32* %sid.addr, align 4, !tbaa !23
  %sub = sub i32 %17, 391
  %call4 = call i32 @peek_index(i32* %off, i32* %len, %struct.tag_cff_index_t* %15, %struct.tag_cff_data_t* %16, i32 %sub) #5
  store i32 %call4, i32* %code, align 4, !tbaa !23
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.else
  %18 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.else
  %19 = load i32, i32* %len, align 4, !tbaa !23
  %conv8 = zext i32 %19 to i64
  %cmp9 = icmp ugt i64 %conv8, 200
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end
  %arraydecay = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 0
  %20 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %21 = load i32, i32* %off, align 4, !tbaa !23
  %22 = load i32, i32* %len, align 4, !tbaa !23
  %call13 = call i32 @get_cff_string(i8* %arraydecay, %struct.tag_cff_data_t* %20, i32 %21, i32 %22) #5
  store i32 %call13, i32* %code, align 4, !tbaa !23
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.12
  %23 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.end.12
  %24 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %memory18 = getelementptr inbounds %struct.gs_context_state_s, %struct.gs_context_state_s* %24, i32 0, i32 1
  %current19 = getelementptr inbounds %struct.gs_dual_memory_s, %struct.gs_dual_memory_s* %memory18, i32 0, i32 0
  %25 = load %struct.gs_ref_memory_s*, %struct.gs_ref_memory_s** %current19, align 8, !tbaa !40
  %26 = bitcast %struct.gs_ref_memory_s* %25 to %struct.gs_memory_s*
  %gs_lib_ctx20 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %26, i32 0, i32 2
  %27 = load %struct.gs_lib_ctx_s*, %struct.gs_lib_ctx_s** %gs_lib_ctx20, align 8, !tbaa !51
  %gs_name_table21 = getelementptr inbounds %struct.gs_lib_ctx_s, %struct.gs_lib_ctx_s* %27, i32 0, i32 16
  %28 = load %struct.name_table_s*, %struct.name_table_s** %gs_name_table21, align 8, !tbaa !54
  %arraydecay22 = getelementptr inbounds [200 x i8], [200 x i8]* %buf, i32 0, i32 0
  %29 = load i32, i32* %len, align 4, !tbaa !23
  %30 = load %struct.ref_s*, %struct.ref_s** %dst.addr, align 8, !tbaa !1
  %call23 = call i32 @names_ref(%struct.name_table_s* %28, i8* %arraydecay22, i32 %29, %struct.ref_s* %30, i32 1) #5
  store i32 %call23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.17, %if.then.16, %if.then.11, %if.then.7
  %31 = bitcast [200 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 200, i8* %31) #1
  %32 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = bitcast i32* %off to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %35 = load i32, i32* %retval
  ret i32 %35
}

declare i32 @gs_sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal i32 @make_string_from_sid(%struct.gs_context_state_s* %i_ctx_p, %struct.ref_s* %dst, %struct.tag_cff_index_t* %strings, %struct.tag_cff_data_t* %data, i32 %sid) #0 {
entry:
  %retval = alloca i32, align 4
  %i_ctx_p.addr = alloca %struct.gs_context_state_s*, align 8
  %dst.addr = alloca %struct.ref_s*, align 8
  %strings.addr = alloca %struct.tag_cff_index_t*, align 8
  %data.addr = alloca %struct.tag_cff_data_t*, align 8
  %sid.addr = alloca i32, align 4
  store %struct.gs_context_state_s* %i_ctx_p, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  store %struct.ref_s* %dst, %struct.ref_s** %dst.addr, align 8, !tbaa !1
  store %struct.tag_cff_index_t* %strings, %struct.tag_cff_index_t** %strings.addr, align 8, !tbaa !1
  store %struct.tag_cff_data_t* %data, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  store i32 %sid, i32* %sid.addr, align 4, !tbaa !23
  %0 = load i32, i32* %sid.addr, align 4, !tbaa !23
  %cmp = icmp ult i32 %0, 391
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %sid.addr, align 4, !tbaa !23
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [391 x i8*], [391 x i8*]* @standard_strings, i32 0, i64 %idxprom
  %2 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %3 = load %struct.ref_s*, %struct.ref_s** %dst.addr, align 8, !tbaa !1
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i32 0, i32 1
  %bytes = bitcast %union.v* %value to i8**
  store i8* %2, i8** %bytes, align 8, !tbaa !1
  %4 = load %struct.ref_s*, %struct.ref_s** %dst.addr, align 8, !tbaa !1
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  store i16 4704, i16* %type_attrs, align 2, !tbaa !20
  %5 = load i32, i32* %sid.addr, align 4, !tbaa !23
  %idxprom1 = zext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [391 x i8*], [391 x i8*]* @standard_strings, i32 0, i64 %idxprom1
  %6 = load i8*, i8** %arrayidx2, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %6) #7
  %conv = trunc i64 %call to i32
  %7 = load %struct.ref_s*, %struct.ref_s** %dst.addr, align 8, !tbaa !1
  %tas3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 0
  %rsize = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas3, i32 0, i32 2
  store i32 %conv, i32* %rsize, align 4, !tbaa !30
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %8 = load %struct.gs_context_state_s*, %struct.gs_context_state_s** %i_ctx_p.addr, align 8, !tbaa !1
  %9 = load %struct.ref_s*, %struct.ref_s** %dst.addr, align 8, !tbaa !1
  %10 = load %struct.tag_cff_index_t*, %struct.tag_cff_index_t** %strings.addr, align 8, !tbaa !1
  %11 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %12 = load i32, i32* %sid.addr, align 4, !tbaa !23
  %sub = sub i32 %12, 391
  %call4 = call i32 @make_string_from_index(%struct.gs_context_state_s* %8, %struct.ref_s* %9, %struct.tag_cff_index_t* %10, %struct.tag_cff_data_t* %11, i32 %sub, i32 -1) #5
  store i32 %call4, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @get_float(%struct.ref_s* %fnum, %struct.tag_cff_data_t* %data, i32 %p, i32 %pe) #0 {
entry:
  %retval = alloca i32, align 4
  %fnum.addr = alloca %struct.ref_s*, align 8
  %data.addr = alloca %struct.tag_cff_data_t*, align 8
  %p.addr = alloca i32, align 4
  %pe.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %buf = alloca [80 x i8], align 16
  %p0 = alloca i32, align 4
  %q = alloca i8*, align 8
  %u = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %sign = alloca i32, align 4
  %eptr = alloca i8*, align 8
  %bptr = alloca i8*, align 8
  store %struct.ref_s* %fnum, %struct.ref_s** %fnum.addr, align 8, !tbaa !1
  store %struct.tag_cff_data_t* %data, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  store i32 %p, i32* %p.addr, align 4, !tbaa !23
  store i32 %pe, i32* %pe.addr, align 4, !tbaa !23
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast [80 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 80, i8* %3) #1
  %4 = bitcast i32* %p0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i32, i32* %p.addr, align 4, !tbaa !23
  store i32 %5, i32* %p0, align 4, !tbaa !23
  %6 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay, i8** %q, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %cleanup.cont, %entry
  %7 = bitcast i32* %u to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %9 = load i32, i32* %p.addr, align 4, !tbaa !23
  %10 = load i32, i32* %pe.addr, align 4, !tbaa !23
  %call = call i32 @card8(i32* %u, %struct.tag_cff_data_t* %8, i32 %9, i32 %10) #5
  store i32 %call, i32* %code, align 4, !tbaa !23
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  %11 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.31

if.end:                                           ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !23
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %if.end
  %12 = load i32, i32* %i, align 4, !tbaa !23
  %cmp2 = icmp ult i32 %12, 2
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.1
  %13 = load i8*, i8** %q, align 8, !tbaa !1
  %arraydecay3 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay3, i64 80
  %add.ptr4 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %cmp5 = icmp ult i8* %13, %add.ptr4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.1
  %14 = phi i1 [ false, %for.cond.1 ], [ %cmp5, %land.rhs ]
  br i1 %14, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %15 = load i32, i32* %i, align 4, !tbaa !23
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %16 = load i32, i32* %u, align 4, !tbaa !23
  %and = and i32 %16, 15
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %17 = load i32, i32* %u, align 4, !tbaa !23
  %shr = lshr i32 %17, 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %and, %cond.true ], [ %shr, %cond.false ]
  store i32 %cond, i32* %c, align 4, !tbaa !23
  %18 = load i32, i32* %c, align 4, !tbaa !23
  switch i32 %18, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 5, label %sw.bb
    i32 6, label %sw.bb
    i32 7, label %sw.bb
    i32 8, label %sw.bb
    i32 9, label %sw.bb
    i32 10, label %sw.bb.6
    i32 11, label %sw.bb.8
    i32 12, label %sw.bb.10
    i32 13, label %sw.epilog
    i32 14, label %sw.bb.13
    i32 15, label %sw.bb.15
  ]

sw.bb:                                            ; preds = %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end, %cond.end
  %19 = load i32, i32* %c, align 4, !tbaa !23
  %add = add i32 48, %19
  %conv = trunc i32 %add to i8
  %20 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr, i8** %q, align 8, !tbaa !1
  store i8 %conv, i8* %20, align 1, !tbaa !28
  br label %sw.epilog

sw.bb.6:                                          ; preds = %cond.end
  %21 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr7 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr7, i8** %q, align 8, !tbaa !1
  store i8 46, i8* %21, align 1, !tbaa !28
  br label %sw.epilog

sw.bb.8:                                          ; preds = %cond.end
  %22 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr9 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr9, i8** %q, align 8, !tbaa !1
  store i8 101, i8* %22, align 1, !tbaa !28
  br label %sw.epilog

sw.bb.10:                                         ; preds = %cond.end
  %23 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr11 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr11, i8** %q, align 8, !tbaa !1
  store i8 101, i8* %23, align 1, !tbaa !28
  %24 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr12 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr12, i8** %q, align 8, !tbaa !1
  store i8 45, i8* %24, align 1, !tbaa !28
  br label %sw.epilog

sw.bb.13:                                         ; preds = %cond.end
  %25 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr14 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr14, i8** %q, align 8, !tbaa !1
  store i8 45, i8* %25, align 1, !tbaa !28
  br label %sw.epilog

sw.bb.15:                                         ; preds = %cond.end
  %26 = bitcast i32* %sign to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  store i32 0, i32* %sign, align 4, !tbaa !23
  %27 = bitcast i8** %eptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #1
  %28 = bitcast i8** %bptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  %arraydecay16 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay16, i8** %bptr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i64 0
  %29 = load i8, i8* %arrayidx, align 1, !tbaa !28
  %conv17 = sext i8 %29 to i32
  %cmp18 = icmp eq i32 %conv17, 45
  br i1 %cmp18, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %sw.bb.15
  store i32 -1, i32* %sign, align 4, !tbaa !23
  %arrayidx21 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i32 0, i64 1
  store i8* %arrayidx21, i8** %bptr, align 8, !tbaa !1
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %sw.bb.15
  %30 = load i8*, i8** %bptr, align 8, !tbaa !1
  %31 = load i8*, i8** %q, align 8, !tbaa !1
  %32 = load i32, i32* %sign, align 4, !tbaa !23
  %33 = load %struct.ref_s*, %struct.ref_s** %fnum.addr, align 8, !tbaa !1
  %call23 = call i32 @scan_number(i8* %30, i8* %31, i32 %32, %struct.ref_s* %33, i8** %eptr, i32 0) #5
  store i32 %call23, i32* %code, align 4, !tbaa !23
  %34 = load i32, i32* %code, align 4, !tbaa !23
  %cmp24 = icmp slt i32 %34, 0
  br i1 %cmp24, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %if.end.22
  %35 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %35, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.end.22
  %36 = load i32, i32* %p.addr, align 4, !tbaa !23
  %37 = load i32, i32* %p0, align 4, !tbaa !23
  %sub = sub i32 %36, %37
  %add27 = add i32 %sub, 1
  store i32 %add27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then.26
  %38 = bitcast i8** %bptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = bitcast i8** %eptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast i32* %sign to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  br label %cleanup.31

sw.epilog:                                        ; preds = %cond.end, %sw.bb.13, %cond.end, %sw.bb.10, %sw.bb.8, %sw.bb.6, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %41 = load i32, i32* %i, align 4, !tbaa !23
  %inc = add i32 %41, 1
  store i32 %inc, i32* %i, align 4, !tbaa !23
  br label %for.cond.1

for.end:                                          ; preds = %land.end
  %42 = load i32, i32* %p.addr, align 4, !tbaa !23
  %inc30 = add i32 %42, 1
  store i32 %inc30, i32* %p.addr, align 4, !tbaa !23
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.31

cleanup.31:                                       ; preds = %for.end, %cleanup, %if.then
  %43 = bitcast i32* %u to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.32 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup.31
  br label %for.cond

cleanup.32:                                       ; preds = %cleanup.31
  %44 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = bitcast i32* %p0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast [80 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 80, i8* %46) #1
  %47 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = load i32, i32* %retval
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define internal i32 @get_int(i32* %v, %struct.tag_cff_data_t* %data, i32 %p, i32 %pe) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca i32*, align 8
  %data.addr = alloca %struct.tag_cff_data_t*, align 8
  %p.addr = alloca i32, align 4
  %pe.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %c = alloca i32, align 4
  %u = alloca i32, align 4
  %ext16 = alloca i32, align 4
  %ext32 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32* %v, i32** %v.addr, align 8, !tbaa !1
  store %struct.tag_cff_data_t* %data, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  store i32 %p, i32* %p.addr, align 4, !tbaa !23
  store i32 %pe, i32* %pe.addr, align 4, !tbaa !23
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %u to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %ext16 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 -32768, i32* %ext16, align 4, !tbaa !23
  %4 = bitcast i32* %ext32 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 -2147483648, i32* %ext32, align 4, !tbaa !23
  %5 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %6 = load i32, i32* %p.addr, align 4, !tbaa !23
  %7 = load i32, i32* %pe.addr, align 4, !tbaa !23
  %call = call i32 @card8(i32* %c, %struct.tag_cff_data_t* %5, i32 %6, i32 %7) #5
  store i32 %call, i32* %code, align 4, !tbaa !23
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load i32, i32* %c, align 4, !tbaa !23
  %cmp1 = icmp eq i32 %9, 28
  br i1 %cmp1, label %if.then.2, label %if.end.8

if.then.2:                                        ; preds = %if.end
  %10 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %11 = load i32, i32* %p.addr, align 4, !tbaa !23
  %add = add i32 %11, 1
  %12 = load i32, i32* %pe.addr, align 4, !tbaa !23
  %call3 = call i32 @card16(i32* %u, %struct.tag_cff_data_t* %10, i32 %add, i32 %12) #5
  store i32 %call3, i32* %code, align 4, !tbaa !23
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.2
  %13 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.then.2
  %14 = load i32, i32* %u, align 4, !tbaa !23
  %add7 = add nsw i32 %14, -32768
  %xor = xor i32 %add7, -32768
  %15 = load i32*, i32** %v.addr, align 8, !tbaa !1
  store i32 %xor, i32* %15, align 4, !tbaa !23
  store i32 3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end
  %16 = load i32, i32* %c, align 4, !tbaa !23
  %cmp9 = icmp eq i32 %16, 29
  br i1 %cmp9, label %if.then.10, label %if.end.18

if.then.10:                                       ; preds = %if.end.8
  %17 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %18 = load i32, i32* %p.addr, align 4, !tbaa !23
  %add11 = add i32 %18, 1
  %19 = load i32, i32* %pe.addr, align 4, !tbaa !23
  %call12 = call i32 @card32(i32* %u, %struct.tag_cff_data_t* %17, i32 %add11, i32 %19) #5
  store i32 %call12, i32* %code, align 4, !tbaa !23
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.then.10
  %20 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %if.then.10
  %21 = load i32, i32* %u, align 4, !tbaa !23
  %add16 = add nsw i32 %21, -2147483648
  %xor17 = xor i32 %add16, -2147483648
  %22 = load i32*, i32** %v.addr, align 8, !tbaa !1
  store i32 %xor17, i32* %22, align 4, !tbaa !23
  store i32 5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %if.end.8
  %23 = load i32, i32* %c, align 4, !tbaa !23
  %cmp19 = icmp ult i32 %23, 32
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.18
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.end.18
  %24 = load i32, i32* %c, align 4, !tbaa !23
  %cmp22 = icmp ult i32 %24, 247
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.21
  %25 = load i32, i32* %c, align 4, !tbaa !23
  %sub = sub nsw i32 %25, 139
  %26 = load i32*, i32** %v.addr, align 8, !tbaa !1
  store i32 %sub, i32* %26, align 4, !tbaa !23
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %if.end.21
  %27 = load i32, i32* %c, align 4, !tbaa !23
  %cmp25 = icmp ult i32 %27, 251
  br i1 %cmp25, label %if.then.26, label %if.end.35

if.then.26:                                       ; preds = %if.end.24
  %28 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %29 = load i32, i32* %p.addr, align 4, !tbaa !23
  %add27 = add i32 %29, 1
  %30 = load i32, i32* %pe.addr, align 4, !tbaa !23
  %call28 = call i32 @card8(i32* %u, %struct.tag_cff_data_t* %28, i32 %add27, i32 %30) #5
  store i32 %call28, i32* %code, align 4, !tbaa !23
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.then.26
  %31 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.31:                                        ; preds = %if.then.26
  %32 = load i32, i32* %c, align 4, !tbaa !23
  %sub32 = sub nsw i32 %32, 247
  %mul = mul nsw i32 %sub32, 256
  %33 = load i32, i32* %u, align 4, !tbaa !23
  %add33 = add nsw i32 %mul, %33
  %add34 = add nsw i32 %add33, 108
  %34 = load i32*, i32** %v.addr, align 8, !tbaa !1
  store i32 %add34, i32* %34, align 4, !tbaa !23
  store i32 2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.35:                                        ; preds = %if.end.24
  %35 = load i32, i32* %c, align 4, !tbaa !23
  %cmp36 = icmp ult i32 %35, 255
  br i1 %cmp36, label %if.then.37, label %if.end.48

if.then.37:                                       ; preds = %if.end.35
  %36 = load %struct.tag_cff_data_t*, %struct.tag_cff_data_t** %data.addr, align 8, !tbaa !1
  %37 = load i32, i32* %p.addr, align 4, !tbaa !23
  %add38 = add i32 %37, 1
  %38 = load i32, i32* %pe.addr, align 4, !tbaa !23
  %call39 = call i32 @card8(i32* %u, %struct.tag_cff_data_t* %36, i32 %add38, i32 %38) #5
  store i32 %call39, i32* %code, align 4, !tbaa !23
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.then.37
  %39 = load i32, i32* %code, align 4, !tbaa !23
  store i32 %39, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.42:                                        ; preds = %if.then.37
  %40 = load i32, i32* %c, align 4, !tbaa !23
  %sub43 = sub nsw i32 %40, 251
  %sub44 = sub nsw i32 0, %sub43
  %mul45 = mul nsw i32 %sub44, 256
  %41 = load i32, i32* %u, align 4, !tbaa !23
  %sub46 = sub nsw i32 %mul45, %41
  %sub47 = sub nsw i32 %sub46, 108
  %42 = load i32*, i32** %v.addr, align 8, !tbaa !1
  store i32 %sub47, i32* %42, align 4, !tbaa !23
  store i32 2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.48:                                        ; preds = %if.end.35
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.48, %if.end.42, %if.then.41, %if.end.31, %if.then.30, %if.then.23, %if.then.20, %if.end.15, %if.then.14, %if.end.6, %if.then.5, %if.then
  %43 = bitcast i32* %ext32 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast i32* %ext16 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast i32* %u to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = load i32, i32* %retval
  ret i32 %48
}

; Function Attrs: nounwind uwtable
define internal void @undelta(%struct.ref_s* %ops, i32 %cnt) #0 {
entry:
  %ops.addr = alloca %struct.ref_s*, align 8
  %cnt.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.ref_s* %ops, %struct.ref_s** %ops.addr, align 8, !tbaa !1
  store i32 %cnt, i32* %cnt.addr, align 4, !tbaa !23
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !23
  %2 = load i32, i32* %cnt.addr, align 4, !tbaa !23
  %cmp = icmp ult i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom = zext i32 %3 to i64
  %4 = load %struct.ref_s*, %struct.ref_s** %ops.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 %idxprom
  %tas = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx, i32 0, i32 0
  %type_attrs = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas, i32 0, i32 0
  %5 = bitcast i16* %type_attrs to i8*
  %arrayidx1 = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx1, align 1, !tbaa !28
  %conv = zext i8 %6 to i32
  %cmp2 = icmp eq i32 %conv, 16
  br i1 %cmp2, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom4 = zext i32 %7 to i64
  %8 = load %struct.ref_s*, %struct.ref_s** %ops.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 %idxprom4
  %value = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx5, i32 0, i32 1
  %intval = bitcast %union.v* %value to i64*
  %9 = load i64, i64* %intval, align 8, !tbaa !29
  %conv6 = sitofp i64 %9 to float
  %10 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom7 = zext i32 %10 to i64
  %11 = load %struct.ref_s*, %struct.ref_s** %ops.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 %idxprom7
  %value9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx8, i32 0, i32 1
  %realval = bitcast %union.v* %value9 to float*
  store float %conv6, float* %realval, align 4, !tbaa !24
  %12 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom10 = zext i32 %12 to i64
  %13 = load %struct.ref_s*, %struct.ref_s** %ops.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 %idxprom10
  %tas12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx11, i32 0, i32 0
  %type_attrs13 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas12, i32 0, i32 0
  store i16 4096, i16* %type_attrs13, align 2, !tbaa !20
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %i, align 4, !tbaa !23
  %inc = add i32 %14, 1
  store i32 %inc, i32* %i, align 4, !tbaa !23
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %i, align 4, !tbaa !23
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.34, %for.end
  %15 = load i32, i32* %i, align 4, !tbaa !23
  %16 = load i32, i32* %cnt.addr, align 4, !tbaa !23
  %cmp15 = icmp ult i32 %15, %16
  br i1 %cmp15, label %for.body.17, label %for.end.36

for.body.17:                                      ; preds = %for.cond.14
  %17 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom18 = zext i32 %17 to i64
  %18 = load %struct.ref_s*, %struct.ref_s** %ops.addr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 %idxprom18
  %value20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx19, i32 0, i32 1
  %realval21 = bitcast %union.v* %value20 to float*
  %19 = load float, float* %realval21, align 4, !tbaa !24
  %20 = load i32, i32* %i, align 4, !tbaa !23
  %sub = sub i32 %20, 1
  %idxprom22 = zext i32 %sub to i64
  %21 = load %struct.ref_s*, %struct.ref_s** %ops.addr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 %idxprom22
  %value24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx23, i32 0, i32 1
  %realval25 = bitcast %union.v* %value24 to float*
  %22 = load float, float* %realval25, align 4, !tbaa !24
  %add = fadd float %19, %22
  %23 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom26 = zext i32 %23 to i64
  %24 = load %struct.ref_s*, %struct.ref_s** %ops.addr, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 %idxprom26
  %value28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx27, i32 0, i32 1
  %realval29 = bitcast %union.v* %value28 to float*
  store float %add, float* %realval29, align 4, !tbaa !24
  %25 = load i32, i32* %i, align 4, !tbaa !23
  %idxprom30 = zext i32 %25 to i64
  %26 = load %struct.ref_s*, %struct.ref_s** %ops.addr, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 %idxprom30
  %tas32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %arrayidx31, i32 0, i32 0
  %type_attrs33 = getelementptr inbounds %struct.tas_s, %struct.tas_s* %tas32, i32 0, i32 0
  store i16 4096, i16* %type_attrs33, align 2, !tbaa !20
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.body.17
  %27 = load i32, i32* %i, align 4, !tbaa !23
  %inc35 = add i32 %27, 1
  store i32 %inc35, i32* %i, align 4, !tbaa !23
  br label %for.cond.14

for.end.36:                                       ; preds = %for.cond.14
  %28 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i32 @scan_number(i8*, i8*, i32, %struct.ref_s*, i8**, i32) #2

declare i32 @dict_undef(%struct.ref_s*, %struct.ref_s*, %struct.dict_stack_s*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nobuiltin nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 40}
!6 = !{!"gs_type1_data_s", !7, i64 0, !2, i64 40, !2, i64 48, !2, i64 56, !8, i64 64, !8, i64 68, !8, i64 72, !9, i64 80, !8, i64 88, !8, i64 92, !8, i64 96, !10, i64 100, !10, i64 104, !11, i64 108, !10, i64 168, !8, i64 172, !11, i64 176, !11, i64 236, !8, i64 280, !11, i64 284, !8, i64 328, !11, i64 332, !11, i64 340, !11, i64 348, !11, i64 400, !11, i64 452, !3, i64 520, !8, i64 536}
!7 = !{!"gs_type1_data_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32}
!8 = !{!"int", !3, i64 0}
!9 = !{!"long", !3, i64 0}
!10 = !{!"float", !3, i64 0}
!11 = !{!"", !8, i64 0, !3, i64 4}
!12 = !{!6, !8, i64 64}
!13 = !{!14, !2, i64 32}
!14 = !{!"charstring_font_refs_s", !2, i64 0, !15, i64 8, !2, i64 24, !2, i64 32, !2, i64 40}
!15 = !{!"ref_s", !16, i64 0, !3, i64 8}
!16 = !{!"tas_s", !17, i64 0, !17, i64 2, !8, i64 4}
!17 = !{!"short", !3, i64 0}
!18 = !{!6, !8, i64 68}
!19 = !{!14, !2, i64 0}
!20 = !{!15, !17, i64 0}
!21 = !{!14, !2, i64 40}
!22 = !{!6, !8, i64 72}
!23 = !{!8, !8, i64 0}
!24 = !{!10, !10, i64 0}
!25 = !{!6, !8, i64 88}
!26 = !{!6, !8, i64 92}
!27 = !{!6, !9, i64 80}
!28 = !{!3, !3, i64 0}
!29 = !{!9, !9, i64 0}
!30 = !{!15, !8, i64 4}
!31 = !{!32, !2, i64 624}
!32 = !{!"gs_context_state_s", !2, i64 0, !33, i64 8, !8, i64 80, !15, i64 88, !15, i64 104, !9, i64 120, !9, i64 128, !9, i64 136, !8, i64 144, !8, i64 148, !15, i64 152, !15, i64 168, !8, i64 184, !8, i64 188, !8, i64 192, !8, i64 196, !2, i64 200, !3, i64 208, !2, i64 256, !35, i64 264, !35, i64 304, !2, i64 344, !8, i64 352, !2, i64 360, !36, i64 368, !38, i64 520, !39, i64 624, !2, i64 720}
!33 = !{!"gs_dual_memory_s", !2, i64 0, !34, i64 8, !8, i64 48, !2, i64 56, !8, i64 64, !8, i64 68}
!34 = !{!"vm_spaces_s", !2, i64 0, !3, i64 8}
!35 = !{!"op_array_table_s", !15, i64 0, !2, i64 16, !8, i64 24, !8, i64 28, !8, i64 32}
!36 = !{!"dict_stack_s", !37, i64 0, !8, i64 96, !8, i64 100, !8, i64 104, !2, i64 112, !8, i64 120, !2, i64 128, !15, i64 136}
!37 = !{!"ref_stack_s", !2, i64 0, !2, i64 8, !2, i64 16, !15, i64 24, !8, i64 40, !8, i64 44, !15, i64 48, !8, i64 64, !8, i64 68, !8, i64 72, !2, i64 80, !2, i64 88}
!38 = !{!"exec_stack_s", !37, i64 0, !2, i64 96}
!39 = !{!"op_stack_s", !37, i64 0}
!40 = !{!32, !2, i64 8}
!41 = !{!42, !2, i64 0}
!42 = !{!"tag_cff_data_t", !2, i64 0, !8, i64 8, !8, i64 12, !8, i64 16}
!43 = !{!42, !8, i64 8}
!44 = !{!42, !8, i64 16}
!45 = !{!42, !8, i64 12}
!46 = !{i64 0, i64 2, !47, i64 2, i64 2, !47, i64 4, i64 4, !23, i64 8, i64 8, !29, i64 8, i64 2, !47, i64 8, i64 4, !24, i64 8, i64 8, !29, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !1, i64 8, i64 8, !29}
!47 = !{!17, !17, i64 0}
!48 = !{!49, !8, i64 4}
!49 = !{!"tag_cff_index_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16}
!50 = !{!49, !8, i64 16}
!51 = !{!52, !2, i64 192}
!52 = !{!"gs_memory_s", !2, i64 0, !53, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!53 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!54 = !{!55, !2, i64 120}
!55 = !{!"gs_lib_ctx_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !9, i64 104, !2, i64 112, !2, i64 120, !8, i64 128, !2, i64 136, !8, i64 144, !8, i64 148, !3, i64 152, !2, i64 168, !8, i64 176, !2, i64 184, !8, i64 192, !2, i64 200, !2, i64 208}
!56 = !{!49, !8, i64 0}
!57 = !{!49, !8, i64 12}
!58 = !{!49, !8, i64 8}
!59 = !{!60, !8, i64 16}
!60 = !{!"tag_font_offsets_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32}
!61 = !{!60, !8, i64 28}
!62 = !{!60, !8, i64 24}
!63 = !{!60, !8, i64 32}
!64 = !{!60, !8, i64 20}
!65 = !{!60, !8, i64 8}
!66 = !{!60, !8, i64 4}
!67 = !{!60, !8, i64 0}
!68 = !{!60, !8, i64 12}
!69 = !{!52, !2, i64 136}
!70 = !{!33, !8, i64 48}
!71 = !{!72, !17, i64 0}
!72 = !{!"tag_font_defaults", !17, i64 0, !17, i64 2}
!73 = !{!72, !17, i64 2}
