; ModuleID = './gscicach.bc'
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
%struct.gx_device_color_type_s = type { %struct.gs_memory_struct_type_s*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* }
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
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gx_tile_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16 }
%struct.gx_xfont_procs_s = type opaque
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
%struct.gs_get_bits_params_s = type opaque
%struct.gs_composite_s = type opaque
%struct.gs_param_list_s = type opaque
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
%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.gs_color_index_cache_s = type { %struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gx_device_s*, i32, i32, %struct.gs_memory_s*, i32, %struct.gs_color_index_cache_elem_s*, i32, float*, i32*, [16 x i32] }
%struct.gs_color_index_cache_elem_s = type { %union._color, %struct.gx_device_color_type_s*, i32, i32, i32, i32, i32, i32 }
%union._color = type { i64, [120 x i8] }
%struct._devn = type { [64 x i16] }

@.str = private unnamed_addr constant [28 x i8] c"gs_color_index_cache_create\00", align 1
@st_color_index_cache = internal constant %struct.gs_memory_struct_type_s { i32 152, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @gs_color_index_cache_reloc_ptrs to i8*) }, align 8
@gx_dc_type_data_pure = external constant %struct.gx_device_color_type_s, align 8
@gx_dc_type_data_devn = external constant %struct.gx_device_color_type_s, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"gs_color_index_cache_t\00", align 1
@gs_color_index_cache_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 6, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([6 x %struct.gc_ptr_element_s], [6 x %struct.gc_ptr_element_s]* @gs_color_index_cache_elem_ptrs, i32 0, i32 0) }, align 8
@gs_color_index_cache_elem_ptrs = internal constant [6 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s zeroinitializer, %struct.gc_ptr_element_s { i16 0, i16 40 }, %struct.gc_ptr_element_s { i16 0, i16 56 }, %struct.gc_ptr_element_s { i16 0, i16 72 }, %struct.gc_ptr_element_s { i16 0, i16 80 }, %struct.gc_ptr_element_s { i16 0, i16 24 }], align 16

; Function Attrs: nounwind uwtable
define %struct.gs_color_index_cache_s* @gs_color_index_cache_create(%struct.gs_memory_s* %memory, %struct.gs_color_space_s* %direct_space, %struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, i32 %need_frac, %struct.gx_device_s* %trans_dev) #0 {
entry:
  %retval = alloca %struct.gs_color_index_cache_s*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %direct_space.addr = alloca %struct.gs_color_space_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %need_frac.addr = alloca i32, align 4
  %trans_dev.addr = alloca %struct.gx_device_s*, align 8
  %client_num_components = alloca i32, align 4
  %device_num_components = alloca i32, align 4
  %buf = alloca %struct.gs_color_index_cache_elem_s*, align 8
  %paint_values = alloca float*, align 8
  %frac_values = alloca i32*, align 8
  %pcic = alloca %struct.gs_color_index_cache_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %direct_space, %struct.gs_color_space_s** %direct_space.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store i32 %need_frac, i32* %need_frac.addr, align 4, !tbaa !5
  store %struct.gx_device_s* %trans_dev, %struct.gx_device_s** %trans_dev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %client_num_components to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %direct_space.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %1, i32 0, i32 0
  %2 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type, align 8, !tbaa !7
  %num_components = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %2, i32 0, i32 4
  %3 = load i32 (%struct.gs_color_space_s*)*, i32 (%struct.gs_color_space_s*)** %num_components, align 8, !tbaa !11
  %4 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %direct_space.addr, align 8, !tbaa !1
  %call = call i32 %3(%struct.gs_color_space_s* %4) #6
  store i32 %call, i32* %client_num_components, align 4, !tbaa !5
  %5 = bitcast i32* %device_num_components to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %trans_dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 11
  %num_components1 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %7 = load i32, i32* %num_components1, align 4, !tbaa !13
  store i32 %7, i32* %device_num_components, align 4, !tbaa !5
  %8 = bitcast %struct.gs_color_index_cache_elem_s** %buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %9, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %10 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !24
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call2 = call i8* %10(%struct.gs_memory_s* %11, i32 256, i32 160, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0)) #6
  %12 = bitcast i8* %call2 to %struct.gs_color_index_cache_elem_s*
  store %struct.gs_color_index_cache_elem_s* %12, %struct.gs_color_index_cache_elem_s** %buf, align 8, !tbaa !1
  %13 = bitcast float** %paint_values to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs3 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %14, i32 0, i32 1
  %alloc_byte_array4 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs3, i32 0, i32 10
  %15 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array4, align 8, !tbaa !24
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %17 = load i32, i32* %client_num_components, align 4, !tbaa !5
  %mul = mul nsw i32 256, %17
  %call5 = call i8* %15(%struct.gs_memory_s* %16, i32 %mul, i32 4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0)) #6
  %18 = bitcast i8* %call5 to float*
  store float* %18, float** %paint_values, align 8, !tbaa !1
  %19 = bitcast i32** %frac_values to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = load i32, i32* %need_frac.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs6 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %21, i32 0, i32 1
  %alloc_byte_array7 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs6, i32 0, i32 10
  %22 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array7, align 8, !tbaa !24
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %24 = load i32, i32* %device_num_components, align 4, !tbaa !5
  %mul8 = mul nsw i32 256, %24
  %call9 = call i8* %22(%struct.gs_memory_s* %23, i32 %mul8, i32 4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0)) #6
  %25 = bitcast i8* %call9 to i32*
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32* [ %25, %cond.true ], [ null, %cond.false ]
  store i32* %cond, i32** %frac_values, align 8, !tbaa !1
  %26 = bitcast %struct.gs_color_index_cache_s** %pcic to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs10 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %27, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs10, i32 0, i32 8
  %28 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !27
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call11 = call i8* %28(%struct.gs_memory_s* %29, %struct.gs_memory_struct_type_s* @st_color_index_cache, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0)) #6
  %30 = bitcast i8* %call11 to %struct.gs_color_index_cache_s*
  store %struct.gs_color_index_cache_s* %30, %struct.gs_color_index_cache_s** %pcic, align 8, !tbaa !1
  %31 = load %struct.gs_color_index_cache_elem_s*, %struct.gs_color_index_cache_elem_s** %buf, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_color_index_cache_elem_s* %31, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %32 = load float*, float** %paint_values, align 8, !tbaa !1
  %cmp12 = icmp eq float* %32, null
  br i1 %cmp12, label %if.then, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false
  %33 = load i32, i32* %need_frac.addr, align 4, !tbaa !5
  %tobool14 = icmp ne i32 %33, 0
  br i1 %tobool14, label %land.lhs.true, label %lor.lhs.false.16

