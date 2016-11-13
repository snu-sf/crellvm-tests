; ModuleID = './gschar.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_show_enum_s = type { %struct.gs_text_params_s, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_procs_s*, %struct.rc_header_s, i8*, %struct.gs_font_s*, i64, i32, %struct.gs_log2_scale_point_s, %struct.cached_fm_pair_s*, i32, i32, %struct.gx_font_stack_s, i32, i32, i32, %struct.gs_point_s, i64, i32, %struct.gs_log2_scale_point_s, %struct.gs_point_s, %struct.gs_text_returned_s, i32, %struct.gs_state_s*, i32, i32, %struct.gs_state_s*, i32, %struct.gs_int_rect_s, %struct.gs_int_rect_s, i32, i32, i64 (%struct.gs_font_s*, i64, i32)*, %struct.gx_device_memory_s*, %struct.gx_device_memory_s*, %struct.gx_device_null_s*, %struct.gs_fixed_point_s, %struct.gs_point_s, i32, %struct.gs_fixed_point_s, %struct.cached_char_s*, i32, i32 (%struct.gs_show_enum_s*)* }
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
%struct.gs_devicen_color_map_s = type { i32, i32, i32, i32, i64, [64 x i32] }
%struct.gx_page_device_procs_s = type { i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* }
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
%struct.gs_text_enum_s = type { %struct.gs_text_params_s, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_procs_s*, %struct.rc_header_s, i8*, %struct.gs_font_s*, i64, i32, %struct.gs_log2_scale_point_s, %struct.cached_fm_pair_s*, i32, i32, %struct.gx_font_stack_s, i32, i32, i32, %struct.gs_point_s, i64, i32, %struct.gs_log2_scale_point_s, %struct.gs_point_s, %struct.gs_text_returned_s }
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
%struct.gs_imager_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s }
%struct.gx_line_params_s = type { float, i32, i32, i32, i32, i32, float, float, float, i32, %struct.gs_matrix_s, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { float*, i32, float, i32, float, i32, i32, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i32, i32, i32 }
%struct.gs_transparency_source_s = type { float }
%struct.gs_xstate_trans_flags = type { i32, i32 }
%struct.gsicc_manager_s = type { %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.gsicc_devicen_s*, %struct.gsicc_smask_s*, i32, %struct.cmm_srcgtag_profile_s*, %struct.gs_memory_s*, %struct.rc_header_s }
%struct.gsicc_devicen_s = type { %struct.gsicc_devicen_entry_s*, %struct.gsicc_devicen_entry_s*, i32 }
%struct.gsicc_devicen_entry_s = type { %struct.cmm_profile_s*, %struct.gsicc_devicen_entry_s* }
%struct.gsicc_smask_s = type { %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.gs_memory_s*, i32 }
%struct.cmm_srcgtag_profile_s = type { [3 x %struct.cmm_profile_s*], [3 x %struct.gsicc_rendering_param_s], [3 x %struct.cmm_profile_s*], [3 x %struct.gsicc_rendering_param_s], %struct.cmm_profile_s*, %struct.gs_memory_s*, i32, i8*, %struct.rc_header_s }
%struct.gsicc_profile_cache_s = type { %struct.gsicc_profile_entry_s*, i32, %struct.rc_header_s, %struct.gs_memory_s* }
%struct.gsicc_profile_entry_s = type { %struct.gs_color_space_s*, %struct.gsicc_profile_entry_s*, i64 }
%struct.gs_halftone_s = type opaque
%struct.gs_cie_render_s = type opaque
%struct.gx_transfer_map_s = type { %struct.rc_header_s, float (double, %struct.gx_transfer_map_s*)*, %struct.gs_mapping_closure_s, i64, [256 x i16] }
%struct.gs_mapping_closure_s = type { float (double, %struct.gx_transfer_map_s*, i8*)*, i8* }
%struct.gx_transfer_s = type { i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s* }
%struct.gx_color_map_procs_s = type { void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, %struct.gs_color_space_s*)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_imager_state_s*, %struct.gx_device_s*)* }
%struct.gx_pattern_cache_s = type opaque
%struct.gx_cie_joint_caches_s = type opaque
%struct.gx_path_s = type opaque
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
%struct.gx_clip_path_s = type opaque
%struct.gs_text_enum_procs_s = type { i32 (%struct.gs_text_enum_s*, %struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_point_s*)*, i32 (%struct.gs_text_enum_s*, double*, i32)*, i32 (%struct.gs_text_enum_s*)*, void (%struct.gs_text_enum_s*, i8*)* }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.gs_font_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_memory_s*, %struct.gs_font_dir_s*, i32, %struct.gs_notify_list_s, i64, %struct.gs_font_s*, i8*, %struct.gs_matrix_s, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, i32, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s }
%struct.gs_font_dir_s = type opaque
%struct.gs_notify_list_s = type { %struct.gs_memory_s*, %struct.gs_notify_registration_s* }
%struct.gs_notify_registration_s = type { i32 (i8*, i8*)*, i8*, %struct.gs_notify_registration_s* }
%struct.gs_font_procs_s = type { i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*)*, i32 (%struct.gs_font_dir_s*, %struct.gs_font_s*, %struct.gs_matrix_s*, %struct.gs_font_s**)*, i32 (%struct.gs_font_s*, %struct.gs_point_s*, i32, %struct.gs_font_info_s*)*, i32 (%struct.gs_font_s*, %struct.gs_font_s*, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i64 (%struct.gs_font_s*, i64, i32)*, i32 (%struct.gs_font_s*, i32*, i32, i64*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_matrix_s*, i32, %struct.gs_glyph_info_s*)*, i32 (%struct.gs_font_s*, i32, i64, %struct.gs_matrix_s*, %struct.gx_path_s*, double*)*, i32 (%struct.gs_font_s*, i64, %struct.gs_const_string_s*)*, i32 (%struct.gs_text_enum_s*, %struct.gs_font_s*)*, i32 (%struct.gs_text_enum_s*, i64*, i64*)*, i32 (%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i64, i64)* }
%struct.gs_font_info_s = type { i32, i32, i32, %struct.gs_int_rect_s, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.gs_glyph_info_s = type { i32, [2 x %struct.gs_point_s], %struct.gs_point_s, %struct.gs_rect_s, i32, i64* }
%struct.gs_font_name_s = type { [48 x i8], i32 }
%struct.cached_fm_pair_s = type opaque
%struct.gx_font_stack_s = type { i32, [6 x %struct.gx_font_stack_item_s] }
%struct.gx_font_stack_item_s = type { %struct.gs_font_s*, i32 }
%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.gs_text_returned_s = type { i64, i64, %struct.gs_point_s }
%struct.gs_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s, %struct.gs_state_s*, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, %struct.gx_path_s*, %struct.gx_clip_path_s*, %struct.gx_clip_stack_s*, %struct.gx_clip_path_s*, i64, i64, %struct.gx_clip_path_s*, i32, [2 x %struct.anon], %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_matrix_fixed_s, i32, i32, i32, %struct.gs_state_s*, i32, %struct.gx_device_s*, %struct.gs_device_filter_stack_s*, %struct.gs_state_client_procs_s }
%struct.gx_clip_stack_s = type opaque
%struct.anon = type { %struct.gs_color_space_s*, %struct.gs_client_color_s*, %struct.gx_device_color_s* }
%struct.gs_device_filter_stack_s = type { %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_s*, %struct.gx_device_s*, %struct.rc_header_s }
%struct.gs_device_filter_s = type opaque
%struct.gs_state_client_procs_s = type { i8* (%struct.gs_memory_s*)*, i32 (i8*, i8*)*, void (i8*, %struct.gs_memory_s*)*, i32 (i8*, i8*, i32)* }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gx_device_memory_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, i32, i8*, %struct.gs_memory_s*, i32, %struct.gs_memory_s*, i32, [64 x %struct.gx_render_plane_s], %struct.gs_matrix_s, i8**, %struct.gs_const_string_s, %struct._c24, %struct._c40, %struct._c48, %struct._c56, %struct._c64, %struct.gs_log2_scale_point_s, i32, i32, i32, i32, i32, i64, %struct.gx_device_color_s*, i32, i32 }
%struct.gx_render_plane_s = type { i32, i32, i32 }
%struct._c24 = type { i64, i32, i32, i32 }
%struct._c40 = type { i64, i32, i32, i32, i32, i32 }
%struct._c48 = type { i64, i32, i32, i32 }
%struct._c56 = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct._c64 = type { i64, i32, i32 }
%struct.gx_device_null_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s* }
%struct.gs_point_s = type { double, double }
%struct.gs_fixed_point_s = type { i32, i32 }
%struct.cached_char_s = type opaque
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_gc_root_s = type { %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i32 }
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type opaque
%struct.gs_fapi_server_s = type opaque

