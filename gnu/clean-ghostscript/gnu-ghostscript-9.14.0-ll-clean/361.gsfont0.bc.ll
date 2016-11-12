; ModuleID = './gsfont0.bc'
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
%struct.gx_path_s = type opaque
%struct.gs_text_enum_s = type { %struct.gs_text_params_s, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_procs_s*, %struct.rc_header_s, i8*, %struct.gs_font_s*, i64, i32, %struct.gs_log2_scale_point_s, %struct.cached_fm_pair_s*, i32, i32, %struct.gx_font_stack_s, i32, i32, i32, %struct.gs_point_s, i64, i32, %struct.gs_log2_scale_point_s, %struct.gs_point_s, %struct.gs_text_returned_s }
%struct.gs_text_params_s = type { i32, %union.sd_, i32, %struct.gs_point_s, %struct.gs_point_s, %union.s_, float*, float*, i32 }
%union.sd_ = type { i8* }
%union.s_ = type { i64 }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
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
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.gs_get_bits_params_s = type opaque
%struct.gs_composite_s = type opaque
%struct.gs_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32 }
%struct.gs_param_list_procs_s = type { i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)*, i32 (%struct.gs_param_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*)* }
%struct.gs_param_typed_value_s = type { %union.gs_param_value_s, i32 }
%union.gs_param_value_s = type { %struct.gs_param_string_s }
%struct.gs_param_string_s = type { i8*, i32, i32 }
%struct.gs_param_collection_s = type { %struct.gs_param_list_s*, i32 }
%union.gs_param_enumerator_s = type { i64 }
%struct.gs_transparency_group_params_s = type { %struct.gs_color_space_s*, i32, i32, i32, i32, i32, i32, i32, i64, %struct.cmm_profile_s* }
%struct.gx_transparency_mask_params_s = type { i32, i32, i32, i32, [64 x float], float, i32, i32, i32, i32, [256 x i8], i64, %struct.cmm_profile_s* }
%struct.gx_cm_color_map_procs_s = type { void (%struct.gx_device_s*, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* }
%struct.gs_pattern1_instance_s = type opaque
%struct.gs_fill_attributes_s = type { %struct.gs_fixed_rect_s*, i32, %struct.gx_device_halftone_s*, i32, i32, i32, %struct.patch_fill_state_s* }
%struct.gx_device_halftone_s = type opaque
%struct.patch_fill_state_s = type opaque
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.gs_imager_state_s = type opaque
%struct.gx_device_color_s = type { %struct.gx_device_color_type_s*, %union._c, %struct.gs_int_point_s, i32, %struct.gs_client_color_s, %struct._mask }
%struct.gx_device_color_type_s = type opaque
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type opaque
%struct.gx_clip_path_s = type opaque
%struct.gs_text_enum_procs_s = type { i32 (%struct.gs_text_enum_s*, %struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_point_s*)*, i32 (%struct.gs_text_enum_s*, double*, i32)*, i32 (%struct.gs_text_enum_s*)*, void (%struct.gs_text_enum_s*, i8*)* }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.cached_fm_pair_s = type { %struct.gs_font_s*, %struct.gs_uid_s, i32, i32, float, float, float, float, i32, i32, %struct.gx_xfont_s*, %struct.gs_memory_s*, i32, %struct.ttfFont_s*, %struct.gx_ttfReader_s*, i32, i32, i32 }
%struct.gs_uid_s = type { i64, i64* }
%struct.gx_xfont_s = type opaque
%struct.ttfFont_s = type opaque
%struct.gx_ttfReader_s = type opaque
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
%struct.ttfInterpreter_s = type opaque
%struct.gx_ttfMemory_s = type opaque
%struct.gx_device_spot_analyzer_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, {}*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.gs_font_type0_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_type0_data_s }
%struct.gs_type0_data_s = type { i32, i8, i8, i8, %struct.gs_const_string_s, i32, i32, i32*, i32, %struct.gs_font_s**, i32, %struct.gs_cmap_s* }
%struct.gs_cmap_s = type opaque
%struct.gc_procs_common_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)* }
%struct.gs_string_s = type { i8*, i32 }

