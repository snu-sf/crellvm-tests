; ModuleID = './gdevpsf1.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.param_printer_params_s = type { i8*, i8*, i8*, i8*, i32 }
%struct.gs_param_item_s = type { i8*, i8, i16 }
%struct.stream_template_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* }
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
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.gs_string_s = type { i8*, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, void (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_s*, i32)* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8] }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.file_enum_s = type opaque
%struct.gs_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32 }
%struct.gs_param_list_procs_s = type { i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)*, i32 (%struct.gs_param_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*)* }
%struct.gs_param_typed_value_s = type { %union.gs_param_value_s, i32 }
%union.gs_param_value_s = type { %struct.gs_param_string_s }
%struct.gs_param_string_s = type { i8*, i32, i32 }
%struct.gs_param_collection_s = type { %struct.gs_param_list_s*, i32 }
%union.gs_param_enumerator_s = type { i64 }
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.gs_font_base_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32 }
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
%struct.gs_state_s = type opaque
%struct.gs_font_name_s = type { [48 x i8], i32 }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_uid_s = type { i64, i64* }
%struct.gs_glyph_data_s = type { %struct.gs_const_bytestring_s, %struct.gs_glyph_data_procs_s*, i8*, %struct.gs_memory_s* }
%struct.gs_const_bytestring_s = type { i8*, i32, i8* }
%struct.gs_glyph_data_procs_s = type { void (%struct.gs_glyph_data_s*, i8*)*, i32 (%struct.gs_glyph_data_s*, i32, i32)* }
%struct.gs_font_type1_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32, %struct.gs_type1_data_s }
%struct.gs_type1_data_s = type { %struct.gs_type1_data_procs_s, i32 (%struct.gs_type1_state_s*, %struct.gs_glyph_data_s*, i32*)*, i8*, %struct.gs_font_base_s*, i32, i32, i32, i64, i32, i32, i32, float, float, %struct.anon, float, i32, %struct.anon.0, %struct.anon.1, i32, %struct.anon.2, i32, %struct.anon.3, %struct.anon.4, %struct.anon.5, %struct.anon.6, %struct.anon.7, [16 x i8], i32 }
%struct.gs_type1_data_procs_s = type { i32 (%struct.gs_font_type1_s*, i64, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type1_s*, i32, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type1_s*, i32, i64*, %struct.gs_const_string_s*, %struct.gs_glyph_data_s*)*, i32 (i8*, i32*, i32)*, i32 (i8*, i32*)* }
%struct.gs_type1_state_s = type { %struct.t1_hinter_s, %struct.gs_font_type1_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, i32, i32, i8*, %struct.fixed_coeff, float, %struct.point_scale_s, %struct.gs_log2_scale_point_s, %struct.gs_fixed_point_s, [48 x i32], i32, [11 x %struct.ip_state_t], i32, i32, i32, i32, i32, i32, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, i32, i32, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, i32, %struct.gs_fixed_point_s, i32, i32, %struct.gs_fixed_point_s, i32, i32, %struct.gs_fixed_point_s, [32 x i32] }
%struct.t1_hinter_s = type { %struct.fraction_matrix, %struct.fraction_matrix, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [110 x %struct.t1_pole_s], %struct.t1_pole_s*, [30 x %struct.t1_hint_s], %struct.t1_hint_s*, [6 x %struct.t1_zone_s], %struct.t1_zone_s*, [10 x i32], i32*, [10 x i32], i32*, [2 x [13 x i32]], [2 x i32*], [13 x i32], i32*, [30 x %struct.t1_hint_range_s], %struct.t1_hint_range_s*, [120 x %struct.t1_hint_applying_s], %struct.t1_hint_applying_s*, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gx_path_s*, %struct.gs_memory_s* }
%struct.fraction_matrix = type { i32, i32, i32, i32, i32, i32 }
%struct.t1_pole_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.t1_hint_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32 }
%struct.t1_zone_s = type { i32, i32, i32, i32, i32 }
%struct.t1_hint_range_s = type { i16, i16, i32 }
%struct.t1_hint_applying_s = type { i32, i32, i32 }
%struct.gs_imager_state_s = type opaque
%struct.fixed_coeff = type { i64, i64, i64, i64, i32, i32, i32, i32 }
%struct.point_scale_s = type { %struct.pixel_scale_s, %struct.pixel_scale_s }
%struct.pixel_scale_s = type { i32, i32, i32 }
%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.ip_state_t = type { i8*, i8*, i16, %struct.gs_glyph_data_s }
%struct.gs_fixed_point_s = type { i32, i32 }
%struct.anon = type { i32, [14 x float] }
%struct.anon.0 = type { i32, [14 x float] }
%struct.anon.1 = type { i32, [10 x float] }
%struct.anon.2 = type { i32, [10 x float] }
%struct.anon.3 = type { i32, [1 x float] }
%struct.anon.4 = type { i32, [1 x float] }
%struct.anon.5 = type { i32, [12 x float] }
%struct.anon.6 = type { i32, [12 x float] }
%struct.anon.7 = type { i32, [16 x float] }
%struct.psf_outline_glyphs_s = type { i64, i64*, i64*, i32 }
%struct.printer_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32, %struct.stream_s*, %struct.param_printer_params_s, i32 }
%struct.stream_AXE_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32 }
%struct.stream_exE_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i16 }
%struct.psf_glyph_enum_s = type { %struct.gs_font_s*, %struct.su_, i32, i64, i32 (%struct.psf_glyph_enum_s*, i64*)* }
%struct.su_ = type { %union.sus_, i32 }
%union.sus_ = type { i64* }
%struct.gs_bytestring_s = type { i8*, i32, i8* }
%struct.gs_param_float_array_s = type { float*, i32, i32 }

@param_printer_params_default = external constant %struct.param_printer_params_s, align 8
@.str = private unnamed_addr constant [6 x i8] c" def\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"%!FontType1-1.0: \00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"\0A11 dict begin\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"/FontInfo 5 dict dup begin\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Copyright\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Notice\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"FamilyName\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"FullName\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"\0Aend readonly def\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"/FontName \00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"/FontMatrix [%g %g %g %g %g %g] readonly def\0A\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"/FontBBox {%g %g %g %g} readonly def\0A\00", align 1
@psf_write_type1_font.font_items = internal constant [4 x %struct.gs_param_item_s] [%struct.gs_param_item_s { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i8 2, i16 128 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8 2, i16 152 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i8 4, i16 156 }, %struct.gs_param_item_s zeroinitializer], align 16
@.str.12 = private unnamed_addr constant [9 x i8] c"FontType\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"PaintType\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"StrokeWidth\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"currentdict end\0A\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"currentfile eexec\0A\00", align 1
@s_AXE_template = external constant %struct.stream_template_s, align 8
@s_exE_template = external constant %struct.stream_template_s, align 8
@.str.17 = private unnamed_addr constant [5 x i8] c"****\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c"dup/FontName get exch definefont pop\0A\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"mark \00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"currentfile closefile\0A\00", align 1
@.str.21 = private unnamed_addr constant [66 x i8] c"\0A0000000000000000000000000000000000000000000000000000000000000000\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"\0Acleartomark\0A\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"()<>[]{}/% \0A\0D\09\08\0C\04\1B\00", align 1
@s_PSSE_template = external constant %struct.stream_template_s, align 8
@.str.26 = private unnamed_addr constant [5 x i8] c" cvn\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"\0A/%s \00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c" def\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"/Encoding \00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"StandardEncoding\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"ISOLatin1Encoding\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"256 array\0A\00", align 1
@.str.33 = private unnamed_addr constant [41 x i8] c"0 1 255 {1 index exch /.notdef put} for\0A\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"dup %d /\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c" put\0A\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"readonly\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"/UniqueID %ld def\0A\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"/XUID [\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"%ld \00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"] readonly def\0A\00", align 1
@.str.41 = private unnamed_addr constant [32 x i8] c"dup /Private 17 dict dup begin\0A\00", align 1
@.str.42 = private unnamed_addr constant [60 x i8] c"/-|{string currentfile exch readstring pop}executeonly def\0A\00", align 1
@.str.43 = private unnamed_addr constant [34 x i8] c"/|-{noaccess def}executeonly def\0A\00", align 1
@.str.44 = private unnamed_addr constant [33 x i8] c"/|{noaccess put}executeonly def\0A\00", align 1
@write_Private.private_items = internal constant [8 x %struct.gs_param_item_s] [%struct.gs_param_item_s { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i32 0, i32 0), i8 2, i16 96 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0), i8 4, i16 100 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), i8 4, i16 104 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.48, i32 0, i32 0), i8 4, i16 168 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), i8 1, i16 172 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i32 0, i32 0), i8 2, i16 280 }, %struct.gs_param_item_s { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i32 0, i32 0), i8 1, i16 328 }, %struct.gs_param_item_s zeroinitializer], align 16
@.str.45 = private unnamed_addr constant [9 x i8] c"BlueFuzz\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"BlueScale\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"BlueShift\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"ExpansionFactor\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"ForceBold\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"LanguageGroup\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"RndStemUp\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"lenIV\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"BlueValues\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"OtherBlues\00", align 1
@.str.55 = private unnamed_addr constant [12 x i8] c"FamilyBlues\00", align 1
@.str.56 = private unnamed_addr constant [17 x i8] c"FamilyOtherBlues\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"StdHW\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"StdVW\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"StemSnapH\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"StemSnapV\00", align 1
@.str.61 = private unnamed_addr constant [24 x i8] c"/MinFeature{16 16} def\0A\00", align 1
@.str.62 = private unnamed_addr constant [20 x i8] c"/password 5839 def\0A\00", align 1
@.str.63 = private unnamed_addr constant [21 x i8] c"write_Private(Subrs)\00", align 1
@.str.64 = private unnamed_addr constant [13 x i8] c"Subrs record\00", align 1
@.str.65 = private unnamed_addr constant [17 x i8] c"/Subrs %d array\0A\00", align 1
@.str.66 = private unnamed_addr constant [18 x i8] c"free Subrs record\00", align 1
@.str.67 = private unnamed_addr constant [26 x i8] c"Subrs copy for OtherSubrs\00", align 1
@.str.68 = private unnamed_addr constant [14 x i8] c"dup %d %u -| \00", align 1
@.str.69 = private unnamed_addr constant [31 x i8] c"free Subrs copy for OtherSubrs\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c" |\0A\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"|-\0A\00", align 1
@.str.72 = private unnamed_addr constant [27 x i8] c"write_Private(CharStrings)\00", align 1
@.str.73 = private unnamed_addr constant [40 x i8] c"2 index /CharStrings %d dict dup begin\0A\00", align 1
@.str.74 = private unnamed_addr constant [32 x i8] c"CharStrings copy for OtherSubrs\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c" %d -| \00", align 1
@.str.76 = private unnamed_addr constant [37 x i8] c"free CharStrings copy for OtherSubrs\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c" |-\0A\00", align 1
@.str.78 = private unnamed_addr constant [35 x i8] c"end\0Aend\0Areadonly put\0Anoaccess put\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @psf_type1_glyph_data(%struct.gs_font_base_s* %pbfont, i64 %glyph, %struct.gs_glyph_data_s* %pgd, %struct.gs_font_type1_s** %ppfont) #0 {
entry:
  %pbfont.addr = alloca %struct.gs_font_base_s*, align 8
  %glyph.addr = alloca i64, align 8
  %pgd.addr = alloca %struct.gs_glyph_data_s*, align 8
  %ppfont.addr = alloca %struct.gs_font_type1_s**, align 8
  %pfont = alloca %struct.gs_font_type1_s*, align 8
  store %struct.gs_font_base_s* %pbfont, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  store i64 %glyph, i64* %glyph.addr, align 8, !tbaa !5
  store %struct.gs_glyph_data_s* %pgd, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  store %struct.gs_font_type1_s** %ppfont, %struct.gs_font_type1_s*** %ppfont.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_type1_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pbfont.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_font_base_s* %1 to %struct.gs_font_type1_s*
  store %struct.gs_font_type1_s* %2, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %3 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %4 = load %struct.gs_font_type1_s**, %struct.gs_font_type1_s*** %ppfont.addr, align 8, !tbaa !1
  store %struct.gs_font_type1_s* %3, %struct.gs_font_type1_s** %4, align 8, !tbaa !1
  %5 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %5, i32 0, i32 29
  %procs = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data, i32 0, i32 0
  %glyph_data = getelementptr inbounds %struct.gs_type1_data_procs_s, %struct.gs_type1_data_procs_s* %procs, i32 0, i32 0
  %6 = load i32 (%struct.gs_font_type1_s*, i64, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type1_s*, i64, %struct.gs_glyph_data_s*)** %glyph_data, align 8, !tbaa !7
  %7 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont, align 8, !tbaa !1
  %8 = load i64, i64* %glyph.addr, align 8, !tbaa !5
  %9 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %pgd.addr, align 8, !tbaa !1
  %call = call i32 %6(%struct.gs_font_type1_s* %7, i64 %8, %struct.gs_glyph_data_s* %9) #5
  %10 = bitcast %struct.gs_font_type1_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @psf_get_type1_glyphs(%struct.psf_outline_glyphs_s* %pglyphs, %struct.gs_font_type1_s* %pfont, i64* %subset_glyphs, i32 %subset_size) #0 {
entry:
  %pglyphs.addr = alloca %struct.psf_outline_glyphs_s*, align 8
  %pfont.addr = alloca %struct.gs_font_type1_s*, align 8
  %subset_glyphs.addr = alloca i64*, align 8
  %subset_size.addr = alloca i32, align 4
  store %struct.psf_outline_glyphs_s* %pglyphs, %struct.psf_outline_glyphs_s** %pglyphs.addr, align 8, !tbaa !1
  store %struct.gs_font_type1_s* %pfont, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  store i64* %subset_glyphs, i64** %subset_glyphs.addr, align 8, !tbaa !1
  store i32 %subset_size, i32* %subset_size.addr, align 4, !tbaa !22
  %0 = load %struct.psf_outline_glyphs_s*, %struct.psf_outline_glyphs_s** %pglyphs.addr, align 8, !tbaa !1
  %1 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_font_type1_s* %1 to %struct.gs_font_base_s*
  %3 = load i64*, i64** %subset_glyphs.addr, align 8, !tbaa !1
  %4 = load i32, i32* %subset_size.addr, align 4, !tbaa !22
  %call = call i32 @psf_get_outline_glyphs(%struct.psf_outline_glyphs_s* %0, %struct.gs_font_base_s* %2, i64* %3, i32 %4, i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, %struct.gs_font_type1_s**)* @psf_type1_glyph_data) #5
  ret i32 %call
}

declare i32 @psf_get_outline_glyphs(%struct.psf_outline_glyphs_s*, %struct.gs_font_base_s*, i64*, i32, i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, %struct.gs_font_type1_s**)*) #2

; Function Attrs: nounwind uwtable
define i32 @psf_write_type1_font(%struct.stream_s* %s, %struct.gs_font_type1_s* %pfont, i32 %options, i64* %orig_subset_glyphs, i32 %orig_subset_size, %struct.gs_const_string_s* %alt_font_name, i32* %lengths) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %pfont.addr = alloca %struct.gs_font_type1_s*, align 8
  %options.addr = alloca i32, align 4
  %orig_subset_glyphs.addr = alloca i64*, align 8
  %orig_subset_size.addr = alloca i32, align 4
  %alt_font_name.addr = alloca %struct.gs_const_string_s*, align 8
  %lengths.addr = alloca i32*, align 8
  %es = alloca %struct.stream_s*, align 8
  %start = alloca i64, align 8
  %ppp = alloca %struct.param_printer_params_s, align 8
  %rlist = alloca %struct.printer_param_list_s, align 8
  %plist = alloca %struct.gs_param_list_s*, align 8
  %AXE_stream = alloca %struct.stream_s, align 8
  %AXE_state = alloca %struct.stream_AXE_state_s, align 8
  %AXE_buf = alloca [200 x i8], align 16
  %exE_stream = alloca %struct.stream_s, align 8
  %exE_state = alloca %struct.stream_exE_state_s, align 8
  %exE_buf = alloca [200 x i8], align 16
  %glyphs = alloca %struct.psf_outline_glyphs_s, align 8
  %lenIV = alloca i32, align 4
  %write_CharString = alloca i32 (%struct.stream_s*, i8*, i32)*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %info = alloca %struct.gs_font_info_s, align 8
  %code10 = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct.gs_font_type1_s* %pfont, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  store i32 %options, i32* %options.addr, align 4, !tbaa !22
  store i64* %orig_subset_glyphs, i64** %orig_subset_glyphs.addr, align 8, !tbaa !1
  store i32 %orig_subset_size, i32* %orig_subset_size.addr, align 4, !tbaa !22
  store %struct.gs_const_string_s* %alt_font_name, %struct.gs_const_string_s** %alt_font_name.addr, align 8, !tbaa !1
  store i32* %lengths, i32** %lengths.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_s** %es to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct.stream_s* %1, %struct.stream_s** %es, align 8, !tbaa !1
  %2 = bitcast i64* %start to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i64 @stell(%struct.stream_s* %3) #5
  store i64 %call, i64* %start, align 8, !tbaa !5
  %4 = bitcast %struct.param_printer_params_s* %ppp to i8*
  call void @llvm.lifetime.start(i64 40, i8* %4) #1
  %5 = bitcast %struct.printer_param_list_s* %rlist to i8*
  call void @llvm.lifetime.start(i64 80, i8* %5) #1
  %6 = bitcast %struct.gs_param_list_s** %plist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast %struct.printer_param_list_s* %rlist to %struct.gs_param_list_s*
  store %struct.gs_param_list_s* %7, %struct.gs_param_list_s** %plist, align 8, !tbaa !1
  %8 = bitcast %struct.stream_s* %AXE_stream to i8*
  call void @llvm.lifetime.start(i64 352, i8* %8) #1
  %9 = bitcast %struct.stream_AXE_state_s* %AXE_state to i8*
  call void @llvm.lifetime.start(i64 120, i8* %9) #1
  %10 = bitcast [200 x i8]* %AXE_buf to i8*
  call void @llvm.lifetime.start(i64 200, i8* %10) #1
  %11 = bitcast %struct.stream_s* %exE_stream to i8*
  call void @llvm.lifetime.start(i64 352, i8* %11) #1
  %12 = bitcast %struct.stream_exE_state_s* %exE_state to i8*
  call void @llvm.lifetime.start(i64 112, i8* %12) #1
  %13 = bitcast [200 x i8]* %exE_buf to i8*
  call void @llvm.lifetime.start(i64 200, i8* %13) #1
  %14 = bitcast %struct.psf_outline_glyphs_s* %glyphs to i8*
  call void @llvm.lifetime.start(i64 32, i8* %14) #1
  %15 = bitcast i32* %lenIV to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %16, i32 0, i32 29
  %lenIV1 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data, i32 0, i32 4
  %17 = load i32, i32* %lenIV1, align 4, !tbaa !23
  store i32 %17, i32* %lenIV, align 4, !tbaa !22
  %18 = bitcast i32 (%struct.stream_s*, i8*, i32)** %write_CharString to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  store i32 (%struct.stream_s*, i8*, i32)* @stream_write, i32 (%struct.stream_s*, i8*, i32)** %write_CharString, align 8, !tbaa !1
  %19 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %21 = load i64*, i64** %orig_subset_glyphs.addr, align 8, !tbaa !1
  %22 = load i32, i32* %orig_subset_size.addr, align 4, !tbaa !22
  %call2 = call i32 @psf_get_type1_glyphs(%struct.psf_outline_glyphs_s* %glyphs, %struct.gs_font_type1_s* %20, i64* %21, i32 %22) #5
  store i32 %call2, i32* %code, align 4, !tbaa !22
  %23 = load i32, i32* %code, align 4, !tbaa !22
  %cmp = icmp slt i32 %23, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %24 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %25 = bitcast %struct.param_printer_params_s* %ppp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* bitcast (%struct.param_printer_params_s* @param_printer_params_default to i8*), i64 40, i32 8, i1 false), !tbaa.struct !24
  %item_suffix = getelementptr inbounds %struct.param_printer_params_s, %struct.param_printer_params_s* %ppp, i32 0, i32 3
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8** %item_suffix, align 8, !tbaa !25
  %26 = load i32, i32* %options.addr, align 4, !tbaa !22
  %and = and i32 %26, 2
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 0, i32 1
  %or = or i32 %cond, 4
  %print_ok = getelementptr inbounds %struct.param_printer_params_s, %struct.param_printer_params_s* %ppp, i32 0, i32 4
  store i32 %or, i32* %print_ok, align 4, !tbaa !27
  %27 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call3 = call i32 @s_init_param_printer(%struct.printer_param_list_s* %rlist, %struct.param_printer_params_s* %ppp, %struct.stream_s* %27) #5
  store i32 %call3, i32* %code, align 4, !tbaa !22
  %28 = load i32, i32* %code, align 4, !tbaa !22
  %cmp4 = icmp slt i32 %28, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %29 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %30 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call7 = call i32 @stream_puts(%struct.stream_s* %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0)) #5
  %31 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %32 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %33 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %alt_font_name.addr, align 8, !tbaa !1
  call void @write_font_name(%struct.stream_s* %31, %struct.gs_font_type1_s* %32, %struct.gs_const_string_s* %33, i32 0) #5
  %34 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call8 = call i32 @stream_puts(%struct.stream_s* %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0)) #5
  %35 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call9 = call i32 @stream_puts(%struct.stream_s* %35, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0)) #5
  %36 = bitcast %struct.gs_font_info_s* %info to i8*
  call void @llvm.lifetime.start(i64 160, i8* %36) #1
  %37 = bitcast i32* %code10 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %38 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %38, i32 0, i32 20
  %font_info = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs, i32 0, i32 2
  %39 = load i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)*, i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)** %font_info, align 8, !tbaa !28
  %40 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %41 = bitcast %struct.gs_font_type1_s* %40 to %struct.gs_font_s*
  %call11 = call i32 %39(%struct.gs_font_s* %41, %struct.gs_point_s* null, i32 12480, %struct.gs_font_info_s* %info) #5
  store i32 %call11, i32* %code10, align 4, !tbaa !22
  %42 = load i32, i32* %code10, align 4, !tbaa !22
  %cmp12 = icmp sge i32 %42, 0
  br i1 %cmp12, label %if.then.13, label %if.end.21

