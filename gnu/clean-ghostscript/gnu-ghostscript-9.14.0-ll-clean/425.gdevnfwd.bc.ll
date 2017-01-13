; ModuleID = './gdevnfwd.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_cm_color_map_procs_s = type { void (%struct.gx_device_s*, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* }
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
%struct.gs_pattern1_instance_s = type opaque
%struct.gs_fill_attributes_s = type { %struct.gs_fixed_rect_s*, i32, %struct.gx_device_halftone_s*, i32, i32, i32, %struct.patch_fill_state_s* }
%struct.patch_fill_state_s = type opaque
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.gx_device_null_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s* }
%struct.gx_device_forward_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s* }
%struct.gxdso_device_child_request_s = type { %struct.gx_device_s*, i32 }

@.str = private unnamed_addr constant [21 x i8] c"gx_device_set_target\00", align 1
@FwdDevice_cm_map_procs = internal constant %struct.gx_cm_color_map_procs_s { void (%struct.gx_device_s*, i16, i16*)* @fwd_map_gray_cs, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)* @fwd_map_rgb_cs, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* @fwd_map_cmyk_cs }, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@st_device_null = external constant %struct.gs_memory_struct_type_s, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@gs_null_device = constant %struct.gx_device_null_s { i32 1736, %struct.gx_device_procs_s* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_null, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 1, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [2 x float] zeroinitializer, [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @gx_default_open_device, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @gx_forward_upright_get_initial_matrix, i32 (%struct.gx_device_s*)* @gx_default_sync_output, i32 (%struct.gx_device_s*, i32, i32)* @gx_default_output_page, i32 (%struct.gx_device_s*)* @gx_default_close_device, i64 (%struct.gx_device_s*, i16*)* @gx_forward_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_forward_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @null_fill_rectangle, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* @null_copy_mono, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* @null_copy_color, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @gx_default_draw_line, i32 (%struct.gx_device_s*, i32, i8*, i8**)* @gx_default_get_bits, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_forward_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @null_put_params, i64 (%struct.gx_device_s*, i16*)* @gx_forward_map_cmyk_color, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_procs, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_device, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* @gx_forward_map_rgb_alpha_color, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_default_get_page_device, i32 (%struct.gx_device_s*, i32)* @gx_default_get_alpha_bits, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* @null_copy_alpha, i32 (%struct.gx_device_s*, i32, i32*)* @gx_forward_get_band, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @null_copy_rop, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @null_fill_path, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @null_stroke_path, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* @gx_default_fill_mask, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* @null_fill_trapezoid, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @null_fill_parallelogram, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @null_fill_triangle, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* @null_draw_thin_line, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_image, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* @gx_default_image_data, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* @gx_default_end_image, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_strip_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @null_strip_copy_rop, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* @gx_default_get_clipping_box, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_typed_image, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* @gx_default_get_bits_rectangle, i32 (%struct.gx_device_s*, i64, i16*)* @gx_forward_map_color_rgb_alpha, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* @gx_null_create_compositor, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_forward_get_hardware_params, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* @gx_default_text_begin, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* @gx_default_finish_copydevice, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* @gx_default_DevGray_get_color_mapping_procs, i32 (%struct.gx_device_s*, i8*, i32, i32)* @gx_default_DevGray_get_color_comp_index, i64 (%struct.gx_device_s*, i16*)* @gx_default_gray_fast_encode, i32 (%struct.gx_device_s*, i64, i16*)* @null_decode_color, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_default_fill_rectangle_hl_color, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* @gx_default_include_color_space, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* @gx_default_dev_spec_op, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* @null_strip_copy_rop2, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* @null_strip_tile_rect_devn, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, %struct.gx_device_s* null }, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"nullpage\00", align 1
@gs_nullpage_device = constant %struct.gx_device_null_s { i32 1736, %struct.gx_device_procs_s* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_null, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 1, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 612, i32 792, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @gx_default_open_device, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @gx_forward_get_initial_matrix, i32 (%struct.gx_device_s*)* @gx_default_sync_output, i32 (%struct.gx_device_s*, i32, i32)* @gx_default_output_page, i32 (%struct.gx_device_s*)* @gx_default_close_device, i64 (%struct.gx_device_s*, i16*)* @gx_forward_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_forward_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @null_fill_rectangle, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* @null_copy_mono, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* @null_copy_color, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @gx_default_draw_line, i32 (%struct.gx_device_s*, i32, i8*, i8**)* @gx_default_get_bits, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_forward_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @null_put_params, i64 (%struct.gx_device_s*, i16*)* @gx_forward_map_cmyk_color, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_procs, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_device, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* @gx_forward_map_rgb_alpha_color, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* @gx_default_get_alpha_bits, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* @null_copy_alpha, i32 (%struct.gx_device_s*, i32, i32*)* @gx_forward_get_band, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @null_copy_rop, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @null_fill_path, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @null_stroke_path, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* @gx_default_fill_mask, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* @null_fill_trapezoid, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @null_fill_parallelogram, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @null_fill_triangle, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* @null_draw_thin_line, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_image, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* @gx_default_image_data, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* @gx_default_end_image, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_strip_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @null_strip_copy_rop, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* @gx_default_get_clipping_box, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_typed_image, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* @gx_default_get_bits_rectangle, i32 (%struct.gx_device_s*, i64, i16*)* @gx_forward_map_color_rgb_alpha, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* @gx_null_create_compositor, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_forward_get_hardware_params, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* @gx_default_text_begin, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* @gx_default_finish_copydevice, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* @gx_default_DevGray_get_color_mapping_procs, i32 (%struct.gx_device_s*, i8*, i32, i32)* @gx_default_DevGray_get_color_comp_index, i64 (%struct.gx_device_s*, i16*)* @gx_default_gray_fast_encode, i32 (%struct.gx_device_s*, i64, i16*)* @null_decode_color, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_default_fill_rectangle_hl_color, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* @gx_default_include_color_space, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* @gx_default_dev_spec_op, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* @null_strip_copy_rop2, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* @null_strip_tile_rect_devn, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, %struct.gx_device_s* null }, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"gx_device_forward_finalize\00", align 1

; Function Attrs: nounwind uwtable
define void @gx_device_set_target(%struct.gx_device_forward_s* %fdev, %struct.gx_device_s* %target) #0 {
entry:
  %fdev.addr = alloca %struct.gx_device_forward_s*, align 8
  %target.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_forward_s* %fdev, %struct.gx_device_forward_s** %fdev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %target, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_device_s* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev.addr, align 8, !tbaa !1
  %finalize = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %1, i32 0, i32 6
  %2 = load void (%struct.gx_device_s*)*, void (%struct.gx_device_s*)** %finalize, align 8, !tbaa !5
  %tobool1 = icmp ne void (%struct.gx_device_s*)* %2, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev.addr, align 8, !tbaa !1
  %finalize2 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %3, i32 0, i32 6
  store void (%struct.gx_device_s*)* @gx_device_forward_finalize, void (%struct.gx_device_s*)** %finalize2, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev.addr, align 8, !tbaa !1
  %target3 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target3, align 8, !tbaa !19
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.gx_device_s* %5, %6
  br i1 %cmp, label %if.then.4, label %if.end.46

if.then.4:                                        ; preds = %do.body
  br label %do.body.5

do.body.5:                                        ; preds = %if.then.4
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %tobool6 = icmp ne %struct.gx_device_s* %7, null
  br i1 %tobool6, label %if.then.7, label %if.end.11

if.then.7:                                        ; preds = %do.body.5
  br label %do.body.8

do.body.8:                                        ; preds = %if.then.7
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 7
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %9 = load i64, i64* %ref_count, align 8, !tbaa !20
  %inc = add nsw i64 %9, 1
  store i64 %inc, i64* %ref_count, align 8, !tbaa !20
  br label %do.body.9

do.body.9:                                        ; preds = %do.body.8
  br label %do.end

do.end:                                           ; preds = %do.body.9
  br label %do.end.10

do.end.10:                                        ; preds = %do.end
  br label %if.end.11

if.end.11:                                        ; preds = %do.end.10, %do.body.5
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  br label %do.body.13

do.body.13:                                       ; preds = %do.end.12
  %10 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev.addr, align 8, !tbaa !1
  %target14 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %10, i32 0, i32 43
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %target14, align 8, !tbaa !19
  %tobool15 = icmp ne %struct.gx_device_s* %11, null
  br i1 %tobool15, label %if.then.16, label %if.end.43

if.then.16:                                       ; preds = %do.body.13
  br label %do.body.17

do.body.17:                                       ; preds = %if.then.16
  br label %do.body.18

do.body.18:                                       ; preds = %do.body.17
  br label %do.end.19

do.end.19:                                        ; preds = %do.body.18
  %12 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev.addr, align 8, !tbaa !1
  %target20 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %12, i32 0, i32 43
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %target20, align 8, !tbaa !19
  %rc21 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %13, i32 0, i32 7
  %ref_count22 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc21, i32 0, i32 0
  %14 = load i64, i64* %ref_count22, align 8, !tbaa !20
  %add = add nsw i64 %14, -1
  store i64 %add, i64* %ref_count22, align 8, !tbaa !20
  br label %do.end.23

do.end.23:                                        ; preds = %do.end.19
  %15 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev.addr, align 8, !tbaa !1
  %target24 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %15, i32 0, i32 43
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %target24, align 8, !tbaa !19
  %rc25 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %16, i32 0, i32 7
  %ref_count26 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc25, i32 0, i32 0
  %17 = load i64, i64* %ref_count26, align 8, !tbaa !20
  %tobool27 = icmp ne i64 %17, 0
  br i1 %tobool27, label %if.else, label %if.then.28

if.then.28:                                       ; preds = %do.end.23
  br label %do.body.29

do.body.29:                                       ; preds = %if.then.28
  br label %do.body.30

do.body.30:                                       ; preds = %do.body.29
  br label %do.end.31

do.end.31:                                        ; preds = %do.body.30
  %18 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev.addr, align 8, !tbaa !1
  %target32 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %18, i32 0, i32 43
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %target32, align 8, !tbaa !19
  %rc33 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %19, i32 0, i32 7
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc33, i32 0, i32 2
  %20 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !22
  %21 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev.addr, align 8, !tbaa !1
  %target34 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %21, i32 0, i32 43
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %target34, align 8, !tbaa !19
  %rc35 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %22, i32 0, i32 7
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc35, i32 0, i32 1
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !23
  %24 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev.addr, align 8, !tbaa !1
  %target36 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %24, i32 0, i32 43
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %target36, align 8, !tbaa !19
  %26 = bitcast %struct.gx_device_s* %25 to i8*
  call void %20(%struct.gs_memory_s* %23, i8* %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0)) #4
  br label %do.end.37

do.end.37:                                        ; preds = %do.end.31
  br label %do.body.38

do.body.38:                                       ; preds = %do.end.37
  br label %do.end.39

do.end.39:                                        ; preds = %do.body.38
  br label %if.end.42

if.else:                                          ; preds = %do.end.23
  br label %do.body.40

do.body.40:                                       ; preds = %if.else
  br label %do.end.41

do.end.41:                                        ; preds = %do.body.40
  br label %if.end.42

if.end.42:                                        ; preds = %do.end.41, %do.end.39
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %do.body.13
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %28 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev.addr, align 8, !tbaa !1
  %target45 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %28, i32 0, i32 43
  store %struct.gx_device_s* %27, %struct.gx_device_s** %target45, align 8, !tbaa !19
  br label %if.end.46

if.end.46:                                        ; preds = %do.end.44, %do.body
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %cmp48 = icmp ne %struct.gx_device_s* %29, null
  br i1 %cmp48, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.47
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %graphics_type_tag = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %30, i32 0, i32 40
  %31 = load i32, i32* %graphics_type_tag, align 4, !tbaa !24
  br label %cond.end

cond.false:                                       ; preds = %do.end.47
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %31, %cond.true ], [ 0, %cond.false ]
  %32 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev.addr, align 8, !tbaa !1
  %graphics_type_tag49 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %32, i32 0, i32 40
  store i32 %cond, i32* %graphics_type_tag49, align 4, !tbaa !25
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gx_device_forward_finalize(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %target = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_s** %target to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  %target1 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %2, i32 0, i32 43
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %target1, align 8, !tbaa !19
  store %struct.gx_device_s* %3, %struct.gx_device_s** %target, align 8, !tbaa !1
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_s* %4 to %struct.gx_device_forward_s*
  %target2 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %5, i32 0, i32 43
  store %struct.gx_device_s* null, %struct.gx_device_s** %target2, align 8, !tbaa !19
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_device_s* %6, null
  br i1 %tobool, label %if.then, label %if.end.25

if.then:                                          ; preds = %do.body
  br label %do.body.3

do.body.3:                                        ; preds = %if.then
  br label %do.body.4

do.body.4:                                        ; preds = %do.body.3
  br label %do.cond

do.cond:                                          ; preds = %do.body.4
  br label %do.end

do.end:                                           ; preds = %do.cond
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 7
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %8 = load i64, i64* %ref_count, align 8, !tbaa !20
  %add = add nsw i64 %8, -1
  store i64 %add, i64* %ref_count, align 8, !tbaa !20
  br label %do.cond.5

do.cond.5:                                        ; preds = %do.end
  br label %do.end.6

do.end.6:                                         ; preds = %do.cond.5
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !1
  %rc7 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 7
  %ref_count8 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc7, i32 0, i32 0
  %10 = load i64, i64* %ref_count8, align 8, !tbaa !20
  %tobool9 = icmp ne i64 %10, 0
  br i1 %tobool9, label %if.else, label %if.then.10

if.then.10:                                       ; preds = %do.end.6
  br label %do.body.11

do.body.11:                                       ; preds = %if.then.10
  br label %do.body.12

do.body.12:                                       ; preds = %do.body.11
  br label %do.cond.13

do.cond.13:                                       ; preds = %do.body.12
  br label %do.end.14

do.end.14:                                        ; preds = %do.cond.13
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !1
  %rc15 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 7
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc15, i32 0, i32 2
  %12 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !22
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !1
  %rc16 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %13, i32 0, i32 7
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc16, i32 0, i32 1
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !23
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !1
  %16 = bitcast %struct.gx_device_s* %15 to i8*
  call void %12(%struct.gs_memory_s* %14, i8* %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0)) #4
  br label %do.cond.17

do.cond.17:                                       ; preds = %do.end.14
  br label %do.end.18

do.end.18:                                        ; preds = %do.cond.17
  br label %do.body.19

do.body.19:                                       ; preds = %do.end.18
  br label %do.cond.20

do.cond.20:                                       ; preds = %do.body.19
  br label %do.end.21

do.end.21:                                        ; preds = %do.cond.20
  br label %if.end

if.else:                                          ; preds = %do.end.6
  br label %do.body.22

do.body.22:                                       ; preds = %if.else
  br label %do.cond.23

do.cond.23:                                       ; preds = %do.body.22
  br label %do.end.24

do.end.24:                                        ; preds = %do.cond.23
  br label %if.end

if.end:                                           ; preds = %do.end.24, %do.end.21
  br label %if.end.25

if.end.25:                                        ; preds = %if.end, %do.body
  br label %do.cond.26

do.cond.26:                                       ; preds = %if.end.25
  br label %do.end.27

do.end.27:                                        ; preds = %do.cond.26
  %17 = bitcast %struct.gx_device_s** %target to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #2
  ret void
}

; Function Attrs: nounwind uwtable
define void @gx_device_forward_fill_in_procs(%struct.gx_device_forward_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_forward_s*, align 8
  store %struct.gx_device_forward_s* %dev, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gx_device_forward_s* %0 to %struct.gx_device_s*
  call void @gx_device_set_procs(%struct.gx_device_s* %1) #4
  %2 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %2, i32 0, i32 42
  %get_initial_matrix = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 1
  %3 = load void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)** %get_initial_matrix, align 8, !tbaa !26
  %cmp = icmp eq void (%struct.gx_device_s*, %struct.gs_matrix_s*)* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 42
  %get_initial_matrix2 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1, i32 0, i32 1
  store void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @gx_forward_get_initial_matrix, void (%struct.gx_device_s*, %struct.gs_matrix_s*)** %get_initial_matrix2, align 8, !tbaa !26
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs3 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %5, i32 0, i32 42
  %sync_output = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs3, i32 0, i32 2
  %6 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %sync_output, align 8, !tbaa !27
  %cmp4 = icmp eq i32 (%struct.gx_device_s*)* %6, null
  br i1 %cmp4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %7 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs6 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %7, i32 0, i32 42
  %sync_output7 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs6, i32 0, i32 2
  store i32 (%struct.gx_device_s*)* @gx_forward_sync_output, i32 (%struct.gx_device_s*)** %sync_output7, align 8, !tbaa !27
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %8 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs9 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %8, i32 0, i32 42
  %output_page = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs9, i32 0, i32 3
  %9 = load i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32)** %output_page, align 8, !tbaa !28
  %cmp10 = icmp eq i32 (%struct.gx_device_s*, i32, i32)* %9, null
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.8
  %10 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs12 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %10, i32 0, i32 42
  %output_page13 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs12, i32 0, i32 3
  store i32 (%struct.gx_device_s*, i32, i32)* @gx_forward_output_page, i32 (%struct.gx_device_s*, i32, i32)** %output_page13, align 8, !tbaa !28
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.end.8
  %11 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs15 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %11, i32 0, i32 42
  %map_rgb_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs15, i32 0, i32 5
  %12 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %map_rgb_color, align 8, !tbaa !29
  %cmp16 = icmp eq i64 (%struct.gx_device_s*, i16*)* %12, null
  br i1 %cmp16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %if.end.14
  %13 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs18 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %13, i32 0, i32 42
  %map_rgb_color19 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs18, i32 0, i32 5
  store i64 (%struct.gx_device_s*, i16*)* @gx_forward_map_rgb_color, i64 (%struct.gx_device_s*, i16*)** %map_rgb_color19, align 8, !tbaa !29
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %if.end.14
  %14 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs21 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %14, i32 0, i32 42
  %map_color_rgb = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs21, i32 0, i32 6
  %15 = load i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)** %map_color_rgb, align 8, !tbaa !30
  %cmp22 = icmp eq i32 (%struct.gx_device_s*, i64, i16*)* %15, null
  br i1 %cmp22, label %if.then.23, label %if.end.26

if.then.23:                                       ; preds = %if.end.20
  %16 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs24 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %16, i32 0, i32 42
  %map_color_rgb25 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs24, i32 0, i32 6
  store i32 (%struct.gx_device_s*, i64, i16*)* @gx_forward_map_color_rgb, i32 (%struct.gx_device_s*, i64, i16*)** %map_color_rgb25, align 8, !tbaa !30
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.23, %if.end.20
  %17 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs27 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %17, i32 0, i32 42
  %get_bits = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs27, i32 0, i32 12
  %18 = load i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)** %get_bits, align 8, !tbaa !31
  %cmp28 = icmp eq i32 (%struct.gx_device_s*, i32, i8*, i8**)* %18, null
  br i1 %cmp28, label %if.then.29, label %if.end.32

if.then.29:                                       ; preds = %if.end.26
  %19 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs30 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %19, i32 0, i32 42
  %get_bits31 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs30, i32 0, i32 12
  store i32 (%struct.gx_device_s*, i32, i8*, i8**)* @gx_forward_get_bits, i32 (%struct.gx_device_s*, i32, i8*, i8**)** %get_bits31, align 8, !tbaa !31
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.29, %if.end.26
  %20 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs33 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %20, i32 0, i32 42
  %get_params = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs33, i32 0, i32 13
  %21 = load i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)** %get_params, align 8, !tbaa !32
  %cmp34 = icmp eq i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* %21, null
  br i1 %cmp34, label %if.then.35, label %if.end.38

if.then.35:                                       ; preds = %if.end.32
  %22 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs36 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %22, i32 0, i32 42
  %get_params37 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs36, i32 0, i32 13
  store i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_forward_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)** %get_params37, align 8, !tbaa !32
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.35, %if.end.32
  %23 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs39 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %23, i32 0, i32 42
  %put_params = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs39, i32 0, i32 14
  %24 = load i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)** %put_params, align 8, !tbaa !33
  %cmp40 = icmp eq i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* %24, null
  br i1 %cmp40, label %if.then.41, label %if.end.44

if.then.41:                                       ; preds = %if.end.38
  %25 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs42 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %25, i32 0, i32 42
  %put_params43 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs42, i32 0, i32 14
  store i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_forward_put_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)** %put_params43, align 8, !tbaa !33
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.41, %if.end.38
  %26 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs45 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %26, i32 0, i32 42
  %map_cmyk_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs45, i32 0, i32 15
  %27 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %map_cmyk_color, align 8, !tbaa !34
  %cmp46 = icmp eq i64 (%struct.gx_device_s*, i16*)* %27, null
  br i1 %cmp46, label %if.then.47, label %if.end.50

if.then.47:                                       ; preds = %if.end.44
  %28 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs48 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %28, i32 0, i32 42
  %map_cmyk_color49 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs48, i32 0, i32 15
  store i64 (%struct.gx_device_s*, i16*)* @gx_forward_map_cmyk_color, i64 (%struct.gx_device_s*, i16*)** %map_cmyk_color49, align 8, !tbaa !34
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.47, %if.end.44
  %29 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs51 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %29, i32 0, i32 42
  %get_xfont_procs = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs51, i32 0, i32 16
  %30 = load %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)** %get_xfont_procs, align 8, !tbaa !35
  %cmp52 = icmp eq %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* %30, null
  br i1 %cmp52, label %if.then.53, label %if.end.56

if.then.53:                                       ; preds = %if.end.50
  %31 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs54 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %31, i32 0, i32 42
  %get_xfont_procs55 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs54, i32 0, i32 16
  store %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_procs, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)** %get_xfont_procs55, align 8, !tbaa !35
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.53, %if.end.50
  %32 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs57 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %32, i32 0, i32 42
  %get_xfont_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs57, i32 0, i32 17
  %33 = load %struct.gx_device_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)** %get_xfont_device, align 8, !tbaa !36
  %cmp58 = icmp eq %struct.gx_device_s* (%struct.gx_device_s*)* %33, null
  br i1 %cmp58, label %if.then.59, label %if.end.62

