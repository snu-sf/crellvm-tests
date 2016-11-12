; ModuleID = './gdevmr8n.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, {}*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gx_tile_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16 }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gx_xfont_procs_s = type opaque
%struct.gs_imager_state_s = type opaque
%struct.gx_path_s = type opaque
%struct.gx_fill_params_s = type opaque
%struct.gx_device_color_s = type { %struct.gx_device_color_type_s*, %union._c, %struct.gs_int_point_s, i32, %struct.gs_client_color_s, %struct._mask }
%struct.gx_device_color_type_s = type { %struct.gs_memory_struct_type_s*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* }
%struct.gx_device_color_saved_s = type { %struct.gx_device_color_type_s*, %union._svc, %struct.gs_int_point_s }
%union._svc = type { %struct._svbin, [304 x i8] }
%struct._svbin = type { [2 x i64], i32, i32 }
%struct.gx_device_halftone_s = type opaque
%struct.gx_rop_source_s = type { i8*, i32, i32, i64, [2 x i64], i32, i32 }
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
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
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gx_device_memory_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, i32, i8*, %struct.gs_memory_s*, i32, %struct.gs_memory_s*, i32, [64 x %struct.gx_render_plane_s], %struct.gs_matrix_s, i8**, %struct.gs_const_string_s, %struct._c24, %struct._c40, %struct._c48, %struct._c56, %struct._c64, %struct.gs_log2_scale_point_s, i32, i32, i32, i32, i32, i64, %struct.gx_device_color_s*, i32, i32 }
%struct.gx_render_plane_s = type { i32, i32, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%struct._c24 = type { i64, i32, i32, i32 }
%struct._c40 = type { i64, i32, i32, i32, i32, i32 }
%struct._c48 = type { i64, i32, i32, i32 }
%struct._c56 = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct._c64 = type { i64, i32, i32 }

@rop_proc_table = external constant [256 x i64 (i64, i64, i64)*], align 16

; Function Attrs: nounwind uwtable
define i32 @mem_gray8_rgb24_strip_copy_rop(%struct.gx_device_s* %dev, i8* %sdata, i32 %sourcex, i32 %sraster, i64 %id, i64* %scolors, %struct.gx_strip_bitmap_s* %textures, i64* %tcolors, i32 %x, i32 %y, i32 %width, i32 %height, i32 %phase_x, i32 %phase_y, i32 %lop) #0 {
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
  %mdev = alloca %struct.gx_device_memory_s*, align 8
  %rop = alloca i32, align 4
  %const_source = alloca i64, align 8
  %const_texture = alloca i64, align 8
  %draster = alloca i32, align 4
  %line_count = alloca i32, align 4
  %drow = alloca i8*, align 8
  %base = alloca i8*, align 8
  %depth = alloca i32, align 4
  %bpp = alloca i32, align 4
  %all_ones = alloca i64, align 8
  %strans = alloca i64, align 8
  %ttrans = alloca i64, align 8
  %bw_pixel = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %dptr = alloca i8*, align 8
  %left = alloca i32, align 4
  %d_pixel = alloca i64, align 8
  %srow = alloca i8*, align 8
  %dptr312 = alloca i8*, align 8
  %left313 = alloca i32, align 4
  %sx = alloca i32, align 4
  %s_pixel = alloca i8, align 1
  %s_pixel375 = alloca i32, align 4
  %d_pixel402 = alloca i64, align 8
  %sptr = alloca i8*, align 8
  %s_pixel445 = alloca i8, align 1
  %sptr476 = alloca i8*, align 8
  %s_pixel484 = alloca i32, align 4
  %d_pixel507 = alloca i64, align 8
  %traster = alloca i32, align 4
  %ty = alloca i32, align 4
  %dx = alloca i32, align 4
  %w = alloca i32, align 4
  %nw = alloca i32, align 4
  %dptr559 = alloca i8*, align 8
  %trow = alloca i8*, align 8
  %xoff = alloca i32, align 4
  %tx = alloca i32, align 4
  %left582 = alloca i32, align 4
  %tptr = alloca i8*, align 8
  %t_pixel = alloca i8, align 1
  %t_pixel657 = alloca i32, align 4
  %d_pixel684 = alloca i64, align 8
  %t_pixel727 = alloca i8, align 1
  %t_pixel765 = alloca i32, align 4
  %d_pixel788 = alloca i64, align 8
  %traster832 = alloca i32, align 4
  %ty834 = alloca i32, align 4
  %srow836 = alloca i8*, align 8
  %sx842 = alloca i32, align 4
  %dx843 = alloca i32, align 4
  %w844 = alloca i32, align 4
  %nw845 = alloca i32, align 4
  %dptr846 = alloca i8*, align 8
  %trow847 = alloca i8*, align 8
  %xoff855 = alloca i32, align 4
  %tx875 = alloca i32, align 4
  %left880 = alloca i32, align 4
  %tptr893 = alloca i8*, align 8
  %sptr897 = alloca i8*, align 8
  %s_pixel906 = alloca i8, align 1
  %t_pixel932 = alloca i8, align 1
  %sptr990 = alloca i8*, align 8
  %s_pixel1001 = alloca i32, align 4
  %t_pixel1032 = alloca i32, align 4
  %d_pixel1075 = alloca i64, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %sdata, i8** %sdata.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 %sraster, i32* %sraster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !7
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
  %0 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %2, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %3 = bitcast i32* %rop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %and = and i32 %4, 255
  store i32 %and, i32* %rop, align 4, !tbaa !9
  %5 = bitcast i64* %const_source to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store i64 -1, i64* %const_source, align 8, !tbaa !7
  %6 = bitcast i64* %const_texture to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  store i64 -1, i64* %const_texture, align 8, !tbaa !7
  %7 = bitcast i32* %draster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %8, i32 0, i32 44
  %9 = load i32, i32* %raster, align 4, !tbaa !10
  store i32 %9, i32* %draster, align 4, !tbaa !5
  %10 = bitcast i32* %line_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i8** %drow to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i8** %base to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %14, i32 0, i32 11
  %depth1 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %15 = load i16, i16* %depth1, align 2, !tbaa !31
  %conv = zext i16 %15 to i32
  store i32 %conv, i32* %depth, align 4, !tbaa !5
  %16 = bitcast i32* %bpp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load i32, i32* %depth, align 4, !tbaa !5
  %shr = ashr i32 %17, 3
  store i32 %shr, i32* %bpp, align 4, !tbaa !5
  %18 = bitcast i64* %all_ones to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = load i32, i32* %depth, align 4, !tbaa !5
  %sh_prom = zext i32 %19 to i64
  %shl = shl i64 1, %sh_prom
  %sub = sub i64 %shl, 1
  store i64 %sub, i64* %all_ones, align 8, !tbaa !7
  %20 = bitcast i64* %strans to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %and2 = and i32 %21, 256
  %tobool = icmp ne i32 %and2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %22 = load i64, i64* %all_ones, align 8, !tbaa !7
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %22, %cond.true ], [ -1, %cond.false ]
  store i64 %cond, i64* %strans, align 8, !tbaa !7
  %23 = bitcast i64* %ttrans to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  %24 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %and3 = and i32 %24, 512
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %cond.end
  %25 = load i64, i64* %all_ones, align 8, !tbaa !7
  br label %cond.end.7

cond.false.6:                                     ; preds = %cond.end
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.false.6, %cond.true.5
  %cond8 = phi i64 [ %25, %cond.true.5 ], [ -1, %cond.false.6 ]
  store i64 %cond8, i64* %ttrans, align 8, !tbaa !7
  %26 = load i32, i32* %rop, align 4, !tbaa !9
  %shl9 = shl i32 %26, 2
  %27 = load i32, i32* %rop, align 4, !tbaa !9
  %xor = xor i32 %shl9, %27
  %and10 = and i32 %xor, 204
  %cmp = icmp ne i32 %and10, 0
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %cond.end.7
  store i64 0, i64* %const_source, align 8, !tbaa !7
  br label %if.end.36

if.else:                                          ; preds = %cond.end.7
  %28 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %cmp12 = icmp ne i64* %28, null
  br i1 %cmp12, label %land.lhs.true, label %if.end.35

land.lhs.true:                                    ; preds = %if.else
  %29 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %29, i64 0
  %30 = load i64, i64* %arrayidx, align 8, !tbaa !7
  %31 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds i64, i64* %31, i64 1
  %32 = load i64, i64* %arrayidx14, align 8, !tbaa !7
  %cmp15 = icmp eq i64 %30, %32
  br i1 %cmp15, label %if.then.17, label %if.end.35

if.then.17:                                       ; preds = %land.lhs.true
  %33 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i64, i64* %33, i64 0
  %34 = load i64, i64* %arrayidx18, align 8, !tbaa !7
  store i64 %34, i64* %const_source, align 8, !tbaa !7
  %35 = load i64, i64* %const_source, align 8, !tbaa !7
  %36 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i64 @gx_device_black(%struct.gx_device_s* %36) #3
  %cmp19 = icmp eq i64 %35, %call
  br i1 %cmp19, label %if.then.21, label %if.else.25

if.then.21:                                       ; preds = %if.then.17
  %37 = load i32, i32* %rop, align 4, !tbaa !9
  %and22 = and i32 %37, 51
  %shl23 = shl i32 %and22, 2
  %38 = load i32, i32* %rop, align 4, !tbaa !9
  %and24 = and i32 %38, -205
  %or = or i32 %shl23, %and24
  store i32 %or, i32* %rop, align 4, !tbaa !9
  br label %if.end.34

if.else.25:                                       ; preds = %if.then.17
  %39 = load i64, i64* %const_source, align 8, !tbaa !7
  %40 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call26 = call i64 @gx_device_white(%struct.gx_device_s* %40) #3
  %cmp27 = icmp eq i64 %39, %call26
  br i1 %cmp27, label %if.then.29, label %if.end

if.then.29:                                       ; preds = %if.else.25
  %41 = load i32, i32* %rop, align 4, !tbaa !9
  %and30 = and i32 %41, 204
  %shr31 = lshr i32 %and30, 2
  %42 = load i32, i32* %rop, align 4, !tbaa !9
  %and32 = and i32 %42, -52
  %or33 = or i32 %shr31, %and32
  store i32 %or33, i32* %rop, align 4, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then.29, %if.else.25
  br label %if.end.34

if.end.34:                                        ; preds = %if.end, %if.then.21
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %land.lhs.true, %if.else
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then
  %43 = load i32, i32* %rop, align 4, !tbaa !9
  %shl37 = shl i32 %43, 4
  %44 = load i32, i32* %rop, align 4, !tbaa !9
  %xor38 = xor i32 %shl37, %44
  %and39 = and i32 %xor38, 240
  %cmp40 = icmp ne i32 %and39, 0
  br i1 %cmp40, label %if.else.43, label %if.then.42

if.then.42:                                       ; preds = %if.end.36
  store i64 0, i64* %const_texture, align 8, !tbaa !7
  br label %if.end.73

if.else.43:                                       ; preds = %if.end.36
  %45 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %cmp44 = icmp ne i64* %45, null
  br i1 %cmp44, label %land.lhs.true.46, label %if.end.72

land.lhs.true.46:                                 ; preds = %if.else.43
  %46 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %arrayidx47 = getelementptr inbounds i64, i64* %46, i64 0
  %47 = load i64, i64* %arrayidx47, align 8, !tbaa !7
  %48 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds i64, i64* %48, i64 1
  %49 = load i64, i64* %arrayidx48, align 8, !tbaa !7
  %cmp49 = icmp eq i64 %47, %49
  br i1 %cmp49, label %if.then.51, label %if.end.72

if.then.51:                                       ; preds = %land.lhs.true.46
  %50 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %arrayidx52 = getelementptr inbounds i64, i64* %50, i64 0
  %51 = load i64, i64* %arrayidx52, align 8, !tbaa !7
  store i64 %51, i64* %const_texture, align 8, !tbaa !7
  %52 = load i64, i64* %const_texture, align 8, !tbaa !7
  %53 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call53 = call i64 @gx_device_black(%struct.gx_device_s* %53) #3
  %cmp54 = icmp eq i64 %52, %call53
  br i1 %cmp54, label %if.then.56, label %if.else.61

if.then.56:                                       ; preds = %if.then.51
  %54 = load i32, i32* %rop, align 4, !tbaa !9
  %and57 = and i32 %54, 15
  %shl58 = shl i32 %and57, 4
  %55 = load i32, i32* %rop, align 4, !tbaa !9
  %and59 = and i32 %55, -241
  %or60 = or i32 %shl58, %and59
  store i32 %or60, i32* %rop, align 4, !tbaa !9
  br label %if.end.71

if.else.61:                                       ; preds = %if.then.51
  %56 = load i64, i64* %const_texture, align 8, !tbaa !7
  %57 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call62 = call i64 @gx_device_white(%struct.gx_device_s* %57) #3
  %cmp63 = icmp eq i64 %56, %call62
  br i1 %cmp63, label %if.then.65, label %if.end.70

if.then.65:                                       ; preds = %if.else.61
  %58 = load i32, i32* %rop, align 4, !tbaa !9
  %and66 = and i32 %58, 240
  %shr67 = lshr i32 %and66, 4
  %59 = load i32, i32* %rop, align 4, !tbaa !9
  %and68 = and i32 %59, -16
  %or69 = or i32 %shr67, %and68
  store i32 %or69, i32* %rop, align 4, !tbaa !9
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.65, %if.else.61
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.then.56
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %land.lhs.true.46, %if.else.43
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.then.42
  %60 = load i32, i32* %bpp, align 4, !tbaa !5
  %cmp74 = icmp eq i32 %60, 1
  br i1 %cmp74, label %land.lhs.true.76, label %if.end.117

land.lhs.true.76:                                 ; preds = %if.end.73
  %61 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info77 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %61, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info77, i32 0, i32 1
  %62 = load i32, i32* %num_components, align 4, !tbaa !33
  %cmp78 = icmp sgt i32 %62, 1
  br i1 %cmp78, label %if.then.92, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.76
  %63 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info80 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %63, i32 0, i32 11
  %gray_index = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info80, i32 0, i32 4
  %64 = load i8, i8* %gray_index, align 1, !tbaa !34
  %conv81 = zext i8 %64 to i32
  %cmp82 = icmp eq i32 %conv81, 255
  br i1 %cmp82, label %if.then.92, label %lor.lhs.false.84

lor.lhs.false.84:                                 ; preds = %lor.lhs.false
  %65 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call85 = call i64 @gx_device_black(%struct.gx_device_s* %65) #3
  %cmp86 = icmp ne i64 %call85, 0
  br i1 %cmp86, label %if.then.92, label %lor.lhs.false.88

lor.lhs.false.88:                                 ; preds = %lor.lhs.false.84
  %66 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call89 = call i64 @gx_device_white(%struct.gx_device_s* %66) #3
  %67 = load i64, i64* %all_ones, align 8, !tbaa !7
  %cmp90 = icmp ne i64 %call89, %67
  br i1 %cmp90, label %if.then.92, label %if.end.117

if.then.92:                                       ; preds = %lor.lhs.false.88, %lor.lhs.false.84, %lor.lhs.false, %land.lhs.true.76
  %68 = bitcast i64* %bw_pixel to i8*
  call void @llvm.lifetime.start(i64 8, i8* %68) #1
  %69 = load i32, i32* %rop, align 4, !tbaa !9
  switch i32 %69, label %sw.default [
    i32 0, label %sw.bb
    i32 255, label %sw.bb.94
    i32 170, label %sw.epilog
    i32 204, label %sw.bb.106
    i32 240, label %sw.bb.111
  ]

sw.bb:                                            ; preds = %if.then.92
  %70 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call93 = call i64 @gx_device_black(%struct.gx_device_s* %70) #3
  store i64 %call93, i64* %bw_pixel, align 8, !tbaa !7
  br label %bw

sw.bb.94:                                         ; preds = %if.then.92
  %71 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call95 = call i64 @gx_device_white(%struct.gx_device_s* %71) #3
  store i64 %call95, i64* %bw_pixel, align 8, !tbaa !7
  br label %bw

bw:                                               ; preds = %sw.bb.94, %sw.bb
  %72 = load i64, i64* %bw_pixel, align 8, !tbaa !7
  %cmp96 = icmp eq i64 %72, 0
  br i1 %cmp96, label %if.then.98, label %if.else.99

if.then.98:                                       ; preds = %bw
  store i32 0, i32* %rop, align 4, !tbaa !9
  br label %if.end.105

if.else.99:                                       ; preds = %bw
  %73 = load i64, i64* %bw_pixel, align 8, !tbaa !7
  %cmp100 = icmp eq i64 %73, 255
  br i1 %cmp100, label %if.then.102, label %if.else.103

if.then.102:                                      ; preds = %if.else.99
  store i32 255, i32* %rop, align 4, !tbaa !9
  br label %if.end.104

if.else.103:                                      ; preds = %if.else.99
  br label %df

if.end.104:                                       ; preds = %if.then.102
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %if.then.98
  br label %sw.epilog

sw.bb.106:                                        ; preds = %if.then.92
  %74 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %and107 = and i32 %74, 256
  %tobool108 = icmp ne i32 %and107, 0
  br i1 %tobool108, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %sw.bb.106
  br label %df

if.end.110:                                       ; preds = %sw.bb.106
  br label %sw.epilog

sw.bb.111:                                        ; preds = %if.then.92
  %75 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %and112 = and i32 %75, 512
  %tobool113 = icmp ne i32 %and112, 0
  br i1 %tobool113, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %sw.bb.111
  br label %df

if.end.115:                                       ; preds = %sw.bb.111
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.92
  br label %df

df:                                               ; preds = %sw.default, %if.then.114, %if.then.109, %if.else.103
  %76 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %77 = load i8*, i8** %sdata.addr, align 8, !tbaa !1
  %78 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %79 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %80 = load i64, i64* %id.addr, align 8, !tbaa !7
  %81 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %82 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %83 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %84 = load i32, i32* %x.addr, align 4, !tbaa !5
  %85 = load i32, i32* %y.addr, align 4, !tbaa !5
  %86 = load i32, i32* %width.addr, align 4, !tbaa !5
  %87 = load i32, i32* %height.addr, align 4, !tbaa !5
  %88 = load i32, i32* %phase_x.addr, align 4, !tbaa !5
  %89 = load i32, i32* %phase_y.addr, align 4, !tbaa !5
  %90 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call116 = call i32 @mem_default_strip_copy_rop(%struct.gx_device_s* %76, i8* %77, i32 %78, i32 %79, i64 %80, i64* %81, %struct.gx_strip_bitmap_s* %82, i64* %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 %88, i32 %89, i32 %90) #3
  store i32 %call116, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.115, %if.end.110, %if.then.92, %if.end.105
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %df
  %91 = bitcast i64* %bw_pixel to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.1126 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.117