if.then.13:                                       ; preds = %if.end.6
  %43 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %Copyright = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %info, i32 0, i32 18
  %members = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %info, i32 0, i32 0
  %44 = load i32, i32* %members, align 4, !tbaa !29
  %and14 = and i32 %44, 64
  call void @write_font_info(%struct.stream_s* %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), %struct.gs_const_string_s* %Copyright, i32 %and14) #5
  %45 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %Notice = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %info, i32 0, i32 19
  %members15 = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %info, i32 0, i32 0
  %46 = load i32, i32* %members15, align 4, !tbaa !29
  %and16 = and i32 %46, 128
  call void @write_font_info(%struct.stream_s* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), %struct.gs_const_string_s* %Notice, i32 %and16) #5
  %47 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %FamilyName = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %info, i32 0, i32 20
  %members17 = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %info, i32 0, i32 0
  %48 = load i32, i32* %members17, align 4, !tbaa !29
  %and18 = and i32 %48, 4096
  call void @write_font_info(%struct.stream_s* %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), %struct.gs_const_string_s* %FamilyName, i32 %and18) #5
  %49 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %FullName = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %info, i32 0, i32 21
  %members19 = getelementptr inbounds %struct.gs_font_info_s, %struct.gs_font_info_s* %info, i32 0, i32 0
  %50 = load i32, i32* %members19, align 4, !tbaa !29
  %and20 = and i32 %50, 8192
  call void @write_font_info(%struct.stream_s* %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), %struct.gs_const_string_s* %FullName, i32 %and20) #5
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.13, %if.end.6
  %51 = bitcast i32* %code10 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast %struct.gs_font_info_s* %info to i8*
  call void @llvm.lifetime.end(i64 160, i8* %52) #1
  %53 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call22 = call i32 @stream_puts(%struct.stream_s* %53, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0)) #5
  %54 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call23 = call i32 @stream_puts(%struct.stream_s* %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0)) #5
  %55 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %56 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %57 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %alt_font_name.addr, align 8, !tbaa !1
  call void @write_font_name(%struct.stream_s* %55, %struct.gs_font_type1_s* %56, %struct.gs_const_string_s* %57, i32 1) #5
  %58 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call24 = call i32 @stream_puts(%struct.stream_s* %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0)) #5
  %59 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %60 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %61 = load i32, i32* %options.addr, align 4, !tbaa !22
  %subset_glyphs = getelementptr inbounds %struct.psf_outline_glyphs_s, %struct.psf_outline_glyphs_s* %glyphs, i32 0, i32 2
  %62 = load i64*, i64** %subset_glyphs, align 8, !tbaa !34
  %subset_size = getelementptr inbounds %struct.psf_outline_glyphs_s, %struct.psf_outline_glyphs_s* %glyphs, i32 0, i32 3
  %63 = load i32, i32* %subset_size, align 4, !tbaa !36
  %notdef = getelementptr inbounds %struct.psf_outline_glyphs_s, %struct.psf_outline_glyphs_s* %glyphs, i32 0, i32 0
  %64 = load i64, i64* %notdef, align 8, !tbaa !37
  %call25 = call i32 @write_Encoding(%struct.stream_s* %59, %struct.gs_font_type1_s* %60, i32 %61, i64* %62, i32 %63, i64 %64) #5
  store i32 %call25, i32* %code, align 4, !tbaa !22
  %65 = load i32, i32* %code, align 4, !tbaa !22
  %cmp26 = icmp slt i32 %65, 0
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.21
  %66 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %66, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %if.end.21
  %67 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %68 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %FontMatrix = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %68, i32 0, i32 9
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %FontMatrix, i32 0, i32 0
  %69 = load float, float* %xx, align 4, !tbaa !38
  %conv = fpext float %69 to double
  %70 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %FontMatrix29 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %70, i32 0, i32 9
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %FontMatrix29, i32 0, i32 1
  %71 = load float, float* %xy, align 4, !tbaa !39
  %conv30 = fpext float %71 to double
  %72 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %FontMatrix31 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %72, i32 0, i32 9
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %FontMatrix31, i32 0, i32 2
  %73 = load float, float* %yx, align 4, !tbaa !40
  %conv32 = fpext float %73 to double
  %74 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %FontMatrix33 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %74, i32 0, i32 9
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %FontMatrix33, i32 0, i32 3
  %75 = load float, float* %yy, align 4, !tbaa !41
  %conv34 = fpext float %75 to double
  %76 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %FontMatrix35 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %76, i32 0, i32 9
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %FontMatrix35, i32 0, i32 4
  %77 = load float, float* %tx, align 4, !tbaa !42
  %conv36 = fpext float %77 to double
  %78 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %FontMatrix37 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %78, i32 0, i32 9
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %FontMatrix37, i32 0, i32 5
  %79 = load float, float* %ty, align 4, !tbaa !43
  %conv38 = fpext float %79 to double
  %call39 = call i8* @pprintg6(%struct.stream_s* %67, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i32 0, i32 0), double %conv, double %conv30, double %conv32, double %conv34, double %conv36, double %conv38) #5
  %80 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %81 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %UID = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %81, i32 0, i32 24
  call void @write_uid(%struct.stream_s* %80, %struct.gs_uid_s* %UID) #5
  %82 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %83 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %FontBBox = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %83, i32 0, i32 23
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 0
  %84 = load double, double* %x, align 8, !tbaa !44
  %85 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %FontBBox40 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %85, i32 0, i32 23
  %p41 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox40, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p41, i32 0, i32 1
  %86 = load double, double* %y, align 8, !tbaa !45
  %87 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %FontBBox42 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %87, i32 0, i32 23
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox42, i32 0, i32 1
  %x43 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  %88 = load double, double* %x43, align 8, !tbaa !46
  %89 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %FontBBox44 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %89, i32 0, i32 23
  %q45 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox44, i32 0, i32 1
  %y46 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q45, i32 0, i32 1
  %90 = load double, double* %y46, align 8, !tbaa !47
  %call47 = call i8* @pprintg4(%struct.stream_s* %82, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i32 0, i32 0), double %84, double %86, double %88, double %90) #5
  %91 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist, align 8, !tbaa !1
  %92 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %93 = bitcast %struct.gs_font_type1_s* %92 to i8*
  %call48 = call i32 @gs_param_write_items(%struct.gs_param_list_s* %91, i8* %93, i8* null, %struct.gs_param_item_s* getelementptr inbounds ([4 x %struct.gs_param_item_s], [4 x %struct.gs_param_item_s]* @psf_write_type1_font.font_items, i32 0, i32 0)) #5
  store i32 %call48, i32* %code, align 4, !tbaa !22
  %94 = load i32, i32* %code, align 4, !tbaa !22
  %cmp49 = icmp slt i32 %94, 0
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.28
  %95 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %95, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.52:                                        ; preds = %if.end.28
  %96 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call53 = call i32 @stream_puts(%struct.stream_s* %96, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0)) #5
  %97 = load i32, i32* %lenIV, align 4, !tbaa !22
  %cmp54 = icmp slt i32 %97, 0
  br i1 %cmp54, label %land.lhs.true, label %if.end.59

land.lhs.true:                                    ; preds = %if.end.52
  %98 = load i32, i32* %options.addr, align 4, !tbaa !22
  %and56 = and i32 %98, 32
  %tobool57 = icmp ne i32 %and56, 0
  br i1 %tobool57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %land.lhs.true
  store i32 0, i32* %lenIV, align 4, !tbaa !22
  store i32 (%struct.stream_s*, i8*, i32)* @stream_write_encrypted, i32 (%struct.stream_s*, i8*, i32)** %write_CharString, align 8, !tbaa !1
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.58, %land.lhs.true, %if.end.52
  %99 = load i32, i32* %options.addr, align 4, !tbaa !22
  %and60 = and i32 %99, 1
  %tobool61 = icmp ne i32 %and60, 0
  br i1 %tobool61, label %if.then.62, label %if.end.76

if.then.62:                                       ; preds = %if.end.59
  %100 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call63 = call i32 @stream_puts(%struct.stream_s* %100, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0)) #5
  %101 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call64 = call i64 @stell(%struct.stream_s* %101) #5
  %102 = load i64, i64* %start, align 8, !tbaa !5
  %sub = sub nsw i64 %call64, %102
  %conv65 = trunc i64 %sub to i32
  %103 = load i32*, i32** %lengths.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %103, i64 0
  store i32 %conv65, i32* %arrayidx, align 4, !tbaa !22
  %104 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call66 = call i64 @stell(%struct.stream_s* %104) #5
  store i64 %call66, i64* %start, align 8, !tbaa !5
  %105 = load i32, i32* %options.addr, align 4, !tbaa !22
  %and67 = and i32 %105, 2
  %tobool68 = icmp ne i32 %and67, 0
  br i1 %tobool68, label %if.then.69, label %if.end.71

if.then.69:                                       ; preds = %if.then.62
  %106 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.stream_s, %struct.stream_s* %106, i32 0, i32 1
  %107 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !48
  call void @s_init(%struct.stream_s* %AXE_stream, %struct.gs_memory_s* %107) #5
  %108 = bitcast %struct.stream_AXE_state_s* %AXE_state to %struct.stream_state_s*
  call void @s_init_state(%struct.stream_state_s* %108, %struct.stream_template_s* @s_AXE_template, %struct.gs_memory_s* null) #5
  %109 = bitcast %struct.stream_AXE_state_s* %AXE_state to %struct.stream_state_s*
  %arraydecay = getelementptr inbounds [200 x i8], [200 x i8]* %AXE_buf, i32 0, i32 0
  %110 = load %struct.stream_s*, %struct.stream_s** %es, align 8, !tbaa !1
  %call70 = call i32 @s_init_filter(%struct.stream_s* %AXE_stream, %struct.stream_state_s* %109, i8* %arraydecay, i32 200, %struct.stream_s* %110) #5
  %EndOfData = getelementptr inbounds %struct.stream_AXE_state_s, %struct.stream_AXE_state_s* %AXE_state, i32 0, i32 5
  store i32 0, i32* %EndOfData, align 4, !tbaa !53
  store %struct.stream_s* %AXE_stream, %struct.stream_s** %es, align 8, !tbaa !1
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.69, %if.then.62
  %111 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %memory72 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %111, i32 0, i32 1
  %112 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory72, align 8, !tbaa !48
  call void @s_init(%struct.stream_s* %exE_stream, %struct.gs_memory_s* %112) #5
  %113 = bitcast %struct.stream_exE_state_s* %exE_state to %struct.stream_state_s*
  call void @s_init_state(%struct.stream_state_s* %113, %struct.stream_template_s* @s_exE_template, %struct.gs_memory_s* null) #5
  %cstate = getelementptr inbounds %struct.stream_exE_state_s, %struct.stream_exE_state_s* %exE_state, i32 0, i32 5
  store i16 -9871, i16* %cstate, align 2, !tbaa !55
  %114 = bitcast %struct.stream_exE_state_s* %exE_state to %struct.stream_state_s*
  %arraydecay73 = getelementptr inbounds [200 x i8], [200 x i8]* %exE_buf, i32 0, i32 0
  %115 = load %struct.stream_s*, %struct.stream_s** %es, align 8, !tbaa !1
  %call74 = call i32 @s_init_filter(%struct.stream_s* %exE_stream, %struct.stream_state_s* %114, i8* %arraydecay73, i32 200, %struct.stream_s* %115) #5
  store %struct.stream_s* %exE_stream, %struct.stream_s** %es, align 8, !tbaa !1
  %116 = load %struct.stream_s*, %struct.stream_s** %es, align 8, !tbaa !1
  %call75 = call i32 @stream_puts(%struct.stream_s* %116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0)) #5
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.71, %if.end.59
  %117 = load %struct.stream_s*, %struct.stream_s** %es, align 8, !tbaa !1
  %118 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %subset_glyphs77 = getelementptr inbounds %struct.psf_outline_glyphs_s, %struct.psf_outline_glyphs_s* %glyphs, i32 0, i32 2
  %119 = load i64*, i64** %subset_glyphs77, align 8, !tbaa !34
  %subset_size78 = getelementptr inbounds %struct.psf_outline_glyphs_s, %struct.psf_outline_glyphs_s* %glyphs, i32 0, i32 3
  %120 = load i32, i32* %subset_size78, align 4, !tbaa !36
  %notdef79 = getelementptr inbounds %struct.psf_outline_glyphs_s, %struct.psf_outline_glyphs_s* %glyphs, i32 0, i32 0
  %121 = load i64, i64* %notdef79, align 8, !tbaa !37
  %122 = load i32, i32* %lenIV, align 4, !tbaa !22
  %123 = load i32 (%struct.stream_s*, i8*, i32)*, i32 (%struct.stream_s*, i8*, i32)** %write_CharString, align 8, !tbaa !1
  %call80 = call i32 @write_Private(%struct.stream_s* %117, %struct.gs_font_type1_s* %118, i64* %119, i32 %120, i64 %121, i32 %122, i32 (%struct.stream_s*, i8*, i32)* %123, %struct.param_printer_params_s* %ppp) #5
  store i32 %call80, i32* %code, align 4, !tbaa !22
  %124 = load i32, i32* %code, align 4, !tbaa !22
  %cmp81 = icmp slt i32 %124, 0
  br i1 %cmp81, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %if.end.76
  %125 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %125, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.84:                                        ; preds = %if.end.76
  %126 = load %struct.stream_s*, %struct.stream_s** %es, align 8, !tbaa !1
  %call85 = call i32 @stream_puts(%struct.stream_s* %126, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i32 0, i32 0)) #5
  %127 = load i32, i32* %options.addr, align 4, !tbaa !22
  %and86 = and i32 %127, 1
  %tobool87 = icmp ne i32 %and86, 0
  br i1 %tobool87, label %if.then.88, label %if.else

if.then.88:                                       ; preds = %if.end.84
  %128 = load i32, i32* %options.addr, align 4, !tbaa !22
  %and89 = and i32 %128, 12
  %tobool90 = icmp ne i32 %and89, 0
  br i1 %tobool90, label %if.then.91, label %if.end.93

if.then.91:                                       ; preds = %if.then.88
  %129 = load %struct.stream_s*, %struct.stream_s** %es, align 8, !tbaa !1
  %call92 = call i32 @stream_puts(%struct.stream_s* %129, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0)) #5
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.91, %if.then.88
  %130 = load %struct.stream_s*, %struct.stream_s** %es, align 8, !tbaa !1
  %call94 = call i32 @stream_puts(%struct.stream_s* %130, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i32 0, i32 0)) #5
  %131 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call95 = call i32 @s_close_filters(%struct.stream_s** %es, %struct.stream_s* %131) #5
  %132 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call96 = call i64 @stell(%struct.stream_s* %132) #5
  %133 = load i64, i64* %start, align 8, !tbaa !5
  %sub97 = sub nsw i64 %call96, %133
  %conv98 = trunc i64 %sub97 to i32
  %134 = load i32*, i32** %lengths.addr, align 8, !tbaa !1
  %arrayidx99 = getelementptr inbounds i32, i32* %134, i64 1
  store i32 %conv98, i32* %arrayidx99, align 4, !tbaa !22
  %135 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call100 = call i64 @stell(%struct.stream_s* %135) #5
  store i64 %call100, i64* %start, align 8, !tbaa !5
  %136 = load i32, i32* %options.addr, align 4, !tbaa !22
  %and101 = and i32 %136, 4
  %tobool102 = icmp ne i32 %and101, 0
  br i1 %tobool102, label %if.then.103, label %if.end.108

if.then.103:                                      ; preds = %if.end.93
  %137 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %137) #1
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.103
  %138 = load i32, i32* %i, align 4, !tbaa !22
  %cmp104 = icmp slt i32 %138, 8
  br i1 %cmp104, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %139 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call106 = call i32 @stream_puts(%struct.stream_s* %139, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.21, i32 0, i32 0)) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %140 = load i32, i32* %i, align 4, !tbaa !22
  %inc = add nsw i32 %140, 1
  store i32 %inc, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %141 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call107 = call i32 @stream_puts(%struct.stream_s* %141, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i32 0, i32 0)) #5
  %142 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %142) #1
  br label %if.end.108

if.end.108:                                       ; preds = %for.end, %if.end.93
  %143 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call109 = call i64 @stell(%struct.stream_s* %143) #5
  %144 = load i64, i64* %start, align 8, !tbaa !5
  %sub110 = sub nsw i64 %call109, %144
  %conv111 = trunc i64 %sub110 to i32
  %145 = load i32*, i32** %lengths.addr, align 8, !tbaa !1
  %arrayidx112 = getelementptr inbounds i32, i32* %145, i64 2
  store i32 %conv111, i32* %arrayidx112, align 4, !tbaa !22
  br label %if.end.119

if.else:                                          ; preds = %if.end.84
  %146 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call113 = call i64 @stell(%struct.stream_s* %146) #5
  %147 = load i64, i64* %start, align 8, !tbaa !5
  %sub114 = sub nsw i64 %call113, %147
  %conv115 = trunc i64 %sub114 to i32
  %148 = load i32*, i32** %lengths.addr, align 8, !tbaa !1
  %arrayidx116 = getelementptr inbounds i32, i32* %148, i64 0
  store i32 %conv115, i32* %arrayidx116, align 4, !tbaa !22
  %149 = load i32*, i32** %lengths.addr, align 8, !tbaa !1
  %arrayidx117 = getelementptr inbounds i32, i32* %149, i64 2
  store i32 0, i32* %arrayidx117, align 4, !tbaa !22
  %150 = load i32*, i32** %lengths.addr, align 8, !tbaa !1
  %arrayidx118 = getelementptr inbounds i32, i32* %150, i64 1
  store i32 0, i32* %arrayidx118, align 4, !tbaa !22
  br label %if.end.119

if.end.119:                                       ; preds = %if.else, %if.end.108
  call void @s_release_param_printer(%struct.printer_param_list_s* %rlist) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.119, %if.then.83, %if.then.51, %if.then.27, %if.then.5, %if.then
  %151 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %151) #1
  %152 = bitcast i32 (%struct.stream_s*, i8*, i32)** %write_CharString to i8*
  call void @llvm.lifetime.end(i64 8, i8* %152) #1
  %153 = bitcast i32* %lenIV to i8*
  call void @llvm.lifetime.end(i64 4, i8* %153) #1
  %154 = bitcast %struct.psf_outline_glyphs_s* %glyphs to i8*
  call void @llvm.lifetime.end(i64 32, i8* %154) #1
  %155 = bitcast [200 x i8]* %exE_buf to i8*
  call void @llvm.lifetime.end(i64 200, i8* %155) #1
  %156 = bitcast %struct.stream_exE_state_s* %exE_state to i8*
  call void @llvm.lifetime.end(i64 112, i8* %156) #1
  %157 = bitcast %struct.stream_s* %exE_stream to i8*
  call void @llvm.lifetime.end(i64 352, i8* %157) #1
  %158 = bitcast [200 x i8]* %AXE_buf to i8*
  call void @llvm.lifetime.end(i64 200, i8* %158) #1
  %159 = bitcast %struct.stream_AXE_state_s* %AXE_state to i8*
  call void @llvm.lifetime.end(i64 120, i8* %159) #1
  %160 = bitcast %struct.stream_s* %AXE_stream to i8*
  call void @llvm.lifetime.end(i64 352, i8* %160) #1
  %161 = bitcast %struct.gs_param_list_s** %plist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %161) #1
  %162 = bitcast %struct.printer_param_list_s* %rlist to i8*
  call void @llvm.lifetime.end(i64 80, i8* %162) #1
  %163 = bitcast %struct.param_printer_params_s* %ppp to i8*
  call void @llvm.lifetime.end(i64 40, i8* %163) #1
  %164 = bitcast i64* %start to i8*
  call void @llvm.lifetime.end(i64 8, i8* %164) #1
  %165 = bitcast %struct.stream_s** %es to i8*
  call void @llvm.lifetime.end(i64 8, i8* %165) #1
  %166 = load i32, i32* %retval
  ret i32 %166
}

declare i64 @stell(%struct.stream_s*) #2

declare i32 @stream_write(%struct.stream_s*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @s_init_param_printer(%struct.printer_param_list_s*, %struct.param_printer_params_s*, %struct.stream_s*) #2

declare i32 @stream_puts(%struct.stream_s*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @write_font_name(%struct.stream_s* %s, %struct.gs_font_type1_s* %pfont, %struct.gs_const_string_s* %alt_font_name, i32 %as_name) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %pfont.addr = alloca %struct.gs_font_type1_s*, align 8
  %alt_font_name.addr = alloca %struct.gs_const_string_s*, align 8
  %as_name.addr = alloca i32, align 4
  %c = alloca i8*, align 8
  %name = alloca i8*, align 8
  %n = alloca i32, align 4
  %pssebuf = alloca [190 x i8], align 16
  %r = alloca %struct.stream_cursor_read_s, align 8
  %w = alloca %struct.stream_cursor_write_s, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct.gs_font_type1_s* %pfont, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  store %struct.gs_const_string_s* %alt_font_name, %struct.gs_const_string_s** %alt_font_name.addr, align 8, !tbaa !1
  store i32 %as_name, i32* %as_name.addr, align 4, !tbaa !22
  %0 = bitcast i8** %c to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %alt_font_name.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_const_string_s* %2, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %alt_font_name.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8, !tbaa !57
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %font_name = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %5, i32 0, i32 22
  %chars = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %font_name, i32 0, i32 0
  %arraydecay = getelementptr inbounds [48 x i8], [48 x i8]* %chars, i32 0, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %4, %cond.true ], [ %arraydecay, %cond.false ]
  store i8* %cond, i8** %name, align 8, !tbaa !1
  %6 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %alt_font_name.addr, align 8, !tbaa !1
  %tobool1 = icmp ne %struct.gs_const_string_s* %7, null
  br i1 %tobool1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  %8 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %alt_font_name.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %8, i32 0, i32 1
  %9 = load i32, i32* %size, align 4, !tbaa !58
  br label %cond.end.6

cond.false.3:                                     ; preds = %cond.end
  %10 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %font_name4 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %10, i32 0, i32 22
  %size5 = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %font_name4, i32 0, i32 1
  %11 = load i32, i32* %size5, align 4, !tbaa !59
  br label %cond.end.6

cond.end.6:                                       ; preds = %cond.false.3, %cond.true.2
  %cond7 = phi i32 [ %9, %cond.true.2 ], [ %11, %cond.false.3 ]
  store i32 %cond7, i32* %n, align 4, !tbaa !22
  %12 = load i32, i32* %n, align 4, !tbaa !22
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.6
  %13 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %14 = load i32, i32* %as_name.addr, align 4, !tbaa !22
  %tobool8 = icmp ne i32 %14, 0
  %cond9 = select i1 %tobool8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0)
  %call = call i32 @stream_puts(%struct.stream_s* %13, i8* %cond9) #5
  br label %if.end.44

if.else:                                          ; preds = %cond.end.6
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i32 0, i32 0), i8** %c, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %15 = load i8*, i8** %c, align 8, !tbaa !1
  %16 = load i8, i8* %15, align 1, !tbaa !60
  %tobool10 = icmp ne i8 %16, 0
  br i1 %tobool10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i8*, i8** %name, align 8, !tbaa !1
  %18 = load i8*, i8** %c, align 8, !tbaa !1
  %19 = load i8, i8* %18, align 1, !tbaa !60
  %conv = zext i8 %19 to i32
  %20 = load i32, i32* %n, align 4, !tbaa !22
  %conv11 = sext i32 %20 to i64
  %call12 = call i8* @memchr(i8* %17, i32 %conv, i64 %conv11) #6
  %tobool13 = icmp ne i8* %call12, null
  br i1 %tobool13, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %21 = load i8*, i8** %c, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr, i8** %c, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %if.then.14, %for.cond
  %22 = load i8*, i8** %c, align 8, !tbaa !1
  %23 = load i8, i8* %22, align 1, !tbaa !60
  %conv15 = zext i8 %23 to i32
  %tobool16 = icmp ne i32 %conv15, 0
  br i1 %tobool16, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %24 = load i8*, i8** %name, align 8, !tbaa !1
  %25 = load i32, i32* %n, align 4, !tbaa !22
  %conv17 = sext i32 %25 to i64
  %call18 = call i8* @memchr(i8* %24, i32 0, i64 %conv17) #6
  %tobool19 = icmp ne i8* %call18, null
  br i1 %tobool19, label %if.then.20, label %if.else.37

if.then.20:                                       ; preds = %lor.lhs.false, %for.end
  %26 = bitcast [190 x i8]* %pssebuf to i8*
  call void @llvm.lifetime.start(i64 190, i8* %26) #1
  %27 = bitcast %struct.stream_cursor_read_s* %r to i8*
  call void @llvm.lifetime.start(i64 24, i8* %27) #1
  %28 = bitcast %struct.stream_cursor_write_s* %w to i8*
  call void @llvm.lifetime.start(i64 24, i8* %28) #1
  %arrayidx = getelementptr inbounds [190 x i8], [190 x i8]* %pssebuf, i32 0, i64 0
  store i8 40, i8* %arrayidx, align 1, !tbaa !60
  %29 = load i8*, i8** %name, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %29, i64 -1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 0
  store i8* %add.ptr, i8** %ptr, align 8, !tbaa !61
  %30 = load i32, i32* %n, align 4, !tbaa !22
  %idx.ext = sext i32 %30 to i64
  %add.ptr21 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 1
  store i8* %add.ptr21, i8** %limit, align 8, !tbaa !63
  %arraydecay22 = getelementptr inbounds [190 x i8], [190 x i8]* %pssebuf, i32 0, i32 0
  %ptr23 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  store i8* %arraydecay22, i8** %ptr23, align 8, !tbaa !64
  %add.ptr24 = getelementptr inbounds i8, i8* %arraydecay22, i64 190
  %add.ptr25 = getelementptr inbounds i8, i8* %add.ptr24, i64 -1
  %limit26 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 2
  store i8* %add.ptr25, i8** %limit26, align 8, !tbaa !66
  %31 = load i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)** getelementptr inbounds (%struct.stream_template_s, %struct.stream_template_s* @s_PSSE_template, i32 0, i32 2), align 8, !tbaa !67
  %call27 = call i32 %31(%struct.stream_state_s* null, %struct.stream_cursor_read_s* %r, %struct.stream_cursor_write_s* %w, i32 1) #5
  %32 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %arraydecay28 = getelementptr inbounds [190 x i8], [190 x i8]* %pssebuf, i32 0, i32 0
  %ptr29 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %33 = load i8*, i8** %ptr29, align 8, !tbaa !64
  %arraydecay30 = getelementptr inbounds [190 x i8], [190 x i8]* %pssebuf, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %33 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay30 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add nsw i64 %sub.ptr.sub, 1
  %conv31 = trunc i64 %add to i32
  %call32 = call i32 @stream_write(%struct.stream_s* %32, i8* %arraydecay28, i32 %conv31) #5
  %34 = load i32, i32* %as_name.addr, align 4, !tbaa !22
  %tobool33 = icmp ne i32 %34, 0
  br i1 %tobool33, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %if.then.20
  %35 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call35 = call i32 @stream_puts(%struct.stream_s* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0)) #5
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %if.then.20
  %36 = bitcast %struct.stream_cursor_write_s* %w to i8*
  call void @llvm.lifetime.end(i64 24, i8* %36) #1
  %37 = bitcast %struct.stream_cursor_read_s* %r to i8*
  call void @llvm.lifetime.end(i64 24, i8* %37) #1
  %38 = bitcast [190 x i8]* %pssebuf to i8*
  call void @llvm.lifetime.end(i64 190, i8* %38) #1
  br label %if.end.43

