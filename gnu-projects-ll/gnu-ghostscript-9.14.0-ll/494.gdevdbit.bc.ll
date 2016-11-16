; ModuleID = './gdevdbit.bc'
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
%struct.gs_pattern_instance_s = type opaque
%struct.gs_paint_color_s = type { [64 x float] }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type opaque
%struct.gx_device_color_saved_s = type { %struct.gx_device_color_type_s*, %union._svc, %struct.gs_int_point_s }
%union._svc = type { %struct._svbin, [304 x i8] }
%struct._svbin = type { [2 x i64], i32, i32 }
%struct.gs_imager_state_s = type opaque
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
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
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, {}*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gx_xfont_procs_s = type opaque
%struct.gx_tile_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16 }
%struct.gx_path_s = type opaque
%struct.gx_fill_params_s = type opaque
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
%struct.gx_rop_source_s = type { i8*, i32, i32, i64, [2 x i64], i32, i32 }
%struct._devn = type { [64 x i16] }
%struct.gx_device_clip_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, %struct.gx_clip_list_s, %struct.gx_clip_rect_s*, %struct.gs_int_point_s, %struct.gs_fixed_rect_s, i32 }
%struct.gx_clip_list_s = type { %struct.gx_clip_rect_s, %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, i32, i32, i32 }
%struct.gx_clip_rect_s = type { %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, i32, i32, i32, i32, i8 }

@__func__.gx_default_copy_mono = private unnamed_addr constant [21 x i8] c"gx_default_copy_mono\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"./base/gdevdbit.c\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@gx_dc_type_data_pure = external constant %struct.gx_device_color_type_s, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"copy_alpha_hl_color(gb_buff)\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"copy_alpha_hl_color\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"copy_alpha(lin)\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"copy_alpha(lout)\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gx_default_tile_rectangle(%struct.gx_device_s* %dev, %struct.gx_tile_bitmap_s* %tile, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color0, i64 %color1, i32 %px, i32 %py) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %tile.addr = alloca %struct.gx_tile_bitmap_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %color0.addr = alloca i64, align 8
  %color1.addr = alloca i64, align 8
  %px.addr = alloca i32, align 4
  %py.addr = alloca i32, align 4
  %tiles = alloca %struct.gx_strip_bitmap_s, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_tile_bitmap_s* %tile, %struct.gx_tile_bitmap_s** %tile.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store i64 %color0, i64* %color0.addr, align 8, !tbaa !7
  store i64 %color1, i64* %color1.addr, align 8, !tbaa !7
  store i32 %px, i32* %px.addr, align 4, !tbaa !5
  store i32 %py, i32* %py.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_strip_bitmap_s* %tiles to i8*
  call void @llvm.lifetime.start(i64 48, i8* %0) #1
  %1 = bitcast %struct.gx_strip_bitmap_s* %tiles to %struct.gx_tile_bitmap_s*
  %2 = load %struct.gx_tile_bitmap_s*, %struct.gx_tile_bitmap_s** %tile.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gx_tile_bitmap_s* %1 to i8*
  %4 = bitcast %struct.gx_tile_bitmap_s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 40, i32 8, i1 false), !tbaa.struct !9
  %rep_shift = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles, i32 0, i32 6
  store i16 0, i16* %rep_shift, align 2, !tbaa !12
  %shift = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles, i32 0, i32 7
  store i16 0, i16* %shift, align 2, !tbaa !15
  %num_planes = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles, i32 0, i32 8
  store i32 1, i32* %num_planes, align 4, !tbaa !16
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 42
  %strip_tile_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 34
  %6 = load i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)** %strip_tile_rectangle, align 8, !tbaa !17
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %8 = load i32, i32* %x.addr, align 4, !tbaa !5
  %9 = load i32, i32* %y.addr, align 4, !tbaa !5
  %10 = load i32, i32* %w.addr, align 4, !tbaa !5
  %11 = load i32, i32* %h.addr, align 4, !tbaa !5
  %12 = load i64, i64* %color0.addr, align 8, !tbaa !7
  %13 = load i64, i64* %color1.addr, align 8, !tbaa !7
  %14 = load i32, i32* %px.addr, align 4, !tbaa !5
  %15 = load i32, i32* %py.addr, align 4, !tbaa !5
  %call = call i32 %6(%struct.gx_device_s* %7, %struct.gx_strip_bitmap_s* %tiles, i32 %8, i32 %9, i32 %10, i32 %11, i64 %12, i64 %13, i32 %14, i32 %15) #3
  %16 = bitcast %struct.gx_strip_bitmap_s* %tiles to i8*
  call void @llvm.lifetime.end(i64 48, i8* %16) #1
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @gx_default_copy_mono(%struct.gx_device_s* %dev, i8* %data, i32 %dx, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, i64 %zero, i64 %one) #0 {
entry:
  %retval = alloca i32, align 4
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
  %invert = alloca i32, align 4
  %color = alloca i64, align 8
  %devc = alloca %struct.gx_device_color_s, align 8
  %cleanup.dest.slot = alloca i32
  %code = alloca i32, align 4
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
  %0 = bitcast i32* %invert to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i64* %color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.gx_device_color_s* %devc to i8*
  call void @llvm.lifetime.start(i64 656, i8* %2) #1
  %3 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i8* @gs_errstr(i32 -1) #3
  %call1 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gx_default_copy_mono, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 58, i32 0, i32 -1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* %call) #3
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.56

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.body.2

do.body.2:                                        ; preds = %do.body
  %4 = load i32, i32* %x.addr, align 4, !tbaa !5
  %5 = load i32, i32* %y.addr, align 4, !tbaa !5
  %or = or i32 %4, %5
  %cmp = icmp slt i32 %or, 0
  br i1 %cmp, label %if.then.3, label %if.end.11

if.then.3:                                        ; preds = %do.body.2
  %6 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %6, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.3
  %7 = load i32, i32* %x.addr, align 4, !tbaa !5
  %8 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add = add nsw i32 %8, %7
  store i32 %add, i32* %w.addr, align 4, !tbaa !5
  %9 = load i32, i32* %x.addr, align 4, !tbaa !5
  %10 = load i32, i32* %dx.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %10, %9
  store i32 %sub, i32* %dx.addr, align 4, !tbaa !5
  store i32 0, i32* %x.addr, align 4, !tbaa !5
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.then.3
  %11 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %11, 0
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.6
  %12 = load i32, i32* %y.addr, align 4, !tbaa !5
  %13 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add9 = add nsw i32 %13, %12
  store i32 %add9, i32* %h.addr, align 4, !tbaa !5
  %14 = load i32, i32* %y.addr, align 4, !tbaa !5
  %15 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %14, %15
  %16 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %mul to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 %idx.neg
  store i8* %add.ptr, i8** %data.addr, align 8, !tbaa !1
  store i64 0, i64* %id.addr, align 8, !tbaa !7
  store i32 0, i32* %y.addr, align 4, !tbaa !5
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end.6
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %do.body.2
  %17 = load i32, i32* %w.addr, align 4, !tbaa !5
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 13
  %19 = load i32, i32* %width, align 4, !tbaa !28
  %20 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub12 = sub nsw i32 %19, %20
  %cmp13 = icmp sgt i32 %17, %sub12
  br i1 %cmp13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %if.end.11
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width15 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %21, i32 0, i32 13
  %22 = load i32, i32* %width15, align 4, !tbaa !28
  %23 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub16 = sub nsw i32 %22, %23
  store i32 %sub16, i32* %w.addr, align 4, !tbaa !5
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %if.end.11
  br label %do.cond

do.cond:                                          ; preds = %if.end.17
  br label %do.end

do.end:                                           ; preds = %do.cond
  %24 = load i32, i32* %h.addr, align 4, !tbaa !5
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %25, i32 0, i32 14
  %26 = load i32, i32* %height, align 4, !tbaa !29
  %27 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub18 = sub nsw i32 %26, %27
  %cmp19 = icmp sgt i32 %24, %sub18
  br i1 %cmp19, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %do.end
  %28 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height21 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %28, i32 0, i32 14
  %29 = load i32, i32* %height21, align 4, !tbaa !29
  %30 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub22 = sub nsw i32 %29, %30
  store i32 %sub22, i32* %h.addr, align 4, !tbaa !5
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %do.end
  %31 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp24 = icmp sle i32 %31, 0
  br i1 %cmp24, label %if.then.26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.23
  %32 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp25 = icmp sle i32 %32, 0
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %lor.lhs.false, %if.end.23
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.56

if.end.27:                                        ; preds = %lor.lhs.false
  br label %do.cond.28

do.cond.28:                                       ; preds = %if.end.27
  br label %do.end.29

do.end.29:                                        ; preds = %do.cond.28
  %33 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %tobool30 = icmp ne i8* %33, null
  br i1 %tobool30, label %if.end.34, label %if.then.31

if.then.31:                                       ; preds = %do.end.29
  %call32 = call i8* @gs_errstr(i32 -1) #3
  %call33 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gx_default_copy_mono, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 61, i32 0, i32 -1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* %call32) #3
  store i32 %call33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.56

if.end.34:                                        ; preds = %do.end.29
  %34 = load i64, i64* %one.addr, align 8, !tbaa !7
  %cmp35 = icmp ne i64 %34, -1
  br i1 %cmp35, label %if.then.36, label %if.else

if.then.36:                                       ; preds = %if.end.34
  store i32 0, i32* %invert, align 4, !tbaa !5
  %35 = load i64, i64* %one.addr, align 8, !tbaa !7
  store i64 %35, i64* %color, align 8, !tbaa !7
  %36 = load i64, i64* %zero.addr, align 8, !tbaa !7
  %cmp37 = icmp ne i64 %36, -1
  br i1 %cmp37, label %if.then.38, label %if.end.43

if.then.38:                                       ; preds = %if.then.36
  %37 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %38 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %38, i32 0, i32 42
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 7
  %39 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8, !tbaa !30
  %40 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %41 = load i32, i32* %x.addr, align 4, !tbaa !5
  %42 = load i32, i32* %y.addr, align 4, !tbaa !5
  %43 = load i32, i32* %w.addr, align 4, !tbaa !5
  %44 = load i32, i32* %h.addr, align 4, !tbaa !5
  %45 = load i64, i64* %zero.addr, align 8, !tbaa !7
  %call39 = call i32 %39(%struct.gx_device_s* %40, i32 %41, i32 %42, i32 %43, i32 %44, i64 %45) #3
  store i32 %call39, i32* %code, align 4, !tbaa !5
  %46 = load i32, i32* %code, align 4, !tbaa !5
  %cmp40 = icmp slt i32 %46, 0
  br i1 %cmp40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.then.38
  %47 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %47, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.42:                                        ; preds = %if.then.38
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.42, %if.then.41
  %48 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.56 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.43

if.end.43:                                        ; preds = %cleanup.cont, %if.then.36
  br label %if.end.44

if.else:                                          ; preds = %if.end.34
  store i32 1, i32* %invert, align 4, !tbaa !5
  %49 = load i64, i64* %zero.addr, align 8, !tbaa !7
  store i64 %49, i64* %color, align 8, !tbaa !7
  br label %if.end.44

if.end.44:                                        ; preds = %if.else, %if.end.43
  %50 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %tobool45 = icmp ne i8* %50, null
  br i1 %tobool45, label %if.end.49, label %if.then.46

if.then.46:                                       ; preds = %if.end.44
  %call47 = call i8* @gs_errstr(i32 -1) #3
  %call48 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gx_default_copy_mono, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 77, i32 0, i32 -1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* %call47) #3
  store i32 %call48, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.56

if.end.49:                                        ; preds = %if.end.44
  %51 = load i64, i64* %color, align 8, !tbaa !7
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  store i64 %51, i64* %pure, align 8, !tbaa !7
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_pure, %struct.gx_device_color_type_s** %type, align 8, !tbaa !31
  %ccolor_valid = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 3
  store i32 0, i32* %ccolor_valid, align 4, !tbaa !37
  %52 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %tobool50 = icmp ne i8* %52, null
  br i1 %tobool50, label %if.end.54, label %if.then.51

if.then.51:                                       ; preds = %if.end.49
  %call52 = call i8* @gs_errstr(i32 -1) #3
  %call53 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gx_default_copy_mono, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 80, i32 0, i32 -1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* %call52) #3
  store i32 %call53, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.56

if.end.54:                                        ; preds = %if.end.49
  %53 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %54 = load i32, i32* %dx.addr, align 4, !tbaa !5
  %55 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %56 = load i64, i64* %id.addr, align 8, !tbaa !7
  %57 = load i32, i32* %x.addr, align 4, !tbaa !5
  %58 = load i32, i32* %y.addr, align 4, !tbaa !5
  %59 = load i32, i32* %w.addr, align 4, !tbaa !5
  %60 = load i32, i32* %h.addr, align 4, !tbaa !5
  %61 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %62 = load i32, i32* %invert, align 4, !tbaa !5
  %call55 = call i32 @gx_dc_default_fill_masked(%struct.gx_device_color_s* %devc, i8* %53, i32 %54, i32 %55, i64 %56, i32 %57, i32 %58, i32 %59, i32 %60, %struct.gx_device_s* %61, i32 240, i32 %62) #3
  store i32 %call55, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.56

cleanup.56:                                       ; preds = %if.end.54, %if.then.51, %if.then.46, %cleanup, %if.then.31, %if.then.26, %if.then
  %63 = bitcast %struct.gx_device_color_s* %devc to i8*
  call void @llvm.lifetime.end(i64 656, i8* %63) #1
  %64 = bitcast i64* %color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = bitcast i32* %invert to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = load i32, i32* %retval
  ret i32 %66
}

declare i32 @gs_throw_imp(i8*, i8*, i32, i32, i32, i8*, ...) #2

declare i8* @gs_errstr(i32) #2

declare i32 @gx_dc_default_fill_masked(%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32) #2

; Function Attrs: nounwind uwtable
define i32 @gx_default_copy_color(%struct.gx_device_s* %dev, i8* %data, i32 %dx, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %data.addr = alloca i8*, align 8
  %dx.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %depth = alloca i32, align 4
  %mask = alloca i8, align 1
  %fill = alloca i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, align 8
  %row = alloca i8*, align 8
  %iy = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %ix = alloca i32, align 4
  %c0 = alloca i64, align 8
  %ptr = alloca i8*, align 8
  %i0 = alloca i32, align 4
  %color = alloca i64, align 8
  %dbit = alloca i32, align 4
  %code = alloca i32, align 4
  %code126 = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %dx, i32* %dx.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !7
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  %0 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 11
  %depth1 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %2 = load i16, i16* %depth1, align 2, !tbaa !38
  %conv = zext i16 %2 to i32
  store i32 %conv, i32* %depth, align 4, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %mask) #1
  %3 = bitcast i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i8** %row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %iy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %depth, align 4, !tbaa !5
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 42
  %copy_mono = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 9
  %8 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono, align 8, !tbaa !39
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %10 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %11 = load i32, i32* %dx.addr, align 4, !tbaa !5
  %12 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %13 = load i64, i64* %id.addr, align 8, !tbaa !7
  %14 = load i32, i32* %x.addr, align 4, !tbaa !5
  %15 = load i32, i32* %y.addr, align 4, !tbaa !5
  %16 = load i32, i32* %w.addr, align 4, !tbaa !5
  %17 = load i32, i32* %h.addr, align 4, !tbaa !5
  %call = call i32 %8(%struct.gx_device_s* %9, i8* %10, i32 %11, i32 %12, i64 %13, i32 %14, i32 %15, i32 %16, i32 %17, i64 0, i64 1) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.150

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.body.3

do.body.3:                                        ; preds = %do.body
  %18 = load i32, i32* %x.addr, align 4, !tbaa !5
  %19 = load i32, i32* %y.addr, align 4, !tbaa !5
  %or = or i32 %18, %19
  %cmp4 = icmp slt i32 %or, 0
  br i1 %cmp4, label %if.then.6, label %if.end.16

if.then.6:                                        ; preds = %do.body.3
  %20 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %20, 0
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.then.6
  %21 = load i32, i32* %x.addr, align 4, !tbaa !5
  %22 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add = add nsw i32 %22, %21
  store i32 %add, i32* %w.addr, align 4, !tbaa !5
  %23 = load i32, i32* %x.addr, align 4, !tbaa !5
  %24 = load i32, i32* %dx.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %24, %23
  store i32 %sub, i32* %dx.addr, align 4, !tbaa !5
  store i32 0, i32* %x.addr, align 4, !tbaa !5
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.then.6
  %25 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %25, 0
  br i1 %cmp11, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end.10
  %26 = load i32, i32* %y.addr, align 4, !tbaa !5
  %27 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add14 = add nsw i32 %27, %26
  store i32 %add14, i32* %h.addr, align 4, !tbaa !5
  %28 = load i32, i32* %y.addr, align 4, !tbaa !5
  %29 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %28, %29
  %30 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %mul to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %30, i64 %idx.neg
  store i8* %add.ptr, i8** %data.addr, align 8, !tbaa !1
  store i64 0, i64* %id.addr, align 8, !tbaa !7
  store i32 0, i32* %y.addr, align 4, !tbaa !5
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.end.10
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %do.body.3
  %31 = load i32, i32* %w.addr, align 4, !tbaa !5
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %32, i32 0, i32 13
  %33 = load i32, i32* %width, align 4, !tbaa !28
  %34 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub17 = sub nsw i32 %33, %34
  %cmp18 = icmp sgt i32 %31, %sub17
  br i1 %cmp18, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %if.end.16
  %35 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width21 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %35, i32 0, i32 13
  %36 = load i32, i32* %width21, align 4, !tbaa !28
  %37 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub22 = sub nsw i32 %36, %37
  store i32 %sub22, i32* %w.addr, align 4, !tbaa !5
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %if.end.16
  br label %do.cond

do.cond:                                          ; preds = %if.end.23
  br label %do.end

do.end:                                           ; preds = %do.cond
  %38 = load i32, i32* %h.addr, align 4, !tbaa !5
  %39 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %39, i32 0, i32 14
  %40 = load i32, i32* %height, align 4, !tbaa !29
  %41 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub24 = sub nsw i32 %40, %41
  %cmp25 = icmp sgt i32 %38, %sub24
  br i1 %cmp25, label %if.then.27, label %if.end.30

if.then.27:                                       ; preds = %do.end
  %42 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height28 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %42, i32 0, i32 14
  %43 = load i32, i32* %height28, align 4, !tbaa !29
  %44 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub29 = sub nsw i32 %43, %44
  store i32 %sub29, i32* %h.addr, align 4, !tbaa !5
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.27, %do.end
  %45 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp31 = icmp sle i32 %45, 0
  br i1 %cmp31, label %if.then.35, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.30
  %46 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp33 = icmp sle i32 %46, 0
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %lor.lhs.false, %if.end.30
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.150

if.end.36:                                        ; preds = %lor.lhs.false
  br label %do.cond.37

do.cond.37:                                       ; preds = %if.end.36
  br label %do.end.38

do.end.38:                                        ; preds = %do.cond.37
  %47 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs39 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %47, i32 0, i32 42
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs39, i32 0, i32 7
  %48 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8, !tbaa !30
  store i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* %48, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill, align 8, !tbaa !1
  %49 = load i32, i32* %depth, align 4, !tbaa !5
  %shl = shl i32 1, %49
  %sub40 = sub nsw i32 %shl, 1
  %conv41 = trunc i32 %sub40 to i8
  store i8 %conv41, i8* %mask, align 1, !tbaa !40
  %50 = load i8*, i8** %data.addr, align 8, !tbaa !1
  store i8* %50, i8** %row, align 8, !tbaa !1
  store i32 0, i32* %iy, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.145, %do.end.38
  %51 = load i32, i32* %iy, align 4, !tbaa !5
  %52 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp42 = icmp slt i32 %51, %52
  br i1 %cmp42, label %for.body, label %for.end.149

for.body:                                         ; preds = %for.cond
  %53 = bitcast i32* %ix to i8*
  call void @llvm.lifetime.start(i64 4, i8* %53) #1
  %54 = bitcast i64* %c0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %54) #1
  store i64 -1, i64* %c0, align 8, !tbaa !7
  %55 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %55) #1
  %56 = load i8*, i8** %row, align 8, !tbaa !1
  %57 = load i32, i32* %dx.addr, align 4, !tbaa !5
  %58 = load i32, i32* %depth, align 4, !tbaa !5
  %mul44 = mul nsw i32 %57, %58
  %shr = ashr i32 %mul44, 3
  %idx.ext45 = sext i32 %shr to i64
  %add.ptr46 = getelementptr inbounds i8, i8* %56, i64 %idx.ext45
  store i8* %add.ptr46, i8** %ptr, align 8, !tbaa !1
  %59 = bitcast i32* %i0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %59) #1
  store i32 0, i32* %ix, align 4, !tbaa !5
  store i32 0, i32* %i0, align 4, !tbaa !5
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc, %for.body
  %60 = load i32, i32* %ix, align 4, !tbaa !5
  %61 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp48 = icmp slt i32 %60, %61
  br i1 %cmp48, label %for.body.50, label %for.end

for.body.50:                                      ; preds = %for.cond.47
  %62 = bitcast i64* %color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %62) #1
  %63 = load i32, i32* %depth, align 4, !tbaa !5
  %cmp51 = icmp sge i32 %63, 8
  br i1 %cmp51, label %if.then.53, label %if.else

if.then.53:                                       ; preds = %for.body.50
  %64 = load i8*, i8** %ptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8, !tbaa !1
  %65 = load i8, i8* %64, align 1, !tbaa !40
  %conv54 = zext i8 %65 to i64
  store i64 %conv54, i64* %color, align 8, !tbaa !7
  %66 = load i32, i32* %depth, align 4, !tbaa !5
  switch i32 %66, label %sw.epilog [
    i32 64, label %sw.bb
    i32 56, label %sw.bb.59
    i32 48, label %sw.bb.64
    i32 40, label %sw.bb.69
    i32 32, label %sw.bb.74
    i32 24, label %sw.bb.79
    i32 16, label %sw.bb.84
  ]

sw.bb:                                            ; preds = %if.then.53
  %67 = load i64, i64* %color, align 8, !tbaa !7
  %shl55 = shl i64 %67, 8
  %68 = load i8*, i8** %ptr, align 8, !tbaa !1
  %incdec.ptr56 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %incdec.ptr56, i8** %ptr, align 8, !tbaa !1
  %69 = load i8, i8* %68, align 1, !tbaa !40
  %conv57 = zext i8 %69 to i64
  %add58 = add i64 %shl55, %conv57
  store i64 %add58, i64* %color, align 8, !tbaa !7
  br label %sw.bb.59

sw.bb.59:                                         ; preds = %if.then.53, %sw.bb
  %70 = load i64, i64* %color, align 8, !tbaa !7
  %shl60 = shl i64 %70, 8
  %71 = load i8*, i8** %ptr, align 8, !tbaa !1
  %incdec.ptr61 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %incdec.ptr61, i8** %ptr, align 8, !tbaa !1
  %72 = load i8, i8* %71, align 1, !tbaa !40
  %conv62 = zext i8 %72 to i64
  %add63 = add i64 %shl60, %conv62
  store i64 %add63, i64* %color, align 8, !tbaa !7
  br label %sw.bb.64

sw.bb.64:                                         ; preds = %if.then.53, %sw.bb.59
  %73 = load i64, i64* %color, align 8, !tbaa !7
  %shl65 = shl i64 %73, 8
  %74 = load i8*, i8** %ptr, align 8, !tbaa !1
  %incdec.ptr66 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %incdec.ptr66, i8** %ptr, align 8, !tbaa !1
  %75 = load i8, i8* %74, align 1, !tbaa !40
  %conv67 = zext i8 %75 to i64
  %add68 = add i64 %shl65, %conv67
  store i64 %add68, i64* %color, align 8, !tbaa !7
  br label %sw.bb.69

sw.bb.69:                                         ; preds = %if.then.53, %sw.bb.64
  %76 = load i64, i64* %color, align 8, !tbaa !7
  %shl70 = shl i64 %76, 8
  %77 = load i8*, i8** %ptr, align 8, !tbaa !1
  %incdec.ptr71 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %incdec.ptr71, i8** %ptr, align 8, !tbaa !1
  %78 = load i8, i8* %77, align 1, !tbaa !40
  %conv72 = zext i8 %78 to i64
  %add73 = add i64 %shl70, %conv72
  store i64 %add73, i64* %color, align 8, !tbaa !7
  br label %sw.bb.74

sw.bb.74:                                         ; preds = %if.then.53, %sw.bb.69
  %79 = load i64, i64* %color, align 8, !tbaa !7
  %shl75 = shl i64 %79, 8
  %80 = load i8*, i8** %ptr, align 8, !tbaa !1
  %incdec.ptr76 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %incdec.ptr76, i8** %ptr, align 8, !tbaa !1
  %81 = load i8, i8* %80, align 1, !tbaa !40
  %conv77 = zext i8 %81 to i64
  %add78 = add i64 %shl75, %conv77
  store i64 %add78, i64* %color, align 8, !tbaa !7
  br label %sw.bb.79

sw.bb.79:                                         ; preds = %if.then.53, %sw.bb.74
  %82 = load i64, i64* %color, align 8, !tbaa !7
  %shl80 = shl i64 %82, 8
  %83 = load i8*, i8** %ptr, align 8, !tbaa !1
  %incdec.ptr81 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %incdec.ptr81, i8** %ptr, align 8, !tbaa !1
  %84 = load i8, i8* %83, align 1, !tbaa !40
  %conv82 = zext i8 %84 to i64
  %add83 = add i64 %shl80, %conv82
  store i64 %add83, i64* %color, align 8, !tbaa !7
  br label %sw.bb.84

sw.bb.84:                                         ; preds = %if.then.53, %sw.bb.79
  %85 = load i64, i64* %color, align 8, !tbaa !7
  %shl85 = shl i64 %85, 8
  %86 = load i8*, i8** %ptr, align 8, !tbaa !1
  %incdec.ptr86 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %incdec.ptr86, i8** %ptr, align 8, !tbaa !1
  %87 = load i8, i8* %86, align 1, !tbaa !40
  %conv87 = zext i8 %87 to i64
  %add88 = add i64 %shl85, %conv87
  store i64 %add88, i64* %color, align 8, !tbaa !7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.84, %if.then.53
  br label %if.end.103

if.else:                                          ; preds = %for.body.50
  %88 = bitcast i32* %dbit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %88) #1
  %89 = load i32, i32* %ix, align 4, !tbaa !5
  %90 = load i32, i32* %dx.addr, align 4, !tbaa !5
  %add89 = add nsw i32 %89, %90
  %add90 = add nsw i32 %add89, 1
  %sub91 = sub nsw i32 0, %add90
  %91 = load i32, i32* %depth, align 4, !tbaa !5
  %mul92 = mul nsw i32 %sub91, %91
  %and = and i32 %mul92, 7
  store i32 %and, i32* %dbit, align 4, !tbaa !5
  %92 = load i8*, i8** %ptr, align 8, !tbaa !1
  %93 = load i8, i8* %92, align 1, !tbaa !40
  %conv93 = zext i8 %93 to i32
  %94 = load i32, i32* %dbit, align 4, !tbaa !5
  %shr94 = ashr i32 %conv93, %94
  %95 = load i8, i8* %mask, align 1, !tbaa !40
  %conv95 = zext i8 %95 to i32
  %and96 = and i32 %shr94, %conv95
  %conv97 = sext i32 %and96 to i64
  store i64 %conv97, i64* %color, align 8, !tbaa !7
  %96 = load i32, i32* %dbit, align 4, !tbaa !5
  %cmp98 = icmp eq i32 %96, 0
  br i1 %cmp98, label %if.then.100, label %if.end.102

if.then.100:                                      ; preds = %if.else
  %97 = load i8*, i8** %ptr, align 8, !tbaa !1
  %incdec.ptr101 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %incdec.ptr101, i8** %ptr, align 8, !tbaa !1
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.100, %if.else
  %98 = bitcast i32* %dbit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #1
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %sw.epilog
  %99 = load i64, i64* %color, align 8, !tbaa !7
  %100 = load i64, i64* %c0, align 8, !tbaa !7
  %cmp104 = icmp ne i64 %99, %100
  br i1 %cmp104, label %if.then.106, label %if.end.119

if.then.106:                                      ; preds = %if.end.103
  %101 = load i32, i32* %ix, align 4, !tbaa !5
  %102 = load i32, i32* %i0, align 4, !tbaa !5
  %cmp107 = icmp sgt i32 %101, %102
  br i1 %cmp107, label %if.then.109, label %if.end.118

if.then.109:                                      ; preds = %if.then.106
  %103 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %103) #1
  %104 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill, align 8, !tbaa !1
  %105 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %106 = load i32, i32* %i0, align 4, !tbaa !5
  %107 = load i32, i32* %x.addr, align 4, !tbaa !5
  %add110 = add nsw i32 %106, %107
  %108 = load i32, i32* %iy, align 4, !tbaa !5
  %109 = load i32, i32* %y.addr, align 4, !tbaa !5
  %add111 = add nsw i32 %108, %109
  %110 = load i32, i32* %ix, align 4, !tbaa !5
  %111 = load i32, i32* %i0, align 4, !tbaa !5
  %sub112 = sub nsw i32 %110, %111
  %112 = load i64, i64* %c0, align 8, !tbaa !7
  %call113 = call i32 %104(%struct.gx_device_s* %105, i32 %add110, i32 %add111, i32 %sub112, i32 1, i64 %112) #3
  store i32 %call113, i32* %code, align 4, !tbaa !5
  %113 = load i32, i32* %code, align 4, !tbaa !5
  %cmp114 = icmp slt i32 %113, 0
  br i1 %cmp114, label %if.then.116, label %if.end.117

if.then.116:                                      ; preds = %if.then.109
  %114 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %114, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.117:                                       ; preds = %if.then.109
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.117, %if.then.116
  %115 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.120 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.118

if.end.118:                                       ; preds = %cleanup.cont, %if.then.106
  %116 = load i64, i64* %color, align 8, !tbaa !7
  store i64 %116, i64* %c0, align 8, !tbaa !7
  %117 = load i32, i32* %ix, align 4, !tbaa !5
  store i32 %117, i32* %i0, align 4, !tbaa !5
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %if.end.103
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.120

cleanup.120:                                      ; preds = %if.end.119, %cleanup
  %118 = bitcast i64* %color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %118) #1
  %cleanup.dest.121 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.121, label %cleanup.139 [
    i32 0, label %cleanup.cont.122
  ]