land.lhs.true:                                    ; preds = %lor.lhs.false.13
  %34 = load i32*, i32** %frac_values, align 8, !tbaa !1
  %cmp15 = icmp eq i32* %34, null
  br i1 %cmp15, label %if.then, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %land.lhs.true, %lor.lhs.false.13
  %35 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %pcic, align 8, !tbaa !1
  %cmp17 = icmp eq %struct.gs_color_index_cache_s* %35, null
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.16, %land.lhs.true, %lor.lhs.false, %cond.end
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs18 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %36, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs18, i32 0, i32 2
  %37 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !28
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %39 = load %struct.gs_color_index_cache_elem_s*, %struct.gs_color_index_cache_elem_s** %buf, align 8, !tbaa !1
  %40 = bitcast %struct.gs_color_index_cache_elem_s* %39 to i8*
  call void %37(%struct.gs_memory_s* %38, i8* %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0)) #6
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs19 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %41, i32 0, i32 1
  %free_object20 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs19, i32 0, i32 2
  %42 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object20, align 8, !tbaa !28
  %43 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %44 = load float*, float** %paint_values, align 8, !tbaa !1
  %45 = bitcast float* %44 to i8*
  call void %42(%struct.gs_memory_s* %43, i8* %45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0)) #6
  %46 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs21 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %46, i32 0, i32 1
  %free_object22 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs21, i32 0, i32 2
  %47 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object22, align 8, !tbaa !28
  %48 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %49 = load i32*, i32** %frac_values, align 8, !tbaa !1
  %50 = bitcast i32* %49 to i8*
  call void %47(%struct.gs_memory_s* %48, i8* %50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0)) #6
  %51 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs23 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %51, i32 0, i32 1
  %free_object24 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs23, i32 0, i32 2
  %52 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object24, align 8, !tbaa !28
  %53 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %54 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %pcic, align 8, !tbaa !1
  %55 = bitcast %struct.gs_color_index_cache_s* %54 to i8*
  call void %52(%struct.gs_memory_s* %53, i8* %55, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0)) #6
  store %struct.gs_color_index_cache_s* null, %struct.gs_color_index_cache_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.16
  %56 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %pcic, align 8, !tbaa !1
  %57 = bitcast %struct.gs_color_index_cache_s* %56 to i8*
  %call25 = call i8* @memset(i8* %57, i32 0, i64 152) #7
  %58 = load %struct.gs_color_index_cache_elem_s*, %struct.gs_color_index_cache_elem_s** %buf, align 8, !tbaa !1
  %59 = bitcast %struct.gs_color_index_cache_elem_s* %58 to i8*
  %call26 = call i8* @memset(i8* %59, i32 0, i64 40960) #7
  %60 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %direct_space.addr, align 8, !tbaa !1
  %61 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %pcic, align 8, !tbaa !1
  %direct_space27 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %61, i32 0, i32 0
  store %struct.gs_color_space_s* %60, %struct.gs_color_space_s** %direct_space27, align 8, !tbaa !29
  %62 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %63 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %pcic, align 8, !tbaa !1
  %pis28 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %63, i32 0, i32 1
  store %struct.gs_imager_state_s* %62, %struct.gs_imager_state_s** %pis28, align 8, !tbaa !31
  %64 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %65 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %pcic, align 8, !tbaa !1
  %dev29 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %65, i32 0, i32 2
  store %struct.gx_device_s* %64, %struct.gx_device_s** %dev29, align 8, !tbaa !32
  %66 = load %struct.gx_device_s*, %struct.gx_device_s** %trans_dev.addr, align 8, !tbaa !1
  %67 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %pcic, align 8, !tbaa !1
  %trans_dev30 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %67, i32 0, i32 3
  store %struct.gx_device_s* %66, %struct.gx_device_s** %trans_dev30, align 8, !tbaa !33
  %68 = load i32, i32* %device_num_components, align 4, !tbaa !5
  %69 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %pcic, align 8, !tbaa !1
  %device_num_components31 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %69, i32 0, i32 5
  store i32 %68, i32* %device_num_components31, align 4, !tbaa !34
  %70 = load i32, i32* %client_num_components, align 4, !tbaa !5
  %71 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %pcic, align 8, !tbaa !1
  %client_num_components32 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %71, i32 0, i32 4
  store i32 %70, i32* %client_num_components32, align 4, !tbaa !35
  %72 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %73 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %pcic, align 8, !tbaa !1
  %memory33 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %73, i32 0, i32 6
  store %struct.gs_memory_s* %72, %struct.gs_memory_s** %memory33, align 8, !tbaa !36
  %74 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %pcic, align 8, !tbaa !1
  %used = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %74, i32 0, i32 7
  store i32 1, i32* %used, align 4, !tbaa !37
  %75 = load %struct.gs_color_index_cache_elem_s*, %struct.gs_color_index_cache_elem_s** %buf, align 8, !tbaa !1
  %76 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %pcic, align 8, !tbaa !1
  %buf34 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %76, i32 0, i32 8
  store %struct.gs_color_index_cache_elem_s* %75, %struct.gs_color_index_cache_elem_s** %buf34, align 8, !tbaa !38
  %77 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %pcic, align 8, !tbaa !1
  %recent_touch = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %77, i32 0, i32 9
  store i32 0, i32* %recent_touch, align 4, !tbaa !39
  %78 = load float*, float** %paint_values, align 8, !tbaa !1
  %79 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %pcic, align 8, !tbaa !1
  %paint_values35 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %79, i32 0, i32 10
  store float* %78, float** %paint_values35, align 8, !tbaa !40
  %80 = load i32*, i32** %frac_values, align 8, !tbaa !1
  %81 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %pcic, align 8, !tbaa !1
  %frac_values36 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %81, i32 0, i32 11
  store i32* %80, i32** %frac_values36, align 8, !tbaa !41
  %82 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %pcic, align 8, !tbaa !1
  store %struct.gs_color_index_cache_s* %82, %struct.gs_color_index_cache_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %83 = bitcast %struct.gs_color_index_cache_s** %pcic to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #1
  %84 = bitcast i32** %frac_values to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #1
  %85 = bitcast float** %paint_values to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #1
  %86 = bitcast %struct.gs_color_index_cache_elem_s** %buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #1
  %87 = bitcast i32* %device_num_components to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #1
  %88 = bitcast i32* %client_num_components to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #1
  %89 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %retval
  ret %struct.gs_color_index_cache_s* %89
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @gs_color_index_cache_destroy(%struct.gs_color_index_cache_s* %pcic) #0 {
entry:
  %pcic.addr = alloca %struct.gs_color_index_cache_s*, align 8
  store %struct.gs_color_index_cache_s* %pcic, %struct.gs_color_index_cache_s** %pcic.addr, align 8, !tbaa !1
  %0 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %pcic.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %0, i32 0, i32 6
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !36
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %2 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !28
  %3 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %pcic.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %3, i32 0, i32 6
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !36
  %5 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %pcic.addr, align 8, !tbaa !1
  %buf = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %5, i32 0, i32 8
  %6 = load %struct.gs_color_index_cache_elem_s*, %struct.gs_color_index_cache_elem_s** %buf, align 8, !tbaa !38
  %7 = bitcast %struct.gs_color_index_cache_elem_s* %6 to i8*
  call void %2(%struct.gs_memory_s* %4, i8* %7, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0)) #6
  %8 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %pcic.addr, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %8, i32 0, i32 6
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory2, align 8, !tbaa !36
  %procs3 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %9, i32 0, i32 1
  %free_object4 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs3, i32 0, i32 2
  %10 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object4, align 8, !tbaa !28
  %11 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %pcic.addr, align 8, !tbaa !1
  %memory5 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %11, i32 0, i32 6
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory5, align 8, !tbaa !36
  %13 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %pcic.addr, align 8, !tbaa !1
  %paint_values = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %13, i32 0, i32 10
  %14 = load float*, float** %paint_values, align 8, !tbaa !40
  %15 = bitcast float* %14 to i8*
  call void %10(%struct.gs_memory_s* %12, i8* %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0)) #6
  %16 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %pcic.addr, align 8, !tbaa !1
  %memory6 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %16, i32 0, i32 6
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory6, align 8, !tbaa !36
  %procs7 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %17, i32 0, i32 1
  %free_object8 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs7, i32 0, i32 2
  %18 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object8, align 8, !tbaa !28
  %19 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %pcic.addr, align 8, !tbaa !1
  %memory9 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %19, i32 0, i32 6
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory9, align 8, !tbaa !36
  %21 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %pcic.addr, align 8, !tbaa !1
  %frac_values = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %21, i32 0, i32 11
  %22 = load i32*, i32** %frac_values, align 8, !tbaa !41
  %23 = bitcast i32* %22 to i8*
  call void %18(%struct.gs_memory_s* %20, i8* %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0)) #6
  %24 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %pcic.addr, align 8, !tbaa !1
  %buf10 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %24, i32 0, i32 8
  store %struct.gs_color_index_cache_elem_s* null, %struct.gs_color_index_cache_elem_s** %buf10, align 8, !tbaa !38
  %25 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %pcic.addr, align 8, !tbaa !1
  %paint_values11 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %25, i32 0, i32 10
  store float* null, float** %paint_values11, align 8, !tbaa !40
  %26 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %pcic.addr, align 8, !tbaa !1
  %frac_values12 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %26, i32 0, i32 11
  store i32* null, i32** %frac_values12, align 8, !tbaa !41
  %27 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %pcic.addr, align 8, !tbaa !1
  %memory13 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %27, i32 0, i32 6
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory13, align 8, !tbaa !36
  %procs14 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %28, i32 0, i32 1
  %free_object15 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs14, i32 0, i32 2
  %29 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object15, align 8, !tbaa !28
  %30 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %pcic.addr, align 8, !tbaa !1
  %memory16 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %30, i32 0, i32 6
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory16, align 8, !tbaa !36
  %32 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %pcic.addr, align 8, !tbaa !1
  %33 = bitcast %struct.gs_color_index_cache_s* %32 to i8*
  call void %29(%struct.gs_memory_s* %31, i8* %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0)) #6
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_cached_color_index(%struct.gs_color_index_cache_s* %self, float* %paint_values, %struct.gx_device_color_s* %pdevc, i32* %frac_values) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.gs_color_index_cache_s*, align 8
  %paint_values.addr = alloca float*, align 8
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %frac_values.addr = alloca i32*, align 8
  %pcs = alloca %struct.gs_color_space_s*, align 8
  %client_num_components = alloca i32, align 4
  %device_num_components = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %code = alloca i32, align 4
  %devc_local = alloca %struct.gx_device_color_s, align 8
  %fcc = alloca %struct.gs_client_color_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_color_index_cache_s* %self, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  store float* %paint_values, float** %paint_values.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store i32* %frac_values, i32** %frac_values.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %direct_space = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %1, i32 0, i32 0
  %2 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %direct_space, align 8, !tbaa !29
  store %struct.gs_color_space_s* %2, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %3 = bitcast i32* %client_num_components to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %client_num_components1 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %4, i32 0, i32 4
  %5 = load i32, i32* %client_num_components1, align 4, !tbaa !35
  store i32 %5, i32* %client_num_components, align 4, !tbaa !5
  %6 = bitcast i32* %device_num_components to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %device_num_components2 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %7, i32 0, i32 5
  %8 = load i32, i32* %device_num_components2, align 4, !tbaa !34
  store i32 %8, i32* %device_num_components, align 4, !tbaa !5
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %13 = load float*, float** %paint_values.addr, align 8, !tbaa !1
  %call = call i32 @get_color_index_cache_elem(%struct.gs_color_index_cache_s* %12, float* %13, i32* %i) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else.40

if.then:                                          ; preds = %entry
  %14 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.gx_device_color_s* %14, null
  br i1 %cmp, label %if.then.3, label %if.end.31

if.then.3:                                        ; preds = %if.then
  %15 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = zext i32 %15 to i64
  %16 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %buf = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %16, i32 0, i32 8
  %17 = load %struct.gs_color_index_cache_elem_s*, %struct.gs_color_index_cache_elem_s** %buf, align 8, !tbaa !38
  %arrayidx = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %17, i64 %idxprom
  %color_type = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %arrayidx, i32 0, i32 1
  %18 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %color_type, align 8, !tbaa !42
  %cmp4 = icmp eq %struct.gx_device_color_type_s* %18, @gx_dc_type_data_pure
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then.3
  %19 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom6 = zext i32 %19 to i64
  %20 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %buf7 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %20, i32 0, i32 8
  %21 = load %struct.gs_color_index_cache_elem_s*, %struct.gs_color_index_cache_elem_s** %buf7, align 8, !tbaa !38
  %arrayidx8 = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %21, i64 %idxprom6
  %color = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %arrayidx8, i32 0, i32 0
  %cindex = bitcast %union._color* %color to i64*
  %22 = load i64, i64* %cindex, align 8, !tbaa !44
  %23 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %23, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  store i64 %22, i64* %pure, align 8, !tbaa !44
  %24 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %24, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_pure, %struct.gx_device_color_type_s** %type, align 8, !tbaa !45
  %25 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %ccolor = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %25, i32 0, i32 4
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %ccolor, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arraydecay = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i32 0
  %26 = bitcast float* %arraydecay to i8*
  %27 = load float*, float** %paint_values.addr, align 8, !tbaa !1
  %28 = bitcast float* %27 to i8*
  %29 = load i32, i32* %client_num_components, align 4, !tbaa !5
  %conv = sext i32 %29 to i64
  %mul = mul i64 4, %conv
  %call9 = call i8* @memcpy(i8* %26, i8* %28, i64 %mul) #7
  br label %if.end

