; ModuleID = './gdevdrop.bc'
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
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gx_device_memory_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, i32, i8*, %struct.gs_memory_s*, i32, %struct.gs_memory_s*, i32, [64 x %struct.gx_render_plane_s], %struct.gs_matrix_s, i8**, %struct.gs_const_string_s, %struct._c24, %struct._c40, %struct._c48, %struct._c56, %struct._c64, %struct.gs_log2_scale_point_s, i32, i32, i32, i32, i32, i64, %struct.gx_device_color_s*, i32, i32 }
%struct.gx_render_plane_s = type { i32, i32, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%struct._c24 = type { i64, i32, i32, i32 }
%struct._c40 = type { i64, i32, i32, i32, i32, i32 }
%struct._c48 = type { i64, i32, i32, i32 }
%struct._c56 = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct._c64 = type { i64, i32, i32 }
%union.anon.1 = type { i64 }
%union.anon.2 = type { i64 }
%union.anon.3 = type { i64 }
%union.anon.4 = type { i64 }

@.str = private unnamed_addr constant [13 x i8] c"copy_rop row\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"./base/gdevdrop.c\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"mem_default_strip_copy_rop2 should never be called!\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"copy_rop source_row\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"copy_rop texture_row\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gx_default_strip_copy_rop(%struct.gx_device_s* %dev, i8* %sdata, i32 %sourcex, i32 %sraster, i64 %id, i64* %scolors, %struct.gx_strip_bitmap_s* %textures, i64* %tcolors, i32 %x, i32 %y, i32 %width, i32 %height, i32 %phase_x, i32 %phase_y, i32 %lop) #0 {
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
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %sdata.addr, align 8, !tbaa !1
  %2 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %3 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %4 = load i64, i64* %id.addr, align 8, !tbaa !7
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
  %call = call i32 @gx_default_strip_copy_rop2(%struct.gx_device_s* %0, i8* %1, i32 %2, i32 %3, i64 %4, i64* %5, %struct.gx_strip_bitmap_s* %6, i64* %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 0) #3
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_strip_copy_rop2(%struct.gx_device_s* %dev, i8* %sdata, i32 %sourcex, i32 %sraster, i64 %id, i64* %scolors, %struct.gx_strip_bitmap_s* %textures, i64* %tcolors, i32 %x, i32 %y, i32 %width, i32 %height, i32 %phase_x, i32 %phase_y, i32 %lop, i32 %planar_height) #0 {
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
  %depth = alloca i32, align 4
  %mem = alloca %struct.gs_memory_s*, align 8
  %mdproto = alloca %struct.gx_device_memory_s*, align 8
  %pmdev = alloca %struct.gx_device_memory_s*, align 8
  %draster = alloca i32, align 4
  %row = alloca i8*, align 8
  %rect = alloca %struct.gs_int_rect_s, align 4
  %max_height = alloca i32, align 4
  %block_height = alloca i32, align 4
  %code = alloca i32, align 4
  %py = alloca i32, align 4
  %is_planar = alloca i32, align 4
  %plane_depth = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %planes = alloca [64 x %struct.gx_render_plane_s], align 16
  %num_comp = alloca i32, align 4
  %i = alloca i32, align 4
  %bit_params = alloca %struct.gs_get_bits_params_s, align 8
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
  store i32 %planar_height, i32* %planar_height.addr, align 4, !tbaa !5
  %0 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 11
  %depth1 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %2 = load i16, i16* %depth1, align 2, !tbaa !9
  %conv = zext i16 %2 to i32
  store i32 %conv, i32* %depth, align 4, !tbaa !5
  %3 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 3
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !21
  store %struct.gs_memory_s* %5, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_memory_s** %mdproto to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i32, i32* %depth, align 4, !tbaa !5
  %call = call %struct.gx_device_memory_s* @gdev_mem_device_for_bits(i32 %7) #3
  store %struct.gx_device_memory_s* %call, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %8 = bitcast %struct.gx_device_memory_s** %pmdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i32* %draster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i8** %row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i8* null, i8** %row, align 8, !tbaa !1
  %11 = bitcast %struct.gs_int_rect_s* %rect to i8*
  call void @llvm.lifetime.start(i64 16, i8* %11) #1
  %12 = bitcast i32* %max_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %block_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %py to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %is_planar to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  store i32 0, i32* %is_planar, align 4, !tbaa !5
  %17 = bitcast i32* %plane_depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_memory_s* %18, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.254

if.end:                                           ; preds = %entry
  %19 = load i8*, i8** %sdata.addr, align 8, !tbaa !1
  %cmp3 = icmp eq i8* %19, null
  br i1 %cmp3, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.5
  br label %do.body.6

do.body.6:                                        ; preds = %do.body
  br label %do.body.7

do.body.7:                                        ; preds = %do.body.6
  %20 = load i32, i32* %x.addr, align 4, !tbaa !5
  %21 = load i32, i32* %y.addr, align 4, !tbaa !5
  %or = or i32 %20, %21
  %cmp8 = icmp slt i32 %or, 0
  br i1 %cmp8, label %if.then.10, label %if.end.20

if.then.10:                                       ; preds = %do.body.7
  %22 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %22, 0
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.10
  %23 = load i32, i32* %x.addr, align 4, !tbaa !5
  %24 = load i32, i32* %width.addr, align 4, !tbaa !5
  %add = add nsw i32 %24, %23
  store i32 %add, i32* %width.addr, align 4, !tbaa !5
  store i32 0, i32* %x.addr, align 4, !tbaa !5
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.then.10
  %25 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %25, 0
  br i1 %cmp15, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.end.14
  %26 = load i32, i32* %y.addr, align 4, !tbaa !5
  %27 = load i32, i32* %height.addr, align 4, !tbaa !5
  %add18 = add nsw i32 %27, %26
  store i32 %add18, i32* %height.addr, align 4, !tbaa !5
  store i32 0, i32* %y.addr, align 4, !tbaa !5
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %if.end.14
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %do.body.7
  br label %do.cond

do.cond:                                          ; preds = %if.end.20
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.21

do.body.21:                                       ; preds = %do.end
  %28 = load i32, i32* %width.addr, align 4, !tbaa !5
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width22 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %29, i32 0, i32 13
  %30 = load i32, i32* %width22, align 4, !tbaa !22
  %31 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %30, %31
  %cmp23 = icmp sgt i32 %28, %sub
  br i1 %cmp23, label %if.then.25, label %if.end.28

if.then.25:                                       ; preds = %do.body.21
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width26 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %32, i32 0, i32 13
  %33 = load i32, i32* %width26, align 4, !tbaa !22
  %34 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub27 = sub nsw i32 %33, %34
  store i32 %sub27, i32* %width.addr, align 4, !tbaa !5
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.25, %do.body.21
  br label %do.cond.29

do.cond.29:                                       ; preds = %if.end.28
  br label %do.end.30

do.end.30:                                        ; preds = %do.cond.29
  br label %do.body.31

do.body.31:                                       ; preds = %do.end.30
  %35 = load i32, i32* %height.addr, align 4, !tbaa !5
  %36 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height32 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %36, i32 0, i32 14
  %37 = load i32, i32* %height32, align 4, !tbaa !23
  %38 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub33 = sub nsw i32 %37, %38
  %cmp34 = icmp sgt i32 %35, %sub33
  br i1 %cmp34, label %if.then.36, label %if.end.39

if.then.36:                                       ; preds = %do.body.31
  %39 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height37 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %39, i32 0, i32 14
  %40 = load i32, i32* %height37, align 4, !tbaa !23
  %41 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub38 = sub nsw i32 %40, %41
  store i32 %sub38, i32* %height.addr, align 4, !tbaa !5
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.36, %do.body.31
  br label %do.cond.40

do.cond.40:                                       ; preds = %if.end.39
  br label %do.end.41

do.end.41:                                        ; preds = %do.cond.40
  br label %do.cond.42

do.cond.42:                                       ; preds = %do.end.41
  br label %do.end.43

do.end.43:                                        ; preds = %do.cond.42
  %42 = load i32, i32* %width.addr, align 4, !tbaa !5
  %cmp44 = icmp sle i32 %42, 0
  br i1 %cmp44, label %if.then.48, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.43
  %43 = load i32, i32* %height.addr, align 4, !tbaa !5
  %cmp46 = icmp sle i32 %43, 0
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %lor.lhs.false, %do.end.43
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.254

if.end.49:                                        ; preds = %lor.lhs.false
  br label %do.cond.50

do.cond.50:                                       ; preds = %if.end.49
  br label %do.end.51

do.end.51:                                        ; preds = %do.cond.50
  br label %if.end.97

if.else:                                          ; preds = %if.end
  br label %do.body.52

do.body.52:                                       ; preds = %if.else
  br label %do.body.53

do.body.53:                                       ; preds = %do.body.52
  %44 = load i32, i32* %x.addr, align 4, !tbaa !5
  %45 = load i32, i32* %y.addr, align 4, !tbaa !5
  %or54 = or i32 %44, %45
  %cmp55 = icmp slt i32 %or54, 0
  br i1 %cmp55, label %if.then.57, label %if.end.69

if.then.57:                                       ; preds = %do.body.53
  %46 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp58 = icmp slt i32 %46, 0
  br i1 %cmp58, label %if.then.60, label %if.end.63

if.then.60:                                       ; preds = %if.then.57
  %47 = load i32, i32* %x.addr, align 4, !tbaa !5
  %48 = load i32, i32* %width.addr, align 4, !tbaa !5
  %add61 = add nsw i32 %48, %47
  store i32 %add61, i32* %width.addr, align 4, !tbaa !5
  %49 = load i32, i32* %x.addr, align 4, !tbaa !5
  %50 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %sub62 = sub nsw i32 %50, %49
  store i32 %sub62, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 0, i32* %x.addr, align 4, !tbaa !5
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.60, %if.then.57
  %51 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp64 = icmp slt i32 %51, 0
  br i1 %cmp64, label %if.then.66, label %if.end.68

if.then.66:                                       ; preds = %if.end.63
  %52 = load i32, i32* %y.addr, align 4, !tbaa !5
  %53 = load i32, i32* %height.addr, align 4, !tbaa !5
  %add67 = add nsw i32 %53, %52
  store i32 %add67, i32* %height.addr, align 4, !tbaa !5
  %54 = load i32, i32* %y.addr, align 4, !tbaa !5
  %55 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %mul = mul i32 %54, %55
  %56 = load i8*, i8** %sdata.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %mul to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %56, i64 %idx.neg
  store i8* %add.ptr, i8** %sdata.addr, align 8, !tbaa !1
  store i64 0, i64* %id.addr, align 8, !tbaa !7
  store i32 0, i32* %y.addr, align 4, !tbaa !5
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.66, %if.end.63
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %do.body.53
  %57 = load i32, i32* %width.addr, align 4, !tbaa !5
  %58 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width70 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %58, i32 0, i32 13
  %59 = load i32, i32* %width70, align 4, !tbaa !22
  %60 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub71 = sub nsw i32 %59, %60
  %cmp72 = icmp sgt i32 %57, %sub71
  br i1 %cmp72, label %if.then.74, label %if.end.77

if.then.74:                                       ; preds = %if.end.69
  %61 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width75 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %61, i32 0, i32 13
  %62 = load i32, i32* %width75, align 4, !tbaa !22
  %63 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub76 = sub nsw i32 %62, %63
  store i32 %sub76, i32* %width.addr, align 4, !tbaa !5
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.74, %if.end.69
  br label %do.cond.78

do.cond.78:                                       ; preds = %if.end.77
  br label %do.end.79

do.end.79:                                        ; preds = %do.cond.78
  %64 = load i32, i32* %height.addr, align 4, !tbaa !5
  %65 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height80 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %65, i32 0, i32 14
  %66 = load i32, i32* %height80, align 4, !tbaa !23
  %67 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub81 = sub nsw i32 %66, %67
  %cmp82 = icmp sgt i32 %64, %sub81
  br i1 %cmp82, label %if.then.84, label %if.end.87

if.then.84:                                       ; preds = %do.end.79
  %68 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height85 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %68, i32 0, i32 14
  %69 = load i32, i32* %height85, align 4, !tbaa !23
  %70 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub86 = sub nsw i32 %69, %70
  store i32 %sub86, i32* %height.addr, align 4, !tbaa !5
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.84, %do.end.79
  %71 = load i32, i32* %width.addr, align 4, !tbaa !5
  %cmp88 = icmp sle i32 %71, 0
  br i1 %cmp88, label %if.then.93, label %lor.lhs.false.90

lor.lhs.false.90:                                 ; preds = %if.end.87
  %72 = load i32, i32* %height.addr, align 4, !tbaa !5
  %cmp91 = icmp sle i32 %72, 0
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %lor.lhs.false.90, %if.end.87
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.254

if.end.94:                                        ; preds = %lor.lhs.false.90
  br label %do.cond.95

do.cond.95:                                       ; preds = %if.end.94
  br label %do.end.96

do.end.96:                                        ; preds = %do.cond.95
  br label %if.end.97

if.end.97:                                        ; preds = %do.end.96, %do.end.51
  %73 = load i32, i32* %width.addr, align 4, !tbaa !5
  %74 = load i32, i32* %depth, align 4, !tbaa !5
  %mul98 = mul nsw i32 %73, %74
  %add99 = add nsw i32 %mul98, 63
  %shr = ashr i32 %add99, 6
  %shl = shl i32 %shr, 3
  store i32 %shl, i32* %draster, align 4, !tbaa !5
  %75 = load i32, i32* %draster, align 4, !tbaa !5
  %div = udiv i32 1000, %75
  store i32 %div, i32* %max_height, align 4, !tbaa !5
  %76 = load i32, i32* %max_height, align 4, !tbaa !5
  %cmp100 = icmp eq i32 %76, 0
  br i1 %cmp100, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %if.end.97
  store i32 1, i32* %max_height, align 4, !tbaa !5
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.102, %if.end.97
  %77 = load i32, i32* %height.addr, align 4, !tbaa !5
  %78 = load i32, i32* %max_height, align 4, !tbaa !5
  %cmp104 = icmp slt i32 %77, %78
  br i1 %cmp104, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.103
  %79 = load i32, i32* %height.addr, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.end.103
  %80 = load i32, i32* %max_height, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %79, %cond.true ], [ %80, %cond.false ]
  store i32 %cond, i32* %block_height, align 4, !tbaa !5
  %81 = load i32, i32* %planar_height.addr, align 4, !tbaa !5
  %cmp106 = icmp ugt i32 %81, 0
  br i1 %cmp106, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %cond.end
  %82 = load i32, i32* %planar_height.addr, align 4, !tbaa !5
  store i32 %82, i32* %block_height, align 4, !tbaa !5
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.108, %cond.end
  %83 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %84 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %85 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call110 = call i32 @gs_make_mem_device_with_copydevice(%struct.gx_device_memory_s** %pmdev, %struct.gx_device_memory_s* %83, %struct.gs_memory_s* %84, i32 -1, %struct.gx_device_s* %85) #3
  %86 = load i32, i32* %width.addr, align 4, !tbaa !5
  %87 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pmdev, align 8, !tbaa !1
  %width111 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %87, i32 0, i32 13
  store i32 %86, i32* %width111, align 4, !tbaa !24
  %88 = load i32, i32* %block_height, align 4, !tbaa !5
  %89 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pmdev, align 8, !tbaa !1
  %height112 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %89, i32 0, i32 14
  store i32 %88, i32* %height112, align 4, !tbaa !35
  %90 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %91 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pmdev, align 8, !tbaa !1
  %bitmap_memory = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %91, i32 0, i32 46
  store %struct.gs_memory_s* %90, %struct.gs_memory_s** %bitmap_memory, align 8, !tbaa !36
  %92 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pmdev, align 8, !tbaa !1
  %color_info113 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %92, i32 0, i32 11
  %93 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info114 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %93, i32 0, i32 11
  %94 = bitcast %struct.gx_device_color_info_s* %color_info113 to i8*
  %95 = bitcast %struct.gx_device_color_info_s* %color_info114 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %94, i8* %95, i64 720, i32 8, i1 false), !tbaa.struct !37
  %96 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %is_planar115 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %96, i32 0, i32 17
  %97 = load i32, i32* %is_planar115, align 4, !tbaa !40
  %tobool = icmp ne i32 %97, 0
  br i1 %tobool, label %if.then.116, label %if.end.145

if.then.116:                                      ; preds = %if.end.109
  %98 = bitcast [64 x %struct.gx_render_plane_s]* %planes to i8*
  call void @llvm.lifetime.start(i64 768, i8* %98) #1
  %99 = bitcast i32* %num_comp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %99) #1
  %100 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info117 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %100, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info117, i32 0, i32 1
  %101 = load i32, i32* %num_components, align 4, !tbaa !41
  store i32 %101, i32* %num_comp, align 4, !tbaa !5
  %102 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %102) #1
  %103 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info118 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %103, i32 0, i32 11
  %depth119 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info118, i32 0, i32 3
  %104 = load i16, i16* %depth119, align 2, !tbaa !9
  %conv120 = zext i16 %104 to i32
  %105 = load i32, i32* %num_comp, align 4, !tbaa !5
  %div121 = sdiv i32 %conv120, %105
  store i32 %div121, i32* %plane_depth, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.116
  %106 = load i32, i32* %i, align 4, !tbaa !5
  %107 = load i32, i32* %num_comp, align 4, !tbaa !5
  %cmp122 = icmp slt i32 %106, %107
  br i1 %cmp122, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %108 = load i32, i32* %plane_depth, align 4, !tbaa !5
  %109 = load i32, i32* %num_comp, align 4, !tbaa !5
  %sub124 = sub nsw i32 %109, 1
  %110 = load i32, i32* %i, align 4, !tbaa !5
  %sub125 = sub nsw i32 %sub124, %110
  %mul126 = mul nsw i32 %108, %sub125
  %111 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %111 to i64
  %arrayidx = getelementptr inbounds [64 x %struct.gx_render_plane_s], [64 x %struct.gx_render_plane_s]* %planes, i32 0, i64 %idxprom
  %shift = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %arrayidx, i32 0, i32 1
  store i32 %mul126, i32* %shift, align 4, !tbaa !42
  %112 = load i32, i32* %plane_depth, align 4, !tbaa !5
  %113 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom127 = sext i32 %113 to i64
  %arrayidx128 = getelementptr inbounds [64 x %struct.gx_render_plane_s], [64 x %struct.gx_render_plane_s]* %planes, i32 0, i64 %idxprom127
  %depth129 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %arrayidx128, i32 0, i32 0
  store i32 %112, i32* %depth129, align 4, !tbaa !44
  %114 = load i32, i32* %i, align 4, !tbaa !5
  %115 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom130 = sext i32 %115 to i64
  %arrayidx131 = getelementptr inbounds [64 x %struct.gx_render_plane_s], [64 x %struct.gx_render_plane_s]* %planes, i32 0, i64 %idxprom130
  %index = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %arrayidx131, i32 0, i32 2
  store i32 %114, i32* %index, align 4, !tbaa !45
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %116 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %116, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %117 = load i32, i32* %width.addr, align 4, !tbaa !5
  %arrayidx132 = getelementptr inbounds [64 x %struct.gx_render_plane_s], [64 x %struct.gx_render_plane_s]* %planes, i32 0, i64 0
  %depth133 = getelementptr inbounds %struct.gx_render_plane_s, %struct.gx_render_plane_s* %arrayidx132, i32 0, i32 0
  %118 = load i32, i32* %depth133, align 4, !tbaa !44
  %mul134 = mul nsw i32 %117, %118
  %add135 = add nsw i32 %mul134, 63
  %shr136 = ashr i32 %add135, 6
  %shl137 = shl i32 %shr136, 3
  store i32 %shl137, i32* %draster, align 4, !tbaa !5
  %119 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pmdev, align 8, !tbaa !1
  %120 = load i32, i32* %num_comp, align 4, !tbaa !5
  %arraydecay = getelementptr inbounds [64 x %struct.gx_render_plane_s], [64 x %struct.gx_render_plane_s]* %planes, i32 0, i32 0
  %call138 = call i32 @gdev_mem_set_planar(%struct.gx_device_memory_s* %119, i32 %120, %struct.gx_render_plane_s* %arraydecay) #3
  store i32 %call138, i32* %code, align 4, !tbaa !5
  %121 = load i32, i32* %code, align 4, !tbaa !5
  %cmp139 = icmp slt i32 %121, 0
  br i1 %cmp139, label %if.then.141, label %if.end.142

if.then.141:                                      ; preds = %for.end
  %122 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %122, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.142:                                       ; preds = %for.end
  store i32 1, i32* %is_planar, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.142, %if.then.141
  %123 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #1
  %124 = bitcast i32* %num_comp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #1
  %125 = bitcast [64 x %struct.gx_render_plane_s]* %planes to i8*
  call void @llvm.lifetime.end(i64 768, i8* %125) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.254 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.145

if.end.145:                                       ; preds = %cleanup.cont, %if.end.109
  %126 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pmdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %126, i32 0, i32 42
  %open_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 0
  %127 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %open_device, align 8, !tbaa !46
  %128 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pmdev, align 8, !tbaa !1
  %129 = bitcast %struct.gx_device_memory_s* %128 to %struct.gx_device_s*
  %call146 = call i32 %127(%struct.gx_device_s* %129) #3
  store i32 %call146, i32* %code, align 4, !tbaa !5
  %130 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pmdev, align 8, !tbaa !1
  %is_open = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %130, i32 0, i32 9
  store i32 1, i32* %is_open, align 4, !tbaa !47
  %131 = load i32, i32* %code, align 4, !tbaa !5
  %cmp147 = icmp slt i32 %131, 0
  br i1 %cmp147, label %if.then.149, label %if.end.150

if.then.149:                                      ; preds = %if.end.145
  %132 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %132, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.254

if.end.150:                                       ; preds = %if.end.145
  %133 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call151 = call i32 @gs_transparent_rop(i32 %133) #3
  %shl152 = shl i32 %call151, 1
  %134 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call153 = call i32 @gs_transparent_rop(i32 %134) #3
  %xor = xor i32 %shl152, %call153
  %and = and i32 %xor, 170
  %cmp154 = icmp ne i32 %and, 0
  br i1 %cmp154, label %if.then.156, label %if.end.164

if.then.156:                                      ; preds = %if.end.150
  %135 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs157 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %135, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs157, i32 0, i32 7
  %136 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !48
  %137 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %138 = load i32, i32* %draster, align 4, !tbaa !5
  %139 = load i32, i32* %block_height, align 4, !tbaa !5
  %mul158 = mul i32 %138, %139
  %call159 = call i8* %136(%struct.gs_memory_s* %137, i32 %mul158, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)) #3
  store i8* %call159, i8** %row, align 8, !tbaa !1
  %140 = load i8*, i8** %row, align 8, !tbaa !1
  %cmp160 = icmp eq i8* %140, null
  br i1 %cmp160, label %if.then.162, label %if.end.163

if.then.162:                                      ; preds = %if.then.156
  store i32 -25, i32* %code, align 4, !tbaa !5
  br label %out

if.end.163:                                       ; preds = %if.then.156
  br label %if.end.164

if.end.164:                                       ; preds = %if.end.163, %if.end.150
  %141 = load i32, i32* %x.addr, align 4, !tbaa !5
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %x165 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  store i32 %141, i32* %x165, align 4, !tbaa !51
  %142 = load i32, i32* %x.addr, align 4, !tbaa !5
  %143 = load i32, i32* %width.addr, align 4, !tbaa !5
  %add166 = add nsw i32 %142, %143
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 1
  %x167 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  store i32 %add166, i32* %x167, align 4, !tbaa !54
  %144 = load i32, i32* %y.addr, align 4, !tbaa !5
  store i32 %144, i32* %py, align 4, !tbaa !5
  br label %for.cond.168

for.cond.168:                                     ; preds = %for.inc.250, %if.end.164
  %145 = load i32, i32* %py, align 4, !tbaa !5
  %146 = load i32, i32* %y.addr, align 4, !tbaa !5
  %147 = load i32, i32* %height.addr, align 4, !tbaa !5
  %add169 = add nsw i32 %146, %147
  %cmp170 = icmp slt i32 %145, %add169
  br i1 %cmp170, label %for.body.172, label %for.end.252

for.body.172:                                     ; preds = %for.cond.168
  %148 = load i32, i32* %block_height, align 4, !tbaa !5
  %149 = load i32, i32* %y.addr, align 4, !tbaa !5
  %150 = load i32, i32* %height.addr, align 4, !tbaa !5
  %add173 = add nsw i32 %149, %150
  %151 = load i32, i32* %py, align 4, !tbaa !5
  %sub174 = sub nsw i32 %add173, %151
  %cmp175 = icmp sgt i32 %148, %sub174
  br i1 %cmp175, label %if.then.177, label %if.end.180

if.then.177:                                      ; preds = %for.body.172
  %152 = load i32, i32* %y.addr, align 4, !tbaa !5
  %153 = load i32, i32* %height.addr, align 4, !tbaa !5
  %add178 = add nsw i32 %152, %153
  %154 = load i32, i32* %py, align 4, !tbaa !5
  %sub179 = sub nsw i32 %add178, %154
  store i32 %sub179, i32* %block_height, align 4, !tbaa !5
  br label %if.end.180

if.end.180:                                       ; preds = %if.then.177, %for.body.172
  %155 = load i32, i32* %py, align 4, !tbaa !5
  %p181 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %y182 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p181, i32 0, i32 1
  store i32 %155, i32* %y182, align 4, !tbaa !55
  %156 = load i32, i32* %py, align 4, !tbaa !5
  %157 = load i32, i32* %block_height, align 4, !tbaa !5
  %add183 = add nsw i32 %156, %157
  %q184 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 1
  %y185 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q184, i32 0, i32 1
  store i32 %add183, i32* %y185, align 4, !tbaa !56
  %158 = load i8*, i8** %row, align 8, !tbaa !1
  %tobool186 = icmp ne i8* %158, null
  br i1 %tobool186, label %if.then.187, label %if.end.207

if.then.187:                                      ; preds = %if.end.180
  %159 = bitcast %struct.gs_get_bits_params_s* %bit_params to i8*
  call void @llvm.lifetime.start(i64 536, i8* %159) #1
  %options = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %bit_params, i32 0, i32 0
  store i64 359743249, i64* %options, align 8, !tbaa !57
  %160 = load i8*, i8** %row, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %bit_params, i32 0, i32 1
  %arrayidx188 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data, i32 0, i64 0
  store i8* %160, i8** %arrayidx188, align 8, !tbaa !1
  %x_offset = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %bit_params, i32 0, i32 2
  store i32 0, i32* %x_offset, align 4, !tbaa !59
  %161 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs189 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %161, i32 0, i32 42
  %get_bits_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs189, i32 0, i32 38
  %162 = load i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %get_bits_rectangle, align 8, !tbaa !60
  %163 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call190 = call i32 %162(%struct.gx_device_s* %163, %struct.gs_int_rect_s* %rect, %struct.gs_get_bits_params_s* %bit_params, %struct.gs_int_rect_s** null) #3
  store i32 %call190, i32* %code, align 4, !tbaa !5
  %164 = load i32, i32* %code, align 4, !tbaa !5
  %cmp191 = icmp slt i32 %164, 0
  br i1 %cmp191, label %if.then.193, label %if.end.194

if.then.193:                                      ; preds = %if.then.187
  store i32 20, i32* %cleanup.dest.slot
  br label %cleanup.204

if.end.194:                                       ; preds = %if.then.187
  %165 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pmdev, align 8, !tbaa !1
  %procs195 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %165, i32 0, i32 42
  %copy_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs195, i32 0, i32 10
  %166 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %copy_color, align 8, !tbaa !61
  %167 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pmdev, align 8, !tbaa !1
  %168 = bitcast %struct.gx_device_memory_s* %167 to %struct.gx_device_s*
  %data196 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %bit_params, i32 0, i32 1
  %arrayidx197 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data196, i32 0, i64 0
  %169 = load i8*, i8** %arrayidx197, align 8, !tbaa !1
  %x_offset198 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %bit_params, i32 0, i32 2
  %170 = load i32, i32* %x_offset198, align 4, !tbaa !59
  %171 = load i32, i32* %draster, align 4, !tbaa !5
  %172 = load i32, i32* %width.addr, align 4, !tbaa !5
  %173 = load i32, i32* %block_height, align 4, !tbaa !5
  %call199 = call i32 %166(%struct.gx_device_s* %168, i8* %169, i32 %170, i32 %171, i64 0, i32 0, i32 0, i32 %172, i32 %173) #3
  store i32 %call199, i32* %code, align 4, !tbaa !5
  %174 = load i32, i32* %code, align 4, !tbaa !5
  %cmp200 = icmp slt i32 %174, 0
  br i1 %cmp200, label %if.then.202, label %if.end.203