@.str = private unnamed_addr constant [14 x i8] c"gs_font_type0\00", align 1
@st_gs_font_type0 = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 448, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @font_type0_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @font_type0_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* @gs_font_finalize, i8* null }, align 8
@st_gs_font = external constant %struct.gs_memory_struct_type_s, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@ptr_const_string_procs = external constant %struct.gs_ptr_procs_s, align 8
@st_gs_font_ptr_element = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"gs_type0_adjust_font(FDepVector)\00", align 1

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @font_type0_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pfont = alloca %struct.gs_font_type0_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_type0_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_font_type0_s*
  store %struct.gs_font_type0_s* %2, %struct.gs_font_type0_s** %pfont, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !5
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.4
  ]

sw.default:                                       ; preds = %entry
  %4 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_gs_font, i32 0, i32 4), align 8, !tbaa !7
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %7 = load i32, i32* %size.addr, align 4, !tbaa !5
  %8 = load i32, i32* %index.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %8, 3
  %9 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %10 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %4(%struct.gs_memory_s* %5, i8* %6, i32 %7, i32 %sub, %struct.enum_ptr_s* %9, %struct.gs_memory_struct_type_s* @st_gs_font, %struct.gc_state_s* %10) #4
  store %struct.gs_ptr_procs_s* %call, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %11 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %12 = bitcast i8* %11 to %struct.gs_font_type0_s*
  %data = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %12, i32 0, i32 23
  %Encoding = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data, i32 0, i32 7
  %13 = load i32*, i32** %Encoding, align 8, !tbaa !9
  %14 = bitcast i32* %13 to i8*
  %15 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %15, i32 0, i32 0
  store i8* %14, i8** %ptr, align 8, !tbaa !19
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.1:                                          ; preds = %entry
  %16 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %17 = bitcast i8* %16 to %struct.gs_font_type0_s*
  %data2 = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %17, i32 0, i32 23
  %FDepVector = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data2, i32 0, i32 9
  %18 = load %struct.gs_font_s**, %struct.gs_font_s*** %FDepVector, align 8, !tbaa !21
  %19 = bitcast %struct.gs_font_s** %18 to i8*
  %20 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr3 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %20, i32 0, i32 0
  store i8* %19, i8** %ptr3, align 8, !tbaa !19
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.4:                                          ; preds = %entry
  %21 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %pfont, align 8, !tbaa !1
  %data5 = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %21, i32 0, i32 23
  %FMapType = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data5, i32 0, i32 0
  %22 = load i32, i32* %FMapType, align 4, !tbaa !22
  switch i32 %22, label %sw.default.17 [
    i32 6, label %sw.bb.6
    i32 9, label %sw.bb.14
  ]

sw.bb.6:                                          ; preds = %sw.bb.4
  %23 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %24 = bitcast i8* %23 to %struct.gs_font_type0_s*
  %data7 = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %24, i32 0, i32 23
  %SubsVector = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data7, i32 0, i32 4
  %data8 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %SubsVector, i32 0, i32 0
  %25 = load i8*, i8** %data8, align 8, !tbaa !23
  %26 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr9 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %26, i32 0, i32 0
  store i8* %25, i8** %ptr9, align 8, !tbaa !19
  %27 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %28 = bitcast i8* %27 to %struct.gs_font_type0_s*
  %data10 = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %28, i32 0, i32 23
  %SubsVector11 = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data10, i32 0, i32 4
  %size12 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %SubsVector11, i32 0, i32 1
  %29 = load i32, i32* %size12, align 4, !tbaa !24
  %30 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %size13 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %30, i32 0, i32 1
  store i32 %29, i32* %size13, align 4, !tbaa !25
  store %struct.gs_ptr_procs_s* @ptr_const_string_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.14:                                         ; preds = %sw.bb.4
  %31 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %32 = bitcast i8* %31 to %struct.gs_font_type0_s*
  %data15 = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %32, i32 0, i32 23
  %CMap = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data15, i32 0, i32 11
  %33 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %CMap, align 8, !tbaa !26
  %34 = bitcast %struct.gs_cmap_s* %33 to i8*
  %35 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr16 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %35, i32 0, i32 0
  store i8* %34, i8** %ptr16, align 8, !tbaa !19
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default.17:                                    ; preds = %sw.bb.4
  %36 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr18 = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %36, i32 0, i32 0
  store i8* null, i8** %ptr18, align 8, !tbaa !19
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.default.17, %sw.bb.14, %sw.bb.6, %sw.bb.1, %sw.bb, %sw.default
  %37 = bitcast %struct.gs_font_type0_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #2
  %38 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %38
}

