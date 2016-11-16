; ModuleID = './gdevdsha.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_device_color_type_s = type opaque
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
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, {}*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gx_tile_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16 }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gx_xfont_procs_s = type opaque
%struct.gs_imager_state_s = type opaque
%struct.gx_path_s = type opaque
%struct.gx_fill_params_s = type opaque
%struct.gx_device_color_s = type { %struct.gx_device_color_type_s*, %union._c, %struct.gs_int_point_s, i32, %struct.gs_client_color_s, %struct._mask }
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
%struct.gx_cm_color_map_procs_s = type { void (%struct.gx_device_s*, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* }
%struct.gs_pattern1_instance_s = type opaque
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.gs_fill_attributes_s = type { %struct.gs_fixed_rect_s*, i32, %struct.gx_device_halftone_s*, i32, i32, i32, %struct.patch_fill_state_s* }
%struct.patch_fill_state_s = type opaque
%struct._devn = type { [64 x i16] }

@gx_dc_type_devn = external constant %struct.gx_device_color_type_s*, align 8

; Function Attrs: nounwind uwtable
define i32 @gx_hl_fill_linear_color_scanline(%struct.gx_device_s* %dev, %struct.gs_fill_attributes_s* %fa, i32 %i0, i32 %j, i32 %w, i32* %c0, i32* %c0f, i32* %cg_num, i32 %cg_den) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %fa.addr = alloca %struct.gs_fill_attributes_s*, align 8
  %i0.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %c0.addr = alloca i32*, align 8
  %c0f.addr = alloca i32*, align 8
  %cg_num.addr = alloca i32*, align 8
  %cg_den.addr = alloca i32, align 4
  %c = alloca [64 x i32], align 16
  %curr = alloca [64 x i32], align 16
  %f = alloca [64 x i64], align 16
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  %bi = alloca i32, align 4
  %k = alloca i32, align 4
  %cinfo = alloca %struct.gx_device_color_info_s*, align 8
  %n = alloca i32, align 4
  %si = alloca i32, align 4
  %ei = alloca i32, align 4
  %di = alloca i32, align 4
  %code = alloca i32, align 4
  %rect = alloca %struct.gs_fixed_rect_s, align 4
  %devc = alloca %struct.gx_device_color_s, align 8
  %cleanup.dest.slot = alloca i32
  %m = alloca i32, align 4
  %M = alloca i64, align 8
  %m71 = alloca i32, align 4
  %a = alloca i32, align 4
  %x205 = alloca i64, align 8
  %v = alloca i32, align 4
  %u = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_fill_attributes_s* %fa, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  store i32 %i0, i32* %i0.addr, align 4, !tbaa !5
  store i32 %j, i32* %j.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32* %c0, i32** %c0.addr, align 8, !tbaa !1
  store i32* %c0f, i32** %c0f.addr, align 8, !tbaa !1
  store i32* %cg_num, i32** %cg_num.addr, align 8, !tbaa !1
  store i32 %cg_den, i32* %cg_den.addr, align 4, !tbaa !5
  %0 = bitcast [64 x i32]* %c to i8*
  call void @llvm.lifetime.start(i64 256, i8* %0) #1
  %1 = bitcast [64 x i32]* %curr to i8*
  call void @llvm.lifetime.start(i64 256, i8* %1) #1
  %2 = bitcast [64 x i64]* %f to i8*
  call void @llvm.lifetime.start(i64 512, i8* %2) #1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i32, i32* %i0.addr, align 4, !tbaa !5
  %6 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add = add nsw i32 %5, %6
  store i32 %add, i32* %i1, align 4, !tbaa !5
  %7 = bitcast i32* %bi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i32, i32* %i0.addr, align 4, !tbaa !5
  store i32 %8, i32* %bi, align 4, !tbaa !5
  %9 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast %struct.gx_device_color_info_s** %cinfo to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 11
  store %struct.gx_device_color_info_s* %color_info, %struct.gx_device_color_info_s** %cinfo, align 8, !tbaa !1
  %12 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %cinfo, align 8, !tbaa !1
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %13, i32 0, i32 1
  %14 = load i32, i32* %num_components, align 4, !tbaa !7
  store i32 %14, i32* %n, align 4, !tbaa !5
  %15 = bitcast i32* %si to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = bitcast i32* %ei to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast i32* %di to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast %struct.gs_fixed_rect_s* %rect to i8*
  call void @llvm.lifetime.start(i64 16, i8* %19) #1
  %20 = bitcast %struct.gx_device_color_s* %devc to i8*
  call void @llvm.lifetime.start(i64 656, i8* %20) #1
  %21 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** @gx_dc_type_devn, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 0
  store %struct.gx_device_color_type_s* %21, %struct.gx_device_color_type_s** %type, align 8, !tbaa !12
  %22 = load i32, i32* %j.addr, align 4, !tbaa !5
  %23 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %23, i32 0, i32 0
  %24 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip, align 8, !tbaa !19
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %24, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 1
  %25 = load i32, i32* %y, align 4, !tbaa !21
  %shr = ashr i32 %25, 8
  %cmp = icmp slt i32 %22, %shr
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %26 = load i32, i32* %j.addr, align 4, !tbaa !5
  %27 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip1 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %27, i32 0, i32 0
  %28 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip1, align 8, !tbaa !19
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %28, i32 0, i32 1
  %y2 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 1
  %29 = load i32, i32* %y2, align 4, !tbaa !24
  %add3 = add nsw i32 %29, 255
  %shr4 = ashr i32 %add3, 8
  %cmp5 = icmp sgt i32 %26, %shr4
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.362

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %30 = load i32, i32* %k, align 4, !tbaa !5
  %31 = load i32, i32* %n, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %30, %31
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom = sext i32 %32 to i64
  %33 = load i32*, i32** %c0.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %33, i64 %idxprom
  %34 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %35 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom7 = sext i32 %35 to i64
  %arrayidx8 = getelementptr inbounds [64 x i32], [64 x i32]* %c, i32 0, i64 %idxprom7
  store i32 %34, i32* %arrayidx8, align 4, !tbaa !5
  %36 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom9 = sext i32 %36 to i64
  %arrayidx10 = getelementptr inbounds [64 x i32], [64 x i32]* %curr, i32 0, i64 %idxprom9
  store i32 %34, i32* %arrayidx10, align 4, !tbaa !5
  %37 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom11 = sext i32 %37 to i64
  %38 = load i32*, i32** %c0f.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i32, i32* %38, i64 %idxprom11
  %39 = load i32, i32* %arrayidx12, align 4, !tbaa !5
  %conv = sext i32 %39 to i64
  %40 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom13 = sext i32 %40 to i64
  %arrayidx14 = getelementptr inbounds [64 x i64], [64 x i64]* %f, i32 0, i64 %idxprom13
  store i64 %conv, i64* %arrayidx14, align 8, !tbaa !25
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %41 = load i32, i32* %k, align 4, !tbaa !5
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %42 = load i32, i32* %i0.addr, align 4, !tbaa !5
  %add15 = add nsw i32 %42, 1
  store i32 %add15, i32* %i, align 4, !tbaa !5
  store i32 1, i32* %di, align 4, !tbaa !5
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.271, %for.end
  %43 = load i32, i32* %i, align 4, !tbaa !5
  %44 = load i32, i32* %i1, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %43, %44
  br i1 %cmp17, label %for.body.19, label %for.end.273

for.body.19:                                      ; preds = %for.cond.16
  %45 = load i32, i32* %di, align 4, !tbaa !5
  %cmp20 = icmp eq i32 %45, 1
  br i1 %cmp20, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %for.body.19
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.52, %if.then.22
  %46 = load i32, i32* %k, align 4, !tbaa !5
  %47 = load i32, i32* %n, align 4, !tbaa !5
  %cmp24 = icmp slt i32 %46, %47
  br i1 %cmp24, label %for.body.26, label %for.end.54

for.body.26:                                      ; preds = %for.cond.23
  %48 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom27 = sext i32 %48 to i64
  %49 = load i32*, i32** %cg_num.addr, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds i32, i32* %49, i64 %idxprom27
  %50 = load i32, i32* %arrayidx28, align 4, !tbaa !5
  %tobool = icmp ne i32 %50, 0
  br i1 %tobool, label %if.then.29, label %if.end.51

if.then.29:                                       ; preds = %for.body.26
  %51 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #1
  %52 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom30 = sext i32 %52 to i64
  %arrayidx31 = getelementptr inbounds [64 x i64], [64 x i64]* %f, i32 0, i64 %idxprom30
  %53 = load i64, i64* %arrayidx31, align 8, !tbaa !25
  %54 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom32 = sext i32 %54 to i64
  %55 = load i32*, i32** %cg_num.addr, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds i32, i32* %55, i64 %idxprom32
  %56 = load i32, i32* %arrayidx33, align 4, !tbaa !5
  %conv34 = sext i32 %56 to i64
  %add35 = add i64 %53, %conv34
  %conv36 = trunc i64 %add35 to i32
  store i32 %conv36, i32* %m, align 4, !tbaa !5
  %57 = load i32, i32* %m, align 4, !tbaa !5
  %58 = load i32, i32* %cg_den.addr, align 4, !tbaa !5
  %div = sdiv i32 %57, %58
  %59 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom37 = sext i32 %59 to i64
  %arrayidx38 = getelementptr inbounds [64 x i32], [64 x i32]* %c, i32 0, i64 %idxprom37
  %60 = load i32, i32* %arrayidx38, align 4, !tbaa !5
  %add39 = add nsw i32 %60, %div
  store i32 %add39, i32* %arrayidx38, align 4, !tbaa !5
  %61 = load i32, i32* %m, align 4, !tbaa !5
  %62 = load i32, i32* %cg_den.addr, align 4, !tbaa !5
  %div40 = sdiv i32 %61, %62
  %63 = load i32, i32* %cg_den.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %div40, %63
  %64 = load i32, i32* %m, align 4, !tbaa !5
  %sub = sub nsw i32 %64, %mul
  store i32 %sub, i32* %m, align 4, !tbaa !5
  %65 = load i32, i32* %m, align 4, !tbaa !5
  %cmp41 = icmp slt i32 %65, 0
  br i1 %cmp41, label %if.then.43, label %if.end.47

if.then.43:                                       ; preds = %if.then.29
  %66 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom44 = sext i32 %66 to i64
  %arrayidx45 = getelementptr inbounds [64 x i32], [64 x i32]* %c, i32 0, i64 %idxprom44
  %67 = load i32, i32* %arrayidx45, align 4, !tbaa !5
  %dec = add nsw i32 %67, -1
  store i32 %dec, i32* %arrayidx45, align 4, !tbaa !5
  %68 = load i32, i32* %cg_den.addr, align 4, !tbaa !5
  %69 = load i32, i32* %m, align 4, !tbaa !5
  %add46 = add nsw i32 %69, %68
  store i32 %add46, i32* %m, align 4, !tbaa !5
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.43, %if.then.29
  %70 = load i32, i32* %m, align 4, !tbaa !5
  %conv48 = sext i32 %70 to i64
  %71 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom49 = sext i32 %71 to i64
  %arrayidx50 = getelementptr inbounds [64 x i64], [64 x i64]* %f, i32 0, i64 %idxprom49
  store i64 %conv48, i64* %arrayidx50, align 8, !tbaa !25
  %72 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.47, %for.body.26
  br label %for.inc.52

for.inc.52:                                       ; preds = %if.end.51
  %73 = load i32, i32* %k, align 4, !tbaa !5
  %inc53 = add nsw i32 %73, 1
  store i32 %inc53, i32* %k, align 4, !tbaa !5
  br label %for.cond.23

for.end.54:                                       ; preds = %for.cond.23
  br label %if.end.99

if.else:                                          ; preds = %for.body.19
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.96, %if.else
  %74 = load i32, i32* %k, align 4, !tbaa !5
  %75 = load i32, i32* %n, align 4, !tbaa !5
  %cmp56 = icmp slt i32 %74, %75
  br i1 %cmp56, label %for.body.58, label %for.end.98

for.body.58:                                      ; preds = %for.cond.55
  %76 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom59 = sext i32 %76 to i64
  %77 = load i32*, i32** %cg_num.addr, align 8, !tbaa !1
  %arrayidx60 = getelementptr inbounds i32, i32* %77, i64 %idxprom59
  %78 = load i32, i32* %arrayidx60, align 4, !tbaa !5
  %tobool61 = icmp ne i32 %78, 0
  br i1 %tobool61, label %if.then.62, label %if.end.95

if.then.62:                                       ; preds = %for.body.58
  %79 = bitcast i64* %M to i8*
  call void @llvm.lifetime.start(i64 8, i8* %79) #1
  %80 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom63 = sext i32 %80 to i64
  %arrayidx64 = getelementptr inbounds [64 x i64], [64 x i64]* %f, i32 0, i64 %idxprom63
  %81 = load i64, i64* %arrayidx64, align 8, !tbaa !25
  %82 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom65 = sext i32 %82 to i64
  %83 = load i32*, i32** %cg_num.addr, align 8, !tbaa !1
  %arrayidx66 = getelementptr inbounds i32, i32* %83, i64 %idxprom65
  %84 = load i32, i32* %arrayidx66, align 4, !tbaa !5
  %conv67 = sext i32 %84 to i64
  %85 = load i32, i32* %di, align 4, !tbaa !5
  %conv68 = sext i32 %85 to i64
  %mul69 = mul nsw i64 %conv67, %conv68
  %add70 = add i64 %81, %mul69
  store i64 %add70, i64* %M, align 8, !tbaa !25
  %86 = bitcast i32* %m71 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %86) #1
  %87 = load i64, i64* %M, align 8, !tbaa !25
  %88 = load i32, i32* %cg_den.addr, align 4, !tbaa !5
  %conv72 = sext i32 %88 to i64
  %div73 = sdiv i64 %87, %conv72
  %conv74 = trunc i64 %div73 to i32
  %89 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom75 = sext i32 %89 to i64
  %arrayidx76 = getelementptr inbounds [64 x i32], [64 x i32]* %c, i32 0, i64 %idxprom75
  %90 = load i32, i32* %arrayidx76, align 4, !tbaa !5
  %add77 = add nsw i32 %90, %conv74
  store i32 %add77, i32* %arrayidx76, align 4, !tbaa !5
  %91 = load i64, i64* %M, align 8, !tbaa !25
  %92 = load i64, i64* %M, align 8, !tbaa !25
  %93 = load i32, i32* %cg_den.addr, align 4, !tbaa !5
  %conv78 = sext i32 %93 to i64
  %div79 = sdiv i64 %92, %conv78
  %94 = load i32, i32* %cg_den.addr, align 4, !tbaa !5
  %conv80 = sext i32 %94 to i64
  %mul81 = mul nsw i64 %div79, %conv80
  %sub82 = sub nsw i64 %91, %mul81
  %conv83 = trunc i64 %sub82 to i32
  store i32 %conv83, i32* %m71, align 4, !tbaa !5
  %95 = load i32, i32* %m71, align 4, !tbaa !5
  %cmp84 = icmp slt i32 %95, 0
  br i1 %cmp84, label %if.then.86, label %if.end.91