if.else.37:                                       ; preds = %lor.lhs.false
  %39 = load i32, i32* %as_name.addr, align 4, !tbaa !22
  %tobool38 = icmp ne i32 %39, 0
  br i1 %tobool38, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %if.else.37
  %40 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call40 = call i32 @spputc(%struct.stream_s* %40, i8 zeroext 47) #5
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %if.else.37
  %41 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %42 = load i8*, i8** %name, align 8, !tbaa !1
  %43 = load i32, i32* %n, align 4, !tbaa !22
  %call42 = call i32 @stream_write(%struct.stream_s* %41, i8* %42, i32 %43) #5
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.41, %if.end.36
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then
  %44 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast i8** %name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = bitcast i8** %c to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @write_font_info(%struct.stream_s* %s, i8* %key, %struct.gs_const_string_s* %pvalue, i32 %do_write) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %key.addr = alloca i8*, align 8
  %pvalue.addr = alloca %struct.gs_const_string_s*, align 8
  %do_write.addr = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store %struct.gs_const_string_s* %pvalue, %struct.gs_const_string_s** %pvalue.addr, align 8, !tbaa !1
  store i32 %do_write, i32* %do_write.addr, align 4, !tbaa !22
  %0 = load i32, i32* %do_write.addr, align 4, !tbaa !22
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %call = call i8* @pprints1(%struct.stream_s* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i8* %2) #5
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %4 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %pvalue.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %4, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8, !tbaa !57
  %6 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %pvalue.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %6, i32 0, i32 1
  %7 = load i32, i32* %size, align 4, !tbaa !58
  call void @s_write_ps_string(%struct.stream_s* %3, i8* %5, i32 %7, i32 4) #5
  %8 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call1 = call i32 @stream_puts(%struct.stream_s* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0)) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @write_Encoding(%struct.stream_s* %s, %struct.gs_font_type1_s* %pfont, i32 %options, i64* %subset_glyphs, i32 %subset_size, i64 %notdef) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %pfont.addr = alloca %struct.gs_font_type1_s*, align 8
  %options.addr = alloca i32, align 4
  %subset_glyphs.addr = alloca i64*, align 8
  %subset_size.addr = alloca i32, align 4
  %notdef.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %glyph = alloca i64, align 8
  %namestr = alloca %struct.gs_const_string_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct.gs_font_type1_s* %pfont, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  store i32 %options, i32* %options.addr, align 4, !tbaa !22
  store i64* %subset_glyphs, i64** %subset_glyphs.addr, align 8, !tbaa !1
  store i32 %subset_size, i32* %subset_size.addr, align 4, !tbaa !22
  store i64 %notdef, i64* %notdef.addr, align 8, !tbaa !5
  %0 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @stream_puts(%struct.stream_s* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0)) #5
  %1 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %encoding_index = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %1, i32 0, i32 27
  %2 = load i32, i32* %encoding_index, align 4, !tbaa !69
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %3 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call1 = call i32 @stream_puts(%struct.stream_s* %3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0)) #5
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %4 = load i32, i32* %options.addr, align 4, !tbaa !22
  %and = and i32 %4, 16
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.2
  %5 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call3 = call i32 @stream_puts(%struct.stream_s* %5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i32 0, i32 0)) #5
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb.2
  br label %sw.default

sw.default:                                       ; preds = %entry, %if.end
  %6 = bitcast i64* %i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call4 = call i32 @stream_puts(%struct.stream_s* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0)) #5
  %8 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call5 = call i32 @stream_puts(%struct.stream_s* %8, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.33, i32 0, i32 0)) #5
  store i64 0, i64* %i, align 8, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.default
  %9 = load i64, i64* %i, align 8, !tbaa !5
  %cmp = icmp ult i64 %9, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %11, i32 0, i32 20
  %encode_char = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs, i32 0, i32 4
  %12 = load i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)** %encode_char, align 8, !tbaa !70
  %13 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %14 = bitcast %struct.gs_font_type1_s* %13 to %struct.gs_font_s*
  %15 = load i64, i64* %i, align 8, !tbaa !5
  %call6 = call i64 %12(%struct.gs_font_s* %14, i64 %15, i32 0) #5
  store i64 %call6, i64* %glyph, align 8, !tbaa !5
  %16 = bitcast %struct.gs_const_string_s* %namestr to i8*
  call void @llvm.lifetime.start(i64 16, i8* %16) #1
  %17 = load i64*, i64** %subset_glyphs.addr, align 8, !tbaa !1
  %tobool7 = icmp ne i64* %17, null
  br i1 %tobool7, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %for.body
  %18 = load i32, i32* %subset_size.addr, align 4, !tbaa !22
  %tobool8 = icmp ne i32 %18, 0
  br i1 %tobool8, label %if.then.9, label %if.end.14

if.then.9:                                        ; preds = %land.lhs.true
  %19 = load i64*, i64** %subset_glyphs.addr, align 8, !tbaa !1
  %20 = load i32, i32* %subset_size.addr, align 4, !tbaa !22
  %21 = load i64, i64* %glyph, align 8, !tbaa !5
  %call10 = call i32 @psf_sorted_glyphs_include(i64* %19, i32 %20, i64 %21) #5
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.then.9
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

if.end.13:                                        ; preds = %if.then.9
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %land.lhs.true, %for.body
  %22 = load i64, i64* %glyph, align 8, !tbaa !5
  %cmp15 = icmp ne i64 %22, 2147483647
  br i1 %cmp15, label %land.lhs.true.16, label %if.end.26

land.lhs.true.16:                                 ; preds = %if.end.14
  %23 = load i64, i64* %glyph, align 8, !tbaa !5
  %24 = load i64, i64* %notdef.addr, align 8, !tbaa !5
  %cmp17 = icmp ne i64 %23, %24
  br i1 %cmp17, label %land.lhs.true.18, label %if.end.26

land.lhs.true.18:                                 ; preds = %land.lhs.true.16
  %25 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %procs19 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %25, i32 0, i32 20
  %glyph_name = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs19, i32 0, i32 9
  %26 = load i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)** %glyph_name, align 8, !tbaa !71
  %27 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %28 = bitcast %struct.gs_font_type1_s* %27 to %struct.gs_font_s*
  %29 = load i64, i64* %glyph, align 8, !tbaa !5
  %call20 = call i32 %26(%struct.gs_font_s* %28, i64 %29, %struct.gs_const_string_s* %namestr) #5
  %cmp21 = icmp sge i32 %call20, 0
  br i1 %cmp21, label %if.then.22, label %if.end.26

if.then.22:                                       ; preds = %land.lhs.true.18
  %30 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %31 = load i64, i64* %i, align 8, !tbaa !5
  %conv = trunc i64 %31 to i32
  %call23 = call i8* @pprintd1(%struct.stream_s* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), i32 %conv) #5
  %32 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %namestr, i32 0, i32 0
  %33 = load i8*, i8** %data, align 8, !tbaa !57
  %size = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %namestr, i32 0, i32 1
  %34 = load i32, i32* %size, align 4, !tbaa !58
  %call24 = call i32 @stream_write(%struct.stream_s* %32, i8* %33, i32 %34) #5
  %35 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call25 = call i32 @stream_puts(%struct.stream_s* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0)) #5
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.22, %land.lhs.true.18, %land.lhs.true.16, %if.end.14
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.26, %if.then.12
  %36 = bitcast %struct.gs_const_string_s* %namestr to i8*
  call void @llvm.lifetime.end(i64 16, i8* %36) #1
  %37 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 5, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %38 = load i64, i64* %i, align 8, !tbaa !5
  %inc = add i64 %38, 1
  store i64 %inc, i64* %i, align 8, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call28 = call i32 @stream_puts(%struct.stream_s* %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0)) #5
  %40 = bitcast i64* %i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end, %if.then, %sw.bb
  %41 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call29 = call i32 @stream_puts(%struct.stream_s* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0)) #5
  ret i32 0

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i8* @pprintg6(%struct.stream_s*, i8*, double, double, double, double, double, double) #2

; Function Attrs: nounwind uwtable
define internal void @write_uid(%struct.stream_s* %s, %struct.gs_uid_s* %puid) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %puid.addr = alloca %struct.gs_uid_s*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct.gs_uid_s* %puid, %struct.gs_uid_s** %puid.addr, align 8, !tbaa !1
  %0 = load %struct.gs_uid_s*, %struct.gs_uid_s** %puid.addr, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %0, i32 0, i32 0
  %1 = load i64, i64* %id, align 8, !tbaa !72
  %and = and i64 %1, -16777216
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %3 = load %struct.gs_uid_s*, %struct.gs_uid_s** %puid.addr, align 8, !tbaa !1
  %id1 = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %3, i32 0, i32 0
  %4 = load i64, i64* %id1, align 8, !tbaa !72
  %call = call i8* @pprintld1(%struct.stream_s* %2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.37, i32 0, i32 0), i64 %4) #5
  br label %if.end.11

if.else:                                          ; preds = %entry
  %5 = load %struct.gs_uid_s*, %struct.gs_uid_s** %puid.addr, align 8, !tbaa !1
  %id2 = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %5, i32 0, i32 0
  %6 = load i64, i64* %id2, align 8, !tbaa !72
  %cmp3 = icmp slt i64 %6, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  %7 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.gs_uid_s*, %struct.gs_uid_s** %puid.addr, align 8, !tbaa !1
  %id5 = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %9, i32 0, i32 0
  %10 = load i64, i64* %id5, align 8, !tbaa !72
  %sub = sub nsw i64 0, %10
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* %n, align 4, !tbaa !22
  %11 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call6 = call i32 @stream_puts(%struct.stream_s* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0)) #5
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.4
  %12 = load i32, i32* %i, align 4, !tbaa !22
  %13 = load i32, i32* %n, align 4, !tbaa !22
  %cmp7 = icmp ult i32 %12, %13
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %15 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom = zext i32 %15 to i64
  %16 = load %struct.gs_uid_s*, %struct.gs_uid_s** %puid.addr, align 8, !tbaa !1
  %xvalues = getelementptr inbounds %struct.gs_uid_s, %struct.gs_uid_s* %16, i32 0, i32 1
  %17 = load i64*, i64** %xvalues, align 8, !tbaa !73
  %arrayidx = getelementptr inbounds i64, i64* %17, i64 %idxprom
  %18 = load i64, i64* %arrayidx, align 8, !tbaa !5
  %call9 = call i8* @pprintld1(%struct.stream_s* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i64 %18) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4, !tbaa !22
  %inc = add i32 %19, 1
  store i32 %inc, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call10 = call i32 @stream_puts(%struct.stream_s* %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.40, i32 0, i32 0)) #5
  %21 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  br label %if.end

if.end:                                           ; preds = %for.end, %if.else
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.then
  ret void
}

declare i8* @pprintg4(%struct.stream_s*, i8*, double, double, double, double) #2

declare i32 @gs_param_write_items(%struct.gs_param_list_s*, i8*, i8*, %struct.gs_param_item_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @stream_write_encrypted(%struct.stream_s* %s, i8* %ptr, i32 %count) #0 {
entry:
  %s.addr = alloca %struct.stream_s*, align 8
  %ptr.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  %data = alloca i8*, align 8
  %state = alloca i16, align 2
  %buf = alloca [50 x i8], align 16
  %left = alloca i32, align 4
  %n = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !22
  %0 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  store i8* %1, i8** %data, align 8, !tbaa !1
  %2 = bitcast i16* %state to i8*
  call void @llvm.lifetime.start(i64 2, i8* %2) #1
  store i16 4330, i16* %state, align 2, !tbaa !74
  %3 = bitcast [50 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 50, i8* %3) #1
  %4 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 0, i32* %code, align 4, !tbaa !22
  %7 = load i32, i32* %count.addr, align 4, !tbaa !22
  store i32 %7, i32* %left, align 4, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %left, align 4, !tbaa !22
  %cmp = icmp ugt i32 %8, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %left, align 4, !tbaa !22
  %conv = zext i32 %9 to i64
  %cmp1 = icmp ult i64 %conv, 50
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %10 = load i32, i32* %left, align 4, !tbaa !22
  %conv3 = zext i32 %10 to i64
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv3, %cond.true ], [ 50, %cond.false ]
  %conv4 = trunc i64 %cond to i32
  store i32 %conv4, i32* %n, align 4, !tbaa !22
  %arraydecay = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i32 0
  %11 = load i8*, i8** %data, align 8, !tbaa !1
  %12 = load i32, i32* %count.addr, align 4, !tbaa !22
  %idx.ext = zext i32 %12 to i64
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %idx.ext
  %13 = load i32, i32* %left, align 4, !tbaa !22
  %idx.ext5 = zext i32 %13 to i64
  %idx.neg = sub i64 0, %idx.ext5
  %add.ptr6 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  %14 = load i32, i32* %n, align 4, !tbaa !22
  %call = call i32 @gs_type1_encrypt(i8* %arraydecay, i8* %add.ptr6, i32 %14, i16* %state) #5
  %15 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %arraydecay7 = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i32 0
  %16 = load i32, i32* %n, align 4, !tbaa !22
  %call8 = call i32 @stream_write(%struct.stream_s* %15, i8* %arraydecay7, i32 %16) #5
  store i32 %call8, i32* %code, align 4, !tbaa !22
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %17 = load i32, i32* %n, align 4, !tbaa !22
  %18 = load i32, i32* %left, align 4, !tbaa !22
  %sub = sub i32 %18, %17
  store i32 %sub, i32* %left, align 4, !tbaa !22
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %code, align 4, !tbaa !22
  %20 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast [50 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 50, i8* %23) #1
  %24 = bitcast i16* %state to i8*
  call void @llvm.lifetime.end(i64 2, i8* %24) #1
  %25 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  ret i32 %19
}

declare void @s_init(%struct.stream_s*, %struct.gs_memory_s*) #2

declare void @s_init_state(%struct.stream_state_s*, %struct.stream_template_s*, %struct.gs_memory_s*) #2

declare i32 @s_init_filter(%struct.stream_s*, %struct.stream_state_s*, i8*, i32, %struct.stream_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @write_Private(%struct.stream_s* %s, %struct.gs_font_type1_s* %pfont, i64* %subset_glyphs, i32 %subset_size, i64 %notdef, i32 %lenIV, i32 (%struct.stream_s*, i8*, i32)* %write_CharString, %struct.param_printer_params_s* %ppp) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stream_s*, align 8
  %pfont.addr = alloca %struct.gs_font_type1_s*, align 8
  %subset_glyphs.addr = alloca i64*, align 8
  %subset_size.addr = alloca i32, align 4
  %notdef.addr = alloca i64, align 8
  %lenIV.addr = alloca i32, align 4
  %write_CharString.addr = alloca i32 (%struct.stream_s*, i8*, i32)*, align 8
  %ppp.addr = alloca %struct.param_printer_params_s*, align 8
  %pdata = alloca %struct.gs_type1_data_s*, align 8
  %rlist = alloca %struct.printer_param_list_s, align 8
  %plist = alloca %struct.gs_param_list_s*, align 8
  %code = alloca i32, align 4
  %SubrsWithMM = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %defaults = alloca %struct.gs_type1_data_s, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %gdata = alloca %struct.gs_glyph_data_s, align 8
  %code55 = alloca i32, align 4
  %buf = alloca [50 x i8], align 16
  %stripped = alloca i8*, align 8
  %length = alloca i32, align 4
  %num_chars = alloca i32, align 4
  %glyph = alloca i64, align 8
  %genum = alloca %struct.psf_glyph_enum_s, align 8
  %gdata179 = alloca %struct.gs_glyph_data_s, align 8
  %code180 = alloca i32, align 4
  %gstr = alloca %struct.gs_const_string_s, align 8
  %code214 = alloca i32, align 4
  %stripped215 = alloca i8*, align 8
  %data240 = alloca %struct.gs_bytestring_s*, align 8
  store %struct.stream_s* %s, %struct.stream_s** %s.addr, align 8, !tbaa !1
  store %struct.gs_font_type1_s* %pfont, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  store i64* %subset_glyphs, i64** %subset_glyphs.addr, align 8, !tbaa !1
  store i32 %subset_size, i32* %subset_size.addr, align 4, !tbaa !22
  store i64 %notdef, i64* %notdef.addr, align 8, !tbaa !5
  store i32 %lenIV, i32* %lenIV.addr, align 4, !tbaa !22
  store i32 (%struct.stream_s*, i8*, i32)* %write_CharString, i32 (%struct.stream_s*, i8*, i32)** %write_CharString.addr, align 8, !tbaa !1
  store %struct.param_printer_params_s* %ppp, %struct.param_printer_params_s** %ppp.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_type1_data_s** %pdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %1, i32 0, i32 29
  store %struct.gs_type1_data_s* %data, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %2 = bitcast %struct.printer_param_list_s* %rlist to i8*
  call void @llvm.lifetime.start(i64 80, i8* %2) #1
  %3 = bitcast %struct.gs_param_list_s** %plist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.printer_param_list_s* %rlist to %struct.gs_param_list_s*
  store %struct.gs_param_list_s* %4, %struct.gs_param_list_s** %plist, align 8, !tbaa !1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.param_printer_params_s*, %struct.param_printer_params_s** %ppp.addr, align 8, !tbaa !1
  %7 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call = call i32 @s_init_param_printer(%struct.printer_param_list_s* %rlist, %struct.param_printer_params_s* %6, %struct.stream_s* %7) #5
  store i32 %call, i32* %code, align 4, !tbaa !22
  %8 = bitcast i8** %SubrsWithMM to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store i8* null, i8** %SubrsWithMM, align 8, !tbaa !1
  %9 = load i32, i32* %code, align 4, !tbaa !22
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.304

if.end:                                           ; preds = %entry
  %10 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call1 = call i32 @stream_puts(%struct.stream_s* %10, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.41, i32 0, i32 0)) #5
  %11 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call2 = call i32 @stream_puts(%struct.stream_s* %11, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.42, i32 0, i32 0)) #5
  %12 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call3 = call i32 @stream_puts(%struct.stream_s* %12, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.43, i32 0, i32 0)) #5
  %13 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call4 = call i32 @stream_puts(%struct.stream_s* %13, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.44, i32 0, i32 0)) #5
  %14 = bitcast %struct.gs_type1_data_s* %defaults to i8*
  call void @llvm.lifetime.start(i64 544, i8* %14) #1
  %BlueFuzz = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %defaults, i32 0, i32 10
  store i32 1, i32* %BlueFuzz, align 4, !tbaa !75
  %BlueScale = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %defaults, i32 0, i32 11
  store float 0x3FA449BA60000000, float* %BlueScale, align 4, !tbaa !76
  %BlueShift = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %defaults, i32 0, i32 12
  store float 7.000000e+00, float* %BlueShift, align 4, !tbaa !77
  %ExpansionFactor = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %defaults, i32 0, i32 14
  store float 0x3FAEB851E0000000, float* %ExpansionFactor, align 4, !tbaa !78
  %ForceBold = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %defaults, i32 0, i32 15
  store i32 0, i32* %ForceBold, align 4, !tbaa !79
  %LanguageGroup = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %defaults, i32 0, i32 18
  store i32 0, i32* %LanguageGroup, align 4, !tbaa !80
  %RndStemUp = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %defaults, i32 0, i32 20
  store i32 1, i32* %RndStemUp, align 4, !tbaa !81
  %15 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist, align 8, !tbaa !1
  %16 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %17 = bitcast %struct.gs_type1_data_s* %16 to i8*
  %18 = bitcast %struct.gs_type1_data_s* %defaults to i8*
  %call5 = call i32 @gs_param_write_items(%struct.gs_param_list_s* %15, i8* %17, i8* %18, %struct.gs_param_item_s* getelementptr inbounds ([8 x %struct.gs_param_item_s], [8 x %struct.gs_param_item_s]* @write_Private.private_items, i32 0, i32 0)) #5
  store i32 %call5, i32* %code, align 4, !tbaa !22
  %19 = load i32, i32* %code, align 4, !tbaa !22
  %cmp6 = icmp slt i32 %19, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  %20 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end
  %21 = load i32, i32* %lenIV.addr, align 4, !tbaa !22
  %cmp9 = icmp ne i32 %21, 4
  br i1 %cmp9, label %if.then.10, label %if.end.15

if.then.10:                                       ; preds = %if.end.8
  %22 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist, align 8, !tbaa !1
  %call11 = call i32 @param_write_int(%struct.gs_param_list_s* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), i32* %lenIV.addr) #5
  store i32 %call11, i32* %code, align 4, !tbaa !22
  %23 = load i32, i32* %code, align 4, !tbaa !22
  %cmp12 = icmp slt i32 %23, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.10
  %24 = load i32, i32* %code, align 4, !tbaa !22
  store i32 %24, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.then.10
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.end.8
  %25 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist, align 8, !tbaa !1
  %26 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %BlueValues = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %26, i32 0, i32 13
  %values = getelementptr inbounds %struct.anon, %struct.anon* %BlueValues, i32 0, i32 1
  %arraydecay = getelementptr inbounds [14 x float], [14 x float]* %values, i32 0, i32 0
  %27 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %BlueValues16 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %27, i32 0, i32 13
  %count = getelementptr inbounds %struct.anon, %struct.anon* %BlueValues16, i32 0, i32 0
  %28 = load i32, i32* %count, align 4, !tbaa !82
  %call17 = call i32 @write_float_array(%struct.gs_param_list_s* %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.53, i32 0, i32 0), float* %arraydecay, i32 %28) #5
  %29 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist, align 8, !tbaa !1
  %30 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %OtherBlues = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %30, i32 0, i32 19
  %values18 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %OtherBlues, i32 0, i32 1
  %arraydecay19 = getelementptr inbounds [10 x float], [10 x float]* %values18, i32 0, i32 0
  %31 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %OtherBlues20 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %31, i32 0, i32 19
  %count21 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %OtherBlues20, i32 0, i32 0
  %32 = load i32, i32* %count21, align 4, !tbaa !83
  %call22 = call i32 @write_float_array(%struct.gs_param_list_s* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i32 0, i32 0), float* %arraydecay19, i32 %32) #5
  %33 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist, align 8, !tbaa !1
  %34 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %FamilyBlues = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %34, i32 0, i32 16
  %values23 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %FamilyBlues, i32 0, i32 1
  %arraydecay24 = getelementptr inbounds [14 x float], [14 x float]* %values23, i32 0, i32 0
  %35 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %FamilyBlues25 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %35, i32 0, i32 16
  %count26 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %FamilyBlues25, i32 0, i32 0
  %36 = load i32, i32* %count26, align 4, !tbaa !84
  %call27 = call i32 @write_float_array(%struct.gs_param_list_s* %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.55, i32 0, i32 0), float* %arraydecay24, i32 %36) #5
  %37 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist, align 8, !tbaa !1
  %38 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %FamilyOtherBlues = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %38, i32 0, i32 17
  %values28 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %FamilyOtherBlues, i32 0, i32 1
  %arraydecay29 = getelementptr inbounds [10 x float], [10 x float]* %values28, i32 0, i32 0
  %39 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %FamilyOtherBlues30 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %39, i32 0, i32 17
  %count31 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %FamilyOtherBlues30, i32 0, i32 0
  %40 = load i32, i32* %count31, align 4, !tbaa !85
  %call32 = call i32 @write_float_array(%struct.gs_param_list_s* %37, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.56, i32 0, i32 0), float* %arraydecay29, i32 %40) #5
  %41 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist, align 8, !tbaa !1
  %42 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %StdHW = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %42, i32 0, i32 21
  %values33 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %StdHW, i32 0, i32 1
  %arraydecay34 = getelementptr inbounds [1 x float], [1 x float]* %values33, i32 0, i32 0
  %43 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %StdHW35 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %43, i32 0, i32 21
  %count36 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %StdHW35, i32 0, i32 0
  %44 = load i32, i32* %count36, align 4, !tbaa !86
  %call37 = call i32 @write_float_array(%struct.gs_param_list_s* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i32 0, i32 0), float* %arraydecay34, i32 %44) #5
  %45 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist, align 8, !tbaa !1
  %46 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %StdVW = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %46, i32 0, i32 22
  %values38 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %StdVW, i32 0, i32 1
  %arraydecay39 = getelementptr inbounds [1 x float], [1 x float]* %values38, i32 0, i32 0
  %47 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %StdVW40 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %47, i32 0, i32 22
  %count41 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %StdVW40, i32 0, i32 0
  %48 = load i32, i32* %count41, align 4, !tbaa !87
  %call42 = call i32 @write_float_array(%struct.gs_param_list_s* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0), float* %arraydecay39, i32 %48) #5
  %49 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist, align 8, !tbaa !1
  %50 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %StemSnapH = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %50, i32 0, i32 23
  %values43 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %StemSnapH, i32 0, i32 1
  %arraydecay44 = getelementptr inbounds [12 x float], [12 x float]* %values43, i32 0, i32 0
  %51 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %StemSnapH45 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %51, i32 0, i32 23
  %count46 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %StemSnapH45, i32 0, i32 0
  %52 = load i32, i32* %count46, align 4, !tbaa !88
  %call47 = call i32 @write_float_array(%struct.gs_param_list_s* %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), float* %arraydecay44, i32 %52) #5
  %53 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist, align 8, !tbaa !1
  %54 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %StemSnapV = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %54, i32 0, i32 24
  %values48 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %StemSnapV, i32 0, i32 1
  %arraydecay49 = getelementptr inbounds [12 x float], [12 x float]* %values48, i32 0, i32 0
  %55 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %StemSnapV50 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %55, i32 0, i32 24
  %count51 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %StemSnapV50, i32 0, i32 0
  %56 = load i32, i32* %count51, align 4, !tbaa !89
  %call52 = call i32 @write_float_array(%struct.gs_param_list_s* %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.60, i32 0, i32 0), float* %arraydecay49, i32 %56) #5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.15, %if.then.13, %if.then.7
  %57 = bitcast %struct.gs_type1_data_s* %defaults to i8*
  call void @llvm.lifetime.end(i64 544, i8* %57) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.304 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %58 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %59 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %UID = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %59, i32 0, i32 24
  call void @write_uid(%struct.stream_s* %58, %struct.gs_uid_s* %UID) #5
  %60 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call53 = call i32 @stream_puts(%struct.stream_s* %60, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.61, i32 0, i32 0)) #5
  %61 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call54 = call i32 @stream_puts(%struct.stream_s* %61, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.62, i32 0, i32 0)) #5
  %62 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %62) #1
  %63 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %63) #1
  %64 = bitcast %struct.gs_glyph_data_s* %gdata to i8*
  call void @llvm.lifetime.start(i64 48, i8* %64) #1
  %65 = bitcast i32* %code55 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %65) #1
  %66 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %66, i32 0, i32 2
  %67 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !90
  %memory56 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata, i32 0, i32 3
  store %struct.gs_memory_s* %67, %struct.gs_memory_s** %memory56, align 8, !tbaa !91
  store i32 0, i32* %n, align 4, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %if.end.61, %cleanup.cont
  %68 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %68, i32 0, i32 0
  %subr_data = getelementptr inbounds %struct.gs_type1_data_procs_s, %struct.gs_type1_data_procs_s* %procs, i32 0, i32 1
  %69 = load i32 (%struct.gs_font_type1_s*, i32, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type1_s*, i32, i32, %struct.gs_glyph_data_s*)** %subr_data, align 8, !tbaa !94
  %70 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %71 = load i32, i32* %n, align 4, !tbaa !22
  %call57 = call i32 %69(%struct.gs_font_type1_s* %70, i32 %71, i32 0, %struct.gs_glyph_data_s* %gdata) #5
  store i32 %call57, i32* %code55, align 4, !tbaa !22
  %cmp58 = icmp ne i32 %call57, -15
  br i1 %cmp58, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %72 = load i32, i32* %n, align 4, !tbaa !22
  %inc = add nsw i32 %72, 1
  store i32 %inc, i32* %n, align 4, !tbaa !22
  %73 = load i32, i32* %code55, align 4, !tbaa !22
  %cmp59 = icmp sge i32 %73, 0
  br i1 %cmp59, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %for.body
  call void @gs_glyph_data_free(%struct.gs_glyph_data_s* %gdata, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.63, i32 0, i32 0)) #5
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %for.body
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %74 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data62 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %74, i32 0, i32 29
  %WeightVector = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data62, i32 0, i32 25
  %count63 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %WeightVector, i32 0, i32 0
  %75 = load i32, i32* %count63, align 4, !tbaa !95
  %cmp64 = icmp ne i32 %75, 0
  br i1 %cmp64, label %if.then.65, label %if.end.70

