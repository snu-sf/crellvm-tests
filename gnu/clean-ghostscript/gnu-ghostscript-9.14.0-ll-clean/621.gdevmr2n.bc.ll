; ModuleID = './gdevmr2n.bc'
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

; Function Attrs: nounwind uwtable
define i32 @mem_gray_strip_copy_rop(%struct.gx_device_s* %dev, i8* %sdata, i32 %sourcex, i32 %sraster, i64 %id, i64* %scolors, %struct.gx_strip_bitmap_s* %textures, i64* %tcolors, i32 %x, i32 %y, i32 %width, i32 %height, i32 %phase_x, i32 %phase_y, i32 %lop) #0 {
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
  %scolors2 = alloca [2 x i64], align 16
  %real_scolors = alloca i64*, align 8
  %tcolors2 = alloca [2 x i64], align 16
  %real_tcolors = alloca i64*, align 8
  %texture2 = alloca %struct.gx_strip_bitmap_s, align 8
  %real_texture = alloca %struct.gx_strip_bitmap_s*, align 8
  %tdata = alloca i64, align 8
  %depth = alloca i32, align 4
  %log2_depth = alloca i32, align 4
  %max_pixel = alloca i64, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %fill_rectangle = alloca i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, align 8
  %copy_mono = alloca i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, align 8
  %strip_tile_rectangle = alloca i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, align 8
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
  %0 = bitcast [2 x i64]* %scolors2 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = bitcast i64** %real_scolors to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  store i64* %2, i64** %real_scolors, align 8, !tbaa !1
  %3 = bitcast [2 x i64]* %tcolors2 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = bitcast i64** %real_tcolors to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  store i64* %5, i64** %real_tcolors, align 8, !tbaa !1
  %6 = bitcast %struct.gx_strip_bitmap_s* %texture2 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %6) #1
  %7 = bitcast %struct.gx_strip_bitmap_s** %real_texture to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  store %struct.gx_strip_bitmap_s* %8, %struct.gx_strip_bitmap_s** %real_texture, align 8, !tbaa !1
  %9 = bitcast i64* %tdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 11
  %depth1 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %12 = load i16, i16* %depth1, align 2, !tbaa !9
  %conv = zext i16 %12 to i32
  store i32 %conv, i32* %depth, align 4, !tbaa !5
  %13 = bitcast i32* %log2_depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load i32, i32* %depth, align 4, !tbaa !5
  %shr = ashr i32 %14, 1
  store i32 %shr, i32* %log2_depth, align 4, !tbaa !5
  %15 = bitcast i64* %max_pixel to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load i32, i32* %depth, align 4, !tbaa !5
  %shl = shl i32 1, %16
  %sub = sub nsw i32 %shl, 1
  %conv2 = sext i32 %sub to i64
  store i64 %conv2, i64* %max_pixel, align 8, !tbaa !7
  %17 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info3, i32 0, i32 1
  %19 = load i32, i32* %num_components, align 4, !tbaa !21
  %cmp = icmp sgt i32 %19, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info5 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 11
  %gray_index = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info5, i32 0, i32 4
  %21 = load i8, i8* %gray_index, align 1, !tbaa !22
  %conv6 = zext i8 %21 to i32
  %cmp7 = icmp eq i32 %conv6, 255
  br i1 %cmp7, label %if.then, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false
  %22 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %and = and i32 %22, 768
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false.9
  %23 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %tobool11 = icmp ne i64* %23, null
  br i1 %tobool11, label %land.lhs.true, label %lor.lhs.false.21

land.lhs.true:                                    ; preds = %lor.lhs.false.10
  %24 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %24, i64 0
  %25 = load i64, i64* %arrayidx, align 8, !tbaa !7
  %26 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i64, i64* %26, i64 1
  %27 = load i64, i64* %arrayidx12, align 8, !tbaa !7
  %or = or i64 %25, %27
  %cmp13 = icmp ne i64 %or, 0
  br i1 %cmp13, label %land.lhs.true.15, label %lor.lhs.false.21

