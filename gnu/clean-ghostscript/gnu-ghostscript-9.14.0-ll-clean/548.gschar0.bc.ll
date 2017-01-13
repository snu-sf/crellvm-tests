; ModuleID = './gschar0.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_text_enum_s = type { %struct.gs_text_params_s, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_procs_s*, %struct.rc_header_s, i8*, %struct.gs_font_s*, i64, i32, %struct.gs_log2_scale_point_s, %struct.cached_fm_pair_s*, i32, i32, %struct.gx_font_stack_s, i32, i32, i32, %struct.gs_point_s, i64, i32, %struct.gs_log2_scale_point_s, %struct.gs_point_s, %struct.gs_text_returned_s }
%struct.gs_text_params_s = type { i32, %union.sd_, i32, %struct.gs_point_s, %struct.gs_point_s, %union.s_, float*, float*, i32 }
%union.sd_ = type { i8* }
%union.s_ = type { i64 }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
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
%struct.gx_fill_params_s = type opaque
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
%struct.gs_imager_state_s = type opaque
%struct.gx_path_s = type opaque
%struct.gx_device_color_s = type { %struct.gx_device_color_type_s*, %union._c, %struct.gs_int_point_s, i32, %struct.gs_client_color_s, %struct._mask }
%struct.gx_device_color_type_s = type opaque
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type opaque
%struct.gx_clip_path_s = type opaque
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
%struct.gs_text_enum_procs_s = type { i32 (%struct.gs_text_enum_s*, %struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_point_s*)*, i32 (%struct.gs_text_enum_s*, double*, i32)*, i32 (%struct.gs_text_enum_s*)*, void (%struct.gs_text_enum_s*, i8*)* }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.cached_fm_pair_s = type opaque
%struct.gx_font_stack_s = type { i32, [6 x %struct.gx_font_stack_item_s] }
%struct.gx_font_stack_item_s = type { %struct.gs_font_s*, i32 }
%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.gs_point_s = type { double, double }
%struct.gs_text_returned_s = type { i64, i64, %struct.gs_point_s }
%struct.gs_font_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s }
%struct.gs_notify_list_s = type { %struct.gs_memory_s*, %struct.gs_notify_registration_s* }
%struct.gs_notify_registration_s = type { i32 (i8*, i8*)*, i8*, %struct.gs_notify_registration_s* }
%struct.gs_font_procs_s = type { i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*)*, i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*, %struct.gs_matrix_s*, %struct.gs_font_s**)*, i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)*, i32 (%struct.gs_font_s*, %struct.gs_font_s*, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i32 (%struct.gs_font_s*, i32*, i32, i64*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)*, {}*, i32 (%struct.gs_text_enum_s*, i64*, i64*)*, i32 (%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i64, i64)* }
%struct.gs_font_info_s = type { i32, i32, i32, %struct.gs_int_rect_s, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.gs_glyph_info_s = type { i32, [2 x %struct.gs_point_s], %struct.gs_point_s, %struct.gs_rect_s, i32, i64* }
%struct.gs_show_enum_s = type opaque
%struct.gs_font_name_s = type { [48 x i8], i32 }
%struct.gs_font_type0_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_type0_data_s }
%struct.gs_type0_data_s = type { i32, i8, i8, i8, %struct.gs_const_string_s, i32, i32, i32*, i32, %struct.gs_font_s**, i32, %struct.gs_cmap_s* }
%struct.gs_cmap_s = type { i32, i64, %struct.gs_const_string_s, %struct.gs_cid_system_info_s*, i32, float, %struct.gs_uid_s, i64, i32, i32, i32, i32 (%struct.gs_memory_s*, i64, %struct.gs_const_string_s*, i8*)*, i8*, %struct.gs_cmap_procs_s* }
%struct.gs_cid_system_info_s = type { %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }
%struct.gs_uid_s = type { i64, i64* }
%struct.gs_cmap_procs_s = type { i32 (%struct.gs_cmap_s*, %struct.gs_const_string_s*, i32*, i32*, i64*, i64*)*, void (%struct.gs_cmap_s*, %struct.gs_cmap_ranges_enum_s*)*, void (%struct.gs_cmap_s*, i32, %struct.gs_cmap_lookups_enum_s*)*, i32 (%struct.gs_cmap_s*, i32)* }
%struct.gs_cmap_ranges_enum_s = type { %struct.gx_code_space_range_s, %struct.gs_cmap_s*, %struct.gs_cmap_ranges_enum_procs_s*, i32 }
%struct.gx_code_space_range_s = type { [4 x i8], [4 x i8], i32 }
%struct.gs_cmap_ranges_enum_procs_s = type { i32 (%struct.gs_cmap_ranges_enum_s*)* }
%struct.gs_cmap_lookups_enum_s = type { %struct.gx_cmap_lookup_entry_s, %struct.gs_cmap_s*, %struct.gs_cmap_lookups_enum_procs_s*, [2 x i32], [8 x i8] }
%struct.gx_cmap_lookup_entry_s = type { [2 x [4 x i8]], i32, i32, i32, %struct.gs_const_string_s, i32 }
%struct.gs_cmap_lookups_enum_procs_s = type { i32 (%struct.gs_cmap_lookups_enum_s*)*, i32 (%struct.gs_cmap_lookups_enum_s*)* }
%struct.gs_font_base_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32 }
%struct.gs_font_cid0_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, %struct.gs_fapi_server_s*, i8*, i32, i32, %struct.gs_font_cid0_data_s }
%struct.gs_font_cid0_data_s = type { %struct.gs_font_cid_data_s, i64, %struct.gs_font_type1_s**, i32, i32, i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, i32*)*, i8* }
%struct.gs_font_cid_data_s = type { %struct.gs_cid_system_info_s, i32, i32, i32 }
%struct.gs_font_type1_s = type opaque
%struct.gs_glyph_data_s = type { %struct.gs_const_bytestring_s, %struct.gs_glyph_data_procs_s*, i8*, %struct.gs_memory_s* }
%struct.gs_const_bytestring_s = type { i8*, i32, i8* }
%struct.gs_glyph_data_procs_s = type { void (%struct.gs_glyph_data_s*, i8*)*, i32 (%struct.gs_glyph_data_s*, i32, i32)* }