if.end.117:                                       ; preds = %cleanup.cont, %lor.lhs.false.88, %if.end.73
  %92 = load i64, i64* %const_source, align 8, !tbaa !7
  %cmp118 = icmp eq i64 %92, -1
  br i1 %cmp118, label %if.then.120, label %if.else.162

if.then.120:                                      ; preds = %if.end.117
  br label %do.body

do.body:                                          ; preds = %if.then.120
  br label %do.body.121

do.body.121:                                      ; preds = %do.body
  %93 = load i32, i32* %x.addr, align 4, !tbaa !5
  %94 = load i32, i32* %y.addr, align 4, !tbaa !5
  %or122 = or i32 %93, %94
  %cmp123 = icmp slt i32 %or122, 0
  br i1 %cmp123, label %if.then.125, label %if.end.136

if.then.125:                                      ; preds = %do.body.121
  %95 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp126 = icmp slt i32 %95, 0
  br i1 %cmp126, label %if.then.128, label %if.end.130

if.then.128:                                      ; preds = %if.then.125
  %96 = load i32, i32* %x.addr, align 4, !tbaa !5
  %97 = load i32, i32* %width.addr, align 4, !tbaa !5
  %add = add nsw i32 %97, %96
  store i32 %add, i32* %width.addr, align 4, !tbaa !5
  %98 = load i32, i32* %x.addr, align 4, !tbaa !5
  %99 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %sub129 = sub nsw i32 %99, %98
  store i32 %sub129, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 0, i32* %x.addr, align 4, !tbaa !5
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.128, %if.then.125
  %100 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp131 = icmp slt i32 %100, 0
  br i1 %cmp131, label %if.then.133, label %if.end.135

if.then.133:                                      ; preds = %if.end.130
  %101 = load i32, i32* %y.addr, align 4, !tbaa !5
  %102 = load i32, i32* %height.addr, align 4, !tbaa !5
  %add134 = add nsw i32 %102, %101
  store i32 %add134, i32* %height.addr, align 4, !tbaa !5
  %103 = load i32, i32* %y.addr, align 4, !tbaa !5
  %104 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %mul = mul i32 %103, %104
  %105 = load i8*, i8** %sdata.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %mul to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %105, i64 %idx.neg
  store i8* %add.ptr, i8** %sdata.addr, align 8, !tbaa !1
  store i64 0, i64* %id.addr, align 8, !tbaa !7
  store i32 0, i32* %y.addr, align 4, !tbaa !5
  br label %if.end.135

if.end.135:                                       ; preds = %if.then.133, %if.end.130
  br label %if.end.136

if.end.136:                                       ; preds = %if.end.135, %do.body.121
  %106 = load i32, i32* %width.addr, align 4, !tbaa !5
  %107 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width137 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %107, i32 0, i32 13
  %108 = load i32, i32* %width137, align 4, !tbaa !35
  %109 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub138 = sub nsw i32 %108, %109
  %cmp139 = icmp sgt i32 %106, %sub138
  br i1 %cmp139, label %if.then.141, label %if.end.144

if.then.141:                                      ; preds = %if.end.136
  %110 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width142 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %110, i32 0, i32 13
  %111 = load i32, i32* %width142, align 4, !tbaa !35
  %112 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub143 = sub nsw i32 %111, %112
  store i32 %sub143, i32* %width.addr, align 4, !tbaa !5
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.141, %if.end.136
  br label %do.cond

do.cond:                                          ; preds = %if.end.144
  br label %do.end

do.end:                                           ; preds = %do.cond
  %113 = load i32, i32* %height.addr, align 4, !tbaa !5
  %114 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height145 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %114, i32 0, i32 14
  %115 = load i32, i32* %height145, align 4, !tbaa !36
  %116 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub146 = sub nsw i32 %115, %116
  %cmp147 = icmp sgt i32 %113, %sub146
  br i1 %cmp147, label %if.then.149, label %if.end.152

if.then.149:                                      ; preds = %do.end
  %117 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height150 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %117, i32 0, i32 14
  %118 = load i32, i32* %height150, align 4, !tbaa !36
  %119 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub151 = sub nsw i32 %118, %119
  store i32 %sub151, i32* %height.addr, align 4, !tbaa !5
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.149, %do.end
  %120 = load i32, i32* %width.addr, align 4, !tbaa !5
  %cmp153 = icmp sle i32 %120, 0
  br i1 %cmp153, label %if.then.158, label %lor.lhs.false.155

lor.lhs.false.155:                                ; preds = %if.end.152
  %121 = load i32, i32* %height.addr, align 4, !tbaa !5
  %cmp156 = icmp sle i32 %121, 0
  br i1 %cmp156, label %if.then.158, label %if.end.159

if.then.158:                                      ; preds = %lor.lhs.false.155, %if.end.152
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1126

if.end.159:                                       ; preds = %lor.lhs.false.155
  br label %do.cond.160

do.cond.160:                                      ; preds = %if.end.159
  br label %do.end.161

do.end.161:                                       ; preds = %do.cond.160
  br label %if.end.216

if.else.162:                                      ; preds = %if.end.117
  br label %do.body.163

do.body.163:                                      ; preds = %if.else.162
  br label %do.body.164

do.body.164:                                      ; preds = %do.body.163
  br label %do.body.165

do.body.165:                                      ; preds = %do.body.164
  %122 = load i32, i32* %x.addr, align 4, !tbaa !5
  %123 = load i32, i32* %y.addr, align 4, !tbaa !5
  %or166 = or i32 %122, %123
  %cmp167 = icmp slt i32 %or166, 0
  br i1 %cmp167, label %if.then.169, label %if.end.180

if.then.169:                                      ; preds = %do.body.165
  %124 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp170 = icmp slt i32 %124, 0
  br i1 %cmp170, label %if.then.172, label %if.end.174

if.then.172:                                      ; preds = %if.then.169
  %125 = load i32, i32* %x.addr, align 4, !tbaa !5
  %126 = load i32, i32* %width.addr, align 4, !tbaa !5
  %add173 = add nsw i32 %126, %125
  store i32 %add173, i32* %width.addr, align 4, !tbaa !5
  store i32 0, i32* %x.addr, align 4, !tbaa !5
  br label %if.end.174

if.end.174:                                       ; preds = %if.then.172, %if.then.169
  %127 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp175 = icmp slt i32 %127, 0
  br i1 %cmp175, label %if.then.177, label %if.end.179

if.then.177:                                      ; preds = %if.end.174
  %128 = load i32, i32* %y.addr, align 4, !tbaa !5
  %129 = load i32, i32* %height.addr, align 4, !tbaa !5
  %add178 = add nsw i32 %129, %128
  store i32 %add178, i32* %height.addr, align 4, !tbaa !5
  store i32 0, i32* %y.addr, align 4, !tbaa !5
  br label %if.end.179

if.end.179:                                       ; preds = %if.then.177, %if.end.174
  br label %if.end.180

if.end.180:                                       ; preds = %if.end.179, %do.body.165
  br label %do.cond.181

do.cond.181:                                      ; preds = %if.end.180
  br label %do.end.182

do.end.182:                                       ; preds = %do.cond.181
  br label %do.body.183

do.body.183:                                      ; preds = %do.end.182
  %130 = load i32, i32* %width.addr, align 4, !tbaa !5
  %131 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width184 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %131, i32 0, i32 13
  %132 = load i32, i32* %width184, align 4, !tbaa !35
  %133 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub185 = sub nsw i32 %132, %133
  %cmp186 = icmp sgt i32 %130, %sub185
  br i1 %cmp186, label %if.then.188, label %if.end.191

if.then.188:                                      ; preds = %do.body.183
  %134 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width189 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %134, i32 0, i32 13
  %135 = load i32, i32* %width189, align 4, !tbaa !35
  %136 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub190 = sub nsw i32 %135, %136
  store i32 %sub190, i32* %width.addr, align 4, !tbaa !5
  br label %if.end.191

if.end.191:                                       ; preds = %if.then.188, %do.body.183
  br label %do.cond.192

do.cond.192:                                      ; preds = %if.end.191
  br label %do.end.193

do.end.193:                                       ; preds = %do.cond.192
  br label %do.body.194

do.body.194:                                      ; preds = %do.end.193
  %137 = load i32, i32* %height.addr, align 4, !tbaa !5
  %138 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height195 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %138, i32 0, i32 14
  %139 = load i32, i32* %height195, align 4, !tbaa !36
  %140 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub196 = sub nsw i32 %139, %140
  %cmp197 = icmp sgt i32 %137, %sub196
  br i1 %cmp197, label %if.then.199, label %if.end.202

if.then.199:                                      ; preds = %do.body.194
  %141 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height200 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %141, i32 0, i32 14
  %142 = load i32, i32* %height200, align 4, !tbaa !36
  %143 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub201 = sub nsw i32 %142, %143
  store i32 %sub201, i32* %height.addr, align 4, !tbaa !5
  br label %if.end.202

if.end.202:                                       ; preds = %if.then.199, %do.body.194
  br label %do.cond.203

do.cond.203:                                      ; preds = %if.end.202
  br label %do.end.204

do.end.204:                                       ; preds = %do.cond.203
  br label %do.cond.205

do.cond.205:                                      ; preds = %do.end.204
  br label %do.end.206

do.end.206:                                       ; preds = %do.cond.205
  %144 = load i32, i32* %width.addr, align 4, !tbaa !5
  %cmp207 = icmp sle i32 %144, 0
  br i1 %cmp207, label %if.then.212, label %lor.lhs.false.209

lor.lhs.false.209:                                ; preds = %do.end.206
  %145 = load i32, i32* %height.addr, align 4, !tbaa !5
  %cmp210 = icmp sle i32 %145, 0
  br i1 %cmp210, label %if.then.212, label %if.end.213

if.then.212:                                      ; preds = %lor.lhs.false.209, %do.end.206
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1126

if.end.213:                                       ; preds = %lor.lhs.false.209
  br label %do.cond.214

do.cond.214:                                      ; preds = %if.end.213
  br label %do.end.215

do.end.215:                                       ; preds = %do.cond.214
  br label %if.end.216

if.end.216:                                       ; preds = %do.end.215, %do.end.161
  %146 = load i32, i32* %height.addr, align 4, !tbaa !5
  store i32 %146, i32* %line_count, align 4, !tbaa !5
  %147 = load i32, i32* %y.addr, align 4, !tbaa !5
  %idxprom = sext i32 %147 to i64
  %148 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %148, i32 0, i32 52
  %149 = load i8**, i8*** %line_ptrs, align 8, !tbaa !37
  %arrayidx217 = getelementptr inbounds i8*, i8** %149, i64 %idxprom
  %150 = load i8*, i8** %arrayidx217, align 8, !tbaa !1
  store i8* %150, i8** %base, align 8, !tbaa !1
  %151 = load i8*, i8** %base, align 8, !tbaa !1
  %152 = load i32, i32* %x.addr, align 4, !tbaa !5
  %153 = load i32, i32* %bpp, align 4, !tbaa !5
  %mul218 = mul nsw i32 %152, %153
  %idx.ext219 = sext i32 %mul218 to i64
  %add.ptr220 = getelementptr inbounds i8, i8* %151, i64 %idx.ext219
  store i8* %add.ptr220, i8** %drow, align 8, !tbaa !1
  %154 = load i64, i64* %const_texture, align 8, !tbaa !7
  %cmp221 = icmp ne i64 %154, -1
  br i1 %cmp221, label %if.then.223, label %if.else.548

if.then.223:                                      ; preds = %if.end.216
  %155 = load i64, i64* %const_source, align 8, !tbaa !7
  %cmp224 = icmp ne i64 %155, -1
  br i1 %cmp224, label %if.then.226, label %if.else.306

if.then.226:                                      ; preds = %if.then.223
  br label %for.cond

for.cond:                                         ; preds = %for.inc.302, %if.then.226
  %156 = load i32, i32* %line_count, align 4, !tbaa !5
  %dec = add nsw i32 %156, -1
  store i32 %dec, i32* %line_count, align 4, !tbaa !5
  %cmp227 = icmp sgt i32 %156, 0
  br i1 %cmp227, label %for.body, label %for.end.305

for.body:                                         ; preds = %for.cond
  %157 = bitcast i8** %dptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %157) #1
  %158 = load i8*, i8** %drow, align 8, !tbaa !1
  store i8* %158, i8** %dptr, align 8, !tbaa !1
  %159 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %159) #1
  %160 = load i32, i32* %width.addr, align 4, !tbaa !5
  store i32 %160, i32* %left, align 4, !tbaa !5
  %161 = load i32, i32* %bpp, align 4, !tbaa !5
  %cmp229 = icmp eq i32 %161, 1
  br i1 %cmp229, label %if.then.231, label %if.else.260

if.then.231:                                      ; preds = %for.body
  br label %for.cond.232

for.cond.232:                                     ; preds = %for.inc, %if.then.231
  %162 = load i32, i32* %left, align 4, !tbaa !5
  %cmp233 = icmp sgt i32 %162, 0
  br i1 %cmp233, label %for.body.235, label %for.end

for.body.235:                                     ; preds = %for.cond.232
  br label %do.body.236

do.body.236:                                      ; preds = %for.body.235
  br label %do.cond.237

do.cond.237:                                      ; preds = %do.body.236
  br label %do.end.238

do.end.238:                                       ; preds = %do.cond.237
  %163 = load i64, i64* %const_source, align 8, !tbaa !7
  %conv239 = trunc i64 %163 to i8
  %conv240 = zext i8 %conv239 to i64
  %164 = load i64, i64* %strans, align 8, !tbaa !7
  %cmp241 = icmp eq i64 %conv240, %164
  br i1 %cmp241, label %if.then.248, label %lor.lhs.false.243

lor.lhs.false.243:                                ; preds = %do.end.238
  %165 = load i64, i64* %const_texture, align 8, !tbaa !7
  %conv244 = trunc i64 %165 to i8
  %conv245 = zext i8 %conv244 to i64
  %166 = load i64, i64* %ttrans, align 8, !tbaa !7
  %cmp246 = icmp eq i64 %conv245, %166
  br i1 %cmp246, label %if.then.248, label %if.end.249

if.then.248:                                      ; preds = %lor.lhs.false.243, %do.end.238
  br label %for.inc

if.end.249:                                       ; preds = %lor.lhs.false.243
  %167 = load i32, i32* %rop, align 4, !tbaa !9
  %idxprom250 = zext i32 %167 to i64
  %arrayidx251 = getelementptr inbounds [256 x i64 (i64, i64, i64)*], [256 x i64 (i64, i64, i64)*]* @rop_proc_table, i32 0, i64 %idxprom250
  %168 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %arrayidx251, align 8, !tbaa !1
  %169 = load i8*, i8** %dptr, align 8, !tbaa !1
  %170 = load i8, i8* %169, align 1, !tbaa !9
  %conv252 = zext i8 %170 to i64
  %171 = load i64, i64* %const_source, align 8, !tbaa !7
  %conv253 = trunc i64 %171 to i8
  %conv254 = zext i8 %conv253 to i64
  %172 = load i64, i64* %const_texture, align 8, !tbaa !7
  %conv255 = trunc i64 %172 to i8
  %conv256 = zext i8 %conv255 to i64
  %call257 = call i64 %168(i64 %conv252, i64 %conv254, i64 %conv256) #3
  %conv258 = trunc i64 %call257 to i8
  %173 = load i8*, i8** %dptr, align 8, !tbaa !1
  store i8 %conv258, i8* %173, align 1, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %if.end.249, %if.then.248
  %174 = load i8*, i8** %dptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %174, i32 1
  store i8* %incdec.ptr, i8** %dptr, align 8, !tbaa !1
  %175 = load i32, i32* %left, align 4, !tbaa !5
  %dec259 = add nsw i32 %175, -1
  store i32 %dec259, i32* %left, align 4, !tbaa !5
  br label %for.cond.232

for.end:                                          ; preds = %for.cond.232
  br label %if.end.301

if.else.260:                                      ; preds = %for.body
  br label %for.cond.261

for.cond.261:                                     ; preds = %for.inc.297, %if.else.260
  %176 = load i32, i32* %left, align 4, !tbaa !5
  %cmp262 = icmp sgt i32 %176, 0
  br i1 %cmp262, label %for.body.264, label %for.end.300

for.body.264:                                     ; preds = %for.cond.261
  br label %do.body.265

do.body.265:                                      ; preds = %for.body.264
  br label %do.cond.266

do.cond.266:                                      ; preds = %do.body.265
  br label %do.end.267

do.end.267:                                       ; preds = %do.cond.266
  %177 = load i64, i64* %const_source, align 8, !tbaa !7
  %178 = load i64, i64* %strans, align 8, !tbaa !7
  %cmp268 = icmp eq i64 %177, %178
  br i1 %cmp268, label %if.then.273, label %lor.lhs.false.270

lor.lhs.false.270:                                ; preds = %do.end.267
  %179 = load i64, i64* %const_texture, align 8, !tbaa !7
  %180 = load i64, i64* %ttrans, align 8, !tbaa !7
  %cmp271 = icmp eq i64 %179, %180
  br i1 %cmp271, label %if.then.273, label %if.end.274

if.then.273:                                      ; preds = %lor.lhs.false.270, %do.end.267
  br label %for.inc.297