if.then.65:                                       ; preds = %for.end
  %76 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %memory66 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %76, i32 0, i32 2
  %77 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory66, align 8, !tbaa !90
  %procs67 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %77, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs67, i32 0, i32 7
  %78 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !96
  %79 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %memory68 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %79, i32 0, i32 2
  %80 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory68, align 8, !tbaa !90
  %81 = load i32, i32* %n, align 4, !tbaa !22
  %call69 = call i8* %78(%struct.gs_memory_s* %80, i32 %81, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.64, i32 0, i32 0)) #5
  store i8* %call69, i8** %SubrsWithMM, align 8, !tbaa !1
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.65, %for.end
  %82 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %83 = load i32, i32* %n, align 4, !tbaa !22
  %call71 = call i8* @pprintd1(%struct.stream_s* %82, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.65, i32 0, i32 0), i32 %83) #5
  %84 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data72 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %84, i32 0, i32 29
  %WeightVector73 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data72, i32 0, i32 25
  %count74 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %WeightVector73, i32 0, i32 0
  %85 = load i32, i32* %count74, align 4, !tbaa !95
  %cmp75 = icmp ne i32 %85, 0
  br i1 %cmp75, label %if.then.76, label %if.end.101

if.then.76:                                       ; preds = %if.end.70
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond.77

for.cond.77:                                      ; preds = %for.inc, %if.then.76
  %86 = load i32, i32* %i, align 4, !tbaa !22
  %87 = load i32, i32* %n, align 4, !tbaa !22
  %cmp78 = icmp slt i32 %86, %87
  br i1 %cmp78, label %for.body.79, label %for.end.100

for.body.79:                                      ; preds = %for.cond.77
  %88 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %procs80 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %88, i32 0, i32 0
  %subr_data81 = getelementptr inbounds %struct.gs_type1_data_procs_s, %struct.gs_type1_data_procs_s* %procs80, i32 0, i32 1
  %89 = load i32 (%struct.gs_font_type1_s*, i32, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type1_s*, i32, i32, %struct.gs_glyph_data_s*)** %subr_data81, align 8, !tbaa !94
  %90 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %91 = load i32, i32* %i, align 4, !tbaa !22
  %call82 = call i32 %89(%struct.gs_font_type1_s* %90, i32 %91, i32 0, %struct.gs_glyph_data_s* %gdata) #5
  store i32 %call82, i32* %code55, align 4, !tbaa !22
  %cmp83 = icmp sge i32 %call82, 0
  br i1 %cmp83, label %if.then.84, label %if.end.98

if.then.84:                                       ; preds = %for.body.79
  %92 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %call85 = call i32 @CheckSubrForMM(%struct.gs_glyph_data_s* %gdata, %struct.gs_font_type1_s* %92) #5
  store i32 %call85, i32* %code55, align 4, !tbaa !22
  %93 = load i32, i32* %code55, align 4, !tbaa !22
  %cmp86 = icmp slt i32 %93, 0
  br i1 %cmp86, label %if.then.87, label %if.end.94

if.then.87:                                       ; preds = %if.then.84
  %94 = load i8*, i8** %SubrsWithMM, align 8, !tbaa !1
  %cmp88 = icmp ne i8* %94, null
  br i1 %cmp88, label %if.then.89, label %if.end.93

if.then.89:                                       ; preds = %if.then.87
  %95 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %memory90 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %95, i32 0, i32 2
  %96 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory90, align 8, !tbaa !90
  %procs91 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %96, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs91, i32 0, i32 2
  %97 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !99
  %98 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %memory92 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %98, i32 0, i32 2
  %99 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory92, align 8, !tbaa !90
  %100 = load i8*, i8** %SubrsWithMM, align 8, !tbaa !1
  call void %97(%struct.gs_memory_s* %99, i8* %100, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.66, i32 0, i32 0)) #5
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.89, %if.then.87
  %101 = load i32, i32* %code55, align 4, !tbaa !22
  store i32 %101, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.173

if.end.94:                                        ; preds = %if.then.84
  %102 = load i8*, i8** %SubrsWithMM, align 8, !tbaa !1
  %cmp95 = icmp ne i8* %102, null
  br i1 %cmp95, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %if.end.94
  %103 = load i32, i32* %code55, align 4, !tbaa !22
  %conv = trunc i32 %103 to i8
  %104 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom = sext i32 %104 to i64
  %105 = load i8*, i8** %SubrsWithMM, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %105, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1, !tbaa !60
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.96, %if.end.94
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %for.body.79
  br label %for.inc

for.inc:                                          ; preds = %if.end.98
  %106 = load i32, i32* %i, align 4, !tbaa !22
  %inc99 = add nsw i32 %106, 1
  store i32 %inc99, i32* %i, align 4, !tbaa !22
  br label %for.cond.77

for.end.100:                                      ; preds = %for.cond.77
  br label %if.end.101

if.end.101:                                       ; preds = %for.end.100, %if.end.70
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond.102

for.cond.102:                                     ; preds = %for.inc.169, %if.end.101
  %107 = load i32, i32* %i, align 4, !tbaa !22
  %108 = load i32, i32* %n, align 4, !tbaa !22
  %cmp103 = icmp slt i32 %107, %108
  br i1 %cmp103, label %for.body.105, label %for.end.171

for.body.105:                                     ; preds = %for.cond.102
  %109 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %procs106 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %109, i32 0, i32 0
  %subr_data107 = getelementptr inbounds %struct.gs_type1_data_procs_s, %struct.gs_type1_data_procs_s* %procs106, i32 0, i32 1
  %110 = load i32 (%struct.gs_font_type1_s*, i32, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type1_s*, i32, i32, %struct.gs_glyph_data_s*)** %subr_data107, align 8, !tbaa !94
  %111 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %112 = load i32, i32* %i, align 4, !tbaa !22
  %call108 = call i32 %110(%struct.gs_font_type1_s* %111, i32 %112, i32 0, %struct.gs_glyph_data_s* %gdata) #5
  store i32 %call108, i32* %code55, align 4, !tbaa !22
  %cmp109 = icmp sge i32 %call108, 0
  br i1 %cmp109, label %if.then.111, label %if.end.168

if.then.111:                                      ; preds = %for.body.105
  %113 = bitcast [50 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 50, i8* %113) #1
  %bits = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata, i32 0, i32 0
  %size = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits, i32 0, i32 1
  %114 = load i32, i32* %size, align 4, !tbaa !100
  %tobool = icmp ne i32 %114, 0
  br i1 %tobool, label %if.then.112, label %if.end.164

if.then.112:                                      ; preds = %if.then.111
  %115 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data113 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %115, i32 0, i32 29
  %WeightVector114 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data113, i32 0, i32 25
  %count115 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %WeightVector114, i32 0, i32 0
  %116 = load i32, i32* %count115, align 4, !tbaa !95
  %cmp116 = icmp ne i32 %116, 0
  br i1 %cmp116, label %if.then.118, label %if.else

if.then.118:                                      ; preds = %if.then.112
  %117 = bitcast i8** %stripped to i8*
  call void @llvm.lifetime.start(i64 8, i8* %117) #1
  %118 = bitcast i32* %length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %118) #1
  %119 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %120 = load i8*, i8** %SubrsWithMM, align 8, !tbaa !1
  %call119 = call i32 @strip_othersubrs(%struct.gs_glyph_data_s* %gdata, %struct.gs_font_type1_s* %119, i8* null, i8* %120) #5
  store i32 %call119, i32* %length, align 4, !tbaa !22
  %121 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %memory120 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %121, i32 0, i32 2
  %122 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory120, align 8, !tbaa !90
  %procs121 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %122, i32 0, i32 1
  %alloc_bytes122 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs121, i32 0, i32 7
  %123 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes122, align 8, !tbaa !96
  %124 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %memory123 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %124, i32 0, i32 2
  %125 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory123, align 8, !tbaa !90
  %126 = load i32, i32* %length, align 4, !tbaa !22
  %call124 = call i8* %123(%struct.gs_memory_s* %125, i32 %126, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i32 0, i32 0)) #5
  store i8* %call124, i8** %stripped, align 8, !tbaa !1
  %127 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %128 = load i8*, i8** %stripped, align 8, !tbaa !1
  %129 = load i8*, i8** %SubrsWithMM, align 8, !tbaa !1
  %call125 = call i32 @strip_othersubrs(%struct.gs_glyph_data_s* %gdata, %struct.gs_font_type1_s* %127, i8* %128, i8* %129) #5
  store i32 %call125, i32* %code55, align 4, !tbaa !22
  %130 = load i32, i32* %code55, align 4, !tbaa !22
  %cmp126 = icmp slt i32 %130, 0
  br i1 %cmp126, label %if.then.128, label %if.end.137

if.then.128:                                      ; preds = %if.then.118
  %131 = load i8*, i8** %SubrsWithMM, align 8, !tbaa !1
  %cmp129 = icmp ne i8* %131, null
  br i1 %cmp129, label %if.then.131, label %if.end.136

if.then.131:                                      ; preds = %if.then.128
  %132 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %memory132 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %132, i32 0, i32 2
  %133 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory132, align 8, !tbaa !90
  %procs133 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %133, i32 0, i32 1
  %free_object134 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs133, i32 0, i32 2
  %134 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object134, align 8, !tbaa !99
  %135 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %memory135 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %135, i32 0, i32 2
  %136 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory135, align 8, !tbaa !90
  %137 = load i8*, i8** %SubrsWithMM, align 8, !tbaa !1
  call void %134(%struct.gs_memory_s* %136, i8* %137, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.66, i32 0, i32 0)) #5
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.131, %if.then.128
  %138 = load i32, i32* %code55, align 4, !tbaa !22
  store i32 %138, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.147

if.end.137:                                       ; preds = %if.then.118
  %arraydecay138 = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i32 0
  %139 = load i32, i32* %i, align 4, !tbaa !22
  %140 = load i32, i32* %code55, align 4, !tbaa !22
  %call139 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay138, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.68, i32 0, i32 0), i32 %139, i32 %140) #5
  %141 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %arraydecay140 = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i32 0
  %call141 = call i32 @stream_puts(%struct.stream_s* %141, i8* %arraydecay140) #5
  %142 = load i32 (%struct.stream_s*, i8*, i32)*, i32 (%struct.stream_s*, i8*, i32)** %write_CharString.addr, align 8, !tbaa !1
  %143 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %144 = load i8*, i8** %stripped, align 8, !tbaa !1
  %145 = load i32, i32* %code55, align 4, !tbaa !22
  %call142 = call i32 %142(%struct.stream_s* %143, i8* %144, i32 %145) #5
  %146 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %memory143 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %146, i32 0, i32 2
  %147 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory143, align 8, !tbaa !90
  %procs144 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %147, i32 0, i32 1
  %free_object145 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs144, i32 0, i32 2
  %148 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object145, align 8, !tbaa !99
  %149 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %memory146 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %149, i32 0, i32 2
  %150 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory146, align 8, !tbaa !90
  %151 = load i8*, i8** %stripped, align 8, !tbaa !1
  call void %148(%struct.gs_memory_s* %150, i8* %151, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.69, i32 0, i32 0)) #5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.147

cleanup.147:                                      ; preds = %if.end.137, %if.end.136
  %152 = bitcast i32* %length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %152) #1
  %153 = bitcast i8** %stripped to i8*
  call void @llvm.lifetime.end(i64 8, i8* %153) #1
  %cleanup.dest.149 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.149, label %cleanup.165 [
    i32 0, label %cleanup.cont.150
  ]

cleanup.cont.150:                                 ; preds = %cleanup.147
  br label %if.end.162

if.else:                                          ; preds = %if.then.112
  %arraydecay151 = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i32 0
  %154 = load i32, i32* %i, align 4, !tbaa !22
  %bits152 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata, i32 0, i32 0
  %size153 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits152, i32 0, i32 1
  %155 = load i32, i32* %size153, align 4, !tbaa !100
  %call154 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay151, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.68, i32 0, i32 0), i32 %154, i32 %155) #5
  %156 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %arraydecay155 = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i32 0
  %call156 = call i32 @stream_puts(%struct.stream_s* %156, i8* %arraydecay155) #5
  %157 = load i32 (%struct.stream_s*, i8*, i32)*, i32 (%struct.stream_s*, i8*, i32)** %write_CharString.addr, align 8, !tbaa !1
  %158 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %bits157 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata, i32 0, i32 0
  %data158 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits157, i32 0, i32 0
  %159 = load i8*, i8** %data158, align 8, !tbaa !101
  %bits159 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata, i32 0, i32 0
  %size160 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits159, i32 0, i32 1
  %160 = load i32, i32* %size160, align 4, !tbaa !100
  %call161 = call i32 %157(%struct.stream_s* %158, i8* %159, i32 %160) #5
  br label %if.end.162

if.end.162:                                       ; preds = %if.else, %cleanup.cont.150
  %161 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call163 = call i32 @stream_puts(%struct.stream_s* %161, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.70, i32 0, i32 0)) #5
  br label %if.end.164

if.end.164:                                       ; preds = %if.end.162, %if.then.111
  call void @gs_glyph_data_free(%struct.gs_glyph_data_s* %gdata, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.63, i32 0, i32 0)) #5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.165

cleanup.165:                                      ; preds = %if.end.164, %cleanup.147
  %162 = bitcast [50 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 50, i8* %162) #1
  %cleanup.dest.166 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.166, label %cleanup.173 [
    i32 0, label %cleanup.cont.167
  ]

cleanup.cont.167:                                 ; preds = %cleanup.165
  br label %if.end.168

if.end.168:                                       ; preds = %cleanup.cont.167, %for.body.105
  br label %for.inc.169

for.inc.169:                                      ; preds = %if.end.168
  %163 = load i32, i32* %i, align 4, !tbaa !22
  %inc170 = add nsw i32 %163, 1
  store i32 %inc170, i32* %i, align 4, !tbaa !22
  br label %for.cond.102

for.end.171:                                      ; preds = %for.cond.102
  %164 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call172 = call i32 @stream_puts(%struct.stream_s* %164, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.71, i32 0, i32 0)) #5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.173

cleanup.173:                                      ; preds = %for.end.171, %cleanup.165, %if.end.93
  %165 = bitcast i32* %code55 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %165) #1
  %166 = bitcast %struct.gs_glyph_data_s* %gdata to i8*
  call void @llvm.lifetime.end(i64 48, i8* %166) #1
  %167 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %167) #1
  %168 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %168) #1
  %cleanup.dest.177 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.177, label %cleanup.304 [
    i32 0, label %cleanup.cont.178
  ]

cleanup.cont.178:                                 ; preds = %cleanup.173
  %169 = bitcast i32* %num_chars to i8*
  call void @llvm.lifetime.start(i64 4, i8* %169) #1
  store i32 0, i32* %num_chars, align 4, !tbaa !22
  %170 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %170) #1
  %171 = bitcast %struct.psf_glyph_enum_s* %genum to i8*
  call void @llvm.lifetime.start(i64 48, i8* %171) #1
  %172 = bitcast %struct.gs_glyph_data_s* %gdata179 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %172) #1
  %173 = bitcast i32* %code180 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %173) #1
  %174 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %memory181 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %174, i32 0, i32 2
  %175 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory181, align 8, !tbaa !90
  %memory182 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata179, i32 0, i32 3
  store %struct.gs_memory_s* %175, %struct.gs_memory_s** %memory182, align 8, !tbaa !91
  %176 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %177 = bitcast %struct.gs_font_type1_s* %176 to %struct.gs_font_s*
  %178 = load i64*, i64** %subset_glyphs.addr, align 8, !tbaa !1
  %179 = load i64*, i64** %subset_glyphs.addr, align 8, !tbaa !1
  %tobool183 = icmp ne i64* %179, null
  br i1 %tobool183, label %cond.true, label %cond.false

cond.true:                                        ; preds = %cleanup.cont.178
  %180 = load i32, i32* %subset_size.addr, align 4, !tbaa !22
  br label %cond.end

cond.false:                                       ; preds = %cleanup.cont.178
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %180, %cond.true ], [ 0, %cond.false ]
  call void @psf_enumerate_list_begin(%struct.psf_glyph_enum_s* %genum, %struct.gs_font_s* %177, i64* %178, i32 %cond, i32 0) #5
  store i64 2147483647, i64* %glyph, align 8, !tbaa !5
  br label %for.cond.184

for.cond.184:                                     ; preds = %if.end.197, %cond.end
  %call185 = call i32 @psf_enumerate_glyphs_next(%struct.psf_glyph_enum_s* %genum, i64* %glyph) #5
  store i32 %call185, i32* %code180, align 4, !tbaa !22
  %cmp186 = icmp ne i32 %call185, 1
  br i1 %cmp186, label %for.body.188, label %for.end.198

for.body.188:                                     ; preds = %for.cond.184
  %181 = load i32, i32* %code180, align 4, !tbaa !22
  %cmp189 = icmp eq i32 %181, 0
  br i1 %cmp189, label %land.lhs.true, label %if.end.197

land.lhs.true:                                    ; preds = %for.body.188
  %182 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %procs191 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %182, i32 0, i32 0
  %glyph_data = getelementptr inbounds %struct.gs_type1_data_procs_s, %struct.gs_type1_data_procs_s* %procs191, i32 0, i32 0
  %183 = load i32 (%struct.gs_font_type1_s*, i64, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type1_s*, i64, %struct.gs_glyph_data_s*)** %glyph_data, align 8, !tbaa !102
  %184 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %185 = load i64, i64* %glyph, align 8, !tbaa !5
  %call192 = call i32 %183(%struct.gs_font_type1_s* %184, i64 %185, %struct.gs_glyph_data_s* %gdata179) #5
  store i32 %call192, i32* %code180, align 4, !tbaa !22
  %cmp193 = icmp sge i32 %call192, 0
  br i1 %cmp193, label %if.then.195, label %if.end.197

if.then.195:                                      ; preds = %land.lhs.true
  %186 = load i32, i32* %num_chars, align 4, !tbaa !22
  %inc196 = add nsw i32 %186, 1
  store i32 %inc196, i32* %num_chars, align 4, !tbaa !22
  call void @gs_glyph_data_free(%struct.gs_glyph_data_s* %gdata179, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.72, i32 0, i32 0)) #5
  br label %if.end.197

if.end.197:                                       ; preds = %if.then.195, %land.lhs.true, %for.body.188
  br label %for.cond.184

for.end.198:                                      ; preds = %for.cond.184
  %187 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %188 = load i32, i32* %num_chars, align 4, !tbaa !22
  %call199 = call i8* @pprintd1(%struct.stream_s* %187, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.73, i32 0, i32 0), i32 %188) #5
  call void @psf_enumerate_glyphs_reset(%struct.psf_glyph_enum_s* %genum) #5
  store i64 2147483647, i64* %glyph, align 8, !tbaa !5
  br label %for.cond.200

for.cond.200:                                     ; preds = %if.end.286, %for.end.198
  %call201 = call i32 @psf_enumerate_glyphs_next(%struct.psf_glyph_enum_s* %genum, i64* %glyph) #5
  store i32 %call201, i32* %code180, align 4, !tbaa !22
  %cmp202 = icmp ne i32 %call201, 1
  br i1 %cmp202, label %for.body.204, label %for.end.287

for.body.204:                                     ; preds = %for.cond.200
  %189 = load i32, i32* %code180, align 4, !tbaa !22
  %cmp205 = icmp eq i32 %189, 0
  br i1 %cmp205, label %land.lhs.true.207, label %if.end.286

land.lhs.true.207:                                ; preds = %for.body.204
  %190 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %pdata, align 8, !tbaa !1
  %procs208 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %190, i32 0, i32 0
  %glyph_data209 = getelementptr inbounds %struct.gs_type1_data_procs_s, %struct.gs_type1_data_procs_s* %procs208, i32 0, i32 0
  %191 = load i32 (%struct.gs_font_type1_s*, i64, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type1_s*, i64, %struct.gs_glyph_data_s*)** %glyph_data209, align 8, !tbaa !102
  %192 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %193 = load i64, i64* %glyph, align 8, !tbaa !5
  %call210 = call i32 %191(%struct.gs_font_type1_s* %192, i64 %193, %struct.gs_glyph_data_s* %gdata179) #5
  store i32 %call210, i32* %code180, align 4, !tbaa !22
  %cmp211 = icmp sge i32 %call210, 0
  br i1 %cmp211, label %if.then.213, label %if.end.286

if.then.213:                                      ; preds = %land.lhs.true.207
  %194 = bitcast %struct.gs_const_string_s* %gstr to i8*
  call void @llvm.lifetime.start(i64 16, i8* %194) #1
  %195 = bitcast i32* %code214 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %195) #1
  %196 = bitcast i8** %stripped215 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %196) #1
  %197 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %procs216 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %197, i32 0, i32 20
  %glyph_name = getelementptr inbounds %struct.gs_font_procs_s, %struct.gs_font_procs_s* %procs216, i32 0, i32 9
  %198 = load i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)** %glyph_name, align 8, !tbaa !71
  %199 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %200 = bitcast %struct.gs_font_type1_s* %199 to %struct.gs_font_s*
  %201 = load i64, i64* %glyph, align 8, !tbaa !5
  %call217 = call i32 %198(%struct.gs_font_s* %200, i64 %201, %struct.gs_const_string_s* %gstr) #5
  store i32 %call217, i32* %code214, align 4, !tbaa !22
  %202 = load i32, i32* %code214, align 4, !tbaa !22
  %cmp218 = icmp slt i32 %202, 0
  br i1 %cmp218, label %if.then.220, label %if.end.229

if.then.220:                                      ; preds = %if.then.213
  %203 = load i8*, i8** %SubrsWithMM, align 8, !tbaa !1
  %cmp221 = icmp ne i8* %203, null
  br i1 %cmp221, label %if.then.223, label %if.end.228

if.then.223:                                      ; preds = %if.then.220
  %204 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %memory224 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %204, i32 0, i32 2
  %205 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory224, align 8, !tbaa !90
  %procs225 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %205, i32 0, i32 1
  %free_object226 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs225, i32 0, i32 2
  %206 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object226, align 8, !tbaa !99
  %207 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %memory227 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %207, i32 0, i32 2
  %208 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory227, align 8, !tbaa !90
  %209 = load i8*, i8** %SubrsWithMM, align 8, !tbaa !1
  call void %206(%struct.gs_memory_s* %208, i8* %209, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.66, i32 0, i32 0)) #5
  br label %if.end.228

if.end.228:                                       ; preds = %if.then.223, %if.then.220
  %210 = load i32, i32* %code214, align 4, !tbaa !22
  store i32 %210, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.281

if.end.229:                                       ; preds = %if.then.213
  %211 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call230 = call i32 @stream_puts(%struct.stream_s* %211, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0)) #5
  %212 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %data231 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gstr, i32 0, i32 0
  %213 = load i8*, i8** %data231, align 8, !tbaa !57
  %size232 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %gstr, i32 0, i32 1
  %214 = load i32, i32* %size232, align 4, !tbaa !58
  %call233 = call i32 @stream_write(%struct.stream_s* %212, i8* %213, i32 %214) #5
  %215 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data234 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %215, i32 0, i32 29
  %WeightVector235 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data234, i32 0, i32 25
  %count236 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %WeightVector235, i32 0, i32 0
  %216 = load i32, i32* %count236, align 4, !tbaa !95
  %cmp237 = icmp ne i32 %216, 0
  br i1 %cmp237, label %if.then.239, label %if.else.270

if.then.239:                                      ; preds = %if.end.229
  %217 = bitcast %struct.gs_bytestring_s** %data240 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %217) #1
  %bits241 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata179, i32 0, i32 0
  %218 = bitcast %struct.gs_const_bytestring_s* %bits241 to %struct.gs_bytestring_s*
  store %struct.gs_bytestring_s* %218, %struct.gs_bytestring_s** %data240, align 8, !tbaa !1
  %219 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %memory242 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %219, i32 0, i32 2
  %220 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory242, align 8, !tbaa !90
  %procs243 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %220, i32 0, i32 1
  %alloc_bytes244 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs243, i32 0, i32 7
  %221 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes244, align 8, !tbaa !96
  %222 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %memory245 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %222, i32 0, i32 2
  %223 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory245, align 8, !tbaa !90
  %224 = load %struct.gs_bytestring_s*, %struct.gs_bytestring_s** %data240, align 8, !tbaa !1
  %size246 = getelementptr inbounds %struct.gs_bytestring_s, %struct.gs_bytestring_s* %224, i32 0, i32 1
  %225 = load i32, i32* %size246, align 4, !tbaa !103
  %call247 = call i8* %221(%struct.gs_memory_s* %223, i32 %225, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.74, i32 0, i32 0)) #5
  store i8* %call247, i8** %stripped215, align 8, !tbaa !1
  %226 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %227 = load i8*, i8** %stripped215, align 8, !tbaa !1
  %228 = load i8*, i8** %SubrsWithMM, align 8, !tbaa !1
  %call248 = call i32 @strip_othersubrs(%struct.gs_glyph_data_s* %gdata179, %struct.gs_font_type1_s* %226, i8* %227, i8* %228) #5
  store i32 %call248, i32* %code214, align 4, !tbaa !22
  %229 = load i32, i32* %code214, align 4, !tbaa !22
  %cmp249 = icmp slt i32 %229, 0
  br i1 %cmp249, label %if.then.251, label %if.end.260

