; ModuleID = './gxclipm.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_device_mask_clip_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, %struct.gx_strip_bitmap_s, %struct.gx_device_memory_s, %struct.gs_int_point_s, %union._b }
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
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gx_device_memory_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, i32, i8*, %struct.gs_memory_s*, i32, %struct.gs_memory_s*, i32, [64 x %struct.gx_render_plane_s], %struct.gs_matrix_s, i8**, %struct.gs_const_string_s, %struct._c24, %struct._c40, %struct._c48, %struct._c56, %struct._c64, %struct.gs_log2_scale_point_s, i32, i32, i32, i32, i32, i64, %struct.gx_device_color_s*, i32, i32 }
%struct.gx_render_plane_s = type { i32, i32, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%struct._c24 = type { i64, i32, i32, i32 }
%struct._c40 = type { i64, i32, i32, i32, i32, i32 }
%struct._c48 = type { i64, i32, i32, i32 }
%struct._c56 = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct._c64 = type { i64, i32, i32 }
%struct.gs_int_point_s = type { i32, i32 }
%union._b = type { [2048 x i64] }
%struct.clip_callback_data_s = type { %struct.gx_device_s*, i32, i32, i32, i32, [2 x i64], i8*, [2 x %struct.gx_device_color_s*], i32, i32, i32, %struct.gx_device_color_s*, i32, %struct.gx_clip_path_s*, %struct.gx_strip_bitmap_s*, %struct.gs_int_point_s, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s* }

@.str = private unnamed_addr constant [13 x i8] c"mask clipper\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@gs_mask_clip_device = constant %struct.gx_device_mask_clip_s { i32 20968, %struct.gx_device_procs_s* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* null, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 1, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [2 x float] zeroinitializer, [4 x float] zeroinitializer, i32 0, [2 x float] [float 1.000000e+00, float 1.000000e+00], [2 x float] [float 1.000000e+00, float 1.000000e+00], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @gx_default_open_device, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @gx_forward_get_initial_matrix, i32 (%struct.gx_device_s*)* @gx_default_sync_output, i32 (%struct.gx_device_s*, i32, i32)* @gx_default_output_page, i32 (%struct.gx_device_s*)* @gx_default_close_device, i64 (%struct.gx_device_s*, i16*)* @gx_forward_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_forward_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @mask_clip_fill_rectangle, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* @mask_clip_copy_mono, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* @mask_clip_copy_color, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @gx_default_draw_line, i32 (%struct.gx_device_s*, i32, i8*, i8**)* @gx_forward_get_bits, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_forward_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_forward_put_params, i64 (%struct.gx_device_s*, i16*)* @gx_forward_map_cmyk_color, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_procs, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_device, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* @gx_forward_map_rgb_alpha_color, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_page_device, i32 (%struct.gx_device_s*, i32)* @gx_default_get_alpha_bits, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* @mask_clip_copy_alpha, i32 (%struct.gx_device_s*, i32, i32*)* @gx_forward_get_band, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @gx_default_copy_rop, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_default_fill_path, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_default_stroke_path, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* @gx_default_fill_mask, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_trapezoid, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_parallelogram, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_triangle, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* @gx_default_draw_thin_line, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_image, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* @gx_default_image_data, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* @gx_default_end_image, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @mask_clip_strip_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @mask_clip_strip_copy_rop, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* @mask_clip_get_clipping_box, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_typed_image, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* @gx_forward_get_bits_rectangle, i32 (%struct.gx_device_s*, i64, i16*)* @gx_forward_map_color_rgb_alpha, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* @gx_no_create_compositor, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_forward_get_hardware_params, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* @gx_default_text_begin, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* @gx_default_finish_copydevice, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* @gx_forward_get_color_mapping_procs, i32 (%struct.gx_device_s*, i8*, i32, i32)* @gx_forward_get_color_comp_index, i64 (%struct.gx_device_s*, i16*)* @gx_forward_encode_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_forward_decode_color, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @mask_clip_fill_rectangle_hl_color, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* @gx_forward_include_color_space, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* @gx_forward_fill_linear_color_scanline, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* @gx_forward_fill_linear_color_trapezoid, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* @gx_forward_fill_linear_color_triangle, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_forward_update_spot_equivalent_colors, %struct.gs_devn_params_s* (%struct.gx_device_s*)* @gx_forward_ret_devn_params, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* @gx_forward_fillpage, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* @gx_forward_dev_spec_op, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_forward_get_profile, void (%struct.gx_device_s*, i32)* @gx_forward_set_graphics_type_tag, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* @mask_clip_strip_copy_rop2, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* @mask_clip_strip_tile_rect_devn, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @mask_clip_copy_alpha_hl_color, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, %struct.gx_device_s* null, %struct.gx_strip_bitmap_s zeroinitializer, %struct.gx_device_memory_s zeroinitializer, %struct.gs_int_point_s zeroinitializer, %union._b zeroinitializer }, align 8
@byte_bit_run_length = external constant [8 x i8*], align 16
@byte_bit_run_length_0 = external constant [256 x i8], align 16

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

declare i32 @gx_default_open_device(%struct.gx_device_s*) #0

declare void @gx_forward_get_initial_matrix(%struct.gx_device_s*, %struct.gs_matrix_s*) #0

declare i32 @gx_default_sync_output(%struct.gx_device_s*) #0

declare i32 @gx_default_output_page(%struct.gx_device_s*, i32, i32) #0

declare i32 @gx_default_close_device(%struct.gx_device_s*) #0

declare i64 @gx_forward_map_rgb_color(%struct.gx_device_s*, i16*) #0

declare i32 @gx_forward_map_color_rgb(%struct.gx_device_s*, i64, i16*) #0

; Function Attrs: nounwind uwtable
define internal i32 @mask_clip_fill_rectangle(%struct.gx_device_s* %dev, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  %cdev = alloca %struct.gx_device_mask_clip_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %mx0 = alloca i32, align 4
  %my0 = alloca i32, align 4
  %mx1 = alloca i32, align 4
  %my1 = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store i64 %color, i64* %color.addr, align 8, !tbaa !7
  %0 = bitcast %struct.gx_device_mask_clip_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_mask_clip_s*
  store %struct.gx_device_mask_clip_s* %2, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !9
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = bitcast i32* %mx0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load i32, i32* %x.addr, align 4, !tbaa !5
  %8 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %phase = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %8, i32 0, i32 46
  %x1 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 0
  %9 = load i32, i32* %x1, align 4, !tbaa !33
  %add = add nsw i32 %7, %9
  store i32 %add, i32* %mx0, align 4, !tbaa !5
  %10 = bitcast i32* %my0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = load i32, i32* %y.addr, align 4, !tbaa !5
  %12 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %phase2 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %12, i32 0, i32 46
  %y3 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase2, i32 0, i32 1
  %13 = load i32, i32* %y3, align 4, !tbaa !34
  %add4 = add nsw i32 %11, %13
  store i32 %add4, i32* %my0, align 4, !tbaa !5
  %14 = bitcast i32* %mx1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = load i32, i32* %mx0, align 4, !tbaa !5
  %16 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add5 = add nsw i32 %15, %16
  store i32 %add5, i32* %mx1, align 4, !tbaa !5
  %17 = bitcast i32* %my1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %18 = load i32, i32* %my0, align 4, !tbaa !5
  %19 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add6 = add nsw i32 %18, %19
  store i32 %add6, i32* %my1, align 4, !tbaa !5
  %20 = load i32, i32* %mx0, align 4, !tbaa !5
  %cmp = icmp slt i32 %20, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %mx0, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %21 = load i32, i32* %my0, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %21, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  store i32 0, i32* %my0, align 4, !tbaa !5
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end
  %22 = load i32, i32* %mx1, align 4, !tbaa !5
  %23 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %23, i32 0, i32 44
  %size = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles, i32 0, i32 2
  %x10 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size, i32 0, i32 0
  %24 = load i32, i32* %x10, align 4, !tbaa !35
  %cmp11 = icmp sgt i32 %22, %24
  br i1 %cmp11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %if.end.9
  %25 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles13 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %25, i32 0, i32 44
  %size14 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles13, i32 0, i32 2
  %x15 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size14, i32 0, i32 0
  %26 = load i32, i32* %x15, align 4, !tbaa !35
  store i32 %26, i32* %mx1, align 4, !tbaa !5
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.12, %if.end.9
  %27 = load i32, i32* %my1, align 4, !tbaa !5
  %28 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles17 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %28, i32 0, i32 44
  %size18 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles17, i32 0, i32 2
  %y19 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size18, i32 0, i32 1
  %29 = load i32, i32* %y19, align 4, !tbaa !36
  %cmp20 = icmp sgt i32 %27, %29
  br i1 %cmp20, label %if.then.21, label %if.end.25

if.then.21:                                       ; preds = %if.end.16
  %30 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles22 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %30, i32 0, i32 44
  %size23 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles22, i32 0, i32 2
  %y24 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size23, i32 0, i32 1
  %31 = load i32, i32* %y24, align 4, !tbaa !36
  store i32 %31, i32* %my1, align 4, !tbaa !5
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.21, %if.end.16
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %32, i32 0, i32 42
  %copy_mono = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 9
  %33 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono, align 8, !tbaa !37
  %34 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %35 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles26 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %35, i32 0, i32 44
  %data = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles26, i32 0, i32 0
  %36 = load i8*, i8** %data, align 8, !tbaa !39
  %37 = load i32, i32* %my0, align 4, !tbaa !5
  %38 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles27 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %38, i32 0, i32 44
  %raster = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles27, i32 0, i32 1
  %39 = load i32, i32* %raster, align 4, !tbaa !40
  %mul = mul nsw i32 %37, %39
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %36, i64 %idx.ext
  %40 = load i32, i32* %mx0, align 4, !tbaa !5
  %41 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles28 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %41, i32 0, i32 44
  %raster29 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles28, i32 0, i32 1
  %42 = load i32, i32* %raster29, align 4, !tbaa !40
  %43 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles30 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %43, i32 0, i32 44
  %id = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles30, i32 0, i32 3
  %44 = load i64, i64* %id, align 8, !tbaa !41
  %45 = load i32, i32* %mx0, align 4, !tbaa !5
  %46 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %phase31 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %46, i32 0, i32 46
  %x32 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase31, i32 0, i32 0
  %47 = load i32, i32* %x32, align 4, !tbaa !33
  %sub = sub nsw i32 %45, %47
  %48 = load i32, i32* %my0, align 4, !tbaa !5
  %49 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %phase33 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %49, i32 0, i32 46
  %y34 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase33, i32 0, i32 1
  %50 = load i32, i32* %y34, align 4, !tbaa !34
  %sub35 = sub nsw i32 %48, %50
  %51 = load i32, i32* %mx1, align 4, !tbaa !5
  %52 = load i32, i32* %mx0, align 4, !tbaa !5
  %sub36 = sub nsw i32 %51, %52
  %53 = load i32, i32* %my1, align 4, !tbaa !5
  %54 = load i32, i32* %my0, align 4, !tbaa !5
  %sub37 = sub nsw i32 %53, %54
  %55 = load i64, i64* %color.addr, align 8, !tbaa !7
  %call = call i32 %33(%struct.gx_device_s* %34, i8* %add.ptr, i32 %40, i32 %42, i64 %44, i32 %sub, i32 %sub35, i32 %sub36, i32 %sub37, i64 -1, i64 %55) #4
  %56 = bitcast i32* %my1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #2
  %57 = bitcast i32* %mx1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #2
  %58 = bitcast i32* %my0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #2
  %59 = bitcast i32* %mx0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #2
  %60 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #2
  %61 = bitcast %struct.gx_device_mask_clip_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #2
  ret i32 %call
}

declare i32 @gx_default_tile_rectangle(%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @mask_clip_copy_mono(%struct.gx_device_s* %dev, i8* %data, i32 %sourcex, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color0, i64 %color1) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %data.addr = alloca i8*, align 8
  %sourcex.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %color0.addr = alloca i64, align 8
  %color1.addr = alloca i64, align 8
  %cdev = alloca %struct.gx_device_mask_clip_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %color = alloca i64, align 8
  %mcolor0 = alloca i64, align 8
  %mcolor1 = alloca i64, align 8
  %sdata = alloca i8*, align 8
  %sx = alloca i32, align 4
  %mx0 = alloca i32, align 4
  %my0 = alloca i32, align 4
  %mx1 = alloca i32, align 4
  %my1 = alloca i32, align 4
  %cy = alloca i32, align 4
  %ny = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %ty = alloca i32, align 4
  %cx = alloca i32, align 4
  %nx = alloca i32, align 4
  %tx = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !7
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store i64 %color0, i64* %color0.addr, align 8, !tbaa !7
  store i64 %color1, i64* %color1.addr, align 8, !tbaa !7
  %0 = bitcast %struct.gx_device_mask_clip_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_mask_clip_s*
  store %struct.gx_device_mask_clip_s* %2, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !9
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = bitcast i64* %color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast i64* %mcolor0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = bitcast i64* %mcolor1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = bitcast i8** %sdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = bitcast i32* %sx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast i32* %mx0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = bitcast i32* %my0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = bitcast i32* %mx1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = bitcast i32* %my1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = bitcast i32* %cy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = bitcast i32* %ny to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  br label %do.body

do.body:                                          ; preds = %entry
  %18 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %mdev = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %18, i32 0, i32 45
  %base = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev, i32 0, i32 45
  %19 = load i8*, i8** %base, align 8, !tbaa !42
  %cmp = icmp eq i8* %19, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %21 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %22 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %23 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %24 = load i64, i64* %id.addr, align 8, !tbaa !7
  %25 = load i32, i32* %x.addr, align 4, !tbaa !5
  %26 = load i32, i32* %y.addr, align 4, !tbaa !5
  %27 = load i32, i32* %w.addr, align 4, !tbaa !5
  %28 = load i32, i32* %h.addr, align 4, !tbaa !5
  %29 = load i64, i64* %color0.addr, align 8, !tbaa !7
  %30 = load i64, i64* %color1.addr, align 8, !tbaa !7
  %call = call i32 @gx_default_copy_mono(%struct.gx_device_s* %20, i8* %21, i32 %22, i32 %23, i64 %24, i32 %25, i32 %26, i32 %27, i32 %28, i64 %29, i64 %30) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.107

if.end:                                           ; preds = %do.body
  %31 = load i64, i64* %color1.addr, align 8, !tbaa !7
  %cmp1 = icmp ne i64 %31, -1
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %32 = load i64, i64* %color0.addr, align 8, !tbaa !7
  %cmp3 = icmp ne i64 %32, -1
  br i1 %cmp3, label %if.then.4, label %if.end.9

if.then.4:                                        ; preds = %if.then.2
  %33 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %33, i32 0, i32 42
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 7
  %34 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8, !tbaa !43
  %35 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %36 = load i32, i32* %x.addr, align 4, !tbaa !5
  %37 = load i32, i32* %y.addr, align 4, !tbaa !5
  %38 = load i32, i32* %w.addr, align 4, !tbaa !5
  %39 = load i32, i32* %h.addr, align 4, !tbaa !5
  %40 = load i64, i64* %color0.addr, align 8, !tbaa !7
  %call5 = call i32 %34(%struct.gx_device_s* %35, i32 %36, i32 %37, i32 %38, i32 %39, i64 %40) #4
  store i32 %call5, i32* %code, align 4, !tbaa !5
  %41 = load i32, i32* %code, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %41, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.4
  %42 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %42, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.107

if.end.8:                                         ; preds = %if.then.4
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.then.2
  %43 = load i64, i64* %color1.addr, align 8, !tbaa !7
  store i64 %43, i64* %color, align 8, !tbaa !7
  store i64 0, i64* %mcolor0, align 8, !tbaa !7
  store i64 -1, i64* %mcolor1, align 8, !tbaa !7
  br label %if.end.14

if.else:                                          ; preds = %if.end
  %44 = load i64, i64* %color0.addr, align 8, !tbaa !7
  %cmp10 = icmp ne i64 %44, -1
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.else
  %45 = load i64, i64* %color0.addr, align 8, !tbaa !7
  store i64 %45, i64* %color, align 8, !tbaa !7
  store i64 -1, i64* %mcolor0, align 8, !tbaa !7
  store i64 0, i64* %mcolor1, align 8, !tbaa !7
  br label %if.end.13

if.else.12:                                       ; preds = %if.else
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.107

if.end.13:                                        ; preds = %if.then.11
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.end.9
  br label %do.cond

do.cond:                                          ; preds = %if.end.14
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.15

do.body.15:                                       ; preds = %do.end
  %46 = load i8*, i8** %data.addr, align 8, !tbaa !1
  store i8* %46, i8** %sdata, align 8, !tbaa !1
  %47 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 %47, i32* %sx, align 4, !tbaa !5
  %48 = load i32, i32* %x.addr, align 4, !tbaa !5
  %49 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %phase = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %49, i32 0, i32 46
  %x16 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 0
  %50 = load i32, i32* %x16, align 4, !tbaa !33
  %add = add nsw i32 %48, %50
  store i32 %add, i32* %mx0, align 4, !tbaa !5
  %51 = load i32, i32* %y.addr, align 4, !tbaa !5
  %52 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %phase17 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %52, i32 0, i32 46
  %y18 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase17, i32 0, i32 1
  %53 = load i32, i32* %y18, align 4, !tbaa !34
  %add19 = add nsw i32 %51, %53
  store i32 %add19, i32* %my0, align 4, !tbaa !5
  %54 = load i32, i32* %mx0, align 4, !tbaa !5
  %55 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add20 = add nsw i32 %54, %55
  store i32 %add20, i32* %mx1, align 4, !tbaa !5
  %56 = load i32, i32* %my0, align 4, !tbaa !5
  %57 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add21 = add nsw i32 %56, %57
  store i32 %add21, i32* %my1, align 4, !tbaa !5
  %58 = load i32, i32* %mx0, align 4, !tbaa !5
  %cmp22 = icmp slt i32 %58, 0
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %do.body.15
  %59 = load i32, i32* %mx0, align 4, !tbaa !5
  %60 = load i32, i32* %sx, align 4, !tbaa !5
  %sub = sub nsw i32 %60, %59
  store i32 %sub, i32* %sx, align 4, !tbaa !5
  store i32 0, i32* %mx0, align 4, !tbaa !5
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %do.body.15
  %61 = load i32, i32* %my0, align 4, !tbaa !5
  %cmp25 = icmp slt i32 %61, 0
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.24
  %62 = load i32, i32* %my0, align 4, !tbaa !5
  %63 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %62, %63
  %64 = load i8*, i8** %sdata, align 8, !tbaa !1
  %idx.ext = sext i32 %mul to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %64, i64 %idx.neg
  store i8* %add.ptr, i8** %sdata, align 8, !tbaa !1
  store i32 0, i32* %my0, align 4, !tbaa !5
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.end.24
  %65 = load i32, i32* %mx1, align 4, !tbaa !5
  %66 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %66, i32 0, i32 44
  %size = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles, i32 0, i32 2
  %x28 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size, i32 0, i32 0
  %67 = load i32, i32* %x28, align 4, !tbaa !35
  %cmp29 = icmp sgt i32 %65, %67
  br i1 %cmp29, label %if.then.30, label %if.end.34

if.then.30:                                       ; preds = %if.end.27
  %68 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles31 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %68, i32 0, i32 44
  %size32 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles31, i32 0, i32 2
  %x33 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size32, i32 0, i32 0
  %69 = load i32, i32* %x33, align 4, !tbaa !35
  store i32 %69, i32* %mx1, align 4, !tbaa !5
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.30, %if.end.27
  %70 = load i32, i32* %my1, align 4, !tbaa !5
  %71 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles35 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %71, i32 0, i32 44
  %size36 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles35, i32 0, i32 2
  %y37 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size36, i32 0, i32 1
  %72 = load i32, i32* %y37, align 4, !tbaa !36
  %cmp38 = icmp sgt i32 %70, %72
  br i1 %cmp38, label %if.then.39, label %if.end.43

if.then.39:                                       ; preds = %if.end.34
  %73 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles40 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %73, i32 0, i32 44
  %size41 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles40, i32 0, i32 2
  %y42 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size41, i32 0, i32 1
  %74 = load i32, i32* %y42, align 4, !tbaa !36
  store i32 %74, i32* %my1, align 4, !tbaa !5
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.39, %if.end.34
  br label %do.cond.44

do.cond.44:                                       ; preds = %if.end.43
  br label %do.end.45

do.end.45:                                        ; preds = %do.cond.44
  %75 = load i32, i32* %my0, align 4, !tbaa !5
  store i32 %75, i32* %cy, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.104, %do.end.45
  %76 = load i32, i32* %cy, align 4, !tbaa !5
  %77 = load i32, i32* %my1, align 4, !tbaa !5
  %cmp46 = icmp slt i32 %76, %77
  br i1 %cmp46, label %for.body, label %for.end.106

for.body:                                         ; preds = %for.cond
  %78 = bitcast i32* %ty to i8*
  call void @llvm.lifetime.start(i64 4, i8* %78) #2
  %79 = load i32, i32* %cy, align 4, !tbaa !5
  %80 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %phase47 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %80, i32 0, i32 46
  %y48 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase47, i32 0, i32 1
  %81 = load i32, i32* %y48, align 4, !tbaa !34
  %sub49 = sub nsw i32 %79, %81
  store i32 %sub49, i32* %ty, align 4, !tbaa !5
  %82 = bitcast i32* %cx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %82) #2
  %83 = bitcast i32* %nx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %83) #2
  %84 = load i32, i32* %my1, align 4, !tbaa !5
  %85 = load i32, i32* %cy, align 4, !tbaa !5
  %sub50 = sub nsw i32 %84, %85
  store i32 %sub50, i32* %ny, align 4, !tbaa !5
  %86 = load i32, i32* %ny, align 4, !tbaa !5
  %87 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %mdev51 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %87, i32 0, i32 45
  %height = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev51, i32 0, i32 14
  %88 = load i32, i32* %height, align 4, !tbaa !44
  %cmp52 = icmp sgt i32 %86, %88
  br i1 %cmp52, label %if.then.53, label %if.end.56