if.else:                                          ; preds = %if.then.3
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %30 = load i32, i32* %j, align 4, !tbaa !5
  %31 = load i32, i32* %device_num_components, align 4, !tbaa !5
  %cmp10 = icmp ult i32 %30, %31
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom12 = zext i32 %32 to i64
  %33 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom13 = zext i32 %33 to i64
  %34 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %buf14 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %34, i32 0, i32 8
  %35 = load %struct.gs_color_index_cache_elem_s*, %struct.gs_color_index_cache_elem_s** %buf14, align 8, !tbaa !38
  %arrayidx15 = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %35, i64 %idxprom13
  %color16 = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %arrayidx15, i32 0, i32 0
  %devn = bitcast %union._color* %color16 to [64 x i16]*
  %arrayidx17 = getelementptr inbounds [64 x i16], [64 x i16]* %devn, i32 0, i64 %idxprom12
  %36 = load i16, i16* %arrayidx17, align 2, !tbaa !52
  %37 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom18 = zext i32 %37 to i64
  %38 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors19 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %38, i32 0, i32 1
  %devn20 = bitcast %union._c* %colors19 to %struct._devn*
  %values21 = getelementptr inbounds %struct._devn, %struct._devn* %devn20, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [64 x i16], [64 x i16]* %values21, i32 0, i64 %idxprom18
  store i16 %36, i16* %arrayidx22, align 2, !tbaa !52
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %39 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add i32 %39, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %40 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type23 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %40, i32 0, i32 0
  store %struct.gx_device_color_type_s* @gx_dc_type_data_devn, %struct.gx_device_color_type_s** %type23, align 8, !tbaa !45
  %41 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %ccolor24 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %41, i32 0, i32 4
  %paint25 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %ccolor24, i32 0, i32 1
  %values26 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint25, i32 0, i32 0
  %arraydecay27 = getelementptr inbounds [64 x float], [64 x float]* %values26, i32 0, i32 0
  %42 = bitcast float* %arraydecay27 to i8*
  %43 = load float*, float** %paint_values.addr, align 8, !tbaa !1
  %44 = bitcast float* %43 to i8*
  %45 = load i32, i32* %client_num_components, align 4, !tbaa !5
  %conv28 = sext i32 %45 to i64
  %mul29 = mul i64 4, %conv28
  %call30 = call i8* @memcpy(i8* %42, i8* %44, i64 %mul29) #7
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then.5
  %46 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %ccolor_valid = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %46, i32 0, i32 3
  store i32 1, i32* %ccolor_valid, align 4, !tbaa !53
  br label %if.end.31

if.end.31:                                        ; preds = %if.end, %if.then
  %47 = load i32*, i32** %frac_values.addr, align 8, !tbaa !1
  %cmp32 = icmp ne i32* %47, null
  br i1 %cmp32, label %land.lhs.true, label %if.end.39

land.lhs.true:                                    ; preds = %if.end.31
  %48 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom34 = zext i32 %48 to i64
  %49 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %buf35 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %49, i32 0, i32 8
  %50 = load %struct.gs_color_index_cache_elem_s*, %struct.gs_color_index_cache_elem_s** %buf35, align 8, !tbaa !38
  %arrayidx36 = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %50, i64 %idxprom34
  %frac_values_done = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %arrayidx36, i32 0, i32 7
  %51 = load i32, i32* %frac_values_done, align 4, !tbaa !54
  %tobool37 = icmp ne i32 %51, 0
  br i1 %tobool37, label %if.end.39, label %if.then.38

if.then.38:                                       ; preds = %land.lhs.true
  %52 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %53 = load i32, i32* %i, align 4, !tbaa !5
  call void @compute_frac_values(%struct.gs_color_index_cache_s* %52, i32 %53) #6
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %land.lhs.true, %if.end.31
  br label %if.end.115

if.else.40:                                       ; preds = %entry
  %54 = bitcast %struct.gx_device_color_s* %devc_local to i8*
  call void @llvm.lifetime.start(i64 656, i8* %54) #1
  %55 = bitcast %struct.gs_client_color_s* %fcc to i8*
  call void @llvm.lifetime.start(i64 264, i8* %55) #1
  %56 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %cmp41 = icmp eq %struct.gx_device_color_s* %56, null
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.else.40
  store %struct.gx_device_color_s* %devc_local, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %if.else.40
  %57 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %paint_values45 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %57, i32 0, i32 10
  %58 = load float*, float** %paint_values45, align 8, !tbaa !40
  %59 = load i32, i32* %i, align 4, !tbaa !5
  %60 = load i32, i32* %client_num_components, align 4, !tbaa !5
  %mul46 = mul i32 %59, %60
  %idx.ext = zext i32 %mul46 to i64
  %add.ptr = getelementptr inbounds float, float* %58, i64 %idx.ext
  %61 = bitcast float* %add.ptr to i8*
  %62 = load float*, float** %paint_values.addr, align 8, !tbaa !1
  %63 = bitcast float* %62 to i8*
  %64 = load i32, i32* %client_num_components, align 4, !tbaa !5
  %conv47 = sext i32 %64 to i64
  %mul48 = mul i64 4, %conv47
  %call49 = call i8* @memcpy(i8* %61, i8* %63, i64 %mul48) #7
  %paint50 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %fcc, i32 0, i32 1
  %values51 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint50, i32 0, i32 0
  %arraydecay52 = getelementptr inbounds [64 x float], [64 x float]* %values51, i32 0, i32 0
  %65 = bitcast float* %arraydecay52 to i8*
  %66 = load float*, float** %paint_values.addr, align 8, !tbaa !1
  %67 = bitcast float* %66 to i8*
  %68 = load i32, i32* %client_num_components, align 4, !tbaa !5
  %conv53 = sext i32 %68 to i64
  %mul54 = mul i64 4, %conv53
  %call55 = call i8* @memcpy(i8* %65, i8* %67, i64 %mul54) #7
  %69 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %type56 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %69, i32 0, i32 0
  %70 = load %struct.gs_color_space_type_s*, %struct.gs_color_space_type_s** %type56, align 8, !tbaa !7
  %remap_color = getelementptr inbounds %struct.gs_color_space_type_s, %struct.gs_color_space_type_s* %70, i32 0, i32 10
  %71 = load i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)** %remap_color, align 8, !tbaa !55
  %72 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs, align 8, !tbaa !1
  %73 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %74 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %pis = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %74, i32 0, i32 1
  %75 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !31
  %76 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %trans_dev = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %76, i32 0, i32 3
  %77 = load %struct.gx_device_s*, %struct.gx_device_s** %trans_dev, align 8, !tbaa !33
  %call57 = call i32 %71(%struct.gs_client_color_s* %fcc, %struct.gs_color_space_s* %72, %struct.gx_device_color_s* %73, %struct.gs_imager_state_s* %75, %struct.gx_device_s* %77, i32 0) #6
  store i32 %call57, i32* %code, align 4, !tbaa !5
  %78 = load i32, i32* %code, align 4, !tbaa !5
  %cmp58 = icmp slt i32 %78, 0
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.end.44
  %79 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %79, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.61:                                        ; preds = %if.end.44
  %80 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type62 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %80, i32 0, i32 0
  %81 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type62, align 8, !tbaa !45
  %cmp63 = icmp eq %struct.gx_device_color_type_s* %81, @gx_dc_type_data_pure
  br i1 %cmp63, label %if.then.65, label %if.else.73

if.then.65:                                       ; preds = %if.end.61
  %82 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors66 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %82, i32 0, i32 1
  %pure67 = bitcast %union._c* %colors66 to i64*
  %83 = load i64, i64* %pure67, align 8, !tbaa !44
  %84 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom68 = zext i32 %84 to i64
  %85 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %buf69 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %85, i32 0, i32 8
  %86 = load %struct.gs_color_index_cache_elem_s*, %struct.gs_color_index_cache_elem_s** %buf69, align 8, !tbaa !38
  %arrayidx70 = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %86, i64 %idxprom68
  %color71 = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %arrayidx70, i32 0, i32 0
  %cindex72 = bitcast %union._color* %color71 to i64*
  store i64 %83, i64* %cindex72, align 8, !tbaa !44
  br label %if.end.99

if.else.73:                                       ; preds = %if.end.61
  %87 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type74 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %87, i32 0, i32 0
  %88 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type74, align 8, !tbaa !45
  %cmp75 = icmp eq %struct.gx_device_color_type_s* %88, @gx_dc_type_data_devn
  br i1 %cmp75, label %if.then.77, label %if.else.97

if.then.77:                                       ; preds = %if.else.73
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.78

for.cond.78:                                      ; preds = %for.inc.94, %if.then.77
  %89 = load i32, i32* %j, align 4, !tbaa !5
  %90 = load i32, i32* %device_num_components, align 4, !tbaa !5
  %cmp79 = icmp ult i32 %89, %90
  br i1 %cmp79, label %for.body.81, label %for.end.96

for.body.81:                                      ; preds = %for.cond.78
  %91 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom82 = zext i32 %91 to i64
  %92 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors83 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %92, i32 0, i32 1
  %devn84 = bitcast %union._c* %colors83 to %struct._devn*
  %values85 = getelementptr inbounds %struct._devn, %struct._devn* %devn84, i32 0, i32 0
  %arrayidx86 = getelementptr inbounds [64 x i16], [64 x i16]* %values85, i32 0, i64 %idxprom82
  %93 = load i16, i16* %arrayidx86, align 2, !tbaa !52
  %94 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom87 = zext i32 %94 to i64
  %95 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom88 = zext i32 %95 to i64
  %96 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %buf89 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %96, i32 0, i32 8
  %97 = load %struct.gs_color_index_cache_elem_s*, %struct.gs_color_index_cache_elem_s** %buf89, align 8, !tbaa !38
  %arrayidx90 = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %97, i64 %idxprom88
  %color91 = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %arrayidx90, i32 0, i32 0
  %devn92 = bitcast %union._color* %color91 to [64 x i16]*
  %arrayidx93 = getelementptr inbounds [64 x i16], [64 x i16]* %devn92, i32 0, i64 %idxprom87
  store i16 %93, i16* %arrayidx93, align 2, !tbaa !52
  br label %for.inc.94