if.then.251:                                      ; preds = %if.then.239
  %230 = load i8*, i8** %SubrsWithMM, align 8, !tbaa !1
  %cmp252 = icmp ne i8* %230, null
  br i1 %cmp252, label %if.then.254, label %if.end.259

if.then.254:                                      ; preds = %if.then.251
  %231 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %memory255 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %231, i32 0, i32 2
  %232 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory255, align 8, !tbaa !90
  %procs256 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %232, i32 0, i32 1
  %free_object257 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs256, i32 0, i32 2
  %233 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object257, align 8, !tbaa !99
  %234 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %memory258 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %234, i32 0, i32 2
  %235 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory258, align 8, !tbaa !90
  %236 = load i8*, i8** %SubrsWithMM, align 8, !tbaa !1
  call void %233(%struct.gs_memory_s* %235, i8* %236, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.66, i32 0, i32 0)) #5
  br label %if.end.259

if.end.259:                                       ; preds = %if.then.254, %if.then.251
  %237 = load i32, i32* %code214, align 4, !tbaa !22
  store i32 %237, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.267

if.end.260:                                       ; preds = %if.then.239
  %238 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %239 = load i32, i32* %code214, align 4, !tbaa !22
  %call261 = call i8* @pprintd1(%struct.stream_s* %238, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.75, i32 0, i32 0), i32 %239) #5
  %240 = load i32 (%struct.stream_s*, i8*, i32)*, i32 (%struct.stream_s*, i8*, i32)** %write_CharString.addr, align 8, !tbaa !1
  %241 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %242 = load i8*, i8** %stripped215, align 8, !tbaa !1
  %243 = load i32, i32* %code214, align 4, !tbaa !22
  %call262 = call i32 %240(%struct.stream_s* %241, i8* %242, i32 %243) #5
  %244 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %memory263 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %244, i32 0, i32 2
  %245 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory263, align 8, !tbaa !90
  %procs264 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %245, i32 0, i32 1
  %free_object265 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs264, i32 0, i32 2
  %246 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object265, align 8, !tbaa !99
  %247 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %memory266 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %247, i32 0, i32 2
  %248 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory266, align 8, !tbaa !90
  %249 = load i8*, i8** %stripped215, align 8, !tbaa !1
  call void %246(%struct.gs_memory_s* %248, i8* %249, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.76, i32 0, i32 0)) #5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.267

cleanup.267:                                      ; preds = %if.end.260, %if.end.259
  %250 = bitcast %struct.gs_bytestring_s** %data240 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %250) #1
  %cleanup.dest.268 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.268, label %cleanup.281 [
    i32 0, label %cleanup.cont.269
  ]

cleanup.cont.269:                                 ; preds = %cleanup.267
  br label %if.end.279

if.else.270:                                      ; preds = %if.end.229
  %251 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %bits271 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata179, i32 0, i32 0
  %size272 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits271, i32 0, i32 1
  %252 = load i32, i32* %size272, align 4, !tbaa !100
  %call273 = call i8* @pprintd1(%struct.stream_s* %251, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.75, i32 0, i32 0), i32 %252) #5
  %253 = load i32 (%struct.stream_s*, i8*, i32)*, i32 (%struct.stream_s*, i8*, i32)** %write_CharString.addr, align 8, !tbaa !1
  %254 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %bits274 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata179, i32 0, i32 0
  %data275 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits274, i32 0, i32 0
  %255 = load i8*, i8** %data275, align 8, !tbaa !101
  %bits276 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %gdata179, i32 0, i32 0
  %size277 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits276, i32 0, i32 1
  %256 = load i32, i32* %size277, align 4, !tbaa !100
  %call278 = call i32 %253(%struct.stream_s* %254, i8* %255, i32 %256) #5
  br label %if.end.279

if.end.279:                                       ; preds = %if.else.270, %cleanup.cont.269
  %257 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call280 = call i32 @stream_puts(%struct.stream_s* %257, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.77, i32 0, i32 0)) #5
  call void @gs_glyph_data_free(%struct.gs_glyph_data_s* %gdata179, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.72, i32 0, i32 0)) #5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.281

cleanup.281:                                      ; preds = %if.end.279, %cleanup.267, %if.end.228
  %258 = bitcast i8** %stripped215 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %258) #1
  %259 = bitcast i32* %code214 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %259) #1
  %260 = bitcast %struct.gs_const_string_s* %gstr to i8*
  call void @llvm.lifetime.end(i64 16, i8* %260) #1
  %cleanup.dest.284 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.284, label %cleanup.288 [
    i32 0, label %cleanup.cont.285
  ]

cleanup.cont.285:                                 ; preds = %cleanup.281
  br label %if.end.286

if.end.286:                                       ; preds = %cleanup.cont.285, %land.lhs.true.207, %for.body.204
  br label %for.cond.200

for.end.287:                                      ; preds = %for.cond.200
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.288

cleanup.288:                                      ; preds = %for.end.287, %cleanup.281
  %261 = bitcast i32* %code180 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %261) #1
  %262 = bitcast %struct.gs_glyph_data_s* %gdata179 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %262) #1
  %263 = bitcast %struct.psf_glyph_enum_s* %genum to i8*
  call void @llvm.lifetime.end(i64 48, i8* %263) #1
  %264 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %264) #1
  %265 = bitcast i32* %num_chars to i8*
  call void @llvm.lifetime.end(i64 4, i8* %265) #1
  %cleanup.dest.293 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.293, label %cleanup.304 [
    i32 0, label %cleanup.cont.294
  ]

cleanup.cont.294:                                 ; preds = %cleanup.288
  %266 = load i8*, i8** %SubrsWithMM, align 8, !tbaa !1
  %cmp295 = icmp ne i8* %266, null
  br i1 %cmp295, label %if.then.297, label %if.end.302

if.then.297:                                      ; preds = %cleanup.cont.294
  %267 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %memory298 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %267, i32 0, i32 2
  %268 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory298, align 8, !tbaa !90
  %procs299 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %268, i32 0, i32 1
  %free_object300 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs299, i32 0, i32 2
  %269 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object300, align 8, !tbaa !99
  %270 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %memory301 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %270, i32 0, i32 2
  %271 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory301, align 8, !tbaa !90
  %272 = load i8*, i8** %SubrsWithMM, align 8, !tbaa !1
  call void %269(%struct.gs_memory_s* %271, i8* %272, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.66, i32 0, i32 0)) #5
  br label %if.end.302

if.end.302:                                       ; preds = %if.then.297, %cleanup.cont.294
  %273 = load %struct.stream_s*, %struct.stream_s** %s.addr, align 8, !tbaa !1
  %call303 = call i32 @stream_puts(%struct.stream_s* %273, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.78, i32 0, i32 0)) #5
  call void @s_release_param_printer(%struct.printer_param_list_s* %rlist) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.304

cleanup.304:                                      ; preds = %if.end.302, %cleanup.288, %cleanup.173, %cleanup, %if.then
  %274 = bitcast i8** %SubrsWithMM to i8*
  call void @llvm.lifetime.end(i64 8, i8* %274) #1
  %275 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %275) #1
  %276 = bitcast %struct.gs_param_list_s** %plist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %276) #1
  %277 = bitcast %struct.printer_param_list_s* %rlist to i8*
  call void @llvm.lifetime.end(i64 80, i8* %277) #1
  %278 = bitcast %struct.gs_type1_data_s** %pdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %278) #1
  %279 = load i32, i32* %retval
  ret i32 %279
}

declare i32 @s_close_filters(%struct.stream_s**, %struct.stream_s*) #2

declare void @s_release_param_printer(%struct.printer_param_list_s*) #2

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #3

declare i32 @spputc(%struct.stream_s*, i8 zeroext) #2

declare i8* @pprints1(%struct.stream_s*, i8*, i8*) #2

declare void @s_write_ps_string(%struct.stream_s*, i8*, i32, i32) #2

declare i32 @psf_sorted_glyphs_include(i64*, i32, i64) #2

declare i8* @pprintd1(%struct.stream_s*, i8*, i32) #2

declare i8* @pprintld1(%struct.stream_s*, i8*, i64) #2

declare i32 @gs_type1_encrypt(i8*, i8*, i32, i16*) #2

declare i32 @param_write_int(%struct.gs_param_list_s*, i8*, i32*) #2

; Function Attrs: nounwind uwtable
define internal i32 @write_float_array(%struct.gs_param_list_s* %plist, i8* %key, float* %values, i32 %count) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %key.addr = alloca i8*, align 8
  %values.addr = alloca float*, align 8
  %count.addr = alloca i32, align 4
  %fa = alloca %struct.gs_param_float_array_s, align 8
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store float* %values, float** %values.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !22
  %0 = load i32, i32* %count.addr, align 4, !tbaa !22
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.gs_param_float_array_s* %fa to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #1
  %persistent = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %fa, i32 0, i32 2
  store i32 0, i32* %persistent, align 4, !tbaa !105
  %2 = load i32, i32* %count.addr, align 4, !tbaa !22
  %size = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %fa, i32 0, i32 1
  store i32 %2, i32* %size, align 4, !tbaa !107
  %3 = load float*, float** %values.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %fa, i32 0, i32 0
  store float* %3, float** %data, align 8, !tbaa !108
  %4 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %call = call i32 @param_write_float_array(%struct.gs_param_list_s* %4, i8* %5, %struct.gs_param_float_array_s* %fa) #5
  store i32 %call, i32* %retval
  %6 = bitcast %struct.gs_param_float_array_s* %fa to i8*
  call void @llvm.lifetime.end(i64 16, i8* %6) #1
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