land.lhs.true.15:                                 ; preds = %land.lhs.true
  %28 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds i64, i64* %28, i64 0
  %29 = load i64, i64* %arrayidx16, align 8, !tbaa !7
  %30 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i64, i64* %30, i64 1
  %31 = load i64, i64* %arrayidx17, align 8, !tbaa !7
  %and18 = and i64 %29, %31
  %32 = load i64, i64* %max_pixel, align 8, !tbaa !7
  %cmp19 = icmp ne i64 %and18, %32
  br i1 %cmp19, label %if.then, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %land.lhs.true.15, %land.lhs.true, %lor.lhs.false.10
  %33 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %tobool22 = icmp ne i64* %33, null
  br i1 %tobool22, label %land.lhs.true.23, label %if.end

land.lhs.true.23:                                 ; preds = %lor.lhs.false.21
  %34 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds i64, i64* %34, i64 0
  %35 = load i64, i64* %arrayidx24, align 8, !tbaa !7
  %36 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds i64, i64* %36, i64 1
  %37 = load i64, i64* %arrayidx25, align 8, !tbaa !7
  %cmp26 = icmp ne i64 %35, %37
  br i1 %cmp26, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.23, %land.lhs.true.15, %lor.lhs.false.9, %lor.lhs.false, %entry
  %38 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %39 = load i8*, i8** %sdata.addr, align 8, !tbaa !1
  %40 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %41 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %42 = load i64, i64* %id.addr, align 8, !tbaa !7
  %43 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %44 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %45 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %46 = load i32, i32* %x.addr, align 4, !tbaa !5
  %47 = load i32, i32* %y.addr, align 4, !tbaa !5
  %48 = load i32, i32* %width.addr, align 4, !tbaa !5
  %49 = load i32, i32* %height.addr, align 4, !tbaa !5
  %50 = load i32, i32* %phase_x.addr, align 4, !tbaa !5
  %51 = load i32, i32* %phase_y.addr, align 4, !tbaa !5
  %52 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call = call i32 @mem_default_strip_copy_rop(%struct.gx_device_s* %38, i8* %39, i32 %40, i32 %41, i64 %42, i64* %43, %struct.gx_strip_bitmap_s* %44, i64* %45, i32 %46, i32 %47, i32 %48, i32 %49, i32 %50, i32 %51, i32 %52) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.23, %lor.lhs.false.21
  %53 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %tobool28 = icmp ne i64* %53, null
  br i1 %tobool28, label %if.then.29, label %if.end.34

if.then.29:                                       ; preds = %if.end
  %54 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds i64, i64* %54, i64 0
  %55 = load i64, i64* %arrayidx30, align 8, !tbaa !7
  %and31 = and i64 %55, 1
  %arrayidx32 = getelementptr inbounds [2 x i64], [2 x i64]* %scolors2, i32 0, i64 1
  store i64 %and31, i64* %arrayidx32, align 8, !tbaa !7
  %arrayidx33 = getelementptr inbounds [2 x i64], [2 x i64]* %scolors2, i32 0, i64 0
  store i64 %and31, i64* %arrayidx33, align 8, !tbaa !7
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %scolors2, i32 0, i32 0
  store i64* %arraydecay, i64** %real_scolors, align 8, !tbaa !1
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.29, %if.end
  %56 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %tobool35 = icmp ne %struct.gx_strip_bitmap_s* %56, null
  br i1 %tobool35, label %if.then.36, label %if.end.48