; Function Attrs: nounwind uwtable
define internal void @font_type0_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pfont = alloca %struct.gs_font_type0_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_type0_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gs_font_type0_s*
  store %struct.gs_font_type0_s* %2, %struct.gs_font_type0_s** %pfont, align 8, !tbaa !1
  %3 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_gs_font, i32 0, i32 5), align 8, !tbaa !27
  %4 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %5 = load i32, i32* %size.addr, align 4, !tbaa !5
  %6 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %3(i8* %4, i32 %5, %struct.gs_memory_struct_type_s* @st_gs_font, %struct.gc_state_s* %6) #4
  %7 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gc_state_s* %7 to %struct.gc_procs_common_s**
  %9 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %8, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %9, i32 0, i32 0
  %10 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !28
  %11 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %12 = bitcast i8* %11 to %struct.gs_font_type0_s*
  %data = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %12, i32 0, i32 23
  %Encoding = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data, i32 0, i32 7
  %13 = load i32*, i32** %Encoding, align 8, !tbaa !9
  %14 = bitcast i32* %13 to i8*
  %15 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %10(i8* %14, %struct.gc_state_s* %15) #4
  %16 = bitcast i8* %call to i32*
  %17 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %18 = bitcast i8* %17 to %struct.gs_font_type0_s*
  %data1 = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %18, i32 0, i32 23
  %Encoding2 = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data1, i32 0, i32 7
  store i32* %16, i32** %Encoding2, align 8, !tbaa !9
  %19 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %20 = bitcast %struct.gc_state_s* %19 to %struct.gc_procs_common_s**
  %21 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %20, align 8, !tbaa !1
  %reloc_struct_ptr3 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %21, i32 0, i32 0
  %22 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr3, align 8, !tbaa !28
  %23 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %24 = bitcast i8* %23 to %struct.gs_font_type0_s*
  %data4 = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %24, i32 0, i32 23
  %FDepVector = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data4, i32 0, i32 9
  %25 = load %struct.gs_font_s**, %struct.gs_font_s*** %FDepVector, align 8, !tbaa !21
  %26 = bitcast %struct.gs_font_s** %25 to i8*
  %27 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call5 = call i8* %22(i8* %26, %struct.gc_state_s* %27) #4
  %28 = bitcast i8* %call5 to %struct.gs_font_s**
  %29 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %30 = bitcast i8* %29 to %struct.gs_font_type0_s*
  %data6 = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %30, i32 0, i32 23
  %FDepVector7 = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data6, i32 0, i32 9
  store %struct.gs_font_s** %28, %struct.gs_font_s*** %FDepVector7, align 8, !tbaa !21
  %31 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %pfont, align 8, !tbaa !1
  %data8 = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %31, i32 0, i32 23
  %FMapType = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data8, i32 0, i32 0
  %32 = load i32, i32* %FMapType, align 4, !tbaa !22
  switch i32 %32, label %sw.default [
    i32 6, label %sw.bb
    i32 9, label %sw.bb.10
  ]

