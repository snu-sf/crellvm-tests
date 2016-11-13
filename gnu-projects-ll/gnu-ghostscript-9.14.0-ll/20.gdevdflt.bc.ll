; ModuleID = './gdevdflt.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, {}*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
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
%struct.gs_composite_s = type { %struct.gs_composite_type_s*, i64, i32, %struct.gs_composite_s*, %struct.gs_composite_s* }
%struct.gs_composite_type_s = type { i8, %struct.gs_composite_type_procs_s }
%struct.gs_composite_type_procs_s = type { i32 (%struct.gs_composite_s*, %struct.gx_device_s**, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s*)*, i32 (%struct.gs_composite_s*, i8*, i32*, %struct.gx_device_clist_writer_s*)*, i32 (%struct.gs_composite_s**, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32, i32, %struct.gs_imager_state_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s**, %struct.gx_device_s*)*, i32 (%struct.gs_composite_s*, i8, i8)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32*, i32*, i32, i32)* }
%struct.gx_device_clist_writer_s = type opaque
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

; Function Attrs: nounwind uwtable
define void @set_linear_color_bits_mask_shift(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %i = alloca i32, align 4
  %gray_index = alloca i8, align 1
  %max_gray = alloca i16, align 2
  %max_color = alloca i16, align 2
  %num_components = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  call void @llvm.lifetime.start(i64 1, i8* %gray_index) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 11
  %gray_index1 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 4
  %2 = load i8, i8* %gray_index1, align 1, !tbaa !5
  store i8 %2, i8* %gray_index, align 1, !tbaa !19
  %3 = bitcast i16* %max_gray to i8*
  call void @llvm.lifetime.start(i64 2, i8* %3) #1
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 11
  %max_gray3 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info2, i32 0, i32 5
  %5 = load i32, i32* %max_gray3, align 4, !tbaa !20
  %conv = trunc i32 %5 to i16
  store i16 %conv, i16* %max_gray, align 2, !tbaa !21
  %6 = bitcast i16* %max_color to i8*
  call void @llvm.lifetime.start(i64 2, i8* %6) #1
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info4 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 11
  %max_color5 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info4, i32 0, i32 6
  %8 = load i32, i32* %max_color5, align 4, !tbaa !22
  %conv6 = trunc i32 %8 to i16
  store i16 %conv6, i16* %max_color, align 2, !tbaa !21
  %9 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info7 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %10, i32 0, i32 11
  %num_components8 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info7, i32 0, i32 1
  %11 = load i32, i32* %num_components8, align 4, !tbaa !23
  store i32 %11, i32* %num_components, align 4, !tbaa !24
  %12 = load i32, i32* %num_components, align 4, !tbaa !24
  %sub = sub nsw i32 %12, 1
  %idxprom = sext i32 %sub to i64
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info9 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %13, i32 0, i32 11
  %comp_shift = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info9, i32 0, i32 11
  %arrayidx = getelementptr inbounds [64 x i8], [64 x i8]* %comp_shift, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !19
  %14 = load i32, i32* %num_components, align 4, !tbaa !24
  %sub10 = sub nsw i32 %14, 1
  %sub11 = sub nsw i32 %sub10, 1
  store i32 %sub11, i32* %i, align 4, !tbaa !24
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %15 = load i32, i32* %i, align 4, !tbaa !24
  %cmp = icmp sge i32 %15, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4, !tbaa !24
  %add = add nsw i32 %16, 1
  %idxprom13 = sext i32 %add to i64
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info14 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 11
  %comp_shift15 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info14, i32 0, i32 11
  %arrayidx16 = getelementptr inbounds [64 x i8], [64 x i8]* %comp_shift15, i32 0, i64 %idxprom13
  %18 = load i8, i8* %arrayidx16, align 1, !tbaa !19
  %conv17 = zext i8 %18 to i32
  %19 = load i32, i32* %i, align 4, !tbaa !24
  %20 = load i8, i8* %gray_index, align 1, !tbaa !19
  %conv18 = zext i8 %20 to i32
  %cmp19 = icmp eq i32 %19, %conv18
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %21 = load i16, i16* %max_gray, align 2, !tbaa !21
  %conv21 = zext i16 %21 to i32
  %add22 = add nsw i32 %conv21, 1
  %call = call i32 @ilog2(i32 %add22) #3
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %22 = load i16, i16* %max_color, align 2, !tbaa !21
  %conv23 = zext i16 %22 to i32
  %add24 = add nsw i32 %conv23, 1
  %call25 = call i32 @ilog2(i32 %add24) #3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call25, %cond.false ]
  %add26 = add nsw i32 %conv17, %cond
  %conv27 = trunc i32 %add26 to i8
  %23 = load i32, i32* %i, align 4, !tbaa !24
  %idxprom28 = sext i32 %23 to i64
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info29 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %24, i32 0, i32 11
  %comp_shift30 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info29, i32 0, i32 11
  %arrayidx31 = getelementptr inbounds [64 x i8], [64 x i8]* %comp_shift30, i32 0, i64 %idxprom28
  store i8 %conv27, i8* %arrayidx31, align 1, !tbaa !19
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %25 = load i32, i32* %i, align 4, !tbaa !24
  %dec = add nsw i32 %25, -1
  store i32 %dec, i32* %i, align 4, !tbaa !24
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !24
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.69, %for.end
  %26 = load i32, i32* %i, align 4, !tbaa !24
  %27 = load i32, i32* %num_components, align 4, !tbaa !24
  %cmp33 = icmp slt i32 %26, %27
  br i1 %cmp33, label %for.body.35, label %for.end.70

for.body.35:                                      ; preds = %for.cond.32
  %28 = load i32, i32* %i, align 4, !tbaa !24
  %29 = load i8, i8* %gray_index, align 1, !tbaa !19
  %conv36 = zext i8 %29 to i32
  %cmp37 = icmp eq i32 %28, %conv36
  br i1 %cmp37, label %cond.true.39, label %cond.false.43

cond.true.39:                                     ; preds = %for.body.35
  %30 = load i16, i16* %max_gray, align 2, !tbaa !21
  %conv40 = zext i16 %30 to i32
  %add41 = add nsw i32 %conv40, 1
  %call42 = call i32 @ilog2(i32 %add41) #3
  br label %cond.end.47

cond.false.43:                                    ; preds = %for.body.35
  %31 = load i16, i16* %max_color, align 2, !tbaa !21
  %conv44 = zext i16 %31 to i32
  %add45 = add nsw i32 %conv44, 1
  %call46 = call i32 @ilog2(i32 %add45) #3
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.43, %cond.true.39
  %cond48 = phi i32 [ %call42, %cond.true.39 ], [ %call46, %cond.false.43 ]
  %conv49 = trunc i32 %cond48 to i8
  %32 = load i32, i32* %i, align 4, !tbaa !24
  %idxprom50 = sext i32 %32 to i64
  %33 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info51 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %33, i32 0, i32 11
  %comp_bits = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info51, i32 0, i32 12
  %arrayidx52 = getelementptr inbounds [64 x i8], [64 x i8]* %comp_bits, i32 0, i64 %idxprom50
  store i8 %conv49, i8* %arrayidx52, align 1, !tbaa !19
  %34 = load i32, i32* %i, align 4, !tbaa !24
  %idxprom53 = sext i32 %34 to i64
  %35 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info54 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %35, i32 0, i32 11
  %comp_bits55 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info54, i32 0, i32 12
  %arrayidx56 = getelementptr inbounds [64 x i8], [64 x i8]* %comp_bits55, i32 0, i64 %idxprom53
  %36 = load i8, i8* %arrayidx56, align 1, !tbaa !19
  %conv57 = zext i8 %36 to i32
  %sh_prom = zext i32 %conv57 to i64
  %shl = shl i64 1, %sh_prom
  %sub58 = sub i64 %shl, 1
  %37 = load i32, i32* %i, align 4, !tbaa !24
  %idxprom59 = sext i32 %37 to i64
  %38 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info60 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %38, i32 0, i32 11
  %comp_shift61 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info60, i32 0, i32 11
  %arrayidx62 = getelementptr inbounds [64 x i8], [64 x i8]* %comp_shift61, i32 0, i64 %idxprom59
  %39 = load i8, i8* %arrayidx62, align 1, !tbaa !19
  %conv63 = zext i8 %39 to i32
  %sh_prom64 = zext i32 %conv63 to i64
  %shl65 = shl i64 %sub58, %sh_prom64
  %40 = load i32, i32* %i, align 4, !tbaa !24
  %idxprom66 = sext i32 %40 to i64
  %41 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info67 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %41, i32 0, i32 11
  %comp_mask = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info67, i32 0, i32 13
  %arrayidx68 = getelementptr inbounds [64 x i64], [64 x i64]* %comp_mask, i32 0, i64 %idxprom66
  store i64 %shl65, i64* %arrayidx68, align 8, !tbaa !25
  br label %for.inc.69

for.inc.69:                                       ; preds = %cond.end.47
  %42 = load i32, i32* %i, align 4, !tbaa !24
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %i, align 4, !tbaa !24
  br label %for.cond.32

for.end.70:                                       ; preds = %for.cond.32
  %43 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast i16* %max_color to i8*
  call void @llvm.lifetime.end(i64 2, i8* %44) #1
  %45 = bitcast i16* %max_gray to i8*
  call void @llvm.lifetime.end(i64 2, i8* %45) #1
  call void @llvm.lifetime.end(i64 1, i8* %gray_index) #1
  %46 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @ilog2(i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @check_device_separable(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %pinfo = alloca %struct.gx_device_color_info_s*, align 8
  %num_components = alloca i32, align 4
  %comp_shift = alloca [64 x i8], align 16
  %comp_bits = alloca [64 x i8], align 16
  %comp_mask = alloca [64 x i64], align 16
  %color_index = alloca i64, align 8
  %current_bits = alloca i64, align 8
  %colorants = alloca [64 x i16], align 16
  %cleanup.dest.slot = alloca i32
  %dither = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.gx_device_color_info_s** %pinfo to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 11
  store %struct.gx_device_color_info_s* %color_info, %struct.gx_device_color_info_s** %pinfo, align 8, !tbaa !1
  %4 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %pinfo, align 8, !tbaa !1
  %num_components1 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %5, i32 0, i32 1
  %6 = load i32, i32* %num_components1, align 4, !tbaa !26
  store i32 %6, i32* %num_components, align 4, !tbaa !24
  %7 = bitcast [64 x i8]* %comp_shift to i8*
  call void @llvm.lifetime.start(i64 64, i8* %7) #1
  %8 = bitcast [64 x i8]* %comp_bits to i8*
  call void @llvm.lifetime.start(i64 64, i8* %8) #1
  %9 = bitcast [64 x i64]* %comp_mask to i8*
  call void @llvm.lifetime.start(i64 512, i8* %9) #1
  %10 = bitcast i64* %color_index to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i64* %current_bits to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i64 0, i64* %current_bits, align 8, !tbaa !25
  %12 = bitcast [64 x i16]* %colorants to i8*
  call void @llvm.lifetime.start(i64 128, i8* %12) #1
  %13 = bitcast [64 x i16]* %colorants to i8*
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 128, i32 16, i1 false)
  %14 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %pinfo, align 8, !tbaa !1
  %separable_and_linear = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %14, i32 0, i32 10
  %15 = load i32, i32* %separable_and_linear, align 4, !tbaa !27
  %cmp = icmp ne i32 %15, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.166

if.end:                                           ; preds = %entry
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %16, i32 0, i32 42
  %encode_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 51
  %17 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color, align 8, !tbaa !28
  %cmp2 = icmp eq i64 (%struct.gx_device_s*, i16*)* %17, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.166

if.end.4:                                         ; preds = %if.end
  %18 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %pinfo, align 8, !tbaa !1
  %gray_index = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %18, i32 0, i32 4
  %19 = load i8, i8* %gray_index, align 1, !tbaa !29
  %conv = zext i8 %19 to i32
  %20 = load i32, i32* %num_components, align 4, !tbaa !24
  %cmp5 = icmp slt i32 %conv, %20
  br i1 %cmp5, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %if.end.4
  %21 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %pinfo, align 8, !tbaa !1
  %dither_grays = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %21, i32 0, i32 7
  %22 = load i32, i32* %dither_grays, align 4, !tbaa !30
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then.10

lor.lhs.false:                                    ; preds = %land.lhs.true
  %23 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %pinfo, align 8, !tbaa !1
  %dither_grays7 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %23, i32 0, i32 7
  %24 = load i32, i32* %dither_grays7, align 4, !tbaa !30
  %25 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %pinfo, align 8, !tbaa !1
  %max_gray = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %25, i32 0, i32 5
  %26 = load i32, i32* %max_gray, align 4, !tbaa !31
  %add = add i32 %26, 1
  %cmp8 = icmp ne i32 %24, %add
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %lor.lhs.false, %land.lhs.true
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.166

if.end.11:                                        ; preds = %lor.lhs.false, %if.end.4
  %27 = load i32, i32* %num_components, align 4, !tbaa !24
  %cmp12 = icmp sgt i32 %27, 1
  br i1 %cmp12, label %land.lhs.true.19, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %if.end.11
  %28 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %pinfo, align 8, !tbaa !1
  %gray_index15 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %28, i32 0, i32 4
  %29 = load i8, i8* %gray_index15, align 1, !tbaa !29
  %conv16 = zext i8 %29 to i32
  %cmp17 = icmp ne i32 %conv16, 0
  br i1 %cmp17, label %land.lhs.true.19, label %if.end.27

land.lhs.true.19:                                 ; preds = %lor.lhs.false.14, %if.end.11
  %30 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %pinfo, align 8, !tbaa !1
  %dither_colors = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %30, i32 0, i32 8
  %31 = load i32, i32* %dither_colors, align 4, !tbaa !32
  %tobool20 = icmp ne i32 %31, 0
  br i1 %tobool20, label %lor.lhs.false.21, label %if.then.26

lor.lhs.false.21:                                 ; preds = %land.lhs.true.19
  %32 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %pinfo, align 8, !tbaa !1
  %dither_colors22 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %32, i32 0, i32 8
  %33 = load i32, i32* %dither_colors22, align 4, !tbaa !32
  %34 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %pinfo, align 8, !tbaa !1
  %max_color = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %34, i32 0, i32 6
  %35 = load i32, i32* %max_color, align 4, !tbaa !33
  %add23 = add i32 %35, 1
  %cmp24 = icmp ne i32 %33, %add23
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %lor.lhs.false.21, %land.lhs.true.19
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.166

if.end.27:                                        ; preds = %lor.lhs.false.21, %lor.lhs.false.14
  %36 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %pinfo, align 8, !tbaa !1
  %dither_grays28 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %36, i32 0, i32 7
  %37 = load i32, i32* %dither_grays28, align 4, !tbaa !30
  %sub = sub i32 %37, 1
  %38 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %pinfo, align 8, !tbaa !1
  %dither_grays29 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %38, i32 0, i32 7
  %39 = load i32, i32* %dither_grays29, align 4, !tbaa !30
  %and = and i32 %sub, %39
  %cmp30 = icmp eq i32 %and, 0
  br i1 %cmp30, label %lor.lhs.false.32, label %if.then.39

lor.lhs.false.32:                                 ; preds = %if.end.27
  %40 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %pinfo, align 8, !tbaa !1
  %dither_colors33 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %40, i32 0, i32 8
  %41 = load i32, i32* %dither_colors33, align 4, !tbaa !32
  %sub34 = sub i32 %41, 1
  %42 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %pinfo, align 8, !tbaa !1
  %dither_colors35 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %42, i32 0, i32 8
  %43 = load i32, i32* %dither_colors35, align 4, !tbaa !32
  %and36 = and i32 %sub34, %43
  %cmp37 = icmp eq i32 %and36, 0
  br i1 %cmp37, label %if.end.40, label %if.then.39

if.then.39:                                       ; preds = %lor.lhs.false.32, %if.end.27
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.166

if.end.40:                                        ; preds = %lor.lhs.false.32
  %44 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs41 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %44, i32 0, i32 42
  %encode_color42 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs41, i32 0, i32 51
  %45 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color42, align 8, !tbaa !28
  %46 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %colorants, i32 0, i32 0
  %call = call i64 %45(%struct.gx_device_s* %46, i16* %arraydecay) #3
  store i64 %call, i64* %color_index, align 8, !tbaa !25
  %47 = load i64, i64* %color_index, align 8, !tbaa !25
  %cmp43 = icmp ne i64 %47, 0
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.40
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.166

if.end.46:                                        ; preds = %if.end.40
  store i32 0, i32* %i, align 4, !tbaa !24
  br label %for.cond

for.cond:                                         ; preds = %for.inc.119, %if.end.46
  %48 = load i32, i32* %i, align 4, !tbaa !24
  %49 = load i32, i32* %num_components, align 4, !tbaa !24
  %cmp47 = icmp slt i32 %48, %49
  br i1 %cmp47, label %for.body, label %for.end.121

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !tbaa !24
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc, %for.body
  %50 = load i32, i32* %j, align 4, !tbaa !24
  %51 = load i32, i32* %num_components, align 4, !tbaa !24
  %cmp50 = icmp slt i32 %50, %51
  br i1 %cmp50, label %for.body.52, label %for.end

for.body.52:                                      ; preds = %for.cond.49
  %52 = load i32, i32* %j, align 4, !tbaa !24
  %idxprom = sext i32 %52 to i64
  %arrayidx = getelementptr inbounds [64 x i16], [64 x i16]* %colorants, i32 0, i64 %idxprom
  store i16 0, i16* %arrayidx, align 2, !tbaa !21
  br label %for.inc

for.inc:                                          ; preds = %for.body.52
  %53 = load i32, i32* %j, align 4, !tbaa !24
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* %j, align 4, !tbaa !24
  br label %for.cond.49

for.end:                                          ; preds = %for.cond.49
  %54 = load i32, i32* %i, align 4, !tbaa !24
  %idxprom53 = sext i32 %54 to i64
  %arrayidx54 = getelementptr inbounds [64 x i16], [64 x i16]* %colorants, i32 0, i64 %idxprom53
  store i16 -1, i16* %arrayidx54, align 2, !tbaa !21
  %55 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs55 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %55, i32 0, i32 42
  %encode_color56 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs55, i32 0, i32 51
  %56 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color56, align 8, !tbaa !28
  %57 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay57 = getelementptr inbounds [64 x i16], [64 x i16]* %colorants, i32 0, i32 0
  %call58 = call i64 %56(%struct.gx_device_s* %57, i16* %arraydecay57) #3
  store i64 %call58, i64* %color_index, align 8, !tbaa !25
  %58 = load i64, i64* %color_index, align 8, !tbaa !25
  %cmp59 = icmp eq i64 %58, 0
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %for.end
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.166

if.end.62:                                        ; preds = %for.end
  %59 = load i64, i64* %color_index, align 8, !tbaa !25
  %60 = load i64, i64* %current_bits, align 8, !tbaa !25
  %and63 = and i64 %59, %60
  %tobool64 = icmp ne i64 %and63, 0
  br i1 %tobool64, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.end.62
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.166

if.end.66:                                        ; preds = %if.end.62
  %61 = load i64, i64* %color_index, align 8, !tbaa !25
  %62 = load i64, i64* %current_bits, align 8, !tbaa !25
  %or = or i64 %62, %61
  store i64 %or, i64* %current_bits, align 8, !tbaa !25
  %63 = load i64, i64* %color_index, align 8, !tbaa !25
  %64 = load i32, i32* %i, align 4, !tbaa !24
  %idxprom67 = sext i32 %64 to i64
  %arrayidx68 = getelementptr inbounds [64 x i64], [64 x i64]* %comp_mask, i32 0, i64 %idxprom67
  store i64 %63, i64* %arrayidx68, align 8, !tbaa !25
  store i32 0, i32* %j, align 4, !tbaa !24
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.76, %if.end.66
  %65 = load i64, i64* %color_index, align 8, !tbaa !25
  %and70 = and i64 %65, 1
  %cmp71 = icmp eq i64 %and70, 0
  br i1 %cmp71, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.69
  %66 = load i64, i64* %color_index, align 8, !tbaa !25
  %cmp73 = icmp ne i64 %66, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.69
  %67 = phi i1 [ false, %for.cond.69 ], [ %cmp73, %land.rhs ]
  br i1 %67, label %for.body.75, label %for.end.78

for.body.75:                                      ; preds = %land.end
  %68 = load i64, i64* %color_index, align 8, !tbaa !25
  %shr = lshr i64 %68, 1
  store i64 %shr, i64* %color_index, align 8, !tbaa !25
  br label %for.inc.76

for.inc.76:                                       ; preds = %for.body.75
  %69 = load i32, i32* %j, align 4, !tbaa !24
  %inc77 = add nsw i32 %69, 1
  store i32 %inc77, i32* %j, align 4, !tbaa !24
  br label %for.cond.69

for.end.78:                                       ; preds = %land.end
  %70 = load i32, i32* %j, align 4, !tbaa !24
  %conv79 = trunc i32 %70 to i8
  %71 = load i32, i32* %i, align 4, !tbaa !24
  %idxprom80 = sext i32 %71 to i64
  %arrayidx81 = getelementptr inbounds [64 x i8], [64 x i8]* %comp_shift, i32 0, i64 %idxprom80
  store i8 %conv79, i8* %arrayidx81, align 1, !tbaa !19
  store i32 0, i32* %j, align 4, !tbaa !24
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc.92, %for.end.78
  %72 = load i64, i64* %color_index, align 8, !tbaa !25
  %cmp83 = icmp ne i64 %72, 0
  br i1 %cmp83, label %for.body.85, label %for.end.94

for.body.85:                                      ; preds = %for.cond.82
  %73 = load i64, i64* %color_index, align 8, !tbaa !25
  %and86 = and i64 %73, 1
  %cmp87 = icmp eq i64 %and86, 0
  br i1 %cmp87, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %for.body.85
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.166

if.end.90:                                        ; preds = %for.body.85
  %74 = load i64, i64* %color_index, align 8, !tbaa !25
  %shr91 = lshr i64 %74, 1
  store i64 %shr91, i64* %color_index, align 8, !tbaa !25
  br label %for.inc.92

for.inc.92:                                       ; preds = %if.end.90
  %75 = load i32, i32* %j, align 4, !tbaa !24
  %inc93 = add nsw i32 %75, 1
  store i32 %inc93, i32* %j, align 4, !tbaa !24
  br label %for.cond.82

for.end.94:                                       ; preds = %for.cond.82
  %76 = load i32, i32* %j, align 4, !tbaa !24
  %conv95 = trunc i32 %76 to i8
  %77 = load i32, i32* %i, align 4, !tbaa !24
  %idxprom96 = sext i32 %77 to i64
  %arrayidx97 = getelementptr inbounds [64 x i8], [64 x i8]* %comp_bits, i32 0, i64 %idxprom96
  store i8 %conv95, i8* %arrayidx97, align 1, !tbaa !19
  store i32 0, i32* %j, align 4, !tbaa !24
  br label %for.cond.98

for.cond.98:                                      ; preds = %for.inc.104, %for.end.94
  %78 = load i32, i32* %j, align 4, !tbaa !24
  %79 = load i32, i32* %num_components, align 4, !tbaa !24
  %cmp99 = icmp slt i32 %78, %79
  br i1 %cmp99, label %for.body.101, label %for.end.106

for.body.101:                                     ; preds = %for.cond.98
  %80 = load i32, i32* %j, align 4, !tbaa !24
  %idxprom102 = sext i32 %80 to i64
  %arrayidx103 = getelementptr inbounds [64 x i16], [64 x i16]* %colorants, i32 0, i64 %idxprom102
  store i16 -1, i16* %arrayidx103, align 2, !tbaa !21
  br label %for.inc.104

for.inc.104:                                      ; preds = %for.body.101
  %81 = load i32, i32* %j, align 4, !tbaa !24
  %inc105 = add nsw i32 %81, 1
  store i32 %inc105, i32* %j, align 4, !tbaa !24
  br label %for.cond.98

for.end.106:                                      ; preds = %for.cond.98
  %82 = load i32, i32* %i, align 4, !tbaa !24
  %idxprom107 = sext i32 %82 to i64
  %arrayidx108 = getelementptr inbounds [64 x i16], [64 x i16]* %colorants, i32 0, i64 %idxprom107
  store i16 0, i16* %arrayidx108, align 2, !tbaa !21
  %83 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs109 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %83, i32 0, i32 42
  %encode_color110 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs109, i32 0, i32 51
  %84 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color110, align 8, !tbaa !28
  %85 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay111 = getelementptr inbounds [64 x i16], [64 x i16]* %colorants, i32 0, i32 0
  %call112 = call i64 %84(%struct.gx_device_s* %85, i16* %arraydecay111) #3
  store i64 %call112, i64* %color_index, align 8, !tbaa !25
  %86 = load i64, i64* %color_index, align 8, !tbaa !25
  %87 = load i32, i32* %i, align 4, !tbaa !24
  %idxprom113 = sext i32 %87 to i64
  %arrayidx114 = getelementptr inbounds [64 x i64], [64 x i64]* %comp_mask, i32 0, i64 %idxprom113
  %88 = load i64, i64* %arrayidx114, align 8, !tbaa !25
  %and115 = and i64 %86, %88
  %tobool116 = icmp ne i64 %and115, 0
  br i1 %tobool116, label %if.then.117, label %if.end.118

if.then.117:                                      ; preds = %for.end.106
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.166

if.end.118:                                       ; preds = %for.end.106
  br label %for.inc.119

for.inc.119:                                      ; preds = %if.end.118
  %89 = load i32, i32* %i, align 4, !tbaa !24
  %inc120 = add nsw i32 %89, 1
  store i32 %inc120, i32* %i, align 4, !tbaa !24
  br label %for.cond

for.end.121:                                      ; preds = %for.cond
  %90 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %pinfo, align 8, !tbaa !1
  %separable_and_linear122 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %90, i32 0, i32 10
  store i32 1, i32* %separable_and_linear122, align 4, !tbaa !27
  store i32 0, i32* %i, align 4, !tbaa !24
  br label %for.cond.123

for.cond.123:                                     ; preds = %for.inc.142, %for.end.121
  %91 = load i32, i32* %i, align 4, !tbaa !24
  %92 = load i32, i32* %num_components, align 4, !tbaa !24
  %cmp124 = icmp slt i32 %91, %92
  br i1 %cmp124, label %for.body.126, label %for.end.144

for.body.126:                                     ; preds = %for.cond.123
  %93 = load i32, i32* %i, align 4, !tbaa !24
  %idxprom127 = sext i32 %93 to i64
  %arrayidx128 = getelementptr inbounds [64 x i8], [64 x i8]* %comp_shift, i32 0, i64 %idxprom127
  %94 = load i8, i8* %arrayidx128, align 1, !tbaa !19
  %95 = load i32, i32* %i, align 4, !tbaa !24
  %idxprom129 = sext i32 %95 to i64
  %96 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %pinfo, align 8, !tbaa !1
  %comp_shift130 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %96, i32 0, i32 11
  %arrayidx131 = getelementptr inbounds [64 x i8], [64 x i8]* %comp_shift130, i32 0, i64 %idxprom129
  store i8 %94, i8* %arrayidx131, align 1, !tbaa !19
  %97 = load i32, i32* %i, align 4, !tbaa !24
  %idxprom132 = sext i32 %97 to i64
  %arrayidx133 = getelementptr inbounds [64 x i8], [64 x i8]* %comp_bits, i32 0, i64 %idxprom132
  %98 = load i8, i8* %arrayidx133, align 1, !tbaa !19
  %99 = load i32, i32* %i, align 4, !tbaa !24
  %idxprom134 = sext i32 %99 to i64
  %100 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %pinfo, align 8, !tbaa !1
  %comp_bits135 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %100, i32 0, i32 12
  %arrayidx136 = getelementptr inbounds [64 x i8], [64 x i8]* %comp_bits135, i32 0, i64 %idxprom134
  store i8 %98, i8* %arrayidx136, align 1, !tbaa !19
  %101 = load i32, i32* %i, align 4, !tbaa !24
  %idxprom137 = sext i32 %101 to i64
  %arrayidx138 = getelementptr inbounds [64 x i64], [64 x i64]* %comp_mask, i32 0, i64 %idxprom137
  %102 = load i64, i64* %arrayidx138, align 8, !tbaa !25
  %103 = load i32, i32* %i, align 4, !tbaa !24
  %idxprom139 = sext i32 %103 to i64
  %104 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %pinfo, align 8, !tbaa !1
  %comp_mask140 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %104, i32 0, i32 13
  %arrayidx141 = getelementptr inbounds [64 x i64], [64 x i64]* %comp_mask140, i32 0, i64 %idxprom139
  store i64 %102, i64* %arrayidx141, align 8, !tbaa !25
  br label %for.inc.142

for.inc.142:                                      ; preds = %for.body.126
  %105 = load i32, i32* %i, align 4, !tbaa !24
  %inc143 = add nsw i32 %105, 1
  store i32 %inc143, i32* %i, align 4, !tbaa !24
  br label %for.cond.123

for.end.144:                                      ; preds = %for.cond.123
  store i32 0, i32* %i, align 4, !tbaa !24
  br label %for.cond.145

for.cond.145:                                     ; preds = %for.inc.163, %for.end.144
  %106 = load i32, i32* %i, align 4, !tbaa !24
  %107 = load i32, i32* %num_components, align 4, !tbaa !24
  %cmp146 = icmp slt i32 %106, %107
  br i1 %cmp146, label %for.body.148, label %for.end.165

for.body.148:                                     ; preds = %for.cond.145
  %108 = bitcast i32* %dither to i8*
  call void @llvm.lifetime.start(i64 4, i8* %108) #1
  %109 = load i32, i32* %i, align 4, !tbaa !24
  %idxprom149 = sext i32 %109 to i64
  %arrayidx150 = getelementptr inbounds [64 x i8], [64 x i8]* %comp_bits, i32 0, i64 %idxprom149
  %110 = load i8, i8* %arrayidx150, align 1, !tbaa !19
  %conv151 = zext i8 %110 to i32
  %shl = shl i32 1, %conv151
  store i32 %shl, i32* %dither, align 4, !tbaa !24
  %111 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %pinfo, align 8, !tbaa !1
  %dither_grays152 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %111, i32 0, i32 7
  %112 = load i32, i32* %dither_grays152, align 4, !tbaa !30
  %cmp153 = icmp ne i32 %112, 1
  br i1 %cmp153, label %land.lhs.true.155, label %if.end.162

land.lhs.true.155:                                ; preds = %for.body.148
  %113 = load i32, i32* %dither, align 4, !tbaa !24
  %114 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %pinfo, align 8, !tbaa !1
  %dither_grays156 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %114, i32 0, i32 7
  %115 = load i32, i32* %dither_grays156, align 4, !tbaa !30
  %cmp157 = icmp eq i32 %113, %115
  br i1 %cmp157, label %if.then.159, label %if.end.162

if.then.159:                                      ; preds = %land.lhs.true.155
  %116 = load i32, i32* %i, align 4, !tbaa !24
  %conv160 = trunc i32 %116 to i8
  %117 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %pinfo, align 8, !tbaa !1
  %gray_index161 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %117, i32 0, i32 4
  store i8 %conv160, i8* %gray_index161, align 1, !tbaa !29
  store i32 20, i32* %cleanup.dest.slot
  br label %cleanup

if.end.162:                                       ; preds = %land.lhs.true.155, %for.body.148
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.162, %if.then.159
  %118 = bitcast i32* %dither to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 20, label %for.end.165
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.163

for.inc.163:                                      ; preds = %cleanup.cont
  %119 = load i32, i32* %i, align 4, !tbaa !24
  %inc164 = add nsw i32 %119, 1
  store i32 %inc164, i32* %i, align 4, !tbaa !24
  br label %for.cond.145

for.end.165:                                      ; preds = %cleanup, %for.cond.145
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.166

cleanup.166:                                      ; preds = %for.end.165, %if.then.117, %if.then.89, %if.then.65, %if.then.61, %if.then.45, %if.then.39, %if.then.26, %if.then.10, %if.then.3, %if.then
  %120 = bitcast [64 x i16]* %colorants to i8*
  call void @llvm.lifetime.end(i64 128, i8* %120) #1
  %121 = bitcast i64* %current_bits to i8*
  call void @llvm.lifetime.end(i64 8, i8* %121) #1
  %122 = bitcast i64* %color_index to i8*
  call void @llvm.lifetime.end(i64 8, i8* %122) #1
  %123 = bitcast [64 x i64]* %comp_mask to i8*
  call void @llvm.lifetime.end(i64 512, i8* %123) #1
  %124 = bitcast [64 x i8]* %comp_bits to i8*
  call void @llvm.lifetime.end(i64 64, i8* %124) #1
  %125 = bitcast [64 x i8]* %comp_shift to i8*
  call void @llvm.lifetime.end(i64 64, i8* %125) #1
  %126 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #1
  %127 = bitcast %struct.gx_device_color_info_s** %pinfo to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #1
  %128 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %128) #1
  %129 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %129) #1
  %cleanup.dest.176 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.176, label %unreachable [
    i32 0, label %cleanup.cont.177
    i32 1, label %cleanup.cont.177
  ]