if.then.86:                                       ; preds = %if.then.62
  %96 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom87 = sext i32 %96 to i64
  %arrayidx88 = getelementptr inbounds [64 x i32], [64 x i32]* %c, i32 0, i64 %idxprom87
  %97 = load i32, i32* %arrayidx88, align 4, !tbaa !5
  %dec89 = add nsw i32 %97, -1
  store i32 %dec89, i32* %arrayidx88, align 4, !tbaa !5
  %98 = load i32, i32* %cg_den.addr, align 4, !tbaa !5
  %99 = load i32, i32* %m71, align 4, !tbaa !5
  %add90 = add nsw i32 %99, %98
  store i32 %add90, i32* %m71, align 4, !tbaa !5
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.86, %if.then.62
  %100 = load i32, i32* %m71, align 4, !tbaa !5
  %conv92 = sext i32 %100 to i64
  %101 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom93 = sext i32 %101 to i64
  %arrayidx94 = getelementptr inbounds [64 x i64], [64 x i64]* %f, i32 0, i64 %idxprom93
  store i64 %conv92, i64* %arrayidx94, align 8, !tbaa !25
  %102 = bitcast i32* %m71 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #1
  %103 = bitcast i64* %M to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #1
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.91, %for.body.58
  br label %for.inc.96

for.inc.96:                                       ; preds = %if.end.95
  %104 = load i32, i32* %k, align 4, !tbaa !5
  %inc97 = add nsw i32 %104, 1
  store i32 %inc97, i32* %k, align 4, !tbaa !5
  br label %for.cond.55

for.end.98:                                       ; preds = %for.cond.55
  br label %if.end.99

if.end.99:                                        ; preds = %for.end.98, %for.end.54
  %arraydecay = getelementptr inbounds [64 x i32], [64 x i32]* %c, i32 0, i32 0
  %arraydecay100 = getelementptr inbounds [64 x i32], [64 x i32]* %curr, i32 0, i32 0
  %105 = load i32, i32* %n, align 4, !tbaa !5
  %call = call i32 @gx_devn_diff(i32* %arraydecay, i32* %arraydecay100, i32 %105) #2
  %tobool101 = icmp ne i32 %call, 0
  br i1 %tobool101, label %if.then.102, label %if.else.194

if.then.102:                                      ; preds = %if.end.99
  %106 = load i32, i32* %bi, align 4, !tbaa !5
  %107 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip103 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %107, i32 0, i32 0
  %108 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip103, align 8, !tbaa !19
  %p104 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %108, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p104, i32 0, i32 0
  %109 = load i32, i32* %x, align 4, !tbaa !26
  %shr105 = ashr i32 %109, 8
  %cmp106 = icmp sgt i32 %106, %shr105
  br i1 %cmp106, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.102
  %110 = load i32, i32* %bi, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.then.102
  %111 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip108 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %111, i32 0, i32 0
  %112 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip108, align 8, !tbaa !19
  %p109 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %112, i32 0, i32 0
  %x110 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p109, i32 0, i32 0
  %113 = load i32, i32* %x110, align 4, !tbaa !26
  %shr111 = ashr i32 %113, 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %110, %cond.true ], [ %shr111, %cond.false ]
  store i32 %cond, i32* %si, align 4, !tbaa !5
  %114 = load i32, i32* %i, align 4, !tbaa !5
  %115 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip112 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %115, i32 0, i32 0
  %116 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip112, align 8, !tbaa !19
  %q113 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %116, i32 0, i32 1
  %x114 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q113, i32 0, i32 0
  %117 = load i32, i32* %x114, align 4, !tbaa !27
  %add115 = add nsw i32 %117, 255
  %shr116 = ashr i32 %add115, 8
  %cmp117 = icmp slt i32 %114, %shr116
  br i1 %cmp117, label %cond.true.119, label %cond.false.120

cond.true.119:                                    ; preds = %cond.end
  %118 = load i32, i32* %i, align 4, !tbaa !5
  br label %cond.end.126

cond.false.120:                                   ; preds = %cond.end
  %119 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip121 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %119, i32 0, i32 0
  %120 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip121, align 8, !tbaa !19
  %q122 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %120, i32 0, i32 1
  %x123 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q122, i32 0, i32 0
  %121 = load i32, i32* %x123, align 4, !tbaa !27
  %add124 = add nsw i32 %121, 255
  %shr125 = ashr i32 %add124, 8
  br label %cond.end.126

cond.end.126:                                     ; preds = %cond.false.120, %cond.true.119
  %cond127 = phi i32 [ %118, %cond.true.119 ], [ %shr125, %cond.false.120 ]
  store i32 %cond127, i32* %ei, align 4, !tbaa !5
  %122 = load i32, i32* %si, align 4, !tbaa !5
  %123 = load i32, i32* %ei, align 4, !tbaa !5
  %cmp128 = icmp slt i32 %122, %123
  br i1 %cmp128, label %if.then.130, label %if.end.182

if.then.130:                                      ; preds = %cond.end.126
  %124 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %swap_axes = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %124, i32 0, i32 1
  %125 = load i32, i32* %swap_axes, align 4, !tbaa !28
  %tobool131 = icmp ne i32 %125, 0
  br i1 %tobool131, label %if.then.132, label %if.else.145

if.then.132:                                      ; preds = %if.then.130
  %126 = load i32, i32* %j.addr, align 4, !tbaa !5
  %shl = shl i32 %126, 8
  %p133 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %rect, i32 0, i32 0
  %x134 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p133, i32 0, i32 0
  store i32 %shl, i32* %x134, align 4, !tbaa !26
  %127 = load i32, i32* %si, align 4, !tbaa !5
  %shl135 = shl i32 %127, 8
  %p136 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %rect, i32 0, i32 0
  %y137 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p136, i32 0, i32 1
  store i32 %shl135, i32* %y137, align 4, !tbaa !21
  %128 = load i32, i32* %j.addr, align 4, !tbaa !5
  %add138 = add nsw i32 %128, 1
  %shl139 = shl i32 %add138, 8
  %q140 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %rect, i32 0, i32 1
  %x141 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q140, i32 0, i32 0
  store i32 %shl139, i32* %x141, align 4, !tbaa !27
  %129 = load i32, i32* %ei, align 4, !tbaa !5
  %shl142 = shl i32 %129, 8
  %q143 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %rect, i32 0, i32 1
  %y144 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q143, i32 0, i32 1
  store i32 %shl142, i32* %y144, align 4, !tbaa !24
  br label %if.end.159

if.else.145:                                      ; preds = %if.then.130
  %130 = load i32, i32* %si, align 4, !tbaa !5
  %shl146 = shl i32 %130, 8
  %p147 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %rect, i32 0, i32 0
  %x148 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p147, i32 0, i32 0
  store i32 %shl146, i32* %x148, align 4, !tbaa !26
  %131 = load i32, i32* %j.addr, align 4, !tbaa !5
  %shl149 = shl i32 %131, 8
  %p150 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %rect, i32 0, i32 0
  %y151 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p150, i32 0, i32 1
  store i32 %shl149, i32* %y151, align 4, !tbaa !21
  %132 = load i32, i32* %ei, align 4, !tbaa !5
  %shl152 = shl i32 %132, 8
  %q153 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %rect, i32 0, i32 1
  %x154 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q153, i32 0, i32 0
  store i32 %shl152, i32* %x154, align 4, !tbaa !27
  %133 = load i32, i32* %j.addr, align 4, !tbaa !5
  %add155 = add nsw i32 %133, 1
  %shl156 = shl i32 %add155, 8
  %q157 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %rect, i32 0, i32 1
  %y158 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q157, i32 0, i32 1
  store i32 %shl156, i32* %y158, align 4, !tbaa !24
  br label %if.end.159

if.end.159:                                       ; preds = %if.else.145, %if.then.132
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.160

for.cond.160:                                     ; preds = %for.inc.174, %if.end.159
  %134 = load i32, i32* %k, align 4, !tbaa !5
  %135 = load i32, i32* %n, align 4, !tbaa !5
  %cmp161 = icmp slt i32 %134, %135
  br i1 %cmp161, label %for.body.163, label %for.end.176

for.body.163:                                     ; preds = %for.cond.160
  %136 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom164 = sext i32 %136 to i64
  %arrayidx165 = getelementptr inbounds [64 x i32], [64 x i32]* %curr, i32 0, i64 %idxprom164
  %137 = load i32, i32* %arrayidx165, align 4, !tbaa !5
  %shl166 = shl i32 %137, 1
  %138 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom167 = sext i32 %138 to i64
  %arrayidx168 = getelementptr inbounds [64 x i32], [64 x i32]* %curr, i32 0, i64 %idxprom167
  %139 = load i32, i32* %arrayidx168, align 4, !tbaa !5
  %shr169 = ashr i32 %139, 11
  %add170 = add nsw i32 %shl166, %shr169
  %conv171 = trunc i32 %add170 to i16
  %140 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom172 = sext i32 %140 to i64
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 1
  %devn = bitcast %union._c* %colors to %struct._devn*
  %values = getelementptr inbounds %struct._devn, %struct._devn* %devn, i32 0, i32 0
  %arrayidx173 = getelementptr inbounds [64 x i16], [64 x i16]* %values, i32 0, i64 %idxprom172
  store i16 %conv171, i16* %arrayidx173, align 2, !tbaa !29
  br label %for.inc.174

