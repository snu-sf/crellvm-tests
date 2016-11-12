; ModuleID = './gdevdgbr.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_device_memory_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, i32, i8*, %struct.gs_memory_s*, i32, %struct.gs_memory_s*, i32, [64 x %struct.gx_render_plane_s], %struct.gs_matrix_s, i8**, %struct.gs_const_string_s, %struct._c24, %struct._c40, %struct._c48, %struct._c56, %struct._c64, %struct.gs_log2_scale_point_s, i32, i32, i32, i32, i32, i64, %struct.gx_device_color_s*, i32, i32 }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
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
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, {}*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
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
%struct.gx_render_plane_s = type { i32, i32, i32 }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_const_string_s = type { i8*, i32 }
%struct._c24 = type { i64, i32, i32, i32 }
%struct._c40 = type { i64, i32, i32, i32, i32, i32 }
%struct._c48 = type { i64, i32, i32, i32 }
%struct._c56 = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct._c64 = type { i64, i32, i32 }
%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.gx_device_color_s = type { %struct.gx_device_color_type_s*, %union._c, %struct.gs_int_point_s, i32, %struct.gs_client_color_s, %struct._mask }
%struct.gx_device_color_type_s = type opaque
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type opaque
%struct.bits_plane_s = type { %union.bpd_, i32, i32, i32 }
%union.bpd_ = type { i8* }

@mem_mono_device = external constant %struct.gx_device_memory_s, align 8
@.str = private unnamed_addr constant [30 x i8] c"gx_default_get_bits_rectangle\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"\00\01\02\02\04\04\04\04\08\08\08\08\08\08\08\08\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"\00\00\0C\10\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gx_no_get_bits(%struct.gx_device_s* %dev, i32 %y, i8* %data, i8** %actual_data) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %y.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %actual_data.addr = alloca i8**, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i8** %actual_data, i8*** %actual_data.addr, align 8, !tbaa !1
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_get_bits(%struct.gx_device_s* %dev, i32 %y, i8* %data, i8** %actual_data) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %y.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %actual_data.addr = alloca i8**, align 8
  %save_get_bits = alloca i32 (%struct.gx_device_s*, i32, i8*, i8**)*, align 8
  %rect = alloca %struct.gs_int_rect_s, align 4
  %params = alloca %struct.gs_get_bits_params_s, align 8
  %code = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i8** %actual_data, i8*** %actual_data.addr, align 8, !tbaa !1
  %0 = bitcast i32 (%struct.gx_device_s*, i32, i8*, i8**)** %save_get_bits to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 42
  %get_bits = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 12
  %get_bits1 = bitcast {}** %get_bits to i32 (%struct.gx_device_s*, i32, i8*, i8**)**
  %2 = load i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)** %get_bits1, align 8, !tbaa !7
  store i32 (%struct.gx_device_s*, i32, i8*, i8**)* %2, i32 (%struct.gx_device_s*, i32, i8*, i8**)** %save_get_bits, align 8, !tbaa !1
  %3 = bitcast %struct.gs_int_rect_s* %rect to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #1
  %4 = bitcast %struct.gs_get_bits_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 536, i8* %4) #1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  store i32 0, i32* %x, align 4, !tbaa !20
  %6 = load i32, i32* %y.addr, align 4, !tbaa !5
  %p2 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %y3 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p2, i32 0, i32 1
  store i32 %6, i32* %y3, align 4, !tbaa !23
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 13
  %8 = load i32, i32* %width, align 4, !tbaa !24
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 1
  %x4 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  store i32 %8, i32* %x4, align 4, !tbaa !25
  %9 = load i32, i32* %y.addr, align 4, !tbaa !5
  %add = add nsw i32 %9, 1
  %q5 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 1
  %y6 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q5, i32 0, i32 1
  store i32 %add, i32* %y6, align 4, !tbaa !26
  %10 = load i8**, i8*** %actual_data.addr, align 8, !tbaa !1
  %tobool = icmp ne i8** %10, null
  %cond = select i1 %tobool, i64 2097152, i64 0
  %or = or i64 %cond, 1048576
  %or7 = or i64 %or, 289472529
  %options = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params, i32 0, i32 0
  store i64 %or7, i64* %options, align 8, !tbaa !27
  %x_offset = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params, i32 0, i32 2
  store i32 0, i32* %x_offset, align 4, !tbaa !29
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width8 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 13
  %12 = load i32, i32* %width8, align 4, !tbaa !24
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %13, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %14 = load i16, i16* %depth, align 2, !tbaa !30
  %conv = zext i16 %14 to i32
  %mul = mul nsw i32 %12, %conv
  %add9 = add nsw i32 %mul, 63
  %shr = ashr i32 %add9, 6
  %shl = shl i32 %shr, 3
  %raster = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params, i32 0, i32 4
  store i32 %shl, i32* %raster, align 4, !tbaa !31
  %15 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %data10 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params, i32 0, i32 1
  %arrayidx = getelementptr inbounds [64 x i8*], [64 x i8*]* %data10, i32 0, i64 0
  store i8* %15, i8** %arrayidx, align 8, !tbaa !1
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs11 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %16, i32 0, i32 42
  %get_bits12 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs11, i32 0, i32 12
  %get_bits13 = bitcast {}** %get_bits12 to i32 (%struct.gx_device_s*, i32, i8*, i8**)**
  store i32 (%struct.gx_device_s*, i32, i8*, i8**)* @gx_no_get_bits, i32 (%struct.gx_device_s*, i32, i8*, i8**)** %get_bits13, align 8, !tbaa !7
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs14 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 42
  %get_bits_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs14, i32 0, i32 38
  %18 = load i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %get_bits_rectangle, align 8, !tbaa !32
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 %18(%struct.gx_device_s* %19, %struct.gs_int_rect_s* %rect, %struct.gs_get_bits_params_s* %params, %struct.gs_int_rect_s** null) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %20 = load i8**, i8*** %actual_data.addr, align 8, !tbaa !1
  %tobool15 = icmp ne i8** %20, null
  br i1 %tobool15, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %data16 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data16, i32 0, i64 0
  %21 = load i8*, i8** %arrayidx17, align 8, !tbaa !1
  %22 = load i8**, i8*** %actual_data.addr, align 8, !tbaa !1
  store i8* %21, i8** %22, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %23 = load i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)** %save_get_bits, align 8, !tbaa !1
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %24, i32 0, i32 42
  %get_bits19 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs18, i32 0, i32 12
  %get_bits20 = bitcast {}** %get_bits19 to i32 (%struct.gx_device_s*, i32, i8*, i8**)**
  store i32 (%struct.gx_device_s*, i32, i8*, i8**)* %23, i32 (%struct.gx_device_s*, i32, i8*, i8**)** %get_bits20, align 8, !tbaa !7
  %25 = load i32, i32* %code, align 4, !tbaa !5
  %26 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast %struct.gs_get_bits_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 536, i8* %27) #1
  %28 = bitcast %struct.gs_int_rect_s* %rect to i8*
  call void @llvm.lifetime.end(i64 16, i8* %28) #1
  %29 = bitcast i32 (%struct.gx_device_s*, i32, i8*, i8**)** %save_get_bits to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  ret i32 %25
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @gx_get_bits_return_pointer(%struct.gx_device_s* %dev, i32 %x, i32 %h, %struct.gs_get_bits_params_s* %params, %struct.gs_get_bits_params_s* %stored, i8** %stored_base) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %x.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %params.addr = alloca %struct.gs_get_bits_params_s*, align 8
  %stored.addr = alloca %struct.gs_get_bits_params_s*, align 8
  %stored_base.addr = alloca i8**, align 8
  %options = alloca i64, align 8
  %both = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %depth = alloca i32, align 4
  %dev_raster = alloca i32, align 4
  %raster = alloca i32, align 4
  %base = alloca i8*, align 8
  %x_offset = alloca i32, align 4
  %align_mod = alloca i32, align 4
  %bit_offset = alloca i32, align 4
  %bytes = alloca i32, align 4
  %step = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store %struct.gs_get_bits_params_s* %params, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gs_get_bits_params_s* %stored, %struct.gs_get_bits_params_s** %stored.addr, align 8, !tbaa !1
  store i8** %stored_base, i8*** %stored_base.addr, align 8, !tbaa !1
  %0 = bitcast i64* %options to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %options1 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %1, i32 0, i32 0
  %2 = load i64, i64* %options1, align 8, !tbaa !27
  store i64 %2, i64* %options, align 8, !tbaa !33
  %3 = bitcast i64* %both to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i64, i64* %options, align 8, !tbaa !33
  %5 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %stored.addr, align 8, !tbaa !1
  %options2 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %5, i32 0, i32 0
  %6 = load i64, i64* %options2, align 8, !tbaa !27
  %and = and i64 %4, %6
  store i64 %and, i64* %both, align 8, !tbaa !33
  %7 = load i64, i64* %options, align 8, !tbaa !33
  %and3 = and i64 %7, 2097152
  %tobool = icmp ne i64 %and3, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %9 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %10 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %stored.addr, align 8, !tbaa !1
  %call = call i32 @requested_includes_stored(%struct.gx_device_s* %8, %struct.gs_get_bits_params_s* %9, %struct.gs_get_bits_params_s* %10) #4
  %tobool4 = icmp ne i32 %call, 0
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.125

if.end:                                           ; preds = %lor.lhs.false
  %11 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i32 0, i32 11
  %depth5 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %13 = load i16, i16* %depth5, align 2, !tbaa !30
  %conv = zext i16 %13 to i32
  store i32 %conv, i32* %depth, align 4, !tbaa !5
  %14 = bitcast i32* %dev_raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call6 = call i32 @gx_device_raster(%struct.gx_device_s* %15, i32 1) #4
  store i32 %call6, i32* %dev_raster, align 4, !tbaa !5
  %16 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load i64, i64* %options, align 8, !tbaa !33
  %and7 = and i64 %17, 1342177280
  %tobool8 = icmp ne i64 %and7, 0
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %18 = load i32, i32* %dev_raster, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %19 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %raster9 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %19, i32 0, i32 4
  %20 = load i32, i32* %raster9, align 4, !tbaa !31
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %18, %cond.true ], [ %20, %cond.false ]
  store i32 %cond, i32* %raster, align 4, !tbaa !5
  %21 = bitcast i8** %base to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp = icmp sle i32 %22, 1
  br i1 %cmp, label %if.then.14, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %cond.end
  %23 = load i32, i32* %raster, align 4, !tbaa !5
  %24 = load i32, i32* %dev_raster, align 4, !tbaa !5
  %cmp12 = icmp eq i32 %23, %24
  br i1 %cmp12, label %if.then.14, label %if.end.118

if.then.14:                                       ; preds = %lor.lhs.false.11, %cond.end
  %25 = bitcast i32* %x_offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  %26 = load i64, i64* %options, align 8, !tbaa !33
  %and15 = and i64 %26, 67108864
  %tobool16 = icmp ne i64 %and15, 0
  br i1 %tobool16, label %cond.true.17, label %cond.false.18

cond.true.17:                                     ; preds = %if.then.14
  %27 = load i32, i32* %x.addr, align 4, !tbaa !5
  br label %cond.end.26

cond.false.18:                                    ; preds = %if.then.14
  %28 = load i64, i64* %options, align 8, !tbaa !33
  %and19 = and i64 %28, 16777216
  %tobool20 = icmp ne i64 %and19, 0
  br i1 %tobool20, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %cond.false.18
  br label %cond.end.24

cond.false.22:                                    ; preds = %cond.false.18
  %29 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %x_offset23 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %29, i32 0, i32 2
  %30 = load i32, i32* %x_offset23, align 4, !tbaa !29
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.22, %cond.true.21
  %cond25 = phi i32 [ 0, %cond.true.21 ], [ %30, %cond.false.22 ]
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.end.24, %cond.true.17
  %cond27 = phi i32 [ %27, %cond.true.17 ], [ %cond25, %cond.end.24 ]
  store i32 %cond27, i32* %x_offset, align 4, !tbaa !5
  %31 = load i32, i32* %x_offset, align 4, !tbaa !5
  %32 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp28 = icmp eq i32 %31, %32
  br i1 %cmp28, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %cond.end.26
  %33 = load i8**, i8*** %stored_base.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %33, i64 0
  %34 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  store i8* %34, i8** %base, align 8, !tbaa !1
  %35 = load i32, i32* %x.addr, align 4, !tbaa !5
  %36 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %x_offset31 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %36, i32 0, i32 2
  store i32 %35, i32* %x_offset31, align 4, !tbaa !29
  br label %if.end.59

if.else:                                          ; preds = %cond.end.26
  %37 = bitcast i32* %align_mod to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %38 = load i64, i64* %options, align 8, !tbaa !33
  %and32 = and i64 %38, 8388608
  %tobool33 = icmp ne i64 %and32, 0
  %cond34 = select i1 %tobool33, i32 8, i32 64
  store i32 %cond34, i32* %align_mod, align 4, !tbaa !5
  %39 = bitcast i32* %bit_offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  %40 = load i32, i32* %x.addr, align 4, !tbaa !5
  %41 = load i32, i32* %x_offset, align 4, !tbaa !5
  %sub = sub nsw i32 %40, %41
  store i32 %sub, i32* %bit_offset, align 4, !tbaa !5
  %42 = bitcast i32* %bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #1
  %43 = load i32, i32* %bit_offset, align 4, !tbaa !5
  %44 = load i32, i32* %align_mod, align 4, !tbaa !5
  %sub35 = sub i32 %44, 1
  %and36 = and i32 %43, %sub35
  %tobool37 = icmp ne i32 %and36, 0
  br i1 %tobool37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.else
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.39:                                        ; preds = %if.else
  %45 = load i32, i32* %depth, align 4, !tbaa !5
  %46 = load i32, i32* %depth, align 4, !tbaa !5
  %sub40 = sub nsw i32 %46, 1
  %and41 = and i32 %45, %sub40
  %tobool42 = icmp ne i32 %and41, 0
  br i1 %tobool42, label %if.then.43, label %if.else.47

if.then.43:                                       ; preds = %if.end.39
  %47 = bitcast i32* %step to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #1
  %48 = load i32, i32* %depth, align 4, !tbaa !5
  %49 = load i32, i32* %depth, align 4, !tbaa !5
  %50 = load i32, i32* %align_mod, align 4, !tbaa !5
  %call44 = call i32 @igcd(i32 %49, i32 %50) #4
  %div = sdiv i32 %48, %call44
  %51 = load i32, i32* %align_mod, align 4, !tbaa !5
  %mul = mul i32 %div, %51
  store i32 %mul, i32* %step, align 4, !tbaa !5
  %52 = load i32, i32* %bit_offset, align 4, !tbaa !5
  %53 = load i32, i32* %step, align 4, !tbaa !5
  %div45 = sdiv i32 %52, %53
  %54 = load i32, i32* %step, align 4, !tbaa !5
  %mul46 = mul nsw i32 %div45, %54
  store i32 %mul46, i32* %bytes, align 4, !tbaa !5
  %55 = bitcast i32* %step to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  br label %if.end.52

if.else.47:                                       ; preds = %if.end.39
  %56 = load i32, i32* %bit_offset, align 4, !tbaa !5
  %57 = load i32, i32* %depth, align 4, !tbaa !5
  %sub48 = sub nsw i32 0, %57
  %58 = load i32, i32* %align_mod, align 4, !tbaa !5
  %sub49 = sub nsw i32 0, %58
  %and50 = and i32 %sub48, %sub49
  %and51 = and i32 %56, %and50
  store i32 %and51, i32* %bytes, align 4, !tbaa !5
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.47, %if.then.43
  %59 = load i8**, i8*** %stored_base.addr, align 8, !tbaa !1
  %arrayidx53 = getelementptr inbounds i8*, i8** %59, i64 0
  %60 = load i8*, i8** %arrayidx53, align 8, !tbaa !1
  %61 = load i32, i32* %bytes, align 4, !tbaa !5
  %shr = ashr i32 %61, 3
  %idx.ext = sext i32 %shr to i64
  %add.ptr = getelementptr inbounds i8, i8* %60, i64 %idx.ext
  store i8* %add.ptr, i8** %base, align 8, !tbaa !1
  %62 = load i32, i32* %bit_offset, align 4, !tbaa !5
  %63 = load i32, i32* %bytes, align 4, !tbaa !5
  %sub54 = sub nsw i32 %62, %63
  %64 = load i32, i32* %depth, align 4, !tbaa !5
  %div55 = sdiv i32 %sub54, %64
  %65 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %x_offset56 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %65, i32 0, i32 2
  store i32 %div55, i32* %x_offset56, align 4, !tbaa !29
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.52, %if.then.38
  %66 = bitcast i32* %bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast i32* %bit_offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = bitcast i32* %align_mod to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.117 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.59

if.end.59:                                        ; preds = %cleanup.cont, %if.then.30
  %69 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %stored.addr, align 8, !tbaa !1
  %options60 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %69, i32 0, i32 0
  %70 = load i64, i64* %options60, align 8, !tbaa !27
  %and61 = and i64 %70, -458753
  %or = or i64 274726912, %and61
  %71 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %x_offset62 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %71, i32 0, i32 2
  %72 = load i32, i32* %x_offset62, align 4, !tbaa !29
  %cmp63 = icmp eq i32 %72, 0
  %cond65 = select i1 %cmp63, i64 16777216, i64 33554432
  %or66 = or i64 %or, %cond65
  %73 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %options67 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %73, i32 0, i32 0
  store i64 %or66, i64* %options67, align 8, !tbaa !27
  %74 = load i64, i64* %both, align 8, !tbaa !33
  %and68 = and i64 %74, 65536
  %tobool69 = icmp ne i64 %and68, 0
  br i1 %tobool69, label %if.then.70, label %if.else.74

if.then.70:                                       ; preds = %if.end.59
  %75 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %options71 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %75, i32 0, i32 0
  %76 = load i64, i64* %options71, align 8, !tbaa !27
  %or72 = or i64 %76, 65536
  store i64 %or72, i64* %options71, align 8, !tbaa !27
  %77 = load i8*, i8** %base, align 8, !tbaa !1
  %78 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %78, i32 0, i32 1
  %arrayidx73 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data, i32 0, i64 0
  store i8* %77, i8** %arrayidx73, align 8, !tbaa !1
  br label %if.end.116

if.else.74:                                       ; preds = %if.end.59
  %79 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %79) #1
  %80 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %stored.addr, align 8, !tbaa !1
  %options75 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %80, i32 0, i32 0
  %81 = load i64, i64* %options75, align 8, !tbaa !27
  %and76 = and i64 %81, 262144
  %tobool77 = icmp ne i64 %and76, 0
  br i1 %tobool77, label %cond.true.78, label %cond.false.84

cond.true.78:                                     ; preds = %if.else.74
  %82 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %options79 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %82, i32 0, i32 0
  %83 = load i64, i64* %options79, align 8, !tbaa !27
  %or80 = or i64 %83, 262144
  store i64 %or80, i64* %options79, align 8, !tbaa !27
  %84 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info81 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %84, i32 0, i32 11
  %depth82 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info81, i32 0, i32 3
  %85 = load i16, i16* %depth82, align 2, !tbaa !30
  %conv83 = zext i16 %85 to i32
  br label %cond.end.88

cond.false.84:                                    ; preds = %if.else.74
  %86 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %options85 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %86, i32 0, i32 0
  %87 = load i64, i64* %options85, align 8, !tbaa !27
  %or86 = or i64 %87, 131072
  store i64 %or86, i64* %options85, align 8, !tbaa !27
  %88 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info87 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %88, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info87, i32 0, i32 1
  %89 = load i32, i32* %num_components, align 4, !tbaa !34
  br label %cond.end.88

cond.end.88:                                      ; preds = %cond.false.84, %cond.true.78
  %cond89 = phi i32 [ %conv83, %cond.true.78 ], [ %89, %cond.false.84 ]
  store i32 %cond89, i32* %n, align 4, !tbaa !5
  %90 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %90) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.88
  %91 = load i32, i32* %i, align 4, !tbaa !5
  %92 = load i32, i32* %n, align 4, !tbaa !5
  %cmp90 = icmp slt i32 %91, %92
  br i1 %cmp90, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %93 = load i64, i64* %both, align 8, !tbaa !33
  %and92 = and i64 %93, 524288
  %tobool93 = icmp ne i64 %and92, 0
  br i1 %tobool93, label %lor.lhs.false.94, label %if.then.99

lor.lhs.false.94:                                 ; preds = %for.body
  %94 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %94 to i64
  %95 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %stored.addr, align 8, !tbaa !1
  %data95 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %95, i32 0, i32 1
  %arrayidx96 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data95, i32 0, i64 %idxprom
  %96 = load i8*, i8** %arrayidx96, align 8, !tbaa !1
  %cmp97 = icmp ne i8* %96, null
  br i1 %cmp97, label %if.then.99, label %if.end.103

if.then.99:                                       ; preds = %lor.lhs.false.94, %for.body
  %97 = load i8*, i8** %base, align 8, !tbaa !1
  %98 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom100 = sext i32 %98 to i64
  %99 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %data101 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %99, i32 0, i32 1
  %arrayidx102 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data101, i32 0, i64 %idxprom100
  store i8* %97, i8** %arrayidx102, align 8, !tbaa !1
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.99, %lor.lhs.false.94
  %100 = load i32, i32* %i, align 4, !tbaa !5
  %101 = load i32, i32* %n, align 4, !tbaa !5
  %sub104 = sub nsw i32 %101, 1
  %cmp105 = icmp slt i32 %100, %sub104
  br i1 %cmp105, label %if.then.107, label %if.end.115

if.then.107:                                      ; preds = %if.end.103
  %102 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %102, i32 0, i32 14
  %103 = load i32, i32* %height, align 4, !tbaa !35
  %idxprom108 = sext i32 %103 to i64
  %104 = load i8**, i8*** %stored_base.addr, align 8, !tbaa !1
  %arrayidx109 = getelementptr inbounds i8*, i8** %104, i64 %idxprom108
  %105 = load i8*, i8** %arrayidx109, align 8, !tbaa !1
  %106 = load i8**, i8*** %stored_base.addr, align 8, !tbaa !1
  %arrayidx110 = getelementptr inbounds i8*, i8** %106, i64 0
  %107 = load i8*, i8** %arrayidx110, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %105 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %107 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %108 = load i8*, i8** %base, align 8, !tbaa !1
  %add.ptr111 = getelementptr inbounds i8, i8* %108, i64 %sub.ptr.sub
  store i8* %add.ptr111, i8** %base, align 8, !tbaa !1
  %109 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height112 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %109, i32 0, i32 14
  %110 = load i32, i32* %height112, align 4, !tbaa !35
  %111 = load i8**, i8*** %stored_base.addr, align 8, !tbaa !1
  %idx.ext113 = sext i32 %110 to i64
  %add.ptr114 = getelementptr inbounds i8*, i8** %111, i64 %idx.ext113
  store i8** %add.ptr114, i8*** %stored_base.addr, align 8, !tbaa !1
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.107, %if.end.103
  br label %for.inc

for.inc:                                          ; preds = %if.end.115
  %112 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %112, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %113 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #1
  %114 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #1
  br label %if.end.116

if.end.116:                                       ; preds = %for.end, %if.then.70
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.117

cleanup.117:                                      ; preds = %if.end.116, %cleanup
  %115 = bitcast i32* %x_offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #1
  br label %cleanup.119

if.end.118:                                       ; preds = %lor.lhs.false.11
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.119

cleanup.119:                                      ; preds = %if.end.118, %cleanup.117
  %116 = bitcast i8** %base to i8*
  call void @llvm.lifetime.end(i64 8, i8* %116) #1
  %117 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #1
  %118 = bitcast i32* %dev_raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #1
  %119 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #1
  %cleanup.dest.123 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.123, label %cleanup.125 [
    i32 0, label %cleanup.cont.124
  ]

cleanup.cont.124:                                 ; preds = %cleanup.119
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.125

cleanup.125:                                      ; preds = %cleanup.cont.124, %cleanup.119, %if.then
  %120 = bitcast i64* %both to i8*
  call void @llvm.lifetime.end(i64 8, i8* %120) #1
  %121 = bitcast i64* %options to i8*
  call void @llvm.lifetime.end(i64 8, i8* %121) #1
  %122 = load i32, i32* %retval
  ret i32 %122
}

; Function Attrs: nounwind uwtable
define internal i32 @requested_includes_stored(%struct.gx_device_s* %dev, %struct.gs_get_bits_params_s* %requested, %struct.gs_get_bits_params_s* %stored) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %requested.addr = alloca %struct.gs_get_bits_params_s*, align 8
  %stored.addr = alloca %struct.gs_get_bits_params_s*, align 8
  %both = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_get_bits_params_s* %requested, %struct.gs_get_bits_params_s** %requested.addr, align 8, !tbaa !1
  store %struct.gs_get_bits_params_s* %stored, %struct.gs_get_bits_params_s** %stored.addr, align 8, !tbaa !1
  %0 = bitcast i64* %both to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %requested.addr, align 8, !tbaa !1
  %options = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %1, i32 0, i32 0
  %2 = load i64, i64* %options, align 8, !tbaa !27
  %3 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %stored.addr, align 8, !tbaa !1
  %options1 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %3, i32 0, i32 0
  %4 = load i64, i64* %options1, align 8, !tbaa !27
  %and = and i64 %2, %4
  store i64 %and, i64* %both, align 8, !tbaa !33
  %5 = load i64, i64* %both, align 8, !tbaa !33
  %and2 = and i64 %5, 458752
  %tobool = icmp ne i64 %and2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.43

if.end:                                           ; preds = %entry
  %6 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %stored.addr, align 8, !tbaa !1
  %options3 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %6, i32 0, i32 0
  %7 = load i64, i64* %options3, align 8, !tbaa !27
  %and4 = and i64 %7, 524288
  %tobool5 = icmp ne i64 %and4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.27

if.then.6:                                        ; preds = %if.end
  %8 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %stored.addr, align 8, !tbaa !1
  %options7 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %10, i32 0, i32 0
  %11 = load i64, i64* %options7, align 8, !tbaa !27
  %and8 = and i64 %11, 262144
  %tobool9 = icmp ne i64 %and8, 0
  br i1 %tobool9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.6
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %13 = load i16, i16* %depth, align 2, !tbaa !30
  %conv = zext i16 %13 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.then.6
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info10 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %14, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info10, i32 0, i32 1
  %15 = load i32, i32* %num_components, align 4, !tbaa !34
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %15, %cond.false ]
  store i32 %cond, i32* %n, align 4, !tbaa !5
  %16 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %requested.addr, align 8, !tbaa !1
  %options11 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %16, i32 0, i32 0
  %17 = load i64, i64* %options11, align 8, !tbaa !27
  %and12 = and i64 %17, 524288
  %tobool13 = icmp ne i64 %and12, 0
  br i1 %tobool13, label %lor.lhs.false, label %if.then.16