@.str = private unnamed_addr constant [17 x i8] c"./base/gschar0.c\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"[j] original str(\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c") -> modified substr(\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gs_type0_init_fstack(%struct.gs_text_enum_s* %pte, %struct.gs_font_s* %pfont) #0 {
entry:
  %retval = alloca i32, align 4
  %pte.addr = alloca %struct.gs_text_enum_s*, align 8
  %pfont.addr = alloca %struct.gs_font_s*, align 8
  store %struct.gs_text_enum_s* %pte, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  store %struct.gs_font_s* %pfont, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %0 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %0, i32 0, i32 0
  %operation = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 0
  %1 = load i32, i32* %operation, align 4, !tbaa !5
  %and = and i32 %1, 3
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -10, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.body
  %2 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %fstack = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %2, i32 0, i32 19
  %depth = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack, i32 0, i32 0
  store i32 0, i32* %depth, align 4, !tbaa !16
  %3 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont.addr, align 8, !tbaa !1
  %4 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %fstack1 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %4, i32 0, i32 19
  %items = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items, i32 0, i64 0
  %font = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %arrayidx, i32 0, i32 0
  store %struct.gs_font_s* %3, %struct.gs_font_s** %font, align 8, !tbaa !17
  %5 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %fstack2 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %5, i32 0, i32 19
  %items3 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack2, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items3, i32 0, i64 0
  %index = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %arrayidx4, i32 0, i32 1
  store i32 0, i32* %index, align 4, !tbaa !19
  %6 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %call = call i32 @gs_stack_modal_fonts(%struct.gs_text_enum_s* %6) #4
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @gs_stack_modal_fonts(%struct.gs_text_enum_s* %pte) #0 {
entry:
  %retval = alloca i32, align 4
  %pte.addr = alloca %struct.gs_text_enum_s*, align 8
  %fdepth = alloca i32, align 4
  %cfont = alloca %struct.gs_font_s*, align 8
  %cmfont = alloca %struct.gs_font_type0_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_text_enum_s* %pte, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %0 = bitcast i32* %fdepth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %fstack = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %1, i32 0, i32 19
  %depth = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack, i32 0, i32 0
  %2 = load i32, i32* %depth, align 4, !tbaa !16
  store i32 %2, i32* %fdepth, align 4, !tbaa !20
  %3 = bitcast %struct.gs_font_s** %cfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i32, i32* %fdepth, align 4, !tbaa !20
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %fstack1 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %5, i32 0, i32 19
  %items = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items, i32 0, i64 %idxprom
  %font = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %arrayidx, i32 0, i32 0
  %6 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !17
  store %struct.gs_font_s* %6, %struct.gs_font_s** %cfont, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %entry
  %7 = load %struct.gs_font_s*, %struct.gs_font_s** %cfont, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %7, i32 0, i32 11
  %8 = load i32, i32* %FontType, align 4, !tbaa !21
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = bitcast %struct.gs_font_type0_s** %cmfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.gs_font_s*, %struct.gs_font_s** %cfont, align 8, !tbaa !1
  %11 = bitcast %struct.gs_font_s* %10 to %struct.gs_font_type0_s*
  store %struct.gs_font_type0_s* %11, %struct.gs_font_type0_s** %cmfont, align 8, !tbaa !1
  %12 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %cmfont, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %12, i32 0, i32 23
  %FMapType = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data, i32 0, i32 0
  %13 = load i32, i32* %FMapType, align 4, !tbaa !28
  %cmp2 = icmp eq i32 %13, 3
  br i1 %cmp2, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %14 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %cmfont, align 8, !tbaa !1
  %data3 = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %14, i32 0, i32 23
  %FMapType4 = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data3, i32 0, i32 0
  %15 = load i32, i32* %FMapType4, align 4, !tbaa !28
  %cmp5 = icmp eq i32 %15, 7
  br i1 %cmp5, label %if.end, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %16 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %cmfont, align 8, !tbaa !1
  %data7 = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %16, i32 0, i32 23
  %FMapType8 = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data7, i32 0, i32 0
  %17 = load i32, i32* %FMapType8, align 4, !tbaa !28
  %cmp9 = icmp eq i32 %17, 8
  br i1 %cmp9, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.6
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.6, %lor.lhs.false, %while.body
  %18 = load i32, i32* %fdepth, align 4, !tbaa !20
  %cmp10 = icmp eq i32 %18, 5
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.end
  %19 = load i32, i32* %fdepth, align 4, !tbaa !20
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %fdepth, align 4, !tbaa !20
  %20 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %cmfont, align 8, !tbaa !1
  %data13 = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %20, i32 0, i32 23
  %Encoding = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data13, i32 0, i32 7
  %21 = load i32*, i32** %Encoding, align 8, !tbaa !32
  %arrayidx14 = getelementptr inbounds i32, i32* %21, i64 0
  %22 = load i32, i32* %arrayidx14, align 4, !tbaa !20
  %idxprom15 = zext i32 %22 to i64
  %23 = load %struct.gs_font_type0_s*, %struct.gs_font_type0_s** %cmfont, align 8, !tbaa !1
  %data16 = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %23, i32 0, i32 23
  %FDepVector = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data16, i32 0, i32 9
  %24 = load %struct.gs_font_s**, %struct.gs_font_s*** %FDepVector, align 8, !tbaa !33
  %arrayidx17 = getelementptr inbounds %struct.gs_font_s*, %struct.gs_font_s** %24, i64 %idxprom15
  %25 = load %struct.gs_font_s*, %struct.gs_font_s** %arrayidx17, align 8, !tbaa !1
  store %struct.gs_font_s* %25, %struct.gs_font_s** %cfont, align 8, !tbaa !1
  %26 = load %struct.gs_font_s*, %struct.gs_font_s** %cfont, align 8, !tbaa !1
  %27 = load i32, i32* %fdepth, align 4, !tbaa !20
  %idxprom18 = sext i32 %27 to i64
  %28 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %fstack19 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %28, i32 0, i32 19
  %items20 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack19, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items20, i32 0, i64 %idxprom18
  %font22 = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %arrayidx21, i32 0, i32 0
  store %struct.gs_font_s* %26, %struct.gs_font_s** %font22, align 8, !tbaa !17
  %29 = load i32, i32* %fdepth, align 4, !tbaa !20
  %sub = sub nsw i32 %29, 1
  %idxprom23 = sext i32 %sub to i64
  %30 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %fstack24 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %30, i32 0, i32 19
  %items25 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack24, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items25, i32 0, i64 %idxprom23
  %index = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %arrayidx26, i32 0, i32 1
  store i32 0, i32* %index, align 4, !tbaa !19
  br label %do.body

do.body:                                          ; preds = %if.end.12
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.11, %if.then
  %31 = bitcast %struct.gs_font_type0_s** %cmfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.29 [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %cleanup, %while.cond
  %32 = load i32, i32* %fdepth, align 4, !tbaa !20
  %33 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %fstack27 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %33, i32 0, i32 19
  %depth28 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack27, i32 0, i32 0
  store i32 %32, i32* %depth28, align 4, !tbaa !16
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.29

cleanup.29:                                       ; preds = %while.end, %cleanup
  %34 = bitcast %struct.gs_font_s** %cfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = bitcast i32* %fdepth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define i32 @gs_type0_next_char_glyph(%struct.gs_text_enum_s* %pte, i64* %pchr, i64* %pglyph) #0 {
entry:
  %retval = alloca i32, align 4
  %pte.addr = alloca %struct.gs_text_enum_s*, align 8
  %pchr.addr = alloca i64*, align 8
  %pglyph.addr = alloca i64*, align 8
  %str = alloca i8*, align 8
  %p = alloca i8*, align 8
  %end = alloca i8*, align 8
  %fdepth = alloca i32, align 4
  %orig_depth = alloca i32, align 4
  %pfont = alloca %struct.gs_font_s*, align 8
  %pdata = alloca %struct.gs_type0_data_s*, align 8
  %fidx = alloca i32, align 4
  %chr = alloca i64, align 8
  %glyph = alloca i64, align 8
  %changed = alloca i32, align 4
  %idepth = alloca i32, align 4
  %fmt = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %code = alloca i32, align 4
  %width = alloca i32, align 4
  %subs_count = alloca i32, align 4
  %psv = alloca i8*, align 8
  %tchr = alloca i8, align 1
  %schr = alloca i8, align 1
  %tchr383 = alloca i16, align 2
  %schr390 = alloca i16, align 2
  %tchr427 = alloca i64, align 8
  %schr437 = alloca i64, align 8
  %tchr471 = alloca i64, align 8
  %schr484 = alloca i64, align 8
  %cstr = alloca %struct.gs_const_string_s, align 8
  %mindex = alloca i32, align 4
  %code530 = alloca i32, align 4
  %substr = alloca [4 x i8], align 1
  %submindex = alloca i32, align 4
  %pfb = alloca %struct.gs_font_base_s*, align 8
  %code754 = alloca i32, align 4
  %font_index = alloca i32, align 4
  store %struct.gs_text_enum_s* %pte, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  store i64* %pchr, i64** %pchr.addr, align 8, !tbaa !1
  store i64* %pglyph, i64** %pglyph.addr, align 8, !tbaa !1
  %0 = bitcast i8** %str to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %1, i32 0, i32 0
  %data = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 1
  %bytes = bitcast %union.sd_* %data to i8**
  %2 = load i8*, i8** %bytes, align 8, !tbaa !1
  store i8* %2, i8** %str, align 8, !tbaa !1
  %3 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i8*, i8** %str, align 8, !tbaa !1
  %5 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %5, i32 0, i32 17
  %6 = load i32, i32* %index, align 4, !tbaa !34
  %idx.ext = zext i32 %6 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  store i8* %add.ptr, i8** %p, align 8, !tbaa !1
  %7 = bitcast i8** %end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load i8*, i8** %str, align 8, !tbaa !1
  %9 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text1 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %9, i32 0, i32 0
  %size = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text1, i32 0, i32 2
  %10 = load i32, i32* %size, align 4, !tbaa !35
  %idx.ext2 = zext i32 %10 to i64
  %add.ptr3 = getelementptr inbounds i8, i8* %8, i64 %idx.ext2
  store i8* %add.ptr3, i8** %end, align 8, !tbaa !1
  %11 = bitcast i32* %fdepth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %fstack = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %12, i32 0, i32 19
  %depth = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack, i32 0, i32 0
  %13 = load i32, i32* %depth, align 4, !tbaa !16
  store i32 %13, i32* %fdepth, align 4, !tbaa !20
  %14 = bitcast i32* %orig_depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load i32, i32* %fdepth, align 4, !tbaa !20
  store i32 %15, i32* %orig_depth, align 4, !tbaa !20
  %16 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = bitcast %struct.gs_type0_data_s** %pdata to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = bitcast i32* %fidx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast i64* %chr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  store i64 2147483647, i64* %glyph, align 8, !tbaa !36
  %21 = bitcast i32* %changed to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  store i32 0, i32* %changed, align 4, !tbaa !20
  %22 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %FontBBox_as_Metrics2 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %22, i32 0, i32 23
  %y = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %FontBBox_as_Metrics2, i32 0, i32 1
  store double 0.000000e+00, double* %y, align 8, !tbaa !37
  %23 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %FontBBox_as_Metrics24 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %23, i32 0, i32 23
  %x = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %FontBBox_as_Metrics24, i32 0, i32 0
  store double 0.000000e+00, double* %x, align 8, !tbaa !38
  %24 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %index5 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %24, i32 0, i32 17
  %25 = load i32, i32* %index5, align 4, !tbaa !34
  %cmp = icmp eq i32 %25, 0
  br i1 %cmp, label %if.then, label %if.end.137

if.then:                                          ; preds = %entry
  %26 = bitcast i32* %idepth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  store i32 0, i32* %idepth, align 4, !tbaa !20
  %27 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %fstack6 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %27, i32 0, i32 19
  %items = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack6, i32 0, i32 1
  %arrayidx = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items, i32 0, i64 0
  %font = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %arrayidx, i32 0, i32 0
  %28 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !17
  store %struct.gs_font_s* %28, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.then
  %29 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %FontType = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %29, i32 0, i32 11
  %30 = load i32, i32* %FontType, align 4, !tbaa !21
  %cmp7 = icmp eq i32 %30, 0
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = bitcast i32* %fmt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  %32 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %33 = bitcast %struct.gs_font_s* %32 to %struct.gs_font_type0_s*
  %data8 = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %33, i32 0, i32 23
  store %struct.gs_type0_data_s* %data8, %struct.gs_type0_data_s** %pdata, align 8, !tbaa !1
  %FMapType = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data8, i32 0, i32 0
  %34 = load i32, i32* %FMapType, align 4, !tbaa !39
  store i32 %34, i32* %fmt, align 4, !tbaa !40
  %35 = load i8*, i8** %p, align 8, !tbaa !1
  %36 = load i8*, i8** %end, align 8, !tbaa !1
  %cmp9 = icmp eq i8* %35, %36
  br i1 %cmp9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %for.body
  store i32 2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  %37 = load i8*, i8** %p, align 8, !tbaa !1
  %38 = load i8, i8* %37, align 1, !tbaa !40
  %conv = zext i8 %38 to i64
  store i64 %conv, i64* %chr, align 8, !tbaa !36
  %39 = load i32, i32* %fmt, align 4, !tbaa !40
  switch i32 %39, label %sw.default [
    i32 3, label %sw.bb
    i32 7, label %sw.bb.63
    i32 8, label %sw.bb.96
  ]

sw.bb:                                            ; preds = %if.end
  %40 = load i64, i64* %chr, align 8, !tbaa !36
  %41 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %call = call i32 @root_esc_char(%struct.gs_text_enum_s* %41) #4
  %conv11 = zext i32 %call to i64
  %cmp12 = icmp ne i64 %40, %conv11
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %sw.bb
  br label %sw.epilog

if.end.15:                                        ; preds = %sw.bb
  %42 = load i8*, i8** %end, align 8, !tbaa !1
  %43 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %42 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %43 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp16 = icmp slt i64 %sub.ptr.sub, 2
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.15
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.end.15
  %44 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds i8, i8* %44, i64 1
  %45 = load i8, i8* %arrayidx20, align 1, !tbaa !40
  %conv21 = zext i8 %45 to i32
  store i32 %conv21, i32* %fidx, align 4, !tbaa !20
  %46 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr22 = getelementptr inbounds i8, i8* %46, i64 2
  store i8* %add.ptr22, i8** %p, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %if.end.19
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %rdown

rdown:                                            ; preds = %do.end.112, %do.end.95, %do.end
  %47 = load i32, i32* %fidx, align 4, !tbaa !20
  %48 = load %struct.gs_type0_data_s*, %struct.gs_type0_data_s** %pdata, align 8, !tbaa !1
  %encoding_size = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %48, i32 0, i32 8
  %49 = load i32, i32* %encoding_size, align 4, !tbaa !41
  %cmp23 = icmp uge i32 %47, %49
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %rdown
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %rdown
  %50 = load i32, i32* %idepth, align 4, !tbaa !20
  %cmp27 = icmp eq i32 %50, 5
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.26
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %if.end.26
  %51 = load i32, i32* %fidx, align 4, !tbaa !20
  %idxprom = zext i32 %51 to i64
  %52 = load %struct.gs_type0_data_s*, %struct.gs_type0_data_s** %pdata, align 8, !tbaa !1
  %Encoding = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %52, i32 0, i32 7
  %53 = load i32*, i32** %Encoding, align 8, !tbaa !42
  %arrayidx31 = getelementptr inbounds i32, i32* %53, i64 %idxprom
  %54 = load i32, i32* %arrayidx31, align 4, !tbaa !20
  %idxprom32 = zext i32 %54 to i64
  %55 = load %struct.gs_type0_data_s*, %struct.gs_type0_data_s** %pdata, align 8, !tbaa !1
  %FDepVector = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %55, i32 0, i32 9
  %56 = load %struct.gs_font_s**, %struct.gs_font_s*** %FDepVector, align 8, !tbaa !43
  %arrayidx33 = getelementptr inbounds %struct.gs_font_s*, %struct.gs_font_s** %56, i64 %idxprom32
  %57 = load %struct.gs_font_s*, %struct.gs_font_s** %arrayidx33, align 8, !tbaa !1
  store %struct.gs_font_s* %57, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %58 = load i32, i32* %fidx, align 4, !tbaa !20
  %59 = load i32, i32* %idepth, align 4, !tbaa !20
  %idxprom34 = sext i32 %59 to i64
  %60 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %fstack35 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %60, i32 0, i32 19
  %items36 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack35, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items36, i32 0, i64 %idxprom34
  %index38 = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %arrayidx37, i32 0, i32 1
  store i32 %58, i32* %index38, align 4, !tbaa !19
  %61 = load i32, i32* %idepth, align 4, !tbaa !20
  %inc = add nsw i32 %61, 1
  store i32 %inc, i32* %idepth, align 4, !tbaa !20
  %62 = load i32, i32* %orig_depth, align 4, !tbaa !20
  %cmp39 = icmp sgt i32 %inc, %62
  br i1 %cmp39, label %if.then.48, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.30
  %63 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %64 = load i32, i32* %idepth, align 4, !tbaa !20
  %idxprom41 = sext i32 %64 to i64
  %65 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %fstack42 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %65, i32 0, i32 19
  %items43 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack42, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items43, i32 0, i64 %idxprom41
  %font45 = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %arrayidx44, i32 0, i32 0
  %66 = load %struct.gs_font_s*, %struct.gs_font_s** %font45, align 8, !tbaa !17
  %cmp46 = icmp ne %struct.gs_font_s* %63, %66
  br i1 %cmp46, label %if.then.48, label %if.else

if.then.48:                                       ; preds = %lor.lhs.false, %if.end.30
  %67 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %68 = load i32, i32* %idepth, align 4, !tbaa !20
  %idxprom49 = sext i32 %68 to i64
  %69 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %fstack50 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %69, i32 0, i32 19
  %items51 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack50, i32 0, i32 1
  %arrayidx52 = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items51, i32 0, i64 %idxprom49
  %font53 = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %arrayidx52, i32 0, i32 0
  store %struct.gs_font_s* %67, %struct.gs_font_s** %font53, align 8, !tbaa !17
  %70 = load i32, i32* %idepth, align 4, !tbaa !20
  %idxprom54 = sext i32 %70 to i64
  %71 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %fstack55 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %71, i32 0, i32 19
  %items56 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack55, i32 0, i32 1
  %arrayidx57 = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items56, i32 0, i64 %idxprom54
  %index58 = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %arrayidx57, i32 0, i32 1
  store i32 0, i32* %index58, align 4, !tbaa !19
  store i32 1, i32* %changed, align 4, !tbaa !20
  br label %if.end.59

if.else:                                          ; preds = %lor.lhs.false
  br label %if.end.59

if.end.59:                                        ; preds = %if.else, %if.then.48
  br label %do.body.60

do.body.60:                                       ; preds = %if.end.59
  br label %do.cond.61

do.cond.61:                                       ; preds = %do.body.60
  br label %do.end.62

do.end.62:                                        ; preds = %do.cond.61
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb.63:                                         ; preds = %if.end
  %72 = load i64, i64* %chr, align 8, !tbaa !36
  %73 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %call64 = call i32 @root_esc_char(%struct.gs_text_enum_s* %73) #4
  %conv65 = zext i32 %call64 to i64
  %cmp66 = icmp ne i64 %72, %conv65
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %sw.bb.63
  br label %sw.epilog

if.end.69:                                        ; preds = %sw.bb.63
  %74 = load i8*, i8** %end, align 8, !tbaa !1
  %75 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast70 = ptrtoint i8* %74 to i64
  %sub.ptr.rhs.cast71 = ptrtoint i8* %75 to i64
  %sub.ptr.sub72 = sub i64 %sub.ptr.lhs.cast70, %sub.ptr.rhs.cast71
  %cmp73 = icmp slt i64 %sub.ptr.sub72, 2
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.end.69
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.76:                                        ; preds = %if.end.69
  %76 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx77 = getelementptr inbounds i8, i8* %76, i64 1
  %77 = load i8, i8* %arrayidx77, align 1, !tbaa !40
  %conv78 = zext i8 %77 to i32
  store i32 %conv78, i32* %fidx, align 4, !tbaa !20
  %78 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr79 = getelementptr inbounds i8, i8* %78, i64 2
  store i8* %add.ptr79, i8** %p, align 8, !tbaa !1
  %79 = load i32, i32* %fidx, align 4, !tbaa !20
  %conv80 = zext i32 %79 to i64
  %80 = load i64, i64* %chr, align 8, !tbaa !36
  %cmp81 = icmp eq i64 %conv80, %80
  br i1 %cmp81, label %if.then.83, label %if.end.92

if.then.83:                                       ; preds = %if.end.76
  %81 = load i8*, i8** %end, align 8, !tbaa !1
  %82 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast84 = ptrtoint i8* %81 to i64
  %sub.ptr.rhs.cast85 = ptrtoint i8* %82 to i64
  %sub.ptr.sub86 = sub i64 %sub.ptr.lhs.cast84, %sub.ptr.rhs.cast85
  %cmp87 = icmp slt i64 %sub.ptr.sub86, 1
  br i1 %cmp87, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %if.then.83
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.90:                                        ; preds = %if.then.83
  %83 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  %84 = load i8, i8* %83, align 1, !tbaa !40
  %conv91 = zext i8 %84 to i32
  %add = add nsw i32 %conv91, 256
  store i32 %add, i32* %fidx, align 4, !tbaa !20
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.90, %if.end.76
  br label %do.body.93

do.body.93:                                       ; preds = %if.end.92
  br label %do.cond.94

do.cond.94:                                       ; preds = %do.body.93
  br label %do.end.95

do.end.95:                                        ; preds = %do.cond.94
  br label %rdown

sw.bb.96:                                         ; preds = %if.end
  %85 = load i64, i64* %chr, align 8, !tbaa !36
  %86 = load %struct.gs_type0_data_s*, %struct.gs_type0_data_s** %pdata, align 8, !tbaa !1
  %ShiftIn = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %86, i32 0, i32 2
  %87 = load i8, i8* %ShiftIn, align 1, !tbaa !44
  %conv97 = zext i8 %87 to i64
  %cmp98 = icmp eq i64 %85, %conv97
  br i1 %cmp98, label %if.then.100, label %if.else.101

if.then.100:                                      ; preds = %sw.bb.96
  store i32 0, i32* %fidx, align 4, !tbaa !20
  br label %if.end.108

if.else.101:                                      ; preds = %sw.bb.96
  %88 = load i64, i64* %chr, align 8, !tbaa !36
  %89 = load %struct.gs_type0_data_s*, %struct.gs_type0_data_s** %pdata, align 8, !tbaa !1
  %ShiftOut = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %89, i32 0, i32 3
  %90 = load i8, i8* %ShiftOut, align 1, !tbaa !45
  %conv102 = zext i8 %90 to i64
  %cmp103 = icmp eq i64 %88, %conv102
  br i1 %cmp103, label %if.then.105, label %if.else.106

if.then.105:                                      ; preds = %if.else.101
  store i32 1, i32* %fidx, align 4, !tbaa !20
  br label %if.end.107

if.else.106:                                      ; preds = %if.else.101
  br label %sw.epilog

if.end.107:                                       ; preds = %if.then.105
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %if.then.100
  %91 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr109 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %incdec.ptr109, i8** %p, align 8, !tbaa !1
  br label %do.body.110

do.body.110:                                      ; preds = %if.end.108
  br label %do.cond.111

do.cond.111:                                      ; preds = %do.body.110
  br label %do.end.112

do.end.112:                                       ; preds = %do.cond.111
  br label %rdown

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.else.106, %if.then.68, %if.then.14
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then.89, %if.then.75, %do.end.62, %if.then.29, %if.then.25, %if.then.18, %if.then.10
  %92 = bitcast i32* %fmt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.134 [
    i32 3, label %for.cond
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup, %for.cond
  %93 = load i32, i32* %idepth, align 4, !tbaa !20
  %cmp113 = icmp ne i32 %93, 0
  br i1 %cmp113, label %if.then.115, label %if.end.133

if.then.115:                                      ; preds = %for.end
  %94 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %94) #1
  %95 = load i32, i32* %idepth, align 4, !tbaa !20
  %96 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %fstack116 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %96, i32 0, i32 19
  %depth117 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack116, i32 0, i32 0
  store i32 %95, i32* %depth117, align 4, !tbaa !16
  %97 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %call118 = call i32 @gs_stack_modal_fonts(%struct.gs_text_enum_s* %97) #4
  store i32 %call118, i32* %code, align 4, !tbaa !20
  %98 = load i32, i32* %code, align 4, !tbaa !20
  %cmp119 = icmp slt i32 %98, 0
  br i1 %cmp119, label %if.then.121, label %if.end.122

if.then.121:                                      ; preds = %if.then.115
  %99 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %99, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.131

if.end.122:                                       ; preds = %if.then.115
  %100 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %fstack123 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %100, i32 0, i32 19
  %depth124 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack123, i32 0, i32 0
  %101 = load i32, i32* %depth124, align 4, !tbaa !16
  %102 = load i32, i32* %idepth, align 4, !tbaa !20
  %cmp125 = icmp sgt i32 %101, %102
  br i1 %cmp125, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %if.end.122
  store i32 1, i32* %changed, align 4, !tbaa !20
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.127, %if.end.122
  %103 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %fstack129 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %103, i32 0, i32 19
  %depth130 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack129, i32 0, i32 0
  %104 = load i32, i32* %depth130, align 4, !tbaa !16
  store i32 %104, i32* %fdepth, align 4, !tbaa !20
  store i32 %104, i32* %orig_depth, align 4, !tbaa !20
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.131

cleanup.131:                                      ; preds = %if.end.128, %if.then.121
  %105 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #1
  %cleanup.dest.132 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.132, label %cleanup.134 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup.131
  br label %if.end.133

if.end.133:                                       ; preds = %cleanup.cont, %for.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.134

cleanup.134:                                      ; preds = %if.end.133, %cleanup.131, %cleanup
  %106 = bitcast i32* %idepth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #1
  %cleanup.dest.135 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.135, label %cleanup.810 [
    i32 0, label %cleanup.cont.136
  ]

cleanup.cont.136:                                 ; preds = %cleanup.134
  br label %if.end.137

if.end.137:                                       ; preds = %cleanup.cont.136, %entry
  br label %up

up:                                               ; preds = %if.then.177, %if.end.137
  %107 = load i8*, i8** %p, align 8, !tbaa !1
  %108 = load i8*, i8** %end, align 8, !tbaa !1
  %cmp138 = icmp eq i8* %107, %108
  br i1 %cmp138, label %if.then.140, label %if.end.141

if.then.140:                                      ; preds = %up
  store i32 2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.810

if.end.141:                                       ; preds = %up
  %109 = load i8*, i8** %p, align 8, !tbaa !1
  %110 = load i8, i8* %109, align 1, !tbaa !40
  %conv142 = zext i8 %110 to i64
  store i64 %conv142, i64* %chr, align 8, !tbaa !36
  br label %while.cond

while.cond:                                       ; preds = %do.end.245, %sw.default.152, %if.end.141
  %111 = load i32, i32* %fdepth, align 4, !tbaa !20
  %cmp143 = icmp sgt i32 %111, 0
  br i1 %cmp143, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %112 = load i32, i32* %fdepth, align 4, !tbaa !20
  %sub = sub nsw i32 %112, 1
  %idxprom145 = sext i32 %sub to i64
  %113 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %fstack146 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %113, i32 0, i32 19
  %items147 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack146, i32 0, i32 1
  %arrayidx148 = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items147, i32 0, i64 %idxprom145
  %font149 = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %arrayidx148, i32 0, i32 0
  %114 = load %struct.gs_font_s*, %struct.gs_font_s** %font149, align 8, !tbaa !17
  store %struct.gs_font_s* %114, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %115 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %116 = bitcast %struct.gs_font_s* %115 to %struct.gs_font_type0_s*
  %data150 = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %116, i32 0, i32 23
  store %struct.gs_type0_data_s* %data150, %struct.gs_type0_data_s** %pdata, align 8, !tbaa !1
  %117 = load %struct.gs_type0_data_s*, %struct.gs_type0_data_s** %pdata, align 8, !tbaa !1
  %FMapType151 = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %117, i32 0, i32 0
  %118 = load i32, i32* %FMapType151, align 4, !tbaa !39
  switch i32 %118, label %sw.default.152 [
    i32 3, label %sw.bb.153
    i32 7, label %sw.bb.246
    i32 8, label %sw.bb.280
  ]

sw.default.152:                                   ; preds = %while.body
  %119 = load i32, i32* %fdepth, align 4, !tbaa !20
  %dec = add nsw i32 %119, -1
  store i32 %dec, i32* %fdepth, align 4, !tbaa !20
  br label %while.cond

sw.bb.153:                                        ; preds = %while.body
  %120 = load i64, i64* %chr, align 8, !tbaa !36
  %121 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %call154 = call i32 @root_esc_char(%struct.gs_text_enum_s* %121) #4
  %conv155 = zext i32 %call154 to i64
  %cmp156 = icmp ne i64 %120, %conv155
  br i1 %cmp156, label %if.then.158, label %if.end.159

if.then.158:                                      ; preds = %sw.bb.153
  br label %sw.epilog.298

if.end.159:                                       ; preds = %sw.bb.153
  %122 = load i8*, i8** %end, align 8, !tbaa !1
  %123 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast160 = ptrtoint i8* %122 to i64
  %sub.ptr.rhs.cast161 = ptrtoint i8* %123 to i64
  %sub.ptr.sub162 = sub i64 %sub.ptr.lhs.cast160, %sub.ptr.rhs.cast161
  %cmp163 = icmp slt i64 %sub.ptr.sub162, 2
  br i1 %cmp163, label %if.then.165, label %if.end.166

if.then.165:                                      ; preds = %if.end.159
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.810

if.end.166:                                       ; preds = %if.end.159
  %124 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr167 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %incdec.ptr167, i8** %p, align 8, !tbaa !1
  %125 = load i8, i8* %incdec.ptr167, align 1, !tbaa !40
  %conv168 = zext i8 %125 to i32
  store i32 %conv168, i32* %fidx, align 4, !tbaa !20
  br label %do.body.169

do.body.169:                                      ; preds = %if.end.166
  br label %do.cond.170

do.cond.170:                                      ; preds = %do.body.169
  br label %do.end.171

do.end.171:                                       ; preds = %do.cond.170
  %126 = load i32, i32* %fidx, align 4, !tbaa !20
  %conv172 = zext i32 %126 to i64
  %127 = load i64, i64* %chr, align 8, !tbaa !36
  %cmp173 = icmp eq i64 %conv172, %127
  br i1 %cmp173, label %land.lhs.true, label %if.end.179

land.lhs.true:                                    ; preds = %do.end.171
  %128 = load i32, i32* %fdepth, align 4, !tbaa !20
  %cmp175 = icmp sgt i32 %128, 1
  br i1 %cmp175, label %if.then.177, label %if.end.179

if.then.177:                                      ; preds = %land.lhs.true
  %129 = load i32, i32* %fdepth, align 4, !tbaa !20
  %dec178 = add nsw i32 %129, -1
  store i32 %dec178, i32* %fdepth, align 4, !tbaa !20
  br label %up

if.end.179:                                       ; preds = %land.lhs.true, %do.end.171
  br label %down

down:                                             ; preds = %do.end.297, %do.end.279, %if.end.179
  %130 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr180 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %incdec.ptr180, i8** %p, align 8, !tbaa !1
  %131 = load i8*, i8** %end, align 8, !tbaa !1
  %cmp181 = icmp eq i8* %incdec.ptr180, %131
  br i1 %cmp181, label %if.then.183, label %if.end.184

if.then.183:                                      ; preds = %down
  store i32 2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.810

if.end.184:                                       ; preds = %down
  %132 = load i8*, i8** %p, align 8, !tbaa !1
  %133 = load i8, i8* %132, align 1, !tbaa !40
  %conv185 = zext i8 %133 to i64
  store i64 %conv185, i64* %chr, align 8, !tbaa !36
  %134 = load i32, i32* %fdepth, align 4, !tbaa !20
  %dec186 = add nsw i32 %134, -1
  store i32 %dec186, i32* %fdepth, align 4, !tbaa !20
  br label %do.body.187

do.body.187:                                      ; preds = %do.cond.241, %if.end.184
  %135 = load i32, i32* %fidx, align 4, !tbaa !20
  %136 = load %struct.gs_type0_data_s*, %struct.gs_type0_data_s** %pdata, align 8, !tbaa !1
  %encoding_size188 = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %136, i32 0, i32 8
  %137 = load i32, i32* %encoding_size188, align 4, !tbaa !41
  %cmp189 = icmp uge i32 %135, %137
  br i1 %cmp189, label %if.then.191, label %if.end.192

if.then.191:                                      ; preds = %do.body.187
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.810

if.end.192:                                       ; preds = %do.body.187
  %138 = load i32, i32* %fdepth, align 4, !tbaa !20
  %cmp193 = icmp eq i32 %138, 5
  br i1 %cmp193, label %if.then.195, label %if.end.196

if.then.195:                                      ; preds = %if.end.192
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.810

if.end.196:                                       ; preds = %if.end.192
  %139 = load i32, i32* %fidx, align 4, !tbaa !20
  %idxprom197 = zext i32 %139 to i64
  %140 = load %struct.gs_type0_data_s*, %struct.gs_type0_data_s** %pdata, align 8, !tbaa !1
  %Encoding198 = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %140, i32 0, i32 7
  %141 = load i32*, i32** %Encoding198, align 8, !tbaa !42
  %arrayidx199 = getelementptr inbounds i32, i32* %141, i64 %idxprom197
  %142 = load i32, i32* %arrayidx199, align 4, !tbaa !20
  %idxprom200 = zext i32 %142 to i64
  %143 = load %struct.gs_type0_data_s*, %struct.gs_type0_data_s** %pdata, align 8, !tbaa !1
  %FDepVector201 = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %143, i32 0, i32 9
  %144 = load %struct.gs_font_s**, %struct.gs_font_s*** %FDepVector201, align 8, !tbaa !43
  %arrayidx202 = getelementptr inbounds %struct.gs_font_s*, %struct.gs_font_s** %144, i64 %idxprom200
  %145 = load %struct.gs_font_s*, %struct.gs_font_s** %arrayidx202, align 8, !tbaa !1
  store %struct.gs_font_s* %145, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %146 = load i32, i32* %fidx, align 4, !tbaa !20
  %147 = load i32, i32* %fdepth, align 4, !tbaa !20
  %idxprom203 = sext i32 %147 to i64
  %148 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %fstack204 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %148, i32 0, i32 19
  %items205 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack204, i32 0, i32 1
  %arrayidx206 = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items205, i32 0, i64 %idxprom203
  %index207 = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %arrayidx206, i32 0, i32 1
  store i32 %146, i32* %index207, align 4, !tbaa !19
  %149 = load i32, i32* %fdepth, align 4, !tbaa !20
  %inc208 = add nsw i32 %149, 1
  store i32 %inc208, i32* %fdepth, align 4, !tbaa !20
  %150 = load i32, i32* %orig_depth, align 4, !tbaa !20
  %cmp209 = icmp sgt i32 %inc208, %150
  br i1 %cmp209, label %if.then.219, label %lor.lhs.false.211

lor.lhs.false.211:                                ; preds = %if.end.196
  %151 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %152 = load i32, i32* %fdepth, align 4, !tbaa !20
  %idxprom212 = sext i32 %152 to i64
  %153 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %fstack213 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %153, i32 0, i32 19
  %items214 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack213, i32 0, i32 1
  %arrayidx215 = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items214, i32 0, i64 %idxprom212
  %font216 = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %arrayidx215, i32 0, i32 0
  %154 = load %struct.gs_font_s*, %struct.gs_font_s** %font216, align 8, !tbaa !17
  %cmp217 = icmp ne %struct.gs_font_s* %151, %154
  br i1 %cmp217, label %if.then.219, label %if.else.230

if.then.219:                                      ; preds = %lor.lhs.false.211, %if.end.196
  %155 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %156 = load i32, i32* %fdepth, align 4, !tbaa !20
  %idxprom220 = sext i32 %156 to i64
  %157 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %fstack221 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %157, i32 0, i32 19
  %items222 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack221, i32 0, i32 1
  %arrayidx223 = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items222, i32 0, i64 %idxprom220
  %font224 = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %arrayidx223, i32 0, i32 0
  store %struct.gs_font_s* %155, %struct.gs_font_s** %font224, align 8, !tbaa !17
  %158 = load i32, i32* %fdepth, align 4, !tbaa !20
  %idxprom225 = sext i32 %158 to i64
  %159 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %fstack226 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %159, i32 0, i32 19
  %items227 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack226, i32 0, i32 1
  %arrayidx228 = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items227, i32 0, i64 %idxprom225
  %index229 = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %arrayidx228, i32 0, i32 1
  store i32 0, i32* %index229, align 4, !tbaa !19
  store i32 1, i32* %changed, align 4, !tbaa !20
  br label %if.end.231

if.else.230:                                      ; preds = %lor.lhs.false.211
  br label %if.end.231

if.end.231:                                       ; preds = %if.else.230, %if.then.219
  br label %do.body.232

do.body.232:                                      ; preds = %if.end.231
  br label %do.cond.233

do.cond.233:                                      ; preds = %do.body.232
  br label %do.end.234

do.end.234:                                       ; preds = %do.cond.233
  %160 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %FontType235 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %160, i32 0, i32 11
  %161 = load i32, i32* %FontType235, align 4, !tbaa !21
  %cmp236 = icmp ne i32 %161, 0
  br i1 %cmp236, label %if.then.238, label %if.end.239

if.then.238:                                      ; preds = %do.end.234
  br label %do.end.245

if.end.239:                                       ; preds = %do.end.234
  %162 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %163 = bitcast %struct.gs_font_s* %162 to %struct.gs_font_type0_s*
  %data240 = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %163, i32 0, i32 23
  store %struct.gs_type0_data_s* %data240, %struct.gs_type0_data_s** %pdata, align 8, !tbaa !1
  store i32 0, i32* %fidx, align 4, !tbaa !20
  br label %do.cond.241

do.cond.241:                                      ; preds = %if.end.239
  %164 = load %struct.gs_type0_data_s*, %struct.gs_type0_data_s** %pdata, align 8, !tbaa !1
  %FMapType242 = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %164, i32 0, i32 0
  %165 = load i32, i32* %FMapType242, align 4, !tbaa !39
  %cmp243 = icmp eq i32 %165, 3
  br i1 %cmp243, label %do.body.187, label %do.end.245

do.end.245:                                       ; preds = %do.cond.241, %if.then.238
  br label %while.cond

sw.bb.246:                                        ; preds = %while.body
  %166 = load i64, i64* %chr, align 8, !tbaa !36
  %167 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %call247 = call i32 @root_esc_char(%struct.gs_text_enum_s* %167) #4
  %conv248 = zext i32 %call247 to i64
  %cmp249 = icmp ne i64 %166, %conv248
  br i1 %cmp249, label %if.then.251, label %if.end.252

if.then.251:                                      ; preds = %sw.bb.246
  br label %sw.epilog.298

if.end.252:                                       ; preds = %sw.bb.246
  %168 = load i8*, i8** %end, align 8, !tbaa !1
  %169 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast253 = ptrtoint i8* %168 to i64
  %sub.ptr.rhs.cast254 = ptrtoint i8* %169 to i64
  %sub.ptr.sub255 = sub i64 %sub.ptr.lhs.cast253, %sub.ptr.rhs.cast254
  %cmp256 = icmp slt i64 %sub.ptr.sub255, 2
  br i1 %cmp256, label %if.then.258, label %if.end.259

if.then.258:                                      ; preds = %if.end.252
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.810

if.end.259:                                       ; preds = %if.end.252
  %170 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr260 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %incdec.ptr260, i8** %p, align 8, !tbaa !1
  %171 = load i8, i8* %incdec.ptr260, align 1, !tbaa !40
  %conv261 = zext i8 %171 to i32
  store i32 %conv261, i32* %fidx, align 4, !tbaa !20
  %172 = load i32, i32* %fidx, align 4, !tbaa !20
  %conv262 = zext i32 %172 to i64
  %173 = load i64, i64* %chr, align 8, !tbaa !36
  %cmp263 = icmp eq i64 %conv262, %173
  br i1 %cmp263, label %if.then.265, label %if.end.276

if.then.265:                                      ; preds = %if.end.259
  %174 = load i8*, i8** %end, align 8, !tbaa !1
  %175 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast266 = ptrtoint i8* %174 to i64
  %sub.ptr.rhs.cast267 = ptrtoint i8* %175 to i64
  %sub.ptr.sub268 = sub i64 %sub.ptr.lhs.cast266, %sub.ptr.rhs.cast267
  %cmp269 = icmp slt i64 %sub.ptr.sub268, 2
  br i1 %cmp269, label %if.then.271, label %if.end.272

if.then.271:                                      ; preds = %if.then.265
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.810

if.end.272:                                       ; preds = %if.then.265
  %176 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr273 = getelementptr inbounds i8, i8* %176, i32 1
  store i8* %incdec.ptr273, i8** %p, align 8, !tbaa !1
  %177 = load i8, i8* %incdec.ptr273, align 1, !tbaa !40
  %conv274 = zext i8 %177 to i32
  %add275 = add nsw i32 %conv274, 256
  store i32 %add275, i32* %fidx, align 4, !tbaa !20
  br label %if.end.276

if.end.276:                                       ; preds = %if.end.272, %if.end.259
  br label %do.body.277

do.body.277:                                      ; preds = %if.end.276
  br label %do.cond.278

do.cond.278:                                      ; preds = %do.body.277
  br label %do.end.279

do.end.279:                                       ; preds = %do.cond.278
  br label %down

sw.bb.280:                                        ; preds = %while.body
  %178 = load i64, i64* %chr, align 8, !tbaa !36
  %179 = load %struct.gs_type0_data_s*, %struct.gs_type0_data_s** %pdata, align 8, !tbaa !1
  %ShiftIn281 = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %179, i32 0, i32 2
  %180 = load i8, i8* %ShiftIn281, align 1, !tbaa !44
  %conv282 = zext i8 %180 to i64
  %cmp283 = icmp eq i64 %178, %conv282
  br i1 %cmp283, label %if.then.285, label %if.else.286

if.then.285:                                      ; preds = %sw.bb.280
  store i32 0, i32* %fidx, align 4, !tbaa !20
  br label %if.end.294

if.else.286:                                      ; preds = %sw.bb.280
  %181 = load i64, i64* %chr, align 8, !tbaa !36
  %182 = load %struct.gs_type0_data_s*, %struct.gs_type0_data_s** %pdata, align 8, !tbaa !1
  %ShiftOut287 = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %182, i32 0, i32 3
  %183 = load i8, i8* %ShiftOut287, align 1, !tbaa !45
  %conv288 = zext i8 %183 to i64
  %cmp289 = icmp eq i64 %181, %conv288
  br i1 %cmp289, label %if.then.291, label %if.else.292

if.then.291:                                      ; preds = %if.else.286
  store i32 1, i32* %fidx, align 4, !tbaa !20
  br label %if.end.293

if.else.292:                                      ; preds = %if.else.286
  br label %sw.epilog.298

if.end.293:                                       ; preds = %if.then.291
  br label %if.end.294

if.end.294:                                       ; preds = %if.end.293, %if.then.285
  br label %do.body.295

do.body.295:                                      ; preds = %if.end.294
  br label %do.cond.296

do.cond.296:                                      ; preds = %do.body.295
  br label %do.end.297

do.end.297:                                       ; preds = %do.cond.296
  br label %down

sw.epilog.298:                                    ; preds = %if.else.292, %if.then.251, %if.then.158
  br label %while.end

while.end:                                        ; preds = %sw.epilog.298, %while.cond
  %184 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr299 = getelementptr inbounds i8, i8* %184, i32 1
  store i8* %incdec.ptr299, i8** %p, align 8, !tbaa !1
  br label %while.cond.300

while.cond.300:                                   ; preds = %do.end.718, %while.end
  %185 = load i32, i32* %fdepth, align 4, !tbaa !20
  %idxprom301 = sext i32 %185 to i64
  %186 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %fstack302 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %186, i32 0, i32 19
  %items303 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack302, i32 0, i32 1
  %arrayidx304 = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items303, i32 0, i64 %idxprom301
  %font305 = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %arrayidx304, i32 0, i32 0
  %187 = load %struct.gs_font_s*, %struct.gs_font_s** %font305, align 8, !tbaa !17
  store %struct.gs_font_s* %187, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %FontType306 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %187, i32 0, i32 11
  %188 = load i32, i32* %FontType306, align 4, !tbaa !21
  %cmp307 = icmp eq i32 %188, 0
  br i1 %cmp307, label %while.body.309, label %while.end.719

while.body.309:                                   ; preds = %while.cond.300
  %189 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %190 = bitcast %struct.gs_font_s* %189 to %struct.gs_font_type0_s*
  %data310 = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %190, i32 0, i32 23
  store %struct.gs_type0_data_s* %data310, %struct.gs_type0_data_s** %pdata, align 8, !tbaa !1
  %191 = load %struct.gs_type0_data_s*, %struct.gs_type0_data_s** %pdata, align 8, !tbaa !1
  %FMapType311 = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %191, i32 0, i32 0
  %192 = load i32, i32* %FMapType311, align 4, !tbaa !39
  switch i32 %192, label %sw.default.312 [
    i32 2, label %sw.bb.313
    i32 4, label %sw.bb.327
    i32 5, label %sw.bb.332
    i32 6, label %sw.bb.351
    i32 9, label %sw.bb.524
  ]

sw.default.312:                                   ; preds = %while.body.309
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.810

sw.bb.313:                                        ; preds = %while.body.309
  %193 = load i8*, i8** %end, align 8, !tbaa !1
  %194 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast314 = ptrtoint i8* %193 to i64
  %sub.ptr.rhs.cast315 = ptrtoint i8* %194 to i64
  %sub.ptr.sub316 = sub i64 %sub.ptr.lhs.cast314, %sub.ptr.rhs.cast315
  %cmp317 = icmp slt i64 %sub.ptr.sub316, 1
  br i1 %cmp317, label %if.then.319, label %if.end.320

if.then.319:                                      ; preds = %sw.bb.313
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.810

if.end.320:                                       ; preds = %sw.bb.313
  %195 = load i64, i64* %chr, align 8, !tbaa !36
  %conv321 = trunc i64 %195 to i32
  store i32 %conv321, i32* %fidx, align 4, !tbaa !20
  %196 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr322 = getelementptr inbounds i8, i8* %196, i32 1
  store i8* %incdec.ptr322, i8** %p, align 8, !tbaa !1
  %197 = load i8, i8* %196, align 1, !tbaa !40
  %conv323 = zext i8 %197 to i64
  store i64 %conv323, i64* %chr, align 8, !tbaa !36
  br label %do.body.324

do.body.324:                                      ; preds = %if.end.320
  br label %do.cond.325

do.cond.325:                                      ; preds = %do.body.324
  br label %do.end.326

do.end.326:                                       ; preds = %do.cond.325
  br label %sw.epilog.671

sw.bb.327:                                        ; preds = %while.body.309
  %198 = load i64, i64* %chr, align 8, !tbaa !36
  %shr = lshr i64 %198, 7
  %conv328 = trunc i64 %shr to i32
  store i32 %conv328, i32* %fidx, align 4, !tbaa !20
  %199 = load i64, i64* %chr, align 8, !tbaa !36
  %and = and i64 %199, 127
  store i64 %and, i64* %chr, align 8, !tbaa !36
  br label %do.body.329

do.body.329:                                      ; preds = %sw.bb.327
  br label %do.cond.330

do.cond.330:                                      ; preds = %do.body.329
  br label %do.end.331

do.end.331:                                       ; preds = %do.cond.330
  br label %sw.epilog.671

sw.bb.332:                                        ; preds = %while.body.309
  %200 = load i8*, i8** %end, align 8, !tbaa !1
  %201 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast333 = ptrtoint i8* %200 to i64
  %sub.ptr.rhs.cast334 = ptrtoint i8* %201 to i64
  %sub.ptr.sub335 = sub i64 %sub.ptr.lhs.cast333, %sub.ptr.rhs.cast334
  %cmp336 = icmp slt i64 %sub.ptr.sub335, 1
  br i1 %cmp336, label %if.then.338, label %if.end.339

if.then.338:                                      ; preds = %sw.bb.332
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.810

if.end.339:                                       ; preds = %sw.bb.332
  %202 = load i64, i64* %chr, align 8, !tbaa !36
  %conv340 = trunc i64 %202 to i32
  %shl = shl i32 %conv340, 1
  %203 = load i8*, i8** %p, align 8, !tbaa !1
  %204 = load i8, i8* %203, align 1, !tbaa !40
  %conv341 = zext i8 %204 to i32
  %shr342 = ashr i32 %conv341, 7
  %add343 = add i32 %shl, %shr342
  store i32 %add343, i32* %fidx, align 4, !tbaa !20
  %205 = load i8*, i8** %p, align 8, !tbaa !1
  %206 = load i8, i8* %205, align 1, !tbaa !40
  %conv344 = zext i8 %206 to i32
  %and345 = and i32 %conv344, 127
  %conv346 = sext i32 %and345 to i64
  store i64 %conv346, i64* %chr, align 8, !tbaa !36
  br label %do.body.347

do.body.347:                                      ; preds = %if.end.339
  br label %do.cond.348

do.cond.348:                                      ; preds = %do.body.347
  br label %do.end.349

do.end.349:                                       ; preds = %do.cond.348
  %207 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr350 = getelementptr inbounds i8, i8* %207, i32 1
  store i8* %incdec.ptr350, i8** %p, align 8, !tbaa !1
  br label %sw.epilog.671

sw.bb.351:                                        ; preds = %while.body.309
  %208 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %208) #1
  %209 = load %struct.gs_type0_data_s*, %struct.gs_type0_data_s** %pdata, align 8, !tbaa !1
  %subs_width = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %209, i32 0, i32 6
  %210 = load i32, i32* %subs_width, align 4, !tbaa !46
  store i32 %210, i32* %width, align 4, !tbaa !20
  %211 = bitcast i32* %subs_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %211) #1
  %212 = load %struct.gs_type0_data_s*, %struct.gs_type0_data_s** %pdata, align 8, !tbaa !1
  %subs_size = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %212, i32 0, i32 5
  %213 = load i32, i32* %subs_size, align 4, !tbaa !47
  store i32 %213, i32* %subs_count, align 4, !tbaa !20
  %214 = bitcast i8** %psv to i8*
  call void @llvm.lifetime.start(i64 8, i8* %214) #1
  %215 = load %struct.gs_type0_data_s*, %struct.gs_type0_data_s** %pdata, align 8, !tbaa !1
  %SubsVector = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %215, i32 0, i32 4
  %data352 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %SubsVector, i32 0, i32 0
  %216 = load i8*, i8** %data352, align 8, !tbaa !48
  store i8* %216, i8** %psv, align 8, !tbaa !1
  %217 = load i32, i32* %width, align 4, !tbaa !20
  switch i32 %217, label %sw.default.353 [
    i32 1, label %sw.bb.354
    i32 2, label %sw.bb.375
    i32 3, label %sw.bb.419
    i32 4, label %sw.bb.463
  ]