if.end.274:                                       ; preds = %lor.lhs.false.270
  %181 = bitcast i64* %d_pixel to i8*
  call void @llvm.lifetime.start(i64 8, i8* %181) #1
  %182 = load i8*, i8** %dptr, align 8, !tbaa !1
  %arrayidx275 = getelementptr inbounds i8, i8* %182, i64 0
  %183 = load i8, i8* %arrayidx275, align 1, !tbaa !9
  %conv276 = zext i8 %183 to i64
  %shl277 = shl i64 %conv276, 16
  %184 = load i8*, i8** %dptr, align 8, !tbaa !1
  %arrayidx278 = getelementptr inbounds i8, i8* %184, i64 1
  %185 = load i8, i8* %arrayidx278, align 1, !tbaa !9
  %conv279 = zext i8 %185 to i64
  %shl280 = shl i64 %conv279, 8
  %or281 = or i64 %shl277, %shl280
  %186 = load i8*, i8** %dptr, align 8, !tbaa !1
  %arrayidx282 = getelementptr inbounds i8, i8* %186, i64 2
  %187 = load i8, i8* %arrayidx282, align 1, !tbaa !9
  %conv283 = zext i8 %187 to i64
  %or284 = or i64 %or281, %conv283
  store i64 %or284, i64* %d_pixel, align 8, !tbaa !7
  %188 = load i32, i32* %rop, align 4, !tbaa !9
  %idxprom285 = zext i32 %188 to i64
  %arrayidx286 = getelementptr inbounds [256 x i64 (i64, i64, i64)*], [256 x i64 (i64, i64, i64)*]* @rop_proc_table, i32 0, i64 %idxprom285
  %189 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %arrayidx286, align 8, !tbaa !1
  %190 = load i64, i64* %d_pixel, align 8, !tbaa !7
  %191 = load i64, i64* %const_source, align 8, !tbaa !7
  %192 = load i64, i64* %const_texture, align 8, !tbaa !7
  %call287 = call i64 %189(i64 %190, i64 %191, i64 %192) #3
  store i64 %call287, i64* %d_pixel, align 8, !tbaa !7
  %193 = load i64, i64* %d_pixel, align 8, !tbaa !7
  %shr288 = lshr i64 %193, 16
  %conv289 = trunc i64 %shr288 to i8
  %194 = load i8*, i8** %dptr, align 8, !tbaa !1
  %arrayidx290 = getelementptr inbounds i8, i8* %194, i64 0
  store i8 %conv289, i8* %arrayidx290, align 1, !tbaa !9
  %195 = load i64, i64* %d_pixel, align 8, !tbaa !7
  %conv291 = trunc i64 %195 to i32
  %shr292 = lshr i32 %conv291, 8
  %conv293 = trunc i32 %shr292 to i8
  %196 = load i8*, i8** %dptr, align 8, !tbaa !1
  %arrayidx294 = getelementptr inbounds i8, i8* %196, i64 1
  store i8 %conv293, i8* %arrayidx294, align 1, !tbaa !9
  %197 = load i64, i64* %d_pixel, align 8, !tbaa !7
  %conv295 = trunc i64 %197 to i8
  %198 = load i8*, i8** %dptr, align 8, !tbaa !1
  %arrayidx296 = getelementptr inbounds i8, i8* %198, i64 2
  store i8 %conv295, i8* %arrayidx296, align 1, !tbaa !9
  %199 = bitcast i64* %d_pixel to i8*
  call void @llvm.lifetime.end(i64 8, i8* %199) #1
  br label %for.inc.297

for.inc.297:                                      ; preds = %if.end.274, %if.then.273
  %200 = load i8*, i8** %dptr, align 8, !tbaa !1
  %add.ptr298 = getelementptr inbounds i8, i8* %200, i64 3
  store i8* %add.ptr298, i8** %dptr, align 8, !tbaa !1
  %201 = load i32, i32* %left, align 4, !tbaa !5
  %dec299 = add nsw i32 %201, -1
  store i32 %dec299, i32* %left, align 4, !tbaa !5
  br label %for.cond.261

for.end.300:                                      ; preds = %for.cond.261
  br label %if.end.301

if.end.301:                                       ; preds = %for.end.300, %for.end
  %202 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %202) #1
  %203 = bitcast i8** %dptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %203) #1
  br label %for.inc.302

for.inc.302:                                      ; preds = %if.end.301
  %204 = load i32, i32* %draster, align 4, !tbaa !5
  %205 = load i8*, i8** %drow, align 8, !tbaa !1
  %idx.ext303 = zext i32 %204 to i64
  %add.ptr304 = getelementptr inbounds i8, i8* %205, i64 %idx.ext303
  store i8* %add.ptr304, i8** %drow, align 8, !tbaa !1
  br label %for.cond

for.end.305:                                      ; preds = %for.cond
  br label %if.end.547

if.else.306:                                      ; preds = %if.then.223
  %206 = bitcast i8** %srow to i8*
  call void @llvm.lifetime.start(i64 8, i8* %206) #1
  %207 = load i8*, i8** %sdata.addr, align 8, !tbaa !1
  store i8* %207, i8** %srow, align 8, !tbaa !1
  br label %for.cond.307

for.cond.307:                                     ; preds = %for.inc.541, %if.else.306
  %208 = load i32, i32* %line_count, align 4, !tbaa !5
  %dec308 = add nsw i32 %208, -1
  store i32 %dec308, i32* %line_count, align 4, !tbaa !5
  %cmp309 = icmp sgt i32 %208, 0
  br i1 %cmp309, label %for.body.311, label %for.end.546

for.body.311:                                     ; preds = %for.cond.307
  %209 = bitcast i8** %dptr312 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %209) #1
  %210 = load i8*, i8** %drow, align 8, !tbaa !1
  store i8* %210, i8** %dptr312, align 8, !tbaa !1
  %211 = bitcast i32* %left313 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %211) #1
  %212 = load i32, i32* %width.addr, align 4, !tbaa !5
  store i32 %212, i32* %left313, align 4, !tbaa !5
  %213 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %tobool314 = icmp ne i64* %213, null
  br i1 %tobool314, label %if.then.315, label %if.else.435

if.then.315:                                      ; preds = %for.body.311
  %214 = bitcast i32* %sx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %214) #1
  %215 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 %215, i32* %sx, align 4, !tbaa !5
  %216 = load i32, i32* %bpp, align 4, !tbaa !5
  %cmp316 = icmp eq i32 %216, 1
  br i1 %cmp316, label %if.then.318, label %if.else.370

if.then.318:                                      ; preds = %if.then.315
  br label %for.cond.319

for.cond.319:                                     ; preds = %for.inc.366, %if.then.318
  %217 = load i32, i32* %left313, align 4, !tbaa !5
  %cmp320 = icmp sgt i32 %217, 0
  br i1 %cmp320, label %for.body.322, label %for.end.369

for.body.322:                                     ; preds = %for.cond.319
  call void @llvm.lifetime.start(i64 1, i8* %s_pixel) #1
  %218 = load i32, i32* %sx, align 4, !tbaa !5
  %shr323 = ashr i32 %218, 3
  %idxprom324 = sext i32 %shr323 to i64
  %219 = load i8*, i8** %srow, align 8, !tbaa !1
  %arrayidx325 = getelementptr inbounds i8, i8* %219, i64 %idxprom324
  %220 = load i8, i8* %arrayidx325, align 1, !tbaa !9
  %conv326 = zext i8 %220 to i32
  %221 = load i32, i32* %sx, align 4, !tbaa !5
  %and327 = and i32 %221, 7
  %shr328 = ashr i32 128, %and327
  %and329 = and i32 %conv326, %shr328
  %tobool330 = icmp ne i32 %and329, 0
  br i1 %tobool330, label %cond.true.331, label %cond.false.335

cond.true.331:                                    ; preds = %for.body.322
  %222 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %arrayidx332 = getelementptr inbounds i64, i64* %222, i64 1
  %223 = load i64, i64* %arrayidx332, align 8, !tbaa !7
  %conv333 = trunc i64 %223 to i8
  %conv334 = zext i8 %conv333 to i32
  br label %cond.end.339

cond.false.335:                                   ; preds = %for.body.322
  %224 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %arrayidx336 = getelementptr inbounds i64, i64* %224, i64 0
  %225 = load i64, i64* %arrayidx336, align 8, !tbaa !7
  %conv337 = trunc i64 %225 to i8
  %conv338 = zext i8 %conv337 to i32
  br label %cond.end.339

cond.end.339:                                     ; preds = %cond.false.335, %cond.true.331
  %cond340 = phi i32 [ %conv334, %cond.true.331 ], [ %conv338, %cond.false.335 ]
  %conv341 = trunc i32 %cond340 to i8
  store i8 %conv341, i8* %s_pixel, align 1, !tbaa !9
  br label %do.body.342

do.body.342:                                      ; preds = %cond.end.339
  br label %do.cond.343

do.cond.343:                                      ; preds = %do.body.342
  br label %do.end.344

do.end.344:                                       ; preds = %do.cond.343
  %226 = load i8, i8* %s_pixel, align 1, !tbaa !9
  %conv345 = zext i8 %226 to i64
  %227 = load i64, i64* %strans, align 8, !tbaa !7
  %cmp346 = icmp eq i64 %conv345, %227
  br i1 %cmp346, label %if.then.353, label %lor.lhs.false.348

lor.lhs.false.348:                                ; preds = %do.end.344
  %228 = load i64, i64* %const_texture, align 8, !tbaa !7
  %conv349 = trunc i64 %228 to i8
  %conv350 = zext i8 %conv349 to i64
  %229 = load i64, i64* %ttrans, align 8, !tbaa !7
  %cmp351 = icmp eq i64 %conv350, %229
  br i1 %cmp351, label %if.then.353, label %if.end.354

if.then.353:                                      ; preds = %lor.lhs.false.348, %do.end.344
  store i32 37, i32* %cleanup.dest.slot
  br label %cleanup.363

if.end.354:                                       ; preds = %lor.lhs.false.348
  %230 = load i32, i32* %rop, align 4, !tbaa !9
  %idxprom355 = zext i32 %230 to i64
  %arrayidx356 = getelementptr inbounds [256 x i64 (i64, i64, i64)*], [256 x i64 (i64, i64, i64)*]* @rop_proc_table, i32 0, i64 %idxprom355
  %231 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %arrayidx356, align 8, !tbaa !1
  %232 = load i8*, i8** %dptr312, align 8, !tbaa !1
  %233 = load i8, i8* %232, align 1, !tbaa !9
  %conv357 = zext i8 %233 to i64
  %234 = load i8, i8* %s_pixel, align 1, !tbaa !9
  %conv358 = zext i8 %234 to i64
  %235 = load i64, i64* %const_texture, align 8, !tbaa !7
  %conv359 = trunc i64 %235 to i8
  %conv360 = zext i8 %conv359 to i64
  %call361 = call i64 %231(i64 %conv357, i64 %conv358, i64 %conv360) #3
  %conv362 = trunc i64 %call361 to i8
  %236 = load i8*, i8** %dptr312, align 8, !tbaa !1
  store i8 %conv362, i8* %236, align 1, !tbaa !9
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.363

cleanup.363:                                      ; preds = %if.end.354, %if.then.353
  call void @llvm.lifetime.end(i64 1, i8* %s_pixel) #1
  %cleanup.dest.364 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.364, label %unreachable [
    i32 0, label %cleanup.cont.365
    i32 37, label %for.inc.366
  ]

cleanup.cont.365:                                 ; preds = %cleanup.363
  br label %for.inc.366

for.inc.366:                                      ; preds = %cleanup.cont.365, %cleanup.363
  %237 = load i8*, i8** %dptr312, align 8, !tbaa !1
  %incdec.ptr367 = getelementptr inbounds i8, i8* %237, i32 1
  store i8* %incdec.ptr367, i8** %dptr312, align 8, !tbaa !1
  %238 = load i32, i32* %sx, align 4, !tbaa !5
  %inc = add nsw i32 %238, 1
  store i32 %inc, i32* %sx, align 4, !tbaa !5
  %239 = load i32, i32* %left313, align 4, !tbaa !5
  %dec368 = add nsw i32 %239, -1
  store i32 %dec368, i32* %left313, align 4, !tbaa !5
  br label %for.cond.319

for.end.369:                                      ; preds = %for.cond.319
  br label %if.end.434

if.else.370:                                      ; preds = %if.then.315
  br label %for.cond.371

for.cond.371:                                     ; preds = %for.inc.429, %if.else.370
  %240 = load i32, i32* %left313, align 4, !tbaa !5
  %cmp372 = icmp sgt i32 %240, 0
  br i1 %cmp372, label %for.body.374, label %for.end.433

for.body.374:                                     ; preds = %for.cond.371
  %241 = bitcast i32* %s_pixel375 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %241) #1
  %242 = load i32, i32* %sx, align 4, !tbaa !5
  %shr376 = ashr i32 %242, 3
  %idxprom377 = sext i32 %shr376 to i64
  %243 = load i8*, i8** %srow, align 8, !tbaa !1
  %arrayidx378 = getelementptr inbounds i8, i8* %243, i64 %idxprom377
  %244 = load i8, i8* %arrayidx378, align 1, !tbaa !9
  %conv379 = zext i8 %244 to i32
  %245 = load i32, i32* %sx, align 4, !tbaa !5
  %and380 = and i32 %245, 7
  %shr381 = ashr i32 128, %and380
  %and382 = and i32 %conv379, %shr381
  %tobool383 = icmp ne i32 %and382, 0
  br i1 %tobool383, label %cond.true.384, label %cond.false.386

cond.true.384:                                    ; preds = %for.body.374
  %246 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %arrayidx385 = getelementptr inbounds i64, i64* %246, i64 1
  %247 = load i64, i64* %arrayidx385, align 8, !tbaa !7
  br label %cond.end.388

cond.false.386:                                   ; preds = %for.body.374
  %248 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %arrayidx387 = getelementptr inbounds i64, i64* %248, i64 0
  %249 = load i64, i64* %arrayidx387, align 8, !tbaa !7
  br label %cond.end.388

cond.end.388:                                     ; preds = %cond.false.386, %cond.true.384
  %cond389 = phi i64 [ %247, %cond.true.384 ], [ %249, %cond.false.386 ]
  %conv390 = trunc i64 %cond389 to i32
  store i32 %conv390, i32* %s_pixel375, align 4, !tbaa !5
  br label %do.body.391

do.body.391:                                      ; preds = %cond.end.388
  br label %do.cond.392

do.cond.392:                                      ; preds = %do.body.391
  br label %do.end.393

do.end.393:                                       ; preds = %do.cond.392
  %250 = load i32, i32* %s_pixel375, align 4, !tbaa !5
  %conv394 = zext i32 %250 to i64
  %251 = load i64, i64* %strans, align 8, !tbaa !7
  %cmp395 = icmp eq i64 %conv394, %251
  br i1 %cmp395, label %if.then.400, label %lor.lhs.false.397

lor.lhs.false.397:                                ; preds = %do.end.393
  %252 = load i64, i64* %const_texture, align 8, !tbaa !7
  %253 = load i64, i64* %ttrans, align 8, !tbaa !7
  %cmp398 = icmp eq i64 %252, %253
  br i1 %cmp398, label %if.then.400, label %if.end.401

if.then.400:                                      ; preds = %lor.lhs.false.397, %do.end.393
  store i32 42, i32* %cleanup.dest.slot
  br label %cleanup.426

if.end.401:                                       ; preds = %lor.lhs.false.397
  %254 = bitcast i64* %d_pixel402 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %254) #1
  %255 = load i8*, i8** %dptr312, align 8, !tbaa !1
  %arrayidx403 = getelementptr inbounds i8, i8* %255, i64 0
  %256 = load i8, i8* %arrayidx403, align 1, !tbaa !9
  %conv404 = zext i8 %256 to i64
  %shl405 = shl i64 %conv404, 16
  %257 = load i8*, i8** %dptr312, align 8, !tbaa !1
  %arrayidx406 = getelementptr inbounds i8, i8* %257, i64 1
  %258 = load i8, i8* %arrayidx406, align 1, !tbaa !9
  %conv407 = zext i8 %258 to i64
  %shl408 = shl i64 %conv407, 8
  %or409 = or i64 %shl405, %shl408
  %259 = load i8*, i8** %dptr312, align 8, !tbaa !1
  %arrayidx410 = getelementptr inbounds i8, i8* %259, i64 2
  %260 = load i8, i8* %arrayidx410, align 1, !tbaa !9
  %conv411 = zext i8 %260 to i64
  %or412 = or i64 %or409, %conv411
  store i64 %or412, i64* %d_pixel402, align 8, !tbaa !7
  %261 = load i32, i32* %rop, align 4, !tbaa !9
  %idxprom413 = zext i32 %261 to i64
  %arrayidx414 = getelementptr inbounds [256 x i64 (i64, i64, i64)*], [256 x i64 (i64, i64, i64)*]* @rop_proc_table, i32 0, i64 %idxprom413
  %262 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %arrayidx414, align 8, !tbaa !1
  %263 = load i64, i64* %d_pixel402, align 8, !tbaa !7
  %264 = load i32, i32* %s_pixel375, align 4, !tbaa !5
  %conv415 = zext i32 %264 to i64
  %265 = load i64, i64* %const_texture, align 8, !tbaa !7
  %call416 = call i64 %262(i64 %263, i64 %conv415, i64 %265) #3
  store i64 %call416, i64* %d_pixel402, align 8, !tbaa !7
  %266 = load i64, i64* %d_pixel402, align 8, !tbaa !7
  %shr417 = lshr i64 %266, 16
  %conv418 = trunc i64 %shr417 to i8
  %267 = load i8*, i8** %dptr312, align 8, !tbaa !1
  %arrayidx419 = getelementptr inbounds i8, i8* %267, i64 0
  store i8 %conv418, i8* %arrayidx419, align 1, !tbaa !9
  %268 = load i64, i64* %d_pixel402, align 8, !tbaa !7
  %conv420 = trunc i64 %268 to i32
  %shr421 = lshr i32 %conv420, 8
  %conv422 = trunc i32 %shr421 to i8
  %269 = load i8*, i8** %dptr312, align 8, !tbaa !1
  %arrayidx423 = getelementptr inbounds i8, i8* %269, i64 1
  store i8 %conv422, i8* %arrayidx423, align 1, !tbaa !9
  %270 = load i64, i64* %d_pixel402, align 8, !tbaa !7
  %conv424 = trunc i64 %270 to i8
  %271 = load i8*, i8** %dptr312, align 8, !tbaa !1
  %arrayidx425 = getelementptr inbounds i8, i8* %271, i64 2
  store i8 %conv424, i8* %arrayidx425, align 1, !tbaa !9
  %272 = bitcast i64* %d_pixel402 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %272) #1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.426

cleanup.426:                                      ; preds = %if.end.401, %if.then.400
  %273 = bitcast i32* %s_pixel375 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %273) #1
  %cleanup.dest.427 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.427, label %unreachable [
    i32 0, label %cleanup.cont.428
    i32 42, label %for.inc.429
  ]