lor.lhs.false:                                    ; preds = %cond.end
  %18 = load i64, i64* %both, align 8, !tbaa !33
  %and14 = and i64 %18, 1
  %tobool15 = icmp ne i64 %and14, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %lor.lhs.false, %cond.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %lor.lhs.false
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.17
  %19 = load i32, i32* %i, align 4, !tbaa !5
  %20 = load i32, i32* %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %19, %20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %21 to i64
  %22 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %requested.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %22, i32 0, i32 1
  %arrayidx = getelementptr inbounds [64 x i8*], [64 x i8*]* %data, i32 0, i64 %idxprom
  %23 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %tobool19 = icmp ne i8* %23, null
  br i1 %tobool19, label %land.lhs.true, label %if.end.25

land.lhs.true:                                    ; preds = %for.body
  %24 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom20 = sext i32 %24 to i64
  %25 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %stored.addr, align 8, !tbaa !1
  %data21 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %25, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data21, i32 0, i64 %idxprom20
  %26 = load i8*, i8** %arrayidx22, align 8, !tbaa !1
  %tobool23 = icmp ne i8* %26, null
  br i1 %tobool23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %land.lhs.true
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.25
  %27 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.24, %if.then.16
  %28 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.43 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.27

if.end.27:                                        ; preds = %cleanup.cont, %if.end
  %30 = load i64, i64* %both, align 8, !tbaa !33
  %and28 = and i64 %30, 1
  %tobool29 = icmp ne i64 %and28, 0
  br i1 %tobool29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.27
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.43

if.end.31:                                        ; preds = %if.end.27
  %31 = load i64, i64* %both, align 8, !tbaa !33
  %and32 = and i64 %31, 14
  %tobool33 = icmp ne i64 %and32, 0
  br i1 %tobool33, label %if.then.34, label %if.end.42

if.then.34:                                       ; preds = %if.end.31
  %32 = load i64, i64* %both, align 8, !tbaa !33
  %and35 = and i64 %32, 112
  %tobool36 = icmp ne i64 %and35, 0
  br i1 %tobool36, label %land.lhs.true.37, label %if.end.41

land.lhs.true.37:                                 ; preds = %if.then.34
  %33 = load i64, i64* %both, align 8, !tbaa !33
  %and38 = and i64 %33, 16128
  %tobool39 = icmp ne i64 %and38, 0
  br i1 %tobool39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %land.lhs.true.37
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.43

if.end.41:                                        ; preds = %land.lhs.true.37, %if.then.34
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.end.31
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.43

cleanup.43:                                       ; preds = %if.end.42, %if.then.40, %if.then.30, %cleanup, %if.then
  %34 = bitcast i64* %both to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = load i32, i32* %retval
  ret i32 %35
}

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #2

declare i32 @igcd(i32, i32) #2

; Function Attrs: nounwind uwtable
define i32 @gx_get_bits_copy(%struct.gx_device_s* %dev, i32 %x, i32 %w, i32 %h, %struct.gs_get_bits_params_s* %params, %struct.gs_get_bits_params_s* %stored, i8* %src_base, i32 %dev_raster) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %x.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %params.addr = alloca %struct.gs_get_bits_params_s*, align 8
  %stored.addr = alloca %struct.gs_get_bits_params_s*, align 8
  %src_base.addr = alloca i8*, align 8
  %dev_raster.addr = alloca i32, align 4
  %options = alloca i64, align 8
  %stored_options = alloca i64, align 8
  %x_offset = alloca i32, align 4
  %depth = alloca i32, align 4
  %bit_x = alloca i32, align 4
  %src = alloca i8*, align 8
  %direct_copy = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %data = alloca i8*, align 8
  %end_bit = alloca i32, align 4
  %std_raster = alloca i32, align 4
  %raster = alloca i32, align 4
  %dest_bit_x = alloca i32, align 4
  %skew = alloca i32, align 4
  %bit_w = alloca i32, align 4
  %tdev = alloca %struct.gx_device_memory_s, align 8
  %line_ptr = alloca i8*, align 8
  %bit_w50 = alloca i32, align 4
  %align = alloca i32, align 4
  %num_planes = alloca i32, align 4
  %dest_depth = alloca i32, align 4
  %source = alloca %struct.bits_plane_s, align 8
  %dest = alloca %struct.bits_plane_s, align 8
  %plane = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store %struct.gs_get_bits_params_s* %params, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gs_get_bits_params_s* %stored, %struct.gs_get_bits_params_s** %stored.addr, align 8, !tbaa !1
  store i8* %src_base, i8** %src_base.addr, align 8, !tbaa !1
  store i32 %dev_raster, i32* %dev_raster.addr, align 4, !tbaa !5
  %0 = bitcast i64* %options to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %options1 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %1, i32 0, i32 0
  %2 = load i64, i64* %options1, align 8, !tbaa !27
  store i64 %2, i64* %options, align 8, !tbaa !33
  %3 = bitcast i64* %stored_options to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %stored.addr, align 8, !tbaa !1
  %options2 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %4, i32 0, i32 0
  %5 = load i64, i64* %options2, align 8, !tbaa !27
  store i64 %5, i64* %stored_options, align 8, !tbaa !33
  %6 = bitcast i32* %x_offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i64, i64* %options, align 8, !tbaa !33
  %and = and i64 %7, 16777216
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %x_offset3 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %8, i32 0, i32 2
  %9 = load i32, i32* %x_offset3, align 4, !tbaa !29
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %9, %cond.false ]
  store i32 %cond, i32* %x_offset, align 4, !tbaa !5
  %10 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 11
  %depth4 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %12 = load i16, i16* %depth4, align 2, !tbaa !30
  %conv = zext i16 %12 to i32
  store i32 %conv, i32* %depth, align 4, !tbaa !5
  %13 = bitcast i32* %bit_x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load i32, i32* %x.addr, align 4, !tbaa !5
  %15 = load i32, i32* %depth, align 4, !tbaa !5
  %mul = mul nsw i32 %14, %15
  store i32 %mul, i32* %bit_x, align 4, !tbaa !5
  %16 = bitcast i8** %src to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = load i8*, i8** %src_base.addr, align 8, !tbaa !1
  store i8* %17, i8** %src, align 8, !tbaa !1
  %18 = bitcast i32* %direct_copy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %20 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %21 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %stored.addr, align 8, !tbaa !1
  %call = call i32 @requested_includes_stored(%struct.gx_device_s* %19, %struct.gs_get_bits_params_s* %20, %struct.gs_get_bits_params_s* %21) #4
  store i32 %call, i32* %direct_copy, align 4, !tbaa !5
  %22 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %23 = load i64, i64* %options, align 8, !tbaa !33
  %neg = xor i64 %23, -1
  %and5 = and i64 %neg, 1048576
  %tobool6 = icmp ne i64 %and5, 0
  br i1 %tobool6, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %24 = load i64, i64* %options, align 8, !tbaa !33
  %and7 = and i64 %24, 50331648
  %tobool8 = icmp ne i64 %and7, 0
  br i1 %tobool8, label %lor.lhs.false.9, label %if.then

lor.lhs.false.9:                                  ; preds = %lor.lhs.false
  %25 = load i64, i64* %options, align 8, !tbaa !33
  %and10 = and i64 %25, 805306368
  %tobool11 = icmp ne i64 %and10, 0
  br i1 %tobool11, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.9, %lor.lhs.false, %cond.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.168

if.end:                                           ; preds = %lor.lhs.false.9
  %26 = load i64, i64* %options, align 8, !tbaa !33
  %and12 = and i64 %26, 65536
  %tobool13 = icmp ne i64 %and12, 0
  br i1 %tobool13, label %if.then.14, label %if.else.105

if.then.14:                                       ; preds = %if.end
  %27 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #1
  %28 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %data15 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %28, i32 0, i32 1
  %arrayidx = getelementptr inbounds [64 x i8*], [64 x i8*]* %data15, i32 0, i64 0
  %29 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  store i8* %29, i8** %data, align 8, !tbaa !1
  %30 = bitcast i32* %end_bit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  %31 = load i32, i32* %x_offset, align 4, !tbaa !5
  %32 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add = add nsw i32 %31, %32
  %33 = load i32, i32* %depth, align 4, !tbaa !5
  %mul16 = mul nsw i32 %add, %33
  store i32 %mul16, i32* %end_bit, align 4, !tbaa !5
  %34 = bitcast i32* %std_raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  %35 = load i64, i64* %options, align 8, !tbaa !33
  %and17 = and i64 %35, 4194304
  %tobool18 = icmp ne i64 %and17, 0
  br i1 %tobool18, label %cond.true.19, label %cond.false.21

cond.true.19:                                     ; preds = %if.then.14
  %36 = load i32, i32* %end_bit, align 4, !tbaa !5
  %add20 = add nsw i32 %36, 63
  %shr = ashr i32 %add20, 6
  %shl = shl i32 %shr, 3
  br label %cond.end.24

cond.false.21:                                    ; preds = %if.then.14
  %37 = load i32, i32* %end_bit, align 4, !tbaa !5
  %add22 = add nsw i32 %37, 7
  %shr23 = ashr i32 %add22, 3
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.21, %cond.true.19
  %cond25 = phi i32 [ %shl, %cond.true.19 ], [ %shr23, %cond.false.21 ]
  store i32 %cond25, i32* %std_raster, align 4, !tbaa !5
  %38 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #1
  %39 = load i64, i64* %options, align 8, !tbaa !33
  %and26 = and i64 %39, 268435456
  %tobool27 = icmp ne i64 %and26, 0
  br i1 %tobool27, label %cond.true.28, label %cond.false.29

cond.true.28:                                     ; preds = %cond.end.24
  %40 = load i32, i32* %std_raster, align 4, !tbaa !5
  br label %cond.end.31

cond.false.29:                                    ; preds = %cond.end.24
  %41 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %raster30 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %41, i32 0, i32 4
  %42 = load i32, i32* %raster30, align 4, !tbaa !31
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.29, %cond.true.28
  %cond32 = phi i32 [ %40, %cond.true.28 ], [ %42, %cond.false.29 ]
  store i32 %cond32, i32* %raster, align 4, !tbaa !5
  %43 = bitcast i32* %dest_bit_x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #1
  %44 = load i32, i32* %x_offset, align 4, !tbaa !5
  %45 = load i32, i32* %depth, align 4, !tbaa !5
  %mul33 = mul nsw i32 %44, %45
  store i32 %mul33, i32* %dest_bit_x, align 4, !tbaa !5
  %46 = bitcast i32* %skew to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #1
  %47 = load i32, i32* %bit_x, align 4, !tbaa !5
  %48 = load i32, i32* %dest_bit_x, align 4, !tbaa !5
  %sub = sub nsw i32 %47, %48
  store i32 %sub, i32* %skew, align 4, !tbaa !5
  %49 = load i32, i32* %skew, align 4, !tbaa !5
  %and34 = and i32 %49, 7
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.end.31
  %50 = load i32, i32* %direct_copy, align 4, !tbaa !5
  %tobool36 = icmp ne i32 %50, 0
  br i1 %tobool36, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %land.lhs.true
  %51 = bitcast i32* %bit_w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #1
  %52 = load i32, i32* %w.addr, align 4, !tbaa !5
  %53 = load i32, i32* %depth, align 4, !tbaa !5
  %mul38 = mul nsw i32 %52, %53
  store i32 %mul38, i32* %bit_w, align 4, !tbaa !5
  %54 = load i8*, i8** %data, align 8, !tbaa !1
  %55 = load i32, i32* %dest_bit_x, align 4, !tbaa !5
  %shr39 = ashr i32 %55, 3
  %idx.ext = sext i32 %shr39 to i64
  %add.ptr = getelementptr inbounds i8, i8* %54, i64 %idx.ext
  %56 = load i32, i32* %raster, align 4, !tbaa !5
  %57 = load i8*, i8** %src, align 8, !tbaa !1
  %58 = load i32, i32* %bit_x, align 4, !tbaa !5
  %shr40 = ashr i32 %58, 3
  %idx.ext41 = sext i32 %shr40 to i64
  %add.ptr42 = getelementptr inbounds i8, i8* %57, i64 %idx.ext41
  %59 = load i32, i32* %dev_raster.addr, align 4, !tbaa !5
  %60 = load i32, i32* %bit_x, align 4, !tbaa !5
  %61 = load i32, i32* %bit_w, align 4, !tbaa !5
  %add43 = add nsw i32 %60, %61
  %add44 = add nsw i32 %add43, 7
  %shr45 = ashr i32 %add44, 3
  %62 = load i32, i32* %bit_x, align 4, !tbaa !5
  %shr46 = ashr i32 %62, 3
  %sub47 = sub nsw i32 %shr45, %shr46
  %63 = load i32, i32* %h.addr, align 4, !tbaa !5
  call void @bytes_copy_rectangle(i8* %add.ptr, i32 %56, i8* %add.ptr42, i32 %59, i32 %sub47, i32 %63) #4
  %64 = bitcast i32* %bit_w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  br label %if.end.81

if.else:                                          ; preds = %land.lhs.true, %cond.end.31
  %65 = load i32, i32* %direct_copy, align 4, !tbaa !5
  %tobool48 = icmp ne i32 %65, 0
  br i1 %tobool48, label %if.then.49, label %if.else.68

if.then.49:                                       ; preds = %if.else
  %66 = bitcast %struct.gx_device_memory_s* %tdev to i8*
  call void @llvm.lifetime.start(i64 2792, i8* %66) #1
  %67 = bitcast i8** %line_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %67) #1
  %68 = load i8*, i8** %data, align 8, !tbaa !1
  store i8* %68, i8** %line_ptr, align 8, !tbaa !1
  %69 = bitcast i32* %bit_w50 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %69) #1
  %70 = load i32, i32* %w.addr, align 4, !tbaa !5
  %71 = load i32, i32* %depth, align 4, !tbaa !5
  %mul51 = mul nsw i32 %70, %71
  store i32 %mul51, i32* %bit_w50, align 4, !tbaa !5
  %base = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %tdev, i32 0, i32 45
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %tdev, i32 0, i32 52
  store i8** %base, i8*** %line_ptrs, align 8, !tbaa !36
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.49
  %72 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %72, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %73 = bitcast i32* %align to i8*
  call void @llvm.lifetime.start(i64 4, i8* %73) #1
  %74 = load i8*, i8** %line_ptr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %74 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, 0
  %and53 = and i64 %sub.ptr.sub, 7
  %conv54 = trunc i64 %and53 to i32
  store i32 %conv54, i32* %align, align 4, !tbaa !5
  %75 = load i8*, i8** %line_ptr, align 8, !tbaa !1
  %76 = load i32, i32* %align, align 4, !tbaa !5
  %idx.ext55 = sext i32 %76 to i64
  %idx.neg = sub i64 0, %idx.ext55
  %add.ptr56 = getelementptr inbounds i8, i8* %75, i64 %idx.neg
  %base57 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %tdev, i32 0, i32 45
  store i8* %add.ptr56, i8** %base57, align 8, !tbaa !47
  %77 = load i32, i32* %dest_bit_x, align 4, !tbaa !5
  %78 = load i32, i32* %align, align 4, !tbaa !5
  %shl58 = shl i32 %78, 3
  %add59 = add nsw i32 %77, %shl58
  %79 = load i32, i32* %bit_w50, align 4, !tbaa !5
  %add60 = add nsw i32 %add59, %79
  %width = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %tdev, i32 0, i32 13
  store i32 %add60, i32* %width, align 4, !tbaa !48
  %height = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %tdev, i32 0, i32 14
  store i32 1, i32* %height, align 4, !tbaa !49
  %80 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** getelementptr inbounds (%struct.gx_device_memory_s, %struct.gx_device_memory_s* @mem_mono_device, i32 0, i32 42, i32 9), align 8, !tbaa !50
  %81 = bitcast %struct.gx_device_memory_s* %tdev to %struct.gx_device_s*
  %82 = load i8*, i8** %src, align 8, !tbaa !1
  %83 = load i32, i32* %bit_x, align 4, !tbaa !5
  %84 = load i32, i32* %dev_raster.addr, align 4, !tbaa !5
  %85 = load i32, i32* %dest_bit_x, align 4, !tbaa !5
  %86 = load i32, i32* %align, align 4, !tbaa !5
  %shl61 = shl i32 %86, 3
  %add62 = add nsw i32 %85, %shl61
  %87 = load i32, i32* %bit_w50, align 4, !tbaa !5
  %call63 = call i32 %80(%struct.gx_device_s* %81, i8* %82, i32 %83, i32 %84, i64 0, i32 %add62, i32 0, i32 %87, i32 1, i64 0, i64 1) #4
  %88 = bitcast i32* %align to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %89 = load i32, i32* %raster, align 4, !tbaa !5
  %90 = load i8*, i8** %line_ptr, align 8, !tbaa !1
  %idx.ext64 = zext i32 %89 to i64
  %add.ptr65 = getelementptr inbounds i8, i8* %90, i64 %idx.ext64
  store i8* %add.ptr65, i8** %line_ptr, align 8, !tbaa !1
  %91 = load i32, i32* %dev_raster.addr, align 4, !tbaa !5
  %92 = load i8*, i8** %src, align 8, !tbaa !1
  %idx.ext66 = zext i32 %91 to i64
  %add.ptr67 = getelementptr inbounds i8, i8* %92, i64 %idx.ext66
  store i8* %add.ptr67, i8** %src, align 8, !tbaa !1
  %93 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec = add nsw i32 %93, -1
  store i32 %dec, i32* %h.addr, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %94 = bitcast i32* %bit_w50 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  %95 = bitcast i8** %line_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #1
  %96 = bitcast %struct.gx_device_memory_s* %tdev to i8*
  call void @llvm.lifetime.end(i64 2792, i8* %96) #1
  br label %if.end.80

if.else.68:                                       ; preds = %if.else
  %97 = load i64, i64* %options, align 8, !tbaa !33
  %98 = load i64, i64* %stored_options, align 8, !tbaa !33
  %neg69 = xor i64 %98, -1
  %and70 = and i64 %97, %neg69
  %and71 = and i64 %and70, 1
  %tobool72 = icmp ne i64 %and71, 0
  br i1 %tobool72, label %if.then.73, label %if.else.76

if.then.73:                                       ; preds = %if.else.68
  %99 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %100 = load i32, i32* %x.addr, align 4, !tbaa !5
  %101 = load i32, i32* %w.addr, align 4, !tbaa !5
  %102 = load i32, i32* %h.addr, align 4, !tbaa !5
  %103 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %104 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %stored.addr, align 8, !tbaa !1
  %105 = load i8*, i8** %src_base.addr, align 8, !tbaa !1
  %106 = load i32, i32* %dev_raster.addr, align 4, !tbaa !5
  %107 = load i32, i32* %x_offset, align 4, !tbaa !5
  %108 = load i32, i32* %raster, align 4, !tbaa !5
  %call74 = call i32 @gx_get_bits_std_to_native(%struct.gx_device_s* %99, i32 %100, i32 %101, i32 %102, %struct.gs_get_bits_params_s* %103, %struct.gs_get_bits_params_s* %104, i8* %105, i32 %106, i32 %107, i32 %108) #4
  store i32 %call74, i32* %code, align 4, !tbaa !5
  %109 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %options75 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %109, i32 0, i32 0
  %110 = load i64, i64* %options75, align 8, !tbaa !27
  store i64 %110, i64* %options, align 8, !tbaa !33
  br label %if.end.79

if.else.76:                                       ; preds = %if.else.68
  %111 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %112 = load i32, i32* %x.addr, align 4, !tbaa !5
  %113 = load i32, i32* %w.addr, align 4, !tbaa !5
  %114 = load i32, i32* %h.addr, align 4, !tbaa !5
  %115 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %116 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %stored.addr, align 8, !tbaa !1
  %117 = load i8*, i8** %src_base.addr, align 8, !tbaa !1
  %118 = load i32, i32* %dev_raster.addr, align 4, !tbaa !5
  %119 = load i32, i32* %x_offset, align 4, !tbaa !5
  %120 = load i32, i32* %raster, align 4, !tbaa !5
  %121 = load i32, i32* %std_raster, align 4, !tbaa !5
  %call77 = call i32 @gx_get_bits_native_to_std(%struct.gx_device_s* %111, i32 %112, i32 %113, i32 %114, %struct.gs_get_bits_params_s* %115, %struct.gs_get_bits_params_s* %116, i8* %117, i32 %118, i32 %119, i32 %120, i32 %121) #4
  store i32 %call77, i32* %code, align 4, !tbaa !5
  %122 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %options78 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %122, i32 0, i32 0
  %123 = load i64, i64* %options78, align 8, !tbaa !27
  store i64 %123, i64* %options, align 8, !tbaa !33
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.76, %if.then.73
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %for.end
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.then.37
  %124 = load i64, i64* %options, align 8, !tbaa !33
  %and82 = and i64 %124, 127
  %or = or i64 %and82, 65536
  %125 = load i64, i64* %options, align 8, !tbaa !33
  %and83 = and i64 %125, 1
  %tobool84 = icmp ne i64 %and83, 0
  br i1 %tobool84, label %cond.true.85, label %cond.false.86

cond.true.85:                                     ; preds = %if.end.81
  br label %cond.end.88

cond.false.86:                                    ; preds = %if.end.81
  %126 = load i64, i64* %options, align 8, !tbaa !33
  %and87 = and i64 %126, 16128
  br label %cond.end.88

cond.end.88:                                      ; preds = %cond.false.86, %cond.true.85
  %cond89 = phi i64 [ 0, %cond.true.85 ], [ %and87, %cond.false.86 ]
  %or90 = or i64 %or, %cond89
  %127 = load i64, i64* %options, align 8, !tbaa !33
  %and91 = and i64 %127, 4194304
  %tobool92 = icmp ne i64 %and91, 0
  %cond93 = select i1 %tobool92, i64 4194304, i64 8388608
  %or94 = or i64 %or90, %cond93
  %or95 = or i64 %or94, 1048576
  %128 = load i32, i32* %x_offset, align 4, !tbaa !5
  %cmp96 = icmp eq i32 %128, 0
  %cond98 = select i1 %cmp96, i64 16777216, i64 33554432
  %or99 = or i64 %or95, %cond98
  %129 = load i32, i32* %raster, align 4, !tbaa !5
  %130 = load i32, i32* %std_raster, align 4, !tbaa !5
  %cmp100 = icmp eq i32 %129, %130
  %cond102 = select i1 %cmp100, i64 268435456, i64 536870912
  %or103 = or i64 %or99, %cond102
  %131 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %options104 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %131, i32 0, i32 0
  store i64 %or103, i64* %options104, align 8, !tbaa !27
  %132 = bitcast i32* %skew to i8*
  call void @llvm.lifetime.end(i64 4, i8* %132) #1
  %133 = bitcast i32* %dest_bit_x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #1
  %134 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %134) #1
  %135 = bitcast i32* %std_raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %135) #1
  %136 = bitcast i32* %end_bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %136) #1
  %137 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %137) #1
  br label %if.end.167

if.else.105:                                      ; preds = %if.end
  %138 = load i64, i64* %options, align 8, !tbaa !33
  %neg106 = xor i64 %138, -1
  %and107 = and i64 %neg106, 4849664
  %tobool108 = icmp ne i64 %and107, 0
  br i1 %tobool108, label %if.else.166, label %land.lhs.true.109

land.lhs.true.109:                                ; preds = %if.else.105
  %139 = load i64, i64* %stored_options, align 8, !tbaa !33
  %and110 = and i64 %139, 65536
  %tobool111 = icmp ne i64 %and110, 0
  br i1 %tobool111, label %land.lhs.true.112, label %if.else.166

land.lhs.true.112:                                ; preds = %land.lhs.true.109
  %140 = load i64, i64* %options, align 8, !tbaa !33
  %141 = load i64, i64* %stored_options, align 8, !tbaa !33
  %and113 = and i64 %140, %141
  %and114 = and i64 %and113, 1
  %tobool115 = icmp ne i64 %and114, 0
  br i1 %tobool115, label %if.then.116, label %if.else.166

if.then.116:                                      ; preds = %land.lhs.true.112
  %142 = bitcast i32* %num_planes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %142) #1
  %143 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info117 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %143, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info117, i32 0, i32 1
  %144 = load i32, i32* %num_components, align 4, !tbaa !34
  store i32 %144, i32* %num_planes, align 4, !tbaa !5
  %145 = bitcast i32* %dest_depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %145) #1
  %146 = load i32, i32* %depth, align 4, !tbaa !5
  %147 = load i32, i32* %num_planes, align 4, !tbaa !5
  %div = sdiv i32 %146, %147
  store i32 %div, i32* %dest_depth, align 4, !tbaa !5
  %148 = bitcast %struct.bits_plane_s* %source to i8*
  call void @llvm.lifetime.start(i64 24, i8* %148) #1
  %149 = bitcast %struct.bits_plane_s* %dest to i8*
  call void @llvm.lifetime.start(i64 24, i8* %149) #1
  %150 = bitcast i32* %plane to i8*
  call void @llvm.lifetime.start(i64 4, i8* %150) #1
  store i32 -1, i32* %plane, align 4, !tbaa !5
  %151 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %151) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.118

for.cond.118:                                     ; preds = %for.inc.132, %if.then.116
  %152 = load i32, i32* %i, align 4, !tbaa !5
  %153 = load i32, i32* %num_planes, align 4, !tbaa !5
  %cmp119 = icmp slt i32 %152, %153
  br i1 %cmp119, label %for.body.121, label %for.end.133

for.body.121:                                     ; preds = %for.cond.118
  %154 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %154 to i64
  %155 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %data122 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %155, i32 0, i32 1
  %arrayidx123 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data122, i32 0, i64 %idxprom
  %156 = load i8*, i8** %arrayidx123, align 8, !tbaa !1
  %cmp124 = icmp ne i8* %156, null
  br i1 %cmp124, label %if.then.126, label %if.end.131

if.then.126:                                      ; preds = %for.body.121
  %157 = load i32, i32* %plane, align 4, !tbaa !5
  %cmp127 = icmp sge i32 %157, 0
  br i1 %cmp127, label %if.then.129, label %if.end.130

if.then.129:                                      ; preds = %if.then.126
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.130:                                       ; preds = %if.then.126
  %158 = load i32, i32* %i, align 4, !tbaa !5
  store i32 %158, i32* %plane, align 4, !tbaa !5
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %for.body.121
  br label %for.inc.132

for.inc.132:                                      ; preds = %if.end.131
  %159 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %159, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond.118