sw.default.353:                                   ; preds = %sw.bb.351
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.520

sw.bb.354:                                        ; preds = %sw.bb.351
  call void @llvm.lifetime.start(i64 1, i8* %tchr) #1
  %218 = load i64, i64* %chr, align 8, !tbaa !36
  %conv355 = trunc i64 %218 to i8
  store i8 %conv355, i8* %tchr, align 1, !tbaa !40
  call void @llvm.lifetime.start(i64 1, i8* %schr) #1
  br label %while.cond.356

while.cond.356:                                   ; preds = %while.body.363, %sw.bb.354
  %219 = load i32, i32* %subs_count, align 4, !tbaa !20
  %cmp357 = icmp ne i32 %219, 0
  br i1 %cmp357, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.356
  %220 = load i8, i8* %tchr, align 1, !tbaa !40
  %conv359 = zext i8 %220 to i32
  %221 = load i8*, i8** %psv, align 8, !tbaa !1
  %222 = load i8, i8* %221, align 1, !tbaa !40
  store i8 %222, i8* %schr, align 1, !tbaa !40
  %conv360 = zext i8 %222 to i32
  %cmp361 = icmp sge i32 %conv359, %conv360
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.356
  %223 = phi i1 [ false, %while.cond.356 ], [ %cmp361, %land.rhs ]
  br i1 %223, label %while.body.363, label %while.end.370

