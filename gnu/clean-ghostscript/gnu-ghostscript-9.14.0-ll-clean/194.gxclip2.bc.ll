; ModuleID = './gxclip2.bc'
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
%struct.gx_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64 }
%struct._devn = type { [64 x i16] }

@gxclip2_dummy = constant i8 0, align 1
@gs_tile_clip_device = internal constant %struct.gx_device_mask_clip_s { i32 20968, %struct.gx_device_procs_s* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* null, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 1, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [2 x float] zeroinitializer, [4 x float] zeroinitializer, i32 0, [2 x float] [float 1.000000e+00, float 1.000000e+00], [2 x float] [float 1.000000e+00, float 1.000000e+00], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @gx_default_open_device, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @gx_forward_get_initial_matrix, i32 (%struct.gx_device_s*)* @gx_default_sync_output, i32 (%struct.gx_device_s*, i32, i32)* @gx_default_output_page, i32 (%struct.gx_device_s*)* @gx_default_close_device, i64 (%struct.gx_device_s*, i16*)* @gx_forward_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_forward_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @tile_clip_fill_rectangle, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* @tile_clip_copy_mono, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* @tile_clip_copy_color, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @gx_default_draw_line, i32 (%struct.gx_device_s*, i32, i8*, i8**)* @gx_forward_get_bits, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_forward_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_forward_put_params, i64 (%struct.gx_device_s*, i16*)* @gx_forward_map_cmyk_color, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_procs, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_device, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* @gx_forward_map_rgb_alpha_color, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_page_device, i32 (%struct.gx_device_s*, i32)* @gx_default_get_alpha_bits, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* @tile_clip_copy_alpha, i32 (%struct.gx_device_s*, i32, i32*)* @gx_forward_get_band, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @gx_default_copy_rop, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_default_fill_path, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_default_stroke_path, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* @gx_default_fill_mask, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_trapezoid, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_parallelogram, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_triangle, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* @gx_default_draw_thin_line, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_image, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* @gx_default_image_data, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* @gx_default_end_image, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_strip_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @tile_clip_strip_copy_rop, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* @gx_forward_get_clipping_box, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_typed_image, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* @gx_forward_get_bits_rectangle, i32 (%struct.gx_device_s*, i64, i16*)* @gx_forward_map_color_rgb_alpha, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* @gx_no_create_compositor, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_forward_get_hardware_params, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* @gx_default_text_begin, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* @gx_default_finish_copydevice, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* @gx_forward_get_color_mapping_procs, i32 (%struct.gx_device_s*, i8*, i32, i32)* @gx_forward_get_color_comp_index, i64 (%struct.gx_device_s*, i16*)* @gx_forward_encode_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_forward_decode_color, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @tile_clip_fill_rectangle_hl_color, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* @gx_forward_include_color_space, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* @gx_forward_fill_linear_color_scanline, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* @gx_forward_fill_linear_color_trapezoid, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* @gx_forward_fill_linear_color_triangle, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_forward_update_spot_equivalent_colors, %struct.gs_devn_params_s* (%struct.gx_device_s*)* @gx_forward_ret_devn_params, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* @gx_forward_fillpage, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* @gx_forward_dev_spec_op, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* @tile_clip_copy_planes, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* @tile_clip_strip_copy_rop2, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* @gx_default_strip_tile_rect_devn, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @tile_clip_copy_alpha_hl_color, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, %struct.gx_device_s* null, %struct.gx_strip_bitmap_s zeroinitializer, %struct.gx_device_memory_s zeroinitializer, %struct.gs_int_point_s zeroinitializer, %union._b zeroinitializer }, align 8
@.str = private unnamed_addr constant [21 x i8] c"tile_clip_free(cdev)\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"tile clipper\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@gx_dc_type_data_pure = external constant %struct.gx_device_color_type_s, align 8
@gx_dc_type_data_devn = external constant %struct.gx_device_color_type_s, align 8

; Function Attrs: nounwind uwtable
define i32 @tile_clip_initialize(%struct.gx_device_mask_clip_s* %cdev, %struct.gx_strip_bitmap_s* %tiles, %struct.gx_device_s* %tdev, i32 %px, i32 %py) #0 {
entry:
  %cdev.addr = alloca %struct.gx_device_mask_clip_s*, align 8
  %tiles.addr = alloca %struct.gx_strip_bitmap_s*, align 8
  %tdev.addr = alloca %struct.gx_device_s*, align 8
  %px.addr = alloca i32, align 4
  %py.addr = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.gx_device_mask_clip_s* %cdev, %struct.gx_device_mask_clip_s** %cdev.addr, align 8, !tbaa !1
  store %struct.gx_strip_bitmap_s* %tiles, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %tdev, %struct.gx_device_s** %tdev.addr, align 8, !tbaa !1
  store i32 %px, i32* %px.addr, align 4, !tbaa !5
  store i32 %py, i32* %py.addr, align 4, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev.addr, align 8, !tbaa !1
  %2 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gx_strip_bitmap_s* %2 to %struct.gx_bitmap_s*
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev.addr, align 8, !tbaa !1
  %call = call i32 @gx_mask_clip_initialize(%struct.gx_device_mask_clip_s* %1, %struct.gx_device_mask_clip_s* @gs_tile_clip_device, %struct.gx_bitmap_s* %3, %struct.gx_device_s* %4, i32 0, i32 0, %struct.gs_memory_s* null) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %5 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp sge i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev.addr, align 8, !tbaa !1
  %tiles1 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %6, i32 0, i32 44
  %7 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gx_strip_bitmap_s* %tiles1 to i8*
  %9 = bitcast %struct.gx_strip_bitmap_s* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 48, i32 8, i1 false), !tbaa.struct !7
  %10 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev.addr, align 8, !tbaa !1
  %11 = load i32, i32* %px.addr, align 4, !tbaa !5
  %12 = load i32, i32* %py.addr, align 4, !tbaa !5
  call void @tile_clip_set_phase(%struct.gx_device_mask_clip_s* %10, i32 %11, i32 %12) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load i32, i32* %code, align 4, !tbaa !5
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  ret i32 %13
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @gx_mask_clip_initialize(%struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s*, %struct.gx_bitmap_s*, %struct.gx_device_s*, i32, i32, %struct.gs_memory_s*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define void @tile_clip_set_phase(%struct.gx_device_mask_clip_s* %cdev, i32 %px, i32 %py) #0 {
entry:
  %cdev.addr = alloca %struct.gx_device_mask_clip_s*, align 8
  %px.addr = alloca i32, align 4
  %py.addr = alloca i32, align 4
  store %struct.gx_device_mask_clip_s* %cdev, %struct.gx_device_mask_clip_s** %cdev.addr, align 8, !tbaa !1
  store i32 %px, i32* %px.addr, align 4, !tbaa !5
  store i32 %py, i32* %py.addr, align 4, !tbaa !5
  %0 = load i32, i32* %px.addr, align 4, !tbaa !5
  %1 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev.addr, align 8, !tbaa !1
  %phase = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %1, i32 0, i32 46
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 0
  store i32 %0, i32* %x, align 4, !tbaa !12
  %2 = load i32, i32* %py.addr, align 4, !tbaa !5
  %3 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev.addr, align 8, !tbaa !1
  %phase1 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %3, i32 0, i32 46
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase1, i32 0, i32 1
  store i32 %2, i32* %y, align 4, !tbaa !35
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @tile_clip_free(%struct.gx_device_mask_clip_s* %cdev) #0 {
entry:
  %cdev.addr = alloca %struct.gx_device_mask_clip_s*, align 8
  store %struct.gx_device_mask_clip_s* %cdev, %struct.gx_device_mask_clip_s** %cdev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev.addr, align 8, !tbaa !1
  %finalize = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %0, i32 0, i32 6
  %1 = load void (%struct.gx_device_s*)*, void (%struct.gx_device_s*)** %finalize, align 8, !tbaa !36
  %tobool = icmp ne void (%struct.gx_device_s*)* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev.addr, align 8, !tbaa !1
  %finalize1 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %2, i32 0, i32 6
  %3 = load void (%struct.gx_device_s*)*, void (%struct.gx_device_s*)** %finalize1, align 8, !tbaa !36
  %4 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_mask_clip_s* %4 to %struct.gx_device_s*
  call void %3(%struct.gx_device_s* %5) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %6, i32 0, i32 3
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !37
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %8 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !38
  %9 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev.addr, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %9, i32 0, i32 3
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory2, align 8, !tbaa !37
  %11 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev.addr, align 8, !tbaa !1
  %12 = bitcast %struct.gx_device_mask_clip_s* %11 to i8*
  call void %8(%struct.gs_memory_s* %10, i8* %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0)) #4
  ret void
}

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #2

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #2

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #2

declare i32 @gx_default_open_device(%struct.gx_device_s*) #2

declare void @gx_forward_get_initial_matrix(%struct.gx_device_s*, %struct.gs_matrix_s*) #2

declare i32 @gx_default_sync_output(%struct.gx_device_s*) #2

declare i32 @gx_default_output_page(%struct.gx_device_s*, i32, i32) #2

declare i32 @gx_default_close_device(%struct.gx_device_s*) #2

declare i64 @gx_forward_map_rgb_color(%struct.gx_device_s*, i16*) #2

declare i32 @gx_forward_map_color_rgb(%struct.gx_device_s*, i64, i16*) #2

; Function Attrs: nounwind uwtable
define internal i32 @tile_clip_fill_rectangle(%struct.gx_device_s* %dev, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  %cdev = alloca %struct.gx_device_mask_clip_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store i64 %color, i64* %color.addr, align 8, !tbaa !8
  %0 = bitcast %struct.gx_device_mask_clip_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_mask_clip_s*
  store %struct.gx_device_mask_clip_s* %2, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !41
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 42
  %strip_tile_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 34
  %7 = load i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)** %strip_tile_rectangle, align 8, !tbaa !42
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %9 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %9, i32 0, i32 44
  %10 = load i32, i32* %x.addr, align 4, !tbaa !5
  %11 = load i32, i32* %y.addr, align 4, !tbaa !5
  %12 = load i32, i32* %w.addr, align 4, !tbaa !5
  %13 = load i32, i32* %h.addr, align 4, !tbaa !5
  %14 = load i64, i64* %color.addr, align 8, !tbaa !8
  %15 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %phase = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %15, i32 0, i32 46
  %x1 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 0
  %16 = load i32, i32* %x1, align 4, !tbaa !12
  %17 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %phase2 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %17, i32 0, i32 46
  %y3 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase2, i32 0, i32 1
  %18 = load i32, i32* %y3, align 4, !tbaa !35
  %call = call i32 %7(%struct.gx_device_s* %8, %struct.gx_strip_bitmap_s* %tiles, i32 %10, i32 %11, i32 %12, i32 %13, i64 -1, i64 %14, i32 %16, i32 %18) #4
  %19 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %20 = bitcast %struct.gx_device_mask_clip_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  ret i32 %call
}

declare i32 @gx_default_tile_rectangle(%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @tile_clip_copy_mono(%struct.gx_device_s* %dev, i8* %data, i32 %sourcex, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color0, i64 %color1) #0 {
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
  %color = alloca i64, align 8
  %mcolor0 = alloca i64, align 8
  %mcolor1 = alloca i64, align 8
  %ty = alloca i32, align 4
  %ny = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %tx = alloca i32, align 4
  %nx = alloca i32, align 4
  %cy = alloca i32, align 4
  %xoff = alloca i32, align 4
  %cx = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !8
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store i64 %color0, i64* %color0.addr, align 8, !tbaa !8
  store i64 %color1, i64* %color1.addr, align 8, !tbaa !8
  %0 = bitcast %struct.gx_device_mask_clip_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_mask_clip_s*
  store %struct.gx_device_mask_clip_s* %2, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %3 = bitcast i64* %color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i64* %mcolor0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i64* %mcolor1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %ty to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %ny to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  br label %do.body

do.body:                                          ; preds = %entry
  %9 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %mdev = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %9, i32 0, i32 45
  %base = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev, i32 0, i32 45
  %10 = load i8*, i8** %base, align 8, !tbaa !44
  %cmp = icmp eq i8* %10, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %12 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %13 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %14 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %15 = load i64, i64* %id.addr, align 8, !tbaa !8
  %16 = load i32, i32* %x.addr, align 4, !tbaa !5
  %17 = load i32, i32* %y.addr, align 4, !tbaa !5
  %18 = load i32, i32* %w.addr, align 4, !tbaa !5
  %19 = load i32, i32* %h.addr, align 4, !tbaa !5
  %20 = load i64, i64* %color0.addr, align 8, !tbaa !8
  %21 = load i64, i64* %color1.addr, align 8, !tbaa !8
  %call = call i32 @gx_default_copy_mono(%struct.gx_device_s* %11, i8* %12, i32 %13, i32 %14, i64 %15, i32 %16, i32 %17, i32 %18, i32 %19, i64 %20, i64 %21) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.118

if.end:                                           ; preds = %do.body
  %22 = load i64, i64* %color1.addr, align 8, !tbaa !8
  %cmp1 = icmp ne i64 %22, -1
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %23 = load i64, i64* %color0.addr, align 8, !tbaa !8
  %cmp3 = icmp ne i64 %23, -1
  br i1 %cmp3, label %if.then.4, label %if.end.9

if.then.4:                                        ; preds = %if.then.2
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %24, i32 0, i32 42
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 7
  %25 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8, !tbaa !45
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %27 = load i32, i32* %x.addr, align 4, !tbaa !5
  %28 = load i32, i32* %y.addr, align 4, !tbaa !5
  %29 = load i32, i32* %w.addr, align 4, !tbaa !5
  %30 = load i32, i32* %h.addr, align 4, !tbaa !5
  %31 = load i64, i64* %color0.addr, align 8, !tbaa !8
  %call5 = call i32 %25(%struct.gx_device_s* %26, i32 %27, i32 %28, i32 %29, i32 %30, i64 %31) #4
  store i32 %call5, i32* %code, align 4, !tbaa !5
  %32 = load i32, i32* %code, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %32, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.4
  %33 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.118

if.end.8:                                         ; preds = %if.then.4
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.then.2
  %34 = load i64, i64* %color1.addr, align 8, !tbaa !8
  store i64 %34, i64* %color, align 8, !tbaa !8
  store i64 0, i64* %mcolor0, align 8, !tbaa !8
  store i64 -1, i64* %mcolor1, align 8, !tbaa !8
  br label %if.end.14

if.else:                                          ; preds = %if.end
  %35 = load i64, i64* %color0.addr, align 8, !tbaa !8
  %cmp10 = icmp ne i64 %35, -1
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.else
  %36 = load i64, i64* %color0.addr, align 8, !tbaa !8
  store i64 %36, i64* %color, align 8, !tbaa !8
  store i64 -1, i64* %mcolor0, align 8, !tbaa !8
  store i64 0, i64* %mcolor1, align 8, !tbaa !8
  br label %if.end.13

if.else.12:                                       ; preds = %if.else
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.118

if.end.13:                                        ; preds = %if.then.11
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.end.9
  br label %do.cond

do.cond:                                          ; preds = %if.end.14
  br label %do.end

do.end:                                           ; preds = %do.cond
  %37 = load i32, i32* %y.addr, align 4, !tbaa !5
  store i32 %37, i32* %ty, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.115, %do.end
  %38 = load i32, i32* %ty, align 4, !tbaa !5
  %39 = load i32, i32* %y.addr, align 4, !tbaa !5
  %40 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add = add nsw i32 %39, %40
  %cmp15 = icmp slt i32 %38, %add
  br i1 %cmp15, label %for.body, label %for.end.117

for.body:                                         ; preds = %for.cond
  %41 = bitcast i32* %tx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #1
  %42 = bitcast i32* %nx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #1
  %43 = bitcast i32* %cy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #1
  %44 = load i32, i32* %ty, align 4, !tbaa !5
  %45 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %phase = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %45, i32 0, i32 46
  %y16 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 1
  %46 = load i32, i32* %y16, align 4, !tbaa !35
  %add17 = add nsw i32 %44, %46
  %47 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %47, i32 0, i32 44
  %rep_height = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles, i32 0, i32 5
  %48 = load i16, i16* %rep_height, align 2, !tbaa !46
  %conv = zext i16 %48 to i32
  %rem = srem i32 %add17, %conv
  store i32 %rem, i32* %cy, align 4, !tbaa !5
  %49 = bitcast i32* %xoff to i8*
  call void @llvm.lifetime.start(i64 4, i8* %49) #1
  %50 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %phase18 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %50, i32 0, i32 46
  %x19 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase18, i32 0, i32 0
  %51 = load i32, i32* %x19, align 4, !tbaa !12
  %52 = load i32, i32* %ty, align 4, !tbaa !5
  %53 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %phase20 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %53, i32 0, i32 46
  %y21 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase20, i32 0, i32 1
  %54 = load i32, i32* %y21, align 4, !tbaa !35
  %add22 = add nsw i32 %52, %54
  %55 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles23 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %55, i32 0, i32 44
  %rep_height24 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles23, i32 0, i32 5
  %56 = load i16, i16* %rep_height24, align 2, !tbaa !46
  %conv25 = zext i16 %56 to i32
  %div = sdiv i32 %add22, %conv25
  %57 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles26 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %57, i32 0, i32 44
  %rep_shift = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles26, i32 0, i32 6
  %58 = load i16, i16* %rep_shift, align 2, !tbaa !47
  %conv27 = zext i16 %58 to i32
  %mul = mul nsw i32 %div, %conv27
  %add28 = add nsw i32 %51, %mul
  store i32 %add28, i32* %xoff, align 4, !tbaa !5
  %59 = load i32, i32* %y.addr, align 4, !tbaa !5
  %60 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add29 = add nsw i32 %59, %60
  %61 = load i32, i32* %ty, align 4, !tbaa !5
  %sub = sub nsw i32 %add29, %61
  %62 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles30 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %62, i32 0, i32 44
  %size = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles30, i32 0, i32 2
  %y31 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size, i32 0, i32 1
  %63 = load i32, i32* %y31, align 4, !tbaa !48
  %64 = load i32, i32* %cy, align 4, !tbaa !5
  %sub32 = sub nsw i32 %63, %64
  %cmp33 = icmp slt i32 %sub, %sub32
  br i1 %cmp33, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %65 = load i32, i32* %y.addr, align 4, !tbaa !5
  %66 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add35 = add nsw i32 %65, %66
  %67 = load i32, i32* %ty, align 4, !tbaa !5
  %sub36 = sub nsw i32 %add35, %67
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %68 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles37 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %68, i32 0, i32 44
  %size38 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles37, i32 0, i32 2
  %y39 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size38, i32 0, i32 1
  %69 = load i32, i32* %y39, align 4, !tbaa !48
  %70 = load i32, i32* %cy, align 4, !tbaa !5
  %sub40 = sub nsw i32 %69, %70
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub36, %cond.true ], [ %sub40, %cond.false ]
  store i32 %cond, i32* %ny, align 4, !tbaa !5
  %71 = load i32, i32* %ny, align 4, !tbaa !5
  %72 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %mdev41 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %72, i32 0, i32 45
  %height = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev41, i32 0, i32 14
  %73 = load i32, i32* %height, align 4, !tbaa !49
  %cmp42 = icmp sgt i32 %71, %73
  br i1 %cmp42, label %if.then.44, label %if.end.47

if.then.44:                                       ; preds = %cond.end
  %74 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %mdev45 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %74, i32 0, i32 45
  %height46 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev45, i32 0, i32 14
  %75 = load i32, i32* %height46, align 4, !tbaa !49
  store i32 %75, i32* %ny, align 4, !tbaa !5
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.44, %cond.end
  %76 = load i32, i32* %x.addr, align 4, !tbaa !5
  store i32 %76, i32* %tx, align 4, !tbaa !5
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc, %if.end.47
  %77 = load i32, i32* %tx, align 4, !tbaa !5
  %78 = load i32, i32* %x.addr, align 4, !tbaa !5
  %79 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add49 = add nsw i32 %78, %79
  %cmp50 = icmp slt i32 %77, %add49
  br i1 %cmp50, label %for.body.52, label %for.end

for.body.52:                                      ; preds = %for.cond.48
  %80 = bitcast i32* %cx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %80) #1
  %81 = load i32, i32* %tx, align 4, !tbaa !5
  %82 = load i32, i32* %xoff, align 4, !tbaa !5
  %add53 = add nsw i32 %81, %82
  %83 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles54 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %83, i32 0, i32 44
  %rep_width = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles54, i32 0, i32 4
  %84 = load i16, i16* %rep_width, align 2, !tbaa !50
  %conv55 = zext i16 %84 to i32
  %rem56 = srem i32 %add53, %conv55
  store i32 %rem56, i32* %cx, align 4, !tbaa !5
  %85 = load i32, i32* %x.addr, align 4, !tbaa !5
  %86 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add57 = add nsw i32 %85, %86
  %87 = load i32, i32* %tx, align 4, !tbaa !5
  %sub58 = sub nsw i32 %add57, %87
  %88 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles59 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %88, i32 0, i32 44
  %size60 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles59, i32 0, i32 2
  %x61 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size60, i32 0, i32 0
  %89 = load i32, i32* %x61, align 4, !tbaa !51
  %90 = load i32, i32* %cx, align 4, !tbaa !5
  %sub62 = sub nsw i32 %89, %90
  %cmp63 = icmp slt i32 %sub58, %sub62
  br i1 %cmp63, label %cond.true.65, label %cond.false.68