for.end.133:                                      ; preds = %for.cond.118
  %160 = load i8*, i8** %src_base.addr, align 8, !tbaa !1
  %data134 = getelementptr inbounds %struct.bits_plane_s, %struct.bits_plane_s* %source, i32 0, i32 0
  %read = bitcast %union.bpd_* %data134 to i8**
  store i8* %160, i8** %read, align 8, !tbaa !1
  %161 = load i32, i32* %dev_raster.addr, align 4, !tbaa !5
  %raster135 = getelementptr inbounds %struct.bits_plane_s, %struct.bits_plane_s* %source, i32 0, i32 1
  store i32 %161, i32* %raster135, align 4, !tbaa !51
  %162 = load i32, i32* %depth, align 4, !tbaa !5
  %depth136 = getelementptr inbounds %struct.bits_plane_s, %struct.bits_plane_s* %source, i32 0, i32 2
  store i32 %162, i32* %depth136, align 4, !tbaa !53
  %163 = load i32, i32* %x.addr, align 4, !tbaa !5
  %x137 = getelementptr inbounds %struct.bits_plane_s, %struct.bits_plane_s* %source, i32 0, i32 3
  store i32 %163, i32* %x137, align 4, !tbaa !54
  %164 = load i32, i32* %plane, align 4, !tbaa !5
  %idxprom138 = sext i32 %164 to i64
  %165 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %data139 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %165, i32 0, i32 1
  %arrayidx140 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data139, i32 0, i64 %idxprom138
  %166 = load i8*, i8** %arrayidx140, align 8, !tbaa !1
  %data141 = getelementptr inbounds %struct.bits_plane_s, %struct.bits_plane_s* %dest, i32 0, i32 0
  %write = bitcast %union.bpd_* %data141 to i8**
  store i8* %166, i8** %write, align 8, !tbaa !1
  %167 = load i64, i64* %options, align 8, !tbaa !33
  %and142 = and i64 %167, 268435456
  %tobool143 = icmp ne i64 %and142, 0
  br i1 %tobool143, label %cond.true.144, label %cond.false.150

cond.true.144:                                    ; preds = %for.end.133
  %168 = load i32, i32* %x_offset, align 4, !tbaa !5
  %169 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add145 = add nsw i32 %168, %169
  %170 = load i32, i32* %dest_depth, align 4, !tbaa !5
  %mul146 = mul nsw i32 %add145, %170
  %add147 = add nsw i32 %mul146, 63
  %shr148 = ashr i32 %add147, 6
  %shl149 = shl i32 %shr148, 3
  br label %cond.end.152

cond.false.150:                                   ; preds = %for.end.133
  %171 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %raster151 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %171, i32 0, i32 4
  %172 = load i32, i32* %raster151, align 4, !tbaa !31
  br label %cond.end.152

cond.end.152:                                     ; preds = %cond.false.150, %cond.true.144
  %cond153 = phi i32 [ %shl149, %cond.true.144 ], [ %172, %cond.false.150 ]
  %raster154 = getelementptr inbounds %struct.bits_plane_s, %struct.bits_plane_s* %dest, i32 0, i32 1
  store i32 %cond153, i32* %raster154, align 4, !tbaa !51
  %173 = load i32, i32* %dest_depth, align 4, !tbaa !5
  %depth155 = getelementptr inbounds %struct.bits_plane_s, %struct.bits_plane_s* %dest, i32 0, i32 2
  store i32 %173, i32* %depth155, align 4, !tbaa !53
  %174 = load i32, i32* %x_offset, align 4, !tbaa !5
  %x156 = getelementptr inbounds %struct.bits_plane_s, %struct.bits_plane_s* %dest, i32 0, i32 3
  store i32 %174, i32* %x156, align 4, !tbaa !54
  %175 = load i32, i32* %num_planes, align 4, !tbaa !5
  %sub157 = sub nsw i32 %175, 1
  %176 = load i32, i32* %plane, align 4, !tbaa !5
  %sub158 = sub nsw i32 %sub157, %176
  %177 = load i32, i32* %dest_depth, align 4, !tbaa !5
  %mul159 = mul nsw i32 %sub158, %177
  %178 = load i32, i32* %w.addr, align 4, !tbaa !5
  %179 = load i32, i32* %h.addr, align 4, !tbaa !5
  %call160 = call i32 @bits_extract_plane(%struct.bits_plane_s* %dest, %struct.bits_plane_s* %source, i32 %mul159, i32 %178, i32 %179) #4
  store i32 %call160, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end.152, %if.then.129
  %180 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %180) #1
  %181 = bitcast i32* %plane to i8*
  call void @llvm.lifetime.end(i64 4, i8* %181) #1
  %182 = bitcast %struct.bits_plane_s* %dest to i8*
  call void @llvm.lifetime.end(i64 24, i8* %182) #1
  %183 = bitcast %struct.bits_plane_s* %source to i8*
  call void @llvm.lifetime.end(i64 24, i8* %183) #1
  %184 = bitcast i32* %dest_depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %184) #1
  %185 = bitcast i32* %num_planes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %185) #1
  br label %cleanup.168

if.else.166:                                      ; preds = %land.lhs.true.112, %land.lhs.true.109, %if.else.105
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.168

if.end.167:                                       ; preds = %cond.end.88
  %186 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %186, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.168

cleanup.168:                                      ; preds = %if.end.167, %if.else.166, %cleanup, %if.then
  %187 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %187) #1
  %188 = bitcast i32* %direct_copy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %188) #1
  %189 = bitcast i8** %src to i8*
  call void @llvm.lifetime.end(i64 8, i8* %189) #1
  %190 = bitcast i32* %bit_x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %190) #1
  %191 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %191) #1
  %192 = bitcast i32* %x_offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %192) #1
  %193 = bitcast i64* %stored_options to i8*
  call void @llvm.lifetime.end(i64 8, i8* %193) #1
  %194 = bitcast i64* %options to i8*
  call void @llvm.lifetime.end(i64 8, i8* %194) #1
  %195 = load i32, i32* %retval
  ret i32 %195
}

declare void @bytes_copy_rectangle(i8*, i32, i8*, i32, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @gx_get_bits_std_to_native(%struct.gx_device_s* %dev, i32 %x, i32 %w, i32 %h, %struct.gs_get_bits_params_s* %params, %struct.gs_get_bits_params_s* %stored, i8* %src_base, i32 %dev_raster, i32 %x_offset, i32 %raster) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %x.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %params.addr = alloca %struct.gs_get_bits_params_s*, align 8
  %stored.addr = alloca %struct.gs_get_bits_params_s*, align 8
  %src_base.addr = alloca i8*, align 8
  %dev_raster.addr = alloca i32, align 4
  %x_offset.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %depth = alloca i32, align 4
  %dest_bit_offset = alloca i32, align 4
  %dest_line = alloca i8*, align 8
  %ncolors = alloca i32, align 4
  %ncomp = alloca i32, align 4
  %src_depth = alloca i32, align 4
  %src_bit_offset = alloca i32, align 4
  %src_line = alloca i8*, align 8
  %src_max = alloca i16, align 2
  %alpha_default = alloca i16, align 2
  %i = alloca i32, align 4
  %src = alloca i8*, align 8
  %sbit = alloca i32, align 4
  %dest = alloca i8*, align 8
  %dbit = alloca i32, align 4
  %dbyte = alloca i8, align 1
  %j = alloca i32, align 4
  %sc = alloca [4 x i16], align 2
  %dc = alloca [64 x i16], align 16
  %v = alloca [64 x i16], align 16
  %va = alloca i16, align 2
  %pixel = alloca i64, align 8
  %do_alpha = alloca i32, align 4
  %map_procs = alloca %struct.gx_cm_color_map_procs_s*, align 8
  %cleanup.dest.slot = alloca i32
  %vj = alloca i16, align 2
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store %struct.gs_get_bits_params_s* %params, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gs_get_bits_params_s* %stored, %struct.gs_get_bits_params_s** %stored.addr, align 8, !tbaa !1
  store i8* %src_base, i8** %src_base.addr, align 8, !tbaa !1
  store i32 %dev_raster, i32* %dev_raster.addr, align 4, !tbaa !5
  store i32 %x_offset, i32* %x_offset.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  %0 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 11
  %depth1 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %2 = load i16, i16* %depth1, align 2, !tbaa !30
  %conv = zext i16 %2 to i32
  store i32 %conv, i32* %depth, align 4, !tbaa !5
  %3 = bitcast i32* %dest_bit_offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %x_offset.addr, align 4, !tbaa !5
  %5 = load i32, i32* %depth, align 4, !tbaa !5
  %mul = mul nsw i32 %4, %5
  store i32 %mul, i32* %dest_bit_offset, align 4, !tbaa !5
  %6 = bitcast i8** %dest_line to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %7, i32 0, i32 1
  %arrayidx = getelementptr inbounds [64 x i8*], [64 x i8*]* %data, i32 0, i64 0
  %8 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %9 = load i32, i32* %dest_bit_offset, align 4, !tbaa !5
  %shr = ashr i32 %9, 3
  %idx.ext = sext i32 %shr to i64
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %idx.ext
  store i8* %add.ptr, i8** %dest_line, align 8, !tbaa !1
  %10 = bitcast i32* %ncolors to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %stored.addr, align 8, !tbaa !1
  %options = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %11, i32 0, i32 0
  %12 = load i64, i64* %options, align 8, !tbaa !27
  %and = and i64 %12, 4
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.11

cond.false:                                       ; preds = %entry
  %13 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %stored.addr, align 8, !tbaa !1
  %options2 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %13, i32 0, i32 0
  %14 = load i64, i64* %options2, align 8, !tbaa !27
  %and3 = and i64 %14, 8
  %tobool4 = icmp ne i64 %and3, 0
  br i1 %tobool4, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %cond.false
  br label %cond.end

cond.false.6:                                     ; preds = %cond.false
  %15 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %stored.addr, align 8, !tbaa !1
  %options7 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %15, i32 0, i32 0
  %16 = load i64, i64* %options7, align 8, !tbaa !27
  %and8 = and i64 %16, 2
  %tobool9 = icmp ne i64 %and8, 0
  %cond = select i1 %tobool9, i32 1, i32 -1
  br label %cond.end

cond.end:                                         ; preds = %cond.false.6, %cond.true.5
  %cond10 = phi i32 [ 4, %cond.true.5 ], [ %cond, %cond.false.6 ]
  br label %cond.end.11

cond.end.11:                                      ; preds = %cond.end, %cond.true
  %cond12 = phi i32 [ 3, %cond.true ], [ %cond10, %cond.end ]
  store i32 %cond12, i32* %ncolors, align 4, !tbaa !5
  %17 = bitcast i32* %ncomp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load i32, i32* %ncolors, align 4, !tbaa !5
  %19 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %stored.addr, align 8, !tbaa !1
  %options13 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %19, i32 0, i32 0
  %20 = load i64, i64* %options13, align 8, !tbaa !27
  %and14 = and i64 %20, 96
  %cmp = icmp ne i64 %and14, 0
  %conv15 = zext i1 %cmp to i32
  %add = add nsw i32 %18, %conv15
  store i32 %add, i32* %ncomp, align 4, !tbaa !5
  %21 = bitcast i32* %src_depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %stored.addr, align 8, !tbaa !1
  %options16 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %22, i32 0, i32 0
  %23 = load i64, i64* %options16, align 8, !tbaa !27
  %shr17 = lshr i64 %23, 8
  %and18 = and i64 %shr17, 15
  %24 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %stored.addr, align 8, !tbaa !1
  %options19 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %24, i32 0, i32 0
  %25 = load i64, i64* %options19, align 8, !tbaa !27
  %shr20 = lshr i64 %25, 12
  %and21 = and i64 %shr20, 3
  %arrayidx22 = getelementptr inbounds [5 x i8], [5 x i8]* @.str.2, i32 0, i64 %and21
  %26 = load i8, i8* %arrayidx22, align 1, !tbaa !55
  %conv23 = sext i8 %26 to i64
  %or = or i64 %and18, %conv23
  %conv24 = trunc i64 %or to i32
  store i32 %conv24, i32* %src_depth, align 4, !tbaa !5
  %27 = bitcast i32* %src_bit_offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = load i32, i32* %x.addr, align 4, !tbaa !5
  %29 = load i32, i32* %src_depth, align 4, !tbaa !5
  %mul25 = mul nsw i32 %28, %29
  %30 = load i32, i32* %ncomp, align 4, !tbaa !5
  %mul26 = mul nsw i32 %mul25, %30
  store i32 %mul26, i32* %src_bit_offset, align 4, !tbaa !5
  %31 = bitcast i8** %src_line to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  %32 = load i8*, i8** %src_base.addr, align 8, !tbaa !1
  %33 = load i32, i32* %src_bit_offset, align 4, !tbaa !5
  %shr27 = ashr i32 %33, 3
  %idx.ext28 = sext i32 %shr27 to i64
  %add.ptr29 = getelementptr inbounds i8, i8* %32, i64 %idx.ext28
  store i8* %add.ptr29, i8** %src_line, align 8, !tbaa !1
  %34 = bitcast i16* %src_max to i8*
  call void @llvm.lifetime.start(i64 2, i8* %34) #1
  %35 = load i32, i32* %src_depth, align 4, !tbaa !5
  %shl = shl i32 1, %35
  %sub = sub nsw i32 %shl, 1
  %conv30 = trunc i32 %sub to i16
  store i16 %conv30, i16* %src_max, align 2, !tbaa !56
  %36 = bitcast i16* %alpha_default to i8*
  call void @llvm.lifetime.start(i64 2, i8* %36) #1
  %37 = load i16, i16* %src_max, align 2, !tbaa !56
  store i16 %37, i16* %alpha_default, align 2, !tbaa !56
  %38 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %options31 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %38, i32 0, i32 0
  %39 = load i64, i64* %options31, align 8, !tbaa !27
  %and32 = and i64 %39, -15
  store i64 %and32, i64* %options31, align 8, !tbaa !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc.433, %cond.end.11
  %40 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp33 = icmp sgt i32 %40, 0
  br i1 %cmp33, label %for.body, label %for.end.438

for.body:                                         ; preds = %for.cond
  %41 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #1
  %42 = bitcast i8** %src to i8*
  call void @llvm.lifetime.start(i64 8, i8* %42) #1
  %43 = load i8*, i8** %src_line, align 8, !tbaa !1
  store i8* %43, i8** %src, align 8, !tbaa !1
  %44 = bitcast i32* %sbit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #1
  %45 = load i32, i32* %src_bit_offset, align 4, !tbaa !5
  %and35 = and i32 %45, 7
  store i32 %and35, i32* %sbit, align 4, !tbaa !5
  %46 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.start(i64 8, i8* %46) #1
  %47 = load i8*, i8** %dest_line, align 8, !tbaa !1
  store i8* %47, i8** %dest, align 8, !tbaa !1
  %48 = bitcast i32* %dbit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #1
  %49 = load i32, i32* %dest_bit_offset, align 4, !tbaa !5
  %and36 = and i32 %49, 7
  store i32 %and36, i32* %dbit, align 4, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %dbyte) #1
  %50 = load i32, i32* %dbit, align 4, !tbaa !5
  %tobool37 = icmp ne i32 %50, 0
  br i1 %tobool37, label %cond.true.38, label %cond.false.44

cond.true.38:                                     ; preds = %for.body
  %51 = load i8*, i8** %dest, align 8, !tbaa !1
  %52 = load i8, i8* %51, align 1, !tbaa !55
  %conv39 = zext i8 %52 to i32
  %53 = load i32, i32* %dbit, align 4, !tbaa !5
  %shr40 = ashr i32 65280, %53
  %and41 = and i32 %conv39, %shr40
  %conv42 = trunc i32 %and41 to i8
  %conv43 = zext i8 %conv42 to i32
  br label %cond.end.45

cond.false.44:                                    ; preds = %for.body
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.44, %cond.true.38
  %cond46 = phi i32 [ %conv43, %cond.true.38 ], [ 0, %cond.false.44 ]
  %conv47 = trunc i32 %cond46 to i8
  store i8 %conv47, i8* %dbyte, align 1, !tbaa !55
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.412, %cond.end.45
  %54 = load i32, i32* %i, align 4, !tbaa !5
  %55 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp49 = icmp slt i32 %54, %55
  br i1 %cmp49, label %for.body.51, label %for.end.414

for.body.51:                                      ; preds = %for.cond.48
  %56 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %56) #1
  %57 = bitcast [4 x i16]* %sc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %57) #1
  %58 = bitcast [64 x i16]* %dc to i8*
  call void @llvm.lifetime.start(i64 128, i8* %58) #1
  %59 = bitcast [64 x i16]* %v to i8*
  call void @llvm.lifetime.start(i64 128, i8* %59) #1
  %60 = bitcast i16* %va to i8*
  call void @llvm.lifetime.start(i64 2, i8* %60) #1
  %61 = load i16, i16* %alpha_default, align 2, !tbaa !56
  store i16 %61, i16* %va, align 2, !tbaa !56
  %62 = bitcast i64* %pixel to i8*
  call void @llvm.lifetime.start(i64 8, i8* %62) #1
  %63 = bitcast i32* %do_alpha to i8*
  call void @llvm.lifetime.start(i64 4, i8* %63) #1
  store i32 0, i32* %do_alpha, align 4, !tbaa !5
  %64 = bitcast %struct.gx_cm_color_map_procs_s** %map_procs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %64) #1
  %65 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %65, i32 0, i32 42
  %get_color_mapping_procs = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 49
  %66 = load %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)** %get_color_mapping_procs, align 8, !tbaa !57
  %67 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call %struct.gx_cm_color_map_procs_s* %66(%struct.gx_device_s* %67) #4
  store %struct.gx_cm_color_map_procs_s* %call, %struct.gx_cm_color_map_procs_s** %map_procs, align 8, !tbaa !1
  %68 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %stored.addr, align 8, !tbaa !1
  %options52 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %68, i32 0, i32 0
  %69 = load i64, i64* %options52, align 8, !tbaa !27
  %and53 = and i64 %69, 32
  %tobool54 = icmp ne i64 %and53, 0
  br i1 %tobool54, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.51
  br label %do.body

do.body:                                          ; preds = %if.then
  %70 = load i32, i32* %src_depth, align 4, !tbaa !5
  %shr55 = ashr i32 %70, 2
  switch i32 %shr55, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.63
    i32 2, label %sw.bb.69
    i32 3, label %sw.bb.71
    i32 4, label %sw.bb.90
  ]

sw.bb:                                            ; preds = %do.body
  %71 = load i8*, i8** %src, align 8, !tbaa !1
  %72 = load i8, i8* %71, align 1, !tbaa !55
  %conv56 = zext i8 %72 to i32
  %73 = load i32, i32* %sbit, align 4, !tbaa !5
  %sub57 = sub nsw i32 8, %73
  %74 = load i32, i32* %src_depth, align 4, !tbaa !5
  %sub58 = sub nsw i32 %sub57, %74
  %shr59 = ashr i32 %conv56, %sub58
  %75 = load i32, i32* %src_depth, align 4, !tbaa !5
  %or60 = or i32 %75, 1
  %and61 = and i32 %shr59, %or60
  %conv62 = trunc i32 %and61 to i16
  store i16 %conv62, i16* %va, align 2, !tbaa !56
  br label %sw.epilog

sw.bb.63:                                         ; preds = %do.body
  %76 = load i8*, i8** %src, align 8, !tbaa !1
  %77 = load i8, i8* %76, align 1, !tbaa !55
  %conv64 = zext i8 %77 to i32
  %78 = load i32, i32* %sbit, align 4, !tbaa !5
  %sub65 = sub nsw i32 4, %78
  %shr66 = ashr i32 %conv64, %sub65
  %and67 = and i32 %shr66, 15
  %conv68 = trunc i32 %and67 to i16
  store i16 %conv68, i16* %va, align 2, !tbaa !56
  br label %sw.epilog

sw.bb.69:                                         ; preds = %do.body
  %79 = load i8*, i8** %src, align 8, !tbaa !1
  %80 = load i8, i8* %79, align 1, !tbaa !55
  %conv70 = zext i8 %80 to i16
  store i16 %conv70, i16* %va, align 2, !tbaa !56
  br label %sw.epilog

sw.bb.71:                                         ; preds = %do.body
  %81 = load i32, i32* %sbit, align 4, !tbaa !5
  %tobool72 = icmp ne i32 %81, 0
  br i1 %tobool72, label %cond.true.73, label %cond.false.80

cond.true.73:                                     ; preds = %sw.bb.71
  %82 = load i8*, i8** %src, align 8, !tbaa !1
  %83 = load i8, i8* %82, align 1, !tbaa !55
  %conv74 = zext i8 %83 to i32
  %and75 = and i32 %conv74, 15
  %shl76 = shl i32 %and75, 8
  %84 = load i8*, i8** %src, align 8, !tbaa !1
  %arrayidx77 = getelementptr inbounds i8, i8* %84, i64 1
  %85 = load i8, i8* %arrayidx77, align 1, !tbaa !55
  %conv78 = zext i8 %85 to i32
  %or79 = or i32 %shl76, %conv78
  br label %cond.end.87

cond.false.80:                                    ; preds = %sw.bb.71
  %86 = load i8*, i8** %src, align 8, !tbaa !1
  %87 = load i8, i8* %86, align 1, !tbaa !55
  %conv81 = zext i8 %87 to i32
  %shl82 = shl i32 %conv81, 4
  %88 = load i8*, i8** %src, align 8, !tbaa !1
  %arrayidx83 = getelementptr inbounds i8, i8* %88, i64 1
  %89 = load i8, i8* %arrayidx83, align 1, !tbaa !55
  %conv84 = zext i8 %89 to i32
  %shr85 = ashr i32 %conv84, 4
  %or86 = or i32 %shl82, %shr85
  br label %cond.end.87

cond.end.87:                                      ; preds = %cond.false.80, %cond.true.73
  %cond88 = phi i32 [ %or79, %cond.true.73 ], [ %or86, %cond.false.80 ]
  %conv89 = trunc i32 %cond88 to i16
  store i16 %conv89, i16* %va, align 2, !tbaa !56
  br label %sw.epilog

sw.bb.90:                                         ; preds = %do.body
  %90 = load i8*, i8** %src, align 8, !tbaa !1
  %91 = load i8, i8* %90, align 1, !tbaa !55
  %conv91 = zext i8 %91 to i32
  %shl92 = shl i32 %conv91, 8
  %92 = load i8*, i8** %src, align 8, !tbaa !1
  %arrayidx93 = getelementptr inbounds i8, i8* %92, i64 1
  %93 = load i8, i8* %arrayidx93, align 1, !tbaa !55
  %conv94 = zext i8 %93 to i32
  %or95 = or i32 %shl92, %conv94
  %conv96 = trunc i32 %or95 to i16
  store i16 %conv96, i16* %va, align 2, !tbaa !56
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.402

sw.epilog:                                        ; preds = %sw.bb.90, %cond.end.87, %sw.bb.69, %sw.bb.63, %sw.bb
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.97

do.body.97:                                       ; preds = %do.end
  %94 = load i32, i32* %src_depth, align 4, !tbaa !5
  %95 = load i32, i32* %sbit, align 4, !tbaa !5
  %add98 = add nsw i32 %95, %94
  store i32 %add98, i32* %sbit, align 4, !tbaa !5
  %96 = load i32, i32* %sbit, align 4, !tbaa !5
  %shr99 = ashr i32 %96, 3
  %97 = load i8*, i8** %src, align 8, !tbaa !1
  %idx.ext100 = sext i32 %shr99 to i64
  %add.ptr101 = getelementptr inbounds i8, i8* %97, i64 %idx.ext100
  store i8* %add.ptr101, i8** %src, align 8, !tbaa !1
  %98 = load i32, i32* %sbit, align 4, !tbaa !5
  %and102 = and i32 %98, 7
  store i32 %and102, i32* %sbit, align 4, !tbaa !5
  br label %do.cond.103

do.cond.103:                                      ; preds = %do.body.97
  br label %do.end.104

do.end.104:                                       ; preds = %do.cond.103
  %99 = load i16, i16* %va, align 2, !tbaa !56
  %conv105 = zext i16 %99 to i64
  %mul106 = mul i64 %conv105, 65535
  %100 = load i16, i16* %src_max, align 2, !tbaa !56
  %conv107 = zext i16 %100 to i64
  %div = udiv i64 %mul106, %conv107
  %conv108 = trunc i64 %div to i16
  store i16 %conv108, i16* %va, align 2, !tbaa !56
  store i32 1, i32* %do_alpha, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %do.end.104, %for.body.51
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.109

for.cond.109:                                     ; preds = %for.inc, %if.end
  %101 = load i32, i32* %j, align 4, !tbaa !5
  %102 = load i32, i32* %ncolors, align 4, !tbaa !5
  %cmp110 = icmp slt i32 %101, %102
  br i1 %cmp110, label %for.body.112, label %for.end

for.body.112:                                     ; preds = %for.cond.109
  %103 = bitcast i16* %vj to i8*
  call void @llvm.lifetime.start(i64 2, i8* %103) #1
  br label %do.body.113

do.body.113:                                      ; preds = %for.body.112
  %104 = load i32, i32* %src_depth, align 4, !tbaa !5
  %shr114 = ashr i32 %104, 2
  switch i32 %shr114, label %sw.default.157 [
    i32 0, label %sw.bb.115
    i32 1, label %sw.bb.123
    i32 2, label %sw.bb.129
    i32 3, label %sw.bb.131
    i32 4, label %sw.bb.150
  ]

sw.bb.115:                                        ; preds = %do.body.113
  %105 = load i8*, i8** %src, align 8, !tbaa !1
  %106 = load i8, i8* %105, align 1, !tbaa !55
  %conv116 = zext i8 %106 to i32
  %107 = load i32, i32* %sbit, align 4, !tbaa !5
  %sub117 = sub nsw i32 8, %107
  %108 = load i32, i32* %src_depth, align 4, !tbaa !5
  %sub118 = sub nsw i32 %sub117, %108
  %shr119 = ashr i32 %conv116, %sub118
  %109 = load i32, i32* %src_depth, align 4, !tbaa !5
  %or120 = or i32 %109, 1
  %and121 = and i32 %shr119, %or120
  %conv122 = trunc i32 %and121 to i16
  store i16 %conv122, i16* %vj, align 2, !tbaa !56
  br label %sw.epilog.158

sw.bb.123:                                        ; preds = %do.body.113
  %110 = load i8*, i8** %src, align 8, !tbaa !1
  %111 = load i8, i8* %110, align 1, !tbaa !55
  %conv124 = zext i8 %111 to i32
  %112 = load i32, i32* %sbit, align 4, !tbaa !5
  %sub125 = sub nsw i32 4, %112
  %shr126 = ashr i32 %conv124, %sub125
  %and127 = and i32 %shr126, 15
  %conv128 = trunc i32 %and127 to i16
  store i16 %conv128, i16* %vj, align 2, !tbaa !56
  br label %sw.epilog.158

sw.bb.129:                                        ; preds = %do.body.113
  %113 = load i8*, i8** %src, align 8, !tbaa !1
  %114 = load i8, i8* %113, align 1, !tbaa !55
  %conv130 = zext i8 %114 to i16
  store i16 %conv130, i16* %vj, align 2, !tbaa !56
  br label %sw.epilog.158

sw.bb.131:                                        ; preds = %do.body.113
  %115 = load i32, i32* %sbit, align 4, !tbaa !5
  %tobool132 = icmp ne i32 %115, 0
  br i1 %tobool132, label %cond.true.133, label %cond.false.140