cleanup.cont.177:                                 ; preds = %cleanup.166, %cleanup.166
  ret void

unreachable:                                      ; preds = %cleanup.166, %cleanup
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define void @gx_device_fill_in_procs(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  call void @gx_device_set_procs(%struct.gx_device_s* %0) #3
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 42
  %open_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 0
  %2 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %open_device, align 8, !tbaa !34
  %cmp = icmp eq i32 (%struct.gx_device_s*)* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 42
  %open_device2 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1, i32 0, i32 0
  store i32 (%struct.gx_device_s*)* @gx_default_open_device, i32 (%struct.gx_device_s*)** %open_device2, align 8, !tbaa !34
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 42
  %get_initial_matrix = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs3, i32 0, i32 1
  %5 = load void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)** %get_initial_matrix, align 8, !tbaa !35
  %cmp4 = icmp eq void (%struct.gx_device_s*, %struct.gs_matrix_s*)* %5, null
  br i1 %cmp4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs6 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 42
  %get_initial_matrix7 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs6, i32 0, i32 1
  store void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @gx_default_get_initial_matrix, void (%struct.gx_device_s*, %struct.gs_matrix_s*)** %get_initial_matrix7, align 8, !tbaa !35
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs9 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 42
  %sync_output = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs9, i32 0, i32 2
  %8 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %sync_output, align 8, !tbaa !36
  %cmp10 = icmp eq i32 (%struct.gx_device_s*)* %8, null
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.8
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs12 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 42
  %sync_output13 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs12, i32 0, i32 2
  store i32 (%struct.gx_device_s*)* @gx_default_sync_output, i32 (%struct.gx_device_s*)** %sync_output13, align 8, !tbaa !36
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.end.8
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs15 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %10, i32 0, i32 42
  %output_page = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs15, i32 0, i32 3
  %11 = load i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32)** %output_page, align 8, !tbaa !37
  %cmp16 = icmp eq i32 (%struct.gx_device_s*, i32, i32)* %11, null
  br i1 %cmp16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %if.end.14
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i32 0, i32 42
  %output_page19 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs18, i32 0, i32 3
  store i32 (%struct.gx_device_s*, i32, i32)* @gx_default_output_page, i32 (%struct.gx_device_s*, i32, i32)** %output_page19, align 8, !tbaa !37
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %if.end.14
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs21 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %13, i32 0, i32 42
  %close_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs21, i32 0, i32 4
  %14 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %close_device, align 8, !tbaa !38
  %cmp22 = icmp eq i32 (%struct.gx_device_s*)* %14, null
  br i1 %cmp22, label %if.then.23, label %if.end.26

if.then.23:                                       ; preds = %if.end.20
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs24 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %15, i32 0, i32 42
  %close_device25 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs24, i32 0, i32 4
  store i32 (%struct.gx_device_s*)* @gx_default_close_device, i32 (%struct.gx_device_s*)** %close_device25, align 8, !tbaa !38
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.23, %if.end.20
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs27 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %16, i32 0, i32 42
  %map_color_rgb = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs27, i32 0, i32 6
  %17 = load i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)** %map_color_rgb, align 8, !tbaa !39
  %cmp28 = icmp eq i32 (%struct.gx_device_s*, i64, i16*)* %17, null
  br i1 %cmp28, label %if.then.29, label %if.end.32

if.then.29:                                       ; preds = %if.end.26
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs30 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 42
  %map_color_rgb31 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs30, i32 0, i32 6
  store i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_w_b_map_color_rgb, i32 (%struct.gx_device_s*, i64, i16*)** %map_color_rgb31, align 8, !tbaa !39
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.29, %if.end.26
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs33 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %19, i32 0, i32 42
  %tile_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs33, i32 0, i32 8
  %20 = load i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)** %tile_rectangle, align 8, !tbaa !40
  %cmp34 = icmp eq i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* %20, null
  br i1 %cmp34, label %if.then.35, label %if.end.38

if.then.35:                                       ; preds = %if.end.32
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs36 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %21, i32 0, i32 42
  %tile_rectangle37 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs36, i32 0, i32 8
  store i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_tile_rectangle, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)** %tile_rectangle37, align 8, !tbaa !40
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.35, %if.end.32
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs39 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %22, i32 0, i32 42
  %copy_mono = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs39, i32 0, i32 9
  %23 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono, align 8, !tbaa !41
  %cmp40 = icmp eq i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* %23, null
  br i1 %cmp40, label %if.then.41, label %if.end.44

if.then.41:                                       ; preds = %if.end.38
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs42 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %24, i32 0, i32 42
  %copy_mono43 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs42, i32 0, i32 9
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* @gx_default_copy_mono, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono43, align 8, !tbaa !41
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.41, %if.end.38
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs45 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %25, i32 0, i32 42
  %copy_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs45, i32 0, i32 10
  %26 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %copy_color, align 8, !tbaa !42
  %cmp46 = icmp eq i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* %26, null
  br i1 %cmp46, label %if.then.47, label %if.end.50

if.then.47:                                       ; preds = %if.end.44
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs48 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %27, i32 0, i32 42
  %copy_color49 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs48, i32 0, i32 10
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* @gx_default_copy_color, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %copy_color49, align 8, !tbaa !42
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.47, %if.end.44
  %28 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs51 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %28, i32 0, i32 42
  %obsolete_draw_line = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs51, i32 0, i32 11
  %29 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %obsolete_draw_line, align 8, !tbaa !43
  %cmp52 = icmp eq i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* %29, null
  br i1 %cmp52, label %if.then.53, label %if.end.56

if.then.53:                                       ; preds = %if.end.50
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs54 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %30, i32 0, i32 42
  %obsolete_draw_line55 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs54, i32 0, i32 11
  store i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @gx_default_draw_line, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %obsolete_draw_line55, align 8, !tbaa !43
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.53, %if.end.50
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs57 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %31, i32 0, i32 42
  %get_bits = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs57, i32 0, i32 12
  %32 = load i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)** %get_bits, align 8, !tbaa !44
  %cmp58 = icmp eq i32 (%struct.gx_device_s*, i32, i8*, i8**)* %32, null
  br i1 %cmp58, label %if.then.59, label %if.end.62

if.then.59:                                       ; preds = %if.end.56
  %33 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs60 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %33, i32 0, i32 42
  %get_bits61 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs60, i32 0, i32 12
  store i32 (%struct.gx_device_s*, i32, i8*, i8**)* @gx_default_get_bits, i32 (%struct.gx_device_s*, i32, i8*, i8**)** %get_bits61, align 8, !tbaa !44
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.59, %if.end.56
  %34 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs63 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %34, i32 0, i32 42
  %get_params = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs63, i32 0, i32 13
  %35 = load i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)** %get_params, align 8, !tbaa !45
  %cmp64 = icmp eq i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* %35, null
  br i1 %cmp64, label %if.then.65, label %if.end.68

if.then.65:                                       ; preds = %if.end.62
  %36 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs66 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %36, i32 0, i32 42
  %get_params67 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs66, i32 0, i32 13
  store i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_default_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)** %get_params67, align 8, !tbaa !45
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.65, %if.end.62
  %37 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs69 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %37, i32 0, i32 42
  %put_params = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs69, i32 0, i32 14
  %38 = load i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)** %put_params, align 8, !tbaa !46
  %cmp70 = icmp eq i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* %38, null
  br i1 %cmp70, label %if.then.71, label %if.end.74

if.then.71:                                       ; preds = %if.end.68
  %39 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs72 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %39, i32 0, i32 42
  %put_params73 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs72, i32 0, i32 14
  store i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_default_put_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)** %put_params73, align 8, !tbaa !46
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.71, %if.end.68
  %40 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs75 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %40, i32 0, i32 42
  %get_xfont_procs = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs75, i32 0, i32 16
  %41 = load %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)** %get_xfont_procs, align 8, !tbaa !47
  %cmp76 = icmp eq %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* %41, null
  br i1 %cmp76, label %if.then.77, label %if.end.80

if.then.77:                                       ; preds = %if.end.74
  %42 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs78 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %42, i32 0, i32 42
  %get_xfont_procs79 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs78, i32 0, i32 16
  store %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* @gx_default_get_xfont_procs, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)** %get_xfont_procs79, align 8, !tbaa !47
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.77, %if.end.74
  %43 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs81 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %43, i32 0, i32 42
  %get_xfont_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs81, i32 0, i32 17
  %44 = load %struct.gx_device_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)** %get_xfont_device, align 8, !tbaa !48
  %cmp82 = icmp eq %struct.gx_device_s* (%struct.gx_device_s*)* %44, null
  br i1 %cmp82, label %if.then.83, label %if.end.86

if.then.83:                                       ; preds = %if.end.80
  %45 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs84 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %45, i32 0, i32 42
  %get_xfont_device85 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs84, i32 0, i32 17
  store %struct.gx_device_s* (%struct.gx_device_s*)* @gx_default_get_xfont_device, %struct.gx_device_s* (%struct.gx_device_s*)** %get_xfont_device85, align 8, !tbaa !48
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.83, %if.end.80
  %46 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs87 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %46, i32 0, i32 42
  %map_rgb_alpha_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs87, i32 0, i32 18
  %47 = load i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)** %map_rgb_alpha_color, align 8, !tbaa !49
  %cmp88 = icmp eq i64 (%struct.gx_device_s*, i16, i16, i16, i16)* %47, null
  br i1 %cmp88, label %if.then.89, label %if.end.92

