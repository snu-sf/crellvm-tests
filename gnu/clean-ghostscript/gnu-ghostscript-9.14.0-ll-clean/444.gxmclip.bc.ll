; ModuleID = './gxmclip.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, {}*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.gx_device_mask_clip_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, %struct.gx_strip_bitmap_s, %struct.gx_device_memory_s, %struct.gs_int_point_s, %union._b }
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
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, {}*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
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
%struct.gc_procs_common_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)* }
%struct.gs_string_s = type { i8*, i32 }
%struct.gx_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64 }
%struct.gx_device_forward_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s* }

@.str = private unnamed_addr constant [20 x i8] c"gx_device_mask_clip\00", align 1
@st_device_mask_clip = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 20968, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @device_mask_clip_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @device_mask_clip_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* @gx_device_finalize, i8* null }, align 8
@st_gx_strip_bitmap = external constant %struct.gs_memory_struct_type_s, align 8
@st_device_memory = external constant %struct.gs_memory_struct_type_s, align 8
@st_device_forward = external constant %struct.gs_memory_struct_type_s, align 8

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @device_mask_clip_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %mcdev = alloca %struct.gx_device_mask_clip_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_mask_clip_s** %mcdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_device_mask_clip_s*
  store %struct.gx_device_mask_clip_s* %2, %struct.gx_device_mask_clip_s** %mcdev, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !5
  switch i32 %3, label %sw.default [
  ]

sw.default:                                       ; preds = %entry
  %4 = load i32, i32* %index.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %4, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.default
  %5 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_gx_strip_bitmap, i32 0, i32 4), align 8, !tbaa !7
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %7 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %mcdev, align 8, !tbaa !1
  %tiles = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %7, i32 0, i32 44
  %8 = bitcast %struct.gx_strip_bitmap_s* %tiles to i8*
  %9 = load i32, i32* %index.addr, align 4, !tbaa !5
  %10 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %11 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %5(%struct.gs_memory_s* %6, i8* %8, i32 48, i32 %9, %struct.enum_ptr_s* %10, %struct.gs_memory_struct_type_s* @st_gx_strip_bitmap, %struct.gc_state_s* %11) #3
  store %struct.gs_ptr_procs_s* %call, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %sw.default
  %12 = load i32, i32* %index.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %12, 1
  store i32 %sub, i32* %index.addr, align 4, !tbaa !5
  %13 = load i32, i32* %index.addr, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %13, 3
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %14 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_device_memory, i32 0, i32 4), align 8, !tbaa !7
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %16 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %mcdev, align 8, !tbaa !1
  %mdev = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %16, i32 0, i32 45
  %17 = bitcast %struct.gx_device_memory_s* %mdev to i8*
  %18 = load i32, i32* %index.addr, align 4, !tbaa !5
  %19 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %20 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call3 = call %struct.gs_ptr_procs_s* %14(%struct.gs_memory_s* %15, i8* %17, i32 2792, i32 %18, %struct.enum_ptr_s* %19, %struct.gs_memory_struct_type_s* @st_device_memory, %struct.gc_state_s* %20) #3
  store %struct.gs_ptr_procs_s* %call3, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %21 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_device_forward, i32 0, i32 4), align 8, !tbaa !7
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %23 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %24 = load i32, i32* %size.addr, align 4, !tbaa !5
  %25 = load i32, i32* %index.addr, align 4, !tbaa !5
  %sub5 = sub nsw i32 %25, 3
  %26 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %27 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call6 = call %struct.gs_ptr_procs_s* %21(%struct.gs_memory_s* %22, i8* %23, i32 %24, i32 %sub5, %struct.enum_ptr_s* %26, %struct.gs_memory_struct_type_s* @st_device_forward, %struct.gc_state_s* %27) #3
  store %struct.gs_ptr_procs_s* %call6, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.4, %if.then.2, %if.then
  %28 = bitcast %struct.gx_device_mask_clip_s** %mcdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #2
  %29 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %29
}