cleanup.cont.428:                                 ; preds = %cleanup.426
  br label %for.inc.429

for.inc.429:                                      ; preds = %cleanup.cont.428, %cleanup.426
  %274 = load i8*, i8** %dptr312, align 8, !tbaa !1
  %add.ptr430 = getelementptr inbounds i8, i8* %274, i64 3
  store i8* %add.ptr430, i8** %dptr312, align 8, !tbaa !1
  %275 = load i32, i32* %sx, align 4, !tbaa !5
  %inc431 = add nsw i32 %275, 1
  store i32 %inc431, i32* %sx, align 4, !tbaa !5
  %276 = load i32, i32* %left313, align 4, !tbaa !5
  %dec432 = add nsw i32 %276, -1
  store i32 %dec432, i32* %left313, align 4, !tbaa !5
  br label %for.cond.371

for.end.433:                                      ; preds = %for.cond.371
  br label %if.end.434

if.end.434:                                       ; preds = %for.end.433, %for.end.369
  %277 = bitcast i32* %sx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %277) #1
  br label %if.end.540

if.else.435:                                      ; preds = %for.body.311
  %278 = load i32, i32* %bpp, align 4, !tbaa !5
  %cmp436 = icmp eq i32 %278, 1
  br i1 %cmp436, label %if.then.438, label %if.else.475

if.then.438:                                      ; preds = %if.else.435
  %279 = bitcast i8** %sptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %279) #1
  %280 = load i8*, i8** %srow, align 8, !tbaa !1
  %281 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %idx.ext439 = sext i32 %281 to i64
  %add.ptr440 = getelementptr inbounds i8, i8* %280, i64 %idx.ext439
  store i8* %add.ptr440, i8** %sptr, align 8, !tbaa !1
  br label %for.cond.441

for.cond.441:                                     ; preds = %for.inc.470, %if.then.438
  %282 = load i32, i32* %left313, align 4, !tbaa !5
  %cmp442 = icmp sgt i32 %282, 0
  br i1 %cmp442, label %for.body.444, label %for.end.474

for.body.444:                                     ; preds = %for.cond.441
  call void @llvm.lifetime.start(i64 1, i8* %s_pixel445) #1
  %283 = load i8*, i8** %sptr, align 8, !tbaa !1
  %284 = load i8, i8* %283, align 1, !tbaa !9
  store i8 %284, i8* %s_pixel445, align 1, !tbaa !9
  br label %do.body.446

do.body.446:                                      ; preds = %for.body.444
  br label %do.cond.447

do.cond.447:                                      ; preds = %do.body.446
  br label %do.end.448

do.end.448:                                       ; preds = %do.cond.447
  %285 = load i8, i8* %s_pixel445, align 1, !tbaa !9
  %conv449 = zext i8 %285 to i64
  %286 = load i64, i64* %strans, align 8, !tbaa !7
  %cmp450 = icmp eq i64 %conv449, %286
  br i1 %cmp450, label %if.then.457, label %lor.lhs.false.452

lor.lhs.false.452:                                ; preds = %do.end.448
  %287 = load i64, i64* %const_texture, align 8, !tbaa !7
  %conv453 = trunc i64 %287 to i8
  %conv454 = zext i8 %conv453 to i64
  %288 = load i64, i64* %ttrans, align 8, !tbaa !7
  %cmp455 = icmp eq i64 %conv454, %288
  br i1 %cmp455, label %if.then.457, label %if.end.458

if.then.457:                                      ; preds = %lor.lhs.false.452, %do.end.448
  store i32 47, i32* %cleanup.dest.slot
  br label %cleanup.467

if.end.458:                                       ; preds = %lor.lhs.false.452
  %289 = load i32, i32* %rop, align 4, !tbaa !9
  %idxprom459 = zext i32 %289 to i64
  %arrayidx460 = getelementptr inbounds [256 x i64 (i64, i64, i64)*], [256 x i64 (i64, i64, i64)*]* @rop_proc_table, i32 0, i64 %idxprom459
  %290 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %arrayidx460, align 8, !tbaa !1
  %291 = load i8*, i8** %dptr312, align 8, !tbaa !1
  %292 = load i8, i8* %291, align 1, !tbaa !9
  %conv461 = zext i8 %292 to i64
  %293 = load i8, i8* %s_pixel445, align 1, !tbaa !9
  %conv462 = zext i8 %293 to i64
  %294 = load i64, i64* %const_texture, align 8, !tbaa !7
  %conv463 = trunc i64 %294 to i8
  %conv464 = zext i8 %conv463 to i64
  %call465 = call i64 %290(i64 %conv461, i64 %conv462, i64 %conv464) #3
  %conv466 = trunc i64 %call465 to i8
  %295 = load i8*, i8** %dptr312, align 8, !tbaa !1
  store i8 %conv466, i8* %295, align 1, !tbaa !9
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.467

cleanup.467:                                      ; preds = %if.end.458, %if.then.457
  call void @llvm.lifetime.end(i64 1, i8* %s_pixel445) #1
  %cleanup.dest.468 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.468, label %unreachable [
    i32 0, label %cleanup.cont.469
    i32 47, label %for.inc.470
  ]

cleanup.cont.469:                                 ; preds = %cleanup.467
  br label %for.inc.470

for.inc.470:                                      ; preds = %cleanup.cont.469, %cleanup.467
  %296 = load i8*, i8** %dptr312, align 8, !tbaa !1
  %incdec.ptr471 = getelementptr inbounds i8, i8* %296, i32 1
  store i8* %incdec.ptr471, i8** %dptr312, align 8, !tbaa !1
  %297 = load i8*, i8** %sptr, align 8, !tbaa !1
  %incdec.ptr472 = getelementptr inbounds i8, i8* %297, i32 1
  store i8* %incdec.ptr472, i8** %sptr, align 8, !tbaa !1
  %298 = load i32, i32* %left313, align 4, !tbaa !5
  %dec473 = add nsw i32 %298, -1
  store i32 %dec473, i32* %left313, align 4, !tbaa !5
  br label %for.cond.441

for.end.474:                                      ; preds = %for.cond.441
  %299 = bitcast i8** %sptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %299) #1
  br label %if.end.539

if.else.475:                                      ; preds = %if.else.435
  %300 = bitcast i8** %sptr476 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %300) #1
  %301 = load i8*, i8** %srow, align 8, !tbaa !1
  %302 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %mul477 = mul nsw i32 %302, 3
  %idx.ext478 = sext i32 %mul477 to i64
  %add.ptr479 = getelementptr inbounds i8, i8* %301, i64 %idx.ext478
  store i8* %add.ptr479, i8** %sptr476, align 8, !tbaa !1
  br label %for.cond.480

for.cond.480:                                     ; preds = %for.inc.534, %if.else.475
  %303 = load i32, i32* %left313, align 4, !tbaa !5
  %cmp481 = icmp sgt i32 %303, 0
  br i1 %cmp481, label %for.body.483, label %for.end.538

for.body.483:                                     ; preds = %for.cond.480
  %304 = bitcast i32* %s_pixel484 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %304) #1
  %305 = load i8*, i8** %sptr476, align 8, !tbaa !1
  %arrayidx485 = getelementptr inbounds i8, i8* %305, i64 0
  %306 = load i8, i8* %arrayidx485, align 1, !tbaa !9
  %conv486 = zext i8 %306 to i64
  %shl487 = shl i64 %conv486, 16
  %307 = load i8*, i8** %sptr476, align 8, !tbaa !1
  %arrayidx488 = getelementptr inbounds i8, i8* %307, i64 1
  %308 = load i8, i8* %arrayidx488, align 1, !tbaa !9
  %conv489 = zext i8 %308 to i64
  %shl490 = shl i64 %conv489, 8
  %or491 = or i64 %shl487, %shl490
  %309 = load i8*, i8** %sptr476, align 8, !tbaa !1
  %arrayidx492 = getelementptr inbounds i8, i8* %309, i64 2
  %310 = load i8, i8* %arrayidx492, align 1, !tbaa !9
  %conv493 = zext i8 %310 to i64
  %or494 = or i64 %or491, %conv493
  %conv495 = trunc i64 %or494 to i32
  store i32 %conv495, i32* %s_pixel484, align 4, !tbaa !5
  br label %do.body.496

do.body.496:                                      ; preds = %for.body.483
  br label %do.cond.497

do.cond.497:                                      ; preds = %do.body.496
  br label %do.end.498

do.end.498:                                       ; preds = %do.cond.497
  %311 = load i32, i32* %s_pixel484, align 4, !tbaa !5
  %conv499 = zext i32 %311 to i64
  %312 = load i64, i64* %strans, align 8, !tbaa !7
  %cmp500 = icmp eq i64 %conv499, %312
  br i1 %cmp500, label %if.then.505, label %lor.lhs.false.502

lor.lhs.false.502:                                ; preds = %do.end.498
  %313 = load i64, i64* %const_texture, align 8, !tbaa !7
  %314 = load i64, i64* %ttrans, align 8, !tbaa !7
  %cmp503 = icmp eq i64 %313, %314
  br i1 %cmp503, label %if.then.505, label %if.end.506

if.then.505:                                      ; preds = %lor.lhs.false.502, %do.end.498
  store i32 52, i32* %cleanup.dest.slot
  br label %cleanup.531

if.end.506:                                       ; preds = %lor.lhs.false.502
  %315 = bitcast i64* %d_pixel507 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %315) #1
  %316 = load i8*, i8** %dptr312, align 8, !tbaa !1
  %arrayidx508 = getelementptr inbounds i8, i8* %316, i64 0
  %317 = load i8, i8* %arrayidx508, align 1, !tbaa !9
  %conv509 = zext i8 %317 to i64
  %shl510 = shl i64 %conv509, 16
  %318 = load i8*, i8** %dptr312, align 8, !tbaa !1
  %arrayidx511 = getelementptr inbounds i8, i8* %318, i64 1
  %319 = load i8, i8* %arrayidx511, align 1, !tbaa !9
  %conv512 = zext i8 %319 to i64
  %shl513 = shl i64 %conv512, 8
  %or514 = or i64 %shl510, %shl513
  %320 = load i8*, i8** %dptr312, align 8, !tbaa !1
  %arrayidx515 = getelementptr inbounds i8, i8* %320, i64 2
  %321 = load i8, i8* %arrayidx515, align 1, !tbaa !9
  %conv516 = zext i8 %321 to i64
  %or517 = or i64 %or514, %conv516
  store i64 %or517, i64* %d_pixel507, align 8, !tbaa !7
  %322 = load i32, i32* %rop, align 4, !tbaa !9
  %idxprom518 = zext i32 %322 to i64
  %arrayidx519 = getelementptr inbounds [256 x i64 (i64, i64, i64)*], [256 x i64 (i64, i64, i64)*]* @rop_proc_table, i32 0, i64 %idxprom518
  %323 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %arrayidx519, align 8, !tbaa !1
  %324 = load i64, i64* %d_pixel507, align 8, !tbaa !7
  %325 = load i32, i32* %s_pixel484, align 4, !tbaa !5
  %conv520 = zext i32 %325 to i64
  %326 = load i64, i64* %const_texture, align 8, !tbaa !7
  %call521 = call i64 %323(i64 %324, i64 %conv520, i64 %326) #3
  store i64 %call521, i64* %d_pixel507, align 8, !tbaa !7
  %327 = load i64, i64* %d_pixel507, align 8, !tbaa !7
  %shr522 = lshr i64 %327, 16
  %conv523 = trunc i64 %shr522 to i8
  %328 = load i8*, i8** %dptr312, align 8, !tbaa !1
  %arrayidx524 = getelementptr inbounds i8, i8* %328, i64 0
  store i8 %conv523, i8* %arrayidx524, align 1, !tbaa !9
  %329 = load i64, i64* %d_pixel507, align 8, !tbaa !7
  %conv525 = trunc i64 %329 to i32
  %shr526 = lshr i32 %conv525, 8
  %conv527 = trunc i32 %shr526 to i8
  %330 = load i8*, i8** %dptr312, align 8, !tbaa !1
  %arrayidx528 = getelementptr inbounds i8, i8* %330, i64 1
  store i8 %conv527, i8* %arrayidx528, align 1, !tbaa !9
  %331 = load i64, i64* %d_pixel507, align 8, !tbaa !7
  %conv529 = trunc i64 %331 to i8
  %332 = load i8*, i8** %dptr312, align 8, !tbaa !1
  %arrayidx530 = getelementptr inbounds i8, i8* %332, i64 2
  store i8 %conv529, i8* %arrayidx530, align 1, !tbaa !9
  %333 = bitcast i64* %d_pixel507 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %333) #1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.531

cleanup.531:                                      ; preds = %if.end.506, %if.then.505
  %334 = bitcast i32* %s_pixel484 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %334) #1
  %cleanup.dest.532 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.532, label %unreachable [
    i32 0, label %cleanup.cont.533
    i32 52, label %for.inc.534
  ]

cleanup.cont.533:                                 ; preds = %cleanup.531
  br label %for.inc.534

for.inc.534:                                      ; preds = %cleanup.cont.533, %cleanup.531
  %335 = load i8*, i8** %dptr312, align 8, !tbaa !1
  %add.ptr535 = getelementptr inbounds i8, i8* %335, i64 3
  store i8* %add.ptr535, i8** %dptr312, align 8, !tbaa !1
  %336 = load i8*, i8** %sptr476, align 8, !tbaa !1
  %add.ptr536 = getelementptr inbounds i8, i8* %336, i64 3
  store i8* %add.ptr536, i8** %sptr476, align 8, !tbaa !1
  %337 = load i32, i32* %left313, align 4, !tbaa !5
  %dec537 = add nsw i32 %337, -1
  store i32 %dec537, i32* %left313, align 4, !tbaa !5
  br label %for.cond.480

for.end.538:                                      ; preds = %for.cond.480
  %338 = bitcast i8** %sptr476 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %338) #1
  br label %if.end.539

if.end.539:                                       ; preds = %for.end.538, %for.end.474
  br label %if.end.540

if.end.540:                                       ; preds = %if.end.539, %if.end.434
  %339 = bitcast i32* %left313 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %339) #1
  %340 = bitcast i8** %dptr312 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %340) #1
  br label %for.inc.541

for.inc.541:                                      ; preds = %if.end.540
  %341 = load i32, i32* %draster, align 4, !tbaa !5
  %342 = load i8*, i8** %drow, align 8, !tbaa !1
  %idx.ext542 = zext i32 %341 to i64
  %add.ptr543 = getelementptr inbounds i8, i8* %342, i64 %idx.ext542
  store i8* %add.ptr543, i8** %drow, align 8, !tbaa !1
  %343 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %344 = load i8*, i8** %srow, align 8, !tbaa !1
  %idx.ext544 = zext i32 %343 to i64
  %add.ptr545 = getelementptr inbounds i8, i8* %344, i64 %idx.ext544
  store i8* %add.ptr545, i8** %srow, align 8, !tbaa !1
  br label %for.cond.307

for.end.546:                                      ; preds = %for.cond.307
  %345 = bitcast i8** %srow to i8*
  call void @llvm.lifetime.end(i64 8, i8* %345) #1
  br label %if.end.547

if.end.547:                                       ; preds = %for.end.546, %for.end.305
  br label %if.end.1125

if.else.548:                                      ; preds = %if.end.216
  %346 = load i64, i64* %const_source, align 8, !tbaa !7
  %cmp549 = icmp ne i64 %346, -1
  br i1 %cmp549, label %if.then.551, label %if.else.831

if.then.551:                                      ; preds = %if.else.548
  %347 = bitcast i32* %traster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %347) #1
  %348 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %raster552 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %348, i32 0, i32 1
  %349 = load i32, i32* %raster552, align 4, !tbaa !38
  store i32 %349, i32* %traster, align 4, !tbaa !5
  %350 = bitcast i32* %ty to i8*
  call void @llvm.lifetime.start(i64 4, i8* %350) #1
  %351 = load i32, i32* %y.addr, align 4, !tbaa !5
  %352 = load i32, i32* %phase_y.addr, align 4, !tbaa !5
  %add553 = add nsw i32 %351, %352
  store i32 %add553, i32* %ty, align 4, !tbaa !5
  br label %for.cond.554

for.cond.554:                                     ; preds = %for.inc.826, %if.then.551
  %353 = load i32, i32* %line_count, align 4, !tbaa !5
  %dec555 = add nsw i32 %353, -1
  store i32 %dec555, i32* %line_count, align 4, !tbaa !5
  %cmp556 = icmp sgt i32 %353, 0
  br i1 %cmp556, label %for.body.558, label %for.end.830

for.body.558:                                     ; preds = %for.cond.554
  %354 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %354) #1
  %355 = load i32, i32* %x.addr, align 4, !tbaa !5
  store i32 %355, i32* %dx, align 4, !tbaa !5
  %356 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %356) #1
  %357 = load i32, i32* %width.addr, align 4, !tbaa !5
  store i32 %357, i32* %w, align 4, !tbaa !5
  %358 = bitcast i32* %nw to i8*
  call void @llvm.lifetime.start(i64 4, i8* %358) #1
  %359 = bitcast i8** %dptr559 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %359) #1
  %360 = load i8*, i8** %drow, align 8, !tbaa !1
  store i8* %360, i8** %dptr559, align 8, !tbaa !1
  %361 = bitcast i8** %trow to i8*
  call void @llvm.lifetime.start(i64 8, i8* %361) #1
  %362 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %362, i32 0, i32 0
  %363 = load i8*, i8** %data, align 8, !tbaa !41
  %364 = load i32, i32* %ty, align 4, !tbaa !5
  %365 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %365, i32 0, i32 2
  %y560 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size, i32 0, i32 1
  %366 = load i32, i32* %y560, align 4, !tbaa !42
  %rem = srem i32 %364, %366
  %367 = load i32, i32* %traster, align 4, !tbaa !5
  %mul561 = mul i32 %rem, %367
  %idx.ext562 = zext i32 %mul561 to i64
  %add.ptr563 = getelementptr inbounds i8, i8* %363, i64 %idx.ext562
  store i8* %add.ptr563, i8** %trow, align 8, !tbaa !1
  %368 = bitcast i32* %xoff to i8*
  call void @llvm.lifetime.start(i64 4, i8* %368) #1
  %369 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %shift = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %369, i32 0, i32 7
  %370 = load i16, i16* %shift, align 2, !tbaa !43
  %conv564 = zext i16 %370 to i32
  %cmp565 = icmp eq i32 %conv564, 0
  br i1 %cmp565, label %cond.true.567, label %cond.false.568