while.body.363:                                   ; preds = %land.end
  %224 = load i32, i32* %subs_count, align 4, !tbaa !20
  %dec364 = add i32 %224, -1
  store i32 %dec364, i32* %subs_count, align 4, !tbaa !20
  %225 = load i8, i8* %schr, align 1, !tbaa !40
  %conv365 = zext i8 %225 to i32
  %226 = load i8, i8* %tchr, align 1, !tbaa !40
  %conv366 = zext i8 %226 to i32
  %sub367 = sub nsw i32 %conv366, %conv365
  %conv368 = trunc i32 %sub367 to i8
  store i8 %conv368, i8* %tchr, align 1, !tbaa !40
  %227 = load i8*, i8** %psv, align 8, !tbaa !1
  %add.ptr369 = getelementptr inbounds i8, i8* %227, i64 1
  store i8* %add.ptr369, i8** %psv, align 8, !tbaa !1
  br label %while.cond.356

while.end.370:                                    ; preds = %land.end
  %228 = load i8, i8* %tchr, align 1, !tbaa !40
  %conv371 = zext i8 %228 to i64
  store i64 %conv371, i64* %chr, align 8, !tbaa !36
  %229 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr372 = getelementptr inbounds i8, i8* %229, i64 0
  store i8* %add.ptr372, i8** %p, align 8, !tbaa !1
  store i32 38, i32* %cleanup.dest.slot
  call void @llvm.lifetime.end(i64 1, i8* %schr) #1
  call void @llvm.lifetime.end(i64 1, i8* %tchr) #1
  br label %sw.epilog.514