sw.bb:                                            ; preds = %entry
  %33 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %34 = bitcast %struct.gc_state_s* %33 to %struct.gc_procs_common_s**
  %35 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %34, align 8, !tbaa !1
  %reloc_const_string = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %35, i32 0, i32 2
  %36 = load void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)** %reloc_const_string, align 8, !tbaa !30
  %37 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %38 = bitcast i8* %37 to %struct.gs_font_type0_s*
  %data9 = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %38, i32 0, i32 23
  %SubsVector = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data9, i32 0, i32 4
  %39 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %36(%struct.gs_const_string_s* %SubsVector, %struct.gc_state_s* %39) #4
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry
  %40 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %41 = bitcast %struct.gc_state_s* %40 to %struct.gc_procs_common_s**
  %42 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %41, align 8, !tbaa !1
  %reloc_struct_ptr11 = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %42, i32 0, i32 0
  %43 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr11, align 8, !tbaa !28
  %44 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %45 = bitcast i8* %44 to %struct.gs_font_type0_s*
  %data12 = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %45, i32 0, i32 23
  %CMap = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data12, i32 0, i32 11
  %46 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %CMap, align 8, !tbaa !26
  %47 = bitcast %struct.gs_cmap_s* %46 to i8*
  %48 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call13 = call i8* %43(i8* %47, %struct.gc_state_s* %48) #4
  %49 = bitcast i8* %call13 to %struct.gs_cmap_s*
  %50 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %51 = bitcast i8* %50 to %struct.gs_font_type0_s*
  %data14 = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %51, i32 0, i32 23
  %CMap15 = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data14, i32 0, i32 11
  store %struct.gs_cmap_s* %49, %struct.gs_cmap_s** %CMap15, align 8, !tbaa !26
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.10, %sw.bb
  %52 = bitcast %struct.gs_font_type0_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #2
  ret void
}

