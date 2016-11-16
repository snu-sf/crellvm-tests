; ModuleID = './gdevm32.bc'
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
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
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

@.str = private unnamed_addr constant [8 x i8] c"image32\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"DeviceCMYK\00", align 1
@mem_true32_device = constant %struct.gx_device_memory_s { i32 2792, %struct.gx_device_procs_s* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* null, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 4, i32 4, i32 0, i16 32, i8 3, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [2 x float] zeroinitializer, [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @mem_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @mem_get_initial_matrix, i32 (%struct.gx_device_s*)* @gx_default_sync_output, i32 (%struct.gx_device_s*, i32, i32)* @gx_default_output_page, i32 (%struct.gx_device_s*)* @mem_close, i64 (%struct.gx_device_s*, i16*)* @gx_default_w_b_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_w_b_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @mem_true32_fill_rectangle, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* @mem_true32_copy_mono, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* @mem_true32_copy_color, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @gx_default_draw_line, i32 (%struct.gx_device_s*, i32, i8*, i8**)* @gx_default_get_bits, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_default_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_default_put_params, i64 (%struct.gx_device_s*, i16*)* @cmyk_8bit_map_cmyk_color, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_procs, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_device, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* @gx_default_map_rgb_alpha_color, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_page_device, i32 (%struct.gx_device_s*, i32)* @gx_default_get_alpha_bits, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* @gx_default_copy_alpha, i32 (%struct.gx_device_s*, i32, i32*)* @gx_default_get_band, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @gx_default_copy_rop, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_default_fill_path, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_default_stroke_path, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* @gx_default_fill_mask, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_trapezoid, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_parallelogram, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_triangle, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* @mem_draw_thin_line, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_image, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* @gx_default_image_data, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* @gx_default_end_image, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_strip_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @mem_default_strip_copy_rop, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* @gx_default_get_clipping_box, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_typed_image, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* @mem_get_bits_rectangle, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_map_color_rgb_alpha, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* @gx_default_create_compositor, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_default_get_hardware_params, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* @gx_default_text_begin, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* @gx_default_finish_copydevice, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, %struct.gx_device_s* null, i32 0, i8* null, %struct.gs_memory_s* null, i32 1, %struct.gs_memory_s* null, i32 1, [64 x %struct.gx_render_plane_s] zeroinitializer, %struct.gs_matrix_s { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, i8** null, %struct.gs_const_string_s zeroinitializer, %struct._c24 { i64 -1, i32 0, i32 0, i32 0 }, %struct._c40 { i64 -1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct._c48 { i64 -1, i32 0, i32 0, i32 0 }, %struct._c56 { i64 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct._c64 { i64 -1, i32 0, i32 0 }, %struct.gs_log2_scale_point_s zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i64 -1, %struct.gx_device_color_s* null, i32 0, i32 0 }, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"image32w\00", align 1
@mem_true32_word_device = constant %struct.gx_device_memory_s { i32 2792, %struct.gx_device_procs_s* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* null, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 4, i32 4, i32 0, i16 32, i8 3, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [2 x float] zeroinitializer, [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @mem_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @mem_get_initial_matrix, i32 (%struct.gx_device_s*)* @gx_default_sync_output, i32 (%struct.gx_device_s*, i32, i32)* @gx_default_output_page, i32 (%struct.gx_device_s*)* @mem_close, i64 (%struct.gx_device_s*, i16*)* @gx_default_w_b_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_w_b_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @mem32_word_fill_rectangle, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* @mem32_word_copy_mono, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* @mem32_word_copy_color, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @gx_default_draw_line, i32 (%struct.gx_device_s*, i32, i8*, i8**)* @gx_default_get_bits, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_default_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_default_put_params, i64 (%struct.gx_device_s*, i16*)* @cmyk_8bit_map_cmyk_color, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_procs, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_device, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* @gx_default_map_rgb_alpha_color, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_page_device, i32 (%struct.gx_device_s*, i32)* @gx_default_get_alpha_bits, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* @gx_default_copy_alpha, i32 (%struct.gx_device_s*, i32, i32*)* @gx_default_get_band, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @gx_default_copy_rop, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_default_fill_path, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_default_stroke_path, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* @gx_default_fill_mask, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_trapezoid, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_parallelogram, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_triangle, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* @mem_draw_thin_line, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_image, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* @gx_default_image_data, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* @gx_default_end_image, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_strip_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @gx_no_strip_copy_rop, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* @gx_default_get_clipping_box, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_typed_image, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* @mem_word_get_bits_rectangle, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_map_color_rgb_alpha, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* @gx_default_create_compositor, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_default_get_hardware_params, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* @gx_default_text_begin, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* @gx_default_finish_copydevice, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, %struct.gx_device_s* null, i32 0, i8* null, %struct.gs_memory_s* null, i32 1, %struct.gs_memory_s* null, i32 1, [64 x %struct.gx_render_plane_s] zeroinitializer, %struct.gs_matrix_s { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, i8** null, %struct.gs_const_string_s zeroinitializer, %struct._c24 { i64 -1, i32 0, i32 0, i32 0 }, %struct._c40 { i64 -1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct._c48 { i64 -1, i32 0, i32 0, i32 0 }, %struct._c56 { i64 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct._c64 { i64 -1, i32 0, i32 0 }, %struct.gs_log2_scale_point_s zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i64 -1, %struct.gx_device_color_s* null, i32 0, i32 0 }, align 8

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

declare i32 @mem_open(%struct.gx_device_s*) #0

declare void @mem_get_initial_matrix(%struct.gx_device_s*, %struct.gs_matrix_s*) #0

declare i32 @gx_default_sync_output(%struct.gx_device_s*) #0

declare i32 @gx_default_output_page(%struct.gx_device_s*, i32, i32) #0

declare i32 @mem_close(%struct.gx_device_s*) #0

declare i64 @gx_default_w_b_map_rgb_color(%struct.gx_device_s*, i16*) #0

declare i32 @gx_default_w_b_map_color_rgb(%struct.gx_device_s*, i64, i16*) #0

; Function Attrs: nounwind uwtable
define internal i32 @mem_true32_fill_rectangle(%struct.gx_device_s* %dev, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  %mdev = alloca %struct.gx_device_memory_s*, align 8
  %a_color = alloca i32, align 4
  %dest = alloca i8*, align 8
  %draster = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pptr = alloca i32*, align 8
  %cnt = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store i64 %color, i64* %color.addr, align 8, !tbaa !7
  %0 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %2, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %3 = bitcast i32* %a_color to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast i32* %draster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  br label %do.body.2

do.body.2:                                        ; preds = %do.body.1
  %6 = load i32, i32* %x.addr, align 4, !tbaa !5
  %7 = load i32, i32* %y.addr, align 4, !tbaa !5
  %or = or i32 %6, %7
  %cmp = icmp slt i32 %or, 0
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %do.body.2
  %8 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %8, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %9 = load i32, i32* %x.addr, align 4, !tbaa !5
  %10 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add = add nsw i32 %10, %9
  store i32 %add, i32* %w.addr, align 4, !tbaa !5
  store i32 0, i32* %x.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %11 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %11, 0
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %12 = load i32, i32* %y.addr, align 4, !tbaa !5
  %13 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add7 = add nsw i32 %13, %12
  store i32 %add7, i32* %h.addr, align 4, !tbaa !5
  store i32 0, i32* %y.addr, align 4, !tbaa !5
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
  %14 = load i32, i32* %w.addr, align 4, !tbaa !5
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %15, i32 0, i32 13
  %16 = load i32, i32* %width, align 4, !tbaa !9
  %17 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %16, %17
  %cmp11 = icmp sgt i32 %14, %sub
  br i1 %cmp11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %do.body.10
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width13 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 13
  %19 = load i32, i32* %width13, align 4, !tbaa !9
  %20 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub14 = sub nsw i32 %19, %20
  store i32 %sub14, i32* %w.addr, align 4, !tbaa !5
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %do.body.10
  br label %do.cond.16

do.cond.16:                                       ; preds = %if.end.15
  br label %do.end.17

do.end.17:                                        ; preds = %do.cond.16
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.17
  %21 = load i32, i32* %h.addr, align 4, !tbaa !5
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %22, i32 0, i32 14
  %23 = load i32, i32* %height, align 4, !tbaa !21
  %24 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub19 = sub nsw i32 %23, %24
  %cmp20 = icmp sgt i32 %21, %sub19
  br i1 %cmp20, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %do.body.18
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height22 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %25, i32 0, i32 14
  %26 = load i32, i32* %height22, align 4, !tbaa !21
  %27 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub23 = sub nsw i32 %26, %27
  store i32 %sub23, i32* %h.addr, align 4, !tbaa !5
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
  %28 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp29 = icmp sle i32 %28, 0
  br i1 %cmp29, label %if.then.31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.28
  %29 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp30 = icmp sle i32 %29, 0
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
  %30 = load i64, i64* %color.addr, align 8, !tbaa !7
  %shr = lshr i64 %30, 24
  %and = and i64 %shr, 255
  %31 = load i64, i64* %color.addr, align 8, !tbaa !7
  %shr35 = lshr i64 %31, 8
  %and36 = and i64 %shr35, 65280
  %add37 = add i64 %and, %and36
  %32 = load i64, i64* %color.addr, align 8, !tbaa !7
  %and38 = and i64 %32, 65280
  %shl = shl i64 %and38, 8
  %add39 = add i64 %add37, %shl
  %33 = load i64, i64* %color.addr, align 8, !tbaa !7
  %shl40 = shl i64 %33, 24
  %add41 = add i64 %add39, %shl40
  %conv = trunc i64 %add41 to i32
  store i32 %conv, i32* %a_color, align 4, !tbaa !5
  %34 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %34, i32 0, i32 44
  %35 = load i32, i32* %raster, align 4, !tbaa !22
  store i32 %35, i32* %draster, align 4, !tbaa !5
  %36 = load i32, i32* %y.addr, align 4, !tbaa !5
  %idxprom = sext i32 %36 to i64
  %37 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %37, i32 0, i32 52
  %38 = load i8**, i8*** %line_ptrs, align 8, !tbaa !33
  %arrayidx = getelementptr inbounds i8*, i8** %38, i64 %idxprom
  %39 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %40 = load i32, i32* %x.addr, align 4, !tbaa !5
  %shl42 = shl i32 %40, 2
  %idx.ext = sext i32 %shl42 to i64
  %add.ptr = getelementptr inbounds i8, i8* %39, i64 %idx.ext
  store i8* %add.ptr, i8** %dest, align 8, !tbaa !1
  %41 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp43 = icmp sle i32 %41, 4
  br i1 %cmp43, label %if.then.45, label %if.else

if.then.45:                                       ; preds = %do.end.34
  %42 = load i32, i32* %w.addr, align 4, !tbaa !5
  switch i32 %42, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.54
    i32 3, label %sw.bb.65
    i32 4, label %sw.bb.77
  ]

sw.bb:                                            ; preds = %if.then.45
  br label %do.body.46

do.body.46:                                       ; preds = %do.cond.50, %sw.bb
  %43 = load i32, i32* %a_color, align 4, !tbaa !5
  %44 = load i8*, i8** %dest, align 8, !tbaa !1
  %45 = bitcast i8* %44 to i32*
  %arrayidx47 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 %43, i32* %arrayidx47, align 4, !tbaa !5
  %46 = load i8*, i8** %dest, align 8, !tbaa !1
  %47 = load i32, i32* %draster, align 4, !tbaa !5
  %idx.ext48 = zext i32 %47 to i64
  %add.ptr49 = getelementptr inbounds i8, i8* %46, i64 %idx.ext48
  store i8* %add.ptr49, i8** %dest, align 8, !tbaa !1
  br label %do.cond.50

do.cond.50:                                       ; preds = %do.body.46
  %48 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec = add nsw i32 %48, -1
  store i32 %dec, i32* %h.addr, align 4, !tbaa !5
  %cmp51 = icmp sgt i32 %dec, 0
  br i1 %cmp51, label %do.body.46, label %do.end.53

do.end.53:                                        ; preds = %do.cond.50
  br label %sw.epilog

sw.bb.54:                                         ; preds = %if.then.45
  br label %do.body.55

do.body.55:                                       ; preds = %do.cond.60, %sw.bb.54
  %49 = load i32, i32* %a_color, align 4, !tbaa !5
  %50 = load i8*, i8** %dest, align 8, !tbaa !1
  %51 = bitcast i8* %50 to i32*
  %arrayidx56 = getelementptr inbounds i32, i32* %51, i64 0
  store i32 %49, i32* %arrayidx56, align 4, !tbaa !5
  %52 = load i8*, i8** %dest, align 8, !tbaa !1
  %53 = bitcast i8* %52 to i32*
  %arrayidx57 = getelementptr inbounds i32, i32* %53, i64 1
  store i32 %49, i32* %arrayidx57, align 4, !tbaa !5
  %54 = load i8*, i8** %dest, align 8, !tbaa !1
  %55 = load i32, i32* %draster, align 4, !tbaa !5
  %idx.ext58 = zext i32 %55 to i64
  %add.ptr59 = getelementptr inbounds i8, i8* %54, i64 %idx.ext58
  store i8* %add.ptr59, i8** %dest, align 8, !tbaa !1
  br label %do.cond.60

do.cond.60:                                       ; preds = %do.body.55
  %56 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec61 = add nsw i32 %56, -1
  store i32 %dec61, i32* %h.addr, align 4, !tbaa !5
  %cmp62 = icmp sgt i32 %dec61, 0
  br i1 %cmp62, label %do.body.55, label %do.end.64

do.end.64:                                        ; preds = %do.cond.60
  br label %sw.epilog

sw.bb.65:                                         ; preds = %if.then.45
  br label %do.body.66

do.body.66:                                       ; preds = %do.cond.72, %sw.bb.65
  %57 = load i32, i32* %a_color, align 4, !tbaa !5
  %58 = load i8*, i8** %dest, align 8, !tbaa !1
  %59 = bitcast i8* %58 to i32*
  %arrayidx67 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 %57, i32* %arrayidx67, align 4, !tbaa !5
  %60 = load i8*, i8** %dest, align 8, !tbaa !1
  %61 = bitcast i8* %60 to i32*
  %arrayidx68 = getelementptr inbounds i32, i32* %61, i64 1
  store i32 %57, i32* %arrayidx68, align 4, !tbaa !5
  %62 = load i8*, i8** %dest, align 8, !tbaa !1
  %63 = bitcast i8* %62 to i32*
  %arrayidx69 = getelementptr inbounds i32, i32* %63, i64 2
  store i32 %57, i32* %arrayidx69, align 4, !tbaa !5
  %64 = load i8*, i8** %dest, align 8, !tbaa !1
  %65 = load i32, i32* %draster, align 4, !tbaa !5
  %idx.ext70 = zext i32 %65 to i64
  %add.ptr71 = getelementptr inbounds i8, i8* %64, i64 %idx.ext70
  store i8* %add.ptr71, i8** %dest, align 8, !tbaa !1
  br label %do.cond.72

do.cond.72:                                       ; preds = %do.body.66
  %66 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec73 = add nsw i32 %66, -1
  store i32 %dec73, i32* %h.addr, align 4, !tbaa !5
  %cmp74 = icmp sgt i32 %dec73, 0
  br i1 %cmp74, label %do.body.66, label %do.end.76

do.end.76:                                        ; preds = %do.cond.72
  br label %sw.epilog

sw.bb.77:                                         ; preds = %if.then.45
  br label %do.body.78

do.body.78:                                       ; preds = %do.cond.85, %sw.bb.77
  %67 = load i32, i32* %a_color, align 4, !tbaa !5
  %68 = load i8*, i8** %dest, align 8, !tbaa !1
  %69 = bitcast i8* %68 to i32*
  %arrayidx79 = getelementptr inbounds i32, i32* %69, i64 0
  store i32 %67, i32* %arrayidx79, align 4, !tbaa !5
  %70 = load i8*, i8** %dest, align 8, !tbaa !1
  %71 = bitcast i8* %70 to i32*
  %arrayidx80 = getelementptr inbounds i32, i32* %71, i64 1
  store i32 %67, i32* %arrayidx80, align 4, !tbaa !5
  %72 = load i8*, i8** %dest, align 8, !tbaa !1
  %73 = bitcast i8* %72 to i32*
  %arrayidx81 = getelementptr inbounds i32, i32* %73, i64 2
  store i32 %67, i32* %arrayidx81, align 4, !tbaa !5
  %74 = load i8*, i8** %dest, align 8, !tbaa !1
  %75 = bitcast i8* %74 to i32*
  %arrayidx82 = getelementptr inbounds i32, i32* %75, i64 3
  store i32 %67, i32* %arrayidx82, align 4, !tbaa !5
  %76 = load i8*, i8** %dest, align 8, !tbaa !1
  %77 = load i32, i32* %draster, align 4, !tbaa !5
  %idx.ext83 = zext i32 %77 to i64
  %add.ptr84 = getelementptr inbounds i8, i8* %76, i64 %idx.ext83
  store i8* %add.ptr84, i8** %dest, align 8, !tbaa !1
  br label %do.cond.85

do.cond.85:                                       ; preds = %do.body.78
  %78 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec86 = add nsw i32 %78, -1
  store i32 %dec86, i32* %h.addr, align 4, !tbaa !5
  %cmp87 = icmp sgt i32 %dec86, 0
  br i1 %cmp87, label %do.body.78, label %do.end.89

do.end.89:                                        ; preds = %do.cond.85
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.45
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %do.end.89, %do.end.76, %do.end.64, %do.end.53
  br label %if.end.130

if.else:                                          ; preds = %do.end.34
  %79 = load i32, i32* %a_color, align 4, !tbaa !5
  %cmp90 = icmp eq i32 %79, 0
  br i1 %cmp90, label %if.then.92, label %if.else.103

if.then.92:                                       ; preds = %if.else
  br label %do.body.93

do.body.93:                                       ; preds = %do.cond.98, %if.then.92
  %80 = load i8*, i8** %dest, align 8, !tbaa !1
  %81 = load i32, i32* %w.addr, align 4, !tbaa !5
  %shl94 = shl i32 %81, 2
  %conv95 = sext i32 %shl94 to i64
  %call = call i8* @memset(i8* %80, i32 0, i64 %conv95) #4
  %82 = load i8*, i8** %dest, align 8, !tbaa !1
  %83 = load i32, i32* %draster, align 4, !tbaa !5
  %idx.ext96 = zext i32 %83 to i64
  %add.ptr97 = getelementptr inbounds i8, i8* %82, i64 %idx.ext96
  store i8* %add.ptr97, i8** %dest, align 8, !tbaa !1
  br label %do.cond.98

do.cond.98:                                       ; preds = %do.body.93
  %84 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec99 = add nsw i32 %84, -1
  store i32 %dec99, i32* %h.addr, align 4, !tbaa !5
  %cmp100 = icmp sgt i32 %dec99, 0
  br i1 %cmp100, label %do.body.93, label %do.end.102

do.end.102:                                       ; preds = %do.cond.98
  br label %if.end.129

if.else.103:                                      ; preds = %if.else
  br label %do.body.104

do.body.104:                                      ; preds = %do.cond.124, %if.else.103
  %85 = bitcast i32** %pptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %85) #2
  %86 = load i8*, i8** %dest, align 8, !tbaa !1
  %87 = bitcast i8* %86 to i32*
  store i32* %87, i32** %pptr, align 8, !tbaa !1
  %88 = bitcast i32* %cnt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %88) #2
  %89 = load i32, i32* %w.addr, align 4, !tbaa !5
  store i32 %89, i32* %cnt, align 4, !tbaa !5
  br label %do.body.105

do.body.105:                                      ; preds = %do.cond.111, %do.body.104
  %90 = load i32, i32* %a_color, align 4, !tbaa !5
  %91 = load i32*, i32** %pptr, align 8, !tbaa !1
  %arrayidx106 = getelementptr inbounds i32, i32* %91, i64 0
  store i32 %90, i32* %arrayidx106, align 4, !tbaa !5
  %92 = load i32*, i32** %pptr, align 8, !tbaa !1
  %arrayidx107 = getelementptr inbounds i32, i32* %92, i64 1
  store i32 %90, i32* %arrayidx107, align 4, !tbaa !5
  %93 = load i32*, i32** %pptr, align 8, !tbaa !1
  %arrayidx108 = getelementptr inbounds i32, i32* %93, i64 2
  store i32 %90, i32* %arrayidx108, align 4, !tbaa !5
  %94 = load i32*, i32** %pptr, align 8, !tbaa !1
  %arrayidx109 = getelementptr inbounds i32, i32* %94, i64 3
  store i32 %90, i32* %arrayidx109, align 4, !tbaa !5
  %95 = load i32*, i32** %pptr, align 8, !tbaa !1
  %add.ptr110 = getelementptr inbounds i32, i32* %95, i64 4
  store i32* %add.ptr110, i32** %pptr, align 8, !tbaa !1
  br label %do.cond.111

do.cond.111:                                      ; preds = %do.body.105
  %96 = load i32, i32* %cnt, align 4, !tbaa !5
  %sub112 = sub nsw i32 %96, 4
  store i32 %sub112, i32* %cnt, align 4, !tbaa !5
  %cmp113 = icmp sgt i32 %sub112, 4
  br i1 %cmp113, label %do.body.105, label %do.end.115

do.end.115:                                       ; preds = %do.cond.111
  br label %do.body.116

do.body.116:                                      ; preds = %do.cond.117, %do.end.115
  %97 = load i32, i32* %a_color, align 4, !tbaa !5
  %98 = load i32*, i32** %pptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i32, i32* %98, i32 1
  store i32* %incdec.ptr, i32** %pptr, align 8, !tbaa !1
  store i32 %97, i32* %98, align 4, !tbaa !5
  br label %do.cond.117

do.cond.117:                                      ; preds = %do.body.116
  %99 = load i32, i32* %cnt, align 4, !tbaa !5
  %dec118 = add nsw i32 %99, -1
  store i32 %dec118, i32* %cnt, align 4, !tbaa !5
  %cmp119 = icmp sgt i32 %dec118, 0
  br i1 %cmp119, label %do.body.116, label %do.end.121

do.end.121:                                       ; preds = %do.cond.117
  %100 = load i8*, i8** %dest, align 8, !tbaa !1
  %101 = load i32, i32* %draster, align 4, !tbaa !5
  %idx.ext122 = zext i32 %101 to i64
  %add.ptr123 = getelementptr inbounds i8, i8* %100, i64 %idx.ext122
  store i8* %add.ptr123, i8** %dest, align 8, !tbaa !1
  %102 = bitcast i32* %cnt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #2
  %103 = bitcast i32** %pptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #2
  br label %do.cond.124

do.cond.124:                                      ; preds = %do.end.121
  %104 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec125 = add nsw i32 %104, -1
  store i32 %dec125, i32* %h.addr, align 4, !tbaa !5
  %cmp126 = icmp sgt i32 %dec125, 0
  br i1 %cmp126, label %do.body.104, label %do.end.128

do.end.128:                                       ; preds = %do.cond.124
  br label %if.end.129

if.end.129:                                       ; preds = %do.end.128, %do.end.102
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.129, %sw.epilog
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.130, %if.then.31
  %105 = bitcast i32* %draster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #2
  %106 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #2
  %107 = bitcast i32* %a_color to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #2
  %108 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %108) #2
  %109 = load i32, i32* %retval
  ret i32 %109
}

declare i32 @gx_default_tile_rectangle(%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @mem_true32_copy_mono(%struct.gx_device_s* %dev, i8* %base, i32 %sourcex, i32 %sraster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, i64 %zero, i64 %one) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %base.addr = alloca i8*, align 8
  %sourcex.addr = alloca i32, align 4
  %sraster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %zero.addr = alloca i64, align 8
  %one.addr = alloca i64, align 8
  %mdev = alloca %struct.gx_device_memory_s*, align 8
  %a_zero = alloca i32, align 4
  %a_one = alloca i32, align 4
  %line = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %draster = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %first_bit = alloca i32, align 4
  %w_first = alloca i32, align 4
  %w_rest = alloca i32, align 4
  %pptr = alloca i32*, align 8
  %sptr = alloca i8*, align 8
  %sbyte = alloca i32, align 4
  %count = alloca i32, align 4
  %first_bit164 = alloca i32, align 4
  %pptr172 = alloca i32*, align 8
  %sptr173 = alloca i8*, align 8
  %sbyte174 = alloca i32, align 4
  %bit = alloca i32, align 4
  %count177 = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %base, i8** %base.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 %sraster, i32* %sraster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !7
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store i64 %zero, i64* %zero.addr, align 8, !tbaa !7
  store i64 %one, i64* %one.addr, align 8, !tbaa !7
  %0 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %2, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %3 = bitcast i32* %a_zero to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load i64, i64* %zero.addr, align 8, !tbaa !7
  %shr = lshr i64 %4, 24
  %and = and i64 %shr, 255
  %5 = load i64, i64* %zero.addr, align 8, !tbaa !7
  %shr1 = lshr i64 %5, 8
  %and2 = and i64 %shr1, 65280
  %add = add i64 %and, %and2
  %6 = load i64, i64* %zero.addr, align 8, !tbaa !7
  %and3 = and i64 %6, 65280
  %shl = shl i64 %and3, 8
  %add4 = add i64 %add, %shl
  %7 = load i64, i64* %zero.addr, align 8, !tbaa !7
  %shl5 = shl i64 %7, 24
  %add6 = add i64 %add4, %shl5
  %conv = trunc i64 %add6 to i32
  store i32 %conv, i32* %a_zero, align 4, !tbaa !5
  %8 = bitcast i32* %a_one to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load i64, i64* %one.addr, align 8, !tbaa !7
  %shr7 = lshr i64 %9, 24
  %and8 = and i64 %shr7, 255
  %10 = load i64, i64* %one.addr, align 8, !tbaa !7
  %shr9 = lshr i64 %10, 8
  %and10 = and i64 %shr9, 65280
  %add11 = add i64 %and8, %and10
  %11 = load i64, i64* %one.addr, align 8, !tbaa !7
  %and12 = and i64 %11, 65280
  %shl13 = shl i64 %and12, 8
  %add14 = add i64 %add11, %shl13
  %12 = load i64, i64* %one.addr, align 8, !tbaa !7
  %shl15 = shl i64 %12, 24
  %add16 = add i64 %add14, %shl15
  %conv17 = trunc i64 %add16 to i32
  store i32 %conv17, i32* %a_one, align 4, !tbaa !5
  %13 = bitcast i8** %line to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #2
  %14 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #2
  %15 = bitcast i32* %draster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.18

do.body.18:                                       ; preds = %do.body
  %16 = load i32, i32* %x.addr, align 4, !tbaa !5
  %17 = load i32, i32* %y.addr, align 4, !tbaa !5
  %or = or i32 %16, %17
  %cmp = icmp slt i32 %or, 0
  br i1 %cmp, label %if.then, label %if.end.29

if.then:                                          ; preds = %do.body.18
  %18 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %18, 0
  br i1 %cmp20, label %if.then.22, label %if.end

if.then.22:                                       ; preds = %if.then
  %19 = load i32, i32* %x.addr, align 4, !tbaa !5
  %20 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add23 = add nsw i32 %20, %19
  store i32 %add23, i32* %w.addr, align 4, !tbaa !5
  %21 = load i32, i32* %x.addr, align 4, !tbaa !5
  %22 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %22, %21
  store i32 %sub, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 0, i32* %x.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.22, %if.then
  %23 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp24 = icmp slt i32 %23, 0
  br i1 %cmp24, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.end
  %24 = load i32, i32* %y.addr, align 4, !tbaa !5
  %25 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add27 = add nsw i32 %25, %24
  store i32 %add27, i32* %h.addr, align 4, !tbaa !5
  %26 = load i32, i32* %y.addr, align 4, !tbaa !5
  %27 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %26, %27
  %28 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %mul to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %28, i64 %idx.neg
  store i8* %add.ptr, i8** %base.addr, align 8, !tbaa !1
  store i64 0, i64* %id.addr, align 8, !tbaa !7
  store i32 0, i32* %y.addr, align 4, !tbaa !5
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.end
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %do.body.18
  %29 = load i32, i32* %w.addr, align 4, !tbaa !5
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %30, i32 0, i32 13
  %31 = load i32, i32* %width, align 4, !tbaa !9
  %32 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub30 = sub nsw i32 %31, %32
  %cmp31 = icmp sgt i32 %29, %sub30
  br i1 %cmp31, label %if.then.33, label %if.end.36

if.then.33:                                       ; preds = %if.end.29
  %33 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width34 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %33, i32 0, i32 13
  %34 = load i32, i32* %width34, align 4, !tbaa !9
  %35 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub35 = sub nsw i32 %34, %35
  store i32 %sub35, i32* %w.addr, align 4, !tbaa !5
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.33, %if.end.29
  br label %do.cond

do.cond:                                          ; preds = %if.end.36
  br label %do.end

do.end:                                           ; preds = %do.cond
  %36 = load i32, i32* %h.addr, align 4, !tbaa !5
  %37 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %37, i32 0, i32 14
  %38 = load i32, i32* %height, align 4, !tbaa !21
  %39 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub37 = sub nsw i32 %38, %39
  %cmp38 = icmp sgt i32 %36, %sub37
  br i1 %cmp38, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %do.end
  %40 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height41 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %40, i32 0, i32 14
  %41 = load i32, i32* %height41, align 4, !tbaa !21
  %42 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub42 = sub nsw i32 %41, %42
  store i32 %sub42, i32* %h.addr, align 4, !tbaa !5
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.40, %do.end
  %43 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp44 = icmp sle i32 %43, 0
  br i1 %cmp44, label %if.then.48, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.43
  %44 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp46 = icmp sle i32 %44, 0
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %lor.lhs.false, %if.end.43
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.207

if.end.49:                                        ; preds = %lor.lhs.false
  br label %do.cond.50

do.cond.50:                                       ; preds = %if.end.49
  br label %do.end.51

do.end.51:                                        ; preds = %do.cond.50
  %45 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %45, i32 0, i32 44
  %46 = load i32, i32* %raster, align 4, !tbaa !22
  store i32 %46, i32* %draster, align 4, !tbaa !5
  %47 = load i32, i32* %y.addr, align 4, !tbaa !5
  %idxprom = sext i32 %47 to i64
  %48 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %48, i32 0, i32 52
  %49 = load i8**, i8*** %line_ptrs, align 8, !tbaa !33
  %arrayidx = getelementptr inbounds i8*, i8** %49, i64 %idxprom
  %50 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %51 = load i32, i32* %x.addr, align 4, !tbaa !5
  %shl52 = shl i32 %51, 2
  %idx.ext53 = sext i32 %shl52 to i64
  %add.ptr54 = getelementptr inbounds i8, i8* %50, i64 %idx.ext53
  store i8* %add.ptr54, i8** %dest, align 8, !tbaa !1
  %52 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %53 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %shr55 = ashr i32 %53, 3
  %idx.ext56 = sext i32 %shr55 to i64
  %add.ptr57 = getelementptr inbounds i8, i8* %52, i64 %idx.ext56
  store i8* %add.ptr57, i8** %line, align 8, !tbaa !1
  %54 = load i64, i64* %zero.addr, align 8, !tbaa !7
  %cmp58 = icmp eq i64 %54, -1
  br i1 %cmp58, label %if.then.60, label %if.else.163

if.then.60:                                       ; preds = %do.end.51
  %55 = bitcast i32* %first_bit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #2
  %56 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %and61 = and i32 %56, 7
  store i32 %and61, i32* %first_bit, align 4, !tbaa !5
  %57 = bitcast i32* %w_first to i8*
  call void @llvm.lifetime.start(i64 4, i8* %57) #2
  %58 = load i32, i32* %w.addr, align 4, !tbaa !5
  %59 = load i32, i32* %first_bit, align 4, !tbaa !5
  %sub62 = sub nsw i32 8, %59
  %cmp63 = icmp slt i32 %58, %sub62
  br i1 %cmp63, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.60
  %60 = load i32, i32* %w.addr, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %if.then.60
  %61 = load i32, i32* %first_bit, align 4, !tbaa !5
  %sub65 = sub nsw i32 8, %61
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %60, %cond.true ], [ %sub65, %cond.false ]
  store i32 %cond, i32* %w_first, align 4, !tbaa !5
  %62 = bitcast i32* %w_rest to i8*
  call void @llvm.lifetime.start(i64 4, i8* %62) #2
  %63 = load i32, i32* %w.addr, align 4, !tbaa !5
  %64 = load i32, i32* %w_first, align 4, !tbaa !5
  %sub66 = sub nsw i32 %63, %64
  store i32 %sub66, i32* %w_rest, align 4, !tbaa !5
  %65 = load i64, i64* %one.addr, align 8, !tbaa !7
  %cmp67 = icmp eq i64 %65, -1
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %cond.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.70:                                        ; preds = %cond.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.156, %if.end.70
  %66 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec = add nsw i32 %66, -1
  store i32 %dec, i32* %h.addr, align 4, !tbaa !5
  %cmp71 = icmp sgt i32 %66, 0
  br i1 %cmp71, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %67 = bitcast i32** %pptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %67) #2
  %68 = load i8*, i8** %dest, align 8, !tbaa !1
  %69 = bitcast i8* %68 to i32*
  store i32* %69, i32** %pptr, align 8, !tbaa !1
  %70 = bitcast i8** %sptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %70) #2
  %71 = load i8*, i8** %line, align 8, !tbaa !1
  store i8* %71, i8** %sptr, align 8, !tbaa !1
  %72 = bitcast i32* %sbyte to i8*
  call void @llvm.lifetime.start(i64 4, i8* %72) #2
  %73 = load i8*, i8** %sptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %incdec.ptr, i8** %sptr, align 8, !tbaa !1
  %74 = load i8, i8* %73, align 1, !tbaa !34
  %conv73 = zext i8 %74 to i32
  %75 = load i32, i32* %first_bit, align 4, !tbaa !5
  %shl74 = shl i32 %conv73, %75
  %and75 = and i32 %shl74, 255
  store i32 %and75, i32* %sbyte, align 4, !tbaa !5
  %76 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %76) #2
  %77 = load i32, i32* %w_first, align 4, !tbaa !5
  store i32 %77, i32* %count, align 4, !tbaa !5
  %78 = load i32, i32* %sbyte, align 4, !tbaa !5
  %tobool = icmp ne i32 %78, 0
  br i1 %tobool, label %if.then.76, label %if.else

if.then.76:                                       ; preds = %while.body
  br label %do.body.77

do.body.77:                                       ; preds = %do.cond.84, %if.then.76
  %79 = load i32, i32* %sbyte, align 4, !tbaa !5
  %and78 = and i32 %79, 128
  %tobool79 = icmp ne i32 %and78, 0
  br i1 %tobool79, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %do.body.77
  %80 = load i32, i32* %a_one, align 4, !tbaa !5
  %81 = load i32*, i32** %pptr, align 8, !tbaa !1
  store i32 %80, i32* %81, align 4, !tbaa !5
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.80, %do.body.77
  %82 = load i32, i32* %sbyte, align 4, !tbaa !5
  %shl82 = shl i32 %82, 1
  store i32 %shl82, i32* %sbyte, align 4, !tbaa !5
  %83 = load i32*, i32** %pptr, align 8, !tbaa !1
  %incdec.ptr83 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %incdec.ptr83, i32** %pptr, align 8, !tbaa !1
  br label %do.cond.84

do.cond.84:                                       ; preds = %if.end.81
  %84 = load i32, i32* %count, align 4, !tbaa !5
  %dec85 = add nsw i32 %84, -1
  store i32 %dec85, i32* %count, align 4, !tbaa !5
  %cmp86 = icmp sgt i32 %dec85, 0
  br i1 %cmp86, label %do.body.77, label %do.end.88

do.end.88:                                        ; preds = %do.cond.84
  br label %if.end.91

if.else:                                          ; preds = %while.body
  %85 = load i32, i32* %count, align 4, !tbaa !5
  %86 = load i32*, i32** %pptr, align 8, !tbaa !1
  %idx.ext89 = sext i32 %85 to i64
  %add.ptr90 = getelementptr inbounds i32, i32* %86, i64 %idx.ext89
  store i32* %add.ptr90, i32** %pptr, align 8, !tbaa !1
  br label %if.end.91

if.end.91:                                        ; preds = %if.else, %do.end.88
  %87 = load i32, i32* %w_rest, align 4, !tbaa !5
  store i32 %87, i32* %count, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.91
  %88 = load i32, i32* %count, align 4, !tbaa !5
  %cmp92 = icmp sge i32 %88, 8
  br i1 %cmp92, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %89 = load i8*, i8** %sptr, align 8, !tbaa !1
  %incdec.ptr94 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %incdec.ptr94, i8** %sptr, align 8, !tbaa !1
  %90 = load i8, i8* %89, align 1, !tbaa !34
  %conv95 = zext i8 %90 to i32
  store i32 %conv95, i32* %sbyte, align 4, !tbaa !5
  %91 = load i32, i32* %sbyte, align 4, !tbaa !5
  %tobool96 = icmp ne i32 %91, 0
  br i1 %tobool96, label %if.then.97, label %if.end.138

if.then.97:                                       ; preds = %for.body
  %92 = load i32, i32* %sbyte, align 4, !tbaa !5
  %and98 = and i32 %92, 128
  %tobool99 = icmp ne i32 %and98, 0
  br i1 %tobool99, label %if.then.100, label %if.end.102

if.then.100:                                      ; preds = %if.then.97
  %93 = load i32, i32* %a_one, align 4, !tbaa !5
  %94 = load i32*, i32** %pptr, align 8, !tbaa !1
  %arrayidx101 = getelementptr inbounds i32, i32* %94, i64 0
  store i32 %93, i32* %arrayidx101, align 4, !tbaa !5
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.100, %if.then.97
  %95 = load i32, i32* %sbyte, align 4, !tbaa !5
  %and103 = and i32 %95, 64
  %tobool104 = icmp ne i32 %and103, 0
  br i1 %tobool104, label %if.then.105, label %if.end.107

if.then.105:                                      ; preds = %if.end.102
  %96 = load i32, i32* %a_one, align 4, !tbaa !5
  %97 = load i32*, i32** %pptr, align 8, !tbaa !1
  %arrayidx106 = getelementptr inbounds i32, i32* %97, i64 1
  store i32 %96, i32* %arrayidx106, align 4, !tbaa !5
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.105, %if.end.102
  %98 = load i32, i32* %sbyte, align 4, !tbaa !5
  %and108 = and i32 %98, 32
  %tobool109 = icmp ne i32 %and108, 0
  br i1 %tobool109, label %if.then.110, label %if.end.112

if.then.110:                                      ; preds = %if.end.107
  %99 = load i32, i32* %a_one, align 4, !tbaa !5
  %100 = load i32*, i32** %pptr, align 8, !tbaa !1
  %arrayidx111 = getelementptr inbounds i32, i32* %100, i64 2
  store i32 %99, i32* %arrayidx111, align 4, !tbaa !5
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.110, %if.end.107
  %101 = load i32, i32* %sbyte, align 4, !tbaa !5
  %and113 = and i32 %101, 16
  %tobool114 = icmp ne i32 %and113, 0
  br i1 %tobool114, label %if.then.115, label %if.end.117

if.then.115:                                      ; preds = %if.end.112
  %102 = load i32, i32* %a_one, align 4, !tbaa !5
  %103 = load i32*, i32** %pptr, align 8, !tbaa !1
  %arrayidx116 = getelementptr inbounds i32, i32* %103, i64 3
  store i32 %102, i32* %arrayidx116, align 4, !tbaa !5
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.115, %if.end.112
  %104 = load i32, i32* %sbyte, align 4, !tbaa !5
  %and118 = and i32 %104, 8
  %tobool119 = icmp ne i32 %and118, 0
  br i1 %tobool119, label %if.then.120, label %if.end.122

if.then.120:                                      ; preds = %if.end.117
  %105 = load i32, i32* %a_one, align 4, !tbaa !5
  %106 = load i32*, i32** %pptr, align 8, !tbaa !1
  %arrayidx121 = getelementptr inbounds i32, i32* %106, i64 4
  store i32 %105, i32* %arrayidx121, align 4, !tbaa !5
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.120, %if.end.117
  %107 = load i32, i32* %sbyte, align 4, !tbaa !5
  %and123 = and i32 %107, 4
  %tobool124 = icmp ne i32 %and123, 0
  br i1 %tobool124, label %if.then.125, label %if.end.127

if.then.125:                                      ; preds = %if.end.122
  %108 = load i32, i32* %a_one, align 4, !tbaa !5
  %109 = load i32*, i32** %pptr, align 8, !tbaa !1
  %arrayidx126 = getelementptr inbounds i32, i32* %109, i64 5
  store i32 %108, i32* %arrayidx126, align 4, !tbaa !5
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.125, %if.end.122
  %110 = load i32, i32* %sbyte, align 4, !tbaa !5
  %and128 = and i32 %110, 2
  %tobool129 = icmp ne i32 %and128, 0
  br i1 %tobool129, label %if.then.130, label %if.end.132

if.then.130:                                      ; preds = %if.end.127
  %111 = load i32, i32* %a_one, align 4, !tbaa !5
  %112 = load i32*, i32** %pptr, align 8, !tbaa !1
  %arrayidx131 = getelementptr inbounds i32, i32* %112, i64 6
  store i32 %111, i32* %arrayidx131, align 4, !tbaa !5
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.130, %if.end.127
  %113 = load i32, i32* %sbyte, align 4, !tbaa !5
  %and133 = and i32 %113, 1
  %tobool134 = icmp ne i32 %and133, 0
  br i1 %tobool134, label %if.then.135, label %if.end.137

if.then.135:                                      ; preds = %if.end.132
  %114 = load i32, i32* %a_one, align 4, !tbaa !5
  %115 = load i32*, i32** %pptr, align 8, !tbaa !1
  %arrayidx136 = getelementptr inbounds i32, i32* %115, i64 7
  store i32 %114, i32* %arrayidx136, align 4, !tbaa !5
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.135, %if.end.132
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.138
  %116 = load i32, i32* %count, align 4, !tbaa !5
  %sub139 = sub nsw i32 %116, 8
  store i32 %sub139, i32* %count, align 4, !tbaa !5
  %117 = load i32*, i32** %pptr, align 8, !tbaa !1
  %add.ptr140 = getelementptr inbounds i32, i32* %117, i64 8
  store i32* %add.ptr140, i32** %pptr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %118 = load i32, i32* %count, align 4, !tbaa !5
  %tobool141 = icmp ne i32 %118, 0
  br i1 %tobool141, label %if.then.142, label %if.end.156

if.then.142:                                      ; preds = %for.end
  %119 = load i8*, i8** %sptr, align 8, !tbaa !1
  %120 = load i8, i8* %119, align 1, !tbaa !34
  %conv143 = zext i8 %120 to i32
  store i32 %conv143, i32* %sbyte, align 4, !tbaa !5
  br label %do.body.144

do.body.144:                                      ; preds = %do.cond.151, %if.then.142
  %121 = load i32, i32* %sbyte, align 4, !tbaa !5
  %and145 = and i32 %121, 128
  %tobool146 = icmp ne i32 %and145, 0
  br i1 %tobool146, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %do.body.144
  %122 = load i32, i32* %a_one, align 4, !tbaa !5
  %123 = load i32*, i32** %pptr, align 8, !tbaa !1
  store i32 %122, i32* %123, align 4, !tbaa !5
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.147, %do.body.144
  %124 = load i32, i32* %sbyte, align 4, !tbaa !5
  %shl149 = shl i32 %124, 1
  store i32 %shl149, i32* %sbyte, align 4, !tbaa !5
  %125 = load i32*, i32** %pptr, align 8, !tbaa !1
  %incdec.ptr150 = getelementptr inbounds i32, i32* %125, i32 1
  store i32* %incdec.ptr150, i32** %pptr, align 8, !tbaa !1
  br label %do.cond.151

do.cond.151:                                      ; preds = %if.end.148
  %126 = load i32, i32* %count, align 4, !tbaa !5
  %dec152 = add nsw i32 %126, -1
  store i32 %dec152, i32* %count, align 4, !tbaa !5
  %cmp153 = icmp sgt i32 %dec152, 0
  br i1 %cmp153, label %do.body.144, label %do.end.155

do.end.155:                                       ; preds = %do.cond.151
  br label %if.end.156

if.end.156:                                       ; preds = %do.end.155, %for.end
  %127 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %128 = load i8*, i8** %line, align 8, !tbaa !1
  %idx.ext157 = sext i32 %127 to i64
  %add.ptr158 = getelementptr inbounds i8, i8* %128, i64 %idx.ext157
  store i8* %add.ptr158, i8** %line, align 8, !tbaa !1
  %129 = load i8*, i8** %dest, align 8, !tbaa !1
  %130 = load i32, i32* %draster, align 4, !tbaa !5
  %idx.ext159 = zext i32 %130 to i64
  %add.ptr160 = getelementptr inbounds i8, i8* %129, i64 %idx.ext159
  store i8* %add.ptr160, i8** %dest, align 8, !tbaa !1
  %131 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %131) #2
  %132 = bitcast i32* %sbyte to i8*
  call void @llvm.lifetime.end(i64 4, i8* %132) #2
  %133 = bitcast i8** %sptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %133) #2
  %134 = bitcast i32** %pptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %134) #2
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then.69
  %135 = bitcast i32* %w_rest to i8*
  call void @llvm.lifetime.end(i64 4, i8* %135) #2
  %136 = bitcast i32* %w_first to i8*
  call void @llvm.lifetime.end(i64 4, i8* %136) #2
  %137 = bitcast i32* %first_bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.207 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.206