sw.bb.375:                                        ; preds = %sw.bb.351
  %230 = load i8*, i8** %end, align 8, !tbaa !1
  %231 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast376 = ptrtoint i8* %230 to i64
  %sub.ptr.rhs.cast377 = ptrtoint i8* %231 to i64
  %sub.ptr.sub378 = sub i64 %sub.ptr.lhs.cast376, %sub.ptr.rhs.cast377
  %cmp379 = icmp slt i64 %sub.ptr.sub378, 1
  br i1 %cmp379, label %if.then.381, label %if.end.382

if.then.381:                                      ; preds = %sw.bb.375
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.520

if.end.382:                                       ; preds = %sw.bb.375
  %232 = bitcast i16* %tchr383 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %232) #1
  %233 = load i64, i64* %chr, align 8, !tbaa !36
  %conv384 = trunc i64 %233 to i16
  %conv385 = zext i16 %conv384 to i32
  %shl386 = shl i32 %conv385, 8
  %234 = load i8*, i8** %p, align 8, !tbaa !1
  %235 = load i8, i8* %234, align 1, !tbaa !40
  %conv387 = zext i8 %235 to i32
  %add388 = add nsw i32 %shl386, %conv387
  %conv389 = trunc i32 %add388 to i16
  store i16 %conv389, i16* %tchr383, align 2, !tbaa !49
  %236 = bitcast i16* %schr390 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %236) #1
  br label %while.cond.391

while.cond.391:                                   ; preds = %while.body.407, %if.end.382
  %237 = load i32, i32* %subs_count, align 4, !tbaa !20
  %cmp392 = icmp ne i32 %237, 0
  br i1 %cmp392, label %land.rhs.394, label %land.end.406

land.rhs.394:                                     ; preds = %while.cond.391
  %238 = load i16, i16* %tchr383, align 2, !tbaa !49
  %conv395 = zext i16 %238 to i32
  %239 = load i8*, i8** %psv, align 8, !tbaa !1
  %240 = load i8, i8* %239, align 1, !tbaa !40
  %conv396 = zext i8 %240 to i16
  %conv397 = zext i16 %conv396 to i32
  %shl398 = shl i32 %conv397, 8
  %241 = load i8*, i8** %psv, align 8, !tbaa !1
  %arrayidx399 = getelementptr inbounds i8, i8* %241, i64 1
  %242 = load i8, i8* %arrayidx399, align 1, !tbaa !40
  %conv400 = zext i8 %242 to i32
  %add401 = add nsw i32 %shl398, %conv400
  %conv402 = trunc i32 %add401 to i16
  store i16 %conv402, i16* %schr390, align 2, !tbaa !49
  %conv403 = zext i16 %conv402 to i32
  %cmp404 = icmp sge i32 %conv395, %conv403
  br label %land.end.406

land.end.406:                                     ; preds = %land.rhs.394, %while.cond.391
  %243 = phi i1 [ false, %while.cond.391 ], [ %cmp404, %land.rhs.394 ]
  br i1 %243, label %while.body.407, label %while.end.414

while.body.407:                                   ; preds = %land.end.406
  %244 = load i32, i32* %subs_count, align 4, !tbaa !20
  %dec408 = add i32 %244, -1
  store i32 %dec408, i32* %subs_count, align 4, !tbaa !20
  %245 = load i16, i16* %schr390, align 2, !tbaa !49
  %conv409 = zext i16 %245 to i32
  %246 = load i16, i16* %tchr383, align 2, !tbaa !49
  %conv410 = zext i16 %246 to i32
  %sub411 = sub nsw i32 %conv410, %conv409
  %conv412 = trunc i32 %sub411 to i16
  store i16 %conv412, i16* %tchr383, align 2, !tbaa !49
  %247 = load i8*, i8** %psv, align 8, !tbaa !1
  %add.ptr413 = getelementptr inbounds i8, i8* %247, i64 2
  store i8* %add.ptr413, i8** %psv, align 8, !tbaa !1
  br label %while.cond.391

while.end.414:                                    ; preds = %land.end.406
  %248 = load i16, i16* %tchr383, align 2, !tbaa !49
  %conv415 = zext i16 %248 to i64
  store i64 %conv415, i64* %chr, align 8, !tbaa !36
  %249 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr416 = getelementptr inbounds i8, i8* %249, i64 1
  store i8* %add.ptr416, i8** %p, align 8, !tbaa !1
  store i32 38, i32* %cleanup.dest.slot
  %250 = bitcast i16* %schr390 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %250) #1
  %251 = bitcast i16* %tchr383 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %251) #1
  br label %sw.epilog.514

sw.bb.419:                                        ; preds = %sw.bb.351
  %252 = load i8*, i8** %end, align 8, !tbaa !1
  %253 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast420 = ptrtoint i8* %252 to i64
  %sub.ptr.rhs.cast421 = ptrtoint i8* %253 to i64
  %sub.ptr.sub422 = sub i64 %sub.ptr.lhs.cast420, %sub.ptr.rhs.cast421
  %cmp423 = icmp slt i64 %sub.ptr.sub422, 2
  br i1 %cmp423, label %if.then.425, label %if.end.426

if.then.425:                                      ; preds = %sw.bb.419
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.520

if.end.426:                                       ; preds = %sw.bb.419
  %254 = bitcast i64* %tchr427 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %254) #1
  %255 = load i64, i64* %chr, align 8, !tbaa !36
  %shl428 = shl i64 %255, 16
  %256 = load i8*, i8** %p, align 8, !tbaa !1
  %257 = load i8, i8* %256, align 1, !tbaa !40
  %conv429 = zext i8 %257 to i16
  %conv430 = zext i16 %conv429 to i32
  %shl431 = shl i32 %conv430, 8
  %258 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx432 = getelementptr inbounds i8, i8* %258, i64 1
  %259 = load i8, i8* %arrayidx432, align 1, !tbaa !40
  %conv433 = zext i8 %259 to i32
  %add434 = add nsw i32 %shl431, %conv433
  %conv435 = sext i32 %add434 to i64
  %add436 = add i64 %shl428, %conv435
  store i64 %add436, i64* %tchr427, align 8, !tbaa !36
  %260 = bitcast i64* %schr437 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %260) #1
  br label %while.cond.438

while.cond.438:                                   ; preds = %while.body.455, %if.end.426
  %261 = load i32, i32* %subs_count, align 4, !tbaa !20
  %cmp439 = icmp ne i32 %261, 0
  br i1 %cmp439, label %land.rhs.441, label %land.end.454

land.rhs.441:                                     ; preds = %while.cond.438
  %262 = load i64, i64* %tchr427, align 8, !tbaa !36
  %263 = load i8*, i8** %psv, align 8, !tbaa !1
  %264 = load i8, i8* %263, align 1, !tbaa !40
  %conv442 = zext i8 %264 to i64
  %shl443 = shl i64 %conv442, 16
  %265 = load i8*, i8** %psv, align 8, !tbaa !1
  %arrayidx444 = getelementptr inbounds i8, i8* %265, i64 1
  %266 = load i8, i8* %arrayidx444, align 1, !tbaa !40
  %conv445 = zext i8 %266 to i32
  %shl446 = shl i32 %conv445, 8
  %conv447 = zext i32 %shl446 to i64
  %add448 = add i64 %shl443, %conv447
  %267 = load i8*, i8** %psv, align 8, !tbaa !1
  %arrayidx449 = getelementptr inbounds i8, i8* %267, i64 2
  %268 = load i8, i8* %arrayidx449, align 1, !tbaa !40
  %conv450 = zext i8 %268 to i64
  %add451 = add i64 %add448, %conv450
  store i64 %add451, i64* %schr437, align 8, !tbaa !36
  %cmp452 = icmp uge i64 %262, %add451
  br label %land.end.454

land.end.454:                                     ; preds = %land.rhs.441, %while.cond.438
  %269 = phi i1 [ false, %while.cond.438 ], [ %cmp452, %land.rhs.441 ]
  br i1 %269, label %while.body.455, label %while.end.459

while.body.455:                                   ; preds = %land.end.454
  %270 = load i32, i32* %subs_count, align 4, !tbaa !20
  %dec456 = add i32 %270, -1
  store i32 %dec456, i32* %subs_count, align 4, !tbaa !20
  %271 = load i64, i64* %schr437, align 8, !tbaa !36
  %272 = load i64, i64* %tchr427, align 8, !tbaa !36
  %sub457 = sub i64 %272, %271
  store i64 %sub457, i64* %tchr427, align 8, !tbaa !36
  %273 = load i8*, i8** %psv, align 8, !tbaa !1
  %add.ptr458 = getelementptr inbounds i8, i8* %273, i64 3
  store i8* %add.ptr458, i8** %psv, align 8, !tbaa !1
  br label %while.cond.438

while.end.459:                                    ; preds = %land.end.454
  %274 = load i64, i64* %tchr427, align 8, !tbaa !36
  store i64 %274, i64* %chr, align 8, !tbaa !36
  %275 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr460 = getelementptr inbounds i8, i8* %275, i64 2
  store i8* %add.ptr460, i8** %p, align 8, !tbaa !1
  store i32 38, i32* %cleanup.dest.slot
  %276 = bitcast i64* %schr437 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %276) #1
  %277 = bitcast i64* %tchr427 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %277) #1
  br label %sw.epilog.514

sw.bb.463:                                        ; preds = %sw.bb.351
  %278 = load i8*, i8** %end, align 8, !tbaa !1
  %279 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast464 = ptrtoint i8* %278 to i64
  %sub.ptr.rhs.cast465 = ptrtoint i8* %279 to i64
  %sub.ptr.sub466 = sub i64 %sub.ptr.lhs.cast464, %sub.ptr.rhs.cast465
  %cmp467 = icmp slt i64 %sub.ptr.sub466, 3
  br i1 %cmp467, label %if.then.469, label %if.end.470

if.then.469:                                      ; preds = %sw.bb.463
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.520

if.end.470:                                       ; preds = %sw.bb.463
  %280 = bitcast i64* %tchr471 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %280) #1
  %281 = load i64, i64* %chr, align 8, !tbaa !36
  %shl472 = shl i64 %281, 24
  %282 = load i8*, i8** %p, align 8, !tbaa !1
  %283 = load i8, i8* %282, align 1, !tbaa !40
  %conv473 = zext i8 %283 to i64
  %shl474 = shl i64 %conv473, 16
  %284 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx475 = getelementptr inbounds i8, i8* %284, i64 1
  %285 = load i8, i8* %arrayidx475, align 1, !tbaa !40
  %conv476 = zext i8 %285 to i32
  %shl477 = shl i32 %conv476, 8
  %conv478 = zext i32 %shl477 to i64
  %add479 = add i64 %shl474, %conv478
  %286 = load i8*, i8** %p, align 8, !tbaa !1
  %arrayidx480 = getelementptr inbounds i8, i8* %286, i64 2
  %287 = load i8, i8* %arrayidx480, align 1, !tbaa !40
  %conv481 = zext i8 %287 to i64
  %add482 = add i64 %add479, %conv481
  %add483 = add i64 %shl472, %add482
  store i64 %add483, i64* %tchr471, align 8, !tbaa !36
  %288 = bitcast i64* %schr484 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %288) #1
  br label %while.cond.485

while.cond.485:                                   ; preds = %while.body.506, %if.end.470
  %289 = load i32, i32* %subs_count, align 4, !tbaa !20
  %cmp486 = icmp ne i32 %289, 0
  br i1 %cmp486, label %land.rhs.488, label %land.end.505

land.rhs.488:                                     ; preds = %while.cond.485
  %290 = load i64, i64* %tchr471, align 8, !tbaa !36
  %291 = load i8*, i8** %psv, align 8, !tbaa !1
  %292 = load i8, i8* %291, align 1, !tbaa !40
  %conv489 = zext i8 %292 to i64
  %shl490 = shl i64 %conv489, 24
  %293 = load i8*, i8** %psv, align 8, !tbaa !1
  %arrayidx491 = getelementptr inbounds i8, i8* %293, i64 1
  %294 = load i8, i8* %arrayidx491, align 1, !tbaa !40
  %conv492 = zext i8 %294 to i64
  %shl493 = shl i64 %conv492, 16
  %add494 = add i64 %shl490, %shl493
  %295 = load i8*, i8** %psv, align 8, !tbaa !1
  %arrayidx495 = getelementptr inbounds i8, i8* %295, i64 2
  %296 = load i8, i8* %arrayidx495, align 1, !tbaa !40
  %conv496 = zext i8 %296 to i32
  %shl497 = shl i32 %conv496, 8
  %conv498 = zext i32 %shl497 to i64
  %add499 = add i64 %add494, %conv498
  %297 = load i8*, i8** %psv, align 8, !tbaa !1
  %arrayidx500 = getelementptr inbounds i8, i8* %297, i64 3
  %298 = load i8, i8* %arrayidx500, align 1, !tbaa !40
  %conv501 = zext i8 %298 to i64
  %add502 = add i64 %add499, %conv501
  store i64 %add502, i64* %schr484, align 8, !tbaa !36
  %cmp503 = icmp uge i64 %290, %add502
  br label %land.end.505

land.end.505:                                     ; preds = %land.rhs.488, %while.cond.485
  %299 = phi i1 [ false, %while.cond.485 ], [ %cmp503, %land.rhs.488 ]
  br i1 %299, label %while.body.506, label %while.end.510

while.body.506:                                   ; preds = %land.end.505
  %300 = load i32, i32* %subs_count, align 4, !tbaa !20
  %dec507 = add i32 %300, -1
  store i32 %dec507, i32* %subs_count, align 4, !tbaa !20
  %301 = load i64, i64* %schr484, align 8, !tbaa !36
  %302 = load i64, i64* %tchr471, align 8, !tbaa !36
  %sub508 = sub i64 %302, %301
  store i64 %sub508, i64* %tchr471, align 8, !tbaa !36
  %303 = load i8*, i8** %psv, align 8, !tbaa !1
  %add.ptr509 = getelementptr inbounds i8, i8* %303, i64 4
  store i8* %add.ptr509, i8** %psv, align 8, !tbaa !1
  br label %while.cond.485

while.end.510:                                    ; preds = %land.end.505
  %304 = load i64, i64* %tchr471, align 8, !tbaa !36
  store i64 %304, i64* %chr, align 8, !tbaa !36
  %305 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr511 = getelementptr inbounds i8, i8* %305, i64 3
  store i8* %add.ptr511, i8** %p, align 8, !tbaa !1
  store i32 38, i32* %cleanup.dest.slot
  %306 = bitcast i64* %schr484 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %306) #1
  %307 = bitcast i64* %tchr471 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %307) #1
  br label %sw.epilog.514

sw.epilog.514:                                    ; preds = %while.end.510, %while.end.459, %while.end.414, %while.end.370
  %308 = load %struct.gs_type0_data_s*, %struct.gs_type0_data_s** %pdata, align 8, !tbaa !1
  %subs_size515 = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %308, i32 0, i32 5
  %309 = load i32, i32* %subs_size515, align 4, !tbaa !47
  %310 = load i32, i32* %subs_count, align 4, !tbaa !20
  %sub516 = sub i32 %309, %310
  store i32 %sub516, i32* %fidx, align 4, !tbaa !20
  br label %do.body.517