declare void @gs_font_finalize(%struct.gs_memory_s*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gs_type0_define_font(%struct.gs_font_dir_s* %pdir, %struct.gs_font_s* %pfont) #0 {
entry:
  %retval = alloca i32, align 4
  %pdir.addr = alloca %struct.gs_font_dir_s*, align 8
  %pfont.addr = alloca %struct.gs_font_s*, align 8
  %pmat = alloca %struct.gs_matrix_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_font_dir_s* %pdir, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %pfont, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_matrix_s** %pmat to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %FontMatrix = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %1, i32 0, i32 9
  store %struct.gs_matrix_s* %FontMatrix, %struct.gs_matrix_s** %pmat, align 8, !tbaa !1
  %2 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat, align 8, !tbaa !1
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i32 0, i32 0
  %3 = load float, float* %xx, align 4, !tbaa !31
  %conv = fpext float %3 to double
  %cmp = fcmp oeq double %conv, 1.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat, align 8, !tbaa !1
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %4, i32 0, i32 3
  %5 = load float, float* %yy, align 4, !tbaa !32
  %conv2 = fpext float %5 to double
  %cmp3 = fcmp oeq double %conv2, 1.000000e+00
  br i1 %cmp3, label %land.lhs.true.5, label %if.end

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %6 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat, align 8, !tbaa !1
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %6, i32 0, i32 1
  %7 = load float, float* %xy, align 4, !tbaa !33
  %conv6 = fpext float %7 to double
  %cmp7 = fcmp oeq double %conv6, 0.000000e+00
  br i1 %cmp7, label %land.lhs.true.9, label %if.end

land.lhs.true.9:                                  ; preds = %land.lhs.true.5
  %8 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat, align 8, !tbaa !1
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %8, i32 0, i32 2
  %9 = load float, float* %yx, align 4, !tbaa !34
  %conv10 = fpext float %9 to double
  %cmp11 = fcmp oeq double %conv10, 0.000000e+00
  br i1 %cmp11, label %land.lhs.true.13, label %if.end

land.lhs.true.13:                                 ; preds = %land.lhs.true.9
  %10 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat, align 8, !tbaa !1
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %10, i32 0, i32 4
  %11 = load float, float* %tx, align 4, !tbaa !35
  %conv14 = fpext float %11 to double
  %cmp15 = fcmp oeq double %conv14, 0.000000e+00
  br i1 %cmp15, label %land.lhs.true.17, label %if.end

land.lhs.true.17:                                 ; preds = %land.lhs.true.13
  %12 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat, align 8, !tbaa !1
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %12, i32 0, i32 5
  %13 = load float, float* %ty, align 4, !tbaa !36
  %conv18 = fpext float %13 to double
  %cmp19 = fcmp oeq double %conv18, 0.000000e+00
  br i1 %cmp19, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.17
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.17, %land.lhs.true.13, %land.lhs.true.9, %land.lhs.true.5, %land.lhs.true, %entry
  %14 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %15 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %16 = bitcast %struct.gs_font_s* %15 to %struct.gs_font_type0_s*
  %17 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat, align 8, !tbaa !1
  %call = call i32 @gs_type0_adjust_matrix(%struct.gs_font_dir_s* %14, %struct.gs_font_type0_s* %16, %struct.gs_matrix_s* %17) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %18 = bitcast %struct.gs_matrix_s** %pmat to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #2
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal i32 @gs_type0_adjust_matrix(%struct.gs_font_dir_s* %pdir, %struct.gs_font_type0_s* %pfont, %struct.gs_matrix_s* %pmat) #0 {
entry:
  %retval = alloca i32, align 4
  %pdir.addr = alloca %struct.gs_font_dir_s*, align 8
  %pfont.addr = alloca %struct.gs_font_type0_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %pdep = alloca %struct.gs_font_s**, align 8
  %fdep_size = alloca i32, align 4
  %ptdep = alloca %struct.gs_font_s**, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %code = alloca i32, align 4
  store %struct.gs_font_dir_s* %pdir, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  store %struct.gs_font_type0_s* %pfont, %struct.gs_font_type0_s** %pfont.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_font_s*** %pdep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %pfont.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %1, i32 0, i32 23
  %FDepVector = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data, i32 0, i32 9
  %2 = load %struct.gs_font_s**, %struct.gs_font_s*** %FDepVector, align 8, !tbaa !21
  store %struct.gs_font_s** %2, %struct.gs_font_s*** %pdep, align 8, !tbaa !1
  %3 = bitcast i32* %fdep_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %pfont.addr, align 8, !tbaa !1
  %data1 = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %4, i32 0, i32 23
  %fdep_size2 = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data1, i32 0, i32 10
  %5 = load i32, i32* %fdep_size2, align 4, !tbaa !37
  store i32 %5, i32* %fdep_size, align 4, !tbaa !5
  %6 = bitcast %struct.gs_font_s*** %ptdep to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4, !tbaa !5
  %9 = load i32, i32* %fdep_size, align 4, !tbaa !5
  %cmp = icmp ult i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = zext i32 %10 to i64
  %11 = load %struct.gs_font_s**, %struct.gs_font_s*** %pdep, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gs_font_s*, %struct.gs_font_s** %11, i64 %idxprom
  %12 = load %struct.gs_font_s*, %struct.gs_font_s** %arrayidx, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %12, i32 0, i32 11
  %13 = load i32, i32* %FontType, align 4, !tbaa !38
  %cmp3 = icmp eq i32 %13, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %14, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %15 = load i32, i32* %i, align 4, !tbaa !5
  %16 = load i32, i32* %fdep_size, align 4, !tbaa !5
  %cmp4 = icmp eq i32 %15, %16
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %for.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.37

if.end.6:                                         ; preds = %for.end
  %17 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %pfont.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %17, i32 0, i32 2
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !40
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %18, i32 0, i32 1
  %alloc_struct_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 12
  %19 = load i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct_array, align 8, !tbaa !41
  %20 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %pfont.addr, align 8, !tbaa !1
  %memory7 = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %20, i32 0, i32 2
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory7, align 8, !tbaa !40
  %22 = load i32, i32* %fdep_size, align 4, !tbaa !5
  %call = call i8* %19(%struct.gs_memory_s* %21, i32 %22, %struct.gs_memory_struct_type_s* @st_gs_font_ptr_element, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0)) #4
  %23 = bitcast i8* %call to %struct.gs_font_s**
  store %struct.gs_font_s** %23, %struct.gs_font_s*** %ptdep, align 8, !tbaa !1
  %24 = load %struct.gs_font_s**, %struct.gs_font_s*** %ptdep, align 8, !tbaa !1
  %cmp8 = icmp eq %struct.gs_font_s** %24, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.37