if.then.53:                                       ; preds = %for.body
  %89 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %mdev54 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %89, i32 0, i32 45
  %height55 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev54, i32 0, i32 14
  %90 = load i32, i32* %height55, align 4, !tbaa !44
  store i32 %90, i32* %ny, align 4, !tbaa !5
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.53, %for.body
  %91 = load i32, i32* %mx0, align 4, !tbaa !5
  store i32 %91, i32* %cx, align 4, !tbaa !5
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc, %if.end.56
  %92 = load i32, i32* %cx, align 4, !tbaa !5
  %93 = load i32, i32* %mx1, align 4, !tbaa !5
  %cmp58 = icmp slt i32 %92, %93
  br i1 %cmp58, label %for.body.59, label %for.end

for.body.59:                                      ; preds = %for.cond.57
  %94 = bitcast i32* %tx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %94) #2
  %95 = load i32, i32* %cx, align 4, !tbaa !5
  %96 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %phase60 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %96, i32 0, i32 46
  %x61 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase60, i32 0, i32 0
  %97 = load i32, i32* %x61, align 4, !tbaa !33
  %sub62 = sub nsw i32 %95, %97
  store i32 %sub62, i32* %tx, align 4, !tbaa !5
  %98 = load i32, i32* %mx1, align 4, !tbaa !5
  %99 = load i32, i32* %cx, align 4, !tbaa !5
  %sub63 = sub nsw i32 %98, %99
  store i32 %sub63, i32* %nx, align 4, !tbaa !5
  %100 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %100, i32 0, i32 47
  %bytes = bitcast %union._b* %buffer to [16384 x i8]*
  %arraydecay = getelementptr inbounds [16384 x i8], [16384 x i8]* %bytes, i32 0, i32 0
  %101 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles64 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %101, i32 0, i32 44
  %data65 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles64, i32 0, i32 0
  %102 = load i8*, i8** %data65, align 8, !tbaa !39
  %103 = load i32, i32* %cy, align 4, !tbaa !5
  %104 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles66 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %104, i32 0, i32 44
  %raster67 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles66, i32 0, i32 1
  %105 = load i32, i32* %raster67, align 4, !tbaa !40
  %mul68 = mul nsw i32 %103, %105
  %idx.ext69 = sext i32 %mul68 to i64
  %add.ptr70 = getelementptr inbounds i8, i8* %102, i64 %idx.ext69
  %106 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles71 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %106, i32 0, i32 44
  %raster72 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles71, i32 0, i32 1
  %107 = load i32, i32* %raster72, align 4, !tbaa !40
  %108 = load i32, i32* %ny, align 4, !tbaa !5
  %mul73 = mul nsw i32 %107, %108
  %conv = sext i32 %mul73 to i64
  %call74 = call i8* @memcpy(i8* %arraydecay, i8* %add.ptr70, i64 %conv) #5
  %109 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %mdev75 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %109, i32 0, i32 45
  %procs76 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev75, i32 0, i32 42
  %copy_mono = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs76, i32 0, i32 9
  %110 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono, align 8, !tbaa !45
  %111 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %mdev77 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %111, i32 0, i32 45
  %112 = bitcast %struct.gx_device_memory_s* %mdev77 to %struct.gx_device_s*
  %113 = load i8*, i8** %sdata, align 8, !tbaa !1
  %114 = load i32, i32* %ty, align 4, !tbaa !5
  %115 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub78 = sub nsw i32 %114, %115
  %116 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %mul79 = mul nsw i32 %sub78, %116
  %idx.ext80 = sext i32 %mul79 to i64
  %add.ptr81 = getelementptr inbounds i8, i8* %113, i64 %idx.ext80
  %117 = load i32, i32* %sx, align 4, !tbaa !5
  %118 = load i32, i32* %tx, align 4, !tbaa !5
  %add82 = add nsw i32 %117, %118
  %119 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub83 = sub nsw i32 %add82, %119
  %120 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %121 = load i32, i32* %cx, align 4, !tbaa !5
  %122 = load i32, i32* %nx, align 4, !tbaa !5
  %123 = load i32, i32* %ny, align 4, !tbaa !5
  %124 = load i64, i64* %mcolor0, align 8, !tbaa !7
  %125 = load i64, i64* %mcolor1, align 8, !tbaa !7
  %call84 = call i32 %110(%struct.gx_device_s* %112, i8* %add.ptr81, i32 %sub83, i32 %120, i64 0, i32 %121, i32 0, i32 %122, i32 %123, i64 %124, i64 %125) #4
  %126 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs85 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %126, i32 0, i32 42
  %copy_mono86 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs85, i32 0, i32 9
  %127 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono86, align 8, !tbaa !37
  %128 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %target87 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %128, i32 0, i32 43
  %129 = load %struct.gx_device_s*, %struct.gx_device_s** %target87, align 8, !tbaa !9
  %130 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %buffer88 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %130, i32 0, i32 47
  %bytes89 = bitcast %union._b* %buffer88 to [16384 x i8]*
  %arraydecay90 = getelementptr inbounds [16384 x i8], [16384 x i8]* %bytes89, i32 0, i32 0
  %131 = load i32, i32* %cx, align 4, !tbaa !5
  %132 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles91 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %132, i32 0, i32 44
  %raster92 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles91, i32 0, i32 1
  %133 = load i32, i32* %raster92, align 4, !tbaa !40
  %134 = load i32, i32* %tx, align 4, !tbaa !5
  %135 = load i32, i32* %ty, align 4, !tbaa !5
  %136 = load i32, i32* %nx, align 4, !tbaa !5
  %137 = load i32, i32* %ny, align 4, !tbaa !5
  %138 = load i64, i64* %color, align 8, !tbaa !7
  %call93 = call i32 %127(%struct.gx_device_s* %129, i8* %arraydecay90, i32 %131, i32 %133, i64 0, i32 %134, i32 %135, i32 %136, i32 %137, i64 -1, i64 %138) #4
  store i32 %call93, i32* %code, align 4, !tbaa !5
  %139 = load i32, i32* %code, align 4, !tbaa !5
  %cmp94 = icmp slt i32 %139, 0
  br i1 %cmp94, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %for.body.59
  %140 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %140, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.97:                                        ; preds = %for.body.59
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.97, %if.then.96
  %141 = bitcast i32* %tx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.99 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %142 = load i32, i32* %nx, align 4, !tbaa !5
  %143 = load i32, i32* %cx, align 4, !tbaa !5
  %add98 = add nsw i32 %143, %142
  store i32 %add98, i32* %cx, align 4, !tbaa !5
  br label %for.cond.57

