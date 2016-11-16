; ModuleID = './gdevx.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, {}*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_gc_root_s = type { %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i32 }
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gc_ptr_element_s = type { i16, i16 }
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
%struct.gx_image_type_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gs_imager_state_s*, %struct.gs_image_common_s*, %struct.gs_int_point_s*)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s**)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s*)*, void (%struct.gs_image_common_s*, %struct.gs_memory_s*)*, i32 }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.stream_s = type opaque
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
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
%struct.gx_image_enum_common_s = type { %struct.gx_image_type_s*, %struct.gx_image_enum_procs_s*, %struct.gx_device_s*, %struct.gs_memory_s*, i64, i32, i32, [65 x i32], [65 x i32] }
%struct.gx_image_enum_procs_s = type { i32 (%struct.gx_image_enum_common_s*, %struct.gx_image_plane_s*, i32, i32*)*, i32 (%struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_image_enum_common_s*)*, i32 (%struct.gx_image_enum_common_s*, i8*)* }
%struct.gx_image_plane_s = type { i8*, i32, i32 }
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
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
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_bbox_procs_s = type { i32 (i8*)*, void (i8*, %struct.gs_fixed_rect_s*)*, void (i8*, i32, i32, i32, i32)*, i32 (i8*, %struct.gs_fixed_rect_s*)* }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct._XImage = type { i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i8*, %struct.funcs }
%struct.funcs = type { {}*, i32 (%struct._XImage*)*, i64 (%struct._XImage*, i32, i32)*, i32 (%struct._XImage*, i32, i32, i64)*, %struct._XImage* (%struct._XImage*, i32, i32, i32, i32)*, i32 (%struct._XImage*, i64)* }
%struct.Visual = type { %struct._XExtData*, i64, i32, i64, i64, i64, i32, i32 }
%struct._XExtData = type { i32, %struct._XExtData*, i32 (%struct._XExtData*)*, i8* }
%struct._XDisplay = type opaque
%struct.Screen = type { %struct._XExtData*, %struct._XDisplay*, i64, i32, i32, i32, i32, i32, %struct.Depth*, i32, %struct.Visual*, %struct._XGC*, i64, i64, i64, i32, i32, i32, i32, i64 }
%struct.Depth = type { i32, i32, %struct.Visual* }
%struct.XVisualInfo = type { %struct.Visual*, i64, i32, i32, i32, i64, i64, i64, i32, i32 }
%struct._XGC = type opaque
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.anon = type { %struct.gs_int_rect_s, i64, i64, i32 }
%struct.anon.1 = type { i64, %struct._XGC*, i32, i32 }
%struct.anon.2 = type { i64, i64, i64, i32, i32, i32, i64, i64 }
%struct.x11_cman_s = type { i32, %struct.cmm_, %struct.cmm_, %struct.anon.3, %struct.cmc_, i64*, %struct.cmd_ }
%struct.cmm_ = type { i16, i16, i16 }
%struct.anon.3 = type { %struct.XStandardColormap*, i32, %struct.x11_cmap_values_s, %struct.x11_cmap_values_s, %struct.x11_cmap_values_s, i32 }
%struct.XStandardColormap = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.x11_cmap_values_s = type { i32, [64 x i16], i32 }
%struct.cmc_ = type { i32, %struct.x11_rgb_s* }
%struct.x11_rgb_s = type { [3 x i16], i32 }
%struct.cmd_ = type { i32, %struct.x11_color_s**, i32, i32, i32 }
%struct.x11_color_s = type { %struct.XColor, %struct.x11_color_s* }
%struct.XColor = type { i64, i16, i16, i16, i8, i8 }
%struct.anon.4 = type { i32, i32, %struct.gs_int_point_s, i32, [12 x %struct.XTextItem], [25 x i8] }
%struct.XTextItem = type { i8*, i32, i32, i64 }
%struct.gx_device_X_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, i32, i32, %struct.gx_device_bbox_procs_s, i8*, i32, %struct.gs_fixed_rect_s, i64, i64, i64, i32, i32, i8*, i64, %struct._XImage, %struct._XDisplay*, %struct.Screen*, %struct.XVisualInfo*, i64, i64, %struct._XGC*, i64, i64, i32, i64, %struct.gs_matrix_s, i64, i64, i64, %struct.anon, i64, i64, i64, %struct.anon.1, %struct.anon.2, i32, i32, i64, i64, i64, i64, i64, %struct.x11_cman_s, i64, i16, i8*, i32, i32, i8*, float, float, i8, i8, i8, i32, i32, i32, %struct.anon.4 }
%union._XEvent = type { [24 x i64] }
%struct.XClientMessageEvent = type { i32, i64, i32, %struct._XDisplay*, i64, i64, i32, %union.anon.5 }
%union.anon.5 = type { [5 x i64] }
%struct.XGCValues = type { i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i64, i32, i32, i32, i32, i64, i32, i8 }
%struct.gs_image2_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, %struct.gs_state_s*, float, float, float, float, %struct.gx_path_s*, i32 }
%struct.gx_device_memory_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, i32, i8*, %struct.gs_memory_s*, i32, %struct.gs_memory_s*, i32, [64 x %struct.gx_render_plane_s], %struct.gs_matrix_s, i8**, %struct.gs_const_string_s, %struct._c24, %struct._c40, %struct._c48, %struct._c56, %struct._c64, %struct.gs_log2_scale_point_s, i32, i32, i32, i32, i32, i64, %struct.gx_device_color_s*, i32, i32 }
%struct.gx_render_plane_s = type { i32, i32, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%struct._c24 = type { i64, i32, i32, i32 }
%struct._c40 = type { i64, i32, i32, i32, i32, i32 }
%struct._c48 = type { i64, i32, i32, i32 }
%struct._c56 = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct._c64 = type { i64, i32, i32 }
%struct.XRectangle = type { i16, i16, i16, i16 }

@.str = private unnamed_addr constant [12 x i8] c"gx_device_X\00", align 1
@device_x_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 1, i16 0, %struct.gs_memory_struct_type_s* @st_device_bbox, %struct.gc_ptr_element_s* getelementptr inbounds ([1 x %struct.gc_ptr_element_s], [1 x %struct.gc_ptr_element_s]* @device_x_enum_ptrs, i32 0, i32 0) }, align 8
@st_device_X = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 3216, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* @gx_device_finalize, i8* bitcast (%struct.gc_struct_data_s* @device_x_reloc_ptrs to i8*) }, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"x11\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"DeviceRGB\00", align 1
@gs_x11_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, i32, i32, %struct.gx_device_bbox_procs_s, i8*, i32, %struct.gs_fixed_rect_s, i64, i64, i64, i32, i32, i8*, i64, { i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i8*, { %struct._XImage* (%struct._XDisplay*, %struct.Visual*, i32, i32, i32, i8*, i32, i32, i32, i32)*, i32 (%struct._XImage*)*, i64 (%struct._XImage*, i32, i32)*, i32 (%struct._XImage*, i32, i32, i64)*, %struct._XImage* (%struct._XImage*, i32, i32, i32, i32)*, i32 (%struct._XImage*, i64)* } }, %struct._XDisplay*, %struct.Screen*, %struct.XVisualInfo*, i64, i64, %struct._XGC*, i64, i64, i32, i64, %struct.gs_matrix_s, i64, i64, i64, %struct.anon, i64, i64, i64, %struct.anon.1, %struct.anon.2, i32, i32, i64, i64, i64, i64, i64, %struct.x11_cman_s, i64, i16, i8*, i32, i32, i8*, float, float, i8, i8, i8, i32, i32, i32, %struct.anon.4 } { i32 3216, %struct.gx_device_procs_s* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_device_X to %struct.gs_memory_struct_type_s*), i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 24, i8 -1, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 9792, i32 12672, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 1.152000e+03, float 1.152000e+03], [2 x float] [float 1.152000e+03, float 1.152000e+03], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @x_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @x_get_initial_matrix, i32 (%struct.gx_device_s*)* @x_sync, i32 (%struct.gx_device_s*, i32, i32)* @x_output_page, i32 (%struct.gx_device_s*)* @x_close, i64 (%struct.gx_device_s*, i16*)* @gdev_x_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gdev_x_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @x_fill_rectangle, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* @x_copy_mono, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* @x_copy_color, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_x_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_x_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @x_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @x_strip_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @x_begin_typed_image, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* @x_get_bits_rectangle, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* @gdev_x_finish_copydevice, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, %struct.gx_device_s* null, i32 0, i32 1, %struct.gx_device_bbox_procs_s zeroinitializer, i8* null, i32 1, %struct.gs_fixed_rect_s zeroinitializer, i64 -1, i64 -1, i64 -1, i32 0, i32 1, i8* null, i64 0, { i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i8*, { %struct._XImage* (%struct._XDisplay*, %struct.Visual*, i32, i32, i32, i8*, i32, i32, i32, i32)*, i32 (%struct._XImage*)*, i64 (%struct._XImage*, i32, i32)*, i32 (%struct._XImage*, i32, i32, i64)*, %struct._XImage* (%struct._XImage*, i32, i32, i32, i32)*, i32 (%struct._XImage*, i64)* } } { i32 0, i32 0, i32 0, i32 0, i8* null, i32 1, i32 8, i32 1, i32 8, i32 1, i32 0, i32 1, i64 0, i64 0, i64 0, i8* null, { %struct._XImage* (%struct._XDisplay*, %struct.Visual*, i32, i32, i32, i8*, i32, i32, i32, i32)*, i32 (%struct._XImage*)*, i64 (%struct._XImage*, i32, i32)*, i32 (%struct._XImage*, i32, i32, i64)*, %struct._XImage* (%struct._XImage*, i32, i32, i32, i32)*, i32 (%struct._XImage*, i64)* } zeroinitializer }, %struct._XDisplay* null, %struct.Screen* null, %struct.XVisualInfo* null, i64 0, i64 0, %struct._XGC* null, i64 0, i64 0, i32 0, i64 0, %struct.gs_matrix_s { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, i64 0, i64 0, i64 0, %struct.anon { %struct.gs_int_rect_s { %struct.gs_int_point_s { i32 8388607, i32 8388607 }, %struct.gs_int_point_s { i32 -8388608, i32 -8388608 } }, i64 0, i64 0, i32 0 }, i64 0, i64 0, i64 -1, %struct.anon.1 { i64 0, %struct._XGC* null, i32 -1, i32 -1 }, %struct.anon.2 zeroinitializer, i32 3, i32 0, i64 0, i64 0, i64 0, i64 0, i64 0, %struct.x11_cman_s zeroinitializer, i64 0, i16 0, i8* null, i32 128, i32 5, i8* null, float 0.000000e+00, float 0.000000e+00, i8 1, i8 1, i8 1, i32 0, i32 20000, i32 5000, %struct.anon.4 zeroinitializer }, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"x11alpha\00", align 1
@gs_x11alpha_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, i32, i32, %struct.gx_device_bbox_procs_s, i8*, i32, %struct.gs_fixed_rect_s, i64, i64, i64, i32, i32, i8*, i64, { i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i8*, { %struct._XImage* (%struct._XDisplay*, %struct.Visual*, i32, i32, i32, i8*, i32, i32, i32, i32)*, i32 (%struct._XImage*)*, i64 (%struct._XImage*, i32, i32)*, i32 (%struct._XImage*, i32, i32, i64)*, %struct._XImage* (%struct._XImage*, i32, i32, i32, i32)*, i32 (%struct._XImage*, i64)* } }, %struct._XDisplay*, %struct.Screen*, %struct.XVisualInfo*, i64, i64, %struct._XGC*, i64, i64, i32, i64, %struct.gs_matrix_s, i64, i64, i64, %struct.anon, i64, i64, i64, %struct.anon.1, %struct.anon.2, i32, i32, i64, i64, i64, i64, i64, %struct.x11_cman_s, i64, i16, i8*, i32, i32, i8*, float, float, i8, i8, i8, i32, i32, i32, %struct.anon.4 } { i32 3216, %struct.gx_device_procs_s* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_device_X to %struct.gs_memory_struct_type_s*), i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 24, i8 -1, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 4, i32 4 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 9792, i32 12672, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 1.152000e+03, float 1.152000e+03], [2 x float] [float 1.152000e+03, float 1.152000e+03], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @x_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @x_get_initial_matrix, i32 (%struct.gx_device_s*)* @x_sync, i32 (%struct.gx_device_s*, i32, i32)* @x_output_page, i32 (%struct.gx_device_s*)* @x_close, i64 (%struct.gx_device_s*, i16*)* @gdev_x_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gdev_x_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @x_fill_rectangle, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* @x_copy_mono, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* @x_copy_color, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_x_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_x_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @x_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @x_strip_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @x_begin_typed_image, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* @x_get_bits_rectangle, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* @gdev_x_finish_copydevice, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, %struct.gx_device_s* null, i32 0, i32 1, %struct.gx_device_bbox_procs_s zeroinitializer, i8* null, i32 1, %struct.gs_fixed_rect_s zeroinitializer, i64 -1, i64 -1, i64 -1, i32 0, i32 1, i8* null, i64 0, { i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i8*, { %struct._XImage* (%struct._XDisplay*, %struct.Visual*, i32, i32, i32, i8*, i32, i32, i32, i32)*, i32 (%struct._XImage*)*, i64 (%struct._XImage*, i32, i32)*, i32 (%struct._XImage*, i32, i32, i64)*, %struct._XImage* (%struct._XImage*, i32, i32, i32, i32)*, i32 (%struct._XImage*, i64)* } } { i32 0, i32 0, i32 0, i32 0, i8* null, i32 1, i32 8, i32 1, i32 8, i32 1, i32 0, i32 1, i64 0, i64 0, i64 0, i8* null, { %struct._XImage* (%struct._XDisplay*, %struct.Visual*, i32, i32, i32, i8*, i32, i32, i32, i32)*, i32 (%struct._XImage*)*, i64 (%struct._XImage*, i32, i32)*, i32 (%struct._XImage*, i32, i32, i64)*, %struct._XImage* (%struct._XImage*, i32, i32, i32, i32)*, i32 (%struct._XImage*, i64)* } zeroinitializer }, %struct._XDisplay* null, %struct.Screen* null, %struct.XVisualInfo* null, i64 0, i64 0, %struct._XGC* null, i64 0, i64 0, i32 0, i64 0, %struct.gs_matrix_s { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, i64 0, i64 0, i64 0, %struct.anon { %struct.gs_int_rect_s { %struct.gs_int_point_s { i32 8388607, i32 8388607 }, %struct.gs_int_point_s { i32 -8388608, i32 -8388608 } }, i64 0, i64 0, i32 0 }, i64 0, i64 0, i64 -1, %struct.anon.1 { i64 0, %struct._XGC* null, i32 -1, i32 -1 }, %struct.anon.2 zeroinitializer, i32 3, i32 0, i64 0, i64 0, i64 0, i64 0, i64 0, %struct.x11_cman_s zeroinitializer, i64 0, i16 0, i8* null, i32 128, i32 5, i8* null, float 0.000000e+00, float 0.000000e+00, i8 1, i8 1, i8 1, i32 0, i32 20000, i32 5000, %struct.anon.4 zeroinitializer }, align 8
@gdev_x_box_procs = constant %struct.gx_device_bbox_procs_s { i32 (i8*)* @x_bbox_init_box, void (i8*, %struct.gs_fixed_rect_s*)* @x_bbox_get_box, void (i8*, i32, i32, i32, i32)* @x_bbox_add_rect, i32 (i8*, %struct.gs_fixed_rect_s*)* @x_bbox_in_rect }, align 8
@st_device_bbox = external constant %struct.gs_memory_struct_type_s, align 8
@device_x_enum_ptrs = internal constant [1 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s { i16 0, i16 1840 }], align 2
@.str.4 = private unnamed_addr constant [18 x i8] c"./devices/gdevx.c\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"x_copy_mono: can't allocate pixmap\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"x_copy_mono: can't allocate GC\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"alt_put_image: unimplemented function.\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"XInitImage failed in x_copy_image.\0A\00", align 1

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

declare void @gx_device_finalize(%struct.gs_memory_s*, i8*) #0

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @x_open(%struct.gx_device_s* %dev) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %xdev = alloca %struct.gx_device_X_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %0 = bitcast %struct.gx_device_X_s** %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_X_s*
  store %struct.gx_device_X_s* %2, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %color_info = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %4, i32 0, i32 11
  %anti_alias = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 9
  %text_bits = getelementptr inbounds %struct.gx_device_anti_alias_info_s, %struct.gx_device_anti_alias_info_s* %anti_alias, i32 0, i32 0
  %5 = load i32, i32* %text_bits, align 4, !tbaa !6
  %cmp = icmp sgt i32 %5, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %color_info1 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %6, i32 0, i32 11
  %anti_alias2 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info1, i32 0, i32 9
  %graphics_bits = getelementptr inbounds %struct.gx_device_anti_alias_info_s, %struct.gx_device_anti_alias_info_s* %anti_alias2, i32 0, i32 1
  %7 = load i32, i32* %graphics_bits, align 4, !tbaa !39
  %cmp3 = icmp sgt i32 %7, 1
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %8 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %space_params = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %8, i32 0, i32 38
  %MaxBitmap = getelementptr inbounds %struct.gdev_space_params_s, %struct.gdev_space_params_s* %space_params, i32 0, i32 0
  store i64 50000000, i64* %MaxBitmap, align 8, !tbaa !40
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %9 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %call = call i32 @gdev_x_open(%struct.gx_device_X_s* %9) #5
  store i32 %call, i32* %code, align 4, !tbaa !41
  %10 = load i32, i32* %code, align 4, !tbaa !41
  %cmp4 = icmp slt i32 %10, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %11 = load i32, i32* %code, align 4, !tbaa !41
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %12 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  call void @update_init(%struct.gx_device_X_s* %12) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.6, %if.then.5
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #2
  %14 = bitcast %struct.gx_device_X_s** %xdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #2
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal void @x_get_initial_matrix(%struct.gx_device_s* %dev, %struct.gs_matrix_s* %pmat) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %xdev = alloca %struct.gx_device_X_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !2
  %0 = bitcast %struct.gx_device_X_s** %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_X_s*
  store %struct.gx_device_X_s* %2, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %3 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %ghostview = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %3, i32 0, i32 66
  %4 = load i32, i32* %ghostview, align 4, !tbaa !42
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %6 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !2
  call void @gx_default_get_initial_matrix(%struct.gx_device_s* %5, %struct.gs_matrix_s* %6) #5
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %initial_matrix = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %7, i32 0, i32 68
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %initial_matrix, i32 0, i32 0
  %8 = load float, float* %xx, align 4, !tbaa !43
  %9 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !2
  %xx1 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %9, i32 0, i32 0
  store float %8, float* %xx1, align 4, !tbaa !44
  %10 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %initial_matrix2 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %10, i32 0, i32 68
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %initial_matrix2, i32 0, i32 1
  %11 = load float, float* %xy, align 4, !tbaa !45
  %12 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !2
  %xy3 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %12, i32 0, i32 1
  store float %11, float* %xy3, align 4, !tbaa !46
  %13 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %initial_matrix4 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %13, i32 0, i32 68
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %initial_matrix4, i32 0, i32 2
  %14 = load float, float* %yx, align 4, !tbaa !47
  %15 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !2
  %yx5 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %15, i32 0, i32 2
  store float %14, float* %yx5, align 4, !tbaa !48
  %16 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %initial_matrix6 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %16, i32 0, i32 68
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %initial_matrix6, i32 0, i32 3
  %17 = load float, float* %yy, align 4, !tbaa !49
  %18 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !2
  %yy7 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %18, i32 0, i32 3
  store float %17, float* %yy7, align 4, !tbaa !50
  %19 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %initial_matrix8 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %19, i32 0, i32 68
  %tx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %initial_matrix8, i32 0, i32 4
  %20 = load float, float* %tx, align 4, !tbaa !51
  %21 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !2
  %tx9 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %21, i32 0, i32 4
  store float %20, float* %tx9, align 4, !tbaa !52
  %22 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %initial_matrix10 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %22, i32 0, i32 68
  %ty = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %initial_matrix10, i32 0, i32 5
  %23 = load float, float* %ty, align 4, !tbaa !53
  %24 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !2
  %ty11 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %24, i32 0, i32 5
  store float %23, float* %ty11, align 4, !tbaa !54
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %25 = bitcast %struct.gx_device_X_s** %xdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @x_sync(%struct.gx_device_s* %dev) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %xdev = alloca %struct.gx_device_X_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %0 = bitcast %struct.gx_device_X_s** %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_X_s*
  store %struct.gx_device_X_s* %2, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %3 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  call void @update_do_flush(%struct.gx_device_X_s* %3) #5
  %4 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dpy = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %4, i32 0, i32 58
  %5 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8, !tbaa !55
  %call = call i32 @XSync(%struct._XDisplay* %5, i32 0) #5
  %6 = bitcast %struct.gx_device_X_s** %xdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @x_output_page(%struct.gx_device_s* %dev, i32 %num_copies, i32 %flush) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %num_copies.addr = alloca i32, align 4
  %flush.addr = alloca i32, align 4
  %xdev = alloca %struct.gx_device_X_s*, align 8
  %event = alloca %union._XEvent, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  store i32 %num_copies, i32* %num_copies.addr, align 4, !tbaa !41
  store i32 %flush, i32* %flush.addr, align 4, !tbaa !41
  %0 = bitcast %struct.gx_device_X_s** %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_X_s*
  store %struct.gx_device_X_s* %2, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %call = call i32 @x_sync(%struct.gx_device_s* %3) #5
  %4 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %ghostview = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %4, i32 0, i32 66
  %5 = load i32, i32* %ghostview, align 4, !tbaa !42
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = bitcast %union._XEvent* %event to i8*
  call void @llvm.lifetime.start(i64 192, i8* %6) #2
  %7 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %8 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %PAGE = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %8, i32 0, i32 70
  %9 = load i64, i64* %PAGE, align 8, !tbaa !56
  call void @gdev_x_send_event(%struct.gx_device_X_s* %7, i64 %9) #5
  %10 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dpy = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %10, i32 0, i32 58
  %11 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8, !tbaa !55
  %call1 = call i32 @XNextEvent(%struct._XDisplay* %11, %union._XEvent* %event) #5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %type = bitcast %union._XEvent* %event to i32*
  %12 = load i32, i32* %type, align 4, !tbaa !41
  %cmp = icmp ne i32 %12, 33
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %xclient = bitcast %union._XEvent* %event to %struct.XClientMessageEvent*
  %message_type = getelementptr inbounds %struct.XClientMessageEvent, %struct.XClientMessageEvent* %xclient, i32 0, i32 5
  %13 = load i64, i64* %message_type, align 8, !tbaa !57
  %14 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %NEXT = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %14, i32 0, i32 69
  %15 = load i64, i64* %NEXT, align 8, !tbaa !59
  %cmp2 = icmp ne i64 %13, %15
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %16 = phi i1 [ true, %while.cond ], [ %cmp2, %lor.rhs ]
  br i1 %16, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %17 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dpy3 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %17, i32 0, i32 58
  %18 = load %struct._XDisplay*, %struct._XDisplay** %dpy3, align 8, !tbaa !55
  %call4 = call i32 @XNextEvent(%struct._XDisplay* %18, %union._XEvent* %event) #5
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %19 = bitcast %union._XEvent* %event to i8*
  call void @llvm.lifetime.end(i64 192, i8* %19) #2
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %21 = load i32, i32* %num_copies.addr, align 4, !tbaa !41
  %22 = load i32, i32* %flush.addr, align 4, !tbaa !41
  %call5 = call i32 @gx_finish_output_page(%struct.gx_device_s* %20, i32 %21, i32 %22) #5
  %23 = bitcast %struct.gx_device_X_s** %xdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #2
  ret i32 %call5
}

; Function Attrs: nounwind uwtable
define internal i32 @x_close(%struct.gx_device_s* %dev) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %xdev = alloca %struct.gx_device_X_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %0 = bitcast %struct.gx_device_X_s** %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_X_s*
  store %struct.gx_device_X_s* %2, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %3 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %call = call i32 @gdev_x_close(%struct.gx_device_X_s* %3) #5
  %4 = bitcast %struct.gx_device_X_s** %xdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4) #2
  ret i32 %call
}

declare i64 @gdev_x_map_rgb_color(%struct.gx_device_s*, i16*) #0

declare i32 @gdev_x_map_color_rgb(%struct.gx_device_s*, i64, i16*) #0

; Function Attrs: nounwind uwtable
define internal i32 @x_fill_rectangle(%struct.gx_device_s* %dev, i32 %x, i32 %y, i32 %w, i32 %h, i64 %gscolor) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %gscolor.addr = alloca i64, align 8
  %xdev = alloca %struct.gx_device_X_s*, align 8
  %color = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  store i32 %x, i32* %x.addr, align 4, !tbaa !41
  store i32 %y, i32* %y.addr, align 4, !tbaa !41
  store i32 %w, i32* %w.addr, align 4, !tbaa !41
  store i32 %h, i32* %h.addr, align 4, !tbaa !41
  store i64 %gscolor, i64* %gscolor.addr, align 8, !tbaa !60
  %0 = bitcast %struct.gx_device_X_s** %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_X_s*
  store %struct.gx_device_X_s* %2, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %3 = bitcast i64* %color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load i64, i64* %gscolor.addr, align 8, !tbaa !60
  store i64 %4, i64* %color, align 8, !tbaa !60
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  br label %do.body.2

do.body.2:                                        ; preds = %do.body.1
  %5 = load i32, i32* %x.addr, align 4, !tbaa !41
  %6 = load i32, i32* %y.addr, align 4, !tbaa !41
  %or = or i32 %5, %6
  %cmp = icmp slt i32 %or, 0
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %do.body.2
  %7 = load i32, i32* %x.addr, align 4, !tbaa !41
  %cmp3 = icmp slt i32 %7, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %8 = load i32, i32* %x.addr, align 4, !tbaa !41
  %9 = load i32, i32* %w.addr, align 4, !tbaa !41
  %add = add nsw i32 %9, %8
  store i32 %add, i32* %w.addr, align 4, !tbaa !41
  store i32 0, i32* %x.addr, align 4, !tbaa !41
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %10 = load i32, i32* %y.addr, align 4, !tbaa !41
  %cmp5 = icmp slt i32 %10, 0
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %11 = load i32, i32* %y.addr, align 4, !tbaa !41
  %12 = load i32, i32* %h.addr, align 4, !tbaa !41
  %add7 = add nsw i32 %12, %11
  store i32 %add7, i32* %h.addr, align 4, !tbaa !41
  store i32 0, i32* %y.addr, align 4, !tbaa !41
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %do.body.2
  br label %do.cond

do.cond:                                          ; preds = %if.end.9
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.10

do.body.10:                                       ; preds = %do.end
  %13 = load i32, i32* %w.addr, align 4, !tbaa !41
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %14, i32 0, i32 13
  %15 = load i32, i32* %width, align 4, !tbaa !61
  %16 = load i32, i32* %x.addr, align 4, !tbaa !41
  %sub = sub nsw i32 %15, %16
  %cmp11 = icmp sgt i32 %13, %sub
  br i1 %cmp11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %do.body.10
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %width13 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 13
  %18 = load i32, i32* %width13, align 4, !tbaa !61
  %19 = load i32, i32* %x.addr, align 4, !tbaa !41
  %sub14 = sub nsw i32 %18, %19
  store i32 %sub14, i32* %w.addr, align 4, !tbaa !41
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %do.body.10
  br label %do.cond.16

do.cond.16:                                       ; preds = %if.end.15
  br label %do.end.17

do.end.17:                                        ; preds = %do.cond.16
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.17
  %20 = load i32, i32* %h.addr, align 4, !tbaa !41
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %21, i32 0, i32 14
  %22 = load i32, i32* %height, align 4, !tbaa !63
  %23 = load i32, i32* %y.addr, align 4, !tbaa !41
  %sub19 = sub nsw i32 %22, %23
  %cmp20 = icmp sgt i32 %20, %sub19
  br i1 %cmp20, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %do.body.18
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %height22 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %24, i32 0, i32 14
  %25 = load i32, i32* %height22, align 4, !tbaa !63
  %26 = load i32, i32* %y.addr, align 4, !tbaa !41
  %sub23 = sub nsw i32 %25, %26
  store i32 %sub23, i32* %h.addr, align 4, !tbaa !41
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.21, %do.body.18
  br label %do.cond.25

do.cond.25:                                       ; preds = %if.end.24
  br label %do.end.26

do.end.26:                                        ; preds = %do.cond.25
  br label %do.cond.27

do.cond.27:                                       ; preds = %do.end.26
  br label %do.end.28

do.end.28:                                        ; preds = %do.cond.27
  %27 = load i32, i32* %w.addr, align 4, !tbaa !41
  %cmp29 = icmp sle i32 %27, 0
  br i1 %cmp29, label %if.then.31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.28
  %28 = load i32, i32* %h.addr, align 4, !tbaa !41
  %cmp30 = icmp sle i32 %28, 0
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %lor.lhs.false, %do.end.28
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.32:                                        ; preds = %lor.lhs.false
  br label %do.cond.33

do.cond.33:                                       ; preds = %if.end.32
  br label %do.end.34

do.end.34:                                        ; preds = %do.cond.33
  %29 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %text = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %29, i32 0, i32 100
  %item_count = getelementptr inbounds %struct.anon.4, %struct.anon.4* %text, i32 0, i32 0
  %30 = load i32, i32* %item_count, align 4, !tbaa !64
  %cmp35 = icmp ne i32 %30, 0
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %do.end.34
  %31 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  call void @do_flush_text(%struct.gx_device_X_s* %31) #5
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %do.end.34
  br label %do.body.38

do.body.38:                                       ; preds = %if.end.37
  %32 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %fill_style = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %32, i32 0, i32 79
  %33 = load i32, i32* %fill_style, align 4, !tbaa !65
  %cmp39 = icmp ne i32 %33, 0
  br i1 %cmp39, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %do.body.38
  %34 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dpy = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %34, i32 0, i32 58
  %35 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8, !tbaa !55
  %36 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %gc = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %36, i32 0, i32 63
  %37 = load %struct._XGC*, %struct._XGC** %gc, align 8, !tbaa !66
  %38 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %fill_style41 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %38, i32 0, i32 79
  store i32 0, i32* %fill_style41, align 4, !tbaa !65
  %call = call i32 @XSetFillStyle(%struct._XDisplay* %35, %struct._XGC* %37, i32 0) #5
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %do.body.38
  br label %do.cond.43

do.cond.43:                                       ; preds = %if.end.42
  br label %do.end.44

do.end.44:                                        ; preds = %do.cond.43
  br label %do.body.45

do.body.45:                                       ; preds = %do.end.44
  %39 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %fore_color = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %39, i32 0, i32 82
  %40 = load i64, i64* %fore_color, align 8, !tbaa !67
  %41 = load i64, i64* %color, align 8, !tbaa !60
  %cmp46 = icmp ne i64 %40, %41
  br i1 %cmp46, label %if.then.47, label %if.end.53

if.then.47:                                       ; preds = %do.body.45
  %42 = load i64, i64* %color, align 8, !tbaa !60
  %43 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %fore_color48 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %43, i32 0, i32 82
  store i64 %42, i64* %fore_color48, align 8, !tbaa !67
  %44 = load i64, i64* %color, align 8, !tbaa !60
  %45 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %colors_or = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %45, i32 0, i32 74
  %46 = load i64, i64* %colors_or, align 8, !tbaa !68
  %or49 = or i64 %46, %44
  store i64 %or49, i64* %colors_or, align 8, !tbaa !68
  %47 = load i64, i64* %color, align 8, !tbaa !60
  %48 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %colors_and = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %48, i32 0, i32 75
  %49 = load i64, i64* %colors_and, align 8, !tbaa !69
  %and = and i64 %49, %47
  store i64 %and, i64* %colors_and, align 8, !tbaa !69
  %50 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dpy50 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %50, i32 0, i32 58
  %51 = load %struct._XDisplay*, %struct._XDisplay** %dpy50, align 8, !tbaa !55
  %52 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %gc51 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %52, i32 0, i32 63
  %53 = load %struct._XGC*, %struct._XGC** %gc51, align 8, !tbaa !66
  %54 = load i64, i64* %color, align 8, !tbaa !60
  %call52 = call i32 @XSetForeground(%struct._XDisplay* %51, %struct._XGC* %53, i64 %54) #5
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.47, %do.body.45
  br label %do.cond.54

do.cond.54:                                       ; preds = %if.end.53
  br label %do.end.55

do.end.55:                                        ; preds = %do.cond.54
  br label %do.body.56

do.body.56:                                       ; preds = %do.end.55
  %55 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %function = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %55, i32 0, i32 78
  %56 = load i32, i32* %function, align 4, !tbaa !70
  %cmp57 = icmp ne i32 %56, 3
  br i1 %cmp57, label %if.then.58, label %if.end.63

if.then.58:                                       ; preds = %do.body.56
  %57 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dpy59 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %57, i32 0, i32 58
  %58 = load %struct._XDisplay*, %struct._XDisplay** %dpy59, align 8, !tbaa !55
  %59 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %gc60 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %59, i32 0, i32 63
  %60 = load %struct._XGC*, %struct._XGC** %gc60, align 8, !tbaa !66
  %61 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %function61 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %61, i32 0, i32 78
  store i32 3, i32* %function61, align 4, !tbaa !70
  %call62 = call i32 @XSetFunction(%struct._XDisplay* %58, %struct._XGC* %60, i32 3) #5
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.58, %do.body.56
  br label %do.cond.64

do.cond.64:                                       ; preds = %if.end.63
  br label %do.end.65

do.end.65:                                        ; preds = %do.cond.64
  %62 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dpy66 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %62, i32 0, i32 58
  %63 = load %struct._XDisplay*, %struct._XDisplay** %dpy66, align 8, !tbaa !55
  %64 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dest = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %64, i32 0, i32 73
  %65 = load i64, i64* %dest, align 8, !tbaa !71
  %66 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %gc67 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %66, i32 0, i32 63
  %67 = load %struct._XGC*, %struct._XGC** %gc67, align 8, !tbaa !66
  %68 = load i32, i32* %x.addr, align 4, !tbaa !41
  %69 = load i32, i32* %y.addr, align 4, !tbaa !41
  %70 = load i32, i32* %w.addr, align 4, !tbaa !41
  %71 = load i32, i32* %h.addr, align 4, !tbaa !41
  %call68 = call i32 @XFillRectangle(%struct._XDisplay* %63, i64 %65, %struct._XGC* %67, i32 %68, i32 %69, i32 %70, i32 %71) #5
  %72 = load i32, i32* %x.addr, align 4, !tbaa !41
  %cmp69 = icmp eq i32 %72, 0
  br i1 %cmp69, label %land.lhs.true, label %if.end.85

land.lhs.true:                                    ; preds = %do.end.65
  %73 = load i32, i32* %y.addr, align 4, !tbaa !41
  %cmp70 = icmp eq i32 %73, 0
  br i1 %cmp70, label %land.lhs.true.71, label %if.end.85

land.lhs.true.71:                                 ; preds = %land.lhs.true
  %74 = load i32, i32* %w.addr, align 4, !tbaa !41
  %75 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %width72 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %75, i32 0, i32 13
  %76 = load i32, i32* %width72, align 4, !tbaa !72
  %cmp73 = icmp eq i32 %74, %76
  br i1 %cmp73, label %land.lhs.true.74, label %if.end.85

land.lhs.true.74:                                 ; preds = %land.lhs.true.71
  %77 = load i32, i32* %h.addr, align 4, !tbaa !41
  %78 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %height75 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %78, i32 0, i32 14
  %79 = load i32, i32* %height75, align 4, !tbaa !73
  %cmp76 = icmp eq i32 %77, %79
  br i1 %cmp76, label %if.then.77, label %if.end.85

if.then.77:                                       ; preds = %land.lhs.true.74
  %80 = load i64, i64* %color, align 8, !tbaa !60
  %81 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %foreground = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %81, i32 0, i32 84
  %82 = load i64, i64* %foreground, align 8, !tbaa !74
  %cmp78 = icmp eq i64 %80, %82
  br i1 %cmp78, label %if.then.81, label %lor.lhs.false.79

lor.lhs.false.79:                                 ; preds = %if.then.77
  %83 = load i64, i64* %color, align 8, !tbaa !60
  %84 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %background = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %84, i32 0, i32 83
  %85 = load i64, i64* %background, align 8, !tbaa !75
  %cmp80 = icmp eq i64 %83, %85
  br i1 %cmp80, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %lor.lhs.false.79, %if.then.77
  %86 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  call void @gdev_x_free_dynamic_colors(%struct.gx_device_X_s* %86) #5
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.81, %lor.lhs.false.79
  %87 = load i64, i64* %color, align 8, !tbaa !60
  %88 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %colors_and83 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %88, i32 0, i32 75
  store i64 %87, i64* %colors_and83, align 8, !tbaa !69
  %89 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %colors_or84 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %89, i32 0, i32 74
  store i64 %87, i64* %colors_or84, align 8, !tbaa !68
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.82, %land.lhs.true.74, %land.lhs.true.71, %land.lhs.true, %do.end.65
  %90 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %bpixmap = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %90, i32 0, i32 65
  %91 = load i64, i64* %bpixmap, align 8, !tbaa !76
  %cmp86 = icmp ne i64 %91, 0
  br i1 %cmp86, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %if.end.85
  %92 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %93 = load i32, i32* %x.addr, align 4, !tbaa !41
  %94 = load i32, i32* %y.addr, align 4, !tbaa !41
  %95 = load i32, i32* %w.addr, align 4, !tbaa !41
  %96 = load i32, i32* %h.addr, align 4, !tbaa !41
  call void @x_update_add(%struct.gx_device_X_s* %92, i32 %93, i32 %94, i32 %95, i32 %96) #5
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.87, %if.end.85
  br label %do.body.89

do.body.89:                                       ; preds = %if.end.88
  br label %do.cond.90

do.cond.90:                                       ; preds = %do.body.89
  br label %do.end.91

do.end.91:                                        ; preds = %do.cond.90
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.91, %if.then.31
  %97 = bitcast i64* %color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #2
  %98 = bitcast %struct.gx_device_X_s** %xdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #2
  %99 = load i32, i32* %retval
  ret i32 %99
}