do.body.517:                                      ; preds = %sw.epilog.514
  br label %do.cond.518

do.cond.518:                                      ; preds = %do.body.517
  br label %do.end.519

do.end.519:                                       ; preds = %do.cond.518
  store i32 31, i32* %cleanup.dest.slot
  br label %cleanup.520

cleanup.520:                                      ; preds = %do.end.519, %if.then.469, %if.then.425, %if.then.381, %sw.default.353
  %311 = bitcast i8** %psv to i8*
  call void @llvm.lifetime.end(i64 8, i8* %311) #1
  %312 = bitcast i32* %subs_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %312) #1
  %313 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %313) #1
  %cleanup.dest.523 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.523, label %cleanup.810 [
    i32 31, label %sw.epilog.671
  ]

sw.bb.524:                                        ; preds = %while.body.309
  %314 = bitcast %struct.gs_const_string_s* %cstr to i8*
  call void @llvm.lifetime.start(i64 16, i8* %314) #1
  %315 = bitcast i32* %mindex to i8*
  call void @llvm.lifetime.start(i64 4, i8* %315) #1
  %316 = load i8*, i8** %p, align 8, !tbaa !1
  %317 = load i8*, i8** %str, align 8, !tbaa !1
  %sub.ptr.lhs.cast525 = ptrtoint i8* %316 to i64
  %sub.ptr.rhs.cast526 = ptrtoint i8* %317 to i64
  %sub.ptr.sub527 = sub i64 %sub.ptr.lhs.cast525, %sub.ptr.rhs.cast526
  %sub528 = sub nsw i64 %sub.ptr.sub527, 1
  %conv529 = trunc i64 %sub528 to i32
  store i32 %conv529, i32* %mindex, align 4, !tbaa !20
  %318 = bitcast i32* %code530 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %318) #1
  %319 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr531 = getelementptr inbounds i8, i8* %319, i64 -1
  %320 = load i8, i8* %add.ptr531, align 1, !tbaa !40
  %conv532 = zext i8 %320 to i64
  %321 = load i64, i64* %chr, align 8, !tbaa !36
  %cmp533 = icmp ne i64 %conv532, %321
  br i1 %cmp533, label %if.then.535, label %if.else.592

if.then.535:                                      ; preds = %sw.bb.524
  %322 = bitcast [4 x i8]* %substr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %322) #1
  %323 = bitcast i32* %submindex to i8*
  call void @llvm.lifetime.start(i64 4, i8* %323) #1
  store i32 0, i32* %submindex, align 4, !tbaa !20
  br label %do.body.536

do.body.536:                                      ; preds = %if.then.535
  br label %do.cond.537

do.cond.537:                                      ; preds = %do.body.536
  br label %do.end.538

do.end.538:                                       ; preds = %do.cond.537
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %substr, i32 0, i32 0
  %324 = load i8*, i8** %p, align 8, !tbaa !1
  %add.ptr539 = getelementptr inbounds i8, i8* %324, i64 -1
  %325 = load i8*, i8** %end, align 8, !tbaa !1
  %326 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast540 = ptrtoint i8* %325 to i64
  %sub.ptr.rhs.cast541 = ptrtoint i8* %326 to i64
  %sub.ptr.sub542 = sub i64 %sub.ptr.lhs.cast540, %sub.ptr.rhs.cast541
  %add543 = add nsw i64 %sub.ptr.sub542, 1
  %cmp544 = icmp slt i64 4, %add543
  br i1 %cmp544, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.538
  br label %cond.end

cond.false:                                       ; preds = %do.end.538
  %327 = load i8*, i8** %end, align 8, !tbaa !1
  %328 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast546 = ptrtoint i8* %327 to i64
  %sub.ptr.rhs.cast547 = ptrtoint i8* %328 to i64
  %sub.ptr.sub548 = sub i64 %sub.ptr.lhs.cast546, %sub.ptr.rhs.cast547
  %add549 = add nsw i64 %sub.ptr.sub548, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 4, %cond.true ], [ %add549, %cond.false ]
  %call550 = call i8* @memcpy(i8* %arraydecay, i8* %add.ptr539, i64 %cond) #5
  %329 = load i64, i64* %chr, align 8, !tbaa !36
  %conv551 = trunc i64 %329 to i8
  %arrayidx552 = getelementptr inbounds [4 x i8], [4 x i8]* %substr, i32 0, i64 0
  store i8 %conv551, i8* %arrayidx552, align 1, !tbaa !40
  %arraydecay553 = getelementptr inbounds [4 x i8], [4 x i8]* %substr, i32 0, i32 0
  %data554 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %cstr, i32 0, i32 0
  store i8* %arraydecay553, i8** %data554, align 8, !tbaa !51
  %330 = load i8*, i8** %end, align 8, !tbaa !1
  %331 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast555 = ptrtoint i8* %330 to i64
  %sub.ptr.rhs.cast556 = ptrtoint i8* %331 to i64
  %sub.ptr.sub557 = sub i64 %sub.ptr.lhs.cast555, %sub.ptr.rhs.cast556
  %add558 = add nsw i64 %sub.ptr.sub557, 1
  %cmp559 = icmp slt i64 4, %add558
  br i1 %cmp559, label %cond.true.561, label %cond.false.562

cond.true.561:                                    ; preds = %cond.end
  br label %cond.end.567

cond.false.562:                                   ; preds = %cond.end
  %332 = load i8*, i8** %end, align 8, !tbaa !1
  %333 = load i8*, i8** %p, align 8, !tbaa !1
  %sub.ptr.lhs.cast563 = ptrtoint i8* %332 to i64
  %sub.ptr.rhs.cast564 = ptrtoint i8* %333 to i64
  %sub.ptr.sub565 = sub i64 %sub.ptr.lhs.cast563, %sub.ptr.rhs.cast564
  %add566 = add nsw i64 %sub.ptr.sub565, 1
  br label %cond.end.567

cond.end.567:                                     ; preds = %cond.false.562, %cond.true.561
  %cond568 = phi i64 [ 4, %cond.true.561 ], [ %add566, %cond.false.562 ]
  %conv569 = trunc i64 %cond568 to i32
  %size570 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %cstr, i32 0, i32 1
  store i32 %conv569, i32* %size570, align 4, !tbaa !52
  %call571 = call i32 @gs_debug_c(i32 106) #4
  %tobool = icmp ne i32 %call571, 0
  br i1 %tobool, label %if.then.572, label %if.end.589

if.then.572:                                      ; preds = %cond.end.567
  %334 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %334, i32 0, i32 2
  %335 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !53
  call void @dmprintf_file_and_line(%struct.gs_memory_s* %335, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 386) #4
  %336 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %memory573 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %336, i32 0, i32 2
  %337 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory573, align 8, !tbaa !53
  %call574 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %337, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0)) #4
  %338 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %memory575 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %338, i32 0, i32 2
  %339 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory575, align 8, !tbaa !53
  %340 = load i8*, i8** %str, align 8, !tbaa !1
  %341 = load i8*, i8** %end, align 8, !tbaa !1
  %342 = load i8*, i8** %str, align 8, !tbaa !1
  %sub.ptr.lhs.cast576 = ptrtoint i8* %341 to i64
  %sub.ptr.rhs.cast577 = ptrtoint i8* %342 to i64
  %sub.ptr.sub578 = sub i64 %sub.ptr.lhs.cast576, %sub.ptr.rhs.cast577
  %conv579 = trunc i64 %sub.ptr.sub578 to i32
  call void @debug_print_string_hex(%struct.gs_memory_s* %339, i8* %340, i32 %conv579) #4
  %343 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %memory580 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %343, i32 0, i32 2
  %344 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory580, align 8, !tbaa !53
  call void @dmprintf_file_and_line(%struct.gs_memory_s* %344, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 388) #4
  %345 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %memory581 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %345, i32 0, i32 2
  %346 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory581, align 8, !tbaa !53
  %call582 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %346, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0)) #4
  %347 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %memory583 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %347, i32 0, i32 2
  %348 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory583, align 8, !tbaa !53
  %data584 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %cstr, i32 0, i32 0
  %349 = load i8*, i8** %data584, align 8, !tbaa !51
  %size585 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %cstr, i32 0, i32 1
  %350 = load i32, i32* %size585, align 4, !tbaa !52
  call void @debug_print_string_hex(%struct.gs_memory_s* %348, i8* %349, i32 %350) #4
  %351 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %memory586 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %351, i32 0, i32 2
  %352 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory586, align 8, !tbaa !53
  call void @dmprintf_file_and_line(%struct.gs_memory_s* %352, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 390) #4
  %353 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %memory587 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %353, i32 0, i32 2
  %354 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory587, align 8, !tbaa !53
  %call588 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %354, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0)) #4
  br label %if.end.589

if.end.589:                                       ; preds = %if.then.572, %cond.end.567
  %355 = load %struct.gs_type0_data_s*, %struct.gs_type0_data_s** %pdata, align 8, !tbaa !1
  %CMap = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %355, i32 0, i32 11
  %356 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %CMap, align 8, !tbaa !54
  %call590 = call i32 @gs_cmap_decode_next(%struct.gs_cmap_s* %356, %struct.gs_const_string_s* %cstr, i32* %submindex, i32* %fidx, i64* %chr, i64* %glyph) #4
  store i32 %call590, i32* %code530, align 4, !tbaa !20
  %357 = load i32, i32* %submindex, align 4, !tbaa !20
  %358 = load i32, i32* %mindex, align 4, !tbaa !20
  %add591 = add i32 %358, %357
  store i32 %add591, i32* %mindex, align 4, !tbaa !20
  %359 = bitcast i32* %submindex to i8*
  call void @llvm.lifetime.end(i64 4, i8* %359) #1
  %360 = bitcast [4 x i8]* %substr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %360) #1
  br label %if.end.601

if.else.592:                                      ; preds = %sw.bb.524
  %361 = load i8*, i8** %str, align 8, !tbaa !1
  %data593 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %cstr, i32 0, i32 0
  store i8* %361, i8** %data593, align 8, !tbaa !51
  %362 = load i8*, i8** %end, align 8, !tbaa !1
  %363 = load i8*, i8** %str, align 8, !tbaa !1
  %sub.ptr.lhs.cast594 = ptrtoint i8* %362 to i64
  %sub.ptr.rhs.cast595 = ptrtoint i8* %363 to i64
  %sub.ptr.sub596 = sub i64 %sub.ptr.lhs.cast594, %sub.ptr.rhs.cast595
  %conv597 = trunc i64 %sub.ptr.sub596 to i32
  %size598 = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %cstr, i32 0, i32 1
  store i32 %conv597, i32* %size598, align 4, !tbaa !52
  %364 = load %struct.gs_type0_data_s*, %struct.gs_type0_data_s** %pdata, align 8, !tbaa !1
  %CMap599 = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %364, i32 0, i32 11
  %365 = load %struct.gs_cmap_s*, %struct.gs_cmap_s** %CMap599, align 8, !tbaa !54
  %call600 = call i32 @gs_cmap_decode_next(%struct.gs_cmap_s* %365, %struct.gs_const_string_s* %cstr, i32* %mindex, i32* %fidx, i64* %chr, i64* %glyph) #4
  store i32 %call600, i32* %code530, align 4, !tbaa !20
  br label %if.end.601

if.end.601:                                       ; preds = %if.else.592, %if.end.589
  %366 = load i32, i32* %code530, align 4, !tbaa !20
  %cmp602 = icmp slt i32 %366, 0
  br i1 %cmp602, label %if.then.604, label %if.end.605

if.then.604:                                      ; preds = %if.end.601
  %367 = load i32, i32* %code530, align 4, !tbaa !20
  store i32 %367, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.667

if.end.605:                                       ; preds = %if.end.601
  %368 = load i32, i32* %code530, align 4, !tbaa !20
  %369 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %cmap_code = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %369, i32 0, i32 20
  store i32 %368, i32* %cmap_code, align 4, !tbaa !55
  %370 = load i8*, i8** %str, align 8, !tbaa !1
  %371 = load i32, i32* %mindex, align 4, !tbaa !20
  %idx.ext606 = zext i32 %371 to i64
  %add.ptr607 = getelementptr inbounds i8, i8* %370, i64 %idx.ext606
  store i8* %add.ptr607, i8** %p, align 8, !tbaa !1
  br label %do.body.608

do.body.608:                                      ; preds = %if.end.605
  br label %do.cond.609

do.cond.609:                                      ; preds = %do.body.608
  br label %do.end.610

do.end.610:                                       ; preds = %do.cond.609
  %372 = load i32, i32* %code530, align 4, !tbaa !20
  %cmp611 = icmp eq i32 %372, 0
  br i1 %cmp611, label %if.then.613, label %if.else.665

if.then.613:                                      ; preds = %do.end.610
  %373 = load i64, i64* %glyph, align 8, !tbaa !36
  %cmp614 = icmp eq i64 %373, 2147483647
  br i1 %cmp614, label %if.then.616, label %if.end.664

if.then.616:                                      ; preds = %if.then.613
  store i64 2147483648, i64* %glyph, align 8, !tbaa !36
  br label %do.body.617

do.body.617:                                      ; preds = %if.then.616
  br label %do.cond.618

do.cond.618:                                      ; preds = %do.body.617
  br label %do.end.619

do.end.619:                                       ; preds = %do.cond.618
  %374 = load i32, i32* %fidx, align 4, !tbaa !20
  %375 = load %struct.gs_type0_data_s*, %struct.gs_type0_data_s** %pdata, align 8, !tbaa !1
  %encoding_size620 = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %375, i32 0, i32 8
  %376 = load i32, i32* %encoding_size620, align 4, !tbaa !41
  %cmp621 = icmp uge i32 %374, %376
  br i1 %cmp621, label %if.then.623, label %if.end.624

if.then.623:                                      ; preds = %do.end.619
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.667

if.end.624:                                       ; preds = %do.end.619
  %377 = load i32, i32* %fdepth, align 4, !tbaa !20
  %cmp625 = icmp eq i32 %377, 5
  br i1 %cmp625, label %if.then.627, label %if.end.628

if.then.627:                                      ; preds = %if.end.624
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.667