if.then.202:                                      ; preds = %if.end.194
  %175 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %175, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.204

if.end.203:                                       ; preds = %if.end.194
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.204

cleanup.204:                                      ; preds = %if.end.203, %if.then.202, %if.then.193
  %176 = bitcast %struct.gs_get_bits_params_s* %bit_params to i8*
  call void @llvm.lifetime.end(i64 536, i8* %176) #1
  %cleanup.dest.205 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.205, label %cleanup.254 [
    i32 0, label %cleanup.cont.206
    i32 20, label %for.end.252
  ]

cleanup.cont.206:                                 ; preds = %cleanup.204
  br label %if.end.207

if.end.207:                                       ; preds = %cleanup.cont.206, %if.end.180
  %177 = load i32, i32* %planar_height.addr, align 4, !tbaa !5
  %cmp208 = icmp eq i32 %177, 0
  br i1 %cmp208, label %if.then.210, label %if.else.220

if.then.210:                                      ; preds = %if.end.207
  %178 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pmdev, align 8, !tbaa !1
  %procs211 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %178, i32 0, i32 42
  %strip_copy_rop = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs211, i32 0, i32 35
  %strip_copy_rop212 = bitcast {}** %strip_copy_rop to i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)**
  %179 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)** %strip_copy_rop212, align 8, !tbaa !62
  %180 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pmdev, align 8, !tbaa !1
  %181 = bitcast %struct.gx_device_memory_s* %180 to %struct.gx_device_s*
  %182 = load i8*, i8** %sdata.addr, align 8, !tbaa !1
  %183 = load i32, i32* %py, align 4, !tbaa !5
  %184 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub213 = sub nsw i32 %183, %184
  %185 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %mul214 = mul i32 %sub213, %185
  %idx.ext215 = zext i32 %mul214 to i64
  %add.ptr216 = getelementptr inbounds i8, i8* %182, i64 %idx.ext215
  %186 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %187 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %188 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %189 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %190 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %191 = load i32, i32* %width.addr, align 4, !tbaa !5
  %192 = load i32, i32* %block_height, align 4, !tbaa !5
  %193 = load i32, i32* %phase_x.addr, align 4, !tbaa !5
  %194 = load i32, i32* %x.addr, align 4, !tbaa !5
  %add217 = add nsw i32 %193, %194
  %195 = load i32, i32* %phase_y.addr, align 4, !tbaa !5
  %196 = load i32, i32* %py, align 4, !tbaa !5
  %add218 = add nsw i32 %195, %196
  %197 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call219 = call i32 %179(%struct.gx_device_s* %181, i8* %add.ptr216, i32 %186, i32 %187, i64 0, i64* %188, %struct.gx_strip_bitmap_s* %189, i64* %190, i32 0, i32 0, i32 %191, i32 %192, i32 %add217, i32 %add218, i32 %197) #3
  store i32 %call219, i32* %code, align 4, !tbaa !5
  br label %if.end.229

if.else.220:                                      ; preds = %if.end.207
  %198 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pmdev, align 8, !tbaa !1
  %procs221 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %198, i32 0, i32 42
  %strip_copy_rop2 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs221, i32 0, i32 69
  %199 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)** %strip_copy_rop2, align 8, !tbaa !63
  %200 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pmdev, align 8, !tbaa !1
  %201 = bitcast %struct.gx_device_memory_s* %200 to %struct.gx_device_s*
  %202 = load i8*, i8** %sdata.addr, align 8, !tbaa !1
  %203 = load i32, i32* %py, align 4, !tbaa !5
  %204 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub222 = sub nsw i32 %203, %204
  %205 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %mul223 = mul i32 %sub222, %205
  %idx.ext224 = zext i32 %mul223 to i64
  %add.ptr225 = getelementptr inbounds i8, i8* %202, i64 %idx.ext224
  %206 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %207 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %208 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %209 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %210 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %211 = load i32, i32* %width.addr, align 4, !tbaa !5
  %212 = load i32, i32* %block_height, align 4, !tbaa !5
  %213 = load i32, i32* %phase_x.addr, align 4, !tbaa !5
  %214 = load i32, i32* %x.addr, align 4, !tbaa !5
  %add226 = add nsw i32 %213, %214
  %215 = load i32, i32* %phase_y.addr, align 4, !tbaa !5
  %216 = load i32, i32* %py, align 4, !tbaa !5
  %add227 = add nsw i32 %215, %216
  %217 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %218 = load i32, i32* %planar_height.addr, align 4, !tbaa !5
  %call228 = call i32 %199(%struct.gx_device_s* %201, i8* %add.ptr225, i32 %206, i32 %207, i64 0, i64* %208, %struct.gx_strip_bitmap_s* %209, i64* %210, i32 0, i32 0, i32 %211, i32 %212, i32 %add226, i32 %add227, i32 %217, i32 %218) #3
  store i32 %call228, i32* %code, align 4, !tbaa !5
  br label %if.end.229

if.end.229:                                       ; preds = %if.else.220, %if.then.210
  %219 = load i32, i32* %code, align 4, !tbaa !5
  %cmp230 = icmp slt i32 %219, 0
  br i1 %cmp230, label %if.then.232, label %if.end.233

if.then.232:                                      ; preds = %if.end.229
  br label %for.end.252

if.end.233:                                       ; preds = %if.end.229
  %220 = load i32, i32* %is_planar, align 4, !tbaa !5
  %tobool234 = icmp ne i32 %220, 0
  br i1 %tobool234, label %if.then.235, label %if.else.239

if.then.235:                                      ; preds = %if.end.233
  %221 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs236 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %221, i32 0, i32 42
  %copy_planes = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs236, i32 0, i32 66
  %222 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)** %copy_planes, align 8, !tbaa !64
  %223 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %224 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pmdev, align 8, !tbaa !1
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %224, i32 0, i32 52
  %225 = load i8**, i8*** %line_ptrs, align 8, !tbaa !65
  %arrayidx237 = getelementptr inbounds i8*, i8** %225, i64 0
  %226 = load i8*, i8** %arrayidx237, align 8, !tbaa !1
  %227 = load i32, i32* %draster, align 4, !tbaa !5
  %228 = load i32, i32* %x.addr, align 4, !tbaa !5
  %229 = load i32, i32* %py, align 4, !tbaa !5
  %230 = load i32, i32* %width.addr, align 4, !tbaa !5
  %231 = load i32, i32* %block_height, align 4, !tbaa !5
  %232 = load i32, i32* %block_height, align 4, !tbaa !5
  %call238 = call i32 %222(%struct.gx_device_s* %223, i8* %226, i32 0, i32 %227, i64 0, i32 %228, i32 %229, i32 %230, i32 %231, i32 %232) #3
  store i32 %call238, i32* %code, align 4, !tbaa !5
  br label %if.end.245

if.else.239:                                      ; preds = %if.end.233
  %233 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs240 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %233, i32 0, i32 42
  %copy_color241 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs240, i32 0, i32 10
  %234 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %copy_color241, align 8, !tbaa !66
  %235 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %236 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pmdev, align 8, !tbaa !1
  %line_ptrs242 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %236, i32 0, i32 52
  %237 = load i8**, i8*** %line_ptrs242, align 8, !tbaa !65
  %arrayidx243 = getelementptr inbounds i8*, i8** %237, i64 0
  %238 = load i8*, i8** %arrayidx243, align 8, !tbaa !1
  %239 = load i32, i32* %draster, align 4, !tbaa !5
  %240 = load i32, i32* %x.addr, align 4, !tbaa !5
  %241 = load i32, i32* %py, align 4, !tbaa !5
  %242 = load i32, i32* %width.addr, align 4, !tbaa !5
  %243 = load i32, i32* %block_height, align 4, !tbaa !5
  %call244 = call i32 %234(%struct.gx_device_s* %235, i8* %238, i32 0, i32 %239, i64 0, i32 %240, i32 %241, i32 %242, i32 %243) #3
  store i32 %call244, i32* %code, align 4, !tbaa !5
  br label %if.end.245

if.end.245:                                       ; preds = %if.else.239, %if.then.235
  %244 = load i32, i32* %code, align 4, !tbaa !5
  %cmp246 = icmp slt i32 %244, 0
  br i1 %cmp246, label %if.then.248, label %if.end.249

if.then.248:                                      ; preds = %if.end.245
  br label %for.end.252

if.end.249:                                       ; preds = %if.end.245
  br label %for.inc.250

for.inc.250:                                      ; preds = %if.end.249
  %245 = load i32, i32* %block_height, align 4, !tbaa !5
  %246 = load i32, i32* %py, align 4, !tbaa !5
  %add251 = add nsw i32 %246, %245
  store i32 %add251, i32* %py, align 4, !tbaa !5
  br label %for.cond.168

for.end.252:                                      ; preds = %if.then.248, %if.then.232, %cleanup.204, %for.cond.168
  br label %out

out:                                              ; preds = %for.end.252, %if.then.162
  %247 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs253 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %247, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs253, i32 0, i32 2
  %248 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !67
  %249 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %250 = load i8*, i8** %row, align 8, !tbaa !1
  call void %248(%struct.gs_memory_s* %249, i8* %250, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)) #3
  %251 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pmdev, align 8, !tbaa !1
  %252 = bitcast %struct.gx_device_memory_s* %251 to %struct.gx_device_s*
  call void @gx_device_retain(%struct.gx_device_s* %252, i32 0) #3
  %253 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %253, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.254

cleanup.254:                                      ; preds = %out, %cleanup.204, %if.then.149, %cleanup, %if.then.93, %if.then.48, %if.then
  %254 = bitcast i32* %plane_depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %254) #1
  %255 = bitcast i32* %is_planar to i8*
  call void @llvm.lifetime.end(i64 4, i8* %255) #1
  %256 = bitcast i32* %py to i8*
  call void @llvm.lifetime.end(i64 4, i8* %256) #1
  %257 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %257) #1
  %258 = bitcast i32* %block_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %258) #1
  %259 = bitcast i32* %max_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %259) #1
  %260 = bitcast %struct.gs_int_rect_s* %rect to i8*
  call void @llvm.lifetime.end(i64 16, i8* %260) #1
  %261 = bitcast i8** %row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %261) #1
  %262 = bitcast i32* %draster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %262) #1
  %263 = bitcast %struct.gx_device_memory_s** %pmdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %263) #1
  %264 = bitcast %struct.gx_device_memory_s** %mdproto to i8*
  call void @llvm.lifetime.end(i64 8, i8* %264) #1
  %265 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %265) #1
  %266 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %266) #1
  %267 = load i32, i32* %retval
  ret i32 %267
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare %struct.gx_device_memory_s* @gdev_mem_device_for_bits(i32) #2

declare i32 @gs_make_mem_device_with_copydevice(%struct.gx_device_memory_s**, %struct.gx_device_memory_s*, %struct.gs_memory_s*, i32, %struct.gx_device_s*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @gdev_mem_set_planar(%struct.gx_device_memory_s*, i32, %struct.gx_render_plane_s*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @gs_transparent_rop(i32 %lop) #0 {
entry:
  %lop.addr = alloca i32, align 4
  %rop = alloca i32, align 4
  %mask = alloca i32, align 4
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !5
  %0 = bitcast i32* %rop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %and = and i32 %1, 255
  store i32 %and, i32* %rop, align 4, !tbaa !38
  %2 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %and1 = and i32 %3, 256
  %tobool = icmp ne i32 %and1, 0
  br i1 %tobool, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, i32* %rop, align 4, !tbaa !38
  %shl = shl i32 %4, 2
  %5 = load i32, i32* %rop, align 4, !tbaa !38
  %xor = xor i32 %shl, %5
  %and2 = and i32 %xor, 204
  %cmp = icmp ne i32 %and2, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %6 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %and3 = and i32 %6, 512
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.true
  %7 = load i32, i32* %rop, align 4, !tbaa !38
  %shl5 = shl i32 %7, 4
  %8 = load i32, i32* %rop, align 4, !tbaa !38
  %xor6 = xor i32 %shl5, %8
  %and7 = and i32 %xor6, 240
  %cmp8 = icmp ne i32 %and7, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.true
  %9 = phi i1 [ false, %cond.true ], [ %cmp8, %land.rhs ]
  %cond = select i1 %9, i32 3, i32 51
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  %10 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %and9 = and i32 %10, 512
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %land.rhs.11, label %land.end.16

land.rhs.11:                                      ; preds = %cond.false
  %11 = load i32, i32* %rop, align 4, !tbaa !38
  %shl12 = shl i32 %11, 4
  %12 = load i32, i32* %rop, align 4, !tbaa !38
  %xor13 = xor i32 %shl12, %12
  %and14 = and i32 %xor13, 240
  %cmp15 = icmp ne i32 %and14, 0
  br label %land.end.16

land.end.16:                                      ; preds = %land.rhs.11, %cond.false
  %13 = phi i1 [ false, %cond.false ], [ %cmp15, %land.rhs.11 ]
  %cond17 = select i1 %13, i32 207, i32 255
  br label %cond.end

cond.end:                                         ; preds = %land.end.16, %land.end
  %cond18 = phi i32 [ %cond, %land.end ], [ %cond17, %land.end.16 ]
  store i32 %cond18, i32* %mask, align 4, !tbaa !38
  %14 = load i32, i32* %rop, align 4, !tbaa !38
  %15 = load i32, i32* %mask, align 4, !tbaa !38
  %and19 = and i32 %14, %15
  %16 = load i32, i32* %mask, align 4, !tbaa !38
  %neg = xor i32 %16, -1
  %and20 = and i32 170, %neg
  %or = or i32 %and19, %and20
  %17 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  %18 = bitcast i32* %rop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  ret i32 %or
}

declare void @gx_device_retain(%struct.gx_device_s*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @mem_default_strip_copy_rop2(%struct.gx_device_s* %dev, i8* %sdata, i32 %sourcex, i32 %sraster, i64 %id, i64* %scolors, %struct.gx_strip_bitmap_s* %textures, i64* %tcolors, i32 %x, i32 %y, i32 %width, i32 %height, i32 %phase_x, i32 %phase_y, i32 %lop, i32 %planar_height) #0 {
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
  %planar_height.addr = alloca i32, align 4
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
  store i32 %planar_height, i32* %planar_height.addr, align 4, !tbaa !5
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i32 0, i32 3
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !21
  call void @dmprintf_file_and_line(%struct.gs_memory_s* %1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 606) #3
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 3
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !21
  %call = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %3, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i32 0, i32 0)) #3
  ret i32 -100
}

declare void @dmprintf_file_and_line(%struct.gs_memory_s*, i8*, i32) #2

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define i32 @mem_default_strip_copy_rop(%struct.gx_device_s* %dev, i8* %sdata, i32 %sourcex, i32 %sraster, i64 %id, i64* %scolors, %struct.gx_strip_bitmap_s* %textures, i64* %tcolors, i32 %x, i32 %y, i32 %width, i32 %height, i32 %phase_x, i32 %phase_y, i32 %lop) #0 {
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
  %depth = alloca i32, align 4
  %rop_depth = alloca i32, align 4
  %pack = alloca void (%struct.gx_device_memory_s*, i32, i32, i8*, i32, i32, i32)*, align 8
  %no_expand_options = alloca i64, align 8
  %no_expand_t_options = alloca i64, align 8
  %expand_options = alloca i64, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %mdproto = alloca %struct.gx_device_memory_s*, align 8
  %mdev = alloca %struct.gx_device_memory_s, align 8
  %mdev_storage = alloca [20 x %union.anon.1], align 16
  %row_raster = alloca i32, align 4
  %size_from_mem_device = alloca i64, align 8
  %trans_rop = alloca i32, align 4
  %uses_d = alloca i32, align 4
  %uses_s = alloca i32, align 4
  %uses_t = alloca i32, align 4
  %expand_s = alloca i32, align 4
  %expand_t = alloca i32, align 4
  %row = alloca i8*, align 8
  %dest_buffer = alloca [16 x %union.anon.2], align 16
  %source_row = alloca i8*, align 8
  %source_row_raster = alloca i32, align 4
  %source_buffer = alloca [16 x %union.anon.3], align 16
  %texture_row = alloca i8*, align 8
  %texture_row_raster = alloca i32, align 4
  %texture_buffer = alloca [16 x %union.anon.4], align 16
  %source_colors = alloca [2 x i64], align 16
  %real_scolors = alloca i64*, align 8
  %texture_colors = alloca [2 x i64], align 16
  %real_tcolors = alloca i64*, align 8
  %rop_texture = alloca %struct.gx_strip_bitmap_s, align 8
  %real_texture = alloca %struct.gx_strip_bitmap_s*, align 8
  %rect = alloca %struct.gs_int_rect_s, align 4
  %bit_params = alloca %struct.gs_get_bits_params_s, align 8
  %expand_params = alloca %struct.gs_get_bits_params_s, align 8
  %no_expand_params = alloca %struct.gs_get_bits_params_s, align 8
  %no_expand_t_params = alloca %struct.gs_get_bits_params_s, align 8
  %max_height = alloca i32, align 4
  %block_height = alloca i32, align 4
  %loop_height = alloca i32, align 4
  %code = alloca i32, align 4
  %py = alloca i32, align 4
  %tdev = alloca %struct.gx_device_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  %num_bytes = alloca i32, align 4
  %num_bytes235 = alloca i32, align 4
  %num_bytes272 = alloca i32, align 4
  %sx = alloca i32, align 4
  %source_data = alloca i8*, align 8
  %source_raster = alloca i32, align 4
  %rep_y = alloca i32, align 4
  %i = alloca i32, align 4
  %unpacked = alloca i8*, align 8
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
  %0 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 11
  %depth1 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %2 = load i16, i16* %depth1, align 2, !tbaa !9
  %conv = zext i16 %2 to i32
  store i32 %conv, i32* %depth, align 4, !tbaa !5
  %3 = bitcast i32* %rop_depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info2, i32 0, i32 1
  %5 = load i32, i32* %num_components, align 4, !tbaa !41
  %cmp = icmp sgt i32 %5, 1
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info4 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 11
  %gray_index = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info4, i32 0, i32 4
  %7 = load i8, i8* %gray_index, align 1, !tbaa !68
  %conv5 = zext i8 %7 to i32
  %cmp6 = icmp eq i32 %conv5, 255
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %8 = phi i1 [ true, %entry ], [ %cmp6, %lor.rhs ]
  %cond = select i1 %8, i32 24, i32 8
  store i32 %cond, i32* %rop_depth, align 4, !tbaa !5
  %9 = bitcast void (%struct.gx_device_memory_s*, i32, i32, i8*, i32, i32, i32)** %pack to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i64* %no_expand_options to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store i64 359743249, i64* %no_expand_options, align 8, !tbaa !7
  %11 = bitcast i64* %no_expand_t_options to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_strip_bitmap_s* %12, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.end
  %13 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %num_planes = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %13, i32 0, i32 8
  %14 = load i32, i32* %num_planes, align 4, !tbaa !69
  %cmp8 = icmp sgt i32 %14, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.end
  %15 = phi i1 [ false, %lor.end ], [ %cmp8, %land.rhs ]
  %cond10 = select i1 %15, i64 131072, i64 65536
  %or = or i64 359677713, %cond10
  store i64 %or, i64* %no_expand_t_options, align 8, !tbaa !7
  %16 = bitcast i64* %expand_options to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = load i32, i32* %rop_depth, align 4, !tbaa !5
  %cmp11 = icmp sgt i32 %17, 8
  %cond13 = select i1 %cmp11, i64 4, i64 2
  %or14 = or i64 %cond13, 16
  %or15 = or i64 %or14, 2048
  %or16 = or i64 %or15, 65536
  %or17 = or i64 %or16, 1048576
  %or18 = or i64 %or17, 4194304
  %or19 = or i64 %or18, 16777216
  %or20 = or i64 %or19, 268435456
  store i64 %or20, i64* %expand_options, align 8, !tbaa !7
  %18 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %19, i32 0, i32 3
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !21
  store %struct.gs_memory_s* %20, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %21 = bitcast %struct.gx_device_memory_s** %mdproto to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = load i32, i32* %rop_depth, align 4, !tbaa !5
  %call = call %struct.gx_device_memory_s* @gdev_mem_device_for_bits(i32 %22) #3
  store %struct.gx_device_memory_s* %call, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %23 = bitcast %struct.gx_device_memory_s* %mdev to i8*
  call void @llvm.lifetime.start(i64 2792, i8* %23) #1
  %24 = bitcast [20 x %union.anon.1]* %mdev_storage to i8*
  call void @llvm.lifetime.start(i64 160, i8* %24) #1
  %25 = bitcast i32* %row_raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  %26 = load i32, i32* %width.addr, align 4, !tbaa !5
  %27 = load i32, i32* %depth, align 4, !tbaa !5
  %mul = mul nsw i32 %26, %27
  %add = add nsw i32 %mul, 63
  %shr = ashr i32 %add, 6
  %shl = shl i32 %shr, 3
  store i32 %shl, i32* %row_raster, align 4, !tbaa !5
  %28 = bitcast i64* %size_from_mem_device to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #1
  %29 = bitcast i32* %trans_rop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  %30 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call21 = call i32 @gs_transparent_rop(i32 %30) #3
  store i32 %call21, i32* %trans_rop, align 4, !tbaa !38
  %31 = bitcast i32* %uses_d to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  %32 = load i32, i32* %trans_rop, align 4, !tbaa !38
  %shl22 = shl i32 %32, 1
  %33 = load i32, i32* %trans_rop, align 4, !tbaa !38
  %xor = xor i32 %shl22, %33
  %and = and i32 %xor, 170
  %cmp23 = icmp ne i32 %and, 0
  %conv24 = zext i1 %cmp23 to i32
  store i32 %conv24, i32* %uses_d, align 4, !tbaa !5
  %34 = bitcast i32* %uses_s to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  %35 = load i32, i32* %trans_rop, align 4, !tbaa !38
  %shl25 = shl i32 %35, 2
  %36 = load i32, i32* %trans_rop, align 4, !tbaa !38
  %xor26 = xor i32 %shl25, %36
  %and27 = and i32 %xor26, 204
  %cmp28 = icmp ne i32 %and27, 0
  %conv29 = zext i1 %cmp28 to i32
  store i32 %conv29, i32* %uses_s, align 4, !tbaa !5
  %37 = bitcast i32* %uses_t to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %38 = load i32, i32* %trans_rop, align 4, !tbaa !38
  %shl30 = shl i32 %38, 4
  %39 = load i32, i32* %trans_rop, align 4, !tbaa !38
  %xor31 = xor i32 %shl30, %39
  %and32 = and i32 %xor31, 240
  %cmp33 = icmp ne i32 %and32, 0
  %conv34 = zext i1 %cmp33 to i32
  store i32 %conv34, i32* %uses_t, align 4, !tbaa !5
  %40 = bitcast i32* %expand_s to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #1
  %41 = bitcast i32* %expand_t to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #1
  %42 = bitcast i8** %row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %42) #1
  store i8* null, i8** %row, align 8, !tbaa !1
  %43 = bitcast [16 x %union.anon.2]* %dest_buffer to i8*
  call void @llvm.lifetime.start(i64 128, i8* %43) #1
  %44 = bitcast i8** %source_row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %44) #1
  store i8* null, i8** %source_row, align 8, !tbaa !1
  %45 = bitcast i32* %source_row_raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #1
  %46 = bitcast [16 x %union.anon.3]* %source_buffer to i8*
  call void @llvm.lifetime.start(i64 128, i8* %46) #1
  %47 = bitcast i8** %texture_row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %47) #1
  store i8* null, i8** %texture_row, align 8, !tbaa !1
  %48 = bitcast i32* %texture_row_raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #1
  %49 = bitcast [16 x %union.anon.4]* %texture_buffer to i8*
  call void @llvm.lifetime.start(i64 128, i8* %49) #1
  %50 = bitcast [2 x i64]* %source_colors to i8*
  call void @llvm.lifetime.start(i64 16, i8* %50) #1
  %51 = bitcast i64** %real_scolors to i8*
  call void @llvm.lifetime.start(i64 8, i8* %51) #1
  %52 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  store i64* %52, i64** %real_scolors, align 8, !tbaa !1
  %53 = bitcast [2 x i64]* %texture_colors to i8*
  call void @llvm.lifetime.start(i64 16, i8* %53) #1
  %54 = bitcast i64** %real_tcolors to i8*
  call void @llvm.lifetime.start(i64 8, i8* %54) #1
  %55 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  store i64* %55, i64** %real_tcolors, align 8, !tbaa !1
  %56 = bitcast %struct.gx_strip_bitmap_s* %rop_texture to i8*
  call void @llvm.lifetime.start(i64 48, i8* %56) #1
  %57 = bitcast %struct.gx_strip_bitmap_s** %real_texture to i8*
  call void @llvm.lifetime.start(i64 8, i8* %57) #1
  %58 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  store %struct.gx_strip_bitmap_s* %58, %struct.gx_strip_bitmap_s** %real_texture, align 8, !tbaa !1
  %59 = bitcast %struct.gs_int_rect_s* %rect to i8*
  call void @llvm.lifetime.start(i64 16, i8* %59) #1
  %60 = bitcast %struct.gs_get_bits_params_s* %bit_params to i8*
  call void @llvm.lifetime.start(i64 536, i8* %60) #1
  %61 = bitcast %struct.gs_get_bits_params_s* %expand_params to i8*
  call void @llvm.lifetime.start(i64 536, i8* %61) #1
  %62 = bitcast %struct.gs_get_bits_params_s* %no_expand_params to i8*
  call void @llvm.lifetime.start(i64 536, i8* %62) #1
  %63 = bitcast %struct.gs_get_bits_params_s* %no_expand_t_params to i8*
  call void @llvm.lifetime.start(i64 536, i8* %63) #1
  %64 = bitcast i32* %max_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %64) #1
  %65 = bitcast i32* %block_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %65) #1
  %66 = bitcast i32* %loop_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %66) #1
  %67 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %67) #1
  %68 = bitcast i32* %py to i8*
  call void @llvm.lifetime.start(i64 4, i8* %68) #1
  %69 = bitcast %struct.gx_device_memory_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %69) #1
  %70 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %71 = bitcast %struct.gx_device_s* %70 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %71, %struct.gx_device_memory_s** %tdev, align 8, !tbaa !1
  %72 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %tdev, align 8, !tbaa !1
  %is_planar = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %72, i32 0, i32 17
  %73 = load i32, i32* %is_planar, align 4, !tbaa !71
  %tobool35 = icmp ne i32 %73, 0
  br i1 %tobool35, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.end
  %74 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %tdev, align 8, !tbaa !1
  %color_info36 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %74, i32 0, i32 11
  %num_components37 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info36, i32 0, i32 1
  %75 = load i32, i32* %num_components37, align 4, !tbaa !72
  %cmp38 = icmp sle i32 %75, 1
  br i1 %cmp38, label %if.then, label %if.else.46

if.then:                                          ; preds = %lor.lhs.false, %land.end
  %76 = load i32, i32* %rop_depth, align 4, !tbaa !5
  %cmp40 = icmp eq i32 %76, 24
  br i1 %cmp40, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %77 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %77, i32 0, i32 42
  %dev_spec_op = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 65
  %78 = load i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)** %dev_spec_op, align 8, !tbaa !73
  %79 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call42 = call i32 %78(%struct.gx_device_s* %79, i32 8, i8* null, i32 0) #3
  %cmp43 = icmp sgt i32 %call42, 0
  br i1 %cmp43, label %if.then.45, label %if.else

if.then.45:                                       ; preds = %land.lhs.true
  store void (%struct.gx_device_memory_s*, i32, i32, i8*, i32, i32, i32)* @pack_cmyk_1bit_from_standard, void (%struct.gx_device_memory_s*, i32, i32, i8*, i32, i32, i32)** %pack, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  store void (%struct.gx_device_memory_s*, i32, i32, i8*, i32, i32, i32)* @pack_from_standard, void (%struct.gx_device_memory_s*, i32, i32, i8*, i32, i32, i32)** %pack, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.45
  br label %if.end.47

if.else.46:                                       ; preds = %lor.lhs.false
  store void (%struct.gx_device_memory_s*, i32, i32, i8*, i32, i32, i32)* @pack_planar_from_standard, void (%struct.gx_device_memory_s*, i32, i32, i8*, i32, i32, i32)** %pack, align 8, !tbaa !1
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.46, %if.end
  %80 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %cmp48 = icmp eq %struct.gx_device_memory_s* %80, null
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.end.47
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.460