cond.true.133:                                    ; preds = %sw.bb.131
  %116 = load i8*, i8** %src, align 8, !tbaa !1
  %117 = load i8, i8* %116, align 1, !tbaa !55
  %conv134 = zext i8 %117 to i32
  %and135 = and i32 %conv134, 15
  %shl136 = shl i32 %and135, 8
  %118 = load i8*, i8** %src, align 8, !tbaa !1
  %arrayidx137 = getelementptr inbounds i8, i8* %118, i64 1
  %119 = load i8, i8* %arrayidx137, align 1, !tbaa !55
  %conv138 = zext i8 %119 to i32
  %or139 = or i32 %shl136, %conv138
  br label %cond.end.147

cond.false.140:                                   ; preds = %sw.bb.131
  %120 = load i8*, i8** %src, align 8, !tbaa !1
  %121 = load i8, i8* %120, align 1, !tbaa !55
  %conv141 = zext i8 %121 to i32
  %shl142 = shl i32 %conv141, 4
  %122 = load i8*, i8** %src, align 8, !tbaa !1
  %arrayidx143 = getelementptr inbounds i8, i8* %122, i64 1
  %123 = load i8, i8* %arrayidx143, align 1, !tbaa !55
  %conv144 = zext i8 %123 to i32
  %shr145 = ashr i32 %conv144, 4
  %or146 = or i32 %shl142, %shr145
  br label %cond.end.147

cond.end.147:                                     ; preds = %cond.false.140, %cond.true.133
  %cond148 = phi i32 [ %or139, %cond.true.133 ], [ %or146, %cond.false.140 ]
  %conv149 = trunc i32 %cond148 to i16
  store i16 %conv149, i16* %vj, align 2, !tbaa !56
  br label %sw.epilog.158

sw.bb.150:                                        ; preds = %do.body.113
  %124 = load i8*, i8** %src, align 8, !tbaa !1
  %125 = load i8, i8* %124, align 1, !tbaa !55
  %conv151 = zext i8 %125 to i32
  %shl152 = shl i32 %conv151, 8
  %126 = load i8*, i8** %src, align 8, !tbaa !1
  %arrayidx153 = getelementptr inbounds i8, i8* %126, i64 1
  %127 = load i8, i8* %arrayidx153, align 1, !tbaa !55
  %conv154 = zext i8 %127 to i32
  %or155 = or i32 %shl152, %conv154
  %conv156 = trunc i32 %or155 to i16
  store i16 %conv156, i16* %vj, align 2, !tbaa !56
  br label %sw.epilog.158

sw.default.157:                                   ; preds = %do.body.113
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog.158:                                    ; preds = %sw.bb.150, %cond.end.147, %sw.bb.129, %sw.bb.123, %sw.bb.115
  br label %do.cond.159

do.cond.159:                                      ; preds = %sw.epilog.158
  br label %do.end.160

do.end.160:                                       ; preds = %do.cond.159
  br label %do.body.161

do.body.161:                                      ; preds = %do.end.160
  %128 = load i32, i32* %src_depth, align 4, !tbaa !5
  %129 = load i32, i32* %sbit, align 4, !tbaa !5
  %add162 = add nsw i32 %129, %128
  store i32 %add162, i32* %sbit, align 4, !tbaa !5
  %130 = load i32, i32* %sbit, align 4, !tbaa !5
  %shr163 = ashr i32 %130, 3
  %131 = load i8*, i8** %src, align 8, !tbaa !1
  %idx.ext164 = sext i32 %shr163 to i64
  %add.ptr165 = getelementptr inbounds i8, i8* %131, i64 %idx.ext164
  store i8* %add.ptr165, i8** %src, align 8, !tbaa !1
  %132 = load i32, i32* %sbit, align 4, !tbaa !5
  %and166 = and i32 %132, 7
  store i32 %and166, i32* %sbit, align 4, !tbaa !5
  br label %do.cond.167

do.cond.167:                                      ; preds = %do.body.161
  br label %do.end.168

do.end.168:                                       ; preds = %do.cond.167
  %133 = load i16, i16* %vj, align 2, !tbaa !56
  %conv169 = zext i16 %133 to i64
  %mul170 = mul nsw i64 %conv169, 32760
  %134 = load i16, i16* %src_max, align 2, !tbaa !56
  %conv171 = zext i16 %134 to i64
  %div172 = sdiv i64 %mul170, %conv171
  %conv173 = trunc i64 %div172 to i16
  %135 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom = sext i32 %135 to i64
  %arrayidx174 = getelementptr inbounds [4 x i16], [4 x i16]* %sc, i32 0, i64 %idxprom
  store i16 %conv173, i16* %arrayidx174, align 2, !tbaa !56
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.168, %sw.default.157
  %136 = bitcast i16* %vj to i8*
  call void @llvm.lifetime.end(i64 2, i8* %136) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.402 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %137 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add nsw i32 %137, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  br label %for.cond.109

for.end:                                          ; preds = %for.cond.109
  %138 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %stored.addr, align 8, !tbaa !1
  %options175 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %138, i32 0, i32 0
  %139 = load i64, i64* %options175, align 8, !tbaa !27
  %and176 = and i64 %139, 64
  %tobool177 = icmp ne i64 %and176, 0
  br i1 %tobool177, label %if.then.178, label %if.end.240

if.then.178:                                      ; preds = %for.end
  br label %do.body.179

do.body.179:                                      ; preds = %if.then.178
  %140 = load i32, i32* %src_depth, align 4, !tbaa !5
  %shr180 = ashr i32 %140, 2
  switch i32 %shr180, label %sw.default.223 [
    i32 0, label %sw.bb.181
    i32 1, label %sw.bb.189
    i32 2, label %sw.bb.195
    i32 3, label %sw.bb.197
    i32 4, label %sw.bb.216
  ]

sw.bb.181:                                        ; preds = %do.body.179
  %141 = load i8*, i8** %src, align 8, !tbaa !1
  %142 = load i8, i8* %141, align 1, !tbaa !55
  %conv182 = zext i8 %142 to i32
  %143 = load i32, i32* %sbit, align 4, !tbaa !5
  %sub183 = sub nsw i32 8, %143
  %144 = load i32, i32* %src_depth, align 4, !tbaa !5
  %sub184 = sub nsw i32 %sub183, %144
  %shr185 = ashr i32 %conv182, %sub184
  %145 = load i32, i32* %src_depth, align 4, !tbaa !5
  %or186 = or i32 %145, 1
  %and187 = and i32 %shr185, %or186
  %conv188 = trunc i32 %and187 to i16
  store i16 %conv188, i16* %va, align 2, !tbaa !56
  br label %sw.epilog.224

sw.bb.189:                                        ; preds = %do.body.179
  %146 = load i8*, i8** %src, align 8, !tbaa !1
  %147 = load i8, i8* %146, align 1, !tbaa !55
  %conv190 = zext i8 %147 to i32
  %148 = load i32, i32* %sbit, align 4, !tbaa !5
  %sub191 = sub nsw i32 4, %148
  %shr192 = ashr i32 %conv190, %sub191
  %and193 = and i32 %shr192, 15
  %conv194 = trunc i32 %and193 to i16
  store i16 %conv194, i16* %va, align 2, !tbaa !56
  br label %sw.epilog.224

sw.bb.195:                                        ; preds = %do.body.179
  %149 = load i8*, i8** %src, align 8, !tbaa !1
  %150 = load i8, i8* %149, align 1, !tbaa !55
  %conv196 = zext i8 %150 to i16
  store i16 %conv196, i16* %va, align 2, !tbaa !56
  br label %sw.epilog.224

sw.bb.197:                                        ; preds = %do.body.179
  %151 = load i32, i32* %sbit, align 4, !tbaa !5
  %tobool198 = icmp ne i32 %151, 0
  br i1 %tobool198, label %cond.true.199, label %cond.false.206

cond.true.199:                                    ; preds = %sw.bb.197
  %152 = load i8*, i8** %src, align 8, !tbaa !1
  %153 = load i8, i8* %152, align 1, !tbaa !55
  %conv200 = zext i8 %153 to i32
  %and201 = and i32 %conv200, 15
  %shl202 = shl i32 %and201, 8
  %154 = load i8*, i8** %src, align 8, !tbaa !1
  %arrayidx203 = getelementptr inbounds i8, i8* %154, i64 1
  %155 = load i8, i8* %arrayidx203, align 1, !tbaa !55
  %conv204 = zext i8 %155 to i32
  %or205 = or i32 %shl202, %conv204
  br label %cond.end.213

cond.false.206:                                   ; preds = %sw.bb.197
  %156 = load i8*, i8** %src, align 8, !tbaa !1
  %157 = load i8, i8* %156, align 1, !tbaa !55
  %conv207 = zext i8 %157 to i32
  %shl208 = shl i32 %conv207, 4
  %158 = load i8*, i8** %src, align 8, !tbaa !1
  %arrayidx209 = getelementptr inbounds i8, i8* %158, i64 1
  %159 = load i8, i8* %arrayidx209, align 1, !tbaa !55
  %conv210 = zext i8 %159 to i32
  %shr211 = ashr i32 %conv210, 4
  %or212 = or i32 %shl208, %shr211
  br label %cond.end.213

cond.end.213:                                     ; preds = %cond.false.206, %cond.true.199
  %cond214 = phi i32 [ %or205, %cond.true.199 ], [ %or212, %cond.false.206 ]
  %conv215 = trunc i32 %cond214 to i16
  store i16 %conv215, i16* %va, align 2, !tbaa !56
  br label %sw.epilog.224

sw.bb.216:                                        ; preds = %do.body.179
  %160 = load i8*, i8** %src, align 8, !tbaa !1
  %161 = load i8, i8* %160, align 1, !tbaa !55
  %conv217 = zext i8 %161 to i32
  %shl218 = shl i32 %conv217, 8
  %162 = load i8*, i8** %src, align 8, !tbaa !1
  %arrayidx219 = getelementptr inbounds i8, i8* %162, i64 1
  %163 = load i8, i8* %arrayidx219, align 1, !tbaa !55
  %conv220 = zext i8 %163 to i32
  %or221 = or i32 %shl218, %conv220
  %conv222 = trunc i32 %or221 to i16
  store i16 %conv222, i16* %va, align 2, !tbaa !56
  br label %sw.epilog.224

sw.default.223:                                   ; preds = %do.body.179
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.402

sw.epilog.224:                                    ; preds = %sw.bb.216, %cond.end.213, %sw.bb.195, %sw.bb.189, %sw.bb.181
  br label %do.cond.225

do.cond.225:                                      ; preds = %sw.epilog.224
  br label %do.end.226

do.end.226:                                       ; preds = %do.cond.225
  br label %do.body.227

do.body.227:                                      ; preds = %do.end.226
  %164 = load i32, i32* %src_depth, align 4, !tbaa !5
  %165 = load i32, i32* %sbit, align 4, !tbaa !5
  %add228 = add nsw i32 %165, %164
  store i32 %add228, i32* %sbit, align 4, !tbaa !5
  %166 = load i32, i32* %sbit, align 4, !tbaa !5
  %shr229 = ashr i32 %166, 3
  %167 = load i8*, i8** %src, align 8, !tbaa !1
  %idx.ext230 = sext i32 %shr229 to i64
  %add.ptr231 = getelementptr inbounds i8, i8* %167, i64 %idx.ext230
  store i8* %add.ptr231, i8** %src, align 8, !tbaa !1
  %168 = load i32, i32* %sbit, align 4, !tbaa !5
  %and232 = and i32 %168, 7
  store i32 %and232, i32* %sbit, align 4, !tbaa !5
  br label %do.cond.233

do.cond.233:                                      ; preds = %do.body.227
  br label %do.end.234

do.end.234:                                       ; preds = %do.cond.233
  %169 = load i16, i16* %va, align 2, !tbaa !56
  %conv235 = zext i16 %169 to i64
  %mul236 = mul i64 %conv235, 65535
  %170 = load i16, i16* %src_max, align 2, !tbaa !56
  %conv237 = zext i16 %170 to i64
  %div238 = udiv i64 %mul236, %conv237
  %conv239 = trunc i64 %div238 to i16
  store i16 %conv239, i16* %va, align 2, !tbaa !56
  store i32 1, i32* %do_alpha, align 4, !tbaa !5
  br label %if.end.240

if.end.240:                                       ; preds = %do.end.234, %for.end
  %171 = load i32, i32* %do_alpha, align 4, !tbaa !5
  %tobool241 = icmp ne i32 %171, 0
  br i1 %tobool241, label %if.then.242, label %if.else

if.then.242:                                      ; preds = %if.end.240
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.243

for.cond.243:                                     ; preds = %for.inc.259, %if.then.242
  %172 = load i32, i32* %j, align 4, !tbaa !5
  %173 = load i32, i32* %ncolors, align 4, !tbaa !5
  %cmp244 = icmp slt i32 %172, %173
  br i1 %cmp244, label %for.body.246, label %for.end.261

for.body.246:                                     ; preds = %for.cond.243
  %174 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom247 = sext i32 %174 to i64
  %arrayidx248 = getelementptr inbounds [4 x i16], [4 x i16]* %sc, i32 0, i64 %idxprom247
  %175 = load i16, i16* %arrayidx248, align 2, !tbaa !56
  %conv249 = sext i16 %175 to i32
  %shl250 = shl i32 %conv249, 1
  %176 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom251 = sext i32 %176 to i64
  %arrayidx252 = getelementptr inbounds [4 x i16], [4 x i16]* %sc, i32 0, i64 %idxprom251
  %177 = load i16, i16* %arrayidx252, align 2, !tbaa !56
  %conv253 = sext i16 %177 to i32
  %shr254 = ashr i32 %conv253, 11
  %add255 = add nsw i32 %shl250, %shr254
  %conv256 = trunc i32 %add255 to i16
  %178 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom257 = sext i32 %178 to i64
  %arrayidx258 = getelementptr inbounds [64 x i16], [64 x i16]* %v, i32 0, i64 %idxprom257
  store i16 %conv256, i16* %arrayidx258, align 2, !tbaa !56
  br label %for.inc.259

for.inc.259:                                      ; preds = %for.body.246
  %179 = load i32, i32* %j, align 4, !tbaa !5
  %inc260 = add nsw i32 %179, 1
  store i32 %inc260, i32* %j, align 4, !tbaa !5
  br label %for.cond.243

for.end.261:                                      ; preds = %for.cond.243
  %180 = load i32, i32* %ncolors, align 4, !tbaa !5
  %cmp262 = icmp eq i32 %180, 1
  br i1 %cmp262, label %if.then.264, label %if.end.268

if.then.264:                                      ; preds = %for.end.261
  %arrayidx265 = getelementptr inbounds [64 x i16], [64 x i16]* %v, i32 0, i64 0
  %181 = load i16, i16* %arrayidx265, align 2, !tbaa !56
  %arrayidx266 = getelementptr inbounds [64 x i16], [64 x i16]* %v, i32 0, i64 1
  store i16 %181, i16* %arrayidx266, align 2, !tbaa !56
  %arrayidx267 = getelementptr inbounds [64 x i16], [64 x i16]* %v, i32 0, i64 2
  store i16 %181, i16* %arrayidx267, align 2, !tbaa !56
  br label %if.end.268

if.end.268:                                       ; preds = %if.then.264, %for.end.261
  %182 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs269 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %182, i32 0, i32 42
  %map_rgb_alpha_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs269, i32 0, i32 18
  %183 = load i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)** %map_rgb_alpha_color, align 8, !tbaa !58
  %184 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arrayidx270 = getelementptr inbounds [64 x i16], [64 x i16]* %v, i32 0, i64 0
  %185 = load i16, i16* %arrayidx270, align 2, !tbaa !56
  %arrayidx271 = getelementptr inbounds [64 x i16], [64 x i16]* %v, i32 0, i64 1
  %186 = load i16, i16* %arrayidx271, align 2, !tbaa !56
  %arrayidx272 = getelementptr inbounds [64 x i16], [64 x i16]* %v, i32 0, i64 2
  %187 = load i16, i16* %arrayidx272, align 2, !tbaa !56
  %188 = load i16, i16* %va, align 2, !tbaa !56
  %call273 = call i64 %183(%struct.gx_device_s* %184, i16 zeroext %185, i16 zeroext %186, i16 zeroext %187, i16 zeroext %188) #4
  store i64 %call273, i64* %pixel, align 8, !tbaa !33
  br label %if.end.312

if.else:                                          ; preds = %if.end.240
  %189 = load i32, i32* %ncolors, align 4, !tbaa !5
  switch i32 %189, label %sw.default.287 [
    i32 1, label %sw.bb.274
    i32 3, label %sw.bb.276
    i32 4, label %sw.bb.281
  ]

sw.bb.274:                                        ; preds = %if.else
  %190 = load %struct.gx_cm_color_map_procs_s*, %struct.gx_cm_color_map_procs_s** %map_procs, align 8, !tbaa !1
  %map_gray = getelementptr inbounds %struct.gx_cm_color_map_procs_s, %struct.gx_cm_color_map_procs_s* %190, i32 0, i32 0
  %191 = load void (%struct.gx_device_s*, i16, i16*)*, void (%struct.gx_device_s*, i16, i16*)** %map_gray, align 8, !tbaa !59
  %192 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arrayidx275 = getelementptr inbounds [4 x i16], [4 x i16]* %sc, i32 0, i64 0
  %193 = load i16, i16* %arrayidx275, align 2, !tbaa !56
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %dc, i32 0, i32 0
  call void %191(%struct.gx_device_s* %192, i16 signext %193, i16* %arraydecay) #4
  br label %sw.epilog.288

sw.bb.276:                                        ; preds = %if.else
  %194 = load %struct.gx_cm_color_map_procs_s*, %struct.gx_cm_color_map_procs_s** %map_procs, align 8, !tbaa !1
  %map_rgb = getelementptr inbounds %struct.gx_cm_color_map_procs_s, %struct.gx_cm_color_map_procs_s* %194, i32 0, i32 1
  %195 = load void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)** %map_rgb, align 8, !tbaa !61
  %196 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arrayidx277 = getelementptr inbounds [4 x i16], [4 x i16]* %sc, i32 0, i64 0
  %197 = load i16, i16* %arrayidx277, align 2, !tbaa !56
  %arrayidx278 = getelementptr inbounds [4 x i16], [4 x i16]* %sc, i32 0, i64 1
  %198 = load i16, i16* %arrayidx278, align 2, !tbaa !56
  %arrayidx279 = getelementptr inbounds [4 x i16], [4 x i16]* %sc, i32 0, i64 2
  %199 = load i16, i16* %arrayidx279, align 2, !tbaa !56
  %arraydecay280 = getelementptr inbounds [64 x i16], [64 x i16]* %dc, i32 0, i32 0
  call void %195(%struct.gx_device_s* %196, %struct.gs_imager_state_s* null, i16 signext %197, i16 signext %198, i16 signext %199, i16* %arraydecay280) #4
  br label %sw.epilog.288

sw.bb.281:                                        ; preds = %if.else
  %200 = load %struct.gx_cm_color_map_procs_s*, %struct.gx_cm_color_map_procs_s** %map_procs, align 8, !tbaa !1
  %map_cmyk = getelementptr inbounds %struct.gx_cm_color_map_procs_s, %struct.gx_cm_color_map_procs_s* %200, i32 0, i32 2
  %201 = load void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)** %map_cmyk, align 8, !tbaa !62
  %202 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arrayidx282 = getelementptr inbounds [4 x i16], [4 x i16]* %sc, i32 0, i64 0
  %203 = load i16, i16* %arrayidx282, align 2, !tbaa !56
  %arrayidx283 = getelementptr inbounds [4 x i16], [4 x i16]* %sc, i32 0, i64 1
  %204 = load i16, i16* %arrayidx283, align 2, !tbaa !56
  %arrayidx284 = getelementptr inbounds [4 x i16], [4 x i16]* %sc, i32 0, i64 2
  %205 = load i16, i16* %arrayidx284, align 2, !tbaa !56
  %arrayidx285 = getelementptr inbounds [4 x i16], [4 x i16]* %sc, i32 0, i64 3
  %206 = load i16, i16* %arrayidx285, align 2, !tbaa !56
  %arraydecay286 = getelementptr inbounds [64 x i16], [64 x i16]* %dc, i32 0, i32 0
  call void %201(%struct.gx_device_s* %202, i16 signext %203, i16 signext %204, i16 signext %205, i16 signext %206, i16* %arraydecay286) #4
  br label %sw.epilog.288

sw.default.287:                                   ; preds = %if.else
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.402

sw.epilog.288:                                    ; preds = %sw.bb.281, %sw.bb.276, %sw.bb.274
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.289

for.cond.289:                                     ; preds = %for.inc.306, %sw.epilog.288
  %207 = load i32, i32* %j, align 4, !tbaa !5
  %208 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info290 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %208, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info290, i32 0, i32 1
  %209 = load i32, i32* %num_components, align 4, !tbaa !34
  %cmp291 = icmp slt i32 %207, %209
  br i1 %cmp291, label %for.body.293, label %for.end.308

for.body.293:                                     ; preds = %for.cond.289
  %210 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom294 = sext i32 %210 to i64
  %arrayidx295 = getelementptr inbounds [64 x i16], [64 x i16]* %dc, i32 0, i64 %idxprom294
  %211 = load i16, i16* %arrayidx295, align 2, !tbaa !56
  %conv296 = sext i16 %211 to i32
  %shl297 = shl i32 %conv296, 1
  %212 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom298 = sext i32 %212 to i64
  %arrayidx299 = getelementptr inbounds [64 x i16], [64 x i16]* %dc, i32 0, i64 %idxprom298
  %213 = load i16, i16* %arrayidx299, align 2, !tbaa !56
  %conv300 = sext i16 %213 to i32
  %shr301 = ashr i32 %conv300, 11
  %add302 = add nsw i32 %shl297, %shr301
  %conv303 = trunc i32 %add302 to i16
  %214 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom304 = sext i32 %214 to i64
  %arrayidx305 = getelementptr inbounds [64 x i16], [64 x i16]* %v, i32 0, i64 %idxprom304
  store i16 %conv303, i16* %arrayidx305, align 2, !tbaa !56
  br label %for.inc.306

for.inc.306:                                      ; preds = %for.body.293
  %215 = load i32, i32* %j, align 4, !tbaa !5
  %inc307 = add nsw i32 %215, 1
  store i32 %inc307, i32* %j, align 4, !tbaa !5
  br label %for.cond.289

for.end.308:                                      ; preds = %for.cond.289
  %216 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs309 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %216, i32 0, i32 42
  %encode_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs309, i32 0, i32 51
  %217 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color, align 8, !tbaa !63
  %218 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arraydecay310 = getelementptr inbounds [64 x i16], [64 x i16]* %v, i32 0, i32 0
  %call311 = call i64 %217(%struct.gx_device_s* %218, i16* %arraydecay310) #4
  store i64 %call311, i64* %pixel, align 8, !tbaa !33
  br label %if.end.312

if.end.312:                                       ; preds = %for.end.308, %if.end.268
  br label %do.body.313

do.body.313:                                      ; preds = %if.end.312
  %219 = load i32, i32* %depth, align 4, !tbaa !5
  %shr314 = ashr i32 %219, 2
  switch i32 %shr314, label %sw.default.398 [
    i32 0, label %sw.bb.315
    i32 1, label %sw.bb.334
    i32 3, label %sw.bb.347
    i32 16, label %sw.bb.367
    i32 14, label %sw.bb.371
    i32 12, label %sw.bb.375
    i32 10, label %sw.bb.379
    i32 8, label %sw.bb.383
    i32 6, label %sw.bb.387
    i32 4, label %sw.bb.391
    i32 2, label %sw.bb.395
  ]

sw.bb.315:                                        ; preds = %do.body.313
  %220 = load i32, i32* %depth, align 4, !tbaa !5
  %221 = load i32, i32* %dbit, align 4, !tbaa !5
  %add316 = add nsw i32 %221, %220
  store i32 %add316, i32* %dbit, align 4, !tbaa !5
  %cmp317 = icmp eq i32 %add316, 8
  br i1 %cmp317, label %if.then.319, label %if.else.325

if.then.319:                                      ; preds = %sw.bb.315
  %222 = load i8, i8* %dbyte, align 1, !tbaa !55
  %conv320 = zext i8 %222 to i32
  %223 = load i64, i64* %pixel, align 8, !tbaa !33
  %conv321 = trunc i64 %223 to i8
  %conv322 = zext i8 %conv321 to i32
  %or323 = or i32 %conv320, %conv322
  %conv324 = trunc i32 %or323 to i8
  %224 = load i8*, i8** %dest, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %224, i32 1
  store i8* %incdec.ptr, i8** %dest, align 8, !tbaa !1
  store i8 %conv324, i8* %224, align 1, !tbaa !55
  store i8 0, i8* %dbyte, align 1, !tbaa !55
  store i32 0, i32* %dbit, align 4, !tbaa !5
  br label %if.end.333

if.else.325:                                      ; preds = %sw.bb.315
  %225 = load i64, i64* %pixel, align 8, !tbaa !33
  %226 = load i32, i32* %dbit, align 4, !tbaa !5
  %sub326 = sub nsw i32 8, %226
  %sh_prom = zext i32 %sub326 to i64
  %shl327 = shl i64 %225, %sh_prom
  %conv328 = trunc i64 %shl327 to i8
  %conv329 = zext i8 %conv328 to i32
  %227 = load i8, i8* %dbyte, align 1, !tbaa !55
  %conv330 = zext i8 %227 to i32
  %or331 = or i32 %conv330, %conv329
  %conv332 = trunc i32 %or331 to i8
  store i8 %conv332, i8* %dbyte, align 1, !tbaa !55
  br label %if.end.333

if.end.333:                                       ; preds = %if.else.325, %if.then.319
  br label %sw.epilog.399

sw.bb.334:                                        ; preds = %do.body.313
  %228 = load i32, i32* %dbit, align 4, !tbaa !5
  %xor = xor i32 %228, 4
  store i32 %xor, i32* %dbit, align 4, !tbaa !5
  %tobool335 = icmp ne i32 %xor, 0
  br i1 %tobool335, label %if.then.336, label %if.else.339

if.then.336:                                      ; preds = %sw.bb.334
  %229 = load i64, i64* %pixel, align 8, !tbaa !33
  %shl337 = shl i64 %229, 4
  %conv338 = trunc i64 %shl337 to i8
  store i8 %conv338, i8* %dbyte, align 1, !tbaa !55
  br label %if.end.346

if.else.339:                                      ; preds = %sw.bb.334
  %230 = load i8, i8* %dbyte, align 1, !tbaa !55
  %conv340 = zext i8 %230 to i32
  %231 = load i64, i64* %pixel, align 8, !tbaa !33
  %conv341 = trunc i64 %231 to i8
  %conv342 = zext i8 %conv341 to i32
  %or343 = or i32 %conv340, %conv342
  %conv344 = trunc i32 %or343 to i8
  %232 = load i8*, i8** %dest, align 8, !tbaa !1
  %incdec.ptr345 = getelementptr inbounds i8, i8* %232, i32 1
  store i8* %incdec.ptr345, i8** %dest, align 8, !tbaa !1
  store i8 %conv344, i8* %232, align 1, !tbaa !55
  br label %if.end.346

if.end.346:                                       ; preds = %if.else.339, %if.then.336
  br label %sw.epilog.399

