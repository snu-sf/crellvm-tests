; ModuleID = './gxttfb.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.gx_io_device_s = type opaque
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
%struct.gs_const_string_s = type { i8*, i32 }
%struct.gs_glyph_info_s = type { i32, [2 x %struct.gs_point_s], %struct.gs_point_s, %struct.gs_rect_s, i32, i64* }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gx_path_s = type { %struct.gx_path_segments_s, %struct.gs_memory_s*, i32, %struct.gx_path_segments_s*, %struct.segment_s*, %struct.gs_fixed_rect_s, %struct.segment_s*, i8, i8, i8, i8, i8, i32, i32, %struct.gs_fixed_point_s, %struct.gx_path_procs_s* }
%struct.gx_path_segments_s = type { %struct.rc_header_s, %struct.psc_ }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.psc_ = type { %struct.subpath_s*, %struct.subpath_s* }
%struct.subpath_s = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s, %struct.segment_s*, i32, %struct.line_close_segment, i8 }
%struct.line_close_segment = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s, %struct.subpath_s* }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.segment_s = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s }
%struct.gs_fixed_point_s = type { i32, i32 }
%struct.gx_path_procs_s = type { i32 (%struct.gx_path_s*, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_path_s*, i32)*, i8 (%struct.gx_path_s*, i8)* }
%struct.gs_text_enum_s = type { %struct.gs_text_params_s, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_procs_s*, %struct.rc_header_s, i8*, %struct.gs_font_s*, i64, i32, %struct.gs_log2_scale_point_s, %struct.cached_fm_pair_s*, i32, i32, %struct.gx_font_stack_s, i32, i32, i32, %struct.gs_point_s, i64, i32, %struct.gs_log2_scale_point_s, %struct.gs_point_s, %struct.gs_text_returned_s }
%struct.gs_text_params_s = type { i32, %union.sd_, i32, %struct.gs_point_s, %struct.gs_point_s, %union.s_, float*, float*, i32 }
%union.sd_ = type { i8* }
%union.s_ = type { i64 }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_color_info_s = type { i32, i32, i32, i16, i8, i32, i32, i32, i32, %struct.gx_device_anti_alias_info_s, i32, [64 x i8], [64 x i8], [64 x i64], i8*, i32, i64, i32 }
%struct.gx_device_anti_alias_info_s = type { i32, i32 }
%struct.gx_device_cached_colors_s = type { i64, i64 }
%struct.gx_stroked_gradient_recognizer_s = type { i32, [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s] }
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
%struct.gs_devicen_color_map_s = type { i32, i32, i32, i32, i64, [64 x i32] }
%struct.gx_page_device_procs_s = type { i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* }
%struct.gs_state_s = type opaque
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
%struct.gx_tile_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16 }
%struct.gx_xfont_procs_s = type opaque
%struct.gx_fill_params_s = type { i32, %struct.gs_fixed_point_s, float }
%struct.gx_stroke_params_s = type { float, i32 }
%struct.gs_fixed_edge_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image1_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, i32, i32, i32 }
%struct.gx_image_type_s = type opaque
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type opaque
%struct.gs_paint_color_s = type { [64 x float] }
%struct.stream_s = type opaque
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
%struct.gx_image_enum_common_s = type opaque
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.gs_get_bits_params_s = type opaque
%struct.gs_composite_s = type { %struct.gs_composite_type_s*, i64, i32, %struct.gs_composite_s*, %struct.gs_composite_s* }
%struct.gs_composite_type_s = type { i8, %struct.gs_composite_type_procs_s }
%struct.gs_composite_type_procs_s = type { i32 (%struct.gs_composite_s*, %struct.gx_device_s**, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s*)*, i32 (%struct.gs_composite_s*, i8*, i32*, %struct.gx_device_clist_writer_s*)*, i32 (%struct.gs_composite_s**, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32, i32, %struct.gs_imager_state_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s**, %struct.gx_device_s*)*, i32 (%struct.gs_composite_s*, i8, i8)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32*, i32*, i32, i32)* }
%struct.gx_device_clist_writer_s = type opaque
%struct.gs_param_list_s = type opaque
%struct.gs_transparency_group_params_s = type { %struct.gs_color_space_s*, i32, i32, i32, i32, i32, i32, i32, i64, %struct.cmm_profile_s* }
%struct.gx_transparency_mask_params_s = type { i32, i32, i32, i32, [64 x float], float, i32, i32, i32, i32, [256 x i8], i64, %struct.cmm_profile_s* }
%struct.gx_cm_color_map_procs_s = type { void (%struct.gx_device_s*, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* }
%struct.gs_pattern1_instance_s = type opaque
%struct.gs_fill_attributes_s = type { %struct.gs_fixed_rect_s*, i32, %struct.gx_device_halftone_s*, i32, i32, i32, %struct.patch_fill_state_s* }
%struct.gx_device_halftone_s = type opaque
%struct.patch_fill_state_s = type opaque
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.gs_imager_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s }
%struct.gx_line_params_s = type { float, i32, i32, i32, i32, i32, float, float, float, i32, %struct.gs_matrix_s, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { float*, i32, float, i32, float, i32, i32, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i32, i32, i32 }
%struct.gs_transparency_source_s = type { float }
%struct.gs_xstate_trans_flags = type { i32, i32 }
%struct.gsicc_manager_s = type { %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.gsicc_devicen_s*, %struct.gsicc_smask_s*, i32, %struct.cmm_srcgtag_profile_s*, %struct.gs_memory_s*, %struct.rc_header_s }
%struct.gsicc_devicen_s = type { %struct.gsicc_devicen_entry_s*, %struct.gsicc_devicen_entry_s*, i32 }
%struct.gsicc_devicen_entry_s = type { %struct.cmm_profile_s*, %struct.gsicc_devicen_entry_s* }
%struct.gsicc_smask_s = type { %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.gs_memory_s*, i32 }
%struct.cmm_srcgtag_profile_s = type { [3 x %struct.cmm_profile_s*], [3 x %struct.gsicc_rendering_param_s], [3 x %struct.cmm_profile_s*], [3 x %struct.gsicc_rendering_param_s], %struct.cmm_profile_s*, %struct.gs_memory_s*, i32, i8*, %struct.rc_header_s }
%struct.gsicc_profile_cache_s = type { %struct.gsicc_profile_entry_s*, i32, %struct.rc_header_s, %struct.gs_memory_s* }
%struct.gsicc_profile_entry_s = type { %struct.gs_color_space_s*, %struct.gsicc_profile_entry_s*, i64 }
%struct.gs_halftone_s = type opaque
%struct.gs_cie_render_s = type opaque
%struct.gx_transfer_map_s = type { %struct.rc_header_s, float (double, %struct.gx_transfer_map_s*)*, %struct.gs_mapping_closure_s, i64, [256 x i16] }
%struct.gs_mapping_closure_s = type { float (double, %struct.gx_transfer_map_s*, i8*)*, i8* }
%struct.gx_transfer_s = type { i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s* }
%struct.gx_color_map_procs_s = type { void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, %struct.gs_color_space_s*)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_imager_state_s*, %struct.gx_device_s*)* }
%struct.gx_pattern_cache_s = type opaque
%struct.gx_cie_joint_caches_s = type opaque
%struct.gx_device_color_s = type { %struct.gx_device_color_type_s*, %union._c, %struct.gs_int_point_s, i32, %struct.gs_client_color_s, %struct._mask }
%struct.gx_device_color_type_s = type opaque
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type opaque
%struct.gx_clip_path_s = type opaque
%struct.gs_text_enum_procs_s = type { i32 (%struct.gs_text_enum_s*, %struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_point_s*)*, i32 (%struct.gs_text_enum_s*, double*, i32)*, i32 (%struct.gs_text_enum_s*)*, void (%struct.gs_text_enum_s*, i8*)* }
%struct.cached_fm_pair_s = type { %struct.gs_font_s*, %struct.gs_uid_s, i32, i32, float, float, float, float, i32, i32, %struct.gx_xfont_s*, %struct.gs_memory_s*, i32, %struct.ttfFont_s*, %struct.gx_ttfReader_s*, i32, i32, i32 }
%struct.gs_uid_s = type { i64, i64* }
%struct.gx_xfont_s = type opaque
%struct.ttfFont_s = type { %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, %struct.ttfPtrElem, i16, i32, i32, i32, i32, i32, i32, i32, i32, %struct._TFace*, %struct._TInstance*, %struct._TExecution_Context*, %struct.ttfInterpreter_s*, void (%struct.ttfFont_s*)*, i32 (%struct.ttfFont_s*, i8*, ...)*, %struct.gs_memory_s* }
%struct.ttfPtrElem = type { i32, i32 }
%struct._TFace = type opaque
%struct._TInstance = type opaque
%struct._TExecution_Context = type opaque
%struct.gx_ttfReader_s = type { %struct.ttfReader_s, i32, i32, i32, %struct.gs_font_type42_s*, %struct.gs_memory_s*, %struct.gs_glyph_data_s }
%struct.ttfReader_s = type { i32 (%struct.ttfReader_s*)*, void (%struct.ttfReader_s*, i8*, i32)*, void (%struct.ttfReader_s*, i32)*, i32 (%struct.ttfReader_s*)*, i32 (%struct.ttfReader_s*)*, i32 (%struct.ttfReader_s*, i32, i8**, i32*)*, void (%struct.ttfReader_s*, i32)*, i32 (%struct.ttfReader_s*, i32, i32, i16*, i16*)* }
%struct.gs_font_type42_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32, %struct.gs_type42_data_s }
%struct.gs_fapi_server_s = type opaque
%struct.gs_type42_data_s = type { i32 (%struct.gs_font_type42_s*, i64, i32, i8**)*, i8*, i32 (%struct.gs_font_type42_s*, i64)*, i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type42_s*, i32, i32, float*)*, i32 (%struct.gs_font_type42_s*, i32, i32, i64)*, i64, i64, i32, i32, [2 x %struct.gs_type42_mtx_s], i64, i64, i64, i32, i32, i32, i32, i32, i32, i32*, %struct.gs_glyph_cache_s*, i32, i32, i8*, i64 }
%struct.gs_type42_mtx_s = type { i32, i64, i32 }
%struct.gs_glyph_cache_s = type opaque
%struct.gs_glyph_data_s = type { %struct.gs_const_bytestring_s, %struct.gs_glyph_data_procs_s*, i8*, %struct.gs_memory_s* }
%struct.gs_const_bytestring_s = type { i8*, i32, i8* }
%struct.gs_glyph_data_procs_s = type { void (%struct.gs_glyph_data_s*, i8*)*, i32 (%struct.gs_glyph_data_s*, i32, i32)* }
%struct.gx_font_stack_s = type { i32, [6 x %struct.gx_font_stack_item_s] }
%struct.gx_font_stack_item_s = type { %struct.gs_font_s*, i32 }
%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.gs_text_returned_s = type { i64, i64, %struct.gs_point_s }
%struct.gs_show_enum_s = type opaque
%struct.gs_font_name_s = type { [48 x i8], i32 }
%struct.fm_pair_cache_s = type { i32, i32, %struct.cached_fm_pair_s*, i32, i32, i32 }
%struct.char_cache_s = type { %struct.gx_bits_cache_chunk_s*, i32, i32, i32, %struct.gs_memory_s*, %struct.gs_memory_s*, %struct.cached_char_s**, i32, i32, i32, i32, i32, i32, i32 (%struct.gs_memory_s*, i64, i8*)*, i8* }
%struct.gx_bits_cache_chunk_s = type { %struct.gx_bits_cache_chunk_s*, i8*, i32, i32 }
%struct.cached_char_s = type { %struct.gx_cached_bits_head_s, i16, i16, i16, i16, i64, %struct.cached_fm_pair_s*, i32, i64, i8, %struct.gx_bits_cache_chunk_s*, i32, i32, %struct.gs_fixed_point_s, i64, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gx_cached_bits_head_s = type { i32, i32 }
%struct.ttfInterpreter_s = type { %struct._TExecution_Context*, %struct.ttfSubGlyphUsage_s*, i32, i32, i32, %struct.ttfMemory_s* }
%struct.ttfSubGlyphUsage_s = type opaque
%struct.ttfMemory_s = type { i8* (%struct.ttfMemory_s*, i32, i8*)*, i8* (%struct.ttfMemory_s*, %struct.ttfMemoryDescriptor_s*, i8*)*, void (%struct.ttfMemory_s*, i8*, i8*)* }
%struct.ttfMemoryDescriptor_s = type opaque
%struct.gx_ttfMemory_s = type { %struct.ttfMemory_s, %struct.gs_memory_s* }
%struct.gx_device_spot_analyzer_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, i32, %struct.gx_san_trap_s*, %struct.gx_san_trap_s*, %struct.gx_san_trap_s*, %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s*, i32, i32, %struct.gx_san_trap_s*, %struct.gx_san_trap_s*, %struct.gx_san_trap_s*, i32, i32 }
%struct.gx_san_trap_contact_s = type { %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_contact_s*, %struct.gx_san_trap_s*, %struct.gx_san_trap_s* }
%struct.gx_san_trap_s = type { %struct.gx_san_trap_s*, i32, i32, i32, i32, i32, i32, %struct.gx_san_trap_contact_s*, %struct.segment_s*, %struct.segment_s*, i32, i32, i32, i32, %struct.gx_san_trap_s*, %struct.gx_san_trap_s*, i32, i32 }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, {}*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.gc_procs_common_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)* }
%struct.gs_string_s = type { i8*, i32 }
%struct.gs_param_string_s = type { i8*, i32, i32 }
%struct.gx_ttfExport_s = type { %struct.ttfExport_s, %struct.gx_path_s*, %struct.gs_fixed_point_s, i32, i32 }
%struct.ttfExport_s = type { i32, i32, void (%struct.ttfExport_s*, %struct.FloatPoint*)*, void (%struct.ttfExport_s*, %struct.FloatPoint*)*, void (%struct.ttfExport_s*, %struct.FloatPoint*, %struct.FloatPoint*, %struct.FloatPoint*)*, void (%struct.ttfExport_s*)*, void (%struct.ttfExport_s*, %struct.FloatPoint*, i32, i32)*, void (%struct.ttfExport_s*, %struct.FloatPoint*)*, void (%struct.ttfExport_s*)* }
%struct.FloatPoint = type { double, double }
%struct.ttfOutliner = type { i32, i32, i32, i32, i32, i32, i32, %struct.ttfReader_s*, %struct.ttfExport_s*, %struct.ttfFont_s*, %struct.ttfGlyphOutline, %struct.FloatMatrix }
%struct.ttfGlyphOutline = type { i32, i32, i32, %struct.F26Dot6Point, i32, i32, i32, i32, i32 }
%struct.F26Dot6Point = type { i32, i32 }
%struct.FloatMatrix = type { double, double, double, double, double, double }
%struct.curve_segment = type { %struct.segment_s*, %struct.segment_s*, i16, i16, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.t1_hinter_aux = type { %struct.t1_hinter_s, i32, i32 }
%struct.t1_hinter_s = type { %struct.fraction_matrix, %struct.fraction_matrix, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [110 x %struct.t1_pole_s], %struct.t1_pole_s*, [30 x %struct.t1_hint_s], %struct.t1_hint_s*, [6 x %struct.t1_zone_s], %struct.t1_zone_s*, [10 x i32], i32*, [10 x i32], i32*, [2 x [13 x i32]], [2 x i32*], [13 x i32], i32*, [30 x %struct.t1_hint_range_s], %struct.t1_hint_range_s*, [120 x %struct.t1_hint_applying_s], %struct.t1_hint_applying_s*, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gx_path_s*, %struct.gs_memory_s* }
%struct.fraction_matrix = type { i32, i32, i32, i32, i32, i32 }
%struct.t1_pole_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.t1_hint_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32 }
%struct.t1_zone_s = type { i32, i32, i32, i32, i32 }
%struct.t1_hint_range_s = type { i16, i16, i32 }
%struct.t1_hint_applying_s = type { i32, i32, i32 }
%struct.gx_san_sect_s = type { i32, i32, i32, i32, %struct.segment_s*, %struct.segment_s*, i32 }
%struct.gs_path_enum_s = type { %struct.gs_memory_s*, %struct.gs_matrix_s, %struct.segment_s*, %struct.gx_path_s*, %struct.gx_path_s*, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"gx_ttfReader\00", align 1
@st_gx_ttfReader = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 144, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gx_ttfReader_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gx_ttfReader_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"gx_ttfReader__create\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"gx_ttfReader__destroy\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"ttfFont__create(gx_ttfMemory)\00", align 1
@st_ttfFont = external constant %struct.gs_memory_struct_type_s, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"ttfFont__create\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"ttfFont__destroy\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"ttfFont__destroy(gx_ttfMemory)\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"The font\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Some glyphs of the font\00", align 1
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.9 = private unnamed_addr constant [32 x i8] c"gx_ttfReader__ReleaseExtraGlyph\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"gx_ttfReader__Reset\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"gx_ttfMemory\00", align 1
@st_gx_ttfMemory = internal constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.12 = private unnamed_addr constant [112 x i8] c"Failed to interpret TT instructions for glyph index %d of font %s. Continue ignoring instructions of the font.\0A\00", align 1
@.str.13 = private unnamed_addr constant [93 x i8] c"Failed to interpret TT instructions in font %s. Continue ignoring instructions of the font.\0A\00", align 1
@.str.14 = private unnamed_addr constant [50 x i8] c"%s %s requires a patented True Type interpreter.\0A\00", align 1
@gx_dc_type_pure = external constant %struct.gx_device_color_type_s*, align 8

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @gx_ttfReader_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %mptr = alloca %struct.gx_ttfReader_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_ttfReader_s** %mptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_ttfReader_s*
  store %struct.gx_ttfReader_s* %2, %struct.gx_ttfReader_s** %mptr, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !5
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.default:                                       ; preds = %entry
  %4 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %mptr, align 8, !tbaa !1
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %5 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %6 = bitcast i8* %5 to %struct.gx_ttfReader_s*
  %memory = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %6, i32 0, i32 5
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  %8 = bitcast %struct.gs_memory_s* %7 to i8*
  %9 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %9, i32 0, i32 0
  store i8* %8, i8** %ptr, align 8, !tbaa !12
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %sw.default
  %10 = bitcast %struct.gx_ttfReader_s** %mptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  %11 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %11
}

; Function Attrs: nounwind uwtable
define internal void @gx_ttfReader_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %mptr = alloca %struct.gx_ttfReader_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_ttfReader_s** %mptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_ttfReader_s*
  store %struct.gx_ttfReader_s* %2, %struct.gx_ttfReader_s** %mptr, align 8, !tbaa !1
  %3 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %mptr, align 8, !tbaa !1
  %4 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gc_state_s* %4 to %struct.gc_procs_common_s**
  %6 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %5, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %6, i32 0, i32 0
  %7 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !14
  %8 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %9 = bitcast i8* %8 to %struct.gx_ttfReader_s*
  %memory = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %9, i32 0, i32 5
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  %11 = bitcast %struct.gs_memory_s* %10 to i8*
  %12 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %7(i8* %11, %struct.gc_state_s* %12) #6
  %13 = bitcast i8* %call to %struct.gs_memory_s*
  %14 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %15 = bitcast i8* %14 to %struct.gx_ttfReader_s*
  %memory1 = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %15, i32 0, i32 5
  store %struct.gs_memory_s* %13, %struct.gs_memory_s** %memory1, align 8, !tbaa !7
  %16 = bitcast %struct.gx_ttfReader_s** %mptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.gx_ttfReader_s* @gx_ttfReader__create(%struct.gs_memory_s* %mem) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %r = alloca %struct.gx_ttfReader_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_ttfReader_s** %r to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %2 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !16
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i8* %2(%struct.gs_memory_s* %3, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_gx_ttfReader to %struct.gs_memory_struct_type_s*), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0)) #6
  %4 = bitcast i8* %call to %struct.gx_ttfReader_s*
  store %struct.gx_ttfReader_s* %4, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %5 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %cmp = icmp ne %struct.gx_ttfReader_s* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %super = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %6, i32 0, i32 0
  %Eof = getelementptr inbounds %struct.ttfReader_s, %struct.ttfReader_s* %super, i32 0, i32 0
  store i32 (%struct.ttfReader_s*)* @gx_ttfReader__Eof, i32 (%struct.ttfReader_s*)** %Eof, align 8, !tbaa !19
  %7 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %super1 = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %7, i32 0, i32 0
  %Read = getelementptr inbounds %struct.ttfReader_s, %struct.ttfReader_s* %super1, i32 0, i32 1
  store void (%struct.ttfReader_s*, i8*, i32)* @gx_ttfReader__Read, void (%struct.ttfReader_s*, i8*, i32)** %Read, align 8, !tbaa !20
  %8 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %super2 = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %8, i32 0, i32 0
  %Seek = getelementptr inbounds %struct.ttfReader_s, %struct.ttfReader_s* %super2, i32 0, i32 2
  store void (%struct.ttfReader_s*, i32)* @gx_ttfReader__Seek, void (%struct.ttfReader_s*, i32)** %Seek, align 8, !tbaa !21
  %9 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %super3 = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %9, i32 0, i32 0
  %Tell = getelementptr inbounds %struct.ttfReader_s, %struct.ttfReader_s* %super3, i32 0, i32 3
  store i32 (%struct.ttfReader_s*)* @gx_ttfReader__Tell, i32 (%struct.ttfReader_s*)** %Tell, align 8, !tbaa !22
  %10 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %super4 = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %10, i32 0, i32 0
  %Error = getelementptr inbounds %struct.ttfReader_s, %struct.ttfReader_s* %super4, i32 0, i32 4
  store i32 (%struct.ttfReader_s*)* @gx_ttfReader__Error, i32 (%struct.ttfReader_s*)** %Error, align 8, !tbaa !23
  %11 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %super5 = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %11, i32 0, i32 0
  %LoadGlyph = getelementptr inbounds %struct.ttfReader_s, %struct.ttfReader_s* %super5, i32 0, i32 5
  store i32 (%struct.ttfReader_s*, i32, i8**, i32*)* @gx_ttfReader__LoadGlyph, i32 (%struct.ttfReader_s*, i32, i8**, i32*)** %LoadGlyph, align 8, !tbaa !24
  %12 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %super6 = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %12, i32 0, i32 0
  %ReleaseGlyph = getelementptr inbounds %struct.ttfReader_s, %struct.ttfReader_s* %super6, i32 0, i32 6
  store void (%struct.ttfReader_s*, i32)* @gx_ttfReader__ReleaseGlyph, void (%struct.ttfReader_s*, i32)** %ReleaseGlyph, align 8, !tbaa !25
  %13 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %pos = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %13, i32 0, i32 1
  store i32 0, i32* %pos, align 4, !tbaa !26
  %14 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %error = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %14, i32 0, i32 2
  store i32 0, i32* %error, align 4, !tbaa !27
  %15 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %extra_glyph_index = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %15, i32 0, i32 3
  store i32 -1, i32* %extra_glyph_index, align 4, !tbaa !28
  %16 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %glyph_data = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %16, i32 0, i32 6
  %17 = bitcast %struct.gs_glyph_data_s* %glyph_data to i8*
  %call7 = call i8* @memset(i8* %17, i32 0, i64 48) #7
  %18 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %pfont = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %18, i32 0, i32 4
  store %struct.gs_font_type42_s* null, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !29
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %20 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %20, i32 0, i32 5
  store %struct.gs_memory_s* %19, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  %21 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  call void @gx_ttfReader__Reset(%struct.gx_ttfReader_s* %21) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %22 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %23 = bitcast %struct.gx_ttfReader_s** %r to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  ret %struct.gx_ttfReader_s* %22
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @gx_ttfReader__Eof(%struct.ttfReader_s* %self) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.ttfReader_s*, align 8
  %r = alloca %struct.gx_ttfReader_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.ttfReader_s* %self, %struct.ttfReader_s** %self.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_ttfReader_s** %r to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ttfReader_s*, %struct.ttfReader_s** %self.addr, align 8, !tbaa !1
  %2 = bitcast %struct.ttfReader_s* %1 to %struct.gx_ttfReader_s*
  store %struct.gx_ttfReader_s* %2, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %3 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %extra_glyph_index = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %3, i32 0, i32 3
  %4 = load i32, i32* %extra_glyph_index, align 4, !tbaa !28
  %cmp = icmp ne i32 %4, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %pos = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %5, i32 0, i32 1
  %6 = load i32, i32* %pos, align 4, !tbaa !26
  %7 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %glyph_data = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %7, i32 0, i32 6
  %bits = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %glyph_data, i32 0, i32 0
  %size = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits, i32 0, i32 1
  %8 = load i32, i32* %size, align 4, !tbaa !30
  %cmp1 = icmp uge i32 %6, %8
  %conv = zext i1 %cmp1 to i32
  store i32 %conv, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %9 = bitcast %struct.gx_ttfReader_s** %r to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal void @gx_ttfReader__Read(%struct.ttfReader_s* %self, i8* %p, i32 %n) #0 {
entry:
  %self.addr = alloca %struct.ttfReader_s*, align 8
  %p.addr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  %r = alloca %struct.gx_ttfReader_s*, align 8
  %q = alloca i8*, align 8
  %cnt = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.ttfReader_s* %self, %struct.ttfReader_s** %self.addr, align 8, !tbaa !1
  store i8* %p, i8** %p.addr, align 8, !tbaa !1
  store i32 %n, i32* %n.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_ttfReader_s** %r to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ttfReader_s*, %struct.ttfReader_s** %self.addr, align 8, !tbaa !1
  %2 = bitcast %struct.ttfReader_s* %1 to %struct.gx_ttfReader_s*
  store %struct.gx_ttfReader_s* %2, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %3 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %error = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %4, i32 0, i32 2
  %5 = load i32, i32* %error, align 4, !tbaa !27
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.end.48, label %if.then

if.then:                                          ; preds = %entry
  %6 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %extra_glyph_index = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %6, i32 0, i32 3
  %7 = load i32, i32* %extra_glyph_index, align 4, !tbaa !28
  %cmp = icmp ne i32 %7, -1
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %8 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %glyph_data = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %8, i32 0, i32 6
  %bits = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %glyph_data, i32 0, i32 0
  %data = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits, i32 0, i32 0
  %9 = load i8*, i8** %data, align 8, !tbaa !31
  %10 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %pos = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %10, i32 0, i32 1
  %11 = load i32, i32* %pos, align 4, !tbaa !26
  %idx.ext = sext i32 %11 to i64
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %idx.ext
  store i8* %add.ptr, i8** %q, align 8, !tbaa !1
  %12 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %glyph_data2 = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %12, i32 0, i32 6
  %bits3 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %glyph_data2, i32 0, i32 0
  %size = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits3, i32 0, i32 1
  %13 = load i32, i32* %size, align 4, !tbaa !30
  %14 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %pos4 = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %14, i32 0, i32 1
  %15 = load i32, i32* %pos4, align 4, !tbaa !26
  %sub = sub i32 %13, %15
  %16 = load i32, i32* %n.addr, align 4, !tbaa !5
  %cmp5 = icmp ult i32 %sub, %16
  %cond = select i1 %cmp5, i32 -10, i32 0
  %17 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %error6 = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %17, i32 0, i32 2
  store i32 %cond, i32* %error6, align 4, !tbaa !27
  %18 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %error7 = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %18, i32 0, i32 2
  %19 = load i32, i32* %error7, align 4, !tbaa !27
  %cmp8 = icmp eq i32 %19, 0
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then.1
  %20 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %21 = load i8*, i8** %q, align 8, !tbaa !1
  %22 = load i32, i32* %n.addr, align 4, !tbaa !5
  %conv = sext i32 %22 to i64
  %call = call i8* @memcpy(i8* %20, i8* %21, i64 %conv) #7
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then.1
  br label %if.end.47