@.str = private unnamed_addr constant [21 x i8] c"gs_show_enum_release\00", align 1

; Function Attrs: nounwind uwtable
define void @gs_show_enum_release(%struct.gs_show_enum_s* %penum, %struct.gs_memory_s* %emem) #0 {
entry:
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  %emem.addr = alloca %struct.gs_memory_s*, align 8
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %emem, %struct.gs_memory_s** %emem.addr, align 8, !tbaa !1
  %0 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %0, i32 0, i32 0
  %operation = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 0
  %1 = load i32, i32* %operation, align 4, !tbaa !5
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %2, i32 0, i32 9
  %3 = load %struct.gs_text_enum_procs_s*, %struct.gs_text_enum_procs_s** %procs, align 8, !tbaa !19
  %release = getelementptr inbounds %struct.gs_text_enum_procs_s, %struct.gs_text_enum_procs_s* %3, i32 0, i32 6
  %4 = load void (%struct.gs_text_enum_s*, i8*)*, void (%struct.gs_text_enum_s*, i8*)** %release, align 8, !tbaa !20
  %5 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gs_show_enum_s* %5 to %struct.gs_text_enum_s*
  call void %4(%struct.gs_text_enum_s* %6, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0)) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %emem.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.gs_memory_s* %7, null
  br i1 %cmp, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %if.end
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %emem.addr, align 8, !tbaa !1
  %procs2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %8, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs2, i32 0, i32 2
  %9 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !22
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %emem.addr, align 8, !tbaa !1
  %11 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %12 = bitcast %struct.gs_show_enum_s* %11 to i8*
  call void %9(%struct.gs_memory_s* %10, i8* %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0)) #3
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.1, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gs_setcachedevice_double(%struct.gs_show_enum_s* %penum, %struct.gs_state_s* %pgs, double* %pw) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pw.addr = alloca double*, align 8
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store double* %pw, double** %pw.addr, align 8, !tbaa !1
  %0 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %pgs1 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %0, i32 0, i32 30
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs1, align 8, !tbaa !25
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.gs_state_s* %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gs_show_enum_s* %3 to %struct.gs_text_enum_s*
  %5 = load double*, double** %pw.addr, align 8, !tbaa !1
  %call = call i32 @gs_text_setcachedevice(%struct.gs_text_enum_s* %4, double* %5) #3
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