if.then.59:                                       ; preds = %if.end.56
  %34 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs60 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %34, i32 0, i32 42
  %get_xfont_device61 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs60, i32 0, i32 17
  store %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_device, %struct.gx_device_s* (%struct.gx_device_s*)** %get_xfont_device61, align 8, !tbaa !36
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.59, %if.end.56
  %35 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs63 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %35, i32 0, i32 42
  %map_rgb_alpha_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs63, i32 0, i32 18
  %36 = load i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)** %map_rgb_alpha_color, align 8, !tbaa !37
  %cmp64 = icmp eq i64 (%struct.gx_device_s*, i16, i16, i16, i16)* %36, null
  br i1 %cmp64, label %if.then.65, label %if.end.68

if.then.65:                                       ; preds = %if.end.62
  %37 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs66 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %37, i32 0, i32 42
  %map_rgb_alpha_color67 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs66, i32 0, i32 18
  store i64 (%struct.gx_device_s*, i16, i16, i16, i16)* @gx_forward_map_rgb_alpha_color, i64 (%struct.gx_device_s*, i16, i16, i16, i16)** %map_rgb_alpha_color67, align 8, !tbaa !37
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.65, %if.end.62
  %38 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs69 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %38, i32 0, i32 42
  %get_page_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs69, i32 0, i32 19
  %39 = load %struct.gx_device_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)** %get_page_device, align 8, !tbaa !38
  %cmp70 = icmp eq %struct.gx_device_s* (%struct.gx_device_s*)* %39, null
  br i1 %cmp70, label %if.then.71, label %if.end.74

if.then.71:                                       ; preds = %if.end.68
  %40 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs72 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %40, i32 0, i32 42
  %get_page_device73 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs72, i32 0, i32 19
  store %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_page_device, %struct.gx_device_s* (%struct.gx_device_s*)** %get_page_device73, align 8, !tbaa !38
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.71, %if.end.68
  %41 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs75 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %41, i32 0, i32 42
  %get_band = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs75, i32 0, i32 22
  %42 = load i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i32, i32*)** %get_band, align 8, !tbaa !39
  %cmp76 = icmp eq i32 (%struct.gx_device_s*, i32, i32*)* %42, null
  br i1 %cmp76, label %if.then.77, label %if.end.80

if.then.77:                                       ; preds = %if.end.74
  %43 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs78 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %43, i32 0, i32 42
  %get_band79 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs78, i32 0, i32 22
  store i32 (%struct.gx_device_s*, i32, i32*)* @gx_forward_get_band, i32 (%struct.gx_device_s*, i32, i32*)** %get_band79, align 8, !tbaa !39
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.77, %if.end.74
  %44 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs81 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %44, i32 0, i32 42
  %copy_rop = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs81, i32 0, i32 23
  %45 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)** %copy_rop, align 8, !tbaa !40
  %cmp82 = icmp eq i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* %45, null
  br i1 %cmp82, label %if.then.83, label %if.end.86

if.then.83:                                       ; preds = %if.end.80
  %46 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs84 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %46, i32 0, i32 42
  %copy_rop85 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs84, i32 0, i32 23
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @gx_forward_copy_rop, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)** %copy_rop85, align 8, !tbaa !40
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.83, %if.end.80
  %47 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs87 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %47, i32 0, i32 42
  %fill_path = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs87, i32 0, i32 24
  %48 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %fill_path, align 8, !tbaa !41
  %cmp88 = icmp eq i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* %48, null
  br i1 %cmp88, label %if.then.89, label %if.end.92

if.then.89:                                       ; preds = %if.end.86
  %49 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs90 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %49, i32 0, i32 42
  %fill_path91 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs90, i32 0, i32 24
  store i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_forward_fill_path, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %fill_path91, align 8, !tbaa !41
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.89, %if.end.86
  %50 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs93 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %50, i32 0, i32 42
  %stroke_path = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs93, i32 0, i32 25
  %51 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %stroke_path, align 8, !tbaa !42
  %cmp94 = icmp eq i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* %51, null
  br i1 %cmp94, label %if.then.95, label %if.end.98

if.then.95:                                       ; preds = %if.end.92
  %52 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs96 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %52, i32 0, i32 42
  %stroke_path97 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs96, i32 0, i32 25
  store i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_forward_stroke_path, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %stroke_path97, align 8, !tbaa !42
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.95, %if.end.92
  %53 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs99 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %53, i32 0, i32 42
  %fill_mask = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs99, i32 0, i32 26
  %54 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)** %fill_mask, align 8, !tbaa !43
  %cmp100 = icmp eq i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* %54, null
  br i1 %cmp100, label %if.then.101, label %if.end.104

if.then.101:                                      ; preds = %if.end.98
  %55 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs102 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %55, i32 0, i32 42
  %fill_mask103 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs102, i32 0, i32 26
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* @gx_forward_fill_mask, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)** %fill_mask103, align 8, !tbaa !43
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.101, %if.end.98
  %56 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs105 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %56, i32 0, i32 42
  %fill_trapezoid = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs105, i32 0, i32 27
  %57 = load i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_trapezoid, align 8, !tbaa !44
  %cmp106 = icmp eq i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* %57, null
  br i1 %cmp106, label %if.then.107, label %if.end.110

if.then.107:                                      ; preds = %if.end.104
  %58 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs108 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %58, i32 0, i32 42
  %fill_trapezoid109 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs108, i32 0, i32 27
  store i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_forward_fill_trapezoid, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_trapezoid109, align 8, !tbaa !44
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.107, %if.end.104
  %59 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs111 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %59, i32 0, i32 42
  %fill_parallelogram = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs111, i32 0, i32 28
  %60 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_parallelogram, align 8, !tbaa !45
  %cmp112 = icmp eq i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* %60, null
  br i1 %cmp112, label %if.then.113, label %if.end.116

if.then.113:                                      ; preds = %if.end.110
  %61 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs114 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %61, i32 0, i32 42
  %fill_parallelogram115 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs114, i32 0, i32 28
  store i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_forward_fill_parallelogram, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_parallelogram115, align 8, !tbaa !45
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.113, %if.end.110
  %62 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs117 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %62, i32 0, i32 42
  %fill_triangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs117, i32 0, i32 29
  %63 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_triangle, align 8, !tbaa !46
  %cmp118 = icmp eq i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* %63, null
  br i1 %cmp118, label %if.then.119, label %if.end.122

if.then.119:                                      ; preds = %if.end.116
  %64 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs120 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %64, i32 0, i32 42
  %fill_triangle121 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs120, i32 0, i32 29
  store i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_forward_fill_triangle, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_triangle121, align 8, !tbaa !46
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.119, %if.end.116
  %65 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs123 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %65, i32 0, i32 42
  %draw_thin_line = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs123, i32 0, i32 30
  %66 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)** %draw_thin_line, align 8, !tbaa !47
  %cmp124 = icmp eq i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* %66, null
  br i1 %cmp124, label %if.then.125, label %if.end.128

if.then.125:                                      ; preds = %if.end.122
  %67 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs126 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %67, i32 0, i32 42
  %draw_thin_line127 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs126, i32 0, i32 30
  store i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* @gx_forward_draw_thin_line, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)** %draw_thin_line127, align 8, !tbaa !47
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.125, %if.end.122
  %68 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs129 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %68, i32 0, i32 42
  %begin_image = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs129, i32 0, i32 31
  %69 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)** %begin_image, align 8, !tbaa !48
  %cmp130 = icmp eq i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* %69, null
  br i1 %cmp130, label %if.then.131, label %if.end.134

if.then.131:                                      ; preds = %if.end.128
  %70 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs132 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %70, i32 0, i32 42
  %begin_image133 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs132, i32 0, i32 31
  store i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_forward_begin_image, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)** %begin_image133, align 8, !tbaa !48
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.131, %if.end.128
  %71 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs135 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %71, i32 0, i32 42
  %strip_copy_rop = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs135, i32 0, i32 35
  %72 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)** %strip_copy_rop, align 8, !tbaa !49
  %cmp136 = icmp eq i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* %72, null
  br i1 %cmp136, label %if.then.137, label %if.end.140

if.then.137:                                      ; preds = %if.end.134
  %73 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs138 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %73, i32 0, i32 42
  %strip_copy_rop139 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs138, i32 0, i32 35
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @gx_forward_strip_copy_rop, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)** %strip_copy_rop139, align 8, !tbaa !49
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.137, %if.end.134
  %74 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs141 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %74, i32 0, i32 42
  %get_clipping_box = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs141, i32 0, i32 36
  %75 = load void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)** %get_clipping_box, align 8, !tbaa !50
  %cmp142 = icmp eq void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* %75, null
  br i1 %cmp142, label %if.then.143, label %if.end.146

if.then.143:                                      ; preds = %if.end.140
  %76 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs144 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %76, i32 0, i32 42
  %get_clipping_box145 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs144, i32 0, i32 36
  store void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* @gx_forward_get_clipping_box, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)** %get_clipping_box145, align 8, !tbaa !50
  br label %if.end.146

if.end.146:                                       ; preds = %if.then.143, %if.end.140
  %77 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs147 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %77, i32 0, i32 42
  %begin_typed_image = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs147, i32 0, i32 37
  %78 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)** %begin_typed_image, align 8, !tbaa !51
  %cmp148 = icmp eq i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* %78, null
  br i1 %cmp148, label %if.then.149, label %if.end.152

if.then.149:                                      ; preds = %if.end.146
  %79 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs150 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %79, i32 0, i32 42
  %begin_typed_image151 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs150, i32 0, i32 37
  store i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_forward_begin_typed_image, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)** %begin_typed_image151, align 8, !tbaa !51
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.149, %if.end.146
  %80 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs153 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %80, i32 0, i32 42
  %get_bits_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs153, i32 0, i32 38
  %81 = load i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %get_bits_rectangle, align 8, !tbaa !52
  %cmp154 = icmp eq i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* %81, null
  br i1 %cmp154, label %if.then.155, label %if.end.158

if.then.155:                                      ; preds = %if.end.152
  %82 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs156 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %82, i32 0, i32 42
  %get_bits_rectangle157 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs156, i32 0, i32 38
  store i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* @gx_forward_get_bits_rectangle, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %get_bits_rectangle157, align 8, !tbaa !52
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.155, %if.end.152
  %83 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs159 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %83, i32 0, i32 42
  %map_color_rgb_alpha = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs159, i32 0, i32 39
  %84 = load i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)** %map_color_rgb_alpha, align 8, !tbaa !53
  %cmp160 = icmp eq i32 (%struct.gx_device_s*, i64, i16*)* %84, null
  br i1 %cmp160, label %if.then.161, label %if.end.164

if.then.161:                                      ; preds = %if.end.158
  %85 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs162 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %85, i32 0, i32 42
  %map_color_rgb_alpha163 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs162, i32 0, i32 39
  store i32 (%struct.gx_device_s*, i64, i16*)* @gx_forward_map_color_rgb_alpha, i32 (%struct.gx_device_s*, i64, i16*)** %map_color_rgb_alpha163, align 8, !tbaa !53
  br label %if.end.164

if.end.164:                                       ; preds = %if.then.161, %if.end.158
  %86 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs165 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %86, i32 0, i32 42
  %create_compositor = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs165, i32 0, i32 40
  %87 = load i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)** %create_compositor, align 8, !tbaa !54
  %cmp166 = icmp eq i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* %87, null
  br i1 %cmp166, label %if.then.167, label %if.end.170

if.then.167:                                      ; preds = %if.end.164
  %88 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs168 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %88, i32 0, i32 42
  %create_compositor169 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs168, i32 0, i32 40
  store i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* @gx_no_create_compositor, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)** %create_compositor169, align 8, !tbaa !54
  br label %if.end.170

if.end.170:                                       ; preds = %if.then.167, %if.end.164
  %89 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs171 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %89, i32 0, i32 42
  %get_hardware_params = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs171, i32 0, i32 41
  %90 = load i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)** %get_hardware_params, align 8, !tbaa !55
  %cmp172 = icmp eq i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* %90, null
  br i1 %cmp172, label %if.then.173, label %if.end.176

if.then.173:                                      ; preds = %if.end.170
  %91 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs174 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %91, i32 0, i32 42
  %get_hardware_params175 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs174, i32 0, i32 41
  store i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_forward_get_hardware_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)** %get_hardware_params175, align 8, !tbaa !55
  br label %if.end.176

if.end.176:                                       ; preds = %if.then.173, %if.end.170
  %92 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs177 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %92, i32 0, i32 42
  %text_begin = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs177, i32 0, i32 42
  %93 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)** %text_begin, align 8, !tbaa !56
  %cmp178 = icmp eq i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* %93, null
  br i1 %cmp178, label %if.then.179, label %if.end.182

if.then.179:                                      ; preds = %if.end.176
  %94 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs180 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %94, i32 0, i32 42
  %text_begin181 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs180, i32 0, i32 42
  store i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* @gx_forward_text_begin, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)** %text_begin181, align 8, !tbaa !56
  br label %if.end.182

if.end.182:                                       ; preds = %if.then.179, %if.end.176
  %95 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs183 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %95, i32 0, i32 42
  %get_color_mapping_procs = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs183, i32 0, i32 49
  %96 = load %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)** %get_color_mapping_procs, align 8, !tbaa !57
  %cmp184 = icmp eq %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* %96, null
  br i1 %cmp184, label %if.then.185, label %if.end.188

if.then.185:                                      ; preds = %if.end.182
  %97 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs186 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %97, i32 0, i32 42
  %get_color_mapping_procs187 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs186, i32 0, i32 49
  store %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* @gx_forward_get_color_mapping_procs, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)** %get_color_mapping_procs187, align 8, !tbaa !57
  br label %if.end.188

if.end.188:                                       ; preds = %if.then.185, %if.end.182
  %98 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs189 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %98, i32 0, i32 42
  %get_color_comp_index = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs189, i32 0, i32 50
  %99 = load i32 (%struct.gx_device_s*, i8*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32)** %get_color_comp_index, align 8, !tbaa !58
  %cmp190 = icmp eq i32 (%struct.gx_device_s*, i8*, i32, i32)* %99, null
  br i1 %cmp190, label %if.then.191, label %if.end.194

if.then.191:                                      ; preds = %if.end.188
  %100 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs192 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %100, i32 0, i32 42
  %get_color_comp_index193 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs192, i32 0, i32 50
  store i32 (%struct.gx_device_s*, i8*, i32, i32)* @gx_forward_get_color_comp_index, i32 (%struct.gx_device_s*, i8*, i32, i32)** %get_color_comp_index193, align 8, !tbaa !58
  br label %if.end.194

if.end.194:                                       ; preds = %if.then.191, %if.end.188
  %101 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs195 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %101, i32 0, i32 42
  %encode_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs195, i32 0, i32 51
  %102 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color, align 8, !tbaa !59
  %cmp196 = icmp eq i64 (%struct.gx_device_s*, i16*)* %102, null
  br i1 %cmp196, label %if.then.197, label %if.end.200

if.then.197:                                      ; preds = %if.end.194
  %103 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs198 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %103, i32 0, i32 42
  %encode_color199 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs198, i32 0, i32 51
  store i64 (%struct.gx_device_s*, i16*)* @gx_forward_encode_color, i64 (%struct.gx_device_s*, i16*)** %encode_color199, align 8, !tbaa !59
  br label %if.end.200

if.end.200:                                       ; preds = %if.then.197, %if.end.194
  %104 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs201 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %104, i32 0, i32 42
  %decode_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs201, i32 0, i32 52
  %105 = load i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)** %decode_color, align 8, !tbaa !60
  %cmp202 = icmp eq i32 (%struct.gx_device_s*, i64, i16*)* %105, null
  br i1 %cmp202, label %if.then.203, label %if.end.206

if.then.203:                                      ; preds = %if.end.200
  %106 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs204 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %106, i32 0, i32 42
  %decode_color205 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs204, i32 0, i32 52
  store i32 (%struct.gx_device_s*, i64, i16*)* @gx_forward_decode_color, i32 (%struct.gx_device_s*, i64, i16*)** %decode_color205, align 8, !tbaa !60
  br label %if.end.206

if.end.206:                                       ; preds = %if.then.203, %if.end.200
  %107 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs207 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %107, i32 0, i32 42
  %dev_spec_op = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs207, i32 0, i32 65
  %108 = load i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)** %dev_spec_op, align 8, !tbaa !61
  %cmp208 = icmp eq i32 (%struct.gx_device_s*, i32, i8*, i32)* %108, null
  br i1 %cmp208, label %if.then.209, label %if.end.212

if.then.209:                                      ; preds = %if.end.206
  %109 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs210 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %109, i32 0, i32 42
  %dev_spec_op211 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs210, i32 0, i32 65
  store i32 (%struct.gx_device_s*, i32, i8*, i32)* @gx_forward_dev_spec_op, i32 (%struct.gx_device_s*, i32, i8*, i32)** %dev_spec_op211, align 8, !tbaa !61
  br label %if.end.212

if.end.212:                                       ; preds = %if.then.209, %if.end.206
  %110 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs213 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %110, i32 0, i32 42
  %fill_rectangle_hl_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs213, i32 0, i32 54
  %111 = load i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %fill_rectangle_hl_color, align 8, !tbaa !62
  %cmp214 = icmp eq i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* %111, null
  br i1 %cmp214, label %if.then.215, label %if.end.218

if.then.215:                                      ; preds = %if.end.212
  %112 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs216 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %112, i32 0, i32 42
  %fill_rectangle_hl_color217 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs216, i32 0, i32 54
  store i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_forward_fill_rectangle_hl_color, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %fill_rectangle_hl_color217, align 8, !tbaa !62
  br label %if.end.218

if.end.218:                                       ; preds = %if.then.215, %if.end.212
  %113 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs219 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %113, i32 0, i32 42
  %include_color_space = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs219, i32 0, i32 55
  %114 = load i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)** %include_color_space, align 8, !tbaa !63
  %cmp220 = icmp eq i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* %114, null
  br i1 %cmp220, label %if.then.221, label %if.end.224

if.then.221:                                      ; preds = %if.end.218
  %115 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs222 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %115, i32 0, i32 42
  %include_color_space223 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs222, i32 0, i32 55
  store i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* @gx_forward_include_color_space, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)** %include_color_space223, align 8, !tbaa !63
  br label %if.end.224

if.end.224:                                       ; preds = %if.then.221, %if.end.218
  %116 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs225 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %116, i32 0, i32 42
  %fill_linear_color_scanline = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs225, i32 0, i32 56
  %117 = load i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)** %fill_linear_color_scanline, align 8, !tbaa !64
  %cmp226 = icmp eq i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* %117, null
  br i1 %cmp226, label %if.then.227, label %if.end.230

if.then.227:                                      ; preds = %if.end.224
  %118 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs228 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %118, i32 0, i32 42
  %fill_linear_color_scanline229 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs228, i32 0, i32 56
  store i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* @gx_forward_fill_linear_color_scanline, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)** %fill_linear_color_scanline229, align 8, !tbaa !64
  br label %if.end.230

if.end.230:                                       ; preds = %if.then.227, %if.end.224
  %119 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs231 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %119, i32 0, i32 42
  %fill_linear_color_trapezoid = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs231, i32 0, i32 57
  %120 = load i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)** %fill_linear_color_trapezoid, align 8, !tbaa !65
  %cmp232 = icmp eq i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* %120, null
  br i1 %cmp232, label %if.then.233, label %if.end.236

if.then.233:                                      ; preds = %if.end.230
  %121 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs234 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %121, i32 0, i32 42
  %fill_linear_color_trapezoid235 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs234, i32 0, i32 57
  store i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* @gx_forward_fill_linear_color_trapezoid, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)** %fill_linear_color_trapezoid235, align 8, !tbaa !65
  br label %if.end.236

if.end.236:                                       ; preds = %if.then.233, %if.end.230
  %122 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs237 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %122, i32 0, i32 42
  %fill_linear_color_triangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs237, i32 0, i32 58
  %123 = load i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)** %fill_linear_color_triangle, align 8, !tbaa !66
  %cmp238 = icmp eq i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* %123, null
  br i1 %cmp238, label %if.then.239, label %if.end.242

if.then.239:                                      ; preds = %if.end.236
  %124 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs240 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %124, i32 0, i32 42
  %fill_linear_color_triangle241 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs240, i32 0, i32 58
  store i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* @gx_forward_fill_linear_color_triangle, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)** %fill_linear_color_triangle241, align 8, !tbaa !66
  br label %if.end.242

if.end.242:                                       ; preds = %if.then.239, %if.end.236
  %125 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs243 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %125, i32 0, i32 42
  %update_spot_equivalent_colors = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs243, i32 0, i32 59
  %126 = load i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)** %update_spot_equivalent_colors, align 8, !tbaa !67
  %cmp244 = icmp eq i32 (%struct.gx_device_s*, %struct.gs_state_s*)* %126, null
  br i1 %cmp244, label %if.then.245, label %if.end.248

if.then.245:                                      ; preds = %if.end.242
  %127 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs246 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %127, i32 0, i32 42
  %update_spot_equivalent_colors247 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs246, i32 0, i32 59
  store i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_forward_update_spot_equivalent_colors, i32 (%struct.gx_device_s*, %struct.gs_state_s*)** %update_spot_equivalent_colors247, align 8, !tbaa !67
  br label %if.end.248

if.end.248:                                       ; preds = %if.then.245, %if.end.242
  %128 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs249 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %128, i32 0, i32 42
  %ret_devn_params = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs249, i32 0, i32 60
  %129 = load %struct.gs_devn_params_s* (%struct.gx_device_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)** %ret_devn_params, align 8, !tbaa !68
  %cmp250 = icmp eq %struct.gs_devn_params_s* (%struct.gx_device_s*)* %129, null
  br i1 %cmp250, label %if.then.251, label %if.end.254

if.then.251:                                      ; preds = %if.end.248
  %130 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs252 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %130, i32 0, i32 42
  %ret_devn_params253 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs252, i32 0, i32 60
  store %struct.gs_devn_params_s* (%struct.gx_device_s*)* @gx_forward_ret_devn_params, %struct.gs_devn_params_s* (%struct.gx_device_s*)** %ret_devn_params253, align 8, !tbaa !68
  br label %if.end.254

if.end.254:                                       ; preds = %if.then.251, %if.end.248
  %131 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs255 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %131, i32 0, i32 42
  %fillpage = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs255, i32 0, i32 61
  %132 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)** %fillpage, align 8, !tbaa !69
  %cmp256 = icmp eq i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* %132, null
  br i1 %cmp256, label %if.then.257, label %if.end.260