for.inc.174:                                      ; preds = %for.body.163
  %141 = load i32, i32* %k, align 4, !tbaa !5
  %inc175 = add nsw i32 %141, 1
  store i32 %inc175, i32* %k, align 4, !tbaa !5
  br label %for.cond.160

for.end.176:                                      ; preds = %for.cond.160
  %142 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %142, i32 0, i32 42
  %fill_rectangle_hl_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 54
  %143 = load i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %fill_rectangle_hl_color, align 8, !tbaa !30
  %144 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call177 = call i32 %143(%struct.gx_device_s* %144, %struct.gs_fixed_rect_s* %rect, %struct.gs_imager_state_s* null, %struct.gx_device_color_s* %devc, %struct.gx_clip_path_s* null) #2
  store i32 %call177, i32* %code, align 4, !tbaa !5
  %145 = load i32, i32* %code, align 4, !tbaa !5
  %cmp178 = icmp slt i32 %145, 0
  br i1 %cmp178, label %if.then.180, label %if.end.181

if.then.180:                                      ; preds = %for.end.176
  %146 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %146, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.362

if.end.181:                                       ; preds = %for.end.176
  br label %if.end.182

if.end.182:                                       ; preds = %if.end.181, %cond.end.126
  %147 = load i32, i32* %i, align 4, !tbaa !5
  store i32 %147, i32* %bi, align 4, !tbaa !5
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.183

for.cond.183:                                     ; preds = %for.inc.191, %if.end.182
  %148 = load i32, i32* %k, align 4, !tbaa !5
  %149 = load i32, i32* %n, align 4, !tbaa !5
  %cmp184 = icmp slt i32 %148, %149
  br i1 %cmp184, label %for.body.186, label %for.end.193

for.body.186:                                     ; preds = %for.cond.183
  %150 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom187 = sext i32 %150 to i64
  %arrayidx188 = getelementptr inbounds [64 x i32], [64 x i32]* %c, i32 0, i64 %idxprom187
  %151 = load i32, i32* %arrayidx188, align 4, !tbaa !5
  %152 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom189 = sext i32 %152 to i64
  %arrayidx190 = getelementptr inbounds [64 x i32], [64 x i32]* %curr, i32 0, i64 %idxprom189
  store i32 %151, i32* %arrayidx190, align 4, !tbaa !5
  br label %for.inc.191

for.inc.191:                                      ; preds = %for.body.186
  %153 = load i32, i32* %k, align 4, !tbaa !5
  %inc192 = add nsw i32 %153, 1
  store i32 %inc192, i32* %k, align 4, !tbaa !5
  br label %for.cond.183

for.end.193:                                      ; preds = %for.cond.183
  store i32 1, i32* %di, align 4, !tbaa !5
  br label %if.end.270

if.else.194:                                      ; preds = %if.end.99
  %154 = load i32, i32* %i, align 4, !tbaa !5
  %155 = load i32, i32* %i1, align 4, !tbaa !5
  %cmp195 = icmp eq i32 %154, %155
  br i1 %cmp195, label %if.then.197, label %if.else.199

if.then.197:                                      ; preds = %if.else.194
  %156 = load i32, i32* %i, align 4, !tbaa !5
  %inc198 = add nsw i32 %156, 1
  store i32 %inc198, i32* %i, align 4, !tbaa !5
  br label %for.end.273

if.else.199:                                      ; preds = %if.else.194
  %157 = load i32, i32* %i1, align 4, !tbaa !5
  %158 = load i32, i32* %i, align 4, !tbaa !5
  %sub200 = sub nsw i32 %157, %158
  store i32 %sub200, i32* %di, align 4, !tbaa !5
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.201

for.cond.201:                                     ; preds = %for.inc.266, %if.else.199
  %159 = load i32, i32* %k, align 4, !tbaa !5
  %160 = load i32, i32* %n, align 4, !tbaa !5
  %cmp202 = icmp slt i32 %159, %160
  br i1 %cmp202, label %for.body.204, label %for.end.268

for.body.204:                                     ; preds = %for.cond.201
  %161 = bitcast i32* %a to i8*
  call void @llvm.lifetime.start(i64 4, i8* %161) #1
  %162 = bitcast i64* %x205 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %162) #1
  %163 = bitcast i32* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %163) #1
  %164 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom206 = sext i32 %164 to i64
  %165 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %cinfo, align 8, !tbaa !1
  %comp_bits = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %165, i32 0, i32 12
  %arrayidx207 = getelementptr inbounds [64 x i8], [64 x i8]* %comp_bits, i32 0, i64 %idxprom206
  %166 = load i8, i8* %arrayidx207, align 1, !tbaa !39
  %conv208 = zext i8 %166 to i32
  %sub209 = sub nsw i32 31, %conv208
  %shl210 = shl i32 1, %sub209
  store i32 %shl210, i32* %v, align 4, !tbaa !5
  %167 = bitcast i32* %u to i8*
  call void @llvm.lifetime.start(i64 4, i8* %167) #1
  %168 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom211 = sext i32 %168 to i64
  %arrayidx212 = getelementptr inbounds [64 x i32], [64 x i32]* %c, i32 0, i64 %idxprom211
  %169 = load i32, i32* %arrayidx212, align 4, !tbaa !5
  %170 = load i32, i32* %v, align 4, !tbaa !5
  %sub213 = sub nsw i32 %170, 1
  %and = and i32 %169, %sub213
  store i32 %and, i32* %u, align 4, !tbaa !5
  %171 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom214 = sext i32 %171 to i64
  %172 = load i32*, i32** %cg_num.addr, align 8, !tbaa !1
  %arrayidx215 = getelementptr inbounds i32, i32* %172, i64 %idxprom214
  %173 = load i32, i32* %arrayidx215, align 4, !tbaa !5
  %cmp216 = icmp eq i32 %173, 0
  br i1 %cmp216, label %if.then.218, label %if.end.219

if.then.218:                                      ; preds = %for.body.204
  store i32 22, i32* %cleanup.dest.slot
  br label %cleanup

if.end.219:                                       ; preds = %for.body.204
  %174 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom220 = sext i32 %174 to i64
  %175 = load i32*, i32** %cg_num.addr, align 8, !tbaa !1
  %arrayidx221 = getelementptr inbounds i32, i32* %175, i64 %idxprom220
  %176 = load i32, i32* %arrayidx221, align 4, !tbaa !5
  %cmp222 = icmp sgt i32 %176, 0
  br i1 %cmp222, label %if.then.224, label %if.else.226

if.then.224:                                      ; preds = %if.end.219
  %177 = load i32, i32* %v, align 4, !tbaa !5
  %178 = load i32, i32* %u, align 4, !tbaa !5
  %sub225 = sub nsw i32 %177, %178
  store i32 %sub225, i32* %a, align 4, !tbaa !5
  br label %if.end.229

if.else.226:                                      ; preds = %if.end.219
  %179 = load i32, i32* %u, align 4, !tbaa !5
  %sub227 = sub nsw i32 0, %179
  %sub228 = sub nsw i32 %sub227, 1
  store i32 %sub228, i32* %a, align 4, !tbaa !5
  br label %if.end.229

if.end.229:                                       ; preds = %if.else.226, %if.then.224
  %180 = load i32, i32* %a, align 4, !tbaa !5
  %conv230 = sext i32 %180 to i64
  %181 = load i32, i32* %cg_den.addr, align 4, !tbaa !5
  %conv231 = sext i32 %181 to i64
  %mul232 = mul nsw i64 %conv230, %conv231
  %182 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom233 = sext i32 %182 to i64
  %arrayidx234 = getelementptr inbounds [64 x i64], [64 x i64]* %f, i32 0, i64 %idxprom233
  %183 = load i64, i64* %arrayidx234, align 8, !tbaa !25
  %sub235 = sub i64 %mul232, %183
  %184 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom236 = sext i32 %184 to i64
  %185 = load i32*, i32** %cg_num.addr, align 8, !tbaa !1
  %arrayidx237 = getelementptr inbounds i32, i32* %185, i64 %idxprom236
  %186 = load i32, i32* %arrayidx237, align 4, !tbaa !5
  %conv238 = sext i32 %186 to i64
  %div239 = udiv i64 %sub235, %conv238
  store i64 %div239, i64* %x205, align 8, !tbaa !25
  %187 = load i32, i32* %i, align 4, !tbaa !5
  %conv240 = sext i32 %187 to i64
  %188 = load i64, i64* %x205, align 8, !tbaa !25
  %add241 = add nsw i64 %conv240, %188
  %189 = load i32, i32* %i1, align 4, !tbaa !5
  %conv242 = sext i32 %189 to i64
  %cmp243 = icmp sge i64 %add241, %conv242
  br i1 %cmp243, label %if.then.245, label %if.else.246

if.then.245:                                      ; preds = %if.end.229
  store i32 22, i32* %cleanup.dest.slot
  br label %cleanup

if.else.246:                                      ; preds = %if.end.229
  %190 = load i64, i64* %x205, align 8, !tbaa !25
  %cmp247 = icmp slt i64 %190, 0
  br i1 %cmp247, label %if.then.249, label %if.else.250

if.then.249:                                      ; preds = %if.else.246
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.250:                                      ; preds = %if.else.246
  %191 = load i32, i32* %di, align 4, !tbaa !5
  %192 = load i64, i64* %x205, align 8, !tbaa !25
  %conv251 = trunc i64 %192 to i32
  %cmp252 = icmp sgt i32 %191, %conv251
  br i1 %cmp252, label %if.then.254, label %if.end.260

if.then.254:                                      ; preds = %if.else.250
  %193 = load i64, i64* %x205, align 8, !tbaa !25
  %conv255 = trunc i64 %193 to i32
  store i32 %conv255, i32* %di, align 4, !tbaa !5
  %194 = load i32, i32* %di, align 4, !tbaa !5
  %cmp256 = icmp sle i32 %194, 1
  br i1 %cmp256, label %if.then.258, label %if.end.259

if.then.258:                                      ; preds = %if.then.254
  store i32 1, i32* %di, align 4, !tbaa !5
  store i32 20, i32* %cleanup.dest.slot
  br label %cleanup

if.end.259:                                       ; preds = %if.then.254
  br label %if.end.260

if.end.260:                                       ; preds = %if.end.259, %if.else.250
  br label %if.end.261

if.end.261:                                       ; preds = %if.end.260
  br label %if.end.262