cond.true.567:                                    ; preds = %for.body.558
  %371 = load i32, i32* %phase_x.addr, align 4, !tbaa !5
  br label %cond.end.573

cond.false.568:                                   ; preds = %for.body.558
  %372 = load i32, i32* %phase_x.addr, align 4, !tbaa !5
  %373 = load i32, i32* %ty, align 4, !tbaa !5
  %374 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %rep_height = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %374, i32 0, i32 5
  %375 = load i16, i16* %rep_height, align 2, !tbaa !44
  %conv569 = zext i16 %375 to i32
  %div = sdiv i32 %373, %conv569
  %376 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %rep_shift = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %376, i32 0, i32 6
  %377 = load i16, i16* %rep_shift, align 2, !tbaa !45
  %conv570 = zext i16 %377 to i32
  %mul571 = mul nsw i32 %div, %conv570
  %add572 = add nsw i32 %372, %mul571
  br label %cond.end.573

cond.end.573:                                     ; preds = %cond.false.568, %cond.true.567
  %cond574 = phi i32 [ %371, %cond.true.567 ], [ %add572, %cond.false.568 ]
  store i32 %cond574, i32* %xoff, align 4, !tbaa !5
  br label %for.cond.575

for.cond.575:                                     ; preds = %for.inc.822, %cond.end.573
  %378 = load i32, i32* %w, align 4, !tbaa !5
  %cmp576 = icmp sgt i32 %378, 0
  br i1 %cmp576, label %for.body.578, label %for.end.825

for.body.578:                                     ; preds = %for.cond.575
  %379 = bitcast i32* %tx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %379) #1
  %380 = load i32, i32* %dx, align 4, !tbaa !5
  %381 = load i32, i32* %xoff, align 4, !tbaa !5
  %add579 = add nsw i32 %380, %381
  %382 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %rep_width = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %382, i32 0, i32 4
  %383 = load i16, i16* %rep_width, align 2, !tbaa !46
  %conv580 = zext i16 %383 to i32
  %rem581 = srem i32 %add579, %conv580
  store i32 %rem581, i32* %tx, align 4, !tbaa !5
  %384 = bitcast i32* %left582 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %384) #1
  %385 = load i32, i32* %w, align 4, !tbaa !5
  %386 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %size583 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %386, i32 0, i32 2
  %x584 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size583, i32 0, i32 0
  %387 = load i32, i32* %x584, align 4, !tbaa !47
  %388 = load i32, i32* %tx, align 4, !tbaa !5
  %sub585 = sub nsw i32 %387, %388
  %cmp586 = icmp slt i32 %385, %sub585
  br i1 %cmp586, label %cond.true.588, label %cond.false.589

cond.true.588:                                    ; preds = %for.body.578
  %389 = load i32, i32* %w, align 4, !tbaa !5
  br label %cond.end.593

cond.false.589:                                   ; preds = %for.body.578
  %390 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %size590 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %390, i32 0, i32 2
  %x591 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size590, i32 0, i32 0
  %391 = load i32, i32* %x591, align 4, !tbaa !47
  %392 = load i32, i32* %tx, align 4, !tbaa !5
  %sub592 = sub nsw i32 %391, %392
  br label %cond.end.593

cond.end.593:                                     ; preds = %cond.false.589, %cond.true.588
  %cond594 = phi i32 [ %389, %cond.true.588 ], [ %sub592, %cond.false.589 ]
  store i32 %cond594, i32* %nw, align 4, !tbaa !5
  store i32 %cond594, i32* %left582, align 4, !tbaa !5
  %393 = bitcast i8** %tptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %393) #1
  %394 = load i8*, i8** %trow, align 8, !tbaa !1
  store i8* %394, i8** %tptr, align 8, !tbaa !1
  %395 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %tobool595 = icmp ne i64* %395, null
  br i1 %tobool595, label %if.then.596, label %if.else.717

if.then.596:                                      ; preds = %cond.end.593
  %396 = load i32, i32* %bpp, align 4, !tbaa !5
  %cmp597 = icmp eq i32 %396, 1
  br i1 %cmp597, label %if.then.599, label %if.else.652

if.then.599:                                      ; preds = %if.then.596
  br label %for.cond.600

for.cond.600:                                     ; preds = %for.inc.647, %if.then.599
  %397 = load i32, i32* %left582, align 4, !tbaa !5
  %cmp601 = icmp sgt i32 %397, 0
  br i1 %cmp601, label %for.body.603, label %for.end.651

for.body.603:                                     ; preds = %for.cond.600
  call void @llvm.lifetime.start(i64 1, i8* %t_pixel) #1
  %398 = load i32, i32* %tx, align 4, !tbaa !5
  %shr604 = ashr i32 %398, 3
  %idxprom605 = sext i32 %shr604 to i64
  %399 = load i8*, i8** %tptr, align 8, !tbaa !1
  %arrayidx606 = getelementptr inbounds i8, i8* %399, i64 %idxprom605
  %400 = load i8, i8* %arrayidx606, align 1, !tbaa !9
  %conv607 = zext i8 %400 to i32
  %401 = load i32, i32* %tx, align 4, !tbaa !5
  %and608 = and i32 %401, 7
  %shr609 = ashr i32 128, %and608
  %and610 = and i32 %conv607, %shr609
  %tobool611 = icmp ne i32 %and610, 0
  br i1 %tobool611, label %cond.true.612, label %cond.false.616

cond.true.612:                                    ; preds = %for.body.603
  %402 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %arrayidx613 = getelementptr inbounds i64, i64* %402, i64 1
  %403 = load i64, i64* %arrayidx613, align 8, !tbaa !7
  %conv614 = trunc i64 %403 to i8
  %conv615 = zext i8 %conv614 to i32
  br label %cond.end.620

cond.false.616:                                   ; preds = %for.body.603
  %404 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %arrayidx617 = getelementptr inbounds i64, i64* %404, i64 0
  %405 = load i64, i64* %arrayidx617, align 8, !tbaa !7
  %conv618 = trunc i64 %405 to i8
  %conv619 = zext i8 %conv618 to i32
  br label %cond.end.620

cond.end.620:                                     ; preds = %cond.false.616, %cond.true.612
  %cond621 = phi i32 [ %conv615, %cond.true.612 ], [ %conv619, %cond.false.616 ]
  %conv622 = trunc i32 %cond621 to i8
  store i8 %conv622, i8* %t_pixel, align 1, !tbaa !9
  br label %do.body.623

do.body.623:                                      ; preds = %cond.end.620
  br label %do.cond.624

do.cond.624:                                      ; preds = %do.body.623
  br label %do.end.625

do.end.625:                                       ; preds = %do.cond.624
  %406 = load i64, i64* %const_source, align 8, !tbaa !7
  %conv626 = trunc i64 %406 to i8
  %conv627 = zext i8 %conv626 to i64
  %407 = load i64, i64* %strans, align 8, !tbaa !7
  %cmp628 = icmp eq i64 %conv627, %407
  br i1 %cmp628, label %if.then.634, label %lor.lhs.false.630

lor.lhs.false.630:                                ; preds = %do.end.625
  %408 = load i8, i8* %t_pixel, align 1, !tbaa !9
  %conv631 = zext i8 %408 to i64
  %409 = load i64, i64* %ttrans, align 8, !tbaa !7
  %cmp632 = icmp eq i64 %conv631, %409
  br i1 %cmp632, label %if.then.634, label %if.end.635

if.then.634:                                      ; preds = %lor.lhs.false.630, %do.end.625
  store i32 63, i32* %cleanup.dest.slot
  br label %cleanup.644

if.end.635:                                       ; preds = %lor.lhs.false.630
  %410 = load i32, i32* %rop, align 4, !tbaa !9
  %idxprom636 = zext i32 %410 to i64
  %arrayidx637 = getelementptr inbounds [256 x i64 (i64, i64, i64)*], [256 x i64 (i64, i64, i64)*]* @rop_proc_table, i32 0, i64 %idxprom636
  %411 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %arrayidx637, align 8, !tbaa !1
  %412 = load i8*, i8** %dptr559, align 8, !tbaa !1
  %413 = load i8, i8* %412, align 1, !tbaa !9
  %conv638 = zext i8 %413 to i64
  %414 = load i64, i64* %const_source, align 8, !tbaa !7
  %conv639 = trunc i64 %414 to i8
  %conv640 = zext i8 %conv639 to i64
  %415 = load i8, i8* %t_pixel, align 1, !tbaa !9
  %conv641 = zext i8 %415 to i64
  %call642 = call i64 %411(i64 %conv638, i64 %conv640, i64 %conv641) #3
  %conv643 = trunc i64 %call642 to i8
  %416 = load i8*, i8** %dptr559, align 8, !tbaa !1
  store i8 %conv643, i8* %416, align 1, !tbaa !9
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.644

cleanup.644:                                      ; preds = %if.end.635, %if.then.634
  call void @llvm.lifetime.end(i64 1, i8* %t_pixel) #1
  %cleanup.dest.645 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.645, label %unreachable [
    i32 0, label %cleanup.cont.646
    i32 63, label %for.inc.647
  ]

cleanup.cont.646:                                 ; preds = %cleanup.644
  br label %for.inc.647

for.inc.647:                                      ; preds = %cleanup.cont.646, %cleanup.644
  %417 = load i8*, i8** %dptr559, align 8, !tbaa !1
  %incdec.ptr648 = getelementptr inbounds i8, i8* %417, i32 1
  store i8* %incdec.ptr648, i8** %dptr559, align 8, !tbaa !1
  %418 = load i32, i32* %tx, align 4, !tbaa !5
  %inc649 = add nsw i32 %418, 1
  store i32 %inc649, i32* %tx, align 4, !tbaa !5
  %419 = load i32, i32* %left582, align 4, !tbaa !5
  %dec650 = add nsw i32 %419, -1
  store i32 %dec650, i32* %left582, align 4, !tbaa !5
  br label %for.cond.600

for.end.651:                                      ; preds = %for.cond.600
  br label %if.end.716

if.else.652:                                      ; preds = %if.then.596
  br label %for.cond.653

for.cond.653:                                     ; preds = %for.inc.711, %if.else.652
  %420 = load i32, i32* %left582, align 4, !tbaa !5
  %cmp654 = icmp sgt i32 %420, 0
  br i1 %cmp654, label %for.body.656, label %for.end.715

for.body.656:                                     ; preds = %for.cond.653
  %421 = bitcast i32* %t_pixel657 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %421) #1
  %422 = load i32, i32* %tx, align 4, !tbaa !5
  %shr658 = ashr i32 %422, 3
  %idxprom659 = sext i32 %shr658 to i64
  %423 = load i8*, i8** %tptr, align 8, !tbaa !1
  %arrayidx660 = getelementptr inbounds i8, i8* %423, i64 %idxprom659
  %424 = load i8, i8* %arrayidx660, align 1, !tbaa !9
  %conv661 = zext i8 %424 to i32
  %425 = load i32, i32* %tx, align 4, !tbaa !5
  %and662 = and i32 %425, 7
  %shr663 = ashr i32 128, %and662
  %and664 = and i32 %conv661, %shr663
  %tobool665 = icmp ne i32 %and664, 0
  br i1 %tobool665, label %cond.true.666, label %cond.false.668

cond.true.666:                                    ; preds = %for.body.656
  %426 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %arrayidx667 = getelementptr inbounds i64, i64* %426, i64 1
  %427 = load i64, i64* %arrayidx667, align 8, !tbaa !7
  br label %cond.end.670

cond.false.668:                                   ; preds = %for.body.656
  %428 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %arrayidx669 = getelementptr inbounds i64, i64* %428, i64 0
  %429 = load i64, i64* %arrayidx669, align 8, !tbaa !7
  br label %cond.end.670

cond.end.670:                                     ; preds = %cond.false.668, %cond.true.666
  %cond671 = phi i64 [ %427, %cond.true.666 ], [ %429, %cond.false.668 ]
  %conv672 = trunc i64 %cond671 to i32
  store i32 %conv672, i32* %t_pixel657, align 4, !tbaa !5
  br label %do.body.673

do.body.673:                                      ; preds = %cond.end.670
  br label %do.cond.674

do.cond.674:                                      ; preds = %do.body.673
  br label %do.end.675

do.end.675:                                       ; preds = %do.cond.674
  %430 = load i64, i64* %const_source, align 8, !tbaa !7
  %431 = load i64, i64* %strans, align 8, !tbaa !7
  %cmp676 = icmp eq i64 %430, %431
  br i1 %cmp676, label %if.then.682, label %lor.lhs.false.678

lor.lhs.false.678:                                ; preds = %do.end.675
  %432 = load i32, i32* %t_pixel657, align 4, !tbaa !5
  %conv679 = zext i32 %432 to i64
  %433 = load i64, i64* %ttrans, align 8, !tbaa !7
  %cmp680 = icmp eq i64 %conv679, %433
  br i1 %cmp680, label %if.then.682, label %if.end.683

if.then.682:                                      ; preds = %lor.lhs.false.678, %do.end.675
  store i32 68, i32* %cleanup.dest.slot
  br label %cleanup.708

if.end.683:                                       ; preds = %lor.lhs.false.678
  %434 = bitcast i64* %d_pixel684 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %434) #1
  %435 = load i8*, i8** %dptr559, align 8, !tbaa !1
  %arrayidx685 = getelementptr inbounds i8, i8* %435, i64 0
  %436 = load i8, i8* %arrayidx685, align 1, !tbaa !9
  %conv686 = zext i8 %436 to i64
  %shl687 = shl i64 %conv686, 16
  %437 = load i8*, i8** %dptr559, align 8, !tbaa !1
  %arrayidx688 = getelementptr inbounds i8, i8* %437, i64 1
  %438 = load i8, i8* %arrayidx688, align 1, !tbaa !9
  %conv689 = zext i8 %438 to i64
  %shl690 = shl i64 %conv689, 8
  %or691 = or i64 %shl687, %shl690
  %439 = load i8*, i8** %dptr559, align 8, !tbaa !1
  %arrayidx692 = getelementptr inbounds i8, i8* %439, i64 2
  %440 = load i8, i8* %arrayidx692, align 1, !tbaa !9
  %conv693 = zext i8 %440 to i64
  %or694 = or i64 %or691, %conv693
  store i64 %or694, i64* %d_pixel684, align 8, !tbaa !7
  %441 = load i32, i32* %rop, align 4, !tbaa !9
  %idxprom695 = zext i32 %441 to i64
  %arrayidx696 = getelementptr inbounds [256 x i64 (i64, i64, i64)*], [256 x i64 (i64, i64, i64)*]* @rop_proc_table, i32 0, i64 %idxprom695
  %442 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %arrayidx696, align 8, !tbaa !1
  %443 = load i64, i64* %d_pixel684, align 8, !tbaa !7
  %444 = load i64, i64* %const_source, align 8, !tbaa !7
  %445 = load i32, i32* %t_pixel657, align 4, !tbaa !5
  %conv697 = zext i32 %445 to i64
  %call698 = call i64 %442(i64 %443, i64 %444, i64 %conv697) #3
  store i64 %call698, i64* %d_pixel684, align 8, !tbaa !7
  %446 = load i64, i64* %d_pixel684, align 8, !tbaa !7
  %shr699 = lshr i64 %446, 16
  %conv700 = trunc i64 %shr699 to i8
  %447 = load i8*, i8** %dptr559, align 8, !tbaa !1
  %arrayidx701 = getelementptr inbounds i8, i8* %447, i64 0
  store i8 %conv700, i8* %arrayidx701, align 1, !tbaa !9
  %448 = load i64, i64* %d_pixel684, align 8, !tbaa !7
  %conv702 = trunc i64 %448 to i32
  %shr703 = lshr i32 %conv702, 8
  %conv704 = trunc i32 %shr703 to i8
  %449 = load i8*, i8** %dptr559, align 8, !tbaa !1
  %arrayidx705 = getelementptr inbounds i8, i8* %449, i64 1
  store i8 %conv704, i8* %arrayidx705, align 1, !tbaa !9
  %450 = load i64, i64* %d_pixel684, align 8, !tbaa !7
  %conv706 = trunc i64 %450 to i8
  %451 = load i8*, i8** %dptr559, align 8, !tbaa !1
  %arrayidx707 = getelementptr inbounds i8, i8* %451, i64 2
  store i8 %conv706, i8* %arrayidx707, align 1, !tbaa !9
  %452 = bitcast i64* %d_pixel684 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %452) #1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.708

cleanup.708:                                      ; preds = %if.end.683, %if.then.682
  %453 = bitcast i32* %t_pixel657 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %453) #1
  %cleanup.dest.709 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.709, label %unreachable [
    i32 0, label %cleanup.cont.710
    i32 68, label %for.inc.711
  ]

cleanup.cont.710:                                 ; preds = %cleanup.708
  br label %for.inc.711

for.inc.711:                                      ; preds = %cleanup.cont.710, %cleanup.708
  %454 = load i8*, i8** %dptr559, align 8, !tbaa !1
  %add.ptr712 = getelementptr inbounds i8, i8* %454, i64 3
  store i8* %add.ptr712, i8** %dptr559, align 8, !tbaa !1
  %455 = load i32, i32* %tx, align 4, !tbaa !5
  %inc713 = add nsw i32 %455, 1
  store i32 %inc713, i32* %tx, align 4, !tbaa !5
  %456 = load i32, i32* %left582, align 4, !tbaa !5
  %dec714 = add nsw i32 %456, -1
  store i32 %dec714, i32* %left582, align 4, !tbaa !5
  br label %for.cond.653

for.end.715:                                      ; preds = %for.cond.653
  br label %if.end.716

if.end.716:                                       ; preds = %for.end.715, %for.end.651
  br label %if.end.821

if.else.717:                                      ; preds = %cond.end.593
  %457 = load i32, i32* %bpp, align 4, !tbaa !5
  %cmp718 = icmp eq i32 %457, 1
  br i1 %cmp718, label %if.then.720, label %if.else.757

if.then.720:                                      ; preds = %if.else.717
  %458 = load i32, i32* %tx, align 4, !tbaa !5
  %459 = load i8*, i8** %tptr, align 8, !tbaa !1
  %idx.ext721 = sext i32 %458 to i64
  %add.ptr722 = getelementptr inbounds i8, i8* %459, i64 %idx.ext721
  store i8* %add.ptr722, i8** %tptr, align 8, !tbaa !1
  br label %for.cond.723