if.else.163:                                      ; preds = %do.end.51
  %138 = bitcast i32* %first_bit164 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %138) #2
  %139 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %and165 = and i32 %139, 7
  %shr166 = ashr i32 128, %and165
  store i32 %shr166, i32* %first_bit164, align 4, !tbaa !5
  br label %while.cond.167

while.cond.167:                                   ; preds = %do.end.200, %if.else.163
  %140 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec168 = add nsw i32 %140, -1
  store i32 %dec168, i32* %h.addr, align 4, !tbaa !5
  %cmp169 = icmp sgt i32 %140, 0
  br i1 %cmp169, label %while.body.171, label %while.end.205

while.body.171:                                   ; preds = %while.cond.167
  %141 = bitcast i32** %pptr172 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %141) #2
  %142 = load i8*, i8** %dest, align 8, !tbaa !1
  %143 = bitcast i8* %142 to i32*
  store i32* %143, i32** %pptr172, align 8, !tbaa !1
  %144 = bitcast i8** %sptr173 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %144) #2
  %145 = load i8*, i8** %line, align 8, !tbaa !1
  store i8* %145, i8** %sptr173, align 8, !tbaa !1
  %146 = bitcast i32* %sbyte174 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %146) #2
  %147 = load i8*, i8** %sptr173, align 8, !tbaa !1
  %incdec.ptr175 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %incdec.ptr175, i8** %sptr173, align 8, !tbaa !1
  %148 = load i8, i8* %147, align 1, !tbaa !34
  %conv176 = zext i8 %148 to i32
  store i32 %conv176, i32* %sbyte174, align 4, !tbaa !5
  %149 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %149) #2
  %150 = load i32, i32* %first_bit164, align 4, !tbaa !5
  store i32 %150, i32* %bit, align 4, !tbaa !5
  %151 = bitcast i32* %count177 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %151) #2
  %152 = load i32, i32* %w.addr, align 4, !tbaa !5
  store i32 %152, i32* %count177, align 4, !tbaa !5
  br label %do.body.178