if.end.262:                                       ; preds = %if.end.261
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.262, %if.then.258, %if.then.249, %if.then.245, %if.then.218
  %195 = bitcast i32* %u to i8*
  call void @llvm.lifetime.end(i64 4, i8* %195) #1
  %196 = bitcast i32* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %196) #1
  %197 = bitcast i64* %x205 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %197) #1
  %198 = bitcast i32* %a to i8*
  call void @llvm.lifetime.end(i64 4, i8* %198) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.362 [
    i32 0, label %cleanup.cont
    i32 22, label %for.inc.266
    i32 20, label %for.end.268
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.266

for.inc.266:                                      ; preds = %cleanup.cont, %cleanup
  %199 = load i32, i32* %k, align 4, !tbaa !5
  %inc267 = add nsw i32 %199, 1
  store i32 %inc267, i32* %k, align 4, !tbaa !5
  br label %for.cond.201

for.end.268:                                      ; preds = %cleanup, %for.cond.201
  br label %if.end.269

if.end.269:                                       ; preds = %for.end.268
  br label %if.end.270

if.end.270:                                       ; preds = %if.end.269, %for.end.193
  br label %for.inc.271

for.inc.271:                                      ; preds = %if.end.270
  %200 = load i32, i32* %di, align 4, !tbaa !5
  %201 = load i32, i32* %i, align 4, !tbaa !5
  %add272 = add nsw i32 %201, %200
  store i32 %add272, i32* %i, align 4, !tbaa !5
  br label %for.cond.16

for.end.273:                                      ; preds = %if.then.197, %for.cond.16
  %202 = load i32, i32* %bi, align 4, !tbaa !5
  %203 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip274 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %203, i32 0, i32 0
  %204 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip274, align 8, !tbaa !19
  %p275 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %204, i32 0, i32 0
  %x276 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p275, i32 0, i32 0
  %205 = load i32, i32* %x276, align 4, !tbaa !26
  %shr277 = ashr i32 %205, 8
  %cmp278 = icmp sgt i32 %202, %shr277
  br i1 %cmp278, label %cond.true.280, label %cond.false.281

cond.true.280:                                    ; preds = %for.end.273
  %206 = load i32, i32* %bi, align 4, !tbaa !5
  br label %cond.end.286

cond.false.281:                                   ; preds = %for.end.273
  %207 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip282 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %207, i32 0, i32 0
  %208 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip282, align 8, !tbaa !19
  %p283 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %208, i32 0, i32 0
  %x284 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p283, i32 0, i32 0
  %209 = load i32, i32* %x284, align 4, !tbaa !26
  %shr285 = ashr i32 %209, 8
  br label %cond.end.286

cond.end.286:                                     ; preds = %cond.false.281, %cond.true.280
  %cond287 = phi i32 [ %206, %cond.true.280 ], [ %shr285, %cond.false.281 ]
  store i32 %cond287, i32* %si, align 4, !tbaa !5
  %210 = load i32, i32* %i, align 4, !tbaa !5
  %211 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip288 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %211, i32 0, i32 0
  %212 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip288, align 8, !tbaa !19
  %q289 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %212, i32 0, i32 1
  %x290 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q289, i32 0, i32 0
  %213 = load i32, i32* %x290, align 4, !tbaa !27
  %add291 = add nsw i32 %213, 255
  %shr292 = ashr i32 %add291, 8
  %cmp293 = icmp slt i32 %210, %shr292
  br i1 %cmp293, label %cond.true.295, label %cond.false.296

cond.true.295:                                    ; preds = %cond.end.286
  %214 = load i32, i32* %i, align 4, !tbaa !5
  br label %cond.end.302

cond.false.296:                                   ; preds = %cond.end.286
  %215 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip297 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %215, i32 0, i32 0
  %216 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip297, align 8, !tbaa !19
  %q298 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %216, i32 0, i32 1
  %x299 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q298, i32 0, i32 0
  %217 = load i32, i32* %x299, align 4, !tbaa !27
  %add300 = add nsw i32 %217, 255
  %shr301 = ashr i32 %add300, 8
  br label %cond.end.302

cond.end.302:                                     ; preds = %cond.false.296, %cond.true.295
  %cond303 = phi i32 [ %214, %cond.true.295 ], [ %shr301, %cond.false.296 ]
  store i32 %cond303, i32* %ei, align 4, !tbaa !5
  %218 = load i32, i32* %si, align 4, !tbaa !5
  %219 = load i32, i32* %ei, align 4, !tbaa !5
  %cmp304 = icmp slt i32 %218, %219
  br i1 %cmp304, label %if.then.306, label %if.end.361

if.then.306:                                      ; preds = %cond.end.302
  %220 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %swap_axes307 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %220, i32 0, i32 1
  %221 = load i32, i32* %swap_axes307, align 4, !tbaa !28
  %tobool308 = icmp ne i32 %221, 0
  br i1 %tobool308, label %if.then.309, label %if.else.323

if.then.309:                                      ; preds = %if.then.306
  %222 = load i32, i32* %j.addr, align 4, !tbaa !5
  %shl310 = shl i32 %222, 8
  %p311 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %rect, i32 0, i32 0
  %x312 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p311, i32 0, i32 0
  store i32 %shl310, i32* %x312, align 4, !tbaa !26
  %223 = load i32, i32* %si, align 4, !tbaa !5
  %shl313 = shl i32 %223, 8
  %p314 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %rect, i32 0, i32 0
  %y315 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p314, i32 0, i32 1
  store i32 %shl313, i32* %y315, align 4, !tbaa !21
  %224 = load i32, i32* %j.addr, align 4, !tbaa !5
  %add316 = add nsw i32 %224, 1
  %shl317 = shl i32 %add316, 8
  %q318 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %rect, i32 0, i32 1
  %x319 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q318, i32 0, i32 0
  store i32 %shl317, i32* %x319, align 4, !tbaa !27
  %225 = load i32, i32* %ei, align 4, !tbaa !5
  %shl320 = shl i32 %225, 8
  %q321 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %rect, i32 0, i32 1
  %y322 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q321, i32 0, i32 1
  store i32 %shl320, i32* %y322, align 4, !tbaa !24
  br label %if.end.337

if.else.323:                                      ; preds = %if.then.306
  %226 = load i32, i32* %si, align 4, !tbaa !5
  %shl324 = shl i32 %226, 8
  %p325 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %rect, i32 0, i32 0
  %x326 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p325, i32 0, i32 0
  store i32 %shl324, i32* %x326, align 4, !tbaa !26
  %227 = load i32, i32* %j.addr, align 4, !tbaa !5
  %shl327 = shl i32 %227, 8
  %p328 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %rect, i32 0, i32 0
  %y329 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p328, i32 0, i32 1
  store i32 %shl327, i32* %y329, align 4, !tbaa !21
  %228 = load i32, i32* %ei, align 4, !tbaa !5
  %shl330 = shl i32 %228, 8
  %q331 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %rect, i32 0, i32 1
  %x332 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q331, i32 0, i32 0
  store i32 %shl330, i32* %x332, align 4, !tbaa !27
  %229 = load i32, i32* %j.addr, align 4, !tbaa !5
  %add333 = add nsw i32 %229, 1
  %shl334 = shl i32 %add333, 8
  %q335 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %rect, i32 0, i32 1
  %y336 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q335, i32 0, i32 1
  store i32 %shl334, i32* %y336, align 4, !tbaa !24
  br label %if.end.337

if.end.337:                                       ; preds = %if.else.323, %if.then.309
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.338

for.cond.338:                                     ; preds = %for.inc.355, %if.end.337
  %230 = load i32, i32* %k, align 4, !tbaa !5
  %231 = load i32, i32* %n, align 4, !tbaa !5
  %cmp339 = icmp slt i32 %230, %231
  br i1 %cmp339, label %for.body.341, label %for.end.357

for.body.341:                                     ; preds = %for.cond.338
  %232 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom342 = sext i32 %232 to i64
  %arrayidx343 = getelementptr inbounds [64 x i32], [64 x i32]* %curr, i32 0, i64 %idxprom342
  %233 = load i32, i32* %arrayidx343, align 4, !tbaa !5
  %shl344 = shl i32 %233, 1
  %234 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom345 = sext i32 %234 to i64
  %arrayidx346 = getelementptr inbounds [64 x i32], [64 x i32]* %curr, i32 0, i64 %idxprom345
  %235 = load i32, i32* %arrayidx346, align 4, !tbaa !5
  %shr347 = ashr i32 %235, 11
  %add348 = add nsw i32 %shl344, %shr347
  %conv349 = trunc i32 %add348 to i16
  %236 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom350 = sext i32 %236 to i64
  %colors351 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %devc, i32 0, i32 1
  %devn352 = bitcast %union._c* %colors351 to %struct._devn*
  %values353 = getelementptr inbounds %struct._devn, %struct._devn* %devn352, i32 0, i32 0
  %arrayidx354 = getelementptr inbounds [64 x i16], [64 x i16]* %values353, i32 0, i64 %idxprom350
  store i16 %conv349, i16* %arrayidx354, align 2, !tbaa !29
  br label %for.inc.355

for.inc.355:                                      ; preds = %for.body.341
  %237 = load i32, i32* %k, align 4, !tbaa !5
  %inc356 = add nsw i32 %237, 1
  store i32 %inc356, i32* %k, align 4, !tbaa !5
  br label %for.cond.338

for.end.357:                                      ; preds = %for.cond.338
  %238 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs358 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %238, i32 0, i32 42
  %fill_rectangle_hl_color359 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs358, i32 0, i32 54
  %239 = load i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %fill_rectangle_hl_color359, align 8, !tbaa !30
  %240 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call360 = call i32 %239(%struct.gx_device_s* %240, %struct.gs_fixed_rect_s* %rect, %struct.gs_imager_state_s* null, %struct.gx_device_color_s* %devc, %struct.gx_clip_path_s* null) #2
  store i32 %call360, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.362

if.end.361:                                       ; preds = %cond.end.302
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.362

cleanup.362:                                      ; preds = %if.end.361, %for.end.357, %cleanup, %if.then.180, %if.then
  %241 = bitcast %struct.gx_device_color_s* %devc to i8*
  call void @llvm.lifetime.end(i64 656, i8* %241) #1
  %242 = bitcast %struct.gs_fixed_rect_s* %rect to i8*
  call void @llvm.lifetime.end(i64 16, i8* %242) #1
  %243 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %243) #1
  %244 = bitcast i32* %di to i8*
  call void @llvm.lifetime.end(i64 4, i8* %244) #1
  %245 = bitcast i32* %ei to i8*
  call void @llvm.lifetime.end(i64 4, i8* %245) #1
  %246 = bitcast i32* %si to i8*
  call void @llvm.lifetime.end(i64 4, i8* %246) #1
  %247 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %247) #1
  %248 = bitcast %struct.gx_device_color_info_s** %cinfo to i8*
  call void @llvm.lifetime.end(i64 8, i8* %248) #1
  %249 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %249) #1
  %250 = bitcast i32* %bi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %250) #1
  %251 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %251) #1
  %252 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %252) #1
  %253 = bitcast [64 x i64]* %f to i8*
  call void @llvm.lifetime.end(i64 512, i8* %253) #1
  %254 = bitcast [64 x i32]* %curr to i8*
  call void @llvm.lifetime.end(i64 256, i8* %254) #1
  %255 = bitcast [64 x i32]* %c to i8*
  call void @llvm.lifetime.end(i64 256, i8* %255) #1
  %256 = load i32, i32* %retval
  ret i32 %256
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @gx_devn_diff(i32* %devn1, i32* %devn2, i32 %num) #0 {
entry:
  %retval = alloca i32, align 4
  %devn1.addr = alloca i32*, align 8
  %devn2.addr = alloca i32*, align 8
  %num.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32* %devn1, i32** %devn1.addr, align 8, !tbaa !1
  store i32* %devn2, i32** %devn2.addr, align 8, !tbaa !1
  store i32 %num, i32* %num.addr, align 4, !tbaa !5
  %0 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %k, align 4, !tbaa !5
  %2 = load i32, i32* %num.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom = sext i32 %3 to i64
  %4 = load i32*, i32** %devn1.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %6 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom1 = sext i32 %6 to i64
  %7 = load i32*, i32** %devn2.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i32, i32* %7, i64 %idxprom1
  %8 = load i32, i32* %arrayidx2, align 4, !tbaa !5
  %cmp3 = icmp ne i32 %5, %8
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %k, align 4, !tbaa !5
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %10 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_fill_linear_color_scanline(%struct.gx_device_s* %dev, %struct.gs_fill_attributes_s* %fa, i32 %i0, i32 %j, i32 %w, i32* %c0, i32* %c0f, i32* %cg_num, i32 %cg_den) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %fa.addr = alloca %struct.gs_fill_attributes_s*, align 8
  %i0.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %c0.addr = alloca i32*, align 8
  %c0f.addr = alloca i32*, align 8
  %cg_num.addr = alloca i32*, align 8
  %cg_den.addr = alloca i32, align 4
  %devn = alloca i32, align 4
  %c = alloca [64 x i32], align 16
  %f = alloca [64 x i64], align 16
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  %bi = alloca i32, align 4
  %k = alloca i32, align 4
  %ci0 = alloca i64, align 8
  %ci1 = alloca i64, align 8
  %cinfo = alloca %struct.gx_device_color_info_s*, align 8
  %n = alloca i32, align 4
  %si = alloca i32, align 4
  %ei = alloca i32, align 4
  %di = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %shift = alloca i32, align 4
  %bits = alloca i32, align 4
  %shift41 = alloca i32, align 4
  %bits46 = alloca i32, align 4
  %m = alloca i32, align 4
  %shift95 = alloca i32, align 4
  %bits100 = alloca i32, align 4
  %M = alloca i64, align 8
  %m117 = alloca i32, align 4
  %a = alloca i32, align 4
  %x217 = alloca i64, align 8
  %v = alloca i32, align 4
  %u = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_fill_attributes_s* %fa, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  store i32 %i0, i32* %i0.addr, align 4, !tbaa !5
  store i32 %j, i32* %j.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32* %c0, i32** %c0.addr, align 8, !tbaa !1
  store i32* %c0f, i32** %c0f.addr, align 8, !tbaa !1
  store i32* %cg_num, i32** %cg_num.addr, align 8, !tbaa !1
  store i32 %cg_den, i32* %cg_den.addr, align 4, !tbaa !5
  %0 = bitcast i32* %devn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 42
  %dev_spec_op = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 65
  %2 = load i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)** %dev_spec_op, align 8, !tbaa !40
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 %2(%struct.gx_device_s* %3, i32 11, i8* null, i32 0) #2
  store i32 %call, i32* %devn, align 4, !tbaa !5
  %4 = bitcast [64 x i32]* %c to i8*
  call void @llvm.lifetime.start(i64 256, i8* %4) #1
  %5 = bitcast [64 x i64]* %f to i8*
  call void @llvm.lifetime.start(i64 512, i8* %5) #1
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i32, i32* %i0.addr, align 4, !tbaa !5
  %9 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add = add nsw i32 %8, %9
  store i32 %add, i32* %i1, align 4, !tbaa !5
  %10 = bitcast i32* %bi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load i32, i32* %i0.addr, align 4, !tbaa !5
  store i32 %11, i32* %bi, align 4, !tbaa !5
  %12 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i64* %ci0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  store i64 0, i64* %ci0, align 8, !tbaa !25
  %14 = bitcast i64* %ci1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast %struct.gx_device_color_info_s** %cinfo to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %16, i32 0, i32 11
  store %struct.gx_device_color_info_s* %color_info, %struct.gx_device_color_info_s** %cinfo, align 8, !tbaa !1
  %17 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %cinfo, align 8, !tbaa !1
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %18, i32 0, i32 1
  %19 = load i32, i32* %num_components, align 4, !tbaa !7
  store i32 %19, i32* %n, align 4, !tbaa !5
  %20 = bitcast i32* %si to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = bitcast i32* %ei to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = bitcast i32* %di to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = load i32, i32* %devn, align 4, !tbaa !5
  %tobool = icmp ne i32 %24, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %25 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %cinfo, align 8, !tbaa !1
  %polarity = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %25, i32 0, i32 2
  %26 = load i32, i32* %polarity, align 4, !tbaa !41
  %cmp = icmp eq i32 %26, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %28 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %29 = load i32, i32* %i0.addr, align 4, !tbaa !5
  %30 = load i32, i32* %j.addr, align 4, !tbaa !5
  %31 = load i32, i32* %w.addr, align 4, !tbaa !5
  %32 = load i32*, i32** %c0.addr, align 8, !tbaa !1
  %33 = load i32*, i32** %c0f.addr, align 8, !tbaa !1
  %34 = load i32*, i32** %cg_num.addr, align 8, !tbaa !1
  %35 = load i32, i32* %cg_den.addr, align 4, !tbaa !5
  %call1 = call i32 @gx_hl_fill_linear_color_scanline(%struct.gx_device_s* %27, %struct.gs_fill_attributes_s* %28, i32 %29, i32 %30, i32 %31, i32* %32, i32* %33, i32* %34, i32 %35) #2
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.339