if.else:                                          ; preds = %if.then
  %23 = bitcast i32* %cnt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  store i32 0, i32* %cnt, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %24 = load i32, i32* %cnt, align 4, !tbaa !5
  %25 = load i32, i32* %n.addr, align 4, !tbaa !5
  %cmp10 = icmp ult i32 %24, %25
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %pfont = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %26, i32 0, i32 4
  %27 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !29
  %data12 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %27, i32 0, i32 29
  %string_proc = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data12, i32 0, i32 0
  %28 = load i32 (%struct.gs_font_type42_s*, i64, i32, i8**)*, i32 (%struct.gs_font_type42_s*, i64, i32, i8**)** %string_proc, align 8, !tbaa !32
  %29 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %pfont13 = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %29, i32 0, i32 4
  %30 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont13, align 8, !tbaa !29
  %31 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %pos14 = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %31, i32 0, i32 1
  %32 = load i32, i32* %pos14, align 4, !tbaa !26
  %conv15 = sext i32 %32 to i64
  %33 = load i32, i32* %cnt, align 4, !tbaa !5
  %conv16 = zext i32 %33 to i64
  %add = add i64 %conv15, %conv16
  %34 = load i32, i32* %n.addr, align 4, !tbaa !5
  %conv17 = sext i32 %34 to i64
  %35 = load i32, i32* %cnt, align 4, !tbaa !5
  %conv18 = zext i32 %35 to i64
  %sub19 = sub i64 %conv17, %conv18
  %conv20 = trunc i64 %sub19 to i32
  %call21 = call i32 %28(%struct.gs_font_type42_s* %30, i64 %add, i32 %conv20, i8** %q) #6
  %36 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %error22 = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %36, i32 0, i32 2
  store i32 %call21, i32* %error22, align 4, !tbaa !27
  %37 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %error23 = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %37, i32 0, i32 2
  %38 = load i32, i32* %error23, align 4, !tbaa !27
  %cmp24 = icmp slt i32 %38, 0
  br i1 %cmp24, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %for.body
  br label %for.end

if.else.27:                                       ; preds = %for.body
  %39 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %error28 = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %39, i32 0, i32 2
  %40 = load i32, i32* %error28, align 4, !tbaa !27
  %cmp29 = icmp eq i32 %40, 0
  br i1 %cmp29, label %if.then.31, label %if.else.37

if.then.31:                                       ; preds = %if.else.27
  %41 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %42 = load i32, i32* %cnt, align 4, !tbaa !5
  %idx.ext32 = zext i32 %42 to i64
  %add.ptr33 = getelementptr inbounds i8, i8* %41, i64 %idx.ext32
  %43 = load i8*, i8** %q, align 8, !tbaa !1
  %44 = load i32, i32* %n.addr, align 4, !tbaa !5
  %45 = load i32, i32* %cnt, align 4, !tbaa !5
  %sub34 = sub i32 %44, %45
  %conv35 = zext i32 %sub34 to i64
  %call36 = call i8* @memcpy(i8* %add.ptr33, i8* %43, i64 %conv35) #7
  br label %for.end

if.else.37:                                       ; preds = %if.else.27
  %46 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %47 = load i32, i32* %cnt, align 4, !tbaa !5
  %idx.ext38 = zext i32 %47 to i64
  %add.ptr39 = getelementptr inbounds i8, i8* %46, i64 %idx.ext38
  %48 = load i8*, i8** %q, align 8, !tbaa !1
  %49 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %error40 = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %49, i32 0, i32 2
  %50 = load i32, i32* %error40, align 4, !tbaa !27
  %conv41 = sext i32 %50 to i64
  %call42 = call i8* @memcpy(i8* %add.ptr39, i8* %48, i64 %conv41) #7
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.37
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43
  br label %for.inc

for.inc:                                          ; preds = %if.end.44
  %51 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %error45 = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %51, i32 0, i32 2
  %52 = load i32, i32* %error45, align 4, !tbaa !27
  %53 = load i32, i32* %cnt, align 4, !tbaa !5
  %add46 = add i32 %53, %52
  store i32 %add46, i32* %cnt, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %if.then.31, %if.then.26, %for.cond
  %54 = bitcast i32* %cnt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  br label %if.end.47

if.end.47:                                        ; preds = %for.end, %if.end
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %entry
  %55 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %error49 = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %55, i32 0, i32 2
  %56 = load i32, i32* %error49, align 4, !tbaa !27
  %tobool50 = icmp ne i32 %56, 0
  br i1 %tobool50, label %if.then.51, label %if.end.54

if.then.51:                                       ; preds = %if.end.48
  %57 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %58 = load i32, i32* %n.addr, align 4, !tbaa !5
  %conv52 = sext i32 %58 to i64
  %call53 = call i8* @memset(i8* %57, i32 0, i64 %conv52) #7
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.54:                                        ; preds = %if.end.48
  %59 = load i32, i32* %n.addr, align 4, !tbaa !5
  %60 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %pos55 = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %60, i32 0, i32 1
  %61 = load i32, i32* %pos55, align 4, !tbaa !26
  %add56 = add nsw i32 %61, %59
  store i32 %add56, i32* %pos55, align 4, !tbaa !26
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.54, %if.then.51
  %62 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  %63 = bitcast %struct.gx_ttfReader_s** %r to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @gx_ttfReader__Seek(%struct.ttfReader_s* %self, i32 %nPos) #0 {
entry:
  %self.addr = alloca %struct.ttfReader_s*, align 8
  %nPos.addr = alloca i32, align 4
  %r = alloca %struct.gx_ttfReader_s*, align 8
  store %struct.ttfReader_s* %self, %struct.ttfReader_s** %self.addr, align 8, !tbaa !1
  store i32 %nPos, i32* %nPos.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_ttfReader_s** %r to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ttfReader_s*, %struct.ttfReader_s** %self.addr, align 8, !tbaa !1
  %2 = bitcast %struct.ttfReader_s* %1 to %struct.gx_ttfReader_s*
  store %struct.gx_ttfReader_s* %2, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %3 = load i32, i32* %nPos.addr, align 4, !tbaa !5
  %4 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %pos = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %4, i32 0, i32 1
  store i32 %3, i32* %pos, align 4, !tbaa !26
  %5 = bitcast %struct.gx_ttfReader_s** %r to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_ttfReader__Tell(%struct.ttfReader_s* %self) #0 {
entry:
  %self.addr = alloca %struct.ttfReader_s*, align 8
  %r = alloca %struct.gx_ttfReader_s*, align 8
  store %struct.ttfReader_s* %self, %struct.ttfReader_s** %self.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_ttfReader_s** %r to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ttfReader_s*, %struct.ttfReader_s** %self.addr, align 8, !tbaa !1
  %2 = bitcast %struct.ttfReader_s* %1 to %struct.gx_ttfReader_s*
  store %struct.gx_ttfReader_s* %2, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %3 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %pos = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %3, i32 0, i32 1
  %4 = load i32, i32* %pos, align 4, !tbaa !26
  %5 = bitcast %struct.gx_ttfReader_s** %r to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_ttfReader__Error(%struct.ttfReader_s* %self) #0 {
entry:
  %self.addr = alloca %struct.ttfReader_s*, align 8
  %r = alloca %struct.gx_ttfReader_s*, align 8
  store %struct.ttfReader_s* %self, %struct.ttfReader_s** %self.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_ttfReader_s** %r to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ttfReader_s*, %struct.ttfReader_s** %self.addr, align 8, !tbaa !1
  %2 = bitcast %struct.ttfReader_s* %1 to %struct.gx_ttfReader_s*
  store %struct.gx_ttfReader_s* %2, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %3 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %error = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %3, i32 0, i32 2
  %4 = load i32, i32* %error, align 4, !tbaa !27
  %5 = bitcast %struct.gx_ttfReader_s** %r to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_ttfReader__LoadGlyph(%struct.ttfReader_s* %self, i32 %glyph_index, i8** %p, i32* %size) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.ttfReader_s*, align 8
  %glyph_index.addr = alloca i32, align 4
  %p.addr = alloca i8**, align 8
  %size.addr = alloca i32*, align 8
  %r = alloca %struct.gx_ttfReader_s*, align 8
  %pfont = alloca %struct.gs_font_type42_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.ttfReader_s* %self, %struct.ttfReader_s** %self.addr, align 8, !tbaa !1
  store i32 %glyph_index, i32* %glyph_index.addr, align 4, !tbaa !5
  store i8** %p, i8*** %p.addr, align 8, !tbaa !1
  store i32* %size, i32** %size.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_ttfReader_s** %r to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ttfReader_s*, %struct.ttfReader_s** %self.addr, align 8, !tbaa !1
  %2 = bitcast %struct.ttfReader_s* %1 to %struct.gx_ttfReader_s*
  store %struct.gx_ttfReader_s* %2, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %3 = bitcast %struct.gs_font_type42_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %pfont1 = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %4, i32 0, i32 4
  %5 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont1, align 8, !tbaa !29
  store %struct.gs_font_type42_s* %5, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %extra_glyph_index = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %7, i32 0, i32 3
  %8 = load i32, i32* %extra_glyph_index, align 4, !tbaa !28
  %cmp = icmp ne i32 %8, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %9, i32 0, i32 2
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !45
  %11 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %glyph_data = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %11, i32 0, i32 6
  %memory2 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %glyph_data, i32 0, i32 3
  store %struct.gs_memory_s* %10, %struct.gs_memory_s** %memory2, align 8, !tbaa !46
  %12 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %12, i32 0, i32 29
  %get_outline = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data, i32 0, i32 3
  %13 = load i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)*, i32 (%struct.gs_font_type42_s*, i32, %struct.gs_glyph_data_s*)** %get_outline, align 8, !tbaa !47
  %14 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !1
  %15 = load i32, i32* %glyph_index.addr, align 4, !tbaa !5
  %16 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %glyph_data3 = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %16, i32 0, i32 6
  %call = call i32 %13(%struct.gs_font_type42_s* %14, i32 %15, %struct.gs_glyph_data_s* %glyph_data3) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %17 = load i32, i32* %glyph_index.addr, align 4, !tbaa !5
  %18 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %extra_glyph_index4 = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %18, i32 0, i32 3
  store i32 %17, i32* %extra_glyph_index4, align 4, !tbaa !28
  %19 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %pos = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %19, i32 0, i32 1
  store i32 0, i32* %pos, align 4, !tbaa !26
  %20 = load i32, i32* %code, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %20, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  %21 = load i32, i32* %code, align 4, !tbaa !5
  %22 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %error = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %22, i32 0, i32 2
  store i32 %21, i32* %error, align 4, !tbaa !27
  br label %if.end.17

if.else:                                          ; preds = %if.end
  %23 = load i32, i32* %code, align 4, !tbaa !5
  %cmp7 = icmp sgt i32 %23, 0
  br i1 %cmp7, label %if.then.8, label %if.else.10

if.then.8:                                        ; preds = %if.else
  %24 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %error9 = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %24, i32 0, i32 2
  store i32 -28, i32* %error9, align 4, !tbaa !27
  br label %if.end.16

if.else.10:                                       ; preds = %if.else
  %25 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %glyph_data11 = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %25, i32 0, i32 6
  %bits = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %glyph_data11, i32 0, i32 0
  %data12 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits, i32 0, i32 0
  %26 = load i8*, i8** %data12, align 8, !tbaa !31
  %27 = load i8**, i8*** %p.addr, align 8, !tbaa !1
  store i8* %26, i8** %27, align 8, !tbaa !1
  %28 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %glyph_data13 = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %28, i32 0, i32 6
  %bits14 = getelementptr inbounds %struct.gs_glyph_data_s, %struct.gs_glyph_data_s* %glyph_data13, i32 0, i32 0
  %size15 = getelementptr inbounds %struct.gs_const_bytestring_s, %struct.gs_const_bytestring_s* %bits14, i32 0, i32 1
  %29 = load i32, i32* %size15, align 4, !tbaa !30
  %30 = load i32*, i32** %size.addr, align 8, !tbaa !1
  store i32 %29, i32* %30, align 4, !tbaa !5
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.10, %if.then.8
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then.6
  store i32 2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.17, %if.then
  %31 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast %struct.gs_font_type42_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast %struct.gx_ttfReader_s** %r to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = load i32, i32* %retval
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define internal void @gx_ttfReader__ReleaseGlyph(%struct.ttfReader_s* %self, i32 %glyph_index) #0 {
entry:
  %self.addr = alloca %struct.ttfReader_s*, align 8
  %glyph_index.addr = alloca i32, align 4
  %r = alloca %struct.gx_ttfReader_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.ttfReader_s* %self, %struct.ttfReader_s** %self.addr, align 8, !tbaa !1
  store i32 %glyph_index, i32* %glyph_index.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_ttfReader_s** %r to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ttfReader_s*, %struct.ttfReader_s** %self.addr, align 8, !tbaa !1
  %2 = bitcast %struct.ttfReader_s* %1 to %struct.gx_ttfReader_s*
  store %struct.gx_ttfReader_s* %2, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %3 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %extra_glyph_index = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %3, i32 0, i32 3
  %4 = load i32, i32* %extra_glyph_index, align 4, !tbaa !28
  %5 = load i32, i32* %glyph_index.addr, align 4, !tbaa !5
  %cmp = icmp ne i32 %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %extra_glyph_index1 = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %6, i32 0, i32 3
  store i32 -1, i32* %extra_glyph_index1, align 4, !tbaa !28
  %7 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r, align 8, !tbaa !1
  %glyph_data = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %7, i32 0, i32 6
  call void @gs_glyph_data_free(%struct.gs_glyph_data_s* %glyph_data, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i32 0, i32 0)) #6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %8 = bitcast %struct.gx_ttfReader_s** %r to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #2

; Function Attrs: nounwind uwtable
define internal void @gx_ttfReader__Reset(%struct.gx_ttfReader_s* %self) #0 {
entry:
  %self.addr = alloca %struct.gx_ttfReader_s*, align 8
  store %struct.gx_ttfReader_s* %self, %struct.gx_ttfReader_s** %self.addr, align 8, !tbaa !1
  %0 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %self.addr, align 8, !tbaa !1
  %extra_glyph_index = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %0, i32 0, i32 3
  %1 = load i32, i32* %extra_glyph_index, align 4, !tbaa !28
  %cmp = icmp ne i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %self.addr, align 8, !tbaa !1
  %extra_glyph_index1 = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %2, i32 0, i32 3
  store i32 -1, i32* %extra_glyph_index1, align 4, !tbaa !28
  %3 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %self.addr, align 8, !tbaa !1
  %glyph_data = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %3, i32 0, i32 6
  call void @gs_glyph_data_free(%struct.gs_glyph_data_s* %glyph_data, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0)) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %self.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %4, i32 0, i32 2
  store i32 0, i32* %error, align 4, !tbaa !27
  %5 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %self.addr, align 8, !tbaa !1
  %pos = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %5, i32 0, i32 1
  store i32 0, i32* %pos, align 4, !tbaa !26
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @gx_ttfReader__destroy(%struct.gx_ttfReader_s* %self) #0 {
entry:
  %self.addr = alloca %struct.gx_ttfReader_s*, align 8
  store %struct.gx_ttfReader_s* %self, %struct.gx_ttfReader_s** %self.addr, align 8, !tbaa !1
  %0 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %self.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %0, i32 0, i32 5
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %2 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !48
  %3 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %self.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %3, i32 0, i32 5
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !7
  %5 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %self.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gx_ttfReader_s* %5 to i8*
  call void %2(%struct.gs_memory_s* %4, i8* %6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0)) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @gx_ttfReader__set_font(%struct.gx_ttfReader_s* %self, %struct.gs_font_type42_s* %pfont) #0 {
entry:
  %self.addr = alloca %struct.gx_ttfReader_s*, align 8
  %pfont.addr = alloca %struct.gs_font_type42_s*, align 8
  store %struct.gx_ttfReader_s* %self, %struct.gx_ttfReader_s** %self.addr, align 8, !tbaa !1
  store %struct.gs_font_type42_s* %pfont, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %0 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %1 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %self.addr, align 8, !tbaa !1
  %pfont1 = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %1, i32 0, i32 4
  store %struct.gs_font_type42_s* %0, %struct.gs_font_type42_s** %pfont1, align 8, !tbaa !29
  %2 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %self.addr, align 8, !tbaa !1
  %super = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %2, i32 0, i32 0
  %get_metrics = getelementptr inbounds %struct.ttfReader_s, %struct.ttfReader_s* %super, i32 0, i32 7
  store i32 (%struct.ttfReader_s*, i32, i32, i16*, i16*)* @gx_ttfReader__default_get_metrics, i32 (%struct.ttfReader_s*, i32, i32, i16*, i16*)** %get_metrics, align 8, !tbaa !49
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_ttfReader__default_get_metrics(%struct.ttfReader_s* %ttf, i32 %glyph_index, i32 %bVertical, i16* %sideBearing, i16* %nAdvance) #0 {
entry:
  %retval = alloca i32, align 4
  %ttf.addr = alloca %struct.ttfReader_s*, align 8
  %glyph_index.addr = alloca i32, align 4
  %bVertical.addr = alloca i32, align 4
  %sideBearing.addr = alloca i16*, align 8
  %nAdvance.addr = alloca i16*, align 8
  %self = alloca %struct.gx_ttfReader_s*, align 8
  %sbw = alloca [4 x float], align 16
  %sbw_offset = alloca i32, align 4
  %code = alloca i32, align 4
  %factor = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.ttfReader_s* %ttf, %struct.ttfReader_s** %ttf.addr, align 8, !tbaa !1
  store i32 %glyph_index, i32* %glyph_index.addr, align 4, !tbaa !5
  store i32 %bVertical, i32* %bVertical.addr, align 4, !tbaa !5
  store i16* %sideBearing, i16** %sideBearing.addr, align 8, !tbaa !1
  store i16* %nAdvance, i16** %nAdvance.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_ttfReader_s** %self to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ttfReader_s*, %struct.ttfReader_s** %ttf.addr, align 8, !tbaa !1
  %2 = bitcast %struct.ttfReader_s* %1 to %struct.gx_ttfReader_s*
  store %struct.gx_ttfReader_s* %2, %struct.gx_ttfReader_s** %self, align 8, !tbaa !1
  %3 = bitcast [4 x float]* %sbw to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = bitcast i32* %sbw_offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i32, i32* %bVertical.addr, align 4, !tbaa !5
  store i32 %5, i32* %sbw_offset, align 4, !tbaa !5
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %factor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %self, align 8, !tbaa !1
  %pfont = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %8, i32 0, i32 4
  %9 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont, align 8, !tbaa !29
  %data = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %9, i32 0, i32 29
  %unitsPerEm = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data, i32 0, i32 8
  %10 = load i32, i32* %unitsPerEm, align 4, !tbaa !50
  store i32 %10, i32* %factor, align 4, !tbaa !5
  %11 = load i32, i32* %bVertical.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load i32, i32* %factor, align 4, !tbaa !5
  store i32 %12, i32* %factor, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %self, align 8, !tbaa !1
  %pfont1 = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %13, i32 0, i32 4
  %14 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont1, align 8, !tbaa !29
  %data2 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %14, i32 0, i32 29
  %get_metrics = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data2, i32 0, i32 4
  %15 = load i32 (%struct.gs_font_type42_s*, i32, i32, float*)*, i32 (%struct.gs_font_type42_s*, i32, i32, float*)** %get_metrics, align 8, !tbaa !51
  %16 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %self, align 8, !tbaa !1
  %pfont3 = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %16, i32 0, i32 4
  %17 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont3, align 8, !tbaa !29
  %18 = load i32, i32* %glyph_index.addr, align 4, !tbaa !5
  %19 = load i32, i32* %bVertical.addr, align 4, !tbaa !5
  %arraydecay = getelementptr inbounds [4 x float], [4 x float]* %sbw, i32 0, i32 0
  %call = call i32 %15(%struct.gs_font_type42_s* %17, i32 %18, i32 %19, float* %arraydecay) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %20 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %20, 0
  br i1 %cmp, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %21 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  %22 = load i32, i32* %sbw_offset, align 4, !tbaa !5
  %add = add nsw i32 0, %22
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [4 x float], [4 x float]* %sbw, i32 0, i64 %idxprom
  %23 = load float, float* %arrayidx, align 4, !tbaa !52
  %24 = load i32, i32* %factor, align 4, !tbaa !5
  %conv = sitofp i32 %24 to float
  %mul = fmul float %23, %conv
  %conv6 = fpext float %mul to double
  %add7 = fadd double %conv6, 5.000000e-01
  %call8 = call double @floor(double %add7) #8
  %conv9 = fptosi double %call8 to i16
  %25 = load i16*, i16** %sideBearing.addr, align 8, !tbaa !1
  store i16 %conv9, i16* %25, align 2, !tbaa !53
  %26 = load i32, i32* %sbw_offset, align 4, !tbaa !5
  %add10 = add nsw i32 2, %26
  %idxprom11 = sext i32 %add10 to i64
  %arrayidx12 = getelementptr inbounds [4 x float], [4 x float]* %sbw, i32 0, i64 %idxprom11
  %27 = load float, float* %arrayidx12, align 4, !tbaa !52
  %28 = load i32, i32* %factor, align 4, !tbaa !5
  %conv13 = sitofp i32 %28 to float
  %mul14 = fmul float %27, %conv13
  %conv15 = fpext float %mul14 to double
  %add16 = fadd double %conv15, 5.000000e-01
  %call17 = call double @floor(double %add16) #8
  %conv18 = fptosi double %call17 to i16
  %29 = load i16*, i16** %nAdvance.addr, align 8, !tbaa !1
  store i16 %conv18, i16* %29, align 2, !tbaa !53
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.then.4
  %30 = bitcast i32* %factor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %31 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast i32* %sbw_offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = bitcast [4 x float]* %sbw to i8*
  call void @llvm.lifetime.end(i64 16, i8* %33) #1
  %34 = bitcast %struct.gx_ttfReader_s** %self to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define %struct.ttfFont_s* @ttfFont__create(%struct.gs_font_dir_s* %dir) #0 {
entry:
  %retval = alloca %struct.ttfFont_s*, align 8
  %dir.addr = alloca %struct.gs_font_dir_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %ttf = alloca %struct.ttfFont_s*, align 8
  %m = alloca %struct.gx_ttfMemory_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_dir_s* %dir, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %1, i32 0, i32 11
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !55
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %2, i32 0, i32 0
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !59
  store %struct.gs_memory_s* %3, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %4 = bitcast %struct.ttfFont_s** %ttf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %ttm = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %5, i32 0, i32 13
  %6 = load %struct.gx_ttfMemory_s*, %struct.gx_ttfMemory_s** %ttm, align 8, !tbaa !60
  %cmp = icmp eq %struct.gx_ttfMemory_s* %6, null
  br i1 %cmp, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %7 = bitcast %struct.gx_ttfMemory_s** %m to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %9 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !16
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call = call i8* %9(%struct.gs_memory_s* %10, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_gx_ttfMemory to %struct.gs_memory_struct_type_s*), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0)) #6
  %11 = bitcast i8* %call to %struct.gx_ttfMemory_s*
  store %struct.gx_ttfMemory_s* %11, %struct.gx_ttfMemory_s** %m, align 8, !tbaa !1
  %12 = load %struct.gx_ttfMemory_s*, %struct.gx_ttfMemory_s** %m, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_ttfMemory_s* %12, null
  br i1 %tobool, label %if.end, label %if.then.1

if.then.1:                                        ; preds = %if.then
  store %struct.ttfFont_s* null, %struct.ttfFont_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %13 = load %struct.gx_ttfMemory_s*, %struct.gx_ttfMemory_s** %m, align 8, !tbaa !1
  %super = getelementptr inbounds %struct.gx_ttfMemory_s, %struct.gx_ttfMemory_s* %13, i32 0, i32 0
  %alloc_struct2 = getelementptr inbounds %struct.ttfMemory_s, %struct.ttfMemory_s* %super, i32 0, i32 1
  store i8* (%struct.ttfMemory_s*, %struct.ttfMemoryDescriptor_s*, i8*)* @gx_ttfMemory__alloc_struct, i8* (%struct.ttfMemory_s*, %struct.ttfMemoryDescriptor_s*, i8*)** %alloc_struct2, align 8, !tbaa !61
  %14 = load %struct.gx_ttfMemory_s*, %struct.gx_ttfMemory_s** %m, align 8, !tbaa !1
  %super3 = getelementptr inbounds %struct.gx_ttfMemory_s, %struct.gx_ttfMemory_s* %14, i32 0, i32 0
  %alloc_bytes = getelementptr inbounds %struct.ttfMemory_s, %struct.ttfMemory_s* %super3, i32 0, i32 0
  store i8* (%struct.ttfMemory_s*, i32, i8*)* @gx_ttfMemory__alloc_bytes, i8* (%struct.ttfMemory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !64
  %15 = load %struct.gx_ttfMemory_s*, %struct.gx_ttfMemory_s** %m, align 8, !tbaa !1
  %super4 = getelementptr inbounds %struct.gx_ttfMemory_s, %struct.gx_ttfMemory_s* %15, i32 0, i32 0
  %free = getelementptr inbounds %struct.ttfMemory_s, %struct.ttfMemory_s* %super4, i32 0, i32 2
  store void (%struct.ttfMemory_s*, i8*, i8*)* @gx_ttfMemory__free, void (%struct.ttfMemory_s*, i8*, i8*)** %free, align 8, !tbaa !65
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %17 = load %struct.gx_ttfMemory_s*, %struct.gx_ttfMemory_s** %m, align 8, !tbaa !1
  %memory5 = getelementptr inbounds %struct.gx_ttfMemory_s, %struct.gx_ttfMemory_s* %17, i32 0, i32 1
  store %struct.gs_memory_s* %16, %struct.gs_memory_s** %memory5, align 8, !tbaa !66
  %18 = load %struct.gx_ttfMemory_s*, %struct.gx_ttfMemory_s** %m, align 8, !tbaa !1
  %19 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %ttm6 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %19, i32 0, i32 13
  store %struct.gx_ttfMemory_s* %18, %struct.gx_ttfMemory_s** %ttm6, align 8, !tbaa !60
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.1
  %20 = bitcast %struct.gx_ttfMemory_s** %m to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.26 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.7

if.end.7:                                         ; preds = %cleanup.cont, %entry
  %21 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %ttm8 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %21, i32 0, i32 13
  %22 = load %struct.gx_ttfMemory_s*, %struct.gx_ttfMemory_s** %ttm8, align 8, !tbaa !60
  %super9 = getelementptr inbounds %struct.gx_ttfMemory_s, %struct.gx_ttfMemory_s* %22, i32 0, i32 0
  %23 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %tti = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %23, i32 0, i32 12
  %call10 = call i32 @ttfInterpreter__obtain(%struct.ttfMemory_s* %super9, %struct.ttfInterpreter_s** %tti) #6
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.7
  store %struct.ttfFont_s* null, %struct.ttfFont_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.26

if.end.13:                                        ; preds = %if.end.7
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %25 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %san = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %25, i32 0, i32 15
  %call14 = call i32 @gx_san__obtain(%struct.gs_memory_s* %24, %struct.gx_device_spot_analyzer_s** %san) #6
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.13
  store %struct.ttfFont_s* null, %struct.ttfFont_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.26

if.end.17:                                        ; preds = %if.end.13
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs18 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %26, i32 0, i32 1
  %alloc_struct19 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs18, i32 0, i32 8
  %27 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct19, align 8, !tbaa !16
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %call20 = call i8* %27(%struct.gs_memory_s* %28, %struct.gs_memory_struct_type_s* @st_ttfFont, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0)) #6
  %29 = bitcast i8* %call20 to %struct.ttfFont_s*
  store %struct.ttfFont_s* %29, %struct.ttfFont_s** %ttf, align 8, !tbaa !1
  %30 = load %struct.ttfFont_s*, %struct.ttfFont_s** %ttf, align 8, !tbaa !1
  %cmp21 = icmp eq %struct.ttfFont_s* %30, null
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.17
  store %struct.ttfFont_s* null, %struct.ttfFont_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.26

