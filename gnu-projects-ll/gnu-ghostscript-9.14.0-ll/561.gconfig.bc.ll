; ModuleID = './gconfig.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_device_halftone_resource_s = type { i8*, i32, i32, i32, i32, i32*, i8*, i32 }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
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
%struct.stream_s = type opaque
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
%struct.gs_fapi_server_s = type { %struct.gs_fapi_server_instance_s, i8*, i32, %struct.gs_fapi_face_s, %struct.gs_fapi_font_s, i32, i32, i32, %struct.gs_matrix_s, i32 (%struct.gs_fapi_server_s*, i8*, i32)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_font_scale_s*, i8*, i32)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, i8**)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, i32*, i32*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, i32*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_char_ref*, i32*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_char_ref*, i32*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, i32, i8*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_matrix_s*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_char_ref*, %struct.gs_fapi_metrics_s*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_char_ref*, %struct.gs_fapi_metrics_s*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_raster*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, %struct.gs_fapi_char_ref*, %struct.gs_fapi_metrics_s*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_path_s*)*, i32 (%struct.gs_fapi_server_s*)*, i32 (%struct.gs_fapi_server_s*, i8*)*, i32 (%struct.gs_fapi_server_s*, i32*)*, i32 (%struct.gs_fapi_server_s*, %struct.gs_fapi_font_s*, i32, i32, i8*, i32*)* }
%struct.gs_fapi_server_instance_s = type { %struct.gs_fapi_server_descriptor_s* }
%struct.gs_fapi_server_descriptor_s = type { i8*, i8*, void (%struct.gs_fapi_server_s**)* }
%struct.gs_fapi_face_s = type { i64, %struct.gs_matrix_s, %struct.gs_log2_scale_point_s, i32, [2 x float] }
%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.gs_fapi_font_s = type { i8*, i32, %struct.gs_memory_s*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, [10 x %struct.gs_fapi_ttf_cmap_request], i8*, i8*, i8*, i8*, i32, float, i16 (%struct.gs_fapi_font_s*, i32, i32)*, i64 (%struct.gs_fapi_font_s*, i32, i32)*, float (%struct.gs_fapi_font_s*, i32, i32)*, i32 (%struct.gs_fapi_font_s*, i32, i32, i8*, i32)*, i32 (%struct.gs_fapi_font_s*, i32, i32, i8*)*, i16 (%struct.gs_fapi_font_s*, i32, i8*, i16)*, i16 (%struct.gs_fapi_font_s*, i32, i8*, i16)*, i16 (%struct.gs_fapi_font_s*, i32, i8*, i16)*, i32 (%struct.gs_fapi_font_s*, i32, i8*, i16)*, i16 (%struct.gs_fapi_font_s*, i8*, i32)*, i16 (%struct.gs_fapi_font_s*, i32, i8*, i16)*, i16 (%struct.gs_fapi_font_s*, i32, i8*, i16)*, i32 (%struct.gs_fapi_font_s*, i32, i8**)*, i32 (%struct.gs_font_base_s*, %struct.gs_string_s*, %struct.gs_string_s*, i32, %struct.gs_string_s*, i8*, %struct.gs_fapi_char_ref*, i32)*, i32 (%struct.gs_fapi_font_s*, %struct.gs_string_s*, i32, double*, i32)*, i32 (%struct.gs_text_enum_s*, %struct.gs_font_base_s*, %struct.gs_string_s*, i32, double*, %struct.gs_rect_s*, double*, i32*)* }
%struct.gs_fapi_ttf_cmap_request = type { i32, i32 }
%struct.gs_font_base_s = type opaque
%struct.gs_string_s = type { i8*, i32 }
%struct.gs_fapi_char_ref = type { i64, [4 x i64], i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct.gs_text_enum_s = type { %struct.gs_text_params_s, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_procs_s*, %struct.rc_header_s, i8*, %struct.gs_font_s*, i64, i32, %struct.gs_log2_scale_point_s, %struct.cached_fm_pair_s*, i32, i32, %struct.gx_font_stack_s, i32, i32, i32, %struct.gs_point_s, i64, i32, %struct.gs_log2_scale_point_s, %struct.gs_point_s, %struct.gs_text_returned_s }
%struct.gs_text_params_s = type { i32, %union.sd_, i32, %struct.gs_point_s, %struct.gs_point_s, %union.s_, float*, float*, i32 }
%union.sd_ = type { i8* }
%union.s_ = type { i64 }
%struct.gs_imager_state_s = type opaque
%struct.gx_path_s = type opaque
%struct.gx_device_color_s = type { %struct.gx_device_color_type_s*, %union._c, %struct.gs_int_point_s, i32, %struct.gs_client_color_s, %struct._mask }
%struct.gx_device_color_type_s = type opaque
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
%struct.gx_device_halftone_s = type opaque
%struct.gs_int_point_s = type { i32, i32 }
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type opaque
%struct.gs_paint_color_s = type { [64 x float] }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type opaque
%struct.gx_clip_path_s = type opaque
%struct.gs_text_enum_procs_s = type { i32 (%struct.gs_text_enum_s*, %struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_point_s*)*, i32 (%struct.gs_text_enum_s*, double*, i32)*, i32 (%struct.gs_text_enum_s*)*, void (%struct.gs_text_enum_s*, i8*)* }
%struct.gs_font_s = type opaque
%struct.cached_fm_pair_s = type opaque
%struct.gx_font_stack_s = type { i32, [6 x %struct.gx_font_stack_item_s] }
%struct.gx_font_stack_item_s = type { %struct.gs_font_s*, i32 }
%struct.gs_point_s = type { double, double }
%struct.gs_text_returned_s = type { i64, i64, %struct.gs_point_s }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_fapi_font_scale_s = type { [6 x i32], [2 x i32], [2 x i32], i32 }
%struct.gs_fapi_raster = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gs_fapi_metrics_s = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gs_fapi_path_s = type { i8*, i32, i32, i32 (%struct.gs_fapi_path_s*, i64, i64)*, i32 (%struct.gs_fapi_path_s*, i64, i64)*, i32 (%struct.gs_fapi_path_s*, i64, i64, i64, i64, i64, i64)*, i32 (%struct.gs_fapi_path_s*)* }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.gx_device_color_info_s = type { i32, i32, i32, i16, i8, i32, i32, i32, i32, %struct.gx_device_anti_alias_info_s, i32, [64 x i8], [64 x i8], [64 x i64], i8*, i32, i64, i32 }
%struct.gx_device_anti_alias_info_s = type { i32, i32 }
%struct.gx_device_cached_colors_s = type { i64, i64 }
%struct.gx_stroked_gradient_recognizer_s = type { i32, [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s] }
%struct.gs_fixed_point_s = type { i32, i32 }
%struct.gdev_space_params_s = type { i64, i64, %struct.gx_band_params_s, i32, i32 }
%struct.gx_band_params_s = type { i32, i32, i64 }
%struct.cmm_dev_profile_s = type { [4 x %struct.cmm_profile_s*], %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, [4 x %struct.gsicc_rendering_param_s], i32, i32, i32, i32, i32, i32, %struct.gsicc_namelist_s*, i32, %struct.gs_memory_s*, %struct.rc_header_s }
%struct.cmm_profile_s = type { i8, i8, i32, i32, i32, i32, %struct.gs_range_icc_s, i64, i32, [15 x i32], i32, i32, i32, %struct.gsicc_rendering_param_s, i8*, %struct.gx_device_s*, %struct.gsicc_namelist_s*, i8*, %struct.rc_header_s, i32, i8*, %struct.gs_memory_s*, %struct.gx_monitor_s* }
%struct.gs_range_icc_s = type { [15 x %struct.gs_range_s] }
%struct.gs_range_s = type { float, float }
%struct.gsicc_rendering_param_s = type { i32, i32, i32, i32, i32, i32 }
%struct.gx_monitor_s = type { %struct.gs_memory_s*, %union.gp_monitor }
%union.gp_monitor = type { i8* }
%struct.gsicc_namelist_s = type { i32, %struct.gsicc_colorname_s*, i8*, %struct.gs_devicen_color_map_s*, i32 }
%struct.gsicc_colorname_s = type { i8*, i32, %struct.gsicc_colorname_s* }
%struct.gs_devicen_color_map_s = type opaque
%struct.gx_page_device_procs_s = type { i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* }
%struct.gs_state_s = type opaque
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
%struct.gx_tile_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16 }
%struct.gx_xfont_procs_s = type opaque
%struct.gx_fill_params_s = type opaque
%struct.gx_stroke_params_s = type opaque
%struct.gs_fixed_edge_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image1_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, i32, i32, i32 }
%struct.gx_image_type_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gs_imager_state_s*, %struct.gs_image_common_s*, %struct.gs_int_point_s*)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s**)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s*)*, void (%struct.gs_image_common_s*, %struct.gs_memory_s*)*, i32 }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.gsicc_link_s = type { i8*, %struct.gscms_procs_s, %struct.gsicc_hashlink_s, %struct.gsicc_link_cache_s*, i32, %struct.gsicc_link_s*, %struct.gx_semaphore_s*, i32, i32, i32, i32, i32, i32, %struct.gscms_procs_s, i32, i32, i32 }
%struct.gsicc_hashlink_s = type { i64, i64, i64, i64 }
%struct.gsicc_link_cache_s = type { %struct.gsicc_link_s*, i32, %struct.rc_header_s, %struct.gs_memory_s*, %struct.gx_monitor_s*, %struct.gx_semaphore_s*, i32 }
%struct.gx_semaphore_s = type { %struct.gs_memory_s*, %union.gp_semaphore }
%union.gp_semaphore = type { i8* }
%struct.gscms_procs_s = type { void (%struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s*, i8*, i8*)*, void (%struct.gx_device_s*, %struct.gsicc_link_s*, i8*, i8*, i32)*, void (%struct.gsicc_link_s*)*, i32 (i8*, i32)* }
%struct.gsicc_bufferdesc_s = type { i8, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.client_color_space_data_s = type { void (%struct.gs_color_space_s*, i32)* }
%union.anon = type { %struct.gs_device_n_params_s }
%struct.gs_device_n_params_s = type { i64*, i32, %struct.gs_device_n_map_s*, %struct.gs_device_n_attributes_s*, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.gs_device_n_map_s = type opaque
%struct.gs_device_n_attributes_s = type opaque
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gx_image_enum_common_s = type { %struct.gx_image_type_s*, %struct.gx_image_enum_procs_s*, %struct.gx_device_s*, %struct.gs_memory_s*, i64, i32, i32, [65 x i32], [65 x i32] }
%struct.gx_image_enum_procs_s = type { i32 (%struct.gx_image_enum_common_s*, %struct.gx_image_plane_s*, i32, i32*)*, i32 (%struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_image_enum_common_s*)*, i32 (%struct.gx_image_enum_common_s*, i8*)* }
%struct.gx_image_plane_s = type { i8*, i32, i32 }
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_get_bits_params_s = type opaque
%struct.gs_composite_s = type { %struct.gs_composite_type_s*, i64, i32, %struct.gs_composite_s*, %struct.gs_composite_s* }
%struct.gs_composite_type_s = type { i8, %struct.gs_composite_type_procs_s }
%struct.gs_composite_type_procs_s = type { i32 (%struct.gs_composite_s*, %struct.gx_device_s**, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s*)*, i32 (%struct.gs_composite_s*, i8*, i32*, %struct.gx_device_clist_writer_s*)*, i32 (%struct.gs_composite_s**, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32, i32, %struct.gs_imager_state_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s**, %struct.gx_device_s*)*, i32 (%struct.gs_composite_s*, i8, i8)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32*, i32*, i32, i32)* }
%struct.gx_device_clist_writer_s = type opaque
%struct.gs_transparency_group_params_s = type { %struct.gs_color_space_s*, i32, i32, i32, i32, i32, i32, i32, i64, %struct.cmm_profile_s* }
%struct.gx_transparency_mask_params_s = type { i32, i32, i32, i32, [64 x float], float, i32, i32, i32, i32, [256 x i8], i64, %struct.cmm_profile_s* }
%struct.gx_cm_color_map_procs_s = type { void (%struct.gx_device_s*, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* }
%struct.gs_pattern1_instance_s = type opaque
%struct.gs_fill_attributes_s = type { %struct.gs_fixed_rect_s*, i32, %struct.gx_device_halftone_s*, i32, i32, i32, %struct.patch_fill_state_s* }
%struct.patch_fill_state_s = type opaque
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.gx_image_enum_s = type opaque

@gx_device_halftone_list = constant [1 x %struct.gx_device_halftone_resource_s** ()*] zeroinitializer, align 8
@gx_image_class_table = constant [6 x i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* (%struct.gx_image_enum_s*)*] [i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* (%struct.gx_image_enum_s*)* @gs_image_class_0_interpolate, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* (%struct.gx_image_enum_s*)* @gs_image_class_1_simple, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* (%struct.gx_image_enum_s*)* @gs_image_class_2_fracs, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* (%struct.gx_image_enum_s*)* @gs_image_class_3_mono, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* (%struct.gx_image_enum_s*)* @gs_image_class_4_color, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* (%struct.gx_image_enum_s*)* null], align 16
@gx_image_class_table_count = constant i32 5, align 4
@gs_image_type_3 = external constant %struct.gx_image_type_s, align 8
@gs_image_type_4 = external constant %struct.gx_image_type_s, align 8
@gs_image_type_3x = external constant %struct.gx_image_type_s, align 8
@gs_image_type_2 = external constant %struct.gx_image_type_s, align 8
@gs_image_type_1 = external constant %struct.gx_image_type_s, align 8
@gs_image_type_mask1 = external constant %struct.gx_image_type_s, align 8
@gx_image_type_table = constant [7 x %struct.gx_image_type_s*] [%struct.gx_image_type_s* @gs_image_type_3, %struct.gx_image_type_s* @gs_image_type_4, %struct.gx_image_type_s* @gs_image_type_3x, %struct.gx_image_type_s* @gs_image_type_2, %struct.gx_image_type_s* @gs_image_type_1, %struct.gx_image_type_s* @gs_image_type_mask1, %struct.gx_image_type_s* null], align 16
@gx_image_type_table_count = constant i32 6, align 4
@gx_init_table = constant [5 x i32 (%struct.gs_memory_s*)*] [i32 (%struct.gs_memory_s*)* @gs_gxclfile_init, i32 (%struct.gs_memory_s*)* @gs_gxclmem_init, i32 (%struct.gs_memory_s*)* @gs_gshtscr_init, i32 (%struct.gs_memory_s*)* @gs_fapi_init, i32 (%struct.gs_memory_s*)* null], align 16
@gs_iodev_os = external global %struct.gx_io_device_s, align 8
@gs_iodev_null = external constant %struct.gx_io_device_s, align 8
@gs_iodev_calendar = external constant %struct.gx_io_device_s, align 8
@gs_iodev_stdin = external constant %struct.gx_io_device_s, align 8
@gs_iodev_stdout = external constant %struct.gx_io_device_s, align 8
@gs_iodev_stderr = external constant %struct.gx_io_device_s, align 8
@gs_iodev_lineedit = external constant %struct.gx_io_device_s, align 8
@gs_iodev_statementedit = external constant %struct.gx_io_device_s, align 8
@gs_iodev_pipe = external constant %struct.gx_io_device_s, align 8
@gs_iodev_ram = external constant %struct.gx_io_device_s, align 8
@gs_iodev_rom = external constant %struct.gx_io_device_s, align 8
@gx_io_device_table = constant [12 x %struct.gx_io_device_s*] [%struct.gx_io_device_s* @gs_iodev_os, %struct.gx_io_device_s* @gs_iodev_null, %struct.gx_io_device_s* @gs_iodev_calendar, %struct.gx_io_device_s* @gs_iodev_stdin, %struct.gx_io_device_s* @gs_iodev_stdout, %struct.gx_io_device_s* @gs_iodev_stderr, %struct.gx_io_device_s* @gs_iodev_lineedit, %struct.gx_io_device_s* @gs_iodev_statementedit, %struct.gx_io_device_s* @gs_iodev_pipe, %struct.gx_io_device_s* @gs_iodev_ram, %struct.gx_io_device_s* @gs_iodev_rom, %struct.gx_io_device_s* null], align 16
@gx_io_device_table_count = constant i32 11, align 4
@gx_compositor_list = internal constant [4 x %struct.gs_composite_type_s*] [%struct.gs_composite_type_s* @gs_composite_alpha_type, %struct.gs_composite_type_s* @gs_composite_overprint_type, %struct.gs_composite_type_s* @gs_composite_pdf14trans_type, %struct.gs_composite_type_s* null], align 16
@gx_device_list = internal global [1024 x %struct.gx_device_s*] [%struct.gx_device_s* @gs_bbox_device, %struct.gx_device_s* @gs_x11_device, %struct.gx_device_s* @gs_x11alpha_device, %struct.gx_device_s* @gs_x11cmyk_device, %struct.gx_device_s* @gs_x11cmyk2_device, %struct.gx_device_s* @gs_x11cmyk4_device, %struct.gx_device_s* @gs_x11cmyk8_device, %struct.gx_device_s* @gs_x11gray2_device, %struct.gx_device_s* @gs_x11gray4_device, %struct.gx_device_s* @gs_x11mono_device, %struct.gx_device_s* @gs_x11rg16x_device, %struct.gx_device_s* @gs_x11rg32x_device, %struct.gx_device_s* @gs_bit_device, %struct.gx_device_s* @gs_bitcmyk_device, %struct.gx_device_s* @gs_bitrgb_device, %struct.gx_device_s* @gs_bitrgbtags_device, %struct.gx_device_s* @gs_bmp16_device, %struct.gx_device_s* @gs_bmp16m_device, %struct.gx_device_s* @gs_bmp256_device, %struct.gx_device_s* @gs_bmp32b_device, %struct.gx_device_s* @gs_bmpgray_device, %struct.gx_device_s* @gs_bmpmono_device, %struct.gx_device_s* @gs_bmpsep1_device, %struct.gx_device_s* @gs_bmpsep8_device, %struct.gx_device_s* @gs_ccr_device, %struct.gx_device_s* @gs_cif_device, %struct.gx_device_s* @gs_devicen_device, %struct.gx_device_s* @gs_eps2write_device, %struct.gx_device_s* @gs_pdfwrite_device, %struct.gx_device_s* @gs_epswrite_device, %struct.gx_device_s* @gs_fpng_device, %struct.gx_device_s* @gs_inferno_device, %struct.gx_device_s* @gs_ink_cov_device, %struct.gx_device_s* @gs_inkcov_device, %struct.gx_device_s* @gs_jpeg_device, %struct.gx_device_s* @gs_jpegcmyk_device, %struct.gx_device_s* @gs_jpeggray_device, %struct.gx_device_s* @gs_mag16_device, %struct.gx_device_s* @gs_mag256_device, %struct.gx_device_s* @gs_mgr4_device, %struct.gx_device_s* @gs_mgr8_device, %struct.gx_device_s* @gs_mgrgray2_device, %struct.gx_device_s* @gs_mgrgray4_device, %struct.gx_device_s* @gs_mgrgray8_device, %struct.gx_device_s* @gs_mgrmono_device, %struct.gx_device_s* @gs_miff24_device, %struct.gx_device_s* @gs_pam_device, %struct.gx_device_s* @gs_pamcmyk32_device, %struct.gx_device_s* @gs_pamcmyk4_device, %struct.gx_device_s* @gs_pbm_device, %struct.gx_device_s* @gs_pbmraw_device, %struct.gx_device_s* @gs_pcx16_device, %struct.gx_device_s* @gs_pcx24b_device, %struct.gx_device_s* @gs_pcx256_device, %struct.gx_device_s* @gs_pcx2up_device, %struct.gx_device_s* @gs_pcx256_device, %struct.gx_device_s* @gs_pcxcmyk_device, %struct.gx_device_s* @gs_pcxgray_device, %struct.gx_device_s* @gs_pcxmono_device, %struct.gx_device_s* @gs_pdfwrite_device, %struct.gx_device_s* @gs_pgm_device, %struct.gx_device_s* @gs_pgmraw_device, %struct.gx_device_s* @gs_pgnm_device, %struct.gx_device_s* @gs_pgnmraw_device, %struct.gx_device_s* @gs_pkm_device, %struct.gx_device_s* @gs_pkmraw_device, %struct.gx_device_s* @gs_pksm_device, %struct.gx_device_s* @gs_pksmraw_device, %struct.gx_device_s* @gs_plan_device, %struct.gx_device_s* @gs_plan9bm_device, %struct.gx_device_s* @gs_planc_device, %struct.gx_device_s* @gs_plang_device, %struct.gx_device_s* @gs_plank_device, %struct.gx_device_s* @gs_planm_device, %struct.gx_device_s* @gs_pnm_device, %struct.gx_device_s* @gs_pnmraw_device, %struct.gx_device_s* @gs_ppm_device, %struct.gx_device_s* @gs_ppmraw_device, %struct.gx_device_s* @gs_ps2write_device, %struct.gx_device_s* @gs_pdfwrite_device, %struct.gx_device_s* @gs_psdcmyk_device, %struct.gx_device_s* @gs_psdcmykog_device, %struct.gx_device_s* @gs_psdrgb_device, %struct.gx_device_s* @gs_sgirgb_device, %struct.gx_device_s* @gs_spotcmyk_device, %struct.gx_device_s* @gs_sunhmono_device, %struct.gx_device_s* @gs_txtwrite_device, %struct.gx_device_s* @gs_xcf_device, %struct.gx_device_s* @gs_xpswrite_device, %struct.gx_device_s* @gs_alc1900_device, %struct.gx_device_s* @gs_alc2000_device, %struct.gx_device_s* @gs_alc4000_device, %struct.gx_device_s* @gs_alc4100_device, %struct.gx_device_s* @gs_alc8500_device, %struct.gx_device_s* @gs_alc8600_device, %struct.gx_device_s* @gs_alc9100_device, %struct.gx_device_s* @gs_ap3250_device, %struct.gx_device_s* @gs_appledmp_device, %struct.gx_device_s* @gs_atx23_device, %struct.gx_device_s* @gs_atx24_device, %struct.gx_device_s* @gs_atx38_device, %struct.gx_device_s* @gs_bj10e_device, %struct.gx_device_s* @gs_bj10v_device, %struct.gx_device_s* @gs_bj10vh_device, %struct.gx_device_s* @gs_bj200_device, %struct.gx_device_s* @gs_bjc600_device, %struct.gx_device_s* @gs_bjc800_device, %struct.gx_device_s* @gs_bjc880j_device, %struct.gx_device_s* @gs_bjccmyk_device, %struct.gx_device_s* @gs_bjccolor_device, %struct.gx_device_s* @gs_bjcgray_device, %struct.gx_device_s* @gs_bjcmono_device, %struct.gx_device_s* @gs_cdeskjet_device, %struct.gx_device_s* @gs_cdj1600_device, %struct.gx_device_s* @gs_cdj500_device, %struct.gx_device_s* @gs_cdj550_device, %struct.gx_device_s* @gs_cdj670_device, %struct.gx_device_s* @gs_cdj850_device, %struct.gx_device_s* @gs_cdj880_device, %struct.gx_device_s* @gs_cdj890_device, %struct.gx_device_s* @gs_cdj970_device, %struct.gx_device_s* @gs_cdjcolor_device, %struct.gx_device_s* @gs_cdjmono_device, %struct.gx_device_s* @gs_cdnj500_device, %struct.gx_device_s* @gs_chp2200_device, %struct.gx_device_s* @gs_cljet5_device, %struct.gx_device_s* @gs_cljet5c_device, %struct.gx_device_s* @gs_cljet5pr_device, %struct.gx_device_s* @gs_coslw2p_device, %struct.gx_device_s* @gs_coslwxl_device, %struct.gx_device_s* @gs_cp50_device, %struct.gx_device_s* @gs_declj250_device, %struct.gx_device_s* @gs_deskjet_device, %struct.gx_device_s* @gs_dj505j_device, %struct.gx_device_s* @gs_djet500_device, %struct.gx_device_s* @gs_djet500c_device, %struct.gx_device_s* @gs_dl2100_device, %struct.gx_device_s* @gs_dnj650c_device, %struct.gx_device_s* @gs_epl2050_device, %struct.gx_device_s* @gs_epl2050p_device, %struct.gx_device_s* @gs_epl2120_device, %struct.gx_device_s* @gs_epl2500_device, %struct.gx_device_s* @gs_epl2750_device, %struct.gx_device_s* @gs_epl5800_device, %struct.gx_device_s* @gs_epl5900_device, %struct.gx_device_s* @gs_epl6100_device, %struct.gx_device_s* @gs_epl6200_device, %struct.gx_device_s* @gs_eplcolor_device, %struct.gx_device_s* @gs_eplmono_device, %struct.gx_device_s* @gs_eps9high_device, %struct.gx_device_s* @gs_eps9mid_device, %struct.gx_device_s* @gs_epson_device, %struct.gx_device_s* @gs_epsonc_device, %struct.gx_device_s* @gs_escp_device, %struct.gx_device_s* @gs_escpage_device, %struct.gx_device_s* @gs_fmlbp_device, %struct.gx_device_s* @gs_fmpr_device, %struct.gx_device_s* @gs_fs600_device, %struct.gx_device_s* @gs_gdi_device, %struct.gx_device_s* @gs_hl1240_device, %struct.gx_device_s* @gs_hl1250_device, %struct.gx_device_s* @gs_hl7x0_device, %struct.gx_device_s* @gs_hpdj1120c_device, %struct.gx_device_s* @gs_hpdj310_device, %struct.gx_device_s* @gs_hpdj320_device, %struct.gx_device_s* @gs_hpdj340_device, %struct.gx_device_s* @gs_hpdj400_device, %struct.gx_device_s* @gs_hpdj500_device, %struct.gx_device_s* @gs_hpdj500c_device, %struct.gx_device_s* @gs_hpdj510_device, %struct.gx_device_s* @gs_hpdj520_device, %struct.gx_device_s* @gs_hpdj540_device, %struct.gx_device_s* @gs_hpdj550c_device, %struct.gx_device_s* @gs_hpdj560c_device, %struct.gx_device_s* @gs_hpdj600_device, %struct.gx_device_s* @gs_hpdj660c_device, %struct.gx_device_s* @gs_hpdj670c_device, %struct.gx_device_s* @gs_hpdj680c_device, %struct.gx_device_s* @gs_hpdj690c_device, %struct.gx_device_s* @gs_hpdj850c_device, %struct.gx_device_s* @gs_hpdj855c_device, %struct.gx_device_s* @gs_hpdj870c_device, %struct.gx_device_s* @gs_hpdj890c_device, %struct.gx_device_s* @gs_hpdjplus_device, %struct.gx_device_s* @gs_hpdjportable_device, %struct.gx_device_s* @gs_ibmpro_device, %struct.gx_device_s* @gs_imagen_device, %struct.gx_device_s* @gs_iwhi_device, %struct.gx_device_s* @gs_iwlo_device, %struct.gx_device_s* @gs_iwlq_device, %struct.gx_device_s* @gs_jetp3852_device, %struct.gx_device_s* @gs_jj100_device, %struct.gx_device_s* @gs_la50_device, %struct.gx_device_s* @gs_la70_device, %struct.gx_device_s* @gs_la75_device, %struct.gx_device_s* @gs_la75plus_device, %struct.gx_device_s* @gs_laserjet_device, %struct.gx_device_s* @gs_lbp310_device, %struct.gx_device_s* @gs_lbp320_device, %struct.gx_device_s* @gs_lbp8_device, %struct.gx_device_s* @gs_lex2050_device, %struct.gx_device_s* @gs_lex3200_device, %struct.gx_device_s* @gs_lex5700_device, %struct.gx_device_s* @gs_lex7000_device, %struct.gx_device_s* @gs_lips2p_device, %struct.gx_device_s* @gs_lips3_device, %struct.gx_device_s* @gs_lips4_device, %struct.gx_device_s* @gs_lips4v_device, %struct.gx_device_s* @gs_lj250_device, %struct.gx_device_s* @gs_lj3100sw_device, %struct.gx_device_s* @gs_lj4dith_device, %struct.gx_device_s* @gs_lj4dithp_device, %struct.gx_device_s* @gs_lj5gray_device, %struct.gx_device_s* @gs_lj5mono_device, %struct.gx_device_s* @gs_ljet2p_device, %struct.gx_device_s* @gs_ljet3_device, %struct.gx_device_s* @gs_ljet3d_device, %struct.gx_device_s* @gs_ljet4_device, %struct.gx_device_s* @gs_ljet4d_device, %struct.gx_device_s* @gs_ljet4pjl_device, %struct.gx_device_s* @gs_ljetplus_device, %struct.gx_device_s* @gs_ln03_device, %struct.gx_device_s* @gs_lp1800_device, %struct.gx_device_s* @gs_lp1900_device, %struct.gx_device_s* @gs_lp2000_device, %struct.gx_device_s* @gs_lp2200_device, %struct.gx_device_s* @gs_lp2400_device, %struct.gx_device_s* @gs_lp2500_device, %struct.gx_device_s* @gs_lp2563_device, %struct.gx_device_s* @gs_lp3000c_device, %struct.gx_device_s* @gs_lp7500_device, %struct.gx_device_s* @gs_lp7700_device, %struct.gx_device_s* @gs_lp7900_device, %struct.gx_device_s* @gs_lp8000_device, %struct.gx_device_s* @gs_lp8000c_device, %struct.gx_device_s* @gs_lp8100_device, %struct.gx_device_s* @gs_lp8200c_device, %struct.gx_device_s* @gs_lp8300c_device, %struct.gx_device_s* @gs_lp8300f_device, %struct.gx_device_s* @gs_lp8400f_device, %struct.gx_device_s* @gs_lp8500c_device, %struct.gx_device_s* @gs_lp8600_device, %struct.gx_device_s* @gs_lp8600f_device, %struct.gx_device_s* @gs_lp8700_device, %struct.gx_device_s* @gs_lp8800c_device, %struct.gx_device_s* @gs_lp8900_device, %struct.gx_device_s* @gs_lp9000b_device, %struct.gx_device_s* @gs_lp9000c_device, %struct.gx_device_s* @gs_lp9100_device, %struct.gx_device_s* @gs_lp9200b_device, %struct.gx_device_s* @gs_lp9200c_device, %struct.gx_device_s* @gs_lp9300_device, %struct.gx_device_s* @gs_lp9400_device, %struct.gx_device_s* @gs_lp9500c_device, %struct.gx_device_s* @gs_lp9600_device, %struct.gx_device_s* @gs_lp9600s_device, %struct.gx_device_s* @gs_lp9800c_device, %struct.gx_device_s* @gs_lps4500_device, %struct.gx_device_s* @gs_lps6500_device, %struct.gx_device_s* @gs_lq850_device, %struct.gx_device_s* @gs_lxm3200_device, %struct.gx_device_s* @gs_lxm5700m_device, %struct.gx_device_s* @gs_m8510_device, %struct.gx_device_s* @gs_md1xMono_device, %struct.gx_device_s* @gs_md2k_device, %struct.gx_device_s* @gs_md50Eco_device, %struct.gx_device_s* @gs_md50Mono_device, %struct.gx_device_s* @gs_md5k_device, %struct.gx_device_s* @gs_mj500c_device, %struct.gx_device_s* @gs_mj6000c_device, %struct.gx_device_s* @gs_mj700v2c_device, %struct.gx_device_s* @gs_mj8000c_device, %struct.gx_device_s* @gs_ml600_device, %struct.gx_device_s* @gs_necp6_device, %struct.gx_device_s* @gs_npdl_device, %struct.gx_device_s* @gs_oce9050_device, %struct.gx_device_s* @gs_oki182_device, %struct.gx_device_s* @gs_oki4w_device, %struct.gx_device_s* @gs_okiibm_device, %struct.gx_device_s* @gs_oprp_device, %struct.gx_device_s* @gs_opvp_device, %struct.gx_device_s* @gs_paintjet_device, %struct.gx_device_s* @gs_pcl3_device, %struct.gx_device_s* @gs_photoex_device, %struct.gx_device_s* @gs_picty180_device, %struct.gx_device_s* @gs_pj_device, %struct.gx_device_s* @gs_pjetxl_device, %struct.gx_device_s* @gs_pjxl_device, %struct.gx_device_s* @gs_pjxl300_device, %struct.gx_device_s* @gs_pr1000_device, %struct.gx_device_s* @gs_pr1000_4_device, %struct.gx_device_s* @gs_pr150_device, %struct.gx_device_s* @gs_pr201_device, %struct.gx_device_s* @gs_pxlcolor_device, %struct.gx_device_s* @gs_pxlmono_device, %struct.gx_device_s* @gs_r4081_device, %struct.gx_device_s* @gs_rinkj_device, %struct.gx_device_s* @gs_rpdl_device, %struct.gx_device_s* @gs_samsunggdi_device, %struct.gx_device_s* @gs_sj48_device, %struct.gx_device_s* @gs_st800_device, %struct.gx_device_s* @gs_stcolor_device, %struct.gx_device_s* @gs_t4693d2_device, %struct.gx_device_s* @gs_t4693d4_device, %struct.gx_device_s* @gs_t4693d8_device, %struct.gx_device_s* @gs_tek4696_device, %struct.gx_device_s* @gs_uniprint_device, %struct.gx_device_s* @gs_xes_device, %struct.gx_device_s* @gs_ijs_device, %struct.gx_device_s* @gs_png16_device, %struct.gx_device_s* @gs_png16m_device, %struct.gx_device_s* @gs_png256_device, %struct.gx_device_s* @gs_png48_device, %struct.gx_device_s* @gs_pngalpha_device, %struct.gx_device_s* @gs_pnggray_device, %struct.gx_device_s* @gs_pngmono_device, %struct.gx_device_s* @gs_nullpage_device, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null, %struct.gx_device_s* null], align 16
@gs_fapi_server_inits = global [2 x i32 (%struct.gs_memory_s*, %struct.gs_fapi_server_s**)*] [i32 (%struct.gs_memory_s*, %struct.gs_fapi_server_s**)* @gs_fapi_ft_init, i32 (%struct.gs_memory_s*, %struct.gs_fapi_server_s**)* null], align 16
@gs_composite_alpha_type = external global %struct.gs_composite_type_s, align 8
@gs_composite_overprint_type = external global %struct.gs_composite_type_s, align 8
@gs_composite_pdf14trans_type = external global %struct.gs_composite_type_s, align 8
@gs_bbox_device = external constant %struct.gx_device_s, align 8
@gs_x11_device = external constant %struct.gx_device_s, align 8
@gs_x11alpha_device = external constant %struct.gx_device_s, align 8
@gs_x11cmyk_device = external constant %struct.gx_device_s, align 8
@gs_x11cmyk2_device = external constant %struct.gx_device_s, align 8
@gs_x11cmyk4_device = external constant %struct.gx_device_s, align 8
@gs_x11cmyk8_device = external constant %struct.gx_device_s, align 8
@gs_x11gray2_device = external constant %struct.gx_device_s, align 8
@gs_x11gray4_device = external constant %struct.gx_device_s, align 8
@gs_x11mono_device = external constant %struct.gx_device_s, align 8
@gs_x11rg16x_device = external constant %struct.gx_device_s, align 8
@gs_x11rg32x_device = external constant %struct.gx_device_s, align 8
@gs_bit_device = external constant %struct.gx_device_s, align 8
@gs_bitcmyk_device = external constant %struct.gx_device_s, align 8
@gs_bitrgb_device = external constant %struct.gx_device_s, align 8
@gs_bitrgbtags_device = external constant %struct.gx_device_s, align 8
@gs_bmp16_device = external constant %struct.gx_device_s, align 8
@gs_bmp16m_device = external constant %struct.gx_device_s, align 8
@gs_bmp256_device = external constant %struct.gx_device_s, align 8
@gs_bmp32b_device = external constant %struct.gx_device_s, align 8
@gs_bmpgray_device = external constant %struct.gx_device_s, align 8
@gs_bmpmono_device = external constant %struct.gx_device_s, align 8
@gs_bmpsep1_device = external constant %struct.gx_device_s, align 8
@gs_bmpsep8_device = external constant %struct.gx_device_s, align 8
@gs_ccr_device = external global %struct.gx_device_s, align 8
@gs_cif_device = external global %struct.gx_device_s, align 8
@gs_devicen_device = external global %struct.gx_device_s, align 8
@gs_eps2write_device = external constant %struct.gx_device_s, align 8
@gs_pdfwrite_device = external constant %struct.gx_device_s, align 8
@gs_epswrite_device = external constant %struct.gx_device_s, align 8
@gs_fpng_device = external constant %struct.gx_device_s, align 8
@gs_inferno_device = external global %struct.gx_device_s, align 8
@gs_ink_cov_device = external constant %struct.gx_device_s, align 8
@gs_inkcov_device = external constant %struct.gx_device_s, align 8
@gs_jpeg_device = external constant %struct.gx_device_s, align 8
@gs_jpegcmyk_device = external constant %struct.gx_device_s, align 8
@gs_jpeggray_device = external constant %struct.gx_device_s, align 8
@gs_mag16_device = external global %struct.gx_device_s, align 8
@gs_mag256_device = external global %struct.gx_device_s, align 8
@gs_mgr4_device = external global %struct.gx_device_s, align 8
@gs_mgr8_device = external global %struct.gx_device_s, align 8
@gs_mgrgray2_device = external global %struct.gx_device_s, align 8
@gs_mgrgray4_device = external global %struct.gx_device_s, align 8
@gs_mgrgray8_device = external global %struct.gx_device_s, align 8
@gs_mgrmono_device = external global %struct.gx_device_s, align 8
@gs_miff24_device = external global %struct.gx_device_s, align 8
@gs_pam_device = external constant %struct.gx_device_s, align 8
@gs_pamcmyk32_device = external constant %struct.gx_device_s, align 8
@gs_pamcmyk4_device = external constant %struct.gx_device_s, align 8
@gs_pbm_device = external constant %struct.gx_device_s, align 8
@gs_pbmraw_device = external constant %struct.gx_device_s, align 8
@gs_pcx16_device = external constant %struct.gx_device_s, align 8
@gs_pcx24b_device = external constant %struct.gx_device_s, align 8
@gs_pcx256_device = external constant %struct.gx_device_s, align 8
@gs_pcx2up_device = external global %struct.gx_device_s, align 8
@gs_pcxcmyk_device = external constant %struct.gx_device_s, align 8
@gs_pcxgray_device = external constant %struct.gx_device_s, align 8
@gs_pcxmono_device = external constant %struct.gx_device_s, align 8
@gs_pgm_device = external constant %struct.gx_device_s, align 8
@gs_pgmraw_device = external constant %struct.gx_device_s, align 8
@gs_pgnm_device = external constant %struct.gx_device_s, align 8
@gs_pgnmraw_device = external constant %struct.gx_device_s, align 8
@gs_pkm_device = external constant %struct.gx_device_s, align 8
@gs_pkmraw_device = external constant %struct.gx_device_s, align 8
@gs_pksm_device = external constant %struct.gx_device_s, align 8
@gs_pksmraw_device = external constant %struct.gx_device_s, align 8
@gs_plan_device = external constant %struct.gx_device_s, align 8
@gs_plan9bm_device = external constant %struct.gx_device_s, align 8
@gs_planc_device = external constant %struct.gx_device_s, align 8
@gs_plang_device = external constant %struct.gx_device_s, align 8
@gs_plank_device = external constant %struct.gx_device_s, align 8
@gs_planm_device = external constant %struct.gx_device_s, align 8
@gs_pnm_device = external constant %struct.gx_device_s, align 8
@gs_pnmraw_device = external constant %struct.gx_device_s, align 8
@gs_ppm_device = external constant %struct.gx_device_s, align 8
@gs_ppmraw_device = external constant %struct.gx_device_s, align 8
@gs_ps2write_device = external constant %struct.gx_device_s, align 8
@gs_psdcmyk_device = external global %struct.gx_device_s, align 8
@gs_psdcmykog_device = external global %struct.gx_device_s, align 8
@gs_psdrgb_device = external global %struct.gx_device_s, align 8
@gs_sgirgb_device = external global %struct.gx_device_s, align 8
@gs_spotcmyk_device = external global %struct.gx_device_s, align 8
@gs_sunhmono_device = external global %struct.gx_device_s, align 8
@gs_txtwrite_device = external constant %struct.gx_device_s, align 8
@gs_xcf_device = external global %struct.gx_device_s, align 8
@gs_xpswrite_device = external constant %struct.gx_device_s, align 8
@gs_alc1900_device = external global %struct.gx_device_s, align 8
@gs_alc2000_device = external global %struct.gx_device_s, align 8
@gs_alc4000_device = external global %struct.gx_device_s, align 8
@gs_alc4100_device = external global %struct.gx_device_s, align 8
@gs_alc8500_device = external global %struct.gx_device_s, align 8
@gs_alc8600_device = external global %struct.gx_device_s, align 8
@gs_alc9100_device = external global %struct.gx_device_s, align 8
@gs_ap3250_device = external global %struct.gx_device_s, align 8
@gs_appledmp_device = external global %struct.gx_device_s, align 8
@gs_atx23_device = external constant %struct.gx_device_s, align 8
@gs_atx24_device = external constant %struct.gx_device_s, align 8
@gs_atx38_device = external constant %struct.gx_device_s, align 8
@gs_bj10e_device = external global %struct.gx_device_s, align 8
@gs_bj10v_device = external global %struct.gx_device_s, align 8
@gs_bj10vh_device = external global %struct.gx_device_s, align 8
@gs_bj200_device = external global %struct.gx_device_s, align 8
@gs_bjc600_device = external global %struct.gx_device_s, align 8
@gs_bjc800_device = external global %struct.gx_device_s, align 8
@gs_bjc880j_device = external global %struct.gx_device_s, align 8
@gs_bjccmyk_device = external global %struct.gx_device_s, align 8
@gs_bjccolor_device = external global %struct.gx_device_s, align 8
@gs_bjcgray_device = external global %struct.gx_device_s, align 8
@gs_bjcmono_device = external global %struct.gx_device_s, align 8
@gs_cdeskjet_device = external global %struct.gx_device_s, align 8
@gs_cdj1600_device = external constant %struct.gx_device_s, align 8
@gs_cdj500_device = external global %struct.gx_device_s, align 8
@gs_cdj550_device = external global %struct.gx_device_s, align 8
@gs_cdj670_device = external constant %struct.gx_device_s, align 8
@gs_cdj850_device = external constant %struct.gx_device_s, align 8
@gs_cdj880_device = external constant %struct.gx_device_s, align 8
@gs_cdj890_device = external constant %struct.gx_device_s, align 8
@gs_cdj970_device = external constant %struct.gx_device_s, align 8
@gs_cdjcolor_device = external global %struct.gx_device_s, align 8
@gs_cdjmono_device = external global %struct.gx_device_s, align 8
@gs_cdnj500_device = external constant %struct.gx_device_s, align 8
@gs_chp2200_device = external constant %struct.gx_device_s, align 8
@gs_cljet5_device = external global %struct.gx_device_s, align 8
@gs_cljet5c_device = external global %struct.gx_device_s, align 8
@gs_cljet5pr_device = external global %struct.gx_device_s, align 8
@gs_coslw2p_device = external global %struct.gx_device_s, align 8
@gs_coslwxl_device = external global %struct.gx_device_s, align 8
@gs_cp50_device = external global %struct.gx_device_s, align 8
@gs_declj250_device = external global %struct.gx_device_s, align 8
@gs_deskjet_device = external constant %struct.gx_device_s, align 8
@gs_dj505j_device = external global %struct.gx_device_s, align 8
@gs_djet500_device = external constant %struct.gx_device_s, align 8
@gs_djet500c_device = external global %struct.gx_device_s, align 8
@gs_dl2100_device = external global %struct.gx_device_s, align 8
@gs_dnj650c_device = external global %struct.gx_device_s, align 8
@gs_epl2050_device = external global %struct.gx_device_s, align 8
@gs_epl2050p_device = external global %struct.gx_device_s, align 8
@gs_epl2120_device = external global %struct.gx_device_s, align 8
@gs_epl2500_device = external global %struct.gx_device_s, align 8
@gs_epl2750_device = external global %struct.gx_device_s, align 8
@gs_epl5800_device = external global %struct.gx_device_s, align 8
@gs_epl5900_device = external global %struct.gx_device_s, align 8
@gs_epl6100_device = external global %struct.gx_device_s, align 8
@gs_epl6200_device = external global %struct.gx_device_s, align 8
@gs_eplcolor_device = external global %struct.gx_device_s, align 8
@gs_eplmono_device = external global %struct.gx_device_s, align 8
@gs_eps9high_device = external global %struct.gx_device_s, align 8
@gs_eps9mid_device = external global %struct.gx_device_s, align 8
@gs_epson_device = external global %struct.gx_device_s, align 8
@gs_epsonc_device = external global %struct.gx_device_s, align 8
@gs_escp_device = external global %struct.gx_device_s, align 8
@gs_escpage_device = external global %struct.gx_device_s, align 8
@gs_fmlbp_device = external global %struct.gx_device_s, align 8
@gs_fmpr_device = external global %struct.gx_device_s, align 8
@gs_fs600_device = external constant %struct.gx_device_s, align 8
@gs_gdi_device = external global %struct.gx_device_s, align 8
@gs_hl1240_device = external global %struct.gx_device_s, align 8
@gs_hl1250_device = external global %struct.gx_device_s, align 8
@gs_hl7x0_device = external global %struct.gx_device_s, align 8
@gs_hpdj1120c_device = external global %struct.gx_device_s, align 8
@gs_hpdj310_device = external global %struct.gx_device_s, align 8
@gs_hpdj320_device = external global %struct.gx_device_s, align 8
@gs_hpdj340_device = external global %struct.gx_device_s, align 8
@gs_hpdj400_device = external global %struct.gx_device_s, align 8
@gs_hpdj500_device = external global %struct.gx_device_s, align 8
@gs_hpdj500c_device = external global %struct.gx_device_s, align 8
@gs_hpdj510_device = external global %struct.gx_device_s, align 8
@gs_hpdj520_device = external global %struct.gx_device_s, align 8
@gs_hpdj540_device = external global %struct.gx_device_s, align 8
@gs_hpdj550c_device = external global %struct.gx_device_s, align 8
@gs_hpdj560c_device = external global %struct.gx_device_s, align 8
@gs_hpdj600_device = external global %struct.gx_device_s, align 8
@gs_hpdj660c_device = external global %struct.gx_device_s, align 8
@gs_hpdj670c_device = external global %struct.gx_device_s, align 8
@gs_hpdj680c_device = external global %struct.gx_device_s, align 8
@gs_hpdj690c_device = external global %struct.gx_device_s, align 8
@gs_hpdj850c_device = external global %struct.gx_device_s, align 8
@gs_hpdj855c_device = external global %struct.gx_device_s, align 8
@gs_hpdj870c_device = external global %struct.gx_device_s, align 8
@gs_hpdj890c_device = external global %struct.gx_device_s, align 8
@gs_hpdjplus_device = external global %struct.gx_device_s, align 8
@gs_hpdjportable_device = external global %struct.gx_device_s, align 8
@gs_ibmpro_device = external global %struct.gx_device_s, align 8
@gs_imagen_device = external global %struct.gx_device_s, align 8
@gs_iwhi_device = external global %struct.gx_device_s, align 8
@gs_iwlo_device = external global %struct.gx_device_s, align 8
@gs_iwlq_device = external global %struct.gx_device_s, align 8
@gs_jetp3852_device = external global %struct.gx_device_s, align 8
@gs_jj100_device = external global %struct.gx_device_s, align 8
@gs_la50_device = external global %struct.gx_device_s, align 8
@gs_la70_device = external global %struct.gx_device_s, align 8
@gs_la75_device = external global %struct.gx_device_s, align 8
@gs_la75plus_device = external global %struct.gx_device_s, align 8
@gs_laserjet_device = external constant %struct.gx_device_s, align 8
@gs_lbp310_device = external global %struct.gx_device_s, align 8
@gs_lbp320_device = external global %struct.gx_device_s, align 8
@gs_lbp8_device = external global %struct.gx_device_s, align 8
@gs_lex2050_device = external global %struct.gx_device_s, align 8
@gs_lex3200_device = external global %struct.gx_device_s, align 8
@gs_lex5700_device = external global %struct.gx_device_s, align 8
@gs_lex7000_device = external global %struct.gx_device_s, align 8
@gs_lips2p_device = external global %struct.gx_device_s, align 8
@gs_lips3_device = external global %struct.gx_device_s, align 8
@gs_lips4_device = external global %struct.gx_device_s, align 8
@gs_lips4v_device = external global %struct.gx_device_s, align 8
@gs_lj250_device = external global %struct.gx_device_s, align 8
@gs_lj3100sw_device = external global %struct.gx_device_s, align 8
@gs_lj4dith_device = external global %struct.gx_device_s, align 8
@gs_lj4dithp_device = external global %struct.gx_device_s, align 8
@gs_lj5gray_device = external global %struct.gx_device_s, align 8
@gs_lj5mono_device = external global %struct.gx_device_s, align 8
@gs_ljet2p_device = external constant %struct.gx_device_s, align 8
@gs_ljet3_device = external constant %struct.gx_device_s, align 8
@gs_ljet3d_device = external constant %struct.gx_device_s, align 8
@gs_ljet4_device = external constant %struct.gx_device_s, align 8
@gs_ljet4d_device = external constant %struct.gx_device_s, align 8
@gs_ljet4pjl_device = external global %struct.gx_device_s, align 8
@gs_ljetplus_device = external constant %struct.gx_device_s, align 8
@gs_ln03_device = external global %struct.gx_device_s, align 8
@gs_lp1800_device = external global %struct.gx_device_s, align 8
@gs_lp1900_device = external global %struct.gx_device_s, align 8
@gs_lp2000_device = external global %struct.gx_device_s, align 8
@gs_lp2200_device = external global %struct.gx_device_s, align 8
@gs_lp2400_device = external global %struct.gx_device_s, align 8
@gs_lp2500_device = external global %struct.gx_device_s, align 8
@gs_lp2563_device = external constant %struct.gx_device_s, align 8
@gs_lp3000c_device = external global %struct.gx_device_s, align 8
@gs_lp7500_device = external global %struct.gx_device_s, align 8
@gs_lp7700_device = external global %struct.gx_device_s, align 8
@gs_lp7900_device = external global %struct.gx_device_s, align 8
@gs_lp8000_device = external global %struct.gx_device_s, align 8
@gs_lp8000c_device = external global %struct.gx_device_s, align 8
@gs_lp8100_device = external global %struct.gx_device_s, align 8
@gs_lp8200c_device = external global %struct.gx_device_s, align 8
@gs_lp8300c_device = external global %struct.gx_device_s, align 8
@gs_lp8300f_device = external global %struct.gx_device_s, align 8
@gs_lp8400f_device = external global %struct.gx_device_s, align 8
@gs_lp8500c_device = external global %struct.gx_device_s, align 8
@gs_lp8600_device = external global %struct.gx_device_s, align 8
@gs_lp8600f_device = external global %struct.gx_device_s, align 8
@gs_lp8700_device = external global %struct.gx_device_s, align 8
@gs_lp8800c_device = external global %struct.gx_device_s, align 8
@gs_lp8900_device = external global %struct.gx_device_s, align 8
@gs_lp9000b_device = external global %struct.gx_device_s, align 8
@gs_lp9000c_device = external global %struct.gx_device_s, align 8
@gs_lp9100_device = external global %struct.gx_device_s, align 8
@gs_lp9200b_device = external global %struct.gx_device_s, align 8
@gs_lp9200c_device = external global %struct.gx_device_s, align 8
@gs_lp9300_device = external global %struct.gx_device_s, align 8
@gs_lp9400_device = external global %struct.gx_device_s, align 8
@gs_lp9500c_device = external global %struct.gx_device_s, align 8
@gs_lp9600_device = external global %struct.gx_device_s, align 8
@gs_lp9600s_device = external global %struct.gx_device_s, align 8
@gs_lp9800c_device = external global %struct.gx_device_s, align 8
@gs_lps4500_device = external global %struct.gx_device_s, align 8
@gs_lps6500_device = external global %struct.gx_device_s, align 8
@gs_lq850_device = external global %struct.gx_device_s, align 8
@gs_lxm3200_device = external global %struct.gx_device_s, align 8
@gs_lxm5700m_device = external global %struct.gx_device_s, align 8
@gs_m8510_device = external global %struct.gx_device_s, align 8
@gs_md1xMono_device = external global %struct.gx_device_s, align 8
@gs_md2k_device = external global %struct.gx_device_s, align 8
@gs_md50Eco_device = external global %struct.gx_device_s, align 8
@gs_md50Mono_device = external global %struct.gx_device_s, align 8
@gs_md5k_device = external global %struct.gx_device_s, align 8
@gs_mj500c_device = external global %struct.gx_device_s, align 8
@gs_mj6000c_device = external global %struct.gx_device_s, align 8
@gs_mj700v2c_device = external global %struct.gx_device_s, align 8
@gs_mj8000c_device = external global %struct.gx_device_s, align 8
@gs_ml600_device = external global %struct.gx_device_s, align 8
@gs_necp6_device = external global %struct.gx_device_s, align 8
@gs_npdl_device = external global %struct.gx_device_s, align 8
@gs_oce9050_device = external constant %struct.gx_device_s, align 8
@gs_oki182_device = external global %struct.gx_device_s, align 8
@gs_oki4w_device = external global %struct.gx_device_s, align 8
@gs_okiibm_device = external global %struct.gx_device_s, align 8
@gs_oprp_device = external global %struct.gx_device_s, align 8
@gs_opvp_device = external global %struct.gx_device_s, align 8
@gs_paintjet_device = external global %struct.gx_device_s, align 8
@gs_pcl3_device = external global %struct.gx_device_s, align 8
@gs_photoex_device = external global %struct.gx_device_s, align 8
@gs_picty180_device = external global %struct.gx_device_s, align 8
@gs_pj_device = external global %struct.gx_device_s, align 8
@gs_pjetxl_device = external global %struct.gx_device_s, align 8
@gs_pjxl_device = external global %struct.gx_device_s, align 8
@gs_pjxl300_device = external global %struct.gx_device_s, align 8
@gs_pr1000_device = external global %struct.gx_device_s, align 8
@gs_pr1000_4_device = external global %struct.gx_device_s, align 8
@gs_pr150_device = external global %struct.gx_device_s, align 8
@gs_pr201_device = external global %struct.gx_device_s, align 8
@gs_pxlcolor_device = external constant %struct.gx_device_s, align 8
@gs_pxlmono_device = external constant %struct.gx_device_s, align 8
@gs_r4081_device = external global %struct.gx_device_s, align 8
@gs_rinkj_device = external global %struct.gx_device_s, align 8
@gs_rpdl_device = external global %struct.gx_device_s, align 8
@gs_samsunggdi_device = external global %struct.gx_device_s, align 8
@gs_sj48_device = external global %struct.gx_device_s, align 8
@gs_st800_device = external global %struct.gx_device_s, align 8
@gs_stcolor_device = external global %struct.gx_device_s, align 8
@gs_t4693d2_device = external global %struct.gx_device_s, align 8
@gs_t4693d4_device = external global %struct.gx_device_s, align 8
@gs_t4693d8_device = external global %struct.gx_device_s, align 8
@gs_tek4696_device = external global %struct.gx_device_s, align 8
@gs_uniprint_device = external global %struct.gx_device_s, align 8
@gs_xes_device = external global %struct.gx_device_s, align 8
@gs_ijs_device = external global %struct.gx_device_s, align 8
@gs_png16_device = external constant %struct.gx_device_s, align 8
@gs_png16m_device = external constant %struct.gx_device_s, align 8
@gs_png256_device = external constant %struct.gx_device_s, align 8
@gs_png48_device = external constant %struct.gx_device_s, align 8
@gs_pngalpha_device = external constant %struct.gx_device_s, align 8
@gs_pnggray_device = external constant %struct.gx_device_s, align 8
@gs_pngmono_device = external constant %struct.gx_device_s, align 8
@gs_nullpage_device = external constant %struct.gx_device_s, align 8

declare i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* @gs_image_class_0_interpolate(%struct.gx_image_enum_s*) #0

declare i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* @gs_image_class_1_simple(%struct.gx_image_enum_s*) #0

declare i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* @gs_image_class_2_fracs(%struct.gx_image_enum_s*) #0

declare i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* @gs_image_class_3_mono(%struct.gx_image_enum_s*) #0

declare i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* @gs_image_class_4_color(%struct.gx_image_enum_s*) #0

declare i32 @gs_gxclfile_init(%struct.gs_memory_s*) #0

declare i32 @gs_gxclmem_init(%struct.gs_memory_s*) #0

declare i32 @gs_gshtscr_init(%struct.gs_memory_s*) #0

declare i32 @gs_fapi_init(%struct.gs_memory_s*) #0

; Function Attrs: nounwind uwtable
define %struct.gs_composite_type_s* @gs_find_compositor(i32 %comp_id) #1 {
entry:
  %comp_id.addr = alloca i32, align 4
  %ppcomp = alloca %struct.gs_composite_type_s**, align 8
  %pcomp = alloca %struct.gs_composite_type_s*, align 8
  store i32 %comp_id, i32* %comp_id.addr, align 4, !tbaa !1
  %0 = bitcast %struct.gs_composite_type_s*** %ppcomp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  store %struct.gs_composite_type_s** getelementptr inbounds ([4 x %struct.gs_composite_type_s*], [4 x %struct.gs_composite_type_s*]* @gx_compositor_list, i32 0, i32 0), %struct.gs_composite_type_s*** %ppcomp, align 8, !tbaa !5
  %1 = bitcast %struct.gs_composite_type_s** %pcomp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load %struct.gs_composite_type_s**, %struct.gs_composite_type_s*** %ppcomp, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds %struct.gs_composite_type_s*, %struct.gs_composite_type_s** %2, i32 1
  store %struct.gs_composite_type_s** %incdec.ptr, %struct.gs_composite_type_s*** %ppcomp, align 8, !tbaa !5
  %3 = load %struct.gs_composite_type_s*, %struct.gs_composite_type_s** %2, align 8, !tbaa !5
  store %struct.gs_composite_type_s* %3, %struct.gs_composite_type_s** %pcomp, align 8, !tbaa !5
  %cmp = icmp ne %struct.gs_composite_type_s* %3, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load %struct.gs_composite_type_s*, %struct.gs_composite_type_s** %pcomp, align 8, !tbaa !5
  %comp_id1 = getelementptr inbounds %struct.gs_composite_type_s, %struct.gs_composite_type_s* %4, i32 0, i32 0
  %5 = load i8, i8* %comp_id1, align 1, !tbaa !7
  %conv = zext i8 %5 to i32
  %6 = load i32, i32* %comp_id.addr, align 4, !tbaa !1
  %cmp2 = icmp ne i32 %conv, %6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %while.cond

while.end:                                        ; preds = %land.end
  %8 = load %struct.gs_composite_type_s*, %struct.gs_composite_type_s** %pcomp, align 8, !tbaa !5
  %9 = bitcast %struct.gs_composite_type_s** %pcomp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #2
  %10 = bitcast %struct.gs_composite_type_s*** %ppcomp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #2
  ret %struct.gs_composite_type_s* %8
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @gs_lib_device_list(%struct.gx_device_s*** %plist, %struct.gs_memory_struct_type_s** %pst) #1 {
entry:
  %plist.addr = alloca %struct.gx_device_s***, align 8
  %pst.addr = alloca %struct.gs_memory_struct_type_s**, align 8
  %i = alloca i32, align 4
  store %struct.gx_device_s*** %plist, %struct.gx_device_s**** %plist.addr, align 8, !tbaa !5
  store %struct.gs_memory_struct_type_s** %pst, %struct.gs_memory_struct_type_s*** %pst.addr, align 8, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s***, %struct.gx_device_s**** %plist.addr, align 8, !tbaa !5
  %cmp = icmp ne %struct.gx_device_s*** %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.gx_device_s***, %struct.gx_device_s**** %plist.addr, align 8, !tbaa !5
  store %struct.gx_device_s** getelementptr inbounds ([1024 x %struct.gx_device_s*], [1024 x %struct.gx_device_s*]* @gx_device_list, i32 0, i32 0), %struct.gx_device_s*** %2, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.gs_memory_struct_type_s**, %struct.gs_memory_struct_type_s*** %pst.addr, align 8, !tbaa !5
  %cmp1 = icmp ne %struct.gs_memory_struct_type_s** %3, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %4 = load %struct.gs_memory_struct_type_s**, %struct.gs_memory_struct_type_s*** %pst.addr, align 8, !tbaa !5
  store %struct.gs_memory_struct_type_s* null, %struct.gs_memory_struct_type_s** %4, align 8, !tbaa !5
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.3
  %5 = load i32, i32* %i, align 4, !tbaa !1
  %conv = sext i32 %5 to i64
  %cmp4 = icmp ult i64 %conv, 1023
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [1024 x %struct.gx_device_s*], [1024 x %struct.gx_device_s*]* @gx_device_list, i32 0, i64 %idxprom
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %arrayidx, align 8, !tbaa !5
  %tobool = icmp ne %struct.gx_device_s* %7, null
  br i1 %tobool, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %for.body
  br label %for.end

if.end.7:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.7
  %8 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %if.then.6, %for.cond
  %9 = load i32, i32* %i, align 4, !tbaa !1
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #2
  ret i32 %9
}

declare i32 @gs_fapi_ft_init(%struct.gs_memory_s*, %struct.gs_fapi_server_s**) #0

; Function Attrs: nounwind uwtable
define i32 (%struct.gs_memory_s*, %struct.gs_fapi_server_s**)** @gs_get_fapi_server_inits() #1 {
entry:
  ret i32 (%struct.gs_memory_s*, %struct.gs_fapi_server_s**)** getelementptr inbounds ([2 x i32 (%struct.gs_memory_s*, %struct.gs_fapi_server_s**)*], [2 x i32 (%struct.gs_memory_s*, %struct.gs_fapi_server_s**)*]* @gs_fapi_server_inits, i32 0, i32 0)
}

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !3, i64 0}
!7 = !{!8, !3, i64 0}
!8 = !{!"gs_composite_type_s", !3, i64 0, !9, i64 8}
!9 = !{!"gs_composite_type_procs_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72}