cond.true.65:                                     ; preds = %for.body.52
  %91 = load i32, i32* %x.addr, align 4, !tbaa !5
  %92 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add66 = add nsw i32 %91, %92
  %93 = load i32, i32* %tx, align 4, !tbaa !5
  %sub67 = sub nsw i32 %add66, %93
  br label %cond.end.73

cond.false.68:                                    ; preds = %for.body.52
  %94 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles69 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %94, i32 0, i32 44
  %size70 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles69, i32 0, i32 2
  %x71 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size70, i32 0, i32 0
  %95 = load i32, i32* %x71, align 4, !tbaa !51
  %96 = load i32, i32* %cx, align 4, !tbaa !5
  %sub72 = sub nsw i32 %95, %96
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.false.68, %cond.true.65
  %cond74 = phi i32 [ %sub67, %cond.true.65 ], [ %sub72, %cond.false.68 ]
  store i32 %cond74, i32* %nx, align 4, !tbaa !5
  %97 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %97, i32 0, i32 47
  %bytes = bitcast %union._b* %buffer to [16384 x i8]*
  %arraydecay = getelementptr inbounds [16384 x i8], [16384 x i8]* %bytes, i32 0, i32 0
  %98 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles75 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %98, i32 0, i32 44
  %data76 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles75, i32 0, i32 0
  %99 = load i8*, i8** %data76, align 8, !tbaa !52
  %100 = load i32, i32* %cy, align 4, !tbaa !5
  %101 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles77 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %101, i32 0, i32 44
  %raster78 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles77, i32 0, i32 1
  %102 = load i32, i32* %raster78, align 4, !tbaa !53
  %mul79 = mul nsw i32 %100, %102
  %idx.ext = sext i32 %mul79 to i64
  %add.ptr = getelementptr inbounds i8, i8* %99, i64 %idx.ext
  %103 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles80 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %103, i32 0, i32 44
  %raster81 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles80, i32 0, i32 1
  %104 = load i32, i32* %raster81, align 4, !tbaa !53
  %105 = load i32, i32* %ny, align 4, !tbaa !5
  %mul82 = mul nsw i32 %104, %105
  %conv83 = sext i32 %mul82 to i64
  %call84 = call i8* @memcpy(i8* %arraydecay, i8* %add.ptr, i64 %conv83) #5
  %106 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %mdev85 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %106, i32 0, i32 45
  %procs86 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev85, i32 0, i32 42
  %copy_mono = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs86, i32 0, i32 9
  %107 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono, align 8, !tbaa !54
  %108 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %mdev87 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %108, i32 0, i32 45
  %109 = bitcast %struct.gx_device_memory_s* %mdev87 to %struct.gx_device_s*
  %110 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %111 = load i32, i32* %ty, align 4, !tbaa !5
  %112 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub88 = sub nsw i32 %111, %112
  %113 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %mul89 = mul nsw i32 %sub88, %113
  %idx.ext90 = sext i32 %mul89 to i64
  %add.ptr91 = getelementptr inbounds i8, i8* %110, i64 %idx.ext90
  %114 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %115 = load i32, i32* %tx, align 4, !tbaa !5
  %add92 = add nsw i32 %114, %115
  %116 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub93 = sub nsw i32 %add92, %116
  %117 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %118 = load i32, i32* %cx, align 4, !tbaa !5
  %119 = load i32, i32* %nx, align 4, !tbaa !5
  %120 = load i32, i32* %ny, align 4, !tbaa !5
  %121 = load i64, i64* %mcolor0, align 8, !tbaa !8
  %122 = load i64, i64* %mcolor1, align 8, !tbaa !8
  %call94 = call i32 %107(%struct.gx_device_s* %109, i8* %add.ptr91, i32 %sub93, i32 %117, i64 0, i32 %118, i32 0, i32 %119, i32 %120, i64 %121, i64 %122) #4
  %123 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %123, i32 0, i32 43
  %124 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !41
  %procs95 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %124, i32 0, i32 42
  %copy_mono96 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs95, i32 0, i32 9
  %125 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono96, align 8, !tbaa !55
  %126 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %target97 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %126, i32 0, i32 43
  %127 = load %struct.gx_device_s*, %struct.gx_device_s** %target97, align 8, !tbaa !41
  %128 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %buffer98 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %128, i32 0, i32 47
  %bytes99 = bitcast %union._b* %buffer98 to [16384 x i8]*
  %arraydecay100 = getelementptr inbounds [16384 x i8], [16384 x i8]* %bytes99, i32 0, i32 0
  %129 = load i32, i32* %cx, align 4, !tbaa !5
  %130 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles101 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %130, i32 0, i32 44
  %raster102 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles101, i32 0, i32 1
  %131 = load i32, i32* %raster102, align 4, !tbaa !53
  %132 = load i32, i32* %tx, align 4, !tbaa !5
  %133 = load i32, i32* %ty, align 4, !tbaa !5
  %134 = load i32, i32* %nx, align 4, !tbaa !5
  %135 = load i32, i32* %ny, align 4, !tbaa !5
  %136 = load i64, i64* %color, align 8, !tbaa !8
  %call103 = call i32 %125(%struct.gx_device_s* %127, i8* %arraydecay100, i32 %129, i32 %131, i64 0, i32 %132, i32 %133, i32 %134, i32 %135, i64 -1, i64 %136) #4
  store i32 %call103, i32* %code, align 4, !tbaa !5
  %137 = load i32, i32* %code, align 4, !tbaa !5
  %cmp104 = icmp slt i32 %137, 0
  br i1 %cmp104, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %cond.end.73
  %138 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %138, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.107:                                       ; preds = %cond.end.73
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.107, %if.then.106
  %139 = bitcast i32* %cx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %139) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.109 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %140 = load i32, i32* %nx, align 4, !tbaa !5
  %141 = load i32, i32* %tx, align 4, !tbaa !5
  %add108 = add nsw i32 %141, %140
  store i32 %add108, i32* %tx, align 4, !tbaa !5
  br label %for.cond.48

for.end:                                          ; preds = %for.cond.48
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.109

cleanup.109:                                      ; preds = %for.end, %cleanup
  %142 = bitcast i32* %xoff to i8*
  call void @llvm.lifetime.end(i64 4, i8* %142) #1
  %143 = bitcast i32* %cy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #1
  %144 = bitcast i32* %nx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #1
  %145 = bitcast i32* %tx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #1
  %cleanup.dest.113 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.113, label %cleanup.118 [
    i32 0, label %cleanup.cont.114
  ]

cleanup.cont.114:                                 ; preds = %cleanup.109
  br label %for.inc.115

for.inc.115:                                      ; preds = %cleanup.cont.114
  %146 = load i32, i32* %ny, align 4, !tbaa !5
  %147 = load i32, i32* %ty, align 4, !tbaa !5
  %add116 = add nsw i32 %147, %146
  store i32 %add116, i32* %ty, align 4, !tbaa !5
  br label %for.cond

for.end.117:                                      ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.118

cleanup.118:                                      ; preds = %for.end.117, %cleanup.109, %if.else.12, %if.then.7, %if.then
  %148 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %148) #1
  %149 = bitcast i32* %ny to i8*
  call void @llvm.lifetime.end(i64 4, i8* %149) #1
  %150 = bitcast i32* %ty to i8*
  call void @llvm.lifetime.end(i64 4, i8* %150) #1
  %151 = bitcast i64* %mcolor1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %151) #1
  %152 = bitcast i64* %mcolor0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %152) #1
  %153 = bitcast i64* %color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %153) #1
  %154 = bitcast %struct.gx_device_mask_clip_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %154) #1
  %155 = load i32, i32* %retval
  ret i32 %155
}

; Function Attrs: nounwind uwtable
define internal i32 @tile_clip_copy_color(%struct.gx_device_s* %dev, i8* %data, i32 %sourcex, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h) #0 {
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
  %cdev = alloca %struct.gx_device_mask_clip_s*, align 8
  %cleanup.dest.slot = alloca i32
  %data_row = alloca i8*, align 8
  %cy = alloca i32, align 4
  %tile_row = alloca i8*, align 8
  %ty = alloca i32, align 4
  %cx = alloca i32, align 4
  %tp = alloca i8*, align 8
  %tbit = alloca i8, align 1
  %tx = alloca i32, align 4
  %txrun = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !8
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_mask_clip_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_mask_clip_s*
  store %struct.gx_device_mask_clip_s* %2, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %3 = load i32, i32* %x.addr, align 4, !tbaa !5
  %4 = load i32, i32* %y.addr, align 4, !tbaa !5
  %or = or i32 %3, %4
  %cmp = icmp slt i32 %or, 0
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %do.body.1
  %5 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %5, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %6 = load i32, i32* %x.addr, align 4, !tbaa !5
  %7 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add = add nsw i32 %7, %6
  store i32 %add, i32* %w.addr, align 4, !tbaa !5
  %8 = load i32, i32* %x.addr, align 4, !tbaa !5
  %9 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %9, %8
  store i32 %sub, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 0, i32* %x.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %10 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %10, 0
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %11 = load i32, i32* %y.addr, align 4, !tbaa !5
  %12 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add6 = add nsw i32 %12, %11
  store i32 %add6, i32* %h.addr, align 4, !tbaa !5
  %13 = load i32, i32* %y.addr, align 4, !tbaa !5
  %14 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %13, %14
  %15 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %mul to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 %idx.neg
  store i8* %add.ptr, i8** %data.addr, align 8, !tbaa !1
  store i64 0, i64* %id.addr, align 8, !tbaa !8
  store i32 0, i32* %y.addr, align 4, !tbaa !5
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %do.body.1
  %16 = load i32, i32* %w.addr, align 4, !tbaa !5
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 13
  %18 = load i32, i32* %width, align 4, !tbaa !56
  %19 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub9 = sub nsw i32 %18, %19
  %cmp10 = icmp sgt i32 %16, %sub9
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.8
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width12 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 13
  %21 = load i32, i32* %width12, align 4, !tbaa !56
  %22 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub13 = sub nsw i32 %21, %22
  store i32 %sub13, i32* %w.addr, align 4, !tbaa !5
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.end.8
  br label %do.cond

do.cond:                                          ; preds = %if.end.14
  br label %do.end

do.end:                                           ; preds = %do.cond
  %23 = load i32, i32* %h.addr, align 4, !tbaa !5
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %24, i32 0, i32 14
  %25 = load i32, i32* %height, align 4, !tbaa !57
  %26 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub15 = sub nsw i32 %25, %26
  %cmp16 = icmp sgt i32 %23, %sub15
  br i1 %cmp16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %do.end
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %27, i32 0, i32 14
  %28 = load i32, i32* %height18, align 4, !tbaa !57
  %29 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub19 = sub nsw i32 %28, %29
  store i32 %sub19, i32* %h.addr, align 4, !tbaa !5
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %do.end
  %30 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp21 = icmp sle i32 %30, 0
  br i1 %cmp21, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.20
  %31 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp22 = icmp sle i32 %31, 0
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %lor.lhs.false, %if.end.20
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.175

if.end.24:                                        ; preds = %lor.lhs.false
  br label %do.cond.25

do.cond.25:                                       ; preds = %if.end.24
  br label %do.end.26

do.end.26:                                        ; preds = %do.cond.25
  %32 = bitcast i8** %data_row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #1
  %33 = load i8*, i8** %data.addr, align 8, !tbaa !1
  store i8* %33, i8** %data_row, align 8, !tbaa !1
  %34 = bitcast i32* %cy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  %35 = load i32, i32* %y.addr, align 4, !tbaa !5
  %36 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %phase = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %36, i32 0, i32 46
  %y27 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 1
  %37 = load i32, i32* %y27, align 4, !tbaa !35
  %add28 = add nsw i32 %35, %37
  %38 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %38, i32 0, i32 44
  %rep_height = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles, i32 0, i32 5
  %39 = load i16, i16* %rep_height, align 2, !tbaa !46
  %conv = zext i16 %39 to i32
  %rem = srem i32 %add28, %conv
  store i32 %rem, i32* %cy, align 4, !tbaa !5
  %40 = bitcast i8** %tile_row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #1
  %41 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles29 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %41, i32 0, i32 44
  %data30 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles29, i32 0, i32 0
  %42 = load i8*, i8** %data30, align 8, !tbaa !52
  %43 = load i32, i32* %cy, align 4, !tbaa !5
  %44 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles31 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %44, i32 0, i32 44
  %raster32 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles31, i32 0, i32 1
  %45 = load i32, i32* %raster32, align 4, !tbaa !53
  %mul33 = mul nsw i32 %43, %45
  %idx.ext34 = sext i32 %mul33 to i64
  %add.ptr35 = getelementptr inbounds i8, i8* %42, i64 %idx.ext34
  store i8* %add.ptr35, i8** %tile_row, align 8, !tbaa !1
  %46 = bitcast i32* %ty to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #1
  %47 = load i32, i32* %y.addr, align 4, !tbaa !5
  store i32 %47, i32* %ty, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.26
  %48 = load i32, i32* %ty, align 4, !tbaa !5
  %49 = load i32, i32* %y.addr, align 4, !tbaa !5
  %50 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add36 = add nsw i32 %49, %50
  %cmp37 = icmp slt i32 %48, %add36
  br i1 %cmp37, label %for.body, label %for.end.168

for.body:                                         ; preds = %for.cond
  %51 = bitcast i32* %cx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #1
  %52 = load i32, i32* %x.addr, align 4, !tbaa !5
  %53 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %phase39 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %53, i32 0, i32 46
  %x40 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase39, i32 0, i32 0
  %54 = load i32, i32* %x40, align 4, !tbaa !12
  %55 = load i32, i32* %ty, align 4, !tbaa !5
  %56 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %phase41 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %56, i32 0, i32 46
  %y42 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase41, i32 0, i32 1
  %57 = load i32, i32* %y42, align 4, !tbaa !35
  %add43 = add nsw i32 %55, %57
  %58 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles44 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %58, i32 0, i32 44
  %rep_height45 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles44, i32 0, i32 5
  %59 = load i16, i16* %rep_height45, align 2, !tbaa !46
  %conv46 = zext i16 %59 to i32
  %div = sdiv i32 %add43, %conv46
  %60 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles47 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %60, i32 0, i32 44
  %rep_shift = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles47, i32 0, i32 6
  %61 = load i16, i16* %rep_shift, align 2, !tbaa !47
  %conv48 = zext i16 %61 to i32
  %mul49 = mul nsw i32 %div, %conv48
  %add50 = add nsw i32 %54, %mul49
  %add51 = add nsw i32 %52, %add50
  %62 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles52 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %62, i32 0, i32 44
  %rep_width = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles52, i32 0, i32 4
  %63 = load i16, i16* %rep_width, align 2, !tbaa !50
  %conv53 = zext i16 %63 to i32
  %rem54 = srem i32 %add51, %conv53
  store i32 %rem54, i32* %cx, align 4, !tbaa !5
  %64 = bitcast i8** %tp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %64) #1
  %65 = load i8*, i8** %tile_row, align 8, !tbaa !1
  %66 = load i32, i32* %cx, align 4, !tbaa !5
  %shr = ashr i32 %66, 3
  %idx.ext55 = sext i32 %shr to i64
  %add.ptr56 = getelementptr inbounds i8, i8* %65, i64 %idx.ext55
  store i8* %add.ptr56, i8** %tp, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %tbit) #1
  %67 = load i32, i32* %cx, align 4, !tbaa !5
  %and = and i32 %67, 7
  %shr57 = ashr i32 128, %and
  %conv58 = trunc i32 %shr57 to i8
  store i8 %conv58, i8* %tbit, align 1, !tbaa !58
  %68 = bitcast i32* %tx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %68) #1
  %69 = load i32, i32* %x.addr, align 4, !tbaa !5
  store i32 %69, i32* %tx, align 4, !tbaa !5
  br label %for.cond.59

for.cond.59:                                      ; preds = %cleanup.cont.143, %for.body
  %70 = load i32, i32* %tx, align 4, !tbaa !5
  %71 = load i32, i32* %x.addr, align 4, !tbaa !5
  %72 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add60 = add nsw i32 %71, %72
  %cmp61 = icmp slt i32 %70, %add60
  br i1 %cmp61, label %for.body.63, label %for.end

for.body.63:                                      ; preds = %for.cond.59
  %73 = bitcast i32* %txrun to i8*
  call void @llvm.lifetime.start(i64 4, i8* %73) #1
  br label %while.cond

while.cond:                                       ; preds = %do.end.89, %for.body.63
  %74 = load i32, i32* %tx, align 4, !tbaa !5
  %75 = load i32, i32* %x.addr, align 4, !tbaa !5
  %76 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add64 = add nsw i32 %75, %76
  %cmp65 = icmp slt i32 %74, %add64
  br i1 %cmp65, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %77 = load i8*, i8** %tp, align 8, !tbaa !1
  %78 = load i8, i8* %77, align 1, !tbaa !58
  %conv67 = zext i8 %78 to i32
  %79 = load i8, i8* %tbit, align 1, !tbaa !58
  %conv68 = zext i8 %79 to i32
  %and69 = and i32 %conv67, %conv68
  %cmp70 = icmp eq i32 %and69, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %80 = phi i1 [ false, %while.cond ], [ %cmp70, %land.rhs ]
  br i1 %80, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %do.body.72

do.body.72:                                       ; preds = %while.body
  %81 = load i32, i32* %cx, align 4, !tbaa !5
  %inc = add nsw i32 %81, 1
  store i32 %inc, i32* %cx, align 4, !tbaa !5
  %82 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles73 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %82, i32 0, i32 44
  %size = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles73, i32 0, i32 2
  %x74 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size, i32 0, i32 0
  %83 = load i32, i32* %x74, align 4, !tbaa !51
  %cmp75 = icmp eq i32 %inc, %83
  br i1 %cmp75, label %if.then.77, label %if.else

if.then.77:                                       ; preds = %do.body.72
  store i32 0, i32* %cx, align 4, !tbaa !5
  %84 = load i8*, i8** %tile_row, align 8, !tbaa !1
  store i8* %84, i8** %tp, align 8, !tbaa !1
  store i8 -128, i8* %tbit, align 1, !tbaa !58
  br label %if.end.86

if.else:                                          ; preds = %do.body.72
  %85 = load i8, i8* %tbit, align 1, !tbaa !58
  %conv78 = zext i8 %85 to i32
  %shr79 = ashr i32 %conv78, 1
  %conv80 = trunc i32 %shr79 to i8
  store i8 %conv80, i8* %tbit, align 1, !tbaa !58
  %conv81 = zext i8 %conv80 to i32
  %cmp82 = icmp eq i32 %conv81, 0
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.else
  %86 = load i8*, i8** %tp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %incdec.ptr, i8** %tp, align 8, !tbaa !1
  store i8 -128, i8* %tbit, align 1, !tbaa !58
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.84, %if.else
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.then.77
  %87 = load i32, i32* %tx, align 4, !tbaa !5
  %inc87 = add nsw i32 %87, 1
  store i32 %inc87, i32* %tx, align 4, !tbaa !5
  br label %do.cond.88

do.cond.88:                                       ; preds = %if.end.86
  br label %do.end.89

do.end.89:                                        ; preds = %do.cond.88
  br label %while.cond

while.end:                                        ; preds = %land.end
  %88 = load i32, i32* %tx, align 4, !tbaa !5
  %89 = load i32, i32* %x.addr, align 4, !tbaa !5
  %90 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add90 = add nsw i32 %89, %90
  %cmp91 = icmp eq i32 %88, %add90
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %while.end
  store i32 9, i32* %cleanup.dest.slot
  br label %cleanup.141

if.end.94:                                        ; preds = %while.end
  %91 = load i32, i32* %tx, align 4, !tbaa !5
  store i32 %91, i32* %txrun, align 4, !tbaa !5
  br label %do.body.95

do.body.95:                                       ; preds = %land.end.128, %if.end.94
  br label %do.body.96

do.body.96:                                       ; preds = %do.body.95
  %92 = load i32, i32* %cx, align 4, !tbaa !5
  %inc97 = add nsw i32 %92, 1
  store i32 %inc97, i32* %cx, align 4, !tbaa !5
  %93 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles98 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %93, i32 0, i32 44
  %size99 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles98, i32 0, i32 2
  %x100 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size99, i32 0, i32 0
  %94 = load i32, i32* %x100, align 4, !tbaa !51
  %cmp101 = icmp eq i32 %inc97, %94
  br i1 %cmp101, label %if.then.103, label %if.else.104

if.then.103:                                      ; preds = %do.body.96
  store i32 0, i32* %cx, align 4, !tbaa !5
  %95 = load i8*, i8** %tile_row, align 8, !tbaa !1
  store i8* %95, i8** %tp, align 8, !tbaa !1
  store i8 -128, i8* %tbit, align 1, !tbaa !58
  br label %if.end.114

if.else.104:                                      ; preds = %do.body.96
  %96 = load i8, i8* %tbit, align 1, !tbaa !58
  %conv105 = zext i8 %96 to i32
  %shr106 = ashr i32 %conv105, 1
  %conv107 = trunc i32 %shr106 to i8
  store i8 %conv107, i8* %tbit, align 1, !tbaa !58
  %conv108 = zext i8 %conv107 to i32
  %cmp109 = icmp eq i32 %conv108, 0
  br i1 %cmp109, label %if.then.111, label %if.end.113