do.body.178:                                      ; preds = %do.cond.196, %while.body.171
  %153 = load i32, i32* %sbyte174, align 4, !tbaa !5
  %154 = load i32, i32* %bit, align 4, !tbaa !5
  %and179 = and i32 %153, %154
  %tobool180 = icmp ne i32 %and179, 0
  br i1 %tobool180, label %if.then.181, label %if.else.186

if.then.181:                                      ; preds = %do.body.178
  %155 = load i64, i64* %one.addr, align 8, !tbaa !7
  %cmp182 = icmp ne i64 %155, -1
  br i1 %cmp182, label %if.then.184, label %if.end.185

if.then.184:                                      ; preds = %if.then.181
  %156 = load i32, i32* %a_one, align 4, !tbaa !5
  %157 = load i32*, i32** %pptr172, align 8, !tbaa !1
  store i32 %156, i32* %157, align 4, !tbaa !5
  br label %if.end.185

if.end.185:                                       ; preds = %if.then.184, %if.then.181
  br label %if.end.187

if.else.186:                                      ; preds = %do.body.178
  %158 = load i32, i32* %a_zero, align 4, !tbaa !5
  %159 = load i32*, i32** %pptr172, align 8, !tbaa !1
  store i32 %158, i32* %159, align 4, !tbaa !5
  br label %if.end.187