if.then.257:                                      ; preds = %if.end.254
  %133 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs258 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %133, i32 0, i32 42
  %fillpage259 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs258, i32 0, i32 61
  store i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* @gx_forward_fillpage, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)** %fillpage259, align 8, !tbaa !69
  br label %if.end.260

if.end.260:                                       ; preds = %if.then.257, %if.end.254
  %134 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs261 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %134, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs261, i32 0, i32 67
  %135 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !70
  %cmp262 = icmp eq i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* %135, null
  br i1 %cmp262, label %if.then.263, label %if.end.266

if.then.263:                                      ; preds = %if.end.260
  %136 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs264 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %136, i32 0, i32 42
  %get_profile265 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs264, i32 0, i32 67
  store i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_forward_get_profile, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile265, align 8, !tbaa !70
  br label %if.end.266

if.end.266:                                       ; preds = %if.then.263, %if.end.260
  %137 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs267 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %137, i32 0, i32 42
  %set_graphics_type_tag = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs267, i32 0, i32 68
  %138 = load void (%struct.gx_device_s*, i32)*, void (%struct.gx_device_s*, i32)** %set_graphics_type_tag, align 8, !tbaa !71
  %cmp268 = icmp eq void (%struct.gx_device_s*, i32)* %138, null
  br i1 %cmp268, label %if.then.269, label %if.end.272

if.then.269:                                      ; preds = %if.end.266
  %139 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs270 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %139, i32 0, i32 42
  %set_graphics_type_tag271 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs270, i32 0, i32 68
  store void (%struct.gx_device_s*, i32)* @gx_forward_set_graphics_type_tag, void (%struct.gx_device_s*, i32)** %set_graphics_type_tag271, align 8, !tbaa !71
  br label %if.end.272

if.end.272:                                       ; preds = %if.then.269, %if.end.266
  %140 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs273 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %140, i32 0, i32 42
  %strip_copy_rop2 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs273, i32 0, i32 69
  %141 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)** %strip_copy_rop2, align 8, !tbaa !72
  %cmp274 = icmp eq i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* %141, null
  br i1 %cmp274, label %if.then.275, label %if.end.278

if.then.275:                                      ; preds = %if.end.272
  %142 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs276 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %142, i32 0, i32 42
  %strip_copy_rop2277 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs276, i32 0, i32 69
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* @gx_forward_strip_copy_rop2, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)** %strip_copy_rop2277, align 8, !tbaa !72
  br label %if.end.278

if.end.278:                                       ; preds = %if.then.275, %if.end.272
  %143 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs279 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %143, i32 0, i32 42
  %strip_tile_rect_devn = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs279, i32 0, i32 70
  %144 = load i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)** %strip_tile_rect_devn, align 8, !tbaa !73
  %cmp280 = icmp eq i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* %144, null
  br i1 %cmp280, label %if.then.281, label %if.end.284

if.then.281:                                      ; preds = %if.end.278
  %145 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs282 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %145, i32 0, i32 42
  %strip_tile_rect_devn283 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs282, i32 0, i32 70
  store i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* @gx_forward_strip_tile_rect_devn, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)** %strip_tile_rect_devn283, align 8, !tbaa !73
  br label %if.end.284

if.end.284:                                       ; preds = %if.then.281, %if.end.278
  %146 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %147 = bitcast %struct.gx_device_forward_s* %146 to %struct.gx_device_s*
  call void @gx_device_fill_in_procs(%struct.gx_device_s* %147) #4
  ret void
}

declare void @gx_device_set_procs(%struct.gx_device_s*) #1

; Function Attrs: nounwind uwtable
define void @gx_forward_get_initial_matrix(%struct.gx_device_s* %dev, %struct.gs_matrix_s* %pmat) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %6, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %8 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  call void @gx_default_get_initial_matrix(%struct.gx_device_s* %7, %struct.gs_matrix_s* %8) #4
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 42
  %get_initial_matrix = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 1
  %10 = load void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)** %get_initial_matrix, align 8, !tbaa !74
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %12 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  call void %10(%struct.gx_device_s* %11, %struct.gs_matrix_s* %12) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  %14 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #2
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gx_forward_sync_output(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %6, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 @gx_default_sync_output(%struct.gx_device_s* %7) #4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 42
  %sync_output = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 2
  %9 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %sync_output, align 8, !tbaa !75
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %call1 = call i32 %9(%struct.gx_device_s* %10) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call1, %cond.false ]
  %11 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #2
  %12 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #2
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define i32 @gx_forward_output_page(%struct.gx_device_s* %dev, i32 %num_copies, i32 %flush) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %num_copies.addr = alloca i32, align 4
  %flush.addr = alloca i32, align 4
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %num_copies, i32* %num_copies.addr, align 4, !tbaa !76
  store i32 %flush, i32* %flush.addr, align 4, !tbaa !76
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %7, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %9 = load i32, i32* %num_copies.addr, align 4, !tbaa !76
  %10 = load i32, i32* %flush.addr, align 4, !tbaa !76
  %call = call i32 @gx_default_output_page(%struct.gx_device_s* %8, i32 %9, i32 %10) #4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 42
  %output_page = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 3
  %12 = load i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32)** %output_page, align 8, !tbaa !77
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %14 = load i32, i32* %num_copies.addr, align 4, !tbaa !76
  %15 = load i32, i32* %flush.addr, align 4, !tbaa !76
  %call1 = call i32 %12(%struct.gx_device_s* %13, i32 %14, i32 %15) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call1, %cond.false ]
  store i32 %cond, i32* %code, align 4, !tbaa !76
  %16 = load i32, i32* %code, align 4, !tbaa !76
  %cmp2 = icmp sge i32 %16, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp3 = icmp ne %struct.gx_device_s* %17, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %PageCount = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 26
  %19 = load i64, i64* %PageCount, align 8, !tbaa !78
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %PageCount4 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 26
  store i64 %19, i64* %PageCount4, align 8, !tbaa !78
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %cond.end
  %21 = load i32, i32* %code, align 4, !tbaa !76
  %22 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #2
  %23 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #2
  %24 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #2
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define i64 @gx_forward_map_rgb_color(%struct.gx_device_s* %dev, i16* %cv) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %6, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %8 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %call = call i64 @gx_error_encode_color(%struct.gx_device_s* %7, i16* %8) #4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 42
  %map_rgb_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 5
  %10 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %map_rgb_color, align 8, !tbaa !79
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %12 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %call1 = call i64 %10(%struct.gx_device_s* %11, i16* %12) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call, %cond.true ], [ %call1, %cond.false ]
  %13 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  %14 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #2
  ret i64 %cond
}

; Function Attrs: nounwind uwtable
define i32 @gx_forward_map_color_rgb(%struct.gx_device_s* %dev, i64 %color, i16* %prgb) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %prgb.addr = alloca i16*, align 8
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !80
  store i16* %prgb, i16** %prgb.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %6, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %8 = load i64, i64* %color.addr, align 8, !tbaa !80
  %9 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %call = call i32 @gx_default_w_b_map_color_rgb(%struct.gx_device_s* %7, i64 %8, i16* %9) #4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %10, i32 0, i32 42
  %map_color_rgb = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 6
  %11 = load i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)** %map_color_rgb, align 8, !tbaa !81
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %13 = load i64, i64* %color.addr, align 8, !tbaa !80
  %14 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %call1 = call i32 %11(%struct.gx_device_s* %12, i64 %13, i16* %14) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call1, %cond.false ]
  %15 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #2
  %16 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #2
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define i32 @gx_forward_get_bits(%struct.gx_device_s* %dev, i32 %y, i8* %data, i8** %actual_data) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %y.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %actual_data.addr = alloca i8**, align 8
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %y, i32* %y.addr, align 4, !tbaa !76
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i8** %actual_data, i8*** %actual_data.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %6, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %8 = load i32, i32* %y.addr, align 4, !tbaa !76
  %9 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %10 = load i8**, i8*** %actual_data.addr, align 8, !tbaa !1
  %call = call i32 @gx_default_get_bits(%struct.gx_device_s* %7, i32 %8, i8* %9, i8** %10) #4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 42
  %get_bits = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 12
  %12 = load i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)** %get_bits, align 8, !tbaa !82
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %14 = load i32, i32* %y.addr, align 4, !tbaa !76
  %15 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %16 = load i8**, i8*** %actual_data.addr, align 8, !tbaa !1
  %call1 = call i32 %12(%struct.gx_device_s* %13, i32 %14, i8* %15, i8** %16) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call1, %cond.false ]
  %17 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #2
  %18 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #2
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define i32 @gx_forward_get_params(%struct.gx_device_s* %dev, %struct.gs_param_list_s* %plist) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %6, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %8 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @gx_default_get_params(%struct.gx_device_s* %7, %struct.gs_param_list_s* %8) #4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 42
  %get_params = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 13
  %10 = load i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)** %get_params, align 8, !tbaa !83
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %12 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call1 = call i32 %10(%struct.gx_device_s* %11, %struct.gs_param_list_s* %12) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call1, %cond.false ]
  %13 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  %14 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #2
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define i32 @gx_forward_put_params(%struct.gx_device_s* %dev, %struct.gs_param_list_s* %plist) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %was_open = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = bitcast i32* %was_open to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %8, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %10 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @gx_default_put_params(%struct.gx_device_s* %9, %struct.gs_param_list_s* %10) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %is_open = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 9
  %12 = load i32, i32* %is_open, align 4, !tbaa !84
  store i32 %12, i32* %was_open, align 4, !tbaa !76
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %13, i32 0, i32 42
  %put_params = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 14
  %14 = load i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)** %put_params, align 8, !tbaa !85
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %16 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call1 = call i32 %14(%struct.gx_device_s* %15, %struct.gs_param_list_s* %16) #4
  store i32 %call1, i32* %code, align 4, !tbaa !76
  %17 = load i32, i32* %code, align 4, !tbaa !76
  %cmp2 = icmp eq i32 %17, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %if.end
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %is_open3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 9
  %19 = load i32, i32* %is_open3, align 4, !tbaa !84
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.end.6, label %if.then.4

if.then.4:                                        ; preds = %land.lhs.true
  %20 = load i32, i32* %was_open, align 4, !tbaa !76
  %tobool5 = icmp ne i32 %20, 0
  %cond = select i1 %tobool5, i32 1, i32 0
  store i32 %cond, i32* %code, align 4, !tbaa !76
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %land.lhs.true, %if.end
  %21 = load i32, i32* %code, align 4, !tbaa !76
  %cmp7 = icmp sge i32 %21, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  call void @gx_device_decache_colors(%struct.gx_device_s* %22) #4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.6
  %23 = load i32, i32* %code, align 4, !tbaa !76
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.then
  %24 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #2
  %25 = bitcast i32* %was_open to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  %26 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #2
  %27 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define i64 @gx_forward_map_cmyk_color(%struct.gx_device_s* %dev, i16* %cv) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %6, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %8 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %call = call i64 @gx_default_map_cmyk_color(%struct.gx_device_s* %7, i16* %8) #4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 42
  %map_cmyk_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 15
  %10 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %map_cmyk_color, align 8, !tbaa !86
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %12 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %call1 = call i64 %10(%struct.gx_device_s* %11, i16* %12) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call, %cond.true ], [ %call1, %cond.false ]
  %13 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  %14 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #2
  ret i64 %cond
}

; Function Attrs: nounwind uwtable
define %struct.gx_xfont_procs_s* @gx_forward_get_xfont_procs(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %6, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call %struct.gx_xfont_procs_s* @gx_default_get_xfont_procs(%struct.gx_device_s* %7) #4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 42
  %get_xfont_procs = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 16
  %9 = load %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)** %get_xfont_procs, align 8, !tbaa !87
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %call1 = call %struct.gx_xfont_procs_s* %9(%struct.gx_device_s* %10) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gx_xfont_procs_s* [ %call, %cond.true ], [ %call1, %cond.false ]
  %11 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #2
  %12 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #2
  ret %struct.gx_xfont_procs_s* %cond
}

; Function Attrs: nounwind uwtable
define %struct.gx_device_s* @gx_forward_get_xfont_device(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %6, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call %struct.gx_device_s* @gx_default_get_xfont_device(%struct.gx_device_s* %7) #4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 42
  %get_xfont_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 17
  %9 = load %struct.gx_device_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)** %get_xfont_device, align 8, !tbaa !88
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %call1 = call %struct.gx_device_s* %9(%struct.gx_device_s* %10) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gx_device_s* [ %call, %cond.true ], [ %call1, %cond.false ]
  %11 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #2
  %12 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #2
  ret %struct.gx_device_s* %cond
}

; Function Attrs: nounwind uwtable
define i64 @gx_forward_map_rgb_alpha_color(%struct.gx_device_s* %dev, i16 zeroext %r, i16 zeroext %g, i16 zeroext %b, i16 zeroext %alpha) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %r.addr = alloca i16, align 2
  %g.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  %alpha.addr = alloca i16, align 2
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16 %r, i16* %r.addr, align 2, !tbaa !89
  store i16 %g, i16* %g.addr, align 2, !tbaa !89
  store i16 %b, i16* %b.addr, align 2, !tbaa !89
  store i16 %alpha, i16* %alpha.addr, align 2, !tbaa !89
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %6, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %8 = load i16, i16* %r.addr, align 2, !tbaa !89
  %9 = load i16, i16* %g.addr, align 2, !tbaa !89
  %10 = load i16, i16* %b.addr, align 2, !tbaa !89
  %11 = load i16, i16* %alpha.addr, align 2, !tbaa !89
  %call = call i64 @gx_default_map_rgb_alpha_color(%struct.gx_device_s* %7, i16 zeroext %8, i16 zeroext %9, i16 zeroext %10, i16 zeroext %11) #4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i32 0, i32 42
  %map_rgb_alpha_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 18
  %13 = load i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)** %map_rgb_alpha_color, align 8, !tbaa !90
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %15 = load i16, i16* %r.addr, align 2, !tbaa !89
  %16 = load i16, i16* %g.addr, align 2, !tbaa !89
  %17 = load i16, i16* %b.addr, align 2, !tbaa !89
  %18 = load i16, i16* %alpha.addr, align 2, !tbaa !89
  %call1 = call i64 %13(%struct.gx_device_s* %14, i16 zeroext %15, i16 zeroext %16, i16 zeroext %17, i16 zeroext %18) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call, %cond.true ], [ %call1, %cond.false ]
  %19 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #2
  %20 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #2
  ret i64 %cond
}

; Function Attrs: nounwind uwtable
define %struct.gx_device_s* @gx_forward_get_page_device(%struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca %struct.gx_device_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %pdev = alloca %struct.gx_device_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call %struct.gx_device_s* @gx_default_get_page_device(%struct.gx_device_s* %8) #4
  store %struct.gx_device_s* %call, %struct.gx_device_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 42
  %get_page_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 19
  %10 = load %struct.gx_device_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)** %get_page_device, align 8, !tbaa !91
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %call1 = call %struct.gx_device_s* %10(%struct.gx_device_s* %11) #4
  store %struct.gx_device_s* %call1, %struct.gx_device_s** %pdev, align 8, !tbaa !1
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev, align 8, !tbaa !1
  store %struct.gx_device_s* %12, %struct.gx_device_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %13 = bitcast %struct.gx_device_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  %14 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #2
  %15 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #2
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %retval
  ret %struct.gx_device_s* %16
}