if.then.111:                                      ; preds = %if.else.104
  %97 = load i8*, i8** %tp, align 8, !tbaa !1
  %incdec.ptr112 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %incdec.ptr112, i8** %tp, align 8, !tbaa !1
  store i8 -128, i8* %tbit, align 1, !tbaa !58
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.111, %if.else.104
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %if.then.103
  %98 = load i32, i32* %tx, align 4, !tbaa !5
  %inc115 = add nsw i32 %98, 1
  store i32 %inc115, i32* %tx, align 4, !tbaa !5
  br label %do.cond.116

do.cond.116:                                      ; preds = %if.end.114
  br label %do.end.117

do.end.117:                                       ; preds = %do.cond.116
  br label %do.cond.118

do.cond.118:                                      ; preds = %do.end.117
  %99 = load i32, i32* %tx, align 4, !tbaa !5
  %100 = load i32, i32* %x.addr, align 4, !tbaa !5
  %101 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add119 = add nsw i32 %100, %101
  %cmp120 = icmp slt i32 %99, %add119
  br i1 %cmp120, label %land.rhs.122, label %land.end.128

land.rhs.122:                                     ; preds = %do.cond.118
  %102 = load i8*, i8** %tp, align 8, !tbaa !1
  %103 = load i8, i8* %102, align 1, !tbaa !58
  %conv123 = zext i8 %103 to i32
  %104 = load i8, i8* %tbit, align 1, !tbaa !58
  %conv124 = zext i8 %104 to i32
  %and125 = and i32 %conv123, %conv124
  %cmp126 = icmp ne i32 %and125, 0
  br label %land.end.128

land.end.128:                                     ; preds = %land.rhs.122, %do.cond.118
  %105 = phi i1 [ false, %do.cond.118 ], [ %cmp126, %land.rhs.122 ]
  br i1 %105, label %do.body.95, label %do.end.129

do.end.129:                                       ; preds = %land.end.128
  br label %do.body.130

do.body.130:                                      ; preds = %do.end.129
  br label %do.cond.131

do.cond.131:                                      ; preds = %do.body.130
  br label %do.end.132

do.end.132:                                       ; preds = %do.cond.131
  %106 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %106) #1
  %107 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %107, i32 0, i32 43
  %108 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !41
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %108, i32 0, i32 42
  %copy_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 10
  %109 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %copy_color, align 8, !tbaa !59
  %110 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %target133 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %110, i32 0, i32 43
  %111 = load %struct.gx_device_s*, %struct.gx_device_s** %target133, align 8, !tbaa !41
  %112 = load i8*, i8** %data_row, align 8, !tbaa !1
  %113 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %114 = load i32, i32* %txrun, align 4, !tbaa !5
  %add134 = add nsw i32 %113, %114
  %115 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub135 = sub nsw i32 %add134, %115
  %116 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %117 = load i32, i32* %txrun, align 4, !tbaa !5
  %118 = load i32, i32* %ty, align 4, !tbaa !5
  %119 = load i32, i32* %tx, align 4, !tbaa !5
  %120 = load i32, i32* %txrun, align 4, !tbaa !5
  %sub136 = sub nsw i32 %119, %120
  %call = call i32 %109(%struct.gx_device_s* %111, i8* %112, i32 %sub135, i32 %116, i64 0, i32 %117, i32 %118, i32 %sub136, i32 1) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %121 = load i32, i32* %code, align 4, !tbaa !5
  %cmp137 = icmp slt i32 %121, 0
  br i1 %cmp137, label %if.then.139, label %if.end.140

if.then.139:                                      ; preds = %do.end.132
  %122 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %122, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.140:                                       ; preds = %do.end.132
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.140, %if.then.139
  %123 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.141 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.141

cleanup.141:                                      ; preds = %cleanup.cont, %cleanup, %if.then.93
  %124 = bitcast i32* %txrun to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #1
  %cleanup.dest.142 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.142, label %cleanup.159 [
    i32 0, label %cleanup.cont.143
    i32 9, label %for.end
  ]

cleanup.cont.143:                                 ; preds = %cleanup.141
  br label %for.cond.59

for.end:                                          ; preds = %cleanup.141, %for.cond.59
  %125 = load i32, i32* %cy, align 4, !tbaa !5
  %inc144 = add nsw i32 %125, 1
  store i32 %inc144, i32* %cy, align 4, !tbaa !5
  %126 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles145 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %126, i32 0, i32 44
  %size146 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles145, i32 0, i32 2
  %y147 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size146, i32 0, i32 1
  %127 = load i32, i32* %y147, align 4, !tbaa !48
  %cmp148 = icmp eq i32 %inc144, %127
  br i1 %cmp148, label %if.then.150, label %if.else.153

if.then.150:                                      ; preds = %for.end
  store i32 0, i32* %cy, align 4, !tbaa !5
  %128 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles151 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %128, i32 0, i32 44
  %data152 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles151, i32 0, i32 0
  %129 = load i8*, i8** %data152, align 8, !tbaa !52
  store i8* %129, i8** %tile_row, align 8, !tbaa !1
  br label %if.end.158

if.else.153:                                      ; preds = %for.end
  %130 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles154 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %130, i32 0, i32 44
  %raster155 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles154, i32 0, i32 1
  %131 = load i32, i32* %raster155, align 4, !tbaa !53
  %132 = load i8*, i8** %tile_row, align 8, !tbaa !1
  %idx.ext156 = sext i32 %131 to i64
  %add.ptr157 = getelementptr inbounds i8, i8* %132, i64 %idx.ext156
  store i8* %add.ptr157, i8** %tile_row, align 8, !tbaa !1
  br label %if.end.158

if.end.158:                                       ; preds = %if.else.153, %if.then.150
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.159

cleanup.159:                                      ; preds = %if.end.158, %cleanup.141
  %133 = bitcast i32* %tx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #1
  call void @llvm.lifetime.end(i64 1, i8* %tbit) #1
  %134 = bitcast i8** %tp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %134) #1
  %135 = bitcast i32* %cx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %135) #1
  %cleanup.dest.163 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.163, label %cleanup.169 [
    i32 0, label %cleanup.cont.164
  ]

cleanup.cont.164:                                 ; preds = %cleanup.159
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont.164
  %136 = load i32, i32* %ty, align 4, !tbaa !5
  %inc165 = add nsw i32 %136, 1
  store i32 %inc165, i32* %ty, align 4, !tbaa !5
  %137 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %138 = load i8*, i8** %data_row, align 8, !tbaa !1
  %idx.ext166 = sext i32 %137 to i64
  %add.ptr167 = getelementptr inbounds i8, i8* %138, i64 %idx.ext166
  store i8* %add.ptr167, i8** %data_row, align 8, !tbaa !1
  br label %for.cond

for.end.168:                                      ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.169

cleanup.169:                                      ; preds = %for.end.168, %cleanup.159
  %139 = bitcast i32* %ty to i8*
  call void @llvm.lifetime.end(i64 4, i8* %139) #1
  %140 = bitcast i8** %tile_row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %140) #1
  %141 = bitcast i32* %cy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #1
  %142 = bitcast i8** %data_row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %142) #1
  %cleanup.dest.173 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.173, label %cleanup.175 [
    i32 0, label %cleanup.cont.174
  ]

cleanup.cont.174:                                 ; preds = %cleanup.169
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.175

cleanup.175:                                      ; preds = %cleanup.cont.174, %cleanup.169, %if.then.23
  %143 = bitcast %struct.gx_device_mask_clip_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %143) #1
  %144 = load i32, i32* %retval
  ret i32 %144
}

declare i32 @gx_default_draw_line(%struct.gx_device_s*, i32, i32, i32, i32, i64) #2

declare i32 @gx_forward_get_bits(%struct.gx_device_s*, i32, i8*, i8**) #2

declare i32 @gx_forward_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #2

declare i32 @gx_forward_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #2

declare i64 @gx_forward_map_cmyk_color(%struct.gx_device_s*, i16*) #2

declare %struct.gx_xfont_procs_s* @gx_forward_get_xfont_procs(%struct.gx_device_s*) #2

declare %struct.gx_device_s* @gx_forward_get_xfont_device(%struct.gx_device_s*) #2

declare i64 @gx_forward_map_rgb_alpha_color(%struct.gx_device_s*, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext) #2

declare %struct.gx_device_s* @gx_forward_get_page_device(%struct.gx_device_s*) #2

declare i32 @gx_default_get_alpha_bits(%struct.gx_device_s*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @tile_clip_copy_alpha(%struct.gx_device_s* %dev, i8* %data, i32 %sourcex, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color, i32 %depth) #0 {
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
  %color.addr = alloca i64, align 8
  %depth.addr = alloca i32, align 4
  %cdev = alloca %struct.gx_device_mask_clip_s*, align 8
  %cleanup.dest.slot = alloca i32
  %data_row = alloca i8*, align 8
  %cy = alloca i32, align 4
  %tile_row = alloca i8*, align 8
  %ty = alloca i32, align 4
  %cx = alloca i32, align 4
  %tp = alloca i8*, align 8
  %tbit = alloca i8, align 1
  %tx = alloca i32, align 4
  %txrun = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !8
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store i64 %color, i64* %color.addr, align 8, !tbaa !8
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_mask_clip_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_mask_clip_s*
  store %struct.gx_device_mask_clip_s* %2, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %3 = load i32, i32* %x.addr, align 4, !tbaa !5
  %4 = load i32, i32* %y.addr, align 4, !tbaa !5
  %or = or i32 %3, %4
  %cmp = icmp slt i32 %or, 0
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %do.body.1
  %5 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %5, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %6 = load i32, i32* %x.addr, align 4, !tbaa !5
  %7 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add = add nsw i32 %7, %6
  store i32 %add, i32* %w.addr, align 4, !tbaa !5
  %8 = load i32, i32* %x.addr, align 4, !tbaa !5
  %9 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %9, %8
  store i32 %sub, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 0, i32* %x.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %10 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %10, 0
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %11 = load i32, i32* %y.addr, align 4, !tbaa !5
  %12 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add6 = add nsw i32 %12, %11
  store i32 %add6, i32* %h.addr, align 4, !tbaa !5
  %13 = load i32, i32* %y.addr, align 4, !tbaa !5
  %14 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %13, %14
  %15 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %mul to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 %idx.neg
  store i8* %add.ptr, i8** %data.addr, align 8, !tbaa !1
  store i64 0, i64* %id.addr, align 8, !tbaa !8
  store i32 0, i32* %y.addr, align 4, !tbaa !5
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %do.body.1
  %16 = load i32, i32* %w.addr, align 4, !tbaa !5
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 13
  %18 = load i32, i32* %width, align 4, !tbaa !56
  %19 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub9 = sub nsw i32 %18, %19
  %cmp10 = icmp sgt i32 %16, %sub9
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.8
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width12 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 13
  %21 = load i32, i32* %width12, align 4, !tbaa !56
  %22 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub13 = sub nsw i32 %21, %22
  store i32 %sub13, i32* %w.addr, align 4, !tbaa !5
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.end.8
  br label %do.cond

do.cond:                                          ; preds = %if.end.14
  br label %do.end

do.end:                                           ; preds = %do.cond
  %23 = load i32, i32* %h.addr, align 4, !tbaa !5
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %24, i32 0, i32 14
  %25 = load i32, i32* %height, align 4, !tbaa !57
  %26 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub15 = sub nsw i32 %25, %26
  %cmp16 = icmp sgt i32 %23, %sub15
  br i1 %cmp16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %do.end
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %27, i32 0, i32 14
  %28 = load i32, i32* %height18, align 4, !tbaa !57
  %29 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub19 = sub nsw i32 %28, %29
  store i32 %sub19, i32* %h.addr, align 4, !tbaa !5
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %do.end
  %30 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp21 = icmp sle i32 %30, 0
  br i1 %cmp21, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.20
  %31 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp22 = icmp sle i32 %31, 0
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %lor.lhs.false, %if.end.20
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.175

if.end.24:                                        ; preds = %lor.lhs.false
  br label %do.cond.25

do.cond.25:                                       ; preds = %if.end.24
  br label %do.end.26

do.end.26:                                        ; preds = %do.cond.25
  %32 = bitcast i8** %data_row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #1
  %33 = load i8*, i8** %data.addr, align 8, !tbaa !1
  store i8* %33, i8** %data_row, align 8, !tbaa !1
  %34 = bitcast i32* %cy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  %35 = load i32, i32* %y.addr, align 4, !tbaa !5
  %36 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %phase = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %36, i32 0, i32 46
  %y27 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 1
  %37 = load i32, i32* %y27, align 4, !tbaa !35
  %add28 = add nsw i32 %35, %37
  %38 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %38, i32 0, i32 44
  %rep_height = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles, i32 0, i32 5
  %39 = load i16, i16* %rep_height, align 2, !tbaa !46
  %conv = zext i16 %39 to i32
  %rem = srem i32 %add28, %conv
  store i32 %rem, i32* %cy, align 4, !tbaa !5
  %40 = bitcast i8** %tile_row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #1
  %41 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles29 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %41, i32 0, i32 44
  %data30 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles29, i32 0, i32 0
  %42 = load i8*, i8** %data30, align 8, !tbaa !52
  %43 = load i32, i32* %cy, align 4, !tbaa !5
  %44 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles31 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %44, i32 0, i32 44
  %raster32 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles31, i32 0, i32 1
  %45 = load i32, i32* %raster32, align 4, !tbaa !53
  %mul33 = mul nsw i32 %43, %45
  %idx.ext34 = sext i32 %mul33 to i64
  %add.ptr35 = getelementptr inbounds i8, i8* %42, i64 %idx.ext34
  store i8* %add.ptr35, i8** %tile_row, align 8, !tbaa !1
  %46 = bitcast i32* %ty to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #1
  %47 = load i32, i32* %y.addr, align 4, !tbaa !5
  store i32 %47, i32* %ty, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.26
  %48 = load i32, i32* %ty, align 4, !tbaa !5
  %49 = load i32, i32* %y.addr, align 4, !tbaa !5
  %50 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add36 = add nsw i32 %49, %50
  %cmp37 = icmp slt i32 %48, %add36
  br i1 %cmp37, label %for.body, label %for.end.168

for.body:                                         ; preds = %for.cond
  %51 = bitcast i32* %cx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #1
  %52 = load i32, i32* %x.addr, align 4, !tbaa !5
  %53 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %phase39 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %53, i32 0, i32 46
  %x40 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase39, i32 0, i32 0
  %54 = load i32, i32* %x40, align 4, !tbaa !12
  %55 = load i32, i32* %ty, align 4, !tbaa !5
  %56 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %phase41 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %56, i32 0, i32 46
  %y42 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase41, i32 0, i32 1
  %57 = load i32, i32* %y42, align 4, !tbaa !35
  %add43 = add nsw i32 %55, %57
  %58 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles44 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %58, i32 0, i32 44
  %rep_height45 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles44, i32 0, i32 5
  %59 = load i16, i16* %rep_height45, align 2, !tbaa !46
  %conv46 = zext i16 %59 to i32
  %div = sdiv i32 %add43, %conv46
  %60 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles47 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %60, i32 0, i32 44
  %rep_shift = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles47, i32 0, i32 6
  %61 = load i16, i16* %rep_shift, align 2, !tbaa !47
  %conv48 = zext i16 %61 to i32
  %mul49 = mul nsw i32 %div, %conv48
  %add50 = add nsw i32 %54, %mul49
  %add51 = add nsw i32 %52, %add50
  %62 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles52 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %62, i32 0, i32 44
  %rep_width = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles52, i32 0, i32 4
  %63 = load i16, i16* %rep_width, align 2, !tbaa !50
  %conv53 = zext i16 %63 to i32
  %rem54 = srem i32 %add51, %conv53
  store i32 %rem54, i32* %cx, align 4, !tbaa !5
  %64 = bitcast i8** %tp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %64) #1
  %65 = load i8*, i8** %tile_row, align 8, !tbaa !1
  %66 = load i32, i32* %cx, align 4, !tbaa !5
  %shr = ashr i32 %66, 3
  %idx.ext55 = sext i32 %shr to i64
  %add.ptr56 = getelementptr inbounds i8, i8* %65, i64 %idx.ext55
  store i8* %add.ptr56, i8** %tp, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %tbit) #1
  %67 = load i32, i32* %cx, align 4, !tbaa !5
  %and = and i32 %67, 7
  %shr57 = ashr i32 128, %and
  %conv58 = trunc i32 %shr57 to i8
  store i8 %conv58, i8* %tbit, align 1, !tbaa !58
  %68 = bitcast i32* %tx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %68) #1
  %69 = load i32, i32* %x.addr, align 4, !tbaa !5
  store i32 %69, i32* %tx, align 4, !tbaa !5
  br label %for.cond.59

for.cond.59:                                      ; preds = %cleanup.cont.143, %for.body
  %70 = load i32, i32* %tx, align 4, !tbaa !5
  %71 = load i32, i32* %x.addr, align 4, !tbaa !5
  %72 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add60 = add nsw i32 %71, %72
  %cmp61 = icmp slt i32 %70, %add60
  br i1 %cmp61, label %for.body.63, label %for.end

for.body.63:                                      ; preds = %for.cond.59
  %73 = bitcast i32* %txrun to i8*
  call void @llvm.lifetime.start(i64 4, i8* %73) #1
  br label %while.cond

while.cond:                                       ; preds = %do.end.89, %for.body.63
  %74 = load i32, i32* %tx, align 4, !tbaa !5
  %75 = load i32, i32* %x.addr, align 4, !tbaa !5
  %76 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add64 = add nsw i32 %75, %76
  %cmp65 = icmp slt i32 %74, %add64
  br i1 %cmp65, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %77 = load i8*, i8** %tp, align 8, !tbaa !1
  %78 = load i8, i8* %77, align 1, !tbaa !58
  %conv67 = zext i8 %78 to i32
  %79 = load i8, i8* %tbit, align 1, !tbaa !58
  %conv68 = zext i8 %79 to i32
  %and69 = and i32 %conv67, %conv68
  %cmp70 = icmp eq i32 %and69, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %80 = phi i1 [ false, %while.cond ], [ %cmp70, %land.rhs ]
  br i1 %80, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %do.body.72

do.body.72:                                       ; preds = %while.body
  %81 = load i32, i32* %cx, align 4, !tbaa !5
  %inc = add nsw i32 %81, 1
  store i32 %inc, i32* %cx, align 4, !tbaa !5
  %82 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles73 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %82, i32 0, i32 44
  %size = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles73, i32 0, i32 2
  %x74 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size, i32 0, i32 0
  %83 = load i32, i32* %x74, align 4, !tbaa !51
  %cmp75 = icmp eq i32 %inc, %83
  br i1 %cmp75, label %if.then.77, label %if.else

if.then.77:                                       ; preds = %do.body.72
  store i32 0, i32* %cx, align 4, !tbaa !5
  %84 = load i8*, i8** %tile_row, align 8, !tbaa !1
  store i8* %84, i8** %tp, align 8, !tbaa !1
  store i8 -128, i8* %tbit, align 1, !tbaa !58
  br label %if.end.86

if.else:                                          ; preds = %do.body.72
  %85 = load i8, i8* %tbit, align 1, !tbaa !58
  %conv78 = zext i8 %85 to i32
  %shr79 = ashr i32 %conv78, 1
  %conv80 = trunc i32 %shr79 to i8
  store i8 %conv80, i8* %tbit, align 1, !tbaa !58
  %conv81 = zext i8 %conv80 to i32
  %cmp82 = icmp eq i32 %conv81, 0
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.else
  %86 = load i8*, i8** %tp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %incdec.ptr, i8** %tp, align 8, !tbaa !1
  store i8 -128, i8* %tbit, align 1, !tbaa !58
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.84, %if.else
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.then.77
  %87 = load i32, i32* %tx, align 4, !tbaa !5
  %inc87 = add nsw i32 %87, 1
  store i32 %inc87, i32* %tx, align 4, !tbaa !5
  br label %do.cond.88

do.cond.88:                                       ; preds = %if.end.86
  br label %do.end.89

do.end.89:                                        ; preds = %do.cond.88
  br label %while.cond

while.end:                                        ; preds = %land.end
  %88 = load i32, i32* %tx, align 4, !tbaa !5
  %89 = load i32, i32* %x.addr, align 4, !tbaa !5
  %90 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add90 = add nsw i32 %89, %90
  %cmp91 = icmp eq i32 %88, %add90
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %while.end
  store i32 9, i32* %cleanup.dest.slot
  br label %cleanup.141

if.end.94:                                        ; preds = %while.end
  %91 = load i32, i32* %tx, align 4, !tbaa !5
  store i32 %91, i32* %txrun, align 4, !tbaa !5
  br label %do.body.95

do.body.95:                                       ; preds = %land.end.128, %if.end.94
  br label %do.body.96

do.body.96:                                       ; preds = %do.body.95
  %92 = load i32, i32* %cx, align 4, !tbaa !5
  %inc97 = add nsw i32 %92, 1
  store i32 %inc97, i32* %cx, align 4, !tbaa !5
  %93 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles98 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %93, i32 0, i32 44
  %size99 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles98, i32 0, i32 2
  %x100 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size99, i32 0, i32 0
  %94 = load i32, i32* %x100, align 4, !tbaa !51
  %cmp101 = icmp eq i32 %inc97, %94
  br i1 %cmp101, label %if.then.103, label %if.else.104

if.then.103:                                      ; preds = %do.body.96
  store i32 0, i32* %cx, align 4, !tbaa !5
  %95 = load i8*, i8** %tile_row, align 8, !tbaa !1
  store i8* %95, i8** %tp, align 8, !tbaa !1
  store i8 -128, i8* %tbit, align 1, !tbaa !58
  br label %if.end.114