if.then.89:                                       ; preds = %if.end.86
  %48 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs90 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %48, i32 0, i32 42
  %map_rgb_alpha_color91 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs90, i32 0, i32 18
  store i64 (%struct.gx_device_s*, i16, i16, i16, i16)* @gx_default_map_rgb_alpha_color, i64 (%struct.gx_device_s*, i16, i16, i16, i16)** %map_rgb_alpha_color91, align 8, !tbaa !49
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.89, %if.end.86
  %49 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs93 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %49, i32 0, i32 42
  %get_page_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs93, i32 0, i32 19
  %50 = load %struct.gx_device_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)** %get_page_device, align 8, !tbaa !50
  %cmp94 = icmp eq %struct.gx_device_s* (%struct.gx_device_s*)* %50, null
  br i1 %cmp94, label %if.then.95, label %if.end.98

if.then.95:                                       ; preds = %if.end.92
  %51 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs96 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %51, i32 0, i32 42
  %get_page_device97 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs96, i32 0, i32 19
  store %struct.gx_device_s* (%struct.gx_device_s*)* @gx_default_get_page_device, %struct.gx_device_s* (%struct.gx_device_s*)** %get_page_device97, align 8, !tbaa !50
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.95, %if.end.92
  %52 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs99 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %52, i32 0, i32 42
  %get_alpha_bits = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs99, i32 0, i32 20
  %53 = load i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i32)** %get_alpha_bits, align 8, !tbaa !51
  %cmp100 = icmp eq i32 (%struct.gx_device_s*, i32)* %53, null
  br i1 %cmp100, label %if.then.101, label %if.end.104

if.then.101:                                      ; preds = %if.end.98
  %54 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs102 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %54, i32 0, i32 42
  %get_alpha_bits103 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs102, i32 0, i32 20
  store i32 (%struct.gx_device_s*, i32)* @gx_default_get_alpha_bits, i32 (%struct.gx_device_s*, i32)** %get_alpha_bits103, align 8, !tbaa !51
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.101, %if.end.98
  %55 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs105 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %55, i32 0, i32 42
  %copy_alpha = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs105, i32 0, i32 21
  %56 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)** %copy_alpha, align 8, !tbaa !52
  %cmp106 = icmp eq i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* %56, null
  br i1 %cmp106, label %if.then.107, label %if.end.110

if.then.107:                                      ; preds = %if.end.104
  %57 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs108 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %57, i32 0, i32 42
  %copy_alpha109 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs108, i32 0, i32 21
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* @gx_default_copy_alpha, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)** %copy_alpha109, align 8, !tbaa !52
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.107, %if.end.104
  %58 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs111 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %58, i32 0, i32 42
  %get_band = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs111, i32 0, i32 22
  %59 = load i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i32, i32*)** %get_band, align 8, !tbaa !53
  %cmp112 = icmp eq i32 (%struct.gx_device_s*, i32, i32*)* %59, null
  br i1 %cmp112, label %if.then.113, label %if.end.116

if.then.113:                                      ; preds = %if.end.110
  %60 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs114 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %60, i32 0, i32 42
  %get_band115 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs114, i32 0, i32 22
  store i32 (%struct.gx_device_s*, i32, i32*)* @gx_default_get_band, i32 (%struct.gx_device_s*, i32, i32*)** %get_band115, align 8, !tbaa !53
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.113, %if.end.110
  %61 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs117 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %61, i32 0, i32 42
  %copy_rop = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs117, i32 0, i32 23
  %62 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)** %copy_rop, align 8, !tbaa !54
  %cmp118 = icmp eq i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* %62, null
  br i1 %cmp118, label %if.then.119, label %if.end.122

if.then.119:                                      ; preds = %if.end.116
  %63 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs120 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %63, i32 0, i32 42
  %copy_rop121 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs120, i32 0, i32 23
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @gx_default_copy_rop, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)** %copy_rop121, align 8, !tbaa !54
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.119, %if.end.116
  %64 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs123 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %64, i32 0, i32 42
  %fill_path = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs123, i32 0, i32 24
  %65 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %fill_path, align 8, !tbaa !55
  %cmp124 = icmp eq i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* %65, null
  br i1 %cmp124, label %if.then.125, label %if.end.128

if.then.125:                                      ; preds = %if.end.122
  %66 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs126 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %66, i32 0, i32 42
  %fill_path127 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs126, i32 0, i32 24
  store i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_default_fill_path, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %fill_path127, align 8, !tbaa !55
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.125, %if.end.122
  %67 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs129 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %67, i32 0, i32 42
  %stroke_path = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs129, i32 0, i32 25
  %68 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %stroke_path, align 8, !tbaa !56
  %cmp130 = icmp eq i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* %68, null
  br i1 %cmp130, label %if.then.131, label %if.end.134

if.then.131:                                      ; preds = %if.end.128
  %69 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs132 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %69, i32 0, i32 42
  %stroke_path133 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs132, i32 0, i32 25
  store i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_default_stroke_path, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %stroke_path133, align 8, !tbaa !56
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.131, %if.end.128
  %70 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs135 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %70, i32 0, i32 42
  %fill_mask = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs135, i32 0, i32 26
  %71 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)** %fill_mask, align 8, !tbaa !57
  %cmp136 = icmp eq i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* %71, null
  br i1 %cmp136, label %if.then.137, label %if.end.140

if.then.137:                                      ; preds = %if.end.134
  %72 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs138 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %72, i32 0, i32 42
  %fill_mask139 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs138, i32 0, i32 26
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* @gx_default_fill_mask, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)** %fill_mask139, align 8, !tbaa !57
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.137, %if.end.134
  %73 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs141 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %73, i32 0, i32 42
  %fill_trapezoid = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs141, i32 0, i32 27
  %74 = load i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_trapezoid, align 8, !tbaa !58
  %cmp142 = icmp eq i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* %74, null
  br i1 %cmp142, label %if.then.143, label %if.end.146

if.then.143:                                      ; preds = %if.end.140
  %75 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs144 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %75, i32 0, i32 42
  %fill_trapezoid145 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs144, i32 0, i32 27
  store i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_trapezoid, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_trapezoid145, align 8, !tbaa !58
  br label %if.end.146

if.end.146:                                       ; preds = %if.then.143, %if.end.140
  %76 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs147 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %76, i32 0, i32 42
  %fill_parallelogram = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs147, i32 0, i32 28
  %77 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_parallelogram, align 8, !tbaa !59
  %cmp148 = icmp eq i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* %77, null
  br i1 %cmp148, label %if.then.149, label %if.end.152

if.then.149:                                      ; preds = %if.end.146
  %78 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs150 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %78, i32 0, i32 42
  %fill_parallelogram151 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs150, i32 0, i32 28
  store i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_parallelogram, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_parallelogram151, align 8, !tbaa !59
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.149, %if.end.146
  %79 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs153 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %79, i32 0, i32 42
  %fill_triangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs153, i32 0, i32 29
  %80 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_triangle, align 8, !tbaa !60
  %cmp154 = icmp eq i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* %80, null
  br i1 %cmp154, label %if.then.155, label %if.end.158

if.then.155:                                      ; preds = %if.end.152
  %81 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs156 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %81, i32 0, i32 42
  %fill_triangle157 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs156, i32 0, i32 29
  store i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_triangle, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_triangle157, align 8, !tbaa !60
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.155, %if.end.152
  %82 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs159 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %82, i32 0, i32 42
  %draw_thin_line = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs159, i32 0, i32 30
  %83 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)** %draw_thin_line, align 8, !tbaa !61
  %cmp160 = icmp eq i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* %83, null
  br i1 %cmp160, label %if.then.161, label %if.end.164

if.then.161:                                      ; preds = %if.end.158
  %84 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs162 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %84, i32 0, i32 42
  %draw_thin_line163 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs162, i32 0, i32 30
  store i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* @gx_default_draw_thin_line, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)** %draw_thin_line163, align 8, !tbaa !61
  br label %if.end.164

if.end.164:                                       ; preds = %if.then.161, %if.end.158
  %85 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs165 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %85, i32 0, i32 42
  %begin_image = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs165, i32 0, i32 31
  %86 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)** %begin_image, align 8, !tbaa !62
  %cmp166 = icmp eq i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* %86, null
  br i1 %cmp166, label %if.then.167, label %if.end.170

if.then.167:                                      ; preds = %if.end.164
  %87 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs168 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %87, i32 0, i32 42
  %begin_image169 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs168, i32 0, i32 31
  store i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_image, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)** %begin_image169, align 8, !tbaa !62
  br label %if.end.170

if.end.170:                                       ; preds = %if.then.167, %if.end.164
  br label %do.body

do.body:                                          ; preds = %if.end.170
  br label %do.end

do.end:                                           ; preds = %do.body
  %88 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs171 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %88, i32 0, i32 42
  %get_alpha_bits172 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs171, i32 0, i32 20
  store i32 (%struct.gx_device_s*, i32)* @gx_default_get_alpha_bits, i32 (%struct.gx_device_s*, i32)** %get_alpha_bits172, align 8, !tbaa !51
  br label %do.body.173

do.body.173:                                      ; preds = %do.end
  br label %do.end.174

do.end.174:                                       ; preds = %do.body.173
  %89 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs175 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %89, i32 0, i32 42
  %image_data = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs175, i32 0, i32 32
  store i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* @gx_default_image_data, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)** %image_data, align 8, !tbaa !63
  br label %do.body.176

do.body.176:                                      ; preds = %do.end.174
  br label %do.end.177

do.end.177:                                       ; preds = %do.body.176
  %90 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs178 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %90, i32 0, i32 42
  %end_image = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs178, i32 0, i32 33
  store i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* @gx_default_end_image, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)** %end_image, align 8, !tbaa !64
  %91 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs179 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %91, i32 0, i32 42
  %strip_tile_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs179, i32 0, i32 34
  %92 = load i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)** %strip_tile_rectangle, align 8, !tbaa !65
  %cmp180 = icmp eq i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* %92, null
  br i1 %cmp180, label %if.then.181, label %if.end.184

if.then.181:                                      ; preds = %do.end.177
  %93 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs182 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %93, i32 0, i32 42
  %strip_tile_rectangle183 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs182, i32 0, i32 34
  store i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_strip_tile_rectangle, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)** %strip_tile_rectangle183, align 8, !tbaa !65
  br label %if.end.184

if.end.184:                                       ; preds = %if.then.181, %do.end.177
  %94 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs185 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %94, i32 0, i32 42
  %strip_copy_rop = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs185, i32 0, i32 35
  %95 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)** %strip_copy_rop, align 8, !tbaa !66
  %cmp186 = icmp eq i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* %95, null
  br i1 %cmp186, label %if.then.187, label %if.end.190

if.then.187:                                      ; preds = %if.end.184
  %96 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs188 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %96, i32 0, i32 42
  %strip_copy_rop189 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs188, i32 0, i32 35
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @gx_default_strip_copy_rop, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)** %strip_copy_rop189, align 8, !tbaa !66
  br label %if.end.190

if.end.190:                                       ; preds = %if.then.187, %if.end.184
  %97 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs191 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %97, i32 0, i32 42
  %strip_copy_rop2 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs191, i32 0, i32 69
  %98 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)** %strip_copy_rop2, align 8, !tbaa !67
  %cmp192 = icmp eq i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* %98, null
  br i1 %cmp192, label %if.then.193, label %if.end.196

if.then.193:                                      ; preds = %if.end.190
  %99 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs194 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %99, i32 0, i32 42
  %strip_copy_rop2195 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs194, i32 0, i32 69
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* @gx_default_strip_copy_rop2, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)** %strip_copy_rop2195, align 8, !tbaa !67
  br label %if.end.196

if.end.196:                                       ; preds = %if.then.193, %if.end.190
  %100 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs197 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %100, i32 0, i32 42
  %strip_tile_rect_devn = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs197, i32 0, i32 70
  %101 = load i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)** %strip_tile_rect_devn, align 8, !tbaa !68
  %cmp198 = icmp eq i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* %101, null
  br i1 %cmp198, label %if.then.199, label %if.end.202

if.then.199:                                      ; preds = %if.end.196
  %102 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs200 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %102, i32 0, i32 42
  %strip_tile_rect_devn201 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs200, i32 0, i32 70
  store i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* @gx_default_strip_tile_rect_devn, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)** %strip_tile_rect_devn201, align 8, !tbaa !68
  br label %if.end.202

if.end.202:                                       ; preds = %if.then.199, %if.end.196
  %103 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs203 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %103, i32 0, i32 42
  %get_clipping_box = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs203, i32 0, i32 36
  %104 = load void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)** %get_clipping_box, align 8, !tbaa !69
  %cmp204 = icmp eq void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* %104, null
  br i1 %cmp204, label %if.then.205, label %if.end.208

if.then.205:                                      ; preds = %if.end.202
  %105 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs206 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %105, i32 0, i32 42
  %get_clipping_box207 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs206, i32 0, i32 36
  store void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* @gx_default_get_clipping_box, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)** %get_clipping_box207, align 8, !tbaa !69
  br label %if.end.208

if.end.208:                                       ; preds = %if.then.205, %if.end.202
  %106 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs209 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %106, i32 0, i32 42
  %begin_typed_image = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs209, i32 0, i32 37
  %107 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)** %begin_typed_image, align 8, !tbaa !70
  %cmp210 = icmp eq i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* %107, null
  br i1 %cmp210, label %if.then.211, label %if.end.214

if.then.211:                                      ; preds = %if.end.208
  %108 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs212 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %108, i32 0, i32 42
  %begin_typed_image213 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs212, i32 0, i32 37
  store i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_typed_image, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)** %begin_typed_image213, align 8, !tbaa !70
  br label %if.end.214

if.end.214:                                       ; preds = %if.then.211, %if.end.208
  %109 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs215 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %109, i32 0, i32 42
  %get_bits_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs215, i32 0, i32 38
  %110 = load i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %get_bits_rectangle, align 8, !tbaa !71
  %cmp216 = icmp eq i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* %110, null
  br i1 %cmp216, label %if.then.217, label %if.end.220

if.then.217:                                      ; preds = %if.end.214
  %111 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs218 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %111, i32 0, i32 42
  %get_bits_rectangle219 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs218, i32 0, i32 38
  store i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* @gx_default_get_bits_rectangle, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %get_bits_rectangle219, align 8, !tbaa !71
  br label %if.end.220

if.end.220:                                       ; preds = %if.then.217, %if.end.214
  %112 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs221 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %112, i32 0, i32 42
  %map_color_rgb_alpha = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs221, i32 0, i32 39
  %113 = load i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)** %map_color_rgb_alpha, align 8, !tbaa !72
  %cmp222 = icmp eq i32 (%struct.gx_device_s*, i64, i16*)* %113, null
  br i1 %cmp222, label %if.then.223, label %if.end.226

if.then.223:                                      ; preds = %if.end.220
  %114 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs224 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %114, i32 0, i32 42
  %map_color_rgb_alpha225 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs224, i32 0, i32 39
  store i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_map_color_rgb_alpha, i32 (%struct.gx_device_s*, i64, i16*)** %map_color_rgb_alpha225, align 8, !tbaa !72
  br label %if.end.226

if.end.226:                                       ; preds = %if.then.223, %if.end.220
  %115 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs227 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %115, i32 0, i32 42
  %create_compositor = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs227, i32 0, i32 40
  %116 = load i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)** %create_compositor, align 8, !tbaa !73
  %cmp228 = icmp eq i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* %116, null
  br i1 %cmp228, label %if.then.229, label %if.end.232

if.then.229:                                      ; preds = %if.end.226
  %117 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs230 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %117, i32 0, i32 42
  %create_compositor231 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs230, i32 0, i32 40
  store i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* @gx_default_create_compositor, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)** %create_compositor231, align 8, !tbaa !73
  br label %if.end.232

if.end.232:                                       ; preds = %if.then.229, %if.end.226
  %118 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs233 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %118, i32 0, i32 42
  %get_hardware_params = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs233, i32 0, i32 41
  %119 = load i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)** %get_hardware_params, align 8, !tbaa !74
  %cmp234 = icmp eq i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* %119, null
  br i1 %cmp234, label %if.then.235, label %if.end.238

if.then.235:                                      ; preds = %if.end.232
  %120 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs236 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %120, i32 0, i32 42
  %get_hardware_params237 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs236, i32 0, i32 41
  store i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_default_get_hardware_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)** %get_hardware_params237, align 8, !tbaa !74
  br label %if.end.238

if.end.238:                                       ; preds = %if.then.235, %if.end.232
  %121 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs239 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %121, i32 0, i32 42
  %text_begin = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs239, i32 0, i32 42
  %122 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)** %text_begin, align 8, !tbaa !75
  %cmp240 = icmp eq i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* %122, null
  br i1 %cmp240, label %if.then.241, label %if.end.244

if.then.241:                                      ; preds = %if.end.238
  %123 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs242 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %123, i32 0, i32 42
  %text_begin243 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs242, i32 0, i32 42
  store i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* @gx_default_text_begin, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)** %text_begin243, align 8, !tbaa !75
  br label %if.end.244

if.end.244:                                       ; preds = %if.then.241, %if.end.238
  %124 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs245 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %124, i32 0, i32 42
  %finish_copydevice = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs245, i32 0, i32 43
  %125 = load i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)** %finish_copydevice, align 8, !tbaa !76
  %cmp246 = icmp eq i32 (%struct.gx_device_s*, %struct.gx_device_s*)* %125, null
  br i1 %cmp246, label %if.then.247, label %if.end.250

if.then.247:                                      ; preds = %if.end.244
  %126 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs248 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %126, i32 0, i32 42
  %finish_copydevice249 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs248, i32 0, i32 43
  store i32 (%struct.gx_device_s*, %struct.gx_device_s*)* @gx_default_finish_copydevice, i32 (%struct.gx_device_s*, %struct.gx_device_s*)** %finish_copydevice249, align 8, !tbaa !76
  br label %if.end.250

if.end.250:                                       ; preds = %if.then.247, %if.end.244
  %127 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i64 (%struct.gx_device_s*, i16*)* @get_encode_color(%struct.gx_device_s* %127) #3
  %128 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs251 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %128, i32 0, i32 42
  %encode_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs251, i32 0, i32 51
  store i64 (%struct.gx_device_s*, i16*)* %call, i64 (%struct.gx_device_s*, i16*)** %encode_color, align 8, !tbaa !28
  %129 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %129, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %130 = load i32, i32* %num_components, align 4, !tbaa !23
  %cmp252 = icmp eq i32 %130, 3
  br i1 %cmp252, label %if.then.253, label %if.end.257

if.then.253:                                      ; preds = %if.end.250
  %131 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs254 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %131, i32 0, i32 42
  %encode_color255 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs254, i32 0, i32 51
  %132 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color255, align 8, !tbaa !28
  %133 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs256 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %133, i32 0, i32 42
  %map_rgb_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs256, i32 0, i32 5
  store i64 (%struct.gx_device_s*, i16*)* %132, i64 (%struct.gx_device_s*, i16*)** %map_rgb_color, align 8, !tbaa !77
  br label %if.end.257

if.end.257:                                       ; preds = %if.then.253, %if.end.250
  %134 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info258 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %134, i32 0, i32 11
  %num_components259 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info258, i32 0, i32 1
  %135 = load i32, i32* %num_components259, align 4, !tbaa !23
  %cmp260 = icmp eq i32 %135, 4
  br i1 %cmp260, label %if.then.261, label %if.end.265

if.then.261:                                      ; preds = %if.end.257
  %136 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs262 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %136, i32 0, i32 42
  %encode_color263 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs262, i32 0, i32 51
  %137 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color263, align 8, !tbaa !28
  %138 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs264 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %138, i32 0, i32 42
  %map_cmyk_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs264, i32 0, i32 15
  store i64 (%struct.gx_device_s*, i16*)* %137, i64 (%struct.gx_device_s*, i16*)** %map_cmyk_color, align 8, !tbaa !78
  br label %if.end.265

if.end.265:                                       ; preds = %if.then.261, %if.end.257
  %139 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info266 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %139, i32 0, i32 11
  %separable_and_linear = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info266, i32 0, i32 10
  %140 = load i32, i32* %separable_and_linear, align 4, !tbaa !79
  %cmp267 = icmp eq i32 %140, 1
  br i1 %cmp267, label %if.then.268, label %if.else

if.then.268:                                      ; preds = %if.end.265
  %141 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs269 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %141, i32 0, i32 42
  %encode_color270 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs269, i32 0, i32 51
  %142 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color270, align 8, !tbaa !28
  %cmp271 = icmp eq i64 (%struct.gx_device_s*, i16*)* %142, null
  br i1 %cmp271, label %if.then.272, label %if.end.275

if.then.272:                                      ; preds = %if.then.268
  %143 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs273 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %143, i32 0, i32 42
  %encode_color274 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs273, i32 0, i32 51
  store i64 (%struct.gx_device_s*, i16*)* @gx_default_encode_color, i64 (%struct.gx_device_s*, i16*)** %encode_color274, align 8, !tbaa !28
  br label %if.end.275

if.end.275:                                       ; preds = %if.then.272, %if.then.268
  %144 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs276 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %144, i32 0, i32 42
  %map_cmyk_color277 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs276, i32 0, i32 15
  %145 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %map_cmyk_color277, align 8, !tbaa !78
  %cmp278 = icmp eq i64 (%struct.gx_device_s*, i16*)* %145, null
  br i1 %cmp278, label %if.then.279, label %if.end.282

