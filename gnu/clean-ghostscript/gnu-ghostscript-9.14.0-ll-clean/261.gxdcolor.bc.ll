; ModuleID = './gxdcolor.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.gx_device_color_type_s = type { %struct.gs_memory_struct_type_s*, {}*, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* }
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
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
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
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
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
%struct.gs_get_bits_params_s = type opaque
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
%struct._svdevn = type { [64 x i16] }
%struct._devn = type { [64 x i16] }

@st_bytes = external constant %struct.gs_memory_struct_type_s, align 8
@gx_dc_type_data_none = constant { %struct.gs_memory_struct_type_s*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* } { %struct.gs_memory_struct_type_s* @st_bytes, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)* @gx_dc_no_save_dc, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)* @gx_dc_no_get_dev_halftone, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)* @gx_dc_no_get_phase, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* @gx_dc_no_load, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)* @gx_dc_no_fill_rectangle, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)* @gx_dc_no_fill_masked, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)* @gx_dc_no_equal, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)* @gx_dc_no_write, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)* @gx_dc_no_read, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* @gx_dc_no_get_nonzero_comps }, align 8
@gx_dc_type_none = constant %struct.gx_device_color_type_s* bitcast ({ %struct.gs_memory_struct_type_s*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* }* @gx_dc_type_data_none to %struct.gx_device_color_type_s*), align 8
@gx_dc_type_data_null = constant { %struct.gs_memory_struct_type_s*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* } { %struct.gs_memory_struct_type_s* @st_bytes, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)* @gx_dc_no_save_dc, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)* @gx_dc_no_get_dev_halftone, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)* @gx_dc_no_get_phase, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* @gx_dc_null_load, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)* @gx_dc_null_fill_rectangle, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)* @gx_dc_null_fill_masked, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)* @gx_dc_null_equal, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)* @gx_dc_no_write, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)* @gx_dc_null_read, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* @gx_dc_no_get_nonzero_comps }, align 8
@gx_dc_type_null = constant %struct.gx_device_color_type_s* bitcast ({ %struct.gs_memory_struct_type_s*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* }* @gx_dc_type_data_null to %struct.gx_device_color_type_s*), align 8
@gx_dc_type_data_pure = constant { %struct.gs_memory_struct_type_s*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* } { %struct.gs_memory_struct_type_s* @st_bytes, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)* @gx_dc_pure_save_dc, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)* @gx_dc_no_get_dev_halftone, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)* @gx_dc_no_get_phase, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* @gx_dc_pure_load, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)* @gx_dc_pure_fill_rectangle, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)* @gx_dc_pure_fill_masked, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)* @gx_dc_pure_equal, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)* @gx_dc_pure_write, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)* @gx_dc_pure_read, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* @gx_dc_pure_get_nonzero_comps }, align 8
@gx_dc_type_pure = constant %struct.gx_device_color_type_s* bitcast ({ %struct.gs_memory_struct_type_s*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* }* @gx_dc_type_data_pure to %struct.gx_device_color_type_s*), align 8
@gx_dc_type_data_devn = constant { %struct.gs_memory_struct_type_s*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* } { %struct.gs_memory_struct_type_s* @st_bytes, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)* @gx_dc_devn_save_dc, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)* @gx_dc_no_get_dev_halftone, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)* @gx_dc_no_get_phase, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)* @gx_dc_devn_load, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)* @gx_dc_devn_fill_rectangle, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)* @gx_dc_devn_fill_masked, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)* @gx_dc_devn_equal, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)* @gx_dc_devn_write, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)* @gx_dc_devn_read, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* @gx_dc_devn_get_nonzero_comps }, align 8
@gx_dc_type_devn = constant %struct.gx_device_color_type_s* bitcast ({ %struct.gs_memory_struct_type_s*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* }* @gx_dc_type_data_devn to %struct.gx_device_color_type_s*), align 8
@gx_rop_no_source_0 = internal constant %struct.gx_rop_source_s { i8* null, i32 0, i32 0, i64 0, [2 x i64] zeroinitializer, i32 0, i32 1 }, align 8
@gx_rop_no_source_1 = internal constant %struct.gx_rop_source_s { i8* null, i32 0, i32 0, i64 0, [2 x i64] [i64 1, i64 1], i32 0, i32 1 }, align 8
@dc_color_type_table = internal global [7 x %struct.gx_device_color_type_s*] [%struct.gx_device_color_type_s* bitcast ({ %struct.gs_memory_struct_type_s*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* }* @gx_dc_type_data_none to %struct.gx_device_color_type_s*), %struct.gx_device_color_type_s* bitcast ({ %struct.gs_memory_struct_type_s*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* }* @gx_dc_type_data_null to %struct.gx_device_color_type_s*), %struct.gx_device_color_type_s* bitcast ({ %struct.gs_memory_struct_type_s*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* }* @gx_dc_type_data_pure to %struct.gx_device_color_type_s*), %struct.gx_device_color_type_s* @gx_dc_pattern, %struct.gx_device_color_type_s* @gx_dc_type_data_ht_binary, %struct.gx_device_color_type_s* @gx_dc_type_data_ht_colored, %struct.gx_device_color_type_s* bitcast ({ %struct.gs_memory_struct_type_s*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* }* @gx_dc_type_data_devn to %struct.gx_device_color_type_s*)], align 16
@byte_bit_run_length = external constant [8 x i8*], align 16
@byte_bit_run_length_0 = external constant [256 x i8], align 16
@gx_dc_type_data_ht_colored = external constant %struct.gx_device_color_type_s, align 8
@gx_dc_pattern = external constant %struct.gx_device_color_type_s, align 8
@gx_dc_type_data_ht_binary = external constant %struct.gx_device_color_type_s, align 8

; Function Attrs: nounwind uwtable
define internal void @gx_dc_no_save_dc(%struct.gx_device_color_s* %pdevc, %struct.gx_device_color_saved_s* %psdc) #0 {
entry:
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %psdc.addr = alloca %struct.gx_device_color_saved_s*, align 8
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gx_device_color_saved_s* %psdc, %struct.gx_device_color_saved_s** %psdc.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %0, i32 0, i32 0
  %1 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !5
  %2 = load %struct.gx_device_color_saved_s*, %struct.gx_device_color_saved_s** %psdc.addr, align 8, !tbaa !1
  %type1 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %2, i32 0, i32 0
  store %struct.gx_device_color_type_s* %1, %struct.gx_device_color_type_s** %type1, align 8, !tbaa !14
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.gx_device_halftone_s* @gx_dc_no_get_dev_halftone(%struct.gx_device_color_s* %pdevc) #0 {
entry:
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  ret %struct.gx_device_halftone_s* null
}

; Function Attrs: nounwind uwtable
define i32 @gx_dc_no_get_phase(%struct.gx_device_color_s* %pdevc, %struct.gs_int_point_s* %pphase) #0 {
entry:
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %pphase.addr = alloca %struct.gs_int_point_s*, align 8
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gs_int_point_s* %pphase, %struct.gs_int_point_s** %pphase.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_no_load(%struct.gx_device_color_s* %pdevc, %struct.gs_imager_state_s* %ignore_pis, %struct.gx_device_s* %ignore_dev, i32 %ignore_select) #0 {
entry:
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %ignore_pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %ignore_dev.addr = alloca %struct.gx_device_s*, align 8
  %ignore_select.addr = alloca i32, align 4
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %ignore_pis, %struct.gs_imager_state_s** %ignore_pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %ignore_dev, %struct.gx_device_s** %ignore_dev.addr, align 8, !tbaa !1
  store i32 %ignore_select, i32* %ignore_select.addr, align 4, !tbaa !16
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_no_fill_rectangle(%struct.gx_device_color_s* %pdevc, i32 %x, i32 %y, i32 %w, i32 %h, %struct.gx_device_s* %dev, i32 %lop, %struct.gx_rop_source_s* %source) #0 {
entry:
  %retval = alloca i32, align 4
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %lop.addr = alloca i32, align 4
  %source.addr = alloca %struct.gx_rop_source_s*, align 8
  %filler = alloca %struct.gx_device_color_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !17
  store i32 %y, i32* %y.addr, align 4, !tbaa !17
  store i32 %w, i32* %w.addr, align 4, !tbaa !17
  store i32 %h, i32* %h.addr, align 4, !tbaa !17
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !17
  store %struct.gx_rop_source_s* %source, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_color_s* %filler to i8*
  call void @llvm.lifetime.start(i64 656, i8* %0) #1
  %1 = load i32, i32* %w.addr, align 4, !tbaa !17
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %h.addr, align 4, !tbaa !17
  %cmp1 = icmp sle i32 %2, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i32, i32* %lop.addr, align 4, !tbaa !17
  %shl = shl i32 %3, 4
  %4 = load i32, i32* %lop.addr, align 4, !tbaa !17
  %xor = xor i32 %shl, %4
  %and = and i32 %xor, 240
  %cmp2 = icmp ne i32 %and, 0
  br i1 %cmp2, label %if.then.5, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %if.end
  %5 = load i32, i32* %lop.addr, align 4, !tbaa !17
  %and4 = and i32 %5, 512
  %tobool = icmp ne i32 %and4, 0
  br i1 %tobool, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %lor.lhs.false.3, %if.end
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %lor.lhs.false.3
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %filler, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  store i64 0, i64* %pure, align 8, !tbaa !18
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %filler, i32 0, i32 0
  store %struct.gx_device_color_type_s* bitcast ({ %struct.gs_memory_struct_type_s*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* }* @gx_dc_type_data_pure to %struct.gx_device_color_type_s*), %struct.gx_device_color_type_s** %type, align 8, !tbaa !5
  %ccolor_valid = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %filler, i32 0, i32 3
  store i32 0, i32* %ccolor_valid, align 4, !tbaa !19
  %6 = load i32, i32* %x.addr, align 4, !tbaa !17
  %7 = load i32, i32* %y.addr, align 4, !tbaa !17
  %8 = load i32, i32* %w.addr, align 4, !tbaa !17
  %9 = load i32, i32* %h.addr, align 4, !tbaa !17
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %11 = load i32, i32* %lop.addr, align 4, !tbaa !17
  %12 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %call = call i32 @gx_dc_pure_fill_rectangle(%struct.gx_device_color_s* %filler, i32 %6, i32 %7, i32 %8, i32 %9, %struct.gx_device_s* %10, i32 %11, %struct.gx_rop_source_s* %12) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.6, %if.then.5, %if.then
  %13 = bitcast %struct.gx_device_color_s* %filler to i8*
  call void @llvm.lifetime.end(i64 656, i8* %13) #1
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_no_fill_masked(%struct.gx_device_color_s* %pdevc, i8* %data, i32 %data_x, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, %struct.gx_device_s* %dev, i32 %lop, i32 %invert) #0 {
entry:
  %retval = alloca i32, align 4
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %data.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %lop.addr = alloca i32, align 4
  %invert.addr = alloca i32, align 4
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !17
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !17
  store i64 %id, i64* %id.addr, align 8, !tbaa !18
  store i32 %x, i32* %x.addr, align 4, !tbaa !17
  store i32 %y, i32* %y.addr, align 4, !tbaa !17
  store i32 %w, i32* %w.addr, align 4, !tbaa !17
  store i32 %h, i32* %h.addr, align 4, !tbaa !17
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !17
  store i32 %invert, i32* %invert.addr, align 4, !tbaa !17
  %0 = load i32, i32* %w.addr, align 4, !tbaa !17
  %cmp = icmp sle i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %h.addr, align 4, !tbaa !17
  %cmp1 = icmp sle i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  store i32 -100, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_no_equal(%struct.gx_device_color_s* %pdevc1, %struct.gx_device_color_s* %pdevc2) #0 {
entry:
  %pdevc1.addr = alloca %struct.gx_device_color_s*, align 8
  %pdevc2.addr = alloca %struct.gx_device_color_s*, align 8
  store %struct.gx_device_color_s* %pdevc1, %struct.gx_device_color_s** %pdevc1.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdevc2, %struct.gx_device_color_s** %pdevc2.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_no_write(%struct.gx_device_color_s* %pdevc, %struct.gx_device_color_saved_s* %psdc, %struct.gx_device_s* %dev, i64 %offset, i8* %data, i32* %psize) #0 {
entry:
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %psdc.addr = alloca %struct.gx_device_color_saved_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %offset.addr = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %psize.addr = alloca i32*, align 8
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gx_device_color_saved_s* %psdc, %struct.gx_device_color_saved_s** %psdc.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %offset, i64* %offset.addr, align 8, !tbaa !18
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32* %psize, i32** %psize.addr, align 8, !tbaa !1
  %0 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  store i32 0, i32* %0, align 4, !tbaa !17
  %1 = load %struct.gx_device_color_saved_s*, %struct.gx_device_color_saved_s** %psdc.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.gx_device_color_saved_s* %1, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %2 = load %struct.gx_device_color_saved_s*, %struct.gx_device_color_saved_s** %psdc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %2, i32 0, i32 0
  %3 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !14
  %4 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type1 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %4, i32 0, i32 0
  %5 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type1, align 8, !tbaa !5
  %cmp2 = icmp eq %struct.gx_device_color_type_s* %3, %5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i1 [ false, %entry ], [ %cmp2, %land.rhs ]
  %cond = select i1 %6, i32 1, i32 0
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_no_read(%struct.gx_device_color_s* %pdevc, %struct.gs_imager_state_s* %pis, %struct.gx_device_color_s* %prior_devc, %struct.gx_device_s* %dev, i64 %offset, i8* %pdata, i32 %size, %struct.gs_memory_s* %mem) #0 {
entry:
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %prior_devc.addr = alloca %struct.gx_device_color_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %offset.addr = alloca i64, align 8
  %pdata.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %prior_devc, %struct.gx_device_color_s** %prior_devc.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %offset, i64* %offset.addr, align 8, !tbaa !18
  store i8* %pdata, i8** %pdata.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !17
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %0, i32 0, i32 0
  store %struct.gx_device_color_type_s* bitcast ({ %struct.gs_memory_struct_type_s*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* }* @gx_dc_type_data_none to %struct.gx_device_color_type_s*), %struct.gx_device_color_type_s** %type, align 8, !tbaa !5
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_no_get_nonzero_comps(%struct.gx_device_color_s* %pdevc_ignored, %struct.gx_device_s* %dev_ignored, i64* %pcomp_bits_ignored) #0 {
entry:
  %pdevc_ignored.addr = alloca %struct.gx_device_color_s*, align 8
  %dev_ignored.addr = alloca %struct.gx_device_s*, align 8
  %pcomp_bits_ignored.addr = alloca i64*, align 8
  store %struct.gx_device_color_s* %pdevc_ignored, %struct.gx_device_color_s** %pdevc_ignored.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev_ignored, %struct.gx_device_s** %dev_ignored.addr, align 8, !tbaa !1
  store i64* %pcomp_bits_ignored, i64** %pcomp_bits_ignored.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_null_load(%struct.gx_device_color_s* %pdevc, %struct.gs_imager_state_s* %ignore_pis, %struct.gx_device_s* %ignore_dev, i32 %ignore_select) #0 {
entry:
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %ignore_pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %ignore_dev.addr = alloca %struct.gx_device_s*, align 8
  %ignore_select.addr = alloca i32, align 4
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %ignore_pis, %struct.gs_imager_state_s** %ignore_pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %ignore_dev, %struct.gx_device_s** %ignore_dev.addr, align 8, !tbaa !1
  store i32 %ignore_select, i32* %ignore_select.addr, align 4, !tbaa !16
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_null_fill_rectangle(%struct.gx_device_color_s* %pdevc, i32 %x, i32 %y, i32 %w, i32 %h, %struct.gx_device_s* %dev, i32 %lop, %struct.gx_rop_source_s* %source) #0 {
entry:
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %lop.addr = alloca i32, align 4
  %source.addr = alloca %struct.gx_rop_source_s*, align 8
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !17
  store i32 %y, i32* %y.addr, align 4, !tbaa !17
  store i32 %w, i32* %w.addr, align 4, !tbaa !17
  store i32 %h, i32* %h.addr, align 4, !tbaa !17
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !17
  store %struct.gx_rop_source_s* %source, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_null_fill_masked(%struct.gx_device_color_s* %pdevc, i8* %data, i32 %data_x, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, %struct.gx_device_s* %dev, i32 %lop, i32 %invert) #0 {