if.end.187:                                       ; preds = %if.else.186, %if.end.185
  %160 = load i32, i32* %bit, align 4, !tbaa !5
  %shr188 = ashr i32 %160, 1
  store i32 %shr188, i32* %bit, align 4, !tbaa !5
  %cmp189 = icmp eq i32 %shr188, 0
  br i1 %cmp189, label %if.then.191, label %if.end.194

if.then.191:                                      ; preds = %if.end.187
  store i32 128, i32* %bit, align 4, !tbaa !5
  %161 = load i8*, i8** %sptr173, align 8, !tbaa !1
  %incdec.ptr192 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %incdec.ptr192, i8** %sptr173, align 8, !tbaa !1
  %162 = load i8, i8* %161, align 1, !tbaa !34
  %conv193 = zext i8 %162 to i32
  store i32 %conv193, i32* %sbyte174, align 4, !tbaa !5
  br label %if.end.194

if.end.194:                                       ; preds = %if.then.191, %if.end.187
  %163 = load i32*, i32** %pptr172, align 8, !tbaa !1
  %incdec.ptr195 = getelementptr inbounds i32, i32* %163, i32 1
  store i32* %incdec.ptr195, i32** %pptr172, align 8, !tbaa !1
  br label %do.cond.196

do.cond.196:                                      ; preds = %if.end.194
  %164 = load i32, i32* %count177, align 4, !tbaa !5
  %dec197 = add nsw i32 %164, -1
  store i32 %dec197, i32* %count177, align 4, !tbaa !5
  %cmp198 = icmp sgt i32 %dec197, 0
  br i1 %cmp198, label %do.body.178, label %do.end.200