for.end:                                          ; preds = %for.cond.57
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.99

cleanup.99:                                       ; preds = %for.end, %cleanup
  %144 = bitcast i32* %nx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #2
  %145 = bitcast i32* %cx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #2
  %146 = bitcast i32* %ty to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146) #2
  %cleanup.dest.102 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.102, label %cleanup.107 [
    i32 0, label %cleanup.cont.103
  ]

cleanup.cont.103:                                 ; preds = %cleanup.99
  br label %for.inc.104

for.inc.104:                                      ; preds = %cleanup.cont.103
  %147 = load i32, i32* %ny, align 4, !tbaa !5
  %148 = load i32, i32* %cy, align 4, !tbaa !5
  %add105 = add nsw i32 %148, %147
  store i32 %add105, i32* %cy, align 4, !tbaa !5
  br label %for.cond

for.end.106:                                      ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.107

cleanup.107:                                      ; preds = %for.end.106, %cleanup.99, %if.else.12, %if.then.7, %if.then
  %149 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %149) #2
  %150 = bitcast i32* %ny to i8*
  call void @llvm.lifetime.end(i64 4, i8* %150) #2
  %151 = bitcast i32* %cy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %151) #2
  %152 = bitcast i32* %my1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %152) #2
  %153 = bitcast i32* %mx1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %153) #2
  %154 = bitcast i32* %my0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %154) #2
  %155 = bitcast i32* %mx0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %155) #2
  %156 = bitcast i32* %sx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %156) #2
  %157 = bitcast i8** %sdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %157) #2
  %158 = bitcast i64* %mcolor1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %158) #2
  %159 = bitcast i64* %mcolor0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %159) #2
  %160 = bitcast i64* %color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %160) #2
  %161 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %161) #2
  %162 = bitcast %struct.gx_device_mask_clip_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %162) #2
  %163 = load i32, i32* %retval
  ret i32 %163
}

; Function Attrs: nounwind uwtable
define internal i32 @mask_clip_copy_color(%struct.gx_device_s* %dev, i8* %data, i32 %sourcex, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %data.addr = alloca i8*, align 8
  %sourcex.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %cdev = alloca %struct.gx_device_mask_clip_s*, align 8
  %ccdata = alloca %struct.clip_callback_data_s, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !7
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_mask_clip_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_mask_clip_s*
  store %struct.gx_device_mask_clip_s* %2, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %3 = bitcast %struct.clip_callback_data_s* %ccdata to i8*
  call void @llvm.lifetime.start(i64 176, i8* %3) #2
  %4 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !9
  %tdev = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 0
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !46
  %6 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %data1 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 6
  store i8* %6, i8** %data1, align 8, !tbaa !48
  %7 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %sourcex2 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 8
  store i32 %7, i32* %sourcex2, align 4, !tbaa !49
  %8 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %raster3 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 9
  store i32 %8, i32* %raster3, align 4, !tbaa !50
  %9 = load i32, i32* %x.addr, align 4, !tbaa !5
  %x4 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 1
  store i32 %9, i32* %x4, align 4, !tbaa !51
  %10 = load i32, i32* %y.addr, align 4, !tbaa !5
  %y5 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 2
  store i32 %10, i32* %y5, align 4, !tbaa !52
  %11 = load i32, i32* %w.addr, align 4, !tbaa !5
  %w6 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 3
  store i32 %11, i32* %w6, align 4, !tbaa !53
  %12 = load i32, i32* %h.addr, align 4, !tbaa !5
  %h7 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 4
  store i32 %12, i32* %h7, align 4, !tbaa !54
  %13 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %call = call i32 @clip_runs_enumerate(%struct.gx_device_mask_clip_s* %13, i32 (%struct.clip_callback_data_s*, i32, i32, i32, i32)* @clip_call_copy_color, %struct.clip_callback_data_s* %ccdata) #4
  %14 = bitcast %struct.clip_callback_data_s* %ccdata to i8*
  call void @llvm.lifetime.end(i64 176, i8* %14) #2
  %15 = bitcast %struct.gx_device_mask_clip_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #2
  ret i32 %call
}

declare i32 @gx_default_draw_line(%struct.gx_device_s*, i32, i32, i32, i32, i64) #0

declare i32 @gx_forward_get_bits(%struct.gx_device_s*, i32, i8*, i8**) #0

declare i32 @gx_forward_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @gx_forward_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i64 @gx_forward_map_cmyk_color(%struct.gx_device_s*, i16*) #0

declare %struct.gx_xfont_procs_s* @gx_forward_get_xfont_procs(%struct.gx_device_s*) #0

declare %struct.gx_device_s* @gx_forward_get_xfont_device(%struct.gx_device_s*) #0

declare i64 @gx_forward_map_rgb_alpha_color(%struct.gx_device_s*, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext) #0

declare %struct.gx_device_s* @gx_forward_get_page_device(%struct.gx_device_s*) #0

declare i32 @gx_default_get_alpha_bits(%struct.gx_device_s*, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @mask_clip_copy_alpha(%struct.gx_device_s* %dev, i8* %data, i32 %sourcex, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color, i32 %depth) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %data.addr = alloca i8*, align 8
  %sourcex.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  %depth.addr = alloca i32, align 4
  %cdev = alloca %struct.gx_device_mask_clip_s*, align 8
  %ccdata = alloca %struct.clip_callback_data_s, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !7
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store i64 %color, i64* %color.addr, align 8, !tbaa !7
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_mask_clip_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_mask_clip_s*
  store %struct.gx_device_mask_clip_s* %2, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %3 = bitcast %struct.clip_callback_data_s* %ccdata to i8*
  call void @llvm.lifetime.start(i64 176, i8* %3) #2
  %4 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !9
  %tdev = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 0
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !46
  %6 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %data1 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 6
  store i8* %6, i8** %data1, align 8, !tbaa !48
  %7 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %sourcex2 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 8
  store i32 %7, i32* %sourcex2, align 4, !tbaa !49
  %8 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %raster3 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 9
  store i32 %8, i32* %raster3, align 4, !tbaa !50
  %9 = load i32, i32* %x.addr, align 4, !tbaa !5
  %x4 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 1
  store i32 %9, i32* %x4, align 4, !tbaa !51
  %10 = load i32, i32* %y.addr, align 4, !tbaa !5
  %y5 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 2
  store i32 %10, i32* %y5, align 4, !tbaa !52
  %11 = load i32, i32* %w.addr, align 4, !tbaa !5
  %w6 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 3
  store i32 %11, i32* %w6, align 4, !tbaa !53
  %12 = load i32, i32* %h.addr, align 4, !tbaa !5
  %h7 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 4
  store i32 %12, i32* %h7, align 4, !tbaa !54
  %13 = load i64, i64* %color.addr, align 8, !tbaa !7
  %color8 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 5
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %color8, i32 0, i64 0
  store i64 %13, i64* %arrayidx, align 8, !tbaa !7
  %14 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %depth9 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 10
  store i32 %14, i32* %depth9, align 4, !tbaa !55
  %15 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %call = call i32 @clip_runs_enumerate(%struct.gx_device_mask_clip_s* %15, i32 (%struct.clip_callback_data_s*, i32, i32, i32, i32)* @clip_call_copy_alpha, %struct.clip_callback_data_s* %ccdata) #4
  %16 = bitcast %struct.clip_callback_data_s* %ccdata to i8*
  call void @llvm.lifetime.end(i64 176, i8* %16) #2
  %17 = bitcast %struct.gx_device_mask_clip_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #2
  ret i32 %call
}

declare i32 @gx_forward_get_band(%struct.gx_device_s*, i32, i32*) #0

declare i32 @gx_default_copy_rop(%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32) #0

declare i32 @gx_default_fill_path(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*) #0

declare i32 @gx_default_stroke_path(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*) #0

declare i32 @gx_default_fill_mask(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*) #0

declare i32 @gx_default_fill_trapezoid(%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32) #0

declare i32 @gx_default_fill_parallelogram(%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32) #0

declare i32 @gx_default_fill_triangle(%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32) #0

declare i32 @gx_default_draw_thin_line(%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32) #0

declare i32 @gx_default_begin_image(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**) #0

declare i32 @gx_default_image_data(%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32) #0