; Function Attrs: nounwind uwtable
define i32 @gx_forward_get_band(%struct.gx_device_s* %dev, i32 %y, i32* %band_start) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %y.addr = alloca i32, align 4
  %band_start.addr = alloca i32*, align 8
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %y, i32* %y.addr, align 4, !tbaa !76
  store i32* %band_start, i32** %band_start.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %6, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %8 = load i32, i32* %y.addr, align 4, !tbaa !76
  %9 = load i32*, i32** %band_start.addr, align 8, !tbaa !1
  %call = call i32 @gx_default_get_band(%struct.gx_device_s* %7, i32 %8, i32* %9) #4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %10, i32 0, i32 42
  %get_band = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 22
  %11 = load i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i32, i32*)** %get_band, align 8, !tbaa !92
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %13 = load i32, i32* %y.addr, align 4, !tbaa !76
  %14 = load i32*, i32** %band_start.addr, align 8, !tbaa !1
  %call1 = call i32 %11(%struct.gx_device_s* %12, i32 %13, i32* %14) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call1, %cond.false ]
  %15 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #2
  %16 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #2
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define i32 @gx_forward_copy_rop(%struct.gx_device_s* %dev, i8* %sdata, i32 %sourcex, i32 %sraster, i64 %id, i64* %scolors, %struct.gx_tile_bitmap_s* %texture, i64* %tcolors, i32 %x, i32 %y, i32 %width, i32 %height, i32 %phase_x, i32 %phase_y, i32 %lop) #0 {
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
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %proc = alloca i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %sdata, i8** %sdata.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !76
  store i32 %sraster, i32* %sraster.addr, align 4, !tbaa !76
  store i64 %id, i64* %id.addr, align 8, !tbaa !80
  store i64* %scolors, i64** %scolors.addr, align 8, !tbaa !1
  store %struct.gx_tile_bitmap_s* %texture, %struct.gx_tile_bitmap_s** %texture.addr, align 8, !tbaa !1
  store i64* %tcolors, i64** %tcolors.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !76
  store i32 %y, i32* %y.addr, align 4, !tbaa !76
  store i32 %width, i32* %width.addr, align 4, !tbaa !76
  store i32 %height, i32* %height.addr, align 4, !tbaa !76
  store i32 %phase_x, i32* %phase_x.addr, align 4, !tbaa !76
  store i32 %phase_y, i32* %phase_y.addr, align 4, !tbaa !76
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !76
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = bitcast i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)** %proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %7, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %8, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 42
  %copy_rop = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 23
  %10 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)** %copy_rop, align 8, !tbaa !93
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* [ @gx_default_copy_rop, %cond.true ], [ %10, %cond.false ]
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* %cond, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)** %proc, align 8, !tbaa !1
  %11 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)** %proc, align 8, !tbaa !1
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %13 = load i8*, i8** %sdata.addr, align 8, !tbaa !1
  %14 = load i32, i32* %sourcex.addr, align 4, !tbaa !76
  %15 = load i32, i32* %sraster.addr, align 4, !tbaa !76
  %16 = load i64, i64* %id.addr, align 8, !tbaa !80
  %17 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %18 = load %struct.gx_tile_bitmap_s*, %struct.gx_tile_bitmap_s** %texture.addr, align 8, !tbaa !1
  %19 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %20 = load i32, i32* %x.addr, align 4, !tbaa !76
  %21 = load i32, i32* %y.addr, align 4, !tbaa !76
  %22 = load i32, i32* %width.addr, align 4, !tbaa !76
  %23 = load i32, i32* %height.addr, align 4, !tbaa !76
  %24 = load i32, i32* %phase_x.addr, align 4, !tbaa !76
  %25 = load i32, i32* %phase_y.addr, align 4, !tbaa !76
  %26 = load i32, i32* %lop.addr, align 4, !tbaa !76
  %call = call i32 %11(%struct.gx_device_s* %12, i8* %13, i32 %14, i32 %15, i64 %16, i64* %17, %struct.gx_tile_bitmap_s* %18, i64* %19, i32 %20, i32 %21, i32 %22, i32 %23, i32 %24, i32 %25, i32 %26) #4
  %27 = bitcast i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)** %proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  %28 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #2
  %29 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gx_forward_fill_path(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gx_path_s* %ppath, %struct.gx_fill_params_s* %params, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %params.addr = alloca %struct.gx_fill_params_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %proc = alloca i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.gx_fill_params_s* %params, %struct.gx_fill_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = bitcast i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %7, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %8, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 42
  %fill_path = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 24
  %10 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %fill_path, align 8, !tbaa !94
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* [ @gx_default_fill_path, %cond.true ], [ %10, %cond.false ]
  store i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* %cond, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %proc, align 8, !tbaa !1
  %11 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %proc, align 8, !tbaa !1
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %13 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %14 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %15 = load %struct.gx_fill_params_s*, %struct.gx_fill_params_s** %params.addr, align 8, !tbaa !1
  %16 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %17 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call = call i32 %11(%struct.gx_device_s* %12, %struct.gs_imager_state_s* %13, %struct.gx_path_s* %14, %struct.gx_fill_params_s* %15, %struct.gx_device_color_s* %16, %struct.gx_clip_path_s* %17) #4
  %18 = bitcast i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #2
  %19 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #2
  %20 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gx_forward_stroke_path(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gx_path_s* %ppath, %struct.gx_stroke_params_s* %params, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %params.addr = alloca %struct.gx_stroke_params_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %proc = alloca i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.gx_stroke_params_s* %params, %struct.gx_stroke_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = bitcast i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %7, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %8, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 42
  %stroke_path = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 25
  %10 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %stroke_path, align 8, !tbaa !95
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* [ @gx_default_stroke_path, %cond.true ], [ %10, %cond.false ]
  store i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* %cond, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %proc, align 8, !tbaa !1
  %11 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %proc, align 8, !tbaa !1
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %13 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %14 = load %struct.gx_path_s*, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  %15 = load %struct.gx_stroke_params_s*, %struct.gx_stroke_params_s** %params.addr, align 8, !tbaa !1
  %16 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %17 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call = call i32 %11(%struct.gx_device_s* %12, %struct.gs_imager_state_s* %13, %struct.gx_path_s* %14, %struct.gx_stroke_params_s* %15, %struct.gx_device_color_s* %16, %struct.gx_clip_path_s* %17) #4
  %18 = bitcast i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #2
  %19 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #2
  %20 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gx_forward_fill_mask(%struct.gx_device_s* %dev, i8* %data, i32 %dx, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, %struct.gx_device_color_s* %pdcolor, i32 %depth, i32 %lop, %struct.gx_clip_path_s* %pcpath) #0 {
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
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %depth.addr = alloca i32, align 4
  %lop.addr = alloca i32, align 4
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %proc = alloca i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %dx, i32* %dx.addr, align 4, !tbaa !76
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !76
  store i64 %id, i64* %id.addr, align 8, !tbaa !80
  store i32 %x, i32* %x.addr, align 4, !tbaa !76
  store i32 %y, i32* %y.addr, align 4, !tbaa !76
  store i32 %w, i32* %w.addr, align 4, !tbaa !76
  store i32 %h, i32* %h.addr, align 4, !tbaa !76
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !76
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !76
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = bitcast i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)** %proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %7, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %8, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 42
  %fill_mask = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 26
  %10 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)** %fill_mask, align 8, !tbaa !96
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* [ @gx_default_fill_mask, %cond.true ], [ %10, %cond.false ]
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* %cond, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)** %proc, align 8, !tbaa !1
  %11 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)** %proc, align 8, !tbaa !1
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %13 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %14 = load i32, i32* %dx.addr, align 4, !tbaa !76
  %15 = load i32, i32* %raster.addr, align 4, !tbaa !76
  %16 = load i64, i64* %id.addr, align 8, !tbaa !80
  %17 = load i32, i32* %x.addr, align 4, !tbaa !76
  %18 = load i32, i32* %y.addr, align 4, !tbaa !76
  %19 = load i32, i32* %w.addr, align 4, !tbaa !76
  %20 = load i32, i32* %h.addr, align 4, !tbaa !76
  %21 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %22 = load i32, i32* %depth.addr, align 4, !tbaa !76
  %23 = load i32, i32* %lop.addr, align 4, !tbaa !76
  %24 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call = call i32 %11(%struct.gx_device_s* %12, i8* %13, i32 %14, i32 %15, i64 %16, i32 %17, i32 %18, i32 %19, i32 %20, %struct.gx_device_color_s* %21, i32 %22, i32 %23, %struct.gx_clip_path_s* %24) #4
  %25 = bitcast i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)** %proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #2
  %26 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #2
  %27 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gx_forward_fill_trapezoid(%struct.gx_device_s* %dev, %struct.gs_fixed_edge_s* %left, %struct.gs_fixed_edge_s* %right, i32 %ybot, i32 %ytop, i32 %swap_axes, %struct.gx_device_color_s* %pdcolor, i32 %lop) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %left.addr = alloca %struct.gs_fixed_edge_s*, align 8
  %right.addr = alloca %struct.gs_fixed_edge_s*, align 8
  %ybot.addr = alloca i32, align 4
  %ytop.addr = alloca i32, align 4
  %swap_axes.addr = alloca i32, align 4
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %lop.addr = alloca i32, align 4
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %proc = alloca i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_fixed_edge_s* %left, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  store %struct.gs_fixed_edge_s* %right, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  store i32 %ybot, i32* %ybot.addr, align 4, !tbaa !76
  store i32 %ytop, i32* %ytop.addr, align 4, !tbaa !76
  store i32 %swap_axes, i32* %swap_axes.addr, align 4, !tbaa !76
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !76
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = bitcast i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)** %proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %7, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %8, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 42
  %fill_trapezoid = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 27
  %10 = load i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_trapezoid, align 8, !tbaa !97
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* [ @gx_default_fill_trapezoid, %cond.true ], [ %10, %cond.false ]
  store i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* %cond, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)** %proc, align 8, !tbaa !1
  %11 = load i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)** %proc, align 8, !tbaa !1
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %13 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %14 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %15 = load i32, i32* %ybot.addr, align 4, !tbaa !76
  %16 = load i32, i32* %ytop.addr, align 4, !tbaa !76
  %17 = load i32, i32* %swap_axes.addr, align 4, !tbaa !76
  %18 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %19 = load i32, i32* %lop.addr, align 4, !tbaa !76
  %call = call i32 %11(%struct.gx_device_s* %12, %struct.gs_fixed_edge_s* %13, %struct.gs_fixed_edge_s* %14, i32 %15, i32 %16, i32 %17, %struct.gx_device_color_s* %18, i32 %19) #4
  %20 = bitcast i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)** %proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #2
  %21 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #2
  %22 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gx_forward_fill_parallelogram(%struct.gx_device_s* %dev, i32 %px, i32 %py, i32 %ax, i32 %ay, i32 %bx, i32 %by, %struct.gx_device_color_s* %pdcolor, i32 %lop) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %px.addr = alloca i32, align 4
  %py.addr = alloca i32, align 4
  %ax.addr = alloca i32, align 4
  %ay.addr = alloca i32, align 4
  %bx.addr = alloca i32, align 4
  %by.addr = alloca i32, align 4
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %lop.addr = alloca i32, align 4
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %proc = alloca i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %px, i32* %px.addr, align 4, !tbaa !76
  store i32 %py, i32* %py.addr, align 4, !tbaa !76
  store i32 %ax, i32* %ax.addr, align 4, !tbaa !76
  store i32 %ay, i32* %ay.addr, align 4, !tbaa !76
  store i32 %bx, i32* %bx.addr, align 4, !tbaa !76
  store i32 %by, i32* %by.addr, align 4, !tbaa !76
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !76
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = bitcast i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %7, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %8, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 42
  %fill_parallelogram = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 28
  %10 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_parallelogram, align 8, !tbaa !98
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* [ @gx_default_fill_parallelogram, %cond.true ], [ %10, %cond.false ]
  store i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* %cond, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %proc, align 8, !tbaa !1
  %11 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %proc, align 8, !tbaa !1
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %13 = load i32, i32* %px.addr, align 4, !tbaa !76
  %14 = load i32, i32* %py.addr, align 4, !tbaa !76
  %15 = load i32, i32* %ax.addr, align 4, !tbaa !76
  %16 = load i32, i32* %ay.addr, align 4, !tbaa !76
  %17 = load i32, i32* %bx.addr, align 4, !tbaa !76
  %18 = load i32, i32* %by.addr, align 4, !tbaa !76
  %19 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %20 = load i32, i32* %lop.addr, align 4, !tbaa !76
  %call = call i32 %11(%struct.gx_device_s* %12, i32 %13, i32 %14, i32 %15, i32 %16, i32 %17, i32 %18, %struct.gx_device_color_s* %19, i32 %20) #4
  %21 = bitcast i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #2
  %22 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #2
  %23 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gx_forward_fill_triangle(%struct.gx_device_s* %dev, i32 %px, i32 %py, i32 %ax, i32 %ay, i32 %bx, i32 %by, %struct.gx_device_color_s* %pdcolor, i32 %lop) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %px.addr = alloca i32, align 4
  %py.addr = alloca i32, align 4
  %ax.addr = alloca i32, align 4
  %ay.addr = alloca i32, align 4
  %bx.addr = alloca i32, align 4
  %by.addr = alloca i32, align 4
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %lop.addr = alloca i32, align 4
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %proc = alloca i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %px, i32* %px.addr, align 4, !tbaa !76
  store i32 %py, i32* %py.addr, align 4, !tbaa !76
  store i32 %ax, i32* %ax.addr, align 4, !tbaa !76
  store i32 %ay, i32* %ay.addr, align 4, !tbaa !76
  store i32 %bx, i32* %bx.addr, align 4, !tbaa !76
  store i32 %by, i32* %by.addr, align 4, !tbaa !76
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !76
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = bitcast i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %7, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %8, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 42
  %fill_triangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 29
  %10 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_triangle, align 8, !tbaa !99
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* [ @gx_default_fill_triangle, %cond.true ], [ %10, %cond.false ]
  store i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* %cond, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %proc, align 8, !tbaa !1
  %11 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %proc, align 8, !tbaa !1
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %13 = load i32, i32* %px.addr, align 4, !tbaa !76
  %14 = load i32, i32* %py.addr, align 4, !tbaa !76
  %15 = load i32, i32* %ax.addr, align 4, !tbaa !76
  %16 = load i32, i32* %ay.addr, align 4, !tbaa !76
  %17 = load i32, i32* %bx.addr, align 4, !tbaa !76
  %18 = load i32, i32* %by.addr, align 4, !tbaa !76
  %19 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %20 = load i32, i32* %lop.addr, align 4, !tbaa !76
  %call = call i32 %11(%struct.gx_device_s* %12, i32 %13, i32 %14, i32 %15, i32 %16, i32 %17, i32 %18, %struct.gx_device_color_s* %19, i32 %20) #4
  %21 = bitcast i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #2
  %22 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #2
  %23 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gx_forward_draw_thin_line(%struct.gx_device_s* %dev, i32 %fx0, i32 %fy0, i32 %fx1, i32 %fy1, %struct.gx_device_color_s* %pdcolor, i32 %lop, i32 %adjustx, i32 %adjusty) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %fx0.addr = alloca i32, align 4
  %fy0.addr = alloca i32, align 4
  %fx1.addr = alloca i32, align 4
  %fy1.addr = alloca i32, align 4
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %lop.addr = alloca i32, align 4
  %adjustx.addr = alloca i32, align 4
  %adjusty.addr = alloca i32, align 4
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %proc = alloca i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %fx0, i32* %fx0.addr, align 4, !tbaa !76
  store i32 %fy0, i32* %fy0.addr, align 4, !tbaa !76
  store i32 %fx1, i32* %fx1.addr, align 4, !tbaa !76
  store i32 %fy1, i32* %fy1.addr, align 4, !tbaa !76
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !76
  store i32 %adjustx, i32* %adjustx.addr, align 4, !tbaa !76
  store i32 %adjusty, i32* %adjusty.addr, align 4, !tbaa !76
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = bitcast i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)** %proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %7, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %8, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 42
  %draw_thin_line = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 30
  %10 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)** %draw_thin_line, align 8, !tbaa !100
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* [ @gx_default_draw_thin_line, %cond.true ], [ %10, %cond.false ]
  store i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* %cond, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)** %proc, align 8, !tbaa !1
  %11 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)** %proc, align 8, !tbaa !1
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %13 = load i32, i32* %fx0.addr, align 4, !tbaa !76
  %14 = load i32, i32* %fy0.addr, align 4, !tbaa !76
  %15 = load i32, i32* %fx1.addr, align 4, !tbaa !76
  %16 = load i32, i32* %fy1.addr, align 4, !tbaa !76
  %17 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %18 = load i32, i32* %lop.addr, align 4, !tbaa !76
  %19 = load i32, i32* %adjustx.addr, align 4, !tbaa !76
  %20 = load i32, i32* %adjusty.addr, align 4, !tbaa !76
  %call = call i32 %11(%struct.gx_device_s* %12, i32 %13, i32 %14, i32 %15, i32 %16, %struct.gx_device_color_s* %17, i32 %18, i32 %19, i32 %20) #4
  %21 = bitcast i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)** %proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #2
  %22 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #2
  %23 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gx_forward_begin_image(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gs_image1_s* %pim, i32 %format, %struct.gs_int_rect_s* %prect, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath, %struct.gs_memory_s* %memory, %struct.gx_image_enum_common_s** %pinfo) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pim.addr = alloca %struct.gs_image1_s*, align 8
  %format.addr = alloca i32, align 4
  %prect.addr = alloca %struct.gs_int_rect_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %pinfo.addr = alloca %struct.gx_image_enum_common_s**, align 8
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %proc = alloca i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_image1_s* %pim, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  store i32 %format, i32* %format.addr, align 4, !tbaa !101
  store %struct.gs_int_rect_s* %prect, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_common_s** %pinfo, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = bitcast i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)** %proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %7, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %8, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 42
  %begin_image = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 31
  %10 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)** %begin_image, align 8, !tbaa !102
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* [ @gx_default_begin_image, %cond.true ], [ %10, %cond.false ]
  store i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* %cond, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)** %proc, align 8, !tbaa !1
  %11 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)** %proc, align 8, !tbaa !1
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %13 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %14 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %15 = load i32, i32* %format.addr, align 4, !tbaa !101
  %16 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %17 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %18 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %20 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %call = call i32 %11(%struct.gx_device_s* %12, %struct.gs_imager_state_s* %13, %struct.gs_image1_s* %14, i32 %15, %struct.gs_int_rect_s* %16, %struct.gx_device_color_s* %17, %struct.gx_clip_path_s* %18, %struct.gs_memory_s* %19, %struct.gx_image_enum_common_s** %20) #4
  %21 = bitcast i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)** %proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #2
  %22 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #2
  %23 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gx_forward_strip_copy_rop(%struct.gx_device_s* %dev, i8* %sdata, i32 %sourcex, i32 %sraster, i64 %id, i64* %scolors, %struct.gx_strip_bitmap_s* %textures, i64* %tcolors, i32 %x, i32 %y, i32 %width, i32 %height, i32 %phase_x, i32 %phase_y, i32 %lop) #0 {
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
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %proc = alloca i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %sdata, i8** %sdata.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !76
  store i32 %sraster, i32* %sraster.addr, align 4, !tbaa !76
  store i64 %id, i64* %id.addr, align 8, !tbaa !80
  store i64* %scolors, i64** %scolors.addr, align 8, !tbaa !1
  store %struct.gx_strip_bitmap_s* %textures, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  store i64* %tcolors, i64** %tcolors.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !76
  store i32 %y, i32* %y.addr, align 4, !tbaa !76
  store i32 %width, i32* %width.addr, align 4, !tbaa !76
  store i32 %height, i32* %height.addr, align 4, !tbaa !76
  store i32 %phase_x, i32* %phase_x.addr, align 4, !tbaa !76
  store i32 %phase_y, i32* %phase_y.addr, align 4, !tbaa !76
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !76
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = bitcast i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)** %proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %7, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %8, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 42
  %strip_copy_rop = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 35
  %10 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)** %strip_copy_rop, align 8, !tbaa !103
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* [ @gx_default_strip_copy_rop, %cond.true ], [ %10, %cond.false ]
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* %cond, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)** %proc, align 8, !tbaa !1
  %11 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)** %proc, align 8, !tbaa !1
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %13 = load i8*, i8** %sdata.addr, align 8, !tbaa !1
  %14 = load i32, i32* %sourcex.addr, align 4, !tbaa !76
  %15 = load i32, i32* %sraster.addr, align 4, !tbaa !76
  %16 = load i64, i64* %id.addr, align 8, !tbaa !80
  %17 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %18 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %19 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %20 = load i32, i32* %x.addr, align 4, !tbaa !76
  %21 = load i32, i32* %y.addr, align 4, !tbaa !76
  %22 = load i32, i32* %width.addr, align 4, !tbaa !76
  %23 = load i32, i32* %height.addr, align 4, !tbaa !76
  %24 = load i32, i32* %phase_x.addr, align 4, !tbaa !76
  %25 = load i32, i32* %phase_y.addr, align 4, !tbaa !76
  %26 = load i32, i32* %lop.addr, align 4, !tbaa !76
  %call = call i32 %11(%struct.gx_device_s* %12, i8* %13, i32 %14, i32 %15, i64 %16, i64* %17, %struct.gx_strip_bitmap_s* %18, i64* %19, i32 %20, i32 %21, i32 %22, i32 %23, i32 %24, i32 %25, i32 %26) #4
  %27 = bitcast i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)** %proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  %28 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #2
  %29 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @gx_forward_get_clipping_box(%struct.gx_device_s* %dev, %struct.gs_fixed_rect_s* %pbox) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pbox.addr = alloca %struct.gs_fixed_rect_s*, align 8
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_fixed_rect_s* %pbox, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %6, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %8 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  call void @gx_default_get_clipping_box(%struct.gx_device_s* %7, %struct.gs_fixed_rect_s* %8) #4
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 42
  %get_clipping_box = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 36
  %10 = load void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)** %get_clipping_box, align 8, !tbaa !104
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %12 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %pbox.addr, align 8, !tbaa !1
  call void %10(%struct.gx_device_s* %11, %struct.gs_fixed_rect_s* %12) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  %14 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #2
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gx_forward_begin_typed_image(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gs_matrix_s* %pmat, %struct.gs_image_common_s* %pim, %struct.gs_int_rect_s* %prect, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath, %struct.gs_memory_s* %memory, %struct.gx_image_enum_common_s** %pinfo) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %pim.addr = alloca %struct.gs_image_common_s*, align 8
  %prect.addr = alloca %struct.gs_int_rect_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %pinfo.addr = alloca %struct.gx_image_enum_common_s**, align 8
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %proc = alloca i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gs_image_common_s* %pim, %struct.gs_image_common_s** %pim.addr, align 8, !tbaa !1
  store %struct.gs_int_rect_s* %prect, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_common_s** %pinfo, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = bitcast i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)** %proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %7, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %8, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 42
  %begin_typed_image = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 37
  %10 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)** %begin_typed_image, align 8, !tbaa !105
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* [ @gx_default_begin_typed_image, %cond.true ], [ %10, %cond.false ]
  store i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* %cond, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)** %proc, align 8, !tbaa !1
  %11 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)** %proc, align 8, !tbaa !1
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %13 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %14 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %15 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pim.addr, align 8, !tbaa !1
  %16 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %17 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %18 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %20 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %call = call i32 %11(%struct.gx_device_s* %12, %struct.gs_imager_state_s* %13, %struct.gs_matrix_s* %14, %struct.gs_image_common_s* %15, %struct.gs_int_rect_s* %16, %struct.gx_device_color_s* %17, %struct.gx_clip_path_s* %18, %struct.gs_memory_s* %19, %struct.gx_image_enum_common_s** %20) #4
  %21 = bitcast i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)** %proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #2
  %22 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #2
  %23 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gx_forward_get_bits_rectangle(%struct.gx_device_s* %dev, %struct.gs_int_rect_s* %prect, %struct.gs_get_bits_params_s* %params, %struct.gs_int_rect_s** %unread) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %prect.addr = alloca %struct.gs_int_rect_s*, align 8
  %params.addr = alloca %struct.gs_get_bits_params_s*, align 8
  %unread.addr = alloca %struct.gs_int_rect_s**, align 8
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %proc = alloca i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_int_rect_s* %prect, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  store %struct.gs_get_bits_params_s* %params, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gs_int_rect_s** %unread, %struct.gs_int_rect_s*** %unread.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = bitcast i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %7, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %8, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 42
  %get_bits_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 38
  %10 = load i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %get_bits_rectangle, align 8, !tbaa !106
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* [ @gx_default_get_bits_rectangle, %cond.true ], [ %10, %cond.false ]
  store i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* %cond, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %proc, align 8, !tbaa !1
  %11 = load i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %proc, align 8, !tbaa !1
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %13 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %14 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %15 = load %struct.gs_int_rect_s**, %struct.gs_int_rect_s*** %unread.addr, align 8, !tbaa !1
  %call = call i32 %11(%struct.gx_device_s* %12, %struct.gs_int_rect_s* %13, %struct.gs_get_bits_params_s* %14, %struct.gs_int_rect_s** %15) #4
  %16 = bitcast i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #2
  %17 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #2
  %18 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gx_forward_map_color_rgb_alpha(%struct.gx_device_s* %dev, i64 %color, i16* %prgba) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %prgba.addr = alloca i16*, align 8
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !80
  store i16* %prgba, i16** %prgba.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %6, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %8 = load i64, i64* %color.addr, align 8, !tbaa !80
  %9 = load i16*, i16** %prgba.addr, align 8, !tbaa !1
  %call = call i32 @gx_default_map_color_rgb_alpha(%struct.gx_device_s* %7, i64 %8, i16* %9) #4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %10, i32 0, i32 42
  %map_color_rgb_alpha = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 39
  %11 = load i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)** %map_color_rgb_alpha, align 8, !tbaa !107
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %13 = load i64, i64* %color.addr, align 8, !tbaa !80
  %14 = load i16*, i16** %prgba.addr, align 8, !tbaa !1
  %call1 = call i32 %11(%struct.gx_device_s* %12, i64 %13, i16* %14) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call1, %cond.false ]
  %15 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #2
  %16 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #2
  ret i32 %cond
}

declare i32 @gx_no_create_compositor(%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*) #1

; Function Attrs: nounwind uwtable
define i32 @gx_forward_get_hardware_params(%struct.gx_device_s* %dev, %struct.gs_param_list_s* %plist) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %6, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %8 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @gx_default_get_hardware_params(%struct.gx_device_s* %7, %struct.gs_param_list_s* %8) #4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 42
  %get_hardware_params = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 41
  %10 = load i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)** %get_hardware_params, align 8, !tbaa !108
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %12 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call1 = call i32 %10(%struct.gx_device_s* %11, %struct.gs_param_list_s* %12) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call1, %cond.false ]
  %13 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  %14 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #2
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define i32 @gx_forward_text_begin(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gs_text_params_s* %text, %struct.gs_font_s* %font, %struct.gx_path_s* %path, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath, %struct.gs_memory_s* %memory, %struct.gs_text_enum_s** %ppenum) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %text.addr = alloca %struct.gs_text_params_s*, align 8
  %font.addr = alloca %struct.gs_font_s*, align 8
  %path.addr = alloca %struct.gx_path_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %ppenum.addr = alloca %struct.gs_text_enum_s**, align 8
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %proc = alloca i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_text_params_s* %text, %struct.gs_text_params_s** %text.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %font, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %path, %struct.gx_path_s** %path.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  store %struct.gs_text_enum_s** %ppenum, %struct.gs_text_enum_s*** %ppenum.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = bitcast i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)** %proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %7, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %8, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 42
  %text_begin = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 42
  %10 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)** %text_begin, align 8, !tbaa !109
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* [ @gx_default_text_begin, %cond.true ], [ %10, %cond.false ]
  store i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* %cond, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)** %proc, align 8, !tbaa !1
  %11 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)** %proc, align 8, !tbaa !1
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %13 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %14 = load %struct.gs_text_params_s*, %struct.gs_text_params_s** %text.addr, align 8, !tbaa !1
  %15 = load %struct.gs_font_s*, %struct.gs_font_s** %font.addr, align 8, !tbaa !1
  %16 = load %struct.gx_path_s*, %struct.gx_path_s** %path.addr, align 8, !tbaa !1
  %17 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %18 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %20 = load %struct.gs_text_enum_s**, %struct.gs_text_enum_s*** %ppenum.addr, align 8, !tbaa !1
  %call = call i32 %11(%struct.gx_device_s* %12, %struct.gs_imager_state_s* %13, %struct.gs_text_params_s* %14, %struct.gs_font_s* %15, %struct.gx_path_s* %16, %struct.gx_device_color_s* %17, %struct.gx_clip_path_s* %18, %struct.gs_memory_s* %19, %struct.gs_text_enum_s** %20) #4
  %21 = bitcast i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)** %proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #2
  %22 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #2
  %23 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define %struct.gx_cm_color_map_procs_s* @gx_forward_get_color_mapping_procs(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %6, null
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 42
  %get_color_mapping_procs = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 49
  %8 = load %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)** %get_color_mapping_procs, align 8, !tbaa !110
  %cmp1 = icmp eq %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* %8, null
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call %struct.gx_cm_color_map_procs_s* @gx_default_DevGray_get_color_mapping_procs(%struct.gx_device_s* %9) #4
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gx_cm_color_map_procs_s* [ %call, %cond.true ], [ @FwdDevice_cm_map_procs, %cond.false ]
  %10 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #2
  %11 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #2
  ret %struct.gx_cm_color_map_procs_s* %cond
}