declare void @gs_glyph_data_free(%struct.gs_glyph_data_s*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @CheckSubrForMM(%struct.gs_glyph_data_s* %gdata, %struct.gs_font_type1_s* %pfont) #0 {
entry:
  %gdata.addr = alloca %struct.gs_glyph_data_s*, align 8
  %pfont.addr = alloca %struct.gs_font_type1_s*, align 8
  %state = alloca i16, align 2
  %code = alloca i32, align 4
  %data = alloca %struct.gs_bytestring_s*, align 8
  %source = alloca i8*, align 8
  %end = alloca i8*, align 8
  %CurrentNumberIndex = alloca i32, align 4
  %Stack = alloca [32 x i32], align 16
  store %struct.gs_glyph_data_s* %gdata, %struct.gs_glyph_data_s** %gdata.addr, align 8, !tbaa !1
  store %struct.gs_font_type1_s* %pfont, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %0 = bitcast i16* %state to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #1
  store i16 4330, i16* %state, align 2, !tbaa !74
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %code, align 4, !tbaa !22
  %2 = bitcast %struct.gs_bytestring_s** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %gdata.addr, align 8, !tbaa !1
  %bits = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %3, i32 0, i32 0
  %4 = bitcast %struct.gs_const_bytestring_s* %bits to %struct.gs_bytestring_s*
  store %struct.gs_bytestring_s* %4, %struct.gs_bytestring_s** %data, align 8, !tbaa !1
  %5 = bitcast i8** %source to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_bytestring_s*, %struct.gs_bytestring_s** %data, align 8, !tbaa !1
  %data1 = getelementptr inbounds %struct.gs_bytestring_s, %struct.gs_bytestring_s* %6, i32 0, i32 0
  %7 = load i8*, i8** %data1, align 8, !tbaa !109
  store i8* %7, i8** %source, align 8, !tbaa !1
  %8 = bitcast i8** %end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load i8*, i8** %source, align 8, !tbaa !1
  %10 = load %struct.gs_bytestring_s*, %struct.gs_bytestring_s** %data, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_bytestring_s, %struct.gs_bytestring_s* %10, i32 0, i32 1
  %11 = load i32, i32* %size, align 4, !tbaa !103
  %idx.ext = zext i32 %11 to i64
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %idx.ext
  store i8* %add.ptr, i8** %end, align 8, !tbaa !1
  %12 = bitcast i32* %CurrentNumberIndex to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 0, i32* %CurrentNumberIndex, align 4, !tbaa !22
  %13 = bitcast [32 x i32]* %Stack to i8*
  call void @llvm.lifetime.start(i64 128, i8* %13) #1
  %14 = load i8*, i8** %source, align 8, !tbaa !1
  %15 = load i8*, i8** %source, align 8, !tbaa !1
  %16 = load %struct.gs_bytestring_s*, %struct.gs_bytestring_s** %data, align 8, !tbaa !1
  %size2 = getelementptr inbounds %struct.gs_bytestring_s, %struct.gs_bytestring_s* %16, i32 0, i32 1
  %17 = load i32, i32* %size2, align 4, !tbaa !103
  %call = call i32 @gs_type1_decrypt(i8* %14, i8* %15, i32 %17, i16* %state) #5
  %18 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data3 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %18, i32 0, i32 29
  %lenIV = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data3, i32 0, i32 4
  %19 = load i32, i32* %lenIV, align 4, !tbaa !23
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %20 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data4 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %20, i32 0, i32 29
  %lenIV5 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data4, i32 0, i32 4
  %21 = load i32, i32* %lenIV5, align 4, !tbaa !23
  %22 = load i8*, i8** %source, align 8, !tbaa !1
  %idx.ext6 = sext i32 %21 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %22, i64 %idx.ext6
  store i8* %add.ptr7, i8** %source, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.96, %if.end
  %23 = load i8*, i8** %source, align 8, !tbaa !1
  %24 = load i8*, i8** %end, align 8, !tbaa !1
  %cmp = icmp ult i8* %23, %24
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %25 = load i8*, i8** %source, align 8, !tbaa !1
  %26 = load i8, i8* %25, align 1, !tbaa !60
  %conv = zext i8 %26 to i32
  %cmp8 = icmp slt i32 %conv, 32
  br i1 %cmp8, label %if.then.10, label %if.else.27

if.then.10:                                       ; preds = %while.body
  %27 = load i8*, i8** %source, align 8, !tbaa !1
  %28 = load i8, i8* %27, align 1, !tbaa !60
  %conv11 = zext i8 %28 to i32
  switch i32 %conv11, label %sw.default.25 [
    i32 12, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then.10
  %29 = load i8*, i8** %source, align 8, !tbaa !1
  %add.ptr12 = getelementptr inbounds i8, i8* %29, i64 1
  %30 = load i8, i8* %add.ptr12, align 1, !tbaa !60
  %conv13 = zext i8 %30 to i32
  %cmp14 = icmp eq i32 %conv13, 16
  br i1 %cmp14, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %sw.bb
  %31 = load i32, i32* %CurrentNumberIndex, align 4, !tbaa !22
  %sub = sub nsw i32 %31, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [32 x i32], [32 x i32]* %Stack, i32 0, i64 %idxprom
  %32 = load i32, i32* %arrayidx, align 4, !tbaa !22
  switch i32 %32, label %sw.default [
    i32 18, label %sw.bb.17
    i32 17, label %sw.bb.18
    i32 16, label %sw.bb.19
    i32 15, label %sw.bb.20
    i32 14, label %sw.bb.21
  ]

sw.bb.17:                                         ; preds = %if.then.16
  store i32 6, i32* %code, align 4, !tbaa !22
  br label %sw.epilog

sw.bb.18:                                         ; preds = %if.then.16
  store i32 4, i32* %code, align 4, !tbaa !22
  br label %sw.epilog

sw.bb.19:                                         ; preds = %if.then.16
  store i32 3, i32* %code, align 4, !tbaa !22
  br label %sw.epilog

sw.bb.20:                                         ; preds = %if.then.16
  store i32 2, i32* %code, align 4, !tbaa !22
  br label %sw.epilog

sw.bb.21:                                         ; preds = %if.then.16
  store i32 1, i32* %code, align 4, !tbaa !22
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.16
  store i32 0, i32* %code, align 4, !tbaa !22
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.21, %sw.bb.20, %sw.bb.19, %sw.bb.18, %sw.bb.17
  %33 = load i8*, i8** %source, align 8, !tbaa !1
  %add.ptr22 = getelementptr inbounds i8, i8* %33, i64 2
  store i8* %add.ptr22, i8** %source, align 8, !tbaa !1
  br label %if.end.24

if.else:                                          ; preds = %sw.bb
  %34 = load i8*, i8** %source, align 8, !tbaa !1
  %add.ptr23 = getelementptr inbounds i8, i8* %34, i64 2
  store i8* %add.ptr23, i8** %source, align 8, !tbaa !1
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %sw.epilog
  br label %sw.epilog.26

sw.default.25:                                    ; preds = %if.then.10
  %35 = load i8*, i8** %source, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr, i8** %source, align 8, !tbaa !1
  br label %sw.epilog.26

sw.epilog.26:                                     ; preds = %sw.default.25, %if.end.24
  store i32 0, i32* %CurrentNumberIndex, align 4, !tbaa !22
  br label %if.end.96

if.else.27:                                       ; preds = %while.body
  %36 = load i8*, i8** %source, align 8, !tbaa !1
  %37 = load i8, i8* %36, align 1, !tbaa !60
  %conv28 = zext i8 %37 to i32
  %cmp29 = icmp slt i32 %conv28, 247
  br i1 %cmp29, label %if.then.31, label %if.else.37

if.then.31:                                       ; preds = %if.else.27
  %38 = load i8*, i8** %source, align 8, !tbaa !1
  %incdec.ptr32 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr32, i8** %source, align 8, !tbaa !1
  %39 = load i8, i8* %38, align 1, !tbaa !60
  %conv33 = zext i8 %39 to i32
  %sub34 = sub nsw i32 %conv33, 139
  %40 = load i32, i32* %CurrentNumberIndex, align 4, !tbaa !22
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %CurrentNumberIndex, align 4, !tbaa !22
  %idxprom35 = sext i32 %40 to i64
  %arrayidx36 = getelementptr inbounds [32 x i32], [32 x i32]* %Stack, i32 0, i64 %idxprom35
  store i32 %sub34, i32* %arrayidx36, align 4, !tbaa !22
  br label %if.end.95

if.else.37:                                       ; preds = %if.else.27
  %41 = load i8*, i8** %source, align 8, !tbaa !1
  %42 = load i8, i8* %41, align 1, !tbaa !60
  %conv38 = zext i8 %42 to i32
  %cmp39 = icmp slt i32 %conv38, 251
  br i1 %cmp39, label %if.then.41, label %if.else.53

if.then.41:                                       ; preds = %if.else.37
  %43 = load i8*, i8** %source, align 8, !tbaa !1
  %incdec.ptr42 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr42, i8** %source, align 8, !tbaa !1
  %44 = load i8, i8* %43, align 1, !tbaa !60
  %conv43 = zext i8 %44 to i32
  %sub44 = sub nsw i32 %conv43, 247
  %mul = mul nsw i32 %sub44, 256
  %add = add nsw i32 %mul, 108
  %45 = load i32, i32* %CurrentNumberIndex, align 4, !tbaa !22
  %idxprom45 = sext i32 %45 to i64
  %arrayidx46 = getelementptr inbounds [32 x i32], [32 x i32]* %Stack, i32 0, i64 %idxprom45
  store i32 %add, i32* %arrayidx46, align 4, !tbaa !22
  %46 = load i8*, i8** %source, align 8, !tbaa !1
  %incdec.ptr47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr47, i8** %source, align 8, !tbaa !1
  %47 = load i8, i8* %46, align 1, !tbaa !60
  %conv48 = zext i8 %47 to i32
  %48 = load i32, i32* %CurrentNumberIndex, align 4, !tbaa !22
  %inc49 = add nsw i32 %48, 1
  store i32 %inc49, i32* %CurrentNumberIndex, align 4, !tbaa !22
  %idxprom50 = sext i32 %48 to i64
  %arrayidx51 = getelementptr inbounds [32 x i32], [32 x i32]* %Stack, i32 0, i64 %idxprom50
  %49 = load i32, i32* %arrayidx51, align 4, !tbaa !22
  %add52 = add nsw i32 %49, %conv48
  store i32 %add52, i32* %arrayidx51, align 4, !tbaa !22
  br label %if.end.94

if.else.53:                                       ; preds = %if.else.37
  %50 = load i8*, i8** %source, align 8, !tbaa !1
  %51 = load i8, i8* %50, align 1, !tbaa !60
  %conv54 = zext i8 %51 to i32
  %cmp55 = icmp slt i32 %conv54, 255
  br i1 %cmp55, label %if.then.57, label %if.else.71

if.then.57:                                       ; preds = %if.else.53
  %52 = load i8*, i8** %source, align 8, !tbaa !1
  %incdec.ptr58 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr58, i8** %source, align 8, !tbaa !1
  %53 = load i8, i8* %52, align 1, !tbaa !60
  %conv59 = zext i8 %53 to i32
  %sub60 = sub nsw i32 %conv59, 251
  %mul61 = mul nsw i32 %sub60, -256
  %sub62 = sub nsw i32 %mul61, 108
  %54 = load i32, i32* %CurrentNumberIndex, align 4, !tbaa !22
  %idxprom63 = sext i32 %54 to i64
  %arrayidx64 = getelementptr inbounds [32 x i32], [32 x i32]* %Stack, i32 0, i64 %idxprom63
  store i32 %sub62, i32* %arrayidx64, align 4, !tbaa !22
  %55 = load i8*, i8** %source, align 8, !tbaa !1
  %incdec.ptr65 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %incdec.ptr65, i8** %source, align 8, !tbaa !1
  %56 = load i8, i8* %55, align 1, !tbaa !60
  %conv66 = zext i8 %56 to i32
  %57 = load i32, i32* %CurrentNumberIndex, align 4, !tbaa !22
  %inc67 = add nsw i32 %57, 1
  store i32 %inc67, i32* %CurrentNumberIndex, align 4, !tbaa !22
  %idxprom68 = sext i32 %57 to i64
  %arrayidx69 = getelementptr inbounds [32 x i32], [32 x i32]* %Stack, i32 0, i64 %idxprom68
  %58 = load i32, i32* %arrayidx69, align 4, !tbaa !22
  %sub70 = sub nsw i32 %58, %conv66
  store i32 %sub70, i32* %arrayidx69, align 4, !tbaa !22
  br label %if.end.93

if.else.71:                                       ; preds = %if.else.53
  %59 = load i8*, i8** %source, align 8, !tbaa !1
  %incdec.ptr72 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr72, i8** %source, align 8, !tbaa !1
  %60 = load i8, i8* %59, align 1, !tbaa !60
  %conv73 = zext i8 %60 to i32
  %shl = shl i32 %conv73, 24
  %61 = load i32, i32* %CurrentNumberIndex, align 4, !tbaa !22
  %idxprom74 = sext i32 %61 to i64
  %arrayidx75 = getelementptr inbounds [32 x i32], [32 x i32]* %Stack, i32 0, i64 %idxprom74
  store i32 %shl, i32* %arrayidx75, align 4, !tbaa !22
  %62 = load i8*, i8** %source, align 8, !tbaa !1
  %incdec.ptr76 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %incdec.ptr76, i8** %source, align 8, !tbaa !1
  %63 = load i8, i8* %62, align 1, !tbaa !60
  %conv77 = zext i8 %63 to i32
  %shl78 = shl i32 %conv77, 16
  %64 = load i32, i32* %CurrentNumberIndex, align 4, !tbaa !22
  %idxprom79 = sext i32 %64 to i64
  %arrayidx80 = getelementptr inbounds [32 x i32], [32 x i32]* %Stack, i32 0, i64 %idxprom79
  %65 = load i32, i32* %arrayidx80, align 4, !tbaa !22
  %add81 = add nsw i32 %65, %shl78
  store i32 %add81, i32* %arrayidx80, align 4, !tbaa !22
  %66 = load i8*, i8** %source, align 8, !tbaa !1
  %incdec.ptr82 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %incdec.ptr82, i8** %source, align 8, !tbaa !1
  %67 = load i8, i8* %66, align 1, !tbaa !60
  %conv83 = zext i8 %67 to i32
  %shl84 = shl i32 %conv83, 8
  %68 = load i32, i32* %CurrentNumberIndex, align 4, !tbaa !22
  %idxprom85 = sext i32 %68 to i64
  %arrayidx86 = getelementptr inbounds [32 x i32], [32 x i32]* %Stack, i32 0, i64 %idxprom85
  %69 = load i32, i32* %arrayidx86, align 4, !tbaa !22
  %add87 = add nsw i32 %69, %shl84
  store i32 %add87, i32* %arrayidx86, align 4, !tbaa !22
  %70 = load i8*, i8** %source, align 8, !tbaa !1
  %incdec.ptr88 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %incdec.ptr88, i8** %source, align 8, !tbaa !1
  %71 = load i8, i8* %70, align 1, !tbaa !60
  %conv89 = zext i8 %71 to i32
  %72 = load i32, i32* %CurrentNumberIndex, align 4, !tbaa !22
  %idxprom90 = sext i32 %72 to i64
  %arrayidx91 = getelementptr inbounds [32 x i32], [32 x i32]* %Stack, i32 0, i64 %idxprom90
  %73 = load i32, i32* %arrayidx91, align 4, !tbaa !22
  %add92 = add nsw i32 %73, %conv89
  store i32 %add92, i32* %arrayidx91, align 4, !tbaa !22
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.71, %if.then.57
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.then.41
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.then.31
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %sw.epilog.26
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i16 4330, i16* %state, align 2, !tbaa !74
  %74 = load %struct.gs_bytestring_s*, %struct.gs_bytestring_s** %data, align 8, !tbaa !1
  %data97 = getelementptr inbounds %struct.gs_bytestring_s, %struct.gs_bytestring_s* %74, i32 0, i32 0
  %75 = load i8*, i8** %data97, align 8, !tbaa !109
  store i8* %75, i8** %source, align 8, !tbaa !1
  %76 = load i8*, i8** %source, align 8, !tbaa !1
  %77 = load i8*, i8** %source, align 8, !tbaa !1
  %78 = load %struct.gs_bytestring_s*, %struct.gs_bytestring_s** %data, align 8, !tbaa !1
  %size98 = getelementptr inbounds %struct.gs_bytestring_s, %struct.gs_bytestring_s* %78, i32 0, i32 1
  %79 = load i32, i32* %size98, align 4, !tbaa !103
  %call99 = call i32 @gs_type1_encrypt(i8* %76, i8* %77, i32 %79, i16* %state) #5
  %80 = load i32, i32* %code, align 4, !tbaa !22
  %81 = bitcast [32 x i32]* %Stack to i8*
  call void @llvm.lifetime.end(i64 128, i8* %81) #1
  %82 = bitcast i32* %CurrentNumberIndex to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  %83 = bitcast i8** %end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #1
  %84 = bitcast i8** %source to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #1
  %85 = bitcast %struct.gs_bytestring_s** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #1
  %86 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #1
  %87 = bitcast i16* %state to i8*
  call void @llvm.lifetime.end(i64 2, i8* %87) #1
  ret i32 %80
}

; Function Attrs: nounwind uwtable
define internal i32 @strip_othersubrs(%struct.gs_glyph_data_s* %gdata, %struct.gs_font_type1_s* %pfont, i8* %stripped, i8* %SubrsWithMM) #0 {
entry:
  %gdata.addr = alloca %struct.gs_glyph_data_s*, align 8
  %pfont.addr = alloca %struct.gs_font_type1_s*, align 8
  %stripped.addr = alloca i8*, align 8
  %SubrsWithMM.addr = alloca i8*, align 8
  %state = alloca i16, align 2
  %data = alloca %struct.gs_bytestring_s*, align 8
  %source = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %end = alloca i8*, align 8
  %i = alloca i32, align 4
  %dest_length = alloca i32, align 4
  %CurrentNumberIndex = alloca i32, align 4
  %Stack = alloca [64 x i32], align 16
  %written = alloca i32, align 4
  %OnlyCalcLength = alloca i32, align 4
  %Buffer = alloca [16 x i8], align 16
  %index = alloca i32, align 4
  %StackBase = alloca i32, align 4
  store %struct.gs_glyph_data_s* %gdata, %struct.gs_glyph_data_s** %gdata.addr, align 8, !tbaa !1
  store %struct.gs_font_type1_s* %pfont, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  store i8* %stripped, i8** %stripped.addr, align 8, !tbaa !1
  store i8* %SubrsWithMM, i8** %SubrsWithMM.addr, align 8, !tbaa !1
  %0 = bitcast i16* %state to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #1
  store i16 4330, i16* %state, align 2, !tbaa !74
  %1 = bitcast %struct.gs_bytestring_s** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_glyph_data_s*, %struct.gs_glyph_data_s** %gdata.addr, align 8, !tbaa !1
  %bits = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %2, i32 0, i32 0
  %3 = bitcast %struct.gs_const_bytestring_s* %bits to %struct.gs_bytestring_s*
  store %struct.gs_bytestring_s* %3, %struct.gs_bytestring_s** %data, align 8, !tbaa !1
  %4 = bitcast i8** %source to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_bytestring_s*, %struct.gs_bytestring_s** %data, align 8, !tbaa !1
  %data1 = getelementptr inbounds %struct.gs_bytestring_s, %struct.gs_bytestring_s* %5, i32 0, i32 0
  %6 = load i8*, i8** %data1, align 8, !tbaa !109
  store i8* %6, i8** %source, align 8, !tbaa !1
  %7 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load i8*, i8** %stripped.addr, align 8, !tbaa !1
  store i8* %8, i8** %dest, align 8, !tbaa !1
  %9 = bitcast i8** %end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load i8*, i8** %source, align 8, !tbaa !1
  %11 = load %struct.gs_bytestring_s*, %struct.gs_bytestring_s** %data, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_bytestring_s, %struct.gs_bytestring_s* %11, i32 0, i32 1
  %12 = load i32, i32* %size, align 4, !tbaa !103
  %idx.ext = zext i32 %12 to i64
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %idx.ext
  store i8* %add.ptr, i8** %end, align 8, !tbaa !1
  %13 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %dest_length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  store i32 0, i32* %dest_length, align 4, !tbaa !22
  %15 = bitcast i32* %CurrentNumberIndex to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i32 0, i32* %CurrentNumberIndex, align 4, !tbaa !22
  %16 = bitcast [64 x i32]* %Stack to i8*
  call void @llvm.lifetime.start(i64 256, i8* %16) #1
  %17 = bitcast i32* %written to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i32* %OnlyCalcLength to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  store i32 0, i32* %OnlyCalcLength, align 4, !tbaa !22
  %19 = bitcast [16 x i8]* %Buffer to i8*
  call void @llvm.lifetime.start(i64 16, i8* %19) #1
  %20 = load i8*, i8** %stripped.addr, align 8, !tbaa !1
  %cmp = icmp eq i8* %20, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %OnlyCalcLength, align 4, !tbaa !22
  %21 = bitcast [16 x i8]* %Buffer to i8*
  store i8* %21, i8** %dest, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %22 = load i8*, i8** %source, align 8, !tbaa !1
  %23 = load i8*, i8** %source, align 8, !tbaa !1
  %24 = load %struct.gs_bytestring_s*, %struct.gs_bytestring_s** %data, align 8, !tbaa !1
  %size2 = getelementptr inbounds %struct.gs_bytestring_s, %struct.gs_bytestring_s* %24, i32 0, i32 1
  %25 = load i32, i32* %size2, align 4, !tbaa !103
  %call = call i32 @gs_type1_decrypt(i8* %22, i8* %23, i32 %25, i16* %state) #5
  %26 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data3 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %26, i32 0, i32 29
  %lenIV = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data3, i32 0, i32 4
  %27 = load i32, i32* %lenIV, align 4, !tbaa !23
  %cmp4 = icmp sge i32 %27, 0
  br i1 %cmp4, label %if.then.5, label %if.end.14

if.then.5:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.5
  %28 = load i32, i32* %i, align 4, !tbaa !22
  %29 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data6 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %29, i32 0, i32 29
  %lenIV7 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data6, i32 0, i32 4
  %30 = load i32, i32* %lenIV7, align 4, !tbaa !23
  %cmp8 = icmp slt i32 %28, %30
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load i32, i32* %OnlyCalcLength, align 4, !tbaa !22
  %tobool = icmp ne i32 %31, 0
  br i1 %tobool, label %if.end.11, label %if.then.9

if.then.9:                                        ; preds = %for.body
  %32 = load i8*, i8** %source, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr, i8** %source, align 8, !tbaa !1
  %33 = load i8, i8* %32, align 1, !tbaa !60
  %34 = load i8*, i8** %dest, align 8, !tbaa !1
  %incdec.ptr10 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr10, i8** %dest, align 8, !tbaa !1
  store i8 %33, i8* %34, align 1, !tbaa !60
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %35 = load i32, i32* %i, align 4, !tbaa !22
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data12 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %36, i32 0, i32 29
  %lenIV13 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data12, i32 0, i32 4
  %37 = load i32, i32* %lenIV13, align 4, !tbaa !23
  %38 = load i32, i32* %dest_length, align 4, !tbaa !22
  %add = add nsw i32 %38, %37
  store i32 %add, i32* %dest_length, align 4, !tbaa !22
  br label %if.end.14

if.end.14:                                        ; preds = %for.end, %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.381, %if.end.14
  %39 = load i8*, i8** %source, align 8, !tbaa !1
  %40 = load i8*, i8** %end, align 8, !tbaa !1
  %cmp15 = icmp ult i8* %39, %40
  br i1 %cmp15, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %41 = load i8*, i8** %source, align 8, !tbaa !1
  %42 = load i8, i8* %41, align 1, !tbaa !60
  %conv = zext i8 %42 to i32
  %cmp16 = icmp slt i32 %conv, 32
  br i1 %cmp16, label %if.then.18, label %if.else.307

if.then.18:                                       ; preds = %while.body
  %43 = load i8*, i8** %source, align 8, !tbaa !1
  %44 = load i8, i8* %43, align 1, !tbaa !60
  %conv19 = zext i8 %44 to i32
  switch i32 %conv19, label %sw.default.281 [
    i32 12, label %sw.bb
    i32 10, label %sw.bb.194
  ]

sw.bb:                                            ; preds = %if.then.18
  %45 = load i8*, i8** %source, align 8, !tbaa !1
  %add.ptr20 = getelementptr inbounds i8, i8* %45, i64 1
  %46 = load i8, i8* %add.ptr20, align 1, !tbaa !60
  %conv21 = zext i8 %46 to i32
  %cmp22 = icmp eq i32 %conv21, 16
  br i1 %cmp22, label %if.then.24, label %if.else.166

if.then.24:                                       ; preds = %sw.bb
  %47 = load i32, i32* %CurrentNumberIndex, align 4, !tbaa !22
  %sub = sub nsw i32 %47, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [64 x i32], [64 x i32]* %Stack, i32 0, i64 %idxprom
  %48 = load i32, i32* %arrayidx, align 4, !tbaa !22
  switch i32 %48, label %sw.default [
    i32 14, label %sw.bb.25
    i32 15, label %sw.bb.46
    i32 16, label %sw.bb.69
    i32 17, label %sw.bb.93
    i32 18, label %sw.bb.117
  ]

sw.bb.25:                                         ; preds = %if.then.24
  %49 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data26 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %49, i32 0, i32 29
  %WeightVector = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data26, i32 0, i32 25
  %count = getelementptr inbounds %struct.anon.7, %struct.anon.7* %WeightVector, i32 0, i32 0
  %50 = load i32, i32* %count, align 4, !tbaa !95
  %sub27 = sub nsw i32 %50, 1
  %51 = load i32, i32* %CurrentNumberIndex, align 4, !tbaa !22
  %sub28 = sub nsw i32 %51, %sub27
  store i32 %sub28, i32* %CurrentNumberIndex, align 4, !tbaa !22
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.42, %sw.bb.25
  %52 = load i32, i32* %i, align 4, !tbaa !22
  %53 = load i32, i32* %CurrentNumberIndex, align 4, !tbaa !22
  %cmp30 = icmp slt i32 %52, %53
  br i1 %cmp30, label %for.body.32, label %for.end.44

for.body.32:                                      ; preds = %for.cond.29
  %54 = load i8*, i8** %dest, align 8, !tbaa !1
  %55 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom33 = sext i32 %55 to i64
  %arrayidx34 = getelementptr inbounds [64 x i32], [64 x i32]* %Stack, i32 0, i64 %idxprom33
  %56 = load i32, i32* %arrayidx34, align 4, !tbaa !22
  %call35 = call i32 @WriteNumber(i8* %54, i32 %56) #5
  store i32 %call35, i32* %written, align 4, !tbaa !22
  %57 = load i32, i32* %written, align 4, !tbaa !22
  %58 = load i32, i32* %dest_length, align 4, !tbaa !22
  %add36 = add nsw i32 %58, %57
  store i32 %add36, i32* %dest_length, align 4, !tbaa !22
  %59 = load i32, i32* %OnlyCalcLength, align 4, !tbaa !22
  %tobool37 = icmp ne i32 %59, 0
  br i1 %tobool37, label %if.end.41, label %if.then.38

if.then.38:                                       ; preds = %for.body.32
  %60 = load i32, i32* %written, align 4, !tbaa !22
  %61 = load i8*, i8** %dest, align 8, !tbaa !1
  %idx.ext39 = sext i32 %60 to i64
  %add.ptr40 = getelementptr inbounds i8, i8* %61, i64 %idx.ext39
  store i8* %add.ptr40, i8** %dest, align 8, !tbaa !1
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.38, %for.body.32
  br label %for.inc.42

for.inc.42:                                       ; preds = %if.end.41
  %62 = load i32, i32* %i, align 4, !tbaa !22
  %inc43 = add nsw i32 %62, 1
  store i32 %inc43, i32* %i, align 4, !tbaa !22
  br label %for.cond.29

for.end.44:                                       ; preds = %for.cond.29
  %63 = load i8*, i8** %source, align 8, !tbaa !1
  %add.ptr45 = getelementptr inbounds i8, i8* %63, i64 2
  store i8* %add.ptr45, i8** %source, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.46:                                         ; preds = %if.then.24
  %64 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data47 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %64, i32 0, i32 29
  %WeightVector48 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data47, i32 0, i32 25
  %count49 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %WeightVector48, i32 0, i32 0
  %65 = load i32, i32* %count49, align 4, !tbaa !95
  %sub50 = sub nsw i32 %65, 1
  %mul = mul nsw i32 %sub50, 2
  %66 = load i32, i32* %CurrentNumberIndex, align 4, !tbaa !22
  %sub51 = sub nsw i32 %66, %mul
  store i32 %sub51, i32* %CurrentNumberIndex, align 4, !tbaa !22
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.65, %sw.bb.46
  %67 = load i32, i32* %i, align 4, !tbaa !22
  %68 = load i32, i32* %CurrentNumberIndex, align 4, !tbaa !22
  %cmp53 = icmp slt i32 %67, %68
  br i1 %cmp53, label %for.body.55, label %for.end.67

for.body.55:                                      ; preds = %for.cond.52
  %69 = load i8*, i8** %dest, align 8, !tbaa !1
  %70 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom56 = sext i32 %70 to i64
  %arrayidx57 = getelementptr inbounds [64 x i32], [64 x i32]* %Stack, i32 0, i64 %idxprom56
  %71 = load i32, i32* %arrayidx57, align 4, !tbaa !22
  %call58 = call i32 @WriteNumber(i8* %69, i32 %71) #5
  store i32 %call58, i32* %written, align 4, !tbaa !22
  %72 = load i32, i32* %written, align 4, !tbaa !22
  %73 = load i32, i32* %dest_length, align 4, !tbaa !22
  %add59 = add nsw i32 %73, %72
  store i32 %add59, i32* %dest_length, align 4, !tbaa !22
  %74 = load i32, i32* %OnlyCalcLength, align 4, !tbaa !22
  %tobool60 = icmp ne i32 %74, 0
  br i1 %tobool60, label %if.end.64, label %if.then.61

if.then.61:                                       ; preds = %for.body.55
  %75 = load i32, i32* %written, align 4, !tbaa !22
  %76 = load i8*, i8** %dest, align 8, !tbaa !1
  %idx.ext62 = sext i32 %75 to i64
  %add.ptr63 = getelementptr inbounds i8, i8* %76, i64 %idx.ext62
  store i8* %add.ptr63, i8** %dest, align 8, !tbaa !1
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.61, %for.body.55
  br label %for.inc.65

for.inc.65:                                       ; preds = %if.end.64
  %77 = load i32, i32* %i, align 4, !tbaa !22
  %inc66 = add nsw i32 %77, 1
  store i32 %inc66, i32* %i, align 4, !tbaa !22
  br label %for.cond.52

for.end.67:                                       ; preds = %for.cond.52
  %78 = load i8*, i8** %source, align 8, !tbaa !1
  %add.ptr68 = getelementptr inbounds i8, i8* %78, i64 2
  store i8* %add.ptr68, i8** %source, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.69:                                         ; preds = %if.then.24
  %79 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data70 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %79, i32 0, i32 29
  %WeightVector71 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data70, i32 0, i32 25
  %count72 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %WeightVector71, i32 0, i32 0
  %80 = load i32, i32* %count72, align 4, !tbaa !95
  %sub73 = sub nsw i32 %80, 1
  %mul74 = mul nsw i32 %sub73, 3
  %81 = load i32, i32* %CurrentNumberIndex, align 4, !tbaa !22
  %sub75 = sub nsw i32 %81, %mul74
  store i32 %sub75, i32* %CurrentNumberIndex, align 4, !tbaa !22
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.89, %sw.bb.69
  %82 = load i32, i32* %i, align 4, !tbaa !22
  %83 = load i32, i32* %CurrentNumberIndex, align 4, !tbaa !22
  %cmp77 = icmp slt i32 %82, %83
  br i1 %cmp77, label %for.body.79, label %for.end.91

for.body.79:                                      ; preds = %for.cond.76
  %84 = load i8*, i8** %dest, align 8, !tbaa !1
  %85 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom80 = sext i32 %85 to i64
  %arrayidx81 = getelementptr inbounds [64 x i32], [64 x i32]* %Stack, i32 0, i64 %idxprom80
  %86 = load i32, i32* %arrayidx81, align 4, !tbaa !22
  %call82 = call i32 @WriteNumber(i8* %84, i32 %86) #5
  store i32 %call82, i32* %written, align 4, !tbaa !22
  %87 = load i32, i32* %written, align 4, !tbaa !22
  %88 = load i32, i32* %dest_length, align 4, !tbaa !22
  %add83 = add nsw i32 %88, %87
  store i32 %add83, i32* %dest_length, align 4, !tbaa !22
  %89 = load i32, i32* %OnlyCalcLength, align 4, !tbaa !22
  %tobool84 = icmp ne i32 %89, 0
  br i1 %tobool84, label %if.end.88, label %if.then.85

if.then.85:                                       ; preds = %for.body.79
  %90 = load i32, i32* %written, align 4, !tbaa !22
  %91 = load i8*, i8** %dest, align 8, !tbaa !1
  %idx.ext86 = sext i32 %90 to i64
  %add.ptr87 = getelementptr inbounds i8, i8* %91, i64 %idx.ext86
  store i8* %add.ptr87, i8** %dest, align 8, !tbaa !1
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.85, %for.body.79
  br label %for.inc.89

for.inc.89:                                       ; preds = %if.end.88
  %92 = load i32, i32* %i, align 4, !tbaa !22
  %inc90 = add nsw i32 %92, 1
  store i32 %inc90, i32* %i, align 4, !tbaa !22
  br label %for.cond.76

for.end.91:                                       ; preds = %for.cond.76
  %93 = load i8*, i8** %source, align 8, !tbaa !1
  %add.ptr92 = getelementptr inbounds i8, i8* %93, i64 2
  store i8* %add.ptr92, i8** %source, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.93:                                         ; preds = %if.then.24
  %94 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data94 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %94, i32 0, i32 29
  %WeightVector95 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data94, i32 0, i32 25
  %count96 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %WeightVector95, i32 0, i32 0
  %95 = load i32, i32* %count96, align 4, !tbaa !95
  %sub97 = sub nsw i32 %95, 1
  %mul98 = mul nsw i32 %sub97, 4
  %96 = load i32, i32* %CurrentNumberIndex, align 4, !tbaa !22
  %sub99 = sub nsw i32 %96, %mul98
  store i32 %sub99, i32* %CurrentNumberIndex, align 4, !tbaa !22
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond.100

for.cond.100:                                     ; preds = %for.inc.113, %sw.bb.93
  %97 = load i32, i32* %i, align 4, !tbaa !22
  %98 = load i32, i32* %CurrentNumberIndex, align 4, !tbaa !22
  %cmp101 = icmp slt i32 %97, %98
  br i1 %cmp101, label %for.body.103, label %for.end.115

for.body.103:                                     ; preds = %for.cond.100
  %99 = load i8*, i8** %dest, align 8, !tbaa !1
  %100 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom104 = sext i32 %100 to i64
  %arrayidx105 = getelementptr inbounds [64 x i32], [64 x i32]* %Stack, i32 0, i64 %idxprom104
  %101 = load i32, i32* %arrayidx105, align 4, !tbaa !22
  %call106 = call i32 @WriteNumber(i8* %99, i32 %101) #5
  store i32 %call106, i32* %written, align 4, !tbaa !22
  %102 = load i32, i32* %written, align 4, !tbaa !22
  %103 = load i32, i32* %dest_length, align 4, !tbaa !22
  %add107 = add nsw i32 %103, %102
  store i32 %add107, i32* %dest_length, align 4, !tbaa !22
  %104 = load i32, i32* %OnlyCalcLength, align 4, !tbaa !22
  %tobool108 = icmp ne i32 %104, 0
  br i1 %tobool108, label %if.end.112, label %if.then.109

if.then.109:                                      ; preds = %for.body.103
  %105 = load i32, i32* %written, align 4, !tbaa !22
  %106 = load i8*, i8** %dest, align 8, !tbaa !1
  %idx.ext110 = sext i32 %105 to i64
  %add.ptr111 = getelementptr inbounds i8, i8* %106, i64 %idx.ext110
  store i8* %add.ptr111, i8** %dest, align 8, !tbaa !1
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.109, %for.body.103
  br label %for.inc.113

for.inc.113:                                      ; preds = %if.end.112
  %107 = load i32, i32* %i, align 4, !tbaa !22
  %inc114 = add nsw i32 %107, 1
  store i32 %inc114, i32* %i, align 4, !tbaa !22
  br label %for.cond.100

for.end.115:                                      ; preds = %for.cond.100
  %108 = load i8*, i8** %source, align 8, !tbaa !1
  %add.ptr116 = getelementptr inbounds i8, i8* %108, i64 2
  store i8* %add.ptr116, i8** %source, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.117:                                        ; preds = %if.then.24
  %109 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data118 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %109, i32 0, i32 29
  %WeightVector119 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data118, i32 0, i32 25
  %count120 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %WeightVector119, i32 0, i32 0
  %110 = load i32, i32* %count120, align 4, !tbaa !95
  %sub121 = sub nsw i32 %110, 1
  %mul122 = mul nsw i32 %sub121, 6
  %111 = load i32, i32* %CurrentNumberIndex, align 4, !tbaa !22
  %sub123 = sub nsw i32 %111, %mul122
  store i32 %sub123, i32* %CurrentNumberIndex, align 4, !tbaa !22
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond.124

for.cond.124:                                     ; preds = %for.inc.137, %sw.bb.117
  %112 = load i32, i32* %i, align 4, !tbaa !22
  %113 = load i32, i32* %CurrentNumberIndex, align 4, !tbaa !22
  %cmp125 = icmp slt i32 %112, %113
  br i1 %cmp125, label %for.body.127, label %for.end.139

for.body.127:                                     ; preds = %for.cond.124
  %114 = load i8*, i8** %dest, align 8, !tbaa !1
  %115 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom128 = sext i32 %115 to i64
  %arrayidx129 = getelementptr inbounds [64 x i32], [64 x i32]* %Stack, i32 0, i64 %idxprom128
  %116 = load i32, i32* %arrayidx129, align 4, !tbaa !22
  %call130 = call i32 @WriteNumber(i8* %114, i32 %116) #5
  store i32 %call130, i32* %written, align 4, !tbaa !22
  %117 = load i32, i32* %written, align 4, !tbaa !22
  %118 = load i32, i32* %dest_length, align 4, !tbaa !22
  %add131 = add nsw i32 %118, %117
  store i32 %add131, i32* %dest_length, align 4, !tbaa !22
  %119 = load i32, i32* %OnlyCalcLength, align 4, !tbaa !22
  %tobool132 = icmp ne i32 %119, 0
  br i1 %tobool132, label %if.end.136, label %if.then.133

if.then.133:                                      ; preds = %for.body.127
  %120 = load i32, i32* %written, align 4, !tbaa !22
  %121 = load i8*, i8** %dest, align 8, !tbaa !1
  %idx.ext134 = sext i32 %120 to i64
  %add.ptr135 = getelementptr inbounds i8, i8* %121, i64 %idx.ext134
  store i8* %add.ptr135, i8** %dest, align 8, !tbaa !1
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.133, %for.body.127
  br label %for.inc.137

for.inc.137:                                      ; preds = %if.end.136
  %122 = load i32, i32* %i, align 4, !tbaa !22
  %inc138 = add nsw i32 %122, 1
  store i32 %inc138, i32* %i, align 4, !tbaa !22
  br label %for.cond.124

for.end.139:                                      ; preds = %for.cond.124
  %123 = load i8*, i8** %source, align 8, !tbaa !1
  %add.ptr140 = getelementptr inbounds i8, i8* %123, i64 2
  store i8* %add.ptr140, i8** %source, align 8, !tbaa !1
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.24
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond.141

for.cond.141:                                     ; preds = %for.inc.154, %sw.default
  %124 = load i32, i32* %i, align 4, !tbaa !22
  %125 = load i32, i32* %CurrentNumberIndex, align 4, !tbaa !22
  %cmp142 = icmp slt i32 %124, %125
  br i1 %cmp142, label %for.body.144, label %for.end.156

for.body.144:                                     ; preds = %for.cond.141
  %126 = load i8*, i8** %dest, align 8, !tbaa !1
  %127 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom145 = sext i32 %127 to i64
  %arrayidx146 = getelementptr inbounds [64 x i32], [64 x i32]* %Stack, i32 0, i64 %idxprom145
  %128 = load i32, i32* %arrayidx146, align 4, !tbaa !22
  %call147 = call i32 @WriteNumber(i8* %126, i32 %128) #5
  store i32 %call147, i32* %written, align 4, !tbaa !22
  %129 = load i32, i32* %written, align 4, !tbaa !22
  %130 = load i32, i32* %dest_length, align 4, !tbaa !22
  %add148 = add nsw i32 %130, %129
  store i32 %add148, i32* %dest_length, align 4, !tbaa !22
  %131 = load i32, i32* %OnlyCalcLength, align 4, !tbaa !22
  %tobool149 = icmp ne i32 %131, 0
  br i1 %tobool149, label %if.end.153, label %if.then.150

if.then.150:                                      ; preds = %for.body.144
  %132 = load i32, i32* %written, align 4, !tbaa !22
  %133 = load i8*, i8** %dest, align 8, !tbaa !1
  %idx.ext151 = sext i32 %132 to i64
  %add.ptr152 = getelementptr inbounds i8, i8* %133, i64 %idx.ext151
  store i8* %add.ptr152, i8** %dest, align 8, !tbaa !1
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.150, %for.body.144
  br label %for.inc.154

for.inc.154:                                      ; preds = %if.end.153
  %134 = load i32, i32* %i, align 4, !tbaa !22
  %inc155 = add nsw i32 %134, 1
  store i32 %inc155, i32* %i, align 4, !tbaa !22
  br label %for.cond.141

for.end.156:                                      ; preds = %for.cond.141
  %135 = load i32, i32* %OnlyCalcLength, align 4, !tbaa !22
  %tobool157 = icmp ne i32 %135, 0
  br i1 %tobool157, label %if.else, label %if.then.158

if.then.158:                                      ; preds = %for.end.156
  %136 = load i8*, i8** %source, align 8, !tbaa !1
  %incdec.ptr159 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %incdec.ptr159, i8** %source, align 8, !tbaa !1
  %137 = load i8, i8* %136, align 1, !tbaa !60
  %138 = load i8*, i8** %dest, align 8, !tbaa !1
  %incdec.ptr160 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %incdec.ptr160, i8** %dest, align 8, !tbaa !1
  store i8 %137, i8* %138, align 1, !tbaa !60
  %139 = load i8*, i8** %source, align 8, !tbaa !1
  %incdec.ptr161 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %incdec.ptr161, i8** %source, align 8, !tbaa !1
  %140 = load i8, i8* %139, align 1, !tbaa !60
  %141 = load i8*, i8** %dest, align 8, !tbaa !1
  %incdec.ptr162 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %incdec.ptr162, i8** %dest, align 8, !tbaa !1
  store i8 %140, i8* %141, align 1, !tbaa !60
  br label %if.end.164

if.else:                                          ; preds = %for.end.156
  %142 = load i8*, i8** %source, align 8, !tbaa !1
  %add.ptr163 = getelementptr inbounds i8, i8* %142, i64 2
  store i8* %add.ptr163, i8** %source, align 8, !tbaa !1
  br label %if.end.164

if.end.164:                                       ; preds = %if.else, %if.then.158
  %143 = load i32, i32* %dest_length, align 4, !tbaa !22
  %add165 = add nsw i32 %143, 2
  store i32 %add165, i32* %dest_length, align 4, !tbaa !22
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.164, %for.end.139, %for.end.115, %for.end.91, %for.end.67, %for.end.44
  br label %if.end.193

if.else.166:                                      ; preds = %sw.bb
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond.167

for.cond.167:                                     ; preds = %for.inc.180, %if.else.166
  %144 = load i32, i32* %i, align 4, !tbaa !22
  %145 = load i32, i32* %CurrentNumberIndex, align 4, !tbaa !22
  %cmp168 = icmp slt i32 %144, %145
  br i1 %cmp168, label %for.body.170, label %for.end.182

for.body.170:                                     ; preds = %for.cond.167
  %146 = load i8*, i8** %dest, align 8, !tbaa !1
  %147 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom171 = sext i32 %147 to i64
  %arrayidx172 = getelementptr inbounds [64 x i32], [64 x i32]* %Stack, i32 0, i64 %idxprom171
  %148 = load i32, i32* %arrayidx172, align 4, !tbaa !22
  %call173 = call i32 @WriteNumber(i8* %146, i32 %148) #5
  store i32 %call173, i32* %written, align 4, !tbaa !22
  %149 = load i32, i32* %written, align 4, !tbaa !22
  %150 = load i32, i32* %dest_length, align 4, !tbaa !22
  %add174 = add nsw i32 %150, %149
  store i32 %add174, i32* %dest_length, align 4, !tbaa !22
  %151 = load i32, i32* %OnlyCalcLength, align 4, !tbaa !22
  %tobool175 = icmp ne i32 %151, 0
  br i1 %tobool175, label %if.end.179, label %if.then.176

if.then.176:                                      ; preds = %for.body.170
  %152 = load i32, i32* %written, align 4, !tbaa !22
  %153 = load i8*, i8** %dest, align 8, !tbaa !1
  %idx.ext177 = sext i32 %152 to i64
  %add.ptr178 = getelementptr inbounds i8, i8* %153, i64 %idx.ext177
  store i8* %add.ptr178, i8** %dest, align 8, !tbaa !1
  br label %if.end.179

if.end.179:                                       ; preds = %if.then.176, %for.body.170
  br label %for.inc.180

for.inc.180:                                      ; preds = %if.end.179
  %154 = load i32, i32* %i, align 4, !tbaa !22
  %inc181 = add nsw i32 %154, 1
  store i32 %inc181, i32* %i, align 4, !tbaa !22
  br label %for.cond.167

for.end.182:                                      ; preds = %for.cond.167
  %155 = load i32, i32* %OnlyCalcLength, align 4, !tbaa !22
  %tobool183 = icmp ne i32 %155, 0
  br i1 %tobool183, label %if.else.189, label %if.then.184

if.then.184:                                      ; preds = %for.end.182
  %156 = load i8*, i8** %source, align 8, !tbaa !1
  %incdec.ptr185 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %incdec.ptr185, i8** %source, align 8, !tbaa !1
  %157 = load i8, i8* %156, align 1, !tbaa !60
  %158 = load i8*, i8** %dest, align 8, !tbaa !1
  %incdec.ptr186 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %incdec.ptr186, i8** %dest, align 8, !tbaa !1
  store i8 %157, i8* %158, align 1, !tbaa !60
  %159 = load i8*, i8** %source, align 8, !tbaa !1
  %incdec.ptr187 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %incdec.ptr187, i8** %source, align 8, !tbaa !1
  %160 = load i8, i8* %159, align 1, !tbaa !60
  %161 = load i8*, i8** %dest, align 8, !tbaa !1
  %incdec.ptr188 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %incdec.ptr188, i8** %dest, align 8, !tbaa !1
  store i8 %160, i8* %161, align 1, !tbaa !60
  br label %if.end.191

if.else.189:                                      ; preds = %for.end.182
  %162 = load i8*, i8** %source, align 8, !tbaa !1
  %add.ptr190 = getelementptr inbounds i8, i8* %162, i64 2
  store i8* %add.ptr190, i8** %source, align 8, !tbaa !1
  br label %if.end.191

if.end.191:                                       ; preds = %if.else.189, %if.then.184
  %163 = load i32, i32* %dest_length, align 4, !tbaa !22
  %add192 = add nsw i32 %163, 2
  store i32 %add192, i32* %dest_length, align 4, !tbaa !22
  br label %if.end.193

if.end.193:                                       ; preds = %if.end.191, %sw.epilog
  br label %sw.epilog.306

sw.bb.194:                                        ; preds = %if.then.18
  %164 = load i32, i32* %CurrentNumberIndex, align 4, !tbaa !22
  %cmp195 = icmp ne i32 %164, 0
  br i1 %cmp195, label %land.lhs.true, label %if.else.255

land.lhs.true:                                    ; preds = %sw.bb.194
  %165 = load i32, i32* %CurrentNumberIndex, align 4, !tbaa !22
  %sub197 = sub nsw i32 %165, 1
  %idxprom198 = sext i32 %sub197 to i64
  %arrayidx199 = getelementptr inbounds [64 x i32], [64 x i32]* %Stack, i32 0, i64 %idxprom198
  %166 = load i32, i32* %arrayidx199, align 4, !tbaa !22
  %idxprom200 = sext i32 %166 to i64
  %167 = load i8*, i8** %SubrsWithMM.addr, align 8, !tbaa !1
  %arrayidx201 = getelementptr inbounds i8, i8* %167, i64 %idxprom200
  %168 = load i8, i8* %arrayidx201, align 1, !tbaa !60
  %conv202 = zext i8 %168 to i32
  %cmp203 = icmp ne i32 %conv202, 0
  br i1 %cmp203, label %if.then.205, label %if.else.255

if.then.205:                                      ; preds = %land.lhs.true
  %169 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %169) #1
  %170 = load i32, i32* %CurrentNumberIndex, align 4, !tbaa !22
  %sub206 = sub nsw i32 %170, 1
  %idxprom207 = sext i32 %sub206 to i64
  %arrayidx208 = getelementptr inbounds [64 x i32], [64 x i32]* %Stack, i32 0, i64 %idxprom207
  %171 = load i32, i32* %arrayidx208, align 4, !tbaa !22
  store i32 %171, i32* %index, align 4, !tbaa !22
  %172 = bitcast i32* %StackBase to i8*
  call void @llvm.lifetime.start(i64 4, i8* %172) #1
  %173 = load i32, i32* %CurrentNumberIndex, align 4, !tbaa !22
  %sub209 = sub nsw i32 %173, 1
  %174 = load %struct.gs_font_type1_s*, %struct.gs_font_type1_s** %pfont.addr, align 8, !tbaa !1
  %data210 = getelementptr inbounds %struct.gs_font_type1_s, %struct.gs_font_type1_s* %174, i32 0, i32 29
  %WeightVector211 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %data210, i32 0, i32 25
  %count212 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %WeightVector211, i32 0, i32 0
  %175 = load i32, i32* %count212, align 4, !tbaa !95
  %176 = load i32, i32* %index, align 4, !tbaa !22
  %idxprom213 = sext i32 %176 to i64
  %177 = load i8*, i8** %SubrsWithMM.addr, align 8, !tbaa !1
  %arrayidx214 = getelementptr inbounds i8, i8* %177, i64 %idxprom213
  %178 = load i8, i8* %arrayidx214, align 1, !tbaa !60
  %conv215 = zext i8 %178 to i32
  %mul216 = mul nsw i32 %175, %conv215
  %sub217 = sub nsw i32 %sub209, %mul216
  store i32 %sub217, i32* %StackBase, align 4, !tbaa !22
  %179 = load i32, i32* %CurrentNumberIndex, align 4, !tbaa !22
  %dec = add nsw i32 %179, -1
  store i32 %dec, i32* %CurrentNumberIndex, align 4, !tbaa !22
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond.218