cleanup.cont.122:                                 ; preds = %cleanup.120
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont.122
  %119 = load i32, i32* %ix, align 4, !tbaa !5
  %inc = add nsw i32 %119, 1
  store i32 %inc, i32* %ix, align 4, !tbaa !5
  br label %for.cond.47

for.end:                                          ; preds = %for.cond.47
  %120 = load i32, i32* %ix, align 4, !tbaa !5
  %121 = load i32, i32* %i0, align 4, !tbaa !5
  %cmp123 = icmp sgt i32 %120, %121
  br i1 %cmp123, label %if.then.125, label %if.end.138

if.then.125:                                      ; preds = %for.end
  %122 = bitcast i32* %code126 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %122) #1
  %123 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill, align 8, !tbaa !1
  %124 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %125 = load i32, i32* %i0, align 4, !tbaa !5
  %126 = load i32, i32* %x.addr, align 4, !tbaa !5
  %add127 = add nsw i32 %125, %126
  %127 = load i32, i32* %iy, align 4, !tbaa !5
  %128 = load i32, i32* %y.addr, align 4, !tbaa !5
  %add128 = add nsw i32 %127, %128
  %129 = load i32, i32* %ix, align 4, !tbaa !5
  %130 = load i32, i32* %i0, align 4, !tbaa !5
  %sub129 = sub nsw i32 %129, %130
  %131 = load i64, i64* %c0, align 8, !tbaa !7
  %call130 = call i32 %123(%struct.gx_device_s* %124, i32 %add127, i32 %add128, i32 %sub129, i32 1, i64 %131) #3
  store i32 %call130, i32* %code126, align 4, !tbaa !5
  %132 = load i32, i32* %code126, align 4, !tbaa !5
  %cmp131 = icmp slt i32 %132, 0
  br i1 %cmp131, label %if.then.133, label %if.end.134

if.then.133:                                      ; preds = %if.then.125
  %133 = load i32, i32* %code126, align 4, !tbaa !5
  store i32 %133, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.135

if.end.134:                                       ; preds = %if.then.125
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.135

cleanup.135:                                      ; preds = %if.end.134, %if.then.133
  %134 = bitcast i32* %code126 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %134) #1
  %cleanup.dest.136 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.136, label %cleanup.139 [
    i32 0, label %cleanup.cont.137
  ]

cleanup.cont.137:                                 ; preds = %cleanup.135
  br label %if.end.138

if.end.138:                                       ; preds = %cleanup.cont.137, %for.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.139

cleanup.139:                                      ; preds = %if.end.138, %cleanup.135, %cleanup.120
  %135 = bitcast i32* %i0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %135) #1
  %136 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %136) #1
  %137 = bitcast i64* %c0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %137) #1
  %138 = bitcast i32* %ix to i8*
  call void @llvm.lifetime.end(i64 4, i8* %138) #1
  %cleanup.dest.143 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.143, label %cleanup.150 [
    i32 0, label %cleanup.cont.144
  ]

cleanup.cont.144:                                 ; preds = %cleanup.139
  br label %for.inc.145

for.inc.145:                                      ; preds = %cleanup.cont.144
  %139 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %140 = load i8*, i8** %row, align 8, !tbaa !1
  %idx.ext146 = sext i32 %139 to i64
  %add.ptr147 = getelementptr inbounds i8, i8* %140, i64 %idx.ext146
  store i8* %add.ptr147, i8** %row, align 8, !tbaa !1
  %141 = load i32, i32* %iy, align 4, !tbaa !5
  %inc148 = add nsw i32 %141, 1
  store i32 %inc148, i32* %iy, align 4, !tbaa !5
  br label %for.cond

for.end.149:                                      ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.150

cleanup.150:                                      ; preds = %for.end.149, %cleanup.139, %if.then.35, %if.then
  %142 = bitcast i32* %iy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %142) #1
  %143 = bitcast i8** %row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %143) #1
  %144 = bitcast i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill to i8*
  call void @llvm.lifetime.end(i64 8, i8* %144) #1
  call void @llvm.lifetime.end(i64 1, i8* %mask) #1
  %145 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #1
  %146 = load i32, i32* %retval
  ret i32 %146
}

; Function Attrs: nounwind uwtable
define i32 @gx_no_copy_alpha(%struct.gx_device_s* %dev, i8* %data, i32 %data_x, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %width, i32 %height, i64 %color, i32 %depth) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %data.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  %depth.addr = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !7
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  store i64 %color, i64* %color.addr, align 8, !tbaa !7
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !5
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_copy_alpha_hl_color(%struct.gx_device_s* %dev, i8* %data, i32 %data_x, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %width, i32 %height, %struct.gx_device_color_s* %pdcolor, i32 %depth) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %data.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %depth.addr = alloca i32, align 4
  %row_alpha = alloca i8*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %bpp = alloca i32, align 4
  %ncomps = alloca i32, align 4
  %out_raster = alloca i32, align 4
  %code = alloca i32, align 4
  %src_cv = alloca [64 x i16], align 16
  %curr_cv = alloca [64 x i16], align 16
  %blend_cv = alloca [64 x i16], align 16
  %ry = alloca i32, align 4
  %k = alloca i32, align 4
  %j = alloca i32, align 4
  %gb_params = alloca %struct.gs_get_bits_params_s, align 8
  %src_planes = alloca [64 x i8*], align 16
  %gb_rect = alloca %struct.gs_int_rect_s, align 4
  %byte_depth = alloca i32, align 4
  %mask = alloca i64, align 8
  %shift = alloca i32, align 4
  %word_width = alloca i32, align 4
  %composite = alloca i16*, align 8
  %gb_buff = alloca i8*, align 8
  %x_curr = alloca i32, align 4
  %w_curr = alloca i32, align 4
  %gb_buff_start = alloca i32, align 4
  %end_ptr = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %sx = alloca i32, align 4
  %rx = alloca i32, align 4
  %alpha2 = alloca i32, align 4
  %alpha = alloca i32, align 4
  %ptr = alloca i8*, align 8
  %ptr213 = alloca i8*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !7
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !5
  %0 = bitcast i8** %row_alpha to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 3
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !41
  store %struct.gs_memory_s* %3, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %4 = bitcast i32* %bpp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 11
  %depth1 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %6 = load i16, i16* %depth1, align 2, !tbaa !38
  %conv = zext i16 %6 to i32
  store i32 %conv, i32* %bpp, align 4, !tbaa !5
  %7 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info2, i32 0, i32 1
  %9 = load i32, i32* %num_components, align 4, !tbaa !42
  store i32 %9, i32* %ncomps, align 4, !tbaa !5
  %10 = bitcast i32* %out_raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %12 = bitcast [64 x i16]* %src_cv to i8*
  call void @llvm.lifetime.start(i64 128, i8* %12) #1
  %13 = bitcast [64 x i16]* %curr_cv to i8*
  call void @llvm.lifetime.start(i64 128, i8* %13) #1
  %14 = bitcast [64 x i16]* %blend_cv to i8*
  call void @llvm.lifetime.start(i64 128, i8* %14) #1
  %15 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast %struct.gs_get_bits_params_s* %gb_params to i8*
  call void @llvm.lifetime.start(i64 536, i8* %18) #1
  %19 = bitcast [64 x i8*]* %src_planes to i8*
  call void @llvm.lifetime.start(i64 512, i8* %19) #1
  %20 = bitcast %struct.gs_int_rect_s* %gb_rect to i8*
  call void @llvm.lifetime.start(i64 16, i8* %20) #1
  %21 = bitcast i32* %byte_depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = bitcast i64* %mask to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  %23 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = bitcast i32* %word_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = bitcast i16** %composite to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  %26 = bitcast i8** %gb_buff to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  %27 = bitcast i32* %x_curr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = bitcast i32* %w_curr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  %29 = bitcast i32* %gb_buff_start to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  %30 = bitcast i8** %end_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #1
  %31 = load i32, i32* %bpp, align 4, !tbaa !5
  %32 = load i32, i32* %ncomps, align 4, !tbaa !5
  %div = sdiv i32 %31, %32
  store i32 %div, i32* %byte_depth, align 4, !tbaa !5
  %33 = load i32, i32* %byte_depth, align 4, !tbaa !5
  %sh_prom = zext i32 %33 to i64
  %shl = shl i64 1, %sh_prom
  %sub = sub i64 %shl, 1
  store i64 %sub, i64* %mask, align 8, !tbaa !7
  %34 = load i32, i32* %byte_depth, align 4, !tbaa !5
  %sub3 = sub nsw i32 16, %34
  store i32 %sub3, i32* %shift, align 4, !tbaa !5
  %35 = load i32, i32* %byte_depth, align 4, !tbaa !5
  %shr = ashr i32 %35, 3
  store i32 %shr, i32* %word_width, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.4

do.body.4:                                        ; preds = %do.body
  %36 = load i32, i32* %x.addr, align 4, !tbaa !5
  %37 = load i32, i32* %y.addr, align 4, !tbaa !5
  %or = or i32 %36, %37
  %cmp = icmp slt i32 %or, 0
  br i1 %cmp, label %if.then, label %if.end.15

if.then:                                          ; preds = %do.body.4
  %38 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %38, 0
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %39 = load i32, i32* %x.addr, align 4, !tbaa !5
  %40 = load i32, i32* %width.addr, align 4, !tbaa !5
  %add = add nsw i32 %40, %39
  store i32 %add, i32* %width.addr, align 4, !tbaa !5
  %41 = load i32, i32* %x.addr, align 4, !tbaa !5
  %42 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %sub9 = sub nsw i32 %42, %41
  store i32 %sub9, i32* %data_x.addr, align 4, !tbaa !5
  store i32 0, i32* %x.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  %43 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %43, 0
  br i1 %cmp10, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end
  %44 = load i32, i32* %y.addr, align 4, !tbaa !5
  %45 = load i32, i32* %height.addr, align 4, !tbaa !5
  %add13 = add nsw i32 %45, %44
  store i32 %add13, i32* %height.addr, align 4, !tbaa !5
  %46 = load i32, i32* %y.addr, align 4, !tbaa !5
  %47 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %46, %47
  %48 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %mul to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %48, i64 %idx.neg
  store i8* %add.ptr, i8** %data.addr, align 8, !tbaa !1
  store i64 0, i64* %id.addr, align 8, !tbaa !7
  store i32 0, i32* %y.addr, align 4, !tbaa !5
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %do.body.4
  %49 = load i32, i32* %width.addr, align 4, !tbaa !5
  %50 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width16 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %50, i32 0, i32 13
  %51 = load i32, i32* %width16, align 4, !tbaa !28
  %52 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub17 = sub nsw i32 %51, %52
  %cmp18 = icmp sgt i32 %49, %sub17
  br i1 %cmp18, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %if.end.15
  %53 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width21 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %53, i32 0, i32 13
  %54 = load i32, i32* %width21, align 4, !tbaa !28
  %55 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub22 = sub nsw i32 %54, %55
  store i32 %sub22, i32* %width.addr, align 4, !tbaa !5
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %if.end.15
  br label %do.cond

do.cond:                                          ; preds = %if.end.23
  br label %do.end

do.end:                                           ; preds = %do.cond
  %56 = load i32, i32* %height.addr, align 4, !tbaa !5
  %57 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height24 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %57, i32 0, i32 14
  %58 = load i32, i32* %height24, align 4, !tbaa !29
  %59 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub25 = sub nsw i32 %58, %59
  %cmp26 = icmp sgt i32 %56, %sub25
  br i1 %cmp26, label %if.then.28, label %if.end.31

if.then.28:                                       ; preds = %do.end
  %60 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height29 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %60, i32 0, i32 14
  %61 = load i32, i32* %height29, align 4, !tbaa !29
  %62 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub30 = sub nsw i32 %61, %62
  store i32 %sub30, i32* %height.addr, align 4, !tbaa !5
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.28, %do.end
  %63 = load i32, i32* %width.addr, align 4, !tbaa !5
  %cmp32 = icmp sle i32 %63, 0
  br i1 %cmp32, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.31
  %64 = load i32, i32* %height.addr, align 4, !tbaa !5
  %cmp34 = icmp sle i32 %64, 0
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %lor.lhs.false, %if.end.31
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.258

if.end.37:                                        ; preds = %lor.lhs.false
  br label %do.cond.38

do.cond.38:                                       ; preds = %if.end.37
  br label %do.end.39

do.end.39:                                        ; preds = %do.cond.38
  %65 = load i8*, i8** %data.addr, align 8, !tbaa !1
  store i8* %65, i8** %row_alpha, align 8, !tbaa !1
  %66 = load i32, i32* %width.addr, align 4, !tbaa !5
  %67 = load i32, i32* %byte_depth, align 4, !tbaa !5
  %mul40 = mul nsw i32 %66, %67
  %add41 = add nsw i32 %mul40, 63
  %shr42 = ashr i32 %add41, 6
  %shl43 = shl i32 %shr42, 3
  store i32 %shl43, i32* %out_raster, align 4, !tbaa !5
  %68 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %68, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %69 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !43
  %70 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %71 = load i32, i32* %out_raster, align 4, !tbaa !5
  %72 = load i32, i32* %ncomps, align 4, !tbaa !5
  %mul44 = mul i32 %71, %72
  %call = call i8* %69(%struct.gs_memory_s* %70, i32 %mul44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0)) #3
  store i8* %call, i8** %gb_buff, align 8, !tbaa !1
  %73 = load i8*, i8** %gb_buff, align 8, !tbaa !1
  %74 = load i32, i32* %out_raster, align 4, !tbaa !5
  %75 = load i32, i32* %ncomps, align 4, !tbaa !5
  %mul45 = mul i32 %74, %75
  %idx.ext46 = zext i32 %mul45 to i64
  %add.ptr47 = getelementptr inbounds i8, i8* %73, i64 %idx.ext46
  store i8* %add.ptr47, i8** %end_ptr, align 8, !tbaa !1
  %76 = load i8*, i8** %gb_buff, align 8, !tbaa !1
  %cmp48 = icmp eq i8* %76, null
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %do.end.39
  store i32 -25, i32* %code, align 4, !tbaa !5
  %77 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %77, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.258

if.end.51:                                        ; preds = %do.end.39
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.51
  %78 = load i32, i32* %k, align 4, !tbaa !5
  %79 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp52 = icmp slt i32 %78, %79
  br i1 %cmp52, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %80 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom = sext i32 %80 to i64
  %81 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %81, i32 0, i32 1
  %devn = bitcast %union._c* %colors to %struct._devn*
  %values = getelementptr inbounds %struct._devn, %struct._devn* %devn, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x i16], [64 x i16]* %values, i32 0, i64 %idxprom
  %82 = load i16, i16* %arrayidx, align 2, !tbaa !10
  %83 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom54 = sext i32 %83 to i64
  %arrayidx55 = getelementptr inbounds [64 x i16], [64 x i16]* %src_cv, i32 0, i64 %idxprom54
  store i16 %82, i16* %arrayidx55, align 2, !tbaa !10
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %84 = load i32, i32* %k, align 4, !tbaa !5
  %inc = add nsw i32 %84, 1
  store i32 %inc, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %options = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %gb_params, i32 0, i32 0
  store i64 291127057, i64* %options, align 8, !tbaa !46
  %85 = load i32, i32* %x.addr, align 4, !tbaa !5
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %gb_rect, i32 0, i32 0
  %x56 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  store i32 %85, i32* %x56, align 4, !tbaa !48
  %86 = load i32, i32* %x.addr, align 4, !tbaa !5
  %87 = load i32, i32* %width.addr, align 4, !tbaa !5
  %add57 = add nsw i32 %86, %87
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %gb_rect, i32 0, i32 1
  %x58 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  store i32 %add57, i32* %x58, align 4, !tbaa !50
  %88 = load i32, i32* %y.addr, align 4, !tbaa !5
  store i32 %88, i32* %ry, align 4, !tbaa !5
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc.251, %for.end
  %89 = load i32, i32* %ry, align 4, !tbaa !5
  %90 = load i32, i32* %y.addr, align 4, !tbaa !5
  %91 = load i32, i32* %height.addr, align 4, !tbaa !5
  %add60 = add nsw i32 %90, %91
  %cmp61 = icmp slt i32 %89, %add60
  br i1 %cmp61, label %for.body.63, label %for.end.255

for.body.63:                                      ; preds = %for.cond.59
  %92 = bitcast i32* %sx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %92) #1
  %93 = bitcast i32* %rx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %93) #1
  %94 = load i32, i32* %ry, align 4, !tbaa !5
  %p64 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %gb_rect, i32 0, i32 0
  %y65 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p64, i32 0, i32 1
  store i32 %94, i32* %y65, align 4, !tbaa !51
  %95 = load i32, i32* %ry, align 4, !tbaa !5
  %add66 = add nsw i32 %95, 1
  %q67 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %gb_rect, i32 0, i32 1
  %y68 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q67, i32 0, i32 1
  store i32 %add66, i32* %y68, align 4, !tbaa !52
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.101, %for.body.63
  %96 = load i32, i32* %k, align 4, !tbaa !5
  %97 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp70 = icmp slt i32 %96, %97
  br i1 %cmp70, label %for.body.72, label %for.end.103

for.body.72:                                      ; preds = %for.cond.69
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.80, %for.body.72
  %98 = load i32, i32* %j, align 4, !tbaa !5
  %99 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp74 = icmp slt i32 %98, %99
  br i1 %cmp74, label %for.body.76, label %for.end.82

for.body.76:                                      ; preds = %for.cond.73
  %100 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom77 = sext i32 %100 to i64
  %data78 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %gb_params, i32 0, i32 1
  %arrayidx79 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data78, i32 0, i64 %idxprom77
  store i8* null, i8** %arrayidx79, align 8, !tbaa !1
  br label %for.inc.80

for.inc.80:                                       ; preds = %for.body.76
  %101 = load i32, i32* %j, align 4, !tbaa !5
  %inc81 = add nsw i32 %101, 1
  store i32 %inc81, i32* %j, align 4, !tbaa !5
  br label %for.cond.73

for.end.82:                                       ; preds = %for.cond.73
  %102 = load i8*, i8** %gb_buff, align 8, !tbaa !1
  %103 = load i32, i32* %k, align 4, !tbaa !5
  %104 = load i32, i32* %out_raster, align 4, !tbaa !5
  %mul83 = mul i32 %103, %104
  %idx.ext84 = zext i32 %mul83 to i64
  %add.ptr85 = getelementptr inbounds i8, i8* %102, i64 %idx.ext84
  %105 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom86 = sext i32 %105 to i64
  %data87 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %gb_params, i32 0, i32 1
  %arrayidx88 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data87, i32 0, i64 %idxprom86
  store i8* %add.ptr85, i8** %arrayidx88, align 8, !tbaa !1
  %106 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs89 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %106, i32 0, i32 42
  %get_bits_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs89, i32 0, i32 38
  %107 = load i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %get_bits_rectangle, align 8, !tbaa !53
  %108 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call90 = call i32 %107(%struct.gx_device_s* %108, %struct.gs_int_rect_s* %gb_rect, %struct.gs_get_bits_params_s* %gb_params, %struct.gs_int_rect_s** null) #3
  store i32 %call90, i32* %code, align 4, !tbaa !5
  %109 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom91 = sext i32 %109 to i64
  %data92 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %gb_params, i32 0, i32 1
  %arrayidx93 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data92, i32 0, i64 %idxprom91
  %110 = load i8*, i8** %arrayidx93, align 8, !tbaa !1
  %111 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom94 = sext i32 %111 to i64
  %arrayidx95 = getelementptr inbounds [64 x i8*], [64 x i8*]* %src_planes, i32 0, i64 %idxprom94
  store i8* %110, i8** %arrayidx95, align 8, !tbaa !1
  %112 = load i32, i32* %code, align 4, !tbaa !5
  %cmp96 = icmp slt i32 %112, 0
  br i1 %cmp96, label %if.then.98, label %if.end.100

if.then.98:                                       ; preds = %for.end.82
  %113 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs99 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %113, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs99, i32 0, i32 2
  %114 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !54
  %115 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %116 = load i8*, i8** %gb_buff, align 8, !tbaa !1
  call void %114(%struct.gs_memory_s* %115, i8* %116, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0)) #3
  %117 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %117, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.100:                                       ; preds = %for.end.82
  br label %for.inc.101

for.inc.101:                                      ; preds = %if.end.100
  %118 = load i32, i32* %k, align 4, !tbaa !5
  %inc102 = add nsw i32 %118, 1
  store i32 %inc102, i32* %k, align 4, !tbaa !5
  br label %for.cond.69

for.end.103:                                      ; preds = %for.cond.69
  %119 = load i32, i32* %x.addr, align 4, !tbaa !5
  store i32 %119, i32* %x_curr, align 4, !tbaa !5
  store i32 0, i32* %w_curr, align 4, !tbaa !5
  store i32 0, i32* %gb_buff_start, align 4, !tbaa !5
  %120 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  store i32 %120, i32* %sx, align 4, !tbaa !5
  %121 = load i32, i32* %x.addr, align 4, !tbaa !5
  store i32 %121, i32* %rx, align 4, !tbaa !5
  br label %for.cond.104

for.cond.104:                                     ; preds = %for.inc.241, %for.end.103
  %122 = load i32, i32* %sx, align 4, !tbaa !5
  %123 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %124 = load i32, i32* %width.addr, align 4, !tbaa !5
  %add105 = add nsw i32 %123, %124
  %cmp106 = icmp slt i32 %122, %add105
  br i1 %cmp106, label %for.body.108, label %for.end.244

for.body.108:                                     ; preds = %for.cond.104
  %125 = bitcast i32* %alpha2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %125) #1
  %126 = bitcast i32* %alpha to i8*
  call void @llvm.lifetime.start(i64 4, i8* %126) #1
  %127 = load i32, i32* %w_curr, align 4, !tbaa !5
  %add109 = add nsw i32 %127, 1
  store i32 %add109, i32* %w_curr, align 4, !tbaa !5
  %128 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %cmp110 = icmp eq i32 %128, 2
  br i1 %cmp110, label %if.then.112, label %if.else

if.then.112:                                      ; preds = %for.body.108
  %129 = load i32, i32* %sx, align 4, !tbaa !5
  %shr113 = ashr i32 %129, 2
  %idxprom114 = sext i32 %shr113 to i64
  %130 = load i8*, i8** %row_alpha, align 8, !tbaa !1
  %arrayidx115 = getelementptr inbounds i8, i8* %130, i64 %idxprom114
  %131 = load i8, i8* %arrayidx115, align 1, !tbaa !40
  %conv116 = zext i8 %131 to i32
  %132 = load i32, i32* %sx, align 4, !tbaa !5
  %and = and i32 %132, 3
  %sub117 = sub nsw i32 3, %and
  %shl118 = shl i32 %sub117, 1
  %shr119 = ashr i32 %conv116, %shl118
  %and120 = and i32 %shr119, 3
  %mul121 = mul nsw i32 %and120, 5
  store i32 %mul121, i32* %alpha, align 4, !tbaa !5
  br label %if.end.129

if.else:                                          ; preds = %for.body.108
  %133 = load i32, i32* %sx, align 4, !tbaa !5
  %shr122 = ashr i32 %133, 1
  %idxprom123 = sext i32 %shr122 to i64
  %134 = load i8*, i8** %row_alpha, align 8, !tbaa !1
  %arrayidx124 = getelementptr inbounds i8, i8* %134, i64 %idxprom123
  %135 = load i8, i8* %arrayidx124, align 1, !tbaa !40
  %conv125 = zext i8 %135 to i32
  store i32 %conv125, i32* %alpha2, align 4, !tbaa !5
  %136 = load i32, i32* %sx, align 4, !tbaa !5
  %and126 = and i32 %136, 1
  %tobool = icmp ne i32 %and126, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %137 = load i32, i32* %alpha2, align 4, !tbaa !5
  %and127 = and i32 %137, 15
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %138 = load i32, i32* %alpha2, align 4, !tbaa !5
  %shr128 = ashr i32 %138, 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %and127, %cond.true ], [ %shr128, %cond.false ]
  store i32 %cond, i32* %alpha, align 4, !tbaa !5
  br label %if.end.129

if.end.129:                                       ; preds = %cond.end, %if.then.112
  %139 = load i32, i32* %alpha, align 4, !tbaa !5
  %cmp130 = icmp eq i32 %139, 0
  br i1 %cmp130, label %if.then.132, label %if.else.140

if.then.132:                                      ; preds = %if.end.129
  %140 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs133 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %140, i32 0, i32 42
  %copy_planes = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs133, i32 0, i32 66
  %141 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)** %copy_planes, align 8, !tbaa !55
  %142 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %143 = load i32, i32* %gb_buff_start, align 4, !tbaa !5
  %idxprom134 = sext i32 %143 to i64
  %144 = load i8*, i8** %gb_buff, align 8, !tbaa !1
  %arrayidx135 = getelementptr inbounds i8, i8* %144, i64 %idxprom134
  %145 = load i32, i32* %out_raster, align 4, !tbaa !5
  %146 = load i32, i32* %x_curr, align 4, !tbaa !5
  %147 = load i32, i32* %ry, align 4, !tbaa !5
  %148 = load i32, i32* %w_curr, align 4, !tbaa !5
  %sub136 = sub nsw i32 %148, 1
  %call137 = call i32 %141(%struct.gx_device_s* %142, i8* %arrayidx135, i32 0, i32 %145, i64 0, i32 %146, i32 %147, i32 %sub136, i32 1, i32 1) #3
  store i32 %call137, i32* %code, align 4, !tbaa !5
  %149 = load i32, i32* %gb_buff_start, align 4, !tbaa !5
  %150 = load i32, i32* %w_curr, align 4, !tbaa !5
  %add138 = add nsw i32 %149, %150
  store i32 %add138, i32* %gb_buff_start, align 4, !tbaa !5
  store i32 0, i32* %w_curr, align 4, !tbaa !5
  %151 = load i32, i32* %rx, align 4, !tbaa !5
  %add139 = add nsw i32 %151, 1
  store i32 %add139, i32* %x_curr, align 4, !tbaa !5
  br label %if.end.240

if.else.140:                                      ; preds = %if.end.129
  %152 = load i32, i32* %alpha, align 4, !tbaa !5
  %cmp141 = icmp eq i32 %152, 15
  br i1 %cmp141, label %if.then.143, label %if.else.145

if.then.143:                                      ; preds = %if.else.140
  %arrayidx144 = getelementptr inbounds [64 x i16], [64 x i16]* %src_cv, i32 0, i64 0
  store i16* %arrayidx144, i16** %composite, align 8, !tbaa !1
  br label %if.end.208

if.else.145:                                      ; preds = %if.else.140
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.146

for.cond.146:                                     ; preds = %for.inc.205, %if.else.145
  %153 = load i32, i32* %k, align 4, !tbaa !5
  %154 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp147 = icmp slt i32 %153, %154
  br i1 %cmp147, label %for.body.149, label %for.end.207

for.body.149:                                     ; preds = %for.cond.146
  %155 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %155) #1
  %156 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom150 = sext i32 %156 to i64
  %arrayidx151 = getelementptr inbounds [64 x i8*], [64 x i8*]* %src_planes, i32 0, i64 %idxprom150
  %157 = load i8*, i8** %arrayidx151, align 8, !tbaa !1
  %158 = load i32, i32* %sx, align 4, !tbaa !5
  %159 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %sub152 = sub nsw i32 %158, %159
  %160 = load i32, i32* %word_width, align 4, !tbaa !5
  %mul153 = mul nsw i32 %sub152, %160
  %idx.ext154 = sext i32 %mul153 to i64
  %add.ptr155 = getelementptr inbounds i8, i8* %157, i64 %idx.ext154
  store i8* %add.ptr155, i8** %ptr, align 8, !tbaa !1
  %161 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom156 = sext i32 %161 to i64
  %arrayidx157 = getelementptr inbounds [64 x i16], [64 x i16]* %curr_cv, i32 0, i64 %idxprom156
  store i16 0, i16* %arrayidx157, align 2, !tbaa !10
  %162 = load i32, i32* %word_width, align 4, !tbaa !5
  switch i32 %162, label %sw.epilog [
    i32 2, label %sw.bb
    i32 1, label %sw.bb.171
  ]

sw.bb:                                            ; preds = %for.body.149
  %163 = load i8*, i8** %ptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8, !tbaa !1
  %164 = load i8, i8* %163, align 1, !tbaa !40
  %conv158 = zext i8 %164 to i32
  %shl159 = shl i32 %conv158, 8
  %165 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom160 = sext i32 %165 to i64
  %arrayidx161 = getelementptr inbounds [64 x i16], [64 x i16]* %curr_cv, i32 0, i64 %idxprom160
  %166 = load i16, i16* %arrayidx161, align 2, !tbaa !10
  %conv162 = zext i16 %166 to i32
  %add163 = add nsw i32 %conv162, %shl159
  %conv164 = trunc i32 %add163 to i16
  store i16 %conv164, i16* %arrayidx161, align 2, !tbaa !10
  %167 = load i8*, i8** %ptr, align 8, !tbaa !1
  %168 = load i8, i8* %167, align 1, !tbaa !40
  %conv165 = zext i8 %168 to i32
  %169 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom166 = sext i32 %169 to i64
  %arrayidx167 = getelementptr inbounds [64 x i16], [64 x i16]* %curr_cv, i32 0, i64 %idxprom166
  %170 = load i16, i16* %arrayidx167, align 2, !tbaa !10
  %conv168 = zext i16 %170 to i32
  %add169 = add nsw i32 %conv168, %conv165
  %conv170 = trunc i32 %add169 to i16
  store i16 %conv170, i16* %arrayidx167, align 2, !tbaa !10
  br label %sw.epilog