for.inc.94:                                       ; preds = %for.body.81
  %98 = load i32, i32* %j, align 4, !tbaa !5
  %inc95 = add i32 %98, 1
  store i32 %inc95, i32* %j, align 4, !tbaa !5
  br label %for.cond.78

for.end.96:                                       ; preds = %for.cond.78
  br label %if.end.98

if.else.97:                                       ; preds = %if.else.73
  store i32 2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.98:                                        ; preds = %for.end.96
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %if.then.65
  %99 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type100 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %99, i32 0, i32 0
  %100 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type100, align 8, !tbaa !45
  %101 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom101 = zext i32 %101 to i64
  %102 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %buf102 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %102, i32 0, i32 8
  %103 = load %struct.gs_color_index_cache_elem_s*, %struct.gs_color_index_cache_elem_s** %buf102, align 8, !tbaa !38
  %arrayidx103 = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %103, i64 %idxprom101
  %color_type104 = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %arrayidx103, i32 0, i32 1
  store %struct.gx_device_color_type_s* %100, %struct.gx_device_color_type_s** %color_type104, align 8, !tbaa !42
  %104 = load i32*, i32** %frac_values.addr, align 8, !tbaa !1
  %cmp105 = icmp ne i32* %104, null
  br i1 %cmp105, label %if.then.107, label %if.else.108

if.then.107:                                      ; preds = %if.end.99
  %105 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %106 = load i32, i32* %i, align 4, !tbaa !5
  call void @compute_frac_values(%struct.gs_color_index_cache_s* %105, i32 %106) #6
  br label %if.end.113

if.else.108:                                      ; preds = %if.end.99
  %107 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom109 = zext i32 %107 to i64
  %108 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %buf110 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %108, i32 0, i32 8
  %109 = load %struct.gs_color_index_cache_elem_s*, %struct.gs_color_index_cache_elem_s** %buf110, align 8, !tbaa !38
  %arrayidx111 = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %109, i64 %idxprom109
  %frac_values_done112 = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %arrayidx111, i32 0, i32 7
  store i32 0, i32* %frac_values_done112, align 4, !tbaa !54
  br label %if.end.113

if.end.113:                                       ; preds = %if.else.108, %if.then.107
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.113, %if.else.97, %if.then.60
  %110 = bitcast %struct.gs_client_color_s* %fcc to i8*
  call void @llvm.lifetime.end(i64 264, i8* %110) #1
  %111 = bitcast %struct.gx_device_color_s* %devc_local to i8*
  call void @llvm.lifetime.end(i64 656, i8* %111) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.127 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.115

if.end.115:                                       ; preds = %cleanup.cont, %if.end.39
  %112 = load i32*, i32** %frac_values.addr, align 8, !tbaa !1
  %cmp116 = icmp ne i32* %112, null
  br i1 %cmp116, label %if.then.118, label %if.end.126

if.then.118:                                      ; preds = %if.end.115
  %113 = load i32*, i32** %frac_values.addr, align 8, !tbaa !1
  %114 = bitcast i32* %113 to i8*
  %115 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %frac_values119 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %115, i32 0, i32 11
  %116 = load i32*, i32** %frac_values119, align 8, !tbaa !41
  %117 = load i32, i32* %i, align 4, !tbaa !5
  %118 = load i32, i32* %device_num_components, align 4, !tbaa !5
  %mul120 = mul i32 %117, %118
  %idx.ext121 = zext i32 %mul120 to i64
  %add.ptr122 = getelementptr inbounds i32, i32* %116, i64 %idx.ext121
  %119 = bitcast i32* %add.ptr122 to i8*
  %120 = load i32, i32* %device_num_components, align 4, !tbaa !5
  %conv123 = sext i32 %120 to i64
  %mul124 = mul i64 4, %conv123
  %call125 = call i8* @memcpy(i8* %114, i8* %119, i64 %mul124) #7
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.118, %if.end.115
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.127

cleanup.127:                                      ; preds = %if.end.126, %cleanup
  %121 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #1
  %122 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %122) #1
  %123 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #1
  %124 = bitcast i32* %device_num_components to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #1
  %125 = bitcast i32* %client_num_components to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #1
  %126 = bitcast %struct.gs_color_space_s** %pcs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %126) #1
  %127 = load i32, i32* %retval
  ret i32 %127
}

; Function Attrs: nounwind uwtable
define internal i32 @get_color_index_cache_elem(%struct.gs_color_index_cache_s* %self, float* %paint_values, i32* %pi) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.gs_color_index_cache_s*, align 8
  %paint_values.addr = alloca float*, align 8
  %pi.addr = alloca i32*, align 8
  %client_num_components = alloca i32, align 4
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %tries = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_color_index_cache_s* %self, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  store float* %paint_values, float** %paint_values.addr, align 8, !tbaa !1
  store i32* %pi, i32** %pi.addr, align 8, !tbaa !1
  %0 = bitcast i32* %client_num_components to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %client_num_components1 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %1, i32 0, i32 4
  %2 = load i32, i32* %client_num_components1, align 4, !tbaa !35
  store i32 %2, i32* %client_num_components, align 4, !tbaa !5
  %3 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %5 = load float*, float** %paint_values.addr, align 8, !tbaa !1
  %call = call i32 @hash_paint_values(%struct.gs_color_index_cache_s* %4, float* %5) #6
  store i32 %call, i32* %c, align 4, !tbaa !5
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i32, i32* %c, align 4, !tbaa !5
  %idxprom = zext i32 %7 to i64
  %8 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %chains = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %8, i32 0, i32 12
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* %chains, i32 0, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4, !tbaa !5
  store i32 %9, i32* %i, align 4, !tbaa !5
  %10 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load i32, i32* %i, align 4, !tbaa !5
  %cmp = icmp ne i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end.34

if.then:                                          ; preds = %entry
  %12 = bitcast i32* %tries to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 16, i32* %tries, align 4, !tbaa !5
  %13 = load float*, float** %paint_values.addr, align 8, !tbaa !1
  %14 = bitcast float* %13 to i8*
  %15 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %paint_values2 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %15, i32 0, i32 10
  %16 = load float*, float** %paint_values2, align 8, !tbaa !40
  %17 = load i32, i32* %i, align 4, !tbaa !5
  %18 = load i32, i32* %client_num_components, align 4, !tbaa !5
  %mul = mul i32 %17, %18
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds float, float* %16, i64 %idx.ext
  %19 = bitcast float* %add.ptr to i8*
  %20 = load i32, i32* %client_num_components, align 4, !tbaa !5
  %conv = sext i32 %20 to i64
  %mul3 = mul i64 4, %conv
  %call4 = call i32 @memcmp(i8* %14, i8* %19, i64 %mul3) #8
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end.9, label %if.then.5

if.then.5:                                        ; preds = %if.then
  %21 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %recent_touch = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %21, i32 0, i32 9
  %22 = load i32, i32* %recent_touch, align 4, !tbaa !39
  %23 = load i32, i32* %i, align 4, !tbaa !5
  %cmp6 = icmp ne i32 %22, %23
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then.5
  %24 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %25 = load i32, i32* %i, align 4, !tbaa !5
  call void @exclude_from_touch_list(%struct.gs_color_index_cache_s* %24, i32 %25) #6
  %26 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %27 = load i32, i32* %i, align 4, !tbaa !5
  call void @include_into_touch_list(%struct.gs_color_index_cache_s* %26, i32 %27) #6
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then.5
  %28 = load i32, i32* %i, align 4, !tbaa !5
  %29 = load i32*, i32** %pi.addr, align 8, !tbaa !1
  store i32 %28, i32* %29, align 4, !tbaa !5
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.then
  %30 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom10 = zext i32 %30 to i64
  %31 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %buf = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %31, i32 0, i32 8
  %32 = load %struct.gs_color_index_cache_elem_s*, %struct.gs_color_index_cache_elem_s** %buf, align 8, !tbaa !38
  %arrayidx11 = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %32, i64 %idxprom10
  %next = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %arrayidx11, i32 0, i32 4
  %33 = load i32, i32* %next, align 4, !tbaa !56
  store i32 %33, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.9
  %34 = load i32, i32* %tries, align 4, !tbaa !5
  %dec = add i32 %34, -1
  store i32 %dec, i32* %tries, align 4, !tbaa !5
  %tobool12 = icmp ne i32 %34, 0
  br i1 %tobool12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %35 = load i32, i32* %j, align 4, !tbaa !5
  %36 = load i32, i32* %i, align 4, !tbaa !5
  %cmp13 = icmp ne i32 %35, %36
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %37 = phi i1 [ false, %for.cond ], [ %cmp13, %land.rhs ]
  br i1 %37, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %38 = load float*, float** %paint_values.addr, align 8, !tbaa !1
  %39 = bitcast float* %38 to i8*
  %40 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %paint_values15 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %40, i32 0, i32 10
  %41 = load float*, float** %paint_values15, align 8, !tbaa !40
  %42 = load i32, i32* %j, align 4, !tbaa !5
  %43 = load i32, i32* %client_num_components, align 4, !tbaa !5
  %mul16 = mul i32 %42, %43
  %idx.ext17 = zext i32 %mul16 to i64
  %add.ptr18 = getelementptr inbounds float, float* %41, i64 %idx.ext17
  %44 = bitcast float* %add.ptr18 to i8*
  %45 = load i32, i32* %client_num_components, align 4, !tbaa !5
  %conv19 = sext i32 %45 to i64
  %mul20 = mul i64 4, %conv19
  %call21 = call i32 @memcmp(i8* %39, i8* %44, i64 %mul20) #8
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end.29, label %if.then.23