if.end:                                           ; preds = %land.lhs.true, %entry
  %36 = load i32, i32* %j.addr, align 4, !tbaa !5
  %37 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %37, i32 0, i32 0
  %38 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip, align 8, !tbaa !19
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %38, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 1
  %39 = load i32, i32* %y, align 4, !tbaa !21
  %shr = ashr i32 %39, 8
  %cmp2 = icmp slt i32 %36, %shr
  br i1 %cmp2, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %40 = load i32, i32* %j.addr, align 4, !tbaa !5
  %41 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip3 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %41, i32 0, i32 0
  %42 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip3, align 8, !tbaa !19
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %42, i32 0, i32 1
  %y4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 1
  %43 = load i32, i32* %y4, align 4, !tbaa !24
  %add5 = add nsw i32 %43, 255
  %shr6 = ashr i32 %add5, 8
  %cmp7 = icmp sgt i32 %40, %shr6
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %lor.lhs.false, %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.339

if.end.9:                                         ; preds = %lor.lhs.false
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.9
  %44 = load i32, i32* %k, align 4, !tbaa !5
  %45 = load i32, i32* %n, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %44, %45
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %46 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #1
  %47 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom = sext i32 %47 to i64
  %48 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %cinfo, align 8, !tbaa !1
  %comp_shift = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %48, i32 0, i32 11
  %arrayidx = getelementptr inbounds [64 x i8], [64 x i8]* %comp_shift, i32 0, i64 %idxprom
  %49 = load i8, i8* %arrayidx, align 1, !tbaa !39
  %conv = zext i8 %49 to i32
  store i32 %conv, i32* %shift, align 4, !tbaa !5
  %50 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %50) #1
  %51 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom11 = sext i32 %51 to i64
  %52 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %cinfo, align 8, !tbaa !1
  %comp_bits = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %52, i32 0, i32 12
  %arrayidx12 = getelementptr inbounds [64 x i8], [64 x i8]* %comp_bits, i32 0, i64 %idxprom11
  %53 = load i8, i8* %arrayidx12, align 1, !tbaa !39
  %conv13 = zext i8 %53 to i32
  store i32 %conv13, i32* %bits, align 4, !tbaa !5
  %54 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom14 = sext i32 %54 to i64
  %55 = load i32*, i32** %c0.addr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i32, i32* %55, i64 %idxprom14
  %56 = load i32, i32* %arrayidx15, align 4, !tbaa !5
  %57 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom16 = sext i32 %57 to i64
  %arrayidx17 = getelementptr inbounds [64 x i32], [64 x i32]* %c, i32 0, i64 %idxprom16
  store i32 %56, i32* %arrayidx17, align 4, !tbaa !5
  %58 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom18 = sext i32 %58 to i64
  %59 = load i32*, i32** %c0f.addr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i32, i32* %59, i64 %idxprom18
  %60 = load i32, i32* %arrayidx19, align 4, !tbaa !5
  %conv20 = sext i32 %60 to i64
  %61 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom21 = sext i32 %61 to i64
  %arrayidx22 = getelementptr inbounds [64 x i64], [64 x i64]* %f, i32 0, i64 %idxprom21
  store i64 %conv20, i64* %arrayidx22, align 8, !tbaa !25
  %62 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom23 = sext i32 %62 to i64
  %arrayidx24 = getelementptr inbounds [64 x i32], [64 x i32]* %c, i32 0, i64 %idxprom23
  %63 = load i32, i32* %arrayidx24, align 4, !tbaa !5
  %64 = load i32, i32* %bits, align 4, !tbaa !5
  %conv25 = sext i32 %64 to i64
  %sub = sub i64 31, %conv25
  %sh_prom = trunc i64 %sub to i32
  %shr26 = ashr i32 %63, %sh_prom
  %conv27 = sext i32 %shr26 to i64
  %65 = load i32, i32* %shift, align 4, !tbaa !5
  %sh_prom28 = zext i32 %65 to i64
  %shl = shl i64 %conv27, %sh_prom28
  %66 = load i64, i64* %ci0, align 8, !tbaa !25
  %or = or i64 %66, %shl
  store i64 %or, i64* %ci0, align 8, !tbaa !25
  %67 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %69 = load i32, i32* %k, align 4, !tbaa !5
  %inc = add nsw i32 %69, 1
  store i32 %inc, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %70 = load i32, i32* %i0.addr, align 4, !tbaa !5
  %add29 = add nsw i32 %70, 1
  store i32 %add29, i32* %i, align 4, !tbaa !5
  store i32 1, i32* %di, align 4, !tbaa !5
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.284, %for.end
  %71 = load i32, i32* %i, align 4, !tbaa !5
  %72 = load i32, i32* %i1, align 4, !tbaa !5
  %cmp31 = icmp slt i32 %71, %72
  br i1 %cmp31, label %for.body.33, label %for.end.286

for.body.33:                                      ; preds = %for.cond.30
  %73 = load i32, i32* %di, align 4, !tbaa !5
  %cmp34 = icmp eq i32 %73, 1
  br i1 %cmp34, label %if.then.36, label %if.else

if.then.36:                                       ; preds = %for.body.33
  store i64 0, i64* %ci1, align 8, !tbaa !25
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.88, %if.then.36
  %74 = load i32, i32* %k, align 4, !tbaa !5
  %75 = load i32, i32* %n, align 4, !tbaa !5
  %cmp38 = icmp slt i32 %74, %75
  br i1 %cmp38, label %for.body.40, label %for.end.90

for.body.40:                                      ; preds = %for.cond.37
  %76 = bitcast i32* %shift41 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %76) #1
  %77 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom42 = sext i32 %77 to i64
  %78 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %cinfo, align 8, !tbaa !1
  %comp_shift43 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %78, i32 0, i32 11
  %arrayidx44 = getelementptr inbounds [64 x i8], [64 x i8]* %comp_shift43, i32 0, i64 %idxprom42
  %79 = load i8, i8* %arrayidx44, align 1, !tbaa !39
  %conv45 = zext i8 %79 to i32
  store i32 %conv45, i32* %shift41, align 4, !tbaa !5
  %80 = bitcast i32* %bits46 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %80) #1
  %81 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom47 = sext i32 %81 to i64
  %82 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %cinfo, align 8, !tbaa !1
  %comp_bits48 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %82, i32 0, i32 12
  %arrayidx49 = getelementptr inbounds [64 x i8], [64 x i8]* %comp_bits48, i32 0, i64 %idxprom47
  %83 = load i8, i8* %arrayidx49, align 1, !tbaa !39
  %conv50 = zext i8 %83 to i32
  store i32 %conv50, i32* %bits46, align 4, !tbaa !5
  %84 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom51 = sext i32 %84 to i64
  %85 = load i32*, i32** %cg_num.addr, align 8, !tbaa !1
  %arrayidx52 = getelementptr inbounds i32, i32* %85, i64 %idxprom51
  %86 = load i32, i32* %arrayidx52, align 4, !tbaa !5
  %tobool53 = icmp ne i32 %86, 0
  br i1 %tobool53, label %if.then.54, label %if.end.77