if.end.51:                                        ; preds = %if.end.47
  %81 = load i8*, i8** %sdata.addr, align 8, !tbaa !1
  %cmp52 = icmp eq i8* %81, null
  br i1 %cmp52, label %if.then.54, label %if.else.104

if.then.54:                                       ; preds = %if.end.51
  br label %do.body

do.body:                                          ; preds = %if.then.54
  br label %do.body.55

do.body.55:                                       ; preds = %do.body
  br label %do.body.56

do.body.56:                                       ; preds = %do.body.55
  %82 = load i32, i32* %x.addr, align 4, !tbaa !5
  %83 = load i32, i32* %y.addr, align 4, !tbaa !5
  %or57 = or i32 %82, %83
  %cmp58 = icmp slt i32 %or57, 0
  br i1 %cmp58, label %if.then.60, label %if.end.71

if.then.60:                                       ; preds = %do.body.56
  %84 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp61 = icmp slt i32 %84, 0
  br i1 %cmp61, label %if.then.63, label %if.end.65

if.then.63:                                       ; preds = %if.then.60
  %85 = load i32, i32* %x.addr, align 4, !tbaa !5
  %86 = load i32, i32* %width.addr, align 4, !tbaa !5
  %add64 = add nsw i32 %86, %85
  store i32 %add64, i32* %width.addr, align 4, !tbaa !5
  store i32 0, i32* %x.addr, align 4, !tbaa !5
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.63, %if.then.60
  %87 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp66 = icmp slt i32 %87, 0
  br i1 %cmp66, label %if.then.68, label %if.end.70

if.then.68:                                       ; preds = %if.end.65
  %88 = load i32, i32* %y.addr, align 4, !tbaa !5
  %89 = load i32, i32* %height.addr, align 4, !tbaa !5
  %add69 = add nsw i32 %89, %88
  store i32 %add69, i32* %height.addr, align 4, !tbaa !5
  store i32 0, i32* %y.addr, align 4, !tbaa !5
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.68, %if.end.65
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %do.body.56
  br label %do.cond

do.cond:                                          ; preds = %if.end.71
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.72

do.body.72:                                       ; preds = %do.end
  %90 = load i32, i32* %width.addr, align 4, !tbaa !5
  %91 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width73 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %91, i32 0, i32 13
  %92 = load i32, i32* %width73, align 4, !tbaa !22
  %93 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %92, %93
  %cmp74 = icmp sgt i32 %90, %sub
  br i1 %cmp74, label %if.then.76, label %if.end.79

if.then.76:                                       ; preds = %do.body.72
  %94 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width77 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %94, i32 0, i32 13
  %95 = load i32, i32* %width77, align 4, !tbaa !22
  %96 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub78 = sub nsw i32 %95, %96
  store i32 %sub78, i32* %width.addr, align 4, !tbaa !5
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.76, %do.body.72
  br label %do.cond.80

do.cond.80:                                       ; preds = %if.end.79
  br label %do.end.81

do.end.81:                                        ; preds = %do.cond.80
  br label %do.body.82

do.body.82:                                       ; preds = %do.end.81
  %97 = load i32, i32* %height.addr, align 4, !tbaa !5
  %98 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height83 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %98, i32 0, i32 14
  %99 = load i32, i32* %height83, align 4, !tbaa !23
  %100 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub84 = sub nsw i32 %99, %100
  %cmp85 = icmp sgt i32 %97, %sub84
  br i1 %cmp85, label %if.then.87, label %if.end.90

if.then.87:                                       ; preds = %do.body.82
  %101 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height88 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %101, i32 0, i32 14
  %102 = load i32, i32* %height88, align 4, !tbaa !23
  %103 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub89 = sub nsw i32 %102, %103
  store i32 %sub89, i32* %height.addr, align 4, !tbaa !5
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.87, %do.body.82
  br label %do.cond.91

do.cond.91:                                       ; preds = %if.end.90
  br label %do.end.92

do.end.92:                                        ; preds = %do.cond.91
  br label %do.cond.93

do.cond.93:                                       ; preds = %do.end.92
  br label %do.end.94

do.end.94:                                        ; preds = %do.cond.93
  %104 = load i32, i32* %width.addr, align 4, !tbaa !5
  %cmp95 = icmp sle i32 %104, 0
  br i1 %cmp95, label %if.then.100, label %lor.lhs.false.97

lor.lhs.false.97:                                 ; preds = %do.end.94
  %105 = load i32, i32* %height.addr, align 4, !tbaa !5
  %cmp98 = icmp sle i32 %105, 0
  br i1 %cmp98, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %lor.lhs.false.97, %do.end.94
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.460

if.end.101:                                       ; preds = %lor.lhs.false.97
  br label %do.cond.102

do.cond.102:                                      ; preds = %if.end.101
  br label %do.end.103

do.end.103:                                       ; preds = %do.cond.102
  br label %if.end.151

if.else.104:                                      ; preds = %if.end.51
  br label %do.body.105

do.body.105:                                      ; preds = %if.else.104
  br label %do.body.106

do.body.106:                                      ; preds = %do.body.105
  %106 = load i32, i32* %x.addr, align 4, !tbaa !5
  %107 = load i32, i32* %y.addr, align 4, !tbaa !5
  %or107 = or i32 %106, %107
  %cmp108 = icmp slt i32 %or107, 0
  br i1 %cmp108, label %if.then.110, label %if.end.123

if.then.110:                                      ; preds = %do.body.106
  %108 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp111 = icmp slt i32 %108, 0
  br i1 %cmp111, label %if.then.113, label %if.end.116

if.then.113:                                      ; preds = %if.then.110
  %109 = load i32, i32* %x.addr, align 4, !tbaa !5
  %110 = load i32, i32* %width.addr, align 4, !tbaa !5
  %add114 = add nsw i32 %110, %109
  store i32 %add114, i32* %width.addr, align 4, !tbaa !5
  %111 = load i32, i32* %x.addr, align 4, !tbaa !5
  %112 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %sub115 = sub nsw i32 %112, %111
  store i32 %sub115, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 0, i32* %x.addr, align 4, !tbaa !5
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.113, %if.then.110
  %113 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp117 = icmp slt i32 %113, 0
  br i1 %cmp117, label %if.then.119, label %if.end.122

if.then.119:                                      ; preds = %if.end.116
  %114 = load i32, i32* %y.addr, align 4, !tbaa !5
  %115 = load i32, i32* %height.addr, align 4, !tbaa !5
  %add120 = add nsw i32 %115, %114
  store i32 %add120, i32* %height.addr, align 4, !tbaa !5
  %116 = load i32, i32* %y.addr, align 4, !tbaa !5
  %117 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %mul121 = mul i32 %116, %117
  %118 = load i8*, i8** %sdata.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %mul121 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %118, i64 %idx.neg
  store i8* %add.ptr, i8** %sdata.addr, align 8, !tbaa !1
  store i64 0, i64* %id.addr, align 8, !tbaa !7
  store i32 0, i32* %y.addr, align 4, !tbaa !5
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.119, %if.end.116
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.122, %do.body.106
  %119 = load i32, i32* %width.addr, align 4, !tbaa !5
  %120 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width124 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %120, i32 0, i32 13
  %121 = load i32, i32* %width124, align 4, !tbaa !22
  %122 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub125 = sub nsw i32 %121, %122
  %cmp126 = icmp sgt i32 %119, %sub125
  br i1 %cmp126, label %if.then.128, label %if.end.131

if.then.128:                                      ; preds = %if.end.123
  %123 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width129 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %123, i32 0, i32 13
  %124 = load i32, i32* %width129, align 4, !tbaa !22
  %125 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub130 = sub nsw i32 %124, %125
  store i32 %sub130, i32* %width.addr, align 4, !tbaa !5
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.128, %if.end.123
  br label %do.cond.132

do.cond.132:                                      ; preds = %if.end.131
  br label %do.end.133

do.end.133:                                       ; preds = %do.cond.132
  %126 = load i32, i32* %height.addr, align 4, !tbaa !5
  %127 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height134 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %127, i32 0, i32 14
  %128 = load i32, i32* %height134, align 4, !tbaa !23
  %129 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub135 = sub nsw i32 %128, %129
  %cmp136 = icmp sgt i32 %126, %sub135
  br i1 %cmp136, label %if.then.138, label %if.end.141

if.then.138:                                      ; preds = %do.end.133
  %130 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height139 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %130, i32 0, i32 14
  %131 = load i32, i32* %height139, align 4, !tbaa !23
  %132 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub140 = sub nsw i32 %131, %132
  store i32 %sub140, i32* %height.addr, align 4, !tbaa !5
  br label %if.end.141

if.end.141:                                       ; preds = %if.then.138, %do.end.133
  %133 = load i32, i32* %width.addr, align 4, !tbaa !5
  %cmp142 = icmp sle i32 %133, 0
  br i1 %cmp142, label %if.then.147, label %lor.lhs.false.144

lor.lhs.false.144:                                ; preds = %if.end.141
  %134 = load i32, i32* %height.addr, align 4, !tbaa !5
  %cmp145 = icmp sle i32 %134, 0
  br i1 %cmp145, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %lor.lhs.false.144, %if.end.141
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.460

if.end.148:                                       ; preds = %lor.lhs.false.144
  br label %do.cond.149

do.cond.149:                                      ; preds = %if.end.148
  br label %do.end.150

do.end.150:                                       ; preds = %do.cond.149
  br label %if.end.151

if.end.151:                                       ; preds = %do.end.150, %do.end.103
  %135 = load i32, i32* %width.addr, align 4, !tbaa !5
  %136 = load i32, i32* %rop_depth, align 4, !tbaa !5
  %mul152 = mul nsw i32 %135, %136
  %div = udiv i32 1000, %mul152
  store i32 %div, i32* %max_height, align 4, !tbaa !5
  %137 = load i32, i32* %max_height, align 4, !tbaa !5
  %cmp153 = icmp eq i32 %137, 0
  br i1 %cmp153, label %if.then.155, label %if.end.156

if.then.155:                                      ; preds = %if.end.151
  store i32 1, i32* %max_height, align 4, !tbaa !5
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.155, %if.end.151
  %138 = load i32, i32* %height.addr, align 4, !tbaa !5
  %139 = load i32, i32* %max_height, align 4, !tbaa !5
  %cmp157 = icmp slt i32 %138, %139
  br i1 %cmp157, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.156
  %140 = load i32, i32* %height.addr, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.end.156
  %141 = load i32, i32* %max_height, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond159 = phi i32 [ %140, %cond.true ], [ %141, %cond.false ]
  store i32 %cond159, i32* %block_height, align 4, !tbaa !5
  %142 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %cmp160 = icmp eq i64* %142, null
  br i1 %cmp160, label %land.rhs.162, label %land.end.164

land.rhs.162:                                     ; preds = %cond.end
  %143 = load i32, i32* %uses_s, align 4, !tbaa !5
  %tobool163 = icmp ne i32 %143, 0
  br label %land.end.164

land.end.164:                                     ; preds = %land.rhs.162, %cond.end
  %144 = phi i1 [ false, %cond.end ], [ %tobool163, %land.rhs.162 ]
  %land.ext = zext i1 %144 to i32
  store i32 %land.ext, i32* %expand_s, align 4, !tbaa !5
  %145 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %cmp165 = icmp eq i64* %145, null
  br i1 %cmp165, label %land.rhs.167, label %land.end.169

land.rhs.167:                                     ; preds = %land.end.164
  %146 = load i32, i32* %uses_t, align 4, !tbaa !5
  %tobool168 = icmp ne i32 %146, 0
  br label %land.end.169

land.end.169:                                     ; preds = %land.rhs.167, %land.end.164
  %147 = phi i1 [ false, %land.end.164 ], [ %tobool168, %land.rhs.167 ]
  %land.ext170 = zext i1 %147 to i32
  store i32 %land.ext170, i32* %expand_t, align 4, !tbaa !5
  %options = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %no_expand_params, i32 0, i32 0
  store i64 359743249, i64* %options, align 8, !tbaa !57
  %148 = load i64, i64* %no_expand_t_options, align 8, !tbaa !7
  %options171 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %no_expand_t_params, i32 0, i32 0
  store i64 %148, i64* %options171, align 8, !tbaa !57
  %149 = load i32, i32* %expand_t, align 4, !tbaa !5
  %tobool172 = icmp ne i32 %149, 0
  br i1 %tobool172, label %if.then.173, label %if.end.181

if.then.173:                                      ; preds = %land.end.169
  %150 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %150, i32 0, i32 2
  %y174 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size, i32 0, i32 1
  %151 = load i32, i32* %y174, align 4, !tbaa !74
  %152 = load i32, i32* %block_height, align 4, !tbaa !5
  %cmp175 = icmp slt i32 %151, %152
  br i1 %cmp175, label %if.then.177, label %if.end.180

if.then.177:                                      ; preds = %if.then.173
  %153 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %size178 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %153, i32 0, i32 2
  %y179 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size178, i32 0, i32 1
  %154 = load i32, i32* %y179, align 4, !tbaa !74
  store i32 %154, i32* %block_height, align 4, !tbaa !5
  br label %if.end.180

if.end.180:                                       ; preds = %if.then.177, %if.then.173
  br label %if.end.181

if.end.181:                                       ; preds = %if.end.180, %land.end.169
  %155 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdproto, align 8, !tbaa !1
  %156 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  call void @gs_make_mem_device(%struct.gx_device_memory_s* %mdev, %struct.gx_device_memory_s* %155, %struct.gs_memory_s* %156, i32 -1, %struct.gx_device_s* null) #3
  %157 = bitcast %struct.gx_device_memory_s* %mdev to %struct.gx_device_s*
  call void @gx_device_retain(%struct.gx_device_s* %157, i32 1) #3
  %158 = load i32, i32* %width.addr, align 4, !tbaa !5
  %width182 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev, i32 0, i32 13
  store i32 %158, i32* %width182, align 4, !tbaa !24
  %159 = load i32, i32* %block_height, align 4, !tbaa !5
  %height183 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev, i32 0, i32 14
  store i32 %159, i32* %height183, align 4, !tbaa !35
  %160 = load i32, i32* %rop_depth, align 4, !tbaa !5
  %shr184 = ashr i32 %160, 3
  %color_info185 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev, i32 0, i32 11
  %num_components186 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info185, i32 0, i32 1
  store i32 %shr184, i32* %num_components186, align 4, !tbaa !72
  %161 = load i32, i32* %width.addr, align 4, !tbaa !5
  %162 = load i32, i32* %block_height, align 4, !tbaa !5
  %call187 = call i32 @gdev_mem_data_size(%struct.gx_device_memory_s* %mdev, i32 %161, i32 %162, i64* %size_from_mem_device) #3
  %cmp188 = icmp sge i32 %call187, 0
  br i1 %cmp188, label %land.lhs.true.190, label %if.else.203

land.lhs.true.190:                                ; preds = %if.end.181
  %163 = load i64, i64* %size_from_mem_device, align 8, !tbaa !7
  %cmp191 = icmp ule i64 %163, 160
  br i1 %cmp191, label %if.then.193, label %if.else.203

if.then.193:                                      ; preds = %land.lhs.true.190
  %arraydecay = getelementptr inbounds [20 x %union.anon.1], [20 x %union.anon.1]* %mdev_storage, i32 0, i32 0
  %164 = bitcast %union.anon.1* %arraydecay to i8*
  %base = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev, i32 0, i32 45
  store i8* %164, i8** %base, align 8, !tbaa !75
  %width194 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev, i32 0, i32 13
  %165 = load i32, i32* %width194, align 4, !tbaa !24
  %height195 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev, i32 0, i32 14
  %166 = load i32, i32* %height195, align 4, !tbaa !35
  %call196 = call i32 @gdev_mem_bits_size(%struct.gx_device_memory_s* %mdev, i32 %165, i32 %166, i64* %size_from_mem_device) #3
  store i32 %call196, i32* %code, align 4, !tbaa !5
  %cmp197 = icmp slt i32 %call196, 0
  br i1 %cmp197, label %if.then.199, label %if.end.200

if.then.199:                                      ; preds = %if.then.193
  %167 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %167, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.460

if.end.200:                                       ; preds = %if.then.193
  %base201 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev, i32 0, i32 45
  %168 = load i8*, i8** %base201, align 8, !tbaa !75
  %169 = load i64, i64* %size_from_mem_device, align 8, !tbaa !7
  %add.ptr202 = getelementptr inbounds i8, i8* %168, i64 %169
  %170 = bitcast i8* %add.ptr202 to i8**
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev, i32 0, i32 52
  store i8** %170, i8*** %line_ptrs, align 8, !tbaa !65
  br label %if.end.204

if.else.203:                                      ; preds = %land.lhs.true.190, %if.end.181
  %171 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %bitmap_memory = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev, i32 0, i32 46
  store %struct.gs_memory_s* %171, %struct.gs_memory_s** %bitmap_memory, align 8, !tbaa !36
  br label %if.end.204

if.end.204:                                       ; preds = %if.else.203, %if.end.200
  %procs205 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev, i32 0, i32 42
  %open_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs205, i32 0, i32 0
  %172 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %open_device, align 8, !tbaa !46
  %173 = bitcast %struct.gx_device_memory_s* %mdev to %struct.gx_device_s*
  %call206 = call i32 %172(%struct.gx_device_s* %173) #3
  store i32 %call206, i32* %code, align 4, !tbaa !5
  %174 = load i32, i32* %code, align 4, !tbaa !5
  %cmp207 = icmp slt i32 %174, 0
  br i1 %cmp207, label %if.then.209, label %if.end.210

if.then.209:                                      ; preds = %if.end.204
  %175 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %175, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.460

if.end.210:                                       ; preds = %if.end.204
  br label %do.body.211

do.body.211:                                      ; preds = %if.end.210
  %176 = bitcast i32* %num_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %176) #1
  %177 = load i32, i32* %row_raster, align 4, !tbaa !5
  %178 = load i32, i32* %block_height, align 4, !tbaa !5
  %mul212 = mul i32 %177, %178
  store i32 %mul212, i32* %num_bytes, align 4, !tbaa !5
  %179 = load i32, i32* %num_bytes, align 4, !tbaa !5
  %conv213 = zext i32 %179 to i64
  %cmp214 = icmp ule i64 %conv213, 128
  br i1 %cmp214, label %if.then.216, label %if.else.218

if.then.216:                                      ; preds = %do.body.211
  %arraydecay217 = getelementptr inbounds [16 x %union.anon.2], [16 x %union.anon.2]* %dest_buffer, i32 0, i32 0
  %180 = bitcast %union.anon.2* %arraydecay217 to i8*
  store i8* %180, i8** %row, align 8, !tbaa !1
  br label %if.end.225

if.else.218:                                      ; preds = %do.body.211
  %181 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs219 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %181, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs219, i32 0, i32 7
  %182 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !48
  %183 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %184 = load i32, i32* %num_bytes, align 4, !tbaa !5
  %call220 = call i8* %182(%struct.gs_memory_s* %183, i32 %184, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)) #3
  store i8* %call220, i8** %row, align 8, !tbaa !1
  %185 = load i8*, i8** %row, align 8, !tbaa !1
  %cmp221 = icmp eq i8* %185, null
  br i1 %cmp221, label %if.then.223, label %if.end.224

if.then.223:                                      ; preds = %if.else.218
  store i32 -25, i32* %code, align 4, !tbaa !5
  store i32 18, i32* %cleanup.dest.slot
  br label %cleanup

if.end.224:                                       ; preds = %if.else.218
  br label %if.end.225

if.end.225:                                       ; preds = %if.end.224, %if.then.216
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.223, %if.end.225
  %186 = bitcast i32* %num_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %186) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.460 [
    i32 0, label %cleanup.cont
    i32 18, label %out
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond.226

do.cond.226:                                      ; preds = %cleanup.cont
  br label %do.end.227

do.end.227:                                       ; preds = %do.cond.226
  %187 = load i32, i32* %expand_s, align 4, !tbaa !5
  %tobool228 = icmp ne i32 %187, 0
  br i1 %tobool228, label %if.then.229, label %if.end.256

if.then.229:                                      ; preds = %do.end.227
  %188 = load i32, i32* %width.addr, align 4, !tbaa !5
  %189 = load i32, i32* %rop_depth, align 4, !tbaa !5
  %mul230 = mul nsw i32 %188, %189
  %add231 = add nsw i32 %mul230, 63
  %shr232 = ashr i32 %add231, 6
  %shl233 = shl i32 %shr232, 3
  store i32 %shl233, i32* %source_row_raster, align 4, !tbaa !5
  br label %do.body.234

do.body.234:                                      ; preds = %if.then.229
  %190 = bitcast i32* %num_bytes235 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %190) #1
  %191 = load i32, i32* %source_row_raster, align 4, !tbaa !5
  %192 = load i32, i32* %block_height, align 4, !tbaa !5
  %mul236 = mul i32 %191, %192
  store i32 %mul236, i32* %num_bytes235, align 4, !tbaa !5
  %193 = load i32, i32* %num_bytes235, align 4, !tbaa !5
  %conv237 = zext i32 %193 to i64
  %cmp238 = icmp ule i64 %conv237, 128
  br i1 %cmp238, label %if.then.240, label %if.else.242

if.then.240:                                      ; preds = %do.body.234
  %arraydecay241 = getelementptr inbounds [16 x %union.anon.3], [16 x %union.anon.3]* %source_buffer, i32 0, i32 0
  %194 = bitcast %union.anon.3* %arraydecay241 to i8*
  store i8* %194, i8** %source_row, align 8, !tbaa !1
  br label %if.end.250

if.else.242:                                      ; preds = %do.body.234
  %195 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs243 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %195, i32 0, i32 1
  %alloc_bytes244 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs243, i32 0, i32 7
  %196 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes244, align 8, !tbaa !48
  %197 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %198 = load i32, i32* %num_bytes235, align 4, !tbaa !5
  %call245 = call i8* %196(%struct.gs_memory_s* %197, i32 %198, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0)) #3
  store i8* %call245, i8** %source_row, align 8, !tbaa !1
  %199 = load i8*, i8** %source_row, align 8, !tbaa !1
  %cmp246 = icmp eq i8* %199, null
  br i1 %cmp246, label %if.then.248, label %if.end.249

if.then.248:                                      ; preds = %if.else.242
  store i32 -25, i32* %code, align 4, !tbaa !5
  store i32 18, i32* %cleanup.dest.slot
  br label %cleanup.251

if.end.249:                                       ; preds = %if.else.242
  br label %if.end.250

if.end.250:                                       ; preds = %if.end.249, %if.then.240
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.251

cleanup.251:                                      ; preds = %if.then.248, %if.end.250
  %200 = bitcast i32* %num_bytes235 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %200) #1
  %cleanup.dest.252 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.252, label %cleanup.460 [
    i32 0, label %cleanup.cont.253
    i32 18, label %out
  ]

cleanup.cont.253:                                 ; preds = %cleanup.251
  br label %do.cond.254

do.cond.254:                                      ; preds = %cleanup.cont.253
  br label %do.end.255

do.end.255:                                       ; preds = %do.cond.254
  br label %if.end.256

if.end.256:                                       ; preds = %do.end.255, %do.end.227
  %201 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %tobool257 = icmp ne i64* %201, null
  br i1 %tobool257, label %land.lhs.true.258, label %if.end.263

land.lhs.true.258:                                ; preds = %if.end.256
  %202 = load i32, i32* %uses_s, align 4, !tbaa !5
  %tobool259 = icmp ne i32 %202, 0
  br i1 %tobool259, label %if.then.260, label %if.end.263

if.then.260:                                      ; preds = %land.lhs.true.258
  %203 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay261 = getelementptr inbounds [2 x i64], [2 x i64]* %source_colors, i32 0, i32 0
  %204 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %205 = load i32, i32* %rop_depth, align 4, !tbaa !5
  call void @unpack_colors_to_standard(%struct.gx_device_s* %203, i64* %arraydecay261, i64* %204, i32 %205) #3
  %arraydecay262 = getelementptr inbounds [2 x i64], [2 x i64]* %source_colors, i32 0, i32 0
  store i64* %arraydecay262, i64** %real_scolors, align 8, !tbaa !1
  br label %if.end.263

if.end.263:                                       ; preds = %if.then.260, %land.lhs.true.258, %if.end.256
  %206 = load i32, i32* %expand_t, align 4, !tbaa !5
  %tobool264 = icmp ne i32 %206, 0
  br i1 %tobool264, label %if.then.265, label %if.end.309

if.then.265:                                      ; preds = %if.end.263
  %207 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %rep_width = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %207, i32 0, i32 4
  %208 = load i16, i16* %rep_width, align 2, !tbaa !76
  %conv266 = zext i16 %208 to i32
  %209 = load i32, i32* %rop_depth, align 4, !tbaa !5
  %mul267 = mul nsw i32 %conv266, %209
  %add268 = add nsw i32 %mul267, 63
  %shr269 = ashr i32 %add268, 6
  %shl270 = shl i32 %shr269, 3
  store i32 %shl270, i32* %texture_row_raster, align 4, !tbaa !5
  br label %do.body.271

do.body.271:                                      ; preds = %if.then.265
  %210 = bitcast i32* %num_bytes272 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %210) #1
  %211 = load i32, i32* %texture_row_raster, align 4, !tbaa !5
  %212 = load i32, i32* %block_height, align 4, !tbaa !5
  %mul273 = mul i32 %211, %212
  store i32 %mul273, i32* %num_bytes272, align 4, !tbaa !5
  %213 = load i32, i32* %num_bytes272, align 4, !tbaa !5
  %conv274 = zext i32 %213 to i64
  %cmp275 = icmp ule i64 %conv274, 128
  br i1 %cmp275, label %if.then.277, label %if.else.279

if.then.277:                                      ; preds = %do.body.271
  %arraydecay278 = getelementptr inbounds [16 x %union.anon.4], [16 x %union.anon.4]* %texture_buffer, i32 0, i32 0
  %214 = bitcast %union.anon.4* %arraydecay278 to i8*
  store i8* %214, i8** %texture_row, align 8, !tbaa !1
  br label %if.end.287

if.else.279:                                      ; preds = %do.body.271
  %215 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs280 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %215, i32 0, i32 1
  %alloc_bytes281 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs280, i32 0, i32 7
  %216 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes281, align 8, !tbaa !48
  %217 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %218 = load i32, i32* %num_bytes272, align 4, !tbaa !5
  %call282 = call i8* %216(%struct.gs_memory_s* %217, i32 %218, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0)) #3
  store i8* %call282, i8** %texture_row, align 8, !tbaa !1
  %219 = load i8*, i8** %texture_row, align 8, !tbaa !1
  %cmp283 = icmp eq i8* %219, null
  br i1 %cmp283, label %if.then.285, label %if.end.286

if.then.285:                                      ; preds = %if.else.279
  store i32 -25, i32* %code, align 4, !tbaa !5
  store i32 18, i32* %cleanup.dest.slot
  br label %cleanup.288

if.end.286:                                       ; preds = %if.else.279
  br label %if.end.287

if.end.287:                                       ; preds = %if.end.286, %if.then.277
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.288

cleanup.288:                                      ; preds = %if.then.285, %if.end.287
  %220 = bitcast i32* %num_bytes272 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %220) #1
  %cleanup.dest.289 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.289, label %cleanup.460 [
    i32 0, label %cleanup.cont.290
    i32 18, label %out
  ]

cleanup.cont.290:                                 ; preds = %cleanup.288
  br label %do.cond.291

do.cond.291:                                      ; preds = %cleanup.cont.290
  br label %do.end.292

do.end.292:                                       ; preds = %do.cond.291
  %221 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %222 = bitcast %struct.gx_strip_bitmap_s* %rop_texture to i8*
  %223 = bitcast %struct.gx_strip_bitmap_s* %221 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %222, i8* %223, i64 48, i32 8, i1 false), !tbaa.struct !77
  %224 = load i8*, i8** %texture_row, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %rop_texture, i32 0, i32 0
  store i8* %224, i8** %data, align 8, !tbaa !78
  %225 = load i32, i32* %texture_row_raster, align 4, !tbaa !5
  %raster = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %rop_texture, i32 0, i32 1
  store i32 %225, i32* %raster, align 4, !tbaa !79
  %rep_width293 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %rop_texture, i32 0, i32 4
  %226 = load i16, i16* %rep_width293, align 2, !tbaa !76
  %conv294 = zext i16 %226 to i32
  %size295 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %rop_texture, i32 0, i32 2
  %x296 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size295, i32 0, i32 0
  store i32 %conv294, i32* %x296, align 4, !tbaa !80
  %id297 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %rop_texture, i32 0, i32 3
  store i64 0, i64* %id297, align 8, !tbaa !81
  store %struct.gx_strip_bitmap_s* %rop_texture, %struct.gx_strip_bitmap_s** %real_texture, align 8, !tbaa !1
  %size298 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %rop_texture, i32 0, i32 2
  %y299 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size298, i32 0, i32 1
  %227 = load i32, i32* %y299, align 4, !tbaa !74
  %rep_height = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %rop_texture, i32 0, i32 5
  %228 = load i16, i16* %rep_height, align 2, !tbaa !82
  %conv300 = zext i16 %228 to i32
  %cmp301 = icmp sgt i32 %227, %conv300
  br i1 %cmp301, label %if.then.303, label %if.end.308