if.then.23:                                       ; preds = %for.body
  %46 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %47 = load i32, i32* %j, align 4, !tbaa !5
  call void @exclude_from_chain(%struct.gs_color_index_cache_s* %46, i32 %47) #6
  %48 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %49 = load i32, i32* %j, align 4, !tbaa !5
  %50 = load i32, i32* %c, align 4, !tbaa !5
  call void @include_into_chain(%struct.gs_color_index_cache_s* %48, i32 %49, i32 %50) #6
  %51 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %recent_touch24 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %51, i32 0, i32 9
  %52 = load i32, i32* %recent_touch24, align 4, !tbaa !39
  %53 = load i32, i32* %j, align 4, !tbaa !5
  %cmp25 = icmp ne i32 %52, %53
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.then.23
  %54 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %55 = load i32, i32* %j, align 4, !tbaa !5
  call void @exclude_from_touch_list(%struct.gs_color_index_cache_s* %54, i32 %55) #6
  %56 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %57 = load i32, i32* %j, align 4, !tbaa !5
  call void @include_into_touch_list(%struct.gs_color_index_cache_s* %56, i32 %57) #6
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.then.23
  %58 = load i32, i32* %j, align 4, !tbaa !5
  %59 = load i32*, i32** %pi.addr, align 8, !tbaa !1
  store i32 %58, i32* %59, align 4, !tbaa !5
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.29
  %60 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom30 = zext i32 %60 to i64
  %61 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %buf31 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %61, i32 0, i32 8
  %62 = load %struct.gs_color_index_cache_elem_s*, %struct.gs_color_index_cache_elem_s** %buf31, align 8, !tbaa !38
  %arrayidx32 = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %62, i64 %idxprom30
  %next33 = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %arrayidx32, i32 0, i32 4
  %63 = load i32, i32* %next33, align 4, !tbaa !56
  store i32 %63, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %land.end
  %64 = load i32, i32* %tries, align 4, !tbaa !5
  %add = add i32 %64, 0
  store i32 %add, i32* %tries, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.28, %if.end
  %65 = bitcast i32* %tries to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.45 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.34

if.end.34:                                        ; preds = %cleanup.cont, %entry
  %66 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %used = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %66, i32 0, i32 7
  %67 = load i32, i32* %used, align 4, !tbaa !37
  %cmp35 = icmp slt i32 %67, 256
  br i1 %cmp35, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %if.end.34
  %68 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %used38 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %68, i32 0, i32 7
  %69 = load i32, i32* %used38, align 4, !tbaa !37
  %inc = add nsw i32 %69, 1
  store i32 %inc, i32* %used38, align 4, !tbaa !37
  store i32 %69, i32* %i, align 4, !tbaa !5
  %70 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %71 = load i32, i32* %i, align 4, !tbaa !5
  call void @include_into_touch_list(%struct.gs_color_index_cache_s* %70, i32 %71) #6
  br label %if.end.44

if.else:                                          ; preds = %if.end.34
  %72 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %recent_touch39 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %72, i32 0, i32 9
  %73 = load i32, i32* %recent_touch39, align 4, !tbaa !39
  store i32 %73, i32* %i, align 4, !tbaa !5
  %74 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom40 = zext i32 %74 to i64
  %75 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %buf41 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %75, i32 0, i32 8
  %76 = load %struct.gs_color_index_cache_elem_s*, %struct.gs_color_index_cache_elem_s** %buf41, align 8, !tbaa !38
  %arrayidx42 = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %76, i64 %idxprom40
  %touch_prev = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %arrayidx42, i32 0, i32 5
  %77 = load i32, i32* %touch_prev, align 4, !tbaa !57
  %78 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %recent_touch43 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %78, i32 0, i32 9
  store i32 %77, i32* %recent_touch43, align 4, !tbaa !39
  %79 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %80 = load i32, i32* %i, align 4, !tbaa !5
  call void @exclude_from_chain(%struct.gs_color_index_cache_s* %79, i32 %80) #6
  br label %if.end.44

if.end.44:                                        ; preds = %if.else, %if.then.37
  %81 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %82 = load i32, i32* %i, align 4, !tbaa !5
  %83 = load i32, i32* %c, align 4, !tbaa !5
  call void @include_into_chain(%struct.gs_color_index_cache_s* %81, i32 %82, i32 %83) #6
  %84 = load i32, i32* %i, align 4, !tbaa !5
  %85 = load i32*, i32** %pi.addr, align 8, !tbaa !1
  store i32 %84, i32* %85, align 4, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.45

cleanup.45:                                       ; preds = %if.end.44, %cleanup
  %86 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #1
  %87 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #1
  %88 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #1
  %89 = bitcast i32* %client_num_components to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #1
  %90 = load i32, i32* %retval
  ret i32 %90
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @compute_frac_values(%struct.gs_color_index_cache_s* %self, i32 %i) #3 {
entry:
  %self.addr = alloca %struct.gs_color_index_cache_s*, align 8
  %i.addr = alloca i32, align 4
  %cinfo = alloca %struct.gx_device_color_info_s*, align 8
  %device_num_components = alloca i32, align 4
  %j = alloca i32, align 4
  %c = alloca i64, align 8
  %shift = alloca i32, align 4
  %bits = alloca i32, align 4
  store %struct.gs_color_index_cache_s* %self, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  store i32 %i, i32* %i.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_color_info_s** %cinfo to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %trans_dev = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %1, i32 0, i32 3
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %trans_dev, align 8, !tbaa !33
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 11
  store %struct.gx_device_color_info_s* %color_info, %struct.gx_device_color_info_s** %cinfo, align 8, !tbaa !1
  %3 = bitcast i32* %device_num_components to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %device_num_components1 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %4, i32 0, i32 5
  %5 = load i32, i32* %device_num_components1, align 4, !tbaa !34
  store i32 %5, i32* %device_num_components, align 4, !tbaa !5
  %6 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i64* %c to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load i32, i32* %i.addr, align 4, !tbaa !5
  %idxprom = zext i32 %8 to i64
  %9 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %buf = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %9, i32 0, i32 8
  %10 = load %struct.gs_color_index_cache_elem_s*, %struct.gs_color_index_cache_elem_s** %buf, align 8, !tbaa !38
  %arrayidx = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %10, i64 %idxprom
  %color_type = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %arrayidx, i32 0, i32 1
  %11 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %color_type, align 8, !tbaa !42
  %cmp = icmp eq %struct.gx_device_color_type_s* %11, @gx_dc_type_data_pure
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %12 = load i32, i32* %i.addr, align 4, !tbaa !5
  %idxprom2 = zext i32 %12 to i64
  %13 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %buf3 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %13, i32 0, i32 8
  %14 = load %struct.gs_color_index_cache_elem_s*, %struct.gs_color_index_cache_elem_s** %buf3, align 8, !tbaa !38
  %arrayidx4 = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %14, i64 %idxprom2
  %color = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %arrayidx4, i32 0, i32 0
  %cindex = bitcast %union._color* %color to i64*
  %15 = load i64, i64* %cindex, align 8, !tbaa !44
  store i64 %15, i64* %c, align 8, !tbaa !44
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %16 = load i32, i32* %j, align 4, !tbaa !5
  %17 = load i32, i32* %device_num_components, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %16, %17
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom6 = sext i32 %19 to i64
  %20 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %cinfo, align 8, !tbaa !1
  %comp_shift = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %20, i32 0, i32 11
  %arrayidx7 = getelementptr inbounds [64 x i8], [64 x i8]* %comp_shift, i32 0, i64 %idxprom6
  %21 = load i8, i8* %arrayidx7, align 1, !tbaa !58
  %conv = zext i8 %21 to i32
  store i32 %conv, i32* %shift, align 4, !tbaa !5
  %22 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom8 = sext i32 %23 to i64
  %24 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %cinfo, align 8, !tbaa !1
  %comp_bits = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %24, i32 0, i32 12
  %arrayidx9 = getelementptr inbounds [64 x i8], [64 x i8]* %comp_bits, i32 0, i64 %idxprom8
  %25 = load i8, i8* %arrayidx9, align 1, !tbaa !58
  %conv10 = zext i8 %25 to i32
  store i32 %conv10, i32* %bits, align 4, !tbaa !5
  %26 = load i64, i64* %c, align 8, !tbaa !44
  %27 = load i32, i32* %shift, align 4, !tbaa !5
  %sh_prom = zext i32 %27 to i64
  %shr = lshr i64 %26, %sh_prom
  %28 = load i32, i32* %bits, align 4, !tbaa !5
  %shl = shl i32 1, %28
  %sub = sub nsw i32 %shl, 1
  %conv11 = sext i32 %sub to i64
  %and = and i64 %shr, %conv11
  %29 = load i32, i32* %bits, align 4, !tbaa !5
  %conv12 = sext i32 %29 to i64
  %sub13 = sub i64 31, %conv12
  %shl14 = shl i64 %and, %sub13
  %conv15 = trunc i64 %shl14 to i32
  %30 = load i32, i32* %i.addr, align 4, !tbaa !5
  %31 = load i32, i32* %device_num_components, align 4, !tbaa !5
  %mul = mul i32 %30, %31
  %32 = load i32, i32* %j, align 4, !tbaa !5
  %add = add i32 %mul, %32
  %idxprom16 = zext i32 %add to i64
  %33 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %frac_values = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %33, i32 0, i32 11
  %34 = load i32*, i32** %frac_values, align 8, !tbaa !41
  %arrayidx17 = getelementptr inbounds i32, i32* %34, i64 %idxprom16
  store i32 %conv15, i32* %arrayidx17, align 4, !tbaa !5
  %35 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %37 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = load i32, i32* %i.addr, align 4, !tbaa !5
  %idxprom18 = zext i32 %38 to i64
  %39 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %buf19 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %39, i32 0, i32 8
  %40 = load %struct.gs_color_index_cache_elem_s*, %struct.gs_color_index_cache_elem_s** %buf19, align 8, !tbaa !38
  %arrayidx20 = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %40, i64 %idxprom18
  %frac_values_done = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %arrayidx20, i32 0, i32 7
  store i32 1, i32* %frac_values_done, align 4, !tbaa !54
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.50, %if.else
  %41 = load i32, i32* %j, align 4, !tbaa !5
  %42 = load i32, i32* %device_num_components, align 4, !tbaa !5
  %cmp22 = icmp slt i32 %41, %42
  br i1 %cmp22, label %for.body.24, label %for.end.52