sw.bb.171:                                        ; preds = %for.body.149
  %171 = load i8*, i8** %ptr, align 8, !tbaa !1
  %172 = load i8, i8* %171, align 1, !tbaa !40
  %conv172 = zext i8 %172 to i32
  %173 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom173 = sext i32 %173 to i64
  %arrayidx174 = getelementptr inbounds [64 x i16], [64 x i16]* %curr_cv, i32 0, i64 %idxprom173
  %174 = load i16, i16* %arrayidx174, align 2, !tbaa !10
  %conv175 = zext i16 %174 to i32
  %add176 = add nsw i32 %conv175, %conv172
  %conv177 = trunc i32 %add176 to i16
  store i16 %conv177, i16* %arrayidx174, align 2, !tbaa !10
  %175 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom178 = sext i32 %175 to i64
  %arrayidx179 = getelementptr inbounds [64 x i16], [64 x i16]* %curr_cv, i32 0, i64 %idxprom178
  %176 = load i16, i16* %arrayidx179, align 2, !tbaa !10
  %conv180 = zext i16 %176 to i32
  %shl181 = shl i32 %conv180, 8
  %177 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom182 = sext i32 %177 to i64
  %arrayidx183 = getelementptr inbounds [64 x i16], [64 x i16]* %curr_cv, i32 0, i64 %idxprom182
  %178 = load i16, i16* %arrayidx183, align 2, !tbaa !10
  %conv184 = zext i16 %178 to i32
  %add185 = add nsw i32 %conv184, %shl181
  %conv186 = trunc i32 %add185 to i16
  store i16 %conv186, i16* %arrayidx183, align 2, !tbaa !10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.171, %for.body.149, %sw.bb
  %179 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom187 = sext i32 %179 to i64
  %arrayidx188 = getelementptr inbounds [64 x i16], [64 x i16]* %curr_cv, i32 0, i64 %idxprom187
  %180 = load i16, i16* %arrayidx188, align 2, !tbaa !10
  %conv189 = zext i16 %180 to i64
  %181 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom190 = sext i32 %181 to i64
  %arrayidx191 = getelementptr inbounds [64 x i16], [64 x i16]* %src_cv, i32 0, i64 %idxprom190
  %182 = load i16, i16* %arrayidx191, align 2, !tbaa !10
  %conv192 = zext i16 %182 to i64
  %183 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom193 = sext i32 %183 to i64
  %arrayidx194 = getelementptr inbounds [64 x i16], [64 x i16]* %curr_cv, i32 0, i64 %idxprom193
  %184 = load i16, i16* %arrayidx194, align 2, !tbaa !10
  %conv195 = zext i16 %184 to i64
  %sub196 = sub nsw i64 %conv192, %conv195
  %185 = load i32, i32* %alpha, align 4, !tbaa !5
  %conv197 = sext i32 %185 to i64
  %mul198 = mul nsw i64 %sub196, %conv197
  %div199 = sdiv i64 %mul198, 15
  %add200 = add nsw i64 %conv189, %div199
  %conv201 = trunc i64 %add200 to i16
  %186 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom202 = sext i32 %186 to i64
  %arrayidx203 = getelementptr inbounds [64 x i16], [64 x i16]* %blend_cv, i32 0, i64 %idxprom202
  store i16 %conv201, i16* %arrayidx203, align 2, !tbaa !10
  %arrayidx204 = getelementptr inbounds [64 x i16], [64 x i16]* %blend_cv, i32 0, i64 0
  store i16* %arrayidx204, i16** %composite, align 8, !tbaa !1
  %187 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %187) #1
  br label %for.inc.205

for.inc.205:                                      ; preds = %sw.epilog
  %188 = load i32, i32* %k, align 4, !tbaa !5
  %inc206 = add nsw i32 %188, 1
  store i32 %inc206, i32* %k, align 4, !tbaa !5
  br label %for.cond.146

for.end.207:                                      ; preds = %for.cond.146
  br label %if.end.208

if.end.208:                                       ; preds = %for.end.207, %if.then.143
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.209

for.cond.209:                                     ; preds = %for.inc.237, %if.end.208
  %189 = load i32, i32* %k, align 4, !tbaa !5
  %190 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp210 = icmp slt i32 %189, %190
  br i1 %cmp210, label %for.body.212, label %for.end.239

for.body.212:                                     ; preds = %for.cond.209
  %191 = bitcast i8** %ptr213 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %191) #1
  %192 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom214 = sext i32 %192 to i64
  %arrayidx215 = getelementptr inbounds [64 x i8*], [64 x i8*]* %src_planes, i32 0, i64 %idxprom214
  %193 = load i8*, i8** %arrayidx215, align 8, !tbaa !1
  %194 = load i32, i32* %sx, align 4, !tbaa !5
  %195 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %sub216 = sub nsw i32 %194, %195
  %196 = load i32, i32* %word_width, align 4, !tbaa !5
  %mul217 = mul nsw i32 %sub216, %196
  %idx.ext218 = sext i32 %mul217 to i64
  %add.ptr219 = getelementptr inbounds i8, i8* %193, i64 %idx.ext218
  store i8* %add.ptr219, i8** %ptr213, align 8, !tbaa !1
  %197 = load i32, i32* %word_width, align 4, !tbaa !5
  switch i32 %197, label %sw.epilog.236 [
    i32 2, label %sw.bb.220
    i32 1, label %sw.bb.227
  ]

sw.bb.220:                                        ; preds = %for.body.212
  %198 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom221 = sext i32 %198 to i64
  %199 = load i16*, i16** %composite, align 8, !tbaa !1
  %arrayidx222 = getelementptr inbounds i16, i16* %199, i64 %idxprom221
  %200 = load i16, i16* %arrayidx222, align 2, !tbaa !10
  %conv223 = zext i16 %200 to i64
  %201 = load i64, i64* %mask, align 8, !tbaa !7
  %and224 = and i64 %conv223, %201
  %conv225 = trunc i64 %and224 to i8
  %202 = load i8*, i8** %ptr213, align 8, !tbaa !1
  %incdec.ptr226 = getelementptr inbounds i8, i8* %202, i32 1
  store i8* %incdec.ptr226, i8** %ptr213, align 8, !tbaa !1
  store i8 %conv225, i8* %202, align 1, !tbaa !40
  br label %sw.bb.227

sw.bb.227:                                        ; preds = %for.body.212, %sw.bb.220
  %203 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom228 = sext i32 %203 to i64
  %204 = load i16*, i16** %composite, align 8, !tbaa !1
  %arrayidx229 = getelementptr inbounds i16, i16* %204, i64 %idxprom228
  %205 = load i16, i16* %arrayidx229, align 2, !tbaa !10
  %conv230 = zext i16 %205 to i32
  %206 = load i32, i32* %shift, align 4, !tbaa !5
  %shr231 = ashr i32 %conv230, %206
  %conv232 = sext i32 %shr231 to i64
  %207 = load i64, i64* %mask, align 8, !tbaa !7
  %and233 = and i64 %conv232, %207
  %conv234 = trunc i64 %and233 to i8
  %208 = load i8*, i8** %ptr213, align 8, !tbaa !1
  %incdec.ptr235 = getelementptr inbounds i8, i8* %208, i32 1
  store i8* %incdec.ptr235, i8** %ptr213, align 8, !tbaa !1
  store i8 %conv234, i8* %208, align 1, !tbaa !40
  br label %sw.epilog.236

sw.epilog.236:                                    ; preds = %sw.bb.227, %for.body.212
  %209 = bitcast i8** %ptr213 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %209) #1
  br label %for.inc.237

for.inc.237:                                      ; preds = %sw.epilog.236
  %210 = load i32, i32* %k, align 4, !tbaa !5
  %inc238 = add nsw i32 %210, 1
  store i32 %inc238, i32* %k, align 4, !tbaa !5
  br label %for.cond.209

for.end.239:                                      ; preds = %for.cond.209
  br label %if.end.240

if.end.240:                                       ; preds = %for.end.239, %if.then.132
  %211 = bitcast i32* %alpha to i8*
  call void @llvm.lifetime.end(i64 4, i8* %211) #1
  %212 = bitcast i32* %alpha2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %212) #1
  br label %for.inc.241

for.inc.241:                                      ; preds = %if.end.240
  %213 = load i32, i32* %sx, align 4, !tbaa !5
  %inc242 = add nsw i32 %213, 1
  store i32 %inc242, i32* %sx, align 4, !tbaa !5
  %214 = load i32, i32* %rx, align 4, !tbaa !5
  %inc243 = add nsw i32 %214, 1
  store i32 %inc243, i32* %rx, align 4, !tbaa !5
  br label %for.cond.104

for.end.244:                                      ; preds = %for.cond.104
  %215 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs245 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %215, i32 0, i32 42
  %copy_planes246 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs245, i32 0, i32 66
  %216 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)** %copy_planes246, align 8, !tbaa !55
  %217 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %218 = load i32, i32* %gb_buff_start, align 4, !tbaa !5
  %idxprom247 = sext i32 %218 to i64
  %219 = load i8*, i8** %gb_buff, align 8, !tbaa !1
  %arrayidx248 = getelementptr inbounds i8, i8* %219, i64 %idxprom247
  %220 = load i32, i32* %out_raster, align 4, !tbaa !5
  %221 = load i32, i32* %x_curr, align 4, !tbaa !5
  %222 = load i32, i32* %ry, align 4, !tbaa !5
  %223 = load i32, i32* %w_curr, align 4, !tbaa !5
  %call249 = call i32 %216(%struct.gx_device_s* %217, i8* %arrayidx248, i32 0, i32 %220, i64 0, i32 %221, i32 %222, i32 %223, i32 1, i32 1) #3
  store i32 %call249, i32* %code, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.244, %if.then.98
  %224 = bitcast i32* %rx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %224) #1
  %225 = bitcast i32* %sx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %225) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.258 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.251

for.inc.251:                                      ; preds = %cleanup.cont
  %226 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %227 = load i8*, i8** %row_alpha, align 8, !tbaa !1
  %idx.ext252 = sext i32 %226 to i64
  %add.ptr253 = getelementptr inbounds i8, i8* %227, i64 %idx.ext252
  store i8* %add.ptr253, i8** %row_alpha, align 8, !tbaa !1
  %228 = load i32, i32* %ry, align 4, !tbaa !5
  %inc254 = add nsw i32 %228, 1
  store i32 %inc254, i32* %ry, align 4, !tbaa !5
  br label %for.cond.59

for.end.255:                                      ; preds = %for.cond.59
  %229 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs256 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %229, i32 0, i32 1
  %free_object257 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs256, i32 0, i32 2
  %230 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object257, align 8, !tbaa !54
  %231 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %232 = load i8*, i8** %gb_buff, align 8, !tbaa !1
  call void %230(%struct.gs_memory_s* %231, i8* %232, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0)) #3
  %233 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %233, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.258

cleanup.258:                                      ; preds = %for.end.255, %cleanup, %if.then.50, %if.then.36
  %234 = bitcast i8** %end_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %234) #1
  %235 = bitcast i32* %gb_buff_start to i8*
  call void @llvm.lifetime.end(i64 4, i8* %235) #1
  %236 = bitcast i32* %w_curr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %236) #1
  %237 = bitcast i32* %x_curr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %237) #1
  %238 = bitcast i8** %gb_buff to i8*
  call void @llvm.lifetime.end(i64 8, i8* %238) #1
  %239 = bitcast i16** %composite to i8*
  call void @llvm.lifetime.end(i64 8, i8* %239) #1
  %240 = bitcast i32* %word_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %240) #1
  %241 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %241) #1
  %242 = bitcast i64* %mask to i8*
  call void @llvm.lifetime.end(i64 8, i8* %242) #1
  %243 = bitcast i32* %byte_depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %243) #1
  %244 = bitcast %struct.gs_int_rect_s* %gb_rect to i8*
  call void @llvm.lifetime.end(i64 16, i8* %244) #1
  %245 = bitcast [64 x i8*]* %src_planes to i8*
  call void @llvm.lifetime.end(i64 512, i8* %245) #1
  %246 = bitcast %struct.gs_get_bits_params_s* %gb_params to i8*
  call void @llvm.lifetime.end(i64 536, i8* %246) #1
  %247 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %247) #1
  %248 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %248) #1
  %249 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.end(i64 4, i8* %249) #1
  %250 = bitcast [64 x i16]* %blend_cv to i8*
  call void @llvm.lifetime.end(i64 128, i8* %250) #1
  %251 = bitcast [64 x i16]* %curr_cv to i8*
  call void @llvm.lifetime.end(i64 128, i8* %251) #1
  %252 = bitcast [64 x i16]* %src_cv to i8*
  call void @llvm.lifetime.end(i64 128, i8* %252) #1
  %253 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %253) #1
  %254 = bitcast i32* %out_raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %254) #1
  %255 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %255) #1
  %256 = bitcast i32* %bpp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %256) #1
  %257 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %257) #1
  %258 = bitcast i8** %row_alpha to i8*
  call void @llvm.lifetime.end(i64 8, i8* %258) #1
  %259 = load i32, i32* %retval
  ret i32 %259
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_copy_alpha(%struct.gx_device_s* %dev, i8* %data, i32 %data_x, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %width, i32 %height, i64 %color, i32 %depth) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %data.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  %depth.addr = alloca i32, align 4
  %row = alloca i8*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %bpp = alloca i32, align 4
  %ncomps = alloca i32, align 4
  %in_size = alloca i32, align 4
  %lin = alloca i8*, align 8
  %out_size = alloca i32, align 4
  %lout = alloca i8*, align 8
  %code = alloca i32, align 4
  %color_cv = alloca [64 x i16], align 16
  %ry = alloca i32, align 4
  %lx = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %line = alloca i8*, align 8
  %sx = alloca i32, align 4
  %rx = alloca i32, align 4
  %l_dptr = alloca i8*, align 8
  %l_dbit = alloca i32, align 4
  %l_dbyte = alloca i8, align 1
  %l_xprev = alloca i32, align 4
  %previous = alloca i64, align 8
  %composite = alloca i64, align 8
  %alpha2 = alloca i32, align 4
  %alpha = alloca i32, align 4
  %code107 = alloca i32, align 4
  %cv = alloca [64 x i16], align 16
  %i = alloca i32, align 4
  %bit = alloca i32, align 4
  %src = alloca i8*, align 8
  %src165 = alloca i8*, align 8
  %code356 = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !7
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  store i64 %color, i64* %color.addr, align 8, !tbaa !7
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !5
  %0 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 42
  %copy_mono = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 9
  %2 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono, align 8, !tbaa !39
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %5 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %6 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %7 = load i64, i64* %id.addr, align 8, !tbaa !7
  %8 = load i32, i32* %x.addr, align 4, !tbaa !5
  %9 = load i32, i32* %y.addr, align 4, !tbaa !5
  %10 = load i32, i32* %width.addr, align 4, !tbaa !5
  %11 = load i32, i32* %height.addr, align 4, !tbaa !5
  %12 = load i64, i64* %color.addr, align 8, !tbaa !7
  %call = call i32 %2(%struct.gx_device_s* %3, i8* %4, i32 %5, i32 %6, i64 %7, i32 %8, i32 %9, i32 %10, i32 %11, i64 -1, i64 %12) #3
  store i32 %call, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %13 = bitcast i8** %row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %15, i32 0, i32 3
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !41
  store %struct.gs_memory_s* %16, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %17 = bitcast i32* %bpp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 11
  %depth1 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %19 = load i16, i16* %depth1, align 2, !tbaa !38
  %conv = zext i16 %19 to i32
  store i32 %conv, i32* %bpp, align 4, !tbaa !5
  %20 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %21, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info2, i32 0, i32 1
  %22 = load i32, i32* %num_components, align 4, !tbaa !42
  store i32 %22, i32* %ncomps, align 4, !tbaa !5
  %23 = bitcast i32* %in_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call3 = call i32 @gx_device_raster(%struct.gx_device_s* %24, i32 0) #3
  store i32 %call3, i32* %in_size, align 4, !tbaa !5
  %25 = bitcast i8** %lin to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  %26 = bitcast i32* %out_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %27 = bitcast i8** %lout to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #1
  %28 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %29 = bitcast [64 x i16]* %color_cv to i8*
  call void @llvm.lifetime.start(i64 128, i8* %29) #1
  %30 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  %31 = bitcast i32* %lx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.body.4

do.body.4:                                        ; preds = %do.body
  %32 = load i32, i32* %x.addr, align 4, !tbaa !5
  %33 = load i32, i32* %y.addr, align 4, !tbaa !5
  %or = or i32 %32, %33
  %cmp5 = icmp slt i32 %or, 0
  br i1 %cmp5, label %if.then.7, label %if.end.17

if.then.7:                                        ; preds = %do.body.4
  %34 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %34, 0
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.7
  %35 = load i32, i32* %x.addr, align 4, !tbaa !5
  %36 = load i32, i32* %width.addr, align 4, !tbaa !5
  %add = add nsw i32 %36, %35
  store i32 %add, i32* %width.addr, align 4, !tbaa !5
  %37 = load i32, i32* %x.addr, align 4, !tbaa !5
  %38 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %38, %37
  store i32 %sub, i32* %data_x.addr, align 4, !tbaa !5
  store i32 0, i32* %x.addr, align 4, !tbaa !5
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.then.7
  %39 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %39, 0
  br i1 %cmp12, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.11
  %40 = load i32, i32* %y.addr, align 4, !tbaa !5
  %41 = load i32, i32* %height.addr, align 4, !tbaa !5
  %add15 = add nsw i32 %41, %40
  store i32 %add15, i32* %height.addr, align 4, !tbaa !5
  %42 = load i32, i32* %y.addr, align 4, !tbaa !5
  %43 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %42, %43
  %44 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %mul to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %44, i64 %idx.neg
  store i8* %add.ptr, i8** %data.addr, align 8, !tbaa !1
  store i64 0, i64* %id.addr, align 8, !tbaa !7
  store i32 0, i32* %y.addr, align 4, !tbaa !5
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end.11
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %do.body.4
  %45 = load i32, i32* %width.addr, align 4, !tbaa !5
  %46 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %46, i32 0, i32 13
  %47 = load i32, i32* %width18, align 4, !tbaa !28
  %48 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub19 = sub nsw i32 %47, %48
  %cmp20 = icmp sgt i32 %45, %sub19
  br i1 %cmp20, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %if.end.17
  %49 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width23 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %49, i32 0, i32 13
  %50 = load i32, i32* %width23, align 4, !tbaa !28
  %51 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub24 = sub nsw i32 %50, %51
  store i32 %sub24, i32* %width.addr, align 4, !tbaa !5
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.22, %if.end.17
  br label %do.cond

do.cond:                                          ; preds = %if.end.25
  br label %do.end

do.end:                                           ; preds = %do.cond
  %52 = load i32, i32* %height.addr, align 4, !tbaa !5
  %53 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height26 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %53, i32 0, i32 14
  %54 = load i32, i32* %height26, align 4, !tbaa !29
  %55 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub27 = sub nsw i32 %54, %55
  %cmp28 = icmp sgt i32 %52, %sub27
  br i1 %cmp28, label %if.then.30, label %if.end.33

if.then.30:                                       ; preds = %do.end
  %56 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height31 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %56, i32 0, i32 14
  %57 = load i32, i32* %height31, align 4, !tbaa !29
  %58 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub32 = sub nsw i32 %57, %58
  store i32 %sub32, i32* %height.addr, align 4, !tbaa !5
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.30, %do.end
  %59 = load i32, i32* %width.addr, align 4, !tbaa !5
  %cmp34 = icmp sle i32 %59, 0
  br i1 %cmp34, label %if.then.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.33
  %60 = load i32, i32* %height.addr, align 4, !tbaa !5
  %cmp36 = icmp sle i32 %60, 0
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %lor.lhs.false, %if.end.33
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.397

if.end.39:                                        ; preds = %lor.lhs.false
  br label %do.cond.40

do.cond.40:                                       ; preds = %if.end.39
  br label %do.end.41

do.end.41:                                        ; preds = %do.cond.40
  %61 = load i8*, i8** %data.addr, align 8, !tbaa !1
  store i8* %61, i8** %row, align 8, !tbaa !1
  %62 = load i32, i32* %width.addr, align 4, !tbaa !5
  %63 = load i32, i32* %bpp, align 4, !tbaa !5
  %mul42 = mul nsw i32 %62, %63
  %add43 = add nsw i32 %mul42, 63
  %shr = ashr i32 %add43, 6
  %shl = shl i32 %shr, 3
  store i32 %shl, i32* %out_size, align 4, !tbaa !5
  %64 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs44 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %64, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs44, i32 0, i32 7
  %65 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !43
  %66 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %67 = load i32, i32* %in_size, align 4, !tbaa !5
  %call45 = call i8* %65(%struct.gs_memory_s* %66, i32 %67, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0)) #3
  store i8* %call45, i8** %lin, align 8, !tbaa !1
  %68 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs46 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %68, i32 0, i32 1
  %alloc_bytes47 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs46, i32 0, i32 7
  %69 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes47, align 8, !tbaa !43
  %70 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %71 = load i32, i32* %out_size, align 4, !tbaa !5
  %call48 = call i8* %69(%struct.gs_memory_s* %70, i32 %71, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0)) #3
  store i8* %call48, i8** %lout, align 8, !tbaa !1
  %72 = load i8*, i8** %lin, align 8, !tbaa !1
  %cmp49 = icmp eq i8* %72, null
  br i1 %cmp49, label %if.then.54, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %do.end.41
  %73 = load i8*, i8** %lout, align 8, !tbaa !1
  %cmp52 = icmp eq i8* %73, null
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %lor.lhs.false.51, %do.end.41
  store i32 -25, i32* %code, align 4, !tbaa !5
  br label %out

if.end.55:                                        ; preds = %lor.lhs.false.51
  %74 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs56 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %74, i32 0, i32 42
  %decode_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs56, i32 0, i32 52
  %75 = load i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)** %decode_color, align 8, !tbaa !56
  %76 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %77 = load i64, i64* %color.addr, align 8, !tbaa !7
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %color_cv, i32 0, i32 0
  %call57 = call i32 %75(%struct.gx_device_s* %76, i64 %77, i16* %arraydecay) #3
  %78 = load i32, i32* %y.addr, align 4, !tbaa !5
  store i32 %78, i32* %ry, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.389, %if.end.55
  %79 = load i32, i32* %ry, align 4, !tbaa !5
  %80 = load i32, i32* %y.addr, align 4, !tbaa !5
  %81 = load i32, i32* %height.addr, align 4, !tbaa !5
  %add58 = add nsw i32 %80, %81
  %cmp59 = icmp slt i32 %79, %add58
  br i1 %cmp59, label %for.body, label %for.end.393

for.body:                                         ; preds = %for.cond
  %82 = bitcast i8** %line to i8*
  call void @llvm.lifetime.start(i64 8, i8* %82) #1
  %83 = bitcast i32* %sx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %83) #1
  %84 = bitcast i32* %rx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %84) #1
  %85 = bitcast i8** %l_dptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %85) #1
  %86 = load i8*, i8** %lout, align 8, !tbaa !1
  store i8* %86, i8** %l_dptr, align 8, !tbaa !1
  %87 = bitcast i32* %l_dbit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %87) #1
  store i32 0, i32* %l_dbit, align 4, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %l_dbyte) #1
  %88 = load i32, i32* %l_dbit, align 4, !tbaa !5
  %tobool = icmp ne i32 %88, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %89 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %90 = load i8, i8* %89, align 1, !tbaa !40
  %conv61 = zext i8 %90 to i32
  %91 = load i32, i32* %l_dbit, align 4, !tbaa !5
  %shr62 = ashr i32 65280, %91
  %and = and i32 %conv61, %shr62
  %conv63 = trunc i32 %and to i8
  %conv64 = zext i8 %conv63 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv64, %cond.true ], [ 0, %cond.false ]
  %conv65 = trunc i32 %cond to i8
  store i8 %conv65, i8* %l_dbyte, align 1, !tbaa !40
  %92 = bitcast i32* %l_xprev to i8*
  call void @llvm.lifetime.start(i64 4, i8* %92) #1
  %93 = load i32, i32* %x.addr, align 4, !tbaa !5
  store i32 %93, i32* %l_xprev, align 4, !tbaa !5
  %94 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs66 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %94, i32 0, i32 42
  %get_bits = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs66, i32 0, i32 12
  %95 = load i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)** %get_bits, align 8, !tbaa !57
  %96 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %97 = load i32, i32* %ry, align 4, !tbaa !5
  %98 = load i8*, i8** %lin, align 8, !tbaa !1
  %call67 = call i32 %95(%struct.gx_device_s* %96, i32 %97, i8* %98, i8** %line) #3
  store i32 %call67, i32* %code, align 4, !tbaa !5
  %99 = load i32, i32* %code, align 4, !tbaa !5
  %cmp68 = icmp slt i32 %99, 0
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %cond.end
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup.380

if.end.71:                                        ; preds = %cond.end
  %100 = load i32, i32* %x.addr, align 4, !tbaa !5
  store i32 %100, i32* %lx, align 4, !tbaa !5
  %101 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  store i32 %101, i32* %sx, align 4, !tbaa !5
  %102 = load i32, i32* %x.addr, align 4, !tbaa !5
  store i32 %102, i32* %rx, align 4, !tbaa !5
  br label %for.cond.72

for.cond.72:                                      ; preds = %for.inc.349, %if.end.71
  %103 = load i32, i32* %sx, align 4, !tbaa !5
  %104 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %105 = load i32, i32* %width.addr, align 4, !tbaa !5
  %add73 = add nsw i32 %104, %105
  %cmp74 = icmp slt i32 %103, %add73
  br i1 %cmp74, label %for.body.76, label %for.end.352

for.body.76:                                      ; preds = %for.cond.72
  %106 = bitcast i64* %previous to i8*
  call void @llvm.lifetime.start(i64 8, i8* %106) #1
  store i64 -1, i64* %previous, align 8, !tbaa !7
  %107 = bitcast i64* %composite to i8*
  call void @llvm.lifetime.start(i64 8, i8* %107) #1
  %108 = bitcast i32* %alpha2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %108) #1
  %109 = bitcast i32* %alpha to i8*
  call void @llvm.lifetime.start(i64 4, i8* %109) #1
  %110 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %cmp77 = icmp eq i32 %110, 2
  br i1 %cmp77, label %if.then.79, label %if.else

if.then.79:                                       ; preds = %for.body.76
  %111 = load i32, i32* %sx, align 4, !tbaa !5
  %shr80 = ashr i32 %111, 2
  %idxprom = sext i32 %shr80 to i64
  %112 = load i8*, i8** %row, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %112, i64 %idxprom
  %113 = load i8, i8* %arrayidx, align 1, !tbaa !40
  %conv81 = zext i8 %113 to i32
  %114 = load i32, i32* %sx, align 4, !tbaa !5
  %and82 = and i32 %114, 3
  %sub83 = sub nsw i32 3, %and82
  %shl84 = shl i32 %sub83, 1
  %shr85 = ashr i32 %conv81, %shl84
  %and86 = and i32 %shr85, 3
  %mul87 = mul nsw i32 %and86, 5
  store i32 %mul87, i32* %alpha, align 4, !tbaa !5
  br label %if.end.100

if.else:                                          ; preds = %for.body.76
  %115 = load i32, i32* %sx, align 4, !tbaa !5
  %shr88 = ashr i32 %115, 1
  %idxprom89 = sext i32 %shr88 to i64
  %116 = load i8*, i8** %row, align 8, !tbaa !1
  %arrayidx90 = getelementptr inbounds i8, i8* %116, i64 %idxprom89
  %117 = load i8, i8* %arrayidx90, align 1, !tbaa !40
  %conv91 = zext i8 %117 to i32
  store i32 %conv91, i32* %alpha2, align 4, !tbaa !5
  %118 = load i32, i32* %sx, align 4, !tbaa !5
  %and92 = and i32 %118, 1
  %tobool93 = icmp ne i32 %and92, 0
  br i1 %tobool93, label %cond.true.94, label %cond.false.96

cond.true.94:                                     ; preds = %if.else
  %119 = load i32, i32* %alpha2, align 4, !tbaa !5
  %and95 = and i32 %119, 15
  br label %cond.end.98

cond.false.96:                                    ; preds = %if.else
  %120 = load i32, i32* %alpha2, align 4, !tbaa !5
  %shr97 = ashr i32 %120, 4
  br label %cond.end.98

cond.end.98:                                      ; preds = %cond.false.96, %cond.true.94
  %cond99 = phi i32 [ %and95, %cond.true.94 ], [ %shr97, %cond.false.96 ]
  store i32 %cond99, i32* %alpha, align 4, !tbaa !5
  br label %if.end.100

if.end.100:                                       ; preds = %cond.end.98, %if.then.79
  br label %blend

blend:                                            ; preds = %cleanup.248, %if.end.100
  %121 = load i32, i32* %alpha, align 4, !tbaa !5
  %cmp101 = icmp eq i32 %121, 0
  br i1 %cmp101, label %if.then.103, label %if.else.140

if.then.103:                                      ; preds = %blend
  %122 = load i32, i32* %rx, align 4, !tbaa !5
  %123 = load i32, i32* %l_xprev, align 4, !tbaa !5
  %cmp104 = icmp sgt i32 %122, %123
  br i1 %cmp104, label %if.then.106, label %if.end.126

if.then.106:                                      ; preds = %if.then.103
  %124 = bitcast i32* %code107 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %124) #1
  %125 = load i32, i32* %l_dbit, align 4, !tbaa !5
  %cmp108 = icmp ne i32 %125, 0
  br i1 %cmp108, label %if.then.110, label %if.end.117

if.then.110:                                      ; preds = %if.then.106
  %126 = load i8, i8* %l_dbyte, align 1, !tbaa !40
  %conv111 = zext i8 %126 to i32
  %127 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %128 = load i8, i8* %127, align 1, !tbaa !40
  %conv112 = zext i8 %128 to i32
  %129 = load i32, i32* %l_dbit, align 4, !tbaa !5
  %shr113 = ashr i32 255, %129
  %and114 = and i32 %conv112, %shr113
  %or115 = or i32 %conv111, %and114
  %conv116 = trunc i32 %or115 to i8
  %130 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv116, i8* %130, align 1, !tbaa !40
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.110, %if.then.106
  %131 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs118 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %131, i32 0, i32 42
  %copy_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs118, i32 0, i32 10
  %132 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %copy_color, align 8, !tbaa !58
  %133 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %134 = load i8*, i8** %lout, align 8, !tbaa !1
  %135 = load i32, i32* %l_xprev, align 4, !tbaa !5
  %136 = load i32, i32* %lx, align 4, !tbaa !5
  %sub119 = sub nsw i32 %135, %136
  %137 = load i32, i32* %out_size, align 4, !tbaa !5
  %138 = load i32, i32* %l_xprev, align 4, !tbaa !5
  %139 = load i32, i32* %ry, align 4, !tbaa !5
  %140 = load i32, i32* %rx, align 4, !tbaa !5
  %141 = load i32, i32* %l_xprev, align 4, !tbaa !5
  %sub120 = sub nsw i32 %140, %141
  %call121 = call i32 %132(%struct.gx_device_s* %133, i8* %134, i32 %sub119, i32 %137, i64 0, i32 %138, i32 %139, i32 %sub120, i32 1) #3
  store i32 %call121, i32* %code107, align 4, !tbaa !5
  %142 = load i32, i32* %code107, align 4, !tbaa !5
  %cmp122 = icmp slt i32 %142, 0
  br i1 %cmp122, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %if.end.117
  %143 = load i32, i32* %code107, align 4, !tbaa !5
  store i32 %143, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.125:                                       ; preds = %if.end.117
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.125, %if.then.124
  %144 = bitcast i32* %code107 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.343 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.126