sw.bb.347:                                        ; preds = %do.body.313
  %233 = load i32, i32* %dbit, align 4, !tbaa !5
  %xor348 = xor i32 %233, 4
  store i32 %xor348, i32* %dbit, align 4, !tbaa !5
  %tobool349 = icmp ne i32 %xor348, 0
  br i1 %tobool349, label %if.then.350, label %if.else.356

if.then.350:                                      ; preds = %sw.bb.347
  %234 = load i64, i64* %pixel, align 8, !tbaa !33
  %shr351 = lshr i64 %234, 4
  %conv352 = trunc i64 %shr351 to i8
  %235 = load i8*, i8** %dest, align 8, !tbaa !1
  %incdec.ptr353 = getelementptr inbounds i8, i8* %235, i32 1
  store i8* %incdec.ptr353, i8** %dest, align 8, !tbaa !1
  store i8 %conv352, i8* %235, align 1, !tbaa !55
  %236 = load i64, i64* %pixel, align 8, !tbaa !33
  %shl354 = shl i64 %236, 4
  %conv355 = trunc i64 %shl354 to i8
  store i8 %conv355, i8* %dbyte, align 1, !tbaa !55
  br label %if.end.366

if.else.356:                                      ; preds = %sw.bb.347
  %237 = load i8, i8* %dbyte, align 1, !tbaa !55
  %conv357 = zext i8 %237 to i32
  %238 = load i64, i64* %pixel, align 8, !tbaa !33
  %shr358 = lshr i64 %238, 8
  %conv359 = trunc i64 %shr358 to i8
  %conv360 = zext i8 %conv359 to i32
  %or361 = or i32 %conv357, %conv360
  %conv362 = trunc i32 %or361 to i8
  %239 = load i8*, i8** %dest, align 8, !tbaa !1
  store i8 %conv362, i8* %239, align 1, !tbaa !55
  %240 = load i64, i64* %pixel, align 8, !tbaa !33
  %conv363 = trunc i64 %240 to i8
  %241 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx364 = getelementptr inbounds i8, i8* %241, i64 1
  store i8 %conv363, i8* %arrayidx364, align 1, !tbaa !55
  %242 = load i8*, i8** %dest, align 8, !tbaa !1
  %add.ptr365 = getelementptr inbounds i8, i8* %242, i64 2
  store i8* %add.ptr365, i8** %dest, align 8, !tbaa !1
  br label %if.end.366

if.end.366:                                       ; preds = %if.else.356, %if.then.350
  br label %sw.epilog.399

sw.bb.367:                                        ; preds = %do.body.313
  %243 = load i64, i64* %pixel, align 8, !tbaa !33
  %shr368 = lshr i64 %243, 56
  %conv369 = trunc i64 %shr368 to i8
  %244 = load i8*, i8** %dest, align 8, !tbaa !1
  %incdec.ptr370 = getelementptr inbounds i8, i8* %244, i32 1
  store i8* %incdec.ptr370, i8** %dest, align 8, !tbaa !1
  store i8 %conv369, i8* %244, align 1, !tbaa !55
  br label %sw.bb.371

sw.bb.371:                                        ; preds = %do.body.313, %sw.bb.367
  %245 = load i64, i64* %pixel, align 8, !tbaa !33
  %shr372 = lshr i64 %245, 48
  %conv373 = trunc i64 %shr372 to i8
  %246 = load i8*, i8** %dest, align 8, !tbaa !1
  %incdec.ptr374 = getelementptr inbounds i8, i8* %246, i32 1
  store i8* %incdec.ptr374, i8** %dest, align 8, !tbaa !1
  store i8 %conv373, i8* %246, align 1, !tbaa !55
  br label %sw.bb.375

sw.bb.375:                                        ; preds = %do.body.313, %sw.bb.371
  %247 = load i64, i64* %pixel, align 8, !tbaa !33
  %shr376 = lshr i64 %247, 40
  %conv377 = trunc i64 %shr376 to i8
  %248 = load i8*, i8** %dest, align 8, !tbaa !1
  %incdec.ptr378 = getelementptr inbounds i8, i8* %248, i32 1
  store i8* %incdec.ptr378, i8** %dest, align 8, !tbaa !1
  store i8 %conv377, i8* %248, align 1, !tbaa !55
  br label %sw.bb.379

sw.bb.379:                                        ; preds = %do.body.313, %sw.bb.375
  %249 = load i64, i64* %pixel, align 8, !tbaa !33
  %shr380 = lshr i64 %249, 32
  %conv381 = trunc i64 %shr380 to i8
  %250 = load i8*, i8** %dest, align 8, !tbaa !1
  %incdec.ptr382 = getelementptr inbounds i8, i8* %250, i32 1
  store i8* %incdec.ptr382, i8** %dest, align 8, !tbaa !1
  store i8 %conv381, i8* %250, align 1, !tbaa !55
  br label %sw.bb.383

sw.bb.383:                                        ; preds = %do.body.313, %sw.bb.379
  %251 = load i64, i64* %pixel, align 8, !tbaa !33
  %shr384 = lshr i64 %251, 24
  %conv385 = trunc i64 %shr384 to i8
  %252 = load i8*, i8** %dest, align 8, !tbaa !1
  %incdec.ptr386 = getelementptr inbounds i8, i8* %252, i32 1
  store i8* %incdec.ptr386, i8** %dest, align 8, !tbaa !1
  store i8 %conv385, i8* %252, align 1, !tbaa !55
  br label %sw.bb.387

sw.bb.387:                                        ; preds = %do.body.313, %sw.bb.383
  %253 = load i64, i64* %pixel, align 8, !tbaa !33
  %shr388 = lshr i64 %253, 16
  %conv389 = trunc i64 %shr388 to i8
  %254 = load i8*, i8** %dest, align 8, !tbaa !1
  %incdec.ptr390 = getelementptr inbounds i8, i8* %254, i32 1
  store i8* %incdec.ptr390, i8** %dest, align 8, !tbaa !1
  store i8 %conv389, i8* %254, align 1, !tbaa !55
  br label %sw.bb.391

sw.bb.391:                                        ; preds = %do.body.313, %sw.bb.387
  %255 = load i64, i64* %pixel, align 8, !tbaa !33
  %shr392 = lshr i64 %255, 8
  %conv393 = trunc i64 %shr392 to i8
  %256 = load i8*, i8** %dest, align 8, !tbaa !1
  %incdec.ptr394 = getelementptr inbounds i8, i8* %256, i32 1
  store i8* %incdec.ptr394, i8** %dest, align 8, !tbaa !1
  store i8 %conv393, i8* %256, align 1, !tbaa !55
  br label %sw.bb.395

sw.bb.395:                                        ; preds = %do.body.313, %sw.bb.391
  %257 = load i64, i64* %pixel, align 8, !tbaa !33
  %conv396 = trunc i64 %257 to i8
  %258 = load i8*, i8** %dest, align 8, !tbaa !1
  %incdec.ptr397 = getelementptr inbounds i8, i8* %258, i32 1
  store i8* %incdec.ptr397, i8** %dest, align 8, !tbaa !1
  store i8 %conv396, i8* %258, align 1, !tbaa !55
  br label %sw.epilog.399

sw.default.398:                                   ; preds = %do.body.313
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.402

sw.epilog.399:                                    ; preds = %sw.bb.395, %if.end.366, %if.end.346, %if.end.333
  br label %do.cond.400

do.cond.400:                                      ; preds = %sw.epilog.399
  br label %do.end.401

do.end.401:                                       ; preds = %do.cond.400
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.402

cleanup.402:                                      ; preds = %do.end.401, %sw.default.398, %sw.default.287, %sw.default.223, %cleanup, %sw.default
  %259 = bitcast %struct.gx_cm_color_map_procs_s** %map_procs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %259) #1
  %260 = bitcast i32* %do_alpha to i8*
  call void @llvm.lifetime.end(i64 4, i8* %260) #1
  %261 = bitcast i64* %pixel to i8*
  call void @llvm.lifetime.end(i64 8, i8* %261) #1
  %262 = bitcast i16* %va to i8*
  call void @llvm.lifetime.end(i64 2, i8* %262) #1
  %263 = bitcast [64 x i16]* %v to i8*
  call void @llvm.lifetime.end(i64 128, i8* %263) #1
  %264 = bitcast [64 x i16]* %dc to i8*
  call void @llvm.lifetime.end(i64 128, i8* %264) #1
  %265 = bitcast [4 x i16]* %sc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %265) #1
  %266 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %266) #1
  %cleanup.dest.410 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.410, label %cleanup.425 [
    i32 0, label %cleanup.cont.411
  ]

cleanup.cont.411:                                 ; preds = %cleanup.402
  br label %for.inc.412

for.inc.412:                                      ; preds = %cleanup.cont.411
  %267 = load i32, i32* %i, align 4, !tbaa !5
  %inc413 = add nsw i32 %267, 1
  store i32 %inc413, i32* %i, align 4, !tbaa !5
  br label %for.cond.48

for.end.414:                                      ; preds = %for.cond.48
  %268 = load i32, i32* %dbit, align 4, !tbaa !5
  %cmp415 = icmp ne i32 %268, 0
  br i1 %cmp415, label %if.then.417, label %if.end.424

if.then.417:                                      ; preds = %for.end.414
  %269 = load i8, i8* %dbyte, align 1, !tbaa !55
  %conv418 = zext i8 %269 to i32
  %270 = load i8*, i8** %dest, align 8, !tbaa !1
  %271 = load i8, i8* %270, align 1, !tbaa !55
  %conv419 = zext i8 %271 to i32
  %272 = load i32, i32* %dbit, align 4, !tbaa !5
  %shr420 = ashr i32 255, %272
  %and421 = and i32 %conv419, %shr420
  %or422 = or i32 %conv418, %and421
  %conv423 = trunc i32 %or422 to i8
  %273 = load i8*, i8** %dest, align 8, !tbaa !1
  store i8 %conv423, i8* %273, align 1, !tbaa !55
  br label %if.end.424

if.end.424:                                       ; preds = %if.then.417, %for.end.414
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.425

cleanup.425:                                      ; preds = %if.end.424, %cleanup.402
  call void @llvm.lifetime.end(i64 1, i8* %dbyte) #1
  %274 = bitcast i32* %dbit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %274) #1
  %275 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %275) #1
  %276 = bitcast i32* %sbit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %276) #1
  %277 = bitcast i8** %src to i8*
  call void @llvm.lifetime.end(i64 8, i8* %277) #1
  %278 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %278) #1
  %cleanup.dest.431 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.431, label %cleanup.439 [
    i32 0, label %cleanup.cont.432
  ]

cleanup.cont.432:                                 ; preds = %cleanup.425
  br label %for.inc.433

for.inc.433:                                      ; preds = %cleanup.cont.432
  %279 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %280 = load i8*, i8** %dest_line, align 8, !tbaa !1
  %idx.ext434 = zext i32 %279 to i64
  %add.ptr435 = getelementptr inbounds i8, i8* %280, i64 %idx.ext434
  store i8* %add.ptr435, i8** %dest_line, align 8, !tbaa !1
  %281 = load i32, i32* %dev_raster.addr, align 4, !tbaa !5
  %282 = load i8*, i8** %src_line, align 8, !tbaa !1
  %idx.ext436 = zext i32 %281 to i64
  %add.ptr437 = getelementptr inbounds i8, i8* %282, i64 %idx.ext436
  store i8* %add.ptr437, i8** %src_line, align 8, !tbaa !1
  %283 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec = add nsw i32 %283, -1
  store i32 %dec, i32* %h.addr, align 4, !tbaa !5
  br label %for.cond

for.end.438:                                      ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.439

cleanup.439:                                      ; preds = %for.end.438, %cleanup.425
  %284 = bitcast i16* %alpha_default to i8*
  call void @llvm.lifetime.end(i64 2, i8* %284) #1
  %285 = bitcast i16* %src_max to i8*
  call void @llvm.lifetime.end(i64 2, i8* %285) #1
  %286 = bitcast i8** %src_line to i8*
  call void @llvm.lifetime.end(i64 8, i8* %286) #1
  %287 = bitcast i32* %src_bit_offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %287) #1
  %288 = bitcast i32* %src_depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %288) #1
  %289 = bitcast i32* %ncomp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %289) #1
  %290 = bitcast i32* %ncolors to i8*
  call void @llvm.lifetime.end(i64 4, i8* %290) #1
  %291 = bitcast i8** %dest_line to i8*
  call void @llvm.lifetime.end(i64 8, i8* %291) #1
  %292 = bitcast i32* %dest_bit_offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %292) #1
  %293 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %293) #1
  %294 = load i32, i32* %retval
  ret i32 %294
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_get_bits_native_to_std(%struct.gx_device_s* %dev, i32 %x, i32 %w, i32 %h, %struct.gs_get_bits_params_s* %params, %struct.gs_get_bits_params_s* %stored, i8* %src_base, i32 %dev_raster, i32 %x_offset, i32 %raster, i32 %std_raster) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %x.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %params.addr = alloca %struct.gs_get_bits_params_s*, align 8
  %stored.addr = alloca %struct.gs_get_bits_params_s*, align 8
  %src_base.addr = alloca i8*, align 8
  %dev_raster.addr = alloca i32, align 4
  %x_offset.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %std_raster.addr = alloca i32, align 4
  %depth = alloca i32, align 4
  %src_bit_offset = alloca i32, align 4
  %src_line = alloca i8*, align 8
  %options = alloca i64, align 8
  %ncomp = alloca i32, align 4
  %dest_line = alloca i8*, align 8
  %mapped = alloca [16 x i8*], align 16
  %dest_bytes = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %end_byte = alloca i32, align 4
  %src = alloca i8*, align 8
  %bit = alloca i32, align 4
  %dest = alloca i8*, align 8
  %pixel = alloca i64, align 8
  %rgba = alloca [4 x i16], align 2
  %white = alloca i16, align 2
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store %struct.gs_get_bits_params_s* %params, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gs_get_bits_params_s* %stored, %struct.gs_get_bits_params_s** %stored.addr, align 8, !tbaa !1
  store i8* %src_base, i8** %src_base.addr, align 8, !tbaa !1
  store i32 %dev_raster, i32* %dev_raster.addr, align 4, !tbaa !5
  store i32 %x_offset, i32* %x_offset.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i32 %std_raster, i32* %std_raster.addr, align 4, !tbaa !5
  %0 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 11
  %depth1 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %2 = load i16, i16* %depth1, align 2, !tbaa !30
  %conv = zext i16 %2 to i32
  store i32 %conv, i32* %depth, align 4, !tbaa !5
  %3 = bitcast i32* %src_bit_offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %x.addr, align 4, !tbaa !5
  %5 = load i32, i32* %depth, align 4, !tbaa !5
  %mul = mul nsw i32 %4, %5
  store i32 %mul, i32* %src_bit_offset, align 4, !tbaa !5
  %6 = bitcast i8** %src_line to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i8*, i8** %src_base.addr, align 8, !tbaa !1
  %8 = load i32, i32* %src_bit_offset, align 4, !tbaa !5
  %shr = ashr i32 %8, 3
  %idx.ext = sext i32 %shr to i64
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %idx.ext
  store i8* %add.ptr, i8** %src_line, align 8, !tbaa !1
  %9 = bitcast i64* %options to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %options2 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %10, i32 0, i32 0
  %11 = load i64, i64* %options2, align 8, !tbaa !27
  store i64 %11, i64* %options, align 8, !tbaa !33
  %12 = bitcast i32* %ncomp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load i64, i64* %options, align 8, !tbaa !33
  %and = and i64 %13, 96
  %tobool = icmp ne i64 %and, 0
  %cond = select i1 %tobool, i32 4, i32 3
  store i32 %cond, i32* %ncomp, align 4, !tbaa !5
  %14 = bitcast i8** %dest_line to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %15, i32 0, i32 1
  %arrayidx = getelementptr inbounds [64 x i8*], [64 x i8*]* %data, i32 0, i64 0
  %16 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %17 = load i32, i32* %x_offset.addr, align 4, !tbaa !5
  %18 = load i32, i32* %ncomp, align 4, !tbaa !5
  %mul3 = mul nsw i32 %17, %18
  %idx.ext4 = sext i32 %mul3 to i64
  %add.ptr5 = getelementptr inbounds i8, i8* %16, i64 %idx.ext4
  store i8* %add.ptr5, i8** %dest_line, align 8, !tbaa !1
  %19 = bitcast [16 x i8*]* %mapped to i8*
  call void @llvm.lifetime.start(i64 128, i8* %19) #1
  %20 = bitcast i32* %dest_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load i64, i64* %options, align 8, !tbaa !33
  %and6 = and i64 %22, 2048
  %tobool7 = icmp ne i64 %and6, 0
  br i1 %tobool7, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.429

if.end:                                           ; preds = %entry
  %23 = load i64, i64* %options, align 8, !tbaa !33
  %and8 = and i64 %23, 4
  %tobool9 = icmp ne i64 %and8, 0
  br i1 %tobool9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end
  %24 = load i64, i64* %options, align 8, !tbaa !33
  %and11 = and i64 %24, -11
  store i64 %and11, i64* %options, align 8, !tbaa !33
  %25 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %options12 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %25, i32 0, i32 0
  store i64 %and11, i64* %options12, align 8, !tbaa !27
  store i32 3, i32* %dest_bytes, align 4, !tbaa !5
  br label %if.end.27

if.else:                                          ; preds = %if.end
  %26 = load i64, i64* %options, align 8, !tbaa !33
  %and13 = and i64 %26, 8
  %tobool14 = icmp ne i64 %and13, 0
  br i1 %tobool14, label %if.then.15, label %if.else.18

if.then.15:                                       ; preds = %if.else
  %27 = load i64, i64* %options, align 8, !tbaa !33
  %and16 = and i64 %27, -7
  store i64 %and16, i64* %options, align 8, !tbaa !33
  %28 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %options17 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %28, i32 0, i32 0
  store i64 %and16, i64* %options17, align 8, !tbaa !27
  store i32 4, i32* %dest_bytes, align 4, !tbaa !5
  br label %if.end.26

if.else.18:                                       ; preds = %if.else
  %29 = load i64, i64* %options, align 8, !tbaa !33
  %and19 = and i64 %29, 2
  %tobool20 = icmp ne i64 %and19, 0
  br i1 %tobool20, label %if.then.21, label %if.else.24

if.then.21:                                       ; preds = %if.else.18
  %30 = load i64, i64* %options, align 8, !tbaa !33
  %and22 = and i64 %30, -13
  store i64 %and22, i64* %options, align 8, !tbaa !33
  %31 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %options23 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %31, i32 0, i32 0
  store i64 %and22, i64* %options23, align 8, !tbaa !27
  store i32 1, i32* %dest_bytes, align 4, !tbaa !5
  br label %if.end.25

if.else.24:                                       ; preds = %if.else.18
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.429

if.end.25:                                        ; preds = %if.then.21
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then.15
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.10
  %32 = load i64, i64* %options, align 8, !tbaa !33
  %and28 = and i64 %32, 268435456
  %tobool29 = icmp ne i64 %and28, 0
  br i1 %tobool29, label %if.then.30, label %if.end.38

if.then.30:                                       ; preds = %if.end.27
  %33 = bitcast i32* %end_byte to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  %34 = load i32, i32* %x_offset.addr, align 4, !tbaa !5
  %35 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add = add nsw i32 %34, %35
  %36 = load i32, i32* %dest_bytes, align 4, !tbaa !5
  %mul31 = mul nsw i32 %add, %36
  store i32 %mul31, i32* %end_byte, align 4, !tbaa !5
  %37 = load i64, i64* %options, align 8, !tbaa !33
  %and32 = and i64 %37, 4194304
  %tobool33 = icmp ne i64 %and32, 0
  br i1 %tobool33, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.30
  %38 = load i32, i32* %end_byte, align 4, !tbaa !5
  %shl = shl i32 %38, 3
  %add34 = add i32 %shl, 63
  %shr35 = lshr i32 %add34, 6
  %shl36 = shl i32 %shr35, 3
  br label %cond.end

cond.false:                                       ; preds = %if.then.30
  %39 = load i32, i32* %end_byte, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond37 = phi i32 [ %shl36, %cond.true ], [ %39, %cond.false ]
  store i32 %cond37, i32* %std_raster.addr, align 4, !tbaa !5
  store i32 %cond37, i32* %raster.addr, align 4, !tbaa !5
  %40 = bitcast i32* %end_byte to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  br label %if.end.38

if.end.38:                                        ; preds = %cond.end, %if.end.27
  %41 = load i64, i64* %options, align 8, !tbaa !33
  %and39 = and i64 %41, 100
  %cmp = icmp eq i64 %and39, 4
  br i1 %cmp, label %land.lhs.true, label %if.end.45

land.lhs.true:                                    ; preds = %if.end.38
  %42 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %42, i32 0, i32 42
  %dev_spec_op = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 65
  %43 = load i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)** %dev_spec_op, align 8, !tbaa !64
  %44 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 %43(%struct.gx_device_s* %44, i32 8, i8* null, i32 0) #4
  %cmp41 = icmp sgt i32 %call, 0
  br i1 %cmp41, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %land.lhs.true
  %45 = load i8*, i8** %dest_line, align 8, !tbaa !1
  %46 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %47 = load i8*, i8** %src_line, align 8, !tbaa !1
  %48 = load i32, i32* %dev_raster.addr, align 4, !tbaa !5
  %49 = load i32, i32* %src_bit_offset, align 4, !tbaa !5
  %and44 = and i32 %49, 7
  %50 = load i32, i32* %w.addr, align 4, !tbaa !5
  %51 = load i32, i32* %h.addr, align 4, !tbaa !5
  call void @gx_get_bits_copy_cmyk_1bit(i8* %45, i32 %46, i8* %47, i32 %48, i32 %and44, i32 %50, i32 %51) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.429

if.end.45:                                        ; preds = %land.lhs.true, %if.end.38
  %52 = load i64, i64* %options, align 8, !tbaa !33
  %and46 = and i64 %52, 96
  %tobool47 = icmp ne i64 %and46, 0
  br i1 %tobool47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.end.45
  %53 = load i32, i32* %dest_bytes, align 4, !tbaa !5
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* %dest_bytes, align 4, !tbaa !5
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %if.end.45
  %54 = load i32, i32* %depth, align 4, !tbaa !5
  %cmp50 = icmp sgt i32 %54, 4
  br i1 %cmp50, label %cond.true.52, label %cond.false.53

cond.true.52:                                     ; preds = %if.end.49
  br label %cond.end.55

cond.false.53:                                    ; preds = %if.end.49
  %55 = load i32, i32* %depth, align 4, !tbaa !5
  %shl54 = shl i32 1, %55
  br label %cond.end.55

cond.end.55:                                      ; preds = %cond.false.53, %cond.true.52
  %cond56 = phi i32 [ 16, %cond.true.52 ], [ %shl54, %cond.false.53 ]
  store i32 %cond56, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.body, %cond.end.55
  %56 = load i32, i32* %i, align 4, !tbaa !5
  %dec = add nsw i32 %56, -1
  store i32 %dec, i32* %i, align 4, !tbaa !5
  %cmp57 = icmp sge i32 %dec, 0
  br i1 %cmp57, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %57 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %57 to i64
  %arrayidx59 = getelementptr inbounds [16 x i8*], [16 x i8*]* %mapped, i32 0, i64 %idxprom
  store i8* null, i8** %arrayidx59, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc.422, %for.end
  %58 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp61 = icmp sgt i32 %58, 0
  br i1 %cmp61, label %for.body.63, label %for.end.428

for.body.63:                                      ; preds = %for.cond.60
  %59 = bitcast i8** %src to i8*
  call void @llvm.lifetime.start(i64 8, i8* %59) #1
  %60 = load i8*, i8** %src_line, align 8, !tbaa !1
  store i8* %60, i8** %src, align 8, !tbaa !1
  %61 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %61) #1
  %62 = load i32, i32* %src_bit_offset, align 4, !tbaa !5
  %and64 = and i32 %62, 7
  store i32 %and64, i32* %bit, align 4, !tbaa !5
  %63 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.start(i64 8, i8* %63) #1
  %64 = load i8*, i8** %dest_line, align 8, !tbaa !1
  store i8* %64, i8** %dest, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.65

for.cond.65:                                      ; preds = %for.inc, %for.body.63
  %65 = load i32, i32* %i, align 4, !tbaa !5
  %66 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp66 = icmp slt i32 %65, %66
  br i1 %cmp66, label %for.body.68, label %for.end.416

for.body.68:                                      ; preds = %for.cond.65
  %67 = bitcast i64* %pixel to i8*
  call void @llvm.lifetime.start(i64 8, i8* %67) #1
  store i64 0, i64* %pixel, align 8, !tbaa !33
  %68 = bitcast [4 x i16]* %rgba to i8*
  call void @llvm.lifetime.start(i64 8, i8* %68) #1
  br label %do.body

do.body:                                          ; preds = %for.body.68
  %69 = load i32, i32* %depth, align 4, !tbaa !5
  %shr69 = ashr i32 %69, 2
  switch i32 %shr69, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.75
    i32 2, label %sw.bb.81
    i32 3, label %sw.bb.83
    i32 4, label %sw.bb.102
    i32 6, label %sw.bb.109
    i32 8, label %sw.bb.120
    i32 10, label %sw.bb.135
    i32 12, label %sw.bb.154
    i32 14, label %sw.bb.177
    i32 16, label %sw.bb.204
  ]

sw.bb:                                            ; preds = %do.body
  %70 = load i8*, i8** %src, align 8, !tbaa !1
  %71 = load i8, i8* %70, align 1, !tbaa !55
  %conv70 = zext i8 %71 to i32
  %72 = load i32, i32* %bit, align 4, !tbaa !5
  %sub = sub nsw i32 8, %72
  %73 = load i32, i32* %depth, align 4, !tbaa !5
  %sub71 = sub nsw i32 %sub, %73
  %shr72 = ashr i32 %conv70, %sub71
  %74 = load i32, i32* %depth, align 4, !tbaa !5
  %or = or i32 %74, 1
  %and73 = and i32 %shr72, %or
  %conv74 = sext i32 %and73 to i64
  store i64 %conv74, i64* %pixel, align 8, !tbaa !33
  br label %sw.epilog

sw.bb.75:                                         ; preds = %do.body
  %75 = load i8*, i8** %src, align 8, !tbaa !1
  %76 = load i8, i8* %75, align 1, !tbaa !55
  %conv76 = zext i8 %76 to i32
  %77 = load i32, i32* %bit, align 4, !tbaa !5
  %sub77 = sub nsw i32 4, %77
  %shr78 = ashr i32 %conv76, %sub77
  %and79 = and i32 %shr78, 15
  %conv80 = sext i32 %and79 to i64
  store i64 %conv80, i64* %pixel, align 8, !tbaa !33
  br label %sw.epilog

sw.bb.81:                                         ; preds = %do.body
  %78 = load i8*, i8** %src, align 8, !tbaa !1
  %79 = load i8, i8* %78, align 1, !tbaa !55
  %conv82 = zext i8 %79 to i64
  store i64 %conv82, i64* %pixel, align 8, !tbaa !33
  br label %sw.epilog