if.then.279:                                      ; preds = %if.end.275
  %146 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs280 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %146, i32 0, i32 42
  %map_cmyk_color281 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs280, i32 0, i32 15
  store i64 (%struct.gx_device_s*, i16*)* @gx_default_encode_color, i64 (%struct.gx_device_s*, i16*)** %map_cmyk_color281, align 8, !tbaa !78
  br label %if.end.282

if.end.282:                                       ; preds = %if.then.279, %if.end.275
  %147 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs283 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %147, i32 0, i32 42
  %map_rgb_color284 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs283, i32 0, i32 5
  %148 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %map_rgb_color284, align 8, !tbaa !77
  %cmp285 = icmp eq i64 (%struct.gx_device_s*, i16*)* %148, null
  br i1 %cmp285, label %if.then.286, label %if.end.289

if.then.286:                                      ; preds = %if.end.282
  %149 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs287 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %149, i32 0, i32 42
  %map_rgb_color288 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs287, i32 0, i32 5
  store i64 (%struct.gx_device_s*, i16*)* @gx_default_encode_color, i64 (%struct.gx_device_s*, i16*)** %map_rgb_color288, align 8, !tbaa !77
  br label %if.end.289

if.end.289:                                       ; preds = %if.then.286, %if.end.282
  br label %if.end.311

if.else:                                          ; preds = %if.end.265
  %150 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs290 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %150, i32 0, i32 42
  %encode_color291 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs290, i32 0, i32 51
  %151 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color291, align 8, !tbaa !28
  %cmp292 = icmp eq i64 (%struct.gx_device_s*, i16*)* %151, null
  br i1 %cmp292, label %if.then.293, label %if.end.296

if.then.293:                                      ; preds = %if.else
  %152 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs294 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %152, i32 0, i32 42
  %encode_color295 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs294, i32 0, i32 51
  store i64 (%struct.gx_device_s*, i16*)* @gx_error_encode_color, i64 (%struct.gx_device_s*, i16*)** %encode_color295, align 8, !tbaa !28
  br label %if.end.296

if.end.296:                                       ; preds = %if.then.293, %if.else
  %153 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs297 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %153, i32 0, i32 42
  %map_cmyk_color298 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs297, i32 0, i32 15
  %154 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %map_cmyk_color298, align 8, !tbaa !78
  %cmp299 = icmp eq i64 (%struct.gx_device_s*, i16*)* %154, null
  br i1 %cmp299, label %if.then.300, label %if.end.303

if.then.300:                                      ; preds = %if.end.296
  %155 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs301 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %155, i32 0, i32 42
  %map_cmyk_color302 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs301, i32 0, i32 15
  store i64 (%struct.gx_device_s*, i16*)* @gx_error_encode_color, i64 (%struct.gx_device_s*, i16*)** %map_cmyk_color302, align 8, !tbaa !78
  br label %if.end.303

if.end.303:                                       ; preds = %if.then.300, %if.end.296
  %156 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs304 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %156, i32 0, i32 42
  %map_rgb_color305 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs304, i32 0, i32 5
  %157 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %map_rgb_color305, align 8, !tbaa !77
  %cmp306 = icmp eq i64 (%struct.gx_device_s*, i16*)* %157, null
  br i1 %cmp306, label %if.then.307, label %if.end.310

if.then.307:                                      ; preds = %if.end.303
  %158 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs308 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %158, i32 0, i32 42
  %map_rgb_color309 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs308, i32 0, i32 5
  store i64 (%struct.gx_device_s*, i16*)* @gx_error_encode_color, i64 (%struct.gx_device_s*, i16*)** %map_rgb_color309, align 8, !tbaa !77
  br label %if.end.310

if.end.310:                                       ; preds = %if.then.307, %if.end.303
  br label %if.end.311

if.end.311:                                       ; preds = %if.end.310, %if.end.289
  %159 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info312 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %159, i32 0, i32 11
  %num_components313 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info312, i32 0, i32 1
  %160 = load i32, i32* %num_components313, align 4, !tbaa !23
  switch i32 %160, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.343
    i32 4, label %sw.bb.383
  ]

sw.bb:                                            ; preds = %if.end.311
  %161 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs314 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %161, i32 0, i32 42
  %get_color_mapping_procs = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs314, i32 0, i32 49
  %162 = load %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)** %get_color_mapping_procs, align 8, !tbaa !80
  %cmp315 = icmp eq %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* %162, null
  br i1 %cmp315, label %if.then.316, label %if.end.336

if.then.316:                                      ; preds = %sw.bb
  %163 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info317 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %163, i32 0, i32 11
  %polarity = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info317, i32 0, i32 2
  %164 = load i32, i32* %polarity, align 4, !tbaa !81
  %cmp318 = icmp eq i32 %164, 1
  br i1 %cmp318, label %if.then.319, label %if.else.327

if.then.319:                                      ; preds = %if.then.316
  %165 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs320 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %165, i32 0, i32 42
  %get_color_mapping_procs321 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs320, i32 0, i32 49
  %166 = load %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)** %get_color_mapping_procs321, align 8, !tbaa !80
  %cmp322 = icmp eq %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* %166, null
  br i1 %cmp322, label %if.then.323, label %if.end.326

if.then.323:                                      ; preds = %if.then.319
  %167 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs324 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %167, i32 0, i32 42
  %get_color_mapping_procs325 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs324, i32 0, i32 49
  store %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* @gx_default_DevGray_get_color_mapping_procs, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)** %get_color_mapping_procs325, align 8, !tbaa !80
  br label %if.end.326

if.end.326:                                       ; preds = %if.then.323, %if.then.319
  br label %if.end.335

if.else.327:                                      ; preds = %if.then.316
  %168 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs328 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %168, i32 0, i32 42
  %get_color_mapping_procs329 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs328, i32 0, i32 49
  %169 = load %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)** %get_color_mapping_procs329, align 8, !tbaa !80
  %cmp330 = icmp eq %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* %169, null
  br i1 %cmp330, label %if.then.331, label %if.end.334

if.then.331:                                      ; preds = %if.else.327
  %170 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs332 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %170, i32 0, i32 42
  %get_color_mapping_procs333 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs332, i32 0, i32 49
  store %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* @gx_error_get_color_mapping_procs, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)** %get_color_mapping_procs333, align 8, !tbaa !80
  br label %if.end.334

if.end.334:                                       ; preds = %if.then.331, %if.else.327
  br label %if.end.335

if.end.335:                                       ; preds = %if.end.334, %if.end.326
  br label %if.end.336

if.end.336:                                       ; preds = %if.end.335, %sw.bb
  %171 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs337 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %171, i32 0, i32 42
  %get_color_comp_index = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs337, i32 0, i32 50
  %172 = load i32 (%struct.gx_device_s*, i8*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32)** %get_color_comp_index, align 8, !tbaa !82
  %cmp338 = icmp eq i32 (%struct.gx_device_s*, i8*, i32, i32)* %172, null
  br i1 %cmp338, label %if.then.339, label %if.end.342

if.then.339:                                      ; preds = %if.end.336
  %173 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs340 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %173, i32 0, i32 42
  %get_color_comp_index341 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs340, i32 0, i32 50
  store i32 (%struct.gx_device_s*, i8*, i32, i32)* @gx_default_DevGray_get_color_comp_index, i32 (%struct.gx_device_s*, i8*, i32, i32)** %get_color_comp_index341, align 8, !tbaa !82
  br label %if.end.342

if.end.342:                                       ; preds = %if.then.339, %if.end.336
  br label %sw.epilog

sw.bb.343:                                        ; preds = %if.end.311
  %174 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs344 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %174, i32 0, i32 42
  %get_color_mapping_procs345 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs344, i32 0, i32 49
  %175 = load %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)** %get_color_mapping_procs345, align 8, !tbaa !80
  %cmp346 = icmp eq %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* %175, null
  br i1 %cmp346, label %if.then.347, label %if.end.382

if.then.347:                                      ; preds = %sw.bb.343
  %176 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info348 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %176, i32 0, i32 11
  %polarity349 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info348, i32 0, i32 2
  %177 = load i32, i32* %polarity349, align 4, !tbaa !81
  %cmp350 = icmp eq i32 %177, 1
  br i1 %cmp350, label %if.then.351, label %if.else.366

if.then.351:                                      ; preds = %if.then.347
  %178 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs352 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %178, i32 0, i32 42
  %get_color_mapping_procs353 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs352, i32 0, i32 49
  %179 = load %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)** %get_color_mapping_procs353, align 8, !tbaa !80
  %cmp354 = icmp eq %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* %179, null
  br i1 %cmp354, label %if.then.355, label %if.end.358

if.then.355:                                      ; preds = %if.then.351
  %180 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs356 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %180, i32 0, i32 42
  %get_color_mapping_procs357 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs356, i32 0, i32 49
  store %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* @gx_default_DevRGB_get_color_mapping_procs, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)** %get_color_mapping_procs357, align 8, !tbaa !80
  br label %if.end.358

if.end.358:                                       ; preds = %if.then.355, %if.then.351
  %181 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs359 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %181, i32 0, i32 42
  %get_color_comp_index360 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs359, i32 0, i32 50
  %182 = load i32 (%struct.gx_device_s*, i8*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32)** %get_color_comp_index360, align 8, !tbaa !82
  %cmp361 = icmp eq i32 (%struct.gx_device_s*, i8*, i32, i32)* %182, null
  br i1 %cmp361, label %if.then.362, label %if.end.365

if.then.362:                                      ; preds = %if.end.358
  %183 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs363 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %183, i32 0, i32 42
  %get_color_comp_index364 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs363, i32 0, i32 50
  store i32 (%struct.gx_device_s*, i8*, i32, i32)* @gx_default_DevRGB_get_color_comp_index, i32 (%struct.gx_device_s*, i8*, i32, i32)** %get_color_comp_index364, align 8, !tbaa !82
  br label %if.end.365

if.end.365:                                       ; preds = %if.then.362, %if.end.358
  br label %if.end.381

if.else.366:                                      ; preds = %if.then.347
  %184 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs367 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %184, i32 0, i32 42
  %get_color_mapping_procs368 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs367, i32 0, i32 49
  %185 = load %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)** %get_color_mapping_procs368, align 8, !tbaa !80
  %cmp369 = icmp eq %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* %185, null
  br i1 %cmp369, label %if.then.370, label %if.end.373

if.then.370:                                      ; preds = %if.else.366
  %186 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs371 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %186, i32 0, i32 42
  %get_color_mapping_procs372 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs371, i32 0, i32 49
  store %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* @gx_error_get_color_mapping_procs, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)** %get_color_mapping_procs372, align 8, !tbaa !80
  br label %if.end.373

if.end.373:                                       ; preds = %if.then.370, %if.else.366
  %187 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs374 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %187, i32 0, i32 42
  %get_color_comp_index375 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs374, i32 0, i32 50
  %188 = load i32 (%struct.gx_device_s*, i8*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32)** %get_color_comp_index375, align 8, !tbaa !82
  %cmp376 = icmp eq i32 (%struct.gx_device_s*, i8*, i32, i32)* %188, null
  br i1 %cmp376, label %if.then.377, label %if.end.380

if.then.377:                                      ; preds = %if.end.373
  %189 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs378 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %189, i32 0, i32 42
  %get_color_comp_index379 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs378, i32 0, i32 50
  store i32 (%struct.gx_device_s*, i8*, i32, i32)* @gx_error_get_color_comp_index, i32 (%struct.gx_device_s*, i8*, i32, i32)** %get_color_comp_index379, align 8, !tbaa !82
  br label %if.end.380

if.end.380:                                       ; preds = %if.then.377, %if.end.373
  br label %if.end.381

if.end.381:                                       ; preds = %if.end.380, %if.end.365
  br label %if.end.382

if.end.382:                                       ; preds = %if.end.381, %sw.bb.343
  br label %sw.epilog

sw.bb.383:                                        ; preds = %if.end.311
  %190 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs384 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %190, i32 0, i32 42
  %get_color_mapping_procs385 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs384, i32 0, i32 49
  %191 = load %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)** %get_color_mapping_procs385, align 8, !tbaa !80
  %cmp386 = icmp eq %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* %191, null
  br i1 %cmp386, label %if.then.387, label %if.end.390

if.then.387:                                      ; preds = %sw.bb.383
  %192 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs388 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %192, i32 0, i32 42
  %get_color_mapping_procs389 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs388, i32 0, i32 49
  store %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* @gx_default_DevCMYK_get_color_mapping_procs, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)** %get_color_mapping_procs389, align 8, !tbaa !80
  br label %if.end.390

if.end.390:                                       ; preds = %if.then.387, %sw.bb.383
  %193 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs391 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %193, i32 0, i32 42
  %get_color_comp_index392 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs391, i32 0, i32 50
  %194 = load i32 (%struct.gx_device_s*, i8*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32)** %get_color_comp_index392, align 8, !tbaa !82
  %cmp393 = icmp eq i32 (%struct.gx_device_s*, i8*, i32, i32)* %194, null
  br i1 %cmp393, label %if.then.394, label %if.end.397

if.then.394:                                      ; preds = %if.end.390
  %195 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs395 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %195, i32 0, i32 42
  %get_color_comp_index396 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs395, i32 0, i32 50
  store i32 (%struct.gx_device_s*, i8*, i32, i32)* @gx_default_DevCMYK_get_color_comp_index, i32 (%struct.gx_device_s*, i8*, i32, i32)** %get_color_comp_index396, align 8, !tbaa !82
  br label %if.end.397

if.end.397:                                       ; preds = %if.then.394, %if.end.390
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.311
  %196 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs398 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %196, i32 0, i32 42
  %get_color_mapping_procs399 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs398, i32 0, i32 49
  %197 = load %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)** %get_color_mapping_procs399, align 8, !tbaa !80
  %cmp400 = icmp eq %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* %197, null
  br i1 %cmp400, label %if.then.401, label %if.end.416

if.then.401:                                      ; preds = %sw.default
  %198 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs402 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %198, i32 0, i32 42
  %get_color_mapping_procs403 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs402, i32 0, i32 49
  %199 = load %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)** %get_color_mapping_procs403, align 8, !tbaa !80
  %cmp404 = icmp eq %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* %199, null
  br i1 %cmp404, label %if.then.405, label %if.end.408

if.then.405:                                      ; preds = %if.then.401
  %200 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs406 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %200, i32 0, i32 42
  %get_color_mapping_procs407 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs406, i32 0, i32 49
  store %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* @gx_error_get_color_mapping_procs, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)** %get_color_mapping_procs407, align 8, !tbaa !80
  br label %if.end.408

if.end.408:                                       ; preds = %if.then.405, %if.then.401
  %201 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs409 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %201, i32 0, i32 42
  %get_color_comp_index410 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs409, i32 0, i32 50
  %202 = load i32 (%struct.gx_device_s*, i8*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32)** %get_color_comp_index410, align 8, !tbaa !82
  %cmp411 = icmp eq i32 (%struct.gx_device_s*, i8*, i32, i32)* %202, null
  br i1 %cmp411, label %if.then.412, label %if.end.415

if.then.412:                                      ; preds = %if.end.408
  %203 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs413 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %203, i32 0, i32 42
  %get_color_comp_index414 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs413, i32 0, i32 50
  store i32 (%struct.gx_device_s*, i8*, i32, i32)* @gx_error_get_color_comp_index, i32 (%struct.gx_device_s*, i8*, i32, i32)** %get_color_comp_index414, align 8, !tbaa !82
  br label %if.end.415

if.end.415:                                       ; preds = %if.then.412, %if.end.408
  br label %if.end.416

if.end.416:                                       ; preds = %if.end.415, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.416, %if.end.397, %if.end.382, %if.end.342
  %204 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call417 = call i32 (%struct.gx_device_s*, i64, i16*)* @get_decode_color(%struct.gx_device_s* %204) #3
  %205 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs418 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %205, i32 0, i32 42
  %decode_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs418, i32 0, i32 52
  store i32 (%struct.gx_device_s*, i64, i16*)* %call417, i32 (%struct.gx_device_s*, i64, i16*)** %decode_color, align 8, !tbaa !83
  %206 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs419 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %206, i32 0, i32 42
  %map_color_rgb420 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs419, i32 0, i32 6
  %207 = load i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)** %map_color_rgb420, align 8, !tbaa !39
  %cmp421 = icmp eq i32 (%struct.gx_device_s*, i64, i16*)* %207, null
  br i1 %cmp421, label %if.then.422, label %if.end.425

if.then.422:                                      ; preds = %sw.epilog
  %208 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs423 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %208, i32 0, i32 42
  %map_color_rgb424 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs423, i32 0, i32 6
  store i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_w_b_map_color_rgb, i32 (%struct.gx_device_s*, i64, i16*)** %map_color_rgb424, align 8, !tbaa !39
  br label %if.end.425

if.end.425:                                       ; preds = %if.then.422, %sw.epilog
  %209 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs426 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %209, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs426, i32 0, i32 67
  %210 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !84
  %cmp427 = icmp eq i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* %210, null
  br i1 %cmp427, label %if.then.428, label %if.end.431

if.then.428:                                      ; preds = %if.end.425
  %211 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs429 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %211, i32 0, i32 42
  %get_profile430 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs429, i32 0, i32 67
  store i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_default_get_profile, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile430, align 8, !tbaa !84
  br label %if.end.431

if.end.431:                                       ; preds = %if.then.428, %if.end.425
  %212 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs432 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %212, i32 0, i32 42
  %set_graphics_type_tag = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs432, i32 0, i32 68
  %213 = load void (%struct.gx_device_s*, i32)*, void (%struct.gx_device_s*, i32)** %set_graphics_type_tag, align 8, !tbaa !85
  %cmp433 = icmp eq void (%struct.gx_device_s*, i32)* %213, null
  br i1 %cmp433, label %if.then.434, label %if.end.437

if.then.434:                                      ; preds = %if.end.431
  %214 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs435 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %214, i32 0, i32 42
  %set_graphics_type_tag436 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs435, i32 0, i32 68
  store void (%struct.gx_device_s*, i32)* @gx_default_set_graphics_type_tag, void (%struct.gx_device_s*, i32)** %set_graphics_type_tag436, align 8, !tbaa !85
  br label %if.end.437

if.end.437:                                       ; preds = %if.then.434, %if.end.431
  %215 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info438 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %215, i32 0, i32 11
  %opmode = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info438, i32 0, i32 15
  %216 = load i32, i32* %opmode, align 4, !tbaa !86
  %cmp439 = icmp eq i32 %216, -1
  br i1 %cmp439, label %land.lhs.true, label %if.end.453

land.lhs.true:                                    ; preds = %if.end.437
  %217 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info440 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %217, i32 0, i32 11
  %num_components441 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info440, i32 0, i32 1
  %218 = load i32, i32* %num_components441, align 4, !tbaa !23
  %cmp442 = icmp slt i32 %218, 4
  br i1 %cmp442, label %if.then.450, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %219 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info443 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %219, i32 0, i32 11
  %polarity444 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info443, i32 0, i32 2
  %220 = load i32, i32* %polarity444, align 4, !tbaa !81
  %cmp445 = icmp eq i32 %220, 1
  br i1 %cmp445, label %if.then.450, label %lor.lhs.false.446

lor.lhs.false.446:                                ; preds = %lor.lhs.false
  %221 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info447 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %221, i32 0, i32 11
  %gray_index = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info447, i32 0, i32 4
  %222 = load i8, i8* %gray_index, align 1, !tbaa !5
  %conv = zext i8 %222 to i32
  %cmp448 = icmp eq i32 %conv, 255
  br i1 %cmp448, label %if.then.450, label %if.end.453

if.then.450:                                      ; preds = %lor.lhs.false.446, %lor.lhs.false, %land.lhs.true
  %223 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info451 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %223, i32 0, i32 11
  %opmode452 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info451, i32 0, i32 15
  store i32 0, i32* %opmode452, align 4, !tbaa !86
  br label %if.end.453

if.end.453:                                       ; preds = %if.then.450, %lor.lhs.false.446, %if.end.437
  %224 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs454 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %224, i32 0, i32 42
  %fill_rectangle_hl_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs454, i32 0, i32 54
  %225 = load i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %fill_rectangle_hl_color, align 8, !tbaa !87
  %cmp455 = icmp eq i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* %225, null
  br i1 %cmp455, label %if.then.457, label %if.end.460

if.then.457:                                      ; preds = %if.end.453
  %226 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs458 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %226, i32 0, i32 42
  %fill_rectangle_hl_color459 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs458, i32 0, i32 54
  store i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_default_fill_rectangle_hl_color, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %fill_rectangle_hl_color459, align 8, !tbaa !87
  br label %if.end.460

if.end.460:                                       ; preds = %if.then.457, %if.end.453
  %227 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs461 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %227, i32 0, i32 42
  %include_color_space = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs461, i32 0, i32 55
  %228 = load i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)** %include_color_space, align 8, !tbaa !88
  %cmp462 = icmp eq i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* %228, null
  br i1 %cmp462, label %if.then.464, label %if.end.467

if.then.464:                                      ; preds = %if.end.460
  %229 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs465 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %229, i32 0, i32 42
  %include_color_space466 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs465, i32 0, i32 55
  store i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* @gx_default_include_color_space, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)** %include_color_space466, align 8, !tbaa !88
  br label %if.end.467