entry:
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %data.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %lop.addr = alloca i32, align 4
  %invert.addr = alloca i32, align 4
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !17
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !17
  store i64 %id, i64* %id.addr, align 8, !tbaa !18
  store i32 %x, i32* %x.addr, align 4, !tbaa !17
  store i32 %y, i32* %y.addr, align 4, !tbaa !17
  store i32 %w, i32* %w.addr, align 4, !tbaa !17
  store i32 %h, i32* %h.addr, align 4, !tbaa !17
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !17
  store i32 %invert, i32* %invert.addr, align 4, !tbaa !17
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_null_equal(%struct.gx_device_color_s* %pdevc1, %struct.gx_device_color_s* %pdevc2) #0 {
entry:
  %pdevc1.addr = alloca %struct.gx_device_color_s*, align 8
  %pdevc2.addr = alloca %struct.gx_device_color_s*, align 8
  store %struct.gx_device_color_s* %pdevc1, %struct.gx_device_color_s** %pdevc1.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdevc2, %struct.gx_device_color_s** %pdevc2.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc2.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %0, i32 0, i32 0
  %1 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !5
  %2 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc1.addr, align 8, !tbaa !1
  %type1 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %2, i32 0, i32 0
  %3 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type1, align 8, !tbaa !5
  %cmp = icmp eq %struct.gx_device_color_type_s* %1, %3
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_null_read(%struct.gx_device_color_s* %pdevc, %struct.gs_imager_state_s* %pis, %struct.gx_device_color_s* %prior_devc, %struct.gx_device_s* %dev, i64 %offset, i8* %pdata, i32 %size, %struct.gs_memory_s* %mem) #0 {
entry:
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %prior_devc.addr = alloca %struct.gx_device_color_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %offset.addr = alloca i64, align 8
  %pdata.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %prior_devc, %struct.gx_device_color_s** %prior_devc.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %offset, i64* %offset.addr, align 8, !tbaa !18
  store i8* %pdata, i8** %pdata.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !17
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %0, i32 0, i32 0
  store %struct.gx_device_color_type_s* bitcast ({ %struct.gs_memory_struct_type_s*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* }* @gx_dc_type_data_null to %struct.gx_device_color_type_s*), %struct.gx_device_color_type_s** %type, align 8, !tbaa !5
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @gx_dc_pure_save_dc(%struct.gx_device_color_s* %pdevc, %struct.gx_device_color_saved_s* %psdc) #0 {
entry:
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %psdc.addr = alloca %struct.gx_device_color_saved_s*, align 8
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gx_device_color_saved_s* %psdc, %struct.gx_device_color_saved_s** %psdc.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %0, i32 0, i32 0
  %1 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !5
  %2 = load %struct.gx_device_color_saved_s*, %struct.gx_device_color_saved_s** %psdc.addr, align 8, !tbaa !1
  %type1 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %2, i32 0, i32 0
  store %struct.gx_device_color_type_s* %1, %struct.gx_device_color_type_s** %type1, align 8, !tbaa !14
  %3 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %3, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  %4 = load i64, i64* %pure, align 8, !tbaa !18
  %5 = load %struct.gx_device_color_saved_s*, %struct.gx_device_color_saved_s** %psdc.addr, align 8, !tbaa !1
  %colors2 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %5, i32 0, i32 1
  %pure3 = bitcast %union._svc* %colors2 to i64*
  store i64 %4, i64* %pure3, align 8, !tbaa !18
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_pure_load(%struct.gx_device_color_s* %pdevc, %struct.gs_imager_state_s* %ignore_pis, %struct.gx_device_s* %ignore_dev, i32 %ignore_select) #0 {
entry:
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %ignore_pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %ignore_dev.addr = alloca %struct.gx_device_s*, align 8
  %ignore_select.addr = alloca i32, align 4
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %ignore_pis, %struct.gs_imager_state_s** %ignore_pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %ignore_dev, %struct.gx_device_s** %ignore_dev.addr, align 8, !tbaa !1
  store i32 %ignore_select, i32* %ignore_select.addr, align 4, !tbaa !16
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_pure_fill_rectangle(%struct.gx_device_color_s* %pdevc, i32 %x, i32 %y, i32 %w, i32 %h, %struct.gx_device_s* %dev, i32 %lop, %struct.gx_rop_source_s* %source) #0 {
entry:
  %retval = alloca i32, align 4
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %lop.addr = alloca i32, align 4
  %source.addr = alloca %struct.gx_rop_source_s*, align 8
  %colors2 = alloca [2 x i64], align 16
  %no_source = alloca %struct.gx_rop_source_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !17
  store i32 %y, i32* %y.addr, align 4, !tbaa !17
  store i32 %w, i32* %w.addr, align 4, !tbaa !17
  store i32 %h, i32* %h.addr, align 4, !tbaa !17
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !17
  store %struct.gx_rop_source_s* %source, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %0 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_rop_source_s* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %lop.addr, align 4, !tbaa !17
  %and = and i32 %1, 563
  %cmp1 = icmp eq i32 %and, 48
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 42
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 7
  %3 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8, !tbaa !20
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %5 = load i32, i32* %x.addr, align 4, !tbaa !17
  %6 = load i32, i32* %y.addr, align 4, !tbaa !17
  %7 = load i32, i32* %w.addr, align 4, !tbaa !17
  %8 = load i32, i32* %h.addr, align 4, !tbaa !17
  %9 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %9, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  %10 = load i64, i64* %pure, align 8, !tbaa !18
  %call = call i32 %3(%struct.gx_device_s* %4, i32 %5, i32 %6, i32 %7, i32 %8, i64 %10) #3
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %11 = bitcast [2 x i64]* %colors2 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %11) #1
  %12 = bitcast %struct.gx_rop_source_s* %no_source to i8*
  call void @llvm.lifetime.start(i64 48, i8* %12) #1
  %13 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors3 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %13, i32 0, i32 1
  %pure4 = bitcast %union._c* %colors3 to i64*
  %14 = load i64, i64* %pure4, align 8, !tbaa !18
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %colors2, i32 0, i64 1
  store i64 %14, i64* %arrayidx, align 8, !tbaa !18
  %arrayidx5 = getelementptr inbounds [2 x i64], [2 x i64]* %colors2, i32 0, i64 0
  store i64 %14, i64* %arrayidx5, align 8, !tbaa !18
  %15 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %cmp6 = icmp eq %struct.gx_rop_source_s* %15, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  call void @gx_set_rop_no_source(%struct.gx_rop_source_s** %source.addr, %struct.gx_rop_source_s* %no_source, %struct.gx_device_s* %16) #3
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end
  %17 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %planar_height = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %17, i32 0, i32 5
  %18 = load i32, i32* %planar_height, align 4, !tbaa !32
  %cmp9 = icmp eq i32 %18, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end.8
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs11 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %19, i32 0, i32 42
  %strip_copy_rop = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs11, i32 0, i32 35
  %20 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)** %strip_copy_rop, align 8, !tbaa !34
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %22 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %sdata = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %22, i32 0, i32 0
  %23 = load i8*, i8** %sdata, align 8, !tbaa !35
  %24 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %sourcex = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %24, i32 0, i32 1
  %25 = load i32, i32* %sourcex, align 4, !tbaa !36
  %26 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %sraster = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %26, i32 0, i32 2
  %27 = load i32, i32* %sraster, align 4, !tbaa !37
  %28 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %28, i32 0, i32 3
  %29 = load i64, i64* %id, align 8, !tbaa !38
  %30 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %use_scolors = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %30, i32 0, i32 6
  %31 = load i32, i32* %use_scolors, align 4, !tbaa !39
  %tobool = icmp ne i32 %31, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.10
  %32 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %scolors = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %32, i32 0, i32 4
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %scolors, i32 0, i32 0
  br label %cond.end

cond.false:                                       ; preds = %if.then.10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64* [ %arraydecay, %cond.true ], [ null, %cond.false ]
  %arraydecay12 = getelementptr inbounds [2 x i64], [2 x i64]* %colors2, i32 0, i32 0
  %33 = load i32, i32* %x.addr, align 4, !tbaa !17
  %34 = load i32, i32* %y.addr, align 4, !tbaa !17
  %35 = load i32, i32* %w.addr, align 4, !tbaa !17
  %36 = load i32, i32* %h.addr, align 4, !tbaa !17
  %37 = load i32, i32* %lop.addr, align 4, !tbaa !17
  %call13 = call i32 %20(%struct.gx_device_s* %21, i8* %23, i32 %25, i32 %27, i64 %29, i64* %cond, %struct.gx_strip_bitmap_s* null, i64* %arraydecay12, i32 %33, i32 %34, i32 %35, i32 %36, i32 0, i32 0, i32 %37) #3
  store i32 %call13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.end.8
  %38 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs14 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %38, i32 0, i32 42
  %strip_copy_rop2 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs14, i32 0, i32 69
  %39 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)** %strip_copy_rop2, align 8, !tbaa !40
  %40 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %41 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %sdata15 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %41, i32 0, i32 0
  %42 = load i8*, i8** %sdata15, align 8, !tbaa !35
  %43 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %sourcex16 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %43, i32 0, i32 1
  %44 = load i32, i32* %sourcex16, align 4, !tbaa !36
  %45 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %sraster17 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %45, i32 0, i32 2
  %46 = load i32, i32* %sraster17, align 4, !tbaa !37
  %47 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %id18 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %47, i32 0, i32 3
  %48 = load i64, i64* %id18, align 8, !tbaa !38
  %49 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %use_scolors19 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %49, i32 0, i32 6
  %50 = load i32, i32* %use_scolors19, align 4, !tbaa !39
  %tobool20 = icmp ne i32 %50, 0
  br i1 %tobool20, label %cond.true.21, label %cond.false.24

cond.true.21:                                     ; preds = %if.else
  %51 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %scolors22 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %51, i32 0, i32 4
  %arraydecay23 = getelementptr inbounds [2 x i64], [2 x i64]* %scolors22, i32 0, i32 0
  br label %cond.end.25

cond.false.24:                                    ; preds = %if.else
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.24, %cond.true.21
  %cond26 = phi i64* [ %arraydecay23, %cond.true.21 ], [ null, %cond.false.24 ]
  %arraydecay27 = getelementptr inbounds [2 x i64], [2 x i64]* %colors2, i32 0, i32 0
  %52 = load i32, i32* %x.addr, align 4, !tbaa !17
  %53 = load i32, i32* %y.addr, align 4, !tbaa !17
  %54 = load i32, i32* %w.addr, align 4, !tbaa !17
  %55 = load i32, i32* %h.addr, align 4, !tbaa !17
  %56 = load i32, i32* %lop.addr, align 4, !tbaa !17
  %57 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %planar_height28 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %57, i32 0, i32 5
  %58 = load i32, i32* %planar_height28, align 4, !tbaa !32
  %call29 = call i32 %39(%struct.gx_device_s* %40, i8* %42, i32 %44, i32 %46, i64 %48, i64* %cond26, %struct.gx_strip_bitmap_s* null, i64* %arraydecay27, i32 %52, i32 %53, i32 %54, i32 %55, i32 0, i32 0, i32 %56, i32 %58) #3
  store i32 %call29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end.25, %cond.end
  %59 = bitcast %struct.gx_rop_source_s* %no_source to i8*
  call void @llvm.lifetime.end(i64 48, i8* %59) #1
  %60 = bitcast [2 x i64]* %colors2 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %60) #1
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %61 = load i32, i32* %retval
  ret i32 %61
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_pure_fill_masked(%struct.gx_device_color_s* %pdevc, i8* %data, i32 %data_x, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, %struct.gx_device_s* %dev, i32 %lop, i32 %invert) #0 {
entry:
  %retval = alloca i32, align 4
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %data.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %lop.addr = alloca i32, align 4
  %invert.addr = alloca i32, align 4
  %color0 = alloca i64, align 8
  %color1 = alloca i64, align 8
  %scolors = alloca [2 x i64], align 16
  %tcolors = alloca [2 x i64], align 16
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !17
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !17
  store i64 %id, i64* %id.addr, align 8, !tbaa !18
  store i32 %x, i32* %x.addr, align 4, !tbaa !17
  store i32 %y, i32* %y.addr, align 4, !tbaa !17
  store i32 %w, i32* %w.addr, align 4, !tbaa !17
  store i32 %h, i32* %h.addr, align 4, !tbaa !17
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !17
  store i32 %invert, i32* %invert.addr, align 4, !tbaa !17
  %0 = load i32, i32* %lop.addr, align 4, !tbaa !17
  %and = and i32 %0, 563
  %cmp = icmp eq i32 %and, 48
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %1 = bitcast i64* %color0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i64* %color1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i32, i32* %invert.addr, align 4, !tbaa !17
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %4 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %4, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  %5 = load i64, i64* %pure, align 8, !tbaa !18
  store i64 %5, i64* %color0, align 8, !tbaa !18
  store i64 -1, i64* %color1, align 8, !tbaa !18
  br label %if.end

if.else:                                          ; preds = %if.then
  %6 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors2 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %6, i32 0, i32 1
  %pure3 = bitcast %union._c* %colors2 to i64*
  %7 = load i64, i64* %pure3, align 8, !tbaa !18
  store i64 %7, i64* %color1, align 8, !tbaa !18
  store i64 -1, i64* %color0, align 8, !tbaa !18
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 42
  %copy_mono = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 9
  %9 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono, align 8, !tbaa !41
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %11 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %12 = load i32, i32* %data_x.addr, align 4, !tbaa !17
  %13 = load i32, i32* %raster.addr, align 4, !tbaa !17
  %14 = load i64, i64* %id.addr, align 8, !tbaa !18
  %15 = load i32, i32* %x.addr, align 4, !tbaa !17
  %16 = load i32, i32* %y.addr, align 4, !tbaa !17
  %17 = load i32, i32* %w.addr, align 4, !tbaa !17
  %18 = load i32, i32* %h.addr, align 4, !tbaa !17
  %19 = load i64, i64* %color0, align 8, !tbaa !18
  %20 = load i64, i64* %color1, align 8, !tbaa !18
  %call = call i32 %9(%struct.gx_device_s* %10, i8* %11, i32 %12, i32 %13, i64 %14, i32 %15, i32 %16, i32 %17, i32 %18, i64 %19, i64 %20) #3
  store i32 %call, i32* %retval
  %21 = bitcast i64* %color1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = bitcast i64* %color0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  br label %return

if.end.4:                                         ; preds = %entry
  %23 = bitcast [2 x i64]* %scolors to i8*
  call void @llvm.lifetime.start(i64 16, i8* %23) #1
  %24 = bitcast [2 x i64]* %tcolors to i8*
  call void @llvm.lifetime.start(i64 16, i8* %24) #1
  %25 = load i32, i32* %lop.addr, align 4, !tbaa !17
  %cmp5 = icmp ne i32 %25, 252
  br i1 %cmp5, label %if.then.6, label %if.else.10

if.then.6:                                        ; preds = %if.end.4
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call7 = call i64 @gx_device_white(%struct.gx_device_s* %26) #3
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %scolors, i32 0, i64 0
  store i64 %call7, i64* %arrayidx, align 8, !tbaa !18
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call8 = call i64 @gx_device_black(%struct.gx_device_s* %27) #3
  %arrayidx9 = getelementptr inbounds [2 x i64], [2 x i64]* %scolors, i32 0, i64 1
  store i64 %call8, i64* %arrayidx9, align 8, !tbaa !18
  br label %if.end.15

if.else.10:                                       ; preds = %if.end.4
  %28 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call11 = call i64 @gx_device_black(%struct.gx_device_s* %28) #3
  %arrayidx12 = getelementptr inbounds [2 x i64], [2 x i64]* %scolors, i32 0, i64 0
  store i64 %call11, i64* %arrayidx12, align 8, !tbaa !18
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call13 = call i64 @gx_device_white(%struct.gx_device_s* %29) #3
  %arrayidx14 = getelementptr inbounds [2 x i64], [2 x i64]* %scolors, i32 0, i64 1
  store i64 %call13, i64* %arrayidx14, align 8, !tbaa !18
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.10, %if.then.6
  %30 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors16 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %30, i32 0, i32 1
  %pure17 = bitcast %union._c* %colors16 to i64*
  %31 = load i64, i64* %pure17, align 8, !tbaa !18
  %arrayidx18 = getelementptr inbounds [2 x i64], [2 x i64]* %tcolors, i32 0, i64 1
  store i64 %31, i64* %arrayidx18, align 8, !tbaa !18
  %arrayidx19 = getelementptr inbounds [2 x i64], [2 x i64]* %tcolors, i32 0, i64 0
  store i64 %31, i64* %arrayidx19, align 8, !tbaa !18
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs20 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %32, i32 0, i32 42
  %strip_copy_rop = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs20, i32 0, i32 35
  %33 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)** %strip_copy_rop, align 8, !tbaa !34
  %34 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %35 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %36 = load i32, i32* %data_x.addr, align 4, !tbaa !17
  %37 = load i32, i32* %raster.addr, align 4, !tbaa !17
  %38 = load i64, i64* %id.addr, align 8, !tbaa !18
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %scolors, i32 0, i32 0
  %arraydecay21 = getelementptr inbounds [2 x i64], [2 x i64]* %tcolors, i32 0, i32 0
  %39 = load i32, i32* %x.addr, align 4, !tbaa !17
  %40 = load i32, i32* %y.addr, align 4, !tbaa !17
  %41 = load i32, i32* %w.addr, align 4, !tbaa !17
  %42 = load i32, i32* %h.addr, align 4, !tbaa !17
  %43 = load i32, i32* %invert.addr, align 4, !tbaa !17
  %tobool22 = icmp ne i32 %43, 0
  br i1 %tobool22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.15
  %44 = load i32, i32* %lop.addr, align 4, !tbaa !17
  %and23 = and i32 %44, 204
  %shr = lshr i32 %and23, 2
  %45 = load i32, i32* %lop.addr, align 4, !tbaa !17
  %and24 = and i32 %45, 51
  %shl = shl i32 %and24, 2
  %or = or i32 %shr, %shl
  %46 = load i32, i32* %lop.addr, align 4, !tbaa !17
  %and25 = and i32 %46, -256
  %or26 = or i32 %or, %and25
  br label %cond.end