for.body.24:                                      ; preds = %for.cond.21
  %43 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom25 = sext i32 %43 to i64
  %44 = load i32, i32* %i.addr, align 4, !tbaa !5
  %idxprom26 = zext i32 %44 to i64
  %45 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %buf27 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %45, i32 0, i32 8
  %46 = load %struct.gs_color_index_cache_elem_s*, %struct.gs_color_index_cache_elem_s** %buf27, align 8, !tbaa !38
  %arrayidx28 = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %46, i64 %idxprom26
  %color29 = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %arrayidx28, i32 0, i32 0
  %devn = bitcast %union._color* %color29 to [64 x i16]*
  %arrayidx30 = getelementptr inbounds [64 x i16], [64 x i16]* %devn, i32 0, i64 %idxprom25
  %47 = load i16, i16* %arrayidx30, align 2, !tbaa !52
  %conv31 = zext i16 %47 to i32
  %shr32 = ashr i32 %conv31, 1
  %48 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom33 = sext i32 %48 to i64
  %49 = load i32, i32* %i.addr, align 4, !tbaa !5
  %idxprom34 = zext i32 %49 to i64
  %50 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %buf35 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %50, i32 0, i32 8
  %51 = load %struct.gs_color_index_cache_elem_s*, %struct.gs_color_index_cache_elem_s** %buf35, align 8, !tbaa !38
  %arrayidx36 = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %51, i64 %idxprom34
  %color37 = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %arrayidx36, i32 0, i32 0
  %devn38 = bitcast %union._color* %color37 to [64 x i16]*
  %arrayidx39 = getelementptr inbounds [64 x i16], [64 x i16]* %devn38, i32 0, i64 %idxprom33
  %52 = load i16, i16* %arrayidx39, align 2, !tbaa !52
  %conv40 = zext i16 %52 to i32
  %shr41 = ashr i32 %conv40, 13
  %sub42 = sub nsw i32 %shr32, %shr41
  %conv43 = trunc i32 %sub42 to i16
  %conv44 = sext i16 %conv43 to i32
  %53 = load i32, i32* %i.addr, align 4, !tbaa !5
  %54 = load i32, i32* %device_num_components, align 4, !tbaa !5
  %mul45 = mul i32 %53, %54
  %55 = load i32, i32* %j, align 4, !tbaa !5
  %add46 = add i32 %mul45, %55
  %idxprom47 = zext i32 %add46 to i64
  %56 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %frac_values48 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %56, i32 0, i32 11
  %57 = load i32*, i32** %frac_values48, align 8, !tbaa !41
  %arrayidx49 = getelementptr inbounds i32, i32* %57, i64 %idxprom47
  store i32 %conv44, i32* %arrayidx49, align 4, !tbaa !5
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.body.24
  %58 = load i32, i32* %j, align 4, !tbaa !5
  %inc51 = add nsw i32 %58, 1
  store i32 %inc51, i32* %j, align 4, !tbaa !5
  br label %for.cond.21

for.end.52:                                       ; preds = %for.cond.21
  %59 = load i32, i32* %i.addr, align 4, !tbaa !5
  %idxprom53 = zext i32 %59 to i64
  %60 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %buf54 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %60, i32 0, i32 8
  %61 = load %struct.gs_color_index_cache_elem_s*, %struct.gs_color_index_cache_elem_s** %buf54, align 8, !tbaa !38
  %arrayidx55 = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %61, i64 %idxprom53
  %frac_values_done56 = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %arrayidx55, i32 0, i32 7
  store i32 1, i32* %frac_values_done56, align 4, !tbaa !54
  br label %if.end

if.end:                                           ; preds = %for.end.52, %for.end
  %62 = bitcast i64* %c to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  %63 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast i32* %device_num_components to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast %struct.gx_device_color_info_s** %cinfo to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  ret void
}

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #4

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #4

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @hash_paint_values(%struct.gs_color_index_cache_s* %self, float* %paint_values) #3 {
entry:
  %self.addr = alloca %struct.gs_color_index_cache_s*, align 8
  %paint_values.addr = alloca float*, align 8
  %i = alloca i32, align 4
  %v = alloca float, align 4
  %k = alloca i32, align 4
  %a_prime = alloca i32, align 4
  store %struct.gs_color_index_cache_s* %self, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  store float* %paint_values, float** %paint_values.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast float* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store float 0.000000e+00, float* %v, align 4, !tbaa !59
  %2 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %k, align 4, !tbaa !5
  %3 = bitcast i32* %a_prime to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 79, i32* %a_prime, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !5
  %5 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %client_num_components = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %5, i32 0, i32 4
  %6 = load i32, i32* %client_num_components, align 4, !tbaa !35
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load float, float* %v, align 4, !tbaa !59
  %mul = fmul float %7, 7.900000e+01
  %8 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %8 to i64
  %9 = load float*, float** %paint_values.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %9, i64 %idxprom
  %10 = load float, float* %arrayidx, align 4, !tbaa !59
  %add = fadd float %mul, %10
  store float %add, float* %v, align 4, !tbaa !59
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.10, %for.end
  %12 = load i32, i32* %i, align 4, !tbaa !5
  %conv = sext i32 %12 to i64
  %cmp2 = icmp ult i64 %conv, 4
  br i1 %cmp2, label %for.body.4, label %for.end.12

for.body.4:                                       ; preds = %for.cond.1
  %13 = load i32, i32* %k, align 4, !tbaa !5
  %mul5 = mul i32 %13, 79
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom6 = sext i32 %14 to i64
  %15 = bitcast float* %v to i8*
  %arrayidx7 = getelementptr inbounds i8, i8* %15, i64 %idxprom6
  %16 = load i8, i8* %arrayidx7, align 1, !tbaa !58
  %conv8 = zext i8 %16 to i32
  %add9 = add i32 %mul5, %conv8
  store i32 %add9, i32* %k, align 4, !tbaa !5
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.body.4
  %17 = load i32, i32* %i, align 4, !tbaa !5
  %inc11 = add nsw i32 %17, 1
  store i32 %inc11, i32* %i, align 4, !tbaa !5
  br label %for.cond.1

for.end.12:                                       ; preds = %for.cond.1
  %18 = load i32, i32* %k, align 4, !tbaa !5
  %rem = urem i32 %18, 16
  %19 = bitcast i32* %a_prime to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = bitcast float* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  ret i32 %rem
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #5

; Function Attrs: inlinehint nounwind uwtable
define internal void @exclude_from_touch_list(%struct.gs_color_index_cache_s* %self, i32 %i) #3 {
entry:
  %self.addr = alloca %struct.gs_color_index_cache_s*, align 8
  %i.addr = alloca i32, align 4
  %ip = alloca i32, align 4
  %in = alloca i32, align 4
  store %struct.gs_color_index_cache_s* %self, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  store i32 %i, i32* %i.addr, align 4, !tbaa !5
  %0 = bitcast i32* %ip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %i.addr, align 4, !tbaa !5
  %idxprom = zext i32 %1 to i64
  %2 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %buf = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %2, i32 0, i32 8
  %3 = load %struct.gs_color_index_cache_elem_s*, %struct.gs_color_index_cache_elem_s** %buf, align 8, !tbaa !38
  %arrayidx = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %3, i64 %idxprom
  %touch_prev = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %arrayidx, i32 0, i32 5
  %4 = load i32, i32* %touch_prev, align 4, !tbaa !57
  store i32 %4, i32* %ip, align 4, !tbaa !5
  %5 = bitcast i32* %in to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %i.addr, align 4, !tbaa !5
  %idxprom1 = zext i32 %6 to i64
  %7 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %buf2 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %7, i32 0, i32 8
  %8 = load %struct.gs_color_index_cache_elem_s*, %struct.gs_color_index_cache_elem_s** %buf2, align 8, !tbaa !38
  %arrayidx3 = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %8, i64 %idxprom1
  %touch_next = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %arrayidx3, i32 0, i32 6
  %9 = load i32, i32* %touch_next, align 4, !tbaa !61
  store i32 %9, i32* %in, align 4, !tbaa !5
  %10 = load i32, i32* %in, align 4, !tbaa !5
  %11 = load i32, i32* %ip, align 4, !tbaa !5
  %idxprom4 = zext i32 %11 to i64
  %12 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %buf5 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %12, i32 0, i32 8
  %13 = load %struct.gs_color_index_cache_elem_s*, %struct.gs_color_index_cache_elem_s** %buf5, align 8, !tbaa !38
  %arrayidx6 = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %13, i64 %idxprom4
  %touch_next7 = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %arrayidx6, i32 0, i32 6
  store i32 %10, i32* %touch_next7, align 4, !tbaa !61
  %14 = load i32, i32* %ip, align 4, !tbaa !5
  %15 = load i32, i32* %in, align 4, !tbaa !5
  %idxprom8 = zext i32 %15 to i64
  %16 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %buf9 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %16, i32 0, i32 8
  %17 = load %struct.gs_color_index_cache_elem_s*, %struct.gs_color_index_cache_elem_s** %buf9, align 8, !tbaa !38
  %arrayidx10 = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %17, i64 %idxprom8
  %touch_prev11 = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %arrayidx10, i32 0, i32 5
  store i32 %14, i32* %touch_prev11, align 4, !tbaa !57
  %18 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %recent_touch = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %18, i32 0, i32 9
  %19 = load i32, i32* %recent_touch, align 4, !tbaa !39
  %20 = load i32, i32* %i.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %19, %20
  br i1 %cmp, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  %21 = load i32, i32* %i.addr, align 4, !tbaa !5
  %22 = load i32, i32* %in, align 4, !tbaa !5
  %cmp12 = icmp eq i32 %21, %22
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.then
  %23 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %recent_touch14 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %23, i32 0, i32 9
  store i32 0, i32* %recent_touch14, align 4, !tbaa !39
  br label %if.end