; Function Attrs: nounwind uwtable
define internal i32 @x_copy_mono(%struct.gx_device_s* %dev, i8* %base, i32 %sourcex, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, i64 %zero, i64 %one) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %base.addr = alloca i8*, align 8
  %sourcex.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %zero.addr = alloca i64, align 8
  %one.addr = alloca i64, align 8
  %xdev = alloca %struct.gx_device_X_s*, align 8
  %function = alloca i32, align 4
  %lzero = alloca i64, align 8
  %lone = alloca i64, align 8
  %bc = alloca i64, align 8
  %fc = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %code_ = alloca i32, align 4
  %code_267 = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  store i8* %base, i8** %base.addr, align 8, !tbaa !2
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !41
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !41
  store i64 %id, i64* %id.addr, align 8, !tbaa !60
  store i32 %x, i32* %x.addr, align 4, !tbaa !41
  store i32 %y, i32* %y.addr, align 4, !tbaa !41
  store i32 %w, i32* %w.addr, align 4, !tbaa !41
  store i32 %h, i32* %h.addr, align 4, !tbaa !41
  store i64 %zero, i64* %zero.addr, align 8, !tbaa !60
  store i64 %one, i64* %one.addr, align 8, !tbaa !60
  %0 = bitcast %struct.gx_device_X_s** %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_X_s*
  store %struct.gx_device_X_s* %2, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %3 = bitcast i32* %function to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 3, i32* %function, align 4, !tbaa !41
  %4 = bitcast i64* %lzero to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load i64, i64* %zero.addr, align 8, !tbaa !60
  store i64 %5, i64* %lzero, align 8, !tbaa !60
  %6 = bitcast i64* %lone to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load i64, i64* %one.addr, align 8, !tbaa !60
  store i64 %7, i64* %lone, align 8, !tbaa !60
  %8 = bitcast i64* %bc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = load i64, i64* %lzero, align 8, !tbaa !60
  store i64 %9, i64* %bc, align 8, !tbaa !60
  %10 = bitcast i64* %fc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = load i64, i64* %lone, align 8, !tbaa !60
  store i64 %11, i64* %fc, align 8, !tbaa !60
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %12 = load i32, i32* %x.addr, align 4, !tbaa !41
  %13 = load i32, i32* %y.addr, align 4, !tbaa !41
  %or = or i32 %12, %13
  %cmp = icmp slt i32 %or, 0
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %do.body.1
  %14 = load i32, i32* %x.addr, align 4, !tbaa !41
  %cmp2 = icmp slt i32 %14, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %15 = load i32, i32* %x.addr, align 4, !tbaa !41
  %16 = load i32, i32* %w.addr, align 4, !tbaa !41
  %add = add nsw i32 %16, %15
  store i32 %add, i32* %w.addr, align 4, !tbaa !41
  %17 = load i32, i32* %x.addr, align 4, !tbaa !41
  %18 = load i32, i32* %sourcex.addr, align 4, !tbaa !41
  %sub = sub nsw i32 %18, %17
  store i32 %sub, i32* %sourcex.addr, align 4, !tbaa !41
  store i32 0, i32* %x.addr, align 4, !tbaa !41
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %19 = load i32, i32* %y.addr, align 4, !tbaa !41
  %cmp4 = icmp slt i32 %19, 0
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %20 = load i32, i32* %y.addr, align 4, !tbaa !41
  %21 = load i32, i32* %h.addr, align 4, !tbaa !41
  %add6 = add nsw i32 %21, %20
  store i32 %add6, i32* %h.addr, align 4, !tbaa !41
  %22 = load i32, i32* %y.addr, align 4, !tbaa !41
  %23 = load i32, i32* %raster.addr, align 4, !tbaa !41
  %mul = mul nsw i32 %22, %23
  %24 = load i8*, i8** %base.addr, align 8, !tbaa !2
  %idx.ext = sext i32 %mul to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %24, i64 %idx.neg
  store i8* %add.ptr, i8** %base.addr, align 8, !tbaa !2
  store i64 0, i64* %id.addr, align 8, !tbaa !60
  store i32 0, i32* %y.addr, align 4, !tbaa !41
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %do.body.1
  %25 = load i32, i32* %w.addr, align 4, !tbaa !41
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %26, i32 0, i32 13
  %27 = load i32, i32* %width, align 4, !tbaa !61
  %28 = load i32, i32* %x.addr, align 4, !tbaa !41
  %sub9 = sub nsw i32 %27, %28
  %cmp10 = icmp sgt i32 %25, %sub9
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.8
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %width12 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %29, i32 0, i32 13
  %30 = load i32, i32* %width12, align 4, !tbaa !61
  %31 = load i32, i32* %x.addr, align 4, !tbaa !41
  %sub13 = sub nsw i32 %30, %31
  store i32 %sub13, i32* %w.addr, align 4, !tbaa !41
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.end.8
  br label %do.cond

do.cond:                                          ; preds = %if.end.14
  br label %do.end

do.end:                                           ; preds = %do.cond
  %32 = load i32, i32* %h.addr, align 4, !tbaa !41
  %33 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %33, i32 0, i32 14
  %34 = load i32, i32* %height, align 4, !tbaa !63
  %35 = load i32, i32* %y.addr, align 4, !tbaa !41
  %sub15 = sub nsw i32 %34, %35
  %cmp16 = icmp sgt i32 %32, %sub15
  br i1 %cmp16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %do.end
  %36 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %height18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %36, i32 0, i32 14
  %37 = load i32, i32* %height18, align 4, !tbaa !63
  %38 = load i32, i32* %y.addr, align 4, !tbaa !41
  %sub19 = sub nsw i32 %37, %38
  store i32 %sub19, i32* %h.addr, align 4, !tbaa !41
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %do.end
  %39 = load i32, i32* %w.addr, align 4, !tbaa !41
  %cmp21 = icmp sle i32 %39, 0
  br i1 %cmp21, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.20
  %40 = load i32, i32* %h.addr, align 4, !tbaa !41
  %cmp22 = icmp sle i32 %40, 0
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %lor.lhs.false, %if.end.20
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.309

if.end.24:                                        ; preds = %lor.lhs.false
  br label %do.cond.25

do.cond.25:                                       ; preds = %if.end.24
  br label %do.end.26

do.end.26:                                        ; preds = %do.cond.25
  %41 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %text = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %41, i32 0, i32 100
  %item_count = getelementptr inbounds %struct.anon.4, %struct.anon.4* %text, i32 0, i32 0
  %42 = load i32, i32* %item_count, align 4, !tbaa !64
  %cmp27 = icmp ne i32 %42, 0
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %do.end.26
  %43 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  call void @do_flush_text(%struct.gx_device_X_s* %43) #5
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %do.end.26
  %44 = load i32, i32* %sourcex.addr, align 4, !tbaa !41
  %45 = load i32, i32* %w.addr, align 4, !tbaa !41
  %add30 = add nsw i32 %44, %45
  %46 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %image = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %46, i32 0, i32 57
  %width31 = getelementptr inbounds %struct._XImage, %struct._XImage* %image, i32 0, i32 0
  store i32 %add30, i32* %width31, align 4, !tbaa !77
  %47 = load i32, i32* %h.addr, align 4, !tbaa !41
  %48 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %image32 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %48, i32 0, i32 57
  %height33 = getelementptr inbounds %struct._XImage, %struct._XImage* %image32, i32 0, i32 1
  store i32 %47, i32* %height33, align 4, !tbaa !78
  %49 = load i8*, i8** %base.addr, align 8, !tbaa !2
  %50 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %image34 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %50, i32 0, i32 57
  %data = getelementptr inbounds %struct._XImage, %struct._XImage* %image34, i32 0, i32 4
  store i8* %49, i8** %data, align 8, !tbaa !79
  %51 = load i32, i32* %raster.addr, align 4, !tbaa !41
  %52 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %image35 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %52, i32 0, i32 57
  %bytes_per_line = getelementptr inbounds %struct._XImage, %struct._XImage* %image35, i32 0, i32 10
  store i32 %51, i32* %bytes_per_line, align 4, !tbaa !80
  br label %do.body.36

do.body.36:                                       ; preds = %if.end.29
  %53 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %fill_style = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %53, i32 0, i32 79
  %54 = load i32, i32* %fill_style, align 4, !tbaa !65
  %cmp37 = icmp ne i32 %54, 0
  br i1 %cmp37, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %do.body.36
  %55 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dpy = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %55, i32 0, i32 58
  %56 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8, !tbaa !55
  %57 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %gc = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %57, i32 0, i32 63
  %58 = load %struct._XGC*, %struct._XGC** %gc, align 8, !tbaa !66
  %59 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %fill_style39 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %59, i32 0, i32 79
  store i32 0, i32* %fill_style39, align 4, !tbaa !65
  %call = call i32 @XSetFillStyle(%struct._XDisplay* %56, %struct._XGC* %58, i32 0) #5
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.38, %do.body.36
  br label %do.cond.41

do.cond.41:                                       ; preds = %if.end.40
  br label %do.end.42

do.end.42:                                        ; preds = %do.cond.41
  %60 = load i64, i64* %zero.addr, align 8, !tbaa !60
  %cmp43 = icmp ne i64 %60, -1
  br i1 %cmp43, label %if.then.44, label %if.else.57

if.then.44:                                       ; preds = %do.end.42
  %61 = load i64, i64* %one.addr, align 8, !tbaa !60
  %cmp45 = icmp ne i64 %61, -1
  br i1 %cmp45, label %if.then.46, label %if.else

if.then.46:                                       ; preds = %if.then.44
  br label %if.end.56

if.else:                                          ; preds = %if.then.44
  %62 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %colors_and = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %62, i32 0, i32 75
  %63 = load i64, i64* %colors_and, align 8, !tbaa !69
  %neg = xor i64 %63, -1
  %64 = load i64, i64* %bc, align 8, !tbaa !60
  %and = and i64 %neg, %64
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.else.48, label %if.then.47

if.then.47:                                       ; preds = %if.else
  store i32 1, i32* %function, align 4, !tbaa !41
  store i64 -1, i64* %fc, align 8, !tbaa !60
  br label %if.end.55

if.else.48:                                       ; preds = %if.else
  %65 = load i64, i64* %bc, align 8, !tbaa !60
  %neg49 = xor i64 %65, -1
  %66 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %colors_or = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %66, i32 0, i32 74
  %67 = load i64, i64* %colors_or, align 8, !tbaa !68
  %and50 = and i64 %neg49, %67
  %tobool51 = icmp ne i64 %and50, 0
  br i1 %tobool51, label %if.else.53, label %if.then.52

if.then.52:                                       ; preds = %if.else.48
  store i32 7, i32* %function, align 4, !tbaa !41
  store i64 0, i64* %fc, align 8, !tbaa !60
  br label %if.end.54

if.else.53:                                       ; preds = %if.else.48
  br label %hard

if.end.54:                                        ; preds = %if.then.52
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.then.47
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.then.46
  br label %if.end.76

if.else.57:                                       ; preds = %do.end.42
  %68 = load i64, i64* %one.addr, align 8, !tbaa !60
  %cmp58 = icmp eq i64 %68, -1
  br i1 %cmp58, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %if.else.57
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.309

if.else.60:                                       ; preds = %if.else.57
  %69 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %colors_and61 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %69, i32 0, i32 75
  %70 = load i64, i64* %colors_and61, align 8, !tbaa !69
  %neg62 = xor i64 %70, -1
  %71 = load i64, i64* %fc, align 8, !tbaa !60
  %and63 = and i64 %neg62, %71
  %tobool64 = icmp ne i64 %and63, 0
  br i1 %tobool64, label %if.else.66, label %if.then.65

if.then.65:                                       ; preds = %if.else.60
  store i32 1, i32* %function, align 4, !tbaa !41
  store i64 -1, i64* %bc, align 8, !tbaa !60
  br label %if.end.74

if.else.66:                                       ; preds = %if.else.60
  %72 = load i64, i64* %fc, align 8, !tbaa !60
  %neg67 = xor i64 %72, -1
  %73 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %colors_or68 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %73, i32 0, i32 74
  %74 = load i64, i64* %colors_or68, align 8, !tbaa !68
  %and69 = and i64 %neg67, %74
  %tobool70 = icmp ne i64 %and69, 0
  br i1 %tobool70, label %if.else.72, label %if.then.71

if.then.71:                                       ; preds = %if.else.66
  store i32 7, i32* %function, align 4, !tbaa !41
  store i64 0, i64* %bc, align 8, !tbaa !60
  br label %if.end.73

if.else.72:                                       ; preds = %if.else.66
  br label %hard

if.end.73:                                        ; preds = %if.then.71
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.then.65
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.end.56
  %75 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %image77 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %75, i32 0, i32 57
  %format = getelementptr inbounds %struct._XImage, %struct._XImage* %image77, i32 0, i32 3
  store i32 0, i32* %format, align 4, !tbaa !81
  br label %do.body.78

do.body.78:                                       ; preds = %if.end.76
  %76 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %function79 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %76, i32 0, i32 78
  %77 = load i32, i32* %function79, align 4, !tbaa !70
  %78 = load i32, i32* %function, align 4, !tbaa !41
  %cmp80 = icmp ne i32 %77, %78
  br i1 %cmp80, label %if.then.81, label %if.end.86

if.then.81:                                       ; preds = %do.body.78
  %79 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dpy82 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %79, i32 0, i32 58
  %80 = load %struct._XDisplay*, %struct._XDisplay** %dpy82, align 8, !tbaa !55
  %81 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %gc83 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %81, i32 0, i32 63
  %82 = load %struct._XGC*, %struct._XGC** %gc83, align 8, !tbaa !66
  %83 = load i32, i32* %function, align 4, !tbaa !41
  %84 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %function84 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %84, i32 0, i32 78
  store i32 %83, i32* %function84, align 4, !tbaa !70
  %call85 = call i32 @XSetFunction(%struct._XDisplay* %80, %struct._XGC* %82, i32 %83) #5
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.81, %do.body.78
  br label %do.cond.87

do.cond.87:                                       ; preds = %if.end.86
  br label %do.end.88

do.end.88:                                        ; preds = %do.cond.87
  %85 = load i64, i64* %bc, align 8, !tbaa !60
  %86 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %back_color = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %86, i32 0, i32 81
  %87 = load i64, i64* %back_color, align 8, !tbaa !82
  %cmp89 = icmp ne i64 %85, %87
  br i1 %cmp89, label %if.then.90, label %if.end.95

if.then.90:                                       ; preds = %do.end.88
  %88 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dpy91 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %88, i32 0, i32 58
  %89 = load %struct._XDisplay*, %struct._XDisplay** %dpy91, align 8, !tbaa !55
  %90 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %gc92 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %90, i32 0, i32 63
  %91 = load %struct._XGC*, %struct._XGC** %gc92, align 8, !tbaa !66
  %92 = load i64, i64* %bc, align 8, !tbaa !60
  %93 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %back_color93 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %93, i32 0, i32 81
  store i64 %92, i64* %back_color93, align 8, !tbaa !82
  %call94 = call i32 @XSetBackground(%struct._XDisplay* %89, %struct._XGC* %91, i64 %92) #5
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.90, %do.end.88
  %94 = load i64, i64* %fc, align 8, !tbaa !60
  %95 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %fore_color = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %95, i32 0, i32 82
  %96 = load i64, i64* %fore_color, align 8, !tbaa !67
  %cmp96 = icmp ne i64 %94, %96
  br i1 %cmp96, label %if.then.97, label %if.end.102

if.then.97:                                       ; preds = %if.end.95
  %97 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dpy98 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %97, i32 0, i32 58
  %98 = load %struct._XDisplay*, %struct._XDisplay** %dpy98, align 8, !tbaa !55
  %99 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %gc99 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %99, i32 0, i32 63
  %100 = load %struct._XGC*, %struct._XGC** %gc99, align 8, !tbaa !66
  %101 = load i64, i64* %fc, align 8, !tbaa !60
  %102 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %fore_color100 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %102, i32 0, i32 82
  store i64 %101, i64* %fore_color100, align 8, !tbaa !67
  %call101 = call i32 @XSetForeground(%struct._XDisplay* %98, %struct._XGC* %100, i64 %101) #5
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.97, %if.end.95
  %103 = load i64, i64* %zero.addr, align 8, !tbaa !60
  %cmp103 = icmp ne i64 %103, -1
  br i1 %cmp103, label %if.then.104, label %if.end.109

if.then.104:                                      ; preds = %if.end.102
  %104 = load i64, i64* %lzero, align 8, !tbaa !60
  %105 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %colors_or105 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %105, i32 0, i32 74
  %106 = load i64, i64* %colors_or105, align 8, !tbaa !68
  %or106 = or i64 %106, %104
  store i64 %or106, i64* %colors_or105, align 8, !tbaa !68
  %107 = load i64, i64* %lzero, align 8, !tbaa !60
  %108 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %colors_and107 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %108, i32 0, i32 75
  %109 = load i64, i64* %colors_and107, align 8, !tbaa !69
  %and108 = and i64 %109, %107
  store i64 %and108, i64* %colors_and107, align 8, !tbaa !69
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.104, %if.end.102
  %110 = load i64, i64* %one.addr, align 8, !tbaa !60
  %cmp110 = icmp ne i64 %110, -1
  br i1 %cmp110, label %if.then.111, label %if.end.116

if.then.111:                                      ; preds = %if.end.109
  %111 = load i64, i64* %lone, align 8, !tbaa !60
  %112 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %colors_or112 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %112, i32 0, i32 74
  %113 = load i64, i64* %colors_or112, align 8, !tbaa !68
  %or113 = or i64 %113, %111
  store i64 %or113, i64* %colors_or112, align 8, !tbaa !68
  %114 = load i64, i64* %lone, align 8, !tbaa !60
  %115 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %colors_and114 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %115, i32 0, i32 75
  %116 = load i64, i64* %colors_and114, align 8, !tbaa !69
  %and115 = and i64 %116, %114
  store i64 %and115, i64* %colors_and114, align 8, !tbaa !69
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.111, %if.end.109
  br label %do.body.117

do.body.117:                                      ; preds = %if.end.116
  %117 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %useXPutImage = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %117, i32 0, i32 95
  %118 = load i8, i8* %useXPutImage, align 1, !tbaa !83
  %conv = sext i8 %118 to i32
  %tobool118 = icmp ne i32 %conv, 0
  br i1 %tobool118, label %land.lhs.true, label %if.else.128

land.lhs.true:                                    ; preds = %do.body.117
  %119 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %image119 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %119, i32 0, i32 57
  %call120 = call i32 @XInitImage(%struct._XImage* %image119) #5
  %cmp121 = icmp eq i32 %call120, 0
  br i1 %cmp121, label %if.else.128, label %if.then.123

if.then.123:                                      ; preds = %land.lhs.true
  %120 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dpy124 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %120, i32 0, i32 58
  %121 = load %struct._XDisplay*, %struct._XDisplay** %dpy124, align 8, !tbaa !55
  %122 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dest = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %122, i32 0, i32 73
  %123 = load i64, i64* %dest, align 8, !tbaa !71
  %124 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %gc125 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %124, i32 0, i32 63
  %125 = load %struct._XGC*, %struct._XGC** %gc125, align 8, !tbaa !66
  %126 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %image126 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %126, i32 0, i32 57
  %127 = load i32, i32* %sourcex.addr, align 4, !tbaa !41
  %128 = load i32, i32* %x.addr, align 4, !tbaa !41
  %129 = load i32, i32* %y.addr, align 4, !tbaa !41
  %130 = load i32, i32* %w.addr, align 4, !tbaa !41
  %131 = load i32, i32* %h.addr, align 4, !tbaa !41
  %call127 = call i32 @XPutImage(%struct._XDisplay* %121, i64 %123, %struct._XGC* %125, %struct._XImage* %image126, i32 %127, i32 0, i32 %128, i32 %129, i32 %130, i32 %131) #5
  br label %if.end.138

if.else.128:                                      ; preds = %land.lhs.true, %do.body.117
  %132 = bitcast i32* %code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %132) #2
  %133 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %134 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dpy129 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %134, i32 0, i32 58
  %135 = load %struct._XDisplay*, %struct._XDisplay** %dpy129, align 8, !tbaa !55
  %136 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dest130 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %136, i32 0, i32 73
  %137 = load i64, i64* %dest130, align 8, !tbaa !71
  %138 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %gc131 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %138, i32 0, i32 63
  %139 = load %struct._XGC*, %struct._XGC** %gc131, align 8, !tbaa !66
  %140 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %image132 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %140, i32 0, i32 57
  %141 = load i32, i32* %sourcex.addr, align 4, !tbaa !41
  %142 = load i32, i32* %x.addr, align 4, !tbaa !41
  %143 = load i32, i32* %y.addr, align 4, !tbaa !41
  %144 = load i32, i32* %w.addr, align 4, !tbaa !41
  %145 = load i32, i32* %h.addr, align 4, !tbaa !41
  %call133 = call i32 @alt_put_image(%struct.gx_device_s* %133, %struct._XDisplay* %135, i64 %137, %struct._XGC* %139, %struct._XImage* %image132, i32 %141, i32 0, i32 %142, i32 %143, i32 %144, i32 %145) #5
  store i32 %call133, i32* %code_, align 4, !tbaa !41
  %146 = load i32, i32* %code_, align 4, !tbaa !41
  %cmp134 = icmp slt i32 %146, 0
  br i1 %cmp134, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %if.else.128
  %147 = load i32, i32* %code_, align 4, !tbaa !41
  store i32 %147, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.137:                                       ; preds = %if.else.128
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.137, %if.then.136
  %148 = bitcast i32* %code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %148) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.309 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.138

if.end.138:                                       ; preds = %cleanup.cont, %if.then.123
  br label %do.cond.139

do.cond.139:                                      ; preds = %if.end.138
  br label %do.end.140

do.end.140:                                       ; preds = %do.cond.139
  br label %out

hard:                                             ; preds = %if.else.72, %if.else.53
  %149 = load i32, i32* %raster.addr, align 4, !tbaa !41
  %150 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cp = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %150, i32 0, i32 76
  %raster141 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %cp, i32 0, i32 2
  %151 = load i32, i32* %raster141, align 4, !tbaa !84
  %cmp142 = icmp sgt i32 %149, %151
  br i1 %cmp142, label %if.then.149, label %lor.lhs.false.144

lor.lhs.false.144:                                ; preds = %hard
  %152 = load i32, i32* %h.addr, align 4, !tbaa !41
  %153 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cp145 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %153, i32 0, i32 76
  %height146 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %cp145, i32 0, i32 3
  %154 = load i32, i32* %height146, align 4, !tbaa !85
  %cmp147 = icmp sgt i32 %152, %154
  br i1 %cmp147, label %if.then.149, label %if.end.181

if.then.149:                                      ; preds = %lor.lhs.false.144, %hard
  %155 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  call void @free_cp(%struct.gx_device_s* %155) #5
  %156 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dpy150 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %156, i32 0, i32 58
  %157 = load %struct._XDisplay*, %struct._XDisplay** %dpy150, align 8, !tbaa !55
  %158 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %win = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %158, i32 0, i32 62
  %159 = load i64, i64* %win, align 8, !tbaa !86
  %160 = load i32, i32* %raster.addr, align 4, !tbaa !41
  %shl = shl i32 %160, 3
  %161 = load i32, i32* %h.addr, align 4, !tbaa !41
  %call151 = call i64 @XCreatePixmap(%struct._XDisplay* %157, i64 %159, i32 %shl, i32 %161, i32 1) #5
  %162 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cp152 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %162, i32 0, i32 76
  %pixmap = getelementptr inbounds %struct.anon.1, %struct.anon.1* %cp152, i32 0, i32 0
  store i64 %call151, i64* %pixmap, align 8, !tbaa !87
  %163 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cp153 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %163, i32 0, i32 76
  %pixmap154 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %cp153, i32 0, i32 0
  %164 = load i64, i64* %pixmap154, align 8, !tbaa !87
  %cmp155 = icmp eq i64 %164, 0
  br i1 %cmp155, label %if.then.157, label %if.end.161

if.then.157:                                      ; preds = %if.then.149
  %call158 = call i8* @gs_program_name() #5
  %call159 = call i64 @gs_revision_number() #5
  call void @eprintf_program_ident(i8* %call158, i64 %call159) #5
  call void @lprintf_file_and_line(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i32 469) #5
  %call160 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0)) #5
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.309

if.end.161:                                       ; preds = %if.then.149
  %165 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dpy162 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %165, i32 0, i32 58
  %166 = load %struct._XDisplay*, %struct._XDisplay** %dpy162, align 8, !tbaa !55
  %167 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cp163 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %167, i32 0, i32 76
  %pixmap164 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %cp163, i32 0, i32 0
  %168 = load i64, i64* %pixmap164, align 8, !tbaa !87
  %call165 = call %struct._XGC* @XCreateGC(%struct._XDisplay* %166, i64 %168, i64 0, %struct.XGCValues* null) #5
  %169 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cp166 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %169, i32 0, i32 76
  %gc167 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %cp166, i32 0, i32 1
  store %struct._XGC* %call165, %struct._XGC** %gc167, align 8, !tbaa !88
  %170 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cp168 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %170, i32 0, i32 76
  %gc169 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %cp168, i32 0, i32 1
  %171 = load %struct._XGC*, %struct._XGC** %gc169, align 8, !tbaa !88
  %cmp170 = icmp eq %struct._XGC* %171, null
  br i1 %cmp170, label %if.then.172, label %if.end.176

if.then.172:                                      ; preds = %if.end.161
  %call173 = call i8* @gs_program_name() #5
  %call174 = call i64 @gs_revision_number() #5
  call void @eprintf_program_ident(i8* %call173, i64 %call174) #5
  call void @lprintf_file_and_line(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i32 474) #5
  %call175 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i32 0, i32 0)) #5
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.309

if.end.176:                                       ; preds = %if.end.161
  %172 = load i32, i32* %raster.addr, align 4, !tbaa !41
  %173 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cp177 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %173, i32 0, i32 76
  %raster178 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %cp177, i32 0, i32 2
  store i32 %172, i32* %raster178, align 4, !tbaa !84
  %174 = load i32, i32* %h.addr, align 4, !tbaa !41
  %175 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cp179 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %175, i32 0, i32 76
  %height180 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %cp179, i32 0, i32 3
  store i32 %174, i32* %height180, align 4, !tbaa !85
  br label %if.end.181

if.end.181:                                       ; preds = %if.end.176, %lor.lhs.false.144
  %176 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %image182 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %176, i32 0, i32 57
  %format183 = getelementptr inbounds %struct._XImage, %struct._XImage* %image182, i32 0, i32 3
  store i32 0, i32* %format183, align 4, !tbaa !81
  br label %do.body.184

do.body.184:                                      ; preds = %if.end.181
  %177 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %function185 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %177, i32 0, i32 78
  %178 = load i32, i32* %function185, align 4, !tbaa !70
  %cmp186 = icmp ne i32 %178, 3
  br i1 %cmp186, label %if.then.188, label %if.end.193

if.then.188:                                      ; preds = %do.body.184
  %179 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dpy189 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %179, i32 0, i32 58
  %180 = load %struct._XDisplay*, %struct._XDisplay** %dpy189, align 8, !tbaa !55
  %181 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %gc190 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %181, i32 0, i32 63
  %182 = load %struct._XGC*, %struct._XGC** %gc190, align 8, !tbaa !66
  %183 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %function191 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %183, i32 0, i32 78
  store i32 3, i32* %function191, align 4, !tbaa !70
  %call192 = call i32 @XSetFunction(%struct._XDisplay* %180, %struct._XGC* %182, i32 3) #5
  br label %if.end.193

if.end.193:                                       ; preds = %if.then.188, %do.body.184
  br label %do.cond.194

do.cond.194:                                      ; preds = %if.end.193
  br label %do.end.195

do.end.195:                                       ; preds = %do.cond.194
  %184 = load i64, i64* %one.addr, align 8, !tbaa !60
  %cmp196 = icmp eq i64 %184, -1
  br i1 %cmp196, label %if.then.198, label %if.else.223

if.then.198:                                      ; preds = %do.end.195
  %185 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dpy199 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %185, i32 0, i32 58
  %186 = load %struct._XDisplay*, %struct._XDisplay** %dpy199, align 8, !tbaa !55
  %187 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cp200 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %187, i32 0, i32 76
  %gc201 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %cp200, i32 0, i32 1
  %188 = load %struct._XGC*, %struct._XGC** %gc201, align 8, !tbaa !88
  %call202 = call i32 @XSetBackground(%struct._XDisplay* %186, %struct._XGC* %188, i64 1) #5
  %189 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dpy203 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %189, i32 0, i32 58
  %190 = load %struct._XDisplay*, %struct._XDisplay** %dpy203, align 8, !tbaa !55
  %191 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cp204 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %191, i32 0, i32 76
  %gc205 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %cp204, i32 0, i32 1
  %192 = load %struct._XGC*, %struct._XGC** %gc205, align 8, !tbaa !88
  %call206 = call i32 @XSetForeground(%struct._XDisplay* %190, %struct._XGC* %192, i64 0) #5
  br label %do.body.207

do.body.207:                                      ; preds = %if.then.198
  %193 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %fore_color208 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %193, i32 0, i32 82
  %194 = load i64, i64* %fore_color208, align 8, !tbaa !67
  %195 = load i64, i64* %lzero, align 8, !tbaa !60
  %cmp209 = icmp ne i64 %194, %195
  br i1 %cmp209, label %if.then.211, label %if.end.220

if.then.211:                                      ; preds = %do.body.207
  %196 = load i64, i64* %lzero, align 8, !tbaa !60
  %197 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %fore_color212 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %197, i32 0, i32 82
  store i64 %196, i64* %fore_color212, align 8, !tbaa !67
  %198 = load i64, i64* %lzero, align 8, !tbaa !60
  %199 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %colors_or213 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %199, i32 0, i32 74
  %200 = load i64, i64* %colors_or213, align 8, !tbaa !68
  %or214 = or i64 %200, %198
  store i64 %or214, i64* %colors_or213, align 8, !tbaa !68
  %201 = load i64, i64* %lzero, align 8, !tbaa !60
  %202 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %colors_and215 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %202, i32 0, i32 75
  %203 = load i64, i64* %colors_and215, align 8, !tbaa !69
  %and216 = and i64 %203, %201
  store i64 %and216, i64* %colors_and215, align 8, !tbaa !69
  %204 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dpy217 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %204, i32 0, i32 58
  %205 = load %struct._XDisplay*, %struct._XDisplay** %dpy217, align 8, !tbaa !55
  %206 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %gc218 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %206, i32 0, i32 63
  %207 = load %struct._XGC*, %struct._XGC** %gc218, align 8, !tbaa !66
  %208 = load i64, i64* %lzero, align 8, !tbaa !60
  %call219 = call i32 @XSetForeground(%struct._XDisplay* %205, %struct._XGC* %207, i64 %208) #5
  br label %if.end.220

if.end.220:                                       ; preds = %if.then.211, %do.body.207
  br label %do.cond.221

do.cond.221:                                      ; preds = %if.end.220
  br label %do.end.222

do.end.222:                                       ; preds = %do.cond.221
  br label %if.end.248

if.else.223:                                      ; preds = %do.end.195
  %209 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dpy224 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %209, i32 0, i32 58
  %210 = load %struct._XDisplay*, %struct._XDisplay** %dpy224, align 8, !tbaa !55
  %211 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cp225 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %211, i32 0, i32 76
  %gc226 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %cp225, i32 0, i32 1
  %212 = load %struct._XGC*, %struct._XGC** %gc226, align 8, !tbaa !88
  %call227 = call i32 @XSetBackground(%struct._XDisplay* %210, %struct._XGC* %212, i64 0) #5
  %213 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dpy228 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %213, i32 0, i32 58
  %214 = load %struct._XDisplay*, %struct._XDisplay** %dpy228, align 8, !tbaa !55
  %215 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cp229 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %215, i32 0, i32 76
  %gc230 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %cp229, i32 0, i32 1
  %216 = load %struct._XGC*, %struct._XGC** %gc230, align 8, !tbaa !88
  %call231 = call i32 @XSetForeground(%struct._XDisplay* %214, %struct._XGC* %216, i64 1) #5
  br label %do.body.232

do.body.232:                                      ; preds = %if.else.223
  %217 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %fore_color233 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %217, i32 0, i32 82
  %218 = load i64, i64* %fore_color233, align 8, !tbaa !67
  %219 = load i64, i64* %lone, align 8, !tbaa !60
  %cmp234 = icmp ne i64 %218, %219
  br i1 %cmp234, label %if.then.236, label %if.end.245

if.then.236:                                      ; preds = %do.body.232
  %220 = load i64, i64* %lone, align 8, !tbaa !60
  %221 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %fore_color237 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %221, i32 0, i32 82
  store i64 %220, i64* %fore_color237, align 8, !tbaa !67
  %222 = load i64, i64* %lone, align 8, !tbaa !60
  %223 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %colors_or238 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %223, i32 0, i32 74
  %224 = load i64, i64* %colors_or238, align 8, !tbaa !68
  %or239 = or i64 %224, %222
  store i64 %or239, i64* %colors_or238, align 8, !tbaa !68
  %225 = load i64, i64* %lone, align 8, !tbaa !60
  %226 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %colors_and240 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %226, i32 0, i32 75
  %227 = load i64, i64* %colors_and240, align 8, !tbaa !69
  %and241 = and i64 %227, %225
  store i64 %and241, i64* %colors_and240, align 8, !tbaa !69
  %228 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dpy242 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %228, i32 0, i32 58
  %229 = load %struct._XDisplay*, %struct._XDisplay** %dpy242, align 8, !tbaa !55
  %230 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %gc243 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %230, i32 0, i32 63
  %231 = load %struct._XGC*, %struct._XGC** %gc243, align 8, !tbaa !66
  %232 = load i64, i64* %lone, align 8, !tbaa !60
  %call244 = call i32 @XSetForeground(%struct._XDisplay* %229, %struct._XGC* %231, i64 %232) #5
  br label %if.end.245

if.end.245:                                       ; preds = %if.then.236, %do.body.232
  br label %do.cond.246

do.cond.246:                                      ; preds = %if.end.245
  br label %do.end.247

do.end.247:                                       ; preds = %do.cond.246
  br label %if.end.248

if.end.248:                                       ; preds = %do.end.247, %do.end.222
  br label %do.body.249

do.body.249:                                      ; preds = %if.end.248
  %233 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %useXPutImage250 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %233, i32 0, i32 95
  %234 = load i8, i8* %useXPutImage250, align 1, !tbaa !83
  %conv251 = sext i8 %234 to i32
  %tobool252 = icmp ne i32 %conv251, 0
  br i1 %tobool252, label %land.lhs.true.253, label %if.else.266

land.lhs.true.253:                                ; preds = %do.body.249
  %235 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %image254 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %235, i32 0, i32 57
  %call255 = call i32 @XInitImage(%struct._XImage* %image254) #5
  %cmp256 = icmp eq i32 %call255, 0
  br i1 %cmp256, label %if.else.266, label %if.then.258

if.then.258:                                      ; preds = %land.lhs.true.253
  %236 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dpy259 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %236, i32 0, i32 58
  %237 = load %struct._XDisplay*, %struct._XDisplay** %dpy259, align 8, !tbaa !55
  %238 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cp260 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %238, i32 0, i32 76
  %pixmap261 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %cp260, i32 0, i32 0
  %239 = load i64, i64* %pixmap261, align 8, !tbaa !87
  %240 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cp262 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %240, i32 0, i32 76
  %gc263 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %cp262, i32 0, i32 1
  %241 = load %struct._XGC*, %struct._XGC** %gc263, align 8, !tbaa !88
  %242 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %image264 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %242, i32 0, i32 57
  %243 = load i32, i32* %sourcex.addr, align 4, !tbaa !41
  %244 = load i32, i32* %w.addr, align 4, !tbaa !41
  %245 = load i32, i32* %h.addr, align 4, !tbaa !41
  %call265 = call i32 @XPutImage(%struct._XDisplay* %237, i64 %239, %struct._XGC* %241, %struct._XImage* %image264, i32 %243, i32 0, i32 0, i32 0, i32 %244, i32 %245) #5
  br label %if.end.282

if.else.266:                                      ; preds = %land.lhs.true.253, %do.body.249
  %246 = bitcast i32* %code_267 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %246) #2
  %247 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %248 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dpy268 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %248, i32 0, i32 58
  %249 = load %struct._XDisplay*, %struct._XDisplay** %dpy268, align 8, !tbaa !55
  %250 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cp269 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %250, i32 0, i32 76
  %pixmap270 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %cp269, i32 0, i32 0
  %251 = load i64, i64* %pixmap270, align 8, !tbaa !87
  %252 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cp271 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %252, i32 0, i32 76
  %gc272 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %cp271, i32 0, i32 1
  %253 = load %struct._XGC*, %struct._XGC** %gc272, align 8, !tbaa !88
  %254 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %image273 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %254, i32 0, i32 57
  %255 = load i32, i32* %sourcex.addr, align 4, !tbaa !41
  %256 = load i32, i32* %w.addr, align 4, !tbaa !41
  %257 = load i32, i32* %h.addr, align 4, !tbaa !41
  %call274 = call i32 @alt_put_image(%struct.gx_device_s* %247, %struct._XDisplay* %249, i64 %251, %struct._XGC* %253, %struct._XImage* %image273, i32 %255, i32 0, i32 0, i32 0, i32 %256, i32 %257) #5
  store i32 %call274, i32* %code_267, align 4, !tbaa !41
  %258 = load i32, i32* %code_267, align 4, !tbaa !41
  %cmp275 = icmp slt i32 %258, 0
  br i1 %cmp275, label %if.then.277, label %if.end.278

if.then.277:                                      ; preds = %if.else.266
  %259 = load i32, i32* %code_267, align 4, !tbaa !41
  store i32 %259, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.279

if.end.278:                                       ; preds = %if.else.266
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.279

cleanup.279:                                      ; preds = %if.end.278, %if.then.277
  %260 = bitcast i32* %code_267 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %260) #2
  %cleanup.dest.280 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.280, label %cleanup.309 [
    i32 0, label %cleanup.cont.281
  ]

cleanup.cont.281:                                 ; preds = %cleanup.279
  br label %if.end.282

if.end.282:                                       ; preds = %cleanup.cont.281, %if.then.258
  br label %do.cond.283

do.cond.283:                                      ; preds = %if.end.282
  br label %do.end.284

do.end.284:                                       ; preds = %do.cond.283
  %261 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dpy285 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %261, i32 0, i32 58
  %262 = load %struct._XDisplay*, %struct._XDisplay** %dpy285, align 8, !tbaa !55
  %263 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %gc286 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %263, i32 0, i32 63
  %264 = load %struct._XGC*, %struct._XGC** %gc286, align 8, !tbaa !66
  %265 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cp287 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %265, i32 0, i32 76
  %pixmap288 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %cp287, i32 0, i32 0
  %266 = load i64, i64* %pixmap288, align 8, !tbaa !87
  %call289 = call i32 @XSetClipMask(%struct._XDisplay* %262, %struct._XGC* %264, i64 %266) #5
  %267 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dpy290 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %267, i32 0, i32 58
  %268 = load %struct._XDisplay*, %struct._XDisplay** %dpy290, align 8, !tbaa !55
  %269 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %gc291 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %269, i32 0, i32 63
  %270 = load %struct._XGC*, %struct._XGC** %gc291, align 8, !tbaa !66
  %271 = load i32, i32* %x.addr, align 4, !tbaa !41
  %272 = load i32, i32* %y.addr, align 4, !tbaa !41
  %call292 = call i32 @XSetClipOrigin(%struct._XDisplay* %268, %struct._XGC* %270, i32 %271, i32 %272) #5
  %273 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dpy293 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %273, i32 0, i32 58
  %274 = load %struct._XDisplay*, %struct._XDisplay** %dpy293, align 8, !tbaa !55
  %275 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dest294 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %275, i32 0, i32 73
  %276 = load i64, i64* %dest294, align 8, !tbaa !71
  %277 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %gc295 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %277, i32 0, i32 63
  %278 = load %struct._XGC*, %struct._XGC** %gc295, align 8, !tbaa !66
  %279 = load i32, i32* %x.addr, align 4, !tbaa !41
  %280 = load i32, i32* %y.addr, align 4, !tbaa !41
  %281 = load i32, i32* %w.addr, align 4, !tbaa !41
  %282 = load i32, i32* %h.addr, align 4, !tbaa !41
  %call296 = call i32 @XFillRectangle(%struct._XDisplay* %274, i64 %276, %struct._XGC* %278, i32 %279, i32 %280, i32 %281, i32 %282) #5
  %283 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dpy297 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %283, i32 0, i32 58
  %284 = load %struct._XDisplay*, %struct._XDisplay** %dpy297, align 8, !tbaa !55
  %285 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %gc298 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %285, i32 0, i32 63
  %286 = load %struct._XGC*, %struct._XGC** %gc298, align 8, !tbaa !66
  %call299 = call i32 @XSetClipMask(%struct._XDisplay* %284, %struct._XGC* %286, i64 0) #5
  %287 = load i32, i32* %raster.addr, align 4, !tbaa !41
  %288 = load i32, i32* %h.addr, align 4, !tbaa !41
  %mul300 = mul nsw i32 %287, %288
  %289 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %MaxTempPixmap = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %289, i32 0, i32 98
  %290 = load i32, i32* %MaxTempPixmap, align 4, !tbaa !89
  %cmp301 = icmp sgt i32 %mul300, %290
  br i1 %cmp301, label %if.then.303, label %if.end.304