if.end.628:                                       ; preds = %if.end.624
  %378 = load i32, i32* %fidx, align 4, !tbaa !20
  %idxprom629 = zext i32 %378 to i64
  %379 = load %struct.gs_type0_data_s*, %struct.gs_type0_data_s** %pdata, align 8, !tbaa !1
  %Encoding630 = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %379, i32 0, i32 7
  %380 = load i32*, i32** %Encoding630, align 8, !tbaa !42
  %arrayidx631 = getelementptr inbounds i32, i32* %380, i64 %idxprom629
  %381 = load i32, i32* %arrayidx631, align 4, !tbaa !20
  %idxprom632 = zext i32 %381 to i64
  %382 = load %struct.gs_type0_data_s*, %struct.gs_type0_data_s** %pdata, align 8, !tbaa !1
  %FDepVector633 = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %382, i32 0, i32 9
  %383 = load %struct.gs_font_s**, %struct.gs_font_s*** %FDepVector633, align 8, !tbaa !43
  %arrayidx634 = getelementptr inbounds %struct.gs_font_s*, %struct.gs_font_s** %383, i64 %idxprom632
  %384 = load %struct.gs_font_s*, %struct.gs_font_s** %arrayidx634, align 8, !tbaa !1
  store %struct.gs_font_s* %384, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %385 = load i32, i32* %fidx, align 4, !tbaa !20
  %386 = load i32, i32* %fdepth, align 4, !tbaa !20
  %idxprom635 = sext i32 %386 to i64
  %387 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %fstack636 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %387, i32 0, i32 19
  %items637 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack636, i32 0, i32 1
  %arrayidx638 = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items637, i32 0, i64 %idxprom635
  %index639 = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %arrayidx638, i32 0, i32 1
  store i32 %385, i32* %index639, align 4, !tbaa !19
  %388 = load i32, i32* %fdepth, align 4, !tbaa !20
  %inc640 = add nsw i32 %388, 1
  store i32 %inc640, i32* %fdepth, align 4, !tbaa !20
  %389 = load i32, i32* %orig_depth, align 4, !tbaa !20
  %cmp641 = icmp sgt i32 %inc640, %389
  br i1 %cmp641, label %if.then.651, label %lor.lhs.false.643

lor.lhs.false.643:                                ; preds = %if.end.628
  %390 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %391 = load i32, i32* %fdepth, align 4, !tbaa !20
  %idxprom644 = sext i32 %391 to i64
  %392 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %fstack645 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %392, i32 0, i32 19
  %items646 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack645, i32 0, i32 1
  %arrayidx647 = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items646, i32 0, i64 %idxprom644
  %font648 = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %arrayidx647, i32 0, i32 0
  %393 = load %struct.gs_font_s*, %struct.gs_font_s** %font648, align 8, !tbaa !17
  %cmp649 = icmp ne %struct.gs_font_s* %390, %393
  br i1 %cmp649, label %if.then.651, label %if.else.662

if.then.651:                                      ; preds = %lor.lhs.false.643, %if.end.628
  %394 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %395 = load i32, i32* %fdepth, align 4, !tbaa !20
  %idxprom652 = sext i32 %395 to i64
  %396 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %fstack653 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %396, i32 0, i32 19
  %items654 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack653, i32 0, i32 1
  %arrayidx655 = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items654, i32 0, i64 %idxprom652
  %font656 = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %arrayidx655, i32 0, i32 0
  store %struct.gs_font_s* %394, %struct.gs_font_s** %font656, align 8, !tbaa !17
  %397 = load i32, i32* %fdepth, align 4, !tbaa !20
  %idxprom657 = sext i32 %397 to i64
  %398 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %fstack658 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %398, i32 0, i32 19
  %items659 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack658, i32 0, i32 1
  %arrayidx660 = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items659, i32 0, i64 %idxprom657
  %index661 = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %arrayidx660, i32 0, i32 1
  store i32 0, i32* %index661, align 4, !tbaa !19
  store i32 1, i32* %changed, align 4, !tbaa !20
  br label %if.end.663

if.else.662:                                      ; preds = %lor.lhs.false.643
  br label %if.end.663

if.end.663:                                       ; preds = %if.else.662, %if.then.651
  store i32 55, i32* %cleanup.dest.slot
  br label %cleanup.667

if.end.664:                                       ; preds = %if.then.613
  br label %if.end.666

if.else.665:                                      ; preds = %do.end.610
  %399 = load i64, i64* %glyph, align 8, !tbaa !36
  store i64 %399, i64* %chr, align 8, !tbaa !36
  store i64 2147483647, i64* %glyph, align 8, !tbaa !36
  br label %if.end.666

if.end.666:                                       ; preds = %if.else.665, %if.end.664
  store i32 31, i32* %cleanup.dest.slot
  br label %cleanup.667

cleanup.667:                                      ; preds = %if.end.663, %if.end.666, %if.then.627, %if.then.623, %if.then.604
  %400 = bitcast i32* %code530 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %400) #1
  %401 = bitcast i32* %mindex to i8*
  call void @llvm.lifetime.end(i64 4, i8* %401) #1
  %402 = bitcast %struct.gs_const_string_s* %cstr to i8*
  call void @llvm.lifetime.end(i64 16, i8* %402) #1
  %cleanup.dest.670 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.670, label %cleanup.810 [
    i32 31, label %sw.epilog.671
    i32 55, label %done
  ]

sw.epilog.671:                                    ; preds = %cleanup.667, %cleanup.520, %do.end.349, %do.end.331, %do.end.326
  %403 = load i32, i32* %fidx, align 4, !tbaa !20
  %404 = load %struct.gs_type0_data_s*, %struct.gs_type0_data_s** %pdata, align 8, !tbaa !1
  %encoding_size672 = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %404, i32 0, i32 8
  %405 = load i32, i32* %encoding_size672, align 4, !tbaa !41
  %cmp673 = icmp uge i32 %403, %405
  br i1 %cmp673, label %if.then.675, label %if.end.676

if.then.675:                                      ; preds = %sw.epilog.671
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.810

if.end.676:                                       ; preds = %sw.epilog.671
  %406 = load i32, i32* %fdepth, align 4, !tbaa !20
  %cmp677 = icmp eq i32 %406, 5
  br i1 %cmp677, label %if.then.679, label %if.end.680

if.then.679:                                      ; preds = %if.end.676
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.810

if.end.680:                                       ; preds = %if.end.676
  %407 = load i32, i32* %fidx, align 4, !tbaa !20
  %idxprom681 = zext i32 %407 to i64
  %408 = load %struct.gs_type0_data_s*, %struct.gs_type0_data_s** %pdata, align 8, !tbaa !1
  %Encoding682 = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %408, i32 0, i32 7
  %409 = load i32*, i32** %Encoding682, align 8, !tbaa !42
  %arrayidx683 = getelementptr inbounds i32, i32* %409, i64 %idxprom681
  %410 = load i32, i32* %arrayidx683, align 4, !tbaa !20
  %idxprom684 = zext i32 %410 to i64
  %411 = load %struct.gs_type0_data_s*, %struct.gs_type0_data_s** %pdata, align 8, !tbaa !1
  %FDepVector685 = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %411, i32 0, i32 9
  %412 = load %struct.gs_font_s**, %struct.gs_font_s*** %FDepVector685, align 8, !tbaa !43
  %arrayidx686 = getelementptr inbounds %struct.gs_font_s*, %struct.gs_font_s** %412, i64 %idxprom684
  %413 = load %struct.gs_font_s*, %struct.gs_font_s** %arrayidx686, align 8, !tbaa !1
  store %struct.gs_font_s* %413, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %414 = load i32, i32* %fidx, align 4, !tbaa !20
  %415 = load i32, i32* %fdepth, align 4, !tbaa !20
  %idxprom687 = sext i32 %415 to i64
  %416 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %fstack688 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %416, i32 0, i32 19
  %items689 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack688, i32 0, i32 1
  %arrayidx690 = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items689, i32 0, i64 %idxprom687
  %index691 = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %arrayidx690, i32 0, i32 1
  store i32 %414, i32* %index691, align 4, !tbaa !19
  %417 = load i32, i32* %fdepth, align 4, !tbaa !20
  %inc692 = add nsw i32 %417, 1
  store i32 %inc692, i32* %fdepth, align 4, !tbaa !20
  %418 = load i32, i32* %orig_depth, align 4, !tbaa !20
  %cmp693 = icmp sgt i32 %inc692, %418
  br i1 %cmp693, label %if.then.703, label %lor.lhs.false.695

lor.lhs.false.695:                                ; preds = %if.end.680
  %419 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %420 = load i32, i32* %fdepth, align 4, !tbaa !20
  %idxprom696 = sext i32 %420 to i64
  %421 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %fstack697 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %421, i32 0, i32 19
  %items698 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack697, i32 0, i32 1
  %arrayidx699 = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items698, i32 0, i64 %idxprom696
  %font700 = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %arrayidx699, i32 0, i32 0
  %422 = load %struct.gs_font_s*, %struct.gs_font_s** %font700, align 8, !tbaa !17
  %cmp701 = icmp ne %struct.gs_font_s* %419, %422
  br i1 %cmp701, label %if.then.703, label %if.else.714

if.then.703:                                      ; preds = %lor.lhs.false.695, %if.end.680
  %423 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %424 = load i32, i32* %fdepth, align 4, !tbaa !20
  %idxprom704 = sext i32 %424 to i64
  %425 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %fstack705 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %425, i32 0, i32 19
  %items706 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack705, i32 0, i32 1
  %arrayidx707 = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items706, i32 0, i64 %idxprom704
  %font708 = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %arrayidx707, i32 0, i32 0
  store %struct.gs_font_s* %423, %struct.gs_font_s** %font708, align 8, !tbaa !17
  %426 = load i32, i32* %fdepth, align 4, !tbaa !20
  %idxprom709 = sext i32 %426 to i64
  %427 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %fstack710 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %427, i32 0, i32 19
  %items711 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack710, i32 0, i32 1
  %arrayidx712 = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items711, i32 0, i64 %idxprom709
  %index713 = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %arrayidx712, i32 0, i32 1
  store i32 0, i32* %index713, align 4, !tbaa !19
  store i32 1, i32* %changed, align 4, !tbaa !20
  br label %if.end.715

if.else.714:                                      ; preds = %lor.lhs.false.695
  br label %if.end.715

if.end.715:                                       ; preds = %if.else.714, %if.then.703
  br label %do.body.716

do.body.716:                                      ; preds = %if.end.715
  br label %do.cond.717

do.cond.717:                                      ; preds = %do.body.716
  br label %do.end.718

do.end.718:                                       ; preds = %do.cond.717
  br label %while.cond.300

while.end.719:                                    ; preds = %while.cond.300
  br label %done

done:                                             ; preds = %while.end.719, %cleanup.667
  %428 = load i32, i32* %fdepth, align 4, !tbaa !20
  %idxprom720 = sext i32 %428 to i64
  %429 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %fstack721 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %429, i32 0, i32 19
  %items722 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack721, i32 0, i32 1
  %arrayidx723 = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items722, i32 0, i64 %idxprom720
  %font724 = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %arrayidx723, i32 0, i32 0
  %430 = load %struct.gs_font_s*, %struct.gs_font_s** %font724, align 8, !tbaa !17
  %FontType725 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %430, i32 0, i32 11
  %431 = load i32, i32* %FontType725, align 4, !tbaa !21
  %cmp726 = icmp eq i32 %431, 9
  br i1 %cmp726, label %if.then.737, label %lor.lhs.false.728

lor.lhs.false.728:                                ; preds = %done
  %432 = load i32, i32* %fdepth, align 4, !tbaa !20
  %idxprom729 = sext i32 %432 to i64
  %433 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %fstack730 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %433, i32 0, i32 19
  %items731 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack730, i32 0, i32 1
  %arrayidx732 = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items731, i32 0, i64 %idxprom729
  %font733 = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %arrayidx732, i32 0, i32 0
  %434 = load %struct.gs_font_s*, %struct.gs_font_s** %font733, align 8, !tbaa !17
  %FontType734 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %434, i32 0, i32 11
  %435 = load i32, i32* %FontType734, align 4, !tbaa !21
  %cmp735 = icmp eq i32 %435, 11
  br i1 %cmp735, label %if.then.737, label %if.end.744

if.then.737:                                      ; preds = %lor.lhs.false.728, %done
  %436 = bitcast %struct.gs_font_base_s** %pfb to i8*
  call void @llvm.lifetime.start(i64 8, i8* %436) #1
  %437 = load i32, i32* %fdepth, align 4, !tbaa !20
  %idxprom738 = sext i32 %437 to i64
  %438 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %fstack739 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %438, i32 0, i32 19
  %items740 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack739, i32 0, i32 1
  %arrayidx741 = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items740, i32 0, i64 %idxprom738
  %font742 = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %arrayidx741, i32 0, i32 0
  %439 = load %struct.gs_font_s*, %struct.gs_font_s** %font742, align 8, !tbaa !17
  %440 = bitcast %struct.gs_font_s* %439 to %struct.gs_font_base_s*
  store %struct.gs_font_base_s* %440, %struct.gs_font_base_s** %pfb, align 8, !tbaa !1
  %441 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %FontBBox_as_Metrics2743 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %441, i32 0, i32 23
  %442 = load %struct.gs_font_base_s*, %struct.gs_font_base_s** %pfb, align 8, !tbaa !1
  %FontBBox = getelementptr inbounds %struct.gs_font_base_s, %struct.gs_font_base_s* %442, i32 0, i32 23
  %q = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %FontBBox, i32 0, i32 1
  %443 = bitcast %struct.gs_point_s* %FontBBox_as_Metrics2743 to i8*
  %444 = bitcast %struct.gs_point_s* %q to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %443, i8* %444, i64 16, i32 8, i1 false), !tbaa.struct !56
  %445 = bitcast %struct.gs_font_base_s** %pfb to i8*
  call void @llvm.lifetime.end(i64 8, i8* %445) #1
  br label %if.end.744

if.end.744:                                       ; preds = %if.then.737, %lor.lhs.false.728
  store i32 0, i32* %fidx, align 4, !tbaa !20
  %446 = load i32, i32* %fdepth, align 4, !tbaa !20
  %idxprom745 = sext i32 %446 to i64
  %447 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %fstack746 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %447, i32 0, i32 19
  %items747 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack746, i32 0, i32 1
  %arrayidx748 = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items747, i32 0, i64 %idxprom745
  %font749 = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %arrayidx748, i32 0, i32 0
  %448 = load %struct.gs_font_s*, %struct.gs_font_s** %font749, align 8, !tbaa !17
  %FontType750 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %448, i32 0, i32 11
  %449 = load i32, i32* %FontType750, align 4, !tbaa !21
  %cmp751 = icmp eq i32 %449, 9
  br i1 %cmp751, label %if.then.753, label %if.end.787

if.then.753:                                      ; preds = %if.end.744
  %450 = bitcast i32* %code754 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %450) #1
  %451 = bitcast i32* %font_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %451) #1
  %452 = load i32, i32* %fdepth, align 4, !tbaa !20
  %idxprom755 = sext i32 %452 to i64
  %453 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %fstack756 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %453, i32 0, i32 19
  %items757 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack756, i32 0, i32 1
  %arrayidx758 = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items757, i32 0, i64 %idxprom755
  %font759 = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %arrayidx758, i32 0, i32 0
  %454 = load %struct.gs_font_s*, %struct.gs_font_s** %font759, align 8, !tbaa !17
  store %struct.gs_font_s* %454, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %455 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %456 = bitcast %struct.gs_font_s* %455 to %struct.gs_font_cid0_s*
  %cidata = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %456, i32 0, i32 29
  %glyph_data = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata, i32 0, i32 5
  %457 = load i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, i32*)*, i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, i32*)** %glyph_data, align 8, !tbaa !58
  %458 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %459 = bitcast %struct.gs_font_s* %458 to %struct.gs_font_base_s*
  %460 = load i64, i64* %glyph, align 8, !tbaa !36
  %call760 = call i32 %457(%struct.gs_font_base_s* %459, i64 %460, %struct.gs_glyph_data_s* null, i32* %font_index) #4
  store i32 %call760, i32* %code754, align 4, !tbaa !20
  %461 = load i32, i32* %code754, align 4, !tbaa !20
  %cmp761 = icmp slt i32 %461, 0
  br i1 %cmp761, label %if.then.763, label %if.end.771

