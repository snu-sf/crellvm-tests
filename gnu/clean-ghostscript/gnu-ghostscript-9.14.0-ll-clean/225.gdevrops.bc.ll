; ModuleID = './gdevrops.bc'
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
%struct.gx_device_rop_texture_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, i32, %struct.gx_device_color_s }
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
%struct.gx_clip_path_s = type opaque
%struct.gx_stroke_params_s = type opaque
%struct.gs_fixed_edge_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image1_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, i32, i32, i32 }
%struct.gx_image_type_s = type opaque
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type opaque
%struct.gs_paint_color_s = type { [64 x float] }
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
%struct.gx_device_halftone_s = type opaque
%struct.patch_fill_state_s = type opaque
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_color_s = type { %struct.gx_device_color_type_s*, %union._c, %struct.gs_int_point_s, i32, %struct.gs_client_color_s, %struct._mask }
%struct.gx_device_color_type_s = type { %struct.gs_memory_struct_type_s*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* }
%struct.gx_device_color_saved_s = type { %struct.gx_device_color_type_s*, %union._svc, %struct.gs_int_point_s }
%union._svc = type { %struct._svbin, [304 x i8] }
%struct._svbin = type { [2 x i64], i32, i32 }
%struct.gx_rop_source_s = type { i8*, i32, i32, i64, [2 x i64], i32, i32 }
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type opaque
%struct.gx_device_forward_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s* }

