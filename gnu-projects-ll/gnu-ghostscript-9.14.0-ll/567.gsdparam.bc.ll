; ModuleID = './gsdparam.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdev_input_media_s = type { [4 x float], i8*, float, i8* }
%struct.gdev_output_media_s = type { i8* }
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
%struct.gx_io_device_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
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
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gx_tile_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16 }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gx_xfont_procs_s = type opaque
%struct.gs_imager_state_s = type opaque
%struct.gx_path_s = type opaque
%struct.gx_fill_params_s = type opaque
%struct.gx_device_color_s = type { %struct.gx_device_color_type_s*, %union._c, %struct.gs_int_point_s, i32, %struct.gs_client_color_s, %struct._mask }
%struct.gx_device_color_type_s = type opaque
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
%struct.gx_device_halftone_s = type opaque
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type opaque
%struct.gs_paint_color_s = type { [64 x float] }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type opaque
%struct.gx_clip_path_s = type opaque
%struct.gx_stroke_params_s = type opaque
%struct.gs_fixed_edge_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image1_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, i32, i32, i32 }
%struct.gx_image_type_s = type opaque
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
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
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gx_image_enum_common_s = type opaque
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.gs_get_bits_params_s = type opaque
%struct.gs_composite_s = type opaque
%struct.gs_text_params_s = type { i32, %union.sd_, i32, %struct.gs_point_s, %struct.gs_point_s, %union.s_, float*, float*, i32 }
%union.sd_ = type { i8* }
%struct.gs_point_s = type { double, double }
%union.s_ = type { i64 }
%struct.gs_font_s = type opaque
%struct.gs_text_enum_s = type { %struct.gs_text_params_s, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_procs_s*, %struct.rc_header_s, i8*, %struct.gs_font_s*, i64, i32, %struct.gs_log2_scale_point_s, %struct.cached_fm_pair_s*, i32, i32, %struct.gx_font_stack_s, i32, i32, i32, %struct.gs_point_s, i64, i32, %struct.gs_log2_scale_point_s, %struct.gs_point_s, %struct.gs_text_returned_s }
%struct.gs_text_enum_procs_s = type { i32 (%struct.gs_text_enum_s*, %struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_point_s*)*, i32 (%struct.gs_text_enum_s*, double*, i32)*, i32 (%struct.gs_text_enum_s*)*, void (%struct.gs_text_enum_s*, i8*)* }
%struct.cached_fm_pair_s = type opaque
%struct.gx_font_stack_s = type { i32, [6 x %struct.gx_font_stack_item_s] }
%struct.gx_font_stack_item_s = type { %struct.gs_font_s*, i32 }
%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.gs_text_returned_s = type { i64, i64, %struct.gs_point_s }
%struct.gs_transparency_group_params_s = type { %struct.gs_color_space_s*, i32, i32, i32, i32, i32, i32, i32, i64, %struct.cmm_profile_s* }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gx_transparency_mask_params_s = type { i32, i32, i32, i32, [64 x float], float, i32, i32, i32, i32, [256 x i8], i64, %struct.cmm_profile_s* }
%struct.gx_cm_color_map_procs_s = type { void (%struct.gx_device_s*, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* }
%struct.gs_pattern1_instance_s = type opaque
%struct.gs_fill_attributes_s = type { %struct.gs_fixed_rect_s*, i32, %struct.gx_device_halftone_s*, i32, i32, i32, %struct.patch_fill_state_s* }
%struct.patch_fill_state_s = type opaque
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.gs_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32 }
%struct.gs_param_list_procs_s = type { i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)*, i32 (%struct.gs_param_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*)* }
%struct.gs_param_typed_value_s = type { %union.gs_param_value_s, i32 }
%union.gs_param_value_s = type { %struct.gs_param_string_s }
%struct.gs_param_string_s = type { i8*, i32, i32 }
%struct.gs_param_collection_s = type { %struct.gs_param_list_s*, i32 }
%union.gs_param_enumerator_s = type { i64 }
%struct.gs_param_float_array_s = type { float*, i32, i32 }
%struct.gs_param_string_array_s = type { %struct.gs_param_string_s*, i32, i32 }
%struct.gs_param_int_array_s = type { i32*, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"OutputDevice\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"PageSize\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"ProcessColorModel\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"HWResolution\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"ImagingBBox\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Margins\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"MaxSeparations\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"NumCopies\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"SeparationColorNames\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"Separations\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"UseCIEColor\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"DeviceGrayToK\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"GrayDetection\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"UseFastColor\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"SimulateOverprint\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"PreBandThreshold\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"OutputICCProfile\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"GraphicICCProfile\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"ImageICCProfile\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"TextICCProfile\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"ProofProfile\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"DeviceLinkProfile\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"ICCOutputColors\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"RenderIntent\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"GraphicIntent\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"ImageIntent\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"TextIntent\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"BlackPtComp\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"GraphicBlackPt\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"ImageBlackPt\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"TextBlackPt\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"KPreserve\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"GraphicKPreserve\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"ImageKPreserve\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"TextKPreserve\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"HWSize\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c".HWMargins\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c".MarginsHWResolution\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c".MediaSize\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"Colors\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"BitsPerPixel\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"GrayValues\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"PageCount\00", align 1
@.str.44 = private unnamed_addr constant [17 x i8] c".IgnoreNumCopies\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"TextAlphaBits\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"GraphicsAlphaBits\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c".LockSafetyParams\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"MaxPatternBitmap\00", align 1
@.str.49 = private unnamed_addr constant [21 x i8] c"PageUsesTransparency\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"MaxBitmap\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"BandBufferSpace\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"BandHeight\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"BandWidth\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"BufferSpace\00", align 1
@.str.55 = private unnamed_addr constant [12 x i8] c"LeadingEdge\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"RedValues\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c"GreenValues\00", align 1
@.str.58 = private unnamed_addr constant [11 x i8] c"BlueValues\00", align 1
@.str.59 = private unnamed_addr constant [12 x i8] c"ColorValues\00", align 1
@.str.60 = private unnamed_addr constant [11 x i8] c"HWColorMap\00", align 1
@gdev_input_media_default = constant %struct.gdev_input_media_s zeroinitializer, align 8
@.str.61 = private unnamed_addr constant [16 x i8] c"InputAttributes\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"MediaColor\00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c"MediaWeight\00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"MediaType\00", align 1
@gdev_output_media_default = constant %struct.gdev_output_media_s zeroinitializer, align 8
@.str.66 = private unnamed_addr constant [17 x i8] c"OutputAttributes\00", align 1
@.str.67 = private unnamed_addr constant [11 x i8] c"OutputType\00", align 1
@gx_default_put_params.profile_types = private unnamed_addr constant [4 x i32] [i32 0, i32 1, i32 2, i32 3], align 16
@.str.68 = private unnamed_addr constant [13 x i8] c"%MediaSource\00", align 1
@.str.69 = private unnamed_addr constant [18 x i8] c"%MediaDestination\00", align 1
@.str.70 = private unnamed_addr constant [19 x i8] c"gx_default_put_icc\00", align 1
@.str.71 = private unnamed_addr constant [29 x i8] c"gx_default_put_icc_colorants\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gs_get_device_or_hw_params(%struct.gx_device_s* %orig_dev, %struct.gs_param_list_s* %plist, i32 %is_hardware) #0 {
entry:
  %retval = alloca i32, align 4
  %orig_dev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %is_hardware.addr = alloca i32, align 4
  %dev = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %orig_dev, %struct.gx_device_s** %orig_dev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i32 %is_hardware, i32* %is_hardware.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %orig_dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 3
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  %tobool = icmp ne %struct.gs_memory_s* %3, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %orig_dev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %4, %struct.gx_device_s** %dev, align 8, !tbaa !1
  br label %if.end.3

if.else:                                          ; preds = %entry
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %orig_dev.addr, align 8, !tbaa !1
  %6 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %6, i32 0, i32 1
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !20
  %call = call i32 @gs_copydevice(%struct.gx_device_s** %dev, %struct.gx_device_s* %5, %struct.gs_memory_s* %7) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %8 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  %9 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.else
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %if.then
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  call void @gx_device_set_procs(%struct.gx_device_s* %10) #5
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 42
  %get_params = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 13
  %12 = load i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)** %get_params, align 8, !tbaa !22
  %cmp4 = icmp eq i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* %12, null
  br i1 %cmp4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end.3
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %procs6 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %13, i32 0, i32 42
  %get_params7 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs6, i32 0, i32 13
  store i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_default_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)** %get_params7, align 8, !tbaa !22
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end.3
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %procs9 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %14, i32 0, i32 42
  %get_page_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs9, i32 0, i32 19
  %15 = load %struct.gx_device_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)** %get_page_device, align 8, !tbaa !23
  %cmp10 = icmp eq %struct.gx_device_s* (%struct.gx_device_s*)* %15, null
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.8
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %procs12 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %16, i32 0, i32 42
  %get_page_device13 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs12, i32 0, i32 19
  store %struct.gx_device_s* (%struct.gx_device_s*)* @gx_default_get_page_device, %struct.gx_device_s* (%struct.gx_device_s*)** %get_page_device13, align 8, !tbaa !23
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.end.8
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %procs15 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 42
  %get_alpha_bits = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs15, i32 0, i32 20
  %18 = load i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i32)** %get_alpha_bits, align 8, !tbaa !24
  %cmp16 = icmp eq i32 (%struct.gx_device_s*, i32)* %18, null
  br i1 %cmp16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %if.end.14
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %procs18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %19, i32 0, i32 42
  %get_alpha_bits19 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs18, i32 0, i32 20
  store i32 (%struct.gx_device_s*, i32)* @gx_default_get_alpha_bits, i32 (%struct.gx_device_s*, i32)** %get_alpha_bits19, align 8, !tbaa !24
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %if.end.14
  %20 = load i32, i32* %is_hardware.addr, align 4, !tbaa !5
  %tobool21 = icmp ne i32 %20, 0
  br i1 %tobool21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.20
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %procs22 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %21, i32 0, i32 42
  %get_hardware_params = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs22, i32 0, i32 41
  %22 = load i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)** %get_hardware_params, align 8, !tbaa !25
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %24 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call23 = call i32 %22(%struct.gx_device_s* %23, %struct.gs_param_list_s* %24) #5
  br label %cond.end

cond.false:                                       ; preds = %if.end.20
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %procs24 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %25, i32 0, i32 42
  %get_params25 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs24, i32 0, i32 13
  %26 = load i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)** %get_params25, align 8, !tbaa !22
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %28 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call26 = call i32 %26(%struct.gx_device_s* %27, %struct.gs_param_list_s* %28) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call23, %cond.true ], [ %call26, %cond.false ]
  store i32 %cond, i32* %code, align 4, !tbaa !5
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %orig_dev.addr, align 8, !tbaa !1
  %cmp27 = icmp ne %struct.gx_device_s* %29, %30
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %cond.end
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  call void @gx_device_retain(%struct.gx_device_s* %31, i32 0) #5
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %cond.end
  %32 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %32, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.29, %if.then.2
  %33 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @gs_copydevice(%struct.gx_device_s**, %struct.gx_device_s*, %struct.gs_memory_s*) #2

declare void @gx_device_set_procs(%struct.gx_device_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gx_default_get_params(%struct.gx_device_s* %dev, %struct.gs_param_list_s* %plist) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %code = alloca i32, align 4
  %seprs = alloca i32, align 4
  %dns = alloca %struct.gs_param_string_s, align 8
  %pcms = alloca %struct.gs_param_string_s, align 8
  %profile_array = alloca [4 x %struct.gs_param_string_s], align 16
  %proof_profile = alloca %struct.gs_param_string_s, align 8
  %link_profile = alloca %struct.gs_param_string_s, align 8
  %icc_colorants = alloca %struct.gs_param_string_s, align 8
  %profile_intents = alloca [4 x i32], align 16
  %blackptcomps = alloca [4 x i32], align 16
  %blackpreserve = alloca [4 x i32], align 16
  %devicegraytok = alloca i32, align 4
  %graydetection = alloca i32, align 4
  %usefastcolor = alloca i32, align 4
  %sim_overprint = alloca i32, align 4
  %prebandthreshold = alloca i32, align 4
  %k = alloca i32, align 4
  %msa = alloca %struct.gs_param_float_array_s, align 8
  %ibba = alloca %struct.gs_param_float_array_s, align 8
  %hwra = alloca %struct.gs_param_float_array_s, align 8
  %ma = alloca %struct.gs_param_float_array_s, align 8
  %scna = alloca %struct.gs_param_string_array_s, align 8
  %null_str = alloca [1 x i8], align 1
  %colors = alloca i32, align 4
  %mns = alloca i32, align 4
  %depth = alloca i32, align 4
  %GrayValues = alloca i32, align 4
  %HWSize = alloca [2 x i32], align 4
  %hwsa = alloca %struct.gs_param_int_array_s, align 8
  %hwma = alloca %struct.gs_param_float_array_s, align 8
  %mhwra = alloca %struct.gs_param_float_array_s, align 8
  %dev_profile = alloca %struct.cmm_dev_profile_s*, align 8
  %cms = alloca i8*, align 8
  %colorant_names = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %leadingedge = alloca i32, align 4
  %RGBValues = alloca i32, align 4
  %ColorValues = alloca i64, align 8
  %palette = alloca [768 x i8], align 16
  %hwcms = alloca %struct.gs_param_string_s, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %seprs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %seprs, align 4, !tbaa !5
  %2 = bitcast %struct.gs_param_string_s* %dns to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #1
  %3 = bitcast %struct.gs_param_string_s* %pcms to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = bitcast [4 x %struct.gs_param_string_s]* %profile_array to i8*
  call void @llvm.lifetime.start(i64 64, i8* %4) #1
  %5 = bitcast %struct.gs_param_string_s* %proof_profile to i8*
  call void @llvm.lifetime.start(i64 16, i8* %5) #1
  %6 = bitcast %struct.gs_param_string_s* %link_profile to i8*
  call void @llvm.lifetime.start(i64 16, i8* %6) #1
  %7 = bitcast %struct.gs_param_string_s* %icc_colorants to i8*
  call void @llvm.lifetime.start(i64 16, i8* %7) #1
  %8 = bitcast [4 x i32]* %profile_intents to i8*
  call void @llvm.lifetime.start(i64 16, i8* %8) #1
  %9 = bitcast [4 x i32]* %blackptcomps to i8*
  call void @llvm.lifetime.start(i64 16, i8* %9) #1
  %10 = bitcast [4 x i32]* %blackpreserve to i8*
  call void @llvm.lifetime.start(i64 16, i8* %10) #1
  %11 = bitcast i32* %devicegraytok to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 1, i32* %devicegraytok, align 4, !tbaa !5
  %12 = bitcast i32* %graydetection to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 0, i32* %graydetection, align 4, !tbaa !5
  %13 = bitcast i32* %usefastcolor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  store i32 0, i32* %usefastcolor, align 4, !tbaa !5
  %14 = bitcast i32* %sim_overprint to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  store i32 1, i32* %sim_overprint, align 4, !tbaa !5
  %15 = bitcast i32* %prebandthreshold to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i32 1, i32* %prebandthreshold, align 4, !tbaa !5
  %16 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast %struct.gs_param_float_array_s* %msa to i8*
  call void @llvm.lifetime.start(i64 16, i8* %17) #1
  %18 = bitcast %struct.gs_param_float_array_s* %ibba to i8*
  call void @llvm.lifetime.start(i64 16, i8* %18) #1
  %19 = bitcast %struct.gs_param_float_array_s* %hwra to i8*
  call void @llvm.lifetime.start(i64 16, i8* %19) #1
  %20 = bitcast %struct.gs_param_float_array_s* %ma to i8*
  call void @llvm.lifetime.start(i64 16, i8* %20) #1
  %21 = bitcast %struct.gs_param_string_array_s* %scna to i8*
  call void @llvm.lifetime.start(i64 16, i8* %21) #1
  %22 = bitcast [1 x i8]* %null_str to i8*
  call void @llvm.lifetime.start(i64 1, i8* %22) #1
  %23 = bitcast [1 x i8]* %null_str to i8*
  call void @llvm.memset.p0i8.i64(i8* %23, i8 0, i64 1, i32 1, i1 false)
  %24 = bitcast i32* %colors to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %25, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %26 = load i32, i32* %num_components, align 4, !tbaa !26
  store i32 %26, i32* %colors, align 4, !tbaa !5
  %27 = bitcast i32* %mns to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %28, i32 0, i32 11
  %max_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info1, i32 0, i32 0
  %29 = load i32, i32* %max_components, align 4, !tbaa !27
  store i32 %29, i32* %mns, align 4, !tbaa !5
  %30 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %31, i32 0, i32 11
  %depth3 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info2, i32 0, i32 3
  %32 = load i16, i16* %depth3, align 2, !tbaa !28
  %conv = zext i16 %32 to i32
  store i32 %conv, i32* %depth, align 4, !tbaa !5
  %33 = bitcast i32* %GrayValues to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  %34 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info4 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %34, i32 0, i32 11
  %max_gray = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info4, i32 0, i32 5
  %35 = load i32, i32* %max_gray, align 4, !tbaa !29
  %add = add i32 %35, 1
  store i32 %add, i32* %GrayValues, align 4, !tbaa !5
  %36 = bitcast [2 x i32]* %HWSize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %36) #1
  %37 = bitcast %struct.gs_param_int_array_s* %hwsa to i8*
  call void @llvm.lifetime.start(i64 16, i8* %37) #1
  %38 = bitcast %struct.gs_param_float_array_s* %hwma to i8*
  call void @llvm.lifetime.start(i64 16, i8* %38) #1
  %39 = bitcast %struct.gs_param_float_array_s* %mhwra to i8*
  call void @llvm.lifetime.start(i64 16, i8* %39) #1
  %40 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #1
  %41 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %dname = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %41, i32 0, i32 2
  %42 = load i8*, i8** %dname, align 8, !tbaa !30
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %dns, i32 0, i32 0
  store i8* %42, i8** %data, align 8, !tbaa !31
  %data5 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %dns, i32 0, i32 0
  %43 = load i8*, i8** %data5, align 8, !tbaa !31
  %call = call i64 @strlen(i8* %43) #6
  %conv6 = trunc i64 %call to i32
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %dns, i32 0, i32 1
  store i32 %conv6, i32* %size, align 4, !tbaa !33
  %persistent = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %dns, i32 0, i32 2
  store i32 1, i32* %persistent, align 4, !tbaa !34
  %44 = bitcast i8** %cms to i8*
  call void @llvm.lifetime.start(i64 8, i8* %44) #1
  %45 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info7 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %45, i32 0, i32 11
  %cm_name = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info7, i32 0, i32 14
  %46 = load i8*, i8** %cm_name, align 8, !tbaa !35
  store i8* %46, i8** %cms, align 8, !tbaa !1
  %47 = load i8*, i8** %cms, align 8, !tbaa !1
  %cmp = icmp ne i8* %47, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %48 = load i8*, i8** %cms, align 8, !tbaa !1
  %49 = load i8, i8* %48, align 1, !tbaa !36
  %conv9 = sext i8 %49 to i32
  %cmp10 = icmp ne i32 %conv9, 0
  br i1 %cmp10, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %50 = load i8*, i8** %cms, align 8, !tbaa !1
  %data12 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pcms, i32 0, i32 0
  store i8* %50, i8** %data12, align 8, !tbaa !31
  %data13 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pcms, i32 0, i32 0
  %51 = load i8*, i8** %data13, align 8, !tbaa !31
  %call14 = call i64 @strlen(i8* %51) #6
  %conv15 = trunc i64 %call14 to i32
  %size16 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pcms, i32 0, i32 1
  store i32 %conv15, i32* %size16, align 4, !tbaa !33
  %persistent17 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pcms, i32 0, i32 2
  store i32 1, i32* %persistent17, align 4, !tbaa !34
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %data18 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pcms, i32 0, i32 0
  store i8* null, i8** %data18, align 8, !tbaa !31
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %52 = bitcast i8** %cms to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %53 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %53, i32 0, i32 22
  %arraydecay = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i32 0
  %data19 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %hwra, i32 0, i32 0
  store float* %arraydecay, float** %data19, align 8, !tbaa !37
  %size20 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %hwra, i32 0, i32 1
  store i32 2, i32* %size20, align 4, !tbaa !39
  %persistent21 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %hwra, i32 0, i32 2
  store i32 0, i32* %persistent21, align 4, !tbaa !40
  %54 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %MediaSize = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %54, i32 0, i32 19
  %arraydecay22 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize, i32 0, i32 0
  %data23 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %msa, i32 0, i32 0
  store float* %arraydecay22, float** %data23, align 8, !tbaa !37
  %size24 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %msa, i32 0, i32 1
  store i32 2, i32* %size24, align 4, !tbaa !39
  %persistent25 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %msa, i32 0, i32 2
  store i32 0, i32* %persistent25, align 4, !tbaa !40
  %55 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %ImagingBBox = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %55, i32 0, i32 20
  %arraydecay26 = getelementptr inbounds [4 x float], [4 x float]* %ImagingBBox, i32 0, i32 0
  %data27 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %ibba, i32 0, i32 0
  store float* %arraydecay26, float** %data27, align 8, !tbaa !37
  %size28 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %ibba, i32 0, i32 1
  store i32 4, i32* %size28, align 4, !tbaa !39
  %persistent29 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %ibba, i32 0, i32 2
  store i32 0, i32* %persistent29, align 4, !tbaa !40
  %56 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %Margins = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %56, i32 0, i32 24
  %arraydecay30 = getelementptr inbounds [2 x float], [2 x float]* %Margins, i32 0, i32 0
  %data31 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %ma, i32 0, i32 0
  store float* %arraydecay30, float** %data31, align 8, !tbaa !37
  %size32 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %ma, i32 0, i32 1
  store i32 2, i32* %size32, align 4, !tbaa !39
  %persistent33 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %ma, i32 0, i32 2
  store i32 0, i32* %persistent33, align 4, !tbaa !40
  %data34 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %scna, i32 0, i32 0
  store %struct.gs_param_string_s* null, %struct.gs_param_string_s** %data34, align 8, !tbaa !41
  %size35 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %scna, i32 0, i32 1
  store i32 0, i32* %size35, align 4, !tbaa !43
  %persistent36 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %scna, i32 0, i32 2
  store i32 0, i32* %persistent36, align 4, !tbaa !44
  %57 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %57, i32 0, i32 13
  %58 = load i32, i32* %width, align 4, !tbaa !45
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %HWSize, i32 0, i64 0
  store i32 %58, i32* %arrayidx, align 4, !tbaa !5
  %59 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %59, i32 0, i32 14
  %60 = load i32, i32* %height, align 4, !tbaa !46
  %arrayidx37 = getelementptr inbounds [2 x i32], [2 x i32]* %HWSize, i32 0, i64 1
  store i32 %60, i32* %arrayidx37, align 4, !tbaa !5
  %arraydecay38 = getelementptr inbounds [2 x i32], [2 x i32]* %HWSize, i32 0, i32 0
  %data39 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %hwsa, i32 0, i32 0
  store i32* %arraydecay38, i32** %data39, align 8, !tbaa !47
  %size40 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %hwsa, i32 0, i32 1
  store i32 2, i32* %size40, align 4, !tbaa !49
  %persistent41 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %hwsa, i32 0, i32 2
  store i32 0, i32* %persistent41, align 4, !tbaa !50
  %61 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWMargins = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %61, i32 0, i32 25
  %arraydecay42 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins, i32 0, i32 0
  %data43 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %hwma, i32 0, i32 0
  store float* %arraydecay42, float** %data43, align 8, !tbaa !37
  %size44 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %hwma, i32 0, i32 1
  store i32 4, i32* %size44, align 4, !tbaa !39
  %persistent45 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %hwma, i32 0, i32 2
  store i32 0, i32* %persistent45, align 4, !tbaa !40
  %62 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %MarginsHWResolution = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %62, i32 0, i32 23
  %arraydecay46 = getelementptr inbounds [2 x float], [2 x float]* %MarginsHWResolution, i32 0, i32 0
  %data47 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %mhwra, i32 0, i32 0
  store float* %arraydecay46, float** %data47, align 8, !tbaa !37
  %size48 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %mhwra, i32 0, i32 1
  store i32 2, i32* %size48, align 4, !tbaa !39
  %persistent49 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %mhwra, i32 0, i32 2
  store i32 0, i32* %persistent49, align 4, !tbaa !40
  %63 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %63, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %64 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !51
  %cmp50 = icmp ne i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* %64, null
  br i1 %cmp50, label %if.then.52, label %if.else.208

if.then.52:                                       ; preds = %if.end
  %65 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs53 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %65, i32 0, i32 42
  %get_profile54 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs53, i32 0, i32 67
  %66 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile54, align 8, !tbaa !51
  %67 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call55 = call i32 %66(%struct.gx_device_s* %67, %struct.cmm_dev_profile_s** %dev_profile) #5
  store i32 %call55, i32* %code, align 4, !tbaa !5
  %68 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %cmp56 = icmp eq %struct.cmm_dev_profile_s* %68, null
  br i1 %cmp56, label %if.then.58, label %if.end.63

if.then.58:                                       ; preds = %if.then.52
  %69 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call59 = call i32 @gsicc_init_device_profile_struct(%struct.gx_device_s* %69, i8* null, i32 0) #5
  store i32 %call59, i32* %code, align 4, !tbaa !5
  %70 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs60 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %70, i32 0, i32 42
  %get_profile61 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs60, i32 0, i32 67
  %71 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile61, align 8, !tbaa !51
  %72 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call62 = call i32 %71(%struct.gx_device_s* %72, %struct.cmm_dev_profile_s** %dev_profile) #5
  store i32 %call62, i32* %code, align 4, !tbaa !5
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.58, %if.then.52
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.63
  %73 = load i32, i32* %k, align 4, !tbaa !5
  %cmp64 = icmp slt i32 %73, 4
  br i1 %cmp64, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %74 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom = sext i32 %74 to i64
  %75 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %device_profile = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %75, i32 0, i32 0
  %arrayidx66 = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile, i32 0, i64 %idxprom
  %76 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx66, align 8, !tbaa !1
  %cmp67 = icmp eq %struct.cmm_profile_s* %76, null
  br i1 %cmp67, label %if.then.74, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %77 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom69 = sext i32 %77 to i64
  %78 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %device_profile70 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %78, i32 0, i32 0
  %arrayidx71 = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile70, i32 0, i64 %idxprom69
  %79 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx71, align 8, !tbaa !1
  %name = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %79, i32 0, i32 20
  %80 = load i8*, i8** %name, align 8, !tbaa !52
  %cmp72 = icmp eq i8* %80, null
  br i1 %cmp72, label %if.then.74, label %if.else.96

if.then.74:                                       ; preds = %lor.lhs.false, %for.body
  %arraydecay75 = getelementptr inbounds [1 x i8], [1 x i8]* %null_str, i32 0, i32 0
  %81 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom76 = sext i32 %81 to i64
  %arrayidx77 = getelementptr inbounds [4 x %struct.gs_param_string_s], [4 x %struct.gs_param_string_s]* %profile_array, i32 0, i64 %idxprom76
  %data78 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx77, i32 0, i32 0
  store i8* %arraydecay75, i8** %data78, align 8, !tbaa !31
  %82 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom79 = sext i32 %82 to i64
  %arrayidx80 = getelementptr inbounds [4 x %struct.gs_param_string_s], [4 x %struct.gs_param_string_s]* %profile_array, i32 0, i64 %idxprom79
  %data81 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx80, i32 0, i32 0
  %83 = load i8*, i8** %data81, align 8, !tbaa !31
  %call82 = call i64 @strlen(i8* %83) #6
  %conv83 = trunc i64 %call82 to i32
  %84 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom84 = sext i32 %84 to i64
  %arrayidx85 = getelementptr inbounds [4 x %struct.gs_param_string_s], [4 x %struct.gs_param_string_s]* %profile_array, i32 0, i64 %idxprom84
  %size86 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx85, i32 0, i32 1
  store i32 %conv83, i32* %size86, align 4, !tbaa !33
  %85 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom87 = sext i32 %85 to i64
  %arrayidx88 = getelementptr inbounds [4 x %struct.gs_param_string_s], [4 x %struct.gs_param_string_s]* %profile_array, i32 0, i64 %idxprom87
  %persistent89 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx88, i32 0, i32 2
  store i32 1, i32* %persistent89, align 4, !tbaa !34
  %86 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom90 = sext i32 %86 to i64
  %arrayidx91 = getelementptr inbounds [4 x i32], [4 x i32]* %profile_intents, i32 0, i64 %idxprom90
  store i32 8, i32* %arrayidx91, align 4, !tbaa !36
  %87 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom92 = sext i32 %87 to i64
  %arrayidx93 = getelementptr inbounds [4 x i32], [4 x i32]* %blackptcomps, i32 0, i64 %idxprom92
  store i32 8, i32* %arrayidx93, align 4, !tbaa !36
  %88 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom94 = sext i32 %88 to i64
  %arrayidx95 = getelementptr inbounds [4 x i32], [4 x i32]* %blackpreserve, i32 0, i64 %idxprom94
  store i32 8, i32* %arrayidx95, align 4, !tbaa !36
  br label %if.end.129

if.else.96:                                       ; preds = %lor.lhs.false
  %89 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom97 = sext i32 %89 to i64
  %90 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %device_profile98 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %90, i32 0, i32 0
  %arrayidx99 = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile98, i32 0, i64 %idxprom97
  %91 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx99, align 8, !tbaa !1
  %name100 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %91, i32 0, i32 20
  %92 = load i8*, i8** %name100, align 8, !tbaa !52
  %93 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom101 = sext i32 %93 to i64
  %arrayidx102 = getelementptr inbounds [4 x %struct.gs_param_string_s], [4 x %struct.gs_param_string_s]* %profile_array, i32 0, i64 %idxprom101
  %data103 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx102, i32 0, i32 0
  store i8* %92, i8** %data103, align 8, !tbaa !31
  %94 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom104 = sext i32 %94 to i64
  %arrayidx105 = getelementptr inbounds [4 x %struct.gs_param_string_s], [4 x %struct.gs_param_string_s]* %profile_array, i32 0, i64 %idxprom104
  %data106 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx105, i32 0, i32 0
  %95 = load i8*, i8** %data106, align 8, !tbaa !31
  %call107 = call i64 @strlen(i8* %95) #6
  %conv108 = trunc i64 %call107 to i32
  %96 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom109 = sext i32 %96 to i64
  %arrayidx110 = getelementptr inbounds [4 x %struct.gs_param_string_s], [4 x %struct.gs_param_string_s]* %profile_array, i32 0, i64 %idxprom109
  %size111 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx110, i32 0, i32 1
  store i32 %conv108, i32* %size111, align 4, !tbaa !33
  %97 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom112 = sext i32 %97 to i64
  %arrayidx113 = getelementptr inbounds [4 x %struct.gs_param_string_s], [4 x %struct.gs_param_string_s]* %profile_array, i32 0, i64 %idxprom112
  %persistent114 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx113, i32 0, i32 2
  store i32 1, i32* %persistent114, align 4, !tbaa !34
  %98 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom115 = sext i32 %98 to i64
  %99 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %rendercond = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %99, i32 0, i32 4
  %arrayidx116 = getelementptr inbounds [4 x %struct.gsicc_rendering_param_s], [4 x %struct.gsicc_rendering_param_s]* %rendercond, i32 0, i64 %idxprom115
  %rendering_intent = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %arrayidx116, i32 0, i32 0
  %100 = load i32, i32* %rendering_intent, align 4, !tbaa !56
  %101 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom117 = sext i32 %101 to i64
  %arrayidx118 = getelementptr inbounds [4 x i32], [4 x i32]* %profile_intents, i32 0, i64 %idxprom117
  store i32 %100, i32* %arrayidx118, align 4, !tbaa !36
  %102 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom119 = sext i32 %102 to i64
  %103 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %rendercond120 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %103, i32 0, i32 4
  %arrayidx121 = getelementptr inbounds [4 x %struct.gsicc_rendering_param_s], [4 x %struct.gsicc_rendering_param_s]* %rendercond120, i32 0, i64 %idxprom119
  %black_point_comp = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %arrayidx121, i32 0, i32 1
  %104 = load i32, i32* %black_point_comp, align 4, !tbaa !57
  %105 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom122 = sext i32 %105 to i64
  %arrayidx123 = getelementptr inbounds [4 x i32], [4 x i32]* %blackptcomps, i32 0, i64 %idxprom122
  store i32 %104, i32* %arrayidx123, align 4, !tbaa !36
  %106 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom124 = sext i32 %106 to i64
  %107 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %rendercond125 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %107, i32 0, i32 4
  %arrayidx126 = getelementptr inbounds [4 x %struct.gsicc_rendering_param_s], [4 x %struct.gsicc_rendering_param_s]* %rendercond125, i32 0, i64 %idxprom124
  %preserve_black = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %arrayidx126, i32 0, i32 2
  %108 = load i32, i32* %preserve_black, align 4, !tbaa !58
  %109 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom127 = sext i32 %109 to i64
  %arrayidx128 = getelementptr inbounds [4 x i32], [4 x i32]* %blackpreserve, i32 0, i64 %idxprom127
  store i32 %108, i32* %arrayidx128, align 4, !tbaa !36
  br label %if.end.129

if.end.129:                                       ; preds = %if.else.96, %if.then.74
  br label %for.inc

for.inc:                                          ; preds = %if.end.129
  %110 = load i32, i32* %k, align 4, !tbaa !5
  %inc = add nsw i32 %110, 1
  store i32 %inc, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %111 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %proof_profile130 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %111, i32 0, i32 1
  %112 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %proof_profile130, align 8, !tbaa !59
  %cmp131 = icmp eq %struct.cmm_profile_s* %112, null
  br i1 %cmp131, label %if.then.133, label %if.else.141

if.then.133:                                      ; preds = %for.end
  %arraydecay134 = getelementptr inbounds [1 x i8], [1 x i8]* %null_str, i32 0, i32 0
  %data135 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %proof_profile, i32 0, i32 0
  store i8* %arraydecay134, i8** %data135, align 8, !tbaa !31
  %data136 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %proof_profile, i32 0, i32 0
  %113 = load i8*, i8** %data136, align 8, !tbaa !31
  %call137 = call i64 @strlen(i8* %113) #6
  %conv138 = trunc i64 %call137 to i32
  %size139 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %proof_profile, i32 0, i32 1
  store i32 %conv138, i32* %size139, align 4, !tbaa !33
  %persistent140 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %proof_profile, i32 0, i32 2
  store i32 1, i32* %persistent140, align 4, !tbaa !34
  br label %if.end.150

if.else.141:                                      ; preds = %for.end
  %114 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %proof_profile142 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %114, i32 0, i32 1
  %115 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %proof_profile142, align 8, !tbaa !59
  %name143 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %115, i32 0, i32 20
  %116 = load i8*, i8** %name143, align 8, !tbaa !52
  %data144 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %proof_profile, i32 0, i32 0
  store i8* %116, i8** %data144, align 8, !tbaa !31
  %data145 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %proof_profile, i32 0, i32 0
  %117 = load i8*, i8** %data145, align 8, !tbaa !31
  %call146 = call i64 @strlen(i8* %117) #6
  %conv147 = trunc i64 %call146 to i32
  %size148 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %proof_profile, i32 0, i32 1
  store i32 %conv147, i32* %size148, align 4, !tbaa !33
  %persistent149 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %proof_profile, i32 0, i32 2
  store i32 1, i32* %persistent149, align 4, !tbaa !34
  br label %if.end.150

if.end.150:                                       ; preds = %if.else.141, %if.then.133
  %118 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %link_profile151 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %118, i32 0, i32 2
  %119 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %link_profile151, align 8, !tbaa !61
  %cmp152 = icmp eq %struct.cmm_profile_s* %119, null
  br i1 %cmp152, label %if.then.154, label %if.else.162

if.then.154:                                      ; preds = %if.end.150
  %arraydecay155 = getelementptr inbounds [1 x i8], [1 x i8]* %null_str, i32 0, i32 0
  %data156 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %link_profile, i32 0, i32 0
  store i8* %arraydecay155, i8** %data156, align 8, !tbaa !31
  %data157 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %link_profile, i32 0, i32 0
  %120 = load i8*, i8** %data157, align 8, !tbaa !31
  %call158 = call i64 @strlen(i8* %120) #6
  %conv159 = trunc i64 %call158 to i32
  %size160 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %link_profile, i32 0, i32 1
  store i32 %conv159, i32* %size160, align 4, !tbaa !33
  %persistent161 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %link_profile, i32 0, i32 2
  store i32 1, i32* %persistent161, align 4, !tbaa !34
  br label %if.end.171

if.else.162:                                      ; preds = %if.end.150
  %121 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %link_profile163 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %121, i32 0, i32 2
  %122 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %link_profile163, align 8, !tbaa !61
  %name164 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %122, i32 0, i32 20
  %123 = load i8*, i8** %name164, align 8, !tbaa !52
  %data165 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %link_profile, i32 0, i32 0
  store i8* %123, i8** %data165, align 8, !tbaa !31
  %data166 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %link_profile, i32 0, i32 0
  %124 = load i8*, i8** %data166, align 8, !tbaa !31
  %call167 = call i64 @strlen(i8* %124) #6
  %conv168 = trunc i64 %call167 to i32
  %size169 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %link_profile, i32 0, i32 1
  store i32 %conv168, i32* %size169, align 4, !tbaa !33
  %persistent170 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %link_profile, i32 0, i32 2
  store i32 1, i32* %persistent170, align 4, !tbaa !34
  br label %if.end.171

if.end.171:                                       ; preds = %if.else.162, %if.then.154
  %125 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %devicegraytok172 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %125, i32 0, i32 5
  %126 = load i32, i32* %devicegraytok172, align 4, !tbaa !62
  store i32 %126, i32* %devicegraytok, align 4, !tbaa !5
  %127 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %graydetection173 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %127, i32 0, i32 6
  %128 = load i32, i32* %graydetection173, align 4, !tbaa !63
  store i32 %128, i32* %graydetection, align 4, !tbaa !5
  %129 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %usefastcolor174 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %129, i32 0, i32 8
  %130 = load i32, i32* %usefastcolor174, align 4, !tbaa !64
  store i32 %130, i32* %usefastcolor, align 4, !tbaa !5
  %131 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %sim_overprint175 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %131, i32 0, i32 10
  %132 = load i32, i32* %sim_overprint175, align 4, !tbaa !65
  store i32 %132, i32* %sim_overprint, align 4, !tbaa !5
  %133 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %prebandthreshold176 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %133, i32 0, i32 12
  %134 = load i32, i32* %prebandthreshold176, align 4, !tbaa !66
  store i32 %134, i32* %prebandthreshold, align 4, !tbaa !5
  %135 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %spotnames = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %135, i32 0, i32 11
  %136 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %spotnames, align 8, !tbaa !67
  %cmp177 = icmp eq %struct.gsicc_namelist_s* %136, null
  br i1 %cmp177, label %if.then.179, label %if.else.187

if.then.179:                                      ; preds = %if.end.171
  %arraydecay180 = getelementptr inbounds [1 x i8], [1 x i8]* %null_str, i32 0, i32 0
  %data181 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %icc_colorants, i32 0, i32 0
  store i8* %arraydecay180, i8** %data181, align 8, !tbaa !31
  %data182 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %icc_colorants, i32 0, i32 0
  %137 = load i8*, i8** %data182, align 8, !tbaa !31
  %call183 = call i64 @strlen(i8* %137) #6
  %conv184 = trunc i64 %call183 to i32
  %size185 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %icc_colorants, i32 0, i32 1
  store i32 %conv184, i32* %size185, align 4, !tbaa !33
  %persistent186 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %icc_colorants, i32 0, i32 2
  store i32 1, i32* %persistent186, align 4, !tbaa !34
  br label %if.end.207

if.else.187:                                      ; preds = %if.end.171
  %138 = bitcast i8** %colorant_names to i8*
  call void @llvm.lifetime.start(i64 8, i8* %138) #1
  %139 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %call188 = call i8* @gsicc_get_dev_icccolorants(%struct.cmm_dev_profile_s* %139) #5
  store i8* %call188, i8** %colorant_names, align 8, !tbaa !1
  %140 = load i8*, i8** %colorant_names, align 8, !tbaa !1
  %cmp189 = icmp ne i8* %140, null
  br i1 %cmp189, label %if.then.191, label %if.else.198

if.then.191:                                      ; preds = %if.else.187
  %141 = load i8*, i8** %colorant_names, align 8, !tbaa !1
  %data192 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %icc_colorants, i32 0, i32 0
  store i8* %141, i8** %data192, align 8, !tbaa !31
  %data193 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %icc_colorants, i32 0, i32 0
  %142 = load i8*, i8** %data193, align 8, !tbaa !31
  %call194 = call i64 @strlen(i8* %142) #6
  %conv195 = trunc i64 %call194 to i32
  %size196 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %icc_colorants, i32 0, i32 1
  store i32 %conv195, i32* %size196, align 4, !tbaa !33
  %persistent197 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %icc_colorants, i32 0, i32 2
  store i32 1, i32* %persistent197, align 4, !tbaa !34
  br label %if.end.206

if.else.198:                                      ; preds = %if.else.187
  %arraydecay199 = getelementptr inbounds [1 x i8], [1 x i8]* %null_str, i32 0, i32 0
  %data200 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %icc_colorants, i32 0, i32 0
  store i8* %arraydecay199, i8** %data200, align 8, !tbaa !31
  %data201 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %icc_colorants, i32 0, i32 0
  %143 = load i8*, i8** %data201, align 8, !tbaa !31
  %call202 = call i64 @strlen(i8* %143) #6
  %conv203 = trunc i64 %call202 to i32
  %size204 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %icc_colorants, i32 0, i32 1
  store i32 %conv203, i32* %size204, align 4, !tbaa !33
  %persistent205 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %icc_colorants, i32 0, i32 2
  store i32 1, i32* %persistent205, align 4, !tbaa !34
  br label %if.end.206

if.end.206:                                       ; preds = %if.else.198, %if.then.191
  %144 = bitcast i8** %colorant_names to i8*
  call void @llvm.lifetime.end(i64 8, i8* %144) #1
  br label %if.end.207

if.end.207:                                       ; preds = %if.end.206, %if.then.179
  br label %if.end.258

if.else.208:                                      ; preds = %if.end
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.209

for.cond.209:                                     ; preds = %for.inc.234, %if.else.208
  %145 = load i32, i32* %k, align 4, !tbaa !5
  %cmp210 = icmp slt i32 %145, 4
  br i1 %cmp210, label %for.body.212, label %for.end.236

for.body.212:                                     ; preds = %for.cond.209
  %arraydecay213 = getelementptr inbounds [1 x i8], [1 x i8]* %null_str, i32 0, i32 0
  %146 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom214 = sext i32 %146 to i64
  %arrayidx215 = getelementptr inbounds [4 x %struct.gs_param_string_s], [4 x %struct.gs_param_string_s]* %profile_array, i32 0, i64 %idxprom214
  %data216 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx215, i32 0, i32 0
  store i8* %arraydecay213, i8** %data216, align 8, !tbaa !31
  %147 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom217 = sext i32 %147 to i64
  %arrayidx218 = getelementptr inbounds [4 x %struct.gs_param_string_s], [4 x %struct.gs_param_string_s]* %profile_array, i32 0, i64 %idxprom217
  %data219 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx218, i32 0, i32 0
  %148 = load i8*, i8** %data219, align 8, !tbaa !31
  %call220 = call i64 @strlen(i8* %148) #6
  %conv221 = trunc i64 %call220 to i32
  %149 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom222 = sext i32 %149 to i64
  %arrayidx223 = getelementptr inbounds [4 x %struct.gs_param_string_s], [4 x %struct.gs_param_string_s]* %profile_array, i32 0, i64 %idxprom222
  %size224 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx223, i32 0, i32 1
  store i32 %conv221, i32* %size224, align 4, !tbaa !33
  %150 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom225 = sext i32 %150 to i64
  %arrayidx226 = getelementptr inbounds [4 x %struct.gs_param_string_s], [4 x %struct.gs_param_string_s]* %profile_array, i32 0, i64 %idxprom225
  %persistent227 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx226, i32 0, i32 2
  store i32 1, i32* %persistent227, align 4, !tbaa !34
  %151 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom228 = sext i32 %151 to i64
  %arrayidx229 = getelementptr inbounds [4 x i32], [4 x i32]* %profile_intents, i32 0, i64 %idxprom228
  store i32 8, i32* %arrayidx229, align 4, !tbaa !36
  %152 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom230 = sext i32 %152 to i64
  %arrayidx231 = getelementptr inbounds [4 x i32], [4 x i32]* %blackptcomps, i32 0, i64 %idxprom230
  store i32 8, i32* %arrayidx231, align 4, !tbaa !36
  %153 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom232 = sext i32 %153 to i64
  %arrayidx233 = getelementptr inbounds [4 x i32], [4 x i32]* %blackpreserve, i32 0, i64 %idxprom232
  store i32 8, i32* %arrayidx233, align 4, !tbaa !36
  br label %for.inc.234

for.inc.234:                                      ; preds = %for.body.212
  %154 = load i32, i32* %k, align 4, !tbaa !5
  %inc235 = add nsw i32 %154, 1
  store i32 %inc235, i32* %k, align 4, !tbaa !5
  br label %for.cond.209

for.end.236:                                      ; preds = %for.cond.209
  %arraydecay237 = getelementptr inbounds [1 x i8], [1 x i8]* %null_str, i32 0, i32 0
  %data238 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %proof_profile, i32 0, i32 0
  store i8* %arraydecay237, i8** %data238, align 8, !tbaa !31
  %data239 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %proof_profile, i32 0, i32 0
  %155 = load i8*, i8** %data239, align 8, !tbaa !31
  %call240 = call i64 @strlen(i8* %155) #6
  %conv241 = trunc i64 %call240 to i32
  %size242 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %proof_profile, i32 0, i32 1
  store i32 %conv241, i32* %size242, align 4, !tbaa !33
  %persistent243 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %proof_profile, i32 0, i32 2
  store i32 1, i32* %persistent243, align 4, !tbaa !34
  %arraydecay244 = getelementptr inbounds [1 x i8], [1 x i8]* %null_str, i32 0, i32 0
  %data245 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %link_profile, i32 0, i32 0
  store i8* %arraydecay244, i8** %data245, align 8, !tbaa !31
  %data246 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %link_profile, i32 0, i32 0
  %156 = load i8*, i8** %data246, align 8, !tbaa !31
  %call247 = call i64 @strlen(i8* %156) #6
  %conv248 = trunc i64 %call247 to i32
  %size249 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %link_profile, i32 0, i32 1
  store i32 %conv248, i32* %size249, align 4, !tbaa !33
  %persistent250 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %link_profile, i32 0, i32 2
  store i32 1, i32* %persistent250, align 4, !tbaa !34
  %arraydecay251 = getelementptr inbounds [1 x i8], [1 x i8]* %null_str, i32 0, i32 0
  %data252 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %icc_colorants, i32 0, i32 0
  store i8* %arraydecay251, i8** %data252, align 8, !tbaa !31
  %data253 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %icc_colorants, i32 0, i32 0
  %157 = load i8*, i8** %data253, align 8, !tbaa !31
  %call254 = call i64 @strlen(i8* %157) #6
  %conv255 = trunc i64 %call254 to i32
  %size256 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %icc_colorants, i32 0, i32 1
  store i32 %conv255, i32* %size256, align 4, !tbaa !33
  %persistent257 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %icc_colorants, i32 0, i32 2
  store i32 1, i32* %persistent257, align 4, !tbaa !34
  br label %if.end.258

if.end.258:                                       ; preds = %for.end.236, %if.end.207
  %158 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call259 = call i32 @param_write_name(%struct.gs_param_list_s* %158, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), %struct.gs_param_string_s* %dns) #5
  store i32 %call259, i32* %code, align 4, !tbaa !5
  %cmp260 = icmp slt i32 %call259, 0
  br i1 %cmp260, label %if.then.529, label %lor.lhs.false.262

lor.lhs.false.262:                                ; preds = %if.end.258
  %159 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call263 = call i32 @param_write_float_array(%struct.gs_param_list_s* %159, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), %struct.gs_param_float_array_s* %msa) #5
  store i32 %call263, i32* %code, align 4, !tbaa !5
  %cmp264 = icmp slt i32 %call263, 0
  br i1 %cmp264, label %if.then.529, label %lor.lhs.false.266

lor.lhs.false.266:                                ; preds = %lor.lhs.false.262
  %data267 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pcms, i32 0, i32 0
  %160 = load i8*, i8** %data267, align 8, !tbaa !31
  %cmp268 = icmp eq i8* %160, null
  br i1 %cmp268, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false.266
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false.266
  %161 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call270 = call i32 @param_write_name(%struct.gs_param_list_s* %161, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), %struct.gs_param_string_s* %pcms) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call270, %cond.false ]
  store i32 %cond, i32* %code, align 4, !tbaa !5
  %cmp271 = icmp slt i32 %cond, 0
  br i1 %cmp271, label %if.then.529, label %lor.lhs.false.273

lor.lhs.false.273:                                ; preds = %cond.end
  %162 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call274 = call i32 @param_write_float_array(%struct.gs_param_list_s* %162, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), %struct.gs_param_float_array_s* %hwra) #5
  store i32 %call274, i32* %code, align 4, !tbaa !5
  %cmp275 = icmp slt i32 %call274, 0
  br i1 %cmp275, label %if.then.529, label %lor.lhs.false.277

lor.lhs.false.277:                                ; preds = %lor.lhs.false.273
  %163 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %ImagingBBox_set = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %163, i32 0, i32 21
  %164 = load i32, i32* %ImagingBBox_set, align 4, !tbaa !68
  %tobool = icmp ne i32 %164, 0
  br i1 %tobool, label %cond.true.278, label %cond.false.280

cond.true.278:                                    ; preds = %lor.lhs.false.277
  %165 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call279 = call i32 @param_write_float_array(%struct.gs_param_list_s* %165, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), %struct.gs_param_float_array_s* %ibba) #5
  br label %cond.end.282

cond.false.280:                                   ; preds = %lor.lhs.false.277
  %166 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call281 = call i32 @param_write_null(%struct.gs_param_list_s* %166, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0)) #5
  br label %cond.end.282

cond.end.282:                                     ; preds = %cond.false.280, %cond.true.278
  %cond283 = phi i32 [ %call279, %cond.true.278 ], [ %call281, %cond.false.280 ]
  store i32 %cond283, i32* %code, align 4, !tbaa !5
  %cmp284 = icmp slt i32 %cond283, 0
  br i1 %cmp284, label %if.then.529, label %lor.lhs.false.286

lor.lhs.false.286:                                ; preds = %cond.end.282
  %167 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call287 = call i32 @param_write_float_array(%struct.gs_param_list_s* %167, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), %struct.gs_param_float_array_s* %ma) #5
  store i32 %call287, i32* %code, align 4, !tbaa !5
  %cmp288 = icmp slt i32 %call287, 0
  br i1 %cmp288, label %if.then.529, label %lor.lhs.false.290

lor.lhs.false.290:                                ; preds = %lor.lhs.false.286
  %168 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call291 = call i32 @param_write_int(%struct.gs_param_list_s* %168, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i32* %mns) #5
  store i32 %call291, i32* %code, align 4, !tbaa !5
  %cmp292 = icmp slt i32 %call291, 0
  br i1 %cmp292, label %if.then.529, label %lor.lhs.false.294

lor.lhs.false.294:                                ; preds = %lor.lhs.false.290
  %169 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %NumCopies_set = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %169, i32 0, i32 29
  %170 = load i32, i32* %NumCopies_set, align 4, !tbaa !69
  %cmp295 = icmp slt i32 %170, 0
  br i1 %cmp295, label %cond.true.302, label %lor.lhs.false.297

lor.lhs.false.297:                                ; preds = %lor.lhs.false.294
  %171 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs298 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %171, i32 0, i32 42
  %get_page_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs298, i32 0, i32 19
  %172 = load %struct.gx_device_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)** %get_page_device, align 8, !tbaa !23
  %173 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call299 = call %struct.gx_device_s* %172(%struct.gx_device_s* %173) #5
  %cmp300 = icmp eq %struct.gx_device_s* %call299, null
  br i1 %cmp300, label %cond.true.302, label %cond.false.303

cond.true.302:                                    ; preds = %lor.lhs.false.297, %lor.lhs.false.294
  br label %cond.end.312

cond.false.303:                                   ; preds = %lor.lhs.false.297
  %174 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %NumCopies_set304 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %174, i32 0, i32 29
  %175 = load i32, i32* %NumCopies_set304, align 4, !tbaa !69
  %tobool305 = icmp ne i32 %175, 0
  br i1 %tobool305, label %cond.true.306, label %cond.false.308

cond.true.306:                                    ; preds = %cond.false.303
  %176 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %177 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %NumCopies = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %177, i32 0, i32 28
  %call307 = call i32 @param_write_int(%struct.gs_param_list_s* %176, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i32* %NumCopies) #5
  br label %cond.end.310

cond.false.308:                                   ; preds = %cond.false.303
  %178 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call309 = call i32 @param_write_null(%struct.gs_param_list_s* %178, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0)) #5
  br label %cond.end.310

cond.end.310:                                     ; preds = %cond.false.308, %cond.true.306
  %cond311 = phi i32 [ %call307, %cond.true.306 ], [ %call309, %cond.false.308 ]
  br label %cond.end.312

cond.end.312:                                     ; preds = %cond.end.310, %cond.true.302
  %cond313 = phi i32 [ 0, %cond.true.302 ], [ %cond311, %cond.end.310 ]
  store i32 %cond313, i32* %code, align 4, !tbaa !5
  %cmp314 = icmp slt i32 %cond313, 0
  br i1 %cmp314, label %if.then.529, label %lor.lhs.false.316

lor.lhs.false.316:                                ; preds = %cond.end.312
  %179 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call317 = call i32 @param_write_name_array(%struct.gs_param_list_s* %179, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), %struct.gs_param_string_array_s* %scna) #5
  store i32 %call317, i32* %code, align 4, !tbaa !5
  %cmp318 = icmp slt i32 %call317, 0
  br i1 %cmp318, label %if.then.529, label %lor.lhs.false.320

lor.lhs.false.320:                                ; preds = %lor.lhs.false.316
  %180 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call321 = call i32 @param_write_bool(%struct.gs_param_list_s* %180, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i32* %seprs) #5
  store i32 %call321, i32* %code, align 4, !tbaa !5
  %cmp322 = icmp slt i32 %call321, 0
  br i1 %cmp322, label %if.then.529, label %lor.lhs.false.324

lor.lhs.false.324:                                ; preds = %lor.lhs.false.320
  %181 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %182 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %UseCIEColor = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %182, i32 0, i32 31
  %call325 = call i32 @param_write_bool(%struct.gs_param_list_s* %181, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i32* %UseCIEColor) #5
  store i32 %call325, i32* %code, align 4, !tbaa !5
  %cmp326 = icmp slt i32 %call325, 0
  br i1 %cmp326, label %if.then.529, label %lor.lhs.false.328

lor.lhs.false.328:                                ; preds = %lor.lhs.false.324
  %183 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call329 = call i32 @param_write_bool(%struct.gs_param_list_s* %183, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i32* %devicegraytok) #5
  store i32 %call329, i32* %code, align 4, !tbaa !5
  %cmp330 = icmp slt i32 %call329, 0
  br i1 %cmp330, label %if.then.529, label %lor.lhs.false.332

lor.lhs.false.332:                                ; preds = %lor.lhs.false.328
  %184 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call333 = call i32 @param_write_bool(%struct.gs_param_list_s* %184, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i32* %graydetection) #5
  store i32 %call333, i32* %code, align 4, !tbaa !5
  %cmp334 = icmp slt i32 %call333, 0
  br i1 %cmp334, label %if.then.529, label %lor.lhs.false.336

lor.lhs.false.336:                                ; preds = %lor.lhs.false.332
  %185 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call337 = call i32 @param_write_bool(%struct.gs_param_list_s* %185, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32* %usefastcolor) #5
  store i32 %call337, i32* %code, align 4, !tbaa !5
  %cmp338 = icmp slt i32 %call337, 0
  br i1 %cmp338, label %if.then.529, label %lor.lhs.false.340

lor.lhs.false.340:                                ; preds = %lor.lhs.false.336
  %186 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call341 = call i32 @param_write_bool(%struct.gs_param_list_s* %186, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i32* %sim_overprint) #5
  store i32 %call341, i32* %code, align 4, !tbaa !5
  %cmp342 = icmp slt i32 %call341, 0
  br i1 %cmp342, label %if.then.529, label %lor.lhs.false.344

lor.lhs.false.344:                                ; preds = %lor.lhs.false.340
  %187 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call345 = call i32 @param_write_bool(%struct.gs_param_list_s* %187, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32* %prebandthreshold) #5
  store i32 %call345, i32* %code, align 4, !tbaa !5
  %cmp346 = icmp slt i32 %call345, 0
  br i1 %cmp346, label %if.then.529, label %lor.lhs.false.348

lor.lhs.false.348:                                ; preds = %lor.lhs.false.344
  %188 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %arrayidx349 = getelementptr inbounds [4 x %struct.gs_param_string_s], [4 x %struct.gs_param_string_s]* %profile_array, i32 0, i64 0
  %call350 = call i32 @param_write_string(%struct.gs_param_list_s* %188, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0), %struct.gs_param_string_s* %arrayidx349) #5
  store i32 %call350, i32* %code, align 4, !tbaa !5
  %cmp351 = icmp slt i32 %call350, 0
  br i1 %cmp351, label %if.then.529, label %lor.lhs.false.353

lor.lhs.false.353:                                ; preds = %lor.lhs.false.348
  %189 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %arrayidx354 = getelementptr inbounds [4 x %struct.gs_param_string_s], [4 x %struct.gs_param_string_s]* %profile_array, i32 0, i64 1
  %call355 = call i32 @param_write_string(%struct.gs_param_list_s* %189, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0), %struct.gs_param_string_s* %arrayidx354) #5
  store i32 %call355, i32* %code, align 4, !tbaa !5
  %cmp356 = icmp slt i32 %call355, 0
  br i1 %cmp356, label %if.then.529, label %lor.lhs.false.358

lor.lhs.false.358:                                ; preds = %lor.lhs.false.353
  %190 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %arrayidx359 = getelementptr inbounds [4 x %struct.gs_param_string_s], [4 x %struct.gs_param_string_s]* %profile_array, i32 0, i64 2
  %call360 = call i32 @param_write_string(%struct.gs_param_list_s* %190, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0), %struct.gs_param_string_s* %arrayidx359) #5
  store i32 %call360, i32* %code, align 4, !tbaa !5
  %cmp361 = icmp slt i32 %call360, 0
  br i1 %cmp361, label %if.then.529, label %lor.lhs.false.363

lor.lhs.false.363:                                ; preds = %lor.lhs.false.358
  %191 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %arrayidx364 = getelementptr inbounds [4 x %struct.gs_param_string_s], [4 x %struct.gs_param_string_s]* %profile_array, i32 0, i64 3
  %call365 = call i32 @param_write_string(%struct.gs_param_list_s* %191, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), %struct.gs_param_string_s* %arrayidx364) #5
  store i32 %call365, i32* %code, align 4, !tbaa !5
  %cmp366 = icmp slt i32 %call365, 0
  br i1 %cmp366, label %if.then.529, label %lor.lhs.false.368

lor.lhs.false.368:                                ; preds = %lor.lhs.false.363
  %192 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call369 = call i32 @param_write_string(%struct.gs_param_list_s* %192, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0), %struct.gs_param_string_s* %proof_profile) #5
  store i32 %call369, i32* %code, align 4, !tbaa !5
  %cmp370 = icmp slt i32 %call369, 0
  br i1 %cmp370, label %if.then.529, label %lor.lhs.false.372

lor.lhs.false.372:                                ; preds = %lor.lhs.false.368
  %193 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call373 = call i32 @param_write_string(%struct.gs_param_list_s* %193, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0), %struct.gs_param_string_s* %link_profile) #5
  store i32 %call373, i32* %code, align 4, !tbaa !5
  %cmp374 = icmp slt i32 %call373, 0
  br i1 %cmp374, label %if.then.529, label %lor.lhs.false.376

lor.lhs.false.376:                                ; preds = %lor.lhs.false.372
  %194 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call377 = call i32 @param_write_string(%struct.gs_param_list_s* %194, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0), %struct.gs_param_string_s* %icc_colorants) #5
  store i32 %call377, i32* %code, align 4, !tbaa !5
  %cmp378 = icmp slt i32 %call377, 0
  br i1 %cmp378, label %if.then.529, label %lor.lhs.false.380

lor.lhs.false.380:                                ; preds = %lor.lhs.false.376
  %195 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %arrayidx381 = getelementptr inbounds [4 x i32], [4 x i32]* %profile_intents, i32 0, i64 0
  %call382 = call i32 @param_write_int(%struct.gs_param_list_s* %195, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), i32* %arrayidx381) #5
  store i32 %call382, i32* %code, align 4, !tbaa !5
  %cmp383 = icmp slt i32 %call382, 0
  br i1 %cmp383, label %if.then.529, label %lor.lhs.false.385

lor.lhs.false.385:                                ; preds = %lor.lhs.false.380
  %196 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %arrayidx386 = getelementptr inbounds [4 x i32], [4 x i32]* %profile_intents, i32 0, i64 1
  %call387 = call i32 @param_write_int(%struct.gs_param_list_s* %196, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), i32* %arrayidx386) #5
  store i32 %call387, i32* %code, align 4, !tbaa !5
  %cmp388 = icmp slt i32 %call387, 0
  br i1 %cmp388, label %if.then.529, label %lor.lhs.false.390

lor.lhs.false.390:                                ; preds = %lor.lhs.false.385
  %197 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %arrayidx391 = getelementptr inbounds [4 x i32], [4 x i32]* %profile_intents, i32 0, i64 2
  %call392 = call i32 @param_write_int(%struct.gs_param_list_s* %197, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), i32* %arrayidx391) #5
  store i32 %call392, i32* %code, align 4, !tbaa !5
  %cmp393 = icmp slt i32 %call392, 0
  br i1 %cmp393, label %if.then.529, label %lor.lhs.false.395

lor.lhs.false.395:                                ; preds = %lor.lhs.false.390
  %198 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %arrayidx396 = getelementptr inbounds [4 x i32], [4 x i32]* %profile_intents, i32 0, i64 3
  %call397 = call i32 @param_write_int(%struct.gs_param_list_s* %198, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), i32* %arrayidx396) #5
  store i32 %call397, i32* %code, align 4, !tbaa !5
  %cmp398 = icmp slt i32 %call397, 0
  br i1 %cmp398, label %if.then.529, label %lor.lhs.false.400

lor.lhs.false.400:                                ; preds = %lor.lhs.false.395
  %199 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %arrayidx401 = getelementptr inbounds [4 x i32], [4 x i32]* %blackptcomps, i32 0, i64 0
  %call402 = call i32 @param_write_int(%struct.gs_param_list_s* %199, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0), i32* %arrayidx401) #5
  store i32 %call402, i32* %code, align 4, !tbaa !5
  %cmp403 = icmp slt i32 %call402, 0
  br i1 %cmp403, label %if.then.529, label %lor.lhs.false.405

lor.lhs.false.405:                                ; preds = %lor.lhs.false.400
  %200 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %arrayidx406 = getelementptr inbounds [4 x i32], [4 x i32]* %blackptcomps, i32 0, i64 1
  %call407 = call i32 @param_write_int(%struct.gs_param_list_s* %200, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0), i32* %arrayidx406) #5
  store i32 %call407, i32* %code, align 4, !tbaa !5
  %cmp408 = icmp slt i32 %call407, 0
  br i1 %cmp408, label %if.then.529, label %lor.lhs.false.410

lor.lhs.false.410:                                ; preds = %lor.lhs.false.405
  %201 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %arrayidx411 = getelementptr inbounds [4 x i32], [4 x i32]* %blackptcomps, i32 0, i64 2
  %call412 = call i32 @param_write_int(%struct.gs_param_list_s* %201, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0), i32* %arrayidx411) #5
  store i32 %call412, i32* %code, align 4, !tbaa !5
  %cmp413 = icmp slt i32 %call412, 0
  br i1 %cmp413, label %if.then.529, label %lor.lhs.false.415

lor.lhs.false.415:                                ; preds = %lor.lhs.false.410
  %202 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %arrayidx416 = getelementptr inbounds [4 x i32], [4 x i32]* %blackptcomps, i32 0, i64 3
  %call417 = call i32 @param_write_int(%struct.gs_param_list_s* %202, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0), i32* %arrayidx416) #5
  store i32 %call417, i32* %code, align 4, !tbaa !5
  %cmp418 = icmp slt i32 %call417, 0
  br i1 %cmp418, label %if.then.529, label %lor.lhs.false.420

lor.lhs.false.420:                                ; preds = %lor.lhs.false.415
  %203 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %arrayidx421 = getelementptr inbounds [4 x i32], [4 x i32]* %blackpreserve, i32 0, i64 0
  %call422 = call i32 @param_write_int(%struct.gs_param_list_s* %203, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i32* %arrayidx421) #5
  store i32 %call422, i32* %code, align 4, !tbaa !5
  %cmp423 = icmp slt i32 %call422, 0
  br i1 %cmp423, label %if.then.529, label %lor.lhs.false.425

lor.lhs.false.425:                                ; preds = %lor.lhs.false.420
  %204 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %arrayidx426 = getelementptr inbounds [4 x i32], [4 x i32]* %blackpreserve, i32 0, i64 1
  %call427 = call i32 @param_write_int(%struct.gs_param_list_s* %204, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i32 0, i32 0), i32* %arrayidx426) #5
  store i32 %call427, i32* %code, align 4, !tbaa !5
  %cmp428 = icmp slt i32 %call427, 0
  br i1 %cmp428, label %if.then.529, label %lor.lhs.false.430

lor.lhs.false.430:                                ; preds = %lor.lhs.false.425
  %205 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %arrayidx431 = getelementptr inbounds [4 x i32], [4 x i32]* %blackpreserve, i32 0, i64 2
  %call432 = call i32 @param_write_int(%struct.gs_param_list_s* %205, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i32 0, i32 0), i32* %arrayidx431) #5
  store i32 %call432, i32* %code, align 4, !tbaa !5
  %cmp433 = icmp slt i32 %call432, 0
  br i1 %cmp433, label %if.then.529, label %lor.lhs.false.435

lor.lhs.false.435:                                ; preds = %lor.lhs.false.430
  %206 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %arrayidx436 = getelementptr inbounds [4 x i32], [4 x i32]* %blackpreserve, i32 0, i64 3
  %call437 = call i32 @param_write_int(%struct.gs_param_list_s* %206, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i32 0, i32 0), i32* %arrayidx436) #5
  store i32 %call437, i32* %code, align 4, !tbaa !5
  %cmp438 = icmp slt i32 %call437, 0
  br i1 %cmp438, label %if.then.529, label %lor.lhs.false.440

lor.lhs.false.440:                                ; preds = %lor.lhs.false.435
  %207 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call441 = call i32 @param_write_int_array(%struct.gs_param_list_s* %207, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), %struct.gs_param_int_array_s* %hwsa) #5
  store i32 %call441, i32* %code, align 4, !tbaa !5
  %cmp442 = icmp slt i32 %call441, 0
  br i1 %cmp442, label %if.then.529, label %lor.lhs.false.444

lor.lhs.false.444:                                ; preds = %lor.lhs.false.440
  %208 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call445 = call i32 @param_write_float_array(%struct.gs_param_list_s* %208, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), %struct.gs_param_float_array_s* %hwma) #5
  store i32 %call445, i32* %code, align 4, !tbaa !5
  %cmp446 = icmp slt i32 %call445, 0
  br i1 %cmp446, label %if.then.529, label %lor.lhs.false.448

lor.lhs.false.448:                                ; preds = %lor.lhs.false.444
  %209 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call449 = call i32 @param_write_float_array(%struct.gs_param_list_s* %209, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.37, i32 0, i32 0), %struct.gs_param_float_array_s* %mhwra) #5
  store i32 %call449, i32* %code, align 4, !tbaa !5
  %cmp450 = icmp slt i32 %call449, 0
  br i1 %cmp450, label %if.then.529, label %lor.lhs.false.452

lor.lhs.false.452:                                ; preds = %lor.lhs.false.448
  %210 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call453 = call i32 @param_write_float_array(%struct.gs_param_list_s* %210, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i32 0, i32 0), %struct.gs_param_float_array_s* %msa) #5
  store i32 %call453, i32* %code, align 4, !tbaa !5
  %cmp454 = icmp slt i32 %call453, 0
  br i1 %cmp454, label %if.then.529, label %lor.lhs.false.456

lor.lhs.false.456:                                ; preds = %lor.lhs.false.452
  %211 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call457 = call i32 @param_write_string(%struct.gs_param_list_s* %211, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), %struct.gs_param_string_s* %dns) #5
  store i32 %call457, i32* %code, align 4, !tbaa !5
  %cmp458 = icmp slt i32 %call457, 0
  br i1 %cmp458, label %if.then.529, label %lor.lhs.false.460

lor.lhs.false.460:                                ; preds = %lor.lhs.false.456
  %212 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call461 = call i32 @param_write_int(%struct.gs_param_list_s* %212, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i32* %colors) #5
  store i32 %call461, i32* %code, align 4, !tbaa !5
  %cmp462 = icmp slt i32 %call461, 0
  br i1 %cmp462, label %if.then.529, label %lor.lhs.false.464

lor.lhs.false.464:                                ; preds = %lor.lhs.false.460
  %213 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call465 = call i32 @param_write_int(%struct.gs_param_list_s* %213, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i32 0, i32 0), i32* %depth) #5
  store i32 %call465, i32* %code, align 4, !tbaa !5
  %cmp466 = icmp slt i32 %call465, 0
  br i1 %cmp466, label %if.then.529, label %lor.lhs.false.468

lor.lhs.false.468:                                ; preds = %lor.lhs.false.464
  %214 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call469 = call i32 @param_write_int(%struct.gs_param_list_s* %214, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i32 0, i32 0), i32* %GrayValues) #5
  store i32 %call469, i32* %code, align 4, !tbaa !5
  %cmp470 = icmp slt i32 %call469, 0
  br i1 %cmp470, label %if.then.529, label %lor.lhs.false.472

lor.lhs.false.472:                                ; preds = %lor.lhs.false.468
  %215 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %216 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %PageCount = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %216, i32 0, i32 26
  %call473 = call i32 @param_write_long(%struct.gs_param_list_s* %215, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), i64* %PageCount) #5
  store i32 %call473, i32* %code, align 4, !tbaa !5
  %cmp474 = icmp slt i32 %call473, 0
  br i1 %cmp474, label %if.then.529, label %lor.lhs.false.476

lor.lhs.false.476:                                ; preds = %lor.lhs.false.472
  %217 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %218 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %IgnoreNumCopies = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %218, i32 0, i32 30
  %call477 = call i32 @param_write_bool(%struct.gs_param_list_s* %217, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.44, i32 0, i32 0), i32* %IgnoreNumCopies) #5
  store i32 %call477, i32* %code, align 4, !tbaa !5
  %cmp478 = icmp slt i32 %call477, 0
  br i1 %cmp478, label %if.then.529, label %lor.lhs.false.480

lor.lhs.false.480:                                ; preds = %lor.lhs.false.476
  %219 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %220 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info481 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %220, i32 0, i32 11
  %anti_alias = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info481, i32 0, i32 9
  %text_bits = getelementptr inbounds %struct.gx_device_anti_alias_info_s, %struct.gx_device_anti_alias_info_s* %anti_alias, i32 0, i32 0
  %call482 = call i32 @param_write_int(%struct.gs_param_list_s* %219, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.45, i32 0, i32 0), i32* %text_bits) #5
  store i32 %call482, i32* %code, align 4, !tbaa !5
  %cmp483 = icmp slt i32 %call482, 0
  br i1 %cmp483, label %if.then.529, label %lor.lhs.false.485

lor.lhs.false.485:                                ; preds = %lor.lhs.false.480
  %221 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %222 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info486 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %222, i32 0, i32 11
  %anti_alias487 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info486, i32 0, i32 9
  %graphics_bits = getelementptr inbounds %struct.gx_device_anti_alias_info_s, %struct.gx_device_anti_alias_info_s* %anti_alias487, i32 0, i32 1
  %call488 = call i32 @param_write_int(%struct.gs_param_list_s* %221, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.46, i32 0, i32 0), i32* %graphics_bits) #5
  store i32 %call488, i32* %code, align 4, !tbaa !5
  %cmp489 = icmp slt i32 %call488, 0
  br i1 %cmp489, label %if.then.529, label %lor.lhs.false.491

lor.lhs.false.491:                                ; preds = %lor.lhs.false.485
  %223 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %224 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %LockSafetyParams = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %224, i32 0, i32 32
  %call492 = call i32 @param_write_bool(%struct.gs_param_list_s* %223, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.47, i32 0, i32 0), i32* %LockSafetyParams) #5
  store i32 %call492, i32* %code, align 4, !tbaa !5
  %cmp493 = icmp slt i32 %call492, 0
  br i1 %cmp493, label %if.then.529, label %lor.lhs.false.495

lor.lhs.false.495:                                ; preds = %lor.lhs.false.491
  %225 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %226 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %MaxPatternBitmap = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %226, i32 0, i32 36
  %call496 = call i32 @param_write_int(%struct.gs_param_list_s* %225, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.48, i32 0, i32 0), i32* %MaxPatternBitmap) #5
  store i32 %call496, i32* %code, align 4, !tbaa !5
  %cmp497 = icmp slt i32 %call496, 0
  br i1 %cmp497, label %if.then.529, label %lor.lhs.false.499

lor.lhs.false.499:                                ; preds = %lor.lhs.false.495
  %227 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %228 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %page_uses_transparency = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %228, i32 0, i32 37
  %call500 = call i32 @param_write_bool(%struct.gs_param_list_s* %227, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.49, i32 0, i32 0), i32* %page_uses_transparency) #5
  store i32 %call500, i32* %code, align 4, !tbaa !5
  %cmp501 = icmp slt i32 %call500, 0
  br i1 %cmp501, label %if.then.529, label %lor.lhs.false.503

lor.lhs.false.503:                                ; preds = %lor.lhs.false.499
  %229 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %230 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %space_params = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %230, i32 0, i32 38
  %MaxBitmap = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %space_params, i32 0, i32 0
  %call504 = call i32 @param_write_long(%struct.gs_param_list_s* %229, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), i64* %MaxBitmap) #5
  store i32 %call504, i32* %code, align 4, !tbaa !5
  %cmp505 = icmp slt i32 %call504, 0
  br i1 %cmp505, label %if.then.529, label %lor.lhs.false.507

lor.lhs.false.507:                                ; preds = %lor.lhs.false.503
  %231 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %232 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %space_params508 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %232, i32 0, i32 38
  %band = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %space_params508, i32 0, i32 2
  %BandBufferSpace = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band, i32 0, i32 2
  %call509 = call i32 @param_write_long(%struct.gs_param_list_s* %231, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i32 0, i32 0), i64* %BandBufferSpace) #5
  store i32 %call509, i32* %code, align 4, !tbaa !5
  %cmp510 = icmp slt i32 %call509, 0
  br i1 %cmp510, label %if.then.529, label %lor.lhs.false.512

lor.lhs.false.512:                                ; preds = %lor.lhs.false.507
  %233 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %234 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %space_params513 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %234, i32 0, i32 38
  %band514 = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %space_params513, i32 0, i32 2
  %BandHeight = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band514, i32 0, i32 1
  %call515 = call i32 @param_write_int(%struct.gs_param_list_s* %233, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.52, i32 0, i32 0), i32* %BandHeight) #5
  store i32 %call515, i32* %code, align 4, !tbaa !5
  %cmp516 = icmp slt i32 %call515, 0
  br i1 %cmp516, label %if.then.529, label %lor.lhs.false.518

lor.lhs.false.518:                                ; preds = %lor.lhs.false.512
  %235 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %236 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %space_params519 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %236, i32 0, i32 38
  %band520 = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %space_params519, i32 0, i32 2
  %BandWidth = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band520, i32 0, i32 0
  %call521 = call i32 @param_write_int(%struct.gs_param_list_s* %235, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i32 0, i32 0), i32* %BandWidth) #5
  store i32 %call521, i32* %code, align 4, !tbaa !5
  %cmp522 = icmp slt i32 %call521, 0
  br i1 %cmp522, label %if.then.529, label %lor.lhs.false.524

lor.lhs.false.524:                                ; preds = %lor.lhs.false.518
  %237 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %238 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %space_params525 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %238, i32 0, i32 38
  %BufferSpace = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %space_params525, i32 0, i32 1
  %call526 = call i32 @param_write_long(%struct.gs_param_list_s* %237, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i32 0, i32 0), i64* %BufferSpace) #5
  store i32 %call526, i32* %code, align 4, !tbaa !5
  %cmp527 = icmp slt i32 %call526, 0
  br i1 %cmp527, label %if.then.529, label %if.end.530

if.then.529:                                      ; preds = %lor.lhs.false.524, %lor.lhs.false.518, %lor.lhs.false.512, %lor.lhs.false.507, %lor.lhs.false.503, %lor.lhs.false.499, %lor.lhs.false.495, %lor.lhs.false.491, %lor.lhs.false.485, %lor.lhs.false.480, %lor.lhs.false.476, %lor.lhs.false.472, %lor.lhs.false.468, %lor.lhs.false.464, %lor.lhs.false.460, %lor.lhs.false.456, %lor.lhs.false.452, %lor.lhs.false.448, %lor.lhs.false.444, %lor.lhs.false.440, %lor.lhs.false.435, %lor.lhs.false.430, %lor.lhs.false.425, %lor.lhs.false.420, %lor.lhs.false.415, %lor.lhs.false.410, %lor.lhs.false.405, %lor.lhs.false.400, %lor.lhs.false.395, %lor.lhs.false.390, %lor.lhs.false.385, %lor.lhs.false.380, %lor.lhs.false.376, %lor.lhs.false.372, %lor.lhs.false.368, %lor.lhs.false.363, %lor.lhs.false.358, %lor.lhs.false.353, %lor.lhs.false.348, %lor.lhs.false.344, %lor.lhs.false.340, %lor.lhs.false.336, %lor.lhs.false.332, %lor.lhs.false.328, %lor.lhs.false.324, %lor.lhs.false.320, %lor.lhs.false.316, %cond.end.312, %lor.lhs.false.290, %lor.lhs.false.286, %cond.end.282, %lor.lhs.false.273, %cond.end, %lor.lhs.false.262, %if.end.258
  %239 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %239, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.597

if.end.530:                                       ; preds = %lor.lhs.false.524
  %240 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %LeadingEdge = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %240, i32 0, i32 18
  %241 = load i32, i32* %LeadingEdge, align 4, !tbaa !70
  %and = and i32 %241, 4
  %tobool531 = icmp ne i32 %and, 0
  br i1 %tobool531, label %if.then.532, label %if.end.536

if.then.532:                                      ; preds = %if.end.530
  %242 = bitcast i32* %leadingedge to i8*
  call void @llvm.lifetime.start(i64 4, i8* %242) #1
  %243 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %LeadingEdge533 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %243, i32 0, i32 18
  %244 = load i32, i32* %LeadingEdge533, align 4, !tbaa !70
  %and534 = and i32 %244, 3
  store i32 %and534, i32* %leadingedge, align 4, !tbaa !5
  %245 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call535 = call i32 @param_write_int(%struct.gs_param_list_s* %245, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.55, i32 0, i32 0), i32* %leadingedge) #5
  store i32 %call535, i32* %code, align 4, !tbaa !5
  %246 = bitcast i32* %leadingedge to i8*
  call void @llvm.lifetime.end(i64 4, i8* %246) #1
  br label %if.end.536

if.end.536:                                       ; preds = %if.then.532, %if.end.530
  %247 = load i32, i32* %code, align 4, !tbaa !5
  %cmp537 = icmp slt i32 %247, 0
  br i1 %cmp537, label %if.then.539, label %if.end.540

if.then.539:                                      ; preds = %if.end.536
  %248 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %248, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.597

if.end.540:                                       ; preds = %if.end.536
  %249 = load i32, i32* %colors, align 4, !tbaa !5
  %cmp541 = icmp sgt i32 %249, 1
  br i1 %cmp541, label %if.then.543, label %if.end.570

if.then.543:                                      ; preds = %if.end.540
  %250 = bitcast i32* %RGBValues to i8*
  call void @llvm.lifetime.start(i64 4, i8* %250) #1
  %251 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info544 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %251, i32 0, i32 11
  %max_color = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info544, i32 0, i32 6
  %252 = load i32, i32* %max_color, align 4, !tbaa !71
  %add545 = add i32 %252, 1
  store i32 %add545, i32* %RGBValues, align 4, !tbaa !5
  %253 = bitcast i64* %ColorValues to i8*
  call void @llvm.lifetime.start(i64 8, i8* %253) #1
  %254 = load i32, i32* %depth, align 4, !tbaa !5
  %cmp546 = icmp sge i32 %254, 32
  br i1 %cmp546, label %cond.true.548, label %cond.false.549

cond.true.548:                                    ; preds = %if.then.543
  br label %cond.end.550

cond.false.549:                                   ; preds = %if.then.543
  %255 = load i32, i32* %depth, align 4, !tbaa !5
  %sh_prom = zext i32 %255 to i64
  %shl = shl i64 1, %sh_prom
  br label %cond.end.550

cond.end.550:                                     ; preds = %cond.false.549, %cond.true.548
  %cond551 = phi i64 [ -1, %cond.true.548 ], [ %shl, %cond.false.549 ]
  store i64 %cond551, i64* %ColorValues, align 8, !tbaa !72
  %256 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call552 = call i32 @param_write_int(%struct.gs_param_list_s* %256, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.56, i32 0, i32 0), i32* %RGBValues) #5
  store i32 %call552, i32* %code, align 4, !tbaa !5
  %cmp553 = icmp slt i32 %call552, 0
  br i1 %cmp553, label %if.then.567, label %lor.lhs.false.555

lor.lhs.false.555:                                ; preds = %cond.end.550
  %257 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call556 = call i32 @param_write_int(%struct.gs_param_list_s* %257, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i32 0, i32 0), i32* %RGBValues) #5
  store i32 %call556, i32* %code, align 4, !tbaa !5
  %cmp557 = icmp slt i32 %call556, 0
  br i1 %cmp557, label %if.then.567, label %lor.lhs.false.559

lor.lhs.false.559:                                ; preds = %lor.lhs.false.555
  %258 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call560 = call i32 @param_write_int(%struct.gs_param_list_s* %258, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.58, i32 0, i32 0), i32* %RGBValues) #5
  store i32 %call560, i32* %code, align 4, !tbaa !5
  %cmp561 = icmp slt i32 %call560, 0
  br i1 %cmp561, label %if.then.567, label %lor.lhs.false.563

lor.lhs.false.563:                                ; preds = %lor.lhs.false.559
  %259 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call564 = call i32 @param_write_long(%struct.gs_param_list_s* %259, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.59, i32 0, i32 0), i64* %ColorValues) #5
  store i32 %call564, i32* %code, align 4, !tbaa !5
  %cmp565 = icmp slt i32 %call564, 0
  br i1 %cmp565, label %if.then.567, label %if.end.568

if.then.567:                                      ; preds = %lor.lhs.false.563, %lor.lhs.false.559, %lor.lhs.false.555, %cond.end.550
  %260 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %260, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.568:                                       ; preds = %lor.lhs.false.563
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.568, %if.then.567
  %261 = bitcast i64* %ColorValues to i8*
  call void @llvm.lifetime.end(i64 8, i8* %261) #1
  %262 = bitcast i32* %RGBValues to i8*
  call void @llvm.lifetime.end(i64 4, i8* %262) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.597 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.570

if.end.570:                                       ; preds = %cleanup.cont, %if.end.540
  %263 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs571 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %263, i32 0, i32 0
  %264 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs571, align 8, !tbaa !73
  %requested = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %264, i32 0, i32 5
  %265 = load i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)** %requested, align 8, !tbaa !74
  %266 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call572 = call i32 %265(%struct.gs_param_list_s* %266, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.60, i32 0, i32 0)) #5
  %tobool573 = icmp ne i32 %call572, 0
  br i1 %tobool573, label %if.then.574, label %if.end.596

if.then.574:                                      ; preds = %if.end.570
  %267 = bitcast [768 x i8]* %palette to i8*
  call void @llvm.lifetime.start(i64 768, i8* %267) #1
  %268 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay575 = getelementptr inbounds [768 x i8], [768 x i8]* %palette, i32 0, i32 0
  %call576 = call i32 @param_HWColorMap(%struct.gx_device_s* %268, i8* %arraydecay575) #5
  %tobool577 = icmp ne i32 %call576, 0
  br i1 %tobool577, label %if.then.578, label %if.end.592

if.then.578:                                      ; preds = %if.then.574
  %269 = bitcast %struct.gs_param_string_s* %hwcms to i8*
  call void @llvm.lifetime.start(i64 16, i8* %269) #1
  %arraydecay579 = getelementptr inbounds [768 x i8], [768 x i8]* %palette, i32 0, i32 0
  %data580 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %hwcms, i32 0, i32 0
  store i8* %arraydecay579, i8** %data580, align 8, !tbaa !31
  %270 = load i32, i32* %colors, align 4, !tbaa !5
  %271 = load i32, i32* %depth, align 4, !tbaa !5
  %shl581 = shl i32 %270, %271
  %size582 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %hwcms, i32 0, i32 1
  store i32 %shl581, i32* %size582, align 4, !tbaa !33
  %persistent583 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %hwcms, i32 0, i32 2
  store i32 0, i32* %persistent583, align 4, !tbaa !34
  %272 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call584 = call i32 @param_write_string(%struct.gs_param_list_s* %272, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.60, i32 0, i32 0), %struct.gs_param_string_s* %hwcms) #5
  store i32 %call584, i32* %code, align 4, !tbaa !5
  %cmp585 = icmp slt i32 %call584, 0
  br i1 %cmp585, label %if.then.587, label %if.end.588

if.then.587:                                      ; preds = %if.then.578
  %273 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %273, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.589

if.end.588:                                       ; preds = %if.then.578
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.589

cleanup.589:                                      ; preds = %if.end.588, %if.then.587
  %274 = bitcast %struct.gs_param_string_s* %hwcms to i8*
  call void @llvm.lifetime.end(i64 16, i8* %274) #1
  %cleanup.dest.590 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.590, label %cleanup.593 [
    i32 0, label %cleanup.cont.591
  ]

cleanup.cont.591:                                 ; preds = %cleanup.589
  br label %if.end.592

if.end.592:                                       ; preds = %cleanup.cont.591, %if.then.574
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.593

cleanup.593:                                      ; preds = %if.end.592, %cleanup.589
  %275 = bitcast [768 x i8]* %palette to i8*
  call void @llvm.lifetime.end(i64 768, i8* %275) #1
  %cleanup.dest.594 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.594, label %cleanup.597 [
    i32 0, label %cleanup.cont.595
  ]

cleanup.cont.595:                                 ; preds = %cleanup.593
  br label %if.end.596

if.end.596:                                       ; preds = %cleanup.cont.595, %if.end.570
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.597

cleanup.597:                                      ; preds = %if.end.596, %cleanup.593, %cleanup, %if.then.539, %if.then.529
  %276 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %276) #1
  %277 = bitcast %struct.gs_param_float_array_s* %mhwra to i8*
  call void @llvm.lifetime.end(i64 16, i8* %277) #1
  %278 = bitcast %struct.gs_param_float_array_s* %hwma to i8*
  call void @llvm.lifetime.end(i64 16, i8* %278) #1
  %279 = bitcast %struct.gs_param_int_array_s* %hwsa to i8*
  call void @llvm.lifetime.end(i64 16, i8* %279) #1
  %280 = bitcast [2 x i32]* %HWSize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %280) #1
  %281 = bitcast i32* %GrayValues to i8*
  call void @llvm.lifetime.end(i64 4, i8* %281) #1
  %282 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %282) #1
  %283 = bitcast i32* %mns to i8*
  call void @llvm.lifetime.end(i64 4, i8* %283) #1
  %284 = bitcast i32* %colors to i8*
  call void @llvm.lifetime.end(i64 4, i8* %284) #1
  %285 = bitcast [1 x i8]* %null_str to i8*
  call void @llvm.lifetime.end(i64 1, i8* %285) #1
  %286 = bitcast %struct.gs_param_string_array_s* %scna to i8*
  call void @llvm.lifetime.end(i64 16, i8* %286) #1
  %287 = bitcast %struct.gs_param_float_array_s* %ma to i8*
  call void @llvm.lifetime.end(i64 16, i8* %287) #1
  %288 = bitcast %struct.gs_param_float_array_s* %hwra to i8*
  call void @llvm.lifetime.end(i64 16, i8* %288) #1
  %289 = bitcast %struct.gs_param_float_array_s* %ibba to i8*
  call void @llvm.lifetime.end(i64 16, i8* %289) #1
  %290 = bitcast %struct.gs_param_float_array_s* %msa to i8*
  call void @llvm.lifetime.end(i64 16, i8* %290) #1
  %291 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %291) #1
  %292 = bitcast i32* %prebandthreshold to i8*
  call void @llvm.lifetime.end(i64 4, i8* %292) #1
  %293 = bitcast i32* %sim_overprint to i8*
  call void @llvm.lifetime.end(i64 4, i8* %293) #1
  %294 = bitcast i32* %usefastcolor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %294) #1
  %295 = bitcast i32* %graydetection to i8*
  call void @llvm.lifetime.end(i64 4, i8* %295) #1
  %296 = bitcast i32* %devicegraytok to i8*
  call void @llvm.lifetime.end(i64 4, i8* %296) #1
  %297 = bitcast [4 x i32]* %blackpreserve to i8*
  call void @llvm.lifetime.end(i64 16, i8* %297) #1
  %298 = bitcast [4 x i32]* %blackptcomps to i8*
  call void @llvm.lifetime.end(i64 16, i8* %298) #1
  %299 = bitcast [4 x i32]* %profile_intents to i8*
  call void @llvm.lifetime.end(i64 16, i8* %299) #1
  %300 = bitcast %struct.gs_param_string_s* %icc_colorants to i8*
  call void @llvm.lifetime.end(i64 16, i8* %300) #1
  %301 = bitcast %struct.gs_param_string_s* %link_profile to i8*
  call void @llvm.lifetime.end(i64 16, i8* %301) #1
  %302 = bitcast %struct.gs_param_string_s* %proof_profile to i8*
  call void @llvm.lifetime.end(i64 16, i8* %302) #1
  %303 = bitcast [4 x %struct.gs_param_string_s]* %profile_array to i8*
  call void @llvm.lifetime.end(i64 64, i8* %303) #1
  %304 = bitcast %struct.gs_param_string_s* %pcms to i8*
  call void @llvm.lifetime.end(i64 16, i8* %304) #1
  %305 = bitcast %struct.gs_param_string_s* %dns to i8*
  call void @llvm.lifetime.end(i64 16, i8* %305) #1
  %306 = bitcast i32* %seprs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %306) #1
  %307 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %307) #1
  %308 = load i32, i32* %retval
  ret i32 %308
}

declare %struct.gx_device_s* @gx_default_get_page_device(%struct.gx_device_s*) #2

declare i32 @gx_default_get_alpha_bits(%struct.gx_device_s*, i32) #2

declare void @gx_device_retain(%struct.gx_device_s*, i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i32 @gsicc_init_device_profile_struct(%struct.gx_device_s*, i8*, i32) #2

declare i8* @gsicc_get_dev_icccolorants(%struct.cmm_dev_profile_s*) #2

declare i32 @param_write_name(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_s*) #2

declare i32 @param_write_float_array(%struct.gs_param_list_s*, i8*, %struct.gs_param_float_array_s*) #2

declare i32 @param_write_null(%struct.gs_param_list_s*, i8*) #2

declare i32 @param_write_int(%struct.gs_param_list_s*, i8*, i32*) #2

declare i32 @param_write_name_array(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_array_s*) #2

declare i32 @param_write_bool(%struct.gs_param_list_s*, i8*, i32*) #2

declare i32 @param_write_string(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_s*) #2

declare i32 @param_write_int_array(%struct.gs_param_list_s*, i8*, %struct.gs_param_int_array_s*) #2

declare i32 @param_write_long(%struct.gs_param_list_s*, i8*, i64*) #2

; Function Attrs: nounwind uwtable
define internal i32 @param_HWColorMap(%struct.gx_device_s* %dev, i8* %palette) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %palette.addr = alloca i8*, align 8
  %depth = alloca i32, align 4
  %colors = alloca i32, align 4
  %p = alloca i8*, align 8
  %rgb = alloca [3 x i16], align 2
  %i = alloca i64, align 8
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %palette, i8** %palette.addr, align 8, !tbaa !1
  %0 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 11
  %depth1 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %2 = load i16, i16* %depth1, align 2, !tbaa !28
  %conv = zext i16 %2 to i32
  store i32 %conv, i32* %depth, align 4, !tbaa !5
  %3 = bitcast i32* %colors to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info2, i32 0, i32 1
  %5 = load i32, i32* %num_components, align 4, !tbaa !26
  store i32 %5, i32* %colors, align 4, !tbaa !5
  %6 = load i32, i32* %depth, align 4, !tbaa !5
  %cmp = icmp sle i32 %6, 8
  br i1 %cmp, label %land.lhs.true, label %if.end.33

land.lhs.true:                                    ; preds = %entry
  %7 = load i32, i32* %colors, align 4, !tbaa !5
  %cmp4 = icmp sle i32 %7, 3
  br i1 %cmp4, label %if.then, label %if.end.33

if.then:                                          ; preds = %land.lhs.true
  %8 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load i8*, i8** %palette.addr, align 8, !tbaa !1
  store i8* %9, i8** %p, align 8, !tbaa !1
  %10 = bitcast [3 x i16]* %rgb to i8*
  call void @llvm.lifetime.start(i64 6, i8* %10) #1
  %11 = bitcast i64* %i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i32 0, i32 42
  %map_color_rgb = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 6
  %13 = load i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)** %map_color_rgb, align 8, !tbaa !76
  %cmp6 = icmp eq i32 (%struct.gx_device_s*, i64, i16*)* %13, null
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs9 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %14, i32 0, i32 42
  %map_color_rgb10 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs9, i32 0, i32 6
  store i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_w_b_map_color_rgb, i32 (%struct.gx_device_s*, i64, i16*)** %map_color_rgb10, align 8, !tbaa !76
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  store i64 0, i64* %i, align 8, !tbaa !72
  br label %for.cond

for.cond:                                         ; preds = %for.inc.27, %if.end
  %15 = load i64, i64* %i, align 8, !tbaa !72
  %16 = load i32, i32* %depth, align 4, !tbaa !5
  %sh_prom = zext i32 %16 to i64
  %shr = lshr i64 %15, %sh_prom
  %cmp11 = icmp eq i64 %shr, 0
  br i1 %cmp11, label %for.body, label %for.end.29

for.body:                                         ; preds = %for.cond
  %17 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs13 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 42
  %map_color_rgb14 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs13, i32 0, i32 6
  %19 = load i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)** %map_color_rgb14, align 8, !tbaa !76
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %21 = load i64, i64* %i, align 8, !tbaa !72
  %arraydecay = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i32 0
  %call = call i32 %19(%struct.gx_device_s* %20, i64 %21, i16* %arraydecay) #5
  %cmp15 = icmp slt i32 %call, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %for.body
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.18:                                        ; preds = %for.body
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc, %if.end.18
  %22 = load i32, i32* %j, align 4, !tbaa !5
  %23 = load i32, i32* %colors, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %22, %23
  br i1 %cmp20, label %for.body.22, label %for.end

for.body.22:                                      ; preds = %for.cond.19
  %24 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom = sext i32 %24 to i64
  %arrayidx = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i64 %idxprom
  %25 = load i16, i16* %arrayidx, align 2, !tbaa !77
  %conv23 = zext i16 %25 to i32
  %mul = mul i32 %conv23, 65281
  %add = add i32 %mul, 8388608
  %shr24 = lshr i32 %add, 24
  %conv25 = trunc i32 %shr24 to i16
  %conv26 = trunc i16 %conv25 to i8
  %26 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  store i8 %conv26, i8* %26, align 1, !tbaa !36
  br label %for.inc

for.inc:                                          ; preds = %for.body.22
  %27 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  br label %for.cond.19

for.end:                                          ; preds = %for.cond.19
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.17
  %28 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.30 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.27

for.inc.27:                                       ; preds = %cleanup.cont
  %29 = load i64, i64* %i, align 8, !tbaa !72
  %inc28 = add i64 %29, 1
  store i64 %inc28, i64* %i, align 8, !tbaa !72
  br label %for.cond

for.end.29:                                       ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.30

cleanup.30:                                       ; preds = %for.end.29, %cleanup
  %30 = bitcast i64* %i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = bitcast [3 x i16]* %rgb to i8*
  call void @llvm.lifetime.end(i64 6, i8* %31) #1
  %32 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  br label %cleanup.34

if.end.33:                                        ; preds = %land.lhs.true, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.34

cleanup.34:                                       ; preds = %if.end.33, %cleanup.30
  %33 = bitcast i32* %colors to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_get_hardware_params(%struct.gx_device_s* %dev, %struct.gs_param_list_s* %plist) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gdev_begin_input_media(%struct.gs_param_list_s* %mlist, %struct.gs_param_collection_s* %pdict, i32 %count) #0 {
entry:
  %mlist.addr = alloca %struct.gs_param_list_s*, align 8
  %pdict.addr = alloca %struct.gs_param_collection_s*, align 8
  %count.addr = alloca i32, align 4
  store %struct.gs_param_list_s* %mlist, %struct.gs_param_list_s** %mlist.addr, align 8, !tbaa !1
  store %struct.gs_param_collection_s* %pdict, %struct.gs_param_collection_s** %pdict.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !5
  %0 = load i32, i32* %count.addr, align 4, !tbaa !5
  %1 = load %struct.gs_param_collection_s*, %struct.gs_param_collection_s** %pdict.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %1, i32 0, i32 1
  store i32 %0, i32* %size, align 4, !tbaa !78
  %2 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %mlist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %2, i32 0, i32 0
  %3 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !73
  %begin_xmit_collection = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %3, i32 0, i32 1
  %4 = load i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)** %begin_xmit_collection, align 8, !tbaa !80
  %5 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %mlist.addr, align 8, !tbaa !1
  %6 = load %struct.gs_param_collection_s*, %struct.gs_param_collection_s** %pdict.addr, align 8, !tbaa !1
  %call = call i32 %4(%struct.gs_param_list_s* %5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.61, i32 0, i32 0), %struct.gs_param_collection_s* %6, i32 1) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gdev_write_input_media(i32 %index, %struct.gs_param_collection_s* %pdict, %struct.gdev_input_media_s* %pim) #0 {
entry:
  %retval = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pdict.addr = alloca %struct.gs_param_collection_s*, align 8
  %pim.addr = alloca %struct.gdev_input_media_s*, align 8
  %key = alloca [25 x i8], align 16
  %mdict = alloca %struct.gs_param_collection_s, align 8
  %code = alloca i32, align 4
  %as = alloca %struct.gs_param_string_s, align 8
  %cleanup.dest.slot = alloca i32
  %psa = alloca %struct.gs_param_float_array_s, align 8
  %weight = alloca float, align 4
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.gs_param_collection_s* %pdict, %struct.gs_param_collection_s** %pdict.addr, align 8, !tbaa !1
  store %struct.gdev_input_media_s* %pim, %struct.gdev_input_media_s** %pim.addr, align 8, !tbaa !1
  %0 = bitcast [25 x i8]* %key to i8*
  call void @llvm.lifetime.start(i64 25, i8* %0) #1
  %1 = bitcast %struct.gs_param_collection_s* %mdict to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast %struct.gs_param_string_s* %as to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %arraydecay = getelementptr inbounds [25 x i8], [25 x i8]* %key, i32 0, i32 0
  %4 = load i32, i32* %index.addr, align 4, !tbaa !5
  %call = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i32 0, i32 0), i32 %4) #5
  %size = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %mdict, i32 0, i32 1
  store i32 4, i32* %size, align 4, !tbaa !78
  %5 = load %struct.gs_param_collection_s*, %struct.gs_param_collection_s** %pdict.addr, align 8, !tbaa !1
  %list = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %5, i32 0, i32 0
  %6 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %list, align 8, !tbaa !81
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %6, i32 0, i32 0
  %7 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !73
  %begin_xmit_collection = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %7, i32 0, i32 1
  %8 = load i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)** %begin_xmit_collection, align 8, !tbaa !80
  %9 = load %struct.gs_param_collection_s*, %struct.gs_param_collection_s** %pdict.addr, align 8, !tbaa !1
  %list1 = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %9, i32 0, i32 0
  %10 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %list1, align 8, !tbaa !81
  %arraydecay2 = getelementptr inbounds [25 x i8], [25 x i8]* %key, i32 0, i32 0
  %call3 = call i32 %8(%struct.gs_param_list_s* %10, i8* %arraydecay2, %struct.gs_param_collection_s* %mdict, i32 0) #5
  store i32 %call3, i32* %code, align 4, !tbaa !5
  %11 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.75

if.end:                                           ; preds = %entry
  %13 = load %struct.gdev_input_media_s*, %struct.gdev_input_media_s** %pim.addr, align 8, !tbaa !1
  %PageSize = getelementptr inbounds %struct.gdev_input_media_s, %struct.gdev_input_media_s* %13, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x float], [4 x float]* %PageSize, i32 0, i64 0
  %14 = load float, float* %arrayidx, align 4, !tbaa !82
  %cmp4 = fcmp une float %14, 0.000000e+00
  br i1 %cmp4, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end
  %15 = load %struct.gdev_input_media_s*, %struct.gdev_input_media_s** %pim.addr, align 8, !tbaa !1
  %PageSize5 = getelementptr inbounds %struct.gdev_input_media_s, %struct.gdev_input_media_s* %15, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [4 x float], [4 x float]* %PageSize5, i32 0, i64 1
  %16 = load float, float* %arrayidx6, align 4, !tbaa !82
  %cmp7 = fcmp une float %16, 0.000000e+00
  br i1 %cmp7, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end
  %17 = load %struct.gdev_input_media_s*, %struct.gdev_input_media_s** %pim.addr, align 8, !tbaa !1
  %PageSize8 = getelementptr inbounds %struct.gdev_input_media_s, %struct.gdev_input_media_s* %17, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [4 x float], [4 x float]* %PageSize8, i32 0, i64 2
  %18 = load float, float* %arrayidx9, align 4, !tbaa !82
  %cmp10 = fcmp une float %18, 0.000000e+00
  br i1 %cmp10, label %land.lhs.true.11, label %if.end.34

land.lhs.true.11:                                 ; preds = %lor.lhs.false
  %19 = load %struct.gdev_input_media_s*, %struct.gdev_input_media_s** %pim.addr, align 8, !tbaa !1
  %PageSize12 = getelementptr inbounds %struct.gdev_input_media_s, %struct.gdev_input_media_s* %19, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [4 x float], [4 x float]* %PageSize12, i32 0, i64 3
  %20 = load float, float* %arrayidx13, align 4, !tbaa !82
  %cmp14 = fcmp une float %20, 0.000000e+00
  br i1 %cmp14, label %if.then.15, label %if.end.34

if.then.15:                                       ; preds = %land.lhs.true.11, %land.lhs.true
  %21 = bitcast %struct.gs_param_float_array_s* %psa to i8*
  call void @llvm.lifetime.start(i64 16, i8* %21) #1
  %22 = load %struct.gdev_input_media_s*, %struct.gdev_input_media_s** %pim.addr, align 8, !tbaa !1
  %PageSize16 = getelementptr inbounds %struct.gdev_input_media_s, %struct.gdev_input_media_s* %22, i32 0, i32 0
  %arraydecay17 = getelementptr inbounds [4 x float], [4 x float]* %PageSize16, i32 0, i32 0
  %data = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %psa, i32 0, i32 0
  store float* %arraydecay17, float** %data, align 8, !tbaa !37
  %23 = load %struct.gdev_input_media_s*, %struct.gdev_input_media_s** %pim.addr, align 8, !tbaa !1
  %PageSize18 = getelementptr inbounds %struct.gdev_input_media_s, %struct.gdev_input_media_s* %23, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [4 x float], [4 x float]* %PageSize18, i32 0, i64 0
  %24 = load float, float* %arrayidx19, align 4, !tbaa !82
  %25 = load %struct.gdev_input_media_s*, %struct.gdev_input_media_s** %pim.addr, align 8, !tbaa !1
  %PageSize20 = getelementptr inbounds %struct.gdev_input_media_s, %struct.gdev_input_media_s* %25, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [4 x float], [4 x float]* %PageSize20, i32 0, i64 2
  %26 = load float, float* %arrayidx21, align 4, !tbaa !82
  %cmp22 = fcmp oeq float %24, %26
  br i1 %cmp22, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.15
  %27 = load %struct.gdev_input_media_s*, %struct.gdev_input_media_s** %pim.addr, align 8, !tbaa !1
  %PageSize23 = getelementptr inbounds %struct.gdev_input_media_s, %struct.gdev_input_media_s* %27, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [4 x float], [4 x float]* %PageSize23, i32 0, i64 1
  %28 = load float, float* %arrayidx24, align 4, !tbaa !82
  %29 = load %struct.gdev_input_media_s*, %struct.gdev_input_media_s** %pim.addr, align 8, !tbaa !1
  %PageSize25 = getelementptr inbounds %struct.gdev_input_media_s, %struct.gdev_input_media_s* %29, i32 0, i32 0
  %arrayidx26 = getelementptr inbounds [4 x float], [4 x float]* %PageSize25, i32 0, i64 3
  %30 = load float, float* %arrayidx26, align 4, !tbaa !82
  %cmp27 = fcmp oeq float %28, %30
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.15
  %31 = phi i1 [ false, %if.then.15 ], [ %cmp27, %land.rhs ]
  %cond = select i1 %31, i32 2, i32 4
  %size28 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %psa, i32 0, i32 1
  store i32 %cond, i32* %size28, align 4, !tbaa !39
  %persistent = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %psa, i32 0, i32 2
  store i32 0, i32* %persistent, align 4, !tbaa !40
  %list29 = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %mdict, i32 0, i32 0
  %32 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %list29, align 8, !tbaa !81
  %call30 = call i32 @param_write_float_array(%struct.gs_param_list_s* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), %struct.gs_param_float_array_s* %psa) #5
  store i32 %call30, i32* %code, align 4, !tbaa !5
  %33 = load i32, i32* %code, align 4, !tbaa !5
  %cmp31 = icmp slt i32 %33, 0
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %land.end
  %34 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %34, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.33:                                        ; preds = %land.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.33, %if.then.32
  %35 = bitcast %struct.gs_param_float_array_s* %psa to i8*
  call void @llvm.lifetime.end(i64 16, i8* %35) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.75 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.34

if.end.34:                                        ; preds = %cleanup.cont, %land.lhs.true.11, %lor.lhs.false
  %36 = load %struct.gdev_input_media_s*, %struct.gdev_input_media_s** %pim.addr, align 8, !tbaa !1
  %MediaColor = getelementptr inbounds %struct.gdev_input_media_s, %struct.gdev_input_media_s* %36, i32 0, i32 1
  %37 = load i8*, i8** %MediaColor, align 8, !tbaa !84
  %cmp35 = icmp ne i8* %37, null
  br i1 %cmp35, label %if.then.36, label %if.end.49

if.then.36:                                       ; preds = %if.end.34
  %38 = load %struct.gdev_input_media_s*, %struct.gdev_input_media_s** %pim.addr, align 8, !tbaa !1
  %MediaColor37 = getelementptr inbounds %struct.gdev_input_media_s, %struct.gdev_input_media_s* %38, i32 0, i32 1
  %39 = load i8*, i8** %MediaColor37, align 8, !tbaa !84
  %data38 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %as, i32 0, i32 0
  store i8* %39, i8** %data38, align 8, !tbaa !31
  %data39 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %as, i32 0, i32 0
  %40 = load i8*, i8** %data39, align 8, !tbaa !31
  %call40 = call i64 @strlen(i8* %40) #6
  %conv = trunc i64 %call40 to i32
  %size41 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %as, i32 0, i32 1
  store i32 %conv, i32* %size41, align 4, !tbaa !33
  %persistent42 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %as, i32 0, i32 2
  store i32 1, i32* %persistent42, align 4, !tbaa !34
  %list43 = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %mdict, i32 0, i32 0
  %41 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %list43, align 8, !tbaa !81
  %call44 = call i32 @param_write_string(%struct.gs_param_list_s* %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i32 0, i32 0), %struct.gs_param_string_s* %as) #5
  store i32 %call44, i32* %code, align 4, !tbaa !5
  %42 = load i32, i32* %code, align 4, !tbaa !5
  %cmp45 = icmp slt i32 %42, 0
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.then.36
  %43 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %43, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.75

if.end.48:                                        ; preds = %if.then.36
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.end.34
  %44 = load %struct.gdev_input_media_s*, %struct.gdev_input_media_s** %pim.addr, align 8, !tbaa !1
  %MediaWeight = getelementptr inbounds %struct.gdev_input_media_s, %struct.gdev_input_media_s* %44, i32 0, i32 2
  %45 = load float, float* %MediaWeight, align 4, !tbaa !86
  %cmp50 = fcmp une float %45, 0.000000e+00
  br i1 %cmp50, label %if.then.52, label %if.end.63

if.then.52:                                       ; preds = %if.end.49
  %46 = bitcast float* %weight to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #1
  %47 = load %struct.gdev_input_media_s*, %struct.gdev_input_media_s** %pim.addr, align 8, !tbaa !1
  %MediaWeight53 = getelementptr inbounds %struct.gdev_input_media_s, %struct.gdev_input_media_s* %47, i32 0, i32 2
  %48 = load float, float* %MediaWeight53, align 4, !tbaa !86
  store float %48, float* %weight, align 4, !tbaa !82
  %list54 = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %mdict, i32 0, i32 0
  %49 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %list54, align 8, !tbaa !81
  %call55 = call i32 @param_write_float(%struct.gs_param_list_s* %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i32 0, i32 0), float* %weight) #5
  store i32 %call55, i32* %code, align 4, !tbaa !5
  %50 = load i32, i32* %code, align 4, !tbaa !5
  %cmp56 = icmp slt i32 %50, 0
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.then.52
  %51 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %51, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.60

if.end.59:                                        ; preds = %if.then.52
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.60

cleanup.60:                                       ; preds = %if.end.59, %if.then.58
  %52 = bitcast float* %weight to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %cleanup.dest.61 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.61, label %cleanup.75 [
    i32 0, label %cleanup.cont.62
  ]

cleanup.cont.62:                                  ; preds = %cleanup.60
  br label %if.end.63

if.end.63:                                        ; preds = %cleanup.cont.62, %if.end.49
  %list64 = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %mdict, i32 0, i32 0
  %53 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %list64, align 8, !tbaa !81
  %54 = load %struct.gdev_input_media_s*, %struct.gdev_input_media_s** %pim.addr, align 8, !tbaa !1
  %MediaType = getelementptr inbounds %struct.gdev_input_media_s, %struct.gdev_input_media_s* %54, i32 0, i32 3
  %55 = load i8*, i8** %MediaType, align 8, !tbaa !87
  %call65 = call i32 @finish_media(%struct.gs_param_list_s* %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.65, i32 0, i32 0), i8* %55) #5
  store i32 %call65, i32* %code, align 4, !tbaa !5
  %56 = load i32, i32* %code, align 4, !tbaa !5
  %cmp66 = icmp slt i32 %56, 0
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %if.end.63
  %57 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %57, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.75

if.end.69:                                        ; preds = %if.end.63
  %58 = load %struct.gs_param_collection_s*, %struct.gs_param_collection_s** %pdict.addr, align 8, !tbaa !1
  %list70 = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %58, i32 0, i32 0
  %59 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %list70, align 8, !tbaa !81
  %procs71 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %59, i32 0, i32 0
  %60 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs71, align 8, !tbaa !73
  %end_xmit_collection = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %60, i32 0, i32 2
  %61 = load i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)** %end_xmit_collection, align 8, !tbaa !88
  %62 = load %struct.gs_param_collection_s*, %struct.gs_param_collection_s** %pdict.addr, align 8, !tbaa !1
  %list72 = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %62, i32 0, i32 0
  %63 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %list72, align 8, !tbaa !81
  %arraydecay73 = getelementptr inbounds [25 x i8], [25 x i8]* %key, i32 0, i32 0
  %call74 = call i32 %61(%struct.gs_param_list_s* %63, i8* %arraydecay73, %struct.gs_param_collection_s* %mdict) #5
  store i32 %call74, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.75

cleanup.75:                                       ; preds = %if.end.69, %if.then.68, %cleanup.60, %if.then.47, %cleanup, %if.then
  %64 = bitcast %struct.gs_param_string_s* %as to i8*
  call void @llvm.lifetime.end(i64 16, i8* %64) #1
  %65 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast %struct.gs_param_collection_s* %mdict to i8*
  call void @llvm.lifetime.end(i64 16, i8* %66) #1
  %67 = bitcast [25 x i8]* %key to i8*
  call void @llvm.lifetime.end(i64 25, i8* %67) #1
  %68 = load i32, i32* %retval
  ret i32 %68
}

declare i32 @gs_sprintf(i8*, i8*, ...) #2

declare i32 @param_write_float(%struct.gs_param_list_s*, i8*, float*) #2

; Function Attrs: nounwind uwtable
define internal i32 @finish_media(%struct.gs_param_list_s* %mlist, i8* %key, i8* %media_type) #0 {
entry:
  %mlist.addr = alloca %struct.gs_param_list_s*, align 8
  %key.addr = alloca i8*, align 8
  %media_type.addr = alloca i8*, align 8
  %code = alloca i32, align 4
  %as = alloca %struct.gs_param_string_s, align 8
  store %struct.gs_param_list_s* %mlist, %struct.gs_param_list_s** %mlist.addr, align 8, !tbaa !1
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store i8* %media_type, i8** %media_type.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %1 = load i8*, i8** %media_type.addr, align 8, !tbaa !1
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.gs_param_string_s* %as to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #1
  %3 = load i8*, i8** %media_type.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %as, i32 0, i32 0
  store i8* %3, i8** %data, align 8, !tbaa !31
  %data1 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %as, i32 0, i32 0
  %4 = load i8*, i8** %data1, align 8, !tbaa !31
  %call = call i64 @strlen(i8* %4) #6
  %conv = trunc i64 %call to i32
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %as, i32 0, i32 1
  store i32 %conv, i32* %size, align 4, !tbaa !33
  %persistent = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %as, i32 0, i32 2
  store i32 1, i32* %persistent, align 4, !tbaa !34
  %5 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %mlist.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %call2 = call i32 @param_write_string(%struct.gs_param_list_s* %5, i8* %6, %struct.gs_param_string_s* %as) #5
  store i32 %call2, i32* %code, align 4, !tbaa !5
  %7 = bitcast %struct.gs_param_string_s* %as to i8*
  call void @llvm.lifetime.end(i64 16, i8* %7) #1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, i32* %code, align 4, !tbaa !5
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @gdev_write_input_page_size(i32 %index, %struct.gs_param_collection_s* %pdict, double %width_points, double %height_points) #0 {
entry:
  %index.addr = alloca i32, align 4
  %pdict.addr = alloca %struct.gs_param_collection_s*, align 8
  %width_points.addr = alloca double, align 8
  %height_points.addr = alloca double, align 8
  %media = alloca %struct.gdev_input_media_s, align 8
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.gs_param_collection_s* %pdict, %struct.gs_param_collection_s** %pdict.addr, align 8, !tbaa !1
  store double %width_points, double* %width_points.addr, align 8, !tbaa !89
  store double %height_points, double* %height_points.addr, align 8, !tbaa !89
  %0 = bitcast %struct.gdev_input_media_s* %media to i8*
  call void @llvm.lifetime.start(i64 40, i8* %0) #1
  %1 = load double, double* %width_points.addr, align 8, !tbaa !89
  %conv = fptrunc double %1 to float
  %PageSize = getelementptr inbounds %struct.gdev_input_media_s, %struct.gdev_input_media_s* %media, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x float], [4 x float]* %PageSize, i32 0, i64 2
  store float %conv, float* %arrayidx, align 4, !tbaa !82
  %PageSize1 = getelementptr inbounds %struct.gdev_input_media_s, %struct.gdev_input_media_s* %media, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [4 x float], [4 x float]* %PageSize1, i32 0, i64 0
  store float %conv, float* %arrayidx2, align 4, !tbaa !82
  %2 = load double, double* %height_points.addr, align 8, !tbaa !89
  %conv3 = fptrunc double %2 to float
  %PageSize4 = getelementptr inbounds %struct.gdev_input_media_s, %struct.gdev_input_media_s* %media, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [4 x float], [4 x float]* %PageSize4, i32 0, i64 3
  store float %conv3, float* %arrayidx5, align 4, !tbaa !82
  %PageSize6 = getelementptr inbounds %struct.gdev_input_media_s, %struct.gdev_input_media_s* %media, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [4 x float], [4 x float]* %PageSize6, i32 0, i64 1
  store float %conv3, float* %arrayidx7, align 4, !tbaa !82
  %MediaColor = getelementptr inbounds %struct.gdev_input_media_s, %struct.gdev_input_media_s* %media, i32 0, i32 1
  store i8* null, i8** %MediaColor, align 8, !tbaa !84
  %MediaWeight = getelementptr inbounds %struct.gdev_input_media_s, %struct.gdev_input_media_s* %media, i32 0, i32 2
  store float 0.000000e+00, float* %MediaWeight, align 4, !tbaa !86
  %MediaType = getelementptr inbounds %struct.gdev_input_media_s, %struct.gdev_input_media_s* %media, i32 0, i32 3
  store i8* null, i8** %MediaType, align 8, !tbaa !87
  %3 = load i32, i32* %index.addr, align 4, !tbaa !5
  %4 = load %struct.gs_param_collection_s*, %struct.gs_param_collection_s** %pdict.addr, align 8, !tbaa !1
  %call = call i32 @gdev_write_input_media(i32 %3, %struct.gs_param_collection_s* %4, %struct.gdev_input_media_s* %media) #5
  %5 = bitcast %struct.gdev_input_media_s* %media to i8*
  call void @llvm.lifetime.end(i64 40, i8* %5) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gdev_end_input_media(%struct.gs_param_list_s* %mlist, %struct.gs_param_collection_s* %pdict) #0 {
entry:
  %mlist.addr = alloca %struct.gs_param_list_s*, align 8
  %pdict.addr = alloca %struct.gs_param_collection_s*, align 8
  store %struct.gs_param_list_s* %mlist, %struct.gs_param_list_s** %mlist.addr, align 8, !tbaa !1
  store %struct.gs_param_collection_s* %pdict, %struct.gs_param_collection_s** %pdict.addr, align 8, !tbaa !1
  %0 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %mlist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %0, i32 0, i32 0
  %1 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !73
  %end_xmit_collection = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %1, i32 0, i32 2
  %2 = load i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)** %end_xmit_collection, align 8, !tbaa !88
  %3 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %mlist.addr, align 8, !tbaa !1
  %4 = load %struct.gs_param_collection_s*, %struct.gs_param_collection_s** %pdict.addr, align 8, !tbaa !1
  %call = call i32 %2(%struct.gs_param_list_s* %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.61, i32 0, i32 0), %struct.gs_param_collection_s* %4) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gdev_begin_output_media(%struct.gs_param_list_s* %mlist, %struct.gs_param_collection_s* %pdict, i32 %count) #0 {
entry:
  %mlist.addr = alloca %struct.gs_param_list_s*, align 8
  %pdict.addr = alloca %struct.gs_param_collection_s*, align 8
  %count.addr = alloca i32, align 4
  store %struct.gs_param_list_s* %mlist, %struct.gs_param_list_s** %mlist.addr, align 8, !tbaa !1
  store %struct.gs_param_collection_s* %pdict, %struct.gs_param_collection_s** %pdict.addr, align 8, !tbaa !1
  store i32 %count, i32* %count.addr, align 4, !tbaa !5
  %0 = load i32, i32* %count.addr, align 4, !tbaa !5
  %1 = load %struct.gs_param_collection_s*, %struct.gs_param_collection_s** %pdict.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %1, i32 0, i32 1
  store i32 %0, i32* %size, align 4, !tbaa !78
  %2 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %mlist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %2, i32 0, i32 0
  %3 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !73
  %begin_xmit_collection = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %3, i32 0, i32 1
  %4 = load i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)** %begin_xmit_collection, align 8, !tbaa !80
  %5 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %mlist.addr, align 8, !tbaa !1
  %6 = load %struct.gs_param_collection_s*, %struct.gs_param_collection_s** %pdict.addr, align 8, !tbaa !1
  %call = call i32 %4(%struct.gs_param_list_s* %5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.66, i32 0, i32 0), %struct.gs_param_collection_s* %6, i32 1) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gdev_write_output_media(i32 %index, %struct.gs_param_collection_s* %pdict, %struct.gdev_output_media_s* %pom) #0 {
entry:
  %retval = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pdict.addr = alloca %struct.gs_param_collection_s*, align 8
  %pom.addr = alloca %struct.gdev_output_media_s*, align 8
  %key = alloca [25 x i8], align 16
  %mdict = alloca %struct.gs_param_collection_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.gs_param_collection_s* %pdict, %struct.gs_param_collection_s** %pdict.addr, align 8, !tbaa !1
  store %struct.gdev_output_media_s* %pom, %struct.gdev_output_media_s** %pom.addr, align 8, !tbaa !1
  %0 = bitcast [25 x i8]* %key to i8*
  call void @llvm.lifetime.start(i64 25, i8* %0) #1
  %1 = bitcast %struct.gs_param_collection_s* %mdict to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %arraydecay = getelementptr inbounds [25 x i8], [25 x i8]* %key, i32 0, i32 0
  %3 = load i32, i32* %index.addr, align 4, !tbaa !5
  %call = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i32 0, i32 0), i32 %3) #5
  %size = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %mdict, i32 0, i32 1
  store i32 4, i32* %size, align 4, !tbaa !78
  %4 = load %struct.gs_param_collection_s*, %struct.gs_param_collection_s** %pdict.addr, align 8, !tbaa !1
  %list = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %4, i32 0, i32 0
  %5 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %list, align 8, !tbaa !81
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %5, i32 0, i32 0
  %6 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !73
  %begin_xmit_collection = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %6, i32 0, i32 1
  %7 = load i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)** %begin_xmit_collection, align 8, !tbaa !80
  %8 = load %struct.gs_param_collection_s*, %struct.gs_param_collection_s** %pdict.addr, align 8, !tbaa !1
  %list1 = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %8, i32 0, i32 0
  %9 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %list1, align 8, !tbaa !81
  %arraydecay2 = getelementptr inbounds [25 x i8], [25 x i8]* %key, i32 0, i32 0
  %call3 = call i32 %7(%struct.gs_param_list_s* %9, i8* %arraydecay2, %struct.gs_param_collection_s* %mdict, i32 0) #5
  store i32 %call3, i32* %code, align 4, !tbaa !5
  %10 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %list4 = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %mdict, i32 0, i32 0
  %12 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %list4, align 8, !tbaa !81
  %13 = load %struct.gdev_output_media_s*, %struct.gdev_output_media_s** %pom.addr, align 8, !tbaa !1
  %OutputType = getelementptr inbounds %struct.gdev_output_media_s, %struct.gdev_output_media_s* %13, i32 0, i32 0
  %14 = load i8*, i8** %OutputType, align 8, !tbaa !91
  %call5 = call i32 @finish_media(%struct.gs_param_list_s* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.67, i32 0, i32 0), i8* %14) #5
  store i32 %call5, i32* %code, align 4, !tbaa !5
  %15 = load i32, i32* %code, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %15, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  %16 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end
  %17 = load %struct.gs_param_collection_s*, %struct.gs_param_collection_s** %pdict.addr, align 8, !tbaa !1
  %list9 = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %17, i32 0, i32 0
  %18 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %list9, align 8, !tbaa !81
  %procs10 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %18, i32 0, i32 0
  %19 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs10, align 8, !tbaa !73
  %end_xmit_collection = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %19, i32 0, i32 2
  %20 = load i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)** %end_xmit_collection, align 8, !tbaa !88
  %21 = load %struct.gs_param_collection_s*, %struct.gs_param_collection_s** %pdict.addr, align 8, !tbaa !1
  %list11 = getelementptr inbounds %struct.gs_param_collection_s, %struct.gs_param_collection_s* %21, i32 0, i32 0
  %22 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %list11, align 8, !tbaa !81
  %arraydecay12 = getelementptr inbounds [25 x i8], [25 x i8]* %key, i32 0, i32 0
  %call13 = call i32 %20(%struct.gs_param_list_s* %22, i8* %arraydecay12, %struct.gs_param_collection_s* %mdict) #5
  store i32 %call13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.8, %if.then.7, %if.then
  %23 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = bitcast %struct.gs_param_collection_s* %mdict to i8*
  call void @llvm.lifetime.end(i64 16, i8* %24) #1
  %25 = bitcast [25 x i8]* %key to i8*
  call void @llvm.lifetime.end(i64 25, i8* %25) #1
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define i32 @gdev_end_output_media(%struct.gs_param_list_s* %mlist, %struct.gs_param_collection_s* %pdict) #0 {
entry:
  %mlist.addr = alloca %struct.gs_param_list_s*, align 8
  %pdict.addr = alloca %struct.gs_param_collection_s*, align 8
  store %struct.gs_param_list_s* %mlist, %struct.gs_param_list_s** %mlist.addr, align 8, !tbaa !1
  store %struct.gs_param_collection_s* %pdict, %struct.gs_param_collection_s** %pdict.addr, align 8, !tbaa !1
  %0 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %mlist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %0, i32 0, i32 0
  %1 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !73
  %end_xmit_collection = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %1, i32 0, i32 2
  %2 = load i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)** %end_xmit_collection, align 8, !tbaa !88
  %3 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %mlist.addr, align 8, !tbaa !1
  %4 = load %struct.gs_param_collection_s*, %struct.gs_param_collection_s** %pdict.addr, align 8, !tbaa !1
  %call = call i32 %2(%struct.gs_param_list_s* %3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.66, i32 0, i32 0), %struct.gs_param_collection_s* %4) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gs_putdeviceparams(%struct.gx_device_s* %dev, %struct.gs_param_list_s* %plist) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %was_open = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast i32* %was_open to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %is_open = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 9
  %2 = load i32, i32* %is_open, align 4, !tbaa !93
  store i32 %2, i32* %was_open, align 4, !tbaa !5
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  call void @gx_device_set_procs(%struct.gx_device_s* %4) #5
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 42
  %put_params = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 14
  %6 = load i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)** %put_params, align 8, !tbaa !94
  %cmp = icmp eq i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 42
  %put_params2 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1, i32 0, i32 14
  store i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_default_put_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)** %put_params2, align 8, !tbaa !94
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 42
  %get_alpha_bits = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs3, i32 0, i32 20
  %9 = load i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i32)** %get_alpha_bits, align 8, !tbaa !24
  %cmp4 = icmp eq i32 (%struct.gx_device_s*, i32)* %9, null
  br i1 %cmp4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs6 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %10, i32 0, i32 42
  %get_alpha_bits7 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs6, i32 0, i32 20
  store i32 (%struct.gx_device_s*, i32)* @gx_default_get_alpha_bits, i32 (%struct.gx_device_s*, i32)** %get_alpha_bits7, align 8, !tbaa !24
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs9 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 42
  %put_params10 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs9, i32 0, i32 14
  %12 = load i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)** %put_params10, align 8, !tbaa !94
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %14 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 %12(%struct.gx_device_s* %13, %struct.gs_param_list_s* %14) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %15 = load i32, i32* %code, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %15, 0
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.8
  %16 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end.16

cond.false:                                       ; preds = %if.end.8
  %17 = load i32, i32* %was_open, align 4, !tbaa !5
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %land.lhs.true, label %cond.false.15

land.lhs.true:                                    ; preds = %cond.false
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %is_open12 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 9
  %19 = load i32, i32* %is_open12, align 4, !tbaa !93
  %tobool13 = icmp ne i32 %19, 0
  br i1 %tobool13, label %cond.false.15, label %cond.true.14

cond.true.14:                                     ; preds = %land.lhs.true
  br label %cond.end

cond.false.15:                                    ; preds = %land.lhs.true, %cond.false
  %20 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false.15, %cond.true.14
  %cond = phi i32 [ 1, %cond.true.14 ], [ %20, %cond.false.15 ]
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.end, %cond.true
  %cond17 = phi i32 [ %16, %cond.true ], [ %cond, %cond.end ]
  %21 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast i32* %was_open to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  ret i32 %cond17
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_put_params(%struct.gx_device_s* %dev, %struct.gs_param_list_s* %plist) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %ecode = alloca i32, align 4
  %code = alloca i32, align 4
  %param_name = alloca i8*, align 8
  %hwra = alloca %struct.gs_param_float_array_s, align 8
  %hwsa = alloca %struct.gs_param_int_array_s, align 8
  %msa = alloca %struct.gs_param_float_array_s, align 8
  %ma = alloca %struct.gs_param_float_array_s, align 8
  %hwma = alloca %struct.gs_param_float_array_s, align 8
  %mhwra = alloca %struct.gs_param_float_array_s, align 8
  %scna = alloca %struct.gs_param_string_array_s, align 8
  %nci = alloca i32, align 4
  %ncset = alloca i32, align 4
  %ignc = alloca i32, align 4
  %ucc = alloca i32, align 4
  %icc_pro = alloca %struct.gs_param_string_s, align 8
  %locksafe = alloca i32, align 4
  %ibba = alloca %struct.gs_param_float_array_s, align 8
  %ibbnull = alloca i32, align 4
  %colors = alloca i32, align 4
  %depth = alloca i32, align 4
  %GrayValues = alloca i32, align 4
  %RGBValues = alloca i32, align 4
  %ColorValues = alloca i64, align 8
  %tab = alloca i32, align 4
  %gab = alloca i32, align 4
  %mpbm = alloca i32, align 4
  %page_uses_transparency = alloca i32, align 4
  %sp = alloca %struct.gdev_space_params_s, align 8
  %save_sp = alloca %struct.gdev_space_params_s, align 8
  %rend_intent = alloca [4 x i32], align 16
  %blackptcomp = alloca [4 x i32], align 16
  %blackpreserve = alloca [4 x i32], align 16
  %cms = alloca %struct.gs_param_string_s, align 8
  %leadingedge = alloca i32, align 4
  %k = alloca i32, align 4
  %devicegraytok = alloca i32, align 4
  %graydetection = alloca i32, align 4
  %usefastcolor = alloca i32, align 4
  %sim_overprint = alloca i32, align 4
  %prebandthreshold = alloca i32, align 4
  %profile_types = alloca [4 x i32], align 16
  %t = alloca i32, align 4
  %res = alloca float*, align 8
  %data168 = alloca float*, align 8
  %igni = alloca i32, align 4
  %igni634 = alloca i32, align 4
  %pcms = alloca i8*, align 8
  %igni693 = alloca i32, align 4
  %igni761 = alloca i32, align 4
  %palette = alloca [768 x i8], align 16
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %ecode, align 4, !tbaa !5
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i8** %param_name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %struct.gs_param_float_array_s* %hwra to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = bitcast %struct.gs_param_int_array_s* %hwsa to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #1
  %5 = bitcast %struct.gs_param_float_array_s* %msa to i8*
  call void @llvm.lifetime.start(i64 16, i8* %5) #1
  %6 = bitcast %struct.gs_param_float_array_s* %ma to i8*
  call void @llvm.lifetime.start(i64 16, i8* %6) #1
  %7 = bitcast %struct.gs_param_float_array_s* %hwma to i8*
  call void @llvm.lifetime.start(i64 16, i8* %7) #1
  %8 = bitcast %struct.gs_param_float_array_s* %mhwra to i8*
  call void @llvm.lifetime.start(i64 16, i8* %8) #1
  %9 = bitcast %struct.gs_param_string_array_s* %scna to i8*
  call void @llvm.lifetime.start(i64 16, i8* %9) #1
  %10 = bitcast i32* %nci to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %NumCopies = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 28
  %12 = load i32, i32* %NumCopies, align 4, !tbaa !95
  store i32 %12, i32* %nci, align 4, !tbaa !5
  %13 = bitcast i32* %ncset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %NumCopies_set = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %14, i32 0, i32 29
  %15 = load i32, i32* %NumCopies_set, align 4, !tbaa !69
  store i32 %15, i32* %ncset, align 4, !tbaa !5
  %16 = bitcast i32* %ignc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %IgnoreNumCopies = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 30
  %18 = load i32, i32* %IgnoreNumCopies, align 4, !tbaa !96
  store i32 %18, i32* %ignc, align 4, !tbaa !5
  %19 = bitcast i32* %ucc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %UseCIEColor = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 31
  %21 = load i32, i32* %UseCIEColor, align 4, !tbaa !97
  store i32 %21, i32* %ucc, align 4, !tbaa !5
  %22 = bitcast %struct.gs_param_string_s* %icc_pro to i8*
  call void @llvm.lifetime.start(i64 16, i8* %22) #1
  %23 = bitcast i32* %locksafe to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %LockSafetyParams = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %24, i32 0, i32 32
  %25 = load i32, i32* %LockSafetyParams, align 4, !tbaa !98
  store i32 %25, i32* %locksafe, align 4, !tbaa !5
  %26 = bitcast %struct.gs_param_float_array_s* %ibba to i8*
  call void @llvm.lifetime.start(i64 16, i8* %26) #1
  %27 = bitcast i32* %ibbnull to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  store i32 0, i32* %ibbnull, align 4, !tbaa !5
  %28 = bitcast i32* %colors to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %29, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %30 = load i32, i32* %num_components, align 4, !tbaa !26
  store i32 %30, i32* %colors, align 4, !tbaa !5
  %31 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %32, i32 0, i32 11
  %depth2 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info1, i32 0, i32 3
  %33 = load i16, i16* %depth2, align 2, !tbaa !28
  %conv = zext i16 %33 to i32
  store i32 %conv, i32* %depth, align 4, !tbaa !5
  %34 = bitcast i32* %GrayValues to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  %35 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %35, i32 0, i32 11
  %max_gray = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info3, i32 0, i32 5
  %36 = load i32, i32* %max_gray, align 4, !tbaa !29
  %add = add i32 %36, 1
  store i32 %add, i32* %GrayValues, align 4, !tbaa !5
  %37 = bitcast i32* %RGBValues to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %38 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info4 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %38, i32 0, i32 11
  %max_color = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info4, i32 0, i32 6
  %39 = load i32, i32* %max_color, align 4, !tbaa !71
  %add5 = add i32 %39, 1
  store i32 %add5, i32* %RGBValues, align 4, !tbaa !5
  %40 = bitcast i64* %ColorValues to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #1
  %41 = load i32, i32* %depth, align 4, !tbaa !5
  %cmp = icmp sge i32 %41, 32
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %42 = load i32, i32* %depth, align 4, !tbaa !5
  %sh_prom = zext i32 %42 to i64
  %shl = shl i64 1, %sh_prom
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ -1, %cond.true ], [ %shl, %cond.false ]
  store i64 %cond, i64* %ColorValues, align 8, !tbaa !72
  %43 = bitcast i32* %tab to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #1
  %44 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info7 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %44, i32 0, i32 11
  %anti_alias = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info7, i32 0, i32 9
  %text_bits = getelementptr inbounds %struct.gx_device_anti_alias_info_s, %struct.gx_device_anti_alias_info_s* %anti_alias, i32 0, i32 0
  %45 = load i32, i32* %text_bits, align 4, !tbaa !99
  store i32 %45, i32* %tab, align 4, !tbaa !5
  %46 = bitcast i32* %gab to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #1
  %47 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info8 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %47, i32 0, i32 11
  %anti_alias9 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info8, i32 0, i32 9
  %graphics_bits = getelementptr inbounds %struct.gx_device_anti_alias_info_s, %struct.gx_device_anti_alias_info_s* %anti_alias9, i32 0, i32 1
  %48 = load i32, i32* %graphics_bits, align 4, !tbaa !100
  store i32 %48, i32* %gab, align 4, !tbaa !5
  %49 = bitcast i32* %mpbm to i8*
  call void @llvm.lifetime.start(i64 4, i8* %49) #1
  %50 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %MaxPatternBitmap = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %50, i32 0, i32 36
  %51 = load i32, i32* %MaxPatternBitmap, align 4, !tbaa !101
  store i32 %51, i32* %mpbm, align 4, !tbaa !5
  %52 = bitcast i32* %page_uses_transparency to i8*
  call void @llvm.lifetime.start(i64 4, i8* %52) #1
  %53 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %page_uses_transparency10 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %53, i32 0, i32 37
  %54 = load i32, i32* %page_uses_transparency10, align 4, !tbaa !102
  store i32 %54, i32* %page_uses_transparency, align 4, !tbaa !5
  %55 = bitcast %struct.gdev_space_params_s* %sp to i8*
  call void @llvm.lifetime.start(i64 40, i8* %55) #1
  %56 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %space_params = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %56, i32 0, i32 38
  %57 = bitcast %struct.gdev_space_params_s* %sp to i8*
  %58 = bitcast %struct.gdev_space_params_s* %space_params to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %57, i8* %58, i64 40, i32 8, i1 false), !tbaa.struct !103
  %59 = bitcast %struct.gdev_space_params_s* %save_sp to i8*
  call void @llvm.lifetime.start(i64 40, i8* %59) #1
  %60 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %space_params11 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %60, i32 0, i32 38
  %61 = bitcast %struct.gdev_space_params_s* %save_sp to i8*
  %62 = bitcast %struct.gdev_space_params_s* %space_params11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %61, i8* %62, i64 40, i32 8, i1 false), !tbaa.struct !103
  %63 = bitcast [4 x i32]* %rend_intent to i8*
  call void @llvm.lifetime.start(i64 16, i8* %63) #1
  %64 = bitcast [4 x i32]* %blackptcomp to i8*
  call void @llvm.lifetime.start(i64 16, i8* %64) #1
  %65 = bitcast [4 x i32]* %blackpreserve to i8*
  call void @llvm.lifetime.start(i64 16, i8* %65) #1
  %66 = bitcast %struct.gs_param_string_s* %cms to i8*
  call void @llvm.lifetime.start(i64 16, i8* %66) #1
  %67 = bitcast i32* %leadingedge to i8*
  call void @llvm.lifetime.start(i64 4, i8* %67) #1
  %68 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %LeadingEdge = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %68, i32 0, i32 18
  %69 = load i32, i32* %LeadingEdge, align 4, !tbaa !70
  store i32 %69, i32* %leadingedge, align 4, !tbaa !5
  %70 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %70) #1
  %71 = bitcast i32* %devicegraytok to i8*
  call void @llvm.lifetime.start(i64 4, i8* %71) #1
  store i32 1, i32* %devicegraytok, align 4, !tbaa !5
  %72 = bitcast i32* %graydetection to i8*
  call void @llvm.lifetime.start(i64 4, i8* %72) #1
  store i32 0, i32* %graydetection, align 4, !tbaa !5
  %73 = bitcast i32* %usefastcolor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %73) #1
  store i32 0, i32* %usefastcolor, align 4, !tbaa !5
  %74 = bitcast i32* %sim_overprint to i8*
  call void @llvm.lifetime.start(i64 4, i8* %74) #1
  store i32 1, i32* %sim_overprint, align 4, !tbaa !5
  %75 = bitcast i32* %prebandthreshold to i8*
  call void @llvm.lifetime.start(i64 4, i8* %75) #1
  store i32 0, i32* %prebandthreshold, align 4, !tbaa !5
  %76 = bitcast [4 x i32]* %profile_types to i8*
  call void @llvm.lifetime.start(i64 16, i8* %76) #1
  %77 = bitcast [4 x i32]* %profile_types to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %77, i8* bitcast ([4 x i32]* @gx_default_put_params.profile_types to i8*), i64 16, i32 16, i1 false)
  %78 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %78, i32 0, i32 39
  %79 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !104
  %cmp12 = icmp ne %struct.cmm_dev_profile_s* %79, null
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %80 = load i32, i32* %k, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %80, 4
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %81 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom = sext i32 %81 to i64
  %82 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct16 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %82, i32 0, i32 39
  %83 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct16, align 8, !tbaa !104
  %rendercond = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %83, i32 0, i32 4
  %arrayidx = getelementptr inbounds [4 x %struct.gsicc_rendering_param_s], [4 x %struct.gsicc_rendering_param_s]* %rendercond, i32 0, i64 %idxprom
  %rendering_intent = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %arrayidx, i32 0, i32 0
  %84 = load i32, i32* %rendering_intent, align 4, !tbaa !56
  %85 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom17 = sext i32 %85 to i64
  %arrayidx18 = getelementptr inbounds [4 x i32], [4 x i32]* %rend_intent, i32 0, i64 %idxprom17
  store i32 %84, i32* %arrayidx18, align 4, !tbaa !5
  %86 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom19 = sext i32 %86 to i64
  %87 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct20 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %87, i32 0, i32 39
  %88 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct20, align 8, !tbaa !104
  %rendercond21 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %88, i32 0, i32 4
  %arrayidx22 = getelementptr inbounds [4 x %struct.gsicc_rendering_param_s], [4 x %struct.gsicc_rendering_param_s]* %rendercond21, i32 0, i64 %idxprom19
  %black_point_comp = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %arrayidx22, i32 0, i32 1
  %89 = load i32, i32* %black_point_comp, align 4, !tbaa !57
  %90 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom23 = sext i32 %90 to i64
  %arrayidx24 = getelementptr inbounds [4 x i32], [4 x i32]* %blackptcomp, i32 0, i64 %idxprom23
  store i32 %89, i32* %arrayidx24, align 4, !tbaa !5
  %91 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom25 = sext i32 %91 to i64
  %92 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct26 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %92, i32 0, i32 39
  %93 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct26, align 8, !tbaa !104
  %rendercond27 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %93, i32 0, i32 4
  %arrayidx28 = getelementptr inbounds [4 x %struct.gsicc_rendering_param_s], [4 x %struct.gsicc_rendering_param_s]* %rendercond27, i32 0, i64 %idxprom25
  %preserve_black = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %arrayidx28, i32 0, i32 2
  %94 = load i32, i32* %preserve_black, align 4, !tbaa !58
  %95 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom29 = sext i32 %95 to i64
  %arrayidx30 = getelementptr inbounds [4 x i32], [4 x i32]* %blackpreserve, i32 0, i64 %idxprom29
  store i32 %94, i32* %arrayidx30, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %96 = load i32, i32* %k, align 4, !tbaa !5
  %inc = add nsw i32 %96, 1
  store i32 %inc, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %97 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct31 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %97, i32 0, i32 39
  %98 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct31, align 8, !tbaa !104
  %graydetection32 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %98, i32 0, i32 6
  %99 = load i32, i32* %graydetection32, align 4, !tbaa !63
  store i32 %99, i32* %graydetection, align 4, !tbaa !5
  %100 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct33 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %100, i32 0, i32 39
  %101 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct33, align 8, !tbaa !104
  %devicegraytok34 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %101, i32 0, i32 5
  %102 = load i32, i32* %devicegraytok34, align 4, !tbaa !62
  store i32 %102, i32* %devicegraytok, align 4, !tbaa !5
  %103 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct35 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %103, i32 0, i32 39
  %104 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct35, align 8, !tbaa !104
  %usefastcolor36 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %104, i32 0, i32 8
  %105 = load i32, i32* %usefastcolor36, align 4, !tbaa !64
  store i32 %105, i32* %usefastcolor, align 4, !tbaa !5
  %106 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct37 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %106, i32 0, i32 39
  %107 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct37, align 8, !tbaa !104
  %prebandthreshold38 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %107, i32 0, i32 12
  %108 = load i32, i32* %prebandthreshold38, align 4, !tbaa !66
  store i32 %108, i32* %prebandthreshold, align 4, !tbaa !5
  %109 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct39 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %109, i32 0, i32 39
  %110 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct39, align 8, !tbaa !104
  %sim_overprint40 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %110, i32 0, i32 10
  %111 = load i32, i32* %sim_overprint40, align 4, !tbaa !65
  store i32 %111, i32* %sim_overprint, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %cond.end
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.51, %if.else
  %112 = load i32, i32* %k, align 4, !tbaa !5
  %cmp42 = icmp slt i32 %112, 4
  br i1 %cmp42, label %for.body.44, label %for.end.53

for.body.44:                                      ; preds = %for.cond.41
  %113 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom45 = sext i32 %113 to i64
  %arrayidx46 = getelementptr inbounds [4 x i32], [4 x i32]* %rend_intent, i32 0, i64 %idxprom45
  store i32 8, i32* %arrayidx46, align 4, !tbaa !5
  %114 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom47 = sext i32 %114 to i64
  %arrayidx48 = getelementptr inbounds [4 x i32], [4 x i32]* %blackptcomp, i32 0, i64 %idxprom47
  store i32 8, i32* %arrayidx48, align 4, !tbaa !5
  %115 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom49 = sext i32 %115 to i64
  %arrayidx50 = getelementptr inbounds [4 x i32], [4 x i32]* %blackpreserve, i32 0, i64 %idxprom49
  store i32 8, i32* %arrayidx50, align 4, !tbaa !5
  br label %for.inc.51

for.inc.51:                                       ; preds = %for.body.44
  %116 = load i32, i32* %k, align 4, !tbaa !5
  %inc52 = add nsw i32 %116, 1
  store i32 %inc52, i32* %k, align 4, !tbaa !5
  br label %for.cond.41

for.end.53:                                       ; preds = %for.cond.41
  br label %if.end

if.end:                                           ; preds = %for.end.53, %for.end
  %117 = load i32, i32* %leadingedge, align 4, !tbaa !5
  %and = and i32 %117, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.54, label %if.end.57

if.then.54:                                       ; preds = %if.end
  %118 = load i32, i32* %leadingedge, align 4, !tbaa !5
  %and55 = and i32 %118, 4
  %119 = load i32, i32* %leadingedge, align 4, !tbaa !5
  %shr = ashr i32 %119, 4
  %and56 = and i32 %shr, 3
  %or = or i32 %and55, %and56
  store i32 %or, i32* %leadingedge, align 4, !tbaa !5
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.54, %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.57
  %120 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call = call i32 @param_read_float_array(%struct.gs_param_list_s* %120, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), %struct.gs_param_float_array_s* %hwra) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  switch i32 %call, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.75
  ]

sw.bb:                                            ; preds = %do.body
  %size = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %hwra, i32 0, i32 1
  %121 = load i32, i32* %size, align 4, !tbaa !39
  %cmp58 = icmp ne i32 %121, 2
  br i1 %cmp58, label %if.then.60, label %if.else.61

if.then.60:                                       ; preds = %sw.bb
  store i32 -15, i32* %ecode, align 4, !tbaa !5
  %data = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %hwra, i32 0, i32 0
  store float* null, float** %data, align 8, !tbaa !37
  br label %if.end.73

if.else.61:                                       ; preds = %sw.bb
  %data62 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %hwra, i32 0, i32 0
  %122 = load float*, float** %data62, align 8, !tbaa !37
  %arrayidx63 = getelementptr inbounds float, float* %122, i64 0
  %123 = load float, float* %arrayidx63, align 4, !tbaa !82
  %cmp64 = fcmp ole float %123, 0.000000e+00
  br i1 %cmp64, label %if.then.70, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.61
  %data66 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %hwra, i32 0, i32 0
  %124 = load float*, float** %data66, align 8, !tbaa !37
  %arrayidx67 = getelementptr inbounds float, float* %124, i64 1
  %125 = load float, float* %arrayidx67, align 4, !tbaa !82
  %cmp68 = fcmp ole float %125, 0.000000e+00
  br i1 %cmp68, label %if.then.70, label %if.else.71

if.then.70:                                       ; preds = %lor.lhs.false, %if.else.61
  store i32 -15, i32* %ecode, align 4, !tbaa !5
  br label %if.end.72

if.else.71:                                       ; preds = %lor.lhs.false
  br label %sw.epilog

if.end.72:                                        ; preds = %if.then.70
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.then.60
  br label %hwre

sw.default:                                       ; preds = %do.body
  %126 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %126, i32* %ecode, align 4, !tbaa !5
  br label %hwre

hwre:                                             ; preds = %sw.default, %if.end.73
  %127 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %127, i32 0, i32 0
  %128 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !73
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %128, i32 0, i32 7
  %129 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !105
  %130 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %131 = load i8*, i8** %param_name, align 8, !tbaa !1
  %132 = load i32, i32* %ecode, align 4, !tbaa !5
  %call74 = call i32 %129(%struct.gs_param_list_s* %130, i8* %131, i32 %132) #5
  br label %sw.bb.75

sw.bb.75:                                         ; preds = %do.body, %hwre
  %data76 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %hwra, i32 0, i32 0
  store float* null, float** %data76, align 8, !tbaa !37
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.75, %if.else.71
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.77

do.body.77:                                       ; preds = %do.end
  %133 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call78 = call i32 @param_read_int_array(%struct.gs_param_list_s* %133, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), %struct.gs_param_int_array_s* %hwsa) #5
  store i32 %call78, i32* %code, align 4, !tbaa !5
  switch i32 %call78, label %sw.default.122 [
    i32 0, label %sw.bb.79
    i32 1, label %sw.bb.126
  ]

sw.bb.79:                                         ; preds = %do.body.77
  %size80 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %hwsa, i32 0, i32 1
  %134 = load i32, i32* %size80, align 4, !tbaa !49
  %cmp81 = icmp ne i32 %134, 2
  br i1 %cmp81, label %if.then.83, label %if.else.85

if.then.83:                                       ; preds = %sw.bb.79
  store i32 -15, i32* %ecode, align 4, !tbaa !5
  %data84 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %hwsa, i32 0, i32 0
  store i32* null, i32** %data84, align 8, !tbaa !47
  br label %if.end.121

if.else.85:                                       ; preds = %sw.bb.79
  %data86 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %hwsa, i32 0, i32 0
  %135 = load i32*, i32** %data86, align 8, !tbaa !47
  %arrayidx87 = getelementptr inbounds i32, i32* %135, i64 0
  %136 = load i32, i32* %arrayidx87, align 4, !tbaa !5
  %cmp88 = icmp sle i32 %136, 0
  br i1 %cmp88, label %land.lhs.true, label %lor.lhs.false.94

land.lhs.true:                                    ; preds = %if.else.85
  %data90 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %hwsa, i32 0, i32 0
  %137 = load i32*, i32** %data90, align 8, !tbaa !47
  %arrayidx91 = getelementptr inbounds i32, i32* %137, i64 0
  %138 = load i32, i32* %arrayidx91, align 4, !tbaa !5
  %139 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %139, i32 0, i32 13
  %140 = load i32, i32* %width, align 4, !tbaa !45
  %cmp92 = icmp ne i32 %138, %140
  br i1 %cmp92, label %if.then.104, label %lor.lhs.false.94

lor.lhs.false.94:                                 ; preds = %land.lhs.true, %if.else.85
  %data95 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %hwsa, i32 0, i32 0
  %141 = load i32*, i32** %data95, align 8, !tbaa !47
  %arrayidx96 = getelementptr inbounds i32, i32* %141, i64 1
  %142 = load i32, i32* %arrayidx96, align 4, !tbaa !5
  %cmp97 = icmp sle i32 %142, 0
  br i1 %cmp97, label %land.lhs.true.99, label %if.else.105

land.lhs.true.99:                                 ; preds = %lor.lhs.false.94
  %data100 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %hwsa, i32 0, i32 0
  %143 = load i32*, i32** %data100, align 8, !tbaa !47
  %arrayidx101 = getelementptr inbounds i32, i32* %143, i64 1
  %144 = load i32, i32* %arrayidx101, align 4, !tbaa !5
  %145 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %145, i32 0, i32 14
  %146 = load i32, i32* %height, align 4, !tbaa !46
  %cmp102 = icmp ne i32 %144, %146
  br i1 %cmp102, label %if.then.104, label %if.else.105

if.then.104:                                      ; preds = %land.lhs.true.99, %land.lhs.true
  store i32 -15, i32* %ecode, align 4, !tbaa !5
  br label %if.end.120

if.else.105:                                      ; preds = %land.lhs.true.99, %lor.lhs.false.94
  %data106 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %hwsa, i32 0, i32 0
  %147 = load i32*, i32** %data106, align 8, !tbaa !47
  %arrayidx107 = getelementptr inbounds i32, i32* %147, i64 0
  %148 = load i32, i32* %arrayidx107, align 4, !tbaa !5
  %conv108 = sext i32 %148 to i64
  %cmp109 = icmp sgt i64 %conv108, 8388607
  br i1 %cmp109, label %if.then.117, label %lor.lhs.false.111

lor.lhs.false.111:                                ; preds = %if.else.105
  %data112 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %hwsa, i32 0, i32 0
  %149 = load i32*, i32** %data112, align 8, !tbaa !47
  %arrayidx113 = getelementptr inbounds i32, i32* %149, i64 1
  %150 = load i32, i32* %arrayidx113, align 4, !tbaa !5
  %conv114 = sext i32 %150 to i64
  %cmp115 = icmp sgt i64 %conv114, 8388607
  br i1 %cmp115, label %if.then.117, label %if.else.118

if.then.117:                                      ; preds = %lor.lhs.false.111, %if.else.105
  store i32 -13, i32* %ecode, align 4, !tbaa !5
  br label %if.end.119

if.else.118:                                      ; preds = %lor.lhs.false.111
  br label %sw.epilog.128

if.end.119:                                       ; preds = %if.then.117
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %if.then.104
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120, %if.then.83
  br label %hwse

sw.default.122:                                   ; preds = %do.body.77
  %151 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %151, i32* %ecode, align 4, !tbaa !5
  br label %hwse

hwse:                                             ; preds = %sw.default.122, %if.end.121
  %152 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs123 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %152, i32 0, i32 0
  %153 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs123, align 8, !tbaa !73
  %signal_error124 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %153, i32 0, i32 7
  %154 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error124, align 8, !tbaa !105
  %155 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %156 = load i8*, i8** %param_name, align 8, !tbaa !1
  %157 = load i32, i32* %ecode, align 4, !tbaa !5
  %call125 = call i32 %154(%struct.gs_param_list_s* %155, i8* %156, i32 %157) #5
  br label %sw.bb.126

sw.bb.126:                                        ; preds = %do.body.77, %hwse
  %data127 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %hwsa, i32 0, i32 0
  store i32* null, i32** %data127, align 8, !tbaa !47
  br label %sw.epilog.128

sw.epilog.128:                                    ; preds = %sw.bb.126, %if.else.118
  br label %do.cond.129

do.cond.129:                                      ; preds = %sw.epilog.128
  br label %do.end.130

do.end.130:                                       ; preds = %do.cond.129
  %158 = bitcast i32* %t to i8*
  call void @llvm.lifetime.start(i64 4, i8* %158) #1
  %159 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call131 = call i32 @param_read_int(%struct.gs_param_list_s* %159, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.55, i32 0, i32 0), i32* %t) #5
  store i32 %call131, i32* %code, align 4, !tbaa !5
  %160 = load i32, i32* %code, align 4, !tbaa !5
  %cmp132 = icmp slt i32 %160, 0
  br i1 %cmp132, label %if.then.134, label %if.else.142

if.then.134:                                      ; preds = %do.end.130
  %161 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call135 = call i32 @param_read_null(%struct.gs_param_list_s* %161, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.55, i32 0, i32 0)) #5
  %cmp136 = icmp eq i32 %call135, 0
  br i1 %cmp136, label %if.then.138, label %if.else.140

if.then.138:                                      ; preds = %if.then.134
  %162 = load i32, i32* %leadingedge, align 4, !tbaa !5
  %and139 = and i32 %162, -5
  store i32 %and139, i32* %leadingedge, align 4, !tbaa !5
  store i32 0, i32* %code, align 4, !tbaa !5
  br label %if.end.141

if.else.140:                                      ; preds = %if.then.134
  %163 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %163, i32* %ecode, align 4, !tbaa !5
  br label %if.end.141

if.end.141:                                       ; preds = %if.else.140, %if.then.138
  br label %if.end.159

if.else.142:                                      ; preds = %do.end.130
  %164 = load i32, i32* %code, align 4, !tbaa !5
  %cmp143 = icmp eq i32 %164, 0
  br i1 %cmp143, label %if.then.145, label %if.end.158

if.then.145:                                      ; preds = %if.else.142
  %165 = load i32, i32* %t, align 4, !tbaa !5
  %cmp146 = icmp slt i32 %165, 0
  br i1 %cmp146, label %if.then.151, label %lor.lhs.false.148

lor.lhs.false.148:                                ; preds = %if.then.145
  %166 = load i32, i32* %t, align 4, !tbaa !5
  %cmp149 = icmp sgt i32 %166, 3
  br i1 %cmp149, label %if.then.151, label %if.else.155

if.then.151:                                      ; preds = %lor.lhs.false.148, %if.then.145
  %167 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs152 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %167, i32 0, i32 0
  %168 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs152, align 8, !tbaa !73
  %signal_error153 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %168, i32 0, i32 7
  %169 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error153, align 8, !tbaa !105
  %170 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i32 -15, i32* %ecode, align 4, !tbaa !5
  %call154 = call i32 %169(%struct.gs_param_list_s* %170, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.55, i32 0, i32 0), i32 -15) #5
  br label %if.end.157

if.else.155:                                      ; preds = %lor.lhs.false.148
  %171 = load i32, i32* %t, align 4, !tbaa !5
  %or156 = or i32 4, %171
  store i32 %or156, i32* %leadingedge, align 4, !tbaa !5
  br label %if.end.157

if.end.157:                                       ; preds = %if.else.155, %if.then.151
  br label %if.end.158

if.end.158:                                       ; preds = %if.end.157, %if.else.142
  br label %if.end.159

if.end.159:                                       ; preds = %if.end.158, %if.end.141
  %172 = bitcast i32* %t to i8*
  call void @llvm.lifetime.end(i64 4, i8* %172) #1
  %173 = bitcast float** %res to i8*
  call void @llvm.lifetime.start(i64 8, i8* %173) #1
  %data160 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %hwra, i32 0, i32 0
  %174 = load float*, float** %data160, align 8, !tbaa !37
  %cmp161 = icmp eq float* %174, null
  br i1 %cmp161, label %cond.true.163, label %cond.false.164

cond.true.163:                                    ; preds = %if.end.159
  %175 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %175, i32 0, i32 22
  %arraydecay = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i32 0
  br label %cond.end.166

cond.false.164:                                   ; preds = %if.end.159
  %data165 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %hwra, i32 0, i32 0
  %176 = load float*, float** %data165, align 8, !tbaa !37
  br label %cond.end.166

cond.end.166:                                     ; preds = %cond.false.164, %cond.true.163
  %cond167 = phi float* [ %arraydecay, %cond.true.163 ], [ %176, %cond.false.164 ]
  store float* %cond167, float** %res, align 8, !tbaa !1
  %177 = bitcast float** %data168 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %177) #1
  %178 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %179 = load float*, float** %res, align 8, !tbaa !1
  %call169 = call i32 @param_MediaSize(%struct.gs_param_list_s* %178, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), float* %179, %struct.gs_param_float_array_s* %msa) #5
  store i32 %call169, i32* %code, align 4, !tbaa !5
  %180 = load i32, i32* %code, align 4, !tbaa !5
  %cmp170 = icmp slt i32 %180, 0
  br i1 %cmp170, label %if.then.172, label %if.end.173

if.then.172:                                      ; preds = %cond.end.166
  %181 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %181, i32* %ecode, align 4, !tbaa !5
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.172, %cond.end.166
  %data174 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %msa, i32 0, i32 0
  %182 = load float*, float** %data174, align 8, !tbaa !37
  store float* %182, float** %data168, align 8, !tbaa !1
  %183 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %184 = load float*, float** %res, align 8, !tbaa !1
  %call175 = call i32 @param_MediaSize(%struct.gs_param_list_s* %183, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i32 0, i32 0), float* %184, %struct.gs_param_float_array_s* %msa) #5
  store i32 %call175, i32* %code, align 4, !tbaa !5
  %185 = load i32, i32* %code, align 4, !tbaa !5
  %cmp176 = icmp slt i32 %185, 0
  br i1 %cmp176, label %if.then.178, label %if.else.179

if.then.178:                                      ; preds = %if.end.173
  %186 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %186, i32* %ecode, align 4, !tbaa !5
  br label %if.end.186

if.else.179:                                      ; preds = %if.end.173
  %data180 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %msa, i32 0, i32 0
  %187 = load float*, float** %data180, align 8, !tbaa !37
  %cmp181 = icmp eq float* %187, null
  br i1 %cmp181, label %if.then.183, label %if.end.185

if.then.183:                                      ; preds = %if.else.179
  %188 = load float*, float** %data168, align 8, !tbaa !1
  %data184 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %msa, i32 0, i32 0
  store float* %188, float** %data184, align 8, !tbaa !37
  br label %if.end.185

if.end.185:                                       ; preds = %if.then.183, %if.else.179
  br label %if.end.186

if.end.186:                                       ; preds = %if.end.185, %if.then.178
  %189 = bitcast float** %data168 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %189) #1
  %190 = bitcast float** %res to i8*
  call void @llvm.lifetime.end(i64 8, i8* %190) #1
  br label %do.body.187

do.body.187:                                      ; preds = %if.end.186
  %191 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call188 = call i32 @param_read_float_array(%struct.gs_param_list_s* %191, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), %struct.gs_param_float_array_s* %ma) #5
  store i32 %call188, i32* %code, align 4, !tbaa !5
  switch i32 %call188, label %sw.default.197 [
    i32 0, label %sw.bb.189
    i32 1, label %sw.bb.201
  ]

sw.bb.189:                                        ; preds = %do.body.187
  %size190 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %ma, i32 0, i32 1
  %192 = load i32, i32* %size190, align 4, !tbaa !39
  %cmp191 = icmp ne i32 %192, 2
  br i1 %cmp191, label %if.then.193, label %if.else.195

if.then.193:                                      ; preds = %sw.bb.189
  store i32 -15, i32* %ecode, align 4, !tbaa !5
  %data194 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %ma, i32 0, i32 0
  store float* null, float** %data194, align 8, !tbaa !37
  br label %if.end.196

if.else.195:                                      ; preds = %sw.bb.189
  br label %sw.epilog.203

if.end.196:                                       ; preds = %if.then.193
  br label %me

sw.default.197:                                   ; preds = %do.body.187
  %193 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %193, i32* %ecode, align 4, !tbaa !5
  br label %me

me:                                               ; preds = %sw.default.197, %if.end.196
  %194 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs198 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %194, i32 0, i32 0
  %195 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs198, align 8, !tbaa !73
  %signal_error199 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %195, i32 0, i32 7
  %196 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error199, align 8, !tbaa !105
  %197 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %198 = load i8*, i8** %param_name, align 8, !tbaa !1
  %199 = load i32, i32* %ecode, align 4, !tbaa !5
  %call200 = call i32 %196(%struct.gs_param_list_s* %197, i8* %198, i32 %199) #5
  br label %sw.bb.201

sw.bb.201:                                        ; preds = %do.body.187, %me
  %data202 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %ma, i32 0, i32 0
  store float* null, float** %data202, align 8, !tbaa !37
  br label %sw.epilog.203

sw.epilog.203:                                    ; preds = %sw.bb.201, %if.else.195
  br label %do.cond.204

do.cond.204:                                      ; preds = %sw.epilog.203
  br label %do.end.205

do.end.205:                                       ; preds = %do.cond.204
  br label %do.body.206

do.body.206:                                      ; preds = %do.end.205
  %200 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call207 = call i32 @param_read_float_array(%struct.gs_param_list_s* %200, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), %struct.gs_param_float_array_s* %hwma) #5
  store i32 %call207, i32* %code, align 4, !tbaa !5
  switch i32 %call207, label %sw.default.216 [
    i32 0, label %sw.bb.208
    i32 1, label %sw.bb.220
  ]

sw.bb.208:                                        ; preds = %do.body.206
  %size209 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %hwma, i32 0, i32 1
  %201 = load i32, i32* %size209, align 4, !tbaa !39
  %cmp210 = icmp ne i32 %201, 4
  br i1 %cmp210, label %if.then.212, label %if.else.214

if.then.212:                                      ; preds = %sw.bb.208
  store i32 -15, i32* %ecode, align 4, !tbaa !5
  %data213 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %hwma, i32 0, i32 0
  store float* null, float** %data213, align 8, !tbaa !37
  br label %if.end.215

if.else.214:                                      ; preds = %sw.bb.208
  br label %sw.epilog.222

if.end.215:                                       ; preds = %if.then.212
  br label %hwme

sw.default.216:                                   ; preds = %do.body.206
  %202 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %202, i32* %ecode, align 4, !tbaa !5
  br label %hwme

hwme:                                             ; preds = %sw.default.216, %if.end.215
  %203 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs217 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %203, i32 0, i32 0
  %204 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs217, align 8, !tbaa !73
  %signal_error218 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %204, i32 0, i32 7
  %205 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error218, align 8, !tbaa !105
  %206 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %207 = load i8*, i8** %param_name, align 8, !tbaa !1
  %208 = load i32, i32* %ecode, align 4, !tbaa !5
  %call219 = call i32 %205(%struct.gs_param_list_s* %206, i8* %207, i32 %208) #5
  br label %sw.bb.220

sw.bb.220:                                        ; preds = %do.body.206, %hwme
  %data221 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %hwma, i32 0, i32 0
  store float* null, float** %data221, align 8, !tbaa !37
  br label %sw.epilog.222

sw.epilog.222:                                    ; preds = %sw.bb.220, %if.else.214
  br label %do.cond.223

do.cond.223:                                      ; preds = %sw.epilog.222
  br label %do.end.224

do.end.224:                                       ; preds = %do.cond.223
  br label %do.body.225

do.body.225:                                      ; preds = %do.end.224
  %209 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.37, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call226 = call i32 @param_read_float_array(%struct.gs_param_list_s* %209, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.37, i32 0, i32 0), %struct.gs_param_float_array_s* %mhwra) #5
  store i32 %call226, i32* %code, align 4, !tbaa !5
  switch i32 %call226, label %sw.default.250 [
    i32 0, label %sw.bb.227
    i32 1, label %sw.bb.254
  ]

sw.bb.227:                                        ; preds = %do.body.225
  %size228 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %mhwra, i32 0, i32 1
  %210 = load i32, i32* %size228, align 4, !tbaa !39
  %cmp229 = icmp ne i32 %210, 2
  br i1 %cmp229, label %if.then.231, label %if.else.233

if.then.231:                                      ; preds = %sw.bb.227
  store i32 -15, i32* %ecode, align 4, !tbaa !5
  %data232 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %mhwra, i32 0, i32 0
  store float* null, float** %data232, align 8, !tbaa !37
  br label %if.end.249

if.else.233:                                      ; preds = %sw.bb.227
  %data234 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %mhwra, i32 0, i32 0
  %211 = load float*, float** %data234, align 8, !tbaa !37
  %arrayidx235 = getelementptr inbounds float, float* %211, i64 0
  %212 = load float, float* %arrayidx235, align 4, !tbaa !82
  %213 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %MarginsHWResolution = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %213, i32 0, i32 23
  %arrayidx236 = getelementptr inbounds [2 x float], [2 x float]* %MarginsHWResolution, i32 0, i64 0
  %214 = load float, float* %arrayidx236, align 4, !tbaa !82
  %cmp237 = fcmp une float %212, %214
  br i1 %cmp237, label %if.then.246, label %lor.lhs.false.239

lor.lhs.false.239:                                ; preds = %if.else.233
  %data240 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %mhwra, i32 0, i32 0
  %215 = load float*, float** %data240, align 8, !tbaa !37
  %arrayidx241 = getelementptr inbounds float, float* %215, i64 1
  %216 = load float, float* %arrayidx241, align 4, !tbaa !82
  %217 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %MarginsHWResolution242 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %217, i32 0, i32 23
  %arrayidx243 = getelementptr inbounds [2 x float], [2 x float]* %MarginsHWResolution242, i32 0, i64 1
  %218 = load float, float* %arrayidx243, align 4, !tbaa !82
  %cmp244 = fcmp une float %216, %218
  br i1 %cmp244, label %if.then.246, label %if.else.247

if.then.246:                                      ; preds = %lor.lhs.false.239, %if.else.233
  store i32 -15, i32* %ecode, align 4, !tbaa !5
  br label %if.end.248

if.else.247:                                      ; preds = %lor.lhs.false.239
  br label %sw.epilog.256

if.end.248:                                       ; preds = %if.then.246
  br label %if.end.249

if.end.249:                                       ; preds = %if.end.248, %if.then.231
  br label %mhwre

sw.default.250:                                   ; preds = %do.body.225
  %219 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %219, i32* %ecode, align 4, !tbaa !5
  br label %mhwre

mhwre:                                            ; preds = %sw.default.250, %if.end.249
  %220 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs251 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %220, i32 0, i32 0
  %221 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs251, align 8, !tbaa !73
  %signal_error252 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %221, i32 0, i32 7
  %222 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error252, align 8, !tbaa !105
  %223 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %224 = load i8*, i8** %param_name, align 8, !tbaa !1
  %225 = load i32, i32* %ecode, align 4, !tbaa !5
  %call253 = call i32 %222(%struct.gs_param_list_s* %223, i8* %224, i32 %225) #5
  br label %sw.bb.254

sw.bb.254:                                        ; preds = %do.body.225, %mhwre
  %data255 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %mhwra, i32 0, i32 0
  store float* null, float** %data255, align 8, !tbaa !37
  br label %sw.epilog.256

sw.epilog.256:                                    ; preds = %sw.bb.254, %if.else.247
  br label %do.cond.257

do.cond.257:                                      ; preds = %sw.epilog.256
  br label %do.end.258

do.end.258:                                       ; preds = %do.cond.257
  %226 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.44, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call259 = call i32 @param_read_bool(%struct.gs_param_list_s* %226, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.44, i32 0, i32 0), i32* %ignc) #5
  store i32 %call259, i32* %code, align 4, !tbaa !5
  switch i32 %call259, label %sw.default.260 [
    i32 0, label %sw.bb.264
    i32 1, label %sw.bb.264
  ]

sw.default.260:                                   ; preds = %do.end.258
  %227 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %227, i32* %ecode, align 4, !tbaa !5
  %228 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs261 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %228, i32 0, i32 0
  %229 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs261, align 8, !tbaa !73
  %signal_error262 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %229, i32 0, i32 7
  %230 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error262, align 8, !tbaa !105
  %231 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %232 = load i8*, i8** %param_name, align 8, !tbaa !1
  %233 = load i32, i32* %ecode, align 4, !tbaa !5
  %call263 = call i32 %230(%struct.gs_param_list_s* %231, i8* %232, i32 %233) #5
  br label %sw.bb.264

sw.bb.264:                                        ; preds = %do.end.258, %do.end.258, %sw.default.260
  br label %sw.epilog.265

sw.epilog.265:                                    ; preds = %sw.bb.264
  %234 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %NumCopies_set266 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %234, i32 0, i32 29
  %235 = load i32, i32* %NumCopies_set266, align 4, !tbaa !69
  %cmp267 = icmp sge i32 %235, 0
  br i1 %cmp267, label %land.lhs.true.269, label %if.end.292

land.lhs.true.269:                                ; preds = %sw.epilog.265
  %236 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs270 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %236, i32 0, i32 42
  %get_page_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs270, i32 0, i32 19
  %237 = load %struct.gx_device_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)** %get_page_device, align 8, !tbaa !23
  %238 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call271 = call %struct.gx_device_s* %237(%struct.gx_device_s* %238) #5
  %cmp272 = icmp ne %struct.gx_device_s* %call271, null
  br i1 %cmp272, label %if.then.274, label %if.end.292

if.then.274:                                      ; preds = %land.lhs.true.269
  %239 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call275 = call i32 @param_read_int(%struct.gs_param_list_s* %239, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i32* %nci) #5
  store i32 %call275, i32* %code, align 4, !tbaa !5
  switch i32 %call275, label %sw.default.282 [
    i32 0, label %sw.bb.276
    i32 1, label %sw.epilog.291
  ]

sw.bb.276:                                        ; preds = %if.then.274
  %240 = load i32, i32* %nci, align 4, !tbaa !5
  %cmp277 = icmp slt i32 %240, 0
  br i1 %cmp277, label %if.then.279, label %if.else.280

if.then.279:                                      ; preds = %sw.bb.276
  store i32 -15, i32* %ecode, align 4, !tbaa !5
  br label %if.end.281

if.else.280:                                      ; preds = %sw.bb.276
  store i32 1, i32* %ncset, align 4, !tbaa !5
  br label %sw.epilog.291

if.end.281:                                       ; preds = %if.then.279
  br label %nce

sw.default.282:                                   ; preds = %if.then.274
  %241 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %242 = load i8*, i8** %param_name, align 8, !tbaa !1
  %call283 = call i32 @param_read_null(%struct.gs_param_list_s* %241, i8* %242) #5
  store i32 %call283, i32* %code, align 4, !tbaa !5
  %cmp284 = icmp eq i32 %call283, 0
  br i1 %cmp284, label %if.then.286, label %if.end.287

if.then.286:                                      ; preds = %sw.default.282
  store i32 0, i32* %ncset, align 4, !tbaa !5
  br label %sw.epilog.291

if.end.287:                                       ; preds = %sw.default.282
  %243 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %243, i32* %ecode, align 4, !tbaa !5
  br label %nce

nce:                                              ; preds = %if.end.287, %if.end.281
  %244 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs288 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %244, i32 0, i32 0
  %245 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs288, align 8, !tbaa !73
  %signal_error289 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %245, i32 0, i32 7
  %246 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error289, align 8, !tbaa !105
  %247 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %248 = load i8*, i8** %param_name, align 8, !tbaa !1
  %249 = load i32, i32* %ecode, align 4, !tbaa !5
  %call290 = call i32 %246(%struct.gs_param_list_s* %247, i8* %248, i32 %249) #5
  br label %sw.epilog.291

sw.epilog.291:                                    ; preds = %nce, %if.then.274, %if.then.286, %if.else.280
  br label %if.end.292

if.end.292:                                       ; preds = %sw.epilog.291, %land.lhs.true.269, %sw.epilog.265
  %250 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call293 = call i32 @param_read_string(%struct.gs_param_list_s* %250, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0), %struct.gs_param_string_s* %icc_pro) #5
  store i32 %call293, i32* %code, align 4, !tbaa !5
  %cmp294 = icmp ne i32 %call293, 1
  br i1 %cmp294, label %if.then.296, label %if.end.298

if.then.296:                                      ; preds = %if.end.292
  %251 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call297 = call i32 @gx_default_put_icc(%struct.gs_param_string_s* %icc_pro, %struct.gx_device_s* %251, i32 0) #5
  br label %if.end.298

if.end.298:                                       ; preds = %if.then.296, %if.end.292
  %252 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call299 = call i32 @param_read_string(%struct.gs_param_list_s* %252, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0), %struct.gs_param_string_s* %icc_pro) #5
  store i32 %call299, i32* %code, align 4, !tbaa !5
  %cmp300 = icmp ne i32 %call299, 1
  br i1 %cmp300, label %if.then.302, label %if.end.304

if.then.302:                                      ; preds = %if.end.298
  %253 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call303 = call i32 @gx_default_put_icc(%struct.gs_param_string_s* %icc_pro, %struct.gx_device_s* %253, i32 1) #5
  br label %if.end.304

if.end.304:                                       ; preds = %if.then.302, %if.end.298
  %254 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call305 = call i32 @param_read_string(%struct.gs_param_list_s* %254, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0), %struct.gs_param_string_s* %icc_pro) #5
  store i32 %call305, i32* %code, align 4, !tbaa !5
  %cmp306 = icmp ne i32 %call305, 1
  br i1 %cmp306, label %if.then.308, label %if.end.310

if.then.308:                                      ; preds = %if.end.304
  %255 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call309 = call i32 @gx_default_put_icc(%struct.gs_param_string_s* %icc_pro, %struct.gx_device_s* %255, i32 2) #5
  br label %if.end.310

if.end.310:                                       ; preds = %if.then.308, %if.end.304
  %256 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call311 = call i32 @param_read_string(%struct.gs_param_list_s* %256, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), %struct.gs_param_string_s* %icc_pro) #5
  store i32 %call311, i32* %code, align 4, !tbaa !5
  %cmp312 = icmp ne i32 %call311, 1
  br i1 %cmp312, label %if.then.314, label %if.end.316

if.then.314:                                      ; preds = %if.end.310
  %257 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call315 = call i32 @gx_default_put_icc(%struct.gs_param_string_s* %icc_pro, %struct.gx_device_s* %257, i32 3) #5
  br label %if.end.316

if.end.316:                                       ; preds = %if.then.314, %if.end.310
  %258 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call317 = call i32 @param_read_string(%struct.gs_param_list_s* %258, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0), %struct.gs_param_string_s* %icc_pro) #5
  store i32 %call317, i32* %code, align 4, !tbaa !5
  %cmp318 = icmp ne i32 %call317, 1
  br i1 %cmp318, label %if.then.320, label %if.end.322

if.then.320:                                      ; preds = %if.end.316
  %259 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call321 = call i32 @gx_default_put_icc(%struct.gs_param_string_s* %icc_pro, %struct.gx_device_s* %259, i32 4) #5
  br label %if.end.322

if.end.322:                                       ; preds = %if.then.320, %if.end.316
  %260 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call323 = call i32 @param_read_string(%struct.gs_param_list_s* %260, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0), %struct.gs_param_string_s* %icc_pro) #5
  store i32 %call323, i32* %code, align 4, !tbaa !5
  %cmp324 = icmp ne i32 %call323, 1
  br i1 %cmp324, label %if.then.326, label %if.end.328

if.then.326:                                      ; preds = %if.end.322
  %261 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call327 = call i32 @gx_default_put_icc(%struct.gs_param_string_s* %icc_pro, %struct.gx_device_s* %261, i32 5) #5
  br label %if.end.328

if.end.328:                                       ; preds = %if.then.326, %if.end.322
  %262 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call329 = call i32 @param_read_string(%struct.gs_param_list_s* %262, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0), %struct.gs_param_string_s* %icc_pro) #5
  store i32 %call329, i32* %code, align 4, !tbaa !5
  %cmp330 = icmp ne i32 %call329, 1
  br i1 %cmp330, label %if.then.332, label %if.end.334

if.then.332:                                      ; preds = %if.end.328
  %263 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call333 = call i32 @gx_default_put_icc_colorants(%struct.gs_param_string_s* %icc_pro, %struct.gx_device_s* %263) #5
  br label %if.end.334

if.end.334:                                       ; preds = %if.then.332, %if.end.328
  %264 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %arrayidx335 = getelementptr inbounds [4 x i32], [4 x i32]* %rend_intent, i32 0, i64 0
  %call336 = call i32 @param_read_int(%struct.gs_param_list_s* %264, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), i32* %arrayidx335) #5
  store i32 %call336, i32* %code, align 4, !tbaa !5
  %cmp337 = icmp slt i32 %call336, 0
  br i1 %cmp337, label %if.then.339, label %if.end.343

if.then.339:                                      ; preds = %if.end.334
  %265 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %265, i32* %ecode, align 4, !tbaa !5
  %266 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs340 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %266, i32 0, i32 0
  %267 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs340, align 8, !tbaa !73
  %signal_error341 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %267, i32 0, i32 7
  %268 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error341, align 8, !tbaa !105
  %269 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %270 = load i8*, i8** %param_name, align 8, !tbaa !1
  %271 = load i32, i32* %ecode, align 4, !tbaa !5
  %call342 = call i32 %268(%struct.gs_param_list_s* %269, i8* %270, i32 %271) #5
  br label %if.end.343

if.end.343:                                       ; preds = %if.then.339, %if.end.334
  %272 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %arrayidx344 = getelementptr inbounds [4 x i32], [4 x i32]* %rend_intent, i32 0, i64 1
  %call345 = call i32 @param_read_int(%struct.gs_param_list_s* %272, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), i32* %arrayidx344) #5
  store i32 %call345, i32* %code, align 4, !tbaa !5
  %cmp346 = icmp slt i32 %call345, 0
  br i1 %cmp346, label %if.then.348, label %if.end.352

if.then.348:                                      ; preds = %if.end.343
  %273 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %273, i32* %ecode, align 4, !tbaa !5
  %274 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs349 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %274, i32 0, i32 0
  %275 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs349, align 8, !tbaa !73
  %signal_error350 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %275, i32 0, i32 7
  %276 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error350, align 8, !tbaa !105
  %277 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %278 = load i8*, i8** %param_name, align 8, !tbaa !1
  %279 = load i32, i32* %ecode, align 4, !tbaa !5
  %call351 = call i32 %276(%struct.gs_param_list_s* %277, i8* %278, i32 %279) #5
  br label %if.end.352

if.end.352:                                       ; preds = %if.then.348, %if.end.343
  %280 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %arrayidx353 = getelementptr inbounds [4 x i32], [4 x i32]* %rend_intent, i32 0, i64 2
  %call354 = call i32 @param_read_int(%struct.gs_param_list_s* %280, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), i32* %arrayidx353) #5
  store i32 %call354, i32* %code, align 4, !tbaa !5
  %cmp355 = icmp slt i32 %call354, 0
  br i1 %cmp355, label %if.then.357, label %if.end.361

if.then.357:                                      ; preds = %if.end.352
  %281 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %281, i32* %ecode, align 4, !tbaa !5
  %282 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs358 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %282, i32 0, i32 0
  %283 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs358, align 8, !tbaa !73
  %signal_error359 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %283, i32 0, i32 7
  %284 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error359, align 8, !tbaa !105
  %285 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %286 = load i8*, i8** %param_name, align 8, !tbaa !1
  %287 = load i32, i32* %ecode, align 4, !tbaa !5
  %call360 = call i32 %284(%struct.gs_param_list_s* %285, i8* %286, i32 %287) #5
  br label %if.end.361

if.end.361:                                       ; preds = %if.then.357, %if.end.352
  %288 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %arrayidx362 = getelementptr inbounds [4 x i32], [4 x i32]* %rend_intent, i32 0, i64 3
  %call363 = call i32 @param_read_int(%struct.gs_param_list_s* %288, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), i32* %arrayidx362) #5
  store i32 %call363, i32* %code, align 4, !tbaa !5
  %cmp364 = icmp slt i32 %call363, 0
  br i1 %cmp364, label %if.then.366, label %if.end.370

if.then.366:                                      ; preds = %if.end.361
  %289 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %289, i32* %ecode, align 4, !tbaa !5
  %290 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs367 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %290, i32 0, i32 0
  %291 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs367, align 8, !tbaa !73
  %signal_error368 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %291, i32 0, i32 7
  %292 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error368, align 8, !tbaa !105
  %293 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %294 = load i8*, i8** %param_name, align 8, !tbaa !1
  %295 = load i32, i32* %ecode, align 4, !tbaa !5
  %call369 = call i32 %292(%struct.gs_param_list_s* %293, i8* %294, i32 %295) #5
  br label %if.end.370

if.end.370:                                       ; preds = %if.then.366, %if.end.361
  %296 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %arrayidx371 = getelementptr inbounds [4 x i32], [4 x i32]* %blackptcomp, i32 0, i64 0
  %call372 = call i32 @param_read_int(%struct.gs_param_list_s* %296, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0), i32* %arrayidx371) #5
  store i32 %call372, i32* %code, align 4, !tbaa !5
  %cmp373 = icmp slt i32 %call372, 0
  br i1 %cmp373, label %if.then.375, label %if.end.379

if.then.375:                                      ; preds = %if.end.370
  %297 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %297, i32* %ecode, align 4, !tbaa !5
  %298 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs376 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %298, i32 0, i32 0
  %299 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs376, align 8, !tbaa !73
  %signal_error377 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %299, i32 0, i32 7
  %300 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error377, align 8, !tbaa !105
  %301 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %302 = load i8*, i8** %param_name, align 8, !tbaa !1
  %303 = load i32, i32* %ecode, align 4, !tbaa !5
  %call378 = call i32 %300(%struct.gs_param_list_s* %301, i8* %302, i32 %303) #5
  br label %if.end.379

if.end.379:                                       ; preds = %if.then.375, %if.end.370
  %304 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %arrayidx380 = getelementptr inbounds [4 x i32], [4 x i32]* %blackptcomp, i32 0, i64 1
  %call381 = call i32 @param_read_int(%struct.gs_param_list_s* %304, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0), i32* %arrayidx380) #5
  store i32 %call381, i32* %code, align 4, !tbaa !5
  %cmp382 = icmp slt i32 %call381, 0
  br i1 %cmp382, label %if.then.384, label %if.end.388

if.then.384:                                      ; preds = %if.end.379
  %305 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %305, i32* %ecode, align 4, !tbaa !5
  %306 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs385 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %306, i32 0, i32 0
  %307 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs385, align 8, !tbaa !73
  %signal_error386 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %307, i32 0, i32 7
  %308 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error386, align 8, !tbaa !105
  %309 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %310 = load i8*, i8** %param_name, align 8, !tbaa !1
  %311 = load i32, i32* %ecode, align 4, !tbaa !5
  %call387 = call i32 %308(%struct.gs_param_list_s* %309, i8* %310, i32 %311) #5
  br label %if.end.388

if.end.388:                                       ; preds = %if.then.384, %if.end.379
  %312 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %arrayidx389 = getelementptr inbounds [4 x i32], [4 x i32]* %blackptcomp, i32 0, i64 2
  %call390 = call i32 @param_read_int(%struct.gs_param_list_s* %312, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0), i32* %arrayidx389) #5
  store i32 %call390, i32* %code, align 4, !tbaa !5
  %cmp391 = icmp slt i32 %call390, 0
  br i1 %cmp391, label %if.then.393, label %if.end.397

if.then.393:                                      ; preds = %if.end.388
  %313 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %313, i32* %ecode, align 4, !tbaa !5
  %314 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs394 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %314, i32 0, i32 0
  %315 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs394, align 8, !tbaa !73
  %signal_error395 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %315, i32 0, i32 7
  %316 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error395, align 8, !tbaa !105
  %317 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %318 = load i8*, i8** %param_name, align 8, !tbaa !1
  %319 = load i32, i32* %ecode, align 4, !tbaa !5
  %call396 = call i32 %316(%struct.gs_param_list_s* %317, i8* %318, i32 %319) #5
  br label %if.end.397

if.end.397:                                       ; preds = %if.then.393, %if.end.388
  %320 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %arrayidx398 = getelementptr inbounds [4 x i32], [4 x i32]* %blackptcomp, i32 0, i64 3
  %call399 = call i32 @param_read_int(%struct.gs_param_list_s* %320, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0), i32* %arrayidx398) #5
  store i32 %call399, i32* %code, align 4, !tbaa !5
  %cmp400 = icmp slt i32 %call399, 0
  br i1 %cmp400, label %if.then.402, label %if.end.406

if.then.402:                                      ; preds = %if.end.397
  %321 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %321, i32* %ecode, align 4, !tbaa !5
  %322 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs403 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %322, i32 0, i32 0
  %323 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs403, align 8, !tbaa !73
  %signal_error404 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %323, i32 0, i32 7
  %324 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error404, align 8, !tbaa !105
  %325 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %326 = load i8*, i8** %param_name, align 8, !tbaa !1
  %327 = load i32, i32* %ecode, align 4, !tbaa !5
  %call405 = call i32 %324(%struct.gs_param_list_s* %325, i8* %326, i32 %327) #5
  br label %if.end.406

if.end.406:                                       ; preds = %if.then.402, %if.end.397
  %328 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %arrayidx407 = getelementptr inbounds [4 x i32], [4 x i32]* %blackpreserve, i32 0, i64 0
  %call408 = call i32 @param_read_int(%struct.gs_param_list_s* %328, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i32* %arrayidx407) #5
  store i32 %call408, i32* %code, align 4, !tbaa !5
  %cmp409 = icmp slt i32 %call408, 0
  br i1 %cmp409, label %if.then.411, label %if.end.415

if.then.411:                                      ; preds = %if.end.406
  %329 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %329, i32* %ecode, align 4, !tbaa !5
  %330 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs412 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %330, i32 0, i32 0
  %331 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs412, align 8, !tbaa !73
  %signal_error413 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %331, i32 0, i32 7
  %332 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error413, align 8, !tbaa !105
  %333 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %334 = load i8*, i8** %param_name, align 8, !tbaa !1
  %335 = load i32, i32* %ecode, align 4, !tbaa !5
  %call414 = call i32 %332(%struct.gs_param_list_s* %333, i8* %334, i32 %335) #5
  br label %if.end.415

if.end.415:                                       ; preds = %if.then.411, %if.end.406
  %336 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %arrayidx416 = getelementptr inbounds [4 x i32], [4 x i32]* %blackpreserve, i32 0, i64 1
  %call417 = call i32 @param_read_int(%struct.gs_param_list_s* %336, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i32 0, i32 0), i32* %arrayidx416) #5
  store i32 %call417, i32* %code, align 4, !tbaa !5
  %cmp418 = icmp slt i32 %call417, 0
  br i1 %cmp418, label %if.then.420, label %if.end.424

if.then.420:                                      ; preds = %if.end.415
  %337 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %337, i32* %ecode, align 4, !tbaa !5
  %338 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs421 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %338, i32 0, i32 0
  %339 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs421, align 8, !tbaa !73
  %signal_error422 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %339, i32 0, i32 7
  %340 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error422, align 8, !tbaa !105
  %341 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %342 = load i8*, i8** %param_name, align 8, !tbaa !1
  %343 = load i32, i32* %ecode, align 4, !tbaa !5
  %call423 = call i32 %340(%struct.gs_param_list_s* %341, i8* %342, i32 %343) #5
  br label %if.end.424

if.end.424:                                       ; preds = %if.then.420, %if.end.415
  %344 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %arrayidx425 = getelementptr inbounds [4 x i32], [4 x i32]* %blackpreserve, i32 0, i64 2
  %call426 = call i32 @param_read_int(%struct.gs_param_list_s* %344, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i32 0, i32 0), i32* %arrayidx425) #5
  store i32 %call426, i32* %code, align 4, !tbaa !5
  %cmp427 = icmp slt i32 %call426, 0
  br i1 %cmp427, label %if.then.429, label %if.end.433

if.then.429:                                      ; preds = %if.end.424
  %345 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %345, i32* %ecode, align 4, !tbaa !5
  %346 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs430 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %346, i32 0, i32 0
  %347 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs430, align 8, !tbaa !73
  %signal_error431 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %347, i32 0, i32 7
  %348 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error431, align 8, !tbaa !105
  %349 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %350 = load i8*, i8** %param_name, align 8, !tbaa !1
  %351 = load i32, i32* %ecode, align 4, !tbaa !5
  %call432 = call i32 %348(%struct.gs_param_list_s* %349, i8* %350, i32 %351) #5
  br label %if.end.433

if.end.433:                                       ; preds = %if.then.429, %if.end.424
  %352 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %arrayidx434 = getelementptr inbounds [4 x i32], [4 x i32]* %blackpreserve, i32 0, i64 3
  %call435 = call i32 @param_read_int(%struct.gs_param_list_s* %352, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i32 0, i32 0), i32* %arrayidx434) #5
  store i32 %call435, i32* %code, align 4, !tbaa !5
  %cmp436 = icmp slt i32 %call435, 0
  br i1 %cmp436, label %if.then.438, label %if.end.442

if.then.438:                                      ; preds = %if.end.433
  %353 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %353, i32* %ecode, align 4, !tbaa !5
  %354 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs439 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %354, i32 0, i32 0
  %355 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs439, align 8, !tbaa !73
  %signal_error440 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %355, i32 0, i32 7
  %356 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error440, align 8, !tbaa !105
  %357 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %358 = load i8*, i8** %param_name, align 8, !tbaa !1
  %359 = load i32, i32* %ecode, align 4, !tbaa !5
  %call441 = call i32 %356(%struct.gs_param_list_s* %357, i8* %358, i32 %359) #5
  br label %if.end.442

if.end.442:                                       ; preds = %if.then.438, %if.end.433
  %360 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call443 = call i32 @param_read_bool(%struct.gs_param_list_s* %360, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i32* %devicegraytok) #5
  store i32 %call443, i32* %code, align 4, !tbaa !5
  %cmp444 = icmp slt i32 %call443, 0
  br i1 %cmp444, label %if.then.446, label %if.end.450

if.then.446:                                      ; preds = %if.end.442
  %361 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %361, i32* %ecode, align 4, !tbaa !5
  %362 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs447 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %362, i32 0, i32 0
  %363 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs447, align 8, !tbaa !73
  %signal_error448 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %363, i32 0, i32 7
  %364 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error448, align 8, !tbaa !105
  %365 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %366 = load i8*, i8** %param_name, align 8, !tbaa !1
  %367 = load i32, i32* %ecode, align 4, !tbaa !5
  %call449 = call i32 %364(%struct.gs_param_list_s* %365, i8* %366, i32 %367) #5
  br label %if.end.450

if.end.450:                                       ; preds = %if.then.446, %if.end.442
  %368 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call451 = call i32 @param_read_bool(%struct.gs_param_list_s* %368, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i32* %graydetection) #5
  store i32 %call451, i32* %code, align 4, !tbaa !5
  %cmp452 = icmp slt i32 %call451, 0
  br i1 %cmp452, label %if.then.454, label %if.end.458

if.then.454:                                      ; preds = %if.end.450
  %369 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %369, i32* %ecode, align 4, !tbaa !5
  %370 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs455 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %370, i32 0, i32 0
  %371 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs455, align 8, !tbaa !73
  %signal_error456 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %371, i32 0, i32 7
  %372 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error456, align 8, !tbaa !105
  %373 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %374 = load i8*, i8** %param_name, align 8, !tbaa !1
  %375 = load i32, i32* %ecode, align 4, !tbaa !5
  %call457 = call i32 %372(%struct.gs_param_list_s* %373, i8* %374, i32 %375) #5
  br label %if.end.458

if.end.458:                                       ; preds = %if.then.454, %if.end.450
  %376 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call459 = call i32 @param_read_bool(%struct.gs_param_list_s* %376, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32* %usefastcolor) #5
  store i32 %call459, i32* %code, align 4, !tbaa !5
  %cmp460 = icmp slt i32 %call459, 0
  br i1 %cmp460, label %if.then.462, label %if.end.466

if.then.462:                                      ; preds = %if.end.458
  %377 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %377, i32* %ecode, align 4, !tbaa !5
  %378 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs463 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %378, i32 0, i32 0
  %379 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs463, align 8, !tbaa !73
  %signal_error464 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %379, i32 0, i32 7
  %380 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error464, align 8, !tbaa !105
  %381 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %382 = load i8*, i8** %param_name, align 8, !tbaa !1
  %383 = load i32, i32* %ecode, align 4, !tbaa !5
  %call465 = call i32 %380(%struct.gs_param_list_s* %381, i8* %382, i32 %383) #5
  br label %if.end.466

if.end.466:                                       ; preds = %if.then.462, %if.end.458
  %384 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call467 = call i32 @param_read_bool(%struct.gs_param_list_s* %384, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i32 0, i32 0), i32* %sim_overprint) #5
  store i32 %call467, i32* %code, align 4, !tbaa !5
  %cmp468 = icmp slt i32 %call467, 0
  br i1 %cmp468, label %if.then.470, label %if.end.474

if.then.470:                                      ; preds = %if.end.466
  %385 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %385, i32* %ecode, align 4, !tbaa !5
  %386 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs471 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %386, i32 0, i32 0
  %387 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs471, align 8, !tbaa !73
  %signal_error472 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %387, i32 0, i32 7
  %388 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error472, align 8, !tbaa !105
  %389 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %390 = load i8*, i8** %param_name, align 8, !tbaa !1
  %391 = load i32, i32* %ecode, align 4, !tbaa !5
  %call473 = call i32 %388(%struct.gs_param_list_s* %389, i8* %390, i32 %391) #5
  br label %if.end.474

if.end.474:                                       ; preds = %if.then.470, %if.end.466
  %392 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call475 = call i32 @param_read_bool(%struct.gs_param_list_s* %392, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32* %prebandthreshold) #5
  store i32 %call475, i32* %code, align 4, !tbaa !5
  %cmp476 = icmp slt i32 %call475, 0
  br i1 %cmp476, label %if.then.478, label %if.end.482

if.then.478:                                      ; preds = %if.end.474
  %393 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %393, i32* %ecode, align 4, !tbaa !5
  %394 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs479 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %394, i32 0, i32 0
  %395 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs479, align 8, !tbaa !73
  %signal_error480 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %395, i32 0, i32 7
  %396 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error480, align 8, !tbaa !105
  %397 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %398 = load i8*, i8** %param_name, align 8, !tbaa !1
  %399 = load i32, i32* %ecode, align 4, !tbaa !5
  %call481 = call i32 %396(%struct.gs_param_list_s* %397, i8* %398, i32 %399) #5
  br label %if.end.482

if.end.482:                                       ; preds = %if.then.478, %if.end.474
  %400 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call483 = call i32 @param_read_bool(%struct.gs_param_list_s* %400, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i32* %ucc) #5
  store i32 %call483, i32* %code, align 4, !tbaa !5
  %cmp484 = icmp slt i32 %call483, 0
  br i1 %cmp484, label %if.then.486, label %if.end.490

if.then.486:                                      ; preds = %if.end.482
  %401 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %401, i32* %ecode, align 4, !tbaa !5
  %402 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs487 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %402, i32 0, i32 0
  %403 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs487, align 8, !tbaa !73
  %signal_error488 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %403, i32 0, i32 7
  %404 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error488, align 8, !tbaa !105
  %405 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %406 = load i8*, i8** %param_name, align 8, !tbaa !1
  %407 = load i32, i32* %ecode, align 4, !tbaa !5
  %call489 = call i32 %404(%struct.gs_param_list_s* %405, i8* %406, i32 %407) #5
  br label %if.end.490

if.end.490:                                       ; preds = %if.then.486, %if.end.482
  %408 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call491 = call i32 @param_anti_alias_bits(%struct.gs_param_list_s* %408, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.45, i32 0, i32 0), i32* %tab) #5
  store i32 %call491, i32* %code, align 4, !tbaa !5
  %cmp492 = icmp slt i32 %call491, 0
  br i1 %cmp492, label %if.then.494, label %if.end.495

if.then.494:                                      ; preds = %if.end.490
  %409 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %409, i32* %ecode, align 4, !tbaa !5
  br label %if.end.495

if.end.495:                                       ; preds = %if.then.494, %if.end.490
  %410 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call496 = call i32 @param_anti_alias_bits(%struct.gs_param_list_s* %410, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.46, i32 0, i32 0), i32* %gab) #5
  store i32 %call496, i32* %code, align 4, !tbaa !5
  %cmp497 = icmp slt i32 %call496, 0
  br i1 %cmp497, label %if.then.499, label %if.end.500

if.then.499:                                      ; preds = %if.end.495
  %411 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %411, i32* %ecode, align 4, !tbaa !5
  br label %if.end.500

if.end.500:                                       ; preds = %if.then.499, %if.end.495
  %412 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call501 = call i32 @param_read_int(%struct.gs_param_list_s* %412, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.48, i32 0, i32 0), i32* %mpbm) #5
  store i32 %call501, i32* %code, align 4, !tbaa !5
  %cmp502 = icmp slt i32 %call501, 0
  br i1 %cmp502, label %if.then.504, label %if.end.505

if.then.504:                                      ; preds = %if.end.500
  %413 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %413, i32* %ecode, align 4, !tbaa !5
  br label %if.end.505

if.end.505:                                       ; preds = %if.then.504, %if.end.500
  %414 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.49, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call506 = call i32 @param_read_bool(%struct.gs_param_list_s* %414, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.49, i32 0, i32 0), i32* %page_uses_transparency) #5
  store i32 %call506, i32* %code, align 4, !tbaa !5
  %cmp507 = icmp slt i32 %call506, 0
  br i1 %cmp507, label %if.then.509, label %if.end.513

if.then.509:                                      ; preds = %if.end.505
  %415 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %415, i32* %ecode, align 4, !tbaa !5
  %416 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs510 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %416, i32 0, i32 0
  %417 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs510, align 8, !tbaa !73
  %signal_error511 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %417, i32 0, i32 7
  %418 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error511, align 8, !tbaa !105
  %419 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %420 = load i8*, i8** %param_name, align 8, !tbaa !1
  %421 = load i32, i32* %ecode, align 4, !tbaa !5
  %call512 = call i32 %418(%struct.gs_param_list_s* %419, i8* %420, i32 %421) #5
  br label %if.end.513

if.end.513:                                       ; preds = %if.then.509, %if.end.505
  %422 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %MaxBitmap = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %sp, i32 0, i32 0
  %call514 = call i32 @param_read_long(%struct.gs_param_list_s* %422, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), i64* %MaxBitmap) #5
  store i32 %call514, i32* %code, align 4, !tbaa !5
  %cmp515 = icmp slt i32 %call514, 0
  br i1 %cmp515, label %if.then.517, label %if.end.518

if.then.517:                                      ; preds = %if.end.513
  %423 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %423, i32* %ecode, align 4, !tbaa !5
  br label %if.end.518

if.end.518:                                       ; preds = %if.then.517, %if.end.513
  %424 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %BufferSpace = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %sp, i32 0, i32 1
  %call519 = call i32 @param_read_long(%struct.gs_param_list_s* %424, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i32 0, i32 0), i64* %BufferSpace) #5
  store i32 %call519, i32* %code, align 4, !tbaa !5
  switch i32 %call519, label %sw.default.534 [
    i32 0, label %sw.bb.520
    i32 1, label %sw.epilog.538
  ]

sw.bb.520:                                        ; preds = %if.end.518
  %params_are_read_only = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %sp, i32 0, i32 3
  %425 = load i32, i32* %params_are_read_only, align 4, !tbaa !106
  %tobool521 = icmp ne i32 %425, 0
  br i1 %tobool521, label %cond.true.522, label %cond.false.527

cond.true.522:                                    ; preds = %sw.bb.520
  %BufferSpace523 = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %sp, i32 0, i32 1
  %426 = load i64, i64* %BufferSpace523, align 8, !tbaa !107
  %BufferSpace524 = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %save_sp, i32 0, i32 1
  %427 = load i64, i64* %BufferSpace524, align 8, !tbaa !107
  %cmp525 = icmp ne i64 %426, %427
  br i1 %cmp525, label %if.then.531, label %if.else.532

cond.false.527:                                   ; preds = %sw.bb.520
  %BufferSpace528 = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %sp, i32 0, i32 1
  %428 = load i64, i64* %BufferSpace528, align 8, !tbaa !107
  %cmp529 = icmp slt i64 %428, 10000
  br i1 %cmp529, label %if.then.531, label %if.else.532

if.then.531:                                      ; preds = %cond.false.527, %cond.true.522
  store i32 -15, i32* %ecode, align 4, !tbaa !5
  br label %if.end.533

if.else.532:                                      ; preds = %cond.false.527, %cond.true.522
  br label %sw.epilog.538

if.end.533:                                       ; preds = %if.then.531
  br label %bse

sw.default.534:                                   ; preds = %if.end.518
  %429 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %429, i32* %ecode, align 4, !tbaa !5
  br label %bse

bse:                                              ; preds = %sw.default.534, %if.end.533
  %430 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs535 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %430, i32 0, i32 0
  %431 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs535, align 8, !tbaa !73
  %signal_error536 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %431, i32 0, i32 7
  %432 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error536, align 8, !tbaa !105
  %433 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %434 = load i8*, i8** %param_name, align 8, !tbaa !1
  %435 = load i32, i32* %ecode, align 4, !tbaa !5
  %call537 = call i32 %432(%struct.gs_param_list_s* %433, i8* %434, i32 %435) #5
  br label %sw.epilog.538

sw.epilog.538:                                    ; preds = %bse, %if.end.518, %if.else.532
  %436 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %band = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %sp, i32 0, i32 2
  %BandWidth = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band, i32 0, i32 0
  %call539 = call i32 @param_read_int(%struct.gs_param_list_s* %436, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i32 0, i32 0), i32* %BandWidth) #5
  store i32 %call539, i32* %code, align 4, !tbaa !5
  switch i32 %call539, label %sw.default.558 [
    i32 0, label %sw.bb.540
    i32 1, label %sw.epilog.562
  ]

sw.bb.540:                                        ; preds = %sw.epilog.538
  %params_are_read_only541 = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %sp, i32 0, i32 3
  %437 = load i32, i32* %params_are_read_only541, align 4, !tbaa !106
  %tobool542 = icmp ne i32 %437, 0
  br i1 %tobool542, label %cond.true.543, label %cond.false.550

cond.true.543:                                    ; preds = %sw.bb.540
  %band544 = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %sp, i32 0, i32 2
  %BandWidth545 = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band544, i32 0, i32 0
  %438 = load i32, i32* %BandWidth545, align 4, !tbaa !108
  %band546 = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %save_sp, i32 0, i32 2
  %BandWidth547 = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band546, i32 0, i32 0
  %439 = load i32, i32* %BandWidth547, align 4, !tbaa !108
  %cmp548 = icmp ne i32 %438, %439
  br i1 %cmp548, label %if.then.555, label %if.else.556

cond.false.550:                                   ; preds = %sw.bb.540
  %band551 = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %sp, i32 0, i32 2
  %BandWidth552 = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band551, i32 0, i32 0
  %440 = load i32, i32* %BandWidth552, align 4, !tbaa !108
  %cmp553 = icmp slt i32 %440, 0
  br i1 %cmp553, label %if.then.555, label %if.else.556

if.then.555:                                      ; preds = %cond.false.550, %cond.true.543
  store i32 -15, i32* %ecode, align 4, !tbaa !5
  br label %if.end.557

if.else.556:                                      ; preds = %cond.false.550, %cond.true.543
  br label %sw.epilog.562

if.end.557:                                       ; preds = %if.then.555
  br label %bwe

sw.default.558:                                   ; preds = %sw.epilog.538
  %441 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %441, i32* %ecode, align 4, !tbaa !5
  br label %bwe

bwe:                                              ; preds = %sw.default.558, %if.end.557
  %442 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs559 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %442, i32 0, i32 0
  %443 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs559, align 8, !tbaa !73
  %signal_error560 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %443, i32 0, i32 7
  %444 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error560, align 8, !tbaa !105
  %445 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %446 = load i8*, i8** %param_name, align 8, !tbaa !1
  %447 = load i32, i32* %ecode, align 4, !tbaa !5
  %call561 = call i32 %444(%struct.gs_param_list_s* %445, i8* %446, i32 %447) #5
  br label %sw.epilog.562

sw.epilog.562:                                    ; preds = %bwe, %sw.epilog.538, %if.else.556
  %448 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.52, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %band563 = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %sp, i32 0, i32 2
  %BandHeight = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band563, i32 0, i32 1
  %call564 = call i32 @param_read_int(%struct.gs_param_list_s* %448, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.52, i32 0, i32 0), i32* %BandHeight) #5
  store i32 %call564, i32* %code, align 4, !tbaa !5
  switch i32 %call564, label %sw.default.583 [
    i32 0, label %sw.bb.565
    i32 1, label %sw.epilog.587
  ]

sw.bb.565:                                        ; preds = %sw.epilog.562
  %params_are_read_only566 = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %sp, i32 0, i32 3
  %449 = load i32, i32* %params_are_read_only566, align 4, !tbaa !106
  %tobool567 = icmp ne i32 %449, 0
  br i1 %tobool567, label %cond.true.568, label %cond.false.575

cond.true.568:                                    ; preds = %sw.bb.565
  %band569 = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %sp, i32 0, i32 2
  %BandHeight570 = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band569, i32 0, i32 1
  %450 = load i32, i32* %BandHeight570, align 4, !tbaa !109
  %band571 = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %save_sp, i32 0, i32 2
  %BandHeight572 = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band571, i32 0, i32 1
  %451 = load i32, i32* %BandHeight572, align 4, !tbaa !109
  %cmp573 = icmp ne i32 %450, %451
  br i1 %cmp573, label %if.then.580, label %if.else.581

cond.false.575:                                   ; preds = %sw.bb.565
  %band576 = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %sp, i32 0, i32 2
  %BandHeight577 = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band576, i32 0, i32 1
  %452 = load i32, i32* %BandHeight577, align 4, !tbaa !109
  %cmp578 = icmp slt i32 %452, 0
  br i1 %cmp578, label %if.then.580, label %if.else.581

if.then.580:                                      ; preds = %cond.false.575, %cond.true.568
  store i32 -15, i32* %ecode, align 4, !tbaa !5
  br label %if.end.582

if.else.581:                                      ; preds = %cond.false.575, %cond.true.568
  br label %sw.epilog.587

if.end.582:                                       ; preds = %if.then.580
  br label %bhe

sw.default.583:                                   ; preds = %sw.epilog.562
  %453 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %453, i32* %ecode, align 4, !tbaa !5
  br label %bhe

bhe:                                              ; preds = %sw.default.583, %if.end.582
  %454 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs584 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %454, i32 0, i32 0
  %455 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs584, align 8, !tbaa !73
  %signal_error585 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %455, i32 0, i32 7
  %456 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error585, align 8, !tbaa !105
  %457 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %458 = load i8*, i8** %param_name, align 8, !tbaa !1
  %459 = load i32, i32* %ecode, align 4, !tbaa !5
  %call586 = call i32 %456(%struct.gs_param_list_s* %457, i8* %458, i32 %459) #5
  br label %sw.epilog.587

sw.epilog.587:                                    ; preds = %bhe, %sw.epilog.562, %if.else.581
  %460 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %band588 = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %sp, i32 0, i32 2
  %BandBufferSpace = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band588, i32 0, i32 2
  %call589 = call i32 @param_read_long(%struct.gs_param_list_s* %460, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i32 0, i32 0), i64* %BandBufferSpace) #5
  store i32 %call589, i32* %code, align 4, !tbaa !5
  switch i32 %call589, label %sw.default.608 [
    i32 0, label %sw.bb.590
    i32 1, label %sw.epilog.612
  ]

sw.bb.590:                                        ; preds = %sw.epilog.587
  %params_are_read_only591 = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %sp, i32 0, i32 3
  %461 = load i32, i32* %params_are_read_only591, align 4, !tbaa !106
  %tobool592 = icmp ne i32 %461, 0
  br i1 %tobool592, label %cond.true.593, label %cond.false.600

cond.true.593:                                    ; preds = %sw.bb.590
  %band594 = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %sp, i32 0, i32 2
  %BandBufferSpace595 = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band594, i32 0, i32 2
  %462 = load i64, i64* %BandBufferSpace595, align 8, !tbaa !110
  %band596 = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %save_sp, i32 0, i32 2
  %BandBufferSpace597 = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band596, i32 0, i32 2
  %463 = load i64, i64* %BandBufferSpace597, align 8, !tbaa !110
  %cmp598 = icmp ne i64 %462, %463
  br i1 %cmp598, label %if.then.605, label %if.else.606

cond.false.600:                                   ; preds = %sw.bb.590
  %band601 = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %sp, i32 0, i32 2
  %BandBufferSpace602 = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band601, i32 0, i32 2
  %464 = load i64, i64* %BandBufferSpace602, align 8, !tbaa !110
  %cmp603 = icmp slt i64 %464, 0
  br i1 %cmp603, label %if.then.605, label %if.else.606

if.then.605:                                      ; preds = %cond.false.600, %cond.true.593
  store i32 -15, i32* %ecode, align 4, !tbaa !5
  br label %if.end.607

if.else.606:                                      ; preds = %cond.false.600, %cond.true.593
  br label %sw.epilog.612

if.end.607:                                       ; preds = %if.then.605
  br label %bbse

sw.default.608:                                   ; preds = %sw.epilog.587
  %465 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %465, i32* %ecode, align 4, !tbaa !5
  br label %bbse

bbse:                                             ; preds = %sw.default.608, %if.end.607
  %466 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs609 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %466, i32 0, i32 0
  %467 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs609, align 8, !tbaa !73
  %signal_error610 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %467, i32 0, i32 7
  %468 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error610, align 8, !tbaa !105
  %469 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %470 = load i8*, i8** %param_name, align 8, !tbaa !1
  %471 = load i32, i32* %ecode, align 4, !tbaa !5
  %call611 = call i32 %468(%struct.gs_param_list_s* %469, i8* %470, i32 %471) #5
  br label %sw.epilog.612

sw.epilog.612:                                    ; preds = %bbse, %sw.epilog.587, %if.else.606
  %472 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.47, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call613 = call i32 @param_read_bool(%struct.gs_param_list_s* %472, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.47, i32 0, i32 0), i32* %locksafe) #5
  store i32 %call613, i32* %code, align 4, !tbaa !5
  switch i32 %call613, label %sw.default.622 [
    i32 0, label %sw.bb.614
    i32 1, label %sw.epilog.626
  ]

sw.bb.614:                                        ; preds = %sw.epilog.612
  %473 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %LockSafetyParams615 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %473, i32 0, i32 32
  %474 = load i32, i32* %LockSafetyParams615, align 4, !tbaa !98
  %tobool616 = icmp ne i32 %474, 0
  br i1 %tobool616, label %land.lhs.true.617, label %if.else.620

land.lhs.true.617:                                ; preds = %sw.bb.614
  %475 = load i32, i32* %locksafe, align 4, !tbaa !5
  %tobool618 = icmp ne i32 %475, 0
  br i1 %tobool618, label %if.else.620, label %if.then.619

if.then.619:                                      ; preds = %land.lhs.true.617
  store i32 -7, i32* %code, align 4, !tbaa !5
  br label %if.end.621

if.else.620:                                      ; preds = %land.lhs.true.617, %sw.bb.614
  br label %sw.epilog.626

if.end.621:                                       ; preds = %if.then.619
  br label %sw.default.622

sw.default.622:                                   ; preds = %sw.epilog.612, %if.end.621
  %476 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %476, i32* %ecode, align 4, !tbaa !5
  %477 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs623 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %477, i32 0, i32 0
  %478 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs623, align 8, !tbaa !73
  %signal_error624 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %478, i32 0, i32 7
  %479 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error624, align 8, !tbaa !105
  %480 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %481 = load i8*, i8** %param_name, align 8, !tbaa !1
  %482 = load i32, i32* %ecode, align 4, !tbaa !5
  %call625 = call i32 %479(%struct.gs_param_list_s* %480, i8* %481, i32 %482) #5
  br label %sw.epilog.626

sw.epilog.626:                                    ; preds = %sw.default.622, %sw.epilog.612, %if.else.620
  %483 = bitcast i32* %igni to i8*
  call void @llvm.lifetime.start(i64 4, i8* %483) #1
  %484 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.68, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call627 = call i32 @param_read_int(%struct.gs_param_list_s* %484, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.68, i32 0, i32 0), i32* %igni) #5
  store i32 %call627, i32* %code, align 4, !tbaa !5
  switch i32 %call627, label %sw.default.628 [
    i32 0, label %sw.bb.632
    i32 1, label %sw.bb.632
  ]

sw.default.628:                                   ; preds = %sw.epilog.626
  %485 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %485, i32* %ecode, align 4, !tbaa !5
  %486 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs629 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %486, i32 0, i32 0
  %487 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs629, align 8, !tbaa !73
  %signal_error630 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %487, i32 0, i32 7
  %488 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error630, align 8, !tbaa !105
  %489 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %490 = load i8*, i8** %param_name, align 8, !tbaa !1
  %491 = load i32, i32* %ecode, align 4, !tbaa !5
  %call631 = call i32 %488(%struct.gs_param_list_s* %489, i8* %490, i32 %491) #5
  br label %sw.bb.632

sw.bb.632:                                        ; preds = %sw.epilog.626, %sw.epilog.626, %sw.default.628
  br label %sw.epilog.633

sw.epilog.633:                                    ; preds = %sw.bb.632
  %492 = bitcast i32* %igni to i8*
  call void @llvm.lifetime.end(i64 4, i8* %492) #1
  %493 = bitcast i32* %igni634 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %493) #1
  %494 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.69, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call635 = call i32 @param_read_int(%struct.gs_param_list_s* %494, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.69, i32 0, i32 0), i32* %igni634) #5
  store i32 %call635, i32* %code, align 4, !tbaa !5
  switch i32 %call635, label %sw.default.636 [
    i32 0, label %sw.bb.640
    i32 1, label %sw.bb.640
  ]

sw.default.636:                                   ; preds = %sw.epilog.633
  %495 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %495, i32* %ecode, align 4, !tbaa !5
  %496 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs637 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %496, i32 0, i32 0
  %497 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs637, align 8, !tbaa !73
  %signal_error638 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %497, i32 0, i32 7
  %498 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error638, align 8, !tbaa !105
  %499 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %500 = load i8*, i8** %param_name, align 8, !tbaa !1
  %501 = load i32, i32* %ecode, align 4, !tbaa !5
  %call639 = call i32 %498(%struct.gs_param_list_s* %499, i8* %500, i32 %501) #5
  br label %sw.bb.640

sw.bb.640:                                        ; preds = %sw.epilog.633, %sw.epilog.633, %sw.default.636
  br label %sw.epilog.641

sw.epilog.641:                                    ; preds = %sw.bb.640
  %502 = bitcast i32* %igni634 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %502) #1
  %503 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call642 = call i32 @param_read_float_array(%struct.gs_param_list_s* %503, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), %struct.gs_param_float_array_s* %ibba) #5
  store i32 %call642, i32* %code, align 4, !tbaa !5
  switch i32 %call642, label %sw.default.664 [
    i32 0, label %sw.bb.643
    i32 1, label %sw.bb.674
  ]

sw.bb.643:                                        ; preds = %sw.epilog.641
  %size644 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %ibba, i32 0, i32 1
  %504 = load i32, i32* %size644, align 4, !tbaa !39
  %cmp645 = icmp ne i32 %504, 4
  br i1 %cmp645, label %if.then.661, label %lor.lhs.false.647

lor.lhs.false.647:                                ; preds = %sw.bb.643
  %data648 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %ibba, i32 0, i32 0
  %505 = load float*, float** %data648, align 8, !tbaa !37
  %arrayidx649 = getelementptr inbounds float, float* %505, i64 2
  %506 = load float, float* %arrayidx649, align 4, !tbaa !82
  %data650 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %ibba, i32 0, i32 0
  %507 = load float*, float** %data650, align 8, !tbaa !37
  %arrayidx651 = getelementptr inbounds float, float* %507, i64 0
  %508 = load float, float* %arrayidx651, align 4, !tbaa !82
  %cmp652 = fcmp olt float %506, %508
  br i1 %cmp652, label %if.then.661, label %lor.lhs.false.654

lor.lhs.false.654:                                ; preds = %lor.lhs.false.647
  %data655 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %ibba, i32 0, i32 0
  %509 = load float*, float** %data655, align 8, !tbaa !37
  %arrayidx656 = getelementptr inbounds float, float* %509, i64 3
  %510 = load float, float* %arrayidx656, align 4, !tbaa !82
  %data657 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %ibba, i32 0, i32 0
  %511 = load float*, float** %data657, align 8, !tbaa !37
  %arrayidx658 = getelementptr inbounds float, float* %511, i64 1
  %512 = load float, float* %arrayidx658, align 4, !tbaa !82
  %cmp659 = fcmp olt float %510, %512
  br i1 %cmp659, label %if.then.661, label %if.else.662

if.then.661:                                      ; preds = %lor.lhs.false.654, %lor.lhs.false.647, %sw.bb.643
  store i32 -15, i32* %ecode, align 4, !tbaa !5
  br label %if.end.663

if.else.662:                                      ; preds = %lor.lhs.false.654
  br label %sw.epilog.676

if.end.663:                                       ; preds = %if.then.661
  br label %ibbe

sw.default.664:                                   ; preds = %sw.epilog.641
  %513 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %514 = load i8*, i8** %param_name, align 8, !tbaa !1
  %call665 = call i32 @param_read_null(%struct.gs_param_list_s* %513, i8* %514) #5
  store i32 %call665, i32* %code, align 4, !tbaa !5
  %cmp666 = icmp eq i32 %call665, 0
  br i1 %cmp666, label %if.then.668, label %if.end.670

if.then.668:                                      ; preds = %sw.default.664
  store i32 1, i32* %ibbnull, align 4, !tbaa !5
  %data669 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %ibba, i32 0, i32 0
  store float* null, float** %data669, align 8, !tbaa !37
  br label %sw.epilog.676

if.end.670:                                       ; preds = %sw.default.664
  %515 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %515, i32* %ecode, align 4, !tbaa !5
  br label %ibbe

ibbe:                                             ; preds = %if.end.670, %if.end.663
  %516 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs671 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %516, i32 0, i32 0
  %517 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs671, align 8, !tbaa !73
  %signal_error672 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %517, i32 0, i32 7
  %518 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error672, align 8, !tbaa !105
  %519 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %520 = load i8*, i8** %param_name, align 8, !tbaa !1
  %521 = load i32, i32* %ecode, align 4, !tbaa !5
  %call673 = call i32 %518(%struct.gs_param_list_s* %519, i8* %520, i32 %521) #5
  br label %sw.bb.674

sw.bb.674:                                        ; preds = %sw.epilog.641, %ibbe
  %data675 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %ibba, i32 0, i32 0
  store float* null, float** %data675, align 8, !tbaa !37
  br label %sw.epilog.676

sw.epilog.676:                                    ; preds = %sw.bb.674, %if.then.668, %if.else.662
  %522 = bitcast i8** %pcms to i8*
  call void @llvm.lifetime.start(i64 8, i8* %522) #1
  %523 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info677 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %523, i32 0, i32 11
  %cm_name = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info677, i32 0, i32 14
  %524 = load i8*, i8** %cm_name, align 8, !tbaa !35
  store i8* %524, i8** %pcms, align 8, !tbaa !1
  %525 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %526 = load i8*, i8** %pcms, align 8, !tbaa !1
  %527 = load i8*, i8** %pcms, align 8, !tbaa !1
  %cmp678 = icmp ne i8* %527, null
  br i1 %cmp678, label %cond.true.680, label %cond.false.682

cond.true.680:                                    ; preds = %sw.epilog.676
  %528 = load i8*, i8** %pcms, align 8, !tbaa !1
  %call681 = call i64 @strlen(i8* %528) #6
  br label %cond.end.683

cond.false.682:                                   ; preds = %sw.epilog.676
  br label %cond.end.683

cond.end.683:                                     ; preds = %cond.false.682, %cond.true.680
  %cond684 = phi i64 [ %call681, %cond.true.680 ], [ 0, %cond.false.682 ]
  %conv685 = trunc i64 %cond684 to i32
  %529 = load i8*, i8** %pcms, align 8, !tbaa !1
  %cmp686 = icmp ne i8* %529, null
  %conv687 = zext i1 %cmp686 to i32
  %call688 = call i32 @param_check_bytes(%struct.gs_param_list_s* %525, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* %526, i32 %conv685, i32 %conv687) #5
  store i32 %call688, i32* %code, align 4, !tbaa !5
  %cmp689 = icmp slt i32 %call688, 0
  br i1 %cmp689, label %if.then.691, label %if.end.692

if.then.691:                                      ; preds = %cond.end.683
  %530 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %530, i32* %ecode, align 4, !tbaa !5
  br label %if.end.692

if.end.692:                                       ; preds = %if.then.691, %cond.end.683
  %531 = bitcast i8** %pcms to i8*
  call void @llvm.lifetime.end(i64 8, i8* %531) #1
  %532 = bitcast i32* %igni693 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %532) #1
  %533 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call694 = call i32 @param_read_int(%struct.gs_param_list_s* %533, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i32* %igni693) #5
  store i32 %call694, i32* %code, align 4, !tbaa !5
  switch i32 %call694, label %sw.default.695 [
    i32 0, label %sw.bb.699
    i32 1, label %sw.bb.699
  ]

sw.default.695:                                   ; preds = %if.end.692
  %534 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %534, i32* %ecode, align 4, !tbaa !5
  %535 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs696 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %535, i32 0, i32 0
  %536 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs696, align 8, !tbaa !73
  %signal_error697 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %536, i32 0, i32 7
  %537 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error697, align 8, !tbaa !105
  %538 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %539 = load i8*, i8** %param_name, align 8, !tbaa !1
  %540 = load i32, i32* %ecode, align 4, !tbaa !5
  %call698 = call i32 %537(%struct.gs_param_list_s* %538, i8* %539, i32 %540) #5
  br label %sw.bb.699

sw.bb.699:                                        ; preds = %if.end.692, %if.end.692, %sw.default.695
  br label %sw.epilog.700

sw.epilog.700:                                    ; preds = %sw.bb.699
  %541 = bitcast i32* %igni693 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %541) #1
  %542 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call701 = call i32 @param_check_bool(%struct.gs_param_list_s* %542, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i32 0, i32 1) #5
  store i32 %call701, i32* %code, align 4, !tbaa !5
  %cmp702 = icmp slt i32 %call701, 0
  br i1 %cmp702, label %if.then.704, label %if.end.705

if.then.704:                                      ; preds = %sw.epilog.700
  %543 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %543, i32* %ecode, align 4, !tbaa !5
  br label %if.end.705

if.end.705:                                       ; preds = %if.then.704, %sw.epilog.700
  br label %do.body.706

do.body.706:                                      ; preds = %if.end.705
  %544 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call707 = call i32 @param_read_name_array(%struct.gs_param_list_s* %544, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), %struct.gs_param_string_array_s* %scna) #5
  store i32 %call707, i32* %code, align 4, !tbaa !5
  switch i32 %call707, label %sw.default.717 [
    i32 0, label %sw.bb.708
    i32 1, label %sw.bb.721
  ]

sw.bb.708:                                        ; preds = %do.body.706
  %size709 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %scna, i32 0, i32 1
  %545 = load i32, i32* %size709, align 4, !tbaa !43
  %size710 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %scna, i32 0, i32 1
  %546 = load i32, i32* %size710, align 4, !tbaa !43
  %cmp711 = icmp ne i32 %545, %546
  br i1 %cmp711, label %if.then.713, label %if.else.715

if.then.713:                                      ; preds = %sw.bb.708
  store i32 -15, i32* %ecode, align 4, !tbaa !5
  %data714 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %scna, i32 0, i32 0
  store %struct.gs_param_string_s* null, %struct.gs_param_string_s** %data714, align 8, !tbaa !41
  br label %if.end.716

if.else.715:                                      ; preds = %sw.bb.708
  br label %sw.epilog.723

if.end.716:                                       ; preds = %if.then.713
  br label %scne

sw.default.717:                                   ; preds = %do.body.706
  %547 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %547, i32* %ecode, align 4, !tbaa !5
  br label %scne

scne:                                             ; preds = %sw.default.717, %if.end.716
  %548 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs718 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %548, i32 0, i32 0
  %549 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs718, align 8, !tbaa !73
  %signal_error719 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %549, i32 0, i32 7
  %550 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error719, align 8, !tbaa !105
  %551 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %552 = load i8*, i8** %param_name, align 8, !tbaa !1
  %553 = load i32, i32* %ecode, align 4, !tbaa !5
  %call720 = call i32 %550(%struct.gs_param_list_s* %551, i8* %552, i32 %553) #5
  br label %sw.bb.721

sw.bb.721:                                        ; preds = %do.body.706, %scne
  %data722 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %scna, i32 0, i32 0
  store %struct.gs_param_string_s* null, %struct.gs_param_string_s** %data722, align 8, !tbaa !41
  br label %sw.epilog.723

sw.epilog.723:                                    ; preds = %sw.bb.721, %if.else.715
  br label %do.cond.724

do.cond.724:                                      ; preds = %sw.epilog.723
  br label %do.end.725

do.end.725:                                       ; preds = %do.cond.724
  %554 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %555 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %dname = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %555, i32 0, i32 2
  %556 = load i8*, i8** %dname, align 8, !tbaa !30
  %557 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %dname726 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %557, i32 0, i32 2
  %558 = load i8*, i8** %dname726, align 8, !tbaa !30
  %call727 = call i64 @strlen(i8* %558) #6
  %conv728 = trunc i64 %call727 to i32
  %call729 = call i32 @param_check_bytes(%struct.gs_param_list_s* %554, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* %556, i32 %conv728, i32 1) #5
  store i32 %call729, i32* %code, align 4, !tbaa !5
  %cmp730 = icmp slt i32 %call729, 0
  br i1 %cmp730, label %if.then.732, label %if.end.733

if.then.732:                                      ; preds = %do.end.725
  %559 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %559, i32* %ecode, align 4, !tbaa !5
  br label %if.end.733

if.end.733:                                       ; preds = %if.then.732, %do.end.725
  %560 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %561 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %dname734 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %561, i32 0, i32 2
  %562 = load i8*, i8** %dname734, align 8, !tbaa !30
  %563 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %dname735 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %563, i32 0, i32 2
  %564 = load i8*, i8** %dname735, align 8, !tbaa !30
  %call736 = call i64 @strlen(i8* %564) #6
  %conv737 = trunc i64 %call736 to i32
  %call738 = call i32 @param_check_bytes(%struct.gs_param_list_s* %560, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i8* %562, i32 %conv737, i32 1) #5
  store i32 %call738, i32* %code, align 4, !tbaa !5
  %cmp739 = icmp slt i32 %call738, 0
  br i1 %cmp739, label %if.then.741, label %if.end.742

if.then.741:                                      ; preds = %if.end.733
  %565 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %565, i32* %ecode, align 4, !tbaa !5
  br label %if.end.742

if.end.742:                                       ; preds = %if.then.741, %if.end.733
  %566 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %567 = load i32, i32* %colors, align 4, !tbaa !5
  %conv743 = sext i32 %567 to i64
  %call744 = call i32 @param_check_long(%struct.gs_param_list_s* %566, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i64 %conv743, i32 1) #5
  store i32 %call744, i32* %code, align 4, !tbaa !5
  %cmp745 = icmp slt i32 %call744, 0
  br i1 %cmp745, label %if.then.747, label %if.end.748

if.then.747:                                      ; preds = %if.end.742
  %568 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %568, i32* %ecode, align 4, !tbaa !5
  br label %if.end.748

if.end.748:                                       ; preds = %if.then.747, %if.end.742
  %569 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %570 = load i32, i32* %depth, align 4, !tbaa !5
  %conv749 = sext i32 %570 to i64
  %call750 = call i32 @param_check_long(%struct.gs_param_list_s* %569, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i32 0, i32 0), i64 %conv749, i32 1) #5
  store i32 %call750, i32* %code, align 4, !tbaa !5
  %cmp751 = icmp slt i32 %call750, 0
  br i1 %cmp751, label %if.then.753, label %if.end.754

if.then.753:                                      ; preds = %if.end.748
  %571 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %571, i32* %ecode, align 4, !tbaa !5
  br label %if.end.754

if.end.754:                                       ; preds = %if.then.753, %if.end.748
  %572 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %573 = load i32, i32* %GrayValues, align 4, !tbaa !5
  %conv755 = sext i32 %573 to i64
  %call756 = call i32 @param_check_long(%struct.gs_param_list_s* %572, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i32 0, i32 0), i64 %conv755, i32 1) #5
  store i32 %call756, i32* %code, align 4, !tbaa !5
  %cmp757 = icmp slt i32 %call756, 0
  br i1 %cmp757, label %if.then.759, label %if.end.760

if.then.759:                                      ; preds = %if.end.754
  %574 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %574, i32* %ecode, align 4, !tbaa !5
  br label %if.end.760

if.end.760:                                       ; preds = %if.then.759, %if.end.754
  %575 = bitcast i32* %igni761 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %575) #1
  %576 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call762 = call i32 @param_read_int(%struct.gs_param_list_s* %576, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), i32* %igni761) #5
  store i32 %call762, i32* %code, align 4, !tbaa !5
  switch i32 %call762, label %sw.default.763 [
    i32 0, label %sw.bb.767
    i32 1, label %sw.bb.767
  ]

sw.default.763:                                   ; preds = %if.end.760
  %577 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %577, i32* %ecode, align 4, !tbaa !5
  %578 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs764 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %578, i32 0, i32 0
  %579 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs764, align 8, !tbaa !73
  %signal_error765 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %579, i32 0, i32 7
  %580 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error765, align 8, !tbaa !105
  %581 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %582 = load i8*, i8** %param_name, align 8, !tbaa !1
  %583 = load i32, i32* %ecode, align 4, !tbaa !5
  %call766 = call i32 %580(%struct.gs_param_list_s* %581, i8* %582, i32 %583) #5
  br label %sw.bb.767

sw.bb.767:                                        ; preds = %if.end.760, %if.end.760, %sw.default.763
  br label %sw.epilog.768

sw.epilog.768:                                    ; preds = %sw.bb.767
  %584 = bitcast i32* %igni761 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %584) #1
  %585 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %586 = load i32, i32* %RGBValues, align 4, !tbaa !5
  %conv769 = sext i32 %586 to i64
  %call770 = call i32 @param_check_long(%struct.gs_param_list_s* %585, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.56, i32 0, i32 0), i64 %conv769, i32 1) #5
  store i32 %call770, i32* %code, align 4, !tbaa !5
  %cmp771 = icmp slt i32 %call770, 0
  br i1 %cmp771, label %if.then.773, label %if.end.774

if.then.773:                                      ; preds = %sw.epilog.768
  %587 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %587, i32* %ecode, align 4, !tbaa !5
  br label %if.end.774

if.end.774:                                       ; preds = %if.then.773, %sw.epilog.768
  %588 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %589 = load i32, i32* %RGBValues, align 4, !tbaa !5
  %conv775 = sext i32 %589 to i64
  %call776 = call i32 @param_check_long(%struct.gs_param_list_s* %588, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i32 0, i32 0), i64 %conv775, i32 1) #5
  store i32 %call776, i32* %code, align 4, !tbaa !5
  %cmp777 = icmp slt i32 %call776, 0
  br i1 %cmp777, label %if.then.779, label %if.end.780

if.then.779:                                      ; preds = %if.end.774
  %590 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %590, i32* %ecode, align 4, !tbaa !5
  br label %if.end.780

if.end.780:                                       ; preds = %if.then.779, %if.end.774
  %591 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %592 = load i32, i32* %RGBValues, align 4, !tbaa !5
  %conv781 = sext i32 %592 to i64
  %call782 = call i32 @param_check_long(%struct.gs_param_list_s* %591, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.58, i32 0, i32 0), i64 %conv781, i32 1) #5
  store i32 %call782, i32* %code, align 4, !tbaa !5
  %cmp783 = icmp slt i32 %call782, 0
  br i1 %cmp783, label %if.then.785, label %if.end.786

if.then.785:                                      ; preds = %if.end.780
  %593 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %593, i32* %ecode, align 4, !tbaa !5
  br label %if.end.786

if.end.786:                                       ; preds = %if.then.785, %if.end.780
  %594 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %595 = load i64, i64* %ColorValues, align 8, !tbaa !72
  %call787 = call i32 @param_check_long(%struct.gs_param_list_s* %594, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.59, i32 0, i32 0), i64 %595, i32 1) #5
  store i32 %call787, i32* %code, align 4, !tbaa !5
  %cmp788 = icmp slt i32 %call787, 0
  br i1 %cmp788, label %if.then.790, label %if.end.791

if.then.790:                                      ; preds = %if.end.786
  %596 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %596, i32* %ecode, align 4, !tbaa !5
  br label %if.end.791

if.end.791:                                       ; preds = %if.then.790, %if.end.786
  %597 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call792 = call i32 @param_read_string(%struct.gs_param_list_s* %597, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.60, i32 0, i32 0), %struct.gs_param_string_s* %cms) #5
  %cmp793 = icmp ne i32 %call792, 1
  br i1 %cmp793, label %if.then.795, label %if.end.810

if.then.795:                                      ; preds = %if.end.791
  %598 = bitcast [768 x i8]* %palette to i8*
  call void @llvm.lifetime.start(i64 768, i8* %598) #1
  %599 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay796 = getelementptr inbounds [768 x i8], [768 x i8]* %palette, i32 0, i32 0
  %call797 = call i32 @param_HWColorMap(%struct.gx_device_s* %599, i8* %arraydecay796) #5
  %tobool798 = icmp ne i32 %call797, 0
  br i1 %tobool798, label %if.then.799, label %if.else.803

if.then.799:                                      ; preds = %if.then.795
  %600 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %arraydecay800 = getelementptr inbounds [768 x i8], [768 x i8]* %palette, i32 0, i32 0
  %601 = load i32, i32* %colors, align 4, !tbaa !5
  %602 = load i32, i32* %depth, align 4, !tbaa !5
  %shl801 = shl i32 %601, %602
  %call802 = call i32 @param_check_bytes(%struct.gs_param_list_s* %600, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.60, i32 0, i32 0), i8* %arraydecay800, i32 %shl801, i32 1) #5
  store i32 %call802, i32* %code, align 4, !tbaa !5
  br label %if.end.805

if.else.803:                                      ; preds = %if.then.795
  %603 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call804 = call i32 @param_check_bytes(%struct.gs_param_list_s* %603, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.60, i32 0, i32 0), i8* null, i32 0, i32 0) #5
  store i32 %call804, i32* %code, align 4, !tbaa !5
  br label %if.end.805

if.end.805:                                       ; preds = %if.else.803, %if.then.799
  %604 = load i32, i32* %code, align 4, !tbaa !5
  %cmp806 = icmp slt i32 %604, 0
  br i1 %cmp806, label %if.then.808, label %if.end.809

if.then.808:                                      ; preds = %if.end.805
  %605 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %605, i32* %ecode, align 4, !tbaa !5
  br label %if.end.809

if.end.809:                                       ; preds = %if.then.808, %if.end.805
  %606 = bitcast [768 x i8]* %palette to i8*
  call void @llvm.lifetime.end(i64 768, i8* %606) #1
  br label %if.end.810

if.end.810:                                       ; preds = %if.end.809, %if.end.791
  %607 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs811 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %607, i32 0, i32 0
  %608 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs811, align 8, !tbaa !73
  %commit = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %608, i32 0, i32 8
  %609 = load i32 (%struct.gs_param_list_s*)*, i32 (%struct.gs_param_list_s*)** %commit, align 8, !tbaa !111
  %610 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call812 = call i32 %609(%struct.gs_param_list_s* %610) #5
  store i32 %call812, i32* %code, align 4, !tbaa !5
  %611 = load i32, i32* %ecode, align 4, !tbaa !5
  %cmp813 = icmp slt i32 %611, 0
  br i1 %cmp813, label %if.then.815, label %if.end.816

if.then.815:                                      ; preds = %if.end.810
  %612 = load i32, i32* %ecode, align 4, !tbaa !5
  store i32 %612, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.816:                                       ; preds = %if.end.810
  %613 = load i32, i32* %code, align 4, !tbaa !5
  %cmp817 = icmp slt i32 %613, 0
  br i1 %cmp817, label %if.then.819, label %if.end.820

if.then.819:                                      ; preds = %if.end.816
  %614 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %614, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.820:                                       ; preds = %if.end.816
  %data821 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %hwra, i32 0, i32 0
  %615 = load float*, float** %data821, align 8, !tbaa !37
  %cmp822 = icmp ne float* %615, null
  br i1 %cmp822, label %land.lhs.true.824, label %if.end.849

land.lhs.true.824:                                ; preds = %if.end.820
  %616 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution825 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %616, i32 0, i32 22
  %arrayidx826 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution825, i32 0, i64 0
  %617 = load float, float* %arrayidx826, align 4, !tbaa !82
  %data827 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %hwra, i32 0, i32 0
  %618 = load float*, float** %data827, align 8, !tbaa !37
  %arrayidx828 = getelementptr inbounds float, float* %618, i64 0
  %619 = load float, float* %arrayidx828, align 4, !tbaa !82
  %cmp829 = fcmp une float %617, %619
  br i1 %cmp829, label %if.then.838, label %lor.lhs.false.831

lor.lhs.false.831:                                ; preds = %land.lhs.true.824
  %620 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution832 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %620, i32 0, i32 22
  %arrayidx833 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution832, i32 0, i64 1
  %621 = load float, float* %arrayidx833, align 4, !tbaa !82
  %data834 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %hwra, i32 0, i32 0
  %622 = load float*, float** %data834, align 8, !tbaa !37
  %arrayidx835 = getelementptr inbounds float, float* %622, i64 1
  %623 = load float, float* %arrayidx835, align 4, !tbaa !82
  %cmp836 = fcmp une float %621, %623
  br i1 %cmp836, label %if.then.838, label %if.end.849

if.then.838:                                      ; preds = %lor.lhs.false.831, %land.lhs.true.824
  %624 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %is_open = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %624, i32 0, i32 9
  %625 = load i32, i32* %is_open, align 4, !tbaa !93
  %tobool839 = icmp ne i32 %625, 0
  br i1 %tobool839, label %if.then.840, label %if.end.842

if.then.840:                                      ; preds = %if.then.838
  %626 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call841 = call i32 @gs_closedevice(%struct.gx_device_s* %626) #5
  br label %if.end.842

if.end.842:                                       ; preds = %if.then.840, %if.then.838
  %627 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %data843 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %hwra, i32 0, i32 0
  %628 = load float*, float** %data843, align 8, !tbaa !37
  %arrayidx844 = getelementptr inbounds float, float* %628, i64 0
  %629 = load float, float* %arrayidx844, align 4, !tbaa !82
  %conv845 = fpext float %629 to double
  %data846 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %hwra, i32 0, i32 0
  %630 = load float*, float** %data846, align 8, !tbaa !37
  %arrayidx847 = getelementptr inbounds float, float* %630, i64 1
  %631 = load float, float* %arrayidx847, align 4, !tbaa !82
  %conv848 = fpext float %631 to double
  call void @gx_device_set_resolution(%struct.gx_device_s* %627, double %conv845, double %conv848) #5
  br label %if.end.849

if.end.849:                                       ; preds = %if.end.842, %lor.lhs.false.831, %if.end.820
  %632 = load i32, i32* %leadingedge, align 4, !tbaa !5
  %and850 = and i32 %632, 3
  %633 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %LeadingEdge851 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %633, i32 0, i32 18
  %634 = load i32, i32* %LeadingEdge851, align 4, !tbaa !70
  %and852 = and i32 %634, 3
  %cmp853 = icmp ne i32 %and850, %and852
  br i1 %cmp853, label %if.then.855, label %if.end.868

if.then.855:                                      ; preds = %if.end.849
  %635 = load i32, i32* %leadingedge, align 4, !tbaa !5
  %636 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %LeadingEdge856 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %636, i32 0, i32 18
  store i32 %635, i32* %LeadingEdge856, align 4, !tbaa !70
  %637 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %is_open857 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %637, i32 0, i32 9
  %638 = load i32, i32* %is_open857, align 4, !tbaa !93
  %tobool858 = icmp ne i32 %638, 0
  br i1 %tobool858, label %if.then.859, label %if.end.861

if.then.859:                                      ; preds = %if.then.855
  %639 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call860 = call i32 @gs_closedevice(%struct.gx_device_s* %639) #5
  br label %if.end.861

if.end.861:                                       ; preds = %if.then.859, %if.then.855
  %640 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %641 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution862 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %641, i32 0, i32 22
  %arrayidx863 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution862, i32 0, i64 0
  %642 = load float, float* %arrayidx863, align 4, !tbaa !82
  %conv864 = fpext float %642 to double
  %643 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution865 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %643, i32 0, i32 22
  %arrayidx866 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution865, i32 0, i64 1
  %644 = load float, float* %arrayidx866, align 4, !tbaa !82
  %conv867 = fpext float %644 to double
  call void @gx_device_set_resolution(%struct.gx_device_s* %640, double %conv864, double %conv867) #5
  br label %if.end.868

if.end.868:                                       ; preds = %if.end.861, %if.end.849
  %645 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %LeadingEdge869 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %645, i32 0, i32 18
  %646 = load i32, i32* %LeadingEdge869, align 4, !tbaa !70
  %and870 = and i32 %646, 3
  store i32 %and870, i32* %LeadingEdge869, align 4, !tbaa !70
  %647 = load i32, i32* %leadingedge, align 4, !tbaa !5
  %and871 = and i32 %647, 4
  %648 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %LeadingEdge872 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %648, i32 0, i32 18
  %649 = load i32, i32* %LeadingEdge872, align 4, !tbaa !70
  %or873 = or i32 %649, %and871
  store i32 %or873, i32* %LeadingEdge872, align 4, !tbaa !70
  %data874 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %hwsa, i32 0, i32 0
  %650 = load i32*, i32** %data874, align 8, !tbaa !47
  %cmp875 = icmp ne i32* %650, null
  br i1 %cmp875, label %land.lhs.true.877, label %if.end.899

land.lhs.true.877:                                ; preds = %if.end.868
  %651 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width878 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %651, i32 0, i32 13
  %652 = load i32, i32* %width878, align 4, !tbaa !45
  %data879 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %hwsa, i32 0, i32 0
  %653 = load i32*, i32** %data879, align 8, !tbaa !47
  %arrayidx880 = getelementptr inbounds i32, i32* %653, i64 0
  %654 = load i32, i32* %arrayidx880, align 4, !tbaa !5
  %cmp881 = icmp ne i32 %652, %654
  br i1 %cmp881, label %if.then.889, label %lor.lhs.false.883

lor.lhs.false.883:                                ; preds = %land.lhs.true.877
  %655 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height884 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %655, i32 0, i32 14
  %656 = load i32, i32* %height884, align 4, !tbaa !46
  %data885 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %hwsa, i32 0, i32 0
  %657 = load i32*, i32** %data885, align 8, !tbaa !47
  %arrayidx886 = getelementptr inbounds i32, i32* %657, i64 1
  %658 = load i32, i32* %arrayidx886, align 4, !tbaa !5
  %cmp887 = icmp ne i32 %656, %658
  br i1 %cmp887, label %if.then.889, label %if.end.899

if.then.889:                                      ; preds = %lor.lhs.false.883, %land.lhs.true.877
  %659 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %is_open890 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %659, i32 0, i32 9
  %660 = load i32, i32* %is_open890, align 4, !tbaa !93
  %tobool891 = icmp ne i32 %660, 0
  br i1 %tobool891, label %if.then.892, label %if.end.894

if.then.892:                                      ; preds = %if.then.889
  %661 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call893 = call i32 @gs_closedevice(%struct.gx_device_s* %661) #5
  br label %if.end.894

if.end.894:                                       ; preds = %if.then.892, %if.then.889
  %662 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %data895 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %hwsa, i32 0, i32 0
  %663 = load i32*, i32** %data895, align 8, !tbaa !47
  %arrayidx896 = getelementptr inbounds i32, i32* %663, i64 0
  %664 = load i32, i32* %arrayidx896, align 4, !tbaa !5
  %data897 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %hwsa, i32 0, i32 0
  %665 = load i32*, i32** %data897, align 8, !tbaa !47
  %arrayidx898 = getelementptr inbounds i32, i32* %665, i64 1
  %666 = load i32, i32* %arrayidx898, align 4, !tbaa !5
  call void @gx_device_set_width_height(%struct.gx_device_s* %662, i32 %664, i32 %666) #5
  br label %if.end.899

if.end.899:                                       ; preds = %if.end.894, %lor.lhs.false.883, %if.end.868
  %data900 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %msa, i32 0, i32 0
  %667 = load float*, float** %data900, align 8, !tbaa !37
  %cmp901 = icmp ne float* %667, null
  br i1 %cmp901, label %land.lhs.true.903, label %if.end.928

land.lhs.true.903:                                ; preds = %if.end.899
  %668 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %MediaSize = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %668, i32 0, i32 19
  %arrayidx904 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize, i32 0, i64 0
  %669 = load float, float* %arrayidx904, align 4, !tbaa !82
  %data905 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %msa, i32 0, i32 0
  %670 = load float*, float** %data905, align 8, !tbaa !37
  %arrayidx906 = getelementptr inbounds float, float* %670, i64 0
  %671 = load float, float* %arrayidx906, align 4, !tbaa !82
  %cmp907 = fcmp une float %669, %671
  br i1 %cmp907, label %if.then.916, label %lor.lhs.false.909

lor.lhs.false.909:                                ; preds = %land.lhs.true.903
  %672 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %MediaSize910 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %672, i32 0, i32 19
  %arrayidx911 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize910, i32 0, i64 1
  %673 = load float, float* %arrayidx911, align 4, !tbaa !82
  %data912 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %msa, i32 0, i32 0
  %674 = load float*, float** %data912, align 8, !tbaa !37
  %arrayidx913 = getelementptr inbounds float, float* %674, i64 1
  %675 = load float, float* %arrayidx913, align 4, !tbaa !82
  %cmp914 = fcmp une float %673, %675
  br i1 %cmp914, label %if.then.916, label %if.end.928

if.then.916:                                      ; preds = %lor.lhs.false.909, %land.lhs.true.903
  %676 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %is_open917 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %676, i32 0, i32 9
  %677 = load i32, i32* %is_open917, align 4, !tbaa !93
  %tobool918 = icmp ne i32 %677, 0
  br i1 %tobool918, label %if.then.919, label %if.end.921

if.then.919:                                      ; preds = %if.then.916
  %678 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call920 = call i32 @gs_closedevice(%struct.gx_device_s* %678) #5
  br label %if.end.921

if.end.921:                                       ; preds = %if.then.919, %if.then.916
  %679 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %data922 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %msa, i32 0, i32 0
  %680 = load float*, float** %data922, align 8, !tbaa !37
  %arrayidx923 = getelementptr inbounds float, float* %680, i64 0
  %681 = load float, float* %arrayidx923, align 4, !tbaa !82
  %conv924 = fpext float %681 to double
  %data925 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %msa, i32 0, i32 0
  %682 = load float*, float** %data925, align 8, !tbaa !37
  %arrayidx926 = getelementptr inbounds float, float* %682, i64 1
  %683 = load float, float* %arrayidx926, align 4, !tbaa !82
  %conv927 = fpext float %683 to double
  call void @gx_device_set_media_size(%struct.gx_device_s* %679, double %conv924, double %conv927) #5
  br label %if.end.928

if.end.928:                                       ; preds = %if.end.921, %lor.lhs.false.909, %if.end.899
  %data929 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %ma, i32 0, i32 0
  %684 = load float*, float** %data929, align 8, !tbaa !37
  %cmp930 = icmp ne float* %684, null
  br i1 %cmp930, label %if.then.932, label %if.end.940

if.then.932:                                      ; preds = %if.end.928
  %data933 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %ma, i32 0, i32 0
  %685 = load float*, float** %data933, align 8, !tbaa !37
  %arrayidx934 = getelementptr inbounds float, float* %685, i64 0
  %686 = load float, float* %arrayidx934, align 4, !tbaa !82
  %687 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %Margins = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %687, i32 0, i32 24
  %arrayidx935 = getelementptr inbounds [2 x float], [2 x float]* %Margins, i32 0, i64 0
  store float %686, float* %arrayidx935, align 4, !tbaa !82
  %data936 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %ma, i32 0, i32 0
  %688 = load float*, float** %data936, align 8, !tbaa !37
  %arrayidx937 = getelementptr inbounds float, float* %688, i64 1
  %689 = load float, float* %arrayidx937, align 4, !tbaa !82
  %690 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %Margins938 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %690, i32 0, i32 24
  %arrayidx939 = getelementptr inbounds [2 x float], [2 x float]* %Margins938, i32 0, i64 1
  store float %689, float* %arrayidx939, align 4, !tbaa !82
  br label %if.end.940

if.end.940:                                       ; preds = %if.then.932, %if.end.928
  %data941 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %hwma, i32 0, i32 0
  %691 = load float*, float** %data941, align 8, !tbaa !37
  %cmp942 = icmp ne float* %691, null
  br i1 %cmp942, label %if.then.944, label %if.end.960

if.then.944:                                      ; preds = %if.end.940
  %data945 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %hwma, i32 0, i32 0
  %692 = load float*, float** %data945, align 8, !tbaa !37
  %arrayidx946 = getelementptr inbounds float, float* %692, i64 0
  %693 = load float, float* %arrayidx946, align 4, !tbaa !82
  %694 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWMargins = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %694, i32 0, i32 25
  %arrayidx947 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins, i32 0, i64 0
  store float %693, float* %arrayidx947, align 4, !tbaa !82
  %data948 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %hwma, i32 0, i32 0
  %695 = load float*, float** %data948, align 8, !tbaa !37
  %arrayidx949 = getelementptr inbounds float, float* %695, i64 1
  %696 = load float, float* %arrayidx949, align 4, !tbaa !82
  %697 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWMargins950 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %697, i32 0, i32 25
  %arrayidx951 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins950, i32 0, i64 1
  store float %696, float* %arrayidx951, align 4, !tbaa !82
  %data952 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %hwma, i32 0, i32 0
  %698 = load float*, float** %data952, align 8, !tbaa !37
  %arrayidx953 = getelementptr inbounds float, float* %698, i64 2
  %699 = load float, float* %arrayidx953, align 4, !tbaa !82
  %700 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWMargins954 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %700, i32 0, i32 25
  %arrayidx955 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins954, i32 0, i64 2
  store float %699, float* %arrayidx955, align 4, !tbaa !82
  %data956 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %hwma, i32 0, i32 0
  %701 = load float*, float** %data956, align 8, !tbaa !37
  %arrayidx957 = getelementptr inbounds float, float* %701, i64 3
  %702 = load float, float* %arrayidx957, align 4, !tbaa !82
  %703 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWMargins958 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %703, i32 0, i32 25
  %arrayidx959 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins958, i32 0, i64 3
  store float %702, float* %arrayidx959, align 4, !tbaa !82
  br label %if.end.960

if.end.960:                                       ; preds = %if.then.944, %if.end.940
  %704 = load i32, i32* %nci, align 4, !tbaa !5
  %705 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %NumCopies961 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %705, i32 0, i32 28
  store i32 %704, i32* %NumCopies961, align 4, !tbaa !95
  %706 = load i32, i32* %ncset, align 4, !tbaa !5
  %707 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %NumCopies_set962 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %707, i32 0, i32 29
  store i32 %706, i32* %NumCopies_set962, align 4, !tbaa !69
  %708 = load i32, i32* %ignc, align 4, !tbaa !5
  %709 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %IgnoreNumCopies963 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %709, i32 0, i32 30
  store i32 %708, i32* %IgnoreNumCopies963, align 4, !tbaa !96
  %data964 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %ibba, i32 0, i32 0
  %710 = load float*, float** %data964, align 8, !tbaa !37
  %cmp965 = icmp ne float* %710, null
  br i1 %cmp965, label %if.then.967, label %if.else.983

if.then.967:                                      ; preds = %if.end.960
  %data968 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %ibba, i32 0, i32 0
  %711 = load float*, float** %data968, align 8, !tbaa !37
  %arrayidx969 = getelementptr inbounds float, float* %711, i64 0
  %712 = load float, float* %arrayidx969, align 4, !tbaa !82
  %713 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %ImagingBBox = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %713, i32 0, i32 20
  %arrayidx970 = getelementptr inbounds [4 x float], [4 x float]* %ImagingBBox, i32 0, i64 0
  store float %712, float* %arrayidx970, align 4, !tbaa !82
  %data971 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %ibba, i32 0, i32 0
  %714 = load float*, float** %data971, align 8, !tbaa !37
  %arrayidx972 = getelementptr inbounds float, float* %714, i64 1
  %715 = load float, float* %arrayidx972, align 4, !tbaa !82
  %716 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %ImagingBBox973 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %716, i32 0, i32 20
  %arrayidx974 = getelementptr inbounds [4 x float], [4 x float]* %ImagingBBox973, i32 0, i64 1
  store float %715, float* %arrayidx974, align 4, !tbaa !82
  %data975 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %ibba, i32 0, i32 0
  %717 = load float*, float** %data975, align 8, !tbaa !37
  %arrayidx976 = getelementptr inbounds float, float* %717, i64 2
  %718 = load float, float* %arrayidx976, align 4, !tbaa !82
  %719 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %ImagingBBox977 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %719, i32 0, i32 20
  %arrayidx978 = getelementptr inbounds [4 x float], [4 x float]* %ImagingBBox977, i32 0, i64 2
  store float %718, float* %arrayidx978, align 4, !tbaa !82
  %data979 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %ibba, i32 0, i32 0
  %720 = load float*, float** %data979, align 8, !tbaa !37
  %arrayidx980 = getelementptr inbounds float, float* %720, i64 3
  %721 = load float, float* %arrayidx980, align 4, !tbaa !82
  %722 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %ImagingBBox981 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %722, i32 0, i32 20
  %arrayidx982 = getelementptr inbounds [4 x float], [4 x float]* %ImagingBBox981, i32 0, i64 3
  store float %721, float* %arrayidx982, align 4, !tbaa !82
  %723 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %ImagingBBox_set = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %723, i32 0, i32 21
  store i32 1, i32* %ImagingBBox_set, align 4, !tbaa !68
  br label %if.end.988

if.else.983:                                      ; preds = %if.end.960
  %724 = load i32, i32* %ibbnull, align 4, !tbaa !5
  %tobool984 = icmp ne i32 %724, 0
  br i1 %tobool984, label %if.then.985, label %if.end.987

if.then.985:                                      ; preds = %if.else.983
  %725 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %ImagingBBox_set986 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %725, i32 0, i32 21
  store i32 0, i32* %ImagingBBox_set986, align 4, !tbaa !68
  br label %if.end.987

if.end.987:                                       ; preds = %if.then.985, %if.else.983
  br label %if.end.988

if.end.988:                                       ; preds = %if.end.987, %if.then.967
  %726 = load i32, i32* %ucc, align 4, !tbaa !5
  %727 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %UseCIEColor989 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %727, i32 0, i32 31
  store i32 %726, i32* %UseCIEColor989, align 4, !tbaa !97
  %728 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info990 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %728, i32 0, i32 11
  %max_gray991 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info990, i32 0, i32 5
  %729 = load i32, i32* %max_gray991, align 4, !tbaa !29
  %730 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info992 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %730, i32 0, i32 11
  %max_color993 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info992, i32 0, i32 6
  %731 = load i32, i32* %max_color993, align 4, !tbaa !71
  %cmp994 = icmp ugt i32 %729, %731
  br i1 %cmp994, label %cond.true.996, label %cond.false.999

cond.true.996:                                    ; preds = %if.end.988
  %732 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info997 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %732, i32 0, i32 11
  %max_gray998 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info997, i32 0, i32 5
  %733 = load i32, i32* %max_gray998, align 4, !tbaa !29
  br label %cond.end.1002

cond.false.999:                                   ; preds = %if.end.988
  %734 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info1000 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %734, i32 0, i32 11
  %max_color1001 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info1000, i32 0, i32 6
  %735 = load i32, i32* %max_color1001, align 4, !tbaa !71
  br label %cond.end.1002

cond.end.1002:                                    ; preds = %cond.false.999, %cond.true.996
  %cond1003 = phi i32 [ %733, %cond.true.996 ], [ %735, %cond.false.999 ]
  %736 = load i32, i32* %tab, align 4, !tbaa !5
  %call1004 = call i32 @param_normalize_anti_alias_bits(i32 %cond1003, i32 %736) #5
  %737 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info1005 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %737, i32 0, i32 11
  %anti_alias1006 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info1005, i32 0, i32 9
  %text_bits1007 = getelementptr inbounds %struct.gx_device_anti_alias_info_s, %struct.gx_device_anti_alias_info_s* %anti_alias1006, i32 0, i32 0
  store i32 %call1004, i32* %text_bits1007, align 4, !tbaa !99
  %738 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info1008 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %738, i32 0, i32 11
  %max_gray1009 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info1008, i32 0, i32 5
  %739 = load i32, i32* %max_gray1009, align 4, !tbaa !29
  %740 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info1010 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %740, i32 0, i32 11
  %max_color1011 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info1010, i32 0, i32 6
  %741 = load i32, i32* %max_color1011, align 4, !tbaa !71
  %cmp1012 = icmp ugt i32 %739, %741
  br i1 %cmp1012, label %cond.true.1014, label %cond.false.1017

cond.true.1014:                                   ; preds = %cond.end.1002
  %742 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info1015 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %742, i32 0, i32 11
  %max_gray1016 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info1015, i32 0, i32 5
  %743 = load i32, i32* %max_gray1016, align 4, !tbaa !29
  br label %cond.end.1020

cond.false.1017:                                  ; preds = %cond.end.1002
  %744 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info1018 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %744, i32 0, i32 11
  %max_color1019 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info1018, i32 0, i32 6
  %745 = load i32, i32* %max_color1019, align 4, !tbaa !71
  br label %cond.end.1020

cond.end.1020:                                    ; preds = %cond.false.1017, %cond.true.1014
  %cond1021 = phi i32 [ %743, %cond.true.1014 ], [ %745, %cond.false.1017 ]
  %746 = load i32, i32* %gab, align 4, !tbaa !5
  %call1022 = call i32 @param_normalize_anti_alias_bits(i32 %cond1021, i32 %746) #5
  %747 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info1023 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %747, i32 0, i32 11
  %anti_alias1024 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info1023, i32 0, i32 9
  %graphics_bits1025 = getelementptr inbounds %struct.gx_device_anti_alias_info_s, %struct.gx_device_anti_alias_info_s* %anti_alias1024, i32 0, i32 1
  store i32 %call1022, i32* %graphics_bits1025, align 4, !tbaa !100
  %748 = load i32, i32* %locksafe, align 4, !tbaa !5
  %749 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %LockSafetyParams1026 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %749, i32 0, i32 32
  store i32 %748, i32* %LockSafetyParams1026, align 4, !tbaa !98
  %750 = load i32, i32* %mpbm, align 4, !tbaa !5
  %751 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %MaxPatternBitmap1027 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %751, i32 0, i32 36
  store i32 %750, i32* %MaxPatternBitmap1027, align 4, !tbaa !101
  %752 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %space_params1028 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %752, i32 0, i32 38
  %753 = bitcast %struct.gdev_space_params_s* %space_params1028 to i8*
  %754 = bitcast %struct.gdev_space_params_s* %sp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %753, i8* %754, i64 40, i32 8, i1 false), !tbaa.struct !103
  %755 = load i32, i32* %page_uses_transparency, align 4, !tbaa !5
  %756 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %page_uses_transparency1029 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %756, i32 0, i32 37
  store i32 %755, i32* %page_uses_transparency1029, align 4, !tbaa !102
  %757 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  call void @gx_device_decache_colors(%struct.gx_device_s* %757) #5
  %758 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct1030 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %758, i32 0, i32 39
  %759 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct1030, align 8, !tbaa !104
  %cmp1031 = icmp ne %struct.cmm_dev_profile_s* %759, null
  br i1 %cmp1031, label %if.then.1033, label %if.end.1131

if.then.1033:                                     ; preds = %cond.end.1020
  %arrayidx1034 = getelementptr inbounds [4 x i32], [4 x i32]* %rend_intent, i32 0, i64 0
  %760 = load i32, i32* %arrayidx1034, align 4, !tbaa !5
  %761 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call1035 = call i32 @gx_default_put_intent(i32 %760, %struct.gx_device_s* %761, i32 0) #5
  store i32 %call1035, i32* %code, align 4, !tbaa !5
  %762 = load i32, i32* %code, align 4, !tbaa !5
  %cmp1036 = icmp slt i32 %762, 0
  br i1 %cmp1036, label %if.then.1038, label %if.end.1039

if.then.1038:                                     ; preds = %if.then.1033
  %763 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %763, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.1039:                                      ; preds = %if.then.1033
  %arrayidx1040 = getelementptr inbounds [4 x i32], [4 x i32]* %blackptcomp, i32 0, i64 0
  %764 = load i32, i32* %arrayidx1040, align 4, !tbaa !5
  %765 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call1041 = call i32 @gx_default_put_blackptcomp(i32 %764, %struct.gx_device_s* %765, i32 0) #5
  store i32 %call1041, i32* %code, align 4, !tbaa !5
  %766 = load i32, i32* %code, align 4, !tbaa !5
  %cmp1042 = icmp slt i32 %766, 0
  br i1 %cmp1042, label %if.then.1044, label %if.end.1045

if.then.1044:                                     ; preds = %if.end.1039
  %767 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %767, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.1045:                                      ; preds = %if.end.1039
  %arrayidx1046 = getelementptr inbounds [4 x i32], [4 x i32]* %blackpreserve, i32 0, i64 0
  %768 = load i32, i32* %arrayidx1046, align 4, !tbaa !5
  %769 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call1047 = call i32 @gx_default_put_blackpreserve(i32 %768, %struct.gx_device_s* %769, i32 0) #5
  store i32 %call1047, i32* %code, align 4, !tbaa !5
  %770 = load i32, i32* %code, align 4, !tbaa !5
  %cmp1048 = icmp slt i32 %770, 0
  br i1 %cmp1048, label %if.then.1050, label %if.end.1051

if.then.1050:                                     ; preds = %if.end.1045
  %771 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %771, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.1051:                                      ; preds = %if.end.1045
  store i32 1, i32* %k, align 4, !tbaa !5
  br label %for.cond.1052

for.cond.1052:                                    ; preds = %for.inc.1128, %if.end.1051
  %772 = load i32, i32* %k, align 4, !tbaa !5
  %cmp1053 = icmp slt i32 %772, 4
  br i1 %cmp1053, label %for.body.1055, label %for.end.1130

for.body.1055:                                    ; preds = %for.cond.1052
  %arrayidx1056 = getelementptr inbounds [4 x i32], [4 x i32]* %rend_intent, i32 0, i64 0
  %773 = load i32, i32* %arrayidx1056, align 4, !tbaa !5
  %cmp1057 = icmp ne i32 %773, 8
  br i1 %cmp1057, label %land.lhs.true.1059, label %if.else.1069

land.lhs.true.1059:                               ; preds = %for.body.1055
  %774 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom1060 = sext i32 %774 to i64
  %arrayidx1061 = getelementptr inbounds [4 x i32], [4 x i32]* %rend_intent, i32 0, i64 %idxprom1060
  %775 = load i32, i32* %arrayidx1061, align 4, !tbaa !5
  %cmp1062 = icmp eq i32 %775, 8
  br i1 %cmp1062, label %if.then.1064, label %if.else.1069

if.then.1064:                                     ; preds = %land.lhs.true.1059
  %arrayidx1065 = getelementptr inbounds [4 x i32], [4 x i32]* %rend_intent, i32 0, i64 0
  %776 = load i32, i32* %arrayidx1065, align 4, !tbaa !5
  %777 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %778 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom1066 = sext i32 %778 to i64
  %arrayidx1067 = getelementptr inbounds [4 x i32], [4 x i32]* %profile_types, i32 0, i64 %idxprom1066
  %779 = load i32, i32* %arrayidx1067, align 4, !tbaa !5
  %call1068 = call i32 @gx_default_put_intent(i32 %776, %struct.gx_device_s* %777, i32 %779) #5
  store i32 %call1068, i32* %code, align 4, !tbaa !5
  br label %if.end.1075

if.else.1069:                                     ; preds = %land.lhs.true.1059, %for.body.1055
  %780 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom1070 = sext i32 %780 to i64
  %arrayidx1071 = getelementptr inbounds [4 x i32], [4 x i32]* %rend_intent, i32 0, i64 %idxprom1070
  %781 = load i32, i32* %arrayidx1071, align 4, !tbaa !5
  %782 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %783 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom1072 = sext i32 %783 to i64
  %arrayidx1073 = getelementptr inbounds [4 x i32], [4 x i32]* %profile_types, i32 0, i64 %idxprom1072
  %784 = load i32, i32* %arrayidx1073, align 4, !tbaa !5
  %call1074 = call i32 @gx_default_put_intent(i32 %781, %struct.gx_device_s* %782, i32 %784) #5
  store i32 %call1074, i32* %code, align 4, !tbaa !5
  br label %if.end.1075

if.end.1075:                                      ; preds = %if.else.1069, %if.then.1064
  %785 = load i32, i32* %code, align 4, !tbaa !5
  %cmp1076 = icmp slt i32 %785, 0
  br i1 %cmp1076, label %if.then.1078, label %if.end.1079

if.then.1078:                                     ; preds = %if.end.1075
  %786 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %786, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.1079:                                      ; preds = %if.end.1075
  %arrayidx1080 = getelementptr inbounds [4 x i32], [4 x i32]* %blackptcomp, i32 0, i64 0
  %787 = load i32, i32* %arrayidx1080, align 4, !tbaa !5
  %cmp1081 = icmp ne i32 %787, 8
  br i1 %cmp1081, label %land.lhs.true.1083, label %if.else.1093

land.lhs.true.1083:                               ; preds = %if.end.1079
  %788 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom1084 = sext i32 %788 to i64
  %arrayidx1085 = getelementptr inbounds [4 x i32], [4 x i32]* %blackptcomp, i32 0, i64 %idxprom1084
  %789 = load i32, i32* %arrayidx1085, align 4, !tbaa !5
  %cmp1086 = icmp eq i32 %789, 8
  br i1 %cmp1086, label %if.then.1088, label %if.else.1093

if.then.1088:                                     ; preds = %land.lhs.true.1083
  %arrayidx1089 = getelementptr inbounds [4 x i32], [4 x i32]* %blackptcomp, i32 0, i64 0
  %790 = load i32, i32* %arrayidx1089, align 4, !tbaa !5
  %791 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %792 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom1090 = sext i32 %792 to i64
  %arrayidx1091 = getelementptr inbounds [4 x i32], [4 x i32]* %profile_types, i32 0, i64 %idxprom1090
  %793 = load i32, i32* %arrayidx1091, align 4, !tbaa !5
  %call1092 = call i32 @gx_default_put_blackptcomp(i32 %790, %struct.gx_device_s* %791, i32 %793) #5
  store i32 %call1092, i32* %code, align 4, !tbaa !5
  br label %if.end.1099

if.else.1093:                                     ; preds = %land.lhs.true.1083, %if.end.1079
  %794 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom1094 = sext i32 %794 to i64
  %arrayidx1095 = getelementptr inbounds [4 x i32], [4 x i32]* %blackptcomp, i32 0, i64 %idxprom1094
  %795 = load i32, i32* %arrayidx1095, align 4, !tbaa !5
  %796 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %797 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom1096 = sext i32 %797 to i64
  %arrayidx1097 = getelementptr inbounds [4 x i32], [4 x i32]* %profile_types, i32 0, i64 %idxprom1096
  %798 = load i32, i32* %arrayidx1097, align 4, !tbaa !5
  %call1098 = call i32 @gx_default_put_blackptcomp(i32 %795, %struct.gx_device_s* %796, i32 %798) #5
  store i32 %call1098, i32* %code, align 4, !tbaa !5
  br label %if.end.1099

if.end.1099:                                      ; preds = %if.else.1093, %if.then.1088
  %799 = load i32, i32* %code, align 4, !tbaa !5
  %cmp1100 = icmp slt i32 %799, 0
  br i1 %cmp1100, label %if.then.1102, label %if.end.1103

if.then.1102:                                     ; preds = %if.end.1099
  %800 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %800, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.1103:                                      ; preds = %if.end.1099
  %arrayidx1104 = getelementptr inbounds [4 x i32], [4 x i32]* %blackpreserve, i32 0, i64 0
  %801 = load i32, i32* %arrayidx1104, align 4, !tbaa !5
  %cmp1105 = icmp ne i32 %801, 8
  br i1 %cmp1105, label %land.lhs.true.1107, label %if.else.1117

land.lhs.true.1107:                               ; preds = %if.end.1103
  %802 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom1108 = sext i32 %802 to i64
  %arrayidx1109 = getelementptr inbounds [4 x i32], [4 x i32]* %blackpreserve, i32 0, i64 %idxprom1108
  %803 = load i32, i32* %arrayidx1109, align 4, !tbaa !5
  %cmp1110 = icmp eq i32 %803, 8
  br i1 %cmp1110, label %if.then.1112, label %if.else.1117

if.then.1112:                                     ; preds = %land.lhs.true.1107
  %arrayidx1113 = getelementptr inbounds [4 x i32], [4 x i32]* %blackpreserve, i32 0, i64 0
  %804 = load i32, i32* %arrayidx1113, align 4, !tbaa !5
  %805 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %806 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom1114 = sext i32 %806 to i64
  %arrayidx1115 = getelementptr inbounds [4 x i32], [4 x i32]* %profile_types, i32 0, i64 %idxprom1114
  %807 = load i32, i32* %arrayidx1115, align 4, !tbaa !5
  %call1116 = call i32 @gx_default_put_blackpreserve(i32 %804, %struct.gx_device_s* %805, i32 %807) #5
  store i32 %call1116, i32* %code, align 4, !tbaa !5
  br label %if.end.1123

if.else.1117:                                     ; preds = %land.lhs.true.1107, %if.end.1103
  %808 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom1118 = sext i32 %808 to i64
  %arrayidx1119 = getelementptr inbounds [4 x i32], [4 x i32]* %blackpreserve, i32 0, i64 %idxprom1118
  %809 = load i32, i32* %arrayidx1119, align 4, !tbaa !5
  %810 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %811 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom1120 = sext i32 %811 to i64
  %arrayidx1121 = getelementptr inbounds [4 x i32], [4 x i32]* %profile_types, i32 0, i64 %idxprom1120
  %812 = load i32, i32* %arrayidx1121, align 4, !tbaa !5
  %call1122 = call i32 @gx_default_put_blackpreserve(i32 %809, %struct.gx_device_s* %810, i32 %812) #5
  store i32 %call1122, i32* %code, align 4, !tbaa !5
  br label %if.end.1123

if.end.1123:                                      ; preds = %if.else.1117, %if.then.1112
  %813 = load i32, i32* %code, align 4, !tbaa !5
  %cmp1124 = icmp slt i32 %813, 0
  br i1 %cmp1124, label %if.then.1126, label %if.end.1127

if.then.1126:                                     ; preds = %if.end.1123
  %814 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %814, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.1127:                                      ; preds = %if.end.1123
  br label %for.inc.1128

for.inc.1128:                                     ; preds = %if.end.1127
  %815 = load i32, i32* %k, align 4, !tbaa !5
  %inc1129 = add nsw i32 %815, 1
  store i32 %inc1129, i32* %k, align 4, !tbaa !5
  br label %for.cond.1052

for.end.1130:                                     ; preds = %for.cond.1052
  br label %if.end.1131

if.end.1131:                                      ; preds = %for.end.1130, %cond.end.1020
  %816 = load i32, i32* %devicegraytok, align 4, !tbaa !5
  %817 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call1132 = call i32 @gx_default_put_graytok(i32 %816, %struct.gx_device_s* %817) #5
  store i32 %call1132, i32* %code, align 4, !tbaa !5
  %818 = load i32, i32* %code, align 4, !tbaa !5
  %cmp1133 = icmp slt i32 %818, 0
  br i1 %cmp1133, label %if.then.1135, label %if.end.1136

if.then.1135:                                     ; preds = %if.end.1131
  %819 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %819, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.1136:                                      ; preds = %if.end.1131
  %820 = load i32, i32* %usefastcolor, align 4, !tbaa !5
  %821 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call1137 = call i32 @gx_default_put_usefastcolor(i32 %820, %struct.gx_device_s* %821) #5
  store i32 %call1137, i32* %code, align 4, !tbaa !5
  %822 = load i32, i32* %code, align 4, !tbaa !5
  %cmp1138 = icmp slt i32 %822, 0
  br i1 %cmp1138, label %if.then.1140, label %if.end.1141

if.then.1140:                                     ; preds = %if.end.1136
  %823 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %823, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.1141:                                      ; preds = %if.end.1136
  %824 = load i32, i32* %sim_overprint, align 4, !tbaa !5
  %825 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call1142 = call i32 @gx_default_put_simulateoverprint(i32 %824, %struct.gx_device_s* %825) #5
  store i32 %call1142, i32* %code, align 4, !tbaa !5
  %826 = load i32, i32* %code, align 4, !tbaa !5
  %cmp1143 = icmp slt i32 %826, 0
  br i1 %cmp1143, label %if.then.1145, label %if.end.1146

if.then.1145:                                     ; preds = %if.end.1141
  %827 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %827, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.1146:                                      ; preds = %if.end.1141
  %828 = load i32, i32* %graydetection, align 4, !tbaa !5
  %829 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call1147 = call i32 @gx_default_put_graydetection(i32 %828, %struct.gx_device_s* %829) #5
  store i32 %call1147, i32* %code, align 4, !tbaa !5
  %830 = load i32, i32* %code, align 4, !tbaa !5
  %cmp1148 = icmp slt i32 %830, 0
  br i1 %cmp1148, label %if.then.1150, label %if.end.1151

if.then.1150:                                     ; preds = %if.end.1146
  %831 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %831, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.1151:                                      ; preds = %if.end.1146
  %832 = load i32, i32* %prebandthreshold, align 4, !tbaa !5
  %833 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call1152 = call i32 @gx_default_put_prebandthreshold(i32 %832, %struct.gx_device_s* %833) #5
  store i32 %call1152, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.1151, %if.then.1150, %if.then.1145, %if.then.1140, %if.then.1135, %if.then.1126, %if.then.1102, %if.then.1078, %if.then.1050, %if.then.1044, %if.then.1038, %if.then.819, %if.then.815
  %834 = bitcast [4 x i32]* %profile_types to i8*
  call void @llvm.lifetime.end(i64 16, i8* %834) #1
  %835 = bitcast i32* %prebandthreshold to i8*
  call void @llvm.lifetime.end(i64 4, i8* %835) #1
  %836 = bitcast i32* %sim_overprint to i8*
  call void @llvm.lifetime.end(i64 4, i8* %836) #1
  %837 = bitcast i32* %usefastcolor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %837) #1
  %838 = bitcast i32* %graydetection to i8*
  call void @llvm.lifetime.end(i64 4, i8* %838) #1
  %839 = bitcast i32* %devicegraytok to i8*
  call void @llvm.lifetime.end(i64 4, i8* %839) #1
  %840 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %840) #1
  %841 = bitcast i32* %leadingedge to i8*
  call void @llvm.lifetime.end(i64 4, i8* %841) #1
  %842 = bitcast %struct.gs_param_string_s* %cms to i8*
  call void @llvm.lifetime.end(i64 16, i8* %842) #1
  %843 = bitcast [4 x i32]* %blackpreserve to i8*
  call void @llvm.lifetime.end(i64 16, i8* %843) #1
  %844 = bitcast [4 x i32]* %blackptcomp to i8*
  call void @llvm.lifetime.end(i64 16, i8* %844) #1
  %845 = bitcast [4 x i32]* %rend_intent to i8*
  call void @llvm.lifetime.end(i64 16, i8* %845) #1
  %846 = bitcast %struct.gdev_space_params_s* %save_sp to i8*
  call void @llvm.lifetime.end(i64 40, i8* %846) #1
  %847 = bitcast %struct.gdev_space_params_s* %sp to i8*
  call void @llvm.lifetime.end(i64 40, i8* %847) #1
  %848 = bitcast i32* %page_uses_transparency to i8*
  call void @llvm.lifetime.end(i64 4, i8* %848) #1
  %849 = bitcast i32* %mpbm to i8*
  call void @llvm.lifetime.end(i64 4, i8* %849) #1
  %850 = bitcast i32* %gab to i8*
  call void @llvm.lifetime.end(i64 4, i8* %850) #1
  %851 = bitcast i32* %tab to i8*
  call void @llvm.lifetime.end(i64 4, i8* %851) #1
  %852 = bitcast i64* %ColorValues to i8*
  call void @llvm.lifetime.end(i64 8, i8* %852) #1
  %853 = bitcast i32* %RGBValues to i8*
  call void @llvm.lifetime.end(i64 4, i8* %853) #1
  %854 = bitcast i32* %GrayValues to i8*
  call void @llvm.lifetime.end(i64 4, i8* %854) #1
  %855 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %855) #1
  %856 = bitcast i32* %colors to i8*
  call void @llvm.lifetime.end(i64 4, i8* %856) #1
  %857 = bitcast i32* %ibbnull to i8*
  call void @llvm.lifetime.end(i64 4, i8* %857) #1
  %858 = bitcast %struct.gs_param_float_array_s* %ibba to i8*
  call void @llvm.lifetime.end(i64 16, i8* %858) #1
  %859 = bitcast i32* %locksafe to i8*
  call void @llvm.lifetime.end(i64 4, i8* %859) #1
  %860 = bitcast %struct.gs_param_string_s* %icc_pro to i8*
  call void @llvm.lifetime.end(i64 16, i8* %860) #1
  %861 = bitcast i32* %ucc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %861) #1
  %862 = bitcast i32* %ignc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %862) #1
  %863 = bitcast i32* %ncset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %863) #1
  %864 = bitcast i32* %nci to i8*
  call void @llvm.lifetime.end(i64 4, i8* %864) #1
  %865 = bitcast %struct.gs_param_string_array_s* %scna to i8*
  call void @llvm.lifetime.end(i64 16, i8* %865) #1
  %866 = bitcast %struct.gs_param_float_array_s* %mhwra to i8*
  call void @llvm.lifetime.end(i64 16, i8* %866) #1
  %867 = bitcast %struct.gs_param_float_array_s* %hwma to i8*
  call void @llvm.lifetime.end(i64 16, i8* %867) #1
  %868 = bitcast %struct.gs_param_float_array_s* %ma to i8*
  call void @llvm.lifetime.end(i64 16, i8* %868) #1
  %869 = bitcast %struct.gs_param_float_array_s* %msa to i8*
  call void @llvm.lifetime.end(i64 16, i8* %869) #1
  %870 = bitcast %struct.gs_param_int_array_s* %hwsa to i8*
  call void @llvm.lifetime.end(i64 16, i8* %870) #1
  %871 = bitcast %struct.gs_param_float_array_s* %hwra to i8*
  call void @llvm.lifetime.end(i64 16, i8* %871) #1
  %872 = bitcast i8** %param_name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %872) #1
  %873 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %873) #1
  %874 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %874) #1
  %875 = load i32, i32* %retval
  ret i32 %875
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @param_read_float_array(%struct.gs_param_list_s*, i8*, %struct.gs_param_float_array_s*) #2

declare i32 @param_read_int_array(%struct.gs_param_list_s*, i8*, %struct.gs_param_int_array_s*) #2

declare i32 @param_read_int(%struct.gs_param_list_s*, i8*, i32*) #2

declare i32 @param_read_null(%struct.gs_param_list_s*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @param_MediaSize(%struct.gs_param_list_s* %plist, i8* %pname, float* %res, %struct.gs_param_float_array_s* %pa) #0 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pname.addr = alloca i8*, align 8
  %res.addr = alloca float*, align 8
  %pa.addr = alloca %struct.gs_param_float_array_s*, align 8
  %param_name = alloca i8*, align 8
  %ecode = alloca i32, align 4
  %code = alloca i32, align 4
  %width_new = alloca float, align 4
  %height_new = alloca float, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pname, i8** %pname.addr, align 8, !tbaa !1
  store float* %res, float** %res.addr, align 8, !tbaa !1
  store %struct.gs_param_float_array_s* %pa, %struct.gs_param_float_array_s** %pa.addr, align 8, !tbaa !1
  %0 = bitcast i8** %param_name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %ecode, align 4, !tbaa !5
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  store i8* %4, i8** %param_name, align 8, !tbaa !1
  %5 = load %struct.gs_param_float_array_s*, %struct.gs_param_float_array_s** %pa.addr, align 8, !tbaa !1
  %call = call i32 @param_read_float_array(%struct.gs_param_list_s* %3, i8* %4, %struct.gs_param_float_array_s* %5) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  switch i32 %call, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.21
  ]

sw.bb:                                            ; preds = %do.body
  %6 = load %struct.gs_param_float_array_s*, %struct.gs_param_float_array_s** %pa.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %6, i32 0, i32 1
  %7 = load i32, i32* %size, align 4, !tbaa !39
  %cmp = icmp ne i32 %7, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  store i32 -15, i32* %ecode, align 4, !tbaa !5
  %8 = load %struct.gs_param_float_array_s*, %struct.gs_param_float_array_s** %pa.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %8, i32 0, i32 0
  store float* null, float** %data, align 8, !tbaa !37
  br label %if.end.19

if.else:                                          ; preds = %sw.bb
  %9 = bitcast float* %width_new to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.gs_param_float_array_s*, %struct.gs_param_float_array_s** %pa.addr, align 8, !tbaa !1
  %data1 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %10, i32 0, i32 0
  %11 = load float*, float** %data1, align 8, !tbaa !37
  %arrayidx = getelementptr inbounds float, float* %11, i64 0
  %12 = load float, float* %arrayidx, align 4, !tbaa !82
  %13 = load float*, float** %res.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds float, float* %13, i64 0
  %14 = load float, float* %arrayidx2, align 4, !tbaa !82
  %mul = fmul float %12, %14
  %div = fdiv float %mul, 7.200000e+01
  store float %div, float* %width_new, align 4, !tbaa !82
  %15 = bitcast float* %height_new to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.gs_param_float_array_s*, %struct.gs_param_float_array_s** %pa.addr, align 8, !tbaa !1
  %data3 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %16, i32 0, i32 0
  %17 = load float*, float** %data3, align 8, !tbaa !37
  %arrayidx4 = getelementptr inbounds float, float* %17, i64 1
  %18 = load float, float* %arrayidx4, align 4, !tbaa !82
  %19 = load float*, float** %res.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds float, float* %19, i64 1
  %20 = load float, float* %arrayidx5, align 4, !tbaa !82
  %mul6 = fmul float %18, %20
  %div7 = fdiv float %mul6, 7.200000e+01
  store float %div7, float* %height_new, align 4, !tbaa !82
  %21 = load float, float* %width_new, align 4, !tbaa !82
  %cmp8 = fcmp olt float %21, 0.000000e+00
  br i1 %cmp8, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %22 = load float, float* %height_new, align 4, !tbaa !82
  %cmp9 = fcmp olt float %22, 0.000000e+00
  br i1 %cmp9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %lor.lhs.false, %if.else
  store i32 -15, i32* %ecode, align 4, !tbaa !5
  br label %if.end.17

if.else.11:                                       ; preds = %lor.lhs.false
  %23 = load float, float* %width_new, align 4, !tbaa !82
  %cmp12 = fcmp ogt float %23, 8.388607e+06
  br i1 %cmp12, label %if.then.15, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %if.else.11
  %24 = load float, float* %height_new, align 4, !tbaa !82
  %cmp14 = fcmp ogt float %24, 8.388607e+06
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %lor.lhs.false.13, %if.else.11
  store i32 -13, i32* %ecode, align 4, !tbaa !5
  br label %if.end

if.else.16:                                       ; preds = %lor.lhs.false.13
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.15
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %if.then.10
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.17, %if.else.16
  %25 = bitcast float* %height_new to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast float* %width_new to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %sw.epilog
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.19

if.end.19:                                        ; preds = %cleanup.cont, %if.then
  br label %mse

sw.default:                                       ; preds = %do.body
  %27 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %27, i32* %ecode, align 4, !tbaa !5
  br label %mse

mse:                                              ; preds = %sw.default, %if.end.19
  %28 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %28, i32 0, i32 0
  %29 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !73
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %29, i32 0, i32 7
  %30 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !105
  %31 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %32 = load i8*, i8** %param_name, align 8, !tbaa !1
  %33 = load i32, i32* %ecode, align 4, !tbaa !5
  %call20 = call i32 %30(%struct.gs_param_list_s* %31, i8* %32, i32 %33) #5
  br label %sw.bb.21

sw.bb.21:                                         ; preds = %do.body, %mse
  %34 = load %struct.gs_param_float_array_s*, %struct.gs_param_float_array_s** %pa.addr, align 8, !tbaa !1
  %data22 = getelementptr inbounds %struct.gs_param_float_array_s, %struct.gs_param_float_array_s* %34, i32 0, i32 0
  store float* null, float** %data22, align 8, !tbaa !37
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.21, %cleanup
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  br label %do.end

do.end:                                           ; preds = %do.cond
  %35 = load i32, i32* %ecode, align 4, !tbaa !5
  store i32 1, i32* %cleanup.dest.slot
  %36 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast i8** %param_name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  ret i32 %35

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i32 @param_read_bool(%struct.gs_param_list_s*, i8*, i32*) #2

declare i32 @param_read_string(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @gx_default_put_icc(%struct.gs_param_string_s* %icc_pro, %struct.gx_device_s* %dev, i32 %index) #0 {
entry:
  %retval = alloca i32, align 4
  %icc_pro.addr = alloca %struct.gs_param_string_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %index.addr = alloca i32, align 4
  %tempstr = alloca i8*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_string_s* %icc_pro, %struct.gs_param_string_s** %icc_pro.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %index, i32* %index.addr, align 4, !tbaa !36
  %0 = bitcast i8** %tempstr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %2 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %icc_pro.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %2, i32 0, i32 1
  %3 = load i32, i32* %size, align 4, !tbaa !33
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %5 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !51
  %cmp1 = icmp eq i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* %5, null
  br i1 %cmp1, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.end
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 42
  %get_profile4 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs3, i32 0, i32 67
  store i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_default_get_profile, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile4, align 8, !tbaa !51
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.2, %if.end
  %7 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %icc_pro.addr, align 8, !tbaa !1
  %size6 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %7, i32 0, i32 1
  %8 = load i32, i32* %size6, align 4, !tbaa !33
  %cmp7 = icmp ult i32 %8, 4096
  br i1 %cmp7, label %if.then.8, label %if.end.22

if.then.8:                                        ; preds = %if.end.5
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 3
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  %procs9 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %10, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs9, i32 0, i32 7
  %11 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !112
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory10 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i32 0, i32 3
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory10, align 8, !tbaa !7
  %14 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %icc_pro.addr, align 8, !tbaa !1
  %size11 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %14, i32 0, i32 1
  %15 = load i32, i32* %size11, align 4, !tbaa !33
  %add = add i32 %15, 1
  %call = call i8* %11(%struct.gs_memory_s* %13, i32 %add, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.70, i32 0, i32 0)) #5
  store i8* %call, i8** %tempstr, align 8, !tbaa !1
  %16 = load i8*, i8** %tempstr, align 8, !tbaa !1
  %cmp12 = icmp eq i8* %16, null
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.8
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.then.8
  %17 = load i8*, i8** %tempstr, align 8, !tbaa !1
  %18 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %icc_pro.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %18, i32 0, i32 0
  %19 = load i8*, i8** %data, align 8, !tbaa !31
  %20 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %icc_pro.addr, align 8, !tbaa !1
  %size15 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %20, i32 0, i32 1
  %21 = load i32, i32* %size15, align 4, !tbaa !33
  %conv = zext i32 %21 to i64
  %call16 = call i8* @memcpy(i8* %17, i8* %19, i64 %conv) #7
  %22 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %icc_pro.addr, align 8, !tbaa !1
  %size17 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %22, i32 0, i32 1
  %23 = load i32, i32* %size17, align 4, !tbaa !33
  %idxprom = zext i32 %23 to i64
  %24 = load i8*, i8** %tempstr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %24, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !36
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %26 = load i8*, i8** %tempstr, align 8, !tbaa !1
  %27 = load i32, i32* %index.addr, align 4, !tbaa !36
  %call18 = call i32 @gsicc_init_device_profile_struct(%struct.gx_device_s* %25, i8* %26, i32 %27) #5
  store i32 %call18, i32* %code, align 4, !tbaa !5
  %28 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory19 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %28, i32 0, i32 3
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory19, align 8, !tbaa !7
  %procs20 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %29, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs20, i32 0, i32 2
  %30 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !115
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory21 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %31, i32 0, i32 3
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory21, align 8, !tbaa !7
  %33 = load i8*, i8** %tempstr, align 8, !tbaa !1
  call void %30(%struct.gs_memory_s* %32, i8* %33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.70, i32 0, i32 0)) #5
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.14, %if.end.5
  %34 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %34, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.22, %if.then.13, %if.then
  %35 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast i8** %tempstr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = load i32, i32* %retval
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_default_put_icc_colorants(%struct.gs_param_string_s* %colorants, %struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %colorants.addr = alloca %struct.gs_param_string_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %tempstr = alloca i8*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_string_s* %colorants, %struct.gs_param_string_s** %colorants.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast i8** %tempstr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %colorants.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %2, i32 0, i32 1
  %3 = load i32, i32* %size, align 4, !tbaa !33
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %5 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !51
  %cmp1 = icmp eq i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* %5, null
  br i1 %cmp1, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.end
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 42
  %get_profile4 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs3, i32 0, i32 67
  store i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_default_get_profile, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile4, align 8, !tbaa !51
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.2, %if.end
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 3
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  %procs6 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs6, i32 0, i32 7
  %9 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !112
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory7 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %10, i32 0, i32 3
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory7, align 8, !tbaa !7
  %12 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %colorants.addr, align 8, !tbaa !1
  %size8 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %12, i32 0, i32 1
  %13 = load i32, i32* %size8, align 4, !tbaa !33
  %add = add i32 %13, 1
  %call = call i8* %9(%struct.gs_memory_s* %11, i32 %add, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.71, i32 0, i32 0)) #5
  store i8* %call, i8** %tempstr, align 8, !tbaa !1
  %14 = load i8*, i8** %tempstr, align 8, !tbaa !1
  %15 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %colorants.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %15, i32 0, i32 0
  %16 = load i8*, i8** %data, align 8, !tbaa !31
  %17 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %colorants.addr, align 8, !tbaa !1
  %size9 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %17, i32 0, i32 1
  %18 = load i32, i32* %size9, align 4, !tbaa !33
  %conv = zext i32 %18 to i64
  %call10 = call i8* @memcpy(i8* %14, i8* %16, i64 %conv) #7
  %19 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %colorants.addr, align 8, !tbaa !1
  %size11 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %19, i32 0, i32 1
  %20 = load i32, i32* %size11, align 4, !tbaa !33
  %idxprom = zext i32 %20 to i64
  %21 = load i8*, i8** %tempstr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %21, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !36
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %23 = load i8*, i8** %tempstr, align 8, !tbaa !1
  %call12 = call i32 @gsicc_set_device_profile_colorants(%struct.gx_device_s* %22, i8* %23) #5
  store i32 %call12, i32* %code, align 4, !tbaa !5
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory13 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %24, i32 0, i32 3
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory13, align 8, !tbaa !7
  %procs14 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %25, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs14, i32 0, i32 2
  %26 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !115
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory15 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %27, i32 0, i32 3
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory15, align 8, !tbaa !7
  %29 = load i8*, i8** %tempstr, align 8, !tbaa !1
  call void %26(%struct.gs_memory_s* %28, i8* %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.71, i32 0, i32 0)) #5
  %30 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.5, %if.then
  %31 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast i8** %tempstr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define internal i32 @param_anti_alias_bits(%struct.gs_param_list_s* %plist, i8* %param_name, i32* %pa) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %param_name.addr = alloca i8*, align 8
  %pa.addr = alloca i32*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %param_name, i8** %param_name.addr, align 8, !tbaa !1
  store i32* %pa, i32** %pa.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %param_name.addr, align 8, !tbaa !1
  %3 = load i32*, i32** %pa.addr, align 8, !tbaa !1
  %call = call i32 @param_read_int(%struct.gs_param_list_s* %1, i8* %2, i32* %3) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %4 = load i32, i32* %code, align 4, !tbaa !5
  switch i32 %4, label %sw.default.2 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  %5 = load i32*, i32** %pa.addr, align 8, !tbaa !1
  %6 = load i32, i32* %5, align 4, !tbaa !5
  switch i32 %6, label %sw.default [
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.1
    i32 4, label %sw.bb.1
  ]

sw.bb.1:                                          ; preds = %sw.bb, %sw.bb, %sw.bb
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.default:                                       ; preds = %sw.bb
  store i32 -15, i32* %code, align 4, !tbaa !5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  br label %sw.default.2

sw.default.2:                                     ; preds = %entry, %sw.epilog
  %7 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %7, i32 0, i32 0
  %8 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !73
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %8, i32 0, i32 7
  %9 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !105
  %10 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %11 = load i8*, i8** %param_name.addr, align 8, !tbaa !1
  %12 = load i32, i32* %code, align 4, !tbaa !5
  %call3 = call i32 %9(%struct.gs_param_list_s* %10, i8* %11, i32 %12) #5
  br label %sw.bb.4

sw.bb.4:                                          ; preds = %entry, %sw.default.2
  br label %sw.epilog.5

sw.epilog.5:                                      ; preds = %sw.bb.4
  %13 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.5, %sw.bb.1
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare i32 @param_read_long(%struct.gs_param_list_s*, i8*, i64*) #2

; Function Attrs: nounwind uwtable
define internal i32 @param_check_bytes(%struct.gs_param_list_s* %plist, i8* %pname, i8* %str, i32 %size, i32 %is_defined) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pname.addr = alloca i8*, align 8
  %str.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %is_defined.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %new_value = alloca %struct.gs_param_string_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pname, i8** %pname.addr, align 8, !tbaa !1
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %is_defined, i32* %is_defined.addr, align 4, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.gs_param_string_s* %new_value to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #1
  %2 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %call = call i32 @param_read_string(%struct.gs_param_list_s* %2, i8* %3, %struct.gs_param_string_s* %new_value) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  switch i32 %call, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %entry
  %4 = load i32, i32* %is_defined.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb
  %size1 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %new_value, i32 0, i32 1
  %5 = load i32, i32* %size1, align 4, !tbaa !33
  %6 = load i32, i32* %size.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %5, %6
  br i1 %cmp, label %land.lhs.true.2, label %if.end

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %7 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %new_value, i32 0, i32 0
  %8 = load i8*, i8** %data, align 8, !tbaa !31
  %9 = load i32, i32* %size.addr, align 4, !tbaa !5
  %conv = zext i32 %9 to i64
  %call3 = call i32 @memcmp(i8* %7, i8* %8, i64 %conv) #6
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.2
  br label %sw.epilog

if.end:                                           ; preds = %land.lhs.true.2, %land.lhs.true, %sw.bb
  store i32 -15, i32* %code, align 4, !tbaa !5
  br label %e

sw.default:                                       ; preds = %entry
  %10 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %11 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %call5 = call i32 @param_read_null(%struct.gs_param_list_s* %10, i8* %11) #5
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %sw.default
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %sw.default
  br label %e

e:                                                ; preds = %if.end.9, %if.end
  %12 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %12, i32 0, i32 0
  %13 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !73
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %13, i32 0, i32 7
  %14 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !105
  %15 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %16 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %17 = load i32, i32* %code, align 4, !tbaa !5
  %call10 = call i32 %14(%struct.gs_param_list_s* %15, i8* %16, i32 %17) #5
  br label %sw.bb.11

sw.bb.11:                                         ; preds = %entry, %e
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.11, %if.then
  %18 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then.8
  %19 = bitcast %struct.gs_param_string_s* %new_value to i8*
  call void @llvm.lifetime.end(i64 16, i8* %19) #1
  %20 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @param_check_bool(%struct.gs_param_list_s* %plist, i8* %pname, i32 %value, i32 %is_defined) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pname.addr = alloca i8*, align 8
  %value.addr = alloca i32, align 4
  %is_defined.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %new_value = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pname, i8** %pname.addr, align 8, !tbaa !1
  store i32 %value, i32* %value.addr, align 4, !tbaa !5
  store i32 %is_defined, i32* %is_defined.addr, align 4, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %new_value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %call = call i32 @param_read_bool(%struct.gs_param_list_s* %2, i8* %3, i32* %new_value) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  switch i32 %call, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %entry
  %4 = load i32, i32* %is_defined.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb
  %5 = load i32, i32* %new_value, align 4, !tbaa !5
  %6 = load i32, i32* %value.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %5, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %sw.epilog

if.end:                                           ; preds = %land.lhs.true, %sw.bb
  store i32 -15, i32* %code, align 4, !tbaa !5
  br label %e

sw.default:                                       ; preds = %entry
  %7 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %8 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %call1 = call i32 @param_read_null(%struct.gs_param_list_s* %7, i8* %8) #5
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %sw.default
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %sw.default
  br label %e

e:                                                ; preds = %if.end.4, %if.end
  %9 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %9, i32 0, i32 0
  %10 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !73
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %10, i32 0, i32 7
  %11 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !105
  %12 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %13 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %14 = load i32, i32* %code, align 4, !tbaa !5
  %call5 = call i32 %11(%struct.gs_param_list_s* %12, i8* %13, i32 %14) #5
  br label %sw.bb.6

sw.bb.6:                                          ; preds = %entry, %e
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.6, %if.then
  %15 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then.3
  %16 = bitcast i32* %new_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %17 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  %18 = load i32, i32* %retval
  ret i32 %18
}

declare i32 @param_read_name_array(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_array_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @param_check_long(%struct.gs_param_list_s* %plist, i8* %pname, i64 %value, i32 %is_defined) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pname.addr = alloca i8*, align 8
  %value.addr = alloca i64, align 8
  %is_defined.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %new_value = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %pname, i8** %pname.addr, align 8, !tbaa !1
  store i64 %value, i64* %value.addr, align 8, !tbaa !72
  store i32 %is_defined, i32* %is_defined.addr, align 4, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i64* %new_value to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %call = call i32 @param_read_long(%struct.gs_param_list_s* %2, i8* %3, i64* %new_value) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  switch i32 %call, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %entry
  %4 = load i32, i32* %is_defined.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb
  %5 = load i64, i64* %new_value, align 8, !tbaa !72
  %6 = load i64, i64* %value.addr, align 8, !tbaa !72
  %cmp = icmp eq i64 %5, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %sw.epilog

if.end:                                           ; preds = %land.lhs.true, %sw.bb
  store i32 -15, i32* %code, align 4, !tbaa !5
  br label %e

sw.default:                                       ; preds = %entry
  %7 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %8 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %call1 = call i32 @param_read_null(%struct.gs_param_list_s* %7, i8* %8) #5
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %sw.default
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %sw.default
  br label %e

e:                                                ; preds = %if.end.4, %if.end
  %9 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %9, i32 0, i32 0
  %10 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !73
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %10, i32 0, i32 7
  %11 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !105
  %12 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %13 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %14 = load i32, i32* %code, align 4, !tbaa !5
  %call5 = call i32 %11(%struct.gs_param_list_s* %12, i8* %13, i32 %14) #5
  br label %sw.bb.6

sw.bb.6:                                          ; preds = %entry, %e
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.6, %if.then
  %15 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then.3
  %16 = bitcast i64* %new_value to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  %18 = load i32, i32* %retval
  ret i32 %18
}

declare i32 @gs_closedevice(%struct.gx_device_s*) #2

declare void @gx_device_set_resolution(%struct.gx_device_s*, double, double) #2

declare void @gx_device_set_width_height(%struct.gx_device_s*, i32, i32) #2

declare void @gx_device_set_media_size(%struct.gx_device_s*, double, double) #2

; Function Attrs: nounwind uwtable
define internal i32 @param_normalize_anti_alias_bits(i32 %max_gray, i32 %bits) #0 {
entry:
  %max_gray.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  %max_bits = alloca i32, align 4
  store i32 %max_gray, i32* %max_gray.addr, align 4, !tbaa !5
  store i32 %bits, i32* %bits.addr, align 4, !tbaa !5
  %0 = bitcast i32* %max_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %max_gray.addr, align 4, !tbaa !5
  %add = add i32 %1, 1
  %call = call i32 @ilog2(i32 %add) #5
  store i32 %call, i32* %max_bits, align 4, !tbaa !5
  %2 = load i32, i32* %bits.addr, align 4, !tbaa !5
  %3 = load i32, i32* %max_bits, align 4, !tbaa !5
  %cmp = icmp sgt i32 %2, %3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load i32, i32* %max_bits, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load i32, i32* %bits.addr, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ %5, %cond.false ]
  %6 = bitcast i32* %max_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %6) #1
  ret i32 %cond
}

declare void @gx_device_decache_colors(%struct.gx_device_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @gx_default_put_intent(i32 %icc_intent, %struct.gx_device_s* %dev, i32 %index) #0 {
entry:
  %retval = alloca i32, align 4
  %icc_intent.addr = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %index.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %profile_struct = alloca %struct.cmm_dev_profile_s*, align 8
  %cleanup.dest.slot = alloca i32
  store i32 %icc_intent, i32* %icc_intent.addr, align 4, !tbaa !36
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %index, i32* %index.addr, align 4, !tbaa !36
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.cmm_dev_profile_s** %profile_struct to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %3 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !51
  %cmp = icmp eq i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* %3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 39
  %5 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !104
  %cmp1 = icmp eq %struct.cmm_dev_profile_s* %5, null
  br i1 %cmp1, label %if.then.2, label %if.end.7

if.then.2:                                        ; preds = %if.then
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 3
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  %call = call %struct.cmm_dev_profile_s* @gsicc_new_device_profile_array(%struct.gs_memory_s* %7) #5
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 39
  store %struct.cmm_dev_profile_s* %call, %struct.cmm_dev_profile_s** %icc_struct3, align 8, !tbaa !104
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct4 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 39
  %10 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct4, align 8, !tbaa !104
  %cmp5 = icmp eq %struct.cmm_dev_profile_s* %10, null
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then.2
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.2
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %12 = load i32, i32* %icc_intent.addr, align 4, !tbaa !36
  %13 = load i32, i32* %index.addr, align 4, !tbaa !36
  %call8 = call i32 @gsicc_set_device_profile_intent(%struct.gx_device_s* %11, i32 %12, i32 %13) #5
  store i32 %call8, i32* %code, align 4, !tbaa !5
  br label %if.end.23

if.else:                                          ; preds = %entry
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs9 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %14, i32 0, i32 42
  %get_profile10 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs9, i32 0, i32 67
  %15 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile10, align 8, !tbaa !51
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call11 = call i32 %15(%struct.gx_device_s* %16, %struct.cmm_dev_profile_s** %profile_struct) #5
  store i32 %call11, i32* %code, align 4, !tbaa !5
  %17 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %profile_struct, align 8, !tbaa !1
  %cmp12 = icmp eq %struct.cmm_dev_profile_s* %17, null
  br i1 %cmp12, label %if.then.13, label %if.end.21

if.then.13:                                       ; preds = %if.else
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory14 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 3
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory14, align 8, !tbaa !7
  %call15 = call %struct.cmm_dev_profile_s* @gsicc_new_device_profile_array(%struct.gs_memory_s* %19) #5
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct16 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 39
  store %struct.cmm_dev_profile_s* %call15, %struct.cmm_dev_profile_s** %icc_struct16, align 8, !tbaa !104
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct17 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %21, i32 0, i32 39
  %22 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct17, align 8, !tbaa !104
  %cmp18 = icmp eq %struct.cmm_dev_profile_s* %22, null
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.then.13
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.then.13
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.else
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %24 = load i32, i32* %icc_intent.addr, align 4, !tbaa !36
  %25 = load i32, i32* %index.addr, align 4, !tbaa !36
  %call22 = call i32 @gsicc_set_device_profile_intent(%struct.gx_device_s* %23, i32 %24, i32 %25) #5
  store i32 %call22, i32* %code, align 4, !tbaa !5
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.21, %if.end.7
  %26 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.23, %if.then.19, %if.then.6
  %27 = bitcast %struct.cmm_dev_profile_s** %profile_struct to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_default_put_blackptcomp(i32 %blackptcomp, %struct.gx_device_s* %dev, i32 %index) #0 {
entry:
  %retval = alloca i32, align 4
  %blackptcomp.addr = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %index.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %profile_struct = alloca %struct.cmm_dev_profile_s*, align 8
  %cleanup.dest.slot = alloca i32
  store i32 %blackptcomp, i32* %blackptcomp.addr, align 4, !tbaa !36
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %index, i32* %index.addr, align 4, !tbaa !36
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.cmm_dev_profile_s** %profile_struct to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %3 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !51
  %cmp = icmp eq i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* %3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 39
  %5 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !104
  %cmp1 = icmp eq %struct.cmm_dev_profile_s* %5, null
  br i1 %cmp1, label %if.then.2, label %if.end.7

if.then.2:                                        ; preds = %if.then
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 3
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  %call = call %struct.cmm_dev_profile_s* @gsicc_new_device_profile_array(%struct.gs_memory_s* %7) #5
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 39
  store %struct.cmm_dev_profile_s* %call, %struct.cmm_dev_profile_s** %icc_struct3, align 8, !tbaa !104
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct4 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 39
  %10 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct4, align 8, !tbaa !104
  %cmp5 = icmp eq %struct.cmm_dev_profile_s* %10, null
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then.2
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.2
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %12 = load i32, i32* %blackptcomp.addr, align 4, !tbaa !36
  %13 = load i32, i32* %index.addr, align 4, !tbaa !36
  %call8 = call i32 @gsicc_set_device_blackptcomp(%struct.gx_device_s* %11, i32 %12, i32 %13) #5
  store i32 %call8, i32* %code, align 4, !tbaa !5
  br label %if.end.26

if.else:                                          ; preds = %entry
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs9 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %14, i32 0, i32 42
  %get_profile10 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs9, i32 0, i32 67
  %15 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile10, align 8, !tbaa !51
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call11 = call i32 %15(%struct.gx_device_s* %16, %struct.cmm_dev_profile_s** %profile_struct) #5
  store i32 %call11, i32* %code, align 4, !tbaa !5
  %17 = load i32, i32* %code, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %17, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.else
  %18 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.else
  %19 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %profile_struct, align 8, !tbaa !1
  %cmp15 = icmp eq %struct.cmm_dev_profile_s* %19, null
  br i1 %cmp15, label %if.then.16, label %if.end.24

if.then.16:                                       ; preds = %if.end.14
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory17 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 3
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory17, align 8, !tbaa !7
  %call18 = call %struct.cmm_dev_profile_s* @gsicc_new_device_profile_array(%struct.gs_memory_s* %21) #5
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct19 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %22, i32 0, i32 39
  store %struct.cmm_dev_profile_s* %call18, %struct.cmm_dev_profile_s** %icc_struct19, align 8, !tbaa !104
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct20 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %23, i32 0, i32 39
  %24 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct20, align 8, !tbaa !104
  %cmp21 = icmp eq %struct.cmm_dev_profile_s* %24, null
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.then.16
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %if.then.16
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end.14
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %26 = load i32, i32* %blackptcomp.addr, align 4, !tbaa !36
  %27 = load i32, i32* %index.addr, align 4, !tbaa !36
  %call25 = call i32 @gsicc_set_device_blackptcomp(%struct.gx_device_s* %25, i32 %26, i32 %27) #5
  store i32 %call25, i32* %code, align 4, !tbaa !5
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.24, %if.end.7
  %28 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.26, %if.then.22, %if.then.13, %if.then.6
  %29 = bitcast %struct.cmm_dev_profile_s** %profile_struct to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_default_put_blackpreserve(i32 %blackpreserve, %struct.gx_device_s* %dev, i32 %index) #0 {
entry:
  %retval = alloca i32, align 4
  %blackpreserve.addr = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %index.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %profile_struct = alloca %struct.cmm_dev_profile_s*, align 8
  %cleanup.dest.slot = alloca i32
  store i32 %blackpreserve, i32* %blackpreserve.addr, align 4, !tbaa !36
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %index, i32* %index.addr, align 4, !tbaa !36
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.cmm_dev_profile_s** %profile_struct to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %3 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !51
  %cmp = icmp eq i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* %3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 39
  %5 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !104
  %cmp1 = icmp eq %struct.cmm_dev_profile_s* %5, null
  br i1 %cmp1, label %if.then.2, label %if.end.7

if.then.2:                                        ; preds = %if.then
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 3
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  %call = call %struct.cmm_dev_profile_s* @gsicc_new_device_profile_array(%struct.gs_memory_s* %7) #5
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 39
  store %struct.cmm_dev_profile_s* %call, %struct.cmm_dev_profile_s** %icc_struct3, align 8, !tbaa !104
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct4 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 39
  %10 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct4, align 8, !tbaa !104
  %cmp5 = icmp eq %struct.cmm_dev_profile_s* %10, null
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then.2
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.2
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %12 = load i32, i32* %blackpreserve.addr, align 4, !tbaa !36
  %13 = load i32, i32* %index.addr, align 4, !tbaa !36
  %call8 = call i32 @gsicc_set_device_blackpreserve(%struct.gx_device_s* %11, i32 %12, i32 %13) #5
  store i32 %call8, i32* %code, align 4, !tbaa !5
  br label %if.end.26

if.else:                                          ; preds = %entry
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs9 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %14, i32 0, i32 42
  %get_profile10 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs9, i32 0, i32 67
  %15 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile10, align 8, !tbaa !51
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call11 = call i32 %15(%struct.gx_device_s* %16, %struct.cmm_dev_profile_s** %profile_struct) #5
  store i32 %call11, i32* %code, align 4, !tbaa !5
  %17 = load i32, i32* %code, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %17, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.else
  %18 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.14:                                        ; preds = %if.else
  %19 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %profile_struct, align 8, !tbaa !1
  %cmp15 = icmp eq %struct.cmm_dev_profile_s* %19, null
  br i1 %cmp15, label %if.then.16, label %if.end.24

if.then.16:                                       ; preds = %if.end.14
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory17 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 3
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory17, align 8, !tbaa !7
  %call18 = call %struct.cmm_dev_profile_s* @gsicc_new_device_profile_array(%struct.gs_memory_s* %21) #5
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct19 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %22, i32 0, i32 39
  store %struct.cmm_dev_profile_s* %call18, %struct.cmm_dev_profile_s** %icc_struct19, align 8, !tbaa !104
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct20 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %23, i32 0, i32 39
  %24 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct20, align 8, !tbaa !104
  %cmp21 = icmp eq %struct.cmm_dev_profile_s* %24, null
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.then.16
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %if.then.16
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end.14
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %26 = load i32, i32* %blackpreserve.addr, align 4, !tbaa !36
  %27 = load i32, i32* %index.addr, align 4, !tbaa !36
  %call25 = call i32 @gsicc_set_device_blackpreserve(%struct.gx_device_s* %25, i32 %26, i32 %27) #5
  store i32 %call25, i32* %code, align 4, !tbaa !5
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.24, %if.end.7
  %28 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.26, %if.then.22, %if.then.13, %if.then.6
  %29 = bitcast %struct.cmm_dev_profile_s** %profile_struct to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_default_put_graytok(i32 %graytok, %struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %graytok.addr = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  %profile_struct = alloca %struct.cmm_dev_profile_s*, align 8
  %cleanup.dest.slot = alloca i32
  store i32 %graytok, i32* %graytok.addr, align 4, !tbaa !5
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %1 = bitcast %struct.cmm_dev_profile_s** %profile_struct to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %3 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !51
  %cmp = icmp eq i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* %3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 39
  %5 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !104
  %cmp1 = icmp eq %struct.cmm_dev_profile_s* %5, null
  br i1 %cmp1, label %if.then.2, label %if.end.7

if.then.2:                                        ; preds = %if.then
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 3
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  %call = call %struct.cmm_dev_profile_s* @gsicc_new_device_profile_array(%struct.gs_memory_s* %7) #5
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 39
  store %struct.cmm_dev_profile_s* %call, %struct.cmm_dev_profile_s** %icc_struct3, align 8, !tbaa !104
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct4 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 39
  %10 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct4, align 8, !tbaa !104
  %cmp5 = icmp eq %struct.cmm_dev_profile_s* %10, null
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then.2
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.2
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %graytok.addr, align 4, !tbaa !5
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct8 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i32 0, i32 39
  %13 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct8, align 8, !tbaa !104
  %devicegraytok = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %13, i32 0, i32 5
  store i32 %11, i32* %devicegraytok, align 4, !tbaa !62
  br label %if.end.23

if.else:                                          ; preds = %entry
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs9 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %14, i32 0, i32 42
  %get_profile10 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs9, i32 0, i32 67
  %15 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile10, align 8, !tbaa !51
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call11 = call i32 %15(%struct.gx_device_s* %16, %struct.cmm_dev_profile_s** %profile_struct) #5
  store i32 %call11, i32* %code, align 4, !tbaa !5
  %17 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %profile_struct, align 8, !tbaa !1
  %cmp12 = icmp eq %struct.cmm_dev_profile_s* %17, null
  br i1 %cmp12, label %if.then.13, label %if.end.21

if.then.13:                                       ; preds = %if.else
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory14 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 3
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory14, align 8, !tbaa !7
  %call15 = call %struct.cmm_dev_profile_s* @gsicc_new_device_profile_array(%struct.gs_memory_s* %19) #5
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct16 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 39
  store %struct.cmm_dev_profile_s* %call15, %struct.cmm_dev_profile_s** %icc_struct16, align 8, !tbaa !104
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct17 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %21, i32 0, i32 39
  %22 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct17, align 8, !tbaa !104
  store %struct.cmm_dev_profile_s* %22, %struct.cmm_dev_profile_s** %profile_struct, align 8, !tbaa !1
  %23 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %profile_struct, align 8, !tbaa !1
  %cmp18 = icmp eq %struct.cmm_dev_profile_s* %23, null
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.then.13
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.then.13
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.else
  %24 = load i32, i32* %graytok.addr, align 4, !tbaa !5
  %25 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %profile_struct, align 8, !tbaa !1
  %devicegraytok22 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %25, i32 0, i32 5
  store i32 %24, i32* %devicegraytok22, align 4, !tbaa !62
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.21, %if.end.7
  %26 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.23, %if.then.19, %if.then.6
  %27 = bitcast %struct.cmm_dev_profile_s** %profile_struct to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_default_put_usefastcolor(i32 %fastcolor, %struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %fastcolor.addr = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  %profile_struct = alloca %struct.cmm_dev_profile_s*, align 8
  %cleanup.dest.slot = alloca i32
  store i32 %fastcolor, i32* %fastcolor.addr, align 4, !tbaa !5
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %1 = bitcast %struct.cmm_dev_profile_s** %profile_struct to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %3 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !51
  %cmp = icmp eq i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* %3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 39
  %5 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !104
  %cmp1 = icmp eq %struct.cmm_dev_profile_s* %5, null
  br i1 %cmp1, label %if.then.2, label %if.end.7

if.then.2:                                        ; preds = %if.then
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 3
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  %call = call %struct.cmm_dev_profile_s* @gsicc_new_device_profile_array(%struct.gs_memory_s* %7) #5
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 39
  store %struct.cmm_dev_profile_s* %call, %struct.cmm_dev_profile_s** %icc_struct3, align 8, !tbaa !104
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct4 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 39
  %10 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct4, align 8, !tbaa !104
  %cmp5 = icmp eq %struct.cmm_dev_profile_s* %10, null
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then.2
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.2
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %fastcolor.addr, align 4, !tbaa !5
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct8 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i32 0, i32 39
  %13 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct8, align 8, !tbaa !104
  %usefastcolor = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %13, i32 0, i32 8
  store i32 %11, i32* %usefastcolor, align 4, !tbaa !64
  br label %if.end.23

if.else:                                          ; preds = %entry
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs9 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %14, i32 0, i32 42
  %get_profile10 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs9, i32 0, i32 67
  %15 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile10, align 8, !tbaa !51
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call11 = call i32 %15(%struct.gx_device_s* %16, %struct.cmm_dev_profile_s** %profile_struct) #5
  store i32 %call11, i32* %code, align 4, !tbaa !5
  %17 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %profile_struct, align 8, !tbaa !1
  %cmp12 = icmp eq %struct.cmm_dev_profile_s* %17, null
  br i1 %cmp12, label %if.then.13, label %if.end.21

if.then.13:                                       ; preds = %if.else
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory14 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 3
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory14, align 8, !tbaa !7
  %call15 = call %struct.cmm_dev_profile_s* @gsicc_new_device_profile_array(%struct.gs_memory_s* %19) #5
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct16 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 39
  store %struct.cmm_dev_profile_s* %call15, %struct.cmm_dev_profile_s** %icc_struct16, align 8, !tbaa !104
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct17 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %21, i32 0, i32 39
  %22 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct17, align 8, !tbaa !104
  store %struct.cmm_dev_profile_s* %22, %struct.cmm_dev_profile_s** %profile_struct, align 8, !tbaa !1
  %23 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %profile_struct, align 8, !tbaa !1
  %cmp18 = icmp eq %struct.cmm_dev_profile_s* %23, null
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.then.13
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.then.13
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.else
  %24 = load i32, i32* %fastcolor.addr, align 4, !tbaa !5
  %25 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %profile_struct, align 8, !tbaa !1
  %usefastcolor22 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %25, i32 0, i32 8
  store i32 %24, i32* %usefastcolor22, align 4, !tbaa !64
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.21, %if.end.7
  %26 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.23, %if.then.19, %if.then.6
  %27 = bitcast %struct.cmm_dev_profile_s** %profile_struct to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_default_put_simulateoverprint(i32 %sim_overprint, %struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %sim_overprint.addr = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  %profile_struct = alloca %struct.cmm_dev_profile_s*, align 8
  %cleanup.dest.slot = alloca i32
  store i32 %sim_overprint, i32* %sim_overprint.addr, align 4, !tbaa !5
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %1 = bitcast %struct.cmm_dev_profile_s** %profile_struct to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %3 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !51
  %cmp = icmp eq i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* %3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 39
  %5 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !104
  %cmp1 = icmp eq %struct.cmm_dev_profile_s* %5, null
  br i1 %cmp1, label %if.then.2, label %if.end.7

if.then.2:                                        ; preds = %if.then
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 3
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  %call = call %struct.cmm_dev_profile_s* @gsicc_new_device_profile_array(%struct.gs_memory_s* %7) #5
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 39
  store %struct.cmm_dev_profile_s* %call, %struct.cmm_dev_profile_s** %icc_struct3, align 8, !tbaa !104
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct4 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 39
  %10 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct4, align 8, !tbaa !104
  %cmp5 = icmp eq %struct.cmm_dev_profile_s* %10, null
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then.2
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.2
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %sim_overprint.addr, align 4, !tbaa !5
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct8 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i32 0, i32 39
  %13 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct8, align 8, !tbaa !104
  %sim_overprint9 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %13, i32 0, i32 10
  store i32 %11, i32* %sim_overprint9, align 4, !tbaa !65
  br label %if.end.24

if.else:                                          ; preds = %entry
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs10 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %14, i32 0, i32 42
  %get_profile11 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs10, i32 0, i32 67
  %15 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile11, align 8, !tbaa !51
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call12 = call i32 %15(%struct.gx_device_s* %16, %struct.cmm_dev_profile_s** %profile_struct) #5
  store i32 %call12, i32* %code, align 4, !tbaa !5
  %17 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %profile_struct, align 8, !tbaa !1
  %cmp13 = icmp eq %struct.cmm_dev_profile_s* %17, null
  br i1 %cmp13, label %if.then.14, label %if.end.22

if.then.14:                                       ; preds = %if.else
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory15 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 3
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory15, align 8, !tbaa !7
  %call16 = call %struct.cmm_dev_profile_s* @gsicc_new_device_profile_array(%struct.gs_memory_s* %19) #5
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct17 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 39
  store %struct.cmm_dev_profile_s* %call16, %struct.cmm_dev_profile_s** %icc_struct17, align 8, !tbaa !104
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %21, i32 0, i32 39
  %22 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct18, align 8, !tbaa !104
  store %struct.cmm_dev_profile_s* %22, %struct.cmm_dev_profile_s** %profile_struct, align 8, !tbaa !1
  %23 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %profile_struct, align 8, !tbaa !1
  %cmp19 = icmp eq %struct.cmm_dev_profile_s* %23, null
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.then.14
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.then.14
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.else
  %24 = load i32, i32* %sim_overprint.addr, align 4, !tbaa !5
  %25 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %profile_struct, align 8, !tbaa !1
  %sim_overprint23 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %25, i32 0, i32 10
  store i32 %24, i32* %sim_overprint23, align 4, !tbaa !65
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.22, %if.end.7
  %26 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.24, %if.then.20, %if.then.6
  %27 = bitcast %struct.cmm_dev_profile_s** %profile_struct to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_default_put_graydetection(i32 %graydetection, %struct.gx_device_s* %dev) #0 {
entry:
  %graydetection.addr = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  %profile_struct = alloca %struct.cmm_dev_profile_s*, align 8
  store i32 %graydetection, i32* %graydetection.addr, align 4, !tbaa !5
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %1 = bitcast %struct.cmm_dev_profile_s** %profile_struct to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %3 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !51
  %cmp = icmp eq i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* %3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 39
  %5 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !104
  %cmp1 = icmp eq %struct.cmm_dev_profile_s* %5, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 3
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  %call = call %struct.cmm_dev_profile_s* @gsicc_new_device_profile_array(%struct.gs_memory_s* %7) #5
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 39
  store %struct.cmm_dev_profile_s* %call, %struct.cmm_dev_profile_s** %icc_struct3, align 8, !tbaa !104
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %9 = load i32, i32* %graydetection.addr, align 4, !tbaa !5
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct4 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %10, i32 0, i32 39
  %11 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct4, align 8, !tbaa !104
  %graydetection5 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %11, i32 0, i32 6
  store i32 %9, i32* %graydetection5, align 4, !tbaa !63
  %12 = load i32, i32* %graydetection.addr, align 4, !tbaa !5
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct6 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %13, i32 0, i32 39
  %14 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct6, align 8, !tbaa !104
  %pageneutralcolor = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %14, i32 0, i32 7
  store i32 %12, i32* %pageneutralcolor, align 4, !tbaa !116
  br label %if.end.19

if.else:                                          ; preds = %entry
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs7 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %15, i32 0, i32 42
  %get_profile8 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs7, i32 0, i32 67
  %16 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile8, align 8, !tbaa !51
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call9 = call i32 %16(%struct.gx_device_s* %17, %struct.cmm_dev_profile_s** %profile_struct) #5
  store i32 %call9, i32* %code, align 4, !tbaa !5
  %18 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %profile_struct, align 8, !tbaa !1
  %cmp10 = icmp eq %struct.cmm_dev_profile_s* %18, null
  br i1 %cmp10, label %if.then.11, label %if.end.16

if.then.11:                                       ; preds = %if.else
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory12 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %19, i32 0, i32 3
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory12, align 8, !tbaa !7
  %call13 = call %struct.cmm_dev_profile_s* @gsicc_new_device_profile_array(%struct.gs_memory_s* %20) #5
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct14 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %21, i32 0, i32 39
  store %struct.cmm_dev_profile_s* %call13, %struct.cmm_dev_profile_s** %icc_struct14, align 8, !tbaa !104
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct15 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %22, i32 0, i32 39
  %23 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct15, align 8, !tbaa !104
  store %struct.cmm_dev_profile_s* %23, %struct.cmm_dev_profile_s** %profile_struct, align 8, !tbaa !1
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.11, %if.else
  %24 = load i32, i32* %graydetection.addr, align 4, !tbaa !5
  %25 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %profile_struct, align 8, !tbaa !1
  %graydetection17 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %25, i32 0, i32 6
  store i32 %24, i32* %graydetection17, align 4, !tbaa !63
  %26 = load i32, i32* %graydetection.addr, align 4, !tbaa !5
  %27 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %profile_struct, align 8, !tbaa !1
  %pageneutralcolor18 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %27, i32 0, i32 7
  store i32 %26, i32* %pageneutralcolor18, align 4, !tbaa !116
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.16, %if.end
  %28 = load i32, i32* %code, align 4, !tbaa !5
  %29 = bitcast %struct.cmm_dev_profile_s** %profile_struct to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_default_put_prebandthreshold(i32 %prebandthreshold, %struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %prebandthreshold.addr = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  %profile_struct = alloca %struct.cmm_dev_profile_s*, align 8
  %cleanup.dest.slot = alloca i32
  store i32 %prebandthreshold, i32* %prebandthreshold.addr, align 4, !tbaa !5
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %1 = bitcast %struct.cmm_dev_profile_s** %profile_struct to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %3 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !51
  %cmp = icmp eq i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* %3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 39
  %5 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !104
  %cmp1 = icmp eq %struct.cmm_dev_profile_s* %5, null
  br i1 %cmp1, label %if.then.2, label %if.end.7

if.then.2:                                        ; preds = %if.then
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 3
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  %call = call %struct.cmm_dev_profile_s* @gsicc_new_device_profile_array(%struct.gs_memory_s* %7) #5
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 39
  store %struct.cmm_dev_profile_s* %call, %struct.cmm_dev_profile_s** %icc_struct3, align 8, !tbaa !104
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct4 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 39
  %10 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct4, align 8, !tbaa !104
  %cmp5 = icmp eq %struct.cmm_dev_profile_s* %10, null
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then.2
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.2
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %prebandthreshold.addr, align 4, !tbaa !5
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct8 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i32 0, i32 39
  %13 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct8, align 8, !tbaa !104
  %prebandthreshold9 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %13, i32 0, i32 12
  store i32 %11, i32* %prebandthreshold9, align 4, !tbaa !66
  br label %if.end.24

if.else:                                          ; preds = %entry
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs10 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %14, i32 0, i32 42
  %get_profile11 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs10, i32 0, i32 67
  %15 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile11, align 8, !tbaa !51
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call12 = call i32 %15(%struct.gx_device_s* %16, %struct.cmm_dev_profile_s** %profile_struct) #5
  store i32 %call12, i32* %code, align 4, !tbaa !5
  %17 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %profile_struct, align 8, !tbaa !1
  %cmp13 = icmp eq %struct.cmm_dev_profile_s* %17, null
  br i1 %cmp13, label %if.then.14, label %if.end.22

if.then.14:                                       ; preds = %if.else
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory15 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 3
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory15, align 8, !tbaa !7
  %call16 = call %struct.cmm_dev_profile_s* @gsicc_new_device_profile_array(%struct.gs_memory_s* %19) #5
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct17 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 39
  store %struct.cmm_dev_profile_s* %call16, %struct.cmm_dev_profile_s** %icc_struct17, align 8, !tbaa !104
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %icc_struct18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %21, i32 0, i32 39
  %22 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct18, align 8, !tbaa !104
  store %struct.cmm_dev_profile_s* %22, %struct.cmm_dev_profile_s** %profile_struct, align 8, !tbaa !1
  %23 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %profile_struct, align 8, !tbaa !1
  %cmp19 = icmp eq %struct.cmm_dev_profile_s* %23, null
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.then.14
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.then.14
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.else
  %24 = load i32, i32* %prebandthreshold.addr, align 4, !tbaa !5
  %25 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %profile_struct, align 8, !tbaa !1
  %prebandthreshold23 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %25, i32 0, i32 12
  store i32 %24, i32* %prebandthreshold23, align 4, !tbaa !66
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.22, %if.end.7
  %26 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.24, %if.then.20, %if.then.6
  %27 = bitcast %struct.cmm_dev_profile_s** %profile_struct to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define void @gx_device_request_leadingedge(%struct.gx_device_s* %dev, i32 %le_req) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %le_req.addr = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %le_req, i32* %le_req.addr, align 4, !tbaa !5
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %LeadingEdge = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i32 0, i32 18
  %1 = load i32, i32* %LeadingEdge, align 4, !tbaa !70
  %and = and i32 %1, -49
  %2 = load i32, i32* %le_req.addr, align 4, !tbaa !5
  %shl = shl i32 %2, 4
  %and1 = and i32 %shl, 48
  %or = or i32 %and, %and1
  %or2 = or i32 %or, 8
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %LeadingEdge3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 18
  store i32 %or2, i32* %LeadingEdge3, align 4, !tbaa !70
  ret void
}

declare i32 @gx_default_w_b_map_color_rgb(%struct.gx_device_s*, i64, i16*) #2

declare i32 @gx_default_get_profile(%struct.gx_device_s*, %struct.cmm_dev_profile_s**) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #4

declare i32 @gsicc_set_device_profile_colorants(%struct.gx_device_s*, i8*) #2

declare %struct.cmm_dev_profile_s* @gsicc_new_device_profile_array(%struct.gs_memory_s*) #2

declare i32 @gsicc_set_device_profile_intent(%struct.gx_device_s*, i32, i32) #2

declare i32 @gsicc_set_device_blackptcomp(%struct.gx_device_s*, i32, i32) #2

declare i32 @gsicc_set_device_blackpreserve(%struct.gx_device_s*, i32, i32) #2

declare i32 @ilog2(i32) #2

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind readonly }
attributes #7 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 24}
!8 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144}
!9 = !{!"rc_header_s", !10, i64 0, !2, i64 8, !2, i64 16}
!10 = !{!"long", !3, i64 0}
!11 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !12, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !13, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !10, i64 704, !6, i64 712}
!12 = !{!"short", !3, i64 0}
!13 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!14 = !{!"gx_device_cached_colors_s", !10, i64 0, !10, i64 8}
!15 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!16 = !{!"gdev_space_params_s", !10, i64 0, !10, i64 8, !17, i64 16, !6, i64 32, !3, i64 36}
!17 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !10, i64 8}
!18 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!19 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!20 = !{!21, !2, i64 8}
!21 = !{!"gs_param_list_s", !2, i64 0, !2, i64 8, !6, i64 16}
!22 = !{!8, !2, i64 1248}
!23 = !{!8, !2, i64 1296}
!24 = !{!8, !2, i64 1304}
!25 = !{!8, !2, i64 1472}
!26 = !{!8, !6, i64 100}
!27 = !{!8, !6, i64 96}
!28 = !{!8, !12, i64 108}
!29 = !{!8, !6, i64 112}
!30 = !{!8, !2, i64 16}
!31 = !{!32, !2, i64 0}
!32 = !{!"gs_param_string_s", !2, i64 0, !6, i64 8, !6, i64 12}
!33 = !{!32, !6, i64 8}
!34 = !{!32, !6, i64 12}
!35 = !{!8, !2, i64 784}
!36 = !{!3, !3, i64 0}
!37 = !{!38, !2, i64 0}
!38 = !{!"gs_param_float_array_s", !2, i64 0, !6, i64 8, !6, i64 12}
!39 = !{!38, !6, i64 8}
!40 = !{!38, !6, i64 12}
!41 = !{!42, !2, i64 0}
!42 = !{!"gs_param_string_array_s", !2, i64 0, !6, i64 8, !6, i64 12}
!43 = !{!42, !6, i64 8}
!44 = !{!42, !6, i64 12}
!45 = !{!8, !6, i64 832}
!46 = !{!8, !6, i64 836}
!47 = !{!48, !2, i64 0}
!48 = !{!"gs_param_int_array_s", !2, i64 0, !6, i64 8, !6, i64 12}
!49 = !{!48, !6, i64 8}
!50 = !{!48, !6, i64 12}
!51 = !{!8, !2, i64 1680}
!52 = !{!53, !2, i64 320}
!53 = !{!"cmm_profile_s", !3, i64 0, !3, i64 1, !6, i64 4, !6, i64 8, !3, i64 12, !3, i64 16, !54, i64 20, !10, i64 144, !6, i64 152, !3, i64 156, !6, i64 216, !6, i64 220, !6, i64 224, !55, i64 228, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !9, i64 288, !6, i64 312, !2, i64 320, !2, i64 328, !2, i64 336}
!54 = !{!"gs_range_icc_s", !3, i64 0}
!55 = !{!"gsicc_rendering_param_s", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20}
!56 = !{!55, !3, i64 0}
!57 = !{!55, !3, i64 4}
!58 = !{!55, !3, i64 8}
!59 = !{!60, !2, i64 32}
!60 = !{!"cmm_dev_profile_s", !3, i64 0, !2, i64 32, !2, i64 40, !2, i64 48, !3, i64 56, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !2, i64 176, !6, i64 184, !2, i64 192, !9, i64 200}
!61 = !{!60, !2, i64 40}
!62 = !{!60, !6, i64 152}
!63 = !{!60, !6, i64 156}
!64 = !{!60, !6, i64 164}
!65 = !{!60, !6, i64 172}
!66 = !{!60, !6, i64 184}
!67 = !{!60, !2, i64 176}
!68 = !{!8, !6, i64 880}
!69 = !{!8, !6, i64 948}
!70 = !{!8, !6, i64 852}
!71 = !{!8, !6, i64 116}
!72 = !{!10, !10, i64 0}
!73 = !{!21, !2, i64 0}
!74 = !{!75, !2, i64 40}
!75 = !{!"gs_param_list_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64}
!76 = !{!8, !2, i64 1192}
!77 = !{!12, !12, i64 0}
!78 = !{!79, !6, i64 8}
!79 = !{!"gs_param_collection_s", !2, i64 0, !6, i64 8}
!80 = !{!75, !2, i64 8}
!81 = !{!79, !2, i64 0}
!82 = !{!83, !83, i64 0}
!83 = !{!"float", !3, i64 0}
!84 = !{!85, !2, i64 16}
!85 = !{!"gdev_input_media_s", !3, i64 0, !2, i64 16, !83, i64 24, !2, i64 32}
!86 = !{!85, !83, i64 24}
!87 = !{!85, !2, i64 32}
!88 = !{!75, !2, i64 16}
!89 = !{!90, !90, i64 0}
!90 = !{!"double", !3, i64 0}
!91 = !{!92, !2, i64 0}
!92 = !{!"gdev_output_media_s", !2, i64 0}
!93 = !{!8, !6, i64 84}
!94 = !{!8, !2, i64 1256}
!95 = !{!8, !6, i64 944}
!96 = !{!8, !6, i64 952}
!97 = !{!8, !6, i64 956}
!98 = !{!8, !6, i64 960}
!99 = !{!8, !6, i64 128}
!100 = !{!8, !6, i64 132}
!101 = !{!8, !6, i64 1052}
!102 = !{!8, !6, i64 1056}
!103 = !{i64 0, i64 8, !72, i64 8, i64 8, !72, i64 16, i64 4, !5, i64 20, i64 4, !5, i64 24, i64 8, !72, i64 32, i64 4, !5, i64 36, i64 4, !36}
!104 = !{!8, !2, i64 1104}
!105 = !{!75, !2, i64 56}
!106 = !{!16, !6, i64 32}
!107 = !{!16, !10, i64 8}
!108 = !{!16, !6, i64 16}
!109 = !{!16, !6, i64 20}
!110 = !{!16, !10, i64 24}
!111 = !{!75, !2, i64 64}
!112 = !{!113, !2, i64 64}
!113 = !{!"gs_memory_s", !2, i64 0, !114, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!114 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!115 = !{!113, !2, i64 24}
!116 = !{!60, !6, i64 160}