cond.false:                                       ; preds = %if.end.15
  %47 = load i32, i32* %lop.addr, align 4, !tbaa !17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or26, %cond.true ], [ %47, %cond.false ]
  %or27 = or i32 %cond, 460
  %call28 = call i32 %33(%struct.gx_device_s* %34, i8* %35, i32 %36, i32 %37, i64 %38, i64* %arraydecay, %struct.gx_strip_bitmap_s* null, i64* %arraydecay21, i32 %39, i32 %40, i32 %41, i32 %42, i32 0, i32 0, i32 %or27) #3
  store i32 %call28, i32* %retval
  %48 = bitcast [2 x i64]* %tcolors to i8*
  call void @llvm.lifetime.end(i64 16, i8* %48) #1
  %49 = bitcast [2 x i64]* %scolors to i8*
  call void @llvm.lifetime.end(i64 16, i8* %49) #1
  br label %return

return:                                           ; preds = %cond.end, %if.end
  %50 = load i32, i32* %retval
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_pure_equal(%struct.gx_device_color_s* %pdevc1, %struct.gx_device_color_s* %pdevc2) #0 {
entry:
  %pdevc1.addr = alloca %struct.gx_device_color_s*, align 8
  %pdevc2.addr = alloca %struct.gx_device_color_s*, align 8
  store %struct.gx_device_color_s* %pdevc1, %struct.gx_device_color_s** %pdevc1.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdevc2, %struct.gx_device_color_s** %pdevc2.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc2.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %0, i32 0, i32 0
  %1 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !5
  %2 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc1.addr, align 8, !tbaa !1
  %type1 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %2, i32 0, i32 0
  %3 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type1, align 8, !tbaa !5
  %cmp = icmp eq %struct.gx_device_color_type_s* %1, %3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %4 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc1.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %4, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  %5 = load i64, i64* %pure, align 8, !tbaa !18
  %6 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc2.addr, align 8, !tbaa !1
  %colors2 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %6, i32 0, i32 1
  %pure3 = bitcast %union._c* %colors2 to i64*
  %7 = load i64, i64* %pure3, align 8, !tbaa !18
  %cmp4 = icmp eq i64 %5, %7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %8 = phi i1 [ false, %entry ], [ %cmp4, %land.rhs ]
  %land.ext = zext i1 %8 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_pure_write(%struct.gx_device_color_s* %pdevc, %struct.gx_device_color_saved_s* %psdc, %struct.gx_device_s* %dev, i64 %offset, i8* %pdata, i32* %psize) #0 {
entry:
  %retval = alloca i32, align 4
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %psdc.addr = alloca %struct.gx_device_color_saved_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %offset.addr = alloca i64, align 8
  %pdata.addr = alloca i8*, align 8
  %psize.addr = alloca i32*, align 8
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gx_device_color_saved_s* %psdc, %struct.gx_device_color_saved_s** %psdc.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %offset, i64* %offset.addr, align 8, !tbaa !18
  store i8* %pdata, i8** %pdata.addr, align 8, !tbaa !1
  store i32* %psize, i32** %psize.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_color_saved_s*, %struct.gx_device_color_saved_s** %psdc.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.gx_device_color_saved_s* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.gx_device_color_saved_s*, %struct.gx_device_color_saved_s** %psdc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %1, i32 0, i32 0
  %2 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !14
  %3 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type1 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %3, i32 0, i32 0
  %4 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type1, align 8, !tbaa !5
  %cmp2 = icmp eq %struct.gx_device_color_type_s* %2, %4
  br i1 %cmp2, label %land.lhs.true.3, label %if.else

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %5 = load %struct.gx_device_color_saved_s*, %struct.gx_device_color_saved_s** %psdc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %5, i32 0, i32 1
  %pure = bitcast %union._svc* %colors to i64*
  %6 = load i64, i64* %pure, align 8, !tbaa !18
  %7 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors4 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %7, i32 0, i32 1
  %pure5 = bitcast %union._c* %colors4 to i64*
  %8 = load i64, i64* %pure5, align 8, !tbaa !18
  %cmp6 = icmp eq i64 %6, %8
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.3
  %9 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  store i32 0, i32* %9, align 4, !tbaa !17
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.3, %land.lhs.true, %entry
  %10 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors7 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %10, i32 0, i32 1
  %pure8 = bitcast %union._c* %colors7 to i64*
  %11 = load i64, i64* %pure8, align 8, !tbaa !18
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %13 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %14 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  %call = call i32 @gx_dc_write_color(i64 %11, %struct.gx_device_s* %12, i8* %13, i32* %14) #3
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_pure_read(%struct.gx_device_color_s* %pdevc, %struct.gs_imager_state_s* %pis, %struct.gx_device_color_s* %prior_devc, %struct.gx_device_s* %dev, i64 %offset, i8* %pdata, i32 %size, %struct.gs_memory_s* %mem) #0 {
entry:
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %prior_devc.addr = alloca %struct.gx_device_color_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %offset.addr = alloca i64, align 8
  %pdata.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %prior_devc, %struct.gx_device_color_s** %prior_devc.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %offset, i64* %offset.addr, align 8, !tbaa !18
  store i8* %pdata, i8** %pdata.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !17
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %0, i32 0, i32 0
  store %struct.gx_device_color_type_s* bitcast ({ %struct.gs_memory_struct_type_s*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* }* @gx_dc_type_data_pure to %struct.gx_device_color_type_s*), %struct.gx_device_color_type_s** %type, align 8, !tbaa !5
  %1 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %4 = load i32, i32* %size.addr, align 4, !tbaa !17
  %call = call i32 @gx_dc_read_color(i64* %pure, %struct.gx_device_s* %2, i8* %3, i32 %4) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gx_dc_pure_get_nonzero_comps(%struct.gx_device_color_s* %pdevc, %struct.gx_device_s* %dev, i64* %pcomp_bits) #0 {
entry:
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pcomp_bits.addr = alloca i64*, align 8
  %code = alloca i32, align 4
  %cvals = alloca [64 x i16], align 16
  %i = alloca i32, align 4
  %ncomps = alloca i32, align 4
  %mask = alloca i64, align 8
  %comp_bits = alloca i64, align 8
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64* %pcomp_bits, i64** %pcomp_bits.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast [64 x i16]* %cvals to i8*
  call void @llvm.lifetime.start(i64 128, i8* %1) #1
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 42
  %decode_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 52
  %3 = load i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)** %decode_color, align 8, !tbaa !42
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %5 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %5, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  %6 = load i64, i64* %pure, align 8, !tbaa !18
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %cvals, i32 0, i32 0
  %call = call i32 %3(%struct.gx_device_s* %4, i64 %6, i16* %arraydecay) #3
  store i32 %call, i32* %code, align 4, !tbaa !17
  %7 = load i32, i32* %code, align 4, !tbaa !17
  %cmp = icmp sge i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %8 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %10, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %11 = load i32, i32* %num_components, align 4, !tbaa !43
  store i32 %11, i32* %ncomps, align 4, !tbaa !17
  %12 = bitcast i64* %mask to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i64 1, i64* %mask, align 8, !tbaa !18
  %13 = bitcast i64* %comp_bits to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store i64 0, i64* %comp_bits, align 8, !tbaa !18
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %14 = load i32, i32* %i, align 4, !tbaa !17
  %15 = load i32, i32* %ncomps, align 4, !tbaa !17
  %cmp1 = icmp slt i32 %14, %15
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds [64 x i16], [64 x i16]* %cvals, i32 0, i64 %idxprom
  %17 = load i16, i16* %arrayidx, align 2, !tbaa !44
  %conv = zext i16 %17 to i32
  %cmp2 = icmp ne i32 %conv, 0
  br i1 %cmp2, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %for.body
  %18 = load i64, i64* %mask, align 8, !tbaa !18
  %19 = load i64, i64* %comp_bits, align 8, !tbaa !18
  %or = or i64 %19, %18
  store i64 %or, i64* %comp_bits, align 8, !tbaa !18
  br label %if.end

if.end:                                           ; preds = %if.then.4, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load i32, i32* %i, align 4, !tbaa !17
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4, !tbaa !17
  %21 = load i64, i64* %mask, align 8, !tbaa !18
  %shl = shl i64 %21, 1
  store i64 %shl, i64* %mask, align 8, !tbaa !18
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load i64, i64* %comp_bits, align 8, !tbaa !18
  %23 = load i64*, i64** %pcomp_bits.addr, align 8, !tbaa !1
  store i64 %22, i64* %23, align 8, !tbaa !18
  store i32 0, i32* %code, align 4, !tbaa !17
  %24 = bitcast i64* %comp_bits to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast i64* %mask to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  br label %if.end.5

if.end.5:                                         ; preds = %for.end, %entry
  %28 = load i32, i32* %code, align 4, !tbaa !17
  %29 = bitcast [64 x i16]* %cvals to i8*
  call void @llvm.lifetime.end(i64 128, i8* %29) #1
  %30 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal void @gx_dc_devn_save_dc(%struct.gx_device_color_s* %pdevc, %struct.gx_device_color_saved_s* %psdc) #0 {
entry:
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %psdc.addr = alloca %struct.gx_device_color_saved_s*, align 8
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gx_device_color_saved_s* %psdc, %struct.gx_device_color_saved_s** %psdc.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %0, i32 0, i32 0
  %1 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !5
  %2 = load %struct.gx_device_color_saved_s*, %struct.gx_device_color_saved_s** %psdc.addr, align 8, !tbaa !1
  %type1 = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %2, i32 0, i32 0
  store %struct.gx_device_color_type_s* %1, %struct.gx_device_color_type_s** %type1, align 8, !tbaa !14
  %3 = load %struct.gx_device_color_saved_s*, %struct.gx_device_color_saved_s** %psdc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_saved_s, %struct.gx_device_color_saved_s* %3, i32 0, i32 1
  %devn = bitcast %union._svc* %colors to %struct._svdevn*
  %values = getelementptr inbounds %struct._svdevn, %struct._svdevn* %devn, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x i16], [64 x i16]* %values, i32 0, i64 0
  %4 = bitcast i16* %arrayidx to i8*
  %5 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors2 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %5, i32 0, i32 1
  %devn3 = bitcast %union._c* %colors2 to %struct._devn*
  %values4 = getelementptr inbounds %struct._devn, %struct._devn* %devn3, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [64 x i16], [64 x i16]* %values4, i32 0, i64 0
  %6 = bitcast i16* %arrayidx5 to i8*
  %call = call i8* @memcpy(i8* %4, i8* %6, i64 128) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_devn_load(%struct.gx_device_color_s* %pdevc, %struct.gs_imager_state_s* %ignore_pis, %struct.gx_device_s* %ignore_dev, i32 %ignore_select) #0 {
entry:
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %ignore_pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %ignore_dev.addr = alloca %struct.gx_device_s*, align 8
  %ignore_select.addr = alloca i32, align 4
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %ignore_pis, %struct.gs_imager_state_s** %ignore_pis.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %ignore_dev, %struct.gx_device_s** %ignore_dev.addr, align 8, !tbaa !1
  store i32 %ignore_select, i32* %ignore_select.addr, align 4, !tbaa !16
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_devn_fill_rectangle(%struct.gx_device_color_s* %pdevc, i32 %x, i32 %y, i32 %w, i32 %h, %struct.gx_device_s* %dev, i32 %lop, %struct.gx_rop_source_s* %source) #0 {
entry:
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %lop.addr = alloca i32, align 4
  %source.addr = alloca %struct.gx_rop_source_s*, align 8
  %rect = alloca %struct.gs_fixed_rect_s, align 4
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !17
  store i32 %y, i32* %y.addr, align 4, !tbaa !17
  store i32 %w, i32* %w.addr, align 4, !tbaa !17
  store i32 %h, i32* %h.addr, align 4, !tbaa !17
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !17
  store %struct.gx_rop_source_s* %source, %struct.gx_rop_source_s** %source.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_fixed_rect_s* %rect to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = load i32, i32* %x.addr, align 4, !tbaa !17
  %shl = shl i32 %1, 8
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %rect, i32 0, i32 0
  %x1 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  store i32 %shl, i32* %x1, align 4, !tbaa !45
  %2 = load i32, i32* %y.addr, align 4, !tbaa !17
  %shl2 = shl i32 %2, 8
  %p3 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %rect, i32 0, i32 0
  %y4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p3, i32 0, i32 1
  store i32 %shl2, i32* %y4, align 4, !tbaa !48
  %3 = load i32, i32* %w.addr, align 4, !tbaa !17
  %4 = load i32, i32* %x.addr, align 4, !tbaa !17
  %add = add nsw i32 %3, %4
  %shl5 = shl i32 %add, 8
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %rect, i32 0, i32 1
  %x6 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  store i32 %shl5, i32* %x6, align 4, !tbaa !49
  %5 = load i32, i32* %h.addr, align 4, !tbaa !17
  %6 = load i32, i32* %y.addr, align 4, !tbaa !17
  %add7 = add nsw i32 %5, %6
  %shl8 = shl i32 %add7, 8
  %q9 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %rect, i32 0, i32 1
  %y10 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q9, i32 0, i32 1
  store i32 %shl8, i32* %y10, align 4, !tbaa !50
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 42
  %fill_rectangle_hl_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 54
  %8 = load i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %fill_rectangle_hl_color, align 8, !tbaa !51
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %10 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %call = call i32 %8(%struct.gx_device_s* %9, %struct.gs_fixed_rect_s* %rect, %struct.gs_imager_state_s* null, %struct.gx_device_color_s* %10, %struct.gx_clip_path_s* null) #3
  %11 = bitcast %struct.gs_fixed_rect_s* %rect to i8*
  call void @llvm.lifetime.end(i64 16, i8* %11) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gx_dc_devn_fill_masked(%struct.gx_device_color_s* %pdevc, i8* %data, i32 %data_x, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, %struct.gx_device_s* %dev, i32 %lop, i32 %invert) #0 {
entry:
  %retval = alloca i32, align 4
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %data.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %lop.addr = alloca i32, align 4
  %invert.addr = alloca i32, align 4
  %lbit = alloca i32, align 4
  %row = alloca i8*, align 8
  %one = alloca i32, align 4
  %zero = alloca i32, align 4
  %iy = alloca i32, align 4
  %p = alloca i8*, align 8
  %bit = alloca i32, align 4
  %left = alloca i32, align 4
  %l0 = alloca i32, align 4
  %run = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !17
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !17
  store i64 %id, i64* %id.addr, align 8, !tbaa !18
  store i32 %x, i32* %x.addr, align 4, !tbaa !17
  store i32 %y, i32* %y.addr, align 4, !tbaa !17
  store i32 %w, i32* %w.addr, align 4, !tbaa !17
  store i32 %h, i32* %h.addr, align 4, !tbaa !17
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !17
  store i32 %invert, i32* %invert.addr, align 4, !tbaa !17
  %0 = bitcast i32* %lbit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %data_x.addr, align 4, !tbaa !17
  %and = and i32 %1, 7
  store i32 %and, i32* %lbit, align 4, !tbaa !17
  %2 = bitcast i8** %row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %4 = load i32, i32* %data_x.addr, align 4, !tbaa !17
  %shr = ashr i32 %4, 3
  %idx.ext = sext i32 %shr to i64
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %idx.ext
  store i8* %add.ptr, i8** %row, align 8, !tbaa !1
  %5 = bitcast i32* %one to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %invert.addr, align 4, !tbaa !17
  %tobool = icmp ne i32 %6, 0
  %cond = select i1 %tobool, i32 0, i32 255
  store i32 %cond, i32* %one, align 4, !tbaa !17
  %7 = bitcast i32* %zero to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i32, i32* %one, align 4, !tbaa !17
  %xor = xor i32 %8, 255
  store i32 %xor, i32* %zero, align 4, !tbaa !17
  %9 = bitcast i32* %iy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 0, i32* %iy, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %iy, align 4, !tbaa !17
  %11 = load i32, i32* %h.addr, align 4, !tbaa !17
  %cmp = icmp slt i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load i8*, i8** %row, align 8, !tbaa !1
  store i8* %13, i8** %p, align 8, !tbaa !1
  %14 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load i32, i32* %lbit, align 4, !tbaa !17
  store i32 %15, i32* %bit, align 4, !tbaa !17
  %16 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load i32, i32* %w.addr, align 4, !tbaa !17
  store i32 %17, i32* %left, align 4, !tbaa !17
  %18 = bitcast i32* %l0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %for.body
  %19 = load i32, i32* %left, align 4, !tbaa !17
  %tobool1 = icmp ne i32 %19, 0
  br i1 %tobool1, label %while.body, label %while.end.103