declare i32 @gx_default_end_image(%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @mask_clip_strip_tile_rectangle(%struct.gx_device_s* %dev, %struct.gx_strip_bitmap_s* %tiles, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color0, i64 %color1, i32 %phase_x, i32 %phase_y) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %tiles.addr = alloca %struct.gx_strip_bitmap_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %color0.addr = alloca i64, align 8
  %color1.addr = alloca i64, align 8
  %phase_x.addr = alloca i32, align 4
  %phase_y.addr = alloca i32, align 4
  %cdev = alloca %struct.gx_device_mask_clip_s*, align 8
  %ccdata = alloca %struct.clip_callback_data_s, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_strip_bitmap_s* %tiles, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store i64 %color0, i64* %color0.addr, align 8, !tbaa !7
  store i64 %color1, i64* %color1.addr, align 8, !tbaa !7
  store i32 %phase_x, i32* %phase_x.addr, align 4, !tbaa !5
  store i32 %phase_y, i32* %phase_y.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_mask_clip_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_mask_clip_s*
  store %struct.gx_device_mask_clip_s* %2, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %3 = bitcast %struct.clip_callback_data_s* %ccdata to i8*
  call void @llvm.lifetime.start(i64 176, i8* %3) #2
  %4 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !9
  %tdev = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 0
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !46
  %6 = load i32, i32* %x.addr, align 4, !tbaa !5
  %x1 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 1
  store i32 %6, i32* %x1, align 4, !tbaa !51
  %7 = load i32, i32* %y.addr, align 4, !tbaa !5
  %y2 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 2
  store i32 %7, i32* %y2, align 4, !tbaa !52
  %8 = load i32, i32* %w.addr, align 4, !tbaa !5
  %w3 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 3
  store i32 %8, i32* %w3, align 4, !tbaa !53
  %9 = load i32, i32* %h.addr, align 4, !tbaa !5
  %h4 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 4
  store i32 %9, i32* %h4, align 4, !tbaa !54
  %10 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %tiles5 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 14
  store %struct.gx_strip_bitmap_s* %10, %struct.gx_strip_bitmap_s** %tiles5, align 8, !tbaa !56
  %11 = load i64, i64* %color0.addr, align 8, !tbaa !7
  %color = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 5
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %color, i32 0, i64 0
  store i64 %11, i64* %arrayidx, align 8, !tbaa !7
  %12 = load i64, i64* %color1.addr, align 8, !tbaa !7
  %color6 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 5
  %arrayidx7 = getelementptr inbounds [2 x i64], [2 x i64]* %color6, i32 0, i64 1
  store i64 %12, i64* %arrayidx7, align 8, !tbaa !7
  %13 = load i32, i32* %phase_x.addr, align 4, !tbaa !5
  %phase = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 15
  %x8 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 0
  store i32 %13, i32* %x8, align 4, !tbaa !57
  %14 = load i32, i32* %phase_y.addr, align 4, !tbaa !5
  %phase9 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 15
  %y10 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase9, i32 0, i32 1
  store i32 %14, i32* %y10, align 4, !tbaa !58
  %15 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %call = call i32 @clip_runs_enumerate(%struct.gx_device_mask_clip_s* %15, i32 (%struct.clip_callback_data_s*, i32, i32, i32, i32)* @clip_call_strip_tile_rectangle, %struct.clip_callback_data_s* %ccdata) #4
  %16 = bitcast %struct.clip_callback_data_s* %ccdata to i8*
  call void @llvm.lifetime.end(i64 176, i8* %16) #2
  %17 = bitcast %struct.gx_device_mask_clip_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @mask_clip_strip_copy_rop(%struct.gx_device_s* %dev, i8* %data, i32 %sourcex, i32 %raster, i64 %id, i64* %scolors, %struct.gx_strip_bitmap_s* %textures, i64* %tcolors, i32 %x, i32 %y, i32 %w, i32 %h, i32 %phase_x, i32 %phase_y, i32 %lop) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %data.addr = alloca i8*, align 8
  %sourcex.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %scolors.addr = alloca i64*, align 8
  %textures.addr = alloca %struct.gx_strip_bitmap_s*, align 8
  %tcolors.addr = alloca i64*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %phase_x.addr = alloca i32, align 4
  %phase_y.addr = alloca i32, align 4
  %lop.addr = alloca i32, align 4
  %cdev = alloca %struct.gx_device_mask_clip_s*, align 8
  %ccdata = alloca %struct.clip_callback_data_s, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !7
  store i64* %scolors, i64** %scolors.addr, align 8, !tbaa !1
  store %struct.gx_strip_bitmap_s* %textures, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  store i64* %tcolors, i64** %tcolors.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store i32 %phase_x, i32* %phase_x.addr, align 4, !tbaa !5
  store i32 %phase_y, i32* %phase_y.addr, align 4, !tbaa !5
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_mask_clip_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_mask_clip_s*
  store %struct.gx_device_mask_clip_s* %2, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %3 = bitcast %struct.clip_callback_data_s* %ccdata to i8*
  call void @llvm.lifetime.start(i64 176, i8* %3) #2
  %4 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !9
  %tdev = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 0
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !46
  %6 = load i32, i32* %x.addr, align 4, !tbaa !5
  %x1 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 1
  store i32 %6, i32* %x1, align 4, !tbaa !51
  %7 = load i32, i32* %y.addr, align 4, !tbaa !5
  %y2 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 2
  store i32 %7, i32* %y2, align 4, !tbaa !52
  %8 = load i32, i32* %w.addr, align 4, !tbaa !5
  %w3 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 3
  store i32 %8, i32* %w3, align 4, !tbaa !53
  %9 = load i32, i32* %h.addr, align 4, !tbaa !5
  %h4 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 4
  store i32 %9, i32* %h4, align 4, !tbaa !54
  %10 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %data5 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 6
  store i8* %10, i8** %data5, align 8, !tbaa !48
  %11 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %sourcex6 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 8
  store i32 %11, i32* %sourcex6, align 4, !tbaa !49
  %12 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %raster7 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 9
  store i32 %12, i32* %raster7, align 4, !tbaa !50
  %13 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %scolors8 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 16
  store i64* %13, i64** %scolors8, align 8, !tbaa !59
  %14 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %textures9 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 17
  store %struct.gx_strip_bitmap_s* %14, %struct.gx_strip_bitmap_s** %textures9, align 8, !tbaa !60
  %15 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %tcolors10 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 18
  store i64* %15, i64** %tcolors10, align 8, !tbaa !61
  %16 = load i32, i32* %phase_x.addr, align 4, !tbaa !5
  %phase = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 15
  %x11 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 0
  store i32 %16, i32* %x11, align 4, !tbaa !57
  %17 = load i32, i32* %phase_y.addr, align 4, !tbaa !5
  %phase12 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 15
  %y13 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase12, i32 0, i32 1
  store i32 %17, i32* %y13, align 4, !tbaa !58
  %18 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %lop14 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 12
  store i32 %18, i32* %lop14, align 4, !tbaa !62
  %19 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %call = call i32 @clip_runs_enumerate(%struct.gx_device_mask_clip_s* %19, i32 (%struct.clip_callback_data_s*, i32, i32, i32, i32)* @clip_call_strip_copy_rop, %struct.clip_callback_data_s* %ccdata) #4
  %20 = bitcast %struct.clip_callback_data_s* %ccdata to i8*
  call void @llvm.lifetime.end(i64 176, i8* %20) #2
  %21 = bitcast %struct.gx_device_mask_clip_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal void @mask_clip_get_clipping_box(%struct.gx_device_s* %dev, %struct.gs_fixed_rect_s* %pbox) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pbox.addr = alloca %struct.gs_fixed_rect_s*, align 8
  %cdev = alloca %struct.gx_device_mask_clip_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %tbox = alloca %struct.gs_fixed_rect_s, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_fixed_rect_s* %pbox, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_mask_clip_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_mask_clip_s*
  store %struct.gx_device_mask_clip_s* %2, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !9
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = bitcast %struct.gs_fixed_rect_s* %tbox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 42
  %get_clipping_box = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 36
  %8 = load void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)** %get_clipping_box, align 8, !tbaa !63
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  call void %8(%struct.gx_device_s* %9, %struct.gs_fixed_rect_s* %tbox) #4
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %tbox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %10 = load i32, i32* %x, align 4, !tbaa !64
  %11 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %phase = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %11, i32 0, i32 46
  %x1 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 0
  %12 = load i32, i32* %x1, align 4, !tbaa !33
  %sub = sub nsw i32 %10, %12
  %13 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %p2 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %13, i32 0, i32 0
  %x3 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2, i32 0, i32 0
  store i32 %sub, i32* %x3, align 4, !tbaa !64
  %p4 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %tbox, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p4, i32 0, i32 1
  %14 = load i32, i32* %y, align 4, !tbaa !67
  %15 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %phase5 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %15, i32 0, i32 46
  %y6 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase5, i32 0, i32 1
  %16 = load i32, i32* %y6, align 4, !tbaa !34
  %sub7 = sub nsw i32 %14, %16
  %17 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %p8 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %17, i32 0, i32 0
  %y9 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p8, i32 0, i32 1
  store i32 %sub7, i32* %y9, align 4, !tbaa !67
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %tbox, i32 0, i32 1
  %x10 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %18 = load i32, i32* %x10, align 4, !tbaa !68
  %19 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %phase11 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %19, i32 0, i32 46
  %x12 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase11, i32 0, i32 0
  %20 = load i32, i32* %x12, align 4, !tbaa !33
  %sub13 = sub nsw i32 %18, %20
  %21 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %q14 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %21, i32 0, i32 1
  %x15 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q14, i32 0, i32 0
  store i32 %sub13, i32* %x15, align 4, !tbaa !68
  %q16 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %tbox, i32 0, i32 1
  %y17 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q16, i32 0, i32 1
  %22 = load i32, i32* %y17, align 4, !tbaa !69
  %23 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %phase18 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %23, i32 0, i32 46
  %y19 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase18, i32 0, i32 1
  %24 = load i32, i32* %y19, align 4, !tbaa !34
  %sub20 = sub nsw i32 %22, %24
  %25 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %q21 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %25, i32 0, i32 1
  %y22 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q21, i32 0, i32 1
  store i32 %sub20, i32* %y22, align 4, !tbaa !69
  %26 = bitcast %struct.gs_fixed_rect_s* %tbox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %26) #2
  %27 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  %28 = bitcast %struct.gx_device_mask_clip_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #2
  ret void
}

declare i32 @gx_default_begin_typed_image(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**) #0

declare i32 @gx_forward_get_bits_rectangle(%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**) #0

declare i32 @gx_forward_map_color_rgb_alpha(%struct.gx_device_s*, i64, i16*) #0

declare i32 @gx_no_create_compositor(%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*) #0

declare i32 @gx_forward_get_hardware_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @gx_default_text_begin(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**) #0

declare i32 @gx_default_finish_copydevice(%struct.gx_device_s*, %struct.gx_device_s*) #0

declare %struct.gx_cm_color_map_procs_s* @gx_forward_get_color_mapping_procs(%struct.gx_device_s*) #0

declare i32 @gx_forward_get_color_comp_index(%struct.gx_device_s*, i8*, i32, i32) #0

declare i64 @gx_forward_encode_color(%struct.gx_device_s*, i16*) #0

declare i32 @gx_forward_decode_color(%struct.gx_device_s*, i64, i16*) #0

; Function Attrs: nounwind uwtable
define internal i32 @mask_clip_fill_rectangle_hl_color(%struct.gx_device_s* %dev, %struct.gs_fixed_rect_s* %rect, %struct.gs_imager_state_s* %pis, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %rect.addr = alloca %struct.gs_fixed_rect_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %cdev = alloca %struct.gx_device_mask_clip_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %mx0 = alloca i32, align 4
  %mx1 = alloca i32, align 4
  %my0 = alloca i32, align 4
  %my1 = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_fixed_rect_s* %rect, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_mask_clip_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_mask_clip_s*
  store %struct.gx_device_mask_clip_s* %2, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !9
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast i32* %mx0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast i32* %mx1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = bitcast i32* %my0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = bitcast i32* %my1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %14, i32 0, i32 0
  %x1 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %15 = load i32, i32* %x1, align 4, !tbaa !64
  %shr = ashr i32 %15, 8
  store i32 %shr, i32* %x, align 4, !tbaa !5
  %16 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %p2 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %16, i32 0, i32 0
  %y3 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p2, i32 0, i32 1
  %17 = load i32, i32* %y3, align 4, !tbaa !67
  %shr4 = ashr i32 %17, 8
  store i32 %shr4, i32* %y, align 4, !tbaa !5
  %18 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %18, i32 0, i32 1
  %x5 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %19 = load i32, i32* %x5, align 4, !tbaa !68
  %shr6 = ashr i32 %19, 8
  %20 = load i32, i32* %x, align 4, !tbaa !5
  %sub = sub nsw i32 %shr6, %20
  store i32 %sub, i32* %w, align 4, !tbaa !5
  %21 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %q7 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %21, i32 0, i32 1
  %y8 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q7, i32 0, i32 1
  %22 = load i32, i32* %y8, align 4, !tbaa !69
  %shr9 = ashr i32 %22, 8
  %23 = load i32, i32* %y, align 4, !tbaa !5
  %sub10 = sub nsw i32 %shr9, %23
  store i32 %sub10, i32* %h, align 4, !tbaa !5
  %24 = load i32, i32* %x, align 4, !tbaa !5
  %25 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %phase = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %25, i32 0, i32 46
  %x11 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 0
  %26 = load i32, i32* %x11, align 4, !tbaa !33
  %add = add nsw i32 %24, %26
  store i32 %add, i32* %mx0, align 4, !tbaa !5
  %27 = load i32, i32* %y, align 4, !tbaa !5
  %28 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %phase12 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %28, i32 0, i32 46
  %y13 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase12, i32 0, i32 1
  %29 = load i32, i32* %y13, align 4, !tbaa !34
  %add14 = add nsw i32 %27, %29
  store i32 %add14, i32* %my0, align 4, !tbaa !5
  %30 = load i32, i32* %mx0, align 4, !tbaa !5
  %31 = load i32, i32* %w, align 4, !tbaa !5
  %add15 = add nsw i32 %30, %31
  store i32 %add15, i32* %mx1, align 4, !tbaa !5
  %32 = load i32, i32* %my0, align 4, !tbaa !5
  %33 = load i32, i32* %h, align 4, !tbaa !5
  %add16 = add nsw i32 %32, %33
  store i32 %add16, i32* %my1, align 4, !tbaa !5
  %34 = load i32, i32* %mx0, align 4, !tbaa !5
  %cmp = icmp slt i32 %34, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %mx0, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %35 = load i32, i32* %my0, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %35, 0
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end
  store i32 0, i32* %my0, align 4, !tbaa !5
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.end
  %36 = load i32, i32* %mx1, align 4, !tbaa !5
  %37 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %37, i32 0, i32 44
  %size = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles, i32 0, i32 2
  %x20 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size, i32 0, i32 0
  %38 = load i32, i32* %x20, align 4, !tbaa !35
  %cmp21 = icmp sgt i32 %36, %38
  br i1 %cmp21, label %if.then.22, label %if.end.26

if.then.22:                                       ; preds = %if.end.19
  %39 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles23 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %39, i32 0, i32 44
  %size24 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles23, i32 0, i32 2
  %x25 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size24, i32 0, i32 0
  %40 = load i32, i32* %x25, align 4, !tbaa !35
  store i32 %40, i32* %mx1, align 4, !tbaa !5
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.22, %if.end.19
  %41 = load i32, i32* %my1, align 4, !tbaa !5
  %42 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles27 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %42, i32 0, i32 44
  %size28 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles27, i32 0, i32 2
  %y29 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size28, i32 0, i32 1
  %43 = load i32, i32* %y29, align 4, !tbaa !36
  %cmp30 = icmp sgt i32 %41, %43
  br i1 %cmp30, label %if.then.31, label %if.end.35

if.then.31:                                       ; preds = %if.end.26
  %44 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles32 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %44, i32 0, i32 44
  %size33 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles32, i32 0, i32 2
  %y34 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size33, i32 0, i32 1
  %45 = load i32, i32* %y34, align 4, !tbaa !36
  store i32 %45, i32* %my1, align 4, !tbaa !5
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.31, %if.end.26
  %46 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %46, i32 0, i32 0
  %47 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !70
  %fill_masked = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %47, i32 0, i32 6
  %48 = load i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)** %fill_masked, align 8, !tbaa !76
  %49 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %50 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles36 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %50, i32 0, i32 44
  %data = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles36, i32 0, i32 0
  %51 = load i8*, i8** %data, align 8, !tbaa !39
  %52 = load i32, i32* %my0, align 4, !tbaa !5
  %53 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles37 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %53, i32 0, i32 44
  %raster = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles37, i32 0, i32 1
  %54 = load i32, i32* %raster, align 4, !tbaa !40
  %mul = mul nsw i32 %52, %54
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %51, i64 %idx.ext
  %55 = load i32, i32* %mx0, align 4, !tbaa !5
  %56 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles38 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %56, i32 0, i32 44
  %raster39 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles38, i32 0, i32 1
  %57 = load i32, i32* %raster39, align 4, !tbaa !40
  %58 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles40 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %58, i32 0, i32 44
  %id = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles40, i32 0, i32 3
  %59 = load i64, i64* %id, align 8, !tbaa !41
  %60 = load i32, i32* %mx0, align 4, !tbaa !5
  %61 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %phase41 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %61, i32 0, i32 46
  %x42 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase41, i32 0, i32 0
  %62 = load i32, i32* %x42, align 4, !tbaa !33
  %sub43 = sub nsw i32 %60, %62
  %63 = load i32, i32* %my0, align 4, !tbaa !5
  %64 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %phase44 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %64, i32 0, i32 46
  %y45 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase44, i32 0, i32 1
  %65 = load i32, i32* %y45, align 4, !tbaa !34
  %sub46 = sub nsw i32 %63, %65
  %66 = load i32, i32* %mx1, align 4, !tbaa !5
  %67 = load i32, i32* %mx0, align 4, !tbaa !5
  %sub47 = sub nsw i32 %66, %67
  %68 = load i32, i32* %my1, align 4, !tbaa !5
  %69 = load i32, i32* %my0, align 4, !tbaa !5
  %sub48 = sub nsw i32 %68, %69
  %70 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %call = call i32 %48(%struct.gx_device_color_s* %49, i8* %add.ptr, i32 %55, i32 %57, i64 %59, i32 %sub43, i32 %sub46, i32 %sub47, i32 %sub48, %struct.gx_device_s* %70, i32 252, i32 0) #4
  %71 = bitcast i32* %my1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #2
  %72 = bitcast i32* %my0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #2
  %73 = bitcast i32* %mx1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #2
  %74 = bitcast i32* %mx0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #2
  %75 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #2
  %76 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #2
  %77 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #2
  %78 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #2
  %79 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #2
  %80 = bitcast %struct.gx_device_mask_clip_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #2
  ret i32 %call
}