if.end.23:                                        ; preds = %if.end.17
  %31 = load %struct.ttfFont_s*, %struct.ttfFont_s** %ttf, align 8, !tbaa !1
  %32 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %ttm24 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %32, i32 0, i32 13
  %33 = load %struct.gx_ttfMemory_s*, %struct.gx_ttfMemory_s** %ttm24, align 8, !tbaa !60
  %super25 = getelementptr inbounds %struct.gx_ttfMemory_s, %struct.gx_ttfMemory_s* %33, i32 0, i32 0
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  call void @ttfFont__init(%struct.ttfFont_s* %31, %struct.ttfMemory_s* %super25, void (%struct.ttfFont_s*)* @DebugRepaint, i32 (%struct.ttfFont_s*, i8*, ...)* null, %struct.gs_memory_s* %34) #6
  %35 = load %struct.ttfFont_s*, %struct.ttfFont_s** %ttf, align 8, !tbaa !1
  store %struct.ttfFont_s* %35, %struct.ttfFont_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.26

cleanup.26:                                       ; preds = %if.end.23, %if.then.22, %if.then.16, %if.then.12, %cleanup
  %36 = bitcast %struct.ttfFont_s** %ttf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = load %struct.ttfFont_s*, %struct.ttfFont_s** %retval
  ret %struct.ttfFont_s* %38
}

; Function Attrs: nounwind uwtable
define internal i8* @gx_ttfMemory__alloc_struct(%struct.ttfMemory_s* %self, %struct.ttfMemoryDescriptor_s* %d, i8* %cname) #0 {
entry:
  %self.addr = alloca %struct.ttfMemory_s*, align 8
  %d.addr = alloca %struct.ttfMemoryDescriptor_s*, align 8
  %cname.addr = alloca i8*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  store %struct.ttfMemory_s* %self, %struct.ttfMemory_s** %self.addr, align 8, !tbaa !1
  store %struct.ttfMemoryDescriptor_s* %d, %struct.ttfMemoryDescriptor_s** %d.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %self.addr, align 8, !tbaa !1
  %2 = bitcast %struct.ttfMemory_s* %1 to %struct.gx_ttfMemory_s*
  %memory = getelementptr inbounds %struct.gx_ttfMemory_s, %struct.gx_ttfMemory_s* %2, i32 0, i32 1
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !66
  store %struct.gs_memory_s* %3, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %5 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !16
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %7 = load %struct.ttfMemoryDescriptor_s*, %struct.ttfMemoryDescriptor_s** %d.addr, align 8, !tbaa !1
  %8 = bitcast %struct.ttfMemoryDescriptor_s* %7 to %struct.gs_memory_struct_type_s*
  %9 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* %5(%struct.gs_memory_s* %6, %struct.gs_memory_struct_type_s* %8, i8* %9) #6
  %10 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal i8* @gx_ttfMemory__alloc_bytes(%struct.ttfMemory_s* %self, i32 %size, i8* %cname) #0 {
entry:
  %self.addr = alloca %struct.ttfMemory_s*, align 8
  %size.addr = alloca i32, align 4
  %cname.addr = alloca i8*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  store %struct.ttfMemory_s* %self, %struct.ttfMemory_s** %self.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %self.addr, align 8, !tbaa !1
  %2 = bitcast %struct.ttfMemory_s* %1 to %struct.gx_ttfMemory_s*
  %memory = getelementptr inbounds %struct.gx_ttfMemory_s, %struct.gx_ttfMemory_s* %2, i32 0, i32 1
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !66
  store %struct.gs_memory_s* %3, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %5 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !67
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %7 = load i32, i32* %size.addr, align 4, !tbaa !5
  %8 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* %5(%struct.gs_memory_s* %6, i32 %7, i8* %8) #6
  %9 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal void @gx_ttfMemory__free(%struct.ttfMemory_s* %self, i8* %p, i8* %cname) #0 {
entry:
  %self.addr = alloca %struct.ttfMemory_s*, align 8
  %p.addr = alloca i8*, align 8
  %cname.addr = alloca i8*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  store %struct.ttfMemory_s* %self, %struct.ttfMemory_s** %self.addr, align 8, !tbaa !1
  store i8* %p, i8** %p.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ttfMemory_s*, %struct.ttfMemory_s** %self.addr, align 8, !tbaa !1
  %2 = bitcast %struct.ttfMemory_s* %1 to %struct.gx_ttfMemory_s*
  %memory = getelementptr inbounds %struct.gx_ttfMemory_s, %struct.gx_ttfMemory_s* %2, i32 0, i32 1
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !66
  store %struct.gs_memory_s* %3, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %5 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !48
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %7 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %8 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  call void %5(%struct.gs_memory_s* %6, i8* %7, i8* %8) #6
  %9 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  ret void
}

declare i32 @ttfInterpreter__obtain(%struct.ttfMemory_s*, %struct.ttfInterpreter_s**) #3

declare i32 @gx_san__obtain(%struct.gs_memory_s*, %struct.gx_device_spot_analyzer_s**) #3

declare void @ttfFont__init(%struct.ttfFont_s*, %struct.ttfMemory_s*, void (%struct.ttfFont_s*)*, i32 (%struct.ttfFont_s*, i8*, ...)*, %struct.gs_memory_s*) #3

; Function Attrs: nounwind uwtable
define internal void @DebugRepaint(%struct.ttfFont_s* %ttf) #0 {
entry:
  %ttf.addr = alloca %struct.ttfFont_s*, align 8
  store %struct.ttfFont_s* %ttf, %struct.ttfFont_s** %ttf.addr, align 8, !tbaa !1
  ret void
}

; Function Attrs: nounwind uwtable
define void @ttfFont__destroy(%struct.ttfFont_s* %self, %struct.gs_font_dir_s* %dir) #0 {
entry:
  %self.addr = alloca %struct.ttfFont_s*, align 8
  %dir.addr = alloca %struct.gs_font_dir_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  store %struct.ttfFont_s* %self, %struct.ttfFont_s** %self.addr, align 8, !tbaa !1
  store %struct.gs_font_dir_s* %dir, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %1, i32 0, i32 11
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !55
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %2, i32 0, i32 0
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !59
  store %struct.gs_memory_s* %3, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %4 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !1
  call void @ttfFont__finit(%struct.ttfFont_s* %4) #6
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %5, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %6 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !48
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %8 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !1
  %9 = bitcast %struct.ttfFont_s* %8 to i8*
  call void %6(%struct.gs_memory_s* %7, i8* %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0)) #6
  %10 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %tti = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %10, i32 0, i32 12
  call void @ttfInterpreter__release(%struct.ttfInterpreter_s** %tti) #6
  %11 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %san = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %11, i32 0, i32 15
  call void @gx_san__release(%struct.gx_device_spot_analyzer_s** %san) #6
  %12 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %tti1 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %12, i32 0, i32 12
  %13 = load %struct.ttfInterpreter_s*, %struct.ttfInterpreter_s** %tti1, align 8, !tbaa !68
  %cmp = icmp eq %struct.ttfInterpreter_s* %13, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %14 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %ttm = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %14, i32 0, i32 13
  %15 = load %struct.gx_ttfMemory_s*, %struct.gx_ttfMemory_s** %ttm, align 8, !tbaa !60
  %cmp2 = icmp ne %struct.gx_ttfMemory_s* %15, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs3 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %16, i32 0, i32 1
  %free_object4 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs3, i32 0, i32 2
  %17 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object4, align 8, !tbaa !48
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %19 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %ttm5 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %19, i32 0, i32 13
  %20 = load %struct.gx_ttfMemory_s*, %struct.gx_ttfMemory_s** %ttm5, align 8, !tbaa !60
  %21 = bitcast %struct.gx_ttfMemory_s* %20 to i8*
  call void %17(%struct.gs_memory_s* %18, i8* %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0)) #6
  %22 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir.addr, align 8, !tbaa !1
  %ttm6 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %22, i32 0, i32 13
  store %struct.gx_ttfMemory_s* null, %struct.gx_ttfMemory_s** %ttm6, align 8, !tbaa !60
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %23 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  ret void
}

declare void @ttfFont__finit(%struct.ttfFont_s*) #3

declare void @ttfInterpreter__release(%struct.ttfInterpreter_s**) #3

declare void @gx_san__release(%struct.gx_device_spot_analyzer_s**) #3

; Function Attrs: nounwind uwtable
define i32 @ttfFont__Open_aux(%struct.ttfFont_s* %self, %struct.ttfInterpreter_s* %tti, %struct.gx_ttfReader_s* %r, %struct.gs_font_type42_s* %pfont, %struct.gs_matrix_s* %char_tm, %struct.gs_log2_scale_point_s* %log2_scale, i32 %design_grid) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.ttfFont_s*, align 8
  %tti.addr = alloca %struct.ttfInterpreter_s*, align 8
  %r.addr = alloca %struct.gx_ttfReader_s*, align 8
  %pfont.addr = alloca %struct.gs_font_type42_s*, align 8
  %char_tm.addr = alloca %struct.gs_matrix_s*, align 8
  %log2_scale.addr = alloca %struct.gs_log2_scale_point_s*, align 8
  %design_grid.addr = alloca i32, align 4
  %char_size = alloca %struct.gs_point_s, align 8
  %subpix_origin = alloca %struct.gs_point_s, align 8
  %post_transform = alloca %struct.gs_matrix_s, align 4
  %nTTC = alloca i32, align 4
  %dg = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %code = alloca i32, align 4
  store %struct.ttfFont_s* %self, %struct.ttfFont_s** %self.addr, align 8, !tbaa !1
  store %struct.ttfInterpreter_s* %tti, %struct.ttfInterpreter_s** %tti.addr, align 8, !tbaa !1
  store %struct.gx_ttfReader_s* %r, %struct.gx_ttfReader_s** %r.addr, align 8, !tbaa !1
  store %struct.gs_font_type42_s* %pfont, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %char_tm, %struct.gs_matrix_s** %char_tm.addr, align 8, !tbaa !1
  store %struct.gs_log2_scale_point_s* %log2_scale, %struct.gs_log2_scale_point_s** %log2_scale.addr, align 8, !tbaa !1
  store i32 %design_grid, i32* %design_grid.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gs_point_s* %char_size to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = bitcast %struct.gs_point_s* %subpix_origin to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #1
  %2 = bitcast %struct.gs_matrix_s* %post_transform to i8*
  call void @llvm.lifetime.start(i64 24, i8* %2) #1
  %3 = bitcast i32* %nTTC to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %nTTC, align 4, !tbaa !5
  %4 = bitcast i32* %dg to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %6 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %char_tm.addr, align 8, !tbaa !1
  %7 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %log2_scale.addr, align 8, !tbaa !1
  %8 = load i32, i32* %design_grid.addr, align 4, !tbaa !5
  call void @decompose_matrix(%struct.gs_font_type42_s* %5, %struct.gs_matrix_s* %6, %struct.gs_log2_scale_point_s* %7, i32 %8, %struct.gs_point_s* %char_size, %struct.gs_point_s* %subpix_origin, %struct.gs_matrix_s* %post_transform, i32* %dg) #6
  %9 = load %struct.ttfInterpreter_s*, %struct.ttfInterpreter_s** %tti.addr, align 8, !tbaa !1
  %10 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !1
  %11 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r.addr, align 8, !tbaa !1
  %super = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %11, i32 0, i32 0
  %12 = load i32, i32* %nTTC, align 4, !tbaa !5
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %char_size, i32 0, i32 0
  %13 = load double, double* %x, align 8, !tbaa !69
  %conv = fptrunc double %13 to float
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %char_size, i32 0, i32 1
  %14 = load double, double* %y, align 8, !tbaa !70
  %conv1 = fptrunc double %14 to float
  %15 = load i32, i32* %dg, align 4, !tbaa !5
  %call = call i32 @ttfFont__Open(%struct.ttfInterpreter_s* %9, %struct.ttfFont_s* %10, %struct.ttfReader_s* %super, i32 %12, float %conv, float %conv1, i32 %15) #6
  switch i32 %call, label %sw.default [
    i32 0, label %sw.bb
    i32 3, label %sw.bb.2
    i32 4, label %sw.bb.3
    i32 9, label %sw.bb.4
    i32 8, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.10

sw.bb.2:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.10

sw.bb.3:                                          ; preds = %entry
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.10

sw.bb.4:                                          ; preds = %entry
  %16 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  call void @WarnBadInstruction(%struct.gs_font_type42_s* %16, i32 -1) #6
  br label %recover

sw.bb.5:                                          ; preds = %entry
  %17 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %18 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !1
  call void @WarnPatented(%struct.gs_font_type42_s* %17, %struct.ttfFont_s* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0)) #6
  br label %recover

recover:                                          ; preds = %sw.bb.5, %sw.bb.4
  %19 = load %struct.ttfFont_s*, %struct.ttfFont_s** %self.addr, align 8, !tbaa !1
  %patented = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %19, i32 0, i32 19
  store i32 1, i32* %patented, align 4, !tbaa !71
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.10

sw.default:                                       ; preds = %entry
  %20 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r.addr, align 8, !tbaa !1
  %super6 = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %21, i32 0, i32 0
  %Error = getelementptr inbounds %struct.ttfReader_s, %struct.ttfReader_s* %super6, i32 0, i32 4
  %22 = load i32 (%struct.ttfReader_s*)*, i32 (%struct.ttfReader_s*)** %Error, align 8, !tbaa !23
  %23 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r.addr, align 8, !tbaa !1
  %super7 = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %23, i32 0, i32 0
  %call8 = call i32 %22(%struct.ttfReader_s* %super7) #6
  store i32 %call8, i32* %code, align 4, !tbaa !5
  %24 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %24, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.default
  %25 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %sw.default
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %26 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  br label %cleanup.10

cleanup.10:                                       ; preds = %cleanup, %recover, %sw.bb.3, %sw.bb.2, %sw.bb
  %27 = bitcast i32* %dg to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = bitcast i32* %nTTC to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast %struct.gs_matrix_s* %post_transform to i8*
  call void @llvm.lifetime.end(i64 24, i8* %29) #1
  %30 = bitcast %struct.gs_point_s* %subpix_origin to i8*
  call void @llvm.lifetime.end(i64 16, i8* %30) #1
  %31 = bitcast %struct.gs_point_s* %char_size to i8*
  call void @llvm.lifetime.end(i64 16, i8* %31) #1
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal void @decompose_matrix(%struct.gs_font_type42_s* %pfont, %struct.gs_matrix_s* %char_tm, %struct.gs_log2_scale_point_s* %log2_scale, i32 %design_grid, %struct.gs_point_s* %char_size, %struct.gs_point_s* %subpix_origin, %struct.gs_matrix_s* %post_transform, i32* %dg) #0 {
entry:
  %pfont.addr = alloca %struct.gs_font_type42_s*, align 8
  %char_tm.addr = alloca %struct.gs_matrix_s*, align 8
  %log2_scale.addr = alloca %struct.gs_log2_scale_point_s*, align 8
  %design_grid.addr = alloca i32, align 4
  %char_size.addr = alloca %struct.gs_point_s*, align 8
  %subpix_origin.addr = alloca %struct.gs_point_s*, align 8
  %post_transform.addr = alloca %struct.gs_matrix_s*, align 8
  %dg.addr = alloca i32*, align 8
  %scale_x = alloca i32, align 4
  %scale_y = alloca i32, align 4
  %atp = alloca i32, align 4
  %design_grid1 = alloca i32, align 4
  store %struct.gs_font_type42_s* %pfont, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %char_tm, %struct.gs_matrix_s** %char_tm.addr, align 8, !tbaa !1
  store %struct.gs_log2_scale_point_s* %log2_scale, %struct.gs_log2_scale_point_s** %log2_scale.addr, align 8, !tbaa !1
  store i32 %design_grid, i32* %design_grid.addr, align 4, !tbaa !5
  store %struct.gs_point_s* %char_size, %struct.gs_point_s** %char_size.addr, align 8, !tbaa !1
  store %struct.gs_point_s* %subpix_origin, %struct.gs_point_s** %subpix_origin.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %post_transform, %struct.gs_matrix_s** %post_transform.addr, align 8, !tbaa !1
  store i32* %dg, i32** %dg.addr, align 8, !tbaa !1
  %0 = bitcast i32* %scale_x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %log2_scale.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %1, i32 0, i32 0
  %2 = load i32, i32* %x, align 4, !tbaa !74
  %shl = shl i32 1, %2
  store i32 %shl, i32* %scale_x, align 4, !tbaa !5
  %3 = bitcast i32* %scale_y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %log2_scale.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %4, i32 0, i32 1
  %5 = load i32, i32* %y, align 4, !tbaa !76
  %shl1 = shl i32 1, %5
  store i32 %shl1, i32* %scale_y, align 4, !tbaa !5
  %6 = bitcast i32* %atp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %dir = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %7, i32 0, i32 3
  %8 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8, !tbaa !77
  %call = call i32 @gs_currentaligntopixels(%struct.gs_font_dir_s* %8) #6
  store i32 %call, i32* %atp, align 4, !tbaa !5
  %9 = bitcast i32* %design_grid1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %char_tm.addr, align 8, !tbaa !1
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %10, i32 0, i32 0
  %11 = load float, float* %xx, align 4, !tbaa !78
  %conv = fpext float %11 to double
  %12 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %char_tm.addr, align 8, !tbaa !1
  %xx2 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %12, i32 0, i32 0
  %13 = load float, float* %xx2, align 4, !tbaa !78
  %conv3 = fpext float %13 to double
  %mul = fmul double %conv, %conv3
  %14 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %char_tm.addr, align 8, !tbaa !1
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %14, i32 0, i32 1
  %15 = load float, float* %xy, align 4, !tbaa !79
  %conv4 = fpext float %15 to double
  %16 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %char_tm.addr, align 8, !tbaa !1
  %xy5 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %16, i32 0, i32 1
  %17 = load float, float* %xy5, align 4, !tbaa !79
  %conv6 = fpext float %17 to double
  %mul7 = fmul double %conv4, %conv6
  %add = fadd double %mul, %mul7
  %call8 = call double @sqrt(double %add) #7
  %18 = load %struct.gs_point_s*, %struct.gs_point_s** %char_size.addr, align 8, !tbaa !1
  %x9 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %18, i32 0, i32 0
  store double %call8, double* %x9, align 8, !tbaa !69
  %19 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %char_tm.addr, align 8, !tbaa !1
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %19, i32 0, i32 2
  %20 = load float, float* %yx, align 4, !tbaa !80
  %conv10 = fpext float %20 to double
  %21 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %char_tm.addr, align 8, !tbaa !1
  %yx11 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %21, i32 0, i32 2
  %22 = load float, float* %yx11, align 4, !tbaa !80
  %conv12 = fpext float %22 to double
  %mul13 = fmul double %conv10, %conv12
  %23 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %char_tm.addr, align 8, !tbaa !1
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %23, i32 0, i32 3
  %24 = load float, float* %yy, align 4, !tbaa !81
  %conv14 = fpext float %24 to double
  %25 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %char_tm.addr, align 8, !tbaa !1
  %yy15 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %25, i32 0, i32 3
  %26 = load float, float* %yy15, align 4, !tbaa !81
  %conv16 = fpext float %26 to double
  %mul17 = fmul double %conv14, %conv16
  %add18 = fadd double %mul13, %mul17
  %call19 = call double @sqrt(double %add18) #7
  %27 = load %struct.gs_point_s*, %struct.gs_point_s** %char_size.addr, align 8, !tbaa !1
  %y20 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %27, i32 0, i32 1
  store double %call19, double* %y20, align 8, !tbaa !70
  %28 = load %struct.gs_point_s*, %struct.gs_point_s** %char_size.addr, align 8, !tbaa !1
  %x21 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %28, i32 0, i32 0
  %29 = load double, double* %x21, align 8, !tbaa !69
  %cmp = fcmp ole double %29, 2.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %30 = load %struct.gs_point_s*, %struct.gs_point_s** %char_size.addr, align 8, !tbaa !1
  %y23 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %30, i32 0, i32 1
  %31 = load double, double* %y23, align 8, !tbaa !70
  %cmp24 = fcmp ole double %31, 2.000000e+00
  br i1 %cmp24, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %design_grid1, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %32 = load i32, i32* %design_grid.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %32, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.else
  %33 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %dir26 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %33, i32 0, i32 3
  %34 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir26, align 8, !tbaa !77
  %call27 = call i32 @gs_currentgridfittt(%struct.gs_font_dir_s* %34) #6
  %and = and i32 %call27, 1
  %tobool28 = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool28, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.else
  %35 = phi i1 [ true, %if.else ], [ %lnot, %lor.rhs ]
  %lor.ext = zext i1 %35 to i32
  store i32 %lor.ext, i32* %design_grid1, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %lor.end, %if.then
  %36 = load i32, i32* %design_grid1, align 4, !tbaa !5
  %37 = load i32*, i32** %dg.addr, align 8, !tbaa !1
  store i32 %36, i32* %37, align 4, !tbaa !5
  %38 = load i32, i32* %atp, align 4, !tbaa !5
  %tobool29 = icmp ne i32 %38, 0
  br i1 %tobool29, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %39 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %char_tm.addr, align 8, !tbaa !1
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %39, i32 0, i32 4
  %40 = load float, float* %tx, align 4, !tbaa !82
  %41 = load i32, i32* %scale_x, align 4, !tbaa !5
  %call30 = call float @reminder(float %40, i32 %41) #6
  %42 = load i32, i32* %scale_x, align 4, !tbaa !5
  %conv31 = sitofp i32 %42 to float
  %div = fdiv float %call30, %conv31
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ 0.000000e+00, %cond.true ], [ %div, %cond.false ]
  %conv32 = fpext float %cond to double
  %43 = load %struct.gs_point_s*, %struct.gs_point_s** %subpix_origin.addr, align 8, !tbaa !1
  %x33 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %43, i32 0, i32 0
  store double %conv32, double* %x33, align 8, !tbaa !69
  %44 = load i32, i32* %atp, align 4, !tbaa !5
  %tobool34 = icmp ne i32 %44, 0
  br i1 %tobool34, label %cond.true.35, label %cond.false.36

cond.true.35:                                     ; preds = %cond.end
  br label %cond.end.40

cond.false.36:                                    ; preds = %cond.end
  %45 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %char_tm.addr, align 8, !tbaa !1
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %45, i32 0, i32 5
  %46 = load float, float* %ty, align 4, !tbaa !83
  %47 = load i32, i32* %scale_y, align 4, !tbaa !5
  %call37 = call float @reminder(float %46, i32 %47) #6
  %48 = load i32, i32* %scale_y, align 4, !tbaa !5
  %conv38 = sitofp i32 %48 to float
  %div39 = fdiv float %call37, %conv38
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.false.36, %cond.true.35
  %cond41 = phi float [ 0.000000e+00, %cond.true.35 ], [ %div39, %cond.false.36 ]
  %conv42 = fpext float %cond41 to double
  %49 = load %struct.gs_point_s*, %struct.gs_point_s** %subpix_origin.addr, align 8, !tbaa !1
  %y43 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %49, i32 0, i32 1
  store double %conv42, double* %y43, align 8, !tbaa !70
  %50 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %char_tm.addr, align 8, !tbaa !1
  %xx44 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %50, i32 0, i32 0
  %51 = load float, float* %xx44, align 4, !tbaa !78
  %conv45 = fpext float %51 to double
  %52 = load i32, i32* %design_grid1, align 4, !tbaa !5
  %tobool46 = icmp ne i32 %52, 0
  br i1 %tobool46, label %cond.true.47, label %cond.false.48

cond.true.47:                                     ; preds = %cond.end.40
  br label %cond.end.50

cond.false.48:                                    ; preds = %cond.end.40
  %53 = load %struct.gs_point_s*, %struct.gs_point_s** %char_size.addr, align 8, !tbaa !1
  %x49 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %53, i32 0, i32 0
  %54 = load double, double* %x49, align 8, !tbaa !69
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.false.48, %cond.true.47
  %cond51 = phi double [ 1.000000e+00, %cond.true.47 ], [ %54, %cond.false.48 ]
  %div52 = fdiv double %conv45, %cond51
  %conv53 = fptrunc double %div52 to float
  %55 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %post_transform.addr, align 8, !tbaa !1
  %xx54 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %55, i32 0, i32 0
  store float %conv53, float* %xx54, align 4, !tbaa !78
  %56 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %char_tm.addr, align 8, !tbaa !1
  %xy55 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %56, i32 0, i32 1
  %57 = load float, float* %xy55, align 4, !tbaa !79
  %conv56 = fpext float %57 to double
  %58 = load i32, i32* %design_grid1, align 4, !tbaa !5
  %tobool57 = icmp ne i32 %58, 0
  br i1 %tobool57, label %cond.true.58, label %cond.false.59

cond.true.58:                                     ; preds = %cond.end.50
  br label %cond.end.61

cond.false.59:                                    ; preds = %cond.end.50
  %59 = load %struct.gs_point_s*, %struct.gs_point_s** %char_size.addr, align 8, !tbaa !1
  %x60 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %59, i32 0, i32 0
  %60 = load double, double* %x60, align 8, !tbaa !69
  br label %cond.end.61

cond.end.61:                                      ; preds = %cond.false.59, %cond.true.58
  %cond62 = phi double [ 1.000000e+00, %cond.true.58 ], [ %60, %cond.false.59 ]
  %div63 = fdiv double %conv56, %cond62
  %conv64 = fptrunc double %div63 to float
  %61 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %post_transform.addr, align 8, !tbaa !1
  %xy65 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %61, i32 0, i32 1
  store float %conv64, float* %xy65, align 4, !tbaa !79
  %62 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %char_tm.addr, align 8, !tbaa !1
  %yx66 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %62, i32 0, i32 2
  %63 = load float, float* %yx66, align 4, !tbaa !80
  %conv67 = fpext float %63 to double
  %64 = load i32, i32* %design_grid1, align 4, !tbaa !5
  %tobool68 = icmp ne i32 %64, 0
  br i1 %tobool68, label %cond.true.69, label %cond.false.70