declare i32 @gs_text_setcachedevice(%struct.gs_text_enum_s*, double*) #1

; Function Attrs: nounwind uwtable
define i32 @gs_setcachedevice_float(%struct.gs_show_enum_s* %penum, %struct.gs_state_s* %pgs, float* %pw) #0 {
entry:
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pw.addr = alloca float*, align 8
  %w = alloca [6 x double], align 16
  %i = alloca i32, align 4
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store float* %pw, float** %pw.addr, align 8, !tbaa !1
  %0 = bitcast [6 x double]* %w to i8*
  call void @llvm.lifetime.start(i64 48, i8* %0) #2
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  store i32 0, i32* %i, align 4, !tbaa !26
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !26
  %cmp = icmp slt i32 %2, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !tbaa !26
  %idxprom = sext i32 %3 to i64
  %4 = load float*, float** %pw.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %4, i64 %idxprom
  %5 = load float, float* %arrayidx, align 4, !tbaa !27
  %conv = fpext float %5 to double
  %6 = load i32, i32* %i, align 4, !tbaa !26
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds [6 x double], [6 x double]* %w, i32 0, i64 %idxprom1
  store double %conv, double* %arrayidx2, align 8, !tbaa !29
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !tbaa !26
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4, !tbaa !26
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [6 x double], [6 x double]* %w, i32 0, i32 0
  %call = call i32 @gs_setcachedevice_double(%struct.gs_show_enum_s* %8, %struct.gs_state_s* %9, double* %arraydecay) #3
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #2
  %11 = bitcast [6 x double]* %w to i8*
  call void @llvm.lifetime.end(i64 48, i8* %11) #2
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @gs_setcachedevice2_double(%struct.gs_show_enum_s* %penum, %struct.gs_state_s* %pgs, double* %pw2) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pw2.addr = alloca double*, align 8
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store double* %pw2, double** %pw2.addr, align 8, !tbaa !1
  %0 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %pgs1 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %0, i32 0, i32 30
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs1, align 8, !tbaa !25
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.gs_state_s* %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gs_show_enum_s* %3 to %struct.gs_text_enum_s*
  %5 = load double*, double** %pw2.addr, align 8, !tbaa !1
  %call = call i32 @gs_text_setcachedevice2(%struct.gs_text_enum_s* %4, double* %5) #3
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