if.else.104:                                      ; preds = %do.body.96
  %96 = load i8, i8* %tbit, align 1, !tbaa !58
  %conv105 = zext i8 %96 to i32
  %shr106 = ashr i32 %conv105, 1
  %conv107 = trunc i32 %shr106 to i8
  store i8 %conv107, i8* %tbit, align 1, !tbaa !58
  %conv108 = zext i8 %conv107 to i32
  %cmp109 = icmp eq i32 %conv108, 0
  br i1 %cmp109, label %if.then.111, label %if.end.113

if.then.111:                                      ; preds = %if.else.104
  %97 = load i8*, i8** %tp, align 8, !tbaa !1
  %incdec.ptr112 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %incdec.ptr112, i8** %tp, align 8, !tbaa !1
  store i8 -128, i8* %tbit, align 1, !tbaa !58
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.111, %if.else.104
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %if.then.103
  %98 = load i32, i32* %tx, align 4, !tbaa !5
  %inc115 = add nsw i32 %98, 1
  store i32 %inc115, i32* %tx, align 4, !tbaa !5
  br label %do.cond.116

do.cond.116:                                      ; preds = %if.end.114
  br label %do.end.117

do.end.117:                                       ; preds = %do.cond.116
  br label %do.cond.118

do.cond.118:                                      ; preds = %do.end.117
  %99 = load i32, i32* %tx, align 4, !tbaa !5
  %100 = load i32, i32* %x.addr, align 4, !tbaa !5
  %101 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add119 = add nsw i32 %100, %101
  %cmp120 = icmp slt i32 %99, %add119
  br i1 %cmp120, label %land.rhs.122, label %land.end.128

land.rhs.122:                                     ; preds = %do.cond.118
  %102 = load i8*, i8** %tp, align 8, !tbaa !1
  %103 = load i8, i8* %102, align 1, !tbaa !58
  %conv123 = zext i8 %103 to i32
  %104 = load i8, i8* %tbit, align 1, !tbaa !58
  %conv124 = zext i8 %104 to i32
  %and125 = and i32 %conv123, %conv124
  %cmp126 = icmp ne i32 %and125, 0
  br label %land.end.128

land.end.128:                                     ; preds = %land.rhs.122, %do.cond.118
  %105 = phi i1 [ false, %do.cond.118 ], [ %cmp126, %land.rhs.122 ]
  br i1 %105, label %do.body.95, label %do.end.129

do.end.129:                                       ; preds = %land.end.128
  br label %do.body.130

do.body.130:                                      ; preds = %do.end.129
  br label %do.cond.131

do.cond.131:                                      ; preds = %do.body.130
  br label %do.end.132

do.end.132:                                       ; preds = %do.cond.131
  %106 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %106) #1
  %107 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %107, i32 0, i32 43
  %108 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !41
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %108, i32 0, i32 42
  %copy_alpha = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 21
  %109 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)** %copy_alpha, align 8, !tbaa !60
  %110 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %target133 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %110, i32 0, i32 43
  %111 = load %struct.gx_device_s*, %struct.gx_device_s** %target133, align 8, !tbaa !41
  %112 = load i8*, i8** %data_row, align 8, !tbaa !1
  %113 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %114 = load i32, i32* %txrun, align 4, !tbaa !5
  %add134 = add nsw i32 %113, %114
  %115 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub135 = sub nsw i32 %add134, %115
  %116 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %117 = load i32, i32* %txrun, align 4, !tbaa !5
  %118 = load i32, i32* %ty, align 4, !tbaa !5
  %119 = load i32, i32* %tx, align 4, !tbaa !5
  %120 = load i32, i32* %txrun, align 4, !tbaa !5
  %sub136 = sub nsw i32 %119, %120
  %121 = load i64, i64* %color.addr, align 8, !tbaa !8
  %122 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %call = call i32 %109(%struct.gx_device_s* %111, i8* %112, i32 %sub135, i32 %116, i64 0, i32 %117, i32 %118, i32 %sub136, i32 1, i64 %121, i32 %122) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %123 = load i32, i32* %code, align 4, !tbaa !5
  %cmp137 = icmp slt i32 %123, 0
  br i1 %cmp137, label %if.then.139, label %if.end.140

if.then.139:                                      ; preds = %do.end.132
  %124 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %124, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.140:                                       ; preds = %do.end.132
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.140, %if.then.139
  %125 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.141 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.141

cleanup.141:                                      ; preds = %cleanup.cont, %cleanup, %if.then.93
  %126 = bitcast i32* %txrun to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #1
  %cleanup.dest.142 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.142, label %cleanup.159 [
    i32 0, label %cleanup.cont.143
    i32 9, label %for.end
  ]

cleanup.cont.143:                                 ; preds = %cleanup.141
  br label %for.cond.59

for.end:                                          ; preds = %cleanup.141, %for.cond.59
  %127 = load i32, i32* %cy, align 4, !tbaa !5
  %inc144 = add nsw i32 %127, 1
  store i32 %inc144, i32* %cy, align 4, !tbaa !5
  %128 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles145 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %128, i32 0, i32 44
  %size146 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles145, i32 0, i32 2
  %y147 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size146, i32 0, i32 1
  %129 = load i32, i32* %y147, align 4, !tbaa !48
  %cmp148 = icmp eq i32 %inc144, %129
  br i1 %cmp148, label %if.then.150, label %if.else.153

if.then.150:                                      ; preds = %for.end
  store i32 0, i32* %cy, align 4, !tbaa !5
  %130 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles151 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %130, i32 0, i32 44
  %data152 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles151, i32 0, i32 0
  %131 = load i8*, i8** %data152, align 8, !tbaa !52
  store i8* %131, i8** %tile_row, align 8, !tbaa !1
  br label %if.end.158

if.else.153:                                      ; preds = %for.end
  %132 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles154 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %132, i32 0, i32 44
  %raster155 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles154, i32 0, i32 1
  %133 = load i32, i32* %raster155, align 4, !tbaa !53
  %134 = load i8*, i8** %tile_row, align 8, !tbaa !1
  %idx.ext156 = sext i32 %133 to i64
  %add.ptr157 = getelementptr inbounds i8, i8* %134, i64 %idx.ext156
  store i8* %add.ptr157, i8** %tile_row, align 8, !tbaa !1
  br label %if.end.158

if.end.158:                                       ; preds = %if.else.153, %if.then.150
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.159

cleanup.159:                                      ; preds = %if.end.158, %cleanup.141
  %135 = bitcast i32* %tx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %135) #1
  call void @llvm.lifetime.end(i64 1, i8* %tbit) #1
  %136 = bitcast i8** %tp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %136) #1
  %137 = bitcast i32* %cx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #1
  %cleanup.dest.163 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.163, label %cleanup.169 [
    i32 0, label %cleanup.cont.164
  ]

cleanup.cont.164:                                 ; preds = %cleanup.159
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont.164
  %138 = load i32, i32* %ty, align 4, !tbaa !5
  %inc165 = add nsw i32 %138, 1
  store i32 %inc165, i32* %ty, align 4, !tbaa !5
  %139 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %140 = load i8*, i8** %data_row, align 8, !tbaa !1
  %idx.ext166 = sext i32 %139 to i64
  %add.ptr167 = getelementptr inbounds i8, i8* %140, i64 %idx.ext166
  store i8* %add.ptr167, i8** %data_row, align 8, !tbaa !1
  br label %for.cond

for.end.168:                                      ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.169

cleanup.169:                                      ; preds = %for.end.168, %cleanup.159
  %141 = bitcast i32* %ty to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #1
  %142 = bitcast i8** %tile_row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %142) #1
  %143 = bitcast i32* %cy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #1
  %144 = bitcast i8** %data_row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %144) #1
  %cleanup.dest.173 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.173, label %cleanup.175 [
    i32 0, label %cleanup.cont.174
  ]

cleanup.cont.174:                                 ; preds = %cleanup.169
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.175

cleanup.175:                                      ; preds = %cleanup.cont.174, %cleanup.169, %if.then.23
  %145 = bitcast %struct.gx_device_mask_clip_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %145) #1
  %146 = load i32, i32* %retval
  ret i32 %146
}

declare i32 @gx_forward_get_band(%struct.gx_device_s*, i32, i32*) #2

declare i32 @gx_default_copy_rop(%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32) #2

declare i32 @gx_default_fill_path(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*) #2

declare i32 @gx_default_stroke_path(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*) #2

declare i32 @gx_default_fill_mask(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*) #2

declare i32 @gx_default_fill_trapezoid(%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32) #2

declare i32 @gx_default_fill_parallelogram(%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32) #2

declare i32 @gx_default_fill_triangle(%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32) #2

declare i32 @gx_default_draw_thin_line(%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32) #2

declare i32 @gx_default_begin_image(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**) #2

declare i32 @gx_default_image_data(%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32) #2

declare i32 @gx_default_end_image(%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32) #2

declare i32 @gx_default_strip_tile_rectangle(%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @tile_clip_strip_copy_rop(%struct.gx_device_s* %dev, i8* %data, i32 %sourcex, i32 %raster, i64 %id, i64* %scolors, %struct.gx_strip_bitmap_s* %textures, i64* %tcolors, i32 %x, i32 %y, i32 %w, i32 %h, i32 %phase_x, i32 %phase_y, i32 %lop) #0 {
entry:
  %retval = alloca i32, align 4
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
  %cleanup.dest.slot = alloca i32
  %data_row = alloca i8*, align 8
  %cy = alloca i32, align 4
  %tile_row = alloca i8*, align 8
  %ty = alloca i32, align 4
  %cx = alloca i32, align 4
  %tp = alloca i8*, align 8
  %tbit = alloca i8, align 1
  %tx = alloca i32, align 4
  %txrun = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !8
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
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_mask_clip_s*
  store %struct.gx_device_mask_clip_s* %2, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %3 = load i32, i32* %x.addr, align 4, !tbaa !5
  %4 = load i32, i32* %y.addr, align 4, !tbaa !5
  %or = or i32 %3, %4
  %cmp = icmp slt i32 %or, 0
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %do.body.1
  %5 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %5, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %6 = load i32, i32* %x.addr, align 4, !tbaa !5
  %7 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add = add nsw i32 %7, %6
  store i32 %add, i32* %w.addr, align 4, !tbaa !5
  %8 = load i32, i32* %x.addr, align 4, !tbaa !5
  %9 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %9, %8
  store i32 %sub, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 0, i32* %x.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %10 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %10, 0
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %11 = load i32, i32* %y.addr, align 4, !tbaa !5
  %12 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add6 = add nsw i32 %12, %11
  store i32 %add6, i32* %h.addr, align 4, !tbaa !5
  %13 = load i32, i32* %y.addr, align 4, !tbaa !5
  %14 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %mul = mul i32 %13, %14
  %15 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %mul to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 %idx.neg
  store i8* %add.ptr, i8** %data.addr, align 8, !tbaa !1
  store i64 0, i64* %id.addr, align 8, !tbaa !8
  store i32 0, i32* %y.addr, align 4, !tbaa !5
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %do.body.1
  %16 = load i32, i32* %w.addr, align 4, !tbaa !5
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 13
  %18 = load i32, i32* %width, align 4, !tbaa !56
  %19 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub9 = sub nsw i32 %18, %19
  %cmp10 = icmp sgt i32 %16, %sub9
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.8
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width12 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 13
  %21 = load i32, i32* %width12, align 4, !tbaa !56
  %22 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub13 = sub nsw i32 %21, %22
  store i32 %sub13, i32* %w.addr, align 4, !tbaa !5
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.end.8
  br label %do.cond

do.cond:                                          ; preds = %if.end.14
  br label %do.end

do.end:                                           ; preds = %do.cond
  %23 = load i32, i32* %h.addr, align 4, !tbaa !5
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %24, i32 0, i32 14
  %25 = load i32, i32* %height, align 4, !tbaa !57
  %26 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub15 = sub nsw i32 %25, %26
  %cmp16 = icmp sgt i32 %23, %sub15
  br i1 %cmp16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %do.end
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %27, i32 0, i32 14
  %28 = load i32, i32* %height18, align 4, !tbaa !57
  %29 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub19 = sub nsw i32 %28, %29
  store i32 %sub19, i32* %h.addr, align 4, !tbaa !5
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %do.end
  %30 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp21 = icmp sle i32 %30, 0
  br i1 %cmp21, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.20
  %31 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp22 = icmp sle i32 %31, 0
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %lor.lhs.false, %if.end.20
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.175

if.end.24:                                        ; preds = %lor.lhs.false
  br label %do.cond.25

do.cond.25:                                       ; preds = %if.end.24
  br label %do.end.26

do.end.26:                                        ; preds = %do.cond.25
  %32 = bitcast i8** %data_row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #1
  %33 = load i8*, i8** %data.addr, align 8, !tbaa !1
  store i8* %33, i8** %data_row, align 8, !tbaa !1
  %34 = bitcast i32* %cy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  %35 = load i32, i32* %y.addr, align 4, !tbaa !5
  %36 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %phase = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %36, i32 0, i32 46
  %y27 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 1
  %37 = load i32, i32* %y27, align 4, !tbaa !35
  %add28 = add nsw i32 %35, %37
  %38 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %38, i32 0, i32 44
  %rep_height = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles, i32 0, i32 5
  %39 = load i16, i16* %rep_height, align 2, !tbaa !46
  %conv = zext i16 %39 to i32
  %rem = srem i32 %add28, %conv
  store i32 %rem, i32* %cy, align 4, !tbaa !5
  %40 = bitcast i8** %tile_row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #1
  %41 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles29 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %41, i32 0, i32 44
  %data30 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles29, i32 0, i32 0
  %42 = load i8*, i8** %data30, align 8, !tbaa !52
  %43 = load i32, i32* %cy, align 4, !tbaa !5
  %44 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles31 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %44, i32 0, i32 44
  %raster32 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles31, i32 0, i32 1
  %45 = load i32, i32* %raster32, align 4, !tbaa !53
  %mul33 = mul nsw i32 %43, %45
  %idx.ext34 = sext i32 %mul33 to i64
  %add.ptr35 = getelementptr inbounds i8, i8* %42, i64 %idx.ext34
  store i8* %add.ptr35, i8** %tile_row, align 8, !tbaa !1
  %46 = bitcast i32* %ty to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #1
  %47 = load i32, i32* %y.addr, align 4, !tbaa !5
  store i32 %47, i32* %ty, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.26
  %48 = load i32, i32* %ty, align 4, !tbaa !5
  %49 = load i32, i32* %y.addr, align 4, !tbaa !5
  %50 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add36 = add nsw i32 %49, %50
  %cmp37 = icmp slt i32 %48, %add36
  br i1 %cmp37, label %for.body, label %for.end.168

for.body:                                         ; preds = %for.cond
  %51 = bitcast i32* %cx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #1
  %52 = load i32, i32* %x.addr, align 4, !tbaa !5
  %53 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %phase39 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %53, i32 0, i32 46
  %x40 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase39, i32 0, i32 0
  %54 = load i32, i32* %x40, align 4, !tbaa !12
  %55 = load i32, i32* %ty, align 4, !tbaa !5
  %56 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %phase41 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %56, i32 0, i32 46
  %y42 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase41, i32 0, i32 1
  %57 = load i32, i32* %y42, align 4, !tbaa !35
  %add43 = add nsw i32 %55, %57
  %58 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles44 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %58, i32 0, i32 44
  %rep_height45 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles44, i32 0, i32 5
  %59 = load i16, i16* %rep_height45, align 2, !tbaa !46
  %conv46 = zext i16 %59 to i32
  %div = sdiv i32 %add43, %conv46
  %60 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles47 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %60, i32 0, i32 44
  %rep_shift = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles47, i32 0, i32 6
  %61 = load i16, i16* %rep_shift, align 2, !tbaa !47
  %conv48 = zext i16 %61 to i32
  %mul49 = mul nsw i32 %div, %conv48
  %add50 = add nsw i32 %54, %mul49
  %add51 = add nsw i32 %52, %add50
  %62 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles52 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %62, i32 0, i32 44
  %rep_width = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles52, i32 0, i32 4
  %63 = load i16, i16* %rep_width, align 2, !tbaa !50
  %conv53 = zext i16 %63 to i32
  %rem54 = srem i32 %add51, %conv53
  store i32 %rem54, i32* %cx, align 4, !tbaa !5
  %64 = bitcast i8** %tp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %64) #1
  %65 = load i8*, i8** %tile_row, align 8, !tbaa !1
  %66 = load i32, i32* %cx, align 4, !tbaa !5
  %shr = ashr i32 %66, 3
  %idx.ext55 = sext i32 %shr to i64
  %add.ptr56 = getelementptr inbounds i8, i8* %65, i64 %idx.ext55
  store i8* %add.ptr56, i8** %tp, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %tbit) #1
  %67 = load i32, i32* %cx, align 4, !tbaa !5
  %and = and i32 %67, 7
  %shr57 = ashr i32 128, %and
  %conv58 = trunc i32 %shr57 to i8
  store i8 %conv58, i8* %tbit, align 1, !tbaa !58
  %68 = bitcast i32* %tx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %68) #1
  %69 = load i32, i32* %x.addr, align 4, !tbaa !5
  store i32 %69, i32* %tx, align 4, !tbaa !5
  br label %for.cond.59

for.cond.59:                                      ; preds = %cleanup.cont.143, %for.body
  %70 = load i32, i32* %tx, align 4, !tbaa !5
  %71 = load i32, i32* %x.addr, align 4, !tbaa !5
  %72 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add60 = add nsw i32 %71, %72
  %cmp61 = icmp slt i32 %70, %add60
  br i1 %cmp61, label %for.body.63, label %for.end

for.body.63:                                      ; preds = %for.cond.59
  %73 = bitcast i32* %txrun to i8*
  call void @llvm.lifetime.start(i64 4, i8* %73) #1
  br label %while.cond

while.cond:                                       ; preds = %do.end.89, %for.body.63
  %74 = load i32, i32* %tx, align 4, !tbaa !5
  %75 = load i32, i32* %x.addr, align 4, !tbaa !5
  %76 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add64 = add nsw i32 %75, %76
  %cmp65 = icmp slt i32 %74, %add64
  br i1 %cmp65, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %77 = load i8*, i8** %tp, align 8, !tbaa !1
  %78 = load i8, i8* %77, align 1, !tbaa !58
  %conv67 = zext i8 %78 to i32
  %79 = load i8, i8* %tbit, align 1, !tbaa !58
  %conv68 = zext i8 %79 to i32
  %and69 = and i32 %conv67, %conv68
  %cmp70 = icmp eq i32 %and69, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %80 = phi i1 [ false, %while.cond ], [ %cmp70, %land.rhs ]
  br i1 %80, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %do.body.72

do.body.72:                                       ; preds = %while.body
  %81 = load i32, i32* %cx, align 4, !tbaa !5
  %inc = add nsw i32 %81, 1
  store i32 %inc, i32* %cx, align 4, !tbaa !5
  %82 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles73 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %82, i32 0, i32 44
  %size = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles73, i32 0, i32 2
  %x74 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size, i32 0, i32 0
  %83 = load i32, i32* %x74, align 4, !tbaa !51
  %cmp75 = icmp eq i32 %inc, %83
  br i1 %cmp75, label %if.then.77, label %if.else

if.then.77:                                       ; preds = %do.body.72
  store i32 0, i32* %cx, align 4, !tbaa !5
  %84 = load i8*, i8** %tile_row, align 8, !tbaa !1
  store i8* %84, i8** %tp, align 8, !tbaa !1
  store i8 -128, i8* %tbit, align 1, !tbaa !58
  br label %if.end.86

if.else:                                          ; preds = %do.body.72
  %85 = load i8, i8* %tbit, align 1, !tbaa !58
  %conv78 = zext i8 %85 to i32
  %shr79 = ashr i32 %conv78, 1
  %conv80 = trunc i32 %shr79 to i8
  store i8 %conv80, i8* %tbit, align 1, !tbaa !58
  %conv81 = zext i8 %conv80 to i32
  %cmp82 = icmp eq i32 %conv81, 0
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.else
  %86 = load i8*, i8** %tp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %incdec.ptr, i8** %tp, align 8, !tbaa !1
  store i8 -128, i8* %tbit, align 1, !tbaa !58
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.84, %if.else
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.then.77
  %87 = load i32, i32* %tx, align 4, !tbaa !5
  %inc87 = add nsw i32 %87, 1
  store i32 %inc87, i32* %tx, align 4, !tbaa !5
  br label %do.cond.88

do.cond.88:                                       ; preds = %if.end.86
  br label %do.end.89

do.end.89:                                        ; preds = %do.cond.88
  br label %while.cond

while.end:                                        ; preds = %land.end
  %88 = load i32, i32* %tx, align 4, !tbaa !5
  %89 = load i32, i32* %x.addr, align 4, !tbaa !5
  %90 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add90 = add nsw i32 %89, %90
  %cmp91 = icmp eq i32 %88, %add90
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %while.end
  store i32 9, i32* %cleanup.dest.slot
  br label %cleanup.141

if.end.94:                                        ; preds = %while.end
  %91 = load i32, i32* %tx, align 4, !tbaa !5
  store i32 %91, i32* %txrun, align 4, !tbaa !5
  br label %do.body.95

do.body.95:                                       ; preds = %land.end.128, %if.end.94
  br label %do.body.96

