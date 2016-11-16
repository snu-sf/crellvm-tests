; ModuleID = './gdevxalt.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
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
%struct.gx_cm_color_map_procs_s = type { void (%struct.gx_device_s*, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* }
%struct.gs_pattern1_instance_s = type opaque
%struct.gs_fill_attributes_s = type { %struct.gs_fixed_rect_s*, i32, %struct.gx_device_halftone_s*, i32, i32, i32, %struct.patch_fill_state_s* }
%struct.patch_fill_state_s = type opaque
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.gx_device_X_wrapper = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, [16 x i64], i32 (%struct.gx_device_s*, i64, i16*)* }
%struct.gx_device_X_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, i32, i32, %struct.gx_device_bbox_procs_s, i8*, i32, %struct.gs_fixed_rect_s, i64, i64, i64, i32, i32, i8*, i64, %struct._XImage, %struct._XDisplay*, %struct.Screen*, %struct.XVisualInfo*, i64, i64, %struct._XGC*, i64, i64, i32, i64, %struct.gs_matrix_s, i64, i64, i64, %struct.anon, i64, i64, i64, %struct.anon.1, %struct.anon.2, i32, i32, i64, i64, i64, i64, i64, %struct.x11_cman_s, i64, i16, i8*, i32, i32, i8*, float, float, i8, i8, i8, i32, i32, i32, %struct.anon.4 }
%struct.gx_device_bbox_procs_s = type { i32 (i8*)*, void (i8*, %struct.gs_fixed_rect_s*)*, void (i8*, i32, i32, i32, i32)*, i32 (i8*, %struct.gs_fixed_rect_s*)* }
%struct._XImage = type { i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i8*, %struct.funcs }
%struct.funcs = type { %struct._XImage* (%struct._XDisplay*, %struct.Visual*, i32, i32, i32, i8*, i32, i32, i32, i32)*, i32 (%struct._XImage*)*, i64 (%struct._XImage*, i32, i32)*, i32 (%struct._XImage*, i32, i32, i64)*, %struct._XImage* (%struct._XImage*, i32, i32, i32, i32)*, i32 (%struct._XImage*, i64)* }
%struct.Visual = type { %struct._XExtData*, i64, i32, i64, i64, i64, i32, i32 }
%struct._XExtData = type { i32, %struct._XExtData*, i32 (%struct._XExtData*)*, i8* }
%struct._XDisplay = type opaque
%struct.Screen = type { %struct._XExtData*, %struct._XDisplay*, i64, i32, i32, i32, i32, i32, %struct.Depth*, i32, %struct.Visual*, %struct._XGC*, i64, i64, i64, i32, i32, i32, i32, i64 }
%struct.Depth = type { i32, i32, %struct.Visual* }
%struct.XVisualInfo = type { %struct.Visual*, i64, i32, i32, i32, i64, i64, i64, i32, i32 }
%struct._XGC = type opaque
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
%struct.gx_device_forward_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s* }

@x_cmyk_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @x_cmyk_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @gx_forward_get_initial_matrix, i32 (%struct.gx_device_s*)* @x_forward_sync_output, i32 (%struct.gx_device_s*, i32, i32)* @x_forward_output_page, i32 (%struct.gx_device_s*)* @x_wrap_close, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* @x_wrap_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @x_wrap_fill_rectangle, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* @x_wrap_copy_mono, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* @x_wrap_copy_color, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @gx_default_draw_line, i32 (%struct.gx_device_s*, i32, i8*, i8**)* @x_wrap_get_bits, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @x_wrap_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @x_cmyk_put_params, i64 (%struct.gx_device_s*, i16*)* @x_cmyk_map_cmyk_color, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_procs, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_device, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_page_device, i32 (%struct.gx_device_s*, i32)* @gx_default_get_alpha_bits, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str = private unnamed_addr constant [8 x i8] c"x11cmyk\00", align 1
@st_device_X_wrapper = internal constant %struct.gs_memory_struct_type_s { i32 1872, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gdevx_wrapper_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gdevx_wrapper_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* @gx_device_finalize, i8* null }, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"DeviceCMYK\00", align 1
@gs_x11cmyk_device = constant %struct.gx_device_X_wrapper { i32 1872, %struct.gx_device_procs_s* @x_cmyk_procs, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_X_wrapper, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 4, i32 4, i32 0, i16 4, i8 3, i32 1, i32 1, i32 2, i32 2, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 9792, i32 12672, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 1.152000e+03, float 1.152000e+03], [2 x float] [float 1.152000e+03, float 1.152000e+03], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_s* null, [16 x i64] zeroinitializer, i32 (%struct.gx_device_s*, i64, i16*)* @x_cmyk_alt_map_color }, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"x11cmyk2\00", align 1
@gs_x11cmyk2_device = constant %struct.gx_device_X_wrapper { i32 1872, %struct.gx_device_procs_s* @x_cmyk_procs, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_X_wrapper, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 4, i32 4, i32 0, i16 8, i8 3, i32 3, i32 3, i32 4, i32 4, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 9792, i32 12672, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 1.152000e+03, float 1.152000e+03], [2 x float] [float 1.152000e+03, float 1.152000e+03], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_s* null, [16 x i64] zeroinitializer, i32 (%struct.gx_device_s*, i64, i16*)* @x_cmyk_alt_map_color }, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"x11cmyk4\00", align 1
@gs_x11cmyk4_device = constant %struct.gx_device_X_wrapper { i32 1872, %struct.gx_device_procs_s* @x_cmyk_procs, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_X_wrapper, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 4, i32 4, i32 0, i16 16, i8 3, i32 15, i32 15, i32 16, i32 16, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 9792, i32 12672, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 1.152000e+03, float 1.152000e+03], [2 x float] [float 1.152000e+03, float 1.152000e+03], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_s* null, [16 x i64] zeroinitializer, i32 (%struct.gx_device_s*, i64, i16*)* @x_cmyk_alt_map_color }, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"x11cmyk8\00", align 1
@gs_x11cmyk8_device = constant %struct.gx_device_X_wrapper { i32 1872, %struct.gx_device_procs_s* @x_cmyk_procs, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_X_wrapper, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 4, i32 4, i32 0, i16 32, i8 3, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 9792, i32 12672, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 1.152000e+03, float 1.152000e+03], [2 x float] [float 1.152000e+03, float 1.152000e+03], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_s* null, [16 x i64] zeroinitializer, i32 (%struct.gx_device_s*, i64, i16*)* @x_cmyk_alt_map_color }, align 8
@x_mono_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @x_wrap_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @gx_forward_get_initial_matrix, i32 (%struct.gx_device_s*)* @x_forward_sync_output, i32 (%struct.gx_device_s*, i32, i32)* @x_forward_output_page, i32 (%struct.gx_device_s*)* @x_wrap_close, i64 (%struct.gx_device_s*, i16*)* @gx_default_b_w_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @x_wrap_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @x_wrap_fill_rectangle, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* @x_wrap_copy_mono, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* @gx_default_copy_color, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @gx_default_draw_line, i32 (%struct.gx_device_s*, i32, i8*, i8**)* @x_wrap_get_bits, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @x_wrap_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @x_wrap_put_params, i64 (%struct.gx_device_s*, i16*)* @gx_default_map_cmyk_color, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_procs, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_device, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_page_device, i32 (%struct.gx_device_s*, i32)* @gx_default_get_alpha_bits, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"x11mono\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@gs_x11mono_device = constant %struct.gx_device_X_wrapper { i32 1872, %struct.gx_device_procs_s* @x_mono_procs, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_X_wrapper, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 0, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 9792, i32 12672, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 1.152000e+03, float 1.152000e+03], [2 x float] [float 1.152000e+03, float 1.152000e+03], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_s* null, [16 x i64] zeroinitializer, i32 (%struct.gx_device_s*, i64, i16*)* @x_mono_alt_map_color }, align 8
@x_gray_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @x_wrap_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @gx_forward_get_initial_matrix, i32 (%struct.gx_device_s*)* @x_forward_sync_output, i32 (%struct.gx_device_s*, i32, i32)* @x_forward_output_page, i32 (%struct.gx_device_s*)* @x_wrap_close, i64 (%struct.gx_device_s*, i16*)* @gx_default_gray_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @x_wrap_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @x_wrap_fill_rectangle, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* @x_wrap_copy_mono, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* @x_wrap_copy_color, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @gx_default_draw_line, i32 (%struct.gx_device_s*, i32, i8*, i8**)* @x_wrap_get_bits, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @x_wrap_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @x_wrap_put_params, i64 (%struct.gx_device_s*, i16*)* @gx_default_map_cmyk_color, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_procs, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_device, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_page_device, i32 (%struct.gx_device_s*, i32)* @gx_default_get_alpha_bits, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"x11gray2\00", align 1
@gs_x11gray2_device = constant %struct.gx_device_X_wrapper { i32 1872, %struct.gx_device_procs_s* @x_gray_procs, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_X_wrapper, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 2, i8 0, i32 3, i32 0, i32 4, i32 0, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 9792, i32 12672, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 1.152000e+03, float 1.152000e+03], [2 x float] [float 1.152000e+03, float 1.152000e+03], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_s* null, [16 x i64] zeroinitializer, i32 (%struct.gx_device_s*, i64, i16*)* @x_gray_alt_map_color }, align 8
@.str.8 = private unnamed_addr constant [9 x i8] c"x11gray4\00", align 1
@gs_x11gray4_device = constant %struct.gx_device_X_wrapper { i32 1872, %struct.gx_device_procs_s* @x_gray_procs, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_X_wrapper, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 4, i8 0, i32 15, i32 0, i32 16, i32 0, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 9792, i32 12672, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 1.152000e+03, float 1.152000e+03], [2 x float] [float 1.152000e+03, float 1.152000e+03], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_s* null, [16 x i64] zeroinitializer, i32 (%struct.gx_device_s*, i64, i16*)* @x_gray_alt_map_color }, align 8
@x_rg16x_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @x_wrap_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @gx_forward_get_initial_matrix, i32 (%struct.gx_device_s*)* @x_forward_sync_output, i32 (%struct.gx_device_s*, i32, i32)* @x_forward_output_page, i32 (%struct.gx_device_s*)* @x_wrap_close, i64 (%struct.gx_device_s*, i16*)* @x_rg16x_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @x_wrap_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @x_wrap_fill_rectangle, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* @x_wrap_copy_mono, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* @x_forward_copy_color, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @gx_default_draw_line, i32 (%struct.gx_device_s*, i32, i8*, i8**)* @x_forward_get_bits, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @x_wrap_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @x_wrap_put_params, i64 (%struct.gx_device_s*, i16*)* @gx_forward_map_cmyk_color, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_procs, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_device, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* @x_alpha_map_rgb_alpha_color, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_page_device, i32 (%struct.gx_device_s*, i32)* @gx_default_get_alpha_bits, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* @gx_default_copy_alpha, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.9 = private unnamed_addr constant [9 x i8] c"x11rg16x\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"DeviceRGB\00", align 1
@gs_x11rg16x_device = constant %struct.gx_device_X_wrapper { i32 1872, %struct.gx_device_procs_s* @x_rg16x_procs, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_X_wrapper, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 16, i8 -1, i32 31, i32 31, i32 32, i32 32, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 9792, i32 12672, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 1.152000e+03, float 1.152000e+03], [2 x float] [float 1.152000e+03, float 1.152000e+03], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_s* null, [16 x i64] zeroinitializer, i32 (%struct.gx_device_s*, i64, i16*)* @x_rg16x_alt_map_color }, align 8
@x_rg32x_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @x_wrap_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @gx_forward_get_initial_matrix, i32 (%struct.gx_device_s*)* @x_forward_sync_output, i32 (%struct.gx_device_s*, i32, i32)* @x_forward_output_page, i32 (%struct.gx_device_s*)* @x_wrap_close, i64 (%struct.gx_device_s*, i16*)* @x_rg32x_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @x_wrap_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @x_wrap_fill_rectangle, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* @x_wrap_copy_mono, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* @x_forward_copy_color, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @gx_default_draw_line, i32 (%struct.gx_device_s*, i32, i8*, i8**)* @x_forward_get_bits, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @x_wrap_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @x_wrap_put_params, i64 (%struct.gx_device_s*, i16*)* @gx_forward_map_cmyk_color, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_procs, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_device, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* @x_alpha_map_rgb_alpha_color, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_page_device, i32 (%struct.gx_device_s*, i32)* @gx_default_get_alpha_bits, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* @gx_default_copy_alpha, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.11 = private unnamed_addr constant [9 x i8] c"x11rg32x\00", align 1
@gs_x11rg32x_device = constant %struct.gx_device_X_wrapper { i32 1872, %struct.gx_device_procs_s* @x_rg32x_procs, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_X_wrapper, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 32, i8 -1, i32 1023, i32 1023, i32 1024, i32 1024, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 9792, i32 12672, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 1.152000e+03, float 1.152000e+03], [2 x float] [float 1.152000e+03, float 1.152000e+03], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_s* null, [16 x i64] zeroinitializer, i32 (%struct.gx_device_s*, i64, i16*)* @x_rg32x_alt_map_color }, align 8
@gs_x11_device = external constant %struct.gx_device_X_s, align 8
@.str.12 = private unnamed_addr constant [16 x i8] c"x_wrap_get_bits\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"gx_device_X_wrapper\00", align 1
@st_device_forward = external constant %struct.gs_memory_struct_type_s, align 8

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @x_cmyk_alt_map_color(%struct.gx_device_s* %dev, i64 %color, i16* %rgb) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %rgb.addr = alloca i16*, align 8
  %shift = alloca i32, align 4
  %mask = alloca i32, align 4
  %scale = alloca i16, align 2
  %cw = alloca i32, align 4
  %cb = alloca i32, align 4
  %cg = alloca i32, align 4
  %cr = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  store i64 %color, i64* %color.addr, align 8, !tbaa !6
  store i16* %rgb, i16** %rgb.addr, align 8, !tbaa !2
  %0 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %2 = load i16, i16* %depth, align 2, !tbaa !8
  %conv = zext i16 %2 to i32
  %shr = ashr i32 %conv, 2
  store i32 %shr, i32* %shift, align 4, !tbaa !21
  %3 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load i32, i32* %shift, align 4, !tbaa !21
  %shl = shl i32 1, %4
  %sub = sub nsw i32 %shl, 1
  store i32 %sub, i32* %mask, align 4, !tbaa !21
  %5 = bitcast i16* %scale to i8*
  call void @llvm.lifetime.start(i64 2, i8* %5) #2
  %6 = load i32, i32* %mask, align 4, !tbaa !21
  %div = sdiv i32 65535, %6
  %conv1 = trunc i32 %div to i16
  store i16 %conv1, i16* %scale, align 2, !tbaa !22
  %7 = bitcast i32* %cw to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load i64, i64* %color.addr, align 8, !tbaa !6
  %neg = xor i64 %8, -1
  %9 = load i32, i32* %mask, align 4, !tbaa !21
  %conv2 = sext i32 %9 to i64
  %and = and i64 %neg, %conv2
  %conv3 = trunc i64 %and to i32
  store i32 %conv3, i32* %cw, align 4, !tbaa !21
  %10 = bitcast i32* %cb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = load i32, i32* %cw, align 4, !tbaa !21
  %conv4 = sext i32 %11 to i64
  %12 = load i64, i64* %color.addr, align 8, !tbaa !6
  %13 = load i32, i32* %shift, align 4, !tbaa !21
  %sh_prom = zext i32 %13 to i64
  %shr5 = lshr i64 %12, %sh_prom
  %14 = load i32, i32* %mask, align 4, !tbaa !21
  %conv6 = sext i32 %14 to i64
  %and7 = and i64 %shr5, %conv6
  %sub8 = sub i64 %conv4, %and7
  %conv9 = trunc i64 %sub8 to i32
  store i32 %conv9, i32* %cb, align 4, !tbaa !21
  %15 = bitcast i32* %cg to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = load i32, i32* %cw, align 4, !tbaa !21
  %conv10 = sext i32 %16 to i64
  %17 = load i64, i64* %color.addr, align 8, !tbaa !6
  %18 = load i32, i32* %shift, align 4, !tbaa !21
  %mul = mul nsw i32 %18, 2
  %sh_prom11 = zext i32 %mul to i64
  %shr12 = lshr i64 %17, %sh_prom11
  %19 = load i32, i32* %mask, align 4, !tbaa !21
  %conv13 = sext i32 %19 to i64
  %and14 = and i64 %shr12, %conv13
  %sub15 = sub i64 %conv10, %and14
  %conv16 = trunc i64 %sub15 to i32
  store i32 %conv16, i32* %cg, align 4, !tbaa !21
  %20 = bitcast i32* %cr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #2
  %21 = load i32, i32* %cw, align 4, !tbaa !21
  %conv17 = sext i32 %21 to i64
  %22 = load i64, i64* %color.addr, align 8, !tbaa !6
  %23 = load i32, i32* %shift, align 4, !tbaa !21
  %mul18 = mul nsw i32 %23, 3
  %sh_prom19 = zext i32 %mul18 to i64
  %shr20 = lshr i64 %22, %sh_prom19
  %24 = load i32, i32* %mask, align 4, !tbaa !21
  %conv21 = sext i32 %24 to i64
  %and22 = and i64 %shr20, %conv21
  %sub23 = sub i64 %conv17, %and22
  %conv24 = trunc i64 %sub23 to i32
  store i32 %conv24, i32* %cr, align 4, !tbaa !21
  %25 = load i32, i32* %cr, align 4, !tbaa !21
  %cmp = icmp sgt i32 %25, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %26 = load i32, i32* %cr, align 4, !tbaa !21
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %26, %cond.true ], [ 0, %cond.false ]
  %27 = load i16, i16* %scale, align 2, !tbaa !22
  %conv26 = zext i16 %27 to i32
  %mul27 = mul nsw i32 %cond, %conv26
  %conv28 = trunc i32 %mul27 to i16
  %28 = load i16*, i16** %rgb.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i16, i16* %28, i64 0
  store i16 %conv28, i16* %arrayidx, align 2, !tbaa !22
  %29 = load i32, i32* %cg, align 4, !tbaa !21
  %cmp29 = icmp sgt i32 %29, 0
  br i1 %cmp29, label %cond.true.31, label %cond.false.32

cond.true.31:                                     ; preds = %cond.end
  %30 = load i32, i32* %cg, align 4, !tbaa !21
  br label %cond.end.33

cond.false.32:                                    ; preds = %cond.end
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.false.32, %cond.true.31
  %cond34 = phi i32 [ %30, %cond.true.31 ], [ 0, %cond.false.32 ]
  %31 = load i16, i16* %scale, align 2, !tbaa !22
  %conv35 = zext i16 %31 to i32
  %mul36 = mul nsw i32 %cond34, %conv35
  %conv37 = trunc i32 %mul36 to i16
  %32 = load i16*, i16** %rgb.addr, align 8, !tbaa !2
  %arrayidx38 = getelementptr inbounds i16, i16* %32, i64 1
  store i16 %conv37, i16* %arrayidx38, align 2, !tbaa !22
  %33 = load i32, i32* %cb, align 4, !tbaa !21
  %cmp39 = icmp sgt i32 %33, 0
  br i1 %cmp39, label %cond.true.41, label %cond.false.42

cond.true.41:                                     ; preds = %cond.end.33
  %34 = load i32, i32* %cb, align 4, !tbaa !21
  br label %cond.end.43