declare i32 @gs_text_setcachedevice2(%struct.gs_text_enum_s*, double*) #1

; Function Attrs: nounwind uwtable
define i32 @gs_setcachedevice2_float(%struct.gs_show_enum_s* %penum, %struct.gs_state_s* %pgs, float* %pw2) #0 {
entry:
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pw2.addr = alloca float*, align 8
  %w2 = alloca [10 x double], align 16
  %i = alloca i32, align 4
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store float* %pw2, float** %pw2.addr, align 8, !tbaa !1
  %0 = bitcast [10 x double]* %w2 to i8*
  call void @llvm.lifetime.start(i64 80, i8* %0) #2
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  store i32 0, i32* %i, align 4, !tbaa !26
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !26
  %cmp = icmp slt i32 %2, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !tbaa !26
  %idxprom = sext i32 %3 to i64
  %4 = load float*, float** %pw2.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %4, i64 %idxprom
  %5 = load float, float* %arrayidx, align 4, !tbaa !27
  %conv = fpext float %5 to double
  %6 = load i32, i32* %i, align 4, !tbaa !26
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds [10 x double], [10 x double]* %w2, i32 0, i64 %idxprom1
  store double %conv, double* %arrayidx2, align 8, !tbaa !29
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !tbaa !26
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4, !tbaa !26
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [10 x double], [10 x double]* %w2, i32 0, i32 0
  %call = call i32 @gs_setcachedevice2_double(%struct.gs_show_enum_s* %8, %struct.gs_state_s* %9, double* %arraydecay) #3
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #2
  %11 = bitcast [10 x double]* %w2 to i8*
  call void @llvm.lifetime.end(i64 80, i8* %11) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @gs_setcharwidth(%struct.gs_show_enum_s* %penum, %struct.gs_state_s* %pgs, double %wx, double %wy) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %wx.addr = alloca double, align 8
  %wy.addr = alloca double, align 8
  %w = alloca [2 x double], align 16
  %cleanup.dest.slot = alloca i32
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store double %wx, double* %wx.addr, align 8, !tbaa !29
  store double %wy, double* %wy.addr, align 8, !tbaa !29
  %0 = bitcast [2 x double]* %w to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #2
  %1 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %pgs1 = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %1, i32 0, i32 30
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs1, align 8, !tbaa !25
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.gs_state_s* %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load double, double* %wx.addr, align 8, !tbaa !29
  %arrayidx = getelementptr inbounds [2 x double], [2 x double]* %w, i32 0, i64 0
  store double %4, double* %arrayidx, align 8, !tbaa !29
  %5 = load double, double* %wy.addr, align 8, !tbaa !29
  %arrayidx2 = getelementptr inbounds [2 x double], [2 x double]* %w, i32 0, i64 1
  store double %5, double* %arrayidx2, align 8, !tbaa !29
  %6 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %7 = bitcast %struct.gs_show_enum_s* %6 to %struct.gs_text_enum_s*
  %arraydecay = getelementptr inbounds [2 x double], [2 x double]* %w, i32 0, i32 0
  %call = call i32 @gs_text_setcharwidth(%struct.gs_text_enum_s* %7, double* %arraydecay) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %8 = bitcast [2 x double]* %w to i8*
  call void @llvm.lifetime.end(i64 16, i8* %8) #2
  %9 = load i32, i32* %retval
  ret i32 %9
}