; Function Attrs: nounwind uwtable
define internal void @device_mask_clip_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %mcdev = alloca %struct.gx_device_mask_clip_s*, align 8
  %diff = alloca i64, align 8
  %i = alloca i32, align 4
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_mask_clip_s** %mcdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_device_mask_clip_s*
  store %struct.gx_device_mask_clip_s* %2, %struct.gx_device_mask_clip_s** %mcdev, align 8, !tbaa !1
  %3 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_device_forward, i32 0, i32 5), align 8, !tbaa !9
  %4 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %5 = load i32, i32* %size.addr, align 4, !tbaa !5
  %6 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %3(i8* %4, i32 %5, %struct.gs_memory_struct_type_s* @st_device_forward, %struct.gc_state_s* %6) #3
  %7 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_gx_strip_bitmap, i32 0, i32 5), align 8, !tbaa !9
  %8 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %mcdev, align 8, !tbaa !1
  %tiles = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %8, i32 0, i32 44
  %9 = bitcast %struct.gx_strip_bitmap_s* %tiles to i8*
  %10 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %7(i8* %9, i32 48, %struct.gs_memory_struct_type_s* @st_gx_strip_bitmap, %struct.gc_state_s* %10) #3
  %11 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_device_memory, i32 0, i32 5), align 8, !tbaa !9
  %12 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %mcdev, align 8, !tbaa !1
  %mdev = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %12, i32 0, i32 45
  %13 = bitcast %struct.gx_device_memory_s* %mdev to i8*
  %14 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %11(i8* %13, i32 2792, %struct.gs_memory_struct_type_s* @st_device_memory, %struct.gc_state_s* %14) #3
  %15 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %mcdev, align 8, !tbaa !1
  %mdev1 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %15, i32 0, i32 45
  %base = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev1, i32 0, i32 45
  %16 = load i8*, i8** %base, align 8, !tbaa !10
  %cmp = icmp ne i8* %16, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %17 = bitcast i64* %diff to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #2
  %18 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %19 = bitcast %struct.gc_state_s* %18 to %struct.gc_procs_common_s**
  %20 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %19, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %20, i32 0, i32 0
  %21 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !35
  %22 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %mcdev, align 8, !tbaa !1
  %23 = bitcast %struct.gx_device_mask_clip_s* %22 to i8*
  %24 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %21(i8* %23, %struct.gc_state_s* %24) #3
  %25 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %mcdev, align 8, !tbaa !1
  %26 = bitcast %struct.gx_device_mask_clip_s* %25 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %call to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %26 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %diff, align 8, !tbaa !37
  %27 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #2
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %28 = load i32, i32* %i, align 4, !tbaa !5
  %29 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %mcdev, align 8, !tbaa !1
  %mdev2 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %29, i32 0, i32 45
  %height = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev2, i32 0, i32 14
  %30 = load i32, i32* %height, align 4, !tbaa !38
  %cmp3 = icmp slt i32 %28, %30
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load i64, i64* %diff, align 8, !tbaa !37
  %32 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %32 to i64
  %33 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %mcdev, align 8, !tbaa !1
  %mdev4 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %33, i32 0, i32 45
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev4, i32 0, i32 52
  %34 = load i8**, i8*** %line_ptrs, align 8, !tbaa !39
  %arrayidx = getelementptr inbounds i8*, i8** %34, i64 %idxprom
  %35 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %35, i64 %31
  store i8* %add.ptr, i8** %arrayidx, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %mcdev, align 8, !tbaa !1
  %mdev5 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %37, i32 0, i32 45
  %line_ptrs6 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev5, i32 0, i32 52
  %38 = load i8**, i8*** %line_ptrs6, align 8, !tbaa !39
  %arrayidx7 = getelementptr inbounds i8*, i8** %38, i64 0
  %39 = load i8*, i8** %arrayidx7, align 8, !tbaa !1
  %40 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %mcdev, align 8, !tbaa !1
  %mdev8 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %40, i32 0, i32 45
  %base9 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev8, i32 0, i32 45
  store i8* %39, i8** %base9, align 8, !tbaa !10
  %41 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %mcdev, align 8, !tbaa !1
  %mdev10 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %41, i32 0, i32 45
  %line_ptrs11 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev10, i32 0, i32 52
  %42 = load i8**, i8*** %line_ptrs11, align 8, !tbaa !39
  %43 = bitcast i8** %42 to i8*
  %44 = load i64, i64* %diff, align 8, !tbaa !37
  %add.ptr12 = getelementptr inbounds i8, i8* %43, i64 %44
  %45 = bitcast i8* %add.ptr12 to i8**
  %46 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %mcdev, align 8, !tbaa !1
  %mdev13 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %46, i32 0, i32 45
  %line_ptrs14 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev13, i32 0, i32 52
  store i8** %45, i8*** %line_ptrs14, align 8, !tbaa !39
  %47 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #2
  %48 = bitcast i64* %diff to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #2
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %49 = bitcast %struct.gx_device_mask_clip_s** %mcdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #2
  ret void
}