if.then.36:                                       ; preds = %if.end.34
  %57 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %58 = bitcast %struct.gx_strip_bitmap_s* %texture2 to i8*
  %59 = bitcast %struct.gx_strip_bitmap_s* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* %59, i64 48, i32 8, i1 false), !tbaa.struct !23
  %60 = load i32, i32* %log2_depth, align 4, !tbaa !5
  %size = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %texture2, i32 0, i32 2
  %x37 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size, i32 0, i32 0
  %61 = load i32, i32* %x37, align 4, !tbaa !25
  %shl38 = shl i32 %61, %60
  store i32 %shl38, i32* %x37, align 4, !tbaa !25
  %62 = load i32, i32* %log2_depth, align 4, !tbaa !5
  %rep_width = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %texture2, i32 0, i32 4
  %63 = load i16, i16* %rep_width, align 2, !tbaa !28
  %conv39 = zext i16 %63 to i32
  %shl40 = shl i32 %conv39, %62
  %conv41 = trunc i32 %shl40 to i16
  store i16 %conv41, i16* %rep_width, align 2, !tbaa !28
  %64 = load i32, i32* %log2_depth, align 4, !tbaa !5
  %shift = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %texture2, i32 0, i32 7
  %65 = load i16, i16* %shift, align 2, !tbaa !29
  %conv42 = zext i16 %65 to i32
  %shl43 = shl i32 %conv42, %64
  %conv44 = trunc i32 %shl43 to i16
  store i16 %conv44, i16* %shift, align 2, !tbaa !29
  %66 = load i32, i32* %log2_depth, align 4, !tbaa !5
  %rep_shift = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %texture2, i32 0, i32 6
  %67 = load i16, i16* %rep_shift, align 2, !tbaa !30
  %conv45 = zext i16 %67 to i32
  %shl46 = shl i32 %conv45, %66
  %conv47 = trunc i32 %shl46 to i16
  store i16 %conv47, i16* %rep_shift, align 2, !tbaa !30
  %num_planes = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %texture2, i32 0, i32 8
  store i32 1, i32* %num_planes, align 4, !tbaa !31
  store %struct.gx_strip_bitmap_s* %texture2, %struct.gx_strip_bitmap_s** %real_texture, align 8, !tbaa !1
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.36, %if.end.34
  %68 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %tobool49 = icmp ne i64* %68, null
  br i1 %tobool49, label %if.then.50, label %if.end.81

if.then.50:                                       ; preds = %if.end.48
  %69 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %arrayidx51 = getelementptr inbounds i64, i64* %69, i64 0
  %70 = load i64, i64* %arrayidx51, align 8, !tbaa !7
  %cmp52 = icmp ne i64 %70, 0
  br i1 %cmp52, label %land.lhs.true.54, label %if.else

land.lhs.true.54:                                 ; preds = %if.then.50
  %71 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %arrayidx55 = getelementptr inbounds i64, i64* %71, i64 0
  %72 = load i64, i64* %arrayidx55, align 8, !tbaa !7
  %73 = load i64, i64* %max_pixel, align 8, !tbaa !7
  %cmp56 = icmp ne i64 %72, %73
  br i1 %cmp56, label %if.then.58, label %if.else

if.then.58:                                       ; preds = %land.lhs.true.54
  store i64* null, i64** %real_tcolors, align 8, !tbaa !1
  %74 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %arrayidx59 = getelementptr inbounds i64, i64* %74, i64 0
  %75 = load i64, i64* %arrayidx59, align 8, !tbaa !7
  %conv60 = trunc i64 %75 to i8
  %conv61 = zext i8 %conv60 to i32
  %76 = load i32, i32* %depth, align 4, !tbaa !5
  %sub62 = sub nsw i32 8, %76
  %shl63 = shl i32 %conv61, %sub62
  %conv64 = trunc i32 %shl63 to i8
  %77 = bitcast i64* %tdata to i8*
  store i8 %conv64, i8* %77, align 1, !tbaa !32
  %78 = bitcast i64* %tdata to i8*
  %data = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %texture2, i32 0, i32 0
  store i8* %78, i8** %data, align 8, !tbaa !33
  %raster = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %texture2, i32 0, i32 1
  store i32 8, i32* %raster, align 4, !tbaa !34
  %79 = load i32, i32* %depth, align 4, !tbaa !5
  %conv65 = trunc i32 %79 to i16
  %rep_width66 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %texture2, i32 0, i32 4
  store i16 %conv65, i16* %rep_width66, align 2, !tbaa !28
  %conv67 = zext i16 %conv65 to i32
  %size68 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %texture2, i32 0, i32 2
  %x69 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size68, i32 0, i32 0
  store i32 %conv67, i32* %x69, align 4, !tbaa !25
  %rep_height = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %texture2, i32 0, i32 5
  store i16 1, i16* %rep_height, align 2, !tbaa !35
  %size70 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %texture2, i32 0, i32 2
  %y71 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size70, i32 0, i32 1
  store i32 1, i32* %y71, align 4, !tbaa !36
  %id72 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %texture2, i32 0, i32 3
  store i64 0, i64* %id72, align 8, !tbaa !37
  %rep_shift73 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %texture2, i32 0, i32 6
  store i16 0, i16* %rep_shift73, align 2, !tbaa !30
  %shift74 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %texture2, i32 0, i32 7
  store i16 0, i16* %shift74, align 2, !tbaa !29
  store %struct.gx_strip_bitmap_s* %texture2, %struct.gx_strip_bitmap_s** %real_texture, align 8, !tbaa !1
  br label %if.end.80