if.else:                                          ; preds = %if.then
  %24 = load i32, i32* %in, align 4, !tbaa !5
  %25 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %recent_touch15 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %25, i32 0, i32 9
  store i32 %24, i32* %recent_touch15, align 4, !tbaa !39
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.13
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %entry
  %26 = bitcast i32* %in to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast i32* %ip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @include_into_touch_list(%struct.gs_color_index_cache_s* %self, i32 %i) #3 {
entry:
  %self.addr = alloca %struct.gs_color_index_cache_s*, align 8
  %i.addr = alloca i32, align 4
  %in = alloca i32, align 4
  %ip = alloca i32, align 4
  store %struct.gs_color_index_cache_s* %self, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  store i32 %i, i32* %i.addr, align 4, !tbaa !5
  %0 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %recent_touch = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %0, i32 0, i32 9
  %1 = load i32, i32* %recent_touch, align 4, !tbaa !39
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = bitcast i32* %in to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %recent_touch1 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %3, i32 0, i32 9
  %4 = load i32, i32* %recent_touch1, align 4, !tbaa !39
  store i32 %4, i32* %in, align 4, !tbaa !5
  %5 = bitcast i32* %ip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %in, align 4, !tbaa !5
  %idxprom = zext i32 %6 to i64
  %7 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %buf = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %7, i32 0, i32 8
  %8 = load %struct.gs_color_index_cache_elem_s*, %struct.gs_color_index_cache_elem_s** %buf, align 8, !tbaa !38
  %arrayidx = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %8, i64 %idxprom
  %touch_prev = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %arrayidx, i32 0, i32 5
  %9 = load i32, i32* %touch_prev, align 4, !tbaa !57
  store i32 %9, i32* %ip, align 4, !tbaa !5
  %10 = load i32, i32* %in, align 4, !tbaa !5
  %11 = load i32, i32* %i.addr, align 4, !tbaa !5
  %idxprom2 = zext i32 %11 to i64
  %12 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %buf3 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %12, i32 0, i32 8
  %13 = load %struct.gs_color_index_cache_elem_s*, %struct.gs_color_index_cache_elem_s** %buf3, align 8, !tbaa !38
  %arrayidx4 = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %13, i64 %idxprom2
  %touch_next = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %arrayidx4, i32 0, i32 6
  store i32 %10, i32* %touch_next, align 4, !tbaa !61
  %14 = load i32, i32* %ip, align 4, !tbaa !5
  %15 = load i32, i32* %i.addr, align 4, !tbaa !5
  %idxprom5 = zext i32 %15 to i64
  %16 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %buf6 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %16, i32 0, i32 8
  %17 = load %struct.gs_color_index_cache_elem_s*, %struct.gs_color_index_cache_elem_s** %buf6, align 8, !tbaa !38
  %arrayidx7 = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %17, i64 %idxprom5
  %touch_prev8 = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %arrayidx7, i32 0, i32 5
  store i32 %14, i32* %touch_prev8, align 4, !tbaa !57
  %18 = load i32, i32* %i.addr, align 4, !tbaa !5
  %19 = load i32, i32* %in, align 4, !tbaa !5
  %idxprom9 = zext i32 %19 to i64
  %20 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %buf10 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %20, i32 0, i32 8
  %21 = load %struct.gs_color_index_cache_elem_s*, %struct.gs_color_index_cache_elem_s** %buf10, align 8, !tbaa !38
  %arrayidx11 = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %21, i64 %idxprom9
  %touch_prev12 = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %arrayidx11, i32 0, i32 5
  store i32 %18, i32* %touch_prev12, align 4, !tbaa !57
  %22 = load i32, i32* %i.addr, align 4, !tbaa !5
  %23 = load i32, i32* %ip, align 4, !tbaa !5
  %idxprom13 = zext i32 %23 to i64
  %24 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %buf14 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %24, i32 0, i32 8
  %25 = load %struct.gs_color_index_cache_elem_s*, %struct.gs_color_index_cache_elem_s** %buf14, align 8, !tbaa !38
  %arrayidx15 = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %25, i64 %idxprom13
  %touch_next16 = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %arrayidx15, i32 0, i32 6
  store i32 %22, i32* %touch_next16, align 4, !tbaa !61
  %26 = bitcast i32* %ip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast i32* %in to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  br label %if.end

if.else:                                          ; preds = %entry
  %28 = load i32, i32* %i.addr, align 4, !tbaa !5
  %29 = load i32, i32* %i.addr, align 4, !tbaa !5
  %idxprom17 = zext i32 %29 to i64
  %30 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %buf18 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %30, i32 0, i32 8
  %31 = load %struct.gs_color_index_cache_elem_s*, %struct.gs_color_index_cache_elem_s** %buf18, align 8, !tbaa !38
  %arrayidx19 = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %31, i64 %idxprom17
  %touch_next20 = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %arrayidx19, i32 0, i32 6
  store i32 %28, i32* %touch_next20, align 4, !tbaa !61
  %32 = load i32, i32* %i.addr, align 4, !tbaa !5
  %idxprom21 = zext i32 %32 to i64
  %33 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %buf22 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %33, i32 0, i32 8
  %34 = load %struct.gs_color_index_cache_elem_s*, %struct.gs_color_index_cache_elem_s** %buf22, align 8, !tbaa !38
  %arrayidx23 = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %34, i64 %idxprom21
  %touch_prev24 = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %arrayidx23, i32 0, i32 5
  store i32 %28, i32* %touch_prev24, align 4, !tbaa !57
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %35 = load i32, i32* %i.addr, align 4, !tbaa !5
  %36 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %recent_touch25 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %36, i32 0, i32 9
  store i32 %35, i32* %recent_touch25, align 4, !tbaa !39
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @exclude_from_chain(%struct.gs_color_index_cache_s* %self, i32 %i) #3 {
entry:
  %self.addr = alloca %struct.gs_color_index_cache_s*, align 8
  %i.addr = alloca i32, align 4
  %co = alloca i32, align 4
  %ip = alloca i32, align 4
  %in = alloca i32, align 4
  store %struct.gs_color_index_cache_s* %self, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  store i32 %i, i32* %i.addr, align 4, !tbaa !5
  %0 = bitcast i32* %co to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %i.addr, align 4, !tbaa !5
  %idxprom = zext i32 %1 to i64
  %2 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %buf = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %2, i32 0, i32 8
  %3 = load %struct.gs_color_index_cache_elem_s*, %struct.gs_color_index_cache_elem_s** %buf, align 8, !tbaa !38
  %arrayidx = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %3, i64 %idxprom
  %chain = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %arrayidx, i32 0, i32 2
  %4 = load i32, i32* %chain, align 4, !tbaa !62
  store i32 %4, i32* %co, align 4, !tbaa !5
  %5 = bitcast i32* %ip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %i.addr, align 4, !tbaa !5
  %idxprom1 = zext i32 %6 to i64
  %7 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %buf2 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %7, i32 0, i32 8
  %8 = load %struct.gs_color_index_cache_elem_s*, %struct.gs_color_index_cache_elem_s** %buf2, align 8, !tbaa !38
  %arrayidx3 = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %8, i64 %idxprom1
  %prev = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %arrayidx3, i32 0, i32 3
  %9 = load i32, i32* %prev, align 4, !tbaa !63
  store i32 %9, i32* %ip, align 4, !tbaa !5
  %10 = bitcast i32* %in to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load i32, i32* %i.addr, align 4, !tbaa !5
  %idxprom4 = zext i32 %11 to i64
  %12 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %buf5 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %12, i32 0, i32 8
  %13 = load %struct.gs_color_index_cache_elem_s*, %struct.gs_color_index_cache_elem_s** %buf5, align 8, !tbaa !38
  %arrayidx6 = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %13, i64 %idxprom4
  %next = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %arrayidx6, i32 0, i32 4
  %14 = load i32, i32* %next, align 4, !tbaa !56
  store i32 %14, i32* %in, align 4, !tbaa !5
  %15 = load i32, i32* %in, align 4, !tbaa !5
  %16 = load i32, i32* %ip, align 4, !tbaa !5
  %idxprom7 = zext i32 %16 to i64
  %17 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %buf8 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %17, i32 0, i32 8
  %18 = load %struct.gs_color_index_cache_elem_s*, %struct.gs_color_index_cache_elem_s** %buf8, align 8, !tbaa !38
  %arrayidx9 = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %18, i64 %idxprom7
  %next10 = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %arrayidx9, i32 0, i32 4
  store i32 %15, i32* %next10, align 4, !tbaa !56
  %19 = load i32, i32* %ip, align 4, !tbaa !5
  %20 = load i32, i32* %in, align 4, !tbaa !5
  %idxprom11 = zext i32 %20 to i64
  %21 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %buf12 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %21, i32 0, i32 8
  %22 = load %struct.gs_color_index_cache_elem_s*, %struct.gs_color_index_cache_elem_s** %buf12, align 8, !tbaa !38
  %arrayidx13 = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %22, i64 %idxprom11
  %prev14 = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %arrayidx13, i32 0, i32 3
  store i32 %19, i32* %prev14, align 4, !tbaa !63
  %23 = load i32, i32* %co, align 4, !tbaa !5
  %idxprom15 = zext i32 %23 to i64
  %24 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %chains = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %24, i32 0, i32 12
  %arrayidx16 = getelementptr inbounds [16 x i32], [16 x i32]* %chains, i32 0, i64 %idxprom15
  %25 = load i32, i32* %arrayidx16, align 4, !tbaa !5
  %26 = load i32, i32* %i.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %25, %26
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %27 = load i32, i32* %in, align 4, !tbaa !5
  %28 = load i32, i32* %co, align 4, !tbaa !5
  %idxprom17 = zext i32 %28 to i64
  %29 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %chains18 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %29, i32 0, i32 12
  %arrayidx19 = getelementptr inbounds [16 x i32], [16 x i32]* %chains18, i32 0, i64 %idxprom17
  store i32 %27, i32* %arrayidx19, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %30 = bitcast i32* %in to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %31 = bitcast i32* %ip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast i32* %co to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @include_into_chain(%struct.gs_color_index_cache_s* %self, i32 %i, i32 %c) #3 {