if.end.467:                                       ; preds = %if.then.464, %if.end.460
  %230 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs468 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %230, i32 0, i32 42
  %fill_linear_color_scanline = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs468, i32 0, i32 56
  %231 = load i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)** %fill_linear_color_scanline, align 8, !tbaa !89
  %cmp469 = icmp eq i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* %231, null
  br i1 %cmp469, label %if.then.471, label %if.end.474

if.then.471:                                      ; preds = %if.end.467
  %232 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs472 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %232, i32 0, i32 42
  %fill_linear_color_scanline473 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs472, i32 0, i32 56
  store i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* @gx_default_fill_linear_color_scanline, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)** %fill_linear_color_scanline473, align 8, !tbaa !89
  br label %if.end.474

if.end.474:                                       ; preds = %if.then.471, %if.end.467
  %233 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs475 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %233, i32 0, i32 42
  %fill_linear_color_trapezoid = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs475, i32 0, i32 57
  %234 = load i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)** %fill_linear_color_trapezoid, align 8, !tbaa !90
  %cmp476 = icmp eq i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* %234, null
  br i1 %cmp476, label %if.then.478, label %if.end.481

if.then.478:                                      ; preds = %if.end.474
  %235 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs479 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %235, i32 0, i32 42
  %fill_linear_color_trapezoid480 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs479, i32 0, i32 57
  store i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* @gx_default_fill_linear_color_trapezoid, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)** %fill_linear_color_trapezoid480, align 8, !tbaa !90
  br label %if.end.481

if.end.481:                                       ; preds = %if.then.478, %if.end.474
  %236 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs482 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %236, i32 0, i32 42
  %fill_linear_color_triangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs482, i32 0, i32 58
  %237 = load i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)** %fill_linear_color_triangle, align 8, !tbaa !91
  %cmp483 = icmp eq i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* %237, null
  br i1 %cmp483, label %if.then.485, label %if.end.488

if.then.485:                                      ; preds = %if.end.481
  %238 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs486 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %238, i32 0, i32 42
  %fill_linear_color_triangle487 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs486, i32 0, i32 58
  store i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* @gx_default_fill_linear_color_triangle, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)** %fill_linear_color_triangle487, align 8, !tbaa !91
  br label %if.end.488

if.end.488:                                       ; preds = %if.then.485, %if.end.481
  %239 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs489 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %239, i32 0, i32 42
  %update_spot_equivalent_colors = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs489, i32 0, i32 59
  %240 = load i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)** %update_spot_equivalent_colors, align 8, !tbaa !92
  %cmp490 = icmp eq i32 (%struct.gx_device_s*, %struct.gs_state_s*)* %240, null
  br i1 %cmp490, label %if.then.492, label %if.end.495

if.then.492:                                      ; preds = %if.end.488
  %241 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs493 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %241, i32 0, i32 42
  %update_spot_equivalent_colors494 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs493, i32 0, i32 59
  store i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_update_spot_equivalent_colors, i32 (%struct.gx_device_s*, %struct.gs_state_s*)** %update_spot_equivalent_colors494, align 8, !tbaa !92
  br label %if.end.495

if.end.495:                                       ; preds = %if.then.492, %if.end.488
  %242 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs496 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %242, i32 0, i32 42
  %ret_devn_params = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs496, i32 0, i32 60
  %243 = load %struct.gs_devn_params_s* (%struct.gx_device_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)** %ret_devn_params, align 8, !tbaa !93
  %cmp497 = icmp eq %struct.gs_devn_params_s* (%struct.gx_device_s*)* %243, null
  br i1 %cmp497, label %if.then.499, label %if.end.502

if.then.499:                                      ; preds = %if.end.495
  %244 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs500 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %244, i32 0, i32 42
  %ret_devn_params501 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs500, i32 0, i32 60
  store %struct.gs_devn_params_s* (%struct.gx_device_s*)* @gx_default_ret_devn_params, %struct.gs_devn_params_s* (%struct.gx_device_s*)** %ret_devn_params501, align 8, !tbaa !93
  br label %if.end.502

if.end.502:                                       ; preds = %if.then.499, %if.end.495
  %245 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs503 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %245, i32 0, i32 42
  %fillpage = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs503, i32 0, i32 61
  %246 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)** %fillpage, align 8, !tbaa !94
  %cmp504 = icmp eq i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* %246, null
  br i1 %cmp504, label %if.then.506, label %if.end.509

if.then.506:                                      ; preds = %if.end.502
  %247 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs507 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %247, i32 0, i32 42
  %fillpage508 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs507, i32 0, i32 61
  store i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* @gx_default_fillpage, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)** %fillpage508, align 8, !tbaa !94
  br label %if.end.509

if.end.509:                                       ; preds = %if.then.506, %if.end.502
  %248 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs510 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %248, i32 0, i32 42
  %copy_alpha_hl_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs510, i32 0, i32 71
  %249 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %copy_alpha_hl_color, align 8, !tbaa !95
  %cmp511 = icmp eq i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* %249, null
  br i1 %cmp511, label %if.then.513, label %if.end.516

if.then.513:                                      ; preds = %if.end.509
  %250 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs514 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %250, i32 0, i32 42
  %copy_alpha_hl_color515 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs514, i32 0, i32 71
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_copy_alpha_hl_color, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %copy_alpha_hl_color515, align 8, !tbaa !95
  br label %if.end.516

if.end.516:                                       ; preds = %if.then.513, %if.end.509
  %251 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs517 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %251, i32 0, i32 42
  %dev_spec_op = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs517, i32 0, i32 65
  %252 = load i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)** %dev_spec_op, align 8, !tbaa !96
  %cmp518 = icmp eq i32 (%struct.gx_device_s*, i32, i8*, i32)* %252, null
  br i1 %cmp518, label %if.then.520, label %if.end.523

if.then.520:                                      ; preds = %if.end.516
  %253 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs521 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %253, i32 0, i32 42
  %dev_spec_op522 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs521, i32 0, i32 65
  store i32 (%struct.gx_device_s*, i32, i8*, i32)* @gx_default_dev_spec_op, i32 (%struct.gx_device_s*, i32, i8*, i32)** %dev_spec_op522, align 8, !tbaa !96
  br label %if.end.523

if.end.523:                                       ; preds = %if.then.520, %if.end.516
  %254 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs524 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %254, i32 0, i32 42
  %process_page = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs524, i32 0, i32 72
  %255 = load i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)** %process_page, align 8, !tbaa !97
  %cmp525 = icmp eq i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* %255, null
  br i1 %cmp525, label %if.then.527, label %if.end.530

if.then.527:                                      ; preds = %if.end.523
  %256 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs528 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %256, i32 0, i32 42
  %process_page529 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs528, i32 0, i32 72
  store i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* @gx_default_process_page, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)** %process_page529, align 8, !tbaa !97
  br label %if.end.530

if.end.530:                                       ; preds = %if.then.527, %if.end.523
  ret void
}

declare void @gx_device_set_procs(%struct.gx_device_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gx_default_open_device(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  call void @check_device_separable(%struct.gx_device_s* %0) #3
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @gx_default_get_initial_matrix(%struct.gx_device_s* %dev, %struct.gs_matrix_s* %pmat) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %fs_res = alloca double, align 8
  %ss_res = alloca double, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %0 = bitcast double* %fs_res to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %2 = load float, float* %arrayidx, align 4, !tbaa !98
  %conv = fpext float %2 to double
  %div = fdiv double %conv, 7.200000e+01
  store double %div, double* %fs_res, align 8, !tbaa !100
  %3 = bitcast double* %ss_res to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 22
  %arrayidx2 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution1, i32 0, i64 1
  %5 = load float, float* %arrayidx2, align 4, !tbaa !98
  %conv3 = fpext float %5 to double
  %div4 = fdiv double %conv3, 7.200000e+01
  store double %div4, double* %ss_res, align 8, !tbaa !100
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %LeadingEdge = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 18
  %7 = load i32, i32* %LeadingEdge, align 4, !tbaa !102
  %and = and i32 %7, 3
  switch i32 %and, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.10
    i32 3, label %sw.bb.22
    i32 0, label %sw.bb.31
  ]

sw.bb:                                            ; preds = %entry
  %8 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %8, i32 0, i32 0
  store float 0.000000e+00, float* %xx, align 4, !tbaa !103
  %9 = load double, double* %ss_res, align 8, !tbaa !100
  %sub = fsub double -0.000000e+00, %9
  %conv5 = fptrunc double %sub to float
  %10 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %10, i32 0, i32 1
  store float %conv5, float* %xy, align 4, !tbaa !105
  %11 = load double, double* %fs_res, align 8, !tbaa !100
  %sub6 = fsub double -0.000000e+00, %11
  %conv7 = fptrunc double %sub6 to float
  %12 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %12, i32 0, i32 2
  store float %conv7, float* %yx, align 4, !tbaa !106
  %13 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %13, i32 0, i32 3
  store float 0.000000e+00, float* %yy, align 4, !tbaa !107
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %14, i32 0, i32 13
  %15 = load i32, i32* %width, align 4, !tbaa !108
  %conv8 = sitofp i32 %15 to float
  %16 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %16, i32 0, i32 4
  store float %conv8, float* %tx, align 4, !tbaa !109
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 14
  %18 = load i32, i32* %height, align 4, !tbaa !110
  %conv9 = sitofp i32 %18 to float
  %19 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %19, i32 0, i32 5
  store float %conv9, float* %ty, align 4, !tbaa !111
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry
  %20 = load double, double* %fs_res, align 8, !tbaa !100
  %sub11 = fsub double -0.000000e+00, %20
  %conv12 = fptrunc double %sub11 to float
  %21 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xx13 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %21, i32 0, i32 0
  store float %conv12, float* %xx13, align 4, !tbaa !103
  %22 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xy14 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %22, i32 0, i32 1
  store float 0.000000e+00, float* %xy14, align 4, !tbaa !105
  %23 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yx15 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %23, i32 0, i32 2
  store float 0.000000e+00, float* %yx15, align 4, !tbaa !106
  %24 = load double, double* %ss_res, align 8, !tbaa !100
  %conv16 = fptrunc double %24 to float
  %25 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yy17 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %25, i32 0, i32 3
  store float %conv16, float* %yy17, align 4, !tbaa !107
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %26, i32 0, i32 13
  %27 = load i32, i32* %width18, align 4, !tbaa !108
  %conv19 = sitofp i32 %27 to float
  %28 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %tx20 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %28, i32 0, i32 4
  store float %conv19, float* %tx20, align 4, !tbaa !109
  %29 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %ty21 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %29, i32 0, i32 5
  store float 0.000000e+00, float* %ty21, align 4, !tbaa !111
  br label %sw.epilog

sw.bb.22:                                         ; preds = %entry
  %30 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xx23 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %30, i32 0, i32 0
  store float 0.000000e+00, float* %xx23, align 4, !tbaa !103
  %31 = load double, double* %ss_res, align 8, !tbaa !100
  %conv24 = fptrunc double %31 to float
  %32 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xy25 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %32, i32 0, i32 1
  store float %conv24, float* %xy25, align 4, !tbaa !105
  %33 = load double, double* %fs_res, align 8, !tbaa !100
  %conv26 = fptrunc double %33 to float
  %34 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yx27 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %34, i32 0, i32 2
  store float %conv26, float* %yx27, align 4, !tbaa !106
  %35 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yy28 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %35, i32 0, i32 3
  store float 0.000000e+00, float* %yy28, align 4, !tbaa !107
  %36 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %tx29 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %36, i32 0, i32 4
  store float 0.000000e+00, float* %tx29, align 4, !tbaa !109
  %37 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %ty30 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %37, i32 0, i32 5
  store float 0.000000e+00, float* %ty30, align 4, !tbaa !111
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.bb.31

sw.bb.31:                                         ; preds = %entry, %sw.default
  %38 = load double, double* %fs_res, align 8, !tbaa !100
  %conv32 = fptrunc double %38 to float
  %39 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xx33 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %39, i32 0, i32 0
  store float %conv32, float* %xx33, align 4, !tbaa !103
  %40 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xy34 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %40, i32 0, i32 1
  store float 0.000000e+00, float* %xy34, align 4, !tbaa !105
  %41 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yx35 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %41, i32 0, i32 2
  store float 0.000000e+00, float* %yx35, align 4, !tbaa !106
  %42 = load double, double* %ss_res, align 8, !tbaa !100
  %sub36 = fsub double -0.000000e+00, %42
  %conv37 = fptrunc double %sub36 to float
  %43 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yy38 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %43, i32 0, i32 3
  store float %conv37, float* %yy38, align 4, !tbaa !107
  %44 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %tx39 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %44, i32 0, i32 4
  store float 0.000000e+00, float* %tx39, align 4, !tbaa !109
  %45 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height40 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %45, i32 0, i32 14
  %46 = load i32, i32* %height40, align 4, !tbaa !110
  %conv41 = sitofp i32 %46 to float
  %47 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %ty42 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %47, i32 0, i32 5
  store float %conv41, float* %ty42, align 4, !tbaa !111
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.31, %sw.bb.22, %sw.bb.10, %sw.bb
  %48 = bitcast double* %ss_res to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = bitcast double* %fs_res to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_sync_output(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_output_page(%struct.gx_device_s* %dev, i32 %num_copies, i32 %flush) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %num_copies.addr = alloca i32, align 4
  %flush.addr = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %num_copies, i32* %num_copies.addr, align 4, !tbaa !24
  store i32 %flush, i32* %flush.addr, align 4, !tbaa !24
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 42
  %sync_output = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 2
  %2 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %sync_output, align 8, !tbaa !36
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 %2(%struct.gx_device_s* %3) #3
  store i32 %call, i32* %code, align 4, !tbaa !24
  %4 = load i32, i32* %code, align 4, !tbaa !24
  %cmp = icmp sge i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %6 = load i32, i32* %num_copies.addr, align 4, !tbaa !24
  %7 = load i32, i32* %flush.addr, align 4, !tbaa !24
  %call1 = call i32 @gx_finish_output_page(%struct.gx_device_s* %5, i32 %6, i32 %7) #3
  store i32 %call1, i32* %code, align 4, !tbaa !24
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, i32* %code, align 4, !tbaa !24
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_close_device(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  ret i32 0
}

declare i32 @gx_default_w_b_map_color_rgb(%struct.gx_device_s*, i64, i16*) #2

declare i32 @gx_default_tile_rectangle(%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32) #2

declare i32 @gx_default_copy_mono(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64) #2

declare i32 @gx_default_copy_color(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32) #2

declare i32 @gx_default_draw_line(%struct.gx_device_s*, i32, i32, i32, i32, i64) #2

declare i32 @gx_default_get_bits(%struct.gx_device_s*, i32, i8*, i8**) #2

declare i32 @gx_default_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #2

declare i32 @gx_default_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #2

; Function Attrs: nounwind uwtable
define %struct.gx_xfont_procs_s* @gx_default_get_xfont_procs(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  ret %struct.gx_xfont_procs_s* null
}

; Function Attrs: nounwind uwtable
define %struct.gx_device_s* @gx_default_get_xfont_device(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  ret %struct.gx_device_s* %0
}

declare i64 @gx_default_map_rgb_alpha_color(%struct.gx_device_s*, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext) #2

; Function Attrs: nounwind uwtable
define %struct.gx_device_s* @gx_default_get_page_device(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  ret %struct.gx_device_s* null
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_get_alpha_bits(%struct.gx_device_s* %dev, i32 %type) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %type.addr = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %type, i32* %type.addr, align 4, !tbaa !19
  %0 = load i32, i32* %type.addr, align 4, !tbaa !19
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 11
  %anti_alias = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 9
  %text_bits = getelementptr inbounds %struct.gx_device_anti_alias_info_s, %struct.gx_device_anti_alias_info_s* %anti_alias, i32 0, i32 0
  %2 = load i32, i32* %text_bits, align 4, !tbaa !112
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 11
  %anti_alias2 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info1, i32 0, i32 9
  %graphics_bits = getelementptr inbounds %struct.gx_device_anti_alias_info_s, %struct.gx_device_anti_alias_info_s* %anti_alias2, i32 0, i32 1
  %4 = load i32, i32* %graphics_bits, align 4, !tbaa !113
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %4, %cond.false ]
  ret i32 %cond
}

declare i32 @gx_default_copy_alpha(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32) #2

; Function Attrs: nounwind uwtable
define i32 @gx_default_get_band(%struct.gx_device_s* %dev, i32 %y, i32* %band_start) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %y.addr = alloca i32, align 4
  %band_start.addr = alloca i32*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %y, i32* %y.addr, align 4, !tbaa !24
  store i32* %band_start, i32** %band_start.addr, align 8, !tbaa !1
  ret i32 0
}

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

declare i32 @gx_default_strip_copy_rop(%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32) #2

declare i32 @gx_default_strip_copy_rop2(%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare i32 @gx_default_strip_tile_rect_devn(%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32) #2

; Function Attrs: nounwind uwtable
define void @gx_default_get_clipping_box(%struct.gx_device_s* %dev, %struct.gs_fixed_rect_s* %pbox) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pbox.addr = alloca %struct.gs_fixed_rect_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_fixed_rect_s* %pbox, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %0 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %0, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  store i32 0, i32* %x, align 4, !tbaa !114
  %1 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %p1 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %1, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1, i32 0, i32 1
  store i32 0, i32* %y, align 4, !tbaa !117
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 13
  %3 = load i32, i32* %width, align 4, !tbaa !108
  %shl = shl i32 %3, 8
  %4 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %4, i32 0, i32 1
  %x2 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  store i32 %shl, i32* %x2, align 4, !tbaa !118
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 14
  %6 = load i32, i32* %height, align 4, !tbaa !110
  %shl3 = shl i32 %6, 8
  %7 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %q4 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %7, i32 0, i32 1
  %y5 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q4, i32 0, i32 1
  store i32 %shl3, i32* %y5, align 4, !tbaa !119
  ret void
}

declare i32 @gx_default_begin_typed_image(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**) #2

declare i32 @gx_default_get_bits_rectangle(%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**) #2

declare i32 @gx_default_map_color_rgb_alpha(%struct.gx_device_s*, i64, i16*) #2

; Function Attrs: nounwind uwtable
define i32 @gx_default_create_compositor(%struct.gx_device_s* %dev, %struct.gx_device_s** %pcdev, %struct.gs_composite_s* %pcte, %struct.gs_imager_state_s* %pis, %struct.gs_memory_s* %memory, %struct.gx_device_s* %cdev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pcdev.addr = alloca %struct.gx_device_s**, align 8
  %pcte.addr = alloca %struct.gs_composite_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %cdev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_s** %pcdev, %struct.gx_device_s*** %pcdev.addr, align 8, !tbaa !1
  store %struct.gs_composite_s* %pcte, %struct.gs_composite_s** %pcte.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %cdev, %struct.gx_device_s** %cdev.addr, align 8, !tbaa !1
  %0 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcte.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_composite_s, %struct.gs_composite_s* %0, i32 0, i32 0
  %1 = load %struct.gs_composite_type_s*, %struct.gs_composite_type_s** %type, align 8, !tbaa !120
  %procs = getelementptr inbounds %struct.gs_composite_type_s, %struct.gs_composite_type_s* %1, i32 0, i32 1
  %create_default_compositor = getelementptr inbounds %struct.gs_composite_type_procs_s, %struct.gs_composite_type_procs_s* %procs, i32 0, i32 0
  %2 = load i32 (%struct.gs_composite_s*, %struct.gx_device_s**, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s**, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)** %create_default_compositor, align 8, !tbaa !122
  %3 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcte.addr, align 8, !tbaa !1
  %4 = load %struct.gx_device_s**, %struct.gx_device_s*** %pcdev.addr, align 8, !tbaa !1
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %6 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call = call i32 %2(%struct.gs_composite_s* %3, %struct.gx_device_s** %4, %struct.gx_device_s* %5, %struct.gs_imager_state_s* %6, %struct.gs_memory_s* %7) #3
  ret i32 %call
}

declare i32 @gx_default_get_hardware_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #2

declare i32 @gx_default_text_begin(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**) #2