if.else:                                          ; preds = %land.lhs.true.54, %if.then.50
  %80 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %arrayidx75 = getelementptr inbounds i64, i64* %80, i64 0
  %81 = load i64, i64* %arrayidx75, align 8, !tbaa !7
  %and76 = and i64 %81, 1
  %arrayidx77 = getelementptr inbounds [2 x i64], [2 x i64]* %tcolors2, i32 0, i64 1
  store i64 %and76, i64* %arrayidx77, align 8, !tbaa !7
  %arrayidx78 = getelementptr inbounds [2 x i64], [2 x i64]* %tcolors2, i32 0, i64 0
  store i64 %and76, i64* %arrayidx78, align 8, !tbaa !7
  %arraydecay79 = getelementptr inbounds [2 x i64], [2 x i64]* %tcolors2, i32 0, i32 0
  store i64* %arraydecay79, i64** %real_tcolors, align 8, !tbaa !1
  br label %if.end.80

if.end.80:                                        ; preds = %if.else, %if.then.58
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.end.48
  %82 = bitcast i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle to i8*
  call void @llvm.lifetime.start(i64 8, i8* %82) #1
  %83 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %83, i32 0, i32 42
  %fill_rectangle82 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 7
  %84 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle82, align 8, !tbaa !38
  store i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* %84, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8, !tbaa !1
  %85 = bitcast i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono to i8*
  call void @llvm.lifetime.start(i64 8, i8* %85) #1
  %86 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs83 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %86, i32 0, i32 42
  %copy_mono84 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs83, i32 0, i32 9
  %87 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono84, align 8, !tbaa !39
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* %87, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono, align 8, !tbaa !1
  %88 = bitcast i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)** %strip_tile_rectangle to i8*
  call void @llvm.lifetime.start(i64 8, i8* %88) #1
  %89 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs85 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %89, i32 0, i32 42
  %strip_tile_rectangle86 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs85, i32 0, i32 34
  %90 = load i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)** %strip_tile_rectangle86, align 8, !tbaa !40
  store i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* %90, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)** %strip_tile_rectangle, align 8, !tbaa !1
  %91 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs87 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %91, i32 0, i32 42
  %fill_rectangle88 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs87, i32 0, i32 7
  store i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @mem_gray_rop_fill_rectangle, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle88, align 8, !tbaa !38
  %92 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs89 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %92, i32 0, i32 42
  %copy_mono90 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs89, i32 0, i32 9
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* @mem_gray_rop_copy_mono, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono90, align 8, !tbaa !39
  %93 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs91 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %93, i32 0, i32 42
  %strip_tile_rectangle92 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs91, i32 0, i32 34
  store i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @mem_gray_rop_strip_tile_rectangle, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)** %strip_tile_rectangle92, align 8, !tbaa !40
  %94 = load i32, i32* %log2_depth, align 4, !tbaa !5
  %95 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width93 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %95, i32 0, i32 13
  %96 = load i32, i32* %width93, align 4, !tbaa !41
  %shl94 = shl i32 %96, %94
  store i32 %shl94, i32* %width93, align 4, !tbaa !41
  %97 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %98 = load i8*, i8** %sdata.addr, align 8, !tbaa !1
  %99 = load i64*, i64** %real_scolors, align 8, !tbaa !1
  %cmp95 = icmp eq i64* %99, null
  br i1 %cmp95, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.81
  %100 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %101 = load i32, i32* %log2_depth, align 4, !tbaa !5
  %shl97 = shl i32 %100, %101
  br label %cond.end