cond.false.42:                                    ; preds = %cond.end.33
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.42, %cond.true.41
  %cond44 = phi i32 [ %34, %cond.true.41 ], [ 0, %cond.false.42 ]
  %35 = load i16, i16* %scale, align 2, !tbaa !22
  %conv45 = zext i16 %35 to i32
  %mul46 = mul nsw i32 %cond44, %conv45
  %conv47 = trunc i32 %mul46 to i16
  %36 = load i16*, i16** %rgb.addr, align 8, !tbaa !2
  %arrayidx48 = getelementptr inbounds i16, i16* %36, i64 2
  store i16 %conv47, i16* %arrayidx48, align 2, !tbaa !22
  %37 = bitcast i32* %cr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #2
  %38 = bitcast i32* %cg to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #2
  %39 = bitcast i32* %cb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #2
  %40 = bitcast i32* %cw to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #2
  %41 = bitcast i16* %scale to i8*
  call void @llvm.lifetime.end(i64 2, i8* %41) #2
  %42 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #2
  %43 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #2
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define internal i32 @x_mono_alt_map_color(%struct.gx_device_s* %dev, i64 %color, i16* %rgb) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %rgb.addr = alloca i16*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  store i64 %color, i64* %color.addr, align 8, !tbaa !6
  store i16* %rgb, i16** %rgb.addr, align 8, !tbaa !2
  %0 = load i64, i64* %color.addr, align 8, !tbaa !6
  %tobool = icmp ne i64 %0, 0
  %cond = select i1 %tobool, i32 0, i32 65535
  %conv = trunc i32 %cond to i16
  %1 = load i16*, i16** %rgb.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 2
  store i16 %conv, i16* %arrayidx, align 2, !tbaa !22
  %2 = load i16*, i16** %rgb.addr, align 8, !tbaa !2
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 1
  store i16 %conv, i16* %arrayidx1, align 2, !tbaa !22
  %3 = load i16*, i16** %rgb.addr, align 8, !tbaa !2
  %arrayidx2 = getelementptr inbounds i16, i16* %3, i64 0
  store i16 %conv, i16* %arrayidx2, align 2, !tbaa !22
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define internal i32 @x_gray_alt_map_color(%struct.gx_device_s* %dev, i64 %color, i16* %rgb) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %rgb.addr = alloca i16*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  store i64 %color, i64* %color.addr, align 8, !tbaa !6
  store i16* %rgb, i16** %rgb.addr, align 8, !tbaa !2
  %0 = load i64, i64* %color.addr, align 8, !tbaa !6
  %mul = mul i64 %0, 65535
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 11
  %max_gray = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 5
  %2 = load i32, i32* %max_gray, align 4, !tbaa !23
  %conv = zext i32 %2 to i64
  %div = udiv i64 %mul, %conv
  %conv1 = trunc i64 %div to i16
  %3 = load i16*, i16** %rgb.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 2
  store i16 %conv1, i16* %arrayidx, align 2, !tbaa !22
  %4 = load i16*, i16** %rgb.addr, align 8, !tbaa !2
  %arrayidx2 = getelementptr inbounds i16, i16* %4, i64 1
  store i16 %conv1, i16* %arrayidx2, align 2, !tbaa !22
  %5 = load i16*, i16** %rgb.addr, align 8, !tbaa !2
  %arrayidx3 = getelementptr inbounds i16, i16* %5, i64 0
  store i16 %conv1, i16* %arrayidx3, align 2, !tbaa !22
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define internal i32 @x_rg16x_alt_map_color(%struct.gx_device_s* %dev, i64 %color, i16* %rgb) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %rgb.addr = alloca i16*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  store i64 %color, i64* %color.addr, align 8, !tbaa !6
  store i16* %rgb, i16** %rgb.addr, align 8, !tbaa !2
  %0 = load i64, i64* %color.addr, align 8, !tbaa !6
  %and = and i64 %0, 63
  %mul = mul i64 %and, 65535
  %div = udiv i64 %mul, 63
  %conv = trunc i64 %div to i16
  %1 = load i16*, i16** %rgb.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 0
  store i16 %conv, i16* %arrayidx, align 2, !tbaa !22
  %2 = load i64, i64* %color.addr, align 8, !tbaa !6
  %shr = lshr i64 %2, 11
  %and1 = and i64 %shr, 31
  %mul2 = mul i64 %and1, 65535
  %div3 = udiv i64 %mul2, 31
  %conv4 = trunc i64 %div3 to i16
  %3 = load i16*, i16** %rgb.addr, align 8, !tbaa !2
  %arrayidx5 = getelementptr inbounds i16, i16* %3, i64 1
  store i16 %conv4, i16* %arrayidx5, align 2, !tbaa !22
  %4 = load i64, i64* %color.addr, align 8, !tbaa !6
  %shr6 = lshr i64 %4, 6
  %and7 = and i64 %shr6, 31
  %mul8 = mul i64 %and7, 65535
  %div9 = udiv i64 %mul8, 31
  %conv10 = trunc i64 %div9 to i16
  %5 = load i16*, i16** %rgb.addr, align 8, !tbaa !2
  %arrayidx11 = getelementptr inbounds i16, i16* %5, i64 2
  store i16 %conv10, i16* %arrayidx11, align 2, !tbaa !22
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define internal i32 @x_rg32x_alt_map_color(%struct.gx_device_s* %dev, i64 %color, i16* %rgb) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %rgb.addr = alloca i16*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  store i64 %color, i64* %color.addr, align 8, !tbaa !6
  store i16* %rgb, i16** %rgb.addr, align 8, !tbaa !2
  %0 = load i64, i64* %color.addr, align 8, !tbaa !6
  %and = and i64 %0, 2047
  %mul = mul i64 %and, 65535
  %div = udiv i64 %mul, 2047
  %conv = trunc i64 %div to i16
  %1 = load i16*, i16** %rgb.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 0
  store i16 %conv, i16* %arrayidx, align 2, !tbaa !22
  %2 = load i64, i64* %color.addr, align 8, !tbaa !6
  %shr = lshr i64 %2, 21
  %and1 = and i64 %shr, 2047
  %mul2 = mul i64 %and1, 65535
  %div3 = udiv i64 %mul2, 2047
  %conv4 = trunc i64 %div3 to i16
  %3 = load i16*, i16** %rgb.addr, align 8, !tbaa !2
  %arrayidx5 = getelementptr inbounds i16, i16* %3, i64 1
  store i16 %conv4, i16* %arrayidx5, align 2, !tbaa !22
  %4 = load i64, i64* %color.addr, align 8, !tbaa !6
  %shr6 = lshr i64 %4, 11
  %and7 = and i64 %shr6, 1023
  %mul8 = mul i64 %and7, 65535
  %div9 = udiv i64 %mul8, 1023
  %conv10 = trunc i64 %div9 to i16
  %5 = load i16*, i16** %rgb.addr, align 8, !tbaa !2
  %arrayidx11 = getelementptr inbounds i16, i16* %5, i64 2
  store i16 %conv10, i16* %arrayidx11, align 2, !tbaa !22
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define internal i32 @x_cmyk_open(%struct.gx_device_s* %dev) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %call = call i32 @x_wrap_open(%struct.gx_device_s* %1) #3
  store i32 %call, i32* %code, align 4, !tbaa !21
  %2 = load i32, i32* %code, align 4, !tbaa !21
  %cmp = icmp sge i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  call void @x_cmyk_set_procs(%struct.gx_device_s* %3) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %code, align 4, !tbaa !21
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %5) #2
  ret i32 %4
}

declare void @gx_forward_get_initial_matrix(%struct.gx_device_s*, %struct.gs_matrix_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @x_forward_sync_output(%struct.gx_device_s* %dev) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %0 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %call = call i32 @get_dev_target(%struct.gx_device_s** %tdev, %struct.gx_device_s* %2) #3
  store i32 %call, i32* %code, align 4, !tbaa !21
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 42
  %sync_output = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 2
  %5 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %sync_output, align 8, !tbaa !24
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %call1 = call i32 %5(%struct.gx_device_s* %6) #3
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #2
  %8 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #2
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @x_forward_output_page(%struct.gx_device_s* %dev, i32 %num_copies, i32 %flush) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %num_copies.addr = alloca i32, align 4
  %flush.addr = alloca i32, align 4
  %tdev = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  store i32 %num_copies, i32* %num_copies.addr, align 4, !tbaa !21
  store i32 %flush, i32* %flush.addr, align 4, !tbaa !21
  %0 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %call = call i32 @get_dev_target(%struct.gx_device_s** %tdev, %struct.gx_device_s* %2) #3
  store i32 %call, i32* %code, align 4, !tbaa !21
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 42
  %output_page = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 3
  %5 = load i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32)** %output_page, align 8, !tbaa !25
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %7 = load i32, i32* %num_copies.addr, align 4, !tbaa !21
  %8 = load i32, i32* %flush.addr, align 4, !tbaa !21
  %call1 = call i32 %5(%struct.gx_device_s* %6, i32 %7, i32 %8) #3
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #2
  %10 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #2
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @x_wrap_close(%struct.gx_device_s* %dev) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %1 = bitcast %struct.gx_device_s* %0 to %struct.gx_device_forward_s*
  call void @gx_device_set_target(%struct.gx_device_forward_s* %1, %struct.gx_device_s* null) #3
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  call void @x_clear_color_cache(%struct.gx_device_s* %2) #3
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @x_wrap_map_color_rgb(%struct.gx_device_s* %dev, i64 %color, i16* %prgb) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %prgb.addr = alloca i16*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  store i64 %color, i64* %color.addr, align 8, !tbaa !6
  store i16* %prgb, i16** %prgb.addr, align 8, !tbaa !2
  %0 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %call = call i32 @get_dev_target(%struct.gx_device_s** %tdev, %struct.gx_device_s* %2) #3
  store i32 %call, i32* %code, align 4, !tbaa !21
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 42
  %map_color_rgb = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 6
  %5 = load i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)** %map_color_rgb, align 8, !tbaa !26
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %8 = load i64, i64* %color.addr, align 8, !tbaa !6
  %call1 = call i64 @x_alt_map_color(%struct.gx_device_s* %7, i64 %8) #3
  %9 = load i16*, i16** %prgb.addr, align 8, !tbaa !2
  %call2 = call i32 %5(%struct.gx_device_s* %6, i64 %call1, i16* %9) #3
  store i32 %call2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #2
  %11 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #2
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @x_wrap_fill_rectangle(%struct.gx_device_s* %dev, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  store i32 %x, i32* %x.addr, align 4, !tbaa !21
  store i32 %y, i32* %y.addr, align 4, !tbaa !21
  store i32 %w, i32* %w.addr, align 4, !tbaa !21
  store i32 %h, i32* %h.addr, align 4, !tbaa !21
  store i64 %color, i64* %color.addr, align 8, !tbaa !6
  %0 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %call = call i32 @get_dev_target(%struct.gx_device_s** %tdev, %struct.gx_device_s* %2) #3
  store i32 %call, i32* %code, align 4, !tbaa !21
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 42
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 7
  %5 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8, !tbaa !27
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %7 = load i32, i32* %x.addr, align 4, !tbaa !21
  %8 = load i32, i32* %y.addr, align 4, !tbaa !21
  %9 = load i32, i32* %w.addr, align 4, !tbaa !21
  %10 = load i32, i32* %h.addr, align 4, !tbaa !21
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %12 = load i64, i64* %color.addr, align 8, !tbaa !6
  %call1 = call i64 @x_alt_map_color(%struct.gx_device_s* %11, i64 %12) #3
  %call2 = call i32 %5(%struct.gx_device_s* %6, i32 %7, i32 %8, i32 %9, i32 %10, i64 %call1) #3
  store i32 %call2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #2
  %14 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #2
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare i32 @gx_default_tile_rectangle(%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @x_wrap_copy_mono(%struct.gx_device_s* %dev, i8* %base, i32 %sourcex, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, i64 %zero, i64 %one) #1 {
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
  %tdev = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  store i8* %base, i8** %base.addr, align 8, !tbaa !2
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !21
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !21
  store i64 %id, i64* %id.addr, align 8, !tbaa !6
  store i32 %x, i32* %x.addr, align 4, !tbaa !21
  store i32 %y, i32* %y.addr, align 4, !tbaa !21
  store i32 %w, i32* %w.addr, align 4, !tbaa !21
  store i32 %h, i32* %h.addr, align 4, !tbaa !21
  store i64 %zero, i64* %zero.addr, align 8, !tbaa !6
  store i64 %one, i64* %one.addr, align 8, !tbaa !6
  %0 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %call = call i32 @get_dev_target(%struct.gx_device_s** %tdev, %struct.gx_device_s* %2) #3
  store i32 %call, i32* %code, align 4, !tbaa !21
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 42
  %copy_mono = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 9
  %5 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono, align 8, !tbaa !28
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %7 = load i8*, i8** %base.addr, align 8, !tbaa !2
  %8 = load i32, i32* %sourcex.addr, align 4, !tbaa !21
  %9 = load i32, i32* %raster.addr, align 4, !tbaa !21
  %10 = load i64, i64* %id.addr, align 8, !tbaa !6
  %11 = load i32, i32* %x.addr, align 4, !tbaa !21
  %12 = load i32, i32* %y.addr, align 4, !tbaa !21
  %13 = load i32, i32* %w.addr, align 4, !tbaa !21
  %14 = load i32, i32* %h.addr, align 4, !tbaa !21
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %16 = load i64, i64* %zero.addr, align 8, !tbaa !6
  %call1 = call i64 @x_alt_map_color(%struct.gx_device_s* %15, i64 %16) #3
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %18 = load i64, i64* %one.addr, align 8, !tbaa !6
  %call2 = call i64 @x_alt_map_color(%struct.gx_device_s* %17, i64 %18) #3
  %call3 = call i32 %5(%struct.gx_device_s* %6, i8* %7, i32 %8, i32 %9, i64 %10, i32 %11, i32 %12, i32 %13, i32 %14, i64 %call1, i64 %call2) #3
  store i32 %call3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %19 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #2
  %20 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #2
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @x_wrap_copy_color(%struct.gx_device_s* %dev, i8* %base, i32 %sourcex, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h) #1 {
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
  %tdev = alloca %struct.gx_device_s*, align 8
  %depth_bytes = alloca i32, align 4
  %source_bits = alloca i32, align 4
  %block_w = alloca i32, align 4
  %block_h = alloca i32, align 4
  %xblock = alloca i32, align 4
  %yblock = alloca i32, align 4
  %mapped = alloca [480 x i8], align 16
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %mapped_pixels = alloca i32, align 4
  %p = alloca i8*, align 8
  %xend = alloca i32, align 4
  %yend = alloca i32, align 4
  %xcur = alloca i32, align 4
  %ycur = alloca i32, align 4
  %code75 = alloca i32, align 4
  %sbit = alloca i32, align 4
  %sbyte = alloca i32, align 4
  %spixel = alloca i32, align 4
  %cindex = alloca i64, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  store i8* %base, i8** %base.addr, align 8, !tbaa !2
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !21
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !21
  store i64 %id, i64* %id.addr, align 8, !tbaa !6
  store i32 %x, i32* %x.addr, align 4, !tbaa !21
  store i32 %y, i32* %y.addr, align 4, !tbaa !21
  store i32 %w, i32* %w.addr, align 4, !tbaa !21
  store i32 %h, i32* %h.addr, align 4, !tbaa !21
  %0 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %depth_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %source_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %block_w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %block_h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %xblock to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %yblock to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast [480 x i8]* %mapped to i8*
  call void @llvm.lifetime.start(i64 480, i8* %7) #2
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %9 = load i32, i32* %x.addr, align 4, !tbaa !21
  %10 = load i32, i32* %y.addr, align 4, !tbaa !21
  %or = or i32 %9, %10
  %cmp = icmp slt i32 %or, 0
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %do.body.1
  %11 = load i32, i32* %x.addr, align 4, !tbaa !21
  %cmp2 = icmp slt i32 %11, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %12 = load i32, i32* %x.addr, align 4, !tbaa !21
  %13 = load i32, i32* %w.addr, align 4, !tbaa !21
  %add = add nsw i32 %13, %12
  store i32 %add, i32* %w.addr, align 4, !tbaa !21
  %14 = load i32, i32* %x.addr, align 4, !tbaa !21
  %15 = load i32, i32* %sourcex.addr, align 4, !tbaa !21
  %sub = sub nsw i32 %15, %14
  store i32 %sub, i32* %sourcex.addr, align 4, !tbaa !21
  store i32 0, i32* %x.addr, align 4, !tbaa !21
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %16 = load i32, i32* %y.addr, align 4, !tbaa !21
  %cmp4 = icmp slt i32 %16, 0
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %17 = load i32, i32* %y.addr, align 4, !tbaa !21
  %18 = load i32, i32* %h.addr, align 4, !tbaa !21
  %add6 = add nsw i32 %18, %17
  store i32 %add6, i32* %h.addr, align 4, !tbaa !21
  %19 = load i32, i32* %y.addr, align 4, !tbaa !21
  %20 = load i32, i32* %raster.addr, align 4, !tbaa !21
  %mul = mul nsw i32 %19, %20
  %21 = load i8*, i8** %base.addr, align 8, !tbaa !2
  %idx.ext = sext i32 %mul to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 %idx.neg
  store i8* %add.ptr, i8** %base.addr, align 8, !tbaa !2
  store i64 0, i64* %id.addr, align 8, !tbaa !6
  store i32 0, i32* %y.addr, align 4, !tbaa !21
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %do.body.1
  %22 = load i32, i32* %w.addr, align 4, !tbaa !21
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %23, i32 0, i32 13
  %24 = load i32, i32* %width, align 4, !tbaa !29
  %25 = load i32, i32* %x.addr, align 4, !tbaa !21
  %sub9 = sub nsw i32 %24, %25
  %cmp10 = icmp sgt i32 %22, %sub9
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.8
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %width12 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %26, i32 0, i32 13
  %27 = load i32, i32* %width12, align 4, !tbaa !29
  %28 = load i32, i32* %x.addr, align 4, !tbaa !21
  %sub13 = sub nsw i32 %27, %28
  store i32 %sub13, i32* %w.addr, align 4, !tbaa !21
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.end.8
  br label %do.cond

do.cond:                                          ; preds = %if.end.14
  br label %do.end

do.end:                                           ; preds = %do.cond
  %29 = load i32, i32* %h.addr, align 4, !tbaa !21
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %30, i32 0, i32 14
  %31 = load i32, i32* %height, align 4, !tbaa !30
  %32 = load i32, i32* %y.addr, align 4, !tbaa !21
  %sub15 = sub nsw i32 %31, %32
  %cmp16 = icmp sgt i32 %29, %sub15
  br i1 %cmp16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %do.end
  %33 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %height18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %33, i32 0, i32 14
  %34 = load i32, i32* %height18, align 4, !tbaa !30
  %35 = load i32, i32* %y.addr, align 4, !tbaa !21
  %sub19 = sub nsw i32 %34, %35
  store i32 %sub19, i32* %h.addr, align 4, !tbaa !21
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %do.end
  %36 = load i32, i32* %w.addr, align 4, !tbaa !21
  %cmp21 = icmp sle i32 %36, 0
  br i1 %cmp21, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.20
  %37 = load i32, i32* %h.addr, align 4, !tbaa !21
  %cmp22 = icmp sle i32 %37, 0
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %lor.lhs.false, %if.end.20
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.140

if.end.24:                                        ; preds = %lor.lhs.false
  br label %do.cond.25

do.cond.25:                                       ; preds = %if.end.24
  br label %do.end.26

do.end.26:                                        ; preds = %do.cond.25
  %38 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %call = call i32 @get_dev_target(%struct.gx_device_s** %tdev, %struct.gx_device_s* %38) #3
  store i32 %call, i32* %code, align 4, !tbaa !21
  %cmp27 = icmp slt i32 %call, 0
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %do.end.26
  %39 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %39, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.140

if.end.29:                                        ; preds = %do.end.26
  %40 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %40, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %41 = load i16, i16* %depth, align 2, !tbaa !8
  %conv = zext i16 %41 to i32
  %and = and i32 %conv, 7
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.end.29
  %42 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %43 = load i8*, i8** %base.addr, align 8, !tbaa !2
  %44 = load i32, i32* %sourcex.addr, align 4, !tbaa !21
  %45 = load i32, i32* %raster.addr, align 4, !tbaa !21
  %46 = load i64, i64* %id.addr, align 8, !tbaa !6
  %47 = load i32, i32* %x.addr, align 4, !tbaa !21
  %48 = load i32, i32* %y.addr, align 4, !tbaa !21
  %49 = load i32, i32* %w.addr, align 4, !tbaa !21
  %50 = load i32, i32* %h.addr, align 4, !tbaa !21
  %call31 = call i32 @gx_default_copy_color(%struct.gx_device_s* %42, i8* %43, i32 %44, i32 %45, i64 %46, i32 %47, i32 %48, i32 %49, i32 %50) #3
  store i32 %call31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.140

if.end.32:                                        ; preds = %if.end.29
  %51 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %color_info33 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %51, i32 0, i32 11
  %depth34 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info33, i32 0, i32 3
  %52 = load i16, i16* %depth34, align 2, !tbaa !8
  %conv35 = zext i16 %52 to i32
  %shr = ashr i32 %conv35, 3
  store i32 %shr, i32* %depth_bytes, align 4, !tbaa !21
  %53 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %color_info36 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %53, i32 0, i32 11
  %depth37 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info36, i32 0, i32 3
  %54 = load i16, i16* %depth37, align 2, !tbaa !8
  %conv38 = zext i16 %54 to i32
  store i32 %conv38, i32* %source_bits, align 4, !tbaa !21
  %55 = bitcast i32* %mapped_pixels to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #2
  %56 = load i32, i32* %depth_bytes, align 4, !tbaa !21
  %div = sdiv i32 480, %56
  store i32 %div, i32* %mapped_pixels, align 4, !tbaa !21
  %57 = load i32, i32* %w.addr, align 4, !tbaa !21
  %58 = load i32, i32* %mapped_pixels, align 4, !tbaa !21
  %shr39 = ashr i32 %58, 1
  %cmp40 = icmp sgt i32 %57, %shr39
  br i1 %cmp40, label %if.then.42, label %if.else

if.then.42:                                       ; preds = %if.end.32
  %59 = load i32, i32* %w.addr, align 4, !tbaa !21
  %60 = load i32, i32* %mapped_pixels, align 4, !tbaa !21
  %cmp43 = icmp slt i32 %59, %60
  br i1 %cmp43, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.42
  %61 = load i32, i32* %w.addr, align 4, !tbaa !21
  br label %cond.end

cond.false:                                       ; preds = %if.then.42
  %62 = load i32, i32* %mapped_pixels, align 4, !tbaa !21
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %61, %cond.true ], [ %62, %cond.false ]
  store i32 %cond, i32* %block_w, align 4, !tbaa !21
  store i32 1, i32* %block_h, align 4, !tbaa !21
  br label %if.end.46

if.else:                                          ; preds = %if.end.32
  %63 = load i32, i32* %w.addr, align 4, !tbaa !21
  store i32 %63, i32* %block_w, align 4, !tbaa !21
  %64 = load i32, i32* %mapped_pixels, align 4, !tbaa !21
  %65 = load i32, i32* %w.addr, align 4, !tbaa !21
  %div45 = sdiv i32 %64, %65
  store i32 %div45, i32* %block_h, align 4, !tbaa !21
  br label %if.end.46

if.end.46:                                        ; preds = %if.else, %cond.end
  %66 = bitcast i32* %mapped_pixels to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #2
  %67 = load i32, i32* %y.addr, align 4, !tbaa !21
  store i32 %67, i32* %yblock, align 4, !tbaa !21
  br label %for.cond

for.cond:                                         ; preds = %for.inc.137, %if.end.46
  %68 = load i32, i32* %yblock, align 4, !tbaa !21
  %69 = load i32, i32* %y.addr, align 4, !tbaa !21
  %70 = load i32, i32* %h.addr, align 4, !tbaa !21
  %add47 = add nsw i32 %69, %70
  %cmp48 = icmp slt i32 %68, %add47
  br i1 %cmp48, label %for.body, label %for.end.139

for.body:                                         ; preds = %for.cond
  %71 = load i32, i32* %x.addr, align 4, !tbaa !21
  store i32 %71, i32* %xblock, align 4, !tbaa !21
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.134, %for.body
  %72 = load i32, i32* %xblock, align 4, !tbaa !21
  %73 = load i32, i32* %x.addr, align 4, !tbaa !21
  %74 = load i32, i32* %w.addr, align 4, !tbaa !21
  %add51 = add nsw i32 %73, %74
  %cmp52 = icmp slt i32 %72, %add51
  br i1 %cmp52, label %for.body.54, label %for.end.136

for.body.54:                                      ; preds = %for.cond.50
  %75 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %75) #2
  %arraydecay = getelementptr inbounds [480 x i8], [480 x i8]* %mapped, i32 0, i32 0
  store i8* %arraydecay, i8** %p, align 8, !tbaa !2
  %76 = bitcast i32* %xend to i8*
  call void @llvm.lifetime.start(i64 4, i8* %76) #2
  %77 = load i32, i32* %xblock, align 4, !tbaa !21
  %78 = load i32, i32* %block_w, align 4, !tbaa !21
  %add55 = add nsw i32 %77, %78
  %79 = load i32, i32* %x.addr, align 4, !tbaa !21
  %80 = load i32, i32* %w.addr, align 4, !tbaa !21
  %add56 = add nsw i32 %79, %80
  %cmp57 = icmp slt i32 %add55, %add56
  br i1 %cmp57, label %cond.true.59, label %cond.false.61