while.body:                                       ; preds = %while.cond
  %20 = bitcast i32* %run to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load i8*, i8** %p, align 8, !tbaa !1
  %23 = load i8, i8* %22, align 1, !tbaa !16
  %conv = zext i8 %23 to i32
  %24 = load i32, i32* %one, align 4, !tbaa !17
  %xor2 = xor i32 %conv, %24
  %idxprom = zext i32 %xor2 to i64
  %25 = load i32, i32* %bit, align 4, !tbaa !17
  %idxprom3 = sext i32 %25 to i64
  %arrayidx = getelementptr inbounds [8 x i8*], [8 x i8*]* @byte_bit_run_length, i32 0, i64 %idxprom3
  %26 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8, i8* %26, i64 %idxprom
  %27 = load i8, i8* %arrayidx4, align 1, !tbaa !16
  %conv5 = zext i8 %27 to i32
  store i32 %conv5, i32* %run, align 4, !tbaa !17
  %28 = load i32, i32* %run, align 4, !tbaa !17
  %tobool6 = icmp ne i32 %28, 0
  br i1 %tobool6, label %if.then, label %if.end.42

if.then:                                          ; preds = %while.body
  %29 = load i32, i32* %run, align 4, !tbaa !17
  %cmp7 = icmp slt i32 %29, 8
  br i1 %cmp7, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then
  %30 = load i32, i32* %run, align 4, !tbaa !17
  %31 = load i32, i32* %left, align 4, !tbaa !17
  %cmp10 = icmp sge i32 %30, %31
  br i1 %cmp10, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then.9
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.9
  %32 = load i32, i32* %run, align 4, !tbaa !17
  %33 = load i32, i32* %bit, align 4, !tbaa !17
  %add = add nsw i32 %33, %32
  store i32 %add, i32* %bit, align 4, !tbaa !17
  %34 = load i32, i32* %run, align 4, !tbaa !17
  %35 = load i32, i32* %left, align 4, !tbaa !17
  %sub = sub nsw i32 %35, %34
  store i32 %sub, i32* %left, align 4, !tbaa !17
  br label %if.end.41

if.else:                                          ; preds = %if.then
  %36 = load i32, i32* %run, align 4, !tbaa !17
  %sub13 = sub nsw i32 %36, 8
  store i32 %sub13, i32* %run, align 4, !tbaa !17
  %37 = load i32, i32* %left, align 4, !tbaa !17
  %cmp14 = icmp sge i32 %sub13, %37
  br i1 %cmp14, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %if.else
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup

if.else.17:                                       ; preds = %if.else
  %38 = load i32, i32* %run, align 4, !tbaa !17
  %39 = load i32, i32* %left, align 4, !tbaa !17
  %sub18 = sub nsw i32 %39, %38
  store i32 %sub18, i32* %left, align 4, !tbaa !17
  %40 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  br label %while.cond.19

while.cond.19:                                    ; preds = %while.body.25, %if.else.17
  %41 = load i32, i32* %left, align 4, !tbaa !17
  %cmp20 = icmp sgt i32 %41, 8
  br i1 %cmp20, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.19
  %42 = load i8*, i8** %p, align 8, !tbaa !1
  %43 = load i8, i8* %42, align 1, !tbaa !16
  %conv22 = zext i8 %43 to i32
  %44 = load i32, i32* %zero, align 4, !tbaa !17
  %cmp23 = icmp eq i32 %conv22, %44
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.19
  %45 = phi i1 [ false, %while.cond.19 ], [ %cmp23, %land.rhs ]
  br i1 %45, label %while.body.25, label %while.end

while.body.25:                                    ; preds = %land.end
  %46 = load i32, i32* %left, align 4, !tbaa !17
  %sub26 = sub nsw i32 %46, 8
  store i32 %sub26, i32* %left, align 4, !tbaa !17
  %47 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr27 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr27, i8** %p, align 8, !tbaa !1
  br label %while.cond.19

while.end:                                        ; preds = %land.end
  %48 = load i8*, i8** %p, align 8, !tbaa !1
  %49 = load i8, i8* %48, align 1, !tbaa !16
  %conv28 = zext i8 %49 to i32
  %50 = load i32, i32* %one, align 4, !tbaa !17
  %xor29 = xor i32 %conv28, %50
  %idxprom30 = zext i32 %xor29 to i64
  %arrayidx31 = getelementptr inbounds [256 x i8], [256 x i8]* @byte_bit_run_length_0, i32 0, i64 %idxprom30
  %51 = load i8, i8* %arrayidx31, align 1, !tbaa !16
  %conv32 = zext i8 %51 to i32
  store i32 %conv32, i32* %run, align 4, !tbaa !17
  %52 = load i32, i32* %run, align 4, !tbaa !17
  %53 = load i32, i32* %left, align 4, !tbaa !17
  %cmp33 = icmp sge i32 %52, %53
  br i1 %cmp33, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %while.end
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup

if.else.36:                                       ; preds = %while.end
  %54 = load i32, i32* %run, align 4, !tbaa !17
  %and37 = and i32 %54, 7
  store i32 %and37, i32* %bit, align 4, !tbaa !17
  %55 = load i32, i32* %run, align 4, !tbaa !17
  %56 = load i32, i32* %left, align 4, !tbaa !17
  %sub38 = sub nsw i32 %56, %55
  store i32 %sub38, i32* %left, align 4, !tbaa !17
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.36
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.end
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %while.body
  %57 = load i32, i32* %left, align 4, !tbaa !17
  store i32 %57, i32* %l0, align 4, !tbaa !17
  %58 = load i8*, i8** %p, align 8, !tbaa !1
  %59 = load i8, i8* %58, align 1, !tbaa !16
  %conv43 = zext i8 %59 to i32
  %60 = load i32, i32* %zero, align 4, !tbaa !17
  %xor44 = xor i32 %conv43, %60
  %idxprom45 = zext i32 %xor44 to i64
  %61 = load i32, i32* %bit, align 4, !tbaa !17
  %idxprom46 = sext i32 %61 to i64
  %arrayidx47 = getelementptr inbounds [8 x i8*], [8 x i8*]* @byte_bit_run_length, i32 0, i64 %idxprom46
  %62 = load i8*, i8** %arrayidx47, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds i8, i8* %62, i64 %idxprom45
  %63 = load i8, i8* %arrayidx48, align 1, !tbaa !16
  %conv49 = zext i8 %63 to i32
  store i32 %conv49, i32* %run, align 4, !tbaa !17
  %64 = load i32, i32* %run, align 4, !tbaa !17
  %cmp50 = icmp slt i32 %64, 8
  br i1 %cmp50, label %if.then.52, label %if.else.60

if.then.52:                                       ; preds = %if.end.42
  %65 = load i32, i32* %run, align 4, !tbaa !17
  %66 = load i32, i32* %left, align 4, !tbaa !17
  %cmp53 = icmp sge i32 %65, %66
  br i1 %cmp53, label %if.then.55, label %if.else.56

if.then.55:                                       ; preds = %if.then.52
  store i32 0, i32* %left, align 4, !tbaa !17
  br label %if.end.59

if.else.56:                                       ; preds = %if.then.52
  %67 = load i32, i32* %run, align 4, !tbaa !17
  %68 = load i32, i32* %bit, align 4, !tbaa !17
  %add57 = add nsw i32 %68, %67
  store i32 %add57, i32* %bit, align 4, !tbaa !17
  %69 = load i32, i32* %run, align 4, !tbaa !17
  %70 = load i32, i32* %left, align 4, !tbaa !17
  %sub58 = sub nsw i32 %70, %69
  store i32 %sub58, i32* %left, align 4, !tbaa !17
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.56, %if.then.55
  br label %if.end.93

if.else.60:                                       ; preds = %if.end.42
  %71 = load i32, i32* %run, align 4, !tbaa !17
  %sub61 = sub nsw i32 %71, 8
  store i32 %sub61, i32* %run, align 4, !tbaa !17
  %72 = load i32, i32* %left, align 4, !tbaa !17
  %cmp62 = icmp sge i32 %sub61, %72
  br i1 %cmp62, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %if.else.60
  store i32 0, i32* %left, align 4, !tbaa !17
  br label %if.end.92

if.else.65:                                       ; preds = %if.else.60
  %73 = load i32, i32* %run, align 4, !tbaa !17
  %74 = load i32, i32* %left, align 4, !tbaa !17
  %sub66 = sub nsw i32 %74, %73
  store i32 %sub66, i32* %left, align 4, !tbaa !17
  %75 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr67 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %incdec.ptr67, i8** %p, align 8, !tbaa !1
  br label %while.cond.68

while.cond.68:                                    ; preds = %while.body.76, %if.else.65
  %76 = load i32, i32* %left, align 4, !tbaa !17
  %cmp69 = icmp sgt i32 %76, 8
  br i1 %cmp69, label %land.rhs.71, label %land.end.75

land.rhs.71:                                      ; preds = %while.cond.68
  %77 = load i8*, i8** %p, align 8, !tbaa !1
  %78 = load i8, i8* %77, align 1, !tbaa !16
  %conv72 = zext i8 %78 to i32
  %79 = load i32, i32* %one, align 4, !tbaa !17
  %cmp73 = icmp eq i32 %conv72, %79
  br label %land.end.75

land.end.75:                                      ; preds = %land.rhs.71, %while.cond.68
  %80 = phi i1 [ false, %while.cond.68 ], [ %cmp73, %land.rhs.71 ]
  br i1 %80, label %while.body.76, label %while.end.79

while.body.76:                                    ; preds = %land.end.75
  %81 = load i32, i32* %left, align 4, !tbaa !17
  %sub77 = sub nsw i32 %81, 8
  store i32 %sub77, i32* %left, align 4, !tbaa !17
  %82 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr78 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %incdec.ptr78, i8** %p, align 8, !tbaa !1
  br label %while.cond.68

while.end.79:                                     ; preds = %land.end.75
  %83 = load i8*, i8** %p, align 8, !tbaa !1
  %84 = load i8, i8* %83, align 1, !tbaa !16
  %conv80 = zext i8 %84 to i32
  %85 = load i32, i32* %zero, align 4, !tbaa !17
  %xor81 = xor i32 %conv80, %85
  %idxprom82 = zext i32 %xor81 to i64
  %arrayidx83 = getelementptr inbounds [256 x i8], [256 x i8]* @byte_bit_run_length_0, i32 0, i64 %idxprom82
  %86 = load i8, i8* %arrayidx83, align 1, !tbaa !16
  %conv84 = zext i8 %86 to i32
  store i32 %conv84, i32* %run, align 4, !tbaa !17
  %87 = load i32, i32* %run, align 4, !tbaa !17
  %88 = load i32, i32* %left, align 4, !tbaa !17
  %cmp85 = icmp sge i32 %87, %88
  br i1 %cmp85, label %if.then.87, label %if.else.88

if.then.87:                                       ; preds = %while.end.79
  store i32 0, i32* %left, align 4, !tbaa !17
  br label %if.end.91

if.else.88:                                       ; preds = %while.end.79
  %89 = load i32, i32* %run, align 4, !tbaa !17
  %and89 = and i32 %89, 7
  store i32 %and89, i32* %bit, align 4, !tbaa !17
  %90 = load i32, i32* %run, align 4, !tbaa !17
  %91 = load i32, i32* %left, align 4, !tbaa !17
  %sub90 = sub nsw i32 %91, %90
  store i32 %sub90, i32* %left, align 4, !tbaa !17
  br label %if.end.91

if.end.91:                                        ; preds = %if.else.88, %if.then.87
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.then.64
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.end.59
  %92 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %92, i32 0, i32 0
  %93 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !5
  %fill_rectangle = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %93, i32 0, i32 5
  %94 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle, align 8, !tbaa !52
  %95 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %96 = load i32, i32* %x.addr, align 4, !tbaa !17
  %97 = load i32, i32* %w.addr, align 4, !tbaa !17
  %add94 = add nsw i32 %96, %97
  %98 = load i32, i32* %l0, align 4, !tbaa !17
  %sub95 = sub nsw i32 %add94, %98
  %99 = load i32, i32* %y.addr, align 4, !tbaa !17
  %100 = load i32, i32* %iy, align 4, !tbaa !17
  %add96 = add nsw i32 %99, %100
  %101 = load i32, i32* %l0, align 4, !tbaa !17
  %102 = load i32, i32* %left, align 4, !tbaa !17
  %sub97 = sub nsw i32 %101, %102
  %103 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %104 = load i32, i32* %lop.addr, align 4, !tbaa !17
  %call = call i32 %94(%struct.gx_device_color_s* %95, i32 %sub95, i32 %add96, i32 %sub97, i32 1, %struct.gx_device_s* %103, i32 %104, %struct.gx_rop_source_s* null) #3
  store i32 %call, i32* %code, align 4, !tbaa !17
  %105 = load i32, i32* %code, align 4, !tbaa !17
  %cmp98 = icmp slt i32 %105, 0
  br i1 %cmp98, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %if.end.93
  %106 = load i32, i32* %code, align 4, !tbaa !17
  store i32 %106, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.101:                                       ; preds = %if.end.93
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.101, %if.then.100, %if.then.35, %if.then.16, %if.then.12
  %107 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #1
  %108 = bitcast i32* %run to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.104 [
    i32 0, label %cleanup.cont
    i32 6, label %while.end.103
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end.103:                                    ; preds = %cleanup, %while.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.104

cleanup.104:                                      ; preds = %while.end.103, %cleanup
  %109 = bitcast i32* %l0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #1
  %110 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #1
  %111 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #1
  %112 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %112) #1
  %cleanup.dest.108 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.108, label %cleanup.112 [
    i32 0, label %cleanup.cont.109
  ]

cleanup.cont.109:                                 ; preds = %cleanup.104
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont.109
  %113 = load i32, i32* %iy, align 4, !tbaa !17
  %inc = add nsw i32 %113, 1
  store i32 %inc, i32* %iy, align 4, !tbaa !17
  %114 = load i32, i32* %raster.addr, align 4, !tbaa !17
  %115 = load i8*, i8** %row, align 8, !tbaa !1
  %idx.ext110 = sext i32 %114 to i64
  %add.ptr111 = getelementptr inbounds i8, i8* %115, i64 %idx.ext110
  store i8* %add.ptr111, i8** %row, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.112