do.body.96:                                       ; preds = %do.body.95
  %92 = load i32, i32* %cx, align 4, !tbaa !5
  %inc97 = add nsw i32 %92, 1
  store i32 %inc97, i32* %cx, align 4, !tbaa !5
  %93 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles98 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %93, i32 0, i32 44
  %size99 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles98, i32 0, i32 2
  %x100 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size99, i32 0, i32 0
  %94 = load i32, i32* %x100, align 4, !tbaa !51
  %cmp101 = icmp eq i32 %inc97, %94
  br i1 %cmp101, label %if.then.103, label %if.else.104

if.then.103:                                      ; preds = %do.body.96
  store i32 0, i32* %cx, align 4, !tbaa !5
  %95 = load i8*, i8** %tile_row, align 8, !tbaa !1
  store i8* %95, i8** %tp, align 8, !tbaa !1
  store i8 -128, i8* %tbit, align 1, !tbaa !58
  br label %if.end.114

if.else.104:                                      ; preds = %do.body.96
  %96 = load i8, i8* %tbit, align 1, !tbaa !58
  %conv105 = zext i8 %96 to i32
  %shr106 = ashr i32 %conv105, 1
  %conv107 = trunc i32 %shr106 to i8
  store i8 %conv107, i8* %tbit, align 1, !tbaa !58
  %conv108 = zext i8 %conv107 to i32
  %cmp109 = icmp eq i32 %conv108, 0
  br i1 %cmp109, label %if.then.111, label %if.end.113

if.then.111:                                      ; preds = %if.else.104
  %97 = load i8*, i8** %tp, align 8, !tbaa !1
  %incdec.ptr112 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %incdec.ptr112, i8** %tp, align 8, !tbaa !1
  store i8 -128, i8* %tbit, align 1, !tbaa !58
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.111, %if.else.104
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %if.then.103
  %98 = load i32, i32* %tx, align 4, !tbaa !5
  %inc115 = add nsw i32 %98, 1
  store i32 %inc115, i32* %tx, align 4, !tbaa !5
  br label %do.cond.116

do.cond.116:                                      ; preds = %if.end.114
  br label %do.end.117

do.end.117:                                       ; preds = %do.cond.116
  br label %do.cond.118

do.cond.118:                                      ; preds = %do.end.117
  %99 = load i32, i32* %tx, align 4, !tbaa !5
  %100 = load i32, i32* %x.addr, align 4, !tbaa !5
  %101 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add119 = add nsw i32 %100, %101
  %cmp120 = icmp slt i32 %99, %add119
  br i1 %cmp120, label %land.rhs.122, label %land.end.128

land.rhs.122:                                     ; preds = %do.cond.118
  %102 = load i8*, i8** %tp, align 8, !tbaa !1
  %103 = load i8, i8* %102, align 1, !tbaa !58
  %conv123 = zext i8 %103 to i32
  %104 = load i8, i8* %tbit, align 1, !tbaa !58
  %conv124 = zext i8 %104 to i32
  %and125 = and i32 %conv123, %conv124
  %cmp126 = icmp ne i32 %and125, 0
  br label %land.end.128

land.end.128:                                     ; preds = %land.rhs.122, %do.cond.118
  %105 = phi i1 [ false, %do.cond.118 ], [ %cmp126, %land.rhs.122 ]
  br i1 %105, label %do.body.95, label %do.end.129

do.end.129:                                       ; preds = %land.end.128
  br label %do.body.130

do.body.130:                                      ; preds = %do.end.129
  br label %do.cond.131

do.cond.131:                                      ; preds = %do.body.130
  br label %do.end.132

do.end.132:                                       ; preds = %do.cond.131
  %106 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %106) #1
  %107 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %107, i32 0, i32 43
  %108 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !41
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %108, i32 0, i32 42
  %strip_copy_rop = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 35
  %109 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)** %strip_copy_rop, align 8, !tbaa !61
  %110 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %target133 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %110, i32 0, i32 43
  %111 = load %struct.gx_device_s*, %struct.gx_device_s** %target133, align 8, !tbaa !41
  %112 = load i8*, i8** %data_row, align 8, !tbaa !1
  %113 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %114 = load i32, i32* %txrun, align 4, !tbaa !5
  %add134 = add nsw i32 %113, %114
  %115 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub135 = sub nsw i32 %add134, %115
  %116 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %117 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %118 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %119 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %120 = load i32, i32* %txrun, align 4, !tbaa !5
  %121 = load i32, i32* %ty, align 4, !tbaa !5
  %122 = load i32, i32* %tx, align 4, !tbaa !5
  %123 = load i32, i32* %txrun, align 4, !tbaa !5
  %sub136 = sub nsw i32 %122, %123
  %124 = load i32, i32* %phase_x.addr, align 4, !tbaa !5
  %125 = load i32, i32* %phase_y.addr, align 4, !tbaa !5
  %126 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call = call i32 %109(%struct.gx_device_s* %111, i8* %112, i32 %sub135, i32 %116, i64 0, i64* %117, %struct.gx_strip_bitmap_s* %118, i64* %119, i32 %120, i32 %121, i32 %sub136, i32 1, i32 %124, i32 %125, i32 %126) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %127 = load i32, i32* %code, align 4, !tbaa !5
  %cmp137 = icmp slt i32 %127, 0
  br i1 %cmp137, label %if.then.139, label %if.end.140

if.then.139:                                      ; preds = %do.end.132
  %128 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %128, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.140:                                       ; preds = %do.end.132
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.140, %if.then.139
  %129 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %129) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.141 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.141

cleanup.141:                                      ; preds = %cleanup.cont, %cleanup, %if.then.93
  %130 = bitcast i32* %txrun to i8*
  call void @llvm.lifetime.end(i64 4, i8* %130) #1
  %cleanup.dest.142 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.142, label %cleanup.159 [
    i32 0, label %cleanup.cont.143
    i32 9, label %for.end
  ]

cleanup.cont.143:                                 ; preds = %cleanup.141
  br label %for.cond.59

for.end:                                          ; preds = %cleanup.141, %for.cond.59
  %131 = load i32, i32* %cy, align 4, !tbaa !5
  %inc144 = add nsw i32 %131, 1
  store i32 %inc144, i32* %cy, align 4, !tbaa !5
  %132 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles145 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %132, i32 0, i32 44
  %size146 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles145, i32 0, i32 2
  %y147 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size146, i32 0, i32 1
  %133 = load i32, i32* %y147, align 4, !tbaa !48
  %cmp148 = icmp eq i32 %inc144, %133
  br i1 %cmp148, label %if.then.150, label %if.else.153

if.then.150:                                      ; preds = %for.end
  store i32 0, i32* %cy, align 4, !tbaa !5
  %134 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles151 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %134, i32 0, i32 44
  %data152 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles151, i32 0, i32 0
  %135 = load i8*, i8** %data152, align 8, !tbaa !52
  store i8* %135, i8** %tile_row, align 8, !tbaa !1
  br label %if.end.158

if.else.153:                                      ; preds = %for.end
  %136 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles154 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %136, i32 0, i32 44
  %raster155 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles154, i32 0, i32 1
  %137 = load i32, i32* %raster155, align 4, !tbaa !53
  %138 = load i8*, i8** %tile_row, align 8, !tbaa !1
  %idx.ext156 = sext i32 %137 to i64
  %add.ptr157 = getelementptr inbounds i8, i8* %138, i64 %idx.ext156
  store i8* %add.ptr157, i8** %tile_row, align 8, !tbaa !1
  br label %if.end.158

if.end.158:                                       ; preds = %if.else.153, %if.then.150
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.159

cleanup.159:                                      ; preds = %if.end.158, %cleanup.141
  %139 = bitcast i32* %tx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %139) #1
  call void @llvm.lifetime.end(i64 1, i8* %tbit) #1
  %140 = bitcast i8** %tp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %140) #1
  %141 = bitcast i32* %cx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #1
  %cleanup.dest.163 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.163, label %cleanup.169 [
    i32 0, label %cleanup.cont.164
  ]

cleanup.cont.164:                                 ; preds = %cleanup.159
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont.164
  %142 = load i32, i32* %ty, align 4, !tbaa !5
  %inc165 = add nsw i32 %142, 1
  store i32 %inc165, i32* %ty, align 4, !tbaa !5
  %143 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %144 = load i8*, i8** %data_row, align 8, !tbaa !1
  %idx.ext166 = zext i32 %143 to i64
  %add.ptr167 = getelementptr inbounds i8, i8* %144, i64 %idx.ext166
  store i8* %add.ptr167, i8** %data_row, align 8, !tbaa !1
  br label %for.cond

for.end.168:                                      ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.169

cleanup.169:                                      ; preds = %for.end.168, %cleanup.159
  %145 = bitcast i32* %ty to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #1
  %146 = bitcast i8** %tile_row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %146) #1
  %147 = bitcast i32* %cy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %147) #1
  %148 = bitcast i8** %data_row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %148) #1
  %cleanup.dest.173 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.173, label %cleanup.175 [
    i32 0, label %cleanup.cont.174
  ]

cleanup.cont.174:                                 ; preds = %cleanup.169
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.175

cleanup.175:                                      ; preds = %cleanup.cont.174, %cleanup.169, %if.then.23
  %149 = bitcast %struct.gx_device_mask_clip_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %149) #1
  %150 = load i32, i32* %retval
  ret i32 %150
}

declare void @gx_forward_get_clipping_box(%struct.gx_device_s*, %struct.gs_fixed_rect_s*) #2

declare i32 @gx_default_begin_typed_image(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**) #2

declare i32 @gx_forward_get_bits_rectangle(%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**) #2

declare i32 @gx_forward_map_color_rgb_alpha(%struct.gx_device_s*, i64, i16*) #2

declare i32 @gx_no_create_compositor(%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*) #2

declare i32 @gx_forward_get_hardware_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #2

declare i32 @gx_default_text_begin(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**) #2

declare i32 @gx_default_finish_copydevice(%struct.gx_device_s*, %struct.gx_device_s*) #2

declare %struct.gx_cm_color_map_procs_s* @gx_forward_get_color_mapping_procs(%struct.gx_device_s*) #2

declare i32 @gx_forward_get_color_comp_index(%struct.gx_device_s*, i8*, i32, i32) #2

declare i64 @gx_forward_encode_color(%struct.gx_device_s*, i16*) #2

declare i32 @gx_forward_decode_color(%struct.gx_device_s*, i64, i16*) #2

; Function Attrs: nounwind uwtable
define internal i32 @tile_clip_fill_rectangle_hl_color(%struct.gx_device_s* %dev, %struct.gs_fixed_rect_s* %rect, %struct.gs_imager_state_s* %pis, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath) #0 {
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
  %dcolor0 = alloca %struct.gx_device_color_s, align 8
  %dcolor1 = alloca %struct.gx_device_color_s, align 8
  %k = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_fixed_rect_s* %rect, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_mask_clip_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_mask_clip_s*
  store %struct.gx_device_mask_clip_s* %2, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !41
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast %struct.gx_device_color_s* %dcolor0 to i8*
  call void @llvm.lifetime.start(i64 656, i8* %10) #1
  %11 = bitcast %struct.gx_device_color_s* %dcolor1 to i8*
  call void @llvm.lifetime.start(i64 656, i8* %11) #1
  %12 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dcolor0, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_pure, %struct.gx_device_color_type_s** %type, align 8, !tbaa !62
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dcolor0, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  store i64 -1, i64* %pure, align 8, !tbaa !8
  %type1 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dcolor1, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_devn, %struct.gx_device_color_type_s** %type1, align 8, !tbaa !62
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %13 = load i32, i32* %k, align 4, !tbaa !5
  %cmp = icmp slt i32 %13, 64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom = sext i32 %14 to i64
  %15 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %colors2 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %15, i32 0, i32 1
  %devn = bitcast %union._c* %colors2 to %struct._devn*
  %values = getelementptr inbounds %struct._devn, %struct._devn* %devn, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x i16], [64 x i16]* %values, i32 0, i64 %idxprom
  %16 = load i16, i16* %arrayidx, align 2, !tbaa !10
  %17 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom3 = sext i32 %17 to i64
  %colors4 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %dcolor1, i32 0, i32 1
  %devn5 = bitcast %union._c* %colors4 to %struct._devn*
  %values6 = getelementptr inbounds %struct._devn, %struct._devn* %devn5, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [64 x i16], [64 x i16]* %values6, i32 0, i64 %idxprom3
  store i16 %16, i16* %arrayidx7, align 2, !tbaa !10
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %k, align 4, !tbaa !5
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %19, i32 0, i32 0
  %x8 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %20 = load i32, i32* %x8, align 4, !tbaa !68
  %shr = ashr i32 %20, 8
  store i32 %shr, i32* %x, align 4, !tbaa !5
  %21 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %p9 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %21, i32 0, i32 0
  %y10 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p9, i32 0, i32 1
  %22 = load i32, i32* %y10, align 4, !tbaa !71
  %shr11 = ashr i32 %22, 8
  store i32 %shr11, i32* %y, align 4, !tbaa !5
  %23 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %23, i32 0, i32 1
  %x12 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %24 = load i32, i32* %x12, align 4, !tbaa !72
  %shr13 = ashr i32 %24, 8
  %25 = load i32, i32* %x, align 4, !tbaa !5
  %sub = sub nsw i32 %shr13, %25
  store i32 %sub, i32* %w, align 4, !tbaa !5
  %26 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %q14 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %26, i32 0, i32 1
  %y15 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q14, i32 0, i32 1
  %27 = load i32, i32* %y15, align 4, !tbaa !73
  %shr16 = ashr i32 %27, 8
  %28 = load i32, i32* %y, align 4, !tbaa !5
  %sub17 = sub nsw i32 %shr16, %28
  store i32 %sub17, i32* %h, align 4, !tbaa !5
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %29, i32 0, i32 42
  %strip_tile_rect_devn = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 70
  %30 = load i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)** %strip_tile_rect_devn, align 8, !tbaa !74
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %32 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %32, i32 0, i32 44
  %33 = load i32, i32* %x, align 4, !tbaa !5
  %34 = load i32, i32* %y, align 4, !tbaa !5
  %35 = load i32, i32* %w, align 4, !tbaa !5
  %36 = load i32, i32* %h, align 4, !tbaa !5
  %37 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %phase = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %37, i32 0, i32 46
  %x18 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 0
  %38 = load i32, i32* %x18, align 4, !tbaa !12
  %39 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %phase19 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %39, i32 0, i32 46
  %y20 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase19, i32 0, i32 1
  %40 = load i32, i32* %y20, align 4, !tbaa !35
  %call = call i32 %30(%struct.gx_device_s* %31, %struct.gx_strip_bitmap_s* %tiles, i32 %33, i32 %34, i32 %35, i32 %36, %struct.gx_device_color_s* %dcolor0, %struct.gx_device_color_s* %dcolor1, i32 %38, i32 %40) #4
  %41 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = bitcast %struct.gx_device_color_s* %dcolor1 to i8*
  call void @llvm.lifetime.end(i64 656, i8* %42) #1
  %43 = bitcast %struct.gx_device_color_s* %dcolor0 to i8*
  call void @llvm.lifetime.end(i64 656, i8* %43) #1
  %44 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = bitcast %struct.gx_device_mask_clip_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  ret i32 %call
}

declare i32 @gx_forward_include_color_space(%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32) #2

declare i32 @gx_forward_fill_linear_color_scanline(%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32) #2

declare i32 @gx_forward_fill_linear_color_trapezoid(%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*) #2

declare i32 @gx_forward_fill_linear_color_triangle(%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*) #2

declare i32 @gx_forward_update_spot_equivalent_colors(%struct.gx_device_s*, %struct.gs_state_s*) #2

declare %struct.gs_devn_params_s* @gx_forward_ret_devn_params(%struct.gx_device_s*) #2

declare i32 @gx_forward_fillpage(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*) #2

declare i32 @gx_forward_dev_spec_op(%struct.gx_device_s*, i32, i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @tile_clip_copy_planes(%struct.gx_device_s* %dev, i8* %data, i32 %sourcex, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, i32 %plane_height) #0 {
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
  %plane_height.addr = alloca i32, align 4
  %cdev = alloca %struct.gx_device_mask_clip_s*, align 8
  %cleanup.dest.slot = alloca i32
  %data_row = alloca i8*, align 8
  %cy = alloca i32, align 4
  %tile_row = alloca i8*, align 8
  %ty = alloca i32, align 4
  %cx = alloca i32, align 4
  %tp = alloca i8*, align 8
  %tbit = alloca i8, align 1
  %tx = alloca i32, align 4
  %txrun = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !8
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store i32 %plane_height, i32* %plane_height.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_mask_clip_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_mask_clip_s*
  store %struct.gx_device_mask_clip_s* %2, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %3 = load i32, i32* %x.addr, align 4, !tbaa !5
  %4 = load i32, i32* %y.addr, align 4, !tbaa !5
  %or = or i32 %3, %4
  %cmp = icmp slt i32 %or, 0
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %do.body.1
  %5 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %5, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %6 = load i32, i32* %x.addr, align 4, !tbaa !5
  %7 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add = add nsw i32 %7, %6
  store i32 %add, i32* %w.addr, align 4, !tbaa !5
  %8 = load i32, i32* %x.addr, align 4, !tbaa !5
  %9 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %9, %8
  store i32 %sub, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 0, i32* %x.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %10 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %10, 0
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %11 = load i32, i32* %y.addr, align 4, !tbaa !5
  %12 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add6 = add nsw i32 %12, %11
  store i32 %add6, i32* %h.addr, align 4, !tbaa !5
  %13 = load i32, i32* %y.addr, align 4, !tbaa !5
  %14 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %13, %14
  %15 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %mul to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 %idx.neg
  store i8* %add.ptr, i8** %data.addr, align 8, !tbaa !1
  store i64 0, i64* %id.addr, align 8, !tbaa !8
  store i32 0, i32* %y.addr, align 4, !tbaa !5
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %do.body.1
  %16 = load i32, i32* %w.addr, align 4, !tbaa !5
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 13
  %18 = load i32, i32* %width, align 4, !tbaa !56
  %19 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub9 = sub nsw i32 %18, %19
  %cmp10 = icmp sgt i32 %16, %sub9
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.8
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width12 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 13
  %21 = load i32, i32* %width12, align 4, !tbaa !56
  %22 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub13 = sub nsw i32 %21, %22
  store i32 %sub13, i32* %w.addr, align 4, !tbaa !5
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.end.8
  br label %do.cond

do.cond:                                          ; preds = %if.end.14
  br label %do.end

do.end:                                           ; preds = %do.cond
  %23 = load i32, i32* %h.addr, align 4, !tbaa !5
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %24, i32 0, i32 14
  %25 = load i32, i32* %height, align 4, !tbaa !57
  %26 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub15 = sub nsw i32 %25, %26
  %cmp16 = icmp sgt i32 %23, %sub15
  br i1 %cmp16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %do.end
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %27, i32 0, i32 14
  %28 = load i32, i32* %height18, align 4, !tbaa !57
  %29 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub19 = sub nsw i32 %28, %29
  store i32 %sub19, i32* %h.addr, align 4, !tbaa !5
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %do.end
  %30 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp21 = icmp sle i32 %30, 0
  br i1 %cmp21, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.20
  %31 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp22 = icmp sle i32 %31, 0
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %lor.lhs.false, %if.end.20
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.175

if.end.24:                                        ; preds = %lor.lhs.false
  br label %do.cond.25

do.cond.25:                                       ; preds = %if.end.24
  br label %do.end.26

do.end.26:                                        ; preds = %do.cond.25
  %32 = bitcast i8** %data_row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #1
  %33 = load i8*, i8** %data.addr, align 8, !tbaa !1
  store i8* %33, i8** %data_row, align 8, !tbaa !1
  %34 = bitcast i32* %cy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  %35 = load i32, i32* %y.addr, align 4, !tbaa !5
  %36 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %phase = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %36, i32 0, i32 46
  %y27 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 1
  %37 = load i32, i32* %y27, align 4, !tbaa !35
  %add28 = add nsw i32 %35, %37
  %38 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %38, i32 0, i32 44
  %rep_height = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles, i32 0, i32 5
  %39 = load i16, i16* %rep_height, align 2, !tbaa !46
  %conv = zext i16 %39 to i32
  %rem = srem i32 %add28, %conv
  store i32 %rem, i32* %cy, align 4, !tbaa !5
  %40 = bitcast i8** %tile_row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #1
  %41 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles29 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %41, i32 0, i32 44
  %data30 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles29, i32 0, i32 0
  %42 = load i8*, i8** %data30, align 8, !tbaa !52
  %43 = load i32, i32* %cy, align 4, !tbaa !5
  %44 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles31 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %44, i32 0, i32 44
  %raster32 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles31, i32 0, i32 1
  %45 = load i32, i32* %raster32, align 4, !tbaa !53
  %mul33 = mul nsw i32 %43, %45
  %idx.ext34 = sext i32 %mul33 to i64
  %add.ptr35 = getelementptr inbounds i8, i8* %42, i64 %idx.ext34
  store i8* %add.ptr35, i8** %tile_row, align 8, !tbaa !1
  %46 = bitcast i32* %ty to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #1
  %47 = load i32, i32* %y.addr, align 4, !tbaa !5
  store i32 %47, i32* %ty, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.26
  %48 = load i32, i32* %ty, align 4, !tbaa !5
  %49 = load i32, i32* %y.addr, align 4, !tbaa !5
  %50 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add36 = add nsw i32 %49, %50
  %cmp37 = icmp slt i32 %48, %add36
  br i1 %cmp37, label %for.body, label %for.end.168

for.body:                                         ; preds = %for.cond
  %51 = bitcast i32* %cx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #1
  %52 = load i32, i32* %x.addr, align 4, !tbaa !5
  %53 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %phase39 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %53, i32 0, i32 46
  %x40 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase39, i32 0, i32 0
  %54 = load i32, i32* %x40, align 4, !tbaa !12
  %55 = load i32, i32* %ty, align 4, !tbaa !5
  %56 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %phase41 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %56, i32 0, i32 46
  %y42 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase41, i32 0, i32 1
  %57 = load i32, i32* %y42, align 4, !tbaa !35
  %add43 = add nsw i32 %55, %57
  %58 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles44 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %58, i32 0, i32 44
  %rep_height45 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles44, i32 0, i32 5
  %59 = load i16, i16* %rep_height45, align 2, !tbaa !46
  %conv46 = zext i16 %59 to i32
  %div = sdiv i32 %add43, %conv46
  %60 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles47 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %60, i32 0, i32 44
  %rep_shift = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles47, i32 0, i32 6
  %61 = load i16, i16* %rep_shift, align 2, !tbaa !47
  %conv48 = zext i16 %61 to i32
  %mul49 = mul nsw i32 %div, %conv48
  %add50 = add nsw i32 %54, %mul49
  %add51 = add nsw i32 %52, %add50
  %62 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles52 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %62, i32 0, i32 44
  %rep_width = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles52, i32 0, i32 4
  %63 = load i16, i16* %rep_width, align 2, !tbaa !50
  %conv53 = zext i16 %63 to i32
  %rem54 = srem i32 %add51, %conv53
  store i32 %rem54, i32* %cx, align 4, !tbaa !5
  %64 = bitcast i8** %tp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %64) #1
  %65 = load i8*, i8** %tile_row, align 8, !tbaa !1
  %66 = load i32, i32* %cx, align 4, !tbaa !5
  %shr = ashr i32 %66, 3
  %idx.ext55 = sext i32 %shr to i64
  %add.ptr56 = getelementptr inbounds i8, i8* %65, i64 %idx.ext55
  store i8* %add.ptr56, i8** %tp, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %tbit) #1
  %67 = load i32, i32* %cx, align 4, !tbaa !5
  %and = and i32 %67, 7
  %shr57 = ashr i32 128, %and
  %conv58 = trunc i32 %shr57 to i8
  store i8 %conv58, i8* %tbit, align 1, !tbaa !58
  %68 = bitcast i32* %tx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %68) #1
  %69 = load i32, i32* %x.addr, align 4, !tbaa !5
  store i32 %69, i32* %tx, align 4, !tbaa !5
  br label %for.cond.59