for.cond.723:                                     ; preds = %for.inc.752, %if.then.720
  %460 = load i32, i32* %left582, align 4, !tbaa !5
  %cmp724 = icmp sgt i32 %460, 0
  br i1 %cmp724, label %for.body.726, label %for.end.756

for.body.726:                                     ; preds = %for.cond.723
  call void @llvm.lifetime.start(i64 1, i8* %t_pixel727) #1
  %461 = load i8*, i8** %tptr, align 8, !tbaa !1
  %462 = load i8, i8* %461, align 1, !tbaa !9
  store i8 %462, i8* %t_pixel727, align 1, !tbaa !9
  br label %do.body.728

do.body.728:                                      ; preds = %for.body.726
  br label %do.cond.729

do.cond.729:                                      ; preds = %do.body.728
  br label %do.end.730

do.end.730:                                       ; preds = %do.cond.729
  %463 = load i64, i64* %const_source, align 8, !tbaa !7
  %conv731 = trunc i64 %463 to i8
  %conv732 = zext i8 %conv731 to i64
  %464 = load i64, i64* %strans, align 8, !tbaa !7
  %cmp733 = icmp eq i64 %conv732, %464
  br i1 %cmp733, label %if.then.739, label %lor.lhs.false.735

lor.lhs.false.735:                                ; preds = %do.end.730
  %465 = load i8, i8* %t_pixel727, align 1, !tbaa !9
  %conv736 = zext i8 %465 to i64
  %466 = load i64, i64* %ttrans, align 8, !tbaa !7
  %cmp737 = icmp eq i64 %conv736, %466
  br i1 %cmp737, label %if.then.739, label %if.end.740

if.then.739:                                      ; preds = %lor.lhs.false.735, %do.end.730
  store i32 73, i32* %cleanup.dest.slot
  br label %cleanup.749

if.end.740:                                       ; preds = %lor.lhs.false.735
  %467 = load i32, i32* %rop, align 4, !tbaa !9
  %idxprom741 = zext i32 %467 to i64
  %arrayidx742 = getelementptr inbounds [256 x i64 (i64, i64, i64)*], [256 x i64 (i64, i64, i64)*]* @rop_proc_table, i32 0, i64 %idxprom741
  %468 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %arrayidx742, align 8, !tbaa !1
  %469 = load i8*, i8** %dptr559, align 8, !tbaa !1
  %470 = load i8, i8* %469, align 1, !tbaa !9
  %conv743 = zext i8 %470 to i64
  %471 = load i64, i64* %const_source, align 8, !tbaa !7
  %conv744 = trunc i64 %471 to i8
  %conv745 = zext i8 %conv744 to i64
  %472 = load i8, i8* %t_pixel727, align 1, !tbaa !9
  %conv746 = zext i8 %472 to i64
  %call747 = call i64 %468(i64 %conv743, i64 %conv745, i64 %conv746) #3
  %conv748 = trunc i64 %call747 to i8
  %473 = load i8*, i8** %dptr559, align 8, !tbaa !1
  store i8 %conv748, i8* %473, align 1, !tbaa !9
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.749

cleanup.749:                                      ; preds = %if.end.740, %if.then.739
  call void @llvm.lifetime.end(i64 1, i8* %t_pixel727) #1
  %cleanup.dest.750 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.750, label %unreachable [
    i32 0, label %cleanup.cont.751
    i32 73, label %for.inc.752
  ]

cleanup.cont.751:                                 ; preds = %cleanup.749
  br label %for.inc.752

for.inc.752:                                      ; preds = %cleanup.cont.751, %cleanup.749
  %474 = load i8*, i8** %dptr559, align 8, !tbaa !1
  %incdec.ptr753 = getelementptr inbounds i8, i8* %474, i32 1
  store i8* %incdec.ptr753, i8** %dptr559, align 8, !tbaa !1
  %475 = load i8*, i8** %tptr, align 8, !tbaa !1
  %incdec.ptr754 = getelementptr inbounds i8, i8* %475, i32 1
  store i8* %incdec.ptr754, i8** %tptr, align 8, !tbaa !1
  %476 = load i32, i32* %left582, align 4, !tbaa !5
  %dec755 = add nsw i32 %476, -1
  store i32 %dec755, i32* %left582, align 4, !tbaa !5
  br label %for.cond.723

for.end.756:                                      ; preds = %for.cond.723
  br label %if.end.820

if.else.757:                                      ; preds = %if.else.717
  %477 = load i32, i32* %tx, align 4, !tbaa !5
  %mul758 = mul nsw i32 %477, 3
  %478 = load i8*, i8** %tptr, align 8, !tbaa !1
  %idx.ext759 = sext i32 %mul758 to i64
  %add.ptr760 = getelementptr inbounds i8, i8* %478, i64 %idx.ext759
  store i8* %add.ptr760, i8** %tptr, align 8, !tbaa !1
  br label %for.cond.761

for.cond.761:                                     ; preds = %for.inc.815, %if.else.757
  %479 = load i32, i32* %left582, align 4, !tbaa !5
  %cmp762 = icmp sgt i32 %479, 0
  br i1 %cmp762, label %for.body.764, label %for.end.819

for.body.764:                                     ; preds = %for.cond.761
  %480 = bitcast i32* %t_pixel765 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %480) #1
  %481 = load i8*, i8** %tptr, align 8, !tbaa !1
  %arrayidx766 = getelementptr inbounds i8, i8* %481, i64 0
  %482 = load i8, i8* %arrayidx766, align 1, !tbaa !9
  %conv767 = zext i8 %482 to i64
  %shl768 = shl i64 %conv767, 16
  %483 = load i8*, i8** %tptr, align 8, !tbaa !1
  %arrayidx769 = getelementptr inbounds i8, i8* %483, i64 1
  %484 = load i8, i8* %arrayidx769, align 1, !tbaa !9
  %conv770 = zext i8 %484 to i64
  %shl771 = shl i64 %conv770, 8
  %or772 = or i64 %shl768, %shl771
  %485 = load i8*, i8** %tptr, align 8, !tbaa !1
  %arrayidx773 = getelementptr inbounds i8, i8* %485, i64 2
  %486 = load i8, i8* %arrayidx773, align 1, !tbaa !9
  %conv774 = zext i8 %486 to i64
  %or775 = or i64 %or772, %conv774
  %conv776 = trunc i64 %or775 to i32
  store i32 %conv776, i32* %t_pixel765, align 4, !tbaa !5
  br label %do.body.777

do.body.777:                                      ; preds = %for.body.764
  br label %do.cond.778

do.cond.778:                                      ; preds = %do.body.777
  br label %do.end.779

do.end.779:                                       ; preds = %do.cond.778
  %487 = load i64, i64* %const_source, align 8, !tbaa !7
  %488 = load i64, i64* %strans, align 8, !tbaa !7
  %cmp780 = icmp eq i64 %487, %488
  br i1 %cmp780, label %if.then.786, label %lor.lhs.false.782

lor.lhs.false.782:                                ; preds = %do.end.779
  %489 = load i32, i32* %t_pixel765, align 4, !tbaa !5
  %conv783 = zext i32 %489 to i64
  %490 = load i64, i64* %ttrans, align 8, !tbaa !7
  %cmp784 = icmp eq i64 %conv783, %490
  br i1 %cmp784, label %if.then.786, label %if.end.787

if.then.786:                                      ; preds = %lor.lhs.false.782, %do.end.779
  store i32 78, i32* %cleanup.dest.slot
  br label %cleanup.812

if.end.787:                                       ; preds = %lor.lhs.false.782
  %491 = bitcast i64* %d_pixel788 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %491) #1
  %492 = load i8*, i8** %dptr559, align 8, !tbaa !1
  %arrayidx789 = getelementptr inbounds i8, i8* %492, i64 0
  %493 = load i8, i8* %arrayidx789, align 1, !tbaa !9
  %conv790 = zext i8 %493 to i64
  %shl791 = shl i64 %conv790, 16
  %494 = load i8*, i8** %dptr559, align 8, !tbaa !1
  %arrayidx792 = getelementptr inbounds i8, i8* %494, i64 1
  %495 = load i8, i8* %arrayidx792, align 1, !tbaa !9
  %conv793 = zext i8 %495 to i64
  %shl794 = shl i64 %conv793, 8
  %or795 = or i64 %shl791, %shl794
  %496 = load i8*, i8** %dptr559, align 8, !tbaa !1
  %arrayidx796 = getelementptr inbounds i8, i8* %496, i64 2
  %497 = load i8, i8* %arrayidx796, align 1, !tbaa !9
  %conv797 = zext i8 %497 to i64
  %or798 = or i64 %or795, %conv797
  store i64 %or798, i64* %d_pixel788, align 8, !tbaa !7
  %498 = load i32, i32* %rop, align 4, !tbaa !9
  %idxprom799 = zext i32 %498 to i64
  %arrayidx800 = getelementptr inbounds [256 x i64 (i64, i64, i64)*], [256 x i64 (i64, i64, i64)*]* @rop_proc_table, i32 0, i64 %idxprom799
  %499 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %arrayidx800, align 8, !tbaa !1
  %500 = load i64, i64* %d_pixel788, align 8, !tbaa !7
  %501 = load i64, i64* %const_source, align 8, !tbaa !7
  %502 = load i32, i32* %t_pixel765, align 4, !tbaa !5
  %conv801 = zext i32 %502 to i64
  %call802 = call i64 %499(i64 %500, i64 %501, i64 %conv801) #3
  store i64 %call802, i64* %d_pixel788, align 8, !tbaa !7
  %503 = load i64, i64* %d_pixel788, align 8, !tbaa !7
  %shr803 = lshr i64 %503, 16
  %conv804 = trunc i64 %shr803 to i8
  %504 = load i8*, i8** %dptr559, align 8, !tbaa !1
  %arrayidx805 = getelementptr inbounds i8, i8* %504, i64 0
  store i8 %conv804, i8* %arrayidx805, align 1, !tbaa !9
  %505 = load i64, i64* %d_pixel788, align 8, !tbaa !7
  %conv806 = trunc i64 %505 to i32
  %shr807 = lshr i32 %conv806, 8
  %conv808 = trunc i32 %shr807 to i8
  %506 = load i8*, i8** %dptr559, align 8, !tbaa !1
  %arrayidx809 = getelementptr inbounds i8, i8* %506, i64 1
  store i8 %conv808, i8* %arrayidx809, align 1, !tbaa !9
  %507 = load i64, i64* %d_pixel788, align 8, !tbaa !7
  %conv810 = trunc i64 %507 to i8
  %508 = load i8*, i8** %dptr559, align 8, !tbaa !1
  %arrayidx811 = getelementptr inbounds i8, i8* %508, i64 2
  store i8 %conv810, i8* %arrayidx811, align 1, !tbaa !9
  %509 = bitcast i64* %d_pixel788 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %509) #1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.812

cleanup.812:                                      ; preds = %if.end.787, %if.then.786
  %510 = bitcast i32* %t_pixel765 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %510) #1
  %cleanup.dest.813 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.813, label %unreachable [
    i32 0, label %cleanup.cont.814
    i32 78, label %for.inc.815
  ]

cleanup.cont.814:                                 ; preds = %cleanup.812
  br label %for.inc.815

for.inc.815:                                      ; preds = %cleanup.cont.814, %cleanup.812
  %511 = load i8*, i8** %dptr559, align 8, !tbaa !1
  %add.ptr816 = getelementptr inbounds i8, i8* %511, i64 3
  store i8* %add.ptr816, i8** %dptr559, align 8, !tbaa !1
  %512 = load i8*, i8** %tptr, align 8, !tbaa !1
  %add.ptr817 = getelementptr inbounds i8, i8* %512, i64 3
  store i8* %add.ptr817, i8** %tptr, align 8, !tbaa !1
  %513 = load i32, i32* %left582, align 4, !tbaa !5
  %dec818 = add nsw i32 %513, -1
  store i32 %dec818, i32* %left582, align 4, !tbaa !5
  br label %for.cond.761

for.end.819:                                      ; preds = %for.cond.761
  br label %if.end.820

if.end.820:                                       ; preds = %for.end.819, %for.end.756
  br label %if.end.821

if.end.821:                                       ; preds = %if.end.820, %if.end.716
  %514 = bitcast i8** %tptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %514) #1
  %515 = bitcast i32* %left582 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %515) #1
  %516 = bitcast i32* %tx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %516) #1
  br label %for.inc.822

for.inc.822:                                      ; preds = %if.end.821
  %517 = load i32, i32* %nw, align 4, !tbaa !5
  %518 = load i32, i32* %dx, align 4, !tbaa !5
  %add823 = add nsw i32 %518, %517
  store i32 %add823, i32* %dx, align 4, !tbaa !5
  %519 = load i32, i32* %nw, align 4, !tbaa !5
  %520 = load i32, i32* %w, align 4, !tbaa !5
  %sub824 = sub nsw i32 %520, %519
  store i32 %sub824, i32* %w, align 4, !tbaa !5
  br label %for.cond.575

for.end.825:                                      ; preds = %for.cond.575
  %521 = bitcast i32* %xoff to i8*
  call void @llvm.lifetime.end(i64 4, i8* %521) #1
  %522 = bitcast i8** %trow to i8*
  call void @llvm.lifetime.end(i64 8, i8* %522) #1
  %523 = bitcast i8** %dptr559 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %523) #1
  %524 = bitcast i32* %nw to i8*
  call void @llvm.lifetime.end(i64 4, i8* %524) #1
  %525 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %525) #1
  %526 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %526) #1
  br label %for.inc.826

for.inc.826:                                      ; preds = %for.end.825
  %527 = load i32, i32* %draster, align 4, !tbaa !5
  %528 = load i8*, i8** %drow, align 8, !tbaa !1
  %idx.ext827 = zext i32 %527 to i64
  %add.ptr828 = getelementptr inbounds i8, i8* %528, i64 %idx.ext827
  store i8* %add.ptr828, i8** %drow, align 8, !tbaa !1
  %529 = load i32, i32* %ty, align 4, !tbaa !5
  %inc829 = add nsw i32 %529, 1
  store i32 %inc829, i32* %ty, align 4, !tbaa !5
  br label %for.cond.554

for.end.830:                                      ; preds = %for.cond.554
  %530 = bitcast i32* %ty to i8*
  call void @llvm.lifetime.end(i64 4, i8* %530) #1
  %531 = bitcast i32* %traster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %531) #1
  br label %if.end.1124

if.else.831:                                      ; preds = %if.else.548
  %532 = bitcast i32* %traster832 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %532) #1
  %533 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %raster833 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %533, i32 0, i32 1
  %534 = load i32, i32* %raster833, align 4, !tbaa !38
  store i32 %534, i32* %traster832, align 4, !tbaa !5
  %535 = bitcast i32* %ty834 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %535) #1
  %536 = load i32, i32* %y.addr, align 4, !tbaa !5
  %537 = load i32, i32* %phase_y.addr, align 4, !tbaa !5
  %add835 = add nsw i32 %536, %537
  store i32 %add835, i32* %ty834, align 4, !tbaa !5
  %538 = bitcast i8** %srow836 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %538) #1
  %539 = load i8*, i8** %sdata.addr, align 8, !tbaa !1
  store i8* %539, i8** %srow836, align 8, !tbaa !1
  br label %for.cond.837

for.cond.837:                                     ; preds = %for.inc.1117, %if.else.831
  %540 = load i32, i32* %line_count, align 4, !tbaa !5
  %dec838 = add nsw i32 %540, -1
  store i32 %dec838, i32* %line_count, align 4, !tbaa !5
  %cmp839 = icmp sgt i32 %540, 0
  br i1 %cmp839, label %for.body.841, label %for.end.1123

for.body.841:                                     ; preds = %for.cond.837
  %541 = bitcast i32* %sx842 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %541) #1
  %542 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 %542, i32* %sx842, align 4, !tbaa !5
  %543 = bitcast i32* %dx843 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %543) #1
  %544 = load i32, i32* %x.addr, align 4, !tbaa !5
  store i32 %544, i32* %dx843, align 4, !tbaa !5
  %545 = bitcast i32* %w844 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %545) #1
  %546 = load i32, i32* %width.addr, align 4, !tbaa !5
  store i32 %546, i32* %w844, align 4, !tbaa !5
  %547 = bitcast i32* %nw845 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %547) #1
  %548 = bitcast i8** %dptr846 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %548) #1
  %549 = load i8*, i8** %drow, align 8, !tbaa !1
  store i8* %549, i8** %dptr846, align 8, !tbaa !1
  %550 = bitcast i8** %trow847 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %550) #1
  %551 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %data848 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %551, i32 0, i32 0
  %552 = load i8*, i8** %data848, align 8, !tbaa !41
  %553 = load i32, i32* %ty834, align 4, !tbaa !5
  %554 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %size849 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %554, i32 0, i32 2
  %y850 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size849, i32 0, i32 1
  %555 = load i32, i32* %y850, align 4, !tbaa !42
  %rem851 = srem i32 %553, %555
  %556 = load i32, i32* %traster832, align 4, !tbaa !5
  %mul852 = mul i32 %rem851, %556
  %idx.ext853 = zext i32 %mul852 to i64
  %add.ptr854 = getelementptr inbounds i8, i8* %552, i64 %idx.ext853
  store i8* %add.ptr854, i8** %trow847, align 8, !tbaa !1
  %557 = bitcast i32* %xoff855 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %557) #1
  %558 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %shift856 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %558, i32 0, i32 7
  %559 = load i16, i16* %shift856, align 2, !tbaa !43
  %conv857 = zext i16 %559 to i32
  %cmp858 = icmp eq i32 %conv857, 0
  br i1 %cmp858, label %cond.true.860, label %cond.false.861

cond.true.860:                                    ; preds = %for.body.841
  %560 = load i32, i32* %phase_x.addr, align 4, !tbaa !5
  br label %cond.end.869