if.end.10:                                        ; preds = %if.end.6
  %25 = load %struct.gs_font_s**, %struct.gs_font_s*** %ptdep, align 8, !tbaa !1
  %26 = bitcast %struct.gs_font_s** %25 to i8*
  %27 = load %struct.gs_font_s**, %struct.gs_font_s*** %pdep, align 8, !tbaa !1
  %28 = bitcast %struct.gs_font_s** %27 to i8*
  %29 = load i32, i32* %fdep_size, align 4, !tbaa !5
  %conv = zext i32 %29 to i64
  %mul = mul i64 8, %conv
  %call11 = call i8* @memcpy(i8* %26, i8* %28, i64 %mul) #5
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.32, %if.end.10
  %30 = load i32, i32* %i, align 4, !tbaa !5
  %31 = load i32, i32* %fdep_size, align 4, !tbaa !5
  %cmp13 = icmp ult i32 %30, %31
  br i1 %cmp13, label %for.body.15, label %for.end.34

for.body.15:                                      ; preds = %for.cond.12
  %32 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom16 = zext i32 %32 to i64
  %33 = load %struct.gs_font_s**, %struct.gs_font_s*** %pdep, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds %struct.gs_font_s*, %struct.gs_font_s** %33, i64 %idxprom16
  %34 = load %struct.gs_font_s*, %struct.gs_font_s** %arrayidx17, align 8, !tbaa !1
  %FontType18 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %34, i32 0, i32 11
  %35 = load i32, i32* %FontType18, align 4, !tbaa !38
  %cmp19 = icmp eq i32 %35, 0
  br i1 %cmp19, label %if.then.21, label %if.end.31

if.then.21:                                       ; preds = %for.body.15
  %36 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #2
  %37 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %38 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom22 = zext i32 %38 to i64
  %39 = load %struct.gs_font_s**, %struct.gs_font_s*** %pdep, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds %struct.gs_font_s*, %struct.gs_font_s** %39, i64 %idxprom22
  %40 = load %struct.gs_font_s*, %struct.gs_font_s** %arrayidx23, align 8, !tbaa !1
  %41 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %42 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom24 = zext i32 %42 to i64
  %43 = load %struct.gs_font_s**, %struct.gs_font_s*** %ptdep, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds %struct.gs_font_s*, %struct.gs_font_s** %43, i64 %idxprom24
  %call26 = call i32 @gs_makefont(%struct.gs_font_dir_s* %37, %struct.gs_font_s* %40, %struct.gs_matrix_s* %41, %struct.gs_font_s** %arrayidx25) #4
  store i32 %call26, i32* %code, align 4, !tbaa !5
  %44 = load i32, i32* %code, align 4, !tbaa !5
  %cmp27 = icmp slt i32 %44, 0
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.then.21
  %45 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %45, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %if.then.21
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.30, %if.then.29
  %46 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.37 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.31

if.end.31:                                        ; preds = %cleanup.cont, %for.body.15
  br label %for.inc.32

for.inc.32:                                       ; preds = %if.end.31
  %47 = load i32, i32* %i, align 4, !tbaa !5
  %inc33 = add i32 %47, 1
  store i32 %inc33, i32* %i, align 4, !tbaa !5
  br label %for.cond.12

for.end.34:                                       ; preds = %for.cond.12
  %48 = load %struct.gs_font_s**, %struct.gs_font_s*** %ptdep, align 8, !tbaa !1
  %49 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %pfont.addr, align 8, !tbaa !1
  %data35 = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %49, i32 0, i32 23
  %FDepVector36 = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data35, i32 0, i32 9
  store %struct.gs_font_s** %48, %struct.gs_font_s*** %FDepVector36, align 8, !tbaa !21
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.37