cond.true.59:                                     ; preds = %for.body.54
  %81 = load i32, i32* %xblock, align 4, !tbaa !21
  %82 = load i32, i32* %block_w, align 4, !tbaa !21
  %add60 = add nsw i32 %81, %82
  br label %cond.end.63

cond.false.61:                                    ; preds = %for.body.54
  %83 = load i32, i32* %x.addr, align 4, !tbaa !21
  %84 = load i32, i32* %w.addr, align 4, !tbaa !21
  %add62 = add nsw i32 %83, %84
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.false.61, %cond.true.59
  %cond64 = phi i32 [ %add60, %cond.true.59 ], [ %add62, %cond.false.61 ]
  store i32 %cond64, i32* %xend, align 4, !tbaa !21
  %85 = bitcast i32* %yend to i8*
  call void @llvm.lifetime.start(i64 4, i8* %85) #2
  %86 = load i32, i32* %yblock, align 4, !tbaa !21
  %87 = load i32, i32* %block_h, align 4, !tbaa !21
  %add65 = add nsw i32 %86, %87
  %88 = load i32, i32* %y.addr, align 4, !tbaa !21
  %89 = load i32, i32* %h.addr, align 4, !tbaa !21
  %add66 = add nsw i32 %88, %89
  %cmp67 = icmp slt i32 %add65, %add66
  br i1 %cmp67, label %cond.true.69, label %cond.false.71

cond.true.69:                                     ; preds = %cond.end.63
  %90 = load i32, i32* %yblock, align 4, !tbaa !21
  %91 = load i32, i32* %block_h, align 4, !tbaa !21
  %add70 = add nsw i32 %90, %91
  br label %cond.end.73

cond.false.71:                                    ; preds = %cond.end.63
  %92 = load i32, i32* %y.addr, align 4, !tbaa !21
  %93 = load i32, i32* %h.addr, align 4, !tbaa !21
  %add72 = add nsw i32 %92, %93
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.false.71, %cond.true.69
  %cond74 = phi i32 [ %add70, %cond.true.69 ], [ %add72, %cond.false.71 ]
  store i32 %cond74, i32* %yend, align 4, !tbaa !21
  %94 = bitcast i32* %xcur to i8*
  call void @llvm.lifetime.start(i64 4, i8* %94) #2
  %95 = bitcast i32* %ycur to i8*
  call void @llvm.lifetime.start(i64 4, i8* %95) #2
  %96 = bitcast i32* %code75 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %96) #2
  %97 = load i32, i32* %yblock, align 4, !tbaa !21
  store i32 %97, i32* %ycur, align 4, !tbaa !21
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.116, %cond.end.73
  %98 = load i32, i32* %ycur, align 4, !tbaa !21
  %99 = load i32, i32* %yend, align 4, !tbaa !21
  %cmp77 = icmp slt i32 %98, %99
  br i1 %cmp77, label %for.body.79, label %for.end.118

for.body.79:                                      ; preds = %for.cond.76
  %100 = load i32, i32* %xblock, align 4, !tbaa !21
  store i32 %100, i32* %xcur, align 4, !tbaa !21
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc, %for.body.79
  %101 = load i32, i32* %xcur, align 4, !tbaa !21
  %102 = load i32, i32* %xend, align 4, !tbaa !21
  %cmp81 = icmp slt i32 %101, %102
  br i1 %cmp81, label %for.body.83, label %for.end

for.body.83:                                      ; preds = %for.cond.80
  %103 = bitcast i32* %sbit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %103) #2
  %104 = load i32, i32* %xcur, align 4, !tbaa !21
  %105 = load i32, i32* %x.addr, align 4, !tbaa !21
  %sub84 = sub nsw i32 %104, %105
  %106 = load i32, i32* %sourcex.addr, align 4, !tbaa !21
  %add85 = add nsw i32 %sub84, %106
  %107 = load i32, i32* %source_bits, align 4, !tbaa !21
  %mul86 = mul nsw i32 %add85, %107
  store i32 %mul86, i32* %sbit, align 4, !tbaa !21
  %108 = bitcast i32* %sbyte to i8*
  call void @llvm.lifetime.start(i64 4, i8* %108) #2
  %109 = load i32, i32* %ycur, align 4, !tbaa !21
  %110 = load i32, i32* %y.addr, align 4, !tbaa !21
  %sub87 = sub nsw i32 %109, %110
  %111 = load i32, i32* %raster.addr, align 4, !tbaa !21
  %mul88 = mul nsw i32 %sub87, %111
  %112 = load i32, i32* %sbit, align 4, !tbaa !21
  %shr89 = ashr i32 %112, 3
  %add90 = add nsw i32 %mul88, %shr89
  %idxprom = sext i32 %add90 to i64
  %113 = load i8*, i8** %base.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i8, i8* %113, i64 %idxprom
  %114 = load i8, i8* %arrayidx, align 1, !tbaa !31
  %conv91 = zext i8 %114 to i32
  store i32 %conv91, i32* %sbyte, align 4, !tbaa !21
  %115 = bitcast i32* %spixel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %115) #2
  %116 = load i32, i32* %sbyte, align 4, !tbaa !21
  %117 = load i32, i32* %sbit, align 4, !tbaa !21
  %and92 = and i32 %117, 7
  %shl = shl i32 %116, %and92
  %and93 = and i32 %shl, 255
  %118 = load i32, i32* %source_bits, align 4, !tbaa !21
  %sub94 = sub nsw i32 8, %118
  %shr95 = lshr i32 %and93, %sub94
  store i32 %shr95, i32* %spixel, align 4, !tbaa !21
  %119 = bitcast i64* %cindex to i8*
  call void @llvm.lifetime.start(i64 8, i8* %119) #2
  %120 = load i32, i32* %spixel, align 4, !tbaa !21
  %idxprom96 = zext i32 %120 to i64
  %121 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %122 = bitcast %struct.gx_device_s* %121 to %struct.gx_device_X_wrapper*
  %color_cache = getelementptr inbounds %struct.gx_device_X_wrapper, %struct.gx_device_X_wrapper* %122, i32 0, i32 44
  %arrayidx97 = getelementptr inbounds [16 x i64], [16 x i64]* %color_cache, i32 0, i64 %idxprom96
  %123 = load i64, i64* %arrayidx97, align 8, !tbaa !6
  store i64 %123, i64* %cindex, align 8, !tbaa !6
  %124 = load i64, i64* %cindex, align 8, !tbaa !6
  %cmp98 = icmp eq i64 %124, -1
  br i1 %cmp98, label %if.then.100, label %if.end.103

if.then.100:                                      ; preds = %for.body.83
  %125 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %126 = load i32, i32* %spixel, align 4, !tbaa !21
  %conv101 = zext i32 %126 to i64
  %call102 = call i64 @x_alt_map_color(%struct.gx_device_s* %125, i64 %conv101) #3
  store i64 %call102, i64* %cindex, align 8, !tbaa !6
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.100, %for.body.83
  %127 = load i32, i32* %depth_bytes, align 4, !tbaa !21
  switch i32 %127, label %sw.default [
    i32 4, label %sw.bb
    i32 3, label %sw.bb.106
    i32 2, label %sw.bb.110
  ]

sw.bb:                                            ; preds = %if.end.103
  %128 = load i64, i64* %cindex, align 8, !tbaa !6
  %shr104 = lshr i64 %128, 24
  %conv105 = trunc i64 %shr104 to i8
  %129 = load i8*, i8** %p, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !2
  store i8 %conv105, i8* %129, align 1, !tbaa !31
  br label %sw.bb.106

sw.bb.106:                                        ; preds = %if.end.103, %sw.bb
  %130 = load i64, i64* %cindex, align 8, !tbaa !6
  %shr107 = lshr i64 %130, 16
  %conv108 = trunc i64 %shr107 to i8
  %131 = load i8*, i8** %p, align 8, !tbaa !2
  %incdec.ptr109 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %incdec.ptr109, i8** %p, align 8, !tbaa !2
  store i8 %conv108, i8* %131, align 1, !tbaa !31
  br label %sw.bb.110

sw.bb.110:                                        ; preds = %if.end.103, %sw.bb.106
  %132 = load i64, i64* %cindex, align 8, !tbaa !6
  %shr111 = lshr i64 %132, 8
  %conv112 = trunc i64 %shr111 to i8
  %133 = load i8*, i8** %p, align 8, !tbaa !2
  %incdec.ptr113 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %incdec.ptr113, i8** %p, align 8, !tbaa !2
  store i8 %conv112, i8* %133, align 1, !tbaa !31
  br label %sw.default

sw.default:                                       ; preds = %if.end.103, %sw.bb.110
  %134 = load i64, i64* %cindex, align 8, !tbaa !6
  %conv114 = trunc i64 %134 to i8
  %135 = load i8*, i8** %p, align 8, !tbaa !2
  %incdec.ptr115 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %incdec.ptr115, i8** %p, align 8, !tbaa !2
  store i8 %conv114, i8* %135, align 1, !tbaa !31
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %136 = bitcast i64* %cindex to i8*
  call void @llvm.lifetime.end(i64 8, i8* %136) #2
  %137 = bitcast i32* %spixel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #2
  %138 = bitcast i32* %sbyte to i8*
  call void @llvm.lifetime.end(i64 4, i8* %138) #2
  %139 = bitcast i32* %sbit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %139) #2
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %140 = load i32, i32* %xcur, align 4, !tbaa !21
  %inc = add nsw i32 %140, 1
  store i32 %inc, i32* %xcur, align 4, !tbaa !21
  br label %for.cond.80

for.end:                                          ; preds = %for.cond.80
  br label %for.inc.116

for.inc.116:                                      ; preds = %for.end
  %141 = load i32, i32* %ycur, align 4, !tbaa !21
  %inc117 = add nsw i32 %141, 1
  store i32 %inc117, i32* %ycur, align 4, !tbaa !21
  br label %for.cond.76

for.end.118:                                      ; preds = %for.cond.76
  %142 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %142, i32 0, i32 42
  %copy_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 10
  %143 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %copy_color, align 8, !tbaa !32
  %144 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %arraydecay119 = getelementptr inbounds [480 x i8], [480 x i8]* %mapped, i32 0, i32 0
  %145 = load i32, i32* %xend, align 4, !tbaa !21
  %146 = load i32, i32* %xblock, align 4, !tbaa !21
  %sub120 = sub nsw i32 %145, %146
  %147 = load i32, i32* %depth_bytes, align 4, !tbaa !21
  %mul121 = mul nsw i32 %sub120, %147
  %148 = load i32, i32* %xblock, align 4, !tbaa !21
  %149 = load i32, i32* %yblock, align 4, !tbaa !21
  %150 = load i32, i32* %xend, align 4, !tbaa !21
  %151 = load i32, i32* %xblock, align 4, !tbaa !21
  %sub122 = sub nsw i32 %150, %151
  %152 = load i32, i32* %yend, align 4, !tbaa !21
  %153 = load i32, i32* %yblock, align 4, !tbaa !21
  %sub123 = sub nsw i32 %152, %153
  %call124 = call i32 %143(%struct.gx_device_s* %144, i8* %arraydecay119, i32 0, i32 %mul121, i64 0, i32 %148, i32 %149, i32 %sub122, i32 %sub123) #3
  store i32 %call124, i32* %code75, align 4, !tbaa !21
  %154 = load i32, i32* %code75, align 4, !tbaa !21
  %cmp125 = icmp slt i32 %154, 0
  br i1 %cmp125, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %for.end.118
  %155 = load i32, i32* %code75, align 4, !tbaa !21
  store i32 %155, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.128:                                       ; preds = %for.end.118
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.128, %if.then.127
  %156 = bitcast i32* %code75 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %156) #2
  %157 = bitcast i32* %ycur to i8*
  call void @llvm.lifetime.end(i64 4, i8* %157) #2
  %158 = bitcast i32* %xcur to i8*
  call void @llvm.lifetime.end(i64 4, i8* %158) #2
  %159 = bitcast i32* %yend to i8*
  call void @llvm.lifetime.end(i64 4, i8* %159) #2
  %160 = bitcast i32* %xend to i8*
  call void @llvm.lifetime.end(i64 4, i8* %160) #2
  %161 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %161) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.140 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.134

for.inc.134:                                      ; preds = %cleanup.cont
  %162 = load i32, i32* %block_w, align 4, !tbaa !21
  %163 = load i32, i32* %xblock, align 4, !tbaa !21
  %add135 = add nsw i32 %163, %162
  store i32 %add135, i32* %xblock, align 4, !tbaa !21
  br label %for.cond.50

for.end.136:                                      ; preds = %for.cond.50
  br label %for.inc.137

for.inc.137:                                      ; preds = %for.end.136
  %164 = load i32, i32* %block_h, align 4, !tbaa !21
  %165 = load i32, i32* %yblock, align 4, !tbaa !21
  %add138 = add nsw i32 %165, %164
  store i32 %add138, i32* %yblock, align 4, !tbaa !21
  br label %for.cond

for.end.139:                                      ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.140

cleanup.140:                                      ; preds = %for.end.139, %cleanup, %if.then.30, %if.then.28, %if.then.23
  %166 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %166) #2
  %167 = bitcast [480 x i8]* %mapped to i8*
  call void @llvm.lifetime.end(i64 480, i8* %167) #2
  %168 = bitcast i32* %yblock to i8*
  call void @llvm.lifetime.end(i64 4, i8* %168) #2
  %169 = bitcast i32* %xblock to i8*
  call void @llvm.lifetime.end(i64 4, i8* %169) #2
  %170 = bitcast i32* %block_h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %170) #2
  %171 = bitcast i32* %block_w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %171) #2
  %172 = bitcast i32* %source_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %172) #2
  %173 = bitcast i32* %depth_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %173) #2
  %174 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %174) #2
  %175 = load i32, i32* %retval
  ret i32 %175
}

declare i32 @gx_default_draw_line(%struct.gx_device_s*, i32, i32, i32, i32, i64) #0

