; ModuleID = './fapi_ft.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_fapi_server_s = type { %struct.gs_fapi_server_instance_s, i8*, i32, %struct.gs_fapi_face_s, %struct.gs_fapi_font_s, i32, i32, i32, %struct.gs_matrix_s, i32 (%struct.gs_fapi_server_s*, i8*, i32)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_font_scale_s*, i8*, i32)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, i8**)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, i32*, i32*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, i32*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_char_ref*, i32*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_char_ref*, i32*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, i32, i8*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_matrix_s*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_char_ref*, %struct.gs_fapi_metrics_s*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_char_ref*, %struct.gs_fapi_metrics_s*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_raster*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_char_ref*, %struct.gs_fapi_metrics_s*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_path_s*)*, i32 (%struct.gs_fapi_server_s*)*, i32 (%struct.gs_fapi_server_s*, i8*)*, i32 (%struct.gs_fapi_server_s*, i32*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, i32, i32, i8*, i32*)* }
%struct.gs_fapi_server_instance_s = type { %struct.gs_fapi_server_descriptor_s* }
%struct.gs_fapi_server_descriptor_s = type { i8*, i8*, void (%struct.gs_fapi_server_s**)* }
%struct.gs_fapi_face_s = type { i64, %struct.gs_matrix_s, %struct.gs_log2_scale_point_s, i32, [2 x float] }
%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.gs_fapi_font_s = type { i8*, i32, %struct.gs_memory_s*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, [10 x %struct.gs_fapi_ttf_cmap_request], i8*, i8*, i8*, i8*, i32, float, i16 (%struct.gs_fapi_font_s*, i32, i32)*, i64 (%struct.gs_fapi_font_s*, i32, i32)*, float (%struct.gs_fapi_font_s*, i32, i32)*, i32 (%struct.gs_fapi_font_s*, i32, i32, i8*, i32)*, i32 (%struct.gs_fapi_font_s*, i32, i32, i8*)*, i16 (%struct.gs_fapi_font_s*, i32, i8*, i16)*, i16 (%struct.gs_fapi_font_s*, i32, i8*, i16)*, i16 (%struct.gs_fapi_font_s*, i32, i8*, i16)*, i32 (%struct.gs_fapi_font_s*, i32, i8*, i16)*, i16 (%struct.gs_fapi_font_s*, i8*, i32)*, i16 (%struct.gs_fapi_font_s*, i32, i8*, i16)*, i16 (%struct.gs_fapi_font_s*, i32, i8*, i16)*, i32 (%struct.gs_fapi_font_s*, i32, i8**)*, i32 (%struct.gs_font_base_s*, %struct.gs_string_s*, %struct.gs_string_s*, i32, %struct.gs_string_s*, i8*, %struct.gs_fapi_char_ref*, i32)*, i32 (%struct.gs_fapi_font_s*, %struct.gs_string_s*, i32, double*, i32)*, i32 (%struct.gs_text_enum_s*, %struct.gs_font_base_s*, %struct.gs_string_s*, i32, double*, %struct.gs_rect_s*, double*, i32*)* }
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
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type { i8*, i8*, %struct.gx_io_device_procs_s, i8* }
%struct.gx_io_device_procs_s = type { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }
%struct.stream_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %union.stream_cursor_s, i8*, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, %struct.stream_s*, i32, i32, %struct.stream_state_s*, i16, i16, %struct.stream_s*, %struct.stream_s*, i32, i32, i32 (%struct.stream_s*)*, %struct._IO_FILE*, %struct.gs_const_string_s, i32, i64, i64 }
%struct.stream_template_s = type opaque
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.gs_string_s = type { i8*, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, void (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_s*, i32)* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, {}*, i32, [80 x i8] }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.file_enum_s = type opaque
%struct.gs_param_list_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_ttf_cmap_request = type { i32, i32 }
%struct.gs_font_base_s = type opaque
%struct.gs_fapi_char_ref = type { i64, [4 x i64], i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct.gs_text_enum_s = type opaque
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_point_s = type { double, double }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_fapi_font_scale_s = type { [6 x i32], [2 x i32], [2 x i32], i32 }
%struct.gs_fapi_raster = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gs_fapi_metrics_s = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gs_fapi_path_s = type { i8*, i32, i32, i32 (%struct.gs_fapi_path_s*, i64, i64)*, i32 (%struct.gs_fapi_path_s*, i64, i64)*, i32 (%struct.gs_fapi_path_s*, i64, i64, i64, i64, i64, i64)*, i32 (%struct.gs_fapi_path_s*)* }
%struct.FT_Incremental_FuncsRec_ = type { i32 (%struct.FT_IncrementalRec_*, i32, %struct.FT_Data_*)*, void (%struct.FT_IncrementalRec_*, %struct.FT_Data_*)*, i32 (%struct.FT_IncrementalRec_*, i32, i8, %struct.FT_Incremental_MetricsRec_*)* }
%struct.FT_IncrementalRec_ = type { %struct.gs_fapi_font_s*, i8*, i64, i32, %struct.FT_Incremental_MetricsRec_, i64, i32 }
%struct.FT_Incremental_MetricsRec_ = type { i64, i64, i64, i64 }
%struct.FT_Data_ = type { i8*, i32 }
%struct.FT_Outline_Funcs_ = type { i32 (%struct.FT_Vector_*, i8*)*, i32 (%struct.FT_Vector_*, i8*)*, i32 (%struct.FT_Vector_*, %struct.FT_Vector_*, i8*)*, i32 (%struct.FT_Vector_*, %struct.FT_Vector_*, %struct.FT_Vector_*, i8*)*, i32, i64 }
%struct.FT_Vector_ = type { i64, i64 }
%struct.ff_server_s = type { %struct.gs_fapi_server_s, %struct.FT_LibraryRec_*, %struct.FT_OutlineGlyphRec_*, %struct.FT_BitmapGlyphRec_*, %struct.gs_memory_s*, %struct.FT_MemoryRec_*, %struct.FT_MemoryRec_ }
%struct.FT_LibraryRec_ = type opaque
%struct.FT_OutlineGlyphRec_ = type { %struct.FT_GlyphRec_, %struct.FT_Outline_ }
%struct.FT_GlyphRec_ = type { %struct.FT_LibraryRec_*, %struct.FT_Glyph_Class_*, i32, %struct.FT_Vector_ }
%struct.FT_Glyph_Class_ = type opaque
%struct.FT_Outline_ = type { i16, i16, %struct.FT_Vector_*, i8*, i16*, i32 }
%struct.FT_BitmapGlyphRec_ = type { %struct.FT_GlyphRec_, i32, i32, %struct.FT_Bitmap_ }
%struct.FT_Bitmap_ = type { i32, i32, i32, i8*, i16, i8, i8, i8* }
%struct.FT_MemoryRec_ = type { i8*, i8* (%struct.FT_MemoryRec_*, i64)*, void (%struct.FT_MemoryRec_*, i8*)*, i8* (%struct.FT_MemoryRec_*, i64, i64, i8*)* }
%struct.ff_face_s = type { %struct.FT_FaceRec_*, %struct.FT_Matrix_, i64, i64, i32, i32, %struct.FT_Incremental_InterfaceRec_*, %struct.FT_StreamRec_*, i8*, i32, i32, %struct.ff_server_s* }
%struct.FT_FaceRec_ = type { i64, i64, i64, i64, i64, i8*, i8*, i32, %struct.FT_Bitmap_Size_*, i32, %struct.FT_CharMapRec_**, %struct.FT_Generic_, %struct.FT_BBox_, i16, i16, i16, i16, i16, i16, i16, i16, %struct.FT_GlyphSlotRec_*, %struct.FT_SizeRec_*, %struct.FT_CharMapRec_*, %struct.FT_DriverRec_*, %struct.FT_MemoryRec_*, %struct.FT_StreamRec_*, %struct.FT_ListRec_, %struct.FT_Generic_, i8*, %struct.FT_Face_InternalRec_* }
%struct.FT_Bitmap_Size_ = type { i16, i16, i64, i64, i64 }
%struct.FT_BBox_ = type { i64, i64, i64, i64 }
%struct.FT_GlyphSlotRec_ = type { %struct.FT_LibraryRec_*, %struct.FT_FaceRec_*, %struct.FT_GlyphSlotRec_*, i32, %struct.FT_Generic_, %struct.FT_Glyph_Metrics_, i64, i64, %struct.FT_Vector_, i32, %struct.FT_Bitmap_, i32, i32, %struct.FT_Outline_, i32, %struct.FT_SubGlyphRec_*, i8*, i64, i64, i64, i8*, %struct.FT_Slot_InternalRec_* }
%struct.FT_Glyph_Metrics_ = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.FT_SubGlyphRec_ = type opaque
%struct.FT_Slot_InternalRec_ = type opaque
%struct.FT_SizeRec_ = type { %struct.FT_FaceRec_*, %struct.FT_Generic_, %struct.FT_Size_Metrics_, %struct.FT_Size_InternalRec_* }
%struct.FT_Size_Metrics_ = type { i16, i16, i64, i64, i64, i64, i64, i64 }
%struct.FT_Size_InternalRec_ = type opaque
%struct.FT_CharMapRec_ = type { %struct.FT_FaceRec_*, i32, i16, i16 }
%struct.FT_DriverRec_ = type opaque
%struct.FT_ListRec_ = type { %struct.FT_ListNodeRec_*, %struct.FT_ListNodeRec_* }
%struct.FT_ListNodeRec_ = type { %struct.FT_ListNodeRec_*, %struct.FT_ListNodeRec_*, i8* }
%struct.FT_Generic_ = type { i8*, void (i8*)* }
%struct.FT_Face_InternalRec_ = type opaque
%struct.FT_Matrix_ = type { i64, i64, i64, i64 }
%struct.FT_Incremental_InterfaceRec_ = type { %struct.FT_Incremental_FuncsRec_*, %struct.FT_IncrementalRec_* }
%struct.FT_StreamRec_ = type { i8*, i64, i64, %union.FT_StreamDesc_, %union.FT_StreamDesc_, i64 (%struct.FT_StreamRec_*, i64, i8*, i64)*, void (%struct.FT_StreamRec_*)*, %struct.FT_MemoryRec_*, i8*, i8* }
%union.FT_StreamDesc_ = type { i64 }
%struct.FT_Parameter_ = type { i64, i8* }
%struct.FT_Open_Args_ = type { i32, i8*, i64, i8*, %struct.FT_StreamRec_*, %struct.FT_ModuleRec_*, i32, %struct.FT_Parameter_* }
%struct.FT_ModuleRec_ = type opaque
%struct.FF_path_info_s = type { %struct.gs_fapi_path_s*, i64, i64 }
%struct.gs_parsed_file_name_s = type { %struct.gs_memory_s*, %struct.gx_io_device_s*, i8*, i32 }

@.str = private unnamed_addr constant [16 x i8] c"gs_fapi_ft_init\00", align 1
@freetypeserver = internal constant %struct.gs_fapi_server_s { %struct.gs_fapi_server_instance_s { %struct.gs_fapi_server_descriptor_s* @freetypedescriptor }, i8* null, i32 16, %struct.gs_fapi_face_s zeroinitializer, %struct.gs_fapi_font_s zeroinitializer, i32 0, i32 0, i32 1, %struct.gs_matrix_s { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, i32 (%struct.gs_fapi_server_s*, i8*, i32)* @gs_fapi_ft_ensure_open, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_font_scale_s*, i8*, i32)* @gs_fapi_ft_get_scaled_font, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, i8**)* @gs_fapi_ft_get_decodingID, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, i32*, i32*)* @gs_fapi_ft_get_font_bbox, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, i32*)* @gs_fapi_ft_get_font_proportional_feature, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_char_ref*, i32*)* @gs_fapi_ft_can_retrieve_char_by_name, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_char_ref*, i32*)* @gs_fapi_ft_can_replace_metrics, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, i32, i8*)* null, i32 (%struct.gs_fapi_server_s*, %struct.gs_matrix_s*)* @gs_fapi_ft_get_fontmatrix, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_char_ref*, %struct.gs_fapi_metrics_s*)* @gs_fapi_ft_get_char_width, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_char_ref*, %struct.gs_fapi_metrics_s*)* @gs_fapi_ft_get_char_raster_metrics, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_raster*)* @gs_fapi_ft_get_char_raster, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_char_ref*, %struct.gs_fapi_metrics_s*)* @gs_fapi_ft_get_char_outline_metrics, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_path_s*)* @gs_fapi_ft_get_char_outline, i32 (%struct.gs_fapi_server_s*)* @gs_fapi_ft_release_char_data, i32 (%struct.gs_fapi_server_s*, i8*)* @gs_fapi_ft_release_typeface, i32 (%struct.gs_fapi_server_s*, i32*)* @gs_fapi_ft_check_cmap_for_GID, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, i32, i32, i8*, i32*)* null }, align 8
@freetypedescriptor = internal constant %struct.gs_fapi_server_descriptor_s { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), void (%struct.gs_fapi_server_s**)* @gs_fapi_freetype_destroy }, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"FAPI\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"FreeType\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"gs_fapi_freetype_destroy: ff_server\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"gs_fapi_ft_ensure_open\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"FF_alloc\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"FF_free\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"FF_realloc\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"gs_fapi_ft_get_scaled_font - full font buf\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@file_default_buffer_size = external constant i32, align 4
@.str.10 = private unnamed_addr constant [20 x i8] c"FF_open_read_stream\00", align 1
@TheFAPIIncrementalInterfaceFuncs = internal constant %struct.FT_Incremental_FuncsRec_ { i32 (%struct.FT_IncrementalRec_*, i32, %struct.FT_Data_*)* @get_fapi_glyph_data, void (%struct.FT_IncrementalRec_*, %struct.FT_Data_*)* @free_fapi_glyph_data, i32 (%struct.FT_IncrementalRec_*, i32, i8, %struct.FT_Incremental_MetricsRec_*)* @get_fapi_glyph_metrics }, align 8
@.str.11 = private unnamed_addr constant [20 x i8] c"get_fapi_glyph_data\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"free_fapi_glyph_data\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"Unicode\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c".notdef\00", align 1
@TheFtOutlineFuncs = internal constant %struct.FT_Outline_Funcs_ { i32 (%struct.FT_Vector_*, i8*)* @move_to, i32 (%struct.FT_Vector_*, i8*)* @line_to, i32 (%struct.FT_Vector_*, %struct.FT_Vector_*, i8*)* @conic_to, i32 (%struct.FT_Vector_*, %struct.FT_Vector_*, %struct.FT_Vector_*, i8*)* @cubic_to, i32 0, i64 0 }, align 8
@.str.15 = private unnamed_addr constant [12 x i8] c"delete_face\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gs_fapi_ft_init(%struct.gs_memory_s* %mem, %struct.gs_fapi_server_s** %server) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %server.addr = alloca %struct.gs_fapi_server_s**, align 8
  %serv = alloca %struct.ff_server_s*, align 8
  %code = alloca i32, align 4
  %cmem = alloca %struct.gs_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_fapi_server_s** %server, %struct.gs_fapi_server_s*** %server.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ff_server_s** %serv to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %2 = bitcast %struct.gs_memory_s** %cmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store %struct.gs_memory_s* null, %struct.gs_memory_s** %cmem, align 8, !tbaa !1
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i32 @gs_memory_chunk_wrap(%struct.gs_memory_s** %cmem, %struct.gs_memory_s* %3) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %4 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %cmem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 1
  %alloc_bytes_immovable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 0
  %7 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes_immovable, align 8, !tbaa !7
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %cmem, align 8, !tbaa !1
  %call1 = call i8* %7(%struct.gs_memory_s* %8, i32 656, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0)) #5
  %9 = bitcast i8* %call1 to %struct.ff_server_s*
  store %struct.ff_server_s* %9, %struct.ff_server_s** %serv, align 8, !tbaa !1
  %10 = load %struct.ff_server_s*, %struct.ff_server_s** %serv, align 8, !tbaa !1
  %tobool = icmp ne %struct.ff_server_s* %10, null
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %11 = load %struct.ff_server_s*, %struct.ff_server_s** %serv, align 8, !tbaa !1
  %12 = bitcast %struct.ff_server_s* %11 to i8*
  %call4 = call i8* @memset(i8* %12, i32 0, i64 656) #6
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %cmem, align 8, !tbaa !1
  %14 = load %struct.ff_server_s*, %struct.ff_server_s** %serv, align 8, !tbaa !1
  %mem5 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %14, i32 0, i32 4
  store %struct.gs_memory_s* %13, %struct.gs_memory_s** %mem5, align 8, !tbaa !10
  %15 = load %struct.ff_server_s*, %struct.ff_server_s** %serv, align 8, !tbaa !1
  %fapi_server = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %15, i32 0, i32 0
  %16 = bitcast %struct.gs_fapi_server_s* %fapi_server to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* bitcast (%struct.gs_fapi_server_s* @freetypeserver to i8*), i64 584, i32 8, i1 false), !tbaa.struct !21
  %17 = load %struct.ff_server_s*, %struct.ff_server_s** %serv, align 8, !tbaa !1
  %ftmemory_rec = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %17, i32 0, i32 6
  %18 = load %struct.ff_server_s*, %struct.ff_server_s** %serv, align 8, !tbaa !1
  %ftmemory = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %18, i32 0, i32 5
  store %struct.FT_MemoryRec_* %ftmemory_rec, %struct.FT_MemoryRec_** %ftmemory, align 8, !tbaa !25
  %19 = load %struct.ff_server_s*, %struct.ff_server_s** %serv, align 8, !tbaa !1
  %20 = bitcast %struct.ff_server_s* %19 to %struct.gs_fapi_server_s*
  %21 = load %struct.gs_fapi_server_s**, %struct.gs_fapi_server_s*** %server.addr, align 8, !tbaa !1
  store %struct.gs_fapi_server_s* %20, %struct.gs_fapi_server_s** %21, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.3, %if.then.2, %if.then
  %22 = bitcast %struct.gs_memory_s** %cmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = bitcast %struct.ff_server_s** %serv to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @gs_memory_chunk_wrap(%struct.gs_memory_s**, %struct.gs_memory_s*) #2

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @gs_fapi_ft_ensure_open(%struct.gs_fapi_server_s* %a_server, i8* %server_param, i32 %server_param_size) #0 {
entry:
  %retval = alloca i32, align 4
  %a_server.addr = alloca %struct.gs_fapi_server_s*, align 8
  %server_param.addr = alloca i8*, align 8
  %server_param_size.addr = alloca i32, align 4
  %s = alloca %struct.ff_server_s*, align 8
  %ft_error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_fapi_server_s* %a_server, %struct.gs_fapi_server_s** %a_server.addr, align 8, !tbaa !1
  store i8* %server_param, i8** %server_param.addr, align 8, !tbaa !1
  store i32 %server_param_size, i32* %server_param_size.addr, align 4, !tbaa !5
  %0 = bitcast %struct.ff_server_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %a_server.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_fapi_server_s* %1 to %struct.ff_server_s*
  store %struct.ff_server_s* %2, %struct.ff_server_s** %s, align 8, !tbaa !1
  %3 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %freetype_library = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %3, i32 0, i32 1
  %4 = load %struct.FT_LibraryRec_*, %struct.FT_LibraryRec_** %freetype_library, align 8, !tbaa !26
  %tobool = icmp ne %struct.FT_LibraryRec_* %4, null
  br i1 %tobool, label %if.end.17, label %if.then

if.then:                                          ; preds = %entry
  %5 = bitcast i32* %ft_error to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %mem = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %6, i32 0, i32 4
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !10
  %8 = bitcast %struct.gs_memory_s* %7 to i8*
  %9 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %ftmemory = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %9, i32 0, i32 5
  %10 = load %struct.FT_MemoryRec_*, %struct.FT_MemoryRec_** %ftmemory, align 8, !tbaa !25
  %user = getelementptr inbounds %struct.FT_MemoryRec_, %struct.FT_MemoryRec_* %10, i32 0, i32 0
  store i8* %8, i8** %user, align 8, !tbaa !27
  %11 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %ftmemory1 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %11, i32 0, i32 5
  %12 = load %struct.FT_MemoryRec_*, %struct.FT_MemoryRec_** %ftmemory1, align 8, !tbaa !25
  %alloc = getelementptr inbounds %struct.FT_MemoryRec_, %struct.FT_MemoryRec_* %12, i32 0, i32 1
  store i8* (%struct.FT_MemoryRec_*, i64)* @FF_alloc, i8* (%struct.FT_MemoryRec_*, i64)** %alloc, align 8, !tbaa !28
  %13 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %ftmemory2 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %13, i32 0, i32 5
  %14 = load %struct.FT_MemoryRec_*, %struct.FT_MemoryRec_** %ftmemory2, align 8, !tbaa !25
  %free = getelementptr inbounds %struct.FT_MemoryRec_, %struct.FT_MemoryRec_* %14, i32 0, i32 2
  store void (%struct.FT_MemoryRec_*, i8*)* @FF_free, void (%struct.FT_MemoryRec_*, i8*)** %free, align 8, !tbaa !29
  %15 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %ftmemory3 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %15, i32 0, i32 5
  %16 = load %struct.FT_MemoryRec_*, %struct.FT_MemoryRec_** %ftmemory3, align 8, !tbaa !25
  %realloc = getelementptr inbounds %struct.FT_MemoryRec_, %struct.FT_MemoryRec_* %16, i32 0, i32 3
  store i8* (%struct.FT_MemoryRec_*, i64, i64, i8*)* @FF_realloc, i8* (%struct.FT_MemoryRec_*, i64, i64, i8*)** %realloc, align 8, !tbaa !30
  %17 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %ftmemory4 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %17, i32 0, i32 5
  %18 = load %struct.FT_MemoryRec_*, %struct.FT_MemoryRec_** %ftmemory4, align 8, !tbaa !25
  %19 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %freetype_library5 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %19, i32 0, i32 1
  %call = call i32 @FT_New_Library(%struct.FT_MemoryRec_* %18, %struct.FT_LibraryRec_** %freetype_library5) #5
  store i32 %call, i32* %ft_error, align 4, !tbaa !5
  %20 = load i32, i32* %ft_error, align 4, !tbaa !5
  %tobool6 = icmp ne i32 %20, 0
  br i1 %tobool6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then
  %21 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %mem8 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %21, i32 0, i32 4
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem8, align 8, !tbaa !10
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %22, i32 0, i32 3
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !31
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %23, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %24 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !32
  %25 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %mem9 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %25, i32 0, i32 4
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem9, align 8, !tbaa !10
  %non_gc_memory10 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %26, i32 0, i32 3
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory10, align 8, !tbaa !31
  %28 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %ftmemory11 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %28, i32 0, i32 5
  %29 = load %struct.FT_MemoryRec_*, %struct.FT_MemoryRec_** %ftmemory11, align 8, !tbaa !25
  %30 = bitcast %struct.FT_MemoryRec_* %29 to i8*
  call void %24(%struct.gs_memory_s* %27, i8* %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0)) #5
  br label %if.end

if.else:                                          ; preds = %if.then
  %31 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %freetype_library12 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %31, i32 0, i32 1
  %32 = load %struct.FT_LibraryRec_*, %struct.FT_LibraryRec_** %freetype_library12, align 8, !tbaa !26
  call void @FT_Add_Default_Modules(%struct.FT_LibraryRec_* %32) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.7
  %33 = load i32, i32* %ft_error, align 4, !tbaa !5
  %tobool13 = icmp ne i32 %33, 0
  br i1 %tobool13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end
  %34 = load i32, i32* %ft_error, align 4, !tbaa !5
  %call15 = call i32 @ft_to_gs_error(i32 %34) #5
  store i32 %call15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.16, %if.then.14
  %35 = bitcast i32* %ft_error to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.18 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.17

if.end.17:                                        ; preds = %cleanup.cont, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.18

cleanup.18:                                       ; preds = %if.end.17, %cleanup
  %36 = bitcast %struct.ff_server_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = load i32, i32* %retval
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define internal i32 @gs_fapi_ft_get_scaled_font(%struct.gs_fapi_server_s* %a_server, %struct.gs_fapi_font_s* %a_font, %struct.gs_fapi_font_scale_s* %a_font_scale, i8* %a_map, i32 %a_descendant_code) #0 {
entry:
  %retval = alloca i32, align 4
  %a_server.addr = alloca %struct.gs_fapi_server_s*, align 8
  %a_font.addr = alloca %struct.gs_fapi_font_s*, align 8
  %a_font_scale.addr = alloca %struct.gs_fapi_font_scale_s*, align 8
  %a_map.addr = alloca i8*, align 8
  %a_descendant_code.addr = alloca i32, align 4
  %s = alloca %struct.ff_server_s*, align 8
  %face = alloca %struct.ff_face_s*, align 8
  %ft_error = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cmap = alloca %struct.FT_CharMapRec_*, align 8
  %data_owned = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %ft_face = alloca %struct.FT_FaceRec_*, align 8
  %ft_param = alloca %struct.FT_Parameter_, align 8
  %ft_inc_int = alloca %struct.FT_Incremental_InterfaceRec_*, align 8
  %own_font_data = alloca i8*, align 8
  %own_font_data_len = alloca i32, align 4
  %ft_strm = alloca %struct.FT_StreamRec_*, align 8
  %args = alloca %struct.FT_Open_Args_, align 8
  %code = alloca i32, align 4
  %open_args = alloca %struct.FT_Open_Args_, align 8
  %length = alloca i64, align 8
  %type = alloca i32, align 4
  store %struct.gs_fapi_server_s* %a_server, %struct.gs_fapi_server_s** %a_server.addr, align 8, !tbaa !1
  store %struct.gs_fapi_font_s* %a_font, %struct.gs_fapi_font_s** %a_font.addr, align 8, !tbaa !1
  store %struct.gs_fapi_font_scale_s* %a_font_scale, %struct.gs_fapi_font_scale_s** %a_font_scale.addr, align 8, !tbaa !1
  store i8* %a_map, i8** %a_map.addr, align 8, !tbaa !1
  store i32 %a_descendant_code, i32* %a_descendant_code.addr, align 4, !tbaa !24
  %0 = bitcast %struct.ff_server_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %a_server.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_fapi_server_s* %1 to %struct.ff_server_s*
  store %struct.ff_server_s* %2, %struct.ff_server_s** %s, align 8, !tbaa !1
  %3 = bitcast %struct.ff_face_s** %face to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_font.addr, align 8, !tbaa !1
  %server_font_data = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %4, i32 0, i32 0
  %5 = load i8*, i8** %server_font_data, align 8, !tbaa !33
  %6 = bitcast i8* %5 to %struct.ff_face_s*
  store %struct.ff_face_s* %6, %struct.ff_face_s** %face, align 8, !tbaa !1
  %7 = bitcast i32* %ft_error to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 0, i32* %ft_error, align 4, !tbaa !5
  %8 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast %struct.FT_CharMapRec_** %cmap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store %struct.FT_CharMapRec_* null, %struct.FT_CharMapRec_** %cmap, align 8, !tbaa !1
  %11 = bitcast i32* %data_owned to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 1, i32* %data_owned, align 4, !tbaa !5
  %12 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %bitmap_glyph = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %12, i32 0, i32 3
  %13 = load %struct.FT_BitmapGlyphRec_*, %struct.FT_BitmapGlyphRec_** %bitmap_glyph, align 8, !tbaa !34
  %tobool = icmp ne %struct.FT_BitmapGlyphRec_* %13, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %freetype_library = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %14, i32 0, i32 1
  %15 = load %struct.FT_LibraryRec_*, %struct.FT_LibraryRec_** %freetype_library, align 8, !tbaa !26
  %16 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %bitmap_glyph1 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %16, i32 0, i32 3
  %17 = load %struct.FT_BitmapGlyphRec_*, %struct.FT_BitmapGlyphRec_** %bitmap_glyph1, align 8, !tbaa !34
  %bitmap = getelementptr inbounds %struct.FT_BitmapGlyphRec_, %struct.FT_BitmapGlyphRec_* %17, i32 0, i32 3
  %call = call i32 @FT_Bitmap_Done(%struct.FT_LibraryRec_* %15, %struct.FT_Bitmap_* %bitmap) #5
  %18 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %ftmemory = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %18, i32 0, i32 5
  %19 = load %struct.FT_MemoryRec_*, %struct.FT_MemoryRec_** %ftmemory, align 8, !tbaa !25
  %20 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %bitmap_glyph2 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %20, i32 0, i32 3
  %21 = load %struct.FT_BitmapGlyphRec_*, %struct.FT_BitmapGlyphRec_** %bitmap_glyph2, align 8, !tbaa !34
  %22 = bitcast %struct.FT_BitmapGlyphRec_* %21 to i8*
  call void @FF_free(%struct.FT_MemoryRec_* %19, i8* %22) #5
  %23 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %bitmap_glyph3 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %23, i32 0, i32 3
  store %struct.FT_BitmapGlyphRec_* null, %struct.FT_BitmapGlyphRec_** %bitmap_glyph3, align 8, !tbaa !34
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %24 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %outline_glyph = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %24, i32 0, i32 2
  %25 = load %struct.FT_OutlineGlyphRec_*, %struct.FT_OutlineGlyphRec_** %outline_glyph, align 8, !tbaa !35
  %tobool4 = icmp ne %struct.FT_OutlineGlyphRec_* %25, null
  br i1 %tobool4, label %if.then.5, label %if.end.12

if.then.5:                                        ; preds = %if.end
  %26 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %freetype_library6 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %26, i32 0, i32 1
  %27 = load %struct.FT_LibraryRec_*, %struct.FT_LibraryRec_** %freetype_library6, align 8, !tbaa !26
  %28 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %outline_glyph7 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %28, i32 0, i32 2
  %29 = load %struct.FT_OutlineGlyphRec_*, %struct.FT_OutlineGlyphRec_** %outline_glyph7, align 8, !tbaa !35
  %outline = getelementptr inbounds %struct.FT_OutlineGlyphRec_, %struct.FT_OutlineGlyphRec_* %29, i32 0, i32 1
  %call8 = call i32 @FT_Outline_Done(%struct.FT_LibraryRec_* %27, %struct.FT_Outline_* %outline) #5
  %30 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %ftmemory9 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %30, i32 0, i32 5
  %31 = load %struct.FT_MemoryRec_*, %struct.FT_MemoryRec_** %ftmemory9, align 8, !tbaa !25
  %32 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %outline_glyph10 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %32, i32 0, i32 2
  %33 = load %struct.FT_OutlineGlyphRec_*, %struct.FT_OutlineGlyphRec_** %outline_glyph10, align 8, !tbaa !35
  %34 = bitcast %struct.FT_OutlineGlyphRec_* %33 to i8*
  call void @FF_free(%struct.FT_MemoryRec_* %31, i8* %34) #5
  %35 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %outline_glyph11 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %35, i32 0, i32 2
  store %struct.FT_OutlineGlyphRec_* null, %struct.FT_OutlineGlyphRec_** %outline_glyph11, align 8, !tbaa !35
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.5, %if.end
  %36 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_font.addr, align 8, !tbaa !1
  %is_cid = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %36, i32 0, i32 8
  %37 = load i32, i32* %is_cid, align 4, !tbaa !36
  %tobool13 = icmp ne i32 %37, 0
  br i1 %tobool13, label %land.lhs.true, label %if.end.20

land.lhs.true:                                    ; preds = %if.end.12
  %38 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_font.addr, align 8, !tbaa !1
  %is_type1 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %38, i32 0, i32 7
  %39 = load i32, i32* %is_type1, align 4, !tbaa !37
  %tobool14 = icmp ne i32 %39, 0
  br i1 %tobool14, label %land.lhs.true.15, label %if.end.20

land.lhs.true.15:                                 ; preds = %land.lhs.true
  %40 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_font.addr, align 8, !tbaa !1
  %font_file_path = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %40, i32 0, i32 3
  %41 = load i8*, i8** %font_file_path, align 8, !tbaa !38
  %cmp = icmp eq i8* %41, null
  br i1 %cmp, label %land.lhs.true.16, label %if.end.20

land.lhs.true.16:                                 ; preds = %land.lhs.true.15
  %42 = load i32, i32* %a_descendant_code.addr, align 4, !tbaa !24
  %cmp17 = icmp eq i32 %42, -3
  br i1 %cmp17, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.16
  %43 = load i32, i32* %a_descendant_code.addr, align 4, !tbaa !24
  %cmp18 = icmp eq i32 %43, -4
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %lor.lhs.false, %land.lhs.true.16
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.265

if.end.20:                                        ; preds = %lor.lhs.false, %land.lhs.true.15, %land.lhs.true, %if.end.12
  %44 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %tobool21 = icmp ne %struct.ff_face_s* %44, null
  br i1 %tobool21, label %if.end.176, label %if.then.22

if.then.22:                                       ; preds = %if.end.20
  %45 = bitcast %struct.FT_FaceRec_** %ft_face to i8*
  call void @llvm.lifetime.start(i64 8, i8* %45) #1
  store %struct.FT_FaceRec_* null, %struct.FT_FaceRec_** %ft_face, align 8, !tbaa !1
  %46 = bitcast %struct.FT_Parameter_* %ft_param to i8*
  call void @llvm.lifetime.start(i64 16, i8* %46) #1
  %47 = bitcast %struct.FT_Incremental_InterfaceRec_** %ft_inc_int to i8*
  call void @llvm.lifetime.start(i64 8, i8* %47) #1
  store %struct.FT_Incremental_InterfaceRec_* null, %struct.FT_Incremental_InterfaceRec_** %ft_inc_int, align 8, !tbaa !1
  %48 = bitcast i8** %own_font_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %48) #1
  store i8* null, i8** %own_font_data, align 8, !tbaa !1
  %49 = bitcast i32* %own_font_data_len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %49) #1
  store i32 -1, i32* %own_font_data_len, align 4, !tbaa !5
  %50 = bitcast %struct.FT_StreamRec_** %ft_strm to i8*
  call void @llvm.lifetime.start(i64 8, i8* %50) #1
  store %struct.FT_StreamRec_* null, %struct.FT_StreamRec_** %ft_strm, align 8, !tbaa !1
  %51 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_font.addr, align 8, !tbaa !1
  %full_font_buf = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %51, i32 0, i32 4
  %52 = load i8*, i8** %full_font_buf, align 8, !tbaa !39
  %tobool23 = icmp ne i8* %52, null
  br i1 %tobool23, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %if.then.22
  %53 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %ftmemory25 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %53, i32 0, i32 5
  %54 = load %struct.FT_MemoryRec_*, %struct.FT_MemoryRec_** %ftmemory25, align 8, !tbaa !25
  %user = getelementptr inbounds %struct.FT_MemoryRec_, %struct.FT_MemoryRec_* %54, i32 0, i32 0
  %55 = load i8*, i8** %user, align 8, !tbaa !27
  %56 = bitcast i8* %55 to %struct.gs_memory_s*
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %56, i32 0, i32 3
  %57 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !31
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %57, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %58 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !40
  %59 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %ftmemory26 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %59, i32 0, i32 5
  %60 = load %struct.FT_MemoryRec_*, %struct.FT_MemoryRec_** %ftmemory26, align 8, !tbaa !25
  %user27 = getelementptr inbounds %struct.FT_MemoryRec_, %struct.FT_MemoryRec_* %60, i32 0, i32 0
  %61 = load i8*, i8** %user27, align 8, !tbaa !27
  %62 = bitcast i8* %61 to %struct.gs_memory_s*
  %non_gc_memory28 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %62, i32 0, i32 3
  %63 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory28, align 8, !tbaa !31
  %64 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_font.addr, align 8, !tbaa !1
  %full_font_buf_len = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %64, i32 0, i32 5
  %65 = load i32, i32* %full_font_buf_len, align 4, !tbaa !41
  %call29 = call i8* %58(%struct.gs_memory_s* %63, i32 %65, i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i32 0, i32 0)) #5
  store i8* %call29, i8** %own_font_data, align 8, !tbaa !1
  %66 = load i8*, i8** %own_font_data, align 8, !tbaa !1
  %tobool30 = icmp ne i8* %66, null
  br i1 %tobool30, label %if.end.32, label %if.then.31

if.then.31:                                       ; preds = %if.then.24
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.168

if.end.32:                                        ; preds = %if.then.24
  %67 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_font.addr, align 8, !tbaa !1
  %full_font_buf_len33 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %67, i32 0, i32 5
  %68 = load i32, i32* %full_font_buf_len33, align 4, !tbaa !41
  store i32 %68, i32* %own_font_data_len, align 4, !tbaa !5
  %69 = load i8*, i8** %own_font_data, align 8, !tbaa !1
  %70 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_font.addr, align 8, !tbaa !1
  %full_font_buf34 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %70, i32 0, i32 4
  %71 = load i8*, i8** %full_font_buf34, align 8, !tbaa !39
  %72 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_font.addr, align 8, !tbaa !1
  %full_font_buf_len35 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %72, i32 0, i32 5
  %73 = load i32, i32* %full_font_buf_len35, align 4, !tbaa !41
  %conv = sext i32 %73 to i64
  %call36 = call i8* @memcpy(i8* %69, i8* %71, i64 %conv) #6
  %74 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %freetype_library37 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %74, i32 0, i32 1
  %75 = load %struct.FT_LibraryRec_*, %struct.FT_LibraryRec_** %freetype_library37, align 8, !tbaa !26
  %76 = load i8*, i8** %own_font_data, align 8, !tbaa !1
  %77 = load i32, i32* %own_font_data_len, align 4, !tbaa !5
  %conv38 = sext i32 %77 to i64
  %78 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_font.addr, align 8, !tbaa !1
  %subfont = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %78, i32 0, i32 6
  %79 = load i32, i32* %subfont, align 4, !tbaa !42
  %conv39 = sext i32 %79 to i64
  %call40 = call i32 @FT_New_Memory_Face(%struct.FT_LibraryRec_* %75, i8* %76, i64 %conv38, i64 %conv39, %struct.FT_FaceRec_** %ft_face) #5
  store i32 %call40, i32* %ft_error, align 4, !tbaa !5
  %80 = load i32, i32* %ft_error, align 4, !tbaa !5
  %tobool41 = icmp ne i32 %80, 0
  br i1 %tobool41, label %if.end.46, label %land.lhs.true.42

land.lhs.true.42:                                 ; preds = %if.end.32
  %81 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8, !tbaa !1
  %tobool43 = icmp ne %struct.FT_FaceRec_* %81, null
  br i1 %tobool43, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %land.lhs.true.42
  %82 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8, !tbaa !1
  %call45 = call i32 @FT_Select_Charmap(%struct.FT_FaceRec_* %82, i32 1970170211) #5
  store i32 %call45, i32* %ft_error, align 4, !tbaa !5
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %land.lhs.true.42, %if.end.32
  br label %if.end.155

if.else:                                          ; preds = %if.then.22
  %83 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_font.addr, align 8, !tbaa !1
  %font_file_path47 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %83, i32 0, i32 3
  %84 = load i8*, i8** %font_file_path47, align 8, !tbaa !38
  %tobool48 = icmp ne i8* %84, null
  br i1 %tobool48, label %if.then.49, label %if.else.70

if.then.49:                                       ; preds = %if.else
  %85 = bitcast %struct.FT_Open_Args_* %args to i8*
  call void @llvm.lifetime.start(i64 64, i8* %85) #1
  %86 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %86) #1
  %87 = bitcast %struct.FT_Open_Args_* %args to i8*
  %call50 = call i8* @memset(i8* %87, i32 0, i64 64) #6
  %88 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %ftmemory51 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %88, i32 0, i32 5
  %89 = load %struct.FT_MemoryRec_*, %struct.FT_MemoryRec_** %ftmemory51, align 8, !tbaa !25
  %user52 = getelementptr inbounds %struct.FT_MemoryRec_, %struct.FT_MemoryRec_* %89, i32 0, i32 0
  %90 = load i8*, i8** %user52, align 8, !tbaa !27
  %91 = bitcast i8* %90 to %struct.gs_memory_s*
  %92 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_font.addr, align 8, !tbaa !1
  %font_file_path53 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %92, i32 0, i32 3
  %93 = load i8*, i8** %font_file_path53, align 8, !tbaa !38
  %call54 = call i32 @FF_open_read_stream(%struct.gs_memory_s* %91, i8* %93, %struct.FT_StreamRec_** %ft_strm) #5
  store i32 %call54, i32* %code, align 4, !tbaa !5
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.then.49
  %94 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %94, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.58:                                        ; preds = %if.then.49
  %flags = getelementptr inbounds %struct.FT_Open_Args_, %struct.FT_Open_Args_* %args, i32 0, i32 0
  store i32 2, i32* %flags, align 4, !tbaa !43
  %95 = load %struct.FT_StreamRec_*, %struct.FT_StreamRec_** %ft_strm, align 8, !tbaa !1
  %stream = getelementptr inbounds %struct.FT_Open_Args_, %struct.FT_Open_Args_* %args, i32 0, i32 4
  store %struct.FT_StreamRec_* %95, %struct.FT_StreamRec_** %stream, align 8, !tbaa !45
  %96 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %freetype_library59 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %96, i32 0, i32 1
  %97 = load %struct.FT_LibraryRec_*, %struct.FT_LibraryRec_** %freetype_library59, align 8, !tbaa !26
  %98 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_font.addr, align 8, !tbaa !1
  %subfont60 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %98, i32 0, i32 6
  %99 = load i32, i32* %subfont60, align 4, !tbaa !42
  %conv61 = sext i32 %99 to i64
  %call62 = call i32 @FT_Open_Face(%struct.FT_LibraryRec_* %97, %struct.FT_Open_Args_* %args, i64 %conv61, %struct.FT_FaceRec_** %ft_face) #5
  store i32 %call62, i32* %ft_error, align 4, !tbaa !5
  %100 = load i32, i32* %ft_error, align 4, !tbaa !5
  %tobool63 = icmp ne i32 %100, 0
  br i1 %tobool63, label %if.end.68, label %land.lhs.true.64

land.lhs.true.64:                                 ; preds = %if.end.58
  %101 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8, !tbaa !1
  %tobool65 = icmp ne %struct.FT_FaceRec_* %101, null
  br i1 %tobool65, label %if.then.66, label %if.end.68

if.then.66:                                       ; preds = %land.lhs.true.64
  %102 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8, !tbaa !1
  %call67 = call i32 @FT_Select_Charmap(%struct.FT_FaceRec_* %102, i32 1970170211) #5
  store i32 %call67, i32* %ft_error, align 4, !tbaa !5
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.66, %land.lhs.true.64, %if.end.58
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.68, %if.then.57
  %103 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #1
  %104 = bitcast %struct.FT_Open_Args_* %args to i8*
  call void @llvm.lifetime.end(i64 64, i8* %104) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.168 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.154

if.else.70:                                       ; preds = %if.else
  %105 = bitcast %struct.FT_Open_Args_* %open_args to i8*
  call void @llvm.lifetime.start(i64 64, i8* %105) #1
  %flags71 = getelementptr inbounds %struct.FT_Open_Args_, %struct.FT_Open_Args_* %open_args, i32 0, i32 0
  store i32 1, i32* %flags71, align 4, !tbaa !43
  %106 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_font.addr, align 8, !tbaa !1
  %is_type172 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %106, i32 0, i32 7
  %107 = load i32, i32* %is_type172, align 4, !tbaa !37
  %tobool73 = icmp ne i32 %107, 0
  br i1 %tobool73, label %if.then.74, label %if.else.113

if.then.74:                                       ; preds = %if.else.70
  %108 = bitcast i64* %length to i8*
  call void @llvm.lifetime.start(i64 8, i8* %108) #1
  %109 = bitcast i32* %type to i8*
  call void @llvm.lifetime.start(i64 4, i8* %109) #1
  %110 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_font.addr, align 8, !tbaa !1
  %get_word = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %110, i32 0, i32 20
  %111 = load i16 (%struct.gs_fapi_font_s*, i32, i32)*, i16 (%struct.gs_fapi_font_s*, i32, i32)** %get_word, align 8, !tbaa !46
  %112 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_font.addr, align 8, !tbaa !1
  %call75 = call zeroext i16 %111(%struct.gs_fapi_font_s* %112, i32 8, i32 0) #5
  %conv76 = zext i16 %call75 to i32
  store i32 %conv76, i32* %type, align 4, !tbaa !5
  %113 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_font.addr, align 8, !tbaa !1
  %need_decrypt = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %113, i32 0, i32 1
  store i32 1, i32* %need_decrypt, align 4, !tbaa !47
  %114 = load i32, i32* %type, align 4, !tbaa !5
  %cmp77 = icmp eq i32 %114, 1
  br i1 %cmp77, label %if.then.79, label %if.else.81

if.then.79:                                       ; preds = %if.then.74
  %115 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_font.addr, align 8, !tbaa !1
  %call80 = call i64 @gs_fapi_serialize_type1_font(%struct.gs_fapi_font_s* %115, i8* null, i64 0) #5
  store i64 %call80, i64* %length, align 8, !tbaa !22
  br label %if.end.83

if.else.81:                                       ; preds = %if.then.74
  %116 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_font.addr, align 8, !tbaa !1
  %call82 = call i64 @gs_fapi_serialize_type2_font(%struct.gs_fapi_font_s* %116, i8* null, i64 0) #5
  store i64 %call82, i64* %length, align 8, !tbaa !22
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.81, %if.then.79
  %117 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %ftmemory84 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %117, i32 0, i32 5
  %118 = load %struct.FT_MemoryRec_*, %struct.FT_MemoryRec_** %ftmemory84, align 8, !tbaa !25
  %119 = load i64, i64* %length, align 8, !tbaa !22
  %call85 = call i8* @FF_alloc(%struct.FT_MemoryRec_* %118, i64 %119) #5
  store i8* %call85, i8** %own_font_data, align 8, !tbaa !1
  %memory_base = getelementptr inbounds %struct.FT_Open_Args_, %struct.FT_Open_Args_* %open_args, i32 0, i32 1
  store i8* %call85, i8** %memory_base, align 8, !tbaa !48
  %memory_base86 = getelementptr inbounds %struct.FT_Open_Args_, %struct.FT_Open_Args_* %open_args, i32 0, i32 1
  %120 = load i8*, i8** %memory_base86, align 8, !tbaa !48
  %tobool87 = icmp ne i8* %120, null
  br i1 %tobool87, label %if.end.89, label %if.then.88

if.then.88:                                       ; preds = %if.end.83
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.109

if.end.89:                                        ; preds = %if.end.83
  %121 = load i64, i64* %length, align 8, !tbaa !22
  %conv90 = trunc i64 %121 to i32
  store i32 %conv90, i32* %own_font_data_len, align 4, !tbaa !5
  %122 = load i32, i32* %type, align 4, !tbaa !5
  %cmp91 = icmp eq i32 %122, 1
  br i1 %cmp91, label %if.then.93, label %if.else.95

if.then.93:                                       ; preds = %if.end.89
  %123 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_font.addr, align 8, !tbaa !1
  %124 = load i8*, i8** %own_font_data, align 8, !tbaa !1
  %125 = load i64, i64* %length, align 8, !tbaa !22
  %call94 = call i64 @gs_fapi_serialize_type1_font(%struct.gs_fapi_font_s* %123, i8* %124, i64 %125) #5
  %memory_size = getelementptr inbounds %struct.FT_Open_Args_, %struct.FT_Open_Args_* %open_args, i32 0, i32 2
  store i64 %call94, i64* %memory_size, align 8, !tbaa !49
  br label %if.end.98

if.else.95:                                       ; preds = %if.end.89
  %126 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_font.addr, align 8, !tbaa !1
  %127 = load i8*, i8** %own_font_data, align 8, !tbaa !1
  %128 = load i64, i64* %length, align 8, !tbaa !22
  %call96 = call i64 @gs_fapi_serialize_type2_font(%struct.gs_fapi_font_s* %126, i8* %127, i64 %128) #5
  %memory_size97 = getelementptr inbounds %struct.FT_Open_Args_, %struct.FT_Open_Args_* %open_args, i32 0, i32 2
  store i64 %call96, i64* %memory_size97, align 8, !tbaa !49
  br label %if.end.98

if.end.98:                                        ; preds = %if.else.95, %if.then.93
  %memory_size99 = getelementptr inbounds %struct.FT_Open_Args_, %struct.FT_Open_Args_* %open_args, i32 0, i32 2
  %129 = load i64, i64* %memory_size99, align 8, !tbaa !49
  %130 = load i64, i64* %length, align 8, !tbaa !22
  %cmp100 = icmp ne i64 %129, %130
  br i1 %cmp100, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %if.end.98
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.109

if.end.103:                                       ; preds = %if.end.98
  %131 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %a_server.addr, align 8, !tbaa !1
  %132 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_font.addr, align 8, !tbaa !1
  %call104 = call %struct.FT_Incremental_InterfaceRec_* @new_inc_int(%struct.gs_fapi_server_s* %131, %struct.gs_fapi_font_s* %132) #5
  store %struct.FT_Incremental_InterfaceRec_* %call104, %struct.FT_Incremental_InterfaceRec_** %ft_inc_int, align 8, !tbaa !1
  %133 = load %struct.FT_Incremental_InterfaceRec_*, %struct.FT_Incremental_InterfaceRec_** %ft_inc_int, align 8, !tbaa !1
  %tobool105 = icmp ne %struct.FT_Incremental_InterfaceRec_* %133, null
  br i1 %tobool105, label %if.end.108, label %if.then.106

if.then.106:                                      ; preds = %if.end.103
  %134 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %ftmemory107 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %134, i32 0, i32 5
  %135 = load %struct.FT_MemoryRec_*, %struct.FT_MemoryRec_** %ftmemory107, align 8, !tbaa !25
  %136 = load i8*, i8** %own_font_data, align 8, !tbaa !1
  call void @FF_free(%struct.FT_MemoryRec_* %135, i8* %136) #5
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.109

if.end.108:                                       ; preds = %if.end.103
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.109

cleanup.109:                                      ; preds = %if.end.108, %if.then.106, %if.then.102, %if.then.88
  %137 = bitcast i32* %type to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #1
  %138 = bitcast i64* %length to i8*
  call void @llvm.lifetime.end(i64 8, i8* %138) #1
  %cleanup.dest.111 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.111, label %cleanup.151 [
    i32 0, label %cleanup.cont.112
  ]

cleanup.cont.112:                                 ; preds = %cleanup.109
  br label %if.end.141

if.else.113:                                      ; preds = %if.else.70
  %139 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_font.addr, align 8, !tbaa !1
  %get_long = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %139, i32 0, i32 21
  %140 = load i64 (%struct.gs_fapi_font_s*, i32, i32)*, i64 (%struct.gs_fapi_font_s*, i32, i32)** %get_long, align 8, !tbaa !50
  %141 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_font.addr, align 8, !tbaa !1
  %call114 = call i64 %140(%struct.gs_fapi_font_s* %141, i32 32, i32 0) #5
  %memory_size115 = getelementptr inbounds %struct.FT_Open_Args_, %struct.FT_Open_Args_* %open_args, i32 0, i32 2
  store i64 %call114, i64* %memory_size115, align 8, !tbaa !49
  %memory_size116 = getelementptr inbounds %struct.FT_Open_Args_, %struct.FT_Open_Args_* %open_args, i32 0, i32 2
  %142 = load i64, i64* %memory_size116, align 8, !tbaa !49
  %cmp117 = icmp eq i64 %142, 0
  br i1 %cmp117, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %if.else.113
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.151

if.end.120:                                       ; preds = %if.else.113
  %143 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %ftmemory121 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %143, i32 0, i32 5
  %144 = load %struct.FT_MemoryRec_*, %struct.FT_MemoryRec_** %ftmemory121, align 8, !tbaa !25
  %memory_size122 = getelementptr inbounds %struct.FT_Open_Args_, %struct.FT_Open_Args_* %open_args, i32 0, i32 2
  %145 = load i64, i64* %memory_size122, align 8, !tbaa !49
  %call123 = call i8* @FF_alloc(%struct.FT_MemoryRec_* %144, i64 %145) #5
  store i8* %call123, i8** %own_font_data, align 8, !tbaa !1
  %memory_base124 = getelementptr inbounds %struct.FT_Open_Args_, %struct.FT_Open_Args_* %open_args, i32 0, i32 1
  store i8* %call123, i8** %memory_base124, align 8, !tbaa !48
  %146 = load i8*, i8** %own_font_data, align 8, !tbaa !1
  %tobool125 = icmp ne i8* %146, null
  br i1 %tobool125, label %if.end.127, label %if.then.126

if.then.126:                                      ; preds = %if.end.120
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.151

if.end.127:                                       ; preds = %if.end.120
  %memory_size128 = getelementptr inbounds %struct.FT_Open_Args_, %struct.FT_Open_Args_* %open_args, i32 0, i32 2
  %147 = load i64, i64* %memory_size128, align 8, !tbaa !49
  %conv129 = trunc i64 %147 to i32
  store i32 %conv129, i32* %own_font_data_len, align 4, !tbaa !5
  %148 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_font.addr, align 8, !tbaa !1
  %serialize_tt_font = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %148, i32 0, i32 29
  %149 = load i16 (%struct.gs_fapi_font_s*, i8*, i32)*, i16 (%struct.gs_fapi_font_s*, i8*, i32)** %serialize_tt_font, align 8, !tbaa !51
  %150 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_font.addr, align 8, !tbaa !1
  %151 = load i8*, i8** %own_font_data, align 8, !tbaa !1
  %memory_size130 = getelementptr inbounds %struct.FT_Open_Args_, %struct.FT_Open_Args_* %open_args, i32 0, i32 2
  %152 = load i64, i64* %memory_size130, align 8, !tbaa !49
  %conv131 = trunc i64 %152 to i32
  %call132 = call zeroext i16 %149(%struct.gs_fapi_font_s* %150, i8* %151, i32 %conv131) #5
  %tobool133 = icmp ne i16 %call132, 0
  br i1 %tobool133, label %if.then.134, label %if.end.135

if.then.134:                                      ; preds = %if.end.127
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.151

if.end.135:                                       ; preds = %if.end.127
  %153 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %a_server.addr, align 8, !tbaa !1
  %154 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_font.addr, align 8, !tbaa !1
  %call136 = call %struct.FT_Incremental_InterfaceRec_* @new_inc_int(%struct.gs_fapi_server_s* %153, %struct.gs_fapi_font_s* %154) #5
  store %struct.FT_Incremental_InterfaceRec_* %call136, %struct.FT_Incremental_InterfaceRec_** %ft_inc_int, align 8, !tbaa !1
  %155 = load %struct.FT_Incremental_InterfaceRec_*, %struct.FT_Incremental_InterfaceRec_** %ft_inc_int, align 8, !tbaa !1
  %tobool137 = icmp ne %struct.FT_Incremental_InterfaceRec_* %155, null
  br i1 %tobool137, label %if.end.140, label %if.then.138

if.then.138:                                      ; preds = %if.end.135
  %156 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %ftmemory139 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %156, i32 0, i32 5
  %157 = load %struct.FT_MemoryRec_*, %struct.FT_MemoryRec_** %ftmemory139, align 8, !tbaa !25
  %158 = load i8*, i8** %own_font_data, align 8, !tbaa !1
  call void @FF_free(%struct.FT_MemoryRec_* %157, i8* %158) #5
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.151

if.end.140:                                       ; preds = %if.end.135
  br label %if.end.141

if.end.141:                                       ; preds = %if.end.140, %cleanup.cont.112
  %159 = load %struct.FT_Incremental_InterfaceRec_*, %struct.FT_Incremental_InterfaceRec_** %ft_inc_int, align 8, !tbaa !1
  %tobool142 = icmp ne %struct.FT_Incremental_InterfaceRec_* %159, null
  br i1 %tobool142, label %if.then.143, label %if.end.146

if.then.143:                                      ; preds = %if.end.141
  %flags144 = getelementptr inbounds %struct.FT_Open_Args_, %struct.FT_Open_Args_* %open_args, i32 0, i32 0
  %160 = load i32, i32* %flags144, align 4, !tbaa !43
  %or = or i32 %160, 16
  %flags145 = getelementptr inbounds %struct.FT_Open_Args_, %struct.FT_Open_Args_* %open_args, i32 0, i32 0
  store i32 %or, i32* %flags145, align 4, !tbaa !43
  %tag = getelementptr inbounds %struct.FT_Parameter_, %struct.FT_Parameter_* %ft_param, i32 0, i32 0
  store i64 1768842098, i64* %tag, align 8, !tbaa !52
  %161 = load %struct.FT_Incremental_InterfaceRec_*, %struct.FT_Incremental_InterfaceRec_** %ft_inc_int, align 8, !tbaa !1
  %162 = bitcast %struct.FT_Incremental_InterfaceRec_* %161 to i8*
  %data = getelementptr inbounds %struct.FT_Parameter_, %struct.FT_Parameter_* %ft_param, i32 0, i32 1
  store i8* %162, i8** %data, align 8, !tbaa !54
  %num_params = getelementptr inbounds %struct.FT_Open_Args_, %struct.FT_Open_Args_* %open_args, i32 0, i32 6
  store i32 1, i32* %num_params, align 4, !tbaa !55
  %params = getelementptr inbounds %struct.FT_Open_Args_, %struct.FT_Open_Args_* %open_args, i32 0, i32 7
  store %struct.FT_Parameter_* %ft_param, %struct.FT_Parameter_** %params, align 8, !tbaa !56
  br label %if.end.146

if.end.146:                                       ; preds = %if.then.143, %if.end.141
  %163 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %freetype_library147 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %163, i32 0, i32 1
  %164 = load %struct.FT_LibraryRec_*, %struct.FT_LibraryRec_** %freetype_library147, align 8, !tbaa !26
  %165 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_font.addr, align 8, !tbaa !1
  %subfont148 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %165, i32 0, i32 6
  %166 = load i32, i32* %subfont148, align 4, !tbaa !42
  %conv149 = sext i32 %166 to i64
  %call150 = call i32 @FT_Open_Face(%struct.FT_LibraryRec_* %164, %struct.FT_Open_Args_* %open_args, i64 %conv149, %struct.FT_FaceRec_** %ft_face) #5
  store i32 %call150, i32* %ft_error, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.151

cleanup.151:                                      ; preds = %if.end.146, %if.then.138, %if.then.134, %if.then.126, %if.then.119, %cleanup.109
  %167 = bitcast %struct.FT_Open_Args_* %open_args to i8*
  call void @llvm.lifetime.end(i64 64, i8* %167) #1
  %cleanup.dest.152 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.152, label %cleanup.168 [
    i32 0, label %cleanup.cont.153
  ]

cleanup.cont.153:                                 ; preds = %cleanup.151
  br label %if.end.154

if.end.154:                                       ; preds = %cleanup.cont.153, %cleanup.cont
  br label %if.end.155

if.end.155:                                       ; preds = %if.end.154, %if.end.46
  %168 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8, !tbaa !1
  %tobool156 = icmp ne %struct.FT_FaceRec_* %168, null
  br i1 %tobool156, label %if.then.157, label %if.else.165

if.then.157:                                      ; preds = %if.end.155
  %169 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %a_server.addr, align 8, !tbaa !1
  %170 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8, !tbaa !1
  %171 = load %struct.FT_Incremental_InterfaceRec_*, %struct.FT_Incremental_InterfaceRec_** %ft_inc_int, align 8, !tbaa !1
  %172 = load %struct.FT_StreamRec_*, %struct.FT_StreamRec_** %ft_strm, align 8, !tbaa !1
  %173 = load i8*, i8** %own_font_data, align 8, !tbaa !1
  %174 = load i32, i32* %own_font_data_len, align 4, !tbaa !5
  %175 = load i32, i32* %data_owned, align 4, !tbaa !5
  %call158 = call %struct.ff_face_s* @new_face(%struct.gs_fapi_server_s* %169, %struct.FT_FaceRec_* %170, %struct.FT_Incremental_InterfaceRec_* %171, %struct.FT_StreamRec_* %172, i8* %173, i32 %174, i32 %175) #5
  store %struct.ff_face_s* %call158, %struct.ff_face_s** %face, align 8, !tbaa !1
  %176 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %tobool159 = icmp ne %struct.ff_face_s* %176, null
  br i1 %tobool159, label %if.end.163, label %if.then.160

if.then.160:                                      ; preds = %if.then.157
  %177 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %ftmemory161 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %177, i32 0, i32 5
  %178 = load %struct.FT_MemoryRec_*, %struct.FT_MemoryRec_** %ftmemory161, align 8, !tbaa !25
  %179 = load i8*, i8** %own_font_data, align 8, !tbaa !1
  call void @FF_free(%struct.FT_MemoryRec_* %178, i8* %179) #5
  %180 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8, !tbaa !1
  %call162 = call i32 @FT_Done_Face(%struct.FT_FaceRec_* %180) #5
  %181 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %a_server.addr, align 8, !tbaa !1
  %182 = load %struct.FT_Incremental_InterfaceRec_*, %struct.FT_Incremental_InterfaceRec_** %ft_inc_int, align 8, !tbaa !1
  call void @delete_inc_int(%struct.gs_fapi_server_s* %181, %struct.FT_Incremental_InterfaceRec_* %182) #5
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.168

if.end.163:                                       ; preds = %if.then.157
  %183 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %184 = bitcast %struct.ff_face_s* %183 to i8*
  %185 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_font.addr, align 8, !tbaa !1
  %server_font_data164 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %185, i32 0, i32 0
  store i8* %184, i8** %server_font_data164, align 8, !tbaa !33
  br label %if.end.167

if.else.165:                                      ; preds = %if.end.155
  %186 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_font.addr, align 8, !tbaa !1
  %server_font_data166 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %186, i32 0, i32 0
  store i8* null, i8** %server_font_data166, align 8, !tbaa !33
  br label %if.end.167

if.end.167:                                       ; preds = %if.else.165, %if.end.163
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.168

cleanup.168:                                      ; preds = %if.end.167, %if.then.160, %cleanup.151, %cleanup, %if.then.31
  %187 = bitcast %struct.FT_StreamRec_** %ft_strm to i8*
  call void @llvm.lifetime.end(i64 8, i8* %187) #1
  %188 = bitcast i32* %own_font_data_len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %188) #1
  %189 = bitcast i8** %own_font_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %189) #1
  %190 = bitcast %struct.FT_Incremental_InterfaceRec_** %ft_inc_int to i8*
  call void @llvm.lifetime.end(i64 8, i8* %190) #1
  %191 = bitcast %struct.FT_Parameter_* %ft_param to i8*
  call void @llvm.lifetime.end(i64 16, i8* %191) #1
  %192 = bitcast %struct.FT_FaceRec_** %ft_face to i8*
  call void @llvm.lifetime.end(i64 8, i8* %192) #1
  %cleanup.dest.174 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.174, label %cleanup.265 [
    i32 0, label %cleanup.cont.175
  ]

cleanup.cont.175:                                 ; preds = %cleanup.168
  br label %if.end.176

if.end.176:                                       ; preds = %cleanup.cont.175, %if.end.20
  %193 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %tobool177 = icmp ne %struct.ff_face_s* %193, null
  br i1 %tobool177, label %if.then.178, label %if.end.262

if.then.178:                                      ; preds = %if.end.176
  %194 = load %struct.gs_fapi_font_scale_s*, %struct.gs_fapi_font_scale_s** %a_font_scale.addr, align 8, !tbaa !1
  %matrix = getelementptr inbounds %struct.gs_fapi_font_scale_s, %struct.gs_fapi_font_scale_s* %194, i32 0, i32 0
  %arrayidx = getelementptr inbounds [6 x i32], [6 x i32]* %matrix, i32 0, i64 0
  %195 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %conv179 = sext i32 %195 to i64
  %196 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %ft_transform = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %196, i32 0, i32 1
  %xx = getelementptr inbounds %struct.FT_Matrix_, %struct.FT_Matrix_* %ft_transform, i32 0, i32 0
  store i64 %conv179, i64* %xx, align 8, !tbaa !57
  %197 = load %struct.gs_fapi_font_scale_s*, %struct.gs_fapi_font_scale_s** %a_font_scale.addr, align 8, !tbaa !1
  %matrix180 = getelementptr inbounds %struct.gs_fapi_font_scale_s, %struct.gs_fapi_font_scale_s* %197, i32 0, i32 0
  %arrayidx181 = getelementptr inbounds [6 x i32], [6 x i32]* %matrix180, i32 0, i64 2
  %198 = load i32, i32* %arrayidx181, align 4, !tbaa !5
  %conv182 = sext i32 %198 to i64
  %199 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %ft_transform183 = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %199, i32 0, i32 1
  %xy = getelementptr inbounds %struct.FT_Matrix_, %struct.FT_Matrix_* %ft_transform183, i32 0, i32 1
  store i64 %conv182, i64* %xy, align 8, !tbaa !60
  %200 = load %struct.gs_fapi_font_scale_s*, %struct.gs_fapi_font_scale_s** %a_font_scale.addr, align 8, !tbaa !1
  %matrix184 = getelementptr inbounds %struct.gs_fapi_font_scale_s, %struct.gs_fapi_font_scale_s* %200, i32 0, i32 0
  %arrayidx185 = getelementptr inbounds [6 x i32], [6 x i32]* %matrix184, i32 0, i64 1
  %201 = load i32, i32* %arrayidx185, align 4, !tbaa !5
  %conv186 = sext i32 %201 to i64
  %202 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %ft_transform187 = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %202, i32 0, i32 1
  %yx = getelementptr inbounds %struct.FT_Matrix_, %struct.FT_Matrix_* %ft_transform187, i32 0, i32 2
  store i64 %conv186, i64* %yx, align 8, !tbaa !61
  %203 = load %struct.gs_fapi_font_scale_s*, %struct.gs_fapi_font_scale_s** %a_font_scale.addr, align 8, !tbaa !1
  %matrix188 = getelementptr inbounds %struct.gs_fapi_font_scale_s, %struct.gs_fapi_font_scale_s* %203, i32 0, i32 0
  %arrayidx189 = getelementptr inbounds [6 x i32], [6 x i32]* %matrix188, i32 0, i64 3
  %204 = load i32, i32* %arrayidx189, align 4, !tbaa !5
  %conv190 = sext i32 %204 to i64
  %205 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %ft_transform191 = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %205, i32 0, i32 1
  %yy = getelementptr inbounds %struct.FT_Matrix_, %struct.FT_Matrix_* %ft_transform191, i32 0, i32 3
  store i64 %conv190, i64* %yy, align 8, !tbaa !62
  %206 = load %struct.gs_fapi_font_scale_s*, %struct.gs_fapi_font_scale_s** %a_font_scale.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gs_fapi_font_scale_s, %struct.gs_fapi_font_scale_s* %206, i32 0, i32 1
  %arrayidx192 = getelementptr inbounds [2 x i32], [2 x i32]* %HWResolution, i32 0, i64 0
  %207 = load i32, i32* %arrayidx192, align 4, !tbaa !5
  %shr = ashr i32 %207, 16
  %208 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %horz_res = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %208, i32 0, i32 4
  store i32 %shr, i32* %horz_res, align 4, !tbaa !63
  %209 = load %struct.gs_fapi_font_scale_s*, %struct.gs_fapi_font_scale_s** %a_font_scale.addr, align 8, !tbaa !1
  %HWResolution193 = getelementptr inbounds %struct.gs_fapi_font_scale_s, %struct.gs_fapi_font_scale_s* %209, i32 0, i32 1
  %arrayidx194 = getelementptr inbounds [2 x i32], [2 x i32]* %HWResolution193, i32 0, i64 1
  %210 = load i32, i32* %arrayidx194, align 4, !tbaa !5
  %shr195 = ashr i32 %210, 16
  %211 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %vert_res = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %211, i32 0, i32 5
  store i32 %shr195, i32* %vert_res, align 4, !tbaa !64
  %212 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %ft_transform196 = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %212, i32 0, i32 1
  %213 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %horz_res197 = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %213, i32 0, i32 4
  %214 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %vert_res198 = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %214, i32 0, i32 5
  %215 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %215, i32 0, i32 2
  %216 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %216, i32 0, i32 3
  call void @transform_decompose(%struct.FT_Matrix_* %ft_transform196, i32* %horz_res197, i32* %vert_res198, i64* %width, i64* %height) #5
  %217 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %ft_face199 = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %217, i32 0, i32 0
  %218 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face199, align 8, !tbaa !65
  %219 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %width200 = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %219, i32 0, i32 2
  %220 = load i64, i64* %width200, align 8, !tbaa !66
  %221 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %height201 = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %221, i32 0, i32 3
  %222 = load i64, i64* %height201, align 8, !tbaa !67
  %223 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %horz_res202 = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %223, i32 0, i32 4
  %224 = load i32, i32* %horz_res202, align 4, !tbaa !63
  %225 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %vert_res203 = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %225, i32 0, i32 5
  %226 = load i32, i32* %vert_res203, align 4, !tbaa !64
  %call204 = call i32 @FT_Set_Char_Size(%struct.FT_FaceRec_* %218, i64 %220, i64 %222, i32 %224, i32 %226) #5
  store i32 %call204, i32* %ft_error, align 4, !tbaa !5
  %227 = load i32, i32* %ft_error, align 4, !tbaa !5
  %tobool205 = icmp ne i32 %227, 0
  br i1 %tobool205, label %if.then.206, label %if.end.208

if.then.206:                                      ; preds = %if.then.178
  %228 = load i32, i32* %ft_error, align 4, !tbaa !5
  %call207 = call i32 @ft_to_gs_error(i32 %228) #5
  store i32 %call207, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.265

if.end.208:                                       ; preds = %if.then.178
  %229 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %ft_face209 = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %229, i32 0, i32 0
  %230 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face209, align 8, !tbaa !65
  %231 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %ft_transform210 = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %231, i32 0, i32 1
  call void @FT_Set_Transform(%struct.FT_FaceRec_* %230, %struct.FT_Matrix_* %ft_transform210, %struct.FT_Vector_* null) #5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.254, %if.end.208
  %232 = load i32, i32* %i, align 4, !tbaa !5
  %cmp211 = icmp slt i32 %232, 10
  br i1 %cmp211, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %233 = load %struct.FT_CharMapRec_*, %struct.FT_CharMapRec_** %cmap, align 8, !tbaa !1
  %tobool213 = icmp ne %struct.FT_CharMapRec_* %233, null
  %lnot = xor i1 %tobool213, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %234 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ]
  br i1 %234, label %for.body, label %for.end.256

for.body:                                         ; preds = %land.end
  %235 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %235 to i64
  %236 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_font.addr, align 8, !tbaa !1
  %ttf_cmap_req = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %236, i32 0, i32 13
  %arrayidx214 = getelementptr inbounds [10 x %struct.gs_fapi_ttf_cmap_request], [10 x %struct.gs_fapi_ttf_cmap_request]* %ttf_cmap_req, i32 0, i64 %idxprom
  %platform_id = getelementptr inbounds %struct.gs_fapi_ttf_cmap_request, %struct.gs_fapi_ttf_cmap_request* %arrayidx214, i32 0, i32 0
  %237 = load i32, i32* %platform_id, align 4, !tbaa !68
  %cmp215 = icmp sgt i32 %237, 0
  br i1 %cmp215, label %if.then.217, label %if.else.252

if.then.217:                                      ; preds = %for.body
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.218

for.cond.218:                                     ; preds = %for.inc, %if.then.217
  %238 = load i32, i32* %j, align 4, !tbaa !5
  %239 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %ft_face219 = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %239, i32 0, i32 0
  %240 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face219, align 8, !tbaa !65
  %num_charmaps = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %240, i32 0, i32 9
  %241 = load i32, i32* %num_charmaps, align 4, !tbaa !70
  %cmp220 = icmp slt i32 %238, %241
  br i1 %cmp220, label %for.body.222, label %for.end

for.body.222:                                     ; preds = %for.cond.218
  %242 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom223 = sext i32 %242 to i64
  %243 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %ft_face224 = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %243, i32 0, i32 0
  %244 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face224, align 8, !tbaa !65
  %charmaps = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %244, i32 0, i32 10
  %245 = load %struct.FT_CharMapRec_**, %struct.FT_CharMapRec_*** %charmaps, align 8, !tbaa !76
  %arrayidx225 = getelementptr inbounds %struct.FT_CharMapRec_*, %struct.FT_CharMapRec_** %245, i64 %idxprom223
  %246 = load %struct.FT_CharMapRec_*, %struct.FT_CharMapRec_** %arrayidx225, align 8, !tbaa !1
  %platform_id226 = getelementptr inbounds %struct.FT_CharMapRec_, %struct.FT_CharMapRec_* %246, i32 0, i32 2
  %247 = load i16, i16* %platform_id226, align 2, !tbaa !77
  %conv227 = zext i16 %247 to i32
  %248 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom228 = sext i32 %248 to i64
  %249 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_font.addr, align 8, !tbaa !1
  %ttf_cmap_req229 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %249, i32 0, i32 13
  %arrayidx230 = getelementptr inbounds [10 x %struct.gs_fapi_ttf_cmap_request], [10 x %struct.gs_fapi_ttf_cmap_request]* %ttf_cmap_req229, i32 0, i64 %idxprom228
  %platform_id231 = getelementptr inbounds %struct.gs_fapi_ttf_cmap_request, %struct.gs_fapi_ttf_cmap_request* %arrayidx230, i32 0, i32 0
  %250 = load i32, i32* %platform_id231, align 4, !tbaa !68
  %cmp232 = icmp eq i32 %conv227, %250
  br i1 %cmp232, label %land.lhs.true.234, label %if.end.251

land.lhs.true.234:                                ; preds = %for.body.222
  %251 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom235 = sext i32 %251 to i64
  %252 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %ft_face236 = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %252, i32 0, i32 0
  %253 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face236, align 8, !tbaa !65
  %charmaps237 = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %253, i32 0, i32 10
  %254 = load %struct.FT_CharMapRec_**, %struct.FT_CharMapRec_*** %charmaps237, align 8, !tbaa !76
  %arrayidx238 = getelementptr inbounds %struct.FT_CharMapRec_*, %struct.FT_CharMapRec_** %254, i64 %idxprom235
  %255 = load %struct.FT_CharMapRec_*, %struct.FT_CharMapRec_** %arrayidx238, align 8, !tbaa !1
  %encoding_id = getelementptr inbounds %struct.FT_CharMapRec_, %struct.FT_CharMapRec_* %255, i32 0, i32 3
  %256 = load i16, i16* %encoding_id, align 2, !tbaa !79
  %conv239 = zext i16 %256 to i32
  %257 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom240 = sext i32 %257 to i64
  %258 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_font.addr, align 8, !tbaa !1
  %ttf_cmap_req241 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %258, i32 0, i32 13
  %arrayidx242 = getelementptr inbounds [10 x %struct.gs_fapi_ttf_cmap_request], [10 x %struct.gs_fapi_ttf_cmap_request]* %ttf_cmap_req241, i32 0, i64 %idxprom240
  %encoding_id243 = getelementptr inbounds %struct.gs_fapi_ttf_cmap_request, %struct.gs_fapi_ttf_cmap_request* %arrayidx242, i32 0, i32 1
  %259 = load i32, i32* %encoding_id243, align 4, !tbaa !80
  %cmp244 = icmp eq i32 %conv239, %259
  br i1 %cmp244, label %if.then.246, label %if.end.251

if.then.246:                                      ; preds = %land.lhs.true.234
  %260 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom247 = sext i32 %260 to i64
  %261 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %ft_face248 = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %261, i32 0, i32 0
  %262 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face248, align 8, !tbaa !65
  %charmaps249 = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %262, i32 0, i32 10
  %263 = load %struct.FT_CharMapRec_**, %struct.FT_CharMapRec_*** %charmaps249, align 8, !tbaa !76
  %arrayidx250 = getelementptr inbounds %struct.FT_CharMapRec_*, %struct.FT_CharMapRec_** %263, i64 %idxprom247
  %264 = load %struct.FT_CharMapRec_*, %struct.FT_CharMapRec_** %arrayidx250, align 8, !tbaa !1
  store %struct.FT_CharMapRec_* %264, %struct.FT_CharMapRec_** %cmap, align 8, !tbaa !1
  br label %for.end

if.end.251:                                       ; preds = %land.lhs.true.234, %for.body.222
  br label %for.inc

for.inc:                                          ; preds = %if.end.251
  %265 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add nsw i32 %265, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  br label %for.cond.218

for.end:                                          ; preds = %if.then.246, %for.cond.218
  br label %if.end.253

if.else.252:                                      ; preds = %for.body
  br label %for.end.256

if.end.253:                                       ; preds = %for.end
  br label %for.inc.254

for.inc.254:                                      ; preds = %if.end.253
  %266 = load i32, i32* %i, align 4, !tbaa !5
  %inc255 = add nsw i32 %266, 1
  store i32 %inc255, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end.256:                                      ; preds = %if.else.252, %land.end
  %267 = load %struct.FT_CharMapRec_*, %struct.FT_CharMapRec_** %cmap, align 8, !tbaa !1
  %tobool257 = icmp ne %struct.FT_CharMapRec_* %267, null
  br i1 %tobool257, label %if.then.258, label %if.end.261

if.then.258:                                      ; preds = %for.end.256
  %268 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %ft_face259 = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %268, i32 0, i32 0
  %269 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face259, align 8, !tbaa !65
  %270 = load %struct.FT_CharMapRec_*, %struct.FT_CharMapRec_** %cmap, align 8, !tbaa !1
  %call260 = call i32 @FT_Set_Charmap(%struct.FT_FaceRec_* %269, %struct.FT_CharMapRec_* %270) #5
  br label %if.end.261

if.end.261:                                       ; preds = %if.then.258, %for.end.256
  br label %if.end.262

if.end.262:                                       ; preds = %if.end.261, %if.end.176
  %271 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_font.addr, align 8, !tbaa !1
  %server_font_data263 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %271, i32 0, i32 0
  %272 = load i8*, i8** %server_font_data263, align 8, !tbaa !33
  %tobool264 = icmp ne i8* %272, null
  %cond = select i1 %tobool264, i32 0, i32 -1
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.265

cleanup.265:                                      ; preds = %if.end.262, %if.then.206, %cleanup.168, %if.then.19
  %273 = bitcast i32* %data_owned to i8*
  call void @llvm.lifetime.end(i64 4, i8* %273) #1
  %274 = bitcast %struct.FT_CharMapRec_** %cmap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %274) #1
  %275 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %275) #1
  %276 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %276) #1
  %277 = bitcast i32* %ft_error to i8*
  call void @llvm.lifetime.end(i64 4, i8* %277) #1
  %278 = bitcast %struct.ff_face_s** %face to i8*
  call void @llvm.lifetime.end(i64 8, i8* %278) #1
  %279 = bitcast %struct.ff_server_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %279) #1
  %280 = load i32, i32* %retval
  ret i32 %280
}

; Function Attrs: nounwind uwtable
define internal i32 @gs_fapi_ft_get_decodingID(%struct.gs_fapi_server_s* %a_server, %struct.gs_fapi_font_s* %a_font, i8** %a_decoding_id) #0 {
entry:
  %a_server.addr = alloca %struct.gs_fapi_server_s*, align 8
  %a_font.addr = alloca %struct.gs_fapi_font_s*, align 8
  %a_decoding_id.addr = alloca i8**, align 8
  store %struct.gs_fapi_server_s* %a_server, %struct.gs_fapi_server_s** %a_server.addr, align 8, !tbaa !1
  store %struct.gs_fapi_font_s* %a_font, %struct.gs_fapi_font_s** %a_font.addr, align 8, !tbaa !1
  store i8** %a_decoding_id, i8*** %a_decoding_id.addr, align 8, !tbaa !1
  %0 = load i8**, i8*** %a_decoding_id.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8** %0, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @gs_fapi_ft_get_font_bbox(%struct.gs_fapi_server_s* %a_server, %struct.gs_fapi_font_s* %a_font, i32* %a_box, i32* %unitsPerEm) #0 {
entry:
  %a_server.addr = alloca %struct.gs_fapi_server_s*, align 8
  %a_font.addr = alloca %struct.gs_fapi_font_s*, align 8
  %a_box.addr = alloca i32*, align 8
  %unitsPerEm.addr = alloca i32*, align 8
  %face = alloca %struct.ff_face_s*, align 8
  store %struct.gs_fapi_server_s* %a_server, %struct.gs_fapi_server_s** %a_server.addr, align 8, !tbaa !1
  store %struct.gs_fapi_font_s* %a_font, %struct.gs_fapi_font_s** %a_font.addr, align 8, !tbaa !1
  store i32* %a_box, i32** %a_box.addr, align 8, !tbaa !1
  store i32* %unitsPerEm, i32** %unitsPerEm.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ff_face_s** %face to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_font.addr, align 8, !tbaa !1
  %server_font_data = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %1, i32 0, i32 0
  %2 = load i8*, i8** %server_font_data, align 8, !tbaa !33
  %3 = bitcast i8* %2 to %struct.ff_face_s*
  store %struct.ff_face_s* %3, %struct.ff_face_s** %face, align 8, !tbaa !1
  %4 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %ft_face = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %4, i32 0, i32 0
  %5 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8, !tbaa !65
  %bbox = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %5, i32 0, i32 12
  %xMin = getelementptr inbounds %struct.FT_BBox_, %struct.FT_BBox_* %bbox, i32 0, i32 0
  %6 = load i64, i64* %xMin, align 8, !tbaa !81
  %conv = trunc i64 %6 to i32
  %7 = load i32*, i32** %a_box.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 0
  store i32 %conv, i32* %arrayidx, align 4, !tbaa !5
  %8 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %ft_face1 = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %8, i32 0, i32 0
  %9 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face1, align 8, !tbaa !65
  %bbox2 = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %9, i32 0, i32 12
  %yMin = getelementptr inbounds %struct.FT_BBox_, %struct.FT_BBox_* %bbox2, i32 0, i32 1
  %10 = load i64, i64* %yMin, align 8, !tbaa !82
  %conv3 = trunc i64 %10 to i32
  %11 = load i32*, i32** %a_box.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i32, i32* %11, i64 1
  store i32 %conv3, i32* %arrayidx4, align 4, !tbaa !5
  %12 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %ft_face5 = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %12, i32 0, i32 0
  %13 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face5, align 8, !tbaa !65
  %bbox6 = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %13, i32 0, i32 12
  %xMax = getelementptr inbounds %struct.FT_BBox_, %struct.FT_BBox_* %bbox6, i32 0, i32 2
  %14 = load i64, i64* %xMax, align 8, !tbaa !83
  %conv7 = trunc i64 %14 to i32
  %15 = load i32*, i32** %a_box.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i32, i32* %15, i64 2
  store i32 %conv7, i32* %arrayidx8, align 4, !tbaa !5
  %16 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %ft_face9 = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %16, i32 0, i32 0
  %17 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face9, align 8, !tbaa !65
  %bbox10 = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %17, i32 0, i32 12
  %yMax = getelementptr inbounds %struct.FT_BBox_, %struct.FT_BBox_* %bbox10, i32 0, i32 3
  %18 = load i64, i64* %yMax, align 8, !tbaa !84
  %conv11 = trunc i64 %18 to i32
  %19 = load i32*, i32** %a_box.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i32, i32* %19, i64 3
  store i32 %conv11, i32* %arrayidx12, align 4, !tbaa !5
  %20 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %ft_face13 = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %20, i32 0, i32 0
  %21 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face13, align 8, !tbaa !65
  %units_per_EM = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %21, i32 0, i32 13
  %22 = load i16, i16* %units_per_EM, align 2, !tbaa !85
  %conv14 = zext i16 %22 to i32
  %23 = load i32*, i32** %unitsPerEm.addr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 %conv14, i32* %arrayidx15, align 4, !tbaa !5
  %24 = load i32*, i32** %unitsPerEm.addr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 %conv14, i32* %arrayidx16, align 4, !tbaa !5
  %25 = bitcast %struct.ff_face_s** %face to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @gs_fapi_ft_get_font_proportional_feature(%struct.gs_fapi_server_s* %a_server, %struct.gs_fapi_font_s* %a_font, i32* %a_proportional) #0 {
entry:
  %a_server.addr = alloca %struct.gs_fapi_server_s*, align 8
  %a_font.addr = alloca %struct.gs_fapi_font_s*, align 8
  %a_proportional.addr = alloca i32*, align 8
  store %struct.gs_fapi_server_s* %a_server, %struct.gs_fapi_server_s** %a_server.addr, align 8, !tbaa !1
  store %struct.gs_fapi_font_s* %a_font, %struct.gs_fapi_font_s** %a_font.addr, align 8, !tbaa !1
  store i32* %a_proportional, i32** %a_proportional.addr, align 8, !tbaa !1
  %0 = load i32*, i32** %a_proportional.addr, align 8, !tbaa !1
  store i32 1, i32* %0, align 4, !tbaa !5
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @gs_fapi_ft_can_retrieve_char_by_name(%struct.gs_fapi_server_s* %a_server, %struct.gs_fapi_font_s* %a_font, %struct.gs_fapi_char_ref* %a_char_ref, i32* %a_result) #0 {
entry:
  %a_server.addr = alloca %struct.gs_fapi_server_s*, align 8
  %a_font.addr = alloca %struct.gs_fapi_font_s*, align 8
  %a_char_ref.addr = alloca %struct.gs_fapi_char_ref*, align 8
  %a_result.addr = alloca i32*, align 8
  %face = alloca %struct.ff_face_s*, align 8
  %name = alloca [128 x i8], align 16
  store %struct.gs_fapi_server_s* %a_server, %struct.gs_fapi_server_s** %a_server.addr, align 8, !tbaa !1
  store %struct.gs_fapi_font_s* %a_font, %struct.gs_fapi_font_s** %a_font.addr, align 8, !tbaa !1
  store %struct.gs_fapi_char_ref* %a_char_ref, %struct.gs_fapi_char_ref** %a_char_ref.addr, align 8, !tbaa !1
  store i32* %a_result, i32** %a_result.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ff_face_s** %face to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_font.addr, align 8, !tbaa !1
  %server_font_data = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %1, i32 0, i32 0
  %2 = load i8*, i8** %server_font_data, align 8, !tbaa !33
  %3 = bitcast i8* %2 to %struct.ff_face_s*
  store %struct.ff_face_s* %3, %struct.ff_face_s** %face, align 8, !tbaa !1
  %4 = bitcast [128 x i8]* %name to i8*
  call void @llvm.lifetime.start(i64 128, i8* %4) #1
  %5 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %ft_face = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %5, i32 0, i32 0
  %6 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8, !tbaa !65
  %face_flags = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %6, i32 0, i32 2
  %7 = load i64, i64* %face_flags, align 8, !tbaa !86
  %and = and i64 %7, 512
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %8 = load %struct.gs_fapi_char_ref*, %struct.gs_fapi_char_ref** %a_char_ref.addr, align 8, !tbaa !1
  %char_name_length = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %8, i32 0, i32 5
  %9 = load i32, i32* %char_name_length, align 4, !tbaa !87
  %conv = zext i32 %9 to i64
  %cmp = icmp ult i64 %conv, 128
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %name, i32 0, i32 0
  %10 = load %struct.gs_fapi_char_ref*, %struct.gs_fapi_char_ref** %a_char_ref.addr, align 8, !tbaa !1
  %char_name = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %10, i32 0, i32 4
  %11 = load i8*, i8** %char_name, align 8, !tbaa !89
  %12 = load %struct.gs_fapi_char_ref*, %struct.gs_fapi_char_ref** %a_char_ref.addr, align 8, !tbaa !1
  %char_name_length2 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %12, i32 0, i32 5
  %13 = load i32, i32* %char_name_length2, align 4, !tbaa !87
  %conv3 = zext i32 %13 to i64
  %call = call i8* @memcpy(i8* %arraydecay, i8* %11, i64 %conv3) #6
  %14 = load %struct.gs_fapi_char_ref*, %struct.gs_fapi_char_ref** %a_char_ref.addr, align 8, !tbaa !1
  %char_name_length4 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %14, i32 0, i32 5
  %15 = load i32, i32* %char_name_length4, align 4, !tbaa !87
  %idxprom = zext i32 %15 to i64
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* %name, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !24
  %16 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %ft_face5 = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %16, i32 0, i32 0
  %17 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face5, align 8, !tbaa !65
  %arraydecay6 = getelementptr inbounds [128 x i8], [128 x i8]* %name, i32 0, i32 0
  %call7 = call i32 @FT_Get_Name_Index(%struct.FT_FaceRec_* %17, i8* %arraydecay6) #5
  %conv8 = zext i32 %call7 to i64
  %18 = load %struct.gs_fapi_char_ref*, %struct.gs_fapi_char_ref** %a_char_ref.addr, align 8, !tbaa !1
  %char_codes = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %18, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [4 x i64], [4 x i64]* %char_codes, i32 0, i64 0
  store i64 %conv8, i64* %arrayidx9, align 8, !tbaa !22
  %19 = load %struct.gs_fapi_char_ref*, %struct.gs_fapi_char_ref** %a_char_ref.addr, align 8, !tbaa !1
  %char_codes10 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %19, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [4 x i64], [4 x i64]* %char_codes10, i32 0, i64 0
  %20 = load i64, i64* %arrayidx11, align 8, !tbaa !22
  %cmp12 = icmp ne i64 %20, 0
  %conv13 = zext i1 %cmp12 to i32
  %21 = load i32*, i32** %a_result.addr, align 8, !tbaa !1
  store i32 %conv13, i32* %21, align 4, !tbaa !5
  %22 = load i32*, i32** %a_result.addr, align 8, !tbaa !1
  %23 = load i32, i32* %22, align 4, !tbaa !5
  %tobool14 = icmp ne i32 %23, 0
  br i1 %tobool14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %if.then
  %24 = load %struct.gs_fapi_char_ref*, %struct.gs_fapi_char_ref** %a_char_ref.addr, align 8, !tbaa !1
  %is_glyph_index = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %24, i32 0, i32 3
  store i32 1, i32* %is_glyph_index, align 4, !tbaa !90
  br label %if.end

if.end:                                           ; preds = %if.then.15, %if.then
  br label %if.end.16

if.else:                                          ; preds = %land.lhs.true, %entry
  %25 = load i32*, i32** %a_result.addr, align 8, !tbaa !1
  store i32 0, i32* %25, align 4, !tbaa !5
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.end
  %26 = bitcast [128 x i8]* %name to i8*
  call void @llvm.lifetime.end(i64 128, i8* %26) #1
  %27 = bitcast %struct.ff_face_s** %face to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @gs_fapi_ft_can_replace_metrics(%struct.gs_fapi_server_s* %a_server, %struct.gs_fapi_font_s* %a_font, %struct.gs_fapi_char_ref* %a_char_ref, i32* %a_result) #0 {
entry:
  %a_server.addr = alloca %struct.gs_fapi_server_s*, align 8
  %a_font.addr = alloca %struct.gs_fapi_font_s*, align 8
  %a_char_ref.addr = alloca %struct.gs_fapi_char_ref*, align 8
  %a_result.addr = alloca i32*, align 8
  store %struct.gs_fapi_server_s* %a_server, %struct.gs_fapi_server_s** %a_server.addr, align 8, !tbaa !1
  store %struct.gs_fapi_font_s* %a_font, %struct.gs_fapi_font_s** %a_font.addr, align 8, !tbaa !1
  store %struct.gs_fapi_char_ref* %a_char_ref, %struct.gs_fapi_char_ref** %a_char_ref.addr, align 8, !tbaa !1
  store i32* %a_result, i32** %a_result.addr, align 8, !tbaa !1
  %0 = load i32*, i32** %a_result.addr, align 8, !tbaa !1
  store i32 1, i32* %0, align 4, !tbaa !5
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @gs_fapi_ft_get_fontmatrix(%struct.gs_fapi_server_s* %server, %struct.gs_matrix_s* %m) #0 {
entry:
  %server.addr = alloca %struct.gs_fapi_server_s*, align 8
  %m.addr = alloca %struct.gs_matrix_s*, align 8
  store %struct.gs_fapi_server_s* %server, %struct.gs_fapi_server_s** %server.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %m, %struct.gs_matrix_s** %m.addr, align 8, !tbaa !1
  %0 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %m.addr, align 8, !tbaa !1
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %0, i32 0, i32 0
  store float 1.000000e+00, float* %xx, align 4, !tbaa !91
  %1 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %m.addr, align 8, !tbaa !1
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %1, i32 0, i32 1
  store float 0.000000e+00, float* %xy, align 4, !tbaa !92
  %2 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %m.addr, align 8, !tbaa !1
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i32 0, i32 2
  store float 0.000000e+00, float* %yx, align 4, !tbaa !93
  %3 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %m.addr, align 8, !tbaa !1
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %3, i32 0, i32 3
  store float 1.000000e+00, float* %yy, align 4, !tbaa !94
  %4 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %m.addr, align 8, !tbaa !1
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %4, i32 0, i32 4
  store float 0.000000e+00, float* %tx, align 4, !tbaa !95
  %5 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %m.addr, align 8, !tbaa !1
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %5, i32 0, i32 5
  store float 0.000000e+00, float* %ty, align 4, !tbaa !96
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @gs_fapi_ft_get_char_width(%struct.gs_fapi_server_s* %a_server, %struct.gs_fapi_font_s* %a_font, %struct.gs_fapi_char_ref* %a_char_ref, %struct.gs_fapi_metrics_s* %a_metrics) #0 {
entry:
  %a_server.addr = alloca %struct.gs_fapi_server_s*, align 8
  %a_font.addr = alloca %struct.gs_fapi_font_s*, align 8
  %a_char_ref.addr = alloca %struct.gs_fapi_char_ref*, align 8
  %a_metrics.addr = alloca %struct.gs_fapi_metrics_s*, align 8
  %s = alloca %struct.ff_server_s*, align 8
  store %struct.gs_fapi_server_s* %a_server, %struct.gs_fapi_server_s** %a_server.addr, align 8, !tbaa !1
  store %struct.gs_fapi_font_s* %a_font, %struct.gs_fapi_font_s** %a_font.addr, align 8, !tbaa !1
  store %struct.gs_fapi_char_ref* %a_char_ref, %struct.gs_fapi_char_ref** %a_char_ref.addr, align 8, !tbaa !1
  store %struct.gs_fapi_metrics_s* %a_metrics, %struct.gs_fapi_metrics_s** %a_metrics.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ff_server_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %a_server.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_fapi_server_s* %1 to %struct.ff_server_s*
  store %struct.ff_server_s* %2, %struct.ff_server_s** %s, align 8, !tbaa !1
  %3 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %a_server.addr, align 8, !tbaa !1
  %4 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_font.addr, align 8, !tbaa !1
  %5 = load %struct.gs_fapi_char_ref*, %struct.gs_fapi_char_ref** %a_char_ref.addr, align 8, !tbaa !1
  %6 = load %struct.gs_fapi_metrics_s*, %struct.gs_fapi_metrics_s** %a_metrics.addr, align 8, !tbaa !1
  %7 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %outline_glyph = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %7, i32 0, i32 2
  %8 = bitcast %struct.FT_OutlineGlyphRec_** %outline_glyph to %struct.FT_GlyphRec_**
  %9 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %a_server.addr, align 8, !tbaa !1
  %max_bitmap = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %9, i32 0, i32 5
  %10 = load i32, i32* %max_bitmap, align 4, !tbaa !97
  %call = call i32 @load_glyph(%struct.gs_fapi_server_s* %3, %struct.gs_fapi_font_s* %4, %struct.gs_fapi_char_ref* %5, %struct.gs_fapi_metrics_s* %6, %struct.FT_GlyphRec_** %8, i32 0, i32 %10) #5
  %11 = bitcast %struct.ff_server_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @gs_fapi_ft_get_char_raster_metrics(%struct.gs_fapi_server_s* %a_server, %struct.gs_fapi_font_s* %a_font, %struct.gs_fapi_char_ref* %a_char_ref, %struct.gs_fapi_metrics_s* %a_metrics) #0 {
entry:
  %a_server.addr = alloca %struct.gs_fapi_server_s*, align 8
  %a_font.addr = alloca %struct.gs_fapi_font_s*, align 8
  %a_char_ref.addr = alloca %struct.gs_fapi_char_ref*, align 8
  %a_metrics.addr = alloca %struct.gs_fapi_metrics_s*, align 8
  %s = alloca %struct.ff_server_s*, align 8
  %error = alloca i32, align 4
  store %struct.gs_fapi_server_s* %a_server, %struct.gs_fapi_server_s** %a_server.addr, align 8, !tbaa !1
  store %struct.gs_fapi_font_s* %a_font, %struct.gs_fapi_font_s** %a_font.addr, align 8, !tbaa !1
  store %struct.gs_fapi_char_ref* %a_char_ref, %struct.gs_fapi_char_ref** %a_char_ref.addr, align 8, !tbaa !1
  store %struct.gs_fapi_metrics_s* %a_metrics, %struct.gs_fapi_metrics_s** %a_metrics.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ff_server_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %a_server.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_fapi_server_s* %1 to %struct.ff_server_s*
  store %struct.ff_server_s* %2, %struct.ff_server_s** %s, align 8, !tbaa !1
  %3 = bitcast i32* %error to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %a_server.addr, align 8, !tbaa !1
  %5 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_font.addr, align 8, !tbaa !1
  %6 = load %struct.gs_fapi_char_ref*, %struct.gs_fapi_char_ref** %a_char_ref.addr, align 8, !tbaa !1
  %7 = load %struct.gs_fapi_metrics_s*, %struct.gs_fapi_metrics_s** %a_metrics.addr, align 8, !tbaa !1
  %8 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %bitmap_glyph = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %8, i32 0, i32 3
  %9 = bitcast %struct.FT_BitmapGlyphRec_** %bitmap_glyph to %struct.FT_GlyphRec_**
  %10 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %a_server.addr, align 8, !tbaa !1
  %max_bitmap = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %10, i32 0, i32 5
  %11 = load i32, i32* %max_bitmap, align 4, !tbaa !97
  %call = call i32 @load_glyph(%struct.gs_fapi_server_s* %4, %struct.gs_fapi_font_s* %5, %struct.gs_fapi_char_ref* %6, %struct.gs_fapi_metrics_s* %7, %struct.FT_GlyphRec_** %9, i32 1, i32 %11) #5
  store i32 %call, i32* %error, align 4, !tbaa !5
  %12 = load i32, i32* %error, align 4, !tbaa !5
  %13 = bitcast i32* %error to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = bitcast %struct.ff_server_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @gs_fapi_ft_get_char_raster(%struct.gs_fapi_server_s* %a_server, %struct.gs_fapi_raster* %a_raster) #0 {
entry:
  %retval = alloca i32, align 4
  %a_server.addr = alloca %struct.gs_fapi_server_s*, align 8
  %a_raster.addr = alloca %struct.gs_fapi_raster*, align 8
  %s = alloca %struct.ff_server_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_fapi_server_s* %a_server, %struct.gs_fapi_server_s** %a_server.addr, align 8, !tbaa !1
  store %struct.gs_fapi_raster* %a_raster, %struct.gs_fapi_raster** %a_raster.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ff_server_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %a_server.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_fapi_server_s* %1 to %struct.ff_server_s*
  store %struct.ff_server_s* %2, %struct.ff_server_s** %s, align 8, !tbaa !1
  %3 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %bitmap_glyph = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %3, i32 0, i32 3
  %4 = load %struct.FT_BitmapGlyphRec_*, %struct.FT_BitmapGlyphRec_** %bitmap_glyph, align 8, !tbaa !34
  %tobool = icmp ne %struct.FT_BitmapGlyphRec_* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %bitmap_glyph1 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %5, i32 0, i32 3
  %6 = load %struct.FT_BitmapGlyphRec_*, %struct.FT_BitmapGlyphRec_** %bitmap_glyph1, align 8, !tbaa !34
  %bitmap = getelementptr inbounds %struct.FT_BitmapGlyphRec_, %struct.FT_BitmapGlyphRec_* %6, i32 0, i32 3
  %buffer = getelementptr inbounds %struct.FT_Bitmap_, %struct.FT_Bitmap_* %bitmap, i32 0, i32 3
  %7 = load i8*, i8** %buffer, align 8, !tbaa !98
  %8 = load %struct.gs_fapi_raster*, %struct.gs_fapi_raster** %a_raster.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %8, i32 0, i32 0
  store i8* %7, i8** %p, align 8, !tbaa !103
  %9 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %bitmap_glyph2 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %9, i32 0, i32 3
  %10 = load %struct.FT_BitmapGlyphRec_*, %struct.FT_BitmapGlyphRec_** %bitmap_glyph2, align 8, !tbaa !34
  %bitmap3 = getelementptr inbounds %struct.FT_BitmapGlyphRec_, %struct.FT_BitmapGlyphRec_* %10, i32 0, i32 3
  %width = getelementptr inbounds %struct.FT_Bitmap_, %struct.FT_Bitmap_* %bitmap3, i32 0, i32 1
  %11 = load i32, i32* %width, align 4, !tbaa !105
  %12 = load %struct.gs_fapi_raster*, %struct.gs_fapi_raster** %a_raster.addr, align 8, !tbaa !1
  %width4 = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %12, i32 0, i32 1
  store i32 %11, i32* %width4, align 4, !tbaa !106
  %13 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %bitmap_glyph5 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %13, i32 0, i32 3
  %14 = load %struct.FT_BitmapGlyphRec_*, %struct.FT_BitmapGlyphRec_** %bitmap_glyph5, align 8, !tbaa !34
  %bitmap6 = getelementptr inbounds %struct.FT_BitmapGlyphRec_, %struct.FT_BitmapGlyphRec_* %14, i32 0, i32 3
  %rows = getelementptr inbounds %struct.FT_Bitmap_, %struct.FT_Bitmap_* %bitmap6, i32 0, i32 0
  %15 = load i32, i32* %rows, align 4, !tbaa !107
  %16 = load %struct.gs_fapi_raster*, %struct.gs_fapi_raster** %a_raster.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %16, i32 0, i32 2
  store i32 %15, i32* %height, align 4, !tbaa !108
  %17 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %bitmap_glyph7 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %17, i32 0, i32 3
  %18 = load %struct.FT_BitmapGlyphRec_*, %struct.FT_BitmapGlyphRec_** %bitmap_glyph7, align 8, !tbaa !34
  %bitmap8 = getelementptr inbounds %struct.FT_BitmapGlyphRec_, %struct.FT_BitmapGlyphRec_* %18, i32 0, i32 3
  %pitch = getelementptr inbounds %struct.FT_Bitmap_, %struct.FT_Bitmap_* %bitmap8, i32 0, i32 2
  %19 = load i32, i32* %pitch, align 4, !tbaa !109
  %20 = load %struct.gs_fapi_raster*, %struct.gs_fapi_raster** %a_raster.addr, align 8, !tbaa !1
  %line_step = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %20, i32 0, i32 3
  store i32 %19, i32* %line_step, align 4, !tbaa !110
  %21 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %bitmap_glyph9 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %21, i32 0, i32 3
  %22 = load %struct.FT_BitmapGlyphRec_*, %struct.FT_BitmapGlyphRec_** %bitmap_glyph9, align 8, !tbaa !34
  %left = getelementptr inbounds %struct.FT_BitmapGlyphRec_, %struct.FT_BitmapGlyphRec_* %22, i32 0, i32 1
  %23 = load i32, i32* %left, align 4, !tbaa !111
  %mul = mul nsw i32 %23, 16
  %24 = load %struct.gs_fapi_raster*, %struct.gs_fapi_raster** %a_raster.addr, align 8, !tbaa !1
  %orig_x = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %24, i32 0, i32 4
  store i32 %mul, i32* %orig_x, align 4, !tbaa !112
  %25 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %bitmap_glyph10 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %25, i32 0, i32 3
  %26 = load %struct.FT_BitmapGlyphRec_*, %struct.FT_BitmapGlyphRec_** %bitmap_glyph10, align 8, !tbaa !34
  %top = getelementptr inbounds %struct.FT_BitmapGlyphRec_, %struct.FT_BitmapGlyphRec_* %26, i32 0, i32 2
  %27 = load i32, i32* %top, align 4, !tbaa !113
  %mul11 = mul nsw i32 %27, 16
  %28 = load %struct.gs_fapi_raster*, %struct.gs_fapi_raster** %a_raster.addr, align 8, !tbaa !1
  %orig_y = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %28, i32 0, i32 5
  store i32 %mul11, i32* %orig_y, align 4, !tbaa !114
  %29 = load %struct.gs_fapi_raster*, %struct.gs_fapi_raster** %a_raster.addr, align 8, !tbaa !1
  %black_width = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %29, i32 0, i32 8
  store i32 0, i32* %black_width, align 4, !tbaa !115
  %30 = load %struct.gs_fapi_raster*, %struct.gs_fapi_raster** %a_raster.addr, align 8, !tbaa !1
  %black_height = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %30, i32 0, i32 9
  store i32 0, i32* %black_height, align 4, !tbaa !116
  %31 = load %struct.gs_fapi_raster*, %struct.gs_fapi_raster** %a_raster.addr, align 8, !tbaa !1
  %top_indent = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %31, i32 0, i32 7
  store i32 0, i32* %top_indent, align 4, !tbaa !117
  %32 = load %struct.gs_fapi_raster*, %struct.gs_fapi_raster** %a_raster.addr, align 8, !tbaa !1
  %left_indent = getelementptr inbounds %struct.gs_fapi_raster, %struct.gs_fapi_raster* %32, i32 0, i32 6
  store i32 0, i32* %left_indent, align 4, !tbaa !118
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %33 = bitcast %struct.ff_server_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = load i32, i32* %retval
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define internal i32 @gs_fapi_ft_get_char_outline_metrics(%struct.gs_fapi_server_s* %a_server, %struct.gs_fapi_font_s* %a_font, %struct.gs_fapi_char_ref* %a_char_ref, %struct.gs_fapi_metrics_s* %a_metrics) #0 {
entry:
  %a_server.addr = alloca %struct.gs_fapi_server_s*, align 8
  %a_font.addr = alloca %struct.gs_fapi_font_s*, align 8
  %a_char_ref.addr = alloca %struct.gs_fapi_char_ref*, align 8
  %a_metrics.addr = alloca %struct.gs_fapi_metrics_s*, align 8
  %s = alloca %struct.ff_server_s*, align 8
  store %struct.gs_fapi_server_s* %a_server, %struct.gs_fapi_server_s** %a_server.addr, align 8, !tbaa !1
  store %struct.gs_fapi_font_s* %a_font, %struct.gs_fapi_font_s** %a_font.addr, align 8, !tbaa !1
  store %struct.gs_fapi_char_ref* %a_char_ref, %struct.gs_fapi_char_ref** %a_char_ref.addr, align 8, !tbaa !1
  store %struct.gs_fapi_metrics_s* %a_metrics, %struct.gs_fapi_metrics_s** %a_metrics.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ff_server_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %a_server.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_fapi_server_s* %1 to %struct.ff_server_s*
  store %struct.ff_server_s* %2, %struct.ff_server_s** %s, align 8, !tbaa !1
  %3 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %a_server.addr, align 8, !tbaa !1
  %4 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_font.addr, align 8, !tbaa !1
  %5 = load %struct.gs_fapi_char_ref*, %struct.gs_fapi_char_ref** %a_char_ref.addr, align 8, !tbaa !1
  %6 = load %struct.gs_fapi_metrics_s*, %struct.gs_fapi_metrics_s** %a_metrics.addr, align 8, !tbaa !1
  %7 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %outline_glyph = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %7, i32 0, i32 2
  %8 = bitcast %struct.FT_OutlineGlyphRec_** %outline_glyph to %struct.FT_GlyphRec_**
  %9 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %a_server.addr, align 8, !tbaa !1
  %max_bitmap = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %9, i32 0, i32 5
  %10 = load i32, i32* %max_bitmap, align 4, !tbaa !97
  %call = call i32 @load_glyph(%struct.gs_fapi_server_s* %3, %struct.gs_fapi_font_s* %4, %struct.gs_fapi_char_ref* %5, %struct.gs_fapi_metrics_s* %6, %struct.FT_GlyphRec_** %8, i32 0, i32 %10) #5
  %11 = bitcast %struct.ff_server_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @gs_fapi_ft_get_char_outline(%struct.gs_fapi_server_s* %a_server, %struct.gs_fapi_path_s* %a_path) #0 {
entry:
  %a_server.addr = alloca %struct.gs_fapi_server_s*, align 8
  %a_path.addr = alloca %struct.gs_fapi_path_s*, align 8
  %s = alloca %struct.ff_server_s*, align 8
  %p = alloca %struct.FF_path_info_s, align 8
  %ft_error = alloca i32, align 4
  store %struct.gs_fapi_server_s* %a_server, %struct.gs_fapi_server_s** %a_server.addr, align 8, !tbaa !1
  store %struct.gs_fapi_path_s* %a_path, %struct.gs_fapi_path_s** %a_path.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ff_server_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %a_server.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_fapi_server_s* %1 to %struct.ff_server_s*
  store %struct.ff_server_s* %2, %struct.ff_server_s** %s, align 8, !tbaa !1
  %3 = bitcast %struct.FF_path_info_s* %p to i8*
  call void @llvm.lifetime.start(i64 24, i8* %3) #1
  %4 = bitcast i32* %ft_error to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %ft_error, align 4, !tbaa !5
  %5 = load %struct.gs_fapi_path_s*, %struct.gs_fapi_path_s** %a_path.addr, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.FF_path_info_s, %struct.FF_path_info_s* %p, i32 0, i32 0
  store %struct.gs_fapi_path_s* %5, %struct.gs_fapi_path_s** %path, align 8, !tbaa !119
  %x = getelementptr inbounds %struct.FF_path_info_s, %struct.FF_path_info_s* %p, i32 0, i32 1
  store i64 0, i64* %x, align 8, !tbaa !121
  %y = getelementptr inbounds %struct.FF_path_info_s, %struct.FF_path_info_s* %p, i32 0, i32 2
  store i64 0, i64* %y, align 8, !tbaa !122
  %6 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %outline_glyph = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %6, i32 0, i32 2
  %7 = load %struct.FT_OutlineGlyphRec_*, %struct.FT_OutlineGlyphRec_** %outline_glyph, align 8, !tbaa !35
  %tobool = icmp ne %struct.FT_OutlineGlyphRec_* %7, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %outline_glyph1 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %8, i32 0, i32 2
  %9 = load %struct.FT_OutlineGlyphRec_*, %struct.FT_OutlineGlyphRec_** %outline_glyph1, align 8, !tbaa !35
  %outline = getelementptr inbounds %struct.FT_OutlineGlyphRec_, %struct.FT_OutlineGlyphRec_* %9, i32 0, i32 1
  %10 = bitcast %struct.FF_path_info_s* %p to i8*
  %call = call i32 @FT_Outline_Decompose(%struct.FT_Outline_* %outline, %struct.FT_Outline_Funcs_* @TheFtOutlineFuncs, i8* %10) #5
  store i32 %call, i32* %ft_error, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = load %struct.gs_fapi_path_s*, %struct.gs_fapi_path_s** %a_path.addr, align 8, !tbaa !1
  %moveto = getelementptr inbounds %struct.gs_fapi_path_s, %struct.gs_fapi_path_s* %11, i32 0, i32 3
  %12 = load i32 (%struct.gs_fapi_path_s*, i64, i64)*, i32 (%struct.gs_fapi_path_s*, i64, i64)** %moveto, align 8, !tbaa !123
  %13 = load %struct.gs_fapi_path_s*, %struct.gs_fapi_path_s** %a_path.addr, align 8, !tbaa !1
  %call2 = call i32 %12(%struct.gs_fapi_path_s* %13, i64 0, i64 0) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load %struct.gs_fapi_path_s*, %struct.gs_fapi_path_s** %a_path.addr, align 8, !tbaa !1
  %gs_error = getelementptr inbounds %struct.gs_fapi_path_s, %struct.gs_fapi_path_s* %14, i32 0, i32 2
  %15 = load i32, i32* %gs_error, align 4, !tbaa !125
  %cmp = icmp eq i32 %15, 0
  br i1 %cmp, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %16 = load %struct.gs_fapi_path_s*, %struct.gs_fapi_path_s** %a_path.addr, align 8, !tbaa !1
  %closepath = getelementptr inbounds %struct.gs_fapi_path_s, %struct.gs_fapi_path_s* %16, i32 0, i32 6
  %17 = load i32 (%struct.gs_fapi_path_s*)*, i32 (%struct.gs_fapi_path_s*)** %closepath, align 8, !tbaa !126
  %18 = load %struct.gs_fapi_path_s*, %struct.gs_fapi_path_s** %a_path.addr, align 8, !tbaa !1
  %call4 = call i32 %17(%struct.gs_fapi_path_s* %18) #5
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %19 = load i32, i32* %ft_error, align 4, !tbaa !5
  %call6 = call i32 @ft_to_gs_error(i32 %19) #5
  %20 = bitcast i32* %ft_error to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = bitcast %struct.FF_path_info_s* %p to i8*
  call void @llvm.lifetime.end(i64 24, i8* %21) #1
  %22 = bitcast %struct.ff_server_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  ret i32 %call6
}

; Function Attrs: nounwind uwtable
define internal i32 @gs_fapi_ft_release_char_data(%struct.gs_fapi_server_s* %a_server) #0 {
entry:
  %a_server.addr = alloca %struct.gs_fapi_server_s*, align 8
  %s = alloca %struct.ff_server_s*, align 8
  store %struct.gs_fapi_server_s* %a_server, %struct.gs_fapi_server_s** %a_server.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ff_server_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %a_server.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_fapi_server_s* %1 to %struct.ff_server_s*
  store %struct.ff_server_s* %2, %struct.ff_server_s** %s, align 8, !tbaa !1
  %3 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %outline_glyph = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %3, i32 0, i32 2
  %4 = load %struct.FT_OutlineGlyphRec_*, %struct.FT_OutlineGlyphRec_** %outline_glyph, align 8, !tbaa !35
  %tobool = icmp ne %struct.FT_OutlineGlyphRec_* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %freetype_library = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %5, i32 0, i32 1
  %6 = load %struct.FT_LibraryRec_*, %struct.FT_LibraryRec_** %freetype_library, align 8, !tbaa !26
  %7 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %outline_glyph1 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %7, i32 0, i32 2
  %8 = load %struct.FT_OutlineGlyphRec_*, %struct.FT_OutlineGlyphRec_** %outline_glyph1, align 8, !tbaa !35
  %outline = getelementptr inbounds %struct.FT_OutlineGlyphRec_, %struct.FT_OutlineGlyphRec_* %8, i32 0, i32 1
  %call = call i32 @FT_Outline_Done(%struct.FT_LibraryRec_* %6, %struct.FT_Outline_* %outline) #5
  %9 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %ftmemory = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %9, i32 0, i32 5
  %10 = load %struct.FT_MemoryRec_*, %struct.FT_MemoryRec_** %ftmemory, align 8, !tbaa !25
  %11 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %outline_glyph2 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %11, i32 0, i32 2
  %12 = load %struct.FT_OutlineGlyphRec_*, %struct.FT_OutlineGlyphRec_** %outline_glyph2, align 8, !tbaa !35
  %13 = bitcast %struct.FT_OutlineGlyphRec_* %12 to i8*
  call void @FF_free(%struct.FT_MemoryRec_* %10, i8* %13) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %bitmap_glyph = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %14, i32 0, i32 3
  %15 = load %struct.FT_BitmapGlyphRec_*, %struct.FT_BitmapGlyphRec_** %bitmap_glyph, align 8, !tbaa !34
  %tobool3 = icmp ne %struct.FT_BitmapGlyphRec_* %15, null
  br i1 %tobool3, label %if.then.4, label %if.end.10

if.then.4:                                        ; preds = %if.end
  %16 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %freetype_library5 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %16, i32 0, i32 1
  %17 = load %struct.FT_LibraryRec_*, %struct.FT_LibraryRec_** %freetype_library5, align 8, !tbaa !26
  %18 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %bitmap_glyph6 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %18, i32 0, i32 3
  %19 = load %struct.FT_BitmapGlyphRec_*, %struct.FT_BitmapGlyphRec_** %bitmap_glyph6, align 8, !tbaa !34
  %bitmap = getelementptr inbounds %struct.FT_BitmapGlyphRec_, %struct.FT_BitmapGlyphRec_* %19, i32 0, i32 3
  %call7 = call i32 @FT_Bitmap_Done(%struct.FT_LibraryRec_* %17, %struct.FT_Bitmap_* %bitmap) #5
  %20 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %ftmemory8 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %20, i32 0, i32 5
  %21 = load %struct.FT_MemoryRec_*, %struct.FT_MemoryRec_** %ftmemory8, align 8, !tbaa !25
  %22 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %bitmap_glyph9 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %22, i32 0, i32 3
  %23 = load %struct.FT_BitmapGlyphRec_*, %struct.FT_BitmapGlyphRec_** %bitmap_glyph9, align 8, !tbaa !34
  %24 = bitcast %struct.FT_BitmapGlyphRec_* %23 to i8*
  call void @FF_free(%struct.FT_MemoryRec_* %21, i8* %24) #5
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.4, %if.end
  %25 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %outline_glyph11 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %25, i32 0, i32 2
  store %struct.FT_OutlineGlyphRec_* null, %struct.FT_OutlineGlyphRec_** %outline_glyph11, align 8, !tbaa !35
  %26 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %bitmap_glyph12 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %26, i32 0, i32 3
  store %struct.FT_BitmapGlyphRec_* null, %struct.FT_BitmapGlyphRec_** %bitmap_glyph12, align 8, !tbaa !34
  %27 = bitcast %struct.ff_server_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @gs_fapi_ft_release_typeface(%struct.gs_fapi_server_s* %a_server, i8* %a_server_font_data) #0 {
entry:
  %a_server.addr = alloca %struct.gs_fapi_server_s*, align 8
  %a_server_font_data.addr = alloca i8*, align 8
  %face = alloca %struct.ff_face_s*, align 8
  store %struct.gs_fapi_server_s* %a_server, %struct.gs_fapi_server_s** %a_server.addr, align 8, !tbaa !1
  store i8* %a_server_font_data, i8** %a_server_font_data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ff_face_s** %face to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %a_server_font_data.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.ff_face_s*
  store %struct.ff_face_s* %2, %struct.ff_face_s** %face, align 8, !tbaa !1
  %3 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %a_server.addr, align 8, !tbaa !1
  %4 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  call void @delete_face(%struct.gs_fapi_server_s* %3, %struct.ff_face_s* %4) #5
  %5 = bitcast %struct.ff_face_s** %face to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @gs_fapi_ft_check_cmap_for_GID(%struct.gs_fapi_server_s* %server, i32* %index) #0 {
entry:
  %server.addr = alloca %struct.gs_fapi_server_s*, align 8
  %index.addr = alloca i32*, align 8
  %face = alloca %struct.ff_face_s*, align 8
  %ft_face = alloca %struct.FT_FaceRec_*, align 8
  store %struct.gs_fapi_server_s* %server, %struct.gs_fapi_server_s** %server.addr, align 8, !tbaa !1
  store i32* %index, i32** %index.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ff_face_s** %face to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %server.addr, align 8, !tbaa !1
  %ff = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %1, i32 0, i32 4
  %server_font_data = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %ff, i32 0, i32 0
  %2 = load i8*, i8** %server_font_data, align 8, !tbaa !127
  %3 = bitcast i8* %2 to %struct.ff_face_s*
  store %struct.ff_face_s* %3, %struct.ff_face_s** %face, align 8, !tbaa !1
  %4 = bitcast %struct.FT_FaceRec_** %ft_face to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %ft_face1 = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %5, i32 0, i32 0
  %6 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face1, align 8, !tbaa !65
  store %struct.FT_FaceRec_* %6, %struct.FT_FaceRec_** %ft_face, align 8, !tbaa !1
  %7 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8, !tbaa !1
  %8 = load i32*, i32** %index.addr, align 8, !tbaa !1
  %9 = load i32, i32* %8, align 4, !tbaa !5
  %conv = zext i32 %9 to i64
  %call = call i32 @FT_Get_Char_Index(%struct.FT_FaceRec_* %7, i64 %conv) #5
  %10 = load i32*, i32** %index.addr, align 8, !tbaa !1
  store i32 %call, i32* %10, align 4, !tbaa !5
  %11 = bitcast %struct.FT_FaceRec_** %ft_face to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  %12 = bitcast %struct.ff_face_s** %face to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @gs_fapi_freetype_destroy(%struct.gs_fapi_server_s** %serv) #0 {
entry:
  %serv.addr = alloca %struct.gs_fapi_server_s**, align 8
  %server = alloca %struct.ff_server_s*, align 8
  %cmem = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_fapi_server_s** %serv, %struct.gs_fapi_server_s*** %serv.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ff_server_s** %server to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_fapi_server_s**, %struct.gs_fapi_server_s*** %serv.addr, align 8, !tbaa !1
  %2 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %1, align 8, !tbaa !1
  %3 = bitcast %struct.gs_fapi_server_s* %2 to %struct.ff_server_s*
  store %struct.ff_server_s* %3, %struct.ff_server_s** %server, align 8, !tbaa !1
  %4 = bitcast %struct.gs_memory_s** %cmem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.ff_server_s*, %struct.ff_server_s** %server, align 8, !tbaa !1
  %mem = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %5, i32 0, i32 4
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !10
  store %struct.gs_memory_s* %6, %struct.gs_memory_s** %cmem, align 8, !tbaa !1
  %7 = load %struct.ff_server_s*, %struct.ff_server_s** %server, align 8, !tbaa !1
  %outline_glyph = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %7, i32 0, i32 2
  %8 = load %struct.FT_OutlineGlyphRec_*, %struct.FT_OutlineGlyphRec_** %outline_glyph, align 8, !tbaa !35
  %root = getelementptr inbounds %struct.FT_OutlineGlyphRec_, %struct.FT_OutlineGlyphRec_* %8, i32 0, i32 0
  call void @FT_Done_Glyph(%struct.FT_GlyphRec_* %root) #5
  %9 = load %struct.ff_server_s*, %struct.ff_server_s** %server, align 8, !tbaa !1
  %bitmap_glyph = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %9, i32 0, i32 3
  %10 = load %struct.FT_BitmapGlyphRec_*, %struct.FT_BitmapGlyphRec_** %bitmap_glyph, align 8, !tbaa !34
  %root1 = getelementptr inbounds %struct.FT_BitmapGlyphRec_, %struct.FT_BitmapGlyphRec_* %10, i32 0, i32 0
  call void @FT_Done_Glyph(%struct.FT_GlyphRec_* %root1) #5
  %11 = load %struct.ff_server_s*, %struct.ff_server_s** %server, align 8, !tbaa !1
  %freetype_library = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %11, i32 0, i32 1
  %12 = load %struct.FT_LibraryRec_*, %struct.FT_LibraryRec_** %freetype_library, align 8, !tbaa !26
  %call = call i32 @FT_Done_Library(%struct.FT_LibraryRec_* %12) #5
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %cmem, align 8, !tbaa !1
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %13, i32 0, i32 3
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !31
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %14, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %15 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !32
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %cmem, align 8, !tbaa !1
  %non_gc_memory2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %16, i32 0, i32 3
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory2, align 8, !tbaa !31
  %18 = load %struct.gs_fapi_server_s**, %struct.gs_fapi_server_s*** %serv.addr, align 8, !tbaa !1
  %19 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %18, align 8, !tbaa !1
  %20 = bitcast %struct.gs_fapi_server_s* %19 to i8*
  call void %15(%struct.gs_memory_s* %17, i8* %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0)) #5
  %21 = load %struct.gs_fapi_server_s**, %struct.gs_fapi_server_s*** %serv.addr, align 8, !tbaa !1
  store %struct.gs_fapi_server_s* null, %struct.gs_fapi_server_s** %21, align 8, !tbaa !1
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %cmem, align 8, !tbaa !1
  call void @gs_memory_chunk_release(%struct.gs_memory_s* %22) #5
  %23 = bitcast %struct.gs_memory_s** %cmem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast %struct.ff_server_s** %server to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  ret void
}

declare void @FT_Done_Glyph(%struct.FT_GlyphRec_*) #2

declare i32 @FT_Done_Library(%struct.FT_LibraryRec_*) #2

declare void @gs_memory_chunk_release(%struct.gs_memory_s*) #2

; Function Attrs: nounwind uwtable
define internal i8* @FF_alloc(%struct.FT_MemoryRec_* %memory, i64 %size) #0 {
entry:
  %memory.addr = alloca %struct.FT_MemoryRec_*, align 8
  %size.addr = alloca i64, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  store %struct.FT_MemoryRec_* %memory, %struct.FT_MemoryRec_** %memory.addr, align 8, !tbaa !1
  store i64 %size, i64* %size.addr, align 8, !tbaa !22
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.FT_MemoryRec_*, %struct.FT_MemoryRec_** %memory.addr, align 8, !tbaa !1
  %user = getelementptr inbounds %struct.FT_MemoryRec_, %struct.FT_MemoryRec_* %1, i32 0, i32 0
  %2 = load i8*, i8** %user, align 8, !tbaa !27
  %3 = bitcast i8* %2 to %struct.gs_memory_s*
  store %struct.gs_memory_s* %3, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 3
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !31
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %5, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %6 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !40
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %non_gc_memory1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 3
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory1, align 8, !tbaa !31
  %9 = load i64, i64* %size.addr, align 8, !tbaa !22
  %conv = trunc i64 %9 to i32
  %call = call i8* %6(%struct.gs_memory_s* %8, i32 %conv, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0)) #5
  %10 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal void @FF_free(%struct.FT_MemoryRec_* %memory, i8* %block) #0 {
entry:
  %memory.addr = alloca %struct.FT_MemoryRec_*, align 8
  %block.addr = alloca i8*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  store %struct.FT_MemoryRec_* %memory, %struct.FT_MemoryRec_** %memory.addr, align 8, !tbaa !1
  store i8* %block, i8** %block.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.FT_MemoryRec_*, %struct.FT_MemoryRec_** %memory.addr, align 8, !tbaa !1
  %user = getelementptr inbounds %struct.FT_MemoryRec_, %struct.FT_MemoryRec_* %1, i32 0, i32 0
  %2 = load i8*, i8** %user, align 8, !tbaa !27
  %3 = bitcast i8* %2 to %struct.gs_memory_s*
  store %struct.gs_memory_s* %3, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 3
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !31
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %5, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %6 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !32
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %non_gc_memory1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 3
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory1, align 8, !tbaa !31
  %9 = load i8*, i8** %block.addr, align 8, !tbaa !1
  call void %6(%struct.gs_memory_s* %8, i8* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0)) #5
  %10 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @FF_realloc(%struct.FT_MemoryRec_* %memory, i64 %cur_size, i64 %new_size, i8* %block) #0 {
entry:
  %retval = alloca i8*, align 8
  %memory.addr = alloca %struct.FT_MemoryRec_*, align 8
  %cur_size.addr = alloca i64, align 8
  %new_size.addr = alloca i64, align 8
  %block.addr = alloca i8*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %tmp = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.FT_MemoryRec_* %memory, %struct.FT_MemoryRec_** %memory.addr, align 8, !tbaa !1
  store i64 %cur_size, i64* %cur_size.addr, align 8, !tbaa !22
  store i64 %new_size, i64* %new_size.addr, align 8, !tbaa !22
  store i8* %block, i8** %block.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.FT_MemoryRec_*, %struct.FT_MemoryRec_** %memory.addr, align 8, !tbaa !1
  %user = getelementptr inbounds %struct.FT_MemoryRec_, %struct.FT_MemoryRec_* %1, i32 0, i32 0
  %2 = load i8*, i8** %user, align 8, !tbaa !27
  %3 = bitcast i8* %2 to %struct.gs_memory_s*
  store %struct.gs_memory_s* %3, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %4 = bitcast i8** %tmp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i64, i64* %cur_size.addr, align 8, !tbaa !22
  %6 = load i64, i64* %new_size.addr, align 8, !tbaa !22
  %cmp = icmp eq i64 %5, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** %block.addr, align 8, !tbaa !1
  store i8* %7, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 3
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !31
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %9, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %10 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !40
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %non_gc_memory1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %11, i32 0, i32 3
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory1, align 8, !tbaa !31
  %13 = load i64, i64* %new_size.addr, align 8, !tbaa !22
  %conv = trunc i64 %13 to i32
  %call = call i8* %10(%struct.gs_memory_s* %12, i32 %conv, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0)) #5
  store i8* %call, i8** %tmp, align 8, !tbaa !1
  %14 = load i8*, i8** %tmp, align 8, !tbaa !1
  %tobool = icmp ne i8* %14, null
  br i1 %tobool, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %if.end
  %15 = load i8*, i8** %block.addr, align 8, !tbaa !1
  %tobool2 = icmp ne i8* %15, null
  br i1 %tobool2, label %if.then.3, label %if.end.10

if.then.3:                                        ; preds = %land.lhs.true
  %16 = load i8*, i8** %tmp, align 8, !tbaa !1
  %17 = load i8*, i8** %block.addr, align 8, !tbaa !1
  %18 = load i64, i64* %cur_size.addr, align 8, !tbaa !22
  %19 = load i64, i64* %new_size.addr, align 8, !tbaa !22
  %cmp4 = icmp slt i64 %18, %19
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.3
  %20 = load i64, i64* %cur_size.addr, align 8, !tbaa !22
  br label %cond.end

cond.false:                                       ; preds = %if.then.3
  %21 = load i64, i64* %new_size.addr, align 8, !tbaa !22
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %20, %cond.true ], [ %21, %cond.false ]
  %call6 = call i8* @memcpy(i8* %16, i8* %17, i64 %cond) #6
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %non_gc_memory7 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %22, i32 0, i32 3
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory7, align 8, !tbaa !31
  %procs8 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %23, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs8, i32 0, i32 2
  %24 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !32
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %non_gc_memory9 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %25, i32 0, i32 3
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory9, align 8, !tbaa !31
  %27 = load i8*, i8** %block.addr, align 8, !tbaa !1
  call void %24(%struct.gs_memory_s* %26, i8* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0)) #5
  br label %if.end.10

if.end.10:                                        ; preds = %cond.end, %land.lhs.true, %if.end
  %28 = load i8*, i8** %tmp, align 8, !tbaa !1
  store i8* %28, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.10, %if.then
  %29 = bitcast i8** %tmp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = load i8*, i8** %retval
  ret i8* %31
}

declare i32 @FT_New_Library(%struct.FT_MemoryRec_*, %struct.FT_LibraryRec_**) #2

declare void @FT_Add_Default_Modules(%struct.FT_LibraryRec_*) #2

; Function Attrs: nounwind uwtable
define internal i32 @ft_to_gs_error(i32 %a_error) #0 {
entry:
  %retval = alloca i32, align 4
  %a_error.addr = alloca i32, align 4
  store i32 %a_error, i32* %a_error.addr, align 4, !tbaa !5
  %0 = load i32, i32* %a_error.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %a_error.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %1, 64
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  store i32 -25, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.else, %if.then.1
  %2 = load i32, i32* %retval
  ret i32 %2
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

declare i32 @FT_Bitmap_Done(%struct.FT_LibraryRec_*, %struct.FT_Bitmap_*) #2

declare i32 @FT_Outline_Done(%struct.FT_LibraryRec_*, %struct.FT_Outline_*) #2

declare i32 @FT_New_Memory_Face(%struct.FT_LibraryRec_*, i8*, i64, i64, %struct.FT_FaceRec_**) #2

declare i32 @FT_Select_Charmap(%struct.FT_FaceRec_*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @FF_open_read_stream(%struct.gs_memory_s* %mem, i8* %fname, %struct.FT_StreamRec_** %fts) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %fname.addr = alloca i8*, align 8
  %fts.addr = alloca %struct.FT_StreamRec_**, align 8
  %code = alloca i32, align 4
  %pfn = alloca %struct.gs_parsed_file_name_s, align 8
  %ps = alloca %struct.stream_s*, align 8
  %length = alloca i64, align 8
  %ftstrm = alloca %struct.FT_StreamRec_*, align 8
  %iodev15 = alloca %struct.gx_io_device_s*, align 8
  %open_file = alloca i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %fname, i8** %fname.addr, align 8, !tbaa !1
  store %struct.FT_StreamRec_** %fts, %struct.FT_StreamRec_*** %fts.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %1 = bitcast %struct.gs_parsed_file_name_s* %pfn to i8*
  call void @llvm.lifetime.start(i64 32, i8* %1) #1
  %2 = bitcast %struct.stream_s** %ps to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store %struct.stream_s* null, %struct.stream_s** %ps, align 8, !tbaa !1
  %3 = bitcast i64* %length to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.FT_StreamRec_** %ftstrm to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store %struct.FT_StreamRec_* null, %struct.FT_StreamRec_** %ftstrm, align 8, !tbaa !1
  %5 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %fname.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %6) #7
  %conv = trunc i64 %call to i32
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call1 = call i32 @gs_parse_file_name(%struct.gs_parsed_file_name_s* %pfn, i8* %5, i32 %conv, %struct.gs_memory_s* %7) #5
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %8 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %error_out

if.end:                                           ; preds = %entry
  %fname3 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pfn, i32 0, i32 2
  %9 = load i8*, i8** %fname3, align 8, !tbaa !128
  %tobool = icmp ne i8* %9, null
  br i1 %tobool, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  store i32 -22, i32* %code, align 4, !tbaa !5
  br label %error_out

if.end.5:                                         ; preds = %if.end
  %iodev = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pfn, i32 0, i32 1
  %10 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev, align 8, !tbaa !130
  %cmp6 = icmp eq %struct.gx_io_device_s* %10, null
  br i1 %cmp6, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.end.5
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call9 = call %struct.gx_io_device_s* @gs_getiodevice(%struct.gs_memory_s* %11, i32 0) #5
  %iodev10 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pfn, i32 0, i32 1
  store %struct.gx_io_device_s* %call9, %struct.gx_io_device_s** %iodev10, align 8, !tbaa !130
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %if.end.5
  %iodev12 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pfn, i32 0, i32 1
  %12 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev12, align 8, !tbaa !130
  %tobool13 = icmp ne %struct.gx_io_device_s* %12, null
  br i1 %tobool13, label %if.then.14, label %if.end.38

if.then.14:                                       ; preds = %if.end.11
  %13 = bitcast %struct.gx_io_device_s** %iodev15 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %iodev16 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pfn, i32 0, i32 1
  %14 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev16, align 8, !tbaa !130
  store %struct.gx_io_device_s* %14, %struct.gx_io_device_s** %iodev15, align 8, !tbaa !1
  %15 = bitcast i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)** %open_file to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev15, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %16, i32 0, i32 2
  %open_file17 = getelementptr inbounds %struct.gx_io_device_procs_s, %struct.gx_io_device_procs_s* %procs, i32 0, i32 2
  %17 = load i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)** %open_file17, align 8, !tbaa !131
  store i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)* %17, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)** %open_file, align 8, !tbaa !1
  %18 = load i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)** %open_file, align 8, !tbaa !1
  %tobool18 = icmp ne i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)* %18, null
  br i1 %tobool18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.then.14
  %19 = load i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)** %open_file, align 8, !tbaa !1
  %20 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev15, align 8, !tbaa !1
  %fname20 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pfn, i32 0, i32 2
  %21 = load i8*, i8** %fname20, align 8, !tbaa !128
  %len = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pfn, i32 0, i32 3
  %22 = load i32, i32* %len, align 4, !tbaa !134
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call21 = call i32 %19(%struct.gx_io_device_s* %20, i8* %21, i32 %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), %struct.stream_s** %ps, %struct.gs_memory_s* %23) #5
  store i32 %call21, i32* %code, align 4, !tbaa !5
  %24 = load i32, i32* %code, align 4, !tbaa !5
  %cmp22 = icmp slt i32 %24, 0
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.then.19
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %if.then.19
  br label %if.end.36

if.else:                                          ; preds = %if.then.14
  %fname26 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pfn, i32 0, i32 2
  %25 = load i8*, i8** %fname26, align 8, !tbaa !128
  %len27 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pfn, i32 0, i32 3
  %26 = load i32, i32* %len27, align 4, !tbaa !134
  %27 = load i32, i32* @file_default_buffer_size, align 4, !tbaa !5
  %iodev28 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pfn, i32 0, i32 1
  %28 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev28, align 8, !tbaa !130
  %iodev29 = getelementptr inbounds %struct.gs_parsed_file_name_s, %struct.gs_parsed_file_name_s* %pfn, i32 0, i32 1
  %29 = load %struct.gx_io_device_s*, %struct.gx_io_device_s** %iodev29, align 8, !tbaa !130
  %procs30 = getelementptr inbounds %struct.gx_io_device_s, %struct.gx_io_device_s* %29, i32 0, i32 2
  %gp_fopen = getelementptr inbounds %struct.gx_io_device_procs_s, %struct.gx_io_device_procs_s* %procs30, i32 0, i32 3
  %30 = load i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)** %gp_fopen, align 8, !tbaa !135
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call31 = call i32 @file_open_stream(i8* %25, i32 %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), i32 %27, %struct.stream_s** %ps, %struct.gx_io_device_s* %28, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)* %30, %struct.gs_memory_s* %31) #5
  store i32 %call31, i32* %code, align 4, !tbaa !5
  %32 = load i32, i32* %code, align 4, !tbaa !5
  %cmp32 = icmp slt i32 %32, 0
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.else
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.35:                                        ; preds = %if.else
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.end.25
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.34, %if.then.24, %if.end.36
  %33 = bitcast i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)** %open_file to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = bitcast %struct.gx_io_device_s** %iodev15 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.65 [
    i32 0, label %cleanup.cont
    i32 2, label %error_out
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.38

if.end.38:                                        ; preds = %cleanup.cont, %if.end.11
  %35 = load %struct.stream_s*, %struct.stream_s** %ps, align 8, !tbaa !1
  %call39 = call i32 @savailable(%struct.stream_s* %35, i64* %length) #5
  store i32 %call39, i32* %code, align 4, !tbaa !5
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.38
  br label %error_out

if.end.43:                                        ; preds = %if.end.38
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %36, i32 0, i32 3
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !31
  %procs44 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %37, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs44, i32 0, i32 10
  %38 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !40
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory45 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %39, i32 0, i32 3
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory45, align 8, !tbaa !31
  %call46 = call i8* %38(%struct.gs_memory_s* %40, i32 80, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0)) #5
  %41 = bitcast i8* %call46 to %struct.FT_StreamRec_*
  store %struct.FT_StreamRec_* %41, %struct.FT_StreamRec_** %ftstrm, align 8, !tbaa !1
  %42 = load %struct.FT_StreamRec_*, %struct.FT_StreamRec_** %ftstrm, align 8, !tbaa !1
  %tobool47 = icmp ne %struct.FT_StreamRec_* %42, null
  br i1 %tobool47, label %if.end.49, label %if.then.48

if.then.48:                                       ; preds = %if.end.43
  store i32 -25, i32* %code, align 4, !tbaa !5
  br label %error_out

if.end.49:                                        ; preds = %if.end.43
  %43 = load %struct.FT_StreamRec_*, %struct.FT_StreamRec_** %ftstrm, align 8, !tbaa !1
  %44 = bitcast %struct.FT_StreamRec_* %43 to i8*
  %call50 = call i8* @memset(i8* %44, i32 0, i64 80) #6
  %45 = load %struct.stream_s*, %struct.stream_s** %ps, align 8, !tbaa !1
  %46 = bitcast %struct.stream_s* %45 to i8*
  %47 = load %struct.FT_StreamRec_*, %struct.FT_StreamRec_** %ftstrm, align 8, !tbaa !1
  %descriptor = getelementptr inbounds %struct.FT_StreamRec_, %struct.FT_StreamRec_* %47, i32 0, i32 3
  %pointer = bitcast %union.FT_StreamDesc_* %descriptor to i8**
  store i8* %46, i8** %pointer, align 8, !tbaa !1
  %48 = load %struct.FT_StreamRec_*, %struct.FT_StreamRec_** %ftstrm, align 8, !tbaa !1
  %read = getelementptr inbounds %struct.FT_StreamRec_, %struct.FT_StreamRec_* %48, i32 0, i32 5
  store i64 (%struct.FT_StreamRec_*, i64, i8*, i64)* @FF_stream_read, i64 (%struct.FT_StreamRec_*, i64, i8*, i64)** %read, align 8, !tbaa !136
  %49 = load %struct.FT_StreamRec_*, %struct.FT_StreamRec_** %ftstrm, align 8, !tbaa !1
  %close = getelementptr inbounds %struct.FT_StreamRec_, %struct.FT_StreamRec_* %49, i32 0, i32 6
  store void (%struct.FT_StreamRec_*)* @FF_stream_close, void (%struct.FT_StreamRec_*)** %close, align 8, !tbaa !138
  %50 = load i64, i64* %length, align 8, !tbaa !22
  %51 = load %struct.FT_StreamRec_*, %struct.FT_StreamRec_** %ftstrm, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.FT_StreamRec_, %struct.FT_StreamRec_* %51, i32 0, i32 1
  store i64 %50, i64* %size, align 8, !tbaa !139
  %52 = load %struct.FT_StreamRec_*, %struct.FT_StreamRec_** %ftstrm, align 8, !tbaa !1
  %53 = load %struct.FT_StreamRec_**, %struct.FT_StreamRec_*** %fts.addr, align 8, !tbaa !1
  store %struct.FT_StreamRec_* %52, %struct.FT_StreamRec_** %53, align 8, !tbaa !1
  br label %error_out

error_out:                                        ; preds = %if.end.49, %cleanup, %if.then.48, %if.then.42, %if.then.4, %if.then
  %54 = load i32, i32* %code, align 4, !tbaa !5
  %cmp51 = icmp slt i32 %54, 0
  br i1 %cmp51, label %if.then.53, label %if.end.64

if.then.53:                                       ; preds = %error_out
  %55 = load %struct.stream_s*, %struct.stream_s** %ps, align 8, !tbaa !1
  %tobool54 = icmp ne %struct.stream_s* %55, null
  br i1 %tobool54, label %if.then.55, label %if.end.57

if.then.55:                                       ; preds = %if.then.53
  %56 = load %struct.stream_s*, %struct.stream_s** %ps, align 8, !tbaa !1
  %call56 = call i32 @sclose(%struct.stream_s* %56) #5
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.55, %if.then.53
  %57 = load %struct.FT_StreamRec_*, %struct.FT_StreamRec_** %ftstrm, align 8, !tbaa !1
  %tobool58 = icmp ne %struct.FT_StreamRec_* %57, null
  br i1 %tobool58, label %if.then.59, label %if.end.63

if.then.59:                                       ; preds = %if.end.57
  %58 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory60 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %58, i32 0, i32 3
  %59 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory60, align 8, !tbaa !31
  %procs61 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %59, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs61, i32 0, i32 2
  %60 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !32
  %61 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %non_gc_memory62 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %61, i32 0, i32 3
  %62 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory62, align 8, !tbaa !31
  %63 = load %struct.FT_StreamRec_*, %struct.FT_StreamRec_** %ftstrm, align 8, !tbaa !1
  %64 = bitcast %struct.FT_StreamRec_* %63 to i8*
  call void %60(%struct.gs_memory_s* %62, i8* %64, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0)) #5
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.59, %if.end.57
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %error_out
  %65 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %65, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.65

cleanup.65:                                       ; preds = %if.end.64, %cleanup
  %66 = bitcast %struct.FT_StreamRec_** %ftstrm to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = bitcast i64* %length to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = bitcast %struct.stream_s** %ps to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  %69 = bitcast %struct.gs_parsed_file_name_s* %pfn to i8*
  call void @llvm.lifetime.end(i64 32, i8* %69) #1
  %70 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  %71 = load i32, i32* %retval
  ret i32 %71
}

declare i32 @FT_Open_Face(%struct.FT_LibraryRec_*, %struct.FT_Open_Args_*, i64, %struct.FT_FaceRec_**) #2

declare i64 @gs_fapi_serialize_type1_font(%struct.gs_fapi_font_s*, i8*, i64) #2

declare i64 @gs_fapi_serialize_type2_font(%struct.gs_fapi_font_s*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal %struct.FT_Incremental_InterfaceRec_* @new_inc_int(%struct.gs_fapi_server_s* %a_server, %struct.gs_fapi_font_s* %a_fapi_font) #0 {
entry:
  %a_server.addr = alloca %struct.gs_fapi_server_s*, align 8
  %a_fapi_font.addr = alloca %struct.gs_fapi_font_s*, align 8
  %s = alloca %struct.ff_server_s*, align 8
  %i = alloca %struct.FT_Incremental_InterfaceRec_*, align 8
  store %struct.gs_fapi_server_s* %a_server, %struct.gs_fapi_server_s** %a_server.addr, align 8, !tbaa !1
  store %struct.gs_fapi_font_s* %a_fapi_font, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ff_server_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %a_server.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_fapi_server_s* %1 to %struct.ff_server_s*
  store %struct.ff_server_s* %2, %struct.ff_server_s** %s, align 8, !tbaa !1
  %3 = bitcast %struct.FT_Incremental_InterfaceRec_** %i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %ftmemory = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %4, i32 0, i32 5
  %5 = load %struct.FT_MemoryRec_*, %struct.FT_MemoryRec_** %ftmemory, align 8, !tbaa !25
  %call = call i8* @FF_alloc(%struct.FT_MemoryRec_* %5, i64 16) #5
  %6 = bitcast i8* %call to %struct.FT_Incremental_InterfaceRec_*
  store %struct.FT_Incremental_InterfaceRec_* %6, %struct.FT_Incremental_InterfaceRec_** %i, align 8, !tbaa !1
  %7 = load %struct.FT_Incremental_InterfaceRec_*, %struct.FT_Incremental_InterfaceRec_** %i, align 8, !tbaa !1
  %tobool = icmp ne %struct.FT_Incremental_InterfaceRec_* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %a_server.addr, align 8, !tbaa !1
  %9 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %call1 = call %struct.FT_IncrementalRec_* @new_inc_int_info(%struct.gs_fapi_server_s* %8, %struct.gs_fapi_font_s* %9) #5
  %10 = load %struct.FT_Incremental_InterfaceRec_*, %struct.FT_Incremental_InterfaceRec_** %i, align 8, !tbaa !1
  %object = getelementptr inbounds %struct.FT_Incremental_InterfaceRec_, %struct.FT_Incremental_InterfaceRec_* %10, i32 0, i32 1
  store %struct.FT_IncrementalRec_* %call1, %struct.FT_IncrementalRec_** %object, align 8, !tbaa !140
  %11 = load %struct.FT_Incremental_InterfaceRec_*, %struct.FT_Incremental_InterfaceRec_** %i, align 8, !tbaa !1
  %funcs = getelementptr inbounds %struct.FT_Incremental_InterfaceRec_, %struct.FT_Incremental_InterfaceRec_* %11, i32 0, i32 0
  store %struct.FT_Incremental_FuncsRec_* @TheFAPIIncrementalInterfaceFuncs, %struct.FT_Incremental_FuncsRec_** %funcs, align 8, !tbaa !142
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct.FT_Incremental_InterfaceRec_*, %struct.FT_Incremental_InterfaceRec_** %i, align 8, !tbaa !1
  %object2 = getelementptr inbounds %struct.FT_Incremental_InterfaceRec_, %struct.FT_Incremental_InterfaceRec_* %12, i32 0, i32 1
  %13 = load %struct.FT_IncrementalRec_*, %struct.FT_IncrementalRec_** %object2, align 8, !tbaa !140
  %tobool3 = icmp ne %struct.FT_IncrementalRec_* %13, null
  br i1 %tobool3, label %if.end.6, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %14 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %ftmemory5 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %14, i32 0, i32 5
  %15 = load %struct.FT_MemoryRec_*, %struct.FT_MemoryRec_** %ftmemory5, align 8, !tbaa !25
  %16 = load %struct.FT_Incremental_InterfaceRec_*, %struct.FT_Incremental_InterfaceRec_** %i, align 8, !tbaa !1
  %17 = bitcast %struct.FT_Incremental_InterfaceRec_* %16 to i8*
  call void @FF_free(%struct.FT_MemoryRec_* %15, i8* %17) #5
  store %struct.FT_Incremental_InterfaceRec_* null, %struct.FT_Incremental_InterfaceRec_** %i, align 8, !tbaa !1
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %18 = load %struct.FT_Incremental_InterfaceRec_*, %struct.FT_Incremental_InterfaceRec_** %i, align 8, !tbaa !1
  %19 = bitcast %struct.FT_Incremental_InterfaceRec_** %i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %20 = bitcast %struct.ff_server_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  ret %struct.FT_Incremental_InterfaceRec_* %18
}

; Function Attrs: nounwind uwtable
define internal %struct.ff_face_s* @new_face(%struct.gs_fapi_server_s* %a_server, %struct.FT_FaceRec_* %a_ft_face, %struct.FT_Incremental_InterfaceRec_* %a_ft_inc_int, %struct.FT_StreamRec_* %ftstrm, i8* %a_font_data, i32 %a_font_data_len, i32 %data_owned) #0 {
entry:
  %a_server.addr = alloca %struct.gs_fapi_server_s*, align 8
  %a_ft_face.addr = alloca %struct.FT_FaceRec_*, align 8
  %a_ft_inc_int.addr = alloca %struct.FT_Incremental_InterfaceRec_*, align 8
  %ftstrm.addr = alloca %struct.FT_StreamRec_*, align 8
  %a_font_data.addr = alloca i8*, align 8
  %a_font_data_len.addr = alloca i32, align 4
  %data_owned.addr = alloca i32, align 4
  %s = alloca %struct.ff_server_s*, align 8
  %face = alloca %struct.ff_face_s*, align 8
  store %struct.gs_fapi_server_s* %a_server, %struct.gs_fapi_server_s** %a_server.addr, align 8, !tbaa !1
  store %struct.FT_FaceRec_* %a_ft_face, %struct.FT_FaceRec_** %a_ft_face.addr, align 8, !tbaa !1
  store %struct.FT_Incremental_InterfaceRec_* %a_ft_inc_int, %struct.FT_Incremental_InterfaceRec_** %a_ft_inc_int.addr, align 8, !tbaa !1
  store %struct.FT_StreamRec_* %ftstrm, %struct.FT_StreamRec_** %ftstrm.addr, align 8, !tbaa !1
  store i8* %a_font_data, i8** %a_font_data.addr, align 8, !tbaa !1
  store i32 %a_font_data_len, i32* %a_font_data_len.addr, align 4, !tbaa !5
  store i32 %data_owned, i32* %data_owned.addr, align 4, !tbaa !5
  %0 = bitcast %struct.ff_server_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %a_server.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_fapi_server_s* %1 to %struct.ff_server_s*
  store %struct.ff_server_s* %2, %struct.ff_server_s** %s, align 8, !tbaa !1
  %3 = bitcast %struct.ff_face_s** %face to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %ftmemory = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %4, i32 0, i32 5
  %5 = load %struct.FT_MemoryRec_*, %struct.FT_MemoryRec_** %ftmemory, align 8, !tbaa !25
  %call = call i8* @FF_alloc(%struct.FT_MemoryRec_* %5, i64 104) #5
  %6 = bitcast i8* %call to %struct.ff_face_s*
  store %struct.ff_face_s* %6, %struct.ff_face_s** %face, align 8, !tbaa !1
  %7 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %tobool = icmp ne %struct.ff_face_s* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %a_ft_face.addr, align 8, !tbaa !1
  %9 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %ft_face = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %9, i32 0, i32 0
  store %struct.FT_FaceRec_* %8, %struct.FT_FaceRec_** %ft_face, align 8, !tbaa !65
  %10 = load %struct.FT_Incremental_InterfaceRec_*, %struct.FT_Incremental_InterfaceRec_** %a_ft_inc_int.addr, align 8, !tbaa !1
  %11 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %ft_inc_int = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %11, i32 0, i32 6
  store %struct.FT_Incremental_InterfaceRec_* %10, %struct.FT_Incremental_InterfaceRec_** %ft_inc_int, align 8, !tbaa !143
  %12 = load i8*, i8** %a_font_data.addr, align 8, !tbaa !1
  %13 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %font_data = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %13, i32 0, i32 8
  store i8* %12, i8** %font_data, align 8, !tbaa !144
  %14 = load i32, i32* %a_font_data_len.addr, align 4, !tbaa !5
  %15 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %font_data_len = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %15, i32 0, i32 9
  store i32 %14, i32* %font_data_len, align 4, !tbaa !145
  %16 = load i32, i32* %data_owned.addr, align 4, !tbaa !5
  %17 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %data_owned1 = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %17, i32 0, i32 10
  store i32 %16, i32* %data_owned1, align 4, !tbaa !146
  %18 = load %struct.FT_StreamRec_*, %struct.FT_StreamRec_** %ftstrm.addr, align 8, !tbaa !1
  %19 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %ftstrm2 = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %19, i32 0, i32 7
  store %struct.FT_StreamRec_* %18, %struct.FT_StreamRec_** %ftstrm2, align 8, !tbaa !147
  %20 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %a_server.addr, align 8, !tbaa !1
  %21 = bitcast %struct.gs_fapi_server_s* %20 to %struct.ff_server_s*
  %22 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %server = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %22, i32 0, i32 11
  store %struct.ff_server_s* %21, %struct.ff_server_s** %server, align 8, !tbaa !148
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %23 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %24 = bitcast %struct.ff_face_s** %face to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast %struct.ff_server_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  ret %struct.ff_face_s* %23
}

declare i32 @FT_Done_Face(%struct.FT_FaceRec_*) #2

; Function Attrs: nounwind uwtable
define internal void @delete_inc_int(%struct.gs_fapi_server_s* %a_server, %struct.FT_Incremental_InterfaceRec_* %a_inc_int) #0 {
entry:
  %a_server.addr = alloca %struct.gs_fapi_server_s*, align 8
  %a_inc_int.addr = alloca %struct.FT_Incremental_InterfaceRec_*, align 8
  %s = alloca %struct.ff_server_s*, align 8
  store %struct.gs_fapi_server_s* %a_server, %struct.gs_fapi_server_s** %a_server.addr, align 8, !tbaa !1
  store %struct.FT_Incremental_InterfaceRec_* %a_inc_int, %struct.FT_Incremental_InterfaceRec_** %a_inc_int.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ff_server_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %a_server.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_fapi_server_s* %1 to %struct.ff_server_s*
  store %struct.ff_server_s* %2, %struct.ff_server_s** %s, align 8, !tbaa !1
  %3 = load %struct.FT_Incremental_InterfaceRec_*, %struct.FT_Incremental_InterfaceRec_** %a_inc_int.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.FT_Incremental_InterfaceRec_* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %a_server.addr, align 8, !tbaa !1
  %5 = load %struct.FT_Incremental_InterfaceRec_*, %struct.FT_Incremental_InterfaceRec_** %a_inc_int.addr, align 8, !tbaa !1
  %object = getelementptr inbounds %struct.FT_Incremental_InterfaceRec_, %struct.FT_Incremental_InterfaceRec_* %5, i32 0, i32 1
  %6 = load %struct.FT_IncrementalRec_*, %struct.FT_IncrementalRec_** %object, align 8, !tbaa !140
  call void @delete_inc_int_info(%struct.gs_fapi_server_s* %4, %struct.FT_IncrementalRec_* %6) #5
  %7 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %ftmemory = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %7, i32 0, i32 5
  %8 = load %struct.FT_MemoryRec_*, %struct.FT_MemoryRec_** %ftmemory, align 8, !tbaa !25
  %9 = load %struct.FT_Incremental_InterfaceRec_*, %struct.FT_Incremental_InterfaceRec_** %a_inc_int.addr, align 8, !tbaa !1
  %10 = bitcast %struct.FT_Incremental_InterfaceRec_* %9 to i8*
  call void @FF_free(%struct.FT_MemoryRec_* %8, i8* %10) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = bitcast %struct.ff_server_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @transform_decompose(%struct.FT_Matrix_* %a_transform, i32* %xresp, i32* %yresp, i64* %a_x_scale, i64* %a_y_scale) #0 {
entry:
  %a_transform.addr = alloca %struct.FT_Matrix_*, align 8
  %xresp.addr = alloca i32*, align 8
  %yresp.addr = alloca i32*, align 8
  %a_x_scale.addr = alloca i64*, align 8
  %a_y_scale.addr = alloca i64*, align 8
  %scalex = alloca double, align 8
  %scaley = alloca double, align 8
  %fact = alloca double, align 8
  %factx = alloca double, align 8
  %facty = alloca double, align 8
  %ftscale_mat = alloca %struct.FT_Matrix_, align 8
  %xres = alloca i32, align 4
  %yres = alloca i32, align 4
  %indep_scale = alloca i32, align 4
  %use_x = alloca i32, align 4
  store %struct.FT_Matrix_* %a_transform, %struct.FT_Matrix_** %a_transform.addr, align 8, !tbaa !1
  store i32* %xresp, i32** %xresp.addr, align 8, !tbaa !1
  store i32* %yresp, i32** %yresp.addr, align 8, !tbaa !1
  store i64* %a_x_scale, i64** %a_x_scale.addr, align 8, !tbaa !1
  store i64* %a_y_scale, i64** %a_y_scale.addr, align 8, !tbaa !1
  %0 = bitcast double* %scalex to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast double* %scaley to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast double* %fact to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store double 1.000000e+00, double* %fact, align 8, !tbaa !149
  %3 = bitcast double* %factx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store double 1.000000e+00, double* %factx, align 8, !tbaa !149
  %4 = bitcast double* %facty to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store double 1.000000e+00, double* %facty, align 8, !tbaa !149
  %5 = bitcast %struct.FT_Matrix_* %ftscale_mat to i8*
  call void @llvm.lifetime.start(i64 32, i8* %5) #1
  %6 = bitcast i32* %xres to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %yres to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %indep_scale to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.FT_Matrix_*, %struct.FT_Matrix_** %a_transform.addr, align 8, !tbaa !1
  %xx = getelementptr inbounds %struct.FT_Matrix_, %struct.FT_Matrix_* %9, i32 0, i32 0
  %10 = load i64, i64* %xx, align 8, !tbaa !151
  %conv = sitofp i64 %10 to double
  %11 = load %struct.FT_Matrix_*, %struct.FT_Matrix_** %a_transform.addr, align 8, !tbaa !1
  %xx1 = getelementptr inbounds %struct.FT_Matrix_, %struct.FT_Matrix_* %11, i32 0, i32 0
  %12 = load i64, i64* %xx1, align 8, !tbaa !151
  %conv2 = sitofp i64 %12 to double
  %mul = fmul double %conv, %conv2
  %13 = load %struct.FT_Matrix_*, %struct.FT_Matrix_** %a_transform.addr, align 8, !tbaa !1
  %xy = getelementptr inbounds %struct.FT_Matrix_, %struct.FT_Matrix_* %13, i32 0, i32 1
  %14 = load i64, i64* %xy, align 8, !tbaa !152
  %conv3 = sitofp i64 %14 to double
  %15 = load %struct.FT_Matrix_*, %struct.FT_Matrix_** %a_transform.addr, align 8, !tbaa !1
  %xy4 = getelementptr inbounds %struct.FT_Matrix_, %struct.FT_Matrix_* %15, i32 0, i32 1
  %16 = load i64, i64* %xy4, align 8, !tbaa !152
  %conv5 = sitofp i64 %16 to double
  %mul6 = fmul double %conv3, %conv5
  %add = fadd double %mul, %mul6
  %call = call double @sqrt(double %add) #6
  store double %call, double* %scalex, align 8, !tbaa !149
  %17 = load %struct.FT_Matrix_*, %struct.FT_Matrix_** %a_transform.addr, align 8, !tbaa !1
  %yx = getelementptr inbounds %struct.FT_Matrix_, %struct.FT_Matrix_* %17, i32 0, i32 2
  %18 = load i64, i64* %yx, align 8, !tbaa !153
  %conv7 = sitofp i64 %18 to double
  %19 = load %struct.FT_Matrix_*, %struct.FT_Matrix_** %a_transform.addr, align 8, !tbaa !1
  %yx8 = getelementptr inbounds %struct.FT_Matrix_, %struct.FT_Matrix_* %19, i32 0, i32 2
  %20 = load i64, i64* %yx8, align 8, !tbaa !153
  %conv9 = sitofp i64 %20 to double
  %mul10 = fmul double %conv7, %conv9
  %21 = load %struct.FT_Matrix_*, %struct.FT_Matrix_** %a_transform.addr, align 8, !tbaa !1
  %yy = getelementptr inbounds %struct.FT_Matrix_, %struct.FT_Matrix_* %21, i32 0, i32 3
  %22 = load i64, i64* %yy, align 8, !tbaa !154
  %conv11 = sitofp i64 %22 to double
  %23 = load %struct.FT_Matrix_*, %struct.FT_Matrix_** %a_transform.addr, align 8, !tbaa !1
  %yy12 = getelementptr inbounds %struct.FT_Matrix_, %struct.FT_Matrix_* %23, i32 0, i32 3
  %24 = load i64, i64* %yy12, align 8, !tbaa !154
  %conv13 = sitofp i64 %24 to double
  %mul14 = fmul double %conv11, %conv13
  %add15 = fadd double %mul10, %mul14
  %call16 = call double @sqrt(double %add15) #6
  store double %call16, double* %scaley, align 8, !tbaa !149
  %25 = load i32*, i32** %xresp.addr, align 8, !tbaa !1
  %26 = load i32, i32* %25, align 4, !tbaa !5
  %27 = load i32*, i32** %yresp.addr, align 8, !tbaa !1
  %28 = load i32, i32* %27, align 4, !tbaa !5
  %cmp = icmp ne i32 %26, %28
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %29 = bitcast i32* %use_x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  store i32 1, i32* %use_x, align 4, !tbaa !5
  %30 = load i32*, i32** %xresp.addr, align 8, !tbaa !1
  %31 = load i32, i32* %30, align 4, !tbaa !5
  %32 = load i32*, i32** %yresp.addr, align 8, !tbaa !1
  %33 = load i32, i32* %32, align 4, !tbaa !5
  %cmp18 = icmp ult i32 %31, %33
  br i1 %cmp18, label %if.then.20, label %if.end

if.then.20:                                       ; preds = %if.then
  store i32 0, i32* %use_x, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.20, %if.then
  %34 = load i32*, i32** %xresp.addr, align 8, !tbaa !1
  %35 = load i32, i32* %34, align 4, !tbaa !5
  %conv21 = uitofp i32 %35 to double
  %36 = load i32, i32* %use_x, align 4, !tbaa !5
  %tobool = icmp ne i32 %36, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %37 = load i32*, i32** %xresp.addr, align 8, !tbaa !1
  %38 = load i32, i32* %37, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %39 = load i32*, i32** %yresp.addr, align 8, !tbaa !1
  %40 = load i32, i32* %39, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %38, %cond.true ], [ %40, %cond.false ]
  %conv22 = uitofp i32 %cond to double
  %div = fdiv double %conv21, %conv22
  %mul23 = fmul double %div, 6.553600e+04
  %conv24 = fptosi double %mul23 to i32
  %conv25 = sext i32 %conv24 to i64
  %xx26 = getelementptr inbounds %struct.FT_Matrix_, %struct.FT_Matrix_* %ftscale_mat, i32 0, i32 0
  store i64 %conv25, i64* %xx26, align 8, !tbaa !151
  %yx27 = getelementptr inbounds %struct.FT_Matrix_, %struct.FT_Matrix_* %ftscale_mat, i32 0, i32 2
  store i64 0, i64* %yx27, align 8, !tbaa !153
  %xy28 = getelementptr inbounds %struct.FT_Matrix_, %struct.FT_Matrix_* %ftscale_mat, i32 0, i32 1
  store i64 0, i64* %xy28, align 8, !tbaa !152
  %41 = load i32*, i32** %yresp.addr, align 8, !tbaa !1
  %42 = load i32, i32* %41, align 4, !tbaa !5
  %conv29 = uitofp i32 %42 to double
  %43 = load i32, i32* %use_x, align 4, !tbaa !5
  %tobool30 = icmp ne i32 %43, 0
  br i1 %tobool30, label %cond.true.31, label %cond.false.32

cond.true.31:                                     ; preds = %cond.end
  %44 = load i32*, i32** %xresp.addr, align 8, !tbaa !1
  %45 = load i32, i32* %44, align 4, !tbaa !5
  br label %cond.end.33

cond.false.32:                                    ; preds = %cond.end
  %46 = load i32*, i32** %yresp.addr, align 8, !tbaa !1
  %47 = load i32, i32* %46, align 4, !tbaa !5
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.false.32, %cond.true.31
  %cond34 = phi i32 [ %45, %cond.true.31 ], [ %47, %cond.false.32 ]
  %conv35 = uitofp i32 %cond34 to double
  %div36 = fdiv double %conv29, %conv35
  %mul37 = fmul double %div36, 6.553600e+04
  %conv38 = fptosi double %mul37 to i32
  %conv39 = sext i32 %conv38 to i64
  %yy40 = getelementptr inbounds %struct.FT_Matrix_, %struct.FT_Matrix_* %ftscale_mat, i32 0, i32 3
  store i64 %conv39, i64* %yy40, align 8, !tbaa !154
  %48 = load %struct.FT_Matrix_*, %struct.FT_Matrix_** %a_transform.addr, align 8, !tbaa !1
  call void @FT_Matrix_Multiply(%struct.FT_Matrix_* %ftscale_mat, %struct.FT_Matrix_* %48) #5
  %49 = load i32, i32* %use_x, align 4, !tbaa !5
  %tobool41 = icmp ne i32 %49, 0
  br i1 %tobool41, label %cond.true.42, label %cond.false.43

cond.true.42:                                     ; preds = %cond.end.33
  %50 = load i32*, i32** %xresp.addr, align 8, !tbaa !1
  %51 = load i32, i32* %50, align 4, !tbaa !5
  br label %cond.end.44

cond.false.43:                                    ; preds = %cond.end.33
  %52 = load i32*, i32** %yresp.addr, align 8, !tbaa !1
  %53 = load i32, i32* %52, align 4, !tbaa !5
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.false.43, %cond.true.42
  %cond45 = phi i32 [ %51, %cond.true.42 ], [ %53, %cond.false.43 ]
  store i32 %cond45, i32* %yres, align 4, !tbaa !5
  store i32 %cond45, i32* %xres, align 4, !tbaa !5
  %54 = bitcast i32* %use_x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  br label %if.end.46

if.else:                                          ; preds = %entry
  %55 = load i32*, i32** %xresp.addr, align 8, !tbaa !1
  %56 = load i32, i32* %55, align 4, !tbaa !5
  store i32 %56, i32* %xres, align 4, !tbaa !5
  %57 = load i32*, i32** %yresp.addr, align 8, !tbaa !1
  %58 = load i32, i32* %57, align 4, !tbaa !5
  store i32 %58, i32* %yres, align 4, !tbaa !5
  br label %if.end.46

if.end.46:                                        ; preds = %if.else, %cond.end.44
  %59 = load double, double* %scalex, align 8, !tbaa !149
  %conv47 = fptosi double %59 to i32
  %60 = load double, double* %scaley, align 8, !tbaa !149
  %conv48 = fptosi double %60 to i32
  %div49 = sdiv i32 %conv47, %conv48
  %cmp50 = icmp sgt i32 %div49, 512
  br i1 %cmp50, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end.46
  %61 = load double, double* %scaley, align 8, !tbaa !149
  %conv52 = fptosi double %61 to i32
  %62 = load double, double* %scalex, align 8, !tbaa !149
  %conv53 = fptosi double %62 to i32
  %div54 = sdiv i32 %conv52, %conv53
  %cmp55 = icmp sgt i32 %div54, 512
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end.46
  %63 = phi i1 [ true, %if.end.46 ], [ %cmp55, %lor.rhs ]
  %lor.ext = zext i1 %63 to i32
  store i32 %lor.ext, i32* %indep_scale, align 4, !tbaa !5
  %64 = load double, double* %scalex, align 8, !tbaa !149
  %mul57 = fmul double %64, 0x3EF0000000000000
  store double %mul57, double* %scalex, align 8, !tbaa !149
  %65 = load double, double* %scaley, align 8, !tbaa !149
  %mul58 = fmul double %65, 0x3EF0000000000000
  store double %mul58, double* %scaley, align 8, !tbaa !149
  %66 = load i32, i32* %indep_scale, align 4, !tbaa !5
  %tobool59 = icmp ne i32 %66, 0
  br i1 %tobool59, label %if.then.60, label %if.else.132

if.then.60:                                       ; preds = %lor.end
  %67 = load double, double* %scaley, align 8, !tbaa !149
  %cmp61 = fcmp olt double %67, 1.000000e+01
  br i1 %cmp61, label %if.then.63, label %if.end.66

if.then.63:                                       ; preds = %if.then.60
  %68 = load double, double* %scaley, align 8, !tbaa !149
  %div64 = fdiv double 1.001600e+01, %68
  store double %div64, double* %facty, align 8, !tbaa !149
  %69 = load double, double* %scaley, align 8, !tbaa !149
  %70 = load double, double* %facty, align 8, !tbaa !149
  %mul65 = fmul double %69, %70
  store double %mul65, double* %scaley, align 8, !tbaa !149
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.63, %if.then.60
  %71 = load double, double* %scaley, align 8, !tbaa !149
  %72 = load i32, i32* %yres, align 4, !tbaa !5
  %conv67 = uitofp i32 %72 to double
  %mul68 = fmul double %71, %conv67
  %cmp69 = fcmp olt double %mul68, 3.543750e+01
  br i1 %cmp69, label %if.then.71, label %if.end.76

if.then.71:                                       ; preds = %if.end.66
  %73 = load i32, i32* %yres, align 4, !tbaa !5
  %conv72 = uitofp i32 %73 to double
  %74 = load double, double* %scaley, align 8, !tbaa !149
  %mul73 = fmul double %conv72, %74
  %div74 = fdiv double 3.750000e+01, %mul73
  store double %div74, double* %facty, align 8, !tbaa !149
  %75 = load double, double* %facty, align 8, !tbaa !149
  %76 = load double, double* %scaley, align 8, !tbaa !149
  %mul75 = fmul double %76, %75
  store double %mul75, double* %scaley, align 8, !tbaa !149
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.71, %if.end.66
  store double 1.000000e+00, double* %facty, align 8, !tbaa !149
  br label %while.cond

while.cond:                                       ; preds = %if.end.92, %if.end.76
  %77 = load double, double* %scaley, align 8, !tbaa !149
  %78 = load i32, i32* %yres, align 4, !tbaa !5
  %conv77 = uitofp i32 %78 to double
  %mul78 = fmul double %77, %conv77
  %cmp79 = fcmp ogt double %mul78, 3.686400e+04
  br i1 %cmp79, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %79 = load i32, i32* %yres, align 4, !tbaa !5
  %cmp81 = icmp ugt i32 %79, 0
  br i1 %cmp81, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %80 = load double, double* %scaley, align 8, !tbaa !149
  %cmp83 = fcmp ogt double %80, 0.000000e+00
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %81 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp83, %land.rhs ]
  br i1 %81, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %82 = load double, double* %scaley, align 8, !tbaa !149
  %83 = load i32, i32* %yres, align 4, !tbaa !5
  %conv85 = uitofp i32 %83 to double
  %cmp86 = fcmp olt double %82, %conv85
  br i1 %cmp86, label %if.then.88, label %if.else.90

if.then.88:                                       ; preds = %while.body
  %84 = load i32, i32* %yres, align 4, !tbaa !5
  %shr = lshr i32 %84, 1
  store i32 %shr, i32* %yres, align 4, !tbaa !5
  %85 = load double, double* %facty, align 8, !tbaa !149
  %mul89 = fmul double %85, 2.000000e+00
  store double %mul89, double* %facty, align 8, !tbaa !149
  br label %if.end.92

if.else.90:                                       ; preds = %while.body
  %86 = load double, double* %scaley, align 8, !tbaa !149
  %div91 = fdiv double %86, 1.250000e+00
  store double %div91, double* %scaley, align 8, !tbaa !149
  br label %if.end.92

if.end.92:                                        ; preds = %if.else.90, %if.then.88
  br label %while.cond

while.end:                                        ; preds = %land.end
  %87 = load double, double* %scalex, align 8, !tbaa !149
  %cmp93 = fcmp olt double %87, 1.000000e+01
  br i1 %cmp93, label %if.then.95, label %if.end.98

if.then.95:                                       ; preds = %while.end
  %88 = load double, double* %scalex, align 8, !tbaa !149
  %div96 = fdiv double 1.001600e+01, %88
  store double %div96, double* %factx, align 8, !tbaa !149
  %89 = load double, double* %scalex, align 8, !tbaa !149
  %90 = load double, double* %factx, align 8, !tbaa !149
  %mul97 = fmul double %89, %90
  store double %mul97, double* %scalex, align 8, !tbaa !149
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.95, %while.end
  %91 = load double, double* %scalex, align 8, !tbaa !149
  %92 = load i32, i32* %xres, align 4, !tbaa !5
  %conv99 = uitofp i32 %92 to double
  %mul100 = fmul double %91, %conv99
  %cmp101 = fcmp olt double %mul100, 3.543750e+01
  br i1 %cmp101, label %if.then.103, label %if.end.108

if.then.103:                                      ; preds = %if.end.98
  %93 = load i32, i32* %xres, align 4, !tbaa !5
  %conv104 = uitofp i32 %93 to double
  %94 = load double, double* %scalex, align 8, !tbaa !149
  %mul105 = fmul double %conv104, %94
  %div106 = fdiv double 3.750000e+01, %mul105
  store double %div106, double* %factx, align 8, !tbaa !149
  %95 = load double, double* %factx, align 8, !tbaa !149
  %96 = load double, double* %scalex, align 8, !tbaa !149
  %mul107 = fmul double %96, %95
  store double %mul107, double* %scalex, align 8, !tbaa !149
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.103, %if.end.98
  store double 1.000000e+00, double* %factx, align 8, !tbaa !149
  br label %while.cond.109

while.cond.109:                                   ; preds = %if.end.130, %if.end.108
  %97 = load double, double* %scalex, align 8, !tbaa !149
  %98 = load i32, i32* %xres, align 4, !tbaa !5
  %conv110 = uitofp i32 %98 to double
  %mul111 = fmul double %97, %conv110
  %cmp112 = fcmp ogt double %mul111, 3.686400e+04
  br i1 %cmp112, label %land.lhs.true.114, label %land.end.120

land.lhs.true.114:                                ; preds = %while.cond.109
  %99 = load i32, i32* %xres, align 4, !tbaa !5
  %cmp115 = icmp ugt i32 %99, 0
  br i1 %cmp115, label %land.rhs.117, label %land.end.120

land.rhs.117:                                     ; preds = %land.lhs.true.114
  %100 = load double, double* %scalex, align 8, !tbaa !149
  %cmp118 = fcmp ogt double %100, 0.000000e+00
  br label %land.end.120

land.end.120:                                     ; preds = %land.rhs.117, %land.lhs.true.114, %while.cond.109
  %101 = phi i1 [ false, %land.lhs.true.114 ], [ false, %while.cond.109 ], [ %cmp118, %land.rhs.117 ]
  br i1 %101, label %while.body.121, label %while.end.131

while.body.121:                                   ; preds = %land.end.120
  %102 = load double, double* %scalex, align 8, !tbaa !149
  %103 = load i32, i32* %xres, align 4, !tbaa !5
  %conv122 = uitofp i32 %103 to double
  %cmp123 = fcmp olt double %102, %conv122
  br i1 %cmp123, label %if.then.125, label %if.else.128

if.then.125:                                      ; preds = %while.body.121
  %104 = load i32, i32* %xres, align 4, !tbaa !5
  %shr126 = lshr i32 %104, 1
  store i32 %shr126, i32* %xres, align 4, !tbaa !5
  %105 = load double, double* %factx, align 8, !tbaa !149
  %mul127 = fmul double %105, 2.000000e+00
  store double %mul127, double* %factx, align 8, !tbaa !149
  br label %if.end.130

if.else.128:                                      ; preds = %while.body.121
  %106 = load double, double* %scalex, align 8, !tbaa !149
  %div129 = fdiv double %106, 1.250000e+00
  store double %div129, double* %scalex, align 8, !tbaa !149
  br label %if.end.130

if.end.130:                                       ; preds = %if.else.128, %if.then.125
  br label %while.cond.109

while.end.131:                                    ; preds = %land.end.120
  br label %if.end.238

if.else.132:                                      ; preds = %lor.end
  %107 = load double, double* %scalex, align 8, !tbaa !149
  %108 = load double, double* %scaley, align 8, !tbaa !149
  %cmp133 = fcmp ogt double %107, %108
  br i1 %cmp133, label %if.then.135, label %if.else.186

if.then.135:                                      ; preds = %if.else.132
  %109 = load double, double* %scaley, align 8, !tbaa !149
  %cmp136 = fcmp olt double %109, 1.000000e+01
  br i1 %cmp136, label %if.then.138, label %if.end.142

if.then.138:                                      ; preds = %if.then.135
  %110 = load double, double* %scaley, align 8, !tbaa !149
  %div139 = fdiv double 1.001600e+01, %110
  store double %div139, double* %fact, align 8, !tbaa !149
  %111 = load double, double* %scaley, align 8, !tbaa !149
  %112 = load double, double* %fact, align 8, !tbaa !149
  %mul140 = fmul double %111, %112
  store double %mul140, double* %scaley, align 8, !tbaa !149
  %113 = load double, double* %scalex, align 8, !tbaa !149
  %114 = load double, double* %fact, align 8, !tbaa !149
  %mul141 = fmul double %113, %114
  store double %mul141, double* %scalex, align 8, !tbaa !149
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.138, %if.then.135
  %115 = load double, double* %scaley, align 8, !tbaa !149
  %116 = load i32, i32* %yres, align 4, !tbaa !5
  %conv143 = uitofp i32 %116 to double
  %mul144 = fmul double %115, %conv143
  %cmp145 = fcmp olt double %mul144, 3.543750e+01
  br i1 %cmp145, label %if.then.147, label %if.end.153

if.then.147:                                      ; preds = %if.end.142
  %117 = load i32, i32* %yres, align 4, !tbaa !5
  %conv148 = uitofp i32 %117 to double
  %118 = load double, double* %scaley, align 8, !tbaa !149
  %mul149 = fmul double %conv148, %118
  %div150 = fdiv double 3.750000e+01, %mul149
  store double %div150, double* %fact, align 8, !tbaa !149
  %119 = load double, double* %fact, align 8, !tbaa !149
  %120 = load double, double* %scaley, align 8, !tbaa !149
  %mul151 = fmul double %120, %119
  store double %mul151, double* %scaley, align 8, !tbaa !149
  %121 = load double, double* %fact, align 8, !tbaa !149
  %122 = load double, double* %scalex, align 8, !tbaa !149
  %mul152 = fmul double %122, %121
  store double %mul152, double* %scalex, align 8, !tbaa !149
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.147, %if.end.142
  store double 1.000000e+00, double* %fact, align 8, !tbaa !149
  br label %while.cond.154

while.cond.154:                                   ; preds = %if.end.184, %if.end.153
  %123 = load double, double* %scalex, align 8, !tbaa !149
  %124 = load i32, i32* %xres, align 4, !tbaa !5
  %conv155 = uitofp i32 %124 to double
  %mul156 = fmul double %123, %conv155
  %cmp157 = fcmp ogt double %mul156, 3.686400e+04
  br i1 %cmp157, label %land.lhs.true.159, label %land.end.172

land.lhs.true.159:                                ; preds = %while.cond.154
  %125 = load i32, i32* %xres, align 4, !tbaa !5
  %cmp160 = icmp ugt i32 %125, 0
  br i1 %cmp160, label %land.lhs.true.162, label %land.end.172

land.lhs.true.162:                                ; preds = %land.lhs.true.159
  %126 = load i32, i32* %yres, align 4, !tbaa !5
  %cmp163 = icmp ugt i32 %126, 0
  br i1 %cmp163, label %land.rhs.165, label %land.end.172

land.rhs.165:                                     ; preds = %land.lhs.true.162
  %127 = load double, double* %scalex, align 8, !tbaa !149
  %cmp166 = fcmp ogt double %127, 0.000000e+00
  br i1 %cmp166, label %land.rhs.168, label %land.end.171

land.rhs.168:                                     ; preds = %land.rhs.165
  %128 = load double, double* %scaley, align 8, !tbaa !149
  %cmp169 = fcmp ogt double %128, 0.000000e+00
  br label %land.end.171

land.end.171:                                     ; preds = %land.rhs.168, %land.rhs.165
  %129 = phi i1 [ false, %land.rhs.165 ], [ %cmp169, %land.rhs.168 ]
  br label %land.end.172

land.end.172:                                     ; preds = %land.end.171, %land.lhs.true.162, %land.lhs.true.159, %while.cond.154
  %130 = phi i1 [ false, %land.lhs.true.162 ], [ false, %land.lhs.true.159 ], [ false, %while.cond.154 ], [ %129, %land.end.171 ]
  br i1 %130, label %while.body.173, label %while.end.185

while.body.173:                                   ; preds = %land.end.172
  %131 = load double, double* %scalex, align 8, !tbaa !149
  %132 = load i32, i32* %xres, align 4, !tbaa !5
  %conv174 = uitofp i32 %132 to double
  %cmp175 = fcmp olt double %131, %conv174
  br i1 %cmp175, label %if.then.177, label %if.else.181

if.then.177:                                      ; preds = %while.body.173
  %133 = load i32, i32* %xres, align 4, !tbaa !5
  %shr178 = lshr i32 %133, 1
  store i32 %shr178, i32* %xres, align 4, !tbaa !5
  %134 = load i32, i32* %yres, align 4, !tbaa !5
  %shr179 = lshr i32 %134, 1
  store i32 %shr179, i32* %yres, align 4, !tbaa !5
  %135 = load double, double* %fact, align 8, !tbaa !149
  %mul180 = fmul double %135, 2.000000e+00
  store double %mul180, double* %fact, align 8, !tbaa !149
  br label %if.end.184

if.else.181:                                      ; preds = %while.body.173
  %136 = load double, double* %scalex, align 8, !tbaa !149
  %div182 = fdiv double %136, 1.250000e+00
  store double %div182, double* %scalex, align 8, !tbaa !149
  %137 = load double, double* %scaley, align 8, !tbaa !149
  %div183 = fdiv double %137, 1.250000e+00
  store double %div183, double* %scaley, align 8, !tbaa !149
  br label %if.end.184

if.end.184:                                       ; preds = %if.else.181, %if.then.177
  br label %while.cond.154

while.end.185:                                    ; preds = %land.end.172
  br label %if.end.237

if.else.186:                                      ; preds = %if.else.132
  %138 = load double, double* %scalex, align 8, !tbaa !149
  %cmp187 = fcmp olt double %138, 1.000000e+01
  br i1 %cmp187, label %if.then.189, label %if.end.193

if.then.189:                                      ; preds = %if.else.186
  %139 = load double, double* %scalex, align 8, !tbaa !149
  %div190 = fdiv double 1.001600e+01, %139
  store double %div190, double* %fact, align 8, !tbaa !149
  %140 = load double, double* %scalex, align 8, !tbaa !149
  %141 = load double, double* %fact, align 8, !tbaa !149
  %mul191 = fmul double %140, %141
  store double %mul191, double* %scalex, align 8, !tbaa !149
  %142 = load double, double* %scaley, align 8, !tbaa !149
  %143 = load double, double* %fact, align 8, !tbaa !149
  %mul192 = fmul double %142, %143
  store double %mul192, double* %scaley, align 8, !tbaa !149
  br label %if.end.193

if.end.193:                                       ; preds = %if.then.189, %if.else.186
  %144 = load double, double* %scalex, align 8, !tbaa !149
  %145 = load i32, i32* %xres, align 4, !tbaa !5
  %conv194 = uitofp i32 %145 to double
  %mul195 = fmul double %144, %conv194
  %cmp196 = fcmp olt double %mul195, 3.543750e+01
  br i1 %cmp196, label %if.then.198, label %if.end.204

if.then.198:                                      ; preds = %if.end.193
  %146 = load i32, i32* %xres, align 4, !tbaa !5
  %conv199 = uitofp i32 %146 to double
  %147 = load double, double* %scalex, align 8, !tbaa !149
  %mul200 = fmul double %conv199, %147
  %div201 = fdiv double 3.750000e+01, %mul200
  store double %div201, double* %fact, align 8, !tbaa !149
  %148 = load double, double* %fact, align 8, !tbaa !149
  %149 = load double, double* %scaley, align 8, !tbaa !149
  %mul202 = fmul double %149, %148
  store double %mul202, double* %scaley, align 8, !tbaa !149
  %150 = load double, double* %fact, align 8, !tbaa !149
  %151 = load double, double* %scalex, align 8, !tbaa !149
  %mul203 = fmul double %151, %150
  store double %mul203, double* %scalex, align 8, !tbaa !149
  br label %if.end.204

if.end.204:                                       ; preds = %if.then.198, %if.end.193
  store double 1.000000e+00, double* %fact, align 8, !tbaa !149
  br label %while.cond.205

while.cond.205:                                   ; preds = %if.end.235, %if.end.204
  %152 = load double, double* %scaley, align 8, !tbaa !149
  %153 = load i32, i32* %yres, align 4, !tbaa !5
  %conv206 = uitofp i32 %153 to double
  %mul207 = fmul double %152, %conv206
  %cmp208 = fcmp ogt double %mul207, 3.686400e+04
  br i1 %cmp208, label %land.lhs.true.210, label %land.end.223

land.lhs.true.210:                                ; preds = %while.cond.205
  %154 = load i32, i32* %xres, align 4, !tbaa !5
  %cmp211 = icmp ugt i32 %154, 0
  br i1 %cmp211, label %land.lhs.true.213, label %land.end.223

land.lhs.true.213:                                ; preds = %land.lhs.true.210
  %155 = load i32, i32* %yres, align 4, !tbaa !5
  %cmp214 = icmp ugt i32 %155, 0
  br i1 %cmp214, label %land.rhs.216, label %land.end.223

land.rhs.216:                                     ; preds = %land.lhs.true.213
  %156 = load double, double* %scalex, align 8, !tbaa !149
  %cmp217 = fcmp ogt double %156, 0.000000e+00
  br i1 %cmp217, label %land.rhs.219, label %land.end.222

land.rhs.219:                                     ; preds = %land.rhs.216
  %157 = load double, double* %scaley, align 8, !tbaa !149
  %cmp220 = fcmp ogt double %157, 0.000000e+00
  br label %land.end.222

land.end.222:                                     ; preds = %land.rhs.219, %land.rhs.216
  %158 = phi i1 [ false, %land.rhs.216 ], [ %cmp220, %land.rhs.219 ]
  br label %land.end.223

land.end.223:                                     ; preds = %land.end.222, %land.lhs.true.213, %land.lhs.true.210, %while.cond.205
  %159 = phi i1 [ false, %land.lhs.true.213 ], [ false, %land.lhs.true.210 ], [ false, %while.cond.205 ], [ %158, %land.end.222 ]
  br i1 %159, label %while.body.224, label %while.end.236

while.body.224:                                   ; preds = %land.end.223
  %160 = load double, double* %scaley, align 8, !tbaa !149
  %161 = load i32, i32* %yres, align 4, !tbaa !5
  %conv225 = uitofp i32 %161 to double
  %cmp226 = fcmp olt double %160, %conv225
  br i1 %cmp226, label %if.then.228, label %if.else.232

if.then.228:                                      ; preds = %while.body.224
  %162 = load i32, i32* %xres, align 4, !tbaa !5
  %shr229 = lshr i32 %162, 1
  store i32 %shr229, i32* %xres, align 4, !tbaa !5
  %163 = load i32, i32* %yres, align 4, !tbaa !5
  %shr230 = lshr i32 %163, 1
  store i32 %shr230, i32* %yres, align 4, !tbaa !5
  %164 = load double, double* %fact, align 8, !tbaa !149
  %mul231 = fmul double %164, 2.000000e+00
  store double %mul231, double* %fact, align 8, !tbaa !149
  br label %if.end.235

if.else.232:                                      ; preds = %while.body.224
  %165 = load double, double* %scalex, align 8, !tbaa !149
  %div233 = fdiv double %165, 1.250000e+00
  store double %div233, double* %scalex, align 8, !tbaa !149
  %166 = load double, double* %scaley, align 8, !tbaa !149
  %div234 = fdiv double %166, 1.250000e+00
  store double %div234, double* %scaley, align 8, !tbaa !149
  br label %if.end.235

if.end.235:                                       ; preds = %if.else.232, %if.then.228
  br label %while.cond.205

while.end.236:                                    ; preds = %land.end.223
  br label %if.end.237

if.end.237:                                       ; preds = %while.end.236, %while.end.185
  %167 = load double, double* %fact, align 8, !tbaa !149
  store double %167, double* %facty, align 8, !tbaa !149
  store double %167, double* %factx, align 8, !tbaa !149
  br label %if.end.238

if.end.238:                                       ; preds = %if.end.237, %while.end.131
  %168 = load double, double* %scalex, align 8, !tbaa !149
  %div239 = fdiv double 6.553600e+04, %168
  %169 = load double, double* %factx, align 8, !tbaa !149
  %mul240 = fmul double %div239, %169
  %conv241 = fptosi double %mul240 to i64
  %xx242 = getelementptr inbounds %struct.FT_Matrix_, %struct.FT_Matrix_* %ftscale_mat, i32 0, i32 0
  store i64 %conv241, i64* %xx242, align 8, !tbaa !151
  %xy243 = getelementptr inbounds %struct.FT_Matrix_, %struct.FT_Matrix_* %ftscale_mat, i32 0, i32 1
  store i64 0, i64* %xy243, align 8, !tbaa !152
  %yx244 = getelementptr inbounds %struct.FT_Matrix_, %struct.FT_Matrix_* %ftscale_mat, i32 0, i32 2
  store i64 0, i64* %yx244, align 8, !tbaa !153
  %170 = load double, double* %scaley, align 8, !tbaa !149
  %div245 = fdiv double 6.553600e+04, %170
  %171 = load double, double* %facty, align 8, !tbaa !149
  %mul246 = fmul double %div245, %171
  %conv247 = fptosi double %mul246 to i64
  %yy248 = getelementptr inbounds %struct.FT_Matrix_, %struct.FT_Matrix_* %ftscale_mat, i32 0, i32 3
  store i64 %conv247, i64* %yy248, align 8, !tbaa !154
  %172 = load %struct.FT_Matrix_*, %struct.FT_Matrix_** %a_transform.addr, align 8, !tbaa !1
  call void @FT_Matrix_Multiply(%struct.FT_Matrix_* %172, %struct.FT_Matrix_* %ftscale_mat) #5
  %173 = load %struct.FT_Matrix_*, %struct.FT_Matrix_** %a_transform.addr, align 8, !tbaa !1
  %174 = bitcast %struct.FT_Matrix_* %173 to i8*
  %175 = bitcast %struct.FT_Matrix_* %ftscale_mat to i8*
  %call249 = call i8* @memcpy(i8* %174, i8* %175, i64 32) #6
  %176 = load i32, i32* %xres, align 4, !tbaa !5
  %177 = load i32*, i32** %xresp.addr, align 8, !tbaa !1
  store i32 %176, i32* %177, align 4, !tbaa !5
  %178 = load i32, i32* %yres, align 4, !tbaa !5
  %179 = load i32*, i32** %yresp.addr, align 8, !tbaa !1
  store i32 %178, i32* %179, align 4, !tbaa !5
  %180 = load double, double* %scalex, align 8, !tbaa !149
  %mul250 = fmul double %180, 6.400000e+01
  %conv251 = fptosi double %mul250 to i64
  %181 = load i64*, i64** %a_x_scale.addr, align 8, !tbaa !1
  store i64 %conv251, i64* %181, align 8, !tbaa !22
  %182 = load double, double* %scaley, align 8, !tbaa !149
  %mul252 = fmul double %182, 6.400000e+01
  %conv253 = fptosi double %mul252 to i64
  %183 = load i64*, i64** %a_y_scale.addr, align 8, !tbaa !1
  store i64 %conv253, i64* %183, align 8, !tbaa !22
  %184 = bitcast i32* %indep_scale to i8*
  call void @llvm.lifetime.end(i64 4, i8* %184) #1
  %185 = bitcast i32* %yres to i8*
  call void @llvm.lifetime.end(i64 4, i8* %185) #1
  %186 = bitcast i32* %xres to i8*
  call void @llvm.lifetime.end(i64 4, i8* %186) #1
  %187 = bitcast %struct.FT_Matrix_* %ftscale_mat to i8*
  call void @llvm.lifetime.end(i64 32, i8* %187) #1
  %188 = bitcast double* %facty to i8*
  call void @llvm.lifetime.end(i64 8, i8* %188) #1
  %189 = bitcast double* %factx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %189) #1
  %190 = bitcast double* %fact to i8*
  call void @llvm.lifetime.end(i64 8, i8* %190) #1
  %191 = bitcast double* %scaley to i8*
  call void @llvm.lifetime.end(i64 8, i8* %191) #1
  %192 = bitcast double* %scalex to i8*
  call void @llvm.lifetime.end(i64 8, i8* %192) #1
  ret void
}

declare i32 @FT_Set_Char_Size(%struct.FT_FaceRec_*, i64, i64, i32, i32) #2

declare void @FT_Set_Transform(%struct.FT_FaceRec_*, %struct.FT_Matrix_*, %struct.FT_Vector_*) #2

declare i32 @FT_Set_Charmap(%struct.FT_FaceRec_*, %struct.FT_CharMapRec_*) #2

declare i32 @gs_parse_file_name(%struct.gs_parsed_file_name_s*, i8*, i32, %struct.gs_memory_s*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare %struct.gx_io_device_s* @gs_getiodevice(%struct.gs_memory_s*, i32) #2

declare i32 @file_open_stream(i8*, i32, i8*, i32, %struct.stream_s**, %struct.gx_io_device_s*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, %struct.gs_memory_s*) #2

declare i32 @savailable(%struct.stream_s*, i64*) #2

; Function Attrs: nounwind uwtable
define internal i64 @FF_stream_read(%struct.FT_StreamRec_* %str, i64 %offset, i8* %buffer, i64 %count) #0 {
entry:
  %retval = alloca i64, align 8
  %str.addr = alloca %struct.FT_StreamRec_*, align 8
  %offset.addr = alloca i64, align 8
  %buffer.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %ps = alloca %struct.stream_s*, align 8
  %rlen = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.FT_StreamRec_* %str, %struct.FT_StreamRec_** %str.addr, align 8, !tbaa !1
  store i64 %offset, i64* %offset.addr, align 8, !tbaa !22
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i64 %count, i64* %count.addr, align 8, !tbaa !22
  %0 = bitcast %struct.stream_s** %ps to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.FT_StreamRec_*, %struct.FT_StreamRec_** %str.addr, align 8, !tbaa !1
  %descriptor = getelementptr inbounds %struct.FT_StreamRec_, %struct.FT_StreamRec_* %1, i32 0, i32 3
  %pointer = bitcast %union.FT_StreamDesc_* %descriptor to i8**
  %2 = load i8*, i8** %pointer, align 8, !tbaa !1
  %3 = bitcast i8* %2 to %struct.stream_s*
  store %struct.stream_s* %3, %struct.stream_s** %ps, align 8, !tbaa !1
  %4 = bitcast i32* %rlen to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %rlen, align 4, !tbaa !5
  %5 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %status, align 4, !tbaa !5
  %6 = load %struct.stream_s*, %struct.stream_s** %ps, align 8, !tbaa !1
  %7 = load i64, i64* %offset.addr, align 8, !tbaa !22
  %call = call i32 @spseek(%struct.stream_s* %6, i64 %7) #5
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load i64, i64* %count.addr, align 8, !tbaa !22
  %tobool = icmp ne i64 %8, 0
  br i1 %tobool, label %if.then.1, label %if.end.9

if.then.1:                                        ; preds = %if.end
  %9 = load %struct.stream_s*, %struct.stream_s** %ps, align 8, !tbaa !1
  %10 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %11 = load i64, i64* %count.addr, align 8, !tbaa !22
  %conv = trunc i64 %11 to i32
  %call2 = call i32 @sgets(%struct.stream_s* %9, i8* %10, i32 %conv, i32* %rlen) #5
  store i32 %call2, i32* %status, align 4, !tbaa !5
  %12 = load i32, i32* %status, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %12, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %if.then.1
  %13 = load i32, i32* %status, align 4, !tbaa !5
  %cmp5 = icmp ne i32 %13, -1
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %land.lhs.true
  store i64 -1, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %land.lhs.true, %if.then.1
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.end
  %14 = load i32, i32* %rlen, align 4, !tbaa !5
  %conv10 = zext i32 %14 to i64
  store i64 %conv10, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.then.7, %if.then
  %15 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = bitcast i32* %rlen to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %17 = bitcast %struct.stream_s** %ps to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  %18 = load i64, i64* %retval
  ret i64 %18
}

; Function Attrs: nounwind uwtable
define internal void @FF_stream_close(%struct.FT_StreamRec_* %str) #0 {
entry:
  %str.addr = alloca %struct.FT_StreamRec_*, align 8
  %ps = alloca %struct.stream_s*, align 8
  store %struct.FT_StreamRec_* %str, %struct.FT_StreamRec_** %str.addr, align 8, !tbaa !1
  %0 = bitcast %struct.stream_s** %ps to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.FT_StreamRec_*, %struct.FT_StreamRec_** %str.addr, align 8, !tbaa !1
  %descriptor = getelementptr inbounds %struct.FT_StreamRec_, %struct.FT_StreamRec_* %1, i32 0, i32 3
  %pointer = bitcast %union.FT_StreamDesc_* %descriptor to i8**
  %2 = load i8*, i8** %pointer, align 8, !tbaa !1
  %3 = bitcast i8* %2 to %struct.stream_s*
  store %struct.stream_s* %3, %struct.stream_s** %ps, align 8, !tbaa !1
  %4 = load %struct.stream_s*, %struct.stream_s** %ps, align 8, !tbaa !1
  %call = call i32 @sclose(%struct.stream_s* %4) #5
  %5 = bitcast %struct.stream_s** %ps to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret void
}

declare i32 @sclose(%struct.stream_s*) #2

declare i32 @spseek(%struct.stream_s*, i64) #2

declare i32 @sgets(%struct.stream_s*, i8*, i32, i32*) #2

; Function Attrs: nounwind uwtable
define internal %struct.FT_IncrementalRec_* @new_inc_int_info(%struct.gs_fapi_server_s* %a_server, %struct.gs_fapi_font_s* %a_fapi_font) #0 {
entry:
  %a_server.addr = alloca %struct.gs_fapi_server_s*, align 8
  %a_fapi_font.addr = alloca %struct.gs_fapi_font_s*, align 8
  %s = alloca %struct.ff_server_s*, align 8
  %info = alloca %struct.FT_IncrementalRec_*, align 8
  store %struct.gs_fapi_server_s* %a_server, %struct.gs_fapi_server_s** %a_server.addr, align 8, !tbaa !1
  store %struct.gs_fapi_font_s* %a_fapi_font, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ff_server_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %a_server.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_fapi_server_s* %1 to %struct.ff_server_s*
  store %struct.ff_server_s* %2, %struct.ff_server_s** %s, align 8, !tbaa !1
  %3 = bitcast %struct.FT_IncrementalRec_** %info to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %ftmemory = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %4, i32 0, i32 5
  %5 = load %struct.FT_MemoryRec_*, %struct.FT_MemoryRec_** %ftmemory, align 8, !tbaa !25
  %call = call i8* @FF_alloc(%struct.FT_MemoryRec_* %5, i64 80) #5
  %6 = bitcast i8* %call to %struct.FT_IncrementalRec_*
  store %struct.FT_IncrementalRec_* %6, %struct.FT_IncrementalRec_** %info, align 8, !tbaa !1
  %7 = load %struct.FT_IncrementalRec_*, %struct.FT_IncrementalRec_** %info, align 8, !tbaa !1
  %tobool = icmp ne %struct.FT_IncrementalRec_* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %9 = load %struct.FT_IncrementalRec_*, %struct.FT_IncrementalRec_** %info, align 8, !tbaa !1
  %fapi_font = getelementptr inbounds %struct.FT_IncrementalRec_, %struct.FT_IncrementalRec_* %9, i32 0, i32 0
  store %struct.gs_fapi_font_s* %8, %struct.gs_fapi_font_s** %fapi_font, align 8, !tbaa !155
  %10 = load %struct.FT_IncrementalRec_*, %struct.FT_IncrementalRec_** %info, align 8, !tbaa !1
  %glyph_data = getelementptr inbounds %struct.FT_IncrementalRec_, %struct.FT_IncrementalRec_* %10, i32 0, i32 1
  store i8* null, i8** %glyph_data, align 8, !tbaa !158
  %11 = load %struct.FT_IncrementalRec_*, %struct.FT_IncrementalRec_** %info, align 8, !tbaa !1
  %glyph_data_length = getelementptr inbounds %struct.FT_IncrementalRec_, %struct.FT_IncrementalRec_* %11, i32 0, i32 2
  store i64 0, i64* %glyph_data_length, align 8, !tbaa !159
  %12 = load %struct.FT_IncrementalRec_*, %struct.FT_IncrementalRec_** %info, align 8, !tbaa !1
  %glyph_data_in_use = getelementptr inbounds %struct.FT_IncrementalRec_, %struct.FT_IncrementalRec_* %12, i32 0, i32 3
  store i32 0, i32* %glyph_data_in_use, align 4, !tbaa !160
  %13 = load %struct.FT_IncrementalRec_*, %struct.FT_IncrementalRec_** %info, align 8, !tbaa !1
  %glyph_metrics_index = getelementptr inbounds %struct.FT_IncrementalRec_, %struct.FT_IncrementalRec_* %13, i32 0, i32 5
  store i64 4294967295, i64* %glyph_metrics_index, align 8, !tbaa !161
  %14 = load %struct.FT_IncrementalRec_*, %struct.FT_IncrementalRec_** %info, align 8, !tbaa !1
  %metrics_type = getelementptr inbounds %struct.FT_IncrementalRec_, %struct.FT_IncrementalRec_* %14, i32 0, i32 6
  store i32 0, i32* %metrics_type, align 4, !tbaa !162
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load %struct.FT_IncrementalRec_*, %struct.FT_IncrementalRec_** %info, align 8, !tbaa !1
  %16 = bitcast %struct.FT_IncrementalRec_** %info to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = bitcast %struct.ff_server_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  ret %struct.FT_IncrementalRec_* %15
}

; Function Attrs: nounwind uwtable
define internal i32 @get_fapi_glyph_data(%struct.FT_IncrementalRec_* %a_info, i32 %a_index, %struct.FT_Data_* %a_data) #0 {
entry:
  %retval = alloca i32, align 4
  %a_info.addr = alloca %struct.FT_IncrementalRec_*, align 8
  %a_index.addr = alloca i32, align 4
  %a_data.addr = alloca %struct.FT_Data_*, align 8
  %ff = alloca %struct.gs_fapi_font_s*, align 8
  %length = alloca i32, align 4
  %face = alloca %struct.ff_face_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %buffer = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %saved_char_data = alloca i8*, align 8
  store %struct.FT_IncrementalRec_* %a_info, %struct.FT_IncrementalRec_** %a_info.addr, align 8, !tbaa !1
  store i32 %a_index, i32* %a_index.addr, align 4, !tbaa !5
  store %struct.FT_Data_* %a_data, %struct.FT_Data_** %a_data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_fapi_font_s** %ff to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.FT_IncrementalRec_*, %struct.FT_IncrementalRec_** %a_info.addr, align 8, !tbaa !1
  %fapi_font = getelementptr inbounds %struct.FT_IncrementalRec_, %struct.FT_IncrementalRec_* %1, i32 0, i32 0
  %2 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %fapi_font, align 8, !tbaa !155
  store %struct.gs_fapi_font_s* %2, %struct.gs_fapi_font_s** %ff, align 8, !tbaa !1
  %3 = bitcast i32* %length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %length, align 4, !tbaa !5
  %4 = bitcast %struct.ff_face_s** %face to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff, align 8, !tbaa !1
  %server_font_data = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %5, i32 0, i32 0
  %6 = load i8*, i8** %server_font_data, align 8, !tbaa !33
  %7 = bitcast i8* %6 to %struct.ff_face_s*
  store %struct.ff_face_s* %7, %struct.ff_face_s** %face, align 8, !tbaa !1
  %8 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %server = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %9, i32 0, i32 11
  %10 = load %struct.ff_server_s*, %struct.ff_server_s** %server, align 8, !tbaa !148
  %mem1 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %10, i32 0, i32 4
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem1, align 8, !tbaa !10
  store %struct.gs_memory_s* %11, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %12 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff, align 8, !tbaa !1
  %need_decrypt = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %12, i32 0, i32 1
  store i32 1, i32* %need_decrypt, align 4, !tbaa !47
  %13 = load %struct.FT_IncrementalRec_*, %struct.FT_IncrementalRec_** %a_info.addr, align 8, !tbaa !1
  %glyph_data_in_use = getelementptr inbounds %struct.FT_IncrementalRec_, %struct.FT_IncrementalRec_* %13, i32 0, i32 3
  %14 = load i32, i32* %glyph_data_in_use, align 4, !tbaa !160
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %15 = bitcast i8** %buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  store i8* null, i8** %buffer, align 8, !tbaa !1
  %16 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff, align 8, !tbaa !1
  %get_glyph = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %16, i32 0, i32 28
  %17 = load i32 (%struct.gs_fapi_font_s*, i32, i8*, i16)*, i32 (%struct.gs_fapi_font_s*, i32, i8*, i16)** %get_glyph, align 8, !tbaa !163
  %18 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff, align 8, !tbaa !1
  %19 = load i32, i32* %a_index.addr, align 4, !tbaa !5
  %call = call i32 %17(%struct.gs_fapi_font_s* %18, i32 %19, i8* null, i16 zeroext 0) #5
  store i32 %call, i32* %length, align 4, !tbaa !5
  %20 = load i32, i32* %length, align 4, !tbaa !5
  %cmp = icmp eq i32 %20, 65535
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i32 16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %21, i32 0, i32 3
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !31
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %22, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %23 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !40
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %non_gc_memory3 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %24, i32 0, i32 3
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory3, align 8, !tbaa !31
  %26 = load i32, i32* %length, align 4, !tbaa !5
  %call4 = call i8* %23(%struct.gs_memory_s* %25, i32 %26, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0)) #5
  store i8* %call4, i8** %buffer, align 8, !tbaa !1
  %27 = load i8*, i8** %buffer, align 8, !tbaa !1
  %tobool5 = icmp ne i8* %27, null
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end
  store i32 64, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %if.end
  %28 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff, align 8, !tbaa !1
  %get_glyph8 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %28, i32 0, i32 28
  %29 = load i32 (%struct.gs_fapi_font_s*, i32, i8*, i16)*, i32 (%struct.gs_fapi_font_s*, i32, i8*, i16)** %get_glyph8, align 8, !tbaa !163
  %30 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff, align 8, !tbaa !1
  %31 = load i32, i32* %a_index.addr, align 4, !tbaa !5
  %32 = load i8*, i8** %buffer, align 8, !tbaa !1
  %33 = load i32, i32* %length, align 4, !tbaa !5
  %conv = trunc i32 %33 to i16
  %call9 = call i32 %29(%struct.gs_fapi_font_s* %30, i32 %31, i8* %32, i16 zeroext %conv) #5
  store i32 %call9, i32* %length, align 4, !tbaa !5
  %34 = load i32, i32* %length, align 4, !tbaa !5
  %cmp10 = icmp eq i32 %34, 65535
  br i1 %cmp10, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %if.end.7
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %non_gc_memory13 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %35, i32 0, i32 3
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory13, align 8, !tbaa !31
  %procs14 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %36, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs14, i32 0, i32 2
  %37 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !32
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %non_gc_memory15 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %38, i32 0, i32 3
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory15, align 8, !tbaa !31
  %40 = load i8*, i8** %buffer, align 8, !tbaa !1
  call void %37(%struct.gs_memory_s* %39, i8* %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0)) #5
  store i32 16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.end.7
  %41 = load i8*, i8** %buffer, align 8, !tbaa !1
  %42 = load %struct.FT_Data_*, %struct.FT_Data_** %a_data.addr, align 8, !tbaa !1
  %pointer = getelementptr inbounds %struct.FT_Data_, %struct.FT_Data_* %42, i32 0, i32 0
  store i8* %41, i8** %pointer, align 8, !tbaa !164
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.16, %if.then.12, %if.then.6, %if.then.2
  %43 = bitcast i8** %buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.70 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.68

if.else:                                          ; preds = %entry
  %44 = bitcast i8** %saved_char_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %44) #1
  %45 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff, align 8, !tbaa !1
  %char_data = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %45, i32 0, i32 17
  %46 = load i8*, i8** %char_data, align 8, !tbaa !166
  store i8* %46, i8** %saved_char_data, align 8, !tbaa !1
  %47 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff, align 8, !tbaa !1
  %get_glyph17 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %47, i32 0, i32 28
  %48 = load i32 (%struct.gs_fapi_font_s*, i32, i8*, i16)*, i32 (%struct.gs_fapi_font_s*, i32, i8*, i16)** %get_glyph17, align 8, !tbaa !163
  %49 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff, align 8, !tbaa !1
  %50 = load i32, i32* %a_index.addr, align 4, !tbaa !5
  %51 = load %struct.FT_IncrementalRec_*, %struct.FT_IncrementalRec_** %a_info.addr, align 8, !tbaa !1
  %glyph_data = getelementptr inbounds %struct.FT_IncrementalRec_, %struct.FT_IncrementalRec_* %51, i32 0, i32 1
  %52 = load i8*, i8** %glyph_data, align 8, !tbaa !158
  %53 = load %struct.FT_IncrementalRec_*, %struct.FT_IncrementalRec_** %a_info.addr, align 8, !tbaa !1
  %glyph_data_length = getelementptr inbounds %struct.FT_IncrementalRec_, %struct.FT_IncrementalRec_* %53, i32 0, i32 2
  %54 = load i64, i64* %glyph_data_length, align 8, !tbaa !159
  %conv18 = trunc i64 %54 to i16
  %call19 = call i32 %48(%struct.gs_fapi_font_s* %49, i32 %50, i8* %52, i16 zeroext %conv18) #5
  store i32 %call19, i32* %length, align 4, !tbaa !5
  %55 = load i32, i32* %length, align 4, !tbaa !5
  %cmp20 = icmp eq i32 %55, -1
  br i1 %cmp20, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.else
  %56 = load i8*, i8** %saved_char_data, align 8, !tbaa !1
  %57 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff, align 8, !tbaa !1
  %char_data23 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %57, i32 0, i32 17
  store i8* %56, i8** %char_data23, align 8, !tbaa !166
  store i32 2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.65

if.end.24:                                        ; preds = %if.else
  %58 = load i32, i32* %length, align 4, !tbaa !5
  %conv25 = sext i32 %58 to i64
  %59 = load %struct.FT_IncrementalRec_*, %struct.FT_IncrementalRec_** %a_info.addr, align 8, !tbaa !1
  %glyph_data_length26 = getelementptr inbounds %struct.FT_IncrementalRec_, %struct.FT_IncrementalRec_* %59, i32 0, i32 2
  %60 = load i64, i64* %glyph_data_length26, align 8, !tbaa !159
  %cmp27 = icmp ugt i64 %conv25, %60
  br i1 %cmp27, label %if.then.29, label %if.end.61

if.then.29:                                       ; preds = %if.end.24
  %61 = load %struct.FT_IncrementalRec_*, %struct.FT_IncrementalRec_** %a_info.addr, align 8, !tbaa !1
  %glyph_data30 = getelementptr inbounds %struct.FT_IncrementalRec_, %struct.FT_IncrementalRec_* %61, i32 0, i32 1
  %62 = load i8*, i8** %glyph_data30, align 8, !tbaa !158
  %tobool31 = icmp ne i8* %62, null
  br i1 %tobool31, label %if.then.32, label %if.end.38

if.then.32:                                       ; preds = %if.then.29
  %63 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %non_gc_memory33 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %63, i32 0, i32 3
  %64 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory33, align 8, !tbaa !31
  %procs34 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %64, i32 0, i32 1
  %free_object35 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs34, i32 0, i32 2
  %65 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object35, align 8, !tbaa !32
  %66 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %non_gc_memory36 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %66, i32 0, i32 3
  %67 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory36, align 8, !tbaa !31
  %68 = load %struct.FT_IncrementalRec_*, %struct.FT_IncrementalRec_** %a_info.addr, align 8, !tbaa !1
  %glyph_data37 = getelementptr inbounds %struct.FT_IncrementalRec_, %struct.FT_IncrementalRec_* %68, i32 0, i32 1
  %69 = load i8*, i8** %glyph_data37, align 8, !tbaa !158
  call void %65(%struct.gs_memory_s* %67, i8* %69, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0)) #5
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.32, %if.then.29
  %70 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %non_gc_memory39 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %70, i32 0, i32 3
  %71 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory39, align 8, !tbaa !31
  %procs40 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %71, i32 0, i32 1
  %alloc_byte_array41 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs40, i32 0, i32 10
  %72 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array41, align 8, !tbaa !40
  %73 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %non_gc_memory42 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %73, i32 0, i32 3
  %74 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory42, align 8, !tbaa !31
  %75 = load i32, i32* %length, align 4, !tbaa !5
  %call43 = call i8* %72(%struct.gs_memory_s* %74, i32 %75, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0)) #5
  %76 = load %struct.FT_IncrementalRec_*, %struct.FT_IncrementalRec_** %a_info.addr, align 8, !tbaa !1
  %glyph_data44 = getelementptr inbounds %struct.FT_IncrementalRec_, %struct.FT_IncrementalRec_* %76, i32 0, i32 1
  store i8* %call43, i8** %glyph_data44, align 8, !tbaa !158
  %77 = load %struct.FT_IncrementalRec_*, %struct.FT_IncrementalRec_** %a_info.addr, align 8, !tbaa !1
  %glyph_data45 = getelementptr inbounds %struct.FT_IncrementalRec_, %struct.FT_IncrementalRec_* %77, i32 0, i32 1
  %78 = load i8*, i8** %glyph_data45, align 8, !tbaa !158
  %tobool46 = icmp ne i8* %78, null
  br i1 %tobool46, label %if.end.49, label %if.then.47

if.then.47:                                       ; preds = %if.end.38
  %79 = load %struct.FT_IncrementalRec_*, %struct.FT_IncrementalRec_** %a_info.addr, align 8, !tbaa !1
  %glyph_data_length48 = getelementptr inbounds %struct.FT_IncrementalRec_, %struct.FT_IncrementalRec_* %79, i32 0, i32 2
  store i64 0, i64* %glyph_data_length48, align 8, !tbaa !159
  store i32 64, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.65

if.end.49:                                        ; preds = %if.end.38
  %80 = load i32, i32* %length, align 4, !tbaa !5
  %conv50 = sext i32 %80 to i64
  %81 = load %struct.FT_IncrementalRec_*, %struct.FT_IncrementalRec_** %a_info.addr, align 8, !tbaa !1
  %glyph_data_length51 = getelementptr inbounds %struct.FT_IncrementalRec_, %struct.FT_IncrementalRec_* %81, i32 0, i32 2
  store i64 %conv50, i64* %glyph_data_length51, align 8, !tbaa !159
  %82 = load i8*, i8** %saved_char_data, align 8, !tbaa !1
  %83 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff, align 8, !tbaa !1
  %char_data52 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %83, i32 0, i32 17
  store i8* %82, i8** %char_data52, align 8, !tbaa !166
  %84 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff, align 8, !tbaa !1
  %get_glyph53 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %84, i32 0, i32 28
  %85 = load i32 (%struct.gs_fapi_font_s*, i32, i8*, i16)*, i32 (%struct.gs_fapi_font_s*, i32, i8*, i16)** %get_glyph53, align 8, !tbaa !163
  %86 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff, align 8, !tbaa !1
  %87 = load i32, i32* %a_index.addr, align 4, !tbaa !5
  %88 = load %struct.FT_IncrementalRec_*, %struct.FT_IncrementalRec_** %a_info.addr, align 8, !tbaa !1
  %glyph_data54 = getelementptr inbounds %struct.FT_IncrementalRec_, %struct.FT_IncrementalRec_* %88, i32 0, i32 1
  %89 = load i8*, i8** %glyph_data54, align 8, !tbaa !158
  %90 = load i32, i32* %length, align 4, !tbaa !5
  %conv55 = trunc i32 %90 to i16
  %call56 = call i32 %85(%struct.gs_fapi_font_s* %86, i32 %87, i8* %89, i16 zeroext %conv55) #5
  store i32 %call56, i32* %length, align 4, !tbaa !5
  %91 = load i32, i32* %length, align 4, !tbaa !5
  %cmp57 = icmp eq i32 %91, -1
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.end.49
  store i32 2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.65

if.end.60:                                        ; preds = %if.end.49
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.end.24
  %92 = load %struct.FT_IncrementalRec_*, %struct.FT_IncrementalRec_** %a_info.addr, align 8, !tbaa !1
  %glyph_data62 = getelementptr inbounds %struct.FT_IncrementalRec_, %struct.FT_IncrementalRec_* %92, i32 0, i32 1
  %93 = load i8*, i8** %glyph_data62, align 8, !tbaa !158
  %94 = load %struct.FT_Data_*, %struct.FT_Data_** %a_data.addr, align 8, !tbaa !1
  %pointer63 = getelementptr inbounds %struct.FT_Data_, %struct.FT_Data_* %94, i32 0, i32 0
  store i8* %93, i8** %pointer63, align 8, !tbaa !164
  %95 = load %struct.FT_IncrementalRec_*, %struct.FT_IncrementalRec_** %a_info.addr, align 8, !tbaa !1
  %glyph_data_in_use64 = getelementptr inbounds %struct.FT_IncrementalRec_, %struct.FT_IncrementalRec_* %95, i32 0, i32 3
  store i32 1, i32* %glyph_data_in_use64, align 4, !tbaa !160
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.65

cleanup.65:                                       ; preds = %if.end.61, %if.then.59, %if.then.47, %if.then.22
  %96 = bitcast i8** %saved_char_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #1
  %cleanup.dest.66 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.66, label %cleanup.70 [
    i32 0, label %cleanup.cont.67
  ]

cleanup.cont.67:                                  ; preds = %cleanup.65
  br label %if.end.68

if.end.68:                                        ; preds = %cleanup.cont.67, %cleanup.cont
  %97 = load i32, i32* %length, align 4, !tbaa !5
  %98 = load %struct.FT_Data_*, %struct.FT_Data_** %a_data.addr, align 8, !tbaa !1
  %length69 = getelementptr inbounds %struct.FT_Data_, %struct.FT_Data_* %98, i32 0, i32 1
  store i32 %97, i32* %length69, align 4, !tbaa !167
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.70

cleanup.70:                                       ; preds = %if.end.68, %cleanup.65, %cleanup
  %99 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #1
  %100 = bitcast %struct.ff_face_s** %face to i8*
  call void @llvm.lifetime.end(i64 8, i8* %100) #1
  %101 = bitcast i32* %length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #1
  %102 = bitcast %struct.gs_fapi_font_s** %ff to i8*
  call void @llvm.lifetime.end(i64 8, i8* %102) #1
  %103 = load i32, i32* %retval
  ret i32 %103
}

; Function Attrs: nounwind uwtable
define internal void @free_fapi_glyph_data(%struct.FT_IncrementalRec_* %a_info, %struct.FT_Data_* %a_data) #0 {
entry:
  %a_info.addr = alloca %struct.FT_IncrementalRec_*, align 8
  %a_data.addr = alloca %struct.FT_Data_*, align 8
  %ff = alloca %struct.gs_fapi_font_s*, align 8
  %face = alloca %struct.ff_face_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  store %struct.FT_IncrementalRec_* %a_info, %struct.FT_IncrementalRec_** %a_info.addr, align 8, !tbaa !1
  store %struct.FT_Data_* %a_data, %struct.FT_Data_** %a_data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_fapi_font_s** %ff to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.FT_IncrementalRec_*, %struct.FT_IncrementalRec_** %a_info.addr, align 8, !tbaa !1
  %fapi_font = getelementptr inbounds %struct.FT_IncrementalRec_, %struct.FT_IncrementalRec_* %1, i32 0, i32 0
  %2 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %fapi_font, align 8, !tbaa !155
  store %struct.gs_fapi_font_s* %2, %struct.gs_fapi_font_s** %ff, align 8, !tbaa !1
  %3 = bitcast %struct.ff_face_s** %face to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %ff, align 8, !tbaa !1
  %server_font_data = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %4, i32 0, i32 0
  %5 = load i8*, i8** %server_font_data, align 8, !tbaa !33
  %6 = bitcast i8* %5 to %struct.ff_face_s*
  store %struct.ff_face_s* %6, %struct.ff_face_s** %face, align 8, !tbaa !1
  %7 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %server = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %8, i32 0, i32 11
  %9 = load %struct.ff_server_s*, %struct.ff_server_s** %server, align 8, !tbaa !148
  %mem1 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %9, i32 0, i32 4
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem1, align 8, !tbaa !10
  store %struct.gs_memory_s* %10, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %11 = load %struct.FT_Data_*, %struct.FT_Data_** %a_data.addr, align 8, !tbaa !1
  %pointer = getelementptr inbounds %struct.FT_Data_, %struct.FT_Data_* %11, i32 0, i32 0
  %12 = load i8*, i8** %pointer, align 8, !tbaa !164
  %13 = load %struct.FT_IncrementalRec_*, %struct.FT_IncrementalRec_** %a_info.addr, align 8, !tbaa !1
  %glyph_data = getelementptr inbounds %struct.FT_IncrementalRec_, %struct.FT_IncrementalRec_* %13, i32 0, i32 1
  %14 = load i8*, i8** %glyph_data, align 8, !tbaa !158
  %cmp = icmp eq i8* %12, %14
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %15 = load %struct.FT_IncrementalRec_*, %struct.FT_IncrementalRec_** %a_info.addr, align 8, !tbaa !1
  %glyph_data_in_use = getelementptr inbounds %struct.FT_IncrementalRec_, %struct.FT_IncrementalRec_* %15, i32 0, i32 3
  store i32 0, i32* %glyph_data_in_use, align 4, !tbaa !160
  br label %if.end

if.else:                                          ; preds = %entry
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %16, i32 0, i32 3
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !31
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %17, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %18 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !32
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %non_gc_memory2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %19, i32 0, i32 3
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory2, align 8, !tbaa !31
  %21 = load %struct.FT_Data_*, %struct.FT_Data_** %a_data.addr, align 8, !tbaa !1
  %pointer3 = getelementptr inbounds %struct.FT_Data_, %struct.FT_Data_* %21, i32 0, i32 0
  %22 = load i8*, i8** %pointer3, align 8, !tbaa !164
  call void %18(%struct.gs_memory_s* %20, i8* %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0)) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %23 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast %struct.ff_face_s** %face to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast %struct.gs_fapi_font_s** %ff to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @get_fapi_glyph_metrics(%struct.FT_IncrementalRec_* %a_info, i32 %a_glyph_index, i8 zeroext %bVertical, %struct.FT_Incremental_MetricsRec_* %a_metrics) #0 {
entry:
  %retval = alloca i32, align 4
  %a_info.addr = alloca %struct.FT_IncrementalRec_*, align 8
  %a_glyph_index.addr = alloca i32, align 4
  %bVertical.addr = alloca i8, align 1
  %a_metrics.addr = alloca %struct.FT_Incremental_MetricsRec_*, align 8
  store %struct.FT_IncrementalRec_* %a_info, %struct.FT_IncrementalRec_** %a_info.addr, align 8, !tbaa !1
  store i32 %a_glyph_index, i32* %a_glyph_index.addr, align 4, !tbaa !5
  store i8 %bVertical, i8* %bVertical.addr, align 1, !tbaa !24
  store %struct.FT_Incremental_MetricsRec_* %a_metrics, %struct.FT_Incremental_MetricsRec_** %a_metrics.addr, align 8, !tbaa !1
  %0 = load i8, i8* %bVertical.addr, align 1, !tbaa !24
  %conv = zext i8 %0 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.FT_IncrementalRec_*, %struct.FT_IncrementalRec_** %a_info.addr, align 8, !tbaa !1
  %fapi_font = getelementptr inbounds %struct.FT_IncrementalRec_, %struct.FT_IncrementalRec_* %1, i32 0, i32 0
  %2 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %fapi_font, align 8, !tbaa !155
  %is_type1 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %2, i32 0, i32 7
  %3 = load i32, i32* %is_type1, align 4, !tbaa !37
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.FT_Incremental_MetricsRec_*, %struct.FT_Incremental_MetricsRec_** %a_metrics.addr, align 8, !tbaa !1
  %advance = getelementptr inbounds %struct.FT_Incremental_MetricsRec_, %struct.FT_Incremental_MetricsRec_* %4, i32 0, i32 2
  store i64 0, i64* %advance, align 8, !tbaa !168
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %5 = load %struct.FT_IncrementalRec_*, %struct.FT_IncrementalRec_** %a_info.addr, align 8, !tbaa !1
  %glyph_metrics_index = getelementptr inbounds %struct.FT_IncrementalRec_, %struct.FT_IncrementalRec_* %5, i32 0, i32 5
  %6 = load i64, i64* %glyph_metrics_index, align 8, !tbaa !161
  %7 = load i32, i32* %a_glyph_index.addr, align 4, !tbaa !5
  %conv2 = zext i32 %7 to i64
  %cmp = icmp eq i64 %6, %conv2
  br i1 %cmp, label %if.then.4, label %if.end.13

if.then.4:                                        ; preds = %if.end
  %8 = load %struct.FT_IncrementalRec_*, %struct.FT_IncrementalRec_** %a_info.addr, align 8, !tbaa !1
  %metrics_type = getelementptr inbounds %struct.FT_IncrementalRec_, %struct.FT_IncrementalRec_* %8, i32 0, i32 6
  %9 = load i32, i32* %metrics_type, align 4, !tbaa !162
  switch i32 %9, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.7
    i32 3, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %if.then.4
  %10 = load %struct.FT_IncrementalRec_*, %struct.FT_IncrementalRec_** %a_info.addr, align 8, !tbaa !1
  %glyph_metrics = getelementptr inbounds %struct.FT_IncrementalRec_, %struct.FT_IncrementalRec_* %10, i32 0, i32 4
  %advance5 = getelementptr inbounds %struct.FT_Incremental_MetricsRec_, %struct.FT_Incremental_MetricsRec_* %glyph_metrics, i32 0, i32 2
  %11 = load i64, i64* %advance5, align 8, !tbaa !169
  %12 = load %struct.FT_Incremental_MetricsRec_*, %struct.FT_Incremental_MetricsRec_** %a_metrics.addr, align 8, !tbaa !1
  %advance6 = getelementptr inbounds %struct.FT_Incremental_MetricsRec_, %struct.FT_Incremental_MetricsRec_* %12, i32 0, i32 2
  %13 = load i64, i64* %advance6, align 8, !tbaa !168
  %add = add nsw i64 %13, %11
  store i64 %add, i64* %advance6, align 8, !tbaa !168
  br label %sw.epilog

sw.bb.7:                                          ; preds = %if.then.4
  %14 = load %struct.FT_IncrementalRec_*, %struct.FT_IncrementalRec_** %a_info.addr, align 8, !tbaa !1
  %glyph_metrics8 = getelementptr inbounds %struct.FT_IncrementalRec_, %struct.FT_IncrementalRec_* %14, i32 0, i32 4
  %advance9 = getelementptr inbounds %struct.FT_Incremental_MetricsRec_, %struct.FT_Incremental_MetricsRec_* %glyph_metrics8, i32 0, i32 2
  %15 = load i64, i64* %advance9, align 8, !tbaa !169
  %16 = load %struct.FT_Incremental_MetricsRec_*, %struct.FT_Incremental_MetricsRec_** %a_metrics.addr, align 8, !tbaa !1
  %advance10 = getelementptr inbounds %struct.FT_Incremental_MetricsRec_, %struct.FT_Incremental_MetricsRec_* %16, i32 0, i32 2
  store i64 %15, i64* %advance10, align 8, !tbaa !168
  br label %sw.epilog

sw.bb.11:                                         ; preds = %if.then.4
  %17 = load %struct.FT_Incremental_MetricsRec_*, %struct.FT_Incremental_MetricsRec_** %a_metrics.addr, align 8, !tbaa !1
  %18 = load %struct.FT_IncrementalRec_*, %struct.FT_IncrementalRec_** %a_info.addr, align 8, !tbaa !1
  %glyph_metrics12 = getelementptr inbounds %struct.FT_IncrementalRec_, %struct.FT_IncrementalRec_* %18, i32 0, i32 4
  %19 = bitcast %struct.FT_Incremental_MetricsRec_* %17 to i8*
  %20 = bitcast %struct.FT_Incremental_MetricsRec_* %glyph_metrics12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 32, i32 8, i1 false), !tbaa.struct !170
  %21 = load %struct.FT_Incremental_MetricsRec_*, %struct.FT_Incremental_MetricsRec_** %a_metrics.addr, align 8, !tbaa !1
  %advance_v = getelementptr inbounds %struct.FT_Incremental_MetricsRec_, %struct.FT_Incremental_MetricsRec_* %21, i32 0, i32 3
  store i64 0, i64* %advance_v, align 8, !tbaa !171
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.4
  store i32 6, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.11, %sw.bb.7, %sw.bb
  br label %if.end.13

if.end.13:                                        ; preds = %sw.epilog, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.13, %sw.default
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal void @delete_inc_int_info(%struct.gs_fapi_server_s* %a_server, %struct.FT_IncrementalRec_* %a_inc_int_info) #0 {
entry:
  %a_server.addr = alloca %struct.gs_fapi_server_s*, align 8
  %a_inc_int_info.addr = alloca %struct.FT_IncrementalRec_*, align 8
  %s = alloca %struct.ff_server_s*, align 8
  store %struct.gs_fapi_server_s* %a_server, %struct.gs_fapi_server_s** %a_server.addr, align 8, !tbaa !1
  store %struct.FT_IncrementalRec_* %a_inc_int_info, %struct.FT_IncrementalRec_** %a_inc_int_info.addr, align 8, !tbaa !1
  %0 = bitcast %struct.ff_server_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %a_server.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_fapi_server_s* %1 to %struct.ff_server_s*
  store %struct.ff_server_s* %2, %struct.ff_server_s** %s, align 8, !tbaa !1
  %3 = load %struct.FT_IncrementalRec_*, %struct.FT_IncrementalRec_** %a_inc_int_info.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.FT_IncrementalRec_* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %ftmemory = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %4, i32 0, i32 5
  %5 = load %struct.FT_MemoryRec_*, %struct.FT_MemoryRec_** %ftmemory, align 8, !tbaa !25
  %6 = load %struct.FT_IncrementalRec_*, %struct.FT_IncrementalRec_** %a_inc_int_info.addr, align 8, !tbaa !1
  %glyph_data = getelementptr inbounds %struct.FT_IncrementalRec_, %struct.FT_IncrementalRec_* %6, i32 0, i32 1
  %7 = load i8*, i8** %glyph_data, align 8, !tbaa !158
  call void @FF_free(%struct.FT_MemoryRec_* %5, i8* %7) #5
  %8 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %ftmemory1 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %8, i32 0, i32 5
  %9 = load %struct.FT_MemoryRec_*, %struct.FT_MemoryRec_** %ftmemory1, align 8, !tbaa !25
  %10 = load %struct.FT_IncrementalRec_*, %struct.FT_IncrementalRec_** %a_inc_int_info.addr, align 8, !tbaa !1
  %11 = bitcast %struct.FT_IncrementalRec_* %10 to i8*
  call void @FF_free(%struct.FT_MemoryRec_* %9, i8* %11) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = bitcast %struct.ff_server_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  ret void
}

; Function Attrs: nounwind
declare double @sqrt(double) #3

declare void @FT_Matrix_Multiply(%struct.FT_Matrix_*, %struct.FT_Matrix_*) #2

declare i32 @FT_Get_Name_Index(%struct.FT_FaceRec_*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @load_glyph(%struct.gs_fapi_server_s* %a_server, %struct.gs_fapi_font_s* %a_fapi_font, %struct.gs_fapi_char_ref* %a_char_ref, %struct.gs_fapi_metrics_s* %a_metrics, %struct.FT_GlyphRec_** %a_glyph, i32 %a_bitmap, i32 %max_bitmap) #0 {
entry:
  %retval = alloca i32, align 4
  %a_server.addr = alloca %struct.gs_fapi_server_s*, align 8
  %a_fapi_font.addr = alloca %struct.gs_fapi_font_s*, align 8
  %a_char_ref.addr = alloca %struct.gs_fapi_char_ref*, align 8
  %a_metrics.addr = alloca %struct.gs_fapi_metrics_s*, align 8
  %a_glyph.addr = alloca %struct.FT_GlyphRec_**, align 8
  %a_bitmap.addr = alloca i32, align 4
  %max_bitmap.addr = alloca i32, align 4
  %s = alloca %struct.ff_server_s*, align 8
  %ft_error = alloca i32, align 4
  %ft_error_fb = alloca i32, align 4
  %face = alloca %struct.ff_face_s*, align 8
  %ft_face = alloca %struct.FT_FaceRec_*, align 8
  %index = alloca i32, align 4
  %w = alloca i64, align 8
  %h = alloca i64, align 8
  %fflags = alloca i64, align 8
  %load_flags = alloca i32, align 4
  %saved_char_data = alloca i8*, align 8
  %saved_char_data_len = alloca i32, align 4
  %tmp_ind = alloca i32, align 4
  %m = alloca %struct.FT_Incremental_MetricsRec_*, align 8
  %cleanup.dest.slot = alloca i32
  %notdef_str = alloca %struct.gs_string_s, align 8
  %hx = alloca i64, align 8
  %hy = alloca i64, align 8
  %vadv = alloca i64, align 8
  %cbox = alloca %struct.FT_BBox_, align 8
  %mode = alloca i32, align 4
  %bmg = alloca %struct.FT_BitmapGlyphRec_*, align 8
  %olg = alloca %struct.FT_OutlineGlyphRec_*, align 8
  store %struct.gs_fapi_server_s* %a_server, %struct.gs_fapi_server_s** %a_server.addr, align 8, !tbaa !1
  store %struct.gs_fapi_font_s* %a_fapi_font, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  store %struct.gs_fapi_char_ref* %a_char_ref, %struct.gs_fapi_char_ref** %a_char_ref.addr, align 8, !tbaa !1
  store %struct.gs_fapi_metrics_s* %a_metrics, %struct.gs_fapi_metrics_s** %a_metrics.addr, align 8, !tbaa !1
  store %struct.FT_GlyphRec_** %a_glyph, %struct.FT_GlyphRec_*** %a_glyph.addr, align 8, !tbaa !1
  store i32 %a_bitmap, i32* %a_bitmap.addr, align 4, !tbaa !5
  store i32 %max_bitmap, i32* %max_bitmap.addr, align 4, !tbaa !5
  %0 = bitcast %struct.ff_server_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %a_server.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_fapi_server_s* %1 to %struct.ff_server_s*
  store %struct.ff_server_s* %2, %struct.ff_server_s** %s, align 8, !tbaa !1
  %3 = bitcast i32* %ft_error to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %ft_error, align 4, !tbaa !5
  %4 = bitcast i32* %ft_error_fb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 1, i32* %ft_error_fb, align 4, !tbaa !5
  %5 = bitcast %struct.ff_face_s** %face to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %server_font_data = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %6, i32 0, i32 0
  %7 = load i8*, i8** %server_font_data, align 8, !tbaa !33
  %8 = bitcast i8* %7 to %struct.ff_face_s*
  store %struct.ff_face_s* %8, %struct.ff_face_s** %face, align 8, !tbaa !1
  %9 = bitcast %struct.FT_FaceRec_** %ft_face to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %ft_face1 = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %10, i32 0, i32 0
  %11 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face1, align 8, !tbaa !65
  store %struct.FT_FaceRec_* %11, %struct.FT_FaceRec_** %ft_face, align 8, !tbaa !1
  %12 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.gs_fapi_char_ref*, %struct.gs_fapi_char_ref** %a_char_ref.addr, align 8, !tbaa !1
  %char_codes = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %13, i32 0, i32 1
  %arrayidx = getelementptr inbounds [4 x i64], [4 x i64]* %char_codes, i32 0, i64 0
  %14 = load i64, i64* %arrayidx, align 8, !tbaa !22
  %conv = trunc i64 %14 to i32
  store i32 %conv, i32* %index, align 4, !tbaa !5
  %15 = bitcast i64* %w to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = bitcast i64* %h to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = bitcast i64* %fflags to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = bitcast i32* %load_flags to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  store i32 0, i32* %load_flags, align 4, !tbaa !5
  %19 = bitcast i8** %saved_char_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %char_data = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %20, i32 0, i32 17
  %21 = load i8*, i8** %char_data, align 8, !tbaa !166
  store i8* %21, i8** %saved_char_data, align 8, !tbaa !1
  %22 = bitcast i32* %saved_char_data_len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %char_data_len = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %23, i32 0, i32 18
  %24 = load i32, i32* %char_data_len, align 4, !tbaa !172
  store i32 %24, i32* %saved_char_data_len, align 4, !tbaa !5
  %25 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %bitmap_glyph = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %25, i32 0, i32 3
  %26 = load %struct.FT_BitmapGlyphRec_*, %struct.FT_BitmapGlyphRec_** %bitmap_glyph, align 8, !tbaa !34
  %tobool = icmp ne %struct.FT_BitmapGlyphRec_* %26, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %27 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %freetype_library = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %27, i32 0, i32 1
  %28 = load %struct.FT_LibraryRec_*, %struct.FT_LibraryRec_** %freetype_library, align 8, !tbaa !26
  %29 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %bitmap_glyph2 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %29, i32 0, i32 3
  %30 = load %struct.FT_BitmapGlyphRec_*, %struct.FT_BitmapGlyphRec_** %bitmap_glyph2, align 8, !tbaa !34
  %bitmap = getelementptr inbounds %struct.FT_BitmapGlyphRec_, %struct.FT_BitmapGlyphRec_* %30, i32 0, i32 3
  %call = call i32 @FT_Bitmap_Done(%struct.FT_LibraryRec_* %28, %struct.FT_Bitmap_* %bitmap) #5
  %31 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %ftmemory = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %31, i32 0, i32 5
  %32 = load %struct.FT_MemoryRec_*, %struct.FT_MemoryRec_** %ftmemory, align 8, !tbaa !25
  %33 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %bitmap_glyph3 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %33, i32 0, i32 3
  %34 = load %struct.FT_BitmapGlyphRec_*, %struct.FT_BitmapGlyphRec_** %bitmap_glyph3, align 8, !tbaa !34
  %35 = bitcast %struct.FT_BitmapGlyphRec_* %34 to i8*
  call void @FF_free(%struct.FT_MemoryRec_* %32, i8* %35) #5
  %36 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %bitmap_glyph4 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %36, i32 0, i32 3
  store %struct.FT_BitmapGlyphRec_* null, %struct.FT_BitmapGlyphRec_** %bitmap_glyph4, align 8, !tbaa !34
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %37 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %outline_glyph = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %37, i32 0, i32 2
  %38 = load %struct.FT_OutlineGlyphRec_*, %struct.FT_OutlineGlyphRec_** %outline_glyph, align 8, !tbaa !35
  %tobool5 = icmp ne %struct.FT_OutlineGlyphRec_* %38, null
  br i1 %tobool5, label %if.then.6, label %if.end.13

if.then.6:                                        ; preds = %if.end
  %39 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %freetype_library7 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %39, i32 0, i32 1
  %40 = load %struct.FT_LibraryRec_*, %struct.FT_LibraryRec_** %freetype_library7, align 8, !tbaa !26
  %41 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %outline_glyph8 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %41, i32 0, i32 2
  %42 = load %struct.FT_OutlineGlyphRec_*, %struct.FT_OutlineGlyphRec_** %outline_glyph8, align 8, !tbaa !35
  %outline = getelementptr inbounds %struct.FT_OutlineGlyphRec_, %struct.FT_OutlineGlyphRec_* %42, i32 0, i32 1
  %call9 = call i32 @FT_Outline_Done(%struct.FT_LibraryRec_* %40, %struct.FT_Outline_* %outline) #5
  %43 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %ftmemory10 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %43, i32 0, i32 5
  %44 = load %struct.FT_MemoryRec_*, %struct.FT_MemoryRec_** %ftmemory10, align 8, !tbaa !25
  %45 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %outline_glyph11 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %45, i32 0, i32 2
  %46 = load %struct.FT_OutlineGlyphRec_*, %struct.FT_OutlineGlyphRec_** %outline_glyph11, align 8, !tbaa !35
  %47 = bitcast %struct.FT_OutlineGlyphRec_* %46 to i8*
  call void @FF_free(%struct.FT_MemoryRec_* %44, i8* %47) #5
  %48 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %outline_glyph12 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %48, i32 0, i32 2
  store %struct.FT_OutlineGlyphRec_* null, %struct.FT_OutlineGlyphRec_** %outline_glyph12, align 8, !tbaa !35
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.6, %if.end
  %49 = load %struct.gs_fapi_char_ref*, %struct.gs_fapi_char_ref** %a_char_ref.addr, align 8, !tbaa !1
  %is_glyph_index = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %49, i32 0, i32 3
  %50 = load i32, i32* %is_glyph_index, align 4, !tbaa !90
  %tobool14 = icmp ne i32 %50, 0
  br i1 %tobool14, label %if.else.28, label %if.then.15

if.then.15:                                       ; preds = %if.end.13
  %51 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8, !tbaa !1
  %num_charmaps = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %51, i32 0, i32 9
  %52 = load i32, i32* %num_charmaps, align 4, !tbaa !70
  %tobool16 = icmp ne i32 %52, 0
  br i1 %tobool16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.then.15
  %53 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8, !tbaa !1
  %54 = load i32, i32* %index, align 4, !tbaa !5
  %conv18 = sext i32 %54 to i64
  %call19 = call i32 @FT_Get_Char_Index(%struct.FT_FaceRec_* %53, i64 %conv18) #5
  store i32 %call19, i32* %index, align 4, !tbaa !5
  br label %if.end.27

if.else:                                          ; preds = %if.then.15
  %55 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %is_type1 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %55, i32 0, i32 7
  %56 = load i32, i32* %is_type1, align 4, !tbaa !37
  %tobool20 = icmp ne i32 %56, 0
  br i1 %tobool20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %if.else
  store i32 0, i32* %index, align 4, !tbaa !5
  br label %if.end.26

if.else.22:                                       ; preds = %if.else
  %57 = load %struct.gs_fapi_char_ref*, %struct.gs_fapi_char_ref** %a_char_ref.addr, align 8, !tbaa !1
  %char_codes23 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %57, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [4 x i64], [4 x i64]* %char_codes23, i32 0, i64 0
  %58 = load i64, i64* %arrayidx24, align 8, !tbaa !22
  %conv25 = trunc i64 %58 to i32
  store i32 %conv25, i32* %index, align 4, !tbaa !5
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.22, %if.then.21
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.17
  br label %if.end.47

if.else.28:                                       ; preds = %if.end.13
  %59 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %is_cid = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %59, i32 0, i32 8
  %60 = load i32, i32* %is_cid, align 4, !tbaa !36
  %tobool29 = icmp ne i32 %60, 0
  br i1 %tobool29, label %if.end.46, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else.28
  %61 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %ft_inc_int = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %61, i32 0, i32 6
  %62 = load %struct.FT_Incremental_InterfaceRec_*, %struct.FT_Incremental_InterfaceRec_** %ft_inc_int, align 8, !tbaa !143
  %tobool30 = icmp ne %struct.FT_Incremental_InterfaceRec_* %62, null
  br i1 %tobool30, label %if.end.46, label %land.lhs.true.31

land.lhs.true.31:                                 ; preds = %land.lhs.true
  %63 = load i32, i32* %index, align 4, !tbaa !5
  %cmp = icmp eq i32 %63, 0
  br i1 %cmp, label %if.then.40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.31
  %64 = load %struct.gs_fapi_char_ref*, %struct.gs_fapi_char_ref** %a_char_ref.addr, align 8, !tbaa !1
  %client_char_code = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %64, i32 0, i32 0
  %65 = load i64, i64* %client_char_code, align 8, !tbaa !173
  %cmp33 = icmp ne i64 %65, -1
  br i1 %cmp33, label %land.lhs.true.35, label %if.end.46

land.lhs.true.35:                                 ; preds = %lor.lhs.false
  %66 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8, !tbaa !1
  %67 = load %struct.gs_fapi_char_ref*, %struct.gs_fapi_char_ref** %a_char_ref.addr, align 8, !tbaa !1
  %client_char_code36 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %67, i32 0, i32 0
  %68 = load i64, i64* %client_char_code36, align 8, !tbaa !173
  %call37 = call i32 @FT_Get_Char_Index(%struct.FT_FaceRec_* %66, i64 %68) #5
  %cmp38 = icmp ule i32 %call37, 0
  br i1 %cmp38, label %if.then.40, label %if.end.46

if.then.40:                                       ; preds = %land.lhs.true.35, %land.lhs.true.31
  %69 = bitcast i32* %tmp_ind to i8*
  call void @llvm.lifetime.start(i64 4, i8* %69) #1
  %70 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8, !tbaa !1
  %call41 = call i32 @FT_Get_Char_Index(%struct.FT_FaceRec_* %70, i64 32) #5
  store i32 %call41, i32* %tmp_ind, align 4, !tbaa !5
  %cmp42 = icmp sgt i32 %call41, 0
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.then.40
  %71 = load i32, i32* %tmp_ind, align 4, !tbaa !5
  store i32 %71, i32* %index, align 4, !tbaa !5
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %if.then.40
  %72 = bitcast i32* %tmp_ind to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %land.lhs.true.35, %lor.lhs.false, %land.lhs.true, %if.else.28
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.end.27
  %73 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %ft_inc_int48 = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %73, i32 0, i32 6
  %74 = load %struct.FT_Incremental_InterfaceRec_*, %struct.FT_Incremental_InterfaceRec_** %ft_inc_int48, align 8, !tbaa !143
  %tobool49 = icmp ne %struct.FT_Incremental_InterfaceRec_* %74, null
  br i1 %tobool49, label %if.then.50, label %if.end.52

if.then.50:                                       ; preds = %if.end.47
  %75 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %76 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %ft_inc_int51 = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %76, i32 0, i32 6
  %77 = load %struct.FT_Incremental_InterfaceRec_*, %struct.FT_Incremental_InterfaceRec_** %ft_inc_int51, align 8, !tbaa !143
  %object = getelementptr inbounds %struct.FT_Incremental_InterfaceRec_, %struct.FT_Incremental_InterfaceRec_* %77, i32 0, i32 1
  %78 = load %struct.FT_IncrementalRec_*, %struct.FT_IncrementalRec_** %object, align 8, !tbaa !140
  %fapi_font = getelementptr inbounds %struct.FT_IncrementalRec_, %struct.FT_IncrementalRec_* %78, i32 0, i32 0
  store %struct.gs_fapi_font_s* %75, %struct.gs_fapi_font_s** %fapi_font, align 8, !tbaa !155
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.50, %if.end.47
  %79 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %ft_inc_int53 = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %79, i32 0, i32 6
  %80 = load %struct.FT_Incremental_InterfaceRec_*, %struct.FT_Incremental_InterfaceRec_** %ft_inc_int53, align 8, !tbaa !143
  %tobool54 = icmp ne %struct.FT_Incremental_InterfaceRec_* %80, null
  br i1 %tobool54, label %land.lhs.true.55, label %if.else.73

land.lhs.true.55:                                 ; preds = %if.end.52
  %81 = load %struct.gs_fapi_char_ref*, %struct.gs_fapi_char_ref** %a_char_ref.addr, align 8, !tbaa !1
  %metrics_type = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %81, i32 0, i32 6
  %82 = load i32, i32* %metrics_type, align 4, !tbaa !174
  %cmp56 = icmp ne i32 %82, 0
  br i1 %cmp56, label %if.then.58, label %if.else.73

if.then.58:                                       ; preds = %land.lhs.true.55
  %83 = bitcast %struct.FT_Incremental_MetricsRec_** %m to i8*
  call void @llvm.lifetime.start(i64 8, i8* %83) #1
  %84 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %ft_inc_int59 = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %84, i32 0, i32 6
  %85 = load %struct.FT_Incremental_InterfaceRec_*, %struct.FT_Incremental_InterfaceRec_** %ft_inc_int59, align 8, !tbaa !143
  %object60 = getelementptr inbounds %struct.FT_Incremental_InterfaceRec_, %struct.FT_Incremental_InterfaceRec_* %85, i32 0, i32 1
  %86 = load %struct.FT_IncrementalRec_*, %struct.FT_IncrementalRec_** %object60, align 8, !tbaa !140
  %glyph_metrics = getelementptr inbounds %struct.FT_IncrementalRec_, %struct.FT_IncrementalRec_* %86, i32 0, i32 4
  store %struct.FT_Incremental_MetricsRec_* %glyph_metrics, %struct.FT_Incremental_MetricsRec_** %m, align 8, !tbaa !1
  %87 = load %struct.gs_fapi_char_ref*, %struct.gs_fapi_char_ref** %a_char_ref.addr, align 8, !tbaa !1
  %sb_x = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %87, i32 0, i32 7
  %88 = load i32, i32* %sb_x, align 4, !tbaa !175
  %shr = ashr i32 %88, 16
  %conv61 = sext i32 %shr to i64
  %89 = load %struct.FT_Incremental_MetricsRec_*, %struct.FT_Incremental_MetricsRec_** %m, align 8, !tbaa !1
  %bearing_x = getelementptr inbounds %struct.FT_Incremental_MetricsRec_, %struct.FT_Incremental_MetricsRec_* %89, i32 0, i32 0
  store i64 %conv61, i64* %bearing_x, align 8, !tbaa !176
  %90 = load %struct.gs_fapi_char_ref*, %struct.gs_fapi_char_ref** %a_char_ref.addr, align 8, !tbaa !1
  %sb_y = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %90, i32 0, i32 8
  %91 = load i32, i32* %sb_y, align 4, !tbaa !177
  %shr62 = ashr i32 %91, 16
  %conv63 = sext i32 %shr62 to i64
  %92 = load %struct.FT_Incremental_MetricsRec_*, %struct.FT_Incremental_MetricsRec_** %m, align 8, !tbaa !1
  %bearing_y = getelementptr inbounds %struct.FT_Incremental_MetricsRec_, %struct.FT_Incremental_MetricsRec_* %92, i32 0, i32 1
  store i64 %conv63, i64* %bearing_y, align 8, !tbaa !178
  %93 = load %struct.gs_fapi_char_ref*, %struct.gs_fapi_char_ref** %a_char_ref.addr, align 8, !tbaa !1
  %aw_x = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %93, i32 0, i32 9
  %94 = load i32, i32* %aw_x, align 4, !tbaa !179
  %shr64 = ashr i32 %94, 16
  %conv65 = sext i32 %shr64 to i64
  %95 = load %struct.FT_Incremental_MetricsRec_*, %struct.FT_Incremental_MetricsRec_** %m, align 8, !tbaa !1
  %advance = getelementptr inbounds %struct.FT_Incremental_MetricsRec_, %struct.FT_Incremental_MetricsRec_* %95, i32 0, i32 2
  store i64 %conv65, i64* %advance, align 8, !tbaa !168
  %96 = load i32, i32* %index, align 4, !tbaa !5
  %conv66 = sext i32 %96 to i64
  %97 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %ft_inc_int67 = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %97, i32 0, i32 6
  %98 = load %struct.FT_Incremental_InterfaceRec_*, %struct.FT_Incremental_InterfaceRec_** %ft_inc_int67, align 8, !tbaa !143
  %object68 = getelementptr inbounds %struct.FT_Incremental_InterfaceRec_, %struct.FT_Incremental_InterfaceRec_* %98, i32 0, i32 1
  %99 = load %struct.FT_IncrementalRec_*, %struct.FT_IncrementalRec_** %object68, align 8, !tbaa !140
  %glyph_metrics_index = getelementptr inbounds %struct.FT_IncrementalRec_, %struct.FT_IncrementalRec_* %99, i32 0, i32 5
  store i64 %conv66, i64* %glyph_metrics_index, align 8, !tbaa !161
  %100 = load %struct.gs_fapi_char_ref*, %struct.gs_fapi_char_ref** %a_char_ref.addr, align 8, !tbaa !1
  %metrics_type69 = getelementptr inbounds %struct.gs_fapi_char_ref, %struct.gs_fapi_char_ref* %100, i32 0, i32 6
  %101 = load i32, i32* %metrics_type69, align 4, !tbaa !174
  %102 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %ft_inc_int70 = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %102, i32 0, i32 6
  %103 = load %struct.FT_Incremental_InterfaceRec_*, %struct.FT_Incremental_InterfaceRec_** %ft_inc_int70, align 8, !tbaa !143
  %object71 = getelementptr inbounds %struct.FT_Incremental_InterfaceRec_, %struct.FT_Incremental_InterfaceRec_* %103, i32 0, i32 1
  %104 = load %struct.FT_IncrementalRec_*, %struct.FT_IncrementalRec_** %object71, align 8, !tbaa !140
  %metrics_type72 = getelementptr inbounds %struct.FT_IncrementalRec_, %struct.FT_IncrementalRec_* %104, i32 0, i32 6
  store i32 %101, i32* %metrics_type72, align 4, !tbaa !162
  %105 = bitcast %struct.FT_Incremental_MetricsRec_** %m to i8*
  call void @llvm.lifetime.end(i64 8, i8* %105) #1
  br label %if.end.81

if.else.73:                                       ; preds = %land.lhs.true.55, %if.end.52
  %106 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %ft_inc_int74 = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %106, i32 0, i32 6
  %107 = load %struct.FT_Incremental_InterfaceRec_*, %struct.FT_Incremental_InterfaceRec_** %ft_inc_int74, align 8, !tbaa !143
  %tobool75 = icmp ne %struct.FT_Incremental_InterfaceRec_* %107, null
  br i1 %tobool75, label %if.then.76, label %if.end.80

if.then.76:                                       ; preds = %if.else.73
  %108 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %ft_inc_int77 = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %108, i32 0, i32 6
  %109 = load %struct.FT_Incremental_InterfaceRec_*, %struct.FT_Incremental_InterfaceRec_** %ft_inc_int77, align 8, !tbaa !143
  %object78 = getelementptr inbounds %struct.FT_Incremental_InterfaceRec_, %struct.FT_Incremental_InterfaceRec_* %109, i32 0, i32 1
  %110 = load %struct.FT_IncrementalRec_*, %struct.FT_IncrementalRec_** %object78, align 8, !tbaa !140
  %glyph_metrics_index79 = getelementptr inbounds %struct.FT_IncrementalRec_, %struct.FT_IncrementalRec_* %110, i32 0, i32 5
  store i64 4294967295, i64* %glyph_metrics_index79, align 8, !tbaa !161
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.76, %if.else.73
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.then.58
  %111 = load i32, i32* %ft_error, align 4, !tbaa !5
  %tobool82 = icmp ne i32 %111, 0
  br i1 %tobool82, label %if.end.112, label %if.then.83

if.then.83:                                       ; preds = %if.end.81
  %112 = load i8*, i8** %saved_char_data, align 8, !tbaa !1
  %113 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %char_data84 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %113, i32 0, i32 17
  store i8* %112, i8** %char_data84, align 8, !tbaa !166
  %114 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %is_mtx_skipped = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %114, i32 0, i32 10
  %115 = load i32, i32* %is_mtx_skipped, align 4, !tbaa !180
  %tobool85 = icmp ne i32 %115, 0
  br i1 %tobool85, label %if.else.102, label %land.lhs.true.86

land.lhs.true.86:                                 ; preds = %if.then.83
  %116 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %is_type187 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %116, i32 0, i32 7
  %117 = load i32, i32* %is_type187, align 4, !tbaa !37
  %tobool88 = icmp ne i32 %117, 0
  br i1 %tobool88, label %if.else.102, label %if.then.89

if.then.89:                                       ; preds = %land.lhs.true.86
  %118 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %a_server.addr, align 8, !tbaa !1
  %grid_fit = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %118, i32 0, i32 7
  %119 = load i32, i32* %grid_fit, align 4, !tbaa !181
  %cmp90 = icmp eq i32 %119, 0
  br i1 %cmp90, label %if.then.92, label %if.else.93

if.then.92:                                       ; preds = %if.then.89
  store i32 32770, i32* %load_flags, align 4, !tbaa !5
  br label %if.end.99

if.else.93:                                       ; preds = %if.then.89
  %120 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %a_server.addr, align 8, !tbaa !1
  %grid_fit94 = getelementptr inbounds %struct.gs_fapi_server_s, %struct.gs_fapi_server_s* %120, i32 0, i32 7
  %121 = load i32, i32* %grid_fit94, align 4, !tbaa !181
  %cmp95 = icmp eq i32 %121, 2
  br i1 %cmp95, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %if.else.93
  store i32 32, i32* %load_flags, align 4, !tbaa !5
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.97, %if.else.93
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %if.then.92
  %122 = load i32, i32* %load_flags, align 4, !tbaa !5
  %conv100 = sext i32 %122 to i64
  %or = or i64 %conv100, 12296
  %conv101 = trunc i64 %or to i32
  store i32 %conv101, i32* %load_flags, align 4, !tbaa !5
  br label %if.end.106

if.else.102:                                      ; preds = %land.lhs.true.86, %if.then.83
  %123 = load i32, i32* %load_flags, align 4, !tbaa !5
  %conv103 = sext i32 %123 to i64
  %or104 = or i64 %conv103, 12298
  %conv105 = trunc i64 %or104 to i32
  store i32 %conv105, i32* %load_flags, align 4, !tbaa !5
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.102, %if.end.99
  %124 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8, !tbaa !1
  %125 = load i32, i32* %index, align 4, !tbaa !5
  %126 = load i32, i32* %load_flags, align 4, !tbaa !5
  %call107 = call i32 @FT_Load_Glyph(%struct.FT_FaceRec_* %124, i32 %125, i32 %126) #5
  store i32 %call107, i32* %ft_error, align 4, !tbaa !5
  %127 = load i32, i32* %ft_error, align 4, !tbaa !5
  %cmp108 = icmp eq i32 %127, 2
  br i1 %cmp108, label %if.then.110, label %if.end.111

if.then.110:                                      ; preds = %if.end.106
  %128 = load i32, i32* %index, align 4, !tbaa !5
  %add = add nsw i32 %128, 1
  store i32 %add, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.373

if.end.111:                                       ; preds = %if.end.106
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %if.end.81
  %129 = load i32, i32* %ft_error, align 4, !tbaa !5
  %cmp113 = icmp eq i32 %129, 6
  br i1 %cmp113, label %if.then.127, label %lor.lhs.false.115

lor.lhs.false.115:                                ; preds = %if.end.112
  %130 = load i32, i32* %ft_error, align 4, !tbaa !5
  %cmp116 = icmp eq i32 %130, 134
  br i1 %cmp116, label %if.then.127, label %lor.lhs.false.118

lor.lhs.false.118:                                ; preds = %lor.lhs.false.115
  %131 = load i32, i32* %ft_error, align 4, !tbaa !5
  %cmp119 = icmp eq i32 %131, 16
  br i1 %cmp119, label %if.then.127, label %lor.lhs.false.121

lor.lhs.false.121:                                ; preds = %lor.lhs.false.118
  %132 = load i32, i32* %ft_error, align 4, !tbaa !5
  %cmp122 = icmp sge i32 %132, 128
  br i1 %cmp122, label %land.lhs.true.124, label %if.end.135

land.lhs.true.124:                                ; preds = %lor.lhs.false.121
  %133 = load i32, i32* %ft_error, align 4, !tbaa !5
  %cmp125 = icmp sle i32 %133, 141
  br i1 %cmp125, label %if.then.127, label %if.end.135

if.then.127:                                      ; preds = %land.lhs.true.124, %lor.lhs.false.118, %lor.lhs.false.115, %if.end.112
  %134 = load i8*, i8** %saved_char_data, align 8, !tbaa !1
  %135 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %char_data128 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %135, i32 0, i32 17
  store i8* %134, i8** %char_data128, align 8, !tbaa !166
  %136 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8, !tbaa !1
  %face_flags = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %136, i32 0, i32 2
  %137 = load i64, i64* %face_flags, align 8, !tbaa !86
  store i64 %137, i64* %fflags, align 8, !tbaa !22
  %138 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8, !tbaa !1
  %face_flags129 = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %138, i32 0, i32 2
  %139 = load i64, i64* %face_flags129, align 8, !tbaa !86
  %and = and i64 %139, -8193
  store i64 %and, i64* %face_flags129, align 8, !tbaa !86
  %140 = load i32, i32* %load_flags, align 4, !tbaa !5
  %conv130 = sext i32 %140 to i64
  %or131 = or i64 %conv130, 2
  %conv132 = trunc i64 %or131 to i32
  store i32 %conv132, i32* %load_flags, align 4, !tbaa !5
  %141 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8, !tbaa !1
  %142 = load i32, i32* %index, align 4, !tbaa !5
  %143 = load i32, i32* %load_flags, align 4, !tbaa !5
  %call133 = call i32 @FT_Load_Glyph(%struct.FT_FaceRec_* %141, i32 %142, i32 %143) #5
  store i32 %call133, i32* %ft_error, align 4, !tbaa !5
  %144 = load i64, i64* %fflags, align 8, !tbaa !22
  %145 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8, !tbaa !1
  %face_flags134 = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %145, i32 0, i32 2
  store i64 %144, i64* %face_flags134, align 8, !tbaa !86
  br label %if.end.135

if.end.135:                                       ; preds = %if.then.127, %land.lhs.true.124, %lor.lhs.false.121
  %146 = load i32, i32* %ft_error, align 4, !tbaa !5
  %cmp136 = icmp eq i32 %146, 64
  br i1 %cmp136, label %if.then.141, label %lor.lhs.false.138

lor.lhs.false.138:                                ; preds = %if.end.135
  %147 = load i32, i32* %ft_error, align 4, !tbaa !5
  %cmp139 = icmp eq i32 %147, 10
  br i1 %cmp139, label %if.then.141, label %if.end.142

if.then.141:                                      ; preds = %lor.lhs.false.138, %if.end.135
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.373

if.end.142:                                       ; preds = %lor.lhs.false.138
  %148 = load i32, i32* %ft_error, align 4, !tbaa !5
  %tobool143 = icmp ne i32 %148, 0
  br i1 %tobool143, label %if.then.144, label %if.end.154

if.then.144:                                      ; preds = %if.end.142
  %149 = bitcast %struct.gs_string_s* %notdef_str to i8*
  call void @llvm.lifetime.start(i64 16, i8* %149) #1
  %data = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %notdef_str, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8** %data, align 8, !tbaa !182
  %size = getelementptr inbounds %struct.gs_string_s, %struct.gs_string_s* %notdef_str, i32 0, i32 1
  store i32 7, i32* %size, align 4, !tbaa !184
  %150 = bitcast %struct.gs_string_s* %notdef_str to i8*
  %151 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %char_data145 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %151, i32 0, i32 17
  store i8* %150, i8** %char_data145, align 8, !tbaa !166
  %152 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %char_data_len146 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %152, i32 0, i32 18
  store i32 0, i32* %char_data_len146, align 4, !tbaa !172
  %153 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8, !tbaa !1
  %face_flags147 = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %153, i32 0, i32 2
  %154 = load i64, i64* %face_flags147, align 8, !tbaa !86
  store i64 %154, i64* %fflags, align 8, !tbaa !22
  %155 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8, !tbaa !1
  %face_flags148 = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %155, i32 0, i32 2
  %156 = load i64, i64* %face_flags148, align 8, !tbaa !86
  %and149 = and i64 %156, -8193
  store i64 %and149, i64* %face_flags148, align 8, !tbaa !86
  %157 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8, !tbaa !1
  %158 = load i32, i32* %load_flags, align 4, !tbaa !5
  %call150 = call i32 @FT_Load_Glyph(%struct.FT_FaceRec_* %157, i32 0, i32 %158) #5
  store i32 %call150, i32* %ft_error_fb, align 4, !tbaa !5
  %159 = load i64, i64* %fflags, align 8, !tbaa !22
  %160 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8, !tbaa !1
  %face_flags151 = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %160, i32 0, i32 2
  store i64 %159, i64* %face_flags151, align 8, !tbaa !86
  %161 = load i8*, i8** %saved_char_data, align 8, !tbaa !1
  %162 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %char_data152 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %162, i32 0, i32 17
  store i8* %161, i8** %char_data152, align 8, !tbaa !166
  %163 = load i32, i32* %saved_char_data_len, align 4, !tbaa !5
  %164 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %char_data_len153 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %164, i32 0, i32 18
  store i32 %163, i32* %char_data_len153, align 4, !tbaa !172
  %165 = bitcast %struct.gs_string_s* %notdef_str to i8*
  call void @llvm.lifetime.end(i64 16, i8* %165) #1
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.144, %if.end.142
  %166 = load i32, i32* %ft_error, align 4, !tbaa !5
  %tobool155 = icmp ne i32 %166, 0
  br i1 %tobool155, label %lor.lhs.false.156, label %land.lhs.true.158

lor.lhs.false.156:                                ; preds = %if.end.154
  %167 = load i32, i32* %ft_error_fb, align 4, !tbaa !5
  %tobool157 = icmp ne i32 %167, 0
  br i1 %tobool157, label %if.end.247, label %land.lhs.true.158

land.lhs.true.158:                                ; preds = %lor.lhs.false.156, %if.end.154
  %168 = load %struct.gs_fapi_metrics_s*, %struct.gs_fapi_metrics_s** %a_metrics.addr, align 8, !tbaa !1
  %tobool159 = icmp ne %struct.gs_fapi_metrics_s* %168, null
  br i1 %tobool159, label %if.then.160, label %if.end.247

if.then.160:                                      ; preds = %land.lhs.true.158
  %169 = bitcast i64* %hx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %169) #1
  %170 = bitcast i64* %hy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %170) #1
  %171 = bitcast i64* %vadv to i8*
  call void @llvm.lifetime.start(i64 8, i8* %171) #1
  %172 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8, !tbaa !1
  %glyph = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %172, i32 0, i32 21
  %173 = load %struct.FT_GlyphSlotRec_*, %struct.FT_GlyphSlotRec_** %glyph, align 8, !tbaa !185
  %metrics = getelementptr inbounds %struct.FT_GlyphSlotRec_, %struct.FT_GlyphSlotRec_* %173, i32 0, i32 5
  %horiBearingX = getelementptr inbounds %struct.FT_Glyph_Metrics_, %struct.FT_Glyph_Metrics_* %metrics, i32 0, i32 2
  %174 = load i64, i64* %horiBearingX, align 8, !tbaa !186
  %conv161 = sitofp i64 %174 to double
  %175 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8, !tbaa !1
  %units_per_EM = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %175, i32 0, i32 13
  %176 = load i16, i16* %units_per_EM, align 2, !tbaa !85
  %conv162 = zext i16 %176 to i32
  %conv163 = sitofp i32 %conv162 to double
  %mul = fmul double %conv161, %conv163
  %mul164 = fmul double %mul, 7.200000e+01
  %177 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %177, i32 0, i32 2
  %178 = load i64, i64* %width, align 8, !tbaa !66
  %conv165 = sitofp i64 %178 to double
  %179 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %horz_res = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %179, i32 0, i32 4
  %180 = load i32, i32* %horz_res, align 4, !tbaa !63
  %conv166 = uitofp i32 %180 to double
  %mul167 = fmul double %conv165, %conv166
  %div = fdiv double %mul164, %mul167
  %conv168 = fptosi double %div to i64
  store i64 %conv168, i64* %hx, align 8, !tbaa !22
  %181 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8, !tbaa !1
  %glyph169 = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %181, i32 0, i32 21
  %182 = load %struct.FT_GlyphSlotRec_*, %struct.FT_GlyphSlotRec_** %glyph169, align 8, !tbaa !185
  %metrics170 = getelementptr inbounds %struct.FT_GlyphSlotRec_, %struct.FT_GlyphSlotRec_* %182, i32 0, i32 5
  %horiBearingY = getelementptr inbounds %struct.FT_Glyph_Metrics_, %struct.FT_Glyph_Metrics_* %metrics170, i32 0, i32 3
  %183 = load i64, i64* %horiBearingY, align 8, !tbaa !190
  %conv171 = sitofp i64 %183 to double
  %184 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8, !tbaa !1
  %units_per_EM172 = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %184, i32 0, i32 13
  %185 = load i16, i16* %units_per_EM172, align 2, !tbaa !85
  %conv173 = zext i16 %185 to i32
  %conv174 = sitofp i32 %conv173 to double
  %mul175 = fmul double %conv171, %conv174
  %mul176 = fmul double %mul175, 7.200000e+01
  %186 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %186, i32 0, i32 3
  %187 = load i64, i64* %height, align 8, !tbaa !67
  %conv177 = sitofp i64 %187 to double
  %188 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %vert_res = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %188, i32 0, i32 5
  %189 = load i32, i32* %vert_res, align 4, !tbaa !64
  %conv178 = uitofp i32 %189 to double
  %mul179 = fmul double %conv177, %conv178
  %div180 = fdiv double %mul176, %mul179
  %conv181 = fptosi double %div180 to i64
  store i64 %conv181, i64* %hy, align 8, !tbaa !22
  %190 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8, !tbaa !1
  %glyph182 = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %190, i32 0, i32 21
  %191 = load %struct.FT_GlyphSlotRec_*, %struct.FT_GlyphSlotRec_** %glyph182, align 8, !tbaa !185
  %metrics183 = getelementptr inbounds %struct.FT_GlyphSlotRec_, %struct.FT_GlyphSlotRec_* %191, i32 0, i32 5
  %width184 = getelementptr inbounds %struct.FT_Glyph_Metrics_, %struct.FT_Glyph_Metrics_* %metrics183, i32 0, i32 0
  %192 = load i64, i64* %width184, align 8, !tbaa !191
  %conv185 = sitofp i64 %192 to double
  %193 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8, !tbaa !1
  %units_per_EM186 = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %193, i32 0, i32 13
  %194 = load i16, i16* %units_per_EM186, align 2, !tbaa !85
  %conv187 = zext i16 %194 to i32
  %conv188 = sitofp i32 %conv187 to double
  %mul189 = fmul double %conv185, %conv188
  %mul190 = fmul double %mul189, 7.200000e+01
  %195 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %width191 = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %195, i32 0, i32 2
  %196 = load i64, i64* %width191, align 8, !tbaa !66
  %conv192 = sitofp i64 %196 to double
  %197 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %horz_res193 = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %197, i32 0, i32 4
  %198 = load i32, i32* %horz_res193, align 4, !tbaa !63
  %conv194 = uitofp i32 %198 to double
  %mul195 = fmul double %conv192, %conv194
  %div196 = fdiv double %mul190, %mul195
  %conv197 = fptosi double %div196 to i64
  store i64 %conv197, i64* %w, align 8, !tbaa !22
  %199 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8, !tbaa !1
  %glyph198 = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %199, i32 0, i32 21
  %200 = load %struct.FT_GlyphSlotRec_*, %struct.FT_GlyphSlotRec_** %glyph198, align 8, !tbaa !185
  %metrics199 = getelementptr inbounds %struct.FT_GlyphSlotRec_, %struct.FT_GlyphSlotRec_* %200, i32 0, i32 5
  %height200 = getelementptr inbounds %struct.FT_Glyph_Metrics_, %struct.FT_Glyph_Metrics_* %metrics199, i32 0, i32 1
  %201 = load i64, i64* %height200, align 8, !tbaa !192
  %conv201 = sitofp i64 %201 to double
  %202 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8, !tbaa !1
  %units_per_EM202 = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %202, i32 0, i32 13
  %203 = load i16, i16* %units_per_EM202, align 2, !tbaa !85
  %conv203 = zext i16 %203 to i32
  %conv204 = sitofp i32 %conv203 to double
  %mul205 = fmul double %conv201, %conv204
  %mul206 = fmul double %mul205, 7.200000e+01
  %204 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %height207 = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %204, i32 0, i32 3
  %205 = load i64, i64* %height207, align 8, !tbaa !67
  %conv208 = sitofp i64 %205 to double
  %206 = load %struct.ff_face_s*, %struct.ff_face_s** %face, align 8, !tbaa !1
  %vert_res209 = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %206, i32 0, i32 5
  %207 = load i32, i32* %vert_res209, align 4, !tbaa !64
  %conv210 = uitofp i32 %207 to double
  %mul211 = fmul double %conv208, %conv210
  %div212 = fdiv double %mul206, %mul211
  %conv213 = fptosi double %div212 to i64
  store i64 %conv213, i64* %h, align 8, !tbaa !22
  %208 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %is_type1214 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %208, i32 0, i32 7
  %209 = load i32, i32* %is_type1214, align 4, !tbaa !37
  %tobool215 = icmp ne i32 %209, 0
  br i1 %tobool215, label %if.then.226, label %lor.lhs.false.216

lor.lhs.false.216:                                ; preds = %if.then.160
  %210 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %full_font_buf = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %210, i32 0, i32 4
  %211 = load i8*, i8** %full_font_buf, align 8, !tbaa !39
  %tobool217 = icmp ne i8* %211, null
  br i1 %tobool217, label %land.lhs.true.220, label %lor.lhs.false.218

lor.lhs.false.218:                                ; preds = %lor.lhs.false.216
  %212 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %font_file_path = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %212, i32 0, i32 3
  %213 = load i8*, i8** %font_file_path, align 8, !tbaa !38
  %tobool219 = icmp ne i8* %213, null
  br i1 %tobool219, label %land.lhs.true.220, label %if.else.228

land.lhs.true.220:                                ; preds = %lor.lhs.false.218, %lor.lhs.false.216
  %214 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %is_vertical = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %214, i32 0, i32 11
  %215 = load i32, i32* %is_vertical, align 4, !tbaa !193
  %tobool221 = icmp ne i32 %215, 0
  br i1 %tobool221, label %land.lhs.true.222, label %if.else.228

land.lhs.true.222:                                ; preds = %land.lhs.true.220
  %216 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8, !tbaa !1
  %face_flags223 = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %216, i32 0, i32 2
  %217 = load i64, i64* %face_flags223, align 8, !tbaa !86
  %and224 = and i64 %217, 32
  %tobool225 = icmp ne i64 %and224, 0
  br i1 %tobool225, label %if.then.226, label %if.else.228

if.then.226:                                      ; preds = %land.lhs.true.222, %if.then.160
  %218 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8, !tbaa !1
  %glyph227 = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %218, i32 0, i32 21
  %219 = load %struct.FT_GlyphSlotRec_*, %struct.FT_GlyphSlotRec_** %glyph227, align 8, !tbaa !185
  %linearVertAdvance = getelementptr inbounds %struct.FT_GlyphSlotRec_, %struct.FT_GlyphSlotRec_* %219, i32 0, i32 7
  %220 = load i64, i64* %linearVertAdvance, align 8, !tbaa !194
  store i64 %220, i64* %vadv, align 8, !tbaa !22
  br label %if.end.229

if.else.228:                                      ; preds = %land.lhs.true.222, %land.lhs.true.220, %lor.lhs.false.218
  store i64 0, i64* %vadv, align 8, !tbaa !22
  br label %if.end.229

if.end.229:                                       ; preds = %if.else.228, %if.then.226
  %221 = load i64, i64* %hx, align 8, !tbaa !22
  %conv230 = trunc i64 %221 to i32
  %222 = load %struct.gs_fapi_metrics_s*, %struct.gs_fapi_metrics_s** %a_metrics.addr, align 8, !tbaa !1
  %bbox_x0 = getelementptr inbounds %struct.gs_fapi_metrics_s, %struct.gs_fapi_metrics_s* %222, i32 0, i32 0
  store i32 %conv230, i32* %bbox_x0, align 4, !tbaa !195
  %223 = load i64, i64* %hy, align 8, !tbaa !22
  %224 = load i64, i64* %h, align 8, !tbaa !22
  %sub = sub nsw i64 %223, %224
  %conv231 = trunc i64 %sub to i32
  %225 = load %struct.gs_fapi_metrics_s*, %struct.gs_fapi_metrics_s** %a_metrics.addr, align 8, !tbaa !1
  %bbox_y0 = getelementptr inbounds %struct.gs_fapi_metrics_s, %struct.gs_fapi_metrics_s* %225, i32 0, i32 1
  store i32 %conv231, i32* %bbox_y0, align 4, !tbaa !197
  %226 = load %struct.gs_fapi_metrics_s*, %struct.gs_fapi_metrics_s** %a_metrics.addr, align 8, !tbaa !1
  %bbox_x0232 = getelementptr inbounds %struct.gs_fapi_metrics_s, %struct.gs_fapi_metrics_s* %226, i32 0, i32 0
  %227 = load i32, i32* %bbox_x0232, align 4, !tbaa !195
  %conv233 = sext i32 %227 to i64
  %228 = load i64, i64* %w, align 8, !tbaa !22
  %add234 = add nsw i64 %conv233, %228
  %conv235 = trunc i64 %add234 to i32
  %229 = load %struct.gs_fapi_metrics_s*, %struct.gs_fapi_metrics_s** %a_metrics.addr, align 8, !tbaa !1
  %bbox_x1 = getelementptr inbounds %struct.gs_fapi_metrics_s, %struct.gs_fapi_metrics_s* %229, i32 0, i32 2
  store i32 %conv235, i32* %bbox_x1, align 4, !tbaa !198
  %230 = load %struct.gs_fapi_metrics_s*, %struct.gs_fapi_metrics_s** %a_metrics.addr, align 8, !tbaa !1
  %bbox_y0236 = getelementptr inbounds %struct.gs_fapi_metrics_s, %struct.gs_fapi_metrics_s* %230, i32 0, i32 1
  %231 = load i32, i32* %bbox_y0236, align 4, !tbaa !197
  %conv237 = sext i32 %231 to i64
  %232 = load i64, i64* %h, align 8, !tbaa !22
  %add238 = add nsw i64 %conv237, %232
  %conv239 = trunc i64 %add238 to i32
  %233 = load %struct.gs_fapi_metrics_s*, %struct.gs_fapi_metrics_s** %a_metrics.addr, align 8, !tbaa !1
  %bbox_y1 = getelementptr inbounds %struct.gs_fapi_metrics_s, %struct.gs_fapi_metrics_s* %233, i32 0, i32 3
  store i32 %conv239, i32* %bbox_y1, align 4, !tbaa !199
  %234 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8, !tbaa !1
  %glyph240 = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %234, i32 0, i32 21
  %235 = load %struct.FT_GlyphSlotRec_*, %struct.FT_GlyphSlotRec_** %glyph240, align 8, !tbaa !185
  %linearHoriAdvance = getelementptr inbounds %struct.FT_GlyphSlotRec_, %struct.FT_GlyphSlotRec_* %235, i32 0, i32 6
  %236 = load i64, i64* %linearHoriAdvance, align 8, !tbaa !200
  %conv241 = trunc i64 %236 to i32
  %237 = load %struct.gs_fapi_metrics_s*, %struct.gs_fapi_metrics_s** %a_metrics.addr, align 8, !tbaa !1
  %escapement = getelementptr inbounds %struct.gs_fapi_metrics_s, %struct.gs_fapi_metrics_s* %237, i32 0, i32 4
  store i32 %conv241, i32* %escapement, align 4, !tbaa !201
  %238 = load i64, i64* %vadv, align 8, !tbaa !22
  %conv242 = trunc i64 %238 to i32
  %239 = load %struct.gs_fapi_metrics_s*, %struct.gs_fapi_metrics_s** %a_metrics.addr, align 8, !tbaa !1
  %v_escapement = getelementptr inbounds %struct.gs_fapi_metrics_s, %struct.gs_fapi_metrics_s* %239, i32 0, i32 5
  store i32 %conv242, i32* %v_escapement, align 4, !tbaa !202
  %240 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8, !tbaa !1
  %units_per_EM243 = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %240, i32 0, i32 13
  %241 = load i16, i16* %units_per_EM243, align 2, !tbaa !85
  %conv244 = zext i16 %241 to i32
  %242 = load %struct.gs_fapi_metrics_s*, %struct.gs_fapi_metrics_s** %a_metrics.addr, align 8, !tbaa !1
  %em_x = getelementptr inbounds %struct.gs_fapi_metrics_s, %struct.gs_fapi_metrics_s* %242, i32 0, i32 6
  store i32 %conv244, i32* %em_x, align 4, !tbaa !203
  %243 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8, !tbaa !1
  %units_per_EM245 = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %243, i32 0, i32 13
  %244 = load i16, i16* %units_per_EM245, align 2, !tbaa !85
  %conv246 = zext i16 %244 to i32
  %245 = load %struct.gs_fapi_metrics_s*, %struct.gs_fapi_metrics_s** %a_metrics.addr, align 8, !tbaa !1
  %em_y = getelementptr inbounds %struct.gs_fapi_metrics_s, %struct.gs_fapi_metrics_s* %245, i32 0, i32 7
  store i32 %conv246, i32* %em_y, align 4, !tbaa !204
  %246 = bitcast i64* %vadv to i8*
  call void @llvm.lifetime.end(i64 8, i8* %246) #1
  %247 = bitcast i64* %hy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %247) #1
  %248 = bitcast i64* %hx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %248) #1
  br label %if.end.247

if.end.247:                                       ; preds = %if.end.229, %land.lhs.true.158, %lor.lhs.false.156
  %249 = load i32, i32* %ft_error, align 4, !tbaa !5
  %tobool248 = icmp ne i32 %249, 0
  br i1 %tobool248, label %lor.lhs.false.249, label %if.then.251

lor.lhs.false.249:                                ; preds = %if.end.247
  %250 = load i32, i32* %ft_error_fb, align 4, !tbaa !5
  %tobool250 = icmp ne i32 %250, 0
  br i1 %tobool250, label %if.end.304, label %if.then.251

if.then.251:                                      ; preds = %lor.lhs.false.249, %if.end.247
  %251 = bitcast %struct.FT_BBox_* %cbox to i8*
  call void @llvm.lifetime.start(i64 32, i8* %251) #1
  %252 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8, !tbaa !1
  %glyph252 = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %252, i32 0, i32 21
  %253 = load %struct.FT_GlyphSlotRec_*, %struct.FT_GlyphSlotRec_** %glyph252, align 8, !tbaa !185
  %outline253 = getelementptr inbounds %struct.FT_GlyphSlotRec_, %struct.FT_GlyphSlotRec_* %253, i32 0, i32 13
  call void @FT_Outline_Get_CBox(%struct.FT_Outline_* %outline253, %struct.FT_BBox_* %cbox) #5
  %xMin = getelementptr inbounds %struct.FT_BBox_, %struct.FT_BBox_* %cbox, i32 0, i32 0
  %254 = load i64, i64* %xMin, align 8, !tbaa !205
  %and254 = and i64 %254, -64
  %xMin255 = getelementptr inbounds %struct.FT_BBox_, %struct.FT_BBox_* %cbox, i32 0, i32 0
  store i64 %and254, i64* %xMin255, align 8, !tbaa !205
  %yMin = getelementptr inbounds %struct.FT_BBox_, %struct.FT_BBox_* %cbox, i32 0, i32 1
  %255 = load i64, i64* %yMin, align 8, !tbaa !206
  %and256 = and i64 %255, -64
  %yMin257 = getelementptr inbounds %struct.FT_BBox_, %struct.FT_BBox_* %cbox, i32 0, i32 1
  store i64 %and256, i64* %yMin257, align 8, !tbaa !206
  %xMax = getelementptr inbounds %struct.FT_BBox_, %struct.FT_BBox_* %cbox, i32 0, i32 2
  %256 = load i64, i64* %xMax, align 8, !tbaa !207
  %add258 = add nsw i64 %256, 63
  %and259 = and i64 %add258, -64
  %xMax260 = getelementptr inbounds %struct.FT_BBox_, %struct.FT_BBox_* %cbox, i32 0, i32 2
  store i64 %and259, i64* %xMax260, align 8, !tbaa !207
  %yMax = getelementptr inbounds %struct.FT_BBox_, %struct.FT_BBox_* %cbox, i32 0, i32 3
  %257 = load i64, i64* %yMax, align 8, !tbaa !208
  %add261 = add nsw i64 %257, 63
  %and262 = and i64 %add261, -64
  %yMax263 = getelementptr inbounds %struct.FT_BBox_, %struct.FT_BBox_* %cbox, i32 0, i32 3
  store i64 %and262, i64* %yMax263, align 8, !tbaa !208
  %xMax264 = getelementptr inbounds %struct.FT_BBox_, %struct.FT_BBox_* %cbox, i32 0, i32 2
  %258 = load i64, i64* %xMax264, align 8, !tbaa !207
  %xMin265 = getelementptr inbounds %struct.FT_BBox_, %struct.FT_BBox_* %cbox, i32 0, i32 0
  %259 = load i64, i64* %xMin265, align 8, !tbaa !205
  %sub266 = sub nsw i64 %258, %259
  %shr267 = ashr i64 %sub266, 6
  %conv268 = trunc i64 %shr267 to i32
  %conv269 = zext i32 %conv268 to i64
  store i64 %conv269, i64* %w, align 8, !tbaa !22
  %yMax270 = getelementptr inbounds %struct.FT_BBox_, %struct.FT_BBox_* %cbox, i32 0, i32 3
  %260 = load i64, i64* %yMax270, align 8, !tbaa !208
  %yMin271 = getelementptr inbounds %struct.FT_BBox_, %struct.FT_BBox_* %cbox, i32 0, i32 1
  %261 = load i64, i64* %yMin271, align 8, !tbaa !206
  %sub272 = sub nsw i64 %260, %261
  %shr273 = ashr i64 %sub272, 6
  %conv274 = trunc i64 %shr273 to i32
  %conv275 = zext i32 %conv274 to i64
  store i64 %conv275, i64* %h, align 8, !tbaa !22
  %262 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %metrics_only = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %262, i32 0, i32 12
  %263 = load i32, i32* %metrics_only, align 4, !tbaa !209
  %tobool276 = icmp ne i32 %263, 0
  br i1 %tobool276, label %if.end.303, label %land.lhs.true.277

land.lhs.true.277:                                ; preds = %if.then.251
  %264 = load i32, i32* %a_bitmap.addr, align 4, !tbaa !5
  %cmp278 = icmp eq i32 %264, 1
  br i1 %cmp278, label %land.lhs.true.280, label %if.end.303

land.lhs.true.280:                                ; preds = %land.lhs.true.277
  %265 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8, !tbaa !1
  %glyph281 = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %265, i32 0, i32 21
  %266 = load %struct.FT_GlyphSlotRec_*, %struct.FT_GlyphSlotRec_** %glyph281, align 8, !tbaa !185
  %format = getelementptr inbounds %struct.FT_GlyphSlotRec_, %struct.FT_GlyphSlotRec_* %266, i32 0, i32 9
  %267 = load i32, i32* %format, align 4, !tbaa !210
  %cmp282 = icmp ne i32 %267, 1651078259
  br i1 %cmp282, label %land.lhs.true.284, label %if.end.303

land.lhs.true.284:                                ; preds = %land.lhs.true.280
  %268 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8, !tbaa !1
  %glyph285 = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %268, i32 0, i32 21
  %269 = load %struct.FT_GlyphSlotRec_*, %struct.FT_GlyphSlotRec_** %glyph285, align 8, !tbaa !185
  %format286 = getelementptr inbounds %struct.FT_GlyphSlotRec_, %struct.FT_GlyphSlotRec_* %269, i32 0, i32 9
  %270 = load i32, i32* %format286, align 4, !tbaa !210
  %cmp287 = icmp ne i32 %270, 1668246896
  br i1 %cmp287, label %if.then.289, label %if.end.303

if.then.289:                                      ; preds = %land.lhs.true.284
  %271 = load i64, i64* %w, align 8, !tbaa !22
  %add290 = add nsw i64 %271, 63
  %shr291 = ashr i64 %add290, 6
  %shl = shl i64 %shr291, 3
  %conv292 = trunc i64 %shl to i32
  %conv293 = zext i32 %conv292 to i64
  %272 = load i64, i64* %h, align 8, !tbaa !22
  %mul294 = mul nsw i64 %conv293, %272
  %273 = load i32, i32* %max_bitmap.addr, align 4, !tbaa !5
  %conv295 = sext i32 %273 to i64
  %cmp296 = icmp slt i64 %mul294, %conv295
  br i1 %cmp296, label %if.then.298, label %if.else.301

if.then.298:                                      ; preds = %if.then.289
  %274 = bitcast i32* %mode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %274) #1
  store i32 2, i32* %mode, align 4, !tbaa !24
  %275 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8, !tbaa !1
  %glyph299 = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %275, i32 0, i32 21
  %276 = load %struct.FT_GlyphSlotRec_*, %struct.FT_GlyphSlotRec_** %glyph299, align 8, !tbaa !185
  %277 = load i32, i32* %mode, align 4, !tbaa !24
  %call300 = call i32 @FT_Render_Glyph(%struct.FT_GlyphSlotRec_* %276, i32 %277) #5
  store i32 %call300, i32* %ft_error, align 4, !tbaa !5
  %278 = bitcast i32* %mode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %278) #1
  br label %if.end.302

if.else.301:                                      ; preds = %if.then.289
  %279 = load %struct.FT_GlyphRec_**, %struct.FT_GlyphRec_*** %a_glyph.addr, align 8, !tbaa !1
  store %struct.FT_GlyphRec_* null, %struct.FT_GlyphRec_** %279, align 8, !tbaa !1
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.302:                                       ; preds = %if.then.298
  br label %if.end.303

if.end.303:                                       ; preds = %if.end.302, %land.lhs.true.284, %land.lhs.true.280, %land.lhs.true.277, %if.then.251
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.303, %if.else.301
  %280 = bitcast %struct.FT_BBox_* %cbox to i8*
  call void @llvm.lifetime.end(i64 32, i8* %280) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.373 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.304

if.end.304:                                       ; preds = %cleanup.cont, %lor.lhs.false.249
  %281 = load %struct.gs_fapi_font_s*, %struct.gs_fapi_font_s** %a_fapi_font.addr, align 8, !tbaa !1
  %metrics_only305 = getelementptr inbounds %struct.gs_fapi_font_s, %struct.gs_fapi_font_s* %281, i32 0, i32 12
  %282 = load i32, i32* %metrics_only305, align 4, !tbaa !209
  %tobool306 = icmp ne i32 %282, 0
  br i1 %tobool306, label %if.end.343, label %if.then.307

if.then.307:                                      ; preds = %if.end.304
  %283 = load i32, i32* %ft_error, align 4, !tbaa !5
  %tobool308 = icmp ne i32 %283, 0
  br i1 %tobool308, label %lor.lhs.false.309, label %land.lhs.true.311

lor.lhs.false.309:                                ; preds = %if.then.307
  %284 = load i32, i32* %ft_error_fb, align 4, !tbaa !5
  %tobool310 = icmp ne i32 %284, 0
  br i1 %tobool310, label %if.else.316, label %land.lhs.true.311

land.lhs.true.311:                                ; preds = %lor.lhs.false.309, %if.then.307
  %285 = load %struct.FT_GlyphRec_**, %struct.FT_GlyphRec_*** %a_glyph.addr, align 8, !tbaa !1
  %tobool312 = icmp ne %struct.FT_GlyphRec_** %285, null
  br i1 %tobool312, label %if.then.313, label %if.else.316

if.then.313:                                      ; preds = %land.lhs.true.311
  %286 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8, !tbaa !1
  %glyph314 = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %286, i32 0, i32 21
  %287 = load %struct.FT_GlyphSlotRec_*, %struct.FT_GlyphSlotRec_** %glyph314, align 8, !tbaa !185
  %288 = load %struct.FT_GlyphRec_**, %struct.FT_GlyphRec_*** %a_glyph.addr, align 8, !tbaa !1
  %call315 = call i32 @FT_Get_Glyph(%struct.FT_GlyphSlotRec_* %287, %struct.FT_GlyphRec_** %288) #5
  store i32 %call315, i32* %ft_error, align 4, !tbaa !5
  br label %if.end.342

if.else.316:                                      ; preds = %land.lhs.true.311, %lor.lhs.false.309
  %289 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8, !tbaa !1
  %glyph317 = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %289, i32 0, i32 21
  %290 = load %struct.FT_GlyphSlotRec_*, %struct.FT_GlyphSlotRec_** %glyph317, align 8, !tbaa !185
  %format318 = getelementptr inbounds %struct.FT_GlyphSlotRec_, %struct.FT_GlyphSlotRec_* %290, i32 0, i32 9
  %291 = load i32, i32* %format318, align 4, !tbaa !210
  %cmp319 = icmp eq i32 %291, 1651078259
  br i1 %cmp319, label %if.then.321, label %if.else.331

if.then.321:                                      ; preds = %if.else.316
  %292 = bitcast %struct.FT_BitmapGlyphRec_** %bmg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %292) #1
  %293 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8, !tbaa !1
  %glyph322 = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %293, i32 0, i32 21
  %294 = load %struct.FT_GlyphSlotRec_*, %struct.FT_GlyphSlotRec_** %glyph322, align 8, !tbaa !185
  %295 = bitcast %struct.FT_BitmapGlyphRec_** %bmg to %struct.FT_GlyphRec_**
  %call323 = call i32 @FT_Get_Glyph(%struct.FT_GlyphSlotRec_* %294, %struct.FT_GlyphRec_** %295) #5
  store i32 %call323, i32* %ft_error, align 4, !tbaa !5
  %296 = load i32, i32* %ft_error, align 4, !tbaa !5
  %tobool324 = icmp ne i32 %296, 0
  br i1 %tobool324, label %if.end.330, label %if.then.325

if.then.325:                                      ; preds = %if.then.321
  %297 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %freetype_library326 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %297, i32 0, i32 1
  %298 = load %struct.FT_LibraryRec_*, %struct.FT_LibraryRec_** %freetype_library326, align 8, !tbaa !26
  %299 = load %struct.FT_BitmapGlyphRec_*, %struct.FT_BitmapGlyphRec_** %bmg, align 8, !tbaa !1
  %bitmap327 = getelementptr inbounds %struct.FT_BitmapGlyphRec_, %struct.FT_BitmapGlyphRec_* %299, i32 0, i32 3
  %call328 = call i32 @FT_Bitmap_Done(%struct.FT_LibraryRec_* %298, %struct.FT_Bitmap_* %bitmap327) #5
  %300 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %ftmemory329 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %300, i32 0, i32 5
  %301 = load %struct.FT_MemoryRec_*, %struct.FT_MemoryRec_** %ftmemory329, align 8, !tbaa !25
  %302 = load %struct.FT_BitmapGlyphRec_*, %struct.FT_BitmapGlyphRec_** %bmg, align 8, !tbaa !1
  %303 = bitcast %struct.FT_BitmapGlyphRec_* %302 to i8*
  call void @FF_free(%struct.FT_MemoryRec_* %301, i8* %303) #5
  br label %if.end.330

if.end.330:                                       ; preds = %if.then.325, %if.then.321
  %304 = bitcast %struct.FT_BitmapGlyphRec_** %bmg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %304) #1
  br label %if.end.341

if.else.331:                                      ; preds = %if.else.316
  %305 = bitcast %struct.FT_OutlineGlyphRec_** %olg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %305) #1
  %306 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8, !tbaa !1
  %glyph332 = getelementptr inbounds %struct.FT_FaceRec_, %struct.FT_FaceRec_* %306, i32 0, i32 21
  %307 = load %struct.FT_GlyphSlotRec_*, %struct.FT_GlyphSlotRec_** %glyph332, align 8, !tbaa !185
  %308 = bitcast %struct.FT_OutlineGlyphRec_** %olg to %struct.FT_GlyphRec_**
  %call333 = call i32 @FT_Get_Glyph(%struct.FT_GlyphSlotRec_* %307, %struct.FT_GlyphRec_** %308) #5
  store i32 %call333, i32* %ft_error, align 4, !tbaa !5
  %309 = load i32, i32* %ft_error, align 4, !tbaa !5
  %tobool334 = icmp ne i32 %309, 0
  br i1 %tobool334, label %if.end.340, label %if.then.335

if.then.335:                                      ; preds = %if.else.331
  %310 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %freetype_library336 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %310, i32 0, i32 1
  %311 = load %struct.FT_LibraryRec_*, %struct.FT_LibraryRec_** %freetype_library336, align 8, !tbaa !26
  %312 = load %struct.FT_OutlineGlyphRec_*, %struct.FT_OutlineGlyphRec_** %olg, align 8, !tbaa !1
  %outline337 = getelementptr inbounds %struct.FT_OutlineGlyphRec_, %struct.FT_OutlineGlyphRec_* %312, i32 0, i32 1
  %call338 = call i32 @FT_Outline_Done(%struct.FT_LibraryRec_* %311, %struct.FT_Outline_* %outline337) #5
  %313 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %ftmemory339 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %313, i32 0, i32 5
  %314 = load %struct.FT_MemoryRec_*, %struct.FT_MemoryRec_** %ftmemory339, align 8, !tbaa !25
  %315 = load %struct.FT_OutlineGlyphRec_*, %struct.FT_OutlineGlyphRec_** %olg, align 8, !tbaa !1
  %316 = bitcast %struct.FT_OutlineGlyphRec_* %315 to i8*
  call void @FF_free(%struct.FT_MemoryRec_* %314, i8* %316) #5
  br label %if.end.340

if.end.340:                                       ; preds = %if.then.335, %if.else.331
  %317 = bitcast %struct.FT_OutlineGlyphRec_** %olg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %317) #1
  br label %if.end.341

if.end.341:                                       ; preds = %if.end.340, %if.end.330
  br label %if.end.342

if.end.342:                                       ; preds = %if.end.341, %if.then.313
  br label %if.end.343

if.end.343:                                       ; preds = %if.end.342, %if.end.304
  %318 = load i32, i32* %ft_error, align 4, !tbaa !5
  %cmp344 = icmp eq i32 %318, 22
  br i1 %cmp344, label %if.then.346, label %if.end.350

if.then.346:                                      ; preds = %if.end.343
  %319 = load i32, i32* %ft_error_fb, align 4, !tbaa !5
  %tobool347 = icmp ne i32 %319, 0
  br i1 %tobool347, label %if.end.349, label %if.then.348

if.then.348:                                      ; preds = %if.then.346
  store i32 0, i32* %ft_error, align 4, !tbaa !5
  br label %if.end.349

if.end.349:                                       ; preds = %if.then.348, %if.then.346
  br label %if.end.350

if.end.350:                                       ; preds = %if.end.349, %if.end.343
  %320 = load i32, i32* %ft_error, align 4, !tbaa !5
  %cmp351 = icmp eq i32 %320, 6
  br i1 %cmp351, label %if.then.353, label %if.end.357

if.then.353:                                      ; preds = %if.end.350
  %321 = load i32, i32* %ft_error_fb, align 4, !tbaa !5
  %tobool354 = icmp ne i32 %321, 0
  br i1 %tobool354, label %if.end.356, label %if.then.355

if.then.355:                                      ; preds = %if.then.353
  store i32 0, i32* %ft_error, align 4, !tbaa !5
  br label %if.end.356

if.end.356:                                       ; preds = %if.then.355, %if.then.353
  br label %if.end.357

if.end.357:                                       ; preds = %if.end.356, %if.end.350
  %322 = load i32, i32* %ft_error, align 4, !tbaa !5
  %cmp358 = icmp eq i32 %322, 140
  br i1 %cmp358, label %if.then.360, label %if.end.364

if.then.360:                                      ; preds = %if.end.357
  %323 = load i32, i32* %ft_error_fb, align 4, !tbaa !5
  %tobool361 = icmp ne i32 %323, 0
  br i1 %tobool361, label %if.end.363, label %if.then.362

if.then.362:                                      ; preds = %if.then.360
  store i32 0, i32* %ft_error, align 4, !tbaa !5
  br label %if.end.363

if.end.363:                                       ; preds = %if.then.362, %if.then.360
  br label %if.end.364

if.end.364:                                       ; preds = %if.end.363, %if.end.357
  %324 = load i32, i32* %ft_error, align 4, !tbaa !5
  %cmp365 = icmp eq i32 %324, 16
  br i1 %cmp365, label %if.then.367, label %if.end.371

if.then.367:                                      ; preds = %if.end.364
  %325 = load i32, i32* %ft_error_fb, align 4, !tbaa !5
  %tobool368 = icmp ne i32 %325, 0
  br i1 %tobool368, label %if.end.370, label %if.then.369

if.then.369:                                      ; preds = %if.then.367
  store i32 0, i32* %ft_error, align 4, !tbaa !5
  br label %if.end.370

if.end.370:                                       ; preds = %if.then.369, %if.then.367
  br label %if.end.371

if.end.371:                                       ; preds = %if.end.370, %if.end.364
  %326 = load i32, i32* %ft_error, align 4, !tbaa !5
  %call372 = call i32 @ft_to_gs_error(i32 %326) #5
  store i32 %call372, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.373

cleanup.373:                                      ; preds = %if.end.371, %cleanup, %if.then.141, %if.then.110
  %327 = bitcast i32* %saved_char_data_len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %327) #1
  %328 = bitcast i8** %saved_char_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %328) #1
  %329 = bitcast i32* %load_flags to i8*
  call void @llvm.lifetime.end(i64 4, i8* %329) #1
  %330 = bitcast i64* %fflags to i8*
  call void @llvm.lifetime.end(i64 8, i8* %330) #1
  %331 = bitcast i64* %h to i8*
  call void @llvm.lifetime.end(i64 8, i8* %331) #1
  %332 = bitcast i64* %w to i8*
  call void @llvm.lifetime.end(i64 8, i8* %332) #1
  %333 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %333) #1
  %334 = bitcast %struct.FT_FaceRec_** %ft_face to i8*
  call void @llvm.lifetime.end(i64 8, i8* %334) #1
  %335 = bitcast %struct.ff_face_s** %face to i8*
  call void @llvm.lifetime.end(i64 8, i8* %335) #1
  %336 = bitcast i32* %ft_error_fb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %336) #1
  %337 = bitcast i32* %ft_error to i8*
  call void @llvm.lifetime.end(i64 4, i8* %337) #1
  %338 = bitcast %struct.ff_server_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %338) #1
  %339 = load i32, i32* %retval
  ret i32 %339
}

declare i32 @FT_Get_Char_Index(%struct.FT_FaceRec_*, i64) #2

declare i32 @FT_Load_Glyph(%struct.FT_FaceRec_*, i32, i32) #2

declare void @FT_Outline_Get_CBox(%struct.FT_Outline_*, %struct.FT_BBox_*) #2

declare i32 @FT_Render_Glyph(%struct.FT_GlyphSlotRec_*, i32) #2

declare i32 @FT_Get_Glyph(%struct.FT_GlyphSlotRec_*, %struct.FT_GlyphRec_**) #2

declare i32 @FT_Outline_Decompose(%struct.FT_Outline_*, %struct.FT_Outline_Funcs_*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @move_to(%struct.FT_Vector_* %aTo, i8* %aObject) #0 {
entry:
  %aTo.addr = alloca %struct.FT_Vector_*, align 8
  %aObject.addr = alloca i8*, align 8
  %p = alloca %struct.FF_path_info_s*, align 8
  store %struct.FT_Vector_* %aTo, %struct.FT_Vector_** %aTo.addr, align 8, !tbaa !1
  store i8* %aObject, i8** %aObject.addr, align 8, !tbaa !1
  %0 = bitcast %struct.FF_path_info_s** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %aObject.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.FF_path_info_s*
  store %struct.FF_path_info_s* %2, %struct.FF_path_info_s** %p, align 8, !tbaa !1
  %3 = load %struct.FT_Vector_*, %struct.FT_Vector_** %aTo.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.FT_Vector_, %struct.FT_Vector_* %3, i32 0, i32 0
  %4 = load i64, i64* %x, align 8, !tbaa !211
  %shl = shl i64 %4, 26
  %5 = load %struct.FF_path_info_s*, %struct.FF_path_info_s** %p, align 8, !tbaa !1
  %x1 = getelementptr inbounds %struct.FF_path_info_s, %struct.FF_path_info_s* %5, i32 0, i32 1
  store i64 %shl, i64* %x1, align 8, !tbaa !121
  %6 = load %struct.FT_Vector_*, %struct.FT_Vector_** %aTo.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.FT_Vector_, %struct.FT_Vector_* %6, i32 0, i32 1
  %7 = load i64, i64* %y, align 8, !tbaa !212
  %shl2 = shl i64 %7, 26
  %8 = load %struct.FF_path_info_s*, %struct.FF_path_info_s** %p, align 8, !tbaa !1
  %y3 = getelementptr inbounds %struct.FF_path_info_s, %struct.FF_path_info_s* %8, i32 0, i32 2
  store i64 %shl2, i64* %y3, align 8, !tbaa !122
  %9 = load %struct.FF_path_info_s*, %struct.FF_path_info_s** %p, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.FF_path_info_s, %struct.FF_path_info_s* %9, i32 0, i32 0
  %10 = load %struct.gs_fapi_path_s*, %struct.gs_fapi_path_s** %path, align 8, !tbaa !119
  %moveto = getelementptr inbounds %struct.gs_fapi_path_s, %struct.gs_fapi_path_s* %10, i32 0, i32 3
  %11 = load i32 (%struct.gs_fapi_path_s*, i64, i64)*, i32 (%struct.gs_fapi_path_s*, i64, i64)** %moveto, align 8, !tbaa !123
  %12 = load %struct.FF_path_info_s*, %struct.FF_path_info_s** %p, align 8, !tbaa !1
  %path4 = getelementptr inbounds %struct.FF_path_info_s, %struct.FF_path_info_s* %12, i32 0, i32 0
  %13 = load %struct.gs_fapi_path_s*, %struct.gs_fapi_path_s** %path4, align 8, !tbaa !119
  %14 = load %struct.FF_path_info_s*, %struct.FF_path_info_s** %p, align 8, !tbaa !1
  %x5 = getelementptr inbounds %struct.FF_path_info_s, %struct.FF_path_info_s* %14, i32 0, i32 1
  %15 = load i64, i64* %x5, align 8, !tbaa !121
  %16 = load %struct.FF_path_info_s*, %struct.FF_path_info_s** %p, align 8, !tbaa !1
  %y6 = getelementptr inbounds %struct.FF_path_info_s, %struct.FF_path_info_s* %16, i32 0, i32 2
  %17 = load i64, i64* %y6, align 8, !tbaa !122
  %call = call i32 %11(%struct.gs_fapi_path_s* %13, i64 %15, i64 %17) #5
  %tobool = icmp ne i32 %call, 0
  %cond = select i1 %tobool, i32 -1, i32 0
  %18 = bitcast %struct.FF_path_info_s** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define internal i32 @line_to(%struct.FT_Vector_* %aTo, i8* %aObject) #0 {
entry:
  %aTo.addr = alloca %struct.FT_Vector_*, align 8
  %aObject.addr = alloca i8*, align 8
  %p = alloca %struct.FF_path_info_s*, align 8
  store %struct.FT_Vector_* %aTo, %struct.FT_Vector_** %aTo.addr, align 8, !tbaa !1
  store i8* %aObject, i8** %aObject.addr, align 8, !tbaa !1
  %0 = bitcast %struct.FF_path_info_s** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %aObject.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.FF_path_info_s*
  store %struct.FF_path_info_s* %2, %struct.FF_path_info_s** %p, align 8, !tbaa !1
  %3 = load %struct.FT_Vector_*, %struct.FT_Vector_** %aTo.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.FT_Vector_, %struct.FT_Vector_* %3, i32 0, i32 0
  %4 = load i64, i64* %x, align 8, !tbaa !211
  %shl = shl i64 %4, 26
  %5 = load %struct.FF_path_info_s*, %struct.FF_path_info_s** %p, align 8, !tbaa !1
  %x1 = getelementptr inbounds %struct.FF_path_info_s, %struct.FF_path_info_s* %5, i32 0, i32 1
  store i64 %shl, i64* %x1, align 8, !tbaa !121
  %6 = load %struct.FT_Vector_*, %struct.FT_Vector_** %aTo.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.FT_Vector_, %struct.FT_Vector_* %6, i32 0, i32 1
  %7 = load i64, i64* %y, align 8, !tbaa !212
  %shl2 = shl i64 %7, 26
  %8 = load %struct.FF_path_info_s*, %struct.FF_path_info_s** %p, align 8, !tbaa !1
  %y3 = getelementptr inbounds %struct.FF_path_info_s, %struct.FF_path_info_s* %8, i32 0, i32 2
  store i64 %shl2, i64* %y3, align 8, !tbaa !122
  %9 = load %struct.FF_path_info_s*, %struct.FF_path_info_s** %p, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.FF_path_info_s, %struct.FF_path_info_s* %9, i32 0, i32 0
  %10 = load %struct.gs_fapi_path_s*, %struct.gs_fapi_path_s** %path, align 8, !tbaa !119
  %lineto = getelementptr inbounds %struct.gs_fapi_path_s, %struct.gs_fapi_path_s* %10, i32 0, i32 4
  %11 = load i32 (%struct.gs_fapi_path_s*, i64, i64)*, i32 (%struct.gs_fapi_path_s*, i64, i64)** %lineto, align 8, !tbaa !213
  %12 = load %struct.FF_path_info_s*, %struct.FF_path_info_s** %p, align 8, !tbaa !1
  %path4 = getelementptr inbounds %struct.FF_path_info_s, %struct.FF_path_info_s* %12, i32 0, i32 0
  %13 = load %struct.gs_fapi_path_s*, %struct.gs_fapi_path_s** %path4, align 8, !tbaa !119
  %14 = load %struct.FF_path_info_s*, %struct.FF_path_info_s** %p, align 8, !tbaa !1
  %x5 = getelementptr inbounds %struct.FF_path_info_s, %struct.FF_path_info_s* %14, i32 0, i32 1
  %15 = load i64, i64* %x5, align 8, !tbaa !121
  %16 = load %struct.FF_path_info_s*, %struct.FF_path_info_s** %p, align 8, !tbaa !1
  %y6 = getelementptr inbounds %struct.FF_path_info_s, %struct.FF_path_info_s* %16, i32 0, i32 2
  %17 = load i64, i64* %y6, align 8, !tbaa !122
  %call = call i32 %11(%struct.gs_fapi_path_s* %13, i64 %15, i64 %17) #5
  %tobool = icmp ne i32 %call, 0
  %cond = select i1 %tobool, i32 -1, i32 0
  %18 = bitcast %struct.FF_path_info_s** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define internal i32 @conic_to(%struct.FT_Vector_* %aControl, %struct.FT_Vector_* %aTo, i8* %aObject) #0 {
entry:
  %aControl.addr = alloca %struct.FT_Vector_*, align 8
  %aTo.addr = alloca %struct.FT_Vector_*, align 8
  %aObject.addr = alloca i8*, align 8
  %p = alloca %struct.FF_path_info_s*, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  %Controlx = alloca double, align 8
  %Controly = alloca double, align 8
  %Control1x = alloca i64, align 8
  %Control1y = alloca i64, align 8
  %Control2x = alloca i64, align 8
  %Control2y = alloca i64, align 8
  %sx = alloca double, align 8
  %sy = alloca double, align 8
  store %struct.FT_Vector_* %aControl, %struct.FT_Vector_** %aControl.addr, align 8, !tbaa !1
  store %struct.FT_Vector_* %aTo, %struct.FT_Vector_** %aTo.addr, align 8, !tbaa !1
  store i8* %aObject, i8** %aObject.addr, align 8, !tbaa !1
  %0 = bitcast %struct.FF_path_info_s** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %aObject.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.FF_path_info_s*
  store %struct.FF_path_info_s* %2, %struct.FF_path_info_s** %p, align 8, !tbaa !1
  %3 = bitcast double* %x to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast double* %y to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast double* %Controlx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast double* %Controly to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i64* %Control1x to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i64* %Control1y to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i64* %Control2x to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i64* %Control2y to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast double* %sx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast double* %sy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.FF_path_info_s*, %struct.FF_path_info_s** %p, align 8, !tbaa !1
  %x1 = getelementptr inbounds %struct.FF_path_info_s, %struct.FF_path_info_s* %13, i32 0, i32 1
  %14 = load i64, i64* %x1, align 8, !tbaa !121
  %shr = ashr i64 %14, 32
  %conv = sitofp i64 %shr to double
  store double %conv, double* %sx, align 8, !tbaa !149
  %15 = load %struct.FF_path_info_s*, %struct.FF_path_info_s** %p, align 8, !tbaa !1
  %y2 = getelementptr inbounds %struct.FF_path_info_s, %struct.FF_path_info_s* %15, i32 0, i32 2
  %16 = load i64, i64* %y2, align 8, !tbaa !122
  %shr3 = ashr i64 %16, 32
  %conv4 = sitofp i64 %shr3 to double
  store double %conv4, double* %sy, align 8, !tbaa !149
  %17 = load %struct.FT_Vector_*, %struct.FT_Vector_** %aTo.addr, align 8, !tbaa !1
  %x5 = getelementptr inbounds %struct.FT_Vector_, %struct.FT_Vector_* %17, i32 0, i32 0
  %18 = load i64, i64* %x5, align 8, !tbaa !211
  %conv6 = sitofp i64 %18 to double
  %div = fdiv double %conv6, 6.400000e+01
  store double %div, double* %x, align 8, !tbaa !149
  %19 = load double, double* %x, align 8, !tbaa !149
  %mul = fmul double %19, 2.560000e+02
  %conv7 = fptosi double %mul to i32
  %conv8 = sext i32 %conv7 to i64
  %shl = shl i64 %conv8, 24
  %20 = load %struct.FF_path_info_s*, %struct.FF_path_info_s** %p, align 8, !tbaa !1
  %x9 = getelementptr inbounds %struct.FF_path_info_s, %struct.FF_path_info_s* %20, i32 0, i32 1
  store i64 %shl, i64* %x9, align 8, !tbaa !121
  %21 = load %struct.FT_Vector_*, %struct.FT_Vector_** %aTo.addr, align 8, !tbaa !1
  %y10 = getelementptr inbounds %struct.FT_Vector_, %struct.FT_Vector_* %21, i32 0, i32 1
  %22 = load i64, i64* %y10, align 8, !tbaa !212
  %conv11 = sitofp i64 %22 to double
  %div12 = fdiv double %conv11, 6.400000e+01
  store double %div12, double* %y, align 8, !tbaa !149
  %23 = load double, double* %y, align 8, !tbaa !149
  %mul13 = fmul double %23, 2.560000e+02
  %conv14 = fptosi double %mul13 to i32
  %conv15 = sext i32 %conv14 to i64
  %shl16 = shl i64 %conv15, 24
  %24 = load %struct.FF_path_info_s*, %struct.FF_path_info_s** %p, align 8, !tbaa !1
  %y17 = getelementptr inbounds %struct.FF_path_info_s, %struct.FF_path_info_s* %24, i32 0, i32 2
  store i64 %shl16, i64* %y17, align 8, !tbaa !122
  %25 = load %struct.FT_Vector_*, %struct.FT_Vector_** %aControl.addr, align 8, !tbaa !1
  %x18 = getelementptr inbounds %struct.FT_Vector_, %struct.FT_Vector_* %25, i32 0, i32 0
  %26 = load i64, i64* %x18, align 8, !tbaa !211
  %conv19 = sitofp i64 %26 to double
  %div20 = fdiv double %conv19, 6.400000e+01
  store double %div20, double* %Controlx, align 8, !tbaa !149
  %27 = load %struct.FT_Vector_*, %struct.FT_Vector_** %aControl.addr, align 8, !tbaa !1
  %y21 = getelementptr inbounds %struct.FT_Vector_, %struct.FT_Vector_* %27, i32 0, i32 1
  %28 = load i64, i64* %y21, align 8, !tbaa !212
  %conv22 = sitofp i64 %28 to double
  %div23 = fdiv double %conv22, 6.400000e+01
  store double %div23, double* %Controly, align 8, !tbaa !149
  %29 = load double, double* %sx, align 8, !tbaa !149
  %30 = load double, double* %Controlx, align 8, !tbaa !149
  %mul24 = fmul double %30, 2.000000e+00
  %add = fadd double %29, %mul24
  %div25 = fdiv double %add, 3.000000e+00
  %mul26 = fmul double %div25, 2.560000e+02
  %conv27 = fptosi double %mul26 to i32
  %conv28 = sext i32 %conv27 to i64
  %shl29 = shl i64 %conv28, 24
  store i64 %shl29, i64* %Control1x, align 8, !tbaa !22
  %31 = load double, double* %sy, align 8, !tbaa !149
  %32 = load double, double* %Controly, align 8, !tbaa !149
  %mul30 = fmul double %32, 2.000000e+00
  %add31 = fadd double %31, %mul30
  %div32 = fdiv double %add31, 3.000000e+00
  %mul33 = fmul double %div32, 2.560000e+02
  %conv34 = fptosi double %mul33 to i32
  %conv35 = sext i32 %conv34 to i64
  %shl36 = shl i64 %conv35, 24
  store i64 %shl36, i64* %Control1y, align 8, !tbaa !22
  %33 = load double, double* %x, align 8, !tbaa !149
  %34 = load double, double* %Controlx, align 8, !tbaa !149
  %mul37 = fmul double %34, 2.000000e+00
  %add38 = fadd double %33, %mul37
  %div39 = fdiv double %add38, 3.000000e+00
  %mul40 = fmul double %div39, 2.560000e+02
  %conv41 = fptosi double %mul40 to i32
  %conv42 = sext i32 %conv41 to i64
  %shl43 = shl i64 %conv42, 24
  store i64 %shl43, i64* %Control2x, align 8, !tbaa !22
  %35 = load double, double* %y, align 8, !tbaa !149
  %36 = load double, double* %Controly, align 8, !tbaa !149
  %mul44 = fmul double %36, 2.000000e+00
  %add45 = fadd double %35, %mul44
  %div46 = fdiv double %add45, 3.000000e+00
  %mul47 = fmul double %div46, 2.560000e+02
  %conv48 = fptosi double %mul47 to i32
  %conv49 = sext i32 %conv48 to i64
  %shl50 = shl i64 %conv49, 24
  store i64 %shl50, i64* %Control2y, align 8, !tbaa !22
  %37 = load %struct.FF_path_info_s*, %struct.FF_path_info_s** %p, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.FF_path_info_s, %struct.FF_path_info_s* %37, i32 0, i32 0
  %38 = load %struct.gs_fapi_path_s*, %struct.gs_fapi_path_s** %path, align 8, !tbaa !119
  %curveto = getelementptr inbounds %struct.gs_fapi_path_s, %struct.gs_fapi_path_s* %38, i32 0, i32 5
  %39 = load i32 (%struct.gs_fapi_path_s*, i64, i64, i64, i64, i64, i64)*, i32 (%struct.gs_fapi_path_s*, i64, i64, i64, i64, i64, i64)** %curveto, align 8, !tbaa !214
  %40 = load %struct.FF_path_info_s*, %struct.FF_path_info_s** %p, align 8, !tbaa !1
  %path51 = getelementptr inbounds %struct.FF_path_info_s, %struct.FF_path_info_s* %40, i32 0, i32 0
  %41 = load %struct.gs_fapi_path_s*, %struct.gs_fapi_path_s** %path51, align 8, !tbaa !119
  %42 = load i64, i64* %Control1x, align 8, !tbaa !22
  %43 = load i64, i64* %Control1y, align 8, !tbaa !22
  %44 = load i64, i64* %Control2x, align 8, !tbaa !22
  %45 = load i64, i64* %Control2y, align 8, !tbaa !22
  %46 = load %struct.FF_path_info_s*, %struct.FF_path_info_s** %p, align 8, !tbaa !1
  %x52 = getelementptr inbounds %struct.FF_path_info_s, %struct.FF_path_info_s* %46, i32 0, i32 1
  %47 = load i64, i64* %x52, align 8, !tbaa !121
  %48 = load %struct.FF_path_info_s*, %struct.FF_path_info_s** %p, align 8, !tbaa !1
  %y53 = getelementptr inbounds %struct.FF_path_info_s, %struct.FF_path_info_s* %48, i32 0, i32 2
  %49 = load i64, i64* %y53, align 8, !tbaa !122
  %call = call i32 %39(%struct.gs_fapi_path_s* %41, i64 %42, i64 %43, i64 %44, i64 %45, i64 %47, i64 %49) #5
  %tobool = icmp ne i32 %call, 0
  %cond = select i1 %tobool, i32 -1, i32 0
  %50 = bitcast double* %sy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = bitcast double* %sx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = bitcast i64* %Control2y to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %53 = bitcast i64* %Control2x to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = bitcast i64* %Control1y to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = bitcast i64* %Control1x to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %56 = bitcast double* %Controly to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  %57 = bitcast double* %Controlx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #1
  %58 = bitcast double* %y to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  %59 = bitcast double* %x to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = bitcast %struct.FF_path_info_s** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define internal i32 @cubic_to(%struct.FT_Vector_* %aControl1, %struct.FT_Vector_* %aControl2, %struct.FT_Vector_* %aTo, i8* %aObject) #0 {
entry:
  %aControl1.addr = alloca %struct.FT_Vector_*, align 8
  %aControl2.addr = alloca %struct.FT_Vector_*, align 8
  %aTo.addr = alloca %struct.FT_Vector_*, align 8
  %aObject.addr = alloca i8*, align 8
  %p = alloca %struct.FF_path_info_s*, align 8
  %Control1x = alloca i64, align 8
  %Control1y = alloca i64, align 8
  %Control2x = alloca i64, align 8
  %Control2y = alloca i64, align 8
  store %struct.FT_Vector_* %aControl1, %struct.FT_Vector_** %aControl1.addr, align 8, !tbaa !1
  store %struct.FT_Vector_* %aControl2, %struct.FT_Vector_** %aControl2.addr, align 8, !tbaa !1
  store %struct.FT_Vector_* %aTo, %struct.FT_Vector_** %aTo.addr, align 8, !tbaa !1
  store i8* %aObject, i8** %aObject.addr, align 8, !tbaa !1
  %0 = bitcast %struct.FF_path_info_s** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %aObject.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.FF_path_info_s*
  store %struct.FF_path_info_s* %2, %struct.FF_path_info_s** %p, align 8, !tbaa !1
  %3 = bitcast i64* %Control1x to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i64* %Control1y to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i64* %Control2x to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i64* %Control2y to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.FT_Vector_*, %struct.FT_Vector_** %aTo.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.FT_Vector_, %struct.FT_Vector_* %7, i32 0, i32 0
  %8 = load i64, i64* %x, align 8, !tbaa !211
  %shl = shl i64 %8, 26
  %9 = load %struct.FF_path_info_s*, %struct.FF_path_info_s** %p, align 8, !tbaa !1
  %x1 = getelementptr inbounds %struct.FF_path_info_s, %struct.FF_path_info_s* %9, i32 0, i32 1
  store i64 %shl, i64* %x1, align 8, !tbaa !121
  %10 = load %struct.FT_Vector_*, %struct.FT_Vector_** %aTo.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.FT_Vector_, %struct.FT_Vector_* %10, i32 0, i32 1
  %11 = load i64, i64* %y, align 8, !tbaa !212
  %shl2 = shl i64 %11, 26
  %12 = load %struct.FF_path_info_s*, %struct.FF_path_info_s** %p, align 8, !tbaa !1
  %y3 = getelementptr inbounds %struct.FF_path_info_s, %struct.FF_path_info_s* %12, i32 0, i32 2
  store i64 %shl2, i64* %y3, align 8, !tbaa !122
  %13 = load %struct.FT_Vector_*, %struct.FT_Vector_** %aControl1.addr, align 8, !tbaa !1
  %x4 = getelementptr inbounds %struct.FT_Vector_, %struct.FT_Vector_* %13, i32 0, i32 0
  %14 = load i64, i64* %x4, align 8, !tbaa !211
  %shl5 = shl i64 %14, 26
  store i64 %shl5, i64* %Control1x, align 8, !tbaa !22
  %15 = load %struct.FT_Vector_*, %struct.FT_Vector_** %aControl1.addr, align 8, !tbaa !1
  %y6 = getelementptr inbounds %struct.FT_Vector_, %struct.FT_Vector_* %15, i32 0, i32 1
  %16 = load i64, i64* %y6, align 8, !tbaa !212
  %shl7 = shl i64 %16, 26
  store i64 %shl7, i64* %Control1y, align 8, !tbaa !22
  %17 = load %struct.FT_Vector_*, %struct.FT_Vector_** %aControl2.addr, align 8, !tbaa !1
  %x8 = getelementptr inbounds %struct.FT_Vector_, %struct.FT_Vector_* %17, i32 0, i32 0
  %18 = load i64, i64* %x8, align 8, !tbaa !211
  %shl9 = shl i64 %18, 26
  store i64 %shl9, i64* %Control2x, align 8, !tbaa !22
  %19 = load %struct.FT_Vector_*, %struct.FT_Vector_** %aControl2.addr, align 8, !tbaa !1
  %y10 = getelementptr inbounds %struct.FT_Vector_, %struct.FT_Vector_* %19, i32 0, i32 1
  %20 = load i64, i64* %y10, align 8, !tbaa !212
  %shl11 = shl i64 %20, 26
  store i64 %shl11, i64* %Control2y, align 8, !tbaa !22
  %21 = load %struct.FF_path_info_s*, %struct.FF_path_info_s** %p, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.FF_path_info_s, %struct.FF_path_info_s* %21, i32 0, i32 0
  %22 = load %struct.gs_fapi_path_s*, %struct.gs_fapi_path_s** %path, align 8, !tbaa !119
  %curveto = getelementptr inbounds %struct.gs_fapi_path_s, %struct.gs_fapi_path_s* %22, i32 0, i32 5
  %23 = load i32 (%struct.gs_fapi_path_s*, i64, i64, i64, i64, i64, i64)*, i32 (%struct.gs_fapi_path_s*, i64, i64, i64, i64, i64, i64)** %curveto, align 8, !tbaa !214
  %24 = load %struct.FF_path_info_s*, %struct.FF_path_info_s** %p, align 8, !tbaa !1
  %path12 = getelementptr inbounds %struct.FF_path_info_s, %struct.FF_path_info_s* %24, i32 0, i32 0
  %25 = load %struct.gs_fapi_path_s*, %struct.gs_fapi_path_s** %path12, align 8, !tbaa !119
  %26 = load i64, i64* %Control1x, align 8, !tbaa !22
  %27 = load i64, i64* %Control1y, align 8, !tbaa !22
  %28 = load i64, i64* %Control2x, align 8, !tbaa !22
  %29 = load i64, i64* %Control2y, align 8, !tbaa !22
  %30 = load %struct.FF_path_info_s*, %struct.FF_path_info_s** %p, align 8, !tbaa !1
  %x13 = getelementptr inbounds %struct.FF_path_info_s, %struct.FF_path_info_s* %30, i32 0, i32 1
  %31 = load i64, i64* %x13, align 8, !tbaa !121
  %32 = load %struct.FF_path_info_s*, %struct.FF_path_info_s** %p, align 8, !tbaa !1
  %y14 = getelementptr inbounds %struct.FF_path_info_s, %struct.FF_path_info_s* %32, i32 0, i32 2
  %33 = load i64, i64* %y14, align 8, !tbaa !122
  %call = call i32 %23(%struct.gs_fapi_path_s* %25, i64 %26, i64 %27, i64 %28, i64 %29, i64 %31, i64 %33) #5
  %tobool = icmp ne i32 %call, 0
  %cond = select i1 %tobool, i32 -1, i32 0
  %34 = bitcast i64* %Control2y to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = bitcast i64* %Control2x to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = bitcast i64* %Control1y to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = bitcast i64* %Control1x to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = bitcast %struct.FF_path_info_s** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define internal void @delete_face(%struct.gs_fapi_server_s* %a_server, %struct.ff_face_s* %a_face) #0 {
entry:
  %a_server.addr = alloca %struct.gs_fapi_server_s*, align 8
  %a_face.addr = alloca %struct.ff_face_s*, align 8
  %s = alloca %struct.ff_server_s*, align 8
  %a_info = alloca %struct.FT_IncrementalRec_*, align 8
  store %struct.gs_fapi_server_s* %a_server, %struct.gs_fapi_server_s** %a_server.addr, align 8, !tbaa !1
  store %struct.ff_face_s* %a_face, %struct.ff_face_s** %a_face.addr, align 8, !tbaa !1
  %0 = load %struct.ff_face_s*, %struct.ff_face_s** %a_face.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.ff_face_s* %0, null
  br i1 %tobool, label %if.then, label %if.end.22

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.ff_server_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_fapi_server_s*, %struct.gs_fapi_server_s** %a_server.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gs_fapi_server_s* %2 to %struct.ff_server_s*
  store %struct.ff_server_s* %3, %struct.ff_server_s** %s, align 8, !tbaa !1
  %4 = load %struct.ff_face_s*, %struct.ff_face_s** %a_face.addr, align 8, !tbaa !1
  %ft_inc_int = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %4, i32 0, i32 6
  %5 = load %struct.FT_Incremental_InterfaceRec_*, %struct.FT_Incremental_InterfaceRec_** %ft_inc_int, align 8, !tbaa !143
  %tobool1 = icmp ne %struct.FT_Incremental_InterfaceRec_* %5, null
  br i1 %tobool1, label %if.then.2, label %if.end.10

if.then.2:                                        ; preds = %if.then
  %6 = bitcast %struct.FT_IncrementalRec_** %a_info to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.ff_face_s*, %struct.ff_face_s** %a_face.addr, align 8, !tbaa !1
  %ft_inc_int3 = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %7, i32 0, i32 6
  %8 = load %struct.FT_Incremental_InterfaceRec_*, %struct.FT_Incremental_InterfaceRec_** %ft_inc_int3, align 8, !tbaa !143
  %object = getelementptr inbounds %struct.FT_Incremental_InterfaceRec_, %struct.FT_Incremental_InterfaceRec_* %8, i32 0, i32 1
  %9 = load %struct.FT_IncrementalRec_*, %struct.FT_IncrementalRec_** %object, align 8, !tbaa !140
  store %struct.FT_IncrementalRec_* %9, %struct.FT_IncrementalRec_** %a_info, align 8, !tbaa !1
  %10 = load %struct.FT_IncrementalRec_*, %struct.FT_IncrementalRec_** %a_info, align 8, !tbaa !1
  %glyph_data = getelementptr inbounds %struct.FT_IncrementalRec_, %struct.FT_IncrementalRec_* %10, i32 0, i32 1
  %11 = load i8*, i8** %glyph_data, align 8, !tbaa !158
  %tobool4 = icmp ne i8* %11, null
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then.2
  %12 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %mem = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %12, i32 0, i32 4
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !10
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %13, i32 0, i32 3
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !31
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %14, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %15 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !32
  %16 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %mem6 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %16, i32 0, i32 4
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem6, align 8, !tbaa !10
  %non_gc_memory7 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %17, i32 0, i32 3
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory7, align 8, !tbaa !31
  %19 = load %struct.FT_IncrementalRec_*, %struct.FT_IncrementalRec_** %a_info, align 8, !tbaa !1
  %glyph_data8 = getelementptr inbounds %struct.FT_IncrementalRec_, %struct.FT_IncrementalRec_* %19, i32 0, i32 1
  %20 = load i8*, i8** %glyph_data8, align 8, !tbaa !158
  call void %15(%struct.gs_memory_s* %18, i8* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0)) #5
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then.2
  %21 = load %struct.FT_IncrementalRec_*, %struct.FT_IncrementalRec_** %a_info, align 8, !tbaa !1
  %glyph_data9 = getelementptr inbounds %struct.FT_IncrementalRec_, %struct.FT_IncrementalRec_* %21, i32 0, i32 1
  store i8* null, i8** %glyph_data9, align 8, !tbaa !158
  %22 = load %struct.FT_IncrementalRec_*, %struct.FT_IncrementalRec_** %a_info, align 8, !tbaa !1
  %glyph_data_length = getelementptr inbounds %struct.FT_IncrementalRec_, %struct.FT_IncrementalRec_* %22, i32 0, i32 2
  store i64 0, i64* %glyph_data_length, align 8, !tbaa !159
  %23 = bitcast %struct.FT_IncrementalRec_** %a_info to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then
  %24 = load %struct.ff_face_s*, %struct.ff_face_s** %a_face.addr, align 8, !tbaa !1
  %ft_face = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %24, i32 0, i32 0
  %25 = load %struct.FT_FaceRec_*, %struct.FT_FaceRec_** %ft_face, align 8, !tbaa !65
  %call = call i32 @FT_Done_Face(%struct.FT_FaceRec_* %25) #5
  %26 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %ftmemory = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %26, i32 0, i32 5
  %27 = load %struct.FT_MemoryRec_*, %struct.FT_MemoryRec_** %ftmemory, align 8, !tbaa !25
  %28 = load %struct.ff_face_s*, %struct.ff_face_s** %a_face.addr, align 8, !tbaa !1
  %ft_inc_int11 = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %28, i32 0, i32 6
  %29 = load %struct.FT_Incremental_InterfaceRec_*, %struct.FT_Incremental_InterfaceRec_** %ft_inc_int11, align 8, !tbaa !143
  %30 = bitcast %struct.FT_Incremental_InterfaceRec_* %29 to i8*
  call void @FF_free(%struct.FT_MemoryRec_* %27, i8* %30) #5
  %31 = load %struct.ff_face_s*, %struct.ff_face_s** %a_face.addr, align 8, !tbaa !1
  %data_owned = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %31, i32 0, i32 10
  %32 = load i32, i32* %data_owned, align 4, !tbaa !146
  %tobool12 = icmp ne i32 %32, 0
  br i1 %tobool12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end.10
  %33 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %ftmemory14 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %33, i32 0, i32 5
  %34 = load %struct.FT_MemoryRec_*, %struct.FT_MemoryRec_** %ftmemory14, align 8, !tbaa !25
  %35 = load %struct.ff_face_s*, %struct.ff_face_s** %a_face.addr, align 8, !tbaa !1
  %font_data = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %35, i32 0, i32 8
  %36 = load i8*, i8** %font_data, align 8, !tbaa !144
  call void @FF_free(%struct.FT_MemoryRec_* %34, i8* %36) #5
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.end.10
  %37 = load %struct.ff_face_s*, %struct.ff_face_s** %a_face.addr, align 8, !tbaa !1
  %ftstrm = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %37, i32 0, i32 7
  %38 = load %struct.FT_StreamRec_*, %struct.FT_StreamRec_** %ftstrm, align 8, !tbaa !147
  %tobool16 = icmp ne %struct.FT_StreamRec_* %38, null
  br i1 %tobool16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %if.end.15
  %39 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %ftmemory18 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %39, i32 0, i32 5
  %40 = load %struct.FT_MemoryRec_*, %struct.FT_MemoryRec_** %ftmemory18, align 8, !tbaa !25
  %41 = load %struct.ff_face_s*, %struct.ff_face_s** %a_face.addr, align 8, !tbaa !1
  %ftstrm19 = getelementptr inbounds %struct.ff_face_s, %struct.ff_face_s* %41, i32 0, i32 7
  %42 = load %struct.FT_StreamRec_*, %struct.FT_StreamRec_** %ftstrm19, align 8, !tbaa !147
  %43 = bitcast %struct.FT_StreamRec_* %42 to i8*
  call void @FF_free(%struct.FT_MemoryRec_* %40, i8* %43) #5
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %if.end.15
  %44 = load %struct.ff_server_s*, %struct.ff_server_s** %s, align 8, !tbaa !1
  %ftmemory21 = getelementptr inbounds %struct.ff_server_s, %struct.ff_server_s* %44, i32 0, i32 5
  %45 = load %struct.FT_MemoryRec_*, %struct.FT_MemoryRec_** %ftmemory21, align 8, !tbaa !25
  %46 = load %struct.ff_face_s*, %struct.ff_face_s** %a_face.addr, align 8, !tbaa !1
  %47 = bitcast %struct.ff_face_s* %46 to i8*
  call void @FF_free(%struct.FT_MemoryRec_* %45, i8* %47) #5
  %48 = bitcast %struct.ff_server_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.20, %entry
  ret void
}

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
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 8}
!8 = !{!"gs_memory_s", !2, i64 0, !9, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!9 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!10 = !{!11, !2, i64 608}
!11 = !{!"ff_server_s", !12, i64 0, !2, i64 584, !2, i64 592, !2, i64 600, !2, i64 608, !2, i64 616, !20, i64 624}
!12 = !{!"gs_fapi_server_s", !13, i64 0, !2, i64 8, !6, i64 16, !14, i64 24, !19, i64 80, !6, i64 400, !6, i64 404, !6, i64 408, !16, i64 412, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!13 = !{!"gs_fapi_server_instance_s", !2, i64 0}
!14 = !{!"gs_fapi_face_s", !15, i64 0, !16, i64 8, !18, i64 32, !6, i64 40, !3, i64 44}
!15 = !{!"long", !3, i64 0}
!16 = !{!"gs_matrix_s", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !17, i64 16, !17, i64 20}
!17 = !{!"float", !3, i64 0}
!18 = !{!"gs_log2_scale_point_s", !6, i64 0, !6, i64 4}
!19 = !{!"gs_fapi_font_s", !2, i64 0, !6, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !3, i64 72, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !6, i64 184, !17, i64 188, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312}
!20 = !{!"FT_MemoryRec_", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!21 = !{i64 0, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 4, !5, i64 24, i64 8, !22, i64 32, i64 4, !23, i64 36, i64 4, !23, i64 40, i64 4, !23, i64 44, i64 4, !23, i64 48, i64 4, !23, i64 52, i64 4, !23, i64 56, i64 4, !5, i64 60, i64 4, !5, i64 64, i64 4, !5, i64 68, i64 8, !24, i64 80, i64 8, !1, i64 88, i64 4, !5, i64 96, i64 8, !1, i64 104, i64 8, !1, i64 112, i64 8, !1, i64 120, i64 4, !5, i64 124, i64 4, !5, i64 128, i64 4, !5, i64 132, i64 4, !5, i64 136, i64 4, !5, i64 140, i64 4, !5, i64 144, i64 4, !5, i64 148, i64 4, !5, i64 152, i64 80, !24, i64 232, i64 8, !1, i64 240, i64 8, !1, i64 248, i64 8, !1, i64 256, i64 8, !1, i64 264, i64 4, !5, i64 268, i64 4, !23, i64 272, i64 8, !1, i64 280, i64 8, !1, i64 288, i64 8, !1, i64 296, i64 8, !1, i64 304, i64 8, !1, i64 312, i64 8, !1, i64 320, i64 8, !1, i64 328, i64 8, !1, i64 336, i64 8, !1, i64 344, i64 8, !1, i64 352, i64 8, !1, i64 360, i64 8, !1, i64 368, i64 8, !1, i64 376, i64 8, !1, i64 384, i64 8, !1, i64 392, i64 8, !1, i64 400, i64 4, !5, i64 404, i64 4, !5, i64 408, i64 4, !5, i64 412, i64 4, !23, i64 416, i64 4, !23, i64 420, i64 4, !23, i64 424, i64 4, !23, i64 428, i64 4, !23, i64 432, i64 4, !23, i64 440, i64 8, !1, i64 448, i64 8, !1, i64 456, i64 8, !1, i64 464, i64 8, !1, i64 472, i64 8, !1, i64 480, i64 8, !1, i64 488, i64 8, !1, i64 496, i64 8, !1, i64 504, i64 8, !1, i64 512, i64 8, !1, i64 520, i64 8, !1, i64 528, i64 8, !1, i64 536, i64 8, !1, i64 544, i64 8, !1, i64 552, i64 8, !1, i64 560, i64 8, !1, i64 568, i64 8, !1, i64 576, i64 8, !1}
!22 = !{!15, !15, i64 0}
!23 = !{!17, !17, i64 0}
!24 = !{!3, !3, i64 0}
!25 = !{!11, !2, i64 616}
!26 = !{!11, !2, i64 584}
!27 = !{!20, !2, i64 0}
!28 = !{!20, !2, i64 8}
!29 = !{!20, !2, i64 16}
!30 = !{!20, !2, i64 24}
!31 = !{!8, !2, i64 200}
!32 = !{!8, !2, i64 24}
!33 = !{!19, !2, i64 0}
!34 = !{!11, !2, i64 600}
!35 = !{!11, !2, i64 592}
!36 = !{!19, !6, i64 52}
!37 = !{!19, !6, i64 48}
!38 = !{!19, !2, i64 24}
!39 = !{!19, !2, i64 32}
!40 = !{!8, !2, i64 88}
!41 = !{!19, !6, i64 40}
!42 = !{!19, !6, i64 44}
!43 = !{!44, !6, i64 0}
!44 = !{!"FT_Open_Args_", !6, i64 0, !2, i64 8, !15, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !6, i64 48, !2, i64 56}
!45 = !{!44, !2, i64 32}
!46 = !{!19, !2, i64 192}
!47 = !{!19, !6, i64 8}
!48 = !{!44, !2, i64 8}
!49 = !{!44, !15, i64 16}
!50 = !{!19, !2, i64 200}
!51 = !{!19, !2, i64 264}
!52 = !{!53, !15, i64 0}
!53 = !{!"FT_Parameter_", !15, i64 0, !2, i64 8}
!54 = !{!53, !2, i64 8}
!55 = !{!44, !6, i64 48}
!56 = !{!44, !2, i64 56}
!57 = !{!58, !15, i64 8}
!58 = !{!"ff_face_s", !2, i64 0, !59, i64 8, !15, i64 40, !15, i64 48, !6, i64 56, !6, i64 60, !2, i64 64, !2, i64 72, !2, i64 80, !6, i64 88, !6, i64 92, !2, i64 96}
!59 = !{!"FT_Matrix_", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24}
!60 = !{!58, !15, i64 16}
!61 = !{!58, !15, i64 24}
!62 = !{!58, !15, i64 32}
!63 = !{!58, !6, i64 56}
!64 = !{!58, !6, i64 60}
!65 = !{!58, !2, i64 0}
!66 = !{!58, !15, i64 40}
!67 = !{!58, !15, i64 48}
!68 = !{!69, !6, i64 0}
!69 = !{!"", !6, i64 0, !6, i64 4}
!70 = !{!71, !6, i64 72}
!71 = !{!"FT_FaceRec_", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !2, i64 40, !2, i64 48, !6, i64 56, !2, i64 64, !6, i64 72, !2, i64 80, !72, i64 88, !73, i64 104, !74, i64 136, !74, i64 138, !74, i64 140, !74, i64 142, !74, i64 144, !74, i64 146, !74, i64 148, !74, i64 150, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !75, i64 200, !72, i64 216, !2, i64 232, !2, i64 240}
!72 = !{!"FT_Generic_", !2, i64 0, !2, i64 8}
!73 = !{!"FT_BBox_", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24}
!74 = !{!"short", !3, i64 0}
!75 = !{!"FT_ListRec_", !2, i64 0, !2, i64 8}
!76 = !{!71, !2, i64 80}
!77 = !{!78, !74, i64 12}
!78 = !{!"FT_CharMapRec_", !2, i64 0, !3, i64 8, !74, i64 12, !74, i64 14}
!79 = !{!78, !74, i64 14}
!80 = !{!69, !6, i64 4}
!81 = !{!71, !15, i64 104}
!82 = !{!71, !15, i64 112}
!83 = !{!71, !15, i64 120}
!84 = !{!71, !15, i64 128}
!85 = !{!71, !74, i64 136}
!86 = !{!71, !15, i64 16}
!87 = !{!88, !6, i64 56}
!88 = !{!"", !15, i64 0, !3, i64 8, !6, i64 40, !6, i64 44, !2, i64 48, !6, i64 56, !3, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80}
!89 = !{!88, !2, i64 48}
!90 = !{!88, !6, i64 44}
!91 = !{!16, !17, i64 0}
!92 = !{!16, !17, i64 4}
!93 = !{!16, !17, i64 8}
!94 = !{!16, !17, i64 12}
!95 = !{!16, !17, i64 16}
!96 = !{!16, !17, i64 20}
!97 = !{!12, !6, i64 400}
!98 = !{!99, !2, i64 64}
!99 = !{!"FT_BitmapGlyphRec_", !100, i64 0, !6, i64 40, !6, i64 44, !102, i64 48}
!100 = !{!"FT_GlyphRec_", !2, i64 0, !2, i64 8, !3, i64 16, !101, i64 24}
!101 = !{!"FT_Vector_", !15, i64 0, !15, i64 8}
!102 = !{!"FT_Bitmap_", !6, i64 0, !6, i64 4, !6, i64 8, !2, i64 16, !74, i64 24, !3, i64 26, !3, i64 27, !2, i64 32}
!103 = !{!104, !2, i64 0}
!104 = !{!"", !2, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40}
!105 = !{!99, !6, i64 52}
!106 = !{!104, !6, i64 8}
!107 = !{!99, !6, i64 48}
!108 = !{!104, !6, i64 12}
!109 = !{!99, !6, i64 56}
!110 = !{!104, !6, i64 16}
!111 = !{!99, !6, i64 40}
!112 = !{!104, !6, i64 20}
!113 = !{!99, !6, i64 44}
!114 = !{!104, !6, i64 24}
!115 = !{!104, !6, i64 36}
!116 = !{!104, !6, i64 40}
!117 = !{!104, !6, i64 32}
!118 = !{!104, !6, i64 28}
!119 = !{!120, !2, i64 0}
!120 = !{!"FF_path_info_s", !2, i64 0, !15, i64 8, !15, i64 16}
!121 = !{!120, !15, i64 8}
!122 = !{!120, !15, i64 16}
!123 = !{!124, !2, i64 16}
!124 = !{!"gs_fapi_path_s", !2, i64 0, !6, i64 8, !6, i64 12, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40}
!125 = !{!124, !6, i64 12}
!126 = !{!124, !2, i64 40}
!127 = !{!12, !2, i64 80}
!128 = !{!129, !2, i64 16}
!129 = !{!"gs_parsed_file_name_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24}
!130 = !{!129, !2, i64 8}
!131 = !{!132, !2, i64 32}
!132 = !{!"gx_io_device_s", !2, i64 0, !2, i64 8, !133, i64 16, !2, i64 120}
!133 = !{!"gx_io_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!134 = !{!129, !6, i64 24}
!135 = !{!132, !2, i64 40}
!136 = !{!137, !2, i64 40}
!137 = !{!"FT_StreamRec_", !2, i64 0, !15, i64 8, !15, i64 16, !3, i64 24, !3, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72}
!138 = !{!137, !2, i64 48}
!139 = !{!137, !15, i64 8}
!140 = !{!141, !2, i64 8}
!141 = !{!"FT_Incremental_InterfaceRec_", !2, i64 0, !2, i64 8}
!142 = !{!141, !2, i64 0}
!143 = !{!58, !2, i64 64}
!144 = !{!58, !2, i64 80}
!145 = !{!58, !6, i64 88}
!146 = !{!58, !6, i64 92}
!147 = !{!58, !2, i64 72}
!148 = !{!58, !2, i64 96}
!149 = !{!150, !150, i64 0}
!150 = !{!"double", !3, i64 0}
!151 = !{!59, !15, i64 0}
!152 = !{!59, !15, i64 8}
!153 = !{!59, !15, i64 16}
!154 = !{!59, !15, i64 24}
!155 = !{!156, !2, i64 0}
!156 = !{!"FT_IncrementalRec_", !2, i64 0, !2, i64 8, !15, i64 16, !6, i64 24, !157, i64 32, !15, i64 64, !3, i64 72}
!157 = !{!"FT_Incremental_MetricsRec_", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24}
!158 = !{!156, !2, i64 8}
!159 = !{!156, !15, i64 16}
!160 = !{!156, !6, i64 24}
!161 = !{!156, !15, i64 64}
!162 = !{!156, !3, i64 72}
!163 = !{!19, !2, i64 256}
!164 = !{!165, !2, i64 0}
!165 = !{!"FT_Data_", !2, i64 0, !6, i64 8}
!166 = !{!19, !2, i64 176}
!167 = !{!165, !6, i64 8}
!168 = !{!157, !15, i64 16}
!169 = !{!156, !15, i64 48}
!170 = !{i64 0, i64 8, !22, i64 8, i64 8, !22, i64 16, i64 8, !22, i64 24, i64 8, !22}
!171 = !{!157, !15, i64 24}
!172 = !{!19, !6, i64 184}
!173 = !{!88, !15, i64 0}
!174 = !{!88, !3, i64 60}
!175 = !{!88, !6, i64 64}
!176 = !{!157, !15, i64 0}
!177 = !{!88, !6, i64 68}
!178 = !{!157, !15, i64 8}
!179 = !{!88, !6, i64 72}
!180 = !{!19, !6, i64 60}
!181 = !{!12, !6, i64 408}
!182 = !{!183, !2, i64 0}
!183 = !{!"gs_string_s", !2, i64 0, !6, i64 8}
!184 = !{!183, !6, i64 8}
!185 = !{!71, !2, i64 152}
!186 = !{!187, !15, i64 64}
!187 = !{!"FT_GlyphSlotRec_", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !72, i64 32, !188, i64 48, !15, i64 112, !15, i64 120, !101, i64 128, !3, i64 144, !102, i64 152, !6, i64 192, !6, i64 196, !189, i64 200, !6, i64 240, !2, i64 248, !2, i64 256, !15, i64 264, !15, i64 272, !15, i64 280, !2, i64 288, !2, i64 296}
!188 = !{!"FT_Glyph_Metrics_", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56}
!189 = !{!"FT_Outline_", !74, i64 0, !74, i64 2, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32}
!190 = !{!187, !15, i64 72}
!191 = !{!187, !15, i64 48}
!192 = !{!187, !15, i64 56}
!193 = !{!19, !6, i64 64}
!194 = !{!187, !15, i64 120}
!195 = !{!196, !6, i64 0}
!196 = !{!"gs_fapi_metrics_s", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28}
!197 = !{!196, !6, i64 4}
!198 = !{!196, !6, i64 8}
!199 = !{!196, !6, i64 12}
!200 = !{!187, !15, i64 112}
!201 = !{!196, !6, i64 16}
!202 = !{!196, !6, i64 20}
!203 = !{!196, !6, i64 24}
!204 = !{!196, !6, i64 28}
!205 = !{!73, !15, i64 0}
!206 = !{!73, !15, i64 8}
!207 = !{!73, !15, i64 16}
!208 = !{!73, !15, i64 24}
!209 = !{!19, !6, i64 68}
!210 = !{!187, !3, i64 144}
!211 = !{!101, !15, i64 0}
!212 = !{!101, !15, i64 8}
!213 = !{!124, !2, i64 24}
!214 = !{!124, !2, i64 32}