do.end.200:                                       ; preds = %do.cond.196
  %165 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %166 = load i8*, i8** %line, align 8, !tbaa !1
  %idx.ext201 = sext i32 %165 to i64
  %add.ptr202 = getelementptr inbounds i8, i8* %166, i64 %idx.ext201
  store i8* %add.ptr202, i8** %line, align 8, !tbaa !1
  %167 = load i8*, i8** %dest, align 8, !tbaa !1
  %168 = load i32, i32* %draster, align 4, !tbaa !5
  %idx.ext203 = zext i32 %168 to i64
  %add.ptr204 = getelementptr inbounds i8, i8* %167, i64 %idx.ext203
  store i8* %add.ptr204, i8** %dest, align 8, !tbaa !1
  %169 = bitcast i32* %count177 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %169) #2
  %170 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %170) #2
  %171 = bitcast i32* %sbyte174 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %171) #2
  %172 = bitcast i8** %sptr173 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %172) #2
  %173 = bitcast i32** %pptr172 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %173) #2
  br label %while.cond.167

while.end.205:                                    ; preds = %while.cond.167
  %174 = bitcast i32* %first_bit164 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %174) #2
  br label %if.end.206

if.end.206:                                       ; preds = %while.end.205, %cleanup.cont
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.207

cleanup.207:                                      ; preds = %if.end.206, %cleanup, %if.then.48
  %175 = bitcast i32* %draster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %175) #2
  %176 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %176) #2
  %177 = bitcast i8** %line to i8*
  call void @llvm.lifetime.end(i64 8, i8* %177) #2
  %178 = bitcast i32* %a_one to i8*
  call void @llvm.lifetime.end(i64 4, i8* %178) #2
  %179 = bitcast i32* %a_zero to i8*
  call void @llvm.lifetime.end(i64 4, i8* %179) #2
  %180 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %180) #2
  %181 = load i32, i32* %retval
  ret i32 %181
}