; Function Attrs: nounwind uwtable
define internal i32 @x_wrap_get_bits(%struct.gx_device_s* %dev, i32 %y, i8* %str, i8** %actual_data) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %y.addr = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %actual_data.addr = alloca i8**, align 8
  %depth = alloca i32, align 4
  %tdev = alloca %struct.gx_device_s*, align 8
  %width = alloca i32, align 4
  %sdepth = alloca i32, align 4
  %smask = alloca i8, align 1
  %dsize = alloca i32, align 4
  %mem = alloca %struct.gs_memory_s*, align 8
  %row = alloca i8*, align 8
  %base = alloca i8*, align 8
  %code = alloca i32, align 4
  %pixel_in = alloca i64, align 8
  %pixel_out = alloca i64, align 8
  %xi = alloca i32, align 4
  %sbit = alloca i32, align 4
  %l_dptr = alloca i8*, align 8
  %l_dbit = alloca i32, align 4
  %l_dbyte = alloca i8, align 1
  %cleanup.dest.slot = alloca i32
  %sptr = alloca i8*, align 8
  %pixel = alloca i64, align 8
  %rgb = alloca [3 x i16], align 2
  %i = alloca i32, align 4
  %c = alloca i16, align 2
  %m = alloca i16, align 2
  %y72 = alloca i16, align 2
  %k = alloca i16, align 2
  %cmyk = alloca [4 x i16], align 2
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  store i32 %y, i32* %y.addr, align 4, !tbaa !21
  store i8* %str, i8** %str.addr, align 8, !tbaa !2
  store i8** %actual_data, i8*** %actual_data.addr, align 8, !tbaa !2
  %0 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 11
  %depth1 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %2 = load i16, i16* %depth1, align 2, !tbaa !8
  %conv = zext i16 %2 to i32
  store i32 %conv, i32* %depth, align 4, !tbaa !21
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %sdepth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  call void @llvm.lifetime.start(i64 1, i8* %smask) #2
  %6 = bitcast i32* %dsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 3
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !33
  store %struct.gs_memory_s* %9, %struct.gs_memory_s** %mem, align 8, !tbaa !2
  %10 = bitcast i8** %row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = bitcast i8** %base to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = bitcast i64* %pixel_in to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  store i64 -1, i64* %pixel_in, align 8, !tbaa !6
  %14 = bitcast i64* %pixel_out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #2
  store i64 0, i64* %pixel_out, align 8, !tbaa !6
  %15 = bitcast i32* %xi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = bitcast i32* %sbit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = bitcast i8** %l_dptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #2
  %18 = load i8*, i8** %str.addr, align 8, !tbaa !2
  store i8* %18, i8** %l_dptr, align 8, !tbaa !2
  %19 = bitcast i32* %l_dbit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #2
  store i32 0, i32* %l_dbit, align 4, !tbaa !21
  call void @llvm.lifetime.start(i64 1, i8* %l_dbyte) #2
  %20 = load i32, i32* %l_dbit, align 4, !tbaa !21
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %21 = load i8*, i8** %l_dptr, align 8, !tbaa !2
  %22 = load i8, i8* %21, align 1, !tbaa !31
  %conv2 = zext i8 %22 to i32
  %23 = load i32, i32* %l_dbit, align 4, !tbaa !21
  %shr = ashr i32 65280, %23
  %and = and i32 %conv2, %shr
  %conv3 = trunc i32 %and to i8
  %conv4 = zext i8 %conv3 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv4, %cond.true ], [ 0, %cond.false ]
  %conv5 = trunc i32 %cond to i8
  store i8 %conv5, i8* %l_dbyte, align 1, !tbaa !31
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %call = call i32 @get_dev_target(%struct.gx_device_s** %tdev, %struct.gx_device_s* %24) #3
  store i32 %call, i32* %code, align 4, !tbaa !21
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %25 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.230

if.end:                                           ; preds = %cond.end
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %width7 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %26, i32 0, i32 13
  %27 = load i32, i32* %width7, align 4, !tbaa !29
  store i32 %27, i32* %width, align 4, !tbaa !21
  %28 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %color_info8 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %28, i32 0, i32 11
  %depth9 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info8, i32 0, i32 3
  %29 = load i16, i16* %depth9, align 2, !tbaa !8
  %conv10 = zext i16 %29 to i32
  store i32 %conv10, i32* %sdepth, align 4, !tbaa !21
  %30 = load i32, i32* %sdepth, align 4, !tbaa !21
  %cmp11 = icmp sle i32 %30, 8
  br i1 %cmp11, label %cond.true.13, label %cond.false.14

cond.true.13:                                     ; preds = %if.end
  %31 = load i32, i32* %sdepth, align 4, !tbaa !21
  %shl = shl i32 1, %31
  %sub = sub nsw i32 %shl, 1
  br label %cond.end.15

cond.false.14:                                    ; preds = %if.end
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.14, %cond.true.13
  %cond16 = phi i32 [ %sub, %cond.true.13 ], [ 255, %cond.false.14 ]
  %conv17 = trunc i32 %cond16 to i8
  store i8 %conv17, i8* %smask, align 1, !tbaa !31
  %32 = load i32, i32* %width, align 4, !tbaa !21
  %33 = load i32, i32* %sdepth, align 4, !tbaa !21
  %mul = mul nsw i32 %32, %33
  %add = add nsw i32 %mul, 7
  %div = sdiv i32 %add, 8
  store i32 %div, i32* %dsize, align 4, !tbaa !21
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !2
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %34, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %35 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !34
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !2
  %37 = load i32, i32* %dsize, align 4, !tbaa !21
  %call18 = call i8* %35(%struct.gs_memory_s* %36, i32 %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0)) #3
  store i8* %call18, i8** %row, align 8, !tbaa !2
  %38 = load i8*, i8** %row, align 8, !tbaa !2
  %cmp19 = icmp eq i8* %38, null
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %cond.end.15
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.230

if.end.22:                                        ; preds = %cond.end.15
  %39 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %procs23 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %39, i32 0, i32 42
  %get_bits = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs23, i32 0, i32 12
  %40 = load i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)** %get_bits, align 8, !tbaa !37
  %41 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %42 = load i32, i32* %y.addr, align 4, !tbaa !21
  %43 = load i8*, i8** %row, align 8, !tbaa !2
  %call24 = call i32 %40(%struct.gx_device_s* %41, i32 %42, i8* %43, i8** %base) #3
  store i32 %call24, i32* %code, align 4, !tbaa !21
  %44 = load i32, i32* %code, align 4, !tbaa !21
  %cmp25 = icmp slt i32 %44, 0
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.22
  br label %gx

if.end.28:                                        ; preds = %if.end.22
  store i32 0, i32* %sbit, align 4, !tbaa !21
  store i32 0, i32* %xi, align 4, !tbaa !21
  br label %for.cond

for.cond:                                         ; preds = %for.inc.213, %if.end.28
  %45 = load i32, i32* %xi, align 4, !tbaa !21
  %46 = load i32, i32* %width, align 4, !tbaa !21
  %cmp29 = icmp slt i32 %45, %46
  br i1 %cmp29, label %for.body, label %for.end.215

for.body:                                         ; preds = %for.cond
  %47 = bitcast i8** %sptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %47) #2
  %48 = load i8*, i8** %base, align 8, !tbaa !2
  %49 = load i32, i32* %sbit, align 4, !tbaa !21
  %shr31 = ashr i32 %49, 3
  %idx.ext = sext i32 %shr31 to i64
  %add.ptr = getelementptr inbounds i8, i8* %48, i64 %idx.ext
  store i8* %add.ptr, i8** %sptr, align 8, !tbaa !2
  %50 = bitcast i64* %pixel to i8*
  call void @llvm.lifetime.start(i64 8, i8* %50) #2
  %51 = bitcast [3 x i16]* %rgb to i8*
  call void @llvm.lifetime.start(i64 6, i8* %51) #2
  %52 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %52) #2
  %53 = load i32, i32* %sdepth, align 4, !tbaa !21
  %cmp32 = icmp sle i32 %53, 8
  br i1 %cmp32, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %for.body
  %54 = load i8*, i8** %sptr, align 8, !tbaa !2
  %55 = load i8, i8* %54, align 1, !tbaa !31
  %conv35 = zext i8 %55 to i32
  %56 = load i32, i32* %sdepth, align 4, !tbaa !21
  %sub36 = sub nsw i32 8, %56
  %57 = load i32, i32* %sbit, align 4, !tbaa !21
  %and37 = and i32 %57, 7
  %sub38 = sub nsw i32 %sub36, %and37
  %shr39 = ashr i32 %conv35, %sub38
  %58 = load i8, i8* %smask, align 1, !tbaa !31
  %conv40 = zext i8 %58 to i32
  %and41 = and i32 %shr39, %conv40
  %conv42 = sext i32 %and41 to i64
  store i64 %conv42, i64* %pixel, align 8, !tbaa !6
  br label %if.end.51

if.else:                                          ; preds = %for.body
  store i64 0, i64* %pixel, align 8, !tbaa !6
  store i32 0, i32* %i, align 4, !tbaa !21
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc, %if.else
  %59 = load i32, i32* %i, align 4, !tbaa !21
  %60 = load i32, i32* %sdepth, align 4, !tbaa !21
  %cmp44 = icmp slt i32 %59, %60
  br i1 %cmp44, label %for.body.46, label %for.end

for.body.46:                                      ; preds = %for.cond.43
  %61 = load i64, i64* %pixel, align 8, !tbaa !6
  %shl47 = shl i64 %61, 8
  %62 = load i8*, i8** %sptr, align 8, !tbaa !2
  %63 = load i8, i8* %62, align 1, !tbaa !31
  %conv48 = zext i8 %63 to i64
  %add49 = add i64 %shl47, %conv48
  store i64 %add49, i64* %pixel, align 8, !tbaa !6
  br label %for.inc

for.inc:                                          ; preds = %for.body.46
  %64 = load i32, i32* %i, align 4, !tbaa !21
  %add50 = add nsw i32 %64, 8
  store i32 %add50, i32* %i, align 4, !tbaa !21
  %65 = load i8*, i8** %sptr, align 8, !tbaa !2
  %incdec.ptr = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %incdec.ptr, i8** %sptr, align 8, !tbaa !2
  br label %for.cond.43

for.end:                                          ; preds = %for.cond.43
  br label %if.end.51

if.end.51:                                        ; preds = %for.end, %if.then.34
  %66 = load i64, i64* %pixel, align 8, !tbaa !6
  %67 = load i64, i64* %pixel_in, align 8, !tbaa !6
  %cmp52 = icmp ne i64 %66, %67
  br i1 %cmp52, label %if.then.54, label %if.end.126

if.then.54:                                       ; preds = %if.end.51
  %68 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %procs55 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %68, i32 0, i32 42
  %map_color_rgb = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs55, i32 0, i32 6
  %69 = load i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)** %map_color_rgb, align 8, !tbaa !26
  %70 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %71 = load i64, i64* %pixel, align 8, !tbaa !6
  %arraydecay = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i32 0
  %call56 = call i32 %69(%struct.gx_device_s* %70, i64 %71, i16* %arraydecay) #3
  %72 = load i64, i64* %pixel, align 8, !tbaa !6
  store i64 %72, i64* %pixel_in, align 8, !tbaa !6
  %73 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %color_info57 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %73, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info57, i32 0, i32 1
  %74 = load i32, i32* %num_components, align 4, !tbaa !38
  %cmp58 = icmp sle i32 %74, 3
  br i1 %cmp58, label %if.then.60, label %if.else.64

if.then.60:                                       ; preds = %if.then.54
  %75 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %procs61 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %75, i32 0, i32 42
  %map_rgb_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs61, i32 0, i32 5
  %76 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %map_rgb_color, align 8, !tbaa !39
  %77 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %arraydecay62 = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i32 0
  %call63 = call i64 %76(%struct.gx_device_s* %77, i16* %arraydecay62) #3
  store i64 %call63, i64* %pixel_out, align 8, !tbaa !6
  br label %if.end.125

if.else.64:                                       ; preds = %if.then.54
  %78 = bitcast i16* %c to i8*
  call void @llvm.lifetime.start(i64 2, i8* %78) #2
  %arrayidx = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i64 0
  %79 = load i16, i16* %arrayidx, align 2, !tbaa !22
  %conv65 = zext i16 %79 to i32
  %sub66 = sub nsw i32 65535, %conv65
  %conv67 = trunc i32 %sub66 to i16
  store i16 %conv67, i16* %c, align 2, !tbaa !22
  %80 = bitcast i16* %m to i8*
  call void @llvm.lifetime.start(i64 2, i8* %80) #2
  %arrayidx68 = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i64 1
  %81 = load i16, i16* %arrayidx68, align 2, !tbaa !22
  %conv69 = zext i16 %81 to i32
  %sub70 = sub nsw i32 65535, %conv69
  %conv71 = trunc i32 %sub70 to i16
  store i16 %conv71, i16* %m, align 2, !tbaa !22
  %82 = bitcast i16* %y72 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %82) #2
  %arrayidx73 = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i64 2
  %83 = load i16, i16* %arrayidx73, align 2, !tbaa !22
  %conv74 = zext i16 %83 to i32
  %sub75 = sub nsw i32 65535, %conv74
  %conv76 = trunc i32 %sub75 to i16
  store i16 %conv76, i16* %y72, align 2, !tbaa !22
  %84 = bitcast i16* %k to i8*
  call void @llvm.lifetime.start(i64 2, i8* %84) #2
  %85 = load i16, i16* %c, align 2, !tbaa !22
  %conv77 = zext i16 %85 to i32
  %86 = load i16, i16* %m, align 2, !tbaa !22
  %conv78 = zext i16 %86 to i32
  %cmp79 = icmp slt i32 %conv77, %conv78
  br i1 %cmp79, label %cond.true.81, label %cond.false.92

cond.true.81:                                     ; preds = %if.else.64
  %87 = load i16, i16* %c, align 2, !tbaa !22
  %conv82 = zext i16 %87 to i32
  %88 = load i16, i16* %y72, align 2, !tbaa !22
  %conv83 = zext i16 %88 to i32
  %cmp84 = icmp slt i32 %conv82, %conv83
  br i1 %cmp84, label %cond.true.86, label %cond.false.88

cond.true.86:                                     ; preds = %cond.true.81
  %89 = load i16, i16* %c, align 2, !tbaa !22
  %conv87 = zext i16 %89 to i32
  br label %cond.end.90

cond.false.88:                                    ; preds = %cond.true.81
  %90 = load i16, i16* %y72, align 2, !tbaa !22
  %conv89 = zext i16 %90 to i32
  br label %cond.end.90

cond.end.90:                                      ; preds = %cond.false.88, %cond.true.86
  %cond91 = phi i32 [ %conv87, %cond.true.86 ], [ %conv89, %cond.false.88 ]
  br label %cond.end.103

cond.false.92:                                    ; preds = %if.else.64
  %91 = load i16, i16* %m, align 2, !tbaa !22
  %conv93 = zext i16 %91 to i32
  %92 = load i16, i16* %y72, align 2, !tbaa !22
  %conv94 = zext i16 %92 to i32
  %cmp95 = icmp slt i32 %conv93, %conv94
  br i1 %cmp95, label %cond.true.97, label %cond.false.99

cond.true.97:                                     ; preds = %cond.false.92
  %93 = load i16, i16* %m, align 2, !tbaa !22
  %conv98 = zext i16 %93 to i32
  br label %cond.end.101

cond.false.99:                                    ; preds = %cond.false.92
  %94 = load i16, i16* %y72, align 2, !tbaa !22
  %conv100 = zext i16 %94 to i32
  br label %cond.end.101

cond.end.101:                                     ; preds = %cond.false.99, %cond.true.97
  %cond102 = phi i32 [ %conv98, %cond.true.97 ], [ %conv100, %cond.false.99 ]
  br label %cond.end.103

cond.end.103:                                     ; preds = %cond.end.101, %cond.end.90
  %cond104 = phi i32 [ %cond91, %cond.end.90 ], [ %cond102, %cond.end.101 ]
  %conv105 = trunc i32 %cond104 to i16
  store i16 %conv105, i16* %k, align 2, !tbaa !22
  %95 = bitcast [4 x i16]* %cmyk to i8*
  call void @llvm.lifetime.start(i64 8, i8* %95) #2
  %96 = load i16, i16* %c, align 2, !tbaa !22
  %conv106 = zext i16 %96 to i32
  %97 = load i16, i16* %k, align 2, !tbaa !22
  %conv107 = zext i16 %97 to i32
  %sub108 = sub nsw i32 %conv106, %conv107
  %conv109 = trunc i32 %sub108 to i16
  %arrayidx110 = getelementptr inbounds [4 x i16], [4 x i16]* %cmyk, i32 0, i64 0
  store i16 %conv109, i16* %arrayidx110, align 2, !tbaa !22
  %98 = load i16, i16* %m, align 2, !tbaa !22
  %conv111 = zext i16 %98 to i32
  %99 = load i16, i16* %k, align 2, !tbaa !22
  %conv112 = zext i16 %99 to i32
  %sub113 = sub nsw i32 %conv111, %conv112
  %conv114 = trunc i32 %sub113 to i16
  %arrayidx115 = getelementptr inbounds [4 x i16], [4 x i16]* %cmyk, i32 0, i64 1
  store i16 %conv114, i16* %arrayidx115, align 2, !tbaa !22
  %100 = load i16, i16* %y72, align 2, !tbaa !22
  %conv116 = zext i16 %100 to i32
  %101 = load i16, i16* %k, align 2, !tbaa !22
  %conv117 = zext i16 %101 to i32
  %sub118 = sub nsw i32 %conv116, %conv117
  %conv119 = trunc i32 %sub118 to i16
  %arrayidx120 = getelementptr inbounds [4 x i16], [4 x i16]* %cmyk, i32 0, i64 2
  store i16 %conv119, i16* %arrayidx120, align 2, !tbaa !22
  %102 = load i16, i16* %k, align 2, !tbaa !22
  %arrayidx121 = getelementptr inbounds [4 x i16], [4 x i16]* %cmyk, i32 0, i64 3
  store i16 %102, i16* %arrayidx121, align 2, !tbaa !22
  %103 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %procs122 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %103, i32 0, i32 42
  %map_cmyk_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs122, i32 0, i32 15
  %104 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %map_cmyk_color, align 8, !tbaa !40
  %105 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %arraydecay123 = getelementptr inbounds [4 x i16], [4 x i16]* %cmyk, i32 0, i32 0
  %call124 = call i64 %104(%struct.gx_device_s* %105, i16* %arraydecay123) #3
  store i64 %call124, i64* %pixel_out, align 8, !tbaa !6
  %106 = bitcast [4 x i16]* %cmyk to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #2
  %107 = bitcast i16* %k to i8*
  call void @llvm.lifetime.end(i64 2, i8* %107) #2
  %108 = bitcast i16* %y72 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %108) #2
  %109 = bitcast i16* %m to i8*
  call void @llvm.lifetime.end(i64 2, i8* %109) #2
  %110 = bitcast i16* %c to i8*
  call void @llvm.lifetime.end(i64 2, i8* %110) #2
  br label %if.end.125

if.end.125:                                       ; preds = %cond.end.103, %if.then.60
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.125, %if.end.51
  br label %do.body

do.body:                                          ; preds = %if.end.126
  %111 = load i32, i32* %depth, align 4, !tbaa !21
  %shr127 = ashr i32 %111, 2
  switch i32 %shr127, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.146
    i32 3, label %sw.bb.159
    i32 16, label %sw.bb.179
    i32 14, label %sw.bb.183
    i32 12, label %sw.bb.187
    i32 10, label %sw.bb.191
    i32 8, label %sw.bb.195
    i32 6, label %sw.bb.199
    i32 4, label %sw.bb.203
    i32 2, label %sw.bb.207
  ]