if.then.54:                                       ; preds = %for.body.40
  %87 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %87) #1
  %88 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom55 = sext i32 %88 to i64
  %arrayidx56 = getelementptr inbounds [64 x i64], [64 x i64]* %f, i32 0, i64 %idxprom55
  %89 = load i64, i64* %arrayidx56, align 8, !tbaa !25
  %90 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom57 = sext i32 %90 to i64
  %91 = load i32*, i32** %cg_num.addr, align 8, !tbaa !1
  %arrayidx58 = getelementptr inbounds i32, i32* %91, i64 %idxprom57
  %92 = load i32, i32* %arrayidx58, align 4, !tbaa !5
  %conv59 = sext i32 %92 to i64
  %add60 = add i64 %89, %conv59
  %conv61 = trunc i64 %add60 to i32
  store i32 %conv61, i32* %m, align 4, !tbaa !5
  %93 = load i32, i32* %m, align 4, !tbaa !5
  %94 = load i32, i32* %cg_den.addr, align 4, !tbaa !5
  %div = sdiv i32 %93, %94
  %95 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom62 = sext i32 %95 to i64
  %arrayidx63 = getelementptr inbounds [64 x i32], [64 x i32]* %c, i32 0, i64 %idxprom62
  %96 = load i32, i32* %arrayidx63, align 4, !tbaa !5
  %add64 = add nsw i32 %96, %div
  store i32 %add64, i32* %arrayidx63, align 4, !tbaa !5
  %97 = load i32, i32* %m, align 4, !tbaa !5
  %98 = load i32, i32* %cg_den.addr, align 4, !tbaa !5
  %div65 = sdiv i32 %97, %98
  %99 = load i32, i32* %cg_den.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %div65, %99
  %100 = load i32, i32* %m, align 4, !tbaa !5
  %sub66 = sub nsw i32 %100, %mul
  store i32 %sub66, i32* %m, align 4, !tbaa !5
  %101 = load i32, i32* %m, align 4, !tbaa !5
  %cmp67 = icmp slt i32 %101, 0
  br i1 %cmp67, label %if.then.69, label %if.end.73

if.then.69:                                       ; preds = %if.then.54
  %102 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom70 = sext i32 %102 to i64
  %arrayidx71 = getelementptr inbounds [64 x i32], [64 x i32]* %c, i32 0, i64 %idxprom70
  %103 = load i32, i32* %arrayidx71, align 4, !tbaa !5
  %dec = add nsw i32 %103, -1
  store i32 %dec, i32* %arrayidx71, align 4, !tbaa !5
  %104 = load i32, i32* %cg_den.addr, align 4, !tbaa !5
  %105 = load i32, i32* %m, align 4, !tbaa !5
  %add72 = add nsw i32 %105, %104
  store i32 %add72, i32* %m, align 4, !tbaa !5
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.69, %if.then.54
  %106 = load i32, i32* %m, align 4, !tbaa !5
  %conv74 = sext i32 %106 to i64
  %107 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom75 = sext i32 %107 to i64
  %arrayidx76 = getelementptr inbounds [64 x i64], [64 x i64]* %f, i32 0, i64 %idxprom75
  store i64 %conv74, i64* %arrayidx76, align 8, !tbaa !25
  %108 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #1
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.73, %for.body.40
  %109 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom78 = sext i32 %109 to i64
  %arrayidx79 = getelementptr inbounds [64 x i32], [64 x i32]* %c, i32 0, i64 %idxprom78
  %110 = load i32, i32* %arrayidx79, align 4, !tbaa !5
  %111 = load i32, i32* %bits46, align 4, !tbaa !5
  %conv80 = sext i32 %111 to i64
  %sub81 = sub i64 31, %conv80
  %sh_prom82 = trunc i64 %sub81 to i32
  %shr83 = ashr i32 %110, %sh_prom82
  %conv84 = sext i32 %shr83 to i64
  %112 = load i32, i32* %shift41, align 4, !tbaa !5
  %sh_prom85 = zext i32 %112 to i64
  %shl86 = shl i64 %conv84, %sh_prom85
  %113 = load i64, i64* %ci1, align 8, !tbaa !25
  %or87 = or i64 %113, %shl86
  store i64 %or87, i64* %ci1, align 8, !tbaa !25
  %114 = bitcast i32* %bits46 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #1
  %115 = bitcast i32* %shift41 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #1
  br label %for.inc.88

for.inc.88:                                       ; preds = %if.end.77
  %116 = load i32, i32* %k, align 4, !tbaa !5
  %inc89 = add nsw i32 %116, 1
  store i32 %inc89, i32* %k, align 4, !tbaa !5
  br label %for.cond.37

for.end.90:                                       ; preds = %for.cond.37
  br label %if.end.155

if.else:                                          ; preds = %for.body.33
  store i64 0, i64* %ci1, align 8, !tbaa !25
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.91

for.cond.91:                                      ; preds = %for.inc.152, %if.else
  %117 = load i32, i32* %k, align 4, !tbaa !5
  %118 = load i32, i32* %n, align 4, !tbaa !5
  %cmp92 = icmp slt i32 %117, %118
  br i1 %cmp92, label %for.body.94, label %for.end.154

for.body.94:                                      ; preds = %for.cond.91
  %119 = bitcast i32* %shift95 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %119) #1
  %120 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom96 = sext i32 %120 to i64
  %121 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %cinfo, align 8, !tbaa !1
  %comp_shift97 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %121, i32 0, i32 11
  %arrayidx98 = getelementptr inbounds [64 x i8], [64 x i8]* %comp_shift97, i32 0, i64 %idxprom96
  %122 = load i8, i8* %arrayidx98, align 1, !tbaa !39
  %conv99 = zext i8 %122 to i32
  store i32 %conv99, i32* %shift95, align 4, !tbaa !5
  %123 = bitcast i32* %bits100 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %123) #1
  %124 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom101 = sext i32 %124 to i64
  %125 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %cinfo, align 8, !tbaa !1
  %comp_bits102 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %125, i32 0, i32 12
  %arrayidx103 = getelementptr inbounds [64 x i8], [64 x i8]* %comp_bits102, i32 0, i64 %idxprom101
  %126 = load i8, i8* %arrayidx103, align 1, !tbaa !39
  %conv104 = zext i8 %126 to i32
  store i32 %conv104, i32* %bits100, align 4, !tbaa !5
  %127 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom105 = sext i32 %127 to i64
  %128 = load i32*, i32** %cg_num.addr, align 8, !tbaa !1
  %arrayidx106 = getelementptr inbounds i32, i32* %128, i64 %idxprom105
  %129 = load i32, i32* %arrayidx106, align 4, !tbaa !5
  %tobool107 = icmp ne i32 %129, 0
  br i1 %tobool107, label %if.then.108, label %if.end.141

if.then.108:                                      ; preds = %for.body.94
  %130 = bitcast i64* %M to i8*
  call void @llvm.lifetime.start(i64 8, i8* %130) #1
  %131 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom109 = sext i32 %131 to i64
  %arrayidx110 = getelementptr inbounds [64 x i64], [64 x i64]* %f, i32 0, i64 %idxprom109
  %132 = load i64, i64* %arrayidx110, align 8, !tbaa !25
  %133 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom111 = sext i32 %133 to i64
  %134 = load i32*, i32** %cg_num.addr, align 8, !tbaa !1
  %arrayidx112 = getelementptr inbounds i32, i32* %134, i64 %idxprom111
  %135 = load i32, i32* %arrayidx112, align 4, !tbaa !5
  %conv113 = sext i32 %135 to i64
  %136 = load i32, i32* %di, align 4, !tbaa !5
  %conv114 = sext i32 %136 to i64
  %mul115 = mul nsw i64 %conv113, %conv114
  %add116 = add i64 %132, %mul115
  store i64 %add116, i64* %M, align 8, !tbaa !25
  %137 = bitcast i32* %m117 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %137) #1
  %138 = load i64, i64* %M, align 8, !tbaa !25
  %139 = load i32, i32* %cg_den.addr, align 4, !tbaa !5
  %conv118 = sext i32 %139 to i64
  %div119 = sdiv i64 %138, %conv118
  %conv120 = trunc i64 %div119 to i32
  %140 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom121 = sext i32 %140 to i64
  %arrayidx122 = getelementptr inbounds [64 x i32], [64 x i32]* %c, i32 0, i64 %idxprom121
  %141 = load i32, i32* %arrayidx122, align 4, !tbaa !5
  %add123 = add nsw i32 %141, %conv120
  store i32 %add123, i32* %arrayidx122, align 4, !tbaa !5
  %142 = load i64, i64* %M, align 8, !tbaa !25
  %143 = load i64, i64* %M, align 8, !tbaa !25
  %144 = load i32, i32* %cg_den.addr, align 4, !tbaa !5
  %conv124 = sext i32 %144 to i64
  %div125 = sdiv i64 %143, %conv124
  %145 = load i32, i32* %cg_den.addr, align 4, !tbaa !5
  %conv126 = sext i32 %145 to i64
  %mul127 = mul nsw i64 %div125, %conv126
  %sub128 = sub nsw i64 %142, %mul127
  %conv129 = trunc i64 %sub128 to i32
  store i32 %conv129, i32* %m117, align 4, !tbaa !5
  %146 = load i32, i32* %m117, align 4, !tbaa !5
  %cmp130 = icmp slt i32 %146, 0
  br i1 %cmp130, label %if.then.132, label %if.end.137

if.then.132:                                      ; preds = %if.then.108
  %147 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom133 = sext i32 %147 to i64
  %arrayidx134 = getelementptr inbounds [64 x i32], [64 x i32]* %c, i32 0, i64 %idxprom133
  %148 = load i32, i32* %arrayidx134, align 4, !tbaa !5
  %dec135 = add nsw i32 %148, -1
  store i32 %dec135, i32* %arrayidx134, align 4, !tbaa !5
  %149 = load i32, i32* %cg_den.addr, align 4, !tbaa !5
  %150 = load i32, i32* %m117, align 4, !tbaa !5
  %add136 = add nsw i32 %150, %149
  store i32 %add136, i32* %m117, align 4, !tbaa !5
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.132, %if.then.108
  %151 = load i32, i32* %m117, align 4, !tbaa !5
  %conv138 = sext i32 %151 to i64
  %152 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom139 = sext i32 %152 to i64
  %arrayidx140 = getelementptr inbounds [64 x i64], [64 x i64]* %f, i32 0, i64 %idxprom139
  store i64 %conv138, i64* %arrayidx140, align 8, !tbaa !25
  %153 = bitcast i32* %m117 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %153) #1
  %154 = bitcast i64* %M to i8*
  call void @llvm.lifetime.end(i64 8, i8* %154) #1
  br label %if.end.141

if.end.141:                                       ; preds = %if.end.137, %for.body.94
  %155 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom142 = sext i32 %155 to i64
  %arrayidx143 = getelementptr inbounds [64 x i32], [64 x i32]* %c, i32 0, i64 %idxprom142
  %156 = load i32, i32* %arrayidx143, align 4, !tbaa !5
  %157 = load i32, i32* %bits100, align 4, !tbaa !5
  %conv144 = sext i32 %157 to i64
  %sub145 = sub i64 31, %conv144
  %sh_prom146 = trunc i64 %sub145 to i32
  %shr147 = ashr i32 %156, %sh_prom146
  %conv148 = sext i32 %shr147 to i64
  %158 = load i32, i32* %shift95, align 4, !tbaa !5
  %sh_prom149 = zext i32 %158 to i64
  %shl150 = shl i64 %conv148, %sh_prom149
  %159 = load i64, i64* %ci1, align 8, !tbaa !25
  %or151 = or i64 %159, %shl150
  store i64 %or151, i64* %ci1, align 8, !tbaa !25
  %160 = bitcast i32* %bits100 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %160) #1
  %161 = bitcast i32* %shift95 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %161) #1
  br label %for.inc.152

for.inc.152:                                      ; preds = %if.end.141
  %162 = load i32, i32* %k, align 4, !tbaa !5
  %inc153 = add nsw i32 %162, 1
  store i32 %inc153, i32* %k, align 4, !tbaa !5
  br label %for.cond.91

for.end.154:                                      ; preds = %for.cond.91
  br label %if.end.155

if.end.155:                                       ; preds = %for.end.154, %for.end.90
  %163 = load i64, i64* %ci1, align 8, !tbaa !25
  %164 = load i64, i64* %ci0, align 8, !tbaa !25
  %cmp156 = icmp ne i64 %163, %164
  br i1 %cmp156, label %if.then.158, label %if.else.206