if.then.303:                                      ; preds = %do.end.284
  %291 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  call void @free_cp(%struct.gx_device_s* %291) #5
  br label %if.end.304

if.end.304:                                       ; preds = %if.then.303, %do.end.284
  br label %out

out:                                              ; preds = %if.end.304, %do.end.140
  %292 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %bpixmap = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %292, i32 0, i32 65
  %293 = load i64, i64* %bpixmap, align 8, !tbaa !76
  %cmp305 = icmp ne i64 %293, 0
  br i1 %cmp305, label %if.then.307, label %if.end.308

if.then.307:                                      ; preds = %out
  %294 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %295 = load i32, i32* %x.addr, align 4, !tbaa !41
  %296 = load i32, i32* %y.addr, align 4, !tbaa !41
  %297 = load i32, i32* %w.addr, align 4, !tbaa !41
  %298 = load i32, i32* %h.addr, align 4, !tbaa !41
  call void @x_update_add(%struct.gx_device_X_s* %294, i32 %295, i32 %296, i32 %297, i32 %298) #5
  br label %if.end.308

if.end.308:                                       ; preds = %if.then.307, %out
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.309

cleanup.309:                                      ; preds = %if.end.308, %cleanup.279, %if.then.172, %if.then.157, %cleanup, %if.then.59, %if.then.23
  %299 = bitcast i64* %fc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %299) #2
  %300 = bitcast i64* %bc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %300) #2
  %301 = bitcast i64* %lone to i8*
  call void @llvm.lifetime.end(i64 8, i8* %301) #2
  %302 = bitcast i64* %lzero to i8*
  call void @llvm.lifetime.end(i64 8, i8* %302) #2
  %303 = bitcast i32* %function to i8*
  call void @llvm.lifetime.end(i64 4, i8* %303) #2
  %304 = bitcast %struct.gx_device_X_s** %xdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %304) #2
  %305 = load i32, i32* %retval
  ret i32 %305
}

; Function Attrs: nounwind uwtable
define internal i32 @x_copy_color(%struct.gx_device_s* %dev, i8* %base, i32 %sourcex, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %base.addr = alloca i8*, align 8
  %sourcex.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %xdev = alloca %struct.gx_device_X_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  store i8* %base, i8** %base.addr, align 8, !tbaa !2
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !41
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !41
  store i64 %id, i64* %id.addr, align 8, !tbaa !60
  store i32 %x, i32* %x.addr, align 4, !tbaa !41
  store i32 %y, i32* %y.addr, align 4, !tbaa !41
  store i32 %w, i32* %w.addr, align 4, !tbaa !41
  store i32 %h, i32* %h.addr, align 4, !tbaa !41
  %0 = bitcast %struct.gx_device_X_s** %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_X_s*
  store %struct.gx_device_X_s* %2, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %4 = load i32, i32* %x.addr, align 4, !tbaa !41
  %5 = load i32, i32* %y.addr, align 4, !tbaa !41
  %or = or i32 %4, %5
  %cmp = icmp slt i32 %or, 0
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %do.body.1
  %6 = load i32, i32* %x.addr, align 4, !tbaa !41
  %cmp2 = icmp slt i32 %6, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %7 = load i32, i32* %x.addr, align 4, !tbaa !41
  %8 = load i32, i32* %w.addr, align 4, !tbaa !41
  %add = add nsw i32 %8, %7
  store i32 %add, i32* %w.addr, align 4, !tbaa !41
  %9 = load i32, i32* %x.addr, align 4, !tbaa !41
  %10 = load i32, i32* %sourcex.addr, align 4, !tbaa !41
  %sub = sub nsw i32 %10, %9
  store i32 %sub, i32* %sourcex.addr, align 4, !tbaa !41
  store i32 0, i32* %x.addr, align 4, !tbaa !41
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %11 = load i32, i32* %y.addr, align 4, !tbaa !41
  %cmp4 = icmp slt i32 %11, 0
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %12 = load i32, i32* %y.addr, align 4, !tbaa !41
  %13 = load i32, i32* %h.addr, align 4, !tbaa !41
  %add6 = add nsw i32 %13, %12
  store i32 %add6, i32* %h.addr, align 4, !tbaa !41
  %14 = load i32, i32* %y.addr, align 4, !tbaa !41
  %15 = load i32, i32* %raster.addr, align 4, !tbaa !41
  %mul = mul nsw i32 %14, %15
  %16 = load i8*, i8** %base.addr, align 8, !tbaa !2
  %idx.ext = sext i32 %mul to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 %idx.neg
  store i8* %add.ptr, i8** %base.addr, align 8, !tbaa !2
  store i64 0, i64* %id.addr, align 8, !tbaa !60
  store i32 0, i32* %y.addr, align 4, !tbaa !41
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %do.body.1
  %17 = load i32, i32* %w.addr, align 4, !tbaa !41
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 13
  %19 = load i32, i32* %width, align 4, !tbaa !61
  %20 = load i32, i32* %x.addr, align 4, !tbaa !41
  %sub9 = sub nsw i32 %19, %20
  %cmp10 = icmp sgt i32 %17, %sub9
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.8
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %width12 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %21, i32 0, i32 13
  %22 = load i32, i32* %width12, align 4, !tbaa !61
  %23 = load i32, i32* %x.addr, align 4, !tbaa !41
  %sub13 = sub nsw i32 %22, %23
  store i32 %sub13, i32* %w.addr, align 4, !tbaa !41
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.end.8
  br label %do.cond

do.cond:                                          ; preds = %if.end.14
  br label %do.end

do.end:                                           ; preds = %do.cond
  %24 = load i32, i32* %h.addr, align 4, !tbaa !41
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %25, i32 0, i32 14
  %26 = load i32, i32* %height, align 4, !tbaa !63
  %27 = load i32, i32* %y.addr, align 4, !tbaa !41
  %sub15 = sub nsw i32 %26, %27
  %cmp16 = icmp sgt i32 %24, %sub15
  br i1 %cmp16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %do.end
  %28 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %height18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %28, i32 0, i32 14
  %29 = load i32, i32* %height18, align 4, !tbaa !63
  %30 = load i32, i32* %y.addr, align 4, !tbaa !41
  %sub19 = sub nsw i32 %29, %30
  store i32 %sub19, i32* %h.addr, align 4, !tbaa !41
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %do.end
  %31 = load i32, i32* %w.addr, align 4, !tbaa !41
  %cmp21 = icmp sle i32 %31, 0
  br i1 %cmp21, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.20
  %32 = load i32, i32* %h.addr, align 4, !tbaa !41
  %cmp22 = icmp sle i32 %32, 0
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %lor.lhs.false, %if.end.20
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %lor.lhs.false
  br label %do.cond.25

do.cond.25:                                       ; preds = %if.end.24
  br label %do.end.26

do.end.26:                                        ; preds = %do.cond.25
  %33 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %text = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %33, i32 0, i32 100
  %item_count = getelementptr inbounds %struct.anon.4, %struct.anon.4* %text, i32 0, i32 0
  %34 = load i32, i32* %item_count, align 4, !tbaa !64
  %cmp27 = icmp ne i32 %34, 0
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %do.end.26
  %35 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  call void @do_flush_text(%struct.gx_device_X_s* %35) #5
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %do.end.26
  %36 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %37 = load i8*, i8** %base.addr, align 8, !tbaa !2
  %38 = load i32, i32* %sourcex.addr, align 4, !tbaa !41
  %39 = load i32, i32* %raster.addr, align 4, !tbaa !41
  %40 = load i32, i32* %x.addr, align 4, !tbaa !41
  %41 = load i32, i32* %y.addr, align 4, !tbaa !41
  %42 = load i32, i32* %w.addr, align 4, !tbaa !41
  %43 = load i32, i32* %h.addr, align 4, !tbaa !41
  %call = call i32 @x_copy_image(%struct.gx_device_X_s* %36, i8* %37, i32 %38, i32 %39, i32 %40, i32 %41, i32 %42, i32 %43) #5
  store i32 %call, i32* %code, align 4, !tbaa !41
  %44 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %bpixmap = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %44, i32 0, i32 65
  %45 = load i64, i64* %bpixmap, align 8, !tbaa !76
  %cmp30 = icmp ne i64 %45, 0
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.29
  %46 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %47 = load i32, i32* %x.addr, align 4, !tbaa !41
  %48 = load i32, i32* %y.addr, align 4, !tbaa !41
  %49 = load i32, i32* %w.addr, align 4, !tbaa !41
  %50 = load i32, i32* %h.addr, align 4, !tbaa !41
  call void @x_update_add(%struct.gx_device_X_s* %46, i32 %47, i32 %48, i32 %49, i32 %50) #5
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.end.29
  br label %do.body.33

do.body.33:                                       ; preds = %if.end.32
  br label %do.cond.34

do.cond.34:                                       ; preds = %do.body.33
  br label %do.end.35

do.end.35:                                        ; preds = %do.cond.34
  %51 = load i32, i32* %code, align 4, !tbaa !41
  store i32 %51, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.35, %if.then.23
  %52 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #2
  %53 = bitcast %struct.gx_device_X_s** %xdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #2
  %54 = load i32, i32* %retval
  ret i32 %54
}

declare i32 @gdev_x_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @gdev_x_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

; Function Attrs: nounwind uwtable
define internal %struct.gx_device_s* @x_get_page_device(%struct.gx_device_s* %dev) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %1 = bitcast %struct.gx_device_s* %0 to %struct.gx_device_X_s*
  %IsPageDevice = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %1, i32 0, i32 54
  %2 = load i32, i32* %IsPageDevice, align 4, !tbaa !90
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gx_device_s* [ %3, %cond.true ], [ null, %cond.false ]
  ret %struct.gx_device_s* %cond
}

; Function Attrs: nounwind uwtable
define internal i32 @x_strip_tile_rectangle(%struct.gx_device_s* %dev, %struct.gx_strip_bitmap_s* %tiles, i32 %x, i32 %y, i32 %w, i32 %h, i64 %zero, i64 %one, i32 %px, i32 %py) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %tiles.addr = alloca %struct.gx_strip_bitmap_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %zero.addr = alloca i64, align 8
  %one.addr = alloca i64, align 8
  %px.addr = alloca i32, align 4
  %py.addr = alloca i32, align 4
  %xdev = alloca %struct.gx_device_X_s*, align 8
  %lzero = alloca i64, align 8
  %lone = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %j = alloca i32, align 4
  %ptr = alloca i8*, align 8
  %i = alloca i32, align 4
  %tx = alloca i32, align 4
  %mask = alloca i8, align 1
  %pixel = alloca i64, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  store %struct.gx_strip_bitmap_s* %tiles, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !2
  store i32 %x, i32* %x.addr, align 4, !tbaa !41
  store i32 %y, i32* %y.addr, align 4, !tbaa !41
  store i32 %w, i32* %w.addr, align 4, !tbaa !41
  store i32 %h, i32* %h.addr, align 4, !tbaa !41
  store i64 %zero, i64* %zero.addr, align 8, !tbaa !60
  store i64 %one, i64* %one.addr, align 8, !tbaa !60
  store i32 %px, i32* %px.addr, align 4, !tbaa !41
  store i32 %py, i32* %py.addr, align 4, !tbaa !41
  %0 = bitcast %struct.gx_device_X_s** %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_X_s*
  store %struct.gx_device_X_s* %2, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %3 = bitcast i64* %lzero to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load i64, i64* %zero.addr, align 8, !tbaa !60
  store i64 %4, i64* %lzero, align 8, !tbaa !60
  %5 = bitcast i64* %lone to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load i64, i64* %one.addr, align 8, !tbaa !60
  store i64 %6, i64* %lone, align 8, !tbaa !60
  %7 = load i64, i64* %one.addr, align 8, !tbaa !60
  %cmp = icmp eq i64 %7, -1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load i64, i64* %zero.addr, align 8, !tbaa !60
  %cmp1 = icmp eq i64 %8, -1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %10 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !2
  %11 = load i32, i32* %x.addr, align 4, !tbaa !41
  %12 = load i32, i32* %y.addr, align 4, !tbaa !41
  %13 = load i32, i32* %w.addr, align 4, !tbaa !41
  %14 = load i32, i32* %h.addr, align 4, !tbaa !41
  %15 = load i64, i64* %zero.addr, align 8, !tbaa !60
  %16 = load i64, i64* %one.addr, align 8, !tbaa !60
  %17 = load i32, i32* %px.addr, align 4, !tbaa !41
  %18 = load i32, i32* %py.addr, align 4, !tbaa !41
  %call = call i32 @gx_default_strip_tile_rectangle(%struct.gx_device_s* %9, %struct.gx_strip_bitmap_s* %10, i32 %11, i32 %12, i32 %13, i32 %14, i64 %15, i64 %16, i32 %17, i32 %18) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %19 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !2
  %shift = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %19, i32 0, i32 7
  %20 = load i16, i16* %shift, align 2, !tbaa !91
  %conv = zext i16 %20 to i32
  %21 = load i32, i32* %px.addr, align 4, !tbaa !41
  %or = or i32 %conv, %21
  %22 = load i32, i32* %py.addr, align 4, !tbaa !41
  %or2 = or i32 %or, %22
  %tobool = icmp ne i32 %or2, 0
  br i1 %tobool, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %24 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !2
  %25 = load i32, i32* %x.addr, align 4, !tbaa !41
  %26 = load i32, i32* %y.addr, align 4, !tbaa !41
  %27 = load i32, i32* %w.addr, align 4, !tbaa !41
  %28 = load i32, i32* %h.addr, align 4, !tbaa !41
  %29 = load i64, i64* %zero.addr, align 8, !tbaa !60
  %30 = load i64, i64* %one.addr, align 8, !tbaa !60
  %31 = load i32, i32* %px.addr, align 4, !tbaa !41
  %32 = load i32, i32* %py.addr, align 4, !tbaa !41
  %call4 = call i32 @gx_default_strip_tile_rectangle(%struct.gx_device_s* %23, %struct.gx_strip_bitmap_s* %24, i32 %25, i32 %26, i32 %27, i32 %28, i64 %29, i64 %30, i32 %31, i32 %32) #5
  store i32 %call4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.5
  br label %do.body.6

do.body.6:                                        ; preds = %do.body
  br label %do.body.7

do.body.7:                                        ; preds = %do.body.6
  %33 = load i32, i32* %x.addr, align 4, !tbaa !41
  %34 = load i32, i32* %y.addr, align 4, !tbaa !41
  %or8 = or i32 %33, %34
  %cmp9 = icmp slt i32 %or8, 0
  br i1 %cmp9, label %if.then.11, label %if.end.21

if.then.11:                                       ; preds = %do.body.7
  %35 = load i32, i32* %x.addr, align 4, !tbaa !41
  %cmp12 = icmp slt i32 %35, 0
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.then.11
  %36 = load i32, i32* %x.addr, align 4, !tbaa !41
  %37 = load i32, i32* %w.addr, align 4, !tbaa !41
  %add = add nsw i32 %37, %36
  store i32 %add, i32* %w.addr, align 4, !tbaa !41
  store i32 0, i32* %x.addr, align 4, !tbaa !41
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.then.11
  %38 = load i32, i32* %y.addr, align 4, !tbaa !41
  %cmp16 = icmp slt i32 %38, 0
  br i1 %cmp16, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end.15
  %39 = load i32, i32* %y.addr, align 4, !tbaa !41
  %40 = load i32, i32* %h.addr, align 4, !tbaa !41
  %add19 = add nsw i32 %40, %39
  store i32 %add19, i32* %h.addr, align 4, !tbaa !41
  store i32 0, i32* %y.addr, align 4, !tbaa !41
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.end.15
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %do.body.7
  br label %do.cond

do.cond:                                          ; preds = %if.end.21
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.22

do.body.22:                                       ; preds = %do.end
  %41 = load i32, i32* %w.addr, align 4, !tbaa !41
  %42 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %42, i32 0, i32 13
  %43 = load i32, i32* %width, align 4, !tbaa !61
  %44 = load i32, i32* %x.addr, align 4, !tbaa !41
  %sub = sub nsw i32 %43, %44
  %cmp23 = icmp sgt i32 %41, %sub
  br i1 %cmp23, label %if.then.25, label %if.end.28

if.then.25:                                       ; preds = %do.body.22
  %45 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %width26 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %45, i32 0, i32 13
  %46 = load i32, i32* %width26, align 4, !tbaa !61
  %47 = load i32, i32* %x.addr, align 4, !tbaa !41
  %sub27 = sub nsw i32 %46, %47
  store i32 %sub27, i32* %w.addr, align 4, !tbaa !41
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.25, %do.body.22
  br label %do.cond.29

do.cond.29:                                       ; preds = %if.end.28
  br label %do.end.30

do.end.30:                                        ; preds = %do.cond.29
  br label %do.body.31

do.body.31:                                       ; preds = %do.end.30
  %48 = load i32, i32* %h.addr, align 4, !tbaa !41
  %49 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %49, i32 0, i32 14
  %50 = load i32, i32* %height, align 4, !tbaa !63
  %51 = load i32, i32* %y.addr, align 4, !tbaa !41
  %sub32 = sub nsw i32 %50, %51
  %cmp33 = icmp sgt i32 %48, %sub32
  br i1 %cmp33, label %if.then.35, label %if.end.38

if.then.35:                                       ; preds = %do.body.31
  %52 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %height36 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %52, i32 0, i32 14
  %53 = load i32, i32* %height36, align 4, !tbaa !63
  %54 = load i32, i32* %y.addr, align 4, !tbaa !41
  %sub37 = sub nsw i32 %53, %54
  store i32 %sub37, i32* %h.addr, align 4, !tbaa !41
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.35, %do.body.31
  br label %do.cond.39

do.cond.39:                                       ; preds = %if.end.38
  br label %do.end.40

do.end.40:                                        ; preds = %do.cond.39
  br label %do.cond.41

do.cond.41:                                       ; preds = %do.end.40
  br label %do.end.42

do.end.42:                                        ; preds = %do.cond.41
  %55 = load i32, i32* %w.addr, align 4, !tbaa !41
  %cmp43 = icmp sle i32 %55, 0
  br i1 %cmp43, label %if.then.48, label %lor.lhs.false.45

lor.lhs.false.45:                                 ; preds = %do.end.42
  %56 = load i32, i32* %h.addr, align 4, !tbaa !41
  %cmp46 = icmp sle i32 %56, 0
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %lor.lhs.false.45, %do.end.42
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.49:                                        ; preds = %lor.lhs.false.45
  br label %do.cond.50

do.cond.50:                                       ; preds = %if.end.49
  br label %do.end.51

do.end.51:                                        ; preds = %do.cond.50
  %57 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %text = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %57, i32 0, i32 100
  %item_count = getelementptr inbounds %struct.anon.4, %struct.anon.4* %text, i32 0, i32 0
  %58 = load i32, i32* %item_count, align 4, !tbaa !64
  %cmp52 = icmp ne i32 %58, 0
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %do.end.51
  %59 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  call void @do_flush_text(%struct.gx_device_X_s* %59) #5
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %do.end.51
  %60 = load i32, i32* %h.addr, align 4, !tbaa !41
  %cmp56 = icmp sle i32 %60, 2
  br i1 %cmp56, label %land.lhs.true, label %if.end.120

land.lhs.true:                                    ; preds = %if.end.55
  %61 = load i32, i32* %w.addr, align 4, !tbaa !41
  %cmp58 = icmp sle i32 %61, 2
  br i1 %cmp58, label %if.then.60, label %if.end.120

if.then.60:                                       ; preds = %land.lhs.true
  %62 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %62) #2
  br label %do.body.61

do.body.61:                                       ; preds = %if.then.60
  %63 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %fill_style = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %63, i32 0, i32 79
  %64 = load i32, i32* %fill_style, align 4, !tbaa !65
  %cmp62 = icmp ne i32 %64, 0
  br i1 %cmp62, label %if.then.64, label %if.end.67

if.then.64:                                       ; preds = %do.body.61
  %65 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dpy = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %65, i32 0, i32 58
  %66 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8, !tbaa !55
  %67 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %gc = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %67, i32 0, i32 63
  %68 = load %struct._XGC*, %struct._XGC** %gc, align 8, !tbaa !66
  %69 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %fill_style65 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %69, i32 0, i32 79
  store i32 0, i32* %fill_style65, align 4, !tbaa !65
  %call66 = call i32 @XSetFillStyle(%struct._XDisplay* %66, %struct._XGC* %68, i32 0) #5
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.64, %do.body.61
  br label %do.cond.68

do.cond.68:                                       ; preds = %if.end.67
  br label %do.end.69

do.end.69:                                        ; preds = %do.cond.68
  br label %do.body.70

do.body.70:                                       ; preds = %do.end.69
  %70 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %function = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %70, i32 0, i32 78
  %71 = load i32, i32* %function, align 4, !tbaa !70
  %cmp71 = icmp ne i32 %71, 3
  br i1 %cmp71, label %if.then.73, label %if.end.78

if.then.73:                                       ; preds = %do.body.70
  %72 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dpy74 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %72, i32 0, i32 58
  %73 = load %struct._XDisplay*, %struct._XDisplay** %dpy74, align 8, !tbaa !55
  %74 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %gc75 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %74, i32 0, i32 63
  %75 = load %struct._XGC*, %struct._XGC** %gc75, align 8, !tbaa !66
  %76 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %function76 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %76, i32 0, i32 78
  store i32 3, i32* %function76, align 4, !tbaa !70
  %call77 = call i32 @XSetFunction(%struct._XDisplay* %73, %struct._XGC* %75, i32 3) #5
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.73, %do.body.70
  br label %do.cond.79

do.cond.79:                                       ; preds = %if.end.78
  br label %do.end.80

do.end.80:                                        ; preds = %do.cond.79
  %77 = load i32, i32* %y.addr, align 4, !tbaa !41
  %78 = load i32, i32* %h.addr, align 4, !tbaa !41
  %add81 = add nsw i32 %77, %78
  store i32 %add81, i32* %j, align 4, !tbaa !41
  br label %for.cond

for.cond:                                         ; preds = %for.end, %do.end.80
  %79 = load i32, i32* %j, align 4, !tbaa !41
  %dec = add nsw i32 %79, -1
  store i32 %dec, i32* %j, align 4, !tbaa !41
  %80 = load i32, i32* %y.addr, align 4, !tbaa !41
  %cmp82 = icmp sge i32 %dec, %80
  br i1 %cmp82, label %for.body, label %for.end.115

for.body:                                         ; preds = %for.cond
  %81 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %81) #2
  %82 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !2
  %data = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %82, i32 0, i32 0
  %83 = load i8*, i8** %data, align 8, !tbaa !93
  %84 = load i32, i32* %j, align 4, !tbaa !41
  %85 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !2
  %rep_height = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %85, i32 0, i32 5
  %86 = load i16, i16* %rep_height, align 2, !tbaa !94
  %conv84 = zext i16 %86 to i32
  %rem = srem i32 %84, %conv84
  %87 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !2
  %raster = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %87, i32 0, i32 1
  %88 = load i32, i32* %raster, align 4, !tbaa !95
  %mul = mul nsw i32 %rem, %88
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %83, i64 %idx.ext
  store i8* %add.ptr, i8** %ptr, align 8, !tbaa !2
  %89 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %89) #2
  %90 = load i32, i32* %x.addr, align 4, !tbaa !41
  %91 = load i32, i32* %w.addr, align 4, !tbaa !41
  %add85 = add nsw i32 %90, %91
  store i32 %add85, i32* %i, align 4, !tbaa !41
  br label %for.cond.86

for.cond.86:                                      ; preds = %do.end.111, %for.body
  %92 = load i32, i32* %i, align 4, !tbaa !41
  %dec87 = add nsw i32 %92, -1
  store i32 %dec87, i32* %i, align 4, !tbaa !41
  %93 = load i32, i32* %x.addr, align 4, !tbaa !41
  %cmp88 = icmp sge i32 %dec87, %93
  br i1 %cmp88, label %for.body.90, label %for.end

for.body.90:                                      ; preds = %for.cond.86
  %94 = bitcast i32* %tx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %94) #2
  %95 = load i32, i32* %i, align 4, !tbaa !41
  %96 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !2
  %rep_width = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %96, i32 0, i32 4
  %97 = load i16, i16* %rep_width, align 2, !tbaa !96
  %conv91 = zext i16 %97 to i32
  %rem92 = srem i32 %95, %conv91
  store i32 %rem92, i32* %tx, align 4, !tbaa !41
  call void @llvm.lifetime.start(i64 1, i8* %mask) #2
  %98 = load i32, i32* %tx, align 4, !tbaa !41
  %and = and i32 %98, 7
  %shr = ashr i32 128, %and
  %conv93 = trunc i32 %shr to i8
  store i8 %conv93, i8* %mask, align 1, !tbaa !97
  %99 = bitcast i64* %pixel to i8*
  call void @llvm.lifetime.start(i64 8, i8* %99) #2
  %100 = load i32, i32* %tx, align 4, !tbaa !41
  %shr94 = lshr i32 %100, 3
  %idxprom = zext i32 %shr94 to i64
  %101 = load i8*, i8** %ptr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i8, i8* %101, i64 %idxprom
  %102 = load i8, i8* %arrayidx, align 1, !tbaa !97
  %conv95 = zext i8 %102 to i32
  %103 = load i8, i8* %mask, align 1, !tbaa !97
  %conv96 = zext i8 %103 to i32
  %and97 = and i32 %conv95, %conv96
  %tobool98 = icmp ne i32 %and97, 0
  br i1 %tobool98, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.90
  %104 = load i64, i64* %lone, align 8, !tbaa !60
  br label %cond.end

cond.false:                                       ; preds = %for.body.90
  %105 = load i64, i64* %lzero, align 8, !tbaa !60
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %104, %cond.true ], [ %105, %cond.false ]
  store i64 %cond, i64* %pixel, align 8, !tbaa !60
  br label %do.body.99

do.body.99:                                       ; preds = %cond.end
  %106 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %fore_color = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %106, i32 0, i32 82
  %107 = load i64, i64* %fore_color, align 8, !tbaa !67
  %108 = load i64, i64* %pixel, align 8, !tbaa !60
  %cmp100 = icmp ne i64 %107, %108
  br i1 %cmp100, label %if.then.102, label %if.end.109

if.then.102:                                      ; preds = %do.body.99
  %109 = load i64, i64* %pixel, align 8, !tbaa !60
  %110 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %fore_color103 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %110, i32 0, i32 82
  store i64 %109, i64* %fore_color103, align 8, !tbaa !67
  %111 = load i64, i64* %pixel, align 8, !tbaa !60
  %112 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %colors_or = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %112, i32 0, i32 74
  %113 = load i64, i64* %colors_or, align 8, !tbaa !68
  %or104 = or i64 %113, %111
  store i64 %or104, i64* %colors_or, align 8, !tbaa !68
  %114 = load i64, i64* %pixel, align 8, !tbaa !60
  %115 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %colors_and = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %115, i32 0, i32 75
  %116 = load i64, i64* %colors_and, align 8, !tbaa !69
  %and105 = and i64 %116, %114
  store i64 %and105, i64* %colors_and, align 8, !tbaa !69
  %117 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dpy106 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %117, i32 0, i32 58
  %118 = load %struct._XDisplay*, %struct._XDisplay** %dpy106, align 8, !tbaa !55
  %119 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %gc107 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %119, i32 0, i32 63
  %120 = load %struct._XGC*, %struct._XGC** %gc107, align 8, !tbaa !66
  %121 = load i64, i64* %pixel, align 8, !tbaa !60
  %call108 = call i32 @XSetForeground(%struct._XDisplay* %118, %struct._XGC* %120, i64 %121) #5
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.102, %do.body.99
  br label %do.cond.110

do.cond.110:                                      ; preds = %if.end.109
  br label %do.end.111

do.end.111:                                       ; preds = %do.cond.110
  %122 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dpy112 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %122, i32 0, i32 58
  %123 = load %struct._XDisplay*, %struct._XDisplay** %dpy112, align 8, !tbaa !55
  %124 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dest = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %124, i32 0, i32 73
  %125 = load i64, i64* %dest, align 8, !tbaa !71
  %126 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %gc113 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %126, i32 0, i32 63
  %127 = load %struct._XGC*, %struct._XGC** %gc113, align 8, !tbaa !66
  %128 = load i32, i32* %i, align 4, !tbaa !41
  %129 = load i32, i32* %j, align 4, !tbaa !41
  %call114 = call i32 @XDrawPoint(%struct._XDisplay* %123, i64 %125, %struct._XGC* %127, i32 %128, i32 %129) #5
  %130 = bitcast i64* %pixel to i8*
  call void @llvm.lifetime.end(i64 8, i8* %130) #2
  call void @llvm.lifetime.end(i64 1, i8* %mask) #2
  %131 = bitcast i32* %tx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %131) #2
  br label %for.cond.86

for.end:                                          ; preds = %for.cond.86
  %132 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %132) #2
  %133 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %133) #2
  br label %for.cond

for.end.115:                                      ; preds = %for.cond
  %134 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %bpixmap = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %134, i32 0, i32 65
  %135 = load i64, i64* %bpixmap, align 8, !tbaa !76
  %cmp116 = icmp ne i64 %135, 0
  br i1 %cmp116, label %if.then.118, label %if.end.119

if.then.118:                                      ; preds = %for.end.115
  %136 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %137 = load i32, i32* %x.addr, align 4, !tbaa !41
  %138 = load i32, i32* %y.addr, align 4, !tbaa !41
  %139 = load i32, i32* %w.addr, align 4, !tbaa !41
  %140 = load i32, i32* %h.addr, align 4, !tbaa !41
  call void @x_update_add(%struct.gx_device_X_s* %136, i32 %137, i32 %138, i32 %139, i32 %140) #5
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.118, %for.end.115
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %141 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #2
  br label %cleanup

if.end.120:                                       ; preds = %land.lhs.true, %if.end.55
  %142 = load i64, i64* %lzero, align 8, !tbaa !60
  %143 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %ht = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %143, i32 0, i32 77
  %back_c = getelementptr inbounds %struct.anon.2, %struct.anon.2* %ht, i32 0, i32 7
  %144 = load i64, i64* %back_c, align 8, !tbaa !98
  %cmp121 = icmp ne i64 %142, %144
  br i1 %cmp121, label %if.then.127, label %lor.lhs.false.123

lor.lhs.false.123:                                ; preds = %if.end.120
  %145 = load i64, i64* %lone, align 8, !tbaa !60
  %146 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %ht124 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %146, i32 0, i32 77
  %fore_c = getelementptr inbounds %struct.anon.2, %struct.anon.2* %ht124, i32 0, i32 6
  %147 = load i64, i64* %fore_c, align 8, !tbaa !99
  %cmp125 = icmp ne i64 %145, %147
  br i1 %cmp125, label %if.then.127, label %if.end.130

if.then.127:                                      ; preds = %lor.lhs.false.123, %if.end.120
  %148 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !2
  %id = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %148, i32 0, i32 3
  %149 = load i64, i64* %id, align 8, !tbaa !100
  %neg = xor i64 %149, -1
  %150 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %ht128 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %150, i32 0, i32 77
  %id129 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %ht128, i32 0, i32 2
  store i64 %neg, i64* %id129, align 8, !tbaa !101
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.127, %lor.lhs.false.123
  br label %do.body.131

do.body.131:                                      ; preds = %if.end.130
  %151 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %back_color = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %151, i32 0, i32 81
  %152 = load i64, i64* %back_color, align 8, !tbaa !82
  %153 = load i64, i64* %lzero, align 8, !tbaa !60
  %cmp132 = icmp ne i64 %152, %153
  br i1 %cmp132, label %if.then.134, label %if.end.143

if.then.134:                                      ; preds = %do.body.131
  %154 = load i64, i64* %lzero, align 8, !tbaa !60
  %155 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %back_color135 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %155, i32 0, i32 81
  store i64 %154, i64* %back_color135, align 8, !tbaa !82
  %156 = load i64, i64* %lzero, align 8, !tbaa !60
  %157 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %colors_or136 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %157, i32 0, i32 74
  %158 = load i64, i64* %colors_or136, align 8, !tbaa !68
  %or137 = or i64 %158, %156
  store i64 %or137, i64* %colors_or136, align 8, !tbaa !68
  %159 = load i64, i64* %lzero, align 8, !tbaa !60
  %160 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %colors_and138 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %160, i32 0, i32 75
  %161 = load i64, i64* %colors_and138, align 8, !tbaa !69
  %and139 = and i64 %161, %159
  store i64 %and139, i64* %colors_and138, align 8, !tbaa !69
  %162 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dpy140 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %162, i32 0, i32 58
  %163 = load %struct._XDisplay*, %struct._XDisplay** %dpy140, align 8, !tbaa !55
  %164 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %gc141 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %164, i32 0, i32 63
  %165 = load %struct._XGC*, %struct._XGC** %gc141, align 8, !tbaa !66
  %166 = load i64, i64* %lzero, align 8, !tbaa !60
  %call142 = call i32 @XSetBackground(%struct._XDisplay* %163, %struct._XGC* %165, i64 %166) #5
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.134, %do.body.131
  br label %do.cond.144

do.cond.144:                                      ; preds = %if.end.143
  br label %do.end.145

do.end.145:                                       ; preds = %do.cond.144
  br label %do.body.146

do.body.146:                                      ; preds = %do.end.145
  %167 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %fore_color147 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %167, i32 0, i32 82
  %168 = load i64, i64* %fore_color147, align 8, !tbaa !67
  %169 = load i64, i64* %lone, align 8, !tbaa !60
  %cmp148 = icmp ne i64 %168, %169
  br i1 %cmp148, label %if.then.150, label %if.end.159

if.then.150:                                      ; preds = %do.body.146
  %170 = load i64, i64* %lone, align 8, !tbaa !60
  %171 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %fore_color151 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %171, i32 0, i32 82
  store i64 %170, i64* %fore_color151, align 8, !tbaa !67
  %172 = load i64, i64* %lone, align 8, !tbaa !60
  %173 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %colors_or152 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %173, i32 0, i32 74
  %174 = load i64, i64* %colors_or152, align 8, !tbaa !68
  %or153 = or i64 %174, %172
  store i64 %or153, i64* %colors_or152, align 8, !tbaa !68
  %175 = load i64, i64* %lone, align 8, !tbaa !60
  %176 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %colors_and154 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %176, i32 0, i32 75
  %177 = load i64, i64* %colors_and154, align 8, !tbaa !69
  %and155 = and i64 %177, %175
  store i64 %and155, i64* %colors_and154, align 8, !tbaa !69
  %178 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dpy156 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %178, i32 0, i32 58
  %179 = load %struct._XDisplay*, %struct._XDisplay** %dpy156, align 8, !tbaa !55
  %180 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %gc157 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %180, i32 0, i32 63
  %181 = load %struct._XGC*, %struct._XGC** %gc157, align 8, !tbaa !66
  %182 = load i64, i64* %lone, align 8, !tbaa !60
  %call158 = call i32 @XSetForeground(%struct._XDisplay* %179, %struct._XGC* %181, i64 %182) #5
  br label %if.end.159

if.end.159:                                       ; preds = %if.then.150, %do.body.146
  br label %do.cond.160

do.cond.160:                                      ; preds = %if.end.159
  br label %do.end.161

do.end.161:                                       ; preds = %do.cond.160
  %183 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %184 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !2
  %call162 = call i32 @set_tile(%struct.gx_device_s* %183, %struct.gx_strip_bitmap_s* %184) #5
  %tobool163 = icmp ne i32 %call162, 0
  br i1 %tobool163, label %if.end.166, label %if.then.164

if.then.164:                                      ; preds = %do.end.161
  %185 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %186 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !2
  %187 = load i32, i32* %x.addr, align 4, !tbaa !41
  %188 = load i32, i32* %y.addr, align 4, !tbaa !41
  %189 = load i32, i32* %w.addr, align 4, !tbaa !41
  %190 = load i32, i32* %h.addr, align 4, !tbaa !41
  %191 = load i64, i64* %zero.addr, align 8, !tbaa !60
  %192 = load i64, i64* %one.addr, align 8, !tbaa !60
  %193 = load i32, i32* %px.addr, align 4, !tbaa !41
  %194 = load i32, i32* %py.addr, align 4, !tbaa !41
  %call165 = call i32 @gx_default_strip_tile_rectangle(%struct.gx_device_s* %185, %struct.gx_strip_bitmap_s* %186, i32 %187, i32 %188, i32 %189, i32 %190, i64 %191, i64 %192, i32 %193, i32 %194) #5
  store i32 %call165, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.166:                                       ; preds = %do.end.161
  br label %do.body.167

do.body.167:                                      ; preds = %if.end.166
  %195 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %fill_style168 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %195, i32 0, i32 79
  %196 = load i32, i32* %fill_style168, align 4, !tbaa !65
  %cmp169 = icmp ne i32 %196, 1
  br i1 %cmp169, label %if.then.171, label %if.end.176

if.then.171:                                      ; preds = %do.body.167
  %197 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dpy172 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %197, i32 0, i32 58
  %198 = load %struct._XDisplay*, %struct._XDisplay** %dpy172, align 8, !tbaa !55
  %199 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %gc173 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %199, i32 0, i32 63
  %200 = load %struct._XGC*, %struct._XGC** %gc173, align 8, !tbaa !66
  %201 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %fill_style174 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %201, i32 0, i32 79
  store i32 1, i32* %fill_style174, align 4, !tbaa !65
  %call175 = call i32 @XSetFillStyle(%struct._XDisplay* %198, %struct._XGC* %200, i32 1) #5
  br label %if.end.176

if.end.176:                                       ; preds = %if.then.171, %do.body.167
  br label %do.cond.177

do.cond.177:                                      ; preds = %if.end.176
  br label %do.end.178

do.end.178:                                       ; preds = %do.cond.177
  br label %do.body.179

do.body.179:                                      ; preds = %do.end.178
  %202 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %function180 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %202, i32 0, i32 78
  %203 = load i32, i32* %function180, align 4, !tbaa !70
  %cmp181 = icmp ne i32 %203, 3
  br i1 %cmp181, label %if.then.183, label %if.end.188

if.then.183:                                      ; preds = %do.body.179
  %204 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dpy184 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %204, i32 0, i32 58
  %205 = load %struct._XDisplay*, %struct._XDisplay** %dpy184, align 8, !tbaa !55
  %206 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %gc185 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %206, i32 0, i32 63
  %207 = load %struct._XGC*, %struct._XGC** %gc185, align 8, !tbaa !66
  %208 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %function186 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %208, i32 0, i32 78
  store i32 3, i32* %function186, align 4, !tbaa !70
  %call187 = call i32 @XSetFunction(%struct._XDisplay* %205, %struct._XGC* %207, i32 3) #5
  br label %if.end.188