sw.bb:                                            ; preds = %do.body
  %112 = load i32, i32* %depth, align 4, !tbaa !21
  %113 = load i32, i32* %l_dbit, align 4, !tbaa !21
  %add128 = add nsw i32 %113, %112
  store i32 %add128, i32* %l_dbit, align 4, !tbaa !21
  %cmp129 = icmp eq i32 %add128, 8
  br i1 %cmp129, label %if.then.131, label %if.else.137

if.then.131:                                      ; preds = %sw.bb
  %114 = load i8, i8* %l_dbyte, align 1, !tbaa !31
  %conv132 = zext i8 %114 to i32
  %115 = load i64, i64* %pixel_out, align 8, !tbaa !6
  %conv133 = trunc i64 %115 to i8
  %conv134 = zext i8 %conv133 to i32
  %or = or i32 %conv132, %conv134
  %conv135 = trunc i32 %or to i8
  %116 = load i8*, i8** %l_dptr, align 8, !tbaa !2
  %incdec.ptr136 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %incdec.ptr136, i8** %l_dptr, align 8, !tbaa !2
  store i8 %conv135, i8* %116, align 1, !tbaa !31
  store i8 0, i8* %l_dbyte, align 1, !tbaa !31
  store i32 0, i32* %l_dbit, align 4, !tbaa !21
  br label %if.end.145

if.else.137:                                      ; preds = %sw.bb
  %117 = load i64, i64* %pixel_out, align 8, !tbaa !6
  %118 = load i32, i32* %l_dbit, align 4, !tbaa !21
  %sub138 = sub nsw i32 8, %118
  %sh_prom = zext i32 %sub138 to i64
  %shl139 = shl i64 %117, %sh_prom
  %conv140 = trunc i64 %shl139 to i8
  %conv141 = zext i8 %conv140 to i32
  %119 = load i8, i8* %l_dbyte, align 1, !tbaa !31
  %conv142 = zext i8 %119 to i32
  %or143 = or i32 %conv142, %conv141
  %conv144 = trunc i32 %or143 to i8
  store i8 %conv144, i8* %l_dbyte, align 1, !tbaa !31
  br label %if.end.145

if.end.145:                                       ; preds = %if.else.137, %if.then.131
  br label %sw.epilog

sw.bb.146:                                        ; preds = %do.body
  %120 = load i32, i32* %l_dbit, align 4, !tbaa !21
  %xor = xor i32 %120, 4
  store i32 %xor, i32* %l_dbit, align 4, !tbaa !21
  %tobool147 = icmp ne i32 %xor, 0
  br i1 %tobool147, label %if.then.148, label %if.else.151

if.then.148:                                      ; preds = %sw.bb.146
  %121 = load i64, i64* %pixel_out, align 8, !tbaa !6
  %shl149 = shl i64 %121, 4
  %conv150 = trunc i64 %shl149 to i8
  store i8 %conv150, i8* %l_dbyte, align 1, !tbaa !31
  br label %if.end.158

if.else.151:                                      ; preds = %sw.bb.146
  %122 = load i8, i8* %l_dbyte, align 1, !tbaa !31
  %conv152 = zext i8 %122 to i32
  %123 = load i64, i64* %pixel_out, align 8, !tbaa !6
  %conv153 = trunc i64 %123 to i8
  %conv154 = zext i8 %conv153 to i32
  %or155 = or i32 %conv152, %conv154
  %conv156 = trunc i32 %or155 to i8
  %124 = load i8*, i8** %l_dptr, align 8, !tbaa !2
  %incdec.ptr157 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %incdec.ptr157, i8** %l_dptr, align 8, !tbaa !2
  store i8 %conv156, i8* %124, align 1, !tbaa !31
  br label %if.end.158

if.end.158:                                       ; preds = %if.else.151, %if.then.148
  br label %sw.epilog

sw.bb.159:                                        ; preds = %do.body
  %125 = load i32, i32* %l_dbit, align 4, !tbaa !21
  %xor160 = xor i32 %125, 4
  store i32 %xor160, i32* %l_dbit, align 4, !tbaa !21
  %tobool161 = icmp ne i32 %xor160, 0
  br i1 %tobool161, label %if.then.162, label %if.else.168

if.then.162:                                      ; preds = %sw.bb.159
  %126 = load i64, i64* %pixel_out, align 8, !tbaa !6
  %shr163 = lshr i64 %126, 4
  %conv164 = trunc i64 %shr163 to i8
  %127 = load i8*, i8** %l_dptr, align 8, !tbaa !2
  %incdec.ptr165 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %incdec.ptr165, i8** %l_dptr, align 8, !tbaa !2
  store i8 %conv164, i8* %127, align 1, !tbaa !31
  %128 = load i64, i64* %pixel_out, align 8, !tbaa !6
  %shl166 = shl i64 %128, 4
  %conv167 = trunc i64 %shl166 to i8
  store i8 %conv167, i8* %l_dbyte, align 1, !tbaa !31
  br label %if.end.178

if.else.168:                                      ; preds = %sw.bb.159
  %129 = load i8, i8* %l_dbyte, align 1, !tbaa !31
  %conv169 = zext i8 %129 to i32
  %130 = load i64, i64* %pixel_out, align 8, !tbaa !6
  %shr170 = lshr i64 %130, 8
  %conv171 = trunc i64 %shr170 to i8
  %conv172 = zext i8 %conv171 to i32
  %or173 = or i32 %conv169, %conv172
  %conv174 = trunc i32 %or173 to i8
  %131 = load i8*, i8** %l_dptr, align 8, !tbaa !2
  store i8 %conv174, i8* %131, align 1, !tbaa !31
  %132 = load i64, i64* %pixel_out, align 8, !tbaa !6
  %conv175 = trunc i64 %132 to i8
  %133 = load i8*, i8** %l_dptr, align 8, !tbaa !2
  %arrayidx176 = getelementptr inbounds i8, i8* %133, i64 1
  store i8 %conv175, i8* %arrayidx176, align 1, !tbaa !31
  %134 = load i8*, i8** %l_dptr, align 8, !tbaa !2
  %add.ptr177 = getelementptr inbounds i8, i8* %134, i64 2
  store i8* %add.ptr177, i8** %l_dptr, align 8, !tbaa !2
  br label %if.end.178

if.end.178:                                       ; preds = %if.else.168, %if.then.162
  br label %sw.epilog

sw.bb.179:                                        ; preds = %do.body
  %135 = load i64, i64* %pixel_out, align 8, !tbaa !6
  %shr180 = lshr i64 %135, 56
  %conv181 = trunc i64 %shr180 to i8
  %136 = load i8*, i8** %l_dptr, align 8, !tbaa !2
  %incdec.ptr182 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %incdec.ptr182, i8** %l_dptr, align 8, !tbaa !2
  store i8 %conv181, i8* %136, align 1, !tbaa !31
  br label %sw.bb.183

sw.bb.183:                                        ; preds = %do.body, %sw.bb.179
  %137 = load i64, i64* %pixel_out, align 8, !tbaa !6
  %shr184 = lshr i64 %137, 48
  %conv185 = trunc i64 %shr184 to i8
  %138 = load i8*, i8** %l_dptr, align 8, !tbaa !2
  %incdec.ptr186 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %incdec.ptr186, i8** %l_dptr, align 8, !tbaa !2
  store i8 %conv185, i8* %138, align 1, !tbaa !31
  br label %sw.bb.187

sw.bb.187:                                        ; preds = %do.body, %sw.bb.183
  %139 = load i64, i64* %pixel_out, align 8, !tbaa !6
  %shr188 = lshr i64 %139, 40
  %conv189 = trunc i64 %shr188 to i8
  %140 = load i8*, i8** %l_dptr, align 8, !tbaa !2
  %incdec.ptr190 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %incdec.ptr190, i8** %l_dptr, align 8, !tbaa !2
  store i8 %conv189, i8* %140, align 1, !tbaa !31
  br label %sw.bb.191

sw.bb.191:                                        ; preds = %do.body, %sw.bb.187
  %141 = load i64, i64* %pixel_out, align 8, !tbaa !6
  %shr192 = lshr i64 %141, 32
  %conv193 = trunc i64 %shr192 to i8
  %142 = load i8*, i8** %l_dptr, align 8, !tbaa !2
  %incdec.ptr194 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %incdec.ptr194, i8** %l_dptr, align 8, !tbaa !2
  store i8 %conv193, i8* %142, align 1, !tbaa !31
  br label %sw.bb.195

sw.bb.195:                                        ; preds = %do.body, %sw.bb.191
  %143 = load i64, i64* %pixel_out, align 8, !tbaa !6
  %shr196 = lshr i64 %143, 24
  %conv197 = trunc i64 %shr196 to i8
  %144 = load i8*, i8** %l_dptr, align 8, !tbaa !2
  %incdec.ptr198 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %incdec.ptr198, i8** %l_dptr, align 8, !tbaa !2
  store i8 %conv197, i8* %144, align 1, !tbaa !31
  br label %sw.bb.199

sw.bb.199:                                        ; preds = %do.body, %sw.bb.195
  %145 = load i64, i64* %pixel_out, align 8, !tbaa !6
  %shr200 = lshr i64 %145, 16
  %conv201 = trunc i64 %shr200 to i8
  %146 = load i8*, i8** %l_dptr, align 8, !tbaa !2
  %incdec.ptr202 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %incdec.ptr202, i8** %l_dptr, align 8, !tbaa !2
  store i8 %conv201, i8* %146, align 1, !tbaa !31
  br label %sw.bb.203

sw.bb.203:                                        ; preds = %do.body, %sw.bb.199
  %147 = load i64, i64* %pixel_out, align 8, !tbaa !6
  %shr204 = lshr i64 %147, 8
  %conv205 = trunc i64 %shr204 to i8
  %148 = load i8*, i8** %l_dptr, align 8, !tbaa !2
  %incdec.ptr206 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %incdec.ptr206, i8** %l_dptr, align 8, !tbaa !2
  store i8 %conv205, i8* %148, align 1, !tbaa !31
  br label %sw.bb.207

sw.bb.207:                                        ; preds = %do.body, %sw.bb.203
  %149 = load i64, i64* %pixel_out, align 8, !tbaa !6
  %conv208 = trunc i64 %149 to i8
  %150 = load i8*, i8** %l_dptr, align 8, !tbaa !2
  %incdec.ptr209 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %incdec.ptr209, i8** %l_dptr, align 8, !tbaa !2
  store i8 %conv208, i8* %150, align 1, !tbaa !31
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.207, %if.end.178, %if.end.158, %if.end.145
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.default
  %151 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %151) #2
  %152 = bitcast [3 x i16]* %rgb to i8*
  call void @llvm.lifetime.end(i64 6, i8* %152) #2
  %153 = bitcast i64* %pixel to i8*
  call void @llvm.lifetime.end(i64 8, i8* %153) #2
  %154 = bitcast i8** %sptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %154) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.230 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.213

for.inc.213:                                      ; preds = %cleanup.cont
  %155 = load i32, i32* %sdepth, align 4, !tbaa !21
  %156 = load i32, i32* %sbit, align 4, !tbaa !21
  %add214 = add nsw i32 %156, %155
  store i32 %add214, i32* %sbit, align 4, !tbaa !21
  %157 = load i32, i32* %xi, align 4, !tbaa !21
  %inc = add nsw i32 %157, 1
  store i32 %inc, i32* %xi, align 4, !tbaa !21
  br label %for.cond

for.end.215:                                      ; preds = %for.cond
  %158 = load i32, i32* %l_dbit, align 4, !tbaa !21
  %cmp216 = icmp ne i32 %158, 0
  br i1 %cmp216, label %if.then.218, label %if.end.225

if.then.218:                                      ; preds = %for.end.215
  %159 = load i8, i8* %l_dbyte, align 1, !tbaa !31
  %conv219 = zext i8 %159 to i32
  %160 = load i8*, i8** %l_dptr, align 8, !tbaa !2
  %161 = load i8, i8* %160, align 1, !tbaa !31
  %conv220 = zext i8 %161 to i32
  %162 = load i32, i32* %l_dbit, align 4, !tbaa !21
  %shr221 = ashr i32 255, %162
  %and222 = and i32 %conv220, %shr221
  %or223 = or i32 %conv219, %and222
  %conv224 = trunc i32 %or223 to i8
  %163 = load i8*, i8** %l_dptr, align 8, !tbaa !2
  store i8 %conv224, i8* %163, align 1, !tbaa !31
  br label %if.end.225

if.end.225:                                       ; preds = %if.then.218, %for.end.215
  br label %gx

gx:                                               ; preds = %if.end.225, %if.then.27
  %164 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !2
  %procs226 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %164, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs226, i32 0, i32 2
  %165 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !41
  %166 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !2
  %167 = load i8*, i8** %row, align 8, !tbaa !2
  call void %165(%struct.gs_memory_s* %166, i8* %167, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0)) #3
  %168 = load i8**, i8*** %actual_data.addr, align 8, !tbaa !2
  %tobool227 = icmp ne i8** %168, null
  br i1 %tobool227, label %if.then.228, label %if.end.229

if.then.228:                                      ; preds = %gx
  %169 = load i8*, i8** %str.addr, align 8, !tbaa !2
  %170 = load i8**, i8*** %actual_data.addr, align 8, !tbaa !2
  store i8* %169, i8** %170, align 8, !tbaa !2
  br label %if.end.229

if.end.229:                                       ; preds = %if.then.228, %gx
  %171 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %171, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.230

cleanup.230:                                      ; preds = %if.end.229, %cleanup, %if.then.21, %if.then
  call void @llvm.lifetime.end(i64 1, i8* %l_dbyte) #2
  %172 = bitcast i32* %l_dbit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %172) #2
  %173 = bitcast i8** %l_dptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %173) #2
  %174 = bitcast i32* %sbit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %174) #2
  %175 = bitcast i32* %xi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %175) #2
  %176 = bitcast i64* %pixel_out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %176) #2
  %177 = bitcast i64* %pixel_in to i8*
  call void @llvm.lifetime.end(i64 8, i8* %177) #2
  %178 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %178) #2
  %179 = bitcast i8** %base to i8*
  call void @llvm.lifetime.end(i64 8, i8* %179) #2
  %180 = bitcast i8** %row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %180) #2
  %181 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %181) #2
  %182 = bitcast i32* %dsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %182) #2
  call void @llvm.lifetime.end(i64 1, i8* %smask) #2
  %183 = bitcast i32* %sdepth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %183) #2
  %184 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %184) #2
  %185 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %185) #2
  %186 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %186) #2
  %187 = load i32, i32* %retval
  ret i32 %187
}

; Function Attrs: nounwind uwtable
define internal i32 @x_wrap_get_params(%struct.gx_device_s* %dev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %save_dev = alloca %struct.gx_device_X_s, align 8
  %ecode = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !2
  %0 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct.gx_device_X_s* %save_dev to i8*
  call void @llvm.lifetime.start(i64 3216, i8* %1) #2
  %2 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %call = call i32 @get_dev_target(%struct.gx_device_s** %tdev, %struct.gx_device_s* %4) #3
  store i32 %call, i32* %code, align 4, !tbaa !21
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %7 = bitcast %struct.gx_device_s* %6 to %struct.gx_device_X_s*
  %8 = bitcast %struct.gx_device_X_s* %save_dev to i8*
  %9 = bitcast %struct.gx_device_X_s* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 3216, i32 8, i1 false), !tbaa.struct !42
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %is_open = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %10, i32 0, i32 9
  %11 = load i32, i32* %is_open, align 4, !tbaa !45
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %if.end
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i32 0, i32 11
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %color_info2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %13, i32 0, i32 11
  %14 = bitcast %struct.gx_device_color_info_s* %color_info to i8*
  %15 = bitcast %struct.gx_device_color_info_s* %color_info2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 720, i32 8, i1 false), !tbaa.struct !46
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.1, %if.end
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %dname = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %16, i32 0, i32 2
  %17 = load i8*, i8** %dname, align 8, !tbaa !47
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %dname4 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 2
  store i8* %17, i8** %dname4, align 8, !tbaa !47
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %19, i32 0, i32 42
  %get_params = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 13
  %20 = load i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)** %get_params, align 8, !tbaa !48
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %22 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !2
  %call5 = call i32 %20(%struct.gx_device_s* %21, %struct.gs_param_list_s* %22) #3
  store i32 %call5, i32* %ecode, align 4, !tbaa !21
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %24 = bitcast %struct.gx_device_s* %23 to %struct.gx_device_X_s*
  %25 = bitcast %struct.gx_device_X_s* %24 to i8*
  %26 = bitcast %struct.gx_device_X_s* %save_dev to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 3216, i32 8, i1 false), !tbaa.struct !42
  %27 = load i32, i32* %ecode, align 4, !tbaa !21
  store i32 %27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.3, %if.then
  %28 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #2
  %29 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #2
  %30 = bitcast %struct.gx_device_X_s* %save_dev to i8*
  call void @llvm.lifetime.end(i64 3216, i8* %30) #2
  %31 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #2
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @x_cmyk_put_params(%struct.gx_device_s* %dev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %code = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !2
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %2 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !2
  %call = call i32 @x_wrap_put_params(%struct.gx_device_s* %1, %struct.gs_param_list_s* %2) #3
  store i32 %call, i32* %code, align 4, !tbaa !21
  %3 = load i32, i32* %code, align 4, !tbaa !21
  %cmp = icmp sge i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  call void @x_cmyk_set_procs(%struct.gx_device_s* %4) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %code, align 4, !tbaa !21
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %6) #2
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal i64 @x_cmyk_map_cmyk_color(%struct.gx_device_s* %dev, i16* %cv) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  %shift = alloca i32, align 4
  %pixel = alloca i64, align 8
  %c = alloca i16, align 2
  %m = alloca i16, align 2
  %y = alloca i16, align 2
  %k = alloca i16, align 2
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !2
  %0 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %2 = load i16, i16* %depth, align 2, !tbaa !8
  %conv = zext i16 %2 to i32
  %shr = ashr i32 %conv, 2
  store i32 %shr, i32* %shift, align 4, !tbaa !21
  %3 = bitcast i64* %pixel to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load i16*, i16** %cv.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 0
  %5 = load i16, i16* %arrayidx, align 2, !tbaa !22
  %conv1 = zext i16 %5 to i32
  %6 = load i32, i32* %shift, align 4, !tbaa !21
  %conv2 = sext i32 %6 to i64
  %sub = sub i64 16, %conv2
  %sh_prom = trunc i64 %sub to i32
  %shr3 = ashr i32 %conv1, %sh_prom
  %conv4 = sext i32 %shr3 to i64
  store i64 %conv4, i64* %pixel, align 8, !tbaa !6
  %7 = bitcast i16* %c to i8*
  call void @llvm.lifetime.start(i64 2, i8* %7) #2
  %8 = bitcast i16* %m to i8*
  call void @llvm.lifetime.start(i64 2, i8* %8) #2
  %9 = bitcast i16* %y to i8*
  call void @llvm.lifetime.start(i64 2, i8* %9) #2
  %10 = bitcast i16* %k to i8*
  call void @llvm.lifetime.start(i64 2, i8* %10) #2
  %11 = load i16*, i16** %cv.addr, align 8, !tbaa !2
  %arrayidx5 = getelementptr inbounds i16, i16* %11, i64 0
  %12 = load i16, i16* %arrayidx5, align 2, !tbaa !22
  store i16 %12, i16* %c, align 2, !tbaa !22
  %13 = load i16*, i16** %cv.addr, align 8, !tbaa !2
  %arrayidx6 = getelementptr inbounds i16, i16* %13, i64 1
  %14 = load i16, i16* %arrayidx6, align 2, !tbaa !22
  store i16 %14, i16* %m, align 2, !tbaa !22
  %15 = load i16*, i16** %cv.addr, align 8, !tbaa !2
  %arrayidx7 = getelementptr inbounds i16, i16* %15, i64 2
  %16 = load i16, i16* %arrayidx7, align 2, !tbaa !22
  store i16 %16, i16* %y, align 2, !tbaa !22
  %17 = load i16*, i16** %cv.addr, align 8, !tbaa !2
  %arrayidx8 = getelementptr inbounds i16, i16* %17, i64 3
  %18 = load i16, i16* %arrayidx8, align 2, !tbaa !22
  store i16 %18, i16* %k, align 2, !tbaa !22
  %19 = load i64, i64* %pixel, align 8, !tbaa !6
  %20 = load i32, i32* %shift, align 4, !tbaa !21
  %sh_prom9 = zext i32 %20 to i64
  %shl = shl i64 %19, %sh_prom9
  %21 = load i16, i16* %m, align 2, !tbaa !22
  %conv10 = zext i16 %21 to i32
  %22 = load i32, i32* %shift, align 4, !tbaa !21
  %conv11 = sext i32 %22 to i64
  %sub12 = sub i64 16, %conv11
  %sh_prom13 = trunc i64 %sub12 to i32
  %shr14 = ashr i32 %conv10, %sh_prom13
  %conv15 = sext i32 %shr14 to i64
  %or = or i64 %shl, %conv15
  store i64 %or, i64* %pixel, align 8, !tbaa !6
  %23 = load i64, i64* %pixel, align 8, !tbaa !6
  %24 = load i32, i32* %shift, align 4, !tbaa !21
  %sh_prom16 = zext i32 %24 to i64
  %shl17 = shl i64 %23, %sh_prom16
  %25 = load i16, i16* %y, align 2, !tbaa !22
  %conv18 = zext i16 %25 to i32
  %26 = load i32, i32* %shift, align 4, !tbaa !21
  %conv19 = sext i32 %26 to i64
  %sub20 = sub i64 16, %conv19
  %sh_prom21 = trunc i64 %sub20 to i32
  %shr22 = ashr i32 %conv18, %sh_prom21
  %conv23 = sext i32 %shr22 to i64
  %or24 = or i64 %shl17, %conv23
  store i64 %or24, i64* %pixel, align 8, !tbaa !6
  %27 = load i64, i64* %pixel, align 8, !tbaa !6
  %28 = load i32, i32* %shift, align 4, !tbaa !21
  %sh_prom25 = zext i32 %28 to i64
  %shl26 = shl i64 %27, %sh_prom25
  %29 = load i16, i16* %k, align 2, !tbaa !22
  %conv27 = zext i16 %29 to i32
  %30 = load i32, i32* %shift, align 4, !tbaa !21
  %conv28 = sext i32 %30 to i64
  %sub29 = sub i64 16, %conv28
  %sh_prom30 = trunc i64 %sub29 to i32
  %shr31 = ashr i32 %conv27, %sh_prom30
  %conv32 = sext i32 %shr31 to i64
  %or33 = or i64 %shl26, %conv32
  %31 = bitcast i16* %k to i8*
  call void @llvm.lifetime.end(i64 2, i8* %31) #2
  %32 = bitcast i16* %y to i8*
  call void @llvm.lifetime.end(i64 2, i8* %32) #2
  %33 = bitcast i16* %m to i8*
  call void @llvm.lifetime.end(i64 2, i8* %33) #2
  %34 = bitcast i16* %c to i8*
  call void @llvm.lifetime.end(i64 2, i8* %34) #2
  %35 = bitcast i64* %pixel to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #2
  %36 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #2
  ret i64 %or33
}