if.then.303:                                      ; preds = %do.end.292
  %rep_height304 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %rop_texture, i32 0, i32 5
  %229 = load i16, i16* %rep_height304, align 2, !tbaa !82
  %conv305 = zext i16 %229 to i32
  %size306 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %rop_texture, i32 0, i32 2
  %y307 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size306, i32 0, i32 1
  store i32 %conv305, i32* %y307, align 4, !tbaa !74
  br label %if.end.308

if.end.308:                                       ; preds = %if.then.303, %do.end.292
  br label %if.end.309

if.end.309:                                       ; preds = %if.end.308, %if.end.263
  %230 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %tobool310 = icmp ne i64* %230, null
  br i1 %tobool310, label %land.lhs.true.311, label %if.end.316

land.lhs.true.311:                                ; preds = %if.end.309
  %231 = load i32, i32* %uses_t, align 4, !tbaa !5
  %tobool312 = icmp ne i32 %231, 0
  br i1 %tobool312, label %if.then.313, label %if.end.316

if.then.313:                                      ; preds = %land.lhs.true.311
  %232 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay314 = getelementptr inbounds [2 x i64], [2 x i64]* %texture_colors, i32 0, i32 0
  %233 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %234 = load i32, i32* %rop_depth, align 4, !tbaa !5
  call void @unpack_colors_to_standard(%struct.gx_device_s* %232, i64* %arraydecay314, i64* %233, i32 %234) #3
  %arraydecay315 = getelementptr inbounds [2 x i64], [2 x i64]* %texture_colors, i32 0, i32 0
  store i64* %arraydecay315, i64** %real_tcolors, align 8, !tbaa !1
  br label %if.end.316

if.end.316:                                       ; preds = %if.then.313, %land.lhs.true.311, %if.end.309
  %235 = load i64, i64* %expand_options, align 8, !tbaa !7
  %options317 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %expand_params, i32 0, i32 0
  store i64 %235, i64* %options317, align 8, !tbaa !57
  %x_offset = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %expand_params, i32 0, i32 2
  store i32 0, i32* %x_offset, align 4, !tbaa !59
  %236 = load i32, i32* %x.addr, align 4, !tbaa !5
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %x318 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  store i32 %236, i32* %x318, align 4, !tbaa !51
  %237 = load i32, i32* %x.addr, align 4, !tbaa !5
  %238 = load i32, i32* %width.addr, align 4, !tbaa !5
  %add319 = add nsw i32 %237, %238
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 1
  %x320 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  store i32 %add319, i32* %x320, align 4, !tbaa !54
  %239 = load i32, i32* %y.addr, align 4, !tbaa !5
  store i32 %239, i32* %py, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.426, %if.end.316
  %240 = load i32, i32* %py, align 4, !tbaa !5
  %241 = load i32, i32* %y.addr, align 4, !tbaa !5
  %242 = load i32, i32* %height.addr, align 4, !tbaa !5
  %add321 = add nsw i32 %241, %242
  %cmp322 = icmp slt i32 %240, %add321
  br i1 %cmp322, label %for.body, label %for.end.428

for.body:                                         ; preds = %for.cond
  %243 = bitcast i32* %sx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %243) #1
  %244 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 %244, i32* %sx, align 4, !tbaa !5
  %245 = bitcast i8** %source_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %245) #1
  %246 = load i8*, i8** %sdata.addr, align 8, !tbaa !1
  %247 = load i32, i32* %py, align 4, !tbaa !5
  %248 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub324 = sub nsw i32 %247, %248
  %249 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %mul325 = mul i32 %sub324, %249
  %idx.ext326 = zext i32 %mul325 to i64
  %add.ptr327 = getelementptr inbounds i8, i8* %246, i64 %idx.ext326
  store i8* %add.ptr327, i8** %source_data, align 8, !tbaa !1
  %250 = bitcast i32* %source_raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %250) #1
  %251 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  store i32 %251, i32* %source_raster, align 4, !tbaa !5
  %252 = load i32, i32* %block_height, align 4, !tbaa !5
  %253 = load i32, i32* %y.addr, align 4, !tbaa !5
  %254 = load i32, i32* %height.addr, align 4, !tbaa !5
  %add328 = add nsw i32 %253, %254
  %255 = load i32, i32* %py, align 4, !tbaa !5
  %sub329 = sub nsw i32 %add328, %255
  %cmp330 = icmp sgt i32 %252, %sub329
  br i1 %cmp330, label %if.then.332, label %if.end.335

if.then.332:                                      ; preds = %for.body
  %256 = load i32, i32* %y.addr, align 4, !tbaa !5
  %257 = load i32, i32* %height.addr, align 4, !tbaa !5
  %add333 = add nsw i32 %256, %257
  %258 = load i32, i32* %py, align 4, !tbaa !5
  %sub334 = sub nsw i32 %add333, %258
  store i32 %sub334, i32* %block_height, align 4, !tbaa !5
  br label %if.end.335

if.end.335:                                       ; preds = %if.then.332, %for.body
  %259 = load i32, i32* %py, align 4, !tbaa !5
  %p336 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %y337 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p336, i32 0, i32 1
  store i32 %259, i32* %y337, align 4, !tbaa !55
  %260 = load i32, i32* %expand_t, align 4, !tbaa !5
  %tobool338 = icmp ne i32 %260, 0
  br i1 %tobool338, label %if.then.339, label %if.else.374

if.then.339:                                      ; preds = %if.end.335
  %261 = bitcast i32* %rep_y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %261) #1
  %262 = load i32, i32* %phase_y.addr, align 4, !tbaa !5
  %263 = load i32, i32* %py, align 4, !tbaa !5
  %add340 = add nsw i32 %262, %263
  %rep_height341 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %rop_texture, i32 0, i32 5
  %264 = load i16, i16* %rep_height341, align 2, !tbaa !82
  %conv342 = zext i16 %264 to i32
  %rem = srem i32 %add340, %conv342
  store i32 %rem, i32* %rep_y, align 4, !tbaa !5
  %265 = load i32, i32* %block_height, align 4, !tbaa !5
  %size343 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %rop_texture, i32 0, i32 2
  %y344 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size343, i32 0, i32 1
  %266 = load i32, i32* %y344, align 4, !tbaa !74
  %267 = load i32, i32* %rep_y, align 4, !tbaa !5
  %sub345 = sub nsw i32 %266, %267
  %cmp346 = icmp slt i32 %265, %sub345
  br i1 %cmp346, label %cond.true.348, label %cond.false.349

cond.true.348:                                    ; preds = %if.then.339
  %268 = load i32, i32* %block_height, align 4, !tbaa !5
  br label %cond.end.353

cond.false.349:                                   ; preds = %if.then.339
  %size350 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %rop_texture, i32 0, i32 2
  %y351 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size350, i32 0, i32 1
  %269 = load i32, i32* %y351, align 4, !tbaa !74
  %270 = load i32, i32* %rep_y, align 4, !tbaa !5
  %sub352 = sub nsw i32 %269, %270
  br label %cond.end.353

cond.end.353:                                     ; preds = %cond.false.349, %cond.true.348
  %cond354 = phi i32 [ %268, %cond.true.348 ], [ %sub352, %cond.false.349 ]
  store i32 %cond354, i32* %loop_height, align 4, !tbaa !5
  %271 = load i32, i32* %py, align 4, !tbaa !5
  %272 = load i32, i32* %loop_height, align 4, !tbaa !5
  %add355 = add nsw i32 %271, %272
  %q356 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 1
  %y357 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q356, i32 0, i32 1
  store i32 %add355, i32* %y357, align 4, !tbaa !56
  %273 = load i8*, i8** %texture_row, align 8, !tbaa !1
  %data358 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %expand_params, i32 0, i32 1
  %arrayidx = getelementptr inbounds [64 x i8*], [64 x i8*]* %data358, i32 0, i64 0
  store i8* %273, i8** %arrayidx, align 8, !tbaa !1
  %274 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %275 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %rep_width359 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %275, i32 0, i32 4
  %276 = load i16, i16* %rep_width359, align 2, !tbaa !76
  %conv360 = zext i16 %276 to i32
  %277 = load i32, i32* %loop_height, align 4, !tbaa !5
  %278 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %data361 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %278, i32 0, i32 0
  %279 = load i8*, i8** %data361, align 8, !tbaa !78
  %280 = load i32, i32* %rep_y, align 4, !tbaa !5
  %281 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %raster362 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %281, i32 0, i32 1
  %282 = load i32, i32* %raster362, align 4, !tbaa !79
  %mul363 = mul nsw i32 %280, %282
  %idx.ext364 = sext i32 %mul363 to i64
  %add.ptr365 = getelementptr inbounds i8, i8* %279, i64 %idx.ext364
  %283 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %raster366 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %283, i32 0, i32 1
  %284 = load i32, i32* %raster366, align 4, !tbaa !79
  %call367 = call i32 @gx_get_bits_copy(%struct.gx_device_s* %274, i32 0, i32 %conv360, i32 %277, %struct.gs_get_bits_params_s* %expand_params, %struct.gs_get_bits_params_s* %no_expand_t_params, i8* %add.ptr365, i32 %284) #3
  %285 = load i8*, i8** %texture_row, align 8, !tbaa !1
  %286 = load i32, i32* %rep_y, align 4, !tbaa !5
  %raster368 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %rop_texture, i32 0, i32 1
  %287 = load i32, i32* %raster368, align 4, !tbaa !79
  %mul369 = mul nsw i32 %286, %287
  %idx.ext370 = sext i32 %mul369 to i64
  %idx.neg371 = sub i64 0, %idx.ext370
  %add.ptr372 = getelementptr inbounds i8, i8* %285, i64 %idx.neg371
  %data373 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %rop_texture, i32 0, i32 0
  store i8* %add.ptr372, i8** %data373, align 8, !tbaa !78
  %288 = bitcast i32* %rep_y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %288) #1
  br label %if.end.378

if.else.374:                                      ; preds = %if.end.335
  %289 = load i32, i32* %block_height, align 4, !tbaa !5
  store i32 %289, i32* %loop_height, align 4, !tbaa !5
  %290 = load i32, i32* %py, align 4, !tbaa !5
  %291 = load i32, i32* %block_height, align 4, !tbaa !5
  %add375 = add nsw i32 %290, %291
  %q376 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 1
  %y377 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q376, i32 0, i32 1
  store i32 %add375, i32* %y377, align 4, !tbaa !56
  br label %if.end.378

if.end.378:                                       ; preds = %if.else.374, %cond.end.353
  %292 = load i32, i32* %uses_d, align 4, !tbaa !5
  %tobool379 = icmp ne i32 %292, 0
  br i1 %tobool379, label %if.then.380, label %if.end.395

if.then.380:                                      ; preds = %if.end.378
  %293 = load i64, i64* %expand_options, align 8, !tbaa !7
  %options381 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %bit_params, i32 0, i32 0
  store i64 %293, i64* %options381, align 8, !tbaa !57
  %line_ptrs382 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev, i32 0, i32 52
  %294 = load i8**, i8*** %line_ptrs382, align 8, !tbaa !65
  %arrayidx383 = getelementptr inbounds i8*, i8** %294, i64 0
  %295 = load i8*, i8** %arrayidx383, align 8, !tbaa !1
  %data384 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %bit_params, i32 0, i32 1
  %arrayidx385 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data384, i32 0, i64 0
  store i8* %295, i8** %arrayidx385, align 8, !tbaa !1
  %x_offset386 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %bit_params, i32 0, i32 2
  store i32 0, i32* %x_offset386, align 4, !tbaa !59
  %raster387 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev, i32 0, i32 44
  %296 = load i32, i32* %raster387, align 4, !tbaa !83
  %raster388 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %bit_params, i32 0, i32 4
  store i32 %296, i32* %raster388, align 4, !tbaa !84
  %297 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs389 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %297, i32 0, i32 42
  %get_bits_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs389, i32 0, i32 38
  %298 = load i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %get_bits_rectangle, align 8, !tbaa !60
  %299 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call390 = call i32 %298(%struct.gx_device_s* %299, %struct.gs_int_rect_s* %rect, %struct.gs_get_bits_params_s* %bit_params, %struct.gs_int_rect_s** null) #3
  store i32 %call390, i32* %code, align 4, !tbaa !5
  %300 = load i32, i32* %code, align 4, !tbaa !5
  %cmp391 = icmp slt i32 %300, 0
  br i1 %cmp391, label %if.then.393, label %if.end.394

if.then.393:                                      ; preds = %if.then.380
  store i32 23, i32* %cleanup.dest.slot
  br label %cleanup.421

if.end.394:                                       ; preds = %if.then.380
  br label %if.end.395

if.end.395:                                       ; preds = %if.end.394, %if.end.378
  %301 = load i32, i32* %expand_s, align 4, !tbaa !5
  %tobool396 = icmp ne i32 %301, 0
  br i1 %tobool396, label %if.then.397, label %if.end.401

if.then.397:                                      ; preds = %if.end.395
  %302 = load i8*, i8** %source_row, align 8, !tbaa !1
  %data398 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %expand_params, i32 0, i32 1
  %arrayidx399 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data398, i32 0, i64 0
  store i8* %302, i8** %arrayidx399, align 8, !tbaa !1
  %303 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %304 = load i32, i32* %sx, align 4, !tbaa !5
  %305 = load i32, i32* %width.addr, align 4, !tbaa !5
  %306 = load i32, i32* %loop_height, align 4, !tbaa !5
  %307 = load i8*, i8** %source_data, align 8, !tbaa !1
  %308 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %call400 = call i32 @gx_get_bits_copy(%struct.gx_device_s* %303, i32 %304, i32 %305, i32 %306, %struct.gs_get_bits_params_s* %expand_params, %struct.gs_get_bits_params_s* %no_expand_params, i8* %307, i32 %308) #3
  store i32 0, i32* %sx, align 4, !tbaa !5
  %309 = load i8*, i8** %source_row, align 8, !tbaa !1
  store i8* %309, i8** %source_data, align 8, !tbaa !1
  %310 = load i32, i32* %source_row_raster, align 4, !tbaa !5
  store i32 %310, i32* %source_raster, align 4, !tbaa !5
  br label %if.end.401

if.end.401:                                       ; preds = %if.then.397, %if.end.395
  %procs402 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev, i32 0, i32 42
  %strip_copy_rop = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs402, i32 0, i32 35
  %strip_copy_rop403 = bitcast {}** %strip_copy_rop to i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)**
  %311 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)** %strip_copy_rop403, align 8, !tbaa !62
  %312 = bitcast %struct.gx_device_memory_s* %mdev to %struct.gx_device_s*
  %313 = load i8*, i8** %source_data, align 8, !tbaa !1
  %314 = load i32, i32* %sx, align 4, !tbaa !5
  %315 = load i32, i32* %source_raster, align 4, !tbaa !5
  %316 = load i64*, i64** %real_scolors, align 8, !tbaa !1
  %317 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %real_texture, align 8, !tbaa !1
  %318 = load i64*, i64** %real_tcolors, align 8, !tbaa !1
  %319 = load i32, i32* %width.addr, align 4, !tbaa !5
  %320 = load i32, i32* %loop_height, align 4, !tbaa !5
  %321 = load i32, i32* %phase_x.addr, align 4, !tbaa !5
  %322 = load i32, i32* %x.addr, align 4, !tbaa !5
  %add404 = add nsw i32 %321, %322
  %323 = load i32, i32* %phase_y.addr, align 4, !tbaa !5
  %324 = load i32, i32* %py, align 4, !tbaa !5
  %add405 = add nsw i32 %323, %324
  %325 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call406 = call i32 %311(%struct.gx_device_s* %312, i8* %313, i32 %314, i32 %315, i64 0, i64* %316, %struct.gx_strip_bitmap_s* %317, i64* %318, i32 0, i32 0, i32 %319, i32 %320, i32 %add404, i32 %add405, i32 %325) #3
  store i32 %call406, i32* %code, align 4, !tbaa !5
  %326 = load i32, i32* %code, align 4, !tbaa !5
  %cmp407 = icmp slt i32 %326, 0
  br i1 %cmp407, label %if.then.409, label %if.end.410

if.then.409:                                      ; preds = %if.end.401
  store i32 23, i32* %cleanup.dest.slot
  br label %cleanup.421

if.end.410:                                       ; preds = %if.end.401
  %327 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %327) #1
  %328 = bitcast i8** %unpacked to i8*
  call void @llvm.lifetime.start(i64 8, i8* %328) #1
  %line_ptrs411 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev, i32 0, i32 52
  %329 = load i8**, i8*** %line_ptrs411, align 8, !tbaa !65
  %arrayidx412 = getelementptr inbounds i8*, i8** %329, i64 0
  %330 = load i8*, i8** %arrayidx412, align 8, !tbaa !1
  store i8* %330, i8** %unpacked, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.413

for.cond.413:                                     ; preds = %for.inc, %if.end.410
  %331 = load i32, i32* %i, align 4, !tbaa !5
  %332 = load i32, i32* %loop_height, align 4, !tbaa !5
  %cmp414 = icmp slt i32 %331, %332
  br i1 %cmp414, label %for.body.416, label %for.end

for.body.416:                                     ; preds = %for.cond.413
  %333 = load void (%struct.gx_device_memory_s*, i32, i32, i8*, i32, i32, i32)*, void (%struct.gx_device_memory_s*, i32, i32, i8*, i32, i32, i32)** %pack, align 8, !tbaa !1
  %334 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %tdev, align 8, !tbaa !1
  %335 = load i32, i32* %py, align 4, !tbaa !5
  %336 = load i32, i32* %i, align 4, !tbaa !5
  %add417 = add nsw i32 %335, %336
  %337 = load i32, i32* %x.addr, align 4, !tbaa !5
  %338 = load i8*, i8** %unpacked, align 8, !tbaa !1
  %339 = load i32, i32* %width.addr, align 4, !tbaa !5
  %340 = load i32, i32* %depth, align 4, !tbaa !5
  %341 = load i32, i32* %rop_depth, align 4, !tbaa !5
  call void %333(%struct.gx_device_memory_s* %334, i32 %add417, i32 %337, i8* %338, i32 %339, i32 %340, i32 %341) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body.416
  %raster418 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev, i32 0, i32 44
  %342 = load i32, i32* %raster418, align 4, !tbaa !83
  %343 = load i8*, i8** %unpacked, align 8, !tbaa !1
  %idx.ext419 = zext i32 %342 to i64
  %add.ptr420 = getelementptr inbounds i8, i8* %343, i64 %idx.ext419
  store i8* %add.ptr420, i8** %unpacked, align 8, !tbaa !1
  %344 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %344, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond.413

for.end:                                          ; preds = %for.cond.413
  %345 = bitcast i8** %unpacked to i8*
  call void @llvm.lifetime.end(i64 8, i8* %345) #1
  %346 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %346) #1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.421

cleanup.421:                                      ; preds = %for.end, %if.then.409, %if.then.393
  %347 = bitcast i32* %source_raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %347) #1
  %348 = bitcast i8** %source_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %348) #1
  %349 = bitcast i32* %sx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %349) #1
  %cleanup.dest.424 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.424, label %unreachable [
    i32 0, label %cleanup.cont.425
    i32 23, label %for.end.428
  ]

cleanup.cont.425:                                 ; preds = %cleanup.421
  br label %for.inc.426

for.inc.426:                                      ; preds = %cleanup.cont.425
  %350 = load i32, i32* %loop_height, align 4, !tbaa !5
  %351 = load i32, i32* %py, align 4, !tbaa !5
  %add427 = add nsw i32 %351, %350
  store i32 %add427, i32* %py, align 4, !tbaa !5
  br label %for.cond

for.end.428:                                      ; preds = %cleanup.421, %for.cond
  br label %out

out:                                              ; preds = %for.end.428, %cleanup.288, %cleanup.251, %cleanup
  %352 = load i8*, i8** %texture_row, align 8, !tbaa !1
  %cmp429 = icmp ne i8* %352, null
  br i1 %cmp429, label %land.lhs.true.431, label %if.end.437

land.lhs.true.431:                                ; preds = %out
  %353 = load i8*, i8** %texture_row, align 8, !tbaa !1
  %arraydecay432 = getelementptr inbounds [16 x %union.anon.4], [16 x %union.anon.4]* %texture_buffer, i32 0, i32 0
  %354 = bitcast %union.anon.4* %arraydecay432 to i8*
  %cmp433 = icmp ne i8* %353, %354
  br i1 %cmp433, label %if.then.435, label %if.end.437

if.then.435:                                      ; preds = %land.lhs.true.431
  %355 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs436 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %355, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs436, i32 0, i32 2
  %356 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !67
  %357 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %358 = load i8*, i8** %texture_row, align 8, !tbaa !1
  call void %356(%struct.gs_memory_s* %357, i8* %358, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0)) #3
  br label %if.end.437

if.end.437:                                       ; preds = %if.then.435, %land.lhs.true.431, %out
  %359 = load i8*, i8** %source_row, align 8, !tbaa !1
  %cmp438 = icmp ne i8* %359, null
  br i1 %cmp438, label %land.lhs.true.440, label %if.end.447

land.lhs.true.440:                                ; preds = %if.end.437
  %360 = load i8*, i8** %source_row, align 8, !tbaa !1
  %arraydecay441 = getelementptr inbounds [16 x %union.anon.3], [16 x %union.anon.3]* %source_buffer, i32 0, i32 0
  %361 = bitcast %union.anon.3* %arraydecay441 to i8*
  %cmp442 = icmp ne i8* %360, %361
  br i1 %cmp442, label %if.then.444, label %if.end.447

if.then.444:                                      ; preds = %land.lhs.true.440
  %362 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs445 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %362, i32 0, i32 1
  %free_object446 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs445, i32 0, i32 2
  %363 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object446, align 8, !tbaa !67
  %364 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %365 = load i8*, i8** %source_row, align 8, !tbaa !1
  call void %363(%struct.gs_memory_s* %364, i8* %365, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0)) #3
  br label %if.end.447

if.end.447:                                       ; preds = %if.then.444, %land.lhs.true.440, %if.end.437
  %366 = load i8*, i8** %row, align 8, !tbaa !1
  %cmp448 = icmp ne i8* %366, null
  br i1 %cmp448, label %land.lhs.true.450, label %if.end.457

land.lhs.true.450:                                ; preds = %if.end.447
  %367 = load i8*, i8** %row, align 8, !tbaa !1
  %arraydecay451 = getelementptr inbounds [16 x %union.anon.2], [16 x %union.anon.2]* %dest_buffer, i32 0, i32 0
  %368 = bitcast %union.anon.2* %arraydecay451 to i8*
  %cmp452 = icmp ne i8* %367, %368
  br i1 %cmp452, label %if.then.454, label %if.end.457

if.then.454:                                      ; preds = %land.lhs.true.450
  %369 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs455 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %369, i32 0, i32 1
  %free_object456 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs455, i32 0, i32 2
  %370 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object456, align 8, !tbaa !67
  %371 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %372 = load i8*, i8** %row, align 8, !tbaa !1
  call void %370(%struct.gs_memory_s* %371, i8* %372, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)) #3
  br label %if.end.457

if.end.457:                                       ; preds = %if.then.454, %land.lhs.true.450, %if.end.447
  %procs458 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev, i32 0, i32 42
  %close_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs458, i32 0, i32 4
  %373 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %close_device, align 8, !tbaa !85
  %374 = bitcast %struct.gx_device_memory_s* %mdev to %struct.gx_device_s*
  %call459 = call i32 %373(%struct.gx_device_s* %374) #3
  %375 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %375, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.460

cleanup.460:                                      ; preds = %if.end.457, %cleanup.288, %cleanup.251, %cleanup, %if.then.209, %if.then.199, %if.then.147, %if.then.100, %if.then.50
  %376 = bitcast %struct.gx_device_memory_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %376) #1
  %377 = bitcast i32* %py to i8*
  call void @llvm.lifetime.end(i64 4, i8* %377) #1
  %378 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %378) #1
  %379 = bitcast i32* %loop_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %379) #1
  %380 = bitcast i32* %block_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %380) #1
  %381 = bitcast i32* %max_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %381) #1
  %382 = bitcast %struct.gs_get_bits_params_s* %no_expand_t_params to i8*
  call void @llvm.lifetime.end(i64 536, i8* %382) #1
  %383 = bitcast %struct.gs_get_bits_params_s* %no_expand_params to i8*
  call void @llvm.lifetime.end(i64 536, i8* %383) #1
  %384 = bitcast %struct.gs_get_bits_params_s* %expand_params to i8*
  call void @llvm.lifetime.end(i64 536, i8* %384) #1
  %385 = bitcast %struct.gs_get_bits_params_s* %bit_params to i8*
  call void @llvm.lifetime.end(i64 536, i8* %385) #1
  %386 = bitcast %struct.gs_int_rect_s* %rect to i8*
  call void @llvm.lifetime.end(i64 16, i8* %386) #1
  %387 = bitcast %struct.gx_strip_bitmap_s** %real_texture to i8*
  call void @llvm.lifetime.end(i64 8, i8* %387) #1
  %388 = bitcast %struct.gx_strip_bitmap_s* %rop_texture to i8*
  call void @llvm.lifetime.end(i64 48, i8* %388) #1
  %389 = bitcast i64** %real_tcolors to i8*
  call void @llvm.lifetime.end(i64 8, i8* %389) #1
  %390 = bitcast [2 x i64]* %texture_colors to i8*
  call void @llvm.lifetime.end(i64 16, i8* %390) #1
  %391 = bitcast i64** %real_scolors to i8*
  call void @llvm.lifetime.end(i64 8, i8* %391) #1
  %392 = bitcast [2 x i64]* %source_colors to i8*
  call void @llvm.lifetime.end(i64 16, i8* %392) #1
  %393 = bitcast [16 x %union.anon.4]* %texture_buffer to i8*
  call void @llvm.lifetime.end(i64 128, i8* %393) #1
  %394 = bitcast i32* %texture_row_raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %394) #1
  %395 = bitcast i8** %texture_row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %395) #1
  %396 = bitcast [16 x %union.anon.3]* %source_buffer to i8*
  call void @llvm.lifetime.end(i64 128, i8* %396) #1
  %397 = bitcast i32* %source_row_raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %397) #1
  %398 = bitcast i8** %source_row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %398) #1
  %399 = bitcast [16 x %union.anon.2]* %dest_buffer to i8*
  call void @llvm.lifetime.end(i64 128, i8* %399) #1
  %400 = bitcast i8** %row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %400) #1
  %401 = bitcast i32* %expand_t to i8*
  call void @llvm.lifetime.end(i64 4, i8* %401) #1
  %402 = bitcast i32* %expand_s to i8*
  call void @llvm.lifetime.end(i64 4, i8* %402) #1
  %403 = bitcast i32* %uses_t to i8*
  call void @llvm.lifetime.end(i64 4, i8* %403) #1
  %404 = bitcast i32* %uses_s to i8*
  call void @llvm.lifetime.end(i64 4, i8* %404) #1
  %405 = bitcast i32* %uses_d to i8*
  call void @llvm.lifetime.end(i64 4, i8* %405) #1
  %406 = bitcast i32* %trans_rop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %406) #1
  %407 = bitcast i64* %size_from_mem_device to i8*
  call void @llvm.lifetime.end(i64 8, i8* %407) #1
  %408 = bitcast i32* %row_raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %408) #1
  %409 = bitcast [20 x %union.anon.1]* %mdev_storage to i8*
  call void @llvm.lifetime.end(i64 160, i8* %409) #1
  %410 = bitcast %struct.gx_device_memory_s* %mdev to i8*
  call void @llvm.lifetime.end(i64 2792, i8* %410) #1
  %411 = bitcast %struct.gx_device_memory_s** %mdproto to i8*
  call void @llvm.lifetime.end(i64 8, i8* %411) #1
  %412 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %412) #1
  %413 = bitcast i64* %expand_options to i8*
  call void @llvm.lifetime.end(i64 8, i8* %413) #1
  %414 = bitcast i64* %no_expand_t_options to i8*
  call void @llvm.lifetime.end(i64 8, i8* %414) #1
  %415 = bitcast i64* %no_expand_options to i8*
  call void @llvm.lifetime.end(i64 8, i8* %415) #1
  %416 = bitcast void (%struct.gx_device_memory_s*, i32, i32, i8*, i32, i32, i32)** %pack to i8*
  call void @llvm.lifetime.end(i64 8, i8* %416) #1
  %417 = bitcast i32* %rop_depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %417) #1
  %418 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %418) #1
  %419 = load i32, i32* %retval
  ret i32 %419