cond.false:                                       ; preds = %if.end.81
  %102 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %shl97, %cond.true ], [ %102, %cond.false ]
  %103 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %104 = load i64, i64* %id.addr, align 8, !tbaa !7
  %105 = load i64*, i64** %real_scolors, align 8, !tbaa !1
  %106 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %real_texture, align 8, !tbaa !1
  %107 = load i64*, i64** %real_tcolors, align 8, !tbaa !1
  %108 = load i32, i32* %x.addr, align 4, !tbaa !5
  %109 = load i32, i32* %log2_depth, align 4, !tbaa !5
  %shl98 = shl i32 %108, %109
  %110 = load i32, i32* %y.addr, align 4, !tbaa !5
  %111 = load i32, i32* %width.addr, align 4, !tbaa !5
  %112 = load i32, i32* %log2_depth, align 4, !tbaa !5
  %shl99 = shl i32 %111, %112
  %113 = load i32, i32* %height.addr, align 4, !tbaa !5
  %114 = load i32, i32* %phase_x.addr, align 4, !tbaa !5
  %115 = load i32, i32* %log2_depth, align 4, !tbaa !5
  %shl100 = shl i32 %114, %115
  %116 = load i32, i32* %phase_y.addr, align 4, !tbaa !5
  %117 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call101 = call i32 @mem_mono_strip_copy_rop(%struct.gx_device_s* %97, i8* %98, i32 %cond, i32 %103, i64 %104, i64* %105, %struct.gx_strip_bitmap_s* %106, i64* %107, i32 %shl98, i32 %110, i32 %shl99, i32 %113, i32 %shl100, i32 %116, i32 %117) #3
  store i32 %call101, i32* %code, align 4, !tbaa !5
  %118 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8, !tbaa !1
  %119 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs102 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %119, i32 0, i32 42
  %fill_rectangle103 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs102, i32 0, i32 7
  store i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* %118, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle103, align 8, !tbaa !38
  %120 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono, align 8, !tbaa !1
  %121 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs104 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %121, i32 0, i32 42
  %copy_mono105 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs104, i32 0, i32 9
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* %120, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono105, align 8, !tbaa !39
  %122 = load i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)** %strip_tile_rectangle, align 8, !tbaa !1
  %123 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs106 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %123, i32 0, i32 42
  %strip_tile_rectangle107 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs106, i32 0, i32 34
  store i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* %122, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)** %strip_tile_rectangle107, align 8, !tbaa !40
  %124 = load i32, i32* %log2_depth, align 4, !tbaa !5
  %125 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width108 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %125, i32 0, i32 13
  %126 = load i32, i32* %width108, align 4, !tbaa !41
  %shr109 = ashr i32 %126, %124
  store i32 %shr109, i32* %width108, align 4, !tbaa !41
  %127 = bitcast i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)** %strip_tile_rectangle to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #1
  %128 = bitcast i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono to i8*
  call void @llvm.lifetime.end(i64 8, i8* %128) #1
  %129 = bitcast i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle to i8*
  call void @llvm.lifetime.end(i64 8, i8* %129) #1
  %130 = load i32, i32* %code, align 4, !tbaa !5
  %cmp110 = icmp slt i32 %130, 0
  br i1 %cmp110, label %if.then.112, label %if.end.114