for.cond.218:                                     ; preds = %for.inc.231, %if.then.205
  %180 = load i32, i32* %i, align 4, !tbaa !22
  %181 = load i32, i32* %StackBase, align 4, !tbaa !22
  %cmp219 = icmp slt i32 %180, %181
  br i1 %cmp219, label %for.body.221, label %for.end.233

for.body.221:                                     ; preds = %for.cond.218
  %182 = load i8*, i8** %dest, align 8, !tbaa !1
  %183 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom222 = sext i32 %183 to i64
  %arrayidx223 = getelementptr inbounds [64 x i32], [64 x i32]* %Stack, i32 0, i64 %idxprom222
  %184 = load i32, i32* %arrayidx223, align 4, !tbaa !22
  %call224 = call i32 @WriteNumber(i8* %182, i32 %184) #5
  store i32 %call224, i32* %written, align 4, !tbaa !22
  %185 = load i32, i32* %written, align 4, !tbaa !22
  %186 = load i32, i32* %dest_length, align 4, !tbaa !22
  %add225 = add nsw i32 %186, %185
  store i32 %add225, i32* %dest_length, align 4, !tbaa !22
  %187 = load i32, i32* %OnlyCalcLength, align 4, !tbaa !22
  %tobool226 = icmp ne i32 %187, 0
  br i1 %tobool226, label %if.end.230, label %if.then.227

if.then.227:                                      ; preds = %for.body.221
  %188 = load i32, i32* %written, align 4, !tbaa !22
  %189 = load i8*, i8** %dest, align 8, !tbaa !1
  %idx.ext228 = sext i32 %188 to i64
  %add.ptr229 = getelementptr inbounds i8, i8* %189, i64 %idx.ext228
  store i8* %add.ptr229, i8** %dest, align 8, !tbaa !1
  br label %if.end.230

if.end.230:                                       ; preds = %if.then.227, %for.body.221
  br label %for.inc.231

for.inc.231:                                      ; preds = %if.end.230
  %190 = load i32, i32* %i, align 4, !tbaa !22
  %inc232 = add nsw i32 %190, 1
  store i32 %inc232, i32* %i, align 4, !tbaa !22
  br label %for.cond.218

for.end.233:                                      ; preds = %for.cond.218
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond.234

for.cond.234:                                     ; preds = %for.inc.251, %for.end.233
  %191 = load i32, i32* %i, align 4, !tbaa !22
  %192 = load i32, i32* %index, align 4, !tbaa !22
  %idxprom235 = sext i32 %192 to i64
  %193 = load i8*, i8** %SubrsWithMM.addr, align 8, !tbaa !1
  %arrayidx236 = getelementptr inbounds i8, i8* %193, i64 %idxprom235
  %194 = load i8, i8* %arrayidx236, align 1, !tbaa !60
  %conv237 = zext i8 %194 to i32
  %cmp238 = icmp slt i32 %191, %conv237
  br i1 %cmp238, label %for.body.240, label %for.end.253

for.body.240:                                     ; preds = %for.cond.234
  %195 = load i8*, i8** %dest, align 8, !tbaa !1
  %196 = load i32, i32* %StackBase, align 4, !tbaa !22
  %197 = load i32, i32* %i, align 4, !tbaa !22
  %add241 = add nsw i32 %196, %197
  %idxprom242 = sext i32 %add241 to i64
  %arrayidx243 = getelementptr inbounds [64 x i32], [64 x i32]* %Stack, i32 0, i64 %idxprom242
  %198 = load i32, i32* %arrayidx243, align 4, !tbaa !22
  %call244 = call i32 @WriteNumber(i8* %195, i32 %198) #5
  store i32 %call244, i32* %written, align 4, !tbaa !22
  %199 = load i32, i32* %written, align 4, !tbaa !22
  %200 = load i32, i32* %dest_length, align 4, !tbaa !22
  %add245 = add nsw i32 %200, %199
  store i32 %add245, i32* %dest_length, align 4, !tbaa !22
  %201 = load i32, i32* %OnlyCalcLength, align 4, !tbaa !22
  %tobool246 = icmp ne i32 %201, 0
  br i1 %tobool246, label %if.end.250, label %if.then.247

if.then.247:                                      ; preds = %for.body.240
  %202 = load i32, i32* %written, align 4, !tbaa !22
  %203 = load i8*, i8** %dest, align 8, !tbaa !1
  %idx.ext248 = sext i32 %202 to i64
  %add.ptr249 = getelementptr inbounds i8, i8* %203, i64 %idx.ext248
  store i8* %add.ptr249, i8** %dest, align 8, !tbaa !1
  br label %if.end.250

if.end.250:                                       ; preds = %if.then.247, %for.body.240
  br label %for.inc.251

for.inc.251:                                      ; preds = %if.end.250
  %204 = load i32, i32* %i, align 4, !tbaa !22
  %inc252 = add nsw i32 %204, 1
  store i32 %inc252, i32* %i, align 4, !tbaa !22
  br label %for.cond.234

for.end.253:                                      ; preds = %for.cond.234
  %205 = load i8*, i8** %source, align 8, !tbaa !1
  %incdec.ptr254 = getelementptr inbounds i8, i8* %205, i32 1
  store i8* %incdec.ptr254, i8** %source, align 8, !tbaa !1
  %206 = bitcast i32* %StackBase to i8*
  call void @llvm.lifetime.end(i64 4, i8* %206) #1
  %207 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %207) #1
  br label %if.end.280

if.else.255:                                      ; preds = %land.lhs.true, %sw.bb.194
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond.256

for.cond.256:                                     ; preds = %for.inc.269, %if.else.255
  %208 = load i32, i32* %i, align 4, !tbaa !22
  %209 = load i32, i32* %CurrentNumberIndex, align 4, !tbaa !22
  %cmp257 = icmp slt i32 %208, %209
  br i1 %cmp257, label %for.body.259, label %for.end.271

for.body.259:                                     ; preds = %for.cond.256
  %210 = load i8*, i8** %dest, align 8, !tbaa !1
  %211 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom260 = sext i32 %211 to i64
  %arrayidx261 = getelementptr inbounds [64 x i32], [64 x i32]* %Stack, i32 0, i64 %idxprom260
  %212 = load i32, i32* %arrayidx261, align 4, !tbaa !22
  %call262 = call i32 @WriteNumber(i8* %210, i32 %212) #5
  store i32 %call262, i32* %written, align 4, !tbaa !22
  %213 = load i32, i32* %written, align 4, !tbaa !22
  %214 = load i32, i32* %dest_length, align 4, !tbaa !22
  %add263 = add nsw i32 %214, %213
  store i32 %add263, i32* %dest_length, align 4, !tbaa !22
  %215 = load i32, i32* %OnlyCalcLength, align 4, !tbaa !22
  %tobool264 = icmp ne i32 %215, 0
  br i1 %tobool264, label %if.end.268, label %if.then.265

if.then.265:                                      ; preds = %for.body.259
  %216 = load i32, i32* %written, align 4, !tbaa !22
  %217 = load i8*, i8** %dest, align 8, !tbaa !1
  %idx.ext266 = sext i32 %216 to i64
  %add.ptr267 = getelementptr inbounds i8, i8* %217, i64 %idx.ext266
  store i8* %add.ptr267, i8** %dest, align 8, !tbaa !1
  br label %if.end.268

if.end.268:                                       ; preds = %if.then.265, %for.body.259
  br label %for.inc.269

for.inc.269:                                      ; preds = %if.end.268
  %218 = load i32, i32* %i, align 4, !tbaa !22
  %inc270 = add nsw i32 %218, 1
  store i32 %inc270, i32* %i, align 4, !tbaa !22
  br label %for.cond.256

for.end.271:                                      ; preds = %for.cond.256
  %219 = load i32, i32* %OnlyCalcLength, align 4, !tbaa !22
  %tobool272 = icmp ne i32 %219, 0
  br i1 %tobool272, label %if.else.276, label %if.then.273

if.then.273:                                      ; preds = %for.end.271
  %220 = load i8*, i8** %source, align 8, !tbaa !1
  %incdec.ptr274 = getelementptr inbounds i8, i8* %220, i32 1
  store i8* %incdec.ptr274, i8** %source, align 8, !tbaa !1
  %221 = load i8, i8* %220, align 1, !tbaa !60
  %222 = load i8*, i8** %dest, align 8, !tbaa !1
  %incdec.ptr275 = getelementptr inbounds i8, i8* %222, i32 1
  store i8* %incdec.ptr275, i8** %dest, align 8, !tbaa !1
  store i8 %221, i8* %222, align 1, !tbaa !60
  br label %if.end.278

if.else.276:                                      ; preds = %for.end.271
  %223 = load i8*, i8** %source, align 8, !tbaa !1
  %incdec.ptr277 = getelementptr inbounds i8, i8* %223, i32 1
  store i8* %incdec.ptr277, i8** %source, align 8, !tbaa !1
  br label %if.end.278

if.end.278:                                       ; preds = %if.else.276, %if.then.273
  %224 = load i32, i32* %dest_length, align 4, !tbaa !22
  %inc279 = add nsw i32 %224, 1
  store i32 %inc279, i32* %dest_length, align 4, !tbaa !22
  br label %if.end.280

if.end.280:                                       ; preds = %if.end.278, %for.end.253
  br label %sw.epilog.306

sw.default.281:                                   ; preds = %if.then.18
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond.282

for.cond.282:                                     ; preds = %for.inc.295, %sw.default.281
  %225 = load i32, i32* %i, align 4, !tbaa !22
  %226 = load i32, i32* %CurrentNumberIndex, align 4, !tbaa !22
  %cmp283 = icmp slt i32 %225, %226
  br i1 %cmp283, label %for.body.285, label %for.end.297

for.body.285:                                     ; preds = %for.cond.282
  %227 = load i8*, i8** %dest, align 8, !tbaa !1
  %228 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom286 = sext i32 %228 to i64
  %arrayidx287 = getelementptr inbounds [64 x i32], [64 x i32]* %Stack, i32 0, i64 %idxprom286
  %229 = load i32, i32* %arrayidx287, align 4, !tbaa !22
  %call288 = call i32 @WriteNumber(i8* %227, i32 %229) #5
  store i32 %call288, i32* %written, align 4, !tbaa !22
  %230 = load i32, i32* %written, align 4, !tbaa !22
  %231 = load i32, i32* %dest_length, align 4, !tbaa !22
  %add289 = add nsw i32 %231, %230
  store i32 %add289, i32* %dest_length, align 4, !tbaa !22
  %232 = load i32, i32* %OnlyCalcLength, align 4, !tbaa !22
  %tobool290 = icmp ne i32 %232, 0
  br i1 %tobool290, label %if.end.294, label %if.then.291

if.then.291:                                      ; preds = %for.body.285
  %233 = load i32, i32* %written, align 4, !tbaa !22
  %234 = load i8*, i8** %dest, align 8, !tbaa !1
  %idx.ext292 = sext i32 %233 to i64
  %add.ptr293 = getelementptr inbounds i8, i8* %234, i64 %idx.ext292
  store i8* %add.ptr293, i8** %dest, align 8, !tbaa !1
  br label %if.end.294

if.end.294:                                       ; preds = %if.then.291, %for.body.285
  br label %for.inc.295

for.inc.295:                                      ; preds = %if.end.294
  %235 = load i32, i32* %i, align 4, !tbaa !22
  %inc296 = add nsw i32 %235, 1
  store i32 %inc296, i32* %i, align 4, !tbaa !22
  br label %for.cond.282

for.end.297:                                      ; preds = %for.cond.282
  %236 = load i32, i32* %OnlyCalcLength, align 4, !tbaa !22
  %tobool298 = icmp ne i32 %236, 0
  br i1 %tobool298, label %if.else.302, label %if.then.299

if.then.299:                                      ; preds = %for.end.297
  %237 = load i8*, i8** %source, align 8, !tbaa !1
  %incdec.ptr300 = getelementptr inbounds i8, i8* %237, i32 1
  store i8* %incdec.ptr300, i8** %source, align 8, !tbaa !1
  %238 = load i8, i8* %237, align 1, !tbaa !60
  %239 = load i8*, i8** %dest, align 8, !tbaa !1
  %incdec.ptr301 = getelementptr inbounds i8, i8* %239, i32 1
  store i8* %incdec.ptr301, i8** %dest, align 8, !tbaa !1
  store i8 %238, i8* %239, align 1, !tbaa !60
  br label %if.end.304

if.else.302:                                      ; preds = %for.end.297
  %240 = load i8*, i8** %source, align 8, !tbaa !1
  %incdec.ptr303 = getelementptr inbounds i8, i8* %240, i32 1
  store i8* %incdec.ptr303, i8** %source, align 8, !tbaa !1
  br label %if.end.304

if.end.304:                                       ; preds = %if.else.302, %if.then.299
  %241 = load i32, i32* %dest_length, align 4, !tbaa !22
  %inc305 = add nsw i32 %241, 1
  store i32 %inc305, i32* %dest_length, align 4, !tbaa !22
  br label %sw.epilog.306

sw.epilog.306:                                    ; preds = %if.end.304, %if.end.280, %if.end.193
  store i32 0, i32* %CurrentNumberIndex, align 4, !tbaa !22
  br label %if.end.381

if.else.307:                                      ; preds = %while.body
  %242 = load i8*, i8** %source, align 8, !tbaa !1
  %243 = load i8, i8* %242, align 1, !tbaa !60
  %conv308 = zext i8 %243 to i32
  %cmp309 = icmp slt i32 %conv308, 247
  br i1 %cmp309, label %if.then.311, label %if.else.318

if.then.311:                                      ; preds = %if.else.307
  %244 = load i8*, i8** %source, align 8, !tbaa !1
  %incdec.ptr312 = getelementptr inbounds i8, i8* %244, i32 1
  store i8* %incdec.ptr312, i8** %source, align 8, !tbaa !1
  %245 = load i8, i8* %244, align 1, !tbaa !60
  %conv313 = zext i8 %245 to i32
  %sub314 = sub nsw i32 %conv313, 139
  %246 = load i32, i32* %CurrentNumberIndex, align 4, !tbaa !22
  %inc315 = add nsw i32 %246, 1
  store i32 %inc315, i32* %CurrentNumberIndex, align 4, !tbaa !22
  %idxprom316 = sext i32 %246 to i64
  %arrayidx317 = getelementptr inbounds [64 x i32], [64 x i32]* %Stack, i32 0, i64 %idxprom316
  store i32 %sub314, i32* %arrayidx317, align 4, !tbaa !22
  br label %if.end.380

if.else.318:                                      ; preds = %if.else.307
  %247 = load i8*, i8** %source, align 8, !tbaa !1
  %248 = load i8, i8* %247, align 1, !tbaa !60
  %conv319 = zext i8 %248 to i32
  %cmp320 = icmp slt i32 %conv319, 251
  br i1 %cmp320, label %if.then.322, label %if.else.336