declare %struct.gx_xfont_procs_s* @gx_forward_get_xfont_procs(%struct.gx_device_s*) #0

declare %struct.gx_device_s* @gx_forward_get_xfont_device(%struct.gx_device_s*) #0

declare %struct.gx_device_s* @gx_forward_get_page_device(%struct.gx_device_s*) #0

declare i32 @gx_default_get_alpha_bits(%struct.gx_device_s*, i32) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal i32 @x_wrap_open(%struct.gx_device_s* %dev) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %rcode = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %0 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %rcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %call = call i32 @get_dev_target(%struct.gx_device_s** %tdev, %struct.gx_device_s* %3) #3
  store i32 %call, i32* %code, align 4, !tbaa !21
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 42
  %open_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 0
  %6 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %open_device, align 8, !tbaa !49
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %call1 = call i32 %6(%struct.gx_device_s* %7) #3
  store i32 %call1, i32* %rcode, align 4, !tbaa !21
  %8 = load i32, i32* %rcode, align 4, !tbaa !21
  %cmp2 = icmp slt i32 %8, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %9 = load i32, i32* %rcode, align 4, !tbaa !21
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %is_open = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %10, i32 0, i32 9
  store i32 1, i32* %is_open, align 4, !tbaa !45
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %call5 = call i32 @get_target_info(%struct.gx_device_s* %11) #3
  store i32 %call5, i32* %code, align 4, !tbaa !21
  %12 = load i32, i32* %code, align 4, !tbaa !21
  %cmp6 = icmp slt i32 %12, 0
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.4
  %13 = load i32, i32* %code, align 4, !tbaa !21
  br label %cond.end

cond.false:                                       ; preds = %if.end.4
  %14 = load i32, i32* %rcode, align 4, !tbaa !21
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %13, %cond.true ], [ %14, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then.3, %if.then
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #2
  %16 = bitcast i32* %rcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #2
  %17 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #2
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal void @x_cmyk_set_procs(%struct.gx_device_s* %dev) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %1 = load i16, i16* %depth, align 2, !tbaa !8
  %conv = zext i16 %1 to i32
  %cmp = icmp eq i32 %conv, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 42
  %map_cmyk_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 15
  store i64 (%struct.gx_device_s*, i16*)* @cmyk_1bit_map_cmyk_color, i64 (%struct.gx_device_s*, i16*)** %map_cmyk_color, align 8, !tbaa !40
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %procs2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 42
  %map_cmyk_color3 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs2, i32 0, i32 15
  store i64 (%struct.gx_device_s*, i16*)* @x_cmyk_map_cmyk_color, i64 (%struct.gx_device_s*, i16*)** %map_cmyk_color3, align 8, !tbaa !40
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal i32 @get_dev_target(%struct.gx_device_s** %ptdev, %struct.gx_device_s* %dev) #1 {
entry:
  %retval = alloca i32, align 4
  %ptdev.addr = alloca %struct.gx_device_s**, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s** %ptdev, %struct.gx_device_s*** %ptdev.addr, align 8, !tbaa !2
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %0 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_forward_s*
  %target = getelementptr inbounds %struct.gx_device_forward_s, %struct.gx_device_forward_s* %2, i32 0, i32 43
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !50
  store %struct.gx_device_s* %3, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %cmp = icmp eq %struct.gx_device_s* %4, null
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 3
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !33
  %call = call i32 @gs_copydevice(%struct.gx_device_s** %tdev, %struct.gx_device_s* bitcast (%struct.gx_device_X_s* @gs_x11_device to %struct.gx_device_s*), %struct.gs_memory_s* %7) #3
  store i32 %call, i32* %code, align 4, !tbaa !21
  %8 = load i32, i32* %code, align 4, !tbaa !21
  %cmp1 = icmp slt i32 %8, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  call void @check_device_separable(%struct.gx_device_s* %9) #3
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  call void @gx_device_fill_in_procs(%struct.gx_device_s* %10) #3
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %12 = bitcast %struct.gx_device_s* %11 to %struct.gx_device_forward_s*
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  call void @gx_device_set_target(%struct.gx_device_forward_s* %12, %struct.gx_device_s* %13) #3
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  call void @x_clear_color_cache(%struct.gx_device_s* %14) #3
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.2
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.4 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.3

if.end.3:                                         ; preds = %cleanup.cont, %entry
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %17 = load %struct.gx_device_s**, %struct.gx_device_s*** %ptdev.addr, align 8, !tbaa !2
  store %struct.gx_device_s* %16, %struct.gx_device_s** %17, align 8, !tbaa !2
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.4

cleanup.4:                                        ; preds = %if.end.3, %cleanup
  %18 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #2
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @get_target_info(%struct.gx_device_s* %dev) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %aa = alloca %struct.gx_device_anti_alias_info_s, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %0 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %call = call i32 @get_dev_target(%struct.gx_device_s** %tdev, %struct.gx_device_s* %2) #3
  store i32 %call, i32* %code, align 4, !tbaa !21
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 13
  %5 = load i32, i32* %width, align 4, !tbaa !29
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %width1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 13
  store i32 %5, i32* %width1, align 4, !tbaa !29
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 14
  %8 = load i32, i32* %height, align 4, !tbaa !30
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %height2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 14
  store i32 %8, i32* %height2, align 4, !tbaa !30
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %MediaSize = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %10, i32 0, i32 19
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %MediaSize, i32 0, i64 0
  %11 = load float, float* %arrayidx, align 4, !tbaa !43
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %MediaSize3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i32 0, i32 19
  %arrayidx4 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize3, i32 0, i64 0
  store float %11, float* %arrayidx4, align 4, !tbaa !43
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %MediaSize5 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %13, i32 0, i32 19
  %arrayidx6 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize5, i32 0, i64 1
  %14 = load float, float* %arrayidx6, align 4, !tbaa !43
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %MediaSize7 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %15, i32 0, i32 19
  %arrayidx8 = getelementptr inbounds [2 x float], [2 x float]* %MediaSize7, i32 0, i64 1
  store float %14, float* %arrayidx8, align 4, !tbaa !43
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %ImagingBBox = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %16, i32 0, i32 20
  %arrayidx9 = getelementptr inbounds [4 x float], [4 x float]* %ImagingBBox, i32 0, i64 0
  %17 = load float, float* %arrayidx9, align 4, !tbaa !43
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %ImagingBBox10 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 20
  %arrayidx11 = getelementptr inbounds [4 x float], [4 x float]* %ImagingBBox10, i32 0, i64 0
  store float %17, float* %arrayidx11, align 4, !tbaa !43
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %ImagingBBox12 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %19, i32 0, i32 20
  %arrayidx13 = getelementptr inbounds [4 x float], [4 x float]* %ImagingBBox12, i32 0, i64 1
  %20 = load float, float* %arrayidx13, align 4, !tbaa !43
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %ImagingBBox14 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %21, i32 0, i32 20
  %arrayidx15 = getelementptr inbounds [4 x float], [4 x float]* %ImagingBBox14, i32 0, i64 1
  store float %20, float* %arrayidx15, align 4, !tbaa !43
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %ImagingBBox16 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %22, i32 0, i32 20
  %arrayidx17 = getelementptr inbounds [4 x float], [4 x float]* %ImagingBBox16, i32 0, i64 2
  %23 = load float, float* %arrayidx17, align 4, !tbaa !43
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %ImagingBBox18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %24, i32 0, i32 20
  %arrayidx19 = getelementptr inbounds [4 x float], [4 x float]* %ImagingBBox18, i32 0, i64 2
  store float %23, float* %arrayidx19, align 4, !tbaa !43
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %ImagingBBox20 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %25, i32 0, i32 20
  %arrayidx21 = getelementptr inbounds [4 x float], [4 x float]* %ImagingBBox20, i32 0, i64 3
  %26 = load float, float* %arrayidx21, align 4, !tbaa !43
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %ImagingBBox22 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %27, i32 0, i32 20
  %arrayidx23 = getelementptr inbounds [4 x float], [4 x float]* %ImagingBBox22, i32 0, i64 3
  store float %26, float* %arrayidx23, align 4, !tbaa !43
  %28 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %ImagingBBox_set = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %28, i32 0, i32 21
  %29 = load i32, i32* %ImagingBBox_set, align 4, !tbaa !52
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %ImagingBBox_set24 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %30, i32 0, i32 21
  store i32 %29, i32* %ImagingBBox_set24, align 4, !tbaa !52
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %HWResolution = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %31, i32 0, i32 22
  %arrayidx25 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %32 = load float, float* %arrayidx25, align 4, !tbaa !43
  %33 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %HWResolution26 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %33, i32 0, i32 22
  %arrayidx27 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution26, i32 0, i64 0
  store float %32, float* %arrayidx27, align 4, !tbaa !43
  %34 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %HWResolution28 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %34, i32 0, i32 22
  %arrayidx29 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution28, i32 0, i64 1
  %35 = load float, float* %arrayidx29, align 4, !tbaa !43
  %36 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %HWResolution30 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %36, i32 0, i32 22
  %arrayidx31 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution30, i32 0, i64 1
  store float %35, float* %arrayidx31, align 4, !tbaa !43
  %37 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %MarginsHWResolution = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %37, i32 0, i32 23
  %arrayidx32 = getelementptr inbounds [2 x float], [2 x float]* %MarginsHWResolution, i32 0, i64 0
  %38 = load float, float* %arrayidx32, align 4, !tbaa !43
  %39 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %MarginsHWResolution33 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %39, i32 0, i32 23
  %arrayidx34 = getelementptr inbounds [2 x float], [2 x float]* %MarginsHWResolution33, i32 0, i64 0
  store float %38, float* %arrayidx34, align 4, !tbaa !43
  %40 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %MarginsHWResolution35 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %40, i32 0, i32 23
  %arrayidx36 = getelementptr inbounds [2 x float], [2 x float]* %MarginsHWResolution35, i32 0, i64 1
  %41 = load float, float* %arrayidx36, align 4, !tbaa !43
  %42 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %MarginsHWResolution37 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %42, i32 0, i32 23
  %arrayidx38 = getelementptr inbounds [2 x float], [2 x float]* %MarginsHWResolution37, i32 0, i64 1
  store float %41, float* %arrayidx38, align 4, !tbaa !43
  %43 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %Margins = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %43, i32 0, i32 24
  %arrayidx39 = getelementptr inbounds [2 x float], [2 x float]* %Margins, i32 0, i64 0
  %44 = load float, float* %arrayidx39, align 4, !tbaa !43
  %45 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %Margins40 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %45, i32 0, i32 24
  %arrayidx41 = getelementptr inbounds [2 x float], [2 x float]* %Margins40, i32 0, i64 0
  store float %44, float* %arrayidx41, align 4, !tbaa !43
  %46 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %Margins42 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %46, i32 0, i32 24
  %arrayidx43 = getelementptr inbounds [2 x float], [2 x float]* %Margins42, i32 0, i64 1
  %47 = load float, float* %arrayidx43, align 4, !tbaa !43
  %48 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %Margins44 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %48, i32 0, i32 24
  %arrayidx45 = getelementptr inbounds [2 x float], [2 x float]* %Margins44, i32 0, i64 1
  store float %47, float* %arrayidx45, align 4, !tbaa !43
  %49 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %HWMargins = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %49, i32 0, i32 25
  %arrayidx46 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins, i32 0, i64 0
  %50 = load float, float* %arrayidx46, align 4, !tbaa !43
  %51 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %HWMargins47 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %51, i32 0, i32 25
  %arrayidx48 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins47, i32 0, i64 0
  store float %50, float* %arrayidx48, align 4, !tbaa !43
  %52 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %HWMargins49 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %52, i32 0, i32 25
  %arrayidx50 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins49, i32 0, i64 1
  %53 = load float, float* %arrayidx50, align 4, !tbaa !43
  %54 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %HWMargins51 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %54, i32 0, i32 25
  %arrayidx52 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins51, i32 0, i64 1
  store float %53, float* %arrayidx52, align 4, !tbaa !43
  %55 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %HWMargins53 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %55, i32 0, i32 25
  %arrayidx54 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins53, i32 0, i64 2
  %56 = load float, float* %arrayidx54, align 4, !tbaa !43
  %57 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %HWMargins55 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %57, i32 0, i32 25
  %arrayidx56 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins55, i32 0, i64 2
  store float %56, float* %arrayidx56, align 4, !tbaa !43
  %58 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %HWMargins57 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %58, i32 0, i32 25
  %arrayidx58 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins57, i32 0, i64 3
  %59 = load float, float* %arrayidx58, align 4, !tbaa !43
  %60 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %HWMargins59 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %60, i32 0, i32 25
  %arrayidx60 = getelementptr inbounds [4 x float], [4 x float]* %HWMargins59, i32 0, i64 3
  store float %59, float* %arrayidx60, align 4, !tbaa !43
  %61 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %61, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %62 = load i32, i32* %num_components, align 4, !tbaa !38
  %cmp61 = icmp eq i32 %62, 3
  br i1 %cmp61, label %if.then.62, label %if.end.68

if.then.62:                                       ; preds = %if.end
  %63 = bitcast %struct.gx_device_anti_alias_info_s* %aa to i8*
  call void @llvm.lifetime.start(i64 8, i8* %63) #2
  %64 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %color_info63 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %64, i32 0, i32 11
  %anti_alias = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info63, i32 0, i32 9
  %65 = bitcast %struct.gx_device_anti_alias_info_s* %aa to i8*
  %66 = bitcast %struct.gx_device_anti_alias_info_s* %anti_alias to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %65, i8* %66, i64 8, i32 4, i1 false), !tbaa.struct !53
  %67 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %color_info64 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %67, i32 0, i32 11
  %68 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %color_info65 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %68, i32 0, i32 11
  %69 = bitcast %struct.gx_device_color_info_s* %color_info64 to i8*
  %70 = bitcast %struct.gx_device_color_info_s* %color_info65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %69, i8* %70, i64 720, i32 8, i1 false), !tbaa.struct !46
  %71 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %color_info66 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %71, i32 0, i32 11
  %anti_alias67 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info66, i32 0, i32 9
  %72 = bitcast %struct.gx_device_anti_alias_info_s* %anti_alias67 to i8*
  %73 = bitcast %struct.gx_device_anti_alias_info_s* %aa to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %72, i8* %73, i64 8, i32 4, i1 false), !tbaa.struct !53
  %74 = bitcast %struct.gx_device_anti_alias_info_s* %aa to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #2
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.62, %if.end
  %75 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  call void @x_clear_color_cache(%struct.gx_device_s* %75) #3
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.68, %if.then
  %76 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #2
  %77 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #2
  %78 = load i32, i32* %retval
  ret i32 %78
}

declare i32 @gs_copydevice(%struct.gx_device_s**, %struct.gx_device_s*, %struct.gs_memory_s*) #0

declare void @check_device_separable(%struct.gx_device_s*) #0

declare void @gx_device_fill_in_procs(%struct.gx_device_s*) #0

declare void @gx_device_set_target(%struct.gx_device_forward_s*, %struct.gx_device_s*) #0

; Function Attrs: nounwind uwtable
define internal void @x_clear_color_cache(%struct.gx_device_s* %dev) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %xdev = alloca %struct.gx_device_X_wrapper*, align 8
  %i = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %0 = bitcast %struct.gx_device_X_wrapper** %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_X_wrapper*
  store %struct.gx_device_X_wrapper* %2, %struct.gx_device_X_wrapper** %xdev, align 8, !tbaa !2
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 0, i32* %i, align 4, !tbaa !21
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !21
  %conv = sext i32 %4 to i64
  %cmp = icmp ult i64 %conv, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !tbaa !21
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.gx_device_X_wrapper*, %struct.gx_device_X_wrapper** %xdev, align 8, !tbaa !2
  %color_cache = getelementptr inbounds %struct.gx_device_X_wrapper, %struct.gx_device_X_wrapper* %6, i32 0, i32 44
  %arrayidx = getelementptr inbounds [16 x i64], [16 x i64]* %color_cache, i32 0, i64 %idxprom
  store i64 -1, i64* %arrayidx, align 8, !tbaa !6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !tbaa !21
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4, !tbaa !21
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  call void @gx_device_decache_colors(%struct.gx_device_s* %8) #3
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #2
  %10 = bitcast %struct.gx_device_X_wrapper** %xdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #2
  ret void
}