if.then.112:                                      ; preds = %cond.end
  %131 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %132 = load i8*, i8** %sdata.addr, align 8, !tbaa !1
  %133 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %134 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %135 = load i64, i64* %id.addr, align 8, !tbaa !7
  %136 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %137 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %138 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %139 = load i32, i32* %x.addr, align 4, !tbaa !5
  %140 = load i32, i32* %y.addr, align 4, !tbaa !5
  %141 = load i32, i32* %width.addr, align 4, !tbaa !5
  %142 = load i32, i32* %height.addr, align 4, !tbaa !5
  %143 = load i32, i32* %phase_x.addr, align 4, !tbaa !5
  %144 = load i32, i32* %phase_y.addr, align 4, !tbaa !5
  %145 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call113 = call i32 @mem_default_strip_copy_rop(%struct.gx_device_s* %131, i8* %132, i32 %133, i32 %134, i64 %135, i64* %136, %struct.gx_strip_bitmap_s* %137, i64* %138, i32 %139, i32 %140, i32 %141, i32 %142, i32 %143, i32 %144, i32 %145) #3
  store i32 %call113, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.114:                                       ; preds = %cond.end
  %146 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %146, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.114, %if.then.112, %if.then
  %147 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %147) #1
  %148 = bitcast i64* %max_pixel to i8*
  call void @llvm.lifetime.end(i64 8, i8* %148) #1
  %149 = bitcast i32* %log2_depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %149) #1
  %150 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %150) #1
  %151 = bitcast i64* %tdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %151) #1
  %152 = bitcast %struct.gx_strip_bitmap_s** %real_texture to i8*
  call void @llvm.lifetime.end(i64 8, i8* %152) #1
  %153 = bitcast %struct.gx_strip_bitmap_s* %texture2 to i8*
  call void @llvm.lifetime.end(i64 48, i8* %153) #1
  %154 = bitcast i64** %real_tcolors to i8*
  call void @llvm.lifetime.end(i64 8, i8* %154) #1
  %155 = bitcast [2 x i64]* %tcolors2 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %155) #1
  %156 = bitcast i64** %real_scolors to i8*
  call void @llvm.lifetime.end(i64 8, i8* %156) #1
  %157 = bitcast [2 x i64]* %scolors2 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %157) #1
  %158 = load i32, i32* %retval
  ret i32 %158
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @mem_default_strip_copy_rop(%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal i32 @mem_gray_rop_fill_rectangle(%struct.gx_device_s* %dev, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store i64 %color, i64* %color.addr, align 8, !tbaa !7
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define internal i32 @mem_gray_rop_copy_mono(%struct.gx_device_s* %dev, i8* %data, i32 %dx, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, i64 %zero, i64 %one) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %data.addr = alloca i8*, align 8
  %dx.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %zero.addr = alloca i64, align 8
  %one.addr = alloca i64, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %dx, i32* %dx.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !7
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store i64 %zero, i64* %zero.addr, align 8, !tbaa !7
  store i64 %one, i64* %one.addr, align 8, !tbaa !7
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define internal i32 @mem_gray_rop_strip_tile_rectangle(%struct.gx_device_s* %dev, %struct.gx_strip_bitmap_s* %tiles, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color0, i64 %color1, i32 %px, i32 %py) #0 {
entry:
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
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_strip_bitmap_s* %tiles, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store i64 %color0, i64* %color0.addr, align 8, !tbaa !7
  store i64 %color1, i64* %color1.addr, align 8, !tbaa !7
  store i32 %px, i32* %px.addr, align 4, !tbaa !5
  store i32 %py, i32* %py.addr, align 4, !tbaa !5
  ret i32 -1
}

declare i32 @mem_mono_strip_copy_rop(%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32) #2

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
!21 = !{!10, !6, i64 100}
!22 = !{!10, !3, i64 110}
!23 = !{i64 0, i64 8, !1, i64 8, i64 4, !5, i64 12, i64 4, !5, i64 16, i64 4, !5, i64 24, i64 8, !7, i64 32, i64 2, !24, i64 34, i64 2, !24, i64 36, i64 2, !24, i64 38, i64 2, !24, i64 40, i64 4, !5}
!24 = !{!13, !13, i64 0}
!25 = !{!26, !6, i64 12}
!26 = !{!"gx_strip_bitmap_s", !2, i64 0, !6, i64 8, !27, i64 12, !8, i64 24, !13, i64 32, !13, i64 34, !13, i64 36, !13, i64 38, !6, i64 40}
!27 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!28 = !{!26, !13, i64 32}
!29 = !{!26, !13, i64 38}
!30 = !{!26, !13, i64 36}
!31 = !{!26, !6, i64 40}
!32 = !{!3, !3, i64 0}
!33 = !{!26, !2, i64 0}
!34 = !{!26, !6, i64 8}
!35 = !{!26, !13, i64 34}
!36 = !{!26, !6, i64 16}
!37 = !{!26, !8, i64 24}
!38 = !{!10, !2, i64 1200}
!39 = !{!10, !2, i64 1216}
!40 = !{!10, !2, i64 1416}
!41 = !{!10, !6, i64 832}