if.end.188:                                       ; preds = %if.then.183, %do.body.179
  br label %do.cond.189

do.cond.189:                                      ; preds = %if.end.188
  br label %do.end.190

do.end.190:                                       ; preds = %do.cond.189
  %209 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dpy191 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %209, i32 0, i32 58
  %210 = load %struct._XDisplay*, %struct._XDisplay** %dpy191, align 8, !tbaa !55
  %211 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dest192 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %211, i32 0, i32 73
  %212 = load i64, i64* %dest192, align 8, !tbaa !71
  %213 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %gc193 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %213, i32 0, i32 63
  %214 = load %struct._XGC*, %struct._XGC** %gc193, align 8, !tbaa !66
  %215 = load i32, i32* %x.addr, align 4, !tbaa !41
  %216 = load i32, i32* %y.addr, align 4, !tbaa !41
  %217 = load i32, i32* %w.addr, align 4, !tbaa !41
  %218 = load i32, i32* %h.addr, align 4, !tbaa !41
  %call194 = call i32 @XFillRectangle(%struct._XDisplay* %210, i64 %212, %struct._XGC* %214, i32 %215, i32 %216, i32 %217, i32 %218) #5
  %219 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %bpixmap195 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %219, i32 0, i32 65
  %220 = load i64, i64* %bpixmap195, align 8, !tbaa !76
  %cmp196 = icmp ne i64 %220, 0
  br i1 %cmp196, label %if.then.198, label %if.end.199

if.then.198:                                      ; preds = %do.end.190
  %221 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %222 = load i32, i32* %x.addr, align 4, !tbaa !41
  %223 = load i32, i32* %y.addr, align 4, !tbaa !41
  %224 = load i32, i32* %w.addr, align 4, !tbaa !41
  %225 = load i32, i32* %h.addr, align 4, !tbaa !41
  call void @x_update_add(%struct.gx_device_X_s* %221, i32 %222, i32 %223, i32 %224, i32 %225) #5
  br label %if.end.199

if.end.199:                                       ; preds = %if.then.198, %do.end.190
  br label %do.body.200

do.body.200:                                      ; preds = %if.end.199
  br label %do.cond.201

do.cond.201:                                      ; preds = %do.body.200
  br label %do.end.202

do.end.202:                                       ; preds = %do.cond.201
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.202, %if.then.164, %if.end.119, %if.then.48, %if.then.3, %if.then
  %226 = bitcast i64* %lone to i8*
  call void @llvm.lifetime.end(i64 8, i8* %226) #2
  %227 = bitcast i64* %lzero to i8*
  call void @llvm.lifetime.end(i64 8, i8* %227) #2
  %228 = bitcast %struct.gx_device_X_s** %xdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %228) #2
  %229 = load i32, i32* %retval
  ret i32 %229
}

; Function Attrs: nounwind uwtable
define internal i32 @x_begin_typed_image(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gs_matrix_s* %pmat, %struct.gs_image_common_s* %pic, %struct.gs_int_rect_s* %prect, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath, %struct.gs_memory_s* %mem, %struct.gx_image_enum_common_s** %pinfo) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %pic.addr = alloca %struct.gs_image_common_s*, align 8
  %prect.addr = alloca %struct.gs_int_rect_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pinfo.addr = alloca %struct.gx_image_enum_common_s**, align 8
  %xdev = alloca %struct.gx_device_X_s*, align 8
  %pim = alloca %struct.gs_image2_s*, align 8
  %pgs = alloca %struct.gs_state_s*, align 8
  %sdev = alloca %struct.gx_device_s*, align 8
  %smat = alloca %struct.gs_matrix_s, align 4
  %dmat = alloca %struct.gs_matrix_s, align 4
  %rect = alloca %struct.gs_rect_s, align 8
  %src = alloca %struct.gs_rect_s, align 8
  %dest = alloca %struct.gs_rect_s, align 8
  %size = alloca %struct.gs_int_point_s, align 4
  %srcx = alloca i32, align 4
  %srcy = alloca i32, align 4
  %destx = alloca i32, align 4
  %desty = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !2
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !2
  store %struct.gs_image_common_s* %pic, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !2
  store %struct.gs_int_rect_s* %prect, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !2
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !2
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !2
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !2
  store %struct.gx_image_enum_common_s** %pinfo, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !2
  %0 = bitcast %struct.gx_device_X_s** %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_X_s*
  store %struct.gx_device_X_s* %2, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %3 = bitcast %struct.gs_image2_s** %pim to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast %struct.gx_device_s** %sdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast %struct.gs_matrix_s* %smat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %6) #2
  %7 = bitcast %struct.gs_matrix_s* %dmat to i8*
  call void @llvm.lifetime.start(i64 24, i8* %7) #2
  %8 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !2
  %type = getelementptr inbounds %struct.gs_image_common_s, %struct.gs_image_common_s* %8, i32 0, i32 0
  %9 = load %struct.gx_image_type_s*, %struct.gx_image_type_s** %type, align 8, !tbaa !102
  %index = getelementptr inbounds %struct.gx_image_type_s, %struct.gx_image_type_s* %9, i32 0, i32 6
  %10 = load i32, i32* %index, align 4, !tbaa !104
  %cmp = icmp ne i32 %10, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %punt

if.end:                                           ; preds = %entry
  %11 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !2
  %12 = bitcast %struct.gs_image_common_s* %11 to %struct.gs_image2_s*
  store %struct.gs_image2_s* %12, %struct.gs_image2_s** %pim, align 8, !tbaa !2
  %13 = load %struct.gs_image2_s*, %struct.gs_image2_s** %pim, align 8, !tbaa !2
  %PixelCopy = getelementptr inbounds %struct.gs_image2_s, %struct.gs_image2_s* %13, i32 0, i32 8
  %14 = load i32, i32* %PixelCopy, align 4, !tbaa !106
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  br label %punt

if.end.2:                                         ; preds = %if.end
  %15 = load %struct.gs_image2_s*, %struct.gs_image2_s** %pim, align 8, !tbaa !2
  %DataSource = getelementptr inbounds %struct.gs_image2_s, %struct.gs_image2_s* %15, i32 0, i32 2
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %DataSource, align 8, !tbaa !108
  store %struct.gs_state_s* %16, %struct.gs_state_s** %pgs, align 8, !tbaa !2
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !2
  %call = call %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s* %17) #5
  store %struct.gx_device_s* %call, %struct.gx_device_s** %sdev, align 8, !tbaa !2
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %dname = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 2
  %19 = load i8*, i8** %dname, align 8, !tbaa !109
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %sdev, align 8, !tbaa !2
  %dname3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 2
  %21 = load i8*, i8** %dname3, align 8, !tbaa !109
  %cmp4 = icmp ne i8* %19, %21
  br i1 %cmp4, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.2
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %22, i32 0, i32 11
  %23 = bitcast %struct.gx_device_color_info_s* %color_info to i8*
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %sdev, align 8, !tbaa !2
  %color_info5 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %24, i32 0, i32 11
  %25 = bitcast %struct.gx_device_color_info_s* %color_info5 to i8*
  %call6 = call i32 @memcmp(i8* %23, i8* %25, i64 720) #6
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %lor.lhs.false, %if.end.2
  br label %punt

if.end.9:                                         ; preds = %lor.lhs.false
  %26 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %text = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %26, i32 0, i32 100
  %item_count = getelementptr inbounds %struct.anon.4, %struct.anon.4* %text, i32 0, i32 0
  %27 = load i32, i32* %item_count, align 4, !tbaa !64
  %cmp10 = icmp ne i32 %27, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.9
  %28 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  call void @do_flush_text(%struct.gx_device_X_s* %28) #5
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end.9
  %29 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs, align 8, !tbaa !2
  %call13 = call i32 @gs_currentmatrix(%struct.gs_state_s* %29, %struct.gs_matrix_s* %smat) #5
  %30 = load %struct.gs_image2_s*, %struct.gs_image2_s** %pim, align 8, !tbaa !2
  %ImageMatrix = getelementptr inbounds %struct.gs_image2_s, %struct.gs_image2_s* %30, i32 0, i32 1
  %call14 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* %ImageMatrix, %struct.gs_matrix_s* %smat, %struct.gs_matrix_s* %smat) #5
  %31 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !2
  %cmp15 = icmp eq %struct.gs_imager_state_s* %31, null
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.end.12
  %32 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !2
  %33 = bitcast %struct.gs_matrix_s* %dmat to i8*
  %34 = bitcast %struct.gs_matrix_s* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 24, i32 4, i1 false), !tbaa.struct !110
  br label %if.end.18

if.else:                                          ; preds = %if.end.12
  %35 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !2
  %36 = bitcast %struct.gs_imager_state_s* %35 to %struct.gs_state_s*
  %call17 = call i32 @gs_currentmatrix(%struct.gs_state_s* %36, %struct.gs_matrix_s* %dmat) #5
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.16
  %xy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %dmat, i32 0, i32 1
  %37 = load float, float* %xy, align 4, !tbaa !46
  %conv = fpext float %37 to double
  %cmp19 = fcmp oeq double %conv, 0.000000e+00
  br i1 %cmp19, label %land.lhs.true, label %lor.lhs.false.24

land.lhs.true:                                    ; preds = %if.end.18
  %yx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %dmat, i32 0, i32 2
  %38 = load float, float* %yx, align 4, !tbaa !48
  %conv21 = fpext float %38 to double
  %cmp22 = fcmp oeq double %conv21, 0.000000e+00
  br i1 %cmp22, label %land.lhs.true.32, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %land.lhs.true, %if.end.18
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %dmat, i32 0, i32 0
  %39 = load float, float* %xx, align 4, !tbaa !44
  %conv25 = fpext float %39 to double
  %cmp26 = fcmp oeq double %conv25, 0.000000e+00
  br i1 %cmp26, label %land.lhs.true.28, label %if.then.52

land.lhs.true.28:                                 ; preds = %lor.lhs.false.24
  %yy = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %dmat, i32 0, i32 3
  %40 = load float, float* %yy, align 4, !tbaa !50
  %conv29 = fpext float %40 to double
  %cmp30 = fcmp oeq double %conv29, 0.000000e+00
  br i1 %cmp30, label %land.lhs.true.32, label %if.then.52

land.lhs.true.32:                                 ; preds = %land.lhs.true.28, %land.lhs.true
  %xx33 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %smat, i32 0, i32 0
  %41 = load float, float* %xx33, align 4, !tbaa !44
  %xx34 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %dmat, i32 0, i32 0
  %42 = load float, float* %xx34, align 4, !tbaa !44
  %cmp35 = fcmp oeq float %41, %42
  br i1 %cmp35, label %land.lhs.true.37, label %if.then.52

land.lhs.true.37:                                 ; preds = %land.lhs.true.32
  %xy38 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %smat, i32 0, i32 1
  %43 = load float, float* %xy38, align 4, !tbaa !46
  %xy39 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %dmat, i32 0, i32 1
  %44 = load float, float* %xy39, align 4, !tbaa !46
  %cmp40 = fcmp oeq float %43, %44
  br i1 %cmp40, label %land.lhs.true.42, label %if.then.52

land.lhs.true.42:                                 ; preds = %land.lhs.true.37
  %yx43 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %smat, i32 0, i32 2
  %45 = load float, float* %yx43, align 4, !tbaa !48
  %yx44 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %dmat, i32 0, i32 2
  %46 = load float, float* %yx44, align 4, !tbaa !48
  %cmp45 = fcmp oeq float %45, %46
  br i1 %cmp45, label %land.lhs.true.47, label %if.then.52

land.lhs.true.47:                                 ; preds = %land.lhs.true.42
  %yy48 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %smat, i32 0, i32 3
  %47 = load float, float* %yy48, align 4, !tbaa !50
  %yy49 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %dmat, i32 0, i32 3
  %48 = load float, float* %yy49, align 4, !tbaa !50
  %cmp50 = fcmp oeq float %47, %48
  br i1 %cmp50, label %if.end.53, label %if.then.52

if.then.52:                                       ; preds = %land.lhs.true.47, %land.lhs.true.42, %land.lhs.true.37, %land.lhs.true.32, %land.lhs.true.28, %lor.lhs.false.24
  br label %punt

if.end.53:                                        ; preds = %land.lhs.true.47
  %49 = bitcast %struct.gs_rect_s* %rect to i8*
  call void @llvm.lifetime.start(i64 32, i8* %49) #2
  %50 = bitcast %struct.gs_rect_s* %src to i8*
  call void @llvm.lifetime.start(i64 32, i8* %50) #2
  %51 = bitcast %struct.gs_rect_s* %dest to i8*
  call void @llvm.lifetime.start(i64 32, i8* %51) #2
  %52 = bitcast %struct.gs_int_point_s* %size to i8*
  call void @llvm.lifetime.start(i64 8, i8* %52) #2
  %53 = bitcast i32* %srcx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %53) #2
  %54 = bitcast i32* %srcy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %54) #2
  %55 = bitcast i32* %destx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #2
  %56 = bitcast i32* %desty to i8*
  call void @llvm.lifetime.start(i64 4, i8* %56) #2
  %p = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %rect, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p, i32 0, i32 1
  store double 0.000000e+00, double* %y, align 8, !tbaa !112
  %p54 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %rect, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p54, i32 0, i32 0
  store double 0.000000e+00, double* %x, align 8, !tbaa !116
  %57 = load %struct.gs_image2_s*, %struct.gs_image2_s** %pim, align 8, !tbaa !2
  %Width = getelementptr inbounds %struct.gs_image2_s, %struct.gs_image2_s* %57, i32 0, i32 5
  %58 = load float, float* %Width, align 4, !tbaa !117
  %conv55 = fpext float %58 to double
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %rect, i32 0, i32 1
  %x56 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q, i32 0, i32 0
  store double %conv55, double* %x56, align 8, !tbaa !118
  %59 = load %struct.gs_image2_s*, %struct.gs_image2_s** %pim, align 8, !tbaa !2
  %Height = getelementptr inbounds %struct.gs_image2_s, %struct.gs_image2_s* %59, i32 0, i32 6
  %60 = load float, float* %Height, align 4, !tbaa !119
  %conv57 = fpext float %60 to double
  %q58 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %rect, i32 0, i32 1
  %y59 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q58, i32 0, i32 1
  store double %conv57, double* %y59, align 8, !tbaa !120
  %call60 = call i32 @gs_bbox_transform(%struct.gs_rect_s* %rect, %struct.gs_matrix_s* %dmat, %struct.gs_rect_s* %dest) #5
  %61 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !2
  %cmp61 = icmp ne %struct.gx_clip_path_s* %61, null
  br i1 %cmp61, label %land.lhs.true.63, label %if.end.82

land.lhs.true.63:                                 ; preds = %if.end.53
  %62 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !2
  %p64 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dest, i32 0, i32 0
  %x65 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p64, i32 0, i32 0
  %63 = load double, double* %x65, align 8, !tbaa !116
  %mul = fmul double %63, 2.560000e+02
  %conv66 = fptosi double %mul to i32
  %p67 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dest, i32 0, i32 0
  %y68 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p67, i32 0, i32 1
  %64 = load double, double* %y68, align 8, !tbaa !112
  %mul69 = fmul double %64, 2.560000e+02
  %conv70 = fptosi double %mul69 to i32
  %q71 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dest, i32 0, i32 1
  %x72 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q71, i32 0, i32 0
  %65 = load double, double* %x72, align 8, !tbaa !118
  %mul73 = fmul double %65, 2.560000e+02
  %conv74 = fptosi double %mul73 to i32
  %q75 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dest, i32 0, i32 1
  %y76 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q75, i32 0, i32 1
  %66 = load double, double* %y76, align 8, !tbaa !120
  %mul77 = fmul double %66, 2.560000e+02
  %conv78 = fptosi double %mul77 to i32
  %call79 = call i32 @gx_cpath_includes_rectangle(%struct.gx_clip_path_s* %62, i32 %conv66, i32 %conv70, i32 %conv74, i32 %conv78) #5
  %tobool80 = icmp ne i32 %call79, 0
  br i1 %tobool80, label %if.end.82, label %if.then.81

if.then.81:                                       ; preds = %land.lhs.true.63
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.82:                                        ; preds = %land.lhs.true.63, %if.end.53
  %67 = load %struct.gs_image2_s*, %struct.gs_image2_s** %pim, align 8, !tbaa !2
  %XOrigin = getelementptr inbounds %struct.gs_image2_s, %struct.gs_image2_s* %67, i32 0, i32 3
  %68 = load float, float* %XOrigin, align 4, !tbaa !121
  %conv83 = fpext float %68 to double
  %p84 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %rect, i32 0, i32 0
  %x85 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p84, i32 0, i32 0
  store double %conv83, double* %x85, align 8, !tbaa !116
  %q86 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %rect, i32 0, i32 1
  %x87 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q86, i32 0, i32 0
  %69 = load double, double* %x87, align 8, !tbaa !118
  %add = fadd double %69, %conv83
  store double %add, double* %x87, align 8, !tbaa !118
  %70 = load %struct.gs_image2_s*, %struct.gs_image2_s** %pim, align 8, !tbaa !2
  %YOrigin = getelementptr inbounds %struct.gs_image2_s, %struct.gs_image2_s* %70, i32 0, i32 4
  %71 = load float, float* %YOrigin, align 4, !tbaa !122
  %conv88 = fpext float %71 to double
  %p89 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %rect, i32 0, i32 0
  %y90 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p89, i32 0, i32 1
  store double %conv88, double* %y90, align 8, !tbaa !112
  %q91 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %rect, i32 0, i32 1
  %y92 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %q91, i32 0, i32 1
  %72 = load double, double* %y92, align 8, !tbaa !120
  %add93 = fadd double %72, %conv88
  store double %add93, double* %y92, align 8, !tbaa !120
  %call94 = call i32 @gs_bbox_transform(%struct.gs_rect_s* %rect, %struct.gs_matrix_s* %smat, %struct.gs_rect_s* %src) #5
  %73 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !2
  %type95 = getelementptr inbounds %struct.gs_image_common_s, %struct.gs_image_common_s* %73, i32 0, i32 0
  %74 = load %struct.gx_image_type_s*, %struct.gx_image_type_s** %type95, align 8, !tbaa !102
  %source_size = getelementptr inbounds %struct.gx_image_type_s, %struct.gx_image_type_s* %74, i32 0, i32 2
  %75 = load i32 (%struct.gs_imager_state_s*, %struct.gs_image_common_s*, %struct.gs_int_point_s*)*, i32 (%struct.gs_imager_state_s*, %struct.gs_image_common_s*, %struct.gs_int_point_s*)** %source_size, align 8, !tbaa !123
  %76 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !2
  %77 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !2
  %call96 = call i32 %75(%struct.gs_imager_state_s* %76, %struct.gs_image_common_s* %77, %struct.gs_int_point_s* %size) #5
  br label %do.body

do.body:                                          ; preds = %if.end.82
  %78 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %fill_style = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %78, i32 0, i32 79
  %79 = load i32, i32* %fill_style, align 4, !tbaa !65
  %cmp97 = icmp ne i32 %79, 0
  br i1 %cmp97, label %if.then.99, label %if.end.102

if.then.99:                                       ; preds = %do.body
  %80 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dpy = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %80, i32 0, i32 58
  %81 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8, !tbaa !55
  %82 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %gc = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %82, i32 0, i32 63
  %83 = load %struct._XGC*, %struct._XGC** %gc, align 8, !tbaa !66
  %84 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %fill_style100 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %84, i32 0, i32 79
  store i32 0, i32* %fill_style100, align 4, !tbaa !65
  %call101 = call i32 @XSetFillStyle(%struct._XDisplay* %81, %struct._XGC* %83, i32 0) #5
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.99, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.102
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.103

do.body.103:                                      ; preds = %do.end
  %85 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %function = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %85, i32 0, i32 78
  %86 = load i32, i32* %function, align 4, !tbaa !70
  %cmp104 = icmp ne i32 %86, 3
  br i1 %cmp104, label %if.then.106, label %if.end.111

if.then.106:                                      ; preds = %do.body.103
  %87 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dpy107 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %87, i32 0, i32 58
  %88 = load %struct._XDisplay*, %struct._XDisplay** %dpy107, align 8, !tbaa !55
  %89 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %gc108 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %89, i32 0, i32 63
  %90 = load %struct._XGC*, %struct._XGC** %gc108, align 8, !tbaa !66
  %91 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %function109 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %91, i32 0, i32 78
  store i32 3, i32* %function109, align 4, !tbaa !70
  %call110 = call i32 @XSetFunction(%struct._XDisplay* %88, %struct._XGC* %90, i32 3) #5
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.106, %do.body.103
  br label %do.cond.112

do.cond.112:                                      ; preds = %if.end.111
  br label %do.end.113

do.end.113:                                       ; preds = %do.cond.112
  %p114 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %src, i32 0, i32 0
  %x115 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p114, i32 0, i32 0
  %92 = load double, double* %x115, align 8, !tbaa !116
  %add116 = fadd double %92, 5.000000e-01
  %conv117 = fptosi double %add116 to i32
  store i32 %conv117, i32* %srcx, align 4, !tbaa !41
  %p118 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %src, i32 0, i32 0
  %y119 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p118, i32 0, i32 1
  %93 = load double, double* %y119, align 8, !tbaa !112
  %add120 = fadd double %93, 5.000000e-01
  %conv121 = fptosi double %add120 to i32
  store i32 %conv121, i32* %srcy, align 4, !tbaa !41
  %p122 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dest, i32 0, i32 0
  %x123 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p122, i32 0, i32 0
  %94 = load double, double* %x123, align 8, !tbaa !116
  %add124 = fadd double %94, 5.000000e-01
  %conv125 = fptosi double %add124 to i32
  store i32 %conv125, i32* %destx, align 4, !tbaa !41
  %p126 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %dest, i32 0, i32 0
  %y127 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %p126, i32 0, i32 1
  %95 = load double, double* %y127, align 8, !tbaa !112
  %add128 = fadd double %95, 5.000000e-01
  %conv129 = fptosi double %add128 to i32
  store i32 %conv129, i32* %desty, align 4, !tbaa !41
  %96 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dpy130 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %96, i32 0, i32 58
  %97 = load %struct._XDisplay*, %struct._XDisplay** %dpy130, align 8, !tbaa !55
  %98 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %bpixmap = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %98, i32 0, i32 65
  %99 = load i64, i64* %bpixmap, align 8, !tbaa !76
  %100 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %bpixmap131 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %100, i32 0, i32 65
  %101 = load i64, i64* %bpixmap131, align 8, !tbaa !76
  %102 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %gc132 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %102, i32 0, i32 63
  %103 = load %struct._XGC*, %struct._XGC** %gc132, align 8, !tbaa !66
  %104 = load i32, i32* %srcx, align 4, !tbaa !41
  %105 = load i32, i32* %srcy, align 4, !tbaa !41
  %x133 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size, i32 0, i32 0
  %106 = load i32, i32* %x133, align 4, !tbaa !124
  %y134 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size, i32 0, i32 1
  %107 = load i32, i32* %y134, align 4, !tbaa !125
  %108 = load i32, i32* %destx, align 4, !tbaa !41
  %109 = load i32, i32* %desty, align 4, !tbaa !41
  %call135 = call i32 @XCopyArea(%struct._XDisplay* %97, i64 %99, i64 %101, %struct._XGC* %103, i32 %104, i32 %105, i32 %106, i32 %107, i32 %108, i32 %109) #5
  %110 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %111 = load i32, i32* %destx, align 4, !tbaa !41
  %112 = load i32, i32* %desty, align 4, !tbaa !41
  %x136 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size, i32 0, i32 0
  %113 = load i32, i32* %x136, align 4, !tbaa !124
  %y137 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size, i32 0, i32 1
  %114 = load i32, i32* %y137, align 4, !tbaa !125
  call void @x_update_add(%struct.gx_device_X_s* %110, i32 %111, i32 %112, i32 %113, i32 %114) #5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.81, %do.end.113
  %115 = bitcast i32* %desty to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #2
  %116 = bitcast i32* %destx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #2
  %117 = bitcast i32* %srcy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #2
  %118 = bitcast i32* %srcx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #2
  %119 = bitcast %struct.gs_int_point_s* %size to i8*
  call void @llvm.lifetime.end(i64 8, i8* %119) #2
  %120 = bitcast %struct.gs_rect_s* %dest to i8*
  call void @llvm.lifetime.end(i64 32, i8* %120) #2
  %121 = bitcast %struct.gs_rect_s* %src to i8*
  call void @llvm.lifetime.end(i64 32, i8* %121) #2
  %122 = bitcast %struct.gs_rect_s* %rect to i8*
  call void @llvm.lifetime.end(i64 32, i8* %122) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.146 [
    i32 0, label %cleanup.cont
    i32 2, label %punt
  ]

cleanup.cont:                                     ; preds = %cleanup
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.146

punt:                                             ; preds = %cleanup, %if.then.52, %if.then.8, %if.then.1, %if.then
  %123 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %124 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !2
  %125 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !2
  %126 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !2
  %127 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !2
  %128 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !2
  %129 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !2
  %130 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !2
  %131 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !2
  %call145 = call i32 @gx_default_begin_typed_image(%struct.gx_device_s* %123, %struct.gs_imager_state_s* %124, %struct.gs_matrix_s* %125, %struct.gs_image_common_s* %126, %struct.gs_int_rect_s* %127, %struct.gx_device_color_s* %128, %struct.gx_clip_path_s* %129, %struct.gs_memory_s* %130, %struct.gx_image_enum_common_s** %131) #5
  store i32 %call145, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.146

cleanup.146:                                      ; preds = %punt, %cleanup.cont, %cleanup
  %132 = bitcast %struct.gs_matrix_s* %dmat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %132) #2
  %133 = bitcast %struct.gs_matrix_s* %smat to i8*
  call void @llvm.lifetime.end(i64 24, i8* %133) #2
  %134 = bitcast %struct.gx_device_s** %sdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %134) #2
  %135 = bitcast %struct.gs_state_s** %pgs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %135) #2
  %136 = bitcast %struct.gs_image2_s** %pim to i8*
  call void @llvm.lifetime.end(i64 8, i8* %136) #2
  %137 = bitcast %struct.gx_device_X_s** %xdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %137) #2
  %138 = load i32, i32* %retval
  ret i32 %138
}

; Function Attrs: nounwind uwtable
define internal i32 @x_get_bits_rectangle(%struct.gx_device_s* %dev, %struct.gs_int_rect_s* %prect, %struct.gs_get_bits_params_s* %params, %struct.gs_int_rect_s** %unread) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %prect.addr = alloca %struct.gs_int_rect_s*, align 8
  %params.addr = alloca %struct.gs_get_bits_params_s*, align 8
  %unread.addr = alloca %struct.gs_int_rect_s**, align 8
  %xdev = alloca %struct.gx_device_X_s*, align 8
  %depth = alloca i32, align 4
  %x0 = alloca i32, align 4
  %y0 = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %width_bytes = alloca i32, align 4
  %band = alloca i32, align 4
  %default_raster = alloca i32, align 4
  %options = alloca i64, align 8
  %raster = alloca i32, align 4
  %plane_mask = alloca i64, align 8
  %y15 = alloca i32, align 4
  %h = alloca i32, align 4
  %image = alloca %struct._XImage*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %cy = alloca i32, align 4
  %source = alloca i8*, align 8
  %dest110 = alloca i8*, align 8
  %cx = alloca i32, align 4
  %p141 = alloca i8*, align 8
  %q142 = alloca i8*, align 8
  %step = alloca i32, align 4
  %cx192 = alloca i32, align 4
  %p193 = alloca i8*, align 8
  %q194 = alloca i8*, align 8
  %step195 = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  store %struct.gs_int_rect_s* %prect, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !2
  store %struct.gs_get_bits_params_s* %params, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !2
  store %struct.gs_int_rect_s** %unread, %struct.gs_int_rect_s*** %unread.addr, align 8, !tbaa !2
  %0 = bitcast %struct.gx_device_X_s** %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_X_s*
  store %struct.gx_device_X_s* %2, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %3 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 11
  %depth1 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %5 = load i16, i16* %depth1, align 2, !tbaa !126
  %conv = zext i16 %5 to i32
  store i32 %conv, i32* %depth, align 4, !tbaa !41
  %6 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !2
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %7, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  %8 = load i32, i32* %x, align 4, !tbaa !127
  store i32 %8, i32* %x0, align 4, !tbaa !41
  %9 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !2
  %p2 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %10, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p2, i32 0, i32 1
  %11 = load i32, i32* %y, align 4, !tbaa !128
  store i32 %11, i32* %y0, align 4, !tbaa !41
  %12 = bitcast i32* %x1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !2
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %13, i32 0, i32 1
  %x3 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  %14 = load i32, i32* %x3, align 4, !tbaa !129
  store i32 %14, i32* %x1, align 4, !tbaa !41
  %15 = bitcast i32* %y1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !2
  %q4 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %16, i32 0, i32 1
  %y5 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q4, i32 0, i32 1
  %17 = load i32, i32* %y5, align 4, !tbaa !130
  store i32 %17, i32* %y1, align 4, !tbaa !41
  %18 = bitcast i32* %width_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = load i32, i32* %x1, align 4, !tbaa !41
  %20 = load i32, i32* %x0, align 4, !tbaa !41
  %sub = sub nsw i32 %19, %20
  %21 = load i32, i32* %depth, align 4, !tbaa !41
  %mul = mul nsw i32 %sub, %21
  %add = add nsw i32 %mul, 7
  %shr = ashr i32 %add, 3
  store i32 %shr, i32* %width_bytes, align 4, !tbaa !41
  %22 = bitcast i32* %band to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #2
  %23 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %MaxTempImage = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %23, i32 0, i32 99
  %24 = load i32, i32* %MaxTempImage, align 4, !tbaa !131
  %25 = load i32, i32* %width_bytes, align 4, !tbaa !41
  %div = udiv i32 %24, %25
  store i32 %div, i32* %band, align 4, !tbaa !41
  %26 = bitcast i32* %default_raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #2
  %27 = load i32, i32* %x1, align 4, !tbaa !41
  %28 = load i32, i32* %x0, align 4, !tbaa !41
  %sub6 = sub nsw i32 %27, %28
  %29 = load i32, i32* %depth, align 4, !tbaa !41
  %mul7 = mul nsw i32 %sub6, %29
  %add8 = add nsw i32 %mul7, 63
  %shr9 = ashr i32 %add8, 6
  %shl = shl i32 %shr9, 3
  store i32 %shl, i32* %default_raster, align 4, !tbaa !41
  %30 = bitcast i64* %options to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #2
  %31 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !2
  %options10 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %31, i32 0, i32 0
  %32 = load i64, i64* %options10, align 8, !tbaa !132
  store i64 %32, i64* %options, align 8, !tbaa !60
  %33 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #2
  %34 = load i64, i64* %options, align 8, !tbaa !60
  %and = and i64 %34, 536870912
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %35 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !2
  %raster11 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %35, i32 0, i32 4
  %36 = load i32, i32* %raster11, align 4, !tbaa !134
  br label %cond.end

cond.false:                                       ; preds = %entry
  %37 = load i32, i32* %default_raster, align 4, !tbaa !41
  %38 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !2
  %raster12 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %38, i32 0, i32 4
  store i32 %37, i32* %raster12, align 4, !tbaa !134
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %36, %cond.true ], [ %37, %cond.false ]
  store i32 %cond, i32* %raster, align 4, !tbaa !41
  %39 = bitcast i64* %plane_mask to i8*
  call void @llvm.lifetime.start(i64 8, i8* %39) #2
  %40 = load i32, i32* %depth, align 4, !tbaa !41
  %sh_prom = zext i32 %40 to i64
  %shl13 = shl i64 1, %sh_prom
  %sub14 = sub nsw i64 %shl13, 1
  store i64 %sub14, i64* %plane_mask, align 8, !tbaa !60
  %41 = bitcast i32* %y15 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #2
  %42 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #2
  %43 = bitcast %struct._XImage** %image to i8*
  call void @llvm.lifetime.start(i64 8, i8* %43) #2
  %44 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #2
  store i32 0, i32* %code, align 4, !tbaa !41
  %45 = load i32, i32* %x0, align 4, !tbaa !41
  %cmp = icmp slt i32 %45, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %46 = load i32, i32* %y0, align 4, !tbaa !41
  %cmp17 = icmp slt i32 %46, 0
  br i1 %cmp17, label %if.then, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %lor.lhs.false
  %47 = load i32, i32* %x1, align 4, !tbaa !41
  %48 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %48, i32 0, i32 13
  %49 = load i32, i32* %width, align 4, !tbaa !61
  %cmp20 = icmp sgt i32 %47, %49
  br i1 %cmp20, label %if.then, label %lor.lhs.false.22

lor.lhs.false.22:                                 ; preds = %lor.lhs.false.19
  %50 = load i32, i32* %y1, align 4, !tbaa !41
  %51 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %51, i32 0, i32 14
  %52 = load i32, i32* %height, align 4, !tbaa !63
  %cmp23 = icmp sgt i32 %50, %52
  br i1 %cmp23, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.22, %lor.lhs.false.19, %lor.lhs.false, %cond.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.22
  %53 = load i64, i64* %options, align 8, !tbaa !60
  %and25 = and i64 %53, 33554432
  %tobool26 = icmp ne i64 %and25, 0
  br i1 %tobool26, label %land.lhs.true, label %if.end.31

land.lhs.true:                                    ; preds = %if.end
  %54 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !2
  %x_offset = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %54, i32 0, i32 2
  %55 = load i32, i32* %x_offset, align 4, !tbaa !135
  %cmp27 = icmp eq i32 %55, 0
  br i1 %cmp27, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %land.lhs.true
  %56 = load i64, i64* %options, align 8, !tbaa !60
  %and30 = and i64 %56, -33554433
  %or = or i64 %and30, 16777216
  store i64 %or, i64* %options, align 8, !tbaa !60
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %land.lhs.true, %if.end
  %57 = load i64, i64* %options, align 8, !tbaa !60
  %neg = xor i64 %57, -1
  %and32 = and i64 %neg, 17891329
  %tobool33 = icmp ne i64 %and32, 0
  br i1 %tobool33, label %if.then.40, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %if.end.31
  %58 = load i64, i64* %options, align 8, !tbaa !60
  %and35 = and i64 %58, 12582912
  %tobool36 = icmp ne i64 %and35, 0
  br i1 %tobool36, label %lor.lhs.false.37, label %if.then.40

lor.lhs.false.37:                                 ; preds = %lor.lhs.false.34
  %59 = load i64, i64* %options, align 8, !tbaa !60
  %and38 = and i64 %59, 1879048192
  %tobool39 = icmp ne i64 %and38, 0
  br i1 %tobool39, label %if.end.41, label %if.then.40

if.then.40:                                       ; preds = %lor.lhs.false.37, %lor.lhs.false.34, %if.end.31
  %60 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %61 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !2
  %62 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !2
  %63 = load %struct.gs_int_rect_s**, %struct.gs_int_rect_s*** %unread.addr, align 8, !tbaa !2
  %call = call i32 @gx_default_get_bits_rectangle(%struct.gx_device_s* %60, %struct.gs_int_rect_s* %61, %struct.gs_get_bits_params_s* %62, %struct.gs_int_rect_s** %63) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.41:                                        ; preds = %lor.lhs.false.37
  %64 = load i64, i64* %options, align 8, !tbaa !60
  %and42 = and i64 %64, 12582912
  %or43 = or i64 17891345, %and42
  %65 = load i64, i64* %options, align 8, !tbaa !60
  %and44 = and i64 %65, 536870912
  %tobool45 = icmp ne i64 %and44, 0
  %cond46 = select i1 %tobool45, i64 536870912, i64 268435456
  %or47 = or i64 %or43, %cond46
  %66 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !2
  %options48 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %66, i32 0, i32 0
  store i64 %or47, i64* %options48, align 8, !tbaa !132
  %67 = load i32, i32* %x0, align 4, !tbaa !41
  %68 = load i32, i32* %x1, align 4, !tbaa !41
  %cmp49 = icmp sge i32 %67, %68
  br i1 %cmp49, label %if.then.54, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %if.end.41
  %69 = load i32, i32* %y0, align 4, !tbaa !41
  %70 = load i32, i32* %y1, align 4, !tbaa !41
  %cmp52 = icmp sge i32 %69, %70
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %lor.lhs.false.51, %if.end.41
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.55:                                        ; preds = %lor.lhs.false.51
  %71 = load i32, i32* %x1, align 4, !tbaa !41
  %72 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %update = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %72, i32 0, i32 72
  %box = getelementptr inbounds %struct.anon, %struct.anon* %update, i32 0, i32 0
  %p56 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %box, i32 0, i32 0
  %x57 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p56, i32 0, i32 0
  %73 = load i32, i32* %x57, align 4, !tbaa !136
  %cmp58 = icmp sle i32 %71, %73
  br i1 %cmp58, label %if.then.81, label %lor.lhs.false.60

lor.lhs.false.60:                                 ; preds = %if.end.55
  %74 = load i32, i32* %x0, align 4, !tbaa !41
  %75 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %update61 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %75, i32 0, i32 72
  %box62 = getelementptr inbounds %struct.anon, %struct.anon* %update61, i32 0, i32 0
  %q63 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %box62, i32 0, i32 1
  %x64 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q63, i32 0, i32 0
  %76 = load i32, i32* %x64, align 4, !tbaa !137
  %cmp65 = icmp sge i32 %74, %76
  br i1 %cmp65, label %if.then.81, label %lor.lhs.false.67

lor.lhs.false.67:                                 ; preds = %lor.lhs.false.60
  %77 = load i32, i32* %y1, align 4, !tbaa !41
  %78 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %update68 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %78, i32 0, i32 72
  %box69 = getelementptr inbounds %struct.anon, %struct.anon* %update68, i32 0, i32 0
  %p70 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %box69, i32 0, i32 0
  %y71 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p70, i32 0, i32 1
  %79 = load i32, i32* %y71, align 4, !tbaa !138
  %cmp72 = icmp sle i32 %77, %79
  br i1 %cmp72, label %if.then.81, label %lor.lhs.false.74

lor.lhs.false.74:                                 ; preds = %lor.lhs.false.67
  %80 = load i32, i32* %y0, align 4, !tbaa !41
  %81 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %update75 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %81, i32 0, i32 72
  %box76 = getelementptr inbounds %struct.anon, %struct.anon* %update75, i32 0, i32 0
  %q77 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %box76, i32 0, i32 1
  %y78 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q77, i32 0, i32 1
  %82 = load i32, i32* %y78, align 4, !tbaa !139
  %cmp79 = icmp sge i32 %80, %82
  br i1 %cmp79, label %if.then.81, label %if.else

if.then.81:                                       ; preds = %lor.lhs.false.74, %lor.lhs.false.67, %lor.lhs.false.60, %if.end.55
  %83 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %text = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %83, i32 0, i32 100
  %item_count = getelementptr inbounds %struct.anon.4, %struct.anon.4* %text, i32 0, i32 0
  %84 = load i32, i32* %item_count, align 4, !tbaa !64
  %cmp82 = icmp ne i32 %84, 0
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.then.81
  %85 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  call void @do_flush_text(%struct.gx_device_X_s* %85) #5
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.84, %if.then.81
  br label %if.end.86