if.end.126:                                       ; preds = %cleanup.cont, %if.then.103
  %145 = load i8*, i8** %lout, align 8, !tbaa !1
  store i8* %145, i8** %l_dptr, align 8, !tbaa !1
  store i32 0, i32* %l_dbit, align 4, !tbaa !5
  %146 = load i32, i32* %l_dbit, align 4, !tbaa !5
  %tobool127 = icmp ne i32 %146, 0
  br i1 %tobool127, label %cond.true.128, label %cond.false.134

cond.true.128:                                    ; preds = %if.end.126
  %147 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %148 = load i8, i8* %147, align 1, !tbaa !40
  %conv129 = zext i8 %148 to i32
  %149 = load i32, i32* %l_dbit, align 4, !tbaa !5
  %shr130 = ashr i32 65280, %149
  %and131 = and i32 %conv129, %shr130
  %conv132 = trunc i32 %and131 to i8
  %conv133 = zext i8 %conv132 to i32
  br label %cond.end.135

cond.false.134:                                   ; preds = %if.end.126
  br label %cond.end.135

cond.end.135:                                     ; preds = %cond.false.134, %cond.true.128
  %cond136 = phi i32 [ %conv133, %cond.true.128 ], [ 0, %cond.false.134 ]
  %conv137 = trunc i32 %cond136 to i8
  store i8 %conv137, i8* %l_dbyte, align 1, !tbaa !40
  %150 = load i32, i32* %rx, align 4, !tbaa !5
  %add138 = add nsw i32 %150, 1
  store i32 %add138, i32* %l_xprev, align 4, !tbaa !5
  %151 = load i32, i32* %rx, align 4, !tbaa !5
  %add139 = add nsw i32 %151, 1
  store i32 %add139, i32* %lx, align 4, !tbaa !5
  br label %if.end.342

if.else.140:                                      ; preds = %blend
  %152 = load i32, i32* %alpha, align 4, !tbaa !5
  %cmp141 = icmp eq i32 %152, 15
  br i1 %cmp141, label %if.then.143, label %if.else.144

if.then.143:                                      ; preds = %if.else.140
  %153 = load i64, i64* %color.addr, align 8, !tbaa !7
  store i64 %153, i64* %composite, align 8, !tbaa !7
  br label %if.end.252

if.else.144:                                      ; preds = %if.else.140
  %154 = bitcast [64 x i16]* %cv to i8*
  call void @llvm.lifetime.start(i64 128, i8* %154) #1
  %155 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %155) #1
  %156 = load i64, i64* %previous, align 8, !tbaa !7
  %cmp145 = icmp eq i64 %156, -1
  br i1 %cmp145, label %if.then.147, label %if.end.209

if.then.147:                                      ; preds = %if.else.144
  %157 = load i32, i32* %bpp, align 4, !tbaa !5
  %cmp148 = icmp slt i32 %157, 8
  br i1 %cmp148, label %if.then.150, label %if.else.164

if.then.150:                                      ; preds = %if.then.147
  %158 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %158) #1
  %159 = load i32, i32* %rx, align 4, !tbaa !5
  %160 = load i32, i32* %bpp, align 4, !tbaa !5
  %mul151 = mul nsw i32 %159, %160
  store i32 %mul151, i32* %bit, align 4, !tbaa !5
  %161 = bitcast i8** %src to i8*
  call void @llvm.lifetime.start(i64 8, i8* %161) #1
  %162 = load i8*, i8** %line, align 8, !tbaa !1
  %163 = load i32, i32* %bit, align 4, !tbaa !5
  %shr152 = lshr i32 %163, 3
  %idx.ext153 = zext i32 %shr152 to i64
  %add.ptr154 = getelementptr inbounds i8, i8* %162, i64 %idx.ext153
  store i8* %add.ptr154, i8** %src, align 8, !tbaa !1
  %164 = load i8*, i8** %src, align 8, !tbaa !1
  %165 = load i8, i8* %164, align 1, !tbaa !40
  %conv155 = zext i8 %165 to i32
  %166 = load i32, i32* %bit, align 4, !tbaa !5
  %and156 = and i32 %166, 7
  %167 = load i32, i32* %bpp, align 4, !tbaa !5
  %add157 = add i32 %and156, %167
  %sub158 = sub i32 8, %add157
  %shr159 = ashr i32 %conv155, %sub158
  %168 = load i32, i32* %bpp, align 4, !tbaa !5
  %shl160 = shl i32 1, %168
  %sub161 = sub nsw i32 %shl160, 1
  %and162 = and i32 %shr159, %sub161
  %conv163 = sext i32 %and162 to i64
  store i64 %conv163, i64* %previous, align 8, !tbaa !7
  %169 = bitcast i8** %src to i8*
  call void @llvm.lifetime.end(i64 8, i8* %169) #1
  %170 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %170) #1
  br label %if.end.208

if.else.164:                                      ; preds = %if.then.147
  %171 = bitcast i8** %src165 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %171) #1
  %172 = load i8*, i8** %line, align 8, !tbaa !1
  %173 = load i32, i32* %rx, align 4, !tbaa !5
  %174 = load i32, i32* %bpp, align 4, !tbaa !5
  %shr166 = ashr i32 %174, 3
  %mul167 = mul nsw i32 %173, %shr166
  %idx.ext168 = sext i32 %mul167 to i64
  %add.ptr169 = getelementptr inbounds i8, i8* %172, i64 %idx.ext168
  store i8* %add.ptr169, i8** %src165, align 8, !tbaa !1
  store i64 0, i64* %previous, align 8, !tbaa !7
  %175 = load i32, i32* %bpp, align 4, !tbaa !5
  %shr170 = ashr i32 %175, 3
  switch i32 %shr170, label %sw.epilog [
    i32 8, label %sw.bb
    i32 7, label %sw.bb.174
    i32 6, label %sw.bb.179
    i32 5, label %sw.bb.184
    i32 4, label %sw.bb.189
    i32 3, label %sw.bb.194
    i32 2, label %sw.bb.199
    i32 1, label %sw.bb.204
  ]

sw.bb:                                            ; preds = %if.else.164
  %176 = load i8*, i8** %src165, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %176, i32 1
  store i8* %incdec.ptr, i8** %src165, align 8, !tbaa !1
  %177 = load i8, i8* %176, align 1, !tbaa !40
  %conv171 = zext i8 %177 to i64
  %shl172 = shl i64 %conv171, 56
  %178 = load i64, i64* %previous, align 8, !tbaa !7
  %add173 = add i64 %178, %shl172
  store i64 %add173, i64* %previous, align 8, !tbaa !7
  br label %sw.bb.174

sw.bb.174:                                        ; preds = %if.else.164, %sw.bb
  %179 = load i8*, i8** %src165, align 8, !tbaa !1
  %incdec.ptr175 = getelementptr inbounds i8, i8* %179, i32 1
  store i8* %incdec.ptr175, i8** %src165, align 8, !tbaa !1
  %180 = load i8, i8* %179, align 1, !tbaa !40
  %conv176 = zext i8 %180 to i64
  %shl177 = shl i64 %conv176, 48
  %181 = load i64, i64* %previous, align 8, !tbaa !7
  %add178 = add i64 %181, %shl177
  store i64 %add178, i64* %previous, align 8, !tbaa !7
  br label %sw.bb.179

sw.bb.179:                                        ; preds = %if.else.164, %sw.bb.174
  %182 = load i8*, i8** %src165, align 8, !tbaa !1
  %incdec.ptr180 = getelementptr inbounds i8, i8* %182, i32 1
  store i8* %incdec.ptr180, i8** %src165, align 8, !tbaa !1
  %183 = load i8, i8* %182, align 1, !tbaa !40
  %conv181 = zext i8 %183 to i64
  %shl182 = shl i64 %conv181, 40
  %184 = load i64, i64* %previous, align 8, !tbaa !7
  %add183 = add i64 %184, %shl182
  store i64 %add183, i64* %previous, align 8, !tbaa !7
  br label %sw.bb.184

sw.bb.184:                                        ; preds = %if.else.164, %sw.bb.179
  %185 = load i8*, i8** %src165, align 8, !tbaa !1
  %incdec.ptr185 = getelementptr inbounds i8, i8* %185, i32 1
  store i8* %incdec.ptr185, i8** %src165, align 8, !tbaa !1
  %186 = load i8, i8* %185, align 1, !tbaa !40
  %conv186 = zext i8 %186 to i64
  %shl187 = shl i64 %conv186, 32
  %187 = load i64, i64* %previous, align 8, !tbaa !7
  %add188 = add i64 %187, %shl187
  store i64 %add188, i64* %previous, align 8, !tbaa !7
  br label %sw.bb.189

sw.bb.189:                                        ; preds = %if.else.164, %sw.bb.184
  %188 = load i8*, i8** %src165, align 8, !tbaa !1
  %incdec.ptr190 = getelementptr inbounds i8, i8* %188, i32 1
  store i8* %incdec.ptr190, i8** %src165, align 8, !tbaa !1
  %189 = load i8, i8* %188, align 1, !tbaa !40
  %conv191 = zext i8 %189 to i64
  %shl192 = shl i64 %conv191, 24
  %190 = load i64, i64* %previous, align 8, !tbaa !7
  %add193 = add i64 %190, %shl192
  store i64 %add193, i64* %previous, align 8, !tbaa !7
  br label %sw.bb.194

sw.bb.194:                                        ; preds = %if.else.164, %sw.bb.189
  %191 = load i8*, i8** %src165, align 8, !tbaa !1
  %incdec.ptr195 = getelementptr inbounds i8, i8* %191, i32 1
  store i8* %incdec.ptr195, i8** %src165, align 8, !tbaa !1
  %192 = load i8, i8* %191, align 1, !tbaa !40
  %conv196 = zext i8 %192 to i64
  %shl197 = shl i64 %conv196, 16
  %193 = load i64, i64* %previous, align 8, !tbaa !7
  %add198 = add i64 %193, %shl197
  store i64 %add198, i64* %previous, align 8, !tbaa !7
  br label %sw.bb.199

sw.bb.199:                                        ; preds = %if.else.164, %sw.bb.194
  %194 = load i8*, i8** %src165, align 8, !tbaa !1
  %incdec.ptr200 = getelementptr inbounds i8, i8* %194, i32 1
  store i8* %incdec.ptr200, i8** %src165, align 8, !tbaa !1
  %195 = load i8, i8* %194, align 1, !tbaa !40
  %conv201 = zext i8 %195 to i64
  %shl202 = shl i64 %conv201, 8
  %196 = load i64, i64* %previous, align 8, !tbaa !7
  %add203 = add i64 %196, %shl202
  store i64 %add203, i64* %previous, align 8, !tbaa !7
  br label %sw.bb.204

sw.bb.204:                                        ; preds = %if.else.164, %sw.bb.199
  %197 = load i8*, i8** %src165, align 8, !tbaa !1
  %incdec.ptr205 = getelementptr inbounds i8, i8* %197, i32 1
  store i8* %incdec.ptr205, i8** %src165, align 8, !tbaa !1
  %198 = load i8, i8* %197, align 1, !tbaa !40
  %conv206 = zext i8 %198 to i64
  %199 = load i64, i64* %previous, align 8, !tbaa !7
  %add207 = add i64 %199, %conv206
  store i64 %add207, i64* %previous, align 8, !tbaa !7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.204, %if.else.164
  %200 = bitcast i8** %src165 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %200) #1
  br label %if.end.208

if.end.208:                                       ; preds = %sw.epilog, %if.then.150
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.208, %if.else.144
  %201 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs210 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %201, i32 0, i32 42
  %decode_color211 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs210, i32 0, i32 52
  %202 = load i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)** %decode_color211, align 8, !tbaa !56
  %203 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %204 = load i64, i64* %previous, align 8, !tbaa !7
  %arraydecay212 = getelementptr inbounds [64 x i16], [64 x i16]* %cv, i32 0, i32 0
  %call213 = call i32 %202(%struct.gx_device_s* %203, i64 %204, i16* %arraydecay212) #3
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.214

for.cond.214:                                     ; preds = %for.inc, %if.end.209
  %205 = load i32, i32* %i, align 4, !tbaa !5
  %206 = load i32, i32* %ncomps, align 4, !tbaa !5
  %cmp215 = icmp slt i32 %205, %206
  br i1 %cmp215, label %for.body.217, label %for.end

for.body.217:                                     ; preds = %for.cond.214
  %207 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom218 = sext i32 %207 to i64
  %arrayidx219 = getelementptr inbounds [64 x i16], [64 x i16]* %cv, i32 0, i64 %idxprom218
  %208 = load i16, i16* %arrayidx219, align 2, !tbaa !10
  %conv220 = zext i16 %208 to i32
  %209 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom221 = sext i32 %209 to i64
  %arrayidx222 = getelementptr inbounds [64 x i16], [64 x i16]* %color_cv, i32 0, i64 %idxprom221
  %210 = load i16, i16* %arrayidx222, align 2, !tbaa !10
  %conv223 = zext i16 %210 to i32
  %211 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom224 = sext i32 %211 to i64
  %arrayidx225 = getelementptr inbounds [64 x i16], [64 x i16]* %cv, i32 0, i64 %idxprom224
  %212 = load i16, i16* %arrayidx225, align 2, !tbaa !10
  %conv226 = zext i16 %212 to i32
  %sub227 = sub nsw i32 %conv223, %conv226
  %213 = load i32, i32* %alpha, align 4, !tbaa !5
  %mul228 = mul nsw i32 %sub227, %213
  %div = sdiv i32 %mul228, 15
  %add229 = add nsw i32 %conv220, %div
  %conv230 = trunc i32 %add229 to i16
  %214 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom231 = sext i32 %214 to i64
  %arrayidx232 = getelementptr inbounds [64 x i16], [64 x i16]* %cv, i32 0, i64 %idxprom231
  store i16 %conv230, i16* %arrayidx232, align 2, !tbaa !10
  br label %for.inc

for.inc:                                          ; preds = %for.body.217
  %215 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %215, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond.214

for.end:                                          ; preds = %for.cond.214
  %216 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs233 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %216, i32 0, i32 42
  %encode_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs233, i32 0, i32 51
  %217 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color, align 8, !tbaa !59
  %218 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay234 = getelementptr inbounds [64 x i16], [64 x i16]* %cv, i32 0, i32 0
  %call235 = call i64 %217(%struct.gx_device_s* %218, i16* %arraydecay234) #3
  store i64 %call235, i64* %composite, align 8, !tbaa !7
  %219 = load i64, i64* %composite, align 8, !tbaa !7
  %cmp236 = icmp eq i64 %219, -1
  br i1 %cmp236, label %if.then.238, label %if.end.247

if.then.238:                                      ; preds = %for.end
  %220 = load i32, i32* %alpha, align 4, !tbaa !5
  %cmp239 = icmp eq i32 %220, 7
  br i1 %cmp239, label %if.then.241, label %if.end.243

if.then.241:                                      ; preds = %if.then.238
  %221 = load i32, i32* %alpha, align 4, !tbaa !5
  %inc242 = add nsw i32 %221, 1
  store i32 %inc242, i32* %alpha, align 4, !tbaa !5
  br label %if.end.243

if.end.243:                                       ; preds = %if.then.241, %if.then.238
  %222 = load i32, i32* %alpha, align 4, !tbaa !5
  %and244 = and i32 %222, 8
  %223 = load i32, i32* %alpha, align 4, !tbaa !5
  %shr245 = ashr i32 %223, 1
  %or246 = or i32 %and244, %shr245
  store i32 %or246, i32* %alpha, align 4, !tbaa !5
  store i32 13, i32* %cleanup.dest.slot
  br label %cleanup.248

if.end.247:                                       ; preds = %for.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.248

cleanup.248:                                      ; preds = %if.end.247, %if.end.243
  %224 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %224) #1
  %225 = bitcast [64 x i16]* %cv to i8*
  call void @llvm.lifetime.end(i64 128, i8* %225) #1
  %cleanup.dest.250 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.250, label %unreachable [
    i32 0, label %cleanup.cont.251
    i32 13, label %blend
  ]

cleanup.cont.251:                                 ; preds = %cleanup.248
  br label %if.end.252

if.end.252:                                       ; preds = %cleanup.cont.251, %if.then.143
  br label %do.body.253

do.body.253:                                      ; preds = %if.end.252
  %226 = load i32, i32* %bpp, align 4, !tbaa !5
  %shr254 = ashr i32 %226, 2
  switch i32 %shr254, label %sw.default [
    i32 0, label %sw.bb.255
    i32 1, label %sw.bb.275
    i32 3, label %sw.bb.288
    i32 16, label %sw.bb.308
    i32 14, label %sw.bb.312
    i32 12, label %sw.bb.316
    i32 10, label %sw.bb.320
    i32 8, label %sw.bb.324
    i32 6, label %sw.bb.328
    i32 4, label %sw.bb.332
    i32 2, label %sw.bb.336
  ]

sw.bb.255:                                        ; preds = %do.body.253
  %227 = load i32, i32* %bpp, align 4, !tbaa !5
  %228 = load i32, i32* %l_dbit, align 4, !tbaa !5
  %add256 = add nsw i32 %228, %227
  store i32 %add256, i32* %l_dbit, align 4, !tbaa !5
  %cmp257 = icmp eq i32 %add256, 8
  br i1 %cmp257, label %if.then.259, label %if.else.266

if.then.259:                                      ; preds = %sw.bb.255
  %229 = load i8, i8* %l_dbyte, align 1, !tbaa !40
  %conv260 = zext i8 %229 to i32
  %230 = load i64, i64* %composite, align 8, !tbaa !7
  %conv261 = trunc i64 %230 to i8
  %conv262 = zext i8 %conv261 to i32
  %or263 = or i32 %conv260, %conv262
  %conv264 = trunc i32 %or263 to i8
  %231 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr265 = getelementptr inbounds i8, i8* %231, i32 1
  store i8* %incdec.ptr265, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv264, i8* %231, align 1, !tbaa !40
  store i8 0, i8* %l_dbyte, align 1, !tbaa !40
  store i32 0, i32* %l_dbit, align 4, !tbaa !5
  br label %if.end.274

if.else.266:                                      ; preds = %sw.bb.255
  %232 = load i64, i64* %composite, align 8, !tbaa !7
  %233 = load i32, i32* %l_dbit, align 4, !tbaa !5
  %sub267 = sub nsw i32 8, %233
  %sh_prom = zext i32 %sub267 to i64
  %shl268 = shl i64 %232, %sh_prom
  %conv269 = trunc i64 %shl268 to i8
  %conv270 = zext i8 %conv269 to i32
  %234 = load i8, i8* %l_dbyte, align 1, !tbaa !40
  %conv271 = zext i8 %234 to i32
  %or272 = or i32 %conv271, %conv270
  %conv273 = trunc i32 %or272 to i8
  store i8 %conv273, i8* %l_dbyte, align 1, !tbaa !40
  br label %if.end.274

if.end.274:                                       ; preds = %if.else.266, %if.then.259
  br label %sw.epilog.339

sw.bb.275:                                        ; preds = %do.body.253
  %235 = load i32, i32* %l_dbit, align 4, !tbaa !5
  %xor = xor i32 %235, 4
  store i32 %xor, i32* %l_dbit, align 4, !tbaa !5
  %tobool276 = icmp ne i32 %xor, 0
  br i1 %tobool276, label %if.then.277, label %if.else.280

if.then.277:                                      ; preds = %sw.bb.275
  %236 = load i64, i64* %composite, align 8, !tbaa !7
  %shl278 = shl i64 %236, 4
  %conv279 = trunc i64 %shl278 to i8
  store i8 %conv279, i8* %l_dbyte, align 1, !tbaa !40
  br label %if.end.287

if.else.280:                                      ; preds = %sw.bb.275
  %237 = load i8, i8* %l_dbyte, align 1, !tbaa !40
  %conv281 = zext i8 %237 to i32
  %238 = load i64, i64* %composite, align 8, !tbaa !7
  %conv282 = trunc i64 %238 to i8
  %conv283 = zext i8 %conv282 to i32
  %or284 = or i32 %conv281, %conv283
  %conv285 = trunc i32 %or284 to i8
  %239 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr286 = getelementptr inbounds i8, i8* %239, i32 1
  store i8* %incdec.ptr286, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv285, i8* %239, align 1, !tbaa !40
  br label %if.end.287

if.end.287:                                       ; preds = %if.else.280, %if.then.277
  br label %sw.epilog.339

sw.bb.288:                                        ; preds = %do.body.253
  %240 = load i32, i32* %l_dbit, align 4, !tbaa !5
  %xor289 = xor i32 %240, 4
  store i32 %xor289, i32* %l_dbit, align 4, !tbaa !5
  %tobool290 = icmp ne i32 %xor289, 0
  br i1 %tobool290, label %if.then.291, label %if.else.297

if.then.291:                                      ; preds = %sw.bb.288
  %241 = load i64, i64* %composite, align 8, !tbaa !7
  %shr292 = lshr i64 %241, 4
  %conv293 = trunc i64 %shr292 to i8
  %242 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr294 = getelementptr inbounds i8, i8* %242, i32 1
  store i8* %incdec.ptr294, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv293, i8* %242, align 1, !tbaa !40
  %243 = load i64, i64* %composite, align 8, !tbaa !7
  %shl295 = shl i64 %243, 4
  %conv296 = trunc i64 %shl295 to i8
  store i8 %conv296, i8* %l_dbyte, align 1, !tbaa !40
  br label %if.end.307

if.else.297:                                      ; preds = %sw.bb.288
  %244 = load i8, i8* %l_dbyte, align 1, !tbaa !40
  %conv298 = zext i8 %244 to i32
  %245 = load i64, i64* %composite, align 8, !tbaa !7
  %shr299 = lshr i64 %245, 8
  %conv300 = trunc i64 %shr299 to i8
  %conv301 = zext i8 %conv300 to i32
  %or302 = or i32 %conv298, %conv301
  %conv303 = trunc i32 %or302 to i8
  %246 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv303, i8* %246, align 1, !tbaa !40
  %247 = load i64, i64* %composite, align 8, !tbaa !7
  %conv304 = trunc i64 %247 to i8
  %248 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %arrayidx305 = getelementptr inbounds i8, i8* %248, i64 1
  store i8 %conv304, i8* %arrayidx305, align 1, !tbaa !40
  %249 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %add.ptr306 = getelementptr inbounds i8, i8* %249, i64 2
  store i8* %add.ptr306, i8** %l_dptr, align 8, !tbaa !1
  br label %if.end.307

if.end.307:                                       ; preds = %if.else.297, %if.then.291
  br label %sw.epilog.339

sw.bb.308:                                        ; preds = %do.body.253
  %250 = load i64, i64* %composite, align 8, !tbaa !7
  %shr309 = lshr i64 %250, 56
  %conv310 = trunc i64 %shr309 to i8
  %251 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr311 = getelementptr inbounds i8, i8* %251, i32 1
  store i8* %incdec.ptr311, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv310, i8* %251, align 1, !tbaa !40
  br label %sw.bb.312

sw.bb.312:                                        ; preds = %do.body.253, %sw.bb.308
  %252 = load i64, i64* %composite, align 8, !tbaa !7
  %shr313 = lshr i64 %252, 48
  %conv314 = trunc i64 %shr313 to i8
  %253 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr315 = getelementptr inbounds i8, i8* %253, i32 1
  store i8* %incdec.ptr315, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv314, i8* %253, align 1, !tbaa !40
  br label %sw.bb.316

sw.bb.316:                                        ; preds = %do.body.253, %sw.bb.312
  %254 = load i64, i64* %composite, align 8, !tbaa !7
  %shr317 = lshr i64 %254, 40
  %conv318 = trunc i64 %shr317 to i8
  %255 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr319 = getelementptr inbounds i8, i8* %255, i32 1
  store i8* %incdec.ptr319, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv318, i8* %255, align 1, !tbaa !40
  br label %sw.bb.320

sw.bb.320:                                        ; preds = %do.body.253, %sw.bb.316
  %256 = load i64, i64* %composite, align 8, !tbaa !7
  %shr321 = lshr i64 %256, 32
  %conv322 = trunc i64 %shr321 to i8
  %257 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr323 = getelementptr inbounds i8, i8* %257, i32 1
  store i8* %incdec.ptr323, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv322, i8* %257, align 1, !tbaa !40
  br label %sw.bb.324

sw.bb.324:                                        ; preds = %do.body.253, %sw.bb.320
  %258 = load i64, i64* %composite, align 8, !tbaa !7
  %shr325 = lshr i64 %258, 24
  %conv326 = trunc i64 %shr325 to i8
  %259 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr327 = getelementptr inbounds i8, i8* %259, i32 1
  store i8* %incdec.ptr327, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv326, i8* %259, align 1, !tbaa !40
  br label %sw.bb.328

sw.bb.328:                                        ; preds = %do.body.253, %sw.bb.324
  %260 = load i64, i64* %composite, align 8, !tbaa !7
  %shr329 = lshr i64 %260, 16
  %conv330 = trunc i64 %shr329 to i8
  %261 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr331 = getelementptr inbounds i8, i8* %261, i32 1
  store i8* %incdec.ptr331, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv330, i8* %261, align 1, !tbaa !40
  br label %sw.bb.332

sw.bb.332:                                        ; preds = %do.body.253, %sw.bb.328
  %262 = load i64, i64* %composite, align 8, !tbaa !7
  %shr333 = lshr i64 %262, 8
  %conv334 = trunc i64 %shr333 to i8
  %263 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr335 = getelementptr inbounds i8, i8* %263, i32 1
  store i8* %incdec.ptr335, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv334, i8* %263, align 1, !tbaa !40
  br label %sw.bb.336

sw.bb.336:                                        ; preds = %do.body.253, %sw.bb.332
  %264 = load i64, i64* %composite, align 8, !tbaa !7
  %conv337 = trunc i64 %264 to i8
  %265 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %incdec.ptr338 = getelementptr inbounds i8, i8* %265, i32 1
  store i8* %incdec.ptr338, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv337, i8* %265, align 1, !tbaa !40
  br label %sw.epilog.339

sw.default:                                       ; preds = %do.body.253
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.343

sw.epilog.339:                                    ; preds = %sw.bb.336, %if.end.307, %if.end.287, %if.end.274
  br label %do.cond.340

do.cond.340:                                      ; preds = %sw.epilog.339
  br label %do.end.341

do.end.341:                                       ; preds = %do.cond.340
  br label %if.end.342

if.end.342:                                       ; preds = %do.end.341, %cond.end.135
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.343

cleanup.343:                                      ; preds = %if.end.342, %sw.default, %cleanup
  %266 = bitcast i32* %alpha to i8*
  call void @llvm.lifetime.end(i64 4, i8* %266) #1
  %267 = bitcast i32* %alpha2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %267) #1
  %268 = bitcast i64* %composite to i8*
  call void @llvm.lifetime.end(i64 8, i8* %268) #1
  %269 = bitcast i64* %previous to i8*
  call void @llvm.lifetime.end(i64 8, i8* %269) #1
  %cleanup.dest.347 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.347, label %cleanup.380 [
    i32 0, label %cleanup.cont.348
  ]

cleanup.cont.348:                                 ; preds = %cleanup.343
  br label %for.inc.349

for.inc.349:                                      ; preds = %cleanup.cont.348
  %270 = load i32, i32* %sx, align 4, !tbaa !5
  %inc350 = add nsw i32 %270, 1
  store i32 %inc350, i32* %sx, align 4, !tbaa !5
  %271 = load i32, i32* %rx, align 4, !tbaa !5
  %inc351 = add nsw i32 %271, 1
  store i32 %inc351, i32* %rx, align 4, !tbaa !5
  br label %for.cond.72

for.end.352:                                      ; preds = %for.cond.72
  %272 = load i32, i32* %rx, align 4, !tbaa !5
  %273 = load i32, i32* %l_xprev, align 4, !tbaa !5
  %cmp353 = icmp sgt i32 %272, %273
  br i1 %cmp353, label %if.then.355, label %if.end.379

if.then.355:                                      ; preds = %for.end.352
  %274 = bitcast i32* %code356 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %274) #1
  %275 = load i32, i32* %l_dbit, align 4, !tbaa !5
  %cmp357 = icmp ne i32 %275, 0
  br i1 %cmp357, label %if.then.359, label %if.end.366

if.then.359:                                      ; preds = %if.then.355
  %276 = load i8, i8* %l_dbyte, align 1, !tbaa !40
  %conv360 = zext i8 %276 to i32
  %277 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  %278 = load i8, i8* %277, align 1, !tbaa !40
  %conv361 = zext i8 %278 to i32
  %279 = load i32, i32* %l_dbit, align 4, !tbaa !5
  %shr362 = ashr i32 255, %279
  %and363 = and i32 %conv361, %shr362
  %or364 = or i32 %conv360, %and363
  %conv365 = trunc i32 %or364 to i8
  %280 = load i8*, i8** %l_dptr, align 8, !tbaa !1
  store i8 %conv365, i8* %280, align 1, !tbaa !40
  br label %if.end.366

if.end.366:                                       ; preds = %if.then.359, %if.then.355
  %281 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs367 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %281, i32 0, i32 42
  %copy_color368 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs367, i32 0, i32 10
  %282 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %copy_color368, align 8, !tbaa !58
  %283 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %284 = load i8*, i8** %lout, align 8, !tbaa !1
  %285 = load i32, i32* %l_xprev, align 4, !tbaa !5
  %286 = load i32, i32* %lx, align 4, !tbaa !5
  %sub369 = sub nsw i32 %285, %286
  %287 = load i32, i32* %out_size, align 4, !tbaa !5
  %288 = load i32, i32* %l_xprev, align 4, !tbaa !5
  %289 = load i32, i32* %ry, align 4, !tbaa !5
  %290 = load i32, i32* %rx, align 4, !tbaa !5
  %291 = load i32, i32* %l_xprev, align 4, !tbaa !5
  %sub370 = sub nsw i32 %290, %291
  %call371 = call i32 %282(%struct.gx_device_s* %283, i8* %284, i32 %sub369, i32 %287, i64 0, i32 %288, i32 %289, i32 %sub370, i32 1) #3
  store i32 %call371, i32* %code356, align 4, !tbaa !5
  %292 = load i32, i32* %code356, align 4, !tbaa !5
  %cmp372 = icmp slt i32 %292, 0
  br i1 %cmp372, label %if.then.374, label %if.end.375

if.then.374:                                      ; preds = %if.end.366
  %293 = load i32, i32* %code356, align 4, !tbaa !5
  store i32 %293, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.376

if.end.375:                                       ; preds = %if.end.366
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.376