if.then.322:                                      ; preds = %if.else.318
  %249 = load i8*, i8** %source, align 8, !tbaa !1
  %incdec.ptr323 = getelementptr inbounds i8, i8* %249, i32 1
  store i8* %incdec.ptr323, i8** %source, align 8, !tbaa !1
  %250 = load i8, i8* %249, align 1, !tbaa !60
  %conv324 = zext i8 %250 to i32
  %sub325 = sub nsw i32 %conv324, 247
  %mul326 = mul nsw i32 %sub325, 256
  %add327 = add nsw i32 %mul326, 108
  %251 = load i32, i32* %CurrentNumberIndex, align 4, !tbaa !22
  %idxprom328 = sext i32 %251 to i64
  %arrayidx329 = getelementptr inbounds [64 x i32], [64 x i32]* %Stack, i32 0, i64 %idxprom328
  store i32 %add327, i32* %arrayidx329, align 4, !tbaa !22
  %252 = load i8*, i8** %source, align 8, !tbaa !1
  %incdec.ptr330 = getelementptr inbounds i8, i8* %252, i32 1
  store i8* %incdec.ptr330, i8** %source, align 8, !tbaa !1
  %253 = load i8, i8* %252, align 1, !tbaa !60
  %conv331 = zext i8 %253 to i32
  %254 = load i32, i32* %CurrentNumberIndex, align 4, !tbaa !22
  %inc332 = add nsw i32 %254, 1
  store i32 %inc332, i32* %CurrentNumberIndex, align 4, !tbaa !22
  %idxprom333 = sext i32 %254 to i64
  %arrayidx334 = getelementptr inbounds [64 x i32], [64 x i32]* %Stack, i32 0, i64 %idxprom333
  %255 = load i32, i32* %arrayidx334, align 4, !tbaa !22
  %add335 = add nsw i32 %255, %conv331
  store i32 %add335, i32* %arrayidx334, align 4, !tbaa !22
  br label %if.end.379

if.else.336:                                      ; preds = %if.else.318
  %256 = load i8*, i8** %source, align 8, !tbaa !1
  %257 = load i8, i8* %256, align 1, !tbaa !60
  %conv337 = zext i8 %257 to i32
  %cmp338 = icmp slt i32 %conv337, 255
  br i1 %cmp338, label %if.then.340, label %if.else.354

if.then.340:                                      ; preds = %if.else.336
  %258 = load i8*, i8** %source, align 8, !tbaa !1
  %incdec.ptr341 = getelementptr inbounds i8, i8* %258, i32 1
  store i8* %incdec.ptr341, i8** %source, align 8, !tbaa !1
  %259 = load i8, i8* %258, align 1, !tbaa !60
  %conv342 = zext i8 %259 to i32
  %sub343 = sub nsw i32 %conv342, 251
  %mul344 = mul nsw i32 %sub343, -256
  %sub345 = sub nsw i32 %mul344, 108
  %260 = load i32, i32* %CurrentNumberIndex, align 4, !tbaa !22
  %idxprom346 = sext i32 %260 to i64
  %arrayidx347 = getelementptr inbounds [64 x i32], [64 x i32]* %Stack, i32 0, i64 %idxprom346
  store i32 %sub345, i32* %arrayidx347, align 4, !tbaa !22
  %261 = load i8*, i8** %source, align 8, !tbaa !1
  %incdec.ptr348 = getelementptr inbounds i8, i8* %261, i32 1
  store i8* %incdec.ptr348, i8** %source, align 8, !tbaa !1
  %262 = load i8, i8* %261, align 1, !tbaa !60
  %conv349 = zext i8 %262 to i32
  %263 = load i32, i32* %CurrentNumberIndex, align 4, !tbaa !22
  %inc350 = add nsw i32 %263, 1
  store i32 %inc350, i32* %CurrentNumberIndex, align 4, !tbaa !22
  %idxprom351 = sext i32 %263 to i64
  %arrayidx352 = getelementptr inbounds [64 x i32], [64 x i32]* %Stack, i32 0, i64 %idxprom351
  %264 = load i32, i32* %arrayidx352, align 4, !tbaa !22
  %sub353 = sub nsw i32 %264, %conv349
  store i32 %sub353, i32* %arrayidx352, align 4, !tbaa !22
  br label %if.end.378

if.else.354:                                      ; preds = %if.else.336
  %265 = load i8*, i8** %source, align 8, !tbaa !1
  %incdec.ptr355 = getelementptr inbounds i8, i8* %265, i32 1
  store i8* %incdec.ptr355, i8** %source, align 8, !tbaa !1
  %266 = load i8*, i8** %source, align 8, !tbaa !1
  %incdec.ptr356 = getelementptr inbounds i8, i8* %266, i32 1
  store i8* %incdec.ptr356, i8** %source, align 8, !tbaa !1
  %267 = load i8, i8* %266, align 1, !tbaa !60
  %conv357 = zext i8 %267 to i32
  %shl = shl i32 %conv357, 24
  %268 = load i32, i32* %CurrentNumberIndex, align 4, !tbaa !22
  %idxprom358 = sext i32 %268 to i64
  %arrayidx359 = getelementptr inbounds [64 x i32], [64 x i32]* %Stack, i32 0, i64 %idxprom358
  store i32 %shl, i32* %arrayidx359, align 4, !tbaa !22
  %269 = load i8*, i8** %source, align 8, !tbaa !1
  %incdec.ptr360 = getelementptr inbounds i8, i8* %269, i32 1
  store i8* %incdec.ptr360, i8** %source, align 8, !tbaa !1
  %270 = load i8, i8* %269, align 1, !tbaa !60
  %conv361 = zext i8 %270 to i32
  %shl362 = shl i32 %conv361, 16
  %271 = load i32, i32* %CurrentNumberIndex, align 4, !tbaa !22
  %idxprom363 = sext i32 %271 to i64
  %arrayidx364 = getelementptr inbounds [64 x i32], [64 x i32]* %Stack, i32 0, i64 %idxprom363
  %272 = load i32, i32* %arrayidx364, align 4, !tbaa !22
  %add365 = add nsw i32 %272, %shl362
  store i32 %add365, i32* %arrayidx364, align 4, !tbaa !22
  %273 = load i8*, i8** %source, align 8, !tbaa !1
  %incdec.ptr366 = getelementptr inbounds i8, i8* %273, i32 1
  store i8* %incdec.ptr366, i8** %source, align 8, !tbaa !1
  %274 = load i8, i8* %273, align 1, !tbaa !60
  %conv367 = zext i8 %274 to i32
  %shl368 = shl i32 %conv367, 8
  %275 = load i32, i32* %CurrentNumberIndex, align 4, !tbaa !22
  %idxprom369 = sext i32 %275 to i64
  %arrayidx370 = getelementptr inbounds [64 x i32], [64 x i32]* %Stack, i32 0, i64 %idxprom369
  %276 = load i32, i32* %arrayidx370, align 4, !tbaa !22
  %add371 = add nsw i32 %276, %shl368
  store i32 %add371, i32* %arrayidx370, align 4, !tbaa !22
  %277 = load i8*, i8** %source, align 8, !tbaa !1
  %incdec.ptr372 = getelementptr inbounds i8, i8* %277, i32 1
  store i8* %incdec.ptr372, i8** %source, align 8, !tbaa !1
  %278 = load i8, i8* %277, align 1, !tbaa !60
  %conv373 = zext i8 %278 to i32
  %279 = load i32, i32* %CurrentNumberIndex, align 4, !tbaa !22
  %inc374 = add nsw i32 %279, 1
  store i32 %inc374, i32* %CurrentNumberIndex, align 4, !tbaa !22
  %idxprom375 = sext i32 %279 to i64
  %arrayidx376 = getelementptr inbounds [64 x i32], [64 x i32]* %Stack, i32 0, i64 %idxprom375
  %280 = load i32, i32* %arrayidx376, align 4, !tbaa !22
  %add377 = add nsw i32 %280, %conv373
  store i32 %add377, i32* %arrayidx376, align 4, !tbaa !22
  br label %if.end.378

if.end.378:                                       ; preds = %if.else.354, %if.then.340
  br label %if.end.379

if.end.379:                                       ; preds = %if.end.378, %if.then.322
  br label %if.end.380

if.end.380:                                       ; preds = %if.end.379, %if.then.311
  br label %if.end.381

if.end.381:                                       ; preds = %if.end.380, %sw.epilog.306
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %281 = load %struct.gs_bytestring_s*, %struct.gs_bytestring_s** %data, align 8, !tbaa !1
  %data382 = getelementptr inbounds %struct.gs_bytestring_s, %struct.gs_bytestring_s* %281, i32 0, i32 0
  %282 = load i8*, i8** %data382, align 8, !tbaa !109
  store i8* %282, i8** %source, align 8, !tbaa !1
  store i16 4330, i16* %state, align 2, !tbaa !74
  %283 = load i8*, i8** %source, align 8, !tbaa !1
  %284 = load i8*, i8** %source, align 8, !tbaa !1
  %285 = load %struct.gs_bytestring_s*, %struct.gs_bytestring_s** %data, align 8, !tbaa !1
  %size383 = getelementptr inbounds %struct.gs_bytestring_s, %struct.gs_bytestring_s* %285, i32 0, i32 1
  %286 = load i32, i32* %size383, align 4, !tbaa !103
  %call384 = call i32 @gs_type1_encrypt(i8* %283, i8* %284, i32 %286, i16* %state) #5
  %287 = load i32, i32* %OnlyCalcLength, align 4, !tbaa !22
  %tobool385 = icmp ne i32 %287, 0
  br i1 %tobool385, label %if.end.388, label %if.then.386

if.then.386:                                      ; preds = %while.end
  store i16 4330, i16* %state, align 2, !tbaa !74
  %288 = load i8*, i8** %stripped.addr, align 8, !tbaa !1
  %289 = load i8*, i8** %stripped.addr, align 8, !tbaa !1
  %290 = load i32, i32* %dest_length, align 4, !tbaa !22
  %call387 = call i32 @gs_type1_encrypt(i8* %288, i8* %289, i32 %290, i16* %state) #5
  br label %if.end.388

if.end.388:                                       ; preds = %if.then.386, %while.end
  %291 = load i32, i32* %dest_length, align 4, !tbaa !22
  %292 = bitcast [16 x i8]* %Buffer to i8*
  call void @llvm.lifetime.end(i64 16, i8* %292) #1
  %293 = bitcast i32* %OnlyCalcLength to i8*
  call void @llvm.lifetime.end(i64 4, i8* %293) #1
  %294 = bitcast i32* %written to i8*
  call void @llvm.lifetime.end(i64 4, i8* %294) #1
  %295 = bitcast [64 x i32]* %Stack to i8*
  call void @llvm.lifetime.end(i64 256, i8* %295) #1
  %296 = bitcast i32* %CurrentNumberIndex to i8*
  call void @llvm.lifetime.end(i64 4, i8* %296) #1
  %297 = bitcast i32* %dest_length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %297) #1
  %298 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %298) #1
  %299 = bitcast i8** %end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %299) #1
  %300 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %300) #1
  %301 = bitcast i8** %source to i8*
  call void @llvm.lifetime.end(i64 8, i8* %301) #1
  %302 = bitcast %struct.gs_bytestring_s** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %302) #1
  %303 = bitcast i16* %state to i8*
  call void @llvm.lifetime.end(i64 2, i8* %303) #1
  ret i32 %291
}

declare i32 @gs_sprintf(i8*, i8*, ...) #2

declare void @psf_enumerate_list_begin(%struct.psf_glyph_enum_s*, %struct.gs_font_s*, i64*, i32, i32) #2

declare i32 @psf_enumerate_glyphs_next(%struct.psf_glyph_enum_s*, i64*) #2

declare void @psf_enumerate_glyphs_reset(%struct.psf_glyph_enum_s*) #2

declare i32 @param_write_float_array(%struct.gs_param_list_s*, i8*, %struct.gs_param_float_array_s*) #2

declare i32 @gs_type1_decrypt(i8*, i8*, i32, i16*) #2

; Function Attrs: nounwind uwtable
define internal i32 @WriteNumber(i8* %dest, i32 %value) #0 {
entry:
  %retval = alloca i32, align 4
  %dest.addr = alloca i8*, align 8
  %value.addr = alloca i32, align 4
  %quotient = alloca i32, align 4
  %quotient23 = alloca i32, align 4
  %newval = alloca i32, align 4
  store i8* %dest, i8** %dest.addr, align 8, !tbaa !1
  store i32 %value, i32* %value.addr, align 4, !tbaa !22
  %0 = load i32, i32* %value.addr, align 4, !tbaa !22
  %cmp = icmp sge i32 %0, -107
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %value.addr, align 4, !tbaa !22
  %cmp1 = icmp sle i32 %1, 107
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load i32, i32* %value.addr, align 4, !tbaa !22
  %add = add nsw i32 %2, 139
  %conv = trunc i32 %add to i8
  %3 = load i8*, i8** %dest.addr, align 8, !tbaa !1
  store i8 %conv, i8* %3, align 1, !tbaa !60
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %4 = load i32, i32* %value.addr, align 4, !tbaa !22
  %cmp2 = icmp sge i32 %4, 108
  br i1 %cmp2, label %land.lhs.true.4, label %if.else.16

land.lhs.true.4:                                  ; preds = %if.else
  %5 = load i32, i32* %value.addr, align 4, !tbaa !22
  %cmp5 = icmp sle i32 %5, 1131
  br i1 %cmp5, label %if.then.7, label %if.else.16

if.then.7:                                        ; preds = %land.lhs.true.4
  %6 = bitcast i32* %quotient to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i32, i32* %value.addr, align 4, !tbaa !22
  %sub = sub nsw i32 %7, 108
  %conv8 = sitofp i32 %sub to double
  %div = fdiv double %conv8, 2.560000e+02
  %call = call double @floor(double %div) #7
  %conv9 = fptosi double %call to i32
  store i32 %conv9, i32* %quotient, align 4, !tbaa !22
  %8 = load i32, i32* %quotient, align 4, !tbaa !22
  %add10 = add nsw i32 %8, 247
  %conv11 = trunc i32 %add10 to i8
  %9 = load i8*, i8** %dest.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 0
  store i8 %conv11, i8* %arrayidx, align 1, !tbaa !60
  %10 = load i32, i32* %value.addr, align 4, !tbaa !22
  %sub12 = sub nsw i32 %10, 108
  %11 = load i32, i32* %quotient, align 4, !tbaa !22
  %mul = mul nsw i32 %11, 256
  %sub13 = sub nsw i32 %sub12, %mul
  %conv14 = trunc i32 %sub13 to i8
  %12 = load i8*, i8** %dest.addr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 1
  store i8 %conv14, i8* %arrayidx15, align 1, !tbaa !60
  store i32 2, i32* %retval
  %13 = bitcast i32* %quotient to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  br label %return

if.else.16:                                       ; preds = %land.lhs.true.4, %if.else
  %14 = load i32, i32* %value.addr, align 4, !tbaa !22
  %cmp17 = icmp sle i32 %14, -108
  br i1 %cmp17, label %land.lhs.true.19, label %if.else.38

land.lhs.true.19:                                 ; preds = %if.else.16
  %15 = load i32, i32* %value.addr, align 4, !tbaa !22
  %cmp20 = icmp sge i32 %15, -1131
  br i1 %cmp20, label %if.then.22, label %if.else.38

if.then.22:                                       ; preds = %land.lhs.true.19
  %16 = bitcast i32* %quotient23 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load i32, i32* %value.addr, align 4, !tbaa !22
  %add24 = add nsw i32 %17, 108
  %div25 = sdiv i32 %add24, -256
  %conv26 = sitofp i32 %div25 to double
  %call27 = call double @floor(double %conv26) #7
  %conv28 = fptosi double %call27 to i32
  store i32 %conv28, i32* %quotient23, align 4, !tbaa !22
  %18 = bitcast i32* %newval to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load i32, i32* %value.addr, align 4, !tbaa !22
  %20 = load i32, i32* %quotient23, align 4, !tbaa !22
  %mul29 = mul nsw i32 256, %20
  %add30 = add nsw i32 %19, %mul29
  %add31 = add nsw i32 %add30, 108
  store i32 %add31, i32* %newval, align 4, !tbaa !22
  %21 = load i32, i32* %quotient23, align 4, !tbaa !22
  %add32 = add nsw i32 %21, 251
  %conv33 = trunc i32 %add32 to i8
  %22 = load i8*, i8** %dest.addr, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds i8, i8* %22, i64 0
  store i8 %conv33, i8* %arrayidx34, align 1, !tbaa !60
  %23 = load i32, i32* %newval, align 4, !tbaa !22
  %mul35 = mul nsw i32 %23, -1
  %conv36 = trunc i32 %mul35 to i8
  %24 = load i8*, i8** %dest.addr, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds i8, i8* %24, i64 1
  store i8 %conv36, i8* %arrayidx37, align 1, !tbaa !60
  store i32 2, i32* %retval
  %25 = bitcast i32* %newval to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast i32* %quotient23 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  br label %return

if.else.38:                                       ; preds = %land.lhs.true.19, %if.else.16
  %27 = load i8*, i8** %dest.addr, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds i8, i8* %27, i64 0
  store i8 -1, i8* %arrayidx39, align 1, !tbaa !60
  %28 = load i32, i32* %value.addr, align 4, !tbaa !22
  %shr = ashr i32 %28, 24
  %conv40 = trunc i32 %shr to i8
  %29 = load i8*, i8** %dest.addr, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds i8, i8* %29, i64 1
  store i8 %conv40, i8* %arrayidx41, align 1, !tbaa !60
  %30 = load i32, i32* %value.addr, align 4, !tbaa !22
  %and = and i32 %30, 16711680
  %shr42 = ashr i32 %and, 16
  %conv43 = trunc i32 %shr42 to i8
  %31 = load i8*, i8** %dest.addr, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds i8, i8* %31, i64 2
  store i8 %conv43, i8* %arrayidx44, align 1, !tbaa !60
  %32 = load i32, i32* %value.addr, align 4, !tbaa !22
  %and45 = and i32 %32, 65280
  %shr46 = ashr i32 %and45, 8
  %conv47 = trunc i32 %shr46 to i8
  %33 = load i8*, i8** %dest.addr, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds i8, i8* %33, i64 3
  store i8 %conv47, i8* %arrayidx48, align 1, !tbaa !60
  %34 = load i32, i32* %value.addr, align 4, !tbaa !22
  %and49 = and i32 %34, 255
  %conv50 = trunc i32 %and49 to i8
  %35 = load i8*, i8** %dest.addr, align 8, !tbaa !1
  %arrayidx51 = getelementptr inbounds i8, i8* %35, i64 4
  store i8 %conv50, i8* %arrayidx51, align 1, !tbaa !60
  store i32 5, i32* %retval
  br label %return

return:                                           ; preds = %if.else.38, %if.then.22, %if.then.7, %if.then
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind readnone
declare double @floor(double) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind readonly }
attributes #7 = { nobuiltin nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !3, i64 0}
!7 = !{!8, !2, i64 448}
!8 = !{!"gs_font_type1_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !9, i64 32, !10, i64 40, !6, i64 56, !2, i64 64, !2, i64 72, !11, i64 80, !11, i64 104, !3, i64 128, !9, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !9, i64 148, !9, i64 152, !12, i64 156, !9, i64 160, !13, i64 168, !14, i64 272, !14, i64 324, !15, i64 376, !18, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444, !19, i64 448}
!9 = !{!"int", !3, i64 0}
!10 = !{!"gs_notify_list_s", !2, i64 0, !2, i64 8}
!11 = !{!"gs_matrix_s", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20}
!12 = !{!"float", !3, i64 0}
!13 = !{!"gs_font_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!14 = !{!"gs_font_name_s", !3, i64 0, !9, i64 48}
!15 = !{!"gs_rect_s", !16, i64 0, !16, i64 16}
!16 = !{!"gs_point_s", !17, i64 0, !17, i64 8}
!17 = !{!"double", !3, i64 0}
!18 = !{!"gs_uid_s", !6, i64 0, !2, i64 8}
!19 = !{!"gs_type1_data_s", !20, i64 0, !2, i64 40, !2, i64 48, !2, i64 56, !9, i64 64, !9, i64 68, !9, i64 72, !6, i64 80, !9, i64 88, !9, i64 92, !9, i64 96, !12, i64 100, !12, i64 104, !21, i64 108, !12, i64 168, !9, i64 172, !21, i64 176, !21, i64 236, !9, i64 280, !21, i64 284, !9, i64 328, !21, i64 332, !21, i64 340, !21, i64 348, !21, i64 400, !21, i64 452, !3, i64 520, !9, i64 536}
!20 = !{!"gs_type1_data_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32}
!21 = !{!"", !9, i64 0, !3, i64 4}
!22 = !{!9, !9, i64 0}
!23 = !{!8, !9, i64 512}
!24 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 8, !1, i64 32, i64 4, !22}
!25 = !{!26, !2, i64 24}
!26 = !{!"param_printer_params_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !9, i64 32}
!27 = !{!26, !9, i64 32}
!28 = !{!8, !2, i64 184}
!29 = !{!30, !9, i64 0}
!30 = !{!"gs_font_info_s", !9, i64 0, !9, i64 4, !9, i64 8, !31, i64 12, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !12, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80, !33, i64 88, !33, i64 104, !33, i64 120, !33, i64 136, !9, i64 152}
!31 = !{!"gs_int_rect_s", !32, i64 0, !32, i64 8}
!32 = !{!"gs_int_point_s", !9, i64 0, !9, i64 4}
!33 = !{!"gs_const_string_s", !2, i64 0, !9, i64 8}
!34 = !{!35, !2, i64 16}
!35 = !{!"psf_outline_glyphs_s", !6, i64 0, !2, i64 8, !2, i64 16, !9, i64 24}
!36 = !{!35, !9, i64 24}
!37 = !{!35, !6, i64 0}
!38 = !{!8, !12, i64 80}
!39 = !{!8, !12, i64 84}
!40 = !{!8, !12, i64 88}
!41 = !{!8, !12, i64 92}
!42 = !{!8, !12, i64 96}
!43 = !{!8, !12, i64 100}
!44 = !{!8, !17, i64 376}
!45 = !{!8, !17, i64 384}
!46 = !{!8, !17, i64 392}
!47 = !{!8, !17, i64 400}
!48 = !{!49, !2, i64 8}
!49 = !{!"stream_s", !2, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !3, i64 28, !3, i64 112, !2, i64 136, !9, i64 144, !9, i64 148, !50, i64 152, !3, i64 154, !3, i64 155, !51, i64 160, !6, i64 176, !52, i64 184, !2, i64 240, !9, i64 248, !9, i64 252, !2, i64 256, !50, i64 264, !50, i64 266, !2, i64 272, !2, i64 280, !9, i64 288, !9, i64 292, !2, i64 296, !2, i64 304, !33, i64 312, !9, i64 328, !6, i64 336, !6, i64 344}
!50 = !{!"short", !3, i64 0}
!51 = !{!"gs_string_s", !2, i64 0, !9, i64 8}
!52 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!53 = !{!54, !9, i64 108}
!54 = !{!"stream_AXE_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !3, i64 28, !9, i64 108, !9, i64 112}
!55 = !{!56, !50, i64 108}
!56 = !{!"stream_exE_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !3, i64 28, !50, i64 108}
!57 = !{!33, !2, i64 0}
!58 = !{!33, !9, i64 8}
!59 = !{!8, !9, i64 372}
!60 = !{!3, !3, i64 0}
!61 = !{!62, !2, i64 0}
!62 = !{!"stream_cursor_read_s", !2, i64 0, !2, i64 8, !2, i64 16}
!63 = !{!62, !2, i64 8}
!64 = !{!65, !2, i64 8}
!65 = !{!"stream_cursor_write_s", !2, i64 0, !2, i64 8, !2, i64 16}
!66 = !{!65, !2, i64 16}
!67 = !{!68, !2, i64 16}
!68 = !{!"stream_template_s", !2, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !9, i64 28, !2, i64 32, !2, i64 40, !2, i64 48}
!69 = !{!8, !3, i64 440}
!70 = !{!8, !2, i64 200}
!71 = !{!8, !2, i64 240}
!72 = !{!18, !6, i64 0}
!73 = !{!18, !2, i64 8}
!74 = !{!50, !50, i64 0}
!75 = !{!19, !9, i64 96}
!76 = !{!19, !12, i64 100}
!77 = !{!19, !12, i64 104}
!78 = !{!19, !12, i64 168}
!79 = !{!19, !9, i64 172}
!80 = !{!19, !9, i64 280}
!81 = !{!19, !9, i64 328}
!82 = !{!19, !9, i64 108}
!83 = !{!19, !9, i64 284}
!84 = !{!19, !9, i64 176}
!85 = !{!19, !9, i64 236}
!86 = !{!19, !9, i64 332}
!87 = !{!19, !9, i64 340}
!88 = !{!19, !9, i64 348}
!89 = !{!19, !9, i64 400}
!90 = !{!8, !2, i64 16}
!91 = !{!92, !2, i64 40}
!92 = !{!"gs_glyph_data_s", !93, i64 0, !2, i64 24, !2, i64 32, !2, i64 40}
!93 = !{!"gs_const_bytestring_s", !2, i64 0, !9, i64 8, !2, i64 16}
!94 = !{!19, !2, i64 8}
!95 = !{!8, !9, i64 900}
!96 = !{!97, !2, i64 64}
!97 = !{!"gs_memory_s", !2, i64 0, !98, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!98 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!99 = !{!97, !2, i64 24}
!100 = !{!92, !9, i64 8}
!101 = !{!92, !2, i64 0}
!102 = !{!19, !2, i64 0}
!103 = !{!104, !9, i64 8}
!104 = !{!"gs_bytestring_s", !2, i64 0, !9, i64 8, !2, i64 16}
!105 = !{!106, !9, i64 12}
!106 = !{!"gs_param_float_array_s", !2, i64 0, !9, i64 8, !9, i64 12}
!107 = !{!106, !9, i64 8}
!108 = !{!106, !2, i64 0}
!109 = !{!104, !2, i64 0}