cleanup.112:                                      ; preds = %for.end, %cleanup.104
  %116 = bitcast i32* %iy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #1
  %117 = bitcast i32* %zero to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #1
  %118 = bitcast i32* %one to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #1
  %119 = bitcast i8** %row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %119) #1
  %120 = bitcast i32* %lbit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #1
  %121 = load i32, i32* %retval
  ret i32 %121
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_devn_equal(%struct.gx_device_color_s* %pdevc1, %struct.gx_device_color_s* %pdevc2) #0 {
entry:
  %retval = alloca i32, align 4
  %pdevc1.addr = alloca %struct.gx_device_color_s*, align 8
  %pdevc2.addr = alloca %struct.gx_device_color_s*, align 8
  %k = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_color_s* %pdevc1, %struct.gx_device_color_s** %pdevc1.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdevc2, %struct.gx_device_color_s** %pdevc2.addr, align 8, !tbaa !1
  %0 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc1.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i32 0, i32 0
  %2 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !5
  %cmp = icmp eq %struct.gx_device_color_type_s* %2, bitcast ({ %struct.gs_memory_struct_type_s*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* }* @gx_dc_type_data_devn to %struct.gx_device_color_type_s*)
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc2.addr, align 8, !tbaa !1
  %type1 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %3, i32 0, i32 0
  %4 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type1, align 8, !tbaa !5
  %cmp2 = icmp eq %struct.gx_device_color_type_s* %4, bitcast ({ %struct.gs_memory_struct_type_s*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* }* @gx_dc_type_data_devn to %struct.gx_device_color_type_s*)
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %k, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %k, align 4, !tbaa !17
  %cmp3 = icmp slt i32 %5, 64
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %k, align 4, !tbaa !17
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc1.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %7, i32 0, i32 1
  %devn = bitcast %union._c* %colors to %struct._devn*
  %values = getelementptr inbounds %struct._devn, %struct._devn* %devn, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x i16], [64 x i16]* %values, i32 0, i64 %idxprom
  %8 = load i16, i16* %arrayidx, align 2, !tbaa !44
  %conv = zext i16 %8 to i32
  %9 = load i32, i32* %k, align 4, !tbaa !17
  %idxprom4 = sext i32 %9 to i64
  %10 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc2.addr, align 8, !tbaa !1
  %colors5 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %10, i32 0, i32 1
  %devn6 = bitcast %union._c* %colors5 to %struct._devn*
  %values7 = getelementptr inbounds %struct._devn, %struct._devn* %devn6, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [64 x i16], [64 x i16]* %values7, i32 0, i64 %idxprom4
  %11 = load i16, i16* %arrayidx8, align 2, !tbaa !44
  %conv9 = zext i16 %11 to i32
  %cmp10 = icmp ne i32 %conv, %conv9
  br i1 %cmp10, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %for.body
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %k, align 4, !tbaa !17
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %k, align 4, !tbaa !17
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %for.end, %if.then.12
  %13 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_devn_write(%struct.gx_device_color_s* %pdevc, %struct.gx_device_color_saved_s* %psdc, %struct.gx_device_s* %dev, i64 %offset, i8* %pdata, i32* %psize) #0 {
entry:
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %psdc.addr = alloca %struct.gx_device_color_saved_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %offset.addr = alloca i64, align 8
  %pdata.addr = alloca i8*, align 8
  %psize.addr = alloca i32*, align 8
  %k = alloca i32, align 4
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gx_device_color_saved_s* %psdc, %struct.gx_device_color_saved_s** %psdc.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %offset, i64* %offset.addr, align 8, !tbaa !18
  store i8* %pdata, i8** %pdata.addr, align 8, !tbaa !1
  store i32* %psize, i32** %psize.addr, align 8, !tbaa !1
  %0 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %4 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  %call = call i32 @gx_devn_write_color(%struct.gx_device_color_s* %1, %struct.gx_device_s* %2, i8* %3, i32* %4) #3
  %5 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %5) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_devn_read(%struct.gx_device_color_s* %pdevc, %struct.gs_imager_state_s* %pis, %struct.gx_device_color_s* %prior_devc, %struct.gx_device_s* %dev, i64 %offset, i8* %pdata, i32 %size, %struct.gs_memory_s* %mem) #0 {
entry:
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %prior_devc.addr = alloca %struct.gx_device_color_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %offset.addr = alloca i64, align 8
  %pdata.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %prior_devc, %struct.gx_device_color_s** %prior_devc.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %offset, i64* %offset.addr, align 8, !tbaa !18
  store i8* %pdata, i8** %pdata.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !17
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %0, i32 0, i32 0
  store %struct.gx_device_color_type_s* bitcast ({ %struct.gs_memory_struct_type_s*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* }* @gx_dc_type_data_devn to %struct.gx_device_color_type_s*), %struct.gx_device_color_type_s** %type, align 8, !tbaa !5
  %1 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i32 0, i32 1
  %devn = bitcast %union._c* %colors to %struct._devn*
  %values = getelementptr inbounds %struct._devn, %struct._devn* %devn, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x i16], [64 x i16]* %values, i32 0, i64 0
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %4 = load i32, i32* %size.addr, align 4, !tbaa !17
  %call = call i32 @gx_devn_read_color(i16* %arrayidx, %struct.gx_device_s* %2, i8* %3, i32 %4) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gx_dc_devn_get_nonzero_comps(%struct.gx_device_color_s* %pdevc, %struct.gx_device_s* %dev, i64* %pcomp_bits) #0 {
entry:
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pcomp_bits.addr = alloca i64*, align 8
  %i = alloca i32, align 4
  %ncomps = alloca i32, align 4
  %mask = alloca i64, align 8
  %comp_bits = alloca i64, align 8
  %count = alloca i32, align 4
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64* %pcomp_bits, i64** %pcomp_bits.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %3 = load i32, i32* %num_components, align 4, !tbaa !43
  store i32 %3, i32* %ncomps, align 4, !tbaa !17
  %4 = bitcast i64* %mask to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i64 1, i64* %mask, align 8, !tbaa !18
  %5 = bitcast i64* %comp_bits to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i64 0, i64* %comp_bits, align 8, !tbaa !18
  %6 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 0, i32* %count, align 4, !tbaa !17
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4, !tbaa !17
  %8 = load i32, i32* %ncomps, align 4, !tbaa !17
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %10, i32 0, i32 1
  %devn = bitcast %union._c* %colors to %struct._devn*
  %values = getelementptr inbounds %struct._devn, %struct._devn* %devn, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x i16], [64 x i16]* %values, i32 0, i64 %idxprom
  %11 = load i16, i16* %arrayidx, align 2, !tbaa !44
  %conv = zext i16 %11 to i32
  %cmp1 = icmp ne i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %12 = load i64, i64* %mask, align 8, !tbaa !18
  %13 = load i64, i64* %comp_bits, align 8, !tbaa !18
  %or = or i64 %13, %12
  store i64 %or, i64* %comp_bits, align 8, !tbaa !18
  %14 = load i32, i32* %count, align 4, !tbaa !17
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %count, align 4, !tbaa !17
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %i, align 4, !tbaa !17
  %inc3 = add nsw i32 %15, 1
  store i32 %inc3, i32* %i, align 4, !tbaa !17
  %16 = load i64, i64* %mask, align 8, !tbaa !18
  %shl = shl i64 %16, 1
  store i64 %shl, i64* %mask, align 8, !tbaa !18
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i64, i64* %comp_bits, align 8, !tbaa !18
  %18 = load i64*, i64** %pcomp_bits.addr, align 8, !tbaa !1
  store i64 %17, i64* %18, align 8, !tbaa !18
  %19 = load i32, i32* %count, align 4, !tbaa !17
  %20 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = bitcast i64* %comp_bits to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  %22 = bitcast i64* %mask to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define i64 @gx_device_black(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cm_procs = alloca %struct.gx_cm_color_map_procs_s*, align 8
  %i = alloca i32, align 4
  %ncomps = alloca i32, align 4
  %cm_comps = alloca [64 x i16], align 16
  %cv = alloca [64 x i16], align 16
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %cached_colors = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i32 0, i32 12
  %black = getelementptr inbounds %struct.gx_device_cached_colors_s, %struct.gx_device_cached_colors_s* %cached_colors, i32 0, i32 0
  %1 = load i64, i64* %black, align 8, !tbaa !54
  %cmp = icmp eq i64 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.gx_cm_color_map_procs_s** %cm_procs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 42
  %get_color_mapping_procs = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 49
  %4 = load %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)** %get_color_mapping_procs, align 8, !tbaa !55
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call %struct.gx_cm_color_map_procs_s* %4(%struct.gx_device_s* %5) #3
  store %struct.gx_cm_color_map_procs_s* %call, %struct.gx_cm_color_map_procs_s** %cm_procs, align 8, !tbaa !1
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %9 = load i32, i32* %num_components, align 4, !tbaa !43
  store i32 %9, i32* %ncomps, align 4, !tbaa !17
  %10 = bitcast [64 x i16]* %cm_comps to i8*
  call void @llvm.lifetime.start(i64 128, i8* %10) #1
  %11 = bitcast [64 x i16]* %cv to i8*
  call void @llvm.lifetime.start(i64 128, i8* %11) #1
  %12 = load %struct.gx_cm_color_map_procs_s*, %struct.gx_cm_color_map_procs_s** %cm_procs, align 8, !tbaa !1
  %map_gray = getelementptr inbounds %struct.gx_cm_color_map_procs_s, %struct.gx_cm_color_map_procs_s* %12, i32 0, i32 0
  %13 = load void (%struct.gx_device_s*, i16, i16*)*, void (%struct.gx_device_s*, i16, i16*)** %map_gray, align 8, !tbaa !56
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i32 0
  call void %13(%struct.gx_device_s* %14, i16 signext 0, i16* %arraydecay) #3
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %15 = load i32, i32* %i, align 4, !tbaa !17
  %16 = load i32, i32* %ncomps, align 4, !tbaa !17
  %cmp1 = icmp slt i32 %15, %16
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom
  %18 = load i16, i16* %arrayidx, align 2, !tbaa !44
  %conv = sext i16 %18 to i32
  %shl = shl i32 %conv, 1
  %19 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom2 = sext i32 %19 to i64
  %arrayidx3 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom2
  %20 = load i16, i16* %arrayidx3, align 2, !tbaa !44
  %conv4 = sext i16 %20 to i32
  %shr = ashr i32 %conv4, 11
  %add = add nsw i32 %shl, %shr
  %conv5 = trunc i32 %add to i16
  %21 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom6 = sext i32 %21 to i64
  %arrayidx7 = getelementptr inbounds [64 x i16], [64 x i16]* %cv, i32 0, i64 %idxprom6
  store i16 %conv5, i16* %arrayidx7, align 2, !tbaa !44
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4, !tbaa !17
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs8 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %23, i32 0, i32 42
  %encode_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs8, i32 0, i32 51
  %24 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color, align 8, !tbaa !58
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay9 = getelementptr inbounds [64 x i16], [64 x i16]* %cv, i32 0, i32 0
  %call10 = call i64 %24(%struct.gx_device_s* %25, i16* %arraydecay9) #3
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %cached_colors11 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %26, i32 0, i32 12
  %black12 = getelementptr inbounds %struct.gx_device_cached_colors_s, %struct.gx_device_cached_colors_s* %cached_colors11, i32 0, i32 0
  store i64 %call10, i64* %black12, align 8, !tbaa !54
  %27 = bitcast [64 x i16]* %cv to i8*
  call void @llvm.lifetime.end(i64 128, i8* %27) #1
  %28 = bitcast [64 x i16]* %cm_comps to i8*
  call void @llvm.lifetime.end(i64 128, i8* %28) #1
  %29 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %31 = bitcast %struct.gx_cm_color_map_procs_s** %cm_procs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %cached_colors13 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %32, i32 0, i32 12
  %black14 = getelementptr inbounds %struct.gx_device_cached_colors_s, %struct.gx_device_cached_colors_s* %cached_colors13, i32 0, i32 0
  %33 = load i64, i64* %black14, align 8, !tbaa !54
  ret i64 %33
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i64 @gx_device_white(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cm_procs = alloca %struct.gx_cm_color_map_procs_s*, align 8
  %i = alloca i32, align 4
  %ncomps = alloca i32, align 4
  %cm_comps = alloca [64 x i16], align 16
  %cv = alloca [64 x i16], align 16
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %cached_colors = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i32 0, i32 12
  %white = getelementptr inbounds %struct.gx_device_cached_colors_s, %struct.gx_device_cached_colors_s* %cached_colors, i32 0, i32 1
  %1 = load i64, i64* %white, align 8, !tbaa !59
  %cmp = icmp eq i64 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.gx_cm_color_map_procs_s** %cm_procs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 42
  %get_color_mapping_procs = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 49
  %4 = load %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)** %get_color_mapping_procs, align 8, !tbaa !55
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call %struct.gx_cm_color_map_procs_s* %4(%struct.gx_device_s* %5) #3
  store %struct.gx_cm_color_map_procs_s* %call, %struct.gx_cm_color_map_procs_s** %cm_procs, align 8, !tbaa !1
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %9 = load i32, i32* %num_components, align 4, !tbaa !43
  store i32 %9, i32* %ncomps, align 4, !tbaa !17
  %10 = bitcast [64 x i16]* %cm_comps to i8*
  call void @llvm.lifetime.start(i64 128, i8* %10) #1
  %11 = bitcast [64 x i16]* %cv to i8*
  call void @llvm.lifetime.start(i64 128, i8* %11) #1
  %12 = load %struct.gx_cm_color_map_procs_s*, %struct.gx_cm_color_map_procs_s** %cm_procs, align 8, !tbaa !1
  %map_gray = getelementptr inbounds %struct.gx_cm_color_map_procs_s, %struct.gx_cm_color_map_procs_s* %12, i32 0, i32 0
  %13 = load void (%struct.gx_device_s*, i16, i16*)*, void (%struct.gx_device_s*, i16, i16*)** %map_gray, align 8, !tbaa !56
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i32 0
  call void %13(%struct.gx_device_s* %14, i16 signext 32760, i16* %arraydecay) #3
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %15 = load i32, i32* %i, align 4, !tbaa !17
  %16 = load i32, i32* %ncomps, align 4, !tbaa !17
  %cmp1 = icmp slt i32 %15, %16
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom
  %18 = load i16, i16* %arrayidx, align 2, !tbaa !44
  %conv = sext i16 %18 to i32
  %shl = shl i32 %conv, 1
  %19 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom2 = sext i32 %19 to i64
  %arrayidx3 = getelementptr inbounds [64 x i16], [64 x i16]* %cm_comps, i32 0, i64 %idxprom2
  %20 = load i16, i16* %arrayidx3, align 2, !tbaa !44
  %conv4 = sext i16 %20 to i32
  %shr = ashr i32 %conv4, 11
  %add = add nsw i32 %shl, %shr
  %conv5 = trunc i32 %add to i16
  %21 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom6 = sext i32 %21 to i64
  %arrayidx7 = getelementptr inbounds [64 x i16], [64 x i16]* %cv, i32 0, i64 %idxprom6
  store i16 %conv5, i16* %arrayidx7, align 2, !tbaa !44
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4, !tbaa !17
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs8 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %23, i32 0, i32 42
  %encode_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs8, i32 0, i32 51
  %24 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color, align 8, !tbaa !58
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay9 = getelementptr inbounds [64 x i16], [64 x i16]* %cv, i32 0, i32 0
  %call10 = call i64 %24(%struct.gx_device_s* %25, i16* %arraydecay9) #3
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %cached_colors11 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %26, i32 0, i32 12
  %white12 = getelementptr inbounds %struct.gx_device_cached_colors_s, %struct.gx_device_cached_colors_s* %cached_colors11, i32 0, i32 1
  store i64 %call10, i64* %white12, align 8, !tbaa !59
  %27 = bitcast [64 x i16]* %cv to i8*
  call void @llvm.lifetime.end(i64 128, i8* %27) #1
  %28 = bitcast [64 x i16]* %cm_comps to i8*
  call void @llvm.lifetime.end(i64 128, i8* %28) #1
  %29 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %31 = bitcast %struct.gx_cm_color_map_procs_s** %cm_procs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %cached_colors13 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %32, i32 0, i32 12
  %white14 = getelementptr inbounds %struct.gx_device_cached_colors_s, %struct.gx_device_cached_colors_s* %cached_colors13, i32 0, i32 1
  %33 = load i64, i64* %white14, align 8, !tbaa !59
  ret i64 %33
}

; Function Attrs: nounwind uwtable
define void @gx_device_decache_colors(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %cached_colors = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i32 0, i32 12
  %white = getelementptr inbounds %struct.gx_device_cached_colors_s, %struct.gx_device_cached_colors_s* %cached_colors, i32 0, i32 1
  store i64 -1, i64* %white, align 8, !tbaa !59
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %cached_colors1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 12
  %black = getelementptr inbounds %struct.gx_device_cached_colors_s, %struct.gx_device_cached_colors_s* %cached_colors1, i32 0, i32 0
  store i64 -1, i64* %black, align 8, !tbaa !54
  ret void
}

; Function Attrs: nounwind uwtable
define void @gx_set_rop_no_source(%struct.gx_rop_source_s** %psource, %struct.gx_rop_source_s* %pno_source, %struct.gx_device_s* %dev) #0 {
entry:
  %psource.addr = alloca %struct.gx_rop_source_s**, align 8
  %pno_source.addr = alloca %struct.gx_rop_source_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %black = alloca i64, align 8
  store %struct.gx_rop_source_s** %psource, %struct.gx_rop_source_s*** %psource.addr, align 8, !tbaa !1
  store %struct.gx_rop_source_s* %pno_source, %struct.gx_rop_source_s** %pno_source.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast i64* %black to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  br label %top

top:                                              ; preds = %if.then.6, %entry
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %cached_colors = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 12
  %black1 = getelementptr inbounds %struct.gx_device_cached_colors_s, %struct.gx_device_cached_colors_s* %cached_colors, i32 0, i32 0
  %2 = load i64, i64* %black1, align 8, !tbaa !54
  store i64 %2, i64* %black, align 8, !tbaa !18
  %3 = load i64, i64* %black, align 8, !tbaa !18
  %cmp = icmp eq i64 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %top
  %4 = load %struct.gx_rop_source_s**, %struct.gx_rop_source_s*** %psource.addr, align 8, !tbaa !1
  store %struct.gx_rop_source_s* @gx_rop_no_source_0, %struct.gx_rop_source_s** %4, align 8, !tbaa !1
  br label %if.end.11