declare void @gx_device_decache_colors(%struct.gx_device_s*) #0

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i64 @cmyk_1bit_map_cmyk_color(%struct.gx_device_s*, i16*) #0

; Function Attrs: nounwind uwtable
define internal i64 @x_alt_map_color(%struct.gx_device_s* %dev, i64 %color) #1 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %xdev = alloca %struct.gx_device_X_wrapper*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %rgb = alloca [3 x i16], align 2
  %cindex = alloca i64, align 8
  %result = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  store i64 %color, i64* %color.addr, align 8, !tbaa !6
  %0 = bitcast %struct.gx_device_X_wrapper** %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_X_wrapper*
  store %struct.gx_device_X_wrapper* %2, %struct.gx_device_X_wrapper** %xdev, align 8, !tbaa !2
  %3 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast [3 x i16]* %rgb to i8*
  call void @llvm.lifetime.start(i64 6, i8* %4) #2
  %5 = bitcast i64* %cindex to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast i32* %result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load i64, i64* %color.addr, align 8, !tbaa !6
  %cmp = icmp eq i64 %8, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i64, i64* %color.addr, align 8, !tbaa !6
  store i64 %9, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load i64, i64* %color.addr, align 8, !tbaa !6
  %cmp1 = icmp ult i64 %10, 16
  br i1 %cmp1, label %if.then.2, label %if.end.6

if.then.2:                                        ; preds = %if.end
  %11 = load i64, i64* %color.addr, align 8, !tbaa !6
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %13 = bitcast %struct.gx_device_s* %12 to %struct.gx_device_X_wrapper*
  %color_cache = getelementptr inbounds %struct.gx_device_X_wrapper, %struct.gx_device_X_wrapper* %13, i32 0, i32 44
  %arrayidx = getelementptr inbounds [16 x i64], [16 x i64]* %color_cache, i32 0, i64 %11
  %14 = load i64, i64* %arrayidx, align 8, !tbaa !6
  store i64 %14, i64* %cindex, align 8, !tbaa !6
  %15 = load i64, i64* %cindex, align 8, !tbaa !6
  %cmp3 = icmp ne i64 %15, -1
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.then.2
  %16 = load i64, i64* %cindex, align 8, !tbaa !6
  store i64 %16, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %if.then.2
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %if.end
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %call = call i32 @get_dev_target(%struct.gx_device_s** %tdev, %struct.gx_device_s* %17) #3
  store i32 %call, i32* %code, align 4, !tbaa !21
  %cmp7 = icmp slt i32 %call, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  %18 = load i32, i32* %code, align 4, !tbaa !21
  %conv = sext i32 %18 to i64
  store i64 %conv, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end.6
  %19 = load %struct.gx_device_X_wrapper*, %struct.gx_device_X_wrapper** %xdev, align 8, !tbaa !2
  %alt_map_color = getelementptr inbounds %struct.gx_device_X_wrapper, %struct.gx_device_X_wrapper* %19, i32 0, i32 45
  %20 = load i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)** %alt_map_color, align 8, !tbaa !54
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %22 = load i64, i64* %color.addr, align 8, !tbaa !6
  %arraydecay = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i32 0
  %call10 = call i32 %20(%struct.gx_device_s* %21, i64 %22, i16* %arraydecay) #3
  store i32 %call10, i32* %result, align 4, !tbaa !21
  %23 = load i32, i32* %result, align 4, !tbaa !21
  %cmp11 = icmp sge i32 %23, 0
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end.9
  %24 = load i32, i32* %result, align 4, !tbaa !21
  %conv14 = sext i32 %24 to i64
  store i64 %conv14, i64* %cindex, align 8, !tbaa !6
  br label %if.end.17

if.else:                                          ; preds = %if.end.9
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %25, i32 0, i32 42
  %map_rgb_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 5
  %26 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %map_rgb_color, align 8, !tbaa !39
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %arraydecay15 = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i32 0
  %call16 = call i64 %26(%struct.gx_device_s* %27, i16* %arraydecay15) #3
  store i64 %call16, i64* %cindex, align 8, !tbaa !6
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.13
  %28 = load i64, i64* %color.addr, align 8, !tbaa !6
  %cmp18 = icmp ult i64 %28, 16
  br i1 %cmp18, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %if.end.17
  %29 = load i64, i64* %cindex, align 8, !tbaa !6
  %30 = load i64, i64* %color.addr, align 8, !tbaa !6
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %32 = bitcast %struct.gx_device_s* %31 to %struct.gx_device_X_wrapper*
  %color_cache21 = getelementptr inbounds %struct.gx_device_X_wrapper, %struct.gx_device_X_wrapper* %32, i32 0, i32 44
  %arrayidx22 = getelementptr inbounds [16 x i64], [16 x i64]* %color_cache21, i32 0, i64 %30
  store i64 %29, i64* %arrayidx22, align 8, !tbaa !6
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %if.end.17
  %33 = load i64, i64* %cindex, align 8, !tbaa !6
  store i64 %33, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.23, %if.then.8, %if.then.4, %if.then
  %34 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #2
  %35 = bitcast i32* %result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #2
  %36 = bitcast i64* %cindex to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #2
  %37 = bitcast [3 x i16]* %rgb to i8*
  call void @llvm.lifetime.end(i64 6, i8* %37) #2
  %38 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #2
  %39 = bitcast %struct.gx_device_X_wrapper** %xdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #2
  %40 = load i64, i64* %retval
  ret i64 %40
}

declare i32 @gx_default_copy_color(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @x_wrap_put_params(%struct.gx_device_s* %dev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %cinfo = alloca %struct.gx_device_color_info_s, align 8
  %dname = alloca i8*, align 8
  %rcode = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !2
  %0 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct.gx_device_color_info_s* %cinfo to i8*
  call void @llvm.lifetime.start(i64 720, i8* %1) #2
  %2 = bitcast i8** %dname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = bitcast i32* %rcode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %call = call i32 @get_dev_target(%struct.gx_device_s** %tdev, %struct.gx_device_s* %5) #3
  store i32 %call, i32* %code, align 4, !tbaa !21
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 11
  %8 = bitcast %struct.gx_device_color_info_s* %cinfo to i8*
  %9 = bitcast %struct.gx_device_color_info_s* %color_info to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 720, i32 8, i1 false), !tbaa.struct !46
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %dname1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %10, i32 0, i32 2
  %11 = load i8*, i8** %dname1, align 8, !tbaa !47
  store i8* %11, i8** %dname, align 8, !tbaa !2
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %color_info2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i32 0, i32 11
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %color_info3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %13, i32 0, i32 11
  %14 = bitcast %struct.gx_device_color_info_s* %color_info2 to i8*
  %15 = bitcast %struct.gx_device_color_info_s* %color_info3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 720, i32 8, i1 false), !tbaa.struct !46
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %dname4 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %16, i32 0, i32 2
  %17 = load i8*, i8** %dname4, align 8, !tbaa !47
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %dname5 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 2
  store i8* %17, i8** %dname5, align 8, !tbaa !47
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %19, i32 0, i32 42
  %put_params = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 14
  %20 = load i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)** %put_params, align 8, !tbaa !56
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %22 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !2
  %call6 = call i32 %20(%struct.gx_device_s* %21, %struct.gs_param_list_s* %22) #3
  store i32 %call6, i32* %rcode, align 4, !tbaa !21
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %color_info7 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %23, i32 0, i32 11
  %24 = bitcast %struct.gx_device_color_info_s* %color_info7 to i8*
  %25 = bitcast %struct.gx_device_color_info_s* %cinfo to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 720, i32 8, i1 false), !tbaa.struct !46
  %26 = load i8*, i8** %dname, align 8, !tbaa !2
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %dname8 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %27, i32 0, i32 2
  store i8* %26, i8** %dname8, align 8, !tbaa !47
  %28 = load i32, i32* %rcode, align 4, !tbaa !21
  %cmp9 = icmp slt i32 %28, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  %29 = load i32, i32* %rcode, align 4, !tbaa !21
  store i32 %29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %call12 = call i32 @get_target_info(%struct.gx_device_s* %30) #3
  store i32 %call12, i32* %code, align 4, !tbaa !21
  %31 = load i32, i32* %code, align 4, !tbaa !21
  %cmp13 = icmp slt i32 %31, 0
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.11
  %32 = load i32, i32* %code, align 4, !tbaa !21
  br label %cond.end

cond.false:                                       ; preds = %if.end.11
  %33 = load i32, i32* %rcode, align 4, !tbaa !21
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %32, %cond.true ], [ %33, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then.10, %if.then
  %34 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #2
  %35 = bitcast i32* %rcode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #2
  %36 = bitcast i8** %dname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #2
  %37 = bitcast %struct.gx_device_color_info_s* %cinfo to i8*
  call void @llvm.lifetime.end(i64 720, i8* %37) #2
  %38 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #2
  %39 = load i32, i32* %retval
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @gdevx_wrapper_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #1 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !2
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !2
  store i32 %size, i32* %size.addr, align 4, !tbaa !21
  store i32 %index, i32* %index.addr, align 4, !tbaa !21
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !2
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !2
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !2
  %0 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_device_forward, i32 0, i32 4), align 8, !tbaa !57
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !2
  %2 = load i8*, i8** %vptr.addr, align 8, !tbaa !2
  %3 = load i32, i32* %size.addr, align 4, !tbaa !21
  %4 = load i32, i32* %index.addr, align 4, !tbaa !21
  %sub = sub nsw i32 %4, 0
  %5 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !2
  %6 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !2
  %call = call %struct.gs_ptr_procs_s* %0(%struct.gs_memory_s* %1, i8* %2, i32 %3, i32 %sub, %struct.enum_ptr_s* %5, %struct.gs_memory_struct_type_s* @st_device_forward, %struct.gc_state_s* %6) #3
  ret %struct.gs_ptr_procs_s* %call
}

; Function Attrs: nounwind uwtable
define internal void @gdevx_wrapper_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #1 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !2
  store i32 %size, i32* %size.addr, align 4, !tbaa !21
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !2
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !2
  %0 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_device_forward, i32 0, i32 5), align 8, !tbaa !59
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !2
  %2 = load i32, i32* %size.addr, align 4, !tbaa !21
  %3 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !2
  call void %0(i8* %1, i32 %2, %struct.gs_memory_struct_type_s* @st_device_forward, %struct.gc_state_s* %3) #3
  ret void
}

declare void @gx_device_finalize(%struct.gs_memory_s*, i8*) #0

declare i64 @gx_default_b_w_map_rgb_color(%struct.gx_device_s*, i16*) #0

declare i64 @gx_default_map_cmyk_color(%struct.gx_device_s*, i16*) #0

declare i64 @gx_default_gray_map_rgb_color(%struct.gx_device_s*, i16*) #0

; Function Attrs: nounwind uwtable
define internal i64 @x_rg16x_map_rgb_color(%struct.gx_device_s* %dev, i16* %cv) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  %r = alloca i16, align 2
  %g = alloca i16, align 2
  %b = alloca i16, align 2
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !2
  %0 = bitcast i16* %r to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #2
  %1 = bitcast i16* %g to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1) #2
  %2 = bitcast i16* %b to i8*
  call void @llvm.lifetime.start(i64 2, i8* %2) #2
  %3 = load i16*, i16** %cv.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 0
  %4 = load i16, i16* %arrayidx, align 2, !tbaa !22
  store i16 %4, i16* %r, align 2, !tbaa !22
  %5 = load i16*, i16** %cv.addr, align 8, !tbaa !2
  %arrayidx1 = getelementptr inbounds i16, i16* %5, i64 1
  %6 = load i16, i16* %arrayidx1, align 2, !tbaa !22
  store i16 %6, i16* %g, align 2, !tbaa !22
  %7 = load i16*, i16** %cv.addr, align 8, !tbaa !2
  %arrayidx2 = getelementptr inbounds i16, i16* %7, i64 2
  %8 = load i16, i16* %arrayidx2, align 2, !tbaa !22
  store i16 %8, i16* %b, align 2, !tbaa !22
  %9 = load i16, i16* %r, align 2, !tbaa !22
  %conv = zext i16 %9 to i32
  %shr = ashr i32 %conv, 10
  %10 = load i16, i16* %g, align 2, !tbaa !22
  %conv3 = zext i16 %10 to i32
  %shr4 = ashr i32 %conv3, 11
  %shl = shl i32 %shr4, 11
  %add = add nsw i32 %shr, %shl
  %11 = load i16, i16* %b, align 2, !tbaa !22
  %conv5 = zext i16 %11 to i32
  %shr6 = ashr i32 %conv5, 11
  %shl7 = shl i32 %shr6, 6
  %add8 = add nsw i32 %add, %shl7
  %conv9 = sext i32 %add8 to i64
  %12 = bitcast i16* %b to i8*
  call void @llvm.lifetime.end(i64 2, i8* %12) #2
  %13 = bitcast i16* %g to i8*
  call void @llvm.lifetime.end(i64 2, i8* %13) #2
  %14 = bitcast i16* %r to i8*
  call void @llvm.lifetime.end(i64 2, i8* %14) #2
  ret i64 %conv9
}

; Function Attrs: nounwind uwtable
define internal i32 @x_forward_copy_color(%struct.gx_device_s* %dev, i8* %base, i32 %sourcex, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h) #1 {
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
  %tdev = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  store i8* %base, i8** %base.addr, align 8, !tbaa !2
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !21
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !21
  store i64 %id, i64* %id.addr, align 8, !tbaa !6
  store i32 %x, i32* %x.addr, align 4, !tbaa !21
  store i32 %y, i32* %y.addr, align 4, !tbaa !21
  store i32 %w, i32* %w.addr, align 4, !tbaa !21
  store i32 %h, i32* %h.addr, align 4, !tbaa !21
  %0 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %call = call i32 @get_dev_target(%struct.gx_device_s** %tdev, %struct.gx_device_s* %2) #3
  store i32 %call, i32* %code, align 4, !tbaa !21
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 42
  %copy_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 10
  %5 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %copy_color, align 8, !tbaa !32
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %7 = load i8*, i8** %base.addr, align 8, !tbaa !2
  %8 = load i32, i32* %sourcex.addr, align 4, !tbaa !21
  %9 = load i32, i32* %raster.addr, align 4, !tbaa !21
  %10 = load i64, i64* %id.addr, align 8, !tbaa !6
  %11 = load i32, i32* %x.addr, align 4, !tbaa !21
  %12 = load i32, i32* %y.addr, align 4, !tbaa !21
  %13 = load i32, i32* %w.addr, align 4, !tbaa !21
  %14 = load i32, i32* %h.addr, align 4, !tbaa !21
  %call1 = call i32 %5(%struct.gx_device_s* %6, i8* %7, i32 %8, i32 %9, i64 %10, i32 %11, i32 %12, i32 %13, i32 %14) #3
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #2
  %16 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #2
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @x_forward_get_bits(%struct.gx_device_s* %dev, i32 %y, i8* %str, i8** %actual_data) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %y.addr = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %actual_data.addr = alloca i8**, align 8
  %tdev = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  store i32 %y, i32* %y.addr, align 4, !tbaa !21
  store i8* %str, i8** %str.addr, align 8, !tbaa !2
  store i8** %actual_data, i8*** %actual_data.addr, align 8, !tbaa !2
  %0 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %call = call i32 @get_dev_target(%struct.gx_device_s** %tdev, %struct.gx_device_s* %2) #3
  store i32 %call, i32* %code, align 4, !tbaa !21
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %code, align 4, !tbaa !21
  store i32 %3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 42
  %get_bits = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 12
  %5 = load i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)** %get_bits, align 8, !tbaa !37
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev, align 8, !tbaa !2
  %7 = load i32, i32* %y.addr, align 4, !tbaa !21
  %8 = load i8*, i8** %str.addr, align 8, !tbaa !2
  %9 = load i8**, i8*** %actual_data.addr, align 8, !tbaa !2
  %call1 = call i32 %5(%struct.gx_device_s* %6, i32 %7, i8* %8, i8** %9) #3
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #2
  %11 = bitcast %struct.gx_device_s** %tdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #2
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare i64 @gx_forward_map_cmyk_color(%struct.gx_device_s*, i16*) #0

; Function Attrs: nounwind uwtable
define internal i64 @x_alpha_map_rgb_alpha_color(%struct.gx_device_s* %dev, i16 zeroext %r, i16 zeroext %g, i16 zeroext %b, i16 zeroext %alpha) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %r.addr = alloca i16, align 2
  %g.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  %alpha.addr = alloca i16, align 2
  %color = alloca i64, align 8
  %cv = alloca [3 x i16], align 2
  %abyte = alloca i8, align 1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  store i16 %r, i16* %r.addr, align 2, !tbaa !22
  store i16 %g, i16* %g.addr, align 2, !tbaa !22
  store i16 %b, i16* %b.addr, align 2, !tbaa !22
  store i16 %alpha, i16* %alpha.addr, align 2, !tbaa !22
  %0 = bitcast i64* %color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast [3 x i16]* %cv to i8*
  call void @llvm.lifetime.start(i64 6, i8* %1) #2
  call void @llvm.lifetime.start(i64 1, i8* %abyte) #2
  %2 = load i16, i16* %alpha.addr, align 2, !tbaa !22
  %conv = zext i16 %2 to i32
  %shr = ashr i32 %conv, 8
  %conv1 = trunc i32 %shr to i8
  store i8 %conv1, i8* %abyte, align 1, !tbaa !31
  %3 = load i16, i16* %r.addr, align 2, !tbaa !22
  %arrayidx = getelementptr inbounds [3 x i16], [3 x i16]* %cv, i32 0, i64 0
  store i16 %3, i16* %arrayidx, align 2, !tbaa !22
  %4 = load i16, i16* %g.addr, align 2, !tbaa !22
  %arrayidx2 = getelementptr inbounds [3 x i16], [3 x i16]* %cv, i32 0, i64 1
  store i16 %4, i16* %arrayidx2, align 2, !tbaa !22
  %5 = load i16, i16* %b.addr, align 2, !tbaa !22
  %arrayidx3 = getelementptr inbounds [3 x i16], [3 x i16]* %cv, i32 0, i64 2
  store i16 %5, i16* %arrayidx3, align 2, !tbaa !22
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  %arraydecay = getelementptr inbounds [3 x i16], [3 x i16]* %cv, i32 0, i32 0
  %call = call i64 @gx_forward_map_rgb_color(%struct.gx_device_s* %6, i16* %arraydecay) #3
  store i64 %call, i64* %color, align 8, !tbaa !6
  %7 = load i8, i8* %abyte, align 1, !tbaa !31
  %conv4 = zext i8 %7 to i32
  %cmp = icmp eq i32 %conv4, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load i8, i8* %abyte, align 1, !tbaa !31
  %conv6 = zext i8 %8 to i32
  %xor = xor i32 %conv6, 255
  %conv7 = sext i32 %xor to i64
  %shl = shl i64 %conv7, 24
  %9 = load i64, i64* %color, align 8, !tbaa !6
  %add = add i64 %shl, %9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 4278190080, %cond.true ], [ %add, %cond.false ]
  call void @llvm.lifetime.end(i64 1, i8* %abyte) #2
  %10 = bitcast [3 x i16]* %cv to i8*
  call void @llvm.lifetime.end(i64 6, i8* %10) #2
  %11 = bitcast i64* %color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #2
  ret i64 %cond
}

declare i32 @gx_default_copy_alpha(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32) #0

declare i64 @gx_forward_map_rgb_color(%struct.gx_device_s*, i16*) #0