for.cond.59:                                      ; preds = %cleanup.cont.143, %for.body
  %70 = load i32, i32* %tx, align 4, !tbaa !5
  %71 = load i32, i32* %x.addr, align 4, !tbaa !5
  %72 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add60 = add nsw i32 %71, %72
  %cmp61 = icmp slt i32 %70, %add60
  br i1 %cmp61, label %for.body.63, label %for.end

for.body.63:                                      ; preds = %for.cond.59
  %73 = bitcast i32* %txrun to i8*
  call void @llvm.lifetime.start(i64 4, i8* %73) #1
  br label %while.cond

while.cond:                                       ; preds = %do.end.89, %for.body.63
  %74 = load i32, i32* %tx, align 4, !tbaa !5
  %75 = load i32, i32* %x.addr, align 4, !tbaa !5
  %76 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add64 = add nsw i32 %75, %76
  %cmp65 = icmp slt i32 %74, %add64
  br i1 %cmp65, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %77 = load i8*, i8** %tp, align 8, !tbaa !1
  %78 = load i8, i8* %77, align 1, !tbaa !58
  %conv67 = zext i8 %78 to i32
  %79 = load i8, i8* %tbit, align 1, !tbaa !58
  %conv68 = zext i8 %79 to i32
  %and69 = and i32 %conv67, %conv68
  %cmp70 = icmp eq i32 %and69, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %80 = phi i1 [ false, %while.cond ], [ %cmp70, %land.rhs ]
  br i1 %80, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %do.body.72

do.body.72:                                       ; preds = %while.body
  %81 = load i32, i32* %cx, align 4, !tbaa !5
  %inc = add nsw i32 %81, 1
  store i32 %inc, i32* %cx, align 4, !tbaa !5
  %82 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles73 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %82, i32 0, i32 44
  %size = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles73, i32 0, i32 2
  %x74 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size, i32 0, i32 0
  %83 = load i32, i32* %x74, align 4, !tbaa !51
  %cmp75 = icmp eq i32 %inc, %83
  br i1 %cmp75, label %if.then.77, label %if.else

if.then.77:                                       ; preds = %do.body.72
  store i32 0, i32* %cx, align 4, !tbaa !5
  %84 = load i8*, i8** %tile_row, align 8, !tbaa !1
  store i8* %84, i8** %tp, align 8, !tbaa !1
  store i8 -128, i8* %tbit, align 1, !tbaa !58
  br label %if.end.86

if.else:                                          ; preds = %do.body.72
  %85 = load i8, i8* %tbit, align 1, !tbaa !58
  %conv78 = zext i8 %85 to i32
  %shr79 = ashr i32 %conv78, 1
  %conv80 = trunc i32 %shr79 to i8
  store i8 %conv80, i8* %tbit, align 1, !tbaa !58
  %conv81 = zext i8 %conv80 to i32
  %cmp82 = icmp eq i32 %conv81, 0
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.else
  %86 = load i8*, i8** %tp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %incdec.ptr, i8** %tp, align 8, !tbaa !1
  store i8 -128, i8* %tbit, align 1, !tbaa !58
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.84, %if.else
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.then.77
  %87 = load i32, i32* %tx, align 4, !tbaa !5
  %inc87 = add nsw i32 %87, 1
  store i32 %inc87, i32* %tx, align 4, !tbaa !5
  br label %do.cond.88

do.cond.88:                                       ; preds = %if.end.86
  br label %do.end.89

do.end.89:                                        ; preds = %do.cond.88
  br label %while.cond

while.end:                                        ; preds = %land.end
  %88 = load i32, i32* %tx, align 4, !tbaa !5
  %89 = load i32, i32* %x.addr, align 4, !tbaa !5
  %90 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add90 = add nsw i32 %89, %90
  %cmp91 = icmp eq i32 %88, %add90
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %while.end
  store i32 9, i32* %cleanup.dest.slot
  br label %cleanup.141

if.end.94:                                        ; preds = %while.end
  %91 = load i32, i32* %tx, align 4, !tbaa !5
  store i32 %91, i32* %txrun, align 4, !tbaa !5
  br label %do.body.95

do.body.95:                                       ; preds = %land.end.128, %if.end.94
  br label %do.body.96

do.body.96:                                       ; preds = %do.body.95
  %92 = load i32, i32* %cx, align 4, !tbaa !5
  %inc97 = add nsw i32 %92, 1
  store i32 %inc97, i32* %cx, align 4, !tbaa !5
  %93 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles98 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %93, i32 0, i32 44
  %size99 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles98, i32 0, i32 2
  %x100 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size99, i32 0, i32 0
  %94 = load i32, i32* %x100, align 4, !tbaa !51
  %cmp101 = icmp eq i32 %inc97, %94
  br i1 %cmp101, label %if.then.103, label %if.else.104

if.then.103:                                      ; preds = %do.body.96
  store i32 0, i32* %cx, align 4, !tbaa !5
  %95 = load i8*, i8** %tile_row, align 8, !tbaa !1
  store i8* %95, i8** %tp, align 8, !tbaa !1
  store i8 -128, i8* %tbit, align 1, !tbaa !58
  br label %if.end.114

if.else.104:                                      ; preds = %do.body.96
  %96 = load i8, i8* %tbit, align 1, !tbaa !58
  %conv105 = zext i8 %96 to i32
  %shr106 = ashr i32 %conv105, 1
  %conv107 = trunc i32 %shr106 to i8
  store i8 %conv107, i8* %tbit, align 1, !tbaa !58
  %conv108 = zext i8 %conv107 to i32
  %cmp109 = icmp eq i32 %conv108, 0
  br i1 %cmp109, label %if.then.111, label %if.end.113

if.then.111:                                      ; preds = %if.else.104
  %97 = load i8*, i8** %tp, align 8, !tbaa !1
  %incdec.ptr112 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %incdec.ptr112, i8** %tp, align 8, !tbaa !1
  store i8 -128, i8* %tbit, align 1, !tbaa !58
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.111, %if.else.104
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %if.then.103
  %98 = load i32, i32* %tx, align 4, !tbaa !5
  %inc115 = add nsw i32 %98, 1
  store i32 %inc115, i32* %tx, align 4, !tbaa !5
  br label %do.cond.116

do.cond.116:                                      ; preds = %if.end.114
  br label %do.end.117

do.end.117:                                       ; preds = %do.cond.116
  br label %do.cond.118

do.cond.118:                                      ; preds = %do.end.117
  %99 = load i32, i32* %tx, align 4, !tbaa !5
  %100 = load i32, i32* %x.addr, align 4, !tbaa !5
  %101 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add119 = add nsw i32 %100, %101
  %cmp120 = icmp slt i32 %99, %add119
  br i1 %cmp120, label %land.rhs.122, label %land.end.128

land.rhs.122:                                     ; preds = %do.cond.118
  %102 = load i8*, i8** %tp, align 8, !tbaa !1
  %103 = load i8, i8* %102, align 1, !tbaa !58
  %conv123 = zext i8 %103 to i32
  %104 = load i8, i8* %tbit, align 1, !tbaa !58
  %conv124 = zext i8 %104 to i32
  %and125 = and i32 %conv123, %conv124
  %cmp126 = icmp ne i32 %and125, 0
  br label %land.end.128

land.end.128:                                     ; preds = %land.rhs.122, %do.cond.118
  %105 = phi i1 [ false, %do.cond.118 ], [ %cmp126, %land.rhs.122 ]
  br i1 %105, label %do.body.95, label %do.end.129

do.end.129:                                       ; preds = %land.end.128
  br label %do.body.130

do.body.130:                                      ; preds = %do.end.129
  br label %do.cond.131

do.cond.131:                                      ; preds = %do.body.130
  br label %do.end.132

do.end.132:                                       ; preds = %do.cond.131
  %106 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %106) #1
  %107 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %107, i32 0, i32 43
  %108 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !41
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %108, i32 0, i32 42
  %copy_planes = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 66
  %109 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)** %copy_planes, align 8, !tbaa !75
  %110 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %target133 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %110, i32 0, i32 43
  %111 = load %struct.gx_device_s*, %struct.gx_device_s** %target133, align 8, !tbaa !41
  %112 = load i8*, i8** %data_row, align 8, !tbaa !1
  %113 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %114 = load i32, i32* %txrun, align 4, !tbaa !5
  %add134 = add nsw i32 %113, %114
  %115 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub135 = sub nsw i32 %add134, %115
  %116 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %117 = load i32, i32* %txrun, align 4, !tbaa !5
  %118 = load i32, i32* %ty, align 4, !tbaa !5
  %119 = load i32, i32* %tx, align 4, !tbaa !5
  %120 = load i32, i32* %txrun, align 4, !tbaa !5
  %sub136 = sub nsw i32 %119, %120
  %121 = load i32, i32* %plane_height.addr, align 4, !tbaa !5
  %call = call i32 %109(%struct.gx_device_s* %111, i8* %112, i32 %sub135, i32 %116, i64 0, i32 %117, i32 %118, i32 %sub136, i32 1, i32 %121) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %122 = load i32, i32* %code, align 4, !tbaa !5
  %cmp137 = icmp slt i32 %122, 0
  br i1 %cmp137, label %if.then.139, label %if.end.140

if.then.139:                                      ; preds = %do.end.132
  %123 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %123, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.140:                                       ; preds = %do.end.132
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.140, %if.then.139
  %124 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.141 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.141

cleanup.141:                                      ; preds = %cleanup.cont, %cleanup, %if.then.93
  %125 = bitcast i32* %txrun to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #1
  %cleanup.dest.142 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.142, label %cleanup.159 [
    i32 0, label %cleanup.cont.143
    i32 9, label %for.end
  ]

cleanup.cont.143:                                 ; preds = %cleanup.141
  br label %for.cond.59

for.end:                                          ; preds = %cleanup.141, %for.cond.59
  %126 = load i32, i32* %cy, align 4, !tbaa !5
  %inc144 = add nsw i32 %126, 1
  store i32 %inc144, i32* %cy, align 4, !tbaa !5
  %127 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles145 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %127, i32 0, i32 44
  %size146 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles145, i32 0, i32 2
  %y147 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size146, i32 0, i32 1
  %128 = load i32, i32* %y147, align 4, !tbaa !48
  %cmp148 = icmp eq i32 %inc144, %128
  br i1 %cmp148, label %if.then.150, label %if.else.153

if.then.150:                                      ; preds = %for.end
  store i32 0, i32* %cy, align 4, !tbaa !5
  %129 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles151 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %129, i32 0, i32 44
  %data152 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles151, i32 0, i32 0
  %130 = load i8*, i8** %data152, align 8, !tbaa !52
  store i8* %130, i8** %tile_row, align 8, !tbaa !1
  br label %if.end.158

if.else.153:                                      ; preds = %for.end
  %131 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles154 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %131, i32 0, i32 44
  %raster155 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles154, i32 0, i32 1
  %132 = load i32, i32* %raster155, align 4, !tbaa !53
  %133 = load i8*, i8** %tile_row, align 8, !tbaa !1
  %idx.ext156 = sext i32 %132 to i64
  %add.ptr157 = getelementptr inbounds i8, i8* %133, i64 %idx.ext156
  store i8* %add.ptr157, i8** %tile_row, align 8, !tbaa !1
  br label %if.end.158

if.end.158:                                       ; preds = %if.else.153, %if.then.150
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.159

cleanup.159:                                      ; preds = %if.end.158, %cleanup.141
  %134 = bitcast i32* %tx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %134) #1
  call void @llvm.lifetime.end(i64 1, i8* %tbit) #1
  %135 = bitcast i8** %tp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %135) #1
  %136 = bitcast i32* %cx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %136) #1
  %cleanup.dest.163 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.163, label %cleanup.169 [
    i32 0, label %cleanup.cont.164
  ]

cleanup.cont.164:                                 ; preds = %cleanup.159
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont.164
  %137 = load i32, i32* %ty, align 4, !tbaa !5
  %inc165 = add nsw i32 %137, 1
  store i32 %inc165, i32* %ty, align 4, !tbaa !5
  %138 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %139 = load i8*, i8** %data_row, align 8, !tbaa !1
  %idx.ext166 = sext i32 %138 to i64
  %add.ptr167 = getelementptr inbounds i8, i8* %139, i64 %idx.ext166
  store i8* %add.ptr167, i8** %data_row, align 8, !tbaa !1
  br label %for.cond

for.end.168:                                      ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.169

cleanup.169:                                      ; preds = %for.end.168, %cleanup.159
  %140 = bitcast i32* %ty to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #1
  %141 = bitcast i8** %tile_row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %141) #1
  %142 = bitcast i32* %cy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %142) #1
  %143 = bitcast i8** %data_row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %143) #1
  %cleanup.dest.173 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.173, label %cleanup.175 [
    i32 0, label %cleanup.cont.174
  ]

cleanup.cont.174:                                 ; preds = %cleanup.169
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.175

cleanup.175:                                      ; preds = %cleanup.cont.174, %cleanup.169, %if.then.23
  %144 = bitcast %struct.gx_device_mask_clip_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %144) #1
  %145 = load i32, i32* %retval
  ret i32 %145
}

; Function Attrs: nounwind uwtable
define internal i32 @tile_clip_strip_copy_rop2(%struct.gx_device_s* %dev, i8* %data, i32 %sourcex, i32 %raster, i64 %id, i64* %scolors, %struct.gx_strip_bitmap_s* %textures, i64* %tcolors, i32 %x, i32 %y, i32 %w, i32 %h, i32 %phase_x, i32 %phase_y, i32 %lop, i32 %planar_height) #0 {
entry:
  %retval = alloca i32, align 4
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
  %cleanup.dest.slot = alloca i32
  %data_row = alloca i8*, align 8
  %cy = alloca i32, align 4
  %tile_row = alloca i8*, align 8
  %ty = alloca i32, align 4
  %cx = alloca i32, align 4
  %tp = alloca i8*, align 8
  %tbit = alloca i8, align 1
  %tx = alloca i32, align 4
  %txrun = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !8
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
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_mask_clip_s*
  store %struct.gx_device_mask_clip_s* %2, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %3 = load i32, i32* %x.addr, align 4, !tbaa !5
  %4 = load i32, i32* %y.addr, align 4, !tbaa !5
  %or = or i32 %3, %4
  %cmp = icmp slt i32 %or, 0
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %do.body.1
  %5 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %5, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %6 = load i32, i32* %x.addr, align 4, !tbaa !5
  %7 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add = add nsw i32 %7, %6
  store i32 %add, i32* %w.addr, align 4, !tbaa !5
  %8 = load i32, i32* %x.addr, align 4, !tbaa !5
  %9 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %9, %8
  store i32 %sub, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 0, i32* %x.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %10 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %10, 0
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %11 = load i32, i32* %y.addr, align 4, !tbaa !5
  %12 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add6 = add nsw i32 %12, %11
  store i32 %add6, i32* %h.addr, align 4, !tbaa !5
  %13 = load i32, i32* %y.addr, align 4, !tbaa !5
  %14 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %mul = mul i32 %13, %14
  %15 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %mul to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 %idx.neg
  store i8* %add.ptr, i8** %data.addr, align 8, !tbaa !1
  store i64 0, i64* %id.addr, align 8, !tbaa !8
  store i32 0, i32* %y.addr, align 4, !tbaa !5
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %do.body.1
  %16 = load i32, i32* %w.addr, align 4, !tbaa !5
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 13
  %18 = load i32, i32* %width, align 4, !tbaa !56
  %19 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub9 = sub nsw i32 %18, %19
  %cmp10 = icmp sgt i32 %16, %sub9
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.8
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width12 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 13
  %21 = load i32, i32* %width12, align 4, !tbaa !56
  %22 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub13 = sub nsw i32 %21, %22
  store i32 %sub13, i32* %w.addr, align 4, !tbaa !5
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.end.8
  br label %do.cond

do.cond:                                          ; preds = %if.end.14
  br label %do.end

do.end:                                           ; preds = %do.cond
  %23 = load i32, i32* %h.addr, align 4, !tbaa !5
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %24, i32 0, i32 14
  %25 = load i32, i32* %height, align 4, !tbaa !57
  %26 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub15 = sub nsw i32 %25, %26
  %cmp16 = icmp sgt i32 %23, %sub15
  br i1 %cmp16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %do.end
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %27, i32 0, i32 14
  %28 = load i32, i32* %height18, align 4, !tbaa !57
  %29 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub19 = sub nsw i32 %28, %29
  store i32 %sub19, i32* %h.addr, align 4, !tbaa !5
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %do.end
  %30 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp21 = icmp sle i32 %30, 0
  br i1 %cmp21, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.20
  %31 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp22 = icmp sle i32 %31, 0
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %lor.lhs.false, %if.end.20
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.175

if.end.24:                                        ; preds = %lor.lhs.false
  br label %do.cond.25

do.cond.25:                                       ; preds = %if.end.24
  br label %do.end.26

do.end.26:                                        ; preds = %do.cond.25
  %32 = bitcast i8** %data_row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #1
  %33 = load i8*, i8** %data.addr, align 8, !tbaa !1
  store i8* %33, i8** %data_row, align 8, !tbaa !1
  %34 = bitcast i32* %cy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  %35 = load i32, i32* %y.addr, align 4, !tbaa !5
  %36 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %phase = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %36, i32 0, i32 46
  %y27 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 1
  %37 = load i32, i32* %y27, align 4, !tbaa !35
  %add28 = add nsw i32 %35, %37
  %38 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %38, i32 0, i32 44
  %rep_height = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles, i32 0, i32 5
  %39 = load i16, i16* %rep_height, align 2, !tbaa !46
  %conv = zext i16 %39 to i32
  %rem = srem i32 %add28, %conv
  store i32 %rem, i32* %cy, align 4, !tbaa !5
  %40 = bitcast i8** %tile_row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #1
  %41 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles29 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %41, i32 0, i32 44
  %data30 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles29, i32 0, i32 0
  %42 = load i8*, i8** %data30, align 8, !tbaa !52
  %43 = load i32, i32* %cy, align 4, !tbaa !5
  %44 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles31 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %44, i32 0, i32 44
  %raster32 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles31, i32 0, i32 1
  %45 = load i32, i32* %raster32, align 4, !tbaa !53
  %mul33 = mul nsw i32 %43, %45
  %idx.ext34 = sext i32 %mul33 to i64
  %add.ptr35 = getelementptr inbounds i8, i8* %42, i64 %idx.ext34
  store i8* %add.ptr35, i8** %tile_row, align 8, !tbaa !1
  %46 = bitcast i32* %ty to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #1
  %47 = load i32, i32* %y.addr, align 4, !tbaa !5
  store i32 %47, i32* %ty, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.26
  %48 = load i32, i32* %ty, align 4, !tbaa !5
  %49 = load i32, i32* %y.addr, align 4, !tbaa !5
  %50 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add36 = add nsw i32 %49, %50
  %cmp37 = icmp slt i32 %48, %add36
  br i1 %cmp37, label %for.body, label %for.end.168

