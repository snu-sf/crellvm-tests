; ModuleID = './gdevmpla.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_device_color_type_s = type { %struct.gs_memory_struct_type_s*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* }
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
%struct.gx_io_device_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.gx_device_color_s = type { %struct.gx_device_color_type_s*, %union._c, %struct.gs_int_point_s, i32, %struct.gs_client_color_s, %struct._mask }
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
%struct.gx_device_halftone_s = type opaque
%struct.gs_int_point_s = type { i32, i32 }
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64 }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.gs_pattern_type_s = type { i32, %struct.pp_ }
%struct.pp_ = type { i32 (%struct.gs_pattern_template_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_pattern_template_s*, %struct.gs_matrix_s*, %struct.gs_state_s*, %struct.gs_memory_s*)*, %struct.gs_pattern_template_s* (%struct.gs_pattern_instance_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_state_s*)* }
%struct.gs_pattern_template_s = type { %struct.gs_pattern_type_s*, i32, %struct.gs_uid_s, i8* }
%struct.gs_uid_s = type { i64, i64* }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, {}*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.stream_s = type opaque
%struct.gsicc_link_s = type { i8*, %struct.gscms_procs_s, %struct.gsicc_hashlink_s, %struct.gsicc_link_cache_s*, i32, %struct.gsicc_link_s*, %struct.gx_semaphore_s*, i32, i32, i32, i32, i32, i32, %struct.gscms_procs_s, i32, i32, i32 }
%struct.gsicc_hashlink_s = type { i64, i64, i64, i64 }
%struct.gsicc_link_cache_s = type { %struct.gsicc_link_s*, i32, %struct.rc_header_s, %struct.gs_memory_s*, %struct.gx_monitor_s*, %struct.gx_semaphore_s*, i32 }
%struct.gx_monitor_s = type { %struct.gs_memory_s*, %union.gp_monitor }
%union.gp_monitor = type { i8* }
%struct.gx_semaphore_s = type { %struct.gs_memory_s*, %union.gp_semaphore }
%union.gp_semaphore = type { i8* }
%struct.gscms_procs_s = type { void (%struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s*, i8*, i8*)*, void (%struct.gx_device_s*, %struct.gsicc_link_s*, i8*, i8*, i32)*, void (%struct.gsicc_link_s*)*, i32 (i8*, i32)* }
%struct.gsicc_bufferdesc_s = type { i8, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.client_color_space_data_s = type { void (%struct.gs_color_space_s*, i32)* }
%struct.cmm_profile_s = type { i8, i8, i32, i32, i32, i32, %struct.gs_range_icc_s, i64, i32, [15 x i32], i32, i32, i32, %struct.gsicc_rendering_param_s, i8*, %struct.gx_device_s*, %struct.gsicc_namelist_s*, i8*, %struct.rc_header_s, i32, i8*, %struct.gs_memory_s*, %struct.gx_monitor_s* }
%struct.gs_range_icc_s = type { [15 x %struct.gs_range_s] }
%struct.gs_range_s = type { float, float }
%struct.gsicc_rendering_param_s = type { i32, i32, i32, i32, i32, i32 }
%struct.gsicc_namelist_s = type { i32, %struct.gsicc_colorname_s*, i8*, %struct.gs_devicen_color_map_s*, i32 }
%struct.gsicc_colorname_s = type { i8*, i32, %struct.gsicc_colorname_s* }
%struct.gs_devicen_color_map_s = type opaque
%union.anon = type { %struct.gs_device_n_params_s }
%struct.gs_device_n_params_s = type { i64*, i32, %struct.gs_device_n_map_s*, %struct.gs_device_n_attributes_s*, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.gs_device_n_map_s = type opaque
%struct.gs_device_n_attributes_s = type opaque
%struct.gs_imager_state_s = type opaque
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, {}*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_color_info_s = type { i32, i32, i32, i16, i8, i32, i32, i32, i32, %struct.gx_device_anti_alias_info_s, i32, [64 x i8], [64 x i8], [64 x i64], i8*, i32, i64, i32 }
%struct.gx_device_anti_alias_info_s = type { i32, i32 }
%struct.gx_device_cached_colors_s = type { i64, i64 }
%struct.gx_stroked_gradient_recognizer_s = type { i32, [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s] }
%struct.gs_fixed_point_s = type { i32, i32 }
%struct.gdev_space_params_s = type { i64, i64, %struct.gx_band_params_s, i32, i32 }
%struct.gx_band_params_s = type { i32, i32, i64 }
%struct.cmm_dev_profile_s = type { [4 x %struct.cmm_profile_s*], %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, [4 x %struct.gsicc_rendering_param_s], i32, i32, i32, i32, i32, i32, %struct.gsicc_namelist_s*, i32, %struct.gs_memory_s*, %struct.rc_header_s }
%struct.gx_page_device_procs_s = type { i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
%struct.gx_tile_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16 }
%struct.gx_xfont_procs_s = type opaque
%struct.gx_path_s = type opaque
%struct.gx_fill_params_s = type opaque
%struct.gx_clip_path_s = type opaque
%struct.gx_stroke_params_s = type opaque
%struct.gs_fixed_edge_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image1_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, i32, i32, i32 }
%struct.gx_image_type_s = type opaque
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gx_image_enum_common_s = type opaque
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.gs_get_bits_params_s = type { i64, [64 x i8*], i32, i32, i32 }
%struct.gs_composite_s = type opaque
%struct.gs_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32 }
%struct.gs_param_list_procs_s = type { i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)*, i32 (%struct.gs_param_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*)* }
%struct.gs_param_typed_value_s = type { %union.gs_param_value_s, i32 }
%union.gs_param_value_s = type { %struct.gs_param_string_s }
%struct.gs_param_string_s = type { i8*, i32, i32 }
%struct.gs_param_collection_s = type { %struct.gs_param_list_s*, i32 }
%union.gs_param_enumerator_s = type { i64 }
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
%struct.gs_state_s = type opaque
%struct.gs_paint_color_s = type { [64 x float] }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type { i64, i32, %struct.gs_uid_s, i32, i32, %struct.gs_matrix_s, %struct.gs_rect_s, %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s, %struct.gx_pattern_trans_s*, %union.gx_device_clist_s*, i8, i8, i8, [2 x i8], i32, i32, i32 }
%struct.gx_pattern_trans_s = type { %struct.gx_device_s*, i8*, %struct.gs_memory_s*, %struct.gx_pattern_trans_s*, %struct.gs_int_rect_s, i32, i32, i32, i32, i32, i32, %struct.pdf14_nonseparable_blending_procs_s*, i32, i32, %struct.gs_int_rect_s*, void (i32, i32, i32, i32, i32, i32, %struct.gx_color_tile_s*, %struct.gx_pattern_trans_s*)*, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* }
%struct.pdf14_nonseparable_blending_procs_s = type { void (i32, i8*, i8*, i8*)*, void (i32, i8*, i8*, i8*)* }
%struct.gx_image_enum_s = type opaque
%union.gx_device_clist_s = type opaque
%struct.gx_device_color_saved_s = type { %struct.gx_device_color_type_s*, %union._svc, %struct.gs_int_point_s }
%union._svc = type { %struct._svbin, [304 x i8] }
%struct._svbin = type { [2 x i64], i32, i32 }
%struct.gx_rop_source_s = type { i8*, i32, i32, i64, [2 x i64], i32, i32 }
%struct.gx_device_memory_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, i32, i8*, %struct.gs_memory_s*, i32, %struct.gs_memory_s*, i32, [64 x %struct.gx_render_plane_s], %struct.gs_matrix_s, i8**, %struct.gs_const_string_s, %struct._c24, %struct._c40, %struct._c48, %struct._c56, %struct._c64, %struct.gs_log2_scale_point_s, i32, i32, i32, i32, i32, i64, %struct.gx_device_color_s*, i32, i32 }
%struct.gx_render_plane_s = type { i32, i32, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%struct._c24 = type { i64, i32, i32, i32 }
%struct._c40 = type { i64, i32, i32, i32, i32, i32 }
%struct._c48 = type { i64, i32, i32, i32 }
%struct._c56 = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct._c64 = type { i64, i32, i32 }
%struct.mem_save_params_s = type { i32, i8*, i8** }
%struct._devn = type { [64 x i16] }
%union.b_ = type { [100 x i64] }
%union.b_.1 = type { [100 x i64] }
%union.b_.2 = type { [100 x i64] }
%union.b_.3 = type { [100 x i64] }

@gx_dc_type_data_devn = external constant %struct.gx_device_color_type_s, align 8
@gx_dc_devn_masked = external constant %struct.gx_device_color_type_s, align 8
@expand_4to1 = internal global [256 x i32] [i32 0, i32 1, i32 256, i32 257, i32 65536, i32 65537, i32 65792, i32 65793, i32 16777216, i32 16777217, i32 16777472, i32 16777473, i32 16842752, i32 16842753, i32 16843008, i32 16843009, i32 2, i32 3, i32 258, i32 259, i32 65538, i32 65539, i32 65794, i32 65795, i32 16777218, i32 16777219, i32 16777474, i32 16777475, i32 16842754, i32 16842755, i32 16843010, i32 16843011, i32 512, i32 513, i32 768, i32 769, i32 66048, i32 66049, i32 66304, i32 66305, i32 16777728, i32 16777729, i32 16777984, i32 16777985, i32 16843264, i32 16843265, i32 16843520, i32 16843521, i32 514, i32 515, i32 770, i32 771, i32 66050, i32 66051, i32 66306, i32 66307, i32 16777730, i32 16777731, i32 16777986, i32 16777987, i32 16843266, i32 16843267, i32 16843522, i32 16843523, i32 131072, i32 131073, i32 131328, i32 131329, i32 196608, i32 196609, i32 196864, i32 196865, i32 16908288, i32 16908289, i32 16908544, i32 16908545, i32 16973824, i32 16973825, i32 16974080, i32 16974081, i32 131074, i32 131075, i32 131330, i32 131331, i32 196610, i32 196611, i32 196866, i32 196867, i32 16908290, i32 16908291, i32 16908546, i32 16908547, i32 16973826, i32 16973827, i32 16974082, i32 16974083, i32 131584, i32 131585, i32 131840, i32 131841, i32 197120, i32 197121, i32 197376, i32 197377, i32 16908800, i32 16908801, i32 16909056, i32 16909057, i32 16974336, i32 16974337, i32 16974592, i32 16974593, i32 131586, i32 131587, i32 131842, i32 131843, i32 197122, i32 197123, i32 197378, i32 197379, i32 16908802, i32 16908803, i32 16909058, i32 16909059, i32 16974338, i32 16974339, i32 16974594, i32 16974595, i32 33554432, i32 33554433, i32 33554688, i32 33554689, i32 33619968, i32 33619969, i32 33620224, i32 33620225, i32 50331648, i32 50331649, i32 50331904, i32 50331905, i32 50397184, i32 50397185, i32 50397440, i32 50397441, i32 33554434, i32 33554435, i32 33554690, i32 33554691, i32 33619970, i32 33619971, i32 33620226, i32 33620227, i32 50331650, i32 50331651, i32 50331906, i32 50331907, i32 50397186, i32 50397187, i32 50397442, i32 50397443, i32 33554944, i32 33554945, i32 33555200, i32 33555201, i32 33620480, i32 33620481, i32 33620736, i32 33620737, i32 50332160, i32 50332161, i32 50332416, i32 50332417, i32 50397696, i32 50397697, i32 50397952, i32 50397953, i32 33554946, i32 33554947, i32 33555202, i32 33555203, i32 33620482, i32 33620483, i32 33620738, i32 33620739, i32 50332162, i32 50332163, i32 50332418, i32 50332419, i32 50397698, i32 50397699, i32 50397954, i32 50397955, i32 33685504, i32 33685505, i32 33685760, i32 33685761, i32 33751040, i32 33751041, i32 33751296, i32 33751297, i32 50462720, i32 50462721, i32 50462976, i32 50462977, i32 50528256, i32 50528257, i32 50528512, i32 50528513, i32 33685506, i32 33685507, i32 33685762, i32 33685763, i32 33751042, i32 33751043, i32 33751298, i32 33751299, i32 50462722, i32 50462723, i32 50462978, i32 50462979, i32 50528258, i32 50528259, i32 50528514, i32 50528515, i32 33686016, i32 33686017, i32 33686272, i32 33686273, i32 33751552, i32 33751553, i32 33751808, i32 33751809, i32 50463232, i32 50463233, i32 50463488, i32 50463489, i32 50528768, i32 50528769, i32 50529024, i32 50529025, i32 33686018, i32 33686019, i32 33686274, i32 33686275, i32 33751554, i32 33751555, i32 33751810, i32 33751811, i32 50463234, i32 50463235, i32 50463490, i32 50463491, i32 50528770, i32 50528771, i32 50529026, i32 50529027], align 16
@.str = private unnamed_addr constant [31 x i8] c"mem_planar_strip_copy_rop(buf)\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"mem_planar_strip_copy_rop(line_ptrs)\00", align 1
@cmykrop = internal global [256 x i8] c"\FF\7F\BF?\DF_\9F\1F\EFo\AF/\CFO\8F\0F\F7w\B77\D7W\97\17\E7g\A7'\C7G\87\07\FB{\BB;\DB[\9B\1B\EBk\AB+\CBK\8B\0B\F3s\B33\D3S\93\13\E3c\A3#\C3C\83\03\FD}\BD=\DD]\9D\1D\EDm\AD-\CDM\8D\0D\F5u\B55\D5U\95\15\E5e\A5%\C5E\85\05\F9y\B99\D9Y\99\19\E9i\A9)\C9I\89\09\F1q\B11\D1Q\91\11\E1a\A1!\C1A\81\01\FE~\BE>\DE^\9E\1E\EEn\AE.\CEN\8E\0E\F6v\B66\D6V\96\16\E6f\A6&\C6F\86\06\FAz\BA:\DAZ\9A\1A\EAj\AA*\CAJ\8A\0A\F2r\B22\D2R\92\12\E2b\A2\22\C2B\82\02\FC|\BC<\DC\5C\9C\1C\ECl\AC,\CCL\8C\0C\F4t\B44\D4T\94\14\E4d\A4$\C4D\84\04\F8x\B88\D8X\98\18\E8h\A8(\C8H\88\08\F0p\B00\D0P\90\10\E0`\A0 \C0@\80\00", align 16
@rop_proc_table = external constant [256 x i64 (i64, i64, i64)*], align 16

; Function Attrs: nounwind uwtable
define i32 @gdev_mem_set_planar(%struct.gx_device_memory_s* %mdev, i32 %num_planes, %struct.gx_render_plane_s* %planes) #0 {
entry:
  %retval = alloca i32, align 4
  %mdev.addr = alloca %struct.gx_device_memory_s*, align 8
  %num_planes.addr = alloca i32, align 4
  %planes.addr = alloca %struct.gx_render_plane_s*, align 8
  %total_depth = alloca i32, align 4
  %same_depth = alloca i32, align 4
  %covered = alloca i64, align 8
  %pi = alloca i32, align 4
  %mdproto = alloca %struct.gx_device_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  %shift = alloca i32, align 4
  %plane_depth = alloca i32, align 4
  %mask = alloca i64, align 8
  store %struct.gx_device_memory_s* %mdev, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  store i32 %num_planes, i32* %num_planes.addr, align 4, !tbaa !5
  store %struct.gx_render_plane_s* %planes, %struct.gx_render_plane_s** %planes.addr, align 8, !tbaa !1
  %0 = bitcast i32* %total_depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %same_depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gx_render_plane_s*, %struct.gx_render_plane_s** %planes.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %2, i64 0
  %depth = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %arrayidx, i32 0, i32 0
  %3 = load i32, i32* %depth, align 4, !tbaa !7
  store i32 %3, i32* %same_depth, align 4, !tbaa !5
  %4 = bitcast i64* %covered to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i64 0, i64* %covered, align 8, !tbaa !9
  %5 = bitcast i32* %pi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast %struct.gx_device_memory_s** %mdproto to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %7, i32 0, i32 11
  %depth1 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %8 = load i16, i16* %depth1, align 2, !tbaa !11
  %conv = zext i16 %8 to i32
  %call = call %struct.gx_device_memory_s* @gdev_mem_device_for_bits(i32 %conv) #4
  store %struct.gx_device_memory_s* %call, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %9 = load i32, i32* %num_planes.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %9, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %10 = load i32, i32* %num_planes.addr, align 4, !tbaa !5
  %cmp3 = icmp sgt i32 %10, 64
  br i1 %cmp3, label %if.then, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false
  %11 = load i32, i32* %num_planes.addr, align 4, !tbaa !5
  %12 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %color_info6 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %12, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info6, i32 0, i32 1
  %13 = load i32, i32* %num_components, align 4, !tbaa !32
  %cmp7 = icmp ne i32 %11, %13
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.5, %lor.lhs.false, %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.217

if.end:                                           ; preds = %lor.lhs.false.5
  store i32 0, i32* %pi, align 4, !tbaa !5
  store i32 0, i32* %total_depth, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %14 = load i32, i32* %pi, align 4, !tbaa !5
  %15 = load i32, i32* %num_planes.addr, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %14, %15
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load i32, i32* %pi, align 4, !tbaa !5
  %idxprom = sext i32 %17 to i64
  %18 = load %struct.gx_render_plane_s*, %struct.gx_render_plane_s** %planes.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %18, i64 %idxprom
  %shift12 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %arrayidx11, i32 0, i32 1
  %19 = load i32, i32* %shift12, align 4, !tbaa !33
  store i32 %19, i32* %shift, align 4, !tbaa !5
  %20 = bitcast i32* %plane_depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = load i32, i32* %pi, align 4, !tbaa !5
  %idxprom13 = sext i32 %21 to i64
  %22 = load %struct.gx_render_plane_s*, %struct.gx_render_plane_s** %planes.addr, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %22, i64 %idxprom13
  %depth15 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %arrayidx14, i32 0, i32 0
  %23 = load i32, i32* %depth15, align 4, !tbaa !7
  store i32 %23, i32* %plane_depth, align 4, !tbaa !5
  %24 = bitcast i64* %mask to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  %25 = load i32, i32* %shift, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %25, 0
  br i1 %cmp16, label %if.then.23, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %for.body
  %26 = load i32, i32* %plane_depth, align 4, !tbaa !5
  %cmp19 = icmp sgt i32 %26, 16
  br i1 %cmp19, label %if.then.23, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %lor.lhs.false.18
  %27 = load i32, i32* %plane_depth, align 4, !tbaa !5
  %call22 = call %struct.gx_device_memory_s* @gdev_mem_device_for_bits(i32 %27) #4
  %tobool = icmp ne %struct.gx_device_memory_s* %call22, null
  br i1 %tobool, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %lor.lhs.false.21, %lor.lhs.false.18, %for.body
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %lor.lhs.false.21
  %28 = load i32, i32* %shift, align 4, !tbaa !5
  %conv25 = sext i32 %28 to i64
  %cmp26 = icmp ult i64 %conv25, 64
  br i1 %cmp26, label %if.then.28, label %if.end.34

if.then.28:                                       ; preds = %if.end.24
  %29 = load i32, i32* %plane_depth, align 4, !tbaa !5
  %sh_prom = zext i32 %29 to i64
  %shl = shl i64 1, %sh_prom
  %sub = sub i64 %shl, 1
  %30 = load i32, i32* %shift, align 4, !tbaa !5
  %sh_prom29 = zext i32 %30 to i64
  %shl30 = shl i64 %sub, %sh_prom29
  store i64 %shl30, i64* %mask, align 8, !tbaa !9
  %31 = load i64, i64* %covered, align 8, !tbaa !9
  %32 = load i64, i64* %mask, align 8, !tbaa !9
  %and = and i64 %31, %32
  %tobool31 = icmp ne i64 %and, 0
  br i1 %tobool31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.then.28
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.33:                                        ; preds = %if.then.28
  %33 = load i64, i64* %mask, align 8, !tbaa !9
  %34 = load i64, i64* %covered, align 8, !tbaa !9
  %or = or i64 %34, %33
  store i64 %or, i64* %covered, align 8, !tbaa !9
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.end.24
  %35 = load i32, i32* %plane_depth, align 4, !tbaa !5
  %36 = load i32, i32* %same_depth, align 4, !tbaa !5
  %cmp35 = icmp ne i32 %35, %36
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.34
  store i32 0, i32* %same_depth, align 4, !tbaa !5
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.end.34
  %37 = load i32, i32* %plane_depth, align 4, !tbaa !5
  %38 = load i32, i32* %total_depth, align 4, !tbaa !5
  %add = add nsw i32 %38, %37
  store i32 %add, i32* %total_depth, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.38, %if.then.32, %if.then.23
  %39 = bitcast i64* %mask to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast i32* %plane_depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.217 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %42 = load i32, i32* %pi, align 4, !tbaa !5
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %pi, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %43 = load i32, i32* %total_depth, align 4, !tbaa !5
  %44 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %color_info41 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %44, i32 0, i32 11
  %depth42 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info41, i32 0, i32 3
  %45 = load i16, i16* %depth42, align 2, !tbaa !11
  %conv43 = zext i16 %45 to i32
  %cmp44 = icmp sgt i32 %43, %conv43
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %for.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.217

if.end.47:                                        ; preds = %for.end
  %46 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %is_planar = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %46, i32 0, i32 17
  store i32 1, i32* %is_planar, align 4, !tbaa !34
  %47 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %planes48 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %47, i32 0, i32 50
  %arraydecay = getelementptr inbounds [64 x %struct.gx_render_plane_s], [64 x %struct.gx_render_plane_s]* %planes48, i32 0, i32 0
  %48 = bitcast %struct.gx_render_plane_s* %arraydecay to i8*
  %49 = load %struct.gx_render_plane_s*, %struct.gx_render_plane_s** %planes.addr, align 8, !tbaa !1
  %50 = bitcast %struct.gx_render_plane_s* %49 to i8*
  %51 = load i32, i32* %num_planes.addr, align 4, !tbaa !5
  %conv49 = sext i32 %51 to i64
  %mul = mul i64 %conv49, 12
  %call50 = call i8* @memcpy(i8* %48, i8* %50, i64 %mul) #5
  %52 = load i32, i32* %same_depth, align 4, !tbaa !5
  %53 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %plane_depth51 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %53, i32 0, i32 67
  store i32 %52, i32* %plane_depth51, align 4, !tbaa !35
  %54 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %54, i32 0, i32 42
  %open_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 0
  store i32 (%struct.gx_device_s*)* @mem_planar_open, i32 (%struct.gx_device_s*)** %open_device, align 8, !tbaa !36
  %55 = load i32, i32* %num_planes.addr, align 4, !tbaa !5
  %cmp52 = icmp eq i32 %55, 1
  br i1 %cmp52, label %if.then.54, label %if.else

if.then.54:                                       ; preds = %if.end.47
  %56 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %procs55 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %56, i32 0, i32 42
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs55, i32 0, i32 7
  %57 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8, !tbaa !37
  %58 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %procs56 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %58, i32 0, i32 42
  %fill_rectangle57 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs56, i32 0, i32 7
  store i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* %57, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle57, align 8, !tbaa !37
  %59 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %procs58 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %59, i32 0, i32 42
  %copy_mono = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs58, i32 0, i32 9
  %60 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono, align 8, !tbaa !38
  %61 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %procs59 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %61, i32 0, i32 42
  %copy_mono60 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs59, i32 0, i32 9
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* %60, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono60, align 8, !tbaa !38
  %62 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %procs61 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %62, i32 0, i32 42
  %copy_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs61, i32 0, i32 10
  %63 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %copy_color, align 8, !tbaa !39
  %64 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %procs62 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %64, i32 0, i32 42
  %copy_color63 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs62, i32 0, i32 10
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* %63, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %copy_color63, align 8, !tbaa !39
  %65 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %procs64 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %65, i32 0, i32 42
  %copy_alpha = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs64, i32 0, i32 21
  %66 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)** %copy_alpha, align 8, !tbaa !40
  %67 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %procs65 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %67, i32 0, i32 42
  %copy_alpha66 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs65, i32 0, i32 21
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* %66, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)** %copy_alpha66, align 8, !tbaa !40
  %68 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %procs67 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %68, i32 0, i32 42
  %strip_tile_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs67, i32 0, i32 34
  %69 = load i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)** %strip_tile_rectangle, align 8, !tbaa !41
  %70 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %procs68 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %70, i32 0, i32 42
  %strip_tile_rectangle69 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs68, i32 0, i32 34
  store i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* %69, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)** %strip_tile_rectangle69, align 8, !tbaa !41
  %71 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %procs70 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %71, i32 0, i32 42
  %strip_copy_rop = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs70, i32 0, i32 35
  %72 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)** %strip_copy_rop, align 8, !tbaa !42
  %73 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %procs71 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %73, i32 0, i32 42
  %strip_copy_rop72 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs71, i32 0, i32 35
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* %72, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)** %strip_copy_rop72, align 8, !tbaa !42
  %74 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %procs73 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %74, i32 0, i32 42
  %strip_copy_rop2 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs73, i32 0, i32 69
  %75 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)** %strip_copy_rop2, align 8, !tbaa !43
  %76 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %procs74 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %76, i32 0, i32 42
  %strip_copy_rop275 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs74, i32 0, i32 69
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* %75, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)** %strip_copy_rop275, align 8, !tbaa !43
  %77 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %procs76 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %77, i32 0, i32 42
  %get_bits_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs76, i32 0, i32 38
  %78 = load i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %get_bits_rectangle, align 8, !tbaa !44
  %79 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %procs77 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %79, i32 0, i32 42
  %get_bits_rectangle78 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs77, i32 0, i32 38
  store i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* %78, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %get_bits_rectangle78, align 8, !tbaa !44
  br label %if.end.216

if.else:                                          ; preds = %if.end.47
  %80 = load i32, i32* %num_planes.addr, align 4, !tbaa !5
  %cmp79 = icmp sge i32 %80, 4
  br i1 %cmp79, label %if.then.81, label %if.end.84

if.then.81:                                       ; preds = %if.else
  %81 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %procs82 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %81, i32 0, i32 42
  %fill_rectangle_hl_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs82, i32 0, i32 54
  store i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @mem_planar_fill_rectangle_hl_color, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %fill_rectangle_hl_color, align 8, !tbaa !45
  %82 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %procs83 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %82, i32 0, i32 42
  %put_image = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs83, i32 0, i32 64
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @mem_planar_put_image, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)** %put_image, align 8, !tbaa !46
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.81, %if.else
  %83 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %procs85 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %83, i32 0, i32 42
  %fill_rectangle86 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs85, i32 0, i32 7
  store i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @mem_planar_fill_rectangle, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle86, align 8, !tbaa !37
  %84 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %procs87 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %84, i32 0, i32 42
  %copy_alpha_hl_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs87, i32 0, i32 71
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_copy_alpha_hl_color, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %copy_alpha_hl_color, align 8, !tbaa !47
  %85 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %procs88 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %85, i32 0, i32 42
  %copy_mono89 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs88, i32 0, i32 9
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* @mem_planar_copy_mono, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono89, align 8, !tbaa !38
  %86 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %procs90 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %86, i32 0, i32 42
  %dev_spec_op = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs90, i32 0, i32 65
  store i32 (%struct.gx_device_s*, i32, i8*, i32)* @mem_planar_dev_spec_op, i32 (%struct.gx_device_s*, i32, i8*, i32)** %dev_spec_op, align 8, !tbaa !48
  %87 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %color_info91 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %87, i32 0, i32 11
  %depth92 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info91, i32 0, i32 3
  %88 = load i16, i16* %depth92, align 2, !tbaa !11
  %conv93 = zext i16 %88 to i32
  %cmp94 = icmp eq i32 %conv93, 24
  br i1 %cmp94, label %land.lhs.true, label %if.else.137

land.lhs.true:                                    ; preds = %if.end.84
  %89 = load i32, i32* %num_planes.addr, align 4, !tbaa !5
  %cmp96 = icmp eq i32 %89, 3
  br i1 %cmp96, label %land.lhs.true.98, label %if.else.137

land.lhs.true.98:                                 ; preds = %land.lhs.true
  %90 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %planes99 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %90, i32 0, i32 50
  %arrayidx100 = getelementptr inbounds [64 x %struct.gx_render_plane_s], [64 x %struct.gx_render_plane_s]* %planes99, i32 0, i64 0
  %depth101 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %arrayidx100, i32 0, i32 0
  %91 = load i32, i32* %depth101, align 4, !tbaa !7
  %cmp102 = icmp eq i32 %91, 8
  br i1 %cmp102, label %land.lhs.true.104, label %if.else.137

land.lhs.true.104:                                ; preds = %land.lhs.true.98
  %92 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %planes105 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %92, i32 0, i32 50
  %arrayidx106 = getelementptr inbounds [64 x %struct.gx_render_plane_s], [64 x %struct.gx_render_plane_s]* %planes105, i32 0, i64 0
  %shift107 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %arrayidx106, i32 0, i32 1
  %93 = load i32, i32* %shift107, align 4, !tbaa !33
  %cmp108 = icmp eq i32 %93, 16
  br i1 %cmp108, label %land.lhs.true.110, label %if.else.137

land.lhs.true.110:                                ; preds = %land.lhs.true.104
  %94 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %planes111 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %94, i32 0, i32 50
  %arrayidx112 = getelementptr inbounds [64 x %struct.gx_render_plane_s], [64 x %struct.gx_render_plane_s]* %planes111, i32 0, i64 1
  %depth113 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %arrayidx112, i32 0, i32 0
  %95 = load i32, i32* %depth113, align 4, !tbaa !7
  %cmp114 = icmp eq i32 %95, 8
  br i1 %cmp114, label %land.lhs.true.116, label %if.else.137

land.lhs.true.116:                                ; preds = %land.lhs.true.110
  %96 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %planes117 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %96, i32 0, i32 50
  %arrayidx118 = getelementptr inbounds [64 x %struct.gx_render_plane_s], [64 x %struct.gx_render_plane_s]* %planes117, i32 0, i64 1
  %shift119 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %arrayidx118, i32 0, i32 1
  %97 = load i32, i32* %shift119, align 4, !tbaa !33
  %cmp120 = icmp eq i32 %97, 8
  br i1 %cmp120, label %land.lhs.true.122, label %if.else.137

land.lhs.true.122:                                ; preds = %land.lhs.true.116
  %98 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %planes123 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %98, i32 0, i32 50
  %arrayidx124 = getelementptr inbounds [64 x %struct.gx_render_plane_s], [64 x %struct.gx_render_plane_s]* %planes123, i32 0, i64 2
  %depth125 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %arrayidx124, i32 0, i32 0
  %99 = load i32, i32* %depth125, align 4, !tbaa !7
  %cmp126 = icmp eq i32 %99, 8
  br i1 %cmp126, label %land.lhs.true.128, label %if.else.137

land.lhs.true.128:                                ; preds = %land.lhs.true.122
  %100 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %planes129 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %100, i32 0, i32 50
  %arrayidx130 = getelementptr inbounds [64 x %struct.gx_render_plane_s], [64 x %struct.gx_render_plane_s]* %planes129, i32 0, i64 2
  %shift131 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %arrayidx130, i32 0, i32 1
  %101 = load i32, i32* %shift131, align 4, !tbaa !33
  %cmp132 = icmp eq i32 %101, 0
  br i1 %cmp132, label %if.then.134, label %if.else.137

if.then.134:                                      ; preds = %land.lhs.true.128
  %102 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %procs135 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %102, i32 0, i32 42
  %copy_color136 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs135, i32 0, i32 10
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* @mem_planar_copy_color_24to8, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %copy_color136, align 8, !tbaa !39
  br label %if.end.203

if.else.137:                                      ; preds = %land.lhs.true.128, %land.lhs.true.122, %land.lhs.true.116, %land.lhs.true.110, %land.lhs.true.104, %land.lhs.true.98, %land.lhs.true, %if.end.84
  %103 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %color_info138 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %103, i32 0, i32 11
  %depth139 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info138, i32 0, i32 3
  %104 = load i16, i16* %depth139, align 2, !tbaa !11
  %conv140 = zext i16 %104 to i32
  %cmp141 = icmp eq i32 %conv140, 4
  br i1 %cmp141, label %land.lhs.true.143, label %if.else.199

land.lhs.true.143:                                ; preds = %if.else.137
  %105 = load i32, i32* %num_planes.addr, align 4, !tbaa !5
  %cmp144 = icmp eq i32 %105, 4
  br i1 %cmp144, label %land.lhs.true.146, label %if.else.199

land.lhs.true.146:                                ; preds = %land.lhs.true.143
  %106 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %planes147 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %106, i32 0, i32 50
  %arrayidx148 = getelementptr inbounds [64 x %struct.gx_render_plane_s], [64 x %struct.gx_render_plane_s]* %planes147, i32 0, i64 0
  %depth149 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %arrayidx148, i32 0, i32 0
  %107 = load i32, i32* %depth149, align 4, !tbaa !7
  %cmp150 = icmp eq i32 %107, 1
  br i1 %cmp150, label %land.lhs.true.152, label %if.else.199

land.lhs.true.152:                                ; preds = %land.lhs.true.146
  %108 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %planes153 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %108, i32 0, i32 50
  %arrayidx154 = getelementptr inbounds [64 x %struct.gx_render_plane_s], [64 x %struct.gx_render_plane_s]* %planes153, i32 0, i64 0
  %shift155 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %arrayidx154, i32 0, i32 1
  %109 = load i32, i32* %shift155, align 4, !tbaa !33
  %cmp156 = icmp eq i32 %109, 3
  br i1 %cmp156, label %land.lhs.true.158, label %if.else.199

land.lhs.true.158:                                ; preds = %land.lhs.true.152
  %110 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %planes159 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %110, i32 0, i32 50
  %arrayidx160 = getelementptr inbounds [64 x %struct.gx_render_plane_s], [64 x %struct.gx_render_plane_s]* %planes159, i32 0, i64 1
  %depth161 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %arrayidx160, i32 0, i32 0
  %111 = load i32, i32* %depth161, align 4, !tbaa !7
  %cmp162 = icmp eq i32 %111, 1
  br i1 %cmp162, label %land.lhs.true.164, label %if.else.199

land.lhs.true.164:                                ; preds = %land.lhs.true.158
  %112 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %planes165 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %112, i32 0, i32 50
  %arrayidx166 = getelementptr inbounds [64 x %struct.gx_render_plane_s], [64 x %struct.gx_render_plane_s]* %planes165, i32 0, i64 1
  %shift167 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %arrayidx166, i32 0, i32 1
  %113 = load i32, i32* %shift167, align 4, !tbaa !33
  %cmp168 = icmp eq i32 %113, 2
  br i1 %cmp168, label %land.lhs.true.170, label %if.else.199

land.lhs.true.170:                                ; preds = %land.lhs.true.164
  %114 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %planes171 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %114, i32 0, i32 50
  %arrayidx172 = getelementptr inbounds [64 x %struct.gx_render_plane_s], [64 x %struct.gx_render_plane_s]* %planes171, i32 0, i64 2
  %depth173 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %arrayidx172, i32 0, i32 0
  %115 = load i32, i32* %depth173, align 4, !tbaa !7
  %cmp174 = icmp eq i32 %115, 1
  br i1 %cmp174, label %land.lhs.true.176, label %if.else.199

land.lhs.true.176:                                ; preds = %land.lhs.true.170
  %116 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %planes177 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %116, i32 0, i32 50
  %arrayidx178 = getelementptr inbounds [64 x %struct.gx_render_plane_s], [64 x %struct.gx_render_plane_s]* %planes177, i32 0, i64 2
  %shift179 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %arrayidx178, i32 0, i32 1
  %117 = load i32, i32* %shift179, align 4, !tbaa !33
  %cmp180 = icmp eq i32 %117, 1
  br i1 %cmp180, label %land.lhs.true.182, label %if.else.199

land.lhs.true.182:                                ; preds = %land.lhs.true.176
  %118 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %planes183 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %118, i32 0, i32 50
  %arrayidx184 = getelementptr inbounds [64 x %struct.gx_render_plane_s], [64 x %struct.gx_render_plane_s]* %planes183, i32 0, i64 3
  %depth185 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %arrayidx184, i32 0, i32 0
  %119 = load i32, i32* %depth185, align 4, !tbaa !7
  %cmp186 = icmp eq i32 %119, 1
  br i1 %cmp186, label %land.lhs.true.188, label %if.else.199

land.lhs.true.188:                                ; preds = %land.lhs.true.182
  %120 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %planes189 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %120, i32 0, i32 50
  %arrayidx190 = getelementptr inbounds [64 x %struct.gx_render_plane_s], [64 x %struct.gx_render_plane_s]* %planes189, i32 0, i64 3
  %shift191 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %arrayidx190, i32 0, i32 1
  %121 = load i32, i32* %shift191, align 4, !tbaa !33
  %cmp192 = icmp eq i32 %121, 0
  br i1 %cmp192, label %if.then.194, label %if.else.199

if.then.194:                                      ; preds = %land.lhs.true.188
  %122 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %procs195 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %122, i32 0, i32 42
  %copy_color196 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs195, i32 0, i32 10
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* @mem_planar_copy_color_4to1, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %copy_color196, align 8, !tbaa !39
  %123 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %procs197 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %123, i32 0, i32 42
  %dev_spec_op198 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs197, i32 0, i32 65
  store i32 (%struct.gx_device_s*, i32, i8*, i32)* @mem_planar_dev_spec_op_cmyk4, i32 (%struct.gx_device_s*, i32, i8*, i32)** %dev_spec_op198, align 8, !tbaa !48
  br label %if.end.202

if.else.199:                                      ; preds = %land.lhs.true.188, %land.lhs.true.182, %land.lhs.true.176, %land.lhs.true.170, %land.lhs.true.164, %land.lhs.true.158, %land.lhs.true.152, %land.lhs.true.146, %land.lhs.true.143, %if.else.137
  %124 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %procs200 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %124, i32 0, i32 42
  %copy_color201 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs200, i32 0, i32 10
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* @mem_planar_copy_color, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %copy_color201, align 8, !tbaa !39
  br label %if.end.202

if.end.202:                                       ; preds = %if.else.199, %if.then.194
  br label %if.end.203

if.end.203:                                       ; preds = %if.end.202, %if.then.134
  %125 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %procs204 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %125, i32 0, i32 42
  %copy_alpha205 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs204, i32 0, i32 21
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* @gx_default_copy_alpha, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)** %copy_alpha205, align 8, !tbaa !40
  %126 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %procs206 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %126, i32 0, i32 42
  %copy_planes = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs206, i32 0, i32 66
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* @mem_planar_copy_planes, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)** %copy_planes, align 8, !tbaa !49
  %127 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %procs207 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %127, i32 0, i32 42
  %strip_tile_rectangle208 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs207, i32 0, i32 34
  store i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @mem_planar_strip_tile_rectangle, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)** %strip_tile_rectangle208, align 8, !tbaa !41
  %128 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %procs209 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %128, i32 0, i32 42
  %strip_tile_rect_devn = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs209, i32 0, i32 70
  store i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* @mem_planar_strip_tile_rect_devn, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)** %strip_tile_rect_devn, align 8, !tbaa !50
  %129 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %procs210 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %129, i32 0, i32 42
  %strip_copy_rop211 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs210, i32 0, i32 35
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @mem_planar_strip_copy_rop, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)** %strip_copy_rop211, align 8, !tbaa !42
  %130 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %procs212 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %130, i32 0, i32 42
  %strip_copy_rop2213 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs212, i32 0, i32 69
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* @mem_planar_strip_copy_rop2, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)** %strip_copy_rop2213, align 8, !tbaa !43
  %131 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %procs214 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %131, i32 0, i32 42
  %get_bits_rectangle215 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs214, i32 0, i32 38
  store i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* @mem_planar_get_bits_rectangle, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %get_bits_rectangle215, align 8, !tbaa !44
  br label %if.end.216

if.end.216:                                       ; preds = %if.end.203, %if.then.54
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.217

cleanup.217:                                      ; preds = %if.end.216, %if.then.46, %cleanup, %if.then
  %132 = bitcast %struct.gx_device_memory_s** %mdproto to i8*
  call void @llvm.lifetime.end(i64 8, i8* %132) #1
  %133 = bitcast i32* %pi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #1
  %134 = bitcast i64* %covered to i8*
  call void @llvm.lifetime.end(i64 8, i8* %134) #1
  %135 = bitcast i32* %same_depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %135) #1
  %136 = bitcast i32* %total_depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %136) #1
  %137 = load i32, i32* %retval
  ret i32 %137
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare %struct.gx_device_memory_s* @gdev_mem_device_for_bits(i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @mem_planar_open(%struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %mdev = alloca %struct.gx_device_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %2, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %is_planar = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 17
  %4 = load i32, i32* %is_planar, align 4, !tbaa !51
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 14
  %7 = load i32, i32* %height, align 4, !tbaa !53
  %call = call i32 @gdev_mem_open_scan_lines(%struct.gx_device_memory_s* %5, i32 %7) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %8 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @mem_planar_fill_rectangle_hl_color(%struct.gx_device_s* %dev, %struct.gs_fixed_rect_s* %rect, %struct.gs_imager_state_s* %pis, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %rect.addr = alloca %struct.gs_fixed_rect_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %mdev = alloca %struct.gx_device_memory_s*, align 8
  %save = alloca %struct.mem_save_params_s, align 8
  %pi = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %plane_depth = alloca i32, align 4
  %mask = alloca i64, align 8
  %shift = alloca i32, align 4
  %mdproto = alloca %struct.gx_device_memory_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_fixed_rect_s* %rect, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %2, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %3 = bitcast %struct.mem_save_params_s* %save to i8*
  call void @llvm.lifetime.start(i64 24, i8* %3) #1
  %4 = bitcast i32* %pi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %6, i32 0, i32 0
  %x1 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %7 = load i32, i32* %x1, align 4, !tbaa !54
  %shr = ashr i32 %7, 8
  store i32 %shr, i32* %x, align 4, !tbaa !5
  %8 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %p2 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %9, i32 0, i32 0
  %y3 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2, i32 0, i32 1
  %10 = load i32, i32* %y3, align 4, !tbaa !57
  %shr4 = ashr i32 %10, 8
  store i32 %shr4, i32* %y, align 4, !tbaa !5
  %11 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %12, i32 0, i32 1
  %x5 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %13 = load i32, i32* %x5, align 4, !tbaa !58
  %shr6 = ashr i32 %13, 8
  %14 = load i32, i32* %x, align 4, !tbaa !5
  %sub = sub nsw i32 %shr6, %14
  store i32 %sub, i32* %w, align 4, !tbaa !5
  %15 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %q7 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %16, i32 0, i32 1
  %y8 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q7, i32 0, i32 1
  %17 = load i32, i32* %y8, align 4, !tbaa !59
  %shr9 = ashr i32 %17, 8
  %18 = load i32, i32* %y, align 4, !tbaa !5
  %sub10 = sub nsw i32 %shr9, %18
  store i32 %sub10, i32* %h, align 4, !tbaa !5
  %19 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %19, i32 0, i32 0
  %20 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !60
  %cmp = icmp ne %struct.gx_device_color_type_s* %20, @gx_dc_type_data_devn
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %21 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %type11 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %21, i32 0, i32 0
  %22 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type11, align 8, !tbaa !60
  %cmp12 = icmp ne %struct.gx_device_color_type_s* %22, @gx_dc_devn_masked
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %23 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %type13 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %23, i32 0, i32 0
  %24 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type13, align 8, !tbaa !60
  %fill_rectangle = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %24, i32 0, i32 5
  %25 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle, align 8, !tbaa !67
  %26 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %27 = load i32, i32* %x, align 4, !tbaa !5
  %28 = load i32, i32* %y, align 4, !tbaa !5
  %29 = load i32, i32* %w, align 4, !tbaa !5
  %30 = load i32, i32* %h, align 4, !tbaa !5
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 %25(%struct.gx_device_color_s* %26, i32 %27, i32 %28, i32 %29, i32 %30, %struct.gx_device_s* %31, i32 252, %struct.gx_rop_source_s* null) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %32 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %32, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %33 = load i16, i16* %depth, align 2, !tbaa !11
  %conv = zext i16 %33 to i32
  %depth14 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 0
  store i32 %conv, i32* %depth14, align 4, !tbaa !69
  %34 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %base = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %34, i32 0, i32 45
  %35 = load i8*, i8** %base, align 8, !tbaa !71
  %base15 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 1
  store i8* %35, i8** %base15, align 8, !tbaa !72
  %36 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %36, i32 0, i32 52
  %37 = load i8**, i8*** %line_ptrs, align 8, !tbaa !73
  %line_ptrs16 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 2
  store i8** %37, i8*** %line_ptrs16, align 8, !tbaa !74
  store i32 0, i32* %pi, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %38 = load i32, i32* %pi, align 4, !tbaa !5
  %39 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color_info17 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %39, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info17, i32 0, i32 1
  %40 = load i32, i32* %num_components, align 4, !tbaa !32
  %cmp18 = icmp slt i32 %38, %40
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %41 = bitcast i32* %plane_depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #1
  %42 = load i32, i32* %pi, align 4, !tbaa !5
  %idxprom = sext i32 %42 to i64
  %43 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %planes = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %43, i32 0, i32 50
  %arrayidx = getelementptr inbounds [64 x %struct.gx_render_plane_s], [64 x %struct.gx_render_plane_s]* %planes, i32 0, i64 %idxprom
  %depth20 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %arrayidx, i32 0, i32 0
  %44 = load i32, i32* %depth20, align 4, !tbaa !7
  store i32 %44, i32* %plane_depth, align 4, !tbaa !5
  %45 = bitcast i64* %mask to i8*
  call void @llvm.lifetime.start(i64 8, i8* %45) #1
  %46 = load i32, i32* %plane_depth, align 4, !tbaa !5
  %sh_prom = zext i32 %46 to i64
  %shl = shl i64 1, %sh_prom
  %sub21 = sub i64 %shl, 1
  store i64 %sub21, i64* %mask, align 8, !tbaa !9
  %47 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #1
  %48 = load i32, i32* %plane_depth, align 4, !tbaa !5
  %sub22 = sub nsw i32 16, %48
  store i32 %sub22, i32* %shift, align 4, !tbaa !5
  %49 = bitcast %struct.gx_device_memory_s** %mdproto to i8*
  call void @llvm.lifetime.start(i64 8, i8* %49) #1
  %50 = load i32, i32* %plane_depth, align 4, !tbaa !5
  %call23 = call %struct.gx_device_memory_s* @gdev_mem_device_for_bits(i32 %50) #4
  store %struct.gx_device_memory_s* %call23, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %51 = load i32, i32* %plane_depth, align 4, !tbaa !5
  %conv24 = trunc i32 %51 to i16
  %52 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color_info25 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %52, i32 0, i32 11
  %depth26 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info25, i32 0, i32 3
  store i16 %conv24, i16* %depth26, align 2, !tbaa !11
  %53 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs27 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %53, i32 0, i32 52
  %54 = load i8**, i8*** %line_ptrs27, align 8, !tbaa !73
  %arrayidx28 = getelementptr inbounds i8*, i8** %54, i64 0
  %55 = load i8*, i8** %arrayidx28, align 8, !tbaa !1
  %56 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %base29 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %56, i32 0, i32 45
  store i8* %55, i8** %base29, align 8, !tbaa !71
  %57 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %57, i32 0, i32 14
  %58 = load i32, i32* %height, align 4, !tbaa !75
  %cmp30 = icmp sgt i32 %58, 1
  br i1 %cmp30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %59 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs32 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %59, i32 0, i32 52
  %60 = load i8**, i8*** %line_ptrs32, align 8, !tbaa !73
  %arrayidx33 = getelementptr inbounds i8*, i8** %60, i64 1
  %61 = load i8*, i8** %arrayidx33, align 8, !tbaa !1
  %62 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs34 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %62, i32 0, i32 52
  %63 = load i8**, i8*** %line_ptrs34, align 8, !tbaa !73
  %arrayidx35 = getelementptr inbounds i8*, i8** %63, i64 0
  %64 = load i8*, i8** %arrayidx35, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %61 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %64 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %65 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %65, i32 0, i32 13
  %66 = load i32, i32* %width, align 4, !tbaa !76
  %67 = load i32, i32* %plane_depth, align 4, !tbaa !5
  %mul = mul nsw i32 %66, %67
  %add = add nsw i32 %mul, 63
  %shr36 = ashr i32 %add, 6
  %shl37 = shl i32 %shr36, 3
  %conv38 = zext i32 %shl37 to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub.ptr.sub, %cond.true ], [ %conv38, %cond.false ]
  %conv39 = trunc i64 %cond to i32
  %68 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %68, i32 0, i32 44
  store i32 %conv39, i32* %raster, align 4, !tbaa !77
  %69 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %69, i32 0, i32 42
  %fill_rectangle40 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 7
  %70 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle40, align 8, !tbaa !37
  %71 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %72 = load i32, i32* %x, align 4, !tbaa !5
  %73 = load i32, i32* %y, align 4, !tbaa !5
  %74 = load i32, i32* %w, align 4, !tbaa !5
  %75 = load i32, i32* %h, align 4, !tbaa !5
  %76 = load i32, i32* %pi, align 4, !tbaa !5
  %idxprom41 = sext i32 %76 to i64
  %77 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %77, i32 0, i32 1
  %devn = bitcast %union._c* %colors to %struct._devn*
  %values = getelementptr inbounds %struct._devn, %struct._devn* %devn, i32 0, i32 0
  %arrayidx42 = getelementptr inbounds [64 x i16], [64 x i16]* %values, i32 0, i64 %idxprom41
  %78 = load i16, i16* %arrayidx42, align 2, !tbaa !78
  %conv43 = zext i16 %78 to i32
  %79 = load i32, i32* %shift, align 4, !tbaa !5
  %shr44 = ashr i32 %conv43, %79
  %conv45 = sext i32 %shr44 to i64
  %80 = load i64, i64* %mask, align 8, !tbaa !9
  %and = and i64 %conv45, %80
  %call46 = call i32 %70(%struct.gx_device_s* %71, i32 %72, i32 %73, i32 %74, i32 %75, i64 %and) #4
  %81 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %height47 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %81, i32 0, i32 14
  %82 = load i32, i32* %height47, align 4, !tbaa !75
  %83 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs48 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %83, i32 0, i32 52
  %84 = load i8**, i8*** %line_ptrs48, align 8, !tbaa !73
  %idx.ext = sext i32 %82 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %84, i64 %idx.ext
  store i8** %add.ptr, i8*** %line_ptrs48, align 8, !tbaa !73
  %85 = bitcast %struct.gx_device_memory_s** %mdproto to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #1
  %86 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #1
  %87 = bitcast i64* %mask to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #1
  %88 = bitcast i32* %plane_depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #1
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %89 = load i32, i32* %pi, align 4, !tbaa !5
  %inc = add nsw i32 %89, 1
  store i32 %inc, i32* %pi, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %depth49 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 0
  %90 = load i32, i32* %depth49, align 4, !tbaa !69
  %conv50 = trunc i32 %90 to i16
  %91 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color_info51 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %91, i32 0, i32 11
  %depth52 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info51, i32 0, i32 3
  store i16 %conv50, i16* %depth52, align 2, !tbaa !11
  %base53 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 1
  %92 = load i8*, i8** %base53, align 8, !tbaa !72
  %93 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %base54 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %93, i32 0, i32 45
  store i8* %92, i8** %base54, align 8, !tbaa !71
  %line_ptrs55 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 2
  %94 = load i8**, i8*** %line_ptrs55, align 8, !tbaa !74
  %95 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs56 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %95, i32 0, i32 52
  store i8** %94, i8*** %line_ptrs56, align 8, !tbaa !73
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %96 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #1
  %97 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #1
  %98 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #1
  %99 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #1
  %100 = bitcast i32* %pi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #1
  %101 = bitcast %struct.mem_save_params_s* %save to i8*
  call void @llvm.lifetime.end(i64 24, i8* %101) #1
  %102 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %102) #1
  %103 = load i32, i32* %retval
  ret i32 %103
}

; Function Attrs: nounwind uwtable
define internal i32 @mem_planar_put_image(%struct.gx_device_s* %pdev, i8* %buffer, i32 %num_chan, i32 %xstart, i32 %ystart, i32 %width, i32 %height, i32 %row_stride, i32 %plane_stride, i32 %alpha_plane_index, i32 %tag_plane_index) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %buffer.addr = alloca i8*, align 8
  %num_chan.addr = alloca i32, align 4
  %xstart.addr = alloca i32, align 4
  %ystart.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %row_stride.addr = alloca i32, align 4
  %plane_stride.addr = alloca i32, align 4
  %alpha_plane_index.addr = alloca i32, align 4
  %tag_plane_index.addr = alloca i32, align 4
  %mdev = alloca %struct.gx_device_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i32 %num_chan, i32* %num_chan.addr, align 4, !tbaa !5
  store i32 %xstart, i32* %xstart.addr, align 4, !tbaa !5
  store i32 %ystart, i32* %ystart.addr, align 4, !tbaa !5
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  store i32 %row_stride, i32* %row_stride.addr, align 4, !tbaa !5
  store i32 %plane_stride, i32* %plane_stride.addr, align 4, !tbaa !5
  store i32 %alpha_plane_index, i32* %alpha_plane_index.addr, align 4, !tbaa !5
  store i32 %tag_plane_index, i32* %tag_plane_index.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %2, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %3 = load i32, i32* %alpha_plane_index.addr, align 4, !tbaa !5
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %plane_stride.addr, align 4, !tbaa !5
  %cmp1 = icmp eq i32 %4, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %5 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %planes = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %5, i32 0, i32 50
  %arrayidx = getelementptr inbounds [64 x %struct.gx_render_plane_s], [64 x %struct.gx_render_plane_s]* %planes, i32 0, i64 0
  %depth = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %arrayidx, i32 0, i32 0
  %6 = load i32, i32* %depth, align 4, !tbaa !7
  %cmp3 = icmp ne i32 %6, 8
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 42
  %copy_planes = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 66
  %8 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)** %copy_planes, align 8, !tbaa !79
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %10 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %11 = load i32, i32* %row_stride.addr, align 4, !tbaa !5
  %12 = load i32, i32* %xstart.addr, align 4, !tbaa !5
  %13 = load i32, i32* %ystart.addr, align 4, !tbaa !5
  %14 = load i32, i32* %width.addr, align 4, !tbaa !5
  %15 = load i32, i32* %height.addr, align 4, !tbaa !5
  %16 = load i32, i32* %plane_stride.addr, align 4, !tbaa !5
  %17 = load i32, i32* %row_stride.addr, align 4, !tbaa !5
  %div = sdiv i32 %16, %17
  %call = call i32 %8(%struct.gx_device_s* %9, i8* %10, i32 0, i32 %11, i64 0, i32 %12, i32 %13, i32 %14, i32 %15, i32 %div) #4
  %18 = load i32, i32* %height.addr, align 4, !tbaa !5
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %19 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @mem_planar_fill_rectangle(%struct.gx_device_s* %dev, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  %mdev = alloca %struct.gx_device_memory_s*, align 8
  %save = alloca %struct.mem_save_params_s, align 8
  %pi = alloca i32, align 4
  %plane_depth = alloca i32, align 4
  %mask = alloca i64, align 8
  %mdproto = alloca %struct.gx_device_memory_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store i64 %color, i64* %color.addr, align 8, !tbaa !9
  %0 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %2, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %3 = bitcast %struct.mem_save_params_s* %save to i8*
  call void @llvm.lifetime.start(i64 24, i8* %3) #1
  %4 = bitcast i32* %pi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %5, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %6 = load i16, i16* %depth, align 2, !tbaa !11
  %conv = zext i16 %6 to i32
  %depth1 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 0
  store i32 %conv, i32* %depth1, align 4, !tbaa !69
  %7 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %base = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %7, i32 0, i32 45
  %8 = load i8*, i8** %base, align 8, !tbaa !71
  %base2 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 1
  store i8* %8, i8** %base2, align 8, !tbaa !72
  %9 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %9, i32 0, i32 52
  %10 = load i8**, i8*** %line_ptrs, align 8, !tbaa !73
  %line_ptrs3 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 2
  store i8** %10, i8*** %line_ptrs3, align 8, !tbaa !74
  store i32 0, i32* %pi, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %pi, align 4, !tbaa !5
  %12 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color_info4 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %12, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info4, i32 0, i32 1
  %13 = load i32, i32* %num_components, align 4, !tbaa !32
  %cmp = icmp slt i32 %11, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = bitcast i32* %plane_depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load i32, i32* %pi, align 4, !tbaa !5
  %idxprom = sext i32 %15 to i64
  %16 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %planes = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %16, i32 0, i32 50
  %arrayidx = getelementptr inbounds [64 x %struct.gx_render_plane_s], [64 x %struct.gx_render_plane_s]* %planes, i32 0, i64 %idxprom
  %depth6 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %arrayidx, i32 0, i32 0
  %17 = load i32, i32* %depth6, align 4, !tbaa !7
  store i32 %17, i32* %plane_depth, align 4, !tbaa !5
  %18 = bitcast i64* %mask to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = load i32, i32* %plane_depth, align 4, !tbaa !5
  %sh_prom = zext i32 %19 to i64
  %shl = shl i64 1, %sh_prom
  %sub = sub i64 %shl, 1
  store i64 %sub, i64* %mask, align 8, !tbaa !9
  %20 = bitcast %struct.gx_device_memory_s** %mdproto to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = load i32, i32* %plane_depth, align 4, !tbaa !5
  %call = call %struct.gx_device_memory_s* @gdev_mem_device_for_bits(i32 %21) #4
  store %struct.gx_device_memory_s* %call, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %22 = load i32, i32* %plane_depth, align 4, !tbaa !5
  %conv7 = trunc i32 %22 to i16
  %23 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color_info8 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %23, i32 0, i32 11
  %depth9 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info8, i32 0, i32 3
  store i16 %conv7, i16* %depth9, align 2, !tbaa !11
  %24 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs10 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %24, i32 0, i32 52
  %25 = load i8**, i8*** %line_ptrs10, align 8, !tbaa !73
  %arrayidx11 = getelementptr inbounds i8*, i8** %25, i64 0
  %26 = load i8*, i8** %arrayidx11, align 8, !tbaa !1
  %27 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %base12 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %27, i32 0, i32 45
  store i8* %26, i8** %base12, align 8, !tbaa !71
  %28 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %28, i32 0, i32 14
  %29 = load i32, i32* %height, align 4, !tbaa !75
  %cmp13 = icmp sgt i32 %29, 1
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %30 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs15 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %30, i32 0, i32 52
  %31 = load i8**, i8*** %line_ptrs15, align 8, !tbaa !73
  %arrayidx16 = getelementptr inbounds i8*, i8** %31, i64 1
  %32 = load i8*, i8** %arrayidx16, align 8, !tbaa !1
  %33 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs17 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %33, i32 0, i32 52
  %34 = load i8**, i8*** %line_ptrs17, align 8, !tbaa !73
  %arrayidx18 = getelementptr inbounds i8*, i8** %34, i64 0
  %35 = load i8*, i8** %arrayidx18, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %32 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %35 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %36 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %36, i32 0, i32 13
  %37 = load i32, i32* %width, align 4, !tbaa !76
  %38 = load i32, i32* %plane_depth, align 4, !tbaa !5
  %mul = mul nsw i32 %37, %38
  %add = add nsw i32 %mul, 63
  %shr = ashr i32 %add, 6
  %shl19 = shl i32 %shr, 3
  %conv20 = zext i32 %shl19 to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub.ptr.sub, %cond.true ], [ %conv20, %cond.false ]
  %conv21 = trunc i64 %cond to i32
  %39 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %39, i32 0, i32 44
  store i32 %conv21, i32* %raster, align 4, !tbaa !77
  %40 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %40, i32 0, i32 42
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 7
  %41 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8, !tbaa !37
  %42 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %43 = load i32, i32* %x.addr, align 4, !tbaa !5
  %44 = load i32, i32* %y.addr, align 4, !tbaa !5
  %45 = load i32, i32* %w.addr, align 4, !tbaa !5
  %46 = load i32, i32* %h.addr, align 4, !tbaa !5
  %47 = load i64, i64* %color.addr, align 8, !tbaa !9
  %48 = load i32, i32* %pi, align 4, !tbaa !5
  %idxprom22 = sext i32 %48 to i64
  %49 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %planes23 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %49, i32 0, i32 50
  %arrayidx24 = getelementptr inbounds [64 x %struct.gx_render_plane_s], [64 x %struct.gx_render_plane_s]* %planes23, i32 0, i64 %idxprom22
  %shift = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %arrayidx24, i32 0, i32 1
  %50 = load i32, i32* %shift, align 4, !tbaa !33
  %sh_prom25 = zext i32 %50 to i64
  %shr26 = lshr i64 %47, %sh_prom25
  %51 = load i64, i64* %mask, align 8, !tbaa !9
  %and = and i64 %shr26, %51
  %call27 = call i32 %41(%struct.gx_device_s* %42, i32 %43, i32 %44, i32 %45, i32 %46, i64 %and) #4
  %52 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %height28 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %52, i32 0, i32 14
  %53 = load i32, i32* %height28, align 4, !tbaa !75
  %54 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs29 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %54, i32 0, i32 52
  %55 = load i8**, i8*** %line_ptrs29, align 8, !tbaa !73
  %idx.ext = sext i32 %53 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %55, i64 %idx.ext
  store i8** %add.ptr, i8*** %line_ptrs29, align 8, !tbaa !73
  %56 = bitcast %struct.gx_device_memory_s** %mdproto to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  %57 = bitcast i64* %mask to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #1
  %58 = bitcast i32* %plane_depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %59 = load i32, i32* %pi, align 4, !tbaa !5
  %inc = add nsw i32 %59, 1
  store i32 %inc, i32* %pi, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %depth30 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 0
  %60 = load i32, i32* %depth30, align 4, !tbaa !69
  %conv31 = trunc i32 %60 to i16
  %61 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color_info32 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %61, i32 0, i32 11
  %depth33 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info32, i32 0, i32 3
  store i16 %conv31, i16* %depth33, align 2, !tbaa !11
  %base34 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 1
  %62 = load i8*, i8** %base34, align 8, !tbaa !72
  %63 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %base35 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %63, i32 0, i32 45
  store i8* %62, i8** %base35, align 8, !tbaa !71
  %line_ptrs36 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 2
  %64 = load i8**, i8*** %line_ptrs36, align 8, !tbaa !74
  %65 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs37 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %65, i32 0, i32 52
  store i8** %64, i8*** %line_ptrs37, align 8, !tbaa !73
  %66 = bitcast i32* %pi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast %struct.mem_save_params_s* %save to i8*
  call void @llvm.lifetime.end(i64 24, i8* %67) #1
  %68 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  ret i32 0
}

declare i32 @gx_default_copy_alpha_hl_color(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @mem_planar_copy_mono(%struct.gx_device_s* %dev, i8* %base, i32 %sourcex, i32 %sraster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color0, i64 %color1) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %base.addr = alloca i8*, align 8
  %sourcex.addr = alloca i32, align 4
  %sraster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %color0.addr = alloca i64, align 8
  %color1.addr = alloca i64, align 8
  %mdev = alloca %struct.gx_device_memory_s*, align 8
  %save = alloca %struct.mem_save_params_s, align 8
  %pi = alloca i32, align 4
  %plane_depth = alloca i32, align 4
  %shift = alloca i32, align 4
  %mask = alloca i64, align 8
  %mdproto = alloca %struct.gx_device_memory_s*, align 8
  %c0 = alloca i64, align 8
  %c1 = alloca i64, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %base, i8** %base.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 %sraster, i32* %sraster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !9
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store i64 %color0, i64* %color0.addr, align 8, !tbaa !9
  store i64 %color1, i64* %color1.addr, align 8, !tbaa !9
  %0 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %2, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %3 = bitcast %struct.mem_save_params_s* %save to i8*
  call void @llvm.lifetime.start(i64 24, i8* %3) #1
  %4 = bitcast i32* %pi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %5, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %6 = load i16, i16* %depth, align 2, !tbaa !11
  %conv = zext i16 %6 to i32
  %depth1 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 0
  store i32 %conv, i32* %depth1, align 4, !tbaa !69
  %7 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %base2 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %7, i32 0, i32 45
  %8 = load i8*, i8** %base2, align 8, !tbaa !71
  %base3 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 1
  store i8* %8, i8** %base3, align 8, !tbaa !72
  %9 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %9, i32 0, i32 52
  %10 = load i8**, i8*** %line_ptrs, align 8, !tbaa !73
  %line_ptrs4 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 2
  store i8** %10, i8*** %line_ptrs4, align 8, !tbaa !74
  store i32 0, i32* %pi, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %pi, align 4, !tbaa !5
  %12 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color_info5 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %12, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info5, i32 0, i32 1
  %13 = load i32, i32* %num_components, align 4, !tbaa !32
  %cmp = icmp slt i32 %11, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = bitcast i32* %plane_depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load i32, i32* %pi, align 4, !tbaa !5
  %idxprom = sext i32 %15 to i64
  %16 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %planes = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %16, i32 0, i32 50
  %arrayidx = getelementptr inbounds [64 x %struct.gx_render_plane_s], [64 x %struct.gx_render_plane_s]* %planes, i32 0, i64 %idxprom
  %depth7 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %arrayidx, i32 0, i32 0
  %17 = load i32, i32* %depth7, align 4, !tbaa !7
  store i32 %17, i32* %plane_depth, align 4, !tbaa !5
  %18 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load i32, i32* %pi, align 4, !tbaa !5
  %idxprom8 = sext i32 %19 to i64
  %20 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %planes9 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %20, i32 0, i32 50
  %arrayidx10 = getelementptr inbounds [64 x %struct.gx_render_plane_s], [64 x %struct.gx_render_plane_s]* %planes9, i32 0, i64 %idxprom8
  %shift11 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %arrayidx10, i32 0, i32 1
  %21 = load i32, i32* %shift11, align 4, !tbaa !33
  store i32 %21, i32* %shift, align 4, !tbaa !5
  %22 = bitcast i64* %mask to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  %23 = load i32, i32* %plane_depth, align 4, !tbaa !5
  %sh_prom = zext i32 %23 to i64
  %shl = shl i64 1, %sh_prom
  %sub = sub i64 %shl, 1
  store i64 %sub, i64* %mask, align 8, !tbaa !9
  %24 = bitcast %struct.gx_device_memory_s** %mdproto to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  %25 = load i32, i32* %plane_depth, align 4, !tbaa !5
  %call = call %struct.gx_device_memory_s* @gdev_mem_device_for_bits(i32 %25) #4
  store %struct.gx_device_memory_s* %call, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %26 = bitcast i64* %c0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  %27 = load i64, i64* %color0.addr, align 8, !tbaa !9
  %cmp12 = icmp eq i64 %27, -1
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %28 = load i64, i64* %color0.addr, align 8, !tbaa !9
  %29 = load i32, i32* %shift, align 4, !tbaa !5
  %sh_prom14 = zext i32 %29 to i64
  %shr = lshr i64 %28, %sh_prom14
  %30 = load i64, i64* %mask, align 8, !tbaa !9
  %and = and i64 %shr, %30
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ -1, %cond.true ], [ %and, %cond.false ]
  store i64 %cond, i64* %c0, align 8, !tbaa !9
  %31 = bitcast i64* %c1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  %32 = load i64, i64* %color1.addr, align 8, !tbaa !9
  %cmp15 = icmp eq i64 %32, -1
  br i1 %cmp15, label %cond.true.17, label %cond.false.18

cond.true.17:                                     ; preds = %cond.end
  br label %cond.end.22

cond.false.18:                                    ; preds = %cond.end
  %33 = load i64, i64* %color1.addr, align 8, !tbaa !9
  %34 = load i32, i32* %shift, align 4, !tbaa !5
  %sh_prom19 = zext i32 %34 to i64
  %shr20 = lshr i64 %33, %sh_prom19
  %35 = load i64, i64* %mask, align 8, !tbaa !9
  %and21 = and i64 %shr20, %35
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.18, %cond.true.17
  %cond23 = phi i64 [ -1, %cond.true.17 ], [ %and21, %cond.false.18 ]
  store i64 %cond23, i64* %c1, align 8, !tbaa !9
  %36 = load i32, i32* %plane_depth, align 4, !tbaa !5
  %conv24 = trunc i32 %36 to i16
  %37 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color_info25 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %37, i32 0, i32 11
  %depth26 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info25, i32 0, i32 3
  store i16 %conv24, i16* %depth26, align 2, !tbaa !11
  %38 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs27 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %38, i32 0, i32 52
  %39 = load i8**, i8*** %line_ptrs27, align 8, !tbaa !73
  %arrayidx28 = getelementptr inbounds i8*, i8** %39, i64 0
  %40 = load i8*, i8** %arrayidx28, align 8, !tbaa !1
  %41 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %base29 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %41, i32 0, i32 45
  store i8* %40, i8** %base29, align 8, !tbaa !71
  %42 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %42, i32 0, i32 14
  %43 = load i32, i32* %height, align 4, !tbaa !75
  %cmp30 = icmp sgt i32 %43, 1
  br i1 %cmp30, label %cond.true.32, label %cond.false.37

cond.true.32:                                     ; preds = %cond.end.22
  %44 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs33 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %44, i32 0, i32 52
  %45 = load i8**, i8*** %line_ptrs33, align 8, !tbaa !73
  %arrayidx34 = getelementptr inbounds i8*, i8** %45, i64 1
  %46 = load i8*, i8** %arrayidx34, align 8, !tbaa !1
  %47 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs35 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %47, i32 0, i32 52
  %48 = load i8**, i8*** %line_ptrs35, align 8, !tbaa !73
  %arrayidx36 = getelementptr inbounds i8*, i8** %48, i64 0
  %49 = load i8*, i8** %arrayidx36, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %46 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %49 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cond.end.41

cond.false.37:                                    ; preds = %cond.end.22
  %50 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %50, i32 0, i32 13
  %51 = load i32, i32* %width, align 4, !tbaa !76
  %52 = load i32, i32* %plane_depth, align 4, !tbaa !5
  %mul = mul nsw i32 %51, %52
  %add = add nsw i32 %mul, 63
  %shr38 = ashr i32 %add, 6
  %shl39 = shl i32 %shr38, 3
  %conv40 = zext i32 %shl39 to i64
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.37, %cond.true.32
  %cond42 = phi i64 [ %sub.ptr.sub, %cond.true.32 ], [ %conv40, %cond.false.37 ]
  %conv43 = trunc i64 %cond42 to i32
  %53 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %53, i32 0, i32 44
  store i32 %conv43, i32* %raster, align 4, !tbaa !77
  %54 = load i64, i64* %c0, align 8, !tbaa !9
  %55 = load i64, i64* %c1, align 8, !tbaa !9
  %cmp44 = icmp eq i64 %54, %55
  br i1 %cmp44, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.41
  %56 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %56, i32 0, i32 42
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 7
  %57 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8, !tbaa !37
  %58 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %59 = load i32, i32* %x.addr, align 4, !tbaa !5
  %60 = load i32, i32* %y.addr, align 4, !tbaa !5
  %61 = load i32, i32* %w.addr, align 4, !tbaa !5
  %62 = load i32, i32* %h.addr, align 4, !tbaa !5
  %63 = load i64, i64* %c0, align 8, !tbaa !9
  %call46 = call i32 %57(%struct.gx_device_s* %58, i32 %59, i32 %60, i32 %61, i32 %62, i64 %63) #4
  br label %if.end

if.else:                                          ; preds = %cond.end.41
  %64 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %procs47 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %64, i32 0, i32 42
  %copy_mono = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs47, i32 0, i32 9
  %65 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono, align 8, !tbaa !38
  %66 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %67 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %68 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %69 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %70 = load i64, i64* %id.addr, align 8, !tbaa !9
  %71 = load i32, i32* %x.addr, align 4, !tbaa !5
  %72 = load i32, i32* %y.addr, align 4, !tbaa !5
  %73 = load i32, i32* %w.addr, align 4, !tbaa !5
  %74 = load i32, i32* %h.addr, align 4, !tbaa !5
  %75 = load i64, i64* %c0, align 8, !tbaa !9
  %76 = load i64, i64* %c1, align 8, !tbaa !9
  %call48 = call i32 %65(%struct.gx_device_s* %66, i8* %67, i32 %68, i32 %69, i64 %70, i32 %71, i32 %72, i32 %73, i32 %74, i64 %75, i64 %76) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %77 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %height49 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %77, i32 0, i32 14
  %78 = load i32, i32* %height49, align 4, !tbaa !75
  %79 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs50 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %79, i32 0, i32 52
  %80 = load i8**, i8*** %line_ptrs50, align 8, !tbaa !73
  %idx.ext = sext i32 %78 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %80, i64 %idx.ext
  store i8** %add.ptr, i8*** %line_ptrs50, align 8, !tbaa !73
  %81 = bitcast i64* %c1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  %82 = bitcast i64* %c0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #1
  %83 = bitcast %struct.gx_device_memory_s** %mdproto to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #1
  %84 = bitcast i64* %mask to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #1
  %85 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #1
  %86 = bitcast i32* %plane_depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %87 = load i32, i32* %pi, align 4, !tbaa !5
  %inc = add nsw i32 %87, 1
  store i32 %inc, i32* %pi, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %depth51 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 0
  %88 = load i32, i32* %depth51, align 4, !tbaa !69
  %conv52 = trunc i32 %88 to i16
  %89 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color_info53 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %89, i32 0, i32 11
  %depth54 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info53, i32 0, i32 3
  store i16 %conv52, i16* %depth54, align 2, !tbaa !11
  %base55 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 1
  %90 = load i8*, i8** %base55, align 8, !tbaa !72
  %91 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %base56 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %91, i32 0, i32 45
  store i8* %90, i8** %base56, align 8, !tbaa !71
  %line_ptrs57 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 2
  %92 = load i8**, i8*** %line_ptrs57, align 8, !tbaa !74
  %93 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs58 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %93, i32 0, i32 52
  store i8** %92, i8*** %line_ptrs58, align 8, !tbaa !73
  %94 = bitcast i32* %pi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  %95 = bitcast %struct.mem_save_params_s* %save to i8*
  call void @llvm.lifetime.end(i64 24, i8* %95) #1
  %96 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @mem_planar_dev_spec_op(%struct.gx_device_s* %pdev, i32 %dev_spec_op, i8* %data, i32 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %dev_spec_op.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %dev_profile = alloca %struct.cmm_dev_profile_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store i32 %dev_spec_op, i32* %dev_spec_op.addr, align 4, !tbaa !5
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  %0 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i32, i32* %dev_spec_op.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %1, 11
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %3 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !80
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 %3(%struct.gx_device_s* %4, %struct.cmm_dev_profile_s** %dev_profile) #4
  %5 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.cmm_dev_profile_s* %5, null
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %6 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %supports_devn = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %6, i32 0, i32 9
  %7 = load i32, i32* %supports_devn, align 4, !tbaa !81
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %land.lhs.true.2, label %if.end

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 42
  %fill_rectangle_hl_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs3, i32 0, i32 54
  %9 = load i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %fill_rectangle_hl_color, align 8, !tbaa !83
  %cmp4 = icmp eq i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* %9, @mem_planar_fill_rectangle_hl_color
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %land.lhs.true.2
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.2, %land.lhs.true, %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %11 = load i32, i32* %dev_spec_op.addr, align 4, !tbaa !5
  %12 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %13 = load i32, i32* %size.addr, align 4, !tbaa !5
  %call7 = call i32 @gx_default_dev_spec_op(%struct.gx_device_s* %10, i32 %11, i8* %12, i32 %13) #4
  store i32 %call7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.6, %if.then.5
  %14 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @mem_planar_copy_color_24to8(%struct.gx_device_s* %dev, i8* %base, i32 %sourcex, i32 %sraster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %base.addr = alloca i8*, align 8
  %sourcex.addr = alloca i32, align 4
  %sraster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %mdev = alloca %struct.gx_device_memory_s*, align 8
  %buf = alloca %union.b_, align 8
  %buf1 = alloca %union.b_, align 8
  %buf2 = alloca %union.b_, align 8
  %save = alloca %struct.mem_save_params_s, align 8
  %mdproto = alloca %struct.gx_device_memory_s*, align 8
  %plane_raster = alloca i32, align 4
  %br = alloca i32, align 4
  %bw = alloca i32, align 4
  %bh = alloca i32, align 4
  %cx = alloca i32, align 4
  %cy = alloca i32, align 4
  %cw = alloca i32, align 4
  %ch = alloca i32, align 4
  %ix = alloca i32, align 4
  %iy = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %sx = alloca i32, align 4
  %source_base = alloca i8*, align 8
  %sptr = alloca i8*, align 8
  %dptr0 = alloca i8*, align 8
  %dptr1 = alloca i8*, align 8
  %dptr2 = alloca i8*, align 8
  %r = alloca i8, align 1
  %g = alloca i8, align 1
  %b111 = alloca i8, align 1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %base, i8** %base.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 %sraster, i32* %sraster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !9
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %2, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %3 = bitcast %union.b_* %buf to i8*
  call void @llvm.lifetime.start(i64 800, i8* %3) #1
  %4 = bitcast %union.b_* %buf1 to i8*
  call void @llvm.lifetime.start(i64 800, i8* %4) #1
  %5 = bitcast %union.b_* %buf2 to i8*
  call void @llvm.lifetime.start(i64 800, i8* %5) #1
  %6 = bitcast %struct.mem_save_params_s* %save to i8*
  call void @llvm.lifetime.start(i64 24, i8* %6) #1
  %7 = bitcast %struct.gx_device_memory_s** %mdproto to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %call = call %struct.gx_device_memory_s* @gdev_mem_device_for_bits(i32 8) #4
  store %struct.gx_device_memory_s* %call, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %8 = bitcast i32* %plane_raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i32, i32* %w.addr, align 4, !tbaa !5
  %shl = shl i32 %9, 3
  %add = add nsw i32 %shl, 63
  %shr = ashr i32 %add, 6
  %shl1 = shl i32 %shr, 3
  store i32 %shl1, i32* %plane_raster, align 4, !tbaa !5
  %10 = bitcast i32* %br to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %bw to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %bh to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %cx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %cy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %cw to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast i32* %ix to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i32* %iy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.2

do.body.2:                                        ; preds = %do.body
  %19 = load i32, i32* %x.addr, align 4, !tbaa !5
  %20 = load i32, i32* %y.addr, align 4, !tbaa !5
  %or = or i32 %19, %20
  %cmp = icmp slt i32 %or, 0
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %do.body.2
  %21 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %21, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %22 = load i32, i32* %x.addr, align 4, !tbaa !5
  %23 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add5 = add nsw i32 %23, %22
  store i32 %add5, i32* %w.addr, align 4, !tbaa !5
  %24 = load i32, i32* %x.addr, align 4, !tbaa !5
  %25 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %25, %24
  store i32 %sub, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 0, i32* %x.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %26 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %26, 0
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %27 = load i32, i32* %y.addr, align 4, !tbaa !5
  %28 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add8 = add nsw i32 %28, %27
  store i32 %add8, i32* %h.addr, align 4, !tbaa !5
  %29 = load i32, i32* %y.addr, align 4, !tbaa !5
  %30 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %29, %30
  %31 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %mul to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %31, i64 %idx.neg
  store i8* %add.ptr, i8** %base.addr, align 8, !tbaa !1
  store i64 0, i64* %id.addr, align 8, !tbaa !9
  store i32 0, i32* %y.addr, align 4, !tbaa !5
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %do.body.2
  %32 = load i32, i32* %w.addr, align 4, !tbaa !5
  %33 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %33, i32 0, i32 13
  %34 = load i32, i32* %width, align 4, !tbaa !84
  %35 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub11 = sub nsw i32 %34, %35
  %cmp12 = icmp sgt i32 %32, %sub11
  br i1 %cmp12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.end.10
  %36 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width14 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %36, i32 0, i32 13
  %37 = load i32, i32* %width14, align 4, !tbaa !84
  %38 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub15 = sub nsw i32 %37, %38
  store i32 %sub15, i32* %w.addr, align 4, !tbaa !5
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %if.end.10
  br label %do.cond

do.cond:                                          ; preds = %if.end.16
  br label %do.end

do.end:                                           ; preds = %do.cond
  %39 = load i32, i32* %h.addr, align 4, !tbaa !5
  %40 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %40, i32 0, i32 14
  %41 = load i32, i32* %height, align 4, !tbaa !53
  %42 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub17 = sub nsw i32 %41, %42
  %cmp18 = icmp sgt i32 %39, %sub17
  br i1 %cmp18, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %do.end
  %43 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height20 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %43, i32 0, i32 14
  %44 = load i32, i32* %height20, align 4, !tbaa !53
  %45 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub21 = sub nsw i32 %44, %45
  store i32 %sub21, i32* %h.addr, align 4, !tbaa !5
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.19, %do.end
  %46 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp23 = icmp sle i32 %46, 0
  br i1 %cmp23, label %if.then.25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.22
  %47 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp24 = icmp sle i32 %47, 0
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %lor.lhs.false, %if.end.22
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %lor.lhs.false
  br label %do.cond.27

do.cond.27:                                       ; preds = %if.end.26
  br label %do.end.28

do.end.28:                                        ; preds = %do.cond.27
  %48 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %48, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %49 = load i16, i16* %depth, align 2, !tbaa !11
  %conv = zext i16 %49 to i32
  %depth29 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 0
  store i32 %conv, i32* %depth29, align 4, !tbaa !69
  %50 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %base30 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %50, i32 0, i32 45
  %51 = load i8*, i8** %base30, align 8, !tbaa !71
  %base31 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 1
  store i8* %51, i8** %base31, align 8, !tbaa !72
  %52 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %52, i32 0, i32 52
  %53 = load i8**, i8*** %line_ptrs, align 8, !tbaa !73
  %line_ptrs32 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 2
  store i8** %53, i8*** %line_ptrs32, align 8, !tbaa !74
  %54 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color_info33 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %54, i32 0, i32 11
  %depth34 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info33, i32 0, i32 3
  store i16 8, i16* %depth34, align 2, !tbaa !11
  %55 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs35 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %55, i32 0, i32 52
  %56 = load i8**, i8*** %line_ptrs35, align 8, !tbaa !73
  %arrayidx = getelementptr inbounds i8*, i8** %56, i64 0
  %57 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %58 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %base36 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %58, i32 0, i32 45
  store i8* %57, i8** %base36, align 8, !tbaa !71
  %59 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %height37 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %59, i32 0, i32 14
  %60 = load i32, i32* %height37, align 4, !tbaa !75
  %cmp38 = icmp sgt i32 %60, 1
  br i1 %cmp38, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.28
  %61 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs40 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %61, i32 0, i32 52
  %62 = load i8**, i8*** %line_ptrs40, align 8, !tbaa !73
  %arrayidx41 = getelementptr inbounds i8*, i8** %62, i64 1
  %63 = load i8*, i8** %arrayidx41, align 8, !tbaa !1
  %64 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs42 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %64, i32 0, i32 52
  %65 = load i8**, i8*** %line_ptrs42, align 8, !tbaa !73
  %arrayidx43 = getelementptr inbounds i8*, i8** %65, i64 0
  %66 = load i8*, i8** %arrayidx43, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %63 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %66 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cond.end

cond.false:                                       ; preds = %do.end.28
  %67 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %width44 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %67, i32 0, i32 13
  %68 = load i32, i32* %width44, align 4, !tbaa !76
  %mul45 = mul nsw i32 %68, 8
  %add46 = add nsw i32 %mul45, 63
  %shr47 = ashr i32 %add46, 6
  %shl48 = shl i32 %shr47, 3
  %conv49 = zext i32 %shl48 to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub.ptr.sub, %cond.true ], [ %conv49, %cond.false ]
  %conv50 = trunc i64 %cond to i32
  %69 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %69, i32 0, i32 44
  store i32 %conv50, i32* %raster, align 4, !tbaa !77
  %70 = load i32, i32* %plane_raster, align 4, !tbaa !5
  %cmp51 = icmp ugt i32 %70, 800
  br i1 %cmp51, label %if.then.53, label %if.else

if.then.53:                                       ; preds = %cond.end
  store i32 800, i32* %br, align 4, !tbaa !5
  store i32 800, i32* %bw, align 4, !tbaa !5
  store i32 1, i32* %bh, align 4, !tbaa !5
  br label %if.end.54

if.else:                                          ; preds = %cond.end
  %71 = load i32, i32* %plane_raster, align 4, !tbaa !5
  store i32 %71, i32* %br, align 4, !tbaa !5
  %72 = load i32, i32* %w.addr, align 4, !tbaa !5
  store i32 %72, i32* %bw, align 4, !tbaa !5
  %73 = load i32, i32* %plane_raster, align 4, !tbaa !5
  %div = udiv i32 800, %73
  store i32 %div, i32* %bh, align 4, !tbaa !5
  br label %if.end.54

if.end.54:                                        ; preds = %if.else, %if.then.53
  %74 = load i32, i32* %y.addr, align 4, !tbaa !5
  store i32 %74, i32* %cy, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.150, %if.end.54
  %75 = load i32, i32* %cy, align 4, !tbaa !5
  %76 = load i32, i32* %y.addr, align 4, !tbaa !5
  %77 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add55 = add nsw i32 %76, %77
  %cmp56 = icmp slt i32 %75, %add55
  br i1 %cmp56, label %for.body, label %for.end.152

for.body:                                         ; preds = %for.cond
  %78 = load i32, i32* %bh, align 4, !tbaa !5
  %79 = load i32, i32* %y.addr, align 4, !tbaa !5
  %80 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add58 = add nsw i32 %79, %80
  %81 = load i32, i32* %cy, align 4, !tbaa !5
  %sub59 = sub nsw i32 %add58, %81
  %cmp60 = icmp slt i32 %78, %sub59
  br i1 %cmp60, label %cond.true.62, label %cond.false.63

cond.true.62:                                     ; preds = %for.body
  %82 = load i32, i32* %bh, align 4, !tbaa !5
  br label %cond.end.66

cond.false.63:                                    ; preds = %for.body
  %83 = load i32, i32* %y.addr, align 4, !tbaa !5
  %84 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add64 = add nsw i32 %83, %84
  %85 = load i32, i32* %cy, align 4, !tbaa !5
  %sub65 = sub nsw i32 %add64, %85
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.false.63, %cond.true.62
  %cond67 = phi i32 [ %82, %cond.true.62 ], [ %sub65, %cond.false.63 ]
  store i32 %cond67, i32* %ch, align 4, !tbaa !5
  %86 = load i32, i32* %x.addr, align 4, !tbaa !5
  store i32 %86, i32* %cx, align 4, !tbaa !5
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc.147, %cond.end.66
  %87 = load i32, i32* %cx, align 4, !tbaa !5
  %88 = load i32, i32* %x.addr, align 4, !tbaa !5
  %89 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add69 = add nsw i32 %88, %89
  %cmp70 = icmp slt i32 %87, %add69
  br i1 %cmp70, label %for.body.72, label %for.end.149

for.body.72:                                      ; preds = %for.cond.68
  %90 = bitcast i32* %sx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %90) #1
  %91 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %92 = load i32, i32* %cx, align 4, !tbaa !5
  %add73 = add nsw i32 %91, %92
  %93 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub74 = sub nsw i32 %add73, %93
  store i32 %sub74, i32* %sx, align 4, !tbaa !5
  %94 = bitcast i8** %source_base to i8*
  call void @llvm.lifetime.start(i64 8, i8* %94) #1
  %95 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %96 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %97 = load i32, i32* %cy, align 4, !tbaa !5
  %98 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub75 = sub nsw i32 %97, %98
  %mul76 = mul nsw i32 %96, %sub75
  %idx.ext77 = sext i32 %mul76 to i64
  %add.ptr78 = getelementptr inbounds i8, i8* %95, i64 %idx.ext77
  store i8* %add.ptr78, i8** %source_base, align 8, !tbaa !1
  %99 = load i32, i32* %bw, align 4, !tbaa !5
  %100 = load i32, i32* %x.addr, align 4, !tbaa !5
  %101 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add79 = add nsw i32 %100, %101
  %102 = load i32, i32* %cx, align 4, !tbaa !5
  %sub80 = sub nsw i32 %add79, %102
  %cmp81 = icmp slt i32 %99, %sub80
  br i1 %cmp81, label %cond.true.83, label %cond.false.84

cond.true.83:                                     ; preds = %for.body.72
  %103 = load i32, i32* %bw, align 4, !tbaa !5
  br label %cond.end.87

cond.false.84:                                    ; preds = %for.body.72
  %104 = load i32, i32* %x.addr, align 4, !tbaa !5
  %105 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add85 = add nsw i32 %104, %105
  %106 = load i32, i32* %cx, align 4, !tbaa !5
  %sub86 = sub nsw i32 %add85, %106
  br label %cond.end.87

cond.end.87:                                      ; preds = %cond.false.84, %cond.true.83
  %cond88 = phi i32 [ %103, %cond.true.83 ], [ %sub86, %cond.false.84 ]
  store i32 %cond88, i32* %cw, align 4, !tbaa !5
  %107 = load i32, i32* %sx, align 4, !tbaa !5
  %mul89 = mul nsw i32 %107, 3
  %108 = load i8*, i8** %source_base, align 8, !tbaa !1
  %idx.ext90 = sext i32 %mul89 to i64
  %add.ptr91 = getelementptr inbounds i8, i8* %108, i64 %idx.ext90
  store i8* %add.ptr91, i8** %source_base, align 8, !tbaa !1
  store i32 0, i32* %iy, align 4, !tbaa !5
  br label %for.cond.92

for.cond.92:                                      ; preds = %for.inc, %cond.end.87
  %109 = load i32, i32* %iy, align 4, !tbaa !5
  %110 = load i32, i32* %ch, align 4, !tbaa !5
  %cmp93 = icmp slt i32 %109, %110
  br i1 %cmp93, label %for.body.95, label %for.end

for.body.95:                                      ; preds = %for.cond.92
  %111 = bitcast i8** %sptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %111) #1
  %112 = load i8*, i8** %source_base, align 8, !tbaa !1
  store i8* %112, i8** %sptr, align 8, !tbaa !1
  %113 = bitcast i8** %dptr0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %113) #1
  %b = bitcast %union.b_* %buf to [800 x i8]*
  %arraydecay = getelementptr inbounds [800 x i8], [800 x i8]* %b, i32 0, i32 0
  %114 = load i32, i32* %br, align 4, !tbaa !5
  %115 = load i32, i32* %iy, align 4, !tbaa !5
  %mul96 = mul nsw i32 %114, %115
  %idx.ext97 = sext i32 %mul96 to i64
  %add.ptr98 = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext97
  store i8* %add.ptr98, i8** %dptr0, align 8, !tbaa !1
  %116 = bitcast i8** %dptr1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %116) #1
  %b99 = bitcast %union.b_* %buf1 to [800 x i8]*
  %arraydecay100 = getelementptr inbounds [800 x i8], [800 x i8]* %b99, i32 0, i32 0
  %117 = load i32, i32* %br, align 4, !tbaa !5
  %118 = load i32, i32* %iy, align 4, !tbaa !5
  %mul101 = mul nsw i32 %117, %118
  %idx.ext102 = sext i32 %mul101 to i64
  %add.ptr103 = getelementptr inbounds i8, i8* %arraydecay100, i64 %idx.ext102
  store i8* %add.ptr103, i8** %dptr1, align 8, !tbaa !1
  %119 = bitcast i8** %dptr2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %119) #1
  %b104 = bitcast %union.b_* %buf2 to [800 x i8]*
  %arraydecay105 = getelementptr inbounds [800 x i8], [800 x i8]* %b104, i32 0, i32 0
  %120 = load i32, i32* %br, align 4, !tbaa !5
  %121 = load i32, i32* %iy, align 4, !tbaa !5
  %mul106 = mul nsw i32 %120, %121
  %idx.ext107 = sext i32 %mul106 to i64
  %add.ptr108 = getelementptr inbounds i8, i8* %arraydecay105, i64 %idx.ext107
  store i8* %add.ptr108, i8** %dptr2, align 8, !tbaa !1
  %122 = load i32, i32* %cw, align 4, !tbaa !5
  store i32 %122, i32* %ix, align 4, !tbaa !5
  br label %do.body.109

do.body.109:                                      ; preds = %do.cond.116, %for.body.95
  call void @llvm.lifetime.start(i64 1, i8* %r) #1
  %123 = load i8*, i8** %sptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %incdec.ptr, i8** %sptr, align 8, !tbaa !1
  %124 = load i8, i8* %123, align 1, !tbaa !85
  store i8 %124, i8* %r, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %g) #1
  %125 = load i8*, i8** %sptr, align 8, !tbaa !1
  %incdec.ptr110 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %incdec.ptr110, i8** %sptr, align 8, !tbaa !1
  %126 = load i8, i8* %125, align 1, !tbaa !85
  store i8 %126, i8* %g, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %b111) #1
  %127 = load i8*, i8** %sptr, align 8, !tbaa !1
  %incdec.ptr112 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %incdec.ptr112, i8** %sptr, align 8, !tbaa !1
  %128 = load i8, i8* %127, align 1, !tbaa !85
  store i8 %128, i8* %b111, align 1, !tbaa !85
  %129 = load i8, i8* %r, align 1, !tbaa !85
  %130 = load i8*, i8** %dptr0, align 8, !tbaa !1
  %incdec.ptr113 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %incdec.ptr113, i8** %dptr0, align 8, !tbaa !1
  store i8 %129, i8* %130, align 1, !tbaa !85
  %131 = load i8, i8* %g, align 1, !tbaa !85
  %132 = load i8*, i8** %dptr1, align 8, !tbaa !1
  %incdec.ptr114 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %incdec.ptr114, i8** %dptr1, align 8, !tbaa !1
  store i8 %131, i8* %132, align 1, !tbaa !85
  %133 = load i8, i8* %b111, align 1, !tbaa !85
  %134 = load i8*, i8** %dptr2, align 8, !tbaa !1
  %incdec.ptr115 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %incdec.ptr115, i8** %dptr2, align 8, !tbaa !1
  store i8 %133, i8* %134, align 1, !tbaa !85
  call void @llvm.lifetime.end(i64 1, i8* %b111) #1
  call void @llvm.lifetime.end(i64 1, i8* %g) #1
  call void @llvm.lifetime.end(i64 1, i8* %r) #1
  br label %do.cond.116

do.cond.116:                                      ; preds = %do.body.109
  %135 = load i32, i32* %ix, align 4, !tbaa !5
  %dec = add nsw i32 %135, -1
  store i32 %dec, i32* %ix, align 4, !tbaa !5
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body.109, label %do.end.117

do.end.117:                                       ; preds = %do.cond.116
  %136 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %137 = load i8*, i8** %source_base, align 8, !tbaa !1
  %idx.ext118 = sext i32 %136 to i64
  %add.ptr119 = getelementptr inbounds i8, i8* %137, i64 %idx.ext118
  store i8* %add.ptr119, i8** %source_base, align 8, !tbaa !1
  %138 = bitcast i8** %dptr2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %138) #1
  %139 = bitcast i8** %dptr1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %139) #1
  %140 = bitcast i8** %dptr0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %140) #1
  %141 = bitcast i8** %sptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %141) #1
  br label %for.inc

for.inc:                                          ; preds = %do.end.117
  %142 = load i32, i32* %iy, align 4, !tbaa !5
  %inc = add nsw i32 %142, 1
  store i32 %inc, i32* %iy, align 4, !tbaa !5
  br label %for.cond.92

for.end:                                          ; preds = %for.cond.92
  %143 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %143, i32 0, i32 42
  %copy_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 10
  %144 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %copy_color, align 8, !tbaa !39
  %145 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %b120 = bitcast %union.b_* %buf to [800 x i8]*
  %arraydecay121 = getelementptr inbounds [800 x i8], [800 x i8]* %b120, i32 0, i32 0
  %146 = load i32, i32* %br, align 4, !tbaa !5
  %147 = load i32, i32* %cx, align 4, !tbaa !5
  %148 = load i32, i32* %cy, align 4, !tbaa !5
  %149 = load i32, i32* %cw, align 4, !tbaa !5
  %150 = load i32, i32* %ch, align 4, !tbaa !5
  %call122 = call i32 %144(%struct.gx_device_s* %145, i8* %arraydecay121, i32 0, i32 %146, i64 0, i32 %147, i32 %148, i32 %149, i32 %150) #4
  %151 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %height123 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %151, i32 0, i32 14
  %152 = load i32, i32* %height123, align 4, !tbaa !75
  %153 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs124 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %153, i32 0, i32 52
  %154 = load i8**, i8*** %line_ptrs124, align 8, !tbaa !73
  %idx.ext125 = sext i32 %152 to i64
  %add.ptr126 = getelementptr inbounds i8*, i8** %154, i64 %idx.ext125
  store i8** %add.ptr126, i8*** %line_ptrs124, align 8, !tbaa !73
  %155 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %procs127 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %155, i32 0, i32 42
  %copy_color128 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs127, i32 0, i32 10
  %156 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %copy_color128, align 8, !tbaa !39
  %157 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %b129 = bitcast %union.b_* %buf1 to [800 x i8]*
  %arraydecay130 = getelementptr inbounds [800 x i8], [800 x i8]* %b129, i32 0, i32 0
  %158 = load i32, i32* %br, align 4, !tbaa !5
  %159 = load i32, i32* %cx, align 4, !tbaa !5
  %160 = load i32, i32* %cy, align 4, !tbaa !5
  %161 = load i32, i32* %cw, align 4, !tbaa !5
  %162 = load i32, i32* %ch, align 4, !tbaa !5
  %call131 = call i32 %156(%struct.gx_device_s* %157, i8* %arraydecay130, i32 0, i32 %158, i64 0, i32 %159, i32 %160, i32 %161, i32 %162) #4
  %163 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %height132 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %163, i32 0, i32 14
  %164 = load i32, i32* %height132, align 4, !tbaa !75
  %165 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs133 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %165, i32 0, i32 52
  %166 = load i8**, i8*** %line_ptrs133, align 8, !tbaa !73
  %idx.ext134 = sext i32 %164 to i64
  %add.ptr135 = getelementptr inbounds i8*, i8** %166, i64 %idx.ext134
  store i8** %add.ptr135, i8*** %line_ptrs133, align 8, !tbaa !73
  %167 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %procs136 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %167, i32 0, i32 42
  %copy_color137 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs136, i32 0, i32 10
  %168 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %copy_color137, align 8, !tbaa !39
  %169 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %b138 = bitcast %union.b_* %buf2 to [800 x i8]*
  %arraydecay139 = getelementptr inbounds [800 x i8], [800 x i8]* %b138, i32 0, i32 0
  %170 = load i32, i32* %br, align 4, !tbaa !5
  %171 = load i32, i32* %cx, align 4, !tbaa !5
  %172 = load i32, i32* %cy, align 4, !tbaa !5
  %173 = load i32, i32* %cw, align 4, !tbaa !5
  %174 = load i32, i32* %ch, align 4, !tbaa !5
  %call140 = call i32 %168(%struct.gx_device_s* %169, i8* %arraydecay139, i32 0, i32 %170, i64 0, i32 %171, i32 %172, i32 %173, i32 %174) #4
  %175 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %height141 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %175, i32 0, i32 14
  %176 = load i32, i32* %height141, align 4, !tbaa !75
  %mul142 = mul nsw i32 2, %176
  %177 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs143 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %177, i32 0, i32 52
  %178 = load i8**, i8*** %line_ptrs143, align 8, !tbaa !73
  %idx.ext144 = sext i32 %mul142 to i64
  %idx.neg145 = sub i64 0, %idx.ext144
  %add.ptr146 = getelementptr inbounds i8*, i8** %178, i64 %idx.neg145
  store i8** %add.ptr146, i8*** %line_ptrs143, align 8, !tbaa !73
  %179 = bitcast i8** %source_base to i8*
  call void @llvm.lifetime.end(i64 8, i8* %179) #1
  %180 = bitcast i32* %sx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %180) #1
  br label %for.inc.147

for.inc.147:                                      ; preds = %for.end
  %181 = load i32, i32* %cw, align 4, !tbaa !5
  %182 = load i32, i32* %cx, align 4, !tbaa !5
  %add148 = add nsw i32 %182, %181
  store i32 %add148, i32* %cx, align 4, !tbaa !5
  br label %for.cond.68

for.end.149:                                      ; preds = %for.cond.68
  br label %for.inc.150

for.inc.150:                                      ; preds = %for.end.149
  %183 = load i32, i32* %ch, align 4, !tbaa !5
  %184 = load i32, i32* %cy, align 4, !tbaa !5
  %add151 = add nsw i32 %184, %183
  store i32 %add151, i32* %cy, align 4, !tbaa !5
  br label %for.cond

for.end.152:                                      ; preds = %for.cond
  %depth153 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 0
  %185 = load i32, i32* %depth153, align 4, !tbaa !69
  %conv154 = trunc i32 %185 to i16
  %186 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color_info155 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %186, i32 0, i32 11
  %depth156 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info155, i32 0, i32 3
  store i16 %conv154, i16* %depth156, align 2, !tbaa !11
  %base157 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 1
  %187 = load i8*, i8** %base157, align 8, !tbaa !72
  %188 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %base158 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %188, i32 0, i32 45
  store i8* %187, i8** %base158, align 8, !tbaa !71
  %line_ptrs159 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 2
  %189 = load i8**, i8*** %line_ptrs159, align 8, !tbaa !74
  %190 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs160 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %190, i32 0, i32 52
  store i8** %189, i8*** %line_ptrs160, align 8, !tbaa !73
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.152, %if.then.25
  %191 = bitcast i32* %iy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %191) #1
  %192 = bitcast i32* %ix to i8*
  call void @llvm.lifetime.end(i64 4, i8* %192) #1
  %193 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.end(i64 4, i8* %193) #1
  %194 = bitcast i32* %cw to i8*
  call void @llvm.lifetime.end(i64 4, i8* %194) #1
  %195 = bitcast i32* %cy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %195) #1
  %196 = bitcast i32* %cx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %196) #1
  %197 = bitcast i32* %bh to i8*
  call void @llvm.lifetime.end(i64 4, i8* %197) #1
  %198 = bitcast i32* %bw to i8*
  call void @llvm.lifetime.end(i64 4, i8* %198) #1
  %199 = bitcast i32* %br to i8*
  call void @llvm.lifetime.end(i64 4, i8* %199) #1
  %200 = bitcast i32* %plane_raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %200) #1
  %201 = bitcast %struct.gx_device_memory_s** %mdproto to i8*
  call void @llvm.lifetime.end(i64 8, i8* %201) #1
  %202 = bitcast %struct.mem_save_params_s* %save to i8*
  call void @llvm.lifetime.end(i64 24, i8* %202) #1
  %203 = bitcast %union.b_* %buf2 to i8*
  call void @llvm.lifetime.end(i64 800, i8* %203) #1
  %204 = bitcast %union.b_* %buf1 to i8*
  call void @llvm.lifetime.end(i64 800, i8* %204) #1
  %205 = bitcast %union.b_* %buf to i8*
  call void @llvm.lifetime.end(i64 800, i8* %205) #1
  %206 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %206) #1
  %207 = load i32, i32* %retval
  ret i32 %207
}

; Function Attrs: nounwind uwtable
define internal i32 @mem_planar_copy_color_4to1(%struct.gx_device_s* %dev, i8* %base, i32 %sourcex, i32 %sraster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %base.addr = alloca i8*, align 8
  %sourcex.addr = alloca i32, align 4
  %sraster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %mdev = alloca %struct.gx_device_memory_s*, align 8
  %buf0 = alloca %union.b_.1, align 8
  %buf1 = alloca %union.b_.1, align 8
  %buf2 = alloca %union.b_.1, align 8
  %buf3 = alloca %union.b_.1, align 8
  %save = alloca %struct.mem_save_params_s, align 8
  %mdproto = alloca %struct.gx_device_memory_s*, align 8
  %plane_raster = alloca i32, align 4
  %br = alloca i32, align 4
  %bw = alloca i32, align 4
  %bh = alloca i32, align 4
  %cx = alloca i32, align 4
  %cy = alloca i32, align 4
  %cw = alloca i32, align 4
  %ch = alloca i32, align 4
  %ix = alloca i32, align 4
  %iy = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %sx = alloca i32, align 4
  %source_base = alloca i8*, align 8
  %sptr = alloca i8*, align 8
  %dptr0 = alloca i8*, align 8
  %dptr1 = alloca i8*, align 8
  %dptr2 = alloca i8*, align 8
  %dptr3 = alloca i8*, align 8
  %roll = alloca i32, align 4
  %cmyk = alloca i32, align 4
  %sptr163 = alloca i8*, align 8
  %dptr0164 = alloca i8*, align 8
  %dptr1170 = alloca i8*, align 8
  %dptr2176 = alloca i8*, align 8
  %dptr3182 = alloca i8*, align 8
  %roll188 = alloca i32, align 4
  %cmyk189 = alloca i32, align 4
  %b190 = alloca i8, align 1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %base, i8** %base.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 %sraster, i32* %sraster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !9
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %2, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %3 = bitcast %union.b_.1* %buf0 to i8*
  call void @llvm.lifetime.start(i64 800, i8* %3) #1
  %4 = bitcast %union.b_.1* %buf1 to i8*
  call void @llvm.lifetime.start(i64 800, i8* %4) #1
  %5 = bitcast %union.b_.1* %buf2 to i8*
  call void @llvm.lifetime.start(i64 800, i8* %5) #1
  %6 = bitcast %union.b_.1* %buf3 to i8*
  call void @llvm.lifetime.start(i64 800, i8* %6) #1
  %7 = bitcast %struct.mem_save_params_s* %save to i8*
  call void @llvm.lifetime.start(i64 24, i8* %7) #1
  %8 = bitcast %struct.gx_device_memory_s** %mdproto to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %call = call %struct.gx_device_memory_s* @gdev_mem_device_for_bits(i32 1) #4
  store %struct.gx_device_memory_s* %call, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %9 = bitcast i32* %plane_raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add = add nsw i32 %10, 63
  %shr = ashr i32 %add, 6
  %shl = shl i32 %shr, 3
  store i32 %shl, i32* %plane_raster, align 4, !tbaa !5
  %11 = bitcast i32* %br to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %bw to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %bh to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %cx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %cy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %cw to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i32* %ix to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast i32* %iy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %20 = load i32, i32* %x.addr, align 4, !tbaa !5
  %21 = load i32, i32* %y.addr, align 4, !tbaa !5
  %or = or i32 %20, %21
  %cmp = icmp slt i32 %or, 0
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %do.body.1
  %22 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %22, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %23 = load i32, i32* %x.addr, align 4, !tbaa !5
  %24 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add4 = add nsw i32 %24, %23
  store i32 %add4, i32* %w.addr, align 4, !tbaa !5
  %25 = load i32, i32* %x.addr, align 4, !tbaa !5
  %26 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %26, %25
  store i32 %sub, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 0, i32* %x.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %27 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %27, 0
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %28 = load i32, i32* %y.addr, align 4, !tbaa !5
  %29 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add7 = add nsw i32 %29, %28
  store i32 %add7, i32* %h.addr, align 4, !tbaa !5
  %30 = load i32, i32* %y.addr, align 4, !tbaa !5
  %31 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %30, %31
  %32 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %mul to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %32, i64 %idx.neg
  store i8* %add.ptr, i8** %base.addr, align 8, !tbaa !1
  store i64 0, i64* %id.addr, align 8, !tbaa !9
  store i32 0, i32* %y.addr, align 4, !tbaa !5
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %do.body.1
  %33 = load i32, i32* %w.addr, align 4, !tbaa !5
  %34 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %34, i32 0, i32 13
  %35 = load i32, i32* %width, align 4, !tbaa !84
  %36 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub10 = sub nsw i32 %35, %36
  %cmp11 = icmp sgt i32 %33, %sub10
  br i1 %cmp11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %if.end.9
  %37 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width13 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %37, i32 0, i32 13
  %38 = load i32, i32* %width13, align 4, !tbaa !84
  %39 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub14 = sub nsw i32 %38, %39
  store i32 %sub14, i32* %w.addr, align 4, !tbaa !5
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %if.end.9
  br label %do.cond

do.cond:                                          ; preds = %if.end.15
  br label %do.end

do.end:                                           ; preds = %do.cond
  %40 = load i32, i32* %h.addr, align 4, !tbaa !5
  %41 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %41, i32 0, i32 14
  %42 = load i32, i32* %height, align 4, !tbaa !53
  %43 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub16 = sub nsw i32 %42, %43
  %cmp17 = icmp sgt i32 %40, %sub16
  br i1 %cmp17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %do.end
  %44 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height19 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %44, i32 0, i32 14
  %45 = load i32, i32* %height19, align 4, !tbaa !53
  %46 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub20 = sub nsw i32 %45, %46
  store i32 %sub20, i32* %h.addr, align 4, !tbaa !5
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %do.end
  %47 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp22 = icmp sle i32 %47, 0
  br i1 %cmp22, label %if.then.24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.21
  %48 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp23 = icmp sle i32 %48, 0
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %lor.lhs.false, %if.end.21
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %lor.lhs.false
  br label %do.cond.26

do.cond.26:                                       ; preds = %if.end.25
  br label %do.end.27

do.end.27:                                        ; preds = %do.cond.26
  %49 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %49, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %50 = load i16, i16* %depth, align 2, !tbaa !11
  %conv = zext i16 %50 to i32
  %depth28 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 0
  store i32 %conv, i32* %depth28, align 4, !tbaa !69
  %51 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %base29 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %51, i32 0, i32 45
  %52 = load i8*, i8** %base29, align 8, !tbaa !71
  %base30 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 1
  store i8* %52, i8** %base30, align 8, !tbaa !72
  %53 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %53, i32 0, i32 52
  %54 = load i8**, i8*** %line_ptrs, align 8, !tbaa !73
  %line_ptrs31 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 2
  store i8** %54, i8*** %line_ptrs31, align 8, !tbaa !74
  %55 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color_info32 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %55, i32 0, i32 11
  %depth33 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info32, i32 0, i32 3
  store i16 1, i16* %depth33, align 2, !tbaa !11
  %56 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs34 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %56, i32 0, i32 52
  %57 = load i8**, i8*** %line_ptrs34, align 8, !tbaa !73
  %arrayidx = getelementptr inbounds i8*, i8** %57, i64 0
  %58 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %59 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %base35 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %59, i32 0, i32 45
  store i8* %58, i8** %base35, align 8, !tbaa !71
  %60 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %height36 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %60, i32 0, i32 14
  %61 = load i32, i32* %height36, align 4, !tbaa !75
  %cmp37 = icmp sgt i32 %61, 1
  br i1 %cmp37, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.27
  %62 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs39 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %62, i32 0, i32 52
  %63 = load i8**, i8*** %line_ptrs39, align 8, !tbaa !73
  %arrayidx40 = getelementptr inbounds i8*, i8** %63, i64 1
  %64 = load i8*, i8** %arrayidx40, align 8, !tbaa !1
  %65 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs41 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %65, i32 0, i32 52
  %66 = load i8**, i8*** %line_ptrs41, align 8, !tbaa !73
  %arrayidx42 = getelementptr inbounds i8*, i8** %66, i64 0
  %67 = load i8*, i8** %arrayidx42, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %64 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %67 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cond.end

cond.false:                                       ; preds = %do.end.27
  %68 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %width43 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %68, i32 0, i32 13
  %69 = load i32, i32* %width43, align 4, !tbaa !76
  %mul44 = mul nsw i32 %69, 1
  %add45 = add nsw i32 %mul44, 63
  %shr46 = ashr i32 %add45, 6
  %shl47 = shl i32 %shr46, 3
  %conv48 = zext i32 %shl47 to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub.ptr.sub, %cond.true ], [ %conv48, %cond.false ]
  %conv49 = trunc i64 %cond to i32
  %70 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %70, i32 0, i32 44
  store i32 %conv49, i32* %raster, align 4, !tbaa !77
  %71 = load i32, i32* %plane_raster, align 4, !tbaa !5
  %cmp50 = icmp ugt i32 %71, 800
  br i1 %cmp50, label %if.then.52, label %if.else

if.then.52:                                       ; preds = %cond.end
  store i32 800, i32* %br, align 4, !tbaa !5
  store i32 6400, i32* %bw, align 4, !tbaa !5
  store i32 1, i32* %bh, align 4, !tbaa !5
  br label %if.end.53

if.else:                                          ; preds = %cond.end
  %72 = load i32, i32* %plane_raster, align 4, !tbaa !5
  store i32 %72, i32* %br, align 4, !tbaa !5
  %73 = load i32, i32* %w.addr, align 4, !tbaa !5
  store i32 %73, i32* %bw, align 4, !tbaa !5
  %74 = load i32, i32* %plane_raster, align 4, !tbaa !5
  %div = udiv i32 800, %74
  store i32 %div, i32* %bh, align 4, !tbaa !5
  br label %if.end.53

if.end.53:                                        ; preds = %if.else, %if.then.52
  %75 = load i32, i32* %y.addr, align 4, !tbaa !5
  store i32 %75, i32* %cy, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.294, %if.end.53
  %76 = load i32, i32* %cy, align 4, !tbaa !5
  %77 = load i32, i32* %y.addr, align 4, !tbaa !5
  %78 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add54 = add nsw i32 %77, %78
  %cmp55 = icmp slt i32 %76, %add54
  br i1 %cmp55, label %for.body, label %for.end.296

for.body:                                         ; preds = %for.cond
  %79 = load i32, i32* %bh, align 4, !tbaa !5
  %80 = load i32, i32* %y.addr, align 4, !tbaa !5
  %81 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add57 = add nsw i32 %80, %81
  %82 = load i32, i32* %cy, align 4, !tbaa !5
  %sub58 = sub nsw i32 %add57, %82
  %cmp59 = icmp slt i32 %79, %sub58
  br i1 %cmp59, label %cond.true.61, label %cond.false.62

cond.true.61:                                     ; preds = %for.body
  %83 = load i32, i32* %bh, align 4, !tbaa !5
  br label %cond.end.65

cond.false.62:                                    ; preds = %for.body
  %84 = load i32, i32* %y.addr, align 4, !tbaa !5
  %85 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add63 = add nsw i32 %84, %85
  %86 = load i32, i32* %cy, align 4, !tbaa !5
  %sub64 = sub nsw i32 %add63, %86
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.false.62, %cond.true.61
  %cond66 = phi i32 [ %83, %cond.true.61 ], [ %sub64, %cond.false.62 ]
  store i32 %cond66, i32* %ch, align 4, !tbaa !5
  %87 = load i32, i32* %x.addr, align 4, !tbaa !5
  store i32 %87, i32* %cx, align 4, !tbaa !5
  br label %for.cond.67

for.cond.67:                                      ; preds = %for.inc.291, %cond.end.65
  %88 = load i32, i32* %cx, align 4, !tbaa !5
  %89 = load i32, i32* %x.addr, align 4, !tbaa !5
  %90 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add68 = add nsw i32 %89, %90
  %cmp69 = icmp slt i32 %88, %add68
  br i1 %cmp69, label %for.body.71, label %for.end.293

for.body.71:                                      ; preds = %for.cond.67
  %91 = bitcast i32* %sx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %91) #1
  %92 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %93 = load i32, i32* %cx, align 4, !tbaa !5
  %add72 = add nsw i32 %92, %93
  %94 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub73 = sub nsw i32 %add72, %94
  store i32 %sub73, i32* %sx, align 4, !tbaa !5
  %95 = bitcast i8** %source_base to i8*
  call void @llvm.lifetime.start(i64 8, i8* %95) #1
  %96 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %97 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %98 = load i32, i32* %cy, align 4, !tbaa !5
  %99 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub74 = sub nsw i32 %98, %99
  %mul75 = mul nsw i32 %97, %sub74
  %idx.ext76 = sext i32 %mul75 to i64
  %add.ptr77 = getelementptr inbounds i8, i8* %96, i64 %idx.ext76
  %100 = load i32, i32* %sx, align 4, !tbaa !5
  %shr78 = ashr i32 %100, 1
  %idx.ext79 = sext i32 %shr78 to i64
  %add.ptr80 = getelementptr inbounds i8, i8* %add.ptr77, i64 %idx.ext79
  store i8* %add.ptr80, i8** %source_base, align 8, !tbaa !1
  %101 = load i32, i32* %bw, align 4, !tbaa !5
  %102 = load i32, i32* %x.addr, align 4, !tbaa !5
  %103 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add81 = add nsw i32 %102, %103
  %104 = load i32, i32* %cx, align 4, !tbaa !5
  %sub82 = sub nsw i32 %add81, %104
  %cmp83 = icmp slt i32 %101, %sub82
  br i1 %cmp83, label %cond.true.85, label %cond.false.86

cond.true.85:                                     ; preds = %for.body.71
  %105 = load i32, i32* %bw, align 4, !tbaa !5
  br label %cond.end.89

cond.false.86:                                    ; preds = %for.body.71
  %106 = load i32, i32* %x.addr, align 4, !tbaa !5
  %107 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add87 = add nsw i32 %106, %107
  %108 = load i32, i32* %cx, align 4, !tbaa !5
  %sub88 = sub nsw i32 %add87, %108
  br label %cond.end.89

cond.end.89:                                      ; preds = %cond.false.86, %cond.true.85
  %cond90 = phi i32 [ %105, %cond.true.85 ], [ %sub88, %cond.false.86 ]
  store i32 %cond90, i32* %cw, align 4, !tbaa !5
  %109 = load i32, i32* %sx, align 4, !tbaa !5
  %and = and i32 %109, 1
  %cmp91 = icmp eq i32 %and, 0
  br i1 %cmp91, label %if.then.93, label %if.else.158

if.then.93:                                       ; preds = %cond.end.89
  store i32 0, i32* %iy, align 4, !tbaa !5
  br label %for.cond.94

for.cond.94:                                      ; preds = %for.inc, %if.then.93
  %110 = load i32, i32* %iy, align 4, !tbaa !5
  %111 = load i32, i32* %ch, align 4, !tbaa !5
  %cmp95 = icmp slt i32 %110, %111
  br i1 %cmp95, label %for.body.97, label %for.end

for.body.97:                                      ; preds = %for.cond.94
  %112 = bitcast i8** %sptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %112) #1
  %113 = load i8*, i8** %source_base, align 8, !tbaa !1
  store i8* %113, i8** %sptr, align 8, !tbaa !1
  %114 = bitcast i8** %dptr0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %114) #1
  %b = bitcast %union.b_.1* %buf0 to [800 x i8]*
  %arraydecay = getelementptr inbounds [800 x i8], [800 x i8]* %b, i32 0, i32 0
  %115 = load i32, i32* %br, align 4, !tbaa !5
  %116 = load i32, i32* %iy, align 4, !tbaa !5
  %mul98 = mul nsw i32 %115, %116
  %idx.ext99 = sext i32 %mul98 to i64
  %add.ptr100 = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext99
  store i8* %add.ptr100, i8** %dptr0, align 8, !tbaa !1
  %117 = bitcast i8** %dptr1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %117) #1
  %b101 = bitcast %union.b_.1* %buf1 to [800 x i8]*
  %arraydecay102 = getelementptr inbounds [800 x i8], [800 x i8]* %b101, i32 0, i32 0
  %118 = load i32, i32* %br, align 4, !tbaa !5
  %119 = load i32, i32* %iy, align 4, !tbaa !5
  %mul103 = mul nsw i32 %118, %119
  %idx.ext104 = sext i32 %mul103 to i64
  %add.ptr105 = getelementptr inbounds i8, i8* %arraydecay102, i64 %idx.ext104
  store i8* %add.ptr105, i8** %dptr1, align 8, !tbaa !1
  %120 = bitcast i8** %dptr2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %120) #1
  %b106 = bitcast %union.b_.1* %buf2 to [800 x i8]*
  %arraydecay107 = getelementptr inbounds [800 x i8], [800 x i8]* %b106, i32 0, i32 0
  %121 = load i32, i32* %br, align 4, !tbaa !5
  %122 = load i32, i32* %iy, align 4, !tbaa !5
  %mul108 = mul nsw i32 %121, %122
  %idx.ext109 = sext i32 %mul108 to i64
  %add.ptr110 = getelementptr inbounds i8, i8* %arraydecay107, i64 %idx.ext109
  store i8* %add.ptr110, i8** %dptr2, align 8, !tbaa !1
  %123 = bitcast i8** %dptr3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %123) #1
  %b111 = bitcast %union.b_.1* %buf3 to [800 x i8]*
  %arraydecay112 = getelementptr inbounds [800 x i8], [800 x i8]* %b111, i32 0, i32 0
  %124 = load i32, i32* %br, align 4, !tbaa !5
  %125 = load i32, i32* %iy, align 4, !tbaa !5
  %mul113 = mul nsw i32 %124, %125
  %idx.ext114 = sext i32 %mul113 to i64
  %add.ptr115 = getelementptr inbounds i8, i8* %arraydecay112, i64 %idx.ext114
  store i8* %add.ptr115, i8** %dptr3, align 8, !tbaa !1
  %126 = bitcast i32* %roll to i8*
  call void @llvm.lifetime.start(i64 4, i8* %126) #1
  store i32 6, i32* %roll, align 4, !tbaa !5
  %127 = bitcast i32* %cmyk to i8*
  call void @llvm.lifetime.start(i64 4, i8* %127) #1
  store i32 0, i32* %cmyk, align 4, !tbaa !5
  %128 = load i32, i32* %cw, align 4, !tbaa !5
  store i32 %128, i32* %ix, align 4, !tbaa !5
  br label %do.body.116

do.body.116:                                      ; preds = %do.cond.137, %for.body.97
  %129 = load i8*, i8** %sptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %incdec.ptr, i8** %sptr, align 8, !tbaa !1
  %130 = load i8, i8* %129, align 1, !tbaa !85
  %idxprom = zext i8 %130 to i64
  %arrayidx117 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom
  %131 = load i32, i32* %arrayidx117, align 4, !tbaa !5
  %132 = load i32, i32* %roll, align 4, !tbaa !5
  %shl118 = shl i32 %131, %132
  %133 = load i32, i32* %cmyk, align 4, !tbaa !5
  %or119 = or i32 %133, %shl118
  store i32 %or119, i32* %cmyk, align 4, !tbaa !5
  %134 = load i32, i32* %roll, align 4, !tbaa !5
  %sub120 = sub nsw i32 %134, 2
  store i32 %sub120, i32* %roll, align 4, !tbaa !5
  %135 = load i32, i32* %roll, align 4, !tbaa !5
  %cmp121 = icmp slt i32 %135, 0
  br i1 %cmp121, label %if.then.123, label %if.end.135

if.then.123:                                      ; preds = %do.body.116
  %136 = load i32, i32* %cmyk, align 4, !tbaa !5
  %shr124 = ashr i32 %136, 24
  %conv125 = trunc i32 %shr124 to i8
  %137 = load i8*, i8** %dptr0, align 8, !tbaa !1
  %incdec.ptr126 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %incdec.ptr126, i8** %dptr0, align 8, !tbaa !1
  store i8 %conv125, i8* %137, align 1, !tbaa !85
  %138 = load i32, i32* %cmyk, align 4, !tbaa !5
  %shr127 = ashr i32 %138, 16
  %conv128 = trunc i32 %shr127 to i8
  %139 = load i8*, i8** %dptr1, align 8, !tbaa !1
  %incdec.ptr129 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %incdec.ptr129, i8** %dptr1, align 8, !tbaa !1
  store i8 %conv128, i8* %139, align 1, !tbaa !85
  %140 = load i32, i32* %cmyk, align 4, !tbaa !5
  %shr130 = ashr i32 %140, 8
  %conv131 = trunc i32 %shr130 to i8
  %141 = load i8*, i8** %dptr2, align 8, !tbaa !1
  %incdec.ptr132 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %incdec.ptr132, i8** %dptr2, align 8, !tbaa !1
  store i8 %conv131, i8* %141, align 1, !tbaa !85
  %142 = load i32, i32* %cmyk, align 4, !tbaa !5
  %conv133 = trunc i32 %142 to i8
  %143 = load i8*, i8** %dptr3, align 8, !tbaa !1
  %incdec.ptr134 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %incdec.ptr134, i8** %dptr3, align 8, !tbaa !1
  store i8 %conv133, i8* %143, align 1, !tbaa !85
  store i32 0, i32* %cmyk, align 4, !tbaa !5
  store i32 6, i32* %roll, align 4, !tbaa !5
  br label %if.end.135

if.end.135:                                       ; preds = %if.then.123, %do.body.116
  %144 = load i32, i32* %ix, align 4, !tbaa !5
  %sub136 = sub nsw i32 %144, 2
  store i32 %sub136, i32* %ix, align 4, !tbaa !5
  br label %do.cond.137

do.cond.137:                                      ; preds = %if.end.135
  %145 = load i32, i32* %ix, align 4, !tbaa !5
  %cmp138 = icmp sgt i32 %145, 0
  br i1 %cmp138, label %do.body.116, label %do.end.140

do.end.140:                                       ; preds = %do.cond.137
  %146 = load i32, i32* %roll, align 4, !tbaa !5
  %cmp141 = icmp ne i32 %146, 6
  br i1 %cmp141, label %if.then.143, label %if.end.155

if.then.143:                                      ; preds = %do.end.140
  %147 = load i32, i32* %cmyk, align 4, !tbaa !5
  %shr144 = ashr i32 %147, 24
  %conv145 = trunc i32 %shr144 to i8
  %148 = load i8*, i8** %dptr0, align 8, !tbaa !1
  %incdec.ptr146 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %incdec.ptr146, i8** %dptr0, align 8, !tbaa !1
  store i8 %conv145, i8* %148, align 1, !tbaa !85
  %149 = load i32, i32* %cmyk, align 4, !tbaa !5
  %shr147 = ashr i32 %149, 16
  %conv148 = trunc i32 %shr147 to i8
  %150 = load i8*, i8** %dptr1, align 8, !tbaa !1
  %incdec.ptr149 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %incdec.ptr149, i8** %dptr1, align 8, !tbaa !1
  store i8 %conv148, i8* %150, align 1, !tbaa !85
  %151 = load i32, i32* %cmyk, align 4, !tbaa !5
  %shr150 = ashr i32 %151, 8
  %conv151 = trunc i32 %shr150 to i8
  %152 = load i8*, i8** %dptr2, align 8, !tbaa !1
  %incdec.ptr152 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %incdec.ptr152, i8** %dptr2, align 8, !tbaa !1
  store i8 %conv151, i8* %152, align 1, !tbaa !85
  %153 = load i32, i32* %cmyk, align 4, !tbaa !5
  %conv153 = trunc i32 %153 to i8
  %154 = load i8*, i8** %dptr3, align 8, !tbaa !1
  %incdec.ptr154 = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %incdec.ptr154, i8** %dptr3, align 8, !tbaa !1
  store i8 %conv153, i8* %154, align 1, !tbaa !85
  br label %if.end.155

if.end.155:                                       ; preds = %if.then.143, %do.end.140
  %155 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %156 = load i8*, i8** %source_base, align 8, !tbaa !1
  %idx.ext156 = sext i32 %155 to i64
  %add.ptr157 = getelementptr inbounds i8, i8* %156, i64 %idx.ext156
  store i8* %add.ptr157, i8** %source_base, align 8, !tbaa !1
  %157 = bitcast i32* %cmyk to i8*
  call void @llvm.lifetime.end(i64 4, i8* %157) #1
  %158 = bitcast i32* %roll to i8*
  call void @llvm.lifetime.end(i64 4, i8* %158) #1
  %159 = bitcast i8** %dptr3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %159) #1
  %160 = bitcast i8** %dptr2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %160) #1
  %161 = bitcast i8** %dptr1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %161) #1
  %162 = bitcast i8** %dptr0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %162) #1
  %163 = bitcast i8** %sptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %163) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end.155
  %164 = load i32, i32* %iy, align 4, !tbaa !5
  %inc = add nsw i32 %164, 1
  store i32 %inc, i32* %iy, align 4, !tbaa !5
  br label %for.cond.94

for.end:                                          ; preds = %for.cond.94
  br label %if.end.254

if.else.158:                                      ; preds = %cond.end.89
  store i32 0, i32* %iy, align 4, !tbaa !5
  br label %for.cond.159

for.cond.159:                                     ; preds = %for.inc.251, %if.else.158
  %165 = load i32, i32* %iy, align 4, !tbaa !5
  %166 = load i32, i32* %ch, align 4, !tbaa !5
  %cmp160 = icmp slt i32 %165, %166
  br i1 %cmp160, label %for.body.162, label %for.end.253

for.body.162:                                     ; preds = %for.cond.159
  %167 = bitcast i8** %sptr163 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %167) #1
  %168 = load i8*, i8** %source_base, align 8, !tbaa !1
  store i8* %168, i8** %sptr163, align 8, !tbaa !1
  %169 = bitcast i8** %dptr0164 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %169) #1
  %b165 = bitcast %union.b_.1* %buf0 to [800 x i8]*
  %arraydecay166 = getelementptr inbounds [800 x i8], [800 x i8]* %b165, i32 0, i32 0
  %170 = load i32, i32* %br, align 4, !tbaa !5
  %171 = load i32, i32* %iy, align 4, !tbaa !5
  %mul167 = mul nsw i32 %170, %171
  %idx.ext168 = sext i32 %mul167 to i64
  %add.ptr169 = getelementptr inbounds i8, i8* %arraydecay166, i64 %idx.ext168
  store i8* %add.ptr169, i8** %dptr0164, align 8, !tbaa !1
  %172 = bitcast i8** %dptr1170 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %172) #1
  %b171 = bitcast %union.b_.1* %buf1 to [800 x i8]*
  %arraydecay172 = getelementptr inbounds [800 x i8], [800 x i8]* %b171, i32 0, i32 0
  %173 = load i32, i32* %br, align 4, !tbaa !5
  %174 = load i32, i32* %iy, align 4, !tbaa !5
  %mul173 = mul nsw i32 %173, %174
  %idx.ext174 = sext i32 %mul173 to i64
  %add.ptr175 = getelementptr inbounds i8, i8* %arraydecay172, i64 %idx.ext174
  store i8* %add.ptr175, i8** %dptr1170, align 8, !tbaa !1
  %175 = bitcast i8** %dptr2176 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %175) #1
  %b177 = bitcast %union.b_.1* %buf2 to [800 x i8]*
  %arraydecay178 = getelementptr inbounds [800 x i8], [800 x i8]* %b177, i32 0, i32 0
  %176 = load i32, i32* %br, align 4, !tbaa !5
  %177 = load i32, i32* %iy, align 4, !tbaa !5
  %mul179 = mul nsw i32 %176, %177
  %idx.ext180 = sext i32 %mul179 to i64
  %add.ptr181 = getelementptr inbounds i8, i8* %arraydecay178, i64 %idx.ext180
  store i8* %add.ptr181, i8** %dptr2176, align 8, !tbaa !1
  %178 = bitcast i8** %dptr3182 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %178) #1
  %b183 = bitcast %union.b_.1* %buf3 to [800 x i8]*
  %arraydecay184 = getelementptr inbounds [800 x i8], [800 x i8]* %b183, i32 0, i32 0
  %179 = load i32, i32* %br, align 4, !tbaa !5
  %180 = load i32, i32* %iy, align 4, !tbaa !5
  %mul185 = mul nsw i32 %179, %180
  %idx.ext186 = sext i32 %mul185 to i64
  %add.ptr187 = getelementptr inbounds i8, i8* %arraydecay184, i64 %idx.ext186
  store i8* %add.ptr187, i8** %dptr3182, align 8, !tbaa !1
  %181 = bitcast i32* %roll188 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %181) #1
  store i32 7, i32* %roll188, align 4, !tbaa !5
  %182 = bitcast i32* %cmyk189 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %182) #1
  store i32 0, i32* %cmyk189, align 4, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %b190) #1
  %183 = load i8*, i8** %sptr163, align 8, !tbaa !1
  %incdec.ptr191 = getelementptr inbounds i8, i8* %183, i32 1
  store i8* %incdec.ptr191, i8** %sptr163, align 8, !tbaa !1
  %184 = load i8, i8* %183, align 1, !tbaa !85
  %conv192 = zext i8 %184 to i32
  %and193 = and i32 %conv192, 15
  %conv194 = trunc i32 %and193 to i8
  store i8 %conv194, i8* %b190, align 1, !tbaa !85
  %185 = load i32, i32* %cw, align 4, !tbaa !5
  store i32 %185, i32* %ix, align 4, !tbaa !5
  br label %loop_entry
                                                  ; No predecessors!
  br label %do.body.195

do.body.195:                                      ; preds = %do.cond.227, %186
  %187 = load i8*, i8** %sptr163, align 8, !tbaa !1
  %incdec.ptr196 = getelementptr inbounds i8, i8* %187, i32 1
  store i8* %incdec.ptr196, i8** %sptr163, align 8, !tbaa !1
  %188 = load i8, i8* %187, align 1, !tbaa !85
  store i8 %188, i8* %b190, align 1, !tbaa !85
  %189 = load i32, i32* %roll188, align 4, !tbaa !5
  %sub197 = sub nsw i32 %189, 2
  store i32 %sub197, i32* %roll188, align 4, !tbaa !5
  %190 = load i32, i32* %roll188, align 4, !tbaa !5
  %cmp198 = icmp slt i32 %190, 0
  br i1 %cmp198, label %if.then.200, label %if.end.221

if.then.200:                                      ; preds = %do.body.195
  %191 = load i8, i8* %b190, align 1, !tbaa !85
  %conv201 = zext i8 %191 to i32
  %and202 = and i32 %conv201, 240
  %idxprom203 = sext i32 %and202 to i64
  %arrayidx204 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom203
  %192 = load i32, i32* %arrayidx204, align 4, !tbaa !5
  %shr205 = lshr i32 %192, 1
  %193 = load i32, i32* %cmyk189, align 4, !tbaa !5
  %or206 = or i32 %193, %shr205
  store i32 %or206, i32* %cmyk189, align 4, !tbaa !5
  %194 = load i32, i32* %cmyk189, align 4, !tbaa !5
  %shr207 = ashr i32 %194, 24
  %conv208 = trunc i32 %shr207 to i8
  %195 = load i8*, i8** %dptr0164, align 8, !tbaa !1
  %incdec.ptr209 = getelementptr inbounds i8, i8* %195, i32 1
  store i8* %incdec.ptr209, i8** %dptr0164, align 8, !tbaa !1
  store i8 %conv208, i8* %195, align 1, !tbaa !85
  %196 = load i32, i32* %cmyk189, align 4, !tbaa !5
  %shr210 = ashr i32 %196, 16
  %conv211 = trunc i32 %shr210 to i8
  %197 = load i8*, i8** %dptr1170, align 8, !tbaa !1
  %incdec.ptr212 = getelementptr inbounds i8, i8* %197, i32 1
  store i8* %incdec.ptr212, i8** %dptr1170, align 8, !tbaa !1
  store i8 %conv211, i8* %197, align 1, !tbaa !85
  %198 = load i32, i32* %cmyk189, align 4, !tbaa !5
  %shr213 = ashr i32 %198, 8
  %conv214 = trunc i32 %shr213 to i8
  %199 = load i8*, i8** %dptr2176, align 8, !tbaa !1
  %incdec.ptr215 = getelementptr inbounds i8, i8* %199, i32 1
  store i8* %incdec.ptr215, i8** %dptr2176, align 8, !tbaa !1
  store i8 %conv214, i8* %199, align 1, !tbaa !85
  %200 = load i32, i32* %cmyk189, align 4, !tbaa !5
  %conv216 = trunc i32 %200 to i8
  %201 = load i8*, i8** %dptr3182, align 8, !tbaa !1
  %incdec.ptr217 = getelementptr inbounds i8, i8* %201, i32 1
  store i8* %incdec.ptr217, i8** %dptr3182, align 8, !tbaa !1
  store i8 %conv216, i8* %201, align 1, !tbaa !85
  store i32 0, i32* %cmyk189, align 4, !tbaa !5
  store i32 7, i32* %roll188, align 4, !tbaa !5
  %202 = load i8, i8* %b190, align 1, !tbaa !85
  %conv218 = zext i8 %202 to i32
  %and219 = and i32 %conv218, 15
  %conv220 = trunc i32 %and219 to i8
  store i8 %conv220, i8* %b190, align 1, !tbaa !85
  br label %if.end.221

if.end.221:                                       ; preds = %if.then.200, %do.body.195
  br label %loop_entry

loop_entry:                                       ; preds = %if.end.221, %for.body.162
  %203 = load i8, i8* %b190, align 1, !tbaa !85
  %idxprom222 = zext i8 %203 to i64
  %arrayidx223 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom222
  %204 = load i32, i32* %arrayidx223, align 4, !tbaa !5
  %205 = load i32, i32* %roll188, align 4, !tbaa !5
  %shl224 = shl i32 %204, %205
  %206 = load i32, i32* %cmyk189, align 4, !tbaa !5
  %or225 = or i32 %206, %shl224
  store i32 %or225, i32* %cmyk189, align 4, !tbaa !5
  %207 = load i32, i32* %ix, align 4, !tbaa !5
  %sub226 = sub nsw i32 %207, 2
  store i32 %sub226, i32* %ix, align 4, !tbaa !5
  br label %do.cond.227

do.cond.227:                                      ; preds = %loop_entry
  %208 = load i32, i32* %ix, align 4, !tbaa !5
  %cmp228 = icmp sge i32 %208, 0
  br i1 %cmp228, label %do.body.195, label %do.end.230

do.end.230:                                       ; preds = %do.cond.227
  %209 = load i32, i32* %ix, align 4, !tbaa !5
  %cmp231 = icmp eq i32 %209, -2
  br i1 %cmp231, label %land.lhs.true, label %if.else.236

land.lhs.true:                                    ; preds = %do.end.230
  %210 = load i32, i32* %roll188, align 4, !tbaa !5
  %cmp233 = icmp eq i32 %210, 7
  br i1 %cmp233, label %if.then.235, label %if.else.236

if.then.235:                                      ; preds = %land.lhs.true
  br label %if.end.248

if.else.236:                                      ; preds = %land.lhs.true, %do.end.230
  %211 = load i32, i32* %cmyk189, align 4, !tbaa !5
  %shr237 = ashr i32 %211, 24
  %conv238 = trunc i32 %shr237 to i8
  %212 = load i8*, i8** %dptr0164, align 8, !tbaa !1
  %incdec.ptr239 = getelementptr inbounds i8, i8* %212, i32 1
  store i8* %incdec.ptr239, i8** %dptr0164, align 8, !tbaa !1
  store i8 %conv238, i8* %212, align 1, !tbaa !85
  %213 = load i32, i32* %cmyk189, align 4, !tbaa !5
  %shr240 = ashr i32 %213, 16
  %conv241 = trunc i32 %shr240 to i8
  %214 = load i8*, i8** %dptr1170, align 8, !tbaa !1
  %incdec.ptr242 = getelementptr inbounds i8, i8* %214, i32 1
  store i8* %incdec.ptr242, i8** %dptr1170, align 8, !tbaa !1
  store i8 %conv241, i8* %214, align 1, !tbaa !85
  %215 = load i32, i32* %cmyk189, align 4, !tbaa !5
  %shr243 = ashr i32 %215, 8
  %conv244 = trunc i32 %shr243 to i8
  %216 = load i8*, i8** %dptr2176, align 8, !tbaa !1
  %incdec.ptr245 = getelementptr inbounds i8, i8* %216, i32 1
  store i8* %incdec.ptr245, i8** %dptr2176, align 8, !tbaa !1
  store i8 %conv244, i8* %216, align 1, !tbaa !85
  %217 = load i32, i32* %cmyk189, align 4, !tbaa !5
  %conv246 = trunc i32 %217 to i8
  %218 = load i8*, i8** %dptr3182, align 8, !tbaa !1
  %incdec.ptr247 = getelementptr inbounds i8, i8* %218, i32 1
  store i8* %incdec.ptr247, i8** %dptr3182, align 8, !tbaa !1
  store i8 %conv246, i8* %218, align 1, !tbaa !85
  br label %if.end.248

if.end.248:                                       ; preds = %if.else.236, %if.then.235
  %219 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %220 = load i8*, i8** %source_base, align 8, !tbaa !1
  %idx.ext249 = sext i32 %219 to i64
  %add.ptr250 = getelementptr inbounds i8, i8* %220, i64 %idx.ext249
  store i8* %add.ptr250, i8** %source_base, align 8, !tbaa !1
  call void @llvm.lifetime.end(i64 1, i8* %b190) #1
  %221 = bitcast i32* %cmyk189 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %221) #1
  %222 = bitcast i32* %roll188 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %222) #1
  %223 = bitcast i8** %dptr3182 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %223) #1
  %224 = bitcast i8** %dptr2176 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %224) #1
  %225 = bitcast i8** %dptr1170 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %225) #1
  %226 = bitcast i8** %dptr0164 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %226) #1
  %227 = bitcast i8** %sptr163 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %227) #1
  br label %for.inc.251

for.inc.251:                                      ; preds = %if.end.248
  %228 = load i32, i32* %iy, align 4, !tbaa !5
  %inc252 = add nsw i32 %228, 1
  store i32 %inc252, i32* %iy, align 4, !tbaa !5
  br label %for.cond.159

for.end.253:                                      ; preds = %for.cond.159
  br label %if.end.254

if.end.254:                                       ; preds = %for.end.253, %for.end
  %229 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %229, i32 0, i32 42
  %copy_mono = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 9
  %230 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono, align 8, !tbaa !38
  %231 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %b255 = bitcast %union.b_.1* %buf0 to [800 x i8]*
  %arraydecay256 = getelementptr inbounds [800 x i8], [800 x i8]* %b255, i32 0, i32 0
  %232 = load i32, i32* %br, align 4, !tbaa !5
  %233 = load i32, i32* %cx, align 4, !tbaa !5
  %234 = load i32, i32* %cy, align 4, !tbaa !5
  %235 = load i32, i32* %cw, align 4, !tbaa !5
  %236 = load i32, i32* %ch, align 4, !tbaa !5
  %call257 = call i32 %230(%struct.gx_device_s* %231, i8* %arraydecay256, i32 0, i32 %232, i64 0, i32 %233, i32 %234, i32 %235, i32 %236, i64 0, i64 1) #4
  %237 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %height258 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %237, i32 0, i32 14
  %238 = load i32, i32* %height258, align 4, !tbaa !75
  %239 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs259 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %239, i32 0, i32 52
  %240 = load i8**, i8*** %line_ptrs259, align 8, !tbaa !73
  %idx.ext260 = sext i32 %238 to i64
  %add.ptr261 = getelementptr inbounds i8*, i8** %240, i64 %idx.ext260
  store i8** %add.ptr261, i8*** %line_ptrs259, align 8, !tbaa !73
  %241 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %procs262 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %241, i32 0, i32 42
  %copy_mono263 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs262, i32 0, i32 9
  %242 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono263, align 8, !tbaa !38
  %243 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %b264 = bitcast %union.b_.1* %buf1 to [800 x i8]*
  %arraydecay265 = getelementptr inbounds [800 x i8], [800 x i8]* %b264, i32 0, i32 0
  %244 = load i32, i32* %br, align 4, !tbaa !5
  %245 = load i32, i32* %cx, align 4, !tbaa !5
  %246 = load i32, i32* %cy, align 4, !tbaa !5
  %247 = load i32, i32* %cw, align 4, !tbaa !5
  %248 = load i32, i32* %ch, align 4, !tbaa !5
  %call266 = call i32 %242(%struct.gx_device_s* %243, i8* %arraydecay265, i32 0, i32 %244, i64 0, i32 %245, i32 %246, i32 %247, i32 %248, i64 0, i64 1) #4
  %249 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %height267 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %249, i32 0, i32 14
  %250 = load i32, i32* %height267, align 4, !tbaa !75
  %251 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs268 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %251, i32 0, i32 52
  %252 = load i8**, i8*** %line_ptrs268, align 8, !tbaa !73
  %idx.ext269 = sext i32 %250 to i64
  %add.ptr270 = getelementptr inbounds i8*, i8** %252, i64 %idx.ext269
  store i8** %add.ptr270, i8*** %line_ptrs268, align 8, !tbaa !73
  %253 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %procs271 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %253, i32 0, i32 42
  %copy_mono272 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs271, i32 0, i32 9
  %254 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono272, align 8, !tbaa !38
  %255 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %b273 = bitcast %union.b_.1* %buf2 to [800 x i8]*
  %arraydecay274 = getelementptr inbounds [800 x i8], [800 x i8]* %b273, i32 0, i32 0
  %256 = load i32, i32* %br, align 4, !tbaa !5
  %257 = load i32, i32* %cx, align 4, !tbaa !5
  %258 = load i32, i32* %cy, align 4, !tbaa !5
  %259 = load i32, i32* %cw, align 4, !tbaa !5
  %260 = load i32, i32* %ch, align 4, !tbaa !5
  %call275 = call i32 %254(%struct.gx_device_s* %255, i8* %arraydecay274, i32 0, i32 %256, i64 0, i32 %257, i32 %258, i32 %259, i32 %260, i64 0, i64 1) #4
  %261 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %height276 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %261, i32 0, i32 14
  %262 = load i32, i32* %height276, align 4, !tbaa !75
  %263 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs277 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %263, i32 0, i32 52
  %264 = load i8**, i8*** %line_ptrs277, align 8, !tbaa !73
  %idx.ext278 = sext i32 %262 to i64
  %add.ptr279 = getelementptr inbounds i8*, i8** %264, i64 %idx.ext278
  store i8** %add.ptr279, i8*** %line_ptrs277, align 8, !tbaa !73
  %265 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %procs280 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %265, i32 0, i32 42
  %copy_mono281 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs280, i32 0, i32 9
  %266 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono281, align 8, !tbaa !38
  %267 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %b282 = bitcast %union.b_.1* %buf3 to [800 x i8]*
  %arraydecay283 = getelementptr inbounds [800 x i8], [800 x i8]* %b282, i32 0, i32 0
  %268 = load i32, i32* %br, align 4, !tbaa !5
  %269 = load i32, i32* %cx, align 4, !tbaa !5
  %270 = load i32, i32* %cy, align 4, !tbaa !5
  %271 = load i32, i32* %cw, align 4, !tbaa !5
  %272 = load i32, i32* %ch, align 4, !tbaa !5
  %call284 = call i32 %266(%struct.gx_device_s* %267, i8* %arraydecay283, i32 0, i32 %268, i64 0, i32 %269, i32 %270, i32 %271, i32 %272, i64 0, i64 1) #4
  %273 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %height285 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %273, i32 0, i32 14
  %274 = load i32, i32* %height285, align 4, !tbaa !75
  %mul286 = mul nsw i32 3, %274
  %275 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs287 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %275, i32 0, i32 52
  %276 = load i8**, i8*** %line_ptrs287, align 8, !tbaa !73
  %idx.ext288 = sext i32 %mul286 to i64
  %idx.neg289 = sub i64 0, %idx.ext288
  %add.ptr290 = getelementptr inbounds i8*, i8** %276, i64 %idx.neg289
  store i8** %add.ptr290, i8*** %line_ptrs287, align 8, !tbaa !73
  %277 = bitcast i8** %source_base to i8*
  call void @llvm.lifetime.end(i64 8, i8* %277) #1
  %278 = bitcast i32* %sx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %278) #1
  br label %for.inc.291

for.inc.291:                                      ; preds = %if.end.254
  %279 = load i32, i32* %cw, align 4, !tbaa !5
  %280 = load i32, i32* %cx, align 4, !tbaa !5
  %add292 = add nsw i32 %280, %279
  store i32 %add292, i32* %cx, align 4, !tbaa !5
  br label %for.cond.67

for.end.293:                                      ; preds = %for.cond.67
  br label %for.inc.294

for.inc.294:                                      ; preds = %for.end.293
  %281 = load i32, i32* %ch, align 4, !tbaa !5
  %282 = load i32, i32* %cy, align 4, !tbaa !5
  %add295 = add nsw i32 %282, %281
  store i32 %add295, i32* %cy, align 4, !tbaa !5
  br label %for.cond

for.end.296:                                      ; preds = %for.cond
  %depth297 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 0
  %283 = load i32, i32* %depth297, align 4, !tbaa !69
  %conv298 = trunc i32 %283 to i16
  %284 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color_info299 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %284, i32 0, i32 11
  %depth300 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info299, i32 0, i32 3
  store i16 %conv298, i16* %depth300, align 2, !tbaa !11
  %base301 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 1
  %285 = load i8*, i8** %base301, align 8, !tbaa !72
  %286 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %base302 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %286, i32 0, i32 45
  store i8* %285, i8** %base302, align 8, !tbaa !71
  %line_ptrs303 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 2
  %287 = load i8**, i8*** %line_ptrs303, align 8, !tbaa !74
  %288 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs304 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %288, i32 0, i32 52
  store i8** %287, i8*** %line_ptrs304, align 8, !tbaa !73
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.296, %if.then.24
  %289 = bitcast i32* %iy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %289) #1
  %290 = bitcast i32* %ix to i8*
  call void @llvm.lifetime.end(i64 4, i8* %290) #1
  %291 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.end(i64 4, i8* %291) #1
  %292 = bitcast i32* %cw to i8*
  call void @llvm.lifetime.end(i64 4, i8* %292) #1
  %293 = bitcast i32* %cy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %293) #1
  %294 = bitcast i32* %cx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %294) #1
  %295 = bitcast i32* %bh to i8*
  call void @llvm.lifetime.end(i64 4, i8* %295) #1
  %296 = bitcast i32* %bw to i8*
  call void @llvm.lifetime.end(i64 4, i8* %296) #1
  %297 = bitcast i32* %br to i8*
  call void @llvm.lifetime.end(i64 4, i8* %297) #1
  %298 = bitcast i32* %plane_raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %298) #1
  %299 = bitcast %struct.gx_device_memory_s** %mdproto to i8*
  call void @llvm.lifetime.end(i64 8, i8* %299) #1
  %300 = bitcast %struct.mem_save_params_s* %save to i8*
  call void @llvm.lifetime.end(i64 24, i8* %300) #1
  %301 = bitcast %union.b_.1* %buf3 to i8*
  call void @llvm.lifetime.end(i64 800, i8* %301) #1
  %302 = bitcast %union.b_.1* %buf2 to i8*
  call void @llvm.lifetime.end(i64 800, i8* %302) #1
  %303 = bitcast %union.b_.1* %buf1 to i8*
  call void @llvm.lifetime.end(i64 800, i8* %303) #1
  %304 = bitcast %union.b_.1* %buf0 to i8*
  call void @llvm.lifetime.end(i64 800, i8* %304) #1
  %305 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %305) #1
  %306 = load i32, i32* %retval
  ret i32 %306
}

; Function Attrs: nounwind uwtable
define internal i32 @mem_planar_dev_spec_op_cmyk4(%struct.gx_device_s* %pdev, i32 %dev_spec_op, i8* %data, i32 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %dev_spec_op.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store i32 %dev_spec_op, i32* %dev_spec_op.addr, align 4, !tbaa !5
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  %0 = load i32, i32* %dev_spec_op.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = load i32, i32* %dev_spec_op.addr, align 4, !tbaa !5
  %3 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %4 = load i32, i32* %size.addr, align 4, !tbaa !5
  %call = call i32 @gx_default_dev_spec_op(%struct.gx_device_s* %1, i32 %2, i8* %3, i32 %4) #4
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal i32 @mem_planar_copy_color(%struct.gx_device_s* %dev, i8* %base, i32 %sourcex, i32 %sraster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %base.addr = alloca i8*, align 8
  %sourcex.addr = alloca i32, align 4
  %sraster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %mdev = alloca %struct.gx_device_memory_s*, align 8
  %buf = alloca %union.b_.2, align 8
  %source_depth = alloca i32, align 4
  %save = alloca %struct.mem_save_params_s, align 8
  %pi = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %plane_depth = alloca i32, align 4
  %shift = alloca i32, align 4
  %mask = alloca i64, align 8
  %mdproto = alloca %struct.gx_device_memory_s*, align 8
  %plane_raster = alloca i32, align 4
  %br = alloca i32, align 4
  %bw = alloca i32, align 4
  %bh = alloca i32, align 4
  %cx = alloca i32, align 4
  %cy = alloca i32, align 4
  %cw = alloca i32, align 4
  %ch = alloca i32, align 4
  %ix = alloca i32, align 4
  %iy = alloca i32, align 4
  %sx = alloca i32, align 4
  %source_base = alloca i8*, align 8
  %source_bit = alloca i32, align 4
  %xbit = alloca i32, align 4
  %sptr = alloca i8*, align 8
  %sbit = alloca i32, align 4
  %dptr = alloca i8*, align 8
  %dbit = alloca i32, align 4
  %dbbyte = alloca i8, align 1
  %value = alloca i64, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %base, i8** %base.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 %sraster, i32* %sraster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !9
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %2, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %3 = bitcast %union.b_.2* %buf to i8*
  call void @llvm.lifetime.start(i64 800, i8* %3) #1
  %4 = bitcast i32* %source_depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %6 = load i16, i16* %depth, align 2, !tbaa !86
  %conv = zext i16 %6 to i32
  store i32 %conv, i32* %source_depth, align 4, !tbaa !5
  %7 = bitcast %struct.mem_save_params_s* %save to i8*
  call void @llvm.lifetime.start(i64 24, i8* %7) #1
  %8 = bitcast i32* %pi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %9 = load i32, i32* %x.addr, align 4, !tbaa !5
  %10 = load i32, i32* %y.addr, align 4, !tbaa !5
  %or = or i32 %9, %10
  %cmp = icmp slt i32 %or, 0
  br i1 %cmp, label %if.then, label %if.end.11

if.then:                                          ; preds = %do.body.1
  %11 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %11, 0
  br i1 %cmp3, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %12 = load i32, i32* %x.addr, align 4, !tbaa !5
  %13 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add = add nsw i32 %13, %12
  store i32 %add, i32* %w.addr, align 4, !tbaa !5
  %14 = load i32, i32* %x.addr, align 4, !tbaa !5
  %15 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %15, %14
  store i32 %sub, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 0, i32* %x.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  %16 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %16, 0
  br i1 %cmp6, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end
  %17 = load i32, i32* %y.addr, align 4, !tbaa !5
  %18 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add9 = add nsw i32 %18, %17
  store i32 %add9, i32* %h.addr, align 4, !tbaa !5
  %19 = load i32, i32* %y.addr, align 4, !tbaa !5
  %20 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %19, %20
  %21 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %mul to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 %idx.neg
  store i8* %add.ptr, i8** %base.addr, align 8, !tbaa !1
  store i64 0, i64* %id.addr, align 8, !tbaa !9
  store i32 0, i32* %y.addr, align 4, !tbaa !5
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %do.body.1
  %22 = load i32, i32* %w.addr, align 4, !tbaa !5
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %23, i32 0, i32 13
  %24 = load i32, i32* %width, align 4, !tbaa !84
  %25 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub12 = sub nsw i32 %24, %25
  %cmp13 = icmp sgt i32 %22, %sub12
  br i1 %cmp13, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.end.11
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width16 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %26, i32 0, i32 13
  %27 = load i32, i32* %width16, align 4, !tbaa !84
  %28 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub17 = sub nsw i32 %27, %28
  store i32 %sub17, i32* %w.addr, align 4, !tbaa !5
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %if.end.11
  br label %do.cond

do.cond:                                          ; preds = %if.end.18
  br label %do.end

do.end:                                           ; preds = %do.cond
  %29 = load i32, i32* %h.addr, align 4, !tbaa !5
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %30, i32 0, i32 14
  %31 = load i32, i32* %height, align 4, !tbaa !53
  %32 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub19 = sub nsw i32 %31, %32
  %cmp20 = icmp sgt i32 %29, %sub19
  br i1 %cmp20, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %do.end
  %33 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height23 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %33, i32 0, i32 14
  %34 = load i32, i32* %height23, align 4, !tbaa !53
  %35 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub24 = sub nsw i32 %34, %35
  store i32 %sub24, i32* %h.addr, align 4, !tbaa !5
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.22, %do.end
  %36 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp26 = icmp sle i32 %36, 0
  br i1 %cmp26, label %if.then.30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.25
  %37 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp28 = icmp sle i32 %37, 0
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %lor.lhs.false, %if.end.25
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.466

if.end.31:                                        ; preds = %lor.lhs.false
  br label %do.cond.32

do.cond.32:                                       ; preds = %if.end.31
  br label %do.end.33

do.end.33:                                        ; preds = %do.cond.32
  %38 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color_info34 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %38, i32 0, i32 11
  %depth35 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info34, i32 0, i32 3
  %39 = load i16, i16* %depth35, align 2, !tbaa !11
  %conv36 = zext i16 %39 to i32
  %depth37 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 0
  store i32 %conv36, i32* %depth37, align 4, !tbaa !69
  %40 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %base38 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %40, i32 0, i32 45
  %41 = load i8*, i8** %base38, align 8, !tbaa !71
  %base39 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 1
  store i8* %41, i8** %base39, align 8, !tbaa !72
  %42 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %42, i32 0, i32 52
  %43 = load i8**, i8*** %line_ptrs, align 8, !tbaa !73
  %line_ptrs40 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 2
  store i8** %43, i8*** %line_ptrs40, align 8, !tbaa !74
  store i32 0, i32* %pi, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.455, %do.end.33
  %44 = load i32, i32* %pi, align 4, !tbaa !5
  %45 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color_info41 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %45, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info41, i32 0, i32 1
  %46 = load i32, i32* %num_components, align 4, !tbaa !32
  %cmp42 = icmp slt i32 %44, %46
  br i1 %cmp42, label %for.body, label %for.end.457

for.body:                                         ; preds = %for.cond
  %47 = bitcast i32* %plane_depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #1
  %48 = load i32, i32* %pi, align 4, !tbaa !5
  %idxprom = sext i32 %48 to i64
  %49 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %planes = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %49, i32 0, i32 50
  %arrayidx = getelementptr inbounds [64 x %struct.gx_render_plane_s], [64 x %struct.gx_render_plane_s]* %planes, i32 0, i64 %idxprom
  %depth44 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %arrayidx, i32 0, i32 0
  %50 = load i32, i32* %depth44, align 4, !tbaa !7
  store i32 %50, i32* %plane_depth, align 4, !tbaa !5
  %51 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #1
  %52 = load i32, i32* %pi, align 4, !tbaa !5
  %idxprom45 = sext i32 %52 to i64
  %53 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %planes46 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %53, i32 0, i32 50
  %arrayidx47 = getelementptr inbounds [64 x %struct.gx_render_plane_s], [64 x %struct.gx_render_plane_s]* %planes46, i32 0, i64 %idxprom45
  %shift48 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %arrayidx47, i32 0, i32 1
  %54 = load i32, i32* %shift48, align 4, !tbaa !33
  store i32 %54, i32* %shift, align 4, !tbaa !5
  %55 = bitcast i64* %mask to i8*
  call void @llvm.lifetime.start(i64 8, i8* %55) #1
  %56 = load i32, i32* %plane_depth, align 4, !tbaa !5
  %sh_prom = zext i32 %56 to i64
  %shl = shl i64 1, %sh_prom
  %sub49 = sub i64 %shl, 1
  store i64 %sub49, i64* %mask, align 8, !tbaa !9
  %57 = bitcast %struct.gx_device_memory_s** %mdproto to i8*
  call void @llvm.lifetime.start(i64 8, i8* %57) #1
  %58 = load i32, i32* %plane_depth, align 4, !tbaa !5
  %call = call %struct.gx_device_memory_s* @gdev_mem_device_for_bits(i32 %58) #4
  store %struct.gx_device_memory_s* %call, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %59 = bitcast i32* %plane_raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %59) #1
  %60 = load i32, i32* %plane_depth, align 4, !tbaa !5
  %61 = load i32, i32* %w.addr, align 4, !tbaa !5
  %mul50 = mul nsw i32 %60, %61
  %add51 = add nsw i32 %mul50, 63
  %shr = ashr i32 %add51, 6
  %shl52 = shl i32 %shr, 3
  store i32 %shl52, i32* %plane_raster, align 4, !tbaa !5
  %62 = bitcast i32* %br to i8*
  call void @llvm.lifetime.start(i64 4, i8* %62) #1
  %63 = bitcast i32* %bw to i8*
  call void @llvm.lifetime.start(i64 4, i8* %63) #1
  %64 = bitcast i32* %bh to i8*
  call void @llvm.lifetime.start(i64 4, i8* %64) #1
  %65 = bitcast i32* %cx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %65) #1
  %66 = bitcast i32* %cy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %66) #1
  %67 = bitcast i32* %cw to i8*
  call void @llvm.lifetime.start(i64 4, i8* %67) #1
  %68 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.start(i64 4, i8* %68) #1
  %69 = bitcast i32* %ix to i8*
  call void @llvm.lifetime.start(i64 4, i8* %69) #1
  %70 = bitcast i32* %iy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %70) #1
  %71 = load i32, i32* %plane_depth, align 4, !tbaa !5
  %conv53 = trunc i32 %71 to i16
  %72 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color_info54 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %72, i32 0, i32 11
  %depth55 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info54, i32 0, i32 3
  store i16 %conv53, i16* %depth55, align 2, !tbaa !11
  %73 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs56 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %73, i32 0, i32 52
  %74 = load i8**, i8*** %line_ptrs56, align 8, !tbaa !73
  %arrayidx57 = getelementptr inbounds i8*, i8** %74, i64 0
  %75 = load i8*, i8** %arrayidx57, align 8, !tbaa !1
  %76 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %base58 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %76, i32 0, i32 45
  store i8* %75, i8** %base58, align 8, !tbaa !71
  %77 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %height59 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %77, i32 0, i32 14
  %78 = load i32, i32* %height59, align 4, !tbaa !75
  %cmp60 = icmp sgt i32 %78, 1
  br i1 %cmp60, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %79 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs62 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %79, i32 0, i32 52
  %80 = load i8**, i8*** %line_ptrs62, align 8, !tbaa !73
  %arrayidx63 = getelementptr inbounds i8*, i8** %80, i64 1
  %81 = load i8*, i8** %arrayidx63, align 8, !tbaa !1
  %82 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs64 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %82, i32 0, i32 52
  %83 = load i8**, i8*** %line_ptrs64, align 8, !tbaa !73
  %arrayidx65 = getelementptr inbounds i8*, i8** %83, i64 0
  %84 = load i8*, i8** %arrayidx65, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %81 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %84 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %85 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %width66 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %85, i32 0, i32 13
  %86 = load i32, i32* %width66, align 4, !tbaa !76
  %87 = load i32, i32* %plane_depth, align 4, !tbaa !5
  %mul67 = mul nsw i32 %86, %87
  %add68 = add nsw i32 %mul67, 63
  %shr69 = ashr i32 %add68, 6
  %shl70 = shl i32 %shr69, 3
  %conv71 = zext i32 %shl70 to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub.ptr.sub, %cond.true ], [ %conv71, %cond.false ]
  %conv72 = trunc i64 %cond to i32
  %88 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %88, i32 0, i32 44
  store i32 %conv72, i32* %raster, align 4, !tbaa !77
  %89 = load i32, i32* %plane_raster, align 4, !tbaa !5
  %cmp73 = icmp ugt i32 %89, 800
  br i1 %cmp73, label %if.then.75, label %if.else

if.then.75:                                       ; preds = %cond.end
  store i32 800, i32* %br, align 4, !tbaa !5
  %90 = load i32, i32* %plane_depth, align 4, !tbaa !5
  %div = sdiv i32 6400, %90
  store i32 %div, i32* %bw, align 4, !tbaa !5
  store i32 1, i32* %bh, align 4, !tbaa !5
  br label %if.end.77

if.else:                                          ; preds = %cond.end
  %91 = load i32, i32* %plane_raster, align 4, !tbaa !5
  store i32 %91, i32* %br, align 4, !tbaa !5
  %92 = load i32, i32* %w.addr, align 4, !tbaa !5
  store i32 %92, i32* %bw, align 4, !tbaa !5
  %93 = load i32, i32* %plane_raster, align 4, !tbaa !5
  %div76 = udiv i32 800, %93
  store i32 %div76, i32* %bh, align 4, !tbaa !5
  br label %if.end.77

if.end.77:                                        ; preds = %if.else, %if.then.75
  %94 = load i32, i32* %y.addr, align 4, !tbaa !5
  store i32 %94, i32* %cy, align 4, !tbaa !5
  br label %for.cond.78

for.cond.78:                                      ; preds = %for.inc.432, %if.end.77
  %95 = load i32, i32* %cy, align 4, !tbaa !5
  %96 = load i32, i32* %y.addr, align 4, !tbaa !5
  %97 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add79 = add nsw i32 %96, %97
  %cmp80 = icmp slt i32 %95, %add79
  br i1 %cmp80, label %for.body.82, label %for.end.434

for.body.82:                                      ; preds = %for.cond.78
  %98 = load i32, i32* %bh, align 4, !tbaa !5
  %99 = load i32, i32* %y.addr, align 4, !tbaa !5
  %100 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add83 = add nsw i32 %99, %100
  %101 = load i32, i32* %cy, align 4, !tbaa !5
  %sub84 = sub nsw i32 %add83, %101
  %cmp85 = icmp slt i32 %98, %sub84
  br i1 %cmp85, label %cond.true.87, label %cond.false.88

cond.true.87:                                     ; preds = %for.body.82
  %102 = load i32, i32* %bh, align 4, !tbaa !5
  br label %cond.end.91

cond.false.88:                                    ; preds = %for.body.82
  %103 = load i32, i32* %y.addr, align 4, !tbaa !5
  %104 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add89 = add nsw i32 %103, %104
  %105 = load i32, i32* %cy, align 4, !tbaa !5
  %sub90 = sub nsw i32 %add89, %105
  br label %cond.end.91

cond.end.91:                                      ; preds = %cond.false.88, %cond.true.87
  %cond92 = phi i32 [ %102, %cond.true.87 ], [ %sub90, %cond.false.88 ]
  store i32 %cond92, i32* %ch, align 4, !tbaa !5
  %106 = load i32, i32* %x.addr, align 4, !tbaa !5
  store i32 %106, i32* %cx, align 4, !tbaa !5
  br label %for.cond.93

for.cond.93:                                      ; preds = %for.inc.429, %cond.end.91
  %107 = load i32, i32* %cx, align 4, !tbaa !5
  %108 = load i32, i32* %x.addr, align 4, !tbaa !5
  %109 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add94 = add nsw i32 %108, %109
  %cmp95 = icmp slt i32 %107, %add94
  br i1 %cmp95, label %for.body.97, label %for.end.431

for.body.97:                                      ; preds = %for.cond.93
  %110 = bitcast i32* %sx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %110) #1
  %111 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %112 = load i32, i32* %cx, align 4, !tbaa !5
  %add98 = add nsw i32 %111, %112
  %113 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub99 = sub nsw i32 %add98, %113
  store i32 %sub99, i32* %sx, align 4, !tbaa !5
  %114 = bitcast i8** %source_base to i8*
  call void @llvm.lifetime.start(i64 8, i8* %114) #1
  %115 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %116 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %117 = load i32, i32* %cy, align 4, !tbaa !5
  %118 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub100 = sub nsw i32 %117, %118
  %mul101 = mul nsw i32 %116, %sub100
  %idx.ext102 = sext i32 %mul101 to i64
  %add.ptr103 = getelementptr inbounds i8, i8* %115, i64 %idx.ext102
  store i8* %add.ptr103, i8** %source_base, align 8, !tbaa !1
  %119 = bitcast i32* %source_bit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %119) #1
  store i32 0, i32* %source_bit, align 4, !tbaa !5
  %120 = load i32, i32* %bw, align 4, !tbaa !5
  %121 = load i32, i32* %x.addr, align 4, !tbaa !5
  %122 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add104 = add nsw i32 %121, %122
  %123 = load i32, i32* %cx, align 4, !tbaa !5
  %sub105 = sub nsw i32 %add104, %123
  %cmp106 = icmp slt i32 %120, %sub105
  br i1 %cmp106, label %cond.true.108, label %cond.false.109

cond.true.108:                                    ; preds = %for.body.97
  %124 = load i32, i32* %bw, align 4, !tbaa !5
  br label %cond.end.112

cond.false.109:                                   ; preds = %for.body.97
  %125 = load i32, i32* %x.addr, align 4, !tbaa !5
  %126 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add110 = add nsw i32 %125, %126
  %127 = load i32, i32* %cx, align 4, !tbaa !5
  %sub111 = sub nsw i32 %add110, %127
  br label %cond.end.112

cond.end.112:                                     ; preds = %cond.false.109, %cond.true.108
  %cond113 = phi i32 [ %124, %cond.true.108 ], [ %sub111, %cond.false.109 ]
  store i32 %cond113, i32* %cw, align 4, !tbaa !5
  %128 = load i32, i32* %sx, align 4, !tbaa !5
  %tobool = icmp ne i32 %128, 0
  br i1 %tobool, label %if.then.114, label %if.end.119

if.then.114:                                      ; preds = %cond.end.112
  %129 = bitcast i32* %xbit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %129) #1
  %130 = load i32, i32* %sx, align 4, !tbaa !5
  %131 = load i32, i32* %source_depth, align 4, !tbaa !5
  %mul115 = mul nsw i32 %130, %131
  store i32 %mul115, i32* %xbit, align 4, !tbaa !5
  %132 = load i32, i32* %xbit, align 4, !tbaa !5
  %shr116 = ashr i32 %132, 3
  %133 = load i8*, i8** %source_base, align 8, !tbaa !1
  %idx.ext117 = sext i32 %shr116 to i64
  %add.ptr118 = getelementptr inbounds i8, i8* %133, i64 %idx.ext117
  store i8* %add.ptr118, i8** %source_base, align 8, !tbaa !1
  %134 = load i32, i32* %xbit, align 4, !tbaa !5
  %and = and i32 %134, 7
  store i32 %and, i32* %source_bit, align 4, !tbaa !5
  %135 = bitcast i32* %xbit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %135) #1
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.114, %cond.end.112
  store i32 0, i32* %iy, align 4, !tbaa !5
  br label %for.cond.120

for.cond.120:                                     ; preds = %for.inc.409, %if.end.119
  %136 = load i32, i32* %iy, align 4, !tbaa !5
  %137 = load i32, i32* %ch, align 4, !tbaa !5
  %cmp121 = icmp slt i32 %136, %137
  br i1 %cmp121, label %for.body.123, label %for.end.411

for.body.123:                                     ; preds = %for.cond.120
  %138 = bitcast i8** %sptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %138) #1
  %139 = load i8*, i8** %source_base, align 8, !tbaa !1
  store i8* %139, i8** %sptr, align 8, !tbaa !1
  %140 = bitcast i32* %sbit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %140) #1
  %141 = load i32, i32* %source_bit, align 4, !tbaa !5
  store i32 %141, i32* %sbit, align 4, !tbaa !5
  %142 = bitcast i8** %dptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %142) #1
  %b = bitcast %union.b_.2* %buf to [800 x i8]*
  %arraydecay = getelementptr inbounds [800 x i8], [800 x i8]* %b, i32 0, i32 0
  %143 = load i32, i32* %br, align 4, !tbaa !5
  %144 = load i32, i32* %iy, align 4, !tbaa !5
  %mul124 = mul nsw i32 %143, %144
  %idx.ext125 = sext i32 %mul124 to i64
  %add.ptr126 = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext125
  store i8* %add.ptr126, i8** %dptr, align 8, !tbaa !1
  %145 = bitcast i32* %dbit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %145) #1
  store i32 0, i32* %dbit, align 4, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %dbbyte) #1
  %146 = load i32, i32* %dbit, align 4, !tbaa !5
  %tobool127 = icmp ne i32 %146, 0
  br i1 %tobool127, label %cond.true.128, label %cond.false.134

cond.true.128:                                    ; preds = %for.body.123
  %147 = load i8*, i8** %dptr, align 8, !tbaa !1
  %148 = load i8, i8* %147, align 1, !tbaa !85
  %conv129 = zext i8 %148 to i32
  %149 = load i32, i32* %dbit, align 4, !tbaa !5
  %shr130 = ashr i32 65280, %149
  %and131 = and i32 %conv129, %shr130
  %conv132 = trunc i32 %and131 to i8
  %conv133 = zext i8 %conv132 to i32
  br label %cond.end.135

cond.false.134:                                   ; preds = %for.body.123
  br label %cond.end.135

cond.end.135:                                     ; preds = %cond.false.134, %cond.true.128
  %cond136 = phi i32 [ %conv133, %cond.true.128 ], [ 0, %cond.false.134 ]
  %conv137 = trunc i32 %cond136 to i8
  store i8 %conv137, i8* %dbbyte, align 1, !tbaa !85
  store i32 0, i32* %ix, align 4, !tbaa !5
  br label %for.cond.138

for.cond.138:                                     ; preds = %for.inc, %cond.end.135
  %150 = load i32, i32* %ix, align 4, !tbaa !5
  %151 = load i32, i32* %cw, align 4, !tbaa !5
  %cmp139 = icmp slt i32 %150, %151
  br i1 %cmp139, label %for.body.141, label %for.end

for.body.141:                                     ; preds = %for.cond.138
  %152 = bitcast i64* %value to i8*
  call void @llvm.lifetime.start(i64 8, i8* %152) #1
  br label %do.body.142

do.body.142:                                      ; preds = %for.body.141
  %153 = load i32, i32* %source_depth, align 4, !tbaa !5
  %shr143 = ashr i32 %153, 2
  switch i32 %shr143, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.151
    i32 2, label %sw.bb.157
    i32 3, label %sw.bb.159
    i32 4, label %sw.bb.178
    i32 6, label %sw.bb.185
    i32 8, label %sw.bb.196
    i32 10, label %sw.bb.211
    i32 12, label %sw.bb.230
    i32 14, label %sw.bb.253
    i32 16, label %sw.bb.280
  ]

sw.bb:                                            ; preds = %do.body.142
  %154 = load i8*, i8** %sptr, align 8, !tbaa !1
  %155 = load i8, i8* %154, align 1, !tbaa !85
  %conv144 = zext i8 %155 to i32
  %156 = load i32, i32* %sbit, align 4, !tbaa !5
  %sub145 = sub nsw i32 8, %156
  %157 = load i32, i32* %source_depth, align 4, !tbaa !5
  %sub146 = sub nsw i32 %sub145, %157
  %shr147 = ashr i32 %conv144, %sub146
  %158 = load i32, i32* %source_depth, align 4, !tbaa !5
  %or148 = or i32 %158, 1
  %and149 = and i32 %shr147, %or148
  %conv150 = sext i32 %and149 to i64
  store i64 %conv150, i64* %value, align 8, !tbaa !9
  br label %sw.epilog

sw.bb.151:                                        ; preds = %do.body.142
  %159 = load i8*, i8** %sptr, align 8, !tbaa !1
  %160 = load i8, i8* %159, align 1, !tbaa !85
  %conv152 = zext i8 %160 to i32
  %161 = load i32, i32* %sbit, align 4, !tbaa !5
  %sub153 = sub nsw i32 4, %161
  %shr154 = ashr i32 %conv152, %sub153
  %and155 = and i32 %shr154, 15
  %conv156 = sext i32 %and155 to i64
  store i64 %conv156, i64* %value, align 8, !tbaa !9
  br label %sw.epilog

sw.bb.157:                                        ; preds = %do.body.142
  %162 = load i8*, i8** %sptr, align 8, !tbaa !1
  %163 = load i8, i8* %162, align 1, !tbaa !85
  %conv158 = zext i8 %163 to i64
  store i64 %conv158, i64* %value, align 8, !tbaa !9
  br label %sw.epilog

sw.bb.159:                                        ; preds = %do.body.142
  %164 = load i32, i32* %sbit, align 4, !tbaa !5
  %tobool160 = icmp ne i32 %164, 0
  br i1 %tobool160, label %cond.true.161, label %cond.false.168

cond.true.161:                                    ; preds = %sw.bb.159
  %165 = load i8*, i8** %sptr, align 8, !tbaa !1
  %166 = load i8, i8* %165, align 1, !tbaa !85
  %conv162 = zext i8 %166 to i32
  %and163 = and i32 %conv162, 15
  %shl164 = shl i32 %and163, 8
  %167 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx165 = getelementptr inbounds i8, i8* %167, i64 1
  %168 = load i8, i8* %arrayidx165, align 1, !tbaa !85
  %conv166 = zext i8 %168 to i32
  %or167 = or i32 %shl164, %conv166
  br label %cond.end.175

cond.false.168:                                   ; preds = %sw.bb.159
  %169 = load i8*, i8** %sptr, align 8, !tbaa !1
  %170 = load i8, i8* %169, align 1, !tbaa !85
  %conv169 = zext i8 %170 to i32
  %shl170 = shl i32 %conv169, 4
  %171 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx171 = getelementptr inbounds i8, i8* %171, i64 1
  %172 = load i8, i8* %arrayidx171, align 1, !tbaa !85
  %conv172 = zext i8 %172 to i32
  %shr173 = ashr i32 %conv172, 4
  %or174 = or i32 %shl170, %shr173
  br label %cond.end.175

cond.end.175:                                     ; preds = %cond.false.168, %cond.true.161
  %cond176 = phi i32 [ %or167, %cond.true.161 ], [ %or174, %cond.false.168 ]
  %conv177 = sext i32 %cond176 to i64
  store i64 %conv177, i64* %value, align 8, !tbaa !9
  br label %sw.epilog

sw.bb.178:                                        ; preds = %do.body.142
  %173 = load i8*, i8** %sptr, align 8, !tbaa !1
  %174 = load i8, i8* %173, align 1, !tbaa !85
  %conv179 = zext i8 %174 to i32
  %shl180 = shl i32 %conv179, 8
  %175 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx181 = getelementptr inbounds i8, i8* %175, i64 1
  %176 = load i8, i8* %arrayidx181, align 1, !tbaa !85
  %conv182 = zext i8 %176 to i32
  %or183 = or i32 %shl180, %conv182
  %conv184 = sext i32 %or183 to i64
  store i64 %conv184, i64* %value, align 8, !tbaa !9
  br label %sw.epilog

sw.bb.185:                                        ; preds = %do.body.142
  %177 = load i8*, i8** %sptr, align 8, !tbaa !1
  %178 = load i8, i8* %177, align 1, !tbaa !85
  %conv186 = zext i8 %178 to i32
  %shl187 = shl i32 %conv186, 16
  %179 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx188 = getelementptr inbounds i8, i8* %179, i64 1
  %180 = load i8, i8* %arrayidx188, align 1, !tbaa !85
  %conv189 = zext i8 %180 to i32
  %shl190 = shl i32 %conv189, 8
  %or191 = or i32 %shl187, %shl190
  %181 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx192 = getelementptr inbounds i8, i8* %181, i64 2
  %182 = load i8, i8* %arrayidx192, align 1, !tbaa !85
  %conv193 = zext i8 %182 to i32
  %or194 = or i32 %or191, %conv193
  %conv195 = sext i32 %or194 to i64
  store i64 %conv195, i64* %value, align 8, !tbaa !9
  br label %sw.epilog

sw.bb.196:                                        ; preds = %do.body.142
  %183 = load i8*, i8** %sptr, align 8, !tbaa !1
  %184 = load i8, i8* %183, align 1, !tbaa !85
  %conv197 = zext i8 %184 to i32
  %shl198 = shl i32 %conv197, 24
  %185 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx199 = getelementptr inbounds i8, i8* %185, i64 1
  %186 = load i8, i8* %arrayidx199, align 1, !tbaa !85
  %conv200 = zext i8 %186 to i32
  %shl201 = shl i32 %conv200, 16
  %or202 = or i32 %shl198, %shl201
  %187 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx203 = getelementptr inbounds i8, i8* %187, i64 2
  %188 = load i8, i8* %arrayidx203, align 1, !tbaa !85
  %conv204 = zext i8 %188 to i32
  %shl205 = shl i32 %conv204, 8
  %or206 = or i32 %or202, %shl205
  %189 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx207 = getelementptr inbounds i8, i8* %189, i64 3
  %190 = load i8, i8* %arrayidx207, align 1, !tbaa !85
  %conv208 = zext i8 %190 to i32
  %or209 = or i32 %or206, %conv208
  %conv210 = sext i32 %or209 to i64
  store i64 %conv210, i64* %value, align 8, !tbaa !9
  br label %sw.epilog

sw.bb.211:                                        ; preds = %do.body.142
  %191 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx212 = getelementptr inbounds i8, i8* %191, i64 0
  %192 = load i8, i8* %arrayidx212, align 1, !tbaa !85
  %conv213 = zext i8 %192 to i64
  %shl214 = shl i64 %conv213, 32
  %193 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx215 = getelementptr inbounds i8, i8* %193, i64 1
  %194 = load i8, i8* %arrayidx215, align 1, !tbaa !85
  %conv216 = zext i8 %194 to i64
  %shl217 = shl i64 %conv216, 24
  %or218 = or i64 %shl214, %shl217
  %195 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx219 = getelementptr inbounds i8, i8* %195, i64 2
  %196 = load i8, i8* %arrayidx219, align 1, !tbaa !85
  %conv220 = zext i8 %196 to i64
  %shl221 = shl i64 %conv220, 16
  %or222 = or i64 %or218, %shl221
  %197 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx223 = getelementptr inbounds i8, i8* %197, i64 3
  %198 = load i8, i8* %arrayidx223, align 1, !tbaa !85
  %conv224 = zext i8 %198 to i64
  %shl225 = shl i64 %conv224, 8
  %or226 = or i64 %or222, %shl225
  %199 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx227 = getelementptr inbounds i8, i8* %199, i64 4
  %200 = load i8, i8* %arrayidx227, align 1, !tbaa !85
  %conv228 = zext i8 %200 to i64
  %or229 = or i64 %or226, %conv228
  store i64 %or229, i64* %value, align 8, !tbaa !9
  br label %sw.epilog

sw.bb.230:                                        ; preds = %do.body.142
  %201 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx231 = getelementptr inbounds i8, i8* %201, i64 0
  %202 = load i8, i8* %arrayidx231, align 1, !tbaa !85
  %conv232 = zext i8 %202 to i64
  %shl233 = shl i64 %conv232, 40
  %203 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx234 = getelementptr inbounds i8, i8* %203, i64 1
  %204 = load i8, i8* %arrayidx234, align 1, !tbaa !85
  %conv235 = zext i8 %204 to i64
  %shl236 = shl i64 %conv235, 32
  %or237 = or i64 %shl233, %shl236
  %205 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx238 = getelementptr inbounds i8, i8* %205, i64 2
  %206 = load i8, i8* %arrayidx238, align 1, !tbaa !85
  %conv239 = zext i8 %206 to i64
  %shl240 = shl i64 %conv239, 24
  %or241 = or i64 %or237, %shl240
  %207 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx242 = getelementptr inbounds i8, i8* %207, i64 3
  %208 = load i8, i8* %arrayidx242, align 1, !tbaa !85
  %conv243 = zext i8 %208 to i64
  %shl244 = shl i64 %conv243, 16
  %or245 = or i64 %or241, %shl244
  %209 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx246 = getelementptr inbounds i8, i8* %209, i64 4
  %210 = load i8, i8* %arrayidx246, align 1, !tbaa !85
  %conv247 = zext i8 %210 to i64
  %shl248 = shl i64 %conv247, 8
  %or249 = or i64 %or245, %shl248
  %211 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx250 = getelementptr inbounds i8, i8* %211, i64 5
  %212 = load i8, i8* %arrayidx250, align 1, !tbaa !85
  %conv251 = zext i8 %212 to i64
  %or252 = or i64 %or249, %conv251
  store i64 %or252, i64* %value, align 8, !tbaa !9
  br label %sw.epilog

sw.bb.253:                                        ; preds = %do.body.142
  %213 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx254 = getelementptr inbounds i8, i8* %213, i64 0
  %214 = load i8, i8* %arrayidx254, align 1, !tbaa !85
  %conv255 = zext i8 %214 to i64
  %shl256 = shl i64 %conv255, 48
  %215 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx257 = getelementptr inbounds i8, i8* %215, i64 1
  %216 = load i8, i8* %arrayidx257, align 1, !tbaa !85
  %conv258 = zext i8 %216 to i64
  %shl259 = shl i64 %conv258, 40
  %or260 = or i64 %shl256, %shl259
  %217 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx261 = getelementptr inbounds i8, i8* %217, i64 2
  %218 = load i8, i8* %arrayidx261, align 1, !tbaa !85
  %conv262 = zext i8 %218 to i64
  %shl263 = shl i64 %conv262, 32
  %or264 = or i64 %or260, %shl263
  %219 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx265 = getelementptr inbounds i8, i8* %219, i64 3
  %220 = load i8, i8* %arrayidx265, align 1, !tbaa !85
  %conv266 = zext i8 %220 to i64
  %shl267 = shl i64 %conv266, 24
  %or268 = or i64 %or264, %shl267
  %221 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx269 = getelementptr inbounds i8, i8* %221, i64 4
  %222 = load i8, i8* %arrayidx269, align 1, !tbaa !85
  %conv270 = zext i8 %222 to i64
  %shl271 = shl i64 %conv270, 16
  %or272 = or i64 %or268, %shl271
  %223 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx273 = getelementptr inbounds i8, i8* %223, i64 5
  %224 = load i8, i8* %arrayidx273, align 1, !tbaa !85
  %conv274 = zext i8 %224 to i64
  %shl275 = shl i64 %conv274, 8
  %or276 = or i64 %or272, %shl275
  %225 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx277 = getelementptr inbounds i8, i8* %225, i64 6
  %226 = load i8, i8* %arrayidx277, align 1, !tbaa !85
  %conv278 = zext i8 %226 to i64
  %or279 = or i64 %or276, %conv278
  store i64 %or279, i64* %value, align 8, !tbaa !9
  br label %sw.epilog

sw.bb.280:                                        ; preds = %do.body.142
  %227 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx281 = getelementptr inbounds i8, i8* %227, i64 0
  %228 = load i8, i8* %arrayidx281, align 1, !tbaa !85
  %conv282 = zext i8 %228 to i64
  %shl283 = shl i64 %conv282, 56
  %229 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx284 = getelementptr inbounds i8, i8* %229, i64 1
  %230 = load i8, i8* %arrayidx284, align 1, !tbaa !85
  %conv285 = zext i8 %230 to i64
  %shl286 = shl i64 %conv285, 48
  %or287 = or i64 %shl283, %shl286
  %231 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx288 = getelementptr inbounds i8, i8* %231, i64 2
  %232 = load i8, i8* %arrayidx288, align 1, !tbaa !85
  %conv289 = zext i8 %232 to i64
  %shl290 = shl i64 %conv289, 40
  %or291 = or i64 %or287, %shl290
  %233 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx292 = getelementptr inbounds i8, i8* %233, i64 3
  %234 = load i8, i8* %arrayidx292, align 1, !tbaa !85
  %conv293 = zext i8 %234 to i64
  %shl294 = shl i64 %conv293, 32
  %or295 = or i64 %or291, %shl294
  %235 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx296 = getelementptr inbounds i8, i8* %235, i64 4
  %236 = load i8, i8* %arrayidx296, align 1, !tbaa !85
  %conv297 = zext i8 %236 to i64
  %shl298 = shl i64 %conv297, 24
  %or299 = or i64 %or295, %shl298
  %237 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx300 = getelementptr inbounds i8, i8* %237, i64 5
  %238 = load i8, i8* %arrayidx300, align 1, !tbaa !85
  %conv301 = zext i8 %238 to i64
  %shl302 = shl i64 %conv301, 16
  %or303 = or i64 %or299, %shl302
  %239 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx304 = getelementptr inbounds i8, i8* %239, i64 6
  %240 = load i8, i8* %arrayidx304, align 1, !tbaa !85
  %conv305 = zext i8 %240 to i64
  %shl306 = shl i64 %conv305, 8
  %or307 = or i64 %or303, %shl306
  %241 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx308 = getelementptr inbounds i8, i8* %241, i64 7
  %242 = load i8, i8* %arrayidx308, align 1, !tbaa !85
  %conv309 = zext i8 %242 to i64
  %or310 = or i64 %or307, %conv309
  store i64 %or310, i64* %value, align 8, !tbaa !9
  br label %sw.epilog

sw.default:                                       ; preds = %do.body.142
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.280, %sw.bb.253, %sw.bb.230, %sw.bb.211, %sw.bb.196, %sw.bb.185, %sw.bb.178, %cond.end.175, %sw.bb.157, %sw.bb.151, %sw.bb
  br label %do.cond.311

do.cond.311:                                      ; preds = %sw.epilog
  br label %do.end.312

do.end.312:                                       ; preds = %do.cond.311
  br label %do.body.313

do.body.313:                                      ; preds = %do.end.312
  %243 = load i32, i32* %source_depth, align 4, !tbaa !5
  %244 = load i32, i32* %sbit, align 4, !tbaa !5
  %add314 = add nsw i32 %244, %243
  store i32 %add314, i32* %sbit, align 4, !tbaa !5
  %245 = load i32, i32* %sbit, align 4, !tbaa !5
  %shr315 = ashr i32 %245, 3
  %246 = load i8*, i8** %sptr, align 8, !tbaa !1
  %idx.ext316 = sext i32 %shr315 to i64
  %add.ptr317 = getelementptr inbounds i8, i8* %246, i64 %idx.ext316
  store i8* %add.ptr317, i8** %sptr, align 8, !tbaa !1
  %247 = load i32, i32* %sbit, align 4, !tbaa !5
  %and318 = and i32 %247, 7
  store i32 %and318, i32* %sbit, align 4, !tbaa !5
  br label %do.cond.319

do.cond.319:                                      ; preds = %do.body.313
  br label %do.end.320

do.end.320:                                       ; preds = %do.cond.319
  %248 = load i64, i64* %value, align 8, !tbaa !9
  %249 = load i32, i32* %shift, align 4, !tbaa !5
  %sh_prom321 = zext i32 %249 to i64
  %shr322 = lshr i64 %248, %sh_prom321
  %250 = load i64, i64* %mask, align 8, !tbaa !9
  %and323 = and i64 %shr322, %250
  store i64 %and323, i64* %value, align 8, !tbaa !9
  br label %do.body.324

do.body.324:                                      ; preds = %do.end.320
  %251 = load i32, i32* %plane_depth, align 4, !tbaa !5
  %shr325 = ashr i32 %251, 2
  switch i32 %shr325, label %sw.default.386 [
    i32 0, label %sw.bb.326
    i32 1, label %sw.bb.346
    i32 3, label %sw.bb.359
    i32 4, label %sw.bb.379
    i32 2, label %sw.bb.383
  ]

sw.bb.326:                                        ; preds = %do.body.324
  %252 = load i32, i32* %plane_depth, align 4, !tbaa !5
  %253 = load i32, i32* %dbit, align 4, !tbaa !5
  %add327 = add nsw i32 %253, %252
  store i32 %add327, i32* %dbit, align 4, !tbaa !5
  %cmp328 = icmp eq i32 %add327, 8
  br i1 %cmp328, label %if.then.330, label %if.else.336

if.then.330:                                      ; preds = %sw.bb.326
  %254 = load i8, i8* %dbbyte, align 1, !tbaa !85
  %conv331 = zext i8 %254 to i32
  %255 = load i64, i64* %value, align 8, !tbaa !9
  %conv332 = trunc i64 %255 to i8
  %conv333 = zext i8 %conv332 to i32
  %or334 = or i32 %conv331, %conv333
  %conv335 = trunc i32 %or334 to i8
  %256 = load i8*, i8** %dptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %256, i32 1
  store i8* %incdec.ptr, i8** %dptr, align 8, !tbaa !1
  store i8 %conv335, i8* %256, align 1, !tbaa !85
  store i8 0, i8* %dbbyte, align 1, !tbaa !85
  store i32 0, i32* %dbit, align 4, !tbaa !5
  br label %if.end.345

if.else.336:                                      ; preds = %sw.bb.326
  %257 = load i64, i64* %value, align 8, !tbaa !9
  %258 = load i32, i32* %dbit, align 4, !tbaa !5
  %sub337 = sub nsw i32 8, %258
  %sh_prom338 = zext i32 %sub337 to i64
  %shl339 = shl i64 %257, %sh_prom338
  %conv340 = trunc i64 %shl339 to i8
  %conv341 = zext i8 %conv340 to i32
  %259 = load i8, i8* %dbbyte, align 1, !tbaa !85
  %conv342 = zext i8 %259 to i32
  %or343 = or i32 %conv342, %conv341
  %conv344 = trunc i32 %or343 to i8
  store i8 %conv344, i8* %dbbyte, align 1, !tbaa !85
  br label %if.end.345

if.end.345:                                       ; preds = %if.else.336, %if.then.330
  br label %sw.epilog.387

sw.bb.346:                                        ; preds = %do.body.324
  %260 = load i32, i32* %dbit, align 4, !tbaa !5
  %xor = xor i32 %260, 4
  store i32 %xor, i32* %dbit, align 4, !tbaa !5
  %tobool347 = icmp ne i32 %xor, 0
  br i1 %tobool347, label %if.then.348, label %if.else.351

if.then.348:                                      ; preds = %sw.bb.346
  %261 = load i64, i64* %value, align 8, !tbaa !9
  %shl349 = shl i64 %261, 4
  %conv350 = trunc i64 %shl349 to i8
  store i8 %conv350, i8* %dbbyte, align 1, !tbaa !85
  br label %if.end.358

if.else.351:                                      ; preds = %sw.bb.346
  %262 = load i8, i8* %dbbyte, align 1, !tbaa !85
  %conv352 = zext i8 %262 to i32
  %263 = load i64, i64* %value, align 8, !tbaa !9
  %conv353 = trunc i64 %263 to i8
  %conv354 = zext i8 %conv353 to i32
  %or355 = or i32 %conv352, %conv354
  %conv356 = trunc i32 %or355 to i8
  %264 = load i8*, i8** %dptr, align 8, !tbaa !1
  %incdec.ptr357 = getelementptr inbounds i8, i8* %264, i32 1
  store i8* %incdec.ptr357, i8** %dptr, align 8, !tbaa !1
  store i8 %conv356, i8* %264, align 1, !tbaa !85
  br label %if.end.358

if.end.358:                                       ; preds = %if.else.351, %if.then.348
  br label %sw.epilog.387

sw.bb.359:                                        ; preds = %do.body.324
  %265 = load i32, i32* %dbit, align 4, !tbaa !5
  %xor360 = xor i32 %265, 4
  store i32 %xor360, i32* %dbit, align 4, !tbaa !5
  %tobool361 = icmp ne i32 %xor360, 0
  br i1 %tobool361, label %if.then.362, label %if.else.368

if.then.362:                                      ; preds = %sw.bb.359
  %266 = load i64, i64* %value, align 8, !tbaa !9
  %shr363 = lshr i64 %266, 4
  %conv364 = trunc i64 %shr363 to i8
  %267 = load i8*, i8** %dptr, align 8, !tbaa !1
  %incdec.ptr365 = getelementptr inbounds i8, i8* %267, i32 1
  store i8* %incdec.ptr365, i8** %dptr, align 8, !tbaa !1
  store i8 %conv364, i8* %267, align 1, !tbaa !85
  %268 = load i64, i64* %value, align 8, !tbaa !9
  %shl366 = shl i64 %268, 4
  %conv367 = trunc i64 %shl366 to i8
  store i8 %conv367, i8* %dbbyte, align 1, !tbaa !85
  br label %if.end.378

if.else.368:                                      ; preds = %sw.bb.359
  %269 = load i8, i8* %dbbyte, align 1, !tbaa !85
  %conv369 = zext i8 %269 to i32
  %270 = load i64, i64* %value, align 8, !tbaa !9
  %shr370 = lshr i64 %270, 8
  %conv371 = trunc i64 %shr370 to i8
  %conv372 = zext i8 %conv371 to i32
  %or373 = or i32 %conv369, %conv372
  %conv374 = trunc i32 %or373 to i8
  %271 = load i8*, i8** %dptr, align 8, !tbaa !1
  store i8 %conv374, i8* %271, align 1, !tbaa !85
  %272 = load i64, i64* %value, align 8, !tbaa !9
  %conv375 = trunc i64 %272 to i8
  %273 = load i8*, i8** %dptr, align 8, !tbaa !1
  %arrayidx376 = getelementptr inbounds i8, i8* %273, i64 1
  store i8 %conv375, i8* %arrayidx376, align 1, !tbaa !85
  %274 = load i8*, i8** %dptr, align 8, !tbaa !1
  %add.ptr377 = getelementptr inbounds i8, i8* %274, i64 2
  store i8* %add.ptr377, i8** %dptr, align 8, !tbaa !1
  br label %if.end.378

if.end.378:                                       ; preds = %if.else.368, %if.then.362
  br label %sw.epilog.387

sw.bb.379:                                        ; preds = %do.body.324
  %275 = load i64, i64* %value, align 8, !tbaa !9
  %shr380 = lshr i64 %275, 8
  %conv381 = trunc i64 %shr380 to i8
  %276 = load i8*, i8** %dptr, align 8, !tbaa !1
  %incdec.ptr382 = getelementptr inbounds i8, i8* %276, i32 1
  store i8* %incdec.ptr382, i8** %dptr, align 8, !tbaa !1
  store i8 %conv381, i8* %276, align 1, !tbaa !85
  br label %sw.bb.383

sw.bb.383:                                        ; preds = %do.body.324, %sw.bb.379
  %277 = load i64, i64* %value, align 8, !tbaa !9
  %conv384 = trunc i64 %277 to i8
  %278 = load i8*, i8** %dptr, align 8, !tbaa !1
  %incdec.ptr385 = getelementptr inbounds i8, i8* %278, i32 1
  store i8* %incdec.ptr385, i8** %dptr, align 8, !tbaa !1
  store i8 %conv384, i8* %278, align 1, !tbaa !85
  br label %sw.epilog.387

sw.default.386:                                   ; preds = %do.body.324
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog.387:                                    ; preds = %sw.bb.383, %if.end.378, %if.end.358, %if.end.345
  br label %do.cond.388

do.cond.388:                                      ; preds = %sw.epilog.387
  br label %do.end.389

do.end.389:                                       ; preds = %do.cond.388
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.389, %sw.default.386, %sw.default
  %279 = bitcast i64* %value to i8*
  call void @llvm.lifetime.end(i64 8, i8* %279) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.402 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %280 = load i32, i32* %ix, align 4, !tbaa !5
  %inc = add nsw i32 %280, 1
  store i32 %inc, i32* %ix, align 4, !tbaa !5
  br label %for.cond.138

for.end:                                          ; preds = %for.cond.138
  %281 = load i32, i32* %dbit, align 4, !tbaa !5
  %cmp390 = icmp ne i32 %281, 0
  br i1 %cmp390, label %if.then.392, label %if.end.399

if.then.392:                                      ; preds = %for.end
  %282 = load i8, i8* %dbbyte, align 1, !tbaa !85
  %conv393 = zext i8 %282 to i32
  %283 = load i8*, i8** %dptr, align 8, !tbaa !1
  %284 = load i8, i8* %283, align 1, !tbaa !85
  %conv394 = zext i8 %284 to i32
  %285 = load i32, i32* %dbit, align 4, !tbaa !5
  %shr395 = ashr i32 255, %285
  %and396 = and i32 %conv394, %shr395
  %or397 = or i32 %conv393, %and396
  %conv398 = trunc i32 %or397 to i8
  %286 = load i8*, i8** %dptr, align 8, !tbaa !1
  store i8 %conv398, i8* %286, align 1, !tbaa !85
  br label %if.end.399

if.end.399:                                       ; preds = %if.then.392, %for.end
  %287 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %288 = load i8*, i8** %source_base, align 8, !tbaa !1
  %idx.ext400 = sext i32 %287 to i64
  %add.ptr401 = getelementptr inbounds i8, i8* %288, i64 %idx.ext400
  store i8* %add.ptr401, i8** %source_base, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.402

cleanup.402:                                      ; preds = %if.end.399, %cleanup
  call void @llvm.lifetime.end(i64 1, i8* %dbbyte) #1
  %289 = bitcast i32* %dbit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %289) #1
  %290 = bitcast i8** %dptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %290) #1
  %291 = bitcast i32* %sbit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %291) #1
  %292 = bitcast i8** %sptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %292) #1
  %cleanup.dest.407 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.407, label %cleanup.424 [
    i32 0, label %cleanup.cont.408
  ]

cleanup.cont.408:                                 ; preds = %cleanup.402
  br label %for.inc.409

for.inc.409:                                      ; preds = %cleanup.cont.408
  %293 = load i32, i32* %iy, align 4, !tbaa !5
  %inc410 = add nsw i32 %293, 1
  store i32 %inc410, i32* %iy, align 4, !tbaa !5
  br label %for.cond.120

for.end.411:                                      ; preds = %for.cond.120
  %294 = load i32, i32* %plane_depth, align 4, !tbaa !5
  %cmp412 = icmp eq i32 %294, 1
  br i1 %cmp412, label %if.then.414, label %if.else.418

if.then.414:                                      ; preds = %for.end.411
  %295 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %295, i32 0, i32 42
  %copy_mono = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 9
  %296 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono, align 8, !tbaa !38
  %297 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %b415 = bitcast %union.b_.2* %buf to [800 x i8]*
  %arraydecay416 = getelementptr inbounds [800 x i8], [800 x i8]* %b415, i32 0, i32 0
  %298 = load i32, i32* %br, align 4, !tbaa !5
  %299 = load i32, i32* %cx, align 4, !tbaa !5
  %300 = load i32, i32* %cy, align 4, !tbaa !5
  %301 = load i32, i32* %cw, align 4, !tbaa !5
  %302 = load i32, i32* %ch, align 4, !tbaa !5
  %call417 = call i32 %296(%struct.gx_device_s* %297, i8* %arraydecay416, i32 0, i32 %298, i64 0, i32 %299, i32 %300, i32 %301, i32 %302, i64 0, i64 1) #4
  br label %if.end.423

if.else.418:                                      ; preds = %for.end.411
  %303 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %procs419 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %303, i32 0, i32 42
  %copy_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs419, i32 0, i32 10
  %304 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %copy_color, align 8, !tbaa !39
  %305 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %b420 = bitcast %union.b_.2* %buf to [800 x i8]*
  %arraydecay421 = getelementptr inbounds [800 x i8], [800 x i8]* %b420, i32 0, i32 0
  %306 = load i32, i32* %br, align 4, !tbaa !5
  %307 = load i32, i32* %cx, align 4, !tbaa !5
  %308 = load i32, i32* %cy, align 4, !tbaa !5
  %309 = load i32, i32* %cw, align 4, !tbaa !5
  %310 = load i32, i32* %ch, align 4, !tbaa !5
  %call422 = call i32 %304(%struct.gx_device_s* %305, i8* %arraydecay421, i32 0, i32 %306, i64 0, i32 %307, i32 %308, i32 %309, i32 %310) #4
  br label %if.end.423

if.end.423:                                       ; preds = %if.else.418, %if.then.414
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.424

cleanup.424:                                      ; preds = %if.end.423, %cleanup.402
  %311 = bitcast i32* %source_bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %311) #1
  %312 = bitcast i8** %source_base to i8*
  call void @llvm.lifetime.end(i64 8, i8* %312) #1
  %313 = bitcast i32* %sx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %313) #1
  %cleanup.dest.427 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.427, label %cleanup.439 [
    i32 0, label %cleanup.cont.428
  ]

cleanup.cont.428:                                 ; preds = %cleanup.424
  br label %for.inc.429

for.inc.429:                                      ; preds = %cleanup.cont.428
  %314 = load i32, i32* %cw, align 4, !tbaa !5
  %315 = load i32, i32* %cx, align 4, !tbaa !5
  %add430 = add nsw i32 %315, %314
  store i32 %add430, i32* %cx, align 4, !tbaa !5
  br label %for.cond.93

for.end.431:                                      ; preds = %for.cond.93
  br label %for.inc.432

for.inc.432:                                      ; preds = %for.end.431
  %316 = load i32, i32* %ch, align 4, !tbaa !5
  %317 = load i32, i32* %cy, align 4, !tbaa !5
  %add433 = add nsw i32 %317, %316
  store i32 %add433, i32* %cy, align 4, !tbaa !5
  br label %for.cond.78

for.end.434:                                      ; preds = %for.cond.78
  %318 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %height435 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %318, i32 0, i32 14
  %319 = load i32, i32* %height435, align 4, !tbaa !75
  %320 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs436 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %320, i32 0, i32 52
  %321 = load i8**, i8*** %line_ptrs436, align 8, !tbaa !73
  %idx.ext437 = sext i32 %319 to i64
  %add.ptr438 = getelementptr inbounds i8*, i8** %321, i64 %idx.ext437
  store i8** %add.ptr438, i8*** %line_ptrs436, align 8, !tbaa !73
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.439

cleanup.439:                                      ; preds = %for.end.434, %cleanup.424
  %322 = bitcast i32* %iy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %322) #1
  %323 = bitcast i32* %ix to i8*
  call void @llvm.lifetime.end(i64 4, i8* %323) #1
  %324 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.end(i64 4, i8* %324) #1
  %325 = bitcast i32* %cw to i8*
  call void @llvm.lifetime.end(i64 4, i8* %325) #1
  %326 = bitcast i32* %cy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %326) #1
  %327 = bitcast i32* %cx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %327) #1
  %328 = bitcast i32* %bh to i8*
  call void @llvm.lifetime.end(i64 4, i8* %328) #1
  %329 = bitcast i32* %bw to i8*
  call void @llvm.lifetime.end(i64 4, i8* %329) #1
  %330 = bitcast i32* %br to i8*
  call void @llvm.lifetime.end(i64 4, i8* %330) #1
  %331 = bitcast i32* %plane_raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %331) #1
  %332 = bitcast %struct.gx_device_memory_s** %mdproto to i8*
  call void @llvm.lifetime.end(i64 8, i8* %332) #1
  %333 = bitcast i64* %mask to i8*
  call void @llvm.lifetime.end(i64 8, i8* %333) #1
  %334 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %334) #1
  %335 = bitcast i32* %plane_depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %335) #1
  %cleanup.dest.453 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.453, label %cleanup.466 [
    i32 0, label %cleanup.cont.454
  ]

cleanup.cont.454:                                 ; preds = %cleanup.439
  br label %for.inc.455

for.inc.455:                                      ; preds = %cleanup.cont.454
  %336 = load i32, i32* %pi, align 4, !tbaa !5
  %inc456 = add nsw i32 %336, 1
  store i32 %inc456, i32* %pi, align 4, !tbaa !5
  br label %for.cond

for.end.457:                                      ; preds = %for.cond
  %depth458 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 0
  %337 = load i32, i32* %depth458, align 4, !tbaa !69
  %conv459 = trunc i32 %337 to i16
  %338 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color_info460 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %338, i32 0, i32 11
  %depth461 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info460, i32 0, i32 3
  store i16 %conv459, i16* %depth461, align 2, !tbaa !11
  %base462 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 1
  %339 = load i8*, i8** %base462, align 8, !tbaa !72
  %340 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %base463 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %340, i32 0, i32 45
  store i8* %339, i8** %base463, align 8, !tbaa !71
  %line_ptrs464 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 2
  %341 = load i8**, i8*** %line_ptrs464, align 8, !tbaa !74
  %342 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs465 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %342, i32 0, i32 52
  store i8** %341, i8*** %line_ptrs465, align 8, !tbaa !73
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.466

cleanup.466:                                      ; preds = %for.end.457, %cleanup.439, %if.then.30
  %343 = bitcast i32* %pi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %343) #1
  %344 = bitcast %struct.mem_save_params_s* %save to i8*
  call void @llvm.lifetime.end(i64 24, i8* %344) #1
  %345 = bitcast i32* %source_depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %345) #1
  %346 = bitcast %union.b_.2* %buf to i8*
  call void @llvm.lifetime.end(i64 800, i8* %346) #1
  %347 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %347) #1
  %348 = load i32, i32* %retval
  ret i32 %348
}

declare i32 @gx_default_copy_alpha(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @mem_planar_copy_planes(%struct.gx_device_s* %dev, i8* %base, i32 %sourcex, i32 %sraster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, i32 %plane_height) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %base.addr = alloca i8*, align 8
  %sourcex.addr = alloca i32, align 4
  %sraster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %plane_height.addr = alloca i32, align 4
  %mdev = alloca %struct.gx_device_memory_s*, align 8
  %plane_depth = alloca i32, align 4
  %save = alloca %struct.mem_save_params_s, align 8
  %mdproto = alloca %struct.gx_device_memory_s*, align 8
  %code = alloca i32, align 4
  %plane = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %base, i8** %base.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 %sraster, i32* %sraster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !9
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store i32 %plane_height, i32* %plane_height.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %2, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %3 = bitcast i32* %plane_depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %struct.mem_save_params_s* %save to i8*
  call void @llvm.lifetime.start(i64 24, i8* %4) #1
  %5 = bitcast %struct.gx_device_memory_s** %mdproto to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %7 = bitcast i32* %plane to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %8, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %9 = load i16, i16* %depth, align 2, !tbaa !11
  %conv = zext i16 %9 to i32
  %depth1 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 0
  store i32 %conv, i32* %depth1, align 4, !tbaa !69
  %10 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %base2 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %10, i32 0, i32 45
  %11 = load i8*, i8** %base2, align 8, !tbaa !71
  %base3 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 1
  store i8* %11, i8** %base3, align 8, !tbaa !72
  %12 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %12, i32 0, i32 52
  %13 = load i8**, i8*** %line_ptrs, align 8, !tbaa !73
  %line_ptrs4 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 2
  store i8** %13, i8*** %line_ptrs4, align 8, !tbaa !74
  store i32 0, i32* %plane, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %14 = load i32, i32* %plane, align 4, !tbaa !5
  %15 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color_info5 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %15, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info5, i32 0, i32 1
  %16 = load i32, i32* %num_components, align 4, !tbaa !32
  %cmp = icmp slt i32 %14, %16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom = sext i32 %17 to i64
  %18 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %planes = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %18, i32 0, i32 50
  %arrayidx = getelementptr inbounds [64 x %struct.gx_render_plane_s], [64 x %struct.gx_render_plane_s]* %planes, i32 0, i64 %idxprom
  %depth7 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %arrayidx, i32 0, i32 0
  %19 = load i32, i32* %depth7, align 4, !tbaa !7
  store i32 %19, i32* %plane_depth, align 4, !tbaa !5
  %20 = load i32, i32* %plane_depth, align 4, !tbaa !5
  %call = call %struct.gx_device_memory_s* @gdev_mem_device_for_bits(i32 %20) #4
  store %struct.gx_device_memory_s* %call, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %21 = load i32, i32* %plane_depth, align 4, !tbaa !5
  %cmp8 = icmp eq i32 %21, 1
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %22 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %22, i32 0, i32 42
  %copy_mono = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 9
  %23 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono, align 8, !tbaa !38
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %25 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %26 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %27 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %28 = load i64, i64* %id.addr, align 8, !tbaa !9
  %29 = load i32, i32* %x.addr, align 4, !tbaa !5
  %30 = load i32, i32* %y.addr, align 4, !tbaa !5
  %31 = load i32, i32* %w.addr, align 4, !tbaa !5
  %32 = load i32, i32* %h.addr, align 4, !tbaa !5
  %call10 = call i32 %23(%struct.gx_device_s* %24, i8* %25, i32 %26, i32 %27, i64 %28, i32 %29, i32 %30, i32 %31, i32 %32, i64 0, i64 1) #4
  store i32 %call10, i32* %code, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %for.body
  %33 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %procs11 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %33, i32 0, i32 42
  %copy_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs11, i32 0, i32 10
  %34 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %copy_color, align 8, !tbaa !39
  %35 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %36 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %37 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %38 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %39 = load i64, i64* %id.addr, align 8, !tbaa !9
  %40 = load i32, i32* %x.addr, align 4, !tbaa !5
  %41 = load i32, i32* %y.addr, align 4, !tbaa !5
  %42 = load i32, i32* %w.addr, align 4, !tbaa !5
  %43 = load i32, i32* %h.addr, align 4, !tbaa !5
  %call12 = call i32 %34(%struct.gx_device_s* %35, i8* %36, i32 %37, i32 %38, i64 %39, i32 %40, i32 %41, i32 %42, i32 %43) #4
  store i32 %call12, i32* %code, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %44 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %45 = load i32, i32* %plane_height.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %44, %45
  %46 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %46, i64 %idx.ext
  store i8* %add.ptr, i8** %base.addr, align 8, !tbaa !1
  %47 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %47, i32 0, i32 14
  %48 = load i32, i32* %height, align 4, !tbaa !75
  %49 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs13 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %49, i32 0, i32 52
  %50 = load i8**, i8*** %line_ptrs13, align 8, !tbaa !73
  %idx.ext14 = sext i32 %48 to i64
  %add.ptr15 = getelementptr inbounds i8*, i8** %50, i64 %idx.ext14
  store i8** %add.ptr15, i8*** %line_ptrs13, align 8, !tbaa !73
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %51 = load i32, i32* %plane, align 4, !tbaa !5
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* %plane, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %depth16 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 0
  %52 = load i32, i32* %depth16, align 4, !tbaa !69
  %conv17 = trunc i32 %52 to i16
  %53 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color_info18 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %53, i32 0, i32 11
  %depth19 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info18, i32 0, i32 3
  store i16 %conv17, i16* %depth19, align 2, !tbaa !11
  %base20 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 1
  %54 = load i8*, i8** %base20, align 8, !tbaa !72
  %55 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %base21 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %55, i32 0, i32 45
  store i8* %54, i8** %base21, align 8, !tbaa !71
  %line_ptrs22 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 2
  %56 = load i8**, i8*** %line_ptrs22, align 8, !tbaa !74
  %57 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs23 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %57, i32 0, i32 52
  store i8** %56, i8*** %line_ptrs23, align 8, !tbaa !73
  %58 = load i32, i32* %code, align 4, !tbaa !5
  %59 = bitcast i32* %plane to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = bitcast %struct.gx_device_memory_s** %mdproto to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  %62 = bitcast %struct.mem_save_params_s* %save to i8*
  call void @llvm.lifetime.end(i64 24, i8* %62) #1
  %63 = bitcast i32* %plane_depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  ret i32 %58
}

; Function Attrs: nounwind uwtable
define internal i32 @mem_planar_strip_tile_rectangle(%struct.gx_device_s* %dev, %struct.gx_strip_bitmap_s* %tiles, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color0, i64 %color1, i32 %px, i32 %py) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %tiles.addr = alloca %struct.gx_strip_bitmap_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %color0.addr = alloca i64, align 8
  %color1.addr = alloca i64, align 8
  %px.addr = alloca i32, align 4
  %py.addr = alloca i32, align 4
  %mdev = alloca %struct.gx_device_memory_s*, align 8
  %save = alloca %struct.mem_save_params_s, align 8
  %pi = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %plane_depth = alloca i32, align 4
  %shift = alloca i32, align 4
  %mask = alloca i64, align 8
  %mdproto = alloca %struct.gx_device_memory_s*, align 8
  %c0 = alloca i64, align 8
  %c1 = alloca i64, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_strip_bitmap_s* %tiles, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store i64 %color0, i64* %color0.addr, align 8, !tbaa !9
  store i64 %color1, i64* %color1.addr, align 8, !tbaa !9
  store i32 %px, i32* %px.addr, align 4, !tbaa !5
  store i32 %py, i32* %py.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %2, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %3 = bitcast %struct.mem_save_params_s* %save to i8*
  call void @llvm.lifetime.start(i64 24, i8* %3) #1
  %4 = bitcast i32* %pi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i64, i64* %color0.addr, align 8, !tbaa !9
  %cmp = icmp eq i64 %5, -1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = load i64, i64* %color1.addr, align 8, !tbaa !9
  %cmp1 = icmp eq i64 %6, -1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %8 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %9 = load i32, i32* %x.addr, align 4, !tbaa !5
  %10 = load i32, i32* %y.addr, align 4, !tbaa !5
  %11 = load i32, i32* %w.addr, align 4, !tbaa !5
  %12 = load i32, i32* %h.addr, align 4, !tbaa !5
  %13 = load i64, i64* %color0.addr, align 8, !tbaa !9
  %14 = load i64, i64* %color1.addr, align 8, !tbaa !9
  %15 = load i32, i32* %px.addr, align 4, !tbaa !5
  %16 = load i32, i32* %py.addr, align 4, !tbaa !5
  %call = call i32 @gx_default_strip_tile_rectangle(%struct.gx_device_s* %7, %struct.gx_strip_bitmap_s* %8, i32 %9, i32 %10, i32 %11, i32 %12, i64 %13, i64 %14, i32 %15, i32 %16) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %17 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %17, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %18 = load i16, i16* %depth, align 2, !tbaa !11
  %conv = zext i16 %18 to i32
  %depth2 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 0
  store i32 %conv, i32* %depth2, align 4, !tbaa !69
  %19 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %base = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %19, i32 0, i32 45
  %20 = load i8*, i8** %base, align 8, !tbaa !71
  %base3 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 1
  store i8* %20, i8** %base3, align 8, !tbaa !72
  %21 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %21, i32 0, i32 52
  %22 = load i8**, i8*** %line_ptrs, align 8, !tbaa !73
  %line_ptrs4 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 2
  store i8** %22, i8*** %line_ptrs4, align 8, !tbaa !74
  store i32 0, i32* %pi, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %23 = load i32, i32* %pi, align 4, !tbaa !5
  %24 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color_info5 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %24, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info5, i32 0, i32 1
  %25 = load i32, i32* %num_components, align 4, !tbaa !32
  %cmp6 = icmp slt i32 %23, %25
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = bitcast i32* %plane_depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %27 = load i32, i32* %pi, align 4, !tbaa !5
  %idxprom = sext i32 %27 to i64
  %28 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %planes = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %28, i32 0, i32 50
  %arrayidx = getelementptr inbounds [64 x %struct.gx_render_plane_s], [64 x %struct.gx_render_plane_s]* %planes, i32 0, i64 %idxprom
  %depth8 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %arrayidx, i32 0, i32 0
  %29 = load i32, i32* %depth8, align 4, !tbaa !7
  store i32 %29, i32* %plane_depth, align 4, !tbaa !5
  %30 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  %31 = load i32, i32* %pi, align 4, !tbaa !5
  %idxprom9 = sext i32 %31 to i64
  %32 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %planes10 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %32, i32 0, i32 50
  %arrayidx11 = getelementptr inbounds [64 x %struct.gx_render_plane_s], [64 x %struct.gx_render_plane_s]* %planes10, i32 0, i64 %idxprom9
  %shift12 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %arrayidx11, i32 0, i32 1
  %33 = load i32, i32* %shift12, align 4, !tbaa !33
  store i32 %33, i32* %shift, align 4, !tbaa !5
  %34 = bitcast i64* %mask to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #1
  %35 = load i32, i32* %plane_depth, align 4, !tbaa !5
  %sh_prom = zext i32 %35 to i64
  %shl = shl i64 1, %sh_prom
  %sub = sub i64 %shl, 1
  store i64 %sub, i64* %mask, align 8, !tbaa !9
  %36 = bitcast %struct.gx_device_memory_s** %mdproto to i8*
  call void @llvm.lifetime.start(i64 8, i8* %36) #1
  %37 = load i32, i32* %plane_depth, align 4, !tbaa !5
  %call13 = call %struct.gx_device_memory_s* @gdev_mem_device_for_bits(i32 %37) #4
  store %struct.gx_device_memory_s* %call13, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %38 = bitcast i64* %c0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %38) #1
  %39 = load i64, i64* %color0.addr, align 8, !tbaa !9
  %cmp14 = icmp eq i64 %39, -1
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %40 = load i64, i64* %color0.addr, align 8, !tbaa !9
  %41 = load i32, i32* %shift, align 4, !tbaa !5
  %sh_prom16 = zext i32 %41 to i64
  %shr = lshr i64 %40, %sh_prom16
  %42 = load i64, i64* %mask, align 8, !tbaa !9
  %and = and i64 %shr, %42
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ -1, %cond.true ], [ %and, %cond.false ]
  store i64 %cond, i64* %c0, align 8, !tbaa !9
  %43 = bitcast i64* %c1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %43) #1
  %44 = load i64, i64* %color1.addr, align 8, !tbaa !9
  %cmp17 = icmp eq i64 %44, -1
  br i1 %cmp17, label %cond.true.19, label %cond.false.20

cond.true.19:                                     ; preds = %cond.end
  br label %cond.end.24

cond.false.20:                                    ; preds = %cond.end
  %45 = load i64, i64* %color1.addr, align 8, !tbaa !9
  %46 = load i32, i32* %shift, align 4, !tbaa !5
  %sh_prom21 = zext i32 %46 to i64
  %shr22 = lshr i64 %45, %sh_prom21
  %47 = load i64, i64* %mask, align 8, !tbaa !9
  %and23 = and i64 %shr22, %47
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.20, %cond.true.19
  %cond25 = phi i64 [ -1, %cond.true.19 ], [ %and23, %cond.false.20 ]
  store i64 %cond25, i64* %c1, align 8, !tbaa !9
  %48 = load i32, i32* %plane_depth, align 4, !tbaa !5
  %conv26 = trunc i32 %48 to i16
  %49 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color_info27 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %49, i32 0, i32 11
  %depth28 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info27, i32 0, i32 3
  store i16 %conv26, i16* %depth28, align 2, !tbaa !11
  %50 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs29 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %50, i32 0, i32 52
  %51 = load i8**, i8*** %line_ptrs29, align 8, !tbaa !73
  %arrayidx30 = getelementptr inbounds i8*, i8** %51, i64 0
  %52 = load i8*, i8** %arrayidx30, align 8, !tbaa !1
  %53 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %base31 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %53, i32 0, i32 45
  store i8* %52, i8** %base31, align 8, !tbaa !71
  %54 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %54, i32 0, i32 14
  %55 = load i32, i32* %height, align 4, !tbaa !75
  %cmp32 = icmp sgt i32 %55, 1
  br i1 %cmp32, label %cond.true.34, label %cond.false.39

cond.true.34:                                     ; preds = %cond.end.24
  %56 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs35 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %56, i32 0, i32 52
  %57 = load i8**, i8*** %line_ptrs35, align 8, !tbaa !73
  %arrayidx36 = getelementptr inbounds i8*, i8** %57, i64 1
  %58 = load i8*, i8** %arrayidx36, align 8, !tbaa !1
  %59 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs37 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %59, i32 0, i32 52
  %60 = load i8**, i8*** %line_ptrs37, align 8, !tbaa !73
  %arrayidx38 = getelementptr inbounds i8*, i8** %60, i64 0
  %61 = load i8*, i8** %arrayidx38, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %58 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %61 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cond.end.43

cond.false.39:                                    ; preds = %cond.end.24
  %62 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %62, i32 0, i32 13
  %63 = load i32, i32* %width, align 4, !tbaa !76
  %64 = load i32, i32* %plane_depth, align 4, !tbaa !5
  %mul = mul nsw i32 %63, %64
  %add = add nsw i32 %mul, 63
  %shr40 = ashr i32 %add, 6
  %shl41 = shl i32 %shr40, 3
  %conv42 = zext i32 %shl41 to i64
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.39, %cond.true.34
  %cond44 = phi i64 [ %sub.ptr.sub, %cond.true.34 ], [ %conv42, %cond.false.39 ]
  %conv45 = trunc i64 %cond44 to i32
  %65 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %65, i32 0, i32 44
  store i32 %conv45, i32* %raster, align 4, !tbaa !77
  %66 = load i64, i64* %c0, align 8, !tbaa !9
  %67 = load i64, i64* %c1, align 8, !tbaa !9
  %cmp46 = icmp eq i64 %66, %67
  br i1 %cmp46, label %if.then.48, label %if.else

if.then.48:                                       ; preds = %cond.end.43
  %68 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %68, i32 0, i32 42
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 7
  %69 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8, !tbaa !37
  %70 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %71 = load i32, i32* %x.addr, align 4, !tbaa !5
  %72 = load i32, i32* %y.addr, align 4, !tbaa !5
  %73 = load i32, i32* %w.addr, align 4, !tbaa !5
  %74 = load i32, i32* %h.addr, align 4, !tbaa !5
  %75 = load i64, i64* %c0, align 8, !tbaa !9
  %call49 = call i32 %69(%struct.gx_device_s* %70, i32 %71, i32 %72, i32 %73, i32 %74, i64 %75) #4
  br label %if.end.55

if.else:                                          ; preds = %cond.end.43
  %76 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %procs50 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %76, i32 0, i32 42
  %copy_mono = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs50, i32 0, i32 9
  %77 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono, align 8, !tbaa !38
  %78 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs51 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %78, i32 0, i32 42
  %copy_mono52 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs51, i32 0, i32 9
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* %77, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono52, align 8, !tbaa !87
  %79 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %procs53 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %79, i32 0, i32 42
  %strip_tile_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs53, i32 0, i32 34
  %80 = load i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)** %strip_tile_rectangle, align 8, !tbaa !41
  %81 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %82 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %83 = load i32, i32* %x.addr, align 4, !tbaa !5
  %84 = load i32, i32* %y.addr, align 4, !tbaa !5
  %85 = load i32, i32* %w.addr, align 4, !tbaa !5
  %86 = load i32, i32* %h.addr, align 4, !tbaa !5
  %87 = load i64, i64* %c0, align 8, !tbaa !9
  %88 = load i64, i64* %c1, align 8, !tbaa !9
  %89 = load i32, i32* %px.addr, align 4, !tbaa !5
  %90 = load i32, i32* %py.addr, align 4, !tbaa !5
  %call54 = call i32 %80(%struct.gx_device_s* %81, %struct.gx_strip_bitmap_s* %82, i32 %83, i32 %84, i32 %85, i32 %86, i64 %87, i64 %88, i32 %89, i32 %90) #4
  br label %if.end.55

if.end.55:                                        ; preds = %if.else, %if.then.48
  %91 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %height56 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %91, i32 0, i32 14
  %92 = load i32, i32* %height56, align 4, !tbaa !75
  %93 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs57 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %93, i32 0, i32 52
  %94 = load i8**, i8*** %line_ptrs57, align 8, !tbaa !73
  %idx.ext = sext i32 %92 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %94, i64 %idx.ext
  store i8** %add.ptr, i8*** %line_ptrs57, align 8, !tbaa !73
  %95 = bitcast i64* %c1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #1
  %96 = bitcast i64* %c0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #1
  %97 = bitcast %struct.gx_device_memory_s** %mdproto to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  %98 = bitcast i64* %mask to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #1
  %99 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #1
  %100 = bitcast i32* %plane_depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end.55
  %101 = load i32, i32* %pi, align 4, !tbaa !5
  %inc = add nsw i32 %101, 1
  store i32 %inc, i32* %pi, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %depth58 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 0
  %102 = load i32, i32* %depth58, align 4, !tbaa !69
  %conv59 = trunc i32 %102 to i16
  %103 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color_info60 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %103, i32 0, i32 11
  %depth61 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info60, i32 0, i32 3
  store i16 %conv59, i16* %depth61, align 2, !tbaa !11
  %base62 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 1
  %104 = load i8*, i8** %base62, align 8, !tbaa !72
  %105 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %base63 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %105, i32 0, i32 45
  store i8* %104, i8** %base63, align 8, !tbaa !71
  %line_ptrs64 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 2
  %106 = load i8**, i8*** %line_ptrs64, align 8, !tbaa !74
  %107 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs65 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %107, i32 0, i32 52
  store i8** %106, i8*** %line_ptrs65, align 8, !tbaa !73
  %108 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs66 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %108, i32 0, i32 42
  %copy_mono67 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs66, i32 0, i32 9
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* @mem_planar_copy_mono, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono67, align 8, !tbaa !87
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %109 = bitcast i32* %pi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #1
  %110 = bitcast %struct.mem_save_params_s* %save to i8*
  call void @llvm.lifetime.end(i64 24, i8* %110) #1
  %111 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #1
  %112 = load i32, i32* %retval
  ret i32 %112
}

; Function Attrs: nounwind uwtable
define internal i32 @mem_planar_strip_tile_rect_devn(%struct.gx_device_s* %dev, %struct.gx_strip_bitmap_s* %tiles, i32 %x, i32 %y, i32 %w, i32 %h, %struct.gx_device_color_s* %pdcolor0, %struct.gx_device_color_s* %pdcolor1, i32 %px, i32 %py) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %tiles.addr = alloca %struct.gx_strip_bitmap_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %pdcolor0.addr = alloca %struct.gx_device_color_s*, align 8
  %pdcolor1.addr = alloca %struct.gx_device_color_s*, align 8
  %px.addr = alloca i32, align 4
  %py.addr = alloca i32, align 4
  %mdev = alloca %struct.gx_device_memory_s*, align 8
  %save = alloca %struct.mem_save_params_s, align 8
  %pi = alloca i32, align 4
  %plane_depth = alloca i32, align 4
  %mask = alloca i64, align 8
  %shift = alloca i32, align 4
  %mdproto = alloca %struct.gx_device_memory_s*, align 8
  %c1 = alloca i64, align 8
  %c0 = alloca i64, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_strip_bitmap_s* %tiles, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store %struct.gx_device_color_s* %pdcolor0, %struct.gx_device_color_s** %pdcolor0.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor1, %struct.gx_device_color_s** %pdcolor1.addr, align 8, !tbaa !1
  store i32 %px, i32* %px.addr, align 4, !tbaa !5
  store i32 %py, i32* %py.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %2, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %3 = bitcast %struct.mem_save_params_s* %save to i8*
  call void @llvm.lifetime.start(i64 24, i8* %3) #1
  %4 = bitcast i32* %pi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %5, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %6 = load i16, i16* %depth, align 2, !tbaa !11
  %conv = zext i16 %6 to i32
  %depth1 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 0
  store i32 %conv, i32* %depth1, align 4, !tbaa !69
  %7 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %base = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %7, i32 0, i32 45
  %8 = load i8*, i8** %base, align 8, !tbaa !71
  %base2 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 1
  store i8* %8, i8** %base2, align 8, !tbaa !72
  %9 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %9, i32 0, i32 52
  %10 = load i8**, i8*** %line_ptrs, align 8, !tbaa !73
  %line_ptrs3 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 2
  store i8** %10, i8*** %line_ptrs3, align 8, !tbaa !74
  store i32 0, i32* %pi, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %pi, align 4, !tbaa !5
  %12 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color_info4 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %12, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info4, i32 0, i32 1
  %13 = load i32, i32* %num_components, align 4, !tbaa !32
  %cmp = icmp slt i32 %11, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = bitcast i32* %plane_depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load i32, i32* %pi, align 4, !tbaa !5
  %idxprom = sext i32 %15 to i64
  %16 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %planes = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %16, i32 0, i32 50
  %arrayidx = getelementptr inbounds [64 x %struct.gx_render_plane_s], [64 x %struct.gx_render_plane_s]* %planes, i32 0, i64 %idxprom
  %depth6 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %arrayidx, i32 0, i32 0
  %17 = load i32, i32* %depth6, align 4, !tbaa !7
  store i32 %17, i32* %plane_depth, align 4, !tbaa !5
  %18 = bitcast i64* %mask to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = load i32, i32* %plane_depth, align 4, !tbaa !5
  %sh_prom = zext i32 %19 to i64
  %shl = shl i64 1, %sh_prom
  %sub = sub i64 %shl, 1
  store i64 %sub, i64* %mask, align 8, !tbaa !9
  %20 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = load i32, i32* %plane_depth, align 4, !tbaa !5
  %sub7 = sub nsw i32 16, %21
  store i32 %sub7, i32* %shift, align 4, !tbaa !5
  %22 = bitcast %struct.gx_device_memory_s** %mdproto to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  %23 = load i32, i32* %plane_depth, align 4, !tbaa !5
  %call = call %struct.gx_device_memory_s* @gdev_mem_device_for_bits(i32 %23) #4
  store %struct.gx_device_memory_s* %call, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %24 = bitcast i64* %c1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  %25 = bitcast i64* %c0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  %26 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor0.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %26, i32 0, i32 0
  %27 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !60
  %cmp8 = icmp eq %struct.gx_device_color_type_s* %27, @gx_dc_type_data_devn
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %28 = load i32, i32* %pi, align 4, !tbaa !5
  %idxprom10 = sext i32 %28 to i64
  %29 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor0.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %29, i32 0, i32 1
  %devn = bitcast %union._c* %colors to %struct._devn*
  %values = getelementptr inbounds %struct._devn, %struct._devn* %devn, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [64 x i16], [64 x i16]* %values, i32 0, i64 %idxprom10
  %30 = load i16, i16* %arrayidx11, align 2, !tbaa !78
  %conv12 = zext i16 %30 to i32
  %31 = load i32, i32* %shift, align 4, !tbaa !5
  %shr = ashr i32 %conv12, %31
  %conv13 = sext i32 %shr to i64
  %32 = load i64, i64* %mask, align 8, !tbaa !9
  %and = and i64 %conv13, %32
  store i64 %and, i64* %c0, align 8, !tbaa !9
  br label %if.end

if.else:                                          ; preds = %for.body
  store i64 -1, i64* %c0, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %33 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor1.addr, align 8, !tbaa !1
  %type14 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %33, i32 0, i32 0
  %34 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type14, align 8, !tbaa !60
  %cmp15 = icmp eq %struct.gx_device_color_type_s* %34, @gx_dc_type_data_devn
  br i1 %cmp15, label %if.then.17, label %if.else.27

if.then.17:                                       ; preds = %if.end
  %35 = load i32, i32* %pi, align 4, !tbaa !5
  %idxprom18 = sext i32 %35 to i64
  %36 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor1.addr, align 8, !tbaa !1
  %colors19 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %36, i32 0, i32 1
  %devn20 = bitcast %union._c* %colors19 to %struct._devn*
  %values21 = getelementptr inbounds %struct._devn, %struct._devn* %devn20, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [64 x i16], [64 x i16]* %values21, i32 0, i64 %idxprom18
  %37 = load i16, i16* %arrayidx22, align 2, !tbaa !78
  %conv23 = zext i16 %37 to i32
  %38 = load i32, i32* %shift, align 4, !tbaa !5
  %shr24 = ashr i32 %conv23, %38
  %conv25 = sext i32 %shr24 to i64
  %39 = load i64, i64* %mask, align 8, !tbaa !9
  %and26 = and i64 %conv25, %39
  store i64 %and26, i64* %c1, align 8, !tbaa !9
  br label %if.end.28

if.else.27:                                       ; preds = %if.end
  store i64 -1, i64* %c1, align 8, !tbaa !9
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.27, %if.then.17
  %40 = load i32, i32* %plane_depth, align 4, !tbaa !5
  %conv29 = trunc i32 %40 to i16
  %41 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color_info30 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %41, i32 0, i32 11
  %depth31 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info30, i32 0, i32 3
  store i16 %conv29, i16* %depth31, align 2, !tbaa !11
  %42 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs32 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %42, i32 0, i32 52
  %43 = load i8**, i8*** %line_ptrs32, align 8, !tbaa !73
  %arrayidx33 = getelementptr inbounds i8*, i8** %43, i64 0
  %44 = load i8*, i8** %arrayidx33, align 8, !tbaa !1
  %45 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %base34 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %45, i32 0, i32 45
  store i8* %44, i8** %base34, align 8, !tbaa !71
  %46 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %46, i32 0, i32 14
  %47 = load i32, i32* %height, align 4, !tbaa !75
  %cmp35 = icmp sgt i32 %47, 1
  br i1 %cmp35, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.28
  %48 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs37 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %48, i32 0, i32 52
  %49 = load i8**, i8*** %line_ptrs37, align 8, !tbaa !73
  %arrayidx38 = getelementptr inbounds i8*, i8** %49, i64 1
  %50 = load i8*, i8** %arrayidx38, align 8, !tbaa !1
  %51 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs39 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %51, i32 0, i32 52
  %52 = load i8**, i8*** %line_ptrs39, align 8, !tbaa !73
  %arrayidx40 = getelementptr inbounds i8*, i8** %52, i64 0
  %53 = load i8*, i8** %arrayidx40, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %50 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %53 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cond.end

cond.false:                                       ; preds = %if.end.28
  %54 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %54, i32 0, i32 13
  %55 = load i32, i32* %width, align 4, !tbaa !76
  %56 = load i32, i32* %plane_depth, align 4, !tbaa !5
  %mul = mul nsw i32 %55, %56
  %add = add nsw i32 %mul, 63
  %shr41 = ashr i32 %add, 6
  %shl42 = shl i32 %shr41, 3
  %conv43 = zext i32 %shl42 to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub.ptr.sub, %cond.true ], [ %conv43, %cond.false ]
  %conv44 = trunc i64 %cond to i32
  %57 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %57, i32 0, i32 44
  store i32 %conv44, i32* %raster, align 4, !tbaa !77
  %58 = load i64, i64* %c0, align 8, !tbaa !9
  %59 = load i64, i64* %c1, align 8, !tbaa !9
  %cmp45 = icmp eq i64 %58, %59
  br i1 %cmp45, label %if.then.47, label %if.else.49

if.then.47:                                       ; preds = %cond.end
  %60 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %60, i32 0, i32 42
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 7
  %61 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8, !tbaa !37
  %62 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %63 = load i32, i32* %x.addr, align 4, !tbaa !5
  %64 = load i32, i32* %y.addr, align 4, !tbaa !5
  %65 = load i32, i32* %w.addr, align 4, !tbaa !5
  %66 = load i32, i32* %h.addr, align 4, !tbaa !5
  %67 = load i64, i64* %c0, align 8, !tbaa !9
  %call48 = call i32 %61(%struct.gx_device_s* %62, i32 %63, i32 %64, i32 %65, i32 %66, i64 %67) #4
  br label %if.end.55

if.else.49:                                       ; preds = %cond.end
  %68 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %procs50 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %68, i32 0, i32 42
  %copy_mono = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs50, i32 0, i32 9
  %69 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono, align 8, !tbaa !38
  %70 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs51 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %70, i32 0, i32 42
  %copy_mono52 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs51, i32 0, i32 9
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* %69, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono52, align 8, !tbaa !87
  %71 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %procs53 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %71, i32 0, i32 42
  %strip_tile_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs53, i32 0, i32 34
  %72 = load i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)** %strip_tile_rectangle, align 8, !tbaa !41
  %73 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %74 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %75 = load i32, i32* %x.addr, align 4, !tbaa !5
  %76 = load i32, i32* %y.addr, align 4, !tbaa !5
  %77 = load i32, i32* %w.addr, align 4, !tbaa !5
  %78 = load i32, i32* %h.addr, align 4, !tbaa !5
  %79 = load i64, i64* %c0, align 8, !tbaa !9
  %80 = load i64, i64* %c1, align 8, !tbaa !9
  %81 = load i32, i32* %px.addr, align 4, !tbaa !5
  %82 = load i32, i32* %py.addr, align 4, !tbaa !5
  %call54 = call i32 %72(%struct.gx_device_s* %73, %struct.gx_strip_bitmap_s* %74, i32 %75, i32 %76, i32 %77, i32 %78, i64 %79, i64 %80, i32 %81, i32 %82) #4
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.49, %if.then.47
  %83 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %height56 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %83, i32 0, i32 14
  %84 = load i32, i32* %height56, align 4, !tbaa !75
  %85 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs57 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %85, i32 0, i32 52
  %86 = load i8**, i8*** %line_ptrs57, align 8, !tbaa !73
  %idx.ext = sext i32 %84 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %86, i64 %idx.ext
  store i8** %add.ptr, i8*** %line_ptrs57, align 8, !tbaa !73
  %87 = bitcast i64* %c0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #1
  %88 = bitcast i64* %c1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #1
  %89 = bitcast %struct.gx_device_memory_s** %mdproto to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #1
  %90 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #1
  %91 = bitcast i64* %mask to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #1
  %92 = bitcast i32* %plane_depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end.55
  %93 = load i32, i32* %pi, align 4, !tbaa !5
  %inc = add nsw i32 %93, 1
  store i32 %inc, i32* %pi, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %depth58 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 0
  %94 = load i32, i32* %depth58, align 4, !tbaa !69
  %conv59 = trunc i32 %94 to i16
  %95 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color_info60 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %95, i32 0, i32 11
  %depth61 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info60, i32 0, i32 3
  store i16 %conv59, i16* %depth61, align 2, !tbaa !11
  %base62 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 1
  %96 = load i8*, i8** %base62, align 8, !tbaa !72
  %97 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %base63 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %97, i32 0, i32 45
  store i8* %96, i8** %base63, align 8, !tbaa !71
  %line_ptrs64 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 2
  %98 = load i8**, i8*** %line_ptrs64, align 8, !tbaa !74
  %99 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs65 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %99, i32 0, i32 52
  store i8** %98, i8*** %line_ptrs65, align 8, !tbaa !73
  %100 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs66 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %100, i32 0, i32 42
  %copy_mono67 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs66, i32 0, i32 9
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* @mem_planar_copy_mono, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono67, align 8, !tbaa !87
  %101 = bitcast i32* %pi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #1
  %102 = bitcast %struct.mem_save_params_s* %save to i8*
  call void @llvm.lifetime.end(i64 24, i8* %102) #1
  %103 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @mem_planar_strip_copy_rop(%struct.gx_device_s* %dev, i8* %sdata, i32 %sourcex, i32 %sraster, i64 %id, i64* %scolors, %struct.gx_strip_bitmap_s* %textures, i64* %tcolors, i32 %x, i32 %y, i32 %width, i32 %height, i32 %phase_x, i32 %phase_y, i32 %lop) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %sdata.addr = alloca i8*, align 8
  %sourcex.addr = alloca i32, align 4
  %sraster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %scolors.addr = alloca i64*, align 8
  %textures.addr = alloca %struct.gx_strip_bitmap_s*, align 8
  %tcolors.addr = alloca i64*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %phase_x.addr = alloca i32, align 4
  %phase_y.addr = alloca i32, align 4
  %lop.addr = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %sdata, i8** %sdata.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 %sraster, i32* %sraster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !9
  store i64* %scolors, i64** %scolors.addr, align 8, !tbaa !1
  store %struct.gx_strip_bitmap_s* %textures, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  store i64* %tcolors, i64** %tcolors.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  store i32 %phase_x, i32* %phase_x.addr, align 4, !tbaa !5
  store i32 %phase_y, i32* %phase_y.addr, align 4, !tbaa !5
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !5
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %sdata.addr, align 8, !tbaa !1
  %2 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %3 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %4 = load i64, i64* %id.addr, align 8, !tbaa !9
  %5 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %6 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %7 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %8 = load i32, i32* %x.addr, align 4, !tbaa !5
  %9 = load i32, i32* %y.addr, align 4, !tbaa !5
  %10 = load i32, i32* %width.addr, align 4, !tbaa !5
  %11 = load i32, i32* %height.addr, align 4, !tbaa !5
  %12 = load i32, i32* %phase_x.addr, align 4, !tbaa !5
  %13 = load i32, i32* %phase_y.addr, align 4, !tbaa !5
  %14 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call = call i32 @mem_planar_strip_copy_rop2(%struct.gx_device_s* %0, i8* %1, i32 %2, i32 %3, i64 %4, i64* %5, %struct.gx_strip_bitmap_s* %6, i64* %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 0) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @mem_planar_strip_copy_rop2(%struct.gx_device_s* %dev, i8* %sdata, i32 %sourcex, i32 %sraster, i64 %id, i64* %scolors, %struct.gx_strip_bitmap_s* %textures, i64* %tcolors, i32 %x, i32 %y, i32 %width, i32 %height, i32 %phase_x, i32 %phase_y, i32 %lop, i32 %planar_height) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %sdata.addr = alloca i8*, align 8
  %sourcex.addr = alloca i32, align 4
  %sraster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %scolors.addr = alloca i64*, align 8
  %textures.addr = alloca %struct.gx_strip_bitmap_s*, align 8
  %tcolors.addr = alloca i64*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %phase_x.addr = alloca i32, align 4
  %phase_y.addr = alloca i32, align 4
  %lop.addr = alloca i32, align 4
  %planar_height.addr = alloca i32, align 4
  %mdev = alloca %struct.gx_device_memory_s*, align 8
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %chunky_sraster = alloca i32, align 4
  %nbytes = alloca i32, align 4
  %line_ptrs = alloca i8**, align 8
  %sbuf = alloca i8*, align 8
  %buf = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %ty = alloca i32, align 4
  %i61 = alloca i32, align 4
  %chunky_t_raster = alloca i32, align 4
  %chunky_t_height = alloca i32, align 4
  %nbytes62 = alloca i32, align 4
  %line_ptrs63 = alloca i8**, align 8
  %tbuf = alloca i8*, align 8
  %buf64 = alloca i8*, align 8
  %newtex = alloca %struct.gx_strip_bitmap_s, align 8
  %plane = alloca i32, align 4
  %tcolors2 = alloca [2 x i64], align 16
  %scolors2 = alloca [2 x i64], align 16
  %shift = alloca i32, align 4
  %mask = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %sdata, i8** %sdata.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 %sraster, i32* %sraster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !9
  store i64* %scolors, i64** %scolors.addr, align 8, !tbaa !1
  store %struct.gx_strip_bitmap_s* %textures, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  store i64* %tcolors, i64** %tcolors.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  store i32 %phase_x, i32* %phase_x.addr, align 4, !tbaa !5
  store i32 %phase_y, i32* %phase_y.addr, align 4, !tbaa !5
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !5
  store i32 %planar_height, i32* %planar_height.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %2, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %planar_height.addr, align 4, !tbaa !5
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end.57

if.then:                                          ; preds = %entry
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %chunky_sraster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %nbytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i8*** %line_ptrs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i8** %sbuf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %13 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %13, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %14 = load i32, i32* %num_components, align 4, !tbaa !32
  %mul = mul i32 %12, %14
  store i32 %mul, i32* %chunky_sraster, align 4, !tbaa !5
  %15 = load i32, i32* %height.addr, align 4, !tbaa !5
  %16 = load i32, i32* %chunky_sraster, align 4, !tbaa !5
  %mul1 = mul i32 %15, %16
  store i32 %mul1, i32* %nbytes, align 4, !tbaa !5
  %17 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %17, i32 0, i32 3
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !88
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %18, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %19 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !89
  %20 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %20, i32 0, i32 3
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory2, align 8, !tbaa !88
  %22 = load i32, i32* %nbytes, align 4, !tbaa !5
  %call = call i8* %19(%struct.gs_memory_s* %21, i32 %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0)) #4
  store i8* %call, i8** %buf, align 8, !tbaa !1
  %23 = load i8*, i8** %buf, align 8, !tbaa !1
  %cmp3 = icmp eq i8* %23, null
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %24 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color_info5 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %24, i32 0, i32 11
  %num_components6 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info5, i32 0, i32 1
  %25 = load i32, i32* %num_components6, align 4, !tbaa !32
  %conv = sext i32 %25 to i64
  %mul7 = mul i64 8, %conv
  %26 = load i32, i32* %height.addr, align 4, !tbaa !5
  %conv8 = sext i32 %26 to i64
  %mul9 = mul i64 %mul7, %conv8
  %conv10 = trunc i64 %mul9 to i32
  store i32 %conv10, i32* %nbytes, align 4, !tbaa !5
  %27 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %memory11 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %27, i32 0, i32 3
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory11, align 8, !tbaa !88
  %procs12 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %28, i32 0, i32 1
  %alloc_bytes13 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs12, i32 0, i32 7
  %29 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes13, align 8, !tbaa !89
  %30 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %memory14 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %30, i32 0, i32 3
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory14, align 8, !tbaa !88
  %32 = load i32, i32* %nbytes, align 4, !tbaa !5
  %call15 = call i8* %29(%struct.gs_memory_s* %31, i32 %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0)) #4
  %33 = bitcast i8* %call15 to i8**
  store i8** %33, i8*** %line_ptrs, align 8, !tbaa !1
  %34 = load i8**, i8*** %line_ptrs, align 8, !tbaa !1
  %cmp16 = icmp eq i8** %34, null
  br i1 %cmp16, label %if.then.18, label %if.end.22

if.then.18:                                       ; preds = %if.end
  %35 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %memory19 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %35, i32 0, i32 3
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory19, align 8, !tbaa !88
  %procs20 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %36, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs20, i32 0, i32 2
  %37 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !92
  %38 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %memory21 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %38, i32 0, i32 3
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory21, align 8, !tbaa !88
  %40 = load i8*, i8** %buf, align 8, !tbaa !1
  call void %37(%struct.gs_memory_s* %39, i8* %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0)) #4
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %if.end
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.34, %if.end.22
  %41 = load i32, i32* %j, align 4, !tbaa !5
  %42 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color_info23 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %42, i32 0, i32 11
  %num_components24 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info23, i32 0, i32 1
  %43 = load i32, i32* %num_components24, align 4, !tbaa !32
  %cmp25 = icmp slt i32 %41, %43
  br i1 %cmp25, label %for.body, label %for.end.35

for.body:                                         ; preds = %for.cond
  %44 = load i8*, i8** %sdata.addr, align 8, !tbaa !1
  %45 = load i32, i32* %j, align 4, !tbaa !5
  %46 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %mul27 = mul i32 %45, %46
  %idx.ext = zext i32 %mul27 to i64
  %add.ptr = getelementptr inbounds i8, i8* %44, i64 %idx.ext
  store i8* %add.ptr, i8** %sbuf, align 8, !tbaa !1
  %47 = load i32, i32* %height.addr, align 4, !tbaa !5
  store i32 %47, i32* %i, align 4, !tbaa !5
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc, %for.body
  %48 = load i32, i32* %i, align 4, !tbaa !5
  %cmp29 = icmp sgt i32 %48, 0
  br i1 %cmp29, label %for.body.31, label %for.end

for.body.31:                                      ; preds = %for.cond.28
  %49 = load i8*, i8** %sbuf, align 8, !tbaa !1
  %50 = load i8**, i8*** %line_ptrs, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8*, i8** %50, i32 1
  store i8** %incdec.ptr, i8*** %line_ptrs, align 8, !tbaa !1
  store i8* %49, i8** %50, align 8, !tbaa !1
  %51 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %52 = load i8*, i8** %sbuf, align 8, !tbaa !1
  %idx.ext32 = zext i32 %51 to i64
  %add.ptr33 = getelementptr inbounds i8, i8* %52, i64 %idx.ext32
  store i8* %add.ptr33, i8** %sbuf, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body.31
  %53 = load i32, i32* %i, align 4, !tbaa !5
  %dec = add nsw i32 %53, -1
  store i32 %dec, i32* %i, align 4, !tbaa !5
  br label %for.cond.28

for.end:                                          ; preds = %for.cond.28
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.end
  %54 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add nsw i32 %54, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.end.35:                                       ; preds = %for.cond
  %55 = load i32, i32* %height.addr, align 4, !tbaa !5
  %56 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color_info36 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %56, i32 0, i32 11
  %num_components37 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info36, i32 0, i32 1
  %57 = load i32, i32* %num_components37, align 4, !tbaa !32
  %mul38 = mul nsw i32 %55, %57
  %58 = load i8**, i8*** %line_ptrs, align 8, !tbaa !1
  %idx.ext39 = sext i32 %mul38 to i64
  %idx.neg = sub i64 0, %idx.ext39
  %add.ptr40 = getelementptr inbounds i8*, i8** %58, i64 %idx.neg
  store i8** %add.ptr40, i8*** %line_ptrs, align 8, !tbaa !1
  %59 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %60 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %61 = load i32, i32* %width.addr, align 4, !tbaa !5
  %62 = load i32, i32* %height.addr, align 4, !tbaa !5
  %63 = load i32, i32* %chunky_sraster, align 4, !tbaa !5
  %64 = load i8*, i8** %buf, align 8, !tbaa !1
  %65 = load i8**, i8*** %line_ptrs, align 8, !tbaa !1
  %66 = load i32, i32* %planar_height.addr, align 4, !tbaa !5
  %call41 = call i32 @planar_to_chunky(%struct.gx_device_memory_s* %59, i32 %60, i32 0, i32 %61, i32 %62, i32 0, i32 %63, i8* %64, i8** %65, i32 %66) #4
  %67 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %memory42 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %67, i32 0, i32 3
  %68 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory42, align 8, !tbaa !88
  %procs43 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %68, i32 0, i32 1
  %free_object44 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs43, i32 0, i32 2
  %69 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object44, align 8, !tbaa !92
  %70 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %memory45 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %70, i32 0, i32 3
  %71 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory45, align 8, !tbaa !88
  %72 = load i8**, i8*** %line_ptrs, align 8, !tbaa !1
  %73 = bitcast i8** %72 to i8*
  call void %69(%struct.gs_memory_s* %71, i8* %73, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0)) #4
  %74 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %75 = load i8*, i8** %buf, align 8, !tbaa !1
  %76 = load i32, i32* %chunky_sraster, align 4, !tbaa !5
  %77 = load i64, i64* %id.addr, align 8, !tbaa !9
  %78 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %79 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %80 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %81 = load i32, i32* %x.addr, align 4, !tbaa !5
  %82 = load i32, i32* %y.addr, align 4, !tbaa !5
  %83 = load i32, i32* %width.addr, align 4, !tbaa !5
  %84 = load i32, i32* %height.addr, align 4, !tbaa !5
  %85 = load i32, i32* %phase_x.addr, align 4, !tbaa !5
  %86 = load i32, i32* %phase_y.addr, align 4, !tbaa !5
  %87 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call46 = call i32 @mem_planar_strip_copy_rop2(%struct.gx_device_s* %74, i8* %75, i32 0, i32 %76, i64 %77, i64* %78, %struct.gx_strip_bitmap_s* %79, i64* %80, i32 %81, i32 %82, i32 %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 0) #4
  store i32 %call46, i32* %code, align 4, !tbaa !5
  %88 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %memory47 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %88, i32 0, i32 3
  %89 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory47, align 8, !tbaa !88
  %procs48 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %89, i32 0, i32 1
  %free_object49 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs48, i32 0, i32 2
  %90 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object49, align 8, !tbaa !92
  %91 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %memory50 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %91, i32 0, i32 3
  %92 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory50, align 8, !tbaa !88
  %93 = load i8*, i8** %buf, align 8, !tbaa !1
  call void %90(%struct.gs_memory_s* %92, i8* %93, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0)) #4
  %94 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %94, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.35, %if.then.18, %if.then.4
  %95 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #1
  %96 = bitcast i8** %sbuf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #1
  %97 = bitcast i8*** %line_ptrs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  %98 = bitcast i32* %nbytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #1
  %99 = bitcast i32* %chunky_sraster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #1
  %100 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #1
  %101 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #1
  br label %cleanup.323

if.end.57:                                        ; preds = %entry
  %102 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_strip_bitmap_s* %102, null
  br i1 %tobool, label %land.lhs.true, label %if.end.174

land.lhs.true:                                    ; preds = %if.end.57
  %103 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %num_planes = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %103, i32 0, i32 8
  %104 = load i32, i32* %num_planes, align 4, !tbaa !93
  %cmp58 = icmp sgt i32 %104, 1
  br i1 %cmp58, label %if.then.60, label %if.end.174

if.then.60:                                       ; preds = %land.lhs.true
  %105 = bitcast i32* %ty to i8*
  call void @llvm.lifetime.start(i64 4, i8* %105) #1
  %106 = bitcast i32* %i61 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %106) #1
  %107 = bitcast i32* %chunky_t_raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %107) #1
  %108 = bitcast i32* %chunky_t_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %108) #1
  %109 = bitcast i32* %nbytes62 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %109) #1
  %110 = bitcast i8*** %line_ptrs63 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %110) #1
  %111 = bitcast i8** %tbuf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %111) #1
  %112 = bitcast i8** %buf64 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %112) #1
  %113 = bitcast %struct.gx_strip_bitmap_s* %newtex to i8*
  call void @llvm.lifetime.start(i64 48, i8* %113) #1
  %114 = load i32, i32* %y.addr, align 4, !tbaa !5
  %115 = load i32, i32* %phase_y.addr, align 4, !tbaa !5
  %add = add nsw i32 %114, %115
  %116 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %rep_height = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %116, i32 0, i32 5
  %117 = load i16, i16* %rep_height, align 2, !tbaa !95
  %conv65 = zext i16 %117 to i32
  %rem = srem i32 %add, %conv65
  store i32 %rem, i32* %ty, align 4, !tbaa !5
  %118 = load i32, i32* %ty, align 4, !tbaa !5
  %cmp66 = icmp slt i32 %118, 0
  br i1 %cmp66, label %if.then.68, label %if.end.72

if.then.68:                                       ; preds = %if.then.60
  %119 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %rep_height69 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %119, i32 0, i32 5
  %120 = load i16, i16* %rep_height69, align 2, !tbaa !95
  %conv70 = zext i16 %120 to i32
  %121 = load i32, i32* %ty, align 4, !tbaa !5
  %add71 = add nsw i32 %121, %conv70
  store i32 %add71, i32* %ty, align 4, !tbaa !5
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.68, %if.then.60
  %122 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %rep_width = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %122, i32 0, i32 4
  %123 = load i16, i16* %rep_width, align 2, !tbaa !96
  %conv73 = zext i16 %123 to i32
  %124 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color_info74 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %124, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info74, i32 0, i32 3
  %125 = load i16, i16* %depth, align 2, !tbaa !11
  %conv75 = zext i16 %125 to i32
  %mul76 = mul nsw i32 %conv73, %conv75
  %add77 = add nsw i32 %mul76, 63
  %shr = ashr i32 %add77, 6
  %shl = shl i32 %shr, 3
  store i32 %shl, i32* %chunky_t_raster, align 4, !tbaa !5
  %126 = load i32, i32* %ty, align 4, !tbaa !5
  %127 = load i32, i32* %height.addr, align 4, !tbaa !5
  %add78 = add nsw i32 %126, %127
  %128 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %rep_height79 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %128, i32 0, i32 5
  %129 = load i16, i16* %rep_height79, align 2, !tbaa !95
  %conv80 = zext i16 %129 to i32
  %cmp81 = icmp sle i32 %add78, %conv80
  br i1 %cmp81, label %if.then.83, label %if.else

if.then.83:                                       ; preds = %if.end.72
  %130 = load i32, i32* %height.addr, align 4, !tbaa !5
  store i32 %130, i32* %chunky_t_height, align 4, !tbaa !5
  %131 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub = sub nsw i32 0, %131
  store i32 %sub, i32* %phase_y.addr, align 4, !tbaa !5
  br label %if.end.86

if.else:                                          ; preds = %if.end.72
  store i32 0, i32* %ty, align 4, !tbaa !5
  %132 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %rep_height84 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %132, i32 0, i32 5
  %133 = load i16, i16* %rep_height84, align 2, !tbaa !95
  %conv85 = zext i16 %133 to i32
  store i32 %conv85, i32* %chunky_t_height, align 4, !tbaa !5
  br label %if.end.86

if.end.86:                                        ; preds = %if.else, %if.then.83
  %134 = load i32, i32* %chunky_t_height, align 4, !tbaa !5
  %135 = load i32, i32* %chunky_t_raster, align 4, !tbaa !5
  %mul87 = mul i32 %134, %135
  store i32 %mul87, i32* %nbytes62, align 4, !tbaa !5
  %136 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %memory88 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %136, i32 0, i32 3
  %137 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory88, align 8, !tbaa !88
  %procs89 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %137, i32 0, i32 1
  %alloc_bytes90 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs89, i32 0, i32 7
  %138 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes90, align 8, !tbaa !89
  %139 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %memory91 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %139, i32 0, i32 3
  %140 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory91, align 8, !tbaa !88
  %141 = load i32, i32* %nbytes62, align 4, !tbaa !5
  %call92 = call i8* %138(%struct.gs_memory_s* %140, i32 %141, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0)) #4
  store i8* %call92, i8** %buf64, align 8, !tbaa !1
  %142 = load i8*, i8** %buf64, align 8, !tbaa !1
  %cmp93 = icmp eq i8* %142, null
  br i1 %cmp93, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %if.end.86
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.165

if.end.96:                                        ; preds = %if.end.86
  %143 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color_info97 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %143, i32 0, i32 11
  %num_components98 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info97, i32 0, i32 1
  %144 = load i32, i32* %num_components98, align 4, !tbaa !32
  %conv99 = sext i32 %144 to i64
  %mul100 = mul i64 8, %conv99
  %145 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %rep_height101 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %145, i32 0, i32 5
  %146 = load i16, i16* %rep_height101, align 2, !tbaa !95
  %conv102 = zext i16 %146 to i64
  %mul103 = mul i64 %mul100, %conv102
  %conv104 = trunc i64 %mul103 to i32
  store i32 %conv104, i32* %nbytes62, align 4, !tbaa !5
  %147 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %memory105 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %147, i32 0, i32 3
  %148 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory105, align 8, !tbaa !88
  %procs106 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %148, i32 0, i32 1
  %alloc_bytes107 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs106, i32 0, i32 7
  %149 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes107, align 8, !tbaa !89
  %150 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %memory108 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %150, i32 0, i32 3
  %151 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory108, align 8, !tbaa !88
  %152 = load i32, i32* %nbytes62, align 4, !tbaa !5
  %call109 = call i8* %149(%struct.gs_memory_s* %151, i32 %152, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0)) #4
  %153 = bitcast i8* %call109 to i8**
  store i8** %153, i8*** %line_ptrs63, align 8, !tbaa !1
  %154 = load i8**, i8*** %line_ptrs63, align 8, !tbaa !1
  %cmp110 = icmp eq i8** %154, null
  br i1 %cmp110, label %if.then.112, label %if.end.117

if.then.112:                                      ; preds = %if.end.96
  %155 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %memory113 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %155, i32 0, i32 3
  %156 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory113, align 8, !tbaa !88
  %procs114 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %156, i32 0, i32 1
  %free_object115 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs114, i32 0, i32 2
  %157 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object115, align 8, !tbaa !92
  %158 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %memory116 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %158, i32 0, i32 3
  %159 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory116, align 8, !tbaa !88
  %160 = load i8*, i8** %buf64, align 8, !tbaa !1
  call void %157(%struct.gs_memory_s* %159, i8* %160, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0)) #4
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.165

if.end.117:                                       ; preds = %if.end.96
  %161 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %161, i32 0, i32 0
  %162 = load i8*, i8** %data, align 8, !tbaa !97
  store i8* %162, i8** %tbuf, align 8, !tbaa !1
  %163 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %rep_height118 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %163, i32 0, i32 5
  %164 = load i16, i16* %rep_height118, align 2, !tbaa !95
  %conv119 = zext i16 %164 to i32
  %165 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color_info120 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %165, i32 0, i32 11
  %num_components121 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info120, i32 0, i32 1
  %166 = load i32, i32* %num_components121, align 4, !tbaa !32
  %mul122 = mul nsw i32 %conv119, %166
  store i32 %mul122, i32* %i61, align 4, !tbaa !5
  br label %for.cond.123

for.cond.123:                                     ; preds = %for.inc.130, %if.end.117
  %167 = load i32, i32* %i61, align 4, !tbaa !5
  %cmp124 = icmp sgt i32 %167, 0
  br i1 %cmp124, label %for.body.126, label %for.end.132

for.body.126:                                     ; preds = %for.cond.123
  %168 = load i8*, i8** %tbuf, align 8, !tbaa !1
  %169 = load i8**, i8*** %line_ptrs63, align 8, !tbaa !1
  %incdec.ptr127 = getelementptr inbounds i8*, i8** %169, i32 1
  store i8** %incdec.ptr127, i8*** %line_ptrs63, align 8, !tbaa !1
  store i8* %168, i8** %169, align 8, !tbaa !1
  %170 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %170, i32 0, i32 1
  %171 = load i32, i32* %raster, align 4, !tbaa !98
  %172 = load i8*, i8** %tbuf, align 8, !tbaa !1
  %idx.ext128 = sext i32 %171 to i64
  %add.ptr129 = getelementptr inbounds i8, i8* %172, i64 %idx.ext128
  store i8* %add.ptr129, i8** %tbuf, align 8, !tbaa !1
  br label %for.inc.130

for.inc.130:                                      ; preds = %for.body.126
  %173 = load i32, i32* %i61, align 4, !tbaa !5
  %dec131 = add nsw i32 %173, -1
  store i32 %dec131, i32* %i61, align 4, !tbaa !5
  br label %for.cond.123

for.end.132:                                      ; preds = %for.cond.123
  %174 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %rep_height133 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %174, i32 0, i32 5
  %175 = load i16, i16* %rep_height133, align 2, !tbaa !95
  %conv134 = zext i16 %175 to i32
  %176 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color_info135 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %176, i32 0, i32 11
  %num_components136 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info135, i32 0, i32 1
  %177 = load i32, i32* %num_components136, align 4, !tbaa !32
  %mul137 = mul nsw i32 %conv134, %177
  %178 = load i8**, i8*** %line_ptrs63, align 8, !tbaa !1
  %idx.ext138 = sext i32 %mul137 to i64
  %idx.neg139 = sub i64 0, %idx.ext138
  %add.ptr140 = getelementptr inbounds i8*, i8** %178, i64 %idx.neg139
  store i8** %add.ptr140, i8*** %line_ptrs63, align 8, !tbaa !1
  %179 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %180 = load i32, i32* %ty, align 4, !tbaa !5
  %181 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %rep_width141 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %181, i32 0, i32 4
  %182 = load i16, i16* %rep_width141, align 2, !tbaa !96
  %conv142 = zext i16 %182 to i32
  %183 = load i32, i32* %chunky_t_height, align 4, !tbaa !5
  %184 = load i32, i32* %chunky_t_raster, align 4, !tbaa !5
  %185 = load i8*, i8** %buf64, align 8, !tbaa !1
  %186 = load i8**, i8*** %line_ptrs63, align 8, !tbaa !1
  %187 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %rep_height143 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %187, i32 0, i32 5
  %188 = load i16, i16* %rep_height143, align 2, !tbaa !95
  %conv144 = zext i16 %188 to i32
  %call145 = call i32 @planar_to_chunky(%struct.gx_device_memory_s* %179, i32 0, i32 %180, i32 %conv142, i32 %183, i32 0, i32 %184, i8* %185, i8** %186, i32 %conv144) #4
  %189 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %memory146 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %189, i32 0, i32 3
  %190 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory146, align 8, !tbaa !88
  %procs147 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %190, i32 0, i32 1
  %free_object148 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs147, i32 0, i32 2
  %191 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object148, align 8, !tbaa !92
  %192 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %memory149 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %192, i32 0, i32 3
  %193 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory149, align 8, !tbaa !88
  %194 = load i8**, i8*** %line_ptrs63, align 8, !tbaa !1
  %195 = bitcast i8** %194 to i8*
  call void %191(%struct.gs_memory_s* %193, i8* %195, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0)) #4
  %196 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %197 = bitcast %struct.gx_strip_bitmap_s* %newtex to i8*
  %198 = bitcast %struct.gx_strip_bitmap_s* %196 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %197, i8* %198, i64 48, i32 8, i1 false), !tbaa.struct !99
  %199 = load i8*, i8** %buf64, align 8, !tbaa !1
  %data150 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %newtex, i32 0, i32 0
  store i8* %199, i8** %data150, align 8, !tbaa !97
  %200 = load i32, i32* %chunky_t_raster, align 4, !tbaa !5
  %raster151 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %newtex, i32 0, i32 1
  store i32 %200, i32* %raster151, align 4, !tbaa !98
  %num_planes152 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %newtex, i32 0, i32 8
  store i32 1, i32* %num_planes152, align 4, !tbaa !93
  %201 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %rep_width153 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %201, i32 0, i32 4
  %202 = load i16, i16* %rep_width153, align 2, !tbaa !96
  %conv154 = zext i16 %202 to i32
  %size = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %newtex, i32 0, i32 2
  %x155 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size, i32 0, i32 0
  store i32 %conv154, i32* %x155, align 4, !tbaa !100
  %203 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %rep_height156 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %203, i32 0, i32 5
  %204 = load i16, i16* %rep_height156, align 2, !tbaa !95
  %conv157 = zext i16 %204 to i32
  %size158 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %newtex, i32 0, i32 2
  %y159 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size158, i32 0, i32 1
  store i32 %conv157, i32* %y159, align 4, !tbaa !101
  %205 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %206 = load i8*, i8** %sdata.addr, align 8, !tbaa !1
  %207 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %208 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %209 = load i64, i64* %id.addr, align 8, !tbaa !9
  %210 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %211 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %212 = load i32, i32* %x.addr, align 4, !tbaa !5
  %213 = load i32, i32* %y.addr, align 4, !tbaa !5
  %214 = load i32, i32* %width.addr, align 4, !tbaa !5
  %215 = load i32, i32* %height.addr, align 4, !tbaa !5
  %216 = load i32, i32* %phase_x.addr, align 4, !tbaa !5
  %217 = load i32, i32* %phase_y.addr, align 4, !tbaa !5
  %218 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %219 = load i32, i32* %planar_height.addr, align 4, !tbaa !5
  %call160 = call i32 @mem_planar_strip_copy_rop2(%struct.gx_device_s* %205, i8* %206, i32 %207, i32 %208, i64 %209, i64* %210, %struct.gx_strip_bitmap_s* %newtex, i64* %211, i32 %212, i32 %213, i32 %214, i32 %215, i32 %216, i32 %217, i32 %218, i32 %219) #4
  store i32 %call160, i32* %code, align 4, !tbaa !5
  %220 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %memory161 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %220, i32 0, i32 3
  %221 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory161, align 8, !tbaa !88
  %procs162 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %221, i32 0, i32 1
  %free_object163 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs162, i32 0, i32 2
  %222 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object163, align 8, !tbaa !92
  %223 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %memory164 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %223, i32 0, i32 3
  %224 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory164, align 8, !tbaa !88
  %225 = load i8*, i8** %buf64, align 8, !tbaa !1
  call void %222(%struct.gs_memory_s* %224, i8* %225, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0)) #4
  %226 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %226, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.165

cleanup.165:                                      ; preds = %for.end.132, %if.then.112, %if.then.95
  %227 = bitcast %struct.gx_strip_bitmap_s* %newtex to i8*
  call void @llvm.lifetime.end(i64 48, i8* %227) #1
  %228 = bitcast i8** %buf64 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %228) #1
  %229 = bitcast i8** %tbuf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %229) #1
  %230 = bitcast i8*** %line_ptrs63 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %230) #1
  %231 = bitcast i32* %nbytes62 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %231) #1
  %232 = bitcast i32* %chunky_t_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %232) #1
  %233 = bitcast i32* %chunky_t_raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %233) #1
  %234 = bitcast i32* %i61 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %234) #1
  %235 = bitcast i32* %ty to i8*
  call void @llvm.lifetime.end(i64 4, i8* %235) #1
  br label %cleanup.323

if.end.174:                                       ; preds = %land.lhs.true, %if.end.57
  %236 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %shl175 = shl i32 %236, 4
  %237 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %xor = xor i32 %shl175, %237
  %and = and i32 %xor, 240
  %cmp176 = icmp ne i32 %and, 0
  br i1 %cmp176, label %lor.lhs.false.180, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.174
  %238 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %and178 = and i32 %238, 512
  %tobool179 = icmp ne i32 %and178, 0
  br i1 %tobool179, label %lor.lhs.false.180, label %if.then.186

lor.lhs.false.180:                                ; preds = %lor.lhs.false, %if.end.174
  %239 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %tobool181 = icmp ne i64* %239, null
  br i1 %tobool181, label %land.lhs.true.182, label %if.end.296

land.lhs.true.182:                                ; preds = %lor.lhs.false.180
  %240 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %240, i64 0
  %241 = load i64, i64* %arrayidx, align 8, !tbaa !9
  %242 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %arrayidx183 = getelementptr inbounds i64, i64* %242, i64 1
  %243 = load i64, i64* %arrayidx183, align 8, !tbaa !9
  %cmp184 = icmp eq i64 %241, %243
  br i1 %cmp184, label %if.then.186, label %if.end.296

if.then.186:                                      ; preds = %land.lhs.true.182, %lor.lhs.false
  %244 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %shl187 = shl i32 %244, 2
  %245 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %xor188 = xor i32 %shl187, %245
  %and189 = and i32 %xor188, 204
  %cmp190 = icmp ne i32 %and189, 0
  br i1 %cmp190, label %lor.lhs.false.195, label %lor.lhs.false.192

lor.lhs.false.192:                                ; preds = %if.then.186
  %246 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %and193 = and i32 %246, 768
  %tobool194 = icmp ne i32 %and193, 0
  br i1 %tobool194, label %lor.lhs.false.195, label %land.lhs.true.202

lor.lhs.false.195:                                ; preds = %lor.lhs.false.192, %if.then.186
  %247 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %tobool196 = icmp ne i64* %247, null
  br i1 %tobool196, label %land.lhs.true.197, label %if.end.276

land.lhs.true.197:                                ; preds = %lor.lhs.false.195
  %248 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %arrayidx198 = getelementptr inbounds i64, i64* %248, i64 0
  %249 = load i64, i64* %arrayidx198, align 8, !tbaa !9
  %250 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %arrayidx199 = getelementptr inbounds i64, i64* %250, i64 1
  %251 = load i64, i64* %arrayidx199, align 8, !tbaa !9
  %cmp200 = icmp eq i64 %249, %251
  br i1 %cmp200, label %land.lhs.true.202, label %if.end.276

land.lhs.true.202:                                ; preds = %land.lhs.true.197, %lor.lhs.false.192
  %252 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color_info203 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %252, i32 0, i32 11
  %num_components204 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info203, i32 0, i32 1
  %253 = load i32, i32* %num_components204, align 4, !tbaa !32
  %cmp205 = icmp eq i32 %253, 1
  br i1 %cmp205, label %if.then.212, label %lor.lhs.false.207

lor.lhs.false.207:                                ; preds = %land.lhs.true.202
  %254 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color_info208 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %254, i32 0, i32 11
  %num_components209 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info208, i32 0, i32 1
  %255 = load i32, i32* %num_components209, align 4, !tbaa !32
  %cmp210 = icmp eq i32 %255, 3
  br i1 %cmp210, label %if.then.212, label %if.end.276

if.then.212:                                      ; preds = %lor.lhs.false.207, %land.lhs.true.202
  %256 = bitcast i32* %plane to i8*
  call void @llvm.lifetime.start(i64 4, i8* %256) #1
  store i32 0, i32* %plane, align 4, !tbaa !5
  br label %for.cond.213

for.cond.213:                                     ; preds = %for.inc.272, %if.then.212
  %257 = load i32, i32* %plane, align 4, !tbaa !5
  %258 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color_info214 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %258, i32 0, i32 11
  %num_components215 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info214, i32 0, i32 1
  %259 = load i32, i32* %num_components215, align 4, !tbaa !32
  %cmp216 = icmp slt i32 %257, %259
  br i1 %cmp216, label %for.body.218, label %for.end.274

for.body.218:                                     ; preds = %for.cond.213
  %260 = bitcast [2 x i64]* %tcolors2 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %260) #1
  %261 = bitcast [2 x i64]* %scolors2 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %261) #1
  %262 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %262) #1
  %263 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom = sext i32 %263 to i64
  %264 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %planes = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %264, i32 0, i32 50
  %arrayidx219 = getelementptr inbounds [64 x %struct.gx_render_plane_s], [64 x %struct.gx_render_plane_s]* %planes, i32 0, i64 %idxprom
  %shift220 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %arrayidx219, i32 0, i32 1
  %265 = load i32, i32* %shift220, align 4, !tbaa !33
  store i32 %265, i32* %shift, align 4, !tbaa !5
  %266 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %266) #1
  %267 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom221 = sext i32 %267 to i64
  %268 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %planes222 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %268, i32 0, i32 50
  %arrayidx223 = getelementptr inbounds [64 x %struct.gx_render_plane_s], [64 x %struct.gx_render_plane_s]* %planes222, i32 0, i64 %idxprom221
  %depth224 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %arrayidx223, i32 0, i32 0
  %269 = load i32, i32* %depth224, align 4, !tbaa !7
  %shl225 = shl i32 1, %269
  %sub226 = sub nsw i32 %shl225, 1
  store i32 %sub226, i32* %mask, align 4, !tbaa !5
  %270 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %tobool227 = icmp ne i64* %270, null
  br i1 %tobool227, label %if.then.228, label %if.end.240

if.then.228:                                      ; preds = %for.body.218
  %271 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %arrayidx229 = getelementptr inbounds i64, i64* %271, i64 0
  %272 = load i64, i64* %arrayidx229, align 8, !tbaa !9
  %273 = load i32, i32* %shift, align 4, !tbaa !5
  %sh_prom = zext i32 %273 to i64
  %shr230 = lshr i64 %272, %sh_prom
  %274 = load i32, i32* %mask, align 4, !tbaa !5
  %conv231 = sext i32 %274 to i64
  %and232 = and i64 %shr230, %conv231
  %arrayidx233 = getelementptr inbounds [2 x i64], [2 x i64]* %tcolors2, i32 0, i64 0
  store i64 %and232, i64* %arrayidx233, align 8, !tbaa !9
  %275 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %arrayidx234 = getelementptr inbounds i64, i64* %275, i64 1
  %276 = load i64, i64* %arrayidx234, align 8, !tbaa !9
  %277 = load i32, i32* %shift, align 4, !tbaa !5
  %sh_prom235 = zext i32 %277 to i64
  %shr236 = lshr i64 %276, %sh_prom235
  %278 = load i32, i32* %mask, align 4, !tbaa !5
  %conv237 = sext i32 %278 to i64
  %and238 = and i64 %shr236, %conv237
  %arrayidx239 = getelementptr inbounds [2 x i64], [2 x i64]* %tcolors2, i32 0, i64 1
  store i64 %and238, i64* %arrayidx239, align 8, !tbaa !9
  br label %if.end.240

if.end.240:                                       ; preds = %if.then.228, %for.body.218
  %279 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %tobool241 = icmp ne i64* %279, null
  br i1 %tobool241, label %if.then.242, label %if.end.255

if.then.242:                                      ; preds = %if.end.240
  %280 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %arrayidx243 = getelementptr inbounds i64, i64* %280, i64 0
  %281 = load i64, i64* %arrayidx243, align 8, !tbaa !9
  %282 = load i32, i32* %shift, align 4, !tbaa !5
  %sh_prom244 = zext i32 %282 to i64
  %shr245 = lshr i64 %281, %sh_prom244
  %283 = load i32, i32* %mask, align 4, !tbaa !5
  %conv246 = sext i32 %283 to i64
  %and247 = and i64 %shr245, %conv246
  %arrayidx248 = getelementptr inbounds [2 x i64], [2 x i64]* %scolors2, i32 0, i64 0
  store i64 %and247, i64* %arrayidx248, align 8, !tbaa !9
  %284 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %arrayidx249 = getelementptr inbounds i64, i64* %284, i64 1
  %285 = load i64, i64* %arrayidx249, align 8, !tbaa !9
  %286 = load i32, i32* %shift, align 4, !tbaa !5
  %sh_prom250 = zext i32 %286 to i64
  %shr251 = lshr i64 %285, %sh_prom250
  %287 = load i32, i32* %mask, align 4, !tbaa !5
  %conv252 = sext i32 %287 to i64
  %and253 = and i64 %shr251, %conv252
  %arrayidx254 = getelementptr inbounds [2 x i64], [2 x i64]* %scolors2, i32 0, i64 1
  store i64 %and253, i64* %arrayidx254, align 8, !tbaa !9
  br label %if.end.255

if.end.255:                                       ; preds = %if.then.242, %if.end.240
  %288 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %289 = load i8*, i8** %sdata.addr, align 8, !tbaa !1
  %290 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %291 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %292 = load i64, i64* %id.addr, align 8, !tbaa !9
  %293 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %tobool256 = icmp ne i64* %293, null
  br i1 %tobool256, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.255
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %scolors2, i32 0, i32 0
  br label %cond.end

cond.false:                                       ; preds = %if.end.255
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64* [ %arraydecay, %cond.true ], [ null, %cond.false ]
  %294 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %295 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %tobool257 = icmp ne i64* %295, null
  br i1 %tobool257, label %cond.true.258, label %cond.false.260

cond.true.258:                                    ; preds = %cond.end
  %arraydecay259 = getelementptr inbounds [2 x i64], [2 x i64]* %tcolors2, i32 0, i32 0
  br label %cond.end.261

cond.false.260:                                   ; preds = %cond.end
  br label %cond.end.261

cond.end.261:                                     ; preds = %cond.false.260, %cond.true.258
  %cond262 = phi i64* [ %arraydecay259, %cond.true.258 ], [ null, %cond.false.260 ]
  %296 = load i32, i32* %x.addr, align 4, !tbaa !5
  %297 = load i32, i32* %y.addr, align 4, !tbaa !5
  %298 = load i32, i32* %width.addr, align 4, !tbaa !5
  %299 = load i32, i32* %height.addr, align 4, !tbaa !5
  %300 = load i32, i32* %phase_x.addr, align 4, !tbaa !5
  %301 = load i32, i32* %phase_y.addr, align 4, !tbaa !5
  %302 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %303 = load i32, i32* %plane, align 4, !tbaa !5
  %call263 = call i32 @plane_strip_copy_rop(%struct.gx_device_memory_s* %288, i8* %289, i32 %290, i32 %291, i64 %292, i64* %cond, %struct.gx_strip_bitmap_s* %294, i64* %cond262, i32 %296, i32 %297, i32 %298, i32 %299, i32 %300, i32 %301, i32 %302, i32 %303) #4
  store i32 %call263, i32* %code, align 4, !tbaa !5
  %304 = load i32, i32* %code, align 4, !tbaa !5
  %cmp264 = icmp slt i32 %304, 0
  br i1 %cmp264, label %if.then.266, label %if.end.267

if.then.266:                                      ; preds = %cond.end.261
  %305 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %305, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.268

if.end.267:                                       ; preds = %cond.end.261
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.268

cleanup.268:                                      ; preds = %if.end.267, %if.then.266
  %306 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %306) #1
  %307 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %307) #1
  %308 = bitcast [2 x i64]* %scolors2 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %308) #1
  %309 = bitcast [2 x i64]* %tcolors2 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %309) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.275 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup.268
  br label %for.inc.272

for.inc.272:                                      ; preds = %cleanup.cont
  %310 = load i32, i32* %plane, align 4, !tbaa !5
  %inc273 = add nsw i32 %310, 1
  store i32 %inc273, i32* %plane, align 4, !tbaa !5
  br label %for.cond.213

for.end.274:                                      ; preds = %for.cond.213
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.275

cleanup.275:                                      ; preds = %for.end.274, %cleanup.268
  %311 = bitcast i32* %plane to i8*
  call void @llvm.lifetime.end(i64 4, i8* %311) #1
  br label %cleanup.323

if.end.276:                                       ; preds = %lor.lhs.false.207, %land.lhs.true.197, %lor.lhs.false.195
  %312 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color_info277 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %312, i32 0, i32 11
  %num_components278 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info277, i32 0, i32 1
  %313 = load i32, i32* %num_components278, align 4, !tbaa !32
  %cmp279 = icmp eq i32 %313, 4
  br i1 %cmp279, label %land.lhs.true.281, label %if.end.295

land.lhs.true.281:                                ; preds = %if.end.276
  %314 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %plane_depth = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %314, i32 0, i32 67
  %315 = load i32, i32* %plane_depth, align 4, !tbaa !35
  %cmp282 = icmp eq i32 %315, 1
  br i1 %cmp282, label %land.lhs.true.284, label %if.end.295

land.lhs.true.284:                                ; preds = %land.lhs.true.281
  %316 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %and285 = and i32 %316, 768
  %cmp286 = icmp eq i32 %and285, 0
  br i1 %cmp286, label %if.then.288, label %if.end.295

if.then.288:                                      ; preds = %land.lhs.true.284
  %317 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %and289 = and i32 %317, 255
  %idxprom290 = zext i32 %and289 to i64
  %arrayidx291 = getelementptr inbounds [256 x i8], [256 x i8]* @cmykrop, i32 0, i64 %idxprom290
  %318 = load i8, i8* %arrayidx291, align 1, !tbaa !85
  %conv292 = zext i8 %318 to i32
  %319 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %and293 = and i32 %319, -256
  %or = or i32 %conv292, %and293
  store i32 %or, i32* %lop.addr, align 4, !tbaa !5
  %320 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %321 = load i8*, i8** %sdata.addr, align 8, !tbaa !1
  %322 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %323 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %324 = load i64, i64* %id.addr, align 8, !tbaa !9
  %325 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %326 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %327 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %328 = load i32, i32* %x.addr, align 4, !tbaa !5
  %329 = load i32, i32* %y.addr, align 4, !tbaa !5
  %330 = load i32, i32* %width.addr, align 4, !tbaa !5
  %331 = load i32, i32* %height.addr, align 4, !tbaa !5
  %332 = load i32, i32* %phase_x.addr, align 4, !tbaa !5
  %333 = load i32, i32* %phase_y.addr, align 4, !tbaa !5
  %334 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call294 = call i32 @planar_cmyk4bit_strip_copy_rop(%struct.gx_device_memory_s* %320, i8* %321, i32 %322, i32 %323, i64 %324, i64* %325, %struct.gx_strip_bitmap_s* %326, i64* %327, i32 %328, i32 %329, i32 %330, i32 %331, i32 %332, i32 %333, i32 %334) #4
  store i32 %call294, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.323

if.end.295:                                       ; preds = %land.lhs.true.284, %land.lhs.true.281, %if.end.276
  br label %if.end.296

if.end.296:                                       ; preds = %if.end.295, %land.lhs.true.182, %lor.lhs.false.180
  %335 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %tobool297 = icmp ne i64* %335, null
  br i1 %tobool297, label %if.end.321, label %land.lhs.true.298

land.lhs.true.298:                                ; preds = %if.end.296
  %336 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %tobool299 = icmp ne i64* %336, null
  br i1 %tobool299, label %if.end.321, label %land.lhs.true.300

land.lhs.true.300:                                ; preds = %land.lhs.true.298
  %337 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color_info301 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %337, i32 0, i32 11
  %num_components302 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info301, i32 0, i32 1
  %338 = load i32, i32* %num_components302, align 4, !tbaa !32
  %cmp303 = icmp eq i32 %338, 4
  br i1 %cmp303, label %land.lhs.true.305, label %if.end.321

land.lhs.true.305:                                ; preds = %land.lhs.true.300
  %339 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %plane_depth306 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %339, i32 0, i32 67
  %340 = load i32, i32* %plane_depth306, align 4, !tbaa !35
  %cmp307 = icmp eq i32 %340, 1
  br i1 %cmp307, label %land.lhs.true.309, label %if.end.321

land.lhs.true.309:                                ; preds = %land.lhs.true.305
  %341 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %and310 = and i32 %341, 768
  %cmp311 = icmp eq i32 %and310, 0
  br i1 %cmp311, label %if.then.313, label %if.end.321

if.then.313:                                      ; preds = %land.lhs.true.309
  %342 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %and314 = and i32 %342, 255
  %idxprom315 = zext i32 %and314 to i64
  %arrayidx316 = getelementptr inbounds [256 x i8], [256 x i8]* @cmykrop, i32 0, i64 %idxprom315
  %343 = load i8, i8* %arrayidx316, align 1, !tbaa !85
  %conv317 = zext i8 %343 to i32
  %344 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %and318 = and i32 %344, -256
  %or319 = or i32 %conv317, %and318
  store i32 %or319, i32* %lop.addr, align 4, !tbaa !5
  %345 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %346 = load i8*, i8** %sdata.addr, align 8, !tbaa !1
  %347 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %348 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %349 = load i64, i64* %id.addr, align 8, !tbaa !9
  %350 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %351 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %352 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %353 = load i32, i32* %x.addr, align 4, !tbaa !5
  %354 = load i32, i32* %y.addr, align 4, !tbaa !5
  %355 = load i32, i32* %width.addr, align 4, !tbaa !5
  %356 = load i32, i32* %height.addr, align 4, !tbaa !5
  %357 = load i32, i32* %phase_x.addr, align 4, !tbaa !5
  %358 = load i32, i32* %phase_y.addr, align 4, !tbaa !5
  %359 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call320 = call i32 @planar_cmyk4bit_strip_copy_rop(%struct.gx_device_memory_s* %345, i8* %346, i32 %347, i32 %348, i64 %349, i64* %350, %struct.gx_strip_bitmap_s* %351, i64* %352, i32 %353, i32 %354, i32 %355, i32 %356, i32 %357, i32 %358, i32 %359) #4
  store i32 %call320, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.323

if.end.321:                                       ; preds = %land.lhs.true.309, %land.lhs.true.305, %land.lhs.true.300, %land.lhs.true.298, %if.end.296
  %360 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %361 = load i8*, i8** %sdata.addr, align 8, !tbaa !1
  %362 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %363 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %364 = load i64, i64* %id.addr, align 8, !tbaa !9
  %365 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %366 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %367 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %368 = load i32, i32* %x.addr, align 4, !tbaa !5
  %369 = load i32, i32* %y.addr, align 4, !tbaa !5
  %370 = load i32, i32* %width.addr, align 4, !tbaa !5
  %371 = load i32, i32* %height.addr, align 4, !tbaa !5
  %372 = load i32, i32* %phase_x.addr, align 4, !tbaa !5
  %373 = load i32, i32* %phase_y.addr, align 4, !tbaa !5
  %374 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call322 = call i32 @mem_default_strip_copy_rop(%struct.gx_device_s* %360, i8* %361, i32 %362, i32 %363, i64 %364, i64* %365, %struct.gx_strip_bitmap_s* %366, i64* %367, i32 %368, i32 %369, i32 %370, i32 %371, i32 %372, i32 %373, i32 %374) #4
  store i32 %call322, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.323

cleanup.323:                                      ; preds = %if.end.321, %if.then.313, %if.then.288, %cleanup.275, %cleanup.165, %cleanup
  %375 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %375) #1
  %376 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %376) #1
  %377 = load i32, i32* %retval
  ret i32 %377
}

; Function Attrs: nounwind uwtable
define internal i32 @mem_planar_get_bits_rectangle(%struct.gx_device_s* %dev, %struct.gs_int_rect_s* %prect, %struct.gs_get_bits_params_s* %params, %struct.gs_int_rect_s** %unread) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %prect.addr = alloca %struct.gs_int_rect_s*, align 8
  %params.addr = alloca %struct.gs_get_bits_params_s*, align 8
  %unread.addr = alloca %struct.gs_int_rect_s**, align 8
  %mdev = alloca %struct.gx_device_memory_s*, align 8
  %options = alloca i64, align 8
  %x = alloca i32, align 4
  %w = alloca i32, align 4
  %y = alloca i32, align 4
  %h = alloca i32, align 4
  %num_planes = alloca i32, align 4
  %copy_params = alloca %struct.gs_get_bits_params_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %copy_params34 = alloca %struct.gs_get_bits_params_s, align 8
  %base = alloca i8**, align 8
  %code35 = alloca i32, align 4
  %pi = alloca i32, align 4
  %plane = alloca i32, align 4
  %save = alloca %struct.mem_save_params_s, align 8
  %offset = alloca i32, align 4
  %draster = alloca i32, align 4
  %buf = alloca %union.b_.3, align 8
  %br = alloca i32, align 4
  %bw = alloca i32, align 4
  %bh = alloca i32, align 4
  %cx = alloca i32, align 4
  %cy = alloca i32, align 4
  %cw = alloca i32, align 4
  %ch = alloca i32, align 4
  %ddepth = alloca i32, align 4
  %raster193 = alloca i32, align 4
  %dest_params = alloca %struct.gs_get_bits_params_s, align 8
  %dest_bytes = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_int_rect_s* %prect, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  store %struct.gs_get_bits_params_s* %params, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gs_int_rect_s** %unread, %struct.gs_int_rect_s*** %unread.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %2, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %3 = bitcast i64* %options to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %options1 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %4, i32 0, i32 0
  %5 = load i64, i64* %options1, align 8, !tbaa !102
  store i64 %5, i64* %options, align 8, !tbaa !9
  %6 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %7, i32 0, i32 0
  %x2 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  %8 = load i32, i32* %x2, align 4, !tbaa !104
  store i32 %8, i32* %x, align 4, !tbaa !5
  %9 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %10, i32 0, i32 1
  %x3 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  %11 = load i32, i32* %x3, align 4, !tbaa !106
  %12 = load i32, i32* %x, align 4, !tbaa !5
  %sub = sub nsw i32 %11, %12
  store i32 %sub, i32* %w, align 4, !tbaa !5
  %13 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %p4 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %14, i32 0, i32 0
  %y5 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p4, i32 0, i32 1
  %15 = load i32, i32* %y5, align 4, !tbaa !107
  store i32 %15, i32* %y, align 4, !tbaa !5
  %16 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %q6 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %17, i32 0, i32 1
  %y7 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q6, i32 0, i32 1
  %18 = load i32, i32* %y7, align 4, !tbaa !108
  %19 = load i32, i32* %y, align 4, !tbaa !5
  %sub8 = sub nsw i32 %18, %19
  store i32 %sub8, i32* %h, align 4, !tbaa !5
  %20 = bitcast i32* %num_planes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %21, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %22 = load i32, i32* %num_components, align 4, !tbaa !32
  store i32 %22, i32* %num_planes, align 4, !tbaa !5
  %23 = bitcast %struct.gs_get_bits_params_s* %copy_params to i8*
  call void @llvm.lifetime.start(i64 536, i8* %23) #1
  %24 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load i64, i64* %options, align 8, !tbaa !9
  %cmp = icmp eq i64 %25, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %26 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %options9 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %26, i32 0, i32 0
  store i64 2012282897, i64* %options9, align 8, !tbaa !102
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.307

if.end:                                           ; preds = %entry
  %27 = load i32, i32* %w, align 4, !tbaa !5
  %cmp10 = icmp sle i32 %27, 0
  %conv = zext i1 %cmp10 to i32
  %28 = load i32, i32* %h, align 4, !tbaa !5
  %cmp11 = icmp sle i32 %28, 0
  %conv12 = zext i1 %cmp11 to i32
  %or = or i32 %conv, %conv12
  %tobool = icmp ne i32 %or, 0
  br i1 %tobool, label %if.then.13, label %if.end.19

if.then.13:                                       ; preds = %if.end
  %29 = load i32, i32* %w, align 4, !tbaa !5
  %30 = load i32, i32* %h, align 4, !tbaa !5
  %or14 = or i32 %29, %30
  %cmp15 = icmp slt i32 %or14, 0
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.13
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.307

if.end.18:                                        ; preds = %if.then.13
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.307

if.end.19:                                        ; preds = %if.end
  %31 = load i32, i32* %x, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %31, 0
  br i1 %cmp20, label %if.then.32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.19
  %32 = load i32, i32* %w, align 4, !tbaa !5
  %33 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %33, i32 0, i32 13
  %34 = load i32, i32* %width, align 4, !tbaa !84
  %35 = load i32, i32* %x, align 4, !tbaa !5
  %sub22 = sub nsw i32 %34, %35
  %cmp23 = icmp sgt i32 %32, %sub22
  br i1 %cmp23, label %if.then.32, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %lor.lhs.false
  %36 = load i32, i32* %y, align 4, !tbaa !5
  %cmp26 = icmp slt i32 %36, 0
  br i1 %cmp26, label %if.then.32, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %lor.lhs.false.25
  %37 = load i32, i32* %h, align 4, !tbaa !5
  %38 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %38, i32 0, i32 14
  %39 = load i32, i32* %height, align 4, !tbaa !53
  %40 = load i32, i32* %y, align 4, !tbaa !5
  %sub29 = sub nsw i32 %39, %40
  %cmp30 = icmp sgt i32 %37, %sub29
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %lor.lhs.false.28, %lor.lhs.false.25, %lor.lhs.false, %if.end.19
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.307

if.end.33:                                        ; preds = %lor.lhs.false.28
  %41 = bitcast %struct.gs_get_bits_params_s* %copy_params34 to i8*
  call void @llvm.lifetime.start(i64 536, i8* %41) #1
  %42 = bitcast i8*** %base to i8*
  call void @llvm.lifetime.start(i64 8, i8* %42) #1
  %43 = load i32, i32* %y, align 4, !tbaa !5
  %idxprom = sext i32 %43 to i64
  %44 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %44, i32 0, i32 52
  %45 = load i8**, i8*** %line_ptrs, align 8, !tbaa !73
  %arrayidx = getelementptr inbounds i8*, i8** %45, i64 %idxprom
  store i8** %arrayidx, i8*** %base, align 8, !tbaa !1
  %46 = bitcast i32* %code35 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #1
  %47 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %47, i32 0, i32 44
  %48 = load i32, i32* %raster, align 4, !tbaa !77
  %49 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %width36 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %49, i32 0, i32 13
  %50 = load i32, i32* %width36, align 4, !tbaa !76
  %51 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color_info37 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %51, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info37, i32 0, i32 3
  %52 = load i16, i16* %depth, align 2, !tbaa !11
  %conv38 = zext i16 %52 to i32
  %mul = mul nsw i32 %50, %conv38
  %add = add nsw i32 %mul, 63
  %shr = ashr i32 %add, 6
  %shl = shl i32 %shr, 3
  %cmp39 = icmp eq i32 %48, %shl
  %cond = select i1 %cmp39, i64 268435456, i64 536870912
  %or41 = or i64 131089, %cond
  %options42 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %copy_params34, i32 0, i32 0
  store i64 %or41, i64* %options42, align 8, !tbaa !102
  %53 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %raster43 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %53, i32 0, i32 44
  %54 = load i32, i32* %raster43, align 4, !tbaa !77
  %raster44 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %copy_params34, i32 0, i32 4
  store i32 %54, i32* %raster44, align 4, !tbaa !109
  %55 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %56 = load i32, i32* %x, align 4, !tbaa !5
  %57 = load i32, i32* %h, align 4, !tbaa !5
  %58 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %59 = load i8**, i8*** %base, align 8, !tbaa !1
  %call = call i32 @gx_get_bits_return_pointer(%struct.gx_device_s* %55, i32 %56, i32 %57, %struct.gs_get_bits_params_s* %58, %struct.gs_get_bits_params_s* %copy_params34, i8** %59) #4
  store i32 %call, i32* %code35, align 4, !tbaa !5
  %60 = load i32, i32* %code35, align 4, !tbaa !5
  %cmp45 = icmp sge i32 %60, 0
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.end.33
  %61 = load i32, i32* %code35, align 4, !tbaa !5
  store i32 %61, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.48:                                        ; preds = %if.end.33
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.48, %if.then.47
  %62 = bitcast i32* %code35 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = bitcast i8*** %base to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %64 = bitcast %struct.gs_get_bits_params_s* %copy_params34 to i8*
  call void @llvm.lifetime.end(i64 536, i8* %64) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.307 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %65 = load i64, i64* %options, align 8, !tbaa !9
  %neg = xor i64 %65, -1
  %and = and i64 %neg, 655360
  %tobool51 = icmp ne i64 %and, 0
  br i1 %tobool51, label %if.end.159, label %if.then.52

if.then.52:                                       ; preds = %cleanup.cont
  %66 = bitcast i32* %pi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %66) #1
  store i32 0, i32* %pi, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.52
  %67 = load i32, i32* %pi, align 4, !tbaa !5
  %68 = load i32, i32* %num_planes, align 4, !tbaa !5
  %cmp53 = icmp slt i32 %67, %68
  br i1 %cmp53, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %69 = load i32, i32* %pi, align 4, !tbaa !5
  %idxprom55 = sext i32 %69 to i64
  %70 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %70, i32 0, i32 1
  %arrayidx56 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data, i32 0, i64 %idxprom55
  %71 = load i8*, i8** %arrayidx56, align 8, !tbaa !1
  %cmp57 = icmp ne i8* %71, null
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %for.body
  br label %for.end

if.end.60:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.60
  %72 = load i32, i32* %pi, align 4, !tbaa !5
  %inc = add nsw i32 %72, 1
  store i32 %inc, i32* %pi, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %if.then.59, %for.cond
  %73 = load i32, i32* %pi, align 4, !tbaa !5
  %74 = load i32, i32* %num_planes, align 4, !tbaa !5
  %cmp61 = icmp slt i32 %73, %74
  br i1 %cmp61, label %if.then.63, label %if.end.155

if.then.63:                                       ; preds = %for.end
  %75 = bitcast i32* %plane to i8*
  call void @llvm.lifetime.start(i64 4, i8* %75) #1
  %76 = load i32, i32* %pi, align 4, !tbaa !5
  %inc64 = add nsw i32 %76, 1
  store i32 %inc64, i32* %pi, align 4, !tbaa !5
  store i32 %76, i32* %plane, align 4, !tbaa !5
  br label %for.cond.65

for.cond.65:                                      ; preds = %for.inc.76, %if.then.63
  %77 = load i32, i32* %pi, align 4, !tbaa !5
  %78 = load i32, i32* %num_planes, align 4, !tbaa !5
  %cmp66 = icmp slt i32 %77, %78
  br i1 %cmp66, label %for.body.68, label %for.end.78

for.body.68:                                      ; preds = %for.cond.65
  %79 = load i32, i32* %pi, align 4, !tbaa !5
  %idxprom69 = sext i32 %79 to i64
  %80 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %data70 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %80, i32 0, i32 1
  %arrayidx71 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data70, i32 0, i64 %idxprom69
  %81 = load i8*, i8** %arrayidx71, align 8, !tbaa !1
  %cmp72 = icmp ne i8* %81, null
  br i1 %cmp72, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %for.body.68
  br label %for.end.78

if.end.75:                                        ; preds = %for.body.68
  br label %for.inc.76

for.inc.76:                                       ; preds = %if.end.75
  %82 = load i32, i32* %pi, align 4, !tbaa !5
  %inc77 = add nsw i32 %82, 1
  store i32 %inc77, i32* %pi, align 4, !tbaa !5
  br label %for.cond.65

for.end.78:                                       ; preds = %if.then.74, %for.cond.65
  %83 = load i32, i32* %pi, align 4, !tbaa !5
  %84 = load i32, i32* %num_planes, align 4, !tbaa !5
  %cmp79 = icmp eq i32 %83, %84
  br i1 %cmp79, label %if.then.81, label %if.end.151

if.then.81:                                       ; preds = %for.end.78
  %85 = bitcast %struct.mem_save_params_s* %save to i8*
  call void @llvm.lifetime.start(i64 24, i8* %85) #1
  %86 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %87 = bitcast %struct.gs_get_bits_params_s* %copy_params to i8*
  %88 = bitcast %struct.gs_get_bits_params_s* %86 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %87, i8* %88, i64 536, i32 8, i1 false), !tbaa.struct !110
  %89 = load i64, i64* %options, align 8, !tbaa !9
  %and82 = and i64 %89, -983041
  %or83 = or i64 %and82, 65536
  %options84 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %copy_params, i32 0, i32 0
  store i64 %or83, i64* %options84, align 8, !tbaa !102
  %90 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom85 = sext i32 %90 to i64
  %data86 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %copy_params, i32 0, i32 1
  %arrayidx87 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data86, i32 0, i64 %idxprom85
  %91 = load i8*, i8** %arrayidx87, align 8, !tbaa !1
  %data88 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %copy_params, i32 0, i32 1
  %arrayidx89 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data88, i32 0, i64 0
  store i8* %91, i8** %arrayidx89, align 8, !tbaa !1
  %92 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color_info90 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %92, i32 0, i32 11
  %depth91 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info90, i32 0, i32 3
  %93 = load i16, i16* %depth91, align 2, !tbaa !11
  %conv92 = zext i16 %93 to i32
  %depth93 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 0
  store i32 %conv92, i32* %depth93, align 4, !tbaa !69
  %94 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %base94 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %94, i32 0, i32 45
  %95 = load i8*, i8** %base94, align 8, !tbaa !71
  %base95 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 1
  store i8* %95, i8** %base95, align 8, !tbaa !72
  %96 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs96 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %96, i32 0, i32 52
  %97 = load i8**, i8*** %line_ptrs96, align 8, !tbaa !73
  %line_ptrs97 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 2
  store i8** %97, i8*** %line_ptrs97, align 8, !tbaa !74
  %98 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %height98 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %98, i32 0, i32 14
  %99 = load i32, i32* %height98, align 4, !tbaa !75
  %100 = load i32, i32* %plane, align 4, !tbaa !5
  %mul99 = mul nsw i32 %99, %100
  %101 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs100 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %101, i32 0, i32 52
  %102 = load i8**, i8*** %line_ptrs100, align 8, !tbaa !73
  %idx.ext = sext i32 %mul99 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %102, i64 %idx.ext
  store i8** %add.ptr, i8*** %line_ptrs100, align 8, !tbaa !73
  %103 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom101 = sext i32 %103 to i64
  %104 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %planes = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %104, i32 0, i32 50
  %arrayidx102 = getelementptr inbounds [64 x %struct.gx_render_plane_s], [64 x %struct.gx_render_plane_s]* %planes, i32 0, i64 %idxprom101
  %depth103 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %arrayidx102, i32 0, i32 0
  %105 = load i32, i32* %depth103, align 4, !tbaa !7
  %conv104 = trunc i32 %105 to i16
  %106 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color_info105 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %106, i32 0, i32 11
  %depth106 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info105, i32 0, i32 3
  store i16 %conv104, i16* %depth106, align 2, !tbaa !11
  %107 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs107 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %107, i32 0, i32 52
  %108 = load i8**, i8*** %line_ptrs107, align 8, !tbaa !73
  %arrayidx108 = getelementptr inbounds i8*, i8** %108, i64 0
  %109 = load i8*, i8** %arrayidx108, align 8, !tbaa !1
  %110 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %base109 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %110, i32 0, i32 45
  store i8* %109, i8** %base109, align 8, !tbaa !71
  %111 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %height110 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %111, i32 0, i32 14
  %112 = load i32, i32* %height110, align 4, !tbaa !75
  %cmp111 = icmp sgt i32 %112, 1
  br i1 %cmp111, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.81
  %113 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs113 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %113, i32 0, i32 52
  %114 = load i8**, i8*** %line_ptrs113, align 8, !tbaa !73
  %arrayidx114 = getelementptr inbounds i8*, i8** %114, i64 1
  %115 = load i8*, i8** %arrayidx114, align 8, !tbaa !1
  %116 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs115 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %116, i32 0, i32 52
  %117 = load i8**, i8*** %line_ptrs115, align 8, !tbaa !73
  %arrayidx116 = getelementptr inbounds i8*, i8** %117, i64 0
  %118 = load i8*, i8** %arrayidx116, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %115 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %118 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cond.end

cond.false:                                       ; preds = %if.then.81
  %119 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %width117 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %119, i32 0, i32 13
  %120 = load i32, i32* %width117, align 4, !tbaa !76
  %121 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom118 = sext i32 %121 to i64
  %122 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %planes119 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %122, i32 0, i32 50
  %arrayidx120 = getelementptr inbounds [64 x %struct.gx_render_plane_s], [64 x %struct.gx_render_plane_s]* %planes119, i32 0, i64 %idxprom118
  %depth121 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %arrayidx120, i32 0, i32 0
  %123 = load i32, i32* %depth121, align 4, !tbaa !7
  %mul122 = mul nsw i32 %120, %123
  %add123 = add nsw i32 %mul122, 63
  %shr124 = ashr i32 %add123, 6
  %shl125 = shl i32 %shr124, 3
  %conv126 = zext i32 %shl125 to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond127 = phi i64 [ %sub.ptr.sub, %cond.true ], [ %conv126, %cond.false ]
  %conv128 = trunc i64 %cond127 to i32
  %124 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %raster129 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %124, i32 0, i32 44
  store i32 %conv128, i32* %raster129, align 4, !tbaa !77
  %125 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %126 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %127 = load %struct.gs_int_rect_s**, %struct.gs_int_rect_s*** %unread.addr, align 8, !tbaa !1
  %call130 = call i32 @mem_get_bits_rectangle(%struct.gx_device_s* %125, %struct.gs_int_rect_s* %126, %struct.gs_get_bits_params_s* %copy_params, %struct.gs_int_rect_s** %127) #4
  store i32 %call130, i32* %code, align 4, !tbaa !5
  %depth131 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 0
  %128 = load i32, i32* %depth131, align 4, !tbaa !69
  %conv132 = trunc i32 %128 to i16
  %129 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color_info133 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %129, i32 0, i32 11
  %depth134 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info133, i32 0, i32 3
  store i16 %conv132, i16* %depth134, align 2, !tbaa !11
  %base135 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 1
  %130 = load i8*, i8** %base135, align 8, !tbaa !72
  %131 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %base136 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %131, i32 0, i32 45
  store i8* %130, i8** %base136, align 8, !tbaa !71
  %line_ptrs137 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 2
  %132 = load i8**, i8*** %line_ptrs137, align 8, !tbaa !74
  %133 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs138 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %133, i32 0, i32 52
  store i8** %132, i8*** %line_ptrs138, align 8, !tbaa !73
  %134 = load i32, i32* %code, align 4, !tbaa !5
  %cmp139 = icmp sge i32 %134, 0
  br i1 %cmp139, label %if.then.141, label %if.end.147

if.then.141:                                      ; preds = %cond.end
  %data142 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %copy_params, i32 0, i32 1
  %arrayidx143 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data142, i32 0, i64 0
  %135 = load i8*, i8** %arrayidx143, align 8, !tbaa !1
  %136 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom144 = sext i32 %136 to i64
  %137 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %data145 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %137, i32 0, i32 1
  %arrayidx146 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data145, i32 0, i64 %idxprom144
  store i8* %135, i8** %arrayidx146, align 8, !tbaa !1
  %138 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %138, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.148

if.end.147:                                       ; preds = %cond.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.148

cleanup.148:                                      ; preds = %if.end.147, %if.then.141
  %139 = bitcast %struct.mem_save_params_s* %save to i8*
  call void @llvm.lifetime.end(i64 24, i8* %139) #1
  %cleanup.dest.149 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.149, label %cleanup.152 [
    i32 0, label %cleanup.cont.150
  ]

cleanup.cont.150:                                 ; preds = %cleanup.148
  br label %if.end.151

if.end.151:                                       ; preds = %cleanup.cont.150, %for.end.78
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.152

cleanup.152:                                      ; preds = %if.end.151, %cleanup.148
  %140 = bitcast i32* %plane to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #1
  %cleanup.dest.153 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.153, label %cleanup.156 [
    i32 0, label %cleanup.cont.154
  ]

cleanup.cont.154:                                 ; preds = %cleanup.152
  br label %if.end.155

if.end.155:                                       ; preds = %cleanup.cont.154, %for.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.156

cleanup.156:                                      ; preds = %if.end.155, %cleanup.152
  %141 = bitcast i32* %pi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #1
  %cleanup.dest.157 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.157, label %cleanup.307 [
    i32 0, label %cleanup.cont.158
  ]

cleanup.cont.158:                                 ; preds = %cleanup.156
  br label %if.end.159

if.end.159:                                       ; preds = %cleanup.cont.158, %cleanup.cont
  %142 = load i64, i64* %options, align 8, !tbaa !9
  %neg160 = xor i64 %142, -1
  %and161 = and i64 %neg160, 1114129
  %tobool162 = icmp ne i64 %and161, 0
  br i1 %tobool162, label %if.else, label %if.then.163

if.then.163:                                      ; preds = %if.end.159
  %143 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %143) #1
  %144 = load i64, i64* %options, align 8, !tbaa !9
  %and164 = and i64 %144, 33554432
  %tobool165 = icmp ne i64 %and164, 0
  br i1 %tobool165, label %cond.true.166, label %cond.false.167

cond.true.166:                                    ; preds = %if.then.163
  %145 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %x_offset = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %145, i32 0, i32 2
  %146 = load i32, i32* %x_offset, align 4, !tbaa !111
  br label %cond.end.168

cond.false.167:                                   ; preds = %if.then.163
  br label %cond.end.168

cond.end.168:                                     ; preds = %cond.false.167, %cond.true.166
  %cond169 = phi i32 [ %146, %cond.true.166 ], [ 0, %cond.false.167 ]
  store i32 %cond169, i32* %offset, align 4, !tbaa !5
  %147 = bitcast i32* %draster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %147) #1
  %148 = load i64, i64* %options, align 8, !tbaa !9
  %and170 = and i64 %148, 536870912
  %tobool171 = icmp ne i64 %and170, 0
  br i1 %tobool171, label %cond.true.172, label %cond.false.174

cond.true.172:                                    ; preds = %cond.end.168
  %149 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %raster173 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %149, i32 0, i32 4
  %150 = load i32, i32* %raster173, align 4, !tbaa !109
  br label %cond.end.183

cond.false.174:                                   ; preds = %cond.end.168
  %151 = load i32, i32* %offset, align 4, !tbaa !5
  %152 = load i32, i32* %w, align 4, !tbaa !5
  %add175 = add nsw i32 %151, %152
  %153 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color_info176 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %153, i32 0, i32 11
  %depth177 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info176, i32 0, i32 3
  %154 = load i16, i16* %depth177, align 2, !tbaa !11
  %conv178 = zext i16 %154 to i32
  %mul179 = mul nsw i32 %add175, %conv178
  %add180 = add nsw i32 %mul179, 63
  %shr181 = ashr i32 %add180, 6
  %shl182 = shl i32 %shr181, 3
  br label %cond.end.183

cond.end.183:                                     ; preds = %cond.false.174, %cond.true.172
  %cond184 = phi i32 [ %150, %cond.true.172 ], [ %shl182, %cond.false.174 ]
  store i32 %cond184, i32* %draster, align 4, !tbaa !5
  %155 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %156 = load i32, i32* %x, align 4, !tbaa !5
  %157 = load i32, i32* %y, align 4, !tbaa !5
  %158 = load i32, i32* %w, align 4, !tbaa !5
  %159 = load i32, i32* %h, align 4, !tbaa !5
  %160 = load i32, i32* %offset, align 4, !tbaa !5
  %161 = load i32, i32* %draster, align 4, !tbaa !5
  %162 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %data185 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %162, i32 0, i32 1
  %arrayidx186 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data185, i32 0, i64 0
  %163 = load i8*, i8** %arrayidx186, align 8, !tbaa !1
  %164 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs187 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %164, i32 0, i32 52
  %165 = load i8**, i8*** %line_ptrs187, align 8, !tbaa !73
  %166 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %height188 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %166, i32 0, i32 14
  %167 = load i32, i32* %height188, align 4, !tbaa !75
  %call189 = call i32 @planar_to_chunky(%struct.gx_device_memory_s* %155, i32 %156, i32 %157, i32 %158, i32 %159, i32 %160, i32 %161, i8* %163, i8** %165, i32 %167) #4
  %168 = bitcast i32* %draster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %168) #1
  %169 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %169) #1
  br label %if.end.306

if.else:                                          ; preds = %if.end.159
  %170 = bitcast %union.b_.3* %buf to i8*
  call void @llvm.lifetime.start(i64 800, i8* %170) #1
  %171 = bitcast i32* %br to i8*
  call void @llvm.lifetime.start(i64 4, i8* %171) #1
  %172 = bitcast i32* %bw to i8*
  call void @llvm.lifetime.start(i64 4, i8* %172) #1
  %173 = bitcast i32* %bh to i8*
  call void @llvm.lifetime.start(i64 4, i8* %173) #1
  %174 = bitcast i32* %cx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %174) #1
  %175 = bitcast i32* %cy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %175) #1
  %176 = bitcast i32* %cw to i8*
  call void @llvm.lifetime.start(i64 4, i8* %176) #1
  %177 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.start(i64 4, i8* %177) #1
  %178 = bitcast i32* %ddepth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %178) #1
  %179 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color_info190 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %179, i32 0, i32 11
  %depth191 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info190, i32 0, i32 3
  %180 = load i16, i16* %depth191, align 2, !tbaa !11
  %conv192 = zext i16 %180 to i32
  store i32 %conv192, i32* %ddepth, align 4, !tbaa !5
  %181 = bitcast i32* %raster193 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %181) #1
  %182 = load i32, i32* %ddepth, align 4, !tbaa !5
  %183 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %width194 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %183, i32 0, i32 13
  %184 = load i32, i32* %width194, align 4, !tbaa !76
  %mul195 = mul nsw i32 %182, %184
  %add196 = add nsw i32 %mul195, 63
  %shr197 = ashr i32 %add196, 6
  %shl198 = shl i32 %shr197, 3
  store i32 %shl198, i32* %raster193, align 4, !tbaa !5
  %185 = bitcast %struct.gs_get_bits_params_s* %dest_params to i8*
  call void @llvm.lifetime.start(i64 536, i8* %185) #1
  %186 = bitcast i32* %dest_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %186) #1
  %187 = load i32, i32* %raster193, align 4, !tbaa !5
  %conv199 = zext i32 %187 to i64
  %cmp200 = icmp ugt i64 %conv199, 800
  br i1 %cmp200, label %if.then.202, label %if.else.205

if.then.202:                                      ; preds = %if.else
  store i32 800, i32* %br, align 4, !tbaa !5
  %188 = load i32, i32* %ddepth, align 4, !tbaa !5
  %conv203 = sext i32 %188 to i64
  %div = udiv i64 6400, %conv203
  %conv204 = trunc i64 %div to i32
  store i32 %conv204, i32* %bw, align 4, !tbaa !5
  store i32 1, i32* %bh, align 4, !tbaa !5
  br label %if.end.209

if.else.205:                                      ; preds = %if.else
  %189 = load i32, i32* %raster193, align 4, !tbaa !5
  store i32 %189, i32* %br, align 4, !tbaa !5
  %190 = load i32, i32* %w, align 4, !tbaa !5
  store i32 %190, i32* %bw, align 4, !tbaa !5
  %191 = load i32, i32* %raster193, align 4, !tbaa !5
  %conv206 = zext i32 %191 to i64
  %div207 = udiv i64 800, %conv206
  %conv208 = trunc i64 %div207 to i32
  store i32 %conv208, i32* %bh, align 4, !tbaa !5
  br label %if.end.209

if.end.209:                                       ; preds = %if.else.205, %if.then.202
  %options210 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %copy_params, i32 0, i32 0
  store i64 268501009, i64* %options210, align 8, !tbaa !102
  %192 = load i32, i32* %raster193, align 4, !tbaa !5
  %raster211 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %copy_params, i32 0, i32 4
  store i32 %192, i32* %raster211, align 4, !tbaa !109
  %193 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %194 = bitcast %struct.gs_get_bits_params_s* %dest_params to i8*
  %195 = bitcast %struct.gs_get_bits_params_s* %193 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %194, i8* %195, i64 536, i32 8, i1 false), !tbaa.struct !110
  %196 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %x_offset212 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %196, i32 0, i32 2
  %197 = load i32, i32* %x_offset212, align 4, !tbaa !111
  %x_offset213 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %dest_params, i32 0, i32 2
  store i32 %197, i32* %x_offset213, align 4, !tbaa !111
  %198 = load i64, i64* %options, align 8, !tbaa !9
  %and214 = and i64 %198, 4
  %tobool215 = icmp ne i64 %and214, 0
  br i1 %tobool215, label %if.then.216, label %if.else.217

if.then.216:                                      ; preds = %if.end.209
  store i32 3, i32* %dest_bytes, align 4, !tbaa !5
  br label %if.end.232

if.else.217:                                      ; preds = %if.end.209
  %199 = load i64, i64* %options, align 8, !tbaa !9
  %and218 = and i64 %199, 8
  %tobool219 = icmp ne i64 %and218, 0
  br i1 %tobool219, label %if.then.220, label %if.else.221

if.then.220:                                      ; preds = %if.else.217
  store i32 4, i32* %dest_bytes, align 4, !tbaa !5
  br label %if.end.231

if.else.221:                                      ; preds = %if.else.217
  %200 = load i64, i64* %options, align 8, !tbaa !9
  %and222 = and i64 %200, 2
  %tobool223 = icmp ne i64 %and222, 0
  br i1 %tobool223, label %if.then.224, label %if.else.225

if.then.224:                                      ; preds = %if.else.221
  store i32 1, i32* %dest_bytes, align 4, !tbaa !5
  br label %if.end.230

if.else.225:                                      ; preds = %if.else.221
  %201 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color_info226 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %201, i32 0, i32 11
  %depth227 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info226, i32 0, i32 3
  %202 = load i16, i16* %depth227, align 2, !tbaa !11
  %conv228 = zext i16 %202 to i32
  %203 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %plane_depth = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %203, i32 0, i32 67
  %204 = load i32, i32* %plane_depth, align 4, !tbaa !35
  %div229 = sdiv i32 %conv228, %204
  store i32 %div229, i32* %dest_bytes, align 4, !tbaa !5
  br label %if.end.230

if.end.230:                                       ; preds = %if.else.225, %if.then.224
  br label %if.end.231

if.end.231:                                       ; preds = %if.end.230, %if.then.220
  br label %if.end.232

if.end.232:                                       ; preds = %if.end.231, %if.then.216
  %205 = load i32, i32* %y, align 4, !tbaa !5
  store i32 %205, i32* %cy, align 4, !tbaa !5
  br label %for.cond.233

for.cond.233:                                     ; preds = %for.inc.289, %if.end.232
  %206 = load i32, i32* %cy, align 4, !tbaa !5
  %207 = load i32, i32* %y, align 4, !tbaa !5
  %208 = load i32, i32* %h, align 4, !tbaa !5
  %add234 = add nsw i32 %207, %208
  %cmp235 = icmp slt i32 %206, %add234
  br i1 %cmp235, label %for.body.237, label %for.end.291

for.body.237:                                     ; preds = %for.cond.233
  %209 = load i32, i32* %bh, align 4, !tbaa !5
  %210 = load i32, i32* %y, align 4, !tbaa !5
  %211 = load i32, i32* %h, align 4, !tbaa !5
  %add238 = add nsw i32 %210, %211
  %212 = load i32, i32* %cy, align 4, !tbaa !5
  %sub239 = sub nsw i32 %add238, %212
  %cmp240 = icmp slt i32 %209, %sub239
  br i1 %cmp240, label %cond.true.242, label %cond.false.243

cond.true.242:                                    ; preds = %for.body.237
  %213 = load i32, i32* %bh, align 4, !tbaa !5
  br label %cond.end.246

cond.false.243:                                   ; preds = %for.body.237
  %214 = load i32, i32* %y, align 4, !tbaa !5
  %215 = load i32, i32* %h, align 4, !tbaa !5
  %add244 = add nsw i32 %214, %215
  %216 = load i32, i32* %cy, align 4, !tbaa !5
  %sub245 = sub nsw i32 %add244, %216
  br label %cond.end.246

cond.end.246:                                     ; preds = %cond.false.243, %cond.true.242
  %cond247 = phi i32 [ %213, %cond.true.242 ], [ %sub245, %cond.false.243 ]
  store i32 %cond247, i32* %ch, align 4, !tbaa !5
  %217 = load i32, i32* %x, align 4, !tbaa !5
  store i32 %217, i32* %cx, align 4, !tbaa !5
  br label %for.cond.248

for.cond.248:                                     ; preds = %for.inc.278, %cond.end.246
  %218 = load i32, i32* %cx, align 4, !tbaa !5
  %219 = load i32, i32* %x, align 4, !tbaa !5
  %220 = load i32, i32* %w, align 4, !tbaa !5
  %add249 = add nsw i32 %219, %220
  %cmp250 = icmp slt i32 %218, %add249
  br i1 %cmp250, label %for.body.252, label %for.end.280

for.body.252:                                     ; preds = %for.cond.248
  %221 = load i32, i32* %bw, align 4, !tbaa !5
  %222 = load i32, i32* %x, align 4, !tbaa !5
  %223 = load i32, i32* %w, align 4, !tbaa !5
  %add253 = add nsw i32 %222, %223
  %224 = load i32, i32* %cx, align 4, !tbaa !5
  %sub254 = sub nsw i32 %add253, %224
  %cmp255 = icmp slt i32 %221, %sub254
  br i1 %cmp255, label %cond.true.257, label %cond.false.258

cond.true.257:                                    ; preds = %for.body.252
  %225 = load i32, i32* %bw, align 4, !tbaa !5
  br label %cond.end.261

cond.false.258:                                   ; preds = %for.body.252
  %226 = load i32, i32* %x, align 4, !tbaa !5
  %227 = load i32, i32* %w, align 4, !tbaa !5
  %add259 = add nsw i32 %226, %227
  %228 = load i32, i32* %cx, align 4, !tbaa !5
  %sub260 = sub nsw i32 %add259, %228
  br label %cond.end.261

cond.end.261:                                     ; preds = %cond.false.258, %cond.true.257
  %cond262 = phi i32 [ %225, %cond.true.257 ], [ %sub260, %cond.false.258 ]
  store i32 %cond262, i32* %cw, align 4, !tbaa !5
  %229 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %230 = load i32, i32* %cx, align 4, !tbaa !5
  %231 = load i32, i32* %cy, align 4, !tbaa !5
  %232 = load i32, i32* %cw, align 4, !tbaa !5
  %233 = load i32, i32* %ch, align 4, !tbaa !5
  %234 = load i32, i32* %br, align 4, !tbaa !5
  %b = bitcast %union.b_.3* %buf to [800 x i8]*
  %arraydecay = getelementptr inbounds [800 x i8], [800 x i8]* %b, i32 0, i32 0
  %235 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs263 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %235, i32 0, i32 52
  %236 = load i8**, i8*** %line_ptrs263, align 8, !tbaa !73
  %237 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %height264 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %237, i32 0, i32 14
  %238 = load i32, i32* %height264, align 4, !tbaa !75
  %call265 = call i32 @planar_to_chunky(%struct.gx_device_memory_s* %229, i32 %230, i32 %231, i32 %232, i32 %233, i32 0, i32 %234, i8* %arraydecay, i8** %236, i32 %238) #4
  %239 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %240 = load i32, i32* %cw, align 4, !tbaa !5
  %241 = load i32, i32* %ch, align 4, !tbaa !5
  %b266 = bitcast %union.b_.3* %buf to [800 x i8]*
  %arraydecay267 = getelementptr inbounds [800 x i8], [800 x i8]* %b266, i32 0, i32 0
  %242 = load i32, i32* %br, align 4, !tbaa !5
  %call268 = call i32 @gx_get_bits_copy(%struct.gx_device_s* %239, i32 0, i32 %240, i32 %241, %struct.gs_get_bits_params_s* %dest_params, %struct.gs_get_bits_params_s* %copy_params, i8* %arraydecay267, i32 %242) #4
  store i32 %call268, i32* %code, align 4, !tbaa !5
  %243 = load i32, i32* %code, align 4, !tbaa !5
  %cmp269 = icmp slt i32 %243, 0
  br i1 %cmp269, label %if.then.271, label %if.end.272

if.then.271:                                      ; preds = %cond.end.261
  %244 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %244, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.292

if.end.272:                                       ; preds = %cond.end.261
  %245 = load i32, i32* %cw, align 4, !tbaa !5
  %246 = load i32, i32* %dest_bytes, align 4, !tbaa !5
  %mul273 = mul nsw i32 %245, %246
  %data274 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %dest_params, i32 0, i32 1
  %arrayidx275 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data274, i32 0, i64 0
  %247 = load i8*, i8** %arrayidx275, align 8, !tbaa !1
  %idx.ext276 = sext i32 %mul273 to i64
  %add.ptr277 = getelementptr inbounds i8, i8* %247, i64 %idx.ext276
  store i8* %add.ptr277, i8** %arrayidx275, align 8, !tbaa !1
  br label %for.inc.278

for.inc.278:                                      ; preds = %if.end.272
  %248 = load i32, i32* %cw, align 4, !tbaa !5
  %249 = load i32, i32* %cx, align 4, !tbaa !5
  %add279 = add nsw i32 %249, %248
  store i32 %add279, i32* %cx, align 4, !tbaa !5
  br label %for.cond.248

for.end.280:                                      ; preds = %for.cond.248
  %250 = load i32, i32* %ch, align 4, !tbaa !5
  %raster281 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %dest_params, i32 0, i32 4
  %251 = load i32, i32* %raster281, align 4, !tbaa !109
  %mul282 = mul i32 %250, %251
  %252 = load i32, i32* %w, align 4, !tbaa !5
  %253 = load i32, i32* %dest_bytes, align 4, !tbaa !5
  %mul283 = mul nsw i32 %252, %253
  %sub284 = sub i32 %mul282, %mul283
  %data285 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %dest_params, i32 0, i32 1
  %arrayidx286 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data285, i32 0, i64 0
  %254 = load i8*, i8** %arrayidx286, align 8, !tbaa !1
  %idx.ext287 = zext i32 %sub284 to i64
  %add.ptr288 = getelementptr inbounds i8, i8* %254, i64 %idx.ext287
  store i8* %add.ptr288, i8** %arrayidx286, align 8, !tbaa !1
  br label %for.inc.289

for.inc.289:                                      ; preds = %for.end.280
  %255 = load i32, i32* %ch, align 4, !tbaa !5
  %256 = load i32, i32* %cy, align 4, !tbaa !5
  %add290 = add nsw i32 %256, %255
  store i32 %add290, i32* %cy, align 4, !tbaa !5
  br label %for.cond.233

for.end.291:                                      ; preds = %for.cond.233
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.292

cleanup.292:                                      ; preds = %for.end.291, %if.then.271
  %257 = bitcast i32* %dest_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %257) #1
  %258 = bitcast %struct.gs_get_bits_params_s* %dest_params to i8*
  call void @llvm.lifetime.end(i64 536, i8* %258) #1
  %259 = bitcast i32* %raster193 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %259) #1
  %260 = bitcast i32* %ddepth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %260) #1
  %261 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.end(i64 4, i8* %261) #1
  %262 = bitcast i32* %cw to i8*
  call void @llvm.lifetime.end(i64 4, i8* %262) #1
  %263 = bitcast i32* %cy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %263) #1
  %264 = bitcast i32* %cx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %264) #1
  %265 = bitcast i32* %bh to i8*
  call void @llvm.lifetime.end(i64 4, i8* %265) #1
  %266 = bitcast i32* %bw to i8*
  call void @llvm.lifetime.end(i64 4, i8* %266) #1
  %267 = bitcast i32* %br to i8*
  call void @llvm.lifetime.end(i64 4, i8* %267) #1
  %268 = bitcast %union.b_.3* %buf to i8*
  call void @llvm.lifetime.end(i64 800, i8* %268) #1
  %cleanup.dest.304 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.304, label %cleanup.307 [
    i32 0, label %cleanup.cont.305
  ]

cleanup.cont.305:                                 ; preds = %cleanup.292
  br label %if.end.306

if.end.306:                                       ; preds = %cleanup.cont.305, %cond.end.183
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.307

cleanup.307:                                      ; preds = %if.end.306, %cleanup.292, %cleanup.156, %cleanup, %if.then.32, %if.end.18, %if.then.17, %if.then
  %269 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %269) #1
  %270 = bitcast %struct.gs_get_bits_params_s* %copy_params to i8*
  call void @llvm.lifetime.end(i64 536, i8* %270) #1
  %271 = bitcast i32* %num_planes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %271) #1
  %272 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %272) #1
  %273 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %273) #1
  %274 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %274) #1
  %275 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %275) #1
  %276 = bitcast i64* %options to i8*
  call void @llvm.lifetime.end(i64 8, i8* %276) #1
  %277 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %277) #1
  %278 = load i32, i32* %retval
  ret i32 %278
}

declare i32 @gx_default_dev_spec_op(%struct.gx_device_s*, i32, i8*, i32) #2

declare i32 @gdev_mem_open_scan_lines(%struct.gx_device_memory_s*, i32) #2

declare i32 @gx_default_strip_tile_rectangle(%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @planar_to_chunky(%struct.gx_device_memory_s* %mdev, i32 %x, i32 %y, i32 %w, i32 %h, i32 %offset, i32 %draster, i8* %dest, i8** %line_ptrs, i32 %plane_height) #0 {
entry:
  %retval = alloca i32, align 4
  %mdev.addr = alloca %struct.gx_device_memory_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %offset.addr = alloca i32, align 4
  %draster.addr = alloca i32, align 4
  %dest.addr = alloca i8*, align 8
  %line_ptrs.addr = alloca i8**, align 8
  %plane_height.addr = alloca i32, align 4
  %num_planes = alloca i32, align 4
  %sptr = alloca [64 x i8*], align 16
  %sbit = alloca [64 x i32], align 16
  %dptr = alloca i8*, align 8
  %dbit = alloca i32, align 4
  %dbbyte = alloca i8, align 1
  %ddepth = alloca i32, align 4
  %direct = alloca i32, align 4
  %pi = alloca i32, align 4
  %ix = alloca i32, align 4
  %iy = alloca i32, align 4
  %line_ptr = alloca i8**, align 8
  %plane_depth57 = alloca i32, align 4
  %xbit = alloca i32, align 4
  %xbit74 = alloca i32, align 4
  %p0 = alloca i8*, align 8
  %p1 = alloca i8*, align 8
  %p2 = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %color = alloca i64, align 8
  %plane_depth142 = alloca i32, align 4
  %value = alloca i32, align 4
  store %struct.gx_device_memory_s* %mdev, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store i32 %offset, i32* %offset.addr, align 4, !tbaa !5
  store i32 %draster, i32* %draster.addr, align 4, !tbaa !5
  store i8* %dest, i8** %dest.addr, align 8, !tbaa !1
  store i8** %line_ptrs, i8*** %line_ptrs.addr, align 8, !tbaa !1
  store i32 %plane_height, i32* %plane_height.addr, align 4, !tbaa !5
  %0 = bitcast i32* %num_planes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %1, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %2 = load i32, i32* %num_components, align 4, !tbaa !32
  store i32 %2, i32* %num_planes, align 4, !tbaa !5
  %3 = bitcast [64 x i8*]* %sptr to i8*
  call void @llvm.lifetime.start(i64 512, i8* %3) #1
  %4 = bitcast [64 x i32]* %sbit to i8*
  call void @llvm.lifetime.start(i64 256, i8* %4) #1
  %5 = bitcast i8** %dptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %dbit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  call void @llvm.lifetime.start(i64 1, i8* %dbbyte) #1
  %7 = bitcast i32* %ddepth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %color_info1 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %8, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info1, i32 0, i32 3
  %9 = load i16, i16* %depth, align 2, !tbaa !11
  %conv = zext i16 %9 to i32
  store i32 %conv, i32* %ddepth, align 4, !tbaa !5
  %10 = bitcast i32* %direct to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %color_info2 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %11, i32 0, i32 11
  %depth3 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info2, i32 0, i32 3
  %12 = load i16, i16* %depth3, align 2, !tbaa !11
  %conv4 = zext i16 %12 to i32
  %13 = load i32, i32* %num_planes, align 4, !tbaa !5
  %14 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %plane_depth = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %14, i32 0, i32 67
  %15 = load i32, i32* %plane_depth, align 4, !tbaa !35
  %mul = mul nsw i32 %13, %15
  %cmp = icmp ne i32 %conv4, %mul
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.12

cond.false:                                       ; preds = %entry
  %16 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %planes = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %16, i32 0, i32 50
  %arrayidx = getelementptr inbounds [64 x %struct.gx_render_plane_s], [64 x %struct.gx_render_plane_s]* %planes, i32 0, i64 0
  %shift = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %arrayidx, i32 0, i32 1
  %17 = load i32, i32* %shift, align 4, !tbaa !33
  %cmp6 = icmp eq i32 %17, 0
  br i1 %cmp6, label %cond.true.8, label %cond.false.10

cond.true.8:                                      ; preds = %cond.false
  %18 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %plane_depth9 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %18, i32 0, i32 67
  %19 = load i32, i32* %plane_depth9, align 4, !tbaa !35
  %sub = sub nsw i32 0, %19
  br label %cond.end

cond.false.10:                                    ; preds = %cond.false
  %20 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %plane_depth11 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %20, i32 0, i32 67
  %21 = load i32, i32* %plane_depth11, align 4, !tbaa !35
  br label %cond.end

cond.end:                                         ; preds = %cond.false.10, %cond.true.8
  %cond = phi i32 [ %sub, %cond.true.8 ], [ %21, %cond.false.10 ]
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.end, %cond.true
  %cond13 = phi i32 [ 0, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond13, i32* %direct, align 4, !tbaa !5
  %22 = bitcast i32* %pi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = bitcast i32* %ix to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = bitcast i32* %iy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load i32, i32* %direct, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %25, 0
  br i1 %cmp14, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.12
  store i32 0, i32* %pi, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %26 = load i32, i32* %pi, align 4, !tbaa !5
  %27 = load i32, i32* %num_planes, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %26, %27
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %pi, align 4, !tbaa !5
  %idxprom = sext i32 %28 to i64
  %29 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %planes18 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %29, i32 0, i32 50
  %arrayidx19 = getelementptr inbounds [64 x %struct.gx_render_plane_s], [64 x %struct.gx_render_plane_s]* %planes18, i32 0, i64 %idxprom
  %shift20 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %arrayidx19, i32 0, i32 1
  %30 = load i32, i32* %shift20, align 4, !tbaa !33
  %31 = load i32, i32* %pi, align 4, !tbaa !5
  %32 = load i32, i32* %direct, align 4, !tbaa !5
  %sub21 = sub nsw i32 0, %32
  %mul22 = mul nsw i32 %31, %sub21
  %cmp23 = icmp ne i32 %30, %mul22
  br i1 %cmp23, label %if.then.25, label %if.end

if.then.25:                                       ; preds = %for.body
  store i32 0, i32* %direct, align 4, !tbaa !5
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %33 = load i32, i32* %pi, align 4, !tbaa !5
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %pi, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %if.then.25, %for.cond
  br label %if.end.48

if.else:                                          ; preds = %cond.end.12
  %34 = load i32, i32* %direct, align 4, !tbaa !5
  %cmp26 = icmp sgt i32 %34, 0
  br i1 %cmp26, label %if.then.28, label %if.end.47

if.then.28:                                       ; preds = %if.else
  store i32 0, i32* %pi, align 4, !tbaa !5
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.44, %if.then.28
  %35 = load i32, i32* %pi, align 4, !tbaa !5
  %36 = load i32, i32* %num_planes, align 4, !tbaa !5
  %cmp30 = icmp slt i32 %35, %36
  br i1 %cmp30, label %for.body.32, label %for.end.46

for.body.32:                                      ; preds = %for.cond.29
  %37 = load i32, i32* %num_planes, align 4, !tbaa !5
  %sub33 = sub nsw i32 %37, 1
  %38 = load i32, i32* %pi, align 4, !tbaa !5
  %sub34 = sub nsw i32 %sub33, %38
  %idxprom35 = sext i32 %sub34 to i64
  %39 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %planes36 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %39, i32 0, i32 50
  %arrayidx37 = getelementptr inbounds [64 x %struct.gx_render_plane_s], [64 x %struct.gx_render_plane_s]* %planes36, i32 0, i64 %idxprom35
  %shift38 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %arrayidx37, i32 0, i32 1
  %40 = load i32, i32* %shift38, align 4, !tbaa !33
  %41 = load i32, i32* %pi, align 4, !tbaa !5
  %42 = load i32, i32* %direct, align 4, !tbaa !5
  %mul39 = mul nsw i32 %41, %42
  %cmp40 = icmp ne i32 %40, %mul39
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %for.body.32
  store i32 0, i32* %direct, align 4, !tbaa !5
  br label %for.end.46

if.end.43:                                        ; preds = %for.body.32
  br label %for.inc.44

for.inc.44:                                       ; preds = %if.end.43
  %43 = load i32, i32* %pi, align 4, !tbaa !5
  %inc45 = add nsw i32 %43, 1
  store i32 %inc45, i32* %pi, align 4, !tbaa !5
  br label %for.cond.29

for.end.46:                                       ; preds = %if.then.42, %for.cond.29
  br label %if.end.47

if.end.47:                                        ; preds = %for.end.46, %if.else
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %for.end
  %44 = load i32, i32* %y.addr, align 4, !tbaa !5
  store i32 %44, i32* %iy, align 4, !tbaa !5
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.347, %if.end.48
  %45 = load i32, i32* %iy, align 4, !tbaa !5
  %46 = load i32, i32* %y.addr, align 4, !tbaa !5
  %47 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add = add nsw i32 %46, %47
  %cmp50 = icmp slt i32 %45, %add
  br i1 %cmp50, label %for.body.52, label %for.end.349

for.body.52:                                      ; preds = %for.cond.49
  %48 = bitcast i8*** %line_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %48) #1
  %49 = load i8**, i8*** %line_ptrs.addr, align 8, !tbaa !1
  %50 = load i32, i32* %iy, align 4, !tbaa !5
  %idx.ext = sext i32 %50 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %49, i64 %idx.ext
  store i8** %add.ptr, i8*** %line_ptr, align 8, !tbaa !1
  store i32 0, i32* %pi, align 4, !tbaa !5
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.69, %for.body.52
  %51 = load i32, i32* %pi, align 4, !tbaa !5
  %52 = load i32, i32* %num_planes, align 4, !tbaa !5
  %cmp54 = icmp slt i32 %51, %52
  br i1 %cmp54, label %for.body.56, label %for.end.73

for.body.56:                                      ; preds = %for.cond.53
  %53 = bitcast i32* %plane_depth57 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %53) #1
  %54 = load i32, i32* %pi, align 4, !tbaa !5
  %idxprom58 = sext i32 %54 to i64
  %55 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %planes59 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %55, i32 0, i32 50
  %arrayidx60 = getelementptr inbounds [64 x %struct.gx_render_plane_s], [64 x %struct.gx_render_plane_s]* %planes59, i32 0, i64 %idxprom58
  %depth61 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %arrayidx60, i32 0, i32 0
  %56 = load i32, i32* %depth61, align 4, !tbaa !7
  store i32 %56, i32* %plane_depth57, align 4, !tbaa !5
  %57 = bitcast i32* %xbit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %57) #1
  %58 = load i32, i32* %x.addr, align 4, !tbaa !5
  %59 = load i32, i32* %plane_depth57, align 4, !tbaa !5
  %mul62 = mul nsw i32 %58, %59
  store i32 %mul62, i32* %xbit, align 4, !tbaa !5
  %60 = load i8**, i8*** %line_ptr, align 8, !tbaa !1
  %61 = load i8*, i8** %60, align 8, !tbaa !1
  %62 = load i32, i32* %xbit, align 4, !tbaa !5
  %shr = ashr i32 %62, 3
  %idx.ext63 = sext i32 %shr to i64
  %add.ptr64 = getelementptr inbounds i8, i8* %61, i64 %idx.ext63
  %63 = load i32, i32* %pi, align 4, !tbaa !5
  %idxprom65 = sext i32 %63 to i64
  %arrayidx66 = getelementptr inbounds [64 x i8*], [64 x i8*]* %sptr, i32 0, i64 %idxprom65
  store i8* %add.ptr64, i8** %arrayidx66, align 8, !tbaa !1
  %64 = load i32, i32* %xbit, align 4, !tbaa !5
  %and = and i32 %64, 7
  %65 = load i32, i32* %pi, align 4, !tbaa !5
  %idxprom67 = sext i32 %65 to i64
  %arrayidx68 = getelementptr inbounds [64 x i32], [64 x i32]* %sbit, i32 0, i64 %idxprom67
  store i32 %and, i32* %arrayidx68, align 4, !tbaa !5
  %66 = bitcast i32* %xbit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast i32* %plane_depth57 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  br label %for.inc.69

for.inc.69:                                       ; preds = %for.body.56
  %68 = load i32, i32* %pi, align 4, !tbaa !5
  %inc70 = add nsw i32 %68, 1
  store i32 %inc70, i32* %pi, align 4, !tbaa !5
  %69 = load i32, i32* %plane_height.addr, align 4, !tbaa !5
  %70 = load i8**, i8*** %line_ptr, align 8, !tbaa !1
  %idx.ext71 = sext i32 %69 to i64
  %add.ptr72 = getelementptr inbounds i8*, i8** %70, i64 %idx.ext71
  store i8** %add.ptr72, i8*** %line_ptr, align 8, !tbaa !1
  br label %for.cond.53

for.end.73:                                       ; preds = %for.cond.53
  %71 = bitcast i32* %xbit74 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %71) #1
  %72 = load i32, i32* %offset.addr, align 4, !tbaa !5
  %73 = load i32, i32* %ddepth, align 4, !tbaa !5
  %mul75 = mul nsw i32 %72, %73
  store i32 %mul75, i32* %xbit74, align 4, !tbaa !5
  %74 = load i8*, i8** %dest.addr, align 8, !tbaa !1
  %75 = load i32, i32* %iy, align 4, !tbaa !5
  %76 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub76 = sub nsw i32 %75, %76
  %77 = load i32, i32* %draster.addr, align 4, !tbaa !5
  %mul77 = mul i32 %sub76, %77
  %idx.ext78 = zext i32 %mul77 to i64
  %add.ptr79 = getelementptr inbounds i8, i8* %74, i64 %idx.ext78
  %78 = load i32, i32* %xbit74, align 4, !tbaa !5
  %shr80 = ashr i32 %78, 3
  %idx.ext81 = sext i32 %shr80 to i64
  %add.ptr82 = getelementptr inbounds i8, i8* %add.ptr79, i64 %idx.ext81
  store i8* %add.ptr82, i8** %dptr, align 8, !tbaa !1
  %79 = load i32, i32* %xbit74, align 4, !tbaa !5
  %and83 = and i32 %79, 7
  store i32 %and83, i32* %dbit, align 4, !tbaa !5
  %80 = bitcast i32* %xbit74 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #1
  %81 = load i32, i32* %direct, align 4, !tbaa !5
  %cmp84 = icmp eq i32 %81, -8
  br i1 %cmp84, label %if.then.86, label %if.end.123

if.then.86:                                       ; preds = %for.end.73
  %82 = load i32, i32* %num_planes, align 4, !tbaa !5
  switch i32 %82, label %sw.default [
    i32 3, label %sw.bb
    i32 4, label %sw.bb.102
  ]

sw.bb:                                            ; preds = %if.then.86
  %83 = bitcast i8** %p0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %83) #1
  %arrayidx87 = getelementptr inbounds [64 x i8*], [64 x i8*]* %sptr, i32 0, i64 2
  %84 = load i8*, i8** %arrayidx87, align 8, !tbaa !1
  store i8* %84, i8** %p0, align 8, !tbaa !1
  %85 = bitcast i8** %p1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %85) #1
  %arrayidx88 = getelementptr inbounds [64 x i8*], [64 x i8*]* %sptr, i32 0, i64 1
  %86 = load i8*, i8** %arrayidx88, align 8, !tbaa !1
  store i8* %86, i8** %p1, align 8, !tbaa !1
  %87 = bitcast i8** %p2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %87) #1
  %arrayidx89 = getelementptr inbounds [64 x i8*], [64 x i8*]* %sptr, i32 0, i64 0
  %88 = load i8*, i8** %arrayidx89, align 8, !tbaa !1
  store i8* %88, i8** %p2, align 8, !tbaa !1
  %89 = load i32, i32* %w.addr, align 4, !tbaa !5
  store i32 %89, i32* %ix, align 4, !tbaa !5
  br label %for.cond.90

for.cond.90:                                      ; preds = %for.inc.99, %sw.bb
  %90 = load i32, i32* %ix, align 4, !tbaa !5
  %cmp91 = icmp sgt i32 %90, 0
  br i1 %cmp91, label %for.body.93, label %for.end.101

for.body.93:                                      ; preds = %for.cond.90
  %91 = load i8*, i8** %p0, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %incdec.ptr, i8** %p0, align 8, !tbaa !1
  %92 = load i8, i8* %91, align 1, !tbaa !85
  %93 = load i8*, i8** %dptr, align 8, !tbaa !1
  %arrayidx94 = getelementptr inbounds i8, i8* %93, i64 0
  store i8 %92, i8* %arrayidx94, align 1, !tbaa !85
  %94 = load i8*, i8** %p1, align 8, !tbaa !1
  %incdec.ptr95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %incdec.ptr95, i8** %p1, align 8, !tbaa !1
  %95 = load i8, i8* %94, align 1, !tbaa !85
  %96 = load i8*, i8** %dptr, align 8, !tbaa !1
  %arrayidx96 = getelementptr inbounds i8, i8* %96, i64 1
  store i8 %95, i8* %arrayidx96, align 1, !tbaa !85
  %97 = load i8*, i8** %p2, align 8, !tbaa !1
  %incdec.ptr97 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %incdec.ptr97, i8** %p2, align 8, !tbaa !1
  %98 = load i8, i8* %97, align 1, !tbaa !85
  %99 = load i8*, i8** %dptr, align 8, !tbaa !1
  %arrayidx98 = getelementptr inbounds i8, i8* %99, i64 2
  store i8 %98, i8* %arrayidx98, align 1, !tbaa !85
  br label %for.inc.99

for.inc.99:                                       ; preds = %for.body.93
  %100 = load i32, i32* %ix, align 4, !tbaa !5
  %dec = add nsw i32 %100, -1
  store i32 %dec, i32* %ix, align 4, !tbaa !5
  %101 = load i8*, i8** %dptr, align 8, !tbaa !1
  %add.ptr100 = getelementptr inbounds i8, i8* %101, i64 3
  store i8* %add.ptr100, i8** %dptr, align 8, !tbaa !1
  br label %for.cond.90

for.end.101:                                      ; preds = %for.cond.90
  %102 = bitcast i8** %p2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %102) #1
  %103 = bitcast i8** %p1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #1
  %104 = bitcast i8** %p0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #1
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup.344

sw.bb.102:                                        ; preds = %if.then.86
  %105 = load i32, i32* %w.addr, align 4, !tbaa !5
  store i32 %105, i32* %ix, align 4, !tbaa !5
  br label %for.cond.103

for.cond.103:                                     ; preds = %for.inc.119, %sw.bb.102
  %106 = load i32, i32* %ix, align 4, !tbaa !5
  %cmp104 = icmp sgt i32 %106, 0
  br i1 %cmp104, label %for.body.106, label %for.end.122

for.body.106:                                     ; preds = %for.cond.103
  %arrayidx107 = getelementptr inbounds [64 x i8*], [64 x i8*]* %sptr, i32 0, i64 3
  %107 = load i8*, i8** %arrayidx107, align 8, !tbaa !1
  %incdec.ptr108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %incdec.ptr108, i8** %arrayidx107, align 8, !tbaa !1
  %108 = load i8, i8* %107, align 1, !tbaa !85
  %109 = load i8*, i8** %dptr, align 8, !tbaa !1
  %arrayidx109 = getelementptr inbounds i8, i8* %109, i64 0
  store i8 %108, i8* %arrayidx109, align 1, !tbaa !85
  %arrayidx110 = getelementptr inbounds [64 x i8*], [64 x i8*]* %sptr, i32 0, i64 2
  %110 = load i8*, i8** %arrayidx110, align 8, !tbaa !1
  %incdec.ptr111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %incdec.ptr111, i8** %arrayidx110, align 8, !tbaa !1
  %111 = load i8, i8* %110, align 1, !tbaa !85
  %112 = load i8*, i8** %dptr, align 8, !tbaa !1
  %arrayidx112 = getelementptr inbounds i8, i8* %112, i64 1
  store i8 %111, i8* %arrayidx112, align 1, !tbaa !85
  %arrayidx113 = getelementptr inbounds [64 x i8*], [64 x i8*]* %sptr, i32 0, i64 1
  %113 = load i8*, i8** %arrayidx113, align 8, !tbaa !1
  %incdec.ptr114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %incdec.ptr114, i8** %arrayidx113, align 8, !tbaa !1
  %114 = load i8, i8* %113, align 1, !tbaa !85
  %115 = load i8*, i8** %dptr, align 8, !tbaa !1
  %arrayidx115 = getelementptr inbounds i8, i8* %115, i64 2
  store i8 %114, i8* %arrayidx115, align 1, !tbaa !85
  %arrayidx116 = getelementptr inbounds [64 x i8*], [64 x i8*]* %sptr, i32 0, i64 0
  %116 = load i8*, i8** %arrayidx116, align 8, !tbaa !1
  %incdec.ptr117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %incdec.ptr117, i8** %arrayidx116, align 8, !tbaa !1
  %117 = load i8, i8* %116, align 1, !tbaa !85
  %118 = load i8*, i8** %dptr, align 8, !tbaa !1
  %arrayidx118 = getelementptr inbounds i8, i8* %118, i64 3
  store i8 %117, i8* %arrayidx118, align 1, !tbaa !85
  br label %for.inc.119

for.inc.119:                                      ; preds = %for.body.106
  %119 = load i32, i32* %ix, align 4, !tbaa !5
  %dec120 = add nsw i32 %119, -1
  store i32 %dec120, i32* %ix, align 4, !tbaa !5
  %120 = load i8*, i8** %dptr, align 8, !tbaa !1
  %add.ptr121 = getelementptr inbounds i8, i8* %120, i64 4
  store i8* %add.ptr121, i8** %dptr, align 8, !tbaa !1
  br label %for.cond.103

for.end.122:                                      ; preds = %for.cond.103
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup.344

sw.default:                                       ; preds = %if.then.86
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  br label %if.end.123

if.end.123:                                       ; preds = %sw.epilog, %for.end.73
  %121 = load i32, i32* %dbit, align 4, !tbaa !5
  %tobool = icmp ne i32 %121, 0
  br i1 %tobool, label %cond.true.124, label %cond.false.130

cond.true.124:                                    ; preds = %if.end.123
  %122 = load i8*, i8** %dptr, align 8, !tbaa !1
  %123 = load i8, i8* %122, align 1, !tbaa !85
  %conv125 = zext i8 %123 to i32
  %124 = load i32, i32* %dbit, align 4, !tbaa !5
  %shr126 = ashr i32 65280, %124
  %and127 = and i32 %conv125, %shr126
  %conv128 = trunc i32 %and127 to i8
  %conv129 = zext i8 %conv128 to i32
  br label %cond.end.131

cond.false.130:                                   ; preds = %if.end.123
  br label %cond.end.131

cond.end.131:                                     ; preds = %cond.false.130, %cond.true.124
  %cond132 = phi i32 [ %conv129, %cond.true.124 ], [ 0, %cond.false.130 ]
  %conv133 = trunc i32 %cond132 to i8
  store i8 %conv133, i8* %dbbyte, align 1, !tbaa !85
  %125 = load i32, i32* %w.addr, align 4, !tbaa !5
  store i32 %125, i32* %ix, align 4, !tbaa !5
  br label %for.cond.134

for.cond.134:                                     ; preds = %for.inc.331, %cond.end.131
  %126 = load i32, i32* %ix, align 4, !tbaa !5
  %cmp135 = icmp sgt i32 %126, 0
  br i1 %cmp135, label %for.body.137, label %for.end.333

for.body.137:                                     ; preds = %for.cond.134
  %127 = bitcast i64* %color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %127) #1
  store i64 0, i64* %color, align 8, !tbaa !9
  store i32 0, i32* %pi, align 4, !tbaa !5
  br label %for.cond.138

for.cond.138:                                     ; preds = %for.inc.234, %for.body.137
  %128 = load i32, i32* %pi, align 4, !tbaa !5
  %129 = load i32, i32* %num_planes, align 4, !tbaa !5
  %cmp139 = icmp slt i32 %128, %129
  br i1 %cmp139, label %for.body.141, label %for.end.236

for.body.141:                                     ; preds = %for.cond.138
  %130 = bitcast i32* %plane_depth142 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %130) #1
  %131 = load i32, i32* %pi, align 4, !tbaa !5
  %idxprom143 = sext i32 %131 to i64
  %132 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %planes144 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %132, i32 0, i32 50
  %arrayidx145 = getelementptr inbounds [64 x %struct.gx_render_plane_s], [64 x %struct.gx_render_plane_s]* %planes144, i32 0, i64 %idxprom143
  %depth146 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %arrayidx145, i32 0, i32 0
  %133 = load i32, i32* %depth146, align 4, !tbaa !7
  store i32 %133, i32* %plane_depth142, align 4, !tbaa !5
  %134 = bitcast i32* %value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %134) #1
  br label %do.body

do.body:                                          ; preds = %for.body.141
  %135 = load i32, i32* %plane_depth142, align 4, !tbaa !5
  %shr147 = ashr i32 %135, 2
  switch i32 %shr147, label %sw.default.208 [
    i32 0, label %sw.bb.148
    i32 1, label %sw.bb.158
    i32 2, label %sw.bb.167
    i32 3, label %sw.bb.171
    i32 4, label %sw.bb.198
  ]

sw.bb.148:                                        ; preds = %do.body
  %136 = load i32, i32* %pi, align 4, !tbaa !5
  %idxprom149 = sext i32 %136 to i64
  %arrayidx150 = getelementptr inbounds [64 x i8*], [64 x i8*]* %sptr, i32 0, i64 %idxprom149
  %137 = load i8*, i8** %arrayidx150, align 8, !tbaa !1
  %138 = load i8, i8* %137, align 1, !tbaa !85
  %conv151 = zext i8 %138 to i32
  %139 = load i32, i32* %pi, align 4, !tbaa !5
  %idxprom152 = sext i32 %139 to i64
  %arrayidx153 = getelementptr inbounds [64 x i32], [64 x i32]* %sbit, i32 0, i64 %idxprom152
  %140 = load i32, i32* %arrayidx153, align 4, !tbaa !5
  %sub154 = sub nsw i32 8, %140
  %141 = load i32, i32* %plane_depth142, align 4, !tbaa !5
  %sub155 = sub nsw i32 %sub154, %141
  %shr156 = ashr i32 %conv151, %sub155
  %142 = load i32, i32* %plane_depth142, align 4, !tbaa !5
  %or = or i32 %142, 1
  %and157 = and i32 %shr156, %or
  store i32 %and157, i32* %value, align 4, !tbaa !5
  br label %sw.epilog.209

sw.bb.158:                                        ; preds = %do.body
  %143 = load i32, i32* %pi, align 4, !tbaa !5
  %idxprom159 = sext i32 %143 to i64
  %arrayidx160 = getelementptr inbounds [64 x i8*], [64 x i8*]* %sptr, i32 0, i64 %idxprom159
  %144 = load i8*, i8** %arrayidx160, align 8, !tbaa !1
  %145 = load i8, i8* %144, align 1, !tbaa !85
  %conv161 = zext i8 %145 to i32
  %146 = load i32, i32* %pi, align 4, !tbaa !5
  %idxprom162 = sext i32 %146 to i64
  %arrayidx163 = getelementptr inbounds [64 x i32], [64 x i32]* %sbit, i32 0, i64 %idxprom162
  %147 = load i32, i32* %arrayidx163, align 4, !tbaa !5
  %sub164 = sub nsw i32 4, %147
  %shr165 = ashr i32 %conv161, %sub164
  %and166 = and i32 %shr165, 15
  store i32 %and166, i32* %value, align 4, !tbaa !5
  br label %sw.epilog.209

sw.bb.167:                                        ; preds = %do.body
  %148 = load i32, i32* %pi, align 4, !tbaa !5
  %idxprom168 = sext i32 %148 to i64
  %arrayidx169 = getelementptr inbounds [64 x i8*], [64 x i8*]* %sptr, i32 0, i64 %idxprom168
  %149 = load i8*, i8** %arrayidx169, align 8, !tbaa !1
  %150 = load i8, i8* %149, align 1, !tbaa !85
  %conv170 = zext i8 %150 to i32
  store i32 %conv170, i32* %value, align 4, !tbaa !5
  br label %sw.epilog.209

sw.bb.171:                                        ; preds = %do.body
  %151 = load i32, i32* %pi, align 4, !tbaa !5
  %idxprom172 = sext i32 %151 to i64
  %arrayidx173 = getelementptr inbounds [64 x i32], [64 x i32]* %sbit, i32 0, i64 %idxprom172
  %152 = load i32, i32* %arrayidx173, align 4, !tbaa !5
  %tobool174 = icmp ne i32 %152, 0
  br i1 %tobool174, label %cond.true.175, label %cond.false.185

cond.true.175:                                    ; preds = %sw.bb.171
  %153 = load i32, i32* %pi, align 4, !tbaa !5
  %idxprom176 = sext i32 %153 to i64
  %arrayidx177 = getelementptr inbounds [64 x i8*], [64 x i8*]* %sptr, i32 0, i64 %idxprom176
  %154 = load i8*, i8** %arrayidx177, align 8, !tbaa !1
  %155 = load i8, i8* %154, align 1, !tbaa !85
  %conv178 = zext i8 %155 to i32
  %and179 = and i32 %conv178, 15
  %shl = shl i32 %and179, 8
  %156 = load i32, i32* %pi, align 4, !tbaa !5
  %idxprom180 = sext i32 %156 to i64
  %arrayidx181 = getelementptr inbounds [64 x i8*], [64 x i8*]* %sptr, i32 0, i64 %idxprom180
  %157 = load i8*, i8** %arrayidx181, align 8, !tbaa !1
  %arrayidx182 = getelementptr inbounds i8, i8* %157, i64 1
  %158 = load i8, i8* %arrayidx182, align 1, !tbaa !85
  %conv183 = zext i8 %158 to i32
  %or184 = or i32 %shl, %conv183
  br label %cond.end.196

cond.false.185:                                   ; preds = %sw.bb.171
  %159 = load i32, i32* %pi, align 4, !tbaa !5
  %idxprom186 = sext i32 %159 to i64
  %arrayidx187 = getelementptr inbounds [64 x i8*], [64 x i8*]* %sptr, i32 0, i64 %idxprom186
  %160 = load i8*, i8** %arrayidx187, align 8, !tbaa !1
  %161 = load i8, i8* %160, align 1, !tbaa !85
  %conv188 = zext i8 %161 to i32
  %shl189 = shl i32 %conv188, 4
  %162 = load i32, i32* %pi, align 4, !tbaa !5
  %idxprom190 = sext i32 %162 to i64
  %arrayidx191 = getelementptr inbounds [64 x i8*], [64 x i8*]* %sptr, i32 0, i64 %idxprom190
  %163 = load i8*, i8** %arrayidx191, align 8, !tbaa !1
  %arrayidx192 = getelementptr inbounds i8, i8* %163, i64 1
  %164 = load i8, i8* %arrayidx192, align 1, !tbaa !85
  %conv193 = zext i8 %164 to i32
  %shr194 = ashr i32 %conv193, 4
  %or195 = or i32 %shl189, %shr194
  br label %cond.end.196

cond.end.196:                                     ; preds = %cond.false.185, %cond.true.175
  %cond197 = phi i32 [ %or184, %cond.true.175 ], [ %or195, %cond.false.185 ]
  store i32 %cond197, i32* %value, align 4, !tbaa !5
  br label %sw.epilog.209

sw.bb.198:                                        ; preds = %do.body
  %165 = load i32, i32* %pi, align 4, !tbaa !5
  %idxprom199 = sext i32 %165 to i64
  %arrayidx200 = getelementptr inbounds [64 x i8*], [64 x i8*]* %sptr, i32 0, i64 %idxprom199
  %166 = load i8*, i8** %arrayidx200, align 8, !tbaa !1
  %167 = load i8, i8* %166, align 1, !tbaa !85
  %conv201 = zext i8 %167 to i32
  %shl202 = shl i32 %conv201, 8
  %168 = load i32, i32* %pi, align 4, !tbaa !5
  %idxprom203 = sext i32 %168 to i64
  %arrayidx204 = getelementptr inbounds [64 x i8*], [64 x i8*]* %sptr, i32 0, i64 %idxprom203
  %169 = load i8*, i8** %arrayidx204, align 8, !tbaa !1
  %arrayidx205 = getelementptr inbounds i8, i8* %169, i64 1
  %170 = load i8, i8* %arrayidx205, align 1, !tbaa !85
  %conv206 = zext i8 %170 to i32
  %or207 = or i32 %shl202, %conv206
  store i32 %or207, i32* %value, align 4, !tbaa !5
  br label %sw.epilog.209

sw.default.208:                                   ; preds = %do.body
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog.209:                                    ; preds = %sw.bb.198, %cond.end.196, %sw.bb.167, %sw.bb.158, %sw.bb.148
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog.209
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.210

do.body.210:                                      ; preds = %do.end
  %171 = load i32, i32* %plane_depth142, align 4, !tbaa !5
  %172 = load i32, i32* %pi, align 4, !tbaa !5
  %idxprom211 = sext i32 %172 to i64
  %arrayidx212 = getelementptr inbounds [64 x i32], [64 x i32]* %sbit, i32 0, i64 %idxprom211
  %173 = load i32, i32* %arrayidx212, align 4, !tbaa !5
  %add213 = add nsw i32 %173, %171
  store i32 %add213, i32* %arrayidx212, align 4, !tbaa !5
  %174 = load i32, i32* %pi, align 4, !tbaa !5
  %idxprom214 = sext i32 %174 to i64
  %arrayidx215 = getelementptr inbounds [64 x i32], [64 x i32]* %sbit, i32 0, i64 %idxprom214
  %175 = load i32, i32* %arrayidx215, align 4, !tbaa !5
  %shr216 = ashr i32 %175, 3
  %176 = load i32, i32* %pi, align 4, !tbaa !5
  %idxprom217 = sext i32 %176 to i64
  %arrayidx218 = getelementptr inbounds [64 x i8*], [64 x i8*]* %sptr, i32 0, i64 %idxprom217
  %177 = load i8*, i8** %arrayidx218, align 8, !tbaa !1
  %idx.ext219 = sext i32 %shr216 to i64
  %add.ptr220 = getelementptr inbounds i8, i8* %177, i64 %idx.ext219
  store i8* %add.ptr220, i8** %arrayidx218, align 8, !tbaa !1
  %178 = load i32, i32* %pi, align 4, !tbaa !5
  %idxprom221 = sext i32 %178 to i64
  %arrayidx222 = getelementptr inbounds [64 x i32], [64 x i32]* %sbit, i32 0, i64 %idxprom221
  %179 = load i32, i32* %arrayidx222, align 4, !tbaa !5
  %and223 = and i32 %179, 7
  store i32 %and223, i32* %arrayidx222, align 4, !tbaa !5
  br label %do.cond.224

do.cond.224:                                      ; preds = %do.body.210
  br label %do.end.225

do.end.225:                                       ; preds = %do.cond.224
  %180 = load i32, i32* %value, align 4, !tbaa !5
  %conv226 = zext i32 %180 to i64
  %181 = load i32, i32* %pi, align 4, !tbaa !5
  %idxprom227 = sext i32 %181 to i64
  %182 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %planes228 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %182, i32 0, i32 50
  %arrayidx229 = getelementptr inbounds [64 x %struct.gx_render_plane_s], [64 x %struct.gx_render_plane_s]* %planes228, i32 0, i64 %idxprom227
  %shift230 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %arrayidx229, i32 0, i32 1
  %183 = load i32, i32* %shift230, align 4, !tbaa !33
  %sh_prom = zext i32 %183 to i64
  %shl231 = shl i64 %conv226, %sh_prom
  %184 = load i64, i64* %color, align 8, !tbaa !9
  %or232 = or i64 %184, %shl231
  store i64 %or232, i64* %color, align 8, !tbaa !9
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.225, %sw.default.208
  %185 = bitcast i32* %value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %185) #1
  %186 = bitcast i32* %plane_depth142 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %186) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.328 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.234

for.inc.234:                                      ; preds = %cleanup.cont
  %187 = load i32, i32* %pi, align 4, !tbaa !5
  %inc235 = add nsw i32 %187, 1
  store i32 %inc235, i32* %pi, align 4, !tbaa !5
  br label %for.cond.138

for.end.236:                                      ; preds = %for.cond.138
  br label %do.body.237

do.body.237:                                      ; preds = %for.end.236
  %188 = load i32, i32* %ddepth, align 4, !tbaa !5
  %shr238 = ashr i32 %188, 2
  switch i32 %shr238, label %sw.default.324 [
    i32 0, label %sw.bb.239
    i32 1, label %sw.bb.260
    i32 3, label %sw.bb.273
    i32 16, label %sw.bb.293
    i32 14, label %sw.bb.297
    i32 12, label %sw.bb.301
    i32 10, label %sw.bb.305
    i32 8, label %sw.bb.309
    i32 6, label %sw.bb.313
    i32 4, label %sw.bb.317
    i32 2, label %sw.bb.321
  ]

sw.bb.239:                                        ; preds = %do.body.237
  %189 = load i32, i32* %ddepth, align 4, !tbaa !5
  %190 = load i32, i32* %dbit, align 4, !tbaa !5
  %add240 = add nsw i32 %190, %189
  store i32 %add240, i32* %dbit, align 4, !tbaa !5
  %cmp241 = icmp eq i32 %add240, 8
  br i1 %cmp241, label %if.then.243, label %if.else.250

if.then.243:                                      ; preds = %sw.bb.239
  %191 = load i8, i8* %dbbyte, align 1, !tbaa !85
  %conv244 = zext i8 %191 to i32
  %192 = load i64, i64* %color, align 8, !tbaa !9
  %conv245 = trunc i64 %192 to i8
  %conv246 = zext i8 %conv245 to i32
  %or247 = or i32 %conv244, %conv246
  %conv248 = trunc i32 %or247 to i8
  %193 = load i8*, i8** %dptr, align 8, !tbaa !1
  %incdec.ptr249 = getelementptr inbounds i8, i8* %193, i32 1
  store i8* %incdec.ptr249, i8** %dptr, align 8, !tbaa !1
  store i8 %conv248, i8* %193, align 1, !tbaa !85
  store i8 0, i8* %dbbyte, align 1, !tbaa !85
  store i32 0, i32* %dbit, align 4, !tbaa !5
  br label %if.end.259

if.else.250:                                      ; preds = %sw.bb.239
  %194 = load i64, i64* %color, align 8, !tbaa !9
  %195 = load i32, i32* %dbit, align 4, !tbaa !5
  %sub251 = sub nsw i32 8, %195
  %sh_prom252 = zext i32 %sub251 to i64
  %shl253 = shl i64 %194, %sh_prom252
  %conv254 = trunc i64 %shl253 to i8
  %conv255 = zext i8 %conv254 to i32
  %196 = load i8, i8* %dbbyte, align 1, !tbaa !85
  %conv256 = zext i8 %196 to i32
  %or257 = or i32 %conv256, %conv255
  %conv258 = trunc i32 %or257 to i8
  store i8 %conv258, i8* %dbbyte, align 1, !tbaa !85
  br label %if.end.259

if.end.259:                                       ; preds = %if.else.250, %if.then.243
  br label %sw.epilog.325

sw.bb.260:                                        ; preds = %do.body.237
  %197 = load i32, i32* %dbit, align 4, !tbaa !5
  %xor = xor i32 %197, 4
  store i32 %xor, i32* %dbit, align 4, !tbaa !5
  %tobool261 = icmp ne i32 %xor, 0
  br i1 %tobool261, label %if.then.262, label %if.else.265

if.then.262:                                      ; preds = %sw.bb.260
  %198 = load i64, i64* %color, align 8, !tbaa !9
  %shl263 = shl i64 %198, 4
  %conv264 = trunc i64 %shl263 to i8
  store i8 %conv264, i8* %dbbyte, align 1, !tbaa !85
  br label %if.end.272

if.else.265:                                      ; preds = %sw.bb.260
  %199 = load i8, i8* %dbbyte, align 1, !tbaa !85
  %conv266 = zext i8 %199 to i32
  %200 = load i64, i64* %color, align 8, !tbaa !9
  %conv267 = trunc i64 %200 to i8
  %conv268 = zext i8 %conv267 to i32
  %or269 = or i32 %conv266, %conv268
  %conv270 = trunc i32 %or269 to i8
  %201 = load i8*, i8** %dptr, align 8, !tbaa !1
  %incdec.ptr271 = getelementptr inbounds i8, i8* %201, i32 1
  store i8* %incdec.ptr271, i8** %dptr, align 8, !tbaa !1
  store i8 %conv270, i8* %201, align 1, !tbaa !85
  br label %if.end.272

if.end.272:                                       ; preds = %if.else.265, %if.then.262
  br label %sw.epilog.325

sw.bb.273:                                        ; preds = %do.body.237
  %202 = load i32, i32* %dbit, align 4, !tbaa !5
  %xor274 = xor i32 %202, 4
  store i32 %xor274, i32* %dbit, align 4, !tbaa !5
  %tobool275 = icmp ne i32 %xor274, 0
  br i1 %tobool275, label %if.then.276, label %if.else.282

if.then.276:                                      ; preds = %sw.bb.273
  %203 = load i64, i64* %color, align 8, !tbaa !9
  %shr277 = lshr i64 %203, 4
  %conv278 = trunc i64 %shr277 to i8
  %204 = load i8*, i8** %dptr, align 8, !tbaa !1
  %incdec.ptr279 = getelementptr inbounds i8, i8* %204, i32 1
  store i8* %incdec.ptr279, i8** %dptr, align 8, !tbaa !1
  store i8 %conv278, i8* %204, align 1, !tbaa !85
  %205 = load i64, i64* %color, align 8, !tbaa !9
  %shl280 = shl i64 %205, 4
  %conv281 = trunc i64 %shl280 to i8
  store i8 %conv281, i8* %dbbyte, align 1, !tbaa !85
  br label %if.end.292

if.else.282:                                      ; preds = %sw.bb.273
  %206 = load i8, i8* %dbbyte, align 1, !tbaa !85
  %conv283 = zext i8 %206 to i32
  %207 = load i64, i64* %color, align 8, !tbaa !9
  %shr284 = lshr i64 %207, 8
  %conv285 = trunc i64 %shr284 to i8
  %conv286 = zext i8 %conv285 to i32
  %or287 = or i32 %conv283, %conv286
  %conv288 = trunc i32 %or287 to i8
  %208 = load i8*, i8** %dptr, align 8, !tbaa !1
  store i8 %conv288, i8* %208, align 1, !tbaa !85
  %209 = load i64, i64* %color, align 8, !tbaa !9
  %conv289 = trunc i64 %209 to i8
  %210 = load i8*, i8** %dptr, align 8, !tbaa !1
  %arrayidx290 = getelementptr inbounds i8, i8* %210, i64 1
  store i8 %conv289, i8* %arrayidx290, align 1, !tbaa !85
  %211 = load i8*, i8** %dptr, align 8, !tbaa !1
  %add.ptr291 = getelementptr inbounds i8, i8* %211, i64 2
  store i8* %add.ptr291, i8** %dptr, align 8, !tbaa !1
  br label %if.end.292

if.end.292:                                       ; preds = %if.else.282, %if.then.276
  br label %sw.epilog.325

sw.bb.293:                                        ; preds = %do.body.237
  %212 = load i64, i64* %color, align 8, !tbaa !9
  %shr294 = lshr i64 %212, 56
  %conv295 = trunc i64 %shr294 to i8
  %213 = load i8*, i8** %dptr, align 8, !tbaa !1
  %incdec.ptr296 = getelementptr inbounds i8, i8* %213, i32 1
  store i8* %incdec.ptr296, i8** %dptr, align 8, !tbaa !1
  store i8 %conv295, i8* %213, align 1, !tbaa !85
  br label %sw.bb.297

sw.bb.297:                                        ; preds = %do.body.237, %sw.bb.293
  %214 = load i64, i64* %color, align 8, !tbaa !9
  %shr298 = lshr i64 %214, 48
  %conv299 = trunc i64 %shr298 to i8
  %215 = load i8*, i8** %dptr, align 8, !tbaa !1
  %incdec.ptr300 = getelementptr inbounds i8, i8* %215, i32 1
  store i8* %incdec.ptr300, i8** %dptr, align 8, !tbaa !1
  store i8 %conv299, i8* %215, align 1, !tbaa !85
  br label %sw.bb.301

sw.bb.301:                                        ; preds = %do.body.237, %sw.bb.297
  %216 = load i64, i64* %color, align 8, !tbaa !9
  %shr302 = lshr i64 %216, 40
  %conv303 = trunc i64 %shr302 to i8
  %217 = load i8*, i8** %dptr, align 8, !tbaa !1
  %incdec.ptr304 = getelementptr inbounds i8, i8* %217, i32 1
  store i8* %incdec.ptr304, i8** %dptr, align 8, !tbaa !1
  store i8 %conv303, i8* %217, align 1, !tbaa !85
  br label %sw.bb.305

sw.bb.305:                                        ; preds = %do.body.237, %sw.bb.301
  %218 = load i64, i64* %color, align 8, !tbaa !9
  %shr306 = lshr i64 %218, 32
  %conv307 = trunc i64 %shr306 to i8
  %219 = load i8*, i8** %dptr, align 8, !tbaa !1
  %incdec.ptr308 = getelementptr inbounds i8, i8* %219, i32 1
  store i8* %incdec.ptr308, i8** %dptr, align 8, !tbaa !1
  store i8 %conv307, i8* %219, align 1, !tbaa !85
  br label %sw.bb.309

sw.bb.309:                                        ; preds = %do.body.237, %sw.bb.305
  %220 = load i64, i64* %color, align 8, !tbaa !9
  %shr310 = lshr i64 %220, 24
  %conv311 = trunc i64 %shr310 to i8
  %221 = load i8*, i8** %dptr, align 8, !tbaa !1
  %incdec.ptr312 = getelementptr inbounds i8, i8* %221, i32 1
  store i8* %incdec.ptr312, i8** %dptr, align 8, !tbaa !1
  store i8 %conv311, i8* %221, align 1, !tbaa !85
  br label %sw.bb.313

sw.bb.313:                                        ; preds = %do.body.237, %sw.bb.309
  %222 = load i64, i64* %color, align 8, !tbaa !9
  %shr314 = lshr i64 %222, 16
  %conv315 = trunc i64 %shr314 to i8
  %223 = load i8*, i8** %dptr, align 8, !tbaa !1
  %incdec.ptr316 = getelementptr inbounds i8, i8* %223, i32 1
  store i8* %incdec.ptr316, i8** %dptr, align 8, !tbaa !1
  store i8 %conv315, i8* %223, align 1, !tbaa !85
  br label %sw.bb.317

sw.bb.317:                                        ; preds = %do.body.237, %sw.bb.313
  %224 = load i64, i64* %color, align 8, !tbaa !9
  %shr318 = lshr i64 %224, 8
  %conv319 = trunc i64 %shr318 to i8
  %225 = load i8*, i8** %dptr, align 8, !tbaa !1
  %incdec.ptr320 = getelementptr inbounds i8, i8* %225, i32 1
  store i8* %incdec.ptr320, i8** %dptr, align 8, !tbaa !1
  store i8 %conv319, i8* %225, align 1, !tbaa !85
  br label %sw.bb.321

sw.bb.321:                                        ; preds = %do.body.237, %sw.bb.317
  %226 = load i64, i64* %color, align 8, !tbaa !9
  %conv322 = trunc i64 %226 to i8
  %227 = load i8*, i8** %dptr, align 8, !tbaa !1
  %incdec.ptr323 = getelementptr inbounds i8, i8* %227, i32 1
  store i8* %incdec.ptr323, i8** %dptr, align 8, !tbaa !1
  store i8 %conv322, i8* %227, align 1, !tbaa !85
  br label %sw.epilog.325

sw.default.324:                                   ; preds = %do.body.237
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.328

sw.epilog.325:                                    ; preds = %sw.bb.321, %if.end.292, %if.end.272, %if.end.259
  br label %do.cond.326

do.cond.326:                                      ; preds = %sw.epilog.325
  br label %do.end.327

do.end.327:                                       ; preds = %do.cond.326
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.328

cleanup.328:                                      ; preds = %do.end.327, %sw.default.324, %cleanup
  %228 = bitcast i64* %color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %228) #1
  %cleanup.dest.329 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.329, label %cleanup.344 [
    i32 0, label %cleanup.cont.330
  ]

cleanup.cont.330:                                 ; preds = %cleanup.328
  br label %for.inc.331

for.inc.331:                                      ; preds = %cleanup.cont.330
  %229 = load i32, i32* %ix, align 4, !tbaa !5
  %dec332 = add nsw i32 %229, -1
  store i32 %dec332, i32* %ix, align 4, !tbaa !5
  br label %for.cond.134

for.end.333:                                      ; preds = %for.cond.134
  %230 = load i32, i32* %dbit, align 4, !tbaa !5
  %cmp334 = icmp ne i32 %230, 0
  br i1 %cmp334, label %if.then.336, label %if.end.343

if.then.336:                                      ; preds = %for.end.333
  %231 = load i8, i8* %dbbyte, align 1, !tbaa !85
  %conv337 = zext i8 %231 to i32
  %232 = load i8*, i8** %dptr, align 8, !tbaa !1
  %233 = load i8, i8* %232, align 1, !tbaa !85
  %conv338 = zext i8 %233 to i32
  %234 = load i32, i32* %dbit, align 4, !tbaa !5
  %shr339 = ashr i32 255, %234
  %and340 = and i32 %conv338, %shr339
  %or341 = or i32 %conv337, %and340
  %conv342 = trunc i32 %or341 to i8
  %235 = load i8*, i8** %dptr, align 8, !tbaa !1
  store i8 %conv342, i8* %235, align 1, !tbaa !85
  br label %if.end.343

if.end.343:                                       ; preds = %if.then.336, %for.end.333
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.344

cleanup.344:                                      ; preds = %if.end.343, %cleanup.328, %for.end.122, %for.end.101
  %236 = bitcast i8*** %line_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %236) #1
  %cleanup.dest.345 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.345, label %cleanup.350 [
    i32 0, label %cleanup.cont.346
    i32 10, label %for.inc.347
  ]

cleanup.cont.346:                                 ; preds = %cleanup.344
  br label %for.inc.347

for.inc.347:                                      ; preds = %cleanup.cont.346, %cleanup.344
  %237 = load i32, i32* %iy, align 4, !tbaa !5
  %inc348 = add nsw i32 %237, 1
  store i32 %inc348, i32* %iy, align 4, !tbaa !5
  br label %for.cond.49

for.end.349:                                      ; preds = %for.cond.49
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.350

cleanup.350:                                      ; preds = %for.end.349, %cleanup.344
  %238 = bitcast i32* %iy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %238) #1
  %239 = bitcast i32* %ix to i8*
  call void @llvm.lifetime.end(i64 4, i8* %239) #1
  %240 = bitcast i32* %pi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %240) #1
  %241 = bitcast i32* %direct to i8*
  call void @llvm.lifetime.end(i64 4, i8* %241) #1
  %242 = bitcast i32* %ddepth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %242) #1
  call void @llvm.lifetime.end(i64 1, i8* %dbbyte) #1
  %243 = bitcast i32* %dbit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %243) #1
  %244 = bitcast i8** %dptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %244) #1
  %245 = bitcast [64 x i32]* %sbit to i8*
  call void @llvm.lifetime.end(i64 256, i8* %245) #1
  %246 = bitcast [64 x i8*]* %sptr to i8*
  call void @llvm.lifetime.end(i64 512, i8* %246) #1
  %247 = bitcast i32* %num_planes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %247) #1
  %248 = load i32, i32* %retval
  ret i32 %248
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal i32 @plane_strip_copy_rop(%struct.gx_device_memory_s* %mdev, i8* %sdata, i32 %sourcex, i32 %sraster, i64 %id, i64* %scolors, %struct.gx_strip_bitmap_s* %textures, i64* %tcolors, i32 %x, i32 %y, i32 %width, i32 %height, i32 %phase_x, i32 %phase_y, i32 %lop, i32 %plane) #0 {
entry:
  %mdev.addr = alloca %struct.gx_device_memory_s*, align 8
  %sdata.addr = alloca i8*, align 8
  %sourcex.addr = alloca i32, align 4
  %sraster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %scolors.addr = alloca i64*, align 8
  %textures.addr = alloca %struct.gx_strip_bitmap_s*, align 8
  %tcolors.addr = alloca i64*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %phase_x.addr = alloca i32, align 4
  %phase_y.addr = alloca i32, align 4
  %lop.addr = alloca i32, align 4
  %plane.addr = alloca i32, align 4
  %save = alloca %struct.mem_save_params_s, align 8
  %code = alloca i32, align 4
  %mdproto = alloca %struct.gx_device_memory_s*, align 8
  store %struct.gx_device_memory_s* %mdev, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  store i8* %sdata, i8** %sdata.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 %sraster, i32* %sraster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !9
  store i64* %scolors, i64** %scolors.addr, align 8, !tbaa !1
  store %struct.gx_strip_bitmap_s* %textures, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  store i64* %tcolors, i64** %tcolors.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  store i32 %phase_x, i32* %phase_x.addr, align 4, !tbaa !5
  store i32 %phase_y, i32* %phase_y.addr, align 4, !tbaa !5
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !5
  store i32 %plane, i32* %plane.addr, align 4, !tbaa !5
  %0 = bitcast %struct.mem_save_params_s* %save to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.gx_device_memory_s** %mdproto to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %3, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %4 = load i16, i16* %depth, align 2, !tbaa !11
  %conv = zext i16 %4 to i32
  %depth1 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 0
  store i32 %conv, i32* %depth1, align 4, !tbaa !69
  %5 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %base = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %5, i32 0, i32 45
  %6 = load i8*, i8** %base, align 8, !tbaa !71
  %base2 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 1
  store i8* %6, i8** %base2, align 8, !tbaa !72
  %7 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %7, i32 0, i32 52
  %8 = load i8**, i8*** %line_ptrs, align 8, !tbaa !73
  %line_ptrs3 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 2
  store i8** %8, i8*** %line_ptrs3, align 8, !tbaa !74
  %9 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %height4 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %9, i32 0, i32 14
  %10 = load i32, i32* %height4, align 4, !tbaa !75
  %11 = load i32, i32* %plane.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %10, %11
  %12 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %line_ptrs5 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %12, i32 0, i32 52
  %13 = load i8**, i8*** %line_ptrs5, align 8, !tbaa !73
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8*, i8** %13, i64 %idx.ext
  store i8** %add.ptr, i8*** %line_ptrs5, align 8, !tbaa !73
  %14 = load i32, i32* %plane.addr, align 4, !tbaa !5
  %idxprom = sext i32 %14 to i64
  %15 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %planes = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %15, i32 0, i32 50
  %arrayidx = getelementptr inbounds [64 x %struct.gx_render_plane_s], [64 x %struct.gx_render_plane_s]* %planes, i32 0, i64 %idxprom
  %depth6 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %arrayidx, i32 0, i32 0
  %16 = load i32, i32* %depth6, align 4, !tbaa !7
  %call = call %struct.gx_device_memory_s* @gdev_mem_device_for_bits(i32 %16) #4
  store %struct.gx_device_memory_s* %call, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %17 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %17, i32 0, i32 42
  %get_bits_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 38
  %18 = load i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %get_bits_rectangle, align 8, !tbaa !44
  %19 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %procs7 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %19, i32 0, i32 42
  %get_bits_rectangle8 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs7, i32 0, i32 38
  store i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* %18, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %get_bits_rectangle8, align 8, !tbaa !44
  %20 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %procs9 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %20, i32 0, i32 42
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs9, i32 0, i32 7
  %21 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8, !tbaa !37
  %22 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %procs10 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %22, i32 0, i32 42
  %fill_rectangle11 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs10, i32 0, i32 7
  store i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* %21, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle11, align 8, !tbaa !37
  %23 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %procs12 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %23, i32 0, i32 42
  %strip_copy_rop = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs12, i32 0, i32 35
  %24 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)** %strip_copy_rop, align 8, !tbaa !42
  %25 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %26 = bitcast %struct.gx_device_memory_s* %25 to %struct.gx_device_s*
  %27 = load i8*, i8** %sdata.addr, align 8, !tbaa !1
  %28 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %29 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %30 = load i64, i64* %id.addr, align 8, !tbaa !9
  %31 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %32 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %33 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %34 = load i32, i32* %x.addr, align 4, !tbaa !5
  %35 = load i32, i32* %y.addr, align 4, !tbaa !5
  %36 = load i32, i32* %width.addr, align 4, !tbaa !5
  %37 = load i32, i32* %height.addr, align 4, !tbaa !5
  %38 = load i32, i32* %phase_x.addr, align 4, !tbaa !5
  %39 = load i32, i32* %phase_y.addr, align 4, !tbaa !5
  %40 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call13 = call i32 %24(%struct.gx_device_s* %26, i8* %27, i32 %28, i32 %29, i64 %30, i64* %31, %struct.gx_strip_bitmap_s* %32, i64* %33, i32 %34, i32 %35, i32 %36, i32 %37, i32 %38, i32 %39, i32 %40) #4
  store i32 %call13, i32* %code, align 4, !tbaa !5
  %41 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %procs14 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %41, i32 0, i32 42
  %get_bits_rectangle15 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs14, i32 0, i32 38
  store i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* @mem_planar_get_bits_rectangle, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %get_bits_rectangle15, align 8, !tbaa !44
  %42 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %procs16 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %42, i32 0, i32 42
  %fill_rectangle17 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs16, i32 0, i32 7
  store i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @mem_planar_fill_rectangle, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle17, align 8, !tbaa !37
  %depth18 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 0
  %43 = load i32, i32* %depth18, align 4, !tbaa !69
  %conv19 = trunc i32 %43 to i16
  %44 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %color_info20 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %44, i32 0, i32 11
  %depth21 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info20, i32 0, i32 3
  store i16 %conv19, i16* %depth21, align 2, !tbaa !11
  %base22 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 1
  %45 = load i8*, i8** %base22, align 8, !tbaa !72
  %46 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %base23 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %46, i32 0, i32 45
  store i8* %45, i8** %base23, align 8, !tbaa !71
  %line_ptrs24 = getelementptr inbounds %struct.mem_save_params_s, %struct.mem_save_params_s* %save, i32 0, i32 2
  %47 = load i8**, i8*** %line_ptrs24, align 8, !tbaa !74
  %48 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %line_ptrs25 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %48, i32 0, i32 52
  store i8** %47, i8*** %line_ptrs25, align 8, !tbaa !73
  %49 = load i32, i32* %code, align 4, !tbaa !5
  %50 = bitcast %struct.gx_device_memory_s** %mdproto to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast %struct.mem_save_params_s* %save to i8*
  call void @llvm.lifetime.end(i64 24, i8* %52) #1
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define internal i32 @planar_cmyk4bit_strip_copy_rop(%struct.gx_device_memory_s* %mdev, i8* %srow, i32 %sourcex, i32 %sraster, i64 %id, i64* %scolors, %struct.gx_strip_bitmap_s* %textures, i64* %tcolors, i32 %x, i32 %y, i32 %width, i32 %height, i32 %phase_x, i32 %phase_y, i32 %lop) #0 {
entry:
  %retval = alloca i32, align 4
  %mdev.addr = alloca %struct.gx_device_memory_s*, align 8
  %srow.addr = alloca i8*, align 8
  %sourcex.addr = alloca i32, align 4
  %sraster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %scolors.addr = alloca i64*, align 8
  %textures.addr = alloca %struct.gx_strip_bitmap_s*, align 8
  %tcolors.addr = alloca i64*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %phase_x.addr = alloca i32, align 4
  %phase_y.addr = alloca i32, align 4
  %lop.addr = alloca i32, align 4
  %rop = alloca i32, align 4
  %draster = alloca i32, align 4
  %line_count = alloca i32, align 4
  %cdrow = alloca i8*, align 8
  %mdrow = alloca i8*, align 8
  %ydrow = alloca i8*, align 8
  %kdrow = alloca i8*, align 8
  %lmask = alloca i8, align 1
  %rmask = alloca i8, align 1
  %cproc = alloca i64 (i64, i64, i64)*, align 8
  %mproc = alloca i64 (i64, i64, i64)*, align 8
  %yproc = alloca i64 (i64, i64, i64)*, align 8
  %dbit = alloca i32, align 4
  %cscolor = alloca i32, align 4
  %mscolor = alloca i32, align 4
  %yscolor = alloca i32, align 4
  %kscolor = alloca i32, align 4
  %ctcolor = alloca i32, align 4
  %mtcolor = alloca i32, align 4
  %ytcolor = alloca i32, align 4
  %ktcolor = alloca i32, align 4
  %constant_s = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %ty = alloca i32, align 4
  %traster = alloca i32, align 4
  %sx = alloca i32, align 4
  %dx = alloca i32, align 4
  %w = alloca i32, align 4
  %trow = alloca i8*, align 8
  %xoff = alloca i32, align 4
  %nw = alloca i32, align 4
  %tx = alloca i32, align 4
  %dbit240 = alloca i32, align 4
  %tbit = alloca i32, align 4
  %tskew = alloca i32, align 4
  %left = alloca i32, align 4
  %sbit = alloca i32, align 4
  %sskew = alloca i32, align 4
  %lmask259 = alloca i8, align 1
  %rmask262 = alloca i8, align 1
  %cdptr = alloca i8*, align 8
  %mdptr = alloca i8*, align 8
  %ydptr = alloca i8*, align 8
  %kdptr = alloca i8*, align 8
  %tptr = alloca i8*, align 8
  %proc = alloca i64 (i64, i64, i64)*, align 8
  %sptr = alloca i8*, align 8
  %kdbyte = alloca i8, align 1
  %cdbyte = alloca i8, align 1
  %mdbyte = alloca i8, align 1
  %ydbyte = alloca i8, align 1
  %cresult = alloca i8, align 1
  %mresult = alloca i8, align 1
  %yresult = alloca i8, align 1
  %kresult = alloca i8, align 1
  %scol = alloca i32, align 4
  %tcol = alloca i32, align 4
  %kdbyte612 = alloca i8, align 1
  %cdbyte613 = alloca i8, align 1
  %mdbyte618 = alloca i8, align 1
  %ydbyte623 = alloca i8, align 1
  %cresult628 = alloca i8, align 1
  %mresult629 = alloca i8, align 1
  %yresult630 = alloca i8, align 1
  %kresult631 = alloca i8, align 1
  %scol632 = alloca i32, align 4
  %tcol633 = alloca i32, align 4
  %kdbyte817 = alloca i8, align 1
  %cdbyte818 = alloca i8, align 1
  %mdbyte819 = alloca i8, align 1
  %ydbyte820 = alloca i8, align 1
  %cresult821 = alloca i8, align 1
  %mresult822 = alloca i8, align 1
  %yresult823 = alloca i8, align 1
  %kresult824 = alloca i8, align 1
  %scol825 = alloca i32, align 4
  %tcol826 = alloca i32, align 4
  %proc1154 = alloca i64 (i64, i64, i64)*, align 8
  %sbit1157 = alloca i32, align 4
  %sskew1159 = alloca i32, align 4
  %cdptr1172 = alloca i8*, align 8
  %mdptr1173 = alloca i8*, align 8
  %ydptr1174 = alloca i8*, align 8
  %kdptr1175 = alloca i8*, align 8
  %sptr1176 = alloca i8*, align 8
  %left1177 = alloca i32, align 4
  %kdbyte1179 = alloca i8, align 1
  %cdbyte1180 = alloca i8, align 1
  %mdbyte1181 = alloca i8, align 1
  %ydbyte1182 = alloca i8, align 1
  %cresult1183 = alloca i8, align 1
  %mresult1184 = alloca i8, align 1
  %yresult1185 = alloca i8, align 1
  %kresult1186 = alloca i8, align 1
  %scol1187 = alloca i32, align 4
  %kdbyte1392 = alloca i8, align 1
  %cdbyte1393 = alloca i8, align 1
  %mdbyte1398 = alloca i8, align 1
  %ydbyte1403 = alloca i8, align 1
  %cresult1408 = alloca i8, align 1
  %mresult1409 = alloca i8, align 1
  %yresult1410 = alloca i8, align 1
  %kresult1411 = alloca i8, align 1
  %scol1412 = alloca i32, align 4
  %kdbyte1538 = alloca i8, align 1
  %cdbyte1539 = alloca i8, align 1
  %mdbyte1540 = alloca i8, align 1
  %ydbyte1541 = alloca i8, align 1
  %cresult1542 = alloca i8, align 1
  %mresult1543 = alloca i8, align 1
  %yresult1544 = alloca i8, align 1
  %kresult1545 = alloca i8, align 1
  %scol1546 = alloca i32, align 4
  %proc1741 = alloca i64 (i64, i64, i64)*, align 8
  %cdptr1749 = alloca i8*, align 8
  %mdptr1750 = alloca i8*, align 8
  %ydptr1751 = alloca i8*, align 8
  %kdptr1752 = alloca i8*, align 8
  %left1753 = alloca i32, align 4
  %kdbyte1755 = alloca i8, align 1
  %cdbyte1756 = alloca i8, align 1
  %mdbyte1757 = alloca i8, align 1
  %ydbyte1758 = alloca i8, align 1
  %cresult1759 = alloca i8, align 1
  %mresult1768 = alloca i8, align 1
  %yresult1777 = alloca i8, align 1
  %kresult1786 = alloca i8, align 1
  %kdbyte1857 = alloca i8, align 1
  %cdbyte1858 = alloca i8, align 1
  %mdbyte1863 = alloca i8, align 1
  %ydbyte1868 = alloca i8, align 1
  %cresult1873 = alloca i8, align 1
  %mresult1879 = alloca i8, align 1
  %yresult1885 = alloca i8, align 1
  %kresult1891 = alloca i8, align 1
  %kdbyte1934 = alloca i8, align 1
  %cdbyte1935 = alloca i8, align 1
  %mdbyte1936 = alloca i8, align 1
  %ydbyte1937 = alloca i8, align 1
  %cresult1938 = alloca i8, align 1
  %mresult1947 = alloca i8, align 1
  %yresult1956 = alloca i8, align 1
  %kresult1965 = alloca i8, align 1
  %sbit2045 = alloca i32, align 4
  %sskew2047 = alloca i32, align 4
  %sptr2063 = alloca i8*, align 8
  %cdptr2064 = alloca i8*, align 8
  %mdptr2065 = alloca i8*, align 8
  %ydptr2066 = alloca i8*, align 8
  %kdptr2067 = alloca i8*, align 8
  %left2068 = alloca i32, align 4
  %kdbyte2070 = alloca i8, align 1
  %cdbyte2071 = alloca i8, align 1
  %mdbyte2072 = alloca i8, align 1
  %ydbyte2073 = alloca i8, align 1
  %sbyte = alloca i8, align 1
  %cresult2089 = alloca i8, align 1
  %mresult2098 = alloca i8, align 1
  %yresult2107 = alloca i8, align 1
  %kresult2116 = alloca i8, align 1
  %kdbyte2184 = alloca i8, align 1
  %cdbyte2185 = alloca i8, align 1
  %mdbyte2190 = alloca i8, align 1
  %ydbyte2195 = alloca i8, align 1
  %sbyte2200 = alloca i8, align 1
  %cresult2216 = alloca i8, align 1
  %mresult2222 = alloca i8, align 1
  %yresult2228 = alloca i8, align 1
  %kresult2234 = alloca i8, align 1
  %kdbyte2266 = alloca i8, align 1
  %cdbyte2267 = alloca i8, align 1
  %mdbyte2268 = alloca i8, align 1
  %ydbyte2269 = alloca i8, align 1
  %sbyte2270 = alloca i8, align 1
  %cresult2286 = alloca i8, align 1
  %mresult2295 = alloca i8, align 1
  %yresult2304 = alloca i8, align 1
  %kresult2313 = alloca i8, align 1
  store %struct.gx_device_memory_s* %mdev, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  store i8* %srow, i8** %srow.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 %sraster, i32* %sraster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !9
  store i64* %scolors, i64** %scolors.addr, align 8, !tbaa !1
  store %struct.gx_strip_bitmap_s* %textures, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  store i64* %tcolors, i64** %tcolors.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  store i32 %phase_x, i32* %phase_x.addr, align 4, !tbaa !5
  store i32 %phase_y, i32* %phase_y.addr, align 4, !tbaa !5
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !5
  %0 = bitcast i32* %rop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %lop.addr, align 4, !tbaa !5
  store i32 %1, i32* %rop, align 4, !tbaa !85
  %2 = bitcast i32* %draster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %3, i32 0, i32 44
  %4 = load i32, i32* %raster, align 4, !tbaa !77
  store i32 %4, i32* %draster, align 4, !tbaa !5
  %5 = bitcast i32* %line_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i8** %cdrow to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i8** %mdrow to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i8** %ydrow to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i8** %kdrow to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  call void @llvm.lifetime.start(i64 1, i8* %lmask) #1
  call void @llvm.lifetime.start(i64 1, i8* %rmask) #1
  %10 = bitcast i64 (i64, i64, i64)** %cproc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i64 (i64, i64, i64)** %mproc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i64 (i64, i64, i64)** %yproc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i32* %dbit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %cscolor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %mscolor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %yscolor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast i32* %kscolor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i32* %ctcolor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast i32* %mtcolor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = bitcast i32* %ytcolor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = bitcast i32* %ktcolor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = bitcast i32* %constant_s to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  store i32 0, i32* %constant_s, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %23 = load i32, i32* %x.addr, align 4, !tbaa !5
  %24 = load i32, i32* %y.addr, align 4, !tbaa !5
  %or = or i32 %23, %24
  %cmp = icmp slt i32 %or, 0
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %do.body.1
  %25 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %25, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %26 = load i32, i32* %x.addr, align 4, !tbaa !5
  %27 = load i32, i32* %width.addr, align 4, !tbaa !5
  %add = add nsw i32 %27, %26
  store i32 %add, i32* %width.addr, align 4, !tbaa !5
  %28 = load i32, i32* %x.addr, align 4, !tbaa !5
  %29 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %29, %28
  store i32 %sub, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 0, i32* %x.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %30 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %30, 0
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %31 = load i32, i32* %y.addr, align 4, !tbaa !5
  %32 = load i32, i32* %height.addr, align 4, !tbaa !5
  %add6 = add nsw i32 %32, %31
  store i32 %add6, i32* %height.addr, align 4, !tbaa !5
  %33 = load i32, i32* %y.addr, align 4, !tbaa !5
  %34 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %mul = mul i32 %33, %34
  %35 = load i8*, i8** %srow.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %mul to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %35, i64 %idx.neg
  store i8* %add.ptr, i8** %srow.addr, align 8, !tbaa !1
  store i64 0, i64* %id.addr, align 8, !tbaa !9
  store i32 0, i32* %y.addr, align 4, !tbaa !5
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %do.body.1
  %36 = load i32, i32* %width.addr, align 4, !tbaa !5
  %37 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %width9 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %37, i32 0, i32 13
  %38 = load i32, i32* %width9, align 4, !tbaa !76
  %39 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub10 = sub nsw i32 %38, %39
  %cmp11 = icmp sgt i32 %36, %sub10
  br i1 %cmp11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %if.end.8
  %40 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %width13 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %40, i32 0, i32 13
  %41 = load i32, i32* %width13, align 4, !tbaa !76
  %42 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub14 = sub nsw i32 %41, %42
  store i32 %sub14, i32* %width.addr, align 4, !tbaa !5
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %if.end.8
  br label %do.cond

do.cond:                                          ; preds = %if.end.15
  br label %do.end

do.end:                                           ; preds = %do.cond
  %43 = load i32, i32* %height.addr, align 4, !tbaa !5
  %44 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %height16 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %44, i32 0, i32 14
  %45 = load i32, i32* %height16, align 4, !tbaa !75
  %46 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub17 = sub nsw i32 %45, %46
  %cmp18 = icmp sgt i32 %43, %sub17
  br i1 %cmp18, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %do.end
  %47 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %height20 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %47, i32 0, i32 14
  %48 = load i32, i32* %height20, align 4, !tbaa !75
  %49 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub21 = sub nsw i32 %48, %49
  store i32 %sub21, i32* %height.addr, align 4, !tbaa !5
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.19, %do.end
  %50 = load i32, i32* %width.addr, align 4, !tbaa !5
  %cmp23 = icmp sle i32 %50, 0
  br i1 %cmp23, label %if.then.25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.22
  %51 = load i32, i32* %height.addr, align 4, !tbaa !5
  %cmp24 = icmp sle i32 %51, 0
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %lor.lhs.false, %if.end.22
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.2390

if.end.26:                                        ; preds = %lor.lhs.false
  br label %do.cond.27

do.cond.27:                                       ; preds = %if.end.26
  br label %do.end.28

do.end.28:                                        ; preds = %do.cond.27
  %52 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %tobool = icmp ne i64* %52, null
  br i1 %tobool, label %if.then.29, label %if.end.164

if.then.29:                                       ; preds = %do.end.28
  %53 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %53, i64 0
  %54 = load i64, i64* %arrayidx, align 8, !tbaa !9
  %55 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds i64, i64* %55, i64 1
  %56 = load i64, i64* %arrayidx30, align 8, !tbaa !9
  %cmp31 = icmp eq i64 %54, %56
  br i1 %cmp31, label %if.then.32, label %if.else

if.then.32:                                       ; preds = %if.then.29
  %57 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds i64, i64* %57, i64 0
  %58 = load i64, i64* %arrayidx33, align 8, !tbaa !9
  %and = and i64 %58, 1
  %tobool34 = icmp ne i64 %and, 0
  %cond = select i1 %tobool34, i32 -1, i32 0
  store i32 %cond, i32* %kscolor, align 4, !tbaa !5
  %59 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds i64, i64* %59, i64 0
  %60 = load i64, i64* %arrayidx35, align 8, !tbaa !9
  %and36 = and i64 %60, 8
  %tobool37 = icmp ne i64 %and36, 0
  %cond38 = select i1 %tobool37, i32 -1, i32 0
  %61 = load i32, i32* %kscolor, align 4, !tbaa !5
  %or39 = or i32 %cond38, %61
  store i32 %or39, i32* %cscolor, align 4, !tbaa !5
  %62 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds i64, i64* %62, i64 0
  %63 = load i64, i64* %arrayidx40, align 8, !tbaa !9
  %and41 = and i64 %63, 4
  %tobool42 = icmp ne i64 %and41, 0
  %cond43 = select i1 %tobool42, i32 -1, i32 0
  %64 = load i32, i32* %kscolor, align 4, !tbaa !5
  %or44 = or i32 %cond43, %64
  store i32 %or44, i32* %mscolor, align 4, !tbaa !5
  %65 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds i64, i64* %65, i64 0
  %66 = load i64, i64* %arrayidx45, align 8, !tbaa !9
  %and46 = and i64 %66, 2
  %tobool47 = icmp ne i64 %and46, 0
  %cond48 = select i1 %tobool47, i32 -1, i32 0
  %67 = load i32, i32* %kscolor, align 4, !tbaa !5
  %or49 = or i32 %cond48, %67
  store i32 %or49, i32* %yscolor, align 4, !tbaa !5
  store i32 1, i32* %constant_s, align 4, !tbaa !5
  br label %if.end.163

if.else:                                          ; preds = %if.then.29
  %68 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %arrayidx50 = getelementptr inbounds i64, i64* %68, i64 0
  %69 = load i64, i64* %arrayidx50, align 8, !tbaa !9
  %and51 = and i64 %69, 1
  %70 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %arrayidx52 = getelementptr inbounds i64, i64* %70, i64 1
  %71 = load i64, i64* %arrayidx52, align 8, !tbaa !9
  %and53 = and i64 %71, 1
  %shl = shl i64 %and53, 1
  %or54 = or i64 %and51, %shl
  %conv = trunc i64 %or54 to i32
  store i32 %conv, i32* %kscolor, align 4, !tbaa !5
  %72 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %arrayidx55 = getelementptr inbounds i64, i64* %72, i64 0
  %73 = load i64, i64* %arrayidx55, align 8, !tbaa !9
  %and56 = and i64 %73, 8
  %shr = lshr i64 %and56, 3
  %74 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %arrayidx57 = getelementptr inbounds i64, i64* %74, i64 1
  %75 = load i64, i64* %arrayidx57, align 8, !tbaa !9
  %and58 = and i64 %75, 8
  %shr59 = lshr i64 %and58, 2
  %or60 = or i64 %shr, %shr59
  %76 = load i32, i32* %kscolor, align 4, !tbaa !5
  %conv61 = sext i32 %76 to i64
  %or62 = or i64 %or60, %conv61
  %conv63 = trunc i64 %or62 to i32
  store i32 %conv63, i32* %cscolor, align 4, !tbaa !5
  %77 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %arrayidx64 = getelementptr inbounds i64, i64* %77, i64 0
  %78 = load i64, i64* %arrayidx64, align 8, !tbaa !9
  %and65 = and i64 %78, 4
  %shr66 = lshr i64 %and65, 2
  %79 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %arrayidx67 = getelementptr inbounds i64, i64* %79, i64 1
  %80 = load i64, i64* %arrayidx67, align 8, !tbaa !9
  %and68 = and i64 %80, 4
  %shr69 = lshr i64 %and68, 1
  %or70 = or i64 %shr66, %shr69
  %81 = load i32, i32* %kscolor, align 4, !tbaa !5
  %conv71 = sext i32 %81 to i64
  %or72 = or i64 %or70, %conv71
  %conv73 = trunc i64 %or72 to i32
  store i32 %conv73, i32* %mscolor, align 4, !tbaa !5
  %82 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %arrayidx74 = getelementptr inbounds i64, i64* %82, i64 0
  %83 = load i64, i64* %arrayidx74, align 8, !tbaa !9
  %and75 = and i64 %83, 2
  %shr76 = lshr i64 %and75, 1
  %84 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %arrayidx77 = getelementptr inbounds i64, i64* %84, i64 1
  %85 = load i64, i64* %arrayidx77, align 8, !tbaa !9
  %and78 = and i64 %85, 2
  %or79 = or i64 %shr76, %and78
  %86 = load i32, i32* %kscolor, align 4, !tbaa !5
  %conv80 = sext i32 %86 to i64
  %or81 = or i64 %or79, %conv80
  %conv82 = trunc i64 %or81 to i32
  store i32 %conv82, i32* %yscolor, align 4, !tbaa !5
  %87 = load i32, i32* %cscolor, align 4, !tbaa !5
  switch i32 %87, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.88
    i32 2, label %sw.bb.98
  ]

sw.bb:                                            ; preds = %if.else
  %88 = load i32, i32* %rop, align 4, !tbaa !85
  %and83 = and i32 %88, 51
  %shl84 = shl i32 %and83, 2
  %89 = load i32, i32* %rop, align 4, !tbaa !85
  %and85 = and i32 %89, -205
  %or86 = or i32 %shl84, %and85
  %idxprom = zext i32 %or86 to i64
  %arrayidx87 = getelementptr inbounds [256 x i64 (i64, i64, i64)*], [256 x i64 (i64, i64, i64)*]* @rop_proc_table, i32 0, i64 %idxprom
  %90 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %arrayidx87, align 8, !tbaa !1
  store i64 (i64, i64, i64)* %90, i64 (i64, i64, i64)** %cproc, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.88:                                         ; preds = %if.else
  %91 = load i32, i32* %rop, align 4, !tbaa !85
  %and89 = and i32 %91, 204
  %shr90 = lshr i32 %and89, 2
  %92 = load i32, i32* %rop, align 4, !tbaa !85
  %and91 = and i32 %92, 51
  %shl92 = shl i32 %and91, 2
  %or93 = or i32 %shr90, %shl92
  %93 = load i32, i32* %rop, align 4, !tbaa !85
  %and94 = and i32 %93, -256
  %or95 = or i32 %or93, %and94
  %idxprom96 = zext i32 %or95 to i64
  %arrayidx97 = getelementptr inbounds [256 x i64 (i64, i64, i64)*], [256 x i64 (i64, i64, i64)*]* @rop_proc_table, i32 0, i64 %idxprom96
  %94 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %arrayidx97, align 8, !tbaa !1
  store i64 (i64, i64, i64)* %94, i64 (i64, i64, i64)** %cproc, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.98:                                         ; preds = %if.else
  %95 = load i32, i32* %rop, align 4, !tbaa !85
  %idxprom99 = zext i32 %95 to i64
  %arrayidx100 = getelementptr inbounds [256 x i64 (i64, i64, i64)*], [256 x i64 (i64, i64, i64)*]* @rop_proc_table, i32 0, i64 %idxprom99
  %96 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %arrayidx100, align 8, !tbaa !1
  store i64 (i64, i64, i64)* %96, i64 (i64, i64, i64)** %cproc, align 8, !tbaa !1
  br label %sw.epilog

sw.default:                                       ; preds = %if.else
  %97 = load i32, i32* %rop, align 4, !tbaa !85
  %and101 = and i32 %97, 204
  %shr102 = lshr i32 %and101, 2
  %98 = load i32, i32* %rop, align 4, !tbaa !85
  %and103 = and i32 %98, -52
  %or104 = or i32 %shr102, %and103
  %idxprom105 = zext i32 %or104 to i64
  %arrayidx106 = getelementptr inbounds [256 x i64 (i64, i64, i64)*], [256 x i64 (i64, i64, i64)*]* @rop_proc_table, i32 0, i64 %idxprom105
  %99 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %arrayidx106, align 8, !tbaa !1
  store i64 (i64, i64, i64)* %99, i64 (i64, i64, i64)** %cproc, align 8, !tbaa !1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.98, %sw.bb.88, %sw.bb
  %100 = load i32, i32* %mscolor, align 4, !tbaa !5
  switch i32 %100, label %sw.default.127 [
    i32 0, label %sw.bb.107
    i32 1, label %sw.bb.114
    i32 2, label %sw.bb.124
  ]

sw.bb.107:                                        ; preds = %sw.epilog
  %101 = load i32, i32* %rop, align 4, !tbaa !85
  %and108 = and i32 %101, 51
  %shl109 = shl i32 %and108, 2
  %102 = load i32, i32* %rop, align 4, !tbaa !85
  %and110 = and i32 %102, -205
  %or111 = or i32 %shl109, %and110
  %idxprom112 = zext i32 %or111 to i64
  %arrayidx113 = getelementptr inbounds [256 x i64 (i64, i64, i64)*], [256 x i64 (i64, i64, i64)*]* @rop_proc_table, i32 0, i64 %idxprom112
  %103 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %arrayidx113, align 8, !tbaa !1
  store i64 (i64, i64, i64)* %103, i64 (i64, i64, i64)** %mproc, align 8, !tbaa !1
  br label %sw.epilog.134

sw.bb.114:                                        ; preds = %sw.epilog
  %104 = load i32, i32* %rop, align 4, !tbaa !85
  %and115 = and i32 %104, 204
  %shr116 = lshr i32 %and115, 2
  %105 = load i32, i32* %rop, align 4, !tbaa !85
  %and117 = and i32 %105, 51
  %shl118 = shl i32 %and117, 2
  %or119 = or i32 %shr116, %shl118
  %106 = load i32, i32* %rop, align 4, !tbaa !85
  %and120 = and i32 %106, -256
  %or121 = or i32 %or119, %and120
  %idxprom122 = zext i32 %or121 to i64
  %arrayidx123 = getelementptr inbounds [256 x i64 (i64, i64, i64)*], [256 x i64 (i64, i64, i64)*]* @rop_proc_table, i32 0, i64 %idxprom122
  %107 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %arrayidx123, align 8, !tbaa !1
  store i64 (i64, i64, i64)* %107, i64 (i64, i64, i64)** %mproc, align 8, !tbaa !1
  br label %sw.epilog.134

sw.bb.124:                                        ; preds = %sw.epilog
  %108 = load i32, i32* %rop, align 4, !tbaa !85
  %idxprom125 = zext i32 %108 to i64
  %arrayidx126 = getelementptr inbounds [256 x i64 (i64, i64, i64)*], [256 x i64 (i64, i64, i64)*]* @rop_proc_table, i32 0, i64 %idxprom125
  %109 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %arrayidx126, align 8, !tbaa !1
  store i64 (i64, i64, i64)* %109, i64 (i64, i64, i64)** %mproc, align 8, !tbaa !1
  br label %sw.epilog.134

sw.default.127:                                   ; preds = %sw.epilog
  %110 = load i32, i32* %rop, align 4, !tbaa !85
  %and128 = and i32 %110, 204
  %shr129 = lshr i32 %and128, 2
  %111 = load i32, i32* %rop, align 4, !tbaa !85
  %and130 = and i32 %111, -52
  %or131 = or i32 %shr129, %and130
  %idxprom132 = zext i32 %or131 to i64
  %arrayidx133 = getelementptr inbounds [256 x i64 (i64, i64, i64)*], [256 x i64 (i64, i64, i64)*]* @rop_proc_table, i32 0, i64 %idxprom132
  %112 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %arrayidx133, align 8, !tbaa !1
  store i64 (i64, i64, i64)* %112, i64 (i64, i64, i64)** %mproc, align 8, !tbaa !1
  br label %sw.epilog.134

sw.epilog.134:                                    ; preds = %sw.default.127, %sw.bb.124, %sw.bb.114, %sw.bb.107
  %113 = load i32, i32* %yscolor, align 4, !tbaa !5
  switch i32 %113, label %sw.default.155 [
    i32 0, label %sw.bb.135
    i32 1, label %sw.bb.142
    i32 2, label %sw.bb.152
  ]

sw.bb.135:                                        ; preds = %sw.epilog.134
  %114 = load i32, i32* %rop, align 4, !tbaa !85
  %and136 = and i32 %114, 51
  %shl137 = shl i32 %and136, 2
  %115 = load i32, i32* %rop, align 4, !tbaa !85
  %and138 = and i32 %115, -205
  %or139 = or i32 %shl137, %and138
  %idxprom140 = zext i32 %or139 to i64
  %arrayidx141 = getelementptr inbounds [256 x i64 (i64, i64, i64)*], [256 x i64 (i64, i64, i64)*]* @rop_proc_table, i32 0, i64 %idxprom140
  %116 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %arrayidx141, align 8, !tbaa !1
  store i64 (i64, i64, i64)* %116, i64 (i64, i64, i64)** %yproc, align 8, !tbaa !1
  br label %sw.epilog.162

sw.bb.142:                                        ; preds = %sw.epilog.134
  %117 = load i32, i32* %rop, align 4, !tbaa !85
  %and143 = and i32 %117, 204
  %shr144 = lshr i32 %and143, 2
  %118 = load i32, i32* %rop, align 4, !tbaa !85
  %and145 = and i32 %118, 51
  %shl146 = shl i32 %and145, 2
  %or147 = or i32 %shr144, %shl146
  %119 = load i32, i32* %rop, align 4, !tbaa !85
  %and148 = and i32 %119, -256
  %or149 = or i32 %or147, %and148
  %idxprom150 = zext i32 %or149 to i64
  %arrayidx151 = getelementptr inbounds [256 x i64 (i64, i64, i64)*], [256 x i64 (i64, i64, i64)*]* @rop_proc_table, i32 0, i64 %idxprom150
  %120 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %arrayidx151, align 8, !tbaa !1
  store i64 (i64, i64, i64)* %120, i64 (i64, i64, i64)** %yproc, align 8, !tbaa !1
  br label %sw.epilog.162

sw.bb.152:                                        ; preds = %sw.epilog.134
  %121 = load i32, i32* %rop, align 4, !tbaa !85
  %idxprom153 = zext i32 %121 to i64
  %arrayidx154 = getelementptr inbounds [256 x i64 (i64, i64, i64)*], [256 x i64 (i64, i64, i64)*]* @rop_proc_table, i32 0, i64 %idxprom153
  %122 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %arrayidx154, align 8, !tbaa !1
  store i64 (i64, i64, i64)* %122, i64 (i64, i64, i64)** %yproc, align 8, !tbaa !1
  br label %sw.epilog.162

sw.default.155:                                   ; preds = %sw.epilog.134
  %123 = load i32, i32* %rop, align 4, !tbaa !85
  %and156 = and i32 %123, 204
  %shr157 = lshr i32 %and156, 2
  %124 = load i32, i32* %rop, align 4, !tbaa !85
  %and158 = and i32 %124, -52
  %or159 = or i32 %shr157, %and158
  %idxprom160 = zext i32 %or159 to i64
  %arrayidx161 = getelementptr inbounds [256 x i64 (i64, i64, i64)*], [256 x i64 (i64, i64, i64)*]* @rop_proc_table, i32 0, i64 %idxprom160
  %125 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %arrayidx161, align 8, !tbaa !1
  store i64 (i64, i64, i64)* %125, i64 (i64, i64, i64)** %yproc, align 8, !tbaa !1
  br label %sw.epilog.162

sw.epilog.162:                                    ; preds = %sw.default.155, %sw.bb.152, %sw.bb.142, %sw.bb.135
  br label %if.end.163

if.end.163:                                       ; preds = %sw.epilog.162, %if.then.32
  br label %if.end.164

if.end.164:                                       ; preds = %if.end.163, %do.end.28
  %126 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %tobool165 = icmp ne i64* %126, null
  br i1 %tobool165, label %if.then.166, label %if.end.186

if.then.166:                                      ; preds = %if.end.164
  %127 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %arrayidx167 = getelementptr inbounds i64, i64* %127, i64 0
  %128 = load i64, i64* %arrayidx167, align 8, !tbaa !9
  %and168 = and i64 %128, 1
  %tobool169 = icmp ne i64 %and168, 0
  %cond170 = select i1 %tobool169, i32 -1, i32 0
  store i32 %cond170, i32* %ktcolor, align 4, !tbaa !5
  %129 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %arrayidx171 = getelementptr inbounds i64, i64* %129, i64 0
  %130 = load i64, i64* %arrayidx171, align 8, !tbaa !9
  %and172 = and i64 %130, 8
  %tobool173 = icmp ne i64 %and172, 0
  %cond174 = select i1 %tobool173, i32 -1, i32 0
  %131 = load i32, i32* %ktcolor, align 4, !tbaa !5
  %or175 = or i32 %cond174, %131
  store i32 %or175, i32* %ctcolor, align 4, !tbaa !5
  %132 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %arrayidx176 = getelementptr inbounds i64, i64* %132, i64 0
  %133 = load i64, i64* %arrayidx176, align 8, !tbaa !9
  %and177 = and i64 %133, 4
  %tobool178 = icmp ne i64 %and177, 0
  %cond179 = select i1 %tobool178, i32 -1, i32 0
  %134 = load i32, i32* %ktcolor, align 4, !tbaa !5
  %or180 = or i32 %cond179, %134
  store i32 %or180, i32* %mtcolor, align 4, !tbaa !5
  %135 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %arrayidx181 = getelementptr inbounds i64, i64* %135, i64 0
  %136 = load i64, i64* %arrayidx181, align 8, !tbaa !9
  %and182 = and i64 %136, 2
  %tobool183 = icmp ne i64 %and182, 0
  %cond184 = select i1 %tobool183, i32 -1, i32 0
  %137 = load i32, i32* %ktcolor, align 4, !tbaa !5
  %or185 = or i32 %cond184, %137
  store i32 %or185, i32* %ytcolor, align 4, !tbaa !5
  br label %if.end.186

if.end.186:                                       ; preds = %if.then.166, %if.end.164
  %138 = load i32, i32* %height.addr, align 4, !tbaa !5
  store i32 %138, i32* %line_count, align 4, !tbaa !5
  %139 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %shl187 = shl i32 %139, 4
  %140 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %xor = xor i32 %shl187, %140
  %and188 = and i32 %xor, 240
  %cmp189 = icmp ne i32 %and188, 0
  br i1 %cmp189, label %land.lhs.true, label %lor.lhs.false.191

lor.lhs.false.191:                                ; preds = %if.end.186
  %141 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %and192 = and i32 %141, 512
  %tobool193 = icmp ne i32 %and192, 0
  br i1 %tobool193, label %land.lhs.true, label %if.end.1115

land.lhs.true:                                    ; preds = %lor.lhs.false.191, %if.end.186
  %142 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %cmp194 = icmp eq i64* %142, null
  br i1 %cmp194, label %if.then.196, label %if.end.1115

if.then.196:                                      ; preds = %land.lhs.true
  %143 = bitcast i32* %ty to i8*
  call void @llvm.lifetime.start(i64 4, i8* %143) #1
  %144 = bitcast i32* %traster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %144) #1
  %145 = load i32, i32* %y.addr, align 4, !tbaa !5
  %idxprom197 = sext i32 %145 to i64
  %146 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %146, i32 0, i32 52
  %147 = load i8**, i8*** %line_ptrs, align 8, !tbaa !73
  %arrayidx198 = getelementptr inbounds i8*, i8** %147, i64 %idxprom197
  %148 = load i8*, i8** %arrayidx198, align 8, !tbaa !1
  store i8* %148, i8** %cdrow, align 8, !tbaa !1
  %149 = load i8*, i8** %cdrow, align 8, !tbaa !1
  %150 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %height199 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %150, i32 0, i32 14
  %151 = load i32, i32* %height199, align 4, !tbaa !75
  %152 = load i32, i32* %draster, align 4, !tbaa !5
  %mul200 = mul i32 %151, %152
  %idx.ext201 = zext i32 %mul200 to i64
  %add.ptr202 = getelementptr inbounds i8, i8* %149, i64 %idx.ext201
  store i8* %add.ptr202, i8** %mdrow, align 8, !tbaa !1
  %153 = load i8*, i8** %mdrow, align 8, !tbaa !1
  %154 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %height203 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %154, i32 0, i32 14
  %155 = load i32, i32* %height203, align 4, !tbaa !75
  %156 = load i32, i32* %draster, align 4, !tbaa !5
  %mul204 = mul i32 %155, %156
  %idx.ext205 = zext i32 %mul204 to i64
  %add.ptr206 = getelementptr inbounds i8, i8* %153, i64 %idx.ext205
  store i8* %add.ptr206, i8** %ydrow, align 8, !tbaa !1
  %157 = load i8*, i8** %ydrow, align 8, !tbaa !1
  %158 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %height207 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %158, i32 0, i32 14
  %159 = load i32, i32* %height207, align 4, !tbaa !75
  %160 = load i32, i32* %draster, align 4, !tbaa !5
  %mul208 = mul i32 %159, %160
  %idx.ext209 = zext i32 %mul208 to i64
  %add.ptr210 = getelementptr inbounds i8, i8* %157, i64 %idx.ext209
  store i8* %add.ptr210, i8** %kdrow, align 8, !tbaa !1
  %161 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %tobool211 = icmp ne %struct.gx_strip_bitmap_s* %161, null
  br i1 %tobool211, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.196
  %162 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %raster212 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %162, i32 0, i32 1
  %163 = load i32, i32* %raster212, align 4, !tbaa !98
  br label %cond.end

cond.false:                                       ; preds = %if.then.196
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond213 = phi i32 [ %163, %cond.true ], [ 0, %cond.false ]
  store i32 %cond213, i32* %traster, align 4, !tbaa !5
  %164 = load i32, i32* %y.addr, align 4, !tbaa !5
  %165 = load i32, i32* %phase_y.addr, align 4, !tbaa !5
  %add214 = add nsw i32 %164, %165
  store i32 %add214, i32* %ty, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.1101, %cond.end
  %166 = load i32, i32* %line_count, align 4, !tbaa !5
  %dec = add nsw i32 %166, -1
  store i32 %dec, i32* %line_count, align 4, !tbaa !5
  %cmp215 = icmp sgt i32 %166, 0
  br i1 %cmp215, label %for.body, label %for.end.1112

for.body:                                         ; preds = %for.cond
  %167 = bitcast i32* %sx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %167) #1
  %168 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 %168, i32* %sx, align 4, !tbaa !5
  %169 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %169) #1
  %170 = load i32, i32* %x.addr, align 4, !tbaa !5
  store i32 %170, i32* %dx, align 4, !tbaa !5
  %171 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %171) #1
  %172 = load i32, i32* %width.addr, align 4, !tbaa !5
  store i32 %172, i32* %w, align 4, !tbaa !5
  %173 = bitcast i8** %trow to i8*
  call void @llvm.lifetime.start(i64 8, i8* %173) #1
  %174 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %174, i32 0, i32 0
  %175 = load i8*, i8** %data, align 8, !tbaa !97
  %176 = load i32, i32* %ty, align 4, !tbaa !5
  %177 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %rep_height = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %177, i32 0, i32 5
  %178 = load i16, i16* %rep_height, align 2, !tbaa !95
  %conv217 = zext i16 %178 to i32
  %rem = srem i32 %176, %conv217
  %179 = load i32, i32* %traster, align 4, !tbaa !5
  %mul218 = mul i32 %rem, %179
  %idx.ext219 = zext i32 %mul218 to i64
  %add.ptr220 = getelementptr inbounds i8, i8* %175, i64 %idx.ext219
  store i8* %add.ptr220, i8** %trow, align 8, !tbaa !1
  %180 = bitcast i32* %xoff to i8*
  call void @llvm.lifetime.start(i64 4, i8* %180) #1
  %181 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %shift = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %181, i32 0, i32 7
  %182 = load i16, i16* %shift, align 2, !tbaa !112
  %conv221 = zext i16 %182 to i32
  %cmp222 = icmp eq i32 %conv221, 0
  br i1 %cmp222, label %cond.true.224, label %cond.false.225

cond.true.224:                                    ; preds = %for.body
  %183 = load i32, i32* %phase_x.addr, align 4, !tbaa !5
  br label %cond.end.231

cond.false.225:                                   ; preds = %for.body
  %184 = load i32, i32* %phase_x.addr, align 4, !tbaa !5
  %185 = load i32, i32* %ty, align 4, !tbaa !5
  %186 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %rep_height226 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %186, i32 0, i32 5
  %187 = load i16, i16* %rep_height226, align 2, !tbaa !95
  %conv227 = zext i16 %187 to i32
  %div = sdiv i32 %185, %conv227
  %188 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %rep_shift = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %188, i32 0, i32 6
  %189 = load i16, i16* %rep_shift, align 2, !tbaa !113
  %conv228 = zext i16 %189 to i32
  %mul229 = mul nsw i32 %div, %conv228
  %add230 = add nsw i32 %184, %mul229
  br label %cond.end.231

cond.end.231:                                     ; preds = %cond.false.225, %cond.true.224
  %cond232 = phi i32 [ %183, %cond.true.224 ], [ %add230, %cond.false.225 ]
  store i32 %cond232, i32* %xoff, align 4, !tbaa !5
  %190 = bitcast i32* %nw to i8*
  call void @llvm.lifetime.start(i64 4, i8* %190) #1
  %191 = bitcast i32* %tx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %191) #1
  %192 = load i32, i32* %dx, align 4, !tbaa !5
  %193 = load i32, i32* %xoff, align 4, !tbaa !5
  %add233 = add nsw i32 %192, %193
  %194 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %rep_width = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %194, i32 0, i32 4
  %195 = load i16, i16* %rep_width, align 2, !tbaa !96
  %conv234 = zext i16 %195 to i32
  %rem235 = srem i32 %add233, %conv234
  store i32 %rem235, i32* %tx, align 4, !tbaa !5
  br label %for.cond.236

for.cond.236:                                     ; preds = %for.inc, %cond.end.231
  %196 = load i32, i32* %w, align 4, !tbaa !5
  %cmp237 = icmp sgt i32 %196, 0
  br i1 %cmp237, label %for.body.239, label %for.end

for.body.239:                                     ; preds = %for.cond.236
  %197 = bitcast i32* %dbit240 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %197) #1
  %198 = load i32, i32* %dx, align 4, !tbaa !5
  %and241 = and i32 %198, 7
  store i32 %and241, i32* %dbit240, align 4, !tbaa !5
  %199 = bitcast i32* %tbit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %199) #1
  %200 = load i32, i32* %tx, align 4, !tbaa !5
  %and242 = and i32 %200, 1
  store i32 %and242, i32* %tbit, align 4, !tbaa !5
  %201 = bitcast i32* %tskew to i8*
  call void @llvm.lifetime.start(i64 4, i8* %201) #1
  %202 = load i32, i32* %tbit, align 4, !tbaa !5
  %203 = load i32, i32* %dbit240, align 4, !tbaa !5
  %sub243 = sub nsw i32 %202, %203
  store i32 %sub243, i32* %tskew, align 4, !tbaa !5
  %204 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %204) #1
  %205 = load i32, i32* %w, align 4, !tbaa !5
  %206 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %206, i32 0, i32 2
  %x244 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size, i32 0, i32 0
  %207 = load i32, i32* %x244, align 4, !tbaa !100
  %208 = load i32, i32* %tx, align 4, !tbaa !5
  %sub245 = sub nsw i32 %207, %208
  %cmp246 = icmp slt i32 %205, %sub245
  br i1 %cmp246, label %cond.true.248, label %cond.false.249

cond.true.248:                                    ; preds = %for.body.239
  %209 = load i32, i32* %w, align 4, !tbaa !5
  br label %cond.end.253

cond.false.249:                                   ; preds = %for.body.239
  %210 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %size250 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %210, i32 0, i32 2
  %x251 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size250, i32 0, i32 0
  %211 = load i32, i32* %x251, align 4, !tbaa !100
  %212 = load i32, i32* %tx, align 4, !tbaa !5
  %sub252 = sub nsw i32 %211, %212
  br label %cond.end.253

cond.end.253:                                     ; preds = %cond.false.249, %cond.true.248
  %cond254 = phi i32 [ %209, %cond.true.248 ], [ %sub252, %cond.false.249 ]
  store i32 %cond254, i32* %nw, align 4, !tbaa !5
  %sub255 = sub nsw i32 %cond254, 8
  %213 = load i32, i32* %dbit240, align 4, !tbaa !5
  %add256 = add nsw i32 %sub255, %213
  store i32 %add256, i32* %left, align 4, !tbaa !5
  %214 = bitcast i32* %sbit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %214) #1
  %215 = load i32, i32* %sx, align 4, !tbaa !5
  %and257 = and i32 %215, 1
  store i32 %and257, i32* %sbit, align 4, !tbaa !5
  %216 = bitcast i32* %sskew to i8*
  call void @llvm.lifetime.start(i64 4, i8* %216) #1
  %217 = load i32, i32* %sbit, align 4, !tbaa !5
  %218 = load i32, i32* %dbit240, align 4, !tbaa !5
  %sub258 = sub nsw i32 %217, %218
  store i32 %sub258, i32* %sskew, align 4, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %lmask259) #1
  %219 = load i32, i32* %dbit240, align 4, !tbaa !5
  %shr260 = ashr i32 255, %219
  %conv261 = trunc i32 %shr260 to i8
  store i8 %conv261, i8* %lmask259, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %rmask262) #1
  %220 = load i32, i32* %dbit240, align 4, !tbaa !5
  %221 = load i32, i32* %nw, align 4, !tbaa !5
  %add263 = add nsw i32 %220, %221
  %sub264 = sub nsw i32 %add263, 1
  %neg = xor i32 %sub264, -1
  %and265 = and i32 %neg, 7
  %shl266 = shl i32 255, %and265
  %conv267 = trunc i32 %shl266 to i8
  store i8 %conv267, i8* %rmask262, align 1, !tbaa !85
  %222 = bitcast i8** %cdptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %222) #1
  %223 = load i8*, i8** %cdrow, align 8, !tbaa !1
  %224 = load i32, i32* %dx, align 4, !tbaa !5
  %shr268 = ashr i32 %224, 3
  %idx.ext269 = sext i32 %shr268 to i64
  %add.ptr270 = getelementptr inbounds i8, i8* %223, i64 %idx.ext269
  store i8* %add.ptr270, i8** %cdptr, align 8, !tbaa !1
  %225 = bitcast i8** %mdptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %225) #1
  %226 = load i8*, i8** %mdrow, align 8, !tbaa !1
  %227 = load i32, i32* %dx, align 4, !tbaa !5
  %shr271 = ashr i32 %227, 3
  %idx.ext272 = sext i32 %shr271 to i64
  %add.ptr273 = getelementptr inbounds i8, i8* %226, i64 %idx.ext272
  store i8* %add.ptr273, i8** %mdptr, align 8, !tbaa !1
  %228 = bitcast i8** %ydptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %228) #1
  %229 = load i8*, i8** %ydrow, align 8, !tbaa !1
  %230 = load i32, i32* %dx, align 4, !tbaa !5
  %shr274 = ashr i32 %230, 3
  %idx.ext275 = sext i32 %shr274 to i64
  %add.ptr276 = getelementptr inbounds i8, i8* %229, i64 %idx.ext275
  store i8* %add.ptr276, i8** %ydptr, align 8, !tbaa !1
  %231 = bitcast i8** %kdptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %231) #1
  %232 = load i8*, i8** %kdrow, align 8, !tbaa !1
  %233 = load i32, i32* %dx, align 4, !tbaa !5
  %shr277 = ashr i32 %233, 3
  %idx.ext278 = sext i32 %shr277 to i64
  %add.ptr279 = getelementptr inbounds i8, i8* %232, i64 %idx.ext278
  store i8* %add.ptr279, i8** %kdptr, align 8, !tbaa !1
  %234 = bitcast i8** %tptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %234) #1
  %235 = load i8*, i8** %trow, align 8, !tbaa !1
  store i8* %235, i8** %tptr, align 8, !tbaa !1
  %236 = bitcast i64 (i64, i64, i64)** %proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %236) #1
  %237 = load i32, i32* %rop, align 4, !tbaa !85
  %idxprom280 = zext i32 %237 to i64
  %arrayidx281 = getelementptr inbounds [256 x i64 (i64, i64, i64)*], [256 x i64 (i64, i64, i64)*]* @rop_proc_table, i32 0, i64 %idxprom280
  %238 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %arrayidx281, align 8, !tbaa !1
  store i64 (i64, i64, i64)* %238, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %239 = bitcast i8** %sptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %239) #1
  %240 = load i8*, i8** %srow.addr, align 8, !tbaa !1
  store i8* %240, i8** %sptr, align 8, !tbaa !1
  %241 = load i32, i32* %sskew, align 4, !tbaa !5
  %shr282 = ashr i32 %241, 1
  %242 = load i8*, i8** %sptr, align 8, !tbaa !1
  %idx.ext283 = sext i32 %shr282 to i64
  %add.ptr284 = getelementptr inbounds i8, i8* %242, i64 %idx.ext283
  store i8* %add.ptr284, i8** %sptr, align 8, !tbaa !1
  %243 = load i32, i32* %sx, align 4, !tbaa !5
  %shr285 = ashr i32 %243, 1
  %244 = load i8*, i8** %sptr, align 8, !tbaa !1
  %idx.ext286 = sext i32 %shr285 to i64
  %add.ptr287 = getelementptr inbounds i8, i8* %244, i64 %idx.ext286
  store i8* %add.ptr287, i8** %sptr, align 8, !tbaa !1
  %245 = load i32, i32* %tskew, align 4, !tbaa !5
  %shr288 = ashr i32 %245, 1
  %246 = load i8*, i8** %tptr, align 8, !tbaa !1
  %idx.ext289 = sext i32 %shr288 to i64
  %add.ptr290 = getelementptr inbounds i8, i8* %246, i64 %idx.ext289
  store i8* %add.ptr290, i8** %tptr, align 8, !tbaa !1
  %247 = load i32, i32* %tx, align 4, !tbaa !5
  %shr291 = ashr i32 %247, 1
  %248 = load i8*, i8** %tptr, align 8, !tbaa !1
  %idx.ext292 = sext i32 %shr291 to i64
  %add.ptr293 = getelementptr inbounds i8, i8* %248, i64 %idx.ext292
  store i8* %add.ptr293, i8** %tptr, align 8, !tbaa !1
  %249 = load i32, i32* %left, align 4, !tbaa !5
  %cmp294 = icmp slt i32 %249, 0
  br i1 %cmp294, label %if.then.296, label %if.end.301

if.then.296:                                      ; preds = %cond.end.253
  %250 = load i8, i8* %rmask262, align 1, !tbaa !85
  %conv297 = zext i8 %250 to i32
  %251 = load i8, i8* %lmask259, align 1, !tbaa !85
  %conv298 = zext i8 %251 to i32
  %and299 = and i32 %conv298, %conv297
  %conv300 = trunc i32 %and299 to i8
  store i8 %conv300, i8* %lmask259, align 1, !tbaa !85
  br label %if.end.301

if.end.301:                                       ; preds = %if.then.296, %cond.end.253
  call void @llvm.lifetime.start(i64 1, i8* %kdbyte) #1
  %252 = load i8*, i8** %kdptr, align 8, !tbaa !1
  %253 = load i8, i8* %252, align 1, !tbaa !85
  store i8 %253, i8* %kdbyte, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %cdbyte) #1
  %254 = load i8*, i8** %cdptr, align 8, !tbaa !1
  %255 = load i8, i8* %254, align 1, !tbaa !85
  store i8 %255, i8* %cdbyte, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %mdbyte) #1
  %256 = load i8*, i8** %mdptr, align 8, !tbaa !1
  %257 = load i8, i8* %256, align 1, !tbaa !85
  store i8 %257, i8* %mdbyte, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %ydbyte) #1
  %258 = load i8*, i8** %ydptr, align 8, !tbaa !1
  %259 = load i8, i8* %258, align 1, !tbaa !85
  store i8 %259, i8* %ydbyte, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %cresult) #1
  call void @llvm.lifetime.start(i64 1, i8* %mresult) #1
  call void @llvm.lifetime.start(i64 1, i8* %yresult) #1
  call void @llvm.lifetime.start(i64 1, i8* %kresult) #1
  %260 = bitcast i32* %scol to i8*
  call void @llvm.lifetime.start(i64 4, i8* %260) #1
  store i32 0, i32* %scol, align 4, !tbaa !5
  %261 = bitcast i32* %tcol to i8*
  call void @llvm.lifetime.start(i64 4, i8* %261) #1
  store i32 0, i32* %tcol, align 4, !tbaa !5
  %262 = load i32, i32* %sskew, align 4, !tbaa !5
  %and302 = and i32 %262, 1
  %cmp303 = icmp eq i32 %and302, 0
  br i1 %cmp303, label %if.then.305, label %if.else.346

if.then.305:                                      ; preds = %if.end.301
  %263 = load i32, i32* %sskew, align 4, !tbaa !5
  %cmp306 = icmp sge i32 %263, 0
  br i1 %cmp306, label %if.then.308, label %if.end.313

if.then.308:                                      ; preds = %if.then.305
  %264 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx309 = getelementptr inbounds i8, i8* %264, i64 0
  %265 = load i8, i8* %arrayidx309, align 1, !tbaa !85
  %idxprom310 = zext i8 %265 to i64
  %arrayidx311 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom310
  %266 = load i32, i32* %arrayidx311, align 4, !tbaa !5
  %shl312 = shl i32 %266, 6
  store i32 %shl312, i32* %scol, align 4, !tbaa !5
  br label %if.end.313

if.end.313:                                       ; preds = %if.then.308, %if.then.305
  %267 = load i32, i32* %sskew, align 4, !tbaa !5
  %cmp314 = icmp sge i32 %267, -2
  br i1 %cmp314, label %land.lhs.true.316, label %if.end.325

land.lhs.true.316:                                ; preds = %if.end.313
  %268 = load i32, i32* %left, align 4, !tbaa !5
  %cmp317 = icmp sgt i32 %268, -6
  br i1 %cmp317, label %if.then.319, label %if.end.325

if.then.319:                                      ; preds = %land.lhs.true.316
  %269 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx320 = getelementptr inbounds i8, i8* %269, i64 1
  %270 = load i8, i8* %arrayidx320, align 1, !tbaa !85
  %idxprom321 = zext i8 %270 to i64
  %arrayidx322 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom321
  %271 = load i32, i32* %arrayidx322, align 4, !tbaa !5
  %shl323 = shl i32 %271, 4
  %272 = load i32, i32* %scol, align 4, !tbaa !5
  %or324 = or i32 %272, %shl323
  store i32 %or324, i32* %scol, align 4, !tbaa !5
  br label %if.end.325

if.end.325:                                       ; preds = %if.then.319, %land.lhs.true.316, %if.end.313
  %273 = load i32, i32* %sskew, align 4, !tbaa !5
  %cmp326 = icmp sge i32 %273, -4
  br i1 %cmp326, label %land.lhs.true.328, label %if.end.337

land.lhs.true.328:                                ; preds = %if.end.325
  %274 = load i32, i32* %left, align 4, !tbaa !5
  %cmp329 = icmp sgt i32 %274, -4
  br i1 %cmp329, label %if.then.331, label %if.end.337

if.then.331:                                      ; preds = %land.lhs.true.328
  %275 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx332 = getelementptr inbounds i8, i8* %275, i64 2
  %276 = load i8, i8* %arrayidx332, align 1, !tbaa !85
  %idxprom333 = zext i8 %276 to i64
  %arrayidx334 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom333
  %277 = load i32, i32* %arrayidx334, align 4, !tbaa !5
  %shl335 = shl i32 %277, 2
  %278 = load i32, i32* %scol, align 4, !tbaa !5
  %or336 = or i32 %278, %shl335
  store i32 %or336, i32* %scol, align 4, !tbaa !5
  br label %if.end.337

if.end.337:                                       ; preds = %if.then.331, %land.lhs.true.328, %if.end.325
  %279 = load i32, i32* %left, align 4, !tbaa !5
  %cmp338 = icmp sgt i32 %279, -2
  br i1 %cmp338, label %if.then.340, label %if.end.345

if.then.340:                                      ; preds = %if.end.337
  %280 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx341 = getelementptr inbounds i8, i8* %280, i64 3
  %281 = load i8, i8* %arrayidx341, align 1, !tbaa !85
  %idxprom342 = zext i8 %281 to i64
  %arrayidx343 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom342
  %282 = load i32, i32* %arrayidx343, align 4, !tbaa !5
  %283 = load i32, i32* %scol, align 4, !tbaa !5
  %or344 = or i32 %283, %282
  store i32 %or344, i32* %scol, align 4, !tbaa !5
  br label %if.end.345

if.end.345:                                       ; preds = %if.then.340, %if.end.337
  br label %if.end.404

if.else.346:                                      ; preds = %if.end.301
  %284 = load i32, i32* %sskew, align 4, !tbaa !5
  %cmp347 = icmp sge i32 %284, 0
  br i1 %cmp347, label %if.then.349, label %if.end.356

if.then.349:                                      ; preds = %if.else.346
  %285 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx350 = getelementptr inbounds i8, i8* %285, i64 0
  %286 = load i8, i8* %arrayidx350, align 1, !tbaa !85
  %conv351 = zext i8 %286 to i32
  %and352 = and i32 %conv351, 15
  %idxprom353 = sext i32 %and352 to i64
  %arrayidx354 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom353
  %287 = load i32, i32* %arrayidx354, align 4, !tbaa !5
  %shl355 = shl i32 %287, 7
  store i32 %shl355, i32* %scol, align 4, !tbaa !5
  br label %if.end.356

if.end.356:                                       ; preds = %if.then.349, %if.else.346
  %288 = load i32, i32* %sskew, align 4, !tbaa !5
  %cmp357 = icmp sge i32 %288, -2
  br i1 %cmp357, label %land.lhs.true.359, label %if.end.368

land.lhs.true.359:                                ; preds = %if.end.356
  %289 = load i32, i32* %left, align 4, !tbaa !5
  %cmp360 = icmp sgt i32 %289, -7
  br i1 %cmp360, label %if.then.362, label %if.end.368

if.then.362:                                      ; preds = %land.lhs.true.359
  %290 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx363 = getelementptr inbounds i8, i8* %290, i64 1
  %291 = load i8, i8* %arrayidx363, align 1, !tbaa !85
  %idxprom364 = zext i8 %291 to i64
  %arrayidx365 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom364
  %292 = load i32, i32* %arrayidx365, align 4, !tbaa !5
  %shl366 = shl i32 %292, 5
  %293 = load i32, i32* %scol, align 4, !tbaa !5
  %or367 = or i32 %293, %shl366
  store i32 %or367, i32* %scol, align 4, !tbaa !5
  br label %if.end.368

if.end.368:                                       ; preds = %if.then.362, %land.lhs.true.359, %if.end.356
  %294 = load i32, i32* %sskew, align 4, !tbaa !5
  %cmp369 = icmp sge i32 %294, -4
  br i1 %cmp369, label %land.lhs.true.371, label %if.end.380

land.lhs.true.371:                                ; preds = %if.end.368
  %295 = load i32, i32* %left, align 4, !tbaa !5
  %cmp372 = icmp sgt i32 %295, -5
  br i1 %cmp372, label %if.then.374, label %if.end.380

if.then.374:                                      ; preds = %land.lhs.true.371
  %296 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx375 = getelementptr inbounds i8, i8* %296, i64 2
  %297 = load i8, i8* %arrayidx375, align 1, !tbaa !85
  %idxprom376 = zext i8 %297 to i64
  %arrayidx377 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom376
  %298 = load i32, i32* %arrayidx377, align 4, !tbaa !5
  %shl378 = shl i32 %298, 3
  %299 = load i32, i32* %scol, align 4, !tbaa !5
  %or379 = or i32 %299, %shl378
  store i32 %or379, i32* %scol, align 4, !tbaa !5
  br label %if.end.380

if.end.380:                                       ; preds = %if.then.374, %land.lhs.true.371, %if.end.368
  %300 = load i32, i32* %sskew, align 4, !tbaa !5
  %cmp381 = icmp sge i32 %300, -6
  br i1 %cmp381, label %land.lhs.true.383, label %if.end.392

land.lhs.true.383:                                ; preds = %if.end.380
  %301 = load i32, i32* %left, align 4, !tbaa !5
  %cmp384 = icmp sgt i32 %301, -3
  br i1 %cmp384, label %if.then.386, label %if.end.392

if.then.386:                                      ; preds = %land.lhs.true.383
  %302 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx387 = getelementptr inbounds i8, i8* %302, i64 3
  %303 = load i8, i8* %arrayidx387, align 1, !tbaa !85
  %idxprom388 = zext i8 %303 to i64
  %arrayidx389 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom388
  %304 = load i32, i32* %arrayidx389, align 4, !tbaa !5
  %shl390 = shl i32 %304, 1
  %305 = load i32, i32* %scol, align 4, !tbaa !5
  %or391 = or i32 %305, %shl390
  store i32 %or391, i32* %scol, align 4, !tbaa !5
  br label %if.end.392

if.end.392:                                       ; preds = %if.then.386, %land.lhs.true.383, %if.end.380
  %306 = load i32, i32* %left, align 4, !tbaa !5
  %cmp393 = icmp sgt i32 %306, -1
  br i1 %cmp393, label %if.then.395, label %if.end.403

if.then.395:                                      ; preds = %if.end.392
  %307 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx396 = getelementptr inbounds i8, i8* %307, i64 4
  %308 = load i8, i8* %arrayidx396, align 1, !tbaa !85
  %conv397 = zext i8 %308 to i32
  %and398 = and i32 %conv397, 240
  %idxprom399 = sext i32 %and398 to i64
  %arrayidx400 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom399
  %309 = load i32, i32* %arrayidx400, align 4, !tbaa !5
  %shr401 = lshr i32 %309, 1
  %310 = load i32, i32* %scol, align 4, !tbaa !5
  %or402 = or i32 %310, %shr401
  store i32 %or402, i32* %scol, align 4, !tbaa !5
  br label %if.end.403

if.end.403:                                       ; preds = %if.then.395, %if.end.392
  br label %if.end.404

if.end.404:                                       ; preds = %if.end.403, %if.end.345
  %311 = load i32, i32* %tskew, align 4, !tbaa !5
  %and405 = and i32 %311, 1
  %cmp406 = icmp eq i32 %and405, 0
  br i1 %cmp406, label %if.then.408, label %if.else.449

if.then.408:                                      ; preds = %if.end.404
  %312 = load i32, i32* %tskew, align 4, !tbaa !5
  %cmp409 = icmp sge i32 %312, 0
  br i1 %cmp409, label %if.then.411, label %if.end.416

if.then.411:                                      ; preds = %if.then.408
  %313 = load i8*, i8** %tptr, align 8, !tbaa !1
  %arrayidx412 = getelementptr inbounds i8, i8* %313, i64 0
  %314 = load i8, i8* %arrayidx412, align 1, !tbaa !85
  %idxprom413 = zext i8 %314 to i64
  %arrayidx414 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom413
  %315 = load i32, i32* %arrayidx414, align 4, !tbaa !5
  %shl415 = shl i32 %315, 6
  store i32 %shl415, i32* %tcol, align 4, !tbaa !5
  br label %if.end.416

if.end.416:                                       ; preds = %if.then.411, %if.then.408
  %316 = load i32, i32* %tskew, align 4, !tbaa !5
  %cmp417 = icmp sge i32 %316, -2
  br i1 %cmp417, label %land.lhs.true.419, label %if.end.428

land.lhs.true.419:                                ; preds = %if.end.416
  %317 = load i32, i32* %left, align 4, !tbaa !5
  %cmp420 = icmp sgt i32 %317, -6
  br i1 %cmp420, label %if.then.422, label %if.end.428

if.then.422:                                      ; preds = %land.lhs.true.419
  %318 = load i8*, i8** %tptr, align 8, !tbaa !1
  %arrayidx423 = getelementptr inbounds i8, i8* %318, i64 1
  %319 = load i8, i8* %arrayidx423, align 1, !tbaa !85
  %idxprom424 = zext i8 %319 to i64
  %arrayidx425 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom424
  %320 = load i32, i32* %arrayidx425, align 4, !tbaa !5
  %shl426 = shl i32 %320, 4
  %321 = load i32, i32* %tcol, align 4, !tbaa !5
  %or427 = or i32 %321, %shl426
  store i32 %or427, i32* %tcol, align 4, !tbaa !5
  br label %if.end.428

if.end.428:                                       ; preds = %if.then.422, %land.lhs.true.419, %if.end.416
  %322 = load i32, i32* %tskew, align 4, !tbaa !5
  %cmp429 = icmp sge i32 %322, -4
  br i1 %cmp429, label %land.lhs.true.431, label %if.end.440

land.lhs.true.431:                                ; preds = %if.end.428
  %323 = load i32, i32* %left, align 4, !tbaa !5
  %cmp432 = icmp sgt i32 %323, -4
  br i1 %cmp432, label %if.then.434, label %if.end.440

if.then.434:                                      ; preds = %land.lhs.true.431
  %324 = load i8*, i8** %tptr, align 8, !tbaa !1
  %arrayidx435 = getelementptr inbounds i8, i8* %324, i64 2
  %325 = load i8, i8* %arrayidx435, align 1, !tbaa !85
  %idxprom436 = zext i8 %325 to i64
  %arrayidx437 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom436
  %326 = load i32, i32* %arrayidx437, align 4, !tbaa !5
  %shl438 = shl i32 %326, 2
  %327 = load i32, i32* %tcol, align 4, !tbaa !5
  %or439 = or i32 %327, %shl438
  store i32 %or439, i32* %tcol, align 4, !tbaa !5
  br label %if.end.440

if.end.440:                                       ; preds = %if.then.434, %land.lhs.true.431, %if.end.428
  %328 = load i32, i32* %left, align 4, !tbaa !5
  %cmp441 = icmp sgt i32 %328, -2
  br i1 %cmp441, label %if.then.443, label %if.end.448

if.then.443:                                      ; preds = %if.end.440
  %329 = load i8*, i8** %tptr, align 8, !tbaa !1
  %arrayidx444 = getelementptr inbounds i8, i8* %329, i64 3
  %330 = load i8, i8* %arrayidx444, align 1, !tbaa !85
  %idxprom445 = zext i8 %330 to i64
  %arrayidx446 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom445
  %331 = load i32, i32* %arrayidx446, align 4, !tbaa !5
  %332 = load i32, i32* %tcol, align 4, !tbaa !5
  %or447 = or i32 %332, %331
  store i32 %or447, i32* %tcol, align 4, !tbaa !5
  br label %if.end.448

if.end.448:                                       ; preds = %if.then.443, %if.end.440
  br label %if.end.507

if.else.449:                                      ; preds = %if.end.404
  %333 = load i32, i32* %tskew, align 4, !tbaa !5
  %cmp450 = icmp sge i32 %333, 0
  br i1 %cmp450, label %if.then.452, label %if.end.459

if.then.452:                                      ; preds = %if.else.449
  %334 = load i8*, i8** %tptr, align 8, !tbaa !1
  %arrayidx453 = getelementptr inbounds i8, i8* %334, i64 0
  %335 = load i8, i8* %arrayidx453, align 1, !tbaa !85
  %conv454 = zext i8 %335 to i32
  %and455 = and i32 %conv454, 15
  %idxprom456 = sext i32 %and455 to i64
  %arrayidx457 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom456
  %336 = load i32, i32* %arrayidx457, align 4, !tbaa !5
  %shl458 = shl i32 %336, 7
  store i32 %shl458, i32* %tcol, align 4, !tbaa !5
  br label %if.end.459

if.end.459:                                       ; preds = %if.then.452, %if.else.449
  %337 = load i32, i32* %tskew, align 4, !tbaa !5
  %cmp460 = icmp sge i32 %337, -2
  br i1 %cmp460, label %land.lhs.true.462, label %if.end.471

land.lhs.true.462:                                ; preds = %if.end.459
  %338 = load i32, i32* %left, align 4, !tbaa !5
  %cmp463 = icmp sgt i32 %338, -7
  br i1 %cmp463, label %if.then.465, label %if.end.471

if.then.465:                                      ; preds = %land.lhs.true.462
  %339 = load i8*, i8** %tptr, align 8, !tbaa !1
  %arrayidx466 = getelementptr inbounds i8, i8* %339, i64 1
  %340 = load i8, i8* %arrayidx466, align 1, !tbaa !85
  %idxprom467 = zext i8 %340 to i64
  %arrayidx468 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom467
  %341 = load i32, i32* %arrayidx468, align 4, !tbaa !5
  %shl469 = shl i32 %341, 5
  %342 = load i32, i32* %tcol, align 4, !tbaa !5
  %or470 = or i32 %342, %shl469
  store i32 %or470, i32* %tcol, align 4, !tbaa !5
  br label %if.end.471

if.end.471:                                       ; preds = %if.then.465, %land.lhs.true.462, %if.end.459
  %343 = load i32, i32* %tskew, align 4, !tbaa !5
  %cmp472 = icmp sge i32 %343, -4
  br i1 %cmp472, label %land.lhs.true.474, label %if.end.483

land.lhs.true.474:                                ; preds = %if.end.471
  %344 = load i32, i32* %left, align 4, !tbaa !5
  %cmp475 = icmp sgt i32 %344, -5
  br i1 %cmp475, label %if.then.477, label %if.end.483

if.then.477:                                      ; preds = %land.lhs.true.474
  %345 = load i8*, i8** %tptr, align 8, !tbaa !1
  %arrayidx478 = getelementptr inbounds i8, i8* %345, i64 2
  %346 = load i8, i8* %arrayidx478, align 1, !tbaa !85
  %idxprom479 = zext i8 %346 to i64
  %arrayidx480 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom479
  %347 = load i32, i32* %arrayidx480, align 4, !tbaa !5
  %shl481 = shl i32 %347, 3
  %348 = load i32, i32* %tcol, align 4, !tbaa !5
  %or482 = or i32 %348, %shl481
  store i32 %or482, i32* %tcol, align 4, !tbaa !5
  br label %if.end.483

if.end.483:                                       ; preds = %if.then.477, %land.lhs.true.474, %if.end.471
  %349 = load i32, i32* %tskew, align 4, !tbaa !5
  %cmp484 = icmp sge i32 %349, -6
  br i1 %cmp484, label %land.lhs.true.486, label %if.end.495

land.lhs.true.486:                                ; preds = %if.end.483
  %350 = load i32, i32* %left, align 4, !tbaa !5
  %cmp487 = icmp sgt i32 %350, -3
  br i1 %cmp487, label %if.then.489, label %if.end.495

if.then.489:                                      ; preds = %land.lhs.true.486
  %351 = load i8*, i8** %tptr, align 8, !tbaa !1
  %arrayidx490 = getelementptr inbounds i8, i8* %351, i64 3
  %352 = load i8, i8* %arrayidx490, align 1, !tbaa !85
  %idxprom491 = zext i8 %352 to i64
  %arrayidx492 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom491
  %353 = load i32, i32* %arrayidx492, align 4, !tbaa !5
  %shl493 = shl i32 %353, 1
  %354 = load i32, i32* %tcol, align 4, !tbaa !5
  %or494 = or i32 %354, %shl493
  store i32 %or494, i32* %tcol, align 4, !tbaa !5
  br label %if.end.495

if.end.495:                                       ; preds = %if.then.489, %land.lhs.true.486, %if.end.483
  %355 = load i32, i32* %left, align 4, !tbaa !5
  %cmp496 = icmp sgt i32 %355, -1
  br i1 %cmp496, label %if.then.498, label %if.end.506

if.then.498:                                      ; preds = %if.end.495
  %356 = load i8*, i8** %tptr, align 8, !tbaa !1
  %arrayidx499 = getelementptr inbounds i8, i8* %356, i64 4
  %357 = load i8, i8* %arrayidx499, align 1, !tbaa !85
  %conv500 = zext i8 %357 to i32
  %and501 = and i32 %conv500, 240
  %idxprom502 = sext i32 %and501 to i64
  %arrayidx503 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom502
  %358 = load i32, i32* %arrayidx503, align 4, !tbaa !5
  %shr504 = lshr i32 %358, 1
  %359 = load i32, i32* %tcol, align 4, !tbaa !5
  %or505 = or i32 %359, %shr504
  store i32 %or505, i32* %tcol, align 4, !tbaa !5
  br label %if.end.506

if.end.506:                                       ; preds = %if.then.498, %if.end.495
  br label %if.end.507

if.end.507:                                       ; preds = %if.end.506, %if.end.448
  %360 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %361 = load i8, i8* %cdbyte, align 1, !tbaa !85
  %conv508 = zext i8 %361 to i32
  %362 = load i8, i8* %kdbyte, align 1, !tbaa !85
  %conv509 = zext i8 %362 to i32
  %or510 = or i32 %conv508, %conv509
  %conv511 = sext i32 %or510 to i64
  %363 = load i32, i32* %scol, align 4, !tbaa !5
  %364 = load i32, i32* %scol, align 4, !tbaa !5
  %shr512 = lshr i32 %364, 24
  %or513 = or i32 %363, %shr512
  %conv514 = zext i32 %or513 to i64
  %365 = load i32, i32* %tcol, align 4, !tbaa !5
  %366 = load i32, i32* %tcol, align 4, !tbaa !5
  %shr515 = lshr i32 %366, 24
  %or516 = or i32 %365, %shr515
  %conv517 = zext i32 %or516 to i64
  %call = call i64 %360(i64 %conv511, i64 %conv514, i64 %conv517) #4
  %conv518 = trunc i64 %call to i8
  store i8 %conv518, i8* %cresult, align 1, !tbaa !85
  %367 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %368 = load i8, i8* %mdbyte, align 1, !tbaa !85
  %conv519 = zext i8 %368 to i32
  %369 = load i8, i8* %kdbyte, align 1, !tbaa !85
  %conv520 = zext i8 %369 to i32
  %or521 = or i32 %conv519, %conv520
  %conv522 = sext i32 %or521 to i64
  %370 = load i32, i32* %scol, align 4, !tbaa !5
  %371 = load i32, i32* %scol, align 4, !tbaa !5
  %shr523 = lshr i32 %371, 16
  %or524 = or i32 %370, %shr523
  %conv525 = zext i32 %or524 to i64
  %372 = load i32, i32* %tcol, align 4, !tbaa !5
  %373 = load i32, i32* %tcol, align 4, !tbaa !5
  %shr526 = lshr i32 %373, 16
  %or527 = or i32 %372, %shr526
  %conv528 = zext i32 %or527 to i64
  %call529 = call i64 %367(i64 %conv522, i64 %conv525, i64 %conv528) #4
  %conv530 = trunc i64 %call529 to i8
  store i8 %conv530, i8* %mresult, align 1, !tbaa !85
  %374 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %375 = load i8, i8* %ydbyte, align 1, !tbaa !85
  %conv531 = zext i8 %375 to i32
  %376 = load i8, i8* %kdbyte, align 1, !tbaa !85
  %conv532 = zext i8 %376 to i32
  %or533 = or i32 %conv531, %conv532
  %conv534 = sext i32 %or533 to i64
  %377 = load i32, i32* %scol, align 4, !tbaa !5
  %378 = load i32, i32* %scol, align 4, !tbaa !5
  %shr535 = lshr i32 %378, 8
  %or536 = or i32 %377, %shr535
  %conv537 = zext i32 %or536 to i64
  %379 = load i32, i32* %tcol, align 4, !tbaa !5
  %380 = load i32, i32* %tcol, align 4, !tbaa !5
  %shr538 = lshr i32 %380, 8
  %or539 = or i32 %379, %shr538
  %conv540 = zext i32 %or539 to i64
  %call541 = call i64 %374(i64 %conv534, i64 %conv537, i64 %conv540) #4
  %conv542 = trunc i64 %call541 to i8
  store i8 %conv542, i8* %yresult, align 1, !tbaa !85
  %381 = load i8, i8* %cresult, align 1, !tbaa !85
  %conv543 = zext i8 %381 to i32
  %382 = load i8, i8* %mresult, align 1, !tbaa !85
  %conv544 = zext i8 %382 to i32
  %and545 = and i32 %conv543, %conv544
  %383 = load i8, i8* %yresult, align 1, !tbaa !85
  %conv546 = zext i8 %383 to i32
  %and547 = and i32 %and545, %conv546
  %conv548 = trunc i32 %and547 to i8
  store i8 %conv548, i8* %kresult, align 1, !tbaa !85
  %384 = load i8, i8* %kresult, align 1, !tbaa !85
  %conv549 = zext i8 %384 to i32
  %neg550 = xor i32 %conv549, -1
  %385 = load i8, i8* %cresult, align 1, !tbaa !85
  %conv551 = zext i8 %385 to i32
  %and552 = and i32 %conv551, %neg550
  %conv553 = trunc i32 %and552 to i8
  store i8 %conv553, i8* %cresult, align 1, !tbaa !85
  %386 = load i8, i8* %kresult, align 1, !tbaa !85
  %conv554 = zext i8 %386 to i32
  %neg555 = xor i32 %conv554, -1
  %387 = load i8, i8* %mresult, align 1, !tbaa !85
  %conv556 = zext i8 %387 to i32
  %and557 = and i32 %conv556, %neg555
  %conv558 = trunc i32 %and557 to i8
  store i8 %conv558, i8* %mresult, align 1, !tbaa !85
  %388 = load i8, i8* %kresult, align 1, !tbaa !85
  %conv559 = zext i8 %388 to i32
  %neg560 = xor i32 %conv559, -1
  %389 = load i8, i8* %yresult, align 1, !tbaa !85
  %conv561 = zext i8 %389 to i32
  %and562 = and i32 %conv561, %neg560
  %conv563 = trunc i32 %and562 to i8
  store i8 %conv563, i8* %yresult, align 1, !tbaa !85
  %390 = load i8, i8* %cresult, align 1, !tbaa !85
  %conv564 = zext i8 %390 to i32
  %391 = load i8, i8* %lmask259, align 1, !tbaa !85
  %conv565 = zext i8 %391 to i32
  %and566 = and i32 %conv564, %conv565
  %392 = load i8, i8* %cdbyte, align 1, !tbaa !85
  %conv567 = zext i8 %392 to i32
  %393 = load i8, i8* %lmask259, align 1, !tbaa !85
  %conv568 = zext i8 %393 to i32
  %neg569 = xor i32 %conv568, -1
  %and570 = and i32 %conv567, %neg569
  %or571 = or i32 %and566, %and570
  %conv572 = trunc i32 %or571 to i8
  %394 = load i8*, i8** %cdptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %394, i32 1
  store i8* %incdec.ptr, i8** %cdptr, align 8, !tbaa !1
  store i8 %conv572, i8* %394, align 1, !tbaa !85
  %395 = load i8, i8* %mresult, align 1, !tbaa !85
  %conv573 = zext i8 %395 to i32
  %396 = load i8, i8* %lmask259, align 1, !tbaa !85
  %conv574 = zext i8 %396 to i32
  %and575 = and i32 %conv573, %conv574
  %397 = load i8, i8* %mdbyte, align 1, !tbaa !85
  %conv576 = zext i8 %397 to i32
  %398 = load i8, i8* %lmask259, align 1, !tbaa !85
  %conv577 = zext i8 %398 to i32
  %neg578 = xor i32 %conv577, -1
  %and579 = and i32 %conv576, %neg578
  %or580 = or i32 %and575, %and579
  %conv581 = trunc i32 %or580 to i8
  %399 = load i8*, i8** %mdptr, align 8, !tbaa !1
  %incdec.ptr582 = getelementptr inbounds i8, i8* %399, i32 1
  store i8* %incdec.ptr582, i8** %mdptr, align 8, !tbaa !1
  store i8 %conv581, i8* %399, align 1, !tbaa !85
  %400 = load i8, i8* %yresult, align 1, !tbaa !85
  %conv583 = zext i8 %400 to i32
  %401 = load i8, i8* %lmask259, align 1, !tbaa !85
  %conv584 = zext i8 %401 to i32
  %and585 = and i32 %conv583, %conv584
  %402 = load i8, i8* %ydbyte, align 1, !tbaa !85
  %conv586 = zext i8 %402 to i32
  %403 = load i8, i8* %lmask259, align 1, !tbaa !85
  %conv587 = zext i8 %403 to i32
  %neg588 = xor i32 %conv587, -1
  %and589 = and i32 %conv586, %neg588
  %or590 = or i32 %and585, %and589
  %conv591 = trunc i32 %or590 to i8
  %404 = load i8*, i8** %ydptr, align 8, !tbaa !1
  %incdec.ptr592 = getelementptr inbounds i8, i8* %404, i32 1
  store i8* %incdec.ptr592, i8** %ydptr, align 8, !tbaa !1
  store i8 %conv591, i8* %404, align 1, !tbaa !85
  %405 = load i8, i8* %kresult, align 1, !tbaa !85
  %conv593 = zext i8 %405 to i32
  %406 = load i8, i8* %lmask259, align 1, !tbaa !85
  %conv594 = zext i8 %406 to i32
  %and595 = and i32 %conv593, %conv594
  %407 = load i8, i8* %kdbyte, align 1, !tbaa !85
  %conv596 = zext i8 %407 to i32
  %408 = load i8, i8* %lmask259, align 1, !tbaa !85
  %conv597 = zext i8 %408 to i32
  %neg598 = xor i32 %conv597, -1
  %and599 = and i32 %conv596, %neg598
  %or600 = or i32 %and595, %and599
  %conv601 = trunc i32 %or600 to i8
  %409 = load i8*, i8** %kdptr, align 8, !tbaa !1
  %incdec.ptr602 = getelementptr inbounds i8, i8* %409, i32 1
  store i8* %incdec.ptr602, i8** %kdptr, align 8, !tbaa !1
  store i8 %conv601, i8* %409, align 1, !tbaa !85
  %410 = bitcast i32* %tcol to i8*
  call void @llvm.lifetime.end(i64 4, i8* %410) #1
  %411 = bitcast i32* %scol to i8*
  call void @llvm.lifetime.end(i64 4, i8* %411) #1
  call void @llvm.lifetime.end(i64 1, i8* %kresult) #1
  call void @llvm.lifetime.end(i64 1, i8* %yresult) #1
  call void @llvm.lifetime.end(i64 1, i8* %mresult) #1
  call void @llvm.lifetime.end(i64 1, i8* %cresult) #1
  call void @llvm.lifetime.end(i64 1, i8* %ydbyte) #1
  call void @llvm.lifetime.end(i64 1, i8* %mdbyte) #1
  call void @llvm.lifetime.end(i64 1, i8* %cdbyte) #1
  call void @llvm.lifetime.end(i64 1, i8* %kdbyte) #1
  %412 = load i32, i32* %left, align 4, !tbaa !5
  %cmp603 = icmp sle i32 %412, 0
  br i1 %cmp603, label %if.then.605, label %if.end.606

if.then.605:                                      ; preds = %if.end.507
  store i32 14, i32* %cleanup.dest.slot
  br label %cleanup

if.end.606:                                       ; preds = %if.end.507
  %413 = load i8*, i8** %sptr, align 8, !tbaa !1
  %add.ptr607 = getelementptr inbounds i8, i8* %413, i64 4
  store i8* %add.ptr607, i8** %sptr, align 8, !tbaa !1
  %414 = load i8*, i8** %tptr, align 8, !tbaa !1
  %add.ptr608 = getelementptr inbounds i8, i8* %414, i64 4
  store i8* %add.ptr608, i8** %tptr, align 8, !tbaa !1
  %415 = load i32, i32* %left, align 4, !tbaa !5
  %sub609 = sub nsw i32 %415, 8
  store i32 %sub609, i32* %left, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end.737, %if.end.606
  %416 = load i32, i32* %left, align 4, !tbaa !5
  %cmp610 = icmp sgt i32 %416, 0
  br i1 %cmp610, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start(i64 1, i8* %kdbyte612) #1
  %417 = load i8*, i8** %kdptr, align 8, !tbaa !1
  %418 = load i8, i8* %417, align 1, !tbaa !85
  store i8 %418, i8* %kdbyte612, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %cdbyte613) #1
  %419 = load i8*, i8** %cdptr, align 8, !tbaa !1
  %420 = load i8, i8* %419, align 1, !tbaa !85
  %conv614 = zext i8 %420 to i32
  %421 = load i8, i8* %kdbyte612, align 1, !tbaa !85
  %conv615 = zext i8 %421 to i32
  %or616 = or i32 %conv614, %conv615
  %conv617 = trunc i32 %or616 to i8
  store i8 %conv617, i8* %cdbyte613, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %mdbyte618) #1
  %422 = load i8*, i8** %mdptr, align 8, !tbaa !1
  %423 = load i8, i8* %422, align 1, !tbaa !85
  %conv619 = zext i8 %423 to i32
  %424 = load i8, i8* %kdbyte612, align 1, !tbaa !85
  %conv620 = zext i8 %424 to i32
  %or621 = or i32 %conv619, %conv620
  %conv622 = trunc i32 %or621 to i8
  store i8 %conv622, i8* %mdbyte618, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %ydbyte623) #1
  %425 = load i8*, i8** %ydptr, align 8, !tbaa !1
  %426 = load i8, i8* %425, align 1, !tbaa !85
  %conv624 = zext i8 %426 to i32
  %427 = load i8, i8* %kdbyte612, align 1, !tbaa !85
  %conv625 = zext i8 %427 to i32
  %or626 = or i32 %conv624, %conv625
  %conv627 = trunc i32 %or626 to i8
  store i8 %conv627, i8* %ydbyte623, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %cresult628) #1
  call void @llvm.lifetime.start(i64 1, i8* %mresult629) #1
  call void @llvm.lifetime.start(i64 1, i8* %yresult630) #1
  call void @llvm.lifetime.start(i64 1, i8* %kresult631) #1
  %428 = bitcast i32* %scol632 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %428) #1
  %429 = bitcast i32* %tcol633 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %429) #1
  %430 = load i32, i32* %sskew, align 4, !tbaa !5
  %and634 = and i32 %430, 1
  %cmp635 = icmp eq i32 %and634, 0
  br i1 %cmp635, label %if.then.637, label %if.else.656

if.then.637:                                      ; preds = %while.body
  %431 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx638 = getelementptr inbounds i8, i8* %431, i64 0
  %432 = load i8, i8* %arrayidx638, align 1, !tbaa !85
  %idxprom639 = zext i8 %432 to i64
  %arrayidx640 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom639
  %433 = load i32, i32* %arrayidx640, align 4, !tbaa !5
  %shl641 = shl i32 %433, 6
  store i32 %shl641, i32* %scol632, align 4, !tbaa !5
  %434 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx642 = getelementptr inbounds i8, i8* %434, i64 1
  %435 = load i8, i8* %arrayidx642, align 1, !tbaa !85
  %idxprom643 = zext i8 %435 to i64
  %arrayidx644 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom643
  %436 = load i32, i32* %arrayidx644, align 4, !tbaa !5
  %shl645 = shl i32 %436, 4
  %437 = load i32, i32* %scol632, align 4, !tbaa !5
  %or646 = or i32 %437, %shl645
  store i32 %or646, i32* %scol632, align 4, !tbaa !5
  %438 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx647 = getelementptr inbounds i8, i8* %438, i64 2
  %439 = load i8, i8* %arrayidx647, align 1, !tbaa !85
  %idxprom648 = zext i8 %439 to i64
  %arrayidx649 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom648
  %440 = load i32, i32* %arrayidx649, align 4, !tbaa !5
  %shl650 = shl i32 %440, 2
  %441 = load i32, i32* %scol632, align 4, !tbaa !5
  %or651 = or i32 %441, %shl650
  store i32 %or651, i32* %scol632, align 4, !tbaa !5
  %442 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx652 = getelementptr inbounds i8, i8* %442, i64 3
  %443 = load i8, i8* %arrayidx652, align 1, !tbaa !85
  %idxprom653 = zext i8 %443 to i64
  %arrayidx654 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom653
  %444 = load i32, i32* %arrayidx654, align 4, !tbaa !5
  %445 = load i32, i32* %scol632, align 4, !tbaa !5
  %or655 = or i32 %445, %444
  store i32 %or655, i32* %scol632, align 4, !tbaa !5
  br label %if.end.685

if.else.656:                                      ; preds = %while.body
  %446 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx657 = getelementptr inbounds i8, i8* %446, i64 0
  %447 = load i8, i8* %arrayidx657, align 1, !tbaa !85
  %conv658 = zext i8 %447 to i32
  %and659 = and i32 %conv658, 15
  %idxprom660 = sext i32 %and659 to i64
  %arrayidx661 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom660
  %448 = load i32, i32* %arrayidx661, align 4, !tbaa !5
  %shl662 = shl i32 %448, 7
  store i32 %shl662, i32* %scol632, align 4, !tbaa !5
  %449 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx663 = getelementptr inbounds i8, i8* %449, i64 1
  %450 = load i8, i8* %arrayidx663, align 1, !tbaa !85
  %idxprom664 = zext i8 %450 to i64
  %arrayidx665 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom664
  %451 = load i32, i32* %arrayidx665, align 4, !tbaa !5
  %shl666 = shl i32 %451, 5
  %452 = load i32, i32* %scol632, align 4, !tbaa !5
  %or667 = or i32 %452, %shl666
  store i32 %or667, i32* %scol632, align 4, !tbaa !5
  %453 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx668 = getelementptr inbounds i8, i8* %453, i64 2
  %454 = load i8, i8* %arrayidx668, align 1, !tbaa !85
  %idxprom669 = zext i8 %454 to i64
  %arrayidx670 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom669
  %455 = load i32, i32* %arrayidx670, align 4, !tbaa !5
  %shl671 = shl i32 %455, 3
  %456 = load i32, i32* %scol632, align 4, !tbaa !5
  %or672 = or i32 %456, %shl671
  store i32 %or672, i32* %scol632, align 4, !tbaa !5
  %457 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx673 = getelementptr inbounds i8, i8* %457, i64 3
  %458 = load i8, i8* %arrayidx673, align 1, !tbaa !85
  %idxprom674 = zext i8 %458 to i64
  %arrayidx675 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom674
  %459 = load i32, i32* %arrayidx675, align 4, !tbaa !5
  %shl676 = shl i32 %459, 1
  %460 = load i32, i32* %scol632, align 4, !tbaa !5
  %or677 = or i32 %460, %shl676
  store i32 %or677, i32* %scol632, align 4, !tbaa !5
  %461 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx678 = getelementptr inbounds i8, i8* %461, i64 4
  %462 = load i8, i8* %arrayidx678, align 1, !tbaa !85
  %conv679 = zext i8 %462 to i32
  %and680 = and i32 %conv679, 240
  %idxprom681 = sext i32 %and680 to i64
  %arrayidx682 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom681
  %463 = load i32, i32* %arrayidx682, align 4, !tbaa !5
  %shr683 = lshr i32 %463, 1
  %464 = load i32, i32* %scol632, align 4, !tbaa !5
  %or684 = or i32 %464, %shr683
  store i32 %or684, i32* %scol632, align 4, !tbaa !5
  br label %if.end.685

if.end.685:                                       ; preds = %if.else.656, %if.then.637
  %465 = load i32, i32* %tskew, align 4, !tbaa !5
  %and686 = and i32 %465, 1
  %cmp687 = icmp eq i32 %and686, 0
  br i1 %cmp687, label %if.then.689, label %if.else.708

if.then.689:                                      ; preds = %if.end.685
  %466 = load i8*, i8** %tptr, align 8, !tbaa !1
  %arrayidx690 = getelementptr inbounds i8, i8* %466, i64 0
  %467 = load i8, i8* %arrayidx690, align 1, !tbaa !85
  %idxprom691 = zext i8 %467 to i64
  %arrayidx692 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom691
  %468 = load i32, i32* %arrayidx692, align 4, !tbaa !5
  %shl693 = shl i32 %468, 6
  store i32 %shl693, i32* %tcol633, align 4, !tbaa !5
  %469 = load i8*, i8** %tptr, align 8, !tbaa !1
  %arrayidx694 = getelementptr inbounds i8, i8* %469, i64 1
  %470 = load i8, i8* %arrayidx694, align 1, !tbaa !85
  %idxprom695 = zext i8 %470 to i64
  %arrayidx696 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom695
  %471 = load i32, i32* %arrayidx696, align 4, !tbaa !5
  %shl697 = shl i32 %471, 4
  %472 = load i32, i32* %tcol633, align 4, !tbaa !5
  %or698 = or i32 %472, %shl697
  store i32 %or698, i32* %tcol633, align 4, !tbaa !5
  %473 = load i8*, i8** %tptr, align 8, !tbaa !1
  %arrayidx699 = getelementptr inbounds i8, i8* %473, i64 2
  %474 = load i8, i8* %arrayidx699, align 1, !tbaa !85
  %idxprom700 = zext i8 %474 to i64
  %arrayidx701 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom700
  %475 = load i32, i32* %arrayidx701, align 4, !tbaa !5
  %shl702 = shl i32 %475, 2
  %476 = load i32, i32* %tcol633, align 4, !tbaa !5
  %or703 = or i32 %476, %shl702
  store i32 %or703, i32* %tcol633, align 4, !tbaa !5
  %477 = load i8*, i8** %tptr, align 8, !tbaa !1
  %arrayidx704 = getelementptr inbounds i8, i8* %477, i64 3
  %478 = load i8, i8* %arrayidx704, align 1, !tbaa !85
  %idxprom705 = zext i8 %478 to i64
  %arrayidx706 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom705
  %479 = load i32, i32* %arrayidx706, align 4, !tbaa !5
  %480 = load i32, i32* %tcol633, align 4, !tbaa !5
  %or707 = or i32 %480, %479
  store i32 %or707, i32* %tcol633, align 4, !tbaa !5
  br label %if.end.737

if.else.708:                                      ; preds = %if.end.685
  %481 = load i8*, i8** %tptr, align 8, !tbaa !1
  %arrayidx709 = getelementptr inbounds i8, i8* %481, i64 0
  %482 = load i8, i8* %arrayidx709, align 1, !tbaa !85
  %conv710 = zext i8 %482 to i32
  %and711 = and i32 %conv710, 15
  %idxprom712 = sext i32 %and711 to i64
  %arrayidx713 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom712
  %483 = load i32, i32* %arrayidx713, align 4, !tbaa !5
  %shl714 = shl i32 %483, 7
  store i32 %shl714, i32* %tcol633, align 4, !tbaa !5
  %484 = load i8*, i8** %tptr, align 8, !tbaa !1
  %arrayidx715 = getelementptr inbounds i8, i8* %484, i64 1
  %485 = load i8, i8* %arrayidx715, align 1, !tbaa !85
  %idxprom716 = zext i8 %485 to i64
  %arrayidx717 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom716
  %486 = load i32, i32* %arrayidx717, align 4, !tbaa !5
  %shl718 = shl i32 %486, 5
  %487 = load i32, i32* %tcol633, align 4, !tbaa !5
  %or719 = or i32 %487, %shl718
  store i32 %or719, i32* %tcol633, align 4, !tbaa !5
  %488 = load i8*, i8** %tptr, align 8, !tbaa !1
  %arrayidx720 = getelementptr inbounds i8, i8* %488, i64 2
  %489 = load i8, i8* %arrayidx720, align 1, !tbaa !85
  %idxprom721 = zext i8 %489 to i64
  %arrayidx722 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom721
  %490 = load i32, i32* %arrayidx722, align 4, !tbaa !5
  %shl723 = shl i32 %490, 3
  %491 = load i32, i32* %tcol633, align 4, !tbaa !5
  %or724 = or i32 %491, %shl723
  store i32 %or724, i32* %tcol633, align 4, !tbaa !5
  %492 = load i8*, i8** %tptr, align 8, !tbaa !1
  %arrayidx725 = getelementptr inbounds i8, i8* %492, i64 3
  %493 = load i8, i8* %arrayidx725, align 1, !tbaa !85
  %idxprom726 = zext i8 %493 to i64
  %arrayidx727 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom726
  %494 = load i32, i32* %arrayidx727, align 4, !tbaa !5
  %shl728 = shl i32 %494, 1
  %495 = load i32, i32* %tcol633, align 4, !tbaa !5
  %or729 = or i32 %495, %shl728
  store i32 %or729, i32* %tcol633, align 4, !tbaa !5
  %496 = load i8*, i8** %tptr, align 8, !tbaa !1
  %arrayidx730 = getelementptr inbounds i8, i8* %496, i64 4
  %497 = load i8, i8* %arrayidx730, align 1, !tbaa !85
  %conv731 = zext i8 %497 to i32
  %and732 = and i32 %conv731, 240
  %idxprom733 = sext i32 %and732 to i64
  %arrayidx734 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom733
  %498 = load i32, i32* %arrayidx734, align 4, !tbaa !5
  %shr735 = lshr i32 %498, 1
  %499 = load i32, i32* %tcol633, align 4, !tbaa !5
  %or736 = or i32 %499, %shr735
  store i32 %or736, i32* %tcol633, align 4, !tbaa !5
  br label %if.end.737

if.end.737:                                       ; preds = %if.else.708, %if.then.689
  %500 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %501 = load i8, i8* %cdbyte613, align 1, !tbaa !85
  %conv738 = zext i8 %501 to i32
  %502 = load i8, i8* %kdbyte612, align 1, !tbaa !85
  %conv739 = zext i8 %502 to i32
  %or740 = or i32 %conv738, %conv739
  %conv741 = sext i32 %or740 to i64
  %503 = load i32, i32* %scol632, align 4, !tbaa !5
  %504 = load i32, i32* %scol632, align 4, !tbaa !5
  %shr742 = lshr i32 %504, 24
  %or743 = or i32 %503, %shr742
  %conv744 = zext i32 %or743 to i64
  %505 = load i32, i32* %tcol633, align 4, !tbaa !5
  %506 = load i32, i32* %tcol633, align 4, !tbaa !5
  %shr745 = lshr i32 %506, 24
  %or746 = or i32 %505, %shr745
  %conv747 = zext i32 %or746 to i64
  %call748 = call i64 %500(i64 %conv741, i64 %conv744, i64 %conv747) #4
  %conv749 = trunc i64 %call748 to i8
  store i8 %conv749, i8* %cresult628, align 1, !tbaa !85
  %507 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %508 = load i8, i8* %mdbyte618, align 1, !tbaa !85
  %conv750 = zext i8 %508 to i32
  %509 = load i8, i8* %kdbyte612, align 1, !tbaa !85
  %conv751 = zext i8 %509 to i32
  %or752 = or i32 %conv750, %conv751
  %conv753 = sext i32 %or752 to i64
  %510 = load i32, i32* %scol632, align 4, !tbaa !5
  %511 = load i32, i32* %scol632, align 4, !tbaa !5
  %shr754 = lshr i32 %511, 16
  %or755 = or i32 %510, %shr754
  %conv756 = zext i32 %or755 to i64
  %512 = load i32, i32* %tcol633, align 4, !tbaa !5
  %513 = load i32, i32* %tcol633, align 4, !tbaa !5
  %shr757 = lshr i32 %513, 16
  %or758 = or i32 %512, %shr757
  %conv759 = zext i32 %or758 to i64
  %call760 = call i64 %507(i64 %conv753, i64 %conv756, i64 %conv759) #4
  %conv761 = trunc i64 %call760 to i8
  store i8 %conv761, i8* %mresult629, align 1, !tbaa !85
  %514 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %515 = load i8, i8* %ydbyte623, align 1, !tbaa !85
  %conv762 = zext i8 %515 to i32
  %516 = load i8, i8* %kdbyte612, align 1, !tbaa !85
  %conv763 = zext i8 %516 to i32
  %or764 = or i32 %conv762, %conv763
  %conv765 = sext i32 %or764 to i64
  %517 = load i32, i32* %scol632, align 4, !tbaa !5
  %518 = load i32, i32* %scol632, align 4, !tbaa !5
  %shr766 = lshr i32 %518, 8
  %or767 = or i32 %517, %shr766
  %conv768 = zext i32 %or767 to i64
  %519 = load i32, i32* %tcol633, align 4, !tbaa !5
  %520 = load i32, i32* %tcol633, align 4, !tbaa !5
  %shr769 = lshr i32 %520, 8
  %or770 = or i32 %519, %shr769
  %conv771 = zext i32 %or770 to i64
  %call772 = call i64 %514(i64 %conv765, i64 %conv768, i64 %conv771) #4
  %conv773 = trunc i64 %call772 to i8
  store i8 %conv773, i8* %yresult630, align 1, !tbaa !85
  %521 = load i8, i8* %cresult628, align 1, !tbaa !85
  %conv774 = zext i8 %521 to i32
  %522 = load i8, i8* %mresult629, align 1, !tbaa !85
  %conv775 = zext i8 %522 to i32
  %and776 = and i32 %conv774, %conv775
  %523 = load i8, i8* %yresult630, align 1, !tbaa !85
  %conv777 = zext i8 %523 to i32
  %and778 = and i32 %and776, %conv777
  %conv779 = trunc i32 %and778 to i8
  store i8 %conv779, i8* %kresult631, align 1, !tbaa !85
  %524 = load i8, i8* %kresult631, align 1, !tbaa !85
  %conv780 = zext i8 %524 to i32
  %neg781 = xor i32 %conv780, -1
  %525 = load i8, i8* %cresult628, align 1, !tbaa !85
  %conv782 = zext i8 %525 to i32
  %and783 = and i32 %conv782, %neg781
  %conv784 = trunc i32 %and783 to i8
  store i8 %conv784, i8* %cresult628, align 1, !tbaa !85
  %526 = load i8, i8* %kresult631, align 1, !tbaa !85
  %conv785 = zext i8 %526 to i32
  %neg786 = xor i32 %conv785, -1
  %527 = load i8, i8* %mresult629, align 1, !tbaa !85
  %conv787 = zext i8 %527 to i32
  %and788 = and i32 %conv787, %neg786
  %conv789 = trunc i32 %and788 to i8
  store i8 %conv789, i8* %mresult629, align 1, !tbaa !85
  %528 = load i8, i8* %kresult631, align 1, !tbaa !85
  %conv790 = zext i8 %528 to i32
  %neg791 = xor i32 %conv790, -1
  %529 = load i8, i8* %yresult630, align 1, !tbaa !85
  %conv792 = zext i8 %529 to i32
  %and793 = and i32 %conv792, %neg791
  %conv794 = trunc i32 %and793 to i8
  store i8 %conv794, i8* %yresult630, align 1, !tbaa !85
  %530 = load i8, i8* %cresult628, align 1, !tbaa !85
  %conv795 = zext i8 %530 to i32
  %531 = load i8, i8* %kresult631, align 1, !tbaa !85
  %conv796 = zext i8 %531 to i32
  %neg797 = xor i32 %conv796, -1
  %and798 = and i32 %conv795, %neg797
  %conv799 = trunc i32 %and798 to i8
  %532 = load i8*, i8** %cdptr, align 8, !tbaa !1
  %incdec.ptr800 = getelementptr inbounds i8, i8* %532, i32 1
  store i8* %incdec.ptr800, i8** %cdptr, align 8, !tbaa !1
  store i8 %conv799, i8* %532, align 1, !tbaa !85
  %533 = load i8, i8* %mresult629, align 1, !tbaa !85
  %conv801 = zext i8 %533 to i32
  %534 = load i8, i8* %kresult631, align 1, !tbaa !85
  %conv802 = zext i8 %534 to i32
  %neg803 = xor i32 %conv802, -1
  %and804 = and i32 %conv801, %neg803
  %conv805 = trunc i32 %and804 to i8
  %535 = load i8*, i8** %mdptr, align 8, !tbaa !1
  %incdec.ptr806 = getelementptr inbounds i8, i8* %535, i32 1
  store i8* %incdec.ptr806, i8** %mdptr, align 8, !tbaa !1
  store i8 %conv805, i8* %535, align 1, !tbaa !85
  %536 = load i8, i8* %yresult630, align 1, !tbaa !85
  %conv807 = zext i8 %536 to i32
  %537 = load i8, i8* %kresult631, align 1, !tbaa !85
  %conv808 = zext i8 %537 to i32
  %neg809 = xor i32 %conv808, -1
  %and810 = and i32 %conv807, %neg809
  %conv811 = trunc i32 %and810 to i8
  %538 = load i8*, i8** %ydptr, align 8, !tbaa !1
  %incdec.ptr812 = getelementptr inbounds i8, i8* %538, i32 1
  store i8* %incdec.ptr812, i8** %ydptr, align 8, !tbaa !1
  store i8 %conv811, i8* %538, align 1, !tbaa !85
  %539 = load i8, i8* %kresult631, align 1, !tbaa !85
  %540 = load i8*, i8** %kdptr, align 8, !tbaa !1
  %incdec.ptr813 = getelementptr inbounds i8, i8* %540, i32 1
  store i8* %incdec.ptr813, i8** %kdptr, align 8, !tbaa !1
  store i8 %539, i8* %540, align 1, !tbaa !85
  %541 = load i8*, i8** %sptr, align 8, !tbaa !1
  %add.ptr814 = getelementptr inbounds i8, i8* %541, i64 4
  store i8* %add.ptr814, i8** %sptr, align 8, !tbaa !1
  %542 = load i8*, i8** %tptr, align 8, !tbaa !1
  %add.ptr815 = getelementptr inbounds i8, i8* %542, i64 4
  store i8* %add.ptr815, i8** %tptr, align 8, !tbaa !1
  %543 = load i32, i32* %left, align 4, !tbaa !5
  %sub816 = sub nsw i32 %543, 8
  store i32 %sub816, i32* %left, align 4, !tbaa !5
  %544 = bitcast i32* %tcol633 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %544) #1
  %545 = bitcast i32* %scol632 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %545) #1
  call void @llvm.lifetime.end(i64 1, i8* %kresult631) #1
  call void @llvm.lifetime.end(i64 1, i8* %yresult630) #1
  call void @llvm.lifetime.end(i64 1, i8* %mresult629) #1
  call void @llvm.lifetime.end(i64 1, i8* %cresult628) #1
  call void @llvm.lifetime.end(i64 1, i8* %ydbyte623) #1
  call void @llvm.lifetime.end(i64 1, i8* %mdbyte618) #1
  call void @llvm.lifetime.end(i64 1, i8* %cdbyte613) #1
  call void @llvm.lifetime.end(i64 1, i8* %kdbyte612) #1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.start(i64 1, i8* %kdbyte817) #1
  %546 = load i8*, i8** %kdptr, align 8, !tbaa !1
  %547 = load i8, i8* %546, align 1, !tbaa !85
  store i8 %547, i8* %kdbyte817, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %cdbyte818) #1
  %548 = load i8*, i8** %cdptr, align 8, !tbaa !1
  %549 = load i8, i8* %548, align 1, !tbaa !85
  store i8 %549, i8* %cdbyte818, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %mdbyte819) #1
  %550 = load i8*, i8** %mdptr, align 8, !tbaa !1
  %551 = load i8, i8* %550, align 1, !tbaa !85
  store i8 %551, i8* %mdbyte819, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %ydbyte820) #1
  %552 = load i8*, i8** %ydptr, align 8, !tbaa !1
  %553 = load i8, i8* %552, align 1, !tbaa !85
  store i8 %553, i8* %ydbyte820, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %cresult821) #1
  call void @llvm.lifetime.start(i64 1, i8* %mresult822) #1
  call void @llvm.lifetime.start(i64 1, i8* %yresult823) #1
  call void @llvm.lifetime.start(i64 1, i8* %kresult824) #1
  %554 = bitcast i32* %scol825 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %554) #1
  %555 = bitcast i32* %tcol826 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %555) #1
  %556 = load i32, i32* %sskew, align 4, !tbaa !5
  %and827 = and i32 %556, 1
  %cmp828 = icmp eq i32 %and827, 0
  br i1 %cmp828, label %if.then.830, label %if.else.861

if.then.830:                                      ; preds = %while.end
  %557 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx831 = getelementptr inbounds i8, i8* %557, i64 0
  %558 = load i8, i8* %arrayidx831, align 1, !tbaa !85
  %idxprom832 = zext i8 %558 to i64
  %arrayidx833 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom832
  %559 = load i32, i32* %arrayidx833, align 4, !tbaa !5
  %shl834 = shl i32 %559, 6
  store i32 %shl834, i32* %scol825, align 4, !tbaa !5
  %560 = load i32, i32* %left, align 4, !tbaa !5
  %cmp835 = icmp sgt i32 %560, -6
  br i1 %cmp835, label %if.then.837, label %if.end.843

if.then.837:                                      ; preds = %if.then.830
  %561 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx838 = getelementptr inbounds i8, i8* %561, i64 1
  %562 = load i8, i8* %arrayidx838, align 1, !tbaa !85
  %idxprom839 = zext i8 %562 to i64
  %arrayidx840 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom839
  %563 = load i32, i32* %arrayidx840, align 4, !tbaa !5
  %shl841 = shl i32 %563, 4
  %564 = load i32, i32* %scol825, align 4, !tbaa !5
  %or842 = or i32 %564, %shl841
  store i32 %or842, i32* %scol825, align 4, !tbaa !5
  br label %if.end.843

if.end.843:                                       ; preds = %if.then.837, %if.then.830
  %565 = load i32, i32* %left, align 4, !tbaa !5
  %cmp844 = icmp sgt i32 %565, -4
  br i1 %cmp844, label %if.then.846, label %if.end.852

if.then.846:                                      ; preds = %if.end.843
  %566 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx847 = getelementptr inbounds i8, i8* %566, i64 2
  %567 = load i8, i8* %arrayidx847, align 1, !tbaa !85
  %idxprom848 = zext i8 %567 to i64
  %arrayidx849 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom848
  %568 = load i32, i32* %arrayidx849, align 4, !tbaa !5
  %shl850 = shl i32 %568, 2
  %569 = load i32, i32* %scol825, align 4, !tbaa !5
  %or851 = or i32 %569, %shl850
  store i32 %or851, i32* %scol825, align 4, !tbaa !5
  br label %if.end.852

if.end.852:                                       ; preds = %if.then.846, %if.end.843
  %570 = load i32, i32* %left, align 4, !tbaa !5
  %cmp853 = icmp sgt i32 %570, -2
  br i1 %cmp853, label %if.then.855, label %if.end.860

if.then.855:                                      ; preds = %if.end.852
  %571 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx856 = getelementptr inbounds i8, i8* %571, i64 3
  %572 = load i8, i8* %arrayidx856, align 1, !tbaa !85
  %idxprom857 = zext i8 %572 to i64
  %arrayidx858 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom857
  %573 = load i32, i32* %arrayidx858, align 4, !tbaa !5
  %574 = load i32, i32* %scol825, align 4, !tbaa !5
  %or859 = or i32 %574, %573
  store i32 %or859, i32* %scol825, align 4, !tbaa !5
  br label %if.end.860

if.end.860:                                       ; preds = %if.then.855, %if.end.852
  br label %if.end.906

if.else.861:                                      ; preds = %while.end
  %575 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx862 = getelementptr inbounds i8, i8* %575, i64 0
  %576 = load i8, i8* %arrayidx862, align 1, !tbaa !85
  %conv863 = zext i8 %576 to i32
  %and864 = and i32 %conv863, 15
  %idxprom865 = sext i32 %and864 to i64
  %arrayidx866 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom865
  %577 = load i32, i32* %arrayidx866, align 4, !tbaa !5
  %shl867 = shl i32 %577, 7
  store i32 %shl867, i32* %scol825, align 4, !tbaa !5
  %578 = load i32, i32* %left, align 4, !tbaa !5
  %cmp868 = icmp sgt i32 %578, -7
  br i1 %cmp868, label %if.then.870, label %if.end.876

if.then.870:                                      ; preds = %if.else.861
  %579 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx871 = getelementptr inbounds i8, i8* %579, i64 1
  %580 = load i8, i8* %arrayidx871, align 1, !tbaa !85
  %idxprom872 = zext i8 %580 to i64
  %arrayidx873 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom872
  %581 = load i32, i32* %arrayidx873, align 4, !tbaa !5
  %shl874 = shl i32 %581, 5
  %582 = load i32, i32* %scol825, align 4, !tbaa !5
  %or875 = or i32 %582, %shl874
  store i32 %or875, i32* %scol825, align 4, !tbaa !5
  br label %if.end.876

if.end.876:                                       ; preds = %if.then.870, %if.else.861
  %583 = load i32, i32* %left, align 4, !tbaa !5
  %cmp877 = icmp sgt i32 %583, -5
  br i1 %cmp877, label %if.then.879, label %if.end.885

if.then.879:                                      ; preds = %if.end.876
  %584 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx880 = getelementptr inbounds i8, i8* %584, i64 2
  %585 = load i8, i8* %arrayidx880, align 1, !tbaa !85
  %idxprom881 = zext i8 %585 to i64
  %arrayidx882 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom881
  %586 = load i32, i32* %arrayidx882, align 4, !tbaa !5
  %shl883 = shl i32 %586, 3
  %587 = load i32, i32* %scol825, align 4, !tbaa !5
  %or884 = or i32 %587, %shl883
  store i32 %or884, i32* %scol825, align 4, !tbaa !5
  br label %if.end.885

if.end.885:                                       ; preds = %if.then.879, %if.end.876
  %588 = load i32, i32* %left, align 4, !tbaa !5
  %cmp886 = icmp sgt i32 %588, -3
  br i1 %cmp886, label %if.then.888, label %if.end.894

if.then.888:                                      ; preds = %if.end.885
  %589 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx889 = getelementptr inbounds i8, i8* %589, i64 3
  %590 = load i8, i8* %arrayidx889, align 1, !tbaa !85
  %idxprom890 = zext i8 %590 to i64
  %arrayidx891 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom890
  %591 = load i32, i32* %arrayidx891, align 4, !tbaa !5
  %shl892 = shl i32 %591, 1
  %592 = load i32, i32* %scol825, align 4, !tbaa !5
  %or893 = or i32 %592, %shl892
  store i32 %or893, i32* %scol825, align 4, !tbaa !5
  br label %if.end.894

if.end.894:                                       ; preds = %if.then.888, %if.end.885
  %593 = load i32, i32* %left, align 4, !tbaa !5
  %cmp895 = icmp sgt i32 %593, -1
  br i1 %cmp895, label %if.then.897, label %if.end.905

if.then.897:                                      ; preds = %if.end.894
  %594 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx898 = getelementptr inbounds i8, i8* %594, i64 4
  %595 = load i8, i8* %arrayidx898, align 1, !tbaa !85
  %conv899 = zext i8 %595 to i32
  %and900 = and i32 %conv899, 240
  %idxprom901 = sext i32 %and900 to i64
  %arrayidx902 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom901
  %596 = load i32, i32* %arrayidx902, align 4, !tbaa !5
  %shr903 = lshr i32 %596, 1
  %597 = load i32, i32* %scol825, align 4, !tbaa !5
  %or904 = or i32 %597, %shr903
  store i32 %or904, i32* %scol825, align 4, !tbaa !5
  br label %if.end.905

if.end.905:                                       ; preds = %if.then.897, %if.end.894
  br label %if.end.906

if.end.906:                                       ; preds = %if.end.905, %if.end.860
  %598 = load i32, i32* %tskew, align 4, !tbaa !5
  %and907 = and i32 %598, 1
  %cmp908 = icmp eq i32 %and907, 0
  br i1 %cmp908, label %if.then.910, label %if.else.941

if.then.910:                                      ; preds = %if.end.906
  %599 = load i8*, i8** %tptr, align 8, !tbaa !1
  %arrayidx911 = getelementptr inbounds i8, i8* %599, i64 0
  %600 = load i8, i8* %arrayidx911, align 1, !tbaa !85
  %idxprom912 = zext i8 %600 to i64
  %arrayidx913 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom912
  %601 = load i32, i32* %arrayidx913, align 4, !tbaa !5
  %shl914 = shl i32 %601, 6
  store i32 %shl914, i32* %tcol826, align 4, !tbaa !5
  %602 = load i32, i32* %left, align 4, !tbaa !5
  %cmp915 = icmp sgt i32 %602, -6
  br i1 %cmp915, label %if.then.917, label %if.end.923

if.then.917:                                      ; preds = %if.then.910
  %603 = load i8*, i8** %tptr, align 8, !tbaa !1
  %arrayidx918 = getelementptr inbounds i8, i8* %603, i64 1
  %604 = load i8, i8* %arrayidx918, align 1, !tbaa !85
  %idxprom919 = zext i8 %604 to i64
  %arrayidx920 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom919
  %605 = load i32, i32* %arrayidx920, align 4, !tbaa !5
  %shl921 = shl i32 %605, 4
  %606 = load i32, i32* %tcol826, align 4, !tbaa !5
  %or922 = or i32 %606, %shl921
  store i32 %or922, i32* %tcol826, align 4, !tbaa !5
  br label %if.end.923

if.end.923:                                       ; preds = %if.then.917, %if.then.910
  %607 = load i32, i32* %left, align 4, !tbaa !5
  %cmp924 = icmp sgt i32 %607, -4
  br i1 %cmp924, label %if.then.926, label %if.end.932

if.then.926:                                      ; preds = %if.end.923
  %608 = load i8*, i8** %tptr, align 8, !tbaa !1
  %arrayidx927 = getelementptr inbounds i8, i8* %608, i64 2
  %609 = load i8, i8* %arrayidx927, align 1, !tbaa !85
  %idxprom928 = zext i8 %609 to i64
  %arrayidx929 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom928
  %610 = load i32, i32* %arrayidx929, align 4, !tbaa !5
  %shl930 = shl i32 %610, 2
  %611 = load i32, i32* %tcol826, align 4, !tbaa !5
  %or931 = or i32 %611, %shl930
  store i32 %or931, i32* %tcol826, align 4, !tbaa !5
  br label %if.end.932

if.end.932:                                       ; preds = %if.then.926, %if.end.923
  %612 = load i32, i32* %left, align 4, !tbaa !5
  %cmp933 = icmp sgt i32 %612, -2
  br i1 %cmp933, label %if.then.935, label %if.end.940

if.then.935:                                      ; preds = %if.end.932
  %613 = load i8*, i8** %tptr, align 8, !tbaa !1
  %arrayidx936 = getelementptr inbounds i8, i8* %613, i64 3
  %614 = load i8, i8* %arrayidx936, align 1, !tbaa !85
  %idxprom937 = zext i8 %614 to i64
  %arrayidx938 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom937
  %615 = load i32, i32* %arrayidx938, align 4, !tbaa !5
  %616 = load i32, i32* %tcol826, align 4, !tbaa !5
  %or939 = or i32 %616, %615
  store i32 %or939, i32* %tcol826, align 4, !tbaa !5
  br label %if.end.940

if.end.940:                                       ; preds = %if.then.935, %if.end.932
  br label %if.end.986

if.else.941:                                      ; preds = %if.end.906
  %617 = load i8*, i8** %tptr, align 8, !tbaa !1
  %arrayidx942 = getelementptr inbounds i8, i8* %617, i64 0
  %618 = load i8, i8* %arrayidx942, align 1, !tbaa !85
  %conv943 = zext i8 %618 to i32
  %and944 = and i32 %conv943, 15
  %idxprom945 = sext i32 %and944 to i64
  %arrayidx946 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom945
  %619 = load i32, i32* %arrayidx946, align 4, !tbaa !5
  %shl947 = shl i32 %619, 7
  store i32 %shl947, i32* %tcol826, align 4, !tbaa !5
  %620 = load i32, i32* %left, align 4, !tbaa !5
  %cmp948 = icmp sgt i32 %620, -7
  br i1 %cmp948, label %if.then.950, label %if.end.956

if.then.950:                                      ; preds = %if.else.941
  %621 = load i8*, i8** %tptr, align 8, !tbaa !1
  %arrayidx951 = getelementptr inbounds i8, i8* %621, i64 1
  %622 = load i8, i8* %arrayidx951, align 1, !tbaa !85
  %idxprom952 = zext i8 %622 to i64
  %arrayidx953 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom952
  %623 = load i32, i32* %arrayidx953, align 4, !tbaa !5
  %shl954 = shl i32 %623, 5
  %624 = load i32, i32* %tcol826, align 4, !tbaa !5
  %or955 = or i32 %624, %shl954
  store i32 %or955, i32* %tcol826, align 4, !tbaa !5
  br label %if.end.956

if.end.956:                                       ; preds = %if.then.950, %if.else.941
  %625 = load i32, i32* %left, align 4, !tbaa !5
  %cmp957 = icmp sgt i32 %625, -5
  br i1 %cmp957, label %if.then.959, label %if.end.965

if.then.959:                                      ; preds = %if.end.956
  %626 = load i8*, i8** %tptr, align 8, !tbaa !1
  %arrayidx960 = getelementptr inbounds i8, i8* %626, i64 2
  %627 = load i8, i8* %arrayidx960, align 1, !tbaa !85
  %idxprom961 = zext i8 %627 to i64
  %arrayidx962 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom961
  %628 = load i32, i32* %arrayidx962, align 4, !tbaa !5
  %shl963 = shl i32 %628, 3
  %629 = load i32, i32* %tcol826, align 4, !tbaa !5
  %or964 = or i32 %629, %shl963
  store i32 %or964, i32* %tcol826, align 4, !tbaa !5
  br label %if.end.965

if.end.965:                                       ; preds = %if.then.959, %if.end.956
  %630 = load i32, i32* %left, align 4, !tbaa !5
  %cmp966 = icmp sgt i32 %630, -3
  br i1 %cmp966, label %if.then.968, label %if.end.974

if.then.968:                                      ; preds = %if.end.965
  %631 = load i8*, i8** %tptr, align 8, !tbaa !1
  %arrayidx969 = getelementptr inbounds i8, i8* %631, i64 3
  %632 = load i8, i8* %arrayidx969, align 1, !tbaa !85
  %idxprom970 = zext i8 %632 to i64
  %arrayidx971 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom970
  %633 = load i32, i32* %arrayidx971, align 4, !tbaa !5
  %shl972 = shl i32 %633, 1
  %634 = load i32, i32* %tcol826, align 4, !tbaa !5
  %or973 = or i32 %634, %shl972
  store i32 %or973, i32* %tcol826, align 4, !tbaa !5
  br label %if.end.974

if.end.974:                                       ; preds = %if.then.968, %if.end.965
  %635 = load i32, i32* %left, align 4, !tbaa !5
  %cmp975 = icmp sgt i32 %635, -1
  br i1 %cmp975, label %if.then.977, label %if.end.985

if.then.977:                                      ; preds = %if.end.974
  %636 = load i8*, i8** %tptr, align 8, !tbaa !1
  %arrayidx978 = getelementptr inbounds i8, i8* %636, i64 4
  %637 = load i8, i8* %arrayidx978, align 1, !tbaa !85
  %conv979 = zext i8 %637 to i32
  %and980 = and i32 %conv979, 240
  %idxprom981 = sext i32 %and980 to i64
  %arrayidx982 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom981
  %638 = load i32, i32* %arrayidx982, align 4, !tbaa !5
  %shr983 = lshr i32 %638, 1
  %639 = load i32, i32* %tcol826, align 4, !tbaa !5
  %or984 = or i32 %639, %shr983
  store i32 %or984, i32* %tcol826, align 4, !tbaa !5
  br label %if.end.985

if.end.985:                                       ; preds = %if.then.977, %if.end.974
  br label %if.end.986

if.end.986:                                       ; preds = %if.end.985, %if.end.940
  %640 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %641 = load i8, i8* %cdbyte818, align 1, !tbaa !85
  %conv987 = zext i8 %641 to i32
  %642 = load i8, i8* %kdbyte817, align 1, !tbaa !85
  %conv988 = zext i8 %642 to i32
  %or989 = or i32 %conv987, %conv988
  %conv990 = sext i32 %or989 to i64
  %643 = load i32, i32* %scol825, align 4, !tbaa !5
  %644 = load i32, i32* %scol825, align 4, !tbaa !5
  %shr991 = lshr i32 %644, 24
  %or992 = or i32 %643, %shr991
  %conv993 = zext i32 %or992 to i64
  %645 = load i32, i32* %tcol826, align 4, !tbaa !5
  %646 = load i32, i32* %tcol826, align 4, !tbaa !5
  %shr994 = lshr i32 %646, 24
  %or995 = or i32 %645, %shr994
  %conv996 = zext i32 %or995 to i64
  %call997 = call i64 %640(i64 %conv990, i64 %conv993, i64 %conv996) #4
  %conv998 = trunc i64 %call997 to i8
  store i8 %conv998, i8* %cresult821, align 1, !tbaa !85
  %647 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %648 = load i8, i8* %mdbyte819, align 1, !tbaa !85
  %conv999 = zext i8 %648 to i32
  %649 = load i8, i8* %kdbyte817, align 1, !tbaa !85
  %conv1000 = zext i8 %649 to i32
  %or1001 = or i32 %conv999, %conv1000
  %conv1002 = sext i32 %or1001 to i64
  %650 = load i32, i32* %scol825, align 4, !tbaa !5
  %651 = load i32, i32* %scol825, align 4, !tbaa !5
  %shr1003 = lshr i32 %651, 16
  %or1004 = or i32 %650, %shr1003
  %conv1005 = zext i32 %or1004 to i64
  %652 = load i32, i32* %tcol826, align 4, !tbaa !5
  %653 = load i32, i32* %tcol826, align 4, !tbaa !5
  %shr1006 = lshr i32 %653, 16
  %or1007 = or i32 %652, %shr1006
  %conv1008 = zext i32 %or1007 to i64
  %call1009 = call i64 %647(i64 %conv1002, i64 %conv1005, i64 %conv1008) #4
  %conv1010 = trunc i64 %call1009 to i8
  store i8 %conv1010, i8* %mresult822, align 1, !tbaa !85
  %654 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %655 = load i8, i8* %ydbyte820, align 1, !tbaa !85
  %conv1011 = zext i8 %655 to i32
  %656 = load i8, i8* %kdbyte817, align 1, !tbaa !85
  %conv1012 = zext i8 %656 to i32
  %or1013 = or i32 %conv1011, %conv1012
  %conv1014 = sext i32 %or1013 to i64
  %657 = load i32, i32* %scol825, align 4, !tbaa !5
  %658 = load i32, i32* %scol825, align 4, !tbaa !5
  %shr1015 = lshr i32 %658, 8
  %or1016 = or i32 %657, %shr1015
  %conv1017 = zext i32 %or1016 to i64
  %659 = load i32, i32* %tcol826, align 4, !tbaa !5
  %660 = load i32, i32* %tcol826, align 4, !tbaa !5
  %shr1018 = lshr i32 %660, 8
  %or1019 = or i32 %659, %shr1018
  %conv1020 = zext i32 %or1019 to i64
  %call1021 = call i64 %654(i64 %conv1014, i64 %conv1017, i64 %conv1020) #4
  %conv1022 = trunc i64 %call1021 to i8
  store i8 %conv1022, i8* %yresult823, align 1, !tbaa !85
  %661 = load i8, i8* %cresult821, align 1, !tbaa !85
  %conv1023 = zext i8 %661 to i32
  %662 = load i8, i8* %mresult822, align 1, !tbaa !85
  %conv1024 = zext i8 %662 to i32
  %and1025 = and i32 %conv1023, %conv1024
  %663 = load i8, i8* %yresult823, align 1, !tbaa !85
  %conv1026 = zext i8 %663 to i32
  %and1027 = and i32 %and1025, %conv1026
  %conv1028 = trunc i32 %and1027 to i8
  store i8 %conv1028, i8* %kresult824, align 1, !tbaa !85
  %664 = load i8, i8* %kresult824, align 1, !tbaa !85
  %conv1029 = zext i8 %664 to i32
  %neg1030 = xor i32 %conv1029, -1
  %665 = load i8, i8* %cresult821, align 1, !tbaa !85
  %conv1031 = zext i8 %665 to i32
  %and1032 = and i32 %conv1031, %neg1030
  %conv1033 = trunc i32 %and1032 to i8
  store i8 %conv1033, i8* %cresult821, align 1, !tbaa !85
  %666 = load i8, i8* %kresult824, align 1, !tbaa !85
  %conv1034 = zext i8 %666 to i32
  %neg1035 = xor i32 %conv1034, -1
  %667 = load i8, i8* %mresult822, align 1, !tbaa !85
  %conv1036 = zext i8 %667 to i32
  %and1037 = and i32 %conv1036, %neg1035
  %conv1038 = trunc i32 %and1037 to i8
  store i8 %conv1038, i8* %mresult822, align 1, !tbaa !85
  %668 = load i8, i8* %kresult824, align 1, !tbaa !85
  %conv1039 = zext i8 %668 to i32
  %neg1040 = xor i32 %conv1039, -1
  %669 = load i8, i8* %yresult823, align 1, !tbaa !85
  %conv1041 = zext i8 %669 to i32
  %and1042 = and i32 %conv1041, %neg1040
  %conv1043 = trunc i32 %and1042 to i8
  store i8 %conv1043, i8* %yresult823, align 1, !tbaa !85
  %670 = load i8, i8* %cresult821, align 1, !tbaa !85
  %conv1044 = zext i8 %670 to i32
  %671 = load i8, i8* %rmask262, align 1, !tbaa !85
  %conv1045 = zext i8 %671 to i32
  %and1046 = and i32 %conv1044, %conv1045
  %672 = load i8, i8* %cdbyte818, align 1, !tbaa !85
  %conv1047 = zext i8 %672 to i32
  %673 = load i8, i8* %rmask262, align 1, !tbaa !85
  %conv1048 = zext i8 %673 to i32
  %neg1049 = xor i32 %conv1048, -1
  %and1050 = and i32 %conv1047, %neg1049
  %or1051 = or i32 %and1046, %and1050
  %conv1052 = trunc i32 %or1051 to i8
  %674 = load i8*, i8** %cdptr, align 8, !tbaa !1
  %incdec.ptr1053 = getelementptr inbounds i8, i8* %674, i32 1
  store i8* %incdec.ptr1053, i8** %cdptr, align 8, !tbaa !1
  store i8 %conv1052, i8* %674, align 1, !tbaa !85
  %675 = load i8, i8* %mresult822, align 1, !tbaa !85
  %conv1054 = zext i8 %675 to i32
  %676 = load i8, i8* %rmask262, align 1, !tbaa !85
  %conv1055 = zext i8 %676 to i32
  %and1056 = and i32 %conv1054, %conv1055
  %677 = load i8, i8* %mdbyte819, align 1, !tbaa !85
  %conv1057 = zext i8 %677 to i32
  %678 = load i8, i8* %rmask262, align 1, !tbaa !85
  %conv1058 = zext i8 %678 to i32
  %neg1059 = xor i32 %conv1058, -1
  %and1060 = and i32 %conv1057, %neg1059
  %or1061 = or i32 %and1056, %and1060
  %conv1062 = trunc i32 %or1061 to i8
  %679 = load i8*, i8** %mdptr, align 8, !tbaa !1
  %incdec.ptr1063 = getelementptr inbounds i8, i8* %679, i32 1
  store i8* %incdec.ptr1063, i8** %mdptr, align 8, !tbaa !1
  store i8 %conv1062, i8* %679, align 1, !tbaa !85
  %680 = load i8, i8* %yresult823, align 1, !tbaa !85
  %conv1064 = zext i8 %680 to i32
  %681 = load i8, i8* %rmask262, align 1, !tbaa !85
  %conv1065 = zext i8 %681 to i32
  %and1066 = and i32 %conv1064, %conv1065
  %682 = load i8, i8* %ydbyte820, align 1, !tbaa !85
  %conv1067 = zext i8 %682 to i32
  %683 = load i8, i8* %rmask262, align 1, !tbaa !85
  %conv1068 = zext i8 %683 to i32
  %neg1069 = xor i32 %conv1068, -1
  %and1070 = and i32 %conv1067, %neg1069
  %or1071 = or i32 %and1066, %and1070
  %conv1072 = trunc i32 %or1071 to i8
  %684 = load i8*, i8** %ydptr, align 8, !tbaa !1
  %incdec.ptr1073 = getelementptr inbounds i8, i8* %684, i32 1
  store i8* %incdec.ptr1073, i8** %ydptr, align 8, !tbaa !1
  store i8 %conv1072, i8* %684, align 1, !tbaa !85
  %685 = load i8, i8* %kresult824, align 1, !tbaa !85
  %conv1074 = zext i8 %685 to i32
  %686 = load i8, i8* %rmask262, align 1, !tbaa !85
  %conv1075 = zext i8 %686 to i32
  %and1076 = and i32 %conv1074, %conv1075
  %687 = load i8, i8* %kdbyte817, align 1, !tbaa !85
  %conv1077 = zext i8 %687 to i32
  %688 = load i8, i8* %rmask262, align 1, !tbaa !85
  %conv1078 = zext i8 %688 to i32
  %neg1079 = xor i32 %conv1078, -1
  %and1080 = and i32 %conv1077, %neg1079
  %or1081 = or i32 %and1076, %and1080
  %conv1082 = trunc i32 %or1081 to i8
  %689 = load i8*, i8** %kdptr, align 8, !tbaa !1
  %incdec.ptr1083 = getelementptr inbounds i8, i8* %689, i32 1
  store i8* %incdec.ptr1083, i8** %kdptr, align 8, !tbaa !1
  store i8 %conv1082, i8* %689, align 1, !tbaa !85
  %690 = bitcast i32* %tcol826 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %690) #1
  %691 = bitcast i32* %scol825 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %691) #1
  call void @llvm.lifetime.end(i64 1, i8* %kresult824) #1
  call void @llvm.lifetime.end(i64 1, i8* %yresult823) #1
  call void @llvm.lifetime.end(i64 1, i8* %mresult822) #1
  call void @llvm.lifetime.end(i64 1, i8* %cresult821) #1
  call void @llvm.lifetime.end(i64 1, i8* %ydbyte820) #1
  call void @llvm.lifetime.end(i64 1, i8* %mdbyte819) #1
  call void @llvm.lifetime.end(i64 1, i8* %cdbyte818) #1
  call void @llvm.lifetime.end(i64 1, i8* %kdbyte817) #1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.986, %if.then.605
  %692 = bitcast i8** %sptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %692) #1
  %693 = bitcast i64 (i64, i64, i64)** %proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %693) #1
  %694 = bitcast i8** %tptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %694) #1
  %695 = bitcast i8** %kdptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %695) #1
  %696 = bitcast i8** %ydptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %696) #1
  %697 = bitcast i8** %mdptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %697) #1
  %698 = bitcast i8** %cdptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %698) #1
  call void @llvm.lifetime.end(i64 1, i8* %rmask262) #1
  call void @llvm.lifetime.end(i64 1, i8* %lmask259) #1
  %699 = bitcast i32* %sskew to i8*
  call void @llvm.lifetime.end(i64 4, i8* %699) #1
  %700 = bitcast i32* %sbit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %700) #1
  %701 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %701) #1
  %702 = bitcast i32* %tskew to i8*
  call void @llvm.lifetime.end(i64 4, i8* %702) #1
  %703 = bitcast i32* %tbit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %703) #1
  %704 = bitcast i32* %dbit240 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %704) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 14, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %705 = load i32, i32* %nw, align 4, !tbaa !5
  %706 = load i32, i32* %sx, align 4, !tbaa !5
  %add1098 = add nsw i32 %706, %705
  store i32 %add1098, i32* %sx, align 4, !tbaa !5
  %707 = load i32, i32* %nw, align 4, !tbaa !5
  %708 = load i32, i32* %dx, align 4, !tbaa !5
  %add1099 = add nsw i32 %708, %707
  store i32 %add1099, i32* %dx, align 4, !tbaa !5
  %709 = load i32, i32* %nw, align 4, !tbaa !5
  %710 = load i32, i32* %w, align 4, !tbaa !5
  %sub1100 = sub nsw i32 %710, %709
  store i32 %sub1100, i32* %w, align 4, !tbaa !5
  store i32 0, i32* %tx, align 4, !tbaa !5
  br label %for.cond.236

for.end:                                          ; preds = %for.cond.236
  %711 = bitcast i32* %tx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %711) #1
  %712 = bitcast i32* %nw to i8*
  call void @llvm.lifetime.end(i64 4, i8* %712) #1
  %713 = bitcast i32* %xoff to i8*
  call void @llvm.lifetime.end(i64 4, i8* %713) #1
  %714 = bitcast i8** %trow to i8*
  call void @llvm.lifetime.end(i64 8, i8* %714) #1
  %715 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %715) #1
  %716 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %716) #1
  %717 = bitcast i32* %sx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %717) #1
  br label %for.inc.1101

for.inc.1101:                                     ; preds = %for.end
  %718 = load i32, i32* %draster, align 4, !tbaa !5
  %719 = load i8*, i8** %cdrow, align 8, !tbaa !1
  %idx.ext1102 = zext i32 %718 to i64
  %add.ptr1103 = getelementptr inbounds i8, i8* %719, i64 %idx.ext1102
  store i8* %add.ptr1103, i8** %cdrow, align 8, !tbaa !1
  %720 = load i32, i32* %draster, align 4, !tbaa !5
  %721 = load i8*, i8** %mdrow, align 8, !tbaa !1
  %idx.ext1104 = zext i32 %720 to i64
  %add.ptr1105 = getelementptr inbounds i8, i8* %721, i64 %idx.ext1104
  store i8* %add.ptr1105, i8** %mdrow, align 8, !tbaa !1
  %722 = load i32, i32* %draster, align 4, !tbaa !5
  %723 = load i8*, i8** %ydrow, align 8, !tbaa !1
  %idx.ext1106 = zext i32 %722 to i64
  %add.ptr1107 = getelementptr inbounds i8, i8* %723, i64 %idx.ext1106
  store i8* %add.ptr1107, i8** %ydrow, align 8, !tbaa !1
  %724 = load i32, i32* %draster, align 4, !tbaa !5
  %725 = load i8*, i8** %kdrow, align 8, !tbaa !1
  %idx.ext1108 = zext i32 %724 to i64
  %add.ptr1109 = getelementptr inbounds i8, i8* %725, i64 %idx.ext1108
  store i8* %add.ptr1109, i8** %kdrow, align 8, !tbaa !1
  %726 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %727 = load i8*, i8** %srow.addr, align 8, !tbaa !1
  %idx.ext1110 = zext i32 %726 to i64
  %add.ptr1111 = getelementptr inbounds i8, i8* %727, i64 %idx.ext1110
  store i8* %add.ptr1111, i8** %srow.addr, align 8, !tbaa !1
  %728 = load i32, i32* %ty, align 4, !tbaa !5
  %inc = add nsw i32 %728, 1
  store i32 %inc, i32* %ty, align 4, !tbaa !5
  br label %for.cond

for.end.1112:                                     ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %729 = bitcast i32* %traster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %729) #1
  %730 = bitcast i32* %ty to i8*
  call void @llvm.lifetime.end(i64 4, i8* %730) #1
  br label %cleanup.2390

if.end.1115:                                      ; preds = %land.lhs.true, %lor.lhs.false.191
  %731 = load i32, i32* %x.addr, align 4, !tbaa !5
  %and1116 = and i32 %731, 7
  store i32 %and1116, i32* %dbit, align 4, !tbaa !5
  %732 = load i32, i32* %y.addr, align 4, !tbaa !5
  %idxprom1117 = sext i32 %732 to i64
  %733 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %line_ptrs1118 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %733, i32 0, i32 52
  %734 = load i8**, i8*** %line_ptrs1118, align 8, !tbaa !73
  %arrayidx1119 = getelementptr inbounds i8*, i8** %734, i64 %idxprom1117
  %735 = load i8*, i8** %arrayidx1119, align 8, !tbaa !1
  %736 = load i32, i32* %x.addr, align 4, !tbaa !5
  %shr1120 = ashr i32 %736, 3
  %idx.ext1121 = sext i32 %shr1120 to i64
  %add.ptr1122 = getelementptr inbounds i8, i8* %735, i64 %idx.ext1121
  store i8* %add.ptr1122, i8** %cdrow, align 8, !tbaa !1
  %737 = load i8*, i8** %cdrow, align 8, !tbaa !1
  %738 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %height1123 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %738, i32 0, i32 14
  %739 = load i32, i32* %height1123, align 4, !tbaa !75
  %740 = load i32, i32* %draster, align 4, !tbaa !5
  %mul1124 = mul i32 %739, %740
  %idx.ext1125 = zext i32 %mul1124 to i64
  %add.ptr1126 = getelementptr inbounds i8, i8* %737, i64 %idx.ext1125
  store i8* %add.ptr1126, i8** %mdrow, align 8, !tbaa !1
  %741 = load i8*, i8** %mdrow, align 8, !tbaa !1
  %742 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %height1127 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %742, i32 0, i32 14
  %743 = load i32, i32* %height1127, align 4, !tbaa !75
  %744 = load i32, i32* %draster, align 4, !tbaa !5
  %mul1128 = mul i32 %743, %744
  %idx.ext1129 = zext i32 %mul1128 to i64
  %add.ptr1130 = getelementptr inbounds i8, i8* %741, i64 %idx.ext1129
  store i8* %add.ptr1130, i8** %ydrow, align 8, !tbaa !1
  %745 = load i8*, i8** %ydrow, align 8, !tbaa !1
  %746 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %height1131 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %746, i32 0, i32 14
  %747 = load i32, i32* %height1131, align 4, !tbaa !75
  %748 = load i32, i32* %draster, align 4, !tbaa !5
  %mul1132 = mul i32 %747, %748
  %idx.ext1133 = zext i32 %mul1132 to i64
  %add.ptr1134 = getelementptr inbounds i8, i8* %745, i64 %idx.ext1133
  store i8* %add.ptr1134, i8** %kdrow, align 8, !tbaa !1
  %749 = load i32, i32* %dbit, align 4, !tbaa !5
  %shr1135 = ashr i32 255, %749
  %conv1136 = trunc i32 %shr1135 to i8
  store i8 %conv1136, i8* %lmask, align 1, !tbaa !85
  %750 = load i32, i32* %dbit, align 4, !tbaa !5
  %751 = load i32, i32* %width.addr, align 4, !tbaa !5
  %add1137 = add nsw i32 %751, %750
  store i32 %add1137, i32* %width.addr, align 4, !tbaa !5
  %752 = load i32, i32* %width.addr, align 4, !tbaa !5
  %sub1138 = sub nsw i32 %752, 1
  %neg1139 = xor i32 %sub1138, -1
  %and1140 = and i32 %neg1139, 7
  %shl1141 = shl i32 255, %and1140
  %conv1142 = trunc i32 %shl1141 to i8
  store i8 %conv1142, i8* %rmask, align 1, !tbaa !85
  %753 = load i32, i32* %width.addr, align 4, !tbaa !5
  %cmp1143 = icmp slt i32 %753, 8
  br i1 %cmp1143, label %if.then.1145, label %if.end.1150

if.then.1145:                                     ; preds = %if.end.1115
  %754 = load i8, i8* %rmask, align 1, !tbaa !85
  %conv1146 = zext i8 %754 to i32
  %755 = load i8, i8* %lmask, align 1, !tbaa !85
  %conv1147 = zext i8 %755 to i32
  %and1148 = and i32 %conv1147, %conv1146
  %conv1149 = trunc i32 %and1148 to i8
  store i8 %conv1149, i8* %lmask, align 1, !tbaa !85
  br label %if.end.1150

if.end.1150:                                      ; preds = %if.then.1145, %if.end.1115
  %756 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %cmp1151 = icmp eq i64* %756, null
  br i1 %cmp1151, label %if.then.1153, label %if.else.1738

if.then.1153:                                     ; preds = %if.end.1150
  %757 = bitcast i64 (i64, i64, i64)** %proc1154 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %757) #1
  %758 = load i32, i32* %rop, align 4, !tbaa !85
  %idxprom1155 = zext i32 %758 to i64
  %arrayidx1156 = getelementptr inbounds [256 x i64 (i64, i64, i64)*], [256 x i64 (i64, i64, i64)*]* @rop_proc_table, i32 0, i64 %idxprom1155
  %759 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %arrayidx1156, align 8, !tbaa !1
  store i64 (i64, i64, i64)* %759, i64 (i64, i64, i64)** %proc1154, align 8, !tbaa !1
  %760 = bitcast i32* %sbit1157 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %760) #1
  %761 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %and1158 = and i32 %761, 1
  store i32 %and1158, i32* %sbit1157, align 4, !tbaa !5
  %762 = bitcast i32* %sskew1159 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %762) #1
  %763 = load i32, i32* %sbit1157, align 4, !tbaa !5
  %764 = load i32, i32* %dbit, align 4, !tbaa !5
  %sub1160 = sub nsw i32 %763, %764
  store i32 %sub1160, i32* %sskew1159, align 4, !tbaa !5
  %765 = load i32, i32* %sskew1159, align 4, !tbaa !5
  %shr1161 = ashr i32 %765, 1
  %766 = load i8*, i8** %srow.addr, align 8, !tbaa !1
  %idx.ext1162 = sext i32 %shr1161 to i64
  %add.ptr1163 = getelementptr inbounds i8, i8* %766, i64 %idx.ext1162
  store i8* %add.ptr1163, i8** %srow.addr, align 8, !tbaa !1
  %767 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %shr1164 = ashr i32 %767, 1
  %768 = load i8*, i8** %srow.addr, align 8, !tbaa !1
  %idx.ext1165 = sext i32 %shr1164 to i64
  %add.ptr1166 = getelementptr inbounds i8, i8* %768, i64 %idx.ext1165
  store i8* %add.ptr1166, i8** %srow.addr, align 8, !tbaa !1
  br label %for.cond.1167

for.cond.1167:                                    ; preds = %for.inc.1726, %if.then.1153
  %769 = load i32, i32* %line_count, align 4, !tbaa !5
  %dec1168 = add nsw i32 %769, -1
  store i32 %dec1168, i32* %line_count, align 4, !tbaa !5
  %cmp1169 = icmp sgt i32 %769, 0
  br i1 %cmp1169, label %for.body.1171, label %for.end.1737

for.body.1171:                                    ; preds = %for.cond.1167
  %770 = bitcast i8** %cdptr1172 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %770) #1
  %771 = load i8*, i8** %cdrow, align 8, !tbaa !1
  store i8* %771, i8** %cdptr1172, align 8, !tbaa !1
  %772 = bitcast i8** %mdptr1173 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %772) #1
  %773 = load i8*, i8** %mdrow, align 8, !tbaa !1
  store i8* %773, i8** %mdptr1173, align 8, !tbaa !1
  %774 = bitcast i8** %ydptr1174 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %774) #1
  %775 = load i8*, i8** %ydrow, align 8, !tbaa !1
  store i8* %775, i8** %ydptr1174, align 8, !tbaa !1
  %776 = bitcast i8** %kdptr1175 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %776) #1
  %777 = load i8*, i8** %kdrow, align 8, !tbaa !1
  store i8* %777, i8** %kdptr1175, align 8, !tbaa !1
  %778 = bitcast i8** %sptr1176 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %778) #1
  %779 = load i8*, i8** %srow.addr, align 8, !tbaa !1
  store i8* %779, i8** %sptr1176, align 8, !tbaa !1
  %780 = bitcast i32* %left1177 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %780) #1
  %781 = load i32, i32* %width.addr, align 4, !tbaa !5
  %sub1178 = sub nsw i32 %781, 8
  store i32 %sub1178, i32* %left1177, align 4, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %kdbyte1179) #1
  %782 = load i8*, i8** %kdptr1175, align 8, !tbaa !1
  %783 = load i8, i8* %782, align 1, !tbaa !85
  store i8 %783, i8* %kdbyte1179, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %cdbyte1180) #1
  %784 = load i8*, i8** %cdptr1172, align 8, !tbaa !1
  %785 = load i8, i8* %784, align 1, !tbaa !85
  store i8 %785, i8* %cdbyte1180, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %mdbyte1181) #1
  %786 = load i8*, i8** %mdptr1173, align 8, !tbaa !1
  %787 = load i8, i8* %786, align 1, !tbaa !85
  store i8 %787, i8* %mdbyte1181, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %ydbyte1182) #1
  %788 = load i8*, i8** %ydptr1174, align 8, !tbaa !1
  %789 = load i8, i8* %788, align 1, !tbaa !85
  store i8 %789, i8* %ydbyte1182, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %cresult1183) #1
  call void @llvm.lifetime.start(i64 1, i8* %mresult1184) #1
  call void @llvm.lifetime.start(i64 1, i8* %yresult1185) #1
  call void @llvm.lifetime.start(i64 1, i8* %kresult1186) #1
  %790 = bitcast i32* %scol1187 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %790) #1
  store i32 0, i32* %scol1187, align 4, !tbaa !5
  %791 = load i32, i32* %sskew1159, align 4, !tbaa !5
  %and1188 = and i32 %791, 1
  %cmp1189 = icmp eq i32 %and1188, 0
  br i1 %cmp1189, label %if.then.1191, label %if.else.1232

if.then.1191:                                     ; preds = %for.body.1171
  %792 = load i32, i32* %sskew1159, align 4, !tbaa !5
  %cmp1192 = icmp sge i32 %792, 0
  br i1 %cmp1192, label %if.then.1194, label %if.end.1199

if.then.1194:                                     ; preds = %if.then.1191
  %793 = load i8*, i8** %sptr1176, align 8, !tbaa !1
  %arrayidx1195 = getelementptr inbounds i8, i8* %793, i64 0
  %794 = load i8, i8* %arrayidx1195, align 1, !tbaa !85
  %idxprom1196 = zext i8 %794 to i64
  %arrayidx1197 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom1196
  %795 = load i32, i32* %arrayidx1197, align 4, !tbaa !5
  %shl1198 = shl i32 %795, 6
  store i32 %shl1198, i32* %scol1187, align 4, !tbaa !5
  br label %if.end.1199

if.end.1199:                                      ; preds = %if.then.1194, %if.then.1191
  %796 = load i32, i32* %sskew1159, align 4, !tbaa !5
  %cmp1200 = icmp sge i32 %796, -2
  br i1 %cmp1200, label %land.lhs.true.1202, label %if.end.1211

land.lhs.true.1202:                               ; preds = %if.end.1199
  %797 = load i32, i32* %left1177, align 4, !tbaa !5
  %cmp1203 = icmp sgt i32 %797, -6
  br i1 %cmp1203, label %if.then.1205, label %if.end.1211

if.then.1205:                                     ; preds = %land.lhs.true.1202
  %798 = load i8*, i8** %sptr1176, align 8, !tbaa !1
  %arrayidx1206 = getelementptr inbounds i8, i8* %798, i64 1
  %799 = load i8, i8* %arrayidx1206, align 1, !tbaa !85
  %idxprom1207 = zext i8 %799 to i64
  %arrayidx1208 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom1207
  %800 = load i32, i32* %arrayidx1208, align 4, !tbaa !5
  %shl1209 = shl i32 %800, 4
  %801 = load i32, i32* %scol1187, align 4, !tbaa !5
  %or1210 = or i32 %801, %shl1209
  store i32 %or1210, i32* %scol1187, align 4, !tbaa !5
  br label %if.end.1211

if.end.1211:                                      ; preds = %if.then.1205, %land.lhs.true.1202, %if.end.1199
  %802 = load i32, i32* %sskew1159, align 4, !tbaa !5
  %cmp1212 = icmp sge i32 %802, -4
  br i1 %cmp1212, label %land.lhs.true.1214, label %if.end.1223

land.lhs.true.1214:                               ; preds = %if.end.1211
  %803 = load i32, i32* %left1177, align 4, !tbaa !5
  %cmp1215 = icmp sgt i32 %803, -4
  br i1 %cmp1215, label %if.then.1217, label %if.end.1223

if.then.1217:                                     ; preds = %land.lhs.true.1214
  %804 = load i8*, i8** %sptr1176, align 8, !tbaa !1
  %arrayidx1218 = getelementptr inbounds i8, i8* %804, i64 2
  %805 = load i8, i8* %arrayidx1218, align 1, !tbaa !85
  %idxprom1219 = zext i8 %805 to i64
  %arrayidx1220 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom1219
  %806 = load i32, i32* %arrayidx1220, align 4, !tbaa !5
  %shl1221 = shl i32 %806, 2
  %807 = load i32, i32* %scol1187, align 4, !tbaa !5
  %or1222 = or i32 %807, %shl1221
  store i32 %or1222, i32* %scol1187, align 4, !tbaa !5
  br label %if.end.1223

if.end.1223:                                      ; preds = %if.then.1217, %land.lhs.true.1214, %if.end.1211
  %808 = load i32, i32* %left1177, align 4, !tbaa !5
  %cmp1224 = icmp sgt i32 %808, -2
  br i1 %cmp1224, label %if.then.1226, label %if.end.1231

if.then.1226:                                     ; preds = %if.end.1223
  %809 = load i8*, i8** %sptr1176, align 8, !tbaa !1
  %arrayidx1227 = getelementptr inbounds i8, i8* %809, i64 3
  %810 = load i8, i8* %arrayidx1227, align 1, !tbaa !85
  %idxprom1228 = zext i8 %810 to i64
  %arrayidx1229 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom1228
  %811 = load i32, i32* %arrayidx1229, align 4, !tbaa !5
  %812 = load i32, i32* %scol1187, align 4, !tbaa !5
  %or1230 = or i32 %812, %811
  store i32 %or1230, i32* %scol1187, align 4, !tbaa !5
  br label %if.end.1231

if.end.1231:                                      ; preds = %if.then.1226, %if.end.1223
  br label %if.end.1290

if.else.1232:                                     ; preds = %for.body.1171
  %813 = load i32, i32* %sskew1159, align 4, !tbaa !5
  %cmp1233 = icmp sge i32 %813, 0
  br i1 %cmp1233, label %if.then.1235, label %if.end.1242

if.then.1235:                                     ; preds = %if.else.1232
  %814 = load i8*, i8** %sptr1176, align 8, !tbaa !1
  %arrayidx1236 = getelementptr inbounds i8, i8* %814, i64 0
  %815 = load i8, i8* %arrayidx1236, align 1, !tbaa !85
  %conv1237 = zext i8 %815 to i32
  %and1238 = and i32 %conv1237, 15
  %idxprom1239 = sext i32 %and1238 to i64
  %arrayidx1240 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom1239
  %816 = load i32, i32* %arrayidx1240, align 4, !tbaa !5
  %shl1241 = shl i32 %816, 7
  store i32 %shl1241, i32* %scol1187, align 4, !tbaa !5
  br label %if.end.1242

if.end.1242:                                      ; preds = %if.then.1235, %if.else.1232
  %817 = load i32, i32* %sskew1159, align 4, !tbaa !5
  %cmp1243 = icmp sge i32 %817, -2
  br i1 %cmp1243, label %land.lhs.true.1245, label %if.end.1254

land.lhs.true.1245:                               ; preds = %if.end.1242
  %818 = load i32, i32* %left1177, align 4, !tbaa !5
  %cmp1246 = icmp sgt i32 %818, -7
  br i1 %cmp1246, label %if.then.1248, label %if.end.1254

if.then.1248:                                     ; preds = %land.lhs.true.1245
  %819 = load i8*, i8** %sptr1176, align 8, !tbaa !1
  %arrayidx1249 = getelementptr inbounds i8, i8* %819, i64 1
  %820 = load i8, i8* %arrayidx1249, align 1, !tbaa !85
  %idxprom1250 = zext i8 %820 to i64
  %arrayidx1251 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom1250
  %821 = load i32, i32* %arrayidx1251, align 4, !tbaa !5
  %shl1252 = shl i32 %821, 5
  %822 = load i32, i32* %scol1187, align 4, !tbaa !5
  %or1253 = or i32 %822, %shl1252
  store i32 %or1253, i32* %scol1187, align 4, !tbaa !5
  br label %if.end.1254

if.end.1254:                                      ; preds = %if.then.1248, %land.lhs.true.1245, %if.end.1242
  %823 = load i32, i32* %sskew1159, align 4, !tbaa !5
  %cmp1255 = icmp sge i32 %823, -4
  br i1 %cmp1255, label %land.lhs.true.1257, label %if.end.1266

land.lhs.true.1257:                               ; preds = %if.end.1254
  %824 = load i32, i32* %left1177, align 4, !tbaa !5
  %cmp1258 = icmp sgt i32 %824, -5
  br i1 %cmp1258, label %if.then.1260, label %if.end.1266

if.then.1260:                                     ; preds = %land.lhs.true.1257
  %825 = load i8*, i8** %sptr1176, align 8, !tbaa !1
  %arrayidx1261 = getelementptr inbounds i8, i8* %825, i64 2
  %826 = load i8, i8* %arrayidx1261, align 1, !tbaa !85
  %idxprom1262 = zext i8 %826 to i64
  %arrayidx1263 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom1262
  %827 = load i32, i32* %arrayidx1263, align 4, !tbaa !5
  %shl1264 = shl i32 %827, 3
  %828 = load i32, i32* %scol1187, align 4, !tbaa !5
  %or1265 = or i32 %828, %shl1264
  store i32 %or1265, i32* %scol1187, align 4, !tbaa !5
  br label %if.end.1266

if.end.1266:                                      ; preds = %if.then.1260, %land.lhs.true.1257, %if.end.1254
  %829 = load i32, i32* %sskew1159, align 4, !tbaa !5
  %cmp1267 = icmp sge i32 %829, -6
  br i1 %cmp1267, label %land.lhs.true.1269, label %if.end.1278

land.lhs.true.1269:                               ; preds = %if.end.1266
  %830 = load i32, i32* %left1177, align 4, !tbaa !5
  %cmp1270 = icmp sgt i32 %830, -3
  br i1 %cmp1270, label %if.then.1272, label %if.end.1278

if.then.1272:                                     ; preds = %land.lhs.true.1269
  %831 = load i8*, i8** %sptr1176, align 8, !tbaa !1
  %arrayidx1273 = getelementptr inbounds i8, i8* %831, i64 3
  %832 = load i8, i8* %arrayidx1273, align 1, !tbaa !85
  %idxprom1274 = zext i8 %832 to i64
  %arrayidx1275 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom1274
  %833 = load i32, i32* %arrayidx1275, align 4, !tbaa !5
  %shl1276 = shl i32 %833, 1
  %834 = load i32, i32* %scol1187, align 4, !tbaa !5
  %or1277 = or i32 %834, %shl1276
  store i32 %or1277, i32* %scol1187, align 4, !tbaa !5
  br label %if.end.1278

if.end.1278:                                      ; preds = %if.then.1272, %land.lhs.true.1269, %if.end.1266
  %835 = load i32, i32* %left1177, align 4, !tbaa !5
  %cmp1279 = icmp sgt i32 %835, -1
  br i1 %cmp1279, label %if.then.1281, label %if.end.1289

if.then.1281:                                     ; preds = %if.end.1278
  %836 = load i8*, i8** %sptr1176, align 8, !tbaa !1
  %arrayidx1282 = getelementptr inbounds i8, i8* %836, i64 4
  %837 = load i8, i8* %arrayidx1282, align 1, !tbaa !85
  %conv1283 = zext i8 %837 to i32
  %and1284 = and i32 %conv1283, 240
  %idxprom1285 = sext i32 %and1284 to i64
  %arrayidx1286 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom1285
  %838 = load i32, i32* %arrayidx1286, align 4, !tbaa !5
  %shr1287 = lshr i32 %838, 1
  %839 = load i32, i32* %scol1187, align 4, !tbaa !5
  %or1288 = or i32 %839, %shr1287
  store i32 %or1288, i32* %scol1187, align 4, !tbaa !5
  br label %if.end.1289

if.end.1289:                                      ; preds = %if.then.1281, %if.end.1278
  br label %if.end.1290

if.end.1290:                                      ; preds = %if.end.1289, %if.end.1231
  %840 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc1154, align 8, !tbaa !1
  %841 = load i8, i8* %cdbyte1180, align 1, !tbaa !85
  %conv1291 = zext i8 %841 to i32
  %842 = load i8, i8* %kdbyte1179, align 1, !tbaa !85
  %conv1292 = zext i8 %842 to i32
  %or1293 = or i32 %conv1291, %conv1292
  %conv1294 = sext i32 %or1293 to i64
  %843 = load i32, i32* %scol1187, align 4, !tbaa !5
  %844 = load i32, i32* %scol1187, align 4, !tbaa !5
  %shr1295 = lshr i32 %844, 24
  %or1296 = or i32 %843, %shr1295
  %conv1297 = zext i32 %or1296 to i64
  %845 = load i32, i32* %ctcolor, align 4, !tbaa !5
  %conv1298 = sext i32 %845 to i64
  %call1299 = call i64 %840(i64 %conv1294, i64 %conv1297, i64 %conv1298) #4
  %conv1300 = trunc i64 %call1299 to i8
  store i8 %conv1300, i8* %cresult1183, align 1, !tbaa !85
  %846 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc1154, align 8, !tbaa !1
  %847 = load i8, i8* %mdbyte1181, align 1, !tbaa !85
  %conv1301 = zext i8 %847 to i32
  %848 = load i8, i8* %kdbyte1179, align 1, !tbaa !85
  %conv1302 = zext i8 %848 to i32
  %or1303 = or i32 %conv1301, %conv1302
  %conv1304 = sext i32 %or1303 to i64
  %849 = load i32, i32* %scol1187, align 4, !tbaa !5
  %850 = load i32, i32* %scol1187, align 4, !tbaa !5
  %shr1305 = lshr i32 %850, 16
  %or1306 = or i32 %849, %shr1305
  %conv1307 = zext i32 %or1306 to i64
  %851 = load i32, i32* %mtcolor, align 4, !tbaa !5
  %conv1308 = sext i32 %851 to i64
  %call1309 = call i64 %846(i64 %conv1304, i64 %conv1307, i64 %conv1308) #4
  %conv1310 = trunc i64 %call1309 to i8
  store i8 %conv1310, i8* %mresult1184, align 1, !tbaa !85
  %852 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc1154, align 8, !tbaa !1
  %853 = load i8, i8* %ydbyte1182, align 1, !tbaa !85
  %conv1311 = zext i8 %853 to i32
  %854 = load i8, i8* %kdbyte1179, align 1, !tbaa !85
  %conv1312 = zext i8 %854 to i32
  %or1313 = or i32 %conv1311, %conv1312
  %conv1314 = sext i32 %or1313 to i64
  %855 = load i32, i32* %scol1187, align 4, !tbaa !5
  %856 = load i32, i32* %scol1187, align 4, !tbaa !5
  %shr1315 = lshr i32 %856, 8
  %or1316 = or i32 %855, %shr1315
  %conv1317 = zext i32 %or1316 to i64
  %857 = load i32, i32* %ytcolor, align 4, !tbaa !5
  %conv1318 = sext i32 %857 to i64
  %call1319 = call i64 %852(i64 %conv1314, i64 %conv1317, i64 %conv1318) #4
  %conv1320 = trunc i64 %call1319 to i8
  store i8 %conv1320, i8* %yresult1185, align 1, !tbaa !85
  %858 = load i8, i8* %cresult1183, align 1, !tbaa !85
  %conv1321 = zext i8 %858 to i32
  %859 = load i8, i8* %mresult1184, align 1, !tbaa !85
  %conv1322 = zext i8 %859 to i32
  %and1323 = and i32 %conv1321, %conv1322
  %860 = load i8, i8* %yresult1185, align 1, !tbaa !85
  %conv1324 = zext i8 %860 to i32
  %and1325 = and i32 %and1323, %conv1324
  %conv1326 = trunc i32 %and1325 to i8
  store i8 %conv1326, i8* %kresult1186, align 1, !tbaa !85
  %861 = load i8, i8* %kresult1186, align 1, !tbaa !85
  %conv1327 = zext i8 %861 to i32
  %neg1328 = xor i32 %conv1327, -1
  %862 = load i8, i8* %cresult1183, align 1, !tbaa !85
  %conv1329 = zext i8 %862 to i32
  %and1330 = and i32 %conv1329, %neg1328
  %conv1331 = trunc i32 %and1330 to i8
  store i8 %conv1331, i8* %cresult1183, align 1, !tbaa !85
  %863 = load i8, i8* %kresult1186, align 1, !tbaa !85
  %conv1332 = zext i8 %863 to i32
  %neg1333 = xor i32 %conv1332, -1
  %864 = load i8, i8* %mresult1184, align 1, !tbaa !85
  %conv1334 = zext i8 %864 to i32
  %and1335 = and i32 %conv1334, %neg1333
  %conv1336 = trunc i32 %and1335 to i8
  store i8 %conv1336, i8* %mresult1184, align 1, !tbaa !85
  %865 = load i8, i8* %kresult1186, align 1, !tbaa !85
  %conv1337 = zext i8 %865 to i32
  %neg1338 = xor i32 %conv1337, -1
  %866 = load i8, i8* %yresult1185, align 1, !tbaa !85
  %conv1339 = zext i8 %866 to i32
  %and1340 = and i32 %conv1339, %neg1338
  %conv1341 = trunc i32 %and1340 to i8
  store i8 %conv1341, i8* %yresult1185, align 1, !tbaa !85
  %867 = load i8, i8* %cresult1183, align 1, !tbaa !85
  %conv1342 = zext i8 %867 to i32
  %868 = load i8, i8* %lmask, align 1, !tbaa !85
  %conv1343 = zext i8 %868 to i32
  %and1344 = and i32 %conv1342, %conv1343
  %869 = load i8, i8* %cdbyte1180, align 1, !tbaa !85
  %conv1345 = zext i8 %869 to i32
  %870 = load i8, i8* %lmask, align 1, !tbaa !85
  %conv1346 = zext i8 %870 to i32
  %neg1347 = xor i32 %conv1346, -1
  %and1348 = and i32 %conv1345, %neg1347
  %or1349 = or i32 %and1344, %and1348
  %conv1350 = trunc i32 %or1349 to i8
  %871 = load i8*, i8** %cdptr1172, align 8, !tbaa !1
  %incdec.ptr1351 = getelementptr inbounds i8, i8* %871, i32 1
  store i8* %incdec.ptr1351, i8** %cdptr1172, align 8, !tbaa !1
  store i8 %conv1350, i8* %871, align 1, !tbaa !85
  %872 = load i8, i8* %mresult1184, align 1, !tbaa !85
  %conv1352 = zext i8 %872 to i32
  %873 = load i8, i8* %lmask, align 1, !tbaa !85
  %conv1353 = zext i8 %873 to i32
  %and1354 = and i32 %conv1352, %conv1353
  %874 = load i8, i8* %mdbyte1181, align 1, !tbaa !85
  %conv1355 = zext i8 %874 to i32
  %875 = load i8, i8* %lmask, align 1, !tbaa !85
  %conv1356 = zext i8 %875 to i32
  %neg1357 = xor i32 %conv1356, -1
  %and1358 = and i32 %conv1355, %neg1357
  %or1359 = or i32 %and1354, %and1358
  %conv1360 = trunc i32 %or1359 to i8
  %876 = load i8*, i8** %mdptr1173, align 8, !tbaa !1
  %incdec.ptr1361 = getelementptr inbounds i8, i8* %876, i32 1
  store i8* %incdec.ptr1361, i8** %mdptr1173, align 8, !tbaa !1
  store i8 %conv1360, i8* %876, align 1, !tbaa !85
  %877 = load i8, i8* %yresult1185, align 1, !tbaa !85
  %conv1362 = zext i8 %877 to i32
  %878 = load i8, i8* %lmask, align 1, !tbaa !85
  %conv1363 = zext i8 %878 to i32
  %and1364 = and i32 %conv1362, %conv1363
  %879 = load i8, i8* %ydbyte1182, align 1, !tbaa !85
  %conv1365 = zext i8 %879 to i32
  %880 = load i8, i8* %lmask, align 1, !tbaa !85
  %conv1366 = zext i8 %880 to i32
  %neg1367 = xor i32 %conv1366, -1
  %and1368 = and i32 %conv1365, %neg1367
  %or1369 = or i32 %and1364, %and1368
  %conv1370 = trunc i32 %or1369 to i8
  %881 = load i8*, i8** %ydptr1174, align 8, !tbaa !1
  %incdec.ptr1371 = getelementptr inbounds i8, i8* %881, i32 1
  store i8* %incdec.ptr1371, i8** %ydptr1174, align 8, !tbaa !1
  store i8 %conv1370, i8* %881, align 1, !tbaa !85
  %882 = load i8, i8* %kresult1186, align 1, !tbaa !85
  %conv1372 = zext i8 %882 to i32
  %883 = load i8, i8* %lmask, align 1, !tbaa !85
  %conv1373 = zext i8 %883 to i32
  %and1374 = and i32 %conv1372, %conv1373
  %884 = load i8, i8* %kdbyte1179, align 1, !tbaa !85
  %conv1375 = zext i8 %884 to i32
  %885 = load i8, i8* %lmask, align 1, !tbaa !85
  %conv1376 = zext i8 %885 to i32
  %neg1377 = xor i32 %conv1376, -1
  %and1378 = and i32 %conv1375, %neg1377
  %or1379 = or i32 %and1374, %and1378
  %conv1380 = trunc i32 %or1379 to i8
  %886 = load i8*, i8** %kdptr1175, align 8, !tbaa !1
  %incdec.ptr1381 = getelementptr inbounds i8, i8* %886, i32 1
  store i8* %incdec.ptr1381, i8** %kdptr1175, align 8, !tbaa !1
  store i8 %conv1380, i8* %886, align 1, !tbaa !85
  %887 = bitcast i32* %scol1187 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %887) #1
  call void @llvm.lifetime.end(i64 1, i8* %kresult1186) #1
  call void @llvm.lifetime.end(i64 1, i8* %yresult1185) #1
  call void @llvm.lifetime.end(i64 1, i8* %mresult1184) #1
  call void @llvm.lifetime.end(i64 1, i8* %cresult1183) #1
  call void @llvm.lifetime.end(i64 1, i8* %ydbyte1182) #1
  call void @llvm.lifetime.end(i64 1, i8* %mdbyte1181) #1
  call void @llvm.lifetime.end(i64 1, i8* %cdbyte1180) #1
  call void @llvm.lifetime.end(i64 1, i8* %kdbyte1179) #1
  %888 = load i32, i32* %left1177, align 4, !tbaa !5
  %cmp1382 = icmp sle i32 %888, 0
  br i1 %cmp1382, label %if.then.1384, label %if.end.1385

if.then.1384:                                     ; preds = %if.end.1290
  store i32 19, i32* %cleanup.dest.slot
  br label %cleanup.1718

if.end.1385:                                      ; preds = %if.end.1290
  %889 = load i8*, i8** %sptr1176, align 8, !tbaa !1
  %add.ptr1386 = getelementptr inbounds i8, i8* %889, i64 4
  store i8* %add.ptr1386, i8** %sptr1176, align 8, !tbaa !1
  %890 = load i32, i32* %left1177, align 4, !tbaa !5
  %sub1387 = sub nsw i32 %890, 8
  store i32 %sub1387, i32* %left1177, align 4, !tbaa !5
  br label %while.cond.1388

while.cond.1388:                                  ; preds = %if.end.1464, %if.end.1385
  %891 = load i32, i32* %left1177, align 4, !tbaa !5
  %cmp1389 = icmp sgt i32 %891, 0
  br i1 %cmp1389, label %while.body.1391, label %while.end.1537

while.body.1391:                                  ; preds = %while.cond.1388
  call void @llvm.lifetime.start(i64 1, i8* %kdbyte1392) #1
  %892 = load i8*, i8** %kdptr1175, align 8, !tbaa !1
  %893 = load i8, i8* %892, align 1, !tbaa !85
  store i8 %893, i8* %kdbyte1392, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %cdbyte1393) #1
  %894 = load i8*, i8** %cdptr1172, align 8, !tbaa !1
  %895 = load i8, i8* %894, align 1, !tbaa !85
  %conv1394 = zext i8 %895 to i32
  %896 = load i8, i8* %kdbyte1392, align 1, !tbaa !85
  %conv1395 = zext i8 %896 to i32
  %or1396 = or i32 %conv1394, %conv1395
  %conv1397 = trunc i32 %or1396 to i8
  store i8 %conv1397, i8* %cdbyte1393, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %mdbyte1398) #1
  %897 = load i8*, i8** %mdptr1173, align 8, !tbaa !1
  %898 = load i8, i8* %897, align 1, !tbaa !85
  %conv1399 = zext i8 %898 to i32
  %899 = load i8, i8* %kdbyte1392, align 1, !tbaa !85
  %conv1400 = zext i8 %899 to i32
  %or1401 = or i32 %conv1399, %conv1400
  %conv1402 = trunc i32 %or1401 to i8
  store i8 %conv1402, i8* %mdbyte1398, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %ydbyte1403) #1
  %900 = load i8*, i8** %ydptr1174, align 8, !tbaa !1
  %901 = load i8, i8* %900, align 1, !tbaa !85
  %conv1404 = zext i8 %901 to i32
  %902 = load i8, i8* %kdbyte1392, align 1, !tbaa !85
  %conv1405 = zext i8 %902 to i32
  %or1406 = or i32 %conv1404, %conv1405
  %conv1407 = trunc i32 %or1406 to i8
  store i8 %conv1407, i8* %ydbyte1403, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %cresult1408) #1
  call void @llvm.lifetime.start(i64 1, i8* %mresult1409) #1
  call void @llvm.lifetime.start(i64 1, i8* %yresult1410) #1
  call void @llvm.lifetime.start(i64 1, i8* %kresult1411) #1
  %903 = bitcast i32* %scol1412 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %903) #1
  %904 = load i32, i32* %sskew1159, align 4, !tbaa !5
  %and1413 = and i32 %904, 1
  %cmp1414 = icmp eq i32 %and1413, 0
  br i1 %cmp1414, label %if.then.1416, label %if.else.1435

if.then.1416:                                     ; preds = %while.body.1391
  %905 = load i8*, i8** %sptr1176, align 8, !tbaa !1
  %arrayidx1417 = getelementptr inbounds i8, i8* %905, i64 0
  %906 = load i8, i8* %arrayidx1417, align 1, !tbaa !85
  %idxprom1418 = zext i8 %906 to i64
  %arrayidx1419 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom1418
  %907 = load i32, i32* %arrayidx1419, align 4, !tbaa !5
  %shl1420 = shl i32 %907, 6
  store i32 %shl1420, i32* %scol1412, align 4, !tbaa !5
  %908 = load i8*, i8** %sptr1176, align 8, !tbaa !1
  %arrayidx1421 = getelementptr inbounds i8, i8* %908, i64 1
  %909 = load i8, i8* %arrayidx1421, align 1, !tbaa !85
  %idxprom1422 = zext i8 %909 to i64
  %arrayidx1423 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom1422
  %910 = load i32, i32* %arrayidx1423, align 4, !tbaa !5
  %shl1424 = shl i32 %910, 4
  %911 = load i32, i32* %scol1412, align 4, !tbaa !5
  %or1425 = or i32 %911, %shl1424
  store i32 %or1425, i32* %scol1412, align 4, !tbaa !5
  %912 = load i8*, i8** %sptr1176, align 8, !tbaa !1
  %arrayidx1426 = getelementptr inbounds i8, i8* %912, i64 2
  %913 = load i8, i8* %arrayidx1426, align 1, !tbaa !85
  %idxprom1427 = zext i8 %913 to i64
  %arrayidx1428 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom1427
  %914 = load i32, i32* %arrayidx1428, align 4, !tbaa !5
  %shl1429 = shl i32 %914, 2
  %915 = load i32, i32* %scol1412, align 4, !tbaa !5
  %or1430 = or i32 %915, %shl1429
  store i32 %or1430, i32* %scol1412, align 4, !tbaa !5
  %916 = load i8*, i8** %sptr1176, align 8, !tbaa !1
  %arrayidx1431 = getelementptr inbounds i8, i8* %916, i64 3
  %917 = load i8, i8* %arrayidx1431, align 1, !tbaa !85
  %idxprom1432 = zext i8 %917 to i64
  %arrayidx1433 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom1432
  %918 = load i32, i32* %arrayidx1433, align 4, !tbaa !5
  %919 = load i32, i32* %scol1412, align 4, !tbaa !5
  %or1434 = or i32 %919, %918
  store i32 %or1434, i32* %scol1412, align 4, !tbaa !5
  br label %if.end.1464

if.else.1435:                                     ; preds = %while.body.1391
  %920 = load i8*, i8** %sptr1176, align 8, !tbaa !1
  %arrayidx1436 = getelementptr inbounds i8, i8* %920, i64 0
  %921 = load i8, i8* %arrayidx1436, align 1, !tbaa !85
  %conv1437 = zext i8 %921 to i32
  %and1438 = and i32 %conv1437, 15
  %idxprom1439 = sext i32 %and1438 to i64
  %arrayidx1440 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom1439
  %922 = load i32, i32* %arrayidx1440, align 4, !tbaa !5
  %shl1441 = shl i32 %922, 7
  store i32 %shl1441, i32* %scol1412, align 4, !tbaa !5
  %923 = load i8*, i8** %sptr1176, align 8, !tbaa !1
  %arrayidx1442 = getelementptr inbounds i8, i8* %923, i64 1
  %924 = load i8, i8* %arrayidx1442, align 1, !tbaa !85
  %idxprom1443 = zext i8 %924 to i64
  %arrayidx1444 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom1443
  %925 = load i32, i32* %arrayidx1444, align 4, !tbaa !5
  %shl1445 = shl i32 %925, 5
  %926 = load i32, i32* %scol1412, align 4, !tbaa !5
  %or1446 = or i32 %926, %shl1445
  store i32 %or1446, i32* %scol1412, align 4, !tbaa !5
  %927 = load i8*, i8** %sptr1176, align 8, !tbaa !1
  %arrayidx1447 = getelementptr inbounds i8, i8* %927, i64 2
  %928 = load i8, i8* %arrayidx1447, align 1, !tbaa !85
  %idxprom1448 = zext i8 %928 to i64
  %arrayidx1449 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom1448
  %929 = load i32, i32* %arrayidx1449, align 4, !tbaa !5
  %shl1450 = shl i32 %929, 3
  %930 = load i32, i32* %scol1412, align 4, !tbaa !5
  %or1451 = or i32 %930, %shl1450
  store i32 %or1451, i32* %scol1412, align 4, !tbaa !5
  %931 = load i8*, i8** %sptr1176, align 8, !tbaa !1
  %arrayidx1452 = getelementptr inbounds i8, i8* %931, i64 3
  %932 = load i8, i8* %arrayidx1452, align 1, !tbaa !85
  %idxprom1453 = zext i8 %932 to i64
  %arrayidx1454 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom1453
  %933 = load i32, i32* %arrayidx1454, align 4, !tbaa !5
  %shl1455 = shl i32 %933, 1
  %934 = load i32, i32* %scol1412, align 4, !tbaa !5
  %or1456 = or i32 %934, %shl1455
  store i32 %or1456, i32* %scol1412, align 4, !tbaa !5
  %935 = load i8*, i8** %sptr1176, align 8, !tbaa !1
  %arrayidx1457 = getelementptr inbounds i8, i8* %935, i64 4
  %936 = load i8, i8* %arrayidx1457, align 1, !tbaa !85
  %conv1458 = zext i8 %936 to i32
  %and1459 = and i32 %conv1458, 240
  %idxprom1460 = sext i32 %and1459 to i64
  %arrayidx1461 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom1460
  %937 = load i32, i32* %arrayidx1461, align 4, !tbaa !5
  %shr1462 = lshr i32 %937, 1
  %938 = load i32, i32* %scol1412, align 4, !tbaa !5
  %or1463 = or i32 %938, %shr1462
  store i32 %or1463, i32* %scol1412, align 4, !tbaa !5
  br label %if.end.1464

if.end.1464:                                      ; preds = %if.else.1435, %if.then.1416
  %939 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc1154, align 8, !tbaa !1
  %940 = load i8, i8* %cdbyte1393, align 1, !tbaa !85
  %conv1465 = zext i8 %940 to i32
  %941 = load i8, i8* %kdbyte1392, align 1, !tbaa !85
  %conv1466 = zext i8 %941 to i32
  %or1467 = or i32 %conv1465, %conv1466
  %conv1468 = sext i32 %or1467 to i64
  %942 = load i32, i32* %scol1412, align 4, !tbaa !5
  %943 = load i32, i32* %scol1412, align 4, !tbaa !5
  %shr1469 = lshr i32 %943, 24
  %or1470 = or i32 %942, %shr1469
  %conv1471 = zext i32 %or1470 to i64
  %944 = load i32, i32* %ctcolor, align 4, !tbaa !5
  %conv1472 = sext i32 %944 to i64
  %call1473 = call i64 %939(i64 %conv1468, i64 %conv1471, i64 %conv1472) #4
  %conv1474 = trunc i64 %call1473 to i8
  store i8 %conv1474, i8* %cresult1408, align 1, !tbaa !85
  %945 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc1154, align 8, !tbaa !1
  %946 = load i8, i8* %mdbyte1398, align 1, !tbaa !85
  %conv1475 = zext i8 %946 to i32
  %947 = load i8, i8* %kdbyte1392, align 1, !tbaa !85
  %conv1476 = zext i8 %947 to i32
  %or1477 = or i32 %conv1475, %conv1476
  %conv1478 = sext i32 %or1477 to i64
  %948 = load i32, i32* %scol1412, align 4, !tbaa !5
  %949 = load i32, i32* %scol1412, align 4, !tbaa !5
  %shr1479 = lshr i32 %949, 16
  %or1480 = or i32 %948, %shr1479
  %conv1481 = zext i32 %or1480 to i64
  %950 = load i32, i32* %mtcolor, align 4, !tbaa !5
  %conv1482 = sext i32 %950 to i64
  %call1483 = call i64 %945(i64 %conv1478, i64 %conv1481, i64 %conv1482) #4
  %conv1484 = trunc i64 %call1483 to i8
  store i8 %conv1484, i8* %mresult1409, align 1, !tbaa !85
  %951 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc1154, align 8, !tbaa !1
  %952 = load i8, i8* %ydbyte1403, align 1, !tbaa !85
  %conv1485 = zext i8 %952 to i32
  %953 = load i8, i8* %kdbyte1392, align 1, !tbaa !85
  %conv1486 = zext i8 %953 to i32
  %or1487 = or i32 %conv1485, %conv1486
  %conv1488 = sext i32 %or1487 to i64
  %954 = load i32, i32* %scol1412, align 4, !tbaa !5
  %955 = load i32, i32* %scol1412, align 4, !tbaa !5
  %shr1489 = lshr i32 %955, 8
  %or1490 = or i32 %954, %shr1489
  %conv1491 = zext i32 %or1490 to i64
  %956 = load i32, i32* %ytcolor, align 4, !tbaa !5
  %conv1492 = sext i32 %956 to i64
  %call1493 = call i64 %951(i64 %conv1488, i64 %conv1491, i64 %conv1492) #4
  %conv1494 = trunc i64 %call1493 to i8
  store i8 %conv1494, i8* %yresult1410, align 1, !tbaa !85
  %957 = load i8, i8* %cresult1408, align 1, !tbaa !85
  %conv1495 = zext i8 %957 to i32
  %958 = load i8, i8* %mresult1409, align 1, !tbaa !85
  %conv1496 = zext i8 %958 to i32
  %and1497 = and i32 %conv1495, %conv1496
  %959 = load i8, i8* %yresult1410, align 1, !tbaa !85
  %conv1498 = zext i8 %959 to i32
  %and1499 = and i32 %and1497, %conv1498
  %conv1500 = trunc i32 %and1499 to i8
  store i8 %conv1500, i8* %kresult1411, align 1, !tbaa !85
  %960 = load i8, i8* %kresult1411, align 1, !tbaa !85
  %conv1501 = zext i8 %960 to i32
  %neg1502 = xor i32 %conv1501, -1
  %961 = load i8, i8* %cresult1408, align 1, !tbaa !85
  %conv1503 = zext i8 %961 to i32
  %and1504 = and i32 %conv1503, %neg1502
  %conv1505 = trunc i32 %and1504 to i8
  store i8 %conv1505, i8* %cresult1408, align 1, !tbaa !85
  %962 = load i8, i8* %kresult1411, align 1, !tbaa !85
  %conv1506 = zext i8 %962 to i32
  %neg1507 = xor i32 %conv1506, -1
  %963 = load i8, i8* %mresult1409, align 1, !tbaa !85
  %conv1508 = zext i8 %963 to i32
  %and1509 = and i32 %conv1508, %neg1507
  %conv1510 = trunc i32 %and1509 to i8
  store i8 %conv1510, i8* %mresult1409, align 1, !tbaa !85
  %964 = load i8, i8* %kresult1411, align 1, !tbaa !85
  %conv1511 = zext i8 %964 to i32
  %neg1512 = xor i32 %conv1511, -1
  %965 = load i8, i8* %yresult1410, align 1, !tbaa !85
  %conv1513 = zext i8 %965 to i32
  %and1514 = and i32 %conv1513, %neg1512
  %conv1515 = trunc i32 %and1514 to i8
  store i8 %conv1515, i8* %yresult1410, align 1, !tbaa !85
  %966 = load i8, i8* %cresult1408, align 1, !tbaa !85
  %conv1516 = zext i8 %966 to i32
  %967 = load i8, i8* %kresult1411, align 1, !tbaa !85
  %conv1517 = zext i8 %967 to i32
  %neg1518 = xor i32 %conv1517, -1
  %and1519 = and i32 %conv1516, %neg1518
  %conv1520 = trunc i32 %and1519 to i8
  %968 = load i8*, i8** %cdptr1172, align 8, !tbaa !1
  %incdec.ptr1521 = getelementptr inbounds i8, i8* %968, i32 1
  store i8* %incdec.ptr1521, i8** %cdptr1172, align 8, !tbaa !1
  store i8 %conv1520, i8* %968, align 1, !tbaa !85
  %969 = load i8, i8* %mresult1409, align 1, !tbaa !85
  %conv1522 = zext i8 %969 to i32
  %970 = load i8, i8* %kresult1411, align 1, !tbaa !85
  %conv1523 = zext i8 %970 to i32
  %neg1524 = xor i32 %conv1523, -1
  %and1525 = and i32 %conv1522, %neg1524
  %conv1526 = trunc i32 %and1525 to i8
  %971 = load i8*, i8** %mdptr1173, align 8, !tbaa !1
  %incdec.ptr1527 = getelementptr inbounds i8, i8* %971, i32 1
  store i8* %incdec.ptr1527, i8** %mdptr1173, align 8, !tbaa !1
  store i8 %conv1526, i8* %971, align 1, !tbaa !85
  %972 = load i8, i8* %yresult1410, align 1, !tbaa !85
  %conv1528 = zext i8 %972 to i32
  %973 = load i8, i8* %kresult1411, align 1, !tbaa !85
  %conv1529 = zext i8 %973 to i32
  %neg1530 = xor i32 %conv1529, -1
  %and1531 = and i32 %conv1528, %neg1530
  %conv1532 = trunc i32 %and1531 to i8
  %974 = load i8*, i8** %ydptr1174, align 8, !tbaa !1
  %incdec.ptr1533 = getelementptr inbounds i8, i8* %974, i32 1
  store i8* %incdec.ptr1533, i8** %ydptr1174, align 8, !tbaa !1
  store i8 %conv1532, i8* %974, align 1, !tbaa !85
  %975 = load i8, i8* %kresult1411, align 1, !tbaa !85
  %976 = load i8*, i8** %kdptr1175, align 8, !tbaa !1
  %incdec.ptr1534 = getelementptr inbounds i8, i8* %976, i32 1
  store i8* %incdec.ptr1534, i8** %kdptr1175, align 8, !tbaa !1
  store i8 %975, i8* %976, align 1, !tbaa !85
  %977 = load i8*, i8** %sptr1176, align 8, !tbaa !1
  %add.ptr1535 = getelementptr inbounds i8, i8* %977, i64 4
  store i8* %add.ptr1535, i8** %sptr1176, align 8, !tbaa !1
  %978 = load i32, i32* %left1177, align 4, !tbaa !5
  %sub1536 = sub nsw i32 %978, 8
  store i32 %sub1536, i32* %left1177, align 4, !tbaa !5
  %979 = bitcast i32* %scol1412 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %979) #1
  call void @llvm.lifetime.end(i64 1, i8* %kresult1411) #1
  call void @llvm.lifetime.end(i64 1, i8* %yresult1410) #1
  call void @llvm.lifetime.end(i64 1, i8* %mresult1409) #1
  call void @llvm.lifetime.end(i64 1, i8* %cresult1408) #1
  call void @llvm.lifetime.end(i64 1, i8* %ydbyte1403) #1
  call void @llvm.lifetime.end(i64 1, i8* %mdbyte1398) #1
  call void @llvm.lifetime.end(i64 1, i8* %cdbyte1393) #1
  call void @llvm.lifetime.end(i64 1, i8* %kdbyte1392) #1
  br label %while.cond.1388

while.end.1537:                                   ; preds = %while.cond.1388
  call void @llvm.lifetime.start(i64 1, i8* %kdbyte1538) #1
  %980 = load i8*, i8** %kdptr1175, align 8, !tbaa !1
  %981 = load i8, i8* %980, align 1, !tbaa !85
  store i8 %981, i8* %kdbyte1538, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %cdbyte1539) #1
  %982 = load i8*, i8** %cdptr1172, align 8, !tbaa !1
  %983 = load i8, i8* %982, align 1, !tbaa !85
  store i8 %983, i8* %cdbyte1539, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %mdbyte1540) #1
  %984 = load i8*, i8** %mdptr1173, align 8, !tbaa !1
  %985 = load i8, i8* %984, align 1, !tbaa !85
  store i8 %985, i8* %mdbyte1540, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %ydbyte1541) #1
  %986 = load i8*, i8** %ydptr1174, align 8, !tbaa !1
  %987 = load i8, i8* %986, align 1, !tbaa !85
  store i8 %987, i8* %ydbyte1541, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %cresult1542) #1
  call void @llvm.lifetime.start(i64 1, i8* %mresult1543) #1
  call void @llvm.lifetime.start(i64 1, i8* %yresult1544) #1
  call void @llvm.lifetime.start(i64 1, i8* %kresult1545) #1
  %988 = bitcast i32* %scol1546 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %988) #1
  %989 = load i32, i32* %sskew1159, align 4, !tbaa !5
  %and1547 = and i32 %989, 1
  %cmp1548 = icmp eq i32 %and1547, 0
  br i1 %cmp1548, label %if.then.1550, label %if.else.1581

if.then.1550:                                     ; preds = %while.end.1537
  %990 = load i8*, i8** %sptr1176, align 8, !tbaa !1
  %arrayidx1551 = getelementptr inbounds i8, i8* %990, i64 0
  %991 = load i8, i8* %arrayidx1551, align 1, !tbaa !85
  %idxprom1552 = zext i8 %991 to i64
  %arrayidx1553 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom1552
  %992 = load i32, i32* %arrayidx1553, align 4, !tbaa !5
  %shl1554 = shl i32 %992, 6
  store i32 %shl1554, i32* %scol1546, align 4, !tbaa !5
  %993 = load i32, i32* %left1177, align 4, !tbaa !5
  %cmp1555 = icmp sgt i32 %993, -6
  br i1 %cmp1555, label %if.then.1557, label %if.end.1563

if.then.1557:                                     ; preds = %if.then.1550
  %994 = load i8*, i8** %sptr1176, align 8, !tbaa !1
  %arrayidx1558 = getelementptr inbounds i8, i8* %994, i64 1
  %995 = load i8, i8* %arrayidx1558, align 1, !tbaa !85
  %idxprom1559 = zext i8 %995 to i64
  %arrayidx1560 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom1559
  %996 = load i32, i32* %arrayidx1560, align 4, !tbaa !5
  %shl1561 = shl i32 %996, 4
  %997 = load i32, i32* %scol1546, align 4, !tbaa !5
  %or1562 = or i32 %997, %shl1561
  store i32 %or1562, i32* %scol1546, align 4, !tbaa !5
  br label %if.end.1563

if.end.1563:                                      ; preds = %if.then.1557, %if.then.1550
  %998 = load i32, i32* %left1177, align 4, !tbaa !5
  %cmp1564 = icmp sgt i32 %998, -4
  br i1 %cmp1564, label %if.then.1566, label %if.end.1572

if.then.1566:                                     ; preds = %if.end.1563
  %999 = load i8*, i8** %sptr1176, align 8, !tbaa !1
  %arrayidx1567 = getelementptr inbounds i8, i8* %999, i64 2
  %1000 = load i8, i8* %arrayidx1567, align 1, !tbaa !85
  %idxprom1568 = zext i8 %1000 to i64
  %arrayidx1569 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom1568
  %1001 = load i32, i32* %arrayidx1569, align 4, !tbaa !5
  %shl1570 = shl i32 %1001, 2
  %1002 = load i32, i32* %scol1546, align 4, !tbaa !5
  %or1571 = or i32 %1002, %shl1570
  store i32 %or1571, i32* %scol1546, align 4, !tbaa !5
  br label %if.end.1572

if.end.1572:                                      ; preds = %if.then.1566, %if.end.1563
  %1003 = load i32, i32* %left1177, align 4, !tbaa !5
  %cmp1573 = icmp sgt i32 %1003, -2
  br i1 %cmp1573, label %if.then.1575, label %if.end.1580

if.then.1575:                                     ; preds = %if.end.1572
  %1004 = load i8*, i8** %sptr1176, align 8, !tbaa !1
  %arrayidx1576 = getelementptr inbounds i8, i8* %1004, i64 3
  %1005 = load i8, i8* %arrayidx1576, align 1, !tbaa !85
  %idxprom1577 = zext i8 %1005 to i64
  %arrayidx1578 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom1577
  %1006 = load i32, i32* %arrayidx1578, align 4, !tbaa !5
  %1007 = load i32, i32* %scol1546, align 4, !tbaa !5
  %or1579 = or i32 %1007, %1006
  store i32 %or1579, i32* %scol1546, align 4, !tbaa !5
  br label %if.end.1580

if.end.1580:                                      ; preds = %if.then.1575, %if.end.1572
  br label %if.end.1626

if.else.1581:                                     ; preds = %while.end.1537
  %1008 = load i8*, i8** %sptr1176, align 8, !tbaa !1
  %arrayidx1582 = getelementptr inbounds i8, i8* %1008, i64 0
  %1009 = load i8, i8* %arrayidx1582, align 1, !tbaa !85
  %conv1583 = zext i8 %1009 to i32
  %and1584 = and i32 %conv1583, 15
  %idxprom1585 = sext i32 %and1584 to i64
  %arrayidx1586 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom1585
  %1010 = load i32, i32* %arrayidx1586, align 4, !tbaa !5
  %shl1587 = shl i32 %1010, 7
  store i32 %shl1587, i32* %scol1546, align 4, !tbaa !5
  %1011 = load i32, i32* %left1177, align 4, !tbaa !5
  %cmp1588 = icmp sgt i32 %1011, -7
  br i1 %cmp1588, label %if.then.1590, label %if.end.1596

if.then.1590:                                     ; preds = %if.else.1581
  %1012 = load i8*, i8** %sptr1176, align 8, !tbaa !1
  %arrayidx1591 = getelementptr inbounds i8, i8* %1012, i64 1
  %1013 = load i8, i8* %arrayidx1591, align 1, !tbaa !85
  %idxprom1592 = zext i8 %1013 to i64
  %arrayidx1593 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom1592
  %1014 = load i32, i32* %arrayidx1593, align 4, !tbaa !5
  %shl1594 = shl i32 %1014, 5
  %1015 = load i32, i32* %scol1546, align 4, !tbaa !5
  %or1595 = or i32 %1015, %shl1594
  store i32 %or1595, i32* %scol1546, align 4, !tbaa !5
  br label %if.end.1596

if.end.1596:                                      ; preds = %if.then.1590, %if.else.1581
  %1016 = load i32, i32* %left1177, align 4, !tbaa !5
  %cmp1597 = icmp sgt i32 %1016, -5
  br i1 %cmp1597, label %if.then.1599, label %if.end.1605

if.then.1599:                                     ; preds = %if.end.1596
  %1017 = load i8*, i8** %sptr1176, align 8, !tbaa !1
  %arrayidx1600 = getelementptr inbounds i8, i8* %1017, i64 2
  %1018 = load i8, i8* %arrayidx1600, align 1, !tbaa !85
  %idxprom1601 = zext i8 %1018 to i64
  %arrayidx1602 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom1601
  %1019 = load i32, i32* %arrayidx1602, align 4, !tbaa !5
  %shl1603 = shl i32 %1019, 3
  %1020 = load i32, i32* %scol1546, align 4, !tbaa !5
  %or1604 = or i32 %1020, %shl1603
  store i32 %or1604, i32* %scol1546, align 4, !tbaa !5
  br label %if.end.1605

if.end.1605:                                      ; preds = %if.then.1599, %if.end.1596
  %1021 = load i32, i32* %left1177, align 4, !tbaa !5
  %cmp1606 = icmp sgt i32 %1021, -3
  br i1 %cmp1606, label %if.then.1608, label %if.end.1614

if.then.1608:                                     ; preds = %if.end.1605
  %1022 = load i8*, i8** %sptr1176, align 8, !tbaa !1
  %arrayidx1609 = getelementptr inbounds i8, i8* %1022, i64 3
  %1023 = load i8, i8* %arrayidx1609, align 1, !tbaa !85
  %idxprom1610 = zext i8 %1023 to i64
  %arrayidx1611 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom1610
  %1024 = load i32, i32* %arrayidx1611, align 4, !tbaa !5
  %shl1612 = shl i32 %1024, 1
  %1025 = load i32, i32* %scol1546, align 4, !tbaa !5
  %or1613 = or i32 %1025, %shl1612
  store i32 %or1613, i32* %scol1546, align 4, !tbaa !5
  br label %if.end.1614

if.end.1614:                                      ; preds = %if.then.1608, %if.end.1605
  %1026 = load i32, i32* %left1177, align 4, !tbaa !5
  %cmp1615 = icmp sgt i32 %1026, -1
  br i1 %cmp1615, label %if.then.1617, label %if.end.1625

if.then.1617:                                     ; preds = %if.end.1614
  %1027 = load i8*, i8** %sptr1176, align 8, !tbaa !1
  %arrayidx1618 = getelementptr inbounds i8, i8* %1027, i64 4
  %1028 = load i8, i8* %arrayidx1618, align 1, !tbaa !85
  %conv1619 = zext i8 %1028 to i32
  %and1620 = and i32 %conv1619, 240
  %idxprom1621 = sext i32 %and1620 to i64
  %arrayidx1622 = getelementptr inbounds [256 x i32], [256 x i32]* @expand_4to1, i32 0, i64 %idxprom1621
  %1029 = load i32, i32* %arrayidx1622, align 4, !tbaa !5
  %shr1623 = lshr i32 %1029, 1
  %1030 = load i32, i32* %scol1546, align 4, !tbaa !5
  %or1624 = or i32 %1030, %shr1623
  store i32 %or1624, i32* %scol1546, align 4, !tbaa !5
  br label %if.end.1625

if.end.1625:                                      ; preds = %if.then.1617, %if.end.1614
  br label %if.end.1626

if.end.1626:                                      ; preds = %if.end.1625, %if.end.1580
  %1031 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc1154, align 8, !tbaa !1
  %1032 = load i8, i8* %cdbyte1539, align 1, !tbaa !85
  %conv1627 = zext i8 %1032 to i32
  %1033 = load i8, i8* %kdbyte1538, align 1, !tbaa !85
  %conv1628 = zext i8 %1033 to i32
  %or1629 = or i32 %conv1627, %conv1628
  %conv1630 = sext i32 %or1629 to i64
  %1034 = load i32, i32* %scol1546, align 4, !tbaa !5
  %1035 = load i32, i32* %scol1546, align 4, !tbaa !5
  %shr1631 = lshr i32 %1035, 24
  %or1632 = or i32 %1034, %shr1631
  %conv1633 = zext i32 %or1632 to i64
  %1036 = load i32, i32* %ctcolor, align 4, !tbaa !5
  %conv1634 = sext i32 %1036 to i64
  %call1635 = call i64 %1031(i64 %conv1630, i64 %conv1633, i64 %conv1634) #4
  %conv1636 = trunc i64 %call1635 to i8
  store i8 %conv1636, i8* %cresult1542, align 1, !tbaa !85
  %1037 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc1154, align 8, !tbaa !1
  %1038 = load i8, i8* %mdbyte1540, align 1, !tbaa !85
  %conv1637 = zext i8 %1038 to i32
  %1039 = load i8, i8* %kdbyte1538, align 1, !tbaa !85
  %conv1638 = zext i8 %1039 to i32
  %or1639 = or i32 %conv1637, %conv1638
  %conv1640 = sext i32 %or1639 to i64
  %1040 = load i32, i32* %scol1546, align 4, !tbaa !5
  %1041 = load i32, i32* %scol1546, align 4, !tbaa !5
  %shr1641 = lshr i32 %1041, 16
  %or1642 = or i32 %1040, %shr1641
  %conv1643 = zext i32 %or1642 to i64
  %1042 = load i32, i32* %mtcolor, align 4, !tbaa !5
  %conv1644 = sext i32 %1042 to i64
  %call1645 = call i64 %1037(i64 %conv1640, i64 %conv1643, i64 %conv1644) #4
  %conv1646 = trunc i64 %call1645 to i8
  store i8 %conv1646, i8* %mresult1543, align 1, !tbaa !85
  %1043 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc1154, align 8, !tbaa !1
  %1044 = load i8, i8* %ydbyte1541, align 1, !tbaa !85
  %conv1647 = zext i8 %1044 to i32
  %1045 = load i8, i8* %kdbyte1538, align 1, !tbaa !85
  %conv1648 = zext i8 %1045 to i32
  %or1649 = or i32 %conv1647, %conv1648
  %conv1650 = sext i32 %or1649 to i64
  %1046 = load i32, i32* %scol1546, align 4, !tbaa !5
  %1047 = load i32, i32* %scol1546, align 4, !tbaa !5
  %shr1651 = lshr i32 %1047, 8
  %or1652 = or i32 %1046, %shr1651
  %conv1653 = zext i32 %or1652 to i64
  %1048 = load i32, i32* %ytcolor, align 4, !tbaa !5
  %conv1654 = sext i32 %1048 to i64
  %call1655 = call i64 %1043(i64 %conv1650, i64 %conv1653, i64 %conv1654) #4
  %conv1656 = trunc i64 %call1655 to i8
  store i8 %conv1656, i8* %yresult1544, align 1, !tbaa !85
  %1049 = load i8, i8* %cresult1542, align 1, !tbaa !85
  %conv1657 = zext i8 %1049 to i32
  %1050 = load i8, i8* %mresult1543, align 1, !tbaa !85
  %conv1658 = zext i8 %1050 to i32
  %and1659 = and i32 %conv1657, %conv1658
  %1051 = load i8, i8* %yresult1544, align 1, !tbaa !85
  %conv1660 = zext i8 %1051 to i32
  %and1661 = and i32 %and1659, %conv1660
  %conv1662 = trunc i32 %and1661 to i8
  store i8 %conv1662, i8* %kresult1545, align 1, !tbaa !85
  %1052 = load i8, i8* %kresult1545, align 1, !tbaa !85
  %conv1663 = zext i8 %1052 to i32
  %neg1664 = xor i32 %conv1663, -1
  %1053 = load i8, i8* %cresult1542, align 1, !tbaa !85
  %conv1665 = zext i8 %1053 to i32
  %and1666 = and i32 %conv1665, %neg1664
  %conv1667 = trunc i32 %and1666 to i8
  store i8 %conv1667, i8* %cresult1542, align 1, !tbaa !85
  %1054 = load i8, i8* %kresult1545, align 1, !tbaa !85
  %conv1668 = zext i8 %1054 to i32
  %neg1669 = xor i32 %conv1668, -1
  %1055 = load i8, i8* %mresult1543, align 1, !tbaa !85
  %conv1670 = zext i8 %1055 to i32
  %and1671 = and i32 %conv1670, %neg1669
  %conv1672 = trunc i32 %and1671 to i8
  store i8 %conv1672, i8* %mresult1543, align 1, !tbaa !85
  %1056 = load i8, i8* %kresult1545, align 1, !tbaa !85
  %conv1673 = zext i8 %1056 to i32
  %neg1674 = xor i32 %conv1673, -1
  %1057 = load i8, i8* %yresult1544, align 1, !tbaa !85
  %conv1675 = zext i8 %1057 to i32
  %and1676 = and i32 %conv1675, %neg1674
  %conv1677 = trunc i32 %and1676 to i8
  store i8 %conv1677, i8* %yresult1544, align 1, !tbaa !85
  %1058 = load i8, i8* %cresult1542, align 1, !tbaa !85
  %conv1678 = zext i8 %1058 to i32
  %1059 = load i8, i8* %rmask, align 1, !tbaa !85
  %conv1679 = zext i8 %1059 to i32
  %and1680 = and i32 %conv1678, %conv1679
  %1060 = load i8, i8* %cdbyte1539, align 1, !tbaa !85
  %conv1681 = zext i8 %1060 to i32
  %1061 = load i8, i8* %rmask, align 1, !tbaa !85
  %conv1682 = zext i8 %1061 to i32
  %neg1683 = xor i32 %conv1682, -1
  %and1684 = and i32 %conv1681, %neg1683
  %or1685 = or i32 %and1680, %and1684
  %conv1686 = trunc i32 %or1685 to i8
  %1062 = load i8*, i8** %cdptr1172, align 8, !tbaa !1
  %incdec.ptr1687 = getelementptr inbounds i8, i8* %1062, i32 1
  store i8* %incdec.ptr1687, i8** %cdptr1172, align 8, !tbaa !1
  store i8 %conv1686, i8* %1062, align 1, !tbaa !85
  %1063 = load i8, i8* %mresult1543, align 1, !tbaa !85
  %conv1688 = zext i8 %1063 to i32
  %1064 = load i8, i8* %rmask, align 1, !tbaa !85
  %conv1689 = zext i8 %1064 to i32
  %and1690 = and i32 %conv1688, %conv1689
  %1065 = load i8, i8* %mdbyte1540, align 1, !tbaa !85
  %conv1691 = zext i8 %1065 to i32
  %1066 = load i8, i8* %rmask, align 1, !tbaa !85
  %conv1692 = zext i8 %1066 to i32
  %neg1693 = xor i32 %conv1692, -1
  %and1694 = and i32 %conv1691, %neg1693
  %or1695 = or i32 %and1690, %and1694
  %conv1696 = trunc i32 %or1695 to i8
  %1067 = load i8*, i8** %mdptr1173, align 8, !tbaa !1
  %incdec.ptr1697 = getelementptr inbounds i8, i8* %1067, i32 1
  store i8* %incdec.ptr1697, i8** %mdptr1173, align 8, !tbaa !1
  store i8 %conv1696, i8* %1067, align 1, !tbaa !85
  %1068 = load i8, i8* %yresult1544, align 1, !tbaa !85
  %conv1698 = zext i8 %1068 to i32
  %1069 = load i8, i8* %rmask, align 1, !tbaa !85
  %conv1699 = zext i8 %1069 to i32
  %and1700 = and i32 %conv1698, %conv1699
  %1070 = load i8, i8* %ydbyte1541, align 1, !tbaa !85
  %conv1701 = zext i8 %1070 to i32
  %1071 = load i8, i8* %rmask, align 1, !tbaa !85
  %conv1702 = zext i8 %1071 to i32
  %neg1703 = xor i32 %conv1702, -1
  %and1704 = and i32 %conv1701, %neg1703
  %or1705 = or i32 %and1700, %and1704
  %conv1706 = trunc i32 %or1705 to i8
  %1072 = load i8*, i8** %ydptr1174, align 8, !tbaa !1
  %incdec.ptr1707 = getelementptr inbounds i8, i8* %1072, i32 1
  store i8* %incdec.ptr1707, i8** %ydptr1174, align 8, !tbaa !1
  store i8 %conv1706, i8* %1072, align 1, !tbaa !85
  %1073 = load i8, i8* %kresult1545, align 1, !tbaa !85
  %conv1708 = zext i8 %1073 to i32
  %1074 = load i8, i8* %rmask, align 1, !tbaa !85
  %conv1709 = zext i8 %1074 to i32
  %and1710 = and i32 %conv1708, %conv1709
  %1075 = load i8, i8* %kdbyte1538, align 1, !tbaa !85
  %conv1711 = zext i8 %1075 to i32
  %1076 = load i8, i8* %rmask, align 1, !tbaa !85
  %conv1712 = zext i8 %1076 to i32
  %neg1713 = xor i32 %conv1712, -1
  %and1714 = and i32 %conv1711, %neg1713
  %or1715 = or i32 %and1710, %and1714
  %conv1716 = trunc i32 %or1715 to i8
  %1077 = load i8*, i8** %kdptr1175, align 8, !tbaa !1
  %incdec.ptr1717 = getelementptr inbounds i8, i8* %1077, i32 1
  store i8* %incdec.ptr1717, i8** %kdptr1175, align 8, !tbaa !1
  store i8 %conv1716, i8* %1077, align 1, !tbaa !85
  %1078 = bitcast i32* %scol1546 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1078) #1
  call void @llvm.lifetime.end(i64 1, i8* %kresult1545) #1
  call void @llvm.lifetime.end(i64 1, i8* %yresult1544) #1
  call void @llvm.lifetime.end(i64 1, i8* %mresult1543) #1
  call void @llvm.lifetime.end(i64 1, i8* %cresult1542) #1
  call void @llvm.lifetime.end(i64 1, i8* %ydbyte1541) #1
  call void @llvm.lifetime.end(i64 1, i8* %mdbyte1540) #1
  call void @llvm.lifetime.end(i64 1, i8* %cdbyte1539) #1
  call void @llvm.lifetime.end(i64 1, i8* %kdbyte1538) #1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.1718

cleanup.1718:                                     ; preds = %if.end.1626, %if.then.1384
  %1079 = bitcast i32* %left1177 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1079) #1
  %1080 = bitcast i8** %sptr1176 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1080) #1
  %1081 = bitcast i8** %kdptr1175 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1081) #1
  %1082 = bitcast i8** %ydptr1174 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1082) #1
  %1083 = bitcast i8** %mdptr1173 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1083) #1
  %1084 = bitcast i8** %cdptr1172 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1084) #1
  %cleanup.dest.1724 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1724, label %unreachable [
    i32 0, label %cleanup.cont.1725
    i32 19, label %for.inc.1726
  ]

cleanup.cont.1725:                                ; preds = %cleanup.1718
  br label %for.inc.1726

for.inc.1726:                                     ; preds = %cleanup.cont.1725, %cleanup.1718
  %1085 = load i32, i32* %draster, align 4, !tbaa !5
  %1086 = load i8*, i8** %cdrow, align 8, !tbaa !1
  %idx.ext1727 = zext i32 %1085 to i64
  %add.ptr1728 = getelementptr inbounds i8, i8* %1086, i64 %idx.ext1727
  store i8* %add.ptr1728, i8** %cdrow, align 8, !tbaa !1
  %1087 = load i32, i32* %draster, align 4, !tbaa !5
  %1088 = load i8*, i8** %mdrow, align 8, !tbaa !1
  %idx.ext1729 = zext i32 %1087 to i64
  %add.ptr1730 = getelementptr inbounds i8, i8* %1088, i64 %idx.ext1729
  store i8* %add.ptr1730, i8** %mdrow, align 8, !tbaa !1
  %1089 = load i32, i32* %draster, align 4, !tbaa !5
  %1090 = load i8*, i8** %ydrow, align 8, !tbaa !1
  %idx.ext1731 = zext i32 %1089 to i64
  %add.ptr1732 = getelementptr inbounds i8, i8* %1090, i64 %idx.ext1731
  store i8* %add.ptr1732, i8** %ydrow, align 8, !tbaa !1
  %1091 = load i32, i32* %draster, align 4, !tbaa !5
  %1092 = load i8*, i8** %kdrow, align 8, !tbaa !1
  %idx.ext1733 = zext i32 %1091 to i64
  %add.ptr1734 = getelementptr inbounds i8, i8* %1092, i64 %idx.ext1733
  store i8* %add.ptr1734, i8** %kdrow, align 8, !tbaa !1
  %1093 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %1094 = load i8*, i8** %srow.addr, align 8, !tbaa !1
  %idx.ext1735 = zext i32 %1093 to i64
  %add.ptr1736 = getelementptr inbounds i8, i8* %1094, i64 %idx.ext1735
  store i8* %add.ptr1736, i8** %srow.addr, align 8, !tbaa !1
  br label %for.cond.1167

for.end.1737:                                     ; preds = %for.cond.1167
  %1095 = bitcast i32* %sskew1159 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1095) #1
  %1096 = bitcast i32* %sbit1157 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1096) #1
  %1097 = bitcast i64 (i64, i64, i64)** %proc1154 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1097) #1
  br label %if.end.2389

if.else.1738:                                     ; preds = %if.end.1150
  %1098 = load i32, i32* %constant_s, align 4, !tbaa !5
  %tobool1739 = icmp ne i32 %1098, 0
  br i1 %tobool1739, label %if.then.1740, label %if.else.2044

if.then.1740:                                     ; preds = %if.else.1738
  %1099 = bitcast i64 (i64, i64, i64)** %proc1741 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1099) #1
  %1100 = load i32, i32* %rop, align 4, !tbaa !85
  %idxprom1742 = zext i32 %1100 to i64
  %arrayidx1743 = getelementptr inbounds [256 x i64 (i64, i64, i64)*], [256 x i64 (i64, i64, i64)*]* @rop_proc_table, i32 0, i64 %idxprom1742
  %1101 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %arrayidx1743, align 8, !tbaa !1
  store i64 (i64, i64, i64)* %1101, i64 (i64, i64, i64)** %proc1741, align 8, !tbaa !1
  br label %for.cond.1744

for.cond.1744:                                    ; preds = %for.inc.2034, %if.then.1740
  %1102 = load i32, i32* %line_count, align 4, !tbaa !5
  %dec1745 = add nsw i32 %1102, -1
  store i32 %dec1745, i32* %line_count, align 4, !tbaa !5
  %cmp1746 = icmp sgt i32 %1102, 0
  br i1 %cmp1746, label %for.body.1748, label %for.end.2043

for.body.1748:                                    ; preds = %for.cond.1744
  %1103 = bitcast i8** %cdptr1749 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1103) #1
  %1104 = load i8*, i8** %cdrow, align 8, !tbaa !1
  store i8* %1104, i8** %cdptr1749, align 8, !tbaa !1
  %1105 = bitcast i8** %mdptr1750 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1105) #1
  %1106 = load i8*, i8** %mdrow, align 8, !tbaa !1
  store i8* %1106, i8** %mdptr1750, align 8, !tbaa !1
  %1107 = bitcast i8** %ydptr1751 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1107) #1
  %1108 = load i8*, i8** %ydrow, align 8, !tbaa !1
  store i8* %1108, i8** %ydptr1751, align 8, !tbaa !1
  %1109 = bitcast i8** %kdptr1752 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1109) #1
  %1110 = load i8*, i8** %kdrow, align 8, !tbaa !1
  store i8* %1110, i8** %kdptr1752, align 8, !tbaa !1
  %1111 = bitcast i32* %left1753 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1111) #1
  %1112 = load i32, i32* %width.addr, align 4, !tbaa !5
  %sub1754 = sub nsw i32 %1112, 8
  store i32 %sub1754, i32* %left1753, align 4, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %kdbyte1755) #1
  %1113 = load i8*, i8** %kdptr1752, align 8, !tbaa !1
  %1114 = load i8, i8* %1113, align 1, !tbaa !85
  store i8 %1114, i8* %kdbyte1755, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %cdbyte1756) #1
  %1115 = load i8*, i8** %cdptr1749, align 8, !tbaa !1
  %1116 = load i8, i8* %1115, align 1, !tbaa !85
  store i8 %1116, i8* %cdbyte1756, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %mdbyte1757) #1
  %1117 = load i8*, i8** %mdptr1750, align 8, !tbaa !1
  %1118 = load i8, i8* %1117, align 1, !tbaa !85
  store i8 %1118, i8* %mdbyte1757, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %ydbyte1758) #1
  %1119 = load i8*, i8** %ydptr1751, align 8, !tbaa !1
  %1120 = load i8, i8* %1119, align 1, !tbaa !85
  store i8 %1120, i8* %ydbyte1758, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %cresult1759) #1
  %1121 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc1741, align 8, !tbaa !1
  %1122 = load i8, i8* %cdbyte1756, align 1, !tbaa !85
  %conv1760 = zext i8 %1122 to i32
  %1123 = load i8, i8* %kdbyte1755, align 1, !tbaa !85
  %conv1761 = zext i8 %1123 to i32
  %or1762 = or i32 %conv1760, %conv1761
  %conv1763 = sext i32 %or1762 to i64
  %1124 = load i32, i32* %cscolor, align 4, !tbaa !5
  %conv1764 = sext i32 %1124 to i64
  %1125 = load i32, i32* %ctcolor, align 4, !tbaa !5
  %conv1765 = sext i32 %1125 to i64
  %call1766 = call i64 %1121(i64 %conv1763, i64 %conv1764, i64 %conv1765) #4
  %conv1767 = trunc i64 %call1766 to i8
  store i8 %conv1767, i8* %cresult1759, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %mresult1768) #1
  %1126 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc1741, align 8, !tbaa !1
  %1127 = load i8, i8* %mdbyte1757, align 1, !tbaa !85
  %conv1769 = zext i8 %1127 to i32
  %1128 = load i8, i8* %kdbyte1755, align 1, !tbaa !85
  %conv1770 = zext i8 %1128 to i32
  %or1771 = or i32 %conv1769, %conv1770
  %conv1772 = sext i32 %or1771 to i64
  %1129 = load i32, i32* %mscolor, align 4, !tbaa !5
  %conv1773 = sext i32 %1129 to i64
  %1130 = load i32, i32* %mtcolor, align 4, !tbaa !5
  %conv1774 = sext i32 %1130 to i64
  %call1775 = call i64 %1126(i64 %conv1772, i64 %conv1773, i64 %conv1774) #4
  %conv1776 = trunc i64 %call1775 to i8
  store i8 %conv1776, i8* %mresult1768, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %yresult1777) #1
  %1131 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc1741, align 8, !tbaa !1
  %1132 = load i8, i8* %ydbyte1758, align 1, !tbaa !85
  %conv1778 = zext i8 %1132 to i32
  %1133 = load i8, i8* %kdbyte1755, align 1, !tbaa !85
  %conv1779 = zext i8 %1133 to i32
  %or1780 = or i32 %conv1778, %conv1779
  %conv1781 = sext i32 %or1780 to i64
  %1134 = load i32, i32* %yscolor, align 4, !tbaa !5
  %conv1782 = sext i32 %1134 to i64
  %1135 = load i32, i32* %ytcolor, align 4, !tbaa !5
  %conv1783 = sext i32 %1135 to i64
  %call1784 = call i64 %1131(i64 %conv1781, i64 %conv1782, i64 %conv1783) #4
  %conv1785 = trunc i64 %call1784 to i8
  store i8 %conv1785, i8* %yresult1777, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %kresult1786) #1
  %1136 = load i8, i8* %cresult1759, align 1, !tbaa !85
  %conv1787 = zext i8 %1136 to i32
  %1137 = load i8, i8* %mresult1768, align 1, !tbaa !85
  %conv1788 = zext i8 %1137 to i32
  %and1789 = and i32 %conv1787, %conv1788
  %1138 = load i8, i8* %yresult1777, align 1, !tbaa !85
  %conv1790 = zext i8 %1138 to i32
  %and1791 = and i32 %and1789, %conv1790
  %conv1792 = trunc i32 %and1791 to i8
  store i8 %conv1792, i8* %kresult1786, align 1, !tbaa !85
  %1139 = load i8, i8* %kresult1786, align 1, !tbaa !85
  %conv1793 = zext i8 %1139 to i32
  %neg1794 = xor i32 %conv1793, -1
  %1140 = load i8, i8* %cresult1759, align 1, !tbaa !85
  %conv1795 = zext i8 %1140 to i32
  %and1796 = and i32 %conv1795, %neg1794
  %conv1797 = trunc i32 %and1796 to i8
  store i8 %conv1797, i8* %cresult1759, align 1, !tbaa !85
  %1141 = load i8, i8* %kresult1786, align 1, !tbaa !85
  %conv1798 = zext i8 %1141 to i32
  %neg1799 = xor i32 %conv1798, -1
  %1142 = load i8, i8* %mresult1768, align 1, !tbaa !85
  %conv1800 = zext i8 %1142 to i32
  %and1801 = and i32 %conv1800, %neg1799
  %conv1802 = trunc i32 %and1801 to i8
  store i8 %conv1802, i8* %mresult1768, align 1, !tbaa !85
  %1143 = load i8, i8* %kresult1786, align 1, !tbaa !85
  %conv1803 = zext i8 %1143 to i32
  %neg1804 = xor i32 %conv1803, -1
  %1144 = load i8, i8* %yresult1777, align 1, !tbaa !85
  %conv1805 = zext i8 %1144 to i32
  %and1806 = and i32 %conv1805, %neg1804
  %conv1807 = trunc i32 %and1806 to i8
  store i8 %conv1807, i8* %yresult1777, align 1, !tbaa !85
  %1145 = load i8, i8* %cresult1759, align 1, !tbaa !85
  %conv1808 = zext i8 %1145 to i32
  %1146 = load i8, i8* %lmask, align 1, !tbaa !85
  %conv1809 = zext i8 %1146 to i32
  %and1810 = and i32 %conv1808, %conv1809
  %1147 = load i8, i8* %cdbyte1756, align 1, !tbaa !85
  %conv1811 = zext i8 %1147 to i32
  %1148 = load i8, i8* %lmask, align 1, !tbaa !85
  %conv1812 = zext i8 %1148 to i32
  %neg1813 = xor i32 %conv1812, -1
  %and1814 = and i32 %conv1811, %neg1813
  %or1815 = or i32 %and1810, %and1814
  %conv1816 = trunc i32 %or1815 to i8
  %1149 = load i8*, i8** %cdptr1749, align 8, !tbaa !1
  %incdec.ptr1817 = getelementptr inbounds i8, i8* %1149, i32 1
  store i8* %incdec.ptr1817, i8** %cdptr1749, align 8, !tbaa !1
  store i8 %conv1816, i8* %1149, align 1, !tbaa !85
  %1150 = load i8, i8* %mresult1768, align 1, !tbaa !85
  %conv1818 = zext i8 %1150 to i32
  %1151 = load i8, i8* %lmask, align 1, !tbaa !85
  %conv1819 = zext i8 %1151 to i32
  %and1820 = and i32 %conv1818, %conv1819
  %1152 = load i8, i8* %mdbyte1757, align 1, !tbaa !85
  %conv1821 = zext i8 %1152 to i32
  %1153 = load i8, i8* %lmask, align 1, !tbaa !85
  %conv1822 = zext i8 %1153 to i32
  %neg1823 = xor i32 %conv1822, -1
  %and1824 = and i32 %conv1821, %neg1823
  %or1825 = or i32 %and1820, %and1824
  %conv1826 = trunc i32 %or1825 to i8
  %1154 = load i8*, i8** %mdptr1750, align 8, !tbaa !1
  %incdec.ptr1827 = getelementptr inbounds i8, i8* %1154, i32 1
  store i8* %incdec.ptr1827, i8** %mdptr1750, align 8, !tbaa !1
  store i8 %conv1826, i8* %1154, align 1, !tbaa !85
  %1155 = load i8, i8* %yresult1777, align 1, !tbaa !85
  %conv1828 = zext i8 %1155 to i32
  %1156 = load i8, i8* %lmask, align 1, !tbaa !85
  %conv1829 = zext i8 %1156 to i32
  %and1830 = and i32 %conv1828, %conv1829
  %1157 = load i8, i8* %ydbyte1758, align 1, !tbaa !85
  %conv1831 = zext i8 %1157 to i32
  %1158 = load i8, i8* %lmask, align 1, !tbaa !85
  %conv1832 = zext i8 %1158 to i32
  %neg1833 = xor i32 %conv1832, -1
  %and1834 = and i32 %conv1831, %neg1833
  %or1835 = or i32 %and1830, %and1834
  %conv1836 = trunc i32 %or1835 to i8
  %1159 = load i8*, i8** %ydptr1751, align 8, !tbaa !1
  %incdec.ptr1837 = getelementptr inbounds i8, i8* %1159, i32 1
  store i8* %incdec.ptr1837, i8** %ydptr1751, align 8, !tbaa !1
  store i8 %conv1836, i8* %1159, align 1, !tbaa !85
  %1160 = load i8, i8* %kresult1786, align 1, !tbaa !85
  %conv1838 = zext i8 %1160 to i32
  %1161 = load i8, i8* %lmask, align 1, !tbaa !85
  %conv1839 = zext i8 %1161 to i32
  %and1840 = and i32 %conv1838, %conv1839
  %1162 = load i8, i8* %kdbyte1755, align 1, !tbaa !85
  %conv1841 = zext i8 %1162 to i32
  %1163 = load i8, i8* %lmask, align 1, !tbaa !85
  %conv1842 = zext i8 %1163 to i32
  %neg1843 = xor i32 %conv1842, -1
  %and1844 = and i32 %conv1841, %neg1843
  %or1845 = or i32 %and1840, %and1844
  %conv1846 = trunc i32 %or1845 to i8
  %1164 = load i8*, i8** %kdptr1752, align 8, !tbaa !1
  %incdec.ptr1847 = getelementptr inbounds i8, i8* %1164, i32 1
  store i8* %incdec.ptr1847, i8** %kdptr1752, align 8, !tbaa !1
  store i8 %conv1846, i8* %1164, align 1, !tbaa !85
  call void @llvm.lifetime.end(i64 1, i8* %kresult1786) #1
  call void @llvm.lifetime.end(i64 1, i8* %yresult1777) #1
  call void @llvm.lifetime.end(i64 1, i8* %mresult1768) #1
  call void @llvm.lifetime.end(i64 1, i8* %cresult1759) #1
  call void @llvm.lifetime.end(i64 1, i8* %ydbyte1758) #1
  call void @llvm.lifetime.end(i64 1, i8* %mdbyte1757) #1
  call void @llvm.lifetime.end(i64 1, i8* %cdbyte1756) #1
  call void @llvm.lifetime.end(i64 1, i8* %kdbyte1755) #1
  %1165 = load i32, i32* %left1753, align 4, !tbaa !5
  %cmp1848 = icmp sle i32 %1165, 0
  br i1 %cmp1848, label %if.then.1850, label %if.end.1851

if.then.1850:                                     ; preds = %for.body.1748
  store i32 24, i32* %cleanup.dest.slot
  br label %cleanup.2027

if.end.1851:                                      ; preds = %for.body.1748
  %1166 = load i32, i32* %left1753, align 4, !tbaa !5
  %sub1852 = sub nsw i32 %1166, 8
  store i32 %sub1852, i32* %left1753, align 4, !tbaa !5
  br label %while.cond.1853

while.cond.1853:                                  ; preds = %while.body.1856, %if.end.1851
  %1167 = load i32, i32* %left1753, align 4, !tbaa !5
  %cmp1854 = icmp sgt i32 %1167, 0
  br i1 %cmp1854, label %while.body.1856, label %while.end.1933

while.body.1856:                                  ; preds = %while.cond.1853
  call void @llvm.lifetime.start(i64 1, i8* %kdbyte1857) #1
  %1168 = load i8*, i8** %kdptr1752, align 8, !tbaa !1
  %1169 = load i8, i8* %1168, align 1, !tbaa !85
  store i8 %1169, i8* %kdbyte1857, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %cdbyte1858) #1
  %1170 = load i8*, i8** %cdptr1749, align 8, !tbaa !1
  %1171 = load i8, i8* %1170, align 1, !tbaa !85
  %conv1859 = zext i8 %1171 to i32
  %1172 = load i8, i8* %kdbyte1857, align 1, !tbaa !85
  %conv1860 = zext i8 %1172 to i32
  %or1861 = or i32 %conv1859, %conv1860
  %conv1862 = trunc i32 %or1861 to i8
  store i8 %conv1862, i8* %cdbyte1858, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %mdbyte1863) #1
  %1173 = load i8*, i8** %mdptr1750, align 8, !tbaa !1
  %1174 = load i8, i8* %1173, align 1, !tbaa !85
  %conv1864 = zext i8 %1174 to i32
  %1175 = load i8, i8* %kdbyte1857, align 1, !tbaa !85
  %conv1865 = zext i8 %1175 to i32
  %or1866 = or i32 %conv1864, %conv1865
  %conv1867 = trunc i32 %or1866 to i8
  store i8 %conv1867, i8* %mdbyte1863, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %ydbyte1868) #1
  %1176 = load i8*, i8** %ydptr1751, align 8, !tbaa !1
  %1177 = load i8, i8* %1176, align 1, !tbaa !85
  %conv1869 = zext i8 %1177 to i32
  %1178 = load i8, i8* %kdbyte1857, align 1, !tbaa !85
  %conv1870 = zext i8 %1178 to i32
  %or1871 = or i32 %conv1869, %conv1870
  %conv1872 = trunc i32 %or1871 to i8
  store i8 %conv1872, i8* %ydbyte1868, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %cresult1873) #1
  %1179 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc1741, align 8, !tbaa !1
  %1180 = load i8, i8* %cdbyte1858, align 1, !tbaa !85
  %conv1874 = zext i8 %1180 to i64
  %1181 = load i32, i32* %cscolor, align 4, !tbaa !5
  %conv1875 = sext i32 %1181 to i64
  %1182 = load i32, i32* %ctcolor, align 4, !tbaa !5
  %conv1876 = sext i32 %1182 to i64
  %call1877 = call i64 %1179(i64 %conv1874, i64 %conv1875, i64 %conv1876) #4
  %conv1878 = trunc i64 %call1877 to i8
  store i8 %conv1878, i8* %cresult1873, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %mresult1879) #1
  %1183 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc1741, align 8, !tbaa !1
  %1184 = load i8, i8* %mdbyte1863, align 1, !tbaa !85
  %conv1880 = zext i8 %1184 to i64
  %1185 = load i32, i32* %mscolor, align 4, !tbaa !5
  %conv1881 = sext i32 %1185 to i64
  %1186 = load i32, i32* %mtcolor, align 4, !tbaa !5
  %conv1882 = sext i32 %1186 to i64
  %call1883 = call i64 %1183(i64 %conv1880, i64 %conv1881, i64 %conv1882) #4
  %conv1884 = trunc i64 %call1883 to i8
  store i8 %conv1884, i8* %mresult1879, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %yresult1885) #1
  %1187 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc1741, align 8, !tbaa !1
  %1188 = load i8, i8* %ydbyte1868, align 1, !tbaa !85
  %conv1886 = zext i8 %1188 to i64
  %1189 = load i32, i32* %yscolor, align 4, !tbaa !5
  %conv1887 = sext i32 %1189 to i64
  %1190 = load i32, i32* %ytcolor, align 4, !tbaa !5
  %conv1888 = sext i32 %1190 to i64
  %call1889 = call i64 %1187(i64 %conv1886, i64 %conv1887, i64 %conv1888) #4
  %conv1890 = trunc i64 %call1889 to i8
  store i8 %conv1890, i8* %yresult1885, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %kresult1891) #1
  %1191 = load i8, i8* %cresult1873, align 1, !tbaa !85
  %conv1892 = zext i8 %1191 to i32
  %1192 = load i8, i8* %mresult1879, align 1, !tbaa !85
  %conv1893 = zext i8 %1192 to i32
  %and1894 = and i32 %conv1892, %conv1893
  %1193 = load i8, i8* %yresult1885, align 1, !tbaa !85
  %conv1895 = zext i8 %1193 to i32
  %and1896 = and i32 %and1894, %conv1895
  %conv1897 = trunc i32 %and1896 to i8
  store i8 %conv1897, i8* %kresult1891, align 1, !tbaa !85
  %1194 = load i8, i8* %kresult1891, align 1, !tbaa !85
  %conv1898 = zext i8 %1194 to i32
  %neg1899 = xor i32 %conv1898, -1
  %1195 = load i8, i8* %cresult1873, align 1, !tbaa !85
  %conv1900 = zext i8 %1195 to i32
  %and1901 = and i32 %conv1900, %neg1899
  %conv1902 = trunc i32 %and1901 to i8
  store i8 %conv1902, i8* %cresult1873, align 1, !tbaa !85
  %1196 = load i8, i8* %kresult1891, align 1, !tbaa !85
  %conv1903 = zext i8 %1196 to i32
  %neg1904 = xor i32 %conv1903, -1
  %1197 = load i8, i8* %mresult1879, align 1, !tbaa !85
  %conv1905 = zext i8 %1197 to i32
  %and1906 = and i32 %conv1905, %neg1904
  %conv1907 = trunc i32 %and1906 to i8
  store i8 %conv1907, i8* %mresult1879, align 1, !tbaa !85
  %1198 = load i8, i8* %kresult1891, align 1, !tbaa !85
  %conv1908 = zext i8 %1198 to i32
  %neg1909 = xor i32 %conv1908, -1
  %1199 = load i8, i8* %yresult1885, align 1, !tbaa !85
  %conv1910 = zext i8 %1199 to i32
  %and1911 = and i32 %conv1910, %neg1909
  %conv1912 = trunc i32 %and1911 to i8
  store i8 %conv1912, i8* %yresult1885, align 1, !tbaa !85
  %1200 = load i8, i8* %cresult1873, align 1, !tbaa !85
  %conv1913 = zext i8 %1200 to i32
  %1201 = load i8, i8* %kresult1891, align 1, !tbaa !85
  %conv1914 = zext i8 %1201 to i32
  %neg1915 = xor i32 %conv1914, -1
  %and1916 = and i32 %conv1913, %neg1915
  %conv1917 = trunc i32 %and1916 to i8
  %1202 = load i8*, i8** %cdptr1749, align 8, !tbaa !1
  %incdec.ptr1918 = getelementptr inbounds i8, i8* %1202, i32 1
  store i8* %incdec.ptr1918, i8** %cdptr1749, align 8, !tbaa !1
  store i8 %conv1917, i8* %1202, align 1, !tbaa !85
  %1203 = load i8, i8* %mresult1879, align 1, !tbaa !85
  %conv1919 = zext i8 %1203 to i32
  %1204 = load i8, i8* %kresult1891, align 1, !tbaa !85
  %conv1920 = zext i8 %1204 to i32
  %neg1921 = xor i32 %conv1920, -1
  %and1922 = and i32 %conv1919, %neg1921
  %conv1923 = trunc i32 %and1922 to i8
  %1205 = load i8*, i8** %mdptr1750, align 8, !tbaa !1
  %incdec.ptr1924 = getelementptr inbounds i8, i8* %1205, i32 1
  store i8* %incdec.ptr1924, i8** %mdptr1750, align 8, !tbaa !1
  store i8 %conv1923, i8* %1205, align 1, !tbaa !85
  %1206 = load i8, i8* %yresult1885, align 1, !tbaa !85
  %conv1925 = zext i8 %1206 to i32
  %1207 = load i8, i8* %kresult1891, align 1, !tbaa !85
  %conv1926 = zext i8 %1207 to i32
  %neg1927 = xor i32 %conv1926, -1
  %and1928 = and i32 %conv1925, %neg1927
  %conv1929 = trunc i32 %and1928 to i8
  %1208 = load i8*, i8** %ydptr1751, align 8, !tbaa !1
  %incdec.ptr1930 = getelementptr inbounds i8, i8* %1208, i32 1
  store i8* %incdec.ptr1930, i8** %ydptr1751, align 8, !tbaa !1
  store i8 %conv1929, i8* %1208, align 1, !tbaa !85
  %1209 = load i8, i8* %kresult1891, align 1, !tbaa !85
  %1210 = load i8*, i8** %kdptr1752, align 8, !tbaa !1
  %incdec.ptr1931 = getelementptr inbounds i8, i8* %1210, i32 1
  store i8* %incdec.ptr1931, i8** %kdptr1752, align 8, !tbaa !1
  store i8 %1209, i8* %1210, align 1, !tbaa !85
  %1211 = load i32, i32* %left1753, align 4, !tbaa !5
  %sub1932 = sub nsw i32 %1211, 8
  store i32 %sub1932, i32* %left1753, align 4, !tbaa !5
  call void @llvm.lifetime.end(i64 1, i8* %kresult1891) #1
  call void @llvm.lifetime.end(i64 1, i8* %yresult1885) #1
  call void @llvm.lifetime.end(i64 1, i8* %mresult1879) #1
  call void @llvm.lifetime.end(i64 1, i8* %cresult1873) #1
  call void @llvm.lifetime.end(i64 1, i8* %ydbyte1868) #1
  call void @llvm.lifetime.end(i64 1, i8* %mdbyte1863) #1
  call void @llvm.lifetime.end(i64 1, i8* %cdbyte1858) #1
  call void @llvm.lifetime.end(i64 1, i8* %kdbyte1857) #1
  br label %while.cond.1853

while.end.1933:                                   ; preds = %while.cond.1853
  call void @llvm.lifetime.start(i64 1, i8* %kdbyte1934) #1
  %1212 = load i8*, i8** %kdptr1752, align 8, !tbaa !1
  %1213 = load i8, i8* %1212, align 1, !tbaa !85
  store i8 %1213, i8* %kdbyte1934, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %cdbyte1935) #1
  %1214 = load i8*, i8** %cdptr1749, align 8, !tbaa !1
  %1215 = load i8, i8* %1214, align 1, !tbaa !85
  store i8 %1215, i8* %cdbyte1935, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %mdbyte1936) #1
  %1216 = load i8*, i8** %mdptr1750, align 8, !tbaa !1
  %1217 = load i8, i8* %1216, align 1, !tbaa !85
  store i8 %1217, i8* %mdbyte1936, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %ydbyte1937) #1
  %1218 = load i8*, i8** %ydptr1751, align 8, !tbaa !1
  %1219 = load i8, i8* %1218, align 1, !tbaa !85
  store i8 %1219, i8* %ydbyte1937, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %cresult1938) #1
  %1220 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc1741, align 8, !tbaa !1
  %1221 = load i8, i8* %cdbyte1935, align 1, !tbaa !85
  %conv1939 = zext i8 %1221 to i32
  %1222 = load i8, i8* %kdbyte1934, align 1, !tbaa !85
  %conv1940 = zext i8 %1222 to i32
  %or1941 = or i32 %conv1939, %conv1940
  %conv1942 = sext i32 %or1941 to i64
  %1223 = load i32, i32* %cscolor, align 4, !tbaa !5
  %conv1943 = sext i32 %1223 to i64
  %1224 = load i32, i32* %ctcolor, align 4, !tbaa !5
  %conv1944 = sext i32 %1224 to i64
  %call1945 = call i64 %1220(i64 %conv1942, i64 %conv1943, i64 %conv1944) #4
  %conv1946 = trunc i64 %call1945 to i8
  store i8 %conv1946, i8* %cresult1938, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %mresult1947) #1
  %1225 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc1741, align 8, !tbaa !1
  %1226 = load i8, i8* %mdbyte1936, align 1, !tbaa !85
  %conv1948 = zext i8 %1226 to i32
  %1227 = load i8, i8* %kdbyte1934, align 1, !tbaa !85
  %conv1949 = zext i8 %1227 to i32
  %or1950 = or i32 %conv1948, %conv1949
  %conv1951 = sext i32 %or1950 to i64
  %1228 = load i32, i32* %mscolor, align 4, !tbaa !5
  %conv1952 = sext i32 %1228 to i64
  %1229 = load i32, i32* %mtcolor, align 4, !tbaa !5
  %conv1953 = sext i32 %1229 to i64
  %call1954 = call i64 %1225(i64 %conv1951, i64 %conv1952, i64 %conv1953) #4
  %conv1955 = trunc i64 %call1954 to i8
  store i8 %conv1955, i8* %mresult1947, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %yresult1956) #1
  %1230 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc1741, align 8, !tbaa !1
  %1231 = load i8, i8* %ydbyte1937, align 1, !tbaa !85
  %conv1957 = zext i8 %1231 to i32
  %1232 = load i8, i8* %kdbyte1934, align 1, !tbaa !85
  %conv1958 = zext i8 %1232 to i32
  %or1959 = or i32 %conv1957, %conv1958
  %conv1960 = sext i32 %or1959 to i64
  %1233 = load i32, i32* %yscolor, align 4, !tbaa !5
  %conv1961 = sext i32 %1233 to i64
  %1234 = load i32, i32* %ytcolor, align 4, !tbaa !5
  %conv1962 = sext i32 %1234 to i64
  %call1963 = call i64 %1230(i64 %conv1960, i64 %conv1961, i64 %conv1962) #4
  %conv1964 = trunc i64 %call1963 to i8
  store i8 %conv1964, i8* %yresult1956, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %kresult1965) #1
  %1235 = load i8, i8* %cresult1938, align 1, !tbaa !85
  %conv1966 = zext i8 %1235 to i32
  %1236 = load i8, i8* %mresult1947, align 1, !tbaa !85
  %conv1967 = zext i8 %1236 to i32
  %and1968 = and i32 %conv1966, %conv1967
  %1237 = load i8, i8* %yresult1956, align 1, !tbaa !85
  %conv1969 = zext i8 %1237 to i32
  %and1970 = and i32 %and1968, %conv1969
  %conv1971 = trunc i32 %and1970 to i8
  store i8 %conv1971, i8* %kresult1965, align 1, !tbaa !85
  %1238 = load i8, i8* %kresult1965, align 1, !tbaa !85
  %conv1972 = zext i8 %1238 to i32
  %neg1973 = xor i32 %conv1972, -1
  %1239 = load i8, i8* %cresult1938, align 1, !tbaa !85
  %conv1974 = zext i8 %1239 to i32
  %and1975 = and i32 %conv1974, %neg1973
  %conv1976 = trunc i32 %and1975 to i8
  store i8 %conv1976, i8* %cresult1938, align 1, !tbaa !85
  %1240 = load i8, i8* %kresult1965, align 1, !tbaa !85
  %conv1977 = zext i8 %1240 to i32
  %neg1978 = xor i32 %conv1977, -1
  %1241 = load i8, i8* %mresult1947, align 1, !tbaa !85
  %conv1979 = zext i8 %1241 to i32
  %and1980 = and i32 %conv1979, %neg1978
  %conv1981 = trunc i32 %and1980 to i8
  store i8 %conv1981, i8* %mresult1947, align 1, !tbaa !85
  %1242 = load i8, i8* %kresult1965, align 1, !tbaa !85
  %conv1982 = zext i8 %1242 to i32
  %neg1983 = xor i32 %conv1982, -1
  %1243 = load i8, i8* %yresult1956, align 1, !tbaa !85
  %conv1984 = zext i8 %1243 to i32
  %and1985 = and i32 %conv1984, %neg1983
  %conv1986 = trunc i32 %and1985 to i8
  store i8 %conv1986, i8* %yresult1956, align 1, !tbaa !85
  %1244 = load i8, i8* %cresult1938, align 1, !tbaa !85
  %conv1987 = zext i8 %1244 to i32
  %1245 = load i8, i8* %rmask, align 1, !tbaa !85
  %conv1988 = zext i8 %1245 to i32
  %and1989 = and i32 %conv1987, %conv1988
  %1246 = load i8, i8* %cdbyte1935, align 1, !tbaa !85
  %conv1990 = zext i8 %1246 to i32
  %1247 = load i8, i8* %rmask, align 1, !tbaa !85
  %conv1991 = zext i8 %1247 to i32
  %neg1992 = xor i32 %conv1991, -1
  %and1993 = and i32 %conv1990, %neg1992
  %or1994 = or i32 %and1989, %and1993
  %conv1995 = trunc i32 %or1994 to i8
  %1248 = load i8*, i8** %cdptr1749, align 8, !tbaa !1
  %incdec.ptr1996 = getelementptr inbounds i8, i8* %1248, i32 1
  store i8* %incdec.ptr1996, i8** %cdptr1749, align 8, !tbaa !1
  store i8 %conv1995, i8* %1248, align 1, !tbaa !85
  %1249 = load i8, i8* %mresult1947, align 1, !tbaa !85
  %conv1997 = zext i8 %1249 to i32
  %1250 = load i8, i8* %rmask, align 1, !tbaa !85
  %conv1998 = zext i8 %1250 to i32
  %and1999 = and i32 %conv1997, %conv1998
  %1251 = load i8, i8* %mdbyte1936, align 1, !tbaa !85
  %conv2000 = zext i8 %1251 to i32
  %1252 = load i8, i8* %rmask, align 1, !tbaa !85
  %conv2001 = zext i8 %1252 to i32
  %neg2002 = xor i32 %conv2001, -1
  %and2003 = and i32 %conv2000, %neg2002
  %or2004 = or i32 %and1999, %and2003
  %conv2005 = trunc i32 %or2004 to i8
  %1253 = load i8*, i8** %mdptr1750, align 8, !tbaa !1
  %incdec.ptr2006 = getelementptr inbounds i8, i8* %1253, i32 1
  store i8* %incdec.ptr2006, i8** %mdptr1750, align 8, !tbaa !1
  store i8 %conv2005, i8* %1253, align 1, !tbaa !85
  %1254 = load i8, i8* %yresult1956, align 1, !tbaa !85
  %conv2007 = zext i8 %1254 to i32
  %1255 = load i8, i8* %rmask, align 1, !tbaa !85
  %conv2008 = zext i8 %1255 to i32
  %and2009 = and i32 %conv2007, %conv2008
  %1256 = load i8, i8* %ydbyte1937, align 1, !tbaa !85
  %conv2010 = zext i8 %1256 to i32
  %1257 = load i8, i8* %rmask, align 1, !tbaa !85
  %conv2011 = zext i8 %1257 to i32
  %neg2012 = xor i32 %conv2011, -1
  %and2013 = and i32 %conv2010, %neg2012
  %or2014 = or i32 %and2009, %and2013
  %conv2015 = trunc i32 %or2014 to i8
  %1258 = load i8*, i8** %ydptr1751, align 8, !tbaa !1
  %incdec.ptr2016 = getelementptr inbounds i8, i8* %1258, i32 1
  store i8* %incdec.ptr2016, i8** %ydptr1751, align 8, !tbaa !1
  store i8 %conv2015, i8* %1258, align 1, !tbaa !85
  %1259 = load i8, i8* %kresult1965, align 1, !tbaa !85
  %conv2017 = zext i8 %1259 to i32
  %1260 = load i8, i8* %rmask, align 1, !tbaa !85
  %conv2018 = zext i8 %1260 to i32
  %and2019 = and i32 %conv2017, %conv2018
  %1261 = load i8, i8* %kdbyte1934, align 1, !tbaa !85
  %conv2020 = zext i8 %1261 to i32
  %1262 = load i8, i8* %rmask, align 1, !tbaa !85
  %conv2021 = zext i8 %1262 to i32
  %neg2022 = xor i32 %conv2021, -1
  %and2023 = and i32 %conv2020, %neg2022
  %or2024 = or i32 %and2019, %and2023
  %conv2025 = trunc i32 %or2024 to i8
  %1263 = load i8*, i8** %kdptr1752, align 8, !tbaa !1
  %incdec.ptr2026 = getelementptr inbounds i8, i8* %1263, i32 1
  store i8* %incdec.ptr2026, i8** %kdptr1752, align 8, !tbaa !1
  store i8 %conv2025, i8* %1263, align 1, !tbaa !85
  call void @llvm.lifetime.end(i64 1, i8* %kresult1965) #1
  call void @llvm.lifetime.end(i64 1, i8* %yresult1956) #1
  call void @llvm.lifetime.end(i64 1, i8* %mresult1947) #1
  call void @llvm.lifetime.end(i64 1, i8* %cresult1938) #1
  call void @llvm.lifetime.end(i64 1, i8* %ydbyte1937) #1
  call void @llvm.lifetime.end(i64 1, i8* %mdbyte1936) #1
  call void @llvm.lifetime.end(i64 1, i8* %cdbyte1935) #1
  call void @llvm.lifetime.end(i64 1, i8* %kdbyte1934) #1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.2027

cleanup.2027:                                     ; preds = %while.end.1933, %if.then.1850
  %1264 = bitcast i32* %left1753 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1264) #1
  %1265 = bitcast i8** %kdptr1752 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1265) #1
  %1266 = bitcast i8** %ydptr1751 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1266) #1
  %1267 = bitcast i8** %mdptr1750 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1267) #1
  %1268 = bitcast i8** %cdptr1749 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1268) #1
  %cleanup.dest.2032 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.2032, label %unreachable [
    i32 0, label %cleanup.cont.2033
    i32 24, label %for.inc.2034
  ]

cleanup.cont.2033:                                ; preds = %cleanup.2027
  br label %for.inc.2034

for.inc.2034:                                     ; preds = %cleanup.cont.2033, %cleanup.2027
  %1269 = load i32, i32* %draster, align 4, !tbaa !5
  %1270 = load i8*, i8** %cdrow, align 8, !tbaa !1
  %idx.ext2035 = zext i32 %1269 to i64
  %add.ptr2036 = getelementptr inbounds i8, i8* %1270, i64 %idx.ext2035
  store i8* %add.ptr2036, i8** %cdrow, align 8, !tbaa !1
  %1271 = load i32, i32* %draster, align 4, !tbaa !5
  %1272 = load i8*, i8** %mdrow, align 8, !tbaa !1
  %idx.ext2037 = zext i32 %1271 to i64
  %add.ptr2038 = getelementptr inbounds i8, i8* %1272, i64 %idx.ext2037
  store i8* %add.ptr2038, i8** %mdrow, align 8, !tbaa !1
  %1273 = load i32, i32* %draster, align 4, !tbaa !5
  %1274 = load i8*, i8** %ydrow, align 8, !tbaa !1
  %idx.ext2039 = zext i32 %1273 to i64
  %add.ptr2040 = getelementptr inbounds i8, i8* %1274, i64 %idx.ext2039
  store i8* %add.ptr2040, i8** %ydrow, align 8, !tbaa !1
  %1275 = load i32, i32* %draster, align 4, !tbaa !5
  %1276 = load i8*, i8** %kdrow, align 8, !tbaa !1
  %idx.ext2041 = zext i32 %1275 to i64
  %add.ptr2042 = getelementptr inbounds i8, i8* %1276, i64 %idx.ext2041
  store i8* %add.ptr2042, i8** %kdrow, align 8, !tbaa !1
  br label %for.cond.1744

for.end.2043:                                     ; preds = %for.cond.1744
  %1277 = bitcast i64 (i64, i64, i64)** %proc1741 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1277) #1
  br label %if.end.2388

if.else.2044:                                     ; preds = %if.else.1738
  %1278 = bitcast i32* %sbit2045 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1278) #1
  %1279 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %and2046 = and i32 %1279, 7
  store i32 %and2046, i32* %sbit2045, align 4, !tbaa !5
  %1280 = bitcast i32* %sskew2047 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1280) #1
  %1281 = load i32, i32* %sbit2045, align 4, !tbaa !5
  %1282 = load i32, i32* %dbit, align 4, !tbaa !5
  %sub2048 = sub nsw i32 %1281, %1282
  store i32 %sub2048, i32* %sskew2047, align 4, !tbaa !5
  %1283 = load i32, i32* %sskew2047, align 4, !tbaa !5
  %cmp2049 = icmp slt i32 %1283, 0
  br i1 %cmp2049, label %if.then.2051, label %if.end.2054

if.then.2051:                                     ; preds = %if.else.2044
  %1284 = load i8*, i8** %srow.addr, align 8, !tbaa !1
  %incdec.ptr2052 = getelementptr inbounds i8, i8* %1284, i32 -1
  store i8* %incdec.ptr2052, i8** %srow.addr, align 8, !tbaa !1
  %1285 = load i32, i32* %sskew2047, align 4, !tbaa !5
  %add2053 = add nsw i32 %1285, 8
  store i32 %add2053, i32* %sskew2047, align 4, !tbaa !5
  br label %if.end.2054

if.end.2054:                                      ; preds = %if.then.2051, %if.else.2044
  %1286 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %shr2055 = ashr i32 %1286, 3
  %1287 = load i8*, i8** %srow.addr, align 8, !tbaa !1
  %idx.ext2056 = sext i32 %shr2055 to i64
  %add.ptr2057 = getelementptr inbounds i8, i8* %1287, i64 %idx.ext2056
  store i8* %add.ptr2057, i8** %srow.addr, align 8, !tbaa !1
  br label %for.cond.2058

for.cond.2058:                                    ; preds = %for.inc.2376, %if.end.2054
  %1288 = load i32, i32* %line_count, align 4, !tbaa !5
  %dec2059 = add nsw i32 %1288, -1
  store i32 %dec2059, i32* %line_count, align 4, !tbaa !5
  %cmp2060 = icmp sgt i32 %1288, 0
  br i1 %cmp2060, label %for.body.2062, label %for.end.2387

for.body.2062:                                    ; preds = %for.cond.2058
  %1289 = bitcast i8** %sptr2063 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1289) #1
  %1290 = load i8*, i8** %srow.addr, align 8, !tbaa !1
  store i8* %1290, i8** %sptr2063, align 8, !tbaa !1
  %1291 = bitcast i8** %cdptr2064 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1291) #1
  %1292 = load i8*, i8** %cdrow, align 8, !tbaa !1
  store i8* %1292, i8** %cdptr2064, align 8, !tbaa !1
  %1293 = bitcast i8** %mdptr2065 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1293) #1
  %1294 = load i8*, i8** %mdrow, align 8, !tbaa !1
  store i8* %1294, i8** %mdptr2065, align 8, !tbaa !1
  %1295 = bitcast i8** %ydptr2066 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1295) #1
  %1296 = load i8*, i8** %ydrow, align 8, !tbaa !1
  store i8* %1296, i8** %ydptr2066, align 8, !tbaa !1
  %1297 = bitcast i8** %kdptr2067 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1297) #1
  %1298 = load i8*, i8** %kdrow, align 8, !tbaa !1
  store i8* %1298, i8** %kdptr2067, align 8, !tbaa !1
  %1299 = bitcast i32* %left2068 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1299) #1
  %1300 = load i32, i32* %width.addr, align 4, !tbaa !5
  %sub2069 = sub nsw i32 %1300, 8
  store i32 %sub2069, i32* %left2068, align 4, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %kdbyte2070) #1
  %1301 = load i8*, i8** %kdptr2067, align 8, !tbaa !1
  %1302 = load i8, i8* %1301, align 1, !tbaa !85
  store i8 %1302, i8* %kdbyte2070, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %cdbyte2071) #1
  %1303 = load i8*, i8** %cdptr2064, align 8, !tbaa !1
  %1304 = load i8, i8* %1303, align 1, !tbaa !85
  store i8 %1304, i8* %cdbyte2071, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %mdbyte2072) #1
  %1305 = load i8*, i8** %mdptr2065, align 8, !tbaa !1
  %1306 = load i8, i8* %1305, align 1, !tbaa !85
  store i8 %1306, i8* %mdbyte2072, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %ydbyte2073) #1
  %1307 = load i8*, i8** %ydptr2066, align 8, !tbaa !1
  %1308 = load i8, i8* %1307, align 1, !tbaa !85
  store i8 %1308, i8* %ydbyte2073, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %sbyte) #1
  %1309 = load i32, i32* %sskew2047, align 4, !tbaa !5
  %tobool2074 = icmp ne i32 %1309, 0
  br i1 %tobool2074, label %cond.true.2075, label %cond.false.2084

cond.true.2075:                                   ; preds = %for.body.2062
  %1310 = load i8*, i8** %sptr2063, align 8, !tbaa !1
  %arrayidx2076 = getelementptr inbounds i8, i8* %1310, i64 0
  %1311 = load i8, i8* %arrayidx2076, align 1, !tbaa !85
  %conv2077 = zext i8 %1311 to i32
  %1312 = load i32, i32* %sskew2047, align 4, !tbaa !5
  %shl2078 = shl i32 %conv2077, %1312
  %1313 = load i8*, i8** %sptr2063, align 8, !tbaa !1
  %arrayidx2079 = getelementptr inbounds i8, i8* %1313, i64 1
  %1314 = load i8, i8* %arrayidx2079, align 1, !tbaa !85
  %conv2080 = zext i8 %1314 to i32
  %1315 = load i32, i32* %sskew2047, align 4, !tbaa !5
  %sub2081 = sub nsw i32 8, %1315
  %shr2082 = ashr i32 %conv2080, %sub2081
  %add2083 = add nsw i32 %shl2078, %shr2082
  br label %cond.end.2086

cond.false.2084:                                  ; preds = %for.body.2062
  %1316 = load i8*, i8** %sptr2063, align 8, !tbaa !1
  %1317 = load i8, i8* %1316, align 1, !tbaa !85
  %conv2085 = zext i8 %1317 to i32
  br label %cond.end.2086

cond.end.2086:                                    ; preds = %cond.false.2084, %cond.true.2075
  %cond2087 = phi i32 [ %add2083, %cond.true.2075 ], [ %conv2085, %cond.false.2084 ]
  %conv2088 = trunc i32 %cond2087 to i8
  store i8 %conv2088, i8* %sbyte, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %cresult2089) #1
  %1318 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %cproc, align 8, !tbaa !1
  %1319 = load i8, i8* %cdbyte2071, align 1, !tbaa !85
  %conv2090 = zext i8 %1319 to i32
  %1320 = load i8, i8* %kdbyte2070, align 1, !tbaa !85
  %conv2091 = zext i8 %1320 to i32
  %or2092 = or i32 %conv2090, %conv2091
  %conv2093 = sext i32 %or2092 to i64
  %1321 = load i8, i8* %sbyte, align 1, !tbaa !85
  %conv2094 = zext i8 %1321 to i64
  %1322 = load i32, i32* %ctcolor, align 4, !tbaa !5
  %conv2095 = sext i32 %1322 to i64
  %call2096 = call i64 %1318(i64 %conv2093, i64 %conv2094, i64 %conv2095) #4
  %conv2097 = trunc i64 %call2096 to i8
  store i8 %conv2097, i8* %cresult2089, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %mresult2098) #1
  %1323 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %mproc, align 8, !tbaa !1
  %1324 = load i8, i8* %mdbyte2072, align 1, !tbaa !85
  %conv2099 = zext i8 %1324 to i32
  %1325 = load i8, i8* %kdbyte2070, align 1, !tbaa !85
  %conv2100 = zext i8 %1325 to i32
  %or2101 = or i32 %conv2099, %conv2100
  %conv2102 = sext i32 %or2101 to i64
  %1326 = load i8, i8* %sbyte, align 1, !tbaa !85
  %conv2103 = zext i8 %1326 to i64
  %1327 = load i32, i32* %mtcolor, align 4, !tbaa !5
  %conv2104 = sext i32 %1327 to i64
  %call2105 = call i64 %1323(i64 %conv2102, i64 %conv2103, i64 %conv2104) #4
  %conv2106 = trunc i64 %call2105 to i8
  store i8 %conv2106, i8* %mresult2098, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %yresult2107) #1
  %1328 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %yproc, align 8, !tbaa !1
  %1329 = load i8, i8* %ydbyte2073, align 1, !tbaa !85
  %conv2108 = zext i8 %1329 to i32
  %1330 = load i8, i8* %kdbyte2070, align 1, !tbaa !85
  %conv2109 = zext i8 %1330 to i32
  %or2110 = or i32 %conv2108, %conv2109
  %conv2111 = sext i32 %or2110 to i64
  %1331 = load i8, i8* %sbyte, align 1, !tbaa !85
  %conv2112 = zext i8 %1331 to i64
  %1332 = load i32, i32* %ytcolor, align 4, !tbaa !5
  %conv2113 = sext i32 %1332 to i64
  %call2114 = call i64 %1328(i64 %conv2111, i64 %conv2112, i64 %conv2113) #4
  %conv2115 = trunc i64 %call2114 to i8
  store i8 %conv2115, i8* %yresult2107, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %kresult2116) #1
  %1333 = load i8, i8* %cresult2089, align 1, !tbaa !85
  %conv2117 = zext i8 %1333 to i32
  %1334 = load i8, i8* %mresult2098, align 1, !tbaa !85
  %conv2118 = zext i8 %1334 to i32
  %and2119 = and i32 %conv2117, %conv2118
  %1335 = load i8, i8* %yresult2107, align 1, !tbaa !85
  %conv2120 = zext i8 %1335 to i32
  %and2121 = and i32 %and2119, %conv2120
  %conv2122 = trunc i32 %and2121 to i8
  store i8 %conv2122, i8* %kresult2116, align 1, !tbaa !85
  %1336 = load i8, i8* %kresult2116, align 1, !tbaa !85
  %conv2123 = zext i8 %1336 to i32
  %neg2124 = xor i32 %conv2123, -1
  %1337 = load i8, i8* %cresult2089, align 1, !tbaa !85
  %conv2125 = zext i8 %1337 to i32
  %and2126 = and i32 %conv2125, %neg2124
  %conv2127 = trunc i32 %and2126 to i8
  store i8 %conv2127, i8* %cresult2089, align 1, !tbaa !85
  %1338 = load i8, i8* %kresult2116, align 1, !tbaa !85
  %conv2128 = zext i8 %1338 to i32
  %neg2129 = xor i32 %conv2128, -1
  %1339 = load i8, i8* %mresult2098, align 1, !tbaa !85
  %conv2130 = zext i8 %1339 to i32
  %and2131 = and i32 %conv2130, %neg2129
  %conv2132 = trunc i32 %and2131 to i8
  store i8 %conv2132, i8* %mresult2098, align 1, !tbaa !85
  %1340 = load i8, i8* %kresult2116, align 1, !tbaa !85
  %conv2133 = zext i8 %1340 to i32
  %neg2134 = xor i32 %conv2133, -1
  %1341 = load i8, i8* %yresult2107, align 1, !tbaa !85
  %conv2135 = zext i8 %1341 to i32
  %and2136 = and i32 %conv2135, %neg2134
  %conv2137 = trunc i32 %and2136 to i8
  store i8 %conv2137, i8* %yresult2107, align 1, !tbaa !85
  %1342 = load i8, i8* %cresult2089, align 1, !tbaa !85
  %conv2138 = zext i8 %1342 to i32
  %1343 = load i8, i8* %lmask, align 1, !tbaa !85
  %conv2139 = zext i8 %1343 to i32
  %and2140 = and i32 %conv2138, %conv2139
  %1344 = load i8, i8* %cdbyte2071, align 1, !tbaa !85
  %conv2141 = zext i8 %1344 to i32
  %1345 = load i8, i8* %lmask, align 1, !tbaa !85
  %conv2142 = zext i8 %1345 to i32
  %neg2143 = xor i32 %conv2142, -1
  %and2144 = and i32 %conv2141, %neg2143
  %or2145 = or i32 %and2140, %and2144
  %conv2146 = trunc i32 %or2145 to i8
  %1346 = load i8*, i8** %cdptr2064, align 8, !tbaa !1
  %incdec.ptr2147 = getelementptr inbounds i8, i8* %1346, i32 1
  store i8* %incdec.ptr2147, i8** %cdptr2064, align 8, !tbaa !1
  store i8 %conv2146, i8* %1346, align 1, !tbaa !85
  %1347 = load i8, i8* %mresult2098, align 1, !tbaa !85
  %conv2148 = zext i8 %1347 to i32
  %1348 = load i8, i8* %lmask, align 1, !tbaa !85
  %conv2149 = zext i8 %1348 to i32
  %and2150 = and i32 %conv2148, %conv2149
  %1349 = load i8, i8* %mdbyte2072, align 1, !tbaa !85
  %conv2151 = zext i8 %1349 to i32
  %1350 = load i8, i8* %lmask, align 1, !tbaa !85
  %conv2152 = zext i8 %1350 to i32
  %neg2153 = xor i32 %conv2152, -1
  %and2154 = and i32 %conv2151, %neg2153
  %or2155 = or i32 %and2150, %and2154
  %conv2156 = trunc i32 %or2155 to i8
  %1351 = load i8*, i8** %mdptr2065, align 8, !tbaa !1
  %incdec.ptr2157 = getelementptr inbounds i8, i8* %1351, i32 1
  store i8* %incdec.ptr2157, i8** %mdptr2065, align 8, !tbaa !1
  store i8 %conv2156, i8* %1351, align 1, !tbaa !85
  %1352 = load i8, i8* %yresult2107, align 1, !tbaa !85
  %conv2158 = zext i8 %1352 to i32
  %1353 = load i8, i8* %lmask, align 1, !tbaa !85
  %conv2159 = zext i8 %1353 to i32
  %and2160 = and i32 %conv2158, %conv2159
  %1354 = load i8, i8* %ydbyte2073, align 1, !tbaa !85
  %conv2161 = zext i8 %1354 to i32
  %1355 = load i8, i8* %lmask, align 1, !tbaa !85
  %conv2162 = zext i8 %1355 to i32
  %neg2163 = xor i32 %conv2162, -1
  %and2164 = and i32 %conv2161, %neg2163
  %or2165 = or i32 %and2160, %and2164
  %conv2166 = trunc i32 %or2165 to i8
  %1356 = load i8*, i8** %ydptr2066, align 8, !tbaa !1
  %incdec.ptr2167 = getelementptr inbounds i8, i8* %1356, i32 1
  store i8* %incdec.ptr2167, i8** %ydptr2066, align 8, !tbaa !1
  store i8 %conv2166, i8* %1356, align 1, !tbaa !85
  %1357 = load i8, i8* %kresult2116, align 1, !tbaa !85
  %conv2168 = zext i8 %1357 to i32
  %1358 = load i8, i8* %lmask, align 1, !tbaa !85
  %conv2169 = zext i8 %1358 to i32
  %and2170 = and i32 %conv2168, %conv2169
  %1359 = load i8, i8* %kdbyte2070, align 1, !tbaa !85
  %conv2171 = zext i8 %1359 to i32
  %1360 = load i8, i8* %lmask, align 1, !tbaa !85
  %conv2172 = zext i8 %1360 to i32
  %neg2173 = xor i32 %conv2172, -1
  %and2174 = and i32 %conv2171, %neg2173
  %or2175 = or i32 %and2170, %and2174
  %conv2176 = trunc i32 %or2175 to i8
  %1361 = load i8*, i8** %kdptr2067, align 8, !tbaa !1
  %incdec.ptr2177 = getelementptr inbounds i8, i8* %1361, i32 1
  store i8* %incdec.ptr2177, i8** %kdptr2067, align 8, !tbaa !1
  store i8 %conv2176, i8* %1361, align 1, !tbaa !85
  %1362 = load i8*, i8** %sptr2063, align 8, !tbaa !1
  %incdec.ptr2178 = getelementptr inbounds i8, i8* %1362, i32 1
  store i8* %incdec.ptr2178, i8** %sptr2063, align 8, !tbaa !1
  %1363 = load i32, i32* %left2068, align 4, !tbaa !5
  %sub2179 = sub nsw i32 %1363, 8
  store i32 %sub2179, i32* %left2068, align 4, !tbaa !5
  call void @llvm.lifetime.end(i64 1, i8* %kresult2116) #1
  call void @llvm.lifetime.end(i64 1, i8* %yresult2107) #1
  call void @llvm.lifetime.end(i64 1, i8* %mresult2098) #1
  call void @llvm.lifetime.end(i64 1, i8* %cresult2089) #1
  call void @llvm.lifetime.end(i64 1, i8* %sbyte) #1
  call void @llvm.lifetime.end(i64 1, i8* %ydbyte2073) #1
  call void @llvm.lifetime.end(i64 1, i8* %mdbyte2072) #1
  call void @llvm.lifetime.end(i64 1, i8* %cdbyte2071) #1
  call void @llvm.lifetime.end(i64 1, i8* %kdbyte2070) #1
  br label %while.cond.2180

while.cond.2180:                                  ; preds = %cond.end.2213, %cond.end.2086
  %1364 = load i32, i32* %left2068, align 4, !tbaa !5
  %cmp2181 = icmp sgt i32 %1364, 0
  br i1 %cmp2181, label %while.body.2183, label %while.end.2262

while.body.2183:                                  ; preds = %while.cond.2180
  call void @llvm.lifetime.start(i64 1, i8* %kdbyte2184) #1
  %1365 = load i8*, i8** %kdptr2067, align 8, !tbaa !1
  %1366 = load i8, i8* %1365, align 1, !tbaa !85
  store i8 %1366, i8* %kdbyte2184, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %cdbyte2185) #1
  %1367 = load i8*, i8** %cdptr2064, align 8, !tbaa !1
  %1368 = load i8, i8* %1367, align 1, !tbaa !85
  %conv2186 = zext i8 %1368 to i32
  %1369 = load i8, i8* %kdbyte2184, align 1, !tbaa !85
  %conv2187 = zext i8 %1369 to i32
  %or2188 = or i32 %conv2186, %conv2187
  %conv2189 = trunc i32 %or2188 to i8
  store i8 %conv2189, i8* %cdbyte2185, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %mdbyte2190) #1
  %1370 = load i8*, i8** %mdptr2065, align 8, !tbaa !1
  %1371 = load i8, i8* %1370, align 1, !tbaa !85
  %conv2191 = zext i8 %1371 to i32
  %1372 = load i8, i8* %kdbyte2184, align 1, !tbaa !85
  %conv2192 = zext i8 %1372 to i32
  %or2193 = or i32 %conv2191, %conv2192
  %conv2194 = trunc i32 %or2193 to i8
  store i8 %conv2194, i8* %mdbyte2190, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %ydbyte2195) #1
  %1373 = load i8*, i8** %ydptr2066, align 8, !tbaa !1
  %1374 = load i8, i8* %1373, align 1, !tbaa !85
  %conv2196 = zext i8 %1374 to i32
  %1375 = load i8, i8* %kdbyte2184, align 1, !tbaa !85
  %conv2197 = zext i8 %1375 to i32
  %or2198 = or i32 %conv2196, %conv2197
  %conv2199 = trunc i32 %or2198 to i8
  store i8 %conv2199, i8* %ydbyte2195, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %sbyte2200) #1
  %1376 = load i32, i32* %sskew2047, align 4, !tbaa !5
  %tobool2201 = icmp ne i32 %1376, 0
  br i1 %tobool2201, label %cond.true.2202, label %cond.false.2211

cond.true.2202:                                   ; preds = %while.body.2183
  %1377 = load i8*, i8** %sptr2063, align 8, !tbaa !1
  %arrayidx2203 = getelementptr inbounds i8, i8* %1377, i64 0
  %1378 = load i8, i8* %arrayidx2203, align 1, !tbaa !85
  %conv2204 = zext i8 %1378 to i32
  %1379 = load i32, i32* %sskew2047, align 4, !tbaa !5
  %shl2205 = shl i32 %conv2204, %1379
  %1380 = load i8*, i8** %sptr2063, align 8, !tbaa !1
  %arrayidx2206 = getelementptr inbounds i8, i8* %1380, i64 1
  %1381 = load i8, i8* %arrayidx2206, align 1, !tbaa !85
  %conv2207 = zext i8 %1381 to i32
  %1382 = load i32, i32* %sskew2047, align 4, !tbaa !5
  %sub2208 = sub nsw i32 8, %1382
  %shr2209 = ashr i32 %conv2207, %sub2208
  %add2210 = add nsw i32 %shl2205, %shr2209
  br label %cond.end.2213

cond.false.2211:                                  ; preds = %while.body.2183
  %1383 = load i8*, i8** %sptr2063, align 8, !tbaa !1
  %1384 = load i8, i8* %1383, align 1, !tbaa !85
  %conv2212 = zext i8 %1384 to i32
  br label %cond.end.2213

cond.end.2213:                                    ; preds = %cond.false.2211, %cond.true.2202
  %cond2214 = phi i32 [ %add2210, %cond.true.2202 ], [ %conv2212, %cond.false.2211 ]
  %conv2215 = trunc i32 %cond2214 to i8
  store i8 %conv2215, i8* %sbyte2200, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %cresult2216) #1
  %1385 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %cproc, align 8, !tbaa !1
  %1386 = load i8, i8* %cdbyte2185, align 1, !tbaa !85
  %conv2217 = zext i8 %1386 to i64
  %1387 = load i8, i8* %sbyte2200, align 1, !tbaa !85
  %conv2218 = zext i8 %1387 to i64
  %1388 = load i32, i32* %ctcolor, align 4, !tbaa !5
  %conv2219 = sext i32 %1388 to i64
  %call2220 = call i64 %1385(i64 %conv2217, i64 %conv2218, i64 %conv2219) #4
  %conv2221 = trunc i64 %call2220 to i8
  store i8 %conv2221, i8* %cresult2216, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %mresult2222) #1
  %1389 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %mproc, align 8, !tbaa !1
  %1390 = load i8, i8* %mdbyte2190, align 1, !tbaa !85
  %conv2223 = zext i8 %1390 to i64
  %1391 = load i8, i8* %sbyte2200, align 1, !tbaa !85
  %conv2224 = zext i8 %1391 to i64
  %1392 = load i32, i32* %mtcolor, align 4, !tbaa !5
  %conv2225 = sext i32 %1392 to i64
  %call2226 = call i64 %1389(i64 %conv2223, i64 %conv2224, i64 %conv2225) #4
  %conv2227 = trunc i64 %call2226 to i8
  store i8 %conv2227, i8* %mresult2222, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %yresult2228) #1
  %1393 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %yproc, align 8, !tbaa !1
  %1394 = load i8, i8* %ydbyte2195, align 1, !tbaa !85
  %conv2229 = zext i8 %1394 to i64
  %1395 = load i8, i8* %sbyte2200, align 1, !tbaa !85
  %conv2230 = zext i8 %1395 to i64
  %1396 = load i32, i32* %ytcolor, align 4, !tbaa !5
  %conv2231 = sext i32 %1396 to i64
  %call2232 = call i64 %1393(i64 %conv2229, i64 %conv2230, i64 %conv2231) #4
  %conv2233 = trunc i64 %call2232 to i8
  store i8 %conv2233, i8* %yresult2228, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %kresult2234) #1
  %1397 = load i8, i8* %cresult2216, align 1, !tbaa !85
  %conv2235 = zext i8 %1397 to i32
  %1398 = load i8, i8* %mresult2222, align 1, !tbaa !85
  %conv2236 = zext i8 %1398 to i32
  %and2237 = and i32 %conv2235, %conv2236
  %1399 = load i8, i8* %yresult2228, align 1, !tbaa !85
  %conv2238 = zext i8 %1399 to i32
  %and2239 = and i32 %and2237, %conv2238
  %conv2240 = trunc i32 %and2239 to i8
  store i8 %conv2240, i8* %kresult2234, align 1, !tbaa !85
  %1400 = load i8, i8* %cresult2216, align 1, !tbaa !85
  %conv2241 = zext i8 %1400 to i32
  %1401 = load i8, i8* %kresult2234, align 1, !tbaa !85
  %conv2242 = zext i8 %1401 to i32
  %neg2243 = xor i32 %conv2242, -1
  %and2244 = and i32 %conv2241, %neg2243
  %conv2245 = trunc i32 %and2244 to i8
  %1402 = load i8*, i8** %cdptr2064, align 8, !tbaa !1
  %incdec.ptr2246 = getelementptr inbounds i8, i8* %1402, i32 1
  store i8* %incdec.ptr2246, i8** %cdptr2064, align 8, !tbaa !1
  store i8 %conv2245, i8* %1402, align 1, !tbaa !85
  %1403 = load i8, i8* %mresult2222, align 1, !tbaa !85
  %conv2247 = zext i8 %1403 to i32
  %1404 = load i8, i8* %kresult2234, align 1, !tbaa !85
  %conv2248 = zext i8 %1404 to i32
  %neg2249 = xor i32 %conv2248, -1
  %and2250 = and i32 %conv2247, %neg2249
  %conv2251 = trunc i32 %and2250 to i8
  %1405 = load i8*, i8** %mdptr2065, align 8, !tbaa !1
  %incdec.ptr2252 = getelementptr inbounds i8, i8* %1405, i32 1
  store i8* %incdec.ptr2252, i8** %mdptr2065, align 8, !tbaa !1
  store i8 %conv2251, i8* %1405, align 1, !tbaa !85
  %1406 = load i8, i8* %yresult2228, align 1, !tbaa !85
  %conv2253 = zext i8 %1406 to i32
  %1407 = load i8, i8* %kresult2234, align 1, !tbaa !85
  %conv2254 = zext i8 %1407 to i32
  %neg2255 = xor i32 %conv2254, -1
  %and2256 = and i32 %conv2253, %neg2255
  %conv2257 = trunc i32 %and2256 to i8
  %1408 = load i8*, i8** %ydptr2066, align 8, !tbaa !1
  %incdec.ptr2258 = getelementptr inbounds i8, i8* %1408, i32 1
  store i8* %incdec.ptr2258, i8** %ydptr2066, align 8, !tbaa !1
  store i8 %conv2257, i8* %1408, align 1, !tbaa !85
  %1409 = load i8, i8* %kresult2234, align 1, !tbaa !85
  %1410 = load i8*, i8** %kdptr2067, align 8, !tbaa !1
  %incdec.ptr2259 = getelementptr inbounds i8, i8* %1410, i32 1
  store i8* %incdec.ptr2259, i8** %kdptr2067, align 8, !tbaa !1
  store i8 %1409, i8* %1410, align 1, !tbaa !85
  %1411 = load i8*, i8** %sptr2063, align 8, !tbaa !1
  %incdec.ptr2260 = getelementptr inbounds i8, i8* %1411, i32 1
  store i8* %incdec.ptr2260, i8** %sptr2063, align 8, !tbaa !1
  %1412 = load i32, i32* %left2068, align 4, !tbaa !5
  %sub2261 = sub nsw i32 %1412, 8
  store i32 %sub2261, i32* %left2068, align 4, !tbaa !5
  call void @llvm.lifetime.end(i64 1, i8* %kresult2234) #1
  call void @llvm.lifetime.end(i64 1, i8* %yresult2228) #1
  call void @llvm.lifetime.end(i64 1, i8* %mresult2222) #1
  call void @llvm.lifetime.end(i64 1, i8* %cresult2216) #1
  call void @llvm.lifetime.end(i64 1, i8* %sbyte2200) #1
  call void @llvm.lifetime.end(i64 1, i8* %ydbyte2195) #1
  call void @llvm.lifetime.end(i64 1, i8* %mdbyte2190) #1
  call void @llvm.lifetime.end(i64 1, i8* %cdbyte2185) #1
  call void @llvm.lifetime.end(i64 1, i8* %kdbyte2184) #1
  br label %while.cond.2180

while.end.2262:                                   ; preds = %while.cond.2180
  %1413 = load i32, i32* %left2068, align 4, !tbaa !5
  %cmp2263 = icmp sgt i32 %1413, -8
  br i1 %cmp2263, label %if.then.2265, label %if.end.2375

if.then.2265:                                     ; preds = %while.end.2262
  call void @llvm.lifetime.start(i64 1, i8* %kdbyte2266) #1
  %1414 = load i8*, i8** %kdptr2067, align 8, !tbaa !1
  %1415 = load i8, i8* %1414, align 1, !tbaa !85
  store i8 %1415, i8* %kdbyte2266, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %cdbyte2267) #1
  %1416 = load i8*, i8** %cdptr2064, align 8, !tbaa !1
  %1417 = load i8, i8* %1416, align 1, !tbaa !85
  store i8 %1417, i8* %cdbyte2267, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %mdbyte2268) #1
  %1418 = load i8*, i8** %mdptr2065, align 8, !tbaa !1
  %1419 = load i8, i8* %1418, align 1, !tbaa !85
  store i8 %1419, i8* %mdbyte2268, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %ydbyte2269) #1
  %1420 = load i8*, i8** %ydptr2066, align 8, !tbaa !1
  %1421 = load i8, i8* %1420, align 1, !tbaa !85
  store i8 %1421, i8* %ydbyte2269, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %sbyte2270) #1
  %1422 = load i32, i32* %sskew2047, align 4, !tbaa !5
  %tobool2271 = icmp ne i32 %1422, 0
  br i1 %tobool2271, label %cond.true.2272, label %cond.false.2281

cond.true.2272:                                   ; preds = %if.then.2265
  %1423 = load i8*, i8** %sptr2063, align 8, !tbaa !1
  %arrayidx2273 = getelementptr inbounds i8, i8* %1423, i64 0
  %1424 = load i8, i8* %arrayidx2273, align 1, !tbaa !85
  %conv2274 = zext i8 %1424 to i32
  %1425 = load i32, i32* %sskew2047, align 4, !tbaa !5
  %shl2275 = shl i32 %conv2274, %1425
  %1426 = load i8*, i8** %sptr2063, align 8, !tbaa !1
  %arrayidx2276 = getelementptr inbounds i8, i8* %1426, i64 1
  %1427 = load i8, i8* %arrayidx2276, align 1, !tbaa !85
  %conv2277 = zext i8 %1427 to i32
  %1428 = load i32, i32* %sskew2047, align 4, !tbaa !5
  %sub2278 = sub nsw i32 8, %1428
  %shr2279 = ashr i32 %conv2277, %sub2278
  %add2280 = add nsw i32 %shl2275, %shr2279
  br label %cond.end.2283

cond.false.2281:                                  ; preds = %if.then.2265
  %1429 = load i8*, i8** %sptr2063, align 8, !tbaa !1
  %1430 = load i8, i8* %1429, align 1, !tbaa !85
  %conv2282 = zext i8 %1430 to i32
  br label %cond.end.2283

cond.end.2283:                                    ; preds = %cond.false.2281, %cond.true.2272
  %cond2284 = phi i32 [ %add2280, %cond.true.2272 ], [ %conv2282, %cond.false.2281 ]
  %conv2285 = trunc i32 %cond2284 to i8
  store i8 %conv2285, i8* %sbyte2270, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %cresult2286) #1
  %1431 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %cproc, align 8, !tbaa !1
  %1432 = load i8, i8* %cdbyte2267, align 1, !tbaa !85
  %conv2287 = zext i8 %1432 to i32
  %1433 = load i8, i8* %kdbyte2266, align 1, !tbaa !85
  %conv2288 = zext i8 %1433 to i32
  %or2289 = or i32 %conv2287, %conv2288
  %conv2290 = sext i32 %or2289 to i64
  %1434 = load i8, i8* %sbyte2270, align 1, !tbaa !85
  %conv2291 = zext i8 %1434 to i64
  %1435 = load i32, i32* %ctcolor, align 4, !tbaa !5
  %conv2292 = sext i32 %1435 to i64
  %call2293 = call i64 %1431(i64 %conv2290, i64 %conv2291, i64 %conv2292) #4
  %conv2294 = trunc i64 %call2293 to i8
  store i8 %conv2294, i8* %cresult2286, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %mresult2295) #1
  %1436 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %mproc, align 8, !tbaa !1
  %1437 = load i8, i8* %mdbyte2268, align 1, !tbaa !85
  %conv2296 = zext i8 %1437 to i32
  %1438 = load i8, i8* %kdbyte2266, align 1, !tbaa !85
  %conv2297 = zext i8 %1438 to i32
  %or2298 = or i32 %conv2296, %conv2297
  %conv2299 = sext i32 %or2298 to i64
  %1439 = load i8, i8* %sbyte2270, align 1, !tbaa !85
  %conv2300 = zext i8 %1439 to i64
  %1440 = load i32, i32* %mtcolor, align 4, !tbaa !5
  %conv2301 = sext i32 %1440 to i64
  %call2302 = call i64 %1436(i64 %conv2299, i64 %conv2300, i64 %conv2301) #4
  %conv2303 = trunc i64 %call2302 to i8
  store i8 %conv2303, i8* %mresult2295, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %yresult2304) #1
  %1441 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %yproc, align 8, !tbaa !1
  %1442 = load i8, i8* %ydbyte2269, align 1, !tbaa !85
  %conv2305 = zext i8 %1442 to i32
  %1443 = load i8, i8* %kdbyte2266, align 1, !tbaa !85
  %conv2306 = zext i8 %1443 to i32
  %or2307 = or i32 %conv2305, %conv2306
  %conv2308 = sext i32 %or2307 to i64
  %1444 = load i8, i8* %sbyte2270, align 1, !tbaa !85
  %conv2309 = zext i8 %1444 to i64
  %1445 = load i32, i32* %ytcolor, align 4, !tbaa !5
  %conv2310 = sext i32 %1445 to i64
  %call2311 = call i64 %1441(i64 %conv2308, i64 %conv2309, i64 %conv2310) #4
  %conv2312 = trunc i64 %call2311 to i8
  store i8 %conv2312, i8* %yresult2304, align 1, !tbaa !85
  call void @llvm.lifetime.start(i64 1, i8* %kresult2313) #1
  %1446 = load i8, i8* %cresult2286, align 1, !tbaa !85
  %conv2314 = zext i8 %1446 to i32
  %1447 = load i8, i8* %mresult2295, align 1, !tbaa !85
  %conv2315 = zext i8 %1447 to i32
  %and2316 = and i32 %conv2314, %conv2315
  %1448 = load i8, i8* %yresult2304, align 1, !tbaa !85
  %conv2317 = zext i8 %1448 to i32
  %and2318 = and i32 %and2316, %conv2317
  %conv2319 = trunc i32 %and2318 to i8
  store i8 %conv2319, i8* %kresult2313, align 1, !tbaa !85
  %1449 = load i8, i8* %kresult2313, align 1, !tbaa !85
  %conv2320 = zext i8 %1449 to i32
  %neg2321 = xor i32 %conv2320, -1
  %1450 = load i8, i8* %cresult2286, align 1, !tbaa !85
  %conv2322 = zext i8 %1450 to i32
  %and2323 = and i32 %conv2322, %neg2321
  %conv2324 = trunc i32 %and2323 to i8
  store i8 %conv2324, i8* %cresult2286, align 1, !tbaa !85
  %1451 = load i8, i8* %kresult2313, align 1, !tbaa !85
  %conv2325 = zext i8 %1451 to i32
  %neg2326 = xor i32 %conv2325, -1
  %1452 = load i8, i8* %mresult2295, align 1, !tbaa !85
  %conv2327 = zext i8 %1452 to i32
  %and2328 = and i32 %conv2327, %neg2326
  %conv2329 = trunc i32 %and2328 to i8
  store i8 %conv2329, i8* %mresult2295, align 1, !tbaa !85
  %1453 = load i8, i8* %kresult2313, align 1, !tbaa !85
  %conv2330 = zext i8 %1453 to i32
  %neg2331 = xor i32 %conv2330, -1
  %1454 = load i8, i8* %yresult2304, align 1, !tbaa !85
  %conv2332 = zext i8 %1454 to i32
  %and2333 = and i32 %conv2332, %neg2331
  %conv2334 = trunc i32 %and2333 to i8
  store i8 %conv2334, i8* %yresult2304, align 1, !tbaa !85
  %1455 = load i8, i8* %cresult2286, align 1, !tbaa !85
  %conv2335 = zext i8 %1455 to i32
  %1456 = load i8, i8* %rmask, align 1, !tbaa !85
  %conv2336 = zext i8 %1456 to i32
  %and2337 = and i32 %conv2335, %conv2336
  %1457 = load i8, i8* %cdbyte2267, align 1, !tbaa !85
  %conv2338 = zext i8 %1457 to i32
  %1458 = load i8, i8* %rmask, align 1, !tbaa !85
  %conv2339 = zext i8 %1458 to i32
  %neg2340 = xor i32 %conv2339, -1
  %and2341 = and i32 %conv2338, %neg2340
  %or2342 = or i32 %and2337, %and2341
  %conv2343 = trunc i32 %or2342 to i8
  %1459 = load i8*, i8** %cdptr2064, align 8, !tbaa !1
  %incdec.ptr2344 = getelementptr inbounds i8, i8* %1459, i32 1
  store i8* %incdec.ptr2344, i8** %cdptr2064, align 8, !tbaa !1
  store i8 %conv2343, i8* %1459, align 1, !tbaa !85
  %1460 = load i8, i8* %mresult2295, align 1, !tbaa !85
  %conv2345 = zext i8 %1460 to i32
  %1461 = load i8, i8* %rmask, align 1, !tbaa !85
  %conv2346 = zext i8 %1461 to i32
  %and2347 = and i32 %conv2345, %conv2346
  %1462 = load i8, i8* %mdbyte2268, align 1, !tbaa !85
  %conv2348 = zext i8 %1462 to i32
  %1463 = load i8, i8* %rmask, align 1, !tbaa !85
  %conv2349 = zext i8 %1463 to i32
  %neg2350 = xor i32 %conv2349, -1
  %and2351 = and i32 %conv2348, %neg2350
  %or2352 = or i32 %and2347, %and2351
  %conv2353 = trunc i32 %or2352 to i8
  %1464 = load i8*, i8** %mdptr2065, align 8, !tbaa !1
  %incdec.ptr2354 = getelementptr inbounds i8, i8* %1464, i32 1
  store i8* %incdec.ptr2354, i8** %mdptr2065, align 8, !tbaa !1
  store i8 %conv2353, i8* %1464, align 1, !tbaa !85
  %1465 = load i8, i8* %yresult2304, align 1, !tbaa !85
  %conv2355 = zext i8 %1465 to i32
  %1466 = load i8, i8* %rmask, align 1, !tbaa !85
  %conv2356 = zext i8 %1466 to i32
  %and2357 = and i32 %conv2355, %conv2356
  %1467 = load i8, i8* %ydbyte2269, align 1, !tbaa !85
  %conv2358 = zext i8 %1467 to i32
  %1468 = load i8, i8* %rmask, align 1, !tbaa !85
  %conv2359 = zext i8 %1468 to i32
  %neg2360 = xor i32 %conv2359, -1
  %and2361 = and i32 %conv2358, %neg2360
  %or2362 = or i32 %and2357, %and2361
  %conv2363 = trunc i32 %or2362 to i8
  %1469 = load i8*, i8** %ydptr2066, align 8, !tbaa !1
  %incdec.ptr2364 = getelementptr inbounds i8, i8* %1469, i32 1
  store i8* %incdec.ptr2364, i8** %ydptr2066, align 8, !tbaa !1
  store i8 %conv2363, i8* %1469, align 1, !tbaa !85
  %1470 = load i8, i8* %kresult2313, align 1, !tbaa !85
  %conv2365 = zext i8 %1470 to i32
  %1471 = load i8, i8* %rmask, align 1, !tbaa !85
  %conv2366 = zext i8 %1471 to i32
  %and2367 = and i32 %conv2365, %conv2366
  %1472 = load i8, i8* %kdbyte2266, align 1, !tbaa !85
  %conv2368 = zext i8 %1472 to i32
  %1473 = load i8, i8* %rmask, align 1, !tbaa !85
  %conv2369 = zext i8 %1473 to i32
  %neg2370 = xor i32 %conv2369, -1
  %and2371 = and i32 %conv2368, %neg2370
  %or2372 = or i32 %and2367, %and2371
  %conv2373 = trunc i32 %or2372 to i8
  %1474 = load i8*, i8** %kdptr2067, align 8, !tbaa !1
  %incdec.ptr2374 = getelementptr inbounds i8, i8* %1474, i32 1
  store i8* %incdec.ptr2374, i8** %kdptr2067, align 8, !tbaa !1
  store i8 %conv2373, i8* %1474, align 1, !tbaa !85
  call void @llvm.lifetime.end(i64 1, i8* %kresult2313) #1
  call void @llvm.lifetime.end(i64 1, i8* %yresult2304) #1
  call void @llvm.lifetime.end(i64 1, i8* %mresult2295) #1
  call void @llvm.lifetime.end(i64 1, i8* %cresult2286) #1
  call void @llvm.lifetime.end(i64 1, i8* %sbyte2270) #1
  call void @llvm.lifetime.end(i64 1, i8* %ydbyte2269) #1
  call void @llvm.lifetime.end(i64 1, i8* %mdbyte2268) #1
  call void @llvm.lifetime.end(i64 1, i8* %cdbyte2267) #1
  call void @llvm.lifetime.end(i64 1, i8* %kdbyte2266) #1
  br label %if.end.2375

if.end.2375:                                      ; preds = %cond.end.2283, %while.end.2262
  %1475 = bitcast i32* %left2068 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1475) #1
  %1476 = bitcast i8** %kdptr2067 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1476) #1
  %1477 = bitcast i8** %ydptr2066 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1477) #1
  %1478 = bitcast i8** %mdptr2065 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1478) #1
  %1479 = bitcast i8** %cdptr2064 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1479) #1
  %1480 = bitcast i8** %sptr2063 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1480) #1
  br label %for.inc.2376

for.inc.2376:                                     ; preds = %if.end.2375
  %1481 = load i32, i32* %draster, align 4, !tbaa !5
  %1482 = load i8*, i8** %cdrow, align 8, !tbaa !1
  %idx.ext2377 = zext i32 %1481 to i64
  %add.ptr2378 = getelementptr inbounds i8, i8* %1482, i64 %idx.ext2377
  store i8* %add.ptr2378, i8** %cdrow, align 8, !tbaa !1
  %1483 = load i32, i32* %draster, align 4, !tbaa !5
  %1484 = load i8*, i8** %mdrow, align 8, !tbaa !1
  %idx.ext2379 = zext i32 %1483 to i64
  %add.ptr2380 = getelementptr inbounds i8, i8* %1484, i64 %idx.ext2379
  store i8* %add.ptr2380, i8** %mdrow, align 8, !tbaa !1
  %1485 = load i32, i32* %draster, align 4, !tbaa !5
  %1486 = load i8*, i8** %ydrow, align 8, !tbaa !1
  %idx.ext2381 = zext i32 %1485 to i64
  %add.ptr2382 = getelementptr inbounds i8, i8* %1486, i64 %idx.ext2381
  store i8* %add.ptr2382, i8** %ydrow, align 8, !tbaa !1
  %1487 = load i32, i32* %draster, align 4, !tbaa !5
  %1488 = load i8*, i8** %kdrow, align 8, !tbaa !1
  %idx.ext2383 = zext i32 %1487 to i64
  %add.ptr2384 = getelementptr inbounds i8, i8* %1488, i64 %idx.ext2383
  store i8* %add.ptr2384, i8** %kdrow, align 8, !tbaa !1
  %1489 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %1490 = load i8*, i8** %srow.addr, align 8, !tbaa !1
  %idx.ext2385 = zext i32 %1489 to i64
  %add.ptr2386 = getelementptr inbounds i8, i8* %1490, i64 %idx.ext2385
  store i8* %add.ptr2386, i8** %srow.addr, align 8, !tbaa !1
  br label %for.cond.2058

for.end.2387:                                     ; preds = %for.cond.2058
  %1491 = bitcast i32* %sskew2047 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1491) #1
  %1492 = bitcast i32* %sbit2045 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1492) #1
  br label %if.end.2388

if.end.2388:                                      ; preds = %for.end.2387, %for.end.2043
  br label %if.end.2389

if.end.2389:                                      ; preds = %if.end.2388, %for.end.1737
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.2390

cleanup.2390:                                     ; preds = %if.end.2389, %for.end.1112, %if.then.25
  %1493 = bitcast i32* %constant_s to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1493) #1
  %1494 = bitcast i32* %ktcolor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1494) #1
  %1495 = bitcast i32* %ytcolor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1495) #1
  %1496 = bitcast i32* %mtcolor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1496) #1
  %1497 = bitcast i32* %ctcolor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1497) #1
  %1498 = bitcast i32* %kscolor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1498) #1
  %1499 = bitcast i32* %yscolor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1499) #1
  %1500 = bitcast i32* %mscolor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1500) #1
  %1501 = bitcast i32* %cscolor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1501) #1
  %1502 = bitcast i32* %dbit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1502) #1
  %1503 = bitcast i64 (i64, i64, i64)** %yproc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1503) #1
  %1504 = bitcast i64 (i64, i64, i64)** %mproc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1504) #1
  %1505 = bitcast i64 (i64, i64, i64)** %cproc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1505) #1
  call void @llvm.lifetime.end(i64 1, i8* %rmask) #1
  call void @llvm.lifetime.end(i64 1, i8* %lmask) #1
  %1506 = bitcast i8** %kdrow to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1506) #1
  %1507 = bitcast i8** %ydrow to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1507) #1
  %1508 = bitcast i8** %mdrow to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1508) #1
  %1509 = bitcast i8** %cdrow to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1509) #1
  %1510 = bitcast i32* %line_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1510) #1
  %1511 = bitcast i32* %draster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1511) #1
  %1512 = bitcast i32* %rop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1512) #1
  %1513 = load i32, i32* %retval
  ret i32 %1513

unreachable:                                      ; preds = %cleanup.2027, %cleanup.1718, %cleanup
  unreachable
}

declare i32 @mem_default_strip_copy_rop(%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32) #2

declare i32 @gx_get_bits_return_pointer(%struct.gx_device_s*, i32, i32, %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s*, i8**) #2

declare i32 @mem_get_bits_rectangle(%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**) #2

declare i32 @gx_get_bits_copy(%struct.gx_device_s*, i32, i32, i32, %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s*, i8*, i32) #2

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
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !6, i64 0}
!8 = !{!"gx_render_plane_s", !6, i64 0, !6, i64 4, !6, i64 8}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !3, i64 0}
!11 = !{!12, !15, i64 108}
!12 = !{!"gx_device_memory_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !13, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !14, i64 96, !17, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !18, i64 984, !6, i64 1052, !6, i64 1056, !19, i64 1064, !2, i64 1104, !3, i64 1112, !21, i64 1120, !22, i64 1144, !2, i64 1728, !6, i64 1736, !2, i64 1744, !2, i64 1752, !6, i64 1760, !2, i64 1768, !6, i64 1776, !3, i64 1780, !23, i64 2548, !2, i64 2576, !25, i64 2584, !26, i64 2600, !27, i64 2624, !28, i64 2656, !29, i64 2680, !30, i64 2720, !31, i64 2736, !6, i64 2744, !6, i64 2748, !6, i64 2752, !6, i64 2756, !6, i64 2760, !10, i64 2768, !2, i64 2776, !6, i64 2784, !6, i64 2788}
!13 = !{!"rc_header_s", !10, i64 0, !2, i64 8, !2, i64 16}
!14 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !15, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !16, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !10, i64 704, !6, i64 712}
!15 = !{!"short", !3, i64 0}
!16 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!17 = !{!"gx_device_cached_colors_s", !10, i64 0, !10, i64 8}
!18 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!19 = !{!"gdev_space_params_s", !10, i64 0, !10, i64 8, !20, i64 16, !6, i64 32, !3, i64 36}
!20 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !10, i64 8}
!21 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!22 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!23 = !{!"gs_matrix_s", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !24, i64 16, !24, i64 20}
!24 = !{!"float", !3, i64 0}
!25 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!26 = !{!"_c24", !10, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!27 = !{!"_c40", !10, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24}
!28 = !{!"_c48", !10, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!29 = !{!"_c56", !10, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!30 = !{!"_c64", !10, i64 0, !6, i64 8, !6, i64 12}
!31 = !{!"gs_log2_scale_point_s", !6, i64 0, !6, i64 4}
!32 = !{!12, !6, i64 100}
!33 = !{!8, !6, i64 4}
!34 = !{!12, !6, i64 848}
!35 = !{!12, !6, i64 2784}
!36 = !{!12, !2, i64 1144}
!37 = !{!12, !2, i64 1200}
!38 = !{!12, !2, i64 1216}
!39 = !{!12, !2, i64 1224}
!40 = !{!12, !2, i64 1312}
!41 = !{!12, !2, i64 1416}
!42 = !{!12, !2, i64 1424}
!43 = !{!12, !2, i64 1696}
!44 = !{!12, !2, i64 1448}
!45 = !{!12, !2, i64 1576}
!46 = !{!12, !2, i64 1656}
!47 = !{!12, !2, i64 1712}
!48 = !{!12, !2, i64 1664}
!49 = !{!12, !2, i64 1672}
!50 = !{!12, !2, i64 1704}
!51 = !{!52, !6, i64 848}
!52 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !13, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !14, i64 96, !17, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !18, i64 984, !6, i64 1052, !6, i64 1056, !19, i64 1064, !2, i64 1104, !3, i64 1112, !21, i64 1120, !22, i64 1144}
!53 = !{!52, !6, i64 836}
!54 = !{!55, !6, i64 0}
!55 = !{!"gs_fixed_rect_s", !56, i64 0, !56, i64 8}
!56 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!57 = !{!55, !6, i64 4}
!58 = !{!55, !6, i64 8}
!59 = !{!55, !6, i64 12}
!60 = !{!61, !2, i64 0}
!61 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !62, i64 352, !6, i64 360, !63, i64 368, !65, i64 632}
!62 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!63 = !{!"gs_client_color_s", !2, i64 0, !64, i64 8}
!64 = !{!"gs_paint_color_s", !3, i64 0}
!65 = !{!"_mask", !66, i64 0, !10, i64 8, !2, i64 16}
!66 = !{!"mp_", !6, i64 0, !6, i64 4}
!67 = !{!68, !2, i64 40}
!68 = !{!"gx_device_color_type_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80}
!69 = !{!70, !6, i64 0}
!70 = !{!"mem_save_params_s", !6, i64 0, !2, i64 8, !2, i64 16}
!71 = !{!12, !2, i64 1744}
!72 = !{!70, !2, i64 8}
!73 = !{!12, !2, i64 2576}
!74 = !{!70, !2, i64 16}
!75 = !{!12, !6, i64 836}
!76 = !{!12, !6, i64 832}
!77 = !{!12, !6, i64 1736}
!78 = !{!15, !15, i64 0}
!79 = !{!52, !2, i64 1672}
!80 = !{!52, !2, i64 1680}
!81 = !{!82, !6, i64 168}
!82 = !{!"cmm_dev_profile_s", !3, i64 0, !2, i64 32, !2, i64 40, !2, i64 48, !3, i64 56, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !2, i64 176, !6, i64 184, !2, i64 192, !13, i64 200}
!83 = !{!52, !2, i64 1576}
!84 = !{!52, !6, i64 832}
!85 = !{!3, !3, i64 0}
!86 = !{!52, !15, i64 108}
!87 = !{!52, !2, i64 1216}
!88 = !{!12, !2, i64 24}
!89 = !{!90, !2, i64 64}
!90 = !{!"gs_memory_s", !2, i64 0, !91, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!91 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!92 = !{!90, !2, i64 24}
!93 = !{!94, !6, i64 40}
!94 = !{!"gx_strip_bitmap_s", !2, i64 0, !6, i64 8, !62, i64 12, !10, i64 24, !15, i64 32, !15, i64 34, !15, i64 36, !15, i64 38, !6, i64 40}
!95 = !{!94, !15, i64 34}
!96 = !{!94, !15, i64 32}
!97 = !{!94, !2, i64 0}
!98 = !{!94, !6, i64 8}
!99 = !{i64 0, i64 8, !1, i64 8, i64 4, !5, i64 12, i64 4, !5, i64 16, i64 4, !5, i64 24, i64 8, !9, i64 32, i64 2, !78, i64 34, i64 2, !78, i64 36, i64 2, !78, i64 38, i64 2, !78, i64 40, i64 4, !5}
!100 = !{!94, !6, i64 12}
!101 = !{!94, !6, i64 16}
!102 = !{!103, !10, i64 0}
!103 = !{!"gs_get_bits_params_s", !10, i64 0, !3, i64 8, !6, i64 520, !6, i64 524, !6, i64 528}
!104 = !{!105, !6, i64 0}
!105 = !{!"gs_int_rect_s", !62, i64 0, !62, i64 8}
!106 = !{!105, !6, i64 8}
!107 = !{!105, !6, i64 4}
!108 = !{!105, !6, i64 12}
!109 = !{!103, !6, i64 528}
!110 = !{i64 0, i64 8, !9, i64 8, i64 512, !85, i64 520, i64 4, !5, i64 524, i64 4, !5, i64 528, i64 4, !5}
!111 = !{!103, !6, i64 520}
!112 = !{!94, !15, i64 38}
!113 = !{!94, !15, i64 36}