; Function Attrs: nounwind uwtable
define internal i32 @mem_true32_copy_color(%struct.gx_device_s* %dev, i8* %base, i32 %sourcex, i32 %sraster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %base.addr = alloca i8*, align 8
  %sourcex.addr = alloca i32, align 4
  %sraster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %mdev = alloca %struct.gx_device_memory_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %base, i8** %base.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 %sraster, i32* %sraster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !7
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %2, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %3 = load i32, i32* %x.addr, align 4, !tbaa !5
  %4 = load i32, i32* %y.addr, align 4, !tbaa !5
  %or = or i32 %3, %4
  %cmp = icmp slt i32 %or, 0
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %do.body.1
  %5 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %5, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %6 = load i32, i32* %x.addr, align 4, !tbaa !5
  %7 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add = add nsw i32 %7, %6
  store i32 %add, i32* %w.addr, align 4, !tbaa !5
  %8 = load i32, i32* %x.addr, align 4, !tbaa !5
  %9 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %9, %8
  store i32 %sub, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 0, i32* %x.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %10 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %10, 0
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %11 = load i32, i32* %y.addr, align 4, !tbaa !5
  %12 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add6 = add nsw i32 %12, %11
  store i32 %add6, i32* %h.addr, align 4, !tbaa !5
  %13 = load i32, i32* %y.addr, align 4, !tbaa !5
  %14 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %13, %14
  %15 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %mul to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 %idx.neg
  store i8* %add.ptr, i8** %base.addr, align 8, !tbaa !1
  store i64 0, i64* %id.addr, align 8, !tbaa !7
  store i32 0, i32* %y.addr, align 4, !tbaa !5
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %do.body.1
  %16 = load i32, i32* %w.addr, align 4, !tbaa !5
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 13
  %18 = load i32, i32* %width, align 4, !tbaa !9
  %19 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub9 = sub nsw i32 %18, %19
  %cmp10 = icmp sgt i32 %16, %sub9
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.8
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width12 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 13
  %21 = load i32, i32* %width12, align 4, !tbaa !9
  %22 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub13 = sub nsw i32 %21, %22
  store i32 %sub13, i32* %w.addr, align 4, !tbaa !5
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.end.8
  br label %do.cond

do.cond:                                          ; preds = %if.end.14
  br label %do.end

do.end:                                           ; preds = %do.cond
  %23 = load i32, i32* %h.addr, align 4, !tbaa !5
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %24, i32 0, i32 14
  %25 = load i32, i32* %height, align 4, !tbaa !21
  %26 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub15 = sub nsw i32 %25, %26
  %cmp16 = icmp sgt i32 %23, %sub15
  br i1 %cmp16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %do.end
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %27, i32 0, i32 14
  %28 = load i32, i32* %height18, align 4, !tbaa !21
  %29 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub19 = sub nsw i32 %28, %29
  store i32 %sub19, i32* %h.addr, align 4, !tbaa !5
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %do.end
  %30 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp21 = icmp sle i32 %30, 0
  br i1 %cmp21, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.20
  %31 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp22 = icmp sle i32 %31, 0
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
  %32 = load i32, i32* %y.addr, align 4, !tbaa !5
  %idxprom = sext i32 %32 to i64
  %33 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %33, i32 0, i32 52
  %34 = load i8**, i8*** %line_ptrs, align 8, !tbaa !33
  %arrayidx = getelementptr inbounds i8*, i8** %34, i64 %idxprom
  %35 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %36 = load i32, i32* %x.addr, align 4, !tbaa !5
  %shl = shl i32 %36, 2
  %idx.ext27 = sext i32 %shl to i64
  %add.ptr28 = getelementptr inbounds i8, i8* %35, i64 %idx.ext27
  %37 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %37, i32 0, i32 44
  %38 = load i32, i32* %raster, align 4, !tbaa !22
  %39 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %40 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %shl29 = shl i32 %40, 2
  %idx.ext30 = sext i32 %shl29 to i64
  %add.ptr31 = getelementptr inbounds i8, i8* %39, i64 %idx.ext30
  %41 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %42 = load i32, i32* %w.addr, align 4, !tbaa !5
  %shl32 = shl i32 %42, 2
  %43 = load i32, i32* %h.addr, align 4, !tbaa !5
  call void @bytes_copy_rectangle(i8* %add.ptr28, i32 %38, i8* %add.ptr31, i32 %41, i32 %shl32, i32 %43) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.26, %if.then.23
  %44 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #2
  %45 = load i32, i32* %retval
  ret i32 %45
}