sw.bb.83:                                         ; preds = %do.body
  %80 = load i32, i32* %bit, align 4, !tbaa !5
  %tobool84 = icmp ne i32 %80, 0
  br i1 %tobool84, label %cond.true.85, label %cond.false.92

cond.true.85:                                     ; preds = %sw.bb.83
  %81 = load i8*, i8** %src, align 8, !tbaa !1
  %82 = load i8, i8* %81, align 1, !tbaa !55
  %conv86 = zext i8 %82 to i32
  %and87 = and i32 %conv86, 15
  %shl88 = shl i32 %and87, 8
  %83 = load i8*, i8** %src, align 8, !tbaa !1
  %arrayidx89 = getelementptr inbounds i8, i8* %83, i64 1
  %84 = load i8, i8* %arrayidx89, align 1, !tbaa !55
  %conv90 = zext i8 %84 to i32
  %or91 = or i32 %shl88, %conv90
  br label %cond.end.99

cond.false.92:                                    ; preds = %sw.bb.83
  %85 = load i8*, i8** %src, align 8, !tbaa !1
  %86 = load i8, i8* %85, align 1, !tbaa !55
  %conv93 = zext i8 %86 to i32
  %shl94 = shl i32 %conv93, 4
  %87 = load i8*, i8** %src, align 8, !tbaa !1
  %arrayidx95 = getelementptr inbounds i8, i8* %87, i64 1
  %88 = load i8, i8* %arrayidx95, align 1, !tbaa !55
  %conv96 = zext i8 %88 to i32
  %shr97 = ashr i32 %conv96, 4
  %or98 = or i32 %shl94, %shr97
  br label %cond.end.99

cond.end.99:                                      ; preds = %cond.false.92, %cond.true.85
  %cond100 = phi i32 [ %or91, %cond.true.85 ], [ %or98, %cond.false.92 ]
  %conv101 = sext i32 %cond100 to i64
  store i64 %conv101, i64* %pixel, align 8, !tbaa !33
  br label %sw.epilog

sw.bb.102:                                        ; preds = %do.body
  %89 = load i8*, i8** %src, align 8, !tbaa !1
  %90 = load i8, i8* %89, align 1, !tbaa !55
  %conv103 = zext i8 %90 to i32
  %shl104 = shl i32 %conv103, 8
  %91 = load i8*, i8** %src, align 8, !tbaa !1
  %arrayidx105 = getelementptr inbounds i8, i8* %91, i64 1
  %92 = load i8, i8* %arrayidx105, align 1, !tbaa !55
  %conv106 = zext i8 %92 to i32
  %or107 = or i32 %shl104, %conv106
  %conv108 = sext i32 %or107 to i64
  store i64 %conv108, i64* %pixel, align 8, !tbaa !33
  br label %sw.epilog

sw.bb.109:                                        ; preds = %do.body
  %93 = load i8*, i8** %src, align 8, !tbaa !1
  %94 = load i8, i8* %93, align 1, !tbaa !55
  %conv110 = zext i8 %94 to i32
  %shl111 = shl i32 %conv110, 16
  %95 = load i8*, i8** %src, align 8, !tbaa !1
  %arrayidx112 = getelementptr inbounds i8, i8* %95, i64 1
  %96 = load i8, i8* %arrayidx112, align 1, !tbaa !55
  %conv113 = zext i8 %96 to i32
  %shl114 = shl i32 %conv113, 8
  %or115 = or i32 %shl111, %shl114
  %97 = load i8*, i8** %src, align 8, !tbaa !1
  %arrayidx116 = getelementptr inbounds i8, i8* %97, i64 2
  %98 = load i8, i8* %arrayidx116, align 1, !tbaa !55
  %conv117 = zext i8 %98 to i32
  %or118 = or i32 %or115, %conv117
  %conv119 = sext i32 %or118 to i64
  store i64 %conv119, i64* %pixel, align 8, !tbaa !33
  br label %sw.epilog

sw.bb.120:                                        ; preds = %do.body
  %99 = load i8*, i8** %src, align 8, !tbaa !1
  %100 = load i8, i8* %99, align 1, !tbaa !55
  %conv121 = zext i8 %100 to i32
  %shl122 = shl i32 %conv121, 24
  %101 = load i8*, i8** %src, align 8, !tbaa !1
  %arrayidx123 = getelementptr inbounds i8, i8* %101, i64 1
  %102 = load i8, i8* %arrayidx123, align 1, !tbaa !55
  %conv124 = zext i8 %102 to i32
  %shl125 = shl i32 %conv124, 16
  %or126 = or i32 %shl122, %shl125
  %103 = load i8*, i8** %src, align 8, !tbaa !1
  %arrayidx127 = getelementptr inbounds i8, i8* %103, i64 2
  %104 = load i8, i8* %arrayidx127, align 1, !tbaa !55
  %conv128 = zext i8 %104 to i32
  %shl129 = shl i32 %conv128, 8
  %or130 = or i32 %or126, %shl129
  %105 = load i8*, i8** %src, align 8, !tbaa !1
  %arrayidx131 = getelementptr inbounds i8, i8* %105, i64 3
  %106 = load i8, i8* %arrayidx131, align 1, !tbaa !55
  %conv132 = zext i8 %106 to i32
  %or133 = or i32 %or130, %conv132
  %conv134 = sext i32 %or133 to i64
  store i64 %conv134, i64* %pixel, align 8, !tbaa !33
  br label %sw.epilog

sw.bb.135:                                        ; preds = %do.body
  %107 = load i8*, i8** %src, align 8, !tbaa !1
  %arrayidx136 = getelementptr inbounds i8, i8* %107, i64 0
  %108 = load i8, i8* %arrayidx136, align 1, !tbaa !55
  %conv137 = zext i8 %108 to i64
  %shl138 = shl i64 %conv137, 32
  %109 = load i8*, i8** %src, align 8, !tbaa !1
  %arrayidx139 = getelementptr inbounds i8, i8* %109, i64 1
  %110 = load i8, i8* %arrayidx139, align 1, !tbaa !55
  %conv140 = zext i8 %110 to i64
  %shl141 = shl i64 %conv140, 24
  %or142 = or i64 %shl138, %shl141
  %111 = load i8*, i8** %src, align 8, !tbaa !1
  %arrayidx143 = getelementptr inbounds i8, i8* %111, i64 2
  %112 = load i8, i8* %arrayidx143, align 1, !tbaa !55
  %conv144 = zext i8 %112 to i64
  %shl145 = shl i64 %conv144, 16
  %or146 = or i64 %or142, %shl145
  %113 = load i8*, i8** %src, align 8, !tbaa !1
  %arrayidx147 = getelementptr inbounds i8, i8* %113, i64 3
  %114 = load i8, i8* %arrayidx147, align 1, !tbaa !55
  %conv148 = zext i8 %114 to i64
  %shl149 = shl i64 %conv148, 8
  %or150 = or i64 %or146, %shl149
  %115 = load i8*, i8** %src, align 8, !tbaa !1
  %arrayidx151 = getelementptr inbounds i8, i8* %115, i64 4
  %116 = load i8, i8* %arrayidx151, align 1, !tbaa !55
  %conv152 = zext i8 %116 to i64
  %or153 = or i64 %or150, %conv152
  store i64 %or153, i64* %pixel, align 8, !tbaa !33
  br label %sw.epilog

sw.bb.154:                                        ; preds = %do.body
  %117 = load i8*, i8** %src, align 8, !tbaa !1
  %arrayidx155 = getelementptr inbounds i8, i8* %117, i64 0
  %118 = load i8, i8* %arrayidx155, align 1, !tbaa !55
  %conv156 = zext i8 %118 to i64
  %shl157 = shl i64 %conv156, 40
  %119 = load i8*, i8** %src, align 8, !tbaa !1
  %arrayidx158 = getelementptr inbounds i8, i8* %119, i64 1
  %120 = load i8, i8* %arrayidx158, align 1, !tbaa !55
  %conv159 = zext i8 %120 to i64
  %shl160 = shl i64 %conv159, 32
  %or161 = or i64 %shl157, %shl160
  %121 = load i8*, i8** %src, align 8, !tbaa !1
  %arrayidx162 = getelementptr inbounds i8, i8* %121, i64 2
  %122 = load i8, i8* %arrayidx162, align 1, !tbaa !55
  %conv163 = zext i8 %122 to i64
  %shl164 = shl i64 %conv163, 24
  %or165 = or i64 %or161, %shl164
  %123 = load i8*, i8** %src, align 8, !tbaa !1
  %arrayidx166 = getelementptr inbounds i8, i8* %123, i64 3
  %124 = load i8, i8* %arrayidx166, align 1, !tbaa !55
  %conv167 = zext i8 %124 to i64
  %shl168 = shl i64 %conv167, 16
  %or169 = or i64 %or165, %shl168
  %125 = load i8*, i8** %src, align 8, !tbaa !1
  %arrayidx170 = getelementptr inbounds i8, i8* %125, i64 4
  %126 = load i8, i8* %arrayidx170, align 1, !tbaa !55
  %conv171 = zext i8 %126 to i64
  %shl172 = shl i64 %conv171, 8
  %or173 = or i64 %or169, %shl172
  %127 = load i8*, i8** %src, align 8, !tbaa !1
  %arrayidx174 = getelementptr inbounds i8, i8* %127, i64 5
  %128 = load i8, i8* %arrayidx174, align 1, !tbaa !55
  %conv175 = zext i8 %128 to i64
  %or176 = or i64 %or173, %conv175
  store i64 %or176, i64* %pixel, align 8, !tbaa !33
  br label %sw.epilog

sw.bb.177:                                        ; preds = %do.body
  %129 = load i8*, i8** %src, align 8, !tbaa !1
  %arrayidx178 = getelementptr inbounds i8, i8* %129, i64 0
  %130 = load i8, i8* %arrayidx178, align 1, !tbaa !55
  %conv179 = zext i8 %130 to i64
  %shl180 = shl i64 %conv179, 48
  %131 = load i8*, i8** %src, align 8, !tbaa !1
  %arrayidx181 = getelementptr inbounds i8, i8* %131, i64 1
  %132 = load i8, i8* %arrayidx181, align 1, !tbaa !55
  %conv182 = zext i8 %132 to i64
  %shl183 = shl i64 %conv182, 40
  %or184 = or i64 %shl180, %shl183
  %133 = load i8*, i8** %src, align 8, !tbaa !1
  %arrayidx185 = getelementptr inbounds i8, i8* %133, i64 2
  %134 = load i8, i8* %arrayidx185, align 1, !tbaa !55
  %conv186 = zext i8 %134 to i64
  %shl187 = shl i64 %conv186, 32
  %or188 = or i64 %or184, %shl187
  %135 = load i8*, i8** %src, align 8, !tbaa !1
  %arrayidx189 = getelementptr inbounds i8, i8* %135, i64 3
  %136 = load i8, i8* %arrayidx189, align 1, !tbaa !55
  %conv190 = zext i8 %136 to i64
  %shl191 = shl i64 %conv190, 24
  %or192 = or i64 %or188, %shl191
  %137 = load i8*, i8** %src, align 8, !tbaa !1
  %arrayidx193 = getelementptr inbounds i8, i8* %137, i64 4
  %138 = load i8, i8* %arrayidx193, align 1, !tbaa !55
  %conv194 = zext i8 %138 to i64
  %shl195 = shl i64 %conv194, 16
  %or196 = or i64 %or192, %shl195
  %139 = load i8*, i8** %src, align 8, !tbaa !1
  %arrayidx197 = getelementptr inbounds i8, i8* %139, i64 5
  %140 = load i8, i8* %arrayidx197, align 1, !tbaa !55
  %conv198 = zext i8 %140 to i64
  %shl199 = shl i64 %conv198, 8
  %or200 = or i64 %or196, %shl199
  %141 = load i8*, i8** %src, align 8, !tbaa !1
  %arrayidx201 = getelementptr inbounds i8, i8* %141, i64 6
  %142 = load i8, i8* %arrayidx201, align 1, !tbaa !55
  %conv202 = zext i8 %142 to i64
  %or203 = or i64 %or200, %conv202
  store i64 %or203, i64* %pixel, align 8, !tbaa !33
  br label %sw.epilog

sw.bb.204:                                        ; preds = %do.body
  %143 = load i8*, i8** %src, align 8, !tbaa !1
  %arrayidx205 = getelementptr inbounds i8, i8* %143, i64 0
  %144 = load i8, i8* %arrayidx205, align 1, !tbaa !55
  %conv206 = zext i8 %144 to i64
  %shl207 = shl i64 %conv206, 56
  %145 = load i8*, i8** %src, align 8, !tbaa !1
  %arrayidx208 = getelementptr inbounds i8, i8* %145, i64 1
  %146 = load i8, i8* %arrayidx208, align 1, !tbaa !55
  %conv209 = zext i8 %146 to i64
  %shl210 = shl i64 %conv209, 48
  %or211 = or i64 %shl207, %shl210
  %147 = load i8*, i8** %src, align 8, !tbaa !1
  %arrayidx212 = getelementptr inbounds i8, i8* %147, i64 2
  %148 = load i8, i8* %arrayidx212, align 1, !tbaa !55
  %conv213 = zext i8 %148 to i64
  %shl214 = shl i64 %conv213, 40
  %or215 = or i64 %or211, %shl214
  %149 = load i8*, i8** %src, align 8, !tbaa !1
  %arrayidx216 = getelementptr inbounds i8, i8* %149, i64 3
  %150 = load i8, i8* %arrayidx216, align 1, !tbaa !55
  %conv217 = zext i8 %150 to i64
  %shl218 = shl i64 %conv217, 32
  %or219 = or i64 %or215, %shl218
  %151 = load i8*, i8** %src, align 8, !tbaa !1
  %arrayidx220 = getelementptr inbounds i8, i8* %151, i64 4
  %152 = load i8, i8* %arrayidx220, align 1, !tbaa !55
  %conv221 = zext i8 %152 to i64
  %shl222 = shl i64 %conv221, 24
  %or223 = or i64 %or219, %shl222
  %153 = load i8*, i8** %src, align 8, !tbaa !1
  %arrayidx224 = getelementptr inbounds i8, i8* %153, i64 5
  %154 = load i8, i8* %arrayidx224, align 1, !tbaa !55
  %conv225 = zext i8 %154 to i64
  %shl226 = shl i64 %conv225, 16
  %or227 = or i64 %or223, %shl226
  %155 = load i8*, i8** %src, align 8, !tbaa !1
  %arrayidx228 = getelementptr inbounds i8, i8* %155, i64 6
  %156 = load i8, i8* %arrayidx228, align 1, !tbaa !55
  %conv229 = zext i8 %156 to i64
  %shl230 = shl i64 %conv229, 8
  %or231 = or i64 %or227, %shl230
  %157 = load i8*, i8** %src, align 8, !tbaa !1
  %arrayidx232 = getelementptr inbounds i8, i8* %157, i64 7
  %158 = load i8, i8* %arrayidx232, align 1, !tbaa !55
  %conv233 = zext i8 %158 to i64
  %or234 = or i64 %or231, %conv233
  store i64 %or234, i64* %pixel, align 8, !tbaa !33
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.204, %sw.bb.177, %sw.bb.154, %sw.bb.135, %sw.bb.120, %sw.bb.109, %sw.bb.102, %cond.end.99, %sw.bb.81, %sw.bb.75, %sw.bb
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.235

do.body.235:                                      ; preds = %do.end
  %159 = load i32, i32* %depth, align 4, !tbaa !5
  %160 = load i32, i32* %bit, align 4, !tbaa !5
  %add236 = add nsw i32 %160, %159
  store i32 %add236, i32* %bit, align 4, !tbaa !5
  %161 = load i32, i32* %bit, align 4, !tbaa !5
  %shr237 = ashr i32 %161, 3
  %162 = load i8*, i8** %src, align 8, !tbaa !1
  %idx.ext238 = sext i32 %shr237 to i64
  %add.ptr239 = getelementptr inbounds i8, i8* %162, i64 %idx.ext238
  store i8* %add.ptr239, i8** %src, align 8, !tbaa !1
  %163 = load i32, i32* %bit, align 4, !tbaa !5
  %and240 = and i32 %163, 7
  store i32 %and240, i32* %bit, align 4, !tbaa !5
  br label %do.cond.241

do.cond.241:                                      ; preds = %do.body.235
  br label %do.end.242

do.end.242:                                       ; preds = %do.cond.241
  %164 = load i64, i64* %pixel, align 8, !tbaa !33
  %cmp243 = icmp ult i64 %164, 16
  br i1 %cmp243, label %if.then.245, label %if.end.256

if.then.245:                                      ; preds = %do.end.242
  %165 = load i64, i64* %pixel, align 8, !tbaa !33
  %arrayidx246 = getelementptr inbounds [16 x i8*], [16 x i8*]* %mapped, i32 0, i64 %165
  %166 = load i8*, i8** %arrayidx246, align 8, !tbaa !1
  %tobool247 = icmp ne i8* %166, null
  br i1 %tobool247, label %if.then.248, label %if.end.254

if.then.248:                                      ; preds = %if.then.245
  %167 = load i8*, i8** %dest, align 8, !tbaa !1
  %168 = load i64, i64* %pixel, align 8, !tbaa !33
  %arrayidx249 = getelementptr inbounds [16 x i8*], [16 x i8*]* %mapped, i32 0, i64 %168
  %169 = load i8*, i8** %arrayidx249, align 8, !tbaa !1
  %170 = load i32, i32* %dest_bytes, align 4, !tbaa !5
  %conv250 = sext i32 %170 to i64
  %call251 = call i8* @memcpy(i8* %167, i8* %169, i64 %conv250) #5
  %171 = load i32, i32* %dest_bytes, align 4, !tbaa !5
  %172 = load i8*, i8** %dest, align 8, !tbaa !1
  %idx.ext252 = sext i32 %171 to i64
  %add.ptr253 = getelementptr inbounds i8, i8* %172, i64 %idx.ext252
  store i8* %add.ptr253, i8** %dest, align 8, !tbaa !1
  store i32 9, i32* %cleanup.dest.slot
  br label %cleanup

if.end.254:                                       ; preds = %if.then.245
  %173 = load i8*, i8** %dest, align 8, !tbaa !1
  %174 = load i64, i64* %pixel, align 8, !tbaa !33
  %arrayidx255 = getelementptr inbounds [16 x i8*], [16 x i8*]* %mapped, i32 0, i64 %174
  store i8* %173, i8** %arrayidx255, align 8, !tbaa !1
  br label %if.end.256

if.end.256:                                       ; preds = %if.end.254, %do.end.242
  %175 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs257 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %175, i32 0, i32 42
  %map_color_rgb_alpha = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs257, i32 0, i32 39
  %176 = load i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)** %map_color_rgb_alpha, align 8, !tbaa !65
  %177 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %178 = load i64, i64* %pixel, align 8, !tbaa !33
  %arraydecay = getelementptr inbounds [4 x i16], [4 x i16]* %rgba, i32 0, i32 0
  %call258 = call i32 %176(%struct.gx_device_s* %177, i64 %178, i16* %arraydecay) #4
  %179 = load i64, i64* %options, align 8, !tbaa !33
  %and259 = and i64 %179, 32
  %tobool260 = icmp ne i64 %and259, 0
  br i1 %tobool260, label %if.then.261, label %if.end.269

if.then.261:                                      ; preds = %if.end.256
  %arrayidx262 = getelementptr inbounds [4 x i16], [4 x i16]* %rgba, i32 0, i64 3
  %180 = load i16, i16* %arrayidx262, align 2, !tbaa !56
  %conv263 = zext i16 %180 to i32
  %mul264 = mul i32 %conv263, 65281
  %add265 = add i32 %mul264, 8388608
  %shr266 = lshr i32 %add265, 24
  %conv267 = trunc i32 %shr266 to i16
  %conv268 = trunc i16 %conv267 to i8
  %181 = load i8*, i8** %dest, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %181, i32 1
  store i8* %incdec.ptr, i8** %dest, align 8, !tbaa !1
  store i8 %conv268, i8* %181, align 1, !tbaa !55
  br label %if.end.269

if.end.269:                                       ; preds = %if.then.261, %if.end.256
  %182 = load i64, i64* %options, align 8, !tbaa !33
  %and270 = and i64 %182, 4
  %tobool271 = icmp ne i64 %and270, 0
  br i1 %tobool271, label %if.then.272, label %if.else.298

if.then.272:                                      ; preds = %if.end.269
  %arrayidx273 = getelementptr inbounds [4 x i16], [4 x i16]* %rgba, i32 0, i64 0
  %183 = load i16, i16* %arrayidx273, align 2, !tbaa !56
  %conv274 = zext i16 %183 to i32
  %mul275 = mul i32 %conv274, 65281
  %add276 = add i32 %mul275, 8388608
  %shr277 = lshr i32 %add276, 24
  %conv278 = trunc i32 %shr277 to i16
  %conv279 = trunc i16 %conv278 to i8
  %184 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx280 = getelementptr inbounds i8, i8* %184, i64 0
  store i8 %conv279, i8* %arrayidx280, align 1, !tbaa !55
  %arrayidx281 = getelementptr inbounds [4 x i16], [4 x i16]* %rgba, i32 0, i64 1
  %185 = load i16, i16* %arrayidx281, align 2, !tbaa !56
  %conv282 = zext i16 %185 to i32
  %mul283 = mul i32 %conv282, 65281
  %add284 = add i32 %mul283, 8388608
  %shr285 = lshr i32 %add284, 24
  %conv286 = trunc i32 %shr285 to i16
  %conv287 = trunc i16 %conv286 to i8
  %186 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx288 = getelementptr inbounds i8, i8* %186, i64 1
  store i8 %conv287, i8* %arrayidx288, align 1, !tbaa !55
  %arrayidx289 = getelementptr inbounds [4 x i16], [4 x i16]* %rgba, i32 0, i64 2
  %187 = load i16, i16* %arrayidx289, align 2, !tbaa !56
  %conv290 = zext i16 %187 to i32
  %mul291 = mul i32 %conv290, 65281
  %add292 = add i32 %mul291, 8388608
  %shr293 = lshr i32 %add292, 24
  %conv294 = trunc i32 %shr293 to i16
  %conv295 = trunc i16 %conv294 to i8
  %188 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx296 = getelementptr inbounds i8, i8* %188, i64 2
  store i8 %conv295, i8* %arrayidx296, align 1, !tbaa !55
  %189 = load i8*, i8** %dest, align 8, !tbaa !1
  %add.ptr297 = getelementptr inbounds i8, i8* %189, i64 3
  store i8* %add.ptr297, i8** %dest, align 8, !tbaa !1
  br label %if.end.401

if.else.298:                                      ; preds = %if.end.269
  %190 = load i64, i64* %options, align 8, !tbaa !33
  %and299 = and i64 %190, 8
  %tobool300 = icmp ne i64 %and299, 0
  br i1 %tobool300, label %if.then.301, label %if.else.380

if.then.301:                                      ; preds = %if.else.298
  %191 = bitcast i16* %white to i8*
  call void @llvm.lifetime.start(i64 2, i8* %191) #1
  %arrayidx302 = getelementptr inbounds [4 x i16], [4 x i16]* %rgba, i32 0, i64 0
  %192 = load i16, i16* %arrayidx302, align 2, !tbaa !56
  %conv303 = zext i16 %192 to i32
  %arrayidx304 = getelementptr inbounds [4 x i16], [4 x i16]* %rgba, i32 0, i64 1
  %193 = load i16, i16* %arrayidx304, align 2, !tbaa !56
  %conv305 = zext i16 %193 to i32
  %arrayidx306 = getelementptr inbounds [4 x i16], [4 x i16]* %rgba, i32 0, i64 2
  %194 = load i16, i16* %arrayidx306, align 2, !tbaa !56
  %conv307 = zext i16 %194 to i32
  %cmp308 = icmp sgt i32 %conv305, %conv307
  br i1 %cmp308, label %cond.true.310, label %cond.false.313

cond.true.310:                                    ; preds = %if.then.301
  %arrayidx311 = getelementptr inbounds [4 x i16], [4 x i16]* %rgba, i32 0, i64 1
  %195 = load i16, i16* %arrayidx311, align 2, !tbaa !56
  %conv312 = zext i16 %195 to i32
  br label %cond.end.316

cond.false.313:                                   ; preds = %if.then.301
  %arrayidx314 = getelementptr inbounds [4 x i16], [4 x i16]* %rgba, i32 0, i64 2
  %196 = load i16, i16* %arrayidx314, align 2, !tbaa !56
  %conv315 = zext i16 %196 to i32
  br label %cond.end.316

cond.end.316:                                     ; preds = %cond.false.313, %cond.true.310
  %cond317 = phi i32 [ %conv312, %cond.true.310 ], [ %conv315, %cond.false.313 ]
  %cmp318 = icmp sgt i32 %conv303, %cond317
  br i1 %cmp318, label %cond.true.320, label %cond.false.323

cond.true.320:                                    ; preds = %cond.end.316
  %arrayidx321 = getelementptr inbounds [4 x i16], [4 x i16]* %rgba, i32 0, i64 0
  %197 = load i16, i16* %arrayidx321, align 2, !tbaa !56
  %conv322 = zext i16 %197 to i32
  br label %cond.end.338

cond.false.323:                                   ; preds = %cond.end.316
  %arrayidx324 = getelementptr inbounds [4 x i16], [4 x i16]* %rgba, i32 0, i64 1
  %198 = load i16, i16* %arrayidx324, align 2, !tbaa !56
  %conv325 = zext i16 %198 to i32
  %arrayidx326 = getelementptr inbounds [4 x i16], [4 x i16]* %rgba, i32 0, i64 2
  %199 = load i16, i16* %arrayidx326, align 2, !tbaa !56
  %conv327 = zext i16 %199 to i32
  %cmp328 = icmp sgt i32 %conv325, %conv327
  br i1 %cmp328, label %cond.true.330, label %cond.false.333

cond.true.330:                                    ; preds = %cond.false.323
  %arrayidx331 = getelementptr inbounds [4 x i16], [4 x i16]* %rgba, i32 0, i64 1
  %200 = load i16, i16* %arrayidx331, align 2, !tbaa !56
  %conv332 = zext i16 %200 to i32
  br label %cond.end.336

cond.false.333:                                   ; preds = %cond.false.323
  %arrayidx334 = getelementptr inbounds [4 x i16], [4 x i16]* %rgba, i32 0, i64 2
  %201 = load i16, i16* %arrayidx334, align 2, !tbaa !56
  %conv335 = zext i16 %201 to i32
  br label %cond.end.336

cond.end.336:                                     ; preds = %cond.false.333, %cond.true.330
  %cond337 = phi i32 [ %conv332, %cond.true.330 ], [ %conv335, %cond.false.333 ]
  br label %cond.end.338