; Function Attrs: nounwind uwtable
define i32 @gx_forward_get_color_comp_index(%struct.gx_device_s* %dev, i8* %pname, i32 %name_size, i32 %component_type) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pname.addr = alloca i8*, align 8
  %name_size.addr = alloca i32, align 4
  %component_type.addr = alloca i32, align 4
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %pname, i8** %pname.addr, align 8, !tbaa !1
  store i32 %name_size, i32* %name_size.addr, align 4, !tbaa !76
  store i32 %component_type, i32* %component_type.addr, align 4, !tbaa !76
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %6, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %8 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %9 = load i32, i32* %name_size.addr, align 4, !tbaa !76
  %10 = load i32, i32* %component_type.addr, align 4, !tbaa !76
  %call = call i32 @gx_error_get_color_comp_index(%struct.gx_device_s* %7, i8* %8, i32 %9, i32 %10) #4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 42
  %get_color_comp_index = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 50
  %12 = load i32 (%struct.gx_device_s*, i8*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32)** %get_color_comp_index, align 8, !tbaa !111
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %14 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %15 = load i32, i32* %name_size.addr, align 4, !tbaa !76
  %16 = load i32, i32* %component_type.addr, align 4, !tbaa !76
  %call1 = call i32 %12(%struct.gx_device_s* %13, i8* %14, i32 %15, i32 %16) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call1, %cond.false ]
  %17 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #2
  %18 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #2
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define i64 @gx_forward_encode_color(%struct.gx_device_s* %dev, i16* %colors) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %colors.addr = alloca i16*, align 8
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16* %colors, i16** %colors.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %6, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %8 = load i16*, i16** %colors.addr, align 8, !tbaa !1
  %call = call i64 @gx_error_encode_color(%struct.gx_device_s* %7, i16* %8) #4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 42
  %encode_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 51
  %10 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color, align 8, !tbaa !112
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %12 = load i16*, i16** %colors.addr, align 8, !tbaa !1
  %call1 = call i64 %10(%struct.gx_device_s* %11, i16* %12) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call, %cond.true ], [ %call1, %cond.false ]
  %13 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  %14 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #2
  ret i64 %cond
}

; Function Attrs: nounwind uwtable
define i32 @gx_forward_decode_color(%struct.gx_device_s* %dev, i64 %cindex, i16* %colors) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cindex.addr = alloca i64, align 8
  %colors.addr = alloca i16*, align 8
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %cindex, i64* %cindex.addr, align 8, !tbaa !80
  store i16* %colors, i16** %colors.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %6, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load i16*, i16** %colors.addr, align 8, !tbaa !1
  %8 = bitcast i16* %7 to i8*
  %call = call i8* @memset(i8* %8, i32 0, i64 128) #5
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 42
  %decode_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 52
  %10 = load i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)** %decode_color, align 8, !tbaa !113
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %12 = load i64, i64* %cindex.addr, align 8, !tbaa !80
  %13 = load i16*, i16** %colors.addr, align 8, !tbaa !1
  %call1 = call i32 %10(%struct.gx_device_s* %11, i64 %12, i16* %13) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #2
  %15 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gx_forward_dev_spec_op(%struct.gx_device_s* %dev, i32 %dev_spec_op, i8* %data, i32 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %dev_spec_op.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %cleanup.dest.slot = alloca i32
  %d = alloca %struct.gxdso_device_child_request_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %dev_spec_op, i32* %dev_spec_op.addr, align 4, !tbaa !76
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !76
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %6, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %dev_spec_op.addr, align 4, !tbaa !76
  %cmp1 = icmp eq i32 %7, 6
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 42
  %fill_path = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 24
  %9 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %fill_path, align 8, !tbaa !94
  %cmp3 = icmp eq i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* %9, @gx_default_fill_path
  %conv = zext i1 %cmp3 to i32
  store i32 %conv, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.29

if.end:                                           ; preds = %if.then
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.29

if.else:                                          ; preds = %entry
  %10 = load i32, i32* %dev_spec_op.addr, align 4, !tbaa !76
  %cmp4 = icmp eq i32 %10, 7
  br i1 %cmp4, label %if.then.6, label %if.else.13

if.then.6:                                        ; preds = %if.else
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs7 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 42
  %fill_path8 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs7, i32 0, i32 24
  %12 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %fill_path8, align 8, !tbaa !94
  %cmp9 = icmp eq i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* %12, @gx_default_fill_path
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.6
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.29

if.end.12:                                        ; preds = %if.then.6
  br label %if.end.25

if.else.13:                                       ; preds = %if.else
  %13 = load i32, i32* %dev_spec_op.addr, align 4, !tbaa !76
  %cmp14 = icmp eq i32 %13, 10
  br i1 %cmp14, label %if.then.16, label %if.end.24

if.then.16:                                       ; preds = %if.else.13
  %14 = bitcast %struct.gxdso_device_child_request_s** %d to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #2
  %15 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %16 = bitcast i8* %15 to %struct.gxdso_device_child_request_s*
  store %struct.gxdso_device_child_request_s* %16, %struct.gxdso_device_child_request_s** %d, align 8, !tbaa !1
  %17 = load %struct.gxdso_device_child_request_s*, %struct.gxdso_device_child_request_s** %d, align 8, !tbaa !1
  %target17 = getelementptr inbounds %struct.gxdso_device_child_request_s, %struct.gxdso_device_child_request_s* %17, i32 0, i32 0
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %target17, align 8, !tbaa !114
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %cmp18 = icmp eq %struct.gx_device_s* %18, %19
  br i1 %cmp18, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %if.then.16
  %20 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target21 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %20, i32 0, i32 43
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %target21, align 8, !tbaa !19
  %22 = load %struct.gxdso_device_child_request_s*, %struct.gxdso_device_child_request_s** %d, align 8, !tbaa !1
  %target22 = getelementptr inbounds %struct.gxdso_device_child_request_s, %struct.gxdso_device_child_request_s* %22, i32 0, i32 0
  store %struct.gx_device_s* %21, %struct.gx_device_s** %target22, align 8, !tbaa !114
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %if.then.16
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.23, %if.then.20
  %23 = bitcast %struct.gxdso_device_child_request_s** %d to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.29 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.24

if.end.24:                                        ; preds = %cleanup.cont, %if.else.13
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.end.12
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs27 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %24, i32 0, i32 42
  %dev_spec_op28 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs27, i32 0, i32 65
  %25 = load i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)** %dev_spec_op28, align 8, !tbaa !116
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %27 = load i32, i32* %dev_spec_op.addr, align 4, !tbaa !76
  %28 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %29 = load i32, i32* %size.addr, align 4, !tbaa !76
  %call = call i32 %25(%struct.gx_device_s* %26, i32 %27, i8* %28, i32 %29) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.29

cleanup.29:                                       ; preds = %if.end.26, %cleanup, %if.then.11, %if.end, %if.then.2
  %30 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #2
  %31 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #2
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define i32 @gx_forward_fill_rectangle_hl_color(%struct.gx_device_s* %dev, %struct.gs_fixed_rect_s* %rect, %struct.gs_imager_state_s* %pis, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %rect.addr = alloca %struct.gs_fixed_rect_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_fixed_rect_s* %rect, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %6, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %entry
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 42
  %fill_rectangle_hl_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 54
  %8 = load i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %fill_rectangle_hl_color, align 8, !tbaa !117
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %10 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %11 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %12 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %13 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %call = call i32 %8(%struct.gx_device_s* %9, %struct.gs_fixed_rect_s* %10, %struct.gs_imager_state_s* %11, %struct.gx_device_color_s* %12, %struct.gx_clip_path_s* %13) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %14 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #2
  %15 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #2
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define i32 @gx_forward_include_color_space(%struct.gx_device_s* %dev, %struct.gs_color_space_s* %cspace, i8* %res_name, i32 %name_length) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cspace.addr = alloca %struct.gs_color_space_s*, align 8
  %res_name.addr = alloca i8*, align 8
  %name_length.addr = alloca i32, align 4
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %cspace, %struct.gs_color_space_s** %cspace.addr, align 8, !tbaa !1
  store i8* %res_name, i8** %res_name.addr, align 8, !tbaa !1
  store i32 %name_length, i32* %name_length.addr, align 4, !tbaa !76
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %6, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %entry
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 42
  %include_color_space = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 55
  %8 = load i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)** %include_color_space, align 8, !tbaa !118
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %10 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %cspace.addr, align 8, !tbaa !1
  %11 = load i8*, i8** %res_name.addr, align 8, !tbaa !1
  %12 = load i32, i32* %name_length.addr, align 4, !tbaa !76
  %call = call i32 %8(%struct.gx_device_s* %9, %struct.gs_color_space_s* %10, i8* %11, i32 %12) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %13 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  %14 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #2
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i32 @gx_forward_fill_linear_color_scanline(%struct.gx_device_s* %dev, %struct.gs_fill_attributes_s* %fa, i32 %i, i32 %j, i32 %w, i32* %c, i32* %addx, i32* %mulx, i32 %divx) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %fa.addr = alloca %struct.gs_fill_attributes_s*, align 8
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %c.addr = alloca i32*, align 8
  %addx.addr = alloca i32*, align 8
  %mulx.addr = alloca i32*, align 8
  %divx.addr = alloca i32, align 4
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %proc = alloca i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_fill_attributes_s* %fa, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  store i32 %i, i32* %i.addr, align 4, !tbaa !76
  store i32 %j, i32* %j.addr, align 4, !tbaa !76
  store i32 %w, i32* %w.addr, align 4, !tbaa !76
  store i32* %c, i32** %c.addr, align 8, !tbaa !1
  store i32* %addx, i32** %addx.addr, align 8, !tbaa !1
  store i32* %mulx, i32** %mulx.addr, align 8, !tbaa !1
  store i32 %divx, i32* %divx.addr, align 4, !tbaa !76
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = bitcast i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)** %proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %7, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %8, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 42
  %fill_linear_color_scanline = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 56
  %10 = load i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)** %fill_linear_color_scanline, align 8, !tbaa !119
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* [ @gx_default_fill_linear_color_scanline, %cond.true ], [ %10, %cond.false ]
  store i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* %cond, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)** %proc, align 8, !tbaa !1
  %11 = load i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)** %proc, align 8, !tbaa !1
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %13 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %14 = load i32, i32* %i.addr, align 4, !tbaa !76
  %15 = load i32, i32* %j.addr, align 4, !tbaa !76
  %16 = load i32, i32* %w.addr, align 4, !tbaa !76
  %17 = load i32*, i32** %c.addr, align 8, !tbaa !1
  %18 = load i32*, i32** %addx.addr, align 8, !tbaa !1
  %19 = load i32*, i32** %mulx.addr, align 8, !tbaa !1
  %20 = load i32, i32* %divx.addr, align 4, !tbaa !76
  %call = call i32 %11(%struct.gx_device_s* %12, %struct.gs_fill_attributes_s* %13, i32 %14, i32 %15, i32 %16, i32* %17, i32* %18, i32* %19, i32 %20) #4
  %21 = bitcast i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)** %proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #2
  %22 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #2
  %23 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gx_forward_fill_linear_color_trapezoid(%struct.gx_device_s* %dev, %struct.gs_fill_attributes_s* %fa, %struct.gs_fixed_point_s* %p0, %struct.gs_fixed_point_s* %p1, %struct.gs_fixed_point_s* %p2, %struct.gs_fixed_point_s* %p3, i32* %c0, i32* %c1, i32* %c2, i32* %c3) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %fa.addr = alloca %struct.gs_fill_attributes_s*, align 8
  %p0.addr = alloca %struct.gs_fixed_point_s*, align 8
  %p1.addr = alloca %struct.gs_fixed_point_s*, align 8
  %p2.addr = alloca %struct.gs_fixed_point_s*, align 8
  %p3.addr = alloca %struct.gs_fixed_point_s*, align 8
  %c0.addr = alloca i32*, align 8
  %c1.addr = alloca i32*, align 8
  %c2.addr = alloca i32*, align 8
  %c3.addr = alloca i32*, align 8
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %proc = alloca i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_fill_attributes_s* %fa, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  store %struct.gs_fixed_point_s* %p0, %struct.gs_fixed_point_s** %p0.addr, align 8, !tbaa !1
  store %struct.gs_fixed_point_s* %p1, %struct.gs_fixed_point_s** %p1.addr, align 8, !tbaa !1
  store %struct.gs_fixed_point_s* %p2, %struct.gs_fixed_point_s** %p2.addr, align 8, !tbaa !1
  store %struct.gs_fixed_point_s* %p3, %struct.gs_fixed_point_s** %p3.addr, align 8, !tbaa !1
  store i32* %c0, i32** %c0.addr, align 8, !tbaa !1
  store i32* %c1, i32** %c1.addr, align 8, !tbaa !1
  store i32* %c2, i32** %c2.addr, align 8, !tbaa !1
  store i32* %c3, i32** %c3.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = bitcast i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)** %proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %7, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %8, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 42
  %fill_linear_color_trapezoid = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 57
  %10 = load i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)** %fill_linear_color_trapezoid, align 8, !tbaa !120
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* [ @gx_default_fill_linear_color_trapezoid, %cond.true ], [ %10, %cond.false ]
  store i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* %cond, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)** %proc, align 8, !tbaa !1
  %11 = load i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)** %proc, align 8, !tbaa !1
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %13 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %14 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p0.addr, align 8, !tbaa !1
  %15 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p1.addr, align 8, !tbaa !1
  %16 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p2.addr, align 8, !tbaa !1
  %17 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p3.addr, align 8, !tbaa !1
  %18 = load i32*, i32** %c0.addr, align 8, !tbaa !1
  %19 = load i32*, i32** %c1.addr, align 8, !tbaa !1
  %20 = load i32*, i32** %c2.addr, align 8, !tbaa !1
  %21 = load i32*, i32** %c3.addr, align 8, !tbaa !1
  %call = call i32 %11(%struct.gx_device_s* %12, %struct.gs_fill_attributes_s* %13, %struct.gs_fixed_point_s* %14, %struct.gs_fixed_point_s* %15, %struct.gs_fixed_point_s* %16, %struct.gs_fixed_point_s* %17, i32* %18, i32* %19, i32* %20, i32* %21) #4
  %22 = bitcast i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)** %proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #2
  %23 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #2
  %24 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gx_forward_fill_linear_color_triangle(%struct.gx_device_s* %dev, %struct.gs_fill_attributes_s* %fa, %struct.gs_fixed_point_s* %p0, %struct.gs_fixed_point_s* %p1, %struct.gs_fixed_point_s* %p2, i32* %c0, i32* %c1, i32* %c2) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %fa.addr = alloca %struct.gs_fill_attributes_s*, align 8
  %p0.addr = alloca %struct.gs_fixed_point_s*, align 8
  %p1.addr = alloca %struct.gs_fixed_point_s*, align 8
  %p2.addr = alloca %struct.gs_fixed_point_s*, align 8
  %c0.addr = alloca i32*, align 8
  %c1.addr = alloca i32*, align 8
  %c2.addr = alloca i32*, align 8
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %proc = alloca i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_fill_attributes_s* %fa, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  store %struct.gs_fixed_point_s* %p0, %struct.gs_fixed_point_s** %p0.addr, align 8, !tbaa !1
  store %struct.gs_fixed_point_s* %p1, %struct.gs_fixed_point_s** %p1.addr, align 8, !tbaa !1
  store %struct.gs_fixed_point_s* %p2, %struct.gs_fixed_point_s** %p2.addr, align 8, !tbaa !1
  store i32* %c0, i32** %c0.addr, align 8, !tbaa !1
  store i32* %c1, i32** %c1.addr, align 8, !tbaa !1
  store i32* %c2, i32** %c2.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = bitcast i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)** %proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %7, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %8, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 42
  %fill_linear_color_triangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 58
  %10 = load i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)** %fill_linear_color_triangle, align 8, !tbaa !121
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* [ @gx_default_fill_linear_color_triangle, %cond.true ], [ %10, %cond.false ]
  store i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* %cond, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)** %proc, align 8, !tbaa !1
  %11 = load i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)** %proc, align 8, !tbaa !1
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %13 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %14 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p0.addr, align 8, !tbaa !1
  %15 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p1.addr, align 8, !tbaa !1
  %16 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p2.addr, align 8, !tbaa !1
  %17 = load i32*, i32** %c0.addr, align 8, !tbaa !1
  %18 = load i32*, i32** %c1.addr, align 8, !tbaa !1
  %19 = load i32*, i32** %c2.addr, align 8, !tbaa !1
  %call = call i32 %11(%struct.gx_device_s* %12, %struct.gs_fill_attributes_s* %13, %struct.gs_fixed_point_s* %14, %struct.gs_fixed_point_s* %15, %struct.gs_fixed_point_s* %16, i32* %17, i32* %18, i32* %19) #4
  %20 = bitcast i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)** %proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #2
  %21 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #2
  %22 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gx_forward_update_spot_equivalent_colors(%struct.gx_device_s* %dev, %struct.gs_state_s* %pgs) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  store i32 0, i32* %code, align 4, !tbaa !76
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp ne %struct.gx_device_s* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 42
  %update_spot_equivalent_colors = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 59
  %9 = load i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)** %update_spot_equivalent_colors, align 8, !tbaa !122
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 %9(%struct.gx_device_s* %10, %struct.gs_state_s* %11) #4
  store i32 %call, i32* %code, align 4, !tbaa !76
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load i32, i32* %code, align 4, !tbaa !76
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #2
  %14 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #2
  %15 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #2
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define %struct.gs_devn_params_s* @gx_forward_ret_devn_params(%struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca %struct.gs_devn_params_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp ne %struct.gx_device_s* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 42
  %ret_devn_params = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 60
  %8 = load %struct.gs_devn_params_s* (%struct.gx_device_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)** %ret_devn_params, align 8, !tbaa !123
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %call = call %struct.gs_devn_params_s* %8(%struct.gx_device_s* %9) #4
  store %struct.gs_devn_params_s* %call, %struct.gs_devn_params_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store %struct.gs_devn_params_s* null, %struct.gs_devn_params_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %10 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #2
  %11 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #2
  %12 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %retval
  ret %struct.gs_devn_params_s* %12
}

; Function Attrs: nounwind uwtable
define i32 @gx_forward_fillpage(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gx_device_color_s* %pdevc) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %proc = alloca i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = bitcast i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)** %proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %7, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %8, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 42
  %fillpage = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 61
  %10 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)** %fillpage, align 8, !tbaa !124
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* [ @gx_default_fillpage, %cond.true ], [ %10, %cond.false ]
  store i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* %cond, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)** %proc, align 8, !tbaa !1
  %11 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)** %proc, align 8, !tbaa !1
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %13 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %14 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %call = call i32 %11(%struct.gx_device_s* %12, %struct.gs_imager_state_s* %13, %struct.gx_device_color_s* %14) #4
  %15 = bitcast i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)** %proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #2
  %16 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #2
  %17 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gx_forward_get_profile(%struct.gx_device_s* %dev, %struct.cmm_dev_profile_s** %profile) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %profile.addr = alloca %struct.cmm_dev_profile_s**, align 8
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %proc = alloca i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.cmm_dev_profile_s** %profile, %struct.cmm_dev_profile_s*** %profile.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = bitcast i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %7, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %8, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %10 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !125
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* [ @gx_default_get_profile, %cond.true ], [ %10, %cond.false ]
  store i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* %cond, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %proc, align 8, !tbaa !1
  %11 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %proc, align 8, !tbaa !1
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %13 = load %struct.cmm_dev_profile_s**, %struct.cmm_dev_profile_s*** %profile.addr, align 8, !tbaa !1
  %call = call i32 %11(%struct.gx_device_s* %12, %struct.cmm_dev_profile_s** %13) #4
  %14 = bitcast i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #2
  %15 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #2
  %16 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @gx_forward_set_graphics_type_tag(%struct.gx_device_s* %dev, i32 %graphics_type_tag) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %graphics_type_tag.addr = alloca i32, align 4
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %graphics_type_tag, i32* %graphics_type_tag.addr, align 4, !tbaa !101
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp ne %struct.gx_device_s* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 42
  %set_graphics_type_tag = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 68
  %8 = load void (%struct.gx_device_s*, i32)*, void (%struct.gx_device_s*, i32)** %set_graphics_type_tag, align 8, !tbaa !126
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %10 = load i32, i32* %graphics_type_tag.addr, align 4, !tbaa !101
  call void %8(%struct.gx_device_s* %9, i32 %10) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %graphics_type_tag1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 40
  %12 = load i32, i32* %graphics_type_tag1, align 4, !tbaa !24
  %and = and i32 %12, 128
  %13 = load i32, i32* %graphics_type_tag.addr, align 4, !tbaa !101
  %or = or i32 %and, %13
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %graphics_type_tag2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %14, i32 0, i32 40
  store i32 %or, i32* %graphics_type_tag2, align 4, !tbaa !24
  %15 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #2
  %16 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #2
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gx_forward_strip_copy_rop2(%struct.gx_device_s* %dev, i8* %sdata, i32 %sourcex, i32 %sraster, i64 %id, i64* %scolors, %struct.gx_strip_bitmap_s* %textures, i64* %tcolors, i32 %x, i32 %y, i32 %width, i32 %height, i32 %phase_x, i32 %phase_y, i32 %lop, i32 %planar_height) #0 {
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
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %proc2 = alloca i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, align 8
  %cleanup.dest.slot = alloca i32
  %proc = alloca i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %sdata, i8** %sdata.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !76
  store i32 %sraster, i32* %sraster.addr, align 4, !tbaa !76
  store i64 %id, i64* %id.addr, align 8, !tbaa !80
  store i64* %scolors, i64** %scolors.addr, align 8, !tbaa !1
  store %struct.gx_strip_bitmap_s* %textures, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  store i64* %tcolors, i64** %tcolors.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !76
  store i32 %y, i32* %y.addr, align 4, !tbaa !76
  store i32 %width, i32* %width.addr, align 4, !tbaa !76
  store i32 %height, i32* %height.addr, align 4, !tbaa !76
  store i32 %phase_x, i32* %phase_x.addr, align 4, !tbaa !76
  store i32 %phase_y, i32* %phase_y.addr, align 4, !tbaa !76
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !76
  store i32 %planar_height, i32* %planar_height.addr, align 4, !tbaa !76
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = load i32, i32* %planar_height.addr, align 4, !tbaa !76
  %cmp = icmp ne i32 %6, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = bitcast i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)** %proc2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp1 = icmp eq %struct.gx_device_s* %8, null
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %9, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %10, i32 0, i32 42
  %strip_copy_rop2 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 69
  %11 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)** %strip_copy_rop2, align 8, !tbaa !127
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* [ @gx_default_strip_copy_rop2, %cond.true ], [ %11, %cond.false ]
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* %cond, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)** %proc2, align 8, !tbaa !1
  %12 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)** %proc2, align 8, !tbaa !1
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %14 = load i8*, i8** %sdata.addr, align 8, !tbaa !1
  %15 = load i32, i32* %sourcex.addr, align 4, !tbaa !76
  %16 = load i32, i32* %sraster.addr, align 4, !tbaa !76
  %17 = load i64, i64* %id.addr, align 8, !tbaa !80
  %18 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %19 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %20 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %21 = load i32, i32* %x.addr, align 4, !tbaa !76
  %22 = load i32, i32* %y.addr, align 4, !tbaa !76
  %23 = load i32, i32* %width.addr, align 4, !tbaa !76
  %24 = load i32, i32* %height.addr, align 4, !tbaa !76
  %25 = load i32, i32* %phase_x.addr, align 4, !tbaa !76
  %26 = load i32, i32* %phase_y.addr, align 4, !tbaa !76
  %27 = load i32, i32* %lop.addr, align 4, !tbaa !76
  %28 = load i32, i32* %planar_height.addr, align 4, !tbaa !76
  %call = call i32 %12(%struct.gx_device_s* %13, i8* %14, i32 %15, i32 %16, i64 %17, i64* %18, %struct.gx_strip_bitmap_s* %19, i64* %20, i32 %21, i32 %22, i32 %23, i32 %24, i32 %25, i32 %26, i32 %27, i32 %28) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %29 = bitcast i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)** %proc2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #2
  br label %cleanup