if.else:                                          ; preds = %lor.lhs.false.74
  %86 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  call void @update_do_flush(%struct.gx_device_X_s* %86) #5
  br label %if.end.86

if.end.86:                                        ; preds = %if.else, %if.end.85
  %87 = load i32, i32* %band, align 4, !tbaa !41
  %cmp87 = icmp eq i32 %87, 0
  br i1 %cmp87, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %if.end.86
  store i32 1, i32* %band, align 4, !tbaa !41
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.89, %if.end.86
  %88 = load i32, i32* %y0, align 4, !tbaa !41
  store i32 %88, i32* %y15, align 4, !tbaa !41
  br label %for.cond

for.cond:                                         ; preds = %for.inc.243, %if.end.90
  %89 = load i32, i32* %y15, align 4, !tbaa !41
  %90 = load i32, i32* %y1, align 4, !tbaa !41
  %cmp91 = icmp slt i32 %89, %90
  br i1 %cmp91, label %for.body, label %for.end.245

for.body:                                         ; preds = %for.cond
  %91 = bitcast i32* %cy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %91) #2
  %92 = load i32, i32* %band, align 4, !tbaa !41
  %93 = load i32, i32* %y1, align 4, !tbaa !41
  %94 = load i32, i32* %y15, align 4, !tbaa !41
  %sub93 = sub nsw i32 %93, %94
  %cmp94 = icmp ult i32 %92, %sub93
  br i1 %cmp94, label %cond.true.96, label %cond.false.97

cond.true.96:                                     ; preds = %for.body
  %95 = load i32, i32* %band, align 4, !tbaa !41
  br label %cond.end.99

cond.false.97:                                    ; preds = %for.body
  %96 = load i32, i32* %y1, align 4, !tbaa !41
  %97 = load i32, i32* %y15, align 4, !tbaa !41
  %sub98 = sub nsw i32 %96, %97
  br label %cond.end.99

cond.end.99:                                      ; preds = %cond.false.97, %cond.true.96
  %cond100 = phi i32 [ %95, %cond.true.96 ], [ %sub98, %cond.false.97 ]
  store i32 %cond100, i32* %h, align 4, !tbaa !41
  %98 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dpy = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %98, i32 0, i32 58
  %99 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8, !tbaa !55
  %100 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dest = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %100, i32 0, i32 73
  %101 = load i64, i64* %dest, align 8, !tbaa !71
  %102 = load i32, i32* %x0, align 4, !tbaa !41
  %103 = load i32, i32* %y15, align 4, !tbaa !41
  %104 = load i32, i32* %x1, align 4, !tbaa !41
  %105 = load i32, i32* %x0, align 4, !tbaa !41
  %sub101 = sub nsw i32 %104, %105
  %106 = load i32, i32* %h, align 4, !tbaa !41
  %107 = load i64, i64* %plane_mask, align 8, !tbaa !60
  %call102 = call %struct._XImage* @XGetImage(%struct._XDisplay* %99, i64 %101, i32 %102, i32 %103, i32 %sub101, i32 %106, i64 %107, i32 2) #5
  store %struct._XImage* %call102, %struct._XImage** %image, align 8, !tbaa !2
  %108 = load i32, i32* %y15, align 4, !tbaa !41
  store i32 %108, i32* %cy, align 4, !tbaa !41
  br label %for.cond.103

for.cond.103:                                     ; preds = %for.inc.239, %cond.end.99
  %109 = load i32, i32* %cy, align 4, !tbaa !41
  %110 = load i32, i32* %y15, align 4, !tbaa !41
  %111 = load i32, i32* %h, align 4, !tbaa !41
  %add104 = add nsw i32 %110, %111
  %cmp105 = icmp slt i32 %109, %add104
  br i1 %cmp105, label %for.body.107, label %for.end.241

for.body.107:                                     ; preds = %for.cond.103
  %112 = bitcast i8** %source to i8*
  call void @llvm.lifetime.start(i64 8, i8* %112) #2
  %113 = load %struct._XImage*, %struct._XImage** %image, align 8, !tbaa !2
  %data = getelementptr inbounds %struct._XImage, %struct._XImage* %113, i32 0, i32 4
  %114 = load i8*, i8** %data, align 8, !tbaa !140
  %115 = load i32, i32* %cy, align 4, !tbaa !41
  %116 = load i32, i32* %y15, align 4, !tbaa !41
  %sub108 = sub nsw i32 %115, %116
  %117 = load %struct._XImage*, %struct._XImage** %image, align 8, !tbaa !2
  %bytes_per_line = getelementptr inbounds %struct._XImage, %struct._XImage* %117, i32 0, i32 10
  %118 = load i32, i32* %bytes_per_line, align 4, !tbaa !141
  %mul109 = mul nsw i32 %sub108, %118
  %idx.ext = sext i32 %mul109 to i64
  %add.ptr = getelementptr inbounds i8, i8* %114, i64 %idx.ext
  store i8* %add.ptr, i8** %source, align 8, !tbaa !2
  %119 = bitcast i8** %dest110 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %119) #2
  %120 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !2
  %data111 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %120, i32 0, i32 1
  %arrayidx = getelementptr inbounds [64 x i8*], [64 x i8*]* %data111, i32 0, i64 0
  %121 = load i8*, i8** %arrayidx, align 8, !tbaa !2
  %122 = load i32, i32* %cy, align 4, !tbaa !41
  %123 = load i32, i32* %y0, align 4, !tbaa !41
  %sub112 = sub nsw i32 %122, %123
  %124 = load i32, i32* %raster, align 4, !tbaa !41
  %mul113 = mul i32 %sub112, %124
  %idx.ext114 = zext i32 %mul113 to i64
  %add.ptr115 = getelementptr inbounds i8, i8* %121, i64 %idx.ext114
  store i8* %add.ptr115, i8** %dest110, align 8, !tbaa !2
  %125 = load %struct._XImage*, %struct._XImage** %image, align 8, !tbaa !2
  %bits_per_pixel = getelementptr inbounds %struct._XImage, %struct._XImage* %125, i32 0, i32 11
  %126 = load i32, i32* %bits_per_pixel, align 4, !tbaa !142
  %127 = load %struct._XImage*, %struct._XImage** %image, align 8, !tbaa !2
  %depth116 = getelementptr inbounds %struct._XImage, %struct._XImage* %127, i32 0, i32 9
  %128 = load i32, i32* %depth116, align 4, !tbaa !143
  %cmp117 = icmp eq i32 %126, %128
  br i1 %cmp117, label %land.lhs.true.119, label %if.else.136

land.lhs.true.119:                                ; preds = %for.body.107
  %129 = load %struct._XImage*, %struct._XImage** %image, align 8, !tbaa !2
  %depth120 = getelementptr inbounds %struct._XImage, %struct._XImage* %129, i32 0, i32 9
  %130 = load i32, i32* %depth120, align 4, !tbaa !143
  %cmp121 = icmp sgt i32 %130, 1
  br i1 %cmp121, label %land.lhs.true.126, label %lor.lhs.false.123

lor.lhs.false.123:                                ; preds = %land.lhs.true.119
  %131 = load %struct._XImage*, %struct._XImage** %image, align 8, !tbaa !2
  %bitmap_bit_order = getelementptr inbounds %struct._XImage, %struct._XImage* %131, i32 0, i32 7
  %132 = load i32, i32* %bitmap_bit_order, align 4, !tbaa !144
  %cmp124 = icmp eq i32 %132, 1
  br i1 %cmp124, label %land.lhs.true.126, label %if.else.136

land.lhs.true.126:                                ; preds = %lor.lhs.false.123, %land.lhs.true.119
  %133 = load %struct._XImage*, %struct._XImage** %image, align 8, !tbaa !2
  %byte_order = getelementptr inbounds %struct._XImage, %struct._XImage* %133, i32 0, i32 5
  %134 = load i32, i32* %byte_order, align 4, !tbaa !145
  %cmp127 = icmp eq i32 %134, 1
  br i1 %cmp127, label %if.then.133, label %lor.lhs.false.129

lor.lhs.false.129:                                ; preds = %land.lhs.true.126
  %135 = load %struct._XImage*, %struct._XImage** %image, align 8, !tbaa !2
  %depth130 = getelementptr inbounds %struct._XImage, %struct._XImage* %135, i32 0, i32 9
  %136 = load i32, i32* %depth130, align 4, !tbaa !143
  %cmp131 = icmp sle i32 %136, 8
  br i1 %cmp131, label %if.then.133, label %if.else.136

if.then.133:                                      ; preds = %lor.lhs.false.129, %land.lhs.true.126
  %137 = load i8*, i8** %dest110, align 8, !tbaa !2
  %138 = load i8*, i8** %source, align 8, !tbaa !2
  %139 = load i32, i32* %width_bytes, align 4, !tbaa !41
  %conv134 = zext i32 %139 to i64
  %call135 = call i8* @memcpy(i8* %137, i8* %138, i64 %conv134) #7
  br label %if.end.238

if.else.136:                                      ; preds = %lor.lhs.false.129, %lor.lhs.false.123, %for.body.107
  %140 = load %struct._XImage*, %struct._XImage** %image, align 8, !tbaa !2
  %depth137 = getelementptr inbounds %struct._XImage, %struct._XImage* %140, i32 0, i32 9
  %141 = load i32, i32* %depth137, align 4, !tbaa !143
  %cmp138 = icmp eq i32 %141, 24
  br i1 %cmp138, label %if.then.140, label %if.else.183

if.then.140:                                      ; preds = %if.else.136
  %142 = bitcast i32* %cx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %142) #2
  %143 = bitcast i8** %p141 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %143) #2
  %144 = load i8*, i8** %source, align 8, !tbaa !2
  store i8* %144, i8** %p141, align 8, !tbaa !2
  %145 = bitcast i8** %q142 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %145) #2
  %146 = load i8*, i8** %dest110, align 8, !tbaa !2
  store i8* %146, i8** %q142, align 8, !tbaa !2
  %147 = bitcast i32* %step to i8*
  call void @llvm.lifetime.start(i64 4, i8* %147) #2
  %148 = load %struct._XImage*, %struct._XImage** %image, align 8, !tbaa !2
  %bits_per_pixel143 = getelementptr inbounds %struct._XImage, %struct._XImage* %148, i32 0, i32 11
  %149 = load i32, i32* %bits_per_pixel143, align 4, !tbaa !142
  %shr144 = ashr i32 %149, 3
  store i32 %shr144, i32* %step, align 4, !tbaa !41
  %150 = load %struct._XImage*, %struct._XImage** %image, align 8, !tbaa !2
  %byte_order145 = getelementptr inbounds %struct._XImage, %struct._XImage* %150, i32 0, i32 5
  %151 = load i32, i32* %byte_order145, align 4, !tbaa !145
  %cmp146 = icmp eq i32 %151, 1
  br i1 %cmp146, label %if.then.148, label %if.else.165

if.then.148:                                      ; preds = %if.then.140
  %152 = load i32, i32* %step, align 4, !tbaa !41
  %sub149 = sub nsw i32 %152, 3
  %153 = load i8*, i8** %p141, align 8, !tbaa !2
  %idx.ext150 = sext i32 %sub149 to i64
  %add.ptr151 = getelementptr inbounds i8, i8* %153, i64 %idx.ext150
  store i8* %add.ptr151, i8** %p141, align 8, !tbaa !2
  %154 = load i32, i32* %x0, align 4, !tbaa !41
  store i32 %154, i32* %cx, align 4, !tbaa !41
  br label %for.cond.152

for.cond.152:                                     ; preds = %for.inc, %if.then.148
  %155 = load i32, i32* %cx, align 4, !tbaa !41
  %156 = load i32, i32* %x1, align 4, !tbaa !41
  %cmp153 = icmp slt i32 %155, %156
  br i1 %cmp153, label %for.body.155, label %for.end

for.body.155:                                     ; preds = %for.cond.152
  %157 = load i8*, i8** %p141, align 8, !tbaa !2
  %arrayidx156 = getelementptr inbounds i8, i8* %157, i64 0
  %158 = load i8, i8* %arrayidx156, align 1, !tbaa !97
  %159 = load i8*, i8** %q142, align 8, !tbaa !2
  %arrayidx157 = getelementptr inbounds i8, i8* %159, i64 0
  store i8 %158, i8* %arrayidx157, align 1, !tbaa !97
  %160 = load i8*, i8** %p141, align 8, !tbaa !2
  %arrayidx158 = getelementptr inbounds i8, i8* %160, i64 1
  %161 = load i8, i8* %arrayidx158, align 1, !tbaa !97
  %162 = load i8*, i8** %q142, align 8, !tbaa !2
  %arrayidx159 = getelementptr inbounds i8, i8* %162, i64 1
  store i8 %161, i8* %arrayidx159, align 1, !tbaa !97
  %163 = load i8*, i8** %p141, align 8, !tbaa !2
  %arrayidx160 = getelementptr inbounds i8, i8* %163, i64 2
  %164 = load i8, i8* %arrayidx160, align 1, !tbaa !97
  %165 = load i8*, i8** %q142, align 8, !tbaa !2
  %arrayidx161 = getelementptr inbounds i8, i8* %165, i64 2
  store i8 %164, i8* %arrayidx161, align 1, !tbaa !97
  br label %for.inc

for.inc:                                          ; preds = %for.body.155
  %166 = load i32, i32* %step, align 4, !tbaa !41
  %167 = load i8*, i8** %p141, align 8, !tbaa !2
  %idx.ext162 = sext i32 %166 to i64
  %add.ptr163 = getelementptr inbounds i8, i8* %167, i64 %idx.ext162
  store i8* %add.ptr163, i8** %p141, align 8, !tbaa !2
  %168 = load i8*, i8** %q142, align 8, !tbaa !2
  %add.ptr164 = getelementptr inbounds i8, i8* %168, i64 3
  store i8* %add.ptr164, i8** %q142, align 8, !tbaa !2
  %169 = load i32, i32* %cx, align 4, !tbaa !41
  %inc = add nsw i32 %169, 1
  store i32 %inc, i32* %cx, align 4, !tbaa !41
  br label %for.cond.152

for.end:                                          ; preds = %for.cond.152
  br label %if.end.182

if.else.165:                                      ; preds = %if.then.140
  %170 = load i32, i32* %x0, align 4, !tbaa !41
  store i32 %170, i32* %cx, align 4, !tbaa !41
  br label %for.cond.166

for.cond.166:                                     ; preds = %for.inc.176, %if.else.165
  %171 = load i32, i32* %cx, align 4, !tbaa !41
  %172 = load i32, i32* %x1, align 4, !tbaa !41
  %cmp167 = icmp slt i32 %171, %172
  br i1 %cmp167, label %for.body.169, label %for.end.181

for.body.169:                                     ; preds = %for.cond.166
  %173 = load i8*, i8** %p141, align 8, !tbaa !2
  %arrayidx170 = getelementptr inbounds i8, i8* %173, i64 2
  %174 = load i8, i8* %arrayidx170, align 1, !tbaa !97
  %175 = load i8*, i8** %q142, align 8, !tbaa !2
  %arrayidx171 = getelementptr inbounds i8, i8* %175, i64 0
  store i8 %174, i8* %arrayidx171, align 1, !tbaa !97
  %176 = load i8*, i8** %p141, align 8, !tbaa !2
  %arrayidx172 = getelementptr inbounds i8, i8* %176, i64 1
  %177 = load i8, i8* %arrayidx172, align 1, !tbaa !97
  %178 = load i8*, i8** %q142, align 8, !tbaa !2
  %arrayidx173 = getelementptr inbounds i8, i8* %178, i64 1
  store i8 %177, i8* %arrayidx173, align 1, !tbaa !97
  %179 = load i8*, i8** %p141, align 8, !tbaa !2
  %arrayidx174 = getelementptr inbounds i8, i8* %179, i64 0
  %180 = load i8, i8* %arrayidx174, align 1, !tbaa !97
  %181 = load i8*, i8** %q142, align 8, !tbaa !2
  %arrayidx175 = getelementptr inbounds i8, i8* %181, i64 2
  store i8 %180, i8* %arrayidx175, align 1, !tbaa !97
  br label %for.inc.176

for.inc.176:                                      ; preds = %for.body.169
  %182 = load i32, i32* %step, align 4, !tbaa !41
  %183 = load i8*, i8** %p141, align 8, !tbaa !2
  %idx.ext177 = sext i32 %182 to i64
  %add.ptr178 = getelementptr inbounds i8, i8* %183, i64 %idx.ext177
  store i8* %add.ptr178, i8** %p141, align 8, !tbaa !2
  %184 = load i8*, i8** %q142, align 8, !tbaa !2
  %add.ptr179 = getelementptr inbounds i8, i8* %184, i64 3
  store i8* %add.ptr179, i8** %q142, align 8, !tbaa !2
  %185 = load i32, i32* %cx, align 4, !tbaa !41
  %inc180 = add nsw i32 %185, 1
  store i32 %inc180, i32* %cx, align 4, !tbaa !41
  br label %for.cond.166

for.end.181:                                      ; preds = %for.cond.166
  br label %if.end.182

if.end.182:                                       ; preds = %for.end.181, %for.end
  %186 = bitcast i32* %step to i8*
  call void @llvm.lifetime.end(i64 4, i8* %186) #2
  %187 = bitcast i8** %q142 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %187) #2
  %188 = bitcast i8** %p141 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %188) #2
  %189 = bitcast i32* %cx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %189) #2
  br label %if.end.237

if.else.183:                                      ; preds = %if.else.136
  %190 = load %struct._XImage*, %struct._XImage** %image, align 8, !tbaa !2
  %depth184 = getelementptr inbounds %struct._XImage, %struct._XImage* %190, i32 0, i32 9
  %191 = load i32, i32* %depth184, align 4, !tbaa !143
  %cmp185 = icmp eq i32 %191, 16
  br i1 %cmp185, label %if.then.191, label %lor.lhs.false.187

lor.lhs.false.187:                                ; preds = %if.else.183
  %192 = load %struct._XImage*, %struct._XImage** %image, align 8, !tbaa !2
  %depth188 = getelementptr inbounds %struct._XImage, %struct._XImage* %192, i32 0, i32 9
  %193 = load i32, i32* %depth188, align 4, !tbaa !143
  %cmp189 = icmp eq i32 %193, 15
  br i1 %cmp189, label %if.then.191, label %if.else.235

if.then.191:                                      ; preds = %lor.lhs.false.187, %if.else.183
  %194 = bitcast i32* %cx192 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %194) #2
  %195 = bitcast i8** %p193 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %195) #2
  %196 = load i8*, i8** %source, align 8, !tbaa !2
  store i8* %196, i8** %p193, align 8, !tbaa !2
  %197 = bitcast i8** %q194 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %197) #2
  %198 = load i8*, i8** %dest110, align 8, !tbaa !2
  store i8* %198, i8** %q194, align 8, !tbaa !2
  %199 = bitcast i32* %step195 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %199) #2
  %200 = load %struct._XImage*, %struct._XImage** %image, align 8, !tbaa !2
  %bits_per_pixel196 = getelementptr inbounds %struct._XImage, %struct._XImage* %200, i32 0, i32 11
  %201 = load i32, i32* %bits_per_pixel196, align 4, !tbaa !142
  %shr197 = ashr i32 %201, 3
  store i32 %shr197, i32* %step195, align 4, !tbaa !41
  %202 = load %struct._XImage*, %struct._XImage** %image, align 8, !tbaa !2
  %byte_order198 = getelementptr inbounds %struct._XImage, %struct._XImage* %202, i32 0, i32 5
  %203 = load i32, i32* %byte_order198, align 4, !tbaa !145
  %cmp199 = icmp eq i32 %203, 1
  br i1 %cmp199, label %if.then.201, label %if.else.219

if.then.201:                                      ; preds = %if.then.191
  %204 = load i32, i32* %step195, align 4, !tbaa !41
  %sub202 = sub nsw i32 %204, 2
  %205 = load i8*, i8** %p193, align 8, !tbaa !2
  %idx.ext203 = sext i32 %sub202 to i64
  %add.ptr204 = getelementptr inbounds i8, i8* %205, i64 %idx.ext203
  store i8* %add.ptr204, i8** %p193, align 8, !tbaa !2
  %206 = load i32, i32* %x0, align 4, !tbaa !41
  store i32 %206, i32* %cx192, align 4, !tbaa !41
  br label %for.cond.205

for.cond.205:                                     ; preds = %for.inc.213, %if.then.201
  %207 = load i32, i32* %cx192, align 4, !tbaa !41
  %208 = load i32, i32* %x1, align 4, !tbaa !41
  %cmp206 = icmp slt i32 %207, %208
  br i1 %cmp206, label %for.body.208, label %for.end.218

for.body.208:                                     ; preds = %for.cond.205
  %209 = load i8*, i8** %p193, align 8, !tbaa !2
  %arrayidx209 = getelementptr inbounds i8, i8* %209, i64 0
  %210 = load i8, i8* %arrayidx209, align 1, !tbaa !97
  %211 = load i8*, i8** %q194, align 8, !tbaa !2
  %arrayidx210 = getelementptr inbounds i8, i8* %211, i64 0
  store i8 %210, i8* %arrayidx210, align 1, !tbaa !97
  %212 = load i8*, i8** %p193, align 8, !tbaa !2
  %arrayidx211 = getelementptr inbounds i8, i8* %212, i64 1
  %213 = load i8, i8* %arrayidx211, align 1, !tbaa !97
  %214 = load i8*, i8** %q194, align 8, !tbaa !2
  %arrayidx212 = getelementptr inbounds i8, i8* %214, i64 1
  store i8 %213, i8* %arrayidx212, align 1, !tbaa !97
  br label %for.inc.213

for.inc.213:                                      ; preds = %for.body.208
  %215 = load i32, i32* %step195, align 4, !tbaa !41
  %216 = load i8*, i8** %p193, align 8, !tbaa !2
  %idx.ext214 = sext i32 %215 to i64
  %add.ptr215 = getelementptr inbounds i8, i8* %216, i64 %idx.ext214
  store i8* %add.ptr215, i8** %p193, align 8, !tbaa !2
  %217 = load i8*, i8** %q194, align 8, !tbaa !2
  %add.ptr216 = getelementptr inbounds i8, i8* %217, i64 2
  store i8* %add.ptr216, i8** %q194, align 8, !tbaa !2
  %218 = load i32, i32* %cx192, align 4, !tbaa !41
  %inc217 = add nsw i32 %218, 1
  store i32 %inc217, i32* %cx192, align 4, !tbaa !41
  br label %for.cond.205

for.end.218:                                      ; preds = %for.cond.205
  br label %if.end.234

if.else.219:                                      ; preds = %if.then.191
  %219 = load i32, i32* %x0, align 4, !tbaa !41
  store i32 %219, i32* %cx192, align 4, !tbaa !41
  br label %for.cond.220

for.cond.220:                                     ; preds = %for.inc.228, %if.else.219
  %220 = load i32, i32* %cx192, align 4, !tbaa !41
  %221 = load i32, i32* %x1, align 4, !tbaa !41
  %cmp221 = icmp slt i32 %220, %221
  br i1 %cmp221, label %for.body.223, label %for.end.233

for.body.223:                                     ; preds = %for.cond.220
  %222 = load i8*, i8** %p193, align 8, !tbaa !2
  %arrayidx224 = getelementptr inbounds i8, i8* %222, i64 1
  %223 = load i8, i8* %arrayidx224, align 1, !tbaa !97
  %224 = load i8*, i8** %q194, align 8, !tbaa !2
  %arrayidx225 = getelementptr inbounds i8, i8* %224, i64 0
  store i8 %223, i8* %arrayidx225, align 1, !tbaa !97
  %225 = load i8*, i8** %p193, align 8, !tbaa !2
  %arrayidx226 = getelementptr inbounds i8, i8* %225, i64 0
  %226 = load i8, i8* %arrayidx226, align 1, !tbaa !97
  %227 = load i8*, i8** %q194, align 8, !tbaa !2
  %arrayidx227 = getelementptr inbounds i8, i8* %227, i64 1
  store i8 %226, i8* %arrayidx227, align 1, !tbaa !97
  br label %for.inc.228

for.inc.228:                                      ; preds = %for.body.223
  %228 = load i32, i32* %step195, align 4, !tbaa !41
  %229 = load i8*, i8** %p193, align 8, !tbaa !2
  %idx.ext229 = sext i32 %228 to i64
  %add.ptr230 = getelementptr inbounds i8, i8* %229, i64 %idx.ext229
  store i8* %add.ptr230, i8** %p193, align 8, !tbaa !2
  %230 = load i8*, i8** %q194, align 8, !tbaa !2
  %add.ptr231 = getelementptr inbounds i8, i8* %230, i64 2
  store i8* %add.ptr231, i8** %q194, align 8, !tbaa !2
  %231 = load i32, i32* %cx192, align 4, !tbaa !41
  %inc232 = add nsw i32 %231, 1
  store i32 %inc232, i32* %cx192, align 4, !tbaa !41
  br label %for.cond.220

for.end.233:                                      ; preds = %for.cond.220
  br label %if.end.234

if.end.234:                                       ; preds = %for.end.233, %for.end.218
  %232 = bitcast i32* %step195 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %232) #2
  %233 = bitcast i8** %q194 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %233) #2
  %234 = bitcast i8** %p193 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %234) #2
  %235 = bitcast i32* %cx192 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %235) #2
  br label %if.end.236

if.else.235:                                      ; preds = %lor.lhs.false.187
  store i32 -15, i32* %code, align 4, !tbaa !41
  br label %if.end.236

if.end.236:                                       ; preds = %if.else.235, %if.end.234
  br label %if.end.237

if.end.237:                                       ; preds = %if.end.236, %if.end.182
  br label %if.end.238

if.end.238:                                       ; preds = %if.end.237, %if.then.133
  %236 = bitcast i8** %dest110 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %236) #2
  %237 = bitcast i8** %source to i8*
  call void @llvm.lifetime.end(i64 8, i8* %237) #2
  br label %for.inc.239

for.inc.239:                                      ; preds = %if.end.238
  %238 = load i32, i32* %cy, align 4, !tbaa !41
  %inc240 = add nsw i32 %238, 1
  store i32 %inc240, i32* %cy, align 4, !tbaa !41
  br label %for.cond.103

for.end.241:                                      ; preds = %for.cond.103
  %239 = load %struct._XImage*, %struct._XImage** %image, align 8, !tbaa !2
  %f = getelementptr inbounds %struct._XImage, %struct._XImage* %239, i32 0, i32 16
  %destroy_image = getelementptr inbounds %struct.funcs, %struct.funcs* %f, i32 0, i32 1
  %240 = load i32 (%struct._XImage*)*, i32 (%struct._XImage*)** %destroy_image, align 8, !tbaa !146
  %241 = load %struct._XImage*, %struct._XImage** %image, align 8, !tbaa !2
  %call242 = call i32 %240(%struct._XImage* %241) #5
  %242 = bitcast i32* %cy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %242) #2
  br label %for.inc.243

for.inc.243:                                      ; preds = %for.end.241
  %243 = load i32, i32* %h, align 4, !tbaa !41
  %244 = load i32, i32* %y15, align 4, !tbaa !41
  %add244 = add nsw i32 %244, %243
  store i32 %add244, i32* %y15, align 4, !tbaa !41
  br label %for.cond

for.end.245:                                      ; preds = %for.cond
  %245 = load %struct.gs_int_rect_s**, %struct.gs_int_rect_s*** %unread.addr, align 8, !tbaa !2
  %tobool246 = icmp ne %struct.gs_int_rect_s** %245, null
  br i1 %tobool246, label %if.then.247, label %if.end.248

if.then.247:                                      ; preds = %for.end.245
  %246 = load %struct.gs_int_rect_s**, %struct.gs_int_rect_s*** %unread.addr, align 8, !tbaa !2
  store %struct.gs_int_rect_s* null, %struct.gs_int_rect_s** %246, align 8, !tbaa !2
  br label %if.end.248

if.end.248:                                       ; preds = %if.then.247, %for.end.245
  %247 = load i32, i32* %code, align 4, !tbaa !41
  store i32 %247, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.248, %if.then.54, %if.then.40, %if.then
  %248 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %248) #2
  %249 = bitcast %struct._XImage** %image to i8*
  call void @llvm.lifetime.end(i64 8, i8* %249) #2
  %250 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %250) #2
  %251 = bitcast i32* %y15 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %251) #2
  %252 = bitcast i64* %plane_mask to i8*
  call void @llvm.lifetime.end(i64 8, i8* %252) #2
  %253 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %253) #2
  %254 = bitcast i64* %options to i8*
  call void @llvm.lifetime.end(i64 8, i8* %254) #2
  %255 = bitcast i32* %default_raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %255) #2
  %256 = bitcast i32* %band to i8*
  call void @llvm.lifetime.end(i64 4, i8* %256) #2
  %257 = bitcast i32* %width_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %257) #2
  %258 = bitcast i32* %y1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %258) #2
  %259 = bitcast i32* %x1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %259) #2
  %260 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %260) #2
  %261 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %261) #2
  %262 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %262) #2
  %263 = bitcast %struct.gx_device_X_s** %xdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %263) #2
  %264 = load i32, i32* %retval
  ret i32 %264
}

declare i32 @gdev_x_finish_copydevice(%struct.gx_device_s*, %struct.gx_device_s*) #0

; Function Attrs: nounwind uwtable
define void @gdev_x_send_event(%struct.gx_device_X_s* %xdev, i64 %msg) #1 {
entry:
  %xdev.addr = alloca %struct.gx_device_X_s*, align 8
  %msg.addr = alloca i64, align 8
  %event = alloca %union._XEvent, align 8
  store %struct.gx_device_X_s* %xdev, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  store i64 %msg, i64* %msg.addr, align 8, !tbaa !60
  %0 = bitcast %union._XEvent* %event to i8*
  call void @llvm.lifetime.start(i64 192, i8* %0) #2
  %xclient = bitcast %union._XEvent* %event to %struct.XClientMessageEvent*
  %type = getelementptr inbounds %struct.XClientMessageEvent, %struct.XClientMessageEvent* %xclient, i32 0, i32 0
  store i32 33, i32* %type, align 4, !tbaa !147
  %1 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %1, i32 0, i32 58
  %2 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8, !tbaa !55
  %xclient1 = bitcast %union._XEvent* %event to %struct.XClientMessageEvent*
  %display = getelementptr inbounds %struct.XClientMessageEvent, %struct.XClientMessageEvent* %xclient1, i32 0, i32 3
  store %struct._XDisplay* %2, %struct._XDisplay** %display, align 8, !tbaa !148
  %3 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %win = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %3, i32 0, i32 62
  %4 = load i64, i64* %win, align 8, !tbaa !86
  %xclient2 = bitcast %union._XEvent* %event to %struct.XClientMessageEvent*
  %window = getelementptr inbounds %struct.XClientMessageEvent, %struct.XClientMessageEvent* %xclient2, i32 0, i32 4
  store i64 %4, i64* %window, align 8, !tbaa !149
  %5 = load i64, i64* %msg.addr, align 8, !tbaa !60
  %xclient3 = bitcast %union._XEvent* %event to %struct.XClientMessageEvent*
  %message_type = getelementptr inbounds %struct.XClientMessageEvent, %struct.XClientMessageEvent* %xclient3, i32 0, i32 5
  store i64 %5, i64* %message_type, align 8, !tbaa !57
  %xclient4 = bitcast %union._XEvent* %event to %struct.XClientMessageEvent*
  %format = getelementptr inbounds %struct.XClientMessageEvent, %struct.XClientMessageEvent* %xclient4, i32 0, i32 6
  store i32 32, i32* %format, align 4, !tbaa !150
  %6 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %mwin = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %6, i32 0, i32 67
  %7 = load i64, i64* %mwin, align 8, !tbaa !151
  %xclient5 = bitcast %union._XEvent* %event to %struct.XClientMessageEvent*
  %data = getelementptr inbounds %struct.XClientMessageEvent, %struct.XClientMessageEvent* %xclient5, i32 0, i32 7
  %l = bitcast %union.anon.5* %data to [5 x i64]*
  %arrayidx = getelementptr inbounds [5 x i64], [5 x i64]* %l, i32 0, i64 0
  store i64 %7, i64* %arrayidx, align 8, !tbaa !60
  %8 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dest = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %8, i32 0, i32 73
  %9 = load i64, i64* %dest, align 8, !tbaa !71
  %xclient6 = bitcast %union._XEvent* %event to %struct.XClientMessageEvent*
  %data7 = getelementptr inbounds %struct.XClientMessageEvent, %struct.XClientMessageEvent* %xclient6, i32 0, i32 7
  %l8 = bitcast %union.anon.5* %data7 to [5 x i64]*
  %arrayidx9 = getelementptr inbounds [5 x i64], [5 x i64]* %l8, i32 0, i64 1
  store i64 %9, i64* %arrayidx9, align 8, !tbaa !60
  %10 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy10 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %10, i32 0, i32 58
  %11 = load %struct._XDisplay*, %struct._XDisplay** %dpy10, align 8, !tbaa !55
  %12 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %win11 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %12, i32 0, i32 62
  %13 = load i64, i64* %win11, align 8, !tbaa !86
  %call = call i32 @XSendEvent(%struct._XDisplay* %11, i64 %13, i32 0, i64 0, %union._XEvent* %event) #5
  %14 = bitcast %union._XEvent* %event to i8*
  call void @llvm.lifetime.end(i64 192, i8* %14) #2
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i32 @XSendEvent(%struct._XDisplay*, i64, i32, i64, %union._XEvent*) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define void @x_update_add(%struct.gx_device_X_s* %xdev, i32 %xo, i32 %yo, i32 %w, i32 %h) #1 {
entry:
  %xdev.addr = alloca %struct.gx_device_X_s*, align 8
  %xo.addr = alloca i32, align 4
  %yo.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %xe = alloca i32, align 4
  %ye = alloca i32, align 4
  %added = alloca i64, align 8
  %old_area = alloca i64, align 8
  %u = alloca %struct.gs_int_rect_s, align 4
  %nw = alloca i32, align 4
  %nh = alloca i32, align 4
  %new_up_area = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_X_s* %xdev, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  store i32 %xo, i32* %xo.addr, align 4, !tbaa !41
  store i32 %yo, i32* %yo.addr, align 4, !tbaa !41
  store i32 %w, i32* %w.addr, align 4, !tbaa !41
  store i32 %h, i32* %h.addr, align 4, !tbaa !41
  %0 = bitcast i32* %xe to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %xo.addr, align 4, !tbaa !41
  %2 = load i32, i32* %w.addr, align 4, !tbaa !41
  %add = add nsw i32 %1, %2
  store i32 %add, i32* %xe, align 4, !tbaa !41
  %3 = bitcast i32* %ye to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load i32, i32* %yo.addr, align 4, !tbaa !41
  %5 = load i32, i32* %h.addr, align 4, !tbaa !41
  %add1 = add nsw i32 %4, %5
  store i32 %add1, i32* %ye, align 4, !tbaa !41
  %6 = bitcast i64* %added to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load i32, i32* %w.addr, align 4, !tbaa !41
  %conv = sext i32 %7 to i64
  %8 = load i32, i32* %h.addr, align 4, !tbaa !41
  %conv2 = sext i32 %8 to i64
  %mul = mul nsw i64 %conv, %conv2
  store i64 %mul, i64* %added, align 8, !tbaa !60
  %9 = bitcast i64* %old_area to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %update = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %10, i32 0, i32 72
  %area = getelementptr inbounds %struct.anon, %struct.anon* %update, i32 0, i32 1
  %11 = load i64, i64* %area, align 8, !tbaa !152
  store i64 %11, i64* %old_area, align 8, !tbaa !60
  %12 = bitcast %struct.gs_int_rect_s* %u to i8*
  call void @llvm.lifetime.start(i64 16, i8* %12) #2
  %13 = bitcast i32* %nw to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = bitcast i32* %nh to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = bitcast i64* %new_up_area to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  %16 = load i32, i32* %xo.addr, align 4, !tbaa !41
  %17 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %update3 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %17, i32 0, i32 72
  %box = getelementptr inbounds %struct.anon, %struct.anon* %update3, i32 0, i32 0
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %box, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  %18 = load i32, i32* %x, align 4, !tbaa !136
  %cmp = icmp slt i32 %16, %18
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %19 = load i32, i32* %xo.addr, align 4, !tbaa !41
  br label %cond.end

cond.false:                                       ; preds = %entry
  %20 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %update5 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %20, i32 0, i32 72
  %box6 = getelementptr inbounds %struct.anon, %struct.anon* %update5, i32 0, i32 0
  %p7 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %box6, i32 0, i32 0
  %x8 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p7, i32 0, i32 0
  %21 = load i32, i32* %x8, align 4, !tbaa !136
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ %21, %cond.false ]
  %p9 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %u, i32 0, i32 0
  %x10 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p9, i32 0, i32 0
  store i32 %cond, i32* %x10, align 4, !tbaa !127
  %22 = load i32, i32* %yo.addr, align 4, !tbaa !41
  %23 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %update11 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %23, i32 0, i32 72
  %box12 = getelementptr inbounds %struct.anon, %struct.anon* %update11, i32 0, i32 0
  %p13 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %box12, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p13, i32 0, i32 1
  %24 = load i32, i32* %y, align 4, !tbaa !138
  %cmp14 = icmp slt i32 %22, %24
  br i1 %cmp14, label %cond.true.16, label %cond.false.17

cond.true.16:                                     ; preds = %cond.end
  %25 = load i32, i32* %yo.addr, align 4, !tbaa !41
  br label %cond.end.22

cond.false.17:                                    ; preds = %cond.end
  %26 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %update18 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %26, i32 0, i32 72
  %box19 = getelementptr inbounds %struct.anon, %struct.anon* %update18, i32 0, i32 0
  %p20 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %box19, i32 0, i32 0
  %y21 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p20, i32 0, i32 1
  %27 = load i32, i32* %y21, align 4, !tbaa !138
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.17, %cond.true.16
  %cond23 = phi i32 [ %25, %cond.true.16 ], [ %27, %cond.false.17 ]
  %p24 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %u, i32 0, i32 0
  %y25 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p24, i32 0, i32 1
  store i32 %cond23, i32* %y25, align 4, !tbaa !128
  %28 = load i32, i32* %xe, align 4, !tbaa !41
  %29 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %update26 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %29, i32 0, i32 72
  %box27 = getelementptr inbounds %struct.anon, %struct.anon* %update26, i32 0, i32 0
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %box27, i32 0, i32 1
  %x28 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  %30 = load i32, i32* %x28, align 4, !tbaa !137
  %cmp29 = icmp sgt i32 %28, %30
  br i1 %cmp29, label %cond.true.31, label %cond.false.32

cond.true.31:                                     ; preds = %cond.end.22
  %31 = load i32, i32* %xe, align 4, !tbaa !41
  br label %cond.end.37