cleanup.376:                                      ; preds = %if.end.375, %if.then.374
  %294 = bitcast i32* %code356 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %294) #1
  %cleanup.dest.377 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.377, label %cleanup.380 [
    i32 0, label %cleanup.cont.378
  ]

cleanup.cont.378:                                 ; preds = %cleanup.376
  br label %if.end.379

if.end.379:                                       ; preds = %cleanup.cont.378, %for.end.352
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.380

cleanup.380:                                      ; preds = %if.end.379, %cleanup.376, %cleanup.343, %if.then.70
  %295 = bitcast i32* %l_xprev to i8*
  call void @llvm.lifetime.end(i64 4, i8* %295) #1
  call void @llvm.lifetime.end(i64 1, i8* %l_dbyte) #1
  %296 = bitcast i32* %l_dbit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %296) #1
  %297 = bitcast i8** %l_dptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %297) #1
  %298 = bitcast i32* %rx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %298) #1
  %299 = bitcast i32* %sx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %299) #1
  %300 = bitcast i8** %line to i8*
  call void @llvm.lifetime.end(i64 8, i8* %300) #1
  %cleanup.dest.387 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.387, label %cleanup.397 [
    i32 0, label %cleanup.cont.388
    i32 7, label %for.end.393
  ]

cleanup.cont.388:                                 ; preds = %cleanup.380
  br label %for.inc.389

for.inc.389:                                      ; preds = %cleanup.cont.388
  %301 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %302 = load i8*, i8** %row, align 8, !tbaa !1
  %idx.ext390 = sext i32 %301 to i64
  %add.ptr391 = getelementptr inbounds i8, i8* %302, i64 %idx.ext390
  store i8* %add.ptr391, i8** %row, align 8, !tbaa !1
  %303 = load i32, i32* %ry, align 4, !tbaa !5
  %inc392 = add nsw i32 %303, 1
  store i32 %inc392, i32* %ry, align 4, !tbaa !5
  br label %for.cond

for.end.393:                                      ; preds = %cleanup.380, %for.cond
  br label %out

out:                                              ; preds = %for.end.393, %if.then.54
  %304 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs394 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %304, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs394, i32 0, i32 2
  %305 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !54
  %306 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %307 = load i8*, i8** %lout, align 8, !tbaa !1
  call void %305(%struct.gs_memory_s* %306, i8* %307, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0)) #3
  %308 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs395 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %308, i32 0, i32 1
  %free_object396 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs395, i32 0, i32 2
  %309 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object396, align 8, !tbaa !54
  %310 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %311 = load i8*, i8** %lin, align 8, !tbaa !1
  call void %309(%struct.gs_memory_s* %310, i8* %311, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0)) #3
  %312 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %312, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.397

cleanup.397:                                      ; preds = %out, %cleanup.380, %if.then.38
  %313 = bitcast i32* %lx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %313) #1
  %314 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.end(i64 4, i8* %314) #1
  %315 = bitcast [64 x i16]* %color_cv to i8*
  call void @llvm.lifetime.end(i64 128, i8* %315) #1
  %316 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %316) #1
  %317 = bitcast i8** %lout to i8*
  call void @llvm.lifetime.end(i64 8, i8* %317) #1
  %318 = bitcast i32* %out_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %318) #1
  %319 = bitcast i8** %lin to i8*
  call void @llvm.lifetime.end(i64 8, i8* %319) #1
  %320 = bitcast i32* %in_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %320) #1
  %321 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %321) #1
  %322 = bitcast i32* %bpp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %322) #1
  %323 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %323) #1
  %324 = bitcast i8** %row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %324) #1
  br label %return

return:                                           ; preds = %cleanup.397, %if.then
  %325 = load i32, i32* %retval
  ret i32 %325

unreachable:                                      ; preds = %cleanup.248
  unreachable
}

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @gx_no_copy_rop(%struct.gx_device_s* %dev, i8* %sdata, i32 %sourcex, i32 %sraster, i64 %id, i64* %scolors, %struct.gx_tile_bitmap_s* %texture, i64* %tcolors, i32 %x, i32 %y, i32 %width, i32 %height, i32 %phase_x, i32 %phase_y, i32 %lop) #0 {
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
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_fill_mask(%struct.gx_device_s* %orig_dev, i8* %data, i32 %dx, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, %struct.gx_device_color_s* %pdcolor, i32 %depth, i32 %lop, %struct.gx_clip_path_s* %pcpath) #0 {
entry:
  %retval = alloca i32, align 4
  %orig_dev.addr = alloca %struct.gx_device_s*, align 8
  %data.addr = alloca i8*, align 8
  %dx.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %depth.addr = alloca i32, align 4
  %lop.addr = alloca i32, align 4
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  %cdev = alloca %struct.gx_device_clip_s, align 8
  %cleanup.dest.slot = alloca i32
  %rect = alloca %struct.gs_fixed_rect_s, align 4
  %tmp = alloca i32, align 4
  store %struct.gx_device_s* %orig_dev, %struct.gx_device_s** %orig_dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %dx, i32* %dx.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !7
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !5
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !5
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %orig_dev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %1, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_clip_s* %cdev to i8*
  call void @llvm.lifetime.start(i64 1856, i8* %2) #1
  %3 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp1 = icmp eq i32 %4, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.52

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %cmp2 = icmp ne %struct.gx_clip_path_s* %5, null
  br i1 %cmp2, label %if.then.3, label %if.end.47

if.then.3:                                        ; preds = %if.end
  %6 = bitcast %struct.gs_fixed_rect_s* %rect to i8*
  call void @llvm.lifetime.start(i64 16, i8* %6) #1
  %7 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i32, i32* %x.addr, align 4, !tbaa !5
  %shl = shl i32 %8, 8
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %rect, i32 0, i32 0
  %x4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  store i32 %shl, i32* %x4, align 4, !tbaa !60
  %9 = load i32, i32* %y.addr, align 4, !tbaa !5
  %shl5 = shl i32 %9, 8
  %p6 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %rect, i32 0, i32 0
  %y7 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p6, i32 0, i32 1
  store i32 %shl5, i32* %y7, align 4, !tbaa !63
  %10 = load i32, i32* %x.addr, align 4, !tbaa !5
  %11 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add = add nsw i32 %10, %11
  %shl8 = shl i32 %add, 8
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %rect, i32 0, i32 1
  %x9 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  store i32 %shl8, i32* %x9, align 4, !tbaa !64
  %12 = load i32, i32* %y.addr, align 4, !tbaa !5
  %13 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add10 = add nsw i32 %12, %13
  %shl11 = shl i32 %add10, 8
  %q12 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %rect, i32 0, i32 1
  %y13 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q12, i32 0, i32 1
  store i32 %shl11, i32* %y13, align 4, !tbaa !65
  %14 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %call = call %struct.gx_device_s* @gx_make_clip_device_on_stack_if_needed(%struct.gx_device_clip_s* %cdev, %struct.gx_clip_path_s* %14, %struct.gx_device_s* %15, %struct.gs_fixed_rect_s* %rect) #3
  store %struct.gx_device_s* %call, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %cmp14 = icmp eq %struct.gx_device_s* %16, null
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.3
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.then.3
  %p17 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %rect, i32 0, i32 0
  %x18 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p17, i32 0, i32 0
  %17 = load i32, i32* %x18, align 4, !tbaa !60
  %shr = ashr i32 %17, 8
  store i32 %shr, i32* %tmp, align 4, !tbaa !5
  %18 = load i32, i32* %tmp, align 4, !tbaa !5
  %19 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp19 = icmp sgt i32 %18, %19
  br i1 %cmp19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end.16
  %20 = load i32, i32* %tmp, align 4, !tbaa !5
  %21 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %20, %21
  %22 = load i32, i32* %dx.addr, align 4, !tbaa !5
  %add21 = add nsw i32 %22, %sub
  store i32 %add21, i32* %dx.addr, align 4, !tbaa !5
  %23 = load i32, i32* %tmp, align 4, !tbaa !5
  store i32 %23, i32* %x.addr, align 4, !tbaa !5
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.end.16
  %q23 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %rect, i32 0, i32 1
  %x24 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q23, i32 0, i32 0
  %24 = load i32, i32* %x24, align 4, !tbaa !64
  %shr25 = ashr i32 %24, 8
  store i32 %shr25, i32* %tmp, align 4, !tbaa !5
  %25 = load i32, i32* %tmp, align 4, !tbaa !5
  %26 = load i32, i32* %x.addr, align 4, !tbaa !5
  %27 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add26 = add nsw i32 %26, %27
  %cmp27 = icmp slt i32 %25, %add26
  br i1 %cmp27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %if.end.22
  %28 = load i32, i32* %tmp, align 4, !tbaa !5
  %29 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub29 = sub nsw i32 %28, %29
  store i32 %sub29, i32* %w.addr, align 4, !tbaa !5
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %if.end.22
  %p31 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %rect, i32 0, i32 0
  %y32 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p31, i32 0, i32 1
  %30 = load i32, i32* %y32, align 4, !tbaa !63
  %shr33 = ashr i32 %30, 8
  store i32 %shr33, i32* %tmp, align 4, !tbaa !5
  %31 = load i32, i32* %tmp, align 4, !tbaa !5
  %32 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp34 = icmp sgt i32 %31, %32
  br i1 %cmp34, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %if.end.30
  %33 = load i32, i32* %tmp, align 4, !tbaa !5
  %34 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub36 = sub nsw i32 %33, %34
  %35 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %sub36, %35
  %36 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %36, i64 %idx.ext
  store i8* %add.ptr, i8** %data.addr, align 8, !tbaa !1
  %37 = load i32, i32* %tmp, align 4, !tbaa !5
  store i32 %37, i32* %y.addr, align 4, !tbaa !5
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %if.end.30
  %q38 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %rect, i32 0, i32 1
  %y39 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q38, i32 0, i32 1
  %38 = load i32, i32* %y39, align 4, !tbaa !65
  %shr40 = ashr i32 %38, 8
  store i32 %shr40, i32* %tmp, align 4, !tbaa !5
  %39 = load i32, i32* %tmp, align 4, !tbaa !5
  %40 = load i32, i32* %y.addr, align 4, !tbaa !5
  %41 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add41 = add nsw i32 %40, %41
  %cmp42 = icmp slt i32 %39, %add41
  br i1 %cmp42, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %if.end.37
  %42 = load i32, i32* %tmp, align 4, !tbaa !5
  %43 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub44 = sub nsw i32 %42, %43
  store i32 %sub44, i32* %h.addr, align 4, !tbaa !5
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %if.end.37
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.45, %if.then.15
  %44 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast %struct.gs_fixed_rect_s* %rect to i8*
  call void @llvm.lifetime.end(i64 16, i8* %45) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.52 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.47

if.end.47:                                        ; preds = %cleanup.cont, %if.end
  %46 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %cmp48 = icmp sgt i32 %46, 1
  br i1 %cmp48, label %if.then.49, label %if.else

if.then.49:                                       ; preds = %if.end.47
  %47 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %47, i32 0, i32 42
  %copy_alpha = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 21
  %48 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)** %copy_alpha, align 8, !tbaa !66
  %49 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %50 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %51 = load i32, i32* %dx.addr, align 4, !tbaa !5
  %52 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %53 = load i64, i64* %id.addr, align 8, !tbaa !7
  %54 = load i32, i32* %x.addr, align 4, !tbaa !5
  %55 = load i32, i32* %y.addr, align 4, !tbaa !5
  %56 = load i32, i32* %w.addr, align 4, !tbaa !5
  %57 = load i32, i32* %h.addr, align 4, !tbaa !5
  %58 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %58, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  %59 = load i64, i64* %pure, align 8, !tbaa !7
  %60 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %call50 = call i32 %48(%struct.gx_device_s* %49, i8* %50, i32 %51, i32 %52, i64 %53, i32 %54, i32 %55, i32 %56, i32 %57, i64 %59, i32 %60) #3
  store i32 %call50, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.52

if.else:                                          ; preds = %if.end.47
  %61 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %61, i32 0, i32 0
  %62 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !31
  %fill_masked = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %62, i32 0, i32 6
  %63 = load i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)** %fill_masked, align 8, !tbaa !67
  %64 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %65 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %66 = load i32, i32* %dx.addr, align 4, !tbaa !5
  %67 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %68 = load i64, i64* %id.addr, align 8, !tbaa !7
  %69 = load i32, i32* %x.addr, align 4, !tbaa !5
  %70 = load i32, i32* %y.addr, align 4, !tbaa !5
  %71 = load i32, i32* %w.addr, align 4, !tbaa !5
  %72 = load i32, i32* %h.addr, align 4, !tbaa !5
  %73 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %74 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call51 = call i32 %63(%struct.gx_device_color_s* %64, i8* %65, i32 %66, i32 %67, i64 %68, i32 %69, i32 %70, i32 %71, i32 %72, %struct.gx_device_s* %73, i32 %74, i32 0) #3
  store i32 %call51, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.52

cleanup.52:                                       ; preds = %if.else, %if.then.49, %cleanup, %if.then
  %75 = bitcast %struct.gx_device_clip_s* %cdev to i8*
  call void @llvm.lifetime.end(i64 1856, i8* %75) #1
  %76 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %77 = load i32, i32* %retval
  ret i32 %77
}

declare %struct.gx_device_s* @gx_make_clip_device_on_stack_if_needed(%struct.gx_device_clip_s*, %struct.gx_clip_path_s*, %struct.gx_device_s*, %struct.gs_fixed_rect_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gx_default_strip_tile_rect_devn(%struct.gx_device_s* %dev, %struct.gx_strip_bitmap_s* %tiles, i32 %x, i32 %y, i32 %w, i32 %h, %struct.gx_device_color_s* %pdcolor0, %struct.gx_device_color_s* %pdcolor1, i32 %px, i32 %py) #0 {
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
  ret i32 -28
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_strip_tile_rectangle(%struct.gx_device_s* %dev, %struct.gx_strip_bitmap_s* %tiles, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color0, i64 %color1, i32 %px, i32 %py) #0 {
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
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %raster = alloca i32, align 4
  %rwidth = alloca i32, align 4
  %rheight = alloca i32, align 4
  %shift = alloca i32, align 4
  %tile_id = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %tile_proc = alloca i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, align 8
  %code = alloca i32, align 4
  %xoff = alloca i32, align 4
  %irx = alloca i32, align 4
  %ry = alloca i32, align 4
  %icw = alloca i32, align 4
  %ch = alloca i32, align 4
  %row = alloca i8*, align 8
  %proc_mono = alloca i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, align 8
  %proc_color = alloca i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, align 8
  %proc_planes = alloca i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, align 8
  %code73 = alloca i32, align 4
  %ex = alloca i32, align 4
  %fex = alloca i32, align 4
  %cx = alloca i32, align 4
  %id151 = alloca i64, align 8
  %ey = alloca i32, align 4
  %fey = alloca i32, align 4
  %cy = alloca i32, align 4
  %id260 = alloca i64, align 8
  %ex376 = alloca i32, align 4
  %ey378 = alloca i32, align 4
  %fex380 = alloca i32, align 4
  %fey382 = alloca i32, align 4
  %cx384 = alloca i32, align 4
  %cy385 = alloca i32, align 4
  %id386 = alloca i64, align 8
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
  %0 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %1, i32 0, i32 2
  %x1 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size, i32 0, i32 0
  %2 = load i32, i32* %x1, align 4, !tbaa !69
  store i32 %2, i32* %width, align 4, !tbaa !5
  %3 = bitcast i32* %height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %size2 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %4, i32 0, i32 2
  %y3 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size2, i32 0, i32 1
  %5 = load i32, i32* %y3, align 4, !tbaa !70
  store i32 %5, i32* %height, align 4, !tbaa !5
  %6 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %raster4 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %7, i32 0, i32 1
  %8 = load i32, i32* %raster4, align 4, !tbaa !71
  store i32 %8, i32* %raster, align 4, !tbaa !5
  %9 = bitcast i32* %rwidth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %rep_width = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %10, i32 0, i32 4
  %11 = load i16, i16* %rep_width, align 2, !tbaa !72
  %conv = zext i16 %11 to i32
  store i32 %conv, i32* %rwidth, align 4, !tbaa !5
  %12 = bitcast i32* %rheight to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %rep_height = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %13, i32 0, i32 5
  %14 = load i16, i16* %rep_height, align 2, !tbaa !73
  %conv5 = zext i16 %14 to i32
  store i32 %conv5, i32* %rheight, align 4, !tbaa !5
  %15 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %shift6 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %16, i32 0, i32 7
  %17 = load i16, i16* %shift6, align 2, !tbaa !15
  %conv7 = zext i16 %17 to i32
  store i32 %conv7, i32* %shift, align 4, !tbaa !5
  %18 = bitcast i64* %tile_id to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %19, i32 0, i32 3
  %20 = load i64, i64* %id, align 8, !tbaa !74
  store i64 %20, i64* %tile_id, align 8, !tbaa !7
  %21 = load i32, i32* %rwidth, align 4, !tbaa !5
  %cmp = icmp eq i32 %21, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %22 = load i32, i32* %rheight, align 4, !tbaa !5
  %cmp9 = icmp eq i32 %22, 0
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.579

if.end:                                           ; preds = %lor.lhs.false
  br label %do.body

do.body:                                          ; preds = %if.end
  %23 = load i32, i32* %x.addr, align 4, !tbaa !5
  %24 = load i32, i32* %y.addr, align 4, !tbaa !5
  %or = or i32 %23, %24
  %cmp11 = icmp slt i32 %or, 0
  br i1 %cmp11, label %if.then.13, label %if.end.23

if.then.13:                                       ; preds = %do.body
  %25 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %25, 0
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.then.13
  %26 = load i32, i32* %x.addr, align 4, !tbaa !5
  %27 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add = add nsw i32 %27, %26
  store i32 %add, i32* %w.addr, align 4, !tbaa !5
  store i32 0, i32* %x.addr, align 4, !tbaa !5
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.then.13
  %28 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp18 = icmp slt i32 %28, 0
  br i1 %cmp18, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end.17
  %29 = load i32, i32* %y.addr, align 4, !tbaa !5
  %30 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add21 = add nsw i32 %30, %29
  store i32 %add21, i32* %h.addr, align 4, !tbaa !5
  store i32 0, i32* %y.addr, align 4, !tbaa !5
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.end.17
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.23
  br label %do.end

do.end:                                           ; preds = %do.cond
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %31, i32 0, i32 42
  %tile_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 8
  %tile_rectangle24 = bitcast {}** %tile_rectangle to i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)**
  %32 = load i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)** %tile_rectangle24, align 8, !tbaa !75
  %cmp25 = icmp ne i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* %32, @gx_default_tile_rectangle
  br i1 %cmp25, label %if.then.27, label %if.end.41

if.then.27:                                       ; preds = %do.end
  %33 = load i32, i32* %shift, align 4, !tbaa !5
  %cmp28 = icmp eq i32 %33, 0
  br i1 %cmp28, label %if.then.30, label %if.end.40

if.then.30:                                       ; preds = %if.then.27
  %34 = bitcast i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)** %tile_proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #1
  %35 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs31 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %35, i32 0, i32 42
  %tile_rectangle32 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs31, i32 0, i32 8
  %tile_rectangle33 = bitcast {}** %tile_rectangle32 to i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)**
  %36 = load i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)** %tile_rectangle33, align 8, !tbaa !75
  store i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* %36, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)** %tile_proc, align 8, !tbaa !1
  %37 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %38 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs34 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %38, i32 0, i32 42
  %tile_rectangle35 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs34, i32 0, i32 8
  %tile_rectangle36 = bitcast {}** %tile_rectangle35 to i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)**
  store i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_tile_rectangle, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)** %tile_rectangle36, align 8, !tbaa !75
  %39 = load i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)** %tile_proc, align 8, !tbaa !1
  %40 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %41 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %42 = bitcast %struct.gx_strip_bitmap_s* %41 to %struct.gx_tile_bitmap_s*
  %43 = load i32, i32* %x.addr, align 4, !tbaa !5
  %44 = load i32, i32* %y.addr, align 4, !tbaa !5
  %45 = load i32, i32* %w.addr, align 4, !tbaa !5
  %46 = load i32, i32* %h.addr, align 4, !tbaa !5
  %47 = load i64, i64* %color0.addr, align 8, !tbaa !7
  %48 = load i64, i64* %color1.addr, align 8, !tbaa !7
  %49 = load i32, i32* %px.addr, align 4, !tbaa !5
  %50 = load i32, i32* %py.addr, align 4, !tbaa !5
  %call = call i32 %39(%struct.gx_device_s* %40, %struct.gx_tile_bitmap_s* %42, i32 %43, i32 %44, i32 %45, i32 %46, i64 %47, i64 %48, i32 %49, i32 %50) #3
  store i32 %call, i32* %code, align 4, !tbaa !5
  %51 = load i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)** %tile_proc, align 8, !tbaa !1
  %52 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs37 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %52, i32 0, i32 42
  %tile_rectangle38 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs37, i32 0, i32 8
  %tile_rectangle39 = bitcast {}** %tile_rectangle38 to i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)**
  store i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* %51, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)** %tile_rectangle39, align 8, !tbaa !75
  %53 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %53, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %54 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  %55 = bitcast i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)** %tile_proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  br label %cleanup.579

if.end.40:                                        ; preds = %if.then.27
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %do.end
  %56 = bitcast i32* %xoff to i8*
  call void @llvm.lifetime.start(i64 4, i8* %56) #1
  %57 = load i32, i32* %shift, align 4, !tbaa !5
  %cmp42 = icmp eq i32 %57, 0
  br i1 %cmp42, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.41
  %58 = load i32, i32* %px.addr, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.end.41
  %59 = load i32, i32* %px.addr, align 4, !tbaa !5
  %60 = load i32, i32* %y.addr, align 4, !tbaa !5
  %61 = load i32, i32* %py.addr, align 4, !tbaa !5
  %add44 = add nsw i32 %60, %61
  %62 = load i32, i32* %rheight, align 4, !tbaa !5
  %div = sdiv i32 %add44, %62
  %63 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %rep_shift = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %63, i32 0, i32 6
  %64 = load i16, i16* %rep_shift, align 2, !tbaa !12
  %conv45 = zext i16 %64 to i32
  %mul = mul nsw i32 %div, %conv45
  %add46 = add nsw i32 %59, %mul
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %58, %cond.true ], [ %add46, %cond.false ]
  store i32 %cond, i32* %xoff, align 4, !tbaa !5
  %65 = bitcast i32* %irx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %65) #1
  %66 = load i32, i32* %rwidth, align 4, !tbaa !5
  %67 = load i32, i32* %rwidth, align 4, !tbaa !5
  %sub = sub nsw i32 %67, 1
  %and = and i32 %66, %sub
  %cmp47 = icmp eq i32 %and, 0
  br i1 %cmp47, label %cond.true.49, label %cond.false.53

cond.true.49:                                     ; preds = %cond.end
  %68 = load i32, i32* %x.addr, align 4, !tbaa !5
  %69 = load i32, i32* %xoff, align 4, !tbaa !5
  %add50 = add nsw i32 %68, %69
  %70 = load i32, i32* %rwidth, align 4, !tbaa !5
  %sub51 = sub nsw i32 %70, 1
  %and52 = and i32 %add50, %sub51
  br label %cond.end.55

cond.false.53:                                    ; preds = %cond.end
  %71 = load i32, i32* %x.addr, align 4, !tbaa !5
  %72 = load i32, i32* %xoff, align 4, !tbaa !5
  %add54 = add nsw i32 %71, %72
  %73 = load i32, i32* %rwidth, align 4, !tbaa !5
  %rem = srem i32 %add54, %73
  br label %cond.end.55

cond.end.55:                                      ; preds = %cond.false.53, %cond.true.49
  %cond56 = phi i32 [ %and52, %cond.true.49 ], [ %rem, %cond.false.53 ]
  store i32 %cond56, i32* %irx, align 4, !tbaa !5
  %74 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.start(i64 4, i8* %74) #1
  %75 = load i32, i32* %rheight, align 4, !tbaa !5
  %76 = load i32, i32* %rheight, align 4, !tbaa !5
  %sub57 = sub nsw i32 %76, 1
  %and58 = and i32 %75, %sub57
  %cmp59 = icmp eq i32 %and58, 0
  br i1 %cmp59, label %cond.true.61, label %cond.false.65

cond.true.61:                                     ; preds = %cond.end.55
  %77 = load i32, i32* %y.addr, align 4, !tbaa !5
  %78 = load i32, i32* %py.addr, align 4, !tbaa !5
  %add62 = add nsw i32 %77, %78
  %79 = load i32, i32* %rheight, align 4, !tbaa !5
  %sub63 = sub nsw i32 %79, 1
  %and64 = and i32 %add62, %sub63
  br label %cond.end.68

cond.false.65:                                    ; preds = %cond.end.55
  %80 = load i32, i32* %y.addr, align 4, !tbaa !5
  %81 = load i32, i32* %py.addr, align 4, !tbaa !5
  %add66 = add nsw i32 %80, %81
  %82 = load i32, i32* %rheight, align 4, !tbaa !5
  %rem67 = srem i32 %add66, %82
  br label %cond.end.68

cond.end.68:                                      ; preds = %cond.false.65, %cond.true.61
  %cond69 = phi i32 [ %and64, %cond.true.61 ], [ %rem67, %cond.false.65 ]
  store i32 %cond69, i32* %ry, align 4, !tbaa !5
  %83 = bitcast i32* %icw to i8*
  call void @llvm.lifetime.start(i64 4, i8* %83) #1
  %84 = load i32, i32* %width, align 4, !tbaa !5
  %85 = load i32, i32* %irx, align 4, !tbaa !5
  %sub70 = sub nsw i32 %84, %85
  store i32 %sub70, i32* %icw, align 4, !tbaa !5
  %86 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.start(i64 4, i8* %86) #1
  %87 = load i32, i32* %height, align 4, !tbaa !5
  %88 = load i32, i32* %ry, align 4, !tbaa !5
  %sub71 = sub nsw i32 %87, %88
  store i32 %sub71, i32* %ch, align 4, !tbaa !5
  %89 = bitcast i8** %row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %89) #1
  %90 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %90, i32 0, i32 0
  %91 = load i8*, i8** %data, align 8, !tbaa !76
  %92 = load i32, i32* %ry, align 4, !tbaa !5
  %93 = load i32, i32* %raster, align 4, !tbaa !5
  %mul72 = mul nsw i32 %92, %93
  %idx.ext = sext i32 %mul72 to i64
  %add.ptr = getelementptr inbounds i8, i8* %91, i64 %idx.ext
  store i8* %add.ptr, i8** %row, align 8, !tbaa !1
  %94 = bitcast i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %proc_mono to i8*
  call void @llvm.lifetime.start(i64 8, i8* %94) #1
  %95 = bitcast i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %proc_color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %95) #1
  %96 = bitcast i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)** %proc_planes to i8*
  call void @llvm.lifetime.start(i64 8, i8* %96) #1
  %97 = bitcast i32* %code73 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %97) #1
  %98 = load i64, i64* %color0.addr, align 8, !tbaa !7
  %cmp74 = icmp eq i64 %98, -1
  br i1 %cmp74, label %land.lhs.true, label %if.else.85

land.lhs.true:                                    ; preds = %cond.end.68
  %99 = load i64, i64* %color1.addr, align 8, !tbaa !7
  %cmp76 = icmp eq i64 %99, -1
  br i1 %cmp76, label %if.then.78, label %if.else.85

if.then.78:                                       ; preds = %land.lhs.true
  %100 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %num_planes = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %100, i32 0, i32 8
  %101 = load i32, i32* %num_planes, align 4, !tbaa !16
  %cmp79 = icmp sgt i32 %101, 1
  br i1 %cmp79, label %if.then.81, label %if.else

if.then.81:                                       ; preds = %if.then.78
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %proc_mono, align 8, !tbaa !1
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %proc_color, align 8, !tbaa !1
  %102 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs82 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %102, i32 0, i32 42
  %copy_planes = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs82, i32 0, i32 66
  %103 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)** %copy_planes, align 8, !tbaa !55
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* %103, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)** %proc_planes, align 8, !tbaa !1
  br label %if.end.84

if.else:                                          ; preds = %if.then.78
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)** %proc_planes, align 8, !tbaa !1
  %104 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs83 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %104, i32 0, i32 42
  %copy_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs83, i32 0, i32 10
  %105 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %copy_color, align 8, !tbaa !58
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* %105, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %proc_color, align 8, !tbaa !1
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %proc_mono, align 8, !tbaa !1
  br label %if.end.84

if.end.84:                                        ; preds = %if.else, %if.then.81
  br label %if.end.87

if.else.85:                                       ; preds = %land.lhs.true, %cond.end.68
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)** %proc_planes, align 8, !tbaa !1
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %proc_color, align 8, !tbaa !1
  %106 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs86 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %106, i32 0, i32 42
  %copy_mono = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs86, i32 0, i32 9
  %107 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono, align 8, !tbaa !39
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* %107, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %proc_mono, align 8, !tbaa !1
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.85, %if.end.84
  %108 = load i32, i32* %ch, align 4, !tbaa !5
  %109 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp88 = icmp sge i32 %108, %109
  br i1 %cmp88, label %if.then.90, label %if.else.250

if.then.90:                                       ; preds = %if.end.87
  %110 = load i32, i32* %icw, align 4, !tbaa !5
  %111 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp91 = icmp sge i32 %110, %111
  br i1 %cmp91, label %if.then.93, label %if.else.147

if.then.93:                                       ; preds = %if.then.90
  br label %do.body.94

do.body.94:                                       ; preds = %if.then.93
  br label %do.cond.95

do.cond.95:                                       ; preds = %do.body.94
  br label %do.end.96

do.end.96:                                        ; preds = %do.cond.95
  %112 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %num_planes97 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %112, i32 0, i32 8
  %113 = load i32, i32* %num_planes97, align 4, !tbaa !16
  %cmp98 = icmp sgt i32 %113, 1
  br i1 %cmp98, label %cond.true.100, label %cond.false.111

cond.true.100:                                    ; preds = %do.end.96
  %114 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)** %proc_planes, align 8, !tbaa !1
  %115 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %116 = load i8*, i8** %row, align 8, !tbaa !1
  %117 = load i32, i32* %irx, align 4, !tbaa !5
  %118 = load i32, i32* %raster, align 4, !tbaa !5
  %119 = load i32, i32* %w.addr, align 4, !tbaa !5
  %120 = load i32, i32* %width, align 4, !tbaa !5
  %cmp101 = icmp eq i32 %119, %120
  br i1 %cmp101, label %land.lhs.true.103, label %cond.false.107