for.body:                                         ; preds = %for.cond
  %51 = bitcast i32* %cx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #1
  %52 = load i32, i32* %x.addr, align 4, !tbaa !5
  %53 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %phase39 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %53, i32 0, i32 46
  %x40 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase39, i32 0, i32 0
  %54 = load i32, i32* %x40, align 4, !tbaa !12
  %55 = load i32, i32* %ty, align 4, !tbaa !5
  %56 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %phase41 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %56, i32 0, i32 46
  %y42 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase41, i32 0, i32 1
  %57 = load i32, i32* %y42, align 4, !tbaa !35
  %add43 = add nsw i32 %55, %57
  %58 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles44 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %58, i32 0, i32 44
  %rep_height45 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles44, i32 0, i32 5
  %59 = load i16, i16* %rep_height45, align 2, !tbaa !46
  %conv46 = zext i16 %59 to i32
  %div = sdiv i32 %add43, %conv46
  %60 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles47 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %60, i32 0, i32 44
  %rep_shift = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles47, i32 0, i32 6
  %61 = load i16, i16* %rep_shift, align 2, !tbaa !47
  %conv48 = zext i16 %61 to i32
  %mul49 = mul nsw i32 %div, %conv48
  %add50 = add nsw i32 %54, %mul49
  %add51 = add nsw i32 %52, %add50
  %62 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles52 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %62, i32 0, i32 44
  %rep_width = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles52, i32 0, i32 4
  %63 = load i16, i16* %rep_width, align 2, !tbaa !50
  %conv53 = zext i16 %63 to i32
  %rem54 = srem i32 %add51, %conv53
  store i32 %rem54, i32* %cx, align 4, !tbaa !5
  %64 = bitcast i8** %tp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %64) #1
  %65 = load i8*, i8** %tile_row, align 8, !tbaa !1
  %66 = load i32, i32* %cx, align 4, !tbaa !5
  %shr = ashr i32 %66, 3
  %idx.ext55 = sext i32 %shr to i64
  %add.ptr56 = getelementptr inbounds i8, i8* %65, i64 %idx.ext55
  store i8* %add.ptr56, i8** %tp, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %tbit) #1
  %67 = load i32, i32* %cx, align 4, !tbaa !5
  %and = and i32 %67, 7
  %shr57 = ashr i32 128, %and
  %conv58 = trunc i32 %shr57 to i8
  store i8 %conv58, i8* %tbit, align 1, !tbaa !58
  %68 = bitcast i32* %tx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %68) #1
  %69 = load i32, i32* %x.addr, align 4, !tbaa !5
  store i32 %69, i32* %tx, align 4, !tbaa !5
  br label %for.cond.59

for.cond.59:                                      ; preds = %cleanup.cont.143, %for.body
  %70 = load i32, i32* %tx, align 4, !tbaa !5
  %71 = load i32, i32* %x.addr, align 4, !tbaa !5
  %72 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add60 = add nsw i32 %71, %72
  %cmp61 = icmp slt i32 %70, %add60
  br i1 %cmp61, label %for.body.63, label %for.end

for.body.63:                                      ; preds = %for.cond.59
  %73 = bitcast i32* %txrun to i8*
  call void @llvm.lifetime.start(i64 4, i8* %73) #1
  br label %while.cond

while.cond:                                       ; preds = %do.end.89, %for.body.63
  %74 = load i32, i32* %tx, align 4, !tbaa !5
  %75 = load i32, i32* %x.addr, align 4, !tbaa !5
  %76 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add64 = add nsw i32 %75, %76
  %cmp65 = icmp slt i32 %74, %add64
  br i1 %cmp65, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %77 = load i8*, i8** %tp, align 8, !tbaa !1
  %78 = load i8, i8* %77, align 1, !tbaa !58
  %conv67 = zext i8 %78 to i32
  %79 = load i8, i8* %tbit, align 1, !tbaa !58
  %conv68 = zext i8 %79 to i32
  %and69 = and i32 %conv67, %conv68
  %cmp70 = icmp eq i32 %and69, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %80 = phi i1 [ false, %while.cond ], [ %cmp70, %land.rhs ]
  br i1 %80, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %do.body.72

do.body.72:                                       ; preds = %while.body
  %81 = load i32, i32* %cx, align 4, !tbaa !5
  %inc = add nsw i32 %81, 1
  store i32 %inc, i32* %cx, align 4, !tbaa !5
  %82 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles73 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %82, i32 0, i32 44
  %size = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles73, i32 0, i32 2
  %x74 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size, i32 0, i32 0
  %83 = load i32, i32* %x74, align 4, !tbaa !51
  %cmp75 = icmp eq i32 %inc, %83
  br i1 %cmp75, label %if.then.77, label %if.else

if.then.77:                                       ; preds = %do.body.72
  store i32 0, i32* %cx, align 4, !tbaa !5
  %84 = load i8*, i8** %tile_row, align 8, !tbaa !1
  store i8* %84, i8** %tp, align 8, !tbaa !1
  store i8 -128, i8* %tbit, align 1, !tbaa !58
  br label %if.end.86

if.else:                                          ; preds = %do.body.72
  %85 = load i8, i8* %tbit, align 1, !tbaa !58
  %conv78 = zext i8 %85 to i32
  %shr79 = ashr i32 %conv78, 1
  %conv80 = trunc i32 %shr79 to i8
  store i8 %conv80, i8* %tbit, align 1, !tbaa !58
  %conv81 = zext i8 %conv80 to i32
  %cmp82 = icmp eq i32 %conv81, 0
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.else
  %86 = load i8*, i8** %tp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %incdec.ptr, i8** %tp, align 8, !tbaa !1
  store i8 -128, i8* %tbit, align 1, !tbaa !58
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.84, %if.else
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.then.77
  %87 = load i32, i32* %tx, align 4, !tbaa !5
  %inc87 = add nsw i32 %87, 1
  store i32 %inc87, i32* %tx, align 4, !tbaa !5
  br label %do.cond.88

do.cond.88:                                       ; preds = %if.end.86
  br label %do.end.89

do.end.89:                                        ; preds = %do.cond.88
  br label %while.cond

while.end:                                        ; preds = %land.end
  %88 = load i32, i32* %tx, align 4, !tbaa !5
  %89 = load i32, i32* %x.addr, align 4, !tbaa !5
  %90 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add90 = add nsw i32 %89, %90
  %cmp91 = icmp eq i32 %88, %add90
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %while.end
  store i32 9, i32* %cleanup.dest.slot
  br label %cleanup.141

if.end.94:                                        ; preds = %while.end
  %91 = load i32, i32* %tx, align 4, !tbaa !5
  store i32 %91, i32* %txrun, align 4, !tbaa !5
  br label %do.body.95

do.body.95:                                       ; preds = %land.end.128, %if.end.94
  br label %do.body.96

do.body.96:                                       ; preds = %do.body.95
  %92 = load i32, i32* %cx, align 4, !tbaa !5
  %inc97 = add nsw i32 %92, 1
  store i32 %inc97, i32* %cx, align 4, !tbaa !5
  %93 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles98 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %93, i32 0, i32 44
  %size99 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles98, i32 0, i32 2
  %x100 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size99, i32 0, i32 0
  %94 = load i32, i32* %x100, align 4, !tbaa !51
  %cmp101 = icmp eq i32 %inc97, %94
  br i1 %cmp101, label %if.then.103, label %if.else.104

if.then.103:                                      ; preds = %do.body.96
  store i32 0, i32* %cx, align 4, !tbaa !5
  %95 = load i8*, i8** %tile_row, align 8, !tbaa !1
  store i8* %95, i8** %tp, align 8, !tbaa !1
  store i8 -128, i8* %tbit, align 1, !tbaa !58
  br label %if.end.114

if.else.104:                                      ; preds = %do.body.96
  %96 = load i8, i8* %tbit, align 1, !tbaa !58
  %conv105 = zext i8 %96 to i32
  %shr106 = ashr i32 %conv105, 1
  %conv107 = trunc i32 %shr106 to i8
  store i8 %conv107, i8* %tbit, align 1, !tbaa !58
  %conv108 = zext i8 %conv107 to i32
  %cmp109 = icmp eq i32 %conv108, 0
  br i1 %cmp109, label %if.then.111, label %if.end.113

if.then.111:                                      ; preds = %if.else.104
  %97 = load i8*, i8** %tp, align 8, !tbaa !1
  %incdec.ptr112 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %incdec.ptr112, i8** %tp, align 8, !tbaa !1
  store i8 -128, i8* %tbit, align 1, !tbaa !58
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.111, %if.else.104
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %if.then.103
  %98 = load i32, i32* %tx, align 4, !tbaa !5
  %inc115 = add nsw i32 %98, 1
  store i32 %inc115, i32* %tx, align 4, !tbaa !5
  br label %do.cond.116

do.cond.116:                                      ; preds = %if.end.114
  br label %do.end.117

do.end.117:                                       ; preds = %do.cond.116
  br label %do.cond.118

do.cond.118:                                      ; preds = %do.end.117
  %99 = load i32, i32* %tx, align 4, !tbaa !5
  %100 = load i32, i32* %x.addr, align 4, !tbaa !5
  %101 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add119 = add nsw i32 %100, %101
  %cmp120 = icmp slt i32 %99, %add119
  br i1 %cmp120, label %land.rhs.122, label %land.end.128

land.rhs.122:                                     ; preds = %do.cond.118
  %102 = load i8*, i8** %tp, align 8, !tbaa !1
  %103 = load i8, i8* %102, align 1, !tbaa !58
  %conv123 = zext i8 %103 to i32
  %104 = load i8, i8* %tbit, align 1, !tbaa !58
  %conv124 = zext i8 %104 to i32
  %and125 = and i32 %conv123, %conv124
  %cmp126 = icmp ne i32 %and125, 0
  br label %land.end.128

land.end.128:                                     ; preds = %land.rhs.122, %do.cond.118
  %105 = phi i1 [ false, %do.cond.118 ], [ %cmp126, %land.rhs.122 ]
  br i1 %105, label %do.body.95, label %do.end.129

do.end.129:                                       ; preds = %land.end.128
  br label %do.body.130

do.body.130:                                      ; preds = %do.end.129
  br label %do.cond.131

do.cond.131:                                      ; preds = %do.body.130
  br label %do.end.132

do.end.132:                                       ; preds = %do.cond.131
  %106 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %106) #1
  %107 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %107, i32 0, i32 43
  %108 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !41
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %108, i32 0, i32 42
  %strip_copy_rop2 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 69
  %109 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)** %strip_copy_rop2, align 8, !tbaa !76
  %110 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %target133 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %110, i32 0, i32 43
  %111 = load %struct.gx_device_s*, %struct.gx_device_s** %target133, align 8, !tbaa !41
  %112 = load i8*, i8** %data_row, align 8, !tbaa !1
  %113 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %114 = load i32, i32* %txrun, align 4, !tbaa !5
  %add134 = add nsw i32 %113, %114
  %115 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub135 = sub nsw i32 %add134, %115
  %116 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %117 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %118 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %119 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %120 = load i32, i32* %txrun, align 4, !tbaa !5
  %121 = load i32, i32* %ty, align 4, !tbaa !5
  %122 = load i32, i32* %tx, align 4, !tbaa !5
  %123 = load i32, i32* %txrun, align 4, !tbaa !5
  %sub136 = sub nsw i32 %122, %123
  %124 = load i32, i32* %phase_x.addr, align 4, !tbaa !5
  %125 = load i32, i32* %phase_y.addr, align 4, !tbaa !5
  %126 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %127 = load i32, i32* %planar_height.addr, align 4, !tbaa !5
  %call = call i32 %109(%struct.gx_device_s* %111, i8* %112, i32 %sub135, i32 %116, i64 0, i64* %117, %struct.gx_strip_bitmap_s* %118, i64* %119, i32 %120, i32 %121, i32 %sub136, i32 1, i32 %124, i32 %125, i32 %126, i32 %127) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %128 = load i32, i32* %code, align 4, !tbaa !5
  %cmp137 = icmp slt i32 %128, 0
  br i1 %cmp137, label %if.then.139, label %if.end.140

if.then.139:                                      ; preds = %do.end.132
  %129 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %129, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.140:                                       ; preds = %do.end.132
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.140, %if.then.139
  %130 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %130) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.141 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.141

cleanup.141:                                      ; preds = %cleanup.cont, %cleanup, %if.then.93
  %131 = bitcast i32* %txrun to i8*
  call void @llvm.lifetime.end(i64 4, i8* %131) #1
  %cleanup.dest.142 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.142, label %cleanup.159 [
    i32 0, label %cleanup.cont.143
    i32 9, label %for.end
  ]

cleanup.cont.143:                                 ; preds = %cleanup.141
  br label %for.cond.59

for.end:                                          ; preds = %cleanup.141, %for.cond.59
  %132 = load i32, i32* %cy, align 4, !tbaa !5
  %inc144 = add nsw i32 %132, 1
  store i32 %inc144, i32* %cy, align 4, !tbaa !5
  %133 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles145 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %133, i32 0, i32 44
  %size146 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles145, i32 0, i32 2
  %y147 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size146, i32 0, i32 1
  %134 = load i32, i32* %y147, align 4, !tbaa !48
  %cmp148 = icmp eq i32 %inc144, %134
  br i1 %cmp148, label %if.then.150, label %if.else.153

if.then.150:                                      ; preds = %for.end
  store i32 0, i32* %cy, align 4, !tbaa !5
  %135 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles151 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %135, i32 0, i32 44
  %data152 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles151, i32 0, i32 0
  %136 = load i8*, i8** %data152, align 8, !tbaa !52
  store i8* %136, i8** %tile_row, align 8, !tbaa !1
  br label %if.end.158

if.else.153:                                      ; preds = %for.end
  %137 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles154 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %137, i32 0, i32 44
  %raster155 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles154, i32 0, i32 1
  %138 = load i32, i32* %raster155, align 4, !tbaa !53
  %139 = load i8*, i8** %tile_row, align 8, !tbaa !1
  %idx.ext156 = sext i32 %138 to i64
  %add.ptr157 = getelementptr inbounds i8, i8* %139, i64 %idx.ext156
  store i8* %add.ptr157, i8** %tile_row, align 8, !tbaa !1
  br label %if.end.158

if.end.158:                                       ; preds = %if.else.153, %if.then.150
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.159

cleanup.159:                                      ; preds = %if.end.158, %cleanup.141
  %140 = bitcast i32* %tx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #1
  call void @llvm.lifetime.end(i64 1, i8* %tbit) #1
  %141 = bitcast i8** %tp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %141) #1
  %142 = bitcast i32* %cx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %142) #1
  %cleanup.dest.163 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.163, label %cleanup.169 [
    i32 0, label %cleanup.cont.164
  ]

cleanup.cont.164:                                 ; preds = %cleanup.159
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont.164
  %143 = load i32, i32* %ty, align 4, !tbaa !5
  %inc165 = add nsw i32 %143, 1
  store i32 %inc165, i32* %ty, align 4, !tbaa !5
  %144 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %145 = load i8*, i8** %data_row, align 8, !tbaa !1
  %idx.ext166 = zext i32 %144 to i64
  %add.ptr167 = getelementptr inbounds i8, i8* %145, i64 %idx.ext166
  store i8* %add.ptr167, i8** %data_row, align 8, !tbaa !1
  br label %for.cond

for.end.168:                                      ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.169

cleanup.169:                                      ; preds = %for.end.168, %cleanup.159
  %146 = bitcast i32* %ty to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146) #1
  %147 = bitcast i8** %tile_row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %147) #1
  %148 = bitcast i32* %cy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %148) #1
  %149 = bitcast i8** %data_row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %149) #1
  %cleanup.dest.173 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.173, label %cleanup.175 [
    i32 0, label %cleanup.cont.174
  ]

cleanup.cont.174:                                 ; preds = %cleanup.169
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.175

cleanup.175:                                      ; preds = %cleanup.cont.174, %cleanup.169, %if.then.23
  %150 = bitcast %struct.gx_device_mask_clip_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %150) #1
  %151 = load i32, i32* %retval
  ret i32 %151
}

declare i32 @gx_default_strip_tile_rect_devn(%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @tile_clip_copy_alpha_hl_color(%struct.gx_device_s* %dev, i8* %data, i32 %sourcex, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, %struct.gx_device_color_s* %pdcolor, i32 %depth) #0 {
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
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %depth.addr = alloca i32, align 4
  %cdev = alloca %struct.gx_device_mask_clip_s*, align 8
  %cleanup.dest.slot = alloca i32
  %data_row = alloca i8*, align 8
  %cy = alloca i32, align 4
  %tile_row = alloca i8*, align 8
  %ty = alloca i32, align 4
  %cx = alloca i32, align 4
  %tp = alloca i8*, align 8
  %tbit = alloca i8, align 1
  %tx = alloca i32, align 4
  %txrun = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !8
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_mask_clip_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_mask_clip_s*
  store %struct.gx_device_mask_clip_s* %2, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %3 = load i32, i32* %x.addr, align 4, !tbaa !5
  %4 = load i32, i32* %y.addr, align 4, !tbaa !5
  %or = or i32 %3, %4
  %cmp = icmp slt i32 %or, 0
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %do.body.1
  %5 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %5, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %6 = load i32, i32* %x.addr, align 4, !tbaa !5
  %7 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add = add nsw i32 %7, %6
  store i32 %add, i32* %w.addr, align 4, !tbaa !5
  %8 = load i32, i32* %x.addr, align 4, !tbaa !5
  %9 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %9, %8
  store i32 %sub, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 0, i32* %x.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %10 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %10, 0
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %11 = load i32, i32* %y.addr, align 4, !tbaa !5
  %12 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add6 = add nsw i32 %12, %11
  store i32 %add6, i32* %h.addr, align 4, !tbaa !5
  %13 = load i32, i32* %y.addr, align 4, !tbaa !5
  %14 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %13, %14
  %15 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %mul to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 %idx.neg
  store i8* %add.ptr, i8** %data.addr, align 8, !tbaa !1
  store i64 0, i64* %id.addr, align 8, !tbaa !8
  store i32 0, i32* %y.addr, align 4, !tbaa !5
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %do.body.1
  %16 = load i32, i32* %w.addr, align 4, !tbaa !5
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 13
  %18 = load i32, i32* %width, align 4, !tbaa !56
  %19 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub9 = sub nsw i32 %18, %19
  %cmp10 = icmp sgt i32 %16, %sub9
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.8
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width12 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 13
  %21 = load i32, i32* %width12, align 4, !tbaa !56
  %22 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub13 = sub nsw i32 %21, %22
  store i32 %sub13, i32* %w.addr, align 4, !tbaa !5
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.end.8
  br label %do.cond

do.cond:                                          ; preds = %if.end.14
  br label %do.end

do.end:                                           ; preds = %do.cond
  %23 = load i32, i32* %h.addr, align 4, !tbaa !5
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %24, i32 0, i32 14
  %25 = load i32, i32* %height, align 4, !tbaa !57
  %26 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub15 = sub nsw i32 %25, %26
  %cmp16 = icmp sgt i32 %23, %sub15
  br i1 %cmp16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %do.end
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %27, i32 0, i32 14
  %28 = load i32, i32* %height18, align 4, !tbaa !57
  %29 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub19 = sub nsw i32 %28, %29
  store i32 %sub19, i32* %h.addr, align 4, !tbaa !5
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %do.end
  %30 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp21 = icmp sle i32 %30, 0
  br i1 %cmp21, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.20
  %31 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp22 = icmp sle i32 %31, 0
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %lor.lhs.false, %if.end.20
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.175

if.end.24:                                        ; preds = %lor.lhs.false
  br label %do.cond.25

do.cond.25:                                       ; preds = %if.end.24
  br label %do.end.26

do.end.26:                                        ; preds = %do.cond.25
  %32 = bitcast i8** %data_row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #1
  %33 = load i8*, i8** %data.addr, align 8, !tbaa !1
  store i8* %33, i8** %data_row, align 8, !tbaa !1
  %34 = bitcast i32* %cy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  %35 = load i32, i32* %y.addr, align 4, !tbaa !5
  %36 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %phase = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %36, i32 0, i32 46
  %y27 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 1
  %37 = load i32, i32* %y27, align 4, !tbaa !35
  %add28 = add nsw i32 %35, %37
  %38 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %38, i32 0, i32 44
  %rep_height = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles, i32 0, i32 5
  %39 = load i16, i16* %rep_height, align 2, !tbaa !46
  %conv = zext i16 %39 to i32
  %rem = srem i32 %add28, %conv
  store i32 %rem, i32* %cy, align 4, !tbaa !5
  %40 = bitcast i8** %tile_row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #1
  %41 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles29 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %41, i32 0, i32 44
  %data30 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles29, i32 0, i32 0
  %42 = load i8*, i8** %data30, align 8, !tbaa !52
  %43 = load i32, i32* %cy, align 4, !tbaa !5
  %44 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles31 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %44, i32 0, i32 44
  %raster32 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles31, i32 0, i32 1
  %45 = load i32, i32* %raster32, align 4, !tbaa !53
  %mul33 = mul nsw i32 %43, %45
  %idx.ext34 = sext i32 %mul33 to i64
  %add.ptr35 = getelementptr inbounds i8, i8* %42, i64 %idx.ext34
  store i8* %add.ptr35, i8** %tile_row, align 8, !tbaa !1
  %46 = bitcast i32* %ty to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #1
  %47 = load i32, i32* %y.addr, align 4, !tbaa !5
  store i32 %47, i32* %ty, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.26
  %48 = load i32, i32* %ty, align 4, !tbaa !5
  %49 = load i32, i32* %y.addr, align 4, !tbaa !5
  %50 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add36 = add nsw i32 %49, %50
  %cmp37 = icmp slt i32 %48, %add36
  br i1 %cmp37, label %for.body, label %for.end.168

for.body:                                         ; preds = %for.cond
  %51 = bitcast i32* %cx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #1
  %52 = load i32, i32* %x.addr, align 4, !tbaa !5
  %53 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %phase39 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %53, i32 0, i32 46
  %x40 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase39, i32 0, i32 0
  %54 = load i32, i32* %x40, align 4, !tbaa !12
  %55 = load i32, i32* %ty, align 4, !tbaa !5
  %56 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %phase41 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %56, i32 0, i32 46
  %y42 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase41, i32 0, i32 1
  %57 = load i32, i32* %y42, align 4, !tbaa !35
  %add43 = add nsw i32 %55, %57
  %58 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles44 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %58, i32 0, i32 44
  %rep_height45 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles44, i32 0, i32 5
  %59 = load i16, i16* %rep_height45, align 2, !tbaa !46
  %conv46 = zext i16 %59 to i32
  %div = sdiv i32 %add43, %conv46
  %60 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles47 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %60, i32 0, i32 44
  %rep_shift = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles47, i32 0, i32 6
  %61 = load i16, i16* %rep_shift, align 2, !tbaa !47
  %conv48 = zext i16 %61 to i32
  %mul49 = mul nsw i32 %div, %conv48
  %add50 = add nsw i32 %54, %mul49
  %add51 = add nsw i32 %52, %add50
  %62 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles52 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %62, i32 0, i32 44
  %rep_width = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles52, i32 0, i32 4
  %63 = load i16, i16* %rep_width, align 2, !tbaa !50
  %conv53 = zext i16 %63 to i32
  %rem54 = srem i32 %add51, %conv53
  store i32 %rem54, i32* %cx, align 4, !tbaa !5
  %64 = bitcast i8** %tp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %64) #1
  %65 = load i8*, i8** %tile_row, align 8, !tbaa !1
  %66 = load i32, i32* %cx, align 4, !tbaa !5
  %shr = ashr i32 %66, 3
  %idx.ext55 = sext i32 %shr to i64
  %add.ptr56 = getelementptr inbounds i8, i8* %65, i64 %idx.ext55
  store i8* %add.ptr56, i8** %tp, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %tbit) #1
  %67 = load i32, i32* %cx, align 4, !tbaa !5
  %and = and i32 %67, 7
  %shr57 = ashr i32 128, %and
  %conv58 = trunc i32 %shr57 to i8
  store i8 %conv58, i8* %tbit, align 1, !tbaa !58
  %68 = bitcast i32* %tx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %68) #1
  %69 = load i32, i32* %x.addr, align 4, !tbaa !5
  store i32 %69, i32* %tx, align 4, !tbaa !5
  br label %for.cond.59