declare i32 @gx_forward_include_color_space(%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32) #0

declare i32 @gx_forward_fill_linear_color_scanline(%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32) #0

declare i32 @gx_forward_fill_linear_color_trapezoid(%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*) #0

declare i32 @gx_forward_fill_linear_color_triangle(%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*) #0

declare i32 @gx_forward_update_spot_equivalent_colors(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare %struct.gs_devn_params_s* @gx_forward_ret_devn_params(%struct.gx_device_s*) #0

declare i32 @gx_forward_fillpage(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*) #0

declare i32 @gx_forward_dev_spec_op(%struct.gx_device_s*, i32, i8*, i32) #0

declare i32 @gx_forward_get_profile(%struct.gx_device_s*, %struct.cmm_dev_profile_s**) #0

declare void @gx_forward_set_graphics_type_tag(%struct.gx_device_s*, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @mask_clip_strip_copy_rop2(%struct.gx_device_s* %dev, i8* %data, i32 %sourcex, i32 %raster, i64 %id, i64* %scolors, %struct.gx_strip_bitmap_s* %textures, i64* %tcolors, i32 %x, i32 %y, i32 %w, i32 %h, i32 %phase_x, i32 %phase_y, i32 %lop, i32 %planar_height) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %data.addr = alloca i8*, align 8
  %sourcex.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %scolors.addr = alloca i64*, align 8
  %textures.addr = alloca %struct.gx_strip_bitmap_s*, align 8
  %tcolors.addr = alloca i64*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %phase_x.addr = alloca i32, align 4
  %phase_y.addr = alloca i32, align 4
  %lop.addr = alloca i32, align 4
  %planar_height.addr = alloca i32, align 4
  %cdev = alloca %struct.gx_device_mask_clip_s*, align 8
  %ccdata = alloca %struct.clip_callback_data_s, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !7
  store i64* %scolors, i64** %scolors.addr, align 8, !tbaa !1
  store %struct.gx_strip_bitmap_s* %textures, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  store i64* %tcolors, i64** %tcolors.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store i32 %phase_x, i32* %phase_x.addr, align 4, !tbaa !5
  store i32 %phase_y, i32* %phase_y.addr, align 4, !tbaa !5
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !5
  store i32 %planar_height, i32* %planar_height.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_mask_clip_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_mask_clip_s*
  store %struct.gx_device_mask_clip_s* %2, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %3 = bitcast %struct.clip_callback_data_s* %ccdata to i8*
  call void @llvm.lifetime.start(i64 176, i8* %3) #2
  %4 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !9
  %tdev = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 0
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !46
  %6 = load i32, i32* %x.addr, align 4, !tbaa !5
  %x1 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 1
  store i32 %6, i32* %x1, align 4, !tbaa !51
  %7 = load i32, i32* %y.addr, align 4, !tbaa !5
  %y2 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 2
  store i32 %7, i32* %y2, align 4, !tbaa !52
  %8 = load i32, i32* %w.addr, align 4, !tbaa !5
  %w3 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 3
  store i32 %8, i32* %w3, align 4, !tbaa !53
  %9 = load i32, i32* %h.addr, align 4, !tbaa !5
  %h4 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 4
  store i32 %9, i32* %h4, align 4, !tbaa !54
  %10 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %data5 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 6
  store i8* %10, i8** %data5, align 8, !tbaa !48
  %11 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %sourcex6 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 8
  store i32 %11, i32* %sourcex6, align 4, !tbaa !49
  %12 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %raster7 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 9
  store i32 %12, i32* %raster7, align 4, !tbaa !50
  %13 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %scolors8 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 16
  store i64* %13, i64** %scolors8, align 8, !tbaa !59
  %14 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %textures9 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 17
  store %struct.gx_strip_bitmap_s* %14, %struct.gx_strip_bitmap_s** %textures9, align 8, !tbaa !60
  %15 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %tcolors10 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 18
  store i64* %15, i64** %tcolors10, align 8, !tbaa !61
  %16 = load i32, i32* %phase_x.addr, align 4, !tbaa !5
  %phase = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 15
  %x11 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 0
  store i32 %16, i32* %x11, align 4, !tbaa !57
  %17 = load i32, i32* %phase_y.addr, align 4, !tbaa !5
  %phase12 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 15
  %y13 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase12, i32 0, i32 1
  store i32 %17, i32* %y13, align 4, !tbaa !58
  %18 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %lop14 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 12
  store i32 %18, i32* %lop14, align 4, !tbaa !62
  %19 = load i32, i32* %planar_height.addr, align 4, !tbaa !5
  %plane_height = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 19
  store i32 %19, i32* %plane_height, align 4, !tbaa !78
  %20 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %call = call i32 @clip_runs_enumerate(%struct.gx_device_mask_clip_s* %20, i32 (%struct.clip_callback_data_s*, i32, i32, i32, i32)* @clip_call_strip_copy_rop2, %struct.clip_callback_data_s* %ccdata) #4
  %21 = bitcast %struct.clip_callback_data_s* %ccdata to i8*
  call void @llvm.lifetime.end(i64 176, i8* %21) #2
  %22 = bitcast %struct.gx_device_mask_clip_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @mask_clip_strip_tile_rect_devn(%struct.gx_device_s* %dev, %struct.gx_strip_bitmap_s* %tiles, i32 %x, i32 %y, i32 %w, i32 %h, %struct.gx_device_color_s* %pdcolor0, %struct.gx_device_color_s* %pdcolor1, i32 %phase_x, i32 %phase_y) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %tiles.addr = alloca %struct.gx_strip_bitmap_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %pdcolor0.addr = alloca %struct.gx_device_color_s*, align 8
  %pdcolor1.addr = alloca %struct.gx_device_color_s*, align 8
  %phase_x.addr = alloca i32, align 4
  %phase_y.addr = alloca i32, align 4
  %cdev = alloca %struct.gx_device_mask_clip_s*, align 8
  %ccdata = alloca %struct.clip_callback_data_s, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_strip_bitmap_s* %tiles, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store %struct.gx_device_color_s* %pdcolor0, %struct.gx_device_color_s** %pdcolor0.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor1, %struct.gx_device_color_s** %pdcolor1.addr, align 8, !tbaa !1
  store i32 %phase_x, i32* %phase_x.addr, align 4, !tbaa !5
  store i32 %phase_y, i32* %phase_y.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_mask_clip_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_mask_clip_s*
  store %struct.gx_device_mask_clip_s* %2, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %3 = bitcast %struct.clip_callback_data_s* %ccdata to i8*
  call void @llvm.lifetime.start(i64 176, i8* %3) #2
  %4 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !9
  %tdev = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 0
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !46
  %6 = load i32, i32* %x.addr, align 4, !tbaa !5
  %x1 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 1
  store i32 %6, i32* %x1, align 4, !tbaa !51
  %7 = load i32, i32* %y.addr, align 4, !tbaa !5
  %y2 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 2
  store i32 %7, i32* %y2, align 4, !tbaa !52
  %8 = load i32, i32* %w.addr, align 4, !tbaa !5
  %w3 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 3
  store i32 %8, i32* %w3, align 4, !tbaa !53
  %9 = load i32, i32* %h.addr, align 4, !tbaa !5
  %h4 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 4
  store i32 %9, i32* %h4, align 4, !tbaa !54
  %10 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %tiles5 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 14
  store %struct.gx_strip_bitmap_s* %10, %struct.gx_strip_bitmap_s** %tiles5, align 8, !tbaa !56
  %11 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor0.addr, align 8, !tbaa !1
  %pdc = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 7
  %arrayidx = getelementptr inbounds [2 x %struct.gx_device_color_s*], [2 x %struct.gx_device_color_s*]* %pdc, i32 0, i64 0
  store %struct.gx_device_color_s* %11, %struct.gx_device_color_s** %arrayidx, align 8, !tbaa !1
  %12 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor1.addr, align 8, !tbaa !1
  %pdc6 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 7
  %arrayidx7 = getelementptr inbounds [2 x %struct.gx_device_color_s*], [2 x %struct.gx_device_color_s*]* %pdc6, i32 0, i64 1
  store %struct.gx_device_color_s* %12, %struct.gx_device_color_s** %arrayidx7, align 8, !tbaa !1
  %13 = load i32, i32* %phase_x.addr, align 4, !tbaa !5
  %phase = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 15
  %x8 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 0
  store i32 %13, i32* %x8, align 4, !tbaa !57
  %14 = load i32, i32* %phase_y.addr, align 4, !tbaa !5
  %phase9 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 15
  %y10 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase9, i32 0, i32 1
  store i32 %14, i32* %y10, align 4, !tbaa !58
  %15 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %call = call i32 @clip_runs_enumerate(%struct.gx_device_mask_clip_s* %15, i32 (%struct.clip_callback_data_s*, i32, i32, i32, i32)* @clip_call_strip_tile_rect_devn, %struct.clip_callback_data_s* %ccdata) #4
  %16 = bitcast %struct.clip_callback_data_s* %ccdata to i8*
  call void @llvm.lifetime.end(i64 176, i8* %16) #2
  %17 = bitcast %struct.gx_device_mask_clip_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @mask_clip_copy_alpha_hl_color(%struct.gx_device_s* %dev, i8* %data, i32 %sourcex, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, %struct.gx_device_color_s* %pdcolor, i32 %depth) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %data.addr = alloca i8*, align 8
  %sourcex.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %depth.addr = alloca i32, align 4
  %cdev = alloca %struct.gx_device_mask_clip_s*, align 8
  %ccdata = alloca %struct.clip_callback_data_s, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !7
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_mask_clip_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_mask_clip_s*
  store %struct.gx_device_mask_clip_s* %2, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %3 = bitcast %struct.clip_callback_data_s* %ccdata to i8*
  call void @llvm.lifetime.start(i64 176, i8* %3) #2
  %4 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !9
  %tdev = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 0
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !46
  %6 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %data1 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 6
  store i8* %6, i8** %data1, align 8, !tbaa !48
  %7 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %sourcex2 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 8
  store i32 %7, i32* %sourcex2, align 4, !tbaa !49
  %8 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %raster3 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 9
  store i32 %8, i32* %raster3, align 4, !tbaa !50
  %9 = load i32, i32* %x.addr, align 4, !tbaa !5
  %x4 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 1
  store i32 %9, i32* %x4, align 4, !tbaa !51
  %10 = load i32, i32* %y.addr, align 4, !tbaa !5
  %y5 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 2
  store i32 %10, i32* %y5, align 4, !tbaa !52
  %11 = load i32, i32* %w.addr, align 4, !tbaa !5
  %w6 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 3
  store i32 %11, i32* %w6, align 4, !tbaa !53
  %12 = load i32, i32* %h.addr, align 4, !tbaa !5
  %h7 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 4
  store i32 %12, i32* %h7, align 4, !tbaa !54
  %13 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %pdcolor8 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 11
  store %struct.gx_device_color_s* %13, %struct.gx_device_color_s** %pdcolor8, align 8, !tbaa !79
  %14 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %depth9 = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %ccdata, i32 0, i32 10
  store i32 %14, i32* %depth9, align 4, !tbaa !55
  %15 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %call = call i32 @clip_runs_enumerate(%struct.gx_device_mask_clip_s* %15, i32 (%struct.clip_callback_data_s*, i32, i32, i32, i32)* @clip_call_copy_alpha_hl_color, %struct.clip_callback_data_s* %ccdata) #4
  %16 = bitcast %struct.clip_callback_data_s* %ccdata to i8*
  call void @llvm.lifetime.end(i64 176, i8* %16) #2
  %17 = bitcast %struct.gx_device_mask_clip_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #2
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i32 @gx_default_copy_mono(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64) #0

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @clip_runs_enumerate(%struct.gx_device_mask_clip_s* %cdev, i32 (%struct.clip_callback_data_s*, i32, i32, i32, i32)* %process, %struct.clip_callback_data_s* %pccd) #1 {
entry:
  %retval = alloca i32, align 4
  %cdev.addr = alloca %struct.gx_device_mask_clip_s*, align 8
  %process.addr = alloca i32 (%struct.clip_callback_data_s*, i32, i32, i32, i32)*, align 8
  %pccd.addr = alloca %struct.clip_callback_data_s*, align 8
  %sdata = alloca i8*, align 8
  %sx = alloca i32, align 4
  %mx0 = alloca i32, align 4
  %my0 = alloca i32, align 4
  %mx1 = alloca i32, align 4
  %my1 = alloca i32, align 4
  %cy = alloca i32, align 4
  %tile_row = alloca i8*, align 8
  %prev = alloca %struct.gs_int_rect_s, align 4
  %code = alloca i32, align 4
  %cx = alloca i32, align 4
  %tp = alloca i8*, align 8
  %len = alloca i32, align 4
  %tx1 = alloca i32, align 4
  %tx = alloca i32, align 4
  %ty = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_mask_clip_s* %cdev, %struct.gx_device_mask_clip_s** %cdev.addr, align 8, !tbaa !1
  store i32 (%struct.clip_callback_data_s*, i32, i32, i32, i32)* %process, i32 (%struct.clip_callback_data_s*, i32, i32, i32, i32)** %process.addr, align 8, !tbaa !1
  store %struct.clip_callback_data_s* %pccd, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %0 = bitcast i8** %sdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %sx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %mx0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %my0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %mx1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %my1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %cy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i8** %tile_row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = bitcast %struct.gs_int_rect_s* %prev to i8*
  call void @llvm.lifetime.start(i64 16, i8* %8) #2
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  br label %do.body

do.body:                                          ; preds = %entry
  %10 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %10, i32 0, i32 6
  %11 = load i8*, i8** %data, align 8, !tbaa !48
  store i8* %11, i8** %sdata, align 8, !tbaa !1
  %12 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %sourcex = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %12, i32 0, i32 8
  %13 = load i32, i32* %sourcex, align 4, !tbaa !49
  store i32 %13, i32* %sx, align 4, !tbaa !5
  %14 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %14, i32 0, i32 1
  %15 = load i32, i32* %x, align 4, !tbaa !51
  %16 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev.addr, align 8, !tbaa !1
  %phase = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %16, i32 0, i32 46
  %x1 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 0
  %17 = load i32, i32* %x1, align 4, !tbaa !33
  %add = add nsw i32 %15, %17
  store i32 %add, i32* %mx0, align 4, !tbaa !5
  %18 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %18, i32 0, i32 2
  %19 = load i32, i32* %y, align 4, !tbaa !52
  %20 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev.addr, align 8, !tbaa !1
  %phase2 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %20, i32 0, i32 46
  %y3 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase2, i32 0, i32 1
  %21 = load i32, i32* %y3, align 4, !tbaa !34
  %add4 = add nsw i32 %19, %21
  store i32 %add4, i32* %my0, align 4, !tbaa !5
  %22 = load i32, i32* %mx0, align 4, !tbaa !5
  %23 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %w = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %23, i32 0, i32 3
  %24 = load i32, i32* %w, align 4, !tbaa !53
  %add5 = add nsw i32 %22, %24
  store i32 %add5, i32* %mx1, align 4, !tbaa !5
  %25 = load i32, i32* %my0, align 4, !tbaa !5
  %26 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %h = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %26, i32 0, i32 4
  %27 = load i32, i32* %h, align 4, !tbaa !54
  %add6 = add nsw i32 %25, %27
  store i32 %add6, i32* %my1, align 4, !tbaa !5
  %28 = load i32, i32* %mx0, align 4, !tbaa !5
  %cmp = icmp slt i32 %28, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %29 = load i32, i32* %mx0, align 4, !tbaa !5
  %30 = load i32, i32* %sx, align 4, !tbaa !5
  %sub = sub nsw i32 %30, %29
  store i32 %sub, i32* %sx, align 4, !tbaa !5
  store i32 0, i32* %mx0, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %31 = load i32, i32* %my0, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %31, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  %32 = load i32, i32* %my0, align 4, !tbaa !5
  %33 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.clip_callback_data_s, %struct.clip_callback_data_s* %33, i32 0, i32 9
  %34 = load i32, i32* %raster, align 4, !tbaa !50
  %mul = mul i32 %32, %34
  %35 = load i8*, i8** %sdata, align 8, !tbaa !1
  %idx.ext = zext i32 %mul to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %35, i64 %idx.neg
  store i8* %add.ptr, i8** %sdata, align 8, !tbaa !1
  store i32 0, i32* %my0, align 4, !tbaa !5
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end
  %36 = load i32, i32* %mx1, align 4, !tbaa !5
  %37 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev.addr, align 8, !tbaa !1
  %tiles = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %37, i32 0, i32 44
  %size = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles, i32 0, i32 2
  %x10 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size, i32 0, i32 0
  %38 = load i32, i32* %x10, align 4, !tbaa !35
  %cmp11 = icmp sgt i32 %36, %38
  br i1 %cmp11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %if.end.9
  %39 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev.addr, align 8, !tbaa !1
  %tiles13 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %39, i32 0, i32 44
  %size14 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles13, i32 0, i32 2
  %x15 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size14, i32 0, i32 0
  %40 = load i32, i32* %x15, align 4, !tbaa !35
  store i32 %40, i32* %mx1, align 4, !tbaa !5
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.12, %if.end.9
  %41 = load i32, i32* %my1, align 4, !tbaa !5
  %42 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev.addr, align 8, !tbaa !1
  %tiles17 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %42, i32 0, i32 44
  %size18 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles17, i32 0, i32 2
  %y19 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size18, i32 0, i32 1
  %43 = load i32, i32* %y19, align 4, !tbaa !36
  %cmp20 = icmp sgt i32 %41, %43
  br i1 %cmp20, label %if.then.21, label %if.end.25

if.then.21:                                       ; preds = %if.end.16
  %44 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev.addr, align 8, !tbaa !1
  %tiles22 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %44, i32 0, i32 44
  %size23 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles22, i32 0, i32 2
  %y24 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size23, i32 0, i32 1
  %45 = load i32, i32* %y24, align 4, !tbaa !36
  store i32 %45, i32* %my1, align 4, !tbaa !5
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.21, %if.end.16
  br label %do.cond

do.cond:                                          ; preds = %if.end.25
  br label %do.end

do.end:                                           ; preds = %do.cond
  %46 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev.addr, align 8, !tbaa !1
  %tiles26 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %46, i32 0, i32 44
  %data27 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles26, i32 0, i32 0
  %47 = load i8*, i8** %data27, align 8, !tbaa !39
  %48 = load i32, i32* %my0, align 4, !tbaa !5
  %49 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev.addr, align 8, !tbaa !1
  %tiles28 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %49, i32 0, i32 44
  %raster29 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles28, i32 0, i32 1
  %50 = load i32, i32* %raster29, align 4, !tbaa !40
  %mul30 = mul nsw i32 %48, %50
  %idx.ext31 = sext i32 %mul30 to i64
  %add.ptr32 = getelementptr inbounds i8, i8* %47, i64 %idx.ext31
  %51 = load i32, i32* %mx0, align 4, !tbaa !5
  %shr = ashr i32 %51, 3
  %idx.ext33 = sext i32 %shr to i64
  %add.ptr34 = getelementptr inbounds i8, i8* %add.ptr32, i64 %idx.ext33
  store i8* %add.ptr34, i8** %tile_row, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %prev, i32 0, i32 0
  %x35 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  store i32 0, i32* %x35, align 4, !tbaa !80
  %p36 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %prev, i32 0, i32 0
  %x37 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p36, i32 0, i32 0
  %52 = load i32, i32* %x37, align 4, !tbaa !80
  %sub38 = sub nsw i32 %52, 1
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %prev, i32 0, i32 1
  %x39 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  store i32 %sub38, i32* %x39, align 4, !tbaa !82
  %q40 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %prev, i32 0, i32 1
  %y41 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q40, i32 0, i32 1
  store i32 -1, i32* %y41, align 4, !tbaa !83
  %p42 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %prev, i32 0, i32 0
  %y43 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p42, i32 0, i32 1
  store i32 -1, i32* %y43, align 4, !tbaa !84
  %53 = load i32, i32* %my0, align 4, !tbaa !5
  store i32 %53, i32* %cy, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %54 = load i32, i32* %cy, align 4, !tbaa !5
  %55 = load i32, i32* %my1, align 4, !tbaa !5
  %cmp44 = icmp slt i32 %54, %55
  br i1 %cmp44, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %56 = bitcast i32* %cx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %56) #2
  %57 = load i32, i32* %mx0, align 4, !tbaa !5
  store i32 %57, i32* %cx, align 4, !tbaa !5
  %58 = bitcast i8** %tp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %58) #2
  %59 = load i8*, i8** %tile_row, align 8, !tbaa !1
  store i8* %59, i8** %tp, align 8, !tbaa !1
  br label %do.body.45