if.then.158:                                      ; preds = %if.end.155
  %165 = load i32, i32* %bi, align 4, !tbaa !5
  %166 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip159 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %166, i32 0, i32 0
  %167 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip159, align 8, !tbaa !19
  %p160 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %167, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p160, i32 0, i32 0
  %168 = load i32, i32* %x, align 4, !tbaa !26
  %shr161 = ashr i32 %168, 8
  %cmp162 = icmp sgt i32 %165, %shr161
  br i1 %cmp162, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.158
  %169 = load i32, i32* %bi, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.then.158
  %170 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip164 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %170, i32 0, i32 0
  %171 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip164, align 8, !tbaa !19
  %p165 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %171, i32 0, i32 0
  %x166 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p165, i32 0, i32 0
  %172 = load i32, i32* %x166, align 4, !tbaa !26
  %shr167 = ashr i32 %172, 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %169, %cond.true ], [ %shr167, %cond.false ]
  store i32 %cond, i32* %si, align 4, !tbaa !5
  %173 = load i32, i32* %i, align 4, !tbaa !5
  %174 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip168 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %174, i32 0, i32 0
  %175 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip168, align 8, !tbaa !19
  %q169 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %175, i32 0, i32 1
  %x170 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q169, i32 0, i32 0
  %176 = load i32, i32* %x170, align 4, !tbaa !27
  %add171 = add nsw i32 %176, 255
  %shr172 = ashr i32 %add171, 8
  %cmp173 = icmp slt i32 %173, %shr172
  br i1 %cmp173, label %cond.true.175, label %cond.false.176

cond.true.175:                                    ; preds = %cond.end
  %177 = load i32, i32* %i, align 4, !tbaa !5
  br label %cond.end.182

cond.false.176:                                   ; preds = %cond.end
  %178 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip177 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %178, i32 0, i32 0
  %179 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip177, align 8, !tbaa !19
  %q178 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %179, i32 0, i32 1
  %x179 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q178, i32 0, i32 0
  %180 = load i32, i32* %x179, align 4, !tbaa !27
  %add180 = add nsw i32 %180, 255
  %shr181 = ashr i32 %add180, 8
  br label %cond.end.182

cond.end.182:                                     ; preds = %cond.false.176, %cond.true.175
  %cond183 = phi i32 [ %177, %cond.true.175 ], [ %shr181, %cond.false.176 ]
  store i32 %cond183, i32* %ei, align 4, !tbaa !5
  %181 = load i32, i32* %si, align 4, !tbaa !5
  %182 = load i32, i32* %ei, align 4, !tbaa !5
  %cmp184 = icmp slt i32 %181, %182
  br i1 %cmp184, label %if.then.186, label %if.end.205

if.then.186:                                      ; preds = %cond.end.182
  %183 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %swap_axes = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %183, i32 0, i32 1
  %184 = load i32, i32* %swap_axes, align 4, !tbaa !28
  %tobool187 = icmp ne i32 %184, 0
  br i1 %tobool187, label %if.then.188, label %if.else.192

if.then.188:                                      ; preds = %if.then.186
  br label %do.body

do.body:                                          ; preds = %if.then.188
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %185 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs189 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %185, i32 0, i32 42
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs189, i32 0, i32 7
  %186 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8, !tbaa !42
  %187 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %188 = load i32, i32* %j.addr, align 4, !tbaa !5
  %189 = load i32, i32* %si, align 4, !tbaa !5
  %190 = load i32, i32* %ei, align 4, !tbaa !5
  %191 = load i32, i32* %si, align 4, !tbaa !5
  %sub190 = sub nsw i32 %190, %191
  %192 = load i64, i64* %ci0, align 8, !tbaa !25
  %call191 = call i32 %186(%struct.gx_device_s* %187, i32 %188, i32 %189, i32 1, i32 %sub190, i64 %192) #2
  store i32 %call191, i32* %code, align 4, !tbaa !5
  br label %if.end.200

if.else.192:                                      ; preds = %if.then.186
  br label %do.body.193

do.body.193:                                      ; preds = %if.else.192
  br label %do.cond.194

do.cond.194:                                      ; preds = %do.body.193
  br label %do.end.195

do.end.195:                                       ; preds = %do.cond.194
  %193 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs196 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %193, i32 0, i32 42
  %fill_rectangle197 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs196, i32 0, i32 7
  %194 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle197, align 8, !tbaa !42
  %195 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %196 = load i32, i32* %si, align 4, !tbaa !5
  %197 = load i32, i32* %j.addr, align 4, !tbaa !5
  %198 = load i32, i32* %ei, align 4, !tbaa !5
  %199 = load i32, i32* %si, align 4, !tbaa !5
  %sub198 = sub nsw i32 %198, %199
  %200 = load i64, i64* %ci0, align 8, !tbaa !25
  %call199 = call i32 %194(%struct.gx_device_s* %195, i32 %196, i32 %197, i32 %sub198, i32 1, i64 %200) #2
  store i32 %call199, i32* %code, align 4, !tbaa !5
  br label %if.end.200

if.end.200:                                       ; preds = %do.end.195, %do.end
  %201 = load i32, i32* %code, align 4, !tbaa !5
  %cmp201 = icmp slt i32 %201, 0
  br i1 %cmp201, label %if.then.203, label %if.end.204

if.then.203:                                      ; preds = %if.end.200
  %202 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %202, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.339

if.end.204:                                       ; preds = %if.end.200
  br label %if.end.205

if.end.205:                                       ; preds = %if.end.204, %cond.end.182
  %203 = load i32, i32* %i, align 4, !tbaa !5
  store i32 %203, i32* %bi, align 4, !tbaa !5
  %204 = load i64, i64* %ci1, align 8, !tbaa !25
  store i64 %204, i64* %ci0, align 8, !tbaa !25
  store i32 1, i32* %di, align 4, !tbaa !5
  br label %if.end.283

if.else.206:                                      ; preds = %if.end.155
  %205 = load i32, i32* %i, align 4, !tbaa !5
  %206 = load i32, i32* %i1, align 4, !tbaa !5
  %cmp207 = icmp eq i32 %205, %206
  br i1 %cmp207, label %if.then.209, label %if.else.211

if.then.209:                                      ; preds = %if.else.206
  %207 = load i32, i32* %i, align 4, !tbaa !5
  %inc210 = add nsw i32 %207, 1
  store i32 %inc210, i32* %i, align 4, !tbaa !5
  br label %for.end.286

if.else.211:                                      ; preds = %if.else.206
  %208 = load i32, i32* %i1, align 4, !tbaa !5
  %209 = load i32, i32* %i, align 4, !tbaa !5
  %sub212 = sub nsw i32 %208, %209
  store i32 %sub212, i32* %di, align 4, !tbaa !5
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.213

for.cond.213:                                     ; preds = %for.inc.279, %if.else.211
  %210 = load i32, i32* %k, align 4, !tbaa !5
  %211 = load i32, i32* %n, align 4, !tbaa !5
  %cmp214 = icmp slt i32 %210, %211
  br i1 %cmp214, label %for.body.216, label %for.end.281

for.body.216:                                     ; preds = %for.cond.213
  %212 = bitcast i32* %a to i8*
  call void @llvm.lifetime.start(i64 4, i8* %212) #1
  %213 = bitcast i64* %x217 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %213) #1
  %214 = bitcast i32* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %214) #1
  %215 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom218 = sext i32 %215 to i64
  %216 = load %struct.gx_device_color_info_s*, %struct.gx_device_color_info_s** %cinfo, align 8, !tbaa !1
  %comp_bits219 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %216, i32 0, i32 12
  %arrayidx220 = getelementptr inbounds [64 x i8], [64 x i8]* %comp_bits219, i32 0, i64 %idxprom218
  %217 = load i8, i8* %arrayidx220, align 1, !tbaa !39
  %conv221 = zext i8 %217 to i32
  %sub222 = sub nsw i32 31, %conv221
  %shl223 = shl i32 1, %sub222
  store i32 %shl223, i32* %v, align 4, !tbaa !5
  %218 = bitcast i32* %u to i8*
  call void @llvm.lifetime.start(i64 4, i8* %218) #1
  %219 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom224 = sext i32 %219 to i64
  %arrayidx225 = getelementptr inbounds [64 x i32], [64 x i32]* %c, i32 0, i64 %idxprom224
  %220 = load i32, i32* %arrayidx225, align 4, !tbaa !5
  %221 = load i32, i32* %v, align 4, !tbaa !5
  %sub226 = sub nsw i32 %221, 1
  %and = and i32 %220, %sub226
  store i32 %and, i32* %u, align 4, !tbaa !5
  %222 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom227 = sext i32 %222 to i64
  %223 = load i32*, i32** %cg_num.addr, align 8, !tbaa !1
  %arrayidx228 = getelementptr inbounds i32, i32* %223, i64 %idxprom227
  %224 = load i32, i32* %arrayidx228, align 4, !tbaa !5
  %cmp229 = icmp eq i32 %224, 0
  br i1 %cmp229, label %if.then.231, label %if.end.232

if.then.231:                                      ; preds = %for.body.216
  store i32 20, i32* %cleanup.dest.slot
  br label %cleanup

if.end.232:                                       ; preds = %for.body.216
  %225 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom233 = sext i32 %225 to i64
  %226 = load i32*, i32** %cg_num.addr, align 8, !tbaa !1
  %arrayidx234 = getelementptr inbounds i32, i32* %226, i64 %idxprom233
  %227 = load i32, i32* %arrayidx234, align 4, !tbaa !5
  %cmp235 = icmp sgt i32 %227, 0
  br i1 %cmp235, label %if.then.237, label %if.else.239

if.then.237:                                      ; preds = %if.end.232
  %228 = load i32, i32* %v, align 4, !tbaa !5
  %229 = load i32, i32* %u, align 4, !tbaa !5
  %sub238 = sub nsw i32 %228, %229
  store i32 %sub238, i32* %a, align 4, !tbaa !5
  br label %if.end.242

if.else.239:                                      ; preds = %if.end.232
  %230 = load i32, i32* %u, align 4, !tbaa !5
  %sub240 = sub nsw i32 0, %230
  %sub241 = sub nsw i32 %sub240, 1
  store i32 %sub241, i32* %a, align 4, !tbaa !5
  br label %if.end.242

if.end.242:                                       ; preds = %if.else.239, %if.then.237
  %231 = load i32, i32* %a, align 4, !tbaa !5
  %conv243 = sext i32 %231 to i64
  %232 = load i32, i32* %cg_den.addr, align 4, !tbaa !5
  %conv244 = sext i32 %232 to i64
  %mul245 = mul nsw i64 %conv243, %conv244
  %233 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom246 = sext i32 %233 to i64
  %arrayidx247 = getelementptr inbounds [64 x i64], [64 x i64]* %f, i32 0, i64 %idxprom246
  %234 = load i64, i64* %arrayidx247, align 8, !tbaa !25
  %sub248 = sub i64 %mul245, %234
  %235 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom249 = sext i32 %235 to i64
  %236 = load i32*, i32** %cg_num.addr, align 8, !tbaa !1
  %arrayidx250 = getelementptr inbounds i32, i32* %236, i64 %idxprom249
  %237 = load i32, i32* %arrayidx250, align 4, !tbaa !5
  %conv251 = sext i32 %237 to i64
  %div252 = udiv i64 %sub248, %conv251
  store i64 %div252, i64* %x217, align 8, !tbaa !25
  %238 = load i32, i32* %i, align 4, !tbaa !5
  %conv253 = sext i32 %238 to i64
  %239 = load i64, i64* %x217, align 8, !tbaa !25
  %add254 = add nsw i64 %conv253, %239
  %240 = load i32, i32* %i1, align 4, !tbaa !5
  %conv255 = sext i32 %240 to i64
  %cmp256 = icmp sge i64 %add254, %conv255
  br i1 %cmp256, label %if.then.258, label %if.else.259

if.then.258:                                      ; preds = %if.end.242
  store i32 20, i32* %cleanup.dest.slot
  br label %cleanup