cond.false.861:                                   ; preds = %for.body.841
  %561 = load i32, i32* %phase_x.addr, align 4, !tbaa !5
  %562 = load i32, i32* %ty834, align 4, !tbaa !5
  %563 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %rep_height862 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %563, i32 0, i32 5
  %564 = load i16, i16* %rep_height862, align 2, !tbaa !44
  %conv863 = zext i16 %564 to i32
  %div864 = sdiv i32 %562, %conv863
  %565 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %rep_shift865 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %565, i32 0, i32 6
  %566 = load i16, i16* %rep_shift865, align 2, !tbaa !45
  %conv866 = zext i16 %566 to i32
  %mul867 = mul nsw i32 %div864, %conv866
  %add868 = add nsw i32 %561, %mul867
  br label %cond.end.869

cond.end.869:                                     ; preds = %cond.false.861, %cond.true.860
  %cond870 = phi i32 [ %560, %cond.true.860 ], [ %add868, %cond.false.861 ]
  store i32 %cond870, i32* %xoff855, align 4, !tbaa !5
  br label %for.cond.871

for.cond.871:                                     ; preds = %for.inc.1113, %cond.end.869
  %567 = load i32, i32* %w844, align 4, !tbaa !5
  %cmp872 = icmp sgt i32 %567, 0
  br i1 %cmp872, label %for.body.874, label %for.end.1116

for.body.874:                                     ; preds = %for.cond.871
  %568 = bitcast i32* %tx875 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %568) #1
  %569 = load i32, i32* %dx843, align 4, !tbaa !5
  %570 = load i32, i32* %xoff855, align 4, !tbaa !5
  %add876 = add nsw i32 %569, %570
  %571 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %rep_width877 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %571, i32 0, i32 4
  %572 = load i16, i16* %rep_width877, align 2, !tbaa !46
  %conv878 = zext i16 %572 to i32
  %rem879 = srem i32 %add876, %conv878
  store i32 %rem879, i32* %tx875, align 4, !tbaa !5
  %573 = bitcast i32* %left880 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %573) #1
  %574 = load i32, i32* %w844, align 4, !tbaa !5
  %575 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %size881 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %575, i32 0, i32 2
  %x882 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size881, i32 0, i32 0
  %576 = load i32, i32* %x882, align 4, !tbaa !47
  %577 = load i32, i32* %tx875, align 4, !tbaa !5
  %sub883 = sub nsw i32 %576, %577
  %cmp884 = icmp slt i32 %574, %sub883
  br i1 %cmp884, label %cond.true.886, label %cond.false.887

cond.true.886:                                    ; preds = %for.body.874
  %578 = load i32, i32* %w844, align 4, !tbaa !5
  br label %cond.end.891

cond.false.887:                                   ; preds = %for.body.874
  %579 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %size888 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %579, i32 0, i32 2
  %x889 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size888, i32 0, i32 0
  %580 = load i32, i32* %x889, align 4, !tbaa !47
  %581 = load i32, i32* %tx875, align 4, !tbaa !5
  %sub890 = sub nsw i32 %580, %581
  br label %cond.end.891

cond.end.891:                                     ; preds = %cond.false.887, %cond.true.886
  %cond892 = phi i32 [ %578, %cond.true.886 ], [ %sub890, %cond.false.887 ]
  store i32 %cond892, i32* %nw845, align 4, !tbaa !5
  store i32 %cond892, i32* %left880, align 4, !tbaa !5
  %582 = bitcast i8** %tptr893 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %582) #1
  %583 = load i8*, i8** %trow847, align 8, !tbaa !1
  store i8* %583, i8** %tptr893, align 8, !tbaa !1
  %584 = load i32, i32* %bpp, align 4, !tbaa !5
  %cmp894 = icmp eq i32 %584, 1
  br i1 %cmp894, label %if.then.896, label %if.else.989

if.then.896:                                      ; preds = %cond.end.891
  %585 = bitcast i8** %sptr897 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %585) #1
  %586 = load i8*, i8** %srow836, align 8, !tbaa !1
  %587 = load i32, i32* %sx842, align 4, !tbaa !5
  %idx.ext898 = sext i32 %587 to i64
  %add.ptr899 = getelementptr inbounds i8, i8* %586, i64 %idx.ext898
  store i8* %add.ptr899, i8** %sptr897, align 8, !tbaa !1
  %588 = load i32, i32* %tx875, align 4, !tbaa !5
  %589 = load i8*, i8** %tptr893, align 8, !tbaa !1
  %idx.ext900 = sext i32 %588 to i64
  %add.ptr901 = getelementptr inbounds i8, i8* %589, i64 %idx.ext900
  store i8* %add.ptr901, i8** %tptr893, align 8, !tbaa !1
  br label %for.cond.902

for.cond.902:                                     ; preds = %for.inc.981, %if.then.896
  %590 = load i32, i32* %left880, align 4, !tbaa !5
  %cmp903 = icmp sgt i32 %590, 0
  br i1 %cmp903, label %for.body.905, label %for.end.988

for.body.905:                                     ; preds = %for.cond.902
  call void @llvm.lifetime.start(i64 1, i8* %s_pixel906) #1
  %591 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %tobool907 = icmp ne i64* %591, null
  br i1 %tobool907, label %cond.true.908, label %cond.false.927

cond.true.908:                                    ; preds = %for.body.905
  %592 = load i32, i32* %sx842, align 4, !tbaa !5
  %shr909 = ashr i32 %592, 3
  %idxprom910 = sext i32 %shr909 to i64
  %593 = load i8*, i8** %srow836, align 8, !tbaa !1
  %arrayidx911 = getelementptr inbounds i8, i8* %593, i64 %idxprom910
  %594 = load i8, i8* %arrayidx911, align 1, !tbaa !9
  %conv912 = zext i8 %594 to i32
  %595 = load i32, i32* %sx842, align 4, !tbaa !5
  %and913 = and i32 %595, 7
  %shr914 = ashr i32 128, %and913
  %and915 = and i32 %conv912, %shr914
  %tobool916 = icmp ne i32 %and915, 0
  br i1 %tobool916, label %cond.true.917, label %cond.false.921

cond.true.917:                                    ; preds = %cond.true.908
  %596 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %arrayidx918 = getelementptr inbounds i64, i64* %596, i64 1
  %597 = load i64, i64* %arrayidx918, align 8, !tbaa !7
  %conv919 = trunc i64 %597 to i8
  %conv920 = zext i8 %conv919 to i32
  br label %cond.end.925

cond.false.921:                                   ; preds = %cond.true.908
  %598 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %arrayidx922 = getelementptr inbounds i64, i64* %598, i64 0
  %599 = load i64, i64* %arrayidx922, align 8, !tbaa !7
  %conv923 = trunc i64 %599 to i8
  %conv924 = zext i8 %conv923 to i32
  br label %cond.end.925

cond.end.925:                                     ; preds = %cond.false.921, %cond.true.917
  %cond926 = phi i32 [ %conv920, %cond.true.917 ], [ %conv924, %cond.false.921 ]
  br label %cond.end.929

cond.false.927:                                   ; preds = %for.body.905
  %600 = load i8*, i8** %sptr897, align 8, !tbaa !1
  %601 = load i8, i8* %600, align 1, !tbaa !9
  %conv928 = zext i8 %601 to i32
  br label %cond.end.929

cond.end.929:                                     ; preds = %cond.false.927, %cond.end.925
  %cond930 = phi i32 [ %cond926, %cond.end.925 ], [ %conv928, %cond.false.927 ]
  %conv931 = trunc i32 %cond930 to i8
  store i8 %conv931, i8* %s_pixel906, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %t_pixel932) #1
  %602 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %tobool933 = icmp ne i64* %602, null
  br i1 %tobool933, label %cond.true.934, label %cond.false.953

cond.true.934:                                    ; preds = %cond.end.929
  %603 = load i32, i32* %tx875, align 4, !tbaa !5
  %shr935 = ashr i32 %603, 3
  %idxprom936 = sext i32 %shr935 to i64
  %604 = load i8*, i8** %tptr893, align 8, !tbaa !1
  %arrayidx937 = getelementptr inbounds i8, i8* %604, i64 %idxprom936
  %605 = load i8, i8* %arrayidx937, align 1, !tbaa !9
  %conv938 = zext i8 %605 to i32
  %606 = load i32, i32* %tx875, align 4, !tbaa !5
  %and939 = and i32 %606, 7
  %shr940 = ashr i32 128, %and939
  %and941 = and i32 %conv938, %shr940
  %tobool942 = icmp ne i32 %and941, 0
  br i1 %tobool942, label %cond.true.943, label %cond.false.947

cond.true.943:                                    ; preds = %cond.true.934
  %607 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %arrayidx944 = getelementptr inbounds i64, i64* %607, i64 1
  %608 = load i64, i64* %arrayidx944, align 8, !tbaa !7
  %conv945 = trunc i64 %608 to i8
  %conv946 = zext i8 %conv945 to i32
  br label %cond.end.951

cond.false.947:                                   ; preds = %cond.true.934
  %609 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %arrayidx948 = getelementptr inbounds i64, i64* %609, i64 0
  %610 = load i64, i64* %arrayidx948, align 8, !tbaa !7
  %conv949 = trunc i64 %610 to i8
  %conv950 = zext i8 %conv949 to i32
  br label %cond.end.951

cond.end.951:                                     ; preds = %cond.false.947, %cond.true.943
  %cond952 = phi i32 [ %conv946, %cond.true.943 ], [ %conv950, %cond.false.947 ]
  br label %cond.end.955

cond.false.953:                                   ; preds = %cond.end.929
  %611 = load i8*, i8** %tptr893, align 8, !tbaa !1
  %612 = load i8, i8* %611, align 1, !tbaa !9
  %conv954 = zext i8 %612 to i32
  br label %cond.end.955

cond.end.955:                                     ; preds = %cond.false.953, %cond.end.951
  %cond956 = phi i32 [ %cond952, %cond.end.951 ], [ %conv954, %cond.false.953 ]
  %conv957 = trunc i32 %cond956 to i8
  store i8 %conv957, i8* %t_pixel932, align 1, !tbaa !9
  br label %do.body.958

do.body.958:                                      ; preds = %cond.end.955
  br label %do.cond.959

do.cond.959:                                      ; preds = %do.body.958
  br label %do.end.960

do.end.960:                                       ; preds = %do.cond.959
  %613 = load i8, i8* %s_pixel906, align 1, !tbaa !9
  %conv961 = zext i8 %613 to i64
  %614 = load i64, i64* %strans, align 8, !tbaa !7
  %cmp962 = icmp eq i64 %conv961, %614
  br i1 %cmp962, label %if.then.968, label %lor.lhs.false.964

lor.lhs.false.964:                                ; preds = %do.end.960
  %615 = load i8, i8* %t_pixel932, align 1, !tbaa !9
  %conv965 = zext i8 %615 to i64
  %616 = load i64, i64* %ttrans, align 8, !tbaa !7
  %cmp966 = icmp eq i64 %conv965, %616
  br i1 %cmp966, label %if.then.968, label %if.end.969

if.then.968:                                      ; preds = %lor.lhs.false.964, %do.end.960
  store i32 89, i32* %cleanup.dest.slot
  br label %cleanup.977

if.end.969:                                       ; preds = %lor.lhs.false.964
  %617 = load i32, i32* %rop, align 4, !tbaa !9
  %idxprom970 = zext i32 %617 to i64
  %arrayidx971 = getelementptr inbounds [256 x i64 (i64, i64, i64)*], [256 x i64 (i64, i64, i64)*]* @rop_proc_table, i32 0, i64 %idxprom970
  %618 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %arrayidx971, align 8, !tbaa !1
  %619 = load i8*, i8** %dptr846, align 8, !tbaa !1
  %620 = load i8, i8* %619, align 1, !tbaa !9
  %conv972 = zext i8 %620 to i64
  %621 = load i8, i8* %s_pixel906, align 1, !tbaa !9
  %conv973 = zext i8 %621 to i64
  %622 = load i8, i8* %t_pixel932, align 1, !tbaa !9
  %conv974 = zext i8 %622 to i64
  %call975 = call i64 %618(i64 %conv972, i64 %conv973, i64 %conv974) #3
  %conv976 = trunc i64 %call975 to i8
  %623 = load i8*, i8** %dptr846, align 8, !tbaa !1
  store i8 %conv976, i8* %623, align 1, !tbaa !9
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.977

cleanup.977:                                      ; preds = %if.end.969, %if.then.968
  call void @llvm.lifetime.end(i64 1, i8* %t_pixel932) #1
  call void @llvm.lifetime.end(i64 1, i8* %s_pixel906) #1
  %cleanup.dest.979 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.979, label %unreachable [
    i32 0, label %cleanup.cont.980
    i32 89, label %for.inc.981
  ]

cleanup.cont.980:                                 ; preds = %cleanup.977
  br label %for.inc.981

for.inc.981:                                      ; preds = %cleanup.cont.980, %cleanup.977
  %624 = load i8*, i8** %dptr846, align 8, !tbaa !1
  %incdec.ptr982 = getelementptr inbounds i8, i8* %624, i32 1
  store i8* %incdec.ptr982, i8** %dptr846, align 8, !tbaa !1
  %625 = load i8*, i8** %sptr897, align 8, !tbaa !1
  %incdec.ptr983 = getelementptr inbounds i8, i8* %625, i32 1
  store i8* %incdec.ptr983, i8** %sptr897, align 8, !tbaa !1
  %626 = load i8*, i8** %tptr893, align 8, !tbaa !1
  %incdec.ptr984 = getelementptr inbounds i8, i8* %626, i32 1
  store i8* %incdec.ptr984, i8** %tptr893, align 8, !tbaa !1
  %627 = load i32, i32* %sx842, align 4, !tbaa !5
  %inc985 = add nsw i32 %627, 1
  store i32 %inc985, i32* %sx842, align 4, !tbaa !5
  %628 = load i32, i32* %tx875, align 4, !tbaa !5
  %inc986 = add nsw i32 %628, 1
  store i32 %inc986, i32* %tx875, align 4, !tbaa !5
  %629 = load i32, i32* %left880, align 4, !tbaa !5
  %dec987 = add nsw i32 %629, -1
  store i32 %dec987, i32* %left880, align 4, !tbaa !5
  br label %for.cond.902

for.end.988:                                      ; preds = %for.cond.902
  %630 = bitcast i8** %sptr897 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %630) #1
  br label %if.end.1112

if.else.989:                                      ; preds = %cond.end.891
  %631 = bitcast i8** %sptr990 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %631) #1
  %632 = load i8*, i8** %srow836, align 8, !tbaa !1
  %633 = load i32, i32* %sx842, align 4, !tbaa !5
  %mul991 = mul nsw i32 %633, 3
  %idx.ext992 = sext i32 %mul991 to i64
  %add.ptr993 = getelementptr inbounds i8, i8* %632, i64 %idx.ext992
  store i8* %add.ptr993, i8** %sptr990, align 8, !tbaa !1
  %634 = load i32, i32* %tx875, align 4, !tbaa !5
  %mul994 = mul nsw i32 %634, 3
  %635 = load i8*, i8** %tptr893, align 8, !tbaa !1
  %idx.ext995 = sext i32 %mul994 to i64
  %add.ptr996 = getelementptr inbounds i8, i8* %635, i64 %idx.ext995
  store i8* %add.ptr996, i8** %tptr893, align 8, !tbaa !1
  br label %for.cond.997

for.cond.997:                                     ; preds = %for.inc.1104, %if.else.989
  %636 = load i32, i32* %left880, align 4, !tbaa !5
  %cmp998 = icmp sgt i32 %636, 0
  br i1 %cmp998, label %for.body.1000, label %for.end.1111

for.body.1000:                                    ; preds = %for.cond.997
  %637 = bitcast i32* %s_pixel1001 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %637) #1
  %638 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %tobool1002 = icmp ne i64* %638, null
  br i1 %tobool1002, label %cond.true.1003, label %cond.false.1018

cond.true.1003:                                   ; preds = %for.body.1000
  %639 = load i32, i32* %sx842, align 4, !tbaa !5
  %shr1004 = ashr i32 %639, 3
  %idxprom1005 = sext i32 %shr1004 to i64
  %640 = load i8*, i8** %srow836, align 8, !tbaa !1
  %arrayidx1006 = getelementptr inbounds i8, i8* %640, i64 %idxprom1005
  %641 = load i8, i8* %arrayidx1006, align 1, !tbaa !9
  %conv1007 = zext i8 %641 to i32
  %642 = load i32, i32* %sx842, align 4, !tbaa !5
  %and1008 = and i32 %642, 7
  %shr1009 = ashr i32 128, %and1008
  %and1010 = and i32 %conv1007, %shr1009
  %tobool1011 = icmp ne i32 %and1010, 0
  br i1 %tobool1011, label %cond.true.1012, label %cond.false.1014

cond.true.1012:                                   ; preds = %cond.true.1003
  %643 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %arrayidx1013 = getelementptr inbounds i64, i64* %643, i64 1
  %644 = load i64, i64* %arrayidx1013, align 8, !tbaa !7
  br label %cond.end.1016

cond.false.1014:                                  ; preds = %cond.true.1003
  %645 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %arrayidx1015 = getelementptr inbounds i64, i64* %645, i64 0
  %646 = load i64, i64* %arrayidx1015, align 8, !tbaa !7
  br label %cond.end.1016

cond.end.1016:                                    ; preds = %cond.false.1014, %cond.true.1012
  %cond1017 = phi i64 [ %644, %cond.true.1012 ], [ %646, %cond.false.1014 ]
  br label %cond.end.1029

cond.false.1018:                                  ; preds = %for.body.1000
  %647 = load i8*, i8** %sptr990, align 8, !tbaa !1
  %arrayidx1019 = getelementptr inbounds i8, i8* %647, i64 0
  %648 = load i8, i8* %arrayidx1019, align 1, !tbaa !9
  %conv1020 = zext i8 %648 to i64
  %shl1021 = shl i64 %conv1020, 16
  %649 = load i8*, i8** %sptr990, align 8, !tbaa !1
  %arrayidx1022 = getelementptr inbounds i8, i8* %649, i64 1
  %650 = load i8, i8* %arrayidx1022, align 1, !tbaa !9
  %conv1023 = zext i8 %650 to i64
  %shl1024 = shl i64 %conv1023, 8
  %or1025 = or i64 %shl1021, %shl1024
  %651 = load i8*, i8** %sptr990, align 8, !tbaa !1
  %arrayidx1026 = getelementptr inbounds i8, i8* %651, i64 2
  %652 = load i8, i8* %arrayidx1026, align 1, !tbaa !9
  %conv1027 = zext i8 %652 to i64
  %or1028 = or i64 %or1025, %conv1027
  br label %cond.end.1029