declare i32 @gx_default_draw_line(%struct.gx_device_s*, i32, i32, i32, i32, i64) #0

declare i32 @gx_default_get_bits(%struct.gx_device_s*, i32, i8*, i8**) #0

declare i32 @gx_default_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @gx_default_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i64 @cmyk_8bit_map_cmyk_color(%struct.gx_device_s*, i16*) #0

declare %struct.gx_xfont_procs_s* @gx_forward_get_xfont_procs(%struct.gx_device_s*) #0

declare %struct.gx_device_s* @gx_forward_get_xfont_device(%struct.gx_device_s*) #0

declare i64 @gx_default_map_rgb_alpha_color(%struct.gx_device_s*, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext) #0

declare %struct.gx_device_s* @gx_forward_get_page_device(%struct.gx_device_s*) #0

declare i32 @gx_default_get_alpha_bits(%struct.gx_device_s*, i32) #0

declare i32 @gx_default_copy_alpha(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32) #0

declare i32 @gx_default_get_band(%struct.gx_device_s*, i32, i32*) #0

declare i32 @gx_default_copy_rop(%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32) #0

declare i32 @gx_default_fill_path(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*) #0

declare i32 @gx_default_stroke_path(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*) #0

declare i32 @gx_default_fill_mask(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*) #0

declare i32 @gx_default_fill_trapezoid(%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32) #0

declare i32 @gx_default_fill_parallelogram(%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32) #0

declare i32 @gx_default_fill_triangle(%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32) #0

declare i32 @mem_draw_thin_line(%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32) #0

declare i32 @gx_default_begin_image(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**) #0

declare i32 @gx_default_image_data(%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32) #0

declare i32 @gx_default_end_image(%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32) #0

declare i32 @gx_default_strip_tile_rectangle(%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32) #0

declare i32 @mem_default_strip_copy_rop(%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32) #0

declare void @gx_default_get_clipping_box(%struct.gx_device_s*, %struct.gs_fixed_rect_s*) #0

declare i32 @gx_default_begin_typed_image(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**) #0

declare i32 @mem_get_bits_rectangle(%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**) #0

declare i32 @gx_default_map_color_rgb_alpha(%struct.gx_device_s*, i64, i16*) #0

declare i32 @gx_default_create_compositor(%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*) #0

declare i32 @gx_default_get_hardware_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @gx_default_text_begin(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**) #0