; Function Attrs: nounwind uwtable
define i32 @gx_default_finish_copydevice(%struct.gx_device_s* %dev, %struct.gx_device_s* %from_dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %from_dev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %from_dev, %struct.gx_device_s** %from_dev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %from_dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i32 0, i32 3
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !125
  %tobool = icmp ne %struct.gs_memory_s* %1, null
  %cond = select i1 %tobool, i32 -15, i32 0
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define internal i64 (%struct.gx_device_s*, i16*)* @get_encode_color(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %encode_proc = alloca i64 (%struct.gx_device_s*, i16*)*, align 8
  %max_gray50 = alloca i16, align 2
  %max_color = alloca i16, align 2
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast i64 (%struct.gx_device_s*, i16*)** %encode_proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 42
  %encode_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 51
  %2 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color, align 8, !tbaa !28
  store i64 (%struct.gx_device_s*, i16*)* %2, i64 (%struct.gx_device_s*, i16*)** %encode_proc, align 8, !tbaa !1
  %cmp = icmp eq i64 (%struct.gx_device_s*, i16*)* %2, null
  br i1 %cmp, label %if.then, label %if.end.23

if.then:                                          ; preds = %entry
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %4 = load i32, i32* %num_components, align 4, !tbaa !23
  %cmp1 = icmp eq i32 %4, 1
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 42
  %map_rgb_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs2, i32 0, i32 5
  %6 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %map_rgb_color, align 8, !tbaa !77
  %cmp3 = icmp ne i64 (%struct.gx_device_s*, i16*)* %6, null
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %land.lhs.true
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  call void @set_cinfo_polarity(%struct.gx_device_s* %7, i32 1) #3
  store i64 (%struct.gx_device_s*, i16*)* @gx_backwards_compatible_gray_encode, i64 (%struct.gx_device_s*, i16*)** %encode_proc, align 8, !tbaa !1
  br label %if.end.22

if.else:                                          ; preds = %land.lhs.true, %if.then
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info5 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 11
  %num_components6 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info5, i32 0, i32 1
  %9 = load i32, i32* %num_components6, align 4, !tbaa !23
  %cmp7 = icmp eq i32 %9, 3
  br i1 %cmp7, label %land.lhs.true.8, label %if.else.13

land.lhs.true.8:                                  ; preds = %if.else
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs9 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %10, i32 0, i32 42
  %map_rgb_color10 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs9, i32 0, i32 5
  %11 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %map_rgb_color10, align 8, !tbaa !77
  store i64 (%struct.gx_device_s*, i16*)* %11, i64 (%struct.gx_device_s*, i16*)** %encode_proc, align 8, !tbaa !1
  %cmp11 = icmp ne i64 (%struct.gx_device_s*, i16*)* %11, null
  br i1 %cmp11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %land.lhs.true.8
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  call void @set_cinfo_polarity(%struct.gx_device_s* %12, i32 1) #3
  br label %if.end.21

if.else.13:                                       ; preds = %land.lhs.true.8, %if.else
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info14 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %13, i32 0, i32 11
  %num_components15 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info14, i32 0, i32 1
  %14 = load i32, i32* %num_components15, align 4, !tbaa !23
  %cmp16 = icmp eq i32 %14, 4
  br i1 %cmp16, label %land.lhs.true.17, label %if.end

land.lhs.true.17:                                 ; preds = %if.else.13
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %15, i32 0, i32 42
  %map_cmyk_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs18, i32 0, i32 15
  %16 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %map_cmyk_color, align 8, !tbaa !78
  store i64 (%struct.gx_device_s*, i16*)* %16, i64 (%struct.gx_device_s*, i16*)** %encode_proc, align 8, !tbaa !1
  %cmp19 = icmp ne i64 (%struct.gx_device_s*, i16*)* %16, null
  br i1 %cmp19, label %if.then.20, label %if.end

if.then.20:                                       ; preds = %land.lhs.true.17
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  call void @set_cinfo_polarity(%struct.gx_device_s* %17, i32 0) #3
  br label %if.end

if.end:                                           ; preds = %if.then.20, %land.lhs.true.17, %if.else.13
  br label %if.end.21

if.end.21:                                        ; preds = %if.end, %if.then.12
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.4
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %entry
  %18 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_proc, align 8, !tbaa !1
  %cmp24 = icmp eq i64 (%struct.gx_device_s*, i16*)* %18, null
  br i1 %cmp24, label %if.then.25, label %if.end.73

if.then.25:                                       ; preds = %if.end.23
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info26 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %19, i32 0, i32 11
  %num_components27 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info26, i32 0, i32 1
  %20 = load i32, i32* %num_components27, align 4, !tbaa !23
  %cmp28 = icmp eq i32 %20, 1
  br i1 %cmp28, label %land.lhs.true.29, label %if.else.44

land.lhs.true.29:                                 ; preds = %if.then.25
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info30 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %21, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info30, i32 0, i32 3
  %22 = load i16, i16* %depth, align 2, !tbaa !126
  %conv = zext i16 %22 to i32
  %cmp31 = icmp ne i32 %conv, 0
  br i1 %cmp31, label %if.then.33, label %if.else.44

if.then.33:                                       ; preds = %land.lhs.true.29
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  call void @set_cinfo_polarity(%struct.gx_device_s* %23, i32 1) #3
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info34 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %24, i32 0, i32 11
  %max_gray = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info34, i32 0, i32 5
  %25 = load i32, i32* %max_gray, align 4, !tbaa !20
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info35 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %26, i32 0, i32 11
  %depth36 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info35, i32 0, i32 3
  %27 = load i16, i16* %depth36, align 2, !tbaa !126
  %conv37 = zext i16 %27 to i32
  %shl = shl i32 1, %conv37
  %sub = sub nsw i32 %shl, 1
  %cmp38 = icmp eq i32 %25, %sub
  br i1 %cmp38, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %if.then.33
  store i64 (%struct.gx_device_s*, i16*)* @gx_default_gray_fast_encode, i64 (%struct.gx_device_s*, i16*)** %encode_proc, align 8, !tbaa !1
  br label %if.end.42

if.else.41:                                       ; preds = %if.then.33
  store i64 (%struct.gx_device_s*, i16*)* @gx_default_gray_encode, i64 (%struct.gx_device_s*, i16*)** %encode_proc, align 8, !tbaa !1
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.41, %if.then.40
  %28 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info43 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %28, i32 0, i32 11
  %separable_and_linear = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info43, i32 0, i32 10
  store i32 1, i32* %separable_and_linear, align 4, !tbaa !79
  br label %if.end.72

if.else.44:                                       ; preds = %land.lhs.true.29, %if.then.25
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info45 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %29, i32 0, i32 11
  %separable_and_linear46 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info45, i32 0, i32 10
  %30 = load i32, i32* %separable_and_linear46, align 4, !tbaa !79
  %cmp47 = icmp eq i32 %30, 1
  br i1 %cmp47, label %if.then.49, label %if.end.71

if.then.49:                                       ; preds = %if.else.44
  %31 = bitcast i16* %max_gray50 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %31) #1
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info51 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %32, i32 0, i32 11
  %max_gray52 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info51, i32 0, i32 5
  %33 = load i32, i32* %max_gray52, align 4, !tbaa !20
  %conv53 = trunc i32 %33 to i16
  store i16 %conv53, i16* %max_gray50, align 2, !tbaa !21
  %34 = bitcast i16* %max_color to i8*
  call void @llvm.lifetime.start(i64 2, i8* %34) #1
  %35 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info54 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %35, i32 0, i32 11
  %max_color55 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info54, i32 0, i32 6
  %36 = load i32, i32* %max_color55, align 4, !tbaa !22
  %conv56 = trunc i32 %36 to i16
  store i16 %conv56, i16* %max_color, align 2, !tbaa !21
  %37 = load i16, i16* %max_gray50, align 2, !tbaa !21
  %conv57 = zext i16 %37 to i32
  %38 = load i16, i16* %max_gray50, align 2, !tbaa !21
  %conv58 = zext i16 %38 to i32
  %add = add nsw i32 %conv58, 1
  %and = and i32 %conv57, %add
  %cmp59 = icmp eq i32 %and, 0
  br i1 %cmp59, label %land.lhs.true.61, label %if.else.69

land.lhs.true.61:                                 ; preds = %if.then.49
  %39 = load i16, i16* %max_color, align 2, !tbaa !21
  %conv62 = zext i16 %39 to i32
  %40 = load i16, i16* %max_color, align 2, !tbaa !21
  %conv63 = zext i16 %40 to i32
  %add64 = add nsw i32 %conv63, 1
  %and65 = and i32 %conv62, %add64
  %cmp66 = icmp eq i32 %and65, 0
  br i1 %cmp66, label %if.then.68, label %if.else.69

if.then.68:                                       ; preds = %land.lhs.true.61
  store i64 (%struct.gx_device_s*, i16*)* @gx_default_encode_color, i64 (%struct.gx_device_s*, i16*)** %encode_proc, align 8, !tbaa !1
  br label %if.end.70

if.else.69:                                       ; preds = %land.lhs.true.61, %if.then.49
  store i64 (%struct.gx_device_s*, i16*)* @gx_default_encode_color, i64 (%struct.gx_device_s*, i16*)** %encode_proc, align 8, !tbaa !1
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.69, %if.then.68
  %41 = bitcast i16* %max_color to i8*
  call void @llvm.lifetime.end(i64 2, i8* %41) #1
  %42 = bitcast i16* %max_gray50 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %42) #1
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.else.44
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.end.42
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.end.23
  %43 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_proc, align 8, !tbaa !1
  %44 = bitcast i64 (%struct.gx_device_s*, i16*)** %encode_proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  ret i64 (%struct.gx_device_s*, i16*)* %43
}

declare i64 @gx_default_encode_color(%struct.gx_device_s*, i16*) #2

declare i64 @gx_error_encode_color(%struct.gx_device_s*, i16*) #2

declare %struct.gx_cm_color_map_procs_s* @gx_default_DevGray_get_color_mapping_procs(%struct.gx_device_s*) #2

declare %struct.gx_cm_color_map_procs_s* @gx_error_get_color_mapping_procs(%struct.gx_device_s*) #2

declare i32 @gx_default_DevGray_get_color_comp_index(%struct.gx_device_s*, i8*, i32, i32) #2

declare %struct.gx_cm_color_map_procs_s* @gx_default_DevRGB_get_color_mapping_procs(%struct.gx_device_s*) #2

declare i32 @gx_default_DevRGB_get_color_comp_index(%struct.gx_device_s*, i8*, i32, i32) #2

declare i32 @gx_error_get_color_comp_index(%struct.gx_device_s*, i8*, i32, i32) #2

declare %struct.gx_cm_color_map_procs_s* @gx_default_DevCMYK_get_color_mapping_procs(%struct.gx_device_s*) #2

declare i32 @gx_default_DevCMYK_get_color_comp_index(%struct.gx_device_s*, i8*, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 (%struct.gx_device_s*, i64, i16*)* @get_decode_color(%struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32 (%struct.gx_device_s*, i64, i16*)*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i32 0, i32 42
  %decode_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 52
  %1 = load i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)** %decode_color, align 8, !tbaa !83
  %cmp = icmp ne i32 (%struct.gx_device_s*, i64, i16*)* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 42
  %decode_color2 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1, i32 0, i32 52
  %3 = load i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)** %decode_color2, align 8, !tbaa !83
  store i32 (%struct.gx_device_s*, i64, i16*)* %3, i32 (%struct.gx_device_s*, i64, i16*)** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 42
  %map_color_rgb = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs3, i32 0, i32 6
  %5 = load i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)** %map_color_rgb, align 8, !tbaa !39
  %cmp4 = icmp ne i32 (%struct.gx_device_s*, i64, i16*)* %5, null
  br i1 %cmp4, label %if.then.5, label %if.end.32

if.then.5:                                        ; preds = %if.end
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 @is_like_DeviceRGB(%struct.gx_device_s* %6) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.then.5
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs7 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 42
  %map_color_rgb8 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs7, i32 0, i32 6
  %8 = load i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)** %map_color_rgb8, align 8, !tbaa !39
  store i32 (%struct.gx_device_s*, i64, i16*)* %8, i32 (%struct.gx_device_s*, i64, i16*)** %retval
  br label %return

if.end.9:                                         ; preds = %if.then.5
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 11
  %separable_and_linear = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 10
  %10 = load i32, i32* %separable_and_linear, align 4, !tbaa !79
  %cmp10 = icmp eq i32 %10, 1
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.9
  store i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_decode_color, i32 (%struct.gx_device_s*, i64, i16*)** %retval
  br label %return

if.end.12:                                        ; preds = %if.end.9
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info13 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info13, i32 0, i32 1
  %12 = load i32, i32* %num_components, align 4, !tbaa !23
  %cmp14 = icmp eq i32 %12, 1
  br i1 %cmp14, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %if.end.12
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info15 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %13, i32 0, i32 11
  %gray_index = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info15, i32 0, i32 4
  %14 = load i8, i8* %gray_index, align 1, !tbaa !5
  %conv = zext i8 %14 to i32
  %cmp16 = icmp eq i32 %conv, 0
  br i1 %cmp16, label %if.then.18, label %if.end.22

if.then.18:                                       ; preds = %land.lhs.true
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info19 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %15, i32 0, i32 11
  %polarity = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info19, i32 0, i32 2
  %16 = load i32, i32* %polarity, align 4, !tbaa !81
  %cmp20 = icmp eq i32 %16, 1
  %cond = select i1 %cmp20, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_1_add_decode_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_1_sub_decode_color
  store i32 (%struct.gx_device_s*, i64, i16*)* %cond, i32 (%struct.gx_device_s*, i64, i16*)** %retval
  br label %return

if.end.22:                                        ; preds = %land.lhs.true, %if.end.12
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call23 = call i32 @is_like_DeviceCMYK(%struct.gx_device_s* %17) #3
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.31

if.then.25:                                       ; preds = %if.end.22
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs26 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 42
  %map_color_rgb27 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs26, i32 0, i32 6
  %19 = load i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)** %map_color_rgb27, align 8, !tbaa !39
  %cmp28 = icmp eq i32 (%struct.gx_device_s*, i64, i16*)* %19, @cmyk_1bit_map_color_rgb
  br i1 %cmp28, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %if.then.25
  store i32 (%struct.gx_device_s*, i64, i16*)* @gx_1bit_cmyk_decode_color, i32 (%struct.gx_device_s*, i64, i16*)** %retval
  br label %return

if.else:                                          ; preds = %if.then.25
  store i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_cmyk_decode_color, i32 (%struct.gx_device_s*, i64, i16*)** %retval
  br label %return

if.end.31:                                        ; preds = %if.end.22
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.end
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info33 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 11
  %separable_and_linear34 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info33, i32 0, i32 10
  %21 = load i32, i32* %separable_and_linear34, align 4, !tbaa !79
  %cmp35 = icmp eq i32 %21, 1
  br i1 %cmp35, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %if.end.32
  store i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_decode_color, i32 (%struct.gx_device_s*, i64, i16*)** %retval
  br label %return

if.else.38:                                       ; preds = %if.end.32
  store i32 (%struct.gx_device_s*, i64, i16*)* @gx_error_decode_color, i32 (%struct.gx_device_s*, i64, i16*)** %retval
  br label %return

return:                                           ; preds = %if.else.38, %if.then.37, %if.else, %if.then.30, %if.then.18, %if.then.11, %if.then.6, %if.then
  %22 = load i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)** %retval
  ret i32 (%struct.gx_device_s*, i64, i16*)* %22
}

declare i32 @gx_default_get_profile(%struct.gx_device_s*, %struct.cmm_dev_profile_s**) #2

; Function Attrs: nounwind uwtable
define void @gx_default_set_graphics_type_tag(%struct.gx_device_s* %dev, i32 %graphics_type_tag) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %graphics_type_tag.addr = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %graphics_type_tag, i32* %graphics_type_tag.addr, align 4, !tbaa !19
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %graphics_type_tag1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i32 0, i32 40
  %1 = load i32, i32* %graphics_type_tag1, align 4, !tbaa !127
  %and = and i32 %1, 128
  %2 = load i32, i32* %graphics_type_tag.addr, align 4, !tbaa !19
  %or = or i32 %and, %2
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %graphics_type_tag2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 40
  store i32 %or, i32* %graphics_type_tag2, align 4, !tbaa !127
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_fill_rectangle_hl_color(%struct.gx_device_s* %pdev, %struct.gs_fixed_rect_s* %rect, %struct.gs_imager_state_s* %pis, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %rect.addr = alloca %struct.gs_fixed_rect_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_fixed_rect_s* %rect, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  ret i32 -15
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_include_color_space(%struct.gx_device_s* %pdev, %struct.gs_color_space_s* %cspace, i8* %res_name, i32 %name_length) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %cspace.addr = alloca %struct.gs_color_space_s*, align 8
  %res_name.addr = alloca i8*, align 8
  %name_length.addr = alloca i32, align 4
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %cspace, %struct.gs_color_space_s** %cspace.addr, align 8, !tbaa !1
  store i8* %res_name, i8** %res_name.addr, align 8, !tbaa !1
  store i32 %name_length, i32* %name_length.addr, align 4, !tbaa !24
  ret i32 0
}

declare i32 @gx_default_fill_linear_color_scanline(%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32) #2

declare i32 @gx_default_fill_linear_color_trapezoid(%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*) #2

declare i32 @gx_default_fill_linear_color_triangle(%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*) #2

; Function Attrs: nounwind uwtable
define i32 @gx_default_update_spot_equivalent_colors(%struct.gx_device_s* %pdev, %struct.gs_state_s* %pgs) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define %struct.gs_devn_params_s* @gx_default_ret_devn_params(%struct.gx_device_s* %pdev) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  ret %struct.gs_devn_params_s* null
}

declare i32 @gx_default_fillpage(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*) #2

declare i32 @gx_default_copy_alpha_hl_color(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @gx_default_dev_spec_op(%struct.gx_device_s* %pdev, i32 %dev_spec_op, i8* %data, i32 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %dev_spec_op.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store i32 %dev_spec_op, i32* %dev_spec_op.addr, align 4, !tbaa !24
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !24
  %0 = load i32, i32* %dev_spec_op.addr, align 4, !tbaa !24
  switch i32 %0, label %sw.epilog [
    i32 17, label %sw.bb
    i32 18, label %sw.bb
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 5, label %sw.bb
    i32 7, label %sw.bb
    i32 9, label %sw.bb
    i32 11, label %sw.bb
    i32 12, label %sw.bb
    i32 16, label %sw.bb
    i32 15, label %sw.bb
    i32 6, label %sw.bb.1
    i32 8, label %sw.bb.2
    i32 14, label %sw.bb.6
    i32 13, label %sw.bb.20
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  store i32 0, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 42
  %fill_path = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 24
  %2 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %fill_path, align 8, !tbaa !55
  %cmp = icmp eq i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* %2, @gx_default_fill_path
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 42
  %map_cmyk_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs3, i32 0, i32 15
  %4 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %map_cmyk_color, align 8, !tbaa !78
  %cmp4 = icmp eq i64 (%struct.gx_device_s*, i16*)* %4, @cmyk_1bit_map_cmyk_color
  %conv5 = zext i1 %cmp4 to i32
  store i32 %conv5, i32* %retval
  br label %return

sw.bb.6:                                          ; preds = %entry
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %6 = load i32, i32* %num_components, align 4, !tbaa !23
  %cmp7 = icmp eq i32 %6, 1
  br i1 %cmp7, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %sw.bb.6
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info9 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 11
  %max_gray = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info9, i32 0, i32 5
  %8 = load i32, i32* %max_gray, align 4, !tbaa !20
  %cmp10 = icmp ult i32 %8, 15
  br i1 %cmp10, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %sw.bb.6
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info12 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 11
  %num_components13 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info12, i32 0, i32 1
  %10 = load i32, i32* %num_components13, align 4, !tbaa !23
  %cmp14 = icmp sgt i32 %10, 1
  br i1 %cmp14, label %land.lhs.true.16, label %if.end

land.lhs.true.16:                                 ; preds = %lor.lhs.false
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info17 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 11
  %max_color = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info17, i32 0, i32 6
  %12 = load i32, i32* %max_color, align 4, !tbaa !22
  %cmp18 = icmp ult i32 %12, 15
  br i1 %cmp18, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.16, %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.16, %lor.lhs.false
  store i32 0, i32* %retval
  br label %return

sw.bb.20:                                         ; preds = %entry
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info21 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %13, i32 0, i32 11
  %num_components22 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info21, i32 0, i32 1
  %14 = load i32, i32* %num_components22, align 4, !tbaa !23
  %cmp23 = icmp eq i32 %14, 1
  br i1 %cmp23, label %land.lhs.true.25, label %lor.lhs.false.30

land.lhs.true.25:                                 ; preds = %sw.bb.20
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info26 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %15, i32 0, i32 11
  %max_gray27 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info26, i32 0, i32 5
  %16 = load i32, i32* %max_gray27, align 4, !tbaa !20
  %cmp28 = icmp ult i32 %16, 15
  br i1 %cmp28, label %if.then.40, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %land.lhs.true.25, %sw.bb.20
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info31 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 11
  %num_components32 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info31, i32 0, i32 1
  %18 = load i32, i32* %num_components32, align 4, !tbaa !23
  %cmp33 = icmp sgt i32 %18, 1
  br i1 %cmp33, label %land.lhs.true.35, label %if.end.41

land.lhs.true.35:                                 ; preds = %lor.lhs.false.30
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info36 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %19, i32 0, i32 11
  %max_color37 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info36, i32 0, i32 6
  %20 = load i32, i32* %max_color37, align 4, !tbaa !22
  %cmp38 = icmp ult i32 %20, 15
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %land.lhs.true.35, %land.lhs.true.25
  store i32 4, i32* %retval
  br label %return

if.end.41:                                        ; preds = %land.lhs.true.35, %lor.lhs.false.30
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  store i32 -21, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.end.41, %if.then.40, %if.end, %if.then, %sw.bb.2, %sw.bb.1, %sw.bb
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_process_page(%struct.gx_device_s* %dev, %struct.gx_process_page_options_s* %options) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %options.addr = alloca %struct.gx_process_page_options_s*, align 8
  %rect = alloca %struct.gs_int_rect_s, align 4
  %code = alloca i32, align 4
  %buffer = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_process_page_options_s* %options, %struct.gx_process_page_options_s** %options.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_int_rect_s* %rect to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %code, align 4, !tbaa !24
  %2 = bitcast i8** %buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i8* null, i8** %buffer, align 8, !tbaa !1
  %3 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %options.addr, align 8, !tbaa !1
  %init_buffer_fn = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %3, i32 0, i32 0
  %4 = load i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)** %init_buffer_fn, align 8, !tbaa !128
  %tobool = icmp ne i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)* %4, null
  br i1 %tobool, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %5 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %options.addr, align 8, !tbaa !1
  %init_buffer_fn1 = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %5, i32 0, i32 0
  %6 = load i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)** %init_buffer_fn1, align 8, !tbaa !128
  %7 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %options.addr, align 8, !tbaa !1
  %arg = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %7, i32 0, i32 4
  %8 = load i8*, i8** %arg, align 8, !tbaa !130
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %10, i32 0, i32 3
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !125
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i32 0, i32 13
  %13 = load i32, i32* %width, align 4, !tbaa !108
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %14, i32 0, i32 14
  %15 = load i32, i32* %height, align 4, !tbaa !110
  %call = call i32 %6(i8* %8, %struct.gx_device_s* %9, %struct.gs_memory_s* %11, i32 %13, i32 %15, i8** %buffer) #3
  store i32 %call, i32* %code, align 4, !tbaa !24
  %16 = load i32, i32* %code, align 4, !tbaa !24
  %cmp = icmp slt i32 %16, 0
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %17 = load i32, i32* %code, align 4, !tbaa !24
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  store i32 0, i32* %x, align 4, !tbaa !131
  %p4 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p4, i32 0, i32 1
  store i32 0, i32* %y, align 4, !tbaa !134
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width5 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 13
  %19 = load i32, i32* %width5, align 4, !tbaa !108
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 1
  %x6 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  store i32 %19, i32* %x6, align 4, !tbaa !135
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height7 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 14
  %21 = load i32, i32* %height7, align 4, !tbaa !110
  %q8 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 1
  %y9 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q8, i32 0, i32 1
  store i32 %21, i32* %y9, align 4, !tbaa !136
  %22 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %options.addr, align 8, !tbaa !1
  %process_fn = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %22, i32 0, i32 2
  %23 = load i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)** %process_fn, align 8, !tbaa !137
  %tobool10 = icmp ne i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)* %23, null
  br i1 %tobool10, label %if.then.11, label %if.end.15