if.else:                                          ; preds = %entry
  %30 = bitcast i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)** %proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #2
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp2 = icmp eq %struct.gx_device_s* %31, null
  br i1 %cmp2, label %cond.true.3, label %cond.false.4

cond.true.3:                                      ; preds = %if.else
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %32, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  br label %cond.end.6

cond.false.4:                                     ; preds = %if.else
  %33 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs5 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %33, i32 0, i32 42
  %strip_copy_rop = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs5, i32 0, i32 35
  %34 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)** %strip_copy_rop, align 8, !tbaa !103
  br label %cond.end.6

cond.end.6:                                       ; preds = %cond.false.4, %cond.true.3
  %cond7 = phi i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* [ @gx_default_strip_copy_rop, %cond.true.3 ], [ %34, %cond.false.4 ]
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* %cond7, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)** %proc, align 8, !tbaa !1
  %35 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)** %proc, align 8, !tbaa !1
  %36 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %37 = load i8*, i8** %sdata.addr, align 8, !tbaa !1
  %38 = load i32, i32* %sourcex.addr, align 4, !tbaa !76
  %39 = load i32, i32* %sraster.addr, align 4, !tbaa !76
  %40 = load i64, i64* %id.addr, align 8, !tbaa !80
  %41 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %42 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %43 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %44 = load i32, i32* %x.addr, align 4, !tbaa !76
  %45 = load i32, i32* %y.addr, align 4, !tbaa !76
  %46 = load i32, i32* %width.addr, align 4, !tbaa !76
  %47 = load i32, i32* %height.addr, align 4, !tbaa !76
  %48 = load i32, i32* %phase_x.addr, align 4, !tbaa !76
  %49 = load i32, i32* %phase_y.addr, align 4, !tbaa !76
  %50 = load i32, i32* %lop.addr, align 4, !tbaa !76
  %call8 = call i32 %35(%struct.gx_device_s* %36, i8* %37, i32 %38, i32 %39, i64 %40, i64* %41, %struct.gx_strip_bitmap_s* %42, i64* %43, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48, i32 %49, i32 %50) #4
  store i32 %call8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %51 = bitcast i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)** %proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #2
  br label %cleanup

cleanup:                                          ; preds = %cond.end.6, %cond.end
  %52 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #2
  %53 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #2
  %54 = load i32, i32* %retval
  ret i32 %54
}

; Function Attrs: nounwind uwtable
define i32 @gx_forward_strip_tile_rect_devn(%struct.gx_device_s* %dev, %struct.gx_strip_bitmap_s* %tiles, i32 %x, i32 %y, i32 %w, i32 %h, %struct.gx_device_color_s* %pdcolor0, %struct.gx_device_color_s* %pdcolor1, i32 %px, i32 %py) #0 {
entry:
  %retval = alloca i32, align 4
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
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_strip_bitmap_s* %tiles, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !76
  store i32 %y, i32* %y.addr, align 4, !tbaa !76
  store i32 %w, i32* %w.addr, align 4, !tbaa !76
  store i32 %h, i32* %h.addr, align 4, !tbaa !76
  store %struct.gx_device_color_s* %pdcolor0, %struct.gx_device_color_s** %pdcolor0.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor1, %struct.gx_device_color_s** %pdcolor1.addr, align 8, !tbaa !1
  store i32 %px, i32* %px.addr, align 4, !tbaa !76
  store i32 %py, i32* %py.addr, align 4, !tbaa !76
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %6, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %8 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %9 = load i32, i32* %x.addr, align 4, !tbaa !76
  %10 = load i32, i32* %y.addr, align 4, !tbaa !76
  %11 = load i32, i32* %w.addr, align 4, !tbaa !76
  %12 = load i32, i32* %h.addr, align 4, !tbaa !76
  %13 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor0.addr, align 8, !tbaa !1
  %14 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor1.addr, align 8, !tbaa !1
  %15 = load i32, i32* %px.addr, align 4, !tbaa !76
  %16 = load i32, i32* %py.addr, align 4, !tbaa !76
  %call = call i32 @gx_default_strip_tile_rect_devn(%struct.gx_device_s* %7, %struct.gx_strip_bitmap_s* %8, i32 %9, i32 %10, i32 %11, i32 %12, %struct.gx_device_color_s* %13, %struct.gx_device_color_s* %14, i32 %15, i32 %16) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %entry
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 42
  %strip_tile_rect_devn = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 70
  %18 = load i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)** %strip_tile_rect_devn, align 8, !tbaa !128
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %20 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %21 = load i32, i32* %x.addr, align 4, !tbaa !76
  %22 = load i32, i32* %y.addr, align 4, !tbaa !76
  %23 = load i32, i32* %w.addr, align 4, !tbaa !76
  %24 = load i32, i32* %h.addr, align 4, !tbaa !76
  %25 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor0.addr, align 8, !tbaa !1
  %26 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor1.addr, align 8, !tbaa !1
  %27 = load i32, i32* %px.addr, align 4, !tbaa !76
  %28 = load i32, i32* %py.addr, align 4, !tbaa !76
  %call1 = call i32 %18(%struct.gx_device_s* %19, %struct.gx_strip_bitmap_s* %20, i32 %21, i32 %22, i32 %23, i32 %24, %struct.gx_device_color_s* %25, %struct.gx_device_color_s* %26, i32 %27, i32 %28) #4
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %29 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #2
  %30 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #2
  %31 = load i32, i32* %retval
  ret i32 %31
}

declare void @gx_device_fill_in_procs(%struct.gx_device_s*) #1

; Function Attrs: nounwind uwtable
define void @gx_device_forward_color_procs(%struct.gx_device_forward_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_forward_s*, align 8
  store %struct.gx_device_forward_s* %dev, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %0, i32 0, i32 42
  %map_rgb_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 5
  store i64 (%struct.gx_device_s*, i16*)* @gx_forward_map_rgb_color, i64 (%struct.gx_device_s*, i16*)** %map_rgb_color, align 8, !tbaa !29
  %1 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %1, i32 0, i32 42
  %map_color_rgb = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1, i32 0, i32 6
  store i32 (%struct.gx_device_s*, i64, i16*)* @gx_forward_map_color_rgb, i32 (%struct.gx_device_s*, i64, i16*)** %map_color_rgb, align 8, !tbaa !30
  %2 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs2 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %2, i32 0, i32 42
  %map_cmyk_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs2, i32 0, i32 15
  store i64 (%struct.gx_device_s*, i16*)* @gx_forward_map_cmyk_color, i64 (%struct.gx_device_s*, i16*)** %map_cmyk_color, align 8, !tbaa !34
  %3 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs3 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %3, i32 0, i32 42
  %map_rgb_alpha_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs3, i32 0, i32 18
  store i64 (%struct.gx_device_s*, i16, i16, i16, i16)* @gx_forward_map_rgb_alpha_color, i64 (%struct.gx_device_s*, i16, i16, i16, i16)** %map_rgb_alpha_color, align 8, !tbaa !37
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs4 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 42
  %get_color_mapping_procs = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs4, i32 0, i32 49
  store %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* @gx_forward_get_color_mapping_procs, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)** %get_color_mapping_procs, align 8, !tbaa !57
  %5 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs5 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %5, i32 0, i32 42
  %get_color_comp_index = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs5, i32 0, i32 50
  store i32 (%struct.gx_device_s*, i8*, i32, i32)* @gx_forward_get_color_comp_index, i32 (%struct.gx_device_s*, i8*, i32, i32)** %get_color_comp_index, align 8, !tbaa !58
  %6 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs6 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %6, i32 0, i32 42
  %encode_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs6, i32 0, i32 51
  store i64 (%struct.gx_device_s*, i16*)* @gx_forward_encode_color, i64 (%struct.gx_device_s*, i16*)** %encode_color, align 8, !tbaa !59
  %7 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs7 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %7, i32 0, i32 42
  %decode_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs7, i32 0, i32 52
  store i32 (%struct.gx_device_s*, i64, i16*)* @gx_forward_decode_color, i32 (%struct.gx_device_s*, i64, i16*)** %decode_color, align 8, !tbaa !60
  %8 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs8 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %8, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs8, i32 0, i32 67
  store i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_forward_get_profile, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !70
  %9 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs9 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %9, i32 0, i32 42
  %set_graphics_type_tag = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs9, i32 0, i32 68
  %10 = load void (%struct.gx_device_s*, i32)*, void (%struct.gx_device_s*, i32)** %set_graphics_type_tag, align 8, !tbaa !71
  %cmp = icmp eq void (%struct.gx_device_s*, i32)* %10, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs10 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %11, i32 0, i32 42
  %set_graphics_type_tag11 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs10, i32 0, i32 68
  store void (%struct.gx_device_s*, i32)* @gx_forward_set_graphics_type_tag, void (%struct.gx_device_s*, i32)** %set_graphics_type_tag11, align 8, !tbaa !71
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs12 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %12, i32 0, i32 42
  %dev_spec_op = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs12, i32 0, i32 65
  %13 = load i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)** %dev_spec_op, align 8, !tbaa !61
  %cmp13 = icmp eq i32 (%struct.gx_device_s*, i32, i8*, i32)* %13, null
  br i1 %cmp13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %if.end
  %14 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %dev.addr, align 8, !tbaa !1
  %procs15 = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %14, i32 0, i32 42
  %dev_spec_op16 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs15, i32 0, i32 65
  store i32 (%struct.gx_device_s*, i32, i8*, i32)* @gx_forward_dev_spec_op, i32 (%struct.gx_device_s*, i32, i8*, i32)** %dev_spec_op16, align 8, !tbaa !61
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gx_forward_close_device(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %7, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 @gx_default_close_device(%struct.gx_device_s* %8) #4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 42
  %close_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 4
  %10 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %close_device, align 8, !tbaa !129
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %call1 = call i32 %10(%struct.gx_device_s* %11) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call1, %cond.false ]
  store i32 %cond, i32* %code, align 4, !tbaa !76
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_device_s* %12, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %is_open = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %13, i32 0, i32 9
  store i32 0, i32* %is_open, align 4, !tbaa !84
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %14 = load i32, i32* %code, align 4, !tbaa !76
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #2
  %16 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #2
  %17 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #2
  ret i32 %14
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i32 @gx_default_close_device(%struct.gx_device_s*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare void @gx_default_get_initial_matrix(%struct.gx_device_s*, %struct.gs_matrix_s*) #1

declare i32 @gx_default_sync_output(%struct.gx_device_s*) #1

declare i32 @gx_default_output_page(%struct.gx_device_s*, i32, i32) #1

declare i64 @gx_error_encode_color(%struct.gx_device_s*, i16*) #1

declare i32 @gx_default_w_b_map_color_rgb(%struct.gx_device_s*, i64, i16*) #1

; Function Attrs: nounwind uwtable
define i32 @gx_forward_fill_rectangle(%struct.gx_device_s* %dev, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !76
  store i32 %y, i32* %y.addr, align 4, !tbaa !76
  store i32 %w, i32* %w.addr, align 4, !tbaa !76
  store i32 %h, i32* %h.addr, align 4, !tbaa !76
  store i64 %color, i64* %color.addr, align 8, !tbaa !80
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 42
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 7
  %8 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8, !tbaa !130
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %10 = load i32, i32* %x.addr, align 4, !tbaa !76
  %11 = load i32, i32* %y.addr, align 4, !tbaa !76
  %12 = load i32, i32* %w.addr, align 4, !tbaa !76
  %13 = load i32, i32* %h.addr, align 4, !tbaa !76
  %14 = load i64, i64* %color.addr, align 8, !tbaa !80
  %call = call i32 %8(%struct.gx_device_s* %9, i32 %10, i32 %11, i32 %12, i32 %13, i64 %14) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %15 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #2
  %16 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #2
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define i32 @gx_forward_tile_rectangle(%struct.gx_device_s* %dev, %struct.gx_tile_bitmap_s* %tile, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color0, i64 %color1, i32 %px, i32 %py) #0 {
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
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %proc = alloca i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_tile_bitmap_s* %tile, %struct.gx_tile_bitmap_s** %tile.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !76
  store i32 %y, i32* %y.addr, align 4, !tbaa !76
  store i32 %w, i32* %w.addr, align 4, !tbaa !76
  store i32 %h, i32* %h.addr, align 4, !tbaa !76
  store i64 %color0, i64* %color0.addr, align 8, !tbaa !80
  store i64 %color1, i64* %color1.addr, align 8, !tbaa !80
  store i32 %px, i32* %px.addr, align 4, !tbaa !76
  store i32 %py, i32* %py.addr, align 4, !tbaa !76
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = bitcast i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)** %proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %7, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %8, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 42
  %tile_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 8
  %10 = load i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)** %tile_rectangle, align 8, !tbaa !131
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* [ @gx_default_tile_rectangle, %cond.true ], [ %10, %cond.false ]
  store i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* %cond, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)** %proc, align 8, !tbaa !1
  %11 = load i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)** %proc, align 8, !tbaa !1
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %13 = load %struct.gx_tile_bitmap_s*, %struct.gx_tile_bitmap_s** %tile.addr, align 8, !tbaa !1
  %14 = load i32, i32* %x.addr, align 4, !tbaa !76
  %15 = load i32, i32* %y.addr, align 4, !tbaa !76
  %16 = load i32, i32* %w.addr, align 4, !tbaa !76
  %17 = load i32, i32* %h.addr, align 4, !tbaa !76
  %18 = load i64, i64* %color0.addr, align 8, !tbaa !80
  %19 = load i64, i64* %color1.addr, align 8, !tbaa !80
  %20 = load i32, i32* %px.addr, align 4, !tbaa !76
  %21 = load i32, i32* %py.addr, align 4, !tbaa !76
  %call = call i32 %11(%struct.gx_device_s* %12, %struct.gx_tile_bitmap_s* %13, i32 %14, i32 %15, i32 %16, i32 %17, i64 %18, i64 %19, i32 %20, i32 %21) #4
  %22 = bitcast i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)** %proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #2
  %23 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #2
  %24 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #2
  ret i32 %call
}

declare i32 @gx_default_tile_rectangle(%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gx_forward_copy_mono(%struct.gx_device_s* %dev, i8* %data, i32 %dx, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, i64 %zero, i64 %one) #0 {
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
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %dx, i32* %dx.addr, align 4, !tbaa !76
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !76
  store i64 %id, i64* %id.addr, align 8, !tbaa !80
  store i32 %x, i32* %x.addr, align 4, !tbaa !76
  store i32 %y, i32* %y.addr, align 4, !tbaa !76
  store i32 %w, i32* %w.addr, align 4, !tbaa !76
  store i32 %h, i32* %h.addr, align 4, !tbaa !76
  store i64 %zero, i64* %zero.addr, align 8, !tbaa !80
  store i64 %one, i64* %one.addr, align 8, !tbaa !80
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 42
  %copy_mono = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 9
  %8 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono, align 8, !tbaa !132
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %10 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %11 = load i32, i32* %dx.addr, align 4, !tbaa !76
  %12 = load i32, i32* %raster.addr, align 4, !tbaa !76
  %13 = load i64, i64* %id.addr, align 8, !tbaa !80
  %14 = load i32, i32* %x.addr, align 4, !tbaa !76
  %15 = load i32, i32* %y.addr, align 4, !tbaa !76
  %16 = load i32, i32* %w.addr, align 4, !tbaa !76
  %17 = load i32, i32* %h.addr, align 4, !tbaa !76
  %18 = load i64, i64* %zero.addr, align 8, !tbaa !80
  %19 = load i64, i64* %one.addr, align 8, !tbaa !80
  %call = call i32 %8(%struct.gx_device_s* %9, i8* %10, i32 %11, i32 %12, i64 %13, i32 %14, i32 %15, i32 %16, i32 %17, i64 %18, i64 %19) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %20 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #2
  %21 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #2
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define i32 @gx_forward_copy_alpha(%struct.gx_device_s* %dev, i8* %data, i32 %data_x, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %width, i32 %height, i64 %color, i32 %depth) #0 {
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
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !76
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !76
  store i64 %id, i64* %id.addr, align 8, !tbaa !80
  store i32 %x, i32* %x.addr, align 4, !tbaa !76
  store i32 %y, i32* %y.addr, align 4, !tbaa !76
  store i32 %width, i32* %width.addr, align 4, !tbaa !76
  store i32 %height, i32* %height.addr, align 4, !tbaa !76
  store i64 %color, i64* %color.addr, align 8, !tbaa !80
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !76
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 42
  %copy_alpha = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 21
  %8 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)** %copy_alpha, align 8, !tbaa !133
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %10 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %11 = load i32, i32* %data_x.addr, align 4, !tbaa !76
  %12 = load i32, i32* %raster.addr, align 4, !tbaa !76
  %13 = load i64, i64* %id.addr, align 8, !tbaa !80
  %14 = load i32, i32* %x.addr, align 4, !tbaa !76
  %15 = load i32, i32* %y.addr, align 4, !tbaa !76
  %16 = load i32, i32* %width.addr, align 4, !tbaa !76
  %17 = load i32, i32* %height.addr, align 4, !tbaa !76
  %18 = load i64, i64* %color.addr, align 8, !tbaa !80
  %19 = load i32, i32* %depth.addr, align 4, !tbaa !76
  %call = call i32 %8(%struct.gx_device_s* %9, i8* %10, i32 %11, i32 %12, i64 %13, i32 %14, i32 %15, i32 %16, i32 %17, i64 %18, i32 %19) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %20 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #2
  %21 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #2
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define i32 @gx_forward_copy_color(%struct.gx_device_s* %dev, i8* %data, i32 %dx, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h) #0 {
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
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %dx, i32* %dx.addr, align 4, !tbaa !76
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !76
  store i64 %id, i64* %id.addr, align 8, !tbaa !80
  store i32 %x, i32* %x.addr, align 4, !tbaa !76
  store i32 %y, i32* %y.addr, align 4, !tbaa !76
  store i32 %w, i32* %w.addr, align 4, !tbaa !76
  store i32 %h, i32* %h.addr, align 4, !tbaa !76
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 42
  %copy_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 10
  %8 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %copy_color, align 8, !tbaa !134
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %10 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %11 = load i32, i32* %dx.addr, align 4, !tbaa !76
  %12 = load i32, i32* %raster.addr, align 4, !tbaa !76
  %13 = load i64, i64* %id.addr, align 8, !tbaa !80
  %14 = load i32, i32* %x.addr, align 4, !tbaa !76
  %15 = load i32, i32* %y.addr, align 4, !tbaa !76
  %16 = load i32, i32* %w.addr, align 4, !tbaa !76
  %17 = load i32, i32* %h.addr, align 4, !tbaa !76
  %call = call i32 %8(%struct.gx_device_s* %9, i8* %10, i32 %11, i32 %12, i64 %13, i32 %14, i32 %15, i32 %16, i32 %17) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %18 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #2
  %19 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #2
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define i32 @gx_forward_copy_planes(%struct.gx_device_s* %dev, i8* %data, i32 %dx, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, i32 %plane_height) #0 {
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
  %plane_height.addr = alloca i32, align 4
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %dx, i32* %dx.addr, align 4, !tbaa !76
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !76
  store i64 %id, i64* %id.addr, align 8, !tbaa !80
  store i32 %x, i32* %x.addr, align 4, !tbaa !76
  store i32 %y, i32* %y.addr, align 4, !tbaa !76
  store i32 %w, i32* %w.addr, align 4, !tbaa !76
  store i32 %h, i32* %h.addr, align 4, !tbaa !76
  store i32 %plane_height, i32* %plane_height.addr, align 4, !tbaa !76
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 42
  %copy_planes = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 66
  %8 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)** %copy_planes, align 8, !tbaa !135
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %10 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %11 = load i32, i32* %dx.addr, align 4, !tbaa !76
  %12 = load i32, i32* %raster.addr, align 4, !tbaa !76
  %13 = load i64, i64* %id.addr, align 8, !tbaa !80
  %14 = load i32, i32* %x.addr, align 4, !tbaa !76
  %15 = load i32, i32* %y.addr, align 4, !tbaa !76
  %16 = load i32, i32* %w.addr, align 4, !tbaa !76
  %17 = load i32, i32* %h.addr, align 4, !tbaa !76
  %18 = load i32, i32* %plane_height.addr, align 4, !tbaa !76
  %call = call i32 %8(%struct.gx_device_s* %9, i8* %10, i32 %11, i32 %12, i64 %13, i32 %14, i32 %15, i32 %16, i32 %17, i32 %18) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %19 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #2
  %20 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #2
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare i32 @gx_default_get_bits(%struct.gx_device_s*, i32, i8*, i8**) #1