cond.end.338:                                     ; preds = %cond.end.336, %cond.true.320
  %cond339 = phi i32 [ %conv322, %cond.true.320 ], [ %cond337, %cond.end.336 ]
  %conv340 = trunc i32 %cond339 to i16
  store i16 %conv340, i16* %white, align 2, !tbaa !56
  %202 = load i16, i16* %white, align 2, !tbaa !56
  %conv341 = zext i16 %202 to i32
  %arrayidx342 = getelementptr inbounds [4 x i16], [4 x i16]* %rgba, i32 0, i64 0
  %203 = load i16, i16* %arrayidx342, align 2, !tbaa !56
  %conv343 = zext i16 %203 to i32
  %sub344 = sub i32 %conv341, %conv343
  %mul345 = mul i32 %sub344, 65281
  %add346 = add i32 %mul345, 8388608
  %shr347 = lshr i32 %add346, 24
  %conv348 = trunc i32 %shr347 to i16
  %conv349 = trunc i16 %conv348 to i8
  %204 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx350 = getelementptr inbounds i8, i8* %204, i64 0
  store i8 %conv349, i8* %arrayidx350, align 1, !tbaa !55
  %205 = load i16, i16* %white, align 2, !tbaa !56
  %conv351 = zext i16 %205 to i32
  %arrayidx352 = getelementptr inbounds [4 x i16], [4 x i16]* %rgba, i32 0, i64 1
  %206 = load i16, i16* %arrayidx352, align 2, !tbaa !56
  %conv353 = zext i16 %206 to i32
  %sub354 = sub i32 %conv351, %conv353
  %mul355 = mul i32 %sub354, 65281
  %add356 = add i32 %mul355, 8388608
  %shr357 = lshr i32 %add356, 24
  %conv358 = trunc i32 %shr357 to i16
  %conv359 = trunc i16 %conv358 to i8
  %207 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx360 = getelementptr inbounds i8, i8* %207, i64 1
  store i8 %conv359, i8* %arrayidx360, align 1, !tbaa !55
  %208 = load i16, i16* %white, align 2, !tbaa !56
  %conv361 = zext i16 %208 to i32
  %arrayidx362 = getelementptr inbounds [4 x i16], [4 x i16]* %rgba, i32 0, i64 2
  %209 = load i16, i16* %arrayidx362, align 2, !tbaa !56
  %conv363 = zext i16 %209 to i32
  %sub364 = sub i32 %conv361, %conv363
  %mul365 = mul i32 %sub364, 65281
  %add366 = add i32 %mul365, 8388608
  %shr367 = lshr i32 %add366, 24
  %conv368 = trunc i32 %shr367 to i16
  %conv369 = trunc i16 %conv368 to i8
  %210 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx370 = getelementptr inbounds i8, i8* %210, i64 2
  store i8 %conv369, i8* %arrayidx370, align 1, !tbaa !55
  %211 = load i16, i16* %white, align 2, !tbaa !56
  %conv371 = zext i16 %211 to i32
  %sub372 = sub i32 65535, %conv371
  %mul373 = mul i32 %sub372, 65281
  %add374 = add i32 %mul373, 8388608
  %shr375 = lshr i32 %add374, 24
  %conv376 = trunc i32 %shr375 to i16
  %conv377 = trunc i16 %conv376 to i8
  %212 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx378 = getelementptr inbounds i8, i8* %212, i64 3
  store i8 %conv377, i8* %arrayidx378, align 1, !tbaa !55
  %213 = load i8*, i8** %dest, align 8, !tbaa !1
  %add.ptr379 = getelementptr inbounds i8, i8* %213, i64 4
  store i8* %add.ptr379, i8** %dest, align 8, !tbaa !1
  %214 = bitcast i16* %white to i8*
  call void @llvm.lifetime.end(i64 2, i8* %214) #1
  br label %if.end.400

if.else.380:                                      ; preds = %if.else.298
  %arrayidx381 = getelementptr inbounds [4 x i16], [4 x i16]* %rgba, i32 0, i64 0
  %215 = load i16, i16* %arrayidx381, align 2, !tbaa !56
  %conv382 = zext i16 %215 to i64
  %mul383 = mul i64 %conv382, 30
  %arrayidx384 = getelementptr inbounds [4 x i16], [4 x i16]* %rgba, i32 0, i64 1
  %216 = load i16, i16* %arrayidx384, align 2, !tbaa !56
  %conv385 = zext i16 %216 to i64
  %mul386 = mul i64 %conv385, 59
  %add387 = add i64 %mul383, %mul386
  %arrayidx388 = getelementptr inbounds [4 x i16], [4 x i16]* %rgba, i32 0, i64 2
  %217 = load i16, i16* %arrayidx388, align 2, !tbaa !56
  %conv389 = zext i16 %217 to i64
  %mul390 = mul i64 %conv389, 11
  %add391 = add i64 %add387, %mul390
  %add392 = add i64 %add391, 50
  %conv393 = trunc i64 %add392 to i32
  %div = udiv i32 %conv393, 100
  %mul394 = mul i32 %div, 65281
  %add395 = add i32 %mul394, 8388608
  %shr396 = lshr i32 %add395, 24
  %conv397 = trunc i32 %shr396 to i16
  %conv398 = trunc i16 %conv397 to i8
  %218 = load i8*, i8** %dest, align 8, !tbaa !1
  %incdec.ptr399 = getelementptr inbounds i8, i8* %218, i32 1
  store i8* %incdec.ptr399, i8** %dest, align 8, !tbaa !1
  store i8 %conv398, i8* %218, align 1, !tbaa !55
  br label %if.end.400

if.end.400:                                       ; preds = %if.else.380, %cond.end.338
  br label %if.end.401

if.end.401:                                       ; preds = %if.end.400, %if.then.272
  %219 = load i64, i64* %options, align 8, !tbaa !33
  %and402 = and i64 %219, 64
  %tobool403 = icmp ne i64 %and402, 0
  br i1 %tobool403, label %if.then.404, label %if.end.413

if.then.404:                                      ; preds = %if.end.401
  %arrayidx405 = getelementptr inbounds [4 x i16], [4 x i16]* %rgba, i32 0, i64 3
  %220 = load i16, i16* %arrayidx405, align 2, !tbaa !56
  %conv406 = zext i16 %220 to i32
  %mul407 = mul i32 %conv406, 65281
  %add408 = add i32 %mul407, 8388608
  %shr409 = lshr i32 %add408, 24
  %conv410 = trunc i32 %shr409 to i16
  %conv411 = trunc i16 %conv410 to i8
  %221 = load i8*, i8** %dest, align 8, !tbaa !1
  %incdec.ptr412 = getelementptr inbounds i8, i8* %221, i32 1
  store i8* %incdec.ptr412, i8** %dest, align 8, !tbaa !1
  store i8 %conv411, i8* %221, align 1, !tbaa !55
  br label %if.end.413

if.end.413:                                       ; preds = %if.then.404, %if.end.401
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.413, %if.then.248, %sw.default
  %222 = bitcast [4 x i16]* %rgba to i8*
  call void @llvm.lifetime.end(i64 8, i8* %222) #1
  %223 = bitcast i64* %pixel to i8*
  call void @llvm.lifetime.end(i64 8, i8* %223) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.417 [
    i32 0, label %cleanup.cont
    i32 9, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %224 = load i32, i32* %i, align 4, !tbaa !5
  %inc415 = add nsw i32 %224, 1
  store i32 %inc415, i32* %i, align 4, !tbaa !5
  br label %for.cond.65

for.end.416:                                      ; preds = %for.cond.65
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.417

cleanup.417:                                      ; preds = %for.end.416, %cleanup
  %225 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %225) #1
  %226 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %226) #1
  %227 = bitcast i8** %src to i8*
  call void @llvm.lifetime.end(i64 8, i8* %227) #1
  %cleanup.dest.420 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.420, label %cleanup.429 [
    i32 0, label %cleanup.cont.421
  ]

cleanup.cont.421:                                 ; preds = %cleanup.417
  br label %for.inc.422

for.inc.422:                                      ; preds = %cleanup.cont.421
  %228 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %229 = load i8*, i8** %dest_line, align 8, !tbaa !1
  %idx.ext423 = zext i32 %228 to i64
  %add.ptr424 = getelementptr inbounds i8, i8* %229, i64 %idx.ext423
  store i8* %add.ptr424, i8** %dest_line, align 8, !tbaa !1
  %230 = load i32, i32* %dev_raster.addr, align 4, !tbaa !5
  %231 = load i8*, i8** %src_line, align 8, !tbaa !1
  %idx.ext425 = zext i32 %230 to i64
  %add.ptr426 = getelementptr inbounds i8, i8* %231, i64 %idx.ext425
  store i8* %add.ptr426, i8** %src_line, align 8, !tbaa !1
  %232 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec427 = add nsw i32 %232, -1
  store i32 %dec427, i32* %h.addr, align 4, !tbaa !5
  br label %for.cond.60

for.end.428:                                      ; preds = %for.cond.60
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.429

cleanup.429:                                      ; preds = %for.end.428, %cleanup.417, %if.then.43, %if.else.24, %if.then
  %233 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %233) #1
  %234 = bitcast i32* %dest_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %234) #1
  %235 = bitcast [16 x i8*]* %mapped to i8*
  call void @llvm.lifetime.end(i64 128, i8* %235) #1
  %236 = bitcast i8** %dest_line to i8*
  call void @llvm.lifetime.end(i64 8, i8* %236) #1
  %237 = bitcast i32* %ncomp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %237) #1
  %238 = bitcast i64* %options to i8*
  call void @llvm.lifetime.end(i64 8, i8* %238) #1
  %239 = bitcast i8** %src_line to i8*
  call void @llvm.lifetime.end(i64 8, i8* %239) #1
  %240 = bitcast i32* %src_bit_offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %240) #1
  %241 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %241) #1
  %242 = load i32, i32* %retval
  ret i32 %242
}

declare i32 @bits_extract_plane(%struct.bits_plane_s*, %struct.bits_plane_s*, i32, i32, i32) #2

; Function Attrs: nounwind uwtable
define i32 @gx_no_get_bits_rectangle(%struct.gx_device_s* %dev, %struct.gs_int_rect_s* %prect, %struct.gs_get_bits_params_s* %params, %struct.gs_int_rect_s** %unread) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %prect.addr = alloca %struct.gs_int_rect_s*, align 8
  %params.addr = alloca %struct.gs_get_bits_params_s*, align 8
  %unread.addr = alloca %struct.gs_int_rect_s**, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_int_rect_s* %prect, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  store %struct.gs_get_bits_params_s* %params, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gs_int_rect_s** %unread, %struct.gs_int_rect_s*** %unread.addr, align 8, !tbaa !1
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_get_bits_rectangle(%struct.gx_device_s* %dev, %struct.gs_int_rect_s* %prect, %struct.gs_get_bits_params_s* %params, %struct.gs_int_rect_s** %unread) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %prect.addr = alloca %struct.gs_int_rect_s*, align 8
  %params.addr = alloca %struct.gs_get_bits_params_s*, align 8
  %unread.addr = alloca %struct.gs_int_rect_s**, align 8
  %save_get_bits_rectangle = alloca i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, align 8
  %depth = alloca i32, align 4
  %min_raster = alloca i32, align 4
  %options = alloca i64, align 8
  %code = alloca i32, align 4
  %data = alloca i8*, align 8
  %row = alloca i8*, align 8
  %width_bits = alloca i32, align 4
  %tdev = alloca %struct.gx_device_memory_s, align 8
  %cleanup.dest.slot = alloca i32
  %x117 = alloca i32, align 4
  %w = alloca i32, align 4
  %bits_per_pixel = alloca i32, align 4
  %row123 = alloca i8*, align 8
  %bpc = alloca i32, align 4
  %nc = alloca i32, align 4
  %bpp = alloca i32, align 4
  %dev_raster = alloca i32, align 4
  %raster163 = alloca i32, align 4
  %rect = alloca %struct.gs_int_rect_s, align 4
  %copy_params = alloca %struct.gs_get_bits_params_s, align 8
  %copy_options = alloca i64, align 8
  %dest = alloca i8*, align 8
  %y189 = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_int_rect_s* %prect, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  store %struct.gs_get_bits_params_s* %params, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gs_int_rect_s** %unread, %struct.gs_int_rect_s*** %unread.addr, align 8, !tbaa !1
  %0 = bitcast i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %save_get_bits_rectangle to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 42
  %get_bits_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 38
  %2 = load i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %get_bits_rectangle, align 8, !tbaa !32
  store i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* %2, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %save_get_bits_rectangle, align 8, !tbaa !1
  %3 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 11
  %depth1 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %5 = load i16, i16* %depth1, align 2, !tbaa !30
  %conv = zext i16 %5 to i32
  store i32 %conv, i32* %depth, align 4, !tbaa !5
  %6 = bitcast i32* %min_raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 13
  %8 = load i32, i32* %width, align 4, !tbaa !24
  %9 = load i32, i32* %depth, align 4, !tbaa !5
  %mul = mul nsw i32 %8, %9
  %add = add nsw i32 %mul, 7
  %shr = ashr i32 %add, 3
  store i32 %shr, i32* %min_raster, align 4, !tbaa !5
  %10 = bitcast i64* %options to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %options2 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %11, i32 0, i32 0
  %12 = load i64, i64* %options2, align 8, !tbaa !27
  store i64 %12, i64* %options, align 8, !tbaa !33
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %14, i32 0, i32 42
  %get_bits_rectangle4 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs3, i32 0, i32 38
  store i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* @gx_no_get_bits_rectangle, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %get_bits_rectangle4, align 8, !tbaa !32
  %15 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %15, i32 0, i32 1
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 1
  %16 = load i32, i32* %y, align 4, !tbaa !26
  %17 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %17, i32 0, i32 0
  %y5 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 1
  %18 = load i32, i32* %y5, align 4, !tbaa !23
  %add6 = add nsw i32 %18, 1
  %cmp = icmp eq i32 %16, %add6
  br i1 %cmp, label %land.lhs.true, label %if.end.116

land.lhs.true:                                    ; preds = %entry
  %19 = load i64, i64* %options, align 8, !tbaa !33
  %neg = xor i64 %19, -1
  %and = and i64 %neg, 1114113
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.end.116, label %land.lhs.true.8

land.lhs.true.8:                                  ; preds = %land.lhs.true
  %20 = load i64, i64* %options, align 8, !tbaa !33
  %and9 = and i64 %20, 12582912
  %tobool10 = icmp ne i64 %and9, 0
  br i1 %tobool10, label %land.lhs.true.11, label %if.end.116

land.lhs.true.11:                                 ; preds = %land.lhs.true.8
  %21 = load i64, i64* %options, align 8, !tbaa !33
  %and12 = and i64 %21, 83886080
  %tobool13 = icmp ne i64 %and12, 0
  br i1 %tobool13, label %land.lhs.true.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.11
  %22 = load i64, i64* %options, align 8, !tbaa !33
  %and14 = and i64 %22, 33554432
  %tobool15 = icmp ne i64 %and14, 0
  br i1 %tobool15, label %land.lhs.true.16, label %if.end.116

land.lhs.true.16:                                 ; preds = %lor.lhs.false
  %23 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %x_offset = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %23, i32 0, i32 2
  %24 = load i32, i32* %x_offset, align 4, !tbaa !29
  %cmp17 = icmp eq i32 %24, 0
  br i1 %cmp17, label %land.lhs.true.19, label %if.end.116

land.lhs.true.19:                                 ; preds = %land.lhs.true.16, %land.lhs.true.11
  %25 = load i64, i64* %options, align 8, !tbaa !33
  %and20 = and i64 %25, 1342177280
  %tobool21 = icmp ne i64 %and20, 0
  br i1 %tobool21, label %land.lhs.true.28, label %lor.lhs.false.22

lor.lhs.false.22:                                 ; preds = %land.lhs.true.19
  %26 = load i64, i64* %options, align 8, !tbaa !33
  %and23 = and i64 %26, 536870912
  %tobool24 = icmp ne i64 %and23, 0
  br i1 %tobool24, label %land.lhs.true.25, label %if.end.116

land.lhs.true.25:                                 ; preds = %lor.lhs.false.22
  %27 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %27, i32 0, i32 4
  %28 = load i32, i32* %raster, align 4, !tbaa !31
  %29 = load i32, i32* %min_raster, align 4, !tbaa !5
  %cmp26 = icmp uge i32 %28, %29
  br i1 %cmp26, label %land.lhs.true.28, label %if.end.116

land.lhs.true.28:                                 ; preds = %land.lhs.true.25, %land.lhs.true.19
  %30 = load %struct.gs_int_rect_s**, %struct.gs_int_rect_s*** %unread.addr, align 8, !tbaa !1
  %cmp29 = icmp eq %struct.gs_int_rect_s** %30, null
  br i1 %cmp29, label %if.then, label %if.end.116

if.then:                                          ; preds = %land.lhs.true.28
  %31 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #1
  %32 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %data31 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %32, i32 0, i32 1
  %arrayidx = getelementptr inbounds [64 x i8*], [64 x i8*]* %data31, i32 0, i64 0
  %33 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  store i8* %33, i8** %data, align 8, !tbaa !1
  %34 = bitcast i8** %row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #1
  %35 = load i8*, i8** %data, align 8, !tbaa !1
  store i8* %35, i8** %row, align 8, !tbaa !1
  %36 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %p32 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %36, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p32, i32 0, i32 0
  %37 = load i32, i32* %x, align 4, !tbaa !20
  %cmp33 = icmp eq i32 %37, 0
  br i1 %cmp33, label %land.lhs.true.35, label %if.then.41

land.lhs.true.35:                                 ; preds = %if.then
  %38 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %q36 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %38, i32 0, i32 1
  %x37 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q36, i32 0, i32 0
  %39 = load i32, i32* %x37, align 4, !tbaa !25
  %40 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width38 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %40, i32 0, i32 13
  %41 = load i32, i32* %width38, align 4, !tbaa !24
  %cmp39 = icmp eq i32 %39, %41
  br i1 %cmp39, label %if.end.47, label %if.then.41

if.then.41:                                       ; preds = %land.lhs.true.35, %if.then
  %42 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %42, i32 0, i32 3
  %43 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !66
  %procs42 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %43, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs42, i32 0, i32 7
  %44 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !67
  %45 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory43 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %45, i32 0, i32 3
  %46 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory43, align 8, !tbaa !66
  %47 = load i32, i32* %min_raster, align 4, !tbaa !5
  %call = call i8* %44(%struct.gs_memory_s* %46, i32 %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0)) #4
  store i8* %call, i8** %row, align 8, !tbaa !1
  %48 = load i8*, i8** %row, align 8, !tbaa !1
  %cmp44 = icmp eq i8* %48, null
  br i1 %cmp44, label %if.then.46, label %if.end

if.then.46:                                       ; preds = %if.then.41
  store i32 -25, i32* %code, align 4, !tbaa !5
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.41
  br label %if.end.47

if.end.47:                                        ; preds = %if.end, %land.lhs.true.35
  %49 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs48 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %49, i32 0, i32 42
  %get_bits = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs48, i32 0, i32 12
  %get_bits49 = bitcast {}** %get_bits to i32 (%struct.gx_device_s*, i32, i8*, i8**)**
  %50 = load i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)** %get_bits49, align 8, !tbaa !7
  %51 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %52 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %p50 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %52, i32 0, i32 0
  %y51 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p50, i32 0, i32 1
  %53 = load i32, i32* %y51, align 4, !tbaa !23
  %54 = load i8*, i8** %row, align 8, !tbaa !1
  %55 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %options52 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %55, i32 0, i32 0
  %56 = load i64, i64* %options52, align 8, !tbaa !27
  %and53 = and i64 %56, 2097152
  %tobool54 = icmp ne i64 %and53, 0
  br i1 %tobool54, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.47
  %57 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %data55 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %57, i32 0, i32 1
  %arrayidx56 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data55, i32 0, i64 0
  br label %cond.end

cond.false:                                       ; preds = %if.end.47
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8** [ %arrayidx56, %cond.true ], [ null, %cond.false ]
  %call57 = call i32 %50(%struct.gx_device_s* %51, i32 %53, i8* %54, i8** %cond) #4
  store i32 %call57, i32* %code, align 4, !tbaa !5
  %58 = load i32, i32* %code, align 4, !tbaa !5
  %cmp58 = icmp sge i32 %58, 0
  br i1 %cmp58, label %if.then.60, label %if.end.114

if.then.60:                                       ; preds = %cond.end
  %59 = load i8*, i8** %row, align 8, !tbaa !1
  %60 = load i8*, i8** %data, align 8, !tbaa !1
  %cmp61 = icmp ne i8* %59, %60
  br i1 %cmp61, label %if.then.63, label %if.end.107

if.then.63:                                       ; preds = %if.then.60
  %61 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %p64 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %61, i32 0, i32 0
  %x65 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p64, i32 0, i32 0
  %62 = load i32, i32* %x65, align 4, !tbaa !20
  %cmp66 = icmp eq i32 %62, 0
  br i1 %cmp66, label %land.lhs.true.68, label %if.else

land.lhs.true.68:                                 ; preds = %if.then.63
  %63 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %data69 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %63, i32 0, i32 1
  %arrayidx70 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data69, i32 0, i64 0
  %64 = load i8*, i8** %arrayidx70, align 8, !tbaa !1
  %65 = load i8*, i8** %row, align 8, !tbaa !1
  %cmp71 = icmp ne i8* %64, %65
  br i1 %cmp71, label %land.lhs.true.73, label %if.else

land.lhs.true.73:                                 ; preds = %land.lhs.true.68
  %66 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %options74 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %66, i32 0, i32 0
  %67 = load i64, i64* %options74, align 8, !tbaa !27
  %and75 = and i64 %67, 2097152
  %tobool76 = icmp ne i64 %and75, 0
  br i1 %tobool76, label %if.then.77, label %if.else

if.then.77:                                       ; preds = %land.lhs.true.73
  br label %do.body

do.body:                                          ; preds = %if.then.77
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.103

if.else:                                          ; preds = %land.lhs.true.73, %land.lhs.true.68, %if.then.63
  %68 = bitcast i32* %width_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %68) #1
  %69 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %q78 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %69, i32 0, i32 1
  %x79 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q78, i32 0, i32 0
  %70 = load i32, i32* %x79, align 4, !tbaa !25
  %71 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %p80 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %71, i32 0, i32 0
  %x81 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p80, i32 0, i32 0
  %72 = load i32, i32* %x81, align 4, !tbaa !20
  %sub = sub nsw i32 %70, %72
  %73 = load i32, i32* %depth, align 4, !tbaa !5
  %mul82 = mul nsw i32 %sub, %73
  store i32 %mul82, i32* %width_bits, align 4, !tbaa !5
  %74 = bitcast %struct.gx_device_memory_s* %tdev to i8*
  call void @llvm.lifetime.start(i64 2792, i8* %74) #1
  %75 = load i32, i32* %width_bits, align 4, !tbaa !5
  %width83 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %tdev, i32 0, i32 13
  store i32 %75, i32* %width83, align 4, !tbaa !48
  %height = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %tdev, i32 0, i32 14
  store i32 1, i32* %height, align 4, !tbaa !49
  %base = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %tdev, i32 0, i32 45
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %tdev, i32 0, i32 52
  store i8** %base, i8*** %line_ptrs, align 8, !tbaa !36
  %76 = load i8*, i8** %data, align 8, !tbaa !1
  %base84 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %tdev, i32 0, i32 45
  store i8* %76, i8** %base84, align 8, !tbaa !47
  %77 = load i32, i32* %width_bits, align 4, !tbaa !5
  %add85 = add nsw i32 %77, 63
  %shr86 = ashr i32 %add85, 6
  %shl = shl i32 %shr86, 3
  %raster87 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %tdev, i32 0, i32 44
  store i32 %shl, i32* %raster87, align 4, !tbaa !70
  %78 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** getelementptr inbounds (%struct.gx_device_memory_s, %struct.gx_device_memory_s* @mem_mono_device, i32 0, i32 42, i32 9), align 8, !tbaa !50
  %79 = bitcast %struct.gx_device_memory_s* %tdev to %struct.gx_device_s*
  %80 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %options88 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %80, i32 0, i32 0
  %81 = load i64, i64* %options88, align 8, !tbaa !27
  %and89 = and i64 %81, 2097152
  %tobool90 = icmp ne i64 %and89, 0
  br i1 %tobool90, label %cond.true.91, label %cond.false.94

cond.true.91:                                     ; preds = %if.else
  %82 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %data92 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %82, i32 0, i32 1
  %arrayidx93 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data92, i32 0, i64 0
  %83 = load i8*, i8** %arrayidx93, align 8, !tbaa !1
  br label %cond.end.95

cond.false.94:                                    ; preds = %if.else
  %84 = load i8*, i8** %row, align 8, !tbaa !1
  br label %cond.end.95

cond.end.95:                                      ; preds = %cond.false.94, %cond.true.91
  %cond96 = phi i8* [ %83, %cond.true.91 ], [ %84, %cond.false.94 ]
  %85 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %p97 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %85, i32 0, i32 0
  %x98 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p97, i32 0, i32 0
  %86 = load i32, i32* %x98, align 4, !tbaa !20
  %87 = load i32, i32* %depth, align 4, !tbaa !5
  %mul99 = mul nsw i32 %86, %87
  %88 = load i32, i32* %min_raster, align 4, !tbaa !5
  %89 = load i32, i32* %width_bits, align 4, !tbaa !5
  %call100 = call i32 %78(%struct.gx_device_s* %79, i8* %cond96, i32 %mul99, i32 %88, i64 0, i32 0, i32 0, i32 %89, i32 1, i64 0, i64 1) #4
  store i32 %call100, i32* %code, align 4, !tbaa !5
  %90 = load i8*, i8** %data, align 8, !tbaa !1
  %91 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %data101 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %91, i32 0, i32 1
  %arrayidx102 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data101, i32 0, i64 0
  store i8* %90, i8** %arrayidx102, align 8, !tbaa !1
  %92 = bitcast %struct.gx_device_memory_s* %tdev to i8*
  call void @llvm.lifetime.end(i64 2792, i8* %92) #1
  %93 = bitcast i32* %width_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #1
  br label %if.end.103