declare i32 @gs_text_setcharwidth(%struct.gs_text_enum_s*, double*) #1

; Function Attrs: nounwind uwtable
define i32 @gs_show_next(%struct.gs_show_enum_s* %penum) #0 {
entry:
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gs_show_enum_s* %0 to %struct.gs_text_enum_s*
  %call = call i32 @gs_text_process(%struct.gs_text_enum_s* %1) #3
  ret i32 %call
}

declare i32 @gs_text_process(%struct.gs_text_enum_s*) #1

; Function Attrs: nounwind uwtable
define i32 @gs_show_width_only(%struct.gs_show_enum_s* %penum) #0 {
entry:
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gs_show_enum_s* %0 to %struct.gs_text_enum_s*
  %call = call i32 @gs_text_is_width_only(%struct.gs_text_enum_s* %1) #3
  ret i32 %call
}

declare i32 @gs_text_is_width_only(%struct.gs_text_enum_s*) #1

; Function Attrs: nounwind uwtable
define i64 @gs_show_current_char(%struct.gs_show_enum_s* %penum) #0 {
entry:
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gs_show_enum_s* %0 to %struct.gs_text_enum_s*
  %call = call i64 @gs_text_current_char(%struct.gs_text_enum_s* %1) #3
  ret i64 %call
}

declare i64 @gs_text_current_char(%struct.gs_text_enum_s*) #1

; Function Attrs: nounwind uwtable
define i64 @gs_show_current_glyph(%struct.gs_show_enum_s* %penum) #0 {
entry:
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gs_show_enum_s* %0 to %struct.gs_text_enum_s*
  %call = call i64 @gs_text_current_glyph(%struct.gs_text_enum_s* %1) #3
  ret i64 %call
}

declare i64 @gs_text_current_glyph(%struct.gs_text_enum_s*) #1

; Function Attrs: nounwind uwtable
define i32 @gs_show_current_width(%struct.gs_show_enum_s* %penum, %struct.gs_point_s* %ppt) #0 {
entry:
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  %ppt.addr = alloca %struct.gs_point_s*, align 8
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  store %struct.gs_point_s* %ppt, %struct.gs_point_s** %ppt.addr, align 8, !tbaa !1
  %0 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gs_show_enum_s* %0 to %struct.gs_text_enum_s*
  %2 = load %struct.gs_point_s*, %struct.gs_point_s** %ppt.addr, align 8, !tbaa !1
  %call = call i32 @gs_text_current_width(%struct.gs_text_enum_s* %1, %struct.gs_point_s* %2) #3
  ret i32 %call
}

declare i32 @gs_text_current_width(%struct.gs_text_enum_s*, %struct.gs_point_s*) #1