unreachable:                                      ; preds = %cleanup.421
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @pack_cmyk_1bit_from_standard(%struct.gx_device_memory_s* %dev, i32 %y, i32 %destx, i8* %src, i32 %width, i32 %depth, i32 %src_depth) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_memory_s*, align 8
  %y.addr = alloca i32, align 4
  %destx.addr = alloca i32, align 4
  %src.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %src_depth.addr = alloca i32, align 4
  %dest = alloca i8*, align 8
  %bit_x = alloca i32, align 4
  %dp = alloca i8*, align 8
  %hi = alloca i32, align 4
  %buf = alloca i8, align 1
  %sp = alloca i8*, align 8
  %x = alloca i32, align 4
  %r = alloca i8, align 1
  %g = alloca i8, align 1
  %b = alloca i8, align 1
  %pixel = alloca i8, align 1
  store %struct.gx_device_memory_s* %dev, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %destx, i32* %destx.addr, align 4, !tbaa !5
  store i8* %src, i8** %src.addr, align 8, !tbaa !1
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !5
  store i32 %src_depth, i32* %src_depth.addr, align 4, !tbaa !5
  %0 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i32, i32* %y.addr, align 4, !tbaa !5
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %2, i32 0, i32 52
  %3 = load i8**, i8*** %line_ptrs, align 8, !tbaa !65
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  store i8* %4, i8** %dest, align 8, !tbaa !1
  %5 = bitcast i32* %bit_x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %destx.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %6, 4
  store i32 %mul, i32* %bit_x, align 4, !tbaa !5
  %7 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load i8*, i8** %dest, align 8, !tbaa !1
  %9 = load i32, i32* %bit_x, align 4, !tbaa !5
  %shr = ashr i32 %9, 3
  %idx.ext = sext i32 %shr to i64
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %idx.ext
  store i8* %add.ptr, i8** %dp, align 8, !tbaa !1
  %10 = bitcast i32* %hi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load i32, i32* %bit_x, align 4, !tbaa !5
  %and = and i32 %11, 4
  %cmp = icmp ne i32 %and, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %hi, align 4, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %buf) #1
  %12 = load i32, i32* %hi, align 4, !tbaa !5
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %13 = load i8*, i8** %dp, align 8, !tbaa !1
  %14 = load i8, i8* %13, align 1, !tbaa !38
  %conv1 = zext i8 %14 to i32
  %and2 = and i32 %conv1, 240
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %and2, %cond.true ], [ 0, %cond.false ]
  %conv3 = trunc i32 %cond to i8
  store i8 %conv3, i8* %buf, align 1, !tbaa !38
  %15 = bitcast i8** %sp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load i8*, i8** %src.addr, align 8, !tbaa !1
  store i8* %16, i8** %sp, align 8, !tbaa !1
  %17 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load i32, i32* %width.addr, align 4, !tbaa !5
  store i32 %18, i32* %x, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %19 = load i32, i32* %x, align 4, !tbaa !5
  %dec = add nsw i32 %19, -1
  store i32 %dec, i32* %x, align 4, !tbaa !5
  %cmp4 = icmp sge i32 %dec, 0
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start(i64 1, i8* %r) #1
  %20 = load i8*, i8** %sp, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i8, i8* %20, i64 0
  %21 = load i8, i8* %arrayidx6, align 1, !tbaa !38
  store i8 %21, i8* %r, align 1, !tbaa !38
  call void @llvm.lifetime.start(i64 1, i8* %g) #1
  %22 = load i8*, i8** %sp, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8, i8* %22, i64 1
  %23 = load i8, i8* %arrayidx7, align 1, !tbaa !38
  store i8 %23, i8* %g, align 1, !tbaa !38
  call void @llvm.lifetime.start(i64 1, i8* %b) #1
  %24 = load i8*, i8** %sp, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i8, i8* %24, i64 2
  %25 = load i8, i8* %arrayidx8, align 1, !tbaa !38
  store i8 %25, i8* %b, align 1, !tbaa !38
  call void @llvm.lifetime.start(i64 1, i8* %pixel) #1
  %26 = load i8, i8* %r, align 1, !tbaa !38
  %conv9 = zext i8 %26 to i32
  %27 = load i8, i8* %g, align 1, !tbaa !38
  %conv10 = zext i8 %27 to i32
  %or = or i32 %conv9, %conv10
  %28 = load i8, i8* %b, align 1, !tbaa !38
  %conv11 = zext i8 %28 to i32
  %or12 = or i32 %or, %conv11
  %tobool13 = icmp ne i32 %or12, 0
  br i1 %tobool13, label %cond.true.14, label %cond.false.26

cond.true.14:                                     ; preds = %for.body
  %29 = load i8, i8* %r, align 1, !tbaa !38
  %conv15 = zext i8 %29 to i32
  %shr16 = ashr i32 %conv15, 4
  %and17 = and i32 %shr16, 8
  %30 = load i8, i8* %g, align 1, !tbaa !38
  %conv18 = zext i8 %30 to i32
  %shr19 = ashr i32 %conv18, 5
  %and20 = and i32 %shr19, 4
  %or21 = or i32 %and17, %and20
  %31 = load i8, i8* %b, align 1, !tbaa !38
  %conv22 = zext i8 %31 to i32
  %shr23 = ashr i32 %conv22, 6
  %and24 = and i32 %shr23, 2
  %or25 = or i32 %or21, %and24
  %xor = xor i32 %or25, 14
  br label %cond.end.27

cond.false.26:                                    ; preds = %for.body
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.26, %cond.true.14
  %cond28 = phi i32 [ %xor, %cond.true.14 ], [ 1, %cond.false.26 ]
  %conv29 = trunc i32 %cond28 to i8
  store i8 %conv29, i8* %pixel, align 1, !tbaa !38
  %32 = load i32, i32* %hi, align 4, !tbaa !5
  %tobool30 = icmp ne i32 %32, 0
  %lnot = xor i1 %tobool30, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %hi, align 4, !tbaa !5
  br i1 %lnot, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.27
  %33 = load i8, i8* %pixel, align 1, !tbaa !38
  %conv31 = zext i8 %33 to i32
  %shl = shl i32 %conv31, 4
  %conv32 = trunc i32 %shl to i8
  store i8 %conv32, i8* %buf, align 1, !tbaa !38
  br label %if.end

if.else:                                          ; preds = %cond.end.27
  %34 = load i8, i8* %buf, align 1, !tbaa !38
  %conv33 = zext i8 %34 to i32
  %35 = load i8, i8* %pixel, align 1, !tbaa !38
  %conv34 = zext i8 %35 to i32
  %or35 = or i32 %conv33, %conv34
  %conv36 = trunc i32 %or35 to i8
  %36 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr, i8** %dp, align 8, !tbaa !1
  store i8 %conv36, i8* %36, align 1, !tbaa !38
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end(i64 1, i8* %pixel) #1
  call void @llvm.lifetime.end(i64 1, i8* %b) #1
  call void @llvm.lifetime.end(i64 1, i8* %g) #1
  call void @llvm.lifetime.end(i64 1, i8* %r) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %37 = load i8*, i8** %sp, align 8, !tbaa !1
  %add.ptr37 = getelementptr inbounds i8, i8* %37, i64 3
  store i8* %add.ptr37, i8** %sp, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = load i32, i32* %hi, align 4, !tbaa !5
  %tobool38 = icmp ne i32 %38, 0
  br i1 %tobool38, label %land.lhs.true, label %if.end.47

land.lhs.true:                                    ; preds = %for.end
  %39 = load i32, i32* %width.addr, align 4, !tbaa !5
  %cmp39 = icmp sgt i32 %39, 0
  br i1 %cmp39, label %if.then.41, label %if.end.47

if.then.41:                                       ; preds = %land.lhs.true
  %40 = load i8, i8* %buf, align 1, !tbaa !38
  %conv42 = zext i8 %40 to i32
  %41 = load i8*, i8** %dp, align 8, !tbaa !1
  %42 = load i8, i8* %41, align 1, !tbaa !38
  %conv43 = zext i8 %42 to i32
  %and44 = and i32 %conv43, 15
  %or45 = or i32 %conv42, %and44
  %conv46 = trunc i32 %or45 to i8
  %43 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 %conv46, i8* %43, align 1, !tbaa !38
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.41, %land.lhs.true, %for.end
  %44 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast i8** %sp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  call void @llvm.lifetime.end(i64 1, i8* %buf) #1
  %46 = bitcast i32* %hi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast i32* %bit_x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pack_from_standard(%struct.gx_device_memory_s* %dev, i32 %y, i32 %destx, i8* %src, i32 %width, i32 %depth, i32 %src_depth) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_memory_s*, align 8
  %y.addr = alloca i32, align 4
  %destx.addr = alloca i32, align 4
  %src.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %src_depth.addr = alloca i32, align 4
  %dest = alloca i8*, align 8
  %map = alloca i64 (%struct.gx_device_s*, i16*)*, align 8
  %bit_x = alloca i32, align 4
  %dp = alloca i8*, align 8
  %shift = alloca i32, align 4
  %buf = alloca i8, align 1
  %sp = alloca i8*, align 8
  %x = alloca i32, align 4
  %vr = alloca i8, align 1
  %vg = alloca i8, align 1
  %vb = alloca i8, align 1
  %pixel = alloca i64, align 8
  %chop = alloca i8, align 1
  %cv = alloca [3 x i16], align 2
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_memory_s* %dev, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %destx, i32* %destx.addr, align 4, !tbaa !5
  store i8* %src, i8** %src.addr, align 8, !tbaa !1
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !5
  store i32 %src_depth, i32* %src_depth.addr, align 4, !tbaa !5
  %0 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i32, i32* %y.addr, align 4, !tbaa !5
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %2, i32 0, i32 52
  %3 = load i8**, i8*** %line_ptrs, align 8, !tbaa !65
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  store i8* %4, i8** %dest, align 8, !tbaa !1
  %5 = bitcast i64 (%struct.gx_device_s*, i16*)** %map to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %6, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %7 = load i32, i32* %num_components, align 4, !tbaa !72
  %cmp = icmp eq i32 %7, 4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %8, i32 0, i32 42
  %map_rgb_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 5
  %9 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %map_rgb_color, align 8, !tbaa !86
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 (%struct.gx_device_s*, i16*)* [ @map_rgb_to_color_via_cmyk, %cond.true ], [ %9, %cond.false ]
  store i64 (%struct.gx_device_s*, i16*)* %cond, i64 (%struct.gx_device_s*, i16*)** %map, align 8, !tbaa !1
  %10 = bitcast i32* %bit_x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load i32, i32* %destx.addr, align 4, !tbaa !5
  %12 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %11, %12
  store i32 %mul, i32* %bit_x, align 4, !tbaa !5
  %13 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load i8*, i8** %dest, align 8, !tbaa !1
  %15 = load i32, i32* %bit_x, align 4, !tbaa !5
  %shr = ashr i32 %15, 3
  %idx.ext = sext i32 %shr to i64
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %idx.ext
  store i8* %add.ptr, i8** %dp, align 8, !tbaa !1
  %16 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load i32, i32* %bit_x, align 4, !tbaa !5
  %neg = xor i32 %17, -1
  %and = and i32 %neg, 7
  %add = add nsw i32 %and, 1
  store i32 %add, i32* %shift, align 4, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %buf) #1
  %18 = load i32, i32* %shift, align 4, !tbaa !5
  %cmp1 = icmp eq i32 %18, 8
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.6

cond.false.3:                                     ; preds = %cond.end
  %19 = load i8*, i8** %dp, align 8, !tbaa !1
  %20 = load i8, i8* %19, align 1, !tbaa !38
  %conv = zext i8 %20 to i32
  %21 = load i32, i32* %shift, align 4, !tbaa !5
  %shr4 = ashr i32 65280, %21
  %and5 = and i32 %conv, %shr4
  br label %cond.end.6

cond.end.6:                                       ; preds = %cond.false.3, %cond.true.2
  %cond7 = phi i32 [ 0, %cond.true.2 ], [ %and5, %cond.false.3 ]
  %conv8 = trunc i32 %cond7 to i8
  store i8 %conv8, i8* %buf, align 1, !tbaa !38
  %22 = bitcast i8** %sp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  %23 = load i8*, i8** %src.addr, align 8, !tbaa !1
  store i8* %23, i8** %sp, align 8, !tbaa !1
  %24 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load i32, i32* %width.addr, align 4, !tbaa !5
  store i32 %25, i32* %x, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %if.end.114, %cond.end.6
  %26 = load i32, i32* %x, align 4, !tbaa !5
  %dec = add nsw i32 %26, -1
  store i32 %dec, i32* %x, align 4, !tbaa !5
  %cmp9 = icmp sge i32 %dec, 0
  br i1 %cmp9, label %for.body, label %for.end.115

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start(i64 1, i8* %vr) #1
  call void @llvm.lifetime.start(i64 1, i8* %vg) #1
  call void @llvm.lifetime.start(i64 1, i8* %vb) #1
  %27 = bitcast i64* %pixel to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #1
  call void @llvm.lifetime.start(i64 1, i8* %chop) #1
  store i8 1, i8* %chop, align 1, !tbaa !38
  %28 = load i8*, i8** %sp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr, i8** %sp, align 8, !tbaa !1
  %29 = load i8, i8* %28, align 1, !tbaa !38
  store i8 %29, i8* %vr, align 1, !tbaa !38
  %30 = load i32, i32* %src_depth.addr, align 4, !tbaa !5
  %cmp11 = icmp sgt i32 %30, 8
  br i1 %cmp11, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %31 = load i8*, i8** %sp, align 8, !tbaa !1
  %incdec.ptr13 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr13, i8** %sp, align 8, !tbaa !1
  %32 = load i8, i8* %31, align 1, !tbaa !38
  store i8 %32, i8* %vg, align 1, !tbaa !38
  %33 = load i8*, i8** %sp, align 8, !tbaa !1
  %incdec.ptr14 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr14, i8** %sp, align 8, !tbaa !1
  %34 = load i8, i8* %33, align 1, !tbaa !38
  store i8 %34, i8* %vb, align 1, !tbaa !38
  br label %if.end

if.else:                                          ; preds = %for.body
  %35 = load i8, i8* %vr, align 1, !tbaa !38
  store i8 %35, i8* %vg, align 1, !tbaa !38
  store i8 %35, i8* %vb, align 1, !tbaa !38
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.cond.15

for.cond.15:                                      ; preds = %cleanup.cont, %if.end
  %36 = bitcast [3 x i16]* %cv to i8*
  call void @llvm.lifetime.start(i64 6, i8* %36) #1
  %37 = load i8, i8* %vr, align 1, !tbaa !38
  %conv16 = zext i8 %37 to i32
  %shl = shl i32 %conv16, 8
  %38 = load i8, i8* %vr, align 1, !tbaa !38
  %conv17 = zext i8 %38 to i32
  %shr18 = ashr i32 %conv17, 0
  %add19 = add nsw i32 %shl, %shr18
  %conv20 = trunc i32 %add19 to i16
  %arrayidx21 = getelementptr inbounds [3 x i16], [3 x i16]* %cv, i32 0, i64 0
  store i16 %conv20, i16* %arrayidx21, align 2, !tbaa !39
  %39 = load i8, i8* %vg, align 1, !tbaa !38
  %conv22 = zext i8 %39 to i32
  %shl23 = shl i32 %conv22, 8
  %40 = load i8, i8* %vg, align 1, !tbaa !38
  %conv24 = zext i8 %40 to i32
  %shr25 = ashr i32 %conv24, 0
  %add26 = add nsw i32 %shl23, %shr25
  %conv27 = trunc i32 %add26 to i16
  %arrayidx28 = getelementptr inbounds [3 x i16], [3 x i16]* %cv, i32 0, i64 1
  store i16 %conv27, i16* %arrayidx28, align 2, !tbaa !39
  %41 = load i8, i8* %vb, align 1, !tbaa !38
  %conv29 = zext i8 %41 to i32
  %shl30 = shl i32 %conv29, 8
  %42 = load i8, i8* %vb, align 1, !tbaa !38
  %conv31 = zext i8 %42 to i32
  %shr32 = ashr i32 %conv31, 0
  %add33 = add nsw i32 %shl30, %shr32
  %conv34 = trunc i32 %add33 to i16
  %arrayidx35 = getelementptr inbounds [3 x i16], [3 x i16]* %cv, i32 0, i64 2
  store i16 %conv34, i16* %arrayidx35, align 2, !tbaa !39
  %43 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %map, align 8, !tbaa !1
  %44 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %45 = bitcast %struct.gx_device_memory_s* %44 to %struct.gx_device_s*
  %arraydecay = getelementptr inbounds [3 x i16], [3 x i16]* %cv, i32 0, i32 0
  %call = call i64 %43(%struct.gx_device_s* %45, i16* %arraydecay) #3
  store i64 %call, i64* %pixel, align 8, !tbaa !7
  %46 = load i64, i64* %pixel, align 8, !tbaa !7
  %cmp36 = icmp ne i64 %46, -1
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %for.cond.15
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup

if.end.39:                                        ; preds = %for.cond.15
  %47 = load i8, i8* %vr, align 1, !tbaa !38
  %conv40 = zext i8 %47 to i32
  %cmp41 = icmp sge i32 %conv40, 128
  br i1 %cmp41, label %cond.true.43, label %cond.false.46

cond.true.43:                                     ; preds = %if.end.39
  %48 = load i8, i8* %vr, align 1, !tbaa !38
  %conv44 = zext i8 %48 to i32
  %49 = load i8, i8* %chop, align 1, !tbaa !38
  %conv45 = zext i8 %49 to i32
  %or = or i32 %conv44, %conv45
  br label %cond.end.51

cond.false.46:                                    ; preds = %if.end.39
  %50 = load i8, i8* %vr, align 1, !tbaa !38
  %conv47 = zext i8 %50 to i32
  %51 = load i8, i8* %chop, align 1, !tbaa !38
  %conv48 = zext i8 %51 to i32
  %neg49 = xor i32 %conv48, -1
  %and50 = and i32 %conv47, %neg49
  br label %cond.end.51

cond.end.51:                                      ; preds = %cond.false.46, %cond.true.43
  %cond52 = phi i32 [ %or, %cond.true.43 ], [ %and50, %cond.false.46 ]
  %conv53 = trunc i32 %cond52 to i8
  store i8 %conv53, i8* %vr, align 1, !tbaa !38
  %52 = load i8, i8* %vg, align 1, !tbaa !38
  %conv54 = zext i8 %52 to i32
  %cmp55 = icmp sge i32 %conv54, 128
  br i1 %cmp55, label %cond.true.57, label %cond.false.61

cond.true.57:                                     ; preds = %cond.end.51
  %53 = load i8, i8* %vg, align 1, !tbaa !38
  %conv58 = zext i8 %53 to i32
  %54 = load i8, i8* %chop, align 1, !tbaa !38
  %conv59 = zext i8 %54 to i32
  %or60 = or i32 %conv58, %conv59
  br label %cond.end.66

cond.false.61:                                    ; preds = %cond.end.51
  %55 = load i8, i8* %vg, align 1, !tbaa !38
  %conv62 = zext i8 %55 to i32
  %56 = load i8, i8* %chop, align 1, !tbaa !38
  %conv63 = zext i8 %56 to i32
  %neg64 = xor i32 %conv63, -1
  %and65 = and i32 %conv62, %neg64
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.false.61, %cond.true.57
  %cond67 = phi i32 [ %or60, %cond.true.57 ], [ %and65, %cond.false.61 ]
  %conv68 = trunc i32 %cond67 to i8
  store i8 %conv68, i8* %vg, align 1, !tbaa !38
  %57 = load i8, i8* %vb, align 1, !tbaa !38
  %conv69 = zext i8 %57 to i32
  %cmp70 = icmp sge i32 %conv69, 128
  br i1 %cmp70, label %cond.true.72, label %cond.false.76

cond.true.72:                                     ; preds = %cond.end.66
  %58 = load i8, i8* %vb, align 1, !tbaa !38
  %conv73 = zext i8 %58 to i32
  %59 = load i8, i8* %chop, align 1, !tbaa !38
  %conv74 = zext i8 %59 to i32
  %or75 = or i32 %conv73, %conv74
  br label %cond.end.81

cond.false.76:                                    ; preds = %cond.end.66
  %60 = load i8, i8* %vb, align 1, !tbaa !38
  %conv77 = zext i8 %60 to i32
  %61 = load i8, i8* %chop, align 1, !tbaa !38
  %conv78 = zext i8 %61 to i32
  %neg79 = xor i32 %conv78, -1
  %and80 = and i32 %conv77, %neg79
  br label %cond.end.81

cond.end.81:                                      ; preds = %cond.false.76, %cond.true.72
  %cond82 = phi i32 [ %or75, %cond.true.72 ], [ %and80, %cond.false.76 ]
  %conv83 = trunc i32 %cond82 to i8
  store i8 %conv83, i8* %vb, align 1, !tbaa !38
  %62 = load i8, i8* %chop, align 1, !tbaa !38
  %conv84 = zext i8 %62 to i32
  %shl85 = shl i32 %conv84, 1
  %conv86 = trunc i32 %shl85 to i8
  store i8 %conv86, i8* %chop, align 1, !tbaa !38
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end.81, %if.then.38
  %63 = bitcast [3 x i16]* %cv to i8*
  call void @llvm.lifetime.end(i64 6, i8* %63) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond.15

for.end:                                          ; preds = %cleanup
  %64 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %65 = load i32, i32* %shift, align 4, !tbaa !5
  %sub = sub nsw i32 %65, %64
  store i32 %sub, i32* %shift, align 4, !tbaa !5
  %cmp87 = icmp sge i32 %sub, 0
  br i1 %cmp87, label %if.then.89, label %if.else.96

if.then.89:                                       ; preds = %for.end
  %66 = load i64, i64* %pixel, align 8, !tbaa !7
  %67 = load i32, i32* %shift, align 4, !tbaa !5
  %sh_prom = zext i32 %67 to i64
  %shl90 = shl i64 %66, %sh_prom
  %conv91 = trunc i64 %shl90 to i8
  %conv92 = zext i8 %conv91 to i32
  %68 = load i8, i8* %buf, align 1, !tbaa !38
  %conv93 = zext i8 %68 to i32
  %add94 = add nsw i32 %conv93, %conv92
  %conv95 = trunc i32 %add94 to i8
  store i8 %conv95, i8* %buf, align 1, !tbaa !38
  br label %if.end.114

if.else.96:                                       ; preds = %for.end
  %69 = load i32, i32* %depth.addr, align 4, !tbaa !5
  switch i32 %69, label %sw.default [
    i32 32, label %sw.bb
    i32 16, label %sw.bb.108
  ]

sw.default:                                       ; preds = %if.else.96
  %70 = load i8, i8* %buf, align 1, !tbaa !38
  %71 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr97 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %incdec.ptr97, i8** %dp, align 8, !tbaa !1
  store i8 %70, i8* %71, align 1, !tbaa !38
  %72 = load i32, i32* %shift, align 4, !tbaa !5
  %add98 = add nsw i32 %72, 8
  store i32 %add98, i32* %shift, align 4, !tbaa !5
  %73 = load i64, i64* %pixel, align 8, !tbaa !7
  %74 = load i32, i32* %shift, align 4, !tbaa !5
  %sh_prom99 = zext i32 %74 to i64
  %shl100 = shl i64 %73, %sh_prom99
  %conv101 = trunc i64 %shl100 to i8
  store i8 %conv101, i8* %buf, align 1, !tbaa !38
  br label %sw.epilog

sw.bb:                                            ; preds = %if.else.96
  %75 = load i64, i64* %pixel, align 8, !tbaa !7
  %shr102 = lshr i64 %75, 24
  %conv103 = trunc i64 %shr102 to i8
  %76 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr104 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %incdec.ptr104, i8** %dp, align 8, !tbaa !1
  store i8 %conv103, i8* %76, align 1, !tbaa !38
  %77 = load i64, i64* %pixel, align 8, !tbaa !7
  %shr105 = lshr i64 %77, 16
  %conv106 = trunc i64 %shr105 to i8
  %78 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr107 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %incdec.ptr107, i8** %dp, align 8, !tbaa !1
  store i8 %conv106, i8* %78, align 1, !tbaa !38
  br label %sw.bb.108

sw.bb.108:                                        ; preds = %if.else.96, %sw.bb
  %79 = load i64, i64* %pixel, align 8, !tbaa !7
  %shr109 = lshr i64 %79, 8
  %conv110 = trunc i64 %shr109 to i8
  %80 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr111 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %incdec.ptr111, i8** %dp, align 8, !tbaa !1
  store i8 %conv110, i8* %80, align 1, !tbaa !38
  %81 = load i64, i64* %pixel, align 8, !tbaa !7
  %conv112 = trunc i64 %81 to i8
  %82 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr113 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %incdec.ptr113, i8** %dp, align 8, !tbaa !1
  store i8 %conv112, i8* %82, align 1, !tbaa !38
  store i32 0, i32* %shift, align 4, !tbaa !5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.108, %sw.default
  br label %if.end.114

if.end.114:                                       ; preds = %sw.epilog, %if.then.89
  call void @llvm.lifetime.end(i64 1, i8* %chop) #1
  %83 = bitcast i64* %pixel to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #1
  call void @llvm.lifetime.end(i64 1, i8* %vb) #1
  call void @llvm.lifetime.end(i64 1, i8* %vg) #1
  call void @llvm.lifetime.end(i64 1, i8* %vr) #1
  br label %for.cond

for.end.115:                                      ; preds = %for.cond
  %84 = load i32, i32* %width.addr, align 4, !tbaa !5
  %cmp116 = icmp sgt i32 %84, 0
  br i1 %cmp116, label %land.lhs.true, label %if.end.135

land.lhs.true:                                    ; preds = %for.end.115
  %85 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %cmp118 = icmp sle i32 %85, 8
  br i1 %cmp118, label %if.then.120, label %if.end.135

if.then.120:                                      ; preds = %land.lhs.true
  %86 = load i32, i32* %shift, align 4, !tbaa !5
  %cmp121 = icmp eq i32 %86, 0
  br i1 %cmp121, label %cond.true.123, label %cond.false.125

cond.true.123:                                    ; preds = %if.then.120
  %87 = load i8, i8* %buf, align 1, !tbaa !38
  %conv124 = zext i8 %87 to i32
  br label %cond.end.132

cond.false.125:                                   ; preds = %if.then.120
  %88 = load i8, i8* %buf, align 1, !tbaa !38
  %conv126 = zext i8 %88 to i32
  %89 = load i8*, i8** %dp, align 8, !tbaa !1
  %90 = load i8, i8* %89, align 1, !tbaa !38
  %conv127 = zext i8 %90 to i32
  %91 = load i32, i32* %shift, align 4, !tbaa !5
  %shl128 = shl i32 1, %91
  %sub129 = sub nsw i32 %shl128, 1
  %and130 = and i32 %conv127, %sub129
  %add131 = add nsw i32 %conv126, %and130
  br label %cond.end.132

cond.end.132:                                     ; preds = %cond.false.125, %cond.true.123
  %cond133 = phi i32 [ %conv124, %cond.true.123 ], [ %add131, %cond.false.125 ]
  %conv134 = trunc i32 %cond133 to i8
  %92 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 %conv134, i8* %92, align 1, !tbaa !38
  br label %if.end.135