if.else:                                          ; preds = %top
  %5 = load i64, i64* %black, align 8, !tbaa !18
  %cmp2 = icmp eq i64 %5, 1
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.else
  %6 = load %struct.gx_rop_source_s**, %struct.gx_rop_source_s*** %psource.addr, align 8, !tbaa !1
  store %struct.gx_rop_source_s* @gx_rop_no_source_1, %struct.gx_rop_source_s** %6, align 8, !tbaa !1
  br label %if.end.10

if.else.4:                                        ; preds = %if.else
  %7 = load i64, i64* %black, align 8, !tbaa !18
  %cmp5 = icmp eq i64 %7, -1
  br i1 %cmp5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.else.4
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i64 @gx_device_black(%struct.gx_device_s* %8) #3
  br label %top

if.else.7:                                        ; preds = %if.else.4
  %9 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %pno_source.addr, align 8, !tbaa !1
  %10 = bitcast %struct.gx_rop_source_s* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* bitcast (%struct.gx_rop_source_s* @gx_rop_no_source_0 to i8*), i64 48, i32 8, i1 false), !tbaa.struct !60
  %11 = load i64, i64* %black, align 8, !tbaa !18
  %12 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %pno_source.addr, align 8, !tbaa !1
  %scolors = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %12, i32 0, i32 4
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %scolors, i32 0, i64 1
  store i64 %11, i64* %arrayidx, align 8, !tbaa !18
  %13 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %pno_source.addr, align 8, !tbaa !1
  %scolors8 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %13, i32 0, i32 4
  %arrayidx9 = getelementptr inbounds [2 x i64], [2 x i64]* %scolors8, i32 0, i64 0
  store i64 %11, i64* %arrayidx9, align 8, !tbaa !18
  %14 = load %struct.gx_rop_source_s*, %struct.gx_rop_source_s** %pno_source.addr, align 8, !tbaa !1
  %15 = load %struct.gx_rop_source_s**, %struct.gx_rop_source_s*** %psource.addr, align 8, !tbaa !1
  store %struct.gx_rop_source_s* %14, %struct.gx_rop_source_s** %15, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else.7
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then.3
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then
  %16 = bitcast i64* %black to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define i32 @gx_device_color_equal(%struct.gx_device_color_s* %pdevc1, %struct.gx_device_color_s* %pdevc2) #0 {
entry:
  %pdevc1.addr = alloca %struct.gx_device_color_s*, align 8
  %pdevc2.addr = alloca %struct.gx_device_color_s*, align 8
  store %struct.gx_device_color_s* %pdevc1, %struct.gx_device_color_s** %pdevc1.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdevc2, %struct.gx_device_color_s** %pdevc2.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc1.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %0, i32 0, i32 0
  %1 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !5
  %equal = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %1, i32 0, i32 7
  %2 = load i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)** %equal, align 8, !tbaa !61
  %3 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc1.addr, align 8, !tbaa !1
  %4 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc2.addr, align 8, !tbaa !1
  %call = call i32 %2(%struct.gx_device_color_s* %3, %struct.gx_device_color_s* %4) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gx_get_dc_type_index(%struct.gx_device_color_s* %pdevc) #0 {
entry:
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %type = alloca %struct.gx_device_color_type_s*, align 8
  %num_types = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_color_type_s** %type to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type1 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i32 0, i32 0
  %2 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type1, align 8, !tbaa !5
  store %struct.gx_device_color_type_s* %2, %struct.gx_device_color_type_s** %type, align 8, !tbaa !1
  %3 = bitcast i32* %num_types to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 7, i32* %num_types, align 4, !tbaa !17
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4, !tbaa !17
  %6 = load i32, i32* %num_types, align 4, !tbaa !17
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %7 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !1
  %8 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [7 x %struct.gx_device_color_type_s*], [7 x %struct.gx_device_color_type_s*]* @dc_color_type_table, i32 0, i64 %idxprom
  %9 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %arrayidx, align 8, !tbaa !1
  %cmp2 = icmp ne %struct.gx_device_color_type_s* %7, %9
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %10 = phi i1 [ false, %for.cond ], [ %cmp2, %land.rhs ]
  br i1 %10, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !tbaa !17
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.end:                                          ; preds = %land.end
  %12 = load i32, i32* %i, align 4, !tbaa !17
  %13 = load i32, i32* %num_types, align 4, !tbaa !17
  %cmp3 = icmp slt i32 %12, %13
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %14 = load i32, i32* %i, align 4, !tbaa !17
  br label %cond.end

cond.false:                                       ; preds = %for.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %14, %cond.true ], [ -1, %cond.false ]
  %15 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = bitcast i32* %num_types to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %17 = bitcast %struct.gx_device_color_type_s** %type to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define %struct.gx_device_color_type_s* @gx_get_dc_type_from_index(i32 %i) #0 {
entry:
  %retval = alloca %struct.gx_device_color_type_s*, align 8
  %i.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4, !tbaa !17
  %0 = load i32, i32* %i.addr, align 4, !tbaa !17
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %i.addr, align 4, !tbaa !17
  %conv = sext i32 %1 to i64
  %cmp1 = icmp ult i64 %conv, 7
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load i32, i32* %i.addr, align 4, !tbaa !17
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [7 x %struct.gx_device_color_type_s*], [7 x %struct.gx_device_color_type_s*]* @dc_color_type_table, i32 0, i64 %idxprom
  %3 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %arrayidx, align 8, !tbaa !1
  store %struct.gx_device_color_type_s* %3, %struct.gx_device_color_type_s** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  store %struct.gx_device_color_type_s* null, %struct.gx_device_color_type_s** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %retval
  ret %struct.gx_device_color_type_s* %4
}

; Function Attrs: nounwind uwtable
define i32 @gx_dc_ht_get_phase(%struct.gx_device_color_s* %pdevc, %struct.gs_int_point_s* %pphase) #0 {
entry:
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %pphase.addr = alloca %struct.gs_int_point_s*, align 8
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gs_int_point_s* %pphase, %struct.gs_int_point_s** %pphase.addr, align 8, !tbaa !1
  %0 = load %struct.gs_int_point_s*, %struct.gs_int_point_s** %pphase.addr, align 8, !tbaa !1
  %1 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %phase = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i32 0, i32 2
  %2 = bitcast %struct.gs_int_point_s* %0 to i8*
  %3 = bitcast %struct.gs_int_point_s* %phase to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 8, i32 4, i1 false), !tbaa.struct !62
  ret i32 1
}

; Function Attrs: nounwind uwtable
define i32 @gx_dc_cannot_write(%struct.gx_device_color_s* %pdevc, %struct.gx_device_color_saved_s* %psdc, %struct.gx_device_s* %dev, i64 %offset, i8* %data, i32* %psize) #0 {
entry:
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %psdc.addr = alloca %struct.gx_device_color_saved_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %offset.addr = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %psize.addr = alloca i32*, align 8
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gx_device_color_saved_s* %psdc, %struct.gx_device_color_saved_s** %psdc.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %offset, i64* %offset.addr, align 8, !tbaa !18
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32* %psize, i32** %psize.addr, align 8, !tbaa !1
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define i32 @gx_dc_cannot_read(%struct.gx_device_color_s* %pdevc, %struct.gs_imager_state_s* %pis, %struct.gx_device_color_s* %prior_devc, %struct.gx_device_s* %dev, i64 %offset, i8* %pdata, i32 %size, %struct.gs_memory_s* %mem) #0 {
entry:
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %prior_devc.addr = alloca %struct.gx_device_color_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %offset.addr = alloca i64, align 8
  %pdata.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %prior_devc, %struct.gx_device_color_s** %prior_devc.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %offset, i64* %offset.addr, align 8, !tbaa !18
  store i8* %pdata, i8** %pdata.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !17
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define void @gx_complete_halftone(%struct.gx_device_color_s* %pdevc, i32 %num_comps, %struct.gx_device_halftone_s* %pdht) #0 {
entry:
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %num_comps.addr = alloca i32, align 4
  %pdht.addr = alloca %struct.gx_device_halftone_s*, align 8
  %i = alloca i32, align 4
  %mask = alloca i32, align 4
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store i32 %num_comps, i32* %num_comps.addr, align 4, !tbaa !17
  store %struct.gx_device_halftone_s* %pdht, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %mask, align 4, !tbaa !17
  %2 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %2, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_ht_colored, %struct.gx_device_color_type_s** %type, align 8, !tbaa !5
  %3 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %pdht.addr, align 8, !tbaa !1
  %4 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %4, i32 0, i32 1
  %colored = bitcast %union._c* %colors to %struct._col*
  %c_ht = getelementptr inbounds %struct._col, %struct._col* %colored, i32 0, i32 0
  store %struct.gx_device_halftone_s* %3, %struct.gx_device_halftone_s** %c_ht, align 8, !tbaa !63
  %5 = load i32, i32* %num_comps.addr, align 4, !tbaa !17
  %conv = trunc i32 %5 to i16
  %6 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors1 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %6, i32 0, i32 1
  %colored2 = bitcast %union._c* %colors1 to %struct._col*
  %num_components = getelementptr inbounds %struct._col, %struct._col* %colored2, i32 0, i32 1
  store i16 %conv, i16* %num_components, align 2, !tbaa !65
  %7 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors3 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %7, i32 0, i32 1
  %colored4 = bitcast %union._c* %colors3 to %struct._col*
  %alpha = getelementptr inbounds %struct._col, %struct._col* %colored4, i32 0, i32 4
  store i16 -1, i16* %alpha, align 2, !tbaa !66
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4, !tbaa !17
  %9 = load i32, i32* %num_comps.addr, align 4, !tbaa !17
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors6 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %11, i32 0, i32 1
  %colored7 = bitcast %union._c* %colors6 to %struct._col*
  %c_level = getelementptr inbounds %struct._col, %struct._col* %colored7, i32 0, i32 3
  %arrayidx = getelementptr inbounds [64 x i32], [64 x i32]* %c_level, i32 0, i64 %idxprom
  %12 = load i32, i32* %arrayidx, align 4, !tbaa !17
  %cmp8 = icmp ne i32 %12, 0
  %cond = select i1 %cmp8, i32 1, i32 0
  %13 = load i32, i32* %i, align 4, !tbaa !17
  %shl = shl i32 %cond, %13
  %14 = load i32, i32* %mask, align 4, !tbaa !17
  %or = or i32 %14, %shl
  store i32 %or, i32* %mask, align 4, !tbaa !17
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4, !tbaa !17
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i32, i32* %mask, align 4, !tbaa !17
  %conv10 = sext i32 %16 to i64
  %17 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors11 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %17, i32 0, i32 1
  %colored12 = bitcast %union._c* %colors11 to %struct._col*
  %plane_mask = getelementptr inbounds %struct._col, %struct._col* %colored12, i32 0, i32 5
  store i64 %conv10, i64* %plane_mask, align 8, !tbaa !67
  %18 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %19 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gx_dc_default_fill_masked(%struct.gx_device_color_s* %pdevc, i8* %data, i32 %data_x, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, %struct.gx_device_s* %dev, i32 %lop, i32 %invert) #0 {
entry:
  %retval = alloca i32, align 4
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %data.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %lop.addr = alloca i32, align 4
  %invert.addr = alloca i32, align 4
  %lbit = alloca i32, align 4
  %row = alloca i8*, align 8
  %one = alloca i32, align 4
  %zero = alloca i32, align 4
  %iy = alloca i32, align 4
  %p = alloca i8*, align 8
  %bit = alloca i32, align 4
  %left = alloca i32, align 4
  %l0 = alloca i32, align 4
  %run = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !17
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !17
  store i64 %id, i64* %id.addr, align 8, !tbaa !18
  store i32 %x, i32* %x.addr, align 4, !tbaa !17
  store i32 %y, i32* %y.addr, align 4, !tbaa !17
  store i32 %w, i32* %w.addr, align 4, !tbaa !17
  store i32 %h, i32* %h.addr, align 4, !tbaa !17
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !17
  store i32 %invert, i32* %invert.addr, align 4, !tbaa !17
  %0 = bitcast i32* %lbit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %data_x.addr, align 4, !tbaa !17
  %and = and i32 %1, 7
  store i32 %and, i32* %lbit, align 4, !tbaa !17
  %2 = bitcast i8** %row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %4 = load i32, i32* %data_x.addr, align 4, !tbaa !17
  %shr = ashr i32 %4, 3
  %idx.ext = sext i32 %shr to i64
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %idx.ext
  store i8* %add.ptr, i8** %row, align 8, !tbaa !1
  %5 = bitcast i32* %one to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %invert.addr, align 4, !tbaa !17
  %tobool = icmp ne i32 %6, 0
  %cond = select i1 %tobool, i32 0, i32 255
  store i32 %cond, i32* %one, align 4, !tbaa !17
  %7 = bitcast i32* %zero to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i32, i32* %one, align 4, !tbaa !17
  %xor = xor i32 %8, 255
  store i32 %xor, i32* %zero, align 4, !tbaa !17
  %9 = bitcast i32* %iy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 0, i32* %iy, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %iy, align 4, !tbaa !17
  %11 = load i32, i32* %h.addr, align 4, !tbaa !17
  %cmp = icmp slt i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load i8*, i8** %row, align 8, !tbaa !1
  store i8* %13, i8** %p, align 8, !tbaa !1
  %14 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load i32, i32* %lbit, align 4, !tbaa !17
  store i32 %15, i32* %bit, align 4, !tbaa !17
  %16 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load i32, i32* %w.addr, align 4, !tbaa !17
  store i32 %17, i32* %left, align 4, !tbaa !17
  %18 = bitcast i32* %l0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %for.body
  %19 = load i32, i32* %left, align 4, !tbaa !17
  %tobool1 = icmp ne i32 %19, 0
  br i1 %tobool1, label %while.body, label %while.end.103

while.body:                                       ; preds = %while.cond
  %20 = bitcast i32* %run to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load i8*, i8** %p, align 8, !tbaa !1
  %23 = load i8, i8* %22, align 1, !tbaa !16
  %conv = zext i8 %23 to i32
  %24 = load i32, i32* %one, align 4, !tbaa !17
  %xor2 = xor i32 %conv, %24
  %idxprom = zext i32 %xor2 to i64
  %25 = load i32, i32* %bit, align 4, !tbaa !17
  %idxprom3 = sext i32 %25 to i64
  %arrayidx = getelementptr inbounds [8 x i8*], [8 x i8*]* @byte_bit_run_length, i32 0, i64 %idxprom3
  %26 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i8, i8* %26, i64 %idxprom
  %27 = load i8, i8* %arrayidx4, align 1, !tbaa !16
  %conv5 = zext i8 %27 to i32
  store i32 %conv5, i32* %run, align 4, !tbaa !17
  %28 = load i32, i32* %run, align 4, !tbaa !17
  %tobool6 = icmp ne i32 %28, 0
  br i1 %tobool6, label %if.then, label %if.end.42

if.then:                                          ; preds = %while.body
  %29 = load i32, i32* %run, align 4, !tbaa !17
  %cmp7 = icmp slt i32 %29, 8
  br i1 %cmp7, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then
  %30 = load i32, i32* %run, align 4, !tbaa !17
  %31 = load i32, i32* %left, align 4, !tbaa !17
  %cmp10 = icmp sge i32 %30, %31
  br i1 %cmp10, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then.9
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.9
  %32 = load i32, i32* %run, align 4, !tbaa !17
  %33 = load i32, i32* %bit, align 4, !tbaa !17
  %add = add nsw i32 %33, %32
  store i32 %add, i32* %bit, align 4, !tbaa !17
  %34 = load i32, i32* %run, align 4, !tbaa !17
  %35 = load i32, i32* %left, align 4, !tbaa !17
  %sub = sub nsw i32 %35, %34
  store i32 %sub, i32* %left, align 4, !tbaa !17
  br label %if.end.41

if.else:                                          ; preds = %if.then
  %36 = load i32, i32* %run, align 4, !tbaa !17
  %sub13 = sub nsw i32 %36, 8
  store i32 %sub13, i32* %run, align 4, !tbaa !17
  %37 = load i32, i32* %left, align 4, !tbaa !17
  %cmp14 = icmp sge i32 %sub13, %37
  br i1 %cmp14, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %if.else
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup

if.else.17:                                       ; preds = %if.else
  %38 = load i32, i32* %run, align 4, !tbaa !17
  %39 = load i32, i32* %left, align 4, !tbaa !17
  %sub18 = sub nsw i32 %39, %38
  store i32 %sub18, i32* %left, align 4, !tbaa !17
  %40 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  br label %while.cond.19

while.cond.19:                                    ; preds = %while.body.25, %if.else.17
  %41 = load i32, i32* %left, align 4, !tbaa !17
  %cmp20 = icmp sgt i32 %41, 8
  br i1 %cmp20, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.19
  %42 = load i8*, i8** %p, align 8, !tbaa !1
  %43 = load i8, i8* %42, align 1, !tbaa !16
  %conv22 = zext i8 %43 to i32
  %44 = load i32, i32* %zero, align 4, !tbaa !17
  %cmp23 = icmp eq i32 %conv22, %44
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.19
  %45 = phi i1 [ false, %while.cond.19 ], [ %cmp23, %land.rhs ]
  br i1 %45, label %while.body.25, label %while.end

while.body.25:                                    ; preds = %land.end
  %46 = load i32, i32* %left, align 4, !tbaa !17
  %sub26 = sub nsw i32 %46, 8
  store i32 %sub26, i32* %left, align 4, !tbaa !17
  %47 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr27 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr27, i8** %p, align 8, !tbaa !1
  br label %while.cond.19

while.end:                                        ; preds = %land.end
  %48 = load i8*, i8** %p, align 8, !tbaa !1
  %49 = load i8, i8* %48, align 1, !tbaa !16
  %conv28 = zext i8 %49 to i32
  %50 = load i32, i32* %one, align 4, !tbaa !17
  %xor29 = xor i32 %conv28, %50
  %idxprom30 = zext i32 %xor29 to i64
  %arrayidx31 = getelementptr inbounds [256 x i8], [256 x i8]* @byte_bit_run_length_0, i32 0, i64 %idxprom30
  %51 = load i8, i8* %arrayidx31, align 1, !tbaa !16
  %conv32 = zext i8 %51 to i32
  store i32 %conv32, i32* %run, align 4, !tbaa !17
  %52 = load i32, i32* %run, align 4, !tbaa !17
  %53 = load i32, i32* %left, align 4, !tbaa !17
  %cmp33 = icmp sge i32 %52, %53
  br i1 %cmp33, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %while.end
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup

if.else.36:                                       ; preds = %while.end
  %54 = load i32, i32* %run, align 4, !tbaa !17
  %and37 = and i32 %54, 7
  store i32 %and37, i32* %bit, align 4, !tbaa !17
  %55 = load i32, i32* %run, align 4, !tbaa !17
  %56 = load i32, i32* %left, align 4, !tbaa !17
  %sub38 = sub nsw i32 %56, %55
  store i32 %sub38, i32* %left, align 4, !tbaa !17
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.36
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.end
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %while.body
  %57 = load i32, i32* %left, align 4, !tbaa !17
  store i32 %57, i32* %l0, align 4, !tbaa !17
  %58 = load i8*, i8** %p, align 8, !tbaa !1
  %59 = load i8, i8* %58, align 1, !tbaa !16
  %conv43 = zext i8 %59 to i32
  %60 = load i32, i32* %zero, align 4, !tbaa !17
  %xor44 = xor i32 %conv43, %60
  %idxprom45 = zext i32 %xor44 to i64
  %61 = load i32, i32* %bit, align 4, !tbaa !17
  %idxprom46 = sext i32 %61 to i64
  %arrayidx47 = getelementptr inbounds [8 x i8*], [8 x i8*]* @byte_bit_run_length, i32 0, i64 %idxprom46
  %62 = load i8*, i8** %arrayidx47, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds i8, i8* %62, i64 %idxprom45
  %63 = load i8, i8* %arrayidx48, align 1, !tbaa !16
  %conv49 = zext i8 %63 to i32
  store i32 %conv49, i32* %run, align 4, !tbaa !17
  %64 = load i32, i32* %run, align 4, !tbaa !17
  %cmp50 = icmp slt i32 %64, 8
  br i1 %cmp50, label %if.then.52, label %if.else.60

if.then.52:                                       ; preds = %if.end.42
  %65 = load i32, i32* %run, align 4, !tbaa !17
  %66 = load i32, i32* %left, align 4, !tbaa !17
  %cmp53 = icmp sge i32 %65, %66
  br i1 %cmp53, label %if.then.55, label %if.else.56

if.then.55:                                       ; preds = %if.then.52
  store i32 0, i32* %left, align 4, !tbaa !17
  br label %if.end.59

if.else.56:                                       ; preds = %if.then.52
  %67 = load i32, i32* %run, align 4, !tbaa !17
  %68 = load i32, i32* %bit, align 4, !tbaa !17
  %add57 = add nsw i32 %68, %67
  store i32 %add57, i32* %bit, align 4, !tbaa !17
  %69 = load i32, i32* %run, align 4, !tbaa !17
  %70 = load i32, i32* %left, align 4, !tbaa !17
  %sub58 = sub nsw i32 %70, %69
  store i32 %sub58, i32* %left, align 4, !tbaa !17
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.56, %if.then.55
  br label %if.end.93

if.else.60:                                       ; preds = %if.end.42
  %71 = load i32, i32* %run, align 4, !tbaa !17
  %sub61 = sub nsw i32 %71, 8
  store i32 %sub61, i32* %run, align 4, !tbaa !17
  %72 = load i32, i32* %left, align 4, !tbaa !17
  %cmp62 = icmp sge i32 %sub61, %72
  br i1 %cmp62, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %if.else.60
  store i32 0, i32* %left, align 4, !tbaa !17
  br label %if.end.92

if.else.65:                                       ; preds = %if.else.60
  %73 = load i32, i32* %run, align 4, !tbaa !17
  %74 = load i32, i32* %left, align 4, !tbaa !17
  %sub66 = sub nsw i32 %74, %73
  store i32 %sub66, i32* %left, align 4, !tbaa !17
  %75 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr67 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %incdec.ptr67, i8** %p, align 8, !tbaa !1
  br label %while.cond.68

while.cond.68:                                    ; preds = %while.body.76, %if.else.65
  %76 = load i32, i32* %left, align 4, !tbaa !17
  %cmp69 = icmp sgt i32 %76, 8
  br i1 %cmp69, label %land.rhs.71, label %land.end.75

land.rhs.71:                                      ; preds = %while.cond.68
  %77 = load i8*, i8** %p, align 8, !tbaa !1
  %78 = load i8, i8* %77, align 1, !tbaa !16
  %conv72 = zext i8 %78 to i32
  %79 = load i32, i32* %one, align 4, !tbaa !17
  %cmp73 = icmp eq i32 %conv72, %79
  br label %land.end.75

land.end.75:                                      ; preds = %land.rhs.71, %while.cond.68
  %80 = phi i1 [ false, %while.cond.68 ], [ %cmp73, %land.rhs.71 ]
  br i1 %80, label %while.body.76, label %while.end.79

while.body.76:                                    ; preds = %land.end.75
  %81 = load i32, i32* %left, align 4, !tbaa !17
  %sub77 = sub nsw i32 %81, 8
  store i32 %sub77, i32* %left, align 4, !tbaa !17
  %82 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr78 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %incdec.ptr78, i8** %p, align 8, !tbaa !1
  br label %while.cond.68

while.end.79:                                     ; preds = %land.end.75
  %83 = load i8*, i8** %p, align 8, !tbaa !1
  %84 = load i8, i8* %83, align 1, !tbaa !16
  %conv80 = zext i8 %84 to i32
  %85 = load i32, i32* %zero, align 4, !tbaa !17
  %xor81 = xor i32 %conv80, %85
  %idxprom82 = zext i32 %xor81 to i64
  %arrayidx83 = getelementptr inbounds [256 x i8], [256 x i8]* @byte_bit_run_length_0, i32 0, i64 %idxprom82
  %86 = load i8, i8* %arrayidx83, align 1, !tbaa !16
  %conv84 = zext i8 %86 to i32
  store i32 %conv84, i32* %run, align 4, !tbaa !17
  %87 = load i32, i32* %run, align 4, !tbaa !17
  %88 = load i32, i32* %left, align 4, !tbaa !17
  %cmp85 = icmp sge i32 %87, %88
  br i1 %cmp85, label %if.then.87, label %if.else.88

if.then.87:                                       ; preds = %while.end.79
  store i32 0, i32* %left, align 4, !tbaa !17
  br label %if.end.91

if.else.88:                                       ; preds = %while.end.79
  %89 = load i32, i32* %run, align 4, !tbaa !17
  %and89 = and i32 %89, 7
  store i32 %and89, i32* %bit, align 4, !tbaa !17
  %90 = load i32, i32* %run, align 4, !tbaa !17
  %91 = load i32, i32* %left, align 4, !tbaa !17
  %sub90 = sub nsw i32 %91, %90
  store i32 %sub90, i32* %left, align 4, !tbaa !17
  br label %if.end.91

if.end.91:                                        ; preds = %if.else.88, %if.then.87
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.then.64
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.end.59
  %92 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %92, i32 0, i32 0
  %93 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !5
  %fill_rectangle = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %93, i32 0, i32 5
  %94 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle, align 8, !tbaa !52
  %95 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %96 = load i32, i32* %x.addr, align 4, !tbaa !17
  %97 = load i32, i32* %w.addr, align 4, !tbaa !17
  %add94 = add nsw i32 %96, %97
  %98 = load i32, i32* %l0, align 4, !tbaa !17
  %sub95 = sub nsw i32 %add94, %98
  %99 = load i32, i32* %y.addr, align 4, !tbaa !17
  %100 = load i32, i32* %iy, align 4, !tbaa !17
  %add96 = add nsw i32 %99, %100
  %101 = load i32, i32* %l0, align 4, !tbaa !17
  %102 = load i32, i32* %left, align 4, !tbaa !17
  %sub97 = sub nsw i32 %101, %102
  %103 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %104 = load i32, i32* %lop.addr, align 4, !tbaa !17
  %call = call i32 %94(%struct.gx_device_color_s* %95, i32 %sub95, i32 %add96, i32 %sub97, i32 1, %struct.gx_device_s* %103, i32 %104, %struct.gx_rop_source_s* null) #3
  store i32 %call, i32* %code, align 4, !tbaa !17
  %105 = load i32, i32* %code, align 4, !tbaa !17
  %cmp98 = icmp slt i32 %105, 0
  br i1 %cmp98, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %if.end.93
  %106 = load i32, i32* %code, align 4, !tbaa !17
  store i32 %106, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.101:                                       ; preds = %if.end.93
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.101, %if.then.100, %if.then.35, %if.then.16, %if.then.12
  %107 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #1
  %108 = bitcast i32* %run to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.104 [
    i32 0, label %cleanup.cont
    i32 6, label %while.end.103
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end.103:                                    ; preds = %cleanup, %while.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.104

cleanup.104:                                      ; preds = %while.end.103, %cleanup
  %109 = bitcast i32* %l0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #1
  %110 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #1
  %111 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #1
  %112 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %112) #1
  %cleanup.dest.108 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.108, label %cleanup.112 [
    i32 0, label %cleanup.cont.109
  ]

cleanup.cont.109:                                 ; preds = %cleanup.104
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont.109
  %113 = load i32, i32* %iy, align 4, !tbaa !17
  %inc = add nsw i32 %113, 1
  store i32 %inc, i32* %iy, align 4, !tbaa !17
  %114 = load i32, i32* %raster.addr, align 4, !tbaa !17
  %115 = load i8*, i8** %row, align 8, !tbaa !1
  %idx.ext110 = sext i32 %114 to i64
  %add.ptr111 = getelementptr inbounds i8, i8* %115, i64 %idx.ext110
  store i8* %add.ptr111, i8** %row, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.112

cleanup.112:                                      ; preds = %for.end, %cleanup.104
  %116 = bitcast i32* %iy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #1
  %117 = bitcast i32* %zero to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #1
  %118 = bitcast i32* %one to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #1
  %119 = bitcast i8** %row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %119) #1
  %120 = bitcast i32* %lbit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #1
  %121 = load i32, i32* %retval
  ret i32 %121
}

; Function Attrs: nounwind uwtable
define i32 @gx_dc_write_color(i64 %color, %struct.gx_device_s* %dev, i8* %pdata, i32* %psize) #0 {
entry:
  %retval = alloca i32, align 4
  %color.addr = alloca i64, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pdata.addr = alloca i8*, align 8
  %psize.addr = alloca i32*, align 8
  %num_bytes = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i64 %color, i64* %color.addr, align 8, !tbaa !18
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %pdata, i8** %pdata.addr, align 8, !tbaa !1
  store i32* %psize, i32** %psize.addr, align 8, !tbaa !1
  %0 = bitcast i32* %num_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i64, i64* %color.addr, align 8, !tbaa !18
  %cmp = icmp eq i64 %1, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %num_bytes, align 4, !tbaa !17
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 9, i32* %num_bytes, align 4, !tbaa !17
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  %3 = load i32, i32* %2, align 4, !tbaa !17
  %4 = load i32, i32* %num_bytes, align 4, !tbaa !17
  %cmp1 = icmp ult i32 %3, %4
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %5 = load i32, i32* %num_bytes, align 4, !tbaa !17
  %6 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  store i32 %5, i32* %6, align 4, !tbaa !17
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %7 = load i32, i32* %num_bytes, align 4, !tbaa !17
  %8 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  store i32 %7, i32* %8, align 4, !tbaa !17
  %9 = load i64, i64* %color.addr, align 8, !tbaa !18
  %cmp4 = icmp eq i64 %9, -1
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.end.3
  %10 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  store i32 1, i32* %10, align 4, !tbaa !17
  %11 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  store i8 -1, i8* %11, align 1, !tbaa !16
  br label %if.end.8

if.else.6:                                        ; preds = %if.end.3
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else.6
  %12 = load i32, i32* %num_bytes, align 4, !tbaa !17
  %dec = add nsw i32 %12, -1
  store i32 %dec, i32* %num_bytes, align 4, !tbaa !17
  %cmp7 = icmp sge i32 %dec, 0
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load i64, i64* %color.addr, align 8, !tbaa !18
  %and = and i64 %13, 255
  %conv = trunc i64 %and to i8
  %14 = load i32, i32* %num_bytes, align 4, !tbaa !17
  %idxprom = sext i32 %14 to i64
  %15 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1, !tbaa !16
  %16 = load i64, i64* %color.addr, align 8, !tbaa !18
  %shr = lshr i64 %16, 8
  store i64 %shr, i64* %color.addr, align 8, !tbaa !18
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.8