land.lhs.true.103:                                ; preds = %cond.true.100
  %121 = load i32, i32* %h.addr, align 4, !tbaa !5
  %122 = load i32, i32* %height, align 4, !tbaa !5
  %cmp104 = icmp eq i32 %121, %122
  br i1 %cmp104, label %cond.true.106, label %cond.false.107

cond.true.106:                                    ; preds = %land.lhs.true.103
  %123 = load i64, i64* %tile_id, align 8, !tbaa !7
  br label %cond.end.108

cond.false.107:                                   ; preds = %land.lhs.true.103, %cond.true.100
  br label %cond.end.108

cond.end.108:                                     ; preds = %cond.false.107, %cond.true.106
  %cond109 = phi i64 [ %123, %cond.true.106 ], [ 0, %cond.false.107 ]
  %124 = load i32, i32* %x.addr, align 4, !tbaa !5
  %125 = load i32, i32* %y.addr, align 4, !tbaa !5
  %126 = load i32, i32* %w.addr, align 4, !tbaa !5
  %127 = load i32, i32* %h.addr, align 4, !tbaa !5
  %128 = load i32, i32* %height, align 4, !tbaa !5
  %call110 = call i32 %114(%struct.gx_device_s* %115, i8* %116, i32 %117, i32 %118, i64 %cond109, i32 %124, i32 %125, i32 %126, i32 %127, i32 %128) #3
  br label %cond.end.138

cond.false.111:                                   ; preds = %do.end.96
  %129 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %proc_color, align 8, !tbaa !1
  %cmp112 = icmp ne i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* %129, null
  br i1 %cmp112, label %cond.true.114, label %cond.false.125

cond.true.114:                                    ; preds = %cond.false.111
  %130 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %proc_color, align 8, !tbaa !1
  %131 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %132 = load i8*, i8** %row, align 8, !tbaa !1
  %133 = load i32, i32* %irx, align 4, !tbaa !5
  %134 = load i32, i32* %raster, align 4, !tbaa !5
  %135 = load i32, i32* %w.addr, align 4, !tbaa !5
  %136 = load i32, i32* %width, align 4, !tbaa !5
  %cmp115 = icmp eq i32 %135, %136
  br i1 %cmp115, label %land.lhs.true.117, label %cond.false.121

land.lhs.true.117:                                ; preds = %cond.true.114
  %137 = load i32, i32* %h.addr, align 4, !tbaa !5
  %138 = load i32, i32* %height, align 4, !tbaa !5
  %cmp118 = icmp eq i32 %137, %138
  br i1 %cmp118, label %cond.true.120, label %cond.false.121

cond.true.120:                                    ; preds = %land.lhs.true.117
  %139 = load i64, i64* %tile_id, align 8, !tbaa !7
  br label %cond.end.122

cond.false.121:                                   ; preds = %land.lhs.true.117, %cond.true.114
  br label %cond.end.122

cond.end.122:                                     ; preds = %cond.false.121, %cond.true.120
  %cond123 = phi i64 [ %139, %cond.true.120 ], [ 0, %cond.false.121 ]
  %140 = load i32, i32* %x.addr, align 4, !tbaa !5
  %141 = load i32, i32* %y.addr, align 4, !tbaa !5
  %142 = load i32, i32* %w.addr, align 4, !tbaa !5
  %143 = load i32, i32* %h.addr, align 4, !tbaa !5
  %call124 = call i32 %130(%struct.gx_device_s* %131, i8* %132, i32 %133, i32 %134, i64 %cond123, i32 %140, i32 %141, i32 %142, i32 %143) #3
  br label %cond.end.136

cond.false.125:                                   ; preds = %cond.false.111
  %144 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %proc_mono, align 8, !tbaa !1
  %145 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %146 = load i8*, i8** %row, align 8, !tbaa !1
  %147 = load i32, i32* %irx, align 4, !tbaa !5
  %148 = load i32, i32* %raster, align 4, !tbaa !5
  %149 = load i32, i32* %w.addr, align 4, !tbaa !5
  %150 = load i32, i32* %width, align 4, !tbaa !5
  %cmp126 = icmp eq i32 %149, %150
  br i1 %cmp126, label %land.lhs.true.128, label %cond.false.132

land.lhs.true.128:                                ; preds = %cond.false.125
  %151 = load i32, i32* %h.addr, align 4, !tbaa !5
  %152 = load i32, i32* %height, align 4, !tbaa !5
  %cmp129 = icmp eq i32 %151, %152
  br i1 %cmp129, label %cond.true.131, label %cond.false.132

cond.true.131:                                    ; preds = %land.lhs.true.128
  %153 = load i64, i64* %tile_id, align 8, !tbaa !7
  br label %cond.end.133

cond.false.132:                                   ; preds = %land.lhs.true.128, %cond.false.125
  br label %cond.end.133

cond.end.133:                                     ; preds = %cond.false.132, %cond.true.131
  %cond134 = phi i64 [ %153, %cond.true.131 ], [ 0, %cond.false.132 ]
  %154 = load i32, i32* %x.addr, align 4, !tbaa !5
  %155 = load i32, i32* %y.addr, align 4, !tbaa !5
  %156 = load i32, i32* %w.addr, align 4, !tbaa !5
  %157 = load i32, i32* %h.addr, align 4, !tbaa !5
  %158 = load i64, i64* %color0.addr, align 8, !tbaa !7
  %159 = load i64, i64* %color1.addr, align 8, !tbaa !7
  %call135 = call i32 %144(%struct.gx_device_s* %145, i8* %146, i32 %147, i32 %148, i64 %cond134, i32 %154, i32 %155, i32 %156, i32 %157, i64 %158, i64 %159) #3
  br label %cond.end.136

cond.end.136:                                     ; preds = %cond.end.133, %cond.end.122
  %cond137 = phi i32 [ %call124, %cond.end.122 ], [ %call135, %cond.end.133 ]
  br label %cond.end.138

cond.end.138:                                     ; preds = %cond.end.136, %cond.end.108
  %cond139 = phi i32 [ %call110, %cond.end.108 ], [ %cond137, %cond.end.136 ]
  store i32 %cond139, i32* %code73, align 4, !tbaa !5
  %160 = load i32, i32* %code73, align 4, !tbaa !5
  %cmp140 = icmp slt i32 %160, 0
  br i1 %cmp140, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %cond.end.138
  %161 = load i32, i32* %code73, align 4, !tbaa !5
  store i32 %161, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.567

if.end.143:                                       ; preds = %cond.end.138
  br label %do.body.144

do.body.144:                                      ; preds = %if.end.143
  br label %do.cond.145

do.cond.145:                                      ; preds = %do.body.144
  br label %do.end.146

do.end.146:                                       ; preds = %do.cond.145
  br label %if.end.249

if.else.147:                                      ; preds = %if.then.90
  %162 = bitcast i32* %ex to i8*
  call void @llvm.lifetime.start(i64 4, i8* %162) #1
  %163 = load i32, i32* %x.addr, align 4, !tbaa !5
  %164 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add148 = add nsw i32 %163, %164
  store i32 %add148, i32* %ex, align 4, !tbaa !5
  %165 = bitcast i32* %fex to i8*
  call void @llvm.lifetime.start(i64 4, i8* %165) #1
  %166 = load i32, i32* %ex, align 4, !tbaa !5
  %167 = load i32, i32* %width, align 4, !tbaa !5
  %sub149 = sub nsw i32 %166, %167
  store i32 %sub149, i32* %fex, align 4, !tbaa !5
  %168 = bitcast i32* %cx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %168) #1
  %169 = load i32, i32* %x.addr, align 4, !tbaa !5
  %170 = load i32, i32* %icw, align 4, !tbaa !5
  %add150 = add nsw i32 %169, %170
  store i32 %add150, i32* %cx, align 4, !tbaa !5
  %171 = bitcast i64* %id151 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %171) #1
  %172 = load i32, i32* %h.addr, align 4, !tbaa !5
  %173 = load i32, i32* %height, align 4, !tbaa !5
  %cmp152 = icmp eq i32 %172, %173
  br i1 %cmp152, label %cond.true.154, label %cond.false.155

cond.true.154:                                    ; preds = %if.else.147
  %174 = load i64, i64* %tile_id, align 8, !tbaa !7
  br label %cond.end.156

cond.false.155:                                   ; preds = %if.else.147
  br label %cond.end.156

cond.end.156:                                     ; preds = %cond.false.155, %cond.true.154
  %cond157 = phi i64 [ %174, %cond.true.154 ], [ 0, %cond.false.155 ]
  store i64 %cond157, i64* %id151, align 8, !tbaa !7
  br label %do.body.158

do.body.158:                                      ; preds = %cond.end.156
  br label %do.cond.159

do.cond.159:                                      ; preds = %do.body.158
  br label %do.end.160

do.end.160:                                       ; preds = %do.cond.159
  %175 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %num_planes161 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %175, i32 0, i32 8
  %176 = load i32, i32* %num_planes161, align 4, !tbaa !16
  %cmp162 = icmp sgt i32 %176, 1
  br i1 %cmp162, label %cond.true.164, label %cond.false.166

cond.true.164:                                    ; preds = %do.end.160
  %177 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)** %proc_planes, align 8, !tbaa !1
  %178 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %179 = load i8*, i8** %row, align 8, !tbaa !1
  %180 = load i32, i32* %irx, align 4, !tbaa !5
  %181 = load i32, i32* %raster, align 4, !tbaa !5
  %182 = load i32, i32* %x.addr, align 4, !tbaa !5
  %183 = load i32, i32* %y.addr, align 4, !tbaa !5
  %184 = load i32, i32* %icw, align 4, !tbaa !5
  %185 = load i32, i32* %h.addr, align 4, !tbaa !5
  %186 = load i32, i32* %height, align 4, !tbaa !5
  %call165 = call i32 %177(%struct.gx_device_s* %178, i8* %179, i32 %180, i32 %181, i64 0, i32 %182, i32 %183, i32 %184, i32 %185, i32 %186) #3
  br label %cond.end.175

cond.false.166:                                   ; preds = %do.end.160
  %187 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %proc_color, align 8, !tbaa !1
  %cmp167 = icmp ne i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* %187, null
  br i1 %cmp167, label %cond.true.169, label %cond.false.171

cond.true.169:                                    ; preds = %cond.false.166
  %188 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %proc_color, align 8, !tbaa !1
  %189 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %190 = load i8*, i8** %row, align 8, !tbaa !1
  %191 = load i32, i32* %irx, align 4, !tbaa !5
  %192 = load i32, i32* %raster, align 4, !tbaa !5
  %193 = load i32, i32* %x.addr, align 4, !tbaa !5
  %194 = load i32, i32* %y.addr, align 4, !tbaa !5
  %195 = load i32, i32* %icw, align 4, !tbaa !5
  %196 = load i32, i32* %h.addr, align 4, !tbaa !5
  %call170 = call i32 %188(%struct.gx_device_s* %189, i8* %190, i32 %191, i32 %192, i64 0, i32 %193, i32 %194, i32 %195, i32 %196) #3
  br label %cond.end.173

cond.false.171:                                   ; preds = %cond.false.166
  %197 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %proc_mono, align 8, !tbaa !1
  %198 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %199 = load i8*, i8** %row, align 8, !tbaa !1
  %200 = load i32, i32* %irx, align 4, !tbaa !5
  %201 = load i32, i32* %raster, align 4, !tbaa !5
  %202 = load i32, i32* %x.addr, align 4, !tbaa !5
  %203 = load i32, i32* %y.addr, align 4, !tbaa !5
  %204 = load i32, i32* %icw, align 4, !tbaa !5
  %205 = load i32, i32* %h.addr, align 4, !tbaa !5
  %206 = load i64, i64* %color0.addr, align 8, !tbaa !7
  %207 = load i64, i64* %color1.addr, align 8, !tbaa !7
  %call172 = call i32 %197(%struct.gx_device_s* %198, i8* %199, i32 %200, i32 %201, i64 0, i32 %202, i32 %203, i32 %204, i32 %205, i64 %206, i64 %207) #3
  br label %cond.end.173

cond.end.173:                                     ; preds = %cond.false.171, %cond.true.169
  %cond174 = phi i32 [ %call170, %cond.true.169 ], [ %call172, %cond.false.171 ]
  br label %cond.end.175

cond.end.175:                                     ; preds = %cond.end.173, %cond.true.164
  %cond176 = phi i32 [ %call165, %cond.true.164 ], [ %cond174, %cond.end.173 ]
  store i32 %cond176, i32* %code73, align 4, !tbaa !5
  %208 = load i32, i32* %code73, align 4, !tbaa !5
  %cmp177 = icmp slt i32 %208, 0
  br i1 %cmp177, label %if.then.179, label %if.end.180

if.then.179:                                      ; preds = %cond.end.175
  %209 = load i32, i32* %code73, align 4, !tbaa !5
  store i32 %209, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.180:                                       ; preds = %cond.end.175
  br label %do.body.181

do.body.181:                                      ; preds = %if.end.180
  br label %do.cond.182

do.cond.182:                                      ; preds = %do.body.181
  br label %do.end.183

do.end.183:                                       ; preds = %do.cond.182
  br label %while.cond

while.cond:                                       ; preds = %do.end.211, %do.end.183
  %210 = load i32, i32* %cx, align 4, !tbaa !5
  %211 = load i32, i32* %fex, align 4, !tbaa !5
  %cmp184 = icmp sle i32 %210, %211
  br i1 %cmp184, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body.186

do.body.186:                                      ; preds = %while.body
  br label %do.cond.187

do.cond.187:                                      ; preds = %do.body.186
  br label %do.end.188

do.end.188:                                       ; preds = %do.cond.187
  %212 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %num_planes189 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %212, i32 0, i32 8
  %213 = load i32, i32* %num_planes189, align 4, !tbaa !16
  %cmp190 = icmp sgt i32 %213, 1
  br i1 %cmp190, label %cond.true.192, label %cond.false.194

cond.true.192:                                    ; preds = %do.end.188
  %214 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)** %proc_planes, align 8, !tbaa !1
  %215 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %216 = load i8*, i8** %row, align 8, !tbaa !1
  %217 = load i32, i32* %raster, align 4, !tbaa !5
  %218 = load i64, i64* %id151, align 8, !tbaa !7
  %219 = load i32, i32* %cx, align 4, !tbaa !5
  %220 = load i32, i32* %y.addr, align 4, !tbaa !5
  %221 = load i32, i32* %width, align 4, !tbaa !5
  %222 = load i32, i32* %h.addr, align 4, !tbaa !5
  %223 = load i32, i32* %height, align 4, !tbaa !5
  %call193 = call i32 %214(%struct.gx_device_s* %215, i8* %216, i32 0, i32 %217, i64 %218, i32 %219, i32 %220, i32 %221, i32 %222, i32 %223) #3
  br label %cond.end.203

cond.false.194:                                   ; preds = %do.end.188
  %224 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %proc_color, align 8, !tbaa !1
  %cmp195 = icmp ne i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* %224, null
  br i1 %cmp195, label %cond.true.197, label %cond.false.199

cond.true.197:                                    ; preds = %cond.false.194
  %225 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %proc_color, align 8, !tbaa !1
  %226 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %227 = load i8*, i8** %row, align 8, !tbaa !1
  %228 = load i32, i32* %raster, align 4, !tbaa !5
  %229 = load i64, i64* %id151, align 8, !tbaa !7
  %230 = load i32, i32* %cx, align 4, !tbaa !5
  %231 = load i32, i32* %y.addr, align 4, !tbaa !5
  %232 = load i32, i32* %width, align 4, !tbaa !5
  %233 = load i32, i32* %h.addr, align 4, !tbaa !5
  %call198 = call i32 %225(%struct.gx_device_s* %226, i8* %227, i32 0, i32 %228, i64 %229, i32 %230, i32 %231, i32 %232, i32 %233) #3
  br label %cond.end.201

cond.false.199:                                   ; preds = %cond.false.194
  %234 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %proc_mono, align 8, !tbaa !1
  %235 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %236 = load i8*, i8** %row, align 8, !tbaa !1
  %237 = load i32, i32* %raster, align 4, !tbaa !5
  %238 = load i64, i64* %id151, align 8, !tbaa !7
  %239 = load i32, i32* %cx, align 4, !tbaa !5
  %240 = load i32, i32* %y.addr, align 4, !tbaa !5
  %241 = load i32, i32* %width, align 4, !tbaa !5
  %242 = load i32, i32* %h.addr, align 4, !tbaa !5
  %243 = load i64, i64* %color0.addr, align 8, !tbaa !7
  %244 = load i64, i64* %color1.addr, align 8, !tbaa !7
  %call200 = call i32 %234(%struct.gx_device_s* %235, i8* %236, i32 0, i32 %237, i64 %238, i32 %239, i32 %240, i32 %241, i32 %242, i64 %243, i64 %244) #3
  br label %cond.end.201

cond.end.201:                                     ; preds = %cond.false.199, %cond.true.197
  %cond202 = phi i32 [ %call198, %cond.true.197 ], [ %call200, %cond.false.199 ]
  br label %cond.end.203

cond.end.203:                                     ; preds = %cond.end.201, %cond.true.192
  %cond204 = phi i32 [ %call193, %cond.true.192 ], [ %cond202, %cond.end.201 ]
  store i32 %cond204, i32* %code73, align 4, !tbaa !5
  %245 = load i32, i32* %code73, align 4, !tbaa !5
  %cmp205 = icmp slt i32 %245, 0
  br i1 %cmp205, label %if.then.207, label %if.end.208

if.then.207:                                      ; preds = %cond.end.203
  %246 = load i32, i32* %code73, align 4, !tbaa !5
  store i32 %246, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.208:                                       ; preds = %cond.end.203
  br label %do.body.209

do.body.209:                                      ; preds = %if.end.208
  br label %do.cond.210

do.cond.210:                                      ; preds = %do.body.209
  br label %do.end.211

do.end.211:                                       ; preds = %do.cond.210
  %247 = load i32, i32* %width, align 4, !tbaa !5
  %248 = load i32, i32* %cx, align 4, !tbaa !5
  %add212 = add nsw i32 %248, %247
  store i32 %add212, i32* %cx, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %249 = load i32, i32* %cx, align 4, !tbaa !5
  %250 = load i32, i32* %ex, align 4, !tbaa !5
  %cmp213 = icmp slt i32 %249, %250
  br i1 %cmp213, label %if.then.215, label %if.end.245

if.then.215:                                      ; preds = %while.end
  br label %do.body.216

do.body.216:                                      ; preds = %if.then.215
  br label %do.cond.217

do.cond.217:                                      ; preds = %do.body.216
  br label %do.end.218

do.end.218:                                       ; preds = %do.cond.217
  %251 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %num_planes219 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %251, i32 0, i32 8
  %252 = load i32, i32* %num_planes219, align 4, !tbaa !16
  %cmp220 = icmp sgt i32 %252, 1
  br i1 %cmp220, label %cond.true.222, label %cond.false.225

cond.true.222:                                    ; preds = %do.end.218
  %253 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)** %proc_planes, align 8, !tbaa !1
  %254 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %255 = load i8*, i8** %row, align 8, !tbaa !1
  %256 = load i32, i32* %raster, align 4, !tbaa !5
  %257 = load i32, i32* %cx, align 4, !tbaa !5
  %258 = load i32, i32* %y.addr, align 4, !tbaa !5
  %259 = load i32, i32* %ex, align 4, !tbaa !5
  %260 = load i32, i32* %cx, align 4, !tbaa !5
  %sub223 = sub nsw i32 %259, %260
  %261 = load i32, i32* %h.addr, align 4, !tbaa !5
  %262 = load i32, i32* %height, align 4, !tbaa !5
  %call224 = call i32 %253(%struct.gx_device_s* %254, i8* %255, i32 0, i32 %256, i64 0, i32 %257, i32 %258, i32 %sub223, i32 %261, i32 %262) #3
  br label %cond.end.236

cond.false.225:                                   ; preds = %do.end.218
  %263 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %proc_color, align 8, !tbaa !1
  %cmp226 = icmp ne i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* %263, null
  br i1 %cmp226, label %cond.true.228, label %cond.false.231

cond.true.228:                                    ; preds = %cond.false.225
  %264 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %proc_color, align 8, !tbaa !1
  %265 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %266 = load i8*, i8** %row, align 8, !tbaa !1
  %267 = load i32, i32* %raster, align 4, !tbaa !5
  %268 = load i32, i32* %cx, align 4, !tbaa !5
  %269 = load i32, i32* %y.addr, align 4, !tbaa !5
  %270 = load i32, i32* %ex, align 4, !tbaa !5
  %271 = load i32, i32* %cx, align 4, !tbaa !5
  %sub229 = sub nsw i32 %270, %271
  %272 = load i32, i32* %h.addr, align 4, !tbaa !5
  %call230 = call i32 %264(%struct.gx_device_s* %265, i8* %266, i32 0, i32 %267, i64 0, i32 %268, i32 %269, i32 %sub229, i32 %272) #3
  br label %cond.end.234

cond.false.231:                                   ; preds = %cond.false.225
  %273 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %proc_mono, align 8, !tbaa !1
  %274 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %275 = load i8*, i8** %row, align 8, !tbaa !1
  %276 = load i32, i32* %raster, align 4, !tbaa !5
  %277 = load i32, i32* %cx, align 4, !tbaa !5
  %278 = load i32, i32* %y.addr, align 4, !tbaa !5
  %279 = load i32, i32* %ex, align 4, !tbaa !5
  %280 = load i32, i32* %cx, align 4, !tbaa !5
  %sub232 = sub nsw i32 %279, %280
  %281 = load i32, i32* %h.addr, align 4, !tbaa !5
  %282 = load i64, i64* %color0.addr, align 8, !tbaa !7
  %283 = load i64, i64* %color1.addr, align 8, !tbaa !7
  %call233 = call i32 %273(%struct.gx_device_s* %274, i8* %275, i32 0, i32 %276, i64 0, i32 %277, i32 %278, i32 %sub232, i32 %281, i64 %282, i64 %283) #3
  br label %cond.end.234

cond.end.234:                                     ; preds = %cond.false.231, %cond.true.228
  %cond235 = phi i32 [ %call230, %cond.true.228 ], [ %call233, %cond.false.231 ]
  br label %cond.end.236

cond.end.236:                                     ; preds = %cond.end.234, %cond.true.222
  %cond237 = phi i32 [ %call224, %cond.true.222 ], [ %cond235, %cond.end.234 ]
  store i32 %cond237, i32* %code73, align 4, !tbaa !5
  %284 = load i32, i32* %code73, align 4, !tbaa !5
  %cmp238 = icmp slt i32 %284, 0
  br i1 %cmp238, label %if.then.240, label %if.end.241

if.then.240:                                      ; preds = %cond.end.236
  %285 = load i32, i32* %code73, align 4, !tbaa !5
  store i32 %285, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.241:                                       ; preds = %cond.end.236
  br label %do.body.242

do.body.242:                                      ; preds = %if.end.241
  br label %do.cond.243

do.cond.243:                                      ; preds = %do.body.242
  br label %do.end.244

do.end.244:                                       ; preds = %do.cond.243
  br label %if.end.245

if.end.245:                                       ; preds = %do.end.244, %while.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.245, %if.then.240, %if.then.207, %if.then.179
  %286 = bitcast i64* %id151 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %286) #1
  %287 = bitcast i32* %cx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %287) #1
  %288 = bitcast i32* %fex to i8*
  call void @llvm.lifetime.end(i64 4, i8* %288) #1
  %289 = bitcast i32* %ex to i8*
  call void @llvm.lifetime.end(i64 4, i8* %289) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.567 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.249

if.end.249:                                       ; preds = %cleanup.cont, %do.end.146
  br label %if.end.566

if.else.250:                                      ; preds = %if.end.87
  %290 = load i32, i32* %icw, align 4, !tbaa !5
  %291 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp251 = icmp sge i32 %290, %291
  br i1 %cmp251, label %land.lhs.true.253, label %if.else.375

land.lhs.true.253:                                ; preds = %if.else.250
  %292 = load i32, i32* %shift, align 4, !tbaa !5
  %cmp254 = icmp eq i32 %292, 0
  br i1 %cmp254, label %if.then.256, label %if.else.375

if.then.256:                                      ; preds = %land.lhs.true.253
  %293 = bitcast i32* %ey to i8*
  call void @llvm.lifetime.start(i64 4, i8* %293) #1
  %294 = load i32, i32* %y.addr, align 4, !tbaa !5
  %295 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add257 = add nsw i32 %294, %295
  store i32 %add257, i32* %ey, align 4, !tbaa !5
  %296 = bitcast i32* %fey to i8*
  call void @llvm.lifetime.start(i64 4, i8* %296) #1
  %297 = load i32, i32* %ey, align 4, !tbaa !5
  %298 = load i32, i32* %height, align 4, !tbaa !5
  %sub258 = sub nsw i32 %297, %298
  store i32 %sub258, i32* %fey, align 4, !tbaa !5
  %299 = bitcast i32* %cy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %299) #1
  %300 = load i32, i32* %y.addr, align 4, !tbaa !5
  %301 = load i32, i32* %ch, align 4, !tbaa !5
  %add259 = add nsw i32 %300, %301
  store i32 %add259, i32* %cy, align 4, !tbaa !5
  %302 = bitcast i64* %id260 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %302) #1
  %303 = load i32, i32* %w.addr, align 4, !tbaa !5
  %304 = load i32, i32* %width, align 4, !tbaa !5
  %cmp261 = icmp eq i32 %303, %304
  br i1 %cmp261, label %cond.true.263, label %cond.false.264

cond.true.263:                                    ; preds = %if.then.256
  %305 = load i64, i64* %tile_id, align 8, !tbaa !7
  br label %cond.end.265

cond.false.264:                                   ; preds = %if.then.256
  br label %cond.end.265

cond.end.265:                                     ; preds = %cond.false.264, %cond.true.263
  %cond266 = phi i64 [ %305, %cond.true.263 ], [ 0, %cond.false.264 ]
  store i64 %cond266, i64* %id260, align 8, !tbaa !7
  br label %do.body.267

do.body.267:                                      ; preds = %cond.end.265
  br label %do.cond.268

do.cond.268:                                      ; preds = %do.body.267
  br label %do.end.269

do.end.269:                                       ; preds = %do.cond.268
  %306 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %num_planes270 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %306, i32 0, i32 8
  %307 = load i32, i32* %num_planes270, align 4, !tbaa !16
  %cmp271 = icmp sgt i32 %307, 1
  br i1 %cmp271, label %cond.true.273, label %cond.false.281

cond.true.273:                                    ; preds = %do.end.269
  %308 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)** %proc_planes, align 8, !tbaa !1
  %309 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %310 = load i8*, i8** %row, align 8, !tbaa !1
  %311 = load i32, i32* %irx, align 4, !tbaa !5
  %312 = load i32, i32* %raster, align 4, !tbaa !5
  %313 = load i32, i32* %ch, align 4, !tbaa !5
  %314 = load i32, i32* %height, align 4, !tbaa !5
  %cmp274 = icmp eq i32 %313, %314
  br i1 %cmp274, label %cond.true.276, label %cond.false.277

cond.true.276:                                    ; preds = %cond.true.273
  %315 = load i64, i64* %id260, align 8, !tbaa !7
  br label %cond.end.278

cond.false.277:                                   ; preds = %cond.true.273
  br label %cond.end.278

cond.end.278:                                     ; preds = %cond.false.277, %cond.true.276
  %cond279 = phi i64 [ %315, %cond.true.276 ], [ 0, %cond.false.277 ]
  %316 = load i32, i32* %x.addr, align 4, !tbaa !5
  %317 = load i32, i32* %y.addr, align 4, !tbaa !5
  %318 = load i32, i32* %w.addr, align 4, !tbaa !5
  %319 = load i32, i32* %ch, align 4, !tbaa !5
  %320 = load i32, i32* %height, align 4, !tbaa !5
  %call280 = call i32 %308(%struct.gx_device_s* %309, i8* %310, i32 %311, i32 %312, i64 %cond279, i32 %316, i32 %317, i32 %318, i32 %319, i32 %320) #3
  br label %cond.end.302

cond.false.281:                                   ; preds = %do.end.269
  %321 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %proc_color, align 8, !tbaa !1
  %cmp282 = icmp ne i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* %321, null
  br i1 %cmp282, label %cond.true.284, label %cond.false.292

cond.true.284:                                    ; preds = %cond.false.281
  %322 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %proc_color, align 8, !tbaa !1
  %323 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %324 = load i8*, i8** %row, align 8, !tbaa !1
  %325 = load i32, i32* %irx, align 4, !tbaa !5
  %326 = load i32, i32* %raster, align 4, !tbaa !5
  %327 = load i32, i32* %ch, align 4, !tbaa !5
  %328 = load i32, i32* %height, align 4, !tbaa !5
  %cmp285 = icmp eq i32 %327, %328
  br i1 %cmp285, label %cond.true.287, label %cond.false.288

cond.true.287:                                    ; preds = %cond.true.284
  %329 = load i64, i64* %id260, align 8, !tbaa !7
  br label %cond.end.289

cond.false.288:                                   ; preds = %cond.true.284
  br label %cond.end.289

cond.end.289:                                     ; preds = %cond.false.288, %cond.true.287
  %cond290 = phi i64 [ %329, %cond.true.287 ], [ 0, %cond.false.288 ]
  %330 = load i32, i32* %x.addr, align 4, !tbaa !5
  %331 = load i32, i32* %y.addr, align 4, !tbaa !5
  %332 = load i32, i32* %w.addr, align 4, !tbaa !5
  %333 = load i32, i32* %ch, align 4, !tbaa !5
  %call291 = call i32 %322(%struct.gx_device_s* %323, i8* %324, i32 %325, i32 %326, i64 %cond290, i32 %330, i32 %331, i32 %332, i32 %333) #3
  br label %cond.end.300

cond.false.292:                                   ; preds = %cond.false.281
  %334 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %proc_mono, align 8, !tbaa !1
  %335 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %336 = load i8*, i8** %row, align 8, !tbaa !1
  %337 = load i32, i32* %irx, align 4, !tbaa !5
  %338 = load i32, i32* %raster, align 4, !tbaa !5
  %339 = load i32, i32* %ch, align 4, !tbaa !5
  %340 = load i32, i32* %height, align 4, !tbaa !5
  %cmp293 = icmp eq i32 %339, %340
  br i1 %cmp293, label %cond.true.295, label %cond.false.296

cond.true.295:                                    ; preds = %cond.false.292
  %341 = load i64, i64* %id260, align 8, !tbaa !7
  br label %cond.end.297

cond.false.296:                                   ; preds = %cond.false.292
  br label %cond.end.297