entry:
  %self.addr = alloca %struct.gs_color_index_cache_s*, align 8
  %i.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %in = alloca i32, align 4
  %ip = alloca i32, align 4
  store %struct.gs_color_index_cache_s* %self, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  store i32 %i, i32* %i.addr, align 4, !tbaa !5
  store i32 %c, i32* %c.addr, align 4, !tbaa !5
  %0 = load i32, i32* %c.addr, align 4, !tbaa !5
  %idxprom = zext i32 %0 to i64
  %1 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %chains = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %1, i32 0, i32 12
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* %chains, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = bitcast i32* %in to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %c.addr, align 4, !tbaa !5
  %idxprom1 = zext i32 %4 to i64
  %5 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %chains2 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %5, i32 0, i32 12
  %arrayidx3 = getelementptr inbounds [16 x i32], [16 x i32]* %chains2, i32 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx3, align 4, !tbaa !5
  store i32 %6, i32* %in, align 4, !tbaa !5
  %7 = bitcast i32* %ip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i32, i32* %in, align 4, !tbaa !5
  %idxprom4 = zext i32 %8 to i64
  %9 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %buf = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %9, i32 0, i32 8
  %10 = load %struct.gs_color_index_cache_elem_s*, %struct.gs_color_index_cache_elem_s** %buf, align 8, !tbaa !38
  %arrayidx5 = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %10, i64 %idxprom4
  %prev = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %arrayidx5, i32 0, i32 3
  %11 = load i32, i32* %prev, align 4, !tbaa !63
  store i32 %11, i32* %ip, align 4, !tbaa !5
  %12 = load i32, i32* %in, align 4, !tbaa !5
  %13 = load i32, i32* %i.addr, align 4, !tbaa !5
  %idxprom6 = zext i32 %13 to i64
  %14 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %buf7 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %14, i32 0, i32 8
  %15 = load %struct.gs_color_index_cache_elem_s*, %struct.gs_color_index_cache_elem_s** %buf7, align 8, !tbaa !38
  %arrayidx8 = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %15, i64 %idxprom6
  %next = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %arrayidx8, i32 0, i32 4
  store i32 %12, i32* %next, align 4, !tbaa !56
  %16 = load i32, i32* %ip, align 4, !tbaa !5
  %17 = load i32, i32* %i.addr, align 4, !tbaa !5
  %idxprom9 = zext i32 %17 to i64
  %18 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %buf10 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %18, i32 0, i32 8
  %19 = load %struct.gs_color_index_cache_elem_s*, %struct.gs_color_index_cache_elem_s** %buf10, align 8, !tbaa !38
  %arrayidx11 = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %19, i64 %idxprom9
  %prev12 = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %arrayidx11, i32 0, i32 3
  store i32 %16, i32* %prev12, align 4, !tbaa !63
  %20 = load i32, i32* %i.addr, align 4, !tbaa !5
  %21 = load i32, i32* %in, align 4, !tbaa !5
  %idxprom13 = zext i32 %21 to i64
  %22 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %buf14 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %22, i32 0, i32 8
  %23 = load %struct.gs_color_index_cache_elem_s*, %struct.gs_color_index_cache_elem_s** %buf14, align 8, !tbaa !38
  %arrayidx15 = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %23, i64 %idxprom13
  %prev16 = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %arrayidx15, i32 0, i32 3
  store i32 %20, i32* %prev16, align 4, !tbaa !63
  %24 = load i32, i32* %i.addr, align 4, !tbaa !5
  %25 = load i32, i32* %ip, align 4, !tbaa !5
  %idxprom17 = zext i32 %25 to i64
  %26 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %buf18 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %26, i32 0, i32 8
  %27 = load %struct.gs_color_index_cache_elem_s*, %struct.gs_color_index_cache_elem_s** %buf18, align 8, !tbaa !38
  %arrayidx19 = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %27, i64 %idxprom17
  %next20 = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %arrayidx19, i32 0, i32 4
  store i32 %24, i32* %next20, align 4, !tbaa !56
  %28 = bitcast i32* %ip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast i32* %in to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  br label %if.end

if.else:                                          ; preds = %entry
  %30 = load i32, i32* %i.addr, align 4, !tbaa !5
  %31 = load i32, i32* %i.addr, align 4, !tbaa !5
  %idxprom21 = zext i32 %31 to i64
  %32 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %buf22 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %32, i32 0, i32 8
  %33 = load %struct.gs_color_index_cache_elem_s*, %struct.gs_color_index_cache_elem_s** %buf22, align 8, !tbaa !38
  %arrayidx23 = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %33, i64 %idxprom21
  %next24 = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %arrayidx23, i32 0, i32 4
  store i32 %30, i32* %next24, align 4, !tbaa !56
  %34 = load i32, i32* %i.addr, align 4, !tbaa !5
  %idxprom25 = zext i32 %34 to i64
  %35 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %buf26 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %35, i32 0, i32 8
  %36 = load %struct.gs_color_index_cache_elem_s*, %struct.gs_color_index_cache_elem_s** %buf26, align 8, !tbaa !38
  %arrayidx27 = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %36, i64 %idxprom25
  %prev28 = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %arrayidx27, i32 0, i32 3
  store i32 %30, i32* %prev28, align 4, !tbaa !63
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %37 = load i32, i32* %i.addr, align 4, !tbaa !5
  %38 = load i32, i32* %c.addr, align 4, !tbaa !5
  %idxprom29 = zext i32 %38 to i64
  %39 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %chains30 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %39, i32 0, i32 12
  %arrayidx31 = getelementptr inbounds [16 x i32], [16 x i32]* %chains30, i32 0, i64 %idxprom29
  store i32 %37, i32* %arrayidx31, align 4, !tbaa !5
  %40 = load i32, i32* %c.addr, align 4, !tbaa !5
  %41 = load i32, i32* %i.addr, align 4, !tbaa !5
  %idxprom32 = zext i32 %41 to i64
  %42 = load %struct.gs_color_index_cache_s*, %struct.gs_color_index_cache_s** %self.addr, align 8, !tbaa !1
  %buf33 = getelementptr inbounds %struct.gs_color_index_cache_s, %struct.gs_color_index_cache_s* %42, i32 0, i32 8
  %43 = load %struct.gs_color_index_cache_elem_s*, %struct.gs_color_index_cache_elem_s** %buf33, align 8, !tbaa !38
  %arrayidx34 = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %43, i64 %idxprom32
  %chain = getelementptr inbounds %struct.gs_color_index_cache_elem_s, %struct.gs_color_index_cache_elem_s* %arrayidx34, i32 0, i32 2
  store i32 %40, i32* %chain, align 4, !tbaa !62
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin nounwind }
attributes #8 = { nobuiltin nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 0}
!8 = !{!"gs_color_space_s", !2, i64 0, !9, i64 8, !10, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !3, i64 72}
!9 = !{!"rc_header_s", !10, i64 0, !2, i64 8, !2, i64 16}
!10 = !{!"long", !3, i64 0}
!11 = !{!12, !2, i64 24}
!12 = !{!"gs_color_space_type_s", !3, i64 0, !6, i64 4, !6, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128}
!13 = !{!14, !6, i64 100}
!14 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !15, i64 96, !18, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !19, i64 984, !6, i64 1052, !6, i64 1056, !20, i64 1064, !2, i64 1104, !3, i64 1112, !22, i64 1120, !23, i64 1144}
!15 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !16, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !17, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !10, i64 704, !6, i64 712}
!16 = !{!"short", !3, i64 0}
!17 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!18 = !{!"gx_device_cached_colors_s", !10, i64 0, !10, i64 8}
!19 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!20 = !{!"gdev_space_params_s", !10, i64 0, !10, i64 8, !21, i64 16, !6, i64 32, !3, i64 36}
!21 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !10, i64 8}
!22 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!23 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!24 = !{!25, !2, i64 88}
!25 = !{!"gs_memory_s", !2, i64 0, !26, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!26 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!27 = !{!25, !2, i64 72}
!28 = !{!25, !2, i64 24}
!29 = !{!30, !2, i64 0}
!30 = !{!"gs_color_index_cache_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !6, i64 32, !6, i64 36, !2, i64 40, !6, i64 48, !2, i64 56, !6, i64 64, !2, i64 72, !2, i64 80, !3, i64 88}
!31 = !{!30, !2, i64 8}
!32 = !{!30, !2, i64 16}
!33 = !{!30, !2, i64 24}
!34 = !{!30, !6, i64 36}
!35 = !{!30, !6, i64 32}
!36 = !{!30, !2, i64 40}
!37 = !{!30, !6, i64 48}
!38 = !{!30, !2, i64 56}
!39 = !{!30, !6, i64 64}
!40 = !{!30, !2, i64 72}
!41 = !{!30, !2, i64 80}
!42 = !{!43, !2, i64 128}
!43 = !{!"gs_color_index_cache_elem_s", !3, i64 0, !2, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156}
!44 = !{!10, !10, i64 0}
!45 = !{!46, !2, i64 0}
!46 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !47, i64 352, !6, i64 360, !48, i64 368, !50, i64 632}
!47 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!48 = !{!"gs_client_color_s", !2, i64 0, !49, i64 8}
!49 = !{!"gs_paint_color_s", !3, i64 0}
!50 = !{!"_mask", !51, i64 0, !10, i64 8, !2, i64 16}
!51 = !{!"mp_", !6, i64 0, !6, i64 4}
!52 = !{!16, !16, i64 0}
!53 = !{!46, !6, i64 360}
!54 = !{!43, !6, i64 156}
!55 = !{!12, !2, i64 72}
!56 = !{!43, !6, i64 144}
!57 = !{!43, !6, i64 148}
!58 = !{!3, !3, i64 0}
!59 = !{!60, !60, i64 0}
!60 = !{!"float", !3, i64 0}
!61 = !{!43, !6, i64 152}
!62 = !{!43, !6, i64 136}
!63 = !{!43, !6, i64 140}