; Function Attrs: nounwind uwtable
define internal i64 @x_rg32x_map_rgb_color(%struct.gx_device_s* %dev, i16* %cv) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  %r = alloca i16, align 2
  %g = alloca i16, align 2
  %b = alloca i16, align 2
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !2
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !2
  %0 = bitcast i16* %r to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #2
  %1 = bitcast i16* %g to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1) #2
  %2 = bitcast i16* %b to i8*
  call void @llvm.lifetime.start(i64 2, i8* %2) #2
  %3 = load i16*, i16** %cv.addr, align 8, !tbaa !2
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 0
  %4 = load i16, i16* %arrayidx, align 2, !tbaa !22
  store i16 %4, i16* %r, align 2, !tbaa !22
  %5 = load i16*, i16** %cv.addr, align 8, !tbaa !2
  %arrayidx1 = getelementptr inbounds i16, i16* %5, i64 1
  %6 = load i16, i16* %arrayidx1, align 2, !tbaa !22
  store i16 %6, i16* %g, align 2, !tbaa !22
  %7 = load i16*, i16** %cv.addr, align 8, !tbaa !2
  %arrayidx2 = getelementptr inbounds i16, i16* %7, i64 2
  %8 = load i16, i16* %arrayidx2, align 2, !tbaa !22
  store i16 %8, i16* %b, align 2, !tbaa !22
  %9 = load i16, i16* %r, align 2, !tbaa !22
  %conv = zext i16 %9 to i32
  %shr = ashr i32 %conv, 5
  %conv3 = sext i32 %shr to i64
  %10 = load i16, i16* %g, align 2, !tbaa !22
  %conv4 = zext i16 %10 to i32
  %shr5 = ashr i32 %conv4, 5
  %conv6 = sext i32 %shr5 to i64
  %shl = shl i64 %conv6, 21
  %add = add i64 %conv3, %shl
  %11 = load i16, i16* %b, align 2, !tbaa !22
  %conv7 = zext i16 %11 to i32
  %shr8 = ashr i32 %conv7, 6
  %conv9 = sext i32 %shr8 to i64
  %shl10 = shl i64 %conv9, 11
  %add11 = add i64 %add, %shl10
  %12 = bitcast i16* %b to i8*
  call void @llvm.lifetime.end(i64 2, i8* %12) #2
  %13 = bitcast i16* %g to i8*
  call void @llvm.lifetime.end(i64 2, i8* %13) #2
  %14 = bitcast i16* %r to i8*
  call void @llvm.lifetime.end(i64 2, i8* %14) #2
  ret i64 %add11
}

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nobuiltin }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"long", !4, i64 0}
!8 = !{!9, !13, i64 108}
!9 = !{!"gx_device_s", !10, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !10, i64 40, !3, i64 48, !11, i64 56, !10, i64 80, !10, i64 84, !10, i64 88, !12, i64 96, !15, i64 816, !10, i64 832, !10, i64 836, !10, i64 840, !10, i64 844, !10, i64 848, !10, i64 852, !4, i64 856, !4, i64 864, !10, i64 880, !4, i64 884, !4, i64 892, !4, i64 900, !4, i64 908, !7, i64 928, !7, i64 936, !10, i64 944, !10, i64 948, !10, i64 952, !10, i64 956, !10, i64 960, !7, i64 968, !7, i64 976, !16, i64 984, !10, i64 1052, !10, i64 1056, !17, i64 1064, !3, i64 1104, !4, i64 1112, !19, i64 1120, !20, i64 1144}
!10 = !{!"int", !4, i64 0}
!11 = !{!"rc_header_s", !7, i64 0, !3, i64 8, !3, i64 16}
!12 = !{!"gx_device_color_info_s", !10, i64 0, !10, i64 4, !4, i64 8, !13, i64 12, !4, i64 14, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !14, i64 32, !4, i64 40, !4, i64 44, !4, i64 108, !4, i64 176, !3, i64 688, !4, i64 696, !7, i64 704, !10, i64 712}
!13 = !{!"short", !4, i64 0}
!14 = !{!"gx_device_anti_alias_info_s", !10, i64 0, !10, i64 4}
!15 = !{!"gx_device_cached_colors_s", !7, i64 0, !7, i64 8}
!16 = !{!"gx_stroked_gradient_recognizer_s", !10, i64 0, !4, i64 4, !4, i64 36}
!17 = !{!"gdev_space_params_s", !7, i64 0, !7, i64 8, !18, i64 16, !10, i64 32, !4, i64 36}
!18 = !{!"gx_band_params_s", !10, i64 0, !10, i64 4, !7, i64 8}
!19 = !{!"gx_page_device_procs_s", !3, i64 0, !3, i64 8, !3, i64 16}
!20 = !{!"gx_device_procs_s", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !3, i64 48, !3, i64 56, !3, i64 64, !3, i64 72, !3, i64 80, !3, i64 88, !3, i64 96, !3, i64 104, !3, i64 112, !3, i64 120, !3, i64 128, !3, i64 136, !3, i64 144, !3, i64 152, !3, i64 160, !3, i64 168, !3, i64 176, !3, i64 184, !3, i64 192, !3, i64 200, !3, i64 208, !3, i64 216, !3, i64 224, !3, i64 232, !3, i64 240, !3, i64 248, !3, i64 256, !3, i64 264, !3, i64 272, !3, i64 280, !3, i64 288, !3, i64 296, !3, i64 304, !3, i64 312, !3, i64 320, !3, i64 328, !3, i64 336, !3, i64 344, !3, i64 352, !3, i64 360, !3, i64 368, !3, i64 376, !3, i64 384, !3, i64 392, !3, i64 400, !3, i64 408, !3, i64 416, !3, i64 424, !3, i64 432, !3, i64 440, !3, i64 448, !3, i64 456, !3, i64 464, !3, i64 472, !3, i64 480, !3, i64 488, !3, i64 496, !3, i64 504, !3, i64 512, !3, i64 520, !3, i64 528, !3, i64 536, !3, i64 544, !3, i64 552, !3, i64 560, !3, i64 568, !3, i64 576}
!21 = !{!10, !10, i64 0}
!22 = !{!13, !13, i64 0}
!23 = !{!9, !10, i64 112}
!24 = !{!9, !3, i64 1160}
!25 = !{!9, !3, i64 1168}
!26 = !{!9, !3, i64 1192}
!27 = !{!9, !3, i64 1200}
!28 = !{!9, !3, i64 1216}
!29 = !{!9, !10, i64 832}
!30 = !{!9, !10, i64 836}
!31 = !{!4, !4, i64 0}
!32 = !{!9, !3, i64 1224}
!33 = !{!9, !3, i64 24}
!34 = !{!35, !3, i64 64}
!35 = !{!"gs_memory_s", !3, i64 0, !36, i64 8, !3, i64 192, !3, i64 200, !3, i64 208}
!36 = !{!"gs_memory_procs_s", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !3, i64 48, !3, i64 56, !3, i64 64, !3, i64 72, !3, i64 80, !3, i64 88, !3, i64 96, !3, i64 104, !3, i64 112, !3, i64 120, !3, i64 128, !3, i64 136, !3, i64 144, !3, i64 152, !3, i64 160, !3, i64 168, !3, i64 176}
!37 = !{!9, !3, i64 1240}
!38 = !{!9, !10, i64 100}
!39 = !{!9, !3, i64 1184}
!40 = !{!9, !3, i64 1264}
!41 = !{!35, !3, i64 24}
!42 = !{i64 0, i64 4, !21, i64 8, i64 8, !2, i64 16, i64 8, !2, i64 24, i64 8, !2, i64 32, i64 8, !2, i64 40, i64 4, !21, i64 48, i64 8, !2, i64 56, i64 8, !6, i64 64, i64 8, !2, i64 72, i64 8, !2, i64 80, i64 4, !21, i64 84, i64 4, !21, i64 88, i64 4, !21, i64 96, i64 4, !21, i64 100, i64 4, !21, i64 104, i64 4, !31, i64 108, i64 2, !22, i64 110, i64 1, !31, i64 112, i64 4, !21, i64 116, i64 4, !21, i64 120, i64 4, !21, i64 124, i64 4, !21, i64 128, i64 4, !21, i64 132, i64 4, !21, i64 136, i64 4, !31, i64 140, i64 64, !31, i64 204, i64 64, !31, i64 272, i64 512, !31, i64 784, i64 8, !2, i64 792, i64 4, !31, i64 800, i64 8, !6, i64 808, i64 4, !21, i64 816, i64 8, !6, i64 824, i64 8, !6, i64 832, i64 4, !21, i64 836, i64 4, !21, i64 840, i64 4, !21, i64 844, i64 4, !21, i64 848, i64 4, !21, i64 852, i64 4, !21, i64 856, i64 8, !31, i64 864, i64 16, !31, i64 880, i64 4, !21, i64 884, i64 8, !31, i64 892, i64 8, !31, i64 900, i64 8, !31, i64 908, i64 16, !31, i64 928, i64 8, !6, i64 936, i64 8, !6, i64 944, i64 4, !21, i64 948, i64 4, !21, i64 952, i64 4, !21, i64 956, i64 4, !21, i64 960, i64 4, !21, i64 968, i64 8, !6, i64 976, i64 8, !6, i64 984, i64 4, !21, i64 988, i64 32, !31, i64 1020, i64 32, !31, i64 1052, i64 4, !21, i64 1056, i64 4, !21, i64 1064, i64 8, !6, i64 1072, i64 8, !6, i64 1080, i64 4, !21, i64 1084, i64 4, !21, i64 1088, i64 8, !6, i64 1096, i64 4, !21, i64 1100, i64 4, !31, i64 1104, i64 8, !2, i64 1112, i64 4, !31, i64 1120, i64 8, !2, i64 1128, i64 8, !2, i64 1136, i64 8, !2, i64 1144, i64 8, !2, i64 1152, i64 8, !2, i64 1160, i64 8, !2, i64 1168, i64 8, !2, i64 1176, i64 8, !2, i64 1184, i64 8, !2, i64 1192, i64 8, !2, i64 1200, i64 8, !2, i64 1208, i64 8, !2, i64 1216, i64 8, !2, i64 1224, i64 8, !2, i64 1232, i64 8, !2, i64 1240, i64 8, !2, i64 1248, i64 8, !2, i64 1256, i64 8, !2, i64 1264, i64 8, !2, i64 1272, i64 8, !2, i64 1280, i64 8, !2, i64 1288, i64 8, !2, i64 1296, i64 8, !2, i64 1304, i64 8, !2, i64 1312, i64 8, !2, i64 1320, i64 8, !2, i64 1328, i64 8, !2, i64 1336, i64 8, !2, i64 1344, i64 8, !2, i64 1352, i64 8, !2, i64 1360, i64 8, !2, i64 1368, i64 8, !2, i64 1376, i64 8, !2, i64 1384, i64 8, !2, i64 1392, i64 8, !2, i64 1400, i64 8, !2, i64 1408, i64 8, !2, i64 1416, i64 8, !2, i64 1424, i64 8, !2, i64 1432, i64 8, !2, i64 1440, i64 8, !2, i64 1448, i64 8, !2, i64 1456, i64 8, !2, i64 1464, i64 8, !2, i64 1472, i64 8, !2, i64 1480, i64 8, !2, i64 1488, i64 8, !2, i64 1496, i64 8, !2, i64 1504, i64 8, !2, i64 1512, i64 8, !2, i64 1520, i64 8, !2, i64 1528, i64 8, !2, i64 1536, i64 8, !2, i64 1544, i64 8, !2, i64 1552, i64 8, !2, i64 1560, i64 8, !2, i64 1568, i64 8, !2, i64 1576, i64 8, !2, i64 1584, i64 8, !2, i64 1592, i64 8, !2, i64 1600, i64 8, !2, i64 1608, i64 8, !2, i64 1616, i64 8, !2, i64 1624, i64 8, !2, i64 1632, i64 8, !2, i64 1640, i64 8, !2, i64 1648, i64 8, !2, i64 1656, i64 8, !2, i64 1664, i64 8, !2, i64 1672, i64 8, !2, i64 1680, i64 8, !2, i64 1688, i64 8, !2, i64 1696, i64 8, !2, i64 1704, i64 8, !2, i64 1712, i64 8, !2, i64 1720, i64 8, !2, i64 1728, i64 8, !2, i64 1736, i64 4, !21, i64 1740, i64 4, !21, i64 1744, i64 8, !2, i64 1752, i64 8, !2, i64 1760, i64 8, !2, i64 1768, i64 8, !2, i64 1776, i64 8, !2, i64 1784, i64 4, !21, i64 1788, i64 4, !21, i64 1792, i64 4, !21, i64 1796, i64 4, !21, i64 1800, i64 4, !21, i64 1808, i64 8, !6, i64 1816, i64 8, !6, i64 1824, i64 8, !6, i64 1832, i64 4, !21, i64 1836, i64 4, !21, i64 1840, i64 8, !2, i64 1848, i64 8, !6, i64 1856, i64 4, !21, i64 1860, i64 4, !21, i64 1864, i64 4, !21, i64 1868, i64 4, !21, i64 1872, i64 8, !2, i64 1880, i64 4, !21, i64 1884, i64 4, !21, i64 1888, i64 4, !21, i64 1892, i64 4, !21, i64 1896, i64 4, !21, i64 1900, i64 4, !21, i64 1904, i64 4, !21, i64 1912, i64 8, !6, i64 1920, i64 8, !6, i64 1928, i64 8, !6, i64 1936, i64 8, !2, i64 1944, i64 8, !2, i64 1952, i64 8, !2, i64 1960, i64 8, !2, i64 1968, i64 8, !2, i64 1976, i64 8, !2, i64 1984, i64 8, !2, i64 1992, i64 8, !2, i64 2000, i64 8, !2, i64 2008, i64 8, !2, i64 2016, i64 8, !6, i64 2024, i64 8, !6, i64 2032, i64 8, !2, i64 2040, i64 8, !6, i64 2048, i64 8, !6, i64 2056, i64 4, !21, i64 2064, i64 8, !6, i64 2072, i64 4, !43, i64 2076, i64 4, !43, i64 2080, i64 4, !43, i64 2084, i64 4, !43, i64 2088, i64 4, !43, i64 2092, i64 4, !43, i64 2096, i64 8, !6, i64 2104, i64 8, !6, i64 2112, i64 8, !6, i64 2120, i64 4, !21, i64 2124, i64 4, !21, i64 2128, i64 4, !21, i64 2132, i64 4, !21, i64 2136, i64 8, !6, i64 2144, i64 8, !6, i64 2152, i64 4, !21, i64 2160, i64 8, !6, i64 2168, i64 8, !6, i64 2176, i64 8, !6, i64 2184, i64 8, !6, i64 2192, i64 8, !2, i64 2200, i64 4, !21, i64 2204, i64 4, !21, i64 2208, i64 8, !6, i64 2216, i64 8, !6, i64 2224, i64 8, !6, i64 2232, i64 4, !21, i64 2236, i64 4, !21, i64 2240, i64 4, !21, i64 2248, i64 8, !6, i64 2256, i64 8, !6, i64 2264, i64 4, !21, i64 2268, i64 4, !21, i64 2272, i64 8, !6, i64 2280, i64 8, !6, i64 2288, i64 8, !6, i64 2296, i64 8, !6, i64 2304, i64 8, !6, i64 2312, i64 4, !21, i64 2316, i64 2, !22, i64 2318, i64 2, !22, i64 2320, i64 2, !22, i64 2322, i64 2, !22, i64 2324, i64 2, !22, i64 2326, i64 2, !22, i64 2328, i64 8, !2, i64 2336, i64 4, !21, i64 2340, i64 4, !21, i64 2344, i64 128, !31, i64 2472, i64 4, !21, i64 2476, i64 4, !21, i64 2480, i64 128, !31, i64 2608, i64 4, !21, i64 2612, i64 4, !21, i64 2616, i64 128, !31, i64 2744, i64 4, !21, i64 2748, i64 4, !21, i64 2752, i64 4, !21, i64 2760, i64 8, !2, i64 2768, i64 8, !2, i64 2776, i64 4, !21, i64 2784, i64 8, !2, i64 2792, i64 4, !21, i64 2796, i64 4, !21, i64 2800, i64 4, !21, i64 2808, i64 8, !6, i64 2816, i64 2, !22, i64 2824, i64 8, !2, i64 2832, i64 4, !21, i64 2836, i64 4, !21, i64 2840, i64 8, !2, i64 2848, i64 4, !43, i64 2852, i64 4, !43, i64 2856, i64 1, !31, i64 2857, i64 1, !31, i64 2858, i64 1, !31, i64 2860, i64 4, !21, i64 2864, i64 4, !21, i64 2868, i64 4, !21, i64 2872, i64 4, !21, i64 2876, i64 4, !21, i64 2880, i64 4, !21, i64 2884, i64 4, !21, i64 2888, i64 4, !21, i64 2896, i64 288, !31, i64 3184, i64 25, !31}
!43 = !{!44, !44, i64 0}
!44 = !{!"float", !4, i64 0}
!45 = !{!9, !10, i64 84}
!46 = !{i64 0, i64 4, !21, i64 4, i64 4, !21, i64 8, i64 4, !31, i64 12, i64 2, !22, i64 14, i64 1, !31, i64 16, i64 4, !21, i64 20, i64 4, !21, i64 24, i64 4, !21, i64 28, i64 4, !21, i64 32, i64 4, !21, i64 36, i64 4, !21, i64 40, i64 4, !31, i64 44, i64 64, !31, i64 108, i64 64, !31, i64 176, i64 512, !31, i64 688, i64 8, !2, i64 696, i64 4, !31, i64 704, i64 8, !6, i64 712, i64 4, !21}
!47 = !{!9, !3, i64 16}
!48 = !{!9, !3, i64 1248}
!49 = !{!9, !3, i64 1144}
!50 = !{!51, !3, i64 1728}
!51 = !{!"gx_device_forward_s", !10, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !10, i64 40, !3, i64 48, !11, i64 56, !10, i64 80, !10, i64 84, !10, i64 88, !12, i64 96, !15, i64 816, !10, i64 832, !10, i64 836, !10, i64 840, !10, i64 844, !10, i64 848, !10, i64 852, !4, i64 856, !4, i64 864, !10, i64 880, !4, i64 884, !4, i64 892, !4, i64 900, !4, i64 908, !7, i64 928, !7, i64 936, !10, i64 944, !10, i64 948, !10, i64 952, !10, i64 956, !10, i64 960, !7, i64 968, !7, i64 976, !16, i64 984, !10, i64 1052, !10, i64 1056, !17, i64 1064, !3, i64 1104, !4, i64 1112, !19, i64 1120, !20, i64 1144, !3, i64 1728}
!52 = !{!9, !10, i64 880}
!53 = !{i64 0, i64 4, !21, i64 4, i64 4, !21}
!54 = !{!55, !3, i64 1864}
!55 = !{!"", !10, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !10, i64 40, !3, i64 48, !11, i64 56, !10, i64 80, !10, i64 84, !10, i64 88, !12, i64 96, !15, i64 816, !10, i64 832, !10, i64 836, !10, i64 840, !10, i64 844, !10, i64 848, !10, i64 852, !4, i64 856, !4, i64 864, !10, i64 880, !4, i64 884, !4, i64 892, !4, i64 900, !4, i64 908, !7, i64 928, !7, i64 936, !10, i64 944, !10, i64 948, !10, i64 952, !10, i64 956, !10, i64 960, !7, i64 968, !7, i64 976, !16, i64 984, !10, i64 1052, !10, i64 1056, !17, i64 1064, !3, i64 1104, !4, i64 1112, !19, i64 1120, !20, i64 1144, !3, i64 1728, !4, i64 1736, !3, i64 1864}
!56 = !{!9, !3, i64 1256}
!57 = !{!58, !3, i64 32}
!58 = !{!"gs_memory_struct_type_s", !10, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !3, i64 48, !3, i64 56}
!59 = !{!58, !3, i64 40}