declare void @gx_device_finalize(%struct.gs_memory_s*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gx_mask_clip_initialize(%struct.gx_device_mask_clip_s* %cdev, %struct.gx_device_mask_clip_s* %proto, %struct.gx_bitmap_s* %bits, %struct.gx_device_s* %tdev, i32 %tx, i32 %ty, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %cdev.addr = alloca %struct.gx_device_mask_clip_s*, align 8
  %proto.addr = alloca %struct.gx_device_mask_clip_s*, align 8
  %bits.addr = alloca %struct.gx_bitmap_s*, align 8
  %tdev.addr = alloca %struct.gx_device_s*, align 8
  %tx.addr = alloca i32, align 4
  %ty.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %buffer_width = alloca i32, align 4
  %buffer_height = alloca i32, align 4
  %bitmap_size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_mask_clip_s* %cdev, %struct.gx_device_mask_clip_s** %cdev.addr, align 8, !tbaa !1
  store %struct.gx_device_mask_clip_s* %proto, %struct.gx_device_mask_clip_s** %proto.addr, align 8, !tbaa !1
  store %struct.gx_bitmap_s* %bits, %struct.gx_bitmap_s** %bits.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %tdev, %struct.gx_device_s** %tdev.addr, align 8, !tbaa !1
  store i32 %tx, i32* %tx.addr, align 4, !tbaa !5
  store i32 %ty, i32* %ty.addr, align 4, !tbaa !5
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast i32* %buffer_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_bitmap_s*, %struct.gx_bitmap_s** %bits.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gx_bitmap_s, %struct.gx_bitmap_s* %1, i32 0, i32 2
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size, i32 0, i32 0
  %2 = load i32, i32* %x, align 4, !tbaa !40
  store i32 %2, i32* %buffer_width, align 4, !tbaa !5
  %3 = bitcast i32* %buffer_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_bitmap_s*, %struct.gx_bitmap_s** %bits.addr, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_bitmap_s, %struct.gx_bitmap_s* %4, i32 0, i32 1
  %5 = load i32, i32* %raster, align 4, !tbaa !42
  %conv = sext i32 %5 to i64
  %add = add i64 %conv, 8
  %div = udiv i64 16384, %add
  %conv1 = trunc i64 %div to i32
  store i32 %conv1, i32* %buffer_height, align 4, !tbaa !5
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_memory_s* %6, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gx_device_mask_clip_s* %7 to %struct.gx_device_s*
  %9 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %proto.addr, align 8, !tbaa !1
  %10 = bitcast %struct.gx_device_mask_clip_s* %9 to %struct.gx_device_s*
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 3
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !43
  call void @gx_device_init_on_stack(%struct.gx_device_s* %8, %struct.gx_device_s* %10, %struct.gs_memory_s* %12) #3
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev.addr, align 8, !tbaa !1
  %14 = bitcast %struct.gx_device_mask_clip_s* %13 to %struct.gx_device_s*
  %15 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %proto.addr, align 8, !tbaa !1
  %16 = bitcast %struct.gx_device_mask_clip_s* %15 to %struct.gx_device_s*
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @gx_device_init(%struct.gx_device_s* %14, %struct.gx_device_s* %16, %struct.gs_memory_s* %17, i32 1) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 13
  %19 = load i32, i32* %width, align 4, !tbaa !45
  %20 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev.addr, align 8, !tbaa !1
  %width3 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %20, i32 0, i32 13
  store i32 %19, i32* %width3, align 4, !tbaa !46
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %21, i32 0, i32 14
  %22 = load i32, i32* %height, align 4, !tbaa !47
  %23 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev.addr, align 8, !tbaa !1
  %height4 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %23, i32 0, i32 14
  store i32 %22, i32* %height4, align 4, !tbaa !48
  %24 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %24, i32 0, i32 11
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev.addr, align 8, !tbaa !1
  %color_info5 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %25, i32 0, i32 11
  %26 = bitcast %struct.gx_device_color_info_s* %color_info to i8*
  %27 = bitcast %struct.gx_device_color_info_s* %color_info5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 720, i32 8, i1 false), !tbaa.struct !49
  %28 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev.addr, align 8, !tbaa !1
  %29 = bitcast %struct.gx_device_mask_clip_s* %28 to %struct.gx_device_forward_s*
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev.addr, align 8, !tbaa !1
  call void @gx_device_set_target(%struct.gx_device_forward_s* %29, %struct.gx_device_s* %30) #3
  %31 = load i32, i32* %tx.addr, align 4, !tbaa !5
  %sub = sub nsw i32 0, %31
  %32 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev.addr, align 8, !tbaa !1
  %phase = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %32, i32 0, i32 46
  %x6 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase, i32 0, i32 0
  store i32 %sub, i32* %x6, align 4, !tbaa !52
  %33 = load i32, i32* %ty.addr, align 4, !tbaa !5
  %sub7 = sub nsw i32 0, %33
  %34 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev.addr, align 8, !tbaa !1
  %phase8 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %34, i32 0, i32 46
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %phase8, i32 0, i32 1
  store i32 %sub7, i32* %y, align 4, !tbaa !53
  %35 = load i32, i32* %buffer_height, align 4, !tbaa !5
  %36 = load %struct.gx_bitmap_s*, %struct.gx_bitmap_s** %bits.addr, align 8, !tbaa !1
  %size9 = getelementptr inbounds %struct.gx_bitmap_s, %struct.gx_bitmap_s* %36, i32 0, i32 2
  %y10 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size9, i32 0, i32 1
  %37 = load i32, i32* %y10, align 4, !tbaa !54
  %cmp11 = icmp sgt i32 %35, %37
  br i1 %cmp11, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.end
  %38 = load %struct.gx_bitmap_s*, %struct.gx_bitmap_s** %bits.addr, align 8, !tbaa !1
  %size14 = getelementptr inbounds %struct.gx_bitmap_s, %struct.gx_bitmap_s* %38, i32 0, i32 2
  %y15 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size14, i32 0, i32 1
  %39 = load i32, i32* %y15, align 4, !tbaa !54
  store i32 %39, i32* %buffer_height, align 4, !tbaa !5
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %if.end
  %40 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev.addr, align 8, !tbaa !1
  %mdev = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %40, i32 0, i32 45
  call void @gs_make_mem_mono_device(%struct.gx_device_memory_s* %mdev, %struct.gs_memory_s* null, %struct.gx_device_s* null) #3
  br label %for.cond

for.cond:                                         ; preds = %cleanup.cont, %if.end.16
  %41 = bitcast i64* %bitmap_size to i8*
  call void @llvm.lifetime.start(i64 8, i8* %41) #2
  store i64 -1, i64* %bitmap_size, align 8, !tbaa !37
  %42 = load i32, i32* %buffer_height, align 4, !tbaa !5
  %cmp17 = icmp sle i32 %42, 0
  br i1 %cmp17, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %for.cond
  %43 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev.addr, align 8, !tbaa !1
  %mdev20 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %43, i32 0, i32 45
  %base = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev20, i32 0, i32 45
  store i8* null, i8** %base, align 8, !tbaa !10
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %for.cond
  %44 = load i32, i32* %buffer_width, align 4, !tbaa !5
  %45 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev.addr, align 8, !tbaa !1
  %mdev22 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %45, i32 0, i32 45
  %width23 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev22, i32 0, i32 13
  store i32 %44, i32* %width23, align 4, !tbaa !55
  %46 = load i32, i32* %buffer_height, align 4, !tbaa !5
  %47 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev.addr, align 8, !tbaa !1
  %mdev24 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %47, i32 0, i32 45
  %height25 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev24, i32 0, i32 14
  store i32 %46, i32* %height25, align 4, !tbaa !38
  %48 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev.addr, align 8, !tbaa !1
  %mdev26 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %48, i32 0, i32 45
  %49 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev.addr, align 8, !tbaa !1
  %mdev27 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %49, i32 0, i32 45
  %width28 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev27, i32 0, i32 13
  %50 = load i32, i32* %width28, align 4, !tbaa !56
  %51 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev.addr, align 8, !tbaa !1
  %mdev29 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %51, i32 0, i32 45
  %height30 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev29, i32 0, i32 14
  %52 = load i32, i32* %height30, align 4, !tbaa !57
  %call = call i32 @gdev_mem_data_size(%struct.gx_device_memory_s* %mdev26, i32 %50, i32 %52, i64* %bitmap_size) #3
  %53 = load i64, i64* %bitmap_size, align 8, !tbaa !37
  %cmp31 = icmp ule i64 %53, 16384
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.21
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %if.end.21
  %54 = load i32, i32* %buffer_height, align 4, !tbaa !5
  %dec = add nsw i32 %54, -1
  store i32 %dec, i32* %buffer_height, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.34, %if.then.33, %if.then.19
  %55 = bitcast i64* %bitmap_size to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.40 [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond

for.end:                                          ; preds = %cleanup
  %56 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev.addr, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %56, i32 0, i32 47
  %bytes = bitcast %union._b* %buffer to [16384 x i8]*
  %arraydecay = getelementptr inbounds [16384 x i8], [16384 x i8]* %bytes, i32 0, i32 0
  %57 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev.addr, align 8, !tbaa !1
  %mdev35 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %57, i32 0, i32 45
  %base36 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev35, i32 0, i32 45
  store i8* %arraydecay, i8** %base36, align 8, !tbaa !10
  %58 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev.addr, align 8, !tbaa !1
  %mdev37 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %58, i32 0, i32 45
  %procs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %mdev37, i32 0, i32 42
  %open_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 0
  %59 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %open_device, align 8, !tbaa !58
  %60 = load %struct.gx_device_mask_clip_s*, %struct.gx_device_mask_clip_s** %cdev.addr, align 8, !tbaa !1
  %mdev38 = getelementptr inbounds %struct.gx_device_mask_clip_s, %struct.gx_device_mask_clip_s* %60, i32 0, i32 45
  %61 = bitcast %struct.gx_device_memory_s* %mdev38 to %struct.gx_device_s*
  %call39 = call i32 %59(%struct.gx_device_s* %61) #3
  store i32 %call39, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.40

cleanup.40:                                       ; preds = %for.end, %cleanup
  %62 = bitcast i32* %buffer_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #2
  %63 = bitcast i32* %buffer_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #2
  %64 = load i32, i32* %retval
  ret i32 %64
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare void @gx_device_init_on_stack(%struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_memory_s*) #1

declare void @gx_device_init(%struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_memory_s*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare void @gx_device_set_target(%struct.gx_device_forward_s*, %struct.gx_device_s*) #1

declare void @gs_make_mem_mono_device(%struct.gx_device_memory_s*, %struct.gs_memory_s*, %struct.gx_device_s*) #1

declare i32 @gdev_mem_data_size(%struct.gx_device_memory_s*, i32, i32, i64*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 32}
!8 = !{!"gs_memory_struct_type_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!9 = !{!8, !2, i64 40}
!10 = !{!11, !2, i64 3528}
!11 = !{!"gx_device_mask_clip_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !12, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !14, i64 96, !17, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !13, i64 928, !13, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !13, i64 968, !13, i64 976, !18, i64 984, !6, i64 1052, !6, i64 1056, !19, i64 1064, !2, i64 1104, !3, i64 1112, !21, i64 1120, !22, i64 1144, !2, i64 1728, !23, i64 1736, !25, i64 1784, !24, i64 4576, !3, i64 4584}
!12 = !{!"rc_header_s", !13, i64 0, !2, i64 8, !2, i64 16}
!13 = !{!"long", !3, i64 0}
!14 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !15, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !16, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !13, i64 704, !6, i64 712}
!15 = !{!"short", !3, i64 0}
!16 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!17 = !{!"gx_device_cached_colors_s", !13, i64 0, !13, i64 8}
!18 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!19 = !{!"gdev_space_params_s", !13, i64 0, !13, i64 8, !20, i64 16, !6, i64 32, !3, i64 36}
!20 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !13, i64 8}
!21 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!22 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!23 = !{!"gx_strip_bitmap_s", !2, i64 0, !6, i64 8, !24, i64 12, !13, i64 24, !15, i64 32, !15, i64 34, !15, i64 36, !15, i64 38, !6, i64 40}
!24 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!25 = !{!"gx_device_memory_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !12, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !14, i64 96, !17, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !13, i64 928, !13, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !13, i64 968, !13, i64 976, !18, i64 984, !6, i64 1052, !6, i64 1056, !19, i64 1064, !2, i64 1104, !3, i64 1112, !21, i64 1120, !22, i64 1144, !2, i64 1728, !6, i64 1736, !2, i64 1744, !2, i64 1752, !6, i64 1760, !2, i64 1768, !6, i64 1776, !3, i64 1780, !26, i64 2548, !2, i64 2576, !28, i64 2584, !29, i64 2600, !30, i64 2624, !31, i64 2656, !32, i64 2680, !33, i64 2720, !34, i64 2736, !6, i64 2744, !6, i64 2748, !6, i64 2752, !6, i64 2756, !6, i64 2760, !13, i64 2768, !2, i64 2776, !6, i64 2784, !6, i64 2788}
!26 = !{!"gs_matrix_s", !27, i64 0, !27, i64 4, !27, i64 8, !27, i64 12, !27, i64 16, !27, i64 20}
!27 = !{!"float", !3, i64 0}
!28 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!29 = !{!"_c24", !13, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!30 = !{!"_c40", !13, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24}
!31 = !{!"_c48", !13, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!32 = !{!"_c56", !13, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!33 = !{!"_c64", !13, i64 0, !6, i64 8, !6, i64 12}
!34 = !{!"gs_log2_scale_point_s", !6, i64 0, !6, i64 4}
!35 = !{!36, !2, i64 0}
!36 = !{!"gc_procs_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!37 = !{!13, !13, i64 0}
!38 = !{!11, !6, i64 2620}
!39 = !{!11, !2, i64 4360}
!40 = !{!41, !6, i64 12}
!41 = !{!"gx_bitmap_s", !2, i64 0, !6, i64 8, !24, i64 12, !13, i64 24}
!42 = !{!41, !6, i64 8}
!43 = !{!44, !2, i64 24}
!44 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !12, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !14, i64 96, !17, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !13, i64 928, !13, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !13, i64 968, !13, i64 976, !18, i64 984, !6, i64 1052, !6, i64 1056, !19, i64 1064, !2, i64 1104, !3, i64 1112, !21, i64 1120, !22, i64 1144}
!45 = !{!44, !6, i64 832}
!46 = !{!11, !6, i64 832}
!47 = !{!44, !6, i64 836}
!48 = !{!11, !6, i64 836}
!49 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !50, i64 12, i64 2, !51, i64 14, i64 1, !50, i64 16, i64 4, !5, i64 20, i64 4, !5, i64 24, i64 4, !5, i64 28, i64 4, !5, i64 32, i64 4, !5, i64 36, i64 4, !5, i64 40, i64 4, !50, i64 44, i64 64, !50, i64 108, i64 64, !50, i64 176, i64 512, !50, i64 688, i64 8, !1, i64 696, i64 4, !50, i64 704, i64 8, !37, i64 712, i64 4, !5}
!50 = !{!3, !3, i64 0}
!51 = !{!15, !15, i64 0}
!52 = !{!11, !6, i64 4576}
!53 = !{!11, !6, i64 4580}
!54 = !{!41, !6, i64 16}
!55 = !{!11, !6, i64 2616}
!56 = !{!25, !6, i64 832}
!57 = !{!25, !6, i64 836}
!58 = !{!25, !2, i64 1144}