@st_device_rop_texture = internal constant %struct.gs_memory_struct_type_s { i32 2400, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @device_rop_texture_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @device_rop_texture_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* @gx_device_finalize, i8* null }, align 8
@gs_rop_texture_device = internal constant %struct.gx_device_rop_texture_s { i32 2400, %struct.gx_device_procs_s* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* null, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [2 x float] zeroinitializer, [4 x float] zeroinitializer, i32 0, [2 x float] [float 1.000000e+00, float 1.000000e+00], [2 x float] [float 1.000000e+00, float 1.000000e+00], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* null, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @gx_forward_get_initial_matrix, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* null, i32 (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16*)* @gx_forward_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_forward_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @rop_texture_fill_rectangle, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* @rop_texture_copy_mono, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* @rop_texture_copy_color, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_forward_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_forward_put_params, i64 (%struct.gx_device_s*, i16*)* @gx_forward_map_cmyk_color, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_procs, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_device, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* @gx_forward_map_rgb_alpha_color, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* @gx_no_copy_alpha, i32 (%struct.gx_device_s*, i32, i32*)* @gx_forward_get_band, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @gx_no_copy_rop, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* @gx_forward_get_clipping_box, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* @gx_forward_map_color_rgb_alpha, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_forward_get_hardware_params, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* @gx_forward_get_color_mapping_procs, i32 (%struct.gx_device_s*, i8*, i32, i32)* @gx_forward_get_color_comp_index, i64 (%struct.gx_device_s*, i16*)* @gx_forward_encode_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_forward_decode_color, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_forward_fill_rectangle_hl_color, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* @gx_forward_include_color_space, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* @gx_forward_fill_linear_color_scanline, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* @gx_forward_fill_linear_color_trapezoid, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* @gx_forward_fill_linear_color_triangle, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_forward_update_spot_equivalent_colors, %struct.gs_devn_params_s* (%struct.gx_device_s*)* @gx_forward_ret_devn_params, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* @gx_forward_fillpage, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* @gx_forward_dev_spec_op, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* @rop_texture_copy_planes, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_forward_get_profile, void (%struct.gx_device_s*, i32)* @gx_forward_set_graphics_type_tag, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, %struct.gx_device_s* null, i32 252, %struct.gx_device_color_s zeroinitializer }, align 8
@.str = private unnamed_addr constant [22 x i8] c"gx_device_rop_texture\00", align 1
@st_device_color = external constant %struct.gs_memory_struct_type_s, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@st_device_forward = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"rop source\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gx_alloc_rop_texture_device(%struct.gx_device_rop_texture_s** %prsdev, %struct.gs_memory_s* %mem, i8* %cname) #0 {
entry:
  %prsdev.addr = alloca %struct.gx_device_rop_texture_s**, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %cname.addr = alloca i8*, align 8
  store %struct.gx_device_rop_texture_s** %prsdev, %struct.gx_device_rop_texture_s*** %prsdev.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %cname, i8** %cname.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %0, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %1 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !5
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %cname.addr, align 8, !tbaa !1
  %call = call i8* %1(%struct.gs_memory_s* %2, %struct.gs_memory_struct_type_s* @st_device_rop_texture, i8* %3) #3
  %4 = bitcast i8* %call to %struct.gx_device_rop_texture_s*
  %5 = load %struct.gx_device_rop_texture_s**, %struct.gx_device_rop_texture_s*** %prsdev.addr, align 8, !tbaa !1
  store %struct.gx_device_rop_texture_s* %4, %struct.gx_device_rop_texture_s** %5, align 8, !tbaa !1
  %6 = load %struct.gx_device_rop_texture_s**, %struct.gx_device_rop_texture_s*** %prsdev.addr, align 8, !tbaa !1
  %7 = load %struct.gx_device_rop_texture_s*, %struct.gx_device_rop_texture_s** %6, align 8, !tbaa !1
  %cmp = icmp eq %struct.gx_device_rop_texture_s* %7, null
  %cond = select i1 %cmp, i32 -25, i32 0
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define void @gx_make_rop_texture_device(%struct.gx_device_rop_texture_s* %dev, %struct.gx_device_s* %target, i32 %log_op, %struct.gx_device_color_s* %texture) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_rop_texture_s*, align 8
  %target.addr = alloca %struct.gx_device_s*, align 8
  %log_op.addr = alloca i32, align 4
  %texture.addr = alloca %struct.gx_device_color_s*, align 8
  store %struct.gx_device_rop_texture_s* %dev, %struct.gx_device_rop_texture_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %target, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  store i32 %log_op, i32* %log_op.addr, align 4, !tbaa !8
  store %struct.gx_device_color_s* %texture, %struct.gx_device_color_s** %texture.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_rop_texture_s*, %struct.gx_device_rop_texture_s** %dev.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gx_device_rop_texture_s* %0 to %struct.gx_device_s*
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_device_s* %2, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 3
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !10
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gs_memory_s* [ %4, %cond.true ], [ null, %cond.false ]
  call void @gx_device_init(%struct.gx_device_s* %1, %struct.gx_device_s* bitcast (%struct.gx_device_rop_texture_s* @gs_rop_texture_device to %struct.gx_device_s*), %struct.gs_memory_s* %cond, i32 1) #3
  %5 = load %struct.gx_device_rop_texture_s*, %struct.gx_device_rop_texture_s** %dev.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_rop_texture_s* %5 to %struct.gx_device_forward_s*
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  call void @gx_device_set_target(%struct.gx_device_forward_s* %6, %struct.gx_device_s* %7) #3
  %8 = load %struct.gx_device_rop_texture_s*, %struct.gx_device_rop_texture_s** %dev.addr, align 8, !tbaa !1
  %9 = bitcast %struct.gx_device_rop_texture_s* %8 to %struct.gx_device_s*
  call void @check_device_separable(%struct.gx_device_s* %9) #3
  %10 = load %struct.gx_device_rop_texture_s*, %struct.gx_device_rop_texture_s** %dev.addr, align 8, !tbaa !1
  %11 = bitcast %struct.gx_device_rop_texture_s* %10 to %struct.gx_device_s*
  call void @gx_device_fill_in_procs(%struct.gx_device_s* %11) #3
  %12 = load %struct.gx_device_rop_texture_s*, %struct.gx_device_rop_texture_s** %dev.addr, align 8, !tbaa !1
  %13 = bitcast %struct.gx_device_rop_texture_s* %12 to %struct.gx_device_s*
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  call void @gx_device_copy_params(%struct.gx_device_s* %13, %struct.gx_device_s* %14) #3
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %target.addr, align 8, !tbaa !1
  %graphics_type_tag = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %15, i32 0, i32 40
  %16 = load i32, i32* %graphics_type_tag, align 4, !tbaa !23
  %17 = load %struct.gx_device_rop_texture_s*, %struct.gx_device_rop_texture_s** %dev.addr, align 8, !tbaa !1
  %graphics_type_tag1 = getelementptr inbounds %struct.gx_device_rop_texture_s, %struct.gx_device_rop_texture_s* %17, i32 0, i32 40
  store i32 %16, i32* %graphics_type_tag1, align 4, !tbaa !24
  %18 = load i32, i32* %log_op.addr, align 4, !tbaa !8
  %19 = load %struct.gx_device_rop_texture_s*, %struct.gx_device_rop_texture_s** %dev.addr, align 8, !tbaa !1
  %log_op2 = getelementptr inbounds %struct.gx_device_rop_texture_s, %struct.gx_device_rop_texture_s* %19, i32 0, i32 44
  store i32 %18, i32* %log_op2, align 4, !tbaa !32
  %20 = load %struct.gx_device_rop_texture_s*, %struct.gx_device_rop_texture_s** %dev.addr, align 8, !tbaa !1
  %texture3 = getelementptr inbounds %struct.gx_device_rop_texture_s, %struct.gx_device_rop_texture_s* %20, i32 0, i32 45
  %21 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %texture.addr, align 8, !tbaa !1
  %22 = bitcast %struct.gx_device_color_s* %texture3 to i8*
  %23 = bitcast %struct.gx_device_color_s* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 656, i32 8, i1 false), !tbaa.struct !33
  ret void
}

declare void @gx_device_init(%struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_memory_s*, i32) #1

declare void @gx_device_set_target(%struct.gx_device_forward_s*, %struct.gx_device_s*) #1

declare void @check_device_separable(%struct.gx_device_s*) #1

declare void @gx_device_fill_in_procs(%struct.gx_device_s*) #1