cond.true.69:                                     ; preds = %cond.end.61
  br label %cond.end.72

cond.false.70:                                    ; preds = %cond.end.61
  %65 = load %struct.gs_point_s*, %struct.gs_point_s** %char_size.addr, align 8, !tbaa !1
  %y71 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %65, i32 0, i32 1
  %66 = load double, double* %y71, align 8, !tbaa !70
  br label %cond.end.72

cond.end.72:                                      ; preds = %cond.false.70, %cond.true.69
  %cond73 = phi double [ 1.000000e+00, %cond.true.69 ], [ %66, %cond.false.70 ]
  %div74 = fdiv double %conv67, %cond73
  %conv75 = fptrunc double %div74 to float
  %67 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %post_transform.addr, align 8, !tbaa !1
  %yx76 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %67, i32 0, i32 2
  store float %conv75, float* %yx76, align 4, !tbaa !80
  %68 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %char_tm.addr, align 8, !tbaa !1
  %yy77 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %68, i32 0, i32 3
  %69 = load float, float* %yy77, align 4, !tbaa !81
  %conv78 = fpext float %69 to double
  %70 = load i32, i32* %design_grid1, align 4, !tbaa !5
  %tobool79 = icmp ne i32 %70, 0
  br i1 %tobool79, label %cond.true.80, label %cond.false.81

cond.true.80:                                     ; preds = %cond.end.72
  br label %cond.end.83

cond.false.81:                                    ; preds = %cond.end.72
  %71 = load %struct.gs_point_s*, %struct.gs_point_s** %char_size.addr, align 8, !tbaa !1
  %y82 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %71, i32 0, i32 1
  %72 = load double, double* %y82, align 8, !tbaa !70
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.false.81, %cond.true.80
  %cond84 = phi double [ 1.000000e+00, %cond.true.80 ], [ %72, %cond.false.81 ]
  %div85 = fdiv double %conv78, %cond84
  %conv86 = fptrunc double %div85 to float
  %73 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %post_transform.addr, align 8, !tbaa !1
  %yy87 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %73, i32 0, i32 3
  store float %conv86, float* %yy87, align 4, !tbaa !81
  %74 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %char_tm.addr, align 8, !tbaa !1
  %tx88 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %74, i32 0, i32 4
  %75 = load float, float* %tx88, align 4, !tbaa !82
  %conv89 = fpext float %75 to double
  %76 = load %struct.gs_point_s*, %struct.gs_point_s** %subpix_origin.addr, align 8, !tbaa !1
  %x90 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %76, i32 0, i32 0
  %77 = load double, double* %x90, align 8, !tbaa !69
  %sub = fsub double %conv89, %77
  %conv91 = fptrunc double %sub to float
  %78 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %post_transform.addr, align 8, !tbaa !1
  %tx92 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %78, i32 0, i32 4
  store float %conv91, float* %tx92, align 4, !tbaa !82
  %79 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %char_tm.addr, align 8, !tbaa !1
  %ty93 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %79, i32 0, i32 5
  %80 = load float, float* %ty93, align 4, !tbaa !83
  %conv94 = fpext float %80 to double
  %81 = load %struct.gs_point_s*, %struct.gs_point_s** %subpix_origin.addr, align 8, !tbaa !1
  %y95 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %81, i32 0, i32 1
  %82 = load double, double* %y95, align 8, !tbaa !70
  %sub96 = fsub double %conv94, %82
  %conv97 = fptrunc double %sub96 to float
  %83 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %post_transform.addr, align 8, !tbaa !1
  %ty98 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %83, i32 0, i32 5
  store float %conv97, float* %ty98, align 4, !tbaa !83
  %84 = bitcast i32* %design_grid1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #1
  %85 = bitcast i32* %atp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #1
  %86 = bitcast i32* %scale_y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #1
  %87 = bitcast i32* %scale_x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #1
  ret void
}

declare i32 @ttfFont__Open(%struct.ttfInterpreter_s*, %struct.ttfFont_s*, %struct.ttfReader_s*, i32, float, float, i32) #3

; Function Attrs: nounwind uwtable
define internal void @WarnBadInstruction(%struct.gs_font_type42_s* %pfont, i32 %glyph_index) #0 {
entry:
  %pfont.addr = alloca %struct.gs_font_type42_s*, align 8
  %glyph_index.addr = alloca i32, align 4
  %buf = alloca [48 x i8], align 16
  %l = alloca i32, align 4
  %base_font = alloca %struct.gs_font_type42_s*, align 8
  store %struct.gs_font_type42_s* %pfont, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  store i32 %glyph_index, i32* %glyph_index.addr, align 4, !tbaa !5
  %0 = bitcast [48 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 48, i8* %0) #1
  %1 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.gs_font_type42_s** %base_font to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  store %struct.gs_font_type42_s* %3, %struct.gs_font_type42_s** %base_font, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %4 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %base_font, align 8, !tbaa !1
  %base = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %4, i32 0, i32 7
  %5 = load %struct.gs_font_s*, %struct.gs_font_s** %base, align 8, !tbaa !84
  %6 = bitcast %struct.gs_font_s* %5 to %struct.gs_font_type42_s*
  %7 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %base_font, align 8, !tbaa !1
  %cmp = icmp ne %struct.gs_font_type42_s* %6, %7
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %base_font, align 8, !tbaa !1
  %base1 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %8, i32 0, i32 7
  %9 = load %struct.gs_font_s*, %struct.gs_font_s** %base1, align 8, !tbaa !84
  %10 = bitcast %struct.gs_font_s* %9 to %struct.gs_font_type42_s*
  store %struct.gs_font_type42_s* %10, %struct.gs_font_type42_s** %base_font, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %11 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %base_font, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %11, i32 0, i32 29
  %warning_bad_instruction = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data, i32 0, i32 23
  %12 = load i32, i32* %warning_bad_instruction, align 4, !tbaa !85
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.end.27, label %if.then

if.then:                                          ; preds = %while.end
  %13 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %base_font, align 8, !tbaa !1
  %font_name = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %13, i32 0, i32 22
  %size = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %font_name, i32 0, i32 1
  %14 = load i32, i32* %size, align 4, !tbaa !86
  %conv = zext i32 %14 to i64
  %cmp2 = icmp ult i64 47, %conv
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %15 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %base_font, align 8, !tbaa !1
  %font_name4 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %15, i32 0, i32 22
  %size5 = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %font_name4, i32 0, i32 1
  %16 = load i32, i32* %size5, align 4, !tbaa !86
  %conv6 = zext i32 %16 to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 47, %cond.true ], [ %conv6, %cond.false ]
  %conv7 = trunc i64 %cond to i32
  store i32 %conv7, i32* %l, align 4, !tbaa !5
  %arraydecay = getelementptr inbounds [48 x i8], [48 x i8]* %buf, i32 0, i32 0
  %17 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %base_font, align 8, !tbaa !1
  %font_name8 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %17, i32 0, i32 22
  %chars = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %font_name8, i32 0, i32 0
  %arraydecay9 = getelementptr inbounds [48 x i8], [48 x i8]* %chars, i32 0, i32 0
  %18 = load i32, i32* %l, align 4, !tbaa !5
  %conv10 = sext i32 %18 to i64
  %call = call i8* @memcpy(i8* %arraydecay, i8* %arraydecay9, i64 %conv10) #7
  %19 = load i32, i32* %l, align 4, !tbaa !5
  %idxprom = sext i32 %19 to i64
  %arrayidx = getelementptr inbounds [48 x i8], [48 x i8]* %buf, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !87
  %20 = load i32, i32* %glyph_index.addr, align 4, !tbaa !5
  %cmp11 = icmp sge i32 %20, 0
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %cond.end
  %21 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %21, i32 0, i32 2
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !45
  %call14 = call i8* @gs_program_name() #6
  %call15 = call i64 @gs_revision_number() #6
  call void @emprintf_program_ident(%struct.gs_memory_s* %22, i8* %call14, i64 %call15) #6
  %23 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %memory16 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %23, i32 0, i32 2
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory16, align 8, !tbaa !45
  %25 = load i32, i32* %glyph_index.addr, align 4, !tbaa !5
  %arraydecay17 = getelementptr inbounds [48 x i8], [48 x i8]* %buf, i32 0, i32 0
  %call18 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %24, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.12, i32 0, i32 0), i32 %25, i8* %arraydecay17) #6
  br label %if.end

if.else:                                          ; preds = %cond.end
  %26 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %memory19 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %26, i32 0, i32 2
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory19, align 8, !tbaa !45
  %call20 = call i8* @gs_program_name() #6
  %call21 = call i64 @gs_revision_number() #6
  call void @emprintf_program_ident(%struct.gs_memory_s* %27, i8* %call20, i64 %call21) #6
  %28 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %memory22 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %28, i32 0, i32 2
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory22, align 8, !tbaa !45
  %arraydecay23 = getelementptr inbounds [48 x i8], [48 x i8]* %buf, i32 0, i32 0
  %call24 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %29, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.13, i32 0, i32 0), i8* %arraydecay23) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.13
  %30 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %base_font, align 8, !tbaa !1
  %data25 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %30, i32 0, i32 29
  %warning_bad_instruction26 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data25, i32 0, i32 23
  store i32 1, i32* %warning_bad_instruction26, align 4, !tbaa !85
  br label %if.end.27

if.end.27:                                        ; preds = %if.end, %while.end
  %31 = bitcast %struct.gs_font_type42_s** %base_font to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = bitcast [48 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 48, i8* %33) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @WarnPatented(%struct.gs_font_type42_s* %pfont, %struct.ttfFont_s* %ttf, i8* %txt) #0 {
entry:
  %pfont.addr = alloca %struct.gs_font_type42_s*, align 8
  %ttf.addr = alloca %struct.ttfFont_s*, align 8
  %txt.addr = alloca i8*, align 8
  %buf = alloca [48 x i8], align 16
  %l = alloca i32, align 4
  %base_font = alloca %struct.gs_font_type42_s*, align 8
  store %struct.gs_font_type42_s* %pfont, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  store %struct.ttfFont_s* %ttf, %struct.ttfFont_s** %ttf.addr, align 8, !tbaa !1
  store i8* %txt, i8** %txt.addr, align 8, !tbaa !1
  %0 = load %struct.ttfFont_s*, %struct.ttfFont_s** %ttf.addr, align 8, !tbaa !1
  %design_grid = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %0, i32 0, i32 20
  %1 = load i32, i32* %design_grid, align 4, !tbaa !88
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end.20, label %if.then

if.then:                                          ; preds = %entry
  %2 = bitcast [48 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 48, i8* %2) #1
  %3 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %struct.gs_font_type42_s** %base_font to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  store %struct.gs_font_type42_s* %5, %struct.gs_font_type42_s** %base_font, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %6 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %base_font, align 8, !tbaa !1
  %base = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %6, i32 0, i32 7
  %7 = load %struct.gs_font_s*, %struct.gs_font_s** %base, align 8, !tbaa !84
  %8 = bitcast %struct.gs_font_s* %7 to %struct.gs_font_type42_s*
  %9 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %base_font, align 8, !tbaa !1
  %cmp = icmp ne %struct.gs_font_type42_s* %8, %9
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %base_font, align 8, !tbaa !1
  %base1 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %10, i32 0, i32 7
  %11 = load %struct.gs_font_s*, %struct.gs_font_s** %base1, align 8, !tbaa !84
  %12 = bitcast %struct.gs_font_s* %11 to %struct.gs_font_type42_s*
  store %struct.gs_font_type42_s* %12, %struct.gs_font_type42_s** %base_font, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %13 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %base_font, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %13, i32 0, i32 29
  %warning_patented = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data, i32 0, i32 22
  %14 = load i32, i32* %warning_patented, align 4, !tbaa !89
  %tobool2 = icmp ne i32 %14, 0
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %while.end
  %15 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %base_font, align 8, !tbaa !1
  %font_name = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %15, i32 0, i32 22
  %size = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %font_name, i32 0, i32 1
  %16 = load i32, i32* %size, align 4, !tbaa !86
  %conv = zext i32 %16 to i64
  %cmp4 = icmp ult i64 47, %conv
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.3
  br label %cond.end

cond.false:                                       ; preds = %if.then.3
  %17 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %base_font, align 8, !tbaa !1
  %font_name6 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %17, i32 0, i32 22
  %size7 = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %font_name6, i32 0, i32 1
  %18 = load i32, i32* %size7, align 4, !tbaa !86
  %conv8 = zext i32 %18 to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 47, %cond.true ], [ %conv8, %cond.false ]
  %conv9 = trunc i64 %cond to i32
  store i32 %conv9, i32* %l, align 4, !tbaa !5
  %arraydecay = getelementptr inbounds [48 x i8], [48 x i8]* %buf, i32 0, i32 0
  %19 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %base_font, align 8, !tbaa !1
  %font_name10 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %19, i32 0, i32 22
  %chars = getelementptr inbounds %struct.gs_font_name_s, %struct.gs_font_name_s* %font_name10, i32 0, i32 0
  %arraydecay11 = getelementptr inbounds [48 x i8], [48 x i8]* %chars, i32 0, i32 0
  %20 = load i32, i32* %l, align 4, !tbaa !5
  %conv12 = sext i32 %20 to i64
  %call = call i8* @memcpy(i8* %arraydecay, i8* %arraydecay11, i64 %conv12) #7
  %21 = load i32, i32* %l, align 4, !tbaa !5
  %idxprom = sext i32 %21 to i64
  %arrayidx = getelementptr inbounds [48 x i8], [48 x i8]* %buf, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !87
  %22 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %22, i32 0, i32 2
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !45
  %call13 = call i8* @gs_program_name() #6
  %call14 = call i64 @gs_revision_number() #6
  call void @emprintf_program_ident(%struct.gs_memory_s* %23, i8* %call13, i64 %call14) #6
  %24 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %memory15 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %24, i32 0, i32 2
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory15, align 8, !tbaa !45
  %26 = load i8*, i8** %txt.addr, align 8, !tbaa !1
  %arraydecay16 = getelementptr inbounds [48 x i8], [48 x i8]* %buf, i32 0, i32 0
  %call17 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %25, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.14, i32 0, i32 0), i8* %26, i8* %arraydecay16) #6
  %27 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %base_font, align 8, !tbaa !1
  %data18 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %27, i32 0, i32 29
  %warning_patented19 = getelementptr inbounds %struct.gs_type42_data_s, %struct.gs_type42_data_s* %data18, i32 0, i32 22
  store i32 1, i32* %warning_patented19, align 4, !tbaa !89
  br label %if.end

if.end:                                           ; preds = %cond.end, %while.end
  %28 = bitcast %struct.gs_font_type42_s** %base_font to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = bitcast [48 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 48, i8* %30) #1
  br label %if.end.20

if.end.20:                                        ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gx_ttf_outline(%struct.ttfFont_s* %ttf, %struct.gx_ttfReader_s* %r, %struct.gs_font_type42_s* %pfont, i32 %glyph_index, %struct.gs_matrix_s* %m, %struct.gs_log2_scale_point_s* %pscale, %struct.gx_path_s* %path, i32 %design_grid) #0 {
entry:
  %retval = alloca i32, align 4
  %ttf.addr = alloca %struct.ttfFont_s*, align 8
  %r.addr = alloca %struct.gx_ttfReader_s*, align 8
  %pfont.addr = alloca %struct.gs_font_type42_s*, align 8
  %glyph_index.addr = alloca i32, align 4
  %m.addr = alloca %struct.gs_matrix_s*, align 8
  %pscale.addr = alloca %struct.gs_log2_scale_point_s*, align 8
  %path.addr = alloca %struct.gx_path_s*, align 8
  %design_grid.addr = alloca i32, align 4
  %e = alloca %struct.gx_ttfExport_s, align 8
  %o = alloca %struct.ttfOutliner, align 8
  %char_size = alloca %struct.gs_point_s, align 8
  %subpix_origin = alloca %struct.gs_point_s, align 8
  %post_transform = alloca %struct.gs_matrix_s, align 4
  %m1 = alloca %struct.FloatMatrix, align 8
  %dg = alloca i32, align 4
  %gftt = alloca i32, align 4
  %ttin = alloca i32, align 4
  %auth = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %code = alloca i32, align 4
  store %struct.ttfFont_s* %ttf, %struct.ttfFont_s** %ttf.addr, align 8, !tbaa !1
  store %struct.gx_ttfReader_s* %r, %struct.gx_ttfReader_s** %r.addr, align 8, !tbaa !1
  store %struct.gs_font_type42_s* %pfont, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  store i32 %glyph_index, i32* %glyph_index.addr, align 4, !tbaa !5
  store %struct.gs_matrix_s* %m, %struct.gs_matrix_s** %m.addr, align 8, !tbaa !1
  store %struct.gs_log2_scale_point_s* %pscale, %struct.gs_log2_scale_point_s** %pscale.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %path, %struct.gx_path_s** %path.addr, align 8, !tbaa !1
  store i32 %design_grid, i32* %design_grid.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_ttfExport_s* %e to i8*
  call void @llvm.lifetime.start(i64 88, i8* %0) #1
  %1 = bitcast %struct.ttfOutliner* %o to i8*
  call void @llvm.lifetime.start(i64 144, i8* %1) #1
  %2 = bitcast %struct.gs_point_s* %char_size to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #1
  %3 = bitcast %struct.gs_point_s* %subpix_origin to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = bitcast %struct.gs_matrix_s* %post_transform to i8*
  call void @llvm.lifetime.start(i64 24, i8* %4) #1
  %5 = bitcast %struct.FloatMatrix* %m1 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %5) #1
  %6 = bitcast i32* %dg to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %gftt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %dir = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %8, i32 0, i32 3
  %9 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8, !tbaa !77
  %call = call i32 @gs_currentgridfittt(%struct.gs_font_dir_s* %9) #6
  store i32 %call, i32* %gftt, align 4, !tbaa !5
  %10 = bitcast i32* %ttin to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load i32, i32* %gftt, align 4, !tbaa !5
  %and = and i32 %11, 1
  store i32 %and, i32* %ttin, align 4, !tbaa !5
  %12 = bitcast i32* %auth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load i32, i32* %gftt, align 4, !tbaa !5
  %and1 = and i32 %13, 2
  store i32 %and1, i32* %auth, align 4, !tbaa !5
  %14 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %15 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %m.addr, align 8, !tbaa !1
  %16 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %pscale.addr, align 8, !tbaa !1
  %17 = load i32, i32* %design_grid.addr, align 4, !tbaa !5
  call void @decompose_matrix(%struct.gs_font_type42_s* %14, %struct.gs_matrix_s* %15, %struct.gs_log2_scale_point_s* %16, i32 %17, %struct.gs_point_s* %char_size, %struct.gs_point_s* %subpix_origin, %struct.gs_matrix_s* %post_transform, i32* %dg) #6
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %post_transform, i32 0, i32 0
  %18 = load float, float* %xx, align 4, !tbaa !78
  %conv = fpext float %18 to double
  %a = getelementptr inbounds %struct.FloatMatrix, %struct.FloatMatrix* %m1, i32 0, i32 0
  store double %conv, double* %a, align 8, !tbaa !90
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %post_transform, i32 0, i32 1
  %19 = load float, float* %xy, align 4, !tbaa !79
  %conv2 = fpext float %19 to double
  %b = getelementptr inbounds %struct.FloatMatrix, %struct.FloatMatrix* %m1, i32 0, i32 1
  store double %conv2, double* %b, align 8, !tbaa !92
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %post_transform, i32 0, i32 2
  %20 = load float, float* %yx, align 4, !tbaa !80
  %conv3 = fpext float %20 to double
  %c = getelementptr inbounds %struct.FloatMatrix, %struct.FloatMatrix* %m1, i32 0, i32 2
  store double %conv3, double* %c, align 8, !tbaa !93
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %post_transform, i32 0, i32 3
  %21 = load float, float* %yy, align 4, !tbaa !81
  %conv4 = fpext float %21 to double
  %d = getelementptr inbounds %struct.FloatMatrix, %struct.FloatMatrix* %m1, i32 0, i32 3
  store double %conv4, double* %d, align 8, !tbaa !94
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %post_transform, i32 0, i32 4
  %22 = load float, float* %tx, align 4, !tbaa !82
  %conv5 = fpext float %22 to double
  %tx6 = getelementptr inbounds %struct.FloatMatrix, %struct.FloatMatrix* %m1, i32 0, i32 4
  store double %conv5, double* %tx6, align 8, !tbaa !95
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %post_transform, i32 0, i32 5
  %23 = load float, float* %ty, align 4, !tbaa !83
  %conv7 = fpext float %23 to double
  %ty8 = getelementptr inbounds %struct.FloatMatrix, %struct.FloatMatrix* %m1, i32 0, i32 5
  store double %conv7, double* %ty8, align 8, !tbaa !96
  %super = getelementptr inbounds %struct.gx_ttfExport_s, %struct.gx_ttfExport_s* %e, i32 0, i32 0
  %bPoints = getelementptr inbounds %struct.ttfExport_s, %struct.ttfExport_s* %super, i32 0, i32 0
  store i32 0, i32* %bPoints, align 4, !tbaa !97
  %super9 = getelementptr inbounds %struct.gx_ttfExport_s, %struct.gx_ttfExport_s* %e, i32 0, i32 0
  %bOutline = getelementptr inbounds %struct.ttfExport_s, %struct.ttfExport_s* %super9, i32 0, i32 1
  store i32 1, i32* %bOutline, align 4, !tbaa !101
  %super10 = getelementptr inbounds %struct.gx_ttfExport_s, %struct.gx_ttfExport_s* %e, i32 0, i32 0
  %MoveTo = getelementptr inbounds %struct.ttfExport_s, %struct.ttfExport_s* %super10, i32 0, i32 2
  store void (%struct.ttfExport_s*, %struct.FloatPoint*)* @gx_ttfExport__MoveTo, void (%struct.ttfExport_s*, %struct.FloatPoint*)** %MoveTo, align 8, !tbaa !102
  %super11 = getelementptr inbounds %struct.gx_ttfExport_s, %struct.gx_ttfExport_s* %e, i32 0, i32 0
  %LineTo = getelementptr inbounds %struct.ttfExport_s, %struct.ttfExport_s* %super11, i32 0, i32 3
  store void (%struct.ttfExport_s*, %struct.FloatPoint*)* @gx_ttfExport__LineTo, void (%struct.ttfExport_s*, %struct.FloatPoint*)** %LineTo, align 8, !tbaa !103
  %super12 = getelementptr inbounds %struct.gx_ttfExport_s, %struct.gx_ttfExport_s* %e, i32 0, i32 0
  %CurveTo = getelementptr inbounds %struct.ttfExport_s, %struct.ttfExport_s* %super12, i32 0, i32 4
  store void (%struct.ttfExport_s*, %struct.FloatPoint*, %struct.FloatPoint*, %struct.FloatPoint*)* @gx_ttfExport__CurveTo, void (%struct.ttfExport_s*, %struct.FloatPoint*, %struct.FloatPoint*, %struct.FloatPoint*)** %CurveTo, align 8, !tbaa !104
  %super13 = getelementptr inbounds %struct.gx_ttfExport_s, %struct.gx_ttfExport_s* %e, i32 0, i32 0
  %Close = getelementptr inbounds %struct.ttfExport_s, %struct.ttfExport_s* %super13, i32 0, i32 5
  store void (%struct.ttfExport_s*)* @gx_ttfExport__Close, void (%struct.ttfExport_s*)** %Close, align 8, !tbaa !105
  %super14 = getelementptr inbounds %struct.gx_ttfExport_s, %struct.gx_ttfExport_s* %e, i32 0, i32 0
  %Point = getelementptr inbounds %struct.ttfExport_s, %struct.ttfExport_s* %super14, i32 0, i32 6
  store void (%struct.ttfExport_s*, %struct.FloatPoint*, i32, i32)* @gx_ttfExport__Point, void (%struct.ttfExport_s*, %struct.FloatPoint*, i32, i32)** %Point, align 8, !tbaa !106
  %super15 = getelementptr inbounds %struct.gx_ttfExport_s, %struct.gx_ttfExport_s* %e, i32 0, i32 0
  %SetWidth = getelementptr inbounds %struct.ttfExport_s, %struct.ttfExport_s* %super15, i32 0, i32 7
  store void (%struct.ttfExport_s*, %struct.FloatPoint*)* @gx_ttfExport__SetWidth, void (%struct.ttfExport_s*, %struct.FloatPoint*)** %SetWidth, align 8, !tbaa !107
  %super16 = getelementptr inbounds %struct.gx_ttfExport_s, %struct.gx_ttfExport_s* %e, i32 0, i32 0
  %DebugPaint = getelementptr inbounds %struct.ttfExport_s, %struct.ttfExport_s* %super16, i32 0, i32 8
  store void (%struct.ttfExport_s*)* @gx_ttfExport__DebugPaint, void (%struct.ttfExport_s*)** %DebugPaint, align 8, !tbaa !108
  %error = getelementptr inbounds %struct.gx_ttfExport_s, %struct.gx_ttfExport_s* %e, i32 0, i32 3
  store i32 0, i32* %error, align 4, !tbaa !109
  %24 = load %struct.gx_path_s*, %struct.gx_path_s** %path.addr, align 8, !tbaa !1
  %path17 = getelementptr inbounds %struct.gx_ttfExport_s, %struct.gx_ttfExport_s* %e, i32 0, i32 1
  store %struct.gx_path_s* %24, %struct.gx_path_s** %path17, align 8, !tbaa !110
  %w = getelementptr inbounds %struct.gx_ttfExport_s, %struct.gx_ttfExport_s* %e, i32 0, i32 2
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %w, i32 0, i32 0
  store i32 0, i32* %x, align 4, !tbaa !111
  %w18 = getelementptr inbounds %struct.gx_ttfExport_s, %struct.gx_ttfExport_s* %e, i32 0, i32 2
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %w18, i32 0, i32 1
  store i32 0, i32* %y, align 4, !tbaa !112
  %25 = load i32, i32* %auth, align 4, !tbaa !5
  %monotonize = getelementptr inbounds %struct.gx_ttfExport_s, %struct.gx_ttfExport_s* %e, i32 0, i32 4
  store i32 %25, i32* %monotonize, align 4, !tbaa !113
  %26 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r.addr, align 8, !tbaa !1
  call void @gx_ttfReader__Reset(%struct.gx_ttfReader_s* %26) #6
  %27 = load %struct.ttfFont_s*, %struct.ttfFont_s** %ttf.addr, align 8, !tbaa !1
  %28 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r.addr, align 8, !tbaa !1
  %super19 = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %28, i32 0, i32 0
  %super20 = getelementptr inbounds %struct.gx_ttfExport_s, %struct.gx_ttfExport_s* %e, i32 0, i32 0
  %29 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %WMode = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %29, i32 0, i32 16
  %30 = load i32, i32* %WMode, align 4, !tbaa !114
  %cmp = icmp ne i32 %30, 0
  %conv21 = zext i1 %cmp to i32
  call void @ttfOutliner__init(%struct.ttfOutliner* %o, %struct.ttfFont_s* %27, %struct.ttfReader_s* %super19, %struct.ttfExport_s* %super20, i32 1, i32 0, i32 %conv21) #6
  %31 = load i32, i32* %glyph_index.addr, align 4, !tbaa !5
  %x22 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %subpix_origin, i32 0, i32 0
  %32 = load double, double* %x22, align 8, !tbaa !69
  %conv23 = fptrunc double %32 to float
  %y24 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %subpix_origin, i32 0, i32 1
  %33 = load double, double* %y24, align 8, !tbaa !70
  %conv25 = fptrunc double %33 to float
  %call26 = call i32 @ttfOutliner__Outline(%struct.ttfOutliner* %o, i32 %31, float %conv23, float %conv25, %struct.FloatMatrix* %m1) #6
  switch i32 %call26, label %sw.default [
    i32 9, label %sw.bb
    i32 8, label %sw.bb.27
    i32 0, label %sw.bb.34
    i32 3, label %sw.bb.50
    i32 4, label %sw.bb.51
  ]