if.then.11:                                       ; preds = %if.end.3
  %24 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %options.addr, align 8, !tbaa !1
  %process_fn12 = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %24, i32 0, i32 2
  %25 = load i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)** %process_fn12, align 8, !tbaa !137
  %26 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %options.addr, align 8, !tbaa !1
  %arg13 = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %26, i32 0, i32 4
  %27 = load i8*, i8** %arg13, align 8, !tbaa !130
  %28 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %30 = load i8*, i8** %buffer, align 8, !tbaa !1
  %call14 = call i32 %25(i8* %27, %struct.gx_device_s* %28, %struct.gx_device_s* %29, %struct.gs_int_rect_s* %rect, i8* %30) #3
  store i32 %call14, i32* %code, align 4, !tbaa !24
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.11, %if.end.3
  %31 = load i32, i32* %code, align 4, !tbaa !24
  %cmp16 = icmp sge i32 %31, 0
  br i1 %cmp16, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %if.end.15
  %32 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %options.addr, align 8, !tbaa !1
  %output_fn = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %32, i32 0, i32 3
  %33 = load i32 (i8*, %struct.gx_device_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)** %output_fn, align 8, !tbaa !138
  %tobool17 = icmp ne i32 (i8*, %struct.gx_device_s*, i8*)* %33, null
  br i1 %tobool17, label %if.then.18, label %if.end.22

if.then.18:                                       ; preds = %land.lhs.true
  %34 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %options.addr, align 8, !tbaa !1
  %output_fn19 = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %34, i32 0, i32 3
  %35 = load i32 (i8*, %struct.gx_device_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)** %output_fn19, align 8, !tbaa !138
  %36 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %options.addr, align 8, !tbaa !1
  %arg20 = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %36, i32 0, i32 4
  %37 = load i8*, i8** %arg20, align 8, !tbaa !130
  %38 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %39 = load i8*, i8** %buffer, align 8, !tbaa !1
  %call21 = call i32 %35(i8* %37, %struct.gx_device_s* %38, i8* %39) #3
  store i32 %call21, i32* %code, align 4, !tbaa !24
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.18, %land.lhs.true, %if.end.15
  %40 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %options.addr, align 8, !tbaa !1
  %free_buffer_fn = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %40, i32 0, i32 1
  %41 = load void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)** %free_buffer_fn, align 8, !tbaa !139
  %tobool23 = icmp ne void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)* %41, null
  br i1 %tobool23, label %if.then.24, label %if.end.28

if.then.24:                                       ; preds = %if.end.22
  %42 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %options.addr, align 8, !tbaa !1
  %free_buffer_fn25 = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %42, i32 0, i32 1
  %43 = load void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)** %free_buffer_fn25, align 8, !tbaa !139
  %44 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %options.addr, align 8, !tbaa !1
  %arg26 = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %44, i32 0, i32 4
  %45 = load i8*, i8** %arg26, align 8, !tbaa !130
  %46 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %47 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory27 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %47, i32 0, i32 3
  %48 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory27, align 8, !tbaa !125
  %49 = load i8*, i8** %buffer, align 8, !tbaa !1
  call void %43(i8* %45, %struct.gx_device_s* %46, %struct.gs_memory_s* %48, i8* %49) #3
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.24, %if.end.22
  %50 = load i32, i32* %code, align 4, !tbaa !24
  store i32 %50, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.28, %if.then.2
  %51 = bitcast i8** %buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #1
  %52 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast %struct.gs_int_rect_s* %rect to i8*
  call void @llvm.lifetime.end(i64 16, i8* %53) #1
  %54 = load i32, i32* %retval
  ret i32 %54
}

; Function Attrs: nounwind uwtable
define void @gx_upright_get_initial_matrix(%struct.gx_device_s* %dev, %struct.gs_matrix_s* %pmat) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %1 = load float, float* %arrayidx, align 4, !tbaa !98
  %conv = fpext float %1 to double
  %div = fdiv double %conv, 7.200000e+01
  %conv1 = fptrunc double %div to float
  %2 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %2, i32 0, i32 0
  store float %conv1, float* %xx, align 4, !tbaa !103
  %3 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %3, i32 0, i32 1
  store float 0.000000e+00, float* %xy, align 4, !tbaa !105
  %4 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %4, i32 0, i32 2
  store float 0.000000e+00, float* %yx, align 4, !tbaa !106
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %HWResolution2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 22
  %arrayidx3 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution2, i32 0, i64 1
  %6 = load float, float* %arrayidx3, align 4, !tbaa !98
  %conv4 = fpext float %6 to double
  %div5 = fdiv double %conv4, 7.200000e+01
  %conv6 = fptrunc double %div5 to float
  %7 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %7, i32 0, i32 3
  store float %conv6, float* %yy, align 4, !tbaa !107
  %8 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %8, i32 0, i32 4
  store float 0.000000e+00, float* %tx, align 4, !tbaa !109
  %9 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %9, i32 0, i32 5
  store float 0.000000e+00, float* %ty, align 4, !tbaa !111
  ret void
}

declare i32 @gx_finish_output_page(%struct.gx_device_s*, i32, i32) #2

; Function Attrs: nounwind uwtable
define %struct.gx_device_s* @gx_page_device_get_page_device(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  ret %struct.gx_device_s* %0
}

; Function Attrs: nounwind uwtable
define void @gx_get_largest_clipping_box(%struct.gx_device_s* %dev, %struct.gs_fixed_rect_s* %pbox) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pbox.addr = alloca %struct.gs_fixed_rect_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_fixed_rect_s* %pbox, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %0 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %0, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  store i32 -2147483648, i32* %x, align 4, !tbaa !114
  %1 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %p1 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %1, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1, i32 0, i32 1
  store i32 -2147483648, i32* %y, align 4, !tbaa !117
  %2 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %2, i32 0, i32 1
  %x2 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  store i32 2147483647, i32* %x2, align 4, !tbaa !118
  %3 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %q3 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %3, i32 0, i32 1
  %y4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q3, i32 0, i32 1
  store i32 2147483647, i32* %y4, align 4, !tbaa !119
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gx_no_create_compositor(%struct.gx_device_s* %dev, %struct.gx_device_s** %pcdev, %struct.gs_composite_s* %pcte, %struct.gs_imager_state_s* %pis, %struct.gs_memory_s* %memory, %struct.gx_device_s* %cdev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pcdev.addr = alloca %struct.gx_device_s**, align 8
  %pcte.addr = alloca %struct.gs_composite_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %cdev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_s** %pcdev, %struct.gx_device_s*** %pcdev.addr, align 8, !tbaa !1
  store %struct.gs_composite_s* %pcte, %struct.gs_composite_s** %pcte.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %cdev, %struct.gx_device_s** %cdev.addr, align 8, !tbaa !1
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define i32 @gx_null_create_compositor(%struct.gx_device_s* %dev, %struct.gx_device_s** %pcdev, %struct.gs_composite_s* %pcte, %struct.gs_imager_state_s* %pis, %struct.gs_memory_s* %memory, %struct.gx_device_s* %cdev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pcdev.addr = alloca %struct.gx_device_s**, align 8
  %pcte.addr = alloca %struct.gs_composite_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %cdev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_s** %pcdev, %struct.gx_device_s*** %pcdev.addr, align 8, !tbaa !1
  store %struct.gs_composite_s* %pcte, %struct.gs_composite_s** %pcte.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %cdev, %struct.gx_device_s** %cdev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %1 = load %struct.gx_device_s**, %struct.gx_device_s*** %pcdev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %0, %struct.gx_device_s** %1, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_composite_clist_write_update(%struct.gs_composite_s* %pcte, %struct.gx_device_s* %dev, %struct.gx_device_s** %pcdev, %struct.gs_imager_state_s* %pis, %struct.gs_memory_s* %mem) #0 {
entry:
  %pcte.addr = alloca %struct.gs_composite_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pcdev.addr = alloca %struct.gx_device_s**, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_composite_s* %pcte, %struct.gs_composite_s** %pcte.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_s** %pcdev, %struct.gx_device_s*** %pcdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %1 = load %struct.gx_device_s**, %struct.gx_device_s*** %pcdev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %0, %struct.gx_device_s** %1, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_composite_adjust_ctm(%struct.gs_composite_s* %pcte, i32 %x0, i32 %y0, %struct.gs_imager_state_s* %pis) #0 {
entry:
  %pcte.addr = alloca %struct.gs_composite_s*, align 8
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  store %struct.gs_composite_s* %pcte, %struct.gs_composite_s** %pcte.addr, align 8, !tbaa !1
  store i32 %x0, i32* %x0.addr, align 4, !tbaa !24
  store i32 %y0, i32* %y0.addr, align 4, !tbaa !24
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_composite_is_closing(%struct.gs_composite_s* %this, %struct.gs_composite_s** %pcte, %struct.gx_device_s* %dev) #0 {
entry:
  %this.addr = alloca %struct.gs_composite_s*, align 8
  %pcte.addr = alloca %struct.gs_composite_s**, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gs_composite_s* %this, %struct.gs_composite_s** %this.addr, align 8, !tbaa !1
  store %struct.gs_composite_s** %pcte, %struct.gs_composite_s*** %pcte.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_composite_is_friendly(%struct.gs_composite_s* %this, i8 zeroext %cmd0, i8 zeroext %cmd1) #0 {
entry:
  %this.addr = alloca %struct.gs_composite_s*, align 8
  %cmd0.addr = alloca i8, align 1
  %cmd1.addr = alloca i8, align 1
  store %struct.gs_composite_s* %this, %struct.gs_composite_s** %this.addr, align 8, !tbaa !1
  store i8 %cmd0, i8* %cmd0.addr, align 1, !tbaa !19
  store i8 %cmd1, i8* %cmd1.addr, align 1, !tbaa !19
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_composite_clist_read_update(%struct.gs_composite_s* %pxcte, %struct.gx_device_s* %cdev, %struct.gx_device_s* %tdev, %struct.gs_imager_state_s* %pis, %struct.gs_memory_s* %mem) #0 {
entry:
  %pxcte.addr = alloca %struct.gs_composite_s*, align 8
  %cdev.addr = alloca %struct.gx_device_s*, align 8
  %tdev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_composite_s* %pxcte, %struct.gs_composite_s** %pxcte.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %cdev, %struct.gx_device_s** %cdev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %tdev, %struct.gx_device_s** %tdev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_composite_get_cropping(%struct.gs_composite_s* %pxcte, i32* %ry, i32* %rheight, i32 %cropping_min, i32 %cropping_max) #0 {
entry:
  %pxcte.addr = alloca %struct.gs_composite_s*, align 8
  %ry.addr = alloca i32*, align 8
  %rheight.addr = alloca i32*, align 8
  %cropping_min.addr = alloca i32, align 4
  %cropping_max.addr = alloca i32, align 4
  store %struct.gs_composite_s* %pxcte, %struct.gs_composite_s** %pxcte.addr, align 8, !tbaa !1
  store i32* %ry, i32** %ry.addr, align 8, !tbaa !1
  store i32* %rheight, i32** %rheight.addr, align 8, !tbaa !1
  store i32 %cropping_min, i32* %cropping_min.addr, align 4, !tbaa !24
  store i32 %cropping_max, i32* %cropping_max.addr, align 4, !tbaa !24
  ret i32 0
}

declare i64 @cmyk_1bit_map_cmyk_color(%struct.gx_device_s*, i16*) #2

; Function Attrs: nounwind uwtable
define i32 @gx_default_install(%struct.gx_device_s* %dev, %struct.gs_state_s* %pgs) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_begin_page(%struct.gx_device_s* %dev, %struct.gs_state_s* %pgs) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_end_page(%struct.gx_device_s* %dev, i32 %reason, %struct.gs_state_s* %pgs) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %reason.addr = alloca i32, align 4
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %reason, i32* %reason.addr, align 4, !tbaa !24
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = load i32, i32* %reason.addr, align 4, !tbaa !24
  %cmp = icmp ne i32 %0, 2
  %cond = select i1 %cmp, i32 1, i32 0
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define internal void @set_cinfo_polarity(%struct.gx_device_s* %dev, i32 %new_polarity) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %new_polarity.addr = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %new_polarity, i32* %new_polarity.addr, align 4, !tbaa !19
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i32 0, i32 11
  %polarity = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 2
  %1 = load i32, i32* %polarity, align 4, !tbaa !81
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %new_polarity.addr, align 4, !tbaa !19
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 11
  %polarity2 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info1, i32 0, i32 2
  store i32 %2, i32* %polarity2, align 4, !tbaa !81
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i64 @gx_backwards_compatible_gray_encode(%struct.gx_device_s*, i16*) #2

declare i64 @gx_default_gray_fast_encode(%struct.gx_device_s*, i16*) #2

declare i64 @gx_default_gray_encode(%struct.gx_device_s*, i16*) #2

; Function Attrs: nounwind uwtable
define internal i32 @is_like_DeviceRGB(%struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cm_procs = alloca %struct.gx_cm_color_map_procs_s*, align 8
  %cm_comp_fracs = alloca [3 x i16], align 2
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_cm_color_map_procs_s** %cm_procs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast [3 x i16]* %cm_comp_fracs to i8*
  call void @llvm.lifetime.start(i64 6, i8* %1) #1
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %4 = load i32, i32* %num_components, align 4, !tbaa !23
  %cmp = icmp ne i32 %4, 3
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 11
  %polarity = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info1, i32 0, i32 2
  %6 = load i32, i32* %polarity, align 4, !tbaa !81
  %cmp2 = icmp ne i32 %6, 1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 42
  %get_color_mapping_procs = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 49
  %8 = load %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)** %get_color_mapping_procs, align 8, !tbaa !80
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call %struct.gx_cm_color_map_procs_s* %8(%struct.gx_device_s* %9) #3
  store %struct.gx_cm_color_map_procs_s* %call, %struct.gx_cm_color_map_procs_s** %cm_procs, align 8, !tbaa !1
  %10 = load %struct.gx_cm_color_map_procs_s*, %struct.gx_cm_color_map_procs_s** %cm_procs, align 8, !tbaa !1
  %cmp3 = icmp eq %struct.gx_cm_color_map_procs_s* %10, null
  br i1 %cmp3, label %if.then.6, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %if.end
  %11 = load %struct.gx_cm_color_map_procs_s*, %struct.gx_cm_color_map_procs_s** %cm_procs, align 8, !tbaa !1
  %map_rgb = getelementptr inbounds %struct.gx_cm_color_map_procs_s, %struct.gx_cm_color_map_procs_s* %11, i32 0, i32 1
  %12 = load void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)** %map_rgb, align 8, !tbaa !140
  %cmp5 = icmp eq void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)* %12, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %lor.lhs.false.4, %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %lor.lhs.false.4
  %13 = load %struct.gx_cm_color_map_procs_s*, %struct.gx_cm_color_map_procs_s** %cm_procs, align 8, !tbaa !1
  %map_rgb8 = getelementptr inbounds %struct.gx_cm_color_map_procs_s, %struct.gx_cm_color_map_procs_s* %13, i32 0, i32 1
  %14 = load void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)** %map_rgb8, align 8, !tbaa !140
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [3 x i16], [3 x i16]* %cm_comp_fracs, i32 0, i32 0
  call void %14(%struct.gx_device_s* %15, %struct.gs_imager_state_s* null, i16 signext 8190, i16 signext 10920, i16 signext 24570, i16* %arraydecay) #3
  %arrayidx = getelementptr inbounds [3 x i16], [3 x i16]* %cm_comp_fracs, i32 0, i64 0
  %16 = load i16, i16* %arrayidx, align 2, !tbaa !21
  %conv = sext i16 %16 to i32
  %sub = sub nsw i32 %conv, 8190
  %conv9 = trunc i32 %sub to i16
  store i16 %conv9, i16* %arrayidx, align 2, !tbaa !21
  %arrayidx10 = getelementptr inbounds [3 x i16], [3 x i16]* %cm_comp_fracs, i32 0, i64 1
  %17 = load i16, i16* %arrayidx10, align 2, !tbaa !21
  %conv11 = sext i16 %17 to i32
  %sub12 = sub nsw i32 %conv11, 10920
  %conv13 = trunc i32 %sub12 to i16
  store i16 %conv13, i16* %arrayidx10, align 2, !tbaa !21
  %arrayidx14 = getelementptr inbounds [3 x i16], [3 x i16]* %cm_comp_fracs, i32 0, i64 2
  %18 = load i16, i16* %arrayidx14, align 2, !tbaa !21
  %conv15 = sext i16 %18 to i32
  %sub16 = sub nsw i32 %conv15, 24570
  %conv17 = trunc i32 %sub16 to i16
  store i16 %conv17, i16* %arrayidx14, align 2, !tbaa !21
  store i32 0, i32* %i, align 4, !tbaa !24
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %19 = load i32, i32* %i, align 4, !tbaa !24
  %cmp18 = icmp slt i32 %19, 3
  br i1 %cmp18, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %for.cond
  %20 = load i32, i32* %i, align 4, !tbaa !24
  %idxprom = sext i32 %20 to i64
  %arrayidx20 = getelementptr inbounds [3 x i16], [3 x i16]* %cm_comp_fracs, i32 0, i64 %idxprom
  %21 = load i16, i16* %arrayidx20, align 2, !tbaa !21
  %conv21 = sext i16 %21 to i32
  %cmp22 = icmp slt i32 -327, %conv21
  br i1 %cmp22, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %22 = load i32, i32* %i, align 4, !tbaa !24
  %idxprom24 = sext i32 %22 to i64
  %arrayidx25 = getelementptr inbounds [3 x i16], [3 x i16]* %cm_comp_fracs, i32 0, i64 %idxprom24
  %23 = load i16, i16* %arrayidx25, align 2, !tbaa !21
  %conv26 = sext i16 %23 to i32
  %cmp27 = icmp slt i32 %conv26, 327
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %for.cond
  %24 = phi i1 [ false, %land.lhs.true ], [ false, %for.cond ], [ %cmp27, %land.rhs ]
  br i1 %24, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %i, align 4, !tbaa !24
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4, !tbaa !24
  br label %for.cond

for.end:                                          ; preds = %land.end
  %26 = load i32, i32* %i, align 4, !tbaa !24
  %cmp29 = icmp eq i32 %26, 3
  %conv30 = zext i1 %cmp29 to i32
  store i32 %conv30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.6, %if.then
  %27 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = bitcast [3 x i16]* %cm_comp_fracs to i8*
  call void @llvm.lifetime.end(i64 6, i8* %28) #1
  %29 = bitcast %struct.gx_cm_color_map_procs_s** %cm_procs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = load i32, i32* %retval
  ret i32 %30
}

declare i32 @gx_default_decode_color(%struct.gx_device_s*, i64, i16*) #2