cond.false.32:                                    ; preds = %cond.end.22
  %32 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %update33 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %32, i32 0, i32 72
  %box34 = getelementptr inbounds %struct.anon, %struct.anon* %update33, i32 0, i32 0
  %q35 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %box34, i32 0, i32 1
  %x36 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q35, i32 0, i32 0
  %33 = load i32, i32* %x36, align 4, !tbaa !137
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.32, %cond.true.31
  %cond38 = phi i32 [ %31, %cond.true.31 ], [ %33, %cond.false.32 ]
  %q39 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %u, i32 0, i32 1
  %x40 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q39, i32 0, i32 0
  store i32 %cond38, i32* %x40, align 4, !tbaa !129
  %34 = load i32, i32* %ye, align 4, !tbaa !41
  %35 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %update41 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %35, i32 0, i32 72
  %box42 = getelementptr inbounds %struct.anon, %struct.anon* %update41, i32 0, i32 0
  %q43 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %box42, i32 0, i32 1
  %y44 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q43, i32 0, i32 1
  %36 = load i32, i32* %y44, align 4, !tbaa !139
  %cmp45 = icmp sgt i32 %34, %36
  br i1 %cmp45, label %cond.true.47, label %cond.false.48

cond.true.47:                                     ; preds = %cond.end.37
  %37 = load i32, i32* %ye, align 4, !tbaa !41
  br label %cond.end.53

cond.false.48:                                    ; preds = %cond.end.37
  %38 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %update49 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %38, i32 0, i32 72
  %box50 = getelementptr inbounds %struct.anon, %struct.anon* %update49, i32 0, i32 0
  %q51 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %box50, i32 0, i32 1
  %y52 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q51, i32 0, i32 1
  %39 = load i32, i32* %y52, align 4, !tbaa !139
  br label %cond.end.53

cond.end.53:                                      ; preds = %cond.false.48, %cond.true.47
  %cond54 = phi i32 [ %37, %cond.true.47 ], [ %39, %cond.false.48 ]
  %q55 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %u, i32 0, i32 1
  %y56 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q55, i32 0, i32 1
  store i32 %cond54, i32* %y56, align 4, !tbaa !130
  %q57 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %u, i32 0, i32 1
  %x58 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q57, i32 0, i32 0
  %40 = load i32, i32* %x58, align 4, !tbaa !129
  %p59 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %u, i32 0, i32 0
  %x60 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p59, i32 0, i32 0
  %41 = load i32, i32* %x60, align 4, !tbaa !127
  %sub = sub nsw i32 %40, %41
  store i32 %sub, i32* %nw, align 4, !tbaa !41
  %q61 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %u, i32 0, i32 1
  %y62 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q61, i32 0, i32 1
  %42 = load i32, i32* %y62, align 4, !tbaa !130
  %p63 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %u, i32 0, i32 0
  %y64 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p63, i32 0, i32 1
  %43 = load i32, i32* %y64, align 4, !tbaa !128
  %sub65 = sub nsw i32 %42, %43
  store i32 %sub65, i32* %nh, align 4, !tbaa !41
  %44 = load i32, i32* %nw, align 4, !tbaa !41
  %conv66 = sext i32 %44 to i64
  %45 = load i32, i32* %nh, align 4, !tbaa !41
  %conv67 = sext i32 %45 to i64
  %mul68 = mul nsw i64 %conv66, %conv67
  store i64 %mul68, i64* %new_up_area, align 8, !tbaa !60
  %46 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %update69 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %46, i32 0, i32 72
  %count = getelementptr inbounds %struct.anon, %struct.anon* %update69, i32 0, i32 3
  %47 = load i32, i32* %count, align 4, !tbaa !153
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %count, align 4, !tbaa !153
  %48 = load i64, i64* %new_up_area, align 8, !tbaa !60
  %49 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %update70 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %49, i32 0, i32 72
  %area71 = getelementptr inbounds %struct.anon, %struct.anon* %update70, i32 0, i32 1
  store i64 %48, i64* %area71, align 8, !tbaa !152
  %50 = load i64, i64* %added, align 8, !tbaa !60
  %51 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %update72 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %51, i32 0, i32 72
  %total = getelementptr inbounds %struct.anon, %struct.anon* %update72, i32 0, i32 2
  %52 = load i64, i64* %total, align 8, !tbaa !154
  %add73 = add nsw i64 %52, %50
  store i64 %add73, i64* %total, align 8, !tbaa !154
  %53 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %AlwaysUpdate = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %53, i32 0, i32 97
  %54 = load i32, i32* %AlwaysUpdate, align 4, !tbaa !155
  %tobool = icmp ne i32 %54, 0
  br i1 %tobool, label %if.end.87, label %if.then

if.then:                                          ; preds = %cond.end.53
  %55 = load i32, i32* %nw, align 4, !tbaa !41
  %56 = load i32, i32* %nh, align 4, !tbaa !41
  %add74 = add nsw i32 %55, %56
  %cmp75 = icmp sge i32 %add74, 70
  br i1 %cmp75, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %57 = load i32, i32* %nw, align 4, !tbaa !41
  %58 = load i32, i32* %nh, align 4, !tbaa !41
  %or = or i32 %57, %58
  %cmp77 = icmp sge i32 %or, 16
  br i1 %cmp77, label %land.lhs.true.79, label %if.else

land.lhs.true.79:                                 ; preds = %land.lhs.true
  %59 = load i64, i64* %old_area, align 8, !tbaa !60
  %60 = load i64, i64* %added, align 8, !tbaa !60
  %add80 = add nsw i64 %59, %60
  %61 = load i64, i64* %new_up_area, align 8, !tbaa !60
  %62 = load i64, i64* %new_up_area, align 8, !tbaa !60
  %shr = ashr i64 %62, 2
  %sub81 = sub nsw i64 %61, %shr
  %cmp82 = icmp slt i64 %add80, %sub81
  br i1 %cmp82, label %if.then.84, label %if.else

if.then.84:                                       ; preds = %land.lhs.true.79
  br label %do.body

do.body:                                          ; preds = %if.then.84
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.79, %land.lhs.true, %if.then
  %63 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %update85 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %63, i32 0, i32 72
  %box86 = getelementptr inbounds %struct.anon, %struct.anon* %update85, i32 0, i32 0
  %64 = bitcast %struct.gs_int_rect_s* %box86 to i8*
  %65 = bitcast %struct.gs_int_rect_s* %u to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* %65, i64 16, i32 4, i1 false), !tbaa.struct !156
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %do.end
  br label %if.end.87

if.end.87:                                        ; preds = %if.end, %cond.end.53
  %66 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %is_buffered = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %66, i32 0, i32 53
  %67 = load i32, i32* %is_buffered, align 4, !tbaa !157
  %tobool88 = icmp ne i32 %67, 0
  br i1 %tobool88, label %land.lhs.true.89, label %if.else.95

land.lhs.true.89:                                 ; preds = %if.end.87
  %68 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %target = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %68, i32 0, i32 43
  %69 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !158
  %cmp90 = icmp eq %struct.gx_device_s* %69, null
  br i1 %cmp90, label %if.then.92, label %if.else.95

if.then.92:                                       ; preds = %land.lhs.true.89
  %70 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %update93 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %70, i32 0, i32 72
  %box94 = getelementptr inbounds %struct.anon, %struct.anon* %update93, i32 0, i32 0
  %71 = bitcast %struct.gs_int_rect_s* %box94 to i8*
  %72 = bitcast %struct.gs_int_rect_s* %u to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %71, i8* %72, i64 16, i32 4, i1 false), !tbaa.struct !156
  br label %if.end.118

if.else.95:                                       ; preds = %land.lhs.true.89, %if.end.87
  %73 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  call void @update_do_flush(%struct.gx_device_X_s* %73) #5
  %74 = load i32, i32* %xo.addr, align 4, !tbaa !41
  %75 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %update96 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %75, i32 0, i32 72
  %box97 = getelementptr inbounds %struct.anon, %struct.anon* %update96, i32 0, i32 0
  %p98 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %box97, i32 0, i32 0
  %x99 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p98, i32 0, i32 0
  store i32 %74, i32* %x99, align 4, !tbaa !136
  %76 = load i32, i32* %yo.addr, align 4, !tbaa !41
  %77 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %update100 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %77, i32 0, i32 72
  %box101 = getelementptr inbounds %struct.anon, %struct.anon* %update100, i32 0, i32 0
  %p102 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %box101, i32 0, i32 0
  %y103 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p102, i32 0, i32 1
  store i32 %76, i32* %y103, align 4, !tbaa !138
  %78 = load i32, i32* %xe, align 4, !tbaa !41
  %79 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %update104 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %79, i32 0, i32 72
  %box105 = getelementptr inbounds %struct.anon, %struct.anon* %update104, i32 0, i32 0
  %q106 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %box105, i32 0, i32 1
  %x107 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q106, i32 0, i32 0
  store i32 %78, i32* %x107, align 4, !tbaa !137
  %80 = load i32, i32* %ye, align 4, !tbaa !41
  %81 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %update108 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %81, i32 0, i32 72
  %box109 = getelementptr inbounds %struct.anon, %struct.anon* %update108, i32 0, i32 0
  %q110 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %box109, i32 0, i32 1
  %y111 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q110, i32 0, i32 1
  store i32 %80, i32* %y111, align 4, !tbaa !139
  %82 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %update112 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %82, i32 0, i32 72
  %count113 = getelementptr inbounds %struct.anon, %struct.anon* %update112, i32 0, i32 3
  store i32 1, i32* %count113, align 4, !tbaa !153
  %83 = load i64, i64* %added, align 8, !tbaa !60
  %84 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %update114 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %84, i32 0, i32 72
  %total115 = getelementptr inbounds %struct.anon, %struct.anon* %update114, i32 0, i32 2
  store i64 %83, i64* %total115, align 8, !tbaa !154
  %85 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %update116 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %85, i32 0, i32 72
  %area117 = getelementptr inbounds %struct.anon, %struct.anon* %update116, i32 0, i32 1
  store i64 %83, i64* %area117, align 8, !tbaa !152
  br label %if.end.118

if.end.118:                                       ; preds = %if.else.95, %if.then.92
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.118, %if.else
  %86 = bitcast i64* %new_up_area to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #2
  %87 = bitcast i32* %nh to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #2
  %88 = bitcast i32* %nw to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #2
  %89 = bitcast %struct.gs_int_rect_s* %u to i8*
  call void @llvm.lifetime.end(i64 16, i8* %89) #2
  %90 = bitcast i64* %old_area to i8*
  call void @llvm.lifetime.end(i64 8, i8* %90) #2
  %91 = bitcast i64* %added to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #2
  %92 = bitcast i32* %ye to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #2
  %93 = bitcast i32* %xe to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal void @update_do_flush(%struct.gx_device_X_s* %xdev) #1 {
entry:
  %xdev.addr = alloca %struct.gx_device_X_s*, align 8
  %x23 = alloca i32, align 4
  %y28 = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %mdev = alloca %struct.gx_device_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_X_s* %xdev, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %0 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %text = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %0, i32 0, i32 100
  %item_count = getelementptr inbounds %struct.anon.4, %struct.anon.4* %text, i32 0, i32 0
  %1 = load i32, i32* %item_count, align 4, !tbaa !64
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  call void @do_flush_text(%struct.gx_device_X_s* %2) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %update = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %3, i32 0, i32 72
  %box = getelementptr inbounds %struct.anon, %struct.anon* %update, i32 0, i32 0
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %box, i32 0, i32 1
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  %4 = load i32, i32* %x, align 4, !tbaa !137
  %cmp1 = icmp eq i32 %4, -8388608
  br i1 %cmp1, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %update2 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %5, i32 0, i32 72
  %box3 = getelementptr inbounds %struct.anon, %struct.anon* %update2, i32 0, i32 0
  %q4 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %box3, i32 0, i32 1
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q4, i32 0, i32 1
  %6 = load i32, i32* %y, align 4, !tbaa !139
  %cmp5 = icmp eq i32 %6, -8388608
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %lor.lhs.false, %if.end
  br label %if.end.145

if.end.7:                                         ; preds = %lor.lhs.false
  %7 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %update8 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %7, i32 0, i32 72
  %box9 = getelementptr inbounds %struct.anon, %struct.anon* %update8, i32 0, i32 0
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %box9, i32 0, i32 0
  %x10 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  %8 = load i32, i32* %x10, align 4, !tbaa !136
  %cmp11 = icmp eq i32 %8, 8388607
  br i1 %cmp11, label %if.then.18, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %if.end.7
  %9 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %update13 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %9, i32 0, i32 72
  %box14 = getelementptr inbounds %struct.anon, %struct.anon* %update13, i32 0, i32 0
  %p15 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %box14, i32 0, i32 0
  %y16 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p15, i32 0, i32 1
  %10 = load i32, i32* %y16, align 4, !tbaa !138
  %cmp17 = icmp eq i32 %10, 8388607
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %lor.lhs.false.12, %if.end.7
  br label %if.end.145

if.end.19:                                        ; preds = %lor.lhs.false.12
  %11 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %update20 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %11, i32 0, i32 72
  %count = getelementptr inbounds %struct.anon, %struct.anon* %update20, i32 0, i32 3
  %12 = load i32, i32* %count, align 4, !tbaa !153
  %cmp21 = icmp ne i32 %12, 0
  br i1 %cmp21, label %if.then.22, label %if.end.145

if.then.22:                                       ; preds = %if.end.19
  %13 = bitcast i32* %x23 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %update24 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %14, i32 0, i32 72
  %box25 = getelementptr inbounds %struct.anon, %struct.anon* %update24, i32 0, i32 0
  %p26 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %box25, i32 0, i32 0
  %x27 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p26, i32 0, i32 0
  %15 = load i32, i32* %x27, align 4, !tbaa !136
  store i32 %15, i32* %x23, align 4, !tbaa !41
  %16 = bitcast i32* %y28 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %update29 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %17, i32 0, i32 72
  %box30 = getelementptr inbounds %struct.anon, %struct.anon* %update29, i32 0, i32 0
  %p31 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %box30, i32 0, i32 0
  %y32 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p31, i32 0, i32 1
  %18 = load i32, i32* %y32, align 4, !tbaa !138
  store i32 %18, i32* %y28, align 4, !tbaa !41
  %19 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #2
  %20 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %update33 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %20, i32 0, i32 72
  %box34 = getelementptr inbounds %struct.anon, %struct.anon* %update33, i32 0, i32 0
  %q35 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %box34, i32 0, i32 1
  %x36 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q35, i32 0, i32 0
  %21 = load i32, i32* %x36, align 4, !tbaa !137
  %22 = load i32, i32* %x23, align 4, !tbaa !41
  %sub = sub nsw i32 %21, %22
  store i32 %sub, i32* %w, align 4, !tbaa !41
  %23 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #2
  %24 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %update37 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %24, i32 0, i32 72
  %box38 = getelementptr inbounds %struct.anon, %struct.anon* %update37, i32 0, i32 0
  %q39 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %box38, i32 0, i32 1
  %y40 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q39, i32 0, i32 1
  %25 = load i32, i32* %y40, align 4, !tbaa !139
  %26 = load i32, i32* %y28, align 4, !tbaa !41
  %sub41 = sub nsw i32 %25, %26
  store i32 %sub41, i32* %h, align 4, !tbaa !41
  %27 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #2
  store %struct.gx_device_memory_s* null, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !2
  %28 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %is_buffered = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %28, i32 0, i32 53
  %29 = load i32, i32* %is_buffered, align 4, !tbaa !157
  %tobool = icmp ne i32 %29, 0
  br i1 %tobool, label %if.then.42, label %if.end.46

if.then.42:                                       ; preds = %if.then.22
  %30 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %target = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %30, i32 0, i32 43
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !158
  %32 = bitcast %struct.gx_device_s* %31 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %32, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !2
  %tobool43 = icmp ne %struct.gx_device_memory_s* %32, null
  br i1 %tobool43, label %if.end.45, label %if.then.44

if.then.44:                                       ; preds = %if.then.42
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.45:                                        ; preds = %if.then.42
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.then.22
  %33 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !2
  %tobool47 = icmp ne %struct.gx_device_memory_s* %33, null
  br i1 %tobool47, label %if.then.48, label %if.else

if.then.48:                                       ; preds = %if.end.46
  br label %do.body

do.body:                                          ; preds = %if.then.48
  br label %do.body.49

do.body.49:                                       ; preds = %do.body
  %34 = load i32, i32* %x23, align 4, !tbaa !41
  %35 = load i32, i32* %y28, align 4, !tbaa !41
  %or = or i32 %34, %35
  %cmp50 = icmp slt i32 %or, 0
  br i1 %cmp50, label %if.then.51, label %if.end.59

if.then.51:                                       ; preds = %do.body.49
  %36 = load i32, i32* %x23, align 4, !tbaa !41
  %cmp52 = icmp slt i32 %36, 0
  br i1 %cmp52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.then.51
  %37 = load i32, i32* %x23, align 4, !tbaa !41
  %38 = load i32, i32* %w, align 4, !tbaa !41
  %add = add nsw i32 %38, %37
  store i32 %add, i32* %w, align 4, !tbaa !41
  store i32 0, i32* %x23, align 4, !tbaa !41
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %if.then.51
  %39 = load i32, i32* %y28, align 4, !tbaa !41
  %cmp55 = icmp slt i32 %39, 0
  br i1 %cmp55, label %if.then.56, label %if.end.58

if.then.56:                                       ; preds = %if.end.54
  %40 = load i32, i32* %y28, align 4, !tbaa !41
  %41 = load i32, i32* %h, align 4, !tbaa !41
  %add57 = add nsw i32 %41, %40
  store i32 %add57, i32* %h, align 4, !tbaa !41
  store i32 0, i32* %y28, align 4, !tbaa !41
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.56, %if.end.54
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %do.body.49
  br label %do.cond

do.cond:                                          ; preds = %if.end.59
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.60

do.body.60:                                       ; preds = %do.end
  %42 = load i32, i32* %w, align 4, !tbaa !41
  %43 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !2
  %width = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %43, i32 0, i32 13
  %44 = load i32, i32* %width, align 4, !tbaa !159
  %45 = load i32, i32* %x23, align 4, !tbaa !41
  %sub61 = sub nsw i32 %44, %45
  %cmp62 = icmp sgt i32 %42, %sub61
  br i1 %cmp62, label %if.then.63, label %if.end.66

if.then.63:                                       ; preds = %do.body.60
  %46 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !2
  %width64 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %46, i32 0, i32 13
  %47 = load i32, i32* %width64, align 4, !tbaa !159
  %48 = load i32, i32* %x23, align 4, !tbaa !41
  %sub65 = sub nsw i32 %47, %48
  store i32 %sub65, i32* %w, align 4, !tbaa !41
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.63, %do.body.60
  br label %do.cond.67

do.cond.67:                                       ; preds = %if.end.66
  br label %do.end.68

do.end.68:                                        ; preds = %do.cond.67
  br label %do.body.69

do.body.69:                                       ; preds = %do.end.68
  %49 = load i32, i32* %h, align 4, !tbaa !41
  %50 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !2
  %height = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %50, i32 0, i32 14
  %51 = load i32, i32* %height, align 4, !tbaa !168
  %52 = load i32, i32* %y28, align 4, !tbaa !41
  %sub70 = sub nsw i32 %51, %52
  %cmp71 = icmp sgt i32 %49, %sub70
  br i1 %cmp71, label %if.then.72, label %if.end.75

if.then.72:                                       ; preds = %do.body.69
  %53 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !2
  %height73 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %53, i32 0, i32 14
  %54 = load i32, i32* %height73, align 4, !tbaa !168
  %55 = load i32, i32* %y28, align 4, !tbaa !41
  %sub74 = sub nsw i32 %54, %55
  store i32 %sub74, i32* %h, align 4, !tbaa !41
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.72, %do.body.69
  br label %do.cond.76

do.cond.76:                                       ; preds = %if.end.75
  br label %do.end.77

do.end.77:                                        ; preds = %do.cond.76
  br label %do.cond.78

do.cond.78:                                       ; preds = %do.end.77
  br label %do.end.79

do.end.79:                                        ; preds = %do.cond.78
  br label %if.end.118

if.else:                                          ; preds = %if.end.46
  br label %do.body.80

do.body.80:                                       ; preds = %if.else
  br label %do.body.81

do.body.81:                                       ; preds = %do.body.80
  %56 = load i32, i32* %x23, align 4, !tbaa !41
  %57 = load i32, i32* %y28, align 4, !tbaa !41
  %or82 = or i32 %56, %57
  %cmp83 = icmp slt i32 %or82, 0
  br i1 %cmp83, label %if.then.84, label %if.end.93

if.then.84:                                       ; preds = %do.body.81
  %58 = load i32, i32* %x23, align 4, !tbaa !41
  %cmp85 = icmp slt i32 %58, 0
  br i1 %cmp85, label %if.then.86, label %if.end.88

if.then.86:                                       ; preds = %if.then.84
  %59 = load i32, i32* %x23, align 4, !tbaa !41
  %60 = load i32, i32* %w, align 4, !tbaa !41
  %add87 = add nsw i32 %60, %59
  store i32 %add87, i32* %w, align 4, !tbaa !41
  store i32 0, i32* %x23, align 4, !tbaa !41
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.86, %if.then.84
  %61 = load i32, i32* %y28, align 4, !tbaa !41
  %cmp89 = icmp slt i32 %61, 0
  br i1 %cmp89, label %if.then.90, label %if.end.92

if.then.90:                                       ; preds = %if.end.88
  %62 = load i32, i32* %y28, align 4, !tbaa !41
  %63 = load i32, i32* %h, align 4, !tbaa !41
  %add91 = add nsw i32 %63, %62
  store i32 %add91, i32* %h, align 4, !tbaa !41
  store i32 0, i32* %y28, align 4, !tbaa !41
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.90, %if.end.88
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %do.body.81
  br label %do.cond.94

do.cond.94:                                       ; preds = %if.end.93
  br label %do.end.95

do.end.95:                                        ; preds = %do.cond.94
  br label %do.body.96

do.body.96:                                       ; preds = %do.end.95
  %64 = load i32, i32* %w, align 4, !tbaa !41
  %65 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %width97 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %65, i32 0, i32 13
  %66 = load i32, i32* %width97, align 4, !tbaa !72
  %67 = load i32, i32* %x23, align 4, !tbaa !41
  %sub98 = sub nsw i32 %66, %67
  %cmp99 = icmp sgt i32 %64, %sub98
  br i1 %cmp99, label %if.then.100, label %if.end.103

if.then.100:                                      ; preds = %do.body.96
  %68 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %width101 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %68, i32 0, i32 13
  %69 = load i32, i32* %width101, align 4, !tbaa !72
  %70 = load i32, i32* %x23, align 4, !tbaa !41
  %sub102 = sub nsw i32 %69, %70
  store i32 %sub102, i32* %w, align 4, !tbaa !41
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.100, %do.body.96
  br label %do.cond.104

do.cond.104:                                      ; preds = %if.end.103
  br label %do.end.105

do.end.105:                                       ; preds = %do.cond.104
  br label %do.body.106

do.body.106:                                      ; preds = %do.end.105
  %71 = load i32, i32* %h, align 4, !tbaa !41
  %72 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %height107 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %72, i32 0, i32 14
  %73 = load i32, i32* %height107, align 4, !tbaa !73
  %74 = load i32, i32* %y28, align 4, !tbaa !41
  %sub108 = sub nsw i32 %73, %74
  %cmp109 = icmp sgt i32 %71, %sub108
  br i1 %cmp109, label %if.then.110, label %if.end.113

if.then.110:                                      ; preds = %do.body.106
  %75 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %height111 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %75, i32 0, i32 14
  %76 = load i32, i32* %height111, align 4, !tbaa !73
  %77 = load i32, i32* %y28, align 4, !tbaa !41
  %sub112 = sub nsw i32 %76, %77
  store i32 %sub112, i32* %h, align 4, !tbaa !41
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.110, %do.body.106
  br label %do.cond.114

do.cond.114:                                      ; preds = %if.end.113
  br label %do.end.115

do.end.115:                                       ; preds = %do.cond.114
  br label %do.cond.116

do.cond.116:                                      ; preds = %do.end.115
  br label %do.end.117

do.end.117:                                       ; preds = %do.cond.116
  br label %if.end.118

if.end.118:                                       ; preds = %do.end.117, %do.end.79
  %78 = load i32, i32* %w, align 4, !tbaa !41
  %cmp119 = icmp sgt i32 %78, 0
  br i1 %cmp119, label %land.lhs.true, label %if.end.140

land.lhs.true:                                    ; preds = %if.end.118
  %79 = load i32, i32* %h, align 4, !tbaa !41
  %cmp120 = icmp sgt i32 %79, 0
  br i1 %cmp120, label %if.then.121, label %if.end.140

if.then.121:                                      ; preds = %land.lhs.true
  %80 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !2
  %tobool122 = icmp ne %struct.gx_device_memory_s* %80, null
  br i1 %tobool122, label %if.then.123, label %if.end.124

if.then.123:                                      ; preds = %if.then.121
  %81 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %82 = load i32, i32* %y28, align 4, !tbaa !41
  %idxprom = sext i32 %82 to i64
  %83 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !2
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %83, i32 0, i32 52
  %84 = load i8**, i8*** %line_ptrs, align 8, !tbaa !169
  %arrayidx = getelementptr inbounds i8*, i8** %84, i64 %idxprom
  %85 = load i8*, i8** %arrayidx, align 8, !tbaa !2
  %86 = load i32, i32* %x23, align 4, !tbaa !41
  %87 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !2
  %raster = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %87, i32 0, i32 44
  %88 = load i32, i32* %raster, align 4, !tbaa !170
  %89 = load i32, i32* %x23, align 4, !tbaa !41
  %90 = load i32, i32* %y28, align 4, !tbaa !41
  %91 = load i32, i32* %w, align 4, !tbaa !41
  %92 = load i32, i32* %h, align 4, !tbaa !41
  %call = call i32 @x_copy_image(%struct.gx_device_X_s* %81, i8* %85, i32 %86, i32 %88, i32 %89, i32 %90, i32 %91, i32 %92) #5
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.123, %if.then.121
  %93 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %bpixmap = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %93, i32 0, i32 65
  %94 = load i64, i64* %bpixmap, align 8, !tbaa !76
  %tobool125 = icmp ne i64 %94, 0
  br i1 %tobool125, label %if.then.126, label %if.end.139

if.then.126:                                      ; preds = %if.end.124
  br label %do.body.127

do.body.127:                                      ; preds = %if.then.126
  %95 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %function = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %95, i32 0, i32 78
  %96 = load i32, i32* %function, align 4, !tbaa !70
  %cmp128 = icmp ne i32 %96, 3
  br i1 %cmp128, label %if.then.129, label %if.end.132

if.then.129:                                      ; preds = %do.body.127
  %97 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %97, i32 0, i32 58
  %98 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8, !tbaa !55
  %99 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %gc = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %99, i32 0, i32 63
  %100 = load %struct._XGC*, %struct._XGC** %gc, align 8, !tbaa !66
  %101 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %function130 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %101, i32 0, i32 78
  store i32 3, i32* %function130, align 4, !tbaa !70
  %call131 = call i32 @XSetFunction(%struct._XDisplay* %98, %struct._XGC* %100, i32 3) #5
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.129, %do.body.127
  br label %do.cond.133

do.cond.133:                                      ; preds = %if.end.132
  br label %do.end.134

do.end.134:                                       ; preds = %do.cond.133
  %102 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy135 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %102, i32 0, i32 58
  %103 = load %struct._XDisplay*, %struct._XDisplay** %dpy135, align 8, !tbaa !55
  %104 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %bpixmap136 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %104, i32 0, i32 65
  %105 = load i64, i64* %bpixmap136, align 8, !tbaa !76
  %106 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %win = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %106, i32 0, i32 62
  %107 = load i64, i64* %win, align 8, !tbaa !86
  %108 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %gc137 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %108, i32 0, i32 63
  %109 = load %struct._XGC*, %struct._XGC** %gc137, align 8, !tbaa !66
  %110 = load i32, i32* %x23, align 4, !tbaa !41
  %111 = load i32, i32* %y28, align 4, !tbaa !41
  %112 = load i32, i32* %w, align 4, !tbaa !41
  %113 = load i32, i32* %h, align 4, !tbaa !41
  %114 = load i32, i32* %x23, align 4, !tbaa !41
  %115 = load i32, i32* %y28, align 4, !tbaa !41
  %call138 = call i32 @XCopyArea(%struct._XDisplay* %103, i64 %105, i64 %107, %struct._XGC* %109, i32 %110, i32 %111, i32 %112, i32 %113, i32 %114, i32 %115) #5
  br label %if.end.139

if.end.139:                                       ; preds = %do.end.134, %if.end.124
  br label %if.end.140

if.end.140:                                       ; preds = %if.end.139, %land.lhs.true, %if.end.118
  %116 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  call void @update_init(%struct.gx_device_X_s* %116) #5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.140, %if.then.44
  %117 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %117) #2
  %118 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #2
  %119 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #2
  %120 = bitcast i32* %y28 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #2
  %121 = bitcast i32* %x23 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end.145
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.6, %if.then.18, %cleanup, %cleanup.cont, %if.end.19
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @x_bbox_init_box(i8* %pdata) #1 {
entry:
  %pdata.addr = alloca i8*, align 8
  %xdev = alloca %struct.gx_device_X_s*, align 8
  store i8* %pdata, i8** %pdata.addr, align 8, !tbaa !2
  %0 = bitcast %struct.gx_device_X_s** %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %pdata.addr, align 8, !tbaa !2
  %2 = bitcast i8* %1 to %struct.gx_device_X_s*
  store %struct.gx_device_X_s* %2, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %3 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  call void @update_init(%struct.gx_device_X_s* %3) #5
  %4 = bitcast %struct.gx_device_X_s** %xdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4) #2
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal void @x_bbox_get_box(i8* %pdata, %struct.gs_fixed_rect_s* %pbox) #1 {
entry:
  %pdata.addr = alloca i8*, align 8
  %pbox.addr = alloca %struct.gs_fixed_rect_s*, align 8
  %xdev = alloca %struct.gx_device_X_s*, align 8
  store i8* %pdata, i8** %pdata.addr, align 8, !tbaa !2
  store %struct.gs_fixed_rect_s* %pbox, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !2
  %0 = bitcast %struct.gx_device_X_s** %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %pdata.addr, align 8, !tbaa !2
  %2 = bitcast i8* %1 to %struct.gx_device_X_s*
  store %struct.gx_device_X_s* %2, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %3 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %update = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %3, i32 0, i32 72
  %box = getelementptr inbounds %struct.anon, %struct.anon* %update, i32 0, i32 0
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %box, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  %4 = load i32, i32* %x, align 4, !tbaa !136
  %shl = shl i32 %4, 8
  %5 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !2
  %p1 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %5, i32 0, i32 0
  %x2 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1, i32 0, i32 0
  store i32 %shl, i32* %x2, align 4, !tbaa !171
  %6 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %update3 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %6, i32 0, i32 72
  %box4 = getelementptr inbounds %struct.anon, %struct.anon* %update3, i32 0, i32 0
  %p5 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %box4, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p5, i32 0, i32 1
  %7 = load i32, i32* %y, align 4, !tbaa !138
  %shl6 = shl i32 %7, 8
  %8 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !2
  %p7 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %8, i32 0, i32 0
  %y8 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p7, i32 0, i32 1
  store i32 %shl6, i32* %y8, align 4, !tbaa !172
  %9 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %update9 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %9, i32 0, i32 72
  %box10 = getelementptr inbounds %struct.anon, %struct.anon* %update9, i32 0, i32 0
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %box10, i32 0, i32 1
  %x11 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  %10 = load i32, i32* %x11, align 4, !tbaa !137
  %shl12 = shl i32 %10, 8
  %11 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !2
  %q13 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %11, i32 0, i32 1
  %x14 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q13, i32 0, i32 0
  store i32 %shl12, i32* %x14, align 4, !tbaa !173
  %12 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %update15 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %12, i32 0, i32 72
  %box16 = getelementptr inbounds %struct.anon, %struct.anon* %update15, i32 0, i32 0
  %q17 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %box16, i32 0, i32 1
  %y18 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q17, i32 0, i32 1
  %13 = load i32, i32* %y18, align 4, !tbaa !139
  %shl19 = shl i32 %13, 8
  %14 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !2
  %q20 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %14, i32 0, i32 1
  %y21 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q20, i32 0, i32 1
  store i32 %shl19, i32* %y21, align 4, !tbaa !174
  %15 = bitcast %struct.gx_device_X_s** %xdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @x_bbox_add_rect(i8* %pdata, i32 %x0, i32 %y0, i32 %x1, i32 %y1) #1 {
entry:
  %pdata.addr = alloca i8*, align 8
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %xdev = alloca %struct.gx_device_X_s*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i8* %pdata, i8** %pdata.addr, align 8, !tbaa !2
  store i32 %x0, i32* %x0.addr, align 4, !tbaa !41
  store i32 %y0, i32* %y0.addr, align 4, !tbaa !41
  store i32 %x1, i32* %x1.addr, align 4, !tbaa !41
  store i32 %y1, i32* %y1.addr, align 4, !tbaa !41
  %0 = bitcast %struct.gx_device_X_s** %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %pdata.addr, align 8, !tbaa !2
  %2 = bitcast i8* %1 to %struct.gx_device_X_s*
  store %struct.gx_device_X_s* %2, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %3 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load i32, i32* %x0.addr, align 4, !tbaa !41
  %shr = ashr i32 %4, 8
  store i32 %shr, i32* %x, align 4, !tbaa !41
  %5 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load i32, i32* %y0.addr, align 4, !tbaa !41
  %shr1 = ashr i32 %6, 8
  store i32 %shr1, i32* %y, align 4, !tbaa !41
  %7 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %8 = load i32, i32* %x, align 4, !tbaa !41
  %9 = load i32, i32* %y, align 4, !tbaa !41
  %10 = load i32, i32* %x1.addr, align 4, !tbaa !41
  %add = add nsw i32 %10, 255
  %shr2 = ashr i32 %add, 8
  %11 = load i32, i32* %x, align 4, !tbaa !41
  %sub = sub nsw i32 %shr2, %11
  %12 = load i32, i32* %y1.addr, align 4, !tbaa !41
  %add3 = add nsw i32 %12, 255
  %shr4 = ashr i32 %add3, 8
  %13 = load i32, i32* %y, align 4, !tbaa !41
  %sub5 = sub nsw i32 %shr4, %13
  call void @x_update_add(%struct.gx_device_X_s* %7, i32 %8, i32 %9, i32 %sub, i32 %sub5) #5
  %14 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #2
  %15 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #2
  %16 = bitcast %struct.gx_device_X_s** %xdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @x_bbox_in_rect(i8* %pdata, %struct.gs_fixed_rect_s* %pbox) #1 {
entry:
  %pdata.addr = alloca i8*, align 8
  %pbox.addr = alloca %struct.gs_fixed_rect_s*, align 8
  %box = alloca %struct.gs_fixed_rect_s, align 4
  store i8* %pdata, i8** %pdata.addr, align 8, !tbaa !2
  store %struct.gs_fixed_rect_s* %pbox, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !2
  %0 = bitcast %struct.gs_fixed_rect_s* %box to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #2
  %1 = load i8*, i8** %pdata.addr, align 8, !tbaa !2
  call void @x_bbox_get_box(i8* %1, %struct.gs_fixed_rect_s* %box) #5
  %2 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !2
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %2, i32 0, i32 1
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 1
  %3 = load i32, i32* %y, align 4, !tbaa !174
  %q1 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 1
  %y2 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q1, i32 0, i32 1
  %4 = load i32, i32* %y2, align 4, !tbaa !174
  %cmp = icmp sle i32 %3, %4
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !2
  %q3 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %5, i32 0, i32 1
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q3, i32 0, i32 0
  %6 = load i32, i32* %x, align 4, !tbaa !173
  %q4 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 1
  %x5 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q4, i32 0, i32 0
  %7 = load i32, i32* %x5, align 4, !tbaa !173
  %cmp6 = icmp sle i32 %6, %7
  br i1 %cmp6, label %land.lhs.true.7, label %land.end

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %8 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !2
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %8, i32 0, i32 0
  %y8 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 1
  %9 = load i32, i32* %y8, align 4, !tbaa !172
  %p9 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 0
  %y10 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p9, i32 0, i32 1
  %10 = load i32, i32* %y10, align 4, !tbaa !172
  %cmp11 = icmp sge i32 %9, %10
  br i1 %cmp11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.7
  %11 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !2
  %p12 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %11, i32 0, i32 0
  %x13 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p12, i32 0, i32 0
  %12 = load i32, i32* %x13, align 4, !tbaa !171
  %p14 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %box, i32 0, i32 0
  %x15 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p14, i32 0, i32 0
  %13 = load i32, i32* %x15, align 4, !tbaa !171
  %cmp16 = icmp sge i32 %12, %13
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.7, %land.lhs.true, %entry
  %14 = phi i1 [ false, %land.lhs.true.7 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp16, %land.rhs ]
  %land.ext = zext i1 %14 to i32
  %15 = bitcast %struct.gs_fixed_rect_s* %box to i8*
  call void @llvm.lifetime.end(i64 16, i8* %15) #2
  ret i32 %land.ext
}

declare i32 @gdev_x_open(%struct.gx_device_X_s*) #0

; Function Attrs: nounwind uwtable
define internal void @update_init(%struct.gx_device_X_s* %xdev) #1 {
entry:
  %xdev.addr = alloca %struct.gx_device_X_s*, align 8
  store %struct.gx_device_X_s* %xdev, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %0 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %update = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %0, i32 0, i32 72
  %box = getelementptr inbounds %struct.anon, %struct.anon* %update, i32 0, i32 0
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %box, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 1
  store i32 8388607, i32* %y, align 4, !tbaa !138
  %1 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %update1 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %1, i32 0, i32 72
  %box2 = getelementptr inbounds %struct.anon, %struct.anon* %update1, i32 0, i32 0
  %p3 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %box2, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p3, i32 0, i32 0
  store i32 8388607, i32* %x, align 4, !tbaa !136
  %2 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %update4 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %2, i32 0, i32 72
  %box5 = getelementptr inbounds %struct.anon, %struct.anon* %update4, i32 0, i32 0
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %box5, i32 0, i32 1
  %y6 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 1
  store i32 -8388608, i32* %y6, align 4, !tbaa !139
  %3 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %update7 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %3, i32 0, i32 72
  %box8 = getelementptr inbounds %struct.anon, %struct.anon* %update7, i32 0, i32 0
  %q9 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %box8, i32 0, i32 1
  %x10 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q9, i32 0, i32 0
  store i32 -8388608, i32* %x10, align 4, !tbaa !137
  %4 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %update11 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %4, i32 0, i32 72
  %count = getelementptr inbounds %struct.anon, %struct.anon* %update11, i32 0, i32 3
  store i32 0, i32* %count, align 4, !tbaa !153
  %5 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %update12 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %5, i32 0, i32 72
  %total = getelementptr inbounds %struct.anon, %struct.anon* %update12, i32 0, i32 2
  store i64 0, i64* %total, align 8, !tbaa !154
  %6 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %update13 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %6, i32 0, i32 72
  %area = getelementptr inbounds %struct.anon, %struct.anon* %update13, i32 0, i32 1
  store i64 0, i64* %area, align 8, !tbaa !152
  ret void
}

declare i32 @gdev_x_close(%struct.gx_device_X_s*) #0

declare void @gx_default_get_initial_matrix(%struct.gx_device_s*, %struct.gs_matrix_s*) #0

declare i32 @XSync(%struct._XDisplay*, i32) #0

declare i32 @XNextEvent(%struct._XDisplay*, %union._XEvent*) #0

declare i32 @gx_finish_output_page(%struct.gx_device_s*, i32, i32) #0