sw.bb:                                            ; preds = %entry
  %34 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %35 = load i32, i32* %glyph_index.addr, align 4, !tbaa !5
  call void @WarnBadInstruction(%struct.gs_font_type42_s* %34, i32 %35) #6
  br label %recover

sw.bb.27:                                         ; preds = %entry
  %36 = load i32, i32* %auth, align 4, !tbaa !5
  %tobool = icmp ne i32 %36, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb.27
  %37 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %38 = load %struct.ttfFont_s*, %struct.ttfFont_s** %ttf.addr, align 8, !tbaa !1
  call void @WarnPatented(%struct.gs_font_type42_s* %37, %struct.ttfFont_s* %38, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0)) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.27
  br label %recover

recover:                                          ; preds = %if.end, %sw.bb
  %39 = load i32, i32* %design_grid.addr, align 4, !tbaa !5
  %tobool28 = icmp ne i32 %39, 0
  br i1 %tobool28, label %if.end.33, label %land.lhs.true

land.lhs.true:                                    ; preds = %recover
  %40 = load i32, i32* %auth, align 4, !tbaa !5
  %tobool29 = icmp ne i32 %40, 0
  br i1 %tobool29, label %if.then.30, label %if.end.33

if.then.30:                                       ; preds = %land.lhs.true
  %41 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %dir31 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %41, i32 0, i32 3
  %42 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir31, align 8, !tbaa !77
  %san = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %42, i32 0, i32 15
  %43 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %san, align 8, !tbaa !115
  %44 = load %struct.gx_path_s*, %struct.gx_path_s** %path.addr, align 8, !tbaa !1
  %45 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %46 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %pscale.addr, align 8, !tbaa !1
  %call32 = call i32 @grid_fit(%struct.gx_device_spot_analyzer_s* %43, %struct.gx_path_s* %44, %struct.gs_font_type42_s* %45, %struct.gs_log2_scale_point_s* %46, %struct.gx_ttfExport_s* %e, %struct.ttfOutliner* %o) #6
  store i32 %call32, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.59

if.end.33:                                        ; preds = %land.lhs.true, %recover
  br label %sw.bb.34

sw.bb.34:                                         ; preds = %entry, %if.end.33
  %47 = load i32, i32* %design_grid.addr, align 4, !tbaa !5
  %tobool35 = icmp ne i32 %47, 0
  br i1 %tobool35, label %if.end.44, label %land.lhs.true.36

land.lhs.true.36:                                 ; preds = %sw.bb.34
  %48 = load i32, i32* %ttin, align 4, !tbaa !5
  %tobool37 = icmp ne i32 %48, 0
  br i1 %tobool37, label %if.end.44, label %land.lhs.true.38

land.lhs.true.38:                                 ; preds = %land.lhs.true.36
  %49 = load i32, i32* %auth, align 4, !tbaa !5
  %tobool39 = icmp ne i32 %49, 0
  br i1 %tobool39, label %if.then.40, label %if.end.44

if.then.40:                                       ; preds = %land.lhs.true.38
  %50 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %dir41 = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %50, i32 0, i32 3
  %51 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir41, align 8, !tbaa !77
  %san42 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %51, i32 0, i32 15
  %52 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %san42, align 8, !tbaa !115
  %53 = load %struct.gx_path_s*, %struct.gx_path_s** %path.addr, align 8, !tbaa !1
  %54 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %55 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %pscale.addr, align 8, !tbaa !1
  %call43 = call i32 @grid_fit(%struct.gx_device_spot_analyzer_s* %52, %struct.gx_path_s* %53, %struct.gs_font_type42_s* %54, %struct.gs_log2_scale_point_s* %55, %struct.gx_ttfExport_s* %e, %struct.ttfOutliner* %o) #6
  store i32 %call43, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.59

if.end.44:                                        ; preds = %land.lhs.true.38, %land.lhs.true.36, %sw.bb.34
  call void @ttfOutliner__DrawGlyphOutline(%struct.ttfOutliner* %o) #6
  %error45 = getelementptr inbounds %struct.gx_ttfExport_s, %struct.gx_ttfExport_s* %e, i32 0, i32 3
  %56 = load i32, i32* %error45, align 4, !tbaa !109
  %tobool46 = icmp ne i32 %56, 0
  br i1 %tobool46, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %if.end.44
  %error48 = getelementptr inbounds %struct.gx_ttfExport_s, %struct.gx_ttfExport_s* %e, i32 0, i32 3
  %57 = load i32, i32* %error48, align 4, !tbaa !109
  store i32 %57, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.59

if.end.49:                                        ; preds = %if.end.44
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.59

sw.bb.50:                                         ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.59

sw.bb.51:                                         ; preds = %entry
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.59

sw.default:                                       ; preds = %entry
  %58 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %58) #1
  %59 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r.addr, align 8, !tbaa !1
  %super52 = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %59, i32 0, i32 0
  %Error = getelementptr inbounds %struct.ttfReader_s, %struct.ttfReader_s* %super52, i32 0, i32 4
  %60 = load i32 (%struct.ttfReader_s*)*, i32 (%struct.ttfReader_s*)** %Error, align 8, !tbaa !23
  %61 = load %struct.gx_ttfReader_s*, %struct.gx_ttfReader_s** %r.addr, align 8, !tbaa !1
  %super53 = getelementptr inbounds %struct.gx_ttfReader_s, %struct.gx_ttfReader_s* %61, i32 0, i32 0
  %call54 = call i32 %60(%struct.ttfReader_s* %super53) #6
  store i32 %call54, i32* %code, align 4, !tbaa !5
  %62 = load i32, i32* %code, align 4, !tbaa !5
  %cmp55 = icmp slt i32 %62, 0
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %sw.default
  %63 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %63, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.58:                                        ; preds = %sw.default
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.58, %if.then.57
  %64 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  br label %cleanup.59

cleanup.59:                                       ; preds = %cleanup, %sw.bb.51, %sw.bb.50, %if.end.49, %if.then.47, %if.then.40, %if.then.30
  %65 = bitcast i32* %auth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast i32* %ttin to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast i32* %gftt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = bitcast i32* %dg to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = bitcast %struct.FloatMatrix* %m1 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %69) #1
  %70 = bitcast %struct.gs_matrix_s* %post_transform to i8*
  call void @llvm.lifetime.end(i64 24, i8* %70) #1
  %71 = bitcast %struct.gs_point_s* %subpix_origin to i8*
  call void @llvm.lifetime.end(i64 16, i8* %71) #1
  %72 = bitcast %struct.gs_point_s* %char_size to i8*
  call void @llvm.lifetime.end(i64 16, i8* %72) #1
  %73 = bitcast %struct.ttfOutliner* %o to i8*
  call void @llvm.lifetime.end(i64 144, i8* %73) #1
  %74 = bitcast %struct.gx_ttfExport_s* %e to i8*
  call void @llvm.lifetime.end(i64 88, i8* %74) #1
  %75 = load i32, i32* %retval
  ret i32 %75
}

declare i32 @gs_currentgridfittt(%struct.gs_font_dir_s*) #3

; Function Attrs: nounwind uwtable
define internal void @gx_ttfExport__MoveTo(%struct.ttfExport_s* %self, %struct.FloatPoint* %p) #0 {
entry:
  %self.addr = alloca %struct.ttfExport_s*, align 8
  %p.addr = alloca %struct.FloatPoint*, align 8
  %e = alloca %struct.gx_ttfExport_s*, align 8
  store %struct.ttfExport_s* %self, %struct.ttfExport_s** %self.addr, align 8, !tbaa !1
  store %struct.FloatPoint* %p, %struct.FloatPoint** %p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_ttfExport_s** %e to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ttfExport_s*, %struct.ttfExport_s** %self.addr, align 8, !tbaa !1
  %2 = bitcast %struct.ttfExport_s* %1 to %struct.gx_ttfExport_s*
  store %struct.gx_ttfExport_s* %2, %struct.gx_ttfExport_s** %e, align 8, !tbaa !1
  %3 = load %struct.gx_ttfExport_s*, %struct.gx_ttfExport_s** %e, align 8, !tbaa !1
  %error = getelementptr inbounds %struct.gx_ttfExport_s, %struct.gx_ttfExport_s* %3, i32 0, i32 3
  %4 = load i32, i32* %error, align 4, !tbaa !109
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct.gx_ttfExport_s*, %struct.gx_ttfExport_s** %e, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gx_ttfExport_s, %struct.gx_ttfExport_s* %5, i32 0, i32 1
  %6 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !110
  %7 = load %struct.FloatPoint*, %struct.FloatPoint** %p.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.FloatPoint, %struct.FloatPoint* %7, i32 0, i32 0
  %8 = load double, double* %x, align 8, !tbaa !116
  %mul = fmul double %8, 2.560000e+02
  %conv = fptosi double %mul to i32
  %9 = load %struct.FloatPoint*, %struct.FloatPoint** %p.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.FloatPoint, %struct.FloatPoint* %9, i32 0, i32 1
  %10 = load double, double* %y, align 8, !tbaa !118
  %mul1 = fmul double %10, 2.560000e+02
  %conv2 = fptosi double %mul1 to i32
  %call = call i32 @gx_path_add_point(%struct.gx_path_s* %6, i32 %conv, i32 %conv2) #6
  %11 = load %struct.gx_ttfExport_s*, %struct.gx_ttfExport_s** %e, align 8, !tbaa !1
  %error3 = getelementptr inbounds %struct.gx_ttfExport_s, %struct.gx_ttfExport_s* %11, i32 0, i32 3
  store i32 %call, i32* %error3, align 4, !tbaa !109
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = bitcast %struct.gx_ttfExport_s** %e to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gx_ttfExport__LineTo(%struct.ttfExport_s* %self, %struct.FloatPoint* %p) #0 {
entry:
  %self.addr = alloca %struct.ttfExport_s*, align 8
  %p.addr = alloca %struct.FloatPoint*, align 8
  %e = alloca %struct.gx_ttfExport_s*, align 8
  store %struct.ttfExport_s* %self, %struct.ttfExport_s** %self.addr, align 8, !tbaa !1
  store %struct.FloatPoint* %p, %struct.FloatPoint** %p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_ttfExport_s** %e to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ttfExport_s*, %struct.ttfExport_s** %self.addr, align 8, !tbaa !1
  %2 = bitcast %struct.ttfExport_s* %1 to %struct.gx_ttfExport_s*
  store %struct.gx_ttfExport_s* %2, %struct.gx_ttfExport_s** %e, align 8, !tbaa !1
  %3 = load %struct.gx_ttfExport_s*, %struct.gx_ttfExport_s** %e, align 8, !tbaa !1
  %error = getelementptr inbounds %struct.gx_ttfExport_s, %struct.gx_ttfExport_s* %3, i32 0, i32 3
  %4 = load i32, i32* %error, align 4, !tbaa !109
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct.gx_ttfExport_s*, %struct.gx_ttfExport_s** %e, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gx_ttfExport_s, %struct.gx_ttfExport_s* %5, i32 0, i32 1
  %6 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !110
  %7 = load %struct.FloatPoint*, %struct.FloatPoint** %p.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.FloatPoint, %struct.FloatPoint* %7, i32 0, i32 0
  %8 = load double, double* %x, align 8, !tbaa !116
  %mul = fmul double %8, 2.560000e+02
  %conv = fptosi double %mul to i32
  %9 = load %struct.FloatPoint*, %struct.FloatPoint** %p.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.FloatPoint, %struct.FloatPoint* %9, i32 0, i32 1
  %10 = load double, double* %y, align 8, !tbaa !118
  %mul1 = fmul double %10, 2.560000e+02
  %conv2 = fptosi double %mul1 to i32
  %call = call i32 @gx_path_add_line_notes(%struct.gx_path_s* %6, i32 %conv, i32 %conv2, i32 0) #6
  %11 = load %struct.gx_ttfExport_s*, %struct.gx_ttfExport_s** %e, align 8, !tbaa !1
  %error3 = getelementptr inbounds %struct.gx_ttfExport_s, %struct.gx_ttfExport_s* %11, i32 0, i32 3
  store i32 %call, i32* %error3, align 4, !tbaa !109
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = bitcast %struct.gx_ttfExport_s** %e to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gx_ttfExport__CurveTo(%struct.ttfExport_s* %self, %struct.FloatPoint* %p0, %struct.FloatPoint* %p1, %struct.FloatPoint* %p2) #0 {
entry:
  %self.addr = alloca %struct.ttfExport_s*, align 8
  %p0.addr = alloca %struct.FloatPoint*, align 8
  %p1.addr = alloca %struct.FloatPoint*, align 8
  %p2.addr = alloca %struct.FloatPoint*, align 8
  %e = alloca %struct.gx_ttfExport_s*, align 8
  %s = alloca %struct.curve_segment, align 8
  store %struct.ttfExport_s* %self, %struct.ttfExport_s** %self.addr, align 8, !tbaa !1
  store %struct.FloatPoint* %p0, %struct.FloatPoint** %p0.addr, align 8, !tbaa !1
  store %struct.FloatPoint* %p1, %struct.FloatPoint** %p1.addr, align 8, !tbaa !1
  store %struct.FloatPoint* %p2, %struct.FloatPoint** %p2.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_ttfExport_s** %e to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ttfExport_s*, %struct.ttfExport_s** %self.addr, align 8, !tbaa !1
  %2 = bitcast %struct.ttfExport_s* %1 to %struct.gx_ttfExport_s*
  store %struct.gx_ttfExport_s* %2, %struct.gx_ttfExport_s** %e, align 8, !tbaa !1
  %3 = load %struct.gx_ttfExport_s*, %struct.gx_ttfExport_s** %e, align 8, !tbaa !1
  %error = getelementptr inbounds %struct.gx_ttfExport_s, %struct.gx_ttfExport_s* %3, i32 0, i32 3
  %4 = load i32, i32* %error, align 4, !tbaa !109
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end.50, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct.gx_ttfExport_s*, %struct.gx_ttfExport_s** %e, align 8, !tbaa !1
  %monotonize = getelementptr inbounds %struct.gx_ttfExport_s, %struct.gx_ttfExport_s* %5, i32 0, i32 4
  %6 = load i32, i32* %monotonize, align 4, !tbaa !113
  %tobool1 = icmp ne i32 %6, 0
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %7 = bitcast %struct.curve_segment* %s to i8*
  call void @llvm.lifetime.start(i64 48, i8* %7) #1
  %notes = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %s, i32 0, i32 3
  store i16 0, i16* %notes, align 2, !tbaa !119
  %8 = load %struct.FloatPoint*, %struct.FloatPoint** %p0.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.FloatPoint, %struct.FloatPoint* %8, i32 0, i32 0
  %9 = load double, double* %x, align 8, !tbaa !116
  %mul = fmul double %9, 2.560000e+02
  %conv = fptosi double %mul to i32
  %p13 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %s, i32 0, i32 5
  %x4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p13, i32 0, i32 0
  store i32 %conv, i32* %x4, align 4, !tbaa !121
  %10 = load %struct.FloatPoint*, %struct.FloatPoint** %p0.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.FloatPoint, %struct.FloatPoint* %10, i32 0, i32 1
  %11 = load double, double* %y, align 8, !tbaa !118
  %mul5 = fmul double %11, 2.560000e+02
  %conv6 = fptosi double %mul5 to i32
  %p17 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %s, i32 0, i32 5
  %y8 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p17, i32 0, i32 1
  store i32 %conv6, i32* %y8, align 4, !tbaa !122
  %12 = load %struct.FloatPoint*, %struct.FloatPoint** %p1.addr, align 8, !tbaa !1
  %x9 = getelementptr inbounds %struct.FloatPoint, %struct.FloatPoint* %12, i32 0, i32 0
  %13 = load double, double* %x9, align 8, !tbaa !116
  %mul10 = fmul double %13, 2.560000e+02
  %conv11 = fptosi double %mul10 to i32
  %p212 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %s, i32 0, i32 6
  %x13 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p212, i32 0, i32 0
  store i32 %conv11, i32* %x13, align 4, !tbaa !123
  %14 = load %struct.FloatPoint*, %struct.FloatPoint** %p1.addr, align 8, !tbaa !1
  %y14 = getelementptr inbounds %struct.FloatPoint, %struct.FloatPoint* %14, i32 0, i32 1
  %15 = load double, double* %y14, align 8, !tbaa !118
  %mul15 = fmul double %15, 2.560000e+02
  %conv16 = fptosi double %mul15 to i32
  %p217 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %s, i32 0, i32 6
  %y18 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p217, i32 0, i32 1
  store i32 %conv16, i32* %y18, align 4, !tbaa !124
  %16 = load %struct.FloatPoint*, %struct.FloatPoint** %p2.addr, align 8, !tbaa !1
  %x19 = getelementptr inbounds %struct.FloatPoint, %struct.FloatPoint* %16, i32 0, i32 0
  %17 = load double, double* %x19, align 8, !tbaa !116
  %mul20 = fmul double %17, 2.560000e+02
  %conv21 = fptosi double %mul20 to i32
  %pt = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %s, i32 0, i32 4
  %x22 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 0
  store i32 %conv21, i32* %x22, align 4, !tbaa !125
  %18 = load %struct.FloatPoint*, %struct.FloatPoint** %p2.addr, align 8, !tbaa !1
  %y23 = getelementptr inbounds %struct.FloatPoint, %struct.FloatPoint* %18, i32 0, i32 1
  %19 = load double, double* %y23, align 8, !tbaa !118
  %mul24 = fmul double %19, 2.560000e+02
  %conv25 = fptosi double %mul24 to i32
  %pt26 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %s, i32 0, i32 4
  %y27 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt26, i32 0, i32 1
  store i32 %conv25, i32* %y27, align 4, !tbaa !126
  %20 = load %struct.gx_ttfExport_s*, %struct.gx_ttfExport_s** %e, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gx_ttfExport_s, %struct.gx_ttfExport_s* %20, i32 0, i32 1
  %21 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !110
  %call = call i32 @gx_curve_monotonize(%struct.gx_path_s* %21, %struct.curve_segment* %s) #6
  %22 = load %struct.gx_ttfExport_s*, %struct.gx_ttfExport_s** %e, align 8, !tbaa !1
  %error28 = getelementptr inbounds %struct.gx_ttfExport_s, %struct.gx_ttfExport_s* %22, i32 0, i32 3
  store i32 %call, i32* %error28, align 4, !tbaa !109
  %23 = bitcast %struct.curve_segment* %s to i8*
  call void @llvm.lifetime.end(i64 48, i8* %23) #1
  br label %if.end

if.else:                                          ; preds = %if.then
  %24 = load %struct.gx_ttfExport_s*, %struct.gx_ttfExport_s** %e, align 8, !tbaa !1
  %path29 = getelementptr inbounds %struct.gx_ttfExport_s, %struct.gx_ttfExport_s* %24, i32 0, i32 1
  %25 = load %struct.gx_path_s*, %struct.gx_path_s** %path29, align 8, !tbaa !110
  %26 = load %struct.FloatPoint*, %struct.FloatPoint** %p0.addr, align 8, !tbaa !1
  %x30 = getelementptr inbounds %struct.FloatPoint, %struct.FloatPoint* %26, i32 0, i32 0
  %27 = load double, double* %x30, align 8, !tbaa !116
  %mul31 = fmul double %27, 2.560000e+02
  %conv32 = fptosi double %mul31 to i32
  %28 = load %struct.FloatPoint*, %struct.FloatPoint** %p0.addr, align 8, !tbaa !1
  %y33 = getelementptr inbounds %struct.FloatPoint, %struct.FloatPoint* %28, i32 0, i32 1
  %29 = load double, double* %y33, align 8, !tbaa !118
  %mul34 = fmul double %29, 2.560000e+02
  %conv35 = fptosi double %mul34 to i32
  %30 = load %struct.FloatPoint*, %struct.FloatPoint** %p1.addr, align 8, !tbaa !1
  %x36 = getelementptr inbounds %struct.FloatPoint, %struct.FloatPoint* %30, i32 0, i32 0
  %31 = load double, double* %x36, align 8, !tbaa !116
  %mul37 = fmul double %31, 2.560000e+02
  %conv38 = fptosi double %mul37 to i32
  %32 = load %struct.FloatPoint*, %struct.FloatPoint** %p1.addr, align 8, !tbaa !1
  %y39 = getelementptr inbounds %struct.FloatPoint, %struct.FloatPoint* %32, i32 0, i32 1
  %33 = load double, double* %y39, align 8, !tbaa !118
  %mul40 = fmul double %33, 2.560000e+02
  %conv41 = fptosi double %mul40 to i32
  %34 = load %struct.FloatPoint*, %struct.FloatPoint** %p2.addr, align 8, !tbaa !1
  %x42 = getelementptr inbounds %struct.FloatPoint, %struct.FloatPoint* %34, i32 0, i32 0
  %35 = load double, double* %x42, align 8, !tbaa !116
  %mul43 = fmul double %35, 2.560000e+02
  %conv44 = fptosi double %mul43 to i32
  %36 = load %struct.FloatPoint*, %struct.FloatPoint** %p2.addr, align 8, !tbaa !1
  %y45 = getelementptr inbounds %struct.FloatPoint, %struct.FloatPoint* %36, i32 0, i32 1
  %37 = load double, double* %y45, align 8, !tbaa !118
  %mul46 = fmul double %37, 2.560000e+02
  %conv47 = fptosi double %mul46 to i32
  %call48 = call i32 @gx_path_add_curve_notes(%struct.gx_path_s* %25, i32 %conv32, i32 %conv35, i32 %conv38, i32 %conv41, i32 %conv44, i32 %conv47, i32 0) #6
  %38 = load %struct.gx_ttfExport_s*, %struct.gx_ttfExport_s** %e, align 8, !tbaa !1
  %error49 = getelementptr inbounds %struct.gx_ttfExport_s, %struct.gx_ttfExport_s* %38, i32 0, i32 3
  store i32 %call48, i32* %error49, align 4, !tbaa !109
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  br label %if.end.50

if.end.50:                                        ; preds = %if.end, %entry
  %39 = bitcast %struct.gx_ttfExport_s** %e to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gx_ttfExport__Close(%struct.ttfExport_s* %self) #0 {
entry:
  %self.addr = alloca %struct.ttfExport_s*, align 8
  %e = alloca %struct.gx_ttfExport_s*, align 8
  store %struct.ttfExport_s* %self, %struct.ttfExport_s** %self.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_ttfExport_s** %e to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ttfExport_s*, %struct.ttfExport_s** %self.addr, align 8, !tbaa !1
  %2 = bitcast %struct.ttfExport_s* %1 to %struct.gx_ttfExport_s*
  store %struct.gx_ttfExport_s* %2, %struct.gx_ttfExport_s** %e, align 8, !tbaa !1
  %3 = load %struct.gx_ttfExport_s*, %struct.gx_ttfExport_s** %e, align 8, !tbaa !1
  %error = getelementptr inbounds %struct.gx_ttfExport_s, %struct.gx_ttfExport_s* %3, i32 0, i32 3
  %4 = load i32, i32* %error, align 4, !tbaa !109
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct.gx_ttfExport_s*, %struct.gx_ttfExport_s** %e, align 8, !tbaa !1
  %path = getelementptr inbounds %struct.gx_ttfExport_s, %struct.gx_ttfExport_s* %5, i32 0, i32 1
  %6 = load %struct.gx_path_s*, %struct.gx_path_s** %path, align 8, !tbaa !110
  %call = call i32 @gx_path_close_subpath_notes(%struct.gx_path_s* %6, i32 0) #6
  %7 = load %struct.gx_ttfExport_s*, %struct.gx_ttfExport_s** %e, align 8, !tbaa !1
  %error1 = getelementptr inbounds %struct.gx_ttfExport_s, %struct.gx_ttfExport_s* %7, i32 0, i32 3
  store i32 %call, i32* %error1, align 4, !tbaa !109
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = bitcast %struct.gx_ttfExport_s** %e to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gx_ttfExport__Point(%struct.ttfExport_s* %self, %struct.FloatPoint* %p, i32 %bOnCurve, i32 %bNewPath) #0 {
entry:
  %self.addr = alloca %struct.ttfExport_s*, align 8
  %p.addr = alloca %struct.FloatPoint*, align 8
  %bOnCurve.addr = alloca i32, align 4
  %bNewPath.addr = alloca i32, align 4
  store %struct.ttfExport_s* %self, %struct.ttfExport_s** %self.addr, align 8, !tbaa !1
  store %struct.FloatPoint* %p, %struct.FloatPoint** %p.addr, align 8, !tbaa !1
  store i32 %bOnCurve, i32* %bOnCurve.addr, align 4, !tbaa !5
  store i32 %bNewPath, i32* %bNewPath.addr, align 4, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gx_ttfExport__SetWidth(%struct.ttfExport_s* %self, %struct.FloatPoint* %p) #0 {
entry:
  %self.addr = alloca %struct.ttfExport_s*, align 8
  %p.addr = alloca %struct.FloatPoint*, align 8
  %e = alloca %struct.gx_ttfExport_s*, align 8
  store %struct.ttfExport_s* %self, %struct.ttfExport_s** %self.addr, align 8, !tbaa !1
  store %struct.FloatPoint* %p, %struct.FloatPoint** %p.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_ttfExport_s** %e to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.ttfExport_s*, %struct.ttfExport_s** %self.addr, align 8, !tbaa !1
  %2 = bitcast %struct.ttfExport_s* %1 to %struct.gx_ttfExport_s*
  store %struct.gx_ttfExport_s* %2, %struct.gx_ttfExport_s** %e, align 8, !tbaa !1
  %3 = load %struct.FloatPoint*, %struct.FloatPoint** %p.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.FloatPoint, %struct.FloatPoint* %3, i32 0, i32 0
  %4 = load double, double* %x, align 8, !tbaa !116
  %mul = fmul double %4, 2.560000e+02
  %conv = fptosi double %mul to i32
  %5 = load %struct.gx_ttfExport_s*, %struct.gx_ttfExport_s** %e, align 8, !tbaa !1
  %w = getelementptr inbounds %struct.gx_ttfExport_s, %struct.gx_ttfExport_s* %5, i32 0, i32 2
  %x1 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %w, i32 0, i32 0
  store i32 %conv, i32* %x1, align 4, !tbaa !111
  %6 = load %struct.FloatPoint*, %struct.FloatPoint** %p.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.FloatPoint, %struct.FloatPoint* %6, i32 0, i32 1
  %7 = load double, double* %y, align 8, !tbaa !118
  %mul2 = fmul double %7, 2.560000e+02
  %conv3 = fptosi double %mul2 to i32
  %8 = load %struct.gx_ttfExport_s*, %struct.gx_ttfExport_s** %e, align 8, !tbaa !1
  %w4 = getelementptr inbounds %struct.gx_ttfExport_s, %struct.gx_ttfExport_s* %8, i32 0, i32 2
  %y5 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %w4, i32 0, i32 1
  store i32 %conv3, i32* %y5, align 4, !tbaa !112
  %9 = bitcast %struct.gx_ttfExport_s** %e to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gx_ttfExport__DebugPaint(%struct.ttfExport_s* %self) #0 {