if.else.259:                                      ; preds = %if.end.242
  %241 = load i64, i64* %x217, align 8, !tbaa !25
  %cmp260 = icmp slt i64 %241, 0
  br i1 %cmp260, label %if.then.262, label %if.else.263

if.then.262:                                      ; preds = %if.else.259
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.263:                                      ; preds = %if.else.259
  %242 = load i32, i32* %di, align 4, !tbaa !5
  %243 = load i64, i64* %x217, align 8, !tbaa !25
  %conv264 = trunc i64 %243 to i32
  %cmp265 = icmp sgt i32 %242, %conv264
  br i1 %cmp265, label %if.then.267, label %if.end.273

if.then.267:                                      ; preds = %if.else.263
  %244 = load i64, i64* %x217, align 8, !tbaa !25
  %conv268 = trunc i64 %244 to i32
  store i32 %conv268, i32* %di, align 4, !tbaa !5
  %245 = load i32, i32* %di, align 4, !tbaa !5
  %cmp269 = icmp sle i32 %245, 1
  br i1 %cmp269, label %if.then.271, label %if.end.272

if.then.271:                                      ; preds = %if.then.267
  store i32 1, i32* %di, align 4, !tbaa !5
  store i32 18, i32* %cleanup.dest.slot
  br label %cleanup

if.end.272:                                       ; preds = %if.then.267
  br label %if.end.273

if.end.273:                                       ; preds = %if.end.272, %if.else.263
  br label %if.end.274

if.end.274:                                       ; preds = %if.end.273
  br label %if.end.275

if.end.275:                                       ; preds = %if.end.274
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.275, %if.then.271, %if.then.262, %if.then.258, %if.then.231
  %246 = bitcast i32* %u to i8*
  call void @llvm.lifetime.end(i64 4, i8* %246) #1
  %247 = bitcast i32* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %247) #1
  %248 = bitcast i64* %x217 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %248) #1
  %249 = bitcast i32* %a to i8*
  call void @llvm.lifetime.end(i64 4, i8* %249) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.339 [
    i32 0, label %cleanup.cont
    i32 20, label %for.inc.279
    i32 18, label %for.end.281
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.279

for.inc.279:                                      ; preds = %cleanup.cont, %cleanup
  %250 = load i32, i32* %k, align 4, !tbaa !5
  %inc280 = add nsw i32 %250, 1
  store i32 %inc280, i32* %k, align 4, !tbaa !5
  br label %for.cond.213

for.end.281:                                      ; preds = %cleanup, %for.cond.213
  br label %if.end.282

if.end.282:                                       ; preds = %for.end.281
  br label %if.end.283

if.end.283:                                       ; preds = %if.end.282, %if.end.205
  br label %for.inc.284

for.inc.284:                                      ; preds = %if.end.283
  %251 = load i32, i32* %di, align 4, !tbaa !5
  %252 = load i32, i32* %i, align 4, !tbaa !5
  %add285 = add nsw i32 %252, %251
  store i32 %add285, i32* %i, align 4, !tbaa !5
  br label %for.cond.30

for.end.286:                                      ; preds = %if.then.209, %for.cond.30
  %253 = load i32, i32* %bi, align 4, !tbaa !5
  %254 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip287 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %254, i32 0, i32 0
  %255 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip287, align 8, !tbaa !19
  %p288 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %255, i32 0, i32 0
  %x289 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p288, i32 0, i32 0
  %256 = load i32, i32* %x289, align 4, !tbaa !26
  %shr290 = ashr i32 %256, 8
  %cmp291 = icmp sgt i32 %253, %shr290
  br i1 %cmp291, label %cond.true.293, label %cond.false.294

cond.true.293:                                    ; preds = %for.end.286
  %257 = load i32, i32* %bi, align 4, !tbaa !5
  br label %cond.end.299

cond.false.294:                                   ; preds = %for.end.286
  %258 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip295 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %258, i32 0, i32 0
  %259 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip295, align 8, !tbaa !19
  %p296 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %259, i32 0, i32 0
  %x297 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p296, i32 0, i32 0
  %260 = load i32, i32* %x297, align 4, !tbaa !26
  %shr298 = ashr i32 %260, 8
  br label %cond.end.299

cond.end.299:                                     ; preds = %cond.false.294, %cond.true.293
  %cond300 = phi i32 [ %257, %cond.true.293 ], [ %shr298, %cond.false.294 ]
  store i32 %cond300, i32* %si, align 4, !tbaa !5
  %261 = load i32, i32* %i, align 4, !tbaa !5
  %262 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip301 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %262, i32 0, i32 0
  %263 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip301, align 8, !tbaa !19
  %q302 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %263, i32 0, i32 1
  %x303 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q302, i32 0, i32 0
  %264 = load i32, i32* %x303, align 4, !tbaa !27
  %add304 = add nsw i32 %264, 255
  %shr305 = ashr i32 %add304, 8
  %cmp306 = icmp slt i32 %261, %shr305
  br i1 %cmp306, label %cond.true.308, label %cond.false.309

cond.true.308:                                    ; preds = %cond.end.299
  %265 = load i32, i32* %i, align 4, !tbaa !5
  br label %cond.end.315

cond.false.309:                                   ; preds = %cond.end.299
  %266 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip310 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %266, i32 0, i32 0
  %267 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip310, align 8, !tbaa !19
  %q311 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %267, i32 0, i32 1
  %x312 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q311, i32 0, i32 0
  %268 = load i32, i32* %x312, align 4, !tbaa !27
  %add313 = add nsw i32 %268, 255
  %shr314 = ashr i32 %add313, 8
  br label %cond.end.315

cond.end.315:                                     ; preds = %cond.false.309, %cond.true.308
  %cond316 = phi i32 [ %265, %cond.true.308 ], [ %shr314, %cond.false.309 ]
  store i32 %cond316, i32* %ei, align 4, !tbaa !5
  %269 = load i32, i32* %si, align 4, !tbaa !5
  %270 = load i32, i32* %ei, align 4, !tbaa !5
  %cmp317 = icmp slt i32 %269, %270
  br i1 %cmp317, label %if.then.319, label %if.end.338

if.then.319:                                      ; preds = %cond.end.315
  %271 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %swap_axes320 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %271, i32 0, i32 1
  %272 = load i32, i32* %swap_axes320, align 4, !tbaa !28
  %tobool321 = icmp ne i32 %272, 0
  br i1 %tobool321, label %if.then.322, label %if.else.330

if.then.322:                                      ; preds = %if.then.319
  br label %do.body.323

do.body.323:                                      ; preds = %if.then.322
  br label %do.cond.324

do.cond.324:                                      ; preds = %do.body.323
  br label %do.end.325

do.end.325:                                       ; preds = %do.cond.324
  %273 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs326 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %273, i32 0, i32 42
  %fill_rectangle327 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs326, i32 0, i32 7
  %274 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle327, align 8, !tbaa !42
  %275 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %276 = load i32, i32* %j.addr, align 4, !tbaa !5
  %277 = load i32, i32* %si, align 4, !tbaa !5
  %278 = load i32, i32* %ei, align 4, !tbaa !5
  %279 = load i32, i32* %si, align 4, !tbaa !5
  %sub328 = sub nsw i32 %278, %279
  %280 = load i64, i64* %ci0, align 8, !tbaa !25
  %call329 = call i32 %274(%struct.gx_device_s* %275, i32 %276, i32 %277, i32 1, i32 %sub328, i64 %280) #2
  store i32 %call329, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.339

if.else.330:                                      ; preds = %if.then.319
  br label %do.body.331

do.body.331:                                      ; preds = %if.else.330
  br label %do.cond.332

do.cond.332:                                      ; preds = %do.body.331
  br label %do.end.333

do.end.333:                                       ; preds = %do.cond.332
  %281 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs334 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %281, i32 0, i32 42
  %fill_rectangle335 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs334, i32 0, i32 7
  %282 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle335, align 8, !tbaa !42
  %283 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %284 = load i32, i32* %si, align 4, !tbaa !5
  %285 = load i32, i32* %j.addr, align 4, !tbaa !5
  %286 = load i32, i32* %ei, align 4, !tbaa !5
  %287 = load i32, i32* %si, align 4, !tbaa !5
  %sub336 = sub nsw i32 %286, %287
  %288 = load i64, i64* %ci0, align 8, !tbaa !25
  %call337 = call i32 %282(%struct.gx_device_s* %283, i32 %284, i32 %285, i32 %sub336, i32 1, i64 %288) #2
  store i32 %call337, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.339

if.end.338:                                       ; preds = %cond.end.315
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.339

cleanup.339:                                      ; preds = %if.end.338, %do.end.333, %do.end.325, %cleanup, %if.then.203, %if.then.8, %if.then
  %289 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %289) #1
  %290 = bitcast i32* %di to i8*
  call void @llvm.lifetime.end(i64 4, i8* %290) #1
  %291 = bitcast i32* %ei to i8*
  call void @llvm.lifetime.end(i64 4, i8* %291) #1
  %292 = bitcast i32* %si to i8*
  call void @llvm.lifetime.end(i64 4, i8* %292) #1
  %293 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %293) #1
  %294 = bitcast %struct.gx_device_color_info_s** %cinfo to i8*
  call void @llvm.lifetime.end(i64 8, i8* %294) #1
  %295 = bitcast i64* %ci1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %295) #1
  %296 = bitcast i64* %ci0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %296) #1
  %297 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %297) #1
  %298 = bitcast i32* %bi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %298) #1
  %299 = bitcast i32* %i1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %299) #1
  %300 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %300) #1
  %301 = bitcast [64 x i64]* %f to i8*
  call void @llvm.lifetime.end(i64 512, i8* %301) #1
  %302 = bitcast [64 x i32]* %c to i8*
  call void @llvm.lifetime.end(i64 256, i8* %302) #1
  %303 = bitcast i32* %devn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %303) #1
  %304 = load i32, i32* %retval
  ret i32 %304
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !6, i64 4}
!8 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !9, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !10, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !11, i64 704, !6, i64 712}
!9 = !{!"short", !3, i64 0}
!10 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!11 = !{!"long", !3, i64 0}
!12 = !{!13, !2, i64 0}
!13 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !14, i64 352, !6, i64 360, !15, i64 368, !17, i64 632}
!14 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!15 = !{!"gs_client_color_s", !2, i64 0, !16, i64 8}
!16 = !{!"gs_paint_color_s", !3, i64 0}
!17 = !{!"_mask", !18, i64 0, !11, i64 8, !2, i64 16}
!18 = !{!"mp_", !6, i64 0, !6, i64 4}
!19 = !{!20, !2, i64 0}
!20 = !{!"gs_fill_attributes_s", !2, i64 0, !6, i64 8, !2, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !2, i64 40}
!21 = !{!22, !6, i64 4}
!22 = !{!"gs_fixed_rect_s", !23, i64 0, !23, i64 8}
!23 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!24 = !{!22, !6, i64 12}
!25 = !{!11, !11, i64 0}
!26 = !{!22, !6, i64 0}
!27 = !{!22, !6, i64 8}
!28 = !{!20, !6, i64 8}
!29 = !{!9, !9, i64 0}
!30 = !{!31, !2, i64 1576}
!31 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !32, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !8, i64 96, !33, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !11, i64 928, !11, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !11, i64 968, !11, i64 976, !34, i64 984, !6, i64 1052, !6, i64 1056, !35, i64 1064, !2, i64 1104, !3, i64 1112, !37, i64 1120, !38, i64 1144}
!32 = !{!"rc_header_s", !11, i64 0, !2, i64 8, !2, i64 16}
!33 = !{!"gx_device_cached_colors_s", !11, i64 0, !11, i64 8}
!34 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!35 = !{!"gdev_space_params_s", !11, i64 0, !11, i64 8, !36, i64 16, !6, i64 32, !3, i64 36}
!36 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !11, i64 8}
!37 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!38 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!39 = !{!3, !3, i64 0}
!40 = !{!31, !2, i64 1664}
!41 = !{!8, !3, i64 8}
!42 = !{!31, !2, i64 1200}