cond.end.1029:                                    ; preds = %cond.false.1018, %cond.end.1016
  %cond1030 = phi i64 [ %cond1017, %cond.end.1016 ], [ %or1028, %cond.false.1018 ]
  %conv1031 = trunc i64 %cond1030 to i32
  store i32 %conv1031, i32* %s_pixel1001, align 4, !tbaa !5
  %653 = bitcast i32* %t_pixel1032 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %653) #1
  %654 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %tobool1033 = icmp ne i64* %654, null
  br i1 %tobool1033, label %cond.true.1034, label %cond.false.1049

cond.true.1034:                                   ; preds = %cond.end.1029
  %655 = load i32, i32* %tx875, align 4, !tbaa !5
  %shr1035 = ashr i32 %655, 3
  %idxprom1036 = sext i32 %shr1035 to i64
  %656 = load i8*, i8** %tptr893, align 8, !tbaa !1
  %arrayidx1037 = getelementptr inbounds i8, i8* %656, i64 %idxprom1036
  %657 = load i8, i8* %arrayidx1037, align 1, !tbaa !9
  %conv1038 = zext i8 %657 to i32
  %658 = load i32, i32* %tx875, align 4, !tbaa !5
  %and1039 = and i32 %658, 7
  %shr1040 = ashr i32 128, %and1039
  %and1041 = and i32 %conv1038, %shr1040
  %tobool1042 = icmp ne i32 %and1041, 0
  br i1 %tobool1042, label %cond.true.1043, label %cond.false.1045

cond.true.1043:                                   ; preds = %cond.true.1034
  %659 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %arrayidx1044 = getelementptr inbounds i64, i64* %659, i64 1
  %660 = load i64, i64* %arrayidx1044, align 8, !tbaa !7
  br label %cond.end.1047

cond.false.1045:                                  ; preds = %cond.true.1034
  %661 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %arrayidx1046 = getelementptr inbounds i64, i64* %661, i64 0
  %662 = load i64, i64* %arrayidx1046, align 8, !tbaa !7
  br label %cond.end.1047

cond.end.1047:                                    ; preds = %cond.false.1045, %cond.true.1043
  %cond1048 = phi i64 [ %660, %cond.true.1043 ], [ %662, %cond.false.1045 ]
  br label %cond.end.1060

cond.false.1049:                                  ; preds = %cond.end.1029
  %663 = load i8*, i8** %tptr893, align 8, !tbaa !1
  %arrayidx1050 = getelementptr inbounds i8, i8* %663, i64 0
  %664 = load i8, i8* %arrayidx1050, align 1, !tbaa !9
  %conv1051 = zext i8 %664 to i64
  %shl1052 = shl i64 %conv1051, 16
  %665 = load i8*, i8** %tptr893, align 8, !tbaa !1
  %arrayidx1053 = getelementptr inbounds i8, i8* %665, i64 1
  %666 = load i8, i8* %arrayidx1053, align 1, !tbaa !9
  %conv1054 = zext i8 %666 to i64
  %shl1055 = shl i64 %conv1054, 8
  %or1056 = or i64 %shl1052, %shl1055
  %667 = load i8*, i8** %tptr893, align 8, !tbaa !1
  %arrayidx1057 = getelementptr inbounds i8, i8* %667, i64 2
  %668 = load i8, i8* %arrayidx1057, align 1, !tbaa !9
  %conv1058 = zext i8 %668 to i64
  %or1059 = or i64 %or1056, %conv1058
  br label %cond.end.1060

cond.end.1060:                                    ; preds = %cond.false.1049, %cond.end.1047
  %cond1061 = phi i64 [ %cond1048, %cond.end.1047 ], [ %or1059, %cond.false.1049 ]
  %conv1062 = trunc i64 %cond1061 to i32
  store i32 %conv1062, i32* %t_pixel1032, align 4, !tbaa !5
  br label %do.body.1063

do.body.1063:                                     ; preds = %cond.end.1060
  br label %do.cond.1064

do.cond.1064:                                     ; preds = %do.body.1063
  br label %do.end.1065

do.end.1065:                                      ; preds = %do.cond.1064
  %669 = load i32, i32* %s_pixel1001, align 4, !tbaa !5
  %conv1066 = zext i32 %669 to i64
  %670 = load i64, i64* %strans, align 8, !tbaa !7
  %cmp1067 = icmp eq i64 %conv1066, %670
  br i1 %cmp1067, label %if.then.1073, label %lor.lhs.false.1069

lor.lhs.false.1069:                               ; preds = %do.end.1065
  %671 = load i32, i32* %t_pixel1032, align 4, !tbaa !5
  %conv1070 = zext i32 %671 to i64
  %672 = load i64, i64* %ttrans, align 8, !tbaa !7
  %cmp1071 = icmp eq i64 %conv1070, %672
  br i1 %cmp1071, label %if.then.1073, label %if.end.1074

if.then.1073:                                     ; preds = %lor.lhs.false.1069, %do.end.1065
  store i32 94, i32* %cleanup.dest.slot
  br label %cleanup.1100

if.end.1074:                                      ; preds = %lor.lhs.false.1069
  %673 = bitcast i64* %d_pixel1075 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %673) #1
  %674 = load i8*, i8** %dptr846, align 8, !tbaa !1
  %arrayidx1076 = getelementptr inbounds i8, i8* %674, i64 0
  %675 = load i8, i8* %arrayidx1076, align 1, !tbaa !9
  %conv1077 = zext i8 %675 to i64
  %shl1078 = shl i64 %conv1077, 16
  %676 = load i8*, i8** %dptr846, align 8, !tbaa !1
  %arrayidx1079 = getelementptr inbounds i8, i8* %676, i64 1
  %677 = load i8, i8* %arrayidx1079, align 1, !tbaa !9
  %conv1080 = zext i8 %677 to i64
  %shl1081 = shl i64 %conv1080, 8
  %or1082 = or i64 %shl1078, %shl1081
  %678 = load i8*, i8** %dptr846, align 8, !tbaa !1
  %arrayidx1083 = getelementptr inbounds i8, i8* %678, i64 2
  %679 = load i8, i8* %arrayidx1083, align 1, !tbaa !9
  %conv1084 = zext i8 %679 to i64
  %or1085 = or i64 %or1082, %conv1084
  store i64 %or1085, i64* %d_pixel1075, align 8, !tbaa !7
  %680 = load i32, i32* %rop, align 4, !tbaa !9
  %idxprom1086 = zext i32 %680 to i64
  %arrayidx1087 = getelementptr inbounds [256 x i64 (i64, i64, i64)*], [256 x i64 (i64, i64, i64)*]* @rop_proc_table, i32 0, i64 %idxprom1086
  %681 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %arrayidx1087, align 8, !tbaa !1
  %682 = load i64, i64* %d_pixel1075, align 8, !tbaa !7
  %683 = load i32, i32* %s_pixel1001, align 4, !tbaa !5
  %conv1088 = zext i32 %683 to i64
  %684 = load i32, i32* %t_pixel1032, align 4, !tbaa !5
  %conv1089 = zext i32 %684 to i64
  %call1090 = call i64 %681(i64 %682, i64 %conv1088, i64 %conv1089) #3
  store i64 %call1090, i64* %d_pixel1075, align 8, !tbaa !7
  %685 = load i64, i64* %d_pixel1075, align 8, !tbaa !7
  %shr1091 = lshr i64 %685, 16
  %conv1092 = trunc i64 %shr1091 to i8
  %686 = load i8*, i8** %dptr846, align 8, !tbaa !1
  %arrayidx1093 = getelementptr inbounds i8, i8* %686, i64 0
  store i8 %conv1092, i8* %arrayidx1093, align 1, !tbaa !9
  %687 = load i64, i64* %d_pixel1075, align 8, !tbaa !7
  %conv1094 = trunc i64 %687 to i32
  %shr1095 = lshr i32 %conv1094, 8
  %conv1096 = trunc i32 %shr1095 to i8
  %688 = load i8*, i8** %dptr846, align 8, !tbaa !1
  %arrayidx1097 = getelementptr inbounds i8, i8* %688, i64 1
  store i8 %conv1096, i8* %arrayidx1097, align 1, !tbaa !9
  %689 = load i64, i64* %d_pixel1075, align 8, !tbaa !7
  %conv1098 = trunc i64 %689 to i8
  %690 = load i8*, i8** %dptr846, align 8, !tbaa !1
  %arrayidx1099 = getelementptr inbounds i8, i8* %690, i64 2
  store i8 %conv1098, i8* %arrayidx1099, align 1, !tbaa !9
  %691 = bitcast i64* %d_pixel1075 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %691) #1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.1100

cleanup.1100:                                     ; preds = %if.end.1074, %if.then.1073
  %692 = bitcast i32* %t_pixel1032 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %692) #1
  %693 = bitcast i32* %s_pixel1001 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %693) #1
  %cleanup.dest.1102 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1102, label %unreachable [
    i32 0, label %cleanup.cont.1103
    i32 94, label %for.inc.1104
  ]

cleanup.cont.1103:                                ; preds = %cleanup.1100
  br label %for.inc.1104

for.inc.1104:                                     ; preds = %cleanup.cont.1103, %cleanup.1100
  %694 = load i8*, i8** %dptr846, align 8, !tbaa !1
  %add.ptr1105 = getelementptr inbounds i8, i8* %694, i64 3
  store i8* %add.ptr1105, i8** %dptr846, align 8, !tbaa !1
  %695 = load i8*, i8** %sptr990, align 8, !tbaa !1
  %add.ptr1106 = getelementptr inbounds i8, i8* %695, i64 3
  store i8* %add.ptr1106, i8** %sptr990, align 8, !tbaa !1
  %696 = load i8*, i8** %tptr893, align 8, !tbaa !1
  %add.ptr1107 = getelementptr inbounds i8, i8* %696, i64 3
  store i8* %add.ptr1107, i8** %tptr893, align 8, !tbaa !1
  %697 = load i32, i32* %sx842, align 4, !tbaa !5
  %inc1108 = add nsw i32 %697, 1
  store i32 %inc1108, i32* %sx842, align 4, !tbaa !5
  %698 = load i32, i32* %tx875, align 4, !tbaa !5
  %inc1109 = add nsw i32 %698, 1
  store i32 %inc1109, i32* %tx875, align 4, !tbaa !5
  %699 = load i32, i32* %left880, align 4, !tbaa !5
  %dec1110 = add nsw i32 %699, -1
  store i32 %dec1110, i32* %left880, align 4, !tbaa !5
  br label %for.cond.997

for.end.1111:                                     ; preds = %for.cond.997
  %700 = bitcast i8** %sptr990 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %700) #1
  br label %if.end.1112

if.end.1112:                                      ; preds = %for.end.1111, %for.end.988
  %701 = bitcast i8** %tptr893 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %701) #1
  %702 = bitcast i32* %left880 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %702) #1
  %703 = bitcast i32* %tx875 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %703) #1
  br label %for.inc.1113

for.inc.1113:                                     ; preds = %if.end.1112
  %704 = load i32, i32* %nw845, align 4, !tbaa !5
  %705 = load i32, i32* %dx843, align 4, !tbaa !5
  %add1114 = add nsw i32 %705, %704
  store i32 %add1114, i32* %dx843, align 4, !tbaa !5
  %706 = load i32, i32* %nw845, align 4, !tbaa !5
  %707 = load i32, i32* %w844, align 4, !tbaa !5
  %sub1115 = sub nsw i32 %707, %706
  store i32 %sub1115, i32* %w844, align 4, !tbaa !5
  br label %for.cond.871

for.end.1116:                                     ; preds = %for.cond.871
  %708 = bitcast i32* %xoff855 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %708) #1
  %709 = bitcast i8** %trow847 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %709) #1
  %710 = bitcast i8** %dptr846 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %710) #1
  %711 = bitcast i32* %nw845 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %711) #1
  %712 = bitcast i32* %w844 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %712) #1
  %713 = bitcast i32* %dx843 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %713) #1
  %714 = bitcast i32* %sx842 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %714) #1
  br label %for.inc.1117

for.inc.1117:                                     ; preds = %for.end.1116
  %715 = load i32, i32* %draster, align 4, !tbaa !5
  %716 = load i8*, i8** %drow, align 8, !tbaa !1
  %idx.ext1118 = zext i32 %715 to i64
  %add.ptr1119 = getelementptr inbounds i8, i8* %716, i64 %idx.ext1118
  store i8* %add.ptr1119, i8** %drow, align 8, !tbaa !1
  %717 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %718 = load i8*, i8** %srow836, align 8, !tbaa !1
  %idx.ext1120 = zext i32 %717 to i64
  %add.ptr1121 = getelementptr inbounds i8, i8* %718, i64 %idx.ext1120
  store i8* %add.ptr1121, i8** %srow836, align 8, !tbaa !1
  %719 = load i32, i32* %ty834, align 4, !tbaa !5
  %inc1122 = add nsw i32 %719, 1
  store i32 %inc1122, i32* %ty834, align 4, !tbaa !5
  br label %for.cond.837

for.end.1123:                                     ; preds = %for.cond.837
  %720 = bitcast i8** %srow836 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %720) #1
  %721 = bitcast i32* %ty834 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %721) #1
  %722 = bitcast i32* %traster832 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %722) #1
  br label %if.end.1124

if.end.1124:                                      ; preds = %for.end.1123, %for.end.830
  br label %if.end.1125

if.end.1125:                                      ; preds = %if.end.1124, %if.end.547
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1126

cleanup.1126:                                     ; preds = %if.end.1125, %if.then.212, %if.then.158, %cleanup
  %723 = bitcast i64* %ttrans to i8*
  call void @llvm.lifetime.end(i64 8, i8* %723) #1
  %724 = bitcast i64* %strans to i8*
  call void @llvm.lifetime.end(i64 8, i8* %724) #1
  %725 = bitcast i64* %all_ones to i8*
  call void @llvm.lifetime.end(i64 8, i8* %725) #1
  %726 = bitcast i32* %bpp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %726) #1
  %727 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %727) #1
  %728 = bitcast i8** %base to i8*
  call void @llvm.lifetime.end(i64 8, i8* %728) #1
  %729 = bitcast i8** %drow to i8*
  call void @llvm.lifetime.end(i64 8, i8* %729) #1
  %730 = bitcast i32* %line_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %730) #1
  %731 = bitcast i32* %draster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %731) #1
  %732 = bitcast i64* %const_texture to i8*
  call void @llvm.lifetime.end(i64 8, i8* %732) #1
  %733 = bitcast i64* %const_source to i8*
  call void @llvm.lifetime.end(i64 8, i8* %733) #1
  %734 = bitcast i32* %rop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %734) #1
  %735 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %735) #1
  %736 = load i32, i32* %retval
  ret i32 %736

unreachable:                                      ; preds = %cleanup.1100, %cleanup.977, %cleanup.812, %cleanup.749, %cleanup.708, %cleanup.644, %cleanup.531, %cleanup.467, %cleanup.426, %cleanup.363
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i64 @gx_device_black(%struct.gx_device_s*) #2

declare i64 @gx_device_white(%struct.gx_device_s*) #2

declare i32 @mem_default_strip_copy_rop(%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

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
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !3, i64 0}
!9 = !{!3, !3, i64 0}
!10 = !{!11, !6, i64 1736}
!11 = !{!"gx_device_memory_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !12, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !13, i64 96, !16, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !8, i64 928, !8, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !8, i64 968, !8, i64 976, !17, i64 984, !6, i64 1052, !6, i64 1056, !18, i64 1064, !2, i64 1104, !3, i64 1112, !20, i64 1120, !21, i64 1144, !2, i64 1728, !6, i64 1736, !2, i64 1744, !2, i64 1752, !6, i64 1760, !2, i64 1768, !6, i64 1776, !3, i64 1780, !22, i64 2548, !2, i64 2576, !24, i64 2584, !25, i64 2600, !26, i64 2624, !27, i64 2656, !28, i64 2680, !29, i64 2720, !30, i64 2736, !6, i64 2744, !6, i64 2748, !6, i64 2752, !6, i64 2756, !6, i64 2760, !8, i64 2768, !2, i64 2776, !6, i64 2784, !6, i64 2788}
!12 = !{!"rc_header_s", !8, i64 0, !2, i64 8, !2, i64 16}
!13 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !14, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !15, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !8, i64 704, !6, i64 712}
!14 = !{!"short", !3, i64 0}
!15 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!16 = !{!"gx_device_cached_colors_s", !8, i64 0, !8, i64 8}
!17 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!18 = !{!"gdev_space_params_s", !8, i64 0, !8, i64 8, !19, i64 16, !6, i64 32, !3, i64 36}
!19 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !8, i64 8}
!20 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!21 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!22 = !{!"gs_matrix_s", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !23, i64 16, !23, i64 20}
!23 = !{!"float", !3, i64 0}
!24 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!25 = !{!"_c24", !8, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!26 = !{!"_c40", !8, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24}
!27 = !{!"_c48", !8, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!28 = !{!"_c56", !8, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!29 = !{!"_c64", !8, i64 0, !6, i64 8, !6, i64 12}
!30 = !{!"gs_log2_scale_point_s", !6, i64 0, !6, i64 4}
!31 = !{!32, !14, i64 108}
!32 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !12, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !13, i64 96, !16, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !8, i64 928, !8, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !8, i64 968, !8, i64 976, !17, i64 984, !6, i64 1052, !6, i64 1056, !18, i64 1064, !2, i64 1104, !3, i64 1112, !20, i64 1120, !21, i64 1144}
!33 = !{!32, !6, i64 100}
!34 = !{!32, !3, i64 110}
!35 = !{!32, !6, i64 832}
!36 = !{!32, !6, i64 836}
!37 = !{!11, !2, i64 2576}
!38 = !{!39, !6, i64 8}
!39 = !{!"gx_strip_bitmap_s", !2, i64 0, !6, i64 8, !40, i64 12, !8, i64 24, !14, i64 32, !14, i64 34, !14, i64 36, !14, i64 38, !6, i64 40}
!40 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!41 = !{!39, !2, i64 0}
!42 = !{!39, !6, i64 16}
!43 = !{!39, !14, i64 38}
!44 = !{!39, !14, i64 34}
!45 = !{!39, !14, i64 36}
!46 = !{!39, !14, i64 32}
!47 = !{!39, !6, i64 12}