; Function Attrs: nounwind uwtable
define i64 @gs_kshow_previous_char(%struct.gs_show_enum_s* %penum) #0 {
entry:
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gs_show_enum_s* %0 to %struct.gs_text_enum_s*
  %call = call i64 @gs_text_current_char(%struct.gs_text_enum_s* %1) #3
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @gs_kshow_next_char(%struct.gs_show_enum_s* %penum) #0 {
entry:
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %0, i32 0, i32 17
  %1 = load i32, i32* %index, align 4, !tbaa !30
  %idxprom = zext i32 %1 to i64
  %2 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %text = getelementptr inbounds %struct.gs_show_enum_s, %struct.gs_show_enum_s* %2, i32 0, i32 0
  %data = getelementptr inbounds %struct.gs_text_params_s, %struct.gs_text_params_s* %text, i32 0, i32 1
  %bytes = bitcast %union.sd_* %data to i8**
  %3 = load i8*, i8** %bytes, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !31
  %conv = zext i8 %4 to i64
  ret i64 %conv
}

; Function Attrs: nounwind uwtable
define void @gs_show_width(%struct.gs_show_enum_s* %penum, %struct.gs_point_s* %ppt) #0 {
entry:
  %penum.addr = alloca %struct.gs_show_enum_s*, align 8
  %ppt.addr = alloca %struct.gs_point_s*, align 8
  store %struct.gs_show_enum_s* %penum, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  store %struct.gs_point_s* %ppt, %struct.gs_point_s** %ppt.addr, align 8, !tbaa !1
  %0 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %penum.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gs_show_enum_s* %0 to %struct.gs_text_enum_s*
  %2 = load %struct.gs_point_s*, %struct.gs_point_s** %ppt.addr, align 8, !tbaa !1
  %call = call i32 @gs_text_total_width(%struct.gs_text_enum_s* %1, %struct.gs_point_s* %2) #3
  ret void
}

declare i32 @gs_text_total_width(%struct.gs_text_enum_s*, %struct.gs_point_s*) #1

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
!5 = !{!6, !8, i64 0}
!6 = !{!"gs_show_enum_s", !7, i64 0, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !11, i64 160, !2, i64 184, !2, i64 192, !12, i64 200, !8, i64 208, !13, i64 212, !2, i64 224, !8, i64 232, !8, i64 236, !14, i64 240, !8, i64 344, !8, i64 348, !8, i64 352, !9, i64 360, !12, i64 376, !8, i64 384, !13, i64 388, !9, i64 400, !15, i64 416, !8, i64 448, !2, i64 456, !8, i64 464, !3, i64 468, !2, i64 472, !8, i64 480, !16, i64 484, !16, i64 500, !8, i64 516, !8, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !18, i64 560, !9, i64 568, !8, i64 584, !18, i64 588, !2, i64 600, !3, i64 608, !2, i64 616}
!7 = !{!"gs_text_params_s", !8, i64 0, !3, i64 8, !8, i64 16, !9, i64 24, !9, i64 40, !3, i64 56, !2, i64 64, !2, i64 72, !8, i64 80}
!8 = !{!"int", !3, i64 0}
!9 = !{!"gs_point_s", !10, i64 0, !10, i64 8}
!10 = !{!"double", !3, i64 0}
!11 = !{!"rc_header_s", !12, i64 0, !2, i64 8, !2, i64 16}
!12 = !{!"long", !3, i64 0}
!13 = !{!"gs_log2_scale_point_s", !8, i64 0, !8, i64 4}
!14 = !{!"gx_font_stack_s", !8, i64 0, !3, i64 8}
!15 = !{!"gs_text_returned_s", !12, i64 0, !12, i64 8, !9, i64 16}
!16 = !{!"gs_int_rect_s", !17, i64 0, !17, i64 8}
!17 = !{!"gs_int_point_s", !8, i64 0, !8, i64 4}
!18 = !{!"gs_fixed_point_s", !8, i64 0, !8, i64 4}
!19 = !{!6, !2, i64 152}
!20 = !{!21, !2, i64 48}
!21 = !{!"gs_text_enum_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!22 = !{!23, !2, i64 24}
!23 = !{!"gs_memory_s", !2, i64 0, !24, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!24 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!25 = !{!6, !2, i64 456}
!26 = !{!8, !8, i64 0}
!27 = !{!28, !28, i64 0}
!28 = !{!"float", !3, i64 0}
!29 = !{!10, !10, i64 0}
!30 = !{!6, !8, i64 232}
!31 = !{!3, !3, i64 0}