do.body.45:                                       ; preds = %for.body
  br label %do.cond.46

do.cond.46:                                       ; preds = %do.body.45
  br label %do.end.47

do.end.47:                                        ; preds = %do.cond.46
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %do.end.47
  %60 = load i32, i32* %cx, align 4, !tbaa !5
  %61 = load i32, i32* %mx1, align 4, !tbaa !5
  %cmp48 = icmp slt i32 %60, %61
  br i1 %cmp48, label %while.body, label %while.end.193

while.body:                                       ; preds = %while.cond
  %62 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %62) #2
  %63 = bitcast i32* %tx1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %63) #2
  %64 = bitcast i32* %tx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %64) #2
  %65 = bitcast i32* %ty to i8*
  call void @llvm.lifetime.start(i64 4, i8* %65) #2
  %66 = load i8*, i8** %tp, align 8, !tbaa !1
  %67 = load i8, i8* %66, align 1, !tbaa !85
  %conv = zext i8 %67 to i32
  %xor = xor i32 %conv, 255
  %idxprom = sext i32 %xor to i64
  %68 = load i32, i32* %cx, align 4, !tbaa !5
  %and = and i32 %68, 7
  %idxprom49 = sext i32 %and to i64
  %arrayidx = getelementptr inbounds [8 x i8*], [8 x i8*]* @byte_bit_run_length, i32 0, i64 %idxprom49
  %69 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %arrayidx50 = getelementptr inbounds i8, i8* %69, i64 %idxprom
  %70 = load i8, i8* %arrayidx50, align 1, !tbaa !85
  %conv51 = zext i8 %70 to i32
  store i32 %conv51, i32* %len, align 4, !tbaa !5
  %71 = load i32, i32* %len, align 4, !tbaa !5
  %cmp52 = icmp slt i32 %71, 8
  br i1 %cmp52, label %if.then.54, label %if.else