declare void @gx_device_copy_params(%struct.gx_device_s*, %struct.gx_device_s*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @device_rop_texture_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %ptype = alloca %struct.gs_ptr_procs_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !8
  store i32 %index, i32* %index.addr, align 4, !tbaa !8
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = load i32, i32* %index.addr, align 4, !tbaa !8
  switch i32 %0, label %sw.default [
  ]

sw.default:                                       ; preds = %entry
  %1 = load i32, i32* %index.addr, align 4, !tbaa !8
  %cmp = icmp slt i32 %1, 3
  br i1 %cmp, label %if.then, label %if.end.2

if.then:                                          ; preds = %sw.default
  %2 = bitcast %struct.gs_ptr_procs_s** %ptype to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_device_color, i32 0, i32 4), align 8, !tbaa !37
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %6 = bitcast i8* %5 to %struct.gx_device_rop_texture_s*
  %texture = getelementptr inbounds %struct.gx_device_rop_texture_s, %struct.gx_device_rop_texture_s* %6, i32 0, i32 45
  %7 = bitcast %struct.gx_device_color_s* %texture to i8*
  %8 = load i32, i32* %index.addr, align 4, !tbaa !8
  %sub = sub nsw i32 %8, 0
  %9 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %10 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %3(%struct.gs_memory_s* %4, i8* %7, i32 656, i32 %sub, %struct.enum_ptr_s* %9, %struct.gs_memory_struct_type_s* @st_device_color, %struct.gc_state_s* %10) #3
  store %struct.gs_ptr_procs_s* %call, %struct.gs_ptr_procs_s** %ptype, align 8, !tbaa !1
  %11 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %ptype, align 8, !tbaa !1
  %tobool = icmp ne %struct.gs_ptr_procs_s* %11, null
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %12 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %ptype, align 8, !tbaa !1
  store %struct.gs_ptr_procs_s* %12, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %13 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %13, i32 0, i32 0
  store i8* null, i8** %ptr, align 8, !tbaa !39
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.1
  %14 = bitcast %struct.gs_ptr_procs_s** %ptype to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #2
  br label %return

if.end.2:                                         ; preds = %sw.default
  %15 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_device_forward, i32 0, i32 4), align 8, !tbaa !37
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %17 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %18 = load i32, i32* %size.addr, align 4, !tbaa !8
  %19 = load i32, i32* %index.addr, align 4, !tbaa !8
  %sub3 = sub nsw i32 %19, 3
  %20 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %21 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call4 = call %struct.gs_ptr_procs_s* %15(%struct.gs_memory_s* %16, i8* %17, i32 %18, i32 %sub3, %struct.enum_ptr_s* %20, %struct.gs_memory_struct_type_s* @st_device_forward, %struct.gc_state_s* %21) #3
  store %struct.gs_ptr_procs_s* %call4, %struct.gs_ptr_procs_s** %retval
  br label %return

return:                                           ; preds = %if.end.2, %cleanup
  %22 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %22
}

; Function Attrs: nounwind uwtable
define internal void @device_rop_texture_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !8
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_device_forward, i32 0, i32 5), align 8, !tbaa !41
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = load i32, i32* %size.addr, align 4, !tbaa !8
  %3 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %0(i8* %1, i32 %2, %struct.gs_memory_struct_type_s* @st_device_forward, %struct.gc_state_s* %3) #3
  %4 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_device_color, i32 0, i32 5), align 8, !tbaa !41
  %5 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %6 = bitcast i8* %5 to %struct.gx_device_rop_texture_s*
  %texture = getelementptr inbounds %struct.gx_device_rop_texture_s, %struct.gx_device_rop_texture_s* %6, i32 0, i32 45
  %7 = bitcast %struct.gx_device_color_s* %texture to i8*
  %8 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %4(i8* %7, i32 656, %struct.gs_memory_struct_type_s* @st_device_color, %struct.gc_state_s* %8) #3
  ret void
}