declare i32 @gx_default_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #1

declare i32 @gx_default_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #1

declare void @gx_device_decache_colors(%struct.gx_device_s*) #1

declare i64 @gx_default_map_cmyk_color(%struct.gx_device_s*, i16*) #1

declare %struct.gx_xfont_procs_s* @gx_default_get_xfont_procs(%struct.gx_device_s*) #1

declare %struct.gx_device_s* @gx_default_get_xfont_device(%struct.gx_device_s*) #1

declare i64 @gx_default_map_rgb_alpha_color(%struct.gx_device_s*, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext) #1

declare %struct.gx_device_s* @gx_default_get_page_device(%struct.gx_device_s*) #1

declare i32 @gx_default_get_band(%struct.gx_device_s*, i32, i32*) #1

declare i32 @gx_default_copy_rop(%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32) #1

declare i32 @gx_default_fill_path(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*) #1

declare i32 @gx_default_stroke_path(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*) #1

declare i32 @gx_default_fill_mask(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*) #1

declare i32 @gx_default_fill_trapezoid(%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32) #1

declare i32 @gx_default_fill_parallelogram(%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32) #1

declare i32 @gx_default_fill_triangle(%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32) #1

declare i32 @gx_default_draw_thin_line(%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32) #1

declare i32 @gx_default_begin_image(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**) #1

; Function Attrs: nounwind uwtable
define i32 @gx_forward_strip_tile_rectangle(%struct.gx_device_s* %dev, %struct.gx_strip_bitmap_s* %tiles, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color0, i64 %color1, i32 %px, i32 %py) #0 {
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
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %proc = alloca i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_strip_bitmap_s* %tiles, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !76
  store i32 %y, i32* %y.addr, align 4, !tbaa !76
  store i32 %w, i32* %w.addr, align 4, !tbaa !76
  store i32 %h, i32* %h.addr, align 4, !tbaa !76
  store i64 %color0, i64* %color0.addr, align 8, !tbaa !80
  store i64 %color1, i64* %color1.addr, align 8, !tbaa !80
  store i32 %px, i32* %px.addr, align 4, !tbaa !76
  store i32 %py, i32* %py.addr, align 4, !tbaa !76
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = bitcast i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)** %proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %7, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %8, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 42
  %strip_tile_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 34
  %10 = load i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)** %strip_tile_rectangle, align 8, !tbaa !136
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* [ @gx_default_strip_tile_rectangle, %cond.true ], [ %10, %cond.false ]
  store i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* %cond, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)** %proc, align 8, !tbaa !1
  %11 = load i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)** %proc, align 8, !tbaa !1
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %13 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %14 = load i32, i32* %x.addr, align 4, !tbaa !76
  %15 = load i32, i32* %y.addr, align 4, !tbaa !76
  %16 = load i32, i32* %w.addr, align 4, !tbaa !76
  %17 = load i32, i32* %h.addr, align 4, !tbaa !76
  %18 = load i64, i64* %color0.addr, align 8, !tbaa !80
  %19 = load i64, i64* %color1.addr, align 8, !tbaa !80
  %20 = load i32, i32* %px.addr, align 4, !tbaa !76
  %21 = load i32, i32* %py.addr, align 4, !tbaa !76
  %call = call i32 %11(%struct.gx_device_s* %12, %struct.gx_strip_bitmap_s* %13, i32 %14, i32 %15, i32 %16, i32 %17, i64 %18, i64 %19, i32 %20, i32 %21) #4
  %22 = bitcast i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)** %proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #2
  %23 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #2
  %24 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #2
  ret i32 %call
}

declare i32 @gx_default_strip_tile_rectangle(%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32) #1

declare i32 @gx_default_strip_copy_rop(%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32) #1

declare i32 @gx_default_strip_copy_rop2(%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare i32 @gx_default_strip_tile_rect_devn(%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32) #1

declare void @gx_default_get_clipping_box(%struct.gx_device_s*, %struct.gs_fixed_rect_s*) #1

declare i32 @gx_default_begin_typed_image(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**) #1

declare i32 @gx_default_get_bits_rectangle(%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**) #1

declare i32 @gx_default_map_color_rgb_alpha(%struct.gx_device_s*, i64, i16*) #1

declare i32 @gx_default_get_hardware_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #1

declare i32 @gx_default_text_begin(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**) #1

declare %struct.gx_cm_color_map_procs_s* @gx_default_DevGray_get_color_mapping_procs(%struct.gx_device_s*) #1

declare i32 @gx_error_get_color_comp_index(%struct.gx_device_s*, i8*, i32, i32) #1

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

; Function Attrs: nounwind uwtable
define i32 @gx_forward_copy_alpha_hl_color(%struct.gx_device_s* %dev, i8* %data, i32 %data_x, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %width, i32 %height, %struct.gx_device_color_s* %pdcolor, i32 %depth) #0 {
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
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !76
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !76
  store i64 %id, i64* %id.addr, align 8, !tbaa !80
  store i32 %x, i32* %x.addr, align 4, !tbaa !76
  store i32 %y, i32* %y.addr, align 4, !tbaa !76
  store i32 %width, i32* %width.addr, align 4, !tbaa !76
  store i32 %height, i32* %height.addr, align 4, !tbaa !76
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !76
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %6, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %entry
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 42
  %copy_alpha_hl_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 71
  %8 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)** %copy_alpha_hl_color, align 8, !tbaa !137
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %10 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %11 = load i32, i32* %data_x.addr, align 4, !tbaa !76
  %12 = load i32, i32* %raster.addr, align 4, !tbaa !76
  %13 = load i64, i64* %id.addr, align 8, !tbaa !80
  %14 = load i32, i32* %x.addr, align 4, !tbaa !76
  %15 = load i32, i32* %y.addr, align 4, !tbaa !76
  %16 = load i32, i32* %width.addr, align 4, !tbaa !76
  %17 = load i32, i32* %height.addr, align 4, !tbaa !76
  %18 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %19 = load i32, i32* %depth.addr, align 4, !tbaa !76
  %call = call i32 %8(%struct.gx_device_s* %9, i8* %10, i32 %11, i32 %12, i64 %13, i32 %14, i32 %15, i32 %16, i32 %17, %struct.gx_device_color_s* %18, i32 %19) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %20 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #2
  %21 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #2
  %22 = load i32, i32* %retval
  ret i32 %22
}

declare i32 @gx_default_fill_linear_color_scanline(%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32) #1

declare i32 @gx_default_fill_linear_color_trapezoid(%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*) #1

declare i32 @gx_default_fill_linear_color_triangle(%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*) #1

declare i32 @gx_default_fillpage(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*) #1

; Function Attrs: nounwind uwtable
define i32 @gx_forward_create_compositor(%struct.gx_device_s* %dev, %struct.gx_device_s** %pcdev, %struct.gs_composite_s* %pcte, %struct.gs_imager_state_s* %pis, %struct.gs_memory_s* %memory, %struct.gx_device_s* %cdev) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pcdev.addr = alloca %struct.gx_device_s**, align 8
  %pcte.addr = alloca %struct.gs_composite_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %cdev.addr = alloca %struct.gx_device_s*, align 8
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_s** %pcdev, %struct.gx_device_s*** %pcdev.addr, align 8, !tbaa !1
  store %struct.gs_composite_s* %pcte, %struct.gs_composite_s** %pcte.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %cdev, %struct.gx_device_s** %cdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %9 = load %struct.gx_device_s**, %struct.gx_device_s*** %pcdev.addr, align 8, !tbaa !1
  %10 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcte.addr, align 8, !tbaa !1
  %11 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %cdev.addr, align 8, !tbaa !1
  %call = call i32 @gx_no_create_compositor(%struct.gx_device_s* %8, %struct.gx_device_s** %9, %struct.gs_composite_s* %10, %struct.gs_imager_state_s* %11, %struct.gs_memory_s* %12, %struct.gx_device_s* %13) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %14, i32 0, i32 42
  %create_compositor = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 40
  %15 = load i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)** %create_compositor, align 8, !tbaa !138
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %17 = load %struct.gx_device_s**, %struct.gx_device_s*** %pcdev.addr, align 8, !tbaa !1
  %18 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcte.addr, align 8, !tbaa !1
  %19 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %cdev.addr, align 8, !tbaa !1
  %call1 = call i32 %15(%struct.gx_device_s* %16, %struct.gx_device_s** %17, %struct.gs_composite_s* %18, %struct.gs_imager_state_s* %19, %struct.gs_memory_s* %20, %struct.gx_device_s* %21) #4
  store i32 %call1, i32* %code, align 4, !tbaa !76
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %22, i32 0, i32 11
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %color_info2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %23, i32 0, i32 11
  %24 = bitcast %struct.gx_device_color_info_s* %color_info to i8*
  %25 = bitcast %struct.gx_device_color_info_s* %color_info2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 720, i32 8, i1 false), !tbaa.struct !139
  %26 = load i32, i32* %code, align 4, !tbaa !76
  store i32 %26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %27 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #2
  %28 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #2
  %29 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #2
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @gx_default_get_profile(%struct.gx_device_s*, %struct.cmm_dev_profile_s**) #1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #1

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #1

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #1

declare i32 @gx_default_open_device(%struct.gx_device_s*) #1

; Function Attrs: nounwind uwtable
define internal void @gx_forward_upright_get_initial_matrix(%struct.gx_device_s* %dev, %struct.gs_matrix_s* %pmat) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %6, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %8 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  call void @gx_upright_get_initial_matrix(%struct.gx_device_s* %7, %struct.gs_matrix_s* %8) #4
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 42
  %get_initial_matrix = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 1
  %10 = load void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)** %get_initial_matrix, align 8, !tbaa !74
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %12 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  call void %10(%struct.gx_device_s* %11, %struct.gs_matrix_s* %12) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  %14 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @null_fill_rectangle(%struct.gx_device_s* %dev, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !76
  store i32 %y, i32* %y.addr, align 4, !tbaa !76
  store i32 %w, i32* %w.addr, align 4, !tbaa !76
  store i32 %h, i32* %h.addr, align 4, !tbaa !76
  store i64 %color, i64* %color.addr, align 8, !tbaa !80
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @null_copy_mono(%struct.gx_device_s* %dev, i8* %data, i32 %dx, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, i64 %zero, i64 %one) #0 {
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
  store i32 %dx, i32* %dx.addr, align 4, !tbaa !76
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !76
  store i64 %id, i64* %id.addr, align 8, !tbaa !80
  store i32 %x, i32* %x.addr, align 4, !tbaa !76
  store i32 %y, i32* %y.addr, align 4, !tbaa !76
  store i32 %w, i32* %w.addr, align 4, !tbaa !76
  store i32 %h, i32* %h.addr, align 4, !tbaa !76
  store i64 %zero, i64* %zero.addr, align 8, !tbaa !80
  store i64 %one, i64* %one.addr, align 8, !tbaa !80
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @null_copy_color(%struct.gx_device_s* %dev, i8* %data, i32 %data_x, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %width, i32 %height) #0 {
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
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !76
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !76
  store i64 %id, i64* %id.addr, align 8, !tbaa !80
  store i32 %x, i32* %x.addr, align 4, !tbaa !76
  store i32 %y, i32* %y.addr, align 4, !tbaa !76
  store i32 %width, i32* %width.addr, align 4, !tbaa !76
  store i32 %height, i32* %height.addr, align 4, !tbaa !76
  ret i32 0
}

declare i32 @gx_default_draw_line(%struct.gx_device_s*, i32, i32, i32, i32, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @null_put_params(%struct.gx_device_s* %dev, %struct.gs_param_list_s* %plist) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @gx_forward_put_params(%struct.gx_device_s* %1, %struct.gs_param_list_s* %2) #4
  store i32 %call, i32* %code, align 4, !tbaa !76
  %3 = load i32, i32* %code, align 4, !tbaa !76
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 42
  %get_page_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 19
  %5 = load %struct.gx_device_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)** %get_page_device, align 8, !tbaa !91
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call1 = call %struct.gx_device_s* %5(%struct.gx_device_s* %6) #4
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %cmp2 = icmp eq %struct.gx_device_s* %call1, %7
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %8 = load i32, i32* %code, align 4, !tbaa !76
  store i32 %8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 14
  store i32 0, i32* %height, align 4, !tbaa !140
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %10, i32 0, i32 13
  store i32 0, i32* %width, align 4, !tbaa !141
  %11 = load i32, i32* %code, align 4, !tbaa !76
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #2
  %13 = load i32, i32* %retval
  ret i32 %13
}

declare i32 @gx_default_get_alpha_bits(%struct.gx_device_s*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @null_copy_alpha(%struct.gx_device_s* %dev, i8* %data, i32 %data_x, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %width, i32 %height, i64 %color, i32 %depth) #0 {
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
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !76
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !76
  store i64 %id, i64* %id.addr, align 8, !tbaa !80
  store i32 %x, i32* %x.addr, align 4, !tbaa !76
  store i32 %y, i32* %y.addr, align 4, !tbaa !76
  store i32 %width, i32* %width.addr, align 4, !tbaa !76
  store i32 %height, i32* %height.addr, align 4, !tbaa !76
  store i64 %color, i64* %color.addr, align 8, !tbaa !80
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !76
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @null_copy_rop(%struct.gx_device_s* %dev, i8* %sdata, i32 %sourcex, i32 %sraster, i64 %id, i64* %scolors, %struct.gx_tile_bitmap_s* %texture, i64* %tcolors, i32 %x, i32 %y, i32 %width, i32 %height, i32 %phase_x, i32 %phase_y, i32 %lop) #0 {
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
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !76
  store i32 %sraster, i32* %sraster.addr, align 4, !tbaa !76
  store i64 %id, i64* %id.addr, align 8, !tbaa !80
  store i64* %scolors, i64** %scolors.addr, align 8, !tbaa !1
  store %struct.gx_tile_bitmap_s* %texture, %struct.gx_tile_bitmap_s** %texture.addr, align 8, !tbaa !1
  store i64* %tcolors, i64** %tcolors.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !76
  store i32 %y, i32* %y.addr, align 4, !tbaa !76
  store i32 %width, i32* %width.addr, align 4, !tbaa !76
  store i32 %height, i32* %height.addr, align 4, !tbaa !76
  store i32 %phase_x, i32* %phase_x.addr, align 4, !tbaa !76
  store i32 %phase_y, i32* %phase_y.addr, align 4, !tbaa !76
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !76
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @null_fill_path(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gx_path_s* %ppath, %struct.gx_fill_params_s* %params, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %params.addr = alloca %struct.gx_fill_params_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.gx_fill_params_s* %params, %struct.gx_fill_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @null_stroke_path(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gx_path_s* %ppath, %struct.gx_stroke_params_s* %params, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %ppath.addr = alloca %struct.gx_path_s*, align 8
  %params.addr = alloca %struct.gx_stroke_params_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_path_s* %ppath, %struct.gx_path_s** %ppath.addr, align 8, !tbaa !1
  store %struct.gx_stroke_params_s* %params, %struct.gx_stroke_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @null_fill_trapezoid(%struct.gx_device_s* %dev, %struct.gs_fixed_edge_s* %left, %struct.gs_fixed_edge_s* %right, i32 %ybot, i32 %ytop, i32 %swap_axes, %struct.gx_device_color_s* %pdcolor, i32 %lop) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %left.addr = alloca %struct.gs_fixed_edge_s*, align 8
  %right.addr = alloca %struct.gs_fixed_edge_s*, align 8
  %ybot.addr = alloca i32, align 4
  %ytop.addr = alloca i32, align 4
  %swap_axes.addr = alloca i32, align 4
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %lop.addr = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_fixed_edge_s* %left, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  store %struct.gs_fixed_edge_s* %right, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  store i32 %ybot, i32* %ybot.addr, align 4, !tbaa !76
  store i32 %ytop, i32* %ytop.addr, align 4, !tbaa !76
  store i32 %swap_axes, i32* %swap_axes.addr, align 4, !tbaa !76
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !76
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @null_fill_parallelogram(%struct.gx_device_s* %dev, i32 %px, i32 %py, i32 %ax, i32 %ay, i32 %bx, i32 %by, %struct.gx_device_color_s* %pdcolor, i32 %lop) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %px.addr = alloca i32, align 4
  %py.addr = alloca i32, align 4
  %ax.addr = alloca i32, align 4
  %ay.addr = alloca i32, align 4
  %bx.addr = alloca i32, align 4
  %by.addr = alloca i32, align 4
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %lop.addr = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %px, i32* %px.addr, align 4, !tbaa !76
  store i32 %py, i32* %py.addr, align 4, !tbaa !76
  store i32 %ax, i32* %ax.addr, align 4, !tbaa !76
  store i32 %ay, i32* %ay.addr, align 4, !tbaa !76
  store i32 %bx, i32* %bx.addr, align 4, !tbaa !76
  store i32 %by, i32* %by.addr, align 4, !tbaa !76
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !76
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @null_fill_triangle(%struct.gx_device_s* %dev, i32 %px, i32 %py, i32 %ax, i32 %ay, i32 %bx, i32 %by, %struct.gx_device_color_s* %pdcolor, i32 %lop) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %px.addr = alloca i32, align 4
  %py.addr = alloca i32, align 4
  %ax.addr = alloca i32, align 4
  %ay.addr = alloca i32, align 4
  %bx.addr = alloca i32, align 4
  %by.addr = alloca i32, align 4
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %lop.addr = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %px, i32* %px.addr, align 4, !tbaa !76
  store i32 %py, i32* %py.addr, align 4, !tbaa !76
  store i32 %ax, i32* %ax.addr, align 4, !tbaa !76
  store i32 %ay, i32* %ay.addr, align 4, !tbaa !76
  store i32 %bx, i32* %bx.addr, align 4, !tbaa !76
  store i32 %by, i32* %by.addr, align 4, !tbaa !76
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !76
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @null_draw_thin_line(%struct.gx_device_s* %dev, i32 %fx0, i32 %fy0, i32 %fx1, i32 %fy1, %struct.gx_device_color_s* %pdcolor, i32 %lop, i32 %adjustx, i32 %adjusty) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %fx0.addr = alloca i32, align 4
  %fy0.addr = alloca i32, align 4
  %fx1.addr = alloca i32, align 4
  %fy1.addr = alloca i32, align 4
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %lop.addr = alloca i32, align 4
  %adjustx.addr = alloca i32, align 4
  %adjusty.addr = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %fx0, i32* %fx0.addr, align 4, !tbaa !76
  store i32 %fy0, i32* %fy0.addr, align 4, !tbaa !76
  store i32 %fx1, i32* %fx1.addr, align 4, !tbaa !76
  store i32 %fy1, i32* %fy1.addr, align 4, !tbaa !76
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !76
  store i32 %adjustx, i32* %adjustx.addr, align 4, !tbaa !76
  store i32 %adjusty, i32* %adjusty.addr, align 4, !tbaa !76
  ret i32 0
}

declare i32 @gx_default_image_data(%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32) #1

declare i32 @gx_default_end_image(%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @null_strip_copy_rop(%struct.gx_device_s* %dev, i8* %sdata, i32 %sourcex, i32 %sraster, i64 %id, i64* %scolors, %struct.gx_strip_bitmap_s* %textures, i64* %tcolors, i32 %x, i32 %y, i32 %width, i32 %height, i32 %phase_x, i32 %phase_y, i32 %lop) #0 {
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
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !76
  store i32 %sraster, i32* %sraster.addr, align 4, !tbaa !76
  store i64 %id, i64* %id.addr, align 8, !tbaa !80
  store i64* %scolors, i64** %scolors.addr, align 8, !tbaa !1
  store %struct.gx_strip_bitmap_s* %textures, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  store i64* %tcolors, i64** %tcolors.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !76
  store i32 %y, i32* %y.addr, align 4, !tbaa !76
  store i32 %width, i32* %width.addr, align 4, !tbaa !76
  store i32 %height, i32* %height.addr, align 4, !tbaa !76
  store i32 %phase_x, i32* %phase_x.addr, align 4, !tbaa !76
  store i32 %phase_y, i32* %phase_y.addr, align 4, !tbaa !76
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !76
  ret i32 0
}

declare i32 @gx_null_create_compositor(%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*) #1

declare i32 @gx_default_finish_copydevice(%struct.gx_device_s*, %struct.gx_device_s*) #1

declare i32 @gx_default_DevGray_get_color_comp_index(%struct.gx_device_s*, i8*, i32, i32) #1

declare i64 @gx_default_gray_fast_encode(%struct.gx_device_s*, i16*) #1

; Function Attrs: nounwind uwtable
define internal i32 @null_decode_color(%struct.gx_device_s* %dev, i64 %cindex, i16* %colors) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cindex.addr = alloca i64, align 8
  %colors.addr = alloca i16*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %cindex, i64* %cindex.addr, align 8, !tbaa !80
  store i16* %colors, i16** %colors.addr, align 8, !tbaa !1
  %0 = load i64, i64* %cindex.addr, align 8, !tbaa !80
  %and = and i64 %0, 1
  %tobool = icmp ne i64 %and, 0
  %cond = select i1 %tobool, i32 65535, i32 0
  %conv = trunc i32 %cond to i16
  %1 = load i16*, i16** %colors.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 0
  store i16 %conv, i16* %arrayidx, align 2, !tbaa !89
  ret i32 0
}

declare i32 @gx_default_fill_rectangle_hl_color(%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*) #1

declare i32 @gx_default_include_color_space(%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32) #1

declare i32 @gx_default_dev_spec_op(%struct.gx_device_s*, i32, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @null_strip_copy_rop2(%struct.gx_device_s* %dev, i8* %sdata, i32 %sourcex, i32 %sraster, i64 %id, i64* %scolors, %struct.gx_strip_bitmap_s* %textures, i64* %tcolors, i32 %x, i32 %y, i32 %width, i32 %height, i32 %phase_x, i32 %phase_y, i32 %lop, i32 %plane_height) #0 {
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
  %plane_height.addr = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %sdata, i8** %sdata.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !76
  store i32 %sraster, i32* %sraster.addr, align 4, !tbaa !76
  store i64 %id, i64* %id.addr, align 8, !tbaa !80
  store i64* %scolors, i64** %scolors.addr, align 8, !tbaa !1
  store %struct.gx_strip_bitmap_s* %textures, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  store i64* %tcolors, i64** %tcolors.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !76
  store i32 %y, i32* %y.addr, align 4, !tbaa !76
  store i32 %width, i32* %width.addr, align 4, !tbaa !76
  store i32 %height, i32* %height.addr, align 4, !tbaa !76
  store i32 %phase_x, i32* %phase_x.addr, align 4, !tbaa !76
  store i32 %phase_y, i32* %phase_y.addr, align 4, !tbaa !76
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !76
  store i32 %plane_height, i32* %plane_height.addr, align 4, !tbaa !76
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @null_strip_tile_rect_devn(%struct.gx_device_s* %dev, %struct.gx_strip_bitmap_s* %tiles, i32 %x, i32 %y, i32 %w, i32 %h, %struct.gx_device_color_s* %pdcolor0, %struct.gx_device_color_s* %pdcolor1, i32 %px, i32 %py) #0 {
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
  store i32 %x, i32* %x.addr, align 4, !tbaa !76
  store i32 %y, i32* %y.addr, align 4, !tbaa !76
  store i32 %w, i32* %w.addr, align 4, !tbaa !76
  store i32 %h, i32* %h.addr, align 4, !tbaa !76
  store %struct.gx_device_color_s* %pdcolor0, %struct.gx_device_color_s** %pdcolor0.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor1, %struct.gx_device_color_s** %pdcolor1.addr, align 8, !tbaa !1
  store i32 %px, i32* %px.addr, align 4, !tbaa !76
  store i32 %py, i32* %py.addr, align 4, !tbaa !76
  ret i32 0
}

declare %struct.gx_device_s* @gx_page_device_get_page_device(%struct.gx_device_s*) #1

; Function Attrs: nounwind uwtable
define i32 @fwd_uses_fwd_cmap_procs(%struct.gx_device_s* %dev) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pprocs = alloca %struct.gx_cm_color_map_procs_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_cm_color_map_procs_s** %pprocs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 42
  %get_color_mapping_procs = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 49
  %2 = load %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)** %get_color_mapping_procs, align 8, !tbaa !110
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call %struct.gx_cm_color_map_procs_s* %2(%struct.gx_device_s* %3) #4
  store %struct.gx_cm_color_map_procs_s* %call, %struct.gx_cm_color_map_procs_s** %pprocs, align 8, !tbaa !1
  %4 = load %struct.gx_cm_color_map_procs_s*, %struct.gx_cm_color_map_procs_s** %pprocs, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_cm_color_map_procs_s* %4, @FwdDevice_cm_map_procs
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %5 = bitcast %struct.gx_cm_color_map_procs_s** %pprocs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #2
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define %struct.gx_cm_color_map_procs_s* @fwd_get_target_cmap_procs(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pprocs = alloca %struct.gx_cm_color_map_procs_s*, align 8
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_cm_color_map_procs_s** %pprocs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s* %2 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %3, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %4 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %5, i32 0, i32 43
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %6, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 42
  %get_color_mapping_procs = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 49
  %8 = load %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)** %get_color_mapping_procs, align 8, !tbaa !110
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %call = call %struct.gx_cm_color_map_procs_s* %8(%struct.gx_device_s* %9) #4
  store %struct.gx_cm_color_map_procs_s* %call, %struct.gx_cm_color_map_procs_s** %pprocs, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %10 = load %struct.gx_cm_color_map_procs_s*, %struct.gx_cm_color_map_procs_s** %pprocs, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_cm_color_map_procs_s* %10, @FwdDevice_cm_map_procs
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %call1 = call %struct.gx_cm_color_map_procs_s* @fwd_get_target_cmap_procs(%struct.gx_device_s* %11) #4
  store %struct.gx_cm_color_map_procs_s* %call1, %struct.gx_cm_color_map_procs_s** %pprocs, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = load %struct.gx_cm_color_map_procs_s*, %struct.gx_cm_color_map_procs_s** %pprocs, align 8, !tbaa !1
  %13 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  %14 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #2
  %15 = bitcast %struct.gx_cm_color_map_procs_s** %pprocs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #2
  ret %struct.gx_cm_color_map_procs_s* %12
}