if.then.54:                                       ; preds = %while.body
  %72 = load i32, i32* %len, align 4, !tbaa !5
  %73 = load i32, i32* %cx, align 4, !tbaa !5
  %add55 = add nsw i32 %73, %72
  store i32 %add55, i32* %cx, align 4, !tbaa !5
  %74 = load i32, i32* %cx, align 4, !tbaa !5
  %75 = load i32, i32* %mx1, align 4, !tbaa !5
  %cmp56 = icmp sge i32 %74, %75
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.then.54
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup

if.end.59:                                        ; preds = %if.then.54
  br label %if.end.85

if.else:                                          ; preds = %while.body
  %76 = load i32, i32* %len, align 4, !tbaa !5
  %sub60 = sub nsw i32 %76, 8
  %77 = load i32, i32* %cx, align 4, !tbaa !5
  %add61 = add nsw i32 %77, %sub60
  store i32 %add61, i32* %cx, align 4, !tbaa !5
  %78 = load i8*, i8** %tp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %incdec.ptr, i8** %tp, align 8, !tbaa !1
  br label %while.cond.62

while.cond.62:                                    ; preds = %while.body.68, %if.else
  %79 = load i32, i32* %cx, align 4, !tbaa !5
  %80 = load i32, i32* %mx1, align 4, !tbaa !5
  %cmp63 = icmp slt i32 %79, %80
  br i1 %cmp63, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.62
  %81 = load i8*, i8** %tp, align 8, !tbaa !1
  %82 = load i8, i8* %81, align 1, !tbaa !85
  %conv65 = zext i8 %82 to i32
  %cmp66 = icmp eq i32 %conv65, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.62
  %83 = phi i1 [ false, %while.cond.62 ], [ %cmp66, %land.rhs ]
  br i1 %83, label %while.body.68, label %while.end

while.body.68:                                    ; preds = %land.end
  %84 = load i32, i32* %cx, align 4, !tbaa !5
  %add69 = add nsw i32 %84, 8
  store i32 %add69, i32* %cx, align 4, !tbaa !5
  %85 = load i8*, i8** %tp, align 8, !tbaa !1
  %incdec.ptr70 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %incdec.ptr70, i8** %tp, align 8, !tbaa !1
  br label %while.cond.62

while.end:                                        ; preds = %land.end
  %86 = load i32, i32* %cx, align 4, !tbaa !5
  %87 = load i32, i32* %mx1, align 4, !tbaa !5
  %cmp71 = icmp sge i32 %86, %87
  br i1 %cmp71, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %while.end
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup

if.end.74:                                        ; preds = %while.end
  %88 = load i8*, i8** %tp, align 8, !tbaa !1
  %89 = load i8, i8* %88, align 1, !tbaa !85
  %conv75 = zext i8 %89 to i32
  %xor76 = xor i32 %conv75, 255
  %idxprom77 = sext i32 %xor76 to i64
  %arrayidx78 = getelementptr inbounds [256 x i8], [256 x i8]* @byte_bit_run_length_0, i32 0, i64 %idxprom77
  %90 = load i8, i8* %arrayidx78, align 1, !tbaa !85
  %conv79 = zext i8 %90 to i32
  %91 = load i32, i32* %cx, align 4, !tbaa !5
  %add80 = add nsw i32 %91, %conv79
  store i32 %add80, i32* %cx, align 4, !tbaa !5
  %92 = load i32, i32* %cx, align 4, !tbaa !5
  %93 = load i32, i32* %mx1, align 4, !tbaa !5
  %cmp81 = icmp sge i32 %92, %93
  br i1 %cmp81, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %if.end.74
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup

if.end.84:                                        ; preds = %if.end.74
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.end.59
  %94 = load i32, i32* %cx, align 4, !tbaa !5
  %95 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev.addr, align 8, !tbaa !1
  %phase86 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %95, i32 0, i32 46
  %x87 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase86, i32 0, i32 0
  %96 = load i32, i32* %x87, align 4, !tbaa !33
  %sub88 = sub nsw i32 %94, %96
  store i32 %sub88, i32* %tx1, align 4, !tbaa !5
  %97 = load i8*, i8** %tp, align 8, !tbaa !1
  %98 = load i8, i8* %97, align 1, !tbaa !85
  %idxprom89 = zext i8 %98 to i64
  %99 = load i32, i32* %cx, align 4, !tbaa !5
  %and90 = and i32 %99, 7
  %idxprom91 = sext i32 %and90 to i64
  %arrayidx92 = getelementptr inbounds [8 x i8*], [8 x i8*]* @byte_bit_run_length, i32 0, i64 %idxprom91
  %100 = load i8*, i8** %arrayidx92, align 8, !tbaa !1
  %arrayidx93 = getelementptr inbounds i8, i8* %100, i64 %idxprom89
  %101 = load i8, i8* %arrayidx93, align 1, !tbaa !85
  %conv94 = zext i8 %101 to i32
  store i32 %conv94, i32* %len, align 4, !tbaa !5
  %102 = load i32, i32* %len, align 4, !tbaa !5
  %cmp95 = icmp slt i32 %102, 8
  br i1 %cmp95, label %if.then.97, label %if.else.103

if.then.97:                                       ; preds = %if.end.85
  %103 = load i32, i32* %len, align 4, !tbaa !5
  %104 = load i32, i32* %cx, align 4, !tbaa !5
  %add98 = add nsw i32 %104, %103
  store i32 %add98, i32* %cx, align 4, !tbaa !5
  %105 = load i32, i32* %cx, align 4, !tbaa !5
  %106 = load i32, i32* %mx1, align 4, !tbaa !5
  %cmp99 = icmp sgt i32 %105, %106
  br i1 %cmp99, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %if.then.97
  %107 = load i32, i32* %mx1, align 4, !tbaa !5
  store i32 %107, i32* %cx, align 4, !tbaa !5
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.101, %if.then.97
  br label %if.end.132

if.else.103:                                      ; preds = %if.end.85
  %108 = load i32, i32* %len, align 4, !tbaa !5
  %sub104 = sub nsw i32 %108, 8
  %109 = load i32, i32* %cx, align 4, !tbaa !5
  %add105 = add nsw i32 %109, %sub104
  store i32 %add105, i32* %cx, align 4, !tbaa !5
  %110 = load i8*, i8** %tp, align 8, !tbaa !1
  %incdec.ptr106 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %incdec.ptr106, i8** %tp, align 8, !tbaa !1
  br label %while.cond.107

while.cond.107:                                   ; preds = %while.body.115, %if.else.103
  %111 = load i32, i32* %cx, align 4, !tbaa !5
  %112 = load i32, i32* %mx1, align 4, !tbaa !5
  %cmp108 = icmp slt i32 %111, %112
  br i1 %cmp108, label %land.rhs.110, label %land.end.114

land.rhs.110:                                     ; preds = %while.cond.107
  %113 = load i8*, i8** %tp, align 8, !tbaa !1
  %114 = load i8, i8* %113, align 1, !tbaa !85
  %conv111 = zext i8 %114 to i32
  %cmp112 = icmp eq i32 %conv111, 255
  br label %land.end.114

land.end.114:                                     ; preds = %land.rhs.110, %while.cond.107
  %115 = phi i1 [ false, %while.cond.107 ], [ %cmp112, %land.rhs.110 ]
  br i1 %115, label %while.body.115, label %while.end.118

while.body.115:                                   ; preds = %land.end.114
  %116 = load i32, i32* %cx, align 4, !tbaa !5
  %add116 = add nsw i32 %116, 8
  store i32 %add116, i32* %cx, align 4, !tbaa !5
  %117 = load i8*, i8** %tp, align 8, !tbaa !1
  %incdec.ptr117 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %incdec.ptr117, i8** %tp, align 8, !tbaa !1
  br label %while.cond.107

while.end.118:                                    ; preds = %land.end.114
  %118 = load i32, i32* %cx, align 4, !tbaa !5
  %119 = load i32, i32* %mx1, align 4, !tbaa !5
  %cmp119 = icmp sgt i32 %118, %119
  br i1 %cmp119, label %if.then.121, label %if.else.122

if.then.121:                                      ; preds = %while.end.118
  %120 = load i32, i32* %mx1, align 4, !tbaa !5
  store i32 %120, i32* %cx, align 4, !tbaa !5
  br label %if.end.131

if.else.122:                                      ; preds = %while.end.118
  %121 = load i8*, i8** %tp, align 8, !tbaa !1
  %122 = load i8, i8* %121, align 1, !tbaa !85
  %idxprom123 = zext i8 %122 to i64
  %arrayidx124 = getelementptr inbounds [256 x i8], [256 x i8]* @byte_bit_run_length_0, i32 0, i64 %idxprom123
  %123 = load i8, i8* %arrayidx124, align 1, !tbaa !85
  %conv125 = zext i8 %123 to i32
  %124 = load i32, i32* %cx, align 4, !tbaa !5
  %add126 = add nsw i32 %124, %conv125
  store i32 %add126, i32* %cx, align 4, !tbaa !5
  %125 = load i32, i32* %cx, align 4, !tbaa !5
  %126 = load i32, i32* %mx1, align 4, !tbaa !5
  %cmp127 = icmp sgt i32 %125, %126
  br i1 %cmp127, label %if.then.129, label %if.end.130

if.then.129:                                      ; preds = %if.else.122
  %127 = load i32, i32* %mx1, align 4, !tbaa !5
  store i32 %127, i32* %cx, align 4, !tbaa !5
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.129, %if.else.122
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %if.then.121
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %if.end.102
  %128 = load i32, i32* %cx, align 4, !tbaa !5
  %129 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev.addr, align 8, !tbaa !1
  %phase133 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %129, i32 0, i32 46
  %x134 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase133, i32 0, i32 0
  %130 = load i32, i32* %x134, align 4, !tbaa !33
  %sub135 = sub nsw i32 %128, %130
  store i32 %sub135, i32* %tx, align 4, !tbaa !5
  br label %do.body.136

do.body.136:                                      ; preds = %if.end.132
  br label %do.cond.137

do.cond.137:                                      ; preds = %do.body.136
  br label %do.end.138

do.end.138:                                       ; preds = %do.cond.137
  %131 = load i32, i32* %cy, align 4, !tbaa !5
  %132 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev.addr, align 8, !tbaa !1
  %phase139 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %132, i32 0, i32 46
  %y140 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase139, i32 0, i32 1
  %133 = load i32, i32* %y140, align 4, !tbaa !34
  %sub141 = sub nsw i32 %131, %133
  store i32 %sub141, i32* %ty, align 4, !tbaa !5
  %p142 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %prev, i32 0, i32 0
  %x143 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p142, i32 0, i32 0
  %134 = load i32, i32* %x143, align 4, !tbaa !80
  %135 = load i32, i32* %tx1, align 4, !tbaa !5
  %cmp144 = icmp eq i32 %134, %135
  br i1 %cmp144, label %land.lhs.true, label %if.else.159

land.lhs.true:                                    ; preds = %do.end.138
  %q146 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %prev, i32 0, i32 1
  %x147 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q146, i32 0, i32 0
  %136 = load i32, i32* %x147, align 4, !tbaa !82
  %137 = load i32, i32* %tx, align 4, !tbaa !5
  %cmp148 = icmp eq i32 %136, %137
  br i1 %cmp148, label %land.lhs.true.150, label %if.else.159

land.lhs.true.150:                                ; preds = %land.lhs.true
  %q151 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %prev, i32 0, i32 1
  %y152 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q151, i32 0, i32 1
  %138 = load i32, i32* %y152, align 4, !tbaa !83
  %139 = load i32, i32* %ty, align 4, !tbaa !5
  %cmp153 = icmp eq i32 %138, %139
  br i1 %cmp153, label %if.then.155, label %if.else.159

if.then.155:                                      ; preds = %land.lhs.true.150
  %140 = load i32, i32* %ty, align 4, !tbaa !5
  %add156 = add nsw i32 %140, 1
  %q157 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %prev, i32 0, i32 1
  %y158 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q157, i32 0, i32 1
  store i32 %add156, i32* %y158, align 4, !tbaa !83
  br label %if.end.189

if.else.159:                                      ; preds = %land.lhs.true.150, %land.lhs.true, %do.end.138
  %q160 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %prev, i32 0, i32 1
  %y161 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q160, i32 0, i32 1
  %141 = load i32, i32* %y161, align 4, !tbaa !83
  %p162 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %prev, i32 0, i32 0
  %y163 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p162, i32 0, i32 1
  %142 = load i32, i32* %y163, align 4, !tbaa !84
  %cmp164 = icmp sgt i32 %141, %142
  br i1 %cmp164, label %if.then.166, label %if.end.179