; Function Attrs: nounwind uwtable
define internal void @do_flush_text(%struct.gx_device_X_s* %xdev) #1 {
entry:
  %xdev.addr = alloca %struct.gx_device_X_s*, align 8
  store %struct.gx_device_X_s* %xdev, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %0 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %text = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %0, i32 0, i32 100
  %item_count = getelementptr inbounds %struct.anon.4, %struct.anon.4* %text, i32 0, i32 0
  %1 = load i32, i32* %item_count, align 4, !tbaa !64
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %2, i32 0, i32 58
  %3 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8, !tbaa !55
  %4 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dest = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %4, i32 0, i32 73
  %5 = load i64, i64* %dest, align 8, !tbaa !71
  %6 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %gc = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %6, i32 0, i32 63
  %7 = load %struct._XGC*, %struct._XGC** %gc, align 8, !tbaa !66
  %8 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %text1 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %8, i32 0, i32 100
  %origin = getelementptr inbounds %struct.anon.4, %struct.anon.4* %text1, i32 0, i32 2
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %origin, i32 0, i32 0
  %9 = load i32, i32* %x, align 4, !tbaa !175
  %10 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %text2 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %10, i32 0, i32 100
  %origin3 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %text2, i32 0, i32 2
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %origin3, i32 0, i32 1
  %11 = load i32, i32* %y, align 4, !tbaa !176
  %12 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %text4 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %12, i32 0, i32 100
  %items = getelementptr inbounds %struct.anon.4, %struct.anon.4* %text4, i32 0, i32 4
  %arraydecay = getelementptr inbounds [12 x %struct.XTextItem], [12 x %struct.XTextItem]* %items, i32 0, i32 0
  %13 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %text5 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %13, i32 0, i32 100
  %item_count6 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %text5, i32 0, i32 0
  %14 = load i32, i32* %item_count6, align 4, !tbaa !64
  %call = call i32 @XDrawText(%struct._XDisplay* %3, i64 %5, %struct._XGC* %7, i32 %9, i32 %11, %struct.XTextItem* %arraydecay, i32 %14) #5
  %15 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %text7 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %15, i32 0, i32 100
  %char_count = getelementptr inbounds %struct.anon.4, %struct.anon.4* %text7, i32 0, i32 1
  store i32 0, i32* %char_count, align 4, !tbaa !177
  %16 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %text8 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %16, i32 0, i32 100
  %item_count9 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %text8, i32 0, i32 0
  store i32 0, i32* %item_count9, align 4, !tbaa !64
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare i32 @XSetFillStyle(%struct._XDisplay*, %struct._XGC*, i32) #0

declare i32 @XSetForeground(%struct._XDisplay*, %struct._XGC*, i64) #0

declare i32 @XSetFunction(%struct._XDisplay*, %struct._XGC*, i32) #0

declare i32 @XFillRectangle(%struct._XDisplay*, i64, %struct._XGC*, i32, i32, i32, i32) #0

declare void @gdev_x_free_dynamic_colors(%struct.gx_device_X_s*) #0

declare i32 @XDrawText(%struct._XDisplay*, i64, %struct._XGC*, i32, i32, %struct.XTextItem*, i32) #0

declare i32 @XSetBackground(%struct._XDisplay*, %struct._XGC*, i64) #0

declare i32 @XInitImage(%struct._XImage*) #0

declare i32 @XPutImage(%struct._XDisplay*, i64, %struct._XGC*, %struct._XImage*, i32, i32, i32, i32, i32, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @alt_put_image(%struct.gx_device_s* %dev, %struct._XDisplay* %dpy, i64 %win, %struct._XGC* %gc, %struct._XImage* %pi, i32 %sx, i32 %sy, i32 %dx, i32 %dy, i32 %w, i32 %h) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %dpy.addr = alloca %struct._XDisplay*, align 8
  %win.addr = alloca i64, align 8
  %gc.addr = alloca %struct._XGC*, align 8
  %pi.addr = alloca %struct._XImage*, align 8
  %sx.addr = alloca i32, align 4
  %sy.addr = alloca i32, align 4
  %dx.addr = alloca i32, align 4
  %dy.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %raster = alloca i32, align 4
  %data = alloca i8*, align 8
  %init_mask = alloca i32, align 4
  %invert = alloca i32, align 4
  %yi = alloca i32, align 4
  %rects = alloca [40 x %struct.XRectangle], align 16
  %rp = alloca %struct.XRectangle*, align 8
  %gcv = alloca %struct.XGCValues, align 8
  %cleanup.dest.slot = alloca i32
  %mask = alloca i32, align 4
  %dp = alloca i8*, align 8
  %xi = alloca i32, align 4
  %xleft = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  store %struct._XDisplay* %dpy, %struct._XDisplay** %dpy.addr, align 8, !tbaa !2
  store i64 %win, i64* %win.addr, align 8, !tbaa !60
  store %struct._XGC* %gc, %struct._XGC** %gc.addr, align 8, !tbaa !2
  store %struct._XImage* %pi, %struct._XImage** %pi.addr, align 8, !tbaa !2
  store i32 %sx, i32* %sx.addr, align 4, !tbaa !41
  store i32 %sy, i32* %sy.addr, align 4, !tbaa !41
  store i32 %dx, i32* %dx.addr, align 4, !tbaa !41
  store i32 %dy, i32* %dy.addr, align 4, !tbaa !41
  store i32 %w, i32* %w.addr, align 4, !tbaa !41
  store i32 %h, i32* %h.addr, align 4, !tbaa !41
  %0 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct._XImage*, %struct._XImage** %pi.addr, align 8, !tbaa !2
  %bytes_per_line = getelementptr inbounds %struct._XImage, %struct._XImage* %1, i32 0, i32 10
  %2 = load i32, i32* %bytes_per_line, align 4, !tbaa !141
  store i32 %2, i32* %raster, align 4, !tbaa !41
  %3 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct._XImage*, %struct._XImage** %pi.addr, align 8, !tbaa !2
  %data1 = getelementptr inbounds %struct._XImage, %struct._XImage* %4, i32 0, i32 4
  %5 = load i8*, i8** %data1, align 8, !tbaa !140
  %6 = load i32, i32* %sy.addr, align 4, !tbaa !41
  %7 = load i32, i32* %raster, align 4, !tbaa !41
  %mul = mul nsw i32 %6, %7
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %idx.ext
  %8 = load i32, i32* %sx.addr, align 4, !tbaa !41
  %shr = ashr i32 %8, 3
  %idx.ext2 = sext i32 %shr to i64
  %add.ptr3 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext2
  store i8* %add.ptr3, i8** %data, align 8, !tbaa !2
  %9 = bitcast i32* %init_mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load i32, i32* %sx.addr, align 4, !tbaa !41
  %and = and i32 %10, 7
  %shr4 = ashr i32 128, %and
  store i32 %shr4, i32* %init_mask, align 4, !tbaa !41
  %11 = bitcast i32* %invert to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  store i32 0, i32* %invert, align 4, !tbaa !41
  %12 = bitcast i32* %yi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = bitcast [40 x %struct.XRectangle]* %rects to i8*
  call void @llvm.lifetime.start(i64 320, i8* %13) #2
  %14 = bitcast %struct.XRectangle** %rp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #2
  %arraydecay = getelementptr inbounds [40 x %struct.XRectangle], [40 x %struct.XRectangle]* %rects, i32 0, i32 0
  store %struct.XRectangle* %arraydecay, %struct.XRectangle** %rp, align 8, !tbaa !2
  %15 = bitcast %struct.XGCValues* %gcv to i8*
  call void @llvm.lifetime.start(i64 128, i8* %15) #2
  %16 = load %struct._XDisplay*, %struct._XDisplay** %dpy.addr, align 8, !tbaa !2
  %17 = load %struct._XGC*, %struct._XGC** %gc.addr, align 8, !tbaa !2
  %call = call i32 @XGetGCValues(%struct._XDisplay* %16, %struct._XGC* %17, i64 13, %struct.XGCValues* %gcv) #5
  %function = getelementptr inbounds %struct.XGCValues, %struct.XGCValues* %gcv, i32 0, i32 0
  %18 = load i32, i32* %function, align 4, !tbaa !178
  %cmp = icmp eq i32 %18, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %19 = load %struct._XDisplay*, %struct._XDisplay** %dpy.addr, align 8, !tbaa !2
  %20 = load %struct._XGC*, %struct._XGC** %gc.addr, align 8, !tbaa !2
  %background = getelementptr inbounds %struct.XGCValues, %struct.XGCValues* %gcv, i32 0, i32 3
  %21 = load i64, i64* %background, align 8, !tbaa !180
  %call5 = call i32 @XSetForeground(%struct._XDisplay* %19, %struct._XGC* %20, i64 %21) #5
  %22 = load %struct._XDisplay*, %struct._XDisplay** %dpy.addr, align 8, !tbaa !2
  %23 = load i64, i64* %win.addr, align 8, !tbaa !60
  %24 = load %struct._XGC*, %struct._XGC** %gc.addr, align 8, !tbaa !2
  %25 = load i32, i32* %dx.addr, align 4, !tbaa !41
  %26 = load i32, i32* %dy.addr, align 4, !tbaa !41
  %27 = load i32, i32* %w.addr, align 4, !tbaa !41
  %28 = load i32, i32* %h.addr, align 4, !tbaa !41
  %call6 = call i32 @XFillRectangle(%struct._XDisplay* %22, i64 %23, %struct._XGC* %24, i32 %25, i32 %26, i32 %27, i32 %28) #5
  %29 = load %struct._XDisplay*, %struct._XDisplay** %dpy.addr, align 8, !tbaa !2
  %30 = load %struct._XGC*, %struct._XGC** %gc.addr, align 8, !tbaa !2
  %foreground = getelementptr inbounds %struct.XGCValues, %struct.XGCValues* %gcv, i32 0, i32 2
  %31 = load i64, i64* %foreground, align 8, !tbaa !181
  %call7 = call i32 @XSetForeground(%struct._XDisplay* %29, %struct._XGC* %30, i64 %31) #5
  br label %if.end.32

if.else:                                          ; preds = %entry
  %function8 = getelementptr inbounds %struct.XGCValues, %struct.XGCValues* %gcv, i32 0, i32 0
  %32 = load i32, i32* %function8, align 4, !tbaa !178
  %cmp9 = icmp eq i32 %32, 1
  br i1 %cmp9, label %if.then.10, label %if.else.16

if.then.10:                                       ; preds = %if.else
  %background11 = getelementptr inbounds %struct.XGCValues, %struct.XGCValues* %gcv, i32 0, i32 3
  %33 = load i64, i64* %background11, align 8, !tbaa !180
  %cmp12 = icmp ne i64 %33, -1
  br i1 %cmp12, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.then.10
  %34 = load %struct._XDisplay*, %struct._XDisplay** %dpy.addr, align 8, !tbaa !2
  %35 = load %struct._XGC*, %struct._XGC** %gc.addr, align 8, !tbaa !2
  %background14 = getelementptr inbounds %struct.XGCValues, %struct.XGCValues* %gcv, i32 0, i32 3
  %36 = load i64, i64* %background14, align 8, !tbaa !180
  %call15 = call i32 @XSetForeground(%struct._XDisplay* %34, %struct._XGC* %35, i64 %36) #5
  store i32 255, i32* %invert, align 4, !tbaa !41
  br label %if.end

if.end:                                           ; preds = %if.then.13, %if.then.10
  br label %if.end.31

if.else.16:                                       ; preds = %if.else
  %function17 = getelementptr inbounds %struct.XGCValues, %struct.XGCValues* %gcv, i32 0, i32 0
  %37 = load i32, i32* %function17, align 4, !tbaa !178
  %cmp18 = icmp eq i32 %37, 7
  br i1 %cmp18, label %if.then.19, label %if.else.26

if.then.19:                                       ; preds = %if.else.16
  %background20 = getelementptr inbounds %struct.XGCValues, %struct.XGCValues* %gcv, i32 0, i32 3
  %38 = load i64, i64* %background20, align 8, !tbaa !180
  %cmp21 = icmp ne i64 %38, 0
  br i1 %cmp21, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %if.then.19
  %39 = load %struct._XDisplay*, %struct._XDisplay** %dpy.addr, align 8, !tbaa !2
  %40 = load %struct._XGC*, %struct._XGC** %gc.addr, align 8, !tbaa !2
  %background23 = getelementptr inbounds %struct.XGCValues, %struct.XGCValues* %gcv, i32 0, i32 3
  %41 = load i64, i64* %background23, align 8, !tbaa !180
  %call24 = call i32 @XSetForeground(%struct._XDisplay* %39, %struct._XGC* %40, i64 %41) #5
  store i32 255, i32* %invert, align 4, !tbaa !41
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.22, %if.then.19
  br label %if.end.30

if.else.26:                                       ; preds = %if.else.16
  %call27 = call i8* @gs_program_name() #5
  %call28 = call i64 @gs_revision_number() #5
  call void @eprintf_program_ident(i8* %call27, i64 %call28) #5
  call void @lprintf_file_and_line(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i32 1252) #5
  %call29 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i32 0, i32 0)) #5
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %if.end.25
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.end
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then
  store i32 0, i32* %yi, align 4, !tbaa !41
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.32
  %42 = load i32, i32* %yi, align 4, !tbaa !41
  %43 = load i32, i32* %h.addr, align 4, !tbaa !41
  %cmp33 = icmp ult i32 %42, %43
  br i1 %cmp33, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %44 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #2
  %45 = load i32, i32* %init_mask, align 4, !tbaa !41
  store i32 %45, i32* %mask, align 4, !tbaa !41
  %46 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %46) #2
  %47 = load i8*, i8** %data, align 8, !tbaa !2
  store i8* %47, i8** %dp, align 8, !tbaa !2
  %48 = bitcast i32* %xi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #2
  store i32 0, i32* %xi, align 4, !tbaa !41
  br label %while.cond

while.cond:                                       ; preds = %if.end.66, %for.body
  %49 = load i32, i32* %xi, align 4, !tbaa !41
  %50 = load i32, i32* %w.addr, align 4, !tbaa !41
  %cmp34 = icmp ult i32 %49, %50
  br i1 %cmp34, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %51 = load i8*, i8** %dp, align 8, !tbaa !2
  %52 = load i8, i8* %51, align 1, !tbaa !97
  %conv = zext i8 %52 to i32
  %53 = load i32, i32* %invert, align 4, !tbaa !41
  %xor = xor i32 %conv, %53
  %54 = load i32, i32* %mask, align 4, !tbaa !41
  %and35 = and i32 %xor, %54
  %tobool = icmp ne i32 %and35, 0
  br i1 %tobool, label %if.then.36, label %if.else.59

if.then.36:                                       ; preds = %while.body
  %55 = bitcast i32* %xleft to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #2
  %56 = load i32, i32* %xi, align 4, !tbaa !41
  store i32 %56, i32* %xleft, align 4, !tbaa !41
  %57 = load %struct.XRectangle*, %struct.XRectangle** %rp, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds [40 x %struct.XRectangle], [40 x %struct.XRectangle]* %rects, i32 0, i64 40
  %cmp37 = icmp eq %struct.XRectangle* %57, %arrayidx
  br i1 %cmp37, label %if.then.39, label %if.end.43

if.then.39:                                       ; preds = %if.then.36
  %58 = load %struct._XDisplay*, %struct._XDisplay** %dpy.addr, align 8, !tbaa !2
  %59 = load i64, i64* %win.addr, align 8, !tbaa !60
  %60 = load %struct._XGC*, %struct._XGC** %gc.addr, align 8, !tbaa !2
  %arraydecay40 = getelementptr inbounds [40 x %struct.XRectangle], [40 x %struct.XRectangle]* %rects, i32 0, i32 0
  %call41 = call i32 @XFillRectangles(%struct._XDisplay* %58, i64 %59, %struct._XGC* %60, %struct.XRectangle* %arraydecay40, i32 40) #5
  %arraydecay42 = getelementptr inbounds [40 x %struct.XRectangle], [40 x %struct.XRectangle]* %rects, i32 0, i32 0
  store %struct.XRectangle* %arraydecay42, %struct.XRectangle** %rp, align 8, !tbaa !2
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.39, %if.then.36
  %61 = load i32, i32* %dx.addr, align 4, !tbaa !41
  %62 = load i32, i32* %xi, align 4, !tbaa !41
  %add = add nsw i32 %61, %62
  %conv44 = trunc i32 %add to i16
  %63 = load %struct.XRectangle*, %struct.XRectangle** %rp, align 8, !tbaa !2
  %x = getelementptr inbounds %struct.XRectangle, %struct.XRectangle* %63, i32 0, i32 0
  store i16 %conv44, i16* %x, align 2, !tbaa !182
  %64 = load i32, i32* %dy.addr, align 4, !tbaa !41
  %65 = load i32, i32* %yi, align 4, !tbaa !41
  %add45 = add nsw i32 %64, %65
  %conv46 = trunc i32 %add45 to i16
  %66 = load %struct.XRectangle*, %struct.XRectangle** %rp, align 8, !tbaa !2
  %y = getelementptr inbounds %struct.XRectangle, %struct.XRectangle* %66, i32 0, i32 1
  store i16 %conv46, i16* %y, align 2, !tbaa !184
  br label %do.body

do.body:                                          ; preds = %land.end, %if.end.43
  %67 = load i32, i32* %mask, align 4, !tbaa !41
  %shr47 = ashr i32 %67, 1
  store i32 %shr47, i32* %mask, align 4, !tbaa !41
  %tobool48 = icmp ne i32 %shr47, 0
  br i1 %tobool48, label %if.end.50, label %if.then.49

if.then.49:                                       ; preds = %do.body
  store i32 128, i32* %mask, align 4, !tbaa !41
  %68 = load i8*, i8** %dp, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %incdec.ptr, i8** %dp, align 8, !tbaa !2
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.49, %do.body
  %69 = load i32, i32* %xi, align 4, !tbaa !41
  %inc = add nsw i32 %69, 1
  store i32 %inc, i32* %xi, align 4, !tbaa !41
  br label %do.cond

do.cond:                                          ; preds = %if.end.50
  %70 = load i32, i32* %xi, align 4, !tbaa !41
  %71 = load i32, i32* %w.addr, align 4, !tbaa !41
  %cmp51 = icmp ult i32 %70, %71
  br i1 %cmp51, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %72 = load i8*, i8** %dp, align 8, !tbaa !2
  %73 = load i8, i8* %72, align 1, !tbaa !97
  %conv53 = zext i8 %73 to i32
  %74 = load i32, i32* %invert, align 4, !tbaa !41
  %xor54 = xor i32 %conv53, %74
  %75 = load i32, i32* %mask, align 4, !tbaa !41
  %and55 = and i32 %xor54, %75
  %tobool56 = icmp ne i32 %and55, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %76 = phi i1 [ false, %do.cond ], [ %tobool56, %land.rhs ]
  br i1 %76, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %77 = load i32, i32* %xi, align 4, !tbaa !41
  %78 = load i32, i32* %xleft, align 4, !tbaa !41
  %sub = sub nsw i32 %77, %78
  %conv57 = trunc i32 %sub to i16
  %79 = load %struct.XRectangle*, %struct.XRectangle** %rp, align 8, !tbaa !2
  %width = getelementptr inbounds %struct.XRectangle, %struct.XRectangle* %79, i32 0, i32 2
  store i16 %conv57, i16* %width, align 2, !tbaa !185
  %80 = load %struct.XRectangle*, %struct.XRectangle** %rp, align 8, !tbaa !2
  %height = getelementptr inbounds %struct.XRectangle, %struct.XRectangle* %80, i32 0, i32 3
  store i16 1, i16* %height, align 2, !tbaa !186
  %81 = load %struct.XRectangle*, %struct.XRectangle** %rp, align 8, !tbaa !2
  %incdec.ptr58 = getelementptr inbounds %struct.XRectangle, %struct.XRectangle* %81, i32 1
  store %struct.XRectangle* %incdec.ptr58, %struct.XRectangle** %rp, align 8, !tbaa !2
  %82 = bitcast i32* %xleft to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #2
  br label %if.end.66

if.else.59:                                       ; preds = %while.body
  %83 = load i32, i32* %mask, align 4, !tbaa !41
  %shr60 = ashr i32 %83, 1
  store i32 %shr60, i32* %mask, align 4, !tbaa !41
  %tobool61 = icmp ne i32 %shr60, 0
  br i1 %tobool61, label %if.end.64, label %if.then.62

if.then.62:                                       ; preds = %if.else.59
  store i32 128, i32* %mask, align 4, !tbaa !41
  %84 = load i8*, i8** %dp, align 8, !tbaa !2
  %incdec.ptr63 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %incdec.ptr63, i8** %dp, align 8, !tbaa !2
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.62, %if.else.59
  %85 = load i32, i32* %xi, align 4, !tbaa !41
  %inc65 = add nsw i32 %85, 1
  store i32 %inc65, i32* %xi, align 4, !tbaa !41
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.64, %do.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %86 = bitcast i32* %xi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #2
  %87 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #2
  %88 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #2
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %89 = load i32, i32* %yi, align 4, !tbaa !41
  %inc67 = add nsw i32 %89, 1
  store i32 %inc67, i32* %yi, align 4, !tbaa !41
  %90 = load i32, i32* %raster, align 4, !tbaa !41
  %91 = load i8*, i8** %data, align 8, !tbaa !2
  %idx.ext68 = sext i32 %90 to i64
  %add.ptr69 = getelementptr inbounds i8, i8* %91, i64 %idx.ext68
  store i8* %add.ptr69, i8** %data, align 8, !tbaa !2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %92 = load %struct._XDisplay*, %struct._XDisplay** %dpy.addr, align 8, !tbaa !2
  %93 = load i64, i64* %win.addr, align 8, !tbaa !60
  %94 = load %struct._XGC*, %struct._XGC** %gc.addr, align 8, !tbaa !2
  %arraydecay70 = getelementptr inbounds [40 x %struct.XRectangle], [40 x %struct.XRectangle]* %rects, i32 0, i32 0
  %95 = load %struct.XRectangle*, %struct.XRectangle** %rp, align 8, !tbaa !2
  %arraydecay71 = getelementptr inbounds [40 x %struct.XRectangle], [40 x %struct.XRectangle]* %rects, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint %struct.XRectangle* %95 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.XRectangle* %arraydecay71 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %conv72 = trunc i64 %sub.ptr.div to i32
  %call73 = call i32 @XFillRectangles(%struct._XDisplay* %92, i64 %93, %struct._XGC* %94, %struct.XRectangle* %arraydecay70, i32 %conv72) #5
  %96 = load i32, i32* %invert, align 4, !tbaa !41
  %tobool74 = icmp ne i32 %96, 0
  br i1 %tobool74, label %if.then.75, label %if.end.78

if.then.75:                                       ; preds = %for.end
  %97 = load %struct._XDisplay*, %struct._XDisplay** %dpy.addr, align 8, !tbaa !2
  %98 = load %struct._XGC*, %struct._XGC** %gc.addr, align 8, !tbaa !2
  %foreground76 = getelementptr inbounds %struct.XGCValues, %struct.XGCValues* %gcv, i32 0, i32 2
  %99 = load i64, i64* %foreground76, align 8, !tbaa !181
  %call77 = call i32 @XSetForeground(%struct._XDisplay* %97, %struct._XGC* %98, i64 %99) #5
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.75, %for.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.78, %if.else.26
  %100 = bitcast %struct.XGCValues* %gcv to i8*
  call void @llvm.lifetime.end(i64 128, i8* %100) #2
  %101 = bitcast %struct.XRectangle** %rp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #2
  %102 = bitcast [40 x %struct.XRectangle]* %rects to i8*
  call void @llvm.lifetime.end(i64 320, i8* %102) #2
  %103 = bitcast i32* %yi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #2
  %104 = bitcast i32* %invert to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #2
  %105 = bitcast i32* %init_mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #2
  %106 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #2
  %107 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #2
  %108 = load i32, i32* %retval
  ret i32 %108
}

; Function Attrs: nounwind uwtable
define internal void @free_cp(%struct.gx_device_s* %dev) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %xdev = alloca %struct.gx_device_X_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %0 = bitcast %struct.gx_device_X_s** %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_X_s*
  store %struct.gx_device_X_s* %2, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %3 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cp = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %3, i32 0, i32 76
  %gc = getelementptr inbounds %struct.anon.1, %struct.anon.1* %cp, i32 0, i32 1
  %4 = load %struct._XGC*, %struct._XGC** %gc, align 8, !tbaa !88
  %cmp = icmp ne %struct._XGC* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dpy = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %5, i32 0, i32 58
  %6 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8, !tbaa !55
  %7 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cp1 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %7, i32 0, i32 76
  %gc2 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %cp1, i32 0, i32 1
  %8 = load %struct._XGC*, %struct._XGC** %gc2, align 8, !tbaa !88
  %call = call i32 @XFreeGC(%struct._XDisplay* %6, %struct._XGC* %8) #5
  %9 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cp3 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %9, i32 0, i32 76
  %gc4 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %cp3, i32 0, i32 1
  store %struct._XGC* null, %struct._XGC** %gc4, align 8, !tbaa !88
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cp5 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %10, i32 0, i32 76
  %pixmap = getelementptr inbounds %struct.anon.1, %struct.anon.1* %cp5, i32 0, i32 0
  %11 = load i64, i64* %pixmap, align 8, !tbaa !87
  %cmp6 = icmp ne i64 %11, 0
  br i1 %cmp6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %if.end
  %12 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dpy8 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %12, i32 0, i32 58
  %13 = load %struct._XDisplay*, %struct._XDisplay** %dpy8, align 8, !tbaa !55
  %14 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cp9 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %14, i32 0, i32 76
  %pixmap10 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %cp9, i32 0, i32 0
  %15 = load i64, i64* %pixmap10, align 8, !tbaa !87
  %call11 = call i32 @XFreePixmap(%struct._XDisplay* %13, i64 %15) #5
  %16 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cp12 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %16, i32 0, i32 76
  %pixmap13 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %cp12, i32 0, i32 0
  store i64 0, i64* %pixmap13, align 8, !tbaa !87
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.7, %if.end
  %17 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %cp15 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %17, i32 0, i32 76
  %raster = getelementptr inbounds %struct.anon.1, %struct.anon.1* %cp15, i32 0, i32 2
  store i32 -1, i32* %raster, align 4, !tbaa !84
  %18 = bitcast %struct.gx_device_X_s** %xdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #2
  ret void
}

declare i64 @XCreatePixmap(%struct._XDisplay*, i64, i32, i32, i32) #0

declare void @eprintf_program_ident(i8*, i64) #0

declare i8* @gs_program_name() #0

declare i64 @gs_revision_number() #0

declare void @lprintf_file_and_line(i8*, i32) #0

declare i32 @errprintf_nomem(i8*, ...) #0

declare %struct._XGC* @XCreateGC(%struct._XDisplay*, i64, i64, %struct.XGCValues*) #0

declare i32 @XSetClipMask(%struct._XDisplay*, %struct._XGC*, i64) #0

declare i32 @XSetClipOrigin(%struct._XDisplay*, %struct._XGC*, i32, i32) #0

declare i32 @XGetGCValues(%struct._XDisplay*, %struct._XGC*, i64, %struct.XGCValues*) #0

declare i32 @XFillRectangles(%struct._XDisplay*, i64, %struct._XGC*, %struct.XRectangle*, i32) #0

declare i32 @XFreeGC(%struct._XDisplay*, %struct._XGC*) #0

declare i32 @XFreePixmap(%struct._XDisplay*, i64) #0

; Function Attrs: nounwind uwtable
define internal i32 @x_copy_image(%struct.gx_device_X_s* %xdev, i8* %base, i32 %sourcex, i32 %raster, i32 %x, i32 %y, i32 %w, i32 %h) #1 {
entry:
  %retval = alloca i32, align 4
  %xdev.addr = alloca %struct.gx_device_X_s*, align 8
  %base.addr = alloca i8*, align 8
  %sourcex.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %depth = alloca i32, align 4
  %sbit = alloca i32, align 4
  %ptr = alloca i8*, align 8
  %pixel = alloca i64, align 8
  %width = alloca i32, align 4
  %vdepth = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_X_s* %xdev, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  store i8* %base, i8** %base.addr, align 8, !tbaa !2
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !41
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !41
  store i32 %x, i32* %x.addr, align 4, !tbaa !41
  store i32 %y, i32* %y.addr, align 4, !tbaa !41
  store i32 %w, i32* %w.addr, align 4, !tbaa !41
  store i32 %h, i32* %h.addr, align 4, !tbaa !41
  %0 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %color_info = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %1, i32 0, i32 11
  %depth1 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %2 = load i16, i16* %depth1, align 2, !tbaa !187
  %conv = zext i16 %2 to i32
  store i32 %conv, i32* %depth, align 4, !tbaa !41
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %fill_style = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %3, i32 0, i32 79
  %4 = load i32, i32* %fill_style, align 4, !tbaa !65
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %5 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %5, i32 0, i32 58
  %6 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8, !tbaa !55
  %7 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %gc = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %7, i32 0, i32 63
  %8 = load %struct._XGC*, %struct._XGC** %gc, align 8, !tbaa !66
  %9 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %fill_style3 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %9, i32 0, i32 79
  store i32 0, i32* %fill_style3, align 4, !tbaa !65
  %call = call i32 @XSetFillStyle(%struct._XDisplay* %6, %struct._XGC* %8, i32 0) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.4

do.body.4:                                        ; preds = %do.end
  %10 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %function = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %10, i32 0, i32 78
  %11 = load i32, i32* %function, align 4, !tbaa !70
  %cmp5 = icmp ne i32 %11, 3
  br i1 %cmp5, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %do.body.4
  %12 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy8 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %12, i32 0, i32 58
  %13 = load %struct._XDisplay*, %struct._XDisplay** %dpy8, align 8, !tbaa !55
  %14 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %gc9 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %14, i32 0, i32 63
  %15 = load %struct._XGC*, %struct._XGC** %gc9, align 8, !tbaa !66
  %16 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %function10 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %16, i32 0, i32 78
  store i32 3, i32* %function10, align 4, !tbaa !70
  %call11 = call i32 @XSetFunction(%struct._XDisplay* %13, %struct._XGC* %15, i32 3) #5
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.7, %do.body.4
  br label %do.cond.13

do.cond.13:                                       ; preds = %if.end.12
  br label %do.end.14

do.end.14:                                        ; preds = %do.cond.13
  %17 = load i32, i32* %h.addr, align 4, !tbaa !41
  %cmp15 = icmp eq i32 %17, 1
  br i1 %cmp15, label %land.lhs.true, label %if.else.51

land.lhs.true:                                    ; preds = %do.end.14
  %18 = load i32, i32* %w.addr, align 4, !tbaa !41
  %cmp17 = icmp eq i32 %18, 1
  br i1 %cmp17, label %if.then.19, label %if.else.51

if.then.19:                                       ; preds = %land.lhs.true
  %19 = bitcast i32* %sbit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #2
  %20 = load i32, i32* %sourcex.addr, align 4, !tbaa !41
  %21 = load i32, i32* %depth, align 4, !tbaa !41
  %mul = mul nsw i32 %20, %21
  store i32 %mul, i32* %sbit, align 4, !tbaa !41
  %22 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #2
  %23 = load i8*, i8** %base.addr, align 8, !tbaa !2
  %24 = load i32, i32* %sbit, align 4, !tbaa !41
  %shr = lshr i32 %24, 3
  %idx.ext = zext i32 %shr to i64
  %add.ptr = getelementptr inbounds i8, i8* %23, i64 %idx.ext
  store i8* %add.ptr, i8** %ptr, align 8, !tbaa !2
  %25 = bitcast i64* %pixel to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #2
  %26 = load i32, i32* %depth, align 4, !tbaa !41
  %cmp20 = icmp slt i32 %26, 8
  br i1 %cmp20, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %if.then.19
  %27 = load i8*, i8** %ptr, align 8, !tbaa !2
  %28 = load i8, i8* %27, align 1, !tbaa !97
  %conv23 = zext i8 %28 to i32
  %29 = load i32, i32* %sbit, align 4, !tbaa !41
  %and = and i32 %29, 7
  %shl = shl i32 %conv23, %and
  %conv24 = trunc i32 %shl to i8
  %conv25 = zext i8 %conv24 to i32
  %30 = load i32, i32* %depth, align 4, !tbaa !41
  %sub = sub nsw i32 8, %30
  %shr26 = ashr i32 %conv25, %sub
  %conv27 = sext i32 %shr26 to i64
  store i64 %conv27, i64* %pixel, align 8, !tbaa !60
  br label %if.end.35

if.else:                                          ; preds = %if.then.19
  %31 = load i8*, i8** %ptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8, !tbaa !2
  %32 = load i8, i8* %31, align 1, !tbaa !97
  %conv28 = zext i8 %32 to i64
  store i64 %conv28, i64* %pixel, align 8, !tbaa !60
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %33 = load i32, i32* %depth, align 4, !tbaa !41
  %sub29 = sub nsw i32 %33, 8
  store i32 %sub29, i32* %depth, align 4, !tbaa !41
  %cmp30 = icmp sgt i32 %sub29, 0
  br i1 %cmp30, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %34 = load i64, i64* %pixel, align 8, !tbaa !60
  %shl32 = shl i64 %34, 8
  %35 = load i8*, i8** %ptr, align 8, !tbaa !2
  %incdec.ptr33 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr33, i8** %ptr, align 8, !tbaa !2
  %36 = load i8, i8* %35, align 1, !tbaa !97
  %conv34 = zext i8 %36 to i64
  %add = add i64 %shl32, %conv34
  store i64 %add, i64* %pixel, align 8, !tbaa !60
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.35

if.end.35:                                        ; preds = %while.end, %if.then.22
  br label %do.body.36

do.body.36:                                       ; preds = %if.end.35
  %37 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %fore_color = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %37, i32 0, i32 82
  %38 = load i64, i64* %fore_color, align 8, !tbaa !67
  %39 = load i64, i64* %pixel, align 8, !tbaa !60
  %cmp37 = icmp ne i64 %38, %39
  br i1 %cmp37, label %if.then.39, label %if.end.45

if.then.39:                                       ; preds = %do.body.36
  %40 = load i64, i64* %pixel, align 8, !tbaa !60
  %41 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %fore_color40 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %41, i32 0, i32 82
  store i64 %40, i64* %fore_color40, align 8, !tbaa !67
  %42 = load i64, i64* %pixel, align 8, !tbaa !60
  %43 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %colors_or = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %43, i32 0, i32 74
  %44 = load i64, i64* %colors_or, align 8, !tbaa !68
  %or = or i64 %44, %42
  store i64 %or, i64* %colors_or, align 8, !tbaa !68
  %45 = load i64, i64* %pixel, align 8, !tbaa !60
  %46 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %colors_and = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %46, i32 0, i32 75
  %47 = load i64, i64* %colors_and, align 8, !tbaa !69
  %and41 = and i64 %47, %45
  store i64 %and41, i64* %colors_and, align 8, !tbaa !69
  %48 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy42 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %48, i32 0, i32 58
  %49 = load %struct._XDisplay*, %struct._XDisplay** %dpy42, align 8, !tbaa !55
  %50 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %gc43 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %50, i32 0, i32 63
  %51 = load %struct._XGC*, %struct._XGC** %gc43, align 8, !tbaa !66
  %52 = load i64, i64* %pixel, align 8, !tbaa !60
  %call44 = call i32 @XSetForeground(%struct._XDisplay* %49, %struct._XGC* %51, i64 %52) #5
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.39, %do.body.36
  br label %do.cond.46

do.cond.46:                                       ; preds = %if.end.45
  br label %do.end.47

do.end.47:                                        ; preds = %do.cond.46
  %53 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy48 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %53, i32 0, i32 58
  %54 = load %struct._XDisplay*, %struct._XDisplay** %dpy48, align 8, !tbaa !55
  %55 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dest = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %55, i32 0, i32 73
  %56 = load i64, i64* %dest, align 8, !tbaa !71
  %57 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %gc49 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %57, i32 0, i32 63
  %58 = load %struct._XGC*, %struct._XGC** %gc49, align 8, !tbaa !66
  %59 = load i32, i32* %x.addr, align 4, !tbaa !41
  %60 = load i32, i32* %y.addr, align 4, !tbaa !41
  %call50 = call i32 @XDrawPoint(%struct._XDisplay* %54, i64 %56, %struct._XGC* %58, i32 %59, i32 %60) #5
  %61 = bitcast i64* %pixel to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #2
  %62 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #2
  %63 = bitcast i32* %sbit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #2
  br label %if.end.91

if.else.51:                                       ; preds = %land.lhs.true, %do.end.14
  %64 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %64) #2
  %65 = load i32, i32* %sourcex.addr, align 4, !tbaa !41
  %66 = load i32, i32* %w.addr, align 4, !tbaa !41
  %add52 = add nsw i32 %65, %66
  store i32 %add52, i32* %width, align 4, !tbaa !41
  %67 = bitcast i32* %vdepth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %67) #2
  %68 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %vinfo = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %68, i32 0, i32 60
  %69 = load %struct.XVisualInfo*, %struct.XVisualInfo** %vinfo, align 8, !tbaa !188
  %depth53 = getelementptr inbounds %struct.XVisualInfo, %struct.XVisualInfo* %69, i32 0, i32 3
  %70 = load i32, i32* %depth53, align 4, !tbaa !189
  store i32 %70, i32* %vdepth, align 4, !tbaa !41
  %71 = load i32, i32* %width, align 4, !tbaa !41
  %72 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %image = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %72, i32 0, i32 57
  %width54 = getelementptr inbounds %struct._XImage, %struct._XImage* %image, i32 0, i32 0
  store i32 %71, i32* %width54, align 4, !tbaa !77
  %73 = load i32, i32* %h.addr, align 4, !tbaa !41
  %74 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %image55 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %74, i32 0, i32 57
  %height = getelementptr inbounds %struct._XImage, %struct._XImage* %image55, i32 0, i32 1
  store i32 %73, i32* %height, align 4, !tbaa !78
  %75 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %image56 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %75, i32 0, i32 57
  %format = getelementptr inbounds %struct._XImage, %struct._XImage* %image56, i32 0, i32 3
  store i32 2, i32* %format, align 4, !tbaa !81
  %76 = load i8*, i8** %base.addr, align 8, !tbaa !2
  %77 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %image57 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %77, i32 0, i32 57
  %data = getelementptr inbounds %struct._XImage, %struct._XImage* %image57, i32 0, i32 4
  store i8* %76, i8** %data, align 8, !tbaa !79
  %78 = load i32, i32* %vdepth, align 4, !tbaa !41
  %79 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %image58 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %79, i32 0, i32 57
  %depth59 = getelementptr inbounds %struct._XImage, %struct._XImage* %image58, i32 0, i32 9
  store i32 %78, i32* %depth59, align 4, !tbaa !191
  %80 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %image60 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %80, i32 0, i32 57
  %bitmap_pad = getelementptr inbounds %struct._XImage, %struct._XImage* %image60, i32 0, i32 8
  store i32 8, i32* %bitmap_pad, align 4, !tbaa !192
  %81 = load i32, i32* %width, align 4, !tbaa !41
  %82 = load i32, i32* %vdepth, align 4, !tbaa !41
  %mul61 = mul nsw i32 %81, %82
  %83 = load i32, i32* %raster.addr, align 4, !tbaa !41
  %mul62 = mul nsw i32 %83, 8
  %cmp63 = icmp slt i32 %mul61, %mul62
  br i1 %cmp63, label %if.then.65, label %if.else.67