; Function Attrs: nounwind uwtable
define internal void @fwd_map_gray_cs(%struct.gx_device_s* %dev, i16 signext %gray, i16* %out) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %gray.addr = alloca i16, align 2
  %out.addr = alloca i16*, align 8
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %pprocs = alloca %struct.gx_cm_color_map_procs_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16 %gray, i16* %gray.addr, align 2, !tbaa !89
  store i16* %out, i16** %out.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = bitcast %struct.gx_cm_color_map_procs_s** %pprocs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %7, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 42
  %get_color_mapping_procs = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 49
  %9 = load %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)** %get_color_mapping_procs, align 8, !tbaa !110
  %cmp1 = icmp eq %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* %9, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %10, i32 0, i32 42
  %get_color_mapping_procs4 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs3, i32 0, i32 49
  %11 = load %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)** %get_color_mapping_procs4, align 8, !tbaa !110
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %call = call %struct.gx_cm_color_map_procs_s* %11(%struct.gx_device_s* %12) #4
  store %struct.gx_cm_color_map_procs_s* %call, %struct.gx_cm_color_map_procs_s** %pprocs, align 8, !tbaa !1
  %cmp5 = icmp eq %struct.gx_cm_color_map_procs_s* %call, null
  br i1 %cmp5, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.2
  %13 = load %struct.gx_cm_color_map_procs_s*, %struct.gx_cm_color_map_procs_s** %pprocs, align 8, !tbaa !1
  %map_gray = getelementptr inbounds %struct.gx_cm_color_map_procs_s, %struct.gx_cm_color_map_procs_s* %13, i32 0, i32 0
  %14 = load void (%struct.gx_device_s*, i16, i16*)*, void (%struct.gx_device_s*, i16, i16*)** %map_gray, align 8, !tbaa !142
  %cmp7 = icmp eq void (%struct.gx_device_s*, i16, i16*)* %14, null
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.6, %lor.lhs.false.2, %lor.lhs.false, %entry
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %16 = load i16, i16* %gray.addr, align 2, !tbaa !89
  %17 = load i16*, i16** %out.addr, align 8, !tbaa !1
  call void @gray_cs_to_gray_cm(%struct.gx_device_s* %15, i16 signext %16, i16* %17) #4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false.6
  %18 = load %struct.gx_cm_color_map_procs_s*, %struct.gx_cm_color_map_procs_s** %pprocs, align 8, !tbaa !1
  %map_gray8 = getelementptr inbounds %struct.gx_cm_color_map_procs_s, %struct.gx_cm_color_map_procs_s* %18, i32 0, i32 0
  %19 = load void (%struct.gx_device_s*, i16, i16*)*, void (%struct.gx_device_s*, i16, i16*)** %map_gray8, align 8, !tbaa !142
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %21 = load i16, i16* %gray.addr, align 2, !tbaa !89
  %22 = load i16*, i16** %out.addr, align 8, !tbaa !1
  call void %19(%struct.gx_device_s* %20, i16 signext %21, i16* %22) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %23 = bitcast %struct.gx_cm_color_map_procs_s** %pprocs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #2
  %24 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #2
  %25 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fwd_map_rgb_cs(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, i16 signext %r, i16 signext %g, i16 signext %b, i16* %out) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %r.addr = alloca i16, align 2
  %g.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  %out.addr = alloca i16*, align 8
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %pprocs = alloca %struct.gx_cm_color_map_procs_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store i16 %r, i16* %r.addr, align 2, !tbaa !89
  store i16 %g, i16* %g.addr, align 2, !tbaa !89
  store i16 %b, i16* %b.addr, align 2, !tbaa !89
  store i16* %out, i16** %out.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = bitcast %struct.gx_cm_color_map_procs_s** %pprocs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %7, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 42
  %get_color_mapping_procs = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 49
  %9 = load %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)** %get_color_mapping_procs, align 8, !tbaa !110
  %cmp1 = icmp eq %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* %9, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %10, i32 0, i32 42
  %get_color_mapping_procs4 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs3, i32 0, i32 49
  %11 = load %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)** %get_color_mapping_procs4, align 8, !tbaa !110
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %call = call %struct.gx_cm_color_map_procs_s* %11(%struct.gx_device_s* %12) #4
  store %struct.gx_cm_color_map_procs_s* %call, %struct.gx_cm_color_map_procs_s** %pprocs, align 8, !tbaa !1
  %cmp5 = icmp eq %struct.gx_cm_color_map_procs_s* %call, null
  br i1 %cmp5, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.2
  %13 = load %struct.gx_cm_color_map_procs_s*, %struct.gx_cm_color_map_procs_s** %pprocs, align 8, !tbaa !1
  %map_rgb = getelementptr inbounds %struct.gx_cm_color_map_procs_s, %struct.gx_cm_color_map_procs_s* %13, i32 0, i32 1
  %14 = load void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)** %map_rgb, align 8, !tbaa !144
  %cmp7 = icmp eq void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)* %14, null
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.6, %lor.lhs.false.2, %lor.lhs.false, %entry
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %16 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %17 = load i16, i16* %r.addr, align 2, !tbaa !89
  %18 = load i16, i16* %g.addr, align 2, !tbaa !89
  %19 = load i16, i16* %b.addr, align 2, !tbaa !89
  %20 = load i16*, i16** %out.addr, align 8, !tbaa !1
  call void @rgb_cs_to_rgb_cm(%struct.gx_device_s* %15, %struct.gs_imager_state_s* %16, i16 signext %17, i16 signext %18, i16 signext %19, i16* %20) #4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false.6
  %21 = load %struct.gx_cm_color_map_procs_s*, %struct.gx_cm_color_map_procs_s** %pprocs, align 8, !tbaa !1
  %map_rgb8 = getelementptr inbounds %struct.gx_cm_color_map_procs_s, %struct.gx_cm_color_map_procs_s* %21, i32 0, i32 1
  %22 = load void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)** %map_rgb8, align 8, !tbaa !144
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %24 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %25 = load i16, i16* %r.addr, align 2, !tbaa !89
  %26 = load i16, i16* %g.addr, align 2, !tbaa !89
  %27 = load i16, i16* %b.addr, align 2, !tbaa !89
  %28 = load i16*, i16** %out.addr, align 8, !tbaa !1
  call void %22(%struct.gx_device_s* %23, %struct.gs_imager_state_s* %24, i16 signext %25, i16 signext %26, i16 signext %27, i16* %28) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %29 = bitcast %struct.gx_cm_color_map_procs_s** %pprocs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #2
  %30 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #2
  %31 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fwd_map_cmyk_cs(%struct.gx_device_s* %dev, i16 signext %c, i16 signext %m, i16 signext %y, i16 signext %k, i16* %out) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %c.addr = alloca i16, align 2
  %m.addr = alloca i16, align 2
  %y.addr = alloca i16, align 2
  %k.addr = alloca i16, align 2
  %out.addr = alloca i16*, align 8
  %fdev = alloca %struct.gx_device_forward_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %pprocs = alloca %struct.gx_cm_color_map_procs_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16 %c, i16* %c.addr, align 2, !tbaa !89
  store i16 %m, i16* %m.addr, align 2, !tbaa !89
  store i16 %y, i16* %y.addr, align 2, !tbaa !89
  store i16 %k, i16* %k.addr, align 2, !tbaa !89
  store i16* %out, i16** %out.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  store %struct.gx_device_forward_s* %2, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_forward_s*, %struct.gx_device_forward_s** %fdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !19
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %6 = bitcast %struct.gx_cm_color_map_procs_s** %pprocs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_s* %7, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 42
  %get_color_mapping_procs = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 49
  %9 = load %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)** %get_color_mapping_procs, align 8, !tbaa !110
  %cmp1 = icmp eq %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* %9, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %procs3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %10, i32 0, i32 42
  %get_color_mapping_procs4 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs3, i32 0, i32 49
  %11 = load %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)** %get_color_mapping_procs4, align 8, !tbaa !110
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %call = call %struct.gx_cm_color_map_procs_s* %11(%struct.gx_device_s* %12) #4
  store %struct.gx_cm_color_map_procs_s* %call, %struct.gx_cm_color_map_procs_s** %pprocs, align 8, !tbaa !1
  %cmp5 = icmp eq %struct.gx_cm_color_map_procs_s* %call, null
  br i1 %cmp5, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.2
  %13 = load %struct.gx_cm_color_map_procs_s*, %struct.gx_cm_color_map_procs_s** %pprocs, align 8, !tbaa !1
  %map_cmyk = getelementptr inbounds %struct.gx_cm_color_map_procs_s, %struct.gx_cm_color_map_procs_s* %13, i32 0, i32 2
  %14 = load void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)** %map_cmyk, align 8, !tbaa !145
  %cmp7 = icmp eq void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* %14, null
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.6, %lor.lhs.false.2, %lor.lhs.false, %entry
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %16 = load i16, i16* %c.addr, align 2, !tbaa !89
  %17 = load i16, i16* %m.addr, align 2, !tbaa !89
  %18 = load i16, i16* %y.addr, align 2, !tbaa !89
  %19 = load i16, i16* %k.addr, align 2, !tbaa !89
  %20 = load i16*, i16** %out.addr, align 8, !tbaa !1
  call void @cmyk_cs_to_cmyk_cm(%struct.gx_device_s* %15, i16 signext %16, i16 signext %17, i16 signext %18, i16 signext %19, i16* %20) #4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false.6
  %21 = load %struct.gx_cm_color_map_procs_s*, %struct.gx_cm_color_map_procs_s** %pprocs, align 8, !tbaa !1
  %map_cmyk8 = getelementptr inbounds %struct.gx_cm_color_map_procs_s, %struct.gx_cm_color_map_procs_s* %21, i32 0, i32 2
  %22 = load void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)** %map_cmyk8, align 8, !tbaa !145
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !1
  %24 = load i16, i16* %c.addr, align 2, !tbaa !89
  %25 = load i16, i16* %m.addr, align 2, !tbaa !89
  %26 = load i16, i16* %y.addr, align 2, !tbaa !89
  %27 = load i16, i16* %k.addr, align 2, !tbaa !89
  %28 = load i16*, i16** %out.addr, align 8, !tbaa !1
  call void %22(%struct.gx_device_s* %23, i16 signext %24, i16 signext %25, i16 signext %26, i16 signext %27, i16* %28) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %29 = bitcast %struct.gx_cm_color_map_procs_s** %pprocs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #2
  %30 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #2
  %31 = bitcast %struct.gx_device_forward_s** %fdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #2
  ret void
}

declare void @gray_cs_to_gray_cm(%struct.gx_device_s*, i16 signext, i16*) #1

declare void @rgb_cs_to_rgb_cm(%struct.gx_device_s*, %struct.gs_imager_state_s*, i16 signext, i16 signext, i16 signext, i16*) #1

declare void @cmyk_cs_to_cmyk_cm(%struct.gx_device_s*, i16 signext, i16 signext, i16 signext, i16 signext, i16*) #1

declare void @gx_upright_get_initial_matrix(%struct.gx_device_s*, %struct.gs_matrix_s*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!5 = !{!6, !2, i64 48}
!6 = !{!"gx_device_forward_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144, !2, i64 1728}
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
!19 = !{!6, !2, i64 1728}
!20 = !{!21, !9, i64 56}
!21 = !{!"gx_device_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144}
!22 = !{!21, !2, i64 72}
!23 = !{!21, !2, i64 64}
!24 = !{!21, !3, i64 1112}
!25 = !{!6, !3, i64 1112}
!26 = !{!6, !2, i64 1152}
!27 = !{!6, !2, i64 1160}
!28 = !{!6, !2, i64 1168}
!29 = !{!6, !2, i64 1184}
!30 = !{!6, !2, i64 1192}
!31 = !{!6, !2, i64 1240}
!32 = !{!6, !2, i64 1248}
!33 = !{!6, !2, i64 1256}
!34 = !{!6, !2, i64 1264}
!35 = !{!6, !2, i64 1272}
!36 = !{!6, !2, i64 1280}
!37 = !{!6, !2, i64 1288}
!38 = !{!6, !2, i64 1296}
!39 = !{!6, !2, i64 1320}
!40 = !{!6, !2, i64 1328}
!41 = !{!6, !2, i64 1336}
!42 = !{!6, !2, i64 1344}
!43 = !{!6, !2, i64 1352}
!44 = !{!6, !2, i64 1360}
!45 = !{!6, !2, i64 1368}
!46 = !{!6, !2, i64 1376}
!47 = !{!6, !2, i64 1384}
!48 = !{!6, !2, i64 1392}
!49 = !{!6, !2, i64 1424}
!50 = !{!6, !2, i64 1432}
!51 = !{!6, !2, i64 1440}
!52 = !{!6, !2, i64 1448}
!53 = !{!6, !2, i64 1456}
!54 = !{!6, !2, i64 1464}
!55 = !{!6, !2, i64 1472}
!56 = !{!6, !2, i64 1480}
!57 = !{!6, !2, i64 1536}
!58 = !{!6, !2, i64 1544}
!59 = !{!6, !2, i64 1552}
!60 = !{!6, !2, i64 1560}
!61 = !{!6, !2, i64 1664}
!62 = !{!6, !2, i64 1576}
!63 = !{!6, !2, i64 1584}
!64 = !{!6, !2, i64 1592}
!65 = !{!6, !2, i64 1600}
!66 = !{!6, !2, i64 1608}
!67 = !{!6, !2, i64 1616}
!68 = !{!6, !2, i64 1624}
!69 = !{!6, !2, i64 1632}
!70 = !{!6, !2, i64 1680}
!71 = !{!6, !2, i64 1688}
!72 = !{!6, !2, i64 1696}
!73 = !{!6, !2, i64 1704}
!74 = !{!21, !2, i64 1152}
!75 = !{!21, !2, i64 1160}
!76 = !{!7, !7, i64 0}
!77 = !{!21, !2, i64 1168}
!78 = !{!21, !9, i64 928}
!79 = !{!21, !2, i64 1184}
!80 = !{!9, !9, i64 0}
!81 = !{!21, !2, i64 1192}
!82 = !{!21, !2, i64 1240}
!83 = !{!21, !2, i64 1248}
!84 = !{!21, !7, i64 84}
!85 = !{!21, !2, i64 1256}
!86 = !{!21, !2, i64 1264}
!87 = !{!21, !2, i64 1272}
!88 = !{!21, !2, i64 1280}
!89 = !{!11, !11, i64 0}
!90 = !{!21, !2, i64 1288}
!91 = !{!21, !2, i64 1296}
!92 = !{!21, !2, i64 1320}
!93 = !{!21, !2, i64 1328}
!94 = !{!21, !2, i64 1336}
!95 = !{!21, !2, i64 1344}
!96 = !{!21, !2, i64 1352}
!97 = !{!21, !2, i64 1360}
!98 = !{!21, !2, i64 1368}
!99 = !{!21, !2, i64 1376}
!100 = !{!21, !2, i64 1384}
!101 = !{!3, !3, i64 0}
!102 = !{!21, !2, i64 1392}
!103 = !{!21, !2, i64 1424}
!104 = !{!21, !2, i64 1432}
!105 = !{!21, !2, i64 1440}
!106 = !{!21, !2, i64 1448}
!107 = !{!21, !2, i64 1456}
!108 = !{!21, !2, i64 1472}
!109 = !{!21, !2, i64 1480}
!110 = !{!21, !2, i64 1536}
!111 = !{!21, !2, i64 1544}
!112 = !{!21, !2, i64 1552}
!113 = !{!21, !2, i64 1560}
!114 = !{!115, !2, i64 0}
!115 = !{!"gxdso_device_child_request_s", !2, i64 0, !7, i64 8}
!116 = !{!21, !2, i64 1664}
!117 = !{!21, !2, i64 1576}
!118 = !{!21, !2, i64 1584}
!119 = !{!21, !2, i64 1592}
!120 = !{!21, !2, i64 1600}
!121 = !{!21, !2, i64 1608}
!122 = !{!21, !2, i64 1616}
!123 = !{!21, !2, i64 1624}
!124 = !{!21, !2, i64 1632}
!125 = !{!21, !2, i64 1680}
!126 = !{!21, !2, i64 1688}
!127 = !{!21, !2, i64 1696}
!128 = !{!21, !2, i64 1704}
!129 = !{!21, !2, i64 1176}
!130 = !{!21, !2, i64 1200}
!131 = !{!21, !2, i64 1208}
!132 = !{!21, !2, i64 1216}
!133 = !{!21, !2, i64 1312}
!134 = !{!21, !2, i64 1224}
!135 = !{!21, !2, i64 1672}
!136 = !{!21, !2, i64 1416}
!137 = !{!21, !2, i64 1712}
!138 = !{!21, !2, i64 1464}
!139 = !{i64 0, i64 4, !76, i64 4, i64 4, !76, i64 8, i64 4, !101, i64 12, i64 2, !89, i64 14, i64 1, !101, i64 16, i64 4, !76, i64 20, i64 4, !76, i64 24, i64 4, !76, i64 28, i64 4, !76, i64 32, i64 4, !76, i64 36, i64 4, !76, i64 40, i64 4, !101, i64 44, i64 64, !101, i64 108, i64 64, !101, i64 176, i64 512, !101, i64 688, i64 8, !1, i64 696, i64 4, !101, i64 704, i64 8, !80, i64 712, i64 4, !76}
!140 = !{!21, !7, i64 836}
!141 = !{!21, !7, i64 832}
!142 = !{!143, !2, i64 0}
!143 = !{!"gx_cm_color_map_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!144 = !{!143, !2, i64 8}
!145 = !{!143, !2, i64 16}