if.end.135:                                       ; preds = %cond.end.132, %land.lhs.true, %for.end.115
  %93 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #1
  %94 = bitcast i8** %sp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  call void @llvm.lifetime.end(i64 1, i8* %buf) #1
  %95 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #1
  %96 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #1
  %97 = bitcast i32* %bit_x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #1
  %98 = bitcast i64 (%struct.gx_device_s*, i16*)** %map to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #1
  %99 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #1
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @pack_planar_from_standard(%struct.gx_device_memory_s* %dev, i32 %y, i32 %destx, i8* %src, i32 %width, i32 %depth, i32 %src_depth) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_memory_s*, align 8
  %y.addr = alloca i32, align 4
  %destx.addr = alloca i32, align 4
  %src.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %src_depth.addr = alloca i32, align 4
  %map = alloca i64 (%struct.gx_device_s*, i16*)*, align 8
  %pdepth = alloca i32, align 4
  %bit_x = alloca i32, align 4
  %dp = alloca [64 x i8*], align 16
  %shift = alloca i32, align 4
  %buf = alloca [64 x i8], align 16
  %sp = alloca i8*, align 8
  %x = alloca i32, align 4
  %plane = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %dest = alloca i8*, align 8
  %vr = alloca i8, align 1
  %vg = alloca i8, align 1
  %vb = alloca i8, align 1
  %pixel = alloca i64, align 8
  %chop = alloca i8, align 1
  %cv = alloca [3 x i16], align 2
  %pmask = alloca i32, align 4
  %pshift = alloca i32, align 4
  %mask = alloca i32, align 4
  store %struct.gx_device_memory_s* %dev, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %destx, i32* %destx.addr, align 4, !tbaa !5
  store i8* %src, i8** %src.addr, align 8, !tbaa !1
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !5
  store i32 %src_depth, i32* %src_depth.addr, align 4, !tbaa !5
  %0 = bitcast i64 (%struct.gx_device_s*, i16*)** %map to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %1, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %2 = load i32, i32* %num_components, align 4, !tbaa !72
  %cmp = icmp eq i32 %2, 4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %3, i32 0, i32 42
  %map_rgb_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 5
  %4 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %map_rgb_color, align 8, !tbaa !86
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 (%struct.gx_device_s*, i16*)* [ @map_rgb_to_color_via_cmyk, %cond.true ], [ %4, %cond.false ]
  store i64 (%struct.gx_device_s*, i16*)* %cond, i64 (%struct.gx_device_s*, i16*)** %map, align 8, !tbaa !1
  %5 = bitcast i32* %pdepth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %plane_depth = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %6, i32 0, i32 67
  %7 = load i32, i32* %plane_depth, align 4, !tbaa !87
  store i32 %7, i32* %pdepth, align 4, !tbaa !5
  %8 = bitcast i32* %bit_x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i32, i32* %destx.addr, align 4, !tbaa !5
  %10 = load i32, i32* %pdepth, align 4, !tbaa !5
  %mul = mul nsw i32 %9, %10
  store i32 %mul, i32* %bit_x, align 4, !tbaa !5
  %11 = bitcast [64 x i8*]* %dp to i8*
  call void @llvm.lifetime.start(i64 512, i8* %11) #1
  %12 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load i32, i32* %bit_x, align 4, !tbaa !5
  %neg = xor i32 %13, -1
  %and = and i32 %neg, 7
  %add = add nsw i32 %and, 1
  store i32 %add, i32* %shift, align 4, !tbaa !5
  %14 = bitcast [64 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 64, i8* %14) #1
  %15 = bitcast i8** %sp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load i8*, i8** %src.addr, align 8, !tbaa !1
  store i8* %16, i8** %sp, align 8, !tbaa !1
  %17 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i32* %plane to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load i32, i32* %pdepth, align 4, !tbaa !5
  %cmp1 = icmp eq i32 %19, 1
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end
  %20 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %color_info2 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %20, i32 0, i32 11
  %num_components3 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info2, i32 0, i32 1
  %21 = load i32, i32* %num_components3, align 4, !tbaa !72
  %cmp4 = icmp eq i32 %21, 4
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %22 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %23 = load i32, i32* %y.addr, align 4, !tbaa !5
  %24 = load i32, i32* %destx.addr, align 4, !tbaa !5
  %25 = load i8*, i8** %src.addr, align 8, !tbaa !1
  %26 = load i32, i32* %width.addr, align 4, !tbaa !5
  %27 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %28 = load i32, i32* %src_depth.addr, align 4, !tbaa !5
  call void @pack_planar_cmyk_1bit_from_standard(%struct.gx_device_memory_s* %22, i32 %23, i32 %24, i8* %25, i32 %26, i32 %27, i32 %28) #3
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.239

if.end:                                           ; preds = %land.lhs.true, %cond.end
  store i32 0, i32* %plane, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %29 = load i32, i32* %plane, align 4, !tbaa !5
  %30 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %color_info5 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %30, i32 0, i32 11
  %num_components6 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info5, i32 0, i32 1
  %31 = load i32, i32* %num_components6, align 4, !tbaa !72
  %cmp7 = icmp slt i32 %29, %31
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #1
  %33 = load i32, i32* %y.addr, align 4, !tbaa !5
  %34 = load i32, i32* %plane, align 4, !tbaa !5
  %35 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %35, i32 0, i32 14
  %36 = load i32, i32* %height, align 4, !tbaa !35
  %mul8 = mul nsw i32 %34, %36
  %add9 = add nsw i32 %33, %mul8
  %idxprom = sext i32 %add9 to i64
  %37 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %37, i32 0, i32 52
  %38 = load i8**, i8*** %line_ptrs, align 8, !tbaa !65
  %arrayidx = getelementptr inbounds i8*, i8** %38, i64 %idxprom
  %39 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  store i8* %39, i8** %dest, align 8, !tbaa !1
  %40 = load i8*, i8** %dest, align 8, !tbaa !1
  %41 = load i32, i32* %bit_x, align 4, !tbaa !5
  %shr = ashr i32 %41, 3
  %idx.ext = sext i32 %shr to i64
  %add.ptr = getelementptr inbounds i8, i8* %40, i64 %idx.ext
  %42 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom10 = sext i32 %42 to i64
  %arrayidx11 = getelementptr inbounds [64 x i8*], [64 x i8*]* %dp, i32 0, i64 %idxprom10
  store i8* %add.ptr, i8** %arrayidx11, align 8, !tbaa !1
  %43 = load i32, i32* %shift, align 4, !tbaa !5
  %cmp12 = icmp eq i32 %43, 8
  br i1 %cmp12, label %cond.true.13, label %cond.false.14

cond.true.13:                                     ; preds = %for.body
  br label %cond.end.19

cond.false.14:                                    ; preds = %for.body
  %44 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom15 = sext i32 %44 to i64
  %arrayidx16 = getelementptr inbounds [64 x i8*], [64 x i8*]* %dp, i32 0, i64 %idxprom15
  %45 = load i8*, i8** %arrayidx16, align 8, !tbaa !1
  %46 = load i8, i8* %45, align 1, !tbaa !38
  %conv = zext i8 %46 to i32
  %47 = load i32, i32* %shift, align 4, !tbaa !5
  %shr17 = ashr i32 65280, %47
  %and18 = and i32 %conv, %shr17
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.14, %cond.true.13
  %cond20 = phi i32 [ 0, %cond.true.13 ], [ %and18, %cond.false.14 ]
  %conv21 = trunc i32 %cond20 to i8
  %48 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom22 = sext i32 %48 to i64
  %arrayidx23 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i64 %idxprom22
  store i8 %conv21, i8* %arrayidx23, align 1, !tbaa !38
  %49 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  br label %for.inc

for.inc:                                          ; preds = %cond.end.19
  %50 = load i32, i32* %plane, align 4, !tbaa !5
  %inc = add nsw i32 %50, 1
  store i32 %inc, i32* %plane, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %51 = load i32, i32* %width.addr, align 4, !tbaa !5
  store i32 %51, i32* %x, align 4, !tbaa !5
  br label %for.cond.24

for.cond.24:                                      ; preds = %sw.epilog, %for.end
  %52 = load i32, i32* %x, align 4, !tbaa !5
  %dec = add nsw i32 %52, -1
  store i32 %dec, i32* %x, align 4, !tbaa !5
  %cmp25 = icmp sge i32 %dec, 0
  br i1 %cmp25, label %for.body.27, label %for.end.191

for.body.27:                                      ; preds = %for.cond.24
  call void @llvm.lifetime.start(i64 1, i8* %vr) #1
  call void @llvm.lifetime.start(i64 1, i8* %vg) #1
  call void @llvm.lifetime.start(i64 1, i8* %vb) #1
  %53 = bitcast i64* %pixel to i8*
  call void @llvm.lifetime.start(i64 8, i8* %53) #1
  call void @llvm.lifetime.start(i64 1, i8* %chop) #1
  store i8 1, i8* %chop, align 1, !tbaa !38
  %54 = load i8*, i8** %sp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %incdec.ptr, i8** %sp, align 8, !tbaa !1
  %55 = load i8, i8* %54, align 1, !tbaa !38
  store i8 %55, i8* %vr, align 1, !tbaa !38
  %56 = load i32, i32* %src_depth.addr, align 4, !tbaa !5
  %cmp28 = icmp sgt i32 %56, 8
  br i1 %cmp28, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %for.body.27
  %57 = load i8*, i8** %sp, align 8, !tbaa !1
  %incdec.ptr31 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %incdec.ptr31, i8** %sp, align 8, !tbaa !1
  %58 = load i8, i8* %57, align 1, !tbaa !38
  store i8 %58, i8* %vg, align 1, !tbaa !38
  %59 = load i8*, i8** %sp, align 8, !tbaa !1
  %incdec.ptr32 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr32, i8** %sp, align 8, !tbaa !1
  %60 = load i8, i8* %59, align 1, !tbaa !38
  store i8 %60, i8* %vb, align 1, !tbaa !38
  br label %if.end.33

if.else:                                          ; preds = %for.body.27
  %61 = load i8, i8* %vr, align 1, !tbaa !38
  store i8 %61, i8* %vg, align 1, !tbaa !38
  store i8 %61, i8* %vb, align 1, !tbaa !38
  br label %if.end.33

if.end.33:                                        ; preds = %if.else, %if.then.30
  br label %for.cond.34

for.cond.34:                                      ; preds = %cleanup.cont, %if.end.33
  %62 = bitcast [3 x i16]* %cv to i8*
  call void @llvm.lifetime.start(i64 6, i8* %62) #1
  %63 = load i8, i8* %vr, align 1, !tbaa !38
  %conv35 = zext i8 %63 to i32
  %shl = shl i32 %conv35, 8
  %64 = load i8, i8* %vr, align 1, !tbaa !38
  %conv36 = zext i8 %64 to i32
  %shr37 = ashr i32 %conv36, 0
  %add38 = add nsw i32 %shl, %shr37
  %conv39 = trunc i32 %add38 to i16
  %arrayidx40 = getelementptr inbounds [3 x i16], [3 x i16]* %cv, i32 0, i64 0
  store i16 %conv39, i16* %arrayidx40, align 2, !tbaa !39
  %65 = load i8, i8* %vg, align 1, !tbaa !38
  %conv41 = zext i8 %65 to i32
  %shl42 = shl i32 %conv41, 8
  %66 = load i8, i8* %vg, align 1, !tbaa !38
  %conv43 = zext i8 %66 to i32
  %shr44 = ashr i32 %conv43, 0
  %add45 = add nsw i32 %shl42, %shr44
  %conv46 = trunc i32 %add45 to i16
  %arrayidx47 = getelementptr inbounds [3 x i16], [3 x i16]* %cv, i32 0, i64 1
  store i16 %conv46, i16* %arrayidx47, align 2, !tbaa !39
  %67 = load i8, i8* %vb, align 1, !tbaa !38
  %conv48 = zext i8 %67 to i32
  %shl49 = shl i32 %conv48, 8
  %68 = load i8, i8* %vb, align 1, !tbaa !38
  %conv50 = zext i8 %68 to i32
  %shr51 = ashr i32 %conv50, 0
  %add52 = add nsw i32 %shl49, %shr51
  %conv53 = trunc i32 %add52 to i16
  %arrayidx54 = getelementptr inbounds [3 x i16], [3 x i16]* %cv, i32 0, i64 2
  store i16 %conv53, i16* %arrayidx54, align 2, !tbaa !39
  %69 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %map, align 8, !tbaa !1
  %70 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %71 = bitcast %struct.gx_device_memory_s* %70 to %struct.gx_device_s*
  %arraydecay = getelementptr inbounds [3 x i16], [3 x i16]* %cv, i32 0, i32 0
  %call = call i64 %69(%struct.gx_device_s* %71, i16* %arraydecay) #3
  store i64 %call, i64* %pixel, align 8, !tbaa !7
  %72 = load i64, i64* %pixel, align 8, !tbaa !7
  %cmp55 = icmp ne i64 %72, -1
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %for.cond.34
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup

if.end.58:                                        ; preds = %for.cond.34
  %73 = load i8, i8* %vr, align 1, !tbaa !38
  %conv59 = zext i8 %73 to i32
  %cmp60 = icmp sge i32 %conv59, 128
  br i1 %cmp60, label %cond.true.62, label %cond.false.65

cond.true.62:                                     ; preds = %if.end.58
  %74 = load i8, i8* %vr, align 1, !tbaa !38
  %conv63 = zext i8 %74 to i32
  %75 = load i8, i8* %chop, align 1, !tbaa !38
  %conv64 = zext i8 %75 to i32
  %or = or i32 %conv63, %conv64
  br label %cond.end.70

cond.false.65:                                    ; preds = %if.end.58
  %76 = load i8, i8* %vr, align 1, !tbaa !38
  %conv66 = zext i8 %76 to i32
  %77 = load i8, i8* %chop, align 1, !tbaa !38
  %conv67 = zext i8 %77 to i32
  %neg68 = xor i32 %conv67, -1
  %and69 = and i32 %conv66, %neg68
  br label %cond.end.70

cond.end.70:                                      ; preds = %cond.false.65, %cond.true.62
  %cond71 = phi i32 [ %or, %cond.true.62 ], [ %and69, %cond.false.65 ]
  %conv72 = trunc i32 %cond71 to i8
  store i8 %conv72, i8* %vr, align 1, !tbaa !38
  %78 = load i8, i8* %vg, align 1, !tbaa !38
  %conv73 = zext i8 %78 to i32
  %cmp74 = icmp sge i32 %conv73, 128
  br i1 %cmp74, label %cond.true.76, label %cond.false.80

cond.true.76:                                     ; preds = %cond.end.70
  %79 = load i8, i8* %vg, align 1, !tbaa !38
  %conv77 = zext i8 %79 to i32
  %80 = load i8, i8* %chop, align 1, !tbaa !38
  %conv78 = zext i8 %80 to i32
  %or79 = or i32 %conv77, %conv78
  br label %cond.end.85

cond.false.80:                                    ; preds = %cond.end.70
  %81 = load i8, i8* %vg, align 1, !tbaa !38
  %conv81 = zext i8 %81 to i32
  %82 = load i8, i8* %chop, align 1, !tbaa !38
  %conv82 = zext i8 %82 to i32
  %neg83 = xor i32 %conv82, -1
  %and84 = and i32 %conv81, %neg83
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.false.80, %cond.true.76
  %cond86 = phi i32 [ %or79, %cond.true.76 ], [ %and84, %cond.false.80 ]
  %conv87 = trunc i32 %cond86 to i8
  store i8 %conv87, i8* %vg, align 1, !tbaa !38
  %83 = load i8, i8* %vb, align 1, !tbaa !38
  %conv88 = zext i8 %83 to i32
  %cmp89 = icmp sge i32 %conv88, 128
  br i1 %cmp89, label %cond.true.91, label %cond.false.95

cond.true.91:                                     ; preds = %cond.end.85
  %84 = load i8, i8* %vb, align 1, !tbaa !38
  %conv92 = zext i8 %84 to i32
  %85 = load i8, i8* %chop, align 1, !tbaa !38
  %conv93 = zext i8 %85 to i32
  %or94 = or i32 %conv92, %conv93
  br label %cond.end.100

cond.false.95:                                    ; preds = %cond.end.85
  %86 = load i8, i8* %vb, align 1, !tbaa !38
  %conv96 = zext i8 %86 to i32
  %87 = load i8, i8* %chop, align 1, !tbaa !38
  %conv97 = zext i8 %87 to i32
  %neg98 = xor i32 %conv97, -1
  %and99 = and i32 %conv96, %neg98
  br label %cond.end.100

cond.end.100:                                     ; preds = %cond.false.95, %cond.true.91
  %cond101 = phi i32 [ %or94, %cond.true.91 ], [ %and99, %cond.false.95 ]
  %conv102 = trunc i32 %cond101 to i8
  store i8 %conv102, i8* %vb, align 1, !tbaa !38
  %88 = load i8, i8* %chop, align 1, !tbaa !38
  %conv103 = zext i8 %88 to i32
  %shl104 = shl i32 %conv103, 1
  %conv105 = trunc i32 %shl104 to i8
  store i8 %conv105, i8* %chop, align 1, !tbaa !38
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end.100, %if.then.57
  %89 = bitcast [3 x i16]* %cv to i8*
  call void @llvm.lifetime.end(i64 6, i8* %89) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 7, label %for.end.106
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond.34

for.end.106:                                      ; preds = %cleanup
  %90 = load i32, i32* %depth.addr, align 4, !tbaa !5
  switch i32 %90, label %sw.default [
    i32 32, label %sw.bb
    i32 24, label %sw.bb.122
    i32 16, label %sw.bb.134
  ]

sw.bb:                                            ; preds = %for.end.106
  %91 = load i64, i64* %pixel, align 8, !tbaa !7
  %shr107 = lshr i64 %91, 24
  %conv108 = trunc i64 %shr107 to i8
  %arrayidx109 = getelementptr inbounds [64 x i8*], [64 x i8*]* %dp, i32 0, i64 0
  %92 = load i8*, i8** %arrayidx109, align 8, !tbaa !1
  %incdec.ptr110 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %incdec.ptr110, i8** %arrayidx109, align 8, !tbaa !1
  store i8 %conv108, i8* %92, align 1, !tbaa !38
  %93 = load i64, i64* %pixel, align 8, !tbaa !7
  %shr111 = lshr i64 %93, 16
  %conv112 = trunc i64 %shr111 to i8
  %arrayidx113 = getelementptr inbounds [64 x i8*], [64 x i8*]* %dp, i32 0, i64 1
  %94 = load i8*, i8** %arrayidx113, align 8, !tbaa !1
  %incdec.ptr114 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %incdec.ptr114, i8** %arrayidx113, align 8, !tbaa !1
  store i8 %conv112, i8* %94, align 1, !tbaa !38
  %95 = load i64, i64* %pixel, align 8, !tbaa !7
  %shr115 = lshr i64 %95, 8
  %conv116 = trunc i64 %shr115 to i8
  %arrayidx117 = getelementptr inbounds [64 x i8*], [64 x i8*]* %dp, i32 0, i64 2
  %96 = load i8*, i8** %arrayidx117, align 8, !tbaa !1
  %incdec.ptr118 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %incdec.ptr118, i8** %arrayidx117, align 8, !tbaa !1
  store i8 %conv116, i8* %96, align 1, !tbaa !38
  %97 = load i64, i64* %pixel, align 8, !tbaa !7
  %conv119 = trunc i64 %97 to i8
  %arrayidx120 = getelementptr inbounds [64 x i8*], [64 x i8*]* %dp, i32 0, i64 3
  %98 = load i8*, i8** %arrayidx120, align 8, !tbaa !1
  %incdec.ptr121 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %incdec.ptr121, i8** %arrayidx120, align 8, !tbaa !1
  store i8 %conv119, i8* %98, align 1, !tbaa !38
  store i32 0, i32* %shift, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.122:                                        ; preds = %for.end.106
  %99 = load i64, i64* %pixel, align 8, !tbaa !7
  %shr123 = lshr i64 %99, 16
  %conv124 = trunc i64 %shr123 to i8
  %arrayidx125 = getelementptr inbounds [64 x i8*], [64 x i8*]* %dp, i32 0, i64 0
  %100 = load i8*, i8** %arrayidx125, align 8, !tbaa !1
  %incdec.ptr126 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %incdec.ptr126, i8** %arrayidx125, align 8, !tbaa !1
  store i8 %conv124, i8* %100, align 1, !tbaa !38
  %101 = load i64, i64* %pixel, align 8, !tbaa !7
  %shr127 = lshr i64 %101, 8
  %conv128 = trunc i64 %shr127 to i8
  %arrayidx129 = getelementptr inbounds [64 x i8*], [64 x i8*]* %dp, i32 0, i64 1
  %102 = load i8*, i8** %arrayidx129, align 8, !tbaa !1
  %incdec.ptr130 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %incdec.ptr130, i8** %arrayidx129, align 8, !tbaa !1
  store i8 %conv128, i8* %102, align 1, !tbaa !38
  %103 = load i64, i64* %pixel, align 8, !tbaa !7
  %conv131 = trunc i64 %103 to i8
  %arrayidx132 = getelementptr inbounds [64 x i8*], [64 x i8*]* %dp, i32 0, i64 2
  %104 = load i8*, i8** %arrayidx132, align 8, !tbaa !1
  %incdec.ptr133 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %incdec.ptr133, i8** %arrayidx132, align 8, !tbaa !1
  store i8 %conv131, i8* %104, align 1, !tbaa !38
  store i32 0, i32* %shift, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.134:                                        ; preds = %for.end.106
  %105 = load i64, i64* %pixel, align 8, !tbaa !7
  %shr135 = lshr i64 %105, 8
  %conv136 = trunc i64 %shr135 to i8
  %arrayidx137 = getelementptr inbounds [64 x i8*], [64 x i8*]* %dp, i32 0, i64 0
  %106 = load i8*, i8** %arrayidx137, align 8, !tbaa !1
  %incdec.ptr138 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %incdec.ptr138, i8** %arrayidx137, align 8, !tbaa !1
  store i8 %conv136, i8* %106, align 1, !tbaa !38
  %107 = load i64, i64* %pixel, align 8, !tbaa !7
  %conv139 = trunc i64 %107 to i8
  %arrayidx140 = getelementptr inbounds [64 x i8*], [64 x i8*]* %dp, i32 0, i64 1
  %108 = load i8*, i8** %arrayidx140, align 8, !tbaa !1
  %incdec.ptr141 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %incdec.ptr141, i8** %arrayidx140, align 8, !tbaa !1
  store i8 %conv139, i8* %108, align 1, !tbaa !38
  store i32 0, i32* %shift, align 4, !tbaa !5
  br label %sw.epilog

sw.default:                                       ; preds = %for.end.106
  %109 = bitcast i32* %pmask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %109) #1
  %110 = load i32, i32* %pdepth, align 4, !tbaa !5
  %shl142 = shl i32 1, %110
  %sub = sub nsw i32 %shl142, 1
  store i32 %sub, i32* %pmask, align 4, !tbaa !5
  %111 = bitcast i32* %pshift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %111) #1
  %112 = load i32, i32* %pdepth, align 4, !tbaa !5
  %113 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %color_info143 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %113, i32 0, i32 11
  %num_components144 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info143, i32 0, i32 1
  %114 = load i32, i32* %num_components144, align 4, !tbaa !72
  %sub145 = sub nsw i32 %114, 1
  %mul146 = mul nsw i32 %112, %sub145
  store i32 %mul146, i32* %pshift, align 4, !tbaa !5
  %115 = load i32, i32* %pdepth, align 4, !tbaa !5
  %116 = load i32, i32* %shift, align 4, !tbaa !5
  %sub147 = sub nsw i32 %116, %115
  store i32 %sub147, i32* %shift, align 4, !tbaa !5
  %117 = load i32, i32* %shift, align 4, !tbaa !5
  %cmp148 = icmp slt i32 %117, 0
  br i1 %cmp148, label %if.then.150, label %if.end.166

if.then.150:                                      ; preds = %sw.default
  store i32 0, i32* %plane, align 4, !tbaa !5
  br label %for.cond.151

for.cond.151:                                     ; preds = %for.inc.162, %if.then.150
  %118 = load i32, i32* %plane, align 4, !tbaa !5
  %119 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %color_info152 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %119, i32 0, i32 11
  %num_components153 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info152, i32 0, i32 1
  %120 = load i32, i32* %num_components153, align 4, !tbaa !72
  %cmp154 = icmp slt i32 %118, %120
  br i1 %cmp154, label %for.body.156, label %for.end.164

for.body.156:                                     ; preds = %for.cond.151
  %121 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom157 = sext i32 %121 to i64
  %arrayidx158 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i64 %idxprom157
  %122 = load i8, i8* %arrayidx158, align 1, !tbaa !38
  %123 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom159 = sext i32 %123 to i64
  %arrayidx160 = getelementptr inbounds [64 x i8*], [64 x i8*]* %dp, i32 0, i64 %idxprom159
  %124 = load i8*, i8** %arrayidx160, align 8, !tbaa !1
  %incdec.ptr161 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %incdec.ptr161, i8** %arrayidx160, align 8, !tbaa !1
  store i8 %122, i8* %124, align 1, !tbaa !38
  br label %for.inc.162

for.inc.162:                                      ; preds = %for.body.156
  %125 = load i32, i32* %plane, align 4, !tbaa !5
  %inc163 = add nsw i32 %125, 1
  store i32 %inc163, i32* %plane, align 4, !tbaa !5
  br label %for.cond.151

for.end.164:                                      ; preds = %for.cond.151
  %126 = load i32, i32* %shift, align 4, !tbaa !5
  %add165 = add nsw i32 %126, 8
  store i32 %add165, i32* %shift, align 4, !tbaa !5
  br label %if.end.166

if.end.166:                                       ; preds = %for.end.164, %sw.default
  store i32 0, i32* %plane, align 4, !tbaa !5
  br label %for.cond.167

for.cond.167:                                     ; preds = %for.inc.185, %if.end.166
  %127 = load i32, i32* %plane, align 4, !tbaa !5
  %128 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %color_info168 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %128, i32 0, i32 11
  %num_components169 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info168, i32 0, i32 1
  %129 = load i32, i32* %num_components169, align 4, !tbaa !72
  %cmp170 = icmp slt i32 %127, %129
  br i1 %cmp170, label %for.body.172, label %for.end.188

for.body.172:                                     ; preds = %for.cond.167
  %130 = load i64, i64* %pixel, align 8, !tbaa !7
  %131 = load i32, i32* %pshift, align 4, !tbaa !5
  %sh_prom = zext i32 %131 to i64
  %shr173 = lshr i64 %130, %sh_prom
  %132 = load i32, i32* %pmask, align 4, !tbaa !5
  %conv174 = sext i32 %132 to i64
  %and175 = and i64 %shr173, %conv174
  %133 = load i32, i32* %shift, align 4, !tbaa !5
  %sh_prom176 = zext i32 %133 to i64
  %shl177 = shl i64 %and175, %sh_prom176
  %conv178 = trunc i64 %shl177 to i8
  %conv179 = zext i8 %conv178 to i32
  %134 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom180 = sext i32 %134 to i64
  %arrayidx181 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i64 %idxprom180
  %135 = load i8, i8* %arrayidx181, align 1, !tbaa !38
  %conv182 = zext i8 %135 to i32
  %add183 = add nsw i32 %conv182, %conv179
  %conv184 = trunc i32 %add183 to i8
  store i8 %conv184, i8* %arrayidx181, align 1, !tbaa !38
  br label %for.inc.185

for.inc.185:                                      ; preds = %for.body.172
  %136 = load i32, i32* %pdepth, align 4, !tbaa !5
  %137 = load i32, i32* %pshift, align 4, !tbaa !5
  %sub186 = sub nsw i32 %137, %136
  store i32 %sub186, i32* %pshift, align 4, !tbaa !5
  %138 = load i32, i32* %plane, align 4, !tbaa !5
  %inc187 = add nsw i32 %138, 1
  store i32 %inc187, i32* %plane, align 4, !tbaa !5
  br label %for.cond.167

for.end.188:                                      ; preds = %for.cond.167
  store i32 9, i32* %cleanup.dest.slot
  %139 = bitcast i32* %pshift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %139) #1
  %140 = bitcast i32* %pmask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #1
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end.188, %sw.bb.134, %sw.bb.122, %sw.bb
  call void @llvm.lifetime.end(i64 1, i8* %chop) #1
  %141 = bitcast i64* %pixel to i8*
  call void @llvm.lifetime.end(i64 8, i8* %141) #1
  call void @llvm.lifetime.end(i64 1, i8* %vb) #1
  call void @llvm.lifetime.end(i64 1, i8* %vg) #1
  call void @llvm.lifetime.end(i64 1, i8* %vr) #1
  br label %for.cond.24

for.end.191:                                      ; preds = %for.cond.24
  %142 = load i32, i32* %width.addr, align 4, !tbaa !5
  %cmp192 = icmp sgt i32 %142, 0
  br i1 %cmp192, label %land.lhs.true.194, label %if.end.238

land.lhs.true.194:                                ; preds = %for.end.191
  %143 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %cmp195 = icmp sle i32 %143, 8
  br i1 %cmp195, label %if.then.197, label %if.end.238