for.cond.59:                                      ; preds = %cleanup.cont.143, %for.body
  %70 = load i32, i32* %tx, align 4, !tbaa !5
  %71 = load i32, i32* %x.addr, align 4, !tbaa !5
  %72 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add60 = add nsw i32 %71, %72
  %cmp61 = icmp slt i32 %70, %add60
  br i1 %cmp61, label %for.body.63, label %for.end

for.body.63:                                      ; preds = %for.cond.59
  %73 = bitcast i32* %txrun to i8*
  call void @llvm.lifetime.start(i64 4, i8* %73) #1
  br label %while.cond

while.cond:                                       ; preds = %do.end.89, %for.body.63
  %74 = load i32, i32* %tx, align 4, !tbaa !5
  %75 = load i32, i32* %x.addr, align 4, !tbaa !5
  %76 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add64 = add nsw i32 %75, %76
  %cmp65 = icmp slt i32 %74, %add64
  br i1 %cmp65, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %77 = load i8*, i8** %tp, align 8, !tbaa !1
  %78 = load i8, i8* %77, align 1, !tbaa !58
  %conv67 = zext i8 %78 to i32
  %79 = load i8, i8* %tbit, align 1, !tbaa !58
  %conv68 = zext i8 %79 to i32
  %and69 = and i32 %conv67, %conv68
  %cmp70 = icmp eq i32 %and69, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %80 = phi i1 [ false, %while.cond ], [ %cmp70, %land.rhs ]
  br i1 %80, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %do.body.72

do.body.72:                                       ; preds = %while.body
  %81 = load i32, i32* %cx, align 4, !tbaa !5
  %inc = add nsw i32 %81, 1
  store i32 %inc, i32* %cx, align 4, !tbaa !5
  %82 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles73 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %82, i32 0, i32 44
  %size = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles73, i32 0, i32 2
  %x74 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size, i32 0, i32 0
  %83 = load i32, i32* %x74, align 4, !tbaa !51
  %cmp75 = icmp eq i32 %inc, %83
  br i1 %cmp75, label %if.then.77, label %if.else

if.then.77:                                       ; preds = %do.body.72
  store i32 0, i32* %cx, align 4, !tbaa !5
  %84 = load i8*, i8** %tile_row, align 8, !tbaa !1
  store i8* %84, i8** %tp, align 8, !tbaa !1
  store i8 -128, i8* %tbit, align 1, !tbaa !58
  br label %if.end.86

if.else:                                          ; preds = %do.body.72
  %85 = load i8, i8* %tbit, align 1, !tbaa !58
  %conv78 = zext i8 %85 to i32
  %shr79 = ashr i32 %conv78, 1
  %conv80 = trunc i32 %shr79 to i8
  store i8 %conv80, i8* %tbit, align 1, !tbaa !58
  %conv81 = zext i8 %conv80 to i32
  %cmp82 = icmp eq i32 %conv81, 0
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.else
  %86 = load i8*, i8** %tp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %incdec.ptr, i8** %tp, align 8, !tbaa !1
  store i8 -128, i8* %tbit, align 1, !tbaa !58
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.84, %if.else
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.then.77
  %87 = load i32, i32* %tx, align 4, !tbaa !5
  %inc87 = add nsw i32 %87, 1
  store i32 %inc87, i32* %tx, align 4, !tbaa !5
  br label %do.cond.88

do.cond.88:                                       ; preds = %if.end.86
  br label %do.end.89

do.end.89:                                        ; preds = %do.cond.88
  br label %while.cond

while.end:                                        ; preds = %land.end
  %88 = load i32, i32* %tx, align 4, !tbaa !5
  %89 = load i32, i32* %x.addr, align 4, !tbaa !5
  %90 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add90 = add nsw i32 %89, %90
  %cmp91 = icmp eq i32 %88, %add90
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %while.end
  store i32 9, i32* %cleanup.dest.slot
  br label %cleanup.141

if.end.94:                                        ; preds = %while.end
  %91 = load i32, i32* %tx, align 4, !tbaa !5
  store i32 %91, i32* %txrun, align 4, !tbaa !5
  br label %do.body.95

do.body.95:                                       ; preds = %land.end.128, %if.end.94
  br label %do.body.96

do.body.96:                                       ; preds = %do.body.95
  %92 = load i32, i32* %cx, align 4, !tbaa !5
  %inc97 = add nsw i32 %92, 1
  store i32 %inc97, i32* %cx, align 4, !tbaa !5
  %93 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles98 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %93, i32 0, i32 44
  %size99 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles98, i32 0, i32 2
  %x100 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size99, i32 0, i32 0
  %94 = load i32, i32* %x100, align 4, !tbaa !51
  %cmp101 = icmp eq i32 %inc97, %94
  br i1 %cmp101, label %if.then.103, label %if.else.104

if.then.103:                                      ; preds = %do.body.96
  store i32 0, i32* %cx, align 4, !tbaa !5
  %95 = load i8*, i8** %tile_row, align 8, !tbaa !1
  store i8* %95, i8** %tp, align 8, !tbaa !1
  store i8 -128, i8* %tbit, align 1, !tbaa !58
  br label %if.end.114

if.else.104:                                      ; preds = %do.body.96
  %96 = load i8, i8* %tbit, align 1, !tbaa !58
  %conv105 = zext i8 %96 to i32
  %shr106 = ashr i32 %conv105, 1
  %conv107 = trunc i32 %shr106 to i8
  store i8 %conv107, i8* %tbit, align 1, !tbaa !58
  %conv108 = zext i8 %conv107 to i32
  %cmp109 = icmp eq i32 %conv108, 0
  br i1 %cmp109, label %if.then.111, label %if.end.113

if.then.111:                                      ; preds = %if.else.104
  %97 = load i8*, i8** %tp, align 8, !tbaa !1
  %incdec.ptr112 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %incdec.ptr112, i8** %tp, align 8, !tbaa !1
  store i8 -128, i8* %tbit, align 1, !tbaa !58
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.111, %if.else.104
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %if.then.103
  %98 = load i32, i32* %tx, align 4, !tbaa !5
  %inc115 = add nsw i32 %98, 1
  store i32 %inc115, i32* %tx, align 4, !tbaa !5
  br label %do.cond.116

do.cond.116:                                      ; preds = %if.end.114
  br label %do.end.117

do.end.117:                                       ; preds = %do.cond.116
  br label %do.cond.118

do.cond.118:                                      ; preds = %do.end.117
  %99 = load i32, i32* %tx, align 4, !tbaa !5
  %100 = load i32, i32* %x.addr, align 4, !tbaa !5
  %101 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add119 = add nsw i32 %100, %101
  %cmp120 = icmp slt i32 %99, %add119
  br i1 %cmp120, label %land.rhs.122, label %land.end.128

land.rhs.122:                                     ; preds = %do.cond.118
  %102 = load i8*, i8** %tp, align 8, !tbaa !1
  %103 = load i8, i8* %102, align 1, !tbaa !58
  %conv123 = zext i8 %103 to i32
  %104 = load i8, i8* %tbit, align 1, !tbaa !58
  %conv124 = zext i8 %104 to i32
  %and125 = and i32 %conv123, %conv124
  %cmp126 = icmp ne i32 %and125, 0
  br label %land.end.128

land.end.128:                                     ; preds = %land.rhs.122, %do.cond.118
  %105 = phi i1 [ false, %do.cond.118 ], [ %cmp126, %land.rhs.122 ]
  br i1 %105, label %do.body.95, label %do.end.129

do.end.129:                                       ; preds = %land.end.128
  br label %do.body.130

do.body.130:                                      ; preds = %do.end.129
  br label %do.cond.131

do.cond.131:                                      ; preds = %do.body.130
  br label %do.end.132

do.end.132:                                       ; preds = %do.cond.131
  %106 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %106) #1
  %107 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %107, i32 0, i32 43
  %108 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !41
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %108, i32 0, i32 42
  %copy_alpha_hl_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 71
  %109 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %copy_alpha_hl_color, align 8, !tbaa !77
  %110 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %target133 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %110, i32 0, i32 43
  %111 = load %struct.gx_device_s*, %struct.gx_device_s** %target133, align 8, !tbaa !41
  %112 = load i8*, i8** %data_row, align 8, !tbaa !1
  %113 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %114 = load i32, i32* %txrun, align 4, !tbaa !5
  %add134 = add nsw i32 %113, %114
  %115 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub135 = sub nsw i32 %add134, %115
  %116 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %117 = load i32, i32* %txrun, align 4, !tbaa !5
  %118 = load i32, i32* %ty, align 4, !tbaa !5
  %119 = load i32, i32* %tx, align 4, !tbaa !5
  %120 = load i32, i32* %txrun, align 4, !tbaa !5
  %sub136 = sub nsw i32 %119, %120
  %121 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %122 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %call = call i32 %109(%struct.gx_device_s* %111, i8* %112, i32 %sub135, i32 %116, i64 0, i32 %117, i32 %118, i32 %sub136, i32 1, %struct.gx_device_color_s* %121, i32 %122) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %123 = load i32, i32* %code, align 4, !tbaa !5
  %cmp137 = icmp slt i32 %123, 0
  br i1 %cmp137, label %if.then.139, label %if.end.140

if.then.139:                                      ; preds = %do.end.132
  %124 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %124, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.140:                                       ; preds = %do.end.132
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.140, %if.then.139
  %125 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.141 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.141

cleanup.141:                                      ; preds = %cleanup.cont, %cleanup, %if.then.93
  %126 = bitcast i32* %txrun to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #1
  %cleanup.dest.142 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.142, label %cleanup.159 [
    i32 0, label %cleanup.cont.143
    i32 9, label %for.end
  ]

cleanup.cont.143:                                 ; preds = %cleanup.141
  br label %for.cond.59

for.end:                                          ; preds = %cleanup.141, %for.cond.59
  %127 = load i32, i32* %cy, align 4, !tbaa !5
  %inc144 = add nsw i32 %127, 1
  store i32 %inc144, i32* %cy, align 4, !tbaa !5
  %128 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles145 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %128, i32 0, i32 44
  %size146 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles145, i32 0, i32 2
  %y147 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size146, i32 0, i32 1
  %129 = load i32, i32* %y147, align 4, !tbaa !48
  %cmp148 = icmp eq i32 %inc144, %129
  br i1 %cmp148, label %if.then.150, label %if.else.153

if.then.150:                                      ; preds = %for.end
  store i32 0, i32* %cy, align 4, !tbaa !5
  %130 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles151 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %130, i32 0, i32 44
  %data152 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles151, i32 0, i32 0
  %131 = load i8*, i8** %data152, align 8, !tbaa !52
  store i8* %131, i8** %tile_row, align 8, !tbaa !1
  br label %if.end.158

if.else.153:                                      ; preds = %for.end
  %132 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev, align 8, !tbaa !1
  %tiles154 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %132, i32 0, i32 44
  %raster155 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tiles154, i32 0, i32 1
  %133 = load i32, i32* %raster155, align 4, !tbaa !53
  %134 = load i8*, i8** %tile_row, align 8, !tbaa !1
  %idx.ext156 = sext i32 %133 to i64
  %add.ptr157 = getelementptr inbounds i8, i8* %134, i64 %idx.ext156
  store i8* %add.ptr157, i8** %tile_row, align 8, !tbaa !1
  br label %if.end.158

if.end.158:                                       ; preds = %if.else.153, %if.then.150
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.159

cleanup.159:                                      ; preds = %if.end.158, %cleanup.141
  %135 = bitcast i32* %tx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %135) #1
  call void @llvm.lifetime.end(i64 1, i8* %tbit) #1
  %136 = bitcast i8** %tp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %136) #1
  %137 = bitcast i32* %cx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #1
  %cleanup.dest.163 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.163, label %cleanup.169 [
    i32 0, label %cleanup.cont.164
  ]

cleanup.cont.164:                                 ; preds = %cleanup.159
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont.164
  %138 = load i32, i32* %ty, align 4, !tbaa !5
  %inc165 = add nsw i32 %138, 1
  store i32 %inc165, i32* %ty, align 4, !tbaa !5
  %139 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %140 = load i8*, i8** %data_row, align 8, !tbaa !1
  %idx.ext166 = sext i32 %139 to i64
  %add.ptr167 = getelementptr inbounds i8, i8* %140, i64 %idx.ext166
  store i8* %add.ptr167, i8** %data_row, align 8, !tbaa !1
  br label %for.cond

for.end.168:                                      ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.169

cleanup.169:                                      ; preds = %for.end.168, %cleanup.159
  %141 = bitcast i32* %ty to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #1
  %142 = bitcast i8** %tile_row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %142) #1
  %143 = bitcast i32* %cy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #1
  %144 = bitcast i8** %data_row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %144) #1
  %cleanup.dest.173 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.173, label %cleanup.175 [
    i32 0, label %cleanup.cont.174
  ]

cleanup.cont.174:                                 ; preds = %cleanup.169
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.175

cleanup.175:                                      ; preds = %cleanup.cont.174, %cleanup.169, %if.then.23
  %145 = bitcast %struct.gx_device_mask_clip_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %145) #1
  %146 = load i32, i32* %retval
  ret i32 %146
}

declare i32 @gx_default_copy_mono(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

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
!7 = !{i64 0, i64 8, !1, i64 8, i64 4, !5, i64 12, i64 4, !5, i64 16, i64 4, !5, i64 24, i64 8, !8, i64 32, i64 2, !10, i64 34, i64 2, !10, i64 36, i64 2, !10, i64 38, i64 2, !10, i64 40, i64 4, !5}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !3, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"short", !3, i64 0}
!12 = !{!13, !6, i64 4576}
!13 = !{!"gx_device_mask_clip_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !14, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !15, i64 96, !17, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !9, i64 968, !9, i64 976, !18, i64 984, !6, i64 1052, !6, i64 1056, !19, i64 1064, !2, i64 1104, !3, i64 1112, !21, i64 1120, !22, i64 1144, !2, i64 1728, !23, i64 1736, !25, i64 1784, !24, i64 4576, !3, i64 4584}
!14 = !{!"rc_header_s", !9, i64 0, !2, i64 8, !2, i64 16}
!15 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !11, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !16, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !9, i64 704, !6, i64 712}
!16 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!17 = !{!"gx_device_cached_colors_s", !9, i64 0, !9, i64 8}
!18 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!19 = !{!"gdev_space_params_s", !9, i64 0, !9, i64 8, !20, i64 16, !6, i64 32, !3, i64 36}
!20 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !9, i64 8}
!21 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!22 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!23 = !{!"gx_strip_bitmap_s", !2, i64 0, !6, i64 8, !24, i64 12, !9, i64 24, !11, i64 32, !11, i64 34, !11, i64 36, !11, i64 38, !6, i64 40}
!24 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!25 = !{!"gx_device_memory_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !14, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !15, i64 96, !17, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !9, i64 968, !9, i64 976, !18, i64 984, !6, i64 1052, !6, i64 1056, !19, i64 1064, !2, i64 1104, !3, i64 1112, !21, i64 1120, !22, i64 1144, !2, i64 1728, !6, i64 1736, !2, i64 1744, !2, i64 1752, !6, i64 1760, !2, i64 1768, !6, i64 1776, !3, i64 1780, !26, i64 2548, !2, i64 2576, !28, i64 2584, !29, i64 2600, !30, i64 2624, !31, i64 2656, !32, i64 2680, !33, i64 2720, !34, i64 2736, !6, i64 2744, !6, i64 2748, !6, i64 2752, !6, i64 2756, !6, i64 2760, !9, i64 2768, !2, i64 2776, !6, i64 2784, !6, i64 2788}
!26 = !{!"gs_matrix_s", !27, i64 0, !27, i64 4, !27, i64 8, !27, i64 12, !27, i64 16, !27, i64 20}
!27 = !{!"float", !3, i64 0}
!28 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!29 = !{!"_c24", !9, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!30 = !{!"_c40", !9, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24}
!31 = !{!"_c48", !9, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!32 = !{!"_c56", !9, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!33 = !{!"_c64", !9, i64 0, !6, i64 8, !6, i64 12}
!34 = !{!"gs_log2_scale_point_s", !6, i64 0, !6, i64 4}
!35 = !{!13, !6, i64 4580}
!36 = !{!13, !2, i64 48}
!37 = !{!13, !2, i64 24}
!38 = !{!39, !2, i64 24}
!39 = !{!"gs_memory_s", !2, i64 0, !40, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!40 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!41 = !{!13, !2, i64 1728}
!42 = !{!43, !2, i64 1416}
!43 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !14, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !15, i64 96, !17, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !9, i64 968, !9, i64 976, !18, i64 984, !6, i64 1052, !6, i64 1056, !19, i64 1064, !2, i64 1104, !3, i64 1112, !21, i64 1120, !22, i64 1144}
!44 = !{!13, !2, i64 3528}
!45 = !{!43, !2, i64 1200}
!46 = !{!13, !11, i64 1770}
!47 = !{!13, !11, i64 1772}
!48 = !{!13, !6, i64 1752}
!49 = !{!13, !6, i64 2620}
!50 = !{!13, !11, i64 1768}
!51 = !{!13, !6, i64 1748}
!52 = !{!13, !2, i64 1736}
!53 = !{!13, !6, i64 1744}
!54 = !{!25, !2, i64 1216}
!55 = !{!43, !2, i64 1216}
!56 = !{!43, !6, i64 832}
!57 = !{!43, !6, i64 836}
!58 = !{!3, !3, i64 0}
!59 = !{!43, !2, i64 1224}
!60 = !{!43, !2, i64 1312}
!61 = !{!43, !2, i64 1424}
!62 = !{!63, !2, i64 0}
!63 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !24, i64 352, !6, i64 360, !64, i64 368, !66, i64 632}
!64 = !{!"gs_client_color_s", !2, i64 0, !65, i64 8}
!65 = !{!"gs_paint_color_s", !3, i64 0}
!66 = !{!"_mask", !67, i64 0, !9, i64 8, !2, i64 16}
!67 = !{!"mp_", !6, i64 0, !6, i64 4}
!68 = !{!69, !6, i64 0}
!69 = !{!"gs_fixed_rect_s", !70, i64 0, !70, i64 8}
!70 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!71 = !{!69, !6, i64 4}
!72 = !{!69, !6, i64 8}
!73 = !{!69, !6, i64 12}
!74 = !{!43, !2, i64 1704}
!75 = !{!43, !2, i64 1672}
!76 = !{!43, !2, i64 1696}
!77 = !{!43, !2, i64 1712}