declare void @gx_device_finalize(%struct.gs_memory_s*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #1

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #1

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #1

declare void @gx_forward_get_initial_matrix(%struct.gx_device_s*, %struct.gs_matrix_s*) #1

declare i64 @gx_forward_map_rgb_color(%struct.gx_device_s*, i16*) #1

declare i32 @gx_forward_map_color_rgb(%struct.gx_device_s*, i64, i16*) #1

; Function Attrs: nounwind uwtable
define internal i32 @rop_texture_fill_rectangle(%struct.gx_device_s* %dev, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  %rtdev = alloca %struct.gx_device_rop_texture_s*, align 8
  %source = alloca %struct.gx_rop_source_s, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !8
  store i32 %y, i32* %y.addr, align 4, !tbaa !8
  store i32 %w, i32* %w.addr, align 4, !tbaa !8
  store i32 %h, i32* %h.addr, align 4, !tbaa !8
  store i64 %color, i64* %color.addr, align 8, !tbaa !34
  %0 = bitcast %struct.gx_device_rop_texture_s** %rtdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_rop_texture_s*
  store %struct.gx_device_rop_texture_s* %2, %struct.gx_device_rop_texture_s** %rtdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_rop_source_s* %source to i8*
  call void @llvm.lifetime.start(i64 48, i8* %3) #2
  %sdata = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %source, i32 0, i32 0
  store i8* null, i8** %sdata, align 8, !tbaa !42
  %sourcex = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %source, i32 0, i32 1
  store i32 0, i32* %sourcex, align 4, !tbaa !44
  %sraster = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %source, i32 0, i32 2
  store i32 0, i32* %sraster, align 4, !tbaa !45
  %id = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %source, i32 0, i32 3
  store i64 0, i64* %id, align 8, !tbaa !46
  %4 = load i64, i64* %color.addr, align 8, !tbaa !34
  %scolors = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %source, i32 0, i32 4
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %scolors, i32 0, i64 1
  store i64 %4, i64* %arrayidx, align 8, !tbaa !34
  %scolors1 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %source, i32 0, i32 4
  %arrayidx2 = getelementptr inbounds [2 x i64], [2 x i64]* %scolors1, i32 0, i64 0
  store i64 %4, i64* %arrayidx2, align 8, !tbaa !34
  %planar_height = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %source, i32 0, i32 5
  store i32 0, i32* %planar_height, align 4, !tbaa !47
  %use_scolors = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %source, i32 0, i32 6
  store i32 1, i32* %use_scolors, align 4, !tbaa !48
  %5 = load %struct.gx_device_rop_texture_s*, %struct.gx_device_rop_texture_s** %rtdev, align 8, !tbaa !1
  %texture = getelementptr inbounds %struct.gx_device_rop_texture_s, %struct.gx_device_rop_texture_s* %5, i32 0, i32 45
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %texture, i32 0, i32 0
  %6 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !49
  %fill_rectangle = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %6, i32 0, i32 5
  %7 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle, align 8, !tbaa !50
  %8 = load %struct.gx_device_rop_texture_s*, %struct.gx_device_rop_texture_s** %rtdev, align 8, !tbaa !1
  %texture3 = getelementptr inbounds %struct.gx_device_rop_texture_s, %struct.gx_device_rop_texture_s* %8, i32 0, i32 45
  %9 = load i32, i32* %x.addr, align 4, !tbaa !8
  %10 = load i32, i32* %y.addr, align 4, !tbaa !8
  %11 = load i32, i32* %w.addr, align 4, !tbaa !8
  %12 = load i32, i32* %h.addr, align 4, !tbaa !8
  %13 = load %struct.gx_device_rop_texture_s*, %struct.gx_device_rop_texture_s** %rtdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_rop_texture_s, %struct.gx_device_rop_texture_s* %13, i32 0, i32 43
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !52
  %15 = load %struct.gx_device_rop_texture_s*, %struct.gx_device_rop_texture_s** %rtdev, align 8, !tbaa !1
  %log_op = getelementptr inbounds %struct.gx_device_rop_texture_s, %struct.gx_device_rop_texture_s* %15, i32 0, i32 44
  %16 = load i32, i32* %log_op, align 4, !tbaa !32
  %call = call i32 %7(%struct.gx_device_color_s* %texture3, i32 %9, i32 %10, i32 %11, i32 %12, %struct.gx_device_s* %14, i32 %16, %struct.gx_rop_source_s* %source) #3
  %17 = bitcast %struct.gx_rop_source_s* %source to i8*
  call void @llvm.lifetime.end(i64 48, i8* %17) #2
  %18 = bitcast %struct.gx_device_rop_texture_s** %rtdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @rop_texture_copy_mono(%struct.gx_device_s* %dev, i8* %data, i32 %sourcex, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color0, i64 %color1) #0 {
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
  %color0.addr = alloca i64, align 8
  %color1.addr = alloca i64, align 8
  %rtdev = alloca %struct.gx_device_rop_texture_s*, align 8
  %source = alloca %struct.gx_rop_source_s, align 8
  %lop = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !8
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !8
  store i64 %id, i64* %id.addr, align 8, !tbaa !34
  store i32 %x, i32* %x.addr, align 4, !tbaa !8
  store i32 %y, i32* %y.addr, align 4, !tbaa !8
  store i32 %w, i32* %w.addr, align 4, !tbaa !8
  store i32 %h, i32* %h.addr, align 4, !tbaa !8
  store i64 %color0, i64* %color0.addr, align 8, !tbaa !34
  store i64 %color1, i64* %color1.addr, align 8, !tbaa !34
  %0 = bitcast %struct.gx_device_rop_texture_s** %rtdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_rop_texture_s*
  store %struct.gx_device_rop_texture_s* %2, %struct.gx_device_rop_texture_s** %rtdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_rop_source_s* %source to i8*
  call void @llvm.lifetime.start(i64 48, i8* %3) #2
  %4 = bitcast i32* %lop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gx_device_rop_texture_s*, %struct.gx_device_rop_texture_s** %rtdev, align 8, !tbaa !1
  %log_op = getelementptr inbounds %struct.gx_device_rop_texture_s, %struct.gx_device_rop_texture_s* %5, i32 0, i32 44
  %6 = load i32, i32* %log_op, align 4, !tbaa !32
  store i32 %6, i32* %lop, align 4, !tbaa !8
  %7 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %sdata = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %source, i32 0, i32 0
  store i8* %7, i8** %sdata, align 8, !tbaa !42
  %8 = load i32, i32* %sourcex.addr, align 4, !tbaa !8
  %sourcex1 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %source, i32 0, i32 1
  store i32 %8, i32* %sourcex1, align 4, !tbaa !44
  %9 = load i32, i32* %raster.addr, align 4, !tbaa !8
  %sraster = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %source, i32 0, i32 2
  store i32 %9, i32* %sraster, align 4, !tbaa !45
  %10 = load i64, i64* %id.addr, align 8, !tbaa !34
  %id2 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %source, i32 0, i32 3
  store i64 %10, i64* %id2, align 8, !tbaa !46
  %11 = load i64, i64* %color0.addr, align 8, !tbaa !34
  %scolors = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %source, i32 0, i32 4
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %scolors, i32 0, i64 0
  store i64 %11, i64* %arrayidx, align 8, !tbaa !34
  %12 = load i64, i64* %color1.addr, align 8, !tbaa !34
  %scolors3 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %source, i32 0, i32 4
  %arrayidx4 = getelementptr inbounds [2 x i64], [2 x i64]* %scolors3, i32 0, i64 1
  store i64 %12, i64* %arrayidx4, align 8, !tbaa !34
  %planar_height = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %source, i32 0, i32 5
  store i32 0, i32* %planar_height, align 4, !tbaa !47
  %use_scolors = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %source, i32 0, i32 6
  store i32 1, i32* %use_scolors, align 4, !tbaa !48
  %13 = load i64, i64* %color0.addr, align 8, !tbaa !34
  %cmp = icmp eq i64 %13, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %14 = load i32, i32* %lop, align 4, !tbaa !8
  %and = and i32 %14, -52
  %or = or i32 %and, 34
  store i32 %or, i32* %lop, align 4, !tbaa !8
  br label %if.end.9

if.else:                                          ; preds = %entry
  %15 = load i64, i64* %color1.addr, align 8, !tbaa !34
  %cmp5 = icmp eq i64 %15, -1
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.else
  %16 = load i32, i32* %lop, align 4, !tbaa !8
  %and7 = and i32 %16, -205
  %or8 = or i32 %and7, 136
  store i32 %or8, i32* %lop, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.else
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  %17 = load %struct.gx_device_rop_texture_s*, %struct.gx_device_rop_texture_s** %rtdev, align 8, !tbaa !1
  %texture = getelementptr inbounds %struct.gx_device_rop_texture_s, %struct.gx_device_rop_texture_s* %17, i32 0, i32 45
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %texture, i32 0, i32 0
  %18 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !49
  %fill_rectangle = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %18, i32 0, i32 5
  %19 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle, align 8, !tbaa !50
  %20 = load %struct.gx_device_rop_texture_s*, %struct.gx_device_rop_texture_s** %rtdev, align 8, !tbaa !1
  %texture10 = getelementptr inbounds %struct.gx_device_rop_texture_s, %struct.gx_device_rop_texture_s* %20, i32 0, i32 45
  %21 = load i32, i32* %x.addr, align 4, !tbaa !8
  %22 = load i32, i32* %y.addr, align 4, !tbaa !8
  %23 = load i32, i32* %w.addr, align 4, !tbaa !8
  %24 = load i32, i32* %h.addr, align 4, !tbaa !8
  %25 = load %struct.gx_device_rop_texture_s*, %struct.gx_device_rop_texture_s** %rtdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_rop_texture_s, %struct.gx_device_rop_texture_s* %25, i32 0, i32 43
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !52
  %27 = load i32, i32* %lop, align 4, !tbaa !8
  %call = call i32 %19(%struct.gx_device_color_s* %texture10, i32 %21, i32 %22, i32 %23, i32 %24, %struct.gx_device_s* %26, i32 %27, %struct.gx_rop_source_s* %source) #3
  %28 = bitcast i32* %lop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #2
  %29 = bitcast %struct.gx_rop_source_s* %source to i8*
  call void @llvm.lifetime.end(i64 48, i8* %29) #2
  %30 = bitcast %struct.gx_device_rop_texture_s** %rtdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @rop_texture_copy_color(%struct.gx_device_s* %dev, i8* %data, i32 %sourcex, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h) #0 {
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
  %rtdev = alloca %struct.gx_device_rop_texture_s*, align 8
  %source = alloca %struct.gx_rop_source_s, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !8
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !8
  store i64 %id, i64* %id.addr, align 8, !tbaa !34
  store i32 %x, i32* %x.addr, align 4, !tbaa !8
  store i32 %y, i32* %y.addr, align 4, !tbaa !8
  store i32 %w, i32* %w.addr, align 4, !tbaa !8
  store i32 %h, i32* %h.addr, align 4, !tbaa !8
  %0 = bitcast %struct.gx_device_rop_texture_s** %rtdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_rop_texture_s*
  store %struct.gx_device_rop_texture_s* %2, %struct.gx_device_rop_texture_s** %rtdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_rop_source_s* %source to i8*
  call void @llvm.lifetime.start(i64 48, i8* %3) #2
  %4 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %sdata = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %source, i32 0, i32 0
  store i8* %4, i8** %sdata, align 8, !tbaa !42
  %5 = load i32, i32* %sourcex.addr, align 4, !tbaa !8
  %sourcex1 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %source, i32 0, i32 1
  store i32 %5, i32* %sourcex1, align 4, !tbaa !44
  %6 = load i32, i32* %raster.addr, align 4, !tbaa !8
  %sraster = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %source, i32 0, i32 2
  store i32 %6, i32* %sraster, align 4, !tbaa !45
  %7 = load i64, i64* %id.addr, align 8, !tbaa !34
  %id2 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %source, i32 0, i32 3
  store i64 %7, i64* %id2, align 8, !tbaa !46
  %scolors = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %source, i32 0, i32 4
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %scolors, i32 0, i64 1
  store i64 -1, i64* %arrayidx, align 8, !tbaa !34
  %scolors3 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %source, i32 0, i32 4
  %arrayidx4 = getelementptr inbounds [2 x i64], [2 x i64]* %scolors3, i32 0, i64 0
  store i64 -1, i64* %arrayidx4, align 8, !tbaa !34
  %planar_height = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %source, i32 0, i32 5
  store i32 0, i32* %planar_height, align 4, !tbaa !47
  %use_scolors = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %source, i32 0, i32 6
  store i32 0, i32* %use_scolors, align 4, !tbaa !48
  %8 = load %struct.gx_device_rop_texture_s*, %struct.gx_device_rop_texture_s** %rtdev, align 8, !tbaa !1
  %texture = getelementptr inbounds %struct.gx_device_rop_texture_s, %struct.gx_device_rop_texture_s* %8, i32 0, i32 45
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %texture, i32 0, i32 0
  %9 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !49
  %fill_rectangle = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %9, i32 0, i32 5
  %10 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle, align 8, !tbaa !50
  %11 = load %struct.gx_device_rop_texture_s*, %struct.gx_device_rop_texture_s** %rtdev, align 8, !tbaa !1
  %texture5 = getelementptr inbounds %struct.gx_device_rop_texture_s, %struct.gx_device_rop_texture_s* %11, i32 0, i32 45
  %12 = load i32, i32* %x.addr, align 4, !tbaa !8
  %13 = load i32, i32* %y.addr, align 4, !tbaa !8
  %14 = load i32, i32* %w.addr, align 4, !tbaa !8
  %15 = load i32, i32* %h.addr, align 4, !tbaa !8
  %16 = load %struct.gx_device_rop_texture_s*, %struct.gx_device_rop_texture_s** %rtdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_rop_texture_s, %struct.gx_device_rop_texture_s* %16, i32 0, i32 43
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !52
  %18 = load %struct.gx_device_rop_texture_s*, %struct.gx_device_rop_texture_s** %rtdev, align 8, !tbaa !1
  %log_op = getelementptr inbounds %struct.gx_device_rop_texture_s, %struct.gx_device_rop_texture_s* %18, i32 0, i32 44
  %19 = load i32, i32* %log_op, align 4, !tbaa !32
  %call = call i32 %10(%struct.gx_device_color_s* %texture5, i32 %12, i32 %13, i32 %14, i32 %15, %struct.gx_device_s* %17, i32 %19, %struct.gx_rop_source_s* %source) #3
  %20 = bitcast %struct.gx_rop_source_s* %source to i8*
  call void @llvm.lifetime.end(i64 48, i8* %20) #2
  %21 = bitcast %struct.gx_device_rop_texture_s** %rtdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #2
  ret i32 %call
}

declare i32 @gx_forward_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #1

declare i32 @gx_forward_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #1

declare i64 @gx_forward_map_cmyk_color(%struct.gx_device_s*, i16*) #1

declare %struct.gx_xfont_procs_s* @gx_forward_get_xfont_procs(%struct.gx_device_s*) #1

declare %struct.gx_device_s* @gx_forward_get_xfont_device(%struct.gx_device_s*) #1

declare i64 @gx_forward_map_rgb_alpha_color(%struct.gx_device_s*, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext) #1

declare %struct.gx_device_s* @gx_forward_get_page_device(%struct.gx_device_s*) #1

declare i32 @gx_no_copy_alpha(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32) #1

declare i32 @gx_forward_get_band(%struct.gx_device_s*, i32, i32*) #1

declare i32 @gx_no_copy_rop(%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32) #1

declare void @gx_forward_get_clipping_box(%struct.gx_device_s*, %struct.gs_fixed_rect_s*) #1

declare i32 @gx_forward_map_color_rgb_alpha(%struct.gx_device_s*, i64, i16*) #1

declare i32 @gx_forward_get_hardware_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #1

declare %struct.gx_cm_color_map_procs_s* @gx_forward_get_color_mapping_procs(%struct.gx_device_s*) #1

declare i32 @gx_forward_get_color_comp_index(%struct.gx_device_s*, i8*, i32, i32) #1

declare i64 @gx_forward_encode_color(%struct.gx_device_s*, i16*) #1

declare i32 @gx_forward_decode_color(%struct.gx_device_s*, i64, i16*) #1

declare i32 @gx_forward_fill_rectangle_hl_color(%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*) #1

declare i32 @gx_forward_include_color_space(%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32) #1

declare i32 @gx_forward_fill_linear_color_scanline(%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32) #1

declare i32 @gx_forward_fill_linear_color_trapezoid(%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*) #1

declare i32 @gx_forward_fill_linear_color_triangle(%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*) #1

declare i32 @gx_forward_update_spot_equivalent_colors(%struct.gx_device_s*, %struct.gs_state_s*) #1

declare %struct.gs_devn_params_s* @gx_forward_ret_devn_params(%struct.gx_device_s*) #1

declare i32 @gx_forward_fillpage(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*) #1

declare i32 @gx_forward_dev_spec_op(%struct.gx_device_s*, i32, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @rop_texture_copy_planes(%struct.gx_device_s* %dev, i8* %data, i32 %sourcex, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, i32 %plane_height) #0 {
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
  %plane_height.addr = alloca i32, align 4
  %rtdev = alloca %struct.gx_device_rop_texture_s*, align 8
  %source = alloca %struct.gx_rop_source_s, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !8
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !8
  store i64 %id, i64* %id.addr, align 8, !tbaa !34
  store i32 %x, i32* %x.addr, align 4, !tbaa !8
  store i32 %y, i32* %y.addr, align 4, !tbaa !8
  store i32 %w, i32* %w.addr, align 4, !tbaa !8
  store i32 %h, i32* %h.addr, align 4, !tbaa !8
  store i32 %plane_height, i32* %plane_height.addr, align 4, !tbaa !8
  %0 = bitcast %struct.gx_device_rop_texture_s** %rtdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_rop_texture_s*
  store %struct.gx_device_rop_texture_s* %2, %struct.gx_device_rop_texture_s** %rtdev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_rop_source_s* %source to i8*
  call void @llvm.lifetime.start(i64 48, i8* %3) #2
  %4 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %sdata = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %source, i32 0, i32 0
  store i8* %4, i8** %sdata, align 8, !tbaa !42
  %5 = load i32, i32* %sourcex.addr, align 4, !tbaa !8
  %sourcex1 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %source, i32 0, i32 1
  store i32 %5, i32* %sourcex1, align 4, !tbaa !44
  %6 = load i32, i32* %raster.addr, align 4, !tbaa !8
  %sraster = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %source, i32 0, i32 2
  store i32 %6, i32* %sraster, align 4, !tbaa !45
  %7 = load i64, i64* %id.addr, align 8, !tbaa !34
  %id2 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %source, i32 0, i32 3
  store i64 %7, i64* %id2, align 8, !tbaa !46
  %scolors = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %source, i32 0, i32 4
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %scolors, i32 0, i64 1
  store i64 -1, i64* %arrayidx, align 8, !tbaa !34
  %scolors3 = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %source, i32 0, i32 4
  %arrayidx4 = getelementptr inbounds [2 x i64], [2 x i64]* %scolors3, i32 0, i64 0
  store i64 -1, i64* %arrayidx4, align 8, !tbaa !34
  %8 = load i32, i32* %plane_height.addr, align 4, !tbaa !8
  %planar_height = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %source, i32 0, i32 5
  store i32 %8, i32* %planar_height, align 4, !tbaa !47
  %use_scolors = getelementptr inbounds %struct.gx_rop_source_s, %struct.gx_rop_source_s* %source, i32 0, i32 6
  store i32 0, i32* %use_scolors, align 4, !tbaa !48
  %9 = load %struct.gx_device_rop_texture_s*, %struct.gx_device_rop_texture_s** %rtdev, align 8, !tbaa !1
  %texture = getelementptr inbounds %struct.gx_device_rop_texture_s, %struct.gx_device_rop_texture_s* %9, i32 0, i32 45
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %texture, i32 0, i32 0
  %10 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !49
  %fill_rectangle = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %10, i32 0, i32 5
  %11 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle, align 8, !tbaa !50
  %12 = load %struct.gx_device_rop_texture_s*, %struct.gx_device_rop_texture_s** %rtdev, align 8, !tbaa !1
  %texture5 = getelementptr inbounds %struct.gx_device_rop_texture_s, %struct.gx_device_rop_texture_s* %12, i32 0, i32 45
  %13 = load i32, i32* %x.addr, align 4, !tbaa !8
  %14 = load i32, i32* %y.addr, align 4, !tbaa !8
  %15 = load i32, i32* %w.addr, align 4, !tbaa !8
  %16 = load i32, i32* %h.addr, align 4, !tbaa !8
  %17 = load %struct.gx_device_rop_texture_s*, %struct.gx_device_rop_texture_s** %rtdev, align 8, !tbaa !1
  %target = getelementptr inbounds %struct.gx_device_rop_texture_s, %struct.gx_device_rop_texture_s* %17, i32 0, i32 43
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !52
  %19 = load %struct.gx_device_rop_texture_s*, %struct.gx_device_rop_texture_s** %rtdev, align 8, !tbaa !1
  %log_op = getelementptr inbounds %struct.gx_device_rop_texture_s, %struct.gx_device_rop_texture_s* %19, i32 0, i32 44
  %20 = load i32, i32* %log_op, align 4, !tbaa !32
  %call = call i32 %11(%struct.gx_device_color_s* %texture5, i32 %13, i32 %14, i32 %15, i32 %16, %struct.gx_device_s* %18, i32 %20, %struct.gx_rop_source_s* %source) #3
  %21 = bitcast %struct.gx_rop_source_s* %source to i8*
  call void @llvm.lifetime.end(i64 48, i8* %21) #2
  %22 = bitcast %struct.gx_device_rop_texture_s** %rtdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #2
  ret i32 %call
}

declare i32 @gx_forward_get_profile(%struct.gx_device_s*, %struct.cmm_dev_profile_s**) #1

declare void @gx_forward_set_graphics_type_tag(%struct.gx_device_s*, i32) #1

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
!5 = !{!6, !2, i64 72}
!6 = !{!"gs_memory_s", !2, i64 0, !7, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!7 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !3, i64 0}
!10 = !{!11, !2, i64 24}
!11 = !{!"gx_device_s", !9, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !9, i64 40, !2, i64 48, !12, i64 56, !9, i64 80, !9, i64 84, !9, i64 88, !14, i64 96, !17, i64 816, !9, i64 832, !9, i64 836, !9, i64 840, !9, i64 844, !9, i64 848, !9, i64 852, !3, i64 856, !3, i64 864, !9, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !13, i64 928, !13, i64 936, !9, i64 944, !9, i64 948, !9, i64 952, !9, i64 956, !9, i64 960, !13, i64 968, !13, i64 976, !18, i64 984, !9, i64 1052, !9, i64 1056, !19, i64 1064, !2, i64 1104, !3, i64 1112, !21, i64 1120, !22, i64 1144}
!12 = !{!"rc_header_s", !13, i64 0, !2, i64 8, !2, i64 16}
!13 = !{!"long", !3, i64 0}
!14 = !{!"gx_device_color_info_s", !9, i64 0, !9, i64 4, !3, i64 8, !15, i64 12, !3, i64 14, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !16, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !13, i64 704, !9, i64 712}
!15 = !{!"short", !3, i64 0}
!16 = !{!"gx_device_anti_alias_info_s", !9, i64 0, !9, i64 4}
!17 = !{!"gx_device_cached_colors_s", !13, i64 0, !13, i64 8}
!18 = !{!"gx_stroked_gradient_recognizer_s", !9, i64 0, !3, i64 4, !3, i64 36}
!19 = !{!"gdev_space_params_s", !13, i64 0, !13, i64 8, !20, i64 16, !9, i64 32, !3, i64 36}
!20 = !{!"gx_band_params_s", !9, i64 0, !9, i64 4, !13, i64 8}
!21 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!22 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!23 = !{!11, !3, i64 1112}
!24 = !{!25, !3, i64 1112}
!25 = !{!"gx_device_rop_texture_s", !9, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !9, i64 40, !2, i64 48, !12, i64 56, !9, i64 80, !9, i64 84, !9, i64 88, !14, i64 96, !17, i64 816, !9, i64 832, !9, i64 836, !9, i64 840, !9, i64 844, !9, i64 848, !9, i64 852, !3, i64 856, !3, i64 864, !9, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !13, i64 928, !13, i64 936, !9, i64 944, !9, i64 948, !9, i64 952, !9, i64 956, !9, i64 960, !13, i64 968, !13, i64 976, !18, i64 984, !9, i64 1052, !9, i64 1056, !19, i64 1064, !2, i64 1104, !3, i64 1112, !21, i64 1120, !22, i64 1144, !2, i64 1728, !9, i64 1736, !26, i64 1744}
!26 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !27, i64 352, !9, i64 360, !28, i64 368, !30, i64 632}
!27 = !{!"gs_int_point_s", !9, i64 0, !9, i64 4}
!28 = !{!"gs_client_color_s", !2, i64 0, !29, i64 8}
!29 = !{!"gs_paint_color_s", !3, i64 0}
!30 = !{!"_mask", !31, i64 0, !13, i64 8, !2, i64 16}
!31 = !{!"mp_", !9, i64 0, !9, i64 4}
!32 = !{!25, !9, i64 1736}
!33 = !{i64 0, i64 8, !1, i64 8, i64 8, !34, i64 8, i64 8, !1, i64 16, i64 16, !35, i64 32, i64 4, !8, i64 36, i64 4, !8, i64 40, i64 8, !1, i64 8, i64 8, !1, i64 16, i64 2, !36, i64 18, i64 64, !35, i64 84, i64 256, !35, i64 340, i64 2, !36, i64 344, i64 8, !34, i64 8, i64 8, !1, i64 8, i64 128, !35, i64 352, i64 4, !8, i64 356, i64 4, !8, i64 360, i64 4, !8, i64 368, i64 8, !1, i64 376, i64 256, !35, i64 632, i64 4, !8, i64 636, i64 4, !8, i64 640, i64 8, !34, i64 648, i64 8, !1}
!34 = !{!13, !13, i64 0}
!35 = !{!3, !3, i64 0}
!36 = !{!15, !15, i64 0}
!37 = !{!38, !2, i64 32}
!38 = !{!"gs_memory_struct_type_s", !9, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!39 = !{!40, !2, i64 0}
!40 = !{!"enum_ptr_s", !2, i64 0, !9, i64 8}
!41 = !{!38, !2, i64 40}
!42 = !{!43, !2, i64 0}
!43 = !{!"gx_rop_source_s", !2, i64 0, !9, i64 8, !9, i64 12, !13, i64 16, !3, i64 24, !9, i64 40, !9, i64 44}
!44 = !{!43, !9, i64 8}
!45 = !{!43, !9, i64 12}
!46 = !{!43, !13, i64 16}
!47 = !{!43, !9, i64 40}
!48 = !{!43, !9, i64 44}
!49 = !{!26, !2, i64 0}
!50 = !{!51, !2, i64 40}
!51 = !{!"gx_device_color_type_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80}
!52 = !{!25, !2, i64 1728}