cleanup.37:                                       ; preds = %for.end.34, %cleanup, %if.then.9, %if.then.5
  %50 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #2
  %51 = bitcast %struct.gs_font_s*** %ptdep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #2
  %52 = bitcast i32* %fdep_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #2
  %53 = bitcast %struct.gs_font_s*** %pdep to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #2
  %54 = load i32, i32* %retval
  ret i32 %54
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @gs_type0_make_font(%struct.gs_font_dir_s* %pdir, %struct.gs_font_s* %pfont, %struct.gs_matrix_s* %pmat, %struct.gs_font_s** %ppfont) #0 {
entry:
  %pdir.addr = alloca %struct.gs_font_dir_s*, align 8
  %pfont.addr = alloca %struct.gs_font_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %ppfont.addr = alloca %struct.gs_font_s**, align 8
  store %struct.gs_font_dir_s* %pdir, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %pfont, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gs_font_s** %ppfont, %struct.gs_font_s*** %ppfont.addr, align 8, !tbaa !1
  %0 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %pdir.addr, align 8, !tbaa !1
  %1 = load %struct.gs_font_s**, %struct.gs_font_s*** %ppfont.addr, align 8, !tbaa !1
  %2 = load %struct.gs_font_s*, %struct.gs_font_s** %1, align 8, !tbaa !1
  %3 = bitcast %struct.gs_font_s* %2 to %struct.gs_font_type0_s*
  %4 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %call = call i32 @gs_type0_adjust_matrix(%struct.gs_font_dir_s* %0, %struct.gs_font_type0_s* %3, %struct.gs_matrix_s* %4) #4
  ret i32 %call
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

declare i32 @gs_makefont(%struct.gs_font_dir_s*, %struct.gs_font_s*, %struct.gs_matrix_s*, %struct.gs_font_s**) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
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
!7 = !{!8, !2, i64 32}
!8 = !{!"gs_memory_struct_type_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!9 = !{!10, !2, i64 408}
!10 = !{!"gs_font_type0_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !11, i64 40, !12, i64 56, !2, i64 64, !2, i64 72, !13, i64 80, !13, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !14, i64 156, !6, i64 160, !15, i64 168, !16, i64 272, !16, i64 324, !17, i64 376}
!11 = !{!"gs_notify_list_s", !2, i64 0, !2, i64 8}
!12 = !{!"long", !3, i64 0}
!13 = !{!"gs_matrix_s", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20}
!14 = !{!"float", !3, i64 0}
!15 = !{!"gs_font_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!16 = !{!"gs_font_name_s", !3, i64 0, !6, i64 48}
!17 = !{!"gs_type0_data_s", !3, i64 0, !3, i64 4, !3, i64 5, !3, i64 6, !18, i64 8, !6, i64 24, !6, i64 28, !2, i64 32, !6, i64 40, !2, i64 48, !6, i64 56, !2, i64 64}
!18 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!19 = !{!20, !2, i64 0}
!20 = !{!"enum_ptr_s", !2, i64 0, !6, i64 8}
!21 = !{!10, !2, i64 424}
!22 = !{!10, !3, i64 376}
!23 = !{!18, !2, i64 0}
!24 = !{!18, !6, i64 8}
!25 = !{!20, !6, i64 8}
!26 = !{!10, !2, i64 440}
!27 = !{!8, !2, i64 40}
!28 = !{!29, !2, i64 0}
!29 = !{!"gc_procs_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!30 = !{!29, !2, i64 16}
!31 = !{!13, !14, i64 0}
!32 = !{!13, !14, i64 12}
!33 = !{!13, !14, i64 4}
!34 = !{!13, !14, i64 8}
!35 = !{!13, !14, i64 16}
!36 = !{!13, !14, i64 20}
!37 = !{!10, !6, i64 432}
!38 = !{!39, !3, i64 128}
!39 = !{!"gs_font_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !11, i64 40, !12, i64 56, !2, i64 64, !2, i64 72, !13, i64 80, !13, i64 104, !3, i64 128, !6, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !6, i64 148, !6, i64 152, !14, i64 156, !6, i64 160, !15, i64 168, !16, i64 272, !16, i64 324}
!40 = !{!10, !2, i64 16}
!41 = !{!42, !2, i64 104}
!42 = !{!"gs_memory_s", !2, i64 0, !43, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!43 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