entry:
  %self.addr = alloca %struct.ttfExport_s*, align 8
  store %struct.ttfExport_s* %self, %struct.ttfExport_s** %self.addr, align 8, !tbaa !1
  ret void
}

declare void @ttfOutliner__init(%struct.ttfOutliner*, %struct.ttfFont_s*, %struct.ttfReader_s*, %struct.ttfExport_s*, i32, i32, i32) #3

declare i32 @ttfOutliner__Outline(%struct.ttfOutliner*, i32, float, float, %struct.FloatMatrix*) #3

; Function Attrs: nounwind uwtable
define internal i32 @grid_fit(%struct.gx_device_spot_analyzer_s* %padev, %struct.gx_path_s* %path, %struct.gs_font_type42_s* %pfont, %struct.gs_log2_scale_point_s* %pscale, %struct.gx_ttfExport_s* %e, %struct.ttfOutliner* %o) #0 {
entry:
  %retval = alloca i32, align 4
  %padev.addr = alloca %struct.gx_device_spot_analyzer_s*, align 8
  %path.addr = alloca %struct.gx_path_s*, align 8
  %pfont.addr = alloca %struct.gs_font_type42_s*, align 8
  %pscale.addr = alloca %struct.gs_log2_scale_point_s*, align 8
  %e.addr = alloca %struct.gx_ttfExport_s*, align 8
  %o.addr = alloca %struct.ttfOutliner*, align 8
  %is_stub = alloca %struct.gs_imager_state_s, align 8
  %params = alloca %struct.gx_fill_params_s, align 4
  %devc_stub = alloca %struct.gx_device_color_s, align 8
  %code = alloca i32, align 4
  %h = alloca %struct.t1_hinter_aux, align 8
  %m = alloca %struct.gs_matrix_s, align 4
  %fm = alloca %struct.gs_matrix_s, align 4
  %fmb = alloca %struct.gs_matrix_s, align 4
  %ctm_temp = alloca %struct.gs_matrix_fixed_s, align 4
  %atp = alloca i32, align 4
  %FontType = alloca i32, align 4
  %sbx = alloca i32, align 4
  %sby = alloca i32, align 4
  %scale = alloca double, align 8
  %bbox = alloca %struct.gs_fixed_rect_s, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_spot_analyzer_s* %padev, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %path, %struct.gx_path_s** %path.addr, align 8, !tbaa !1
  store %struct.gs_font_type42_s* %pfont, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  store %struct.gs_log2_scale_point_s* %pscale, %struct.gs_log2_scale_point_s** %pscale.addr, align 8, !tbaa !1
  store %struct.gx_ttfExport_s* %e, %struct.gx_ttfExport_s** %e.addr, align 8, !tbaa !1
  store %struct.ttfOutliner* %o, %struct.ttfOutliner** %o.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_imager_state_s* %is_stub to i8*
  call void @llvm.lifetime.start(i64 1616, i8* %0) #1
  %1 = bitcast %struct.gx_fill_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #1
  %2 = bitcast %struct.gx_device_color_s* %devc_stub to i8*
  call void @llvm.lifetime.start(i64 656, i8* %2) #1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %struct.t1_hinter_aux* %h to i8*
  call void @llvm.lifetime.start(i64 9864, i8* %4) #1
  %5 = bitcast %struct.gs_matrix_s* %m to i8*
  call void @llvm.lifetime.start(i64 24, i8* %5) #1
  %6 = bitcast %struct.gs_matrix_s* %fm to i8*
  call void @llvm.lifetime.start(i64 24, i8* %6) #1
  %7 = bitcast %struct.gs_matrix_s* %fmb to i8*
  call void @llvm.lifetime.start(i64 24, i8* %7) #1
  %8 = bitcast %struct.gs_matrix_fixed_s* %ctm_temp to i8*
  call void @llvm.lifetime.start(i64 36, i8* %8) #1
  %9 = bitcast i32* %atp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %dir = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %10, i32 0, i32 3
  %11 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %dir, align 8, !tbaa !77
  %call = call i32 @gs_currentaligntopixels(%struct.gs_font_dir_s* %11) #6
  store i32 %call, i32* %atp, align 4, !tbaa !5
  %12 = bitcast i32* %FontType to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 1, i32* %FontType, align 4, !tbaa !5
  %13 = bitcast i32* %sbx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 0, i32* %sbx, align 4, !tbaa !5
  %14 = bitcast i32* %sby to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  store i32 0, i32* %sby, align 4, !tbaa !5
  %15 = bitcast double* %scale to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load %struct.ttfOutliner*, %struct.ttfOutliner** %o.addr, align 8, !tbaa !1
  %pFont = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %16, i32 0, i32 9
  %17 = load %struct.ttfFont_s*, %struct.ttfFont_s** %pFont, align 8, !tbaa !127
  %nUnitsPerEm = getelementptr inbounds %struct.ttfFont_s, %struct.ttfFont_s* %17, i32 0, i32 12
  %18 = load i16, i16* %nUnitsPerEm, align 2, !tbaa !130
  %conv = zext i16 %18 to i32
  %conv1 = sitofp i32 %conv to double
  %div = fdiv double 1.000000e+00, %conv1
  store double %div, double* %scale, align 8, !tbaa !131
  %19 = bitcast %struct.gs_fixed_rect_s* %bbox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %19) #1
  %20 = load %struct.ttfOutliner*, %struct.ttfOutliner** %o.addr, align 8, !tbaa !1
  %post_transform = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %20, i32 0, i32 11
  %a = getelementptr inbounds %struct.FloatMatrix, %struct.FloatMatrix* %post_transform, i32 0, i32 0
  %21 = load double, double* %a, align 8, !tbaa !132
  %conv2 = fptrunc double %21 to float
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %m, i32 0, i32 0
  store float %conv2, float* %xx, align 4, !tbaa !78
  %22 = load %struct.ttfOutliner*, %struct.ttfOutliner** %o.addr, align 8, !tbaa !1
  %post_transform3 = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %22, i32 0, i32 11
  %b = getelementptr inbounds %struct.FloatMatrix, %struct.FloatMatrix* %post_transform3, i32 0, i32 1
  %23 = load double, double* %b, align 8, !tbaa !133
  %conv4 = fptrunc double %23 to float
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %m, i32 0, i32 1
  store float %conv4, float* %xy, align 4, !tbaa !79
  %24 = load %struct.ttfOutliner*, %struct.ttfOutliner** %o.addr, align 8, !tbaa !1
  %post_transform5 = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %24, i32 0, i32 11
  %c = getelementptr inbounds %struct.FloatMatrix, %struct.FloatMatrix* %post_transform5, i32 0, i32 2
  %25 = load double, double* %c, align 8, !tbaa !134
  %conv6 = fptrunc double %25 to float
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %m, i32 0, i32 2
  store float %conv6, float* %yx, align 4, !tbaa !80
  %26 = load %struct.ttfOutliner*, %struct.ttfOutliner** %o.addr, align 8, !tbaa !1
  %post_transform7 = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %26, i32 0, i32 11
  %d = getelementptr inbounds %struct.FloatMatrix, %struct.FloatMatrix* %post_transform7, i32 0, i32 3
  %27 = load double, double* %d, align 8, !tbaa !135
  %conv8 = fptrunc double %27 to float
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %m, i32 0, i32 3
  store float %conv8, float* %yy, align 4, !tbaa !81
  %28 = load %struct.ttfOutliner*, %struct.ttfOutliner** %o.addr, align 8, !tbaa !1
  %post_transform9 = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %28, i32 0, i32 11
  %tx = getelementptr inbounds %struct.FloatMatrix, %struct.FloatMatrix* %post_transform9, i32 0, i32 4
  %29 = load double, double* %tx, align 8, !tbaa !136
  %conv10 = fptrunc double %29 to float
  %tx11 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %m, i32 0, i32 4
  store float %conv10, float* %tx11, align 4, !tbaa !82
  %30 = load %struct.ttfOutliner*, %struct.ttfOutliner** %o.addr, align 8, !tbaa !1
  %post_transform12 = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %30, i32 0, i32 11
  %ty = getelementptr inbounds %struct.FloatMatrix, %struct.FloatMatrix* %post_transform12, i32 0, i32 5
  %31 = load double, double* %ty, align 8, !tbaa !137
  %conv13 = fptrunc double %31 to float
  %ty14 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %m, i32 0, i32 5
  store float %conv13, float* %ty14, align 4, !tbaa !83
  %call15 = call i32 @gs_matrix_fixed_from_matrix(%struct.gs_matrix_fixed_s* %ctm_temp, %struct.gs_matrix_s* %m) #6
  store i32 %call15, i32* %code, align 4, !tbaa !5
  %32 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %32, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %33 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %34 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %FontMatrix = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %34, i32 0, i32 9
  %35 = load double, double* %scale, align 8, !tbaa !131
  %36 = load double, double* %scale, align 8, !tbaa !131
  %call17 = call i32 @gs_matrix_scale(%struct.gs_matrix_s* %FontMatrix, double %35, double %36, %struct.gs_matrix_s* %fm) #6
  store i32 %call17, i32* %code, align 4, !tbaa !5
  %37 = load i32, i32* %code, align 4, !tbaa !5
  %cmp18 = icmp slt i32 %37, 0
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end
  %38 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %38, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.end
  %39 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %base = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %39, i32 0, i32 7
  %40 = load %struct.gs_font_s*, %struct.gs_font_s** %base, align 8, !tbaa !84
  %FontMatrix22 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %40, i32 0, i32 9
  %41 = load double, double* %scale, align 8, !tbaa !131
  %42 = load double, double* %scale, align 8, !tbaa !131
  %call23 = call i32 @gs_matrix_scale(%struct.gs_matrix_s* %FontMatrix22, double %41, double %42, %struct.gs_matrix_s* %fmb) #6
  store i32 %call23, i32* %code, align 4, !tbaa !5
  %43 = load i32, i32* %code, align 4, !tbaa !5
  %cmp24 = icmp slt i32 %43, 0
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.21
  %44 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %44, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %if.end.21
  %super = getelementptr inbounds %struct.t1_hinter_aux, %struct.t1_hinter_aux* %h, i32 0, i32 0
  %45 = load %struct.gx_path_s*, %struct.gx_path_s** %path.addr, align 8, !tbaa !1
  call void @t1_hinter__init(%struct.t1_hinter_s* %super, %struct.gx_path_s* %45) #6
  %super28 = getelementptr inbounds %struct.t1_hinter_aux, %struct.t1_hinter_aux* %h, i32 0, i32 0
  %46 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %pscale.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %46, i32 0, i32 0
  %47 = load i32, i32* %x, align 4, !tbaa !74
  %48 = load %struct.gs_log2_scale_point_s*, %struct.gs_log2_scale_point_s** %pscale.addr, align 8, !tbaa !1
  %x29 = getelementptr inbounds %struct.gs_log2_scale_point_s, %struct.gs_log2_scale_point_s* %48, i32 0, i32 0
  %49 = load i32, i32* %x29, align 4, !tbaa !74
  %tx_fixed = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm_temp, i32 0, i32 6
  %50 = load i32, i32* %tx_fixed, align 4, !tbaa !138
  %ty_fixed = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %ctm_temp, i32 0, i32 7
  %51 = load i32, i32* %ty_fixed, align 4, !tbaa !140
  %52 = load i32, i32* %atp, align 4, !tbaa !5
  %call30 = call i32 @t1_hinter__set_mapping(%struct.t1_hinter_s* %super28, %struct.gs_matrix_fixed_s* %ctm_temp, %struct.gs_matrix_s* %fm, %struct.gs_matrix_s* %fmb, i32 %47, i32 %49, i32 0, i32 0, i32 %50, i32 %51, i32 %52) #6
  store i32 %call30, i32* %code, align 4, !tbaa !5
  %53 = load i32, i32* %code, align 4, !tbaa !5
  %cmp31 = icmp slt i32 %53, 0
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.27
  %54 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %54, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %if.end.27
  %super35 = getelementptr inbounds %struct.t1_hinter_aux, %struct.t1_hinter_aux* %h, i32 0, i32 0
  %disable_hinting = getelementptr inbounds %struct.t1_hinter_s, %struct.t1_hinter_s* %super35, i32 0, i32 25
  %55 = load i32, i32* %disable_hinting, align 4, !tbaa !141
  %tobool = icmp ne i32 %55, 0
  br i1 %tobool, label %if.else, label %if.then.36

if.then.36:                                       ; preds = %if.end.34
  %56 = load %struct.ttfOutliner*, %struct.ttfOutliner** %o.addr, align 8, !tbaa !1
  %post_transform37 = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %56, i32 0, i32 11
  %d38 = getelementptr inbounds %struct.FloatMatrix, %struct.FloatMatrix* %post_transform37, i32 0, i32 3
  store double 1.000000e+00, double* %d38, align 8, !tbaa !135
  %57 = load %struct.ttfOutliner*, %struct.ttfOutliner** %o.addr, align 8, !tbaa !1
  %post_transform39 = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %57, i32 0, i32 11
  %a40 = getelementptr inbounds %struct.FloatMatrix, %struct.FloatMatrix* %post_transform39, i32 0, i32 0
  store double 1.000000e+00, double* %a40, align 8, !tbaa !132
  %58 = load %struct.ttfOutliner*, %struct.ttfOutliner** %o.addr, align 8, !tbaa !1
  %post_transform41 = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %58, i32 0, i32 11
  %c42 = getelementptr inbounds %struct.FloatMatrix, %struct.FloatMatrix* %post_transform41, i32 0, i32 2
  store double 0.000000e+00, double* %c42, align 8, !tbaa !134
  %59 = load %struct.ttfOutliner*, %struct.ttfOutliner** %o.addr, align 8, !tbaa !1
  %post_transform43 = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %59, i32 0, i32 11
  %b44 = getelementptr inbounds %struct.FloatMatrix, %struct.FloatMatrix* %post_transform43, i32 0, i32 1
  store double 0.000000e+00, double* %b44, align 8, !tbaa !133
  %60 = load %struct.ttfOutliner*, %struct.ttfOutliner** %o.addr, align 8, !tbaa !1
  %post_transform45 = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %60, i32 0, i32 11
  %ty46 = getelementptr inbounds %struct.FloatMatrix, %struct.FloatMatrix* %post_transform45, i32 0, i32 5
  store double 0.000000e+00, double* %ty46, align 8, !tbaa !137
  %61 = load %struct.ttfOutliner*, %struct.ttfOutliner** %o.addr, align 8, !tbaa !1
  %post_transform47 = getelementptr inbounds %struct.ttfOutliner, %struct.ttfOutliner* %61, i32 0, i32 11
  %tx48 = getelementptr inbounds %struct.FloatMatrix, %struct.FloatMatrix* %post_transform47, i32 0, i32 4
  store double 0.000000e+00, double* %tx48, align 8, !tbaa !136
  %62 = load %struct.ttfOutliner*, %struct.ttfOutliner** %o.addr, align 8, !tbaa !1
  call void @ttfOutliner__DrawGlyphOutline(%struct.ttfOutliner* %62) #6
  %63 = load %struct.gx_ttfExport_s*, %struct.gx_ttfExport_s** %e.addr, align 8, !tbaa !1
  %error = getelementptr inbounds %struct.gx_ttfExport_s, %struct.gx_ttfExport_s* %63, i32 0, i32 3
  %64 = load i32, i32* %error, align 4, !tbaa !109
  %tobool49 = icmp ne i32 %64, 0
  br i1 %tobool49, label %if.then.50, label %if.end.52

if.then.50:                                       ; preds = %if.then.36
  %65 = load %struct.gx_ttfExport_s*, %struct.gx_ttfExport_s** %e.addr, align 8, !tbaa !1
  %error51 = getelementptr inbounds %struct.gx_ttfExport_s, %struct.gx_ttfExport_s* %65, i32 0, i32 3
  %66 = load i32, i32* %error51, align 4, !tbaa !109
  store i32 %66, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.52:                                        ; preds = %if.then.36
  %super53 = getelementptr inbounds %struct.t1_hinter_aux, %struct.t1_hinter_aux* %h, i32 0, i32 0
  %67 = load i32, i32* %FontType, align 4, !tbaa !5
  %68 = load %struct.gs_font_type42_s*, %struct.gs_font_type42_s** %pfont.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type42_s, %struct.gs_font_type42_s* %68, i32 0, i32 29
  %call54 = call i32 @t1_hinter__set_font42_data(%struct.t1_hinter_s* %super53, i32 %67, %struct.gs_type42_data_s* %data, i32 0) #6
  store i32 %call54, i32* %code, align 4, !tbaa !5
  %69 = load i32, i32* %code, align 4, !tbaa !5
  %cmp55 = icmp slt i32 %69, 0
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.end.52
  %70 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %70, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.58:                                        ; preds = %if.end.52
  %super59 = getelementptr inbounds %struct.t1_hinter_aux, %struct.t1_hinter_aux* %h, i32 0, i32 0
  %71 = load i32, i32* %sbx, align 4, !tbaa !5
  %72 = load i32, i32* %sby, align 4, !tbaa !5
  %73 = load %struct.gx_ttfExport_s*, %struct.gx_ttfExport_s** %e.addr, align 8, !tbaa !1
  %w = getelementptr inbounds %struct.gx_ttfExport_s, %struct.gx_ttfExport_s* %73, i32 0, i32 2
  %x60 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %w, i32 0, i32 0
  %74 = load i32, i32* %x60, align 4, !tbaa !111
  %75 = load %struct.gx_ttfExport_s*, %struct.gx_ttfExport_s** %e.addr, align 8, !tbaa !1
  %w61 = getelementptr inbounds %struct.gx_ttfExport_s, %struct.gx_ttfExport_s* %75, i32 0, i32 2
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %w61, i32 0, i32 1
  %76 = load i32, i32* %y, align 4, !tbaa !112
  %call62 = call i32 @t1_hinter__sbw(%struct.t1_hinter_s* %super59, i32 %71, i32 %72, i32 %74, i32 %76) #6
  store i32 %call62, i32* %code, align 4, !tbaa !5
  %77 = load i32, i32* %code, align 4, !tbaa !5
  %cmp63 = icmp slt i32 %77, 0
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.end.58
  %78 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %78, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.66:                                        ; preds = %if.end.58
  %79 = load %struct.gx_path_s*, %struct.gx_path_s** %path.addr, align 8, !tbaa !1
  %call67 = call i32 @gx_path_bbox(%struct.gx_path_s* %79, %struct.gs_fixed_rect_s* %bbox) #6
  store i32 %call67, i32* %code, align 4, !tbaa !5
  %80 = load i32, i32* %code, align 4, !tbaa !5
  %cmp68 = icmp slt i32 %80, 0
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.end.66
  %81 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %81, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.71:                                        ; preds = %if.end.66
  %82 = bitcast %struct.gs_imager_state_s* %is_stub to i8*
  %call72 = call i8* @memset(i8* %82, i32 0, i64 1616) #7
  %83 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %83, i32 0, i32 3
  %84 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !145
  %memory73 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %is_stub, i32 0, i32 1
  store %struct.gs_memory_s* %84, %struct.gs_memory_s** %memory73, align 8, !tbaa !156
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc_stub, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  store i64 1, i64* %pure, align 8, !tbaa !164
  %85 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** @gx_dc_type_pure, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc_stub, i32 0, i32 0
  store %struct.gx_device_color_type_s* %85, %struct.gx_device_color_type_s** %type, align 8, !tbaa !165
  %ccolor_valid = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc_stub, i32 0, i32 3
  store i32 0, i32* %ccolor_valid, align 4, !tbaa !172
  %rule = getelementptr inbounds %struct.gx_fill_params_s, %struct.gx_fill_params_s* %params, i32 0, i32 0
  store i32 -1, i32* %rule, align 4, !tbaa !173
  %adjust = getelementptr inbounds %struct.gx_fill_params_s, %struct.gx_fill_params_s* %params, i32 0, i32 1
  %y74 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %adjust, i32 0, i32 1
  store i32 0, i32* %y74, align 4, !tbaa !175
  %adjust75 = getelementptr inbounds %struct.gx_fill_params_s, %struct.gx_fill_params_s* %params, i32 0, i32 1
  %x76 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %adjust75, i32 0, i32 0
  store i32 0, i32* %x76, align 4, !tbaa !176
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 1
  %x77 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %86 = load i32, i32* %x77, align 4, !tbaa !177
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %x78 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %87 = load i32, i32* %x78, align 4, !tbaa !179
  %sub = sub nsw i32 %86, %87
  %q79 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 1
  %y80 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q79, i32 0, i32 1
  %88 = load i32, i32* %y80, align 4, !tbaa !180
  %p81 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %y82 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p81, i32 0, i32 1
  %89 = load i32, i32* %y82, align 4, !tbaa !181
  %sub83 = sub nsw i32 %88, %89
  %cmp84 = icmp sgt i32 %sub, %sub83
  br i1 %cmp84, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.71
  %q86 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 1
  %x87 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q86, i32 0, i32 0
  %90 = load i32, i32* %x87, align 4, !tbaa !177
  %p88 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %x89 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p88, i32 0, i32 0
  %91 = load i32, i32* %x89, align 4, !tbaa !179
  %sub90 = sub nsw i32 %90, %91
  br label %cond.end

cond.false:                                       ; preds = %if.end.71
  %q91 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 1
  %y92 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q91, i32 0, i32 1
  %92 = load i32, i32* %y92, align 4, !tbaa !180
  %p93 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %y94 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p93, i32 0, i32 1
  %93 = load i32, i32* %y94, align 4, !tbaa !181
  %sub95 = sub nsw i32 %92, %93
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub90, %cond.true ], [ %sub95, %cond.false ]
  %conv96 = sitofp i32 %cond to double
  %mul = fmul double %conv96, 3.906250e-03
  %div97 = fdiv double %mul, 1.000000e+02
  %conv98 = fptrunc double %div97 to float
  %flatness = getelementptr inbounds %struct.gx_fill_params_s, %struct.gx_fill_params_s* %params, i32 0, i32 2
  store float %conv98, float* %flatness, align 4, !tbaa !182
  %transpose = getelementptr inbounds %struct.t1_hinter_aux, %struct.t1_hinter_aux* %h, i32 0, i32 1
  store i32 0, i32* %transpose, align 4, !tbaa !183
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %transpose99 = getelementptr inbounds %struct.t1_hinter_aux, %struct.t1_hinter_aux* %h, i32 0, i32 1
  %94 = load i32, i32* %transpose99, align 4, !tbaa !183
  %cmp100 = icmp slt i32 %94, 2
  br i1 %cmp100, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %95 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %xmin = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %95, i32 0, i32 55
  %96 = load i32, i32* %xmin, align 4, !tbaa !184
  %97 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %xmax = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %97, i32 0, i32 56
  %98 = load i32, i32* %xmax, align 4, !tbaa !185
  %add = add nsw i32 %96, %98
  %div102 = sdiv i32 %add, 2
  %midx = getelementptr inbounds %struct.t1_hinter_aux, %struct.t1_hinter_aux* %h, i32 0, i32 2
  store i32 %div102, i32* %midx, align 4, !tbaa !186
  %transpose103 = getelementptr inbounds %struct.t1_hinter_aux, %struct.t1_hinter_aux* %h, i32 0, i32 1
  %99 = load i32, i32* %transpose103, align 4, !tbaa !183
  %tobool104 = icmp ne i32 %99, 0
  br i1 %tobool104, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %for.body
  %100 = load %struct.gx_path_s*, %struct.gx_path_s** %path.addr, align 8, !tbaa !1
  call void @transpose_path(%struct.gx_path_s* %100) #6
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.105, %for.body
  %101 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  call void @gx_san_begin(%struct.gx_device_spot_analyzer_s* %101) #6
  %102 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_spot_analyzer_s, %struct.gx_device_spot_analyzer_s* %102, i32 0, i32 42
  %fill_path = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 24
  %103 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %fill_path, align 8, !tbaa !187
  %104 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %105 = bitcast %struct.gx_device_spot_analyzer_s* %104 to %struct.gx_device_s*
  %106 = load %struct.gx_path_s*, %struct.gx_path_s** %path.addr, align 8, !tbaa !1
  %call107 = call i32 %103(%struct.gx_device_s* %105, %struct.gs_imager_state_s* %is_stub, %struct.gx_path_s* %106, %struct.gx_fill_params_s* %params, %struct.gx_device_color_s* %devc_stub, %struct.gx_clip_path_s* null) #6
  store i32 %call107, i32* %code, align 4, !tbaa !5
  %107 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  call void @gx_san_end(%struct.gx_device_spot_analyzer_s* %107) #6
  %108 = load i32, i32* %code, align 4, !tbaa !5
  %cmp108 = icmp sge i32 %108, 0
  br i1 %cmp108, label %if.then.110, label %if.end.112

if.then.110:                                      ; preds = %if.end.106
  %109 = load %struct.gx_device_spot_analyzer_s*, %struct.gx_device_spot_analyzer_s** %padev.addr, align 8, !tbaa !1
  %110 = bitcast %struct.t1_hinter_aux* %h to i8*
  %call111 = call i32 @gx_san_generate_stems(%struct.gx_device_spot_analyzer_s* %109, i32 0, i8* %110, i32 (i8*, %struct.gx_san_sect_s*)* @stem_hint_handler) #6
  store i32 %call111, i32* %code, align 4, !tbaa !5
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.110, %if.end.106
  %transpose113 = getelementptr inbounds %struct.t1_hinter_aux, %struct.t1_hinter_aux* %h, i32 0, i32 1
  %111 = load i32, i32* %transpose113, align 4, !tbaa !183
  %tobool114 = icmp ne i32 %111, 0
  br i1 %tobool114, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %if.end.112
  %112 = load %struct.gx_path_s*, %struct.gx_path_s** %path.addr, align 8, !tbaa !1
  call void @transpose_path(%struct.gx_path_s* %112) #6
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.115, %if.end.112
  %113 = load i32, i32* %code, align 4, !tbaa !5
  %cmp117 = icmp slt i32 %113, 0
  br i1 %cmp117, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %if.end.116
  %114 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %114, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.120:                                       ; preds = %if.end.116
  br label %for.inc