cond.end.297:                                     ; preds = %cond.false.296, %cond.true.295
  %cond298 = phi i64 [ %341, %cond.true.295 ], [ 0, %cond.false.296 ]
  %342 = load i32, i32* %x.addr, align 4, !tbaa !5
  %343 = load i32, i32* %y.addr, align 4, !tbaa !5
  %344 = load i32, i32* %w.addr, align 4, !tbaa !5
  %345 = load i32, i32* %ch, align 4, !tbaa !5
  %346 = load i64, i64* %color0.addr, align 8, !tbaa !7
  %347 = load i64, i64* %color1.addr, align 8, !tbaa !7
  %call299 = call i32 %334(%struct.gx_device_s* %335, i8* %336, i32 %337, i32 %338, i64 %cond298, i32 %342, i32 %343, i32 %344, i32 %345, i64 %346, i64 %347) #3
  br label %cond.end.300

cond.end.300:                                     ; preds = %cond.end.297, %cond.end.289
  %cond301 = phi i32 [ %call291, %cond.end.289 ], [ %call299, %cond.end.297 ]
  br label %cond.end.302

cond.end.302:                                     ; preds = %cond.end.300, %cond.end.278
  %cond303 = phi i32 [ %call280, %cond.end.278 ], [ %cond301, %cond.end.300 ]
  store i32 %cond303, i32* %code73, align 4, !tbaa !5
  %348 = load i32, i32* %code73, align 4, !tbaa !5
  %cmp304 = icmp slt i32 %348, 0
  br i1 %cmp304, label %if.then.306, label %if.end.307

if.then.306:                                      ; preds = %cond.end.302
  %349 = load i32, i32* %code73, align 4, !tbaa !5
  store i32 %349, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.369

if.end.307:                                       ; preds = %cond.end.302
  br label %do.body.308

do.body.308:                                      ; preds = %if.end.307
  br label %do.cond.309

do.cond.309:                                      ; preds = %do.body.308
  br label %do.end.310

do.end.310:                                       ; preds = %do.cond.309
  %350 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %data311 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %350, i32 0, i32 0
  %351 = load i8*, i8** %data311, align 8, !tbaa !76
  store i8* %351, i8** %row, align 8, !tbaa !1
  br label %do.body.312

do.body.312:                                      ; preds = %do.cond.364, %do.end.310
  %352 = load i32, i32* %cy, align 4, !tbaa !5
  %353 = load i32, i32* %fey, align 4, !tbaa !5
  %cmp313 = icmp sgt i32 %352, %353
  br i1 %cmp313, label %cond.true.315, label %cond.false.317

cond.true.315:                                    ; preds = %do.body.312
  %354 = load i32, i32* %ey, align 4, !tbaa !5
  %355 = load i32, i32* %cy, align 4, !tbaa !5
  %sub316 = sub nsw i32 %354, %355
  br label %cond.end.318

cond.false.317:                                   ; preds = %do.body.312
  %356 = load i32, i32* %height, align 4, !tbaa !5
  br label %cond.end.318

cond.end.318:                                     ; preds = %cond.false.317, %cond.true.315
  %cond319 = phi i32 [ %sub316, %cond.true.315 ], [ %356, %cond.false.317 ]
  store i32 %cond319, i32* %ch, align 4, !tbaa !5
  br label %do.body.320

do.body.320:                                      ; preds = %cond.end.318
  br label %do.cond.321

do.cond.321:                                      ; preds = %do.body.320
  br label %do.end.322

do.end.322:                                       ; preds = %do.cond.321
  %357 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %num_planes323 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %357, i32 0, i32 8
  %358 = load i32, i32* %num_planes323, align 4, !tbaa !16
  %cmp324 = icmp sgt i32 %358, 1
  br i1 %cmp324, label %cond.true.326, label %cond.false.334

cond.true.326:                                    ; preds = %do.end.322
  %359 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)** %proc_planes, align 8, !tbaa !1
  %360 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %361 = load i8*, i8** %row, align 8, !tbaa !1
  %362 = load i32, i32* %irx, align 4, !tbaa !5
  %363 = load i32, i32* %raster, align 4, !tbaa !5
  %364 = load i32, i32* %ch, align 4, !tbaa !5
  %365 = load i32, i32* %height, align 4, !tbaa !5
  %cmp327 = icmp eq i32 %364, %365
  br i1 %cmp327, label %cond.true.329, label %cond.false.330

cond.true.329:                                    ; preds = %cond.true.326
  %366 = load i64, i64* %id260, align 8, !tbaa !7
  br label %cond.end.331

cond.false.330:                                   ; preds = %cond.true.326
  br label %cond.end.331

cond.end.331:                                     ; preds = %cond.false.330, %cond.true.329
  %cond332 = phi i64 [ %366, %cond.true.329 ], [ 0, %cond.false.330 ]
  %367 = load i32, i32* %x.addr, align 4, !tbaa !5
  %368 = load i32, i32* %cy, align 4, !tbaa !5
  %369 = load i32, i32* %w.addr, align 4, !tbaa !5
  %370 = load i32, i32* %ch, align 4, !tbaa !5
  %371 = load i32, i32* %height, align 4, !tbaa !5
  %call333 = call i32 %359(%struct.gx_device_s* %360, i8* %361, i32 %362, i32 %363, i64 %cond332, i32 %367, i32 %368, i32 %369, i32 %370, i32 %371) #3
  br label %cond.end.355

cond.false.334:                                   ; preds = %do.end.322
  %372 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %proc_color, align 8, !tbaa !1
  %cmp335 = icmp ne i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* %372, null
  br i1 %cmp335, label %cond.true.337, label %cond.false.345

cond.true.337:                                    ; preds = %cond.false.334
  %373 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %proc_color, align 8, !tbaa !1
  %374 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %375 = load i8*, i8** %row, align 8, !tbaa !1
  %376 = load i32, i32* %irx, align 4, !tbaa !5
  %377 = load i32, i32* %raster, align 4, !tbaa !5
  %378 = load i32, i32* %ch, align 4, !tbaa !5
  %379 = load i32, i32* %height, align 4, !tbaa !5
  %cmp338 = icmp eq i32 %378, %379
  br i1 %cmp338, label %cond.true.340, label %cond.false.341

cond.true.340:                                    ; preds = %cond.true.337
  %380 = load i64, i64* %id260, align 8, !tbaa !7
  br label %cond.end.342

cond.false.341:                                   ; preds = %cond.true.337
  br label %cond.end.342

cond.end.342:                                     ; preds = %cond.false.341, %cond.true.340
  %cond343 = phi i64 [ %380, %cond.true.340 ], [ 0, %cond.false.341 ]
  %381 = load i32, i32* %x.addr, align 4, !tbaa !5
  %382 = load i32, i32* %cy, align 4, !tbaa !5
  %383 = load i32, i32* %w.addr, align 4, !tbaa !5
  %384 = load i32, i32* %ch, align 4, !tbaa !5
  %call344 = call i32 %373(%struct.gx_device_s* %374, i8* %375, i32 %376, i32 %377, i64 %cond343, i32 %381, i32 %382, i32 %383, i32 %384) #3
  br label %cond.end.353

cond.false.345:                                   ; preds = %cond.false.334
  %385 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %proc_mono, align 8, !tbaa !1
  %386 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %387 = load i8*, i8** %row, align 8, !tbaa !1
  %388 = load i32, i32* %irx, align 4, !tbaa !5
  %389 = load i32, i32* %raster, align 4, !tbaa !5
  %390 = load i32, i32* %ch, align 4, !tbaa !5
  %391 = load i32, i32* %height, align 4, !tbaa !5
  %cmp346 = icmp eq i32 %390, %391
  br i1 %cmp346, label %cond.true.348, label %cond.false.349

cond.true.348:                                    ; preds = %cond.false.345
  %392 = load i64, i64* %id260, align 8, !tbaa !7
  br label %cond.end.350

cond.false.349:                                   ; preds = %cond.false.345
  br label %cond.end.350

cond.end.350:                                     ; preds = %cond.false.349, %cond.true.348
  %cond351 = phi i64 [ %392, %cond.true.348 ], [ 0, %cond.false.349 ]
  %393 = load i32, i32* %x.addr, align 4, !tbaa !5
  %394 = load i32, i32* %cy, align 4, !tbaa !5
  %395 = load i32, i32* %w.addr, align 4, !tbaa !5
  %396 = load i32, i32* %ch, align 4, !tbaa !5
  %397 = load i64, i64* %color0.addr, align 8, !tbaa !7
  %398 = load i64, i64* %color1.addr, align 8, !tbaa !7
  %call352 = call i32 %385(%struct.gx_device_s* %386, i8* %387, i32 %388, i32 %389, i64 %cond351, i32 %393, i32 %394, i32 %395, i32 %396, i64 %397, i64 %398) #3
  br label %cond.end.353

cond.end.353:                                     ; preds = %cond.end.350, %cond.end.342
  %cond354 = phi i32 [ %call344, %cond.end.342 ], [ %call352, %cond.end.350 ]
  br label %cond.end.355

cond.end.355:                                     ; preds = %cond.end.353, %cond.end.331
  %cond356 = phi i32 [ %call333, %cond.end.331 ], [ %cond354, %cond.end.353 ]
  store i32 %cond356, i32* %code73, align 4, !tbaa !5
  %399 = load i32, i32* %code73, align 4, !tbaa !5
  %cmp357 = icmp slt i32 %399, 0
  br i1 %cmp357, label %if.then.359, label %if.end.360

if.then.359:                                      ; preds = %cond.end.355
  %400 = load i32, i32* %code73, align 4, !tbaa !5
  store i32 %400, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.369

if.end.360:                                       ; preds = %cond.end.355
  br label %do.body.361

do.body.361:                                      ; preds = %if.end.360
  br label %do.cond.362

do.cond.362:                                      ; preds = %do.body.361
  br label %do.end.363

do.end.363:                                       ; preds = %do.cond.362
  br label %do.cond.364

do.cond.364:                                      ; preds = %do.end.363
  %401 = load i32, i32* %ch, align 4, !tbaa !5
  %402 = load i32, i32* %cy, align 4, !tbaa !5
  %add365 = add nsw i32 %402, %401
  store i32 %add365, i32* %cy, align 4, !tbaa !5
  %403 = load i32, i32* %ey, align 4, !tbaa !5
  %cmp366 = icmp slt i32 %add365, %403
  br i1 %cmp366, label %do.body.312, label %do.end.368

do.end.368:                                       ; preds = %do.cond.364
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.369

cleanup.369:                                      ; preds = %do.end.368, %if.then.359, %if.then.306
  %404 = bitcast i64* %id260 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %404) #1
  %405 = bitcast i32* %cy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %405) #1
  %406 = bitcast i32* %fey to i8*
  call void @llvm.lifetime.end(i64 4, i8* %406) #1
  %407 = bitcast i32* %ey to i8*
  call void @llvm.lifetime.end(i64 4, i8* %407) #1
  %cleanup.dest.373 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.373, label %cleanup.567 [
    i32 0, label %cleanup.cont.374
  ]

cleanup.cont.374:                                 ; preds = %cleanup.369
  br label %if.end.565

if.else.375:                                      ; preds = %land.lhs.true.253, %if.else.250
  %408 = bitcast i32* %ex376 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %408) #1
  %409 = load i32, i32* %x.addr, align 4, !tbaa !5
  %410 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add377 = add nsw i32 %409, %410
  store i32 %add377, i32* %ex376, align 4, !tbaa !5
  %411 = bitcast i32* %ey378 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %411) #1
  %412 = load i32, i32* %y.addr, align 4, !tbaa !5
  %413 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add379 = add nsw i32 %412, %413
  store i32 %add379, i32* %ey378, align 4, !tbaa !5
  %414 = bitcast i32* %fex380 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %414) #1
  %415 = load i32, i32* %ex376, align 4, !tbaa !5
  %416 = load i32, i32* %width, align 4, !tbaa !5
  %sub381 = sub nsw i32 %415, %416
  store i32 %sub381, i32* %fex380, align 4, !tbaa !5
  %417 = bitcast i32* %fey382 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %417) #1
  %418 = load i32, i32* %ey378, align 4, !tbaa !5
  %419 = load i32, i32* %height, align 4, !tbaa !5
  %sub383 = sub nsw i32 %418, %419
  store i32 %sub383, i32* %fey382, align 4, !tbaa !5
  %420 = bitcast i32* %cx384 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %420) #1
  %421 = bitcast i32* %cy385 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %421) #1
  %422 = load i32, i32* %y.addr, align 4, !tbaa !5
  store i32 %422, i32* %cy385, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %cleanup.cont.556, %if.else.375
  %423 = bitcast i64* %id386 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %423) #1
  %424 = load i32, i32* %ch, align 4, !tbaa !5
  %425 = load i32, i32* %height, align 4, !tbaa !5
  %cmp387 = icmp eq i32 %424, %425
  br i1 %cmp387, label %cond.true.389, label %cond.false.390

cond.true.389:                                    ; preds = %for.cond
  %426 = load i64, i64* %tile_id, align 8, !tbaa !7
  br label %cond.end.391

cond.false.390:                                   ; preds = %for.cond
  br label %cond.end.391

cond.end.391:                                     ; preds = %cond.false.390, %cond.true.389
  %cond392 = phi i64 [ %426, %cond.true.389 ], [ 0, %cond.false.390 ]
  store i64 %cond392, i64* %id386, align 8, !tbaa !7
  %427 = load i32, i32* %icw, align 4, !tbaa !5
  %428 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp393 = icmp sge i32 %427, %428
  br i1 %cmp393, label %if.then.395, label %if.else.440

if.then.395:                                      ; preds = %cond.end.391
  br label %do.body.396

do.body.396:                                      ; preds = %if.then.395
  br label %do.cond.397

do.cond.397:                                      ; preds = %do.body.396
  br label %do.end.398

do.end.398:                                       ; preds = %do.cond.397
  %429 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %num_planes399 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %429, i32 0, i32 8
  %430 = load i32, i32* %num_planes399, align 4, !tbaa !16
  %cmp400 = icmp sgt i32 %430, 1
  br i1 %cmp400, label %cond.true.402, label %cond.false.410

cond.true.402:                                    ; preds = %do.end.398
  %431 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)** %proc_planes, align 8, !tbaa !1
  %432 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %433 = load i8*, i8** %row, align 8, !tbaa !1
  %434 = load i32, i32* %irx, align 4, !tbaa !5
  %435 = load i32, i32* %raster, align 4, !tbaa !5
  %436 = load i32, i32* %w.addr, align 4, !tbaa !5
  %437 = load i32, i32* %width, align 4, !tbaa !5
  %cmp403 = icmp eq i32 %436, %437
  br i1 %cmp403, label %cond.true.405, label %cond.false.406

cond.true.405:                                    ; preds = %cond.true.402
  %438 = load i64, i64* %id386, align 8, !tbaa !7
  br label %cond.end.407

cond.false.406:                                   ; preds = %cond.true.402
  br label %cond.end.407

cond.end.407:                                     ; preds = %cond.false.406, %cond.true.405
  %cond408 = phi i64 [ %438, %cond.true.405 ], [ 0, %cond.false.406 ]
  %439 = load i32, i32* %x.addr, align 4, !tbaa !5
  %440 = load i32, i32* %cy385, align 4, !tbaa !5
  %441 = load i32, i32* %w.addr, align 4, !tbaa !5
  %442 = load i32, i32* %ch, align 4, !tbaa !5
  %443 = load i32, i32* %height, align 4, !tbaa !5
  %call409 = call i32 %431(%struct.gx_device_s* %432, i8* %433, i32 %434, i32 %435, i64 %cond408, i32 %439, i32 %440, i32 %441, i32 %442, i32 %443) #3
  br label %cond.end.431

cond.false.410:                                   ; preds = %do.end.398
  %444 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %proc_color, align 8, !tbaa !1
  %cmp411 = icmp ne i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* %444, null
  br i1 %cmp411, label %cond.true.413, label %cond.false.421

cond.true.413:                                    ; preds = %cond.false.410
  %445 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %proc_color, align 8, !tbaa !1
  %446 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %447 = load i8*, i8** %row, align 8, !tbaa !1
  %448 = load i32, i32* %irx, align 4, !tbaa !5
  %449 = load i32, i32* %raster, align 4, !tbaa !5
  %450 = load i32, i32* %w.addr, align 4, !tbaa !5
  %451 = load i32, i32* %width, align 4, !tbaa !5
  %cmp414 = icmp eq i32 %450, %451
  br i1 %cmp414, label %cond.true.416, label %cond.false.417

cond.true.416:                                    ; preds = %cond.true.413
  %452 = load i64, i64* %id386, align 8, !tbaa !7
  br label %cond.end.418

cond.false.417:                                   ; preds = %cond.true.413
  br label %cond.end.418

cond.end.418:                                     ; preds = %cond.false.417, %cond.true.416
  %cond419 = phi i64 [ %452, %cond.true.416 ], [ 0, %cond.false.417 ]
  %453 = load i32, i32* %x.addr, align 4, !tbaa !5
  %454 = load i32, i32* %cy385, align 4, !tbaa !5
  %455 = load i32, i32* %w.addr, align 4, !tbaa !5
  %456 = load i32, i32* %ch, align 4, !tbaa !5
  %call420 = call i32 %445(%struct.gx_device_s* %446, i8* %447, i32 %448, i32 %449, i64 %cond419, i32 %453, i32 %454, i32 %455, i32 %456) #3
  br label %cond.end.429

cond.false.421:                                   ; preds = %cond.false.410
  %457 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %proc_mono, align 8, !tbaa !1
  %458 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %459 = load i8*, i8** %row, align 8, !tbaa !1
  %460 = load i32, i32* %irx, align 4, !tbaa !5
  %461 = load i32, i32* %raster, align 4, !tbaa !5
  %462 = load i32, i32* %w.addr, align 4, !tbaa !5
  %463 = load i32, i32* %width, align 4, !tbaa !5
  %cmp422 = icmp eq i32 %462, %463
  br i1 %cmp422, label %cond.true.424, label %cond.false.425

cond.true.424:                                    ; preds = %cond.false.421
  %464 = load i64, i64* %id386, align 8, !tbaa !7
  br label %cond.end.426

cond.false.425:                                   ; preds = %cond.false.421
  br label %cond.end.426

cond.end.426:                                     ; preds = %cond.false.425, %cond.true.424
  %cond427 = phi i64 [ %464, %cond.true.424 ], [ 0, %cond.false.425 ]
  %465 = load i32, i32* %x.addr, align 4, !tbaa !5
  %466 = load i32, i32* %cy385, align 4, !tbaa !5
  %467 = load i32, i32* %w.addr, align 4, !tbaa !5
  %468 = load i32, i32* %ch, align 4, !tbaa !5
  %469 = load i64, i64* %color0.addr, align 8, !tbaa !7
  %470 = load i64, i64* %color1.addr, align 8, !tbaa !7
  %call428 = call i32 %457(%struct.gx_device_s* %458, i8* %459, i32 %460, i32 %461, i64 %cond427, i32 %465, i32 %466, i32 %467, i32 %468, i64 %469, i64 %470) #3
  br label %cond.end.429

cond.end.429:                                     ; preds = %cond.end.426, %cond.end.418
  %cond430 = phi i32 [ %call420, %cond.end.418 ], [ %call428, %cond.end.426 ]
  br label %cond.end.431

cond.end.431:                                     ; preds = %cond.end.429, %cond.end.407
  %cond432 = phi i32 [ %call409, %cond.end.407 ], [ %cond430, %cond.end.429 ]
  store i32 %cond432, i32* %code73, align 4, !tbaa !5
  %471 = load i32, i32* %code73, align 4, !tbaa !5
  %cmp433 = icmp slt i32 %471, 0
  br i1 %cmp433, label %if.then.435, label %if.end.436

if.then.435:                                      ; preds = %cond.end.431
  %472 = load i32, i32* %code73, align 4, !tbaa !5
  store i32 %472, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.554

if.end.436:                                       ; preds = %cond.end.431
  br label %do.body.437

do.body.437:                                      ; preds = %if.end.436
  br label %do.cond.438

do.cond.438:                                      ; preds = %do.body.437
  br label %do.end.439

do.end.439:                                       ; preds = %do.cond.438
  br label %if.end.533

if.else.440:                                      ; preds = %cond.end.391
  br label %do.body.441

do.body.441:                                      ; preds = %if.else.440
  br label %do.cond.442

do.cond.442:                                      ; preds = %do.body.441
  br label %do.end.443

do.end.443:                                       ; preds = %do.cond.442
  %473 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %num_planes444 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %473, i32 0, i32 8
  %474 = load i32, i32* %num_planes444, align 4, !tbaa !16
  %cmp445 = icmp sgt i32 %474, 1
  br i1 %cmp445, label %cond.true.447, label %cond.false.449

cond.true.447:                                    ; preds = %do.end.443
  %475 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)** %proc_planes, align 8, !tbaa !1
  %476 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %477 = load i8*, i8** %row, align 8, !tbaa !1
  %478 = load i32, i32* %irx, align 4, !tbaa !5
  %479 = load i32, i32* %raster, align 4, !tbaa !5
  %480 = load i32, i32* %x.addr, align 4, !tbaa !5
  %481 = load i32, i32* %cy385, align 4, !tbaa !5
  %482 = load i32, i32* %icw, align 4, !tbaa !5
  %483 = load i32, i32* %ch, align 4, !tbaa !5
  %484 = load i32, i32* %height, align 4, !tbaa !5
  %call448 = call i32 %475(%struct.gx_device_s* %476, i8* %477, i32 %478, i32 %479, i64 0, i32 %480, i32 %481, i32 %482, i32 %483, i32 %484) #3
  br label %cond.end.458

cond.false.449:                                   ; preds = %do.end.443
  %485 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %proc_color, align 8, !tbaa !1
  %cmp450 = icmp ne i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* %485, null
  br i1 %cmp450, label %cond.true.452, label %cond.false.454

cond.true.452:                                    ; preds = %cond.false.449
  %486 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %proc_color, align 8, !tbaa !1
  %487 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %488 = load i8*, i8** %row, align 8, !tbaa !1
  %489 = load i32, i32* %irx, align 4, !tbaa !5
  %490 = load i32, i32* %raster, align 4, !tbaa !5
  %491 = load i32, i32* %x.addr, align 4, !tbaa !5
  %492 = load i32, i32* %cy385, align 4, !tbaa !5
  %493 = load i32, i32* %icw, align 4, !tbaa !5
  %494 = load i32, i32* %ch, align 4, !tbaa !5
  %call453 = call i32 %486(%struct.gx_device_s* %487, i8* %488, i32 %489, i32 %490, i64 0, i32 %491, i32 %492, i32 %493, i32 %494) #3
  br label %cond.end.456

cond.false.454:                                   ; preds = %cond.false.449
  %495 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %proc_mono, align 8, !tbaa !1
  %496 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %497 = load i8*, i8** %row, align 8, !tbaa !1
  %498 = load i32, i32* %irx, align 4, !tbaa !5
  %499 = load i32, i32* %raster, align 4, !tbaa !5
  %500 = load i32, i32* %x.addr, align 4, !tbaa !5
  %501 = load i32, i32* %cy385, align 4, !tbaa !5
  %502 = load i32, i32* %icw, align 4, !tbaa !5
  %503 = load i32, i32* %ch, align 4, !tbaa !5
  %504 = load i64, i64* %color0.addr, align 8, !tbaa !7
  %505 = load i64, i64* %color1.addr, align 8, !tbaa !7
  %call455 = call i32 %495(%struct.gx_device_s* %496, i8* %497, i32 %498, i32 %499, i64 0, i32 %500, i32 %501, i32 %502, i32 %503, i64 %504, i64 %505) #3
  br label %cond.end.456

cond.end.456:                                     ; preds = %cond.false.454, %cond.true.452
  %cond457 = phi i32 [ %call453, %cond.true.452 ], [ %call455, %cond.false.454 ]
  br label %cond.end.458

cond.end.458:                                     ; preds = %cond.end.456, %cond.true.447
  %cond459 = phi i32 [ %call448, %cond.true.447 ], [ %cond457, %cond.end.456 ]
  store i32 %cond459, i32* %code73, align 4, !tbaa !5
  %506 = load i32, i32* %code73, align 4, !tbaa !5
  %cmp460 = icmp slt i32 %506, 0
  br i1 %cmp460, label %if.then.462, label %if.end.463

if.then.462:                                      ; preds = %cond.end.458
  %507 = load i32, i32* %code73, align 4, !tbaa !5
  store i32 %507, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.554

if.end.463:                                       ; preds = %cond.end.458
  br label %do.body.464

do.body.464:                                      ; preds = %if.end.463
  br label %do.cond.465

do.cond.465:                                      ; preds = %do.body.464
  br label %do.end.466

do.end.466:                                       ; preds = %do.cond.465
  %508 = load i32, i32* %x.addr, align 4, !tbaa !5
  %509 = load i32, i32* %icw, align 4, !tbaa !5
  %add467 = add nsw i32 %508, %509
  store i32 %add467, i32* %cx384, align 4, !tbaa !5
  br label %while.cond.468

while.cond.468:                                   ; preds = %do.end.497, %do.end.466
  %510 = load i32, i32* %cx384, align 4, !tbaa !5
  %511 = load i32, i32* %fex380, align 4, !tbaa !5
  %cmp469 = icmp sle i32 %510, %511
  br i1 %cmp469, label %while.body.471, label %while.end.499

while.body.471:                                   ; preds = %while.cond.468
  br label %do.body.472

do.body.472:                                      ; preds = %while.body.471
  br label %do.cond.473

do.cond.473:                                      ; preds = %do.body.472
  br label %do.end.474

do.end.474:                                       ; preds = %do.cond.473
  %512 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %num_planes475 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %512, i32 0, i32 8
  %513 = load i32, i32* %num_planes475, align 4, !tbaa !16
  %cmp476 = icmp sgt i32 %513, 1
  br i1 %cmp476, label %cond.true.478, label %cond.false.480

cond.true.478:                                    ; preds = %do.end.474
  %514 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)** %proc_planes, align 8, !tbaa !1
  %515 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %516 = load i8*, i8** %row, align 8, !tbaa !1
  %517 = load i32, i32* %raster, align 4, !tbaa !5
  %518 = load i64, i64* %id386, align 8, !tbaa !7
  %519 = load i32, i32* %cx384, align 4, !tbaa !5
  %520 = load i32, i32* %cy385, align 4, !tbaa !5
  %521 = load i32, i32* %width, align 4, !tbaa !5
  %522 = load i32, i32* %ch, align 4, !tbaa !5
  %523 = load i32, i32* %height, align 4, !tbaa !5
  %call479 = call i32 %514(%struct.gx_device_s* %515, i8* %516, i32 0, i32 %517, i64 %518, i32 %519, i32 %520, i32 %521, i32 %522, i32 %523) #3
  br label %cond.end.489

cond.false.480:                                   ; preds = %do.end.474
  %524 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %proc_color, align 8, !tbaa !1
  %cmp481 = icmp ne i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* %524, null
  br i1 %cmp481, label %cond.true.483, label %cond.false.485

cond.true.483:                                    ; preds = %cond.false.480
  %525 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %proc_color, align 8, !tbaa !1
  %526 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %527 = load i8*, i8** %row, align 8, !tbaa !1
  %528 = load i32, i32* %raster, align 4, !tbaa !5
  %529 = load i64, i64* %id386, align 8, !tbaa !7
  %530 = load i32, i32* %cx384, align 4, !tbaa !5
  %531 = load i32, i32* %cy385, align 4, !tbaa !5
  %532 = load i32, i32* %width, align 4, !tbaa !5
  %533 = load i32, i32* %ch, align 4, !tbaa !5
  %call484 = call i32 %525(%struct.gx_device_s* %526, i8* %527, i32 0, i32 %528, i64 %529, i32 %530, i32 %531, i32 %532, i32 %533) #3
  br label %cond.end.487

cond.false.485:                                   ; preds = %cond.false.480
  %534 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %proc_mono, align 8, !tbaa !1
  %535 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %536 = load i8*, i8** %row, align 8, !tbaa !1
  %537 = load i32, i32* %raster, align 4, !tbaa !5
  %538 = load i64, i64* %id386, align 8, !tbaa !7
  %539 = load i32, i32* %cx384, align 4, !tbaa !5
  %540 = load i32, i32* %cy385, align 4, !tbaa !5
  %541 = load i32, i32* %width, align 4, !tbaa !5
  %542 = load i32, i32* %ch, align 4, !tbaa !5
  %543 = load i64, i64* %color0.addr, align 8, !tbaa !7
  %544 = load i64, i64* %color1.addr, align 8, !tbaa !7
  %call486 = call i32 %534(%struct.gx_device_s* %535, i8* %536, i32 0, i32 %537, i64 %538, i32 %539, i32 %540, i32 %541, i32 %542, i64 %543, i64 %544) #3
  br label %cond.end.487

cond.end.487:                                     ; preds = %cond.false.485, %cond.true.483
  %cond488 = phi i32 [ %call484, %cond.true.483 ], [ %call486, %cond.false.485 ]
  br label %cond.end.489

cond.end.489:                                     ; preds = %cond.end.487, %cond.true.478
  %cond490 = phi i32 [ %call479, %cond.true.478 ], [ %cond488, %cond.end.487 ]
  store i32 %cond490, i32* %code73, align 4, !tbaa !5
  %545 = load i32, i32* %code73, align 4, !tbaa !5
  %cmp491 = icmp slt i32 %545, 0
  br i1 %cmp491, label %if.then.493, label %if.end.494

if.then.493:                                      ; preds = %cond.end.489
  %546 = load i32, i32* %code73, align 4, !tbaa !5
  store i32 %546, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.554

if.end.494:                                       ; preds = %cond.end.489
  br label %do.body.495

do.body.495:                                      ; preds = %if.end.494
  br label %do.cond.496

do.cond.496:                                      ; preds = %do.body.495
  br label %do.end.497

do.end.497:                                       ; preds = %do.cond.496
  %547 = load i32, i32* %width, align 4, !tbaa !5
  %548 = load i32, i32* %cx384, align 4, !tbaa !5
  %add498 = add nsw i32 %548, %547
  store i32 %add498, i32* %cx384, align 4, !tbaa !5
  br label %while.cond.468

while.end.499:                                    ; preds = %while.cond.468
  %549 = load i32, i32* %cx384, align 4, !tbaa !5
  %550 = load i32, i32* %ex376, align 4, !tbaa !5
  %cmp500 = icmp slt i32 %549, %550
  br i1 %cmp500, label %if.then.502, label %if.end.532

if.then.502:                                      ; preds = %while.end.499
  br label %do.body.503