if.then.197:                                      ; preds = %land.lhs.true.194
  %144 = load i32, i32* %shift, align 4, !tbaa !5
  %cmp198 = icmp eq i32 %144, 0
  br i1 %cmp198, label %if.then.200, label %if.else.214

if.then.200:                                      ; preds = %if.then.197
  store i32 0, i32* %plane, align 4, !tbaa !5
  br label %for.cond.201

for.cond.201:                                     ; preds = %for.inc.211, %if.then.200
  %145 = load i32, i32* %plane, align 4, !tbaa !5
  %146 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %color_info202 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %146, i32 0, i32 11
  %num_components203 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info202, i32 0, i32 1
  %147 = load i32, i32* %num_components203, align 4, !tbaa !72
  %cmp204 = icmp slt i32 %145, %147
  br i1 %cmp204, label %for.body.206, label %for.end.213

for.body.206:                                     ; preds = %for.cond.201
  %148 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom207 = sext i32 %148 to i64
  %arrayidx208 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i64 %idxprom207
  %149 = load i8, i8* %arrayidx208, align 1, !tbaa !38
  %150 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom209 = sext i32 %150 to i64
  %arrayidx210 = getelementptr inbounds [64 x i8*], [64 x i8*]* %dp, i32 0, i64 %idxprom209
  %151 = load i8*, i8** %arrayidx210, align 8, !tbaa !1
  store i8 %149, i8* %151, align 1, !tbaa !38
  br label %for.inc.211

for.inc.211:                                      ; preds = %for.body.206
  %152 = load i32, i32* %plane, align 4, !tbaa !5
  %inc212 = add nsw i32 %152, 1
  store i32 %inc212, i32* %plane, align 4, !tbaa !5
  br label %for.cond.201

for.end.213:                                      ; preds = %for.cond.201
  br label %if.end.237

if.else.214:                                      ; preds = %if.then.197
  %153 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %153) #1
  %154 = load i32, i32* %shift, align 4, !tbaa !5
  %shl215 = shl i32 1, %154
  %sub216 = sub nsw i32 %shl215, 1
  store i32 %sub216, i32* %mask, align 4, !tbaa !5
  store i32 0, i32* %plane, align 4, !tbaa !5
  br label %for.cond.217

for.cond.217:                                     ; preds = %for.inc.234, %if.else.214
  %155 = load i32, i32* %plane, align 4, !tbaa !5
  %156 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %color_info218 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %156, i32 0, i32 11
  %num_components219 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info218, i32 0, i32 1
  %157 = load i32, i32* %num_components219, align 4, !tbaa !72
  %cmp220 = icmp slt i32 %155, %157
  br i1 %cmp220, label %for.body.222, label %for.end.236

for.body.222:                                     ; preds = %for.cond.217
  %158 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom223 = sext i32 %158 to i64
  %arrayidx224 = getelementptr inbounds [64 x i8*], [64 x i8*]* %dp, i32 0, i64 %idxprom223
  %159 = load i8*, i8** %arrayidx224, align 8, !tbaa !1
  %160 = load i8, i8* %159, align 1, !tbaa !38
  %conv225 = zext i8 %160 to i32
  %161 = load i32, i32* %mask, align 4, !tbaa !5
  %and226 = and i32 %conv225, %161
  %162 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom227 = sext i32 %162 to i64
  %arrayidx228 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i64 %idxprom227
  %163 = load i8, i8* %arrayidx228, align 1, !tbaa !38
  %conv229 = zext i8 %163 to i32
  %add230 = add nsw i32 %and226, %conv229
  %conv231 = trunc i32 %add230 to i8
  %164 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom232 = sext i32 %164 to i64
  %arrayidx233 = getelementptr inbounds [64 x i8*], [64 x i8*]* %dp, i32 0, i64 %idxprom232
  %165 = load i8*, i8** %arrayidx233, align 8, !tbaa !1
  store i8 %conv231, i8* %165, align 1, !tbaa !38
  br label %for.inc.234

for.inc.234:                                      ; preds = %for.body.222
  %166 = load i32, i32* %plane, align 4, !tbaa !5
  %inc235 = add nsw i32 %166, 1
  store i32 %inc235, i32* %plane, align 4, !tbaa !5
  br label %for.cond.217

for.end.236:                                      ; preds = %for.cond.217
  %167 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %167) #1
  br label %if.end.237

if.end.237:                                       ; preds = %for.end.236, %for.end.213
  br label %if.end.238

if.end.238:                                       ; preds = %if.end.237, %land.lhs.true.194, %for.end.191
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.239

cleanup.239:                                      ; preds = %if.end.238, %if.then
  %168 = bitcast i32* %plane to i8*
  call void @llvm.lifetime.end(i64 4, i8* %168) #1
  %169 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %169) #1
  %170 = bitcast i8** %sp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %170) #1
  %171 = bitcast [64 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 64, i8* %171) #1
  %172 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %172) #1
  %173 = bitcast [64 x i8*]* %dp to i8*
  call void @llvm.lifetime.end(i64 512, i8* %173) #1
  %174 = bitcast i32* %bit_x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %174) #1
  %175 = bitcast i32* %pdepth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %175) #1
  %176 = bitcast i64 (%struct.gx_device_s*, i16*)** %map to i8*
  call void @llvm.lifetime.end(i64 8, i8* %176) #1
  %cleanup.dest.248 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.248, label %unreachable [
    i32 0, label %cleanup.cont.249
    i32 1, label %cleanup.cont.249
  ]

cleanup.cont.249:                                 ; preds = %cleanup.239, %cleanup.239
  ret void

unreachable:                                      ; preds = %cleanup.239, %cleanup
  unreachable
}

declare void @gs_make_mem_device(%struct.gx_device_memory_s*, %struct.gx_device_memory_s*, %struct.gs_memory_s*, i32, %struct.gx_device_s*) #2

declare i32 @gdev_mem_data_size(%struct.gx_device_memory_s*, i32, i32, i64*) #2

declare i32 @gdev_mem_bits_size(%struct.gx_device_memory_s*, i32, i32, i64*) #2

; Function Attrs: nounwind uwtable
define internal void @unpack_colors_to_standard(%struct.gx_device_s* %dev, i64* %real_colors, i64* %colors, i32 %depth) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %real_colors.addr = alloca i64*, align 8
  %colors.addr = alloca i64*, align 8
  %depth.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %rgb = alloca [3 x i16], align 2
  %pixel = alloca i64, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64* %real_colors, i64** %real_colors.addr, align 8, !tbaa !1
  store i64* %colors, i64** %colors.addr, align 8, !tbaa !1
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %1, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = bitcast [3 x i16]* %rgb to i8*
  call void @llvm.lifetime.start(i64 6, i8* %2) #1
  %3 = bitcast i64* %pixel to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 42
  %map_color_rgb = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 6
  %5 = load i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)** %map_color_rgb, align 8, !tbaa !88
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %7 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %7 to i64
  %8 = load i64*, i64** %colors.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %8, i64 %idxprom
  %9 = load i64, i64* %arrayidx, align 8, !tbaa !7
  %arraydecay = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i32 0
  %call = call i32 %5(%struct.gx_device_s* %6, i64 %9, i16* %arraydecay) #3
  %arrayidx1 = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i64 0
  %10 = load i16, i16* %arrayidx1, align 2, !tbaa !39
  %conv = zext i16 %10 to i32
  %mul = mul i32 %conv, 65281
  %add = add i32 %mul, 8388608
  %shr = lshr i32 %add, 24
  %conv2 = trunc i32 %shr to i16
  %conv3 = zext i16 %conv2 to i64
  store i64 %conv3, i64* %pixel, align 8, !tbaa !7
  %11 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %cmp4 = icmp sgt i32 %11, 8
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %12 = load i64, i64* %pixel, align 8, !tbaa !7
  %shl = shl i64 %12, 16
  %arrayidx6 = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i64 1
  %13 = load i16, i16* %arrayidx6, align 2, !tbaa !39
  %conv7 = zext i16 %13 to i32
  %mul8 = mul i32 %conv7, 65281
  %add9 = add i32 %mul8, 8388608
  %shr10 = lshr i32 %add9, 24
  %conv11 = trunc i32 %shr10 to i16
  %conv12 = zext i16 %conv11 to i32
  %shl13 = shl i32 %conv12, 8
  %conv14 = sext i32 %shl13 to i64
  %add15 = add i64 %shl, %conv14
  %arrayidx16 = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i64 2
  %14 = load i16, i16* %arrayidx16, align 2, !tbaa !39
  %conv17 = zext i16 %14 to i32
  %mul18 = mul i32 %conv17, 65281
  %add19 = add i32 %mul18, 8388608
  %shr20 = lshr i32 %add19, 24
  %conv21 = trunc i32 %shr20 to i16
  %conv22 = zext i16 %conv21 to i64
  %add23 = add i64 %add15, %conv22
  store i64 %add23, i64* %pixel, align 8, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %15 = load i64, i64* %pixel, align 8, !tbaa !7
  %16 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom24 = sext i32 %16 to i64
  %17 = load i64*, i64** %real_colors.addr, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds i64, i64* %17, i64 %idxprom24
  store i64 %15, i64* %arrayidx25, align 8, !tbaa !7
  %18 = bitcast i64* %pixel to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = bitcast [3 x i16]* %rgb to i8*
  call void @llvm.lifetime.end(i64 6, i8* %19) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  ret void
}

declare i32 @gx_get_bits_copy(%struct.gx_device_s*, i32, i32, i32, %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @gx_default_copy_rop(%struct.gx_device_s* %dev, i8* %sdata, i32 %sourcex, i32 %sraster, i64 %id, i64* %scolors, %struct.gx_tile_bitmap_s* %texture, i64* %tcolors, i32 %x, i32 %y, i32 %width, i32 %height, i32 %phase_x, i32 %phase_y, i32 %lop) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %sdata.addr = alloca i8*, align 8
  %sourcex.addr = alloca i32, align 4
  %sraster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %scolors.addr = alloca i64*, align 8
  %texture.addr = alloca %struct.gx_tile_bitmap_s*, align 8
  %tcolors.addr = alloca i64*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %phase_x.addr = alloca i32, align 4
  %phase_y.addr = alloca i32, align 4
  %lop.addr = alloca i32, align 4
  %textures = alloca %struct.gx_strip_bitmap_s*, align 8
  %tiles = alloca %struct.gx_strip_bitmap_s, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %sdata, i8** %sdata.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 %sraster, i32* %sraster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !7
  store i64* %scolors, i64** %scolors.addr, align 8, !tbaa !1
  store %struct.gx_tile_bitmap_s* %texture, %struct.gx_tile_bitmap_s** %texture.addr, align 8, !tbaa !1
  store i64* %tcolors, i64** %tcolors.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  store i32 %phase_x, i32* %phase_x.addr, align 4, !tbaa !5
  store i32 %phase_y, i32* %phase_y.addr, align 4, !tbaa !5
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_strip_bitmap_s** %textures to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.gx_strip_bitmap_s* %tiles to i8*
  call void @llvm.lifetime.start(i64 48, i8* %1) #1
  %2 = load %struct.gx_tile_bitmap_s*, %struct.gx_tile_bitmap_s** %texture.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_tile_bitmap_s* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store %struct.gx_strip_bitmap_s* null, %struct.gx_strip_bitmap_s** %textures, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = bitcast %struct.gx_strip_bitmap_s* %tiles to %struct.gx_tile_bitmap_s*
  %4 = load %struct.gx_tile_bitmap_s*, %struct.gx_tile_bitmap_s** %texture.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_tile_bitmap_s* %3 to i8*
  %6 = bitcast %struct.gx_tile_bitmap_s* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 40, i32 8, i1 false), !tbaa.struct !89
  %shift = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles, i32 0, i32 7
  store i16 0, i16* %shift, align 2, !tbaa !90
  %rep_shift = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles, i32 0, i32 6
  store i16 0, i16* %rep_shift, align 2, !tbaa !91
  %num_planes = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles, i32 0, i32 8
  store i32 1, i32* %num_planes, align 4, !tbaa !69
  store %struct.gx_strip_bitmap_s* %tiles, %struct.gx_strip_bitmap_s** %textures, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 42
  %strip_copy_rop = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 35
  %strip_copy_rop1 = bitcast {}** %strip_copy_rop to i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)**
  %8 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)** %strip_copy_rop1, align 8, !tbaa !92
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %10 = load i8*, i8** %sdata.addr, align 8, !tbaa !1
  %11 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %12 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %13 = load i64, i64* %id.addr, align 8, !tbaa !7
  %14 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %15 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures, align 8, !tbaa !1
  %16 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %17 = load i32, i32* %x.addr, align 4, !tbaa !5
  %18 = load i32, i32* %y.addr, align 4, !tbaa !5
  %19 = load i32, i32* %width.addr, align 4, !tbaa !5
  %20 = load i32, i32* %height.addr, align 4, !tbaa !5
  %21 = load i32, i32* %phase_x.addr, align 4, !tbaa !5
  %22 = load i32, i32* %phase_y.addr, align 4, !tbaa !5
  %23 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call = call i32 %8(%struct.gx_device_s* %9, i8* %10, i32 %11, i32 %12, i64 %13, i64* %14, %struct.gx_strip_bitmap_s* %15, i64* %16, i32 %17, i32 %18, i32 %19, i32 %20, i32 %21, i32 %22, i32 %23) #3
  %24 = bitcast %struct.gx_strip_bitmap_s* %tiles to i8*
  call void @llvm.lifetime.end(i64 48, i8* %24) #1
  %25 = bitcast %struct.gx_strip_bitmap_s** %textures to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gx_copy_rop_unaligned(%struct.gx_device_s* %dev, i8* %sdata, i32 %sourcex, i32 %sraster, i64 %id, i64* %scolors, %struct.gx_tile_bitmap_s* %texture, i64* %tcolors, i32 %x, i32 %y, i32 %width, i32 %height, i32 %phase_x, i32 %phase_y, i32 %lop) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %sdata.addr = alloca i8*, align 8
  %sourcex.addr = alloca i32, align 4
  %sraster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %scolors.addr = alloca i64*, align 8
  %texture.addr = alloca %struct.gx_tile_bitmap_s*, align 8
  %tcolors.addr = alloca i64*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %phase_x.addr = alloca i32, align 4
  %phase_y.addr = alloca i32, align 4
  %lop.addr = alloca i32, align 4
  %textures = alloca %struct.gx_strip_bitmap_s*, align 8
  %tiles = alloca %struct.gx_strip_bitmap_s, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %sdata, i8** %sdata.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 %sraster, i32* %sraster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !7
  store i64* %scolors, i64** %scolors.addr, align 8, !tbaa !1
  store %struct.gx_tile_bitmap_s* %texture, %struct.gx_tile_bitmap_s** %texture.addr, align 8, !tbaa !1
  store i64* %tcolors, i64** %tcolors.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  store i32 %phase_x, i32* %phase_x.addr, align 4, !tbaa !5
  store i32 %phase_y, i32* %phase_y.addr, align 4, !tbaa !5
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_strip_bitmap_s** %textures to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.gx_strip_bitmap_s* %tiles to i8*
  call void @llvm.lifetime.start(i64 48, i8* %1) #1
  %2 = load %struct.gx_tile_bitmap_s*, %struct.gx_tile_bitmap_s** %texture.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_tile_bitmap_s* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store %struct.gx_strip_bitmap_s* null, %struct.gx_strip_bitmap_s** %textures, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = bitcast %struct.gx_strip_bitmap_s* %tiles to %struct.gx_tile_bitmap_s*
  %4 = load %struct.gx_tile_bitmap_s*, %struct.gx_tile_bitmap_s** %texture.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_tile_bitmap_s* %3 to i8*
  %6 = bitcast %struct.gx_tile_bitmap_s* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 40, i32 8, i1 false), !tbaa.struct !89
  %shift = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles, i32 0, i32 7
  store i16 0, i16* %shift, align 2, !tbaa !90
  %rep_shift = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles, i32 0, i32 6
  store i16 0, i16* %rep_shift, align 2, !tbaa !91
  %num_planes = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles, i32 0, i32 8
  store i32 1, i32* %num_planes, align 4, !tbaa !69
  store %struct.gx_strip_bitmap_s* %tiles, %struct.gx_strip_bitmap_s** %textures, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %8 = load i8*, i8** %sdata.addr, align 8, !tbaa !1
  %9 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %10 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %11 = load i64, i64* %id.addr, align 8, !tbaa !7
  %12 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %13 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures, align 8, !tbaa !1
  %14 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %15 = load i32, i32* %x.addr, align 4, !tbaa !5
  %16 = load i32, i32* %y.addr, align 4, !tbaa !5
  %17 = load i32, i32* %width.addr, align 4, !tbaa !5
  %18 = load i32, i32* %height.addr, align 4, !tbaa !5
  %19 = load i32, i32* %phase_x.addr, align 4, !tbaa !5
  %20 = load i32, i32* %phase_y.addr, align 4, !tbaa !5
  %21 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call = call i32 @gx_strip_copy_rop_unaligned(%struct.gx_device_s* %7, i8* %8, i32 %9, i32 %10, i64 %11, i64* %12, %struct.gx_strip_bitmap_s* %13, i64* %14, i32 %15, i32 %16, i32 %17, i32 %18, i32 %19, i32 %20, i32 %21) #3
  %22 = bitcast %struct.gx_strip_bitmap_s* %tiles to i8*
  call void @llvm.lifetime.end(i64 48, i8* %22) #1
  %23 = bitcast %struct.gx_strip_bitmap_s** %textures to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gx_strip_copy_rop_unaligned(%struct.gx_device_s* %dev, i8* %sdata, i32 %sourcex, i32 %sraster, i64 %id, i64* %scolors, %struct.gx_strip_bitmap_s* %textures, i64* %tcolors, i32 %x, i32 %y, i32 %width, i32 %height, i32 %phase_x, i32 %phase_y, i32 %lop) #0 {
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
  %copy_rop = alloca i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, align 8
  %depth = alloca i32, align 4
  %step = alloca i32, align 4
  %offset = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %p = alloca i8*, align 8
  %d = alloca i32, align 4
  %dstep = alloca i32, align 4
  %code = alloca i32, align 4
  %i = alloca i32, align 4
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
  %0 = bitcast i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)** %copy_rop to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 42
  %strip_copy_rop = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 35
  %strip_copy_rop1 = bitcast {}** %strip_copy_rop to i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)**
  %2 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)** %strip_copy_rop1, align 8, !tbaa !92
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* %2, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)** %copy_rop, align 8, !tbaa !1
  %3 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %cmp = icmp eq i64* %4, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 11
  %depth2 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %6 = load i16, i16* %depth2, align 2, !tbaa !9
  %conv = zext i16 %6 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ 1, %cond.false ]
  store i32 %cond, i32* %depth, align 4, !tbaa !5
  %7 = bitcast i32* %step to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %and = and i32 %8, 7
  store i32 %and, i32* %step, align 4, !tbaa !5
  %9 = load i8*, i8** %sdata.addr, align 8, !tbaa !1
  %cmp3 = icmp ne i8* %9, null
  br i1 %cmp3, label %if.then, label %if.end.11

if.then:                                          ; preds = %cond.end
  %10 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load i8*, i8** %sdata.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %11 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, 0
  %conv5 = trunc i64 %sub.ptr.sub to i32
  %and6 = and i32 %conv5, 7
  store i32 %and6, i32* %offset, align 4, !tbaa !5
  %12 = load i32, i32* %depth, align 4, !tbaa !5
  %cmp7 = icmp eq i32 %12, 24
  br i1 %cmp7, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  %13 = load i32, i32* %offset, align 4, !tbaa !5
  %rem = urem i32 %13, 3
  %mul = mul i32 %rem, 8
  %14 = load i32, i32* %offset, align 4, !tbaa !5
  %add = add i32 %14, %mul
  store i32 %add, i32* %offset, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then
  %15 = load i32, i32* %offset, align 4, !tbaa !5
  %16 = load i8*, i8** %sdata.addr, align 8, !tbaa !1
  %idx.ext = zext i32 %15 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 %idx.neg
  store i8* %add.ptr, i8** %sdata.addr, align 8, !tbaa !1
  %17 = load i32, i32* %offset, align 4, !tbaa !5
  %shl = shl i32 %17, 3
  %18 = load i32, i32* %depth, align 4, !tbaa !5
  %div = udiv i32 %shl, %18
  %19 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %add10 = add i32 %19, %div
  store i32 %add10, i32* %sourcex.addr, align 4, !tbaa !5
  %20 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %cond.end
  %21 = load i32, i32* %step, align 4, !tbaa !5
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then.20

lor.lhs.false:                                    ; preds = %if.end.11
  %22 = load i8*, i8** %sdata.addr, align 8, !tbaa !1
  %cmp12 = icmp eq i8* %22, null
  br i1 %cmp12, label %if.then.20, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false
  %23 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %cmp15 = icmp ne i64* %23, null
  br i1 %cmp15, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %lor.lhs.false.14
  %24 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %24, i64 0
  %25 = load i64, i64* %arrayidx, align 8, !tbaa !7
  %26 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i64, i64* %26, i64 1
  %27 = load i64, i64* %arrayidx17, align 8, !tbaa !7
  %cmp18 = icmp eq i64 %25, %27
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %land.lhs.true, %lor.lhs.false, %if.end.11
  %28 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)** %copy_rop, align 8, !tbaa !1
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %30 = load i8*, i8** %sdata.addr, align 8, !tbaa !1
  %31 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %32 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %33 = load i64, i64* %id.addr, align 8, !tbaa !7
  %34 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %35 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %36 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %37 = load i32, i32* %x.addr, align 4, !tbaa !5
  %38 = load i32, i32* %y.addr, align 4, !tbaa !5
  %39 = load i32, i32* %width.addr, align 4, !tbaa !5
  %40 = load i32, i32* %height.addr, align 4, !tbaa !5
  %41 = load i32, i32* %phase_x.addr, align 4, !tbaa !5
  %42 = load i32, i32* %phase_y.addr, align 4, !tbaa !5
  %43 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call = call i32 %28(%struct.gx_device_s* %29, i8* %30, i32 %31, i32 %32, i64 %33, i64* %34, %struct.gx_strip_bitmap_s* %35, i64* %36, i32 %37, i32 %38, i32 %39, i32 %40, i32 %41, i32 %42, i32 %43) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %land.lhs.true, %lor.lhs.false.14
  %44 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %44) #1
  %45 = load i8*, i8** %sdata.addr, align 8, !tbaa !1
  store i8* %45, i8** %p, align 8, !tbaa !1
  %46 = bitcast i32* %d to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #1
  %47 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 %47, i32* %d, align 4, !tbaa !5
  %48 = bitcast i32* %dstep to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #1
  %49 = load i32, i32* %step, align 4, !tbaa !5
  %shl22 = shl i32 %49, 3
  %50 = load i32, i32* %depth, align 4, !tbaa !5
  %div23 = sdiv i32 %shl22, %50
  store i32 %div23, i32* %dstep, align 4, !tbaa !5
  %51 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %52 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %52) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.21
  %53 = load i32, i32* %i, align 4, !tbaa !5
  %54 = load i32, i32* %height.addr, align 4, !tbaa !5
  %cmp24 = icmp slt i32 %53, %54
  br i1 %cmp24, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %55 = load i32, i32* %code, align 4, !tbaa !5
  %cmp26 = icmp sge i32 %55, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %56 = phi i1 [ false, %for.cond ], [ %cmp26, %land.rhs ]
  br i1 %56, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %57 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)** %copy_rop, align 8, !tbaa !1
  %58 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %59 = load i8*, i8** %p, align 8, !tbaa !1
  %60 = load i32, i32* %d, align 4, !tbaa !5
  %61 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %62 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %63 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %64 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %65 = load i32, i32* %x.addr, align 4, !tbaa !5
  %66 = load i32, i32* %y.addr, align 4, !tbaa !5
  %67 = load i32, i32* %i, align 4, !tbaa !5
  %add28 = add nsw i32 %66, %67
  %68 = load i32, i32* %width.addr, align 4, !tbaa !5
  %69 = load i32, i32* %phase_x.addr, align 4, !tbaa !5
  %70 = load i32, i32* %phase_y.addr, align 4, !tbaa !5
  %71 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call29 = call i32 %57(%struct.gx_device_s* %58, i8* %59, i32 %60, i32 %61, i64 0, i64* %62, %struct.gx_strip_bitmap_s* %63, i64* %64, i32 %65, i32 %add28, i32 %68, i32 1, i32 %69, i32 %70, i32 %71) #3
  store i32 %call29, i32* %code, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %72 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %72, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  %73 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %74 = load i32, i32* %step, align 4, !tbaa !5
  %sub = sub i32 %73, %74
  %75 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext30 = zext i32 %sub to i64
  %add.ptr31 = getelementptr inbounds i8, i8* %75, i64 %idx.ext30
  store i8* %add.ptr31, i8** %p, align 8, !tbaa !1
  %76 = load i32, i32* %dstep, align 4, !tbaa !5
  %77 = load i32, i32* %d, align 4, !tbaa !5
  %add32 = add nsw i32 %77, %76
  store i32 %add32, i32* %d, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %land.end
  %78 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %78, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %79 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #1
  %80 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #1
  %81 = bitcast i32* %dstep to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #1
  %82 = bitcast i32* %d to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  %83 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #1
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.20
  %84 = bitcast i32* %step to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #1
  %85 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #1
  %86 = bitcast i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)** %copy_rop to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #1
  %87 = load i32, i32* %retval
  ret i32 %87
}

; Function Attrs: nounwind uwtable
define internal i64 @map_rgb_to_color_via_cmyk(%struct.gx_device_s* %dev, i16* %rgbcv) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %rgbcv.addr = alloca i16*, align 8
  %cmykcv = alloca [4 x i16], align 2
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16* %rgbcv, i16** %rgbcv.addr, align 8, !tbaa !1
  %0 = bitcast [4 x i16]* %cmykcv to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i16*, i16** %rgbcv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 0
  %2 = load i16, i16* %arrayidx, align 2, !tbaa !39
  %conv = zext i16 %2 to i32
  %sub = sub nsw i32 65535, %conv
  %conv1 = trunc i32 %sub to i16
  %arrayidx2 = getelementptr inbounds [4 x i16], [4 x i16]* %cmykcv, i32 0, i64 0
  store i16 %conv1, i16* %arrayidx2, align 2, !tbaa !39
  %3 = load i16*, i16** %rgbcv.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %3, i64 1
  %4 = load i16, i16* %arrayidx3, align 2, !tbaa !39
  %conv4 = zext i16 %4 to i32
  %sub5 = sub nsw i32 65535, %conv4
  %conv6 = trunc i32 %sub5 to i16
  %arrayidx7 = getelementptr inbounds [4 x i16], [4 x i16]* %cmykcv, i32 0, i64 1
  store i16 %conv6, i16* %arrayidx7, align 2, !tbaa !39
  %5 = load i16*, i16** %rgbcv.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i16, i16* %5, i64 2
  %6 = load i16, i16* %arrayidx8, align 2, !tbaa !39
  %conv9 = zext i16 %6 to i32
  %sub10 = sub nsw i32 65535, %conv9
  %conv11 = trunc i32 %sub10 to i16
  %arrayidx12 = getelementptr inbounds [4 x i16], [4 x i16]* %cmykcv, i32 0, i64 2
  store i16 %conv11, i16* %arrayidx12, align 2, !tbaa !39
  %arrayidx13 = getelementptr inbounds [4 x i16], [4 x i16]* %cmykcv, i32 0, i64 0
  %7 = load i16, i16* %arrayidx13, align 2, !tbaa !39
  %conv14 = zext i16 %7 to i32
  %arrayidx15 = getelementptr inbounds [4 x i16], [4 x i16]* %cmykcv, i32 0, i64 1
  %8 = load i16, i16* %arrayidx15, align 2, !tbaa !39
  %conv16 = zext i16 %8 to i32
  %cmp = icmp slt i32 %conv14, %conv16
  br i1 %cmp, label %cond.true, label %cond.false.29

cond.true:                                        ; preds = %entry
  %arrayidx18 = getelementptr inbounds [4 x i16], [4 x i16]* %cmykcv, i32 0, i64 0
  %9 = load i16, i16* %arrayidx18, align 2, !tbaa !39
  %conv19 = zext i16 %9 to i32
  %arrayidx20 = getelementptr inbounds [4 x i16], [4 x i16]* %cmykcv, i32 0, i64 2
  %10 = load i16, i16* %arrayidx20, align 2, !tbaa !39
  %conv21 = zext i16 %10 to i32
  %cmp22 = icmp slt i32 %conv19, %conv21
  br i1 %cmp22, label %cond.true.24, label %cond.false