; Function Attrs: nounwind uwtable
define internal i32 @gx_default_1_add_decode_color(%struct.gx_device_s* %dev, i64 %color, i16* %cv) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %cv.addr = alloca i16*, align 8
  %rgb = alloca [3 x i16], align 2
  %code = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !25
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = bitcast [3 x i16]* %rgb to i8*
  call void @llvm.lifetime.start(i64 6, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 42
  %map_color_rgb = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 6
  %3 = load i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)** %map_color_rgb, align 8, !tbaa !39
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %5 = load i64, i64* %color.addr, align 8, !tbaa !25
  %arraydecay = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i32 0
  %call = call i32 %3(%struct.gx_device_s* %4, i64 %5, i16* %arraydecay) #3
  store i32 %call, i32* %code, align 4, !tbaa !24
  %arrayidx = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i64 0
  %6 = load i16, i16* %arrayidx, align 2, !tbaa !21
  %7 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %7, i64 0
  store i16 %6, i16* %arrayidx1, align 2, !tbaa !21
  %8 = load i32, i32* %code, align 4, !tbaa !24
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  %10 = bitcast [3 x i16]* %rgb to i8*
  call void @llvm.lifetime.end(i64 6, i8* %10) #1
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_default_1_sub_decode_color(%struct.gx_device_s* %dev, i64 %color, i16* %cv) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %cv.addr = alloca i16*, align 8
  %rgb = alloca [3 x i16], align 2
  %code = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !25
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = bitcast [3 x i16]* %rgb to i8*
  call void @llvm.lifetime.start(i64 6, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 42
  %map_color_rgb = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 6
  %3 = load i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)** %map_color_rgb, align 8, !tbaa !39
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %5 = load i64, i64* %color.addr, align 8, !tbaa !25
  %arraydecay = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i32 0
  %call = call i32 %3(%struct.gx_device_s* %4, i64 %5, i16* %arraydecay) #3
  store i32 %call, i32* %code, align 4, !tbaa !24
  %arrayidx = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i64 0
  %6 = load i16, i16* %arrayidx, align 2, !tbaa !21
  %conv = zext i16 %6 to i32
  %sub = sub nsw i32 65535, %conv
  %conv1 = trunc i32 %sub to i16
  %7 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %7, i64 0
  store i16 %conv1, i16* %arrayidx2, align 2, !tbaa !21
  %8 = load i32, i32* %code, align 4, !tbaa !24
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  %10 = bitcast [3 x i16]* %rgb to i8*
  call void @llvm.lifetime.end(i64 6, i8* %10) #1
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @is_like_DeviceCMYK(%struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cm_procs = alloca %struct.gx_cm_color_map_procs_s*, align 8
  %cm_comp_fracs = alloca [4 x i16], align 2
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_cm_color_map_procs_s** %cm_procs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast [4 x i16]* %cm_comp_fracs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %4 = load i32, i32* %num_components, align 4, !tbaa !23
  %cmp = icmp ne i32 %4, 4
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 11
  %polarity = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info1, i32 0, i32 2
  %6 = load i32, i32* %polarity, align 4, !tbaa !81
  %cmp2 = icmp ne i32 %6, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 42
  %get_color_mapping_procs = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 49
  %8 = load %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)** %get_color_mapping_procs, align 8, !tbaa !80
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call %struct.gx_cm_color_map_procs_s* %8(%struct.gx_device_s* %9) #3
  store %struct.gx_cm_color_map_procs_s* %call, %struct.gx_cm_color_map_procs_s** %cm_procs, align 8, !tbaa !1
  %10 = load %struct.gx_cm_color_map_procs_s*, %struct.gx_cm_color_map_procs_s** %cm_procs, align 8, !tbaa !1
  %cmp3 = icmp eq %struct.gx_cm_color_map_procs_s* %10, null
  br i1 %cmp3, label %if.then.6, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %if.end
  %11 = load %struct.gx_cm_color_map_procs_s*, %struct.gx_cm_color_map_procs_s** %cm_procs, align 8, !tbaa !1
  %map_cmyk = getelementptr inbounds %struct.gx_cm_color_map_procs_s, %struct.gx_cm_color_map_procs_s* %11, i32 0, i32 2
  %12 = load void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)** %map_cmyk, align 8, !tbaa !142
  %cmp5 = icmp eq void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* %12, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %lor.lhs.false.4, %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.7:                                         ; preds = %lor.lhs.false.4
  %13 = load %struct.gx_cm_color_map_procs_s*, %struct.gx_cm_color_map_procs_s** %cm_procs, align 8, !tbaa !1
  %map_cmyk8 = getelementptr inbounds %struct.gx_cm_color_map_procs_s, %struct.gx_cm_color_map_procs_s* %13, i32 0, i32 2
  %14 = load void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)** %map_cmyk8, align 8, !tbaa !142
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [4 x i16], [4 x i16]* %cm_comp_fracs, i32 0, i32 0
  call void %14(%struct.gx_device_s* %15, i16 signext 8190, i16 signext 10920, i16 signext 24570, i16 signext 4095, i16* %arraydecay) #3
  %arrayidx = getelementptr inbounds [4 x i16], [4 x i16]* %cm_comp_fracs, i32 0, i64 0
  %16 = load i16, i16* %arrayidx, align 2, !tbaa !21
  %conv = sext i16 %16 to i32
  %sub = sub nsw i32 %conv, 8190
  %conv9 = trunc i32 %sub to i16
  store i16 %conv9, i16* %arrayidx, align 2, !tbaa !21
  %arrayidx10 = getelementptr inbounds [4 x i16], [4 x i16]* %cm_comp_fracs, i32 0, i64 1
  %17 = load i16, i16* %arrayidx10, align 2, !tbaa !21
  %conv11 = sext i16 %17 to i32
  %sub12 = sub nsw i32 %conv11, 10920
  %conv13 = trunc i32 %sub12 to i16
  store i16 %conv13, i16* %arrayidx10, align 2, !tbaa !21
  %arrayidx14 = getelementptr inbounds [4 x i16], [4 x i16]* %cm_comp_fracs, i32 0, i64 2
  %18 = load i16, i16* %arrayidx14, align 2, !tbaa !21
  %conv15 = sext i16 %18 to i32
  %sub16 = sub nsw i32 %conv15, 24570
  %conv17 = trunc i32 %sub16 to i16
  store i16 %conv17, i16* %arrayidx14, align 2, !tbaa !21
  %arrayidx18 = getelementptr inbounds [4 x i16], [4 x i16]* %cm_comp_fracs, i32 0, i64 3
  %19 = load i16, i16* %arrayidx18, align 2, !tbaa !21
  %conv19 = sext i16 %19 to i32
  %sub20 = sub nsw i32 %conv19, 4095
  %conv21 = trunc i32 %sub20 to i16
  store i16 %conv21, i16* %arrayidx18, align 2, !tbaa !21
  store i32 0, i32* %i, align 4, !tbaa !24
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %20 = load i32, i32* %i, align 4, !tbaa !24
  %cmp22 = icmp slt i32 %20, 4
  br i1 %cmp22, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %for.cond
  %21 = load i32, i32* %i, align 4, !tbaa !24
  %idxprom = sext i32 %21 to i64
  %arrayidx24 = getelementptr inbounds [4 x i16], [4 x i16]* %cm_comp_fracs, i32 0, i64 %idxprom
  %22 = load i16, i16* %arrayidx24, align 2, !tbaa !21
  %conv25 = sext i16 %22 to i32
  %cmp26 = icmp slt i32 -327, %conv25
  br i1 %cmp26, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %23 = load i32, i32* %i, align 4, !tbaa !24
  %idxprom28 = sext i32 %23 to i64
  %arrayidx29 = getelementptr inbounds [4 x i16], [4 x i16]* %cm_comp_fracs, i32 0, i64 %idxprom28
  %24 = load i16, i16* %arrayidx29, align 2, !tbaa !21
  %conv30 = sext i16 %24 to i32
  %cmp31 = icmp slt i32 %conv30, 327
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %for.cond
  %25 = phi i1 [ false, %land.lhs.true ], [ false, %for.cond ], [ %cmp31, %land.rhs ]
  br i1 %25, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %i, align 4, !tbaa !24
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4, !tbaa !24
  br label %for.cond

for.end:                                          ; preds = %land.end
  %27 = load i32, i32* %i, align 4, !tbaa !24
  %cmp33 = icmp eq i32 %27, 4
  %conv34 = zext i1 %cmp33 to i32
  store i32 %conv34, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.6, %if.then
  %28 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast [4 x i16]* %cm_comp_fracs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = bitcast %struct.gx_cm_color_map_procs_s** %cm_procs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = load i32, i32* %retval
  ret i32 %31
}

declare i32 @cmyk_1bit_map_color_rgb(%struct.gx_device_s*, i64, i16*) #2

; Function Attrs: nounwind uwtable
define internal i32 @gx_1bit_cmyk_decode_color(%struct.gx_device_s* %dev, i64 %color, i16* %cv) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %cv.addr = alloca i16*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !25
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = load i64, i64* %color.addr, align 8, !tbaa !25
  %and = and i64 %0, 8
  %cmp = icmp ne i64 %and, 0
  %cond = select i1 %cmp, i32 65535, i32 0
  %conv = trunc i32 %cond to i16
  %1 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 0
  store i16 %conv, i16* %arrayidx, align 2, !tbaa !21
  %2 = load i64, i64* %color.addr, align 8, !tbaa !25
  %and1 = and i64 %2, 4
  %cmp2 = icmp ne i64 %and1, 0
  %cond4 = select i1 %cmp2, i32 65535, i32 0
  %conv5 = trunc i32 %cond4 to i16
  %3 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i16, i16* %3, i64 1
  store i16 %conv5, i16* %arrayidx6, align 2, !tbaa !21
  %4 = load i64, i64* %color.addr, align 8, !tbaa !25
  %and7 = and i64 %4, 2
  %cmp8 = icmp ne i64 %and7, 0
  %cond10 = select i1 %cmp8, i32 65535, i32 0
  %conv11 = trunc i32 %cond10 to i16
  %5 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i16, i16* %5, i64 2
  store i16 %conv11, i16* %arrayidx12, align 2, !tbaa !21
  %6 = load i64, i64* %color.addr, align 8, !tbaa !25
  %and13 = and i64 %6, 1
  %cmp14 = icmp ne i64 %and13, 0
  %cond16 = select i1 %cmp14, i32 65535, i32 0
  %conv17 = trunc i32 %cond16 to i16
  %7 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i16, i16* %7, i64 3
  store i16 %conv17, i16* %arrayidx18, align 2, !tbaa !21
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_default_cmyk_decode_color(%struct.gx_device_s* %dev, i64 %color, i16* %cv) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %cv.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %min_val = alloca i16, align 2
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !25
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i32 0, i32 11
  %separable_and_linear = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 10
  %1 = load i32, i32* %separable_and_linear, align 4, !tbaa !79
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %3 = load i64, i64* %color.addr, align 8, !tbaa !25
  %4 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %call = call i32 @gx_default_decode_color(%struct.gx_device_s* %2, i64 %3, i16* %4) #3
  store i32 %call, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 42
  %map_color_rgb = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 6
  %8 = load i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)** %map_color_rgb, align 8, !tbaa !39
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %10 = load i64, i64* %color.addr, align 8, !tbaa !25
  %11 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %call1 = call i32 %8(%struct.gx_device_s* %9, i64 %10, i16* %11) #3
  store i32 %call1, i32* %code, align 4, !tbaa !24
  %12 = bitcast i16* %min_val to i8*
  call void @llvm.lifetime.start(i64 2, i8* %12) #1
  store i16 -1, i16* %min_val, align 2, !tbaa !21
  store i32 0, i32* %i, align 4, !tbaa !24
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %13 = load i32, i32* %i, align 4, !tbaa !24
  %cmp2 = icmp slt i32 %13, 3
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4, !tbaa !24
  %idxprom = sext i32 %14 to i64
  %15 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %15, i64 %idxprom
  %16 = load i16, i16* %arrayidx, align 2, !tbaa !21
  %conv = zext i16 %16 to i32
  %sub = sub nsw i32 65535, %conv
  %conv3 = trunc i32 %sub to i16
  %17 = load i32, i32* %i, align 4, !tbaa !24
  %idxprom4 = sext i32 %17 to i64
  %18 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i16, i16* %18, i64 %idxprom4
  store i16 %conv3, i16* %arrayidx5, align 2, !tbaa !21
  %conv6 = zext i16 %conv3 to i32
  %19 = load i16, i16* %min_val, align 2, !tbaa !21
  %conv7 = zext i16 %19 to i32
  %cmp8 = icmp slt i32 %conv6, %conv7
  br i1 %cmp8, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %for.body
  %20 = load i32, i32* %i, align 4, !tbaa !24
  %idxprom11 = sext i32 %20 to i64
  %21 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i16, i16* %21, i64 %idxprom11
  %22 = load i16, i16* %arrayidx12, align 2, !tbaa !21
  store i16 %22, i16* %min_val, align 2, !tbaa !21
  br label %if.end

if.end:                                           ; preds = %if.then.10, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %23 = load i32, i32* %i, align 4, !tbaa !24
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4, !tbaa !24
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !24
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.23, %for.end
  %24 = load i32, i32* %i, align 4, !tbaa !24
  %cmp14 = icmp slt i32 %24, 3
  br i1 %cmp14, label %for.body.16, label %for.end.25

for.body.16:                                      ; preds = %for.cond.13
  %25 = load i16, i16* %min_val, align 2, !tbaa !21
  %conv17 = zext i16 %25 to i32
  %26 = load i32, i32* %i, align 4, !tbaa !24
  %idxprom18 = sext i32 %26 to i64
  %27 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i16, i16* %27, i64 %idxprom18
  %28 = load i16, i16* %arrayidx19, align 2, !tbaa !21
  %conv20 = zext i16 %28 to i32
  %sub21 = sub nsw i32 %conv20, %conv17
  %conv22 = trunc i32 %sub21 to i16
  store i16 %conv22, i16* %arrayidx19, align 2, !tbaa !21
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.body.16
  %29 = load i32, i32* %i, align 4, !tbaa !24
  %inc24 = add nsw i32 %29, 1
  store i32 %inc24, i32* %i, align 4, !tbaa !24
  br label %for.cond.13

for.end.25:                                       ; preds = %for.cond.13
  %30 = load i16, i16* %min_val, align 2, !tbaa !21
  %31 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds i16, i16* %31, i64 3
  store i16 %30, i16* %arrayidx26, align 2, !tbaa !21
  %32 = load i32, i32* %code, align 4, !tbaa !24
  store i32 %32, i32* %retval
  %33 = bitcast i16* %min_val to i8*
  call void @llvm.lifetime.end(i64 2, i8* %33) #1
  %34 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  br label %return

return:                                           ; preds = %for.end.25, %if.then
  %36 = load i32, i32* %retval
  ret i32 %36
}

declare i32 @gx_error_decode_color(%struct.gx_device_s*, i64, i16*) #2

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
!5 = !{!6, !3, i64 110}
!6 = !{!"gx_device_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144}
!7 = !{!"int", !3, i64 0}
!8 = !{!"rc_header_s", !9, i64 0, !2, i64 8, !2, i64 16}
!9 = !{!"long", !3, i64 0}
!10 = !{!"gx_device_color_info_s", !7, i64 0, !7, i64 4, !3, i64 8, !11, i64 12, !3, i64 14, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !12, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !9, i64 704, !7, i64 712}
!11 = !{!"short", !3, i64 0}
!12 = !{!"gx_device_anti_alias_info_s", !7, i64 0, !7, i64 4}
!13 = !{!"gx_device_cached_colors_s", !9, i64 0, !9, i64 8}
!14 = !{!"gx_stroked_gradient_recognizer_s", !7, i64 0, !3, i64 4, !3, i64 36}
!15 = !{!"gdev_space_params_s", !9, i64 0, !9, i64 8, !16, i64 16, !7, i64 32, !3, i64 36}
!16 = !{!"gx_band_params_s", !7, i64 0, !7, i64 4, !9, i64 8}
!17 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!18 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!19 = !{!3, !3, i64 0}
!20 = !{!6, !7, i64 112}
!21 = !{!11, !11, i64 0}
!22 = !{!6, !7, i64 116}
!23 = !{!6, !7, i64 100}
!24 = !{!7, !7, i64 0}
!25 = !{!9, !9, i64 0}
!26 = !{!10, !7, i64 4}
!27 = !{!10, !3, i64 40}
!28 = !{!6, !2, i64 1552}
!29 = !{!10, !3, i64 14}
!30 = !{!10, !7, i64 24}
!31 = !{!10, !7, i64 16}
!32 = !{!10, !7, i64 28}
!33 = !{!10, !7, i64 20}
!34 = !{!6, !2, i64 1144}
!35 = !{!6, !2, i64 1152}
!36 = !{!6, !2, i64 1160}
!37 = !{!6, !2, i64 1168}
!38 = !{!6, !2, i64 1176}
!39 = !{!6, !2, i64 1192}
!40 = !{!6, !2, i64 1208}
!41 = !{!6, !2, i64 1216}
!42 = !{!6, !2, i64 1224}
!43 = !{!6, !2, i64 1232}
!44 = !{!6, !2, i64 1240}
!45 = !{!6, !2, i64 1248}
!46 = !{!6, !2, i64 1256}
!47 = !{!6, !2, i64 1272}
!48 = !{!6, !2, i64 1280}
!49 = !{!6, !2, i64 1288}
!50 = !{!6, !2, i64 1296}
!51 = !{!6, !2, i64 1304}
!52 = !{!6, !2, i64 1312}
!53 = !{!6, !2, i64 1320}
!54 = !{!6, !2, i64 1328}
!55 = !{!6, !2, i64 1336}
!56 = !{!6, !2, i64 1344}
!57 = !{!6, !2, i64 1352}
!58 = !{!6, !2, i64 1360}
!59 = !{!6, !2, i64 1368}
!60 = !{!6, !2, i64 1376}
!61 = !{!6, !2, i64 1384}
!62 = !{!6, !2, i64 1392}
!63 = !{!6, !2, i64 1400}
!64 = !{!6, !2, i64 1408}
!65 = !{!6, !2, i64 1416}
!66 = !{!6, !2, i64 1424}
!67 = !{!6, !2, i64 1696}
!68 = !{!6, !2, i64 1704}
!69 = !{!6, !2, i64 1432}
!70 = !{!6, !2, i64 1440}
!71 = !{!6, !2, i64 1448}
!72 = !{!6, !2, i64 1456}
!73 = !{!6, !2, i64 1464}
!74 = !{!6, !2, i64 1472}
!75 = !{!6, !2, i64 1480}
!76 = !{!6, !2, i64 1488}
!77 = !{!6, !2, i64 1184}
!78 = !{!6, !2, i64 1264}
!79 = !{!6, !3, i64 136}
!80 = !{!6, !2, i64 1536}
!81 = !{!6, !3, i64 104}
!82 = !{!6, !2, i64 1544}
!83 = !{!6, !2, i64 1560}
!84 = !{!6, !2, i64 1680}
!85 = !{!6, !2, i64 1688}
!86 = !{!6, !3, i64 792}
!87 = !{!6, !2, i64 1576}
!88 = !{!6, !2, i64 1584}
!89 = !{!6, !2, i64 1592}
!90 = !{!6, !2, i64 1600}
!91 = !{!6, !2, i64 1608}
!92 = !{!6, !2, i64 1616}
!93 = !{!6, !2, i64 1624}
!94 = !{!6, !2, i64 1632}
!95 = !{!6, !2, i64 1712}
!96 = !{!6, !2, i64 1664}
!97 = !{!6, !2, i64 1720}
!98 = !{!99, !99, i64 0}
!99 = !{!"float", !3, i64 0}
!100 = !{!101, !101, i64 0}
!101 = !{!"double", !3, i64 0}
!102 = !{!6, !7, i64 852}
!103 = !{!104, !99, i64 0}
!104 = !{!"gs_matrix_s", !99, i64 0, !99, i64 4, !99, i64 8, !99, i64 12, !99, i64 16, !99, i64 20}
!105 = !{!104, !99, i64 4}
!106 = !{!104, !99, i64 8}
!107 = !{!104, !99, i64 12}
!108 = !{!6, !7, i64 832}
!109 = !{!104, !99, i64 16}
!110 = !{!6, !7, i64 836}
!111 = !{!104, !99, i64 20}
!112 = !{!6, !7, i64 128}
!113 = !{!6, !7, i64 132}
!114 = !{!115, !7, i64 0}
!115 = !{!"gs_fixed_rect_s", !116, i64 0, !116, i64 8}
!116 = !{!"gs_fixed_point_s", !7, i64 0, !7, i64 4}
!117 = !{!115, !7, i64 4}
!118 = !{!115, !7, i64 8}
!119 = !{!115, !7, i64 12}
!120 = !{!121, !2, i64 0}
!121 = !{!"gs_composite_s", !2, i64 0, !9, i64 8, !7, i64 16, !2, i64 24, !2, i64 32}
!122 = !{!123, !2, i64 8}
!123 = !{!"gs_composite_type_s", !3, i64 0, !124, i64 8}
!124 = !{!"gs_composite_type_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72}
!125 = !{!6, !2, i64 24}
!126 = !{!6, !11, i64 108}
!127 = !{!6, !3, i64 1112}
!128 = !{!129, !2, i64 0}
!129 = !{!"gx_process_page_options_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40}
!130 = !{!129, !2, i64 32}
!131 = !{!132, !7, i64 0}
!132 = !{!"gs_int_rect_s", !133, i64 0, !133, i64 8}
!133 = !{!"gs_int_point_s", !7, i64 0, !7, i64 4}
!134 = !{!132, !7, i64 4}
!135 = !{!132, !7, i64 8}
!136 = !{!132, !7, i64 12}
!137 = !{!129, !2, i64 16}
!138 = !{!129, !2, i64 24}
!139 = !{!129, !2, i64 8}
!140 = !{!141, !2, i64 8}
!141 = !{!"gx_cm_color_map_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!142 = !{!141, !2, i64 16}