if.end.8:                                         ; preds = %while.end, %if.then.5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.8, %if.then.2
  %17 = bitcast i32* %num_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define i32 @gx_dc_read_color(i64* %pcolor, %struct.gx_device_s* %dev, i8* %pdata, i32 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %pcolor.addr = alloca i64*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pdata.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %color = alloca i64, align 8
  %i = alloca i32, align 4
  %num_bytes = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i64* %pcolor, i64** %pcolor.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %pdata, i8** %pdata.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !17
  %0 = bitcast i64* %color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i64 0, i64* %color, align 8, !tbaa !18
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %num_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i32, i32* %size.addr, align 4, !tbaa !17
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !16
  %conv = zext i8 %5 to i32
  %cmp1 = icmp ne i32 %conv, 255
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %6 = load i32, i32* %size.addr, align 4, !tbaa !17
  %conv3 = sext i32 %6 to i64
  %cmp4 = icmp ult i64 %conv3, 8
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %7 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i8, i8* %7, i64 0
  %8 = load i8, i8* %arrayidx6, align 1, !tbaa !16
  %conv7 = zext i8 %8 to i32
  %cmp8 = icmp eq i32 %conv7, 255
  br i1 %cmp8, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end
  %9 = load i64*, i64** %pcolor.addr, align 8, !tbaa !1
  store i64 -1, i64* %9, align 8, !tbaa !18
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.end
  store i32 9, i32* %num_bytes, align 4, !tbaa !17
  br label %if.end.11

if.end.11:                                        ; preds = %if.else
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.11
  %10 = load i32, i32* %i, align 4, !tbaa !17
  %11 = load i32, i32* %num_bytes, align 4, !tbaa !17
  %cmp12 = icmp slt i32 %10, %11
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i64, i64* %color, align 8, !tbaa !18
  %shl = shl i64 %12, 8
  %13 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom = sext i32 %13 to i64
  %14 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i8, i8* %14, i64 %idxprom
  %15 = load i8, i8* %arrayidx14, align 1, !tbaa !16
  %conv15 = zext i8 %15 to i64
  %or = or i64 %shl, %conv15
  store i64 %or, i64* %color, align 8, !tbaa !18
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !tbaa !17
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i64, i64* %color, align 8, !tbaa !18
  %18 = load i64*, i64** %pcolor.addr, align 8, !tbaa !1
  store i64 %17, i64* %18, align 8, !tbaa !18
  %19 = load i32, i32* %num_bytes, align 4, !tbaa !17
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.10, %if.then
  %20 = bitcast i32* %num_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast i64* %color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #1
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @gx_devn_write_color(%struct.gx_device_color_s* %pdevc, %struct.gx_device_s* %dev, i8* %pdata, i32* %psize) #0 {
entry:
  %retval = alloca i32, align 4
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pdata.addr = alloca i8*, align 8
  %psize.addr = alloca i32*, align 8
  %num_bytes1 = alloca i32, align 4
  %num_bytes_temp = alloca i32, align 4
  %num_bytes = alloca i32, align 4
  %mask = alloca i64, align 8
  %mask_temp = alloca i64, align 8
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  %ncomps = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %pdata, i8** %pdata.addr, align 8, !tbaa !1
  store i32* %psize, i32** %psize.addr, align 8, !tbaa !1
  %0 = bitcast i32* %num_bytes1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %num_bytes_temp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %num_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i64* %mask to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i64* %mask_temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %9 = load i32, i32* %num_components, align 4, !tbaa !43
  store i32 %9, i32* %ncomps, align 4, !tbaa !17
  %10 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 @gx_dc_devn_get_nonzero_comps(%struct.gx_device_color_s* %10, %struct.gx_device_s* %11, i64* %mask) #3
  store i32 %call, i32* %count, align 4, !tbaa !17
  store i32 8, i32* %num_bytes1, align 4, !tbaa !17
  %12 = load i32, i32* %num_bytes1, align 4, !tbaa !17
  %13 = load i32, i32* %count, align 4, !tbaa !17
  %mul = mul nsw i32 %13, 2
  %add = add nsw i32 %12, %mul
  store i32 %add, i32* %num_bytes, align 4, !tbaa !17
  %14 = load i32, i32* %num_bytes1, align 4, !tbaa !17
  store i32 %14, i32* %num_bytes_temp, align 4, !tbaa !17
  %15 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  %16 = load i32, i32* %15, align 4, !tbaa !17
  %17 = load i32, i32* %num_bytes, align 4, !tbaa !17
  %cmp = icmp ult i32 %16, %17
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %18 = load i32, i32* %num_bytes, align 4, !tbaa !17
  %19 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  store i32 %18, i32* %19, align 4, !tbaa !17
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %20 = load i32, i32* %num_bytes, align 4, !tbaa !17
  %21 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  store i32 %20, i32* %21, align 4, !tbaa !17
  %22 = load i64, i64* %mask, align 8, !tbaa !18
  store i64 %22, i64* %mask_temp, align 8, !tbaa !18
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %23 = load i32, i32* %num_bytes1, align 4, !tbaa !17
  %dec = add nsw i32 %23, -1
  store i32 %dec, i32* %num_bytes1, align 4, !tbaa !17
  %cmp1 = icmp sge i32 %dec, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %24 = load i64, i64* %mask_temp, align 8, !tbaa !18
  %and = and i64 %24, 255
  %conv = trunc i64 %and to i8
  %25 = load i32, i32* %num_bytes1, align 4, !tbaa !17
  %idxprom = sext i32 %25 to i64
  %26 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %26, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1, !tbaa !16
  %27 = load i64, i64* %mask_temp, align 8, !tbaa !18
  %shr = lshr i64 %27, 8
  store i64 %shr, i64* %mask_temp, align 8, !tbaa !18
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %28 = load i32, i32* %i, align 4, !tbaa !17
  %29 = load i32, i32* %ncomps, align 4, !tbaa !17
  %cmp2 = icmp slt i32 %28, %29
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load i64, i64* %mask, align 8, !tbaa !18
  %and4 = and i64 %30, 1
  %tobool = icmp ne i64 %and4, 0
  br i1 %tobool, label %if.then.5, label %if.end.25

if.then.5:                                        ; preds = %for.body
  %31 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom6 = sext i32 %31 to i64
  %32 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %32, i32 0, i32 1
  %devn = bitcast %union._c* %colors to %struct._devn*
  %values = getelementptr inbounds %struct._devn, %struct._devn* %devn, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [64 x i16], [64 x i16]* %values, i32 0, i64 %idxprom6
  %33 = load i16, i16* %arrayidx7, align 2, !tbaa !44
  %conv8 = zext i16 %33 to i32
  %and9 = and i32 %conv8, 255
  %conv10 = trunc i32 %and9 to i8
  %34 = load i32, i32* %num_bytes_temp, align 4, !tbaa !17
  %idxprom11 = sext i32 %34 to i64
  %35 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i8, i8* %35, i64 %idxprom11
  store i8 %conv10, i8* %arrayidx12, align 1, !tbaa !16
  %36 = load i32, i32* %num_bytes_temp, align 4, !tbaa !17
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %num_bytes_temp, align 4, !tbaa !17
  %37 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom13 = sext i32 %37 to i64
  %38 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors14 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %38, i32 0, i32 1
  %devn15 = bitcast %union._c* %colors14 to %struct._devn*
  %values16 = getelementptr inbounds %struct._devn, %struct._devn* %devn15, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [64 x i16], [64 x i16]* %values16, i32 0, i64 %idxprom13
  %39 = load i16, i16* %arrayidx17, align 2, !tbaa !44
  %conv18 = zext i16 %39 to i32
  %shr19 = ashr i32 %conv18, 8
  %and20 = and i32 %shr19, 255
  %conv21 = trunc i32 %and20 to i8
  %40 = load i32, i32* %num_bytes_temp, align 4, !tbaa !17
  %idxprom22 = sext i32 %40 to i64
  %41 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i8, i8* %41, i64 %idxprom22
  store i8 %conv21, i8* %arrayidx23, align 1, !tbaa !16
  %42 = load i32, i32* %num_bytes_temp, align 4, !tbaa !17
  %inc24 = add nsw i32 %42, 1
  store i32 %inc24, i32* %num_bytes_temp, align 4, !tbaa !17
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.5, %for.body
  %43 = load i64, i64* %mask, align 8, !tbaa !18
  %shr26 = lshr i64 %43, 1
  store i64 %shr26, i64* %mask, align 8, !tbaa !18
  br label %for.inc

for.inc:                                          ; preds = %if.end.25
  %44 = load i32, i32* %i, align 4, !tbaa !17
  %inc27 = add nsw i32 %44, 1
  store i32 %inc27, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %45 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = bitcast i64* %mask_temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = bitcast i64* %mask to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = bitcast i32* %num_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = bitcast i32* %num_bytes_temp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast i32* %num_bytes1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = load i32, i32* %retval
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_devn_read_color(i16* %values, %struct.gx_device_s* %dev, i8* %pdata, i32 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %values.addr = alloca i16*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pdata.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %mask = alloca i64, align 8
  %i = alloca i32, align 4
  %ncomps = alloca i32, align 4
  %pos = alloca i32, align 4
  %num_bytes = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i16* %values, i16** %values.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %pdata, i8** %pdata.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !17
  %0 = bitcast i64* %mask to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i64 0, i64* %mask, align 8, !tbaa !18
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %4 = load i32, i32* %num_components, align 4, !tbaa !43
  store i32 %4, i32* %ncomps, align 4, !tbaa !17
  %5 = bitcast i32* %pos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %num_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i32, i32* %size.addr, align 4, !tbaa !17
  %cmp = icmp slt i32 %7, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %i, align 4, !tbaa !17
  %conv = sext i32 %8 to i64
  %cmp1 = icmp ult i64 %conv, 8
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i64, i64* %mask, align 8, !tbaa !18
  %shl = shl i64 %9, 8
  %10 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom = sext i32 %10 to i64
  %11 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %idxprom
  %12 = load i8, i8* %arrayidx, align 1, !tbaa !16
  %conv3 = zext i8 %12 to i64
  %or = or i64 %shl, %conv3
  store i64 %or, i64* %mask, align 8, !tbaa !18
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !tbaa !17
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4, !tbaa !17
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* %i, align 4, !tbaa !17
  store i32 %14, i32* %pos, align 4, !tbaa !17
  %15 = load i32, i32* %i, align 4, !tbaa !17
  store i32 %15, i32* %num_bytes, align 4, !tbaa !17
  store i32 0, i32* %i, align 4, !tbaa !17
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.28, %for.end
  %16 = load i32, i32* %i, align 4, !tbaa !17
  %17 = load i32, i32* %ncomps, align 4, !tbaa !17
  %cmp5 = icmp slt i32 %16, %17
  br i1 %cmp5, label %for.body.7, label %for.end.30

for.body.7:                                       ; preds = %for.cond.4
  %18 = load i64, i64* %mask, align 8, !tbaa !18
  %and = and i64 %18, 1
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %for.body.7
  %19 = load i32, i32* %pos, align 4, !tbaa !17
  %idxprom9 = sext i32 %19 to i64
  %20 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i8, i8* %20, i64 %idxprom9
  %21 = load i8, i8* %arrayidx10, align 1, !tbaa !16
  %conv11 = zext i8 %21 to i16
  %22 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom12 = sext i32 %22 to i64
  %23 = load i16*, i16** %values.addr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i16, i16* %23, i64 %idxprom12
  store i16 %conv11, i16* %arrayidx13, align 2, !tbaa !44
  %24 = load i32, i32* %pos, align 4, !tbaa !17
  %inc14 = add nsw i32 %24, 1
  store i32 %inc14, i32* %pos, align 4, !tbaa !17
  %25 = load i32, i32* %pos, align 4, !tbaa !17
  %idxprom15 = sext i32 %25 to i64
  %26 = load i8*, i8** %pdata.addr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i8, i8* %26, i64 %idxprom15
  %27 = load i8, i8* %arrayidx16, align 1, !tbaa !16
  %conv17 = zext i8 %27 to i32
  %shl18 = shl i32 %conv17, 8
  %28 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom19 = sext i32 %28 to i64
  %29 = load i16*, i16** %values.addr, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds i16, i16* %29, i64 %idxprom19
  %30 = load i16, i16* %arrayidx20, align 2, !tbaa !44
  %conv21 = zext i16 %30 to i32
  %add = add nsw i32 %conv21, %shl18
  %conv22 = trunc i32 %add to i16
  store i16 %conv22, i16* %arrayidx20, align 2, !tbaa !44
  %31 = load i32, i32* %pos, align 4, !tbaa !17
  %inc23 = add nsw i32 %31, 1
  store i32 %inc23, i32* %pos, align 4, !tbaa !17
  %32 = load i32, i32* %num_bytes, align 4, !tbaa !17
  %add24 = add nsw i32 %32, 2
  store i32 %add24, i32* %num_bytes, align 4, !tbaa !17
  br label %if.end.27

if.else:                                          ; preds = %for.body.7
  %33 = load i32, i32* %i, align 4, !tbaa !17
  %idxprom25 = sext i32 %33 to i64
  %34 = load i16*, i16** %values.addr, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i16, i16* %34, i64 %idxprom25
  store i16 0, i16* %arrayidx26, align 2, !tbaa !44
  br label %if.end.27

if.end.27:                                        ; preds = %if.else, %if.then.8
  %35 = load i64, i64* %mask, align 8, !tbaa !18
  %shr = lshr i64 %35, 1
  store i64 %shr, i64* %mask, align 8, !tbaa !18
  br label %for.inc.28

for.inc.28:                                       ; preds = %if.end.27
  %36 = load i32, i32* %i, align 4, !tbaa !17
  %inc29 = add nsw i32 %36, 1
  store i32 %inc29, i32* %i, align 4, !tbaa !17
  br label %for.cond.4

for.end.30:                                       ; preds = %for.cond.4
  %37 = load i32, i32* %num_bytes, align 4, !tbaa !17
  store i32 %37, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.30, %if.then
  %38 = bitcast i32* %num_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast i32* %pos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = bitcast i64* %mask to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  %43 = load i32, i32* %retval
  ret i32 %43
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin }
attributes #4 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 0}
!6 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !7, i64 352, !8, i64 360, !9, i64 368, !11, i64 632}
!7 = !{!"gs_int_point_s", !8, i64 0, !8, i64 4}
!8 = !{!"int", !3, i64 0}
!9 = !{!"gs_client_color_s", !2, i64 0, !10, i64 8}
!10 = !{!"gs_paint_color_s", !3, i64 0}
!11 = !{!"_mask", !12, i64 0, !13, i64 8, !2, i64 16}
!12 = !{!"mp_", !8, i64 0, !8, i64 4}
!13 = !{!"long", !3, i64 0}
!14 = !{!15, !2, i64 0}
!15 = !{!"gx_device_color_saved_s", !2, i64 0, !3, i64 8, !7, i64 336}
!16 = !{!3, !3, i64 0}
!17 = !{!8, !8, i64 0}
!18 = !{!13, !13, i64 0}
!19 = !{!6, !8, i64 360}
!20 = !{!21, !2, i64 1200}
!21 = !{!"gx_device_s", !8, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !8, i64 40, !2, i64 48, !22, i64 56, !8, i64 80, !8, i64 84, !8, i64 88, !23, i64 96, !26, i64 816, !8, i64 832, !8, i64 836, !8, i64 840, !8, i64 844, !8, i64 848, !8, i64 852, !3, i64 856, !3, i64 864, !8, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !13, i64 928, !13, i64 936, !8, i64 944, !8, i64 948, !8, i64 952, !8, i64 956, !8, i64 960, !13, i64 968, !13, i64 976, !27, i64 984, !8, i64 1052, !8, i64 1056, !28, i64 1064, !2, i64 1104, !3, i64 1112, !30, i64 1120, !31, i64 1144}
!22 = !{!"rc_header_s", !13, i64 0, !2, i64 8, !2, i64 16}
!23 = !{!"gx_device_color_info_s", !8, i64 0, !8, i64 4, !3, i64 8, !24, i64 12, !3, i64 14, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !25, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !13, i64 704, !8, i64 712}
!24 = !{!"short", !3, i64 0}
!25 = !{!"gx_device_anti_alias_info_s", !8, i64 0, !8, i64 4}
!26 = !{!"gx_device_cached_colors_s", !13, i64 0, !13, i64 8}
!27 = !{!"gx_stroked_gradient_recognizer_s", !8, i64 0, !3, i64 4, !3, i64 36}
!28 = !{!"gdev_space_params_s", !13, i64 0, !13, i64 8, !29, i64 16, !8, i64 32, !3, i64 36}
!29 = !{!"gx_band_params_s", !8, i64 0, !8, i64 4, !13, i64 8}
!30 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!31 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!32 = !{!33, !8, i64 40}
!33 = !{!"gx_rop_source_s", !2, i64 0, !8, i64 8, !8, i64 12, !13, i64 16, !3, i64 24, !8, i64 40, !8, i64 44}
!34 = !{!21, !2, i64 1424}
!35 = !{!33, !2, i64 0}
!36 = !{!33, !8, i64 8}
!37 = !{!33, !8, i64 12}
!38 = !{!33, !13, i64 16}
!39 = !{!33, !8, i64 44}
!40 = !{!21, !2, i64 1696}
!41 = !{!21, !2, i64 1216}
!42 = !{!21, !2, i64 1560}
!43 = !{!21, !8, i64 100}
!44 = !{!24, !24, i64 0}
!45 = !{!46, !8, i64 0}
!46 = !{!"gs_fixed_rect_s", !47, i64 0, !47, i64 8}
!47 = !{!"gs_fixed_point_s", !8, i64 0, !8, i64 4}
!48 = !{!46, !8, i64 4}
!49 = !{!46, !8, i64 8}
!50 = !{!46, !8, i64 12}
!51 = !{!21, !2, i64 1576}
!52 = !{!53, !2, i64 40}
!53 = !{!"gx_device_color_type_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80}
!54 = !{!21, !13, i64 816}
!55 = !{!21, !2, i64 1536}
!56 = !{!57, !2, i64 0}
!57 = !{!"gx_cm_color_map_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!58 = !{!21, !2, i64 1552}
!59 = !{!21, !13, i64 824}
!60 = !{i64 0, i64 8, !1, i64 8, i64 4, !17, i64 12, i64 4, !17, i64 16, i64 8, !18, i64 24, i64 16, !16, i64 40, i64 4, !17, i64 44, i64 4, !17}
!61 = !{!53, !2, i64 56}
!62 = !{i64 0, i64 4, !17, i64 4, i64 4, !17}
!63 = !{!64, !2, i64 0}
!64 = !{!"_col", !2, i64 0, !24, i64 8, !3, i64 10, !3, i64 76, !24, i64 332, !13, i64 336}
!65 = !{!64, !24, i64 8}
!66 = !{!64, !24, i64 332}
!67 = !{!64, !13, i64 336}