do.body.503:                                      ; preds = %if.then.502
  br label %do.cond.504

do.cond.504:                                      ; preds = %do.body.503
  br label %do.end.505

do.end.505:                                       ; preds = %do.cond.504
  %551 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %num_planes506 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %551, i32 0, i32 8
  %552 = load i32, i32* %num_planes506, align 4, !tbaa !16
  %cmp507 = icmp sgt i32 %552, 1
  br i1 %cmp507, label %cond.true.509, label %cond.false.512

cond.true.509:                                    ; preds = %do.end.505
  %553 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)** %proc_planes, align 8, !tbaa !1
  %554 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %555 = load i8*, i8** %row, align 8, !tbaa !1
  %556 = load i32, i32* %raster, align 4, !tbaa !5
  %557 = load i32, i32* %cx384, align 4, !tbaa !5
  %558 = load i32, i32* %cy385, align 4, !tbaa !5
  %559 = load i32, i32* %ex376, align 4, !tbaa !5
  %560 = load i32, i32* %cx384, align 4, !tbaa !5
  %sub510 = sub nsw i32 %559, %560
  %561 = load i32, i32* %ch, align 4, !tbaa !5
  %562 = load i32, i32* %height, align 4, !tbaa !5
  %call511 = call i32 %553(%struct.gx_device_s* %554, i8* %555, i32 0, i32 %556, i64 0, i32 %557, i32 %558, i32 %sub510, i32 %561, i32 %562) #3
  br label %cond.end.523

cond.false.512:                                   ; preds = %do.end.505
  %563 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %proc_color, align 8, !tbaa !1
  %cmp513 = icmp ne i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* %563, null
  br i1 %cmp513, label %cond.true.515, label %cond.false.518

cond.true.515:                                    ; preds = %cond.false.512
  %564 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %proc_color, align 8, !tbaa !1
  %565 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %566 = load i8*, i8** %row, align 8, !tbaa !1
  %567 = load i32, i32* %raster, align 4, !tbaa !5
  %568 = load i32, i32* %cx384, align 4, !tbaa !5
  %569 = load i32, i32* %cy385, align 4, !tbaa !5
  %570 = load i32, i32* %ex376, align 4, !tbaa !5
  %571 = load i32, i32* %cx384, align 4, !tbaa !5
  %sub516 = sub nsw i32 %570, %571
  %572 = load i32, i32* %ch, align 4, !tbaa !5
  %call517 = call i32 %564(%struct.gx_device_s* %565, i8* %566, i32 0, i32 %567, i64 0, i32 %568, i32 %569, i32 %sub516, i32 %572) #3
  br label %cond.end.521

cond.false.518:                                   ; preds = %cond.false.512
  %573 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %proc_mono, align 8, !tbaa !1
  %574 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %575 = load i8*, i8** %row, align 8, !tbaa !1
  %576 = load i32, i32* %raster, align 4, !tbaa !5
  %577 = load i32, i32* %cx384, align 4, !tbaa !5
  %578 = load i32, i32* %cy385, align 4, !tbaa !5
  %579 = load i32, i32* %ex376, align 4, !tbaa !5
  %580 = load i32, i32* %cx384, align 4, !tbaa !5
  %sub519 = sub nsw i32 %579, %580
  %581 = load i32, i32* %ch, align 4, !tbaa !5
  %582 = load i64, i64* %color0.addr, align 8, !tbaa !7
  %583 = load i64, i64* %color1.addr, align 8, !tbaa !7
  %call520 = call i32 %573(%struct.gx_device_s* %574, i8* %575, i32 0, i32 %576, i64 0, i32 %577, i32 %578, i32 %sub519, i32 %581, i64 %582, i64 %583) #3
  br label %cond.end.521

cond.end.521:                                     ; preds = %cond.false.518, %cond.true.515
  %cond522 = phi i32 [ %call517, %cond.true.515 ], [ %call520, %cond.false.518 ]
  br label %cond.end.523

cond.end.523:                                     ; preds = %cond.end.521, %cond.true.509
  %cond524 = phi i32 [ %call511, %cond.true.509 ], [ %cond522, %cond.end.521 ]
  store i32 %cond524, i32* %code73, align 4, !tbaa !5
  %584 = load i32, i32* %code73, align 4, !tbaa !5
  %cmp525 = icmp slt i32 %584, 0
  br i1 %cmp525, label %if.then.527, label %if.end.528

if.then.527:                                      ; preds = %cond.end.523
  %585 = load i32, i32* %code73, align 4, !tbaa !5
  store i32 %585, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.554

if.end.528:                                       ; preds = %cond.end.523
  br label %do.body.529

do.body.529:                                      ; preds = %if.end.528
  br label %do.cond.530

do.cond.530:                                      ; preds = %do.body.529
  br label %do.end.531

do.end.531:                                       ; preds = %do.cond.530
  br label %if.end.532

if.end.532:                                       ; preds = %do.end.531, %while.end.499
  br label %if.end.533

if.end.533:                                       ; preds = %if.end.532, %do.end.439
  %586 = load i32, i32* %ch, align 4, !tbaa !5
  %587 = load i32, i32* %cy385, align 4, !tbaa !5
  %add534 = add nsw i32 %587, %586
  store i32 %add534, i32* %cy385, align 4, !tbaa !5
  %588 = load i32, i32* %ey378, align 4, !tbaa !5
  %cmp535 = icmp sge i32 %add534, %588
  br i1 %cmp535, label %if.then.537, label %if.end.538

if.then.537:                                      ; preds = %if.end.533
  store i32 32, i32* %cleanup.dest.slot
  br label %cleanup.554

if.end.538:                                       ; preds = %if.end.533
  %589 = load i32, i32* %cy385, align 4, !tbaa !5
  %590 = load i32, i32* %fey382, align 4, !tbaa !5
  %cmp539 = icmp sgt i32 %589, %590
  br i1 %cmp539, label %cond.true.541, label %cond.false.543

cond.true.541:                                    ; preds = %if.end.538
  %591 = load i32, i32* %ey378, align 4, !tbaa !5
  %592 = load i32, i32* %cy385, align 4, !tbaa !5
  %sub542 = sub nsw i32 %591, %592
  br label %cond.end.544

cond.false.543:                                   ; preds = %if.end.538
  %593 = load i32, i32* %height, align 4, !tbaa !5
  br label %cond.end.544

cond.end.544:                                     ; preds = %cond.false.543, %cond.true.541
  %cond545 = phi i32 [ %sub542, %cond.true.541 ], [ %593, %cond.false.543 ]
  store i32 %cond545, i32* %ch, align 4, !tbaa !5
  %594 = load i32, i32* %shift, align 4, !tbaa !5
  %595 = load i32, i32* %irx, align 4, !tbaa !5
  %add546 = add nsw i32 %595, %594
  store i32 %add546, i32* %irx, align 4, !tbaa !5
  %596 = load i32, i32* %rwidth, align 4, !tbaa !5
  %cmp547 = icmp sge i32 %add546, %596
  br i1 %cmp547, label %if.then.549, label %if.end.551

if.then.549:                                      ; preds = %cond.end.544
  %597 = load i32, i32* %rwidth, align 4, !tbaa !5
  %598 = load i32, i32* %irx, align 4, !tbaa !5
  %sub550 = sub nsw i32 %598, %597
  store i32 %sub550, i32* %irx, align 4, !tbaa !5
  br label %if.end.551

if.end.551:                                       ; preds = %if.then.549, %cond.end.544
  %599 = load i32, i32* %width, align 4, !tbaa !5
  %600 = load i32, i32* %irx, align 4, !tbaa !5
  %sub552 = sub nsw i32 %599, %600
  store i32 %sub552, i32* %icw, align 4, !tbaa !5
  %601 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %data553 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %601, i32 0, i32 0
  %602 = load i8*, i8** %data553, align 8, !tbaa !76
  store i8* %602, i8** %row, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.554

cleanup.554:                                      ; preds = %if.end.551, %if.then.537, %if.then.527, %if.then.493, %if.then.462, %if.then.435
  %603 = bitcast i64* %id386 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %603) #1
  %cleanup.dest.555 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.555, label %cleanup.557 [
    i32 0, label %cleanup.cont.556
    i32 32, label %for.end
  ]

cleanup.cont.556:                                 ; preds = %cleanup.554
  br label %for.cond

for.end:                                          ; preds = %cleanup.554
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.557

cleanup.557:                                      ; preds = %for.end, %cleanup.554
  %604 = bitcast i32* %cy385 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %604) #1
  %605 = bitcast i32* %cx384 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %605) #1
  %606 = bitcast i32* %fey382 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %606) #1
  %607 = bitcast i32* %fex380 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %607) #1
  %608 = bitcast i32* %ey378 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %608) #1
  %609 = bitcast i32* %ex376 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %609) #1
  %cleanup.dest.563 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.563, label %cleanup.567 [
    i32 0, label %cleanup.cont.564
  ]

cleanup.cont.564:                                 ; preds = %cleanup.557
  br label %if.end.565

if.end.565:                                       ; preds = %cleanup.cont.564, %cleanup.cont.374
  br label %if.end.566

if.end.566:                                       ; preds = %if.end.565, %if.end.249
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.567

cleanup.567:                                      ; preds = %if.end.566, %cleanup.557, %cleanup.369, %cleanup, %if.then.142
  %610 = bitcast i32* %code73 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %610) #1
  %611 = bitcast i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)** %proc_planes to i8*
  call void @llvm.lifetime.end(i64 8, i8* %611) #1
  %612 = bitcast i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %proc_color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %612) #1
  %613 = bitcast i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %proc_mono to i8*
  call void @llvm.lifetime.end(i64 8, i8* %613) #1
  %614 = bitcast i8** %row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %614) #1
  %615 = bitcast i32* %ch to i8*
  call void @llvm.lifetime.end(i64 4, i8* %615) #1
  %616 = bitcast i32* %icw to i8*
  call void @llvm.lifetime.end(i64 4, i8* %616) #1
  %617 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.end(i64 4, i8* %617) #1
  %618 = bitcast i32* %irx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %618) #1
  %619 = bitcast i32* %xoff to i8*
  call void @llvm.lifetime.end(i64 4, i8* %619) #1
  %cleanup.dest.577 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.577, label %cleanup.579 [
    i32 0, label %cleanup.cont.578
  ]

cleanup.cont.578:                                 ; preds = %cleanup.567
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.579

cleanup.579:                                      ; preds = %cleanup.cont.578, %cleanup.567, %if.then.30, %if.then
  %620 = bitcast i64* %tile_id to i8*
  call void @llvm.lifetime.end(i64 8, i8* %620) #1
  %621 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %621) #1
  %622 = bitcast i32* %rheight to i8*
  call void @llvm.lifetime.end(i64 4, i8* %622) #1
  %623 = bitcast i32* %rwidth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %623) #1
  %624 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %624) #1
  %625 = bitcast i32* %height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %625) #1
  %626 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %626) #1
  %627 = load i32, i32* %retval
  ret i32 %627
}

; Function Attrs: nounwind uwtable
define i32 @gx_no_strip_copy_rop(%struct.gx_device_s* %dev, i8* %sdata, i32 %sourcex, i32 %sraster, i64 %id, i64* %scolors, %struct.gx_strip_bitmap_s* %textures, i64* %tcolors, i32 %x, i32 %y, i32 %width, i32 %height, i32 %phase_x, i32 %phase_y, i32 %lop) #0 {
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
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define i32 @gx_copy_mono_unaligned(%struct.gx_device_s* %dev, i8* %data, i32 %dx, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, i64 %zero, i64 %one) #0 {
entry:
  %retval = alloca i32, align 4
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
  %copy_mono = alloca i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, align 8
  %offset = alloca i32, align 4
  %step = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %p = alloca i8*, align 8
  %d = alloca i32, align 4
  %code = alloca i32, align 4
  %i = alloca i32, align 4
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
  %0 = bitcast i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 42
  %copy_mono1 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 9
  %2 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono1, align 8, !tbaa !39
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* %2, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono, align 8, !tbaa !1
  %3 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, 0
  %and = and i64 %sub.ptr.sub, 7
  %conv = trunc i64 %and to i32
  store i32 %conv, i32* %offset, align 4, !tbaa !5
  %5 = bitcast i32* %step to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %and2 = and i32 %6, 7
  store i32 %and2, i32* %step, align 4, !tbaa !5
  %7 = load i32, i32* %offset, align 4, !tbaa !5
  %8 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %idx.ext = zext i32 %7 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %idx.neg
  store i8* %add.ptr, i8** %data.addr, align 8, !tbaa !1
  %9 = load i32, i32* %offset, align 4, !tbaa !5
  %shl = shl i32 %9, 3
  %10 = load i32, i32* %dx.addr, align 4, !tbaa !5
  %add = add i32 %10, %shl
  store i32 %add, i32* %dx.addr, align 4, !tbaa !5
  %11 = load i32, i32* %step, align 4, !tbaa !5
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %12 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono, align 8, !tbaa !1
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %14 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %15 = load i32, i32* %dx.addr, align 4, !tbaa !5
  %16 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %17 = load i64, i64* %id.addr, align 8, !tbaa !7
  %18 = load i32, i32* %x.addr, align 4, !tbaa !5
  %19 = load i32, i32* %y.addr, align 4, !tbaa !5
  %20 = load i32, i32* %w.addr, align 4, !tbaa !5
  %21 = load i32, i32* %h.addr, align 4, !tbaa !5
  %22 = load i64, i64* %zero.addr, align 8, !tbaa !7
  %23 = load i64, i64* %one.addr, align 8, !tbaa !7
  %call = call i32 %12(%struct.gx_device_s* %13, i8* %14, i32 %15, i32 %16, i64 %17, i32 %18, i32 %19, i32 %20, i32 %21, i64 %22, i64 %23) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %24 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  %25 = load i8*, i8** %data.addr, align 8, !tbaa !1
  store i8* %25, i8** %p, align 8, !tbaa !1
  %26 = bitcast i32* %d to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %27 = load i32, i32* %dx.addr, align 4, !tbaa !5
  store i32 %27, i32* %d, align 4, !tbaa !5
  %28 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %29 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %30 = load i32, i32* %i, align 4, !tbaa !5
  %31 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %30, %31
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %32 = load i32, i32* %code, align 4, !tbaa !5
  %cmp4 = icmp sge i32 %32, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %33 = phi i1 [ false, %for.cond ], [ %cmp4, %land.rhs ]
  br i1 %33, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %34 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono, align 8, !tbaa !1
  %35 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %36 = load i8*, i8** %p, align 8, !tbaa !1
  %37 = load i32, i32* %d, align 4, !tbaa !5
  %38 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %39 = load i32, i32* %x.addr, align 4, !tbaa !5
  %40 = load i32, i32* %y.addr, align 4, !tbaa !5
  %41 = load i32, i32* %i, align 4, !tbaa !5
  %add6 = add nsw i32 %40, %41
  %42 = load i32, i32* %w.addr, align 4, !tbaa !5
  %43 = load i64, i64* %zero.addr, align 8, !tbaa !7
  %44 = load i64, i64* %one.addr, align 8, !tbaa !7
  %call7 = call i32 %34(%struct.gx_device_s* %35, i8* %36, i32 %37, i32 %38, i64 0, i32 %39, i32 %add6, i32 %42, i32 1, i64 %43, i64 %44) #3
  store i32 %call7, i32* %code, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %45 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %45, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  %46 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %47 = load i32, i32* %step, align 4, !tbaa !5
  %sub = sub nsw i32 %46, %47
  %48 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext8 = sext i32 %sub to i64
  %add.ptr9 = getelementptr inbounds i8, i8* %48, i64 %idx.ext8
  store i8* %add.ptr9, i8** %p, align 8, !tbaa !1
  %49 = load i32, i32* %step, align 4, !tbaa !5
  %shl10 = shl i32 %49, 3
  %50 = load i32, i32* %d, align 4, !tbaa !5
  %add11 = add nsw i32 %50, %shl10
  store i32 %add11, i32* %d, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %land.end
  %51 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %51, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %52 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast i32* %d to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  %55 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %56 = bitcast i32* %step to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %57 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = bitcast i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #1
  %59 = load i32, i32* %retval
  ret i32 %59
}

; Function Attrs: nounwind uwtable
define i32 @gx_copy_color_unaligned(%struct.gx_device_s* %dev, i8* %data, i32 %data_x, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %width, i32 %height) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %data.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %copy_color = alloca i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, align 8
  %depth = alloca i32, align 4
  %offset = alloca i32, align 4
  %step = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %p = alloca i8*, align 8
  %d = alloca i32, align 4
  %dstep = alloca i32, align 4
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !7
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  %0 = bitcast i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %copy_color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 42
  %copy_color1 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 10
  %2 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %copy_color1, align 8, !tbaa !58
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* %2, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %copy_color, align 8, !tbaa !1
  %3 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 11
  %depth2 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %5 = load i16, i16* %depth2, align 2, !tbaa !38
  %conv = zext i16 %5 to i32
  store i32 %conv, i32* %depth, align 4, !tbaa !5
  %6 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, 0
  %conv3 = trunc i64 %sub.ptr.sub to i32
  %and = and i32 %conv3, 7
  store i32 %and, i32* %offset, align 4, !tbaa !5
  %8 = bitcast i32* %step to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %and4 = and i32 %9, 7
  store i32 %and4, i32* %step, align 4, !tbaa !5
  %10 = load i32, i32* %depth, align 4, !tbaa !5
  %cmp = icmp eq i32 %10, 24
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %offset, align 4, !tbaa !5
  %rem = urem i32 %11, 3
  %mul = mul i32 %rem, 8
  %12 = load i32, i32* %offset, align 4, !tbaa !5
  %add = add i32 %12, %mul
  store i32 %add, i32* %offset, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load i32, i32* %offset, align 4, !tbaa !5
  %14 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %idx.ext = zext i32 %13 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %idx.neg
  store i8* %add.ptr, i8** %data.addr, align 8, !tbaa !1
  %15 = load i32, i32* %offset, align 4, !tbaa !5
  %shl = shl i32 %15, 3
  %16 = load i32, i32* %depth, align 4, !tbaa !5
  %div = udiv i32 %shl, %16
  %17 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %add6 = add i32 %17, %div
  store i32 %add6, i32* %data_x.addr, align 4, !tbaa !5
  %18 = load i32, i32* %step, align 4, !tbaa !5
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end
  %19 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %copy_color, align 8, !tbaa !1
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %21 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %22 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %23 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %24 = load i64, i64* %id.addr, align 8, !tbaa !7
  %25 = load i32, i32* %x.addr, align 4, !tbaa !5
  %26 = load i32, i32* %y.addr, align 4, !tbaa !5
  %27 = load i32, i32* %width.addr, align 4, !tbaa !5
  %28 = load i32, i32* %height.addr, align 4, !tbaa !5
  %call = call i32 %19(%struct.gx_device_s* %20, i8* %21, i32 %22, i32 %23, i64 %24, i32 %25, i32 %26, i32 %27, i32 %28) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end
  %29 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #1
  %30 = load i8*, i8** %data.addr, align 8, !tbaa !1
  store i8* %30, i8** %p, align 8, !tbaa !1
  %31 = bitcast i32* %d to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  %32 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  store i32 %32, i32* %d, align 4, !tbaa !5
  %33 = bitcast i32* %dstep to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  %34 = load i32, i32* %step, align 4, !tbaa !5
  %shl9 = shl i32 %34, 3
  %35 = load i32, i32* %depth, align 4, !tbaa !5
  %div10 = sdiv i32 %shl9, %35
  store i32 %div10, i32* %dstep, align 4, !tbaa !5
  %36 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %37 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.8
  %38 = load i32, i32* %i, align 4, !tbaa !5
  %39 = load i32, i32* %height.addr, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %38, %39
  br i1 %cmp11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %40 = load i32, i32* %code, align 4, !tbaa !5
  %cmp13 = icmp sge i32 %40, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %41 = phi i1 [ false, %for.cond ], [ %cmp13, %land.rhs ]
  br i1 %41, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %42 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %copy_color, align 8, !tbaa !1
  %43 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %44 = load i8*, i8** %p, align 8, !tbaa !1
  %45 = load i32, i32* %d, align 4, !tbaa !5
  %46 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %47 = load i32, i32* %x.addr, align 4, !tbaa !5
  %48 = load i32, i32* %y.addr, align 4, !tbaa !5
  %49 = load i32, i32* %i, align 4, !tbaa !5
  %add15 = add nsw i32 %48, %49
  %50 = load i32, i32* %width.addr, align 4, !tbaa !5
  %call16 = call i32 %42(%struct.gx_device_s* %43, i8* %44, i32 %45, i32 %46, i64 0, i32 %47, i32 %add15, i32 %50, i32 1) #3
  store i32 %call16, i32* %code, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %51 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  %52 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %53 = load i32, i32* %step, align 4, !tbaa !5
  %sub = sub nsw i32 %52, %53
  %54 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext17 = sext i32 %sub to i64
  %add.ptr18 = getelementptr inbounds i8, i8* %54, i64 %idx.ext17
  store i8* %add.ptr18, i8** %p, align 8, !tbaa !1
  %55 = load i32, i32* %dstep, align 4, !tbaa !5
  %56 = load i32, i32* %d, align 4, !tbaa !5
  %add19 = add nsw i32 %56, %55
  store i32 %add19, i32* %d, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %land.end
  %57 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %57, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %58 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = bitcast i32* %dstep to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = bitcast i32* %d to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.7
  %63 = bitcast i32* %step to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %copy_color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = load i32, i32* %retval
  ret i32 %67
}

; Function Attrs: nounwind uwtable
define i32 @gx_copy_alpha_unaligned(%struct.gx_device_s* %dev, i8* %data, i32 %data_x, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %width, i32 %height, i64 %color, i32 %depth) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %data.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  %depth.addr = alloca i32, align 4
  %copy_alpha = alloca i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, align 8
  %offset = alloca i32, align 4
  %step = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %p = alloca i8*, align 8
  %d = alloca i32, align 4
  %dstep = alloca i32, align 4
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !7
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  store i64 %color, i64* %color.addr, align 8, !tbaa !7
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !5
  %0 = bitcast i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)** %copy_alpha to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 42
  %copy_alpha1 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 21
  %2 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)** %copy_alpha1, align 8, !tbaa !66
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* %2, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)** %copy_alpha, align 8, !tbaa !1
  %3 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, 0
  %conv = trunc i64 %sub.ptr.sub to i32
  %and = and i32 %conv, 7
  store i32 %and, i32* %offset, align 4, !tbaa !5
  %5 = bitcast i32* %step to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %and2 = and i32 %6, 7
  store i32 %and2, i32* %step, align 4, !tbaa !5
  %7 = load i32, i32* %offset, align 4, !tbaa !5
  %8 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %idx.ext = zext i32 %7 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %idx.neg
  store i8* %add.ptr, i8** %data.addr, align 8, !tbaa !1
  %9 = load i32, i32* %offset, align 4, !tbaa !5
  %shl = shl i32 %9, 3
  %10 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %div = udiv i32 %shl, %10
  %11 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %add = add i32 %11, %div
  store i32 %add, i32* %data_x.addr, align 4, !tbaa !5
  %12 = load i32, i32* %step, align 4, !tbaa !5
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %13 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)** %copy_alpha, align 8, !tbaa !1
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %15 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %16 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %17 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %18 = load i64, i64* %id.addr, align 8, !tbaa !7
  %19 = load i32, i32* %x.addr, align 4, !tbaa !5
  %20 = load i32, i32* %y.addr, align 4, !tbaa !5
  %21 = load i32, i32* %width.addr, align 4, !tbaa !5
  %22 = load i32, i32* %height.addr, align 4, !tbaa !5
  %23 = load i64, i64* %color.addr, align 8, !tbaa !7
  %24 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %call = call i32 %13(%struct.gx_device_s* %14, i8* %15, i32 %16, i32 %17, i64 %18, i32 %19, i32 %20, i32 %21, i32 %22, i64 %23, i32 %24) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %25 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  %26 = load i8*, i8** %data.addr, align 8, !tbaa !1
  store i8* %26, i8** %p, align 8, !tbaa !1
  %27 = bitcast i32* %d to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  store i32 %28, i32* %d, align 4, !tbaa !5
  %29 = bitcast i32* %dstep to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  %30 = load i32, i32* %step, align 4, !tbaa !5
  %shl3 = shl i32 %30, 3
  %31 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %div4 = sdiv i32 %shl3, %31
  store i32 %div4, i32* %dstep, align 4, !tbaa !5
  %32 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %33 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %34 = load i32, i32* %i, align 4, !tbaa !5
  %35 = load i32, i32* %height.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %34, %35
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %36 = load i32, i32* %code, align 4, !tbaa !5
  %cmp6 = icmp sge i32 %36, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %37 = phi i1 [ false, %for.cond ], [ %cmp6, %land.rhs ]
  br i1 %37, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %38 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)** %copy_alpha, align 8, !tbaa !1
  %39 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %40 = load i8*, i8** %p, align 8, !tbaa !1
  %41 = load i32, i32* %d, align 4, !tbaa !5
  %42 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %43 = load i32, i32* %x.addr, align 4, !tbaa !5
  %44 = load i32, i32* %y.addr, align 4, !tbaa !5
  %45 = load i32, i32* %i, align 4, !tbaa !5
  %add8 = add nsw i32 %44, %45
  %46 = load i32, i32* %width.addr, align 4, !tbaa !5
  %47 = load i64, i64* %color.addr, align 8, !tbaa !7
  %48 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %call9 = call i32 %38(%struct.gx_device_s* %39, i8* %40, i32 %41, i32 %42, i64 0, i32 %43, i32 %add8, i32 %46, i32 1, i64 %47, i32 %48) #3
  store i32 %call9, i32* %code, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %49 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  %50 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %51 = load i32, i32* %step, align 4, !tbaa !5
  %sub = sub nsw i32 %50, %51
  %52 = load i8*, i8** %p, align 8, !tbaa !1
  %idx.ext10 = sext i32 %sub to i64
  %add.ptr11 = getelementptr inbounds i8, i8* %52, i64 %idx.ext10
  store i8* %add.ptr11, i8** %p, align 8, !tbaa !1
  %53 = load i32, i32* %dstep, align 4, !tbaa !5
  %54 = load i32, i32* %d, align 4, !tbaa !5
  %add12 = add nsw i32 %54, %53
  store i32 %add12, i32* %d, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %land.end
  %55 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %55, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %56 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %57 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = bitcast i32* %dstep to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast i32* %d to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #1
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %61 = bitcast i32* %step to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %63 = bitcast i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)** %copy_alpha to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %64 = load i32, i32* %retval
  ret i32 %64
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
!9 = !{i64 0, i64 8, !1, i64 8, i64 4, !5, i64 12, i64 4, !5, i64 16, i64 4, !5, i64 24, i64 8, !7, i64 32, i64 2, !10, i64 34, i64 2, !10}
!10 = !{!11, !11, i64 0}
!11 = !{!"short", !3, i64 0}
!12 = !{!13, !11, i64 36}
!13 = !{!"gx_strip_bitmap_s", !2, i64 0, !6, i64 8, !14, i64 12, !8, i64 24, !11, i64 32, !11, i64 34, !11, i64 36, !11, i64 38, !6, i64 40}
!14 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!15 = !{!13, !11, i64 38}
!16 = !{!13, !6, i64 40}
!17 = !{!18, !2, i64 1416}
!18 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !19, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !20, i64 96, !22, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !8, i64 928, !8, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !8, i64 968, !8, i64 976, !23, i64 984, !6, i64 1052, !6, i64 1056, !24, i64 1064, !2, i64 1104, !3, i64 1112, !26, i64 1120, !27, i64 1144}
!19 = !{!"rc_header_s", !8, i64 0, !2, i64 8, !2, i64 16}
!20 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !11, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !21, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !8, i64 704, !6, i64 712}
!21 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!22 = !{!"gx_device_cached_colors_s", !8, i64 0, !8, i64 8}
!23 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!24 = !{!"gdev_space_params_s", !8, i64 0, !8, i64 8, !25, i64 16, !6, i64 32, !3, i64 36}
!25 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !8, i64 8}
!26 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!27 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!28 = !{!18, !6, i64 832}
!29 = !{!18, !6, i64 836}
!30 = !{!18, !2, i64 1200}
!31 = !{!32, !2, i64 0}
!32 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !14, i64 352, !6, i64 360, !33, i64 368, !35, i64 632}
!33 = !{!"gs_client_color_s", !2, i64 0, !34, i64 8}
!34 = !{!"gs_paint_color_s", !3, i64 0}
!35 = !{!"_mask", !36, i64 0, !8, i64 8, !2, i64 16}
!36 = !{!"mp_", !6, i64 0, !6, i64 4}
!37 = !{!32, !6, i64 360}
!38 = !{!18, !11, i64 108}
!39 = !{!18, !2, i64 1216}
!40 = !{!3, !3, i64 0}
!41 = !{!18, !2, i64 24}
!42 = !{!18, !6, i64 100}
!43 = !{!44, !2, i64 64}
!44 = !{!"gs_memory_s", !2, i64 0, !45, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!45 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!46 = !{!47, !8, i64 0}
!47 = !{!"gs_get_bits_params_s", !8, i64 0, !3, i64 8, !6, i64 520, !6, i64 524, !6, i64 528}
!48 = !{!49, !6, i64 0}
!49 = !{!"gs_int_rect_s", !14, i64 0, !14, i64 8}
!50 = !{!49, !6, i64 8}
!51 = !{!49, !6, i64 4}
!52 = !{!49, !6, i64 12}
!53 = !{!18, !2, i64 1448}
!54 = !{!44, !2, i64 24}
!55 = !{!18, !2, i64 1672}
!56 = !{!18, !2, i64 1560}
!57 = !{!18, !2, i64 1240}
!58 = !{!18, !2, i64 1224}
!59 = !{!18, !2, i64 1552}
!60 = !{!61, !6, i64 0}
!61 = !{!"gs_fixed_rect_s", !62, i64 0, !62, i64 8}
!62 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!63 = !{!61, !6, i64 4}
!64 = !{!61, !6, i64 8}
!65 = !{!61, !6, i64 12}
!66 = !{!18, !2, i64 1312}
!67 = !{!68, !2, i64 48}
!68 = !{!"gx_device_color_type_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80}
!69 = !{!13, !6, i64 12}
!70 = !{!13, !6, i64 16}
!71 = !{!13, !6, i64 8}
!72 = !{!13, !11, i64 32}
!73 = !{!13, !11, i64 34}
!74 = !{!13, !8, i64 24}
!75 = !{!18, !2, i64 1208}
!76 = !{!13, !2, i64 0}