cond.true.24:                                     ; preds = %cond.true
  %arrayidx25 = getelementptr inbounds [4 x i16], [4 x i16]* %cmykcv, i32 0, i64 0
  %11 = load i16, i16* %arrayidx25, align 2, !tbaa !39
  %conv26 = zext i16 %11 to i32
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %arrayidx27 = getelementptr inbounds [4 x i16], [4 x i16]* %cmykcv, i32 0, i64 2
  %12 = load i16, i16* %arrayidx27, align 2, !tbaa !39
  %conv28 = zext i16 %12 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.24
  %cond = phi i32 [ %conv26, %cond.true.24 ], [ %conv28, %cond.false ]
  br label %cond.end.44

cond.false.29:                                    ; preds = %entry
  %arrayidx30 = getelementptr inbounds [4 x i16], [4 x i16]* %cmykcv, i32 0, i64 1
  %13 = load i16, i16* %arrayidx30, align 2, !tbaa !39
  %conv31 = zext i16 %13 to i32
  %arrayidx32 = getelementptr inbounds [4 x i16], [4 x i16]* %cmykcv, i32 0, i64 2
  %14 = load i16, i16* %arrayidx32, align 2, !tbaa !39
  %conv33 = zext i16 %14 to i32
  %cmp34 = icmp slt i32 %conv31, %conv33
  br i1 %cmp34, label %cond.true.36, label %cond.false.39

cond.true.36:                                     ; preds = %cond.false.29
  %arrayidx37 = getelementptr inbounds [4 x i16], [4 x i16]* %cmykcv, i32 0, i64 1
  %15 = load i16, i16* %arrayidx37, align 2, !tbaa !39
  %conv38 = zext i16 %15 to i32
  br label %cond.end.42

cond.false.39:                                    ; preds = %cond.false.29
  %arrayidx40 = getelementptr inbounds [4 x i16], [4 x i16]* %cmykcv, i32 0, i64 2
  %16 = load i16, i16* %arrayidx40, align 2, !tbaa !39
  %conv41 = zext i16 %16 to i32
  br label %cond.end.42

cond.end.42:                                      ; preds = %cond.false.39, %cond.true.36
  %cond43 = phi i32 [ %conv38, %cond.true.36 ], [ %conv41, %cond.false.39 ]
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.end.42, %cond.end
  %cond45 = phi i32 [ %cond, %cond.end ], [ %cond43, %cond.end.42 ]
  %conv46 = trunc i32 %cond45 to i16
  %arrayidx47 = getelementptr inbounds [4 x i16], [4 x i16]* %cmykcv, i32 0, i64 3
  store i16 %conv46, i16* %arrayidx47, align 2, !tbaa !39
  %arrayidx48 = getelementptr inbounds [4 x i16], [4 x i16]* %cmykcv, i32 0, i64 3
  %17 = load i16, i16* %arrayidx48, align 2, !tbaa !39
  %conv49 = zext i16 %17 to i32
  %arrayidx50 = getelementptr inbounds [4 x i16], [4 x i16]* %cmykcv, i32 0, i64 0
  %18 = load i16, i16* %arrayidx50, align 2, !tbaa !39
  %conv51 = zext i16 %18 to i32
  %sub52 = sub nsw i32 %conv51, %conv49
  %conv53 = trunc i32 %sub52 to i16
  store i16 %conv53, i16* %arrayidx50, align 2, !tbaa !39
  %arrayidx54 = getelementptr inbounds [4 x i16], [4 x i16]* %cmykcv, i32 0, i64 3
  %19 = load i16, i16* %arrayidx54, align 2, !tbaa !39
  %conv55 = zext i16 %19 to i32
  %arrayidx56 = getelementptr inbounds [4 x i16], [4 x i16]* %cmykcv, i32 0, i64 1
  %20 = load i16, i16* %arrayidx56, align 2, !tbaa !39
  %conv57 = zext i16 %20 to i32
  %sub58 = sub nsw i32 %conv57, %conv55
  %conv59 = trunc i32 %sub58 to i16
  store i16 %conv59, i16* %arrayidx56, align 2, !tbaa !39
  %arrayidx60 = getelementptr inbounds [4 x i16], [4 x i16]* %cmykcv, i32 0, i64 3
  %21 = load i16, i16* %arrayidx60, align 2, !tbaa !39
  %conv61 = zext i16 %21 to i32
  %arrayidx62 = getelementptr inbounds [4 x i16], [4 x i16]* %cmykcv, i32 0, i64 2
  %22 = load i16, i16* %arrayidx62, align 2, !tbaa !39
  %conv63 = zext i16 %22 to i32
  %sub64 = sub nsw i32 %conv63, %conv61
  %conv65 = trunc i32 %sub64 to i16
  store i16 %conv65, i16* %arrayidx62, align 2, !tbaa !39
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %23, i32 0, i32 42
  %map_cmyk_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 15
  %24 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %map_cmyk_color, align 8, !tbaa !93
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [4 x i16], [4 x i16]* %cmykcv, i32 0, i32 0
  %call = call i64 %24(%struct.gx_device_s* %25, i16* %arraydecay) #3
  %26 = bitcast [4 x i16]* %cmykcv to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define internal void @pack_planar_cmyk_1bit_from_standard(%struct.gx_device_memory_s* %dev, i32 %y, i32 %destx, i8* %src, i32 %width, i32 %depth, i32 %src_depth) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_memory_s*, align 8
  %y.addr = alloca i32, align 4
  %destx.addr = alloca i32, align 4
  %src.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %src_depth.addr = alloca i32, align 4
  %dp = alloca [64 x i8*], align 16
  %shift = alloca i32, align 4
  %buf = alloca [64 x i8], align 16
  %sp = alloca i8*, align 8
  %x = alloca i32, align 4
  %plane = alloca i32, align 4
  %dest = alloca i8*, align 8
  %vr = alloca i8, align 1
  %vg = alloca i8, align 1
  %vb = alloca i8, align 1
  store %struct.gx_device_memory_s* %dev, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %destx, i32* %destx.addr, align 4, !tbaa !5
  store i8* %src, i8** %src.addr, align 8, !tbaa !1
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !5
  store i32 %src_depth, i32* %src_depth.addr, align 4, !tbaa !5
  %0 = bitcast [64 x i8*]* %dp to i8*
  call void @llvm.lifetime.start(i64 512, i8* %0) #1
  %1 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i32, i32* %destx.addr, align 4, !tbaa !5
  %and = and i32 %2, 7
  store i32 %and, i32* %shift, align 4, !tbaa !5
  %3 = bitcast [64 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 64, i8* %3) #1
  %4 = bitcast i8** %sp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i8*, i8** %src.addr, align 8, !tbaa !1
  store i8* %5, i8** %sp, align 8, !tbaa !1
  %6 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %plane to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 0, i32* %plane, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %plane, align 4, !tbaa !5
  %cmp = icmp slt i32 %8, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load i32, i32* %y.addr, align 4, !tbaa !5
  %11 = load i32, i32* %plane, align 4, !tbaa !5
  %12 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %12, i32 0, i32 14
  %13 = load i32, i32* %height, align 4, !tbaa !35
  %mul = mul nsw i32 %11, %13
  %add = add nsw i32 %10, %mul
  %idxprom = sext i32 %add to i64
  %14 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %dev.addr, align 8, !tbaa !1
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %14, i32 0, i32 52
  %15 = load i8**, i8*** %line_ptrs, align 8, !tbaa !65
  %arrayidx = getelementptr inbounds i8*, i8** %15, i64 %idxprom
  %16 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  store i8* %16, i8** %dest, align 8, !tbaa !1
  %17 = load i8*, i8** %dest, align 8, !tbaa !1
  %18 = load i32, i32* %destx.addr, align 4, !tbaa !5
  %shr = ashr i32 %18, 3
  %idx.ext = sext i32 %shr to i64
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 %idx.ext
  %19 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom1 = sext i32 %19 to i64
  %arrayidx2 = getelementptr inbounds [64 x i8*], [64 x i8*]* %dp, i32 0, i64 %idxprom1
  store i8* %add.ptr, i8** %arrayidx2, align 8, !tbaa !1
  %20 = load i32, i32* %shift, align 4, !tbaa !5
  %cmp3 = icmp eq i32 %20, 0
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %21 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom4 = sext i32 %21 to i64
  %arrayidx5 = getelementptr inbounds [64 x i8*], [64 x i8*]* %dp, i32 0, i64 %idxprom4
  %22 = load i8*, i8** %arrayidx5, align 8, !tbaa !1
  %23 = load i8, i8* %22, align 1, !tbaa !38
  %conv = zext i8 %23 to i32
  %24 = load i32, i32* %shift, align 4, !tbaa !5
  %shr6 = ashr i32 65280, %24
  %and7 = and i32 %conv, %shr6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %and7, %cond.false ]
  %conv8 = trunc i32 %cond to i8
  %25 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom9 = sext i32 %25 to i64
  %arrayidx10 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i64 %idxprom9
  store i8 %conv8, i8* %arrayidx10, align 1, !tbaa !38
  %26 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %27 = load i32, i32* %plane, align 4, !tbaa !5
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %plane, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load i32, i32* %shift, align 4, !tbaa !5
  %shr11 = ashr i32 128, %28
  store i32 %shr11, i32* %shift, align 4, !tbaa !5
  %29 = load i32, i32* %width.addr, align 4, !tbaa !5
  store i32 %29, i32* %x, align 4, !tbaa !5
  br label %for.cond.12

for.cond.12:                                      ; preds = %if.end.78, %for.end
  %30 = load i32, i32* %x, align 4, !tbaa !5
  %dec = add nsw i32 %30, -1
  store i32 %dec, i32* %x, align 4, !tbaa !5
  %cmp13 = icmp sge i32 %dec, 0
  br i1 %cmp13, label %for.body.15, label %for.end.79

for.body.15:                                      ; preds = %for.cond.12
  call void @llvm.lifetime.start(i64 1, i8* %vr) #1
  call void @llvm.lifetime.start(i64 1, i8* %vg) #1
  call void @llvm.lifetime.start(i64 1, i8* %vb) #1
  %31 = load i8*, i8** %sp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr, i8** %sp, align 8, !tbaa !1
  %32 = load i8, i8* %31, align 1, !tbaa !38
  store i8 %32, i8* %vr, align 1, !tbaa !38
  %33 = load i8*, i8** %sp, align 8, !tbaa !1
  %incdec.ptr16 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr16, i8** %sp, align 8, !tbaa !1
  %34 = load i8, i8* %33, align 1, !tbaa !38
  store i8 %34, i8* %vg, align 1, !tbaa !38
  %35 = load i8*, i8** %sp, align 8, !tbaa !1
  %incdec.ptr17 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr17, i8** %sp, align 8, !tbaa !1
  %36 = load i8, i8* %35, align 1, !tbaa !38
  store i8 %36, i8* %vb, align 1, !tbaa !38
  %37 = load i8, i8* %vr, align 1, !tbaa !38
  %conv18 = zext i8 %37 to i32
  %38 = load i8, i8* %vg, align 1, !tbaa !38
  %conv19 = zext i8 %38 to i32
  %or = or i32 %conv18, %conv19
  %39 = load i8, i8* %vb, align 1, !tbaa !38
  %conv20 = zext i8 %39 to i32
  %or21 = or i32 %or, %conv20
  %cmp22 = icmp eq i32 %or21, 0
  br i1 %cmp22, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.15
  %40 = load i32, i32* %shift, align 4, !tbaa !5
  %arrayidx24 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i64 3
  %41 = load i8, i8* %arrayidx24, align 1, !tbaa !38
  %conv25 = zext i8 %41 to i32
  %add26 = add nsw i32 %conv25, %40
  %conv27 = trunc i32 %add26 to i8
  store i8 %conv27, i8* %arrayidx24, align 1, !tbaa !38
  br label %if.end.57

if.else:                                          ; preds = %for.body.15
  %42 = load i8, i8* %vr, align 1, !tbaa !38
  %conv28 = zext i8 %42 to i32
  %and29 = and i32 %conv28, 128
  %cmp30 = icmp eq i32 %and29, 0
  br i1 %cmp30, label %if.then.32, label %if.end

if.then.32:                                       ; preds = %if.else
  %43 = load i32, i32* %shift, align 4, !tbaa !5
  %arrayidx33 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i64 0
  %44 = load i8, i8* %arrayidx33, align 1, !tbaa !38
  %conv34 = zext i8 %44 to i32
  %add35 = add nsw i32 %conv34, %43
  %conv36 = trunc i32 %add35 to i8
  store i8 %conv36, i8* %arrayidx33, align 1, !tbaa !38
  br label %if.end

if.end:                                           ; preds = %if.then.32, %if.else
  %45 = load i8, i8* %vg, align 1, !tbaa !38
  %conv37 = zext i8 %45 to i32
  %and38 = and i32 %conv37, 128
  %cmp39 = icmp eq i32 %and38, 0
  br i1 %cmp39, label %if.then.41, label %if.end.46

if.then.41:                                       ; preds = %if.end
  %46 = load i32, i32* %shift, align 4, !tbaa !5
  %arrayidx42 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i64 1
  %47 = load i8, i8* %arrayidx42, align 1, !tbaa !38
  %conv43 = zext i8 %47 to i32
  %add44 = add nsw i32 %conv43, %46
  %conv45 = trunc i32 %add44 to i8
  store i8 %conv45, i8* %arrayidx42, align 1, !tbaa !38
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.41, %if.end
  %48 = load i8, i8* %vb, align 1, !tbaa !38
  %conv47 = zext i8 %48 to i32
  %and48 = and i32 %conv47, 128
  %cmp49 = icmp eq i32 %and48, 0
  br i1 %cmp49, label %if.then.51, label %if.end.56

if.then.51:                                       ; preds = %if.end.46
  %49 = load i32, i32* %shift, align 4, !tbaa !5
  %arrayidx52 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i64 2
  %50 = load i8, i8* %arrayidx52, align 1, !tbaa !38
  %conv53 = zext i8 %50 to i32
  %add54 = add nsw i32 %conv53, %49
  %conv55 = trunc i32 %add54 to i8
  store i8 %conv55, i8* %arrayidx52, align 1, !tbaa !38
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.51, %if.end.46
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.then
  %51 = load i32, i32* %shift, align 4, !tbaa !5
  %shr58 = ashr i32 %51, 1
  store i32 %shr58, i32* %shift, align 4, !tbaa !5
  %52 = load i32, i32* %shift, align 4, !tbaa !5
  %cmp59 = icmp eq i32 %52, 0
  br i1 %cmp59, label %if.then.61, label %if.end.78

if.then.61:                                       ; preds = %if.end.57
  %arrayidx62 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i64 0
  %53 = load i8, i8* %arrayidx62, align 1, !tbaa !38
  %arrayidx63 = getelementptr inbounds [64 x i8*], [64 x i8*]* %dp, i32 0, i64 0
  %54 = load i8*, i8** %arrayidx63, align 8, !tbaa !1
  %incdec.ptr64 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %incdec.ptr64, i8** %arrayidx63, align 8, !tbaa !1
  store i8 %53, i8* %54, align 1, !tbaa !38
  %arrayidx65 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i64 0
  store i8 0, i8* %arrayidx65, align 1, !tbaa !38
  %arrayidx66 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i64 1
  %55 = load i8, i8* %arrayidx66, align 1, !tbaa !38
  %arrayidx67 = getelementptr inbounds [64 x i8*], [64 x i8*]* %dp, i32 0, i64 1
  %56 = load i8*, i8** %arrayidx67, align 8, !tbaa !1
  %incdec.ptr68 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %incdec.ptr68, i8** %arrayidx67, align 8, !tbaa !1
  store i8 %55, i8* %56, align 1, !tbaa !38
  %arrayidx69 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i64 1
  store i8 0, i8* %arrayidx69, align 1, !tbaa !38
  %arrayidx70 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i64 2
  %57 = load i8, i8* %arrayidx70, align 1, !tbaa !38
  %arrayidx71 = getelementptr inbounds [64 x i8*], [64 x i8*]* %dp, i32 0, i64 2
  %58 = load i8*, i8** %arrayidx71, align 8, !tbaa !1
  %incdec.ptr72 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %incdec.ptr72, i8** %arrayidx71, align 8, !tbaa !1
  store i8 %57, i8* %58, align 1, !tbaa !38
  %arrayidx73 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i64 2
  store i8 0, i8* %arrayidx73, align 1, !tbaa !38
  %arrayidx74 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i64 3
  %59 = load i8, i8* %arrayidx74, align 1, !tbaa !38
  %arrayidx75 = getelementptr inbounds [64 x i8*], [64 x i8*]* %dp, i32 0, i64 3
  %60 = load i8*, i8** %arrayidx75, align 8, !tbaa !1
  %incdec.ptr76 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %incdec.ptr76, i8** %arrayidx75, align 8, !tbaa !1
  store i8 %59, i8* %60, align 1, !tbaa !38
  %arrayidx77 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i64 3
  store i8 0, i8* %arrayidx77, align 1, !tbaa !38
  store i32 128, i32* %shift, align 4, !tbaa !5
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.61, %if.end.57
  call void @llvm.lifetime.end(i64 1, i8* %vb) #1
  call void @llvm.lifetime.end(i64 1, i8* %vg) #1
  call void @llvm.lifetime.end(i64 1, i8* %vr) #1
  br label %for.cond.12

for.end.79:                                       ; preds = %for.cond.12
  %61 = load i32, i32* %shift, align 4, !tbaa !5
  %cmp80 = icmp ne i32 %61, 128
  br i1 %cmp80, label %if.then.82, label %if.end.116

if.then.82:                                       ; preds = %for.end.79
  %62 = load i32, i32* %shift, align 4, !tbaa !5
  %sub = sub nsw i32 %62, 1
  %63 = load i32, i32* %shift, align 4, !tbaa !5
  %add83 = add nsw i32 %63, %sub
  store i32 %add83, i32* %shift, align 4, !tbaa !5
  %arrayidx84 = getelementptr inbounds [64 x i8*], [64 x i8*]* %dp, i32 0, i64 0
  %64 = load i8*, i8** %arrayidx84, align 8, !tbaa !1
  %65 = load i8, i8* %64, align 1, !tbaa !38
  %conv85 = zext i8 %65 to i32
  %66 = load i32, i32* %shift, align 4, !tbaa !5
  %and86 = and i32 %conv85, %66
  %arrayidx87 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i64 0
  %67 = load i8, i8* %arrayidx87, align 1, !tbaa !38
  %conv88 = zext i8 %67 to i32
  %add89 = add nsw i32 %and86, %conv88
  %conv90 = trunc i32 %add89 to i8
  %arrayidx91 = getelementptr inbounds [64 x i8*], [64 x i8*]* %dp, i32 0, i64 0
  %68 = load i8*, i8** %arrayidx91, align 8, !tbaa !1
  store i8 %conv90, i8* %68, align 1, !tbaa !38
  %arrayidx92 = getelementptr inbounds [64 x i8*], [64 x i8*]* %dp, i32 0, i64 1
  %69 = load i8*, i8** %arrayidx92, align 8, !tbaa !1
  %70 = load i8, i8* %69, align 1, !tbaa !38
  %conv93 = zext i8 %70 to i32
  %71 = load i32, i32* %shift, align 4, !tbaa !5
  %and94 = and i32 %conv93, %71
  %arrayidx95 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i64 1
  %72 = load i8, i8* %arrayidx95, align 1, !tbaa !38
  %conv96 = zext i8 %72 to i32
  %add97 = add nsw i32 %and94, %conv96
  %conv98 = trunc i32 %add97 to i8
  %arrayidx99 = getelementptr inbounds [64 x i8*], [64 x i8*]* %dp, i32 0, i64 1
  %73 = load i8*, i8** %arrayidx99, align 8, !tbaa !1
  store i8 %conv98, i8* %73, align 1, !tbaa !38
  %arrayidx100 = getelementptr inbounds [64 x i8*], [64 x i8*]* %dp, i32 0, i64 2
  %74 = load i8*, i8** %arrayidx100, align 8, !tbaa !1
  %75 = load i8, i8* %74, align 1, !tbaa !38
  %conv101 = zext i8 %75 to i32
  %76 = load i32, i32* %shift, align 4, !tbaa !5
  %and102 = and i32 %conv101, %76
  %arrayidx103 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i64 2
  %77 = load i8, i8* %arrayidx103, align 1, !tbaa !38
  %conv104 = zext i8 %77 to i32
  %add105 = add nsw i32 %and102, %conv104
  %conv106 = trunc i32 %add105 to i8
  %arrayidx107 = getelementptr inbounds [64 x i8*], [64 x i8*]* %dp, i32 0, i64 2
  %78 = load i8*, i8** %arrayidx107, align 8, !tbaa !1
  store i8 %conv106, i8* %78, align 1, !tbaa !38
  %arrayidx108 = getelementptr inbounds [64 x i8*], [64 x i8*]* %dp, i32 0, i64 3
  %79 = load i8*, i8** %arrayidx108, align 8, !tbaa !1
  %80 = load i8, i8* %79, align 1, !tbaa !38
  %conv109 = zext i8 %80 to i32
  %81 = load i32, i32* %shift, align 4, !tbaa !5
  %and110 = and i32 %conv109, %81
  %arrayidx111 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i64 3
  %82 = load i8, i8* %arrayidx111, align 1, !tbaa !38
  %conv112 = zext i8 %82 to i32
  %add113 = add nsw i32 %and110, %conv112
  %conv114 = trunc i32 %add113 to i8
  %arrayidx115 = getelementptr inbounds [64 x i8*], [64 x i8*]* %dp, i32 0, i64 3
  %83 = load i8*, i8** %arrayidx115, align 8, !tbaa !1
  store i8 %conv114, i8* %83, align 1, !tbaa !38
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.82, %for.end.79
  %84 = bitcast i32* %plane to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #1
  %85 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #1
  %86 = bitcast i8** %sp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #1
  %87 = bitcast [64 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 64, i8* %87) #1
  %88 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #1
  %89 = bitcast [64 x i8*]* %dp to i8*
  call void @llvm.lifetime.end(i64 512, i8* %89) #1
  ret void
}

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
!9 = !{!10, !13, i64 108}
!10 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !11, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !12, i64 96, !15, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !8, i64 928, !8, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !8, i64 968, !8, i64 976, !16, i64 984, !6, i64 1052, !6, i64 1056, !17, i64 1064, !2, i64 1104, !3, i64 1112, !19, i64 1120, !20, i64 1144}
!11 = !{!"rc_header_s", !8, i64 0, !2, i64 8, !2, i64 16}
!12 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !13, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !14, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !8, i64 704, !6, i64 712}
!13 = !{!"short", !3, i64 0}
!14 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!15 = !{!"gx_device_cached_colors_s", !8, i64 0, !8, i64 8}
!16 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!17 = !{!"gdev_space_params_s", !8, i64 0, !8, i64 8, !18, i64 16, !6, i64 32, !3, i64 36}
!18 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !8, i64 8}
!19 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!20 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!21 = !{!10, !2, i64 24}
!22 = !{!10, !6, i64 832}
!23 = !{!10, !6, i64 836}
!24 = !{!25, !6, i64 832}
!25 = !{!"gx_device_memory_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !11, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !12, i64 96, !15, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !8, i64 928, !8, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !8, i64 968, !8, i64 976, !16, i64 984, !6, i64 1052, !6, i64 1056, !17, i64 1064, !2, i64 1104, !3, i64 1112, !19, i64 1120, !20, i64 1144, !2, i64 1728, !6, i64 1736, !2, i64 1744, !2, i64 1752, !6, i64 1760, !2, i64 1768, !6, i64 1776, !3, i64 1780, !26, i64 2548, !2, i64 2576, !28, i64 2584, !29, i64 2600, !30, i64 2624, !31, i64 2656, !32, i64 2680, !33, i64 2720, !34, i64 2736, !6, i64 2744, !6, i64 2748, !6, i64 2752, !6, i64 2756, !6, i64 2760, !8, i64 2768, !2, i64 2776, !6, i64 2784, !6, i64 2788}
!26 = !{!"gs_matrix_s", !27, i64 0, !27, i64 4, !27, i64 8, !27, i64 12, !27, i64 16, !27, i64 20}
!27 = !{!"float", !3, i64 0}
!28 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!29 = !{!"_c24", !8, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!30 = !{!"_c40", !8, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24}
!31 = !{!"_c48", !8, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!32 = !{!"_c56", !8, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!33 = !{!"_c64", !8, i64 0, !6, i64 8, !6, i64 12}
!34 = !{!"gs_log2_scale_point_s", !6, i64 0, !6, i64 4}
!35 = !{!25, !6, i64 836}
!36 = !{!25, !2, i64 1752}
!37 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !38, i64 12, i64 2, !39, i64 14, i64 1, !38, i64 16, i64 4, !5, i64 20, i64 4, !5, i64 24, i64 4, !5, i64 28, i64 4, !5, i64 32, i64 4, !5, i64 36, i64 4, !5, i64 40, i64 4, !38, i64 44, i64 64, !38, i64 108, i64 64, !38, i64 176, i64 512, !38, i64 688, i64 8, !1, i64 696, i64 4, !38, i64 704, i64 8, !7, i64 712, i64 4, !5}
!38 = !{!3, !3, i64 0}
!39 = !{!13, !13, i64 0}
!40 = !{!10, !6, i64 848}
!41 = !{!10, !6, i64 100}
!42 = !{!43, !6, i64 4}
!43 = !{!"gx_render_plane_s", !6, i64 0, !6, i64 4, !6, i64 8}
!44 = !{!43, !6, i64 0}
!45 = !{!43, !6, i64 8}
!46 = !{!25, !2, i64 1144}
!47 = !{!25, !6, i64 84}
!48 = !{!49, !2, i64 64}
!49 = !{!"gs_memory_s", !2, i64 0, !50, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!50 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!51 = !{!52, !6, i64 0}
!52 = !{!"gs_int_rect_s", !53, i64 0, !53, i64 8}
!53 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!54 = !{!52, !6, i64 8}
!55 = !{!52, !6, i64 4}
!56 = !{!52, !6, i64 12}
!57 = !{!58, !8, i64 0}
!58 = !{!"gs_get_bits_params_s", !8, i64 0, !3, i64 8, !6, i64 520, !6, i64 524, !6, i64 528}
!59 = !{!58, !6, i64 520}
!60 = !{!10, !2, i64 1448}
!61 = !{!25, !2, i64 1224}
!62 = !{!25, !2, i64 1424}
!63 = !{!25, !2, i64 1696}
!64 = !{!10, !2, i64 1672}
!65 = !{!25, !2, i64 2576}
!66 = !{!10, !2, i64 1224}
!67 = !{!49, !2, i64 24}
!68 = !{!10, !3, i64 110}
!69 = !{!70, !6, i64 40}
!70 = !{!"gx_strip_bitmap_s", !2, i64 0, !6, i64 8, !53, i64 12, !8, i64 24, !13, i64 32, !13, i64 34, !13, i64 36, !13, i64 38, !6, i64 40}
!71 = !{!25, !6, i64 848}
!72 = !{!25, !6, i64 100}
!73 = !{!10, !2, i64 1664}
!74 = !{!70, !6, i64 16}
!75 = !{!25, !2, i64 1744}
!76 = !{!70, !13, i64 32}
!77 = !{i64 0, i64 8, !1, i64 8, i64 4, !5, i64 12, i64 4, !5, i64 16, i64 4, !5, i64 24, i64 8, !7, i64 32, i64 2, !39, i64 34, i64 2, !39, i64 36, i64 2, !39, i64 38, i64 2, !39, i64 40, i64 4, !5}
!78 = !{!70, !2, i64 0}
!79 = !{!70, !6, i64 8}
!80 = !{!70, !6, i64 12}
!81 = !{!70, !8, i64 24}
!82 = !{!70, !13, i64 34}
!83 = !{!25, !6, i64 1736}
!84 = !{!58, !6, i64 528}
!85 = !{!25, !2, i64 1176}
!86 = !{!25, !2, i64 1184}
!87 = !{!25, !6, i64 2784}
!88 = !{!10, !2, i64 1192}
!89 = !{i64 0, i64 8, !1, i64 8, i64 4, !5, i64 12, i64 4, !5, i64 16, i64 4, !5, i64 24, i64 8, !7, i64 32, i64 2, !39, i64 34, i64 2, !39}
!90 = !{!70, !13, i64 38}
!91 = !{!70, !13, i64 36}
!92 = !{!10, !2, i64 1424}
!93 = !{!10, !2, i64 1264}