if.then.763:                                      ; preds = %if.then.753
  %462 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %463 = bitcast %struct.gs_font_s* %462 to %struct.gs_font_cid0_s*
  %cidata764 = getelementptr inbounds %struct.gs_font_cid0_s, %struct.gs_font_cid0_s* %463, i32 0, i32 29
  %glyph_data765 = getelementptr inbounds %struct.gs_font_cid0_data_s, %struct.gs_font_cid0_data_s* %cidata764, i32 0, i32 5
  %464 = load i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, i32*)*, i32 (%struct.gs_font_base_s*, i64, %struct.gs_glyph_data_s*, i32*)** %glyph_data765, align 8, !tbaa !58
  %465 = load %struct.gs_font_s*, %struct.gs_font_s** %pfont, align 8, !tbaa !1
  %466 = bitcast %struct.gs_font_s* %465 to %struct.gs_font_base_s*
  %call766 = call i32 %464(%struct.gs_font_base_s* %466, i64 2147483648, %struct.gs_glyph_data_s* null, i32* %font_index) #4
  store i32 %call766, i32* %code754, align 4, !tbaa !20
  %467 = load i32, i32* %code754, align 4, !tbaa !20
  %cmp767 = icmp slt i32 %467, 0
  br i1 %cmp767, label %if.then.769, label %if.end.770

if.then.769:                                      ; preds = %if.then.763
  store i32 -10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.783

if.end.770:                                       ; preds = %if.then.763
  br label %if.end.771

if.end.771:                                       ; preds = %if.end.770, %if.then.753
  %468 = load i32, i32* %font_index, align 4, !tbaa !20
  store i32 %468, i32* %fidx, align 4, !tbaa !20
  %469 = load i32, i32* %changed, align 4, !tbaa !20
  %tobool772 = icmp ne i32 %469, 0
  br i1 %tobool772, label %if.end.782, label %land.lhs.true.773

land.lhs.true.773:                                ; preds = %if.end.771
  %470 = load i32, i32* %fdepth, align 4, !tbaa !20
  %idxprom774 = sext i32 %470 to i64
  %471 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %fstack775 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %471, i32 0, i32 19
  %items776 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack775, i32 0, i32 1
  %arrayidx777 = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items776, i32 0, i64 %idxprom774
  %index778 = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %arrayidx777, i32 0, i32 1
  %472 = load i32, i32* %index778, align 4, !tbaa !19
  %473 = load i32, i32* %fidx, align 4, !tbaa !20
  %cmp779 = icmp ne i32 %472, %473
  br i1 %cmp779, label %if.then.781, label %if.end.782

if.then.781:                                      ; preds = %land.lhs.true.773
  store i32 1, i32* %changed, align 4, !tbaa !20
  br label %if.end.782

if.end.782:                                       ; preds = %if.then.781, %land.lhs.true.773, %if.end.771
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.783

cleanup.783:                                      ; preds = %if.end.782, %if.then.769
  %474 = bitcast i32* %font_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %474) #1
  %475 = bitcast i32* %code754 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %475) #1
  %cleanup.dest.785 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.785, label %cleanup.810 [
    i32 0, label %cleanup.cont.786
  ]

cleanup.cont.786:                                 ; preds = %cleanup.783
  br label %if.end.787

if.end.787:                                       ; preds = %cleanup.cont.786, %if.end.744
  %476 = load i32, i32* %fidx, align 4, !tbaa !20
  %477 = load i32, i32* %fdepth, align 4, !tbaa !20
  %idxprom788 = sext i32 %477 to i64
  %478 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %fstack789 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %478, i32 0, i32 19
  %items790 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack789, i32 0, i32 1
  %arrayidx791 = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items790, i32 0, i64 %idxprom788
  %index792 = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %arrayidx791, i32 0, i32 1
  store i32 %476, i32* %index792, align 4, !tbaa !19
  %479 = load i64, i64* %chr, align 8, !tbaa !36
  %480 = load i64*, i64** %pchr.addr, align 8, !tbaa !1
  store i64 %479, i64* %480, align 8, !tbaa !36
  %481 = load i64, i64* %glyph, align 8, !tbaa !36
  %482 = load i64*, i64** %pglyph.addr, align 8, !tbaa !1
  store i64 %481, i64* %482, align 8, !tbaa !36
  %483 = load i8*, i8** %str, align 8, !tbaa !1
  %484 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %text793 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %484, i32 0, i32 0
  %data794 = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text793, i32 0, i32 1
  %bytes795 = bitcast %union.sd_* %data794 to i8**
  %485 = load i8*, i8** %bytes795, align 8, !tbaa !1
  %cmp796 = icmp eq i8* %483, %485
  br i1 %cmp796, label %if.then.798, label %if.end.804

if.then.798:                                      ; preds = %if.end.787
  %486 = load i8*, i8** %p, align 8, !tbaa !1
  %487 = load i8*, i8** %str, align 8, !tbaa !1
  %sub.ptr.lhs.cast799 = ptrtoint i8* %486 to i64
  %sub.ptr.rhs.cast800 = ptrtoint i8* %487 to i64
  %sub.ptr.sub801 = sub i64 %sub.ptr.lhs.cast799, %sub.ptr.rhs.cast800
  %conv802 = trunc i64 %sub.ptr.sub801 to i32
  %488 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %index803 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %488, i32 0, i32 17
  store i32 %conv802, i32* %index803, align 4, !tbaa !34
  br label %if.end.804

if.end.804:                                       ; preds = %if.then.798, %if.end.787
  %489 = load i32, i32* %fdepth, align 4, !tbaa !20
  %490 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %fstack805 = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %490, i32 0, i32 19
  %depth806 = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack805, i32 0, i32 0
  store i32 %489, i32* %depth806, align 4, !tbaa !16
  br label %do.body.807

do.body.807:                                      ; preds = %if.end.804
  br label %do.cond.808

do.cond.808:                                      ; preds = %do.body.807
  br label %do.end.809

do.end.809:                                       ; preds = %do.cond.808
  %491 = load i32, i32* %changed, align 4, !tbaa !20
  store i32 %491, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.810

cleanup.810:                                      ; preds = %do.end.809, %cleanup.783, %if.then.679, %if.then.675, %cleanup.667, %cleanup.520, %if.then.338, %if.then.319, %sw.default.312, %if.then.271, %if.then.258, %if.then.195, %if.then.191, %if.then.183, %if.then.165, %if.then.140, %cleanup.134
  %492 = bitcast i32* %changed to i8*
  call void @llvm.lifetime.end(i64 4, i8* %492) #1
  %493 = bitcast i64* %glyph to i8*
  call void @llvm.lifetime.end(i64 8, i8* %493) #1
  %494 = bitcast i64* %chr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %494) #1
  %495 = bitcast i32* %fidx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %495) #1
  %496 = bitcast %struct.gs_type0_data_s** %pdata to i8*
  call void @llvm.lifetime.end(i64 8, i8* %496) #1
  %497 = bitcast %struct.gs_font_s** %pfont to i8*
  call void @llvm.lifetime.end(i64 8, i8* %497) #1
  %498 = bitcast i32* %orig_depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %498) #1
  %499 = bitcast i32* %fdepth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %499) #1
  %500 = bitcast i8** %end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %500) #1
  %501 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %501) #1
  %502 = bitcast i8** %str to i8*
  call void @llvm.lifetime.end(i64 8, i8* %502) #1
  %503 = load i32, i32* %retval
  ret i32 %503
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @root_esc_char(%struct.gs_text_enum_s* %pte) #0 {
entry:
  %pte.addr = alloca %struct.gs_text_enum_s*, align 8
  store %struct.gs_text_enum_s* %pte, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %0 = load %struct.gs_text_enum_s*, %struct.gs_text_enum_s** %pte.addr, align 8, !tbaa !1
  %fstack = getelementptr inbounds %struct.gs_text_enum_s, %struct.gs_text_enum_s* %0, i32 0, i32 19
  %items = getelementptr inbounds %struct.gx_font_stack_s, %struct.gx_font_stack_s* %fstack, i32 0, i32 1
  %arrayidx = getelementptr inbounds [6 x %struct.gx_font_stack_item_s], [6 x %struct.gx_font_stack_item_s]* %items, i32 0, i64 0
  %font = getelementptr inbounds %struct.gx_font_stack_item_s, %struct.gx_font_stack_item_s* %arrayidx, i32 0, i32 0
  %1 = load %struct.gs_font_s*, %struct.gs_font_s** %font, align 8, !tbaa !17
  %2 = bitcast %struct.gs_font_s* %1 to %struct.gs_font_type0_s*
  %data = getelementptr inbounds %struct.gs_font_type0_s, %struct.gs_font_type0_s* %2, i32 0, i32 23
  %EscChar = getelementptr inbounds %struct.gs_type0_data_s, %struct.gs_type0_data_s* %data, i32 0, i32 1
  %3 = load i8, i8* %EscChar, align 1, !tbaa !65
  %conv = zext i8 %3 to i32
  ret i32 %conv
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #2

declare i32 @gs_debug_c(i32) #3

declare void @dmprintf_file_and_line(%struct.gs_memory_s*, i8*, i32) #3

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #3

declare void @debug_print_string_hex(%struct.gs_memory_s*, i8*, i32) #3

declare i32 @gs_cmap_decode_next(%struct.gs_cmap_s*, %struct.gs_const_string_s*, i32*, i32*, i64*, i64*) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }
attributes #5 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !8, i64 0}
!6 = !{!"gs_text_enum_s", !7, i64 0, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !11, i64 160, !2, i64 184, !2, i64 192, !12, i64 200, !8, i64 208, !13, i64 212, !2, i64 224, !8, i64 232, !8, i64 236, !14, i64 240, !8, i64 344, !8, i64 348, !8, i64 352, !9, i64 360, !12, i64 376, !8, i64 384, !13, i64 388, !9, i64 400, !15, i64 416}
!7 = !{!"gs_text_params_s", !8, i64 0, !3, i64 8, !8, i64 16, !9, i64 24, !9, i64 40, !3, i64 56, !2, i64 64, !2, i64 72, !8, i64 80}
!8 = !{!"int", !3, i64 0}
!9 = !{!"gs_point_s", !10, i64 0, !10, i64 8}
!10 = !{!"double", !3, i64 0}
!11 = !{!"rc_header_s", !12, i64 0, !2, i64 8, !2, i64 16}
!12 = !{!"long", !3, i64 0}
!13 = !{!"gs_log2_scale_point_s", !8, i64 0, !8, i64 4}
!14 = !{!"gx_font_stack_s", !8, i64 0, !3, i64 8}
!15 = !{!"gs_text_returned_s", !12, i64 0, !12, i64 8, !9, i64 16}
!16 = !{!6, !8, i64 240}
!17 = !{!18, !2, i64 0}
!18 = !{!"gx_font_stack_item_s", !2, i64 0, !8, i64 8}
!19 = !{!18, !8, i64 8}
!20 = !{!8, !8, i64 0}
!21 = !{!22, !3, i64 128}
!22 = !{!"gs_font_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !8, i64 32, !23, i64 40, !12, i64 56, !2, i64 64, !2, i64 72, !24, i64 80, !24, i64 104, !3, i64 128, !8, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !8, i64 148, !8, i64 152, !25, i64 156, !8, i64 160, !26, i64 168, !27, i64 272, !27, i64 324}
!23 = !{!"gs_notify_list_s", !2, i64 0, !2, i64 8}
!24 = !{!"gs_matrix_s", !25, i64 0, !25, i64 4, !25, i64 8, !25, i64 12, !25, i64 16, !25, i64 20}
!25 = !{!"float", !3, i64 0}
!26 = !{!"gs_font_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96}
!27 = !{!"gs_font_name_s", !3, i64 0, !8, i64 48}
!28 = !{!29, !3, i64 376}
!29 = !{!"gs_font_type0_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !8, i64 32, !23, i64 40, !12, i64 56, !2, i64 64, !2, i64 72, !24, i64 80, !24, i64 104, !3, i64 128, !8, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !8, i64 148, !8, i64 152, !25, i64 156, !8, i64 160, !26, i64 168, !27, i64 272, !27, i64 324, !30, i64 376}
!30 = !{!"gs_type0_data_s", !3, i64 0, !3, i64 4, !3, i64 5, !3, i64 6, !31, i64 8, !8, i64 24, !8, i64 28, !2, i64 32, !8, i64 40, !2, i64 48, !8, i64 56, !2, i64 64}
!31 = !{!"gs_const_string_s", !2, i64 0, !8, i64 8}
!32 = !{!29, !2, i64 408}
!33 = !{!29, !2, i64 424}
!34 = !{!6, !8, i64 232}
!35 = !{!6, !8, i64 16}
!36 = !{!12, !12, i64 0}
!37 = !{!6, !10, i64 368}
!38 = !{!6, !10, i64 360}
!39 = !{!30, !3, i64 0}
!40 = !{!3, !3, i64 0}
!41 = !{!30, !8, i64 40}
!42 = !{!30, !2, i64 32}
!43 = !{!30, !2, i64 48}
!44 = !{!30, !3, i64 5}
!45 = !{!30, !3, i64 6}
!46 = !{!30, !8, i64 28}
!47 = !{!30, !8, i64 24}
!48 = !{!30, !2, i64 8}
!49 = !{!50, !50, i64 0}
!50 = !{!"short", !3, i64 0}
!51 = !{!31, !2, i64 0}
!52 = !{!31, !8, i64 8}
!53 = !{!22, !2, i64 16}
!54 = !{!30, !2, i64 64}
!55 = !{!6, !8, i64 344}
!56 = !{i64 0, i64 8, !57, i64 8, i64 8, !57}
!57 = !{!10, !10, i64 0}
!58 = !{!59, !2, i64 528}
!59 = !{!"gs_font_cid0_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !8, i64 32, !23, i64 40, !12, i64 56, !2, i64 64, !2, i64 72, !24, i64 80, !24, i64 104, !3, i64 128, !8, i64 132, !3, i64 136, !3, i64 140, !3, i64 144, !8, i64 148, !8, i64 152, !25, i64 156, !8, i64 160, !26, i64 168, !27, i64 272, !27, i64 324, !60, i64 376, !61, i64 408, !2, i64 424, !2, i64 432, !3, i64 440, !3, i64 444, !62, i64 448}
!60 = !{!"gs_rect_s", !9, i64 0, !9, i64 16}
!61 = !{!"gs_uid_s", !12, i64 0, !2, i64 8}
!62 = !{!"gs_font_cid0_data_s", !63, i64 0, !12, i64 56, !2, i64 64, !8, i64 72, !8, i64 76, !2, i64 80, !2, i64 88}
!63 = !{!"gs_font_cid_data_s", !64, i64 0, !8, i64 40, !8, i64 44, !8, i64 48}
!64 = !{!"gs_cid_system_info_s", !31, i64 0, !31, i64 16, !8, i64 32}
!65 = !{!29, !3, i64 380}