if.then.65:                                       ; preds = %if.else.51
  %84 = load i32, i32* %raster.addr, align 4, !tbaa !41
  %85 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %image66 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %85, i32 0, i32 57
  %bytes_per_line = getelementptr inbounds %struct._XImage, %struct._XImage* %image66, i32 0, i32 10
  store i32 %84, i32* %bytes_per_line, align 4, !tbaa !80
  br label %if.end.70

if.else.67:                                       ; preds = %if.else.51
  %86 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %image68 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %86, i32 0, i32 57
  %bytes_per_line69 = getelementptr inbounds %struct._XImage, %struct._XImage* %image68, i32 0, i32 10
  store i32 0, i32* %bytes_per_line69, align 4, !tbaa !80
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.67, %if.then.65
  %87 = load i32, i32* %depth, align 4, !tbaa !41
  %88 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %image71 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %88, i32 0, i32 57
  %bits_per_pixel = getelementptr inbounds %struct._XImage, %struct._XImage* %image71, i32 0, i32 11
  store i32 %87, i32* %bits_per_pixel, align 4, !tbaa !193
  %89 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %image72 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %89, i32 0, i32 57
  %call73 = call i32 @XInitImage(%struct._XImage* %image72) #5
  %cmp74 = icmp eq i32 %call73, 0
  br i1 %cmp74, label %if.then.76, label %if.end.78

if.then.76:                                       ; preds = %if.end.70
  %90 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %memory = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %90, i32 0, i32 3
  %91 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !194
  %call77 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %91, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i32 0, i32 0)) #5
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.78:                                        ; preds = %if.end.70
  %92 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dpy79 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %92, i32 0, i32 58
  %93 = load %struct._XDisplay*, %struct._XDisplay** %dpy79, align 8, !tbaa !55
  %94 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %dest80 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %94, i32 0, i32 73
  %95 = load i64, i64* %dest80, align 8, !tbaa !71
  %96 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %gc81 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %96, i32 0, i32 63
  %97 = load %struct._XGC*, %struct._XGC** %gc81, align 8, !tbaa !66
  %98 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %image82 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %98, i32 0, i32 57
  %99 = load i32, i32* %sourcex.addr, align 4, !tbaa !41
  %100 = load i32, i32* %x.addr, align 4, !tbaa !41
  %101 = load i32, i32* %y.addr, align 4, !tbaa !41
  %102 = load i32, i32* %w.addr, align 4, !tbaa !41
  %103 = load i32, i32* %h.addr, align 4, !tbaa !41
  %call83 = call i32 @XPutImage(%struct._XDisplay* %93, i64 %95, %struct._XGC* %97, %struct._XImage* %image82, i32 %99, i32 0, i32 %100, i32 %101, i32 %102, i32 %103) #5
  %104 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %image84 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %104, i32 0, i32 57
  %bits_per_pixel85 = getelementptr inbounds %struct._XImage, %struct._XImage* %image84, i32 0, i32 11
  store i32 1, i32* %bits_per_pixel85, align 4, !tbaa !193
  %105 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %image86 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %105, i32 0, i32 57
  %depth87 = getelementptr inbounds %struct._XImage, %struct._XImage* %image86, i32 0, i32 9
  store i32 1, i32* %depth87, align 4, !tbaa !191
  %106 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %colors_or88 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %106, i32 0, i32 74
  store i64 -1, i64* %colors_or88, align 8, !tbaa !68
  %107 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev.addr, align 8, !tbaa !2
  %colors_and89 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %107, i32 0, i32 75
  store i64 0, i64* %colors_and89, align 8, !tbaa !69
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.78, %if.then.76
  %108 = bitcast i32* %vdepth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #2
  %109 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.92 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.91

if.end.91:                                        ; preds = %cleanup.cont, %do.end.47
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.92

cleanup.92:                                       ; preds = %if.end.91, %cleanup
  %110 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #2
  %111 = load i32, i32* %retval
  ret i32 %111
}

declare i32 @XDrawPoint(%struct._XDisplay*, i64, %struct._XGC*, i32, i32) #0

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #0

declare i32 @gx_default_strip_tile_rectangle(%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @set_tile(%struct.gx_device_s* %dev, %struct.gx_strip_bitmap_s* %tile) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %tile.addr = alloca %struct.gx_strip_bitmap_s*, align 8
  %xdev = alloca %struct.gx_device_X_s*, align 8
  %cleanup.dest.slot = alloca i32
  %code_ = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  store %struct.gx_strip_bitmap_s* %tile, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !2
  %0 = bitcast %struct.gx_device_X_s** %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_X_s*
  store %struct.gx_device_X_s* %2, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %3 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !2
  %id = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %3, i32 0, i32 3
  %4 = load i64, i64* %id, align 8, !tbaa !100
  %5 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %ht = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %5, i32 0, i32 77
  %id1 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %ht, i32 0, i32 2
  %6 = load i64, i64* %id1, align 8, !tbaa !101
  %cmp = icmp eq i64 %4, %6
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !2
  %id2 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %7, i32 0, i32 3
  %8 = load i64, i64* %id2, align 8, !tbaa !100
  %cmp3 = icmp ne i64 %8, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %useXSetTile = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %9, i32 0, i32 96
  %10 = load i8, i8* %useXSetTile, align 1, !tbaa !195
  %conv = sext i8 %10 to i32
  store i32 %conv, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.130

if.end:                                           ; preds = %land.lhs.true, %entry
  %11 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !2
  %size = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %11, i32 0, i32 2
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size, i32 0, i32 0
  %12 = load i32, i32* %x, align 4, !tbaa !196
  %13 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %ht4 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %13, i32 0, i32 77
  %width = getelementptr inbounds %struct.anon.2, %struct.anon.2* %ht4, i32 0, i32 3
  %14 = load i32, i32* %width, align 4, !tbaa !197
  %cmp5 = icmp ne i32 %12, %14
  br i1 %cmp5, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %15 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !2
  %size7 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %15, i32 0, i32 2
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size7, i32 0, i32 1
  %16 = load i32, i32* %y, align 4, !tbaa !198
  %17 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %ht8 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %17, i32 0, i32 77
  %height = getelementptr inbounds %struct.anon.2, %struct.anon.2* %ht8, i32 0, i32 4
  %18 = load i32, i32* %height, align 4, !tbaa !199
  %cmp9 = icmp ne i32 %16, %18
  br i1 %cmp9, label %if.then.15, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false
  %19 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %ht12 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %19, i32 0, i32 77
  %pixmap = getelementptr inbounds %struct.anon.2, %struct.anon.2* %ht12, i32 0, i32 0
  %20 = load i64, i64* %pixmap, align 8, !tbaa !200
  %cmp13 = icmp eq i64 %20, 0
  br i1 %cmp13, label %if.then.15, label %if.end.48

if.then.15:                                       ; preds = %lor.lhs.false.11, %lor.lhs.false, %if.end
  %21 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %ht16 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %21, i32 0, i32 77
  %pixmap17 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %ht16, i32 0, i32 0
  %22 = load i64, i64* %pixmap17, align 8, !tbaa !200
  %cmp18 = icmp ne i64 %22, 0
  br i1 %cmp18, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %if.then.15
  %23 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dpy = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %23, i32 0, i32 58
  %24 = load %struct._XDisplay*, %struct._XDisplay** %dpy, align 8, !tbaa !55
  %25 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %ht21 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %25, i32 0, i32 77
  %pixmap22 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %ht21, i32 0, i32 0
  %26 = load i64, i64* %pixmap22, align 8, !tbaa !200
  %call = call i32 @XFreePixmap(%struct._XDisplay* %24, i64 %26) #5
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %if.then.15
  %27 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dpy24 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %27, i32 0, i32 58
  %28 = load %struct._XDisplay*, %struct._XDisplay** %dpy24, align 8, !tbaa !55
  %29 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %win = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %29, i32 0, i32 62
  %30 = load i64, i64* %win, align 8, !tbaa !86
  %31 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !2
  %size25 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %31, i32 0, i32 2
  %x26 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size25, i32 0, i32 0
  %32 = load i32, i32* %x26, align 4, !tbaa !196
  %33 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !2
  %size27 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %33, i32 0, i32 2
  %y28 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size27, i32 0, i32 1
  %34 = load i32, i32* %y28, align 4, !tbaa !198
  %35 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %vinfo = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %35, i32 0, i32 60
  %36 = load %struct.XVisualInfo*, %struct.XVisualInfo** %vinfo, align 8, !tbaa !188
  %depth = getelementptr inbounds %struct.XVisualInfo, %struct.XVisualInfo* %36, i32 0, i32 3
  %37 = load i32, i32* %depth, align 4, !tbaa !189
  %call29 = call i64 @XCreatePixmap(%struct._XDisplay* %28, i64 %30, i32 %32, i32 %34, i32 %37) #5
  %38 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %ht30 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %38, i32 0, i32 77
  %pixmap31 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %ht30, i32 0, i32 0
  store i64 %call29, i64* %pixmap31, align 8, !tbaa !200
  %39 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %ht32 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %39, i32 0, i32 77
  %pixmap33 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %ht32, i32 0, i32 0
  %40 = load i64, i64* %pixmap33, align 8, !tbaa !200
  %cmp34 = icmp eq i64 %40, 0
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.23
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.130

if.end.37:                                        ; preds = %if.end.23
  %41 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !2
  %size38 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %41, i32 0, i32 2
  %x39 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size38, i32 0, i32 0
  %42 = load i32, i32* %x39, align 4, !tbaa !196
  %43 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %ht40 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %43, i32 0, i32 77
  %width41 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %ht40, i32 0, i32 3
  store i32 %42, i32* %width41, align 4, !tbaa !197
  %44 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !2
  %size42 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %44, i32 0, i32 2
  %y43 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size42, i32 0, i32 1
  %45 = load i32, i32* %y43, align 4, !tbaa !198
  %46 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %ht44 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %46, i32 0, i32 77
  %height45 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %ht44, i32 0, i32 4
  store i32 %45, i32* %height45, align 4, !tbaa !199
  %47 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !2
  %raster = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %47, i32 0, i32 1
  %48 = load i32, i32* %raster, align 4, !tbaa !95
  %49 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %ht46 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %49, i32 0, i32 77
  %raster47 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %ht46, i32 0, i32 5
  store i32 %48, i32* %raster47, align 4, !tbaa !201
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.37, %lor.lhs.false.11
  %50 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %fore_color = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %50, i32 0, i32 82
  %51 = load i64, i64* %fore_color, align 8, !tbaa !67
  %52 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %ht49 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %52, i32 0, i32 77
  %fore_c = getelementptr inbounds %struct.anon.2, %struct.anon.2* %ht49, i32 0, i32 6
  store i64 %51, i64* %fore_c, align 8, !tbaa !99
  %53 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %back_color = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %53, i32 0, i32 81
  %54 = load i64, i64* %back_color, align 8, !tbaa !82
  %55 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %ht50 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %55, i32 0, i32 77
  %back_c = getelementptr inbounds %struct.anon.2, %struct.anon.2* %ht50, i32 0, i32 7
  store i64 %54, i64* %back_c, align 8, !tbaa !98
  %56 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !2
  %data = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %56, i32 0, i32 0
  %57 = load i8*, i8** %data, align 8, !tbaa !93
  %58 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %image = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %58, i32 0, i32 57
  %data51 = getelementptr inbounds %struct._XImage, %struct._XImage* %image, i32 0, i32 4
  store i8* %57, i8** %data51, align 8, !tbaa !79
  %59 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !2
  %size52 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %59, i32 0, i32 2
  %x53 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size52, i32 0, i32 0
  %60 = load i32, i32* %x53, align 4, !tbaa !196
  %61 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %image54 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %61, i32 0, i32 57
  %width55 = getelementptr inbounds %struct._XImage, %struct._XImage* %image54, i32 0, i32 0
  store i32 %60, i32* %width55, align 4, !tbaa !77
  %62 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !2
  %size56 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %62, i32 0, i32 2
  %y57 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size56, i32 0, i32 1
  %63 = load i32, i32* %y57, align 4, !tbaa !198
  %64 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %image58 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %64, i32 0, i32 57
  %height59 = getelementptr inbounds %struct._XImage, %struct._XImage* %image58, i32 0, i32 1
  store i32 %63, i32* %height59, align 4, !tbaa !78
  %65 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !2
  %raster60 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %65, i32 0, i32 1
  %66 = load i32, i32* %raster60, align 4, !tbaa !95
  %67 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %image61 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %67, i32 0, i32 57
  %bytes_per_line = getelementptr inbounds %struct._XImage, %struct._XImage* %image61, i32 0, i32 10
  store i32 %66, i32* %bytes_per_line, align 4, !tbaa !80
  %68 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %image62 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %68, i32 0, i32 57
  %format = getelementptr inbounds %struct._XImage, %struct._XImage* %image62, i32 0, i32 3
  store i32 0, i32* %format, align 4, !tbaa !81
  br label %do.body

do.body:                                          ; preds = %if.end.48
  %69 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %fill_style = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %69, i32 0, i32 79
  %70 = load i32, i32* %fill_style, align 4, !tbaa !65
  %cmp63 = icmp ne i32 %70, 0
  br i1 %cmp63, label %if.then.65, label %if.end.69

if.then.65:                                       ; preds = %do.body
  %71 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dpy66 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %71, i32 0, i32 58
  %72 = load %struct._XDisplay*, %struct._XDisplay** %dpy66, align 8, !tbaa !55
  %73 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %gc = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %73, i32 0, i32 63
  %74 = load %struct._XGC*, %struct._XGC** %gc, align 8, !tbaa !66
  %75 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %fill_style67 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %75, i32 0, i32 79
  store i32 0, i32* %fill_style67, align 4, !tbaa !65
  %call68 = call i32 @XSetFillStyle(%struct._XDisplay* %72, %struct._XGC* %74, i32 0) #5
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.65, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.69
  br label %do.end

do.end:                                           ; preds = %do.cond
  %76 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dpy70 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %76, i32 0, i32 58
  %77 = load %struct._XDisplay*, %struct._XDisplay** %dpy70, align 8, !tbaa !55
  %78 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %gc71 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %78, i32 0, i32 63
  %79 = load %struct._XGC*, %struct._XGC** %gc71, align 8, !tbaa !66
  %80 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %ht72 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %80, i32 0, i32 77
  %no_pixmap = getelementptr inbounds %struct.anon.2, %struct.anon.2* %ht72, i32 0, i32 1
  %81 = load i64, i64* %no_pixmap, align 8, !tbaa !202
  %call73 = call i32 @XSetTile(%struct._XDisplay* %77, %struct._XGC* %79, i64 %81) #5
  br label %do.body.74

do.body.74:                                       ; preds = %do.end
  %82 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %function = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %82, i32 0, i32 78
  %83 = load i32, i32* %function, align 4, !tbaa !70
  %cmp75 = icmp ne i32 %83, 3
  br i1 %cmp75, label %if.then.77, label %if.end.82

if.then.77:                                       ; preds = %do.body.74
  %84 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dpy78 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %84, i32 0, i32 58
  %85 = load %struct._XDisplay*, %struct._XDisplay** %dpy78, align 8, !tbaa !55
  %86 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %gc79 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %86, i32 0, i32 63
  %87 = load %struct._XGC*, %struct._XGC** %gc79, align 8, !tbaa !66
  %88 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %function80 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %88, i32 0, i32 78
  store i32 3, i32* %function80, align 4, !tbaa !70
  %call81 = call i32 @XSetFunction(%struct._XDisplay* %85, %struct._XGC* %87, i32 3) #5
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.77, %do.body.74
  br label %do.cond.83

do.cond.83:                                       ; preds = %if.end.82
  br label %do.end.84

do.end.84:                                        ; preds = %do.cond.83
  br label %do.body.85

do.body.85:                                       ; preds = %do.end.84
  %89 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %useXPutImage = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %89, i32 0, i32 95
  %90 = load i8, i8* %useXPutImage, align 1, !tbaa !83
  %conv86 = sext i8 %90 to i32
  %tobool = icmp ne i32 %conv86, 0
  br i1 %tobool, label %land.lhs.true.87, label %if.else

land.lhs.true.87:                                 ; preds = %do.body.85
  %91 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %image88 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %91, i32 0, i32 57
  %call89 = call i32 @XInitImage(%struct._XImage* %image88) #5
  %cmp90 = icmp eq i32 %call89, 0
  br i1 %cmp90, label %if.else, label %if.then.92

if.then.92:                                       ; preds = %land.lhs.true.87
  %92 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dpy93 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %92, i32 0, i32 58
  %93 = load %struct._XDisplay*, %struct._XDisplay** %dpy93, align 8, !tbaa !55
  %94 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %ht94 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %94, i32 0, i32 77
  %pixmap95 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %ht94, i32 0, i32 0
  %95 = load i64, i64* %pixmap95, align 8, !tbaa !200
  %96 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %gc96 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %96, i32 0, i32 63
  %97 = load %struct._XGC*, %struct._XGC** %gc96, align 8, !tbaa !66
  %98 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %image97 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %98, i32 0, i32 57
  %99 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !2
  %size98 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %99, i32 0, i32 2
  %x99 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size98, i32 0, i32 0
  %100 = load i32, i32* %x99, align 4, !tbaa !196
  %101 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !2
  %size100 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %101, i32 0, i32 2
  %y101 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size100, i32 0, i32 1
  %102 = load i32, i32* %y101, align 4, !tbaa !198
  %call102 = call i32 @XPutImage(%struct._XDisplay* %93, i64 %95, %struct._XGC* %97, %struct._XImage* %image97, i32 0, i32 0, i32 0, i32 0, i32 %100, i32 %102) #5
  br label %if.end.117

if.else:                                          ; preds = %land.lhs.true.87, %do.body.85
  %103 = bitcast i32* %code_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %103) #2
  %104 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %105 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dpy103 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %105, i32 0, i32 58
  %106 = load %struct._XDisplay*, %struct._XDisplay** %dpy103, align 8, !tbaa !55
  %107 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %ht104 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %107, i32 0, i32 77
  %pixmap105 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %ht104, i32 0, i32 0
  %108 = load i64, i64* %pixmap105, align 8, !tbaa !200
  %109 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %gc106 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %109, i32 0, i32 63
  %110 = load %struct._XGC*, %struct._XGC** %gc106, align 8, !tbaa !66
  %111 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %image107 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %111, i32 0, i32 57
  %112 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !2
  %size108 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %112, i32 0, i32 2
  %x109 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size108, i32 0, i32 0
  %113 = load i32, i32* %x109, align 4, !tbaa !196
  %114 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !2
  %size110 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %114, i32 0, i32 2
  %y111 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size110, i32 0, i32 1
  %115 = load i32, i32* %y111, align 4, !tbaa !198
  %call112 = call i32 @alt_put_image(%struct.gx_device_s* %104, %struct._XDisplay* %106, i64 %108, %struct._XGC* %110, %struct._XImage* %image107, i32 0, i32 0, i32 0, i32 0, i32 %113, i32 %115) #5
  store i32 %call112, i32* %code_, align 4, !tbaa !41
  %116 = load i32, i32* %code_, align 4, !tbaa !41
  %cmp113 = icmp slt i32 %116, 0
  br i1 %cmp113, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %if.else
  %117 = load i32, i32* %code_, align 4, !tbaa !41
  store i32 %117, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.116:                                       ; preds = %if.else
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.116, %if.then.115
  %118 = bitcast i32* %code_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.130 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.117

if.end.117:                                       ; preds = %cleanup.cont, %if.then.92
  br label %do.cond.118

do.cond.118:                                      ; preds = %if.end.117
  br label %do.end.119

do.end.119:                                       ; preds = %do.cond.118
  %119 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %dpy120 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %119, i32 0, i32 58
  %120 = load %struct._XDisplay*, %struct._XDisplay** %dpy120, align 8, !tbaa !55
  %121 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %gc121 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %121, i32 0, i32 63
  %122 = load %struct._XGC*, %struct._XGC** %gc121, align 8, !tbaa !66
  %123 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %ht122 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %123, i32 0, i32 77
  %pixmap123 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %ht122, i32 0, i32 0
  %124 = load i64, i64* %pixmap123, align 8, !tbaa !200
  %call124 = call i32 @XSetTile(%struct._XDisplay* %120, %struct._XGC* %122, i64 %124) #5
  %125 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !2
  %id125 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %125, i32 0, i32 3
  %126 = load i64, i64* %id125, align 8, !tbaa !100
  %127 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %ht126 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %127, i32 0, i32 77
  %id127 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %ht126, i32 0, i32 2
  store i64 %126, i64* %id127, align 8, !tbaa !101
  %128 = load %struct.gx_device_X_s*, %struct.gx_device_X_s** %xdev, align 8, !tbaa !2
  %useXSetTile128 = getelementptr inbounds %struct.gx_device_X_s, %struct.gx_device_X_s* %128, i32 0, i32 96
  %129 = load i8, i8* %useXSetTile128, align 1, !tbaa !195
  %conv129 = sext i8 %129 to i32
  store i32 %conv129, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.130

cleanup.130:                                      ; preds = %do.end.119, %cleanup, %if.then.36, %if.then
  %130 = bitcast %struct.gx_device_X_s** %xdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %130) #2
  %131 = load i32, i32* %retval
  ret i32 %131
}

declare i32 @XSetTile(%struct._XDisplay*, %struct._XGC*, i64) #0

declare %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s*) #0

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

declare i32 @gs_currentmatrix(%struct.gs_state_s*, %struct.gs_matrix_s*) #0

declare i32 @gs_matrix_multiply(%struct.gs_matrix_s*, %struct.gs_matrix_s*, %struct.gs_matrix_s*) #0

declare i32 @gs_bbox_transform(%struct.gs_rect_s*, %struct.gs_matrix_s*, %struct.gs_rect_s*) #0

declare i32 @gx_cpath_includes_rectangle(%struct.gx_clip_path_s*, i32, i32, i32, i32) #0

declare i32 @XCopyArea(%struct._XDisplay*, i64, i64, %struct._XGC*, i32, i32, i32, i32, i32, i32) #0

declare i32 @gx_default_begin_typed_image(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**) #0

declare i32 @gx_default_get_bits_rectangle(%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**) #0

declare %struct._XImage* @XGetImage(%struct._XDisplay*, i64, i32, i32, i32, i32, i64, i32) #0

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #4

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind readonly }
attributes #7 = { nobuiltin nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !8, i64 128}
!7 = !{!"gx_device_X_s", !8, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !8, i64 40, !3, i64 48, !9, i64 56, !8, i64 80, !8, i64 84, !8, i64 88, !11, i64 96, !14, i64 816, !8, i64 832, !8, i64 836, !8, i64 840, !8, i64 844, !8, i64 848, !8, i64 852, !4, i64 856, !4, i64 864, !8, i64 880, !4, i64 884, !4, i64 892, !4, i64 900, !4, i64 908, !10, i64 928, !10, i64 936, !8, i64 944, !8, i64 948, !8, i64 952, !8, i64 956, !8, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !8, i64 1052, !8, i64 1056, !16, i64 1064, !3, i64 1104, !4, i64 1112, !18, i64 1120, !19, i64 1144, !3, i64 1728, !8, i64 1736, !8, i64 1740, !20, i64 1744, !3, i64 1776, !8, i64 1784, !21, i64 1788, !10, i64 1808, !10, i64 1816, !10, i64 1824, !8, i64 1832, !8, i64 1836, !3, i64 1840, !10, i64 1848, !23, i64 1856, !3, i64 1992, !3, i64 2000, !3, i64 2008, !10, i64 2016, !10, i64 2024, !3, i64 2032, !10, i64 2040, !10, i64 2048, !8, i64 2056, !10, i64 2064, !25, i64 2072, !10, i64 2096, !10, i64 2104, !10, i64 2112, !27, i64 2120, !10, i64 2160, !10, i64 2168, !10, i64 2176, !30, i64 2184, !31, i64 2208, !8, i64 2264, !8, i64 2268, !10, i64 2272, !10, i64 2280, !10, i64 2288, !10, i64 2296, !10, i64 2304, !32, i64 2312, !10, i64 2808, !12, i64 2816, !3, i64 2824, !8, i64 2832, !8, i64 2836, !3, i64 2840, !26, i64 2848, !26, i64 2852, !4, i64 2856, !4, i64 2857, !4, i64 2858, !8, i64 2860, !8, i64 2864, !8, i64 2868, !38, i64 2872}
!8 = !{!"int", !4, i64 0}
!9 = !{!"rc_header_s", !10, i64 0, !3, i64 8, !3, i64 16}
!10 = !{!"long", !4, i64 0}
!11 = !{!"gx_device_color_info_s", !8, i64 0, !8, i64 4, !4, i64 8, !12, i64 12, !4, i64 14, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !13, i64 32, !4, i64 40, !4, i64 44, !4, i64 108, !4, i64 176, !3, i64 688, !4, i64 696, !10, i64 704, !8, i64 712}
!12 = !{!"short", !4, i64 0}
!13 = !{!"gx_device_anti_alias_info_s", !8, i64 0, !8, i64 4}
!14 = !{!"gx_device_cached_colors_s", !10, i64 0, !10, i64 8}
!15 = !{!"gx_stroked_gradient_recognizer_s", !8, i64 0, !4, i64 4, !4, i64 36}
!16 = !{!"gdev_space_params_s", !10, i64 0, !10, i64 8, !17, i64 16, !8, i64 32, !4, i64 36}
!17 = !{!"gx_band_params_s", !8, i64 0, !8, i64 4, !10, i64 8}
!18 = !{!"gx_page_device_procs_s", !3, i64 0, !3, i64 8, !3, i64 16}
!19 = !{!"gx_device_procs_s", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !3, i64 48, !3, i64 56, !3, i64 64, !3, i64 72, !3, i64 80, !3, i64 88, !3, i64 96, !3, i64 104, !3, i64 112, !3, i64 120, !3, i64 128, !3, i64 136, !3, i64 144, !3, i64 152, !3, i64 160, !3, i64 168, !3, i64 176, !3, i64 184, !3, i64 192, !3, i64 200, !3, i64 208, !3, i64 216, !3, i64 224, !3, i64 232, !3, i64 240, !3, i64 248, !3, i64 256, !3, i64 264, !3, i64 272, !3, i64 280, !3, i64 288, !3, i64 296, !3, i64 304, !3, i64 312, !3, i64 320, !3, i64 328, !3, i64 336, !3, i64 344, !3, i64 352, !3, i64 360, !3, i64 368, !3, i64 376, !3, i64 384, !3, i64 392, !3, i64 400, !3, i64 408, !3, i64 416, !3, i64 424, !3, i64 432, !3, i64 440, !3, i64 448, !3, i64 456, !3, i64 464, !3, i64 472, !3, i64 480, !3, i64 488, !3, i64 496, !3, i64 504, !3, i64 512, !3, i64 520, !3, i64 528, !3, i64 536, !3, i64 544, !3, i64 552, !3, i64 560, !3, i64 568, !3, i64 576}
!20 = !{!"gx_device_bbox_procs_s", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24}
!21 = !{!"gs_fixed_rect_s", !22, i64 0, !22, i64 8}
!22 = !{!"gs_fixed_point_s", !8, i64 0, !8, i64 4}
!23 = !{!"_XImage", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !3, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !3, i64 80, !24, i64 88}
!24 = !{!"funcs", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40}
!25 = !{!"gs_matrix_s", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12, !26, i64 16, !26, i64 20}
!26 = !{!"float", !4, i64 0}
!27 = !{!"", !28, i64 0, !10, i64 16, !10, i64 24, !8, i64 32}
!28 = !{!"gs_int_rect_s", !29, i64 0, !29, i64 8}
!29 = !{!"gs_int_point_s", !8, i64 0, !8, i64 4}
!30 = !{!"", !10, i64 0, !3, i64 8, !8, i64 16, !8, i64 20}
!31 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !10, i64 40, !10, i64 48}
!32 = !{!"x11_cman_s", !8, i64 0, !33, i64 4, !33, i64 10, !34, i64 16, !36, i64 440, !3, i64 456, !37, i64 464}
!33 = !{!"cmm_", !12, i64 0, !12, i64 2, !12, i64 4}
!34 = !{!"", !3, i64 0, !8, i64 8, !35, i64 12, !35, i64 148, !35, i64 284, !8, i64 420}
!35 = !{!"x11_cmap_values_s", !8, i64 0, !4, i64 4, !8, i64 132}
!36 = !{!"cmc_", !8, i64 0, !3, i64 8}
!37 = !{!"cmd_", !8, i64 0, !3, i64 8, !8, i64 16, !8, i64 20, !8, i64 24}
!38 = !{!"", !8, i64 0, !8, i64 4, !29, i64 8, !8, i64 16, !4, i64 24, !4, i64 312}
!39 = !{!7, !8, i64 132}
!40 = !{!7, !10, i64 1064}
!41 = !{!8, !8, i64 0}
!42 = !{!7, !8, i64 2056}
!43 = !{!7, !26, i64 2072}
!44 = !{!25, !26, i64 0}
!45 = !{!7, !26, i64 2076}
!46 = !{!25, !26, i64 4}
!47 = !{!7, !26, i64 2080}
!48 = !{!25, !26, i64 8}
!49 = !{!7, !26, i64 2084}
!50 = !{!25, !26, i64 12}
!51 = !{!7, !26, i64 2088}
!52 = !{!25, !26, i64 16}
!53 = !{!7, !26, i64 2092}
!54 = !{!25, !26, i64 20}
!55 = !{!7, !3, i64 1992}
!56 = !{!7, !10, i64 2104}
!57 = !{!58, !10, i64 40}
!58 = !{!"", !8, i64 0, !10, i64 8, !8, i64 16, !3, i64 24, !10, i64 32, !10, i64 40, !8, i64 48, !4, i64 56}
!59 = !{!7, !10, i64 2096}
!60 = !{!10, !10, i64 0}
!61 = !{!62, !8, i64 832}
!62 = !{!"gx_device_s", !8, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !8, i64 40, !3, i64 48, !9, i64 56, !8, i64 80, !8, i64 84, !8, i64 88, !11, i64 96, !14, i64 816, !8, i64 832, !8, i64 836, !8, i64 840, !8, i64 844, !8, i64 848, !8, i64 852, !4, i64 856, !4, i64 864, !8, i64 880, !4, i64 884, !4, i64 892, !4, i64 900, !4, i64 908, !10, i64 928, !10, i64 936, !8, i64 944, !8, i64 948, !8, i64 952, !8, i64 956, !8, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !8, i64 1052, !8, i64 1056, !16, i64 1064, !3, i64 1104, !4, i64 1112, !18, i64 1120, !19, i64 1144}
!63 = !{!62, !8, i64 836}
!64 = !{!7, !8, i64 2872}
!65 = !{!7, !8, i64 2268}
!66 = !{!7, !3, i64 2032}
!67 = !{!7, !10, i64 2288}
!68 = !{!7, !10, i64 2168}
!69 = !{!7, !10, i64 2176}
!70 = !{!7, !8, i64 2264}
!71 = !{!7, !10, i64 2160}
!72 = !{!7, !8, i64 832}
!73 = !{!7, !8, i64 836}
!74 = !{!7, !10, i64 2304}
!75 = !{!7, !10, i64 2296}
!76 = !{!7, !10, i64 2048}
!77 = !{!7, !8, i64 1856}
!78 = !{!7, !8, i64 1860}
!79 = !{!7, !3, i64 1872}
!80 = !{!7, !8, i64 1900}
!81 = !{!7, !8, i64 1868}
!82 = !{!7, !10, i64 2280}
!83 = !{!7, !4, i64 2857}
!84 = !{!7, !8, i64 2200}
!85 = !{!7, !8, i64 2204}
!86 = !{!7, !10, i64 2024}
!87 = !{!7, !10, i64 2184}
!88 = !{!7, !3, i64 2192}
!89 = !{!7, !8, i64 2864}
!90 = !{!7, !8, i64 1836}
!91 = !{!92, !12, i64 38}
!92 = !{!"gx_strip_bitmap_s", !3, i64 0, !8, i64 8, !29, i64 12, !10, i64 24, !12, i64 32, !12, i64 34, !12, i64 36, !12, i64 38, !8, i64 40}
!93 = !{!92, !3, i64 0}
!94 = !{!92, !12, i64 34}
!95 = !{!92, !8, i64 8}
!96 = !{!92, !12, i64 32}
!97 = !{!4, !4, i64 0}
!98 = !{!7, !10, i64 2256}
!99 = !{!7, !10, i64 2248}
!100 = !{!92, !10, i64 24}
!101 = !{!7, !10, i64 2224}
!102 = !{!103, !3, i64 0}
!103 = !{!"gs_image_common_s", !3, i64 0, !25, i64 8}
!104 = !{!105, !8, i64 48}
!105 = !{!"gx_image_type_s", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !8, i64 48}
!106 = !{!107, !8, i64 64}
!107 = !{!"gs_image2_s", !3, i64 0, !25, i64 8, !3, i64 32, !26, i64 40, !26, i64 44, !26, i64 48, !26, i64 52, !3, i64 56, !8, i64 64}
!108 = !{!107, !3, i64 32}
!109 = !{!62, !3, i64 16}
!110 = !{i64 0, i64 4, !111, i64 4, i64 4, !111, i64 8, i64 4, !111, i64 12, i64 4, !111, i64 16, i64 4, !111, i64 20, i64 4, !111}
!111 = !{!26, !26, i64 0}
!112 = !{!113, !115, i64 8}
!113 = !{!"gs_rect_s", !114, i64 0, !114, i64 16}
!114 = !{!"gs_point_s", !115, i64 0, !115, i64 8}
!115 = !{!"double", !4, i64 0}
!116 = !{!113, !115, i64 0}
!117 = !{!107, !26, i64 48}
!118 = !{!113, !115, i64 16}
!119 = !{!107, !26, i64 52}
!120 = !{!113, !115, i64 24}
!121 = !{!107, !26, i64 40}
!122 = !{!107, !26, i64 44}
!123 = !{!105, !3, i64 16}
!124 = !{!29, !8, i64 0}
!125 = !{!29, !8, i64 4}
!126 = !{!62, !12, i64 108}
!127 = !{!28, !8, i64 0}
!128 = !{!28, !8, i64 4}
!129 = !{!28, !8, i64 8}
!130 = !{!28, !8, i64 12}
!131 = !{!7, !8, i64 2868}
!132 = !{!133, !10, i64 0}
!133 = !{!"gs_get_bits_params_s", !10, i64 0, !4, i64 8, !8, i64 520, !8, i64 524, !8, i64 528}
!134 = !{!133, !8, i64 528}
!135 = !{!133, !8, i64 520}
!136 = !{!7, !8, i64 2120}
!137 = !{!7, !8, i64 2128}
!138 = !{!7, !8, i64 2124}
!139 = !{!7, !8, i64 2132}
!140 = !{!23, !3, i64 16}
!141 = !{!23, !8, i64 44}
!142 = !{!23, !8, i64 48}
!143 = !{!23, !8, i64 40}
!144 = !{!23, !8, i64 32}
!145 = !{!23, !8, i64 24}
!146 = !{!23, !3, i64 96}
!147 = !{!58, !8, i64 0}
!148 = !{!58, !3, i64 24}
!149 = !{!58, !10, i64 32}
!150 = !{!58, !8, i64 48}
!151 = !{!7, !10, i64 2064}
!152 = !{!7, !10, i64 2136}
!153 = !{!7, !8, i64 2152}
!154 = !{!7, !10, i64 2144}
!155 = !{!7, !8, i64 2860}
!156 = !{i64 0, i64 4, !41, i64 4, i64 4, !41, i64 8, i64 4, !41, i64 12, i64 4, !41}
!157 = !{!7, !8, i64 1832}
!158 = !{!7, !3, i64 1728}
!159 = !{!160, !8, i64 832}
!160 = !{!"gx_device_memory_s", !8, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !8, i64 40, !3, i64 48, !9, i64 56, !8, i64 80, !8, i64 84, !8, i64 88, !11, i64 96, !14, i64 816, !8, i64 832, !8, i64 836, !8, i64 840, !8, i64 844, !8, i64 848, !8, i64 852, !4, i64 856, !4, i64 864, !8, i64 880, !4, i64 884, !4, i64 892, !4, i64 900, !4, i64 908, !10, i64 928, !10, i64 936, !8, i64 944, !8, i64 948, !8, i64 952, !8, i64 956, !8, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !8, i64 1052, !8, i64 1056, !16, i64 1064, !3, i64 1104, !4, i64 1112, !18, i64 1120, !19, i64 1144, !3, i64 1728, !8, i64 1736, !3, i64 1744, !3, i64 1752, !8, i64 1760, !3, i64 1768, !8, i64 1776, !4, i64 1780, !25, i64 2548, !3, i64 2576, !161, i64 2584, !162, i64 2600, !163, i64 2624, !164, i64 2656, !165, i64 2680, !166, i64 2720, !167, i64 2736, !8, i64 2744, !8, i64 2748, !8, i64 2752, !8, i64 2756, !8, i64 2760, !10, i64 2768, !3, i64 2776, !8, i64 2784, !8, i64 2788}
!161 = !{!"gs_const_string_s", !3, i64 0, !8, i64 8}
!162 = !{!"_c24", !10, i64 0, !8, i64 8, !8, i64 12, !8, i64 16}
!163 = !{!"_c40", !10, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24}
!164 = !{!"_c48", !10, i64 0, !8, i64 8, !8, i64 12, !8, i64 16}
!165 = !{!"_c56", !10, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32}
!166 = !{!"_c64", !10, i64 0, !8, i64 8, !8, i64 12}
!167 = !{!"gs_log2_scale_point_s", !8, i64 0, !8, i64 4}
!168 = !{!160, !8, i64 836}
!169 = !{!160, !3, i64 2576}
!170 = !{!160, !8, i64 1736}
!171 = !{!21, !8, i64 0}
!172 = !{!21, !8, i64 4}
!173 = !{!21, !8, i64 8}
!174 = !{!21, !8, i64 12}
!175 = !{!7, !8, i64 2880}
!176 = !{!7, !8, i64 2884}
!177 = !{!7, !8, i64 2876}
!178 = !{!179, !8, i64 0}
!179 = !{!"", !8, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !10, i64 64, !10, i64 72, !8, i64 80, !8, i64 84, !10, i64 88, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !10, i64 112, !8, i64 120, !4, i64 124}
!180 = !{!179, !10, i64 24}
!181 = !{!179, !10, i64 16}
!182 = !{!183, !12, i64 0}
!183 = !{!"", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6}
!184 = !{!183, !12, i64 2}
!185 = !{!183, !12, i64 4}
!186 = !{!183, !12, i64 6}
!187 = !{!7, !12, i64 108}
!188 = !{!7, !3, i64 2008}
!189 = !{!190, !8, i64 20}
!190 = !{!"", !3, i64 0, !10, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !8, i64 56, !8, i64 60}
!191 = !{!7, !8, i64 1896}
!192 = !{!7, !8, i64 1892}
!193 = !{!7, !8, i64 1904}
!194 = !{!7, !3, i64 24}
!195 = !{!7, !4, i64 2858}
!196 = !{!92, !8, i64 12}
!197 = !{!7, !8, i64 2232}
!198 = !{!92, !8, i64 16}
!199 = !{!7, !8, i64 2236}
!200 = !{!7, !10, i64 2208}
!201 = !{!7, !8, i64 2240}
!202 = !{!7, !10, i64 2216}