declare i32 @gx_default_finish_copydevice(%struct.gx_device_s*, %struct.gx_device_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @mem32_word_fill_rectangle(%struct.gx_device_s* %dev, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store i64 %color, i64* %color.addr, align 8, !tbaa !7
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %1 = load i32, i32* %x.addr, align 4, !tbaa !5
  %2 = load i32, i32* %y.addr, align 4, !tbaa !5
  %3 = load i32, i32* %w.addr, align 4, !tbaa !5
  %4 = load i32, i32* %h.addr, align 4, !tbaa !5
  %5 = load i64, i64* %color.addr, align 8, !tbaa !7
  %shr = lshr i64 %5, 24
  %and = and i64 %shr, 255
  %6 = load i64, i64* %color.addr, align 8, !tbaa !7
  %shr1 = lshr i64 %6, 8
  %and2 = and i64 %shr1, 65280
  %add = add i64 %and, %and2
  %7 = load i64, i64* %color.addr, align 8, !tbaa !7
  %and3 = and i64 %7, 65280
  %shl = shl i64 %and3, 8
  %add4 = add i64 %add, %shl
  %8 = load i64, i64* %color.addr, align 8, !tbaa !7
  %shl5 = shl i64 %8, 24
  %add6 = add i64 %add4, %shl5
  %call = call i32 @mem_true32_fill_rectangle(%struct.gx_device_s* %0, i32 %1, i32 %2, i32 %3, i32 %4, i64 %add6) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @mem32_word_copy_mono(%struct.gx_device_s* %dev, i8* %base, i32 %sourcex, i32 %sraster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, i64 %zero, i64 %one) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %base.addr = alloca i8*, align 8
  %sourcex.addr = alloca i32, align 4
  %sraster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %zero.addr = alloca i64, align 8
  %one.addr = alloca i64, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %base, i8** %base.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 %sraster, i32* %sraster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !7
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store i64 %zero, i64* %zero.addr, align 8, !tbaa !7
  store i64 %one, i64* %one.addr, align 8, !tbaa !7
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %2 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %3 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %4 = load i64, i64* %id.addr, align 8, !tbaa !7
  %5 = load i32, i32* %x.addr, align 4, !tbaa !5
  %6 = load i32, i32* %y.addr, align 4, !tbaa !5
  %7 = load i32, i32* %w.addr, align 4, !tbaa !5
  %8 = load i32, i32* %h.addr, align 4, !tbaa !5
  %9 = load i64, i64* %zero.addr, align 8, !tbaa !7
  %shr = lshr i64 %9, 24
  %and = and i64 %shr, 255
  %10 = load i64, i64* %zero.addr, align 8, !tbaa !7
  %shr1 = lshr i64 %10, 8
  %and2 = and i64 %shr1, 65280
  %add = add i64 %and, %and2
  %11 = load i64, i64* %zero.addr, align 8, !tbaa !7
  %and3 = and i64 %11, 65280
  %shl = shl i64 %and3, 8
  %add4 = add i64 %add, %shl
  %12 = load i64, i64* %zero.addr, align 8, !tbaa !7
  %shl5 = shl i64 %12, 24
  %add6 = add i64 %add4, %shl5
  %13 = load i64, i64* %one.addr, align 8, !tbaa !7
  %shr7 = lshr i64 %13, 24
  %and8 = and i64 %shr7, 255
  %14 = load i64, i64* %one.addr, align 8, !tbaa !7
  %shr9 = lshr i64 %14, 8
  %and10 = and i64 %shr9, 65280
  %add11 = add i64 %and8, %and10
  %15 = load i64, i64* %one.addr, align 8, !tbaa !7
  %and12 = and i64 %15, 65280
  %shl13 = shl i64 %and12, 8
  %add14 = add i64 %add11, %shl13
  %16 = load i64, i64* %one.addr, align 8, !tbaa !7
  %shl15 = shl i64 %16, 24
  %add16 = add i64 %add14, %shl15
  %call = call i32 @mem_true32_copy_mono(%struct.gx_device_s* %0, i8* %1, i32 %2, i32 %3, i64 %4, i32 %5, i32 %6, i32 %7, i32 %8, i64 %add6, i64 %add16) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @mem32_word_copy_color(%struct.gx_device_s* %dev, i8* %base, i32 %sourcex, i32 %sraster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %base.addr = alloca i8*, align 8
  %sourcex.addr = alloca i32, align 4
  %sraster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %mdev = alloca %struct.gx_device_memory_s*, align 8
  %row = alloca i8*, align 8
  %raster = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %base, i8** %base.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 %sraster, i32* %sraster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !7
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %2, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %3 = bitcast i8** %row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %5 = load i32, i32* %x.addr, align 4, !tbaa !5
  %6 = load i32, i32* %y.addr, align 4, !tbaa !5
  %or = or i32 %5, %6
  %cmp = icmp slt i32 %or, 0
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %do.body.1
  %7 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %7, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %8 = load i32, i32* %x.addr, align 4, !tbaa !5
  %9 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add = add nsw i32 %9, %8
  store i32 %add, i32* %w.addr, align 4, !tbaa !5
  %10 = load i32, i32* %x.addr, align 4, !tbaa !5
  %11 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %11, %10
  store i32 %sub, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 0, i32* %x.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %12 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %12, 0
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %13 = load i32, i32* %y.addr, align 4, !tbaa !5
  %14 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add6 = add nsw i32 %14, %13
  store i32 %add6, i32* %h.addr, align 4, !tbaa !5
  %15 = load i32, i32* %y.addr, align 4, !tbaa !5
  %16 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %15, %16
  %17 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %mul to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 %idx.neg
  store i8* %add.ptr, i8** %base.addr, align 8, !tbaa !1
  store i64 0, i64* %id.addr, align 8, !tbaa !7
  store i32 0, i32* %y.addr, align 4, !tbaa !5
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %do.body.1
  %18 = load i32, i32* %w.addr, align 4, !tbaa !5
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %19, i32 0, i32 13
  %20 = load i32, i32* %width, align 4, !tbaa !9
  %21 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub9 = sub nsw i32 %20, %21
  %cmp10 = icmp sgt i32 %18, %sub9
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.8
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width12 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %22, i32 0, i32 13
  %23 = load i32, i32* %width12, align 4, !tbaa !9
  %24 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub13 = sub nsw i32 %23, %24
  store i32 %sub13, i32* %w.addr, align 4, !tbaa !5
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.end.8
  br label %do.cond

do.cond:                                          ; preds = %if.end.14
  br label %do.end

do.end:                                           ; preds = %do.cond
  %25 = load i32, i32* %h.addr, align 4, !tbaa !5
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %26, i32 0, i32 14
  %27 = load i32, i32* %height, align 4, !tbaa !21
  %28 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub15 = sub nsw i32 %27, %28
  %cmp16 = icmp sgt i32 %25, %sub15
  br i1 %cmp16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %do.end
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %29, i32 0, i32 14
  %30 = load i32, i32* %height18, align 4, !tbaa !21
  %31 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub19 = sub nsw i32 %30, %31
  store i32 %sub19, i32* %h.addr, align 4, !tbaa !5
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %do.end
  %32 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp21 = icmp sle i32 %32, 0
  br i1 %cmp21, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.20
  %33 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp22 = icmp sle i32 %33, 0
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
  %34 = load i32, i32* %y.addr, align 4, !tbaa !5
  %idxprom = sext i32 %34 to i64
  %35 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %35, i32 0, i32 52
  %36 = load i8**, i8*** %line_ptrs, align 8, !tbaa !33
  %arrayidx = getelementptr inbounds i8*, i8** %36, i64 %idxprom
  %37 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  store i8* %37, i8** %row, align 8, !tbaa !1
  %38 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %raster27 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %38, i32 0, i32 44
  %39 = load i32, i32* %raster27, align 4, !tbaa !22
  store i32 %39, i32* %raster, align 4, !tbaa !5
  %40 = load i8*, i8** %row, align 8, !tbaa !1
  %41 = load i32, i32* %x.addr, align 4, !tbaa !5
  %shl = shl i32 %41, 2
  %idx.ext28 = sext i32 %shl to i64
  %add.ptr29 = getelementptr inbounds i8, i8* %40, i64 %idx.ext28
  %42 = load i32, i32* %raster, align 4, !tbaa !5
  %43 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %44 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %shl30 = shl i32 %44, 2
  %idx.ext31 = sext i32 %shl30 to i64
  %add.ptr32 = getelementptr inbounds i8, i8* %43, i64 %idx.ext31
  %45 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %46 = load i32, i32* %w.addr, align 4, !tbaa !5
  %shl33 = shl i32 %46, 2
  %47 = load i32, i32* %h.addr, align 4, !tbaa !5
  call void @bytes_copy_rectangle(i8* %add.ptr29, i32 %42, i8* %add.ptr32, i32 %45, i32 %shl33, i32 %47) #5
  %48 = load i8*, i8** %row, align 8, !tbaa !1
  %49 = load i32, i32* %raster, align 4, !tbaa !5
  %50 = load i32, i32* %x.addr, align 4, !tbaa !5
  %shl34 = shl i32 %50, 5
  %51 = load i32, i32* %w.addr, align 4, !tbaa !5
  %shl35 = shl i32 %51, 5
  %52 = load i32, i32* %h.addr, align 4, !tbaa !5
  call void @mem_swap_byte_rect(i8* %48, i32 %49, i32 %shl34, i32 %shl35, i32 %52, i32 0) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.26, %if.then.23
  %53 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #2
  %54 = bitcast i8** %row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #2
  %55 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #2
  %56 = load i32, i32* %retval
  ret i32 %56
}

declare i32 @gx_no_strip_copy_rop(%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32) #0

declare i32 @mem_word_get_bits_rectangle(%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare void @bytes_copy_rectangle(i8*, i32, i8*, i32, i32, i32) #0

declare void @mem_swap_byte_rect(i8*, i32, i32, i32, i32, i32) #0

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin nounwind }
attributes #5 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !3, i64 0}
!9 = !{!10, !6, i64 832}
!10 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !11, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !12, i64 96, !15, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !8, i64 928, !8, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !8, i64 968, !8, i64 976, !16, i64 984, !6, i64 1052, !6, i64 1056, !17, i64 1064, !2, i64 1104, !3, i64 1112, !19, i64 1120, !20, i64 1144}
!11 = !{!"rc_header_s", !8, i64 0, !2, i64 8, !2, i64 16}
!12 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !13, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !14, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !8, i64 704, !6, i64 712}
!13 = !{!"short", !3, i64 0}
!14 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!15 = !{!"gx_device_cached_colors_s", !8, i64 0, !8, i64 8}
!16 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!17 = !{!"gdev_space_params_s", !8, i64 0, !8, i64 8, !18, i64 16, !6, i64 32, !3, i64 36}
!18 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !8, i64 8}
!19 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!20 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!21 = !{!10, !6, i64 836}
!22 = !{!23, !6, i64 1736}
!23 = !{!"gx_device_memory_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !11, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !12, i64 96, !15, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !8, i64 928, !8, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !8, i64 968, !8, i64 976, !16, i64 984, !6, i64 1052, !6, i64 1056, !17, i64 1064, !2, i64 1104, !3, i64 1112, !19, i64 1120, !20, i64 1144, !2, i64 1728, !6, i64 1736, !2, i64 1744, !2, i64 1752, !6, i64 1760, !2, i64 1768, !6, i64 1776, !3, i64 1780, !24, i64 2548, !2, i64 2576, !26, i64 2584, !27, i64 2600, !28, i64 2624, !29, i64 2656, !30, i64 2680, !31, i64 2720, !32, i64 2736, !6, i64 2744, !6, i64 2748, !6, i64 2752, !6, i64 2756, !6, i64 2760, !8, i64 2768, !2, i64 2776, !6, i64 2784, !6, i64 2788}
!24 = !{!"gs_matrix_s", !25, i64 0, !25, i64 4, !25, i64 8, !25, i64 12, !25, i64 16, !25, i64 20}
!25 = !{!"float", !3, i64 0}
!26 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!27 = !{!"_c24", !8, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!28 = !{!"_c40", !8, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24}
!29 = !{!"_c48", !8, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!30 = !{!"_c56", !8, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!31 = !{!"_c64", !8, i64 0, !6, i64 8, !6, i64 12}
!32 = !{!"gs_log2_scale_point_s", !6, i64 0, !6, i64 4}
!33 = !{!23, !2, i64 2576}
!34 = !{!3, !3, i64 0}