for.inc:                                          ; preds = %if.end.120
  %transpose121 = getelementptr inbounds %struct.t1_hinter_aux, %struct.t1_hinter_aux* %h, i32 0, i32 1
  %115 = load i32, i32* %transpose121, align 4, !tbaa !183
  %inc = add nsw i32 %115, 1
  store i32 %inc, i32* %transpose121, align 4, !tbaa !183
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %super122 = getelementptr inbounds %struct.t1_hinter_aux, %struct.t1_hinter_aux* %h, i32 0, i32 0
  %116 = load %struct.gx_path_s*, %struct.gx_path_s** %path.addr, align 8, !tbaa !1
  %call123 = call i32 @path_to_hinter(%struct.t1_hinter_s* %super122, %struct.gx_path_s* %116) #6
  store i32 %call123, i32* %code, align 4, !tbaa !5
  %117 = load i32, i32* %code, align 4, !tbaa !5
  %cmp124 = icmp slt i32 %117, 0
  br i1 %cmp124, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %for.end
  %118 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %118, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.127:                                       ; preds = %for.end
  %119 = load %struct.gx_path_s*, %struct.gx_path_s** %path.addr, align 8, !tbaa !1
  %call128 = call i32 @gx_path_new(%struct.gx_path_s* %119) #6
  store i32 %call128, i32* %code, align 4, !tbaa !5
  %120 = load i32, i32* %code, align 4, !tbaa !5
  %cmp129 = icmp slt i32 %120, 0
  br i1 %cmp129, label %if.then.131, label %if.end.132

if.then.131:                                      ; preds = %if.end.127
  %121 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %121, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.132:                                       ; preds = %if.end.127
  %super133 = getelementptr inbounds %struct.t1_hinter_aux, %struct.t1_hinter_aux* %h, i32 0, i32 0
  %call134 = call i32 @t1_hinter__endglyph(%struct.t1_hinter_s* %super133) #6
  store i32 %call134, i32* %code, align 4, !tbaa !5
  br label %if.end.140

if.else:                                          ; preds = %if.end.34
  %122 = load %struct.ttfOutliner*, %struct.ttfOutliner** %o.addr, align 8, !tbaa !1
  call void @ttfOutliner__DrawGlyphOutline(%struct.ttfOutliner* %122) #6
  %123 = load %struct.gx_ttfExport_s*, %struct.gx_ttfExport_s** %e.addr, align 8, !tbaa !1
  %error135 = getelementptr inbounds %struct.gx_ttfExport_s, %struct.gx_ttfExport_s* %123, i32 0, i32 3
  %124 = load i32, i32* %error135, align 4, !tbaa !109
  %tobool136 = icmp ne i32 %124, 0
  br i1 %tobool136, label %if.then.137, label %if.end.139

if.then.137:                                      ; preds = %if.else
  %125 = load %struct.gx_ttfExport_s*, %struct.gx_ttfExport_s** %e.addr, align 8, !tbaa !1
  %error138 = getelementptr inbounds %struct.gx_ttfExport_s, %struct.gx_ttfExport_s* %125, i32 0, i32 3
  %126 = load i32, i32* %error138, align 4, !tbaa !109
  store i32 %126, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.139:                                       ; preds = %if.else
  br label %if.end.140

if.end.140:                                       ; preds = %if.end.139, %if.end.132
  %127 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %127, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.140, %if.then.137, %if.then.131, %if.then.126, %if.then.119, %if.then.70, %if.then.65, %if.then.57, %if.then.50, %if.then.33, %if.then.26, %if.then.20, %if.then
  %128 = bitcast %struct.gs_fixed_rect_s* %bbox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %128) #1
  %129 = bitcast double* %scale to i8*
  call void @llvm.lifetime.end(i64 8, i8* %129) #1
  %130 = bitcast i32* %sby to i8*
  call void @llvm.lifetime.end(i64 4, i8* %130) #1
  %131 = bitcast i32* %sbx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %131) #1
  %132 = bitcast i32* %FontType to i8*
  call void @llvm.lifetime.end(i64 4, i8* %132) #1
  %133 = bitcast i32* %atp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #1
  %134 = bitcast %struct.gs_matrix_fixed_s* %ctm_temp to i8*
  call void @llvm.lifetime.end(i64 36, i8* %134) #1
  %135 = bitcast %struct.gs_matrix_s* %fmb to i8*
  call void @llvm.lifetime.end(i64 24, i8* %135) #1
  %136 = bitcast %struct.gs_matrix_s* %fm to i8*
  call void @llvm.lifetime.end(i64 24, i8* %136) #1
  %137 = bitcast %struct.gs_matrix_s* %m to i8*
  call void @llvm.lifetime.end(i64 24, i8* %137) #1
  %138 = bitcast %struct.t1_hinter_aux* %h to i8*
  call void @llvm.lifetime.end(i64 9864, i8* %138) #1
  %139 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %139) #1
  %140 = bitcast %struct.gx_device_color_s* %devc_stub to i8*
  call void @llvm.lifetime.end(i64 656, i8* %140) #1
  %141 = bitcast %struct.gx_fill_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 16, i8* %141) #1
  %142 = bitcast %struct.gs_imager_state_s* %is_stub to i8*
  call void @llvm.lifetime.end(i64 1616, i8* %142) #1
  %143 = load i32, i32* %retval
  ret i32 %143
}

declare void @ttfOutliner__DrawGlyphOutline(%struct.ttfOutliner*) #3

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #2

declare void @gs_glyph_data_free(%struct.gs_glyph_data_s*, i8*) #3

; Function Attrs: nounwind readnone
declare double @floor(double) #4

declare %struct.gs_ptr_procs_s* @gs_no_struct_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #3

declare void @gs_no_struct_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #3

declare i32 @gs_currentaligntopixels(%struct.gs_font_dir_s*) #3

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: inlinehint nounwind uwtable
define internal float @reminder(float %v, i32 %x) #5 {
entry:
  %v.addr = alloca float, align 4
  %x.addr = alloca i32, align 4
  store float %v, float* %v.addr, align 4, !tbaa !52
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  %0 = load float, float* %v.addr, align 4, !tbaa !52
  %1 = load i32, i32* %x.addr, align 4, !tbaa !5
  %conv = sitofp i32 %1 to float
  %div = fdiv float %0, %conv
  %conv1 = fpext float %div to double
  %2 = load float, float* %v.addr, align 4, !tbaa !52
  %3 = load i32, i32* %x.addr, align 4, !tbaa !5
  %conv2 = sitofp i32 %3 to float
  %div3 = fdiv float %2, %conv2
  %conv4 = fpext float %div3 to double
  %call = call double @floor(double %conv4) #8
  %sub = fsub double %conv1, %call
  %4 = load i32, i32* %x.addr, align 4, !tbaa !5
  %conv5 = sitofp i32 %4 to double
  %mul = fmul double %sub, %conv5
  %conv6 = fptrunc double %mul to float
  ret float %conv6
}

declare void @emprintf_program_ident(%struct.gs_memory_s*, i8*, i64) #3

declare i8* @gs_program_name() #3

declare i64 @gs_revision_number() #3

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #3

declare i32 @gx_path_add_point(%struct.gx_path_s*, i32, i32) #3

declare i32 @gx_path_add_line_notes(%struct.gx_path_s*, i32, i32, i32) #3

declare i32 @gx_curve_monotonize(%struct.gx_path_s*, %struct.curve_segment*) #3

declare i32 @gx_path_add_curve_notes(%struct.gx_path_s*, i32, i32, i32, i32, i32, i32, i32) #3

declare i32 @gx_path_close_subpath_notes(%struct.gx_path_s*, i32) #3

declare i32 @gs_matrix_fixed_from_matrix(%struct.gs_matrix_fixed_s*, %struct.gs_matrix_s*) #3

declare i32 @gs_matrix_scale(%struct.gs_matrix_s*, double, double, %struct.gs_matrix_s*) #3

declare void @t1_hinter__init(%struct.t1_hinter_s*, %struct.gx_path_s*) #3

declare i32 @t1_hinter__set_mapping(%struct.t1_hinter_s*, %struct.gs_matrix_fixed_s*, %struct.gs_matrix_s*, %struct.gs_matrix_s*, i32, i32, i32, i32, i32, i32, i32) #3

declare i32 @t1_hinter__set_font42_data(%struct.t1_hinter_s*, i32, %struct.gs_type42_data_s*, i32) #3

declare i32 @t1_hinter__sbw(%struct.t1_hinter_s*, i32, i32, i32, i32) #3

declare i32 @gx_path_bbox(%struct.gx_path_s*, %struct.gs_fixed_rect_s*) #3

; Function Attrs: nounwind uwtable
define internal void @transpose_path(%struct.gx_path_s* %path) #0 {
entry:
  %path.addr = alloca %struct.gx_path_s*, align 8
  %s = alloca %struct.segment_s*, align 8
  %c = alloca %struct.curve_segment*, align 8
  store %struct.gx_path_s* %path, %struct.gx_path_s** %path.addr, align 8, !tbaa !1
  %0 = bitcast %struct.segment_s** %s to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_path_s*, %struct.gx_path_s** %path.addr, align 8, !tbaa !1
  %segments = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %1, i32 0, i32 3
  %2 = load %struct.gx_path_segments_s*, %struct.gx_path_segments_s** %segments, align 8, !tbaa !188
  %contents = getelementptr inbounds %struct.gx_path_segments_s, %struct.gx_path_segments_s* %2, i32 0, i32 1
  %subpath_first = getelementptr inbounds %struct.psc_, %struct.psc_* %contents, i32 0, i32 0
  %3 = load %struct.subpath_s*, %struct.subpath_s** %subpath_first, align 8, !tbaa !192
  %4 = bitcast %struct.subpath_s* %3 to %struct.segment_s*
  store %struct.segment_s* %4, %struct.segment_s** %s, align 8, !tbaa !1
  %5 = load %struct.gx_path_s*, %struct.gx_path_s** %path.addr, align 8, !tbaa !1
  %bbox = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %5, i32 0, i32 5
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 1
  %6 = load i32, i32* %y, align 4, !tbaa !193
  %7 = load %struct.gx_path_s*, %struct.gx_path_s** %path.addr, align 8, !tbaa !1
  %bbox1 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %7, i32 0, i32 5
  %p2 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox1, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2, i32 0, i32 0
  %8 = load i32, i32* %x, align 4, !tbaa !194
  %xor = xor i32 %8, %6
  store i32 %xor, i32* %x, align 4, !tbaa !194
  %9 = load %struct.gx_path_s*, %struct.gx_path_s** %path.addr, align 8, !tbaa !1
  %bbox3 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %9, i32 0, i32 5
  %p4 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox3, i32 0, i32 0
  %x5 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p4, i32 0, i32 0
  %10 = load i32, i32* %x5, align 4, !tbaa !194
  %11 = load %struct.gx_path_s*, %struct.gx_path_s** %path.addr, align 8, !tbaa !1
  %bbox6 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %11, i32 0, i32 5
  %p7 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox6, i32 0, i32 0
  %y8 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p7, i32 0, i32 1
  %12 = load i32, i32* %y8, align 4, !tbaa !193
  %xor9 = xor i32 %12, %10
  store i32 %xor9, i32* %y8, align 4, !tbaa !193
  %13 = load %struct.gx_path_s*, %struct.gx_path_s** %path.addr, align 8, !tbaa !1
  %bbox10 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %13, i32 0, i32 5
  %p11 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox10, i32 0, i32 0
  %y12 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p11, i32 0, i32 1
  %14 = load i32, i32* %y12, align 4, !tbaa !193
  %15 = load %struct.gx_path_s*, %struct.gx_path_s** %path.addr, align 8, !tbaa !1
  %bbox13 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %15, i32 0, i32 5
  %p14 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox13, i32 0, i32 0
  %x15 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p14, i32 0, i32 0
  %16 = load i32, i32* %x15, align 4, !tbaa !194
  %xor16 = xor i32 %16, %14
  store i32 %xor16, i32* %x15, align 4, !tbaa !194
  %17 = load %struct.gx_path_s*, %struct.gx_path_s** %path.addr, align 8, !tbaa !1
  %bbox17 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %17, i32 0, i32 5
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox17, i32 0, i32 1
  %y18 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 1
  %18 = load i32, i32* %y18, align 4, !tbaa !195
  %19 = load %struct.gx_path_s*, %struct.gx_path_s** %path.addr, align 8, !tbaa !1
  %bbox19 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %19, i32 0, i32 5
  %q20 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox19, i32 0, i32 1
  %x21 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q20, i32 0, i32 0
  %20 = load i32, i32* %x21, align 4, !tbaa !196
  %xor22 = xor i32 %20, %18
  store i32 %xor22, i32* %x21, align 4, !tbaa !196
  %21 = load %struct.gx_path_s*, %struct.gx_path_s** %path.addr, align 8, !tbaa !1
  %bbox23 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %21, i32 0, i32 5
  %q24 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox23, i32 0, i32 1
  %x25 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q24, i32 0, i32 0
  %22 = load i32, i32* %x25, align 4, !tbaa !196
  %23 = load %struct.gx_path_s*, %struct.gx_path_s** %path.addr, align 8, !tbaa !1
  %bbox26 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %23, i32 0, i32 5
  %q27 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox26, i32 0, i32 1
  %y28 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q27, i32 0, i32 1
  %24 = load i32, i32* %y28, align 4, !tbaa !195
  %xor29 = xor i32 %24, %22
  store i32 %xor29, i32* %y28, align 4, !tbaa !195
  %25 = load %struct.gx_path_s*, %struct.gx_path_s** %path.addr, align 8, !tbaa !1
  %bbox30 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %25, i32 0, i32 5
  %q31 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox30, i32 0, i32 1
  %y32 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q31, i32 0, i32 1
  %26 = load i32, i32* %y32, align 4, !tbaa !195
  %27 = load %struct.gx_path_s*, %struct.gx_path_s** %path.addr, align 8, !tbaa !1
  %bbox33 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %27, i32 0, i32 5
  %q34 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %bbox33, i32 0, i32 1
  %x35 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q34, i32 0, i32 0
  %28 = load i32, i32* %x35, align 4, !tbaa !196
  %xor36 = xor i32 %28, %26
  store i32 %xor36, i32* %x35, align 4, !tbaa !196
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %29 = load %struct.segment_s*, %struct.segment_s** %s, align 8, !tbaa !1
  %tobool = icmp ne %struct.segment_s* %29, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load %struct.segment_s*, %struct.segment_s** %s, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.segment_s, %struct.segment_s* %30, i32 0, i32 2
  %31 = load i16, i16* %type, align 2, !tbaa !197
  %conv = zext i16 %31 to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %32 = bitcast %struct.curve_segment** %c to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #1
  %33 = load %struct.segment_s*, %struct.segment_s** %s, align 8, !tbaa !1
  %34 = bitcast %struct.segment_s* %33 to %struct.curve_segment*
  store %struct.curve_segment* %34, %struct.curve_segment** %c, align 8, !tbaa !1
  %35 = load %struct.curve_segment*, %struct.curve_segment** %c, align 8, !tbaa !1
  %p1 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %35, i32 0, i32 5
  %y38 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1, i32 0, i32 1
  %36 = load i32, i32* %y38, align 4, !tbaa !122
  %37 = load %struct.curve_segment*, %struct.curve_segment** %c, align 8, !tbaa !1
  %p139 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %37, i32 0, i32 5
  %x40 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p139, i32 0, i32 0
  %38 = load i32, i32* %x40, align 4, !tbaa !121
  %xor41 = xor i32 %38, %36
  store i32 %xor41, i32* %x40, align 4, !tbaa !121
  %39 = load %struct.curve_segment*, %struct.curve_segment** %c, align 8, !tbaa !1
  %p142 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %39, i32 0, i32 5
  %x43 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p142, i32 0, i32 0
  %40 = load i32, i32* %x43, align 4, !tbaa !121
  %41 = load %struct.curve_segment*, %struct.curve_segment** %c, align 8, !tbaa !1
  %p144 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %41, i32 0, i32 5
  %y45 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p144, i32 0, i32 1
  %42 = load i32, i32* %y45, align 4, !tbaa !122
  %xor46 = xor i32 %42, %40
  store i32 %xor46, i32* %y45, align 4, !tbaa !122
  %43 = load %struct.curve_segment*, %struct.curve_segment** %c, align 8, !tbaa !1
  %p147 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %43, i32 0, i32 5
  %y48 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p147, i32 0, i32 1
  %44 = load i32, i32* %y48, align 4, !tbaa !122
  %45 = load %struct.curve_segment*, %struct.curve_segment** %c, align 8, !tbaa !1
  %p149 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %45, i32 0, i32 5
  %x50 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p149, i32 0, i32 0
  %46 = load i32, i32* %x50, align 4, !tbaa !121
  %xor51 = xor i32 %46, %44
  store i32 %xor51, i32* %x50, align 4, !tbaa !121
  %47 = load %struct.curve_segment*, %struct.curve_segment** %c, align 8, !tbaa !1
  %p252 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %47, i32 0, i32 6
  %y53 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p252, i32 0, i32 1
  %48 = load i32, i32* %y53, align 4, !tbaa !124
  %49 = load %struct.curve_segment*, %struct.curve_segment** %c, align 8, !tbaa !1
  %p254 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %49, i32 0, i32 6
  %x55 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p254, i32 0, i32 0
  %50 = load i32, i32* %x55, align 4, !tbaa !123
  %xor56 = xor i32 %50, %48
  store i32 %xor56, i32* %x55, align 4, !tbaa !123
  %51 = load %struct.curve_segment*, %struct.curve_segment** %c, align 8, !tbaa !1
  %p257 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %51, i32 0, i32 6
  %x58 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p257, i32 0, i32 0
  %52 = load i32, i32* %x58, align 4, !tbaa !123
  %53 = load %struct.curve_segment*, %struct.curve_segment** %c, align 8, !tbaa !1
  %p259 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %53, i32 0, i32 6
  %y60 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p259, i32 0, i32 1
  %54 = load i32, i32* %y60, align 4, !tbaa !124
  %xor61 = xor i32 %54, %52
  store i32 %xor61, i32* %y60, align 4, !tbaa !124
  %55 = load %struct.curve_segment*, %struct.curve_segment** %c, align 8, !tbaa !1
  %p262 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %55, i32 0, i32 6
  %y63 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p262, i32 0, i32 1
  %56 = load i32, i32* %y63, align 4, !tbaa !124
  %57 = load %struct.curve_segment*, %struct.curve_segment** %c, align 8, !tbaa !1
  %p264 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %57, i32 0, i32 6
  %x65 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p264, i32 0, i32 0
  %58 = load i32, i32* %x65, align 4, !tbaa !123
  %xor66 = xor i32 %58, %56
  store i32 %xor66, i32* %x65, align 4, !tbaa !123
  %59 = bitcast %struct.curve_segment** %c to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %60 = load %struct.segment_s*, %struct.segment_s** %s, align 8, !tbaa !1
  %pt = getelementptr inbounds %struct.segment_s, %struct.segment_s* %60, i32 0, i32 4
  %y67 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt, i32 0, i32 1
  %61 = load i32, i32* %y67, align 4, !tbaa !199
  %62 = load %struct.segment_s*, %struct.segment_s** %s, align 8, !tbaa !1
  %pt68 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %62, i32 0, i32 4
  %x69 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt68, i32 0, i32 0
  %63 = load i32, i32* %x69, align 4, !tbaa !200
  %xor70 = xor i32 %63, %61
  store i32 %xor70, i32* %x69, align 4, !tbaa !200
  %64 = load %struct.segment_s*, %struct.segment_s** %s, align 8, !tbaa !1
  %pt71 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %64, i32 0, i32 4
  %x72 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt71, i32 0, i32 0
  %65 = load i32, i32* %x72, align 4, !tbaa !200
  %66 = load %struct.segment_s*, %struct.segment_s** %s, align 8, !tbaa !1
  %pt73 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %66, i32 0, i32 4
  %y74 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt73, i32 0, i32 1
  %67 = load i32, i32* %y74, align 4, !tbaa !199
  %xor75 = xor i32 %67, %65
  store i32 %xor75, i32* %y74, align 4, !tbaa !199
  %68 = load %struct.segment_s*, %struct.segment_s** %s, align 8, !tbaa !1
  %pt76 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %68, i32 0, i32 4
  %y77 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt76, i32 0, i32 1
  %69 = load i32, i32* %y77, align 4, !tbaa !199
  %70 = load %struct.segment_s*, %struct.segment_s** %s, align 8, !tbaa !1
  %pt78 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %70, i32 0, i32 4
  %x79 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %pt78, i32 0, i32 0
  %71 = load i32, i32* %x79, align 4, !tbaa !200
  %xor80 = xor i32 %71, %69
  store i32 %xor80, i32* %x79, align 4, !tbaa !200
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %72 = load %struct.segment_s*, %struct.segment_s** %s, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.segment_s, %struct.segment_s* %72, i32 0, i32 1
  %73 = load %struct.segment_s*, %struct.segment_s** %next, align 8, !tbaa !201
  store %struct.segment_s* %73, %struct.segment_s** %s, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %74 = bitcast %struct.segment_s** %s to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  ret void
}

declare void @gx_san_begin(%struct.gx_device_spot_analyzer_s*) #3

declare void @gx_san_end(%struct.gx_device_spot_analyzer_s*) #3

declare i32 @gx_san_generate_stems(%struct.gx_device_spot_analyzer_s*, i32, i8*, i32 (i8*, %struct.gx_san_sect_s*)*) #3

; Function Attrs: nounwind uwtable
define internal i32 @stem_hint_handler(i8* %client_data, %struct.gx_san_sect_s* %ss) #0 {
entry:
  %retval = alloca i32, align 4
  %client_data.addr = alloca i8*, align 8
  %ss.addr = alloca %struct.gx_san_sect_s*, align 8
  %h = alloca %struct.t1_hinter_aux*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %client_data, i8** %client_data.addr, align 8, !tbaa !1
  store %struct.gx_san_sect_s* %ss, %struct.gx_san_sect_s** %ss.addr, align 8, !tbaa !1
  %0 = bitcast %struct.t1_hinter_aux** %h to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %client_data.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.t1_hinter_aux*
  store %struct.t1_hinter_aux* %2, %struct.t1_hinter_aux** %h, align 8, !tbaa !1
  %3 = load %struct.gx_san_sect_s*, %struct.gx_san_sect_s** %ss.addr, align 8, !tbaa !1
  %side_mask = getelementptr inbounds %struct.gx_san_sect_s, %struct.gx_san_sect_s* %3, i32 0, i32 6
  %4 = load i32, i32* %side_mask, align 4, !tbaa !202
  %cmp = icmp eq i32 %4, 3
  br i1 %cmp, label %if.then, label %if.else.16

if.then:                                          ; preds = %entry
  %5 = load %struct.gx_san_sect_s*, %struct.gx_san_sect_s** %ss.addr, align 8, !tbaa !1
  %xl = getelementptr inbounds %struct.gx_san_sect_s, %struct.gx_san_sect_s* %5, i32 0, i32 0
  %6 = load i32, i32* %xl, align 4, !tbaa !204
  %7 = load %struct.t1_hinter_aux*, %struct.t1_hinter_aux** %h, align 8, !tbaa !1
  %midx = getelementptr inbounds %struct.t1_hinter_aux, %struct.t1_hinter_aux* %7, i32 0, i32 2
  %8 = load i32, i32* %midx, align 4, !tbaa !186
  %cmp1 = icmp sgt i32 %6, %8
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %9 = load %struct.t1_hinter_aux*, %struct.t1_hinter_aux** %h, align 8, !tbaa !1
  %transpose = getelementptr inbounds %struct.t1_hinter_aux, %struct.t1_hinter_aux* %9, i32 0, i32 1
  %10 = load i32, i32* %transpose, align 4, !tbaa !183
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %land.lhs.true
  %11 = load %struct.t1_hinter_aux*, %struct.t1_hinter_aux** %h, align 8, !tbaa !1
  %transpose3 = getelementptr inbounds %struct.t1_hinter_aux, %struct.t1_hinter_aux* %11, i32 0, i32 1
  %12 = load i32, i32* %transpose3, align 4, !tbaa !183
  %tobool4 = icmp ne i32 %12, 0
  %cond = select i1 %tobool4, i32 (%struct.t1_hinter_s*, i32, i32)* @t1_hinter__hstem, i32 (%struct.t1_hinter_s*, i32, i32)* @t1_hinter__vstem
  %13 = load %struct.t1_hinter_aux*, %struct.t1_hinter_aux** %h, align 8, !tbaa !1
  %super = getelementptr inbounds %struct.t1_hinter_aux, %struct.t1_hinter_aux* %13, i32 0, i32 0
  %14 = load %struct.gx_san_sect_s*, %struct.gx_san_sect_s** %ss.addr, align 8, !tbaa !1
  %xr = getelementptr inbounds %struct.gx_san_sect_s, %struct.gx_san_sect_s* %14, i32 0, i32 2
  %15 = load i32, i32* %xr, align 4, !tbaa !205
  %16 = load %struct.gx_san_sect_s*, %struct.gx_san_sect_s** %ss.addr, align 8, !tbaa !1
  %xl5 = getelementptr inbounds %struct.gx_san_sect_s, %struct.gx_san_sect_s* %16, i32 0, i32 0
  %17 = load i32, i32* %xl5, align 4, !tbaa !204
  %18 = load %struct.gx_san_sect_s*, %struct.gx_san_sect_s** %ss.addr, align 8, !tbaa !1
  %xr6 = getelementptr inbounds %struct.gx_san_sect_s, %struct.gx_san_sect_s* %18, i32 0, i32 2
  %19 = load i32, i32* %xr6, align 4, !tbaa !205
  %sub = sub nsw i32 %17, %19
  %call = call i32 %cond(%struct.t1_hinter_s* %super, i32 %15, i32 %sub) #6
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true, %if.then
  %20 = load %struct.t1_hinter_aux*, %struct.t1_hinter_aux** %h, align 8, !tbaa !1
  %transpose7 = getelementptr inbounds %struct.t1_hinter_aux, %struct.t1_hinter_aux* %20, i32 0, i32 1
  %21 = load i32, i32* %transpose7, align 4, !tbaa !183
  %tobool8 = icmp ne i32 %21, 0
  %cond9 = select i1 %tobool8, i32 (%struct.t1_hinter_s*, i32, i32)* @t1_hinter__hstem, i32 (%struct.t1_hinter_s*, i32, i32)* @t1_hinter__vstem
  %22 = load %struct.t1_hinter_aux*, %struct.t1_hinter_aux** %h, align 8, !tbaa !1
  %super10 = getelementptr inbounds %struct.t1_hinter_aux, %struct.t1_hinter_aux* %22, i32 0, i32 0
  %23 = load %struct.gx_san_sect_s*, %struct.gx_san_sect_s** %ss.addr, align 8, !tbaa !1
  %xl11 = getelementptr inbounds %struct.gx_san_sect_s, %struct.gx_san_sect_s* %23, i32 0, i32 0
  %24 = load i32, i32* %xl11, align 4, !tbaa !204
  %25 = load %struct.gx_san_sect_s*, %struct.gx_san_sect_s** %ss.addr, align 8, !tbaa !1
  %xr12 = getelementptr inbounds %struct.gx_san_sect_s, %struct.gx_san_sect_s* %25, i32 0, i32 2
  %26 = load i32, i32* %xr12, align 4, !tbaa !205
  %27 = load %struct.gx_san_sect_s*, %struct.gx_san_sect_s** %ss.addr, align 8, !tbaa !1
  %xl13 = getelementptr inbounds %struct.gx_san_sect_s, %struct.gx_san_sect_s* %27, i32 0, i32 0
  %28 = load i32, i32* %xl13, align 4, !tbaa !204
  %sub14 = sub nsw i32 %26, %28
  %call15 = call i32 %cond9(%struct.t1_hinter_s* %super10, i32 %24, i32 %sub14) #6
  store i32 %call15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.16:                                       ; preds = %entry
  %29 = load %struct.t1_hinter_aux*, %struct.t1_hinter_aux** %h, align 8, !tbaa !1
  %super17 = getelementptr inbounds %struct.t1_hinter_aux, %struct.t1_hinter_aux* %29, i32 0, i32 0
  %30 = load %struct.gx_san_sect_s*, %struct.gx_san_sect_s** %ss.addr, align 8, !tbaa !1
  %xl18 = getelementptr inbounds %struct.gx_san_sect_s, %struct.gx_san_sect_s* %30, i32 0, i32 0
  %31 = load i32, i32* %xl18, align 4, !tbaa !204
  %32 = load %struct.gx_san_sect_s*, %struct.gx_san_sect_s** %ss.addr, align 8, !tbaa !1
  %xr19 = getelementptr inbounds %struct.gx_san_sect_s, %struct.gx_san_sect_s* %32, i32 0, i32 2
  %33 = load i32, i32* %xr19, align 4, !tbaa !205
  %34 = load %struct.gx_san_sect_s*, %struct.gx_san_sect_s** %ss.addr, align 8, !tbaa !1
  %xl20 = getelementptr inbounds %struct.gx_san_sect_s, %struct.gx_san_sect_s* %34, i32 0, i32 0
  %35 = load i32, i32* %xl20, align 4, !tbaa !204
  %sub21 = sub nsw i32 %33, %35
  %36 = load %struct.gx_san_sect_s*, %struct.gx_san_sect_s** %ss.addr, align 8, !tbaa !1
  %side_mask22 = getelementptr inbounds %struct.gx_san_sect_s, %struct.gx_san_sect_s* %36, i32 0, i32 6
  %37 = load i32, i32* %side_mask22, align 4, !tbaa !202
  %call23 = call i32 @t1_hinter__overall_hstem(%struct.t1_hinter_s* %super17, i32 %31, i32 %sub21, i32 %37) #6
  store i32 %call23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else.16, %if.else, %if.then.2
  %38 = bitcast %struct.t1_hinter_aux** %h to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = load i32, i32* %retval
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define internal i32 @path_to_hinter(%struct.t1_hinter_s* %h, %struct.gx_path_s* %path) #0 {
entry:
  %retval = alloca i32, align 4
  %h.addr = alloca %struct.t1_hinter_s*, align 8
  %path.addr = alloca %struct.gx_path_s*, align 8
  %code = alloca i32, align 4
  %penum = alloca %struct.gs_path_enum_s, align 8
  %pts = alloca [3 x %struct.gs_fixed_point_s], align 16
  %p = alloca %struct.gs_fixed_point_s, align 4
  %first = alloca i32, align 4
  %op = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.t1_hinter_s* %h, %struct.t1_hinter_s** %h.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %path, %struct.gx_path_s** %path.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.gs_path_enum_s* %penum to i8*
  call void @llvm.lifetime.start(i64 64, i8* %1) #1
  %2 = bitcast [3 x %struct.gs_fixed_point_s]* %pts to i8*
  call void @llvm.lifetime.start(i64 24, i8* %2) #1
  %3 = bitcast %struct.gs_fixed_point_s* %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast %struct.gs_fixed_point_s* %p to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 8, i32 4, i1 false)
  %5 = bitcast i32* %first to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 1, i32* %first, align 4, !tbaa !5
  %6 = bitcast i32* %op to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gx_path_s*, %struct.gx_path_s** %path.addr, align 8, !tbaa !1
  %call = call i32 @gx_path_enum_init(%struct.gs_path_enum_s* %penum, %struct.gx_path_s* %7) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %8 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.60, %if.end
  %arraydecay = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %pts, i32 0, i32 0
  %call1 = call i32 @gx_path_enum_next(%struct.gs_path_enum_s* %penum, %struct.gs_fixed_point_s* %arraydecay) #6
  store i32 %call1, i32* %op, align 4, !tbaa !5
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i32, i32* %op, align 4, !tbaa !5
  switch i32 %10, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.14
    i32 5, label %sw.bb.14
    i32 3, label %sw.bb.24
    i32 4, label %sw.bb.56
  ]