if.then.166:                                      ; preds = %if.else.159
  %143 = load i32 (%struct.clip_callback_data_s*, i32, i32, i32, i32)*, i32 (%struct.clip_callback_data_s*, i32, i32, i32, i32)** %process.addr, align 8, !tbaa !1
  %144 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %p167 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %prev, i32 0, i32 0
  %x168 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p167, i32 0, i32 0
  %145 = load i32, i32* %x168, align 4, !tbaa !80
  %p169 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %prev, i32 0, i32 0
  %y170 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p169, i32 0, i32 1
  %146 = load i32, i32* %y170, align 4, !tbaa !84
  %q171 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %prev, i32 0, i32 1
  %x172 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q171, i32 0, i32 0
  %147 = load i32, i32* %x172, align 4, !tbaa !82
  %q173 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %prev, i32 0, i32 1
  %y174 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q173, i32 0, i32 1
  %148 = load i32, i32* %y174, align 4, !tbaa !83
  %call = call i32 %143(%struct.clip_callback_data_s* %144, i32 %145, i32 %146, i32 %147, i32 %148) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %149 = load i32, i32* %code, align 4, !tbaa !5
  %cmp175 = icmp slt i32 %149, 0
  br i1 %cmp175, label %if.then.177, label %if.end.178

if.then.177:                                      ; preds = %if.then.166
  %150 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %150, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.178:                                       ; preds = %if.then.166
  br label %if.end.179

if.end.179:                                       ; preds = %if.end.178, %if.else.159
  %151 = load i32, i32* %tx1, align 4, !tbaa !5
  %p180 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %prev, i32 0, i32 0
  %x181 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p180, i32 0, i32 0
  store i32 %151, i32* %x181, align 4, !tbaa !80
  %152 = load i32, i32* %ty, align 4, !tbaa !5
  %p182 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %prev, i32 0, i32 0
  %y183 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p182, i32 0, i32 1
  store i32 %152, i32* %y183, align 4, !tbaa !84
  %153 = load i32, i32* %tx, align 4, !tbaa !5
  %q184 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %prev, i32 0, i32 1
  %x185 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q184, i32 0, i32 0
  store i32 %153, i32* %x185, align 4, !tbaa !82
  %154 = load i32, i32* %ty, align 4, !tbaa !5
  %add186 = add nsw i32 %154, 1
  %q187 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %prev, i32 0, i32 1
  %y188 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q187, i32 0, i32 1
  store i32 %add186, i32* %y188, align 4, !tbaa !83
  br label %if.end.189

if.end.189:                                       ; preds = %if.end.179, %if.then.155
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.189, %if.then.177, %if.then.83, %if.then.73, %if.then.58
  %155 = bitcast i32* %ty to i8*
  call void @llvm.lifetime.end(i64 4, i8* %155) #2
  %156 = bitcast i32* %tx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %156) #2
  %157 = bitcast i32* %tx1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %157) #2
  %158 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %158) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.201 [
    i32 0, label %cleanup.cont
    i32 10, label %while.end.193
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end.193:                                    ; preds = %cleanup, %while.cond
  br label %do.body.194

do.body.194:                                      ; preds = %while.end.193
  br label %do.cond.195

do.cond.195:                                      ; preds = %do.body.194
  br label %do.end.196

do.end.196:                                       ; preds = %do.cond.195
  %159 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev.addr, align 8, !tbaa !1
  %tiles197 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %159, i32 0, i32 44
  %raster198 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles197, i32 0, i32 1
  %160 = load i32, i32* %raster198, align 4, !tbaa !40
  %161 = load i8*, i8** %tile_row, align 8, !tbaa !1
  %idx.ext199 = sext i32 %160 to i64
  %add.ptr200 = getelementptr inbounds i8, i8* %161, i64 %idx.ext199
  store i8* %add.ptr200, i8** %tile_row, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.201

cleanup.201:                                      ; preds = %do.end.196, %cleanup
  %162 = bitcast i8** %tp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %162) #2
  %163 = bitcast i32* %cx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %163) #2
  %cleanup.dest.203 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.203, label %cleanup.226 [
    i32 0, label %cleanup.cont.204
  ]

cleanup.cont.204:                                 ; preds = %cleanup.201
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont.204
  %164 = load i32, i32* %cy, align 4, !tbaa !5
  %inc = add nsw i32 %164, 1
  store i32 %inc, i32* %cy, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %q205 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %prev, i32 0, i32 1
  %y206 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q205, i32 0, i32 1
  %165 = load i32, i32* %y206, align 4, !tbaa !83
  %p207 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %prev, i32 0, i32 0
  %y208 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p207, i32 0, i32 1
  %166 = load i32, i32* %y208, align 4, !tbaa !84
  %cmp209 = icmp sgt i32 %165, %166
  br i1 %cmp209, label %if.then.211, label %if.end.225

if.then.211:                                      ; preds = %for.end
  %167 = load i32 (%struct.clip_callback_data_s*, i32, i32, i32, i32)*, i32 (%struct.clip_callback_data_s*, i32, i32, i32, i32)** %process.addr, align 8, !tbaa !1
  %168 = load %struct.clip_callback_data_s*, %struct.clip_callback_data_s** %pccd.addr, align 8, !tbaa !1
  %p212 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %prev, i32 0, i32 0
  %x213 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p212, i32 0, i32 0
  %169 = load i32, i32* %x213, align 4, !tbaa !80
  %p214 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %prev, i32 0, i32 0
  %y215 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p214, i32 0, i32 1
  %170 = load i32, i32* %y215, align 4, !tbaa !84
  %q216 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %prev, i32 0, i32 1
  %x217 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q216, i32 0, i32 0
  %171 = load i32, i32* %x217, align 4, !tbaa !82
  %q218 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %prev, i32 0, i32 1
  %y219 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q218, i32 0, i32 1
  %172 = load i32, i32* %y219, align 4, !tbaa !83
  %call220 = call i32 %167(%struct.clip_callback_data_s* %168, i32 %169, i32 %170, i32 %171, i32 %172) #4
  store i32 %call220, i32* %code, align 4, !tbaa !5
  %173 = load i32, i32* %code, align 4, !tbaa !5
  %cmp221 = icmp slt i32 %173, 0
  br i1 %cmp221, label %if.then.223, label %if.end.224

if.then.223:                                      ; preds = %if.then.211
  %174 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %174, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.226

if.end.224:                                       ; preds = %if.then.211
  br label %if.end.225

if.end.225:                                       ; preds = %if.end.224, %for.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.226

cleanup.226:                                      ; preds = %if.end.225, %if.then.223, %cleanup.201
  %175 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %175) #2
  %176 = bitcast %struct.gs_int_rect_s* %prev to i8*
  call void @llvm.lifetime.end(i64 16, i8* %176) #2
  %177 = bitcast i8** %tile_row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %177) #2
  %178 = bitcast i32* %cy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %178) #2
  %179 = bitcast i32* %my1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %179) #2
  %180 = bitcast i32* %mx1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %180) #2
  %181 = bitcast i32* %my0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %181) #2
  %182 = bitcast i32* %mx0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %182) #2
  %183 = bitcast i32* %sx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %183) #2
  %184 = bitcast i8** %sdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %184) #2
  %185 = load i32, i32* %retval
  ret i32 %185
}

declare i32 @clip_call_copy_color(%struct.clip_callback_data_s*, i32, i32, i32, i32) #0

declare i32 @clip_call_copy_alpha(%struct.clip_callback_data_s*, i32, i32, i32, i32) #0

declare i32 @clip_call_copy_alpha_hl_color(%struct.clip_callback_data_s*, i32, i32, i32, i32) #0

declare i32 @clip_call_strip_tile_rectangle(%struct.clip_callback_data_s*, i32, i32, i32, i32) #0

declare i32 @clip_call_strip_tile_rect_devn(%struct.clip_callback_data_s*, i32, i32, i32, i32) #0

declare i32 @clip_call_strip_copy_rop(%struct.clip_callback_data_s*, i32, i32, i32, i32) #0

declare i32 @clip_call_strip_copy_rop2(%struct.clip_callback_data_s*, i32, i32, i32, i32) #0

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !3, i64 0}
!9 = !{!10, !2, i64 1728}
!10 = !{!"gx_device_mask_clip_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !11, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !12, i64 96, !15, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !8, i64 928, !8, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !8, i64 968, !8, i64 976, !16, i64 984, !6, i64 1052, !6, i64 1056, !17, i64 1064, !2, i64 1104, !3, i64 1112, !19, i64 1120, !20, i64 1144, !2, i64 1728, !21, i64 1736, !23, i64 1784, !22, i64 4576, !3, i64 4584}
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
!21 = !{!"gx_strip_bitmap_s", !2, i64 0, !6, i64 8, !22, i64 12, !8, i64 24, !13, i64 32, !13, i64 34, !13, i64 36, !13, i64 38, !6, i64 40}
!22 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!23 = !{!"gx_device_memory_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !11, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !12, i64 96, !15, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !8, i64 928, !8, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !8, i64 968, !8, i64 976, !16, i64 984, !6, i64 1052, !6, i64 1056, !17, i64 1064, !2, i64 1104, !3, i64 1112, !19, i64 1120, !20, i64 1144, !2, i64 1728, !6, i64 1736, !2, i64 1744, !2, i64 1752, !6, i64 1760, !2, i64 1768, !6, i64 1776, !3, i64 1780, !24, i64 2548, !2, i64 2576, !26, i64 2584, !27, i64 2600, !28, i64 2624, !29, i64 2656, !30, i64 2680, !31, i64 2720, !32, i64 2736, !6, i64 2744, !6, i64 2748, !6, i64 2752, !6, i64 2756, !6, i64 2760, !8, i64 2768, !2, i64 2776, !6, i64 2784, !6, i64 2788}
!24 = !{!"gs_matrix_s", !25, i64 0, !25, i64 4, !25, i64 8, !25, i64 12, !25, i64 16, !25, i64 20}
!25 = !{!"float", !3, i64 0}
!26 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!27 = !{!"_c24", !8, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!28 = !{!"_c40", !8, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24}
!29 = !{!"_c48", !8, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!30 = !{!"_c56", !8, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!31 = !{!"_c64", !8, i64 0, !6, i64 8, !6, i64 12}
!32 = !{!"gs_log2_scale_point_s", !6, i64 0, !6, i64 4}
!33 = !{!10, !6, i64 4576}
!34 = !{!10, !6, i64 4580}
!35 = !{!10, !6, i64 1748}
!36 = !{!10, !6, i64 1752}
!37 = !{!38, !2, i64 1216}
!38 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !11, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !12, i64 96, !15, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !8, i64 928, !8, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !8, i64 968, !8, i64 976, !16, i64 984, !6, i64 1052, !6, i64 1056, !17, i64 1064, !2, i64 1104, !3, i64 1112, !19, i64 1120, !20, i64 1144}
!39 = !{!10, !2, i64 1736}
!40 = !{!10, !6, i64 1744}
!41 = !{!10, !8, i64 1760}
!42 = !{!10, !2, i64 3528}
!43 = !{!38, !2, i64 1200}
!44 = !{!10, !6, i64 2620}
!45 = !{!23, !2, i64 1216}
!46 = !{!47, !2, i64 0}
!47 = !{!"clip_callback_data_s", !2, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !3, i64 24, !2, i64 40, !3, i64 48, !6, i64 64, !6, i64 68, !6, i64 72, !2, i64 80, !6, i64 88, !2, i64 96, !2, i64 104, !22, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !6, i64 144, !2, i64 152, !2, i64 160, !2, i64 168}
!48 = !{!47, !2, i64 40}
!49 = !{!47, !6, i64 64}
!50 = !{!47, !6, i64 68}
!51 = !{!47, !6, i64 8}
!52 = !{!47, !6, i64 12}
!53 = !{!47, !6, i64 16}
!54 = !{!47, !6, i64 20}
!55 = !{!47, !6, i64 72}
!56 = !{!47, !2, i64 104}
!57 = !{!47, !6, i64 112}
!58 = !{!47, !6, i64 116}
!59 = !{!47, !2, i64 120}
!60 = !{!47, !2, i64 128}
!61 = !{!47, !2, i64 136}
!62 = !{!47, !6, i64 88}
!63 = !{!38, !2, i64 1432}
!64 = !{!65, !6, i64 0}
!65 = !{!"gs_fixed_rect_s", !66, i64 0, !66, i64 8}
!66 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!67 = !{!65, !6, i64 4}
!68 = !{!65, !6, i64 8}
!69 = !{!65, !6, i64 12}
!70 = !{!71, !2, i64 0}
!71 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !22, i64 352, !6, i64 360, !72, i64 368, !74, i64 632}
!72 = !{!"gs_client_color_s", !2, i64 0, !73, i64 8}
!73 = !{!"gs_paint_color_s", !3, i64 0}
!74 = !{!"_mask", !75, i64 0, !8, i64 8, !2, i64 16}
!75 = !{!"mp_", !6, i64 0, !6, i64 4}
!76 = !{!77, !2, i64 48}
!77 = !{!"gx_device_color_type_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80}
!78 = !{!47, !6, i64 144}
!79 = !{!47, !2, i64 80}
!80 = !{!81, !6, i64 0}
!81 = !{!"gs_int_rect_s", !22, i64 0, !22, i64 8}
!82 = !{!81, !6, i64 8}
!83 = !{!81, !6, i64 12}
!84 = !{!81, !6, i64 4}
!85 = !{!3, !3, i64 0}