if.end.103:                                       ; preds = %cond.end.95, %do.end
  %94 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory104 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %94, i32 0, i32 3
  %95 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory104, align 8, !tbaa !66
  %procs105 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %95, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs105, i32 0, i32 2
  %96 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !71
  %97 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory106 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %97, i32 0, i32 3
  %98 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory106, align 8, !tbaa !66
  %99 = load i8*, i8** %row, align 8, !tbaa !1
  call void %96(%struct.gs_memory_s* %98, i8* %99, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0)) #4
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.103, %if.then.60
  %100 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %data108 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %100, i32 0, i32 1
  %arrayidx109 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data108, i32 0, i64 0
  %101 = load i8*, i8** %arrayidx109, align 8, !tbaa !1
  %102 = load i8*, i8** %data, align 8, !tbaa !1
  %cmp110 = icmp eq i8* %101, %102
  %cond112 = select i1 %cmp110, i64 1048576, i64 2097152
  %or = or i64 289472529, %cond112
  %103 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %options113 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %103, i32 0, i32 0
  store i64 %or, i64* %options113, align 8, !tbaa !27
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end.114:                                       ; preds = %cond.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.107, %if.then.46, %if.end.114
  %104 = bitcast i8** %row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #1
  %105 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %105) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.249 [
    i32 0, label %cleanup.cont
    i32 2, label %ret
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.116

if.end.116:                                       ; preds = %cleanup.cont, %land.lhs.true.28, %land.lhs.true.25, %lor.lhs.false.22, %land.lhs.true.16, %lor.lhs.false, %land.lhs.true.8, %land.lhs.true, %entry
  %106 = bitcast i32* %x117 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %106) #1
  %107 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %p118 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %107, i32 0, i32 0
  %x119 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p118, i32 0, i32 0
  %108 = load i32, i32* %x119, align 4, !tbaa !20
  store i32 %108, i32* %x117, align 4, !tbaa !5
  %109 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %109) #1
  %110 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %q120 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %110, i32 0, i32 1
  %x121 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q120, i32 0, i32 0
  %111 = load i32, i32* %x121, align 4, !tbaa !25
  %112 = load i32, i32* %x117, align 4, !tbaa !5
  %sub122 = sub nsw i32 %111, %112
  store i32 %sub122, i32* %w, align 4, !tbaa !5
  %113 = bitcast i32* %bits_per_pixel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %113) #1
  %114 = load i32, i32* %depth, align 4, !tbaa !5
  store i32 %114, i32* %bits_per_pixel, align 4, !tbaa !5
  %115 = bitcast i8** %row123 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %115) #1
  %116 = load i64, i64* %options, align 8, !tbaa !33
  %and124 = and i64 %116, 14
  %tobool125 = icmp ne i64 %and124, 0
  br i1 %tobool125, label %if.then.126, label %if.end.149

if.then.126:                                      ; preds = %if.end.116
  %117 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %117) #1
  %118 = load i64, i64* %options, align 8, !tbaa !33
  %shr127 = lshr i64 %118, 8
  %and128 = and i64 %shr127, 63
  %arrayidx129 = getelementptr inbounds [65 x i8], [65 x i8]* @.str.1, i32 0, i64 %and128
  %119 = load i8, i8* %arrayidx129, align 1, !tbaa !55
  %conv130 = sext i8 %119 to i32
  store i32 %conv130, i32* %bpc, align 4, !tbaa !5
  %120 = bitcast i32* %nc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %120) #1
  %121 = load i64, i64* %options, align 8, !tbaa !33
  %and131 = and i64 %121, 8
  %tobool132 = icmp ne i64 %and131, 0
  br i1 %tobool132, label %cond.true.133, label %cond.false.134

cond.true.133:                                    ; preds = %if.then.126
  br label %cond.end.138

cond.false.134:                                   ; preds = %if.then.126
  %122 = load i64, i64* %options, align 8, !tbaa !33
  %and135 = and i64 %122, 4
  %tobool136 = icmp ne i64 %and135, 0
  %cond137 = select i1 %tobool136, i32 3, i32 1
  br label %cond.end.138

cond.end.138:                                     ; preds = %cond.false.134, %cond.true.133
  %cond139 = phi i32 [ 4, %cond.true.133 ], [ %cond137, %cond.false.134 ]
  %123 = load i64, i64* %options, align 8, !tbaa !33
  %and140 = and i64 %123, 96
  %tobool141 = icmp ne i64 %and140, 0
  %cond142 = select i1 %tobool141, i32 1, i32 0
  %add143 = add nsw i32 %cond139, %cond142
  store i32 %add143, i32* %nc, align 4, !tbaa !5
  %124 = bitcast i32* %bpp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %124) #1
  %125 = load i32, i32* %bpc, align 4, !tbaa !5
  %126 = load i32, i32* %nc, align 4, !tbaa !5
  %mul144 = mul nsw i32 %125, %126
  store i32 %mul144, i32* %bpp, align 4, !tbaa !5
  %127 = load i32, i32* %bpp, align 4, !tbaa !5
  %128 = load i32, i32* %bits_per_pixel, align 4, !tbaa !5
  %cmp145 = icmp sgt i32 %127, %128
  br i1 %cmp145, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %cond.end.138
  %129 = load i32, i32* %bpp, align 4, !tbaa !5
  store i32 %129, i32* %bits_per_pixel, align 4, !tbaa !5
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.147, %cond.end.138
  %130 = bitcast i32* %bpp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %130) #1
  %131 = bitcast i32* %nc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %131) #1
  %132 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %132) #1
  br label %if.end.149

if.end.149:                                       ; preds = %if.end.148, %if.end.116
  %133 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory150 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %133, i32 0, i32 3
  %134 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory150, align 8, !tbaa !66
  %procs151 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %134, i32 0, i32 1
  %alloc_bytes152 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs151, i32 0, i32 7
  %135 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes152, align 8, !tbaa !67
  %136 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory153 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %136, i32 0, i32 3
  %137 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory153, align 8, !tbaa !66
  %138 = load i32, i32* %bits_per_pixel, align 4, !tbaa !5
  %139 = load i32, i32* %w, align 4, !tbaa !5
  %mul154 = mul nsw i32 %138, %139
  %add155 = add nsw i32 %mul154, 7
  %shr156 = ashr i32 %add155, 3
  %call157 = call i8* %135(%struct.gs_memory_s* %137, i32 %shr156, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0)) #4
  store i8* %call157, i8** %row123, align 8, !tbaa !1
  %140 = load i8*, i8** %row123, align 8, !tbaa !1
  %cmp158 = icmp eq i8* %140, null
  br i1 %cmp158, label %if.then.160, label %if.else.161

if.then.160:                                      ; preds = %if.end.149
  store i32 -25, i32* %code, align 4, !tbaa !5
  br label %if.end.240

if.else.161:                                      ; preds = %if.end.149
  %141 = bitcast i32* %dev_raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %141) #1
  %142 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call162 = call i32 @gx_device_raster(%struct.gx_device_s* %142, i32 1) #4
  store i32 %call162, i32* %dev_raster, align 4, !tbaa !5
  %143 = bitcast i32* %raster163 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %143) #1
  %144 = load i64, i64* %options, align 8, !tbaa !33
  %and164 = and i64 %144, 536870912
  %tobool165 = icmp ne i64 %and164, 0
  br i1 %tobool165, label %cond.true.166, label %cond.false.168

cond.true.166:                                    ; preds = %if.else.161
  %145 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %raster167 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %145, i32 0, i32 4
  %146 = load i32, i32* %raster167, align 4, !tbaa !31
  br label %cond.end.182

cond.false.168:                                   ; preds = %if.else.161
  %147 = load i64, i64* %options, align 8, !tbaa !33
  %and169 = and i64 %147, 4194304
  %tobool170 = icmp ne i64 %and169, 0
  br i1 %tobool170, label %cond.true.171, label %cond.false.176

cond.true.171:                                    ; preds = %cond.false.168
  %148 = load i32, i32* %depth, align 4, !tbaa !5
  %149 = load i32, i32* %w, align 4, !tbaa !5
  %mul172 = mul nsw i32 %148, %149
  %add173 = add nsw i32 %mul172, 63
  %shr174 = ashr i32 %add173, 6
  %shl175 = shl i32 %shr174, 3
  br label %cond.end.180

cond.false.176:                                   ; preds = %cond.false.168
  %150 = load i32, i32* %depth, align 4, !tbaa !5
  %151 = load i32, i32* %w, align 4, !tbaa !5
  %mul177 = mul nsw i32 %150, %151
  %add178 = add nsw i32 %mul177, 7
  %shr179 = ashr i32 %add178, 3
  br label %cond.end.180

cond.end.180:                                     ; preds = %cond.false.176, %cond.true.171
  %cond181 = phi i32 [ %shl175, %cond.true.171 ], [ %shr179, %cond.false.176 ]
  br label %cond.end.182

cond.end.182:                                     ; preds = %cond.end.180, %cond.true.166
  %cond183 = phi i32 [ %146, %cond.true.166 ], [ %cond181, %cond.end.180 ]
  store i32 %cond183, i32* %raster163, align 4, !tbaa !5
  %152 = bitcast %struct.gs_int_rect_s* %rect to i8*
  call void @llvm.lifetime.start(i64 16, i8* %152) #1
  %153 = bitcast %struct.gs_get_bits_params_s* %copy_params to i8*
  call void @llvm.lifetime.start(i64 536, i8* %153) #1
  %154 = bitcast i64* %copy_options to i8*
  call void @llvm.lifetime.start(i64 8, i8* %154) #1
  %155 = load i64, i64* %options, align 8, !tbaa !33
  %and184 = and i64 %155, 16143
  %or185 = or i64 1441857537, %and184
  %or186 = or i64 %or185, 112
  store i64 %or186, i64* %copy_options, align 8, !tbaa !33
  %156 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.start(i64 8, i8* %156) #1
  %157 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %data187 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %157, i32 0, i32 1
  %arrayidx188 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data187, i32 0, i64 0
  %158 = load i8*, i8** %arrayidx188, align 8, !tbaa !1
  store i8* %158, i8** %dest, align 8, !tbaa !1
  %159 = bitcast i32* %y189 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %159) #1
  %160 = load i32, i32* %x117, align 4, !tbaa !5
  %p190 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %x191 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p190, i32 0, i32 0
  store i32 %160, i32* %x191, align 4, !tbaa !20
  %161 = load i32, i32* %x117, align 4, !tbaa !5
  %162 = load i32, i32* %w, align 4, !tbaa !5
  %add192 = add nsw i32 %161, %162
  %q193 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 1
  %x194 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q193, i32 0, i32 0
  store i32 %add192, i32* %x194, align 4, !tbaa !25
  store i32 0, i32* %code, align 4, !tbaa !5
  %163 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %p195 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %163, i32 0, i32 0
  %y196 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p195, i32 0, i32 1
  %164 = load i32, i32* %y196, align 4, !tbaa !23
  store i32 %164, i32* %y189, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.182
  %165 = load i32, i32* %y189, align 4, !tbaa !5
  %166 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %q197 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %166, i32 0, i32 1
  %y198 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q197, i32 0, i32 1
  %167 = load i32, i32* %y198, align 4, !tbaa !26
  %cmp199 = icmp slt i32 %165, %167
  br i1 %cmp199, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %168 = load i32, i32* %y189, align 4, !tbaa !5
  %p201 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %y202 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p201, i32 0, i32 1
  store i32 %168, i32* %y202, align 4, !tbaa !23
  %169 = load i32, i32* %y189, align 4, !tbaa !5
  %add203 = add nsw i32 %169, 1
  %q204 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 1
  %y205 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q204, i32 0, i32 1
  store i32 %add203, i32* %y205, align 4, !tbaa !26
  %170 = load i64, i64* %copy_options, align 8, !tbaa !33
  %options206 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %copy_params, i32 0, i32 0
  store i64 %170, i64* %options206, align 8, !tbaa !27
  %171 = load i8*, i8** %row123, align 8, !tbaa !1
  %data207 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %copy_params, i32 0, i32 1
  %arrayidx208 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data207, i32 0, i64 0
  store i8* %171, i8** %arrayidx208, align 8, !tbaa !1
  %172 = load i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %save_get_bits_rectangle, align 8, !tbaa !1
  %173 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call209 = call i32 %172(%struct.gx_device_s* %173, %struct.gs_int_rect_s* %rect, %struct.gs_get_bits_params_s* %copy_params, %struct.gs_int_rect_s** null) #4
  store i32 %call209, i32* %code, align 4, !tbaa !5
  %174 = load i32, i32* %code, align 4, !tbaa !5
  %cmp210 = icmp slt i32 %174, 0
  br i1 %cmp210, label %if.then.212, label %if.end.213

if.then.212:                                      ; preds = %for.body
  br label %for.end

if.end.213:                                       ; preds = %for.body
  %options214 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %copy_params, i32 0, i32 0
  %175 = load i64, i64* %options214, align 8, !tbaa !27
  %and215 = and i64 %175, 16777216
  %tobool216 = icmp ne i64 %and215, 0
  br i1 %tobool216, label %if.then.217, label %if.end.219

if.then.217:                                      ; preds = %if.end.213
  %x_offset218 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %copy_params, i32 0, i32 2
  store i32 0, i32* %x_offset218, align 4, !tbaa !29
  br label %if.end.219

if.end.219:                                       ; preds = %if.then.217, %if.end.213
  %176 = load i8*, i8** %dest, align 8, !tbaa !1
  %177 = load i32, i32* %y189, align 4, !tbaa !5
  %178 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %p220 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %178, i32 0, i32 0
  %y221 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p220, i32 0, i32 1
  %179 = load i32, i32* %y221, align 4, !tbaa !23
  %sub222 = sub nsw i32 %177, %179
  %180 = load i32, i32* %raster163, align 4, !tbaa !5
  %mul223 = mul i32 %sub222, %180
  %idx.ext = zext i32 %mul223 to i64
  %add.ptr = getelementptr inbounds i8, i8* %176, i64 %idx.ext
  %181 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %data224 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %181, i32 0, i32 1
  %arrayidx225 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data224, i32 0, i64 0
  store i8* %add.ptr, i8** %arrayidx225, align 8, !tbaa !1
  %182 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %x_offset226 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %copy_params, i32 0, i32 2
  %183 = load i32, i32* %x_offset226, align 4, !tbaa !29
  %184 = load i32, i32* %w, align 4, !tbaa !5
  %185 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %data227 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %copy_params, i32 0, i32 1
  %arrayidx228 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data227, i32 0, i64 0
  %186 = load i8*, i8** %arrayidx228, align 8, !tbaa !1
  %187 = load i32, i32* %dev_raster, align 4, !tbaa !5
  %call229 = call i32 @gx_get_bits_copy(%struct.gx_device_s* %182, i32 %183, i32 %184, i32 1, %struct.gs_get_bits_params_s* %185, %struct.gs_get_bits_params_s* %copy_params, i8* %186, i32 %187) #4
  store i32 %call229, i32* %code, align 4, !tbaa !5
  %188 = load i32, i32* %code, align 4, !tbaa !5
  %cmp230 = icmp slt i32 %188, 0
  br i1 %cmp230, label %if.then.232, label %if.end.233

if.then.232:                                      ; preds = %if.end.219
  br label %for.end

if.end.233:                                       ; preds = %if.end.219
  br label %for.inc

for.inc:                                          ; preds = %if.end.233
  %189 = load i32, i32* %y189, align 4, !tbaa !5
  %inc = add nsw i32 %189, 1
  store i32 %inc, i32* %y189, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %if.then.232, %if.then.212, %for.cond
  %190 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory234 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %190, i32 0, i32 3
  %191 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory234, align 8, !tbaa !66
  %procs235 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %191, i32 0, i32 1
  %free_object236 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs235, i32 0, i32 2
  %192 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object236, align 8, !tbaa !71
  %193 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory237 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %193, i32 0, i32 3
  %194 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory237, align 8, !tbaa !66
  %195 = load i8*, i8** %row123, align 8, !tbaa !1
  call void %192(%struct.gs_memory_s* %194, i8* %195, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0)) #4
  %196 = load i8*, i8** %dest, align 8, !tbaa !1
  %197 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %data238 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %197, i32 0, i32 1
  %arrayidx239 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data238, i32 0, i64 0
  store i8* %196, i8** %arrayidx239, align 8, !tbaa !1
  %198 = bitcast i32* %y189 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %198) #1
  %199 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %199) #1
  %200 = bitcast i64* %copy_options to i8*
  call void @llvm.lifetime.end(i64 8, i8* %200) #1
  %201 = bitcast %struct.gs_get_bits_params_s* %copy_params to i8*
  call void @llvm.lifetime.end(i64 536, i8* %201) #1
  %202 = bitcast %struct.gs_int_rect_s* %rect to i8*
  call void @llvm.lifetime.end(i64 16, i8* %202) #1
  %203 = bitcast i32* %raster163 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %203) #1
  %204 = bitcast i32* %dev_raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %204) #1
  br label %if.end.240

if.end.240:                                       ; preds = %for.end, %if.then.160
  %205 = bitcast i8** %row123 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %205) #1
  %206 = bitcast i32* %bits_per_pixel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %206) #1
  %207 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %207) #1
  %208 = bitcast i32* %x117 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %208) #1
  br label %ret

ret:                                              ; preds = %if.end.240, %cleanup
  %209 = load i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %save_get_bits_rectangle, align 8, !tbaa !1
  %210 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs241 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %210, i32 0, i32 42
  %get_bits_rectangle242 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs241, i32 0, i32 38
  store i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* %209, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %get_bits_rectangle242, align 8, !tbaa !32
  %211 = load i32, i32* %code, align 4, !tbaa !5
  %cmp243 = icmp slt i32 %211, 0
  br i1 %cmp243, label %cond.true.245, label %cond.false.246

cond.true.245:                                    ; preds = %ret
  %212 = load i32, i32* %code, align 4, !tbaa !5
  br label %cond.end.247

cond.false.246:                                   ; preds = %ret
  br label %cond.end.247

cond.end.247:                                     ; preds = %cond.false.246, %cond.true.245
  %cond248 = phi i32 [ %212, %cond.true.245 ], [ 0, %cond.false.246 ]
  store i32 %cond248, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.249

cleanup.249:                                      ; preds = %cond.end.247, %cleanup
  %213 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %213) #1
  %214 = bitcast i64* %options to i8*
  call void @llvm.lifetime.end(i64 8, i8* %214) #1
  %215 = bitcast i32* %min_raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %215) #1
  %216 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %216) #1
  %217 = bitcast i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %save_get_bits_rectangle to i8*
  call void @llvm.lifetime.end(i64 8, i8* %217) #1
  %218 = load i32, i32* %retval
  ret i32 %218
}

; Function Attrs: nounwind uwtable
define internal void @gx_get_bits_copy_cmyk_1bit(i8* %dest_line, i32 %dest_raster, i8* %src_line, i32 %src_raster, i32 %src_bit, i32 %w, i32 %h) #0 {
entry:
  %dest_line.addr = alloca i8*, align 8
  %dest_raster.addr = alloca i32, align 4
  %src_line.addr = alloca i8*, align 8
  %src_raster.addr = alloca i32, align 4
  %src_bit.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %src = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %hi = alloca i32, align 4
  %i = alloca i32, align 4
  %pixel = alloca i32, align 4
  store i8* %dest_line, i8** %dest_line.addr, align 8, !tbaa !1
  store i32 %dest_raster, i32* %dest_raster.addr, align 4, !tbaa !5
  store i8* %src_line, i8** %src_line.addr, align 8, !tbaa !1
  store i32 %src_raster, i32* %src_raster.addr, align 4, !tbaa !5
  store i32 %src_bit, i32* %src_bit.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.26, %entry
  %0 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end.31

for.body:                                         ; preds = %for.cond
  %1 = bitcast i8** %src to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i8*, i8** %src_line.addr, align 8, !tbaa !1
  store i8* %2, i8** %src, align 8, !tbaa !1
  %3 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i8*, i8** %dest_line.addr, align 8, !tbaa !1
  store i8* %4, i8** %dest, align 8, !tbaa !1
  %5 = bitcast i32* %hi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %src_bit.addr, align 4, !tbaa !5
  %and = and i32 %6, 4
  %cmp1 = icmp ne i32 %and, 0
  %conv = zext i1 %cmp1 to i32
  store i32 %conv, i32* %hi, align 4, !tbaa !5
  %7 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i32, i32* %w.addr, align 4, !tbaa !5
  store i32 %8, i32* %i, align 4, !tbaa !5
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %9 = load i32, i32* %i, align 4, !tbaa !5
  %cmp3 = icmp sgt i32 %9, 0
  br i1 %cmp3, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.2
  %10 = bitcast i32* %pixel to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load i32, i32* %hi, align 4, !tbaa !5
  %tobool = icmp ne i32 %11, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %hi, align 4, !tbaa !5
  br i1 %lnot, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.5
  %12 = load i8*, i8** %src, align 8, !tbaa !1
  %13 = load i8, i8* %12, align 1, !tbaa !55
  %conv6 = zext i8 %13 to i32
  %shr = ashr i32 %conv6, 4
  br label %cond.end

cond.false:                                       ; preds = %for.body.5
  %14 = load i8*, i8** %src, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %src, align 8, !tbaa !1
  %15 = load i8, i8* %14, align 1, !tbaa !55
  %conv7 = zext i8 %15 to i32
  %and8 = and i32 %conv7, 15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %shr, %cond.true ], [ %and8, %cond.false ]
  store i32 %cond, i32* %pixel, align 4, !tbaa !5
  %16 = load i32, i32* %pixel, align 4, !tbaa !5
  %and9 = and i32 %16, 1
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %17 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %17, i64 2
  store i8 0, i8* %arrayidx, align 1, !tbaa !55
  %18 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8, i8* %18, i64 1
  store i8 0, i8* %arrayidx11, align 1, !tbaa !55
  %19 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 0, i8* %arrayidx12, align 1, !tbaa !55
  br label %if.end

if.else:                                          ; preds = %cond.end
  %20 = load i32, i32* %pixel, align 4, !tbaa !5
  %shr13 = lshr i32 %20, 3
  %sub = sub i32 %shr13, 1
  %conv14 = trunc i32 %sub to i8
  %21 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i8, i8* %21, i64 0
  store i8 %conv14, i8* %arrayidx15, align 1, !tbaa !55
  %22 = load i32, i32* %pixel, align 4, !tbaa !5
  %shr16 = lshr i32 %22, 2
  %and17 = and i32 %shr16, 1
  %sub18 = sub i32 %and17, 1
  %conv19 = trunc i32 %sub18 to i8
  %23 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds i8, i8* %23, i64 1
  store i8 %conv19, i8* %arrayidx20, align 1, !tbaa !55
  %24 = load i32, i32* %pixel, align 4, !tbaa !5
  %shr21 = lshr i32 %24, 1
  %and22 = and i32 %shr21, 1
  %sub23 = sub i32 %and22, 1
  %conv24 = trunc i32 %sub23 to i8
  %25 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds i8, i8* %25, i64 2
  store i8 %conv24, i8* %arrayidx25, align 1, !tbaa !55
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %26 = bitcast i32* %pixel to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %27 = load i8*, i8** %dest, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %27, i64 3
  store i8* %add.ptr, i8** %dest, align 8, !tbaa !1
  %28 = load i32, i32* %i, align 4, !tbaa !5
  %dec = add nsw i32 %28, -1
  store i32 %dec, i32* %i, align 4, !tbaa !5
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  %29 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = bitcast i32* %hi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %31 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = bitcast i8** %src to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.end
  %33 = load i32, i32* %dest_raster.addr, align 4, !tbaa !5
  %34 = load i8*, i8** %dest_line.addr, align 8, !tbaa !1
  %idx.ext = zext i32 %33 to i64
  %add.ptr27 = getelementptr inbounds i8, i8* %34, i64 %idx.ext
  store i8* %add.ptr27, i8** %dest_line.addr, align 8, !tbaa !1
  %35 = load i32, i32* %src_raster.addr, align 4, !tbaa !5
  %36 = load i8*, i8** %src_line.addr, align 8, !tbaa !1
  %idx.ext28 = zext i32 %35 to i64
  %add.ptr29 = getelementptr inbounds i8, i8* %36, i64 %idx.ext28
  store i8* %add.ptr29, i8** %src_line.addr, align 8, !tbaa !1
  %37 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec30 = add nsw i32 %37, -1
  store i32 %dec30, i32* %h.addr, align 4, !tbaa !5
  br label %for.cond

for.end.31:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }
attributes #5 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 1240}
!8 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144}
!9 = !{!"rc_header_s", !10, i64 0, !2, i64 8, !2, i64 16}
!10 = !{!"long", !3, i64 0}
!11 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !12, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !13, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !10, i64 704, !6, i64 712}
!12 = !{!"short", !3, i64 0}
!13 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!14 = !{!"gx_device_cached_colors_s", !10, i64 0, !10, i64 8}
!15 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!16 = !{!"gdev_space_params_s", !10, i64 0, !10, i64 8, !17, i64 16, !6, i64 32, !3, i64 36}
!17 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !10, i64 8}
!18 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!19 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!20 = !{!21, !6, i64 0}
!21 = !{!"gs_int_rect_s", !22, i64 0, !22, i64 8}
!22 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!23 = !{!21, !6, i64 4}
!24 = !{!8, !6, i64 832}
!25 = !{!21, !6, i64 8}
!26 = !{!21, !6, i64 12}
!27 = !{!28, !10, i64 0}
!28 = !{!"gs_get_bits_params_s", !10, i64 0, !3, i64 8, !6, i64 520, !6, i64 524, !6, i64 528}
!29 = !{!28, !6, i64 520}
!30 = !{!8, !12, i64 108}
!31 = !{!28, !6, i64 528}
!32 = !{!8, !2, i64 1448}
!33 = !{!10, !10, i64 0}
!34 = !{!8, !6, i64 100}
!35 = !{!8, !6, i64 836}
!36 = !{!37, !2, i64 2576}
!37 = !{!"gx_device_memory_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144, !2, i64 1728, !6, i64 1736, !2, i64 1744, !2, i64 1752, !6, i64 1760, !2, i64 1768, !6, i64 1776, !3, i64 1780, !38, i64 2548, !2, i64 2576, !40, i64 2584, !41, i64 2600, !42, i64 2624, !43, i64 2656, !44, i64 2680, !45, i64 2720, !46, i64 2736, !6, i64 2744, !6, i64 2748, !6, i64 2752, !6, i64 2756, !6, i64 2760, !10, i64 2768, !2, i64 2776, !6, i64 2784, !6, i64 2788}
!38 = !{!"gs_matrix_s", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20}
!39 = !{!"float", !3, i64 0}
!40 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!41 = !{!"_c24", !10, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!42 = !{!"_c40", !10, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24}
!43 = !{!"_c48", !10, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!44 = !{!"_c56", !10, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!45 = !{!"_c64", !10, i64 0, !6, i64 8, !6, i64 12}
!46 = !{!"gs_log2_scale_point_s", !6, i64 0, !6, i64 4}
!47 = !{!37, !2, i64 1744}
!48 = !{!37, !6, i64 832}
!49 = !{!37, !6, i64 836}
!50 = !{!37, !2, i64 1216}
!51 = !{!52, !6, i64 8}
!52 = !{!"bits_plane_s", !3, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!53 = !{!52, !6, i64 12}
!54 = !{!52, !6, i64 16}
!55 = !{!3, !3, i64 0}
!56 = !{!12, !12, i64 0}
!57 = !{!8, !2, i64 1536}
!58 = !{!8, !2, i64 1288}
!59 = !{!60, !2, i64 0}
!60 = !{!"gx_cm_color_map_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!61 = !{!60, !2, i64 8}
!62 = !{!60, !2, i64 16}
!63 = !{!8, !2, i64 1552}
!64 = !{!8, !2, i64 1664}
!65 = !{!8, !2, i64 1456}
!66 = !{!8, !2, i64 24}
!67 = !{!68, !2, i64 64}
!68 = !{!"gs_memory_s", !2, i64 0, !69, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!69 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!70 = !{!37, !6, i64 1736}
!71 = !{!68, !2, i64 24}