sw.bb:                                            ; preds = %while.body
  %11 = load i32, i32* %first, align 4, !tbaa !5
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %sw.bb
  store i32 0, i32* %first, align 4, !tbaa !5
  %arrayidx = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %pts, i32 0, i64 0
  %12 = bitcast %struct.gs_fixed_point_s* %p to i8*
  %13 = bitcast %struct.gs_fixed_point_s* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 8, i32 4, i1 false), !tbaa.struct !206
  %14 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %h.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %15 = load i32, i32* %x, align 4, !tbaa !207
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 1
  %16 = load i32, i32* %y, align 4, !tbaa !208
  %call4 = call i32 @t1_hinter__rmoveto(%struct.t1_hinter_s* %14, i32 %15, i32 %16) #6
  store i32 %call4, i32* %code, align 4, !tbaa !5
  br label %if.end.13

if.else:                                          ; preds = %sw.bb
  %17 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %h.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %pts, i32 0, i64 0
  %x6 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx5, i32 0, i32 0
  %18 = load i32, i32* %x6, align 4, !tbaa !207
  %x7 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %19 = load i32, i32* %x7, align 4, !tbaa !207
  %sub = sub nsw i32 %18, %19
  %arrayidx8 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %pts, i32 0, i64 0
  %y9 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx8, i32 0, i32 1
  %20 = load i32, i32* %y9, align 4, !tbaa !208
  %y10 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 1
  %21 = load i32, i32* %y10, align 4, !tbaa !208
  %sub11 = sub nsw i32 %20, %21
  %call12 = call i32 @t1_hinter__rmoveto(%struct.t1_hinter_s* %17, i32 %sub, i32 %sub11) #6
  store i32 %call12, i32* %code, align 4, !tbaa !5
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.3
  br label %sw.epilog

sw.bb.14:                                         ; preds = %while.body, %while.body
  %22 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %h.addr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %pts, i32 0, i64 0
  %x16 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx15, i32 0, i32 0
  %23 = load i32, i32* %x16, align 4, !tbaa !207
  %x17 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %24 = load i32, i32* %x17, align 4, !tbaa !207
  %sub18 = sub nsw i32 %23, %24
  %arrayidx19 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %pts, i32 0, i64 0
  %y20 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx19, i32 0, i32 1
  %25 = load i32, i32* %y20, align 4, !tbaa !208
  %y21 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 1
  %26 = load i32, i32* %y21, align 4, !tbaa !208
  %sub22 = sub nsw i32 %25, %26
  %call23 = call i32 @t1_hinter__rlineto(%struct.t1_hinter_s* %22, i32 %sub18, i32 %sub22) #6
  store i32 %call23, i32* %code, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.24:                                         ; preds = %while.body
  %27 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %h.addr, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %pts, i32 0, i64 0
  %x26 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx25, i32 0, i32 0
  %28 = load i32, i32* %x26, align 4, !tbaa !207
  %x27 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %29 = load i32, i32* %x27, align 4, !tbaa !207
  %sub28 = sub nsw i32 %28, %29
  %arrayidx29 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %pts, i32 0, i64 0
  %y30 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx29, i32 0, i32 1
  %30 = load i32, i32* %y30, align 4, !tbaa !208
  %y31 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 1
  %31 = load i32, i32* %y31, align 4, !tbaa !208
  %sub32 = sub nsw i32 %30, %31
  %arrayidx33 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %pts, i32 0, i64 1
  %x34 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx33, i32 0, i32 0
  %32 = load i32, i32* %x34, align 4, !tbaa !207
  %arrayidx35 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %pts, i32 0, i64 0
  %x36 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx35, i32 0, i32 0
  %33 = load i32, i32* %x36, align 4, !tbaa !207
  %sub37 = sub nsw i32 %32, %33
  %arrayidx38 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %pts, i32 0, i64 1
  %y39 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx38, i32 0, i32 1
  %34 = load i32, i32* %y39, align 4, !tbaa !208
  %arrayidx40 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %pts, i32 0, i64 0
  %y41 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx40, i32 0, i32 1
  %35 = load i32, i32* %y41, align 4, !tbaa !208
  %sub42 = sub nsw i32 %34, %35
  %arrayidx43 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %pts, i32 0, i64 2
  %x44 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx43, i32 0, i32 0
  %36 = load i32, i32* %x44, align 4, !tbaa !207
  %arrayidx45 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %pts, i32 0, i64 1
  %x46 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx45, i32 0, i32 0
  %37 = load i32, i32* %x46, align 4, !tbaa !207
  %sub47 = sub nsw i32 %36, %37
  %arrayidx48 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %pts, i32 0, i64 2
  %y49 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx48, i32 0, i32 1
  %38 = load i32, i32* %y49, align 4, !tbaa !208
  %arrayidx50 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %pts, i32 0, i64 1
  %y51 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx50, i32 0, i32 1
  %39 = load i32, i32* %y51, align 4, !tbaa !208
  %sub52 = sub nsw i32 %38, %39
  %call53 = call i32 @t1_hinter__rcurveto(%struct.t1_hinter_s* %27, i32 %sub28, i32 %sub32, i32 %sub37, i32 %sub42, i32 %sub47, i32 %sub52) #6
  store i32 %call53, i32* %code, align 4, !tbaa !5
  %arrayidx54 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %pts, i32 0, i64 0
  %arrayidx55 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %pts, i32 0, i64 2
  %40 = bitcast %struct.gs_fixed_point_s* %arrayidx54 to i8*
  %41 = bitcast %struct.gs_fixed_point_s* %arrayidx55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 8, i32 4, i1 false), !tbaa.struct !206
  br label %sw.epilog

sw.bb.56:                                         ; preds = %while.body
  %42 = load %struct.t1_hinter_s*, %struct.t1_hinter_s** %h.addr, align 8, !tbaa !1
  %call57 = call i32 @t1_hinter__closepath(%struct.t1_hinter_s* %42) #6
  store i32 %call57, i32* %code, align 4, !tbaa !5
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.56, %sw.bb.24, %sw.bb.14, %if.end.13
  %43 = load i32, i32* %code, align 4, !tbaa !5
  %cmp58 = icmp slt i32 %43, 0
  br i1 %cmp58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %sw.epilog
  %44 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %44, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.60:                                        ; preds = %sw.epilog
  %arrayidx61 = getelementptr inbounds [3 x %struct.gs_fixed_point_s], [3 x %struct.gs_fixed_point_s]* %pts, i32 0, i64 0
  %45 = bitcast %struct.gs_fixed_point_s* %p to i8*
  %46 = bitcast %struct.gs_fixed_point_s* %arrayidx61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 8, i32 4, i1 false), !tbaa.struct !206
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then.59, %sw.default, %if.then
  %47 = bitcast i32* %op to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = bitcast i32* %first to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast %struct.gs_fixed_point_s* %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = bitcast [3 x %struct.gs_fixed_point_s]* %pts to i8*
  call void @llvm.lifetime.end(i64 24, i8* %50) #1
  %51 = bitcast %struct.gs_path_enum_s* %penum to i8*
  call void @llvm.lifetime.end(i64 64, i8* %51) #1
  %52 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = load i32, i32* %retval
  ret i32 %53
}

declare i32 @gx_path_new(%struct.gx_path_s*) #3

declare i32 @t1_hinter__endglyph(%struct.t1_hinter_s*) #3

declare i32 @t1_hinter__hstem(%struct.t1_hinter_s*, i32, i32) #3

declare i32 @t1_hinter__vstem(%struct.t1_hinter_s*, i32, i32) #3

declare i32 @t1_hinter__overall_hstem(%struct.t1_hinter_s*, i32, i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare i32 @gx_path_enum_init(%struct.gs_path_enum_s*, %struct.gx_path_s*) #3

declare i32 @gx_path_enum_next(%struct.gs_path_enum_s*, %struct.gs_fixed_point_s*) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @t1_hinter__rmoveto(%struct.t1_hinter_s*, i32, i32) #3

declare i32 @t1_hinter__rlineto(%struct.t1_hinter_s*, i32, i32) #3

declare i32 @t1_hinter__rcurveto(%struct.t1_hinter_s*, i32, i32, i32, i32, i32, i32) #3

declare i32 @t1_hinter__closepath(%struct.t1_hinter_s*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin nounwind }
attributes #8 = { nobuiltin nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 88}
!8 = !{!"gx_ttfReader_s", !9, i64 0, !6, i64 64, !6, i64 68, !6, i64 72, !2, i64 80, !2, i64 88, !10, i64 96}
!9 = !{!"ttfReader_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!10 = !{!"gs_glyph_data_s", !11, i64 0, !2, i64 24, !2, i64 32, !2, i64 40}
!11 = !{!"gs_const_bytestring_s", !2, i64 0, !6, i64 8, !2, i64 16}
!12 = !{!13, !2, i64 0}
!13 = !{!"enum_ptr_s", !2, i64 0, !6, i64 8}
!14 = !{!15, !2, i64 0}
!15 = !{!"gc_procs_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!16 = !{!17, !2, i64 72}
!17 = !{!"gs_memory_s", !2, i64 0, !18, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!18 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!19 = !{!8, !2, i64 0}
!20 = !{!8, !2, i64 8}
!21 = !{!8, !2, i64 16}
!22 = !{!8, !2, i64 24}
!23 = !{!8, !2, i64 32}
!24 = !{!8, !2, i64 40}
!25 = !{!8, !2, i64 48}
!26 = !{!8, !6, i64 64}
!27 = !{!8, !6, i64 68}
!28 = !{!8, !6, i64 72}
!29 = !{!8, !2, i64 80}
!30 = !{!8, !6, i64 104}
!31 = !{!8, !2, i64 96}
!32 = !{!33, !2, i64 448}
!33 = !{!"gs_font_type42_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !34, i64 40, !35, i64 56, !2, i64 64, !2, i64 72, !36, i64 80, !36, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !37, i64 156, !6, i64 160, !38, i64 168, !39, i64 272, !39, i64 324, !40, i64 376, !43, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444, !44, i64 448}
!34 = !{!"gs_notify_list_s", !2, i64 0, !2, i64 8}
!35 = !{!"long", !3, i64 0}
!36 = !{!"gs_matrix_s", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20}
!37 = !{!"float", !3, i64 0}
!38 = !{!"gs_font_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!39 = !{!"gs_font_name_s", !3, i64 0, !6, i64 48}
!40 = !{!"gs_rect_s", !41, i64 0, !41, i64 16}
!41 = !{!"gs_point_s", !42, i64 0, !42, i64 8}
!42 = !{!"double", !3, i64 0}
!43 = !{!"gs_uid_s", !35, i64 0, !2, i64 8}
!44 = !{!"gs_type42_data_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !35, i64 48, !35, i64 56, !6, i64 64, !6, i64 68, !3, i64 72, !35, i64 120, !35, i64 128, !35, i64 136, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !2, i64 168, !2, i64 176, !6, i64 184, !6, i64 188, !2, i64 192, !35, i64 200}
!45 = !{!33, !2, i64 16}
!46 = !{!8, !2, i64 136}
!47 = !{!33, !2, i64 472}
!48 = !{!17, !2, i64 24}
!49 = !{!8, !2, i64 56}
!50 = !{!33, !6, i64 512}
!51 = !{!33, !2, i64 480}
!52 = !{!37, !37, i64 0}
!53 = !{!54, !54, i64 0}
!54 = !{!"short", !3, i64 0}
!55 = !{!56, !2, i64 168}
!56 = !{!"gs_font_dir_s", !2, i64 0, !2, i64 8, !6, i64 16, !6, i64 20, !57, i64 24, !58, i64 56, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !6, i64 192, !2, i64 200, !2, i64 208, !35, i64 216}
!57 = !{!"fm_pair_cache_s", !6, i64 0, !6, i64 4, !2, i64 8, !6, i64 16, !6, i64 20, !6, i64 24}
!58 = !{!"char_cache_s", !2, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !2, i64 72, !2, i64 80}
!59 = !{!17, !2, i64 0}
!60 = !{!56, !2, i64 184}
!61 = !{!62, !2, i64 8}
!62 = !{!"gx_ttfMemory_s", !63, i64 0, !2, i64 24}
!63 = !{!"ttfMemory_s", !2, i64 0, !2, i64 8, !2, i64 16}
!64 = !{!62, !2, i64 0}
!65 = !{!62, !2, i64 16}
!66 = !{!62, !2, i64 24}
!67 = !{!17, !2, i64 64}
!68 = !{!56, !2, i64 176}
!69 = !{!41, !42, i64 0}
!70 = !{!41, !42, i64 8}
!71 = !{!72, !6, i64 124}
!72 = !{!"ttfFont_s", !73, i64 0, !73, i64 8, !73, i64 16, !73, i64 24, !73, i64 32, !73, i64 40, !73, i64 48, !73, i64 56, !73, i64 64, !73, i64 72, !73, i64 80, !73, i64 88, !54, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !6, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184}
!73 = !{!"", !6, i64 0, !6, i64 4}
!74 = !{!75, !6, i64 0}
!75 = !{!"gs_log2_scale_point_s", !6, i64 0, !6, i64 4}
!76 = !{!75, !6, i64 4}
!77 = !{!33, !2, i64 24}
!78 = !{!36, !37, i64 0}
!79 = !{!36, !37, i64 4}
!80 = !{!36, !37, i64 8}
!81 = !{!36, !37, i64 12}
!82 = !{!36, !37, i64 16}
!83 = !{!36, !37, i64 20}
!84 = !{!33, !2, i64 64}
!85 = !{!33, !6, i64 636}
!86 = !{!33, !6, i64 372}
!87 = !{!3, !3, i64 0}
!88 = !{!72, !6, i64 128}
!89 = !{!33, !6, i64 632}
!90 = !{!91, !42, i64 0}
!91 = !{!"", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40}
!92 = !{!91, !42, i64 8}
!93 = !{!91, !42, i64 16}
!94 = !{!91, !42, i64 24}
!95 = !{!91, !42, i64 32}
!96 = !{!91, !42, i64 40}
!97 = !{!98, !6, i64 0}
!98 = !{!"gx_ttfExport_s", !99, i64 0, !2, i64 64, !100, i64 72, !6, i64 80, !6, i64 84}
!99 = !{!"ttfExport_s", !6, i64 0, !6, i64 4, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!100 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!101 = !{!98, !6, i64 4}
!102 = !{!98, !2, i64 8}
!103 = !{!98, !2, i64 16}
!104 = !{!98, !2, i64 24}
!105 = !{!98, !2, i64 32}
!106 = !{!98, !2, i64 40}
!107 = !{!98, !2, i64 48}
!108 = !{!98, !2, i64 56}
!109 = !{!98, !6, i64 80}
!110 = !{!98, !2, i64 64}
!111 = !{!98, !6, i64 72}
!112 = !{!98, !6, i64 76}
!113 = !{!98, !6, i64 84}
!114 = !{!33, !6, i64 148}
!115 = !{!56, !2, i64 200}
!116 = !{!117, !42, i64 0}
!117 = !{!"", !42, i64 0, !42, i64 8}
!118 = !{!117, !42, i64 8}
!119 = !{!120, !54, i64 18}
!120 = !{!"", !2, i64 0, !2, i64 8, !54, i64 16, !54, i64 18, !100, i64 20, !100, i64 28, !100, i64 36}
!121 = !{!120, !6, i64 28}
!122 = !{!120, !6, i64 32}
!123 = !{!120, !6, i64 36}
!124 = !{!120, !6, i64 40}
!125 = !{!120, !6, i64 20}
!126 = !{!120, !6, i64 24}
!127 = !{!128, !2, i64 48}
!128 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !129, i64 56, !91, i64 96}
!129 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !73, i64 12, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36}
!130 = !{!72, !54, i64 96}
!131 = !{!42, !42, i64 0}
!132 = !{!128, !42, i64 96}
!133 = !{!128, !42, i64 104}
!134 = !{!128, !42, i64 112}
!135 = !{!128, !42, i64 120}
!136 = !{!128, !42, i64 128}
!137 = !{!128, !42, i64 136}
!138 = !{!139, !6, i64 24}
!139 = !{!"gs_matrix_fixed_s", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!140 = !{!139, !6, i64 28}
!141 = !{!142, !6, i64 148}
!142 = !{!"", !143, i64 0, !6, i64 9856, !6, i64 9860}
!143 = !{!"t1_hinter_s", !144, i64 0, !144, i64 24, !6, i64 48, !35, i64 56, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !6, i64 128, !6, i64 132, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !6, i64 180, !6, i64 184, !3, i64 188, !2, i64 5472, !3, i64 5480, !2, i64 7520, !3, i64 7528, !2, i64 7648, !3, i64 7656, !2, i64 7696, !3, i64 7704, !2, i64 7744, !3, i64 7752, !3, i64 7856, !3, i64 7872, !2, i64 7928, !3, i64 7936, !2, i64 8176, !3, i64 8184, !2, i64 9624, !3, i64 9632, !3, i64 9640, !6, i64 9648, !6, i64 9652, !6, i64 9656, !6, i64 9660, !6, i64 9664, !6, i64 9668, !6, i64 9672, !6, i64 9676, !6, i64 9680, !6, i64 9684, !6, i64 9688, !6, i64 9692, !6, i64 9696, !6, i64 9700, !6, i64 9704, !6, i64 9708, !6, i64 9712, !6, i64 9716, !6, i64 9720, !6, i64 9724, !6, i64 9728, !6, i64 9732, !6, i64 9736, !42, i64 9744, !42, i64 9752, !42, i64 9760, !42, i64 9768, !42, i64 9776, !42, i64 9784, !6, i64 9792, !6, i64 9796, !6, i64 9800, !6, i64 9804, !6, i64 9808, !6, i64 9812, !6, i64 9816, !6, i64 9820, !6, i64 9824, !6, i64 9828, !6, i64 9832, !6, i64 9836, !2, i64 9840, !2, i64 9848}
!144 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20}
!145 = !{!146, !2, i64 24}
!146 = !{!"gx_device_spot_analyzer_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !147, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !148, i64 96, !150, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !35, i64 928, !35, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !35, i64 968, !35, i64 976, !151, i64 984, !6, i64 1052, !6, i64 1056, !152, i64 1064, !2, i64 1104, !3, i64 1112, !154, i64 1120, !155, i64 1144, !6, i64 1728, !2, i64 1736, !2, i64 1744, !2, i64 1752, !2, i64 1760, !2, i64 1768, !2, i64 1776, !6, i64 1784, !6, i64 1788, !2, i64 1792, !2, i64 1800, !2, i64 1808, !6, i64 1816, !6, i64 1820}
!147 = !{!"rc_header_s", !35, i64 0, !2, i64 8, !2, i64 16}
!148 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !54, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !149, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !35, i64 704, !6, i64 712}
!149 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!150 = !{!"gx_device_cached_colors_s", !35, i64 0, !35, i64 8}
!151 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!152 = !{!"gdev_space_params_s", !35, i64 0, !35, i64 8, !153, i64 16, !6, i64 32, !3, i64 36}
!153 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !35, i64 8}
!154 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!155 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!156 = !{!157, !2, i64 8}
!157 = !{!"gs_imager_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !158, i64 24, !6, i64 128, !139, i64 132, !6, i64 168, !41, i64 176, !41, i64 192, !6, i64 208, !6, i64 212, !54, i64 216, !3, i64 220, !160, i64 224, !160, i64 228, !161, i64 232, !35, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !37, i64 296, !100, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !37, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !162, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !163, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !163, i64 1336}
!158 = !{!"gx_line_params_s", !37, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20, !37, i64 24, !37, i64 28, !37, i64 32, !6, i64 36, !36, i64 40, !159, i64 64}
!159 = !{!"gx_dash_params_s", !2, i64 0, !6, i64 8, !37, i64 12, !6, i64 16, !37, i64 20, !6, i64 24, !6, i64 28, !37, i64 32}
!160 = !{!"gs_transparency_source_s", !37, i64 0}
!161 = !{!"gs_xstate_trans_flags", !6, i64 0, !6, i64 4}
!162 = !{!"gx_transfer_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !2, i64 56}
!163 = !{!"gs_devicen_color_map_s", !6, i64 0, !3, i64 4, !6, i64 8, !6, i64 12, !35, i64 16, !3, i64 24}
!164 = !{!35, !35, i64 0}
!165 = !{!166, !2, i64 0}
!166 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !167, i64 352, !6, i64 360, !168, i64 368, !170, i64 632}
!167 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!168 = !{!"gs_client_color_s", !2, i64 0, !169, i64 8}
!169 = !{!"gs_paint_color_s", !3, i64 0}
!170 = !{!"_mask", !171, i64 0, !35, i64 8, !2, i64 16}
!171 = !{!"mp_", !6, i64 0, !6, i64 4}
!172 = !{!166, !6, i64 360}
!173 = !{!174, !6, i64 0}
!174 = !{!"gx_fill_params_s", !6, i64 0, !100, i64 4, !37, i64 12}
!175 = !{!174, !6, i64 8}
!176 = !{!174, !6, i64 4}
!177 = !{!178, !6, i64 8}
!178 = !{!"gs_fixed_rect_s", !100, i64 0, !100, i64 8}
!179 = !{!178, !6, i64 0}
!180 = !{!178, !6, i64 12}
!181 = !{!178, !6, i64 4}
!182 = !{!174, !37, i64 12}
!183 = !{!142, !6, i64 9856}
!184 = !{!146, !6, i64 1816}
!185 = !{!146, !6, i64 1820}
!186 = !{!142, !6, i64 9860}
!187 = !{!146, !2, i64 1336}
!188 = !{!189, !2, i64 56}
!189 = !{!"gx_path_s", !190, i64 0, !2, i64 40, !3, i64 48, !2, i64 56, !2, i64 64, !178, i64 72, !2, i64 88, !3, i64 96, !3, i64 97, !3, i64 98, !3, i64 99, !3, i64 100, !6, i64 104, !6, i64 108, !100, i64 112, !2, i64 120}
!190 = !{!"gx_path_segments_s", !147, i64 0, !191, i64 24}
!191 = !{!"psc_", !2, i64 0, !2, i64 8}
!192 = !{!190, !2, i64 24}
!193 = !{!189, !6, i64 76}
!194 = !{!189, !6, i64 72}
!195 = !{!189, !6, i64 84}
!196 = !{!189, !6, i64 80}
!197 = !{!198, !54, i64 16}
!198 = !{!"segment_s", !2, i64 0, !2, i64 8, !54, i64 16, !54, i64 18, !100, i64 20}
!199 = !{!198, !6, i64 24}
!200 = !{!198, !6, i64 20}
!201 = !{!198, !2, i64 8}
!202 = !{!203, !6, i64 32}
!203 = !{!"gx_san_sect_s", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !2, i64 16, !2, i64 24, !6, i64 32}
!204 = !{!203, !6, i64 0}
!205 = !{!203, !6, i64 8}
!206 = !{i64 0, i64 4, !5, i64 4, i64 4, !5}
!207 = !{!100, !6, i64 0}
!208 = !{!100, !6, i64 4}
